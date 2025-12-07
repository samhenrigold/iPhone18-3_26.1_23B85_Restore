@interface ASDTIOServiceID
+ (id)forIdentifier:(id)identifier andClientType:(unsigned int)type;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForIdentifier:(id)identifier andClientType:(unsigned int)type;
- (unint64_t)hash;
@end

@implementation ASDTIOServiceID

- (id)initForIdentifier:(id)identifier andClientType:(unsigned int)type
{
  v4 = *&type;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = ASDTIOServiceID;
  v7 = [(ASDTIOServiceID *)&v11 init];
  v8 = v7;
  if (v7)
  {
    if (!identifierCopy)
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(ASDTIOServiceID *)v7 setIdentifier:identifierCopy];
    [(ASDTIOServiceID *)v8 setClientType:v4];
  }

  v9 = v8;
LABEL_6:

  return v9;
}

+ (id)forIdentifier:(id)identifier andClientType:(unsigned int)type
{
  v4 = *&type;
  identifierCopy = identifier;
  v7 = [[self alloc] initForIdentifier:identifierCopy andClientType:v4];

  return v7;
}

- (unint64_t)hash
{
  identifier = [(ASDTIOServiceID *)self identifier];
  v4 = [identifier hash];
  clientType = [(ASDTIOServiceID *)self clientType];

  return v4 ^ clientType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(ASDTIOServiceID *)self identifier];
  v6 = [v4 initForIdentifier:identifier andClientType:{-[ASDTIOServiceID clientType](self, "clientType")}];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier3 = equalCopy;
      identifier = [(ASDTIOServiceID *)self identifier];
      identifier2 = [(ASDTIOServiceID *)identifier3 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        clientType = [(ASDTIOServiceID *)self clientType];
        v9 = clientType == [(ASDTIOServiceID *)identifier3 clientType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_12;
      }

      identifier3 = [(ASDTIOServiceID *)self identifier];
      v9 = [(ASDTIOServiceID *)identifier3 isEqualToString:equalCopy];
    }
  }

LABEL_12:

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(ASDTIOServiceID *)self identifier];
  v5 = [v3 stringWithFormat:@"%@:%u", identifier, -[ASDTIOServiceID clientType](self, "clientType")];

  return v5;
}

@end