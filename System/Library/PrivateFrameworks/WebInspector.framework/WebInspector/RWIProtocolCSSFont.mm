@interface RWIProtocolCSSFont
- (BOOL)synthesizedBold;
- (BOOL)synthesizedOblique;
- (NSArray)variationAxes;
- (NSString)displayName;
- (RWIProtocolCSSFont)initWithDisplayName:(id)name variationAxes:(id)axes;
- (void)setDisplayName:(id)name;
- (void)setSynthesizedBold:(BOOL)bold;
- (void)setSynthesizedOblique:(BOOL)oblique;
- (void)setVariationAxes:(id)axes;
@end

@implementation RWIProtocolCSSFont

- (RWIProtocolCSSFont)initWithDisplayName:(id)name variationAxes:(id)axes
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  axesCopy = axes;
  v25.receiver = self;
  v25.super_class = RWIProtocolCSSFont;
  v6 = [(RWIProtocolJSONObject *)&v25 init];
  if (v6)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"displayName"}];
    }

    if (!axesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"variationAxes"}];
    }

    v18 = v6;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = axesCopy;
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
    [(RWIProtocolCSSFont *)v18 setDisplayName:nameCopy];
    [(RWIProtocolCSSFont *)v18 setVariationAxes:v7];
    v16 = v18;
  }

  return v6;
}

- (void)setDisplayName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFont;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"displayName"];
}

- (NSString)displayName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSFont;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"displayName"];

  return v2;
}

- (void)setVariationAxes:(id)axes
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = axes;
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
  v14.super_class = RWIProtocolCSSFont;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"variationAxes"];
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

- (NSArray)variationAxes
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSFont;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"variationAxes"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSFontVariationAxis>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setSynthesizedBold:(BOOL)bold
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFont;
  [(RWIProtocolJSONObject *)&v3 setBool:bold forKey:@"synthesizedBold"];
}

- (BOOL)synthesizedBold
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFont;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"synthesizedBold"];
}

- (void)setSynthesizedOblique:(BOOL)oblique
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFont;
  [(RWIProtocolJSONObject *)&v3 setBool:oblique forKey:@"synthesizedOblique"];
}

- (BOOL)synthesizedOblique
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFont;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"synthesizedOblique"];
}

@end