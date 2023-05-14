#include "cpu.hpp"

int main() 
{
	ram.memory[32] = 10;
	ram.memory[33] = 5;
	int l[] = {0b00000001'00100010'00100000'00100001, 
		   0b00000010'00100011'00100000'00100001, 
		   0b00000011'00100100'00100000'00100001,
		   0b00000100'00100101'00100000'00100001,
		   0b00000101'00100110'00100000'00100001,
		   0b00000110'00100111'00100000'00100001,
		   0b00000111'00101000'00100000'00100001};
	int size = sizeof(l)/sizeof(l[0]);
	cpu.load(l, size);
	return 0;
}
