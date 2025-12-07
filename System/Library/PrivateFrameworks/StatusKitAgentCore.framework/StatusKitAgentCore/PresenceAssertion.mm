@interface PresenceAssertion
+ (id)predicateForPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal;
@end

@implementation PresenceAssertion

+ (id)predicateForPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal
{
  personalCopy = personal;
  v5 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v7 = +[PresenceAssertion presenceIdentifierKeyPath];
  v8 = +[PresenceAssertion isPersonalKeyPath];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:personalCopy];
  v10 = [v5 predicateWithFormat:@"%K == %@ && %K == %@", v7, identifierCopy, v8, v9];

  return v10;
}

@end