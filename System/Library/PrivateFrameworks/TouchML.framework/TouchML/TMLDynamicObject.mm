@interface TMLDynamicObject
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (TMLDynamicObject)init;
@end

@implementation TMLDynamicObject

- (TMLDynamicObject)init
{
  v6.receiver = self;
  v6.super_class = TMLDynamicObject;
  v2 = [(TMLDynamicObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    properties = v2->_properties;
    v2->_properties = v3;
  }

  return v2;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = NSStringFromSelector(method);
  v6 = objc_opt_class();
  if ([v5 length] >= 4 && objc_msgSend(v5, "hasPrefix:", @"set"))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = 1;
    v9 = [v5 substringWithRange:{3, 1}];
    lowercaseString = [v9 lowercaseString];
    v11 = [v5 substringWithRange:{4, objc_msgSend(v5, "length") - 5}];
    v12 = [v7 stringWithFormat:@"%@%@", lowercaseString, v11];

    v5 = v12;
  }

  else
  {
    v8 = 0;
  }

  v13 = [self dynamicPropertyType:v5];
  if (v13)
  {
    if (v8)
    {
      v14 = @"v@:%@";
    }

    else
    {
      v14 = @"%@@:";
    }

    if (v8)
    {
      v15 = sub_26F1FE720;
    }

    else
    {
      v15 = sub_26F1FE828;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v13];
    if ([v13 hasPrefix:@"{CGPoint="])
    {
      v17 = v8 == 0;
      v18 = sub_26F1FE9BC;
      v19 = sub_26F1FE89C;
    }

    else if ([v13 hasPrefix:@"{CGSize="])
    {
      v17 = v8 == 0;
      v18 = sub_26F1FEB74;
      v19 = sub_26F1FEA54;
    }

    else if ([v13 hasPrefix:@"{CGRect="])
    {
      v17 = v8 == 0;
      v18 = sub_26F1FED44;
      v19 = sub_26F1FEC0C;
    }

    else
    {
      if (![v13 isEqualToString:@"f"])
      {
        v21 = [v13 isEqualToString:@"I"];
        v22 = sub_26F1FF0AC;
        if (v8)
        {
          v22 = sub_26F1FEF94;
        }

        if (v21)
        {
          v15 = v22;
        }

        goto LABEL_23;
      }

      v17 = v8 == 0;
      v18 = sub_26F1FEF10;
      v19 = sub_26F1FEDF8;
    }

    if (v17)
    {
      v15 = v18;
    }

    else
    {
      v15 = v19;
    }

LABEL_23:
    class_addMethod(v6, method, v15, [v16 UTF8String]);
  }

  return v13 != 0;
}

@end