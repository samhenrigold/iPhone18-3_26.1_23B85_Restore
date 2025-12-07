@interface BMMessagesMediaRendered
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesMediaRendered)initWithAbsoluteTimestamp:(id)timestamp mediaAttributes:(id)attributes isOnScreen:(id)screen isFirstView:(id)view;
- (BMMessagesMediaRendered)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_mediaAttributesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesMediaRendered

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMMessagesMediaRendered *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMMessagesMediaRendered *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    mediaAttributes = [(BMMessagesMediaRendered *)self mediaAttributes];
    mediaAttributes2 = [v5 mediaAttributes];
    v15 = mediaAttributes2;
    if (mediaAttributes == mediaAttributes2)
    {
    }

    else
    {
      mediaAttributes3 = [(BMMessagesMediaRendered *)self mediaAttributes];
      mediaAttributes4 = [v5 mediaAttributes];
      v18 = [mediaAttributes3 isEqual:mediaAttributes4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMMessagesMediaRendered hasIsOnScreen](self, "hasIsOnScreen") && ![v5 hasIsOnScreen] || -[BMMessagesMediaRendered hasIsOnScreen](self, "hasIsOnScreen") && objc_msgSend(v5, "hasIsOnScreen") && (v19 = -[BMMessagesMediaRendered isOnScreen](self, "isOnScreen"), v19 == objc_msgSend(v5, "isOnScreen")))
    {
      if (!-[BMMessagesMediaRendered hasIsFirstView](self, "hasIsFirstView") && ![v5 hasIsFirstView])
      {
        LOBYTE(v12) = 1;
        goto LABEL_22;
      }

      if (-[BMMessagesMediaRendered hasIsFirstView](self, "hasIsFirstView") && [v5 hasIsFirstView])
      {
        isFirstView = [(BMMessagesMediaRendered *)self isFirstView];
        v12 = isFirstView ^ [v5 isFirstView] ^ 1;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMMessagesMediaRendered *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMMessagesMediaRendered *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  _mediaAttributesJSONArray = [(BMMessagesMediaRendered *)self _mediaAttributesJSONArray];
  if ([(BMMessagesMediaRendered *)self hasIsOnScreen])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isOnScreen](self, "isOnScreen")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMessagesMediaRendered *)self hasIsFirstView])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isFirstView](self, "isFirstView")}];
  }

  else
  {
    v9 = 0;
  }

  v16[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"mediaAttributes";
  null2 = _mediaAttributesJSONArray;
  if (!_mediaAttributesJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"isOnScreen";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"isFirstView";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v8)
    {
LABEL_20:
      if (_mediaAttributesJSONArray)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!_mediaAttributesJSONArray)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:

  return v14;
}

- (id)_mediaAttributesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mediaAttributes = [(BMMessagesMediaRendered *)self mediaAttributes];
  v5 = [mediaAttributes countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(mediaAttributes);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [mediaAttributes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMessagesMediaRendered)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E695DF00];
      v9 = v6;
      v10 = [v8 alloc];
      [v9 doubleValue];
      v12 = v11;

      v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v7 = [v14 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v75 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v76[0] = v15;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
          v7 = 0;
          selfCopy2 = 0;
          *error = [v47 initWithDomain:v48 code:2 userInfo:?];

          goto LABEL_51;
        }

        v7 = 0;
        selfCopy2 = 0;
        goto LABEL_52;
      }

      v13 = v6;
    }

    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"mediaAttributes"];
  null = [MEMORY[0x1E695DFB0] null];
  v17 = [v15 isEqual:null];

  v56 = v6;
  if (v17)
  {
    v51 = v7;
    selfCopy3 = self;

    v15 = 0;
LABEL_14:
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v15 = v15;
    v18 = [v15 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v61;
    v50 = dictionaryCopy;
LABEL_16:
    v21 = 0;
    while (1)
    {
      if (*v61 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v60 + 1) + 8 * v21);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"mediaAttributes"];
          v69 = v23;
          v31 = MEMORY[0x1E695DF20];
          v32 = &v69;
          v33 = &v68;
          goto LABEL_31;
        }

        goto LABEL_38;
      }

      v23 = v22;
      v24 = [BMMessagesMediaRenderedMediaAttributes alloc];
      v59 = 0;
      v25 = [(BMMessagesMediaRenderedMediaAttributes *)v24 initWithJSONDictionary:v23 error:&v59];
      v26 = v59;
      if (v26)
      {
        v34 = v26;
        if (error)
        {
          v37 = v26;
          *error = v34;
        }

        selfCopy2 = 0;
        goto LABEL_35;
      }

      [v57 addObject:v25];

      if (v19 == ++v21)
      {
        v19 = [v15 countByEnumeratingWithState:&v60 objects:v72 count:16];
        dictionaryCopy = v50;
        if (v19)
        {
          goto LABEL_16;
        }

LABEL_24:

        v23 = [dictionaryCopy objectForKeyedSubscript:@"isOnScreen"];
        if (!v23)
        {
          v27 = 0;
          v7 = v51;
          self = selfCopy3;
          goto LABEL_42;
        }

        objc_opt_class();
        v7 = v51;
        self = selfCopy3;
        if (objc_opt_isKindOfClass())
        {
          v27 = 0;
LABEL_42:
          v41 = [dictionaryCopy objectForKeyedSubscript:@"isFirstView"];
          if (!v41 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v34 = 0;
            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = v41;
LABEL_45:
            self = [(BMMessagesMediaRendered *)self initWithAbsoluteTimestamp:v7 mediaAttributes:v57 isOnScreen:v27 isFirstView:v34];
            selfCopy2 = self;
          }

          else
          {
            if (error)
            {
              v54 = objc_alloc(MEMORY[0x1E696ABC0]);
              v52 = *MEMORY[0x1E698F240];
              v64 = *MEMORY[0x1E696A578];
              v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFirstView"];
              v65 = v45;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
              *error = [v54 initWithDomain:v52 code:2 userInfo:v46];
            }

            v34 = 0;
            selfCopy2 = 0;
          }

LABEL_46:

LABEL_47:
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v23;
            goto LABEL_42;
          }

          if (error)
          {
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v66 = *MEMORY[0x1E696A578];
            v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOnScreen"];
            v67 = v34;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v44 = [v49 initWithDomain:v43 code:2 userInfo:v41];
            v27 = 0;
            selfCopy2 = 0;
            *error = v44;
            goto LABEL_46;
          }

          v27 = 0;
          selfCopy2 = 0;
        }

LABEL_49:
        v6 = v56;

        goto LABEL_51;
      }
    }

    errorCopy2 = error;
    if (error)
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v70 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"mediaAttributes"];
      v71 = v23;
      v31 = MEMORY[0x1E695DF20];
      v32 = &v71;
      v33 = &v70;
LABEL_31:
      v34 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
      v35 = [v29 initWithDomain:v30 code:2 userInfo:v34];
      selfCopy2 = 0;
      *errorCopy2 = v35;
LABEL_35:
      v27 = v15;
      dictionaryCopy = v50;
      v7 = v51;
      self = selfCopy3;
      goto LABEL_47;
    }

LABEL_38:
    selfCopy2 = 0;
    v27 = v15;
    dictionaryCopy = v50;
    v7 = v51;
    self = selfCopy3;
    goto LABEL_49;
  }

  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v51 = v7;
    selfCopy3 = self;
    goto LABEL_14;
  }

  if (error)
  {
    v38 = objc_alloc(MEMORY[0x1E696ABC0]);
    v39 = *MEMORY[0x1E698F240];
    v73 = *MEMORY[0x1E696A578];
    v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"mediaAttributes"];
    v74 = v57;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v40 = [v38 initWithDomain:v39 code:2 userInfo:v27];
    selfCopy2 = 0;
    *error = v40;
    goto LABEL_49;
  }

  selfCopy2 = 0;
LABEL_51:

LABEL_52:
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesMediaRendered *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_mediaAttributes;
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

  if (self->_hasIsOnScreen)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFirstView)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMMessagesMediaRendered;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_59;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_57;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v43[0] & 0x7F) << v8;
        if ((v43[0] & 0x80) == 0)
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
        goto LABEL_57;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        break;
      }

      if (v16 == 1)
      {
        v5->_hasRaw_absoluteTimestamp = 1;
        v43[0] = 0;
        v26 = [fromCopy position] + 8;
        if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 8, v27 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v43 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_absoluteTimestamp = v43[0];
        goto LABEL_56;
      }

      if (v16 != 2)
      {
        goto LABEL_35;
      }

      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMMessagesMediaRenderedMediaAttributes alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_61:

        goto LABEL_58;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_56:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_57;
      }
    }

    if (v16 == 3)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v5->_hasIsOnScreen = 1;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v31 = [fromCopy position] + 1;
        if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v30 |= (v43[0] & 0x7F) << v28;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v14 = v29++ >= 9;
        if (v14)
        {
          LOBYTE(v25) = 0;
          goto LABEL_52;
        }
      }

      v25 = (v30 != 0) & ~[fromCopy hasError];
LABEL_52:
      v34 = 32;
      goto LABEL_53;
    }

    if (v16 == 4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v5->_hasIsFirstView = 1;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v22 = [fromCopy position] + 1;
        if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v21 |= (v43[0] & 0x7F) << v19;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v14 = v20++ >= 9;
        if (v14)
        {
          LOBYTE(v25) = 0;
          goto LABEL_50;
        }
      }

      v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_50:
      v34 = 34;
LABEL_53:
      *(&v5->super.super.isa + v34) = v25;
      goto LABEL_56;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_57:
  v37 = [v6 copy];
  mediaAttributes = v5->_mediaAttributes;
  v5->_mediaAttributes = v37;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_58:
    v40 = 0;
  }

  else
  {
LABEL_59:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMMessagesMediaRendered *)self absoluteTimestamp];
  mediaAttributes = [(BMMessagesMediaRendered *)self mediaAttributes];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isOnScreen](self, "isOnScreen")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isFirstView](self, "isFirstView")}];
  v8 = [v3 initWithFormat:@"BMMessagesMediaRendered with absoluteTimestamp: %@, mediaAttributes: %@, isOnScreen: %@, isFirstView: %@", absoluteTimestamp, mediaAttributes, v6, v7];

  return v8;
}

- (BMMessagesMediaRendered)initWithAbsoluteTimestamp:(id)timestamp mediaAttributes:(id)attributes isOnScreen:(id)screen isFirstView:(id)view
{
  timestampCopy = timestamp;
  attributesCopy = attributes;
  screenCopy = screen;
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = BMMessagesMediaRendered;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v14->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v14->_hasRaw_absoluteTimestamp = 0;
      v15 = -1.0;
    }

    v14->_raw_absoluteTimestamp = v15;
    objc_storeStrong(&v14->_mediaAttributes, attributes);
    if (screenCopy)
    {
      v14->_hasIsOnScreen = 1;
      v14->_isOnScreen = [screenCopy BOOLValue];
    }

    else
    {
      v14->_hasIsOnScreen = 0;
      v14->_isOnScreen = 0;
    }

    if (viewCopy)
    {
      v14->_hasIsFirstView = 1;
      v14->_isFirstView = [viewCopy BOOLValue];
    }

    else
    {
      v14->_hasIsFirstView = 0;
      v14->_isFirstView = 0;
    }
  }

  return v14;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaAttributes" number:2 type:14 subMessageClass:objc_opt_class()];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOnScreen" number:3 type:12 subMessageClass:0];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstView" number:4 type:12 subMessageClass:0];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mediaAttributes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_70430];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOnScreen" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstView" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

id __34__BMMessagesMediaRendered_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _mediaAttributesJSONArray];
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

    v8 = [[BMMessagesMediaRendered alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end