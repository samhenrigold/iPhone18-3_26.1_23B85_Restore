@interface BMTextUnderstandingPoemAnalytics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemAnalytics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemAnalytics)initWithVisualIdentifier:(id)identifier prediction:(id)prediction named:(id)named shadowMatch:(id)match threshold:(id)threshold predictionConfidence:(id)confidence onboarding:(id)onboarding nameMegadomeIdentifier:(id)self0 nameSource:(int)self1 features:(id)self2 accepted:(id)self3 rejected:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemAnalytics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visualIdentifier = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
    visualIdentifier2 = [v5 visualIdentifier];
    v8 = visualIdentifier2;
    if (visualIdentifier == visualIdentifier2)
    {
    }

    else
    {
      visualIdentifier3 = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
      visualIdentifier4 = [v5 visualIdentifier];
      v11 = [visualIdentifier3 isEqual:visualIdentifier4];

      if (!v11)
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasPrediction](self, "hasPrediction") || [v5 hasPrediction])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasPrediction])
      {
        goto LABEL_56;
      }

      if (![v5 hasPrediction])
      {
        goto LABEL_56;
      }

      prediction = [(BMTextUnderstandingPoemAnalytics *)self prediction];
      if (prediction != [v5 prediction])
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasNamed](self, "hasNamed") || [v5 hasNamed])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasNamed])
      {
        goto LABEL_56;
      }

      if (![v5 hasNamed])
      {
        goto LABEL_56;
      }

      named = [(BMTextUnderstandingPoemAnalytics *)self named];
      if (named != [v5 named])
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasShadowMatch](self, "hasShadowMatch") || [v5 hasShadowMatch])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasShadowMatch])
      {
        goto LABEL_56;
      }

      if (![v5 hasShadowMatch])
      {
        goto LABEL_56;
      }

      shadowMatch = [(BMTextUnderstandingPoemAnalytics *)self shadowMatch];
      if (shadowMatch != [v5 shadowMatch])
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasThreshold](self, "hasThreshold") || [v5 hasThreshold])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasThreshold])
      {
        goto LABEL_56;
      }

      if (![v5 hasThreshold])
      {
        goto LABEL_56;
      }

      [(BMTextUnderstandingPoemAnalytics *)self threshold];
      v17 = v16;
      [v5 threshold];
      if (v17 != v18)
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasPredictionConfidence](self, "hasPredictionConfidence") || [v5 hasPredictionConfidence])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasPredictionConfidence])
      {
        goto LABEL_56;
      }

      if (![v5 hasPredictionConfidence])
      {
        goto LABEL_56;
      }

      [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
      v20 = v19;
      [v5 predictionConfidence];
      if (v20 != v21)
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasOnboarding](self, "hasOnboarding") || [v5 hasOnboarding])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasOnboarding])
      {
        goto LABEL_56;
      }

      if (![v5 hasOnboarding])
      {
        goto LABEL_56;
      }

      onboarding = [(BMTextUnderstandingPoemAnalytics *)self onboarding];
      if (onboarding != [v5 onboarding])
      {
        goto LABEL_56;
      }
    }

    nameMegadomeIdentifier = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
    nameMegadomeIdentifier2 = [v5 nameMegadomeIdentifier];
    v25 = nameMegadomeIdentifier2;
    if (nameMegadomeIdentifier == nameMegadomeIdentifier2)
    {
    }

    else
    {
      nameMegadomeIdentifier3 = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
      nameMegadomeIdentifier4 = [v5 nameMegadomeIdentifier];
      v28 = [nameMegadomeIdentifier3 isEqual:nameMegadomeIdentifier4];

      if (!v28)
      {
        goto LABEL_56;
      }
    }

    nameSource = [(BMTextUnderstandingPoemAnalytics *)self nameSource];
    if (nameSource == [v5 nameSource])
    {
      features = [(BMTextUnderstandingPoemAnalytics *)self features];
      features2 = [v5 features];
      v32 = features2;
      if (features == features2)
      {
      }

      else
      {
        features3 = [(BMTextUnderstandingPoemAnalytics *)self features];
        features4 = [v5 features];
        v35 = [features3 isEqual:features4];

        if (!v35)
        {
          goto LABEL_56;
        }
      }

      if (!-[BMTextUnderstandingPoemAnalytics hasAccepted](self, "hasAccepted") && ![v5 hasAccepted] || -[BMTextUnderstandingPoemAnalytics hasAccepted](self, "hasAccepted") && objc_msgSend(v5, "hasAccepted") && (v36 = -[BMTextUnderstandingPoemAnalytics accepted](self, "accepted"), v36 == objc_msgSend(v5, "accepted")))
      {
        if (!-[BMTextUnderstandingPoemAnalytics hasRejected](self, "hasRejected") && ![v5 hasRejected])
        {
          LOBYTE(v12) = 1;
          goto LABEL_57;
        }

        if (-[BMTextUnderstandingPoemAnalytics hasRejected](self, "hasRejected") && [v5 hasRejected])
        {
          rejected = [(BMTextUnderstandingPoemAnalytics *)self rejected];
          v12 = rejected ^ [v5 rejected] ^ 1;
LABEL_57:

          goto LABEL_58;
        }
      }
    }

LABEL_56:
    LOBYTE(v12) = 0;
    goto LABEL_57;
  }

  LOBYTE(v12) = 0;
LABEL_58:

  return v12;
}

- (id)jsonDictionary
{
  v45[12] = *MEMORY[0x1E69E9840];
  visualIdentifier = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
  if ([(BMTextUnderstandingPoemAnalytics *)self hasPrediction])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics prediction](self, "prediction")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasNamed])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics named](self, "named")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasShadowMatch])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics shadowMatch](self, "shadowMatch")}];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMTextUnderstandingPoemAnalytics *)self hasThreshold]|| ([(BMTextUnderstandingPoemAnalytics *)self threshold], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMTextUnderstandingPoemAnalytics *)self threshold];
    v8 = MEMORY[0x1E696AD98];
    [(BMTextUnderstandingPoemAnalytics *)self threshold];
    v9 = [v8 numberWithDouble:?];
  }

  if (![(BMTextUnderstandingPoemAnalytics *)self hasPredictionConfidence]|| ([(BMTextUnderstandingPoemAnalytics *)self predictionConfidence], fabs(v10) == INFINITY))
  {
    v43 = 0;
  }

  else
  {
    [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
    v11 = MEMORY[0x1E696AD98];
    [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
    v43 = [v11 numberWithDouble:?];
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasOnboarding])
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics onboarding](self, "onboarding")}];
  }

  else
  {
    v42 = 0;
  }

  nameMegadomeIdentifier = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextUnderstandingPoemAnalytics nameSource](self, "nameSource")}];
  features = [(BMTextUnderstandingPoemAnalytics *)self features];
  jsonDictionary = [features jsonDictionary];

  if ([(BMTextUnderstandingPoemAnalytics *)self hasAccepted])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics accepted](self, "accepted")}];
  }

  else
  {
    v13 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasRejected])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics rejected](self, "rejected")}];
  }

  else
  {
    v14 = 0;
  }

  v44[0] = @"visualIdentifier";
  null = visualIdentifier;
  if (!visualIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null;
  v45[0] = null;
  v44[1] = @"prediction";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v45[1] = null2;
  v44[2] = @"named";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null3;
  v45[2] = null3;
  v44[3] = @"shadowMatch";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = visualIdentifier;
  v30 = null4;
  v45[3] = null4;
  v44[4] = @"threshold";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v4;
  v29 = null5;
  v45[4] = null5;
  v44[5] = @"predictionConfidence";
  null6 = v43;
  if (!v43)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v5;
  v45[5] = null6;
  v44[6] = @"onboarding";
  null7 = v42;
  if (!v42)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v6;
  v45[6] = null7;
  v44[7] = @"nameMegadomeIdentifier";
  null8 = nameMegadomeIdentifier;
  if (!nameMegadomeIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v9;
  v45[7] = null8;
  v44[8] = @"nameSource";
  null9 = v40;
  if (!v40)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v45[8] = null9;
  v44[9] = @"features";
  null10 = jsonDictionary;
  if (!jsonDictionary)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v45[9] = null10;
  v44[10] = @"accepted";
  null11 = v13;
  if (!v13)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v45[10] = null11;
  v44[11] = @"rejected";
  null12 = v14;
  if (!v14)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v45[11] = null12;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:12];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_53;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_53;
    }
  }

LABEL_53:
  if (!jsonDictionary)
  {
  }

  if (!v40)
  {
  }

  if (!nameMegadomeIdentifier)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v23)
  {
  }

  if (v35)
  {
    if (v36)
    {
      goto LABEL_67;
    }
  }

  else
  {

    if (v36)
    {
LABEL_67:
      if (v37)
      {
        goto LABEL_68;
      }

LABEL_76:

      if (v38)
      {
        goto LABEL_69;
      }

      goto LABEL_77;
    }
  }

  if (!v37)
  {
    goto LABEL_76;
  }

LABEL_68:
  if (v38)
  {
    goto LABEL_69;
  }

LABEL_77:

LABEL_69:

  return v34;
}

- (BMTextUnderstandingPoemAnalytics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v160[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"visualIdentifier"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"prediction"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"named"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy2 = error;
        v11 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        v11 = v10;
LABEL_10:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"shadowMatch"];
        error = v7;
        v133 = v11;
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = dictionaryCopy;
          v14 = v6;
          v131 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = dictionaryCopy;
          v14 = v6;
          v131 = v12;
LABEL_13:
          v15 = [v13 objectForKeyedSubscript:@"threshold"];
          v126 = v12;
          v129 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v130 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v130 = v16;
LABEL_16:
            v17 = [v13 objectForKeyedSubscript:@"predictionConfidence"];
            v125 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v128 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v128 = v18;
LABEL_19:
              v19 = [v13 objectForKeyedSubscript:@"onboarding"];
              v119 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v124 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v124 = v20;
LABEL_22:
                v21 = [v13 objectForKeyedSubscript:@"nameMegadomeIdentifier"];
                v6 = v14;
                v114 = v10;
                v117 = v21;
                if (v21)
                {
                  v22 = v21;
                  objc_opt_class();
                  dictionaryCopy = v13;
                  if (objc_opt_isKindOfClass())
                  {
                    v118 = 0;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy2)
                      {
                        v118 = 0;
                        v25 = 0;
                        selfCopy22 = self;
                        goto LABEL_105;
                      }

                      v122 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v88 = *MEMORY[0x1E698F240];
                      v145 = *MEMORY[0x1E696A578];
                      v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nameMegadomeIdentifier"];
                      v146 = v116;
                      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
                      v118 = 0;
                      v25 = 0;
                      *errorCopy2 = [v122 initWithDomain:v88 code:2 userInfo:v89];
                      selfCopy22 = self;
                      goto LABEL_104;
                    }

                    v118 = v22;
                  }
                }

                else
                {
                  v118 = 0;
                  dictionaryCopy = v13;
                }

                v45 = [dictionaryCopy objectForKeyedSubscript:@"nameSource"];
                v113 = v9;
                v111 = v45;
                if (v45 && (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v116 = v46;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy2)
                      {
                        v116 = 0;
                        v25 = 0;
                        selfCopy22 = self;
                        v89 = v111;
                        goto LABEL_104;
                      }

                      v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v98 = *MEMORY[0x1E698F240];
                      v143 = *MEMORY[0x1E696A578];
                      v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"nameSource"];
                      v144 = v67;
                      v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
                      v100 = v98;
                      v9 = v113;
                      v112 = v99;
                      v116 = 0;
                      v25 = 0;
                      *errorCopy2 = [v97 initWithDomain:v100 code:2 userInfo:?];
                      selfCopy22 = self;
                      goto LABEL_102;
                    }

                    v116 = [MEMORY[0x1E696AD98] numberWithInt:BMTextUnderstandingPoemAnalyticsSourcesFromString(v46)];
                  }
                }

                else
                {
                  v116 = 0;
                }

                v47 = [dictionaryCopy objectForKeyedSubscript:@"features"];
                if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v49 = dictionaryCopy;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy2)
                    {
                      v25 = 0;
                      selfCopy22 = self;
                      goto LABEL_103;
                    }

                    v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v90 = *MEMORY[0x1E698F240];
                    v141 = *MEMORY[0x1E696A578];
                    v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"features"];
                    v142 = v112;
                    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
                    *errorCopy2 = [v107 initWithDomain:v90 code:2 userInfo:v91];

                    v25 = 0;
                    v67 = v47;
                    selfCopy22 = self;
                    goto LABEL_101;
                  }

                  v67 = v47;
                  v136 = 0;
                  v112 = [[BMTextUnderstandingPoemAnalyticsFeatures alloc] initWithJSONDictionary:v67 error:&v136];
                  v68 = v136;
                  if (v68)
                  {
                    selfCopy22 = self;
                    if (errorCopy2)
                    {
                      v68 = v68;
                      *errorCopy2 = v68;
                    }

                    v25 = 0;
                    goto LABEL_101;
                  }
                }

                else
                {
                  v112 = 0;
                }

                v48 = [dictionaryCopy objectForKeyedSubscript:@"accepted"];
                errorCopy3 = error;
                if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v49 = dictionaryCopy;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v123 = v8;
                    selfCopy10 = self;
                    if (!errorCopy2)
                    {
                      v51 = 0;
                      v25 = 0;
                      goto LABEL_100;
                    }

                    v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v92 = *MEMORY[0x1E698F240];
                    v139 = *MEMORY[0x1E696A578];
                    v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"accepted"];
                    v140 = v53;
                    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
                    v93 = [v108 initWithDomain:v92 code:2 userInfo:v52];
                    v51 = 0;
                    v25 = 0;
                    *errorCopy2 = v93;
                    goto LABEL_98;
                  }

                  selfCopy10 = self;
                  v51 = v48;
                }

                else
                {
                  v49 = dictionaryCopy;
                  selfCopy10 = self;
                  v51 = 0;
                }

                v52 = [v49 objectForKeyedSubscript:@"rejected"];
                if (!v52 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v53 = 0;
LABEL_60:
                  LODWORD(v106) = [v116 intValue];
                  v25 = [(BMTextUnderstandingPoemAnalytics *)selfCopy10 initWithVisualIdentifier:errorCopy3 prediction:v113 named:v133 shadowMatch:v131 threshold:v130 predictionConfidence:v128 onboarding:v124 nameMegadomeIdentifier:v118 nameSource:v106 features:v112 accepted:v51 rejected:v53];
                  selfCopy10 = v25;
LABEL_99:

                  v9 = v113;
LABEL_100:

                  v67 = v47;
                  selfCopy22 = selfCopy10;
                  error = errorCopy3;
LABEL_101:
                  dictionaryCopy = v49;
LABEL_102:

                  v47 = v67;
                  v12 = v126;
LABEL_103:
                  v89 = v111;

LABEL_104:
                  v10 = v114;
                  goto LABEL_105;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v53 = v52;
                  goto LABEL_60;
                }

                v123 = v8;
                if (errorCopy2)
                {
                  v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v109 = *MEMORY[0x1E698F240];
                  v137 = *MEMORY[0x1E696A578];
                  v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rejected"];
                  v138 = v94;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                  *errorCopy2 = [v135 initWithDomain:v109 code:2 userInfo:v95];
                }

                v53 = 0;
                v25 = 0;
LABEL_98:
                v8 = v123;
                goto LABEL_99;
              }

              v121 = v8;
              if (errorCopy2)
              {
                v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                errorCopy4 = error;
                v80 = v10;
                v81 = *MEMORY[0x1E698F240];
                v147 = *MEMORY[0x1E696A578];
                v82 = v9;
                v83 = objc_alloc(MEMORY[0x1E696AEC0]);
                v105 = objc_opt_class();
                v84 = v83;
                v9 = v82;
                v118 = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v105, @"onboarding"];
                v148 = v118;
                v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
                v86 = v78;
                v12 = v126;
                v87 = v81;
                v10 = v80;
                error = errorCopy4;
                v117 = v85;
                v124 = 0;
                v25 = 0;
                *errorCopy2 = [v86 initWithDomain:v87 code:2 userInfo:?];
                selfCopy22 = self;
                v6 = v14;
                dictionaryCopy = v13;
LABEL_105:

LABEL_106:
                goto LABEL_107;
              }

              v124 = 0;
              v25 = 0;
LABEL_114:
              v8 = v121;
              selfCopy22 = self;
              v6 = v14;
              dictionaryCopy = v13;
              goto LABEL_106;
            }

            v121 = v8;
            if (errorCopy2)
            {
              v69 = objc_alloc(MEMORY[0x1E696ABC0]);
              v70 = v10;
              v71 = *MEMORY[0x1E698F240];
              v149 = *MEMORY[0x1E696A578];
              v72 = v9;
              v73 = objc_alloc(MEMORY[0x1E696AEC0]);
              v104 = objc_opt_class();
              v74 = v73;
              v9 = v72;
              v124 = [v74 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v104, @"predictionConfidence"];
              v150 = v124;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
              v76 = v69;
              v12 = v126;
              v77 = v71;
              v10 = v70;
              v119 = v75;
              v128 = 0;
              v25 = 0;
              *errorCopy2 = [v76 initWithDomain:v77 code:2 userInfo:?];
              goto LABEL_114;
            }

            v128 = 0;
            v25 = 0;
LABEL_94:
            v8 = v121;
            selfCopy22 = self;
            v6 = v14;
            dictionaryCopy = v13;
LABEL_107:

            goto LABEL_108;
          }

          v121 = v8;
          if (errorCopy2)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v115 = v10;
            v63 = *MEMORY[0x1E698F240];
            v151 = *MEMORY[0x1E696A578];
            v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"threshold"];
            v152 = v128;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
            v65 = v62;
            v12 = v126;
            v66 = v63;
            v10 = v115;
            v125 = v64;
            v130 = 0;
            v25 = 0;
            *errorCopy2 = [v65 initWithDomain:v66 code:2 userInfo:?];
            goto LABEL_94;
          }

          v130 = 0;
          v25 = 0;
          selfCopy22 = self;
          v6 = v14;
          dictionaryCopy = v13;
LABEL_108:

          goto LABEL_109;
        }

        if (errorCopy2)
        {
          v132 = objc_alloc(MEMORY[0x1E696ABC0]);
          v54 = v10;
          v55 = *MEMORY[0x1E698F240];
          v153 = *MEMORY[0x1E696A578];
          v56 = v9;
          v57 = objc_alloc(MEMORY[0x1E696AEC0]);
          v103 = objc_opt_class();
          v58 = v57;
          v9 = v56;
          v130 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v103, @"shadowMatch"];
          v154 = v130;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
          v60 = v55;
          v10 = v54;
          error = v7;
          v129 = v59;
          v61 = [v132 initWithDomain:v60 code:2 userInfo:?];
          v131 = 0;
          v25 = 0;
          *errorCopy2 = v61;
          selfCopy22 = self;
          goto LABEL_108;
        }

        v131 = 0;
        v25 = 0;
        selfCopy22 = self;
LABEL_109:

        goto LABEL_110;
      }

      if (error)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v120 = v8;
        errorCopy5 = error;
        v39 = *MEMORY[0x1E698F240];
        v155 = *MEMORY[0x1E696A578];
        v40 = v9;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v102 = objc_opt_class();
        v42 = v41;
        v9 = v40;
        v131 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v102, @"named"];
        v156 = v131;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
        v44 = v37;
        v12 = v43;
        v133 = 0;
        v25 = 0;
        *errorCopy5 = [v44 initWithDomain:v39 code:2 userInfo:v43];
        v8 = v120;
        selfCopy22 = self;
        error = v7;
        goto LABEL_109;
      }

      v133 = 0;
      v25 = 0;
      selfCopy22 = self;
      error = v7;
LABEL_110:

      goto LABEL_111;
    }

    if (error)
    {
      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v157 = *MEMORY[0x1E696A578];
      v29 = v7;
      v30 = dictionaryCopy;
      v31 = objc_alloc(MEMORY[0x1E696AEC0]);
      v101 = objc_opt_class();
      v32 = v31;
      dictionaryCopy = v30;
      v33 = v8;
      errorCopy6 = error;
      error = v29;
      v133 = [v32 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v101, @"prediction"];
      v158 = v133;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
      v36 = v28;
      v10 = v35;
      v9 = 0;
      v25 = 0;
      *errorCopy6 = [v27 initWithDomain:v36 code:2 userInfo:v35];
      v8 = v33;
      selfCopy22 = self;
      goto LABEL_110;
    }

    v9 = 0;
    v25 = 0;
    selfCopy22 = self;
    error = v7;
LABEL_111:

    goto LABEL_112;
  }

  if (error)
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v159 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualIdentifier"];
    v160[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:&v159 count:1];
    v25 = 0;
    *error = [v23 initWithDomain:v24 code:2 userInfo:v8];
    error = 0;
    selfCopy22 = self;
    goto LABEL_111;
  }

  v25 = 0;
  selfCopy22 = self;
LABEL_112:

  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemAnalytics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_visualIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrediction)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNamed)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasShadowMatch)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasThreshold)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasPredictionConfidence)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasOnboarding)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_nameMegadomeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_features)
  {
    PBDataWriterPlaceMark();
    [(BMTextUnderstandingPoemAnalyticsFeatures *)self->_features writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasAccepted)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRejected)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v77.receiver = self;
  v77.super_class = BMTextUnderstandingPoemAnalytics;
  v5 = [(BMEventBase *)&v77 init];
  if (!v5)
  {
    goto LABEL_135;
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
        LOBYTE(v78[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v78[0] & 0x7F) << v7;
        if ((v78[0] & 0x80) == 0)
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
      if ((v14 >> 3) > 6)
      {
        if (v15 > 9)
        {
          if (v15 != 10)
          {
            if (v15 == 11)
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v5->_hasAccepted = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v66 = [fromCopy position] + 1;
                if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
                {
                  data2 = [fromCopy data];
                  [data2 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v65 |= (v78[0] & 0x7F) << v63;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v13 = v64++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_125;
                }
              }

              v22 = (v65 != 0) & ~[fromCopy hasError];
LABEL_125:
              v69 = 26;
            }

            else
            {
              if (v15 != 12)
              {
LABEL_108:
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_134;
                }

                goto LABEL_132;
              }

              v32 = 0;
              v33 = 0;
              v34 = 0;
              v5->_hasRejected = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v35 = [fromCopy position] + 1;
                if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
                {
                  data3 = [fromCopy data];
                  [data3 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v34 |= (v78[0] & 0x7F) << v32;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v13 = v33++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_117;
                }
              }

              v22 = (v34 != 0) & ~[fromCopy hasError];
LABEL_117:
              v69 = 28;
            }

            goto LABEL_126;
          }

          v78[0] = 0;
          v78[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_134;
          }

          v52 = [[BMTextUnderstandingPoemAnalyticsFeatures alloc] initByReadFrom:fromCopy];
          if (!v52)
          {
            goto LABEL_134;
          }

          features = v5->_features;
          v5->_features = v52;

          PBReaderRecallMark();
        }

        else
        {
          if (v15 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v5->_hasOnboarding = 1;
            while (1)
            {
              LOBYTE(v78[0]) = 0;
              v43 = [fromCopy position] + 1;
              if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v42 |= (v78[0] & 0x7F) << v40;
              if ((v78[0] & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v13 = v41++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_119;
              }
            }

            v22 = (v42 != 0) & ~[fromCopy hasError];
LABEL_119:
            v69 = 24;
            goto LABEL_126;
          }

          if (v15 == 8)
          {
            v38 = PBReaderReadString();
            v39 = 64;
LABEL_95:
            v60 = *(&v5->super.super.isa + v39);
            *(&v5->super.super.isa + v39) = v38;

            goto LABEL_132;
          }

          if (v15 != 9)
          {
            goto LABEL_108;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v78[0]) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v78[0] & 0x7F) << v23;
            if ((v78[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            if (v24++ > 8)
            {
              goto LABEL_114;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v25 > 5)
          {
LABEL_114:
            LODWORD(v25) = 0;
          }

          v5->_nameSource = v25;
        }
      }

      else
      {
        if (v15 <= 3)
        {
          if (v15 != 1)
          {
            if (v15 == 2)
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v5->_hasPrediction = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v57 = [fromCopy position] + 1;
                if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
                {
                  data6 = [fromCopy data];
                  [data6 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v56 |= (v78[0] & 0x7F) << v54;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v13 = v55++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_123;
                }
              }

              v22 = (v56 != 0) & ~[fromCopy hasError];
LABEL_123:
              v69 = 16;
            }

            else
            {
              if (v15 != 3)
              {
                goto LABEL_108;
              }

              v16 = 0;
              v17 = 0;
              v18 = 0;
              v5->_hasNamed = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v19 = [fromCopy position] + 1;
                if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
                {
                  data7 = [fromCopy data];
                  [data7 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 |= (v78[0] & 0x7F) << v16;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v13 = v17++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_111;
                }
              }

              v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_111:
              v69 = 18;
            }

            goto LABEL_126;
          }

          v38 = PBReaderReadString();
          v39 = 40;
          goto LABEL_95;
        }

        switch(v15)
        {
          case 4:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v5->_hasShadowMatch = 1;
            while (1)
            {
              LOBYTE(v78[0]) = 0;
              v49 = [fromCopy position] + 1;
              if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
              {
                data8 = [fromCopy data];
                [data8 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v48 |= (v78[0] & 0x7F) << v46;
              if ((v78[0] & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v13 = v47++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_121;
              }
            }

            v22 = (v48 != 0) & ~[fromCopy hasError];
LABEL_121:
            v69 = 20;
LABEL_126:
            *(&v5->super.super.isa + v69) = v22;
            goto LABEL_132;
          case 5:
            v5->_hasThreshold = 1;
            v78[0] = 0;
            v61 = [fromCopy position] + 8;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 8, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v71 = v78[0];
            v72 = 48;
            break;
          case 6:
            v5->_hasPredictionConfidence = 1;
            v78[0] = 0;
            v30 = [fromCopy position] + 8;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v71 = v78[0];
            v72 = 56;
            break;
          default:
            goto LABEL_108;
        }

        *(&v5->super.super.isa + v72) = v71;
      }

LABEL_132:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_134:
    v75 = 0;
  }

  else
  {
LABEL_135:
    v75 = v5;
  }

  return v75;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  visualIdentifier = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics prediction](self, "prediction")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics named](self, "named")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics shadowMatch](self, "shadowMatch")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMTextUnderstandingPoemAnalytics *)self threshold];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
  v14 = [v6 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics onboarding](self, "onboarding")}];
  nameMegadomeIdentifier = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
  v9 = BMTextUnderstandingPoemAnalyticsSourcesAsString([(BMTextUnderstandingPoemAnalytics *)self nameSource]);
  features = [(BMTextUnderstandingPoemAnalytics *)self features];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics accepted](self, "accepted")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics rejected](self, "rejected")}];
  v17 = [v16 initWithFormat:@"BMTextUnderstandingPoemAnalytics with visualIdentifier: %@, prediction: %@, named: %@, shadowMatch: %@, threshold: %@, predictionConfidence: %@, onboarding: %@, nameMegadomeIdentifier: %@, nameSource: %@, features: %@, accepted: %@, rejected: %@", visualIdentifier, v19, v18, v3, v5, v14, v7, nameMegadomeIdentifier, v9, features, v11, v12];

  return v17;
}

- (BMTextUnderstandingPoemAnalytics)initWithVisualIdentifier:(id)identifier prediction:(id)prediction named:(id)named shadowMatch:(id)match threshold:(id)threshold predictionConfidence:(id)confidence onboarding:(id)onboarding nameMegadomeIdentifier:(id)self0 nameSource:(int)self1 features:(id)self2 accepted:(id)self3 rejected:(id)self4
{
  identifierCopy = identifier;
  predictionCopy = prediction;
  namedCopy = named;
  matchCopy = match;
  thresholdCopy = threshold;
  confidenceCopy = confidence;
  v23 = predictionCopy;
  onboardingCopy = onboarding;
  megadomeIdentifierCopy = megadomeIdentifier;
  featuresCopy = features;
  acceptedCopy = accepted;
  rejectedCopy = rejected;
  v37.receiver = self;
  v37.super_class = BMTextUnderstandingPoemAnalytics;
  v27 = [(BMEventBase *)&v37 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v27->_visualIdentifier, identifier);
    if (v23)
    {
      v27->_hasPrediction = 1;
      v27->_prediction = [v23 BOOLValue];
    }

    else
    {
      v27->_hasPrediction = 0;
      v27->_prediction = 0;
    }

    if (namedCopy)
    {
      v27->_hasNamed = 1;
      v27->_named = [namedCopy BOOLValue];
    }

    else
    {
      v27->_hasNamed = 0;
      v27->_named = 0;
    }

    if (matchCopy)
    {
      v27->_hasShadowMatch = 1;
      v27->_shadowMatch = [matchCopy BOOLValue];
    }

    else
    {
      v27->_hasShadowMatch = 0;
      v27->_shadowMatch = 0;
    }

    if (thresholdCopy)
    {
      v27->_hasThreshold = 1;
      [thresholdCopy doubleValue];
    }

    else
    {
      v27->_hasThreshold = 0;
      v28 = -1.0;
    }

    v27->_threshold = v28;
    if (confidenceCopy)
    {
      v27->_hasPredictionConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v27->_hasPredictionConfidence = 0;
      v29 = -1.0;
    }

    v27->_predictionConfidence = v29;
    if (onboardingCopy)
    {
      v27->_hasOnboarding = 1;
      v27->_onboarding = [onboardingCopy BOOLValue];
    }

    else
    {
      v27->_hasOnboarding = 0;
      v27->_onboarding = 0;
    }

    objc_storeStrong(&v27->_nameMegadomeIdentifier, megadomeIdentifier);
    v27->_nameSource = source;
    objc_storeStrong(&v27->_features, features);
    if (acceptedCopy)
    {
      v27->_hasAccepted = 1;
      v27->_accepted = [acceptedCopy BOOLValue];
    }

    else
    {
      v27->_hasAccepted = 0;
      v27->_accepted = 0;
    }

    if (rejectedCopy)
    {
      v27->_hasRejected = 1;
      v27->_rejected = [rejectedCopy BOOLValue];
    }

    else
    {
      v27->_hasRejected = 0;
      v27->_rejected = 0;
    }
  }

  return v27;
}

+ (id)protoFields
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualIdentifier" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prediction" number:2 type:12 subMessageClass:0];
  v16[1] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"named" number:3 type:12 subMessageClass:0];
  v16[2] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shadowMatch" number:4 type:12 subMessageClass:0];
  v16[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"threshold" number:5 type:0 subMessageClass:0];
  v16[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionConfidence" number:6 type:0 subMessageClass:0];
  v16[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onboarding" number:7 type:12 subMessageClass:0];
  v16[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nameMegadomeIdentifier" number:8 type:13 subMessageClass:0];
  v16[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nameSource" number:9 type:4 subMessageClass:0];
  v16[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"features" number:10 type:14 subMessageClass:objc_opt_class()];
  v16[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accepted" number:11 type:12 subMessageClass:0];
  v16[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rejected" number:12 type:12 subMessageClass:0];
  v16[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  return v11;
}

+ (id)columns
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prediction" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"named" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shadowMatch" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"threshold" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictionConfidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onboarding" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nameMegadomeIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nameSource" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"features_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_288];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accepted" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rejected" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v16[0] = v15;
  v16[1] = v14;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v6;
  v16[7] = v7;
  v16[8] = v8;
  v16[9] = v13;
  v16[10] = v9;
  v16[11] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  return v12;
}

id __43__BMTextUnderstandingPoemAnalytics_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 features];
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

    v8 = [[BMTextUnderstandingPoemAnalytics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end