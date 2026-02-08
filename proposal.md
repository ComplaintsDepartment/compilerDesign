# Compiler Project – Initial Definition

## 1. Student Information
- **Name:**
- **Program:**
- **Course:** Compiler Design
- **Semester / Year:** Spring 2026

## 2. Project Overview
This project will develop a C code compiler, with an initial implementation in C.  My particular interests include simultaneous instruction multiple data processor registers and fast calculation of large datasets. After basic implementation I would like to incorporate both loop unrolling and SIMD optimizations. My implementation will utilize a limited subset of C syntax and maintain strict typing.

## 3. Source Language
I will be utilizing a minimalized C syntax. The items that are important to me is ensuring strict typing and syntax for basic loops, functions, and lines.

## 4. Target / Output Language
I would like the output of the compiler to be directly in x86_64 assembly so that I can more readily confirm the register utilization.

## 5. Compiler Features (Planned)
I plan to implement the following:
- Lexical analysis - I am going to leverage FLEX to provide the regular expression parsing.
- Syntax and Semantic analysis - This will begin very basically as rudimentary features and basic operations are implemented.
- Intermediate representation - I plan to use the intermediate representation format provided by compilerbook.org.
- Optimizations - I intend to implement loop unrolling as well as SIMD register utilization.
- Code generation - I hope to output x86_64 assembly code that can be converted into an ELF file with existing tools.

## 6. Tools and Libraries
List any tools, frameworks, or libraries you plan to use:
- Parser generators - FLEX 
- Build tools - objcopy

## 7. Repository Information
  https://github.com/ComplaintsDepartment/compilerDesign

## 8. Project Status
- [x] Repository created
- [x] README file added
- [ ] Initial project structure committed

## 9. Additional Notes



