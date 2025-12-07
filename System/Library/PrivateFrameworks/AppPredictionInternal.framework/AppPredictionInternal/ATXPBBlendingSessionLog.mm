@interface ATXPBBlendingSessionLog
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addBlendingUpdate:(id)update;
- (void)addErmEvent:(id)event;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBBlendingSessionLog

- (void)addErmEvent:(id)event
{
  eventCopy = event;
  ermEvents = self->_ermEvents;
  v8 = eventCopy;
  if (!ermEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ermEvents;
    self->_ermEvents = v6;

    eventCopy = v8;
    ermEvents = self->_ermEvents;
  }

  [(NSMutableArray *)ermEvents addObject:eventCopy];
}

- (void)addBlendingUpdate:(id)update
{
  updateCopy = update;
  blendingUpdates = self->_blendingUpdates;
  v8 = updateCopy;
  if (!blendingUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_blendingUpdates;
    self->_blendingUpdates = v6;

    updateCopy = v8;
    blendingUpdates = self->_blendingUpdates;
  }

  [(NSMutableArray *)blendingUpdates addObject:updateCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBBlendingSessionLog;
  v4 = [(ATXPBBlendingSessionLog *)&v8 description];
  dictionaryRepresentation = [(ATXPBBlendingSessionLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_ermEvents count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_ermEvents, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_ermEvents;
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

    [dictionary setObject:v4 forKey:@"ermEvent"];
  }

  if ([(NSMutableArray *)self->_blendingUpdates count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_blendingUpdates, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_blendingUpdates;
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

    [dictionary setObject:v11 forKey:@"blendingUpdate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_ermEvents;
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
  v10 = self->_blendingUpdates;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ATXPBBlendingSessionLog *)self ermEventsCount])
  {
    [toCopy clearErmEvents];
    ermEventsCount = [(ATXPBBlendingSessionLog *)self ermEventsCount];
    if (ermEventsCount)
    {
      v5 = ermEventsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBBlendingSessionLog *)self ermEventAtIndex:i];
        [toCopy addErmEvent:v7];
      }
    }
  }

  if ([(ATXPBBlendingSessionLog *)self blendingUpdatesCount])
  {
    [toCopy clearBlendingUpdates];
    blendingUpdatesCount = [(ATXPBBlendingSessionLog *)self blendingUpdatesCount];
    if (blendingUpdatesCount)
    {
      v9 = blendingUpdatesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXPBBlendingSessionLog *)self blendingUpdateAtIndex:j];
        [toCopy addBlendingUpdate:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_ermEvents;
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
        [v5 addErmEvent:v11];

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
  v12 = self->_blendingUpdates;
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
        [v5 addBlendingUpdate:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ermEvents = self->_ermEvents, !(ermEvents | equalCopy[2])) || -[NSMutableArray isEqual:](ermEvents, "isEqual:")))
  {
    blendingUpdates = self->_blendingUpdates;
    if (blendingUpdates | equalCopy[1])
    {
      v7 = [(NSMutableArray *)blendingUpdates isEqual:?];
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

        [(ATXPBBlendingSessionLog *)self addErmEvent:*(*(&v19 + 1) + 8 * v9++)];
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

        [(ATXPBBlendingSessionLog *)self addBlendingUpdate:*(*(&v15 + 1) + 8 * v14++), v15];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end