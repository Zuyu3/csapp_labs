#include<stdio.h>
unsigned int double2bits(float d){
   union
   {
      float d;
      unsigned int u;
   } temp;
   temp.d = d;
   return temp.u;
}
void printAsBit(unsigned int x){
   for(int i = 0; i < 32; i++){
      printf("%d", !!((x << i) & (1l << 31)));
   } 
   printf("\n");
}
int main(){
   printf("%d\n", double2bits(121.5475));
   printAsBit(double2bits(121.5475));
   return 0;
}