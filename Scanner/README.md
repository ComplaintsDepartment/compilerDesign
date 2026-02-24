# Compiler Project – Scanner Implementation

## 1. Student Information
- **Name:** Jay Dommershausen
- **Program:** ECE
- **Course:** Compiler Design
- **Semester / Year:** Spring 2026

## 2. Scanner Overview
Scanner utilizes Flex to scan for tokens.
The program.c file can be updated with a list of strings to scan for tokens.
Recommended example strings:

{5}
(-145)
[56]
if (bool test == true) {
if  (bool test == true) {
if(bool test == true) {
	return true;
0x34

## 3. Compilation
Compile using:
gcc main.c lex.yy.c -o scanner
