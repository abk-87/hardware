#include <iostream>

class ControlUnit
{
public:
	int fetch();
	void decode(int instruction);
	void execute();
};

class ALU
{
public:
	int calculation(int a, int b, int op);
};

class Register
{
public:
	int registers[16]{};
	
	int read(int address);
	void write(int address, int data);
};

class CPU
{
public:
	void load(int inst_list[], int size);
};

class RAM
{
public:
	int memory[128]{};
	int inst_counter;
	int data_counter;
	
	RAM();
	int read(int address);
	void write(int address, int data);
};

extern ControlUnit cu;
extern ALU alu;
extern Register reg;
extern CPU cpu;
extern RAM ram;
