#! /bin/zsh/
echo "Hello from python!"
python HelloWorldPrograms/python/hello.py
if [ $? -ne 0 ]
then
  echo "Python compile failed"
else
  $now=date
  echo $now
  echo "$now Python compilation succeeded" >> log.log
  git aa && git cm -m "Success message"
fi

echo "Hello from Ruby!"
ruby HelloWorldPrograms/ruby/hello.rb
if [ $? -ne 0 ]
then
  echo "Ruby compile failed"
else
  $now=date
  echo "$now Ruby compilation succeeded" >> log.log
  git aa && git cm -m "Success message"
fi

echo "Hello from C!"
gcc HelloWorldPrograms/c/hello.c -o hola
if [ $? -ne 0 ]
then
    echo "C compile failed"
    SUBJECT="C compile failed"
    EMAIL="vlad.ledniov@gmail.com"
    EMAILMESSAGE="/tmp/emailmessage.txt"
    echo "Something went wrong" > $EMAILMESSAGE
    echo "Dude, the C compile failed, something went extremely wrong, you should check it out!" >> $EMAILMESSAGE
    /bin/mail -s "$SUBJECT" "$EMAIL" < $EMAILMESSAGE
else
  ./hola
  rm hola
  $now=date
  echo "$now C compilation succeeded" >> log.log
  git aa && git cm -m "Success message"
fi

echo "Hello from C++!"
g++ HelloWorldPrograms/cpp/hello.cpp -o hola
if [ $? -ne 0 ]
then
  echo "C++ compile failed"
else
  ./hola
  rm hola
  $now=date
  echo "$now C++ compilation succeeded" >> log.log
  git aa && git cm -m "Success message"
fi
