@interface BMProactiveHarvestingParsecSearchEntity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingParsecSearchEntity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingParsecSearchEntity)initWithName:(id)name category:(id)category probabilityScore:(id)score topics:(id)topics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_topicsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingParsecSearchEntity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMProactiveHarvestingParsecSearchEntity *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMProactiveHarvestingParsecSearchEntity *)self name];
      name4 = [v5 name];
      v11 = [name3 isEqual:name4];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (!-[BMProactiveHarvestingParsecSearchEntity hasCategory](self, "hasCategory") && ![v5 hasCategory] || -[BMProactiveHarvestingParsecSearchEntity hasCategory](self, "hasCategory") && objc_msgSend(v5, "hasCategory") && (v13 = -[BMProactiveHarvestingParsecSearchEntity category](self, "category"), v13 == objc_msgSend(v5, "category")))
    {
      if (!-[BMProactiveHarvestingParsecSearchEntity hasProbabilityScore](self, "hasProbabilityScore") && ![v5 hasProbabilityScore] || -[BMProactiveHarvestingParsecSearchEntity hasProbabilityScore](self, "hasProbabilityScore") && objc_msgSend(v5, "hasProbabilityScore") && (-[BMProactiveHarvestingParsecSearchEntity probabilityScore](self, "probabilityScore"), v15 = v14, objc_msgSend(v5, "probabilityScore"), v15 == v16))
      {
        topics = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
        topics2 = [v5 topics];
        if (topics == topics2)
        {
          v12 = 1;
        }

        else
        {
          topics3 = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
          topics4 = [v5 topics];
          v12 = [topics3 isEqual:topics4];
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    v12 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  name = [(BMProactiveHarvestingParsecSearchEntity *)self name];
  if ([(BMProactiveHarvestingParsecSearchEntity *)self hasCategory])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingParsecSearchEntity category](self, "category")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMProactiveHarvestingParsecSearchEntity *)self hasProbabilityScore]|| ([(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore];
    v6 = MEMORY[0x1E696AD98];
    [(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore];
    v7 = [v6 numberWithDouble:?];
  }

  _topicsJSONArray = [(BMProactiveHarvestingParsecSearchEntity *)self _topicsJSONArray];
  v15[0] = @"name";
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"category";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"probabilityScore";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"topics";
  null4 = _topicsJSONArray;
  if (!_topicsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (_topicsJSONArray)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v4)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (name)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (name)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:

  return v13;
}

- (id)_topicsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  topics = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
  v5 = [topics countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(topics);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [topics countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMProactiveHarvestingParsecSearchEntity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v76[0] = v27;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
        v8 = 0;
        selfCopy3 = 0;
        *error = [v25 initWithDomain:v26 code:2 userInfo:v9];
        error = v27;
        goto LABEL_54;
      }

      v8 = 0;
      selfCopy3 = 0;
      goto LABEL_55;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"category"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        errorCopy = error;
        v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"category"];
        v74 = v58;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v32 = v29;
        v10 = v31;
        error = 0;
        selfCopy3 = 0;
        *errorCopy = [v28 initWithDomain:v32 code:2 userInfo:v31];
        goto LABEL_53;
      }

      selfCopy3 = 0;
      goto LABEL_54;
    }

    v57 = v9;
  }

  else
  {
    v57 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"probabilityScore"];
  errorCopy2 = error;
  v56 = v7;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v58 = 0;
        selfCopy3 = 0;
        error = v57;
        goto LABEL_53;
      }

      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"probabilityScore"];
      v72 = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v58 = 0;
      selfCopy3 = 0;
      *errorCopy2 = [v33 initWithDomain:v34 code:2 userInfo:v14];
      goto LABEL_50;
    }

    v58 = v10;
  }

  else
  {
    v58 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"topics"];
  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:null];

  if (!v13)
  {
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v52 = v9;
      v53 = v8;
      selfCopy2 = self;
      goto LABEL_17;
    }

    if (!error)
    {
      selfCopy3 = 0;
      error = v57;
      goto LABEL_52;
    }

    v43 = objc_alloc(MEMORY[0x1E696ABC0]);
    v51 = v10;
    v44 = *MEMORY[0x1E698F240];
    v69 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"topics"];
    v70 = v14;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v46 = v45 = error;
    v47 = v44;
    v10 = v51;
    *v45 = [v43 initWithDomain:v47 code:2 userInfo:v46];

    selfCopy3 = 0;
LABEL_50:
    error = v57;
    goto LABEL_51;
  }

  v52 = v9;
  v53 = v8;
  selfCopy2 = self;

  v11 = 0;
LABEL_17:
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v11 = v11;
  v15 = [v11 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = v15;
  v17 = *v61;
  v49 = dictionaryCopy;
  v50 = v10;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v61 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v60 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionaryCopy = v49;
        v8 = v53;
        self = selfCopy2;
        error = v57;
        if (errorCopy2)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"topics"];
          v67 = v20;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v67;
          v39 = &v66;
LABEL_42:
          v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
          v41 = v35;
          error = v57;
          *errorCopy2 = [v41 initWithDomain:v36 code:2 userInfo:v40];
LABEL_46:
        }

LABEL_47:

        selfCopy3 = 0;
        v10 = v50;
        v9 = v52;
        goto LABEL_51;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v49;
        v8 = v53;
        self = selfCopy2;
        error = v57;
        if (errorCopy2)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v64 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"topics"];
          v65 = v20;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v65;
          v39 = &v64;
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v20 = v19;
      v21 = [BMProactiveHarvestingParsecSearchEntityTopic alloc];
      v59 = 0;
      v22 = [(BMProactiveHarvestingParsecSearchEntityTopic *)v21 initWithJSONDictionary:v20 error:&v59];
      v23 = v59;
      if (v23)
      {
        v40 = v23;
        if (errorCopy2)
        {
          v42 = v23;
          *errorCopy2 = v40;
        }

        dictionaryCopy = v49;
        v8 = v53;
        self = selfCopy2;
        error = v57;
        goto LABEL_46;
      }

      [v14 addObject:v22];
    }

    v16 = [v11 countByEnumeratingWithState:&v60 objects:v68 count:16];
    dictionaryCopy = v49;
    v10 = v50;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v8 = v53;
  error = v57;
  self = [(BMProactiveHarvestingParsecSearchEntity *)selfCopy2 initWithName:v53 category:v57 probabilityScore:v58 topics:v14];
  selfCopy3 = self;
  v9 = v52;
LABEL_51:

LABEL_52:
  v7 = v56;
LABEL_53:

LABEL_54:
LABEL_55:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingParsecSearchEntity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasCategory)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasProbabilityScore)
  {
    PBDataWriterWriteFloatField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_topics;
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
  v37.receiver = self;
  v37.super_class = BMProactiveHarvestingParsecSearchEntity;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_48;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v38[0] & 0x7F) << v8;
        if ((v38[0] & 0x80) == 0)
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
        goto LABEL_48;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v5->_hasProbabilityScore = 1;
        LODWORD(v38[0]) = 0;
        v28 = [fromCopy position] + 4;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 4, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v38 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_probabilityScore = *v38;
        goto LABEL_47;
      }

      if (v16 != 4)
      {
        goto LABEL_35;
      }

      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || (v24 = [[BMProactiveHarvestingParsecSearchEntityTopic alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_52:

        goto LABEL_49;
      }

      v25 = v24;
      [v6 addObject:v24];
      PBReaderRecallMark();

LABEL_47:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_48;
      }
    }

    if (v16 == 1)
    {
      v26 = PBReaderReadString();
      name = v5->_name;
      v5->_name = v26;

      goto LABEL_47;
    }

    if (v16 == 2)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v5->_hasCategory = 1;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v20 = [fromCopy position] + 1;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v19 |= (v38[0] & 0x7F) << v17;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v14 = v18++ >= 9;
        if (v14)
        {
          v23 = 0;
          goto LABEL_44;
        }
      }

      if ([fromCopy hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_44:
      v5->_category = v23;
      goto LABEL_47;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

LABEL_48:
  v32 = [v6 copy];
  topics = v5->_topics;
  v5->_topics = v32;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_49:
    v35 = 0;
  }

  else
  {
LABEL_50:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(BMProactiveHarvestingParsecSearchEntity *)self name];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingParsecSearchEntity category](self, "category")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMProactiveHarvestingParsecSearchEntity *)self probabilityScore];
  v7 = [v6 numberWithDouble:?];
  topics = [(BMProactiveHarvestingParsecSearchEntity *)self topics];
  v9 = [v3 initWithFormat:@"BMProactiveHarvestingParsecSearchEntity with name: %@, category: %@, probabilityScore: %@, topics: %@", name, v5, v7, topics];

  return v9;
}

- (BMProactiveHarvestingParsecSearchEntity)initWithName:(id)name category:(id)category probabilityScore:(id)score topics:(id)topics
{
  nameCopy = name;
  categoryCopy = category;
  scoreCopy = score;
  topicsCopy = topics;
  v20.receiver = self;
  v20.super_class = BMProactiveHarvestingParsecSearchEntity;
  v15 = [(BMEventBase *)&v20 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_name, name);
    if (categoryCopy)
    {
      v15->_hasCategory = 1;
      unsignedIntValue = [categoryCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v15->_hasCategory = 0;
    }

    v15->_category = unsignedIntValue;
    if (scoreCopy)
    {
      v15->_hasProbabilityScore = 1;
      [scoreCopy floatValue];
      v18 = v17;
    }

    else
    {
      v15->_hasProbabilityScore = 0;
      v18 = -1.0;
    }

    v15->_probabilityScore = v18;
    objc_storeStrong(&v15->_topics, topics);
  }

  return v15;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:2 type:4 subMessageClass:0];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"probabilityScore" number:3 type:1 subMessageClass:0];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topics" number:4 type:14 subMessageClass:objc_opt_class()];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"probabilityScore" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"topics_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_22388];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

id __50__BMProactiveHarvestingParsecSearchEntity_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _topicsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingParsecSearchEntity alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end