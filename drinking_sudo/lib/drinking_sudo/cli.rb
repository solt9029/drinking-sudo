require "drinking_sudo"
require "thor"
require "launchy"
require "serialport"

module DrinkingSudo
  class CLI < Thor
    desc "serial", "serial"
    def serial
      serial_port = SerialPort.new("/dev/cu.usbserial-14240", 9600)
      interval_second = 0.5
      duration = 5
      count = 0
      while count < duration / interval_second do
        sleep(interval_second)
        sensor_value = serial_port.readline.chomp.strip.to_i
        puts(sensor_value)
        count += 1
      end
    end

    desc "launch_website", "launch website"
    def launch_website(*urls)
      urls.each do |url|
        Launchy.open(url)
      end
      system("/usr/bin/sudo ls")
    end
  end
end
