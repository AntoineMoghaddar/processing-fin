public class Menu {
  private UserProfile up;
  User current; 

  public Menu() {
    up = new UserProfile();
  }

  public boolean login(String username) {
    println("<<DEBUG>> Started Login Process");
    if (up.checkUserlist(username)) { 
      this.current = up.requestUser(username); 
      println("<<DEBUG>> User already in database, logging in...");
      return true;
    } else if (!up.checkUserlist(username)) { 
      this.current = up.register(username);
      println("<<DEBUG>> User registered to database, logging in...");
      return true;
    }
    return false;
  }
}
