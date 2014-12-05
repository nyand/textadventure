require 'json'
class TextAdventure

  def initialize
    load_config("file_config.json")
    load_rooms
    load_characters
  end

  private 
    def load_rooms(file_path)
    end

    def load_characters(file_path)
    end

    def load_config(file)
      config_file = JSON.parse(file)

      puts config_file 

      config_file.each do |config_data|
        puts config_data
      end

  end
end
