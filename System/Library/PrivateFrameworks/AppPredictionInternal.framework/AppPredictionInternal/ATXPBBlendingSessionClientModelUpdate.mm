@interface ATXPBBlendingSessionClientModelUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSuggestion:(id)suggestion;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBBlendingSessionClientModelUpdate

- (void)addSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  suggestions = self->_suggestions;
  v8 = suggestionCopy;
  if (!suggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_suggestions;
    self->_suggestions = v6;

    suggestionCopy = v8;
    suggestions = self->_suggestions;
  }

  [(NSMutableArray *)suggestions addObject:suggestionCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBBlendingSessionClientModelUpdate;
  v4 = [(ATXPBBlendingSessionClientModelUpdate *)&v8 description];
  dictionaryRepresentation = [(ATXPBBlendingSessionClientModelUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [dictionary setObject:clientModelId forKey:@"clientModelId"];
  }

  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion)
  {
    [v4 setObject:clientModelVersion forKey:@"clientModelVersion"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_suggestions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"suggestion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_suggestions;
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
  if (self->_clientModelId)
  {
    [toCopy setClientModelId:?];
  }

  if (self->_clientModelVersion)
  {
    [toCopy setClientModelVersion:?];
  }

  if ([(ATXPBBlendingSessionClientModelUpdate *)self suggestionsCount])
  {
    [toCopy clearSuggestions];
    suggestionsCount = [(ATXPBBlendingSessionClientModelUpdate *)self suggestionsCount];
    if (suggestionsCount)
    {
      v5 = suggestionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBBlendingSessionClientModelUpdate *)self suggestionAtIndex:i];
        [toCopy addSuggestion:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_clientModelVersion copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_suggestions;
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
        [v5 addSuggestion:v15];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((clientModelId = self->_clientModelId, !(clientModelId | equalCopy[1])) || -[NSString isEqual:](clientModelId, "isEqual:")) && ((clientModelVersion = self->_clientModelVersion, !(clientModelVersion | equalCopy[2])) || -[NSString isEqual:](clientModelVersion, "isEqual:")))
  {
    suggestions = self->_suggestions;
    if (suggestions | equalCopy[3])
    {
      v8 = [(NSMutableArray *)suggestions isEqual:?];
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
  v3 = [(NSString *)self->_clientModelId hash];
  v4 = [(NSString *)self->_clientModelVersion hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_suggestions hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(ATXPBBlendingSessionClientModelUpdate *)self setClientModelId:?];
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBBlendingSessionClientModelUpdate *)self setClientModelVersion:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 3);
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

        [(ATXPBBlendingSessionClientModelUpdate *)self addSuggestion:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end