@interface RRSchemaProvisionalRREntityPoolResolveEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addQueryResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRREntityPoolResolveEnded

- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = RRSchemaProvisionalRREntityPoolResolveEnded;
  v5 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"queryResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [RRSchemaProvisionalRRAnnotatedEntity alloc];
              v14 = [(RRSchemaProvisionalRRAnnotatedEntity *)v13 initWithDictionary:v12, v18];
              [(RRSchemaProvisionalRREntityPoolResolveEnded *)v5 addQueryResults:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"outcome", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRREntityPoolResolveEnded setOutcome:](v5, "setOutcome:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self outcome]- 1;
    if (v4 > 3)
    {
      v5 = @"RRRESOLVEOUTCOME_UNKNOWN";
    }

    else
    {
      v5 = off_1E8651DA0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"outcome"];
  }

  if ([(NSArray *)self->_queryResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_queryResults;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"queryResults"];
  }

  [(RRSchemaProvisionalRREntityPoolResolveEnded *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_queryResults hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_outcome;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  queryResults = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self queryResults];
  queryResults2 = [equalCopy queryResults];
  v7 = queryResults2;
  if ((queryResults != 0) == (queryResults2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  queryResults3 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self queryResults];
  if (queryResults3)
  {
    v9 = queryResults3;
    queryResults4 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self queryResults];
    queryResults5 = [equalCopy queryResults];
    v12 = [queryResults4 isEqual:queryResults5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((equalCopy[20] & 1) != (*&self->_has & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    outcome = self->_outcome;
    if (outcome != [equalCopy outcome])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_queryResults;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addQueryResults:(id)results
{
  resultsCopy = results;
  queryResults = self->_queryResults;
  v8 = resultsCopy;
  if (!queryResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_queryResults;
    self->_queryResults = array;

    resultsCopy = v8;
    queryResults = self->_queryResults;
  }

  [(NSArray *)queryResults addObject:resultsCopy];
}

@end