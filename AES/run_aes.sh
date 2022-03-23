export TIMEFORMAT="Compile time: %3R seconds"
time g++ aes.cpp -o aes libcryptopp.a
echo -e "\nOutput:"
export TIMEFORMAT="Run time: %3R seconds"
time (./aes) | { cat; echo;}