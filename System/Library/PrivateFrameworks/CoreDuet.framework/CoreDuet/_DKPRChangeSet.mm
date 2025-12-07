@interface _DKPRChangeSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addDeleteEventID:(uint64_t)d;
- (uint64_t)addEvents:(uint64_t)events;
- (uint64_t)deleteEventIDs;
- (uint64_t)events;
- (void)setDeleteEventIDs:(uint64_t)ds;
- (void)setEvents:(uint64_t)events;
- (void)writeTo:(id)to;
@end

@implementation _DKPRChangeSet

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRChangeSet;
  v4 = [(_DKPRChangeSet *)&v8 description];
  dictionaryRepresentation = [(_DKPRChangeSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_events count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_events;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"events"];
  }

  deleteEventIDs = self->_deleteEventIDs;
  if (deleteEventIDs)
  {
    [dictionary setObject:deleteEventIDs forKey:@"deleteEventID"];
  }

  return dictionary;
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
  v10 = self->_deleteEventIDs;
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

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
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
        [(_DKPRChangeSet *)v5 addEvents:v11];

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
  v12 = self->_deleteEventIDs;
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
        [(_DKPRChangeSet *)v5 addDeleteEventID:v17];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((events = self->_events, !(events | equalCopy[2])) || -[NSMutableArray isEqual:](events, "isEqual:")))
  {
    deleteEventIDs = self->_deleteEventIDs;
    if (deleteEventIDs | equalCopy[1])
    {
      v7 = [(NSMutableArray *)deleteEventIDs isEqual:?];
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

- (uint64_t)addEvents:(uint64_t)events
{
  v3 = a2;
  v4 = v3;
  if (events)
  {
    v5 = *(events + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(events + 16);
      *(events + 16) = v6;

      v5 = *(events + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)addDeleteEventID:(uint64_t)d
{
  v3 = a2;
  v4 = v3;
  if (d)
  {
    v5 = *(d + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(d + 8);
      *(d + 8) = v6;

      v5 = *(d + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)events
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setEvents:(uint64_t)events
{
  if (events)
  {
    OUTLINED_FUNCTION_0_8(events, a2, 16);
  }
}

- (uint64_t)deleteEventIDs
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setDeleteEventIDs:(uint64_t)ds
{
  if (ds)
  {
    OUTLINED_FUNCTION_0_8(ds, a2, 8);
  }
}

@end