@interface _SFPBTableAlignmentSchema
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTableAlignmentSchema)initWithDictionary:(id)dictionary;
- (_SFPBTableAlignmentSchema)initWithFacade:(id)facade;
- (_SFPBTableAlignmentSchema)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addTableColumnAlignment:(id)alignment;
- (void)setTableColumnAlignment:(id)alignment;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTableAlignmentSchema

- (_SFPBTableAlignmentSchema)initWithFacade:(id)facade
{
  v25 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBTableAlignmentSchema *)self init];
  if (v5)
  {
    tableColumnAlignment = [facadeCopy tableColumnAlignment];
    if (tableColumnAlignment)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    tableColumnAlignment2 = [facadeCopy tableColumnAlignment];
    v9 = [tableColumnAlignment2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(tableColumnAlignment2);
          }

          v13 = [[_SFPBTableColumnAlignment alloc] initWithFacade:*(*(&v20 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [tableColumnAlignment2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [(_SFPBTableAlignmentSchema *)v5 setTableColumnAlignments:v7];
    metadata = [facadeCopy metadata];

    if (metadata)
    {
      v15 = [_SFPBStringDictionary alloc];
      metadata2 = [facadeCopy metadata];
      v17 = [(_SFPBStringDictionary *)v15 initWithNSDictionary:metadata2];
      [(_SFPBTableAlignmentSchema *)v5 setMetadata:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBTableAlignmentSchema)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = _SFPBTableAlignmentSchema;
  v5 = [(_SFPBTableAlignmentSchema *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tableColumnAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [_SFPBTableColumnAlignment alloc];
              v14 = [(_SFPBTableColumnAlignment *)v13 initWithDictionary:v12, v19];
              [(_SFPBTableAlignmentSchema *)v5 addTableColumnAlignment:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"metadata", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBStringDictionary alloc] initWithDictionary:v15];
      [(_SFPBTableAlignmentSchema *)v5 setMetadata:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (_SFPBTableAlignmentSchema)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTableAlignmentSchema *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTableAlignmentSchema *)self dictionaryRepresentation];
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
  if (self->_metadata)
  {
    metadata = [(_SFPBTableAlignmentSchema *)self metadata];
    dictionaryRepresentation = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"metadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"metadata"];
    }
  }

  if ([(NSArray *)self->_tableColumnAlignments count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_tableColumnAlignments;
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

    [dictionary setObject:array forKeyedSubscript:@"tableColumnAlignment"];
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

  tableColumnAlignments = [(_SFPBTableAlignmentSchema *)self tableColumnAlignments];
  tableColumnAlignments2 = [equalCopy tableColumnAlignments];
  if ((tableColumnAlignments != 0) == (tableColumnAlignments2 == 0))
  {
    goto LABEL_11;
  }

  tableColumnAlignments3 = [(_SFPBTableAlignmentSchema *)self tableColumnAlignments];
  if (tableColumnAlignments3)
  {
    v8 = tableColumnAlignments3;
    tableColumnAlignments4 = [(_SFPBTableAlignmentSchema *)self tableColumnAlignments];
    tableColumnAlignments5 = [equalCopy tableColumnAlignments];
    v11 = [tableColumnAlignments4 isEqual:tableColumnAlignments5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  tableColumnAlignments = [(_SFPBTableAlignmentSchema *)self metadata];
  tableColumnAlignments2 = [equalCopy metadata];
  if ((tableColumnAlignments != 0) != (tableColumnAlignments2 == 0))
  {
    metadata = [(_SFPBTableAlignmentSchema *)self metadata];
    if (!metadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = metadata;
    metadata2 = [(_SFPBTableAlignmentSchema *)self metadata];
    metadata3 = [equalCopy metadata];
    v16 = [metadata2 isEqual:metadata3];

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
  tableColumnAlignments = [(_SFPBTableAlignmentSchema *)self tableColumnAlignments];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [tableColumnAlignments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(tableColumnAlignments);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [tableColumnAlignments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  metadata = [(_SFPBTableAlignmentSchema *)self metadata];
  if (metadata)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)addTableColumnAlignment:(id)alignment
{
  alignmentCopy = alignment;
  tableColumnAlignments = self->_tableColumnAlignments;
  v8 = alignmentCopy;
  if (!tableColumnAlignments)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tableColumnAlignments;
    self->_tableColumnAlignments = array;

    alignmentCopy = v8;
    tableColumnAlignments = self->_tableColumnAlignments;
  }

  [(NSArray *)tableColumnAlignments addObject:alignmentCopy];
}

- (void)setTableColumnAlignment:(id)alignment
{
  self->_tableColumnAlignments = [alignment copy];

  MEMORY[0x1EEE66BB8]();
}

@end