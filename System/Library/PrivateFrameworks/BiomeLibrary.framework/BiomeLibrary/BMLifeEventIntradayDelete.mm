@interface BMLifeEventIntradayDelete
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLifeEventIntradayDelete)initWithIdentifiers:(id)identifiers;
- (BMLifeEventIntradayDelete)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_identifiersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLifeEventIntradayDelete

+ (id)columns
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_74296];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifiers = [(BMLifeEventIntradayDelete *)self identifiers];
    identifiers2 = [v5 identifiers];
    if (identifiers == identifiers2)
    {
      v10 = 1;
    }

    else
    {
      identifiers3 = [(BMLifeEventIntradayDelete *)self identifiers];
      identifiers4 = [v5 identifiers];
      v10 = [identifiers3 isEqual:identifiers4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v7[1] = *MEMORY[0x1E69E9840];
  _identifiersJSONArray = [(BMLifeEventIntradayDelete *)self _identifiersJSONArray];
  v6 = @"identifiers";
  null = _identifiersJSONArray;
  if (!_identifiersJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v7[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!_identifiersJSONArray)
  {
  }

  return v4;
}

- (id)_identifiersJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  identifiers = [(BMLifeEventIntradayDelete *)self identifiers];
  v5 = [identifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(identifiers);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [identifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMLifeEventIntradayDelete)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:@"identifiers"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {

    v6 = 0;
LABEL_5:
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v6;
    v10 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v29;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (p_isa)
        {
          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v32 = *MEMORY[0x1E696A578];
          v23 = objc_alloc(MEMORY[0x1E696AEC0]);
          v17 = [v23 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifiers", v28];
          v33 = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          v19 = v21;
          v20 = v22;
LABEL_19:
          *p_isa = [v19 initWithDomain:v20 code:2 userInfo:v18];
        }

        goto LABEL_20;
      }

      [v9 addObject:v14];
      if (v11 == ++v13)
      {
        v11 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_14:

        self = [(BMLifeEventIntradayDelete *)self initWithIdentifiers:v9];
        p_isa = &self->super.super.isa;
LABEL_22:

        goto LABEL_23;
      }
    }

    if (p_isa)
    {
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"identifiers"];
      v35 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v19 = v15;
      v20 = v16;
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  if (p_isa)
  {
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = *MEMORY[0x1E698F240];
    v37 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"identifiers"];
    v38[0] = v9;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    *p_isa = [v25 initWithDomain:v26 code:2 userInfo:v27];

LABEL_21:
    p_isa = 0;
    goto LABEL_22;
  }

LABEL_23:

  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLifeEventIntradayDelete *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_identifiers;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMLifeEventIntradayDelete;
  v5 = [(BMEventBase *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_new();
    while (1)
    {
      position = [fromCopy position];
      if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v24 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v24 & 0x7F) << v8;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_17;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_17:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      if ((v15 >> 3) == 1)
      {
        v16 = PBReaderReadString();
        if (!v16)
        {
          goto LABEL_23;
        }

        v17 = v16;
        [v6 addObject:v16];
      }

      else if (!PBReaderSkipValueWithTag())
      {
LABEL_23:

        goto LABEL_25;
      }
    }

    v18 = [v6 copy];
    identifiers = v5->_identifiers;
    v5->_identifiers = v18;

    hasError = [fromCopy hasError];
    if ((hasError & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    v21 = 0;
  }

  else
  {
LABEL_26:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifiers = [(BMLifeEventIntradayDelete *)self identifiers];
  v5 = [v3 initWithFormat:@"BMLifeEventIntradayDelete with identifiers: %@", identifiers];

  return v5;
}

- (BMLifeEventIntradayDelete)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8.receiver = self;
  v8.super_class = BMLifeEventIntradayDelete;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_identifiers, identifiers);
  }

  return v6;
}

+ (id)protoFields
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifiers" number:1 type:13 subMessageClass:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

id __36__BMLifeEventIntradayDelete_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _identifiersJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMLifeEventIntradayDelete alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end