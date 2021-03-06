require "drinking_sudo"
require "thor"
require "launchy"
require "serialport"

module DrinkingSudo
  PORT = "/dev/cu.usbserial-14240" # your usb port
  URL = "http://localhost:5000/" # url for drunk
  SUDO_PATH = "/usr/bin/sudo" # original sudo command path

  class CLI < Thor
    desc "sudo {command}", "ensure that you are not drunk"
    def sudo(*args)
      puts "センサーに息を吹きかけてください。"

      serial_port = SerialPort.new(PORT, 9600)
      interval_second = 0.5
      duration = 5

      count = 0
      sensor_values = []
      while count < duration / interval_second do
        sleep(interval_second)
        sensor_value = serial_port.readline.chomp.strip.to_i
        sensor_values.push(sensor_value)
        count += 1
      end

      if sensor_values.all? { |value| value < 600 }
        system("#{SUDO_PATH} #{args.join(" ")}")
      else
        Launchy.open(URL)
      end
    end
  end
end
