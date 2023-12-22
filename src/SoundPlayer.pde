/* This source code is copyrighted materials owned by the UT system and cannot be placed 
into any public site or public GitHub repository. Placing this material, or any material 
derived from it, in a publically accessible site or repository is facilitating cheating 
and subjects the student to penalities as defined by the UT code of ethics. */

import processing.sound.*;

class SoundPlayer 
{
  SoundFile boomPlayer, popPlayer, gameOverPlayer;
  SoundFile explosionLargeAsteroid, explosionShip, explosionSmallAsteroid;
  SoundFile ohYea, missileLaunch;
  SoundFile backgroundMusic;
  
  SoundPlayer(PApplet app, float globalVolume) 
  {
    boomPlayer = new SoundFile(app, "FuelExplosion.wav"); 
    boomPlayer.amp(globalVolume);
    
    gameOverPlayer = new SoundFile(app, "Circus.wav"); 
    gameOverPlayer.amp(globalVolume);
    
    popPlayer = new SoundFile(app, "ElectricPop.wav");
    popPlayer.amp(globalVolume);
    
    explosionLargeAsteroid = new SoundFile(app, "GrenadeExplosion.wav");
    explosionLargeAsteroid.amp(globalVolume);
    
    explosionSmallAsteroid = new SoundFile(app, "FastExplosion.wav");
    explosionSmallAsteroid.amp(globalVolume);
    
    explosionShip = new SoundFile(app, "ArcadeExplosion.wav");
    explosionShip.amp(globalVolume);
    
    ohYea = new SoundFile(app, "Win.wav");
    ohYea.amp(globalVolume);
    
    missileLaunch = new SoundFile(app, "Laser.wav");
    missileLaunch.amp(globalVolume);
    
    backgroundMusic = new SoundFile(app, "background.wav");
    backgroundMusic.amp(globalVolume);
    backgroundMusic.loop();
  }

  void playExplosion() 
  {
    boomPlayer.play();
  }

  void playPop() 
  {
    popPlayer.play();
  }

  void playGameOver() 
  {
    gameOverPlayer.play();
  }
  
  void playExplosionLargeAsteroid() 
  {
    explosionLargeAsteroid.play();
  }

  void playExplosionSmallAsteroid() 
  {
    explosionSmallAsteroid.play();
  }
  
  void playExplosionShip() 
  {
    explosionShip.play();
  }

  void playOhYea() 
  {
    ohYea.play();
  }

  void playMissileLaunch() 
  {
    missileLaunch.play();
  }
 
}
