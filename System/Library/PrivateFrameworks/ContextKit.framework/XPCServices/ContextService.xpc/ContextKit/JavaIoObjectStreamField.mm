@interface JavaIoObjectStreamField
- (BOOL)isPrimitive;
- (BOOL)writeFieldWithJavaIoDataOutputStream:(id)stream;
- (NSString)description;
- (id)getType;
- (id)getTypeInternal;
- (id)getTypeString;
- (int)compareToWithId:(id)id;
- (uint64_t)defaultResolve;
- (unsigned)getTypeCode;
- (void)dealloc;
- (void)resolveWithJavaLangClassLoader:(id)loader;
@end

@implementation JavaIoObjectStreamField

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    objc_opt_class();
    [(JavaIoObjectStreamField *)self isPrimitive];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    JreThrowClassCastException();
  }

  isPrimitive = [(JavaIoObjectStreamField *)self isPrimitive];
  if (isPrimitive == [id isPrimitive])
  {
    getName = [(JavaIoObjectStreamField *)self getName];
    if (!getName)
    {
      JreThrowNullPointerException();
    }

    v8 = getName;
    getName2 = [id getName];

    return [v8 compareToWithId:getName2];
  }

  else if (isPrimitive)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (id)getTypeInternal
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  type = self->type_;
  if (isKindOfClass)
  {
    objc_opt_class();
    if (!type)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_8:
      JreThrowClassCastException();
    }

    type = [type get];
  }

  objc_opt_class();
  if (type && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  return type;
}

- (id)getType
{
  getTypeInternal = [(JavaIoObjectStreamField *)self getTypeInternal];
  v4 = getTypeInternal;
  if (!self->isDeserialized_)
  {
    return v4;
  }

  if (!getTypeInternal)
  {
    JreThrowNullPointerException();
  }

  isPrimitive = [getTypeInternal isPrimitive];
  if (isPrimitive)
  {
    return v4;
  }

  return NSObject_class_(isPrimitive, v6);
}

- (unsigned)getTypeCode
{
  getTypeInternal = [(JavaIoObjectStreamField *)self getTypeInternal];

  return sub_100285074(getTypeInternal);
}

- (id)getTypeString
{
  if ([(JavaIoObjectStreamField *)self isPrimitive])
  {
    return 0;
  }

  p_typeString = &self->typeString_;
  result = self->typeString_;
  if (!result)
  {
    getTypeInternal = [(JavaIoObjectStreamField *)self getTypeInternal];
    if (!getTypeInternal || (v6 = getTypeInternal, (v7 = [getTypeInternal getName]) == 0))
    {
      JreThrowNullPointerException();
    }

    v8 = [v7 replace:46 withChar:47];
    if (([v6 isArray] & 1) == 0)
    {
      v8 = JreStrcat("C$C", v9, v10, v11, v12, v13, v14, v15, 76);
    }

    JreStrongAssign(p_typeString, [(__CFString *)v8 intern]);
    return *p_typeString;
  }

  return result;
}

- (BOOL)isPrimitive
{
  getTypeInternal = [(JavaIoObjectStreamField *)self getTypeInternal];
  if (getTypeInternal)
  {

    LOBYTE(getTypeInternal) = [getTypeInternal isPrimitive];
  }

  return getTypeInternal;
}

- (BOOL)writeFieldWithJavaIoDataOutputStream:(id)stream
{
  getTypeInternal = [(JavaIoObjectStreamField *)self getTypeInternal];
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  v6 = getTypeInternal;
  [stream writeByteWithInt:sub_100285074(getTypeInternal)];
  [stream writeUTFWithNSString:self->name_];
  if (!v6)
  {
    return 0;
  }

  return [v6 isPrimitive];
}

- (NSString)description
{
  v3 = [-[JavaIoObjectStreamField getClass](self "getClass")];
  [(JavaIoObjectStreamField *)self getName];
  [(JavaIoObjectStreamField *)self getTypeInternal];
  return JreStrcat("$C$C@C", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)resolveWithJavaLangClassLoader:(id)loader
{
  p_typeString = &self->typeString_;
  typeString = self->typeString_;
  if (!typeString)
  {
    if ([(JavaIoObjectStreamField *)self isPrimitive])
    {
      v6 = NSString_valueOfChar_([(JavaIoObjectStreamField *)self getTypeCode]);
      JreStrongAssign(p_typeString, v6);
    }

    typeString = *p_typeString;
    if (!*p_typeString)
    {
      goto LABEL_15;
    }
  }

  if ([(NSString *)typeString length]== 1 && ([JavaIoObjectStreamField defaultResolve]_0(self) & 1) != 0)
  {
    return;
  }

  v7 = [(NSString *)*p_typeString replace:47 withChar:46];
  if (!v7)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v8 = v7;
  if ([v7 charAtWithInt:0] == 76)
  {
    v8 = [v8 substring:1 endIndex:{objc_msgSend(v8, "length") - 1}];
  }

  v9 = IOSClass_forName_initialize_classLoader_(v8);
  v10 = v9;
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaLangRefWeakReference *)v9 getClassLoader])
  {
    v10 = new_JavaLangRefWeakReference_initWithId_(v10);
  }

  JreStrongAssign(&self->type_, v10);
}

- (uint64_t)defaultResolve
{
  v2 = *(self + 32);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [v2 charAtWithInt:0];
  if (v3 > 72)
  {
    if (v3 > 82)
    {
      if (v3 == 83)
      {
        v5 = +[IOSClass shortClass];
        goto LABEL_21;
      }

      if (v3 == 90)
      {
        v5 = +[IOSClass BOOLeanClass];
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 == 73)
      {
        v5 = +[IOSClass intClass];
        goto LABEL_21;
      }

      if (v3 == 74)
      {
        v5 = +[IOSClass longClass];
        goto LABEL_21;
      }
    }

LABEL_23:
    v6 = NSObject_class_(v3, v4);
    v7 = 0;
    goto LABEL_22;
  }

  if (v3 > 67)
  {
    if (v3 == 68)
    {
      v5 = +[IOSClass doubleClass];
      goto LABEL_21;
    }

    if (v3 == 70)
    {
      v5 = +[IOSClass floatClass];
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v3 == 66)
  {
    v5 = +[IOSClass byteClass];
    goto LABEL_21;
  }

  if (v3 != 67)
  {
    goto LABEL_23;
  }

  v5 = +[IOSClass charClass];
LABEL_21:
  v6 = v5;
  v7 = 1;
LABEL_22:
  JreStrongAssign((self + 24), v6);
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoObjectStreamField;
  [(JavaIoObjectStreamField *)&v3 dealloc];
}

@end