@interface NSObject(TVMLKitAdditions)
+ (id)tv_allowedLiteralJSONObjects;
- (BOOL)tv_superOfClass:()TVMLKitAdditions respondsToSelector:;
- (id)tv_JSCompatibleValue;
- (id)tv_toPropertiesJSDictionary;
- (void)tv_setAssociatedIKViewElement:()TVMLKitAdditions;
@end

@implementation NSObject(TVMLKitAdditions)

- (BOOL)tv_superOfClass:()TVMLKitAdditions respondsToSelector:
{
    ;
  }

  Superclass = class_getSuperclass(i);
  return class_getInstanceMethod(Superclass, a4) != 0;
}

- (void)tv_setAssociatedIKViewElement:()TVMLKitAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  objc_setAssociatedObject(self, "_TVObjectKeyViewElement", a3, 0x301);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a3 && (isKindOfClass & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [self subviews];
    v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v11 + 1) + 8 * v10++) tv_setAssociatedIKViewElement:0];
        }

        while (v8 != v10);
        v8 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

+ (id)tv_allowedLiteralJSONObjects
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];

  return v2;
}

- (id)tv_JSCompatibleValue
{
  v32 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy2 = self;
    v5 = [selfCopy2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(selfCopy2);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          v10 = [selfCopy2 objectForKey:v9];
          tv_JSCompatibleValue = [v10 tv_JSCompatibleValue];

          tv_JSCompatibleValue2 = [v9 tv_JSCompatibleValue];
          if (tv_JSCompatibleValue2)
          {
            v13 = tv_JSCompatibleValue == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            [selfCopy3 setObject:tv_JSCompatibleValue forKey:tv_JSCompatibleValue2];
          }
        }

        v6 = [selfCopy2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }

LABEL_25:

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    selfCopy2 = self;
    v14 = [selfCopy2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(selfCopy2);
          }

          tv_JSCompatibleValue3 = [*(*(&v22 + 1) + 8 * j) tv_JSCompatibleValue];
          if (tv_JSCompatibleValue3)
          {
            [selfCopy3 addObject:tv_JSCompatibleValue3];
          }
        }

        v15 = [selfCopy2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    goto LABEL_25;
  }

  tv_allowedLiteralJSONObjects = [MEMORY[0x277D82BB8] tv_allowedLiteralJSONObjects];
  if ([tv_allowedLiteralJSONObjects containsObject:objc_opt_class()])
  {

LABEL_32:
    selfCopy3 = self;
    goto LABEL_26;
  }

  v21 = [self conformsToProtocol:&unk_287EADA10];

  if (v21)
  {
    goto LABEL_32;
  }

  selfCopy3 = 0;
LABEL_26:

  return selfCopy3;
}

- (id)tv_toPropertiesJSDictionary
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  outCount = 0;
  v3 = objc_opt_class();
  v4 = class_copyPropertyList(v3, &outCount);
  if (outCount)
  {
    v5 = v4;
    for (i = 0; i < outCount; ++i)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithCString:property_getName(v5[i]) encoding:4];
      v8 = [self valueForKey:v7];
      tv_JSCompatibleValue = [v8 tv_JSCompatibleValue];

      if (tv_JSCompatibleValue)
      {
        [v2 setObject:tv_JSCompatibleValue forKey:v7];
      }
    }
  }

  return v2;
}

@end