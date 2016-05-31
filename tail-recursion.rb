# compile_option: http://ruby-doc.org/core-2.2.0/RubyVM/InstructionSequence.html#method-c-compile_option-3D

require 'pp'

=begin
RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}
=end

# pp RubyVM::InstructionSequence.compile_option

require './fail_after_level_10.rb'
fail_after_level_10(1)
