module AGRadio
  module Recorder
    class << self
      CONTENT_URL = 'rtmp://fms-base2.mitene.ad.jp/agqr/aandg22'
      def record(duration, output)
        AGRadio::FileManager.check_dir
        date = DateTime.now.strftime("%Y-%m-%d-%H-%M-%S")
        flv_path = File.expand_path("../tmp/#{date}.flv", __FILE__)
        command = <<~EOS
        rtmpdump -q \
           -r #{CONTENT_URL} \
           --live \
           --stop #{duration} \
           --flv "#{flv_path}"
        EOS
        AGRadio::Helper.shell_exec command
        convert flv_path, output
      end

      def convert(flv_path, output)
        command = %(ffmpeg -y -i "#{flv_path}" -acodec libmp3lame -ab 128k -loglevel quiet "#{output}")
        AGRadio::Helper.shell_exec command
        rm_command = %(rm #{flv_path})
        AGRadio::Helper.shell_exec rm_command
      end
    end
  end
end
