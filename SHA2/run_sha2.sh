export TIMEFORMAT="Compile time: %3R seconds"
time g++ sha2.cpp -o sha2 libcryptopp.a
echo -e "\nOutput:"
export TIMEFORMAT="Run time: %3R seconds"
time (./sha2) | { cat; echo;}