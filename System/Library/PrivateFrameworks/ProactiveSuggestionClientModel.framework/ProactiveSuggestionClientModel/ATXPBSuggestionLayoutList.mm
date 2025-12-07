@interface ATXPBSuggestionLayoutList
- (BOOL)isEqual:(id)equal;
- (id)clearLayouts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)layoutAtIndex:(id *)index;
- (id)layoutsCount;
- (uint64_t)addLayout:(uint64_t)layout;
- (uint64_t)layouts;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setLayouts:(uint64_t)layouts;
- (void)writeTo:(id)to;
@end

@implementation ATXPBSuggestionLayoutList

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSuggestionLayoutList;
  v4 = [(ATXPBSuggestionLayoutList *)&v8 description];
  dictionaryRepresentation = [(ATXPBSuggestionLayoutList *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_layouts count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_layouts, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_layouts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"layout"];
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
  v5 = self->_layouts;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_layouts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [(ATXPBSuggestionLayoutList *)v5 addLayout:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    layouts = self->_layouts;
    if (layouts | equalCopy[1])
    {
      v6 = [(NSMutableArray *)layouts isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)clearLayouts
{
  if (result)
  {
    return [result[1] removeAllObjects];
  }

  return result;
}

- (uint64_t)addLayout:(uint64_t)layout
{
  v3 = a2;
  v4 = v3;
  if (layout)
  {
    v5 = *(layout + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(layout + 8);
      *(layout + 8) = v6;

      v5 = *(layout + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)layoutsCount
{
  if (result)
  {
    return [result[1] count];
  }

  return result;
}

- (id)layoutAtIndex:(id *)index
{
  if (index)
  {
    index = [index[1] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (void)copyTo:(uint64_t)to
{
  v7 = a2;
  if (to && [*(to + 8) count])
  {
    if (v7)
    {
      [v7[1] removeAllObjects];
    }

    v3 = [*(to + 8) count];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = [*(to + 8) objectAtIndex:i];
        [(ATXPBSuggestionLayoutList *)v7 addLayout:v6];
      }
    }
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v13 = *MEMORY[0x1E69E9840];
  if (from)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(a2 + 8);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(ATXPBSuggestionLayoutList *)from addLayout:?];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (uint64_t)layouts
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setLayouts:(uint64_t)layouts
{
  if (layouts)
  {
    objc_storeStrong((layouts + 8), a2);
  }
}

@end