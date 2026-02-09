
# Scanner part 1 - Lexical Specification


## Input language: 
C

## Token Categories/Types:
### Keywords: 
- bool, true, false
- for, while
- struct
- break, return

### Identifiers: 
I will be using the C style of allowing any arbitrary sequences of letters, digits, and the underscore character (_). They cannot contain spaces and must not begin with a digit.

### Numbers: could be formatted as integers, or floating point values, or fractions, or in alternate bases such as binary, octal or hexadecimal.
- 0x
- 0b
- (un)signed long, (un)signed long long, float, double, bool

Separaters: {}()[]
Mathematical Operators: + - = << >> < > / * 
Other Operators: %\!&*|;
## Formal Specification:

### Keywords:

```
(true)|(false)
```
```
(for)|(while)|(break)|(return)
```
```
((un)*signed (long )+)|(double)|(float)|(bool)|(struct)
```
```
0b[01]+
```
```
0x[0-9A-Fa-F]+
```
```
[+-=<>/*{}()[]\!&]
```
```
Special characters:
|| && // /* */ ++ -- += -=
```


## Examples: 
### Keywords: 

```
while(true){
	break;
}
```

```
for (int i = 0 ; i < X ; i++) {
	if (true) {
		return;
	}
}

```

### Identifiers: 
```
struct X{
	int Y;
};
```

### Numbers: 

```
signed long x        = 0b0101;
unsigned long long y = 0b0101;
signed long x        = 0xCAFE;
signed long y        = -125;
```

