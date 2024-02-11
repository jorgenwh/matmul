#include <iostream>

int main(int argc, char** argv) {
  if (argc != 2) {
    std::cerr << "Usage: " << argv[0] << " <N>" << std::endl;
    return EXIT_FAILURE;
  }

  int N = std::stoi(argv[1]);

  std::cout << "N = " << N << std::endl;

  return EXIT_SUCCESS;
}
