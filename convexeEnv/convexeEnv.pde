int n=100;
PVector tabvec[] = new PVector[n];

void setup()
{
  size(500, 500);  // Size must be the first statement
  for (int i=0; i<n; i++) {
    tabvec[i] = new PVector(random(0, 500), random(0, 500));
  }
}
void draw() {
  background(255);
  strokeWeight(3);

  stroke(0);
  for (PVector p : tabvec)
  {
    point(p.x, p.y);
  }
  bruteForce(tabvec);
}
