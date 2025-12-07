@interface NNMKProtoMoreMessagesForConversation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddedMessage:(id)message;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMailboxSyncVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMoreMessagesForConversation

- (void)addAddedMessage:(id)message
{
  messageCopy = message;
  addedMessages = self->_addedMessages;
  v8 = messageCopy;
  if (!addedMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_addedMessages;
    self->_addedMessages = v6;

    messageCopy = v8;
    addedMessages = self->_addedMessages;
  }

  [(NSMutableArray *)addedMessages addObject:messageCopy];
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMoreMessagesForConversation;
  v4 = [(NNMKProtoMoreMessagesForConversation *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMoreMessagesForConversation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
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

  conversationId = self->_conversationId;
  if (conversationId)
  {
    [dictionary setObject:conversationId forKey:@"conversationId"];
  }

  if ([(NSMutableArray *)self->_addedMessages count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_addedMessages, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_addedMessages;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"addedMessage"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [dictionary setObject:mailboxId forKey:@"mailboxId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailboxSyncVersion];
    [dictionary setObject:v15 forKey:@"mailboxSyncVersion"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_dateSynced)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_addedMessages;
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

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_fullSyncVersion;
    *(toCopy + 52) |= 1u;
  }

  v9 = toCopy;
  if (self->_dateSynced)
  {
    [toCopy setDateSynced:?];
  }

  if (self->_conversationId)
  {
    [v9 setConversationId:?];
  }

  if ([(NNMKProtoMoreMessagesForConversation *)self addedMessagesCount])
  {
    [v9 clearAddedMessages];
    addedMessagesCount = [(NNMKProtoMoreMessagesForConversation *)self addedMessagesCount];
    if (addedMessagesCount)
    {
      v6 = addedMessagesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoMoreMessagesForConversation *)self addedMessageAtIndex:i];
        [v9 addAddedMessage:v8];
      }
    }
  }

  if (self->_mailboxId)
  {
    [v9 setMailboxId:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v9 + 12) = self->_mailboxSyncVersion;
    *(v9 + 52) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_fullSyncVersion;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSData *)self->_dateSynced copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_conversationId copyWithZone:zone];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_addedMessages;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * v15) copyWithZone:{zone, v20}];
        [v6 addAddedMessage:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 48) = self->_mailboxSyncVersion;
    *(v6 + 52) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(equalCopy + 3) && ![(NSData *)dateSynced isEqual:?])
  {
    goto LABEL_19;
  }

  conversationId = self->_conversationId;
  if (conversationId | *(equalCopy + 2))
  {
    if (![(NSString *)conversationId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  addedMessages = self->_addedMessages;
  if (addedMessages | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)addedMessages isEqual:?])
    {
      goto LABEL_19;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 5))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v9 = (*(equalCopy + 52) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_mailboxSyncVersion != *(equalCopy + 12))
    {
      goto LABEL_19;
    }

    v9 = 1;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_dateSynced hash];
  v5 = [(NSString *)self->_conversationId hash];
  v6 = [(NSMutableArray *)self->_addedMessages hash];
  v7 = [(NSString *)self->_mailboxId hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_mailboxSyncVersion;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[13])
  {
    self->_fullSyncVersion = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(NNMKProtoMoreMessagesForConversation *)self setDateSynced:?];
  }

  if (*(v5 + 2))
  {
    [(NNMKProtoMoreMessagesForConversation *)self setConversationId:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v5 + 1);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoMoreMessagesForConversation *)self addAddedMessage:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (*(v5 + 5))
  {
    [(NNMKProtoMoreMessagesForConversation *)self setMailboxId:?];
  }

  if ((*(v5 + 52) & 2) != 0)
  {
    self->_mailboxSyncVersion = *(v5 + 12);
    *&self->_has |= 2u;
  }
}

@end