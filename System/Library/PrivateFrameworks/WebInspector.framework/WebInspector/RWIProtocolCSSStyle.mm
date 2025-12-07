@interface RWIProtocolCSSStyle
- (NSArray)cssProperties;
- (NSArray)shorthandEntries;
- (NSString)cssText;
- (NSString)height;
- (NSString)width;
- (RWIProtocolCSSSourceRange)range;
- (RWIProtocolCSSStyle)initWithCssProperties:(id)properties shorthandEntries:(id)entries;
- (RWIProtocolCSSStyleId)styleId;
- (void)setCssProperties:(id)properties;
- (void)setCssText:(id)text;
- (void)setHeight:(id)height;
- (void)setRange:(id)range;
- (void)setShorthandEntries:(id)entries;
- (void)setStyleId:(id)id;
- (void)setWidth:(id)width;
@end

@implementation RWIProtocolCSSStyle

- (RWIProtocolCSSStyle)initWithCssProperties:(id)properties shorthandEntries:(id)entries
{
  v41 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  entriesCopy = entries;
  v38.receiver = self;
  v38.super_class = RWIProtocolCSSStyle;
  v28 = [(RWIProtocolJSONObject *)&v38 init];
  if (v28)
  {
    v6 = MEMORY[0x277CBE660];
    if (!propertiesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"cssProperties"}];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = propertiesCopy;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v7)
    {
      v8 = *v35;
      v9 = *v6;
      do
      {
        v10 = 0;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
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
        v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    if (!entriesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*v6 format:{@"required property '%@' cannot be nil", @"shorthandEntries"}];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = entriesCopy;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v16)
    {
      v17 = *v31;
      v18 = *v6;
      do
      {
        v19 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * v19);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = MEMORY[0x277CBEAD8];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            [v21 raise:v18 format:{@"array should contain objects of type '%@', found bad value: %@", v23, v20}];
          }

          ++v19;
        }

        while (v16 != v19);
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v16);
    }

    [(RWIProtocolCSSStyle *)v28 setCssProperties:obj];
    [(RWIProtocolCSSStyle *)v28 setShorthandEntries:v15];
    v24 = v28;
  }

  return v28;
}

- (void)setStyleId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setObject:id forKey:@"styleId"];
}

- (RWIProtocolCSSStyleId)styleId
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSStyle;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"styleId"];
  if (v3)
  {
    v4 = [RWIProtocolCSSStyleId alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSStyle;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"styleId"];
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

- (void)setCssProperties:(id)properties
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = properties;
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
  v14.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"cssProperties"];
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

- (NSArray)cssProperties
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"cssProperties"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSProperty>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setShorthandEntries:(id)entries
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = entries;
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
  v14.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"shorthandEntries"];
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

- (NSArray)shorthandEntries
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"shorthandEntries"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSShorthandEntry>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setCssText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"cssText"];
}

- (NSString)cssText
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"cssText"];

  return v2;
}

- (void)setRange:(id)range
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setObject:range forKey:@"range"];
}

- (RWIProtocolCSSSourceRange)range
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSStyle;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"range"];
  if (v3)
  {
    v4 = [RWIProtocolCSSSourceRange alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSStyle;
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

- (void)setWidth:(id)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setString:width forKey:@"width"];
}

- (NSString)width
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"width"];

  return v2;
}

- (void)setHeight:(id)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setString:height forKey:@"height"];
}

- (NSString)height
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"height"];

  return v2;
}

@end