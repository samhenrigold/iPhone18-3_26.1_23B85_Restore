@interface NSObject(NTKIntrospection)
- (id)ntk_listOfDynamicProperties;
- (id)ntk_listOfProperties;
@end

@implementation NSObject(NTKIntrospection)

- (id)ntk_listOfProperties
{
  outCount = 0;
  v1 = objc_opt_class();
  v2 = class_copyPropertyList(v1, &outCount);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v5 = v2[i];
      Name = property_getName(v5);
      if (Name)
      {
        v7 = Name;
        v12 = 0;
        v8 = getObjectType(v5, &v12);
        v9 = objc_alloc_init(NTKObjectPropertyInfo);
        v10 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        [(NTKObjectPropertyInfo *)v9 setName:v10];

        if (v8)
        {
          [(NTKObjectPropertyInfo *)v9 setTypeString:v8];
        }

        [(NTKObjectPropertyInfo *)v9 setIsDynamic:v12];
        [v3 addObject:v9];
      }
    }
  }

  free(v2);

  return v3;
}

- (id)ntk_listOfDynamicProperties
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  ntk_listOfProperties = [self ntk_listOfProperties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__NSObject_NTKIntrospection__ntk_listOfDynamicProperties__block_invoke;
  v6[3] = &unk_278786950;
  v4 = v2;
  v7 = v4;
  [ntk_listOfProperties enumerateObjectsUsingBlock:v6];

  return v4;
}

@end