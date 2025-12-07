@interface ATXPBSuggestionCollection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSuggestions:(id)suggestions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBSuggestionCollection

- (void)addSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestions = self->_suggestions;
  v8 = suggestionsCopy;
  if (!suggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_suggestions;
    self->_suggestions = v6;

    suggestionsCopy = v8;
    suggestions = self->_suggestions;
  }

  [(NSMutableArray *)suggestions addObject:suggestionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSuggestionCollection;
  v4 = [(ATXPBSuggestionCollection *)&v8 description];
  dictionaryRepresentation = [(ATXPBSuggestionCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  contextTitle = self->_contextTitle;
  if (contextTitle)
  {
    [dictionary setObject:contextTitle forKey:@"contextTitle"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_suggestions;
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

    [v4 setObject:v6 forKey:@"suggestions"];
  }

  sectionIdentifier = self->_sectionIdentifier;
  if (sectionIdentifier)
  {
    [v4 setObject:sectionIdentifier forKey:@"sectionIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_contextTitle)
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

  if (self->_sectionIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_contextTitle)
  {
    [toCopy setContextTitle:?];
  }

  if ([(ATXPBSuggestionCollection *)self suggestionsCount])
  {
    [toCopy clearSuggestions];
    suggestionsCount = [(ATXPBSuggestionCollection *)self suggestionsCount];
    if (suggestionsCount)
    {
      v5 = suggestionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBSuggestionCollection *)self suggestionsAtIndex:i];
        [toCopy addSuggestions:v7];
      }
    }
  }

  if (self->_sectionIdentifier)
  {
    [toCopy setSectionIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_contextTitle copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_suggestions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{zone, v17}];
        [v5 addSuggestions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_sectionIdentifier copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((contextTitle = self->_contextTitle, !(contextTitle | equalCopy[1])) || -[NSString isEqual:](contextTitle, "isEqual:")) && ((suggestions = self->_suggestions, !(suggestions | equalCopy[3])) || -[NSMutableArray isEqual:](suggestions, "isEqual:")))
  {
    sectionIdentifier = self->_sectionIdentifier;
    if (sectionIdentifier | equalCopy[2])
    {
      v8 = [(NSString *)sectionIdentifier isEqual:?];
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
  v3 = [(NSString *)self->_contextTitle hash];
  v4 = [(NSMutableArray *)self->_suggestions hash]^ v3;
  return v4 ^ [(NSString *)self->_sectionIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(ATXPBSuggestionCollection *)self setContextTitle:?];
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

        [(ATXPBSuggestionCollection *)self addSuggestions:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBSuggestionCollection *)self setSectionIdentifier:?];
  }
}

@end