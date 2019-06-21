public class UserProfile {
  private int i;
  private PrintWriter pw; 
  private User user; 
  String[] lines;
  private ArrayList<User> users; 

  public UserProfile() {
    users = new ArrayList<>(); 
    pw = createWriter("users.txt");
    lines = loadStrings("users.txt");
  }

  public void writeFile() { 
    assert user.getUsername() != null; 
    pw.println(user.getUsername() + "|" + user.getScore() + "|" + user.getCoins());
  }

  public void readFile() {
    if (i < lines.length) {
      String[] pieces = split(lines[i], '|');
      if (pieces.length == 3) {
        users.add(new User(pieces[0], Integer.valueOf(pieces[1]), Integer.valueOf(pieces[2]) ));
      }
    }
  }
}
