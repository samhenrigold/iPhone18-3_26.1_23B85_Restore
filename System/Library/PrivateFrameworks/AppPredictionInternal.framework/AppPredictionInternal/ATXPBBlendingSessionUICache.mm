@interface ATXPBBlendingSessionUICache
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSuggestion:(id)suggestion;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBBlendingSessionUICache

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
  v8.super_class = ATXPBBlendingSessionUICache;
  v4 = [(ATXPBBlendingSessionUICache *)&v8 description];
  dictionaryRepresentation = [(ATXPBBlendingSessionUICache *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_suggestions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"suggestion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_consumerSubType)
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
  if (self->_consumerSubType)
  {
    [toCopy setConsumerSubType:?];
  }

  if ([(ATXPBBlendingSessionUICache *)self suggestionsCount])
  {
    [toCopy clearSuggestions];
    suggestionsCount = [(ATXPBBlendingSessionUICache *)self suggestionsCount];
    if (suggestionsCount)
    {
      v5 = suggestionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBBlendingSessionUICache *)self suggestionAtIndex:i];
        [toCopy addSuggestion:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_suggestions;
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
        [v5 addSuggestion:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((consumerSubType = self->_consumerSubType, !(consumerSubType | equalCopy[1])) || -[NSString isEqual:](consumerSubType, "isEqual:")))
  {
    suggestions = self->_suggestions;
    if (suggestions | equalCopy[2])
    {
      v7 = [(NSMutableArray *)suggestions isEqual:?];
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
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(ATXPBBlendingSessionUICache *)self setConsumerSubType:?];
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

        [(ATXPBBlendingSessionUICache *)self addSuggestion:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end