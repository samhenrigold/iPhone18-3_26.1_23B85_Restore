@interface _MRSendCommandResultHandlerDialogProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActions:(id)actions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendCommandResultHandlerDialogProtobuf

- (void)addActions:(id)actions
{
  actionsCopy = actions;
  actions = self->_actions;
  v8 = actionsCopy;
  if (!actions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_actions;
    self->_actions = v6;

    actionsCopy = v8;
    actions = self->_actions;
  }

  [(NSMutableArray *)actions addObject:actionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendCommandResultHandlerDialogProtobuf;
  v4 = [(_MRSendCommandResultHandlerDialogProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendCommandResultHandlerDialogProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_actions count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_actions, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_actions;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"actions"];
  }

  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    [dictionary setObject:localizedTitle forKey:@"localizedTitle"];
  }

  localizedMessage = self->_localizedMessage;
  if (localizedMessage)
  {
    [dictionary setObject:localizedMessage forKey:@"localizedMessage"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_actions;
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

  if (self->_localizedTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedMessage)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRSendCommandResultHandlerDialogProtobuf *)self actionsCount])
  {
    [toCopy clearActions];
    actionsCount = [(_MRSendCommandResultHandlerDialogProtobuf *)self actionsCount];
    if (actionsCount)
    {
      v5 = actionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRSendCommandResultHandlerDialogProtobuf *)self actionsAtIndex:i];
        [toCopy addActions:v7];
      }
    }
  }

  if (self->_localizedTitle)
  {
    [toCopy setLocalizedTitle:?];
  }

  v8 = toCopy;
  if (self->_localizedMessage)
  {
    [toCopy setLocalizedMessage:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_actions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [v5 addActions:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_localizedTitle copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_localizedMessage copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((actions = self->_actions, !(actions | equalCopy[1])) || -[NSMutableArray isEqual:](actions, "isEqual:")) && ((localizedTitle = self->_localizedTitle, !(localizedTitle | equalCopy[3])) || -[NSString isEqual:](localizedTitle, "isEqual:")))
  {
    localizedMessage = self->_localizedMessage;
    if (localizedMessage | equalCopy[2])
    {
      v8 = [(NSString *)localizedMessage isEqual:?];
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
  v3 = [(NSMutableArray *)self->_actions hash];
  v4 = [(NSString *)self->_localizedTitle hash]^ v3;
  return v4 ^ [(NSString *)self->_localizedMessage hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[1];
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

        [(_MRSendCommandResultHandlerDialogProtobuf *)self addActions:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[3])
  {
    [(_MRSendCommandResultHandlerDialogProtobuf *)self setLocalizedTitle:?];
  }

  if (fromCopy[2])
  {
    [(_MRSendCommandResultHandlerDialogProtobuf *)self setLocalizedMessage:?];
  }
}

@end