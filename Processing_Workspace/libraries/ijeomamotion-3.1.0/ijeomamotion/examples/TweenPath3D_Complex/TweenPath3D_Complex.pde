/**
 	  Title: complex 3d tween
 	  
 	  Author: Ekene Ijeoma / Bloom
 	  Date: February 2010  
 	  Description: An object follows a complex path 
 */

import ijeoma.geom.path.*;
import ijeoma.motion.*;
import ijeoma.motion.tween.path.*;

PVector[] vertices;

Path3D p;
TweenPath3D tp;

int HALF_SIZE = 100;
float[][] points = { { HALF_SIZE, HALF_SIZE, HALF_SIZE },
	{ HALF_SIZE * 1.5f, 0, 0 }, { HALF_SIZE, -HALF_SIZE, -HALF_SIZE },
	{ 0, -HALF_SIZE * 1.5f, 0 }, { -HALF_SIZE, -HALF_SIZE, HALF_SIZE },
	{ -HALF_SIZE * 1.5f, 0, 0 }, { -HALF_SIZE, HALF_SIZE, -HALF_SIZE },
	{ 0, HALF_SIZE * 1.5f, 0 } };

void setup() {
  size(400, 400, P3D);
  smooth();

  vertices = new PVector[points.length];

  for (int i = 0; i < points.length; i++)
    vertices[i] = new PVector(points[i][0], points[i][1], points[i][2]);

  p = new Path3D(this, vertices);

  Motion.setup(this);

  tp = new TweenPath3D(p, 0f, 1f, 300f);
  tp.repeat(MotionConstant.REVERSE);
  tp.debug();
  tp.play();
}

void draw() {
  background(255);

  translate(width / 2, height / 2, 0);
  rotateY(frameCount / 100.0f);
  rotateX(2.0f);
  rotateZ(frameCount / 200.0f);

  // This draws the large box
  noFill();
  stroke(200);
  box(HALF_SIZE * 2);

  // This draws the path
  noFill();
  stroke(100);
  beginShape();
  p.draw();
  endShape(CLOSE);

  // This draws the small black box
  fill(0);
  translate(tp.getX(), tp.getY(), tp.getZ());

  // The above can also be written as
  // PVector pathVertex = tp.getVertex();
  // translate(pathVertex.x, pathVertex.y, pathVertex.z);

  box(20);
}

void keyPressed() {
  // Path3D(PApplet _parent, PVector[] _vertices, String _pathMode)
  // _pathMode is set to CUBIC by default but can also be set to LINEAR,
  // COSINE, HERMITE

  if (key == '1')
    p.setMode(Path3D.LINEAR);
  else if (key == '2')
    p.setMode(Path3D.COSINE);
  else if (key == '3')
    p.setMode(Path3D.CUBIC);
  else if (key == '4')
    p.setMode(Path3D.HERMITE);
}
