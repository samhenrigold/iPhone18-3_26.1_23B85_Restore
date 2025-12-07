@interface BMPersonalizedSensingMomentsContextDimension
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextDimension)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMPersonalizedSensingMomentsContextDimension)initWithName:(id)name queries:(id)queries;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_queriesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPersonalizedSensingMomentsContextDimension

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMPersonalizedSensingMomentsContextDimension *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMPersonalizedSensingMomentsContextDimension *)self name];
      name4 = [v5 name];
      v11 = [name3 isEqual:name4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    queries = [(BMPersonalizedSensingMomentsContextDimension *)self queries];
    queries2 = [v5 queries];
    if (queries == queries2)
    {
      v12 = 1;
    }

    else
    {
      queries3 = [(BMPersonalizedSensingMomentsContextDimension *)self queries];
      queries4 = [v5 queries];
      v12 = [queries3 isEqual:queries4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  name = [(BMPersonalizedSensingMomentsContextDimension *)self name];
  _queriesJSONArray = [(BMPersonalizedSensingMomentsContextDimension *)self _queriesJSONArray];
  v9[0] = @"name";
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"queries";
  v10[0] = null;
  null2 = _queriesJSONArray;
  if (!_queriesJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (_queriesJSONArray)
  {
    if (name)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (name)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (id)_queriesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  queries = [(BMPersonalizedSensingMomentsContextDimension *)self queries];
  v5 = [queries countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(queries);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [queries countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMPersonalizedSensingMomentsContextDimension)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v40 = dictionaryCopy;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v53[0] = v9;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v14];
        v8 = 0;
        selfCopy2 = 0;
        *error = v31;
        goto LABEL_27;
      }

      v8 = 0;
      selfCopy2 = 0;
      goto LABEL_29;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"queries"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (v11)
  {
    v12 = v7;
    v13 = v8;
    errorCopy2 = error;

    v9 = 0;
LABEL_9:
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = v9;
    v15 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = *v42;
    selfCopy = self;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v41 + 1) + 8 * v18);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = errorCopy2;
        v8 = v13;
        v7 = v12;
        if (errorCopy2)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v45 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queries"];
          v46 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v26 = v27;
LABEL_25:
          *v21 = [v26 initWithDomain:v23 code:2 userInfo:v25];
        }

        goto LABEL_26;
      }

      [v14 addObject:v19];
      if (v16 == ++v18)
      {
        v16 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
        self = selfCopy;
        if (v16)
        {
          goto LABEL_11;
        }

LABEL_18:

        v8 = v13;
        self = [(BMPersonalizedSensingMomentsContextDimension *)self initWithName:v13 queries:v14];
        selfCopy2 = self;
        v7 = v12;
LABEL_27:

        goto LABEL_28;
      }
    }

    v21 = errorCopy2;
    v8 = v13;
    v7 = v12;
    if (errorCopy2)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v47 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"queries"];
      v48 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v26 = v22;
      goto LABEL_25;
    }

LABEL_26:

    selfCopy2 = 0;
    self = selfCopy;
    goto LABEL_27;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v7;
    v13 = v8;
    errorCopy2 = error;
    goto LABEL_9;
  }

  if (error)
  {
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy3 = error;
    selfCopy3 = self;
    v35 = *MEMORY[0x1E698F240];
    v50 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"queries"];
    v51 = v14;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v37 = v35;
    self = selfCopy3;
    *errorCopy3 = [v32 initWithDomain:v37 code:2 userInfo:v36];

    selfCopy2 = 0;
    goto LABEL_27;
  }

  selfCopy2 = 0;
LABEL_28:
  dictionaryCopy = v40;

LABEL_29:
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextDimension *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_queries;
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
  v25.receiver = self;
  v25.super_class = BMPersonalizedSensingMomentsContextDimension;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_26;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v26 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v26 & 0x7F) << v8;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_26;
      }

      if ((v15 >> 3) == 2)
      {
        break;
      }

      if ((v15 >> 3) == 1)
      {
        v16 = PBReaderReadString();
        name = v5->_name;
        v5->_name = v16;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_30:

        goto LABEL_27;
      }

LABEL_25:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_26;
      }
    }

    v18 = PBReaderReadString();
    if (!v18)
    {
      goto LABEL_30;
    }

    name = v18;
    [v6 addObject:v18];
    goto LABEL_23;
  }

LABEL_26:
  v20 = [v6 copy];
  queries = v5->_queries;
  v5->_queries = v20;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_27:
    v23 = 0;
  }

  else
  {
LABEL_28:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(BMPersonalizedSensingMomentsContextDimension *)self name];
  queries = [(BMPersonalizedSensingMomentsContextDimension *)self queries];
  v6 = [v3 initWithFormat:@"BMPersonalizedSensingMomentsContextDimension with name: %@, queries: %@", name, queries];

  return v6;
}

- (BMPersonalizedSensingMomentsContextDimension)initWithName:(id)name queries:(id)queries
{
  nameCopy = name;
  queriesCopy = queries;
  v11.receiver = self;
  v11.super_class = BMPersonalizedSensingMomentsContextDimension;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v9->_queries, queries);
  }

  return v9;
}

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queries" number:2 type:13 subMessageClass:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"queries_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_565];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __55__BMPersonalizedSensingMomentsContextDimension_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _queriesJSONArray];
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

    v8 = [[BMPersonalizedSensingMomentsContextDimension alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end