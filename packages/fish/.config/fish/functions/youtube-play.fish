function youtube-play
	mpv --ytdl-format="[height<720]" "$argv"
end
