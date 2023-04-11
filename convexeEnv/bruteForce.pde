void bruteForce(PVector [] tabvec)
{
  PVector minX=tabvec[0];
  PVector minY=tabvec[0];
  PVector maxX=tabvec[0];
  PVector maxY=tabvec[0];

  for (PVector p1 : tabvec)
  {
    if (minX.x>p1.x)
    {
      minX=p1;
    }
    if (minY.y>p1.y)
    {
      minY=p1;
    }
    if (maxX.x<p1.x)
    {
      maxX=p1;
    }
    if (maxY.y<p1.y)
    {
      maxY=p1;
    }
  }
  stroke(0);
  // fill(255);
  line(minX.x, minX.y, maxY.x, maxY.y);
  line(maxY.x, maxY.y, maxX.x, maxX.y);
  line(maxX.x, maxX.y, minY.x, minY.y);
  line(minY.x, minY.y, minX.x, minX.y);
  discard(tabvec,minX,minY,maxX ,maxY );
}


boolean isRight(PVector a, PVector b, PVector c) {
  return !(((b.x - a.x)*(c.y - a.y) - (b.y - a.y)*(c.x - a.x)) > 0);
}


void discard(PVector [] tabvec, PVector minX, PVector minY, PVector maxX, PVector maxY)
{
  for (PVector p1 : tabvec)
  {
    if (isRight(minX, maxY, p1) && isRight(maxY, maxX, p1) && isRight(maxX, minY, p1) && isRight(minY, minX, p1))
    {
     stroke(255,255,255);
      point(p1.x,p1.y);
    }
  }
}
