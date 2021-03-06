
# line 1 "src/ba_speak/lexer.rl"
=begin

# line 28 "src/ba_speak/lexer.rl"

=end

module BaSpeak

  class Lexer

    def initialize
      
# line 16 "lib/ba_speak/lexer.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 2, 1, 3, 1, 5, 1, 
	6, 1, 7, 1, 8, 1, 9, 1, 
	10, 1, 11, 1, 12, 2, 0, 1, 
	2, 3, 4
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 13, 24, 36, 46, 48, 49, 
	50, 51, 52, 53, 54, 55, 62, 73, 
	82, 83, 85, 86, 87, 90, 103, 108, 
	112, 116, 118, 119, 124, 128, 132, 134
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	9, 10, 13, 32, 61, 40, 41, 48, 
	57, 65, 90, 97, 122, 9, 32, 61, 
	40, 41, 48, 57, 65, 90, 97, 122, 
	9, 10, 13, 32, 40, 41, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 41, 
	48, 57, 65, 90, 97, 122, 10, 13, 
	10, 10, 10, 61, 61, 10, 32, 60, 
	48, 57, 65, 90, 97, 122, 9, 10, 
	13, 32, 60, 48, 57, 65, 90, 97, 
	122, 9, 32, 60, 48, 57, 65, 90, 
	97, 122, 10, 10, 13, 10, 10, 124, 
	32, 126, 32, 42, 124, 9, 13, 40, 
	41, 48, 57, 65, 90, 97, 122, 9, 
	10, 13, 32, 126, 9, 10, 13, 32, 
	10, 13, 32, 126, 10, 13, 61, 9, 
	10, 13, 32, 126, 9, 10, 13, 32, 
	10, 13, 32, 126, 10, 13, 124, 32, 
	126, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 5, 3, 4, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 5, 3, 
	1, 2, 1, 1, 1, 3, 3, 4, 
	2, 2, 1, 3, 4, 2, 2, 1
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 4, 4, 4, 4, 0, 0, 0, 
	0, 0, 0, 0, 0, 3, 3, 3, 
	0, 0, 0, 0, 1, 5, 1, 0, 
	1, 0, 0, 1, 0, 1, 0, 1
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 10, 18, 27, 34, 37, 39, 
	41, 43, 45, 47, 49, 51, 56, 65, 
	72, 74, 77, 79, 81, 84, 93, 98, 
	103, 107, 110, 112, 117, 122, 126, 129
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 2, 3, 1, 5, 4, 4, 4, 
	4, 0, 1, 1, 5, 4, 4, 4, 
	4, 0, 6, 2, 3, 6, 4, 4, 
	4, 4, 0, 6, 6, 4, 4, 4, 
	4, 0, 2, 3, 0, 2, 0, 7, 
	0, 8, 0, 9, 0, 10, 0, 11, 
	0, 12, 13, 14, 14, 14, 14, 13, 
	16, 17, 18, 16, 19, 19, 19, 19, 
	15, 16, 16, 19, 19, 19, 19, 15, 
	20, 15, 17, 18, 15, 17, 15, 21, 
	15, 24, 23, 22, 25, 27, 23, 25, 
	26, 26, 26, 26, 13, 29, 11, 30, 
	26, 28, 29, 11, 30, 29, 28, 8, 
	31, 4, 28, 7, 32, 28, 10, 33, 
	35, 20, 36, 14, 34, 35, 20, 36, 
	35, 34, 20, 36, 19, 34, 21, 37, 
	34, 24, 23, 38, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	21, 2, 25, 6, 24, 9, 4, 5, 
	3, 10, 26, 1, 13, 0, 27, 21, 
	15, 30, 18, 29, 14, 17, 21, 20, 
	31, 21, 22, 12, 21, 23, 11, 8, 
	7, 21, 21, 28, 16, 19, 21
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	17, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 3, 15, 
	0, 3, 0, 3, 0, 0, 19, 0, 
	24, 5, 3, 0, 13, 3, 0, 0, 
	0, 7, 9, 3, 0, 0, 11
]

class << self
	attr_accessor :_lexer_to_state_actions
	private :_lexer_to_state_actions, :_lexer_to_state_actions=
end
self._lexer_to_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 21, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_from_state_actions
	private :_lexer_from_state_actions, :_lexer_from_state_actions=
end
self._lexer_from_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_eof_trans
	private :_lexer_eof_trans, :_lexer_eof_trans=
end
self._lexer_eof_trans = [
	0, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 0, 0, 16, 16, 
	16, 16, 16, 16, 23, 0, 29, 29, 
	29, 29, 34, 35, 35, 35, 35, 39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 21;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 21;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 21;


# line 37 "src/ba_speak/lexer.rl"
      # %% this just fixes syntax highlighting in TextMate et al.
    end

    def emit_group_name(token_array, data, ts, te)
      value = data[ts...te].pack("c*").split(/=+/)[0].strip
      token_array << [:GROUP, value]
    end

    def emit_row(data, target_array, ts, te)
      cells = data[(ts + 1)...( te - 1)].pack("c*")

      # ignore borders
      return if /^\-+/ =~ cells

      target_array << [:ROW, 'Row']
      cells.split('|').each do |cell|
        target_array << [:CELL, cell.strip]
      end
    end

    def emit_requirement(token_array, data, ts, te)
      value = data[ts...te].pack("c*").gsub(/^\* /, '').split.join(' ')
      token_array << [:REQUIREMENT, value]
    end

    def emit_text(token_array, data, ts, te)
        value = data[ts...te].pack("c*").strip.split.join(' ')
      token_array << [:TEXT, value]
    end

    def tokenize(data)
      data = data.unpack("c*") if(data.is_a?(String))
      eof = data.length
      token_array = []

      
# line 234 "lib/ba_speak/lexer.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 73 "src/ba_speak/lexer.rl"
      
# line 246 "lib/ba_speak/lexer.rb"
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
			when 2 then
# line 1 "NONE"
		begin
ts = p
		end
# line 280 "lib/ba_speak/lexer.rb"
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
when 3 then
# line 1 "NONE"
		begin
te = p+1
		end
when 4 then
# line 22 "src/ba_speak/lexer.rl"
		begin
act = 3;		end
when 5 then
# line 25 "src/ba_speak/lexer.rl"
		begin
te = p+1
		end
when 6 then
# line 20 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_group_name(token_array, data, ts, te)   end
		end
when 7 then
# line 21 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_requirement(token_array, data, ts, te)  end
		end
when 8 then
# line 22 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_row(data, token_array, ts, te)  end
		end
when 9 then
# line 23 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_text(token_array, data, ts, te)  end
		end
when 10 then
# line 21 "src/ba_speak/lexer.rl"
		begin
 begin p = ((te))-1; end
 begin  emit_requirement(token_array, data, ts, te)  end
		end
when 11 then
# line 23 "src/ba_speak/lexer.rl"
		begin
 begin p = ((te))-1; end
 begin  emit_text(token_array, data, ts, te)  end
		end
when 12 then
# line 1 "NONE"
		begin
	case act
	when 0 then
	begin	begin
		cs = 0
		_trigger_goto = true
		_goto_level = _again
		break
	end
end
	when 3 then
	begin begin p = ((te))-1; end
 emit_row(data, token_array, ts, te) end
end 
			end
# line 414 "lib/ba_speak/lexer.rb"
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
when 1 then
# line 1 "NONE"
		begin
act = 0
		end
# line 439 "lib/ba_speak/lexer.rb"
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

# line 74 "src/ba_speak/lexer.rl"

      token_array
    end

  end

end