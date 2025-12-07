@interface NNMKProtoVIPSender
+ (id)protoVIP:(id)p;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)vipSender;
- (unint64_t)hash;
- (void)addEmailAddresses:(id)addresses;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoVIPSender

- (id)vipSender
{
  v3 = objc_alloc_init(NNMKVIPSender);
  name = [(NNMKProtoVIPSender *)self name];
  [(NNMKVIPSender *)v3 setName:name];

  displayName = [(NNMKProtoVIPSender *)self displayName];
  [(NNMKVIPSender *)v3 setDisplayName:displayName];

  v6 = MEMORY[0x277CBEB98];
  emailAddresses = [(NNMKProtoVIPSender *)self emailAddresses];
  v8 = [v6 setWithArray:emailAddresses];
  [(NNMKVIPSender *)v3 setEmailAddresses:v8];

  return v3;
}

+ (id)protoVIP:(id)p
{
  pCopy = p;
  v4 = objc_alloc_init(NNMKProtoVIPSender);
  name = [pCopy name];
  [(NNMKProtoVIPSender *)v4 setName:name];

  displayName = [pCopy displayName];
  [(NNMKProtoVIPSender *)v4 setDisplayName:displayName];

  emailAddresses = [pCopy emailAddresses];

  allObjects = [emailAddresses allObjects];
  v9 = [allObjects mutableCopy];
  [(NNMKProtoVIPSender *)v4 setEmailAddresses:v9];

  return v4;
}

- (void)addEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  emailAddresses = self->_emailAddresses;
  v8 = addressesCopy;
  if (!emailAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    addressesCopy = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSMutableArray *)emailAddresses addObject:addressesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoVIPSender;
  v4 = [(NNMKProtoVIPSender *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoVIPSender *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  emailAddresses = self->_emailAddresses;
  if (emailAddresses)
  {
    [v4 setObject:emailAddresses forKey:@"emailAddresses"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_emailAddresses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    [toCopy setName:?];
  }

  if (self->_displayName)
  {
    [toCopy setDisplayName:?];
  }

  if ([(NNMKProtoVIPSender *)self emailAddressesCount])
  {
    [toCopy clearEmailAddresses];
    emailAddressesCount = [(NNMKProtoVIPSender *)self emailAddressesCount];
    if (emailAddressesCount)
    {
      v5 = emailAddressesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NNMKProtoVIPSender *)self emailAddressesAtIndex:i];
        [toCopy addEmailAddresses:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_emailAddresses;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{zone, v17}];
        [v5 addEmailAddresses:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[3])) || -[NSString isEqual:](name, "isEqual:")) && ((displayName = self->_displayName, !(displayName | equalCopy[1])) || -[NSString isEqual:](displayName, "isEqual:")))
  {
    emailAddresses = self->_emailAddresses;
    if (emailAddresses | equalCopy[2])
    {
      v8 = [(NSMutableArray *)emailAddresses isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_displayName hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_emailAddresses hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(NNMKProtoVIPSender *)self setName:?];
  }

  if (*(fromCopy + 1))
  {
    [(NNMKProtoVIPSender *)self setDisplayName:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NNMKProtoVIPSender *)self addEmailAddresses:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end