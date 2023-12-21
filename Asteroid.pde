/* This source code is copyrighted materials owned by the UT system and cannot be placed 
into any public site or public GitHub repository. Placing this material, or any material 
derived from it, in a publically accessible site or repository is facilitating cheating 
and subjects the student to penalities as defined by the UT code of ethics. */

class BigAsteroid extends GameObject
{
  float rotInc = .1;
  int health;
  
  
  BigAsteroid(PApplet applet, int xpos, int ypos, int frame, float rotInc, float speed, float direction) 
  {    
    super(applet, "NewAsteroid.png", 3, 1, 51);

    this.rotInc = rotInc;
    setXY(xpos, ypos);
    setVelXY(0, 0);
    setScale(.5);
    setFrame(frame);
    setSpeed(speed, direction);
    health = 100;

    // Domain keeps the moving sprite withing specific screen area 
    setDomain(0, 0, applet.width, applet.height, Sprite.REBOUND );
  }

  void update() 
  {
    setRot(getRot() + rotInc);
  }

  void setInactive()
  {
    super.setInactive();
    soundPlayer.playExplosionLargeAsteroid();
  }
  void setHealth() 
  {
    health -= 50;
  }
  
  int getHealth() 
  {
    return health;
  }
  
  void drawOnScreen() {}
  

}




/*****************************************/


class SmallAsteroid extends GameObject
{
  float rotInc = .1;
  float accel = 30;
  
  SmallAsteroid(PApplet applet, int xpos, int ypos, int frame, float rotInc, float speed, float direction) 
  {
    super(applet, "NewSmallAsteroid.png", 3, 1, 51);

    this.rotInc = rotInc;
    setXY(xpos, ypos);
    setVelXY(0, 0);
    setScale(.5);
    setFrame(frame);
    setSpeed(speed, direction);

    // Domain keeps the moving sprite withing specific screen area 
    setDomain(0, 0, applet.width, applet.height, Sprite.REBOUND );
  }

  void update() 
  {
    setRot(getRot() + rotInc);
  }

  void setInactive()
  {
    super.setInactive();
    soundPlayer.playExplosionSmallAsteroid();
  }

  void drawOnScreen() {}
}
