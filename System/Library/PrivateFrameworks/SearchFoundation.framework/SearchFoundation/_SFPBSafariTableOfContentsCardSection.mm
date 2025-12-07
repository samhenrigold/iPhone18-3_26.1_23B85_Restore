@interface _SFPBSafariTableOfContentsCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSafariTableOfContentsCardSection)initWithDictionary:(id)dictionary;
- (_SFPBSafariTableOfContentsCardSection)initWithFacade:(id)facade;
- (_SFPBSafariTableOfContentsCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTableOfContentsItems:(id)items;
- (void)setAlgorithmVersion:(id)version;
- (void)setTableOfContentsItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSafariTableOfContentsCardSection

- (_SFPBSafariTableOfContentsCardSection)initWithFacade:(id)facade
{
  v23 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBSafariTableOfContentsCardSection *)self init];
  if (v5)
  {
    if ([facadeCopy hasTableOfContentsType])
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsType:](v5, "setTableOfContentsType:", [facadeCopy tableOfContentsType]);
    }

    if ([facadeCopy hasTableOfContentsSource])
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsSource:](v5, "setTableOfContentsSource:", [facadeCopy tableOfContentsSource]);
    }

    tableOfContentsItems = [facadeCopy tableOfContentsItems];
    if (tableOfContentsItems)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    tableOfContentsItems2 = [facadeCopy tableOfContentsItems];
    v9 = [tableOfContentsItems2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(tableOfContentsItems2);
          }

          v13 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:*(*(&v18 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [tableOfContentsItems2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [(_SFPBSafariTableOfContentsCardSection *)v5 setTableOfContentsItems:v7];
    algorithmVersion = [facadeCopy algorithmVersion];

    if (algorithmVersion)
    {
      algorithmVersion2 = [facadeCopy algorithmVersion];
      [(_SFPBSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:algorithmVersion2];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBSafariTableOfContentsCardSection)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = _SFPBSafariTableOfContentsCardSection;
  v5 = [(_SFPBSafariTableOfContentsCardSection *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tableOfContentsType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsType:](v5, "setTableOfContentsType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"tableOfContentsSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsSource:](v5, "setTableOfContentsSource:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"tableOfContentsItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v7;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBSafariTableOfContentsItem alloc] initWithDictionary:v14];
              [(_SFPBSafariTableOfContentsCardSection *)v5 addTableOfContentsItems:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v11);
      }

      v7 = v20;
      v6 = v21;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"algorithmVersion", v20, v21, v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBSafariTableOfContentsCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSafariTableOfContentsCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSafariTableOfContentsCardSection *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_algorithmVersion)
  {
    algorithmVersion = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
    v5 = [algorithmVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"algorithmVersion"];
  }

  if ([(NSArray *)self->_tableOfContentsItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_tableOfContentsItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"tableOfContentsItems"];
  }

  if (self->_tableOfContentsSource)
  {
    tableOfContentsSource = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsSource];
    if (tableOfContentsSource >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", tableOfContentsSource];
    }

    else
    {
      v15 = off_1E7ACE548[tableOfContentsSource];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"tableOfContentsSource"];
  }

  if (self->_tableOfContentsType)
  {
    tableOfContentsType = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsType];
    if (tableOfContentsType >= 3)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", tableOfContentsType];
    }

    else
    {
      v17 = off_1E7ACE548[tableOfContentsType];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"tableOfContentsType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_tableOfContentsSource) ^ (2654435761 * self->_tableOfContentsType);
  v4 = [(NSArray *)self->_tableOfContentsItems hash];
  return v3 ^ v4 ^ [(NSString *)self->_algorithmVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  tableOfContentsType = self->_tableOfContentsType;
  if (tableOfContentsType != [equalCopy tableOfContentsType])
  {
    goto LABEL_14;
  }

  tableOfContentsSource = self->_tableOfContentsSource;
  if (tableOfContentsSource != [equalCopy tableOfContentsSource])
  {
    goto LABEL_14;
  }

  tableOfContentsItems = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
  tableOfContentsItems2 = [equalCopy tableOfContentsItems];
  if ((tableOfContentsItems != 0) == (tableOfContentsItems2 == 0))
  {
    goto LABEL_13;
  }

  tableOfContentsItems3 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
  if (tableOfContentsItems3)
  {
    v10 = tableOfContentsItems3;
    tableOfContentsItems4 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
    tableOfContentsItems5 = [equalCopy tableOfContentsItems];
    v13 = [tableOfContentsItems4 isEqual:tableOfContentsItems5];

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  tableOfContentsItems = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
  tableOfContentsItems2 = [equalCopy algorithmVersion];
  if ((tableOfContentsItems != 0) != (tableOfContentsItems2 == 0))
  {
    algorithmVersion = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
    if (!algorithmVersion)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = algorithmVersion;
    algorithmVersion2 = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
    algorithmVersion3 = [equalCopy algorithmVersion];
    v18 = [algorithmVersion2 isEqual:algorithmVersion3];

    if (v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_13:
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsType])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsSource])
  {
    PBDataWriterWriteInt32Field();
  }

  tableOfContentsItems = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [tableOfContentsItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(tableOfContentsItems);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [tableOfContentsItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  algorithmVersion = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
  if (algorithmVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setAlgorithmVersion:(id)version
{
  self->_algorithmVersion = [version copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addTableOfContentsItems:(id)items
{
  itemsCopy = items;
  tableOfContentsItems = self->_tableOfContentsItems;
  v8 = itemsCopy;
  if (!tableOfContentsItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tableOfContentsItems;
    self->_tableOfContentsItems = array;

    itemsCopy = v8;
    tableOfContentsItems = self->_tableOfContentsItems;
  }

  [(NSArray *)tableOfContentsItems addObject:itemsCopy];
}

- (void)setTableOfContentsItems:(id)items
{
  self->_tableOfContentsItems = [items copy];

  MEMORY[0x1EEE66BB8]();
}

@end