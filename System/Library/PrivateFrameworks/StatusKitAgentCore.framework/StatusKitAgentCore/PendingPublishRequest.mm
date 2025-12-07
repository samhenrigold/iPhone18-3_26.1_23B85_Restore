@interface PendingPublishRequest
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
+ (id)predicateForStatusUniqueIdentifier:(id)identifier;
+ (id)sortDescriptorForDateCreatedAscending:(BOOL)ascending;
@end

@implementation PendingPublishRequest

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[PendingPublishRequest statusTypeIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForStatusUniqueIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[PendingPublishRequest statusUniqueIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)sortDescriptorForDateCreatedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[PendingPublishRequest dateCreatedKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

@end