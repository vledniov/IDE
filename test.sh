#! /bin/zsh/
echo "Hello from python!"
python HelloWorldPrograms/python/hello.py

echo "Hello from Ruby!"
ruby HelloWorldPrograms/ruby/hello.rb

echo "Hello from C!"
gcc HelloWorldPrograms/c/hello.c -o hola
./hola
rm hola

echo "Hello from C++!"
g++ HelloWorldPrograms/cpp/hello.cpp -o hola
./hola
rm hola

