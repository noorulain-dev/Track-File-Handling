
# Look previous task on Music Records for an example of how to create the following

class Track
	attr_accessor :track_ttitle, :track_tlocation
	def initialize (track_ttitle, track_tlocation)
	@track_ttitle=track_ttitle
	@track_tlocation=track_tlocation
	end
end

# Returns an array of tracks read from the given file
def read_tracks (music_file)

	count = music_file.gets.chomp.to_i
	tracks = Array.new

	# Put a while loop here which increments an index to read the tracks
count.times do
	track = read_track(music_file)
	tracks << track
end
	tracks
end

# reads in a single track from the given file.
def read_track (music_file)

	track_ttitle=music_file.gets.chomp
	track_tlocation=music_file.gets.chomp
	mytrack=Track.new(track_ttitle, track_tlocation)
	mytrack
end


# Takes an array of tracks and prints them to the terminal
def print_tracks (tracks)

	# Use a loop with a control variable index
	# to print each track. Use tracks.length to determine how
	# many times to loop.
index=0
tracks.length.times do
print_track(track[index])
index +=1
end

end

# Takes a single track and prints it to the terminal
def print_track (track)
	puts('Track title is: ' + track.track_ttitle)
	puts('Track file location is: ' + track.track_tlocation)
end

# Open the file and read in the tracks then print them
def main
	aFile = File.new("input.txt", "r") # open for reading
	if aFile  # if nil this test will be false
		tracks = read_tracks(aFile)
		aFile.close
	else
		puts "Unable to open file to read!"
	end
	# Print all the tracks
	print_tracks(tracks)
end

main
