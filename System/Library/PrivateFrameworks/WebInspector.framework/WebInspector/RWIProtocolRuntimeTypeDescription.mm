@interface RWIProtocolRuntimeTypeDescription
- (BOOL)isTruncated;
- (BOOL)isValid;
- (NSArray)structures;
- (NSString)leastCommonAncestor;
- (RWIProtocolRuntimeTypeDescription)initWithIsValid:(BOOL)valid;
- (RWIProtocolRuntimeTypeSet)typeSet;
- (void)setIsTruncated:(BOOL)truncated;
- (void)setIsValid:(BOOL)valid;
- (void)setLeastCommonAncestor:(id)ancestor;
- (void)setStructures:(id)structures;
- (void)setTypeSet:(id)set;
@end

@implementation RWIProtocolRuntimeTypeDescription

- (RWIProtocolRuntimeTypeDescription)initWithIsValid:(BOOL)valid
{
  validCopy = valid;
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeTypeDescription;
  v4 = [(RWIProtocolJSONObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(RWIProtocolRuntimeTypeDescription *)v4 setIsValid:validCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setIsValid:(BOOL)valid
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v3 setBool:valid forKey:@"isValid"];
}

- (BOOL)isValid
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isValid"];
}

- (void)setLeastCommonAncestor:(id)ancestor
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v3 setString:ancestor forKey:@"leastCommonAncestor"];
}

- (NSString)leastCommonAncestor
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeTypeDescription;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"leastCommonAncestor"];

  return v2;
}

- (void)setTypeSet:(id)set
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v3 setObject:set forKey:@"typeSet"];
}

- (RWIProtocolRuntimeTypeSet)typeSet
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeTypeDescription;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"typeSet"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeTypeSet alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeTypeDescription;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"typeSet"];
    objc_msgSend_toJSONObject(v5);
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setStructures:(id)structures
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = structures;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", v10, v7}];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  Inspector::toJSONObjectArray(obj, &v15);
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"structures"];
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }
}

- (NSArray)structures
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"structures"];
  v2 = Inspector::toObjCArray<RWIProtocolRuntimeStructureDescription>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setIsTruncated:(BOOL)truncated
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v3 setBool:truncated forKey:@"isTruncated"];
}

- (BOOL)isTruncated
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isTruncated"];
}

@end