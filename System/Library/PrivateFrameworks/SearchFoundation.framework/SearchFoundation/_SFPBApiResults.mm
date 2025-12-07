@interface _SFPBApiResults
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBApiResults)initWithDictionary:(id)dictionary;
- (_SFPBApiResults)initWithFacade:(id)facade;
- (_SFPBApiResults)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addFlights:(id)flights;
- (void)setFlights:(id)flights;
- (void)writeTo:(id)to;
@end

@implementation _SFPBApiResults

- (_SFPBApiResults)initWithFacade:(id)facade
{
  v21 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBApiResults *)self init];
  if (v5)
  {
    if ([facadeCopy hasStatus])
    {
      -[_SFPBApiResults setStatus:](v5, "setStatus:", [facadeCopy status]);
    }

    if ([facadeCopy hasResultType])
    {
      -[_SFPBApiResults setResultType:](v5, "setResultType:", [facadeCopy resultType]);
    }

    flights = [facadeCopy flights];
    if (flights)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    flights2 = [facadeCopy flights];
    v9 = [flights2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(flights2);
          }

          v13 = [[_SFPBFlight alloc] initWithFacade:*(*(&v16 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [flights2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(_SFPBApiResults *)v5 setFlights:v7];
    v14 = v5;
  }

  return v5;
}

- (_SFPBApiResults)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBApiResults;
  v5 = [(_SFPBApiResults *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBApiResults setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"resultType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBApiResults setResultType:](v5, "setResultType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"flights"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBFlight alloc] initWithDictionary:v14];
              [(_SFPBApiResults *)v5 addFlights:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v7 = v18;
      v6 = v19;
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBApiResults)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBApiResults *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBApiResults *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_flights count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_flights;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"flights"];
  }

  if (self->_resultType)
  {
    resultType = [(_SFPBApiResults *)self resultType];
    if (resultType)
    {
      if (resultType == 1)
      {
        v13 = @"1";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", resultType];
      }
    }

    else
    {
      v13 = @"0";
    }

    [dictionary setObject:v13 forKeyedSubscript:@"resultType"];
  }

  if (self->_status)
  {
    status = [(_SFPBApiResults *)self status];
    if (status >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
    }

    else
    {
      v15 = off_1E7ACE548[status];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"status"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    status = self->_status;
    if (status == [equalCopy status])
    {
      resultType = self->_resultType;
      if (resultType == [equalCopy resultType])
      {
        flights = [(_SFPBApiResults *)self flights];
        flights2 = [equalCopy flights];
        v9 = flights2;
        if ((flights != 0) != (flights2 == 0))
        {
          flights3 = [(_SFPBApiResults *)self flights];
          if (!flights3)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = flights3;
          flights4 = [(_SFPBApiResults *)self flights];
          flights5 = [equalCopy flights];
          v14 = [flights4 isEqual:flights5];

          if (v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_SFPBApiResults *)self status])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBApiResults *)self resultType])
  {
    PBDataWriterWriteInt32Field();
  }

  flights = [(_SFPBApiResults *)self flights];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [flights countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(flights);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [flights countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addFlights:(id)flights
{
  flightsCopy = flights;
  flights = self->_flights;
  v8 = flightsCopy;
  if (!flights)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_flights;
    self->_flights = array;

    flightsCopy = v8;
    flights = self->_flights;
  }

  [(NSArray *)flights addObject:flightsCopy];
}

- (void)setFlights:(id)flights
{
  self->_flights = [flights copy];

  MEMORY[0x1EEE66BB8]();
}

@end