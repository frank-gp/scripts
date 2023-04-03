@REM ========== Documentation... ==========
@REM -vn === no video
@REM -s === size (ratio)
@REM -ss === start sequen
@REM -c:a === codex audio
@REM -c:v === codex video
@REM -r === ratio
@REM -b:v 1M === bitrate video

@REM ========== Documentation. ==========

@REM ========== Basic ==========

@REM /// image and audio to video
ffmpeg -i image.png -i audio.mp3 output.mp4

@REM /// convert video to audio
ffmpeg -i video.mp4 to audio.mp3

@REM /// convert image & audio to video
ffmpeg -loop 1 -framerate 1 -i img.png -i audio.mp3 -shortest output.mp4

@REM /// Concatenate mp4 files using FFmpeg
ffmpeg -f concat -safe 0 -i fileList.txt -c copy mergedVideo.mp4
:: create fileList.txt with list of videos...
:: file video-monkey.mp4
:: file video-lights.mp4

@REM /// How to concatenate two MP4 files using FFmpeg?
ffmpeg -i video-monkey.mp4 -c copy intermediate1.ts
ffmpeg -i video-lights.mp4 -c copy intermediate2.ts
ffmpeg -i "concat:intermediate1.ts|intermediate2.ts" -c copy output3.mp4




@REM /// normalize audio
ffmpeg -i audio.wav -filter:a "volume=0.5" audio.mp3
ffmpeg -i audio.wav -af "volume=3dB" audio-3db.mp3
@REM ========== normalize video ==========
ffmpeg -i video.mp4 -af "volume=5dB" -c:v copy -c:a aac -b:a 192k output.mp4
ffmpeg -i audio.wav -filter:a "dynaudnorm=p=0.9:s=5" output4.mp3