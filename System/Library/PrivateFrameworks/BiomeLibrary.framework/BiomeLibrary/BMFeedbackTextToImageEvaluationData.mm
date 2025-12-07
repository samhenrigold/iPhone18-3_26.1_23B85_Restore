@interface BMFeedbackTextToImageEvaluationData
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFeedbackTextToImageEvaluationData)initWithCommonMetadata:(id)metadata originalContent:(id)content generatedContent:(id)generatedContent;
- (BMFeedbackTextToImageEvaluationData)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFeedbackTextToImageEvaluationData

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"commonMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_9290];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"originalContent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_34];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"generatedContent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_36];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    commonMetadata = [(BMFeedbackTextToImageEvaluationData *)self commonMetadata];
    commonMetadata2 = [v5 commonMetadata];
    v8 = commonMetadata2;
    if (commonMetadata == commonMetadata2)
    {
    }

    else
    {
      commonMetadata3 = [(BMFeedbackTextToImageEvaluationData *)self commonMetadata];
      commonMetadata4 = [v5 commonMetadata];
      v11 = [commonMetadata3 isEqual:commonMetadata4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    originalContent = [(BMFeedbackTextToImageEvaluationData *)self originalContent];
    originalContent2 = [v5 originalContent];
    v15 = originalContent2;
    if (originalContent == originalContent2)
    {
    }

    else
    {
      originalContent3 = [(BMFeedbackTextToImageEvaluationData *)self originalContent];
      originalContent4 = [v5 originalContent];
      v18 = [originalContent3 isEqual:originalContent4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    generatedContent = [(BMFeedbackTextToImageEvaluationData *)self generatedContent];
    generatedContent2 = [v5 generatedContent];
    if (generatedContent == generatedContent2)
    {
      v12 = 1;
    }

    else
    {
      generatedContent3 = [(BMFeedbackTextToImageEvaluationData *)self generatedContent];
      generatedContent4 = [v5 generatedContent];
      v12 = [generatedContent3 isEqual:generatedContent4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  commonMetadata = [(BMFeedbackTextToImageEvaluationData *)self commonMetadata];
  jsonDictionary = [commonMetadata jsonDictionary];

  originalContent = [(BMFeedbackTextToImageEvaluationData *)self originalContent];
  jsonDictionary2 = [originalContent jsonDictionary];

  generatedContent = [(BMFeedbackTextToImageEvaluationData *)self generatedContent];
  jsonDictionary3 = [generatedContent jsonDictionary];

  v14[0] = @"commonMetadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"originalContent";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"generatedContent";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (jsonDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (jsonDictionary)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v12;
}

- (BMFeedbackTextToImageEvaluationData)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"commonMetadata"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v28 = 0;
    v8 = [[BMEvaluationCommonMetadata alloc] initWithJSONDictionary:v9 error:&v28];
    v14 = v28;
    if (v14)
    {
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

LABEL_30:
      selfCopy = 0;
      goto LABEL_36;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"originalContent"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v27 = 0;
      v10 = [[BMTextContent alloc] initWithJSONDictionary:v11 error:&v27];
      v15 = v27;
      if (v15)
      {
        if (error)
        {
          v15 = v15;
          *error = v15;
        }

        goto LABEL_38;
      }

LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"generatedContent"];
      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = 0;
LABEL_10:
        self = [(BMFeedbackTextToImageEvaluationData *)self initWithCommonMetadata:v8 originalContent:v10 generatedContent:v12];
        selfCopy = self;
LABEL_34:

        goto LABEL_35;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v11;
        v26 = 0;
        v12 = [[BMImageContent alloc] initWithJSONDictionary:v16 error:&v26];
        v17 = v26;
        if (!v17)
        {

          goto LABEL_10;
        }

        if (error)
        {
          v17 = v17;
          *error = v17;
        }

LABEL_33:
        selfCopy = 0;
        goto LABEL_34;
      }

      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v29 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"generatedContent"];
        v30 = v12;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *error = [v25 initWithDomain:v23 code:2 userInfo:v16];
        goto LABEL_33;
      }

LABEL_38:
      selfCopy = 0;
      goto LABEL_35;
    }

    if (error)
    {
      v24 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v31 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"originalContent"];
      v32 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = [v24 initWithDomain:v20 code:2 userInfo:v11];
      selfCopy = 0;
      *error = v21;
LABEL_35:

      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_37;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v33 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"commonMetadata"];
  v34[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  selfCopy = 0;
  *error = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_36:

LABEL_37:
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackTextToImageEvaluationData *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_commonMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMEvaluationCommonMetadata *)self->_commonMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_originalContent)
  {
    PBDataWriterPlaceMark();
    [(BMTextContent *)self->_originalContent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_generatedContent)
  {
    PBDataWriterPlaceMark();
    [(BMImageContent *)self->_generatedContent writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMFeedbackTextToImageEvaluationData;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_35;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMImageContent alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 40;
      }

      else if (v15 == 2)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMTextContent alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 32;
      }

      else
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMEvaluationCommonMetadata alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 24;
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_32:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_34:
    v20 = 0;
  }

  else
  {
LABEL_35:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  commonMetadata = [(BMFeedbackTextToImageEvaluationData *)self commonMetadata];
  originalContent = [(BMFeedbackTextToImageEvaluationData *)self originalContent];
  generatedContent = [(BMFeedbackTextToImageEvaluationData *)self generatedContent];
  v7 = [v3 initWithFormat:@"BMFeedbackTextToImageEvaluationData with commonMetadata: %@, originalContent: %@, generatedContent: %@", commonMetadata, originalContent, generatedContent];

  return v7;
}

- (BMFeedbackTextToImageEvaluationData)initWithCommonMetadata:(id)metadata originalContent:(id)content generatedContent:(id)generatedContent
{
  metadataCopy = metadata;
  contentCopy = content;
  generatedContentCopy = generatedContent;
  v14.receiver = self;
  v14.super_class = BMFeedbackTextToImageEvaluationData;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_commonMetadata, metadata);
    objc_storeStrong(&v12->_originalContent, content);
    objc_storeStrong(&v12->_generatedContent, generatedContent);
  }

  return v12;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"commonMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originalContent" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"generatedContent" number:3 type:14 subMessageClass:objc_opt_class()];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __46__BMFeedbackTextToImageEvaluationData_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 generatedContent];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __46__BMFeedbackTextToImageEvaluationData_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 originalContent];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __46__BMFeedbackTextToImageEvaluationData_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 commonMetadata];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
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

    v8 = [[BMFeedbackTextToImageEvaluationData alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end