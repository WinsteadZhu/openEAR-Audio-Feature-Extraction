#!/bin/bash

# FILES='/Users/winsteadx/Desktop/emotion_audio/EmoDB/*.wav'
# for f in $FILES
# do
#   echo "Processing $f file..."
#   parsedf=(${f//// })
#   audio=${parsedf[5]}
#   arraudio=(${audio//./ })
#   #echo $audio
#   #echo ${arraudio[0]:5:1}
#   SMILExtract -C config/emo_large.conf -I $f -O /Users/winsteadx/Desktop/emodb_large.arff -instname ${arraudio[0]:5:1}
# done
# echo "Feature extraction done."

# FILES='/Users/winsteadx/Desktop/emotion_audio/CREMAD/*.wav'
# for f in $FILES
# do
#   echo "Processing $f file..."
#   parsedf=(${f//// })
#   audio=${parsedf[5]}
#   arraudio=(${audio//_/ })
#   #echo $audio
#   #echo ${arraudio[2]}
#   SMILExtract -C config/emo_large.conf -I $f -O /Users/winsteadx/Desktop/cremad_large.arff -instname ${arraudio[2]}
# done
# echo "Feature extraction done."

FILES='/Users/winsteadx/Desktop/emotion_audio/RAVDESS/*/*.wav'
for f in $FILES
do
  echo "Processing $f file..."
  parsedf=(${f//// })
  audio=${parsedf[6]}
  arraudio=(${audio//-/ })
  # echo $audio
  # echo ${arraudio[2]}
  c="$audio;${arraudio[2]}"
  # echo $c
  #SMILExtract -C config/emo_large.conf -I $f -O /Users/winsteadx/Desktop/ravdess_large.arff -instname ${arraudio[2]}
  SMILExtract -C config/emobase.conf -I $f -O /Users/winsteadx/Desktop/ravdess.arff -instname $c
done
echo "Feature extraction done."

# FILES="/Users/winsteadx/Desktop/Podcast/podcasts-audio/6/*/*/*.wav"
# for f in $FILES
# do
#   echo "Processing $f file..."
#   parsedf=(${f//// })
#   audio=${parsedf[8]}
#   arraudio=(${audio//./ })
#   #echo $audio
#   #echo ${arraudio[0]}
#   SMILExtract -C config/emobase.conf -I $f -O /Users/winsteadx/Desktop/podcast_6_0.arff -instname ${arraudio[0]}
# done
# echo "Feature extraction done."

# FILES="/Users/winsteadx/Desktop/Podcast/podcasts-segments/all/*.wav"
# for f in $FILES
# do
#   echo "Processing $f file..."
#   parsedf=(${f//// })
#   audio=${parsedf[6]}
#   arraudio=(${audio//./ })
#   #echo $audio
#   #echo ${arraudio[0]}
#   SMILExtract -C config/emobase.conf -I $f -O /Users/winsteadx/Desktop/podcast_segment_6_0.arff -instname ${arraudio[0]}
# done
# echo "Feature extraction done."

# FILES='/Users/winsteadx/Desktop/emotion_audio/SAVEE/*/*.wav'
# for f in $FILES
# do
#   echo "Processing $f file..."
#   parsedf=(${f//// })
#   audio=${parsedf[6]}
#   arraudio=(${audio//./ })
#   echo $audio
#   echo ${arraudio[0]:0:-2}
#   c="$audio;${arraudio[0]:0:-2}"
#   echo $c
#   #SMILExtract -C config/emobase.conf -I $f -O /Users/winsteadx/Desktop/savee.arff -instname ${arraudio[0]:0:-2}
#   SMILExtract -C config/emobase.conf -I $f -O /Users/winsteadx/Desktop/savee.arff -instname $c
# done
# echo "Feature extraction done."