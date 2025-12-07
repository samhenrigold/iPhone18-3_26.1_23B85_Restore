@interface RWIProtocolCSSStyleId
- (NSString)styleSheetId;
- (RWIProtocolCSSStyleId)initWithStyleSheetId:(id)id ordinal:(int)ordinal;
- (int)ordinal;
- (void)setOrdinal:(int)ordinal;
- (void)setStyleSheetId:(id)id;
@end

@implementation RWIProtocolCSSStyleId

- (RWIProtocolCSSStyleId)initWithStyleSheetId:(id)id ordinal:(int)ordinal
{
  v4 = *&ordinal;
  idCopy = id;
  v10.receiver = self;
  v10.super_class = RWIProtocolCSSStyleId;
  v7 = [(RWIProtocolJSONObject *)&v10 init];
  if (v7)
  {
    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"styleSheetId"}];
    }

    [(RWIProtocolCSSStyleId *)v7 setStyleSheetId:idCopy];
    [(RWIProtocolCSSStyleId *)v7 setOrdinal:v4];
    v8 = v7;
  }

  return v7;
}

- (void)setStyleSheetId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleId;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"styleSheetId"];
}

- (NSString)styleSheetId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleId;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"styleSheetId"];

  return v2;
}

- (void)setOrdinal:(int)ordinal
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleId;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&ordinal forKey:@"ordinal"];
}

- (int)ordinal
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleId;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"ordinal"];
}

@end