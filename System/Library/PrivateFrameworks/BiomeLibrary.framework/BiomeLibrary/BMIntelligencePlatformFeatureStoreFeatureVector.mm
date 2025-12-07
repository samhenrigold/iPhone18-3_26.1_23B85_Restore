@interface BMIntelligencePlatformFeatureStoreFeatureVector
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligencePlatformFeatureStoreFeatureVector)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligencePlatformFeatureStoreFeatureVector)initWithVersion:(id)version feature:(id)feature;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_featureJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligencePlatformFeatureStoreFeatureVector

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (!-[BMIntelligencePlatformFeatureStoreFeatureVector hasVersion](self, "hasVersion") && ![v5 hasVersion] || -[BMIntelligencePlatformFeatureStoreFeatureVector hasVersion](self, "hasVersion") && objc_msgSend(v5, "hasVersion") && (v6 = -[BMIntelligencePlatformFeatureStoreFeatureVector version](self, "version"), v6 == objc_msgSend(v5, "version")))
    {
      feature = [(BMIntelligencePlatformFeatureStoreFeatureVector *)self feature];
      feature2 = [v5 feature];
      if (feature == feature2)
      {
        v11 = 1;
      }

      else
      {
        feature3 = [(BMIntelligencePlatformFeatureStoreFeatureVector *)self feature];
        feature4 = [v5 feature];
        v11 = [feature3 isEqual:feature4];
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
  if ([(BMIntelligencePlatformFeatureStoreFeatureVector *)self hasVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformFeatureStoreFeatureVector version](self, "version")}];
  }

  else
  {
    v3 = 0;
  }

  _featureJSONArray = [(BMIntelligencePlatformFeatureStoreFeatureVector *)self _featureJSONArray];
  v9[0] = @"version";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"feature";
  v10[0] = null;
  null2 = _featureJSONArray;
  if (!_featureJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (_featureJSONArray)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_10;
    }
  }

LABEL_10:

  return v7;
}

- (id)_featureJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  feature = [(BMIntelligencePlatformFeatureStoreFeatureVector *)self feature];
  v5 = [feature countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(feature);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [feature countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMIntelligencePlatformFeatureStoreFeatureVector)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
        v54[0] = v9;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v12];
        v8 = 0;
        selfCopy2 = 0;
        *error = v25;
        goto LABEL_33;
      }

      v8 = 0;
      selfCopy2 = 0;
      goto LABEL_35;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  errorCopy = error;
  if (v11)
  {
    v38 = v8;
    v39 = v7;
    v40 = dictionaryCopy;

    v9 = 0;
LABEL_9:
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v9;
    v13 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    v15 = *v43;
    selfCopy = self;
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
        self = selfCopy;
        v7 = v39;
        dictionaryCopy = v40;
        if (errorCopy)
        {
          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v48 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"feature"];
          v49 = v18;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          *errorCopy = [v26 initWithDomain:v27 code:2 userInfo:v28];
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v18 = v17;
      v19 = [BMIntelligencePlatformFeatureStoreFeature alloc];
      v41 = 0;
      v20 = [(BMIntelligencePlatformFeatureStoreFeature *)v19 initWithJSONDictionary:v18 error:&v41];
      v21 = v41;
      if (v21)
      {
        v28 = v21;
        if (errorCopy)
        {
          v31 = v21;
          *errorCopy = v28;
        }

        self = selfCopy;
        v7 = v39;
        dictionaryCopy = v40;
LABEL_31:

        goto LABEL_32;
      }

      [v12 addObject:v20];

      if (v14 == ++v16)
      {
        v14 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
        self = selfCopy;
        if (v14)
        {
          goto LABEL_11;
        }

LABEL_19:

        v8 = v38;
        self = [(BMIntelligencePlatformFeatureStoreFeatureVector *)self initWithVersion:v38 feature:v12];
        selfCopy2 = self;
        v7 = v39;
        dictionaryCopy = v40;
LABEL_33:

        goto LABEL_34;
      }
    }

    self = selfCopy;
    v7 = v39;
    dictionaryCopy = v40;
    if (errorCopy)
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v46 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"feature"];
      v47 = v18;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      *errorCopy = [v29 initWithDomain:v30 code:2 userInfo:v28];
      goto LABEL_31;
    }

LABEL_32:

    selfCopy2 = 0;
    v8 = v38;
    goto LABEL_33;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v38 = v8;
    v39 = v7;
    v40 = dictionaryCopy;
    goto LABEL_9;
  }

  if (error)
  {
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34 = *MEMORY[0x1E698F240];
    v51 = *MEMORY[0x1E696A578];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"feature"];
    v52 = v12;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    *error = [v33 initWithDomain:v34 code:2 userInfo:v35];

    selfCopy2 = 0;
    goto LABEL_33;
  }

  selfCopy2 = 0;
LABEL_34:

LABEL_35:
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformFeatureStoreFeatureVector *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasVersion)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_feature;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMIntelligencePlatformFeatureStoreFeatureVector;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_40;
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
        LOBYTE(v32[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v32[0] & 0x7F) << v8;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
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
        v32[0] = 0;
        v32[1] = 0;
        if (!PBReaderPlaceMark() || (v23 = [[BMIntelligencePlatformFeatureStoreFeature alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_41:

          goto LABEL_42;
        }

        v24 = v23;
        [v6 addObject:v23];
        PBReaderRecallMark();
      }

      else if ((v15 >> 3) == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasVersion = 1;
        while (1)
        {
          LOBYTE(v32[0]) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v32[0] & 0x7F) << v16;
          if ((v32[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v14 = v17++ >= 9;
          if (v14)
          {
            v22 = 0;
            goto LABEL_37;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_37:
        v5->_version = v22;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_41;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v26 = [v6 copy];
  feature = v5->_feature;
  v5->_feature = v26;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_42:
    v29 = 0;
  }

  else
  {
LABEL_40:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformFeatureStoreFeatureVector version](self, "version")}];
  feature = [(BMIntelligencePlatformFeatureStoreFeatureVector *)self feature];
  v6 = [v3 initWithFormat:@"BMIntelligencePlatformFeatureStoreFeatureVector with version: %@, feature: %@", v4, feature];

  return v6;
}

- (BMIntelligencePlatformFeatureStoreFeatureVector)initWithVersion:(id)version feature:(id)feature
{
  versionCopy = version;
  featureCopy = feature;
  v11.receiver = self;
  v11.super_class = BMIntelligencePlatformFeatureStoreFeatureVector;
  v8 = [(BMEventBase *)&v11 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v8->_hasVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v8->_hasVersion = 0;
      intValue = -1;
    }

    v8->_version = intValue;
    objc_storeStrong(&v8->_feature, feature);
  }

  return v8;
}

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:1 type:2 subMessageClass:0];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feature" number:2 type:14 subMessageClass:objc_opt_class()];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"feature_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_337];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __58__BMIntelligencePlatformFeatureStoreFeatureVector_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _featureJSONArray];
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

    v8 = [[BMIntelligencePlatformFeatureStoreFeatureVector alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end