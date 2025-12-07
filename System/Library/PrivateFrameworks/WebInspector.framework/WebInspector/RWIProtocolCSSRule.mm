@interface RWIProtocolCSSRule
- (BOOL)isImplicitlyNested;
- (NSArray)groupings;
- (NSString)sourceURL;
- (RWIProtocolCSSRule)initWithSelectorList:(id)list sourceLine:(int)line origin:(int64_t)origin style:(id)style;
- (RWIProtocolCSSRuleId)ruleId;
- (RWIProtocolCSSSelectorList)selectorList;
- (RWIProtocolCSSStyle)style;
- (int)sourceLine;
- (int64_t)origin;
- (void)setGroupings:(id)groupings;
- (void)setIsImplicitlyNested:(BOOL)nested;
- (void)setOrigin:(int64_t)origin;
- (void)setRuleId:(id)id;
- (void)setSelectorList:(id)list;
- (void)setSourceLine:(int)line;
- (void)setSourceURL:(id)l;
- (void)setStyle:(id)style;
@end

@implementation RWIProtocolCSSRule

- (RWIProtocolCSSRule)initWithSelectorList:(id)list sourceLine:(int)line origin:(int64_t)origin style:(id)style
{
  v8 = *&line;
  listCopy = list;
  styleCopy = style;
  v15.receiver = self;
  v15.super_class = RWIProtocolCSSRule;
  v12 = [(RWIProtocolJSONObject *)&v15 init];
  if (v12)
  {
    if (!listCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"selectorList"}];
    }

    if (!styleCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"style"}];
    }

    [(RWIProtocolCSSRule *)v12 setSelectorList:listCopy];
    [(RWIProtocolCSSRule *)v12 setSourceLine:v8];
    [(RWIProtocolCSSRule *)v12 setOrigin:origin];
    [(RWIProtocolCSSRule *)v12 setStyle:styleCopy];
    v13 = v12;
  }

  return v12;
}

- (void)setRuleId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setObject:id forKey:@"ruleId"];
}

- (RWIProtocolCSSRuleId)ruleId
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSRule;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"ruleId"];
  if (v3)
  {
    v4 = [RWIProtocolCSSRuleId alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSRule;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"ruleId"];
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

- (void)setSelectorList:(id)list
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setObject:list forKey:@"selectorList"];
}

- (RWIProtocolCSSSelectorList)selectorList
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSRule;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"selectorList"];
  if (v3)
  {
    v4 = [RWIProtocolCSSSelectorList alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSRule;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"selectorList"];
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

- (void)setSourceURL:(id)l
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setString:l forKey:@"sourceURL"];
}

- (NSString)sourceURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSRule;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"sourceURL"];

  return v2;
}

- (void)setSourceLine:(int)line
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&line forKey:@"sourceLine"];
}

- (int)sourceLine
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"sourceLine"];
}

- (void)setOrigin:(int64_t)origin
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v5.receiver = self;
  v5.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"origin"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)origin
{
  v8.receiver = self;
  v8.super_class = RWIProtocolCSSRule;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"origin"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolCSSStyleSheetOrigin>(WTF::String const&)::mappings;
  v6 = 96;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setStyle:(id)style
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setObject:style forKey:@"style"];
}

- (RWIProtocolCSSStyle)style
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSRule;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"style"];
  if (v3)
  {
    v4 = [RWIProtocolCSSStyle alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSRule;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"style"];
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

- (void)setGroupings:(id)groupings
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = groupings;
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
  v14.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"groupings"];
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

- (NSArray)groupings
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"groupings"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSGrouping>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setIsImplicitlyNested:(BOOL)nested
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setBool:nested forKey:@"isImplicitlyNested"];
}

- (BOOL)isImplicitlyNested
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isImplicitlyNested"];
}

@end