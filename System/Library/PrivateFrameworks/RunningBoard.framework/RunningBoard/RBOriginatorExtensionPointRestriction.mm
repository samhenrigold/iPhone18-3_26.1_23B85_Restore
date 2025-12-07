@interface RBOriginatorExtensionPointRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithExtensionPoint:(id)point;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBOriginatorExtensionPointRestriction

- (id)_initWithExtensionPoint:(id)point
{
  pointCopy = point;
  v10.receiver = self;
  v10.super_class = RBOriginatorExtensionPointRestriction;
  _init = [(RBDomainRestriction *)&v10 _init];
  if (_init)
  {
    v6 = [pointCopy copy];
    v7 = _init[1];
    _init[1] = v6;

    v8 = _init;
  }

  return _init;
}

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"ExtensionPoint"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    error = [[RBOriginatorExtensionPointRestriction alloc] _initWithExtensionPoint:v6];
  }

  else if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBOriginatorExtensionPointRestriction doesn't specify extensionPoint: %@", dictionaryCopy, *MEMORY[0x277CCA470]];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v7 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v9];

    v11 = v10;
    *error = v10;

    error = 0;
  }

  return error;
}

- (id)dictionaryRepresentation
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"Class";
  v5[1] = @"ExtensionPoint";
  extensionPoint = self->_extensionPoint;
  v6[0] = @"OriginatorExtensionPoint";
  v6[1] = extensionPoint;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  originatorProcess = [context originatorProcess];
  identity = [originatorProcess identity];
  isExtension = [identity isExtension];

  if ((isExtension & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D47098];
    v22 = *MEMORY[0x277CCA470];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"originator isn't extension"];
    v23[0] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v23;
    v17 = &v22;
LABEL_8:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    *error = [v12 errorWithDomain:v13 code:1 userInfo:v18];

    LOBYTE(error) = 0;
    goto LABEL_9;
  }

  extensionPoint = self->_extensionPoint;
  bundleProperties = [originatorProcess bundleProperties];
  extensionPointIdentifier = [bundleProperties extensionPointIdentifier];
  LOBYTE(extensionPoint) = [(NSString *)extensionPoint isEqualToString:extensionPointIdentifier];

  if ((extensionPoint & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D47098];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"originator doesn't have extensionPoint %@", self->_extensionPoint, *MEMORY[0x277CCA470]];
    v21 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v21;
    v17 = &v20;
    goto LABEL_8;
  }

  LOBYTE(error) = 1;
LABEL_9:

  return error;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  extensionPoint = self->_extensionPoint;
  v8 = equalCopy->_extensionPoint;
  if (extensionPoint == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (extensionPoint)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(NSString *)extensionPoint isEqual:?];
    goto LABEL_11;
  }

LABEL_3:
  v6 = 0;
LABEL_11:

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_extensionPoint];

  return v5;
}

@end