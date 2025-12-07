@interface BMEmojiEngagement
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMEmojiEngagement)initWithEmoji:(id)emoji wasPositiveEngagement:(id)engagement localeIdentifier:(id)identifier inputMode:(int)mode replacementContext:(id)context resultPosition:(id)position numberSearchQueriesRun:(id)run finalSearchQuery:(id)self0;
- (BMEmojiEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMEmojiEngagement

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emoji" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wasPositiveEngagement" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"localeIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inputMode" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"replacementContext" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resultPosition" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberSearchQueriesRun" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"finalSearchQuery" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    emoji = [(BMEmojiEngagement *)self emoji];
    emoji2 = [v5 emoji];
    v8 = emoji2;
    if (emoji == emoji2)
    {
    }

    else
    {
      emoji3 = [(BMEmojiEngagement *)self emoji];
      emoji4 = [v5 emoji];
      v11 = [emoji3 isEqual:emoji4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    if (-[BMEmojiEngagement hasWasPositiveEngagement](self, "hasWasPositiveEngagement") || [v5 hasWasPositiveEngagement])
    {
      if (![(BMEmojiEngagement *)self hasWasPositiveEngagement])
      {
        goto LABEL_33;
      }

      if (![v5 hasWasPositiveEngagement])
      {
        goto LABEL_33;
      }

      wasPositiveEngagement = [(BMEmojiEngagement *)self wasPositiveEngagement];
      if (wasPositiveEngagement != [v5 wasPositiveEngagement])
      {
        goto LABEL_33;
      }
    }

    localeIdentifier = [(BMEmojiEngagement *)self localeIdentifier];
    localeIdentifier2 = [v5 localeIdentifier];
    v16 = localeIdentifier2;
    if (localeIdentifier == localeIdentifier2)
    {
    }

    else
    {
      localeIdentifier3 = [(BMEmojiEngagement *)self localeIdentifier];
      localeIdentifier4 = [v5 localeIdentifier];
      v19 = [localeIdentifier3 isEqual:localeIdentifier4];

      if (!v19)
      {
        goto LABEL_33;
      }
    }

    inputMode = [(BMEmojiEngagement *)self inputMode];
    if (inputMode == [v5 inputMode])
    {
      replacementContext = [(BMEmojiEngagement *)self replacementContext];
      replacementContext2 = [v5 replacementContext];
      v23 = replacementContext2;
      if (replacementContext == replacementContext2)
      {
      }

      else
      {
        replacementContext3 = [(BMEmojiEngagement *)self replacementContext];
        replacementContext4 = [v5 replacementContext];
        v26 = [replacementContext3 isEqual:replacementContext4];

        if (!v26)
        {
          goto LABEL_33;
        }
      }

      if (!-[BMEmojiEngagement hasResultPosition](self, "hasResultPosition") && ![v5 hasResultPosition] || -[BMEmojiEngagement hasResultPosition](self, "hasResultPosition") && objc_msgSend(v5, "hasResultPosition") && (v27 = -[BMEmojiEngagement resultPosition](self, "resultPosition"), v27 == objc_msgSend(v5, "resultPosition")))
      {
        if (!-[BMEmojiEngagement hasNumberSearchQueriesRun](self, "hasNumberSearchQueriesRun") && ![v5 hasNumberSearchQueriesRun] || -[BMEmojiEngagement hasNumberSearchQueriesRun](self, "hasNumberSearchQueriesRun") && objc_msgSend(v5, "hasNumberSearchQueriesRun") && (v28 = -[BMEmojiEngagement numberSearchQueriesRun](self, "numberSearchQueriesRun"), v28 == objc_msgSend(v5, "numberSearchQueriesRun")))
        {
          finalSearchQuery = [(BMEmojiEngagement *)self finalSearchQuery];
          finalSearchQuery2 = [v5 finalSearchQuery];
          if (finalSearchQuery == finalSearchQuery2)
          {
            v12 = 1;
          }

          else
          {
            finalSearchQuery3 = [(BMEmojiEngagement *)self finalSearchQuery];
            finalSearchQuery4 = [v5 finalSearchQuery];
            v12 = [finalSearchQuery3 isEqual:finalSearchQuery4];
          }

          goto LABEL_34;
        }
      }
    }

LABEL_33:
    v12 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v28[8] = *MEMORY[0x1E69E9840];
  emoji = [(BMEmojiEngagement *)self emoji];
  if ([(BMEmojiEngagement *)self hasWasPositiveEngagement])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMEmojiEngagement wasPositiveEngagement](self, "wasPositiveEngagement")}];
  }

  else
  {
    v4 = 0;
  }

  localeIdentifier = [(BMEmojiEngagement *)self localeIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement inputMode](self, "inputMode")}];
  replacementContext = [(BMEmojiEngagement *)self replacementContext];
  if ([(BMEmojiEngagement *)self hasResultPosition])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement resultPosition](self, "resultPosition")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMEmojiEngagement *)self hasNumberSearchQueriesRun])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement numberSearchQueriesRun](self, "numberSearchQueriesRun")}];
  }

  else
  {
    v8 = 0;
  }

  finalSearchQuery = [(BMEmojiEngagement *)self finalSearchQuery];
  v27[0] = @"emoji";
  null = emoji;
  if (!emoji)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v28[0] = null;
  v27[1] = @"wasPositiveEngagement";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v28[1] = null2;
  v27[2] = @"localeIdentifier";
  null3 = localeIdentifier;
  if (!localeIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = emoji;
  v20 = null3;
  v28[2] = null3;
  v27[3] = @"inputMode";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v4;
  v28[3] = null4;
  v27[4] = @"replacementContext";
  null5 = replacementContext;
  if (!replacementContext)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = localeIdentifier;
  v28[4] = null5;
  v27[5] = @"resultPosition";
  null6 = v7;
  if (!v7)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v27[6] = @"numberSearchQueriesRun";
  null7 = v8;
  if (!v8)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null7;
  v27[7] = @"finalSearchQuery";
  null8 = finalSearchQuery;
  if (!finalSearchQuery)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null8;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (finalSearchQuery)
  {
    if (v8)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (!v7)
  {
  }

  if (!replacementContext)
  {
  }

  if (!v6)
  {
  }

  if (v23)
  {
    if (v24)
    {
      goto LABEL_36;
    }

LABEL_43:

    if (v25)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

  if (!v24)
  {
    goto LABEL_43;
  }

LABEL_36:
  if (v25)
  {
    goto LABEL_37;
  }

LABEL_44:

LABEL_37:

  return v18;
}

- (BMEmojiEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"emoji"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"wasPositiveEngagement"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v18 = 0;
          goto LABEL_51;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wasPositiveEngagement"];
        v74 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v23 = v20;
        v11 = v22;
        v10 = 0;
        v18 = 0;
        *errorCopy = [v19 initWithDomain:v23 code:2 userInfo:v22];
        goto LABEL_50;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"localeIdentifier"];
    v59 = v11;
    v60 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v21 = 0;
          v18 = 0;
          goto LABEL_50;
        }

        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v71 = *MEMORY[0x1E696A578];
        v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"localeIdentifier"];
        v72 = v58;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v25 = v24;
        v11 = v59;
        v21 = 0;
        v18 = 0;
        *errorCopy = [v57 initWithDomain:v25 code:2 userInfo:v13];
LABEL_49:

        v10 = v60;
LABEL_50:

        goto LABEL_51;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"inputMode"];
    v56 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v58 = 0;
            v18 = 0;
            goto LABEL_48;
          }

          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = *MEMORY[0x1E698F240];
          v69 = *MEMORY[0x1E696A578];
          v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"inputMode"];
          v70 = v53;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v58 = 0;
          v18 = 0;
          *errorCopy = [v42 initWithDomain:v43 code:2 userInfo:v26];
          goto LABEL_76;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMEmojiEngagementInputModeFromString(v13)];
      }

      v58 = v14;
    }

    else
    {
      v58 = 0;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"replacementContext"];
    v49 = v7;
    if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = 0;
LABEL_33:
      v27 = [dictionaryCopy objectForKeyedSubscript:@"resultPosition"];
      v50 = v8;
      v48 = v9;
      if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v51 = 0;
            v18 = 0;
            goto LABEL_46;
          }

          selfCopy3 = self;
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v65 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"resultPosition"];
          v66 = v30;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v36 = v35;
          v9 = v48;
          v37 = [v52 initWithDomain:v36 code:2 userInfo:v28];
          v51 = 0;
          v18 = 0;
          *errorCopy = v37;
          goto LABEL_44;
        }

        v51 = v27;
      }

      else
      {
        v51 = 0;
      }

      v28 = [dictionaryCopy objectForKeyedSubscript:@"numberSearchQueriesRun"];
      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        selfCopy3 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v30 = 0;
            v18 = 0;
            goto LABEL_44;
          }

          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberSearchQueriesRun"];
          v64 = v32;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v39 = [v46 initWithDomain:v38 code:2 userInfo:v31];
          v30 = 0;
          v18 = 0;
          *errorCopy = v39;
          goto LABEL_43;
        }

        v30 = v28;
      }

      else
      {
        selfCopy3 = self;
        v30 = 0;
      }

      v31 = [dictionaryCopy objectForKeyedSubscript:@"finalSearchQuery"];
      if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v47 = objc_alloc(MEMORY[0x1E696ABC0]);
            v44 = *MEMORY[0x1E698F240];
            v61 = *MEMORY[0x1E696A578];
            v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"finalSearchQuery"];
            v62 = v40;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            *errorCopy = [v47 initWithDomain:v44 code:2 userInfo:v41];
          }

          v32 = 0;
          v18 = 0;
          goto LABEL_43;
        }

        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v18 = -[BMEmojiEngagement initWithEmoji:wasPositiveEngagement:localeIdentifier:inputMode:replacementContext:resultPosition:numberSearchQueriesRun:finalSearchQuery:](selfCopy3, "initWithEmoji:wasPositiveEngagement:localeIdentifier:inputMode:replacementContext:resultPosition:numberSearchQueriesRun:finalSearchQuery:", v50, v60, v56, [v58 intValue], v53, v51, v30, v32);
      selfCopy3 = v18;
LABEL_43:

      v9 = v48;
LABEL_44:

      self = selfCopy3;
      v8 = v50;
LABEL_45:
      v11 = v59;
LABEL_46:

      v7 = v49;
LABEL_47:

LABEL_48:
      v21 = v56;
      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v26;
      goto LABEL_33;
    }

    if (errorCopy)
    {
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v45 = *MEMORY[0x1E698F240];
      v67 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"replacementContext"];
      v68 = v51;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v34 = [v54 initWithDomain:v45 code:2 userInfo:v27];
      v53 = 0;
      v18 = 0;
      *errorCopy = v34;
      goto LABEL_45;
    }

    v53 = 0;
    v18 = 0;
LABEL_76:
    v11 = v59;
    goto LABEL_47;
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
    goto LABEL_52;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy2 = error;
  v17 = *MEMORY[0x1E698F240];
  v75 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"emoji"];
  v76[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
  v8 = 0;
  v18 = 0;
  *errorCopy2 = [v15 initWithDomain:v17 code:2 userInfo:v9];
LABEL_51:

LABEL_52:
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMEmojiEngagement *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_emoji)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasWasPositiveEngagement)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_replacementContext)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasResultPosition)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = toCopy;
  if (self->_hasNumberSearchQueriesRun)
  {
    PBDataWriterWriteInt32Field();
    v4 = toCopy;
  }

  if (self->_finalSearchQuery)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMEmojiEngagement;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_90;
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
        v51 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v51 & 0x7F) << v7;
        if ((v51 & 0x80) == 0)
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
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v5->_hasNumberSearchQueriesRun = 1;
            while (1)
            {
              v51 = 0;
              v43 = [fromCopy position] + 1;
              if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v42 |= (v51 & 0x7F) << v40;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v13 = v41++ >= 9;
              if (v13)
              {
                v29 = 0;
                goto LABEL_75;
              }
            }

            if ([fromCopy hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v42;
            }

LABEL_75:
            v46 = 32;
LABEL_82:
            *(&v5->super.super.isa + v46) = v29;
            goto LABEL_87;
          }

          if (v15 != 8)
          {
LABEL_70:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_89;
            }

            goto LABEL_87;
          }

          v37 = PBReaderReadString();
          v38 = 64;
        }

        else
        {
          if (v15 != 5)
          {
            if (v15 != 6)
            {
              goto LABEL_70;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            v5->_hasResultPosition = 1;
            while (1)
            {
              v51 = 0;
              v26 = [fromCopy position] + 1;
              if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v25 |= (v51 & 0x7F) << v23;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v13 = v24++ >= 9;
              if (v13)
              {
                v29 = 0;
                goto LABEL_81;
              }
            }

            if ([fromCopy hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_81:
            v46 = 28;
            goto LABEL_82;
          }

          v37 = PBReaderReadString();
          v38 = 56;
        }

        goto LABEL_60;
      }

      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v37 = PBReaderReadString();
          v38 = 48;
          goto LABEL_60;
        }

        if (v15 != 4)
        {
          goto LABEL_70;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v51 = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (v51 & 0x7F) << v30;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          if (v31++ > 8)
          {
            goto LABEL_85;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v32 > 0xA)
        {
LABEL_85:
          LODWORD(v32) = 0;
        }

        v5->_inputMode = v32;
      }

      else
      {
        if (v15 == 1)
        {
          v37 = PBReaderReadString();
          v38 = 40;
LABEL_60:
          v39 = *(&v5->super.super.isa + v38);
          *(&v5->super.super.isa + v38) = v37;

          goto LABEL_87;
        }

        if (v15 != 2)
        {
          goto LABEL_70;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasWasPositiveEngagement = 1;
        while (1)
        {
          v51 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v51 & 0x7F) << v16;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_77;
          }
        }

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_77:
        v5->_wasPositiveEngagement = v22;
      }

LABEL_87:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_89:
    v48 = 0;
  }

  else
  {
LABEL_90:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  emoji = [(BMEmojiEngagement *)self emoji];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMEmojiEngagement wasPositiveEngagement](self, "wasPositiveEngagement")}];
  localeIdentifier = [(BMEmojiEngagement *)self localeIdentifier];
  v7 = BMEmojiEngagementInputModeAsString([(BMEmojiEngagement *)self inputMode]);
  replacementContext = [(BMEmojiEngagement *)self replacementContext];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement resultPosition](self, "resultPosition")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement numberSearchQueriesRun](self, "numberSearchQueriesRun")}];
  finalSearchQuery = [(BMEmojiEngagement *)self finalSearchQuery];
  v12 = [v3 initWithFormat:@"BMEmojiEngagement with emoji: %@, wasPositiveEngagement: %@, localeIdentifier: %@, inputMode: %@, replacementContext: %@, resultPosition: %@, numberSearchQueriesRun: %@, finalSearchQuery: %@", emoji, v5, localeIdentifier, v7, replacementContext, v9, v10, finalSearchQuery];

  return v12;
}

- (BMEmojiEngagement)initWithEmoji:(id)emoji wasPositiveEngagement:(id)engagement localeIdentifier:(id)identifier inputMode:(int)mode replacementContext:(id)context resultPosition:(id)position numberSearchQueriesRun:(id)run finalSearchQuery:(id)self0
{
  emojiCopy = emoji;
  engagementCopy = engagement;
  identifierCopy = identifier;
  contextCopy = context;
  positionCopy = position;
  runCopy = run;
  queryCopy = query;
  v28.receiver = self;
  v28.super_class = BMEmojiEngagement;
  v21 = [(BMEventBase *)&v28 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_emoji, emoji);
    if (engagementCopy)
    {
      v21->_hasWasPositiveEngagement = 1;
      v21->_wasPositiveEngagement = [engagementCopy BOOLValue];
    }

    else
    {
      v21->_hasWasPositiveEngagement = 0;
      v21->_wasPositiveEngagement = 0;
    }

    objc_storeStrong(&v21->_localeIdentifier, identifier);
    v21->_inputMode = mode;
    objc_storeStrong(&v21->_replacementContext, context);
    if (positionCopy)
    {
      v21->_hasResultPosition = 1;
      intValue = [positionCopy intValue];
    }

    else
    {
      v21->_hasResultPosition = 0;
      intValue = -1;
    }

    v21->_resultPosition = intValue;
    if (runCopy)
    {
      v21->_hasNumberSearchQueriesRun = 1;
      intValue2 = [runCopy intValue];
    }

    else
    {
      v21->_hasNumberSearchQueriesRun = 0;
      intValue2 = -1;
    }

    v21->_numberSearchQueriesRun = intValue2;
    objc_storeStrong(&v21->_finalSearchQuery, query);
  }

  return v21;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emoji" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wasPositiveEngagement" number:2 type:12 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localeIdentifier" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inputMode" number:4 type:4 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"replacementContext" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultPosition" number:6 type:2 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberSearchQueriesRun" number:7 type:2 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"finalSearchQuery" number:8 type:13 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
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

    v8 = [[BMEmojiEngagement alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end