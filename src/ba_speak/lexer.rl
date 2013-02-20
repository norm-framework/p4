=begin
%%{

  machine lexer;

  uri_marker    = 'file://';
  newline       = ('\n' | '\r\n');
  tab_or_space  = [\t ];
  string        = [A-Za-z0-9\(\)\[\]\{\}] print*;
  req_string    = [A-Za-z0-9<] print*;
  underline     = '===' '='*;
  pipe          = '|';

  file_uri    = uri_marker print* newline;
  group_name  = string tab_or_space* newline tab_or_space* underline;
  text        = (string -- uri_marker) tab_or_space* (newline tab_or_space* string)* (newline newline)*;
  requirement = '* ' req_string tab_or_space* (newline tab_or_space* req_string)* (newline newline)*;
  table_row   = pipe print* pipe;

  main := |*

    file_uri    => { emit_source_path(token_array, data, ts, te) };
    group_name  => { emit_group_name(token_array, data, ts, te)  };
    requirement => { emit_requirement(token_array, data, ts, te) };
    table_row   => { emit_row(data, token_array, ts, te) };
    text        => { emit_text(token_array, data, ts, te) };

    space;

  *|;
}%%
=end

module BaSpeak

  class Lexer

    def initialize
      %% write data;
      # %% this just fixes syntax highlighting in TextMate et al.
    end
    
    def emit_source_path(token_array, data, ts, te)
      value = data[ts...te].pack("c*").strip
      token_array << [:FILE, { uri: value }]
    end

    def emit_group_name(token_array, data, ts, te)
      value = data[ts...te].pack("c*").split(/=+/)[0].strip
      token_array << [:GROUP, { value: value, offset: ts }]
    end

    def emit_row(data, target_array, ts, te)
      cells = data[(ts + 1)...( te - 1)].pack("c*")

      # ignore borders
      return if /^\-+/ =~ cells

      target_array << [:ROW, { offset: ts }]
      cells.split('|').each do |cell|
        target_array << [:CELL, { value: cell.strip }]
      end
    end

    def emit_requirement(token_array, data, ts, te)
      value = data[ts...te].pack("c*").gsub(/^\* /, '').split.join(' ')
      token_array << [:REQUIREMENT, { value: value, offset: ts }]
    end

    def emit_text(token_array, data, ts, te)
        value = data[ts...te].pack("c*").strip.split.join(' ')
      token_array << [:TEXT, { value: value, offset: ts }]
    end
    
    def self.tokenize(data)
      new.tokenize(data)
    end

    def tokenize(data)
      data = data.unpack("c*") if(data.is_a?(String))
      eof = data.length
      token_array = []

      %% write init;
      %% write exec;

      token_array
    end

  end

end