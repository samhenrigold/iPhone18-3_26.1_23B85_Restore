@interface BMSiriHomeSeed
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriHomeSeed)initWithHomeIdentifier:(id)identifier seed:(id)seed effectiveFrom:(id)from validityDays:(id)days createdOn:(id)on adoptedOn:(id)adoptedOn switchedCount:(id)count;
- (BMSiriHomeSeed)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)adoptedOn;
- (NSDate)createdOn;
- (NSDate)effectiveFrom;
- (NSString)description;
- (NSUUID)homeIdentifier;
- (NSUUID)seed;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriHomeSeed

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeIdentifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"seed" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"effectiveFrom" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"validityDays" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"createdOn" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adoptedOn" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"switchedCount" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    homeIdentifier = [(BMSiriHomeSeed *)self homeIdentifier];
    homeIdentifier2 = [v5 homeIdentifier];
    v8 = homeIdentifier2;
    if (homeIdentifier == homeIdentifier2)
    {
    }

    else
    {
      homeIdentifier3 = [(BMSiriHomeSeed *)self homeIdentifier];
      homeIdentifier4 = [v5 homeIdentifier];
      v11 = [homeIdentifier3 isEqual:homeIdentifier4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    seed = [(BMSiriHomeSeed *)self seed];
    seed2 = [v5 seed];
    v15 = seed2;
    if (seed == seed2)
    {
    }

    else
    {
      seed3 = [(BMSiriHomeSeed *)self seed];
      seed4 = [v5 seed];
      v18 = [seed3 isEqual:seed4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    effectiveFrom = [(BMSiriHomeSeed *)self effectiveFrom];
    effectiveFrom2 = [v5 effectiveFrom];
    v21 = effectiveFrom2;
    if (effectiveFrom == effectiveFrom2)
    {
    }

    else
    {
      effectiveFrom3 = [(BMSiriHomeSeed *)self effectiveFrom];
      effectiveFrom4 = [v5 effectiveFrom];
      v24 = [effectiveFrom3 isEqual:effectiveFrom4];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriHomeSeed hasValidityDays](self, "hasValidityDays") || [v5 hasValidityDays])
    {
      if (![(BMSiriHomeSeed *)self hasValidityDays])
      {
        goto LABEL_33;
      }

      if (![v5 hasValidityDays])
      {
        goto LABEL_33;
      }

      validityDays = [(BMSiriHomeSeed *)self validityDays];
      if (validityDays != [v5 validityDays])
      {
        goto LABEL_33;
      }
    }

    createdOn = [(BMSiriHomeSeed *)self createdOn];
    createdOn2 = [v5 createdOn];
    v28 = createdOn2;
    if (createdOn == createdOn2)
    {
    }

    else
    {
      createdOn3 = [(BMSiriHomeSeed *)self createdOn];
      createdOn4 = [v5 createdOn];
      v31 = [createdOn3 isEqual:createdOn4];

      if (!v31)
      {
        goto LABEL_33;
      }
    }

    adoptedOn = [(BMSiriHomeSeed *)self adoptedOn];
    adoptedOn2 = [v5 adoptedOn];
    v34 = adoptedOn2;
    if (adoptedOn == adoptedOn2)
    {
    }

    else
    {
      adoptedOn3 = [(BMSiriHomeSeed *)self adoptedOn];
      adoptedOn4 = [v5 adoptedOn];
      v37 = [adoptedOn3 isEqual:adoptedOn4];

      if (!v37)
      {
        goto LABEL_33;
      }
    }

    if (!-[BMSiriHomeSeed hasSwitchedCount](self, "hasSwitchedCount") && ![v5 hasSwitchedCount])
    {
      v12 = 1;
      goto LABEL_34;
    }

    if (-[BMSiriHomeSeed hasSwitchedCount](self, "hasSwitchedCount") && [v5 hasSwitchedCount])
    {
      switchedCount = [(BMSiriHomeSeed *)self switchedCount];
      v12 = switchedCount == [v5 switchedCount];
LABEL_34:

      goto LABEL_35;
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (NSDate)adoptedOn
{
  if (self->_hasRaw_adoptedOn)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_adoptedOn];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)createdOn
{
  if (self->_hasRaw_createdOn)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_createdOn];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)effectiveFrom
{
  if (self->_hasRaw_effectiveFrom)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_effectiveFrom];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)seed
{
  raw_seed = self->_raw_seed;
  if (raw_seed)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_seed toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)homeIdentifier
{
  raw_homeIdentifier = self->_raw_homeIdentifier;
  if (raw_homeIdentifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_homeIdentifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v35[7] = *MEMORY[0x1E69E9840];
  homeIdentifier = [(BMSiriHomeSeed *)self homeIdentifier];
  uUIDString = [homeIdentifier UUIDString];

  seed = [(BMSiriHomeSeed *)self seed];
  uUIDString2 = [seed UUIDString];

  effectiveFrom = [(BMSiriHomeSeed *)self effectiveFrom];
  if (effectiveFrom)
  {
    v8 = MEMORY[0x1E696AD98];
    effectiveFrom2 = [(BMSiriHomeSeed *)self effectiveFrom];
    [effectiveFrom2 timeIntervalSince1970];
    v33 = [v8 numberWithDouble:?];
  }

  else
  {
    v33 = 0;
  }

  if ([(BMSiriHomeSeed *)self hasValidityDays])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed validityDays](self, "validityDays")}];
  }

  else
  {
    v32 = 0;
  }

  createdOn = [(BMSiriHomeSeed *)self createdOn];
  if (createdOn)
  {
    v11 = MEMORY[0x1E696AD98];
    createdOn2 = [(BMSiriHomeSeed *)self createdOn];
    [createdOn2 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
  }

  else
  {
    v13 = 0;
  }

  adoptedOn = [(BMSiriHomeSeed *)self adoptedOn];
  if (adoptedOn)
  {
    v15 = MEMORY[0x1E696AD98];
    adoptedOn2 = [(BMSiriHomeSeed *)self adoptedOn];
    [adoptedOn2 timeIntervalSince1970];
    v17 = [v15 numberWithDouble:?];
  }

  else
  {
    v17 = 0;
  }

  if ([(BMSiriHomeSeed *)self hasSwitchedCount])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed switchedCount](self, "switchedCount")}];
  }

  else
  {
    v18 = 0;
  }

  v34[0] = @"homeIdentifier";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null;
  v31 = uUIDString2;
  v35[0] = null;
  v34[1] = @"seed";
  null2 = uUIDString2;
  if (!uUIDString2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null2;
  v35[1] = null2;
  v34[2] = @"effectiveFrom";
  null3 = v33;
  if (!v33)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v35[2] = null3;
  v34[3] = @"validityDays";
  null4 = v32;
  if (!v32)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = uUIDString;
  v35[3] = null4;
  v34[4] = @"createdOn";
  null5 = v13;
  if (!v13)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v35[4] = null5;
  v34[5] = @"adoptedOn";
  null6 = v17;
  if (!v17)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = null6;
  v34[6] = @"switchedCount";
  null7 = v18;
  if (!v18)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = null7;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:7];
  if (v18)
  {
    if (v17)
    {
      goto LABEL_32;
    }

LABEL_43:

    if (v13)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  if (!v17)
  {
    goto LABEL_43;
  }

LABEL_32:
  if (v13)
  {
    goto LABEL_33;
  }

LABEL_44:

LABEL_33:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (v31)
  {
    if (v23)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v23)
    {
      goto LABEL_39;
    }
  }

LABEL_39:

  return v27;
}

- (BMSiriHomeSeed)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v102[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"homeIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v30 = 0;
        goto LABEL_58;
      }

      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v99 = *MEMORY[0x1E696A578];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"homeIdentifier"];
      v100 = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v30 = 0;
      *error = [v28 initWithDomain:v29 code:2 userInfo:v9];
      goto LABEL_56;
    }

    v8 = v7;
    v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v18)
    {
      if (!error)
      {
        v30 = 0;
        goto LABEL_57;
      }

      v56 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v101 = *MEMORY[0x1E696A578];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"homeIdentifier"];
      v102[0] = v9;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
      *error = [v56 initWithDomain:v57 code:2 userInfo:v58];

      goto LABEL_66;
    }

    v19 = v18;

    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"seed"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v9;
    v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v20];
    if (!v21)
    {
      v80 = v20;
      if (error)
      {
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = *MEMORY[0x1E698F240];
        v97 = *MEMORY[0x1E696A578];
        v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"seed"];
        v98 = v83;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        *error = [v59 initWithDomain:v60 code:2 userInfo:v61];

        v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_55;
    }

    v22 = v21;

    v10 = v22;
LABEL_7:
    errorCopy = error;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"effectiveFrom"];
    v80 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = MEMORY[0x1E695DF00];
        v24 = v11;
        v25 = [v23 alloc];
        [v24 doubleValue];
        v27 = v26;

        v81 = [v25 initWithTimeIntervalSince1970:v27];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v81 = [v45 dateFromString:v11];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v81 = 0;
              v30 = 0;
              goto LABEL_54;
            }

            v84 = objc_alloc(MEMORY[0x1E696ABC0]);
            v62 = *MEMORY[0x1E698F240];
            v93 = *MEMORY[0x1E696A578];
            v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"effectiveFrom"];
            v94 = v78;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            v63 = [v84 initWithDomain:v62 code:2 userInfo:v12];
            v81 = 0;
            v30 = 0;
            *errorCopy = v63;
LABEL_53:

LABEL_54:
            goto LABEL_55;
          }

          v81 = v11;
        }
      }
    }

    else
    {
      v81 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"validityDays"];
    v76 = v9;
    v77 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v78 = 0;
          v30 = 0;
          goto LABEL_53;
        }

        v79 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"validityDays"];
        v92 = v47;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v48 = [v79 initWithDomain:v46 code:2 userInfo:v13];
        v78 = 0;
        v30 = 0;
        *errorCopy = v48;
        goto LABEL_52;
      }

      v78 = v12;
    }

    else
    {
      v78 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"createdOn"];
    v75 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = MEMORY[0x1E695DF00];
        v32 = v13;
        v33 = [v31 alloc];
        [v32 doubleValue];
        v35 = v34;

        v72 = [v33 initWithTimeIntervalSince1970:v35];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v72 = [v49 dateFromString:v13];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v47 = 0;
              v30 = 0;
              goto LABEL_52;
            }

            v15 = v8;
            v64 = objc_alloc(MEMORY[0x1E696ABC0]);
            v73 = *MEMORY[0x1E698F240];
            v89 = *MEMORY[0x1E696A578];
            v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"createdOn"];
            v90 = v17;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            v65 = [v64 initWithDomain:v73 code:2 userInfo:v14];
            v47 = 0;
            v30 = 0;
            *errorCopy = v65;
LABEL_51:

            v8 = v15;
            v11 = v77;
            v12 = v75;
LABEL_52:

            v9 = v76;
            goto LABEL_53;
          }

          v72 = v13;
        }
      }
    }

    else
    {
      v72 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"adoptedOn"];
    v74 = v7;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy2 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v8;
        v36 = MEMORY[0x1E695DF00];
        v37 = v10;
        v38 = v14;
        v39 = [v36 alloc];
        [v38 doubleValue];
        v41 = v40;

        v10 = v37;
        v42 = [v39 initWithTimeIntervalSince1970:v41];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v8;
          v50 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v17 = [v50 dateFromString:v14];

          goto LABEL_46;
        }

        objc_opt_class();
        v15 = v8;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v17 = 0;
            v30 = 0;
            v47 = v72;
            v7 = v74;
            goto LABEL_51;
          }

          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"adoptedOn"];
          v88 = v52;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v68 = [v66 initWithDomain:v67 code:2 userInfo:v51];
          v17 = 0;
          v30 = 0;
          *errorCopy = v68;
          v47 = v72;
          goto LABEL_50;
        }

        v42 = v14;
      }

      v17 = v42;
    }

    else
    {
      v15 = v8;
      selfCopy2 = self;
      v17 = 0;
    }

LABEL_46:
    v51 = [dictionaryCopy objectForKeyedSubscript:@"switchedCount"];
    if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v47 = v72;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"switchedCount"];
          v86 = v54;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          *errorCopy = [v70 initWithDomain:v69 code:2 userInfo:v55];
        }

        v52 = 0;
        v30 = 0;
        goto LABEL_50;
      }

      v52 = v51;
    }

    else
    {
      v52 = 0;
      v47 = v72;
    }

    v30 = [(BMSiriHomeSeed *)selfCopy2 initWithHomeIdentifier:v15 seed:v10 effectiveFrom:v81 validityDays:v78 createdOn:v47 adoptedOn:v17 switchedCount:v52];
    selfCopy2 = v30;
LABEL_50:

    self = selfCopy2;
    v7 = v74;
    goto LABEL_51;
  }

  if (!error)
  {
LABEL_66:
    v30 = 0;
    goto LABEL_56;
  }

  v43 = objc_alloc(MEMORY[0x1E696ABC0]);
  v44 = *MEMORY[0x1E698F240];
  v95 = *MEMORY[0x1E696A578];
  v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"seed"];
  v96 = v80;
  v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
  v30 = 0;
  *error = [v43 initWithDomain:v44 code:2 userInfo:?];

LABEL_55:
LABEL_56:

LABEL_57:
LABEL_58:

  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriHomeSeed *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_raw_homeIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_raw_seed)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_hasRaw_effectiveFrom)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasValidityDays)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasRaw_createdOn)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasRaw_adoptedOn)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasSwitchedCount)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMSiriHomeSeed;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_80;
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
        LOBYTE(v48) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v27 = PBReaderReadData();
            if ([v27 length] != 16)
            {
              goto LABEL_82;
            }

            v28 = 16;
            break;
          case 2:
            v27 = PBReaderReadData();
            if ([v27 length] != 16)
            {
LABEL_82:

              goto LABEL_79;
            }

            v28 = 24;
            break;
          case 3:
            v5->_hasRaw_effectiveFrom = 1;
            v48 = 0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v40 = v48;
            v41 = 40;
            goto LABEL_76;
          default:
            goto LABEL_44;
        }

        v37 = *(&v5->super.super.isa + v28);
        *(&v5->super.super.isa + v28) = v27;
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v5->_hasRaw_adoptedOn = 1;
            v48 = 0;
            v35 = [fromCopy position] + 8;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v40 = v48;
            v41 = 72;
LABEL_76:
            *(&v5->super.super.isa + v41) = v40;
            goto LABEL_77;
          }

          if (v15 != 7)
          {
LABEL_44:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_77;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasSwitchedCount = 1;
          while (1)
          {
            LOBYTE(v48) = 0;
            v23 = [fromCopy position] + 1;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v22 |= (v48 & 0x7F) << v20;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v13 = v21++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_68;
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

LABEL_68:
          v38 = 92;
        }

        else
        {
          if (v15 != 4)
          {
            if (v15 != 5)
            {
              goto LABEL_44;
            }

            v5->_hasRaw_createdOn = 1;
            v48 = 0;
            v16 = [fromCopy position] + 8;
            if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v40 = v48;
            v41 = 56;
            goto LABEL_76;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          v5->_hasValidityDays = 1;
          while (1)
          {
            LOBYTE(v48) = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v31 |= (v48 & 0x7F) << v29;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v13 = v30++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_64;
            }
          }

          if ([fromCopy hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v31;
          }

LABEL_64:
          v38 = 88;
        }

        *(&v5->super.super.isa + v38) = v26;
      }

LABEL_77:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_79:
    v45 = 0;
  }

  else
  {
LABEL_80:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  homeIdentifier = [(BMSiriHomeSeed *)self homeIdentifier];
  seed = [(BMSiriHomeSeed *)self seed];
  effectiveFrom = [(BMSiriHomeSeed *)self effectiveFrom];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed validityDays](self, "validityDays")}];
  createdOn = [(BMSiriHomeSeed *)self createdOn];
  adoptedOn = [(BMSiriHomeSeed *)self adoptedOn];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed switchedCount](self, "switchedCount")}];
  v11 = [v3 initWithFormat:@"BMSiriHomeSeed with homeIdentifier: %@, seed: %@, effectiveFrom: %@, validityDays: %@, createdOn: %@, adoptedOn: %@, switchedCount: %@", homeIdentifier, seed, effectiveFrom, v7, createdOn, adoptedOn, v10];

  return v11;
}

- (BMSiriHomeSeed)initWithHomeIdentifier:(id)identifier seed:(id)seed effectiveFrom:(id)from validityDays:(id)days createdOn:(id)on adoptedOn:(id)adoptedOn switchedCount:(id)count
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  seedCopy = seed;
  fromCopy = from;
  daysCopy = days;
  onCopy = on;
  adoptedOnCopy = adoptedOn;
  countCopy = count;
  v33.receiver = self;
  v33.super_class = BMSiriHomeSeed;
  v22 = [(BMEventBase *)&v33 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (identifierCopy)
    {
      v34 = 0;
      v35 = 0;
      [identifierCopy getUUIDBytes:&v34];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v34 length:16];
      raw_homeIdentifier = v22->_raw_homeIdentifier;
      v22->_raw_homeIdentifier = v23;
    }

    else
    {
      raw_homeIdentifier = v22->_raw_homeIdentifier;
      v22->_raw_homeIdentifier = 0;
    }

    if (seedCopy)
    {
      v34 = 0;
      v35 = 0;
      [seedCopy getUUIDBytes:&v34];
      v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v34 length:16];
      raw_seed = v22->_raw_seed;
      v22->_raw_seed = v25;
    }

    else
    {
      raw_seed = v22->_raw_seed;
      v22->_raw_seed = 0;
    }

    if (fromCopy)
    {
      v22->_hasRaw_effectiveFrom = 1;
      [fromCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_effectiveFrom = 0;
      v27 = -1.0;
    }

    v22->_raw_effectiveFrom = v27;
    if (daysCopy)
    {
      v22->_hasValidityDays = 1;
      unsignedIntValue = [daysCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v22->_hasValidityDays = 0;
    }

    v22->_validityDays = unsignedIntValue;
    if (onCopy)
    {
      v22->_hasRaw_createdOn = 1;
      [onCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_createdOn = 0;
      v29 = -1.0;
    }

    v22->_raw_createdOn = v29;
    if (adoptedOnCopy)
    {
      v22->_hasRaw_adoptedOn = 1;
      [adoptedOnCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_adoptedOn = 0;
      v30 = -1.0;
    }

    v22->_raw_adoptedOn = v30;
    if (countCopy)
    {
      v22->_hasSwitchedCount = 1;
      unsignedIntValue2 = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v22->_hasSwitchedCount = 0;
    }

    v22->_switchedCount = unsignedIntValue2;
  }

  return v22;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeIdentifier" number:1 type:14 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"seed" number:2 type:14 subMessageClass:{0, v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"effectiveFrom" number:3 type:0 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"validityDays" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"createdOn" number:5 type:0 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adoptedOn" number:6 type:0 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"switchedCount" number:7 type:4 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
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

    v8 = [[BMSiriHomeSeed alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[21] = 0;
    }
  }

  return v4;
}

@end