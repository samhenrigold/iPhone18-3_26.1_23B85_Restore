@interface RWIProtocolCSSStyleSheetHeader
- (BOOL)disabled;
- (BOOL)isInline;
- (NSString)frameId;
- (NSString)sourceURL;
- (NSString)styleSheetId;
- (NSString)title;
- (RWIProtocolCSSStyleSheetHeader)initWithStyleSheetId:(id)id frameId:(id)frameId sourceURL:(id)l origin:(int64_t)origin title:(id)title disabled:(BOOL)disabled isInline:(BOOL)inline startLine:(double)self0 startColumn:(double)self1;
- (atomic_uint)origin;
- (double)startColumn;
- (double)startLine;
- (int64_t)origin;
- (void)setDisabled:(BOOL)disabled;
- (void)setFrameId:(id)id;
- (void)setIsInline:(BOOL)inline;
- (void)setOrigin:(int64_t)origin;
- (void)setSourceURL:(id)l;
- (void)setStartColumn:(double)column;
- (void)setStartLine:(double)line;
- (void)setStyleSheetId:(id)id;
- (void)setTitle:(id)title;
@end

@implementation RWIProtocolCSSStyleSheetHeader

- (RWIProtocolCSSStyleSheetHeader)initWithStyleSheetId:(id)id frameId:(id)frameId sourceURL:(id)l origin:(int64_t)origin title:(id)title disabled:(BOOL)disabled isInline:(BOOL)inline startLine:(double)self0 startColumn:(double)self1
{
  disabledCopy = disabled;
  idCopy = id;
  frameIdCopy = frameId;
  lCopy = l;
  titleCopy = title;
  v26.receiver = self;
  v26.super_class = RWIProtocolCSSStyleSheetHeader;
  v23 = [(RWIProtocolJSONObject *)&v26 init];
  if (v23)
  {
    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"styleSheetId"}];
    }

    if (!frameIdCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"frameId"}];
    }

    if (!lCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"sourceURL"}];
    }

    if (!titleCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"title"}];
    }

    [(RWIProtocolCSSStyleSheetHeader *)v23 setStyleSheetId:idCopy];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setFrameId:frameIdCopy];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setSourceURL:lCopy];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setOrigin:origin];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setTitle:titleCopy];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setDisabled:disabledCopy];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setIsInline:inline];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setStartLine:line];
    [(RWIProtocolCSSStyleSheetHeader *)v23 setStartColumn:column];
    v24 = v23;
  }

  return v23;
}

- (void)setStyleSheetId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"styleSheetId"];
}

- (NSString)styleSheetId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetHeader;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"styleSheetId"];

  return v2;
}

- (void)setFrameId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"frameId"];
}

- (NSString)frameId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetHeader;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"frameId"];

  return v2;
}

- (void)setSourceURL:(id)l
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setString:l forKey:@"sourceURL"];
}

- (NSString)sourceURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetHeader;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"sourceURL"];

  return v2;
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
  v5.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"origin"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)origin
{
  v8.receiver = self;
  v8.super_class = RWIProtocolCSSStyleSheetHeader;
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

- (void)setTitle:(id)title
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setString:title forKey:@"title"];
}

- (NSString)title
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetHeader;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"title"];

  return v2;
}

- (void)setDisabled:(BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setBool:disabled forKey:@"disabled"];
}

- (BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"disabled"];
}

- (void)setIsInline:(BOOL)inline
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setBool:inline forKey:@"isInline"];
}

- (BOOL)isInline
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isInline"];
}

- (void)setStartLine:(double)line
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"startLine" forKey:line];
}

- (double)startLine
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"startLine"];
  return result;
}

- (void)setStartColumn:(double)column
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"startColumn" forKey:column];
}

- (double)startColumn
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetHeader;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"startColumn"];
  return result;
}

- (atomic_uint)origin
{
  result = OUTLINED_FUNCTION_4(self, a2, a3);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v5)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

@end