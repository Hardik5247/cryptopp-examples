export TIMEFORMAT="Compile time: %3R seconds"
time g++ rsa_new.cpp -o rsa_new libcryptopp.a
echo -e "\nOutput:"
export TIMEFORMAT="Run time: %3R seconds"
time (./rsa_new) | { cat; echo;}