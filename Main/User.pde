public class User {
  private String username;
  private int coins;
  private Score score; 

  public User(String username, int coins, int score) {
    this.username = username;
    this.coins = coins;
    this.score = new Score(score);
  }

  public int getScore() {
    return score.getScore();
  }

  public String getUsername() { 
    assert username != null;
    return username;
  }

  public int getCoins() { 
    assert coins >= 0;
    return coins;
  }

  public void increaseCoins() {
    coins += 1;
  }
  
   public void increaseScore(){
      score.setScore(1); 
  }
}
