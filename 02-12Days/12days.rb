### 12 Days
# Goal : determine if a year is a leap year
# Inputs : year
# Outputs : true or false for if its a leap year or not
# Note :  on every year that is evenly divisible by 4
#         except every year that is evenly divisible by 100
#         unless the year is also evenly divisible by 400

# class Xmas
#   def initialize(gifts = 0)
#     @gifts = gifts
#   end
#
# end
require "awesome_print"


class Xmas
  # def initialize
  #
  # end

  def self.gifts(day)
    gifts = []
    song = read_song("12days.txt")
    sents = parse_song(song)
    gifts = sents[day][1..-1]
    return gifts
  end

  def self.read_song(filename)
    song = ""
    File.open(filename, "r") do |f|
      f.each_line do |line|
        song += line
      end
    end
    # OR
      # song = File.open(filename, 'rb') { |file| file.read }
    # OR
      # song = File.open(filename, 'rb')    ## This is a txt file object
      # song = song.read                    ## So it still needs read
    return song
  end

  def self.parse_song(song)
    sents = []
    pars = song.split("\n\n")
    pars.each_with_index do |p, i|
      sents[i] = p.split("\n")
      # puts "#{p}\n\n"
    end

    return sents
  end

  def self.verse(verse_number)
    song = read_song("12days.txt")
    verses = song.split("\n\n")
    verse = verses[verse_number].strip
    return verse
  end

  def self.sing
    song = read_song("12days.txt").strip
    return song
  end
end

string = File.open("12days.txt", 'rb')
ap string.class
string = string.read
ap string
ap string.class

# whole_song = File.read(File.dirname(__FILE__) + '/12days.txt')
# ap whole_song

# v1, v2, v3 = Xmas.verse(1).split("\n")
# yell = Xmas.gifts(4).first
# t1, t2, t3 = Xmas.gifts(2)
#
# ap yell
# ap v1

# puts sents[0][1]
