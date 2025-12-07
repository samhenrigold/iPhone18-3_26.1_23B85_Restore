@interface CKUserIdentity
- (NSString)unifiedContactIdentifier;
@end

@implementation CKUserIdentity

- (NSString)unifiedContactIdentifier
{
  selfCopy = self;
  contactIdentifiers = [(CKUserIdentity *)selfCopy contactIdentifiers];
  v4 = sub_1132C();

  if (*(v4 + 16))
  {

    v5 = sub_1128C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end