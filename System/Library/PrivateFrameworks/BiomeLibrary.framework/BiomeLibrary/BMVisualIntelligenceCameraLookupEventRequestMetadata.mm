@interface BMVisualIntelligenceCameraLookupEventRequestMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithRequestType:(int)type requestDomain:(id)domain;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_requestDomainJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventRequestMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    requestType = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestType];
    if (requestType == [v5 requestType])
    {
      requestDomain = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
      requestDomain2 = [v5 requestDomain];
      if (requestDomain == requestDomain2)
      {
        v11 = 1;
      }

      else
      {
        requestDomain3 = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
        requestDomain4 = [v5 requestDomain];
        v11 = [requestDomain3 isEqual:requestDomain4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventRequestMetadata requestType](self, "requestType")}];
  _requestDomainJSONArray = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self _requestDomainJSONArray];
  v9[0] = @"requestType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"requestDomain";
  v10[0] = null;
  null2 = _requestDomainJSONArray;
  if (!_requestDomainJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (_requestDomainJSONArray)
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (id)_requestDomainJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  requestDomain = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
  v5 = [requestDomain countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(requestDomain);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [requestDomain countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"requestType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          selfCopy2 = 0;
          goto LABEL_35;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"requestType"];
        v54[0] = v9;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v35 = [v33 initWithDomain:v34 code:2 userInfo:v12];
        v8 = 0;
        selfCopy2 = 0;
        *error = v35;
        goto LABEL_33;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:{bsearch_b(v7, BMVisualIntelligenceCameraLookupEventRequestTypeFromString_sortedStrings, 1uLL, 8uLL, &__block_literal_global_29_110114) != 0}];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"requestDomain"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (v11)
  {
    errorCopy2 = error;
    v38 = v8;
    v39 = v7;
    v40 = dictionaryCopy;
    selfCopy3 = self;

    v9 = 0;
LABEL_9:
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v9;
    v13 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
LABEL_11:
      v16 = 0;
      while (1)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            self = selfCopy3;
            v21 = errorCopy2;
            v8 = v38;
            if (errorCopy2)
            {
              v36 = objc_alloc(MEMORY[0x1E696ABC0]);
              v23 = *MEMORY[0x1E698F240];
              v46 = *MEMORY[0x1E696A578];
              v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"requestDomain"];
              v47 = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
              v26 = v36;
LABEL_30:
              *v21 = [v26 initWithDomain:v23 code:2 userInfo:v25];
            }

            goto LABEL_31;
          }

          v18 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventRequestDomainFromString(v17)];
        }

        v19 = v18;
        [v12 addObject:v18];

        if (v14 == ++v16)
        {
          v14 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v14)
          {
            goto LABEL_11;
          }

          goto LABEL_21;
        }
      }

      self = selfCopy3;
      v21 = errorCopy2;
      v8 = v38;
      if (errorCopy2)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"requestDomain"];
        v49 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v26 = v22;
        goto LABEL_30;
      }

LABEL_31:

      selfCopy2 = 0;
      goto LABEL_32;
    }

LABEL_21:

    v8 = v38;
    self = -[BMVisualIntelligenceCameraLookupEventRequestMetadata initWithRequestType:requestDomain:](selfCopy3, "initWithRequestType:requestDomain:", [v38 intValue], v12);
    selfCopy2 = self;
LABEL_32:
    v7 = v39;
    dictionaryCopy = v40;
    goto LABEL_33;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy2 = error;
    v38 = v8;
    v39 = v7;
    v40 = dictionaryCopy;
    selfCopy3 = self;
    goto LABEL_9;
  }

  if (!error)
  {
    selfCopy2 = 0;
    goto LABEL_34;
  }

  v28 = objc_alloc(MEMORY[0x1E696ABC0]);
  v29 = v7;
  v30 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"requestDomain"];
  v52 = v12;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v32 = v30;
  v7 = v29;
  *error = [v28 initWithDomain:v32 code:2 userInfo:v31];

  selfCopy2 = 0;
LABEL_33:

LABEL_34:
LABEL_35:

  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint32Field();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_requestDomain;
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

        [*(*(&v10 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
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
  v38.receiver = self;
  v38.super_class = BMVisualIntelligenceCameraLookupEventRequestMetadata;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v39 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v39 & 0x7F) << v8;
        if ((v39 & 0x80) == 0)
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
        break;
      }

      if ((v15 >> 3) == 2)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = MEMORY[0x1E696AD98];
        while (1)
        {
          v39 = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v39 & 0x7F) << v23;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_46;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v25 > 7)
        {
LABEL_46:
          v25 = 0;
        }

        v30 = [v26 numberWithUnsignedInt:v25];
        if (!v30)
        {
LABEL_54:

          goto LABEL_51;
        }

        v31 = v30;
        [v6 addObject:v30];
      }

      else if ((v15 >> 3) == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v39 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v39 & 0x7F) << v16;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 1)
        {
LABEL_42:
          LODWORD(v18) = 0;
        }

        v5->_requestType = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_54;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v33 = [v6 copy];
  requestDomain = v5->_requestDomain;
  v5->_requestDomain = v33;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_51:
    v36 = 0;
  }

  else
  {
LABEL_52:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  requestDomain = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
  v5 = [requestDomain countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(requestDomain);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMVisualIntelligenceCameraLookupEventRequestDomainAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [requestDomain countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = BMVisualIntelligenceCameraLookupEventRequestTypeAsString([(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestType]);
  v13 = [v11 initWithFormat:@"BMVisualIntelligenceCameraLookupEventRequestMetadata with requestType: %@, requestDomain: %@", v12, v3];

  return v13;
}

- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithRequestType:(int)type requestDomain:(id)domain
{
  domainCopy = domain;
  v10.receiver = self;
  v10.super_class = BMVisualIntelligenceCameraLookupEventRequestMetadata;
  v8 = [(BMEventBase *)&v10 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    v8->_requestType = type;
    objc_storeStrong(&v8->_requestDomain, domain);
  }

  return v8;
}

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestType" number:1 type:4 subMessageClass:0];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestDomain" number:2 type:4 subMessageClass:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"requestDomain_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_488];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __63__BMVisualIntelligenceCameraLookupEventRequestMetadata_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _requestDomainJSONArray];
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

    v8 = [[BMVisualIntelligenceCameraLookupEventRequestMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end