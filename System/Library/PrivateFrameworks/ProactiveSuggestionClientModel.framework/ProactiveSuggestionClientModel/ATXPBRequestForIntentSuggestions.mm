@interface ATXPBRequestForIntentSuggestions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBundleIds:(id)ids;
- (void)addIntentClassNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBRequestForIntentSuggestions

- (void)addBundleIds:(id)ids
{
  idsCopy = ids;
  bundleIds = self->_bundleIds;
  v8 = idsCopy;
  if (!bundleIds)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bundleIds;
    self->_bundleIds = v6;

    idsCopy = v8;
    bundleIds = self->_bundleIds;
  }

  [(NSMutableArray *)bundleIds addObject:idsCopy];
}

- (void)addIntentClassNames:(id)names
{
  namesCopy = names;
  intentClassNames = self->_intentClassNames;
  v8 = namesCopy;
  if (!intentClassNames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_intentClassNames;
    self->_intentClassNames = v6;

    namesCopy = v8;
    intentClassNames = self->_intentClassNames;
  }

  [(NSMutableArray *)intentClassNames addObject:namesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBRequestForIntentSuggestions;
  v4 = [(ATXPBRequestForIntentSuggestions *)&v8 description];
  dictionaryRepresentation = [(ATXPBRequestForIntentSuggestions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  base = self->_base;
  if (base)
  {
    dictionaryRepresentation = [(ATXPBRequestForSuggestions *)base dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"base"];
  }

  bundleIds = self->_bundleIds;
  if (bundleIds)
  {
    [dictionary setObject:bundleIds forKey:@"bundleIds"];
  }

  intentClassNames = self->_intentClassNames;
  if (intentClassNames)
  {
    [dictionary setObject:intentClassNames forKey:@"intentClassNames"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_limit];
    [dictionary setObject:v8 forKey:@"limit"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_base)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_bundleIds;
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

        PBDataWriterWriteStringField();
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
  v10 = self->_intentClassNames;
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

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_base)
  {
    [toCopy setBase:?];
  }

  if ([(ATXPBRequestForIntentSuggestions *)self bundleIdsCount])
  {
    [toCopy clearBundleIds];
    bundleIdsCount = [(ATXPBRequestForIntentSuggestions *)self bundleIdsCount];
    if (bundleIdsCount)
    {
      v5 = bundleIdsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBRequestForIntentSuggestions *)self bundleIdsAtIndex:i];
        [toCopy addBundleIds:v7];
      }
    }
  }

  if ([(ATXPBRequestForIntentSuggestions *)self intentClassNamesCount])
  {
    [toCopy clearIntentClassNames];
    intentClassNamesCount = [(ATXPBRequestForIntentSuggestions *)self intentClassNamesCount];
    if (intentClassNamesCount)
    {
      v9 = intentClassNamesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXPBRequestForIntentSuggestions *)self intentClassNamesAtIndex:j];
        [toCopy addIntentClassNames:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_limit;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ATXPBRequestForSuggestions *)self->_base copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_bundleIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addBundleIds:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_intentClassNames;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addIntentClassNames:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  if (*&self->_has)
  {
    *(v5 + 32) = self->_limit;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  base = self->_base;
  if (base | *(equalCopy + 1))
  {
    if (![(ATXPBRequestForSuggestions *)base isEqual:?])
    {
      goto LABEL_12;
    }
  }

  bundleIds = self->_bundleIds;
  if (bundleIds | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)bundleIds isEqual:?])
    {
      goto LABEL_12;
    }
  }

  intentClassNames = self->_intentClassNames;
  if (intentClassNames | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)intentClassNames isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_limit == *(equalCopy + 8))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(ATXPBRequestForSuggestions *)self->_base hash];
  v4 = [(NSMutableArray *)self->_bundleIds hash];
  v5 = [(NSMutableArray *)self->_intentClassNames hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_limit;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  base = self->_base;
  v6 = *(fromCopy + 1);
  if (base)
  {
    if (v6)
    {
      [(ATXPBRequestForSuggestions *)base mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ATXPBRequestForIntentSuggestions *)self setBase:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ATXPBRequestForIntentSuggestions *)self addBundleIds:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(fromCopy + 3);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ATXPBRequestForIntentSuggestions *)self addIntentClassNames:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  if (*(fromCopy + 36))
  {
    self->_limit = *(fromCopy + 8);
    *&self->_has |= 1u;
  }
}

@end