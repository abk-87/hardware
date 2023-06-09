#include "cpu.hpp"

ControlUnit cu;
ALU alu;
Register reg;
CPU cpu;
RAM ram;

int ControlUnit::fetch()
{
	int instruction = ram.read(reg.read(0));
	reg.write(0, reg.read(0) + 1);
	return instruction;
}

void ControlUnit::decode(int instruction)
{
	int a = 0b11111111;
	reg.write(1, (instruction >> 24));
	if (reg.read(1) != 1)
	{
		reg.write(2, ((instruction >> 16) & a));
		reg.write(3, ((instruction >> 8) & a));
		reg.write(4, (instruction & a));
	}
}

void ControlUnit::execute()
{
	switch(reg.read(1))
	{
		case 0:
			ram.write(reg.read(2), reg.read(4));
			break;
		case 1:
			std::cout << ram.read(reg.read(2)) << std::endl;
			break;
		default:
			reg.write(5, ram.read(reg.read(3)));
			reg.write(6, ram.read(reg.read(4)));
			reg.write(7, alu.calculation(reg.read(5), reg.read(6), reg.read(1)));
			ram.write(reg.read(2), reg.read(7));
			break;
	}
}

int ALU::calculation(int a, int b, int op)
{
	switch(op)
	{
		case 2:
			return a + b;
		case 3:
			return a - b;
		case 4:
			return a * b;
		case 5:
			assert(b != 0 && "Division by 0");
			return a / b;
		case 6:
			return a & b;
		case 7:
			return a | b;
		case 8:
			return a ^ b;
		case 9:
			return ~b;
	}
	return 0;
}

int Register::read(int address)
{
	return registers[address];
};

void Register::write(int address, int data)
{
		registers[address] = data;
};

void CPU::load(int inst_list[], int size)
{
	for (int i = 0; i < size; i++)
	{
		ram.write(i, inst_list[i]);
		ram.get_inst_counter()++;
	}
}

void CPU::exe()
{
	for (int i = 0; i < ram.get_inst_counter(); i++)
	{
		cu.decode(cu.fetch());
		cu.execute();
	}
}

RAM::RAM()
{
	inst_counter = 0;
}

int& RAM::get_inst_counter()
{
	return inst_counter;
}

int RAM::read(int address)
{
	return memory[address];
};

void RAM::write(int address, int data)
{
	assert(address >= ram.get_inst_counter() && address < 256);
	{
		memory[address] = data;
	}
};
