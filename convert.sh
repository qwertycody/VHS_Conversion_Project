FFPEG="/c/Users/cody/OneDrive/Documents/Programs/ffmpeg/ffmpeg-2021-01-20-git-2021dbe1d6-full_build/bin/ffmpeg.exe"

cd "./To Be Processed"

for i in *.mkv; do
    echo "$i"
    $FFPEG -i "$i" -vcodec libx265 -crf 28 "../Ready For Upload/$i.mp4"
    mv "$i" "../Processed/$i"
done

# $FFPEG -i "2003_05_16 - Tiffany's 7th Birthday.mkv" -vcodec libx265 -crf 28 "2003_05_16 - Tiffany's 7th Birthday.mp4"