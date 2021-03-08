ffmpeg -y -i videos.mp4 -vcodec copy -acodec copy -vbsf h264_mp4toannexb videos.ts &  ffmpeg -i videos.ts -c copy -map 0 -f segment -segment_list playlist.m3u8 -segment_time 5 videos%%03d.ts  & pause
