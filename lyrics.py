import sys
import pylyrics3
import pprint

def printlyrics(artist, title):
	return print(pylyrics3.get_song_lyrics(artist, title))

printlyrics(sys.argv[1], sys.argv[2])