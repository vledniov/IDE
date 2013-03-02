#! /bin/zsh/
echo "Hello from python!"
python HelloWorldPrograms/python/hello.py
if [ $? -ne 0 ]
then
  echo "Python compile failed"
else
  $now=date
  echo "$now Python compilation succeeded" > log.log
  git aa && git cm -m "Success message"
fi

echo "Hello from Ruby!"
ruby HelloWorldPrograms/ruby/hello.rb
if [ $? -ne 0 ]
then
  echo "Ruby compile failed"
else
  $now=date
  echo "$now Ruby compilation succeeded" > log.log
  git aa && git cm -m "Success message"
fi

echo "Hello from C!"
gcc HelloWorldPrograms/c/hello.c -o hola
if [ $? -ne 0 ]
then
    echo "C compile failed"
else
  ./hola
  rm hola
  $now=date
  echo "$now C compilation succeeded" > log.log
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
  echo "$now C++ compilation succeeded" > log.log
  git aa && git cm -m "Success message"
fi
