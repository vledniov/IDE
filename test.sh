#! /bin/zsh/
echo "Hello from python!"
python HelloWorldPrograms/python/hello.py
if [ $? -ne 0 ]
then
  echo "Python compile failed"
fi

echo "Hello from Ruby!"
ruby HelloWorldPrograms/ruby/hello.rb
if [ $? -ne 0 ]
then
  echo "Ruby compile failed"
fi

echo "Hello from C!"
gcc HelloWorldPrograms/c/hello.c -o hola
if [ $? -ne 0 ]
then
    echo "C compile failed"
else
  ./hola
  rm hola
fi

echo "Hello from C++!"
g++ HelloWorldPrograms/cpp/hello.cpp -o hola
if [ $? -ne 0 ]
then
  echo "C++ compile failed"
else
  ./hola
  rm hola
fi
