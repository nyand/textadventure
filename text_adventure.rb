require 'json'
class TextAdventure

  def initialize
    data = load_config "file_config.json"
    load_rooms data['room_location'] 
    load_characters data['character_location']
  end

  private 
    def load_rooms(file_path = 'rooms' )
      puts file_path
      Dir.foreach(file_path) do |file|
        next if file == '.' or file == '..'
        
        puts file
        puts JSON.parse File.read file
      end
    end

    def load_characters(file_path = 'charaacters')
    end


    def load_config(file)
      JSON.parse(File.read(file))
    end

    def read_files(dir = '.')
      Dir.foreach(dir) do |file|
        next if file == '.' || file == '..'
        File.open(file,'r') { |file_data| yield }
      end
    end
end
