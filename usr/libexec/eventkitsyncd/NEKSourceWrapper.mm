@interface NEKSourceWrapper
- (NEKSourceWrapper)initWithChangeType:(int)type account:(id)account;
- (NEKSourceWrapper)initWithChangeType:(int)type source:(id)source;
- (NEKSourceWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType attributes:(id)attributes;
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKSourceWrapper

- (NEKSourceWrapper)initWithChangeType:(int)type source:(id)source
{
  if (source)
  {
    v5 = *&type;
    sourceCopy = source;
    v7 = [[NEKSourceAttributes alloc] initWithSource:sourceCopy];

    if (v7)
    {
      self = [(NEKSourceWrapper *)self initWithStoreType:0 nekChangeType:v5 attributes:v7];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NEKSourceWrapper)initWithChangeType:(int)type account:(id)account
{
  if (account)
  {
    v5 = *&type;
    accountCopy = account;
    v7 = [[NEKSourceAttributes alloc] initWithAccount:accountCopy];

    if (v7)
    {
      self = [(NEKSourceWrapper *)self initWithStoreType:1 nekChangeType:v5 attributes:v7];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NEKSourceWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType attributes:(id)attributes
{
  v6 = *&changeType;
  attributesCopy = attributes;
  v13.receiver = self;
  v13.super_class = NEKSourceWrapper;
  v10 = [(NEKWrapper *)&v13 initWithStoreType:type nekChangeType:v6];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_attributes, attributes);
  }

  return v11;
}

- (id)objectIdentifier
{
  accountPersistentID = [(NEKSourceAttributes *)self->_attributes accountPersistentID];
  v3 = accountPersistentID;
  if (accountPersistentID)
  {
    v4 = accountPersistentID;
  }

  else
  {
    v4 = +[NSUUID eks_garbageUUID];
  }

  v5 = v4;

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  accountPersistentID = [(NEKSourceAttributes *)self->_attributes accountPersistentID];
  name = [(NEKSourceAttributes *)self->_attributes name];
  v7 = sub_10002CDF8(name);
  type = [(NEKSourceAttributes *)self->_attributes type];
  if (type > 5)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1000B5A60[type];
  }

  v10 = [NSString stringWithFormat:@"<%@ %p persistentID=%@; title=%@; type=%@>", v4, self, accountPersistentID, v7, v9];;

  return v10;
}

@end