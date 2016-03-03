!/bin/bash

echo -e 'Hi, please type something: \c'
read word
echo "The word you typed is: $word"
echo -e 'Now type in two words: \c'
read word1 word2
echo "Your two words were \"$word1\" and \"$word2\""
echo -e 'How are you feeling about Bash scripting? \c'
# read command now stores a reply into the default built-in variable $REPLY
read
echo "You said \"$REPLY\".  N-I-C-E!"
echo -e 'What are your 3 favorite colors? \c'
# -a makes read command to read into an array
read -a colors
echo "My favorite 3 favorite colors are ${colors[0]}, ${colors[1]}, and ${colors[2]} :)"
