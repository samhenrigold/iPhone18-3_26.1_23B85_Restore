@interface NNMKProtoInitialAccountsSync
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInitialAccount:(id)account;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoInitialAccountsSync

- (void)addInitialAccount:(id)account
{
  accountCopy = account;
  initialAccounts = self->_initialAccounts;
  v8 = accountCopy;
  if (!initialAccounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_initialAccounts;
    self->_initialAccounts = v6;

    accountCopy = v8;
    initialAccounts = self->_initialAccounts;
  }

  [(NSMutableArray *)initialAccounts addObject:accountCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoInitialAccountsSync;
  v4 = [(NNMKProtoInitialAccountsSync *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoInitialAccountsSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_initialAccounts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_initialAccounts, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_initialAccounts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"initialAccount"];
  }

  initialSyncVersion = self->_initialSyncVersion;
  if (initialSyncVersion)
  {
    [dictionary setObject:initialSyncVersion forKey:@"initialSyncVersion"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [dictionary setObject:v12 forKey:@"fullSyncVersion"];
  }

  dateSynced = self->_dateSynced;
  if (dateSynced)
  {
    [dictionary setObject:dateSynced forKey:@"dateSynced"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_initialAccounts;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_initialSyncVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_dateSynced)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NNMKProtoInitialAccountsSync *)self initialAccountsCount])
  {
    [toCopy clearInitialAccounts];
    initialAccountsCount = [(NNMKProtoInitialAccountsSync *)self initialAccountsCount];
    if (initialAccountsCount)
    {
      v5 = initialAccountsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NNMKProtoInitialAccountsSync *)self initialAccountAtIndex:i];
        [toCopy addInitialAccount:v7];
      }
    }
  }

  if (self->_initialSyncVersion)
  {
    [toCopy setInitialSyncVersion:?];
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 4) = self->_fullSyncVersion;
    *(toCopy + 40) |= 1u;
  }

  if (self->_dateSynced)
  {
    [toCopy setDateSynced:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_initialAccounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [v5 addInitialAccount:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_initialSyncVersion copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_fullSyncVersion;
    *(v5 + 40) |= 1u;
  }

  v14 = [(NSData *)self->_dateSynced copyWithZone:zone, v17];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  initialAccounts = self->_initialAccounts;
  if (initialAccounts | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)initialAccounts isEqual:?])
    {
      goto LABEL_13;
    }
  }

  initialSyncVersion = self->_initialSyncVersion;
  if (initialSyncVersion | *(equalCopy + 4))
  {
    if (![(NSString *)initialSyncVersion isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(equalCopy + 1))
  {
    v8 = [(NSData *)dateSynced isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_initialAccounts hash];
  v4 = [(NSString *)self->_initialSyncVersion hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSData *)self->_dateSynced hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 3);
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

        [(NNMKProtoInitialAccountsSync *)self addInitialAccount:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 4))
  {
    [(NNMKProtoInitialAccountsSync *)self setInitialSyncVersion:?];
  }

  if (*(fromCopy + 40))
  {
    self->_fullSyncVersion = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(NNMKProtoInitialAccountsSync *)self setDateSynced:?];
  }
}

@end