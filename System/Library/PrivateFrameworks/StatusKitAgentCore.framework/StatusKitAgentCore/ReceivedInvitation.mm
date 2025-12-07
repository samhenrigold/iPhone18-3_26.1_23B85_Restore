@interface ReceivedInvitation
+ (id)predicateForPresenceIdentifier:(id)identifier;
+ (id)predicateForSenderHandle:(id)handle;
+ (id)predicateForSenderHandleString:(id)string;
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
+ (id)sortDescriptorForDateInvitationCreatedOrderedAscending:(BOOL)ascending;
+ (id)sortDescriptorForSenderHandleOrderedAscending:(BOOL)ascending;
@end

@implementation ReceivedInvitation

+ (id)predicateForSenderHandle:(id)handle
{
  normalizedHandleString = [handle normalizedHandleString];
  v5 = [self predicateForSenderHandleString:normalizedHandleString];

  return v5;
}

+ (id)predicateForSenderHandleString:(id)string
{
  v3 = MEMORY[0x277CCAC30];
  stringCopy = string;
  v5 = +[ReceivedInvitation senderHandleKeyPath];
  stringCopy = [v3 predicateWithFormat:@"%K == %@", v5, stringCopy];

  return stringCopy;
}

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[ReceivedInvitation statusTypeIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForPresenceIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[ReceivedInvitation presenceIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)sortDescriptorForDateInvitationCreatedOrderedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[ReceivedInvitation dateInvitationCreatedKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

+ (id)sortDescriptorForSenderHandleOrderedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v4 = MEMORY[0x277CCAC98];
  v5 = +[ReceivedInvitation senderHandleKeyPath];
  v6 = [v4 sortDescriptorWithKey:v5 ascending:ascendingCopy];

  return v6;
}

@end