class ModelTestUnitGenerator < RubiGen::Base

  default_options :author => nil

  attr_reader :name, :class_name

  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?
    @name        = args.shift.underscore
    @class_name  = @name.camelcase
    extract_options
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory 'test'

      m.template "test.rb",  "test/test_#{name}.rb"
    end
  end

  protected
    def banner
      <<-EOS
Creates an Test/Unit-based test file for a model.
NOTE: this generator is typically called via the 'model' generator.

USAGE: #{$0} #{spec.name} name
EOS
    end

    def add_options!(opts)
      # opts.separator ''
      # opts.separator 'Options:'
      # For each option below, place the default
      # at the top of the file next to "default_options"
      # opts.on("-a", "--author=\"Your Name\"", String,
      #         "Some comment about this option",
      #         "Default: none") { |options[:author]| }
      # opts.on("-v", "--version", "Show the #{File.basename($0)} version number and quit.")
    end

    def extract_options
      # for each option, extract it into a local variable (and create an "attr_reader :author" at the top)
      # Templates can access these value via the attr_reader-generated methods, but not the
      # raw instance variable value.
      # @author = options[:author]
    end
end
