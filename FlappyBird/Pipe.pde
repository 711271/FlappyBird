public class Pipe {
  PVector pos;
  final float WIDTH = 20;
  float gap, botHeight, topLength;
  int id;
  
  public Pipe(PVector pos, int id) {
    this.pos = pos;
    botHeight = height * random(0.40);
    gap = height * random(0.30);
    topLength = height - (botHeight + gap);
    this.id = id;
  }
  
  public void show() {
    fill(0);
    rect(pos.x, pos.y, WIDTH, topLength);
    rect(pos.x, pos.y + topLength + gap, WIDTH, botHeight);
  }
  
  public boolean pipeVsBird(Bird b) {
    return false;
  }
}
