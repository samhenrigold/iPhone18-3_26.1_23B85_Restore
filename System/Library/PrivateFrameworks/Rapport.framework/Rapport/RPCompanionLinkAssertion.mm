@interface RPCompanionLinkAssertion
- (RPCompanionLinkAssertion)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPCompanionLinkAssertion

- (RPCompanionLinkAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RPCompanionLinkAssertion;
  v5 = [(RPCompanionLinkAssertion *)&v11 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assertionID = self->_assertionID;
  v8 = coderCopy;
  if (assertionID)
  {
    [coderCopy encodeObject:assertionID forKey:@"asID"];
    coderCopy = v8;
  }

  destinationID = self->_destinationID;
  if (destinationID)
  {
    [v8 encodeObject:destinationID forKey:@"dID"];
    coderCopy = v8;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v8 encodeObject:identifier forKey:@"id"];
    coderCopy = v8;
  }
}

- (id)description
{
  v12 = 0;
  NSAppendPrintF(&v12, "CLinkAssertion '%@'", self->_assertionID);
  v3 = v12;
  v4 = v3;
  destinationID = self->_destinationID;
  if (destinationID)
  {
    v11 = v3;
    NSAppendPrintF(&v11, ", Dest '%@'", destinationID);
    v6 = v11;

    v4 = v6;
  }

  if (self->_identifier)
  {
    identifier = self->_identifier;
    v10 = v4;
    NSAppendPrintF(&v10, ", UUID '%@'", identifier);
    v7 = v10;

    v4 = v7;
  }

  return v4;
}

@end