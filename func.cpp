#include <vector>
#include <iostream>

class func{
// factorial {
   public:      
   std::vector<int> createFact(int n){
      std::vector<int> res; 
      for (int i = 1 ; i < n+1 ; i++){ //expliciting number
         res.push_back(i);
      }
      return res;
   }

   long double returnFact(int n){
      std::vector<int> num = createFact(n); //copy sium
      long double res = 1;
      for (int i = 0 ; i < n ; i++){
         res *= num.at(i); //factorial
      }
      return res;
   }
// }
};
