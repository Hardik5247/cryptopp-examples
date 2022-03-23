#include "cryptlib.h"
#include "sha.h"
#include <iostream>
#include "files.h"
#include "hex.h"

int main (int argc, char* argv[])
{
    using namespace CryptoPP;
    HexEncoder encoder(new FileSink(std::cout));

    std::string msg = "Yoda said, Do or do not. There is no try.";
    std::string digest;

    SHA256 hash;
    hash.Update((const byte*)msg.data(), msg.size());
    digest.resize(hash.DigestSize());
    hash.Final((byte*)&digest[0]);

    std::cout << "Message: " << msg << std::endl;

    std::cout << "Digest: ";
    StringSource(digest, true, new Redirector(encoder));
    std::cout << std::endl;

    return 0; 
}