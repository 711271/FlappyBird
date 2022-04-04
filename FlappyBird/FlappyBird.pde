Pipe[] pipes = new Pipe[5];

public void setup() {
  size(1000,600);
  spawnPipes();
}

public void draw() {
  for(int i=0;i<pipes.length;i++){
    pipes[i].show();
    
  }
}

private void spawnPipes() {
  for (int i = 0; i < pipes.length; i++) {
    PVector pos = new PVector(150+100*i,0);
   pipes[i] = new Pipe(pos,i);
  }
}
