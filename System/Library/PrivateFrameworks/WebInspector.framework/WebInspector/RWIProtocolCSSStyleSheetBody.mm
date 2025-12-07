@interface RWIProtocolCSSStyleSheetBody
- (NSArray)rules;
- (NSString)styleSheetId;
- (NSString)text;
- (RWIProtocolCSSStyleSheetBody)initWithStyleSheetId:(id)id rules:(id)rules;
- (void)setRules:(id)rules;
- (void)setStyleSheetId:(id)id;
- (void)setText:(id)text;
@end

@implementation RWIProtocolCSSStyleSheetBody

- (RWIProtocolCSSStyleSheetBody)initWithStyleSheetId:(id)id rules:(id)rules
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  rulesCopy = rules;
  v25.receiver = self;
  v25.super_class = RWIProtocolCSSStyleSheetBody;
  v6 = [(RWIProtocolJSONObject *)&v25 init];
  if (v6)
  {
    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"styleSheetId"}];
    }

    if (!rulesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"rules"}];
    }

    v18 = v6;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = rulesCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = *v22;
      v10 = *MEMORY[0x277CBE660];
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = MEMORY[0x277CBEAD8];
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            [v13 raise:v10 format:{@"array should contain objects of type '%@', found bad value: %@", v15, v12}];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    v6 = v18;
    [(RWIProtocolCSSStyleSheetBody *)v18 setStyleSheetId:idCopy];
    [(RWIProtocolCSSStyleSheetBody *)v18 setRules:v7];
    v16 = v18;
  }

  return v6;
}

- (void)setStyleSheetId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"styleSheetId"];
}

- (NSString)styleSheetId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetBody;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"styleSheetId"];

  return v2;
}

- (void)setRules:(id)rules
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = rules;
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
  v14.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"rules"];
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

- (NSArray)rules
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"rules"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSRule>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"text"];
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetBody;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"text"];

  return v2;
}

@end