package com.bbn.openmap.CSpecialist;


/**
* com/bbn/openmap/CSpecialist/GraphicOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.1"
* from com/bbn/openmap/layer/specialist/Specialist.idl
* Wednesday, March 4, 2009 5:10:37 PM EST
*/

public interface GraphicOperations 
{

  //  original spot
  String gID ();
  com.bbn.openmap.CSpecialist.GraphicPackage.GraphicType gType ();
  com.bbn.openmap.CSpecialist.Comp obj ();
  void obj (com.bbn.openmap.CSpecialist.Comp newObj);
  com.bbn.openmap.CSpecialist.GraphicPackage.LineType lType ();
  void lType (com.bbn.openmap.CSpecialist.GraphicPackage.LineType newLType);
  com.bbn.openmap.CSpecialist.GraphicPackage.RenderType rType ();
  void rType (com.bbn.openmap.CSpecialist.GraphicPackage.RenderType newRType);
  com.bbn.openmap.CSpecialist.CColor color ();
  void color (com.bbn.openmap.CSpecialist.CColor newColor);
  com.bbn.openmap.CSpecialist.CColor fillColor ();
  void fillColor (com.bbn.openmap.CSpecialist.CColor newFillColor);
  short lineWidth ();
  void lineWidth (short newLineWidth);
  com.bbn.openmap.CSpecialist.CStipple stipple ();
  void stipple (com.bbn.openmap.CSpecialist.CStipple newStipple);
  com.bbn.openmap.CSpecialist.CStipple fillStipple ();
  void fillStipple (com.bbn.openmap.CSpecialist.CStipple newFillStipple);
  com.bbn.openmap.CSpecialist.GraphicPackage.DeclutterType dcType ();
  void dcType (com.bbn.openmap.CSpecialist.GraphicPackage.DeclutterType newDcType);
  com.bbn.openmap.CSpecialist.GraphicPackage.EGraphic gfill ();
} // interface GraphicOperations