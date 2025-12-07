@interface AWDWiFiUIScanSession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCounts:(id)counts;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiUIScanSession

- (void)dealloc
{
  [(AWDWiFiUIScanSession *)self setCounts:0];
  [(AWDWiFiUIScanSession *)self setProcess:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiUIScanSession;
  [(AWDWiFiUIScanSession *)&v3 dealloc];
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCounts:(id)counts
{
  counts = self->_counts;
  if (!counts)
  {
    counts = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_counts = counts;
  }

  [(NSMutableArray *)counts addObject:counts];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiUIScanSession;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiUIScanSession description](&v3, sel_description), -[AWDWiFiUIScanSession dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
  }

  if ([(NSMutableArray *)self->_counts count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_counts, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    counts = self->_counts;
    v7 = [(NSMutableArray *)counts countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(counts);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)counts countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"counts"];
  }

  process = self->_process;
  if (process)
  {
    [dictionary setObject:process forKey:@"process"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  counts = self->_counts;
  v6 = [(NSMutableArray *)counts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(counts);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)counts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_process)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 6) = self->_duration;
    *(to + 40) |= 2u;
  }

  if ([(AWDWiFiUIScanSession *)self countsCount])
  {
    [to clearCounts];
    countsCount = [(AWDWiFiUIScanSession *)self countsCount];
    if (countsCount)
    {
      v7 = countsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addCounts:{-[AWDWiFiUIScanSession countsAtIndex:](self, "countsAtIndex:", i)}];
      }
    }
  }

  if (self->_process)
  {

    [to setProcess:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_duration;
    *(v5 + 40) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  counts = self->_counts;
  v9 = [(NSMutableArray *)counts countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(counts);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v6 addCounts:v13];
      }

      v10 = [(NSMutableArray *)counts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v6[4] = [(NSString *)self->_process copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(equal + 40))
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_duration != *(equal + 6))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
      goto LABEL_16;
    }

    counts = self->_counts;
    if (!(counts | *(equal + 2)) || (v5 = [(NSMutableArray *)counts isEqual:?]) != 0)
    {
      process = self->_process;
      if (process | *(equal + 4))
      {

        LOBYTE(v5) = [(NSString *)process isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_duration;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_counts hash];
  return v5 ^ [(NSString *)self->_process hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *(from + 40);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_duration = *(from + 6);
    *&self->_has |= 2u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(from + 2);
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

        [(AWDWiFiUIScanSession *)self addCounts:*(*(&v11 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (*(from + 4))
  {
    [(AWDWiFiUIScanSession *)self setProcess:?];
  }
}

@end