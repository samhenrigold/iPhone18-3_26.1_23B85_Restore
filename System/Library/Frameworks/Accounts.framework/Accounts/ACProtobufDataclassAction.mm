@interface ACProtobufDataclassAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAffectedContainers:(id)containers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufDataclassAction

- (void)addAffectedContainers:(id)containers
{
  containersCopy = containers;
  affectedContainers = self->_affectedContainers;
  v8 = containersCopy;
  if (!affectedContainers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_affectedContainers;
    self->_affectedContainers = v6;

    containersCopy = v8;
    affectedContainers = self->_affectedContainers;
  }

  [(NSMutableArray *)affectedContainers addObject:containersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufDataclassAction;
  v4 = [(ACProtobufDataclassAction *)&v8 description];
  dictionaryRepresentation = [(ACProtobufDataclassAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
  [dictionary setObject:v4 forKey:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_destructive];
  [dictionary setObject:v5 forKey:@"destructive"];

  affectedContainers = self->_affectedContainers;
  if (affectedContainers)
  {
    [dictionary setObject:affectedContainers forKey:@"affectedContainers"];
  }

  undoAlertTitle = self->_undoAlertTitle;
  if (undoAlertTitle)
  {
    [dictionary setObject:undoAlertTitle forKey:@"undoAlertTitle"];
  }

  undoAlertMessage = self->_undoAlertMessage;
  if (undoAlertMessage)
  {
    [dictionary setObject:undoAlertMessage forKey:@"undoAlertMessage"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteBOOLField();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_affectedContainers;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_undoAlertTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_undoAlertMessage)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_type;
  v10 = toCopy;
  *(toCopy + 40) = self->_destructive;
  if ([(ACProtobufDataclassAction *)self affectedContainersCount])
  {
    [v10 clearAffectedContainers];
    affectedContainersCount = [(ACProtobufDataclassAction *)self affectedContainersCount];
    if (affectedContainersCount)
    {
      v6 = affectedContainersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ACProtobufDataclassAction *)self affectedContainersAtIndex:i];
        [v10 addAffectedContainers:v8];
      }
    }
  }

  if (self->_undoAlertTitle)
  {
    [v10 setUndoAlertTitle:?];
  }

  v9 = v10;
  if (self->_undoAlertMessage)
  {
    [v10 setUndoAlertMessage:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_type;
  *(v5 + 40) = self->_destructive;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_affectedContainers;
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
        [v5 addAffectedContainers:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_undoAlertTitle copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_undoAlertMessage copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_type != *(equalCopy + 4))
  {
    goto LABEL_13;
  }

  if (self->_destructive)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  affectedContainers = self->_affectedContainers;
  if (affectedContainers | *(equalCopy + 1) && ![(NSMutableArray *)affectedContainers isEqual:?])
  {
    goto LABEL_13;
  }

  undoAlertTitle = self->_undoAlertTitle;
  if (undoAlertTitle | *(equalCopy + 4))
  {
    if (![(NSString *)undoAlertTitle isEqual:?])
    {
      goto LABEL_13;
    }
  }

  undoAlertMessage = self->_undoAlertMessage;
  if (undoAlertMessage | *(equalCopy + 3))
  {
    v8 = [(NSString *)undoAlertMessage isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_type;
  v4 = 2654435761 * self->_destructive;
  v5 = v4 ^ [(NSMutableArray *)self->_affectedContainers hash]^ v3;
  v6 = [(NSString *)self->_undoAlertTitle hash];
  return v5 ^ v6 ^ [(NSString *)self->_undoAlertMessage hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_type = *(fromCopy + 4);
  self->_destructive = *(fromCopy + 40);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 1);
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

        [(ACProtobufDataclassAction *)self addAffectedContainers:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 4))
  {
    [(ACProtobufDataclassAction *)self setUndoAlertTitle:?];
  }

  if (*(fromCopy + 3))
  {
    [(ACProtobufDataclassAction *)self setUndoAlertMessage:?];
  }
}

@end