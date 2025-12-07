@interface Status
+ (id)predicateForChannelIdentifier:(id)identifier;
+ (id)predicateForStatusUniqueIdentifier:(id)identifier;
+ (id)sortDescriptorForDateCreatedAscending:(BOOL)ascending;
+ (id)sortDescriptorForDatePublishedAscending:(BOOL)ascending;
@end

@implementation Status

+ (id)predicateForChannelIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Status channelIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForStatusUniqueIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Status uniqueIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)sortDescriptorForDatePublishedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[Status datePublishedKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

+ (id)sortDescriptorForDateCreatedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[Status dateCreatedKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

@end