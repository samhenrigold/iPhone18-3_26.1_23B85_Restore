@interface RWIProtocolCSSSelectorList
- (NSArray)selectors;
- (NSString)text;
- (RWIProtocolCSSSelectorList)initWithSelectors:(id)selectors text:(id)text;
- (RWIProtocolCSSSourceRange)range;
- (void)setRange:(id)range;
- (void)setSelectors:(id)selectors;
- (void)setText:(id)text;
@end

@implementation RWIProtocolCSSSelectorList

- (RWIProtocolCSSSelectorList)initWithSelectors:(id)selectors text:(id)text
{
  v26 = *MEMORY[0x277D85DE8];
  selectorsCopy = selectors;
  textCopy = text;
  v24.receiver = self;
  v24.super_class = RWIProtocolCSSSelectorList;
  v19 = [(RWIProtocolJSONObject *)&v24 init];
  if (v19)
  {
    if (!selectorsCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"selectors"}];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = selectorsCopy;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = *v21;
      v9 = *MEMORY[0x277CBE660];
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = MEMORY[0x277CBEAD8];
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            [v12 raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", v14, v11}];
          }

          ++v10;
        }

        while (v7 != v10);
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }

    if (!textCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"text"}];
    }

    [(RWIProtocolCSSSelectorList *)v19 setSelectors:v6];
    [(RWIProtocolCSSSelectorList *)v19 setText:textCopy];
    v15 = v19;
  }

  return v19;
}

- (void)setSelectors:(id)selectors
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = selectors;
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
  v14.super_class = RWIProtocolCSSSelectorList;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"selectors"];
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

- (NSArray)selectors
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSSelectorList;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"selectors"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSSelector>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSelectorList;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"text"];
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSSelectorList;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"text"];

  return v2;
}

- (void)setRange:(id)range
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSelectorList;
  [(RWIProtocolJSONObject *)&v3 setObject:range forKey:@"range"];
}

- (RWIProtocolCSSSourceRange)range
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSSelectorList;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"range"];
  if (v3)
  {
    v4 = [RWIProtocolCSSSourceRange alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSSelectorList;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"range"];
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

@end