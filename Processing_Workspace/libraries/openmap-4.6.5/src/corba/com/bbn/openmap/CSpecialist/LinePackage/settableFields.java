package com.bbn.openmap.CSpecialist.LinePackage;


/**
* com/bbn/openmap/CSpecialist/LinePackage/settableFields.java .
* Generated by the IDL-to-Java compiler (portable), version "3.1"
* from com/bbn/openmap/layer/specialist/Specialist.idl
* Wednesday, March 4, 2009 5:10:38 PM EST
*/

public class settableFields implements org.omg.CORBA.portable.IDLEntity
{
  private        int __value;
  private static int __size = 4;
  private static com.bbn.openmap.CSpecialist.LinePackage.settableFields[] __array = new com.bbn.openmap.CSpecialist.LinePackage.settableFields [__size];

  public static final int _LF_p1 = 0;
  public static final com.bbn.openmap.CSpecialist.LinePackage.settableFields LF_p1 = new com.bbn.openmap.CSpecialist.LinePackage.settableFields(_LF_p1);
  public static final int _LF_p2 = 1;
  public static final com.bbn.openmap.CSpecialist.LinePackage.settableFields LF_p2 = new com.bbn.openmap.CSpecialist.LinePackage.settableFields(_LF_p2);
  public static final int _LF_ll1 = 2;
  public static final com.bbn.openmap.CSpecialist.LinePackage.settableFields LF_ll1 = new com.bbn.openmap.CSpecialist.LinePackage.settableFields(_LF_ll1);
  public static final int _LF_ll2 = 3;
  public static final com.bbn.openmap.CSpecialist.LinePackage.settableFields LF_ll2 = new com.bbn.openmap.CSpecialist.LinePackage.settableFields(_LF_ll2);

  public int value ()
  {
    return __value;
  }

  public static com.bbn.openmap.CSpecialist.LinePackage.settableFields from_int (int value)
  {
    if (value >= 0 && value < __size)
      return __array[value];
    else
      throw new org.omg.CORBA.BAD_PARAM ();
  }

  protected settableFields (int value)
  {
    __value = value;
    __array[__value] = this;
  }
} // class settableFields