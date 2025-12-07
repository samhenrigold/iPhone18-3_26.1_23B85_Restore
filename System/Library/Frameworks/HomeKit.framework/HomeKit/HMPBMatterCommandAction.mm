@interface HMPBMatterCommandAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCommands:(id)commands;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBMatterCommandAction

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(HMPBMatterCommandAction *)self setActionUUID:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
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

        [(HMPBMatterCommandAction *)self addCommands:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 28))
  {
    self->_enforceExecutionOrder = *(fromCopy + 24);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_actionUUID hash];
  v4 = [(NSMutableArray *)self->_commands hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_enforceExecutionOrder;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  actionUUID = self->_actionUUID;
  if (actionUUID | *(equalCopy + 1))
  {
    if (![(NSData *)actionUUID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  commands = self->_commands;
  if (commands | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)commands isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_enforceExecutionOrder)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_actionUUID copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_commands;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addCommands:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_enforceExecutionOrder;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_actionUUID)
  {
    [toCopy setActionUUID:?];
  }

  if ([(HMPBMatterCommandAction *)self commandsCount])
  {
    [toCopy clearCommands];
    commandsCount = [(HMPBMatterCommandAction *)self commandsCount];
    if (commandsCount)
    {
      v5 = commandsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMPBMatterCommandAction *)self commandsAtIndex:i];
        [toCopy addCommands:v7];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_enforceExecutionOrder;
    toCopy[28] |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_actionUUID)
  {
    PBDataWriterWriteDataField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_commands;
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

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  actionUUID = self->_actionUUID;
  if (actionUUID)
  {
    [dictionary setObject:actionUUID forKey:@"actionUUID"];
  }

  if ([(NSMutableArray *)self->_commands count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_commands, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_commands;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"commands"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_enforceExecutionOrder];
    [v4 setObject:v13 forKey:@"enforceExecutionOrder"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBMatterCommandAction;
  v4 = [(HMPBMatterCommandAction *)&v8 description];
  dictionaryRepresentation = [(HMPBMatterCommandAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addCommands:(id)commands
{
  commandsCopy = commands;
  commands = self->_commands;
  v8 = commandsCopy;
  if (!commands)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_commands;
    self->_commands = v6;

    commandsCopy = v8;
    commands = self->_commands;
  }

  [(NSMutableArray *)commands addObject:commandsCopy];
}

@end