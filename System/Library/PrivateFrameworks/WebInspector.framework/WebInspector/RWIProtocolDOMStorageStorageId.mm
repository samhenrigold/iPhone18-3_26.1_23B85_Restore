@interface RWIProtocolDOMStorageStorageId
- (BOOL)isLocalStorage;
- (NSString)securityOrigin;
- (RWIProtocolDOMStorageStorageId)initWithSecurityOrigin:(id)origin isLocalStorage:(BOOL)storage;
- (void)setIsLocalStorage:(BOOL)storage;
- (void)setSecurityOrigin:(id)origin;
@end

@implementation RWIProtocolDOMStorageStorageId

- (RWIProtocolDOMStorageStorageId)initWithSecurityOrigin:(id)origin isLocalStorage:(BOOL)storage
{
  storageCopy = storage;
  originCopy = origin;
  v10.receiver = self;
  v10.super_class = RWIProtocolDOMStorageStorageId;
  v7 = [(RWIProtocolJSONObject *)&v10 init];
  if (v7)
  {
    if (!originCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"securityOrigin"}];
    }

    [(RWIProtocolDOMStorageStorageId *)v7 setSecurityOrigin:originCopy];
    [(RWIProtocolDOMStorageStorageId *)v7 setIsLocalStorage:storageCopy];
    v8 = v7;
  }

  return v7;
}

- (void)setSecurityOrigin:(id)origin
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMStorageStorageId;
  [(RWIProtocolJSONObject *)&v3 setString:origin forKey:@"securityOrigin"];
}

- (NSString)securityOrigin
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMStorageStorageId;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"securityOrigin"];

  return v2;
}

- (void)setIsLocalStorage:(BOOL)storage
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMStorageStorageId;
  [(RWIProtocolJSONObject *)&v3 setBool:storage forKey:@"isLocalStorage"];
}

- (BOOL)isLocalStorage
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMStorageStorageId;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isLocalStorage"];
}

@end