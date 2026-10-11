#include <iostream>
#include "calculator.h"

int main(){
    Calculator calc;
    double a = 10.5;
    double b = 4.5;
    
   std::cout << "Calculator Demo" << std::endl;
   std::cout << a << " + " << b << " = " << calc.Add(a, b) << std::endl;
   std::cout << a << " - " << b << " = " << calc.Sub(a, b) << std::endl;
   
  return 0;
}
