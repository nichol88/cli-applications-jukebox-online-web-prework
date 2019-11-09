# Add your code here
require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index{ |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(songs_array)
  puts "Please enter a song name or number:"
  response = gets.strip
  #binding.pry
  if songs_array.include?(response) || response.to_i > 0 && response.to_i < songs_array.length
    songs_array.each_with_index{ |song,index|
    if ((index + 1).to_s == response.to_s) || response == song
      puts "Playing #{song}"
      return song
    end
  }
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  response = gets.strip

  if response == "exit"
    exit_jukebox
  elsif response == "list"
    list(songs)
  elsif response == "play"
    play(songs)
  elsif response == "help"
    help
  else
    run(songs)
  end




end
