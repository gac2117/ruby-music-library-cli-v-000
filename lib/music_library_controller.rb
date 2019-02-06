class MusicLibraryController
  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call
    input = ""

    while input != "exit"
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."

      input = gets.strip

      case input
      when 'list songs'
        list_songs
      when 'list artists'
        list_artists
      end
    end
  end
end
