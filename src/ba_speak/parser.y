class BaSpeak::Parser

  token FILE
  token GROUP
  token REQUIREMENT
  token TEXT
  token ROW
  token CELL

  rule
    Files: 
    | FILE                        { result = FileNode.new(val[0])         }
    | FILE Groups                 { result = FileNode.new(val[0], val[1]) }
    ;

    Groups:
      GROUP                       { result = [ GroupNode.new(val[0]) ] }
    | GROUP Text                  { result = [ GroupNode.new(val[0]) ] }
    | GROUP Groups                { result = [ GroupNode.new(val[0]) ] + val[1] }
    | GROUP Requirements          { result = [ GroupNode.new(val[0], val[1]) ] }
    | GROUP Text Requirements     { result = [ GroupNode.new(val[0], val[2]) ] }
    | GROUP Requirements Groups   { result = [ GroupNode.new(val[0], val[1]) ] + val[2] }
    ;

    Requirements:
      REQUIREMENT                              { result = [ RequirementNode.new(val[0]) ] }
    | REQUIREMENT Requirements                 { result = [ RequirementNode.new(val[0]) ] + val[1] }
    | REQUIREMENT RequirementBody              { result = [ RequirementNode.new(val[0], val[1]) ] }
    | REQUIREMENT RequirementBody Requirements { result = [ RequirementNode.new(val[0], val[1]) ] + val[2] }
    ;

    RequirementBody:
      Text                       { result = val[0] }
    | Table                      { result = val[0] }
    | Text Table                 { result = val[0] + val[1] }
    | Text Table Text            { result = val[0] + val[1] + val[2] }
    ;

    Text:
      TEXT                        { result = [] }
    | TEXT Text                   { result = [] }
    ;

    Table:
      Rows                        { result = [ TableNode.new({ offset: val[0][0].offset }, val[0]) ] }
    ;

    Rows:
      ROW Cells                   { result = [ RowNode.new(val[0], val[1]) ] }
    | ROW Cells Rows              { result = [ RowNode.new(val[0], val[1]) ] + val[2] }
    ;

    Cells:
      CELL                        { result = [ val[0][:value] ] }
    | CELL Cells                  { result = [ val[0][:value] ] + val[1] }
    ;

end
---- header
  require 'ba_speak/lexer'
  require 'ba_speak/nodes'

---- inner
  def self.parse(string, show_tokens=false)
    new.parse(string, show_tokens)
  end

  def next_token
    @tokens.shift
  end
  
  def parse(string, show_tokens)
    @tokens = Lexer.new.tokenize(string)
    puts @tokens.inspect if show_tokens
    do_parse
  end
