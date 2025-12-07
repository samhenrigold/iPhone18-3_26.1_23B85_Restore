@interface BMPortraitEntity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPortraitEntity)initWithCategory:(int)category algorithm:(int)algorithm decayRate:(id)rate score:(id)score osBuild:(id)build assetVersion:(id)version name:(id)name bestLanguage:(id)self0 sentimentScore:(id)self1;
- (BMPortraitEntity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPortraitEntity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    category = [(BMPortraitEntity *)self category];
    if (category != [v5 category])
    {
      goto LABEL_37;
    }

    algorithm = [(BMPortraitEntity *)self algorithm];
    if (algorithm != [v5 algorithm])
    {
      goto LABEL_37;
    }

    if (-[BMPortraitEntity hasDecayRate](self, "hasDecayRate") || [v5 hasDecayRate])
    {
      if (![(BMPortraitEntity *)self hasDecayRate])
      {
        goto LABEL_37;
      }

      if (![v5 hasDecayRate])
      {
        goto LABEL_37;
      }

      [(BMPortraitEntity *)self decayRate];
      v9 = v8;
      [v5 decayRate];
      if (v9 != v10)
      {
        goto LABEL_37;
      }
    }

    if (-[BMPortraitEntity hasScore](self, "hasScore") || [v5 hasScore])
    {
      if (![(BMPortraitEntity *)self hasScore])
      {
        goto LABEL_37;
      }

      if (![v5 hasScore])
      {
        goto LABEL_37;
      }

      [(BMPortraitEntity *)self score];
      v12 = v11;
      [v5 score];
      if (v12 != v13)
      {
        goto LABEL_37;
      }
    }

    osBuild = [(BMPortraitEntity *)self osBuild];
    osBuild2 = [v5 osBuild];
    v16 = osBuild2;
    if (osBuild == osBuild2)
    {
    }

    else
    {
      osBuild3 = [(BMPortraitEntity *)self osBuild];
      osBuild4 = [v5 osBuild];
      v19 = [osBuild3 isEqual:osBuild4];

      if (!v19)
      {
        goto LABEL_37;
      }
    }

    if (-[BMPortraitEntity hasAssetVersion](self, "hasAssetVersion") || [v5 hasAssetVersion])
    {
      if (![(BMPortraitEntity *)self hasAssetVersion])
      {
        goto LABEL_37;
      }

      if (![v5 hasAssetVersion])
      {
        goto LABEL_37;
      }

      assetVersion = [(BMPortraitEntity *)self assetVersion];
      if (assetVersion != [v5 assetVersion])
      {
        goto LABEL_37;
      }
    }

    name = [(BMPortraitEntity *)self name];
    name2 = [v5 name];
    v24 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMPortraitEntity *)self name];
      name4 = [v5 name];
      v27 = [name3 isEqual:name4];

      if (!v27)
      {
        goto LABEL_37;
      }
    }

    bestLanguage = [(BMPortraitEntity *)self bestLanguage];
    bestLanguage2 = [v5 bestLanguage];
    v30 = bestLanguage2;
    if (bestLanguage == bestLanguage2)
    {
    }

    else
    {
      bestLanguage3 = [(BMPortraitEntity *)self bestLanguage];
      bestLanguage4 = [v5 bestLanguage];
      v33 = [bestLanguage3 isEqual:bestLanguage4];

      if (!v33)
      {
        goto LABEL_37;
      }
    }

    if (!-[BMPortraitEntity hasSentimentScore](self, "hasSentimentScore") && ![v5 hasSentimentScore])
    {
      v20 = 1;
      goto LABEL_38;
    }

    if (-[BMPortraitEntity hasSentimentScore](self, "hasSentimentScore") && [v5 hasSentimentScore])
    {
      [(BMPortraitEntity *)self sentimentScore];
      v35 = v34;
      [v5 sentimentScore];
      v20 = v35 == v36;
LABEL_38:

      goto LABEL_39;
    }

LABEL_37:
    v20 = 0;
    goto LABEL_38;
  }

  v20 = 0;
LABEL_39:

  return v20;
}

- (id)jsonDictionary
{
  v37[9] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity category](self, "category")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity algorithm](self, "algorithm")}];
  if (![(BMPortraitEntity *)self hasDecayRate]|| ([(BMPortraitEntity *)self decayRate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMPortraitEntity *)self decayRate];
    v6 = MEMORY[0x1E696AD98];
    [(BMPortraitEntity *)self decayRate];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMPortraitEntity *)self hasScore]|| ([(BMPortraitEntity *)self score], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMPortraitEntity *)self score];
    v9 = MEMORY[0x1E696AD98];
    [(BMPortraitEntity *)self score];
    v10 = [v9 numberWithDouble:?];
  }

  osBuild = [(BMPortraitEntity *)self osBuild];
  if ([(BMPortraitEntity *)self hasAssetVersion])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity assetVersion](self, "assetVersion")}];
  }

  else
  {
    v35 = 0;
  }

  name = [(BMPortraitEntity *)self name];
  bestLanguage = [(BMPortraitEntity *)self bestLanguage];
  if (![(BMPortraitEntity *)self hasSentimentScore]|| ([(BMPortraitEntity *)self sentimentScore], fabs(v12) == INFINITY))
  {
    v14 = 0;
  }

  else
  {
    [(BMPortraitEntity *)self sentimentScore];
    v13 = MEMORY[0x1E696AD98];
    [(BMPortraitEntity *)self sentimentScore];
    v14 = [v13 numberWithDouble:?];
  }

  v36[0] = @"category";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v37[0] = null;
  v36[1] = @"algorithm";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v37[1] = null2;
  v36[2] = @"decayRate";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v27 = null3;
  v37[2] = null3;
  v36[3] = @"score";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v37[3] = null4;
  v36[4] = @"osBuild";
  null5 = osBuild;
  if (!osBuild)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v7;
  v37[4] = null5;
  v36[5] = @"assetVersion";
  null6 = v35;
  if (!v35)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37[5] = null6;
  v36[6] = @"name";
  null7 = name;
  if (!name)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = osBuild;
  v37[6] = null7;
  v36[7] = @"bestLanguage";
  null8 = bestLanguage;
  if (!bestLanguage)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v37[7] = null8;
  v36[8] = @"sentimentScore";
  null9 = v14;
  if (!v14)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = null9;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:9];
  if (!v14)
  {
  }

  if (!bestLanguage)
  {
  }

  if (!name)
  {
  }

  if (!v35)
  {
  }

  if (!v22)
  {
  }

  if (!v10)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_48;
    }

LABEL_53:

    if (v32)
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (!v31)
  {
    goto LABEL_53;
  }

LABEL_48:
  if (v32)
  {
    goto LABEL_49;
  }

LABEL_54:

LABEL_49:

  return v25;
}

- (BMPortraitEntity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v96[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"category"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"algorithm"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v10 = 0;
            v21 = 0;
            goto LABEL_47;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"algorithm"];
          v94 = v22;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v53 = [v51 initWithDomain:v52 code:2 userInfo:v12];
          v10 = 0;
          v21 = 0;
          *error = v53;
          goto LABEL_46;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMPortraitEntityAlgorithmFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"decayRate"];
    v73 = v9;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        selfCopy3 = self;
        v25 = v12;
        if (!error)
        {
          v22 = 0;
          v21 = 0;
          self = selfCopy3;
          goto LABEL_46;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = v10;
        v27 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v61 = objc_opt_class();
        v29 = v28;
        v12 = v25;
        v77 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v61, @"decayRate"];
        v92 = v77;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v30 = v27;
        v10 = v70;
        v31 = [v26 initWithDomain:v30 code:2 userInfo:v13];
        v22 = 0;
        v21 = 0;
        *error = v31;
        goto LABEL_84;
      }

      v75 = v12;
    }

    else
    {
      v75 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    v74 = v7;
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v77 = 0;
LABEL_23:
      v14 = [dictionaryCopy objectForKeyedSubscript:@"osBuild"];
      selfCopy2 = self;
      v66 = v6;
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v72 = 0;
            v21 = 0;
            v22 = v75;
            goto LABEL_44;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = v10;
          v38 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osBuild"];
          v88 = v68;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v39 = v38;
          v10 = v37;
          v40 = [v36 initWithDomain:v39 code:2 userInfo:v15];
          v72 = 0;
          v21 = 0;
          *error = v40;
          v22 = v75;
          goto LABEL_43;
        }

        v72 = v14;
      }

      else
      {
        v72 = 0;
      }

      v15 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
      v69 = v10;
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v68 = 0;
            v21 = 0;
            goto LABEL_42;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = v12;
          v43 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetVersion"];
          v86 = v67;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v44 = v43;
          v12 = v42;
          self = selfCopy2;
          v45 = [v41 initWithDomain:v44 code:2 userInfo:v16];
          v68 = 0;
          v21 = 0;
          *error = v45;
LABEL_41:

          v10 = v69;
LABEL_42:
          v22 = v75;
LABEL_43:

          v6 = v66;
LABEL_44:

          v7 = v74;
LABEL_45:

          v9 = v73;
LABEL_46:

          goto LABEL_47;
        }

        v68 = v15;
      }

      else
      {
        v68 = 0;
      }

      v16 = [dictionaryCopy objectForKeyedSubscript:@"name"];
      v65 = v12;
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v67 = 0;
            v21 = 0;
            goto LABEL_41;
          }

          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
          v84 = v18;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v56 = [v54 initWithDomain:v55 code:2 userInfo:v17];
          v67 = 0;
          v21 = 0;
          *error = v56;
          goto LABEL_40;
        }

        v67 = v16;
      }

      else
      {
        v67 = 0;
      }

      v17 = [dictionaryCopy objectForKeyedSubscript:@"bestLanguage"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v18 = 0;
            v21 = 0;
            goto LABEL_40;
          }

          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v81 = *MEMORY[0x1E696A578];
          errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bestLanguage"];
          v82 = errorCopy;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v58 = [v63 initWithDomain:v57 code:2 userInfo:v19];
          v18 = 0;
          v21 = 0;
          *error = v58;
          goto LABEL_39;
        }

        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"sentimentScore"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy = error;
          if (error)
          {
            v64 = objc_alloc(MEMORY[0x1E696ABC0]);
            v62 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sentimentScore"];
            v80 = v59;
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            *error = [v64 initWithDomain:v62 code:2 userInfo:v60];

            errorCopy = 0;
          }

          v21 = 0;
          goto LABEL_39;
        }

        errorCopy = v19;
      }

      else
      {
        errorCopy = 0;
      }

      v21 = -[BMPortraitEntity initWithCategory:algorithm:decayRate:score:osBuild:assetVersion:name:bestLanguage:sentimentScore:](selfCopy2, "initWithCategory:algorithm:decayRate:score:osBuild:assetVersion:name:bestLanguage:sentimentScore:", [v74 intValue], objc_msgSend(v69, "intValue"), v75, v77, v72, v68, v67, v18, errorCopy);
      selfCopy2 = v21;
LABEL_39:

LABEL_40:
      self = selfCopy2;
      v12 = v65;
      goto LABEL_41;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = v13;
      goto LABEL_23;
    }

    selfCopy3 = self;
    if (error)
    {
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v71 = v10;
      v33 = *MEMORY[0x1E698F240];
      v89 = *MEMORY[0x1E696A578];
      v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
      v90 = v72;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v34 = v33;
      v10 = v71;
      v35 = [v32 initWithDomain:v34 code:2 userInfo:v14];
      v77 = 0;
      v21 = 0;
      *error = v35;
      v22 = v75;
      goto LABEL_44;
    }

    v77 = 0;
    v21 = 0;
    v22 = v75;
LABEL_84:
    self = selfCopy3;
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMPortraitEntityCategoryFromString(v6)];
    goto LABEL_8;
  }

  if (!error)
  {
    v7 = 0;
    v21 = 0;
    goto LABEL_48;
  }

  v46 = objc_alloc(MEMORY[0x1E696ABC0]);
  v47 = *MEMORY[0x1E698F240];
  v95 = *MEMORY[0x1E696A578];
  v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"category"];
  v96[0] = v48;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v49 = v47;
  v10 = v48;
  v50 = [v46 initWithDomain:v49 code:2 userInfo:v9];
  v7 = 0;
  v21 = 0;
  *error = v50;
LABEL_47:

LABEL_48:
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPortraitEntity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasDecayRate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_osBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAssetVersion)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bestLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSentimentScore)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v53.receiver = self;
  v53.super_class = BMPortraitEntity;
  v5 = [(BMEventBase *)&v53 init];
  if (!v5)
  {
    goto LABEL_95;
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
        LOBYTE(v54) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v54 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v54 & 0x7F) << v7;
        if ((v54 & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v5->_hasDecayRate = 1;
            v54 = 0;
            v39 = [fromCopy position] + 8;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 8, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v54 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 = v54;
            v47 = 40;
          }

          else
          {
            if (v15 != 4)
            {
              goto LABEL_70;
            }

            v5->_hasScore = 1;
            v54 = 0;
            v25 = [fromCopy position] + 8;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v54 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 = v54;
            v47 = 48;
          }

          goto LABEL_91;
        }

        if (v15 == 1)
        {
          v34 = 0;
          v35 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v54) = 0;
            v36 = [fromCopy position] + 1;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v54 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v54 & 0x7F) << v34;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v24 = v35++ > 8;
            if (v24)
            {
              goto LABEL_82;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 0x15)
          {
LABEL_82:
            LODWORD(v20) = 0;
          }

          v44 = 24;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_70;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v54) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v54 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v54 & 0x7F) << v18;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_74;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 0x11)
          {
LABEL_74:
            LODWORD(v20) = 0;
          }

          v44 = 28;
        }

        *(&v5->super.super.isa + v44) = v20;
      }

      else
      {
        if (v15 > 6)
        {
          switch(v15)
          {
            case 7:
              v41 = PBReaderReadString();
              v42 = 64;
              break;
            case 8:
              v41 = PBReaderReadString();
              v42 = 72;
              break;
            case 9:
              v5->_hasSentimentScore = 1;
              v54 = 0;
              v16 = [fromCopy position] + 8;
              if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v54 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v46 = v54;
              v47 = 80;
LABEL_91:
              *(&v5->super.super.isa + v47) = v46;
              goto LABEL_92;
            default:
              goto LABEL_70;
          }

          goto LABEL_69;
        }

        if (v15 == 5)
        {
          v41 = PBReaderReadString();
          v42 = 56;
LABEL_69:
          v43 = *(&v5->super.super.isa + v42);
          *(&v5->super.super.isa + v42) = v41;

          goto LABEL_92;
        }

        if (v15 != 6)
        {
LABEL_70:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_94;
          }

          goto LABEL_92;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        v5->_hasAssetVersion = 1;
        while (1)
        {
          LOBYTE(v54) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v54 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (v54 & 0x7F) << v27;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v13 = v28++ >= 9;
          if (v13)
          {
            v33 = 0;
            goto LABEL_79;
          }
        }

        if ([fromCopy hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_79:
        v5->_assetVersion = v33;
      }

LABEL_92:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_94:
    v51 = 0;
  }

  else
  {
LABEL_95:
    v51 = v5;
  }

  return v51;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = BMPortraitEntityCategoryAsString([(BMPortraitEntity *)self category]);
  v4 = BMPortraitEntityAlgorithmAsString([(BMPortraitEntity *)self algorithm]);
  v5 = MEMORY[0x1E696AD98];
  [(BMPortraitEntity *)self decayRate];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMPortraitEntity *)self score];
  v8 = [v7 numberWithDouble:?];
  osBuild = [(BMPortraitEntity *)self osBuild];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity assetVersion](self, "assetVersion")}];
  name = [(BMPortraitEntity *)self name];
  bestLanguage = [(BMPortraitEntity *)self bestLanguage];
  v13 = MEMORY[0x1E696AD98];
  [(BMPortraitEntity *)self sentimentScore];
  v14 = [v13 numberWithDouble:?];
  v15 = [v17 initWithFormat:@"BMPortraitEntity with category: %@, algorithm: %@, decayRate: %@, score: %@, osBuild: %@, assetVersion: %@, name: %@, bestLanguage: %@, sentimentScore: %@", v3, v4, v6, v8, osBuild, v10, name, bestLanguage, v14];

  return v15;
}

- (BMPortraitEntity)initWithCategory:(int)category algorithm:(int)algorithm decayRate:(id)rate score:(id)score osBuild:(id)build assetVersion:(id)version name:(id)name bestLanguage:(id)self0 sentimentScore:(id)self1
{
  rateCopy = rate;
  scoreCopy = score;
  buildCopy = build;
  versionCopy = version;
  nameCopy = name;
  languageCopy = language;
  sentimentScoreCopy = sentimentScore;
  v30.receiver = self;
  v30.super_class = BMPortraitEntity;
  v21 = [(BMEventBase *)&v30 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    v21->_category = category;
    v21->_algorithm = algorithm;
    if (rateCopy)
    {
      v21->_hasDecayRate = 1;
      [rateCopy doubleValue];
    }

    else
    {
      v21->_hasDecayRate = 0;
      v22 = -1.0;
    }

    v21->_decayRate = v22;
    if (scoreCopy)
    {
      v21->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v21->_hasScore = 0;
      v23 = -1.0;
    }

    v21->_score = v23;
    objc_storeStrong(&v21->_osBuild, build);
    if (versionCopy)
    {
      v21->_hasAssetVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v21->_hasAssetVersion = 0;
      intValue = -1;
    }

    v21->_assetVersion = intValue;
    objc_storeStrong(&v21->_name, name);
    objc_storeStrong(&v21->_bestLanguage, language);
    if (sentimentScoreCopy)
    {
      v21->_hasSentimentScore = 1;
      [sentimentScoreCopy doubleValue];
    }

    else
    {
      v21->_hasSentimentScore = 0;
      v25 = -1.0;
    }

    v21->_sentimentScore = v25;
  }

  return v21;
}

+ (id)protoFields
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"algorithm" number:2 type:4 subMessageClass:{0, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"decayRate" number:3 type:0 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:4 type:0 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osBuild" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetVersion" number:6 type:2 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bestLanguage" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sentimentScore" number:9 type:0 subMessageClass:0];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (id)columns
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"algorithm" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"decayRate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osBuild" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetVersion" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bestLanguage" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sentimentScore" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
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

    v8 = [[BMPortraitEntity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end