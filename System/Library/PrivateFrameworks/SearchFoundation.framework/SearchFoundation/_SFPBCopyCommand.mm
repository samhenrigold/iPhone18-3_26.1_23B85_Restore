@interface _SFPBCopyCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCopyCommand)initWithDictionary:(id)dictionary;
- (_SFPBCopyCommand)initWithFacade:(id)facade;
- (_SFPBCopyCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addCopyableItems:(id)items;
- (void)setCopyableItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCopyCommand

- (_SFPBCopyCommand)initWithFacade:(id)facade
{
  v25 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBCopyCommand *)self init];
  if (v5)
  {
    copyableItem = [facadeCopy copyableItem];

    if (copyableItem)
    {
      v7 = [_SFPBCopyItem alloc];
      copyableItem2 = [facadeCopy copyableItem];
      v9 = [(_SFPBCopyItem *)v7 initWithFacade:copyableItem2];
      [(_SFPBCopyCommand *)v5 setCopyableItem:v9];
    }

    copyableItems = [facadeCopy copyableItems];
    if (copyableItems)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    copyableItems2 = [facadeCopy copyableItems];
    v13 = [copyableItems2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(copyableItems2);
          }

          v17 = [[_SFPBCopyItem alloc] initWithFacade:*(*(&v20 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [copyableItems2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(_SFPBCopyCommand *)v5 setCopyableItems:v11];
    v18 = v5;
  }

  return v5;
}

- (_SFPBCopyCommand)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = _SFPBCopyCommand;
  v5 = [(_SFPBCopyCommand *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"copyableItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCopyItem alloc] initWithDictionary:v6];
      [(_SFPBCopyCommand *)v5 setCopyableItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"copyableItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBCopyItem alloc] initWithDictionary:v14];
              [(_SFPBCopyCommand *)v5 addCopyableItems:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBCopyCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCopyCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCopyCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_copyableItem)
  {
    copyableItem = [(_SFPBCopyCommand *)self copyableItem];
    dictionaryRepresentation = [copyableItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"copyableItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"copyableItem"];
    }
  }

  if ([(NSArray *)self->_copyableItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_copyableItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"copyableItems"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  copyableItem = [(_SFPBCopyCommand *)self copyableItem];
  copyableItem2 = [equalCopy copyableItem];
  if ((copyableItem != 0) == (copyableItem2 == 0))
  {
    goto LABEL_11;
  }

  copyableItem3 = [(_SFPBCopyCommand *)self copyableItem];
  if (copyableItem3)
  {
    v8 = copyableItem3;
    copyableItem4 = [(_SFPBCopyCommand *)self copyableItem];
    copyableItem5 = [equalCopy copyableItem];
    v11 = [copyableItem4 isEqual:copyableItem5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  copyableItem = [(_SFPBCopyCommand *)self copyableItems];
  copyableItem2 = [equalCopy copyableItems];
  if ((copyableItem != 0) != (copyableItem2 == 0))
  {
    copyableItems = [(_SFPBCopyCommand *)self copyableItems];
    if (!copyableItems)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = copyableItems;
    copyableItems2 = [(_SFPBCopyCommand *)self copyableItems];
    copyableItems3 = [equalCopy copyableItems];
    v16 = [copyableItems2 isEqual:copyableItems3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  copyableItem = [(_SFPBCopyCommand *)self copyableItem];
  if (copyableItem)
  {
    PBDataWriterWriteSubmessage();
  }

  copyableItems = [(_SFPBCopyCommand *)self copyableItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [copyableItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(copyableItems);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [copyableItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addCopyableItems:(id)items
{
  itemsCopy = items;
  copyableItems = self->_copyableItems;
  v8 = itemsCopy;
  if (!copyableItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_copyableItems;
    self->_copyableItems = array;

    itemsCopy = v8;
    copyableItems = self->_copyableItems;
  }

  [(NSArray *)copyableItems addObject:itemsCopy];
}

- (void)setCopyableItems:(id)items
{
  self->_copyableItems = [items copy];

  MEMORY[0x1EEE66BB8]();
}

@end