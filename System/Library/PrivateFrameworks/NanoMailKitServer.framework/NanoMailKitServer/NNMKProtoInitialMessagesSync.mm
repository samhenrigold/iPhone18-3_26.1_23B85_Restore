@interface NNMKProtoInitialMessagesSync
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInitialMessage:(id)message;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMailboxSyncVersion:(BOOL)version;
- (void)setHasOrganizedByThread:(BOOL)thread;
- (void)setHasSyncedMailboxType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoInitialMessagesSync

- (void)addInitialMessage:(id)message
{
  messageCopy = message;
  initialMessages = self->_initialMessages;
  v8 = messageCopy;
  if (!initialMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_initialMessages;
    self->_initialMessages = v6;

    messageCopy = v8;
    initialMessages = self->_initialMessages;
  }

  [(NSMutableArray *)initialMessages addObject:messageCopy];
}

- (void)setHasSyncedMailboxType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMailboxSyncVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasOrganizedByThread:(BOOL)thread
{
  if (thread)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoInitialMessagesSync;
  v4 = [(NNMKProtoInitialMessagesSync *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoInitialMessagesSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [dictionary setObject:v4 forKey:@"fullSyncVersion"];
  }

  dateSynced = self->_dateSynced;
  if (dateSynced)
  {
    [dictionary setObject:dateSynced forKey:@"dateSynced"];
  }

  if ([(NSMutableArray *)self->_initialMessages count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_initialMessages, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = self->_initialMessages;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"initialMessage"];
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages)
  {
    [dictionary setObject:dateForRequestingMoreMessages forKey:@"dateForRequestingMoreMessages"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncedMailboxType];
    [dictionary setObject:v14 forKey:@"syncedMailboxType"];
  }

  syncedMailboxAccountId = self->_syncedMailboxAccountId;
  if (syncedMailboxAccountId)
  {
    [dictionary setObject:syncedMailboxAccountId forKey:@"syncedMailboxAccountId"];
  }

  syncedMailboxURL = self->_syncedMailboxURL;
  if (syncedMailboxURL)
  {
    [dictionary setObject:syncedMailboxURL forKey:@"syncedMailboxURL"];
  }

  syncedMailboxCustomName = self->_syncedMailboxCustomName;
  if (syncedMailboxCustomName)
  {
    [dictionary setObject:syncedMailboxCustomName forKey:@"syncedMailboxCustomName"];
  }

  mailbox = self->_mailbox;
  if (mailbox)
  {
    dictionaryRepresentation2 = [(NNMKProtoMailbox *)mailbox dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"mailbox"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [dictionary setObject:v21 forKey:@"mailboxSyncVersion"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_organizedByThread];
    [dictionary setObject:v22 forKey:@"organizedByThread"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_dateSynced)
  {
    PBDataWriterWriteDataField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_initialMessages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_dateForRequestingMoreMessages)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_syncedMailboxAccountId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_syncedMailboxURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_syncedMailboxCustomName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mailbox)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_fullSyncVersion;
    *(toCopy + 92) |= 1u;
  }

  v11 = toCopy;
  if (self->_dateSynced)
  {
    [toCopy setDateSynced:?];
  }

  if ([(NNMKProtoInitialMessagesSync *)self initialMessagesCount])
  {
    [v11 clearInitialMessages];
    initialMessagesCount = [(NNMKProtoInitialMessagesSync *)self initialMessagesCount];
    if (initialMessagesCount)
    {
      v6 = initialMessagesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoInitialMessagesSync *)self initialMessageAtIndex:i];
        [v11 addInitialMessage:v8];
      }
    }
  }

  if (self->_dateForRequestingMoreMessages)
  {
    [v11 setDateForRequestingMoreMessages:?];
  }

  v9 = v11;
  if ((*&self->_has & 4) != 0)
  {
    *(v11 + 18) = self->_syncedMailboxType;
    *(v11 + 92) |= 4u;
  }

  if (self->_syncedMailboxAccountId)
  {
    [v11 setSyncedMailboxAccountId:?];
    v9 = v11;
  }

  if (self->_syncedMailboxURL)
  {
    [v11 setSyncedMailboxURL:?];
    v9 = v11;
  }

  if (self->_syncedMailboxCustomName)
  {
    [v11 setSyncedMailboxCustomName:?];
    v9 = v11;
  }

  if (self->_mailbox)
  {
    [v11 setMailbox:?];
    v9 = v11;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9[12] = self->_mailboxSyncVersion;
    *(v9 + 92) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v9 + 88) = self->_organizedByThread;
    *(v9 + 92) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_fullSyncVersion;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_initialMessages;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v27 + 1) + 8 * i) copyWithZone:{zone, v27}];
        [v6 addInitialMessage:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  v15 = [(NSData *)self->_dateForRequestingMoreMessages copyWithZone:zone];
  v16 = *(v6 + 8);
  *(v6 + 8) = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 72) = self->_syncedMailboxType;
    *(v6 + 92) |= 4u;
  }

  v17 = [(NSString *)self->_syncedMailboxAccountId copyWithZone:zone, v27];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  v19 = [(NSString *)self->_syncedMailboxURL copyWithZone:zone];
  v20 = *(v6 + 80);
  *(v6 + 80) = v19;

  v21 = [(NSString *)self->_syncedMailboxCustomName copyWithZone:zone];
  v22 = *(v6 + 64);
  *(v6 + 64) = v21;

  v23 = [(NNMKProtoMailbox *)self->_mailbox copyWithZone:zone];
  v24 = *(v6 + 40);
  *(v6 + 40) = v23;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 48) = self->_mailboxSyncVersion;
    *(v6 + 92) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 88) = self->_organizedByThread;
    *(v6 + 92) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 6))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_33;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(equalCopy + 2) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_33;
  }

  initialMessages = self->_initialMessages;
  if (initialMessages | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)initialMessages isEqual:?])
    {
      goto LABEL_33;
    }
  }

  dateForRequestingMoreMessages = self->_dateForRequestingMoreMessages;
  if (dateForRequestingMoreMessages | *(equalCopy + 1))
  {
    if (![(NSData *)dateForRequestingMoreMessages isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_syncedMailboxType != *(equalCopy + 18))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
    goto LABEL_33;
  }

  syncedMailboxAccountId = self->_syncedMailboxAccountId;
  if (syncedMailboxAccountId | *(equalCopy + 7) && ![(NSString *)syncedMailboxAccountId isEqual:?])
  {
    goto LABEL_33;
  }

  syncedMailboxURL = self->_syncedMailboxURL;
  if (syncedMailboxURL | *(equalCopy + 10))
  {
    if (![(NSString *)syncedMailboxURL isEqual:?])
    {
      goto LABEL_33;
    }
  }

  syncedMailboxCustomName = self->_syncedMailboxCustomName;
  if (syncedMailboxCustomName | *(equalCopy + 8))
  {
    if (![(NSString *)syncedMailboxCustomName isEqual:?])
    {
      goto LABEL_33;
    }
  }

  mailbox = self->_mailbox;
  if (mailbox | *(equalCopy + 5))
  {
    if (![(NNMKProtoMailbox *)mailbox isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_mailboxSyncVersion != *(equalCopy + 12))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_33;
  }

  v12 = (*(equalCopy + 92) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 92) & 8) == 0)
    {
LABEL_33:
      v12 = 0;
      goto LABEL_34;
    }

    if (self->_organizedByThread)
    {
      if ((*(equalCopy + 88) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 88))
    {
      goto LABEL_33;
    }

    v12 = 1;
  }

LABEL_34:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v14 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v14 = 0;
  }

  v3 = [(NSData *)self->_dateSynced hash];
  v4 = [(NSMutableArray *)self->_initialMessages hash];
  v5 = [(NSData *)self->_dateForRequestingMoreMessages hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_syncedMailboxType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_syncedMailboxAccountId hash];
  v8 = [(NSString *)self->_syncedMailboxURL hash];
  v9 = [(NSString *)self->_syncedMailboxCustomName hash];
  v10 = [(NNMKProtoMailbox *)self->_mailbox hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_mailboxSyncVersion;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v12 = 0;
    return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = 2654435761 * self->_organizedByThread;
  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[23])
  {
    self->_fullSyncVersion = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoInitialMessagesSync *)self setDateSynced:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(v5 + 4);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoInitialMessagesSync *)self addInitialMessage:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (*(v5 + 1))
  {
    [(NNMKProtoInitialMessagesSync *)self setDateForRequestingMoreMessages:?];
  }

  if ((*(v5 + 92) & 4) != 0)
  {
    self->_syncedMailboxType = *(v5 + 18);
    *&self->_has |= 4u;
  }

  if (*(v5 + 7))
  {
    [(NNMKProtoInitialMessagesSync *)self setSyncedMailboxAccountId:?];
  }

  if (*(v5 + 10))
  {
    [(NNMKProtoInitialMessagesSync *)self setSyncedMailboxURL:?];
  }

  if (*(v5 + 8))
  {
    [(NNMKProtoInitialMessagesSync *)self setSyncedMailboxCustomName:?];
  }

  mailbox = self->_mailbox;
  v12 = *(v5 + 5);
  if (mailbox)
  {
    if (v12)
    {
      [(NNMKProtoMailbox *)mailbox mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(NNMKProtoInitialMessagesSync *)self setMailbox:?];
  }

  v13 = *(v5 + 92);
  if ((v13 & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 12);
    *&self->_has |= 2u;
    v13 = *(v5 + 92);
  }

  if ((v13 & 8) != 0)
  {
    self->_organizedByThread = *(v5 + 88);
    *&self->_has |= 8u;
  }
}

@end