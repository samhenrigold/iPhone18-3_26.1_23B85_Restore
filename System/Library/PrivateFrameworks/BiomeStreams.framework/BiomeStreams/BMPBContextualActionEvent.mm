@interface BMPBContextualActionEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContent:(id)content;
- (void)addParameter:(id)parameter;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBContextualActionEvent

- (void)addContent:(id)content
{
  contentCopy = content;
  contents = self->_contents;
  v8 = contentCopy;
  if (!contents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contents;
    self->_contents = v6;

    contentCopy = v8;
    contents = self->_contents;
  }

  [(NSMutableArray *)contents addObject:contentCopy];
}

- (void)addParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = self->_parameters;
  v8 = parameterCopy;
  if (!parameters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_parameters;
    self->_parameters = v6;

    parameterCopy = v8;
    parameters = self->_parameters;
  }

  [(NSMutableArray *)parameters addObject:parameterCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBContextualActionEvent;
  v4 = [(BMPBContextualActionEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBContextualActionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  appName = self->_appName;
  if (appName)
  {
    [v4 setObject:appName forKey:@"appName"];
  }

  actionName = self->_actionName;
  if (actionName)
  {
    [v4 setObject:actionName forKey:@"actionName"];
  }

  contents = self->_contents;
  if (contents)
  {
    [v4 setObject:contents forKey:@"content"];
  }

  parameters = self->_parameters;
  if (parameters)
  {
    [v4 setObject:parameters forKey:@"parameter"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionName)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_contents;
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

        PBDataWriterWriteDataField();
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
  v10 = self->_parameters;
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

        PBDataWriterWriteDataField();
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
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_appName)
  {
    [toCopy setAppName:?];
  }

  if (self->_actionName)
  {
    [toCopy setActionName:?];
  }

  if ([(BMPBContextualActionEvent *)self contentsCount])
  {
    [toCopy clearContents];
    contentsCount = [(BMPBContextualActionEvent *)self contentsCount];
    if (contentsCount)
    {
      v5 = contentsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBContextualActionEvent *)self contentAtIndex:i];
        [toCopy addContent:v7];
      }
    }
  }

  if ([(BMPBContextualActionEvent *)self parametersCount])
  {
    [toCopy clearParameters];
    parametersCount = [(BMPBContextualActionEvent *)self parametersCount];
    if (parametersCount)
    {
      v9 = parametersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBContextualActionEvent *)self parameterAtIndex:j];
        [toCopy addParameter:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_appName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_actionName copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_contents;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v29 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addContent:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_parameters;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{zone, v25}];
        [v5 addParameter:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[4])) || -[NSString isEqual:](identifier, "isEqual:")) && ((appName = self->_appName, !(appName | equalCopy[2])) || -[NSString isEqual:](appName, "isEqual:")) && ((actionName = self->_actionName, !(actionName | equalCopy[1])) || -[NSString isEqual:](actionName, "isEqual:")) && ((contents = self->_contents, !(contents | equalCopy[3])) || -[NSMutableArray isEqual:](contents, "isEqual:")))
  {
    parameters = self->_parameters;
    if (parameters | equalCopy[5])
    {
      v10 = [(NSMutableArray *)parameters isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_appName hash]^ v3;
  v5 = [(NSString *)self->_actionName hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_contents hash];
  return v6 ^ [(NSMutableArray *)self->_parameters hash];
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(BMPBContextualActionEvent *)self setIdentifier:?];
  }

  if (*(fromCopy + 2))
  {
    [(BMPBContextualActionEvent *)self setAppName:?];
  }

  if (*(fromCopy + 1))
  {
    [(BMPBContextualActionEvent *)self setActionName:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BMPBContextualActionEvent *)self addContent:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 5);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(BMPBContextualActionEvent *)self addParameter:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end