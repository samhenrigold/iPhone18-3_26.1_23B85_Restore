@interface BMMLSEDurableFeatureStoreFeatureValueHistogramBucket
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithBucketName:(id)name hasEver:(id)ever counts:(id)counts;
- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_countsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEDurableFeatureStoreFeatureValueHistogramBucket

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bucketName = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
    bucketName2 = [v5 bucketName];
    v8 = bucketName2;
    if (bucketName == bucketName2)
    {
    }

    else
    {
      bucketName3 = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
      bucketName4 = [v5 bucketName];
      v11 = [bucketName3 isEqual:bucketName4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasHasEver](self, "hasHasEver") && ![v5 hasHasEver] || -[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasHasEver](self, "hasHasEver") && objc_msgSend(v5, "hasHasEver") && (v13 = -[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasEver](self, "hasEver"), v13 == objc_msgSend(v5, "hasEver")))
    {
      counts = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
      counts2 = [v5 counts];
      if (counts == counts2)
      {
        v12 = 1;
      }

      else
      {
        counts3 = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
        counts4 = [v5 counts];
        v12 = [counts3 isEqual:counts4];
      }

      goto LABEL_17;
    }

LABEL_12:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v12[3] = *MEMORY[0x1E69E9840];
  bucketName = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
  if ([(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self hasHasEver])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasEver](self, "hasEver")}];
  }

  else
  {
    v4 = 0;
  }

  _countsJSONArray = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self _countsJSONArray];
  v11[0] = @"bucketName";
  null = bucketName;
  if (!bucketName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"hasEver";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"counts";
  null3 = _countsJSONArray;
  if (!_countsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (_countsJSONArray)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (bucketName)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (bucketName)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:

  return v9;
}

- (id)_countsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  counts = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
  v5 = [counts countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(counts);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [counts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v74[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bucketName"];
  v8 = 0x1E695D000uLL;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v9 = 0;
        selfCopy2 = 0;
        goto LABEL_45;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v73 = *MEMORY[0x1E696A578];
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bucketName"];
      v74[0] = v29;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
      v30 = v27;
      v25 = v29;
      v9 = 0;
      selfCopy2 = 0;
      *error = [v30 initWithDomain:v28 code:2 userInfo:v10];
      goto LABEL_44;
    }

    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"hasEver"];
  v58 = v7;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy2 = error;
    v57 = 0;
LABEL_7:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"counts"];
    null = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:null];

    if (v13)
    {
      v54 = v10;
      v55 = v9;
      v56 = dictionaryCopy;

      v11 = 0;
LABEL_12:
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = v15;
      v17 = *v61;
      selfCopy = self;
LABEL_14:
      v18 = 0;
      while (1)
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v60 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = selfCopy;
          v39 = errorCopy2;
          v10 = v54;
          v9 = v55;
          if (!errorCopy2)
          {
            goto LABEL_40;
          }

          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v64 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"counts"];
          v65 = v21;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v65;
          v44 = &v64;
          goto LABEL_35;
        }

        v20 = v8;
        v21 = v19;
        v22 = [BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCount alloc];
        v59 = 0;
        v23 = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCount *)v22 initWithJSONDictionary:v21 error:&v59];
        v24 = v59;
        if (v24)
        {
          v45 = v24;
          if (errorCopy2)
          {
            v46 = v24;
            *errorCopy2 = v45;
          }

          self = selfCopy;
          v10 = v54;
          v9 = v55;
LABEL_39:

LABEL_40:
          selfCopy2 = 0;
          dictionaryCopy = v56;
          goto LABEL_41;
        }

        [v14 addObject:v23];

        ++v18;
        v8 = v20;
        if (v16 == v18)
        {
          v16 = [v11 countByEnumeratingWithState:&v60 objects:v68 count:16];
          self = selfCopy;
          if (v16)
          {
            goto LABEL_14;
          }

LABEL_22:

          v9 = v55;
          v25 = v57;
          self = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self initWithBucketName:v55 hasEver:v57 counts:v14];
          selfCopy2 = self;
          dictionaryCopy = v56;
          v10 = v54;
LABEL_42:

          v7 = v58;
          goto LABEL_43;
        }
      }

      self = selfCopy;
      v39 = errorCopy2;
      v10 = v54;
      v9 = v55;
      if (!errorCopy2)
      {
        goto LABEL_40;
      }

      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"counts"];
      v67 = v21;
      v42 = MEMORY[0x1E695DF20];
      v43 = &v67;
      v44 = &v66;
LABEL_35:
      v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
      *v39 = [v40 initWithDomain:v41 code:2 userInfo:v45];
      goto LABEL_39;
    }

    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v54 = v10;
      v55 = v9;
      v56 = dictionaryCopy;
      goto LABEL_12;
    }

    if (errorCopy2)
    {
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v49 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"counts"];
      v70 = v14;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *errorCopy2 = [v48 initWithDomain:v49 code:2 userInfo:v50];

      selfCopy2 = 0;
LABEL_41:
      v25 = v57;
      goto LABEL_42;
    }

    selfCopy2 = 0;
    v25 = v57;
LABEL_43:

    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy2 = error;
    v57 = v10;
    goto LABEL_7;
  }

  if (error)
  {
    v31 = objc_alloc(MEMORY[0x1E696ABC0]);
    v32 = *MEMORY[0x1E698F240];
    v71 = *MEMORY[0x1E696A578];
    errorCopy3 = error;
    v34 = v10;
    selfCopy3 = self;
    v36 = objc_alloc(MEMORY[0x1E696AEC0]);
    v51 = objc_opt_class();
    v37 = v36;
    self = selfCopy3;
    v10 = v34;
    v11 = [v37 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v51, @"hasEver"];
    v72 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v38 = [v31 initWithDomain:v32 code:2 userInfo:v14];
    v25 = 0;
    selfCopy2 = 0;
    *errorCopy3 = v38;
    goto LABEL_42;
  }

  v25 = 0;
  selfCopy2 = 0;
LABEL_44:

LABEL_45:
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_bucketName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasHasEver)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_counts;
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
  v34.receiver = self;
  v34.super_class = BMMLSEDurableFeatureStoreFeatureValueHistogramBucket;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v35[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v35[0] & 0x7F) << v8;
        if ((v35[0] & 0x80) == 0)
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

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v35[0] = 0;
        v35[1] = 0;
        if (!PBReaderPlaceMark() || (v26 = [[BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCount alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_43:

          goto LABEL_40;
        }

        v27 = v26;
        [v6 addObject:v26];
        PBReaderRecallMark();
      }

      else if (v16 == 2)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasHasEver = 1;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v35[0] & 0x7F) << v19;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v14 = v20++ >= 9;
          if (v14)
          {
            LOBYTE(v25) = 0;
            goto LABEL_37;
          }
        }

        v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_37:
        v5->_hasEver = v25;
      }

      else if (v16 == 1)
      {
        v17 = PBReaderReadString();
        bucketName = v5->_bucketName;
        v5->_bucketName = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_43;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v29 = [v6 copy];
  counts = v5->_counts;
  v5->_counts = v29;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_40:
    v32 = 0;
  }

  else
  {
LABEL_41:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bucketName = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasEver](self, "hasEver")}];
  counts = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
  v7 = [v3 initWithFormat:@"BMMLSEDurableFeatureStoreFeatureValueHistogramBucket with bucketName: %@, hasEver: %@, counts: %@", bucketName, v5, counts];

  return v7;
}

- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithBucketName:(id)name hasEver:(id)ever counts:(id)counts
{
  nameCopy = name;
  everCopy = ever;
  countsCopy = counts;
  v14.receiver = self;
  v14.super_class = BMMLSEDurableFeatureStoreFeatureValueHistogramBucket;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_bucketName, name);
    if (everCopy)
    {
      v12->_hasHasEver = 1;
      v12->_hasEver = [everCopy BOOLValue];
    }

    else
    {
      v12->_hasHasEver = 0;
      v12->_hasEver = 0;
    }

    objc_storeStrong(&v12->_counts, counts);
  }

  return v12;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bucketName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEver" number:2 type:12 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"counts" number:3 type:14 subMessageClass:objc_opt_class()];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bucketName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEver" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"counts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1712];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __63__BMMLSEDurableFeatureStoreFeatureValueHistogramBucket_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _countsJSONArray];
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

    v8 = [[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end