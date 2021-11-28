#To make directories a, b , c hidden
for file in a b c
do
  mv $file .$file
done
