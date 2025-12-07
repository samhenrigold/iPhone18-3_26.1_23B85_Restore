@interface BMAppleIntelligenceAvailability
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppleIntelligenceAvailability)initWithAppleIntelligenceUseCase:(id)case appleIntelligenceDiffusionUseCase:(id)useCase isAppleIntelligenceToggleEnabled:(id)enabled hasEngagedWithAppleIntelligenceCFU:(id)u datePostedAppleIntelligenceCFU:(id)fU languages:(id)languages region:(int)region;
- (BMAppleIntelligenceAvailability)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)datePostedAppleIntelligenceCFU;
- (NSString)description;
- (id)_languagesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppleIntelligenceAvailability

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appleIntelligenceUseCase_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_202];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appleIntelligenceDiffusionUseCase_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_204_100668];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAppleIntelligenceToggleEnabled" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEngagedWithAppleIntelligenceCFU" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"datePostedAppleIntelligenceCFU" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"languages_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_206_100669];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"region" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
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
    appleIntelligenceUseCase = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
    appleIntelligenceUseCase2 = [v5 appleIntelligenceUseCase];
    v8 = appleIntelligenceUseCase2;
    if (appleIntelligenceUseCase == appleIntelligenceUseCase2)
    {
    }

    else
    {
      appleIntelligenceUseCase3 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
      appleIntelligenceUseCase4 = [v5 appleIntelligenceUseCase];
      v11 = [appleIntelligenceUseCase3 isEqual:appleIntelligenceUseCase4];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    appleIntelligenceDiffusionUseCase = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
    appleIntelligenceDiffusionUseCase2 = [v5 appleIntelligenceDiffusionUseCase];
    v15 = appleIntelligenceDiffusionUseCase2;
    if (appleIntelligenceDiffusionUseCase == appleIntelligenceDiffusionUseCase2)
    {
    }

    else
    {
      appleIntelligenceDiffusionUseCase3 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
      appleIntelligenceDiffusionUseCase4 = [v5 appleIntelligenceDiffusionUseCase];
      v18 = [appleIntelligenceDiffusionUseCase3 isEqual:appleIntelligenceDiffusionUseCase4];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    if (-[BMAppleIntelligenceAvailability hasIsAppleIntelligenceToggleEnabled](self, "hasIsAppleIntelligenceToggleEnabled") || [v5 hasIsAppleIntelligenceToggleEnabled])
    {
      if (![(BMAppleIntelligenceAvailability *)self hasIsAppleIntelligenceToggleEnabled])
      {
        goto LABEL_27;
      }

      if (![v5 hasIsAppleIntelligenceToggleEnabled])
      {
        goto LABEL_27;
      }

      isAppleIntelligenceToggleEnabled = [(BMAppleIntelligenceAvailability *)self isAppleIntelligenceToggleEnabled];
      if (isAppleIntelligenceToggleEnabled != [v5 isAppleIntelligenceToggleEnabled])
      {
        goto LABEL_27;
      }
    }

    if (-[BMAppleIntelligenceAvailability hasHasEngagedWithAppleIntelligenceCFU](self, "hasHasEngagedWithAppleIntelligenceCFU") || [v5 hasHasEngagedWithAppleIntelligenceCFU])
    {
      if (![(BMAppleIntelligenceAvailability *)self hasHasEngagedWithAppleIntelligenceCFU])
      {
        goto LABEL_27;
      }

      if (![v5 hasHasEngagedWithAppleIntelligenceCFU])
      {
        goto LABEL_27;
      }

      hasEngagedWithAppleIntelligenceCFU = [(BMAppleIntelligenceAvailability *)self hasEngagedWithAppleIntelligenceCFU];
      if (hasEngagedWithAppleIntelligenceCFU != [v5 hasEngagedWithAppleIntelligenceCFU])
      {
        goto LABEL_27;
      }
    }

    datePostedAppleIntelligenceCFU = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
    datePostedAppleIntelligenceCFU2 = [v5 datePostedAppleIntelligenceCFU];
    v23 = datePostedAppleIntelligenceCFU2;
    if (datePostedAppleIntelligenceCFU == datePostedAppleIntelligenceCFU2)
    {
    }

    else
    {
      datePostedAppleIntelligenceCFU3 = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
      datePostedAppleIntelligenceCFU4 = [v5 datePostedAppleIntelligenceCFU];
      v26 = [datePostedAppleIntelligenceCFU3 isEqual:datePostedAppleIntelligenceCFU4];

      if (!v26)
      {
        goto LABEL_27;
      }
    }

    languages = [(BMAppleIntelligenceAvailability *)self languages];
    languages2 = [v5 languages];
    v29 = languages2;
    if (languages == languages2)
    {
    }

    else
    {
      languages3 = [(BMAppleIntelligenceAvailability *)self languages];
      languages4 = [v5 languages];
      v32 = [languages3 isEqual:languages4];

      if (!v32)
      {
LABEL_27:
        v12 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    region = [(BMAppleIntelligenceAvailability *)self region];
    v12 = region == [v5 region];
    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (NSDate)datePostedAppleIntelligenceCFU
{
  if (self->_hasRaw_datePostedAppleIntelligenceCFU)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_datePostedAppleIntelligenceCFU];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v29[7] = *MEMORY[0x1E69E9840];
  appleIntelligenceUseCase = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
  jsonDictionary = [appleIntelligenceUseCase jsonDictionary];

  appleIntelligenceDiffusionUseCase = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
  jsonDictionary2 = [appleIntelligenceDiffusionUseCase jsonDictionary];

  if ([(BMAppleIntelligenceAvailability *)self hasIsAppleIntelligenceToggleEnabled])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability isAppleIntelligenceToggleEnabled](self, "isAppleIntelligenceToggleEnabled")}];
  }

  else
  {
    v27 = 0;
  }

  if ([(BMAppleIntelligenceAvailability *)self hasHasEngagedWithAppleIntelligenceCFU])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability hasEngagedWithAppleIntelligenceCFU](self, "hasEngagedWithAppleIntelligenceCFU")}];
  }

  else
  {
    v7 = 0;
  }

  datePostedAppleIntelligenceCFU = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
  if (datePostedAppleIntelligenceCFU)
  {
    v9 = MEMORY[0x1E696AD98];
    datePostedAppleIntelligenceCFU2 = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
    [datePostedAppleIntelligenceCFU2 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  _languagesJSONArray = [(BMAppleIntelligenceAvailability *)self _languagesJSONArray];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppleIntelligenceAvailability region](self, "region")}];
  v28[0] = @"appleIntelligenceUseCase";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v29[0] = null;
  v28[1] = @"appleIntelligenceDiffusionUseCase";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null2;
  v29[1] = null2;
  v28[2] = @"isAppleIntelligenceToggleEnabled";
  null3 = v27;
  if (!v27)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = jsonDictionary;
  v29[2] = null3;
  v28[3] = @"hasEngagedWithAppleIntelligenceCFU";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = jsonDictionary2;
  v29[3] = null4;
  v28[4] = @"datePostedAppleIntelligenceCFU";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"languages";
  null6 = _languagesJSONArray;
  if (!_languagesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"region";
  null7 = v13;
  if (!v13)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (v13)
  {
    if (_languagesJSONArray)
    {
      goto LABEL_26;
    }

LABEL_36:

    if (v11)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

  if (!_languagesJSONArray)
  {
    goto LABEL_36;
  }

LABEL_26:
  if (v11)
  {
    goto LABEL_27;
  }

LABEL_37:

LABEL_27:
  if (!v7)
  {
  }

  if (v27)
  {
    if (v25)
    {
      goto LABEL_31;
    }

LABEL_39:

    if (v26)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (!v25)
  {
    goto LABEL_39;
  }

LABEL_31:
  if (v26)
  {
    goto LABEL_32;
  }

LABEL_40:

LABEL_32:

  return v21;
}

- (id)_languagesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  languages = [(BMAppleIntelligenceAvailability *)self languages];
  v5 = [languages countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(languages);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [languages countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMAppleIntelligenceAvailability)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v131[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"appleIntelligenceUseCase"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"appleIntelligenceDiffusionUseCase"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v9;
      v111 = 0;
      v10 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initWithJSONDictionary:v19 error:&v111];
      v20 = v111;
      if (!v20)
      {

LABEL_7:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"isAppleIntelligenceToggleEnabled"];
        v105 = v10;
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          selfCopy2 = self;
          v103 = 0;
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          selfCopy2 = self;
          v103 = v11;
LABEL_10:
          v13 = [dictionaryCopy objectForKeyedSubscript:@"hasEngagedWithAppleIntelligenceCFU"];
          v100 = v7;
          v101 = v11;
          if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v62 = objc_alloc(MEMORY[0x1E696ABC0]);
                v63 = *MEMORY[0x1E698F240];
                v124 = *MEMORY[0x1E696A578];
                errorCopy = error;
                v64 = v8;
                v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasEngagedWithAppleIntelligenceCFU"];
                v125 = v102;
                v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
                v66 = v62;
                v67 = v63;
                v7 = v100;
                v53 = v13;
                v106 = 0;
                error = 0;
                *errorCopy = [v66 initWithDomain:v67 code:2 userInfo:v65];
                v19 = v103;
                self = selfCopy2;
                v14 = v65;
                v8 = v64;
                goto LABEL_86;
              }

              v106 = 0;
              v19 = v103;
              v53 = v13;
              self = selfCopy2;
              goto LABEL_87;
            }

            v95 = v13;
            v106 = v13;
          }

          else
          {
            v95 = v13;
            v106 = 0;
          }

          [dictionaryCopy objectForKeyedSubscript:@"datePostedAppleIntelligenceCFU"];
          v14 = self = selfCopy2;
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = MEMORY[0x1E695DF00];
              v37 = v14;
              v38 = [v36 alloc];
              [v37 doubleValue];
              v40 = v39;

              v102 = [v38 initWithTimeIntervalSince1970:v40];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v68 = objc_alloc_init(MEMORY[0x1E696AC80]);
                v102 = [v68 dateFromString:v14];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (error)
                  {
                    v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v94 = v9;
                    errorCopy2 = error;
                    v78 = *MEMORY[0x1E698F240];
                    v122 = *MEMORY[0x1E696A578];
                    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"datePostedAppleIntelligenceCFU"];
                    v123 = v15;
                    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                    v79 = [v76 initWithDomain:v78 code:2 userInfo:v21];
                    v102 = 0;
                    error = 0;
                    *errorCopy2 = v79;
                    v9 = v94;
                    v53 = v95;
                    goto LABEL_84;
                  }

                  v102 = 0;
                  v19 = v103;
                  v53 = v95;
                  goto LABEL_86;
                }

                v102 = v14;
              }
            }
          }

          else
          {
            v102 = 0;
          }

          v15 = [dictionaryCopy objectForKeyedSubscript:@"languages"];
          null = [MEMORY[0x1E695DFB0] null];
          v17 = [v15 isEqual:null];

          if (v17)
          {
            v91 = v8;
            errorCopy5 = self;

            v15 = 0;
          }

          else
          {
            if (v15)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (error)
                {
                  v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v69 = v9;
                  errorCopy3 = error;
                  v71 = *MEMORY[0x1E698F240];
                  v120 = *MEMORY[0x1E696A578];
                  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"languages"];
                  v121 = v21;
                  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  v72 = [v99 initWithDomain:v71 code:2 userInfo:v29];
                  error = 0;
                  *errorCopy3 = v72;
                  v9 = v69;
                  v53 = v95;
                  goto LABEL_83;
                }

                v7 = v100;
                v53 = v95;
                goto LABEL_85;
              }
            }

            v91 = v8;
            errorCopy5 = self;
          }

          v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v15 = v15;
          v22 = [v15 countByEnumeratingWithState:&v107 objects:v119 count:16];
          if (!v22)
          {
            goto LABEL_40;
          }

          v23 = v22;
          v24 = *v108;
          v92 = v9;
          v89 = v14;
LABEL_33:
          errorCopy4 = error;
          v26 = 0;
          while (1)
          {
            if (*v108 != v24)
            {
              objc_enumerationMutation(v15);
            }

            v27 = *(*(&v107 + 1) + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy4)
              {
                v52 = objc_alloc(MEMORY[0x1E696ABC0]);
                v49 = *MEMORY[0x1E698F240];
                v115 = *MEMORY[0x1E696A578];
                v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"languages"];
                v116 = v28;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
                v51 = v52;
                goto LABEL_57;
              }

              goto LABEL_60;
            }

            [v21 addObject:v27];
            if (v23 == ++v26)
            {
              v23 = [v15 countByEnumeratingWithState:&v107 objects:v119 count:16];
              error = errorCopy4;
              v9 = v92;
              v14 = v89;
              if (v23)
              {
                goto LABEL_33;
              }

LABEL_40:

              v28 = [dictionaryCopy objectForKeyedSubscript:@"region"];
              if (!v28)
              {
                v29 = 0;
                v8 = v91;
LABEL_69:
                v73 = v105;
                v53 = v95;
                goto LABEL_81;
              }

              objc_opt_class();
              v8 = v91;
              if (objc_opt_isKindOfClass())
              {
                v29 = 0;
                goto LABEL_69;
              }

              v90 = v14;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v28;
                goto LABEL_80;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v74 = MEMORY[0x1E696AD98];
                bsearch_b(v28, &BMAppleIntelligenceAvailabilityRegionFromString_sortedStrings, 0, 8uLL, &__block_literal_global_18_100652);
                v29 = [v74 numberWithInt:0];
LABEL_80:
                v73 = v105;
                v53 = v95;
LABEL_81:
                LODWORD(v85) = [v29 intValue];
                error = [(BMAppleIntelligenceAvailability *)errorCopy5 initWithAppleIntelligenceUseCase:v8 appleIntelligenceDiffusionUseCase:v73 isAppleIntelligenceToggleEnabled:v103 hasEngagedWithAppleIntelligenceCFU:v106 datePostedAppleIntelligenceCFU:v102 languages:v21 region:v85];
                errorCopy5 = error;
              }

              else
              {
                if (error)
                {
                  v88 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v80 = *MEMORY[0x1E698F240];
                  v113 = *MEMORY[0x1E696A578];
                  v81 = v9;
                  errorCopy6 = error;
                  v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"region"];
                  v114 = v83;
                  v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
                  *errorCopy6 = [v88 initWithDomain:v80 code:2 userInfo:v84];
                  v9 = v81;

                  v29 = 0;
                  error = 0;
                }

                else
                {
                  v29 = 0;
                }

                v8 = v91;
                v53 = v95;
                v14 = v90;
              }

LABEL_82:

              self = errorCopy5;
LABEL_83:

LABEL_84:
              v7 = v100;
LABEL_85:

              v19 = v103;
LABEL_86:

              v11 = v101;
LABEL_87:
              v10 = v105;
LABEL_88:

              goto LABEL_89;
            }
          }

          if (errorCopy4)
          {
            v48 = objc_alloc(MEMORY[0x1E696ABC0]);
            v49 = *MEMORY[0x1E698F240];
            v117 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"languages"];
            v118 = v28;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
            v51 = v48;
LABEL_57:
            v14 = v89;
            v8 = v91;
            *errorCopy4 = [v51 initWithDomain:v49 code:2 userInfo:v50];

            error = 0;
            v29 = v15;
            v9 = v92;
            v53 = v95;
            goto LABEL_82;
          }

LABEL_60:
          error = 0;
          v29 = v15;
          v53 = v95;
          self = errorCopy5;
          v8 = v91;
          v9 = v92;
          v14 = v89;
          goto LABEL_83;
        }

        if (error)
        {
          v104 = objc_alloc(MEMORY[0x1E696ABC0]);
          v93 = v9;
          errorCopy7 = error;
          v55 = v8;
          v56 = *MEMORY[0x1E698F240];
          v126 = *MEMORY[0x1E696A578];
          v57 = v10;
          v58 = v7;
          v59 = objc_alloc(MEMORY[0x1E696AEC0]);
          v87 = objc_opt_class();
          v60 = v59;
          v7 = v58;
          v10 = v57;
          v106 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v87, @"isAppleIntelligenceToggleEnabled"];
          v127 = v106;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
          v61 = v56;
          v8 = v55;
          v19 = 0;
          error = 0;
          *errorCopy7 = [v104 initWithDomain:v61 code:2 userInfo:v53];
          v9 = v93;
          goto LABEL_88;
        }

        v19 = 0;
LABEL_89:

        goto LABEL_90;
      }

      if (error)
      {
        v20 = v20;
        *error = v20;
      }

      error = 0;
LABEL_90:

      goto LABEL_91;
    }

    if (error)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = v8;
      v43 = *MEMORY[0x1E698F240];
      v128 = *MEMORY[0x1E696A578];
      errorCopy8 = error;
      v44 = v7;
      v45 = objc_alloc(MEMORY[0x1E696AEC0]);
      v86 = objc_opt_class();
      v46 = v45;
      v7 = v44;
      v129 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v86, @"appleIntelligenceDiffusionUseCase"];
      v10 = v129;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      v47 = v43;
      v8 = v42;
      error = 0;
      *errorCopy8 = [v41 initWithDomain:v47 code:2 userInfo:v19];
      goto LABEL_90;
    }

LABEL_91:

    goto LABEL_92;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v112 = 0;
    v8 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initWithJSONDictionary:v9 error:&v112];
    v18 = v112;
    if (v18)
    {
      if (error)
      {
        v18 = v18;
        *error = v18;
      }

      error = 0;
      goto LABEL_91;
    }

    goto LABEL_4;
  }

  if (error)
  {
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E698F240];
    v130 = *MEMORY[0x1E696A578];
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appleIntelligenceUseCase"];
    v131[0] = v32;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:&v130 count:1];
    v33 = v31;
    v8 = v32;
    v34 = [v30 initWithDomain:v33 code:2 userInfo:v9];
    errorCopy9 = error;
    error = 0;
    *errorCopy9 = v34;
    goto LABEL_91;
  }

LABEL_92:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppleIntelligenceAvailability *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_appleIntelligenceUseCase)
  {
    v14 = 0;
    PBDataWriterPlaceMark();
    [(BMAppleIntelligenceAvailabilityUseCaseInfo *)self->_appleIntelligenceUseCase writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_appleIntelligenceDiffusionUseCase)
  {
    v14 = 0;
    PBDataWriterPlaceMark();
    [(BMAppleIntelligenceAvailabilityUseCaseInfo *)self->_appleIntelligenceDiffusionUseCase writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsAppleIntelligenceToggleEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasEngagedWithAppleIntelligenceCFU)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_datePostedAppleIntelligenceCFU)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_languages;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMAppleIntelligenceAvailability;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_78;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v51) & 0x7F) << v8;
        if ((LOBYTE(v51) & 0x80) == 0)
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
        goto LABEL_78;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        switch(v16)
        {
          case 1:
            v51 = 0.0;
            v52 = 0;
            if (!PBReaderPlaceMark() || (v31 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_82:

              goto LABEL_79;
            }

            v32 = 48;
            goto LABEL_67;
          case 2:
            v51 = 0.0;
            v52 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_82;
            }

            v31 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initByReadFrom:fromCopy];
            if (!v31)
            {
              goto LABEL_82;
            }

            v32 = 56;
LABEL_67:
            v41 = *(&v5->super.super.isa + v32);
            *(&v5->super.super.isa + v32) = v31;

            PBReaderRecallMark();
            goto LABEL_77;
          case 3:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v5->_hasIsAppleIntelligenceToggleEnabled = 1;
            while (1)
            {
              LOBYTE(v51) = 0;
              v22 = [fromCopy position] + 1;
              if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v21 |= (LOBYTE(v51) & 0x7F) << v19;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v14 = v20++ >= 9;
              if (v14)
              {
                LOBYTE(v25) = 0;
                goto LABEL_73;
              }
            }

            v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_73:
            v42 = 32;
            goto LABEL_74;
        }

        goto LABEL_51;
      }

      if (v16 <= 5)
      {
        break;
      }

      if (v16 != 6)
      {
        if (v16 == 7)
        {
          v26 = 0;
          while (1)
          {
            LOBYTE(v51) = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            if ((SLOBYTE(v51) & 0x80000000) == 0)
            {
              break;
            }

            if (v26++ > 8)
            {
              goto LABEL_71;
            }
          }

          [fromCopy hasError];
LABEL_71:
          v5->_region = 0;
          goto LABEL_77;
        }

LABEL_51:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_77;
      }

      v39 = PBReaderReadString();
      if (!v39)
      {
        goto LABEL_82;
      }

      v40 = v39;
      [v6 addObject:v39];

LABEL_77:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_78;
      }
    }

    if (v16 == 4)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v5->_hasHasEngagedWithAppleIntelligenceCFU = 1;
      while (1)
      {
        LOBYTE(v51) = 0;
        v36 = [fromCopy position] + 1;
        if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v35 |= (LOBYTE(v51) & 0x7F) << v33;
        if ((LOBYTE(v51) & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v14 = v34++ >= 9;
        if (v14)
        {
          LOBYTE(v25) = 0;
          goto LABEL_69;
        }
      }

      v25 = (v35 != 0) & ~[fromCopy hasError];
LABEL_69:
      v42 = 34;
LABEL_74:
      *(&v5->super.super.isa + v42) = v25;
      goto LABEL_77;
    }

    if (v16 == 5)
    {
      v5->_hasRaw_datePostedAppleIntelligenceCFU = 1;
      v51 = 0.0;
      v17 = [fromCopy position] + 8;
      if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
      {
        data5 = [fromCopy data];
        [data5 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_raw_datePostedAppleIntelligenceCFU = v51;
      goto LABEL_77;
    }

    goto LABEL_51;
  }

LABEL_78:
  v45 = [v6 copy];
  languages = v5->_languages;
  v5->_languages = v45;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_79:
    v48 = 0;
  }

  else
  {
LABEL_80:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  appleIntelligenceUseCase = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
  appleIntelligenceDiffusionUseCase = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability isAppleIntelligenceToggleEnabled](self, "isAppleIntelligenceToggleEnabled")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability hasEngagedWithAppleIntelligenceCFU](self, "hasEngagedWithAppleIntelligenceCFU")}];
  datePostedAppleIntelligenceCFU = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
  languages = [(BMAppleIntelligenceAvailability *)self languages];
  v10 = BMAppleIntelligenceAvailabilityRegionAsString([(BMAppleIntelligenceAvailability *)self region]);
  v11 = [v3 initWithFormat:@"BMAppleIntelligenceAvailability with appleIntelligenceUseCase: %@, appleIntelligenceDiffusionUseCase: %@, isAppleIntelligenceToggleEnabled: %@, hasEngagedWithAppleIntelligenceCFU: %@, datePostedAppleIntelligenceCFU: %@, languages: %@, region: %@", appleIntelligenceUseCase, appleIntelligenceDiffusionUseCase, v6, v7, datePostedAppleIntelligenceCFU, languages, v10];

  return v11;
}

- (BMAppleIntelligenceAvailability)initWithAppleIntelligenceUseCase:(id)case appleIntelligenceDiffusionUseCase:(id)useCase isAppleIntelligenceToggleEnabled:(id)enabled hasEngagedWithAppleIntelligenceCFU:(id)u datePostedAppleIntelligenceCFU:(id)fU languages:(id)languages region:(int)region
{
  caseCopy = case;
  useCaseCopy = useCase;
  enabledCopy = enabled;
  uCopy = u;
  fUCopy = fU;
  languagesCopy = languages;
  v25.receiver = self;
  v25.super_class = BMAppleIntelligenceAvailability;
  v22 = [(BMEventBase *)&v25 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_appleIntelligenceUseCase, case);
    objc_storeStrong(&v22->_appleIntelligenceDiffusionUseCase, useCase);
    if (enabledCopy)
    {
      v22->_hasIsAppleIntelligenceToggleEnabled = 1;
      v22->_isAppleIntelligenceToggleEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v22->_hasIsAppleIntelligenceToggleEnabled = 0;
      v22->_isAppleIntelligenceToggleEnabled = 0;
    }

    if (uCopy)
    {
      v22->_hasHasEngagedWithAppleIntelligenceCFU = 1;
      v22->_hasEngagedWithAppleIntelligenceCFU = [uCopy BOOLValue];
    }

    else
    {
      v22->_hasHasEngagedWithAppleIntelligenceCFU = 0;
      v22->_hasEngagedWithAppleIntelligenceCFU = 0;
    }

    if (fUCopy)
    {
      v22->_hasRaw_datePostedAppleIntelligenceCFU = 1;
      [fUCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_datePostedAppleIntelligenceCFU = 0;
      v23 = -1.0;
    }

    v22->_raw_datePostedAppleIntelligenceCFU = v23;
    objc_storeStrong(&v22->_languages, languages);
    v22->_region = region;
  }

  return v22;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appleIntelligenceUseCase" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appleIntelligenceDiffusionUseCase" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAppleIntelligenceToggleEnabled" number:3 type:12 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEngagedWithAppleIntelligenceCFU" number:4 type:12 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"datePostedAppleIntelligenceCFU" number:5 type:0 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"languages" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"region" number:7 type:4 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

id __42__BMAppleIntelligenceAvailability_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _languagesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMAppleIntelligenceAvailability_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 appleIntelligenceDiffusionUseCase];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __42__BMAppleIntelligenceAvailability_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 appleIntelligenceUseCase];
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

    v8 = [[BMAppleIntelligenceAvailability alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end