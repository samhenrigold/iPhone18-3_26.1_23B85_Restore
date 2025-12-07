@interface AWDCoreRoutineModelVisitCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addVisits:(id)visits;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineModelVisitCount

- (void)dealloc
{
  [(AWDCoreRoutineModelVisitCount *)self setVisits:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelVisitCount;
  [(AWDCoreRoutineModelVisitCount *)&v3 dealloc];
}

- (void)setHasCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addVisits:(id)visits
{
  visits = self->_visits;
  if (!visits)
  {
    visits = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_visits = visits;
  }

  [(NSMutableArray *)visits addObject:visits];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelVisitCount;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineModelVisitCount description](&v3, sel_description), -[AWDCoreRoutineModelVisitCount dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  }

  if ([(NSMutableArray *)self->_visits count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_visits, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    visits = self->_visits;
    v7 = [(NSMutableArray *)visits countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(visits);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)visits countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"visits"];
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
  visits = self->_visits;
  v6 = [(NSMutableArray *)visits countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(visits);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)visits countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 4) = self->_count;
    *(to + 32) |= 2u;
  }

  if ([(AWDCoreRoutineModelVisitCount *)self visitsCount])
  {
    [to clearVisits];
    visitsCount = [(AWDCoreRoutineModelVisitCount *)self visitsCount];
    if (visitsCount)
    {
      v7 = visitsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addVisits:{-[AWDCoreRoutineModelVisitCount visitsAtIndex:](self, "visitsAtIndex:", i)}];
      }
    }
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
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_count;
    *(v5 + 32) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  visits = self->_visits;
  v9 = [(NSMutableArray *)visits countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(visits);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v6 addVisits:v13];
      }

      v10 = [(NSMutableArray *)visits countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 32))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_count != *(equal + 4))
      {
        goto LABEL_14;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
      goto LABEL_14;
    }

    visits = self->_visits;
    if (visits | *(equal + 3))
    {

      LOBYTE(v5) = [(NSMutableArray *)visits isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSMutableArray *)self->_visits hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_count;
  return v7 ^ v6 ^ [(NSMutableArray *)self->_visits hash:v3];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(from + 32);
  if (v4)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v4 = *(from + 32);
  }

  if ((v4 & 2) != 0)
  {
    self->_count = *(from + 4);
    *&self->_has |= 2u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(from + 3);
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

        [(AWDCoreRoutineModelVisitCount *)self addVisits:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end