#include <cassert>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
// Forward declare the "fuzz target" interface.
// We deliberately keep this inteface simple and header-free.
extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size);

int main(int argc, char **argv) {
  std::string str = "hi";
  
  DoStuff(str); //calling and disregarding the output
  
  return 0;
}