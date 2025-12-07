@interface BMVisualIntelligenceCameraLookupEventDimensionContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithVisualLookupSessionId:(id)id systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(id)buildType;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventDimensionContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
    visualLookupSessionId2 = [v5 visualLookupSessionId];
    v8 = visualLookupSessionId2;
    if (visualLookupSessionId == visualLookupSessionId2)
    {
    }

    else
    {
      visualLookupSessionId3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
      visualLookupSessionId4 = [v5 visualLookupSessionId];
      v11 = [visualLookupSessionId3 isEqual:visualLookupSessionId4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    systemLocale = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
    systemLocale2 = [v5 systemLocale];
    v15 = systemLocale2;
    if (systemLocale == systemLocale2)
    {
    }

    else
    {
      systemLocale3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
      systemLocale4 = [v5 systemLocale];
      v18 = [systemLocale3 isEqual:systemLocale4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    currentCountry = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
    currentCountry2 = [v5 currentCountry];
    v21 = currentCountry2;
    if (currentCountry == currentCountry2)
    {
    }

    else
    {
      currentCountry3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
      currentCountry4 = [v5 currentCountry];
      v24 = [currentCountry3 isEqual:currentCountry4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    build = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
    build2 = [v5 build];
    v27 = build2;
    if (build == build2)
    {
    }

    else
    {
      build3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
      build4 = [v5 build];
      v30 = [build3 isEqual:build4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    osType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
    osType2 = [v5 osType];
    v33 = osType2;
    if (osType == osType2)
    {
    }

    else
    {
      osType3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
      osType4 = [v5 osType];
      v36 = [osType3 isEqual:osType4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    productType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
    productType2 = [v5 productType];
    v39 = productType2;
    if (productType == productType2)
    {
    }

    else
    {
      productType3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
      productType4 = [v5 productType];
      v42 = [productType3 isEqual:productType4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    buildType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
    buildType2 = [v5 buildType];
    if (buildType == buildType2)
    {
      v12 = 1;
    }

    else
    {
      buildType3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
      buildType4 = [v5 buildType];
      v12 = [buildType3 isEqual:buildType4];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)jsonDictionary
{
  v25[7] = *MEMORY[0x1E69E9840];
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
  systemLocale = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
  currentCountry = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
  build = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
  osType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
  productType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
  buildType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
  v24[0] = @"visualLookupSessionId";
  null = visualLookupSessionId;
  if (!visualLookupSessionId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v25[0] = null;
  v24[1] = @"systemLocale";
  null2 = systemLocale;
  if (!systemLocale)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = visualLookupSessionId;
  v20 = null2;
  v25[1] = null2;
  v24[2] = @"currentCountry";
  null3 = currentCountry;
  if (!currentCountry)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = systemLocale;
  v19 = null3;
  v25[2] = null3;
  v24[3] = @"build";
  null4 = build;
  if (!build)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = null4;
  v24[4] = @"osType";
  null5 = osType;
  if (!osType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v24[5] = @"productType";
  null6 = productType;
  if (!productType)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null6;
  v24[6] = @"buildType";
  null7 = buildType;
  if (!buildType)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  if (buildType)
  {
    if (productType)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (productType)
    {
LABEL_17:
      if (osType)
      {
        goto LABEL_18;
      }

LABEL_28:

      if (build)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  if (!osType)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (build)
  {
    goto LABEL_19;
  }

LABEL_29:

LABEL_19:
  if (!currentCountry)
  {
  }

  if (v22)
  {
    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v23)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  return v17;
}

- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v70[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"visualLookupSessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v19 = 0;
          goto LABEL_29;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v67 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemLocale"];
        v68 = v56;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v11 = v29 = error;
        v30 = [v27 initWithDomain:v28 code:2 userInfo:v11];
        v10 = 0;
        v19 = 0;
        *v29 = v30;
        goto LABEL_28;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"currentCountry"];
    v52 = v9;
    v55 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v56 = 0;
          v19 = 0;
          goto LABEL_28;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentCountry"];
        v66 = v20;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v33 = v31;
        v10 = v55;
        v34 = [v33 initWithDomain:v32 code:2 userInfo:v12];
        v56 = 0;
        v19 = 0;
        *errorCopy = v34;
LABEL_27:

        v9 = v52;
LABEL_28:

        goto LABEL_29;
      }

      v56 = v11;
    }

    else
    {
      v56 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"build"];
    v49 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v20 = 0;
          v19 = 0;
          goto LABEL_27;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"build"];
        v64 = v53;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v37 = v35;
        v10 = v55;
        v38 = [v37 initWithDomain:v36 code:2 userInfo:v13];
        v20 = 0;
        v19 = 0;
        *errorCopy = v38;
        goto LABEL_26;
      }

      v51 = v12;
    }

    else
    {
      v51 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"osType"];
    v50 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v53 = 0;
          v19 = 0;
          goto LABEL_25;
        }

        selfCopy3 = self;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osType"];
        v62 = v16;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v41 = [v39 initWithDomain:v40 code:2 userInfo:v14];
        v53 = 0;
        v19 = 0;
        *errorCopy = v41;
LABEL_24:

        self = selfCopy3;
        v8 = v50;
        v10 = v55;
LABEL_25:
        v20 = v51;
LABEL_26:

        v7 = v49;
        goto LABEL_27;
      }

      v53 = v13;
    }

    else
    {
      v53 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      selfCopy3 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v16 = 0;
          v19 = 0;
          goto LABEL_24;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"productType"];
        v60 = v18;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v44 = [v42 initWithDomain:v43 code:2 userInfo:v17];
        v16 = 0;
        v19 = 0;
        *errorCopy = v44;
        goto LABEL_23;
      }

      v16 = v14;
    }

    else
    {
      selfCopy3 = self;
      v16 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"buildType"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v57 = *MEMORY[0x1E696A578];
          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"buildType"];
          v58 = v45;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          *errorCopy = [v48 initWithDomain:v47 code:2 userInfo:v46];
        }

        v18 = 0;
        v19 = 0;
        goto LABEL_23;
      }

      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)selfCopy3 initWithVisualLookupSessionId:v50 systemLocale:v55 currentCountry:v56 build:v51 osType:v53 productType:v16 buildType:v18];
    selfCopy3 = v19;
LABEL_23:

    goto LABEL_24;
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
    v19 = 0;
    goto LABEL_30;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v69 = *MEMORY[0x1E696A578];
  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualLookupSessionId"];
  v70[0] = v24;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v25 = v22;
  v10 = v24;
  v26 = [v25 initWithDomain:v23 code:2 userInfo:v9];
  v8 = 0;
  v19 = 0;
  *error = v26;
LABEL_29:

LABEL_30:
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_visualLookupSessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_systemLocale)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_currentCountry)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_osType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_buildType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMVisualIntelligenceCameraLookupEventDimensionContext;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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

      v15 = (v14 >> 3) - 1;
      if (v15 >= 7)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6EA1F28[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
  systemLocale = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
  currentCountry = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
  build = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
  osType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
  productType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
  buildType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
  v11 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventDimensionContext with visualLookupSessionId: %@, systemLocale: %@, currentCountry: %@, build: %@, osType: %@, productType: %@, buildType: %@", visualLookupSessionId, systemLocale, currentCountry, build, osType, productType, buildType];

  return v11;
}

- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithVisualLookupSessionId:(id)id systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(id)buildType
{
  idCopy = id;
  localeCopy = locale;
  countryCopy = country;
  buildCopy = build;
  typeCopy = type;
  productTypeCopy = productType;
  buildTypeCopy = buildType;
  v25.receiver = self;
  v25.super_class = BMVisualIntelligenceCameraLookupEventDimensionContext;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_visualLookupSessionId, id);
    objc_storeStrong(&v18->_systemLocale, locale);
    objc_storeStrong(&v18->_currentCountry, country);
    objc_storeStrong(&v18->_build, build);
    objc_storeStrong(&v18->_osType, type);
    objc_storeStrong(&v18->_productType, productType);
    objc_storeStrong(&v18->_buildType, buildType);
  }

  return v18;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualLookupSessionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemLocale" number:2 type:13 subMessageClass:{0, v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentCountry" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"build" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osType" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productType" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buildType" number:7 type:13 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualLookupSessionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemLocale" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentCountry" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"build" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productType" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buildType" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

    v8 = [[BMVisualIntelligenceCameraLookupEventDimensionContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end