// testffi/libs/api.cpp
#define EXPORT extern "C" __attribute__((visibility("default"))) __attribute__((used))
#include <cstring>
#include <ctype.h>
EXPORT
int add(int a, int b) {
   return a + b;
}
EXPORT
char* capitalize(char *str) {
   static char buffer[1024];
   strcpy(buffer, str);
   buffer[0] = toupper(buffer[0]);
   return buffer;
}
