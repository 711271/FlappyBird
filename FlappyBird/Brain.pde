public class Brain {
  float[][] input = new float[3][2];
  
  float[][] h1w = new float[2][3];
  float[][] h2w = new float[3][5];
  float[][] h1b =  new float[2][3];
  float[][] h2b = new float[2][3];
  float[][] output = new float[1][2];
  
  public Brain() {
    
  }
  
  public void think(PVector bPos, PVector pPos, PVector pRelPos, PVector pGap) {
    input[0][0] = bPos.x;
    input[0][1] = bPos.y;
    input[1][0] = pRelPos.x;
    input[1][1] = pRelPos.y;
    input[2][0] = pGap.x;
    input[2][1] = pGap.x;
    
    float[][] h1Out = new float[3][3];
    h1Out = Matrix.add(Matrix.mult(input, h1w),h1b);
  }
}
