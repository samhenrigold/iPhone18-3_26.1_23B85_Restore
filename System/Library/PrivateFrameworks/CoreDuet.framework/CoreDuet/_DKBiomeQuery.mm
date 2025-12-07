@interface _DKBiomeQuery
+ (BOOL)canShimDuetStreamNamed:(id)named;
+ (id)biomeExclusiveStreamsFromEventStreams:(id)streams;
+ (id)deletionPredicateFromArray:(id)array;
+ (id)duetExclusiveStreamsFromEventStreams:(id)streams;
+ (id)eventStreamsFromArray:(id)array;
+ (id)eventStreamsFromPredicate:(id)predicate;
- (BOOL)prepareQuery:(id *)query;
- (_DKBiomeQuery)initWithDKEventQuery:(id)query;
- (_DKBiomeQuery)initWithDeletionArray:(id)array;
- (_DKBiomeQuery)initWithDeletionPredicate:(id)predicate;
- (_DKBiomeQuery)initWithEventStreams:(id)streams predicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset sortDescriptors:(id)descriptors resultType:(int64_t)type groupByProperties:(id)properties returnDistinctResults:(BOOL)self0 readMetadata:(BOOL)self1 excludedMetadataKeys:(id)self2;
- (id)_getCachedStreamForBiomeStreamIdentifier:(id)identifier;
- (id)_publisherForQueryReturningIndividualResults:(BOOL)results error:(id *)error;
- (id)_publisherForStreams:(id)streams;
- (id)bmdkEventStreams;
- (id)executeBiomeQueryError:(id *)error;
- (id)filterExcludedMetadataWithDKEvent:(id)event;
- (unint64_t)executeDeletionQuery:(id *)query;
- (void)_setBiomeStreamWithBlock:(id)block;
@end

@implementation _DKBiomeQuery

- (id)bmdkEventStreams
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_eventStreamNames;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v6 = *v25;
    v14 = v17;
    *&v5 = 138412290;
    v13 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [getBMDKEventStreamClass() streamNameFromDKStreamName:v8];
        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy__19;
        v22 = __Block_byref_object_dispose__19;
        v23 = [(_DKBiomeQuery *)self _getCachedStreamForBiomeStreamIdentifier:v9];
        if (v19[5] || (v16[0] = MEMORY[0x1E69E9820], v16[1] = 3221225472, v17[0] = __33___DKBiomeQuery_bmdkEventStreams__block_invoke, v17[1] = &unk_1E736A1D8, v17[2] = v8, v17[3] = &v18, [(_DKBiomeQuery *)self _setBiomeStreamWithBlock:v16], v19[5]))
        {
          [v3 addObject:{v13, v14}];
        }

        else
        {
          v10 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = v13;
            v29 = v8;
            _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "[Storage][Biome] Skipping Biome stream for DK stream %@", buf, 0xCu);
          }
        }

        _Block_object_dispose(&v18, 8);

        ++v7;
      }

      while (v4 != v7);
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      v4 = v11;
    }

    while (v11);
  }

  return v3;
}

- (_DKBiomeQuery)initWithDKEventQuery:(id)query
{
  queryCopy = query;
  explicitEventStreamsOrEventStreamsInPredicate = [queryCopy explicitEventStreamsOrEventStreamsInPredicate];
  v19 = [_DKBiomeQuery biomeExclusiveStreamsFromEventStreams:explicitEventStreamsOrEventStreamsInPredicate];

  predicate = [queryCopy predicate];
  limit = [queryCopy limit];
  offset = [queryCopy offset];
  sortDescriptors = [queryCopy sortDescriptors];
  resultType = [queryCopy resultType];
  groupByProperties = [queryCopy groupByProperties];
  returnsDistinctResults = [queryCopy returnsDistinctResults];
  readMetadata = [queryCopy readMetadata];
  v12 = MEMORY[0x1E695DFD8];
  excludedMetadataKeys = [queryCopy excludedMetadataKeys];

  v14 = [v12 setWithArray:excludedMetadataKeys];
  BYTE1(v17) = readMetadata;
  LOBYTE(v17) = returnsDistinctResults;
  v15 = [(_DKBiomeQuery *)self initWithEventStreams:v19 predicate:predicate limit:limit offset:offset sortDescriptors:sortDescriptors resultType:resultType groupByProperties:groupByProperties returnDistinctResults:v17 readMetadata:v14 excludedMetadataKeys:?];

  return v15;
}

- (_DKBiomeQuery)initWithEventStreams:(id)streams predicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset sortDescriptors:(id)descriptors resultType:(int64_t)type groupByProperties:(id)properties returnDistinctResults:(BOOL)self0 readMetadata:(BOOL)self1 excludedMetadataKeys:(id)self2
{
  keysCopy3 = keys;
  propertiesCopy3 = properties;
  v66 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  propertiesCopy2 = properties;
  keysCopy2 = keys;
  if (![streamsCopy count])
  {
    v23 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [_DKBiomeQuery initWithEventStreams:predicateCopy predicate:v23 limit:? offset:? sortDescriptors:? resultType:? groupByProperties:? returnDistinctResults:? readMetadata:? excludedMetadataKeys:?];
    }

    propertiesCopy3 = properties;
  }

  v62.receiver = self;
  v62.super_class = _DKBiomeQuery;
  v24 = [(_DKBiomeQuery *)&v62 init];
  if (v24)
  {
    obj = descriptors;
    v25 = [streamsCopy valueForKeyPath:@"@distinctUnionOfObjects.name"];
    eventStreamNames = v24->_eventStreamNames;
    v55 = v24;
    v24->_eventStreamNames = v25;

    if (AnalyticsIsEventUsed())
    {
      v48 = propertiesCopy2;
      limitCopy = limit;
      offsetCopy = offset;
      v51 = propertiesCopy3;
      v52 = predicateCopy;
      v53 = streamsCopy;
      v27 = _CDCurrentOrXPCProcessName();
      v28 = v27;
      v29 = @"unknown";
      if (v27)
      {
        v29 = v27;
      }

      v30 = v29;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v31 = v55->_eventStreamNames;
      v32 = [(NSArray *)v31 countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v59;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v59 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v58 + 1) + 8 * i);
            v63[0] = @"client";
            v63[1] = @"stream";
            v64[0] = v30;
            v64[1] = v36;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:{2, v48, limitCopy, offsetCopy, v51, v52, v53}];
            AnalyticsSendEvent();
          }

          v33 = [(NSArray *)v31 countByEnumeratingWithState:&v58 objects:v65 count:16];
        }

        while (v33);
      }

      predicateCopy = v52;
      streamsCopy = v53;
      keysCopy3 = keys;
      offset = offsetCopy;
      propertiesCopy3 = v51;
      propertiesCopy2 = v48;
      limit = limitCopy;
    }

    resultsCopy = results;
    if (predicateCopy && ([MEMORY[0x1E696AE18] predicateWithValue:1], v39 = propertiesCopy2, v40 = limit, v41 = offset, v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(predicateCopy, "isEqual:", v42), v42, offset = v41, limit = v40, propertiesCopy2 = v39, resultsCopy = results, keysCopy3 = keys, (v43 & 1) == 0))
    {
      v45 = predicateCopy;
      v24 = v55;
      predicate = v55->_predicate;
      v55->_predicate = v45;
    }

    else
    {
      v24 = v55;
      predicate = v55->_predicate;
      v55->_predicate = 0;
    }

    if (limit <= 0x7FFFFFFE)
    {
      limitCopy2 = limit;
    }

    else
    {
      limitCopy2 = 0;
    }

    v24->_limit = limitCopy2;
    v24->_offset = offset;
    objc_storeStrong(&v24->_sortDescriptors, obj);
    v24->_resultType = type;
    objc_storeStrong(&v24->_groupByProperties, propertiesCopy3);
    v24->_returnDistinctResults = resultsCopy;
    v24->_readMetadata = metadata;
    objc_storeStrong(&v24->_excludedMetadataKeys, keysCopy3);
  }

  return v24;
}

- (_DKBiomeQuery)initWithDeletionArray:(id)array
{
  arrayCopy = array;
  v5 = [_DKBiomeQuery eventStreamsFromArray:arrayCopy];
  if ([v5 count])
  {
    v6 = [_DKBiomeQuery biomeExclusiveStreamsFromEventStreams:v5];

    if ([v6 count])
    {
      v7 = [_DKBiomeQuery deletionPredicateFromArray:arrayCopy];
      LOWORD(v12) = 0;
      self = -[_DKBiomeQuery initWithEventStreams:predicate:limit:offset:sortDescriptors:resultType:groupByProperties:returnDistinctResults:readMetadata:excludedMetadataKeys:](self, "initWithEventStreams:predicate:limit:offset:sortDescriptors:resultType:groupByProperties:returnDistinctResults:readMetadata:excludedMetadataKeys:", v6, v7, [arrayCopy count], 0, 0, 0, 0, v12, 0);

      v5 = v6;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
      v5 = v6;
    }
  }

  else
  {
    v9 = _CDCurrentOrXPCProcessName();
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_DKBiomeQuery *)v9 initWithDeletionArray:arrayCopy];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (_DKBiomeQuery)initWithDeletionPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [_DKBiomePredicateScanner searchForKeys:&unk_1F05EF608 inPredicate:predicateCopy];

  v6 = [_DKBiomeQuery eventStreamsFromPredicate:predicateCopy];
  if ([v6 count])
  {
    v7 = [_DKBiomeQuery biomeExclusiveStreamsFromEventStreams:v6];

    if ([v7 count])
    {
      LOBYTE(v12) = 0;
      BYTE1(v12) = v5 != 0;
      self = [(_DKBiomeQuery *)self initWithEventStreams:v7 predicate:predicateCopy limit:0 offset:0 sortDescriptors:0 resultType:0 groupByProperties:0 returnDistinctResults:v12 readMetadata:0 excludedMetadataKeys:?];
      v6 = v7;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
      v6 = v7;
    }
  }

  else
  {
    v9 = _CDCurrentOrXPCProcessName();
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_DKBiomeQuery *)v9 initWithDeletionPredicate:predicateCopy];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)canShimDuetStreamNamed:(id)named
{
  namedCopy = named;
  if (namedCopy && ([&unk_1F05EF620 containsObject:namedCopy] & 1) == 0)
  {
    v4 = [namedCopy containsString:@"knowledge-sync"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)biomeExclusiveStreamsFromEventStreams:(id)streams
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55___DKBiomeQuery_biomeExclusiveStreamsFromEventStreams___block_invoke;
  v5[3] = &__block_descriptor_40_e24_B16__0___DKEventStream_8l;
  v5[4] = self;
  v3 = [streams _pas_filteredArrayWithTest:v5];

  return v3;
}

+ (id)duetExclusiveStreamsFromEventStreams:(id)streams
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___DKBiomeQuery_duetExclusiveStreamsFromEventStreams___block_invoke;
  v5[3] = &__block_descriptor_40_e24_B16__0___DKEventStream_8l;
  v5[4] = self;
  v3 = [streams _pas_filteredArrayWithTest:v5];

  return v3;
}

+ (id)eventStreamsFromArray:(id)array
{
  v27 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    if ([arrayCopy count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v20 = v4;
        v9 = 0;
        v10 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
              stream = [v13 stream];
              name = [stream name];

              if (name)
              {
                stream2 = [v13 stream];
                [v5 setObject:stream2 forKeyedSubscript:name];
              }
            }

            else
            {
              v9 = 1;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v8);

        v4 = v20;
        if ((v9 & 1) == 0)
        {
          goto LABEL_19;
        }

        v6 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [_DKBiomeQuery eventStreamsFromArray:v6];
        }
      }

LABEL_19:
      allValues = [v5 allValues];
      goto LABEL_26;
    }

    v5 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v18 = "[Storage][Biome] Unable to initialize Biome deletion query with empty array";
      goto LABEL_24;
    }
  }

  else
  {
    v5 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v18 = "[Storage][Biome] Unable to initialize Biome deletion query with nil array";
LABEL_24:
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, v18, buf, 2u);
    }
  }

  allValues = 0;
LABEL_26:

  return allValues;
}

+ (id)deletionPredicateFromArray:(id)array
{
  arrayCopy = array;
  v4 = objc_autoreleasePoolPush();
  v5 = [arrayCopy valueForKey:@"UUID"];
  v6 = [v5 copy];

  v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_65];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v7];

  objc_autoreleasePoolPop(v4);

  return v8;
}

+ (id)eventStreamsFromPredicate:(id)predicate
{
  v17 = *MEMORY[0x1E69E9840];
  if (predicate)
  {
    v3 = [_DKBiomePredicateValueScanner searchForValuesForKey:@"streamName" inPredicate:predicate];
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [_DKEventStream eventStreamWithName:*(*(&v12 + 1) + 8 * i), v12];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (BOOL)prepareQuery:(id *)query
{
  v53[1] = *MEMORY[0x1E69E9840];
  predicate = self->_predicate;
  v49 = 0;
  v6 = [_DKPredicateValidator validatePredicate:predicate allowedKeys:0 error:&v49];
  v7 = v49;
  v8 = v7;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (!query || v9)
  {
    if (self->_resultType == 6)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"endDate" ascending:0];
      v53[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
      sortDescriptors = self->_sortDescriptors;
      self->_sortDescriptors = v13;
    }

    v43 = v8;
    [(NSPredicate *)self->_predicate allowEvaluation];
    if ([_DKPredicateValidator validateSortDescriptors:self->_sortDescriptors])
    {
      context = objc_autoreleasePoolPush();
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sortDescriptors, "count")}];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = self->_sortDescriptors;
      v16 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v46;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v45 + 1) + 8 * i);
            v21 = [v20 key];
            v22 = [_DKEvent keyPathForMOKeyPath:v21];

            if (v22 && ([v20 key], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, !v24))
            {
              comparator = [v20 comparator];

              if (comparator)
              {
                v26 = MEMORY[0x1E696AEB0];
                ascending = [v20 ascending];
                comparator2 = [v20 comparator];
                v29 = [v26 sortDescriptorWithKey:v22 ascending:ascending comparator:comparator2];
              }

              else
              {
                selector = [v20 selector];
                v31 = MEMORY[0x1E696AEB0];
                ascending2 = [v20 ascending];
                if (selector)
                {
                  [v31 sortDescriptorWithKey:v22 ascending:ascending2 selector:{objc_msgSend(v20, "selector")}];
                }

                else
                {
                  [v31 sortDescriptorWithKey:v22 ascending:ascending2];
                }
                v29 = ;
              }

              [(NSArray *)v15 addObject:v29];
              [v29 allowEvaluation];
            }

            else
            {
              [(NSArray *)v15 addObject:v20];
              [v20 allowEvaluation];
            }
          }

          v17 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v17);
      }

      v33 = self->_sortDescriptors;
      self->_sortDescriptors = v15;

      objc_autoreleasePoolPop(context);
      v11 = 1;
    }

    else
    {
      v34 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A578];
      v35 = MEMORY[0x1E696AEC0];
      v36 = [(NSArray *)self->_sortDescriptors valueForKey:@"key"];
      v37 = [v35 stringWithFormat:@"invalid sort descriptors %@", v36];
      v51 = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v39 = [v34 errorWithDomain:@"BMQueryErrorDomain" code:3 userInfo:v38];

      if (query)
      {
        v40 = v39;
        *query = v39;
      }

      v11 = 0;
    }

    v8 = v43;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    *query = v8;
  }

  return v11;
}

- (id)_publisherForStreams:(id)streams
{
  v54 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  if ([streamsCopy count] < 2)
  {
    if (self->_offset || self->_limit - 1 > 0x7FFFFFFD || self->_predicate || -[NSArray count](self->_sortDescriptors, "count") && (-[NSArray count](self->_sortDescriptors, "count") != 1 || (-[NSArray firstObject](self->_sortDescriptors, "firstObject"), v35 = objc_claimAutoreleasedReturnValue(), [v35 key], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", @"creationDate"), v36, v35, !v37)))
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      firstObject = [(NSArray *)self->_sortDescriptors firstObject];
      if (firstObject && (v39 = firstObject, -[NSArray firstObject](self->_sortDescriptors, "firstObject"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 ascending], v40, v39, !v41))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_limit];
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_limit];
        v15 = 0;
      }

      sortDescriptors = self->_sortDescriptors;
      self->_sortDescriptors = MEMORY[0x1E695E0F0];

      self->_limit = 0;
    }

    firstObject2 = [streamsCopy firstObject];
    v14 = [firstObject2 publisherWithStartTime:0 endTime:0 maxEvents:v16 lastN:v15 reversed:0];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v6 = streamsCopy;
    v7 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v50;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v50 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v49 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 publisherWithStartTime:0 endTime:0 maxEvents:0 lastN:0 reversed:0];
          if (v13)
          {
            [v5 addObject:v13];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v8);
    }

    v14 = [objc_alloc(MEMORY[0x1E698F0D0]) initWithPublishers:v5];
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke;
  v48[3] = &unk_1E736A0D8;
  v48[4] = self;
  v18 = [v14 mapWithTransform:v48];

  if (self->_predicate)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke_2;
    v47[3] = &unk_1E736A100;
    v47[4] = self;
    v19 = [v18 filterWithIsIncluded:v47];

    v18 = v19;
  }

  v20 = objc_autoreleasePoolPush();
  resultType = self->_resultType;
  if ((resultType - 3) >= 4)
  {
    if (resultType == 2)
    {
      v29 = [v18 mapWithTransform:&__block_literal_global_642];
    }

    else
    {
      if (resultType != 1)
      {
LABEL_34:
        objc_autoreleasePoolPop(v20);
        v27 = v18;
        goto LABEL_35;
      }

      v29 = [v18 reduceWithInitial:&unk_1F05EEE50 nextPartialResult:&__block_literal_global_638];
    }

    v33 = v29;

    v18 = v33;
    goto LABEL_34;
  }

  groupByProperties = self->_groupByProperties;
  if (!groupByProperties)
  {
    groupByProperties = &unk_1F05EF638;
  }

  v23 = groupByProperties;
  v24 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v23];
  v25 = v24;
  if (self->_resultType == 6)
  {
    [v24 addObject:@"endDate"];
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke_3;
  v44[3] = &unk_1E736A168;
  v26 = v25;
  v45 = v26;
  selfCopy = self;
  v27 = [v18 mapWithTransform:v44];

  if (self->_resultType == 5)
  {
    v28 = 0;
  }

  else
  {
    v28 = [v27 groupByKey:&__block_literal_global_665];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke_5;
    v43[3] = &unk_1E736A190;
    v43[4] = self;
    v30 = [v28 aggregateWithInitial:MEMORY[0x1E695E0F8] nextPartialResult:v43];
    v31 = [v30 flatMapWithTransform:&__block_literal_global_672];

    v27 = v31;
  }

  objc_autoreleasePoolPop(v20);
  if (v28)
  {
    v32 = objc_autoreleasePoolPush();
    [v28 connect];
    objc_autoreleasePoolPop(v32);
  }

LABEL_35:

  return v27;
}

- (id)filterExcludedMetadataWithDKEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  metadata = [eventCopy metadata];
  if (metadata)
  {
    v6 = metadata;
    metadata2 = [eventCopy metadata];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      metadata3 = [eventCopy metadata];
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(metadata3, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = metadata3;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            if (![(NSSet *)self->_excludedMetadataKeys containsObject:v16, v19])
            {
              v17 = [v11 objectForKeyedSubscript:v16];
              [v10 setObject:v17 forKeyedSubscript:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      [eventCopy setMetadata:v10];
    }
  }

  return eventCopy;
}

- (void)_setBiomeStreamWithBlock:(id)block
{
  if (block)
  {
    v3 = (*(block + 2))(block, a2);
    if (v3)
    {
      v6 = v3;
      v4 = +[_DKBiomeStreamCache sharedCache];
      identifier = [v6 identifier];
      [v4 setObject:v6 forKey:identifier];

      v3 = v6;
    }
  }
}

- (id)_getCachedStreamForBiomeStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[_DKBiomeStreamCache sharedCache];
  v5 = [v4 objectForKey:identifierCopy];

  return v5;
}

- (id)_publisherForQueryReturningIndividualResults:(BOOL)results error:(id *)error
{
  resultsCopy = results;
  if (![(_DKBiomeQuery *)self prepareQuery:error])
  {
    v7 = 0;
    goto LABEL_16;
  }

  bmdkEventStreams = [(_DKBiomeQuery *)self bmdkEventStreams];
  v7 = [(_DKBiomeQuery *)self _publisherForStreams:bmdkEventStreams];

  if ([(NSArray *)self->_sortDescriptors count])
  {
    v8 = objc_opt_new();
    v9 = [v7 reduceWithInitial:v8 nextPartialResult:&__block_literal_global_677];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_2;
    v20[3] = &unk_1E736A220;
    v20[4] = self;
    v7 = [v9 mapWithTransform:v20];

    if (resultsCopy)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_6;
      v17[3] = &unk_1E736A290;
      v17[4] = self;
      v10 = [v7 flatMapWithTransform:v17];
    }

    else
    {
      if (self->_resultType)
      {
        goto LABEL_16;
      }

      v10 = [v7 mapWithTransform:&__block_literal_global_690_0];
    }

    v15 = v10;

    v7 = v15;
  }

  else
  {
    if (!self->_resultType)
    {
      v11 = [v7 mapWithTransform:&__block_literal_global_681];

      v7 = v11;
    }

    if (self->_offset || self->_limit - 1 <= 0x7FFFFFFD)
    {
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v19[3] = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_4;
      v18[3] = &unk_1E736A268;
      v18[4] = self;
      v18[5] = v19;
      v12 = [v7 filterWithIsIncluded:v18];

      _Block_object_dispose(v19, 8);
      v7 = v12;
    }

    if (!resultsCopy)
    {
      v13 = objc_opt_new();
      v14 = [v7 reduceWithInitial:v13 nextPartialResult:&__block_literal_global_684];

      v7 = v14;
    }
  }

LABEL_16:

  return v7;
}

- (id)executeBiomeQueryError:(id *)error
{
  if ([(_DKBiomeQuery *)self prepareQuery:?])
  {
    v5 = [(_DKBiomeQuery *)self _publisherForQueryReturningIndividualResults:0 error:error];
    v6 = v5;
    if (v5)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy__19;
      v15 = __Block_byref_object_dispose__19;
      v16 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40___DKBiomeQuery_executeBiomeQueryError___block_invoke_697;
      v10[3] = &unk_1E736A2D8;
      v10[4] = &v11;
      v7 = [v5 sinkWithCompletion:&__block_literal_global_696 shouldContinue:v10];
      v8 = v12[5];
      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)executeDeletionQuery:(id *)query
{
  v46 = *MEMORY[0x1E69E9840];
  if (![(_DKBiomeQuery *)self prepareQuery:?])
  {
    return 0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_eventStreamNames;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v4)
  {
    selfCopy = self;
    v23 = 0;
    v5 = *v32;
    v6 = *MEMORY[0x1E696A388];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        v10 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:v8 contentProtection:v6];
        v11 = v10;
        if (v10)
        {
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __38___DKBiomeQuery_executeDeletionQuery___block_invoke;
          v25[3] = &unk_1E736A300;
          v25[4] = selfCopy;
          v25[5] = &v27;
          v25[6] = &v35;
          v26 = 0;
          [v10 pruneEventsWithError:&v26 predicateBlock:v25];
          v12 = v26;
          if (v12)
          {
            v13 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v40 = v8;
              v41 = 2112;
              v42 = v12;
              _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "[Storage][Biome] Error encountered during deletion for DK stream %@ error:%@", buf, 0x16u);
            }

            if (!v23)
            {
              v23 = v12;
            }
          }

          v36[3] += v28[3];
          v14 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = v36[3];
            v16 = v28[3];
            *buf = 134218498;
            v40 = v15;
            v41 = 2048;
            v42 = v16;
            v43 = 2112;
            v44 = v8;
            _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "[Storage][Biome] Deleted a total of %lu events with %lu events from Biome for DK stream %@", buf, 0x20u);
          }
        }

        else
        {
          v12 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v40 = v8;
            _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "[Storage][Biome] Skipping Biome stream during deletion for DK stream %@", buf, 0xCu);
          }
        }

        _Block_object_dispose(&v27, 8);
        objc_autoreleasePoolPop(v9);
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v4);

    if (query)
    {
      v17 = v23;
      if (v23)
      {
        v18 = v23;
        v17 = v23;
        *query = v23;
      }
    }

    else
    {
      v17 = v23;
    }
  }

  else
  {

    v17 = 0;
  }

  v19 = v36[3];
  _Block_object_dispose(&v35, 8);

  return v19;
}

- (void)initWithEventStreams:(uint64_t)a1 predicate:(NSObject *)a2 limit:offset:sortDescriptors:resultType:groupByProperties:returnDistinctResults:readMetadata:excludedMetadataKeys:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "[Storage][Biome] Unable to determine stream list, predicate %@", &v2, 0xCu);
}

- (void)initWithDeletionArray:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKey:@"class"];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_23(&dword_191750000, v3, v4, "Deletion array does not specify any streams. Client: %@, Array: %@", v5, v6, v7, v8);
}

- (void)initWithDeletionPredicate:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 cd_sanitizeForLogging];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_23(&dword_191750000, v3, v4, "Deletion predicate does not specify any streams. Client: %@, Predicate: %@", v5, v6, v7, v8);
}

@end