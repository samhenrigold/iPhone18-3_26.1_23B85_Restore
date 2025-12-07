@interface RPNearFieldValidationPayload
- (RPNearFieldValidationPayload)initWithDictionary:(id)dictionary;
- (RPNearFieldValidationPayload)initWithKnownIdentity:(BOOL)identity supportsApplicationLabel:(BOOL)label;
- (id)descriptionWithLevel:(int)level;
- (id)dictionaryRepresentation;
@end

@implementation RPNearFieldValidationPayload

- (RPNearFieldValidationPayload)initWithKnownIdentity:(BOOL)identity supportsApplicationLabel:(BOOL)label
{
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = RPNearFieldValidationPayload;
  v6 = [(RPNearFieldMessagePayload *)&v12 initWithType:2];
  v7 = v6;
  if (v6)
  {
    v6->_isKnownIdentity = identity;
    v8 = [NSNumber numberWithBool:labelCopy];
    supportsApplicationLabel = v7->_supportsApplicationLabel;
    v7->_supportsApplicationLabel = v8;

    v10 = v7;
  }

  return v7;
}

- (RPNearFieldValidationPayload)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RPNearFieldValidationPayload;
  v5 = [(RPNearFieldMessagePayload *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    if (v6)
    {
      v7 = NSDictionaryGetNSNumber();
      supportsApplicationLabel = v5->_supportsApplicationLabel;
      v5->_supportsApplicationLabel = v7;

      v5->_isKnownIdentity = [v6 BOOLValue];
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v9[0] = @"RPKnownIdentityKey";
  v3 = [NSNumber numberWithBool:self->_isKnownIdentity];
  v9[1] = @"RPSupportsApplicationLabelKey";
  v10[0] = v3;
  v10[1] = self->_supportsApplicationLabel;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8.receiver = self;
  v8.super_class = RPNearFieldValidationPayload;
  dictionaryRepresentation = [(RPNearFieldMessagePayload *)&v8 dictionaryRepresentation];
  v6 = [NSMutableDictionary dictionaryWithDictionary:dictionaryRepresentation];

  [v6 addEntriesFromDictionary:v4];

  return v6;
}

- (id)descriptionWithLevel:(int)level
{
  v12 = 0;
  [(RPNearFieldValidationPayload *)self isKnownIdentity];
  v4 = NSStringFromBOOL();
  supportsApplicationLabel = [(RPNearFieldValidationPayload *)self supportsApplicationLabel];
  supportsApplicationLabel2 = [(RPNearFieldValidationPayload *)self supportsApplicationLabel];
  v7 = supportsApplicationLabel2;
  if (supportsApplicationLabel)
  {
    [supportsApplicationLabel2 BOOLValue];
    v8 = NSStringFromBOOL();
  }

  else
  {
    v8 = supportsApplicationLabel2;
  }

  NSAppendPrintF(&v12, ", isKnownIdentity %@, supportsApplicationLabel %@", v4, v8);
  v9 = v12;
  v10 = v12;
  if (supportsApplicationLabel)
  {
  }

  return v9;
}

@end