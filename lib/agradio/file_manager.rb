module AGRadio
  class FileManager
    class << self
      def check_dir
        dir = File.expand_path('../tmp', __FILE__)
        unless Dir.exist? dir
          FileUtils.mkdir_p dir
        end
      end
    end
  end
end
