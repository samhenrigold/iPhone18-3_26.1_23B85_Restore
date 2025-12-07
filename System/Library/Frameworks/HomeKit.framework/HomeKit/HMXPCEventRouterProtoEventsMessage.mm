@interface HMXPCEventRouterProtoEventsMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addCachedEvents:(id)events;
- (void)addEvents:(id)events;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMXPCEventRouterProtoEventsMessage

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
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

        [(HMXPCEventRouterProtoEventsMessage *)self addEvents:*(*(&v19 + 1) + 8 * v9++)];
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

        [(HMXPCEventRouterProtoEventsMessage *)self addCachedEvents:*(*(&v15 + 1) + 8 * v14++), v15];
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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((events = self->_events, !(events | equalCopy[2])) || -[NSMutableArray isEqual:](events, "isEqual:")))
  {
    cachedEvents = self->_cachedEvents;
    if (cachedEvents | equalCopy[1])
    {
      v7 = [(NSMutableArray *)cachedEvents isEqual:?];
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
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_events;
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
        [v5 addEvents:v11];

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
  v12 = self->_cachedEvents;
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
        [v5 addCachedEvents:v17];

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
  if ([(HMXPCEventRouterProtoEventsMessage *)self eventsCount])
  {
    [toCopy clearEvents];
    eventsCount = [(HMXPCEventRouterProtoEventsMessage *)self eventsCount];
    if (eventsCount)
    {
      v5 = eventsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMXPCEventRouterProtoEventsMessage *)self eventsAtIndex:i];
        [toCopy addEvents:v7];
      }
    }
  }

  if ([(HMXPCEventRouterProtoEventsMessage *)self cachedEventsCount])
  {
    [toCopy clearCachedEvents];
    cachedEventsCount = [(HMXPCEventRouterProtoEventsMessage *)self cachedEventsCount];
    if (cachedEventsCount)
    {
      v9 = cachedEventsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMXPCEventRouterProtoEventsMessage *)self cachedEventsAtIndex:j];
        [toCopy addCachedEvents:v11];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_events;
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
  v10 = self->_cachedEvents;
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
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_events count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_events;
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

    [dictionary setObject:v4 forKey:@"events"];
  }

  if ([(NSMutableArray *)self->_cachedEvents count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_cachedEvents, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_cachedEvents;
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

    [dictionary setObject:v11 forKey:@"cachedEvents"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMXPCEventRouterProtoEventsMessage;
  v4 = [(HMXPCEventRouterProtoEventsMessage *)&v8 description];
  dictionaryRepresentation = [(HMXPCEventRouterProtoEventsMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addCachedEvents:(id)events
{
  eventsCopy = events;
  cachedEvents = self->_cachedEvents;
  v8 = eventsCopy;
  if (!cachedEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_cachedEvents;
    self->_cachedEvents = v6;

    eventsCopy = v8;
    cachedEvents = self->_cachedEvents;
  }

  [(NSMutableArray *)cachedEvents addObject:eventsCopy];
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  events = self->_events;
  v8 = eventsCopy;
  if (!events)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_events;
    self->_events = v6;

    eventsCopy = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:eventsCopy];
}

@end