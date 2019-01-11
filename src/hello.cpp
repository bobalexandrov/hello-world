#include <greeter.h>

int main(int argc,char** argv,char** env)
{

   greeter* g = new greeter();
   g->greet();
   g->greetBack();

  return 0;
}
