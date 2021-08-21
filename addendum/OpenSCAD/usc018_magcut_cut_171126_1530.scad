//Copyright © 2017 by Abbott Analytical Products. All Rights Reserved. 

module usc(){

module cutout1()
{
       union()
       {
       translate(v=[0,10,0])
       cube([57,10,4]);
       cube([49,20,4]);

       }
 }

module cutout2()
{
       cube([38,27,4]);
}

module block()
{
      cube([90,40,1]);
}

module magcut()
{
union() {
       translate(v=[7,11,-2])
       cutout1();
       translate(v=[7,7,-2]) 
       cutout2();
 }
}

module butt()
{
  union ()
    {
    translate(v=[-2,5,3])
    cube([96,28,32]);
    translate(v=[-2,4,8])
    cube([96,30,48]);
   }
}


module ejecthole()
{
       translate(v=[12,7,9]) { 
       cube([55,12,28]);
       }
 }

module ejectblock()
{
       translate(v=[10,8,6]) { 
       cube([60,10,34]); //ejector mold\
       }
   
 }


module eject ()
{
       translate(v=[5,26,8])
       {
        difference()
        //union()
        {
          ejectblock();
          ejecthole();
        }
       }
}



union(){
    translate(v=[0,0,-1])
    {
//intersection(){
//render(convexity = 1){
difference()
{
block();
magcut();
//butt();
//translate(v=[5,26,8]){ejecthole();}
} //difference
//eject();

}
}

}

usc();



