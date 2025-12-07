@interface PGGraphLanguageNode
+ (id)filter;
+ (id)filterWithLocaleIdentifiers:(id)identifiers;
- (BOOL)hasProperties:(id)properties;
- (PGGraphLanguageNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphLanguageNode)initWithLocaleIdentifier:(id)identifier;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
@end

@implementation PGGraphLanguageNode

- (id)propertyForKey:(id)key
{
  v9 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"localeIdentifier"])
  {
    v5 = self->_localeIdentifier;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v7 = 138412290;
      v8 = keyCopy;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphLanguageNode.", &v7, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (id)propertyDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  localeIdentifier = self->_localeIdentifier;
  v5 = @"localeIdentifier";
  v6[0] = localeIdentifier;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"localeIdentifier"];
    v7 = v6;
    v8 = !v6 || [v6 isEqual:self->_localeIdentifier];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphLanguageNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6 = [properties objectForKeyedSubscript:{@"localeIdentifier", domain}];
  v7 = [(PGGraphLanguageNode *)self initWithLocaleIdentifier:v6];

  return v7;
}

- (PGGraphLanguageNode)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PGGraphLanguageNode;
  v6 = [(PGGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, identifier);
  }

  return v7;
}

+ (id)filterWithLocaleIdentifiers:(id)identifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  identifiersCopy = identifiers;
  v5 = [v3 alloc];
  v9 = @"localeIdentifier";
  v10[0] = identifiersCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [v5 initWithLabel:@"Language" domain:205 properties:v6];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Language" domain:205];

  return v2;
}

@end