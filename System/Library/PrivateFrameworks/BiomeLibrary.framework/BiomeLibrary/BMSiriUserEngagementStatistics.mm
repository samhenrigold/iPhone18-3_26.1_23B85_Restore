@interface BMSiriUserEngagementStatistics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriUserEngagementStatistics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriUserEngagementStatistics)initWithUserEngagementStatsMetadata:(id)metadata dailyAggregatedStats:(id)stats accumulatedAggregationStats:(id)aggregationStats;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_accumulatedAggregationStatsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriUserEngagementStatistics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    userEngagementStatsMetadata = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
    userEngagementStatsMetadata2 = [v5 userEngagementStatsMetadata];
    v8 = userEngagementStatsMetadata2;
    if (userEngagementStatsMetadata == userEngagementStatsMetadata2)
    {
    }

    else
    {
      userEngagementStatsMetadata3 = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
      userEngagementStatsMetadata4 = [v5 userEngagementStatsMetadata];
      v11 = [userEngagementStatsMetadata3 isEqual:userEngagementStatsMetadata4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    dailyAggregatedStats = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
    dailyAggregatedStats2 = [v5 dailyAggregatedStats];
    v15 = dailyAggregatedStats2;
    if (dailyAggregatedStats == dailyAggregatedStats2)
    {
    }

    else
    {
      dailyAggregatedStats3 = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
      dailyAggregatedStats4 = [v5 dailyAggregatedStats];
      v18 = [dailyAggregatedStats3 isEqual:dailyAggregatedStats4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    accumulatedAggregationStats = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
    accumulatedAggregationStats2 = [v5 accumulatedAggregationStats];
    if (accumulatedAggregationStats == accumulatedAggregationStats2)
    {
      v12 = 1;
    }

    else
    {
      accumulatedAggregationStats3 = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
      accumulatedAggregationStats4 = [v5 accumulatedAggregationStats];
      v12 = [accumulatedAggregationStats3 isEqual:accumulatedAggregationStats4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  userEngagementStatsMetadata = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
  jsonDictionary = [userEngagementStatsMetadata jsonDictionary];

  dailyAggregatedStats = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
  jsonDictionary2 = [dailyAggregatedStats jsonDictionary];

  _accumulatedAggregationStatsJSONArray = [(BMSiriUserEngagementStatistics *)self _accumulatedAggregationStatsJSONArray];
  v13[0] = @"userEngagementStatsMetadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"dailyAggregatedStats";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"accumulatedAggregationStats";
  null3 = _accumulatedAggregationStatsJSONArray;
  if (!_accumulatedAggregationStatsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (_accumulatedAggregationStatsJSONArray)
  {
    if (jsonDictionary2)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (jsonDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (jsonDictionary)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v11;
}

- (id)_accumulatedAggregationStatsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accumulatedAggregationStats = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
  v5 = [accumulatedAggregationStats countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accumulatedAggregationStats);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [accumulatedAggregationStats countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSiriUserEngagementStatistics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"userEngagementStatsMetadata"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v29 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userEngagementStatsMetadata"];
        v71[0] = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
        selfCopy3 = 0;
        *errorCopy = [v27 initWithDomain:v29 code:2 userInfo:v9];
        goto LABEL_50;
      }

      selfCopy3 = 0;
      goto LABEL_51;
    }

    v9 = v7;
    v60 = 0;
    v8 = [[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata alloc] initWithJSONDictionary:v9 error:&v60];
    v14 = v60;
    if (v14)
    {
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

LABEL_37:
      selfCopy3 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"dailyAggregatedStats"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v31 = *MEMORY[0x1E698F240];
      v68 = *MEMORY[0x1E696A578];
      v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dailyAggregatedStats"];
      v10 = v69;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      selfCopy3 = 0;
      *errorCopy2 = [v30 initWithDomain:v31 code:2 userInfo:v11];
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  v11 = v9;
  v59 = 0;
  v10 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initWithJSONDictionary:v11 error:&v59];
  v26 = v59;
  if (v26)
  {
    if (error)
    {
      v26 = v26;
      *error = v26;
    }

    goto LABEL_54;
  }

LABEL_7:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"accumulatedAggregationStats"];
  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:null];

  v53 = v7;
  if (!v13)
  {
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v50 = v10;
      selfCopy2 = self;
      errorCopy4 = error;
      v48 = v8;
      v49 = dictionaryCopy;
      goto LABEL_17;
    }

    if (error)
    {
      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"accumulatedAggregationStats"];
      v67 = v15;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v42 = v10;
      v44 = v43 = error;
      *v43 = [v52 initWithDomain:v41 code:2 userInfo:v44];
      v10 = v42;

      selfCopy3 = 0;
      goto LABEL_48;
    }

LABEL_54:
    selfCopy3 = 0;
    goto LABEL_49;
  }

  v50 = v10;
  selfCopy2 = self;
  errorCopy4 = error;
  v48 = v8;
  v49 = dictionaryCopy;

  v11 = 0;
LABEL_17:
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = v11;
  v16 = [v11 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = *v56;
  v45 = v9;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v56 != v18)
      {
        objc_enumerationMutation(v11);
      }

      v20 = *(*(&v55 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v48;
        dictionaryCopy = v49;
        v32 = errorCopy4;
        if (errorCopy4)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"accumulatedAggregationStats"];
          v64 = v21;
          v35 = MEMORY[0x1E695DF20];
          v36 = &v64;
          v37 = &v63;
LABEL_42:
          v38 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
          *v32 = [v33 initWithDomain:v34 code:2 userInfo:v38];
LABEL_46:
        }

LABEL_47:

        selfCopy3 = 0;
        v10 = v50;
        self = selfCopy2;
        v9 = v45;
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v48;
        dictionaryCopy = v49;
        v32 = errorCopy4;
        if (errorCopy4)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v61 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"accumulatedAggregationStats"];
          v62 = v21;
          v35 = MEMORY[0x1E695DF20];
          v36 = &v62;
          v37 = &v61;
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v21 = v20;
      v22 = [BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc];
      v54 = 0;
      v23 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)v22 initWithJSONDictionary:v21 error:&v54];
      v24 = v54;
      if (v24)
      {
        v38 = v24;
        if (errorCopy4)
        {
          v39 = v24;
          *errorCopy4 = v38;
        }

        v8 = v48;
        dictionaryCopy = v49;
        goto LABEL_46;
      }

      [v15 addObject:v23];
    }

    v17 = [v11 countByEnumeratingWithState:&v55 objects:v65 count:16];
    v9 = v45;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v10 = v50;
  v8 = v48;
  self = [(BMSiriUserEngagementStatistics *)selfCopy2 initWithUserEngagementStatsMetadata:v48 dailyAggregatedStats:v50 accumulatedAggregationStats:v15];
  selfCopy3 = self;
  dictionaryCopy = v49;
LABEL_48:

  v7 = v53;
LABEL_49:

LABEL_50:
LABEL_51:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatistics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_userEngagementStatsMetadata)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self->_userEngagementStatsMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_dailyAggregatedStats)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self->_dailyAggregatedStats writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_accumulatedAggregationStats;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        v15 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{toCopy, v11}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMSiriUserEngagementStatistics;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_33;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v29 & 0x7F) << v8;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_33;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v29 = 0;
        v30 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_35;
        }

        v19 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initByReadFrom:fromCopy];
        if (!v19)
        {
          goto LABEL_35;
        }

        v20 = v19;
        [v6 addObject:v19];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 3)
        {
          v29 = 0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_35;
          }

          v17 = [[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_35;
          }

          v18 = 24;
LABEL_30:
          v21 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          PBReaderRecallMark();
          goto LABEL_32;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

LABEL_32:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_33;
      }
    }

    v29 = 0;
    v30 = 0;
    if (!PBReaderPlaceMark() || (v17 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initByReadFrom:fromCopy]) == 0)
    {
LABEL_35:

      goto LABEL_36;
    }

    v18 = 32;
    goto LABEL_30;
  }

LABEL_33:
  v23 = [v6 copy];
  accumulatedAggregationStats = v5->_accumulatedAggregationStats;
  v5->_accumulatedAggregationStats = v23;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_36:
    v26 = 0;
  }

  else
  {
LABEL_34:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  userEngagementStatsMetadata = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
  dailyAggregatedStats = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
  accumulatedAggregationStats = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
  v7 = [v3 initWithFormat:@"BMSiriUserEngagementStatistics with userEngagementStatsMetadata: %@, dailyAggregatedStats: %@, accumulatedAggregationStats: %@", userEngagementStatsMetadata, dailyAggregatedStats, accumulatedAggregationStats];

  return v7;
}

- (BMSiriUserEngagementStatistics)initWithUserEngagementStatsMetadata:(id)metadata dailyAggregatedStats:(id)stats accumulatedAggregationStats:(id)aggregationStats
{
  metadataCopy = metadata;
  statsCopy = stats;
  aggregationStatsCopy = aggregationStats;
  v14.receiver = self;
  v14.super_class = BMSiriUserEngagementStatistics;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_userEngagementStatsMetadata, metadata);
    objc_storeStrong(&v12->_dailyAggregatedStats, stats);
    objc_storeStrong(&v12->_accumulatedAggregationStats, aggregationStats);
  }

  return v12;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userEngagementStatsMetadata" number:3 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dailyAggregatedStats" number:1 type:14 subMessageClass:{objc_opt_class(), v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accumulatedAggregationStats" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userEngagementStatsMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_381];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dailyAggregatedStats_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_383];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"accumulatedAggregationStats_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_385];
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __41__BMSiriUserEngagementStatistics_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _accumulatedAggregationStatsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __41__BMSiriUserEngagementStatistics_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 dailyAggregatedStats];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __41__BMSiriUserEngagementStatistics_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 userEngagementStatsMetadata];
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

    v8 = [[BMSiriUserEngagementStatistics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end