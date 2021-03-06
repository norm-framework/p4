=begin
%%{

  machine lexer;

  newline       = ('\n' | '\r\n');
  tab_or_space  = [\t ];
  string        = [A-Za-z0-9\=\'\"\<] print*;
  tc_string     = [A-Za-z0-9\.\+\?\(\)] print*;
  tc_label      = 'Test Case:';
  section_label = ('Variables' | 'Preconditions' | 'Cleanup' | 'Script') ':';


  test_case = tc_label tab_or_space* newline
              tab_or_space* tc_string tab_or_space* (newline
              tab_or_space* tc_string)* (newline newline)*;

  line      = '* ' string tab_or_space* (newline tab_or_space* string)*;

  main := |*

    test_case     => { emit_test_case(token_array, data, ts, te) };
    section_label => { emit_label(token_array, data, ts, te) };
    line          => { emit_line(token_array, data, ts, te) };

    space;

  *|;
}%%
=end

module QaSpeak

  class Lexer

    def initialize
      %% write data;
      # %% this just fixes syntax highlighting in TextMate et al.
    end

    def emit_label(token_array, data, ts, te)
      value = data[ts...te].pack("c*").gsub(/\:/, '')
      token_array << [value.upcase.to_sym, value]
    end

    def emit_line(token_array, data, ts, te)
      value = data[ts...te].pack("c*").split.join(' ').gsub(/\* /, '').strip
      token_array << [:LINE, value]
    end

    def emit_test_case(token_array, data, ts, te)
      value = data[ts...te].pack("c*").split.join(' ').gsub(/Test Case\:/, '').strip
      token_array << [:TEST_CASE, value]
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