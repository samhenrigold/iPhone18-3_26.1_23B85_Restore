@interface NNMKProtoAccountAdditionOrUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEmail:(id)email;
- (void)addMailboxes:(id)mailboxes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShouldArchive:(BOOL)archive;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoAccountAdditionOrUpdate

- (void)setHasShouldArchive:(BOOL)archive
{
  if (archive)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addEmail:(id)email
{
  emailCopy = email;
  emails = self->_emails;
  v8 = emailCopy;
  if (!emails)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emails;
    self->_emails = v6;

    emailCopy = v8;
    emails = self->_emails;
  }

  [(NSMutableArray *)emails addObject:emailCopy];
}

- (void)addMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  mailboxes = self->_mailboxes;
  v8 = mailboxesCopy;
  if (!mailboxes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mailboxes;
    self->_mailboxes = v6;

    mailboxesCopy = v8;
    mailboxes = self->_mailboxes;
  }

  [(NSMutableArray *)mailboxes addObject:mailboxesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoAccountAdditionOrUpdate;
  v4 = [(NNMKProtoAccountAdditionOrUpdate *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoAccountAdditionOrUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  accountId = self->_accountId;
  if (accountId)
  {
    [dictionary setObject:accountId forKey:@"accountId"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldArchive];
    [v4 setObject:v7 forKey:@"shouldArchive"];
  }

  emails = self->_emails;
  if (emails)
  {
    [v4 setObject:emails forKey:@"email"];
  }

  if ([(NSMutableArray *)self->_mailboxes count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_mailboxes, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = self->_mailboxes;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"mailboxes"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [v4 setObject:v16 forKey:@"fullSyncVersion"];
  }

  defaultEmail = self->_defaultEmail;
  if (defaultEmail)
  {
    [v4 setObject:defaultEmail forKey:@"defaultEmail"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"username"];
  }

  localId = self->_localId;
  if (localId)
  {
    [v4 setObject:localId forKey:@"localId"];
  }

  parentId = self->_parentId;
  if (parentId)
  {
    [v4 setObject:parentId forKey:@"parentId"];
  }

  typeIdentifier = self->_typeIdentifier;
  if (typeIdentifier)
  {
    [v4 setObject:typeIdentifier forKey:@"typeIdentifier"];
  }

  emailAddressToken = self->_emailAddressToken;
  if (emailAddressToken)
  {
    [v4 setObject:emailAddressToken forKey:@"emailAddressToken"];
  }

  pccEmailAddress = self->_pccEmailAddress;
  if (pccEmailAddress)
  {
    [v4 setObject:pccEmailAddress forKey:@"pccEmailAddress"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_emails;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_mailboxes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_defaultEmail)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_username)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_typeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_emailAddressToken)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pccEmailAddress)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_accountId)
  {
    [toCopy setAccountId:?];
    toCopy = v14;
  }

  if (self->_displayName)
  {
    [v14 setDisplayName:?];
    toCopy = v14;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[104] = self->_shouldArchive;
    toCopy[108] |= 2u;
  }

  if ([(NNMKProtoAccountAdditionOrUpdate *)self emailsCount])
  {
    [v14 clearEmails];
    emailsCount = [(NNMKProtoAccountAdditionOrUpdate *)self emailsCount];
    if (emailsCount)
    {
      v6 = emailsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoAccountAdditionOrUpdate *)self emailAtIndex:i];
        [v14 addEmail:v8];
      }
    }
  }

  if ([(NNMKProtoAccountAdditionOrUpdate *)self mailboxesCount])
  {
    [v14 clearMailboxes];
    mailboxesCount = [(NNMKProtoAccountAdditionOrUpdate *)self mailboxesCount];
    if (mailboxesCount)
    {
      v10 = mailboxesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NNMKProtoAccountAdditionOrUpdate *)self mailboxesAtIndex:j];
        [v14 addMailboxes:v12];
      }
    }
  }

  v13 = v14;
  if (*&self->_has)
  {
    *(v14 + 12) = self->_fullSyncVersion;
    v14[108] |= 1u;
  }

  if (self->_defaultEmail)
  {
    [v14 setDefaultEmail:?];
    v13 = v14;
  }

  if (self->_username)
  {
    [v14 setUsername:?];
    v13 = v14;
  }

  if (self->_localId)
  {
    [v14 setLocalId:?];
    v13 = v14;
  }

  if (self->_parentId)
  {
    [v14 setParentId:?];
    v13 = v14;
  }

  if (self->_typeIdentifier)
  {
    [v14 setTypeIdentifier:?];
    v13 = v14;
  }

  if (self->_emailAddressToken)
  {
    [v14 setEmailAddressToken:?];
    v13 = v14;
  }

  if (self->_pccEmailAddress)
  {
    [v14 setPccEmailAddress:?];
    v13 = v14;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 104) = self->_shouldArchive;
    *(v5 + 108) |= 2u;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = self->_emails;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v41 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addEmail:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = self->_mailboxes;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      v20 = 0;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v37 + 1) + 8 * v20) copyWithZone:{zone, v37}];
        [v5 addMailboxes:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v18);
  }

  if (*&self->_has)
  {
    *(v5 + 48) = self->_fullSyncVersion;
    *(v5 + 108) |= 1u;
  }

  v22 = [(NSString *)self->_defaultEmail copyWithZone:zone, v37];
  v23 = *(v5 + 16);
  *(v5 + 16) = v22;

  v24 = [(NSString *)self->_username copyWithZone:zone];
  v25 = *(v5 + 96);
  *(v5 + 96) = v24;

  v26 = [(NSString *)self->_localId copyWithZone:zone];
  v27 = *(v5 + 56);
  *(v5 + 56) = v26;

  v28 = [(NSString *)self->_parentId copyWithZone:zone];
  v29 = *(v5 + 72);
  *(v5 + 72) = v28;

  v30 = [(NSString *)self->_typeIdentifier copyWithZone:zone];
  v31 = *(v5 + 88);
  *(v5 + 88) = v30;

  v32 = [(NSString *)self->_emailAddressToken copyWithZone:zone];
  v33 = *(v5 + 32);
  *(v5 + 32) = v32;

  v34 = [(NSString *)self->_pccEmailAddress copyWithZone:zone];
  v35 = *(v5 + 80);
  *(v5 + 80) = v34;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  accountId = self->_accountId;
  if (accountId | *(equalCopy + 1))
  {
    if (![(NSString *)accountId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 3))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 108) & 2) == 0)
    {
      goto LABEL_16;
    }

    if (self->_shouldArchive)
    {
      if ((*(equalCopy + 104) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(equalCopy + 104))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 108) & 2) != 0)
  {
    goto LABEL_16;
  }

  emails = self->_emails;
  if (emails | *(equalCopy + 5) && ![(NSMutableArray *)emails isEqual:?])
  {
    goto LABEL_16;
  }

  mailboxes = self->_mailboxes;
  if (mailboxes | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)mailboxes isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 108) & 1) != 0 && self->_fullSyncVersion == *(equalCopy + 12))
    {
      goto LABEL_25;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (*(equalCopy + 108))
  {
    goto LABEL_16;
  }

LABEL_25:
  defaultEmail = self->_defaultEmail;
  if (defaultEmail | *(equalCopy + 2) && ![(NSString *)defaultEmail isEqual:?])
  {
    goto LABEL_16;
  }

  username = self->_username;
  if (username | *(equalCopy + 12))
  {
    if (![(NSString *)username isEqual:?])
    {
      goto LABEL_16;
    }
  }

  localId = self->_localId;
  if (localId | *(equalCopy + 7))
  {
    if (![(NSString *)localId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  parentId = self->_parentId;
  if (parentId | *(equalCopy + 9))
  {
    if (![(NSString *)parentId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  typeIdentifier = self->_typeIdentifier;
  if (typeIdentifier | *(equalCopy + 11))
  {
    if (![(NSString *)typeIdentifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  emailAddressToken = self->_emailAddressToken;
  if (emailAddressToken | *(equalCopy + 4))
  {
    if (![(NSString *)emailAddressToken isEqual:?])
    {
      goto LABEL_16;
    }
  }

  pccEmailAddress = self->_pccEmailAddress;
  if (pccEmailAddress | *(equalCopy + 10))
  {
    v9 = [(NSString *)pccEmailAddress isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accountId hash];
  v4 = [(NSString *)self->_displayName hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_shouldArchive;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSMutableArray *)self->_emails hash];
  v7 = [(NSMutableArray *)self->_mailboxes hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_defaultEmail hash];
  v10 = [(NSString *)self->_username hash];
  v11 = v10 ^ [(NSString *)self->_localId hash];
  v12 = v11 ^ [(NSString *)self->_parentId hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_typeIdentifier hash];
  v14 = [(NSString *)self->_emailAddressToken hash];
  return v13 ^ v14 ^ [(NSString *)self->_pccEmailAddress hash];
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setAccountId:?];
  }

  if (*(fromCopy + 3))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setDisplayName:?];
  }

  if ((*(fromCopy + 108) & 2) != 0)
  {
    self->_shouldArchive = *(fromCopy + 104);
    *&self->_has |= 2u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NNMKProtoAccountAdditionOrUpdate *)self addEmail:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 8);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NNMKProtoAccountAdditionOrUpdate *)self addMailboxes:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 108))
  {
    self->_fullSyncVersion = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setDefaultEmail:?];
  }

  if (*(fromCopy + 12))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setUsername:?];
  }

  if (*(fromCopy + 7))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setLocalId:?];
  }

  if (*(fromCopy + 9))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setParentId:?];
  }

  if (*(fromCopy + 11))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setTypeIdentifier:?];
  }

  if (*(fromCopy + 4))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setEmailAddressToken:?];
  }

  if (*(fromCopy + 10))
  {
    [(NNMKProtoAccountAdditionOrUpdate *)self setPccEmailAddress:?];
  }
}

@end