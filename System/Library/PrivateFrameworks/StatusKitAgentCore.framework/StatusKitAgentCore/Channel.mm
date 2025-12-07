@interface Channel
+ (id)predicateForChannelIdentifier:(id)identifier;
+ (id)predicateForChannelTypePresence;
+ (id)predicateForChannelTypeStatus;
+ (id)predicateForCreationDateNotNil;
+ (id)predicateForDecommissioned:(BOOL)decommissioned;
+ (id)predicateForPersonal:(BOOL)personal;
+ (id)predicateForPresenceIdentifier:(id)identifier;
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
+ (id)sortDescriptorForChannelIdentifierOrderedAscending:(BOOL)ascending;
+ (id)sortDescriptorForCreationDateAscending:(BOOL)ascending;
+ (id)sortDescriptorForPersonalOrderedAscending:(BOOL)ascending;
+ (id)sortDescriptorForStatusTypeIdentifierOrderedAscending:(BOOL)ascending;
@end

@implementation Channel

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Channel statusTypeKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForPersonal:(BOOL)personal
{
  personalCopy = personal;
  v4 = MEMORY[0x277CCAC30];
  v5 = +[Channel personalKeyPath];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:personalCopy];
  v7 = [v4 predicateWithFormat:@"%K == %@", v5, v6];

  return v7;
}

+ (id)predicateForDecommissioned:(BOOL)decommissioned
{
  decommissionedCopy = decommissioned;
  v4 = MEMORY[0x277CCAC30];
  v5 = +[Channel decommissionedKeyPath];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:decommissionedCopy];
  v7 = [v4 predicateWithFormat:@"%K == %@", v5, v6];

  return v7;
}

+ (id)predicateForChannelTypeStatus
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel channelTypeKeyPath];
  v4 = [v2 predicateWithFormat:@"%K == %@", v3, &unk_2833EBA20];

  return v4;
}

+ (id)predicateForChannelTypePresence
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel channelTypeKeyPath];
  v4 = [v2 predicateWithFormat:@"%K == %@", v3, &unk_2833EBA38];

  return v4;
}

+ (id)predicateForPresenceIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Channel presenceIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForChannelIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Channel identifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForCreationDateNotNil
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel dateChannelCreatedKeyPath];
  v4 = [v2 predicateWithFormat:@"%K != nil", v3];

  return v4;
}

+ (id)sortDescriptorForStatusTypeIdentifierOrderedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[Channel statusTypeKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

+ (id)sortDescriptorForPersonalOrderedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[Channel personalKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

+ (id)sortDescriptorForChannelIdentifierOrderedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[Channel identifierKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

+ (id)sortDescriptorForCreationDateAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[Channel dateChannelCreatedKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

@end