@interface CCToolKitToolCompoundPredicate
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolCompoundPredicate)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolCompoundPredicate)initWithOperatorType:(unsigned int)type operands:(id)operands error:(id *)error;
- (NSArray)operands;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolCompoundPredicate

- (CCToolKitToolCompoundPredicate)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v38 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"operatorType"];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"operands"];
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      v37 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v12 = 0;
        goto LABEL_24;
      }

      v29 = unsignedIntegerValue;
      v30 = v16;
      v31 = v10;
      v17 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v14;
      v18 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = *(*(&v33 + 1) + 8 * i);
            v23 = [CCToolKitToolComparisonPredicate alloc];
            v32 = 0;
            v24 = [(CCToolKitToolComparisonPredicate *)v23 initWithJSONDictionary:v22 error:&v32];
            v25 = v32;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v27 = v25;
              CCSetError();

              v12 = 0;
              v10 = v31;
              v16 = v30;
              goto LABEL_24;
            }

            [v17 addObject:v24];
          }

          v19 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v19);
      }

      v10 = v31;
      unsignedIntegerValue = v29;
      v16 = v30;
    }

    else
    {
      v17 = 0;
      v16 = v8;
    }

    v12 = [[CCToolKitToolCompoundPredicate alloc] initWithOperatorType:unsignedIntegerValue operands:v17 error:error];
    v14 = v17;
LABEL_24:

    v8 = v16;
    goto LABEL_25;
  }

  CCSetError();
  v12 = 0;
LABEL_25:

  return v12;
}

- (id)jsonDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolCompoundPredicate operatorType](self, "operatorType")}];
  [v3 setObject:v4 forKeyedSubscript:@"operatorType"];

  if (self->_operands)
  {
    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    operands = [(CCToolKitToolCompoundPredicate *)self operands];
    v7 = [operands countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(operands);
          }

          jsonDictionary = [*(*(&v14 + 1) + 8 * i) jsonDictionary];
          [v5 addObject:jsonDictionary];
        }

        v8 = [operands countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"operands"];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_operatorType];
  blockCopy[2](blockCopy, v7);

  if (self->_operands)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedSubMessageValue:self->_operands];
    blockCopy[2](blockCopy, v8);
  }
}

- (NSArray)operands
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_operands copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_48;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_47;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_47;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v30 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v31 = [CCToolKitToolComparisonPredicate alloc];
        v43 = 0;
        v32 = [(CCItemMessage *)v31 initWithData:v30 error:&v43];
        v8 = v43;
        if (!v8 && v32)
        {
          [v9 addObject:v32];
        }
      }

      else
      {
        if ((v21 >> 3) == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v26 = *v6;
            v27 = *&v5[v26];
            v28 = v27 + 1;
            if (v27 == -1 || v28 > *&v5[*v7])
            {
              break;
            }

            v29 = *(*&v5[*v11] + v27);
            *&v5[v26] = v28;
            v25 |= (v29 & 0x7F) << v23;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_39;
            }

            v23 += 7;
            v20 = v24++ >= 9;
            if (v20)
            {
              LODWORD(v25) = 0;
              goto LABEL_41;
            }
          }

          *&v5[*v10] = 1;
LABEL_39:
          if (*&v5[*v10])
          {
            LODWORD(v25) = 0;
          }

LABEL_41:
          v8 = 0;
          self->_operatorType = v25;
LABEL_44:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_48;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_44;
        }

        v33 = objc_opt_class();
        v30 = NSStringFromClass(v33);
        v8 = CCSkipFieldErrorForMessage();
      }

      break;
    }

    goto LABEL_44;
  }

  v9 = 0;
LABEL_47:
  v8 = 0;
LABEL_48:
  v34 = [v9 copy];
  operands = self->_operands;
  self->_operands = v34;

  if (v8)
  {
    CCSetError();
    v36 = 0;
    v37 = dataCopy;
  }

  else
  {
    v37 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  return v36;
}

- (CCToolKitToolCompoundPredicate)initWithOperatorType:(unsigned int)type operands:(id)operands error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  operandsCopy = operands;
  v9 = objc_opt_new();
  if (!type)
  {
    v11 = 0;
    if (!operandsCopy)
    {
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    v27 = v11;
    v12 = CCValidateArrayValues();
    v13 = v11;

    if (!v12)
    {
      CCSetError();
      selfCopy = 0;
      v11 = v13;
      goto LABEL_18;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = operandsCopy;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          data = [*(*(&v23 + 1) + 8 * v18) data];
          CCPBDataWriterWriteDataField();

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v16);
    }

    v11 = v13;
    goto LABEL_15;
  }

  v28 = 0;
  v10 = CCValidateEnumField();
  v11 = 0;
  if (!v10)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  CCPBDataWriterWriteUint32Field();
  if (operandsCopy)
  {
    goto LABEL_6;
  }

LABEL_15:
  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_18:

  return selfCopy;
}

@end