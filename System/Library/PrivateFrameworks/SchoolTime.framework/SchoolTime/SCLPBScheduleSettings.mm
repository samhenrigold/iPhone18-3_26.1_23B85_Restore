@interface SCLPBScheduleSettings
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRecurrences:(id)recurrences;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation SCLPBScheduleSettings

- (void)setHasIsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  recurrences = self->_recurrences;
  v8 = recurrencesCopy;
  if (!recurrences)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_recurrences;
    self->_recurrences = v6;

    recurrencesCopy = v8;
    recurrences = self->_recurrences;
  }

  [(NSMutableArray *)recurrences addObject:recurrencesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBScheduleSettings;
  v4 = [(SCLPBScheduleSettings *)&v8 description];
  dictionaryRepresentation = [(SCLPBScheduleSettings *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [dictionary setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEnabled];
    [dictionary setObject:v6 forKey:@"isEnabled"];
  }

  if ([(NSMutableArray *)self->_recurrences count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_recurrences, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_recurrences;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"recurrences"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_recurrences;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_version;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 20) = self->_isEnabled;
    *(toCopy + 24) |= 2u;
  }

  v10 = toCopy;
  if ([(SCLPBScheduleSettings *)self recurrencesCount])
  {
    [v10 clearRecurrences];
    recurrencesCount = [(SCLPBScheduleSettings *)self recurrencesCount];
    if (recurrencesCount)
    {
      v7 = recurrencesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SCLPBScheduleSettings *)self recurrencesAtIndex:i];
        [v10 addRecurrences:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_version;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_isEnabled;
    *(v5 + 24) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_recurrences;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addRecurrences:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_version != *(equalCopy + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 24) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(equalCopy + 24) & 2) == 0)
  {
    goto LABEL_12;
  }

  if (self->_isEnabled)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_12;
  }

LABEL_9:
  recurrences = self->_recurrences;
  if (recurrences | *(equalCopy + 1))
  {
    v6 = [(NSMutableArray *)recurrences isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_version;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSMutableArray *)self->_recurrences hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isEnabled;
  return v7 ^ v6 ^ [(NSMutableArray *)self->_recurrences hash:v3];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 24);
  if (v6)
  {
    self->_version = *(fromCopy + 4);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 24);
  }

  if ((v6 & 2) != 0)
  {
    self->_isEnabled = *(fromCopy + 20);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SCLPBScheduleSettings *)self addRecurrences:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end