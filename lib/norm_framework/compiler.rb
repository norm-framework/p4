require 'ba_speak/parser'
require 'qa_speak/parser'

module NormFramework

  class Compiler
    def start(options = {})
      options[:requirements_path] = File.join(Dir.pwd, 'directives', 'requirements')
      options[:test_cases_path]   = File.join(Dir.pwd, 'directives', 'test_cases')
      options[:utilities_path]    = File.join(Dir.pwd, 'directives', 'utilities')
      options[:output_path]       = File.join(Dir.pwd, '__spec__.rb')
      @options = options

      req_groups = load_and_parse_requirements.groups
      test_cases = load_and_parse_test_cases

      output = ""

      req_groups.each do |group|
        output << "describe \"#{ group.name }\" do\n\n"

        group.all_requirements.each do |r|
          output << test_cases.find(r).translate(r) + "\n"
        end

        output << "end\n\n"
      end

      file = File.new(options[:output_path], 'w')
      file.write(output)
      file.close
    end

    private

    def load_and_parse_requirements
      requirements = load_files options[:requirements_path]
      nodes = BaSpeak::Parser.new.parse(requirements)
    end

    def load_and_parse_test_cases
      test_cases = load_files options[:test_cases_path]
      nodes = QaSpeak::Parser.new.parse(test_cases)
    end

    def options
      @options
    end

    def load_files(in_dir, lines = '')
      Dir.entries(in_dir).each do |entry|
        next if ['.', '..'].include? entry

        path = File.join(in_dir, entry)

        if File.directory?(path)
          lines = load_files(path, lines)
        else
          lines = lines + "\n\n" + File.open(path, "rb").read
        end
      end
      lines
    end
  end

end