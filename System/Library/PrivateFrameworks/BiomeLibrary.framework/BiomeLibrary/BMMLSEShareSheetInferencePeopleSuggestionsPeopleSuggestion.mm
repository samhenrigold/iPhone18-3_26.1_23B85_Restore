@interface BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion)initWithIdentifier:(id)identifier model:(id)model modelIdentifier:(id)modelIdentifier transportBundleId:(id)id rank:(id)rank score:(id)score;
- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    model = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self model];
    model2 = [v5 model];
    v15 = model2;
    if (model == model2)
    {
    }

    else
    {
      model3 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self model];
      model4 = [v5 model];
      v18 = [model3 isEqual:model4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    modelIdentifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self modelIdentifier];
    modelIdentifier2 = [v5 modelIdentifier];
    v21 = modelIdentifier2;
    if (modelIdentifier == modelIdentifier2)
    {
    }

    else
    {
      modelIdentifier3 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self modelIdentifier];
      modelIdentifier4 = [v5 modelIdentifier];
      v24 = [modelIdentifier3 isEqual:modelIdentifier4];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    transportBundleId = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self transportBundleId];
    transportBundleId2 = [v5 transportBundleId];
    v27 = transportBundleId2;
    if (transportBundleId == transportBundleId2)
    {
    }

    else
    {
      transportBundleId3 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self transportBundleId];
      transportBundleId4 = [v5 transportBundleId];
      v30 = [transportBundleId3 isEqual:transportBundleId4];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    if (!-[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion hasRank](self, "hasRank") && ![v5 hasRank] || -[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion hasRank](self, "hasRank") && objc_msgSend(v5, "hasRank") && (v31 = -[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion rank](self, "rank"), v31 == objc_msgSend(v5, "rank")))
    {
      if (!-[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion hasScore](self, "hasScore") && ![v5 hasScore])
      {
        v12 = 1;
        goto LABEL_30;
      }

      if (-[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion hasScore](self, "hasScore") && [v5 hasScore])
      {
        [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self score];
        v33 = v32;
        [v5 score];
        v12 = v33 == v34;
LABEL_30:

        goto LABEL_31;
      }
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  identifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self identifier];
  model = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self model];
  modelIdentifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self modelIdentifier];
  jsonDictionary = [modelIdentifier jsonDictionary];

  transportBundleId = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self transportBundleId];
  if ([(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self hasRank])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion rank](self, "rank")}];
  }

  else
  {
    v8 = 0;
  }

  if (![(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self hasScore]|| ([(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self score], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self score];
    v10 = MEMORY[0x1E696AD98];
    [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self score];
    v11 = [v10 numberWithDouble:?];
  }

  v25[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v26[0] = null;
  v25[1] = @"model";
  null2 = model;
  v24 = model;
  if (!model)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v25[2] = @"modelIdentifier";
  null3 = jsonDictionary;
  v23 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15 = identifier;
  v26[2] = null3;
  v25[3] = @"transportBundleId";
  null4 = transportBundleId;
  if (!transportBundleId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"rank";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"score";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (v8)
    {
      goto LABEL_22;
    }

LABEL_31:

    if (transportBundleId)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (!v8)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (transportBundleId)
  {
    goto LABEL_23;
  }

LABEL_32:

LABEL_23:
  if (!v23)
  {
  }

  if (v24)
  {
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v15)
    {
      goto LABEL_27;
    }
  }

LABEL_27:

  return v19;
}

- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"model"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v18 = 0;
          goto LABEL_25;
        }

        v26 = v8;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v28 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"model"];
        v74 = v19;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v30 = v27;
        v8 = v26;
        v31 = v28;
        v17 = v29;
        v10 = 0;
        v18 = 0;
        *errorCopy = [v30 initWithDomain:v31 code:2 userInfo:v29];
        goto LABEL_23;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"modelIdentifier"];
    selfCopy = self;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v18 = 0;
          goto LABEL_24;
        }

        v62 = v8;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = v7;
        errorCopy2 = error;
        v34 = *MEMORY[0x1E698F240];
        v71 = *MEMORY[0x1E696A578];
        v35 = v10;
        v36 = objc_alloc(MEMORY[0x1E696AEC0]);
        v51 = objc_opt_class();
        v37 = v36;
        v10 = v35;
        v38 = [v37 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v51, @"modelIdentifier"];
        v72 = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v40 = v32;
        v8 = v62;
        v41 = v34;
        v17 = v38;
        *errorCopy2 = [v40 initWithDomain:v41 code:2 userInfo:v39];
        v7 = v58;

        v18 = 0;
        v19 = v11;
LABEL_23:

        v11 = v19;
LABEL_24:

        goto LABEL_25;
      }

      v19 = v11;
      v64 = 0;
      v56 = [[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier alloc] initWithJSONDictionary:v19 error:&v64];
      v21 = v64;
      if (v21)
      {
        if (error)
        {
          v21 = v21;
          *error = v21;
        }

        v18 = 0;
        v17 = v56;
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"transportBundleId"];
    v61 = v8;
    v57 = v7;
    v59 = v10;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v60 = 0;
          v18 = 0;
          v17 = v56;
          goto LABEL_22;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v69 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transportBundleId"];
        v70 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v44 = v42;
        v8 = v61;
        v45 = [v44 initWithDomain:v43 code:2 userInfo:v13];
        v60 = 0;
        v18 = 0;
        *error = v45;
        goto LABEL_61;
      }

      v60 = v12;
    }

    else
    {
      v60 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"rank"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
LABEL_16:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"score"];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v55 = objc_alloc(MEMORY[0x1E696ABC0]);
            v52 = *MEMORY[0x1E698F240];
            v65 = *MEMORY[0x1E696A578];
            v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
            v66 = v49;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
            *error = [v55 initWithDomain:v52 code:2 userInfo:v50];
          }

          v16 = 0;
          v18 = 0;
          v17 = v56;
          goto LABEL_20;
        }

        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v56;
      v18 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)selfCopy initWithIdentifier:v61 model:v59 modelIdentifier:v56 transportBundleId:v60 rank:v14 score:v16];
      selfCopy = v18;
LABEL_20:

      v8 = v61;
LABEL_21:

      v10 = v59;
LABEL_22:

      v19 = v11;
      self = selfCopy;
      v7 = v57;
      goto LABEL_23;
    }

    if (error)
    {
      errorCopy3 = error;
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v47 = *MEMORY[0x1E698F240];
      v67 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rank"];
      v68 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v48 = [v46 initWithDomain:v47 code:2 userInfo:v15];
      v14 = 0;
      v18 = 0;
      v17 = v56;
      *errorCopy3 = v48;
      goto LABEL_20;
    }

    v14 = 0;
    v18 = 0;
LABEL_61:
    v17 = v56;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v18 = 0;
    goto LABEL_26;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v24 = *MEMORY[0x1E698F240];
  v75 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v76[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
  v25 = [v22 initWithDomain:v24 code:2 userInfo:v9];
  v8 = 0;
  v18 = 0;
  *errorCopy4 = v25;
LABEL_25:

LABEL_26:
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_model)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelIdentifier)
  {
    PBDataWriterPlaceMark();
    [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self->_modelIdentifier writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_transportBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRank)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasScore)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_55;
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
        LOBYTE(v35[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v35[0] & 0x7F) << v7;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasRank = 1;
            while (1)
            {
              LOBYTE(v35[0]) = 0;
              v23 = [fromCopy position] + 1;
              if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v22 |= (v35[0] & 0x7F) << v20;
              if ((v35[0] & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v13 = v21++ >= 9;
              if (v13)
              {
                v26 = 0;
                goto LABEL_49;
              }
            }

            if ([fromCopy hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v22;
            }

LABEL_49:
            v5->_rank = v26;
            break;
          case 5:
            v5->_hasScore = 1;
            v35[0] = 0;
            v28 = [fromCopy position] + 8;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            *&v5->_score = v35[0];
            break;
          case 6:
            v35[0] = 0;
            v35[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_54;
            }

            v18 = [[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier alloc] initByReadFrom:fromCopy];
            if (!v18)
            {
              goto LABEL_54;
            }

            modelIdentifier = v5->_modelIdentifier;
            v5->_modelIdentifier = v18;

            PBReaderRecallMark();
            break;
          default:
LABEL_39:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_54;
            }

            break;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 64;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 48;
            break;
          default:
            goto LABEL_39;
        }

        v27 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_54:
    v32 = 0;
  }

  else
  {
LABEL_55:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self identifier];
  model = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self model];
  modelIdentifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self modelIdentifier];
  transportBundleId = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self transportBundleId];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion rank](self, "rank")}];
  v9 = MEMORY[0x1E696AD98];
  [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)self score];
  v10 = [v9 numberWithDouble:?];
  v11 = [v3 initWithFormat:@"BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion with identifier: %@, model: %@, modelIdentifier: %@, transportBundleId: %@, rank: %@, score: %@", identifier, model, modelIdentifier, transportBundleId, v8, v10];

  return v11;
}

- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion)initWithIdentifier:(id)identifier model:(id)model modelIdentifier:(id)modelIdentifier transportBundleId:(id)id rank:(id)rank score:(id)score
{
  identifierCopy = identifier;
  modelCopy = model;
  modelIdentifierCopy = modelIdentifier;
  idCopy = id;
  rankCopy = rank;
  scoreCopy = score;
  v25.receiver = self;
  v25.super_class = BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion;
  v19 = [(BMEventBase *)&v25 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v19->_model, model);
    objc_storeStrong(&v19->_modelIdentifier, modelIdentifier);
    objc_storeStrong(&v19->_transportBundleId, id);
    if (rankCopy)
    {
      v19->_hasRank = 1;
      unsignedIntValue = [rankCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v19->_hasRank = 0;
    }

    v19->_rank = unsignedIntValue;
    if (scoreCopy)
    {
      v19->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v19->_hasScore = 0;
      v21 = -1.0;
    }

    v19->_score = v21;
  }

  return v19;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"model" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelIdentifier" number:6 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transportBundleId" number:3 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rank" number:4 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:5 type:0 subMessageClass:0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"model" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"modelIdentifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_346];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transportBundleId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rank" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __69__BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 modelIdentifier];
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

    v8 = [[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end