Die Dice1;
int i;
int j;
int sum;
int roll;


public void setup()
  {
      noLoop();
      size(800,800);
      i=50;
      j=50;
      Dice1= new Die(i,j);
      

      
      
  }
  public void draw()
  {
      background(255,255,255);
      for(int row = 0; row < 3; row++)
      {
      for (int col=0; col<3; col++)
      {
      i=i+150;
      Dice1= new Die(i,j);
      Dice1.roll();
      Dice1.show();
      sum=sum+roll;
      }
      i=50;
      j=j+150;
      }
      i=50;
      j=50;
      Dice1.sum();
  }
  public void mousePressed()
  {
      redraw();
  }
  public class Die //models one single dice cube
  {
      int diceX;
      int diceY;
      int dotX;
      int dotY;
      int dotX1;
      int dotX2;
      int dotY1;
      int dotY2;

      int roll;
      
      public Die(int x, int y) //constructor
      {
          
          diceX = x;
          diceY = y;
          dotX = diceX + 25;
          dotX1 = diceX + 50;
          dotX2 = diceX + 75;
          dotY = diceY + 25;
          dotY1 = diceY + 50;    
          dotY2 = diceY + 75;
          
      }
      public void roll()
      {
          roll = (int)(Math.random()*6)+1;
          sum=sum+roll;
          
      }
      public void sum()
      {
        stroke(0,0,0);
        text("Sum is " + sum, 250,500);
        sum=0;
      }
      public void show()
      {
        fill(142,32,152);
        rect(diceX ,diceY ,100,100);
        fill(123,234,153);
        if(roll==1)
        {
          ellipse(dotX1,dotY1,10,10);
        }
        else if(roll==2)
        {
          ellipse(dotX,dotY2,10,10);
          ellipse(dotX2,dotY,10,10);
        }
        else if(roll==3)
        {
          ellipse(dotX,dotY2,10,10);
          ellipse(dotX1,dotY1,10,10);
          ellipse(dotX2,dotY,10,10);
        }
        else if(roll==4)
        {
          ellipse(dotX,dotY,10,10);
          ellipse(dotX,dotY2,10,10);
          ellipse(dotX2,dotY2,10,10);
          ellipse(dotX2,dotY,10,10);
          
        }
        else if (roll==5)
        {
          ellipse(dotX,dotY,10,10);
          ellipse(dotX,dotY2,10,10);
          ellipse(dotX2,dotY2,10,10);
          ellipse(dotX2,dotY,10,10);
          ellipse(dotX1,dotY1,10,10);
        }
        else if (roll==6)
        {
          ellipse(dotX,dotY,10,10);
          ellipse(dotX,dotY2,10,10);
          ellipse(dotX2,dotY2,10,10);
          ellipse(dotX2,dotY,10,10);
          ellipse(dotX,dotY1,10,10);
          ellipse(dotX2,dotY1,10,10);
        }
      }
  }


