@interface WFREPBSingleActionExecution
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInput:(id)input;
- (void)addProcessedParameters:(id)parameters;
- (void)addVariables:(id)variables;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBSingleActionExecution

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(WFREPBSingleActionExecution *)self setActionIdentifier:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WFREPBSingleActionExecution *)self addVariables:*(*(&v28 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(WFREPBSingleActionExecution *)self addProcessedParameters:*(*(&v24 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 4))
  {
    [(WFREPBSingleActionExecution *)self setSerializedParameters:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(fromCopy + 2);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(WFREPBSingleActionExecution *)self addInput:*(*(&v20 + 1) + 8 * k), v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_actionIdentifier hash];
  v4 = [(NSMutableArray *)self->_variables hash]^ v3;
  v5 = [(NSMutableArray *)self->_processedParameters hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_serializedParameters hash];
  return v6 ^ [(NSMutableArray *)self->_inputs hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((actionIdentifier = self->_actionIdentifier, !(actionIdentifier | equalCopy[1])) || -[NSString isEqual:](actionIdentifier, "isEqual:")) && ((variables = self->_variables, !(variables | equalCopy[5])) || -[NSMutableArray isEqual:](variables, "isEqual:")) && ((processedParameters = self->_processedParameters, !(processedParameters | equalCopy[3])) || -[NSMutableArray isEqual:](processedParameters, "isEqual:")) && ((serializedParameters = self->_serializedParameters, !(serializedParameters | equalCopy[4])) || -[NSData isEqual:](serializedParameters, "isEqual:")))
  {
    inputs = self->_inputs;
    if (inputs | equalCopy[2])
    {
      v10 = [(NSMutableArray *)inputs isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = self->_variables;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v37 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addVariables:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v10);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = self->_processedParameters;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      v18 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v33 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addProcessedParameters:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v16);
  }

  v20 = [(NSData *)self->_serializedParameters copyWithZone:zone];
  v21 = v5[4];
  v5[4] = v20;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = self->_inputs;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v29 + 1) + 8 * v26) copyWithZone:{zone, v29}];
        [v5 addInput:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v24);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setActionIdentifier:self->_actionIdentifier];
  if ([(WFREPBSingleActionExecution *)self variablesCount])
  {
    [toCopy clearVariables];
    variablesCount = [(WFREPBSingleActionExecution *)self variablesCount];
    if (variablesCount)
    {
      v5 = variablesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WFREPBSingleActionExecution *)self variablesAtIndex:i];
        [toCopy addVariables:v7];
      }
    }
  }

  if ([(WFREPBSingleActionExecution *)self processedParametersCount])
  {
    [toCopy clearProcessedParameters];
    processedParametersCount = [(WFREPBSingleActionExecution *)self processedParametersCount];
    if (processedParametersCount)
    {
      v9 = processedParametersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WFREPBSingleActionExecution *)self processedParametersAtIndex:j];
        [toCopy addProcessedParameters:v11];
      }
    }
  }

  if (self->_serializedParameters)
  {
    [toCopy setSerializedParameters:?];
  }

  if ([(WFREPBSingleActionExecution *)self inputsCount])
  {
    [toCopy clearInputs];
    inputsCount = [(WFREPBSingleActionExecution *)self inputsCount];
    if (inputsCount)
    {
      v13 = inputsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(WFREPBSingleActionExecution *)self inputAtIndex:k];
        [toCopy addInput:v15];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_actionIdentifier)
  {
    __assert_rtn("[WFREPBSingleActionExecution writeTo:]", "WFREPBSingleActionExecution.m", 247, "nil != self->_actionIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_variables;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_processedParameters;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  if (self->_serializedParameters)
  {
    PBDataWriterWriteDataField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_inputs;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (id)dictionaryRepresentation
{
  v44 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [dictionary setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  if ([(NSMutableArray *)self->_variables count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_variables, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = self->_variables;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"variables"];
  }

  if ([(NSMutableArray *)self->_processedParameters count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_processedParameters, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = self->_processedParameters;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"processedParameters"];
  }

  serializedParameters = self->_serializedParameters;
  if (serializedParameters)
  {
    [v4 setObject:serializedParameters forKey:@"serializedParameters"];
  }

  if ([(NSMutableArray *)self->_inputs count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_inputs, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = self->_inputs;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v29 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"input"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBSingleActionExecution;
  v4 = [(WFREPBSingleActionExecution *)&v8 description];
  dictionaryRepresentation = [(WFREPBSingleActionExecution *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addInput:(id)input
{
  inputCopy = input;
  inputs = self->_inputs;
  v8 = inputCopy;
  if (!inputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_inputs;
    self->_inputs = v6;

    inputCopy = v8;
    inputs = self->_inputs;
  }

  [(NSMutableArray *)inputs addObject:inputCopy];
}

- (void)addProcessedParameters:(id)parameters
{
  parametersCopy = parameters;
  processedParameters = self->_processedParameters;
  v8 = parametersCopy;
  if (!processedParameters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_processedParameters;
    self->_processedParameters = v6;

    parametersCopy = v8;
    processedParameters = self->_processedParameters;
  }

  [(NSMutableArray *)processedParameters addObject:parametersCopy];
}

- (void)addVariables:(id)variables
{
  variablesCopy = variables;
  variables = self->_variables;
  v8 = variablesCopy;
  if (!variables)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_variables;
    self->_variables = v6;

    variablesCopy = v8;
    variables = self->_variables;
  }

  [(NSMutableArray *)variables addObject:variablesCopy];
}

@end