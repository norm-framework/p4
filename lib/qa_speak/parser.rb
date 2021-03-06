#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.8
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require 'qa_speak/lexer'
  require 'qa_speak/nodes'

module QaSpeak
  class Parser < Racc::Parser

module_eval(<<'...end parser.y/module_eval...', 'parser.y', 66)
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end
...end parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    -3,    16,     3,     8,     3,     9,     3,    12,    14,     4,
    18,    14,    21,    18,    18,    18 ]

racc_action_check = [
     3,    11,     3,     3,     0,     4,     6,     7,     8,     1,
    12,    14,    15,    16,    18,    21 ]

racc_action_pointer = [
     2,     9,   nil,     0,     5,   nil,     4,     3,     1,   nil,
   nil,    -4,     3,   nil,     4,     6,     6,   nil,     7,   nil,
   nil,     8,   nil,   nil,   nil ]

racc_action_default = [
    -1,   -20,    -2,    -8,   -20,    -4,    -5,   -12,   -20,    25,
    -6,   -14,   -20,    -9,   -10,   -16,   -20,   -13,   -18,   -11,
    -7,   -20,   -15,   -19,   -17 ]

racc_goto_table = [
    17,    13,     2,    11,    22,     5,    23,    19,    10,    24,
     7,    15,    20,     6,     1 ]

racc_goto_check = [
     9,     8,     2,     5,     9,     2,     9,     8,     2,     9,
     4,     6,     7,     3,     1 ]

racc_goto_pointer = [
   nil,    14,     2,    10,     7,    -4,     0,    -3,    -7,   -12 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 9, :_reduce_1,
  1, 9, :_reduce_2,
  1, 10, :_reduce_3,
  2, 10, :_reduce_4,
  2, 10, :_reduce_5,
  3, 10, :_reduce_6,
  4, 11, :_reduce_7,
  0, 12, :_reduce_8,
  2, 12, :_reduce_9,
  1, 16, :_reduce_10,
  2, 16, :_reduce_11,
  0, 13, :_reduce_12,
  2, 13, :_reduce_13,
  0, 14, :_reduce_14,
  2, 14, :_reduce_15,
  0, 15, :_reduce_16,
  2, 15, :_reduce_17,
  1, 17, :_reduce_18,
  2, 17, :_reduce_19 ]

racc_reduce_n = 20

racc_shift_n = 25

racc_token_table = {
  false => 0,
  :error => 1,
  :TEST_CASE => 2,
  :VARIABLES => 3,
  :PRECONDITIONS => 4,
  :CLEANUP => 5,
  :SCRIPT => 6,
  :LINE => 7 }

racc_nt_base = 8

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "TEST_CASE",
  "VARIABLES",
  "PRECONDITIONS",
  "CLEANUP",
  "SCRIPT",
  "LINE",
  "$start",
  "Root",
  "TestCases",
  "TestCaseBody",
  "Variables",
  "Preconditions",
  "Cleanup",
  "Script",
  "Assignments",
  "Lines" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.y', 11)
  def _reduce_1(val, _values, result)
     result = RootNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 12)
  def _reduce_2(val, _values, result)
     result = RootNode.new('', val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 16)
  def _reduce_3(val, _values, result)
     result = [ TestCaseNode.new(val[0]) ] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 17)
  def _reduce_4(val, _values, result)
     result = [ TestCaseNode.new(val[0]) ] + val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 18)
  def _reduce_5(val, _values, result)
     result = [ TestCaseNode.new(val[0], val[1]) ] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 19)
  def _reduce_6(val, _values, result)
     result = [ TestCaseNode.new(val[0], val[1]) ] + val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 26)
  def _reduce_7(val, _values, result)
     result = val[0].merge(val[1]).merge(val[2]).merge(val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 30)
  def _reduce_8(val, _values, result)
     result = { :variables => VariablesNode.new } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 31)
  def _reduce_9(val, _values, result)
     result = { :variables => VariablesNode.new('', val[1]) } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 35)
  def _reduce_10(val, _values, result)
     result = [ AssignmentNode.new(val[0]) ] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 36)
  def _reduce_11(val, _values, result)
     result = [ AssignmentNode.new(val[0]) ] + val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 40)
  def _reduce_12(val, _values, result)
     result = { :preconditions => PreconditionsNode.new } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 41)
  def _reduce_13(val, _values, result)
     result = { :preconditions => PreconditionsNode.new('', val[1]) } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 45)
  def _reduce_14(val, _values, result)
     result = { :cleanup => CleanupNode.new } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 46)
  def _reduce_15(val, _values, result)
     result = { :cleanup => CleanupNode.new('', val[1]) } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 50)
  def _reduce_16(val, _values, result)
     result = { :script => ScriptNode.new } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 51)
  def _reduce_17(val, _values, result)
     result = { :script => ScriptNode.new('', val[1]) } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 55)
  def _reduce_18(val, _values, result)
     result = [ StepNode.new(val[0]) ] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 56)
  def _reduce_19(val, _values, result)
     result = [ StepNode.new(val[0]) ] + val[1] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module QaSpeak
