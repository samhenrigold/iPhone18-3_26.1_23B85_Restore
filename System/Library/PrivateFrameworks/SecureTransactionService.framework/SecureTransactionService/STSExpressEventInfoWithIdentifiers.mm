@interface STSExpressEventInfoWithIdentifiers
- (STSExpressEventInfoWithIdentifiers)initWithState:(unsigned int)state appletIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier;
@end

@implementation STSExpressEventInfoWithIdentifiers

- (STSExpressEventInfoWithIdentifiers)initWithState:(unsigned int)state appletIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier
{
  v7 = *&state;
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v14.receiver = self;
  v14.super_class = STSExpressEventInfoWithIdentifiers;
  v11 = [(STSExpressEventInfo *)&v14 initWithState:v7];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appletIdentifier, identifier);
    objc_storeStrong(&v12->_keyIdentifier, keyIdentifier);
  }

  return v12;
}

@end