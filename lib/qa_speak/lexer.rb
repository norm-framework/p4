
# line 1 "src/qa_speak/lexer.rl"
=begin

# line 29 "src/qa_speak/lexer.rl"

=end

module QaSpeak

  class Lexer

    def initialize
      
# line 16 "lib/qa_speak/lexer.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 1, 11, 23, 24, 25, 26, 
	27, 28, 29, 30, 31, 32, 33, 34, 
	35, 36, 37, 38, 39, 40, 41, 42, 
	43, 44, 45, 46, 47, 48, 49, 50, 
	51, 52, 53, 54, 55, 56, 57, 61, 
	74, 89, 102, 103, 105, 106, 107, 108, 
	109, 110, 111, 112, 113, 114, 115, 124, 
	129, 133, 137, 142, 146, 150
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	32, 34, 39, 48, 57, 60, 61, 65, 
	90, 97, 122, 9, 32, 34, 39, 48, 
	57, 60, 61, 65, 90, 97, 122, 10, 
	108, 101, 97, 110, 117, 112, 58, 114, 
	101, 99, 111, 110, 100, 105, 116, 105, 
	111, 110, 115, 99, 114, 105, 112, 116, 
	101, 115, 116, 32, 67, 97, 115, 101, 
	58, 9, 10, 13, 32, 9, 32, 43, 
	46, 63, 40, 41, 48, 57, 65, 90, 
	97, 122, 9, 10, 13, 32, 43, 46, 
	63, 40, 41, 48, 57, 65, 90, 97, 
	122, 9, 32, 43, 46, 63, 40, 41, 
	48, 57, 65, 90, 97, 122, 10, 10, 
	13, 10, 10, 10, 97, 114, 105, 97, 
	98, 108, 101, 32, 42, 67, 80, 83, 
	84, 86, 9, 13, 9, 10, 13, 32, 
	126, 9, 10, 13, 32, 10, 13, 32, 
	126, 9, 10, 13, 32, 126, 9, 10, 
	13, 32, 10, 13, 32, 126, 10, 13, 
	0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 1, 2, 4, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 4, 5, 
	7, 5, 1, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 7, 3, 
	4, 2, 3, 4, 2, 2
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 0, 4, 4, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 4, 
	4, 4, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 1, 
	0, 1, 1, 0, 1, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 2, 9, 18, 20, 22, 24, 
	26, 28, 30, 32, 34, 36, 38, 40, 
	42, 44, 46, 48, 50, 52, 54, 56, 
	58, 60, 62, 64, 66, 68, 70, 72, 
	74, 76, 78, 80, 82, 84, 86, 91, 
	101, 113, 123, 125, 128, 130, 132, 134, 
	136, 138, 140, 142, 144, 146, 148, 157, 
	162, 167, 171, 176, 181, 185
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	0, 1, 2, 2, 2, 2, 2, 2, 
	1, 4, 4, 5, 5, 5, 5, 5, 
	5, 3, 4, 3, 6, 1, 7, 1, 
	8, 1, 9, 1, 10, 1, 11, 1, 
	12, 1, 13, 1, 14, 1, 15, 1, 
	16, 1, 17, 1, 18, 1, 19, 1, 
	20, 1, 21, 1, 22, 1, 23, 1, 
	11, 1, 24, 1, 25, 1, 26, 1, 
	27, 1, 11, 1, 28, 1, 29, 1, 
	30, 1, 31, 1, 32, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 36, 37, 
	38, 36, 1, 37, 37, 39, 39, 39, 
	39, 39, 39, 39, 1, 41, 42, 43, 
	41, 44, 44, 44, 44, 44, 44, 44, 
	40, 41, 41, 44, 44, 44, 44, 44, 
	44, 44, 40, 45, 40, 42, 43, 40, 
	42, 40, 46, 40, 37, 1, 47, 1, 
	48, 1, 49, 1, 50, 1, 51, 1, 
	52, 1, 23, 1, 53, 54, 55, 56, 
	57, 58, 59, 53, 1, 61, 4, 62, 
	2, 60, 61, 4, 62, 61, 60, 4, 
	62, 5, 60, 64, 45, 65, 39, 63, 
	64, 45, 65, 64, 63, 45, 65, 44, 
	63, 46, 66, 63, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 0, 55, 54, 3, 57, 6, 7, 
	8, 9, 10, 11, 54, 13, 14, 15, 
	16, 17, 18, 19, 20, 21, 22, 23, 
	25, 26, 27, 28, 30, 31, 32, 33, 
	34, 35, 36, 37, 38, 39, 46, 58, 
	54, 41, 61, 44, 60, 40, 43, 48, 
	49, 50, 51, 52, 53, 54, 1, 5, 
	12, 24, 29, 47, 54, 56, 4, 54, 
	59, 42, 45
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	0, 0, 5, 17, 0, 5, 0, 0, 
	0, 0, 0, 0, 7, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 5, 
	15, 0, 5, 0, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 9, 0, 0, 
	0, 0, 0, 0, 13, 5, 0, 11, 
	5, 0, 0
]

class << self
	attr_accessor :_lexer_to_state_actions
	private :_lexer_to_state_actions, :_lexer_to_state_actions=
end
self._lexer_to_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_from_state_actions
	private :_lexer_from_state_actions, :_lexer_from_state_actions=
end
self._lexer_from_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 3, 0, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_eof_trans
	private :_lexer_eof_trans, :_lexer_eof_trans=
end
self._lexer_eof_trans = [
	0, 0, 0, 4, 4, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	41, 41, 41, 41, 41, 41, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 61, 
	61, 61, 64, 64, 64, 64
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 54;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 54;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 54;


# line 38 "src/qa_speak/lexer.rl"
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

      
# line 266 "lib/qa_speak/lexer.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 62 "src/qa_speak/lexer.rl"
      
# line 278 "lib/qa_speak/lexer.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_acts = _lexer_from_state_actions[cs]
	_nacts = _lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _lexer_actions[_acts - 1]
			when 1 then
# line 1 "NONE"
		begin
ts = p
		end
# line 312 "lib/qa_speak/lexer.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _lexer_key_offsets[cs]
	_trans = _lexer_index_offsets[cs]
	_klen = _lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _lexer_indicies[_trans]
	end
	if _goto_level <= _eof_trans
	cs = _lexer_trans_targs[_trans]
	if _lexer_trans_actions[_trans] != 0
		_acts = _lexer_trans_actions[_trans]
		_nacts = _lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _lexer_actions[_acts - 1]
when 2 then
# line 1 "NONE"
		begin
te = p+1
		end
when 3 then
# line 23 "src/qa_speak/lexer.rl"
		begin
te = p+1
 begin  emit_label(token_array, data, ts, te)  end
		end
when 4 then
# line 26 "src/qa_speak/lexer.rl"
		begin
te = p+1
		end
when 5 then
# line 22 "src/qa_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_test_case(token_array, data, ts, te)  end
		end
when 6 then
# line 24 "src/qa_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_line(token_array, data, ts, te)  end
		end
when 7 then
# line 22 "src/qa_speak/lexer.rl"
		begin
 begin p = ((te))-1; end
 begin  emit_test_case(token_array, data, ts, te)  end
		end
when 8 then
# line 24 "src/qa_speak/lexer.rl"
		begin
 begin p = ((te))-1; end
 begin  emit_line(token_array, data, ts, te)  end
		end
# line 419 "lib/qa_speak/lexer.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _lexer_to_state_actions[cs]
	_nacts = _lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _lexer_actions[_acts - 1]
when 0 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 439 "lib/qa_speak/lexer.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _lexer_eof_trans[cs] > 0
		_trans = _lexer_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 63 "src/qa_speak/lexer.rl"

      token_array
    end

  end

end