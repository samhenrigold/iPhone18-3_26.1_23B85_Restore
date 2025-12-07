@interface BMEvaluationCommonMetadataQuestionAnswer
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMEvaluationCommonMetadataQuestionAnswer)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMEvaluationCommonMetadataQuestionAnswer)initWithQuestion:(id)question answer:(id)answer;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_answerJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMEvaluationCommonMetadataQuestionAnswer

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    question = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
    question2 = [v5 question];
    v8 = question2;
    if (question == question2)
    {
    }

    else
    {
      question3 = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
      question4 = [v5 question];
      v11 = [question3 isEqual:question4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    answer = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
    answer2 = [v5 answer];
    if (answer == answer2)
    {
      v12 = 1;
    }

    else
    {
      answer3 = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
      answer4 = [v5 answer];
      v12 = [answer3 isEqual:answer4];
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
  question = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
  _answerJSONArray = [(BMEvaluationCommonMetadataQuestionAnswer *)self _answerJSONArray];
  v9[0] = @"question";
  null = question;
  if (!question)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"answer";
  v10[0] = null;
  null2 = _answerJSONArray;
  if (!_answerJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (_answerJSONArray)
  {
    if (question)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (question)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (id)_answerJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  answer = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
  v5 = [answer countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(answer);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [answer countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMEvaluationCommonMetadataQuestionAnswer)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"question"];
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
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"question"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"answer"];
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
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"answer"];
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
        self = [(BMEvaluationCommonMetadataQuestionAnswer *)self initWithQuestion:v13 answer:v14];
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
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"answer"];
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
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"answer"];
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
  [(BMEvaluationCommonMetadataQuestionAnswer *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_question)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_answer;
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
  v25.super_class = BMEvaluationCommonMetadataQuestionAnswer;
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
        question = v5->_question;
        v5->_question = v16;
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

    question = v18;
    [v6 addObject:v18];
    goto LABEL_23;
  }

LABEL_26:
  v20 = [v6 copy];
  answer = v5->_answer;
  v5->_answer = v20;

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
  question = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
  answer = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
  v6 = [v3 initWithFormat:@"BMEvaluationCommonMetadataQuestionAnswer with question: %@, answer: %@", question, answer];

  return v6;
}

- (BMEvaluationCommonMetadataQuestionAnswer)initWithQuestion:(id)question answer:(id)answer
{
  questionCopy = question;
  answerCopy = answer;
  v11.receiver = self;
  v11.super_class = BMEvaluationCommonMetadataQuestionAnswer;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_question, question);
    objc_storeStrong(&v9->_answer, answer);
  }

  return v9;
}

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"question" number:1 type:13 subMessageClass:0];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"answer" number:2 type:13 subMessageClass:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"question" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"answer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_312];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __51__BMEvaluationCommonMetadataQuestionAnswer_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _answerJSONArray];
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

    v8 = [[BMEvaluationCommonMetadataQuestionAnswer alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end