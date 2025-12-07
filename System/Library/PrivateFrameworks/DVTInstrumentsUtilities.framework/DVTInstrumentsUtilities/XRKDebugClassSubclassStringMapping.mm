@interface XRKDebugClassSubclassStringMapping
+ (id)kDebugClassNameForClass:(unsigned __int8)class;
+ (id)kDebugSubclassNameForClass:(unsigned __int8)class subclass:(unsigned __int8)subclass;
@end

@implementation XRKDebugClassSubclassStringMapping

+ (id)kDebugClassNameForClass:(unsigned __int8)class
{
  classCopy = class;
  if (qword_27EE867C8 != -1)
  {
    sub_2480B37D8();
  }

  v6 = qword_27EE867C0;

  return objc_msgSend_objectForIntegerKey_(v6, a2, classCopy, v3, v4);
}

+ (id)kDebugSubclassNameForClass:(unsigned __int8)class subclass:(unsigned __int8)subclass
{
  subclassCopy = subclass;
  classCopy = class;
  if (qword_27EE867D8 != -1)
  {
    sub_2480B37EC();
  }

  v7 = objc_msgSend_objectForIntegerKey_(qword_27EE867D0, a2, classCopy, subclass, v4);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_objectForIntegerKey_(v7, v8, subclassCopy, v9, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end