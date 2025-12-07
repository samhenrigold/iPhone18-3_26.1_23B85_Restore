@interface BMUserFocusStatusChange
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUserFocusStatusChange)initWithIdsHandle:(id)handle statusChangeType:(id)type idsHandles:(id)handles;
- (BMUserFocusStatusChange)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_idsHandlesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUserFocusStatusChange

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    idsHandle = [(BMUserFocusStatusChange *)self idsHandle];
    idsHandle2 = [v5 idsHandle];
    v8 = idsHandle2;
    if (idsHandle == idsHandle2)
    {
    }

    else
    {
      idsHandle3 = [(BMUserFocusStatusChange *)self idsHandle];
      idsHandle4 = [v5 idsHandle];
      v11 = [idsHandle3 isEqual:idsHandle4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    statusChangeType = [(BMUserFocusStatusChange *)self statusChangeType];
    statusChangeType2 = [v5 statusChangeType];
    v15 = statusChangeType2;
    if (statusChangeType == statusChangeType2)
    {
    }

    else
    {
      statusChangeType3 = [(BMUserFocusStatusChange *)self statusChangeType];
      statusChangeType4 = [v5 statusChangeType];
      v18 = [statusChangeType3 isEqual:statusChangeType4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    idsHandles = [(BMUserFocusStatusChange *)self idsHandles];
    idsHandles2 = [v5 idsHandles];
    if (idsHandles == idsHandles2)
    {
      v12 = 1;
    }

    else
    {
      idsHandles3 = [(BMUserFocusStatusChange *)self idsHandles];
      idsHandles4 = [v5 idsHandles];
      v12 = [idsHandles3 isEqual:idsHandles4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v12[3] = *MEMORY[0x1E69E9840];
  idsHandle = [(BMUserFocusStatusChange *)self idsHandle];
  statusChangeType = [(BMUserFocusStatusChange *)self statusChangeType];
  _idsHandlesJSONArray = [(BMUserFocusStatusChange *)self _idsHandlesJSONArray];
  v11[0] = @"idsHandle";
  null = idsHandle;
  if (!idsHandle)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"statusChangeType";
  null2 = statusChangeType;
  if (!statusChangeType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"idsHandles";
  null3 = _idsHandlesJSONArray;
  if (!_idsHandlesJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (_idsHandlesJSONArray)
  {
    if (statusChangeType)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (idsHandle)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!statusChangeType)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (idsHandle)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v9;
}

- (id)_idsHandlesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  idsHandles = [(BMUserFocusStatusChange *)self idsHandles];
  v5 = [idsHandles countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(idsHandles);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [idsHandles countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMUserFocusStatusChange)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v64[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"idsHandle"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!p_isa)
      {
        v8 = 0;
        goto LABEL_36;
      }

      v30 = v7;
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = *MEMORY[0x1E698F240];
      v63 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"idsHandle"];
      v64[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
      v33 = v31;
      v7 = v30;
      v34 = [v33 initWithDomain:v32 code:2 userInfo:v9];
      v8 = 0;
      v35 = p_isa;
      p_isa = 0;
      *v35 = v34;
      goto LABEL_35;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"statusChangeType"];
  v48 = p_isa;
  v49 = v7;
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v47 = v8;
    v10 = 0;
LABEL_7:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"idsHandles"];
    null = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:null];

    if (v13)
    {
      v44 = v9;
      selfCopy2 = self;

      v11 = 0;
LABEL_12:
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = v15;
      v17 = *v51;
LABEL_14:
      v18 = dictionaryCopy;
      v19 = v10;
      v20 = 0;
      while (1)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v50 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = v19;
          dictionaryCopy = v18;
          v9 = v44;
          if (v48)
          {
            v22 = objc_alloc(MEMORY[0x1E696ABC0]);
            v23 = *MEMORY[0x1E698F240];
            v54 = *MEMORY[0x1E696A578];
            v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"idsHandles"];
            v55 = v24;
            v25 = MEMORY[0x1E695DF20];
            v26 = &v55;
            v27 = &v54;
LABEL_30:
            v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
            *v48 = [v22 initWithDomain:v23 code:2 userInfo:v28];
          }

          goto LABEL_31;
        }

        [v14 addObject:v21];
        if (v16 == ++v20)
        {
          v16 = [v11 countByEnumeratingWithState:&v50 objects:v58 count:16];
          v10 = v19;
          dictionaryCopy = v18;
          if (v16)
          {
            goto LABEL_14;
          }

LABEL_21:

          v8 = v47;
          self = [(BMUserFocusStatusChange *)selfCopy2 initWithIdsHandle:v47 statusChangeType:v10 idsHandles:v14];
          p_isa = &self->super.super.isa;
          v9 = v44;
LABEL_33:

          goto LABEL_34;
        }
      }

      v10 = v19;
      dictionaryCopy = v18;
      v9 = v44;
      if (v48)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"idsHandles"];
        v57 = v24;
        v25 = MEMORY[0x1E695DF20];
        v26 = &v57;
        v27 = &v56;
        goto LABEL_30;
      }

LABEL_31:

      p_isa = 0;
      self = selfCopy2;
      goto LABEL_32;
    }

    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v44 = v9;
      selfCopy2 = self;
      goto LABEL_12;
    }

    if (p_isa)
    {
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = p_isa;
      v42 = *MEMORY[0x1E698F240];
      v59 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"idsHandles"];
      v60 = v14;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      *v41 = [v46 initWithDomain:v42 code:2 userInfo:v43];

      p_isa = 0;
LABEL_32:
      v8 = v47;
      goto LABEL_33;
    }

    v8 = v47;
LABEL_34:

    v7 = v49;
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v8;
    v10 = v9;
    goto LABEL_7;
  }

  if (p_isa)
  {
    v36 = v8;
    v37 = objc_alloc(MEMORY[0x1E696ABC0]);
    v38 = *MEMORY[0x1E698F240];
    v61 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"statusChangeType"];
    v62 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v39 = v37;
    v8 = v36;
    v40 = [v39 initWithDomain:v38 code:2 userInfo:v14];
    v10 = 0;
    p_isa = 0;
    *v48 = v40;
    goto LABEL_33;
  }

  v10 = 0;
LABEL_35:

LABEL_36:
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUserFocusStatusChange *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_idsHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_statusChangeType)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_idsHandles;
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
  v27.receiver = self;
  v27.super_class = BMUserFocusStatusChange;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_29;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v28 & 0x7F) << v8;
        if ((v28 & 0x80) == 0)
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
        goto LABEL_29;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 32;
LABEL_23:
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
LABEL_26:

        goto LABEL_28;
      }

      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 24;
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_33:

        goto LABEL_30;
      }

LABEL_28:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_29;
      }
    }

    v20 = PBReaderReadString();
    if (!v20)
    {
      goto LABEL_33;
    }

    v19 = v20;
    [v6 addObject:v20];
    goto LABEL_26;
  }

LABEL_29:
  v22 = [v6 copy];
  idsHandles = v5->_idsHandles;
  v5->_idsHandles = v22;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_30:
    v25 = 0;
  }

  else
  {
LABEL_31:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  idsHandle = [(BMUserFocusStatusChange *)self idsHandle];
  statusChangeType = [(BMUserFocusStatusChange *)self statusChangeType];
  idsHandles = [(BMUserFocusStatusChange *)self idsHandles];
  v7 = [v3 initWithFormat:@"BMUserFocusStatusChange with idsHandle: %@, statusChangeType: %@, idsHandles: %@", idsHandle, statusChangeType, idsHandles];

  return v7;
}

- (BMUserFocusStatusChange)initWithIdsHandle:(id)handle statusChangeType:(id)type idsHandles:(id)handles
{
  handleCopy = handle;
  typeCopy = type;
  handlesCopy = handles;
  v14.receiver = self;
  v14.super_class = BMUserFocusStatusChange;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_idsHandle, handle);
    objc_storeStrong(&v12->_statusChangeType, type);
    objc_storeStrong(&v12->_idsHandles, handles);
  }

  return v12;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"idsHandle" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statusChangeType" number:2 type:13 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"idsHandles" number:3 type:13 subMessageClass:0];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"idsHandle" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"statusChangeType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"idsHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_62937];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __34__BMUserFocusStatusChange_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _idsHandlesJSONArray];
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

    v8 = [[BMUserFocusStatusChange alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end