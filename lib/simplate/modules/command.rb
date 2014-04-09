module Simplate
  module Command
    @@app_name  = ''
    @@root_path = ''

    def Command.root_path
      Pathname.new(File.dirname(__FILE__)).parent.parent.parent
    end

    def Command.app_name
      @@app_name
    end

    def Command.app_name=(value)
      @@app_name = value
    end

    def Command.prepare(app_name)
      @@app_name = app_name

      Command.executables(app_name).each do |c|
        `#{c}`
      end
    end

    def Command.executables(app_name)
      Command.app_name = app_name

      executables = []

      executables << "mkdir #{app_name}"
      executables << "mkdir #{app_name}/lib"
      executables << "mkdir #{app_name}/lib/models"
      executables << "mkdir #{app_name}/lib/modules"
      executables << "mkdir #{app_name}/spec"
      executables << "mkdir #{app_name}/spec/models"
      executables << "mkdir #{app_name}/spec/modules"
      executables << Command.copy_file('Gemfile')
      executables << Command.copy_file('spec_helper.rb')

      executables
    end

    def Command.copy_file(filename)
      case filename
      when "Gemfile"
        from = Command.root_path.join('lib/simplate/copies/Gemfile')
        to   = Command.app_name + '/Gemfile'
        "cp #{from} #{to}"
      when "spec_helper.rb"
        from = Command.root_path.join('lib/simplate/copies/spec_helper.rb')
        to   = Command.app_name + '/spec/spec_helper.rb'
        "cp #{from} #{to}"
      end
    end
  end
end
