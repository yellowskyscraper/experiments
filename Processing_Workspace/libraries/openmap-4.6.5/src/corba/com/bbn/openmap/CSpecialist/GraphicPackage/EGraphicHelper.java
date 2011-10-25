package com.bbn.openmap.CSpecialist.GraphicPackage;


/**
* com/bbn/openmap/CSpecialist/GraphicPackage/EGraphicHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.1"
* from com/bbn/openmap/layer/specialist/Specialist.idl
* Wednesday, March 4, 2009 5:10:37 PM EST
*/

abstract public class EGraphicHelper
{
  private static String  _id = "IDL:CSpecialist/Graphic/EGraphic:1.0";

  public static void insert (org.omg.CORBA.Any a, com.bbn.openmap.CSpecialist.GraphicPackage.EGraphic that)
  {
    org.omg.CORBA.portable.OutputStream out = a.create_output_stream ();
    a.type (type ());
    write (out, that);
    a.read_value (out.create_input_stream (), type ());
  }

  public static com.bbn.openmap.CSpecialist.GraphicPackage.EGraphic extract (org.omg.CORBA.Any a)
  {
    return read (a.create_input_stream ());
  }

  private static org.omg.CORBA.TypeCode __typeCode = null;
  private static boolean __active = false;
  synchronized public static org.omg.CORBA.TypeCode type ()
  {
    if (__typeCode == null)
    {
      synchronized (org.omg.CORBA.TypeCode.class)
      {
        if (__typeCode == null)
        {
          if (__active)
          {
            return org.omg.CORBA.ORB.init().create_recursive_tc ( _id );
          }
          __active = true;
          org.omg.CORBA.StructMember[] _members0 = new org.omg.CORBA.StructMember [12];
          org.omg.CORBA.TypeCode _tcOf_members0 = null;
          _tcOf_members0 = com.bbn.openmap.CSpecialist.GraphicHelper.type ();
          _members0[0] = new org.omg.CORBA.StructMember (
            "graph",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.ECompHelper.type ();
          _members0[1] = new org.omg.CORBA.StructMember (
            "obj",
            _tcOf_members0,
            null);
          _tcOf_members0 = org.omg.CORBA.ORB.init ().create_string_tc (0);
          _members0[2] = new org.omg.CORBA.StructMember (
            "gID",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.GraphicPackage.LineTypeHelper.type ();
          _members0[3] = new org.omg.CORBA.StructMember (
            "lType",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.GraphicPackage.GraphicTypeHelper.type ();
          _members0[4] = new org.omg.CORBA.StructMember (
            "gType",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.GraphicPackage.RenderTypeHelper.type ();
          _members0[5] = new org.omg.CORBA.StructMember (
            "rType",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.CColorPackage.EColorHelper.type ();
          _members0[6] = new org.omg.CORBA.StructMember (
            "color",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.CColorPackage.EColorHelper.type ();
          _members0[7] = new org.omg.CORBA.StructMember (
            "fillColor",
            _tcOf_members0,
            null);
          _tcOf_members0 = org.omg.CORBA.ORB.init ().get_primitive_tc (org.omg.CORBA.TCKind.tk_ushort);
          _members0[8] = new org.omg.CORBA.StructMember (
            "lineWidth",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.CStipplePackage.EStippleHelper.type ();
          _members0[9] = new org.omg.CORBA.StructMember (
            "stipple",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.CStipplePackage.EStippleHelper.type ();
          _members0[10] = new org.omg.CORBA.StructMember (
            "fillStipple",
            _tcOf_members0,
            null);
          _tcOf_members0 = com.bbn.openmap.CSpecialist.GraphicPackage.DeclutterTypeHelper.type ();
          _members0[11] = new org.omg.CORBA.StructMember (
            "dcType",
            _tcOf_members0,
            null);
          __typeCode = org.omg.CORBA.ORB.init ().create_struct_tc (com.bbn.openmap.CSpecialist.GraphicPackage.EGraphicHelper.id (), "EGraphic", _members0);
          __active = false;
        }
      }
    }
    return __typeCode;
  }

  public static String id ()
  {
    return _id;
  }

  public static com.bbn.openmap.CSpecialist.GraphicPackage.EGraphic read (org.omg.CORBA.portable.InputStream istream)
  {
    com.bbn.openmap.CSpecialist.GraphicPackage.EGraphic value = new com.bbn.openmap.CSpecialist.GraphicPackage.EGraphic ();
    value.graph = com.bbn.openmap.CSpecialist.GraphicHelper.read (istream);
    value.obj = com.bbn.openmap.CSpecialist.ECompHelper.read (istream);
    value.gID = istream.read_string ();
    value.lType = com.bbn.openmap.CSpecialist.GraphicPackage.LineTypeHelper.read (istream);
    value.gType = com.bbn.openmap.CSpecialist.GraphicPackage.GraphicTypeHelper.read (istream);
    value.rType = com.bbn.openmap.CSpecialist.GraphicPackage.RenderTypeHelper.read (istream);
    value.color = com.bbn.openmap.CSpecialist.CColorPackage.EColorHelper.read (istream);
    value.fillColor = com.bbn.openmap.CSpecialist.CColorPackage.EColorHelper.read (istream);
    value.lineWidth = istream.read_ushort ();
    value.stipple = com.bbn.openmap.CSpecialist.CStipplePackage.EStippleHelper.read (istream);
    value.fillStipple = com.bbn.openmap.CSpecialist.CStipplePackage.EStippleHelper.read (istream);
    value.dcType = com.bbn.openmap.CSpecialist.GraphicPackage.DeclutterTypeHelper.read (istream);
    return value;
  }

  public static void write (org.omg.CORBA.portable.OutputStream ostream, com.bbn.openmap.CSpecialist.GraphicPackage.EGraphic value)
  {
    com.bbn.openmap.CSpecialist.GraphicHelper.write (ostream, value.graph);
    com.bbn.openmap.CSpecialist.ECompHelper.write (ostream, value.obj);
    ostream.write_string (value.gID);
    com.bbn.openmap.CSpecialist.GraphicPackage.LineTypeHelper.write (ostream, value.lType);
    com.bbn.openmap.CSpecialist.GraphicPackage.GraphicTypeHelper.write (ostream, value.gType);
    com.bbn.openmap.CSpecialist.GraphicPackage.RenderTypeHelper.write (ostream, value.rType);
    com.bbn.openmap.CSpecialist.CColorPackage.EColorHelper.write (ostream, value.color);
    com.bbn.openmap.CSpecialist.CColorPackage.EColorHelper.write (ostream, value.fillColor);
    ostream.write_ushort (value.lineWidth);
    com.bbn.openmap.CSpecialist.CStipplePackage.EStippleHelper.write (ostream, value.stipple);
    com.bbn.openmap.CSpecialist.CStipplePackage.EStippleHelper.write (ostream, value.fillStipple);
    com.bbn.openmap.CSpecialist.GraphicPackage.DeclutterTypeHelper.write (ostream, value.dcType);
  }

}