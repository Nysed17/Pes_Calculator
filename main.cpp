#include "func.cpp"
#include <cstdlib>
#include <iostream>
#include <math.h>
#include <ostream>

int select();

class exec{
   int n;
   int k;
   int p;
   public:
   void factorial(){
      func resf;
      system("clear");
      std::cout<<"n!\n\n";
      int n;
      std::cout<<"number: "; std::cin>>n;
      std::cout<<"\n\nresult: "; long double res = resf.returnFact(n); std::cout<<res;
      int a;
      std::cout<<"\n\npress 1 for continue, 2 for quit: "; std::cin>>a;
      if (a == 1){select();}else{exit(0);}
   }

   void prodFactorial(){
      func resf;
      system("clear");
      std::cout<<"n1! * n2!\n\n";
      int n1;
      int n2;
      std::cout<<"number1: "; std::cin>>n1;
      std::cout<<"number2: "; std::cin>>n2;
      std::cout<<"\n\nresult: "; long double res = resf.returnFact(n1) * resf.returnFact(n2); std::cout<<res;
      int a;
      std::cout<<"\n\npress 1 for continue, 2 for quit: "; std::cin>>a;
      if (a == 1){select();}else{exit(0);}
   }

   void dispSemplici(){
      func resf;
      system("clear");
      std::cout<<"  n!  \n";
      std::cout<<"------\n";
      std::cout<<"(n-k)!\n\n";
      int n;
      int k;
      std::cout<<"number: "; std::cin>>n;
      std::cout<<"k:      "; std::cin>>k;
      std::cout<<"\n\nresult: "; long double res = resf.returnFact(n) / (resf.returnFact(n-k)); std::cout<<res;
      int a;
      std::cout<<"\n\npress 1 for continue, 2 for quit: "; std::cin>>a;
      if (a == 1){select();}else{exit(0);}
   }

   void combinazioni(){
      func resf;
      system("clear");
      std::cout<<"   n!  \n";
      std::cout<<"--------\n";
      std::cout<<"k!(n-k)!\n\n";
      int n;
      int k;
      std::cout<<"number: "; std::cin>>n;
      std::cout<<"k:      "; std::cin>>k;
      std::cout<<"\n\nresult: "; long double res = resf.returnFact(n) / (resf.returnFact(k) * resf.returnFact(n-k)); std::cout<<res;
      int a;
      std::cout<<"\n\npress 1 for continue, 2 for quit: "; std::cin>>a;
      if (a == 1){select();}else{exit(0);}
   }

   void binom(){
      func resf;
      system("clear");
      std::cout<<"comb(n,k) * P^k * (1-P)^n-k\n\n"<<std::endl;
      int n, k;
      float p;
      std::cout<<"number: "; std::cin>>n;
      std::cout<<"k: "; std::cin>>k;
      std::cout<<"probabilità: "; std::cin>>p;
      std::cout<<"\n\nresult: "; float res = resf.returnFact(n) / (resf.returnFact(k) * resf.returnFact(n-k)) * pow(p,k) * pow(1-p,n-k); std::cout<<res;
      int a;
      std::cout<<"\n\npress 1 for continue, 2 for quit: "; std::cin>>a;
      if (a == 1){select();}else{exit(0);}
   }

   void Ipergeometrica(){
      func resf;
      system("clear");
      std::cout<<" comb(k,x) * comb(N - k, n - x)\n";
      std::cout<<"-------------------------------\n";
      std::cout<<"            comb(N,n)\n\n";
      int n, k, N, x;
      std::cout<<"n (numero di elementi presi in considerazione): "; std::cin>>n;
      std::cout<<"k: "; std::cin>>k;
      std::cout<<"N (numero totale di elementi): "; std::cin>>N;
      std::cout<<"x (incognita): "; std::cin>>x;
      std::cout<<"\n\nresult: "; float molt = (resf.returnFact(k) / (resf.returnFact(x) * resf.returnFact(k-x))) * (resf.returnFact(N-k) / (resf.returnFact(n-x) * resf.returnFact((N-k) - (n-x)))); float res = molt / (resf.returnFact(N) / (resf.returnFact(n) * resf.returnFact(N-n))); std::cout<<res;
      int a;
      std::cout<<"\n\npress 1 for continue, 2 for quit: "; std::cin>>a;
      if (a == 1){select();}else{exit(0);}
   }
};

int select(){
   exec on;
   system("clear");
   std::cout<<"                                                 \n _____ _____            _         _     _            \n|  _  |   __|   ___ ___| |___ _ _| |___| |_ ___ ___  \n|   __|__   |  |  _| .'| |  _| | | | .'|  _| . |  _| \n|__|  |_____|  |___|__,|_|___|___|_|__,|_| |___|_|\n\n\n";
   int w;
   std::cout<<"1] Factorial\n2] Factorial * Factorial\n3] Disposizione semplice\n4] Combinazione\n5] Binomiale\n6] Ipergeometrica\n";
   std::cout<<"select: "; std::cin>>w;
   switch (w) {
      case 1:
         on.factorial();
         break;
      case 2:
         on.prodFactorial();
         break;
      case 3:
         on.dispSemplici();
         break;
      case 4:
         on.combinazioni();
         break;
      case 5:
         on.binom();
         break;
      case 6:
         on.Ipergeometrica();
         break;
   }
   return 0;
}

int main(){
   system("clear");
   select();
}
