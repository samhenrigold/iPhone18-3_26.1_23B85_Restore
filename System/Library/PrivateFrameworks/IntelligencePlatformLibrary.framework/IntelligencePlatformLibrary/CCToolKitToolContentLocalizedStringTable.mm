@interface CCToolKitToolContentLocalizedStringTable
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolContentLocalizedStringTable)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolContentLocalizedStringTable)initWithLocale:(id)locale entries:(id)entries error:(id *)error;
- (NSArray)entries;
- (NSString)locale;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolContentLocalizedStringTable

- (CCToolKitToolContentLocalizedStringTable)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v35 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"entries"];
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      v34 = v8;
      v12 = CCValidateIsInstanceOfExpectedClass();
      v13 = v8;

      if ((v12 & 1) == 0)
      {
        CCSetError();
        v25 = 0;
        goto LABEL_21;
      }

      v27 = v9;
      selfCopy = self;
      v14 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v31;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v30 + 1) + 8 * i);
            v20 = [CCToolKitToolContentLocalizedStringTableEntriesEntry alloc];
            v29 = 0;
            v21 = [(CCToolKitToolContentLocalizedStringTableEntriesEntry *)v20 initWithJSONDictionary:v19 error:&v29];
            v22 = v29;
            if (v21)
            {
              v23 = v22 == 0;
            }

            else
            {
              v23 = 0;
            }

            if (!v23)
            {
              v24 = v22;
              CCSetError();

              v25 = 0;
              v9 = v27;
              self = selfCopy;
              goto LABEL_21;
            }

            [v14 addObject:v21];
          }

          v16 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v16);
      }

      v9 = v27;
      self = selfCopy;
    }

    else
    {
      v14 = 0;
      v13 = v8;
    }

    v25 = [[CCToolKitToolContentLocalizedStringTable alloc] initWithLocale:v9 entries:v14 error:error];
    v11 = v14;
LABEL_21:

    v8 = v13;
    goto LABEL_22;
  }

  CCSetError();
  v25 = 0;
LABEL_22:

  return v25;
}

- (id)jsonDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_locale)
  {
    locale = [(CCToolKitToolContentLocalizedStringTable *)self locale];
    [v3 setObject:locale forKeyedSubscript:@"locale"];
  }

  if (self->_entries)
  {
    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    entries = [(CCToolKitToolContentLocalizedStringTable *)self entries];
    v7 = [entries countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(entries);
          }

          jsonDictionary = [*(*(&v14 + 1) + 8 * i) jsonDictionary];
          [v5 addObject:jsonDictionary];
        }

        v8 = [entries countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"entries"];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_locale)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_locale];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_entries)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_entries];
    blockCopy[2](blockCopy, v7);
  }
}

- (NSArray)entries
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_entries copyItems:1];

  return v2;
}

- (NSString)locale
{
  v2 = [(NSString *)self->_locale copy];

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
        goto LABEL_38;
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
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_37;
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
        goto LABEL_37;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        locale = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v25 = [CCToolKitToolContentLocalizedStringTableEntriesEntry alloc];
        v37 = 0;
        v26 = [(CCItemMessage *)v25 initWithData:locale error:&v37];
        v8 = v37;
        if (!v8 && v26)
        {
          [v9 addObject:v26];
        }
      }

      else if ((v21 >> 3) == 1)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v8 = 0;
        locale = self->_locale;
        self->_locale = v23;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_34;
        }

        v27 = objc_opt_class();
        locale = NSStringFromClass(v27);
        v8 = CCSkipFieldErrorForMessage();
      }

LABEL_34:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_38;
    }
  }

  v9 = 0;
LABEL_37:
  v8 = 0;
LABEL_38:
  v28 = [v9 copy];
  entries = self->_entries;
  self->_entries = v28;

  if (v8)
  {
    CCSetError();
    v30 = 0;
    v31 = dataCopy;
  }

  else
  {
    v31 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  return v30;
}

- (CCToolKitToolContentLocalizedStringTable)initWithLocale:(id)locale entries:(id)entries error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  entriesCopy = entries;
  v10 = objc_opt_new();
  if (!localeCopy)
  {
    v12 = 0;
    if (!entriesCopy)
    {
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    v29 = v12;
    v13 = CCValidateArrayValues();
    v14 = v12;

    if (!v13)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v14;
      goto LABEL_18;
    }

    v24 = v14;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = entriesCopy;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          data = [*(*(&v25 + 1) + 8 * v19) data];
          CCPBDataWriterWriteDataField();

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v17);
    }

    v12 = v24;
    goto LABEL_15;
  }

  objc_opt_class();
  v30 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  CCPBDataWriterWriteStringField();
  if (entriesCopy)
  {
    goto LABEL_6;
  }

LABEL_15:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_18:

  return selfCopy;
}

@end