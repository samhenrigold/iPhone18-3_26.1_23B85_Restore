@interface HDCodableStaticSyncChangeSet
+ (id)changeSetWithChanges:(id)changes;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addChanges:(id)changes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableStaticSyncChangeSet

+ (id)changeSetWithChanges:(id)changes
{
  v21 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v5 = objc_alloc_init(HDCodableStaticSyncChangeSet);
  v6 = objc_opt_class();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = changesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"HDStaticSyncTask.m" lineNumber:762 description:{@"%@ must be an instance of %@", v12, v6}];
        }

        if (objc_opt_isKindOfClass())
        {
          [(HDCodableStaticSyncChangeSet *)v5 addChanges:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)addChanges:(id)changes
{
  changesCopy = changes;
  changes = self->_changes;
  v8 = changesCopy;
  if (!changes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_changes;
    self->_changes = v6;

    changesCopy = v8;
    changes = self->_changes;
  }

  [(NSMutableArray *)changes addObject:changesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableStaticSyncChangeSet;
  v4 = [(HDCodableStaticSyncChangeSet *)&v8 description];
  dictionaryRepresentation = [(HDCodableStaticSyncChangeSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_changes count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_changes, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_changes;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"changes"];
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
  v5 = self->_changes;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HDCodableStaticSyncChangeSet *)self changesCount])
  {
    [toCopy clearChanges];
    changesCount = [(HDCodableStaticSyncChangeSet *)self changesCount];
    if (changesCount)
    {
      v5 = changesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableStaticSyncChangeSet *)self changesAtIndex:i];
        [toCopy addChanges:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_changes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addChanges:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    changes = self->_changes;
    if (changes | equalCopy[1])
    {
      v6 = [(NSMutableArray *)changes isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HDCodableStaticSyncChangeSet *)self addChanges:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end