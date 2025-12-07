@interface KCellularActivatedBearerContexts
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBearerContexts:(id)contexts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBearerContextCount:(BOOL)count;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularActivatedBearerContexts

- (void)setHasBearerContextCount:(BOOL)count
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

- (void)addBearerContexts:(id)contexts
{
  contextsCopy = contexts;
  bearerContexts = self->_bearerContexts;
  v8 = contextsCopy;
  if (!bearerContexts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_bearerContexts;
    self->_bearerContexts = v6;

    contextsCopy = v8;
    bearerContexts = self->_bearerContexts;
  }

  [(NSMutableArray *)bearerContexts addObject:contextsCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularActivatedBearerContexts;
  v3 = [(KCellularActivatedBearerContexts *)&v7 description];
  dictionaryRepresentation = [(KCellularActivatedBearerContexts *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_bearerContextCount];
    [v3 setObject:v6 forKey:@"bearer_context_count"];
  }

  if ([(NSMutableArray *)self->_bearerContexts count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_bearerContexts, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_bearerContexts;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"bearer_contexts"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v14 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_bearerContexts;
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

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_bearerContextCount;
    *(toCopy + 36) |= 2u;
  }

  v10 = toCopy;
  if ([(KCellularActivatedBearerContexts *)self bearerContextsCount])
  {
    [v10 clearBearerContexts];
    bearerContextsCount = [(KCellularActivatedBearerContexts *)self bearerContextsCount];
    if (bearerContextsCount)
    {
      v7 = bearerContextsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularActivatedBearerContexts *)self bearerContextsAtIndex:i];
        [v10 addBearerContexts:v9];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 8) = self->_subsId;
    *(v10 + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 4) = self->_bearerContextCount;
    *(v5 + 36) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_bearerContexts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addBearerContexts:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 8) = self->_subsId;
    *(v6 + 36) |= 4u;
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

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_bearerContextCount != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  bearerContexts = self->_bearerContexts;
  if (bearerContexts | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)bearerContexts isEqual:?])
    {
LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 36) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_subsId != *(equalCopy + 8))
    {
      goto LABEL_19;
    }

    v7 = 1;
  }

LABEL_20:

  return v7;
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
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_bearerContextCount;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_bearerContexts hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_subsId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 36);
  }

  if ((v6 & 2) != 0)
  {
    self->_bearerContextCount = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(KCellularActivatedBearerContexts *)self addBearerContexts:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if ((v5[9] & 4) != 0)
  {
    self->_subsId = v5[8];
    *&self->_has |= 4u;
  }
}

@end