@interface TUIAttributeRegistry
+ (id)nameForAttribute:(unsigned __int16)attribute;
+ (unsigned)attributeWithName:(id)name;
+ (unsigned)lookupAttributeWithName:(id)name;
+ (unsigned)registerCustomAttributeWithName:(id)name;
@end

@implementation TUIAttributeRegistry

+ (unsigned)registerCustomAttributeWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    v6 = sub_83BE0(nameCopy);
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      if (qword_2E6310 != -1)
      {
        sub_19A034();
      }

      v10 = qword_2E6308;
      v14 = [v6 count];
      v11 = [NSNumber numberWithUnsignedShort:v14];
      [v6 setObject:v11 forKeyedSubscript:v5];

      v15 = &v14;
      v12 = sub_11CD4(v10, &v14, &std::piecewise_construct, &v15);
      objc_storeStrong(v12 + 3, name);
      integerValue = v14;
    }
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

+ (unsigned)attributeWithName:(id)name
{
  nameCopy = name;
  v5 = [self lookupAttributeWithName:nameCopy];
  if (v5 == 0xFFFF)
  {
    v7 = [NSException alloc];
    nameCopy = [NSString stringWithFormat:@"'%@' not defined/registered", nameCopy];
    v9 = [v7 initWithName:@"InvalidAttribute" reason:nameCopy userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  return v5;
}

+ (id)nameForAttribute:(unsigned __int16)attribute
{
  attributeCopy = attribute;
  if (qword_2E6310 != -1)
  {
    sub_19A034();
  }

  v3 = sub_11F88(qword_2E6308, &attributeCopy);
  if (!v3)
  {
    v6 = [NSException alloc];
    v7 = [NSNumber numberWithUnsignedShort:attributeCopy];
    v8 = [NSString stringWithFormat:@"'%@' not defined/registered", v7];
    v9 = [v6 initWithName:@"InvalidAttribute" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = v3[3];

  return v4;
}

+ (unsigned)lookupAttributeWithName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    v5 = sub_83BE0(nameCopy);
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = -1;
    }
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

@end