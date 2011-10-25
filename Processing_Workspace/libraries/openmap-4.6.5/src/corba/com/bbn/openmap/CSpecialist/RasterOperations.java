package com.bbn.openmap.CSpecialist;


/**
* com/bbn/openmap/CSpecialist/RasterOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.1"
* from com/bbn/openmap/layer/specialist/Specialist.idl
* Wednesday, March 4, 2009 5:10:38 PM EST
*/

public interface RasterOperations  extends com.bbn.openmap.CSpecialist.GraphicOperations
{
  com.bbn.openmap.CSpecialist.XYPoint p1 ();
  void p1 (com.bbn.openmap.CSpecialist.XYPoint newP1);
  com.bbn.openmap.CSpecialist.LLPoint ll1 ();
  void ll1 (com.bbn.openmap.CSpecialist.LLPoint newLl1);
  byte[] pixels ();
  void pixels (byte[] newPixels);
  short width ();
  void width (short newWidth);
  short height ();
  void height (short newHeight);
  short x_hot ();
  void x_hot (short newX_hot);
  short y_hot ();
  void y_hot (short newY_hot);
  short colorsTotal ();
  void colorsTotal (short newColorsTotal);
  com.bbn.openmap.CSpecialist.CTEntry[] ct ();
  void ct (com.bbn.openmap.CSpecialist.CTEntry[] newCt);
  short transparent ();
  void transparent (short newTransparent);
  com.bbn.openmap.CSpecialist.RasterPackage.ERaster fill ();
} // interface RasterOperations