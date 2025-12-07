@interface TMLTypeRegistry
+ (id)classNameForType:(unint64_t)type;
+ (id)encodedTypeForType:(unint64_t)type;
+ (id)typeNameForType:(unint64_t)type;
+ (unint64_t)typeForEncodedType:(id)type;
+ (unint64_t)typeForTypeName:(id)name;
@end

@implementation TMLTypeRegistry

+ (unint64_t)typeForTypeName:(id)name
{
  nameCopy = name;
  if (qword_2806D9388 != -1)
  {
    sub_26F2017A8();
  }

  if (![nameCopy length])
  {
    goto LABEL_8;
  }

  v4 = [nameCopy characterAtIndex:0];
  if (v4 > 0x7F)
  {
    if (__maskrune(v4, 0x8000uLL))
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = [qword_2806D9380 objectForKeyedSubscript:nameCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    goto LABEL_9;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x8000) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  unsignedIntegerValue = 16;
LABEL_9:

  return unsignedIntegerValue;
}

+ (id)typeNameForType:(unint64_t)type
{
  if (type - 1 > 0x1D)
  {
    return @"unknown";
  }

  else
  {
    return off_279DC99B0[type - 1];
  }
}

+ (id)classNameForType:(unint64_t)type
{
  if (type == 18)
  {
    return @"NSAttributedString";
  }

  else
  {
    return &stru_287F301C0;
  }
}

+ (unint64_t)typeForEncodedType:(id)type
{
  typeCopy = type;
  if ([typeCopy hasPrefix:@"r"])
  {
    v4 = [typeCopy substringFromIndex:1];

    typeCopy = v4;
  }

  if (qword_2806D9398 != -1)
  {
    sub_26F2017BC();
  }

  v5 = [qword_2806D9390 objectForKeyedSubscript:typeCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    if ([typeCopy rangeOfString:@"directionalEdgeInsets" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([typeCopy hasPrefix:@"@"])
      {
        unsignedIntegerValue = 16;
      }

      else if ([typeCopy hasPrefix:@"{"])
      {
        unsignedIntegerValue = 27;
      }

      else if ([typeCopy rangeOfString:@"^"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        unsignedIntegerValue = 26;
      }
    }

    else
    {
      unsignedIntegerValue = 30;
    }
  }

  return unsignedIntegerValue;
}

+ (id)encodedTypeForType:(unint64_t)type
{
  if (qword_2806D93A8 != -1)
  {
    sub_26F2017D0();
  }

  v4 = qword_2806D93A0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

@end