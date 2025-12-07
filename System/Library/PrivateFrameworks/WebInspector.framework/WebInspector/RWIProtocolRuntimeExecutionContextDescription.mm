@interface RWIProtocolRuntimeExecutionContextDescription
- (NSString)frameId;
- (NSString)name;
- (RWIProtocolRuntimeExecutionContextDescription)initWithIdentifier:(int)identifier type:(int64_t)type name:(id)name frameId:(id)id;
- (int)identifier;
- (int64_t)type;
- (void)setFrameId:(id)id;
- (void)setIdentifier:(int)identifier;
- (void)setName:(id)name;
- (void)setType:(int64_t)type;
@end

@implementation RWIProtocolRuntimeExecutionContextDescription

- (RWIProtocolRuntimeExecutionContextDescription)initWithIdentifier:(int)identifier type:(int64_t)type name:(id)name frameId:(id)id
{
  v8 = *&identifier;
  nameCopy = name;
  idCopy = id;
  v15.receiver = self;
  v15.super_class = RWIProtocolRuntimeExecutionContextDescription;
  v12 = [(RWIProtocolJSONObject *)&v15 init];
  if (v12)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"frameId"}];
    }

    [(RWIProtocolRuntimeExecutionContextDescription *)v12 setIdentifier:v8];
    [(RWIProtocolRuntimeExecutionContextDescription *)v12 setType:type];
    [(RWIProtocolRuntimeExecutionContextDescription *)v12 setName:nameCopy];
    [(RWIProtocolRuntimeExecutionContextDescription *)v12 setFrameId:idCopy];
    v13 = v12;
  }

  return v12;
}

- (void)setIdentifier:(int)identifier
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeExecutionContextDescription;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&identifier forKey:@"id"];
}

- (int)identifier
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeExecutionContextDescription;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"id"];
}

- (void)setType:(int64_t)type
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
  v5.super_class = RWIProtocolRuntimeExecutionContextDescription;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeExecutionContextDescription;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"type"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolRuntimeExecutionContextType>(WTF::String const&)::mappings;
  v6 = 72;
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

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeExecutionContextDescription;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeExecutionContextDescription;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setFrameId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeExecutionContextDescription;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"frameId"];
}

- (NSString)frameId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeExecutionContextDescription;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"frameId"];

  return v2;
}

@end