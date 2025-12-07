@interface FMLFriend
- (BOOL)isEqual:(id)equal;
- (FMLFriend)initWithHandle:(id)handle handleType:(int64_t)type createDate:(id)date expiry:(id)expiry origin:(int64_t)origin originatedFromTheSameClient:(BOOL)client;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation FMLFriend

- (FMLFriend)initWithHandle:(id)handle handleType:(int64_t)type createDate:(id)date expiry:(id)expiry origin:(int64_t)origin originatedFromTheSameClient:(BOOL)client
{
  clientCopy = client;
  handleCopy = handle;
  dateCopy = date;
  expiryCopy = expiry;
  v20.receiver = self;
  v20.super_class = FMLFriend;
  v17 = [(FMLFriend *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(FMLFriend *)v17 setHandle:handleCopy];
    [(FMLFriend *)v18 setHandleType:type];
    [(FMLFriend *)v18 setCreatedAt:dateCopy];
    [(FMLFriend *)v18 setExpiry:expiryCopy];
    [(FMLFriend *)v18 setOrigin:origin];
    [(FMLFriend *)v18 setOriginatedFromTheSameClient:clientCopy];
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
    comparisonIdentifier2 = [v5 comparisonIdentifier];

    v8 = [comparisonIdentifier isEqualToString:comparisonIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)comparisonIdentifier
{
  v13 = MEMORY[0x277CCACA8];
  handle = [(FMLFriend *)self handle];
  identifier = [handle identifier];
  lowercaseString = [identifier lowercaseString];
  handleType = [(FMLFriend *)self handleType];
  createdAt = [(FMLFriend *)self createdAt];
  v8 = [createdAt description];
  expiry = [(FMLFriend *)self expiry];
  v10 = [expiry description];
  v11 = [v13 stringWithFormat:@"Handle:%@ Handle Type:%ld CreateAt:%@ expiry:%@ origin:%ld originatedFromTheSameClient:%d", lowercaseString, handleType, v8, v10, -[FMLFriend origin](self, "origin"), -[FMLFriend originatedFromTheSameClient](self, "originatedFromTheSameClient")];

  return v11;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
  v4 = [v2 stringWithFormat:@"%@", comparisonIdentifier];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, comparisonIdentifier];

  return v6;
}

@end