@interface HVPBDataSourceContentState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addDeferredContentStates:(id)states;
- (void)addDeprecatedDeferredContentStates:(id)states;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HVPBDataSourceContentState

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
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

        [(HVPBDataSourceContentState *)self addDeprecatedDeferredContentStates:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = fromCopy[1];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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

        [(HVPBDataSourceContentState *)self addDeferredContentStates:*(*(&v15 + 1) + 8 * v14++), v15];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((deprecatedDeferredContentStates = self->_deprecatedDeferredContentStates, !(deprecatedDeferredContentStates | equalCopy[2])) || -[NSMutableArray isEqual:](deprecatedDeferredContentStates, "isEqual:")))
  {
    deferredContentStates = self->_deferredContentStates;
    if (deferredContentStates | equalCopy[1])
    {
      v7 = [(NSMutableArray *)deferredContentStates isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_deprecatedDeferredContentStates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addDeprecatedDeferredContentStates:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_deferredContentStates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addDeferredContentStates:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HVPBDataSourceContentState *)self deprecatedDeferredContentStatesCount])
  {
    [toCopy clearDeprecatedDeferredContentStates];
    deprecatedDeferredContentStatesCount = [(HVPBDataSourceContentState *)self deprecatedDeferredContentStatesCount];
    if (deprecatedDeferredContentStatesCount)
    {
      v5 = deprecatedDeferredContentStatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HVPBDataSourceContentState *)self deprecatedDeferredContentStatesAtIndex:i];
        [toCopy addDeprecatedDeferredContentStates:v7];
      }
    }
  }

  if ([(HVPBDataSourceContentState *)self deferredContentStatesCount])
  {
    [toCopy clearDeferredContentStates];
    deferredContentStatesCount = [(HVPBDataSourceContentState *)self deferredContentStatesCount];
    if (deferredContentStatesCount)
    {
      v9 = deferredContentStatesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HVPBDataSourceContentState *)self deferredContentStatesAtIndex:j];
        [toCopy addDeferredContentStates:v11];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_deprecatedDeferredContentStates;
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

        PBDataWriterWriteSubmessage();
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
  v10 = self->_deferredContentStates;
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
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_deprecatedDeferredContentStates count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_deprecatedDeferredContentStates, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_deprecatedDeferredContentStates;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"deprecatedDeferredContentStates"];
  }

  if ([(NSMutableArray *)self->_deferredContentStates count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_deferredContentStates, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_deferredContentStates;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"deferredContentStates"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HVPBDataSourceContentState;
  v4 = [(HVPBDataSourceContentState *)&v8 description];
  dictionaryRepresentation = [(HVPBDataSourceContentState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addDeferredContentStates:(id)states
{
  statesCopy = states;
  deferredContentStates = self->_deferredContentStates;
  v8 = statesCopy;
  if (!deferredContentStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deferredContentStates;
    self->_deferredContentStates = v6;

    statesCopy = v8;
    deferredContentStates = self->_deferredContentStates;
  }

  [(NSMutableArray *)deferredContentStates addObject:statesCopy];
}

- (void)addDeprecatedDeferredContentStates:(id)states
{
  statesCopy = states;
  deprecatedDeferredContentStates = self->_deprecatedDeferredContentStates;
  v8 = statesCopy;
  if (!deprecatedDeferredContentStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deprecatedDeferredContentStates;
    self->_deprecatedDeferredContentStates = v6;

    statesCopy = v8;
    deprecatedDeferredContentStates = self->_deprecatedDeferredContentStates;
  }

  [(NSMutableArray *)deprecatedDeferredContentStates addObject:statesCopy];
}

@end