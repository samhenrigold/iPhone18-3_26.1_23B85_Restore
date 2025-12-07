@interface _DKHistogramQuery
+ (id)histogramQueryForPersistedHistogramsForStream:(id)stream withCustomIdentifier:(id)identifier;
+ (id)histogramQueryForStream:(id)stream interval:(id)interval;
+ (id)histogramQueryForStream:(id)stream interval:(id)interval predicate:(id)predicate valueKeyPaths:(id)paths;
+ (id)histogramQueryForStream:(id)stream interval:(id)interval withPredicate:(id)predicate;
- (_DKHistogram)_histogramFromEvents:(_DKHistogram *)events;
- (_DKHistogram)_histogramFromManagedObjects:(_DKHistogram *)objects;
- (_DKHistogram)_histogramFromValueCounts:(_DKHistogram *)counts;
- (_DKHistogramQuery)init;
- (_DKHistogramQuery)initWithCoder:(id)coder;
- (id)_fetchRemoteResultsWithStorage:(void *)storage error:;
- (id)_valueForEvent:(void *)event;
- (id)description;
- (id)executeUsingCoreDataStorage:(id)storage error:(id *)error;
- (id)handleResults:(id)results error:(id)error;
- (void)_constructFetchRequestPredicate;
- (void)_defaultValueKeyPaths;
- (void)encodeWithCoder:(id)coder;
- (void)setCustomIdentifier:(uint64_t)identifier;
- (void)setInterval:(uint64_t)interval;
- (void)setStream:(uint64_t)stream;
@end

@implementation _DKHistogramQuery

- (_DKHistogramQuery)init
{
  v3.receiver = self;
  v3.super_class = _DKHistogramQuery;
  result = [(_DKHistogramQuery *)&v3 init];
  if (result)
  {
    result->_minimumOccurrencesForInclusion = 1;
    result->_includeLocalResults = 1;
    result->_includeRemoteResults = 1;
    result->_remoteHistogramLimit = 0;
  }

  return result;
}

+ (id)histogramQueryForStream:(id)stream interval:(id)interval
{
  intervalCopy = interval;
  streamCopy = stream;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v9 = [v7 histogramQueryForStream:streamCopy interval:intervalCopy withPredicate:v8];

  return v9;
}

+ (id)histogramQueryForStream:(id)stream interval:(id)interval withPredicate:(id)predicate
{
  streamCopy = stream;
  intervalCopy = interval;
  predicateCopy = predicate;
  eventValueType = [streamCopy eventValueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_alloc_init(self);
    [(_DKHistogramQuery *)v13 setStream:streamCopy];
    [(_DKHistogramQuery *)v13 setInterval:intervalCopy];
    [v13 setPredicate:predicateCopy];
    _defaultValueKeyPaths = [(_DKHistogramQuery *)v13 _defaultValueKeyPaths];
    [v13 setValueKeyPaths:_defaultValueKeyPaths];
  }

  return v13;
}

+ (id)histogramQueryForStream:(id)stream interval:(id)interval predicate:(id)predicate valueKeyPaths:(id)paths
{
  streamCopy = stream;
  intervalCopy = interval;
  predicateCopy = predicate;
  pathsCopy = paths;
  v13 = objc_opt_class();
  v14 = v13;
  if (predicateCopy)
  {
    v15 = [v13 histogramQueryForStream:streamCopy interval:intervalCopy withPredicate:predicateCopy];
  }

  else
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    v15 = [v14 histogramQueryForStream:streamCopy interval:intervalCopy withPredicate:v16];
  }

  [v15 setValueKeyPaths:pathsCopy];

  return v15;
}

- (_DKHistogramQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _DKHistogramQuery;
  v5 = [(_DKQuery *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];
    customIdentifier = v5->_customIdentifier;
    v5->_customIdentifier = v8;

    v5->_includeLocalResults = [coderCopy decodeBoolForKey:@"includeLocalResults"];
    v5->_includeRemoteResults = [coderCopy decodeBoolForKey:@"includeRemoteResults"];
    v5->_remoteHistogramLimit = [coderCopy decodeIntegerForKey:@"remoteHistogramLimit"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    interval = v5->_interval;
    v5->_interval = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"valueKeyPaths"];
    valueKeyPaths = v5->_valueKeyPaths;
    v5->_valueKeyPaths = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _DKHistogramQuery;
  coderCopy = coder;
  [(_DKQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stream forKey:{@"stream", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
  [coderCopy encodeBool:self->_includeLocalResults forKey:@"includeLocalResults"];
  [coderCopy encodeBool:self->_includeRemoteResults forKey:@"includeRemoteResults"];
  [coderCopy encodeInteger:self->_remoteHistogramLimit forKey:@"remoteHistogramLimit"];
  [coderCopy encodeObject:self->_interval forKey:@"interval"];
  [coderCopy encodeObject:self->_predicate forKey:@"predicate"];
  [coderCopy encodeObject:self->_valueKeyPaths forKey:@"valueKeyPaths"];
}

- (id)_fetchRemoteResultsWithStorage:(void *)storage error:
{
  v5 = a2;
  if (self)
  {
    date = [MEMORY[0x1E695DF00] date];
    _constructFetchRequestPredicate = [(_DKHistogramQuery *)self _constructFetchRequestPredicate];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__17;
    v32 = __Block_byref_object_dispose__17;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__17;
    v26 = __Block_byref_object_dispose__17;
    v27 = 0;
    v8 = [v5 managedObjectContextFor:*MEMORY[0x1E696A388]];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58___DKHistogramQuery__fetchRemoteResultsWithStorage_error___block_invoke;
    v15[3] = &unk_1E7369CD8;
    v9 = v8;
    v16 = v9;
    v10 = _constructFetchRequestPredicate;
    v17 = v10;
    selfCopy = self;
    v11 = date;
    v19 = v11;
    v20 = &v22;
    v21 = &v28;
    [v9 performWithOptions:4 andBlock:v15];
    if (storage)
    {
      v12 = v23[5];
      if (v12)
      {
        *storage = v12;
      }
    }

    v13 = v29[5];

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)executeUsingCoreDataStorage:(id)storage error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  stream = [(_DKHistogramQuery *)self stream];
  if (stream)
  {
    stream2 = [(_DKHistogramQuery *)self stream];
    v87[0] = stream2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = _streamNameFromStreams(v9);
  _cdknowledge_signpost_query_begin(v10);

  if (stream)
  {
  }

  stream3 = [(_DKHistogramQuery *)self stream];

  if (!stream3)
  {
    v19 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DKHistogramQuery executeUsingCoreDataStorage:v19 error:?];
    }

    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      v86 = @"No event stream specified.";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      *error = [v20 errorWithDomain:@"com.apple.coreduet.knowledge" code:4 userInfo:v21];
    }

    v22 = 4;
    goto LABEL_35;
  }

  if (![(_DKHistogramQuery *)self includeLocalResults]&& ![(_DKHistogramQuery *)self includeRemoteResults])
  {
    v27 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [_DKHistogramQuery executeUsingCoreDataStorage:v27 error:?];
    }

    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v83 = *MEMORY[0x1E696A578];
      v84 = @"Invalid parameters: includeLocalResults and includeRemoteResults are both NO.";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      *error = [v28 errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:v29];
    }

    v22 = 3;
LABEL_35:
    _cdknowledge_signpost_query_end(0, v22);
    v26 = 0;
    goto LABEL_36;
  }

  valueKeyPaths = [(_DKHistogramQuery *)self valueKeyPaths];
  v13 = [valueKeyPaths count];

  if (!v13)
  {
    [_DKHistogramQuery executeUsingCoreDataStorage:? error:?];
  }

  if ([(_DKHistogramQuery *)self includeLocalResults])
  {
    v68 = storageCopy;
    context = objc_autoreleasePoolPush();
    interval = [(_DKHistogramQuery *)self interval];
    startDate = [interval startDate];
    interval2 = [(_DKHistogramQuery *)self interval];
    endDate = [interval2 endDate];
    v35 = [_DKQuery predicateForEventsBetweenStartDate:startDate endDate:endDate];

    v36 = v35;
    v37 = MEMORY[0x1E696AB28];
    v82[0] = v35;
    predicate = [(_DKHistogramQuery *)self predicate];
    v82[1] = predicate;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v40 = [v37 andPredicateWithSubpredicates:v39];

    v41 = v40;
    stream4 = [(_DKHistogramQuery *)self stream];
    v81 = stream4;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
    v44 = [_DKEventQuery eventQueryWithPredicate:v40 eventStreams:v43 offset:0 limit:0 sortDescriptors:0];

    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKHistogramQuery.m"];
    v46 = [v45 stringByAppendingFormat:@":%d", 371];
    [v44 setClientName:v46];

    v66 = v44;
    [v44 setTracker:&__block_literal_global_56];
    v47 = MEMORY[0x1E695DF70];
    valueKeyPaths2 = [(_DKHistogramQuery *)self valueKeyPaths];
    v49 = [v47 arrayWithCapacity:{objc_msgSend(valueKeyPaths2, "count")}];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    valueKeyPaths3 = [(_DKHistogramQuery *)self valueKeyPaths];
    v51 = [valueKeyPaths3 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v51)
    {
      v52 = v51;
      v65 = v36;
      v53 = *v73;
      while (2)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v73 != v53)
          {
            objc_enumerationMutation(valueKeyPaths3);
          }

          v55 = *(*(&v72 + 1) + 8 * i);
          v56 = [_DKEvent moKeyPathForKeyPath:v55];
          if (!v56)
          {
            v58 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v77 = v55;
              _os_log_impl(&dword_191750000, v58, OS_LOG_TYPE_DEFAULT, "Unsupported key for histogram query fast-path: '%@'. Falling back to full query.", buf, 0xCu);
            }

            v49 = 0;
            goto LABEL_52;
          }

          v57 = v56;
          [v49 addObject:v56];
        }

        v52 = [valueKeyPaths3 countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }

LABEL_52:
      storageCopy = v68;
      v36 = v65;
    }

    else
    {
      storageCopy = v68;
    }

    if ([v49 count])
    {
      [v66 setGroupByProperties:v49];
      [v66 setResultType:4];
      v63 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        stream5 = [(_DKHistogramQuery *)self stream];
        *buf = 138412546;
        v77 = v49;
        v78 = 2112;
        v79 = stream5;
        _os_log_impl(&dword_191750000, v63, OS_LOG_TYPE_DEFAULT, "Fetching value counts for histogram for keyPaths: %@ stream: %@", buf, 0x16u);
      }

      v71 = 0;
      v61 = [v66 executeUsingCoreDataStorage:storageCopy error:&v71];
      v14 = v71;
      v62 = [(_DKHistogramQuery *)self _histogramFromValueCounts:v61];
    }

    else
    {
      v59 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        stream6 = [(_DKHistogramQuery *)self stream];
        *buf = 138412290;
        v77 = stream6;
        _os_log_impl(&dword_191750000, v59, OS_LOG_TYPE_DEFAULT, "Fetching events for histogram query for stream: %@", buf, 0xCu);
      }

      v70 = 0;
      v61 = [v66 executeUsingCoreDataStorage:storageCopy error:&v70];
      v14 = v70;
      v62 = [(_DKHistogramQuery *)self _histogramFromEvents:v61];
    }

    v15 = v62;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (![(_DKHistogramQuery *)self includeRemoteResults])
  {
    v17 = 0;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v16 = objc_autoreleasePoolPush();
  v69 = v14;
  v17 = [(_DKHistogramQuery *)self _fetchRemoteResultsWithStorage:storageCopy error:&v69];
  v18 = v69;

  objc_autoreleasePoolPop(v16);
  v14 = v18;
  if (error)
  {
LABEL_22:
    v23 = v14;
    *error = v14;
  }

LABEL_23:
  if ([(_DKHistogramQuery *)self includeLocalResults]&& [(_DKHistogramQuery *)self includeRemoteResults])
  {
    [v15 addHistogram:v17];
    _cdknowledge_signpost_query_end(0, 0);
    v24 = v15;
  }

  else
  {
    includeRemoteResults = [(_DKHistogramQuery *)self includeRemoteResults];
    _cdknowledge_signpost_query_end(0, 0);
    if (includeRemoteResults)
    {
      v24 = v17;
    }

    else
    {
      v24 = v15;
    }
  }

  v26 = v24;

LABEL_36:

  return v26;
}

- (id)handleResults:(id)results error:(id)error
{
  resultsCopy = results;
  histogramHandler = self->_histogramHandler;
  if (histogramHandler)
  {
    histogramHandler[2](histogramHandler, self, resultsCopy, error);
  }

  return resultsCopy;
}

- (void)_defaultValueKeyPaths
{
  if (result)
  {
    stream = [result stream];
    eventValueType = [stream eventValueType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return &unk_1F05EF518;
    }

    else
    {
      return &unk_1F05EF530;
    }
  }

  return result;
}

- (void)setStream:(uint64_t)stream
{
  if (stream)
  {
    OUTLINED_FUNCTION_0_8(stream, a2, 40);
  }
}

- (void)setInterval:(uint64_t)interval
{
  if (interval)
  {
    OUTLINED_FUNCTION_0_8(interval, a2, 48);
  }
}

+ (id)histogramQueryForPersistedHistogramsForStream:(id)stream withCustomIdentifier:(id)identifier
{
  identifierCopy = identifier;
  streamCopy = stream;
  v8 = objc_alloc_init(self);
  [(_DKHistogramQuery *)v8 setStream:streamCopy];

  [(_DKHistogramQuery *)v8 setCustomIdentifier:identifierCopy];
  [v8 setIncludeLocalResults:0];

  return v8;
}

- (void)setCustomIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    OUTLINED_FUNCTION_0_8(identifier, a2, 64);
  }
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  stream = [(_DKHistogramQuery *)self stream];
  if (self)
  {
    customIdentifier = self->_customIdentifier;
  }

  else
  {
    customIdentifier = 0;
  }

  v7 = customIdentifier;
  interval = [(_DKHistogramQuery *)self interval];
  predicate = [(_DKHistogramQuery *)self predicate];
  valueKeyPaths = [(_DKHistogramQuery *)self valueKeyPaths];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_DKHistogramQuery includeLocalResults](self, "includeLocalResults")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_DKHistogramQuery includeRemoteResults](self, "includeRemoteResults")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_DKHistogramQuery remoteHistogramLimit](self, "remoteHistogramLimit")}];
  v14 = [v16 stringWithFormat:@"%@:{stream=%@ customIdentifier=%@; interval=%@; predicate=%@; valueKeyPaths=%@; includeLocalResults=%@; includeRemoteResults=%@; remoteHistogramLimit=%@}", v4, stream, v7, interval, predicate, valueKeyPaths, v11, v12, v13];;

  return v14;
}

- (_DKHistogram)_histogramFromValueCounts:(_DKHistogram *)counts
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (counts)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v54 = [v3 count];
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Generating histogram from %lu entries.", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v37 = v3;
    obj = v3;
    v41 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v41)
    {
      v39 = v5;
      v40 = *v48;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v48 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v47 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"count"];
          v9 = [v7 mutableCopy];
          [v9 removeObjectForKey:@"count"];
          if ([v9 count])
          {
            v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v42 = v9;
            v11 = v9;
            v12 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v12)
            {
              v13 = v12;
              v5 = *v44;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v44 != v5)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v8 = *(*(&v43 + 1) + 8 * j);
                  v15 = [_DKEvent keyPathForMOKeyPath:v8];
                  v16 = [v11 objectForKeyedSubscript:v8];
                  if (v15)
                  {
                    v17 = v15;
                  }

                  else
                  {
                    v17 = v8;
                  }

                  [v10 setObject:v16 forKeyedSubscript:v17];
                }

                v13 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v13);
            }

            v18 = [v10 count];
            if (v18 == 1)
            {
              allValues = [v10 allValues];
              firstObject = [allValues firstObject];
              [OUTLINED_FUNCTION_2_16(firstObject v28];
            }

            else
            {
              [OUTLINED_FUNCTION_2_16(v18 v19];
            }

            v9 = v42;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v41);
    }

    if ([v5 count])
    {
      counts = [[_DKHistogram alloc] initWithHistogram:v5];
    }

    else
    {
      counts = 0;
    }

    v3 = v37;
  }

  return counts;
}

- (id)_valueForEvent:(void *)event
{
  v3 = a2;
  if (event)
  {
    valueKeyPaths = [event valueKeyPaths];
    v5 = [valueKeyPaths count];

    if (v5 == 1)
    {
      valueKeyPaths2 = [event valueKeyPaths];
      firstObject = [valueKeyPaths2 firstObject];
      event = [v3 valueForKeyPath:firstObject];
    }

    else
    {
      v8 = MEMORY[0x1E695DF90];
      valueKeyPaths3 = [event valueKeyPaths];
      valueKeyPaths2 = [v8 dictionaryWithCapacity:{objc_msgSend(valueKeyPaths3, "count")}];

      valueKeyPaths4 = [event valueKeyPaths];
      OUTLINED_FUNCTION_36();
      v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
      if (v12)
      {
        v13 = v12;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            OUTLINED_FUNCTION_1_20();
            if (!v15)
            {
              objc_enumerationMutation(valueKeyPaths4);
            }

            v16 = *(8 * i);
            v17 = [v3 valueForKeyPath:v16];
            [valueKeyPaths2 setObject:v17 forKeyedSubscript:v16];
          }

          OUTLINED_FUNCTION_36();
          v13 = [valueKeyPaths4 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v13);
      }

      event = [valueKeyPaths2 copy];
    }
  }

  return event;
}

- (_DKHistogram)_histogramFromEvents:(_DKHistogram *)events
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (events)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = [v3 count];
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Generating histogram from %lu events.", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    memset(v13, 0, sizeof(v13));
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:v13 objects:v14 count:16];
    if (v7)
    {
      v8 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          OUTLINED_FUNCTION_1_20();
          if (!v10)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(_DKHistogramQuery *)events _valueForEvent:?];
          [v5 addObject:{v11, *&v13[0]}];
        }

        v8 = [v6 countByEnumeratingWithState:v13 objects:v14 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      events = [[_DKHistogram alloc] initWithValues:v5];
    }

    else
    {
      events = 0;
    }
  }

  return events;
}

- (void)_constructFetchRequestPredicate
{
  selfCopy = self;
  if (self)
  {
    if (self[8])
    {
      v2 = MEMORY[0x1E696AE18];
      stream = [self stream];
      name = [stream name];
      v5 = MEMORY[0x1E696AD98];
      stream2 = [selfCopy stream];
      eventValueType = [stream2 eventValueType];
      v8 = [v5 numberWithInteger:{objc_msgSend(eventValueType, "typeCode")}];
      selfCopy = [v2 predicateWithFormat:@"streamName == %@ && streamTypeCode == %@ && customIdentifier == %@", name, v8, selfCopy[8]];
LABEL_6:

      goto LABEL_7;
    }

    interval = [self interval];

    if (interval)
    {
      v16 = MEMORY[0x1E696AE18];
      stream = [selfCopy stream];
      name = [stream name];
      v10 = MEMORY[0x1E696AD98];
      stream2 = [selfCopy stream];
      eventValueType = [stream2 eventValueType];
      v8 = [v10 numberWithInteger:{objc_msgSend(eventValueType, "typeCode")}];
      interval2 = [selfCopy interval];
      startDate = [interval2 startDate];
      interval3 = [selfCopy interval];
      endDate = [interval3 endDate];
      selfCopy = [v16 predicateWithFormat:@"streamName == %@ && streamTypeCode == %@ && startDate >= %@ && startDate <= %@", name, v8, startDate, endDate];

      goto LABEL_6;
    }

    selfCopy = 0;
  }

LABEL_7:

  return selfCopy;
}

- (_DKHistogram)_histogramFromManagedObjects:(_DKHistogram *)objects
{
  v3 = a2;
  if (objects)
  {
    objects = objc_alloc_init(_DKHistogram);
    v4 = v3;
    OUTLINED_FUNCTION_36();
    v6 = [v5 countByEnumeratingWithState:0 objects:? count:?];
    if (v6)
    {
      v7 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          OUTLINED_FUNCTION_1_20();
          if (!v9)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [[_DKHistogram alloc] initWithManagedObject:*(8 * i)];
          if (v10)
          {
            [(_DKHistogram *)objects addHistogram:v10];
          }
        }

        OUTLINED_FUNCTION_36();
        v7 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }
  }

  return objects;
}

- (void)executeUsingCoreDataStorage:(void *)a1 error:.cold.2(void *a1)
{
  v2 = [(_DKHistogramQuery *)a1 _defaultValueKeyPaths];
  [a1 setValueKeyPaths:v2];
}

@end