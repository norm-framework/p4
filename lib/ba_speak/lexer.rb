
# line 1 "src/ba_speak/lexer.rl"
=begin

# line 31 "src/ba_speak/lexer.rl"

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
	0, 1, 2, 1, 3, 1, 7, 1, 
	8, 1, 9, 1, 10, 1, 11, 1, 
	12, 1, 13, 1, 14, 1, 15, 2, 
	0, 1, 2, 3, 4, 2, 3, 5, 
	2, 3, 6
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 15, 28, 42, 54, 56, 57, 
	58, 59, 60, 61, 62, 67, 71, 74, 
	75, 76, 83, 94, 103, 104, 106, 107, 
	108, 113, 114, 117, 132, 138, 142, 146, 
	148, 149, 156, 163, 170, 177, 184, 191, 
	196, 200, 204, 206, 213, 220, 227, 234, 
	241, 248, 251
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	9, 10, 13, 32, 61, 93, 125, 40, 
	41, 48, 57, 65, 91, 97, 123, 9, 
	32, 61, 93, 125, 40, 41, 48, 57, 
	65, 91, 97, 123, 9, 10, 13, 32, 
	93, 125, 40, 41, 48, 57, 65, 91, 
	97, 123, 9, 32, 93, 125, 40, 41, 
	48, 57, 65, 91, 97, 123, 10, 13, 
	10, 10, 10, 61, 61, 10, 9, 10, 
	13, 32, 126, 9, 10, 13, 32, 9, 
	32, 61, 10, 32, 60, 48, 57, 65, 
	90, 97, 122, 9, 10, 13, 32, 60, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	60, 48, 57, 65, 90, 97, 122, 10, 
	10, 13, 10, 10, 9, 10, 13, 32, 
	126, 10, 124, 32, 126, 32, 42, 93, 
	102, 124, 9, 13, 40, 41, 48, 57, 
	65, 91, 97, 125, 9, 10, 13, 102, 
	32, 126, 9, 10, 13, 32, 10, 13, 
	32, 126, 10, 13, 61, 9, 10, 13, 
	102, 105, 32, 126, 9, 10, 13, 102, 
	108, 32, 126, 9, 10, 13, 101, 102, 
	32, 126, 9, 10, 13, 58, 102, 32, 
	126, 9, 10, 13, 47, 102, 32, 126, 
	9, 10, 13, 47, 102, 32, 126, 9, 
	10, 13, 32, 126, 9, 10, 13, 32, 
	10, 13, 32, 126, 10, 13, 9, 10, 
	13, 102, 105, 32, 126, 9, 10, 13, 
	102, 108, 32, 126, 9, 10, 13, 101, 
	102, 32, 126, 9, 10, 13, 58, 102, 
	32, 126, 9, 10, 13, 47, 102, 32, 
	126, 9, 10, 13, 47, 102, 32, 126, 
	9, 32, 61, 124, 32, 126, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 7, 5, 6, 4, 2, 1, 1, 
	1, 1, 1, 1, 3, 4, 3, 1, 
	1, 1, 5, 3, 1, 2, 1, 1, 
	3, 1, 1, 5, 4, 4, 2, 2, 
	1, 5, 5, 5, 5, 5, 5, 3, 
	4, 2, 2, 5, 5, 5, 5, 5, 
	5, 3, 1
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 4, 4, 4, 4, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 3, 3, 3, 0, 0, 0, 0, 
	1, 0, 1, 5, 1, 0, 1, 0, 
	0, 1, 1, 1, 1, 1, 1, 1, 
	0, 1, 0, 1, 1, 1, 1, 1, 
	1, 0, 1
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 12, 22, 33, 42, 45, 47, 
	49, 51, 53, 55, 57, 62, 67, 71, 
	73, 75, 80, 89, 96, 98, 101, 103, 
	105, 110, 112, 115, 126, 132, 137, 141, 
	144, 146, 153, 160, 167, 174, 181, 188, 
	193, 198, 202, 205, 212, 219, 226, 233, 
	240, 247, 251
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 2, 3, 1, 5, 4, 4, 4, 
	4, 4, 4, 0, 1, 1, 5, 4, 
	4, 4, 4, 4, 4, 0, 6, 2, 
	3, 6, 4, 4, 4, 4, 4, 4, 
	0, 6, 6, 4, 4, 4, 4, 4, 
	4, 0, 2, 3, 0, 2, 0, 7, 
	0, 8, 0, 10, 9, 11, 9, 12, 
	0, 13, 14, 15, 16, 0, 13, 14, 
	15, 13, 0, 14, 14, 5, 9, 14, 
	0, 17, 18, 19, 19, 19, 19, 18, 
	21, 22, 23, 21, 24, 24, 24, 24, 
	20, 21, 21, 24, 24, 24, 24, 20, 
	25, 20, 22, 23, 20, 22, 20, 26, 
	20, 13, 27, 28, 29, 0, 27, 0, 
	31, 30, 9, 32, 34, 33, 35, 30, 
	32, 33, 33, 33, 33, 18, 37, 12, 
	38, 39, 33, 36, 37, 12, 38, 37, 
	36, 8, 40, 4, 36, 7, 41, 36, 
	11, 42, 37, 12, 38, 39, 43, 33, 
	36, 37, 12, 38, 39, 44, 33, 36, 
	37, 12, 38, 45, 39, 33, 36, 37, 
	12, 38, 46, 39, 33, 36, 37, 12, 
	38, 47, 39, 33, 36, 37, 12, 38, 
	16, 39, 33, 36, 49, 25, 50, 19, 
	48, 49, 25, 50, 49, 48, 25, 50, 
	24, 48, 26, 51, 48, 37, 12, 38, 
	39, 52, 33, 36, 37, 12, 38, 39, 
	53, 33, 36, 37, 12, 38, 54, 39, 
	33, 36, 37, 12, 38, 55, 39, 33, 
	36, 37, 12, 38, 56, 39, 33, 36, 
	37, 12, 38, 29, 39, 33, 36, 14, 
	14, 5, 57, 31, 30, 58, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	27, 2, 31, 6, 30, 9, 4, 5, 
	3, 27, 10, 32, 1, 13, 14, 15, 
	12, 17, 0, 39, 27, 19, 42, 22, 
	41, 18, 21, 49, 25, 24, 26, 50, 
	27, 28, 16, 43, 27, 29, 11, 33, 
	8, 7, 27, 34, 35, 36, 37, 38, 
	27, 40, 20, 23, 44, 45, 46, 47, 
	48, 27, 27
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	19, 0, 3, 0, 3, 0, 0, 0, 
	0, 21, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 3, 17, 0, 3, 0, 
	3, 0, 0, 26, 0, 0, 0, 29, 
	5, 32, 0, 32, 15, 32, 0, 32, 
	0, 0, 9, 32, 32, 32, 32, 32, 
	11, 3, 0, 0, 32, 32, 32, 32, 
	32, 7, 13
]

class << self
	attr_accessor :_lexer_to_state_actions
	private :_lexer_to_state_actions, :_lexer_to_state_actions=
end
self._lexer_to_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 23, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0
]

class << self
	attr_accessor :_lexer_from_state_actions
	private :_lexer_from_state_actions, :_lexer_from_state_actions=
end
self._lexer_from_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0
]

class << self
	attr_accessor :_lexer_eof_trans
	private :_lexer_eof_trans, :_lexer_eof_trans=
end
self._lexer_eof_trans = [
	0, 1, 1, 1, 1, 1, 1, 1, 
	1, 10, 10, 1, 1, 1, 10, 1, 
	0, 0, 21, 21, 21, 21, 21, 21, 
	1, 1, 10, 0, 37, 37, 37, 37, 
	43, 37, 37, 37, 37, 37, 37, 49, 
	49, 49, 49, 37, 37, 37, 37, 37, 
	37, 58, 59
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 27;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 27;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 27;


# line 40 "src/ba_speak/lexer.rl"
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

      
# line 300 "lib/ba_speak/lexer.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 85 "src/ba_speak/lexer.rl"
      
# line 312 "lib/ba_speak/lexer.rb"
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
# line 346 "lib/ba_speak/lexer.rb"
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
act = 1;		end
when 5 then
# line 25 "src/ba_speak/lexer.rl"
		begin
act = 4;		end
when 6 then
# line 26 "src/ba_speak/lexer.rl"
		begin
act = 5;		end
when 7 then
# line 28 "src/ba_speak/lexer.rl"
		begin
te = p+1
		end
when 8 then
# line 22 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_source_path(token_array, data, ts, te)  end
		end
when 9 then
# line 23 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_group_name(token_array, data, ts, te)   end
		end
when 10 then
# line 24 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_requirement(token_array, data, ts, te)  end
		end
when 11 then
# line 25 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_row(data, token_array, ts, te)  end
		end
when 12 then
# line 26 "src/ba_speak/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_text(token_array, data, ts, te)  end
		end
when 13 then
# line 24 "src/ba_speak/lexer.rl"
		begin
 begin p = ((te))-1; end
 begin  emit_requirement(token_array, data, ts, te)  end
		end
when 14 then
# line 26 "src/ba_speak/lexer.rl"
		begin
 begin p = ((te))-1; end
 begin  emit_text(token_array, data, ts, te)  end
		end
when 15 then
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
	when 1 then
	begin begin p = ((te))-1; end
 emit_source_path(token_array, data, ts, te) end
	when 4 then
	begin begin p = ((te))-1; end
 emit_row(data, token_array, ts, te) end
	when 5 then
	begin begin p = ((te))-1; end
 emit_text(token_array, data, ts, te) end
end 
			end
# line 500 "lib/ba_speak/lexer.rb"
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
# line 525 "lib/ba_speak/lexer.rb"
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

# line 86 "src/ba_speak/lexer.rl"

      token_array
    end

  end

end