@interface SYSyncBatch
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addChanges:(id)changes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYSyncBatch

- (void)addChanges:(id)changes
{
  changesCopy = changes;
  changes = self->_changes;
  v8 = changesCopy;
  if (!changes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_changes;
    self->_changes = v6;

    changesCopy = v8;
    changes = self->_changes;
  }

  [(NSMutableArray *)changes addObject:changesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncBatch;
  v4 = [(SYSyncBatch *)&v8 description];
  dictionaryRepresentation = [(SYSyncBatch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(SYMessageHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [dictionary setObject:sessionID forKey:@"sessionID"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_index];
  [dictionary setObject:v7 forKey:@"index"];

  if ([(NSMutableArray *)self->_changes count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_changes, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_changes;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"changes"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_header)
  {
    [SYSyncBatch writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_sessionID)
  {
    [SYSyncBatch writeTo:];
  }

  PBDataWriterWriteStringField();
  PBDataWriterWriteUint64Field();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_changes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setSessionID:self->_sessionID];
  toCopy[1] = self->_index;
  if ([(SYSyncBatch *)self changesCount])
  {
    [toCopy clearChanges];
    changesCount = [(SYSyncBatch *)self changesCount];
    if (changesCount)
    {
      v5 = changesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SYSyncBatch *)self changesAtIndex:i];
        [toCopy addChanges:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_sessionID copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v5[1] = self->_index;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_changes;
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
        [v5 addChanges:v15];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[3])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((sessionID = self->_sessionID, !(sessionID | equalCopy[4])) || -[NSString isEqual:](sessionID, "isEqual:")) && self->_index == equalCopy[1])
  {
    changes = self->_changes;
    if (changes | equalCopy[2])
    {
      v8 = [(NSMutableArray *)changes isEqual:?];
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
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_sessionID hash]^ v3;
  v5 = 2654435761u * self->_index;
  return v4 ^ [(NSMutableArray *)self->_changes hash]^ v5;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 3);
  if (header)
  {
    if (v6)
    {
      [(SYMessageHeader *)header mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SYSyncBatch *)self setHeader:?];
  }

  if (*(fromCopy + 4))
  {
    [(SYSyncBatch *)self setSessionID:?];
  }

  self->_index = *(fromCopy + 1);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 2);
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

        [(SYSyncBatch *)self addChanges:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end