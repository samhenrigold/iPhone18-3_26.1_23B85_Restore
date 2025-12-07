@interface BMMomentsEngagementBundleSummary
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagementBundleSummary)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate interfaceType:(int)type rankingScore:(id)score attachedPhotoAssets:(id)assets bundleInterfaceType:(id)interfaceType bundleEvergreenType:(id)self0 bundleSubType:(int)self1 bundleSuperType:(int)self2 bundleGoodnessScore:(id)self3 ordinalRankInRecommendedTab:(id)self4 visibilityCategoryForUI:(int)self5 assets:(id)self6;
- (BMMomentsEngagementBundleSummary)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)_assetsJSONArray;
- (id)_attachedPhotoAssetsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagementBundleSummary

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMMomentsEngagementBundleSummary *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMMomentsEngagementBundleSummary *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_48;
      }
    }

    startDate = [(BMMomentsEngagementBundleSummary *)self startDate];
    startDate2 = [v5 startDate];
    v15 = startDate2;
    if (startDate == startDate2)
    {
    }

    else
    {
      startDate3 = [(BMMomentsEngagementBundleSummary *)self startDate];
      startDate4 = [v5 startDate];
      v18 = [startDate3 isEqual:startDate4];

      if (!v18)
      {
        goto LABEL_48;
      }
    }

    endDate = [(BMMomentsEngagementBundleSummary *)self endDate];
    endDate2 = [v5 endDate];
    v21 = endDate2;
    if (endDate == endDate2)
    {
    }

    else
    {
      endDate3 = [(BMMomentsEngagementBundleSummary *)self endDate];
      endDate4 = [v5 endDate];
      v24 = [endDate3 isEqual:endDate4];

      if (!v24)
      {
        goto LABEL_48;
      }
    }

    interfaceType = [(BMMomentsEngagementBundleSummary *)self interfaceType];
    if (interfaceType != [v5 interfaceType])
    {
      goto LABEL_48;
    }

    if (-[BMMomentsEngagementBundleSummary hasRankingScore](self, "hasRankingScore") || [v5 hasRankingScore])
    {
      if (![(BMMomentsEngagementBundleSummary *)self hasRankingScore])
      {
        goto LABEL_48;
      }

      if (![v5 hasRankingScore])
      {
        goto LABEL_48;
      }

      [(BMMomentsEngagementBundleSummary *)self rankingScore];
      v27 = v26;
      [v5 rankingScore];
      if (v27 != v28)
      {
        goto LABEL_48;
      }
    }

    attachedPhotoAssets = [(BMMomentsEngagementBundleSummary *)self attachedPhotoAssets];
    attachedPhotoAssets2 = [v5 attachedPhotoAssets];
    v31 = attachedPhotoAssets2;
    if (attachedPhotoAssets == attachedPhotoAssets2)
    {
    }

    else
    {
      attachedPhotoAssets3 = [(BMMomentsEngagementBundleSummary *)self attachedPhotoAssets];
      attachedPhotoAssets4 = [v5 attachedPhotoAssets];
      v34 = [attachedPhotoAssets3 isEqual:attachedPhotoAssets4];

      if (!v34)
      {
        goto LABEL_48;
      }
    }

    bundleInterfaceType = [(BMMomentsEngagementBundleSummary *)self bundleInterfaceType];
    bundleInterfaceType2 = [v5 bundleInterfaceType];
    v37 = bundleInterfaceType2;
    if (bundleInterfaceType == bundleInterfaceType2)
    {
    }

    else
    {
      bundleInterfaceType3 = [(BMMomentsEngagementBundleSummary *)self bundleInterfaceType];
      bundleInterfaceType4 = [v5 bundleInterfaceType];
      v40 = [bundleInterfaceType3 isEqual:bundleInterfaceType4];

      if (!v40)
      {
        goto LABEL_48;
      }
    }

    bundleEvergreenType = [(BMMomentsEngagementBundleSummary *)self bundleEvergreenType];
    bundleEvergreenType2 = [v5 bundleEvergreenType];
    v43 = bundleEvergreenType2;
    if (bundleEvergreenType == bundleEvergreenType2)
    {
    }

    else
    {
      bundleEvergreenType3 = [(BMMomentsEngagementBundleSummary *)self bundleEvergreenType];
      bundleEvergreenType4 = [v5 bundleEvergreenType];
      v46 = [bundleEvergreenType3 isEqual:bundleEvergreenType4];

      if (!v46)
      {
        goto LABEL_48;
      }
    }

    bundleSubType = [(BMMomentsEngagementBundleSummary *)self bundleSubType];
    if (bundleSubType == [v5 bundleSubType])
    {
      bundleSuperType = [(BMMomentsEngagementBundleSummary *)self bundleSuperType];
      if (bundleSuperType == [v5 bundleSuperType])
      {
        if (!-[BMMomentsEngagementBundleSummary hasBundleGoodnessScore](self, "hasBundleGoodnessScore") && ![v5 hasBundleGoodnessScore] || -[BMMomentsEngagementBundleSummary hasBundleGoodnessScore](self, "hasBundleGoodnessScore") && objc_msgSend(v5, "hasBundleGoodnessScore") && (-[BMMomentsEngagementBundleSummary bundleGoodnessScore](self, "bundleGoodnessScore"), v50 = v49, objc_msgSend(v5, "bundleGoodnessScore"), v50 == v51))
        {
          if (!-[BMMomentsEngagementBundleSummary hasOrdinalRankInRecommendedTab](self, "hasOrdinalRankInRecommendedTab") && ![v5 hasOrdinalRankInRecommendedTab] || -[BMMomentsEngagementBundleSummary hasOrdinalRankInRecommendedTab](self, "hasOrdinalRankInRecommendedTab") && objc_msgSend(v5, "hasOrdinalRankInRecommendedTab") && (v52 = -[BMMomentsEngagementBundleSummary ordinalRankInRecommendedTab](self, "ordinalRankInRecommendedTab"), v52 == objc_msgSend(v5, "ordinalRankInRecommendedTab")))
          {
            visibilityCategoryForUI = [(BMMomentsEngagementBundleSummary *)self visibilityCategoryForUI];
            if (visibilityCategoryForUI == [v5 visibilityCategoryForUI])
            {
              assets = [(BMMomentsEngagementBundleSummary *)self assets];
              assets2 = [v5 assets];
              if (assets == assets2)
              {
                v12 = 1;
              }

              else
              {
                assets3 = [(BMMomentsEngagementBundleSummary *)self assets];
                assets4 = [v5 assets];
                v12 = [assets3 isEqual:assets4];
              }

              goto LABEL_49;
            }
          }
        }
      }
    }

LABEL_48:
    v12 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v12 = 0;
LABEL_50:

  return v12;
}

- (NSDate)endDate
{
  if (self->_hasRaw_endDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
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
  v57[14] = *MEMORY[0x1E69E9840];
  identifier = [(BMMomentsEngagementBundleSummary *)self identifier];
  jsonDictionary = [identifier jsonDictionary];

  startDate = [(BMMomentsEngagementBundleSummary *)self startDate];
  if (startDate)
  {
    v6 = MEMORY[0x1E696AD98];
    startDate2 = [(BMMomentsEngagementBundleSummary *)self startDate];
    [startDate2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  endDate = [(BMMomentsEngagementBundleSummary *)self endDate];
  if (endDate)
  {
    v10 = MEMORY[0x1E696AD98];
    endDate2 = [(BMMomentsEngagementBundleSummary *)self endDate];
    [endDate2 timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementBundleSummary interfaceType](self, "interfaceType")}];
  if (![(BMMomentsEngagementBundleSummary *)self hasRankingScore]|| ([(BMMomentsEngagementBundleSummary *)self rankingScore], fabs(v14) == INFINITY))
  {
    v55 = 0;
  }

  else
  {
    [(BMMomentsEngagementBundleSummary *)self rankingScore];
    v15 = MEMORY[0x1E696AD98];
    [(BMMomentsEngagementBundleSummary *)self rankingScore];
    v55 = [v15 numberWithDouble:?];
  }

  _attachedPhotoAssetsJSONArray = [(BMMomentsEngagementBundleSummary *)self _attachedPhotoAssetsJSONArray];
  bundleInterfaceType = [(BMMomentsEngagementBundleSummary *)self bundleInterfaceType];
  bundleEvergreenType = [(BMMomentsEngagementBundleSummary *)self bundleEvergreenType];
  v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementBundleSummary bundleSubType](self, "bundleSubType")}];
  v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementBundleSummary bundleSuperType](self, "bundleSuperType")}];
  if (![(BMMomentsEngagementBundleSummary *)self hasBundleGoodnessScore]|| ([(BMMomentsEngagementBundleSummary *)self bundleGoodnessScore], fabs(v16) == INFINITY))
  {
    v49 = 0;
  }

  else
  {
    [(BMMomentsEngagementBundleSummary *)self bundleGoodnessScore];
    v17 = MEMORY[0x1E696AD98];
    [(BMMomentsEngagementBundleSummary *)self bundleGoodnessScore];
    v49 = [v17 numberWithDouble:?];
  }

  if ([(BMMomentsEngagementBundleSummary *)self hasOrdinalRankInRecommendedTab])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementBundleSummary ordinalRankInRecommendedTab](self, "ordinalRankInRecommendedTab")}];
  }

  else
  {
    v18 = 0;
  }

  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementBundleSummary visibilityCategoryForUI](self, "visibilityCategoryForUI")}];
  _assetsJSONArray = [(BMMomentsEngagementBundleSummary *)self _assetsJSONArray];
  v56[0] = @"identifier";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null;
  v57[0] = null;
  v56[1] = @"startDate";
  null2 = v8;
  if (!v8)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null2;
  v57[1] = null2;
  v56[2] = @"endDate";
  null3 = v12;
  if (!v12)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null3;
  v57[2] = null3;
  v56[3] = @"interfaceType";
  null4 = v13;
  if (!v13)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null4;
  v57[3] = null4;
  v56[4] = @"rankingScore";
  null5 = v55;
  if (!v55)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v57[4] = null5;
  v56[5] = @"attachedPhotoAssets";
  null6 = _attachedPhotoAssetsJSONArray;
  if (!_attachedPhotoAssetsJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v57[5] = null6;
  v56[6] = @"bundleInterfaceType";
  null7 = bundleInterfaceType;
  if (!bundleInterfaceType)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v8;
  v57[6] = null7;
  v56[7] = @"bundleEvergreenType";
  null8 = bundleEvergreenType;
  if (!bundleEvergreenType)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null8;
  v57[7] = null8;
  v56[8] = @"bundleSubType";
  null9 = v51;
  if (!v51)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null7;
  v40 = null5;
  v57[8] = null9;
  v56[9] = @"bundleSuperType";
  null10 = v50;
  if (!v50)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v13;
  v57[9] = null10;
  v56[10] = @"bundleGoodnessScore";
  null11 = v49;
  if (!v49)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null6;
  v57[10] = null11;
  v56[11] = @"ordinalRankInRecommendedTab";
  null12 = v18;
  if (!v18)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v18;
  v57[11] = null12;
  v56[12] = @"visibilityCategoryForUI";
  null13 = v48;
  if (!v48)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v57[12] = null13;
  v56[13] = @"assets";
  null14 = _assetsJSONArray;
  if (!_assetsJSONArray)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v57[13] = null14;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:{14, v36}];
  if (!_assetsJSONArray)
  {
  }

  if (!v48)
  {
  }

  if (!v32)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!bundleEvergreenType)
  {
  }

  if (!bundleInterfaceType)
  {
  }

  if (!_attachedPhotoAssetsJSONArray)
  {
  }

  if (v55)
  {
    if (v46)
    {
      goto LABEL_66;
    }
  }

  else
  {

    if (v46)
    {
LABEL_66:
      if (v12)
      {
        goto LABEL_67;
      }

      goto LABEL_74;
    }
  }

  if (v12)
  {
LABEL_67:
    if (v47)
    {
      goto LABEL_68;
    }

LABEL_75:

    if (jsonDictionary)
    {
      goto LABEL_69;
    }

    goto LABEL_76;
  }

LABEL_74:

  if (!v47)
  {
    goto LABEL_75;
  }

LABEL_68:
  if (jsonDictionary)
  {
    goto LABEL_69;
  }

LABEL_76:

LABEL_69:

  return v45;
}

- (id)_assetsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assets = [(BMMomentsEngagementBundleSummary *)self assets];
  v5 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(assets);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_attachedPhotoAssetsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachedPhotoAssets = [(BMMomentsEngagementBundleSummary *)self attachedPhotoAssets];
  v5 = [attachedPhotoAssets countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(attachedPhotoAssets);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [attachedPhotoAssets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMomentsEngagementBundleSummary)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v235[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v184 = dictionaryCopy;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v234 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"identifier"];
        v235[0] = v10;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v235 forKeys:&v234 count:1];
        v22 = v20;
        v9 = v21;
        v12 = 0;
        *error = [v19 initWithDomain:v22 code:2 userInfo:v21];
        goto LABEL_190;
      }

      v12 = 0;
      goto LABEL_191;
    }

    v9 = v6;
    v197 = 0;
    v10 = [[BMMomentsEngagementSuggestionIdentifier alloc] initWithJSONDictionary:v9 error:&v197];
    v11 = v197;
    if (v11)
    {
      if (error)
      {
        v11 = v11;
        *error = v11;
      }

      v12 = 0;
      goto LABEL_190;
    }

    v182 = v10;
  }

  else
  {
    v182 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
  v179 = v7;
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E695DF00];
      v14 = v8;
      v15 = [v13 alloc];
      [v14 doubleValue];
      v17 = v16;

      v18 = [v15 initWithTimeIntervalSince1970:v17];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v9 = [v23 dateFromString:v8];

        goto LABEL_19;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v74 = objc_alloc(MEMORY[0x1E696ABC0]);
          v75 = *MEMORY[0x1E698F240];
          v232 = *MEMORY[0x1E696A578];
          errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
          v233 = errorCopy;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
          v76 = [v74 initWithDomain:v75 code:2 userInfo:v24];
          v9 = 0;
          v12 = 0;
          *error = v76;
          v10 = v182;
          goto LABEL_188;
        }

        v9 = 0;
        v12 = 0;
        v10 = v182;
        goto LABEL_189;
      }

      v18 = v8;
    }

    v9 = v18;
  }

  else
  {
    v9 = 0;
  }

LABEL_19:
  v24 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
  v180 = v9;
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = MEMORY[0x1E695DF00];
      v27 = v24;
      v28 = [v26 alloc];
      [v27 doubleValue];
      v30 = v29;

      v177 = [v28 initWithTimeIntervalSince1970:v30];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v177 = [v32 dateFromString:v24];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy = error;
          if (error)
          {
            v77 = objc_alloc(MEMORY[0x1E696ABC0]);
            v78 = *MEMORY[0x1E698F240];
            v230 = *MEMORY[0x1E696A578];
            v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
            v231 = v178;
            v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
            v80 = v77;
            v25 = v79;
            v81 = v78;
            v9 = v180;
            errorCopy = 0;
            v12 = 0;
            *error = [v80 initWithDomain:v81 code:2 userInfo:v79];
            goto LABEL_186;
          }

          v12 = 0;
          v10 = v182;
          goto LABEL_188;
        }

        v177 = v24;
      }
    }
  }

  else
  {
    v177 = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"interfaceType"];
  selfCopy = self;
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v31 = v24;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v178 = v25;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v228 = *MEMORY[0x1E696A578];
          v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interfaceType"];
          v229 = v175;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
          v71 = v69;
          v9 = v180;
          v178 = 0;
          v12 = 0;
          *error = [v68 initWithDomain:v71 code:2 userInfo:v70];
          v24 = v31;
          errorCopy = v177;
          goto LABEL_185;
        }

        v178 = 0;
        v12 = 0;
        v10 = v182;
        errorCopy = v177;
        goto LABEL_187;
      }

      v178 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementBundleInterfaceTypeFromString(v25)];
    }
  }

  else
  {
    v178 = 0;
  }

  v33 = [dictionaryCopy objectForKeyedSubscript:@"rankingScore"];
  v172 = v25;
  v173 = v33;
  if (v33 && (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v50 = v25;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v226 = *MEMORY[0x1E696A578];
        v53 = objc_alloc(MEMORY[0x1E696AEC0]);
        v151 = objc_opt_class();
        v54 = v53;
        v9 = v180;
        v35 = [v54 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v151, @"rankingScore"];
        v227 = v35;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
        v56 = v51;
        v25 = v50;
        v186 = v55;
        v175 = 0;
        v12 = 0;
        *error = [v56 initWithDomain:v52 code:2 userInfo:?];
        errorCopy = v177;

        goto LABEL_183;
      }

      v175 = 0;
      v12 = 0;
      errorCopy = v177;
      goto LABEL_184;
    }

    v175 = v34;
  }

  else
  {
    v175 = 0;
  }

  v35 = [dictionaryCopy objectForKeyedSubscript:@"attachedPhotoAssets"];
  null = [MEMORY[0x1E695DFB0] null];
  v37 = [v35 isEqual:null];

  v176 = v6;
  if (v37)
  {

    v35 = 0;
  }

  else if (v35)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v224 = *MEMORY[0x1E696A578];
        v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attachedPhotoAssets"];
        v225 = v185;
        v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
        v12 = 0;
        *error = [v66 initWithDomain:v67 code:2 userInfo:v65];
        v9 = v180;
        goto LABEL_72;
      }

      v12 = 0;
      v9 = v180;
      errorCopy = v177;
      v25 = v172;
      goto LABEL_183;
    }
  }

  v185 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v35 = v35;
  v38 = [v35 countByEnumeratingWithState:&v193 objects:v223 count:16];
  if (!v38)
  {
LABEL_50:

    v43 = [v184 objectForKeyedSubscript:@"bundleInterfaceType"];
    if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v9 = v180;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
          v83 = *MEMORY[0x1E698F240];
          v217 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleInterfaceType"];
          v218 = v49;
          v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
          v84 = [v82 initWithDomain:v83 code:2 userInfo:?];
          v65 = 0;
          v12 = 0;
          *error = v84;
          errorCopy = v177;
          v25 = v172;

          goto LABEL_180;
        }

        v65 = 0;
        v12 = 0;
        errorCopy = v177;
        v25 = v172;
LABEL_181:

        goto LABEL_182;
      }

      v165 = v43;
    }

    else
    {
      v165 = 0;
    }

    v25 = v172;
    v47 = [v184 objectForKeyedSubscript:@"bundleEvergreenType"];
    v166 = v47;
    if (v47)
    {
      v48 = v47;
      objc_opt_class();
      v9 = v180;
      if (objc_opt_isKindOfClass())
      {
        v49 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v49 = 0;
            v12 = 0;
            errorCopy = v177;
            v25 = v172;
            v65 = v165;
            goto LABEL_179;
          }

          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
          v86 = *MEMORY[0x1E698F240];
          v215 = *MEMORY[0x1E696A578];
          v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleEvergreenType"];
          v216 = v164;
          v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
          v49 = 0;
          v12 = 0;
          *error = [v85 initWithDomain:v86 code:2 userInfo:?];
          errorCopy = v177;
          v25 = v172;
          goto LABEL_196;
        }

        v49 = v48;
        v25 = v172;
      }
    }

    else
    {
      v49 = 0;
      v9 = v180;
    }

    v72 = [v184 objectForKeyedSubscript:@"bundleSubType"];
    v171 = v24;
    v163 = v72;
    if (!v72 || (v73 = v72, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v164 = 0;
      goto LABEL_104;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v164 = v73;
      goto LABEL_104;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = v25;
      v88 = MEMORY[0x1E696AD98];
      v89 = BMMomentsEventDataEventBundleBundleSubTypeFromString(v73);
      v90 = v88;
      v25 = v87;
      v164 = [v90 numberWithInt:v89];
      v9 = v180;
LABEL_104:
      v91 = [v184 objectForKeyedSubscript:@"bundleSuperType"];
      v161 = v91;
      if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v162 = 0;
        goto LABEL_111;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v162 = v92;
        goto LABEL_111;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v25;
        v94 = MEMORY[0x1E696AD98];
        v95 = BMMomentsEventDataEventBundleBundleSuperTypeFromString(v92);
        v96 = v94;
        v25 = v93;
        v162 = [v96 numberWithInt:v95];
        v9 = v180;
LABEL_111:
        v97 = [v184 objectForKeyedSubscript:@"bundleGoodnessScore"];
        v159 = v97;
        if (!v97 || (v98 = v97, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v160 = 0;
          goto LABEL_114;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v160 = v98;
LABEL_114:
          v99 = [v184 objectForKeyedSubscript:@"ordinalRankInRecommendedTab"];
          v157 = v99;
          if (!v99 || (v100 = v99, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v158 = 0;
            goto LABEL_117;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v158 = v100;
LABEL_117:
            v101 = [v184 objectForKeyedSubscript:@"visibilityCategoryForUI"];
            v155 = v101;
            if (!v101 || (v102 = v101, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v156 = 0;
LABEL_132:
              v111 = [v184 objectForKeyedSubscript:@"assets"];
              null2 = [MEMORY[0x1E695DFB0] null];
              v113 = [v111 isEqual:null2];

              v6 = v176;
              if (v113)
              {

                v111 = 0;
LABEL_136:
                v114 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v111, "count")}];
                v188 = 0u;
                v189 = 0u;
                v190 = 0u;
                v191 = 0u;
                obj = v111;
                v115 = [obj countByEnumeratingWithState:&v188 objects:v202 count:16];
                if (!v115)
                {
                  goto LABEL_146;
                }

                v116 = v115;
                v117 = *v189;
                v169 = v114;
LABEL_138:
                v118 = 0;
                while (1)
                {
                  if (*v189 != v117)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v119 = *(*(&v188 + 1) + 8 * v118);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    break;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v9 = v180;
                    v24 = v171;
                    errorCopy = v177;
                    errorCopy3 = error;
                    v65 = v165;
                    if (!error)
                    {
                      goto LABEL_156;
                    }

                    v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v129 = *MEMORY[0x1E698F240];
                    v198 = *MEMORY[0x1E696A578];
                    v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assets"];
                    v199 = v120;
                    v130 = MEMORY[0x1E695DF20];
                    v131 = &v199;
                    v132 = &v198;
                    goto LABEL_151;
                  }

                  v120 = v119;
                  v121 = [BMMomentsEngagementBundleSummarySuggestionAsset alloc];
                  v187 = 0;
                  v122 = [(BMMomentsEngagementBundleSummarySuggestionAsset *)v121 initWithJSONDictionary:v120 error:&v187];
                  v123 = v187;
                  if (v123)
                  {
                    v133 = v123;
                    if (error)
                    {
                      v135 = v123;
                      *error = v133;
                    }

                    v9 = v180;
                    v24 = v171;
                    errorCopy = v177;
                    v65 = v165;
LABEL_155:

                    v6 = v176;
LABEL_156:

                    v12 = 0;
                    v127 = v169;
                    goto LABEL_172;
                  }

                  [v169 addObject:v122];

                  ++v118;
                  v6 = v176;
                  if (v116 == v118)
                  {
                    v116 = [obj countByEnumeratingWithState:&v188 objects:v202 count:16];
                    v114 = v169;
                    if (v116)
                    {
                      goto LABEL_138;
                    }

LABEL_146:

                    intValue = [v178 intValue];
                    intValue2 = [v164 intValue];
                    intValue3 = [v162 intValue];
                    LODWORD(v153) = [v156 intValue];
                    v152 = __PAIR64__(intValue3, intValue2);
                    v65 = v165;
                    v9 = v180;
                    errorCopy = v177;
                    v12 = [(BMMomentsEngagementBundleSummary *)selfCopy initWithIdentifier:v182 startDate:v180 endDate:v177 interfaceType:intValue rankingScore:v175 attachedPhotoAssets:v185 bundleInterfaceType:v165 bundleEvergreenType:v49 bundleSubType:v152 bundleSuperType:v160 bundleGoodnessScore:v158 ordinalRankInRecommendedTab:v153 visibilityCategoryForUI:v114 assets:?];
                    selfCopy = v12;
                    v127 = v114;
                    v24 = v171;
LABEL_172:

                    v25 = v172;
LABEL_173:

LABEL_174:
LABEL_175:

LABEL_176:
LABEL_177:

LABEL_178:
LABEL_179:

LABEL_180:
                    goto LABEL_181;
                  }
                }

                v9 = v180;
                v24 = v171;
                errorCopy = v177;
                errorCopy3 = error;
                v65 = v165;
                if (!error)
                {
                  goto LABEL_156;
                }

                v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                v129 = *MEMORY[0x1E698F240];
                v200 = *MEMORY[0x1E696A578];
                v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assets"];
                v201 = v120;
                v130 = MEMORY[0x1E695DF20];
                v131 = &v201;
                v132 = &v200;
LABEL_151:
                v133 = [v130 dictionaryWithObjects:v131 forKeys:v132 count:1];
                v134 = v129;
                v65 = v165;
                *errorCopy3 = [v154 initWithDomain:v134 code:2 userInfo:v133];
                goto LABEL_155;
              }

              if (!v111)
              {
                goto LABEL_136;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_136;
              }

              obj = v111;
              if (!error)
              {
                v12 = 0;
                errorCopy = v177;
                v25 = v172;
                v65 = v165;
                goto LABEL_173;
              }

              v181 = objc_alloc(MEMORY[0x1E696ABC0]);
              v136 = *MEMORY[0x1E698F240];
              v203 = *MEMORY[0x1E696A578];
              v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assets"];
              v204 = v127;
              v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
              *error = [v181 initWithDomain:v136 code:2 userInfo:v137];

              v12 = 0;
LABEL_171:
              errorCopy = v177;
              v65 = v165;
              goto LABEL_172;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v156 = v102;
              goto LABEL_132;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v156 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementBundleSummaryVisibilityCategoryForUIFromString(v102)];
              v9 = v180;
              goto LABEL_132;
            }

            if (error)
            {
              v148 = objc_alloc(MEMORY[0x1E696ABC0]);
              v149 = *MEMORY[0x1E698F240];
              v205 = *MEMORY[0x1E696A578];
              obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"visibilityCategoryForUI"];
              v206 = obj;
              v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
              v156 = 0;
              v12 = 0;
              *error = [v148 initWithDomain:v149 code:2 userInfo:v127];
              v6 = v176;
              v9 = v180;
              goto LABEL_171;
            }

            v156 = 0;
            v12 = 0;
            v6 = v176;
            errorCopy = v177;
            v9 = v180;
            v25 = v172;
LABEL_200:
            v65 = v165;
            goto LABEL_174;
          }

          if (error)
          {
            v107 = objc_alloc(MEMORY[0x1E696ABC0]);
            v108 = *MEMORY[0x1E698F240];
            v207 = *MEMORY[0x1E696A578];
            v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"ordinalRankInRecommendedTab"];
            v208 = v156;
            v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
            v110 = v107;
            v25 = v172;
            v155 = v109;
            v158 = 0;
            v12 = 0;
            *error = [v110 initWithDomain:v108 code:2 userInfo:?];
            v6 = v176;
            errorCopy = v177;
            goto LABEL_200;
          }

          v158 = 0;
          v12 = 0;
LABEL_193:
          v6 = v176;
          errorCopy = v177;
          v65 = v165;
          goto LABEL_175;
        }

        if (error)
        {
          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
          v104 = *MEMORY[0x1E698F240];
          v209 = *MEMORY[0x1E696A578];
          v158 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleGoodnessScore"];
          v210 = v158;
          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
          v106 = v103;
          v25 = v172;
          v157 = v105;
          v160 = 0;
          v12 = 0;
          *error = [v106 initWithDomain:v104 code:2 userInfo:?];
          goto LABEL_193;
        }

        v160 = 0;
        v12 = 0;
        v6 = v176;
LABEL_168:
        errorCopy = v177;
        v65 = v165;
        goto LABEL_176;
      }

      if (error)
      {
        v143 = v25;
        v144 = objc_alloc(MEMORY[0x1E696ABC0]);
        v145 = *MEMORY[0x1E698F240];
        v211 = *MEMORY[0x1E696A578];
        v160 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleSuperType"];
        v212 = v160;
        v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
        v147 = v144;
        v25 = v143;
        v159 = v146;
        v162 = 0;
        v12 = 0;
        *error = [v147 initWithDomain:v145 code:2 userInfo:?];
        v9 = v180;
        goto LABEL_168;
      }

      v162 = 0;
      v12 = 0;
LABEL_198:
      errorCopy = v177;
      v9 = v180;
      v65 = v165;
      goto LABEL_177;
    }

    if (error)
    {
      v138 = v25;
      v139 = objc_alloc(MEMORY[0x1E696ABC0]);
      v140 = *MEMORY[0x1E698F240];
      v213 = *MEMORY[0x1E696A578];
      v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleSubType"];
      v214 = v162;
      v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
      v142 = v139;
      v25 = v138;
      v161 = v141;
      v164 = 0;
      v12 = 0;
      *error = [v142 initWithDomain:v140 code:2 userInfo:?];
      goto LABEL_198;
    }

    v164 = 0;
    v12 = 0;
    errorCopy = v177;
    v9 = v180;
LABEL_196:
    v65 = v165;
    goto LABEL_178;
  }

  v39 = v38;
  v40 = *v194;
  v170 = v24;
LABEL_42:
  v41 = 0;
  while (1)
  {
    if (*v194 != v40)
    {
      objc_enumerationMutation(v35);
    }

    v42 = *(*(&v193 + 1) + 8 * v41);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy5 = error;
      if (!error)
      {
        goto LABEL_71;
      }

      v59 = objc_alloc(MEMORY[0x1E696ABC0]);
      v60 = *MEMORY[0x1E698F240];
      v219 = *MEMORY[0x1E696A578];
      v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attachedPhotoAssets"];
      v220 = v43;
      v61 = MEMORY[0x1E695DF20];
      v62 = &v220;
      v63 = &v219;
LABEL_64:
      v49 = [v61 dictionaryWithObjects:v62 forKeys:v63 count:1];
      v12 = 0;
      *errorCopy5 = [v59 initWithDomain:v60 code:2 userInfo:v49];
LABEL_68:
      v65 = v35;
      errorCopy = v177;
      v9 = v180;
      v24 = v170;
      v25 = v172;
      goto LABEL_180;
    }

    v43 = v42;
    v44 = [BMMomentsEngagementPhotosAssets alloc];
    v192 = 0;
    v45 = [(BMMomentsEngagementPhotosAssets *)v44 initWithJSONDictionary:v43 error:&v192];
    v46 = v192;
    if (v46)
    {
      v49 = v46;
      if (error)
      {
        v64 = v46;
        *error = v49;
      }

      v12 = 0;
      goto LABEL_68;
    }

    [v185 addObject:v45];

    if (v39 == ++v41)
    {
      v39 = [v35 countByEnumeratingWithState:&v193 objects:v223 count:16];
      v24 = v170;
      if (!v39)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }
  }

  errorCopy5 = error;
  if (error)
  {
    v59 = objc_alloc(MEMORY[0x1E696ABC0]);
    v60 = *MEMORY[0x1E698F240];
    v221 = *MEMORY[0x1E696A578];
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attachedPhotoAssets"];
    v222 = v43;
    v61 = MEMORY[0x1E695DF20];
    v62 = &v222;
    v63 = &v221;
    goto LABEL_64;
  }

LABEL_71:
  v12 = 0;
  v65 = v35;
  v9 = v180;
  v24 = v170;
LABEL_72:
  errorCopy = v177;
  v25 = v172;
LABEL_182:

  self = selfCopy;
LABEL_183:

LABEL_184:
  v70 = v173;
LABEL_185:

LABEL_186:
  v10 = v182;
LABEL_187:

LABEL_188:
LABEL_189:

LABEL_190:
LABEL_191:

  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementBundleSummary *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    v25 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementSuggestionIdentifier *)self->_identifier writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasRaw_startDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endDate)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasRankingScore)
  {
    PBDataWriterWriteFloatField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_attachedPhotoAssets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v25 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  if (self->_bundleInterfaceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleEvergreenType)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasBundleGoodnessScore)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasOrdinalRankInRecommendedTab)
  {
    PBDataWriterWriteInt32Field();
  }

  PBDataWriterWriteUint32Field();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_assets;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        v25 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{toCopy, v17}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v13);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v80.receiver = self;
  v80.super_class = BMMomentsEngagementBundleSummary;
  v5 = [(BMEventBase *)&v80 init];
  if (!v5)
  {
    goto LABEL_124;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v81) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v81) & 0x7F) << v9;
        if ((LOBYTE(v81) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      switch((v16 >> 3))
      {
        case 1u:
          v81 = 0.0;
          v82 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_126;
          }

          v17 = [[BMMomentsEngagementSuggestionIdentifier alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_126;
          }

          identifier = v5->_identifier;
          v5->_identifier = v17;

          PBReaderRecallMark();
          goto LABEL_121;
        case 2u:
          v5->_hasRaw_startDate = 1;
          v81 = 0.0;
          v49 = [fromCopy position] + 8;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 8, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v67 = v81;
          v68 = 24;
          goto LABEL_120;
        case 3u:
          v5->_hasRaw_endDate = 1;
          v81 = 0.0;
          v40 = [fromCopy position] + 8;
          if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 8, v41 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v67 = v81;
          v68 = 40;
          goto LABEL_120;
        case 4u:
          v42 = 0;
          v43 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v81) = 0;
            v44 = [fromCopy position] + 1;
            if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 |= (LOBYTE(v81) & 0x7F) << v42;
            if ((LOBYTE(v81) & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v34 = v43++ > 8;
            if (v34)
            {
              goto LABEL_105;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v30 > 0xF)
          {
LABEL_105:
            LODWORD(v30) = 0;
          }

          v65 = 56;
          goto LABEL_107;
        case 5u:
          v5->_hasRankingScore = 1;
          LODWORD(v81) = 0;
          v26 = [fromCopy position] + 4;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 4, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v67 = *&v81;
          v68 = 88;
          goto LABEL_120;
        case 6u:
          v81 = 0.0;
          v82 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_126;
          }

          v51 = [[BMMomentsEngagementPhotosAssets alloc] initByReadFrom:fromCopy];
          if (!v51)
          {
            goto LABEL_126;
          }

          v52 = v51;
          v53 = v6;
          goto LABEL_74;
        case 7u:
          v47 = PBReaderReadString();
          v48 = 104;
          goto LABEL_76;
        case 8u:
          v47 = PBReaderReadString();
          v48 = 112;
LABEL_76:
          v55 = *(&v5->super.super.isa + v48);
          *(&v5->super.super.isa + v48) = v47;

          goto LABEL_121;
        case 9u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          while (1)
          {
            LOBYTE(v81) = 0;
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v60 |= (LOBYTE(v81) & 0x7F) << v58;
            if ((LOBYTE(v81) & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v15 = v59++ >= 9;
            if (v15)
            {
              v64 = 0;
              goto LABEL_111;
            }
          }

          if ([fromCopy hasError])
          {
            v64 = 0;
          }

          else
          {
            v64 = v60;
          }

LABEL_111:
          v5->_bundleSubType = BMMomentsEventDataEventBundleBundleSubTypeDecode(v64);
          goto LABEL_121;
        case 0xAu:
          v35 = 0;
          v36 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v81) = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 |= (LOBYTE(v81) & 0x7F) << v35;
            if ((LOBYTE(v81) & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v34 = v36++ > 8;
            if (v34)
            {
              goto LABEL_101;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v30 > 0xB)
          {
LABEL_101:
            LODWORD(v30) = 0;
          }

          v65 = 64;
          goto LABEL_107;
        case 0xBu:
          v5->_hasBundleGoodnessScore = 1;
          LODWORD(v81) = 0;
          v56 = [fromCopy position] + 4;
          if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 4, v57 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v67 = *&v81;
          v68 = 120;
LABEL_120:
          *(&v5->super.super.isa + v68) = v67;
          goto LABEL_121;
        case 0xCu:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasOrdinalRankInRecommendedTab = 1;
          while (1)
          {
            LOBYTE(v81) = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (LOBYTE(v81) & 0x7F) << v19;
            if ((LOBYTE(v81) & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v15 = v20++ >= 9;
            if (v15)
            {
              v25 = 0;
              goto LABEL_94;
            }
          }

          if ([fromCopy hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_94:
          v5->_ordinalRankInRecommendedTab = v25;
          goto LABEL_121;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          break;
        case 0xEu:
          v81 = 0.0;
          v82 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_126;
          }

          v54 = [[BMMomentsEngagementBundleSummarySuggestionAsset alloc] initByReadFrom:fromCopy];
          if (!v54)
          {
            goto LABEL_126;
          }

          v52 = v54;
          v53 = v7;
LABEL_74:
          [v53 addObject:v52];
          PBReaderRecallMark();

          goto LABEL_121;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_121;
          }

LABEL_126:

          goto LABEL_123;
      }

      while (1)
      {
        LOBYTE(v81) = 0;
        v31 = [fromCopy position] + 1;
        if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
        {
          data10 = [fromCopy data];
          [data10 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v30 |= (LOBYTE(v81) & 0x7F) << v28;
        if ((LOBYTE(v81) & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v34 = v29++ > 8;
        if (v34)
        {
          goto LABEL_97;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v30 > 4)
      {
LABEL_97:
        LODWORD(v30) = 0;
      }

      v65 = 72;
LABEL_107:
      *(&v5->super.super.isa + v65) = v30;
LABEL_121:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v73 = [v6 copy];
  attachedPhotoAssets = v5->_attachedPhotoAssets;
  v5->_attachedPhotoAssets = v73;

  v75 = [v7 copy];
  assets = v5->_assets;
  v5->_assets = v75;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_123:
    v78 = 0;
  }

  else
  {
LABEL_124:
    v78 = v5;
  }

  return v78;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMMomentsEngagementBundleSummary *)self identifier];
  startDate = [(BMMomentsEngagementBundleSummary *)self startDate];
  endDate = [(BMMomentsEngagementBundleSummary *)self endDate];
  v18 = BMMomentsEngagementBundleInterfaceTypeAsString([(BMMomentsEngagementBundleSummary *)self interfaceType]);
  v3 = MEMORY[0x1E696AD98];
  [(BMMomentsEngagementBundleSummary *)self rankingScore];
  v15 = [v3 numberWithDouble:?];
  attachedPhotoAssets = [(BMMomentsEngagementBundleSummary *)self attachedPhotoAssets];
  bundleInterfaceType = [(BMMomentsEngagementBundleSummary *)self bundleInterfaceType];
  bundleEvergreenType = [(BMMomentsEngagementBundleSummary *)self bundleEvergreenType];
  v7 = BMMomentsEventDataEventBundleBundleSubTypeAsString([(BMMomentsEngagementBundleSummary *)self bundleSubType]);
  v8 = BMMomentsEventDataEventBundleBundleSuperTypeAsString([(BMMomentsEngagementBundleSummary *)self bundleSuperType]);
  v9 = MEMORY[0x1E696AD98];
  [(BMMomentsEngagementBundleSummary *)self bundleGoodnessScore];
  v10 = [v9 numberWithDouble:?];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementBundleSummary ordinalRankInRecommendedTab](self, "ordinalRankInRecommendedTab")}];
  v12 = BMMomentsEngagementBundleSummaryVisibilityCategoryForUIAsString([(BMMomentsEngagementBundleSummary *)self visibilityCategoryForUI]);
  assets = [(BMMomentsEngagementBundleSummary *)self assets];
  v17 = [v16 initWithFormat:@"BMMomentsEngagementBundleSummary with identifier: %@, startDate: %@, endDate: %@, interfaceType: %@, rankingScore: %@, attachedPhotoAssets: %@, bundleInterfaceType: %@, bundleEvergreenType: %@, bundleSubType: %@, bundleSuperType: %@, bundleGoodnessScore: %@, ordinalRankInRecommendedTab: %@, visibilityCategoryForUI: %@, assets: %@", identifier, startDate, endDate, v18, v15, attachedPhotoAssets, bundleInterfaceType, bundleEvergreenType, v7, v8, v10, v11, v12, assets];

  return v17;
}

- (BMMomentsEngagementBundleSummary)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate interfaceType:(int)type rankingScore:(id)score attachedPhotoAssets:(id)assets bundleInterfaceType:(id)interfaceType bundleEvergreenType:(id)self0 bundleSubType:(int)self1 bundleSuperType:(int)self2 bundleGoodnessScore:(id)self3 ordinalRankInRecommendedTab:(id)self4 visibilityCategoryForUI:(int)self5 assets:(id)self6
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  scoreCopy = score;
  assetsCopy = assets;
  interfaceTypeCopy = interfaceType;
  evergreenTypeCopy = evergreenType;
  goodnessScoreCopy = goodnessScore;
  tabCopy = tab;
  v25 = a16;
  v42.receiver = self;
  v42.super_class = BMMomentsEngagementBundleSummary;
  v26 = [(BMEventBase *)&v42 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_identifier, identifier);
    if (dateCopy)
    {
      v26->_hasRaw_startDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v26->_hasRaw_startDate = 0;
      v27 = -1.0;
    }

    v26->_raw_startDate = v27;
    if (endDateCopy)
    {
      v26->_hasRaw_endDate = 1;
      [endDateCopy timeIntervalSince1970];
    }

    else
    {
      v26->_hasRaw_endDate = 0;
      v28 = -1.0;
    }

    v26->_raw_endDate = v28;
    v26->_interfaceType = type;
    if (scoreCopy)
    {
      v26->_hasRankingScore = 1;
      [scoreCopy floatValue];
      v30 = v29;
    }

    else
    {
      v26->_hasRankingScore = 0;
      v30 = -1.0;
    }

    v26->_rankingScore = v30;
    objc_storeStrong(&v26->_attachedPhotoAssets, assets);
    objc_storeStrong(&v26->_bundleInterfaceType, interfaceType);
    objc_storeStrong(&v26->_bundleEvergreenType, evergreenType);
    v26->_bundleSubType = subType;
    v26->_bundleSuperType = superType;
    if (goodnessScoreCopy)
    {
      v26->_hasBundleGoodnessScore = 1;
      [goodnessScoreCopy floatValue];
      v32 = v31;
    }

    else
    {
      v26->_hasBundleGoodnessScore = 0;
      v32 = -1.0;
    }

    v26->_bundleGoodnessScore = v32;
    if (tabCopy)
    {
      v26->_hasOrdinalRankInRecommendedTab = 1;
      intValue = [tabCopy intValue];
    }

    else
    {
      v26->_hasOrdinalRankInRecommendedTab = 0;
      intValue = -1;
    }

    v26->_ordinalRankInRecommendedTab = intValue;
    v26->_visibilityCategoryForUI = i;
    objc_storeStrong(&v26->_assets, a16);
  }

  return v26;
}

+ (id)protoFields
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:14 subMessageClass:objc_opt_class()];
  v18[0] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:2 type:0 subMessageClass:0];
  v18[1] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endDate" number:3 type:0 subMessageClass:0];
  v18[2] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interfaceType" number:4 type:4 subMessageClass:0];
  v18[3] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rankingScore" number:5 type:1 subMessageClass:0];
  v18[4] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachedPhotoAssets" number:6 type:14 subMessageClass:objc_opt_class()];
  v18[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterfaceType" number:7 type:13 subMessageClass:0];
  v18[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleEvergreenType" number:8 type:13 subMessageClass:0];
  v18[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSubType" number:9 type:4 subMessageClass:0];
  v18[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSuperType" number:10 type:4 subMessageClass:0];
  v18[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleGoodnessScore" number:11 type:1 subMessageClass:0];
  v18[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ordinalRankInRecommendedTab" number:12 type:2 subMessageClass:0];
  v18[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visibilityCategoryForUI" number:13 type:4 subMessageClass:0];
  v18[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assets" number:14 type:14 subMessageClass:objc_opt_class()];
  v18[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

+ (id)columns
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_451];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interfaceType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rankingScore" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attachedPhotoAssets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_453];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleInterfaceType" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleEvergreenType" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSubType" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSuperType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleGoodnessScore" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ordinalRankInRecommendedTab" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visibilityCategoryForUI" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_455];
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v2;
  v18[3] = v3;
  v18[4] = v13;
  v18[5] = v12;
  v18[6] = v4;
  v18[7] = v15;
  v18[8] = v5;
  v18[9] = v6;
  v18[10] = v14;
  v18[11] = v7;
  v18[12] = v8;
  v18[13] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

id __43__BMMomentsEngagementBundleSummary_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _assetsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMMomentsEngagementBundleSummary_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _attachedPhotoAssetsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMMomentsEngagementBundleSummary_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 identifier];
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

    v8 = [[BMMomentsEngagementBundleSummary alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end