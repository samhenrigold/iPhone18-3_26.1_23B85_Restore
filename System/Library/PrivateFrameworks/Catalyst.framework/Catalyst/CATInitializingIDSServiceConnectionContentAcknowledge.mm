@interface CATInitializingIDSServiceConnectionContentAcknowledge
+ (id)instanceWithDictionary:(id)dictionary;
- (CATInitializingIDSServiceConnectionContentAcknowledge)initWithConnectionIdentifier:(id)identifier;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingIDSServiceConnectionContentAcknowledge

- (CATInitializingIDSServiceConnectionContentAcknowledge)initWithConnectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CATInitializingIDSServiceConnectionContentAcknowledge;
  v6 = [(CATInitializingIDSServiceConnectionContentAcknowledge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionIdentifier, identifier);
  }

  return v7;
}

- (NSDictionary)dictionaryValue
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"ConnectionIdentifier";
  connectionIdentifier = [(CATInitializingIDSServiceConnectionContentAcknowledge *)self connectionIdentifier];
  uUIDString = [connectionIdentifier UUIDString];
  v7[0] = uUIDString;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  v4 = [dictionary cat_uuidForKey:@"ConnectionIdentifier"];
  if (v4)
  {
    v5 = [[self alloc] initWithConnectionIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end