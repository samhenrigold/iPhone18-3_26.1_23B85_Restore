@interface BMSiriUserEngagementStatisticsAccumulatedAggregationStats
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithAggregationStartTimestamp:(id)timestamp numberOfDaysAggregation:(id)aggregation aggregationStats:(id)stats cohortType:(id)type intendedRequestRatio:(id)ratio uesScore:(id)score mitigationAssetVersion:(id)version sdsdRetryCount:(id)self0;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_aggregationStatsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriUserEngagementStatisticsAccumulatedAggregationStats

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasAggregationStartTimestamp](self, "hasAggregationStartTimestamp") || [v5 hasAggregationStartTimestamp])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasAggregationStartTimestamp])
      {
        goto LABEL_40;
      }

      if (![v5 hasAggregationStartTimestamp])
      {
        goto LABEL_40;
      }

      [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
      v7 = v6;
      [v5 aggregationStartTimestamp];
      if (v7 != v8)
      {
        goto LABEL_40;
      }
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasNumberOfDaysAggregation](self, "hasNumberOfDaysAggregation") || [v5 hasNumberOfDaysAggregation])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasNumberOfDaysAggregation])
      {
        goto LABEL_40;
      }

      if (![v5 hasNumberOfDaysAggregation])
      {
        goto LABEL_40;
      }

      numberOfDaysAggregation = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self numberOfDaysAggregation];
      if (numberOfDaysAggregation != [v5 numberOfDaysAggregation])
      {
        goto LABEL_40;
      }
    }

    aggregationStats = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
    aggregationStats2 = [v5 aggregationStats];
    v12 = aggregationStats2;
    if (aggregationStats == aggregationStats2)
    {
    }

    else
    {
      aggregationStats3 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
      aggregationStats4 = [v5 aggregationStats];
      v15 = [aggregationStats3 isEqual:aggregationStats4];

      if (!v15)
      {
        goto LABEL_40;
      }
    }

    cohortType = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
    cohortType2 = [v5 cohortType];
    v19 = cohortType2;
    if (cohortType == cohortType2)
    {
    }

    else
    {
      cohortType3 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
      cohortType4 = [v5 cohortType];
      v22 = [cohortType3 isEqual:cohortType4];

      if (!v22)
      {
        goto LABEL_40;
      }
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasIntendedRequestRatio](self, "hasIntendedRequestRatio") || [v5 hasIntendedRequestRatio])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasIntendedRequestRatio])
      {
        goto LABEL_40;
      }

      if (![v5 hasIntendedRequestRatio])
      {
        goto LABEL_40;
      }

      [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
      v24 = v23;
      [v5 intendedRequestRatio];
      if (v24 != v25)
      {
        goto LABEL_40;
      }
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasUesScore](self, "hasUesScore") || [v5 hasUesScore])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasUesScore])
      {
        goto LABEL_40;
      }

      if (![v5 hasUesScore])
      {
        goto LABEL_40;
      }

      [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
      v27 = v26;
      [v5 uesScore];
      if (v27 != v28)
      {
        goto LABEL_40;
      }
    }

    mitigationAssetVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
    mitigationAssetVersion2 = [v5 mitigationAssetVersion];
    v31 = mitigationAssetVersion2;
    if (mitigationAssetVersion == mitigationAssetVersion2)
    {
    }

    else
    {
      mitigationAssetVersion3 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
      mitigationAssetVersion4 = [v5 mitigationAssetVersion];
      v34 = [mitigationAssetVersion3 isEqual:mitigationAssetVersion4];

      if (!v34)
      {
        goto LABEL_40;
      }
    }

    if (!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasSdsdRetryCount](self, "hasSdsdRetryCount") && ![v5 hasSdsdRetryCount])
    {
      v16 = 1;
      goto LABEL_41;
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasSdsdRetryCount](self, "hasSdsdRetryCount") && [v5 hasSdsdRetryCount])
    {
      sdsdRetryCount = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self sdsdRetryCount];
      v16 = sdsdRetryCount == [v5 sdsdRetryCount];
LABEL_41:

      goto LABEL_42;
    }

LABEL_40:
    v16 = 0;
    goto LABEL_41;
  }

  v16 = 0;
LABEL_42:

  return v16;
}

- (id)jsonDictionary
{
  v36[8] = *MEMORY[0x1E69E9840];
  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasAggregationStartTimestamp]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
    v4 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
    v5 = [v4 numberWithDouble:?];
  }

  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasNumberOfDaysAggregation])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats numberOfDaysAggregation](self, "numberOfDaysAggregation")}];
  }

  else
  {
    v6 = 0;
  }

  _aggregationStatsJSONArray = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self _aggregationStatsJSONArray];
  cohortType = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasIntendedRequestRatio]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
    v10 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
    v11 = [v10 numberWithDouble:?];
  }

  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasUesScore]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore], fabs(v12) == INFINITY))
  {
    v14 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
    v13 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
    v14 = [v13 numberWithDouble:?];
  }

  mitigationAssetVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasSdsdRetryCount])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats sdsdRetryCount](self, "sdsdRetryCount")}];
  }

  else
  {
    v16 = 0;
  }

  v35[0] = @"aggregationStartTimestamp";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v5;
  v30 = null;
  v36[0] = null;
  v35[1] = @"numberOfDaysAggregation";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v6;
  v29 = null2;
  v36[1] = null2;
  v35[2] = @"aggregationStats";
  null3 = _aggregationStatsJSONArray;
  if (!_aggregationStatsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = _aggregationStatsJSONArray;
  v28 = null3;
  v36[2] = null3;
  v35[3] = @"cohortType";
  null4 = cohortType;
  if (!cohortType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = cohortType;
  v36[3] = null4;
  v35[4] = @"intendedRequestRatio";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v36[4] = null5;
  v35[5] = @"uesScore";
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v36[5] = null6;
  v35[6] = @"mitigationAssetVersion";
  null7 = mitigationAssetVersion;
  if (!mitigationAssetVersion)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v36[6] = null7;
  v35[7] = @"sdsdRetryCount";
  null8 = v16;
  if (!v16)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v36[7] = null8;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:8];
  if (v16)
  {
    if (mitigationAssetVersion)
    {
      goto LABEL_37;
    }

LABEL_52:

    if (v14)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

  if (!mitigationAssetVersion)
  {
    goto LABEL_52;
  }

LABEL_37:
  if (v14)
  {
    goto LABEL_38;
  }

LABEL_53:

LABEL_38:
  if (!v22)
  {
  }

  if (!v31)
  {
  }

  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  return v26;
}

- (id)_aggregationStatsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  aggregationStats = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
  v5 = [aggregationStats countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(aggregationStats);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [aggregationStats countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v120[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"aggregationStartTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v119 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aggregationStartTimestamp"];
        v120[0] = v25;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1];
        v26 = [v23 initWithDomain:v24 code:2 userInfo:v9];
        v7 = 0;
        selfCopy3 = 0;
        *error = v26;
        goto LABEL_75;
      }

      v7 = 0;
      selfCopy3 = 0;
      goto LABEL_76;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"numberOfDaysAggregation"];
  v91 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v28 = v7;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v117 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfDaysAggregation"];
        v118 = v10;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v32 = v29;
        v7 = v28;
        v94 = v31;
        v33 = [v32 initWithDomain:v30 code:2 userInfo:?];
        v25 = 0;
        selfCopy3 = 0;
        *error = v33;

        goto LABEL_74;
      }

      v25 = 0;
      selfCopy3 = 0;
      goto LABEL_75;
    }

    v90 = v9;
  }

  else
  {
    v90 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"aggregationStats"];
  null = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:null];

  v89 = v6;
  if (v12)
  {
    selfCopy2 = self;
    v88 = v7;

    v10 = 0;
  }

  else
  {
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy3 = 0;
          v25 = v90;
          goto LABEL_74;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"aggregationStats"];
        v116 = v93;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v45 = [v43 initWithDomain:v44 code:2 userInfo:v22];
        selfCopy3 = 0;
        *error = v45;
LABEL_45:
        v25 = v90;
        goto LABEL_72;
      }
    }

    selfCopy2 = self;
    v88 = v7;
  }

  v93 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v10 = v10;
  v13 = [v10 countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = *v97;
  v84 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v97 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v96 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"aggregationStats"];
          v113 = v18;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v113;
          v39 = &v112;
LABEL_37:
          v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
          v41 = [v35 initWithDomain:v36 code:2 userInfo:v40];
          selfCopy3 = 0;
          *errorCopy2 = v41;
LABEL_41:
          v22 = v10;
          dictionaryCopy = v84;
          self = selfCopy2;
          v7 = v88;
          v6 = v89;
          v25 = v90;
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v110 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"aggregationStats"];
          v111 = v18;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v111;
          v39 = &v110;
          goto LABEL_37;
        }

LABEL_44:
        selfCopy3 = 0;
        v22 = v10;
        dictionaryCopy = v84;
        self = selfCopy2;
        v7 = v88;
        v6 = v89;
        goto LABEL_45;
      }

      v18 = v17;
      v19 = [BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats alloc];
      v95 = 0;
      v20 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)v19 initWithJSONDictionary:v18 error:&v95];
      v21 = v95;
      if (v21)
      {
        v40 = v21;
        if (error)
        {
          v42 = v21;
          *error = v40;
        }

        selfCopy3 = 0;
        goto LABEL_41;
      }

      [v93 addObject:v20];
    }

    v14 = [v10 countByEnumeratingWithState:&v96 objects:v114 count:16];
    dictionaryCopy = v84;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v18 = [dictionaryCopy objectForKeyedSubscript:@"cohortType"];
  if (!v18)
  {
    v22 = 0;
    self = selfCopy2;
    goto LABEL_49;
  }

  objc_opt_class();
  self = selfCopy2;
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    goto LABEL_49;
  }

  objc_opt_class();
  v7 = v88;
  if (objc_opt_isKindOfClass())
  {
    v22 = v18;
LABEL_49:
    v46 = [dictionaryCopy objectForKeyedSubscript:@"intendedRequestRatio"];
    v82 = v46;
    if (!v46)
    {
      v40 = 0;
      goto LABEL_55;
    }

    v47 = v46;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = 0;
LABEL_55:
      v48 = [dictionaryCopy objectForKeyedSubscript:@"uesScore"];
      v81 = v22;
      v77 = v48;
      if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v86 = 0;
LABEL_58:
        v50 = [dictionaryCopy objectForKeyedSubscript:@"mitigationAssetVersion"];
        v76 = v50;
        if (v50 && (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v78 = v51;
            goto LABEL_61;
          }

          if (error)
          {
            v80 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = *MEMORY[0x1E698F240];
            v102 = *MEMORY[0x1E696A578];
            v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mitigationAssetVersion"];
            v103 = v53;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
            v70 = [v80 initWithDomain:v69 code:2 userInfo:v52];
            v78 = 0;
            selfCopy3 = 0;
            *error = v70;
            v25 = v90;
            goto LABEL_65;
          }

          v78 = 0;
          selfCopy3 = 0;
          v25 = v90;
        }

        else
        {
          v78 = 0;
LABEL_61:
          v52 = [dictionaryCopy objectForKeyedSubscript:@"sdsdRetryCount"];
          if (!v52 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v53 = 0;
            v25 = v90;
            goto LABEL_64;
          }

          objc_opt_class();
          v25 = v90;
          if (objc_opt_isKindOfClass())
          {
            v53 = v52;
LABEL_64:
            self = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self initWithAggregationStartTimestamp:v88 numberOfDaysAggregation:v25 aggregationStats:v93 cohortType:v81 intendedRequestRatio:v40 uesScore:v86 mitigationAssetVersion:v78 sdsdRetryCount:v53];
            selfCopy3 = self;
          }

          else
          {
            if (error)
            {
              v75 = objc_alloc(MEMORY[0x1E696ABC0]);
              v74 = *MEMORY[0x1E698F240];
              v100 = *MEMORY[0x1E696A578];
              v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sdsdRetryCount"];
              v101 = v71;
              v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
              *error = [v75 initWithDomain:v74 code:2 userInfo:v72];
            }

            v53 = 0;
            selfCopy3 = 0;
          }

LABEL_65:

          v22 = v81;
        }

        v54 = v76;
LABEL_67:

        v7 = v88;
LABEL_68:

LABEL_69:
LABEL_70:

        goto LABEL_71;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v86 = v49;
        goto LABEL_58;
      }

      if (error)
      {
        v87 = objc_alloc(MEMORY[0x1E696ABC0]);
        v66 = *MEMORY[0x1E698F240];
        v104 = *MEMORY[0x1E696A578];
        v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"uesScore"];
        v105 = v78;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v67 = v66;
        v22 = v81;
        v68 = [v87 initWithDomain:v67 code:2 userInfo:v54];
        v86 = 0;
        selfCopy3 = 0;
        *error = v68;
        v25 = v90;
        goto LABEL_67;
      }

      v86 = 0;
      selfCopy3 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v47;
        goto LABEL_55;
      }

      if (!error)
      {
        v40 = 0;
        selfCopy3 = 0;
        v7 = v88;
        v25 = v90;
        goto LABEL_69;
      }

      v79 = objc_alloc(MEMORY[0x1E696ABC0]);
      v61 = *MEMORY[0x1E698F240];
      v106 = *MEMORY[0x1E696A578];
      v62 = v22;
      v63 = objc_alloc(MEMORY[0x1E696AEC0]);
      v73 = objc_opt_class();
      v64 = v63;
      v22 = v62;
      v86 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v73, @"intendedRequestRatio"];
      v107 = v86;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v65 = [v79 initWithDomain:v61 code:2 userInfo:?];
      v40 = 0;
      selfCopy3 = 0;
      *error = v65;
    }

    v7 = v88;
    v25 = v90;
    goto LABEL_68;
  }

  if (error)
  {
    v56 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57 = *MEMORY[0x1E698F240];
    v108 = *MEMORY[0x1E696A578];
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"cohortType"];
    v109 = v40;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
    v59 = v56;
    v7 = v88;
    v83 = v58;
    v60 = [v59 initWithDomain:v57 code:2 userInfo:?];
    v22 = 0;
    selfCopy3 = 0;
    *error = v60;
    v25 = v90;

    goto LABEL_70;
  }

  v22 = 0;
  selfCopy3 = 0;
  v25 = v90;
LABEL_71:

LABEL_72:
LABEL_74:

  v9 = v91;
LABEL_75:

LABEL_76:
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasAggregationStartTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasNumberOfDaysAggregation)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_aggregationStats;
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

  if (self->_cohortType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIntendedRequestRatio)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUesScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_mitigationAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSdsdRetryCount)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v53.receiver = self;
  v53.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStats;
  v5 = [(BMEventBase *)&v53 init];
  if (!v5)
  {
    goto LABEL_83;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_81;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v54[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v54[0] & 0x7F) << v8;
        if ((v54[0] & 0x80) == 0)
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
        goto LABEL_81;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        break;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v38 = PBReaderReadString();
          v39 = 56;
LABEL_61:
          v40 = *(&v5->super.super.isa + v39);
          *(&v5->super.super.isa + v39) = v38;

          goto LABEL_80;
        }

        if (v16 == 4)
        {
          v5->_hasIntendedRequestRatio = 1;
          v54[0] = 0;
          v21 = [fromCopy position] + 8;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v43 = v54[0];
          v44 = 64;
LABEL_79:
          *(&v5->super.super.isa + v44) = v43;
          goto LABEL_80;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_80;
      }

      if (v16 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasNumberOfDaysAggregation = 1;
        while (1)
        {
          LOBYTE(v54[0]) = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (v54[0] & 0x7F) << v30;
          if ((v54[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v14 = v31++ >= 9;
          if (v14)
          {
            v29 = 0;
            goto LABEL_67;
          }
        }

        if ([fromCopy hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }

LABEL_67:
        v41 = 28;
LABEL_72:
        *(&v5->super.super.isa + v41) = v29;
        goto LABEL_80;
      }

      if (v16 != 2)
      {
        goto LABEL_62;
      }

      v54[0] = 0;
      v54[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_85:

        goto LABEL_82;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_80:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_81;
      }
    }

    if (v16 > 6)
    {
      if (v16 == 7)
      {
        v38 = PBReaderReadString();
        v39 = 80;
        goto LABEL_61;
      }

      if (v16 == 8)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasSdsdRetryCount = 1;
        while (1)
        {
          LOBYTE(v54[0]) = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v54[0] & 0x7F) << v23;
          if ((v54[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v14 = v24++ >= 9;
          if (v14)
          {
            v29 = 0;
            goto LABEL_71;
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

LABEL_71:
        v41 = 32;
        goto LABEL_72;
      }
    }

    else
    {
      if (v16 == 5)
      {
        v5->_hasAggregationStartTimestamp = 1;
        v54[0] = 0;
        v36 = [fromCopy position] + 8;
        if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 8, v37 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v43 = v54[0];
        v44 = 40;
        goto LABEL_79;
      }

      if (v16 == 6)
      {
        v5->_hasUesScore = 1;
        v54[0] = 0;
        v19 = [fromCopy position] + 8;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v43 = v54[0];
        v44 = 72;
        goto LABEL_79;
      }
    }

    goto LABEL_62;
  }

LABEL_81:
  v48 = [v6 copy];
  aggregationStats = v5->_aggregationStats;
  v5->_aggregationStats = v48;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_82:
    v51 = 0;
  }

  else
  {
LABEL_83:
    v51 = v5;
  }

  return v51;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
  v5 = [v4 numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats numberOfDaysAggregation](self, "numberOfDaysAggregation")}];
  aggregationStats = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
  cohortType = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
  v12 = [v11 numberWithDouble:?];
  mitigationAssetVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats sdsdRetryCount](self, "sdsdRetryCount")}];
  v15 = [v3 initWithFormat:@"BMSiriUserEngagementStatisticsAccumulatedAggregationStats with aggregationStartTimestamp: %@, numberOfDaysAggregation: %@, aggregationStats: %@, cohortType: %@, intendedRequestRatio: %@, uesScore: %@, mitigationAssetVersion: %@, sdsdRetryCount: %@", v5, v6, aggregationStats, cohortType, v10, v12, mitigationAssetVersion, v14];

  return v15;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithAggregationStartTimestamp:(id)timestamp numberOfDaysAggregation:(id)aggregation aggregationStats:(id)stats cohortType:(id)type intendedRequestRatio:(id)ratio uesScore:(id)score mitigationAssetVersion:(id)version sdsdRetryCount:(id)self0
{
  timestampCopy = timestamp;
  aggregationCopy = aggregation;
  statsCopy = stats;
  typeCopy = type;
  ratioCopy = ratio;
  scoreCopy = score;
  versionCopy = version;
  countCopy = count;
  v31.receiver = self;
  v31.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStats;
  v22 = [(BMEventBase *)&v31 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v22->_hasAggregationStartTimestamp = 1;
      [timestampCopy doubleValue];
    }

    else
    {
      v22->_hasAggregationStartTimestamp = 0;
      v23 = -1.0;
    }

    v22->_aggregationStartTimestamp = v23;
    if (aggregationCopy)
    {
      v22->_hasNumberOfDaysAggregation = 1;
      intValue = [aggregationCopy intValue];
    }

    else
    {
      v22->_hasNumberOfDaysAggregation = 0;
      intValue = -1;
    }

    v22->_numberOfDaysAggregation = intValue;
    objc_storeStrong(&v22->_aggregationStats, stats);
    objc_storeStrong(&v22->_cohortType, type);
    if (ratioCopy)
    {
      v22->_hasIntendedRequestRatio = 1;
      [ratioCopy doubleValue];
    }

    else
    {
      v22->_hasIntendedRequestRatio = 0;
      v25 = -1.0;
    }

    v22->_intendedRequestRatio = v25;
    if (scoreCopy)
    {
      v22->_hasUesScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v22->_hasUesScore = 0;
      v26 = -1.0;
    }

    v22->_uesScore = v26;
    objc_storeStrong(&v22->_mitigationAssetVersion, version);
    if (countCopy)
    {
      v22->_hasSdsdRetryCount = 1;
      intValue2 = [countCopy intValue];
    }

    else
    {
      v22->_hasSdsdRetryCount = 0;
      intValue2 = -1;
    }

    v22->_sdsdRetryCount = intValue2;
  }

  return v22;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationStartTimestamp" number:5 type:0 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfDaysAggregation" number:1 type:2 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationStats" number:2 type:14 subMessageClass:objc_opt_class()];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cohortType" number:3 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intendedRequestRatio" number:4 type:0 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uesScore" number:6 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mitigationAssetVersion" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sdsdRetryCount" number:8 type:2 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregationStartTimestamp" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfDaysAggregation" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"aggregationStats_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_296_83964];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cohortType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intendedRequestRatio" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uesScore" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mitigationAssetVersion" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sdsdRetryCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v2;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

id __68__BMSiriUserEngagementStatisticsAccumulatedAggregationStats_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _aggregationStatsJSONArray];
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

    v8 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end