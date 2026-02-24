%{
#include "token.h"
%}
DIGIT  [0-9]
HEX    [A-F0-9a-f]
BINARY [01]
%%
(\t) /* skip whitespace */
\-?{DIGIT}+    { return TOKEN_INTEGER; }
0b{BINARY}+   { return TOKEN_BINARY; }
0x{HEX}+      { return TOKEN_HEX; }

\{             { return TOKEN_OPN_CURLY; }
\}             { return TOKEN_CLS_CURLY; }
\(             { return TOKEN_OPN_PAREN; }
\)             { return TOKEN_CLS_PAREN; }
\[             { return TOKEN_OPN_SQUARE; }
\]             { return TOKEN_CLS_SQUARE; }
\;             { return TOKEN_SEMI_COLON; }
\=             { return TOKEN_SEMI_EQUAL; }
\<             { return TOKEN_LESS_THAN; }
\>             { return TOKEN_GREATER_THAN; }
\<\<           { return TOKEN_LEFT_SHIFT; }
\>\>           { return TOKEN_RIGHT_SHIFT; }
\|             { return TOKEN_PIPE; }
\*             { return TOKEN_ASTERIKS; }
\&             { return TOKEN_AMPERSAND; }
\|\|           { return TOKEN_OR; }
\&\&           { return TOKEN_AND; }
\+\=           { return TOKEN_PLUS_EQUAL; }
\-\=           { return TOKEN_MINUS_EQUAL; }
\/\/           { return TOKEN_OPEN_COMMENT; }
\/\*           { return TOKEN_OPEN_COMMENT; }
\*\\           { return TOKEN_CLOSE_COMMENT; }
\+\+           { return TOKEN_INCREMENT; }
\-\-           { return TOKEN_DECREMENT; }
for" "+        { return TOKEN_KEYWORD_FOR; }
if" "+         { return TOKEN_KEYWORD_IF; }
bool           { return TOKEN_KEYWORD_BOOL; }
true           { return TOKEN_KEYWORD_TRUE; }
false          { return TOKEN_KEYWORD_FALSE; }
return         { return TOKEN_KEYWORD_RETURN; }
struct         { return TOKEN_KEYWORD_STRUCT; }
while          { return TOKEN_KEYWORD_WHILE; }
break          { return TOKEN_KEYWORD_BREAK; }

signed         { return TOKEN_KEYWORD_SIGNED; }
unsigned       { return TOKEN_KEYWORD_UNSIGNED; }

float          { return TOKEN_KEYWORD_FLOAT; }
double         { return TOKEN_KEYWORD_DOUBLE; }


.  { return TOKEN_ERROR; }
%%
int yywrap() { return 1; }
