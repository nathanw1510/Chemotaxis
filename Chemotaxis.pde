Bacteria[] b;
void setup(){   
 	size(1000,1000);
 	background(255);
 	frameRate(500);
 	b = new Bacteria[100];
 	for(int i = 0; i < b.length; i++){
 		b[i] = new Bacteria();
 		b[i].R = (int)(Math.random()*256);
 		b[i].G = (int)(Math.random()*256);
 		b[i].B = (int)(Math.random()*256);
 	}
 }   
 void draw(){    
 	for(int i = 0; i < b.length; i++){
 		b[i].show();
 		b[i].move();
 	}   
 }  
 class Bacteria{     
 	int myX,myY,R,G,B;

 	Bacteria(){
 		myX = myY = 500;
 	}   

 	void show(){
 		fill(R,G,B);
 		noStroke();
 		ellipse(myX,myY,2,1);
 	}

 	void move(){
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
}    
