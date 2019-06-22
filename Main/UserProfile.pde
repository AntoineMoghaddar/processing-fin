import java.io.FileWriter;

public class UserProfile {
  private int i;
  String[] lines;
  private ArrayList<User> users; 

  public UserProfile() {
    users = new ArrayList<User>(); 
    lines = loadStrings("users.txt");
  }

  private void writeFile(User user) { 
    assert user != null; 
    println("<<DEBUG>> Updating Database with following data: " + user.toString());
    try{ 
    FileWriter fw = new FileWriter("users.txt", true); //the true will append the new data
    fw.write(user.toString());//appends the string to the file
    fw.close();
    } catch(IOException ioe){
      println("<<ERROR>> IOException occurred: Check class UserProfile:22");
    }
  }

  public User register(String username) {
    println("<<DEBUG>> requested register to database");

    User user = new User(username, 0, 0);
    writeFile(user);
    return user;
  }

  public void readFile() {
    if (i < lines.length) {
      String[] pieces = split(lines[i], '|');
      if (pieces.length == 3) {
        users.add(new User(pieces[0], Integer.valueOf(pieces[1]), Integer.valueOf(pieces[2]) ));
      }
    }
  }

  public User requestUser(String username) { 
    for (User u : users) {
      return (u.username == username) ?u : null;
    }
    return null;
  }

  public boolean checkUserlist(String username) {
    println("<<DEBUG>> Checking user existance");

    for (User u : users) {
      return (u.username == username) ? true : false;
    }
    return false;
  }
}
