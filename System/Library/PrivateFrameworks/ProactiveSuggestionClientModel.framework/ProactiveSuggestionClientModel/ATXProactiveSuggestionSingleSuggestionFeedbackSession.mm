@interface ATXProactiveSuggestionSingleSuggestionFeedbackSession
- (ATXProactiveSuggestionSingleSuggestionFeedbackSession)initWithCoder:(id)coder;
- (ATXProactiveSuggestionSingleSuggestionFeedbackSession)initWithProactiveSuggestion:(id)suggestion clientModelCacheUUID:(id)d feedbackMetadata:(id)metadata;
- (ATXProactiveSuggestionSingleSuggestionFeedbackSession)initWithProactiveSuggestion:(id)suggestion feedbackMetadata:(id)metadata matchingSuggestionUUIDs:(id)ds associatedBlendingCacheUUIDs:(id)iDs associatedClientModelCacheUUIDs:(id)uIDs sessionContextStatuses:(id)statuses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionSingleSuggestionFeedbackSession:(id)session;
- (BOOL)tryUpdateEngagementType:(int64_t)type consumerSubType:(unsigned __int8)subType;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateShownAndEngagedEngagementTypesAndConsumerSubTypesWithBlock:(id)block;
@end

@implementation ATXProactiveSuggestionSingleSuggestionFeedbackSession

- (ATXProactiveSuggestionSingleSuggestionFeedbackSession)initWithProactiveSuggestion:(id)suggestion clientModelCacheUUID:(id)d feedbackMetadata:(id)metadata
{
  metadataCopy = metadata;
  dCopy = d;
  suggestionCopy = suggestion;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  uuid = [suggestionCopy uuid];
  [v11 addObject:uuid];

  [v12 addObject:dCopy];
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = [(ATXProactiveSuggestionSingleSuggestionFeedbackSession *)self initWithProactiveSuggestion:suggestionCopy feedbackMetadata:metadataCopy matchingSuggestionUUIDs:v11 associatedBlendingCacheUUIDs:v14 associatedClientModelCacheUUIDs:v12 sessionContextStatuses:v15];

  return v16;
}

- (ATXProactiveSuggestionSingleSuggestionFeedbackSession)initWithProactiveSuggestion:(id)suggestion feedbackMetadata:(id)metadata matchingSuggestionUUIDs:(id)ds associatedBlendingCacheUUIDs:(id)iDs associatedClientModelCacheUUIDs:(id)uIDs sessionContextStatuses:(id)statuses
{
  suggestionCopy = suggestion;
  metadataCopy = metadata;
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  statusesCopy = statuses;
  v24.receiver = self;
  v24.super_class = ATXProactiveSuggestionSingleSuggestionFeedbackSession;
  v18 = [(ATXProactiveSuggestionSingleSuggestionFeedbackSession *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestion, suggestion);
    objc_storeStrong(&v19->_feedbackMetadata, metadata);
    objc_storeStrong(&v19->_matchingSuggestionUUIDs, ds);
    objc_storeStrong(&v19->_associatedBlendingCacheUUIDs, iDs);
    objc_storeStrong(&v19->_associatedClientModelCacheUUIDs, uIDs);
    objc_storeStrong(&v19->_sessionContextStatusByConsumerSubType, statuses);
  }

  return v19;
}

- (BOOL)tryUpdateEngagementType:(int64_t)type consumerSubType:(unsigned __int8)subType
{
  v6 = [MEMORY[0x1E698B028] stringForConsumerSubtype:subType];
  integerValue = [(NSMutableDictionary *)self->_sessionContextStatusByConsumerSubType objectForKey:v6];
  v8 = integerValue;
  if (integerValue)
  {
    integerValue = [integerValue integerValue];
  }

  if (type >= 1 && !integerValue || (v9 = 0, type > 1) && integerValue == 1)
  {
    sessionContextStatusByConsumerSubType = self->_sessionContextStatusByConsumerSubType;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [(NSMutableDictionary *)sessionContextStatusByConsumerSubType setObject:v11 forKey:v6];

    v9 = 1;
  }

  return v9;
}

- (void)enumerateShownAndEngagedEngagementTypesAndConsumerSubTypesWithBlock:(id)block
{
  blockCopy = block;
  sessionContextStatusByConsumerSubType = self->_sessionContextStatusByConsumerSubType;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __125__ATXProactiveSuggestionSingleSuggestionFeedbackSession_enumerateShownAndEngagedEngagementTypesAndConsumerSubTypesWithBlock___block_invoke;
  v7[3] = &unk_1E86A4AD8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)sessionContextStatusByConsumerSubType enumerateKeysAndObjectsUsingBlock:v7];
}

void __125__ATXProactiveSuggestionSingleSuggestionFeedbackSession_enumerateShownAndEngagedEngagementTypesAndConsumerSubTypesWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([MEMORY[0x1E698B028] consumerSubtypeForString:a2 found:0])
  {
    [v5 integerValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)encodeWithCoder:(id)coder
{
  suggestion = self->_suggestion;
  coderCopy = coder;
  [coderCopy encodeObject:suggestion forKey:@"suggestion"];
  [coderCopy encodeObject:self->_feedbackMetadata forKey:@"feedbackMetadata"];
  [coderCopy encodeObject:self->_matchingSuggestionUUIDs forKey:@"matchingSuggestionUUIDs"];
  [coderCopy encodeObject:self->_associatedBlendingCacheUUIDs forKey:@"blendingUUIDs"];
  [coderCopy encodeObject:self->_associatedClientModelCacheUUIDs forKey:@"clientUUIDs"];
  [coderCopy encodeObject:self->_sessionContextStatusByConsumerSubType forKey:@"sessionStatuses"];
}

- (ATXProactiveSuggestionSingleSuggestionFeedbackSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"suggestion" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXProactiveSuggestionSingleSuggestionFeedbackSession" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_metrics(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"feedbackMetadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXProactiveSuggestionSingleSuggestionFeedbackSession" errorCode:-1 logHandle:v13];

    v15 = MEMORY[0x1E69C5D78];
    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18 = objc_opt_class();
    v19 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v16);
    v21 = __atxlog_handle_metrics(v20);
    v22 = [v15 robustDecodeObjectOfClasses:v19 forKey:@"matchingSuggestionUUIDs" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXProactiveSuggestionSingleSuggestionFeedbackSession" errorCode:-1 logHandle:v21];

    if (v22 && ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
    {
      v24 = MEMORY[0x1E69C5D78];
      v25 = objc_autoreleasePoolPush();
      v26 = objc_alloc(MEMORY[0x1E695DFD8]);
      v27 = objc_opt_class();
      v28 = [v26 initWithObjects:{v27, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v25);
      v30 = __atxlog_handle_metrics(v29);
      v31 = [v24 robustDecodeObjectOfClasses:v28 forKey:@"blendingUUIDs" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXProactiveSuggestionSingleSuggestionFeedbackSession" errorCode:-1 logHandle:v30];

      if (v31 && ([coderCopy error], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
      {
        v51 = MEMORY[0x1E69C5D78];
        v33 = objc_autoreleasePoolPush();
        v34 = objc_alloc(MEMORY[0x1E695DFD8]);
        v35 = objc_opt_class();
        v36 = [v34 initWithObjects:{v35, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(v33);
        v38 = __atxlog_handle_metrics(v37);
        v39 = [v51 robustDecodeObjectOfClasses:v36 forKey:@"clientUUIDs" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXProactiveSuggestionSingleSuggestionFeedbackSession" errorCode:-1 logHandle:v38];

        if (v39 && ([coderCopy error], v40 = objc_claimAutoreleasedReturnValue(), v40, !v40))
        {
          v52 = MEMORY[0x1E69C5D78];
          context = objc_autoreleasePoolPush();
          v41 = objc_alloc(MEMORY[0x1E695DFD8]);
          v42 = objc_opt_class();
          v43 = objc_opt_class();
          v44 = [v41 initWithObjects:{v42, v43, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(context);
          v46 = __atxlog_handle_metrics(v45);
          v47 = [v52 robustDecodeObjectOfClasses:v44 forKey:@"sessionStatuses" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXProactiveSuggestionSingleSuggestionFeedbackSession" errorCode:-1 logHandle:v46];

          if (v47 && ([coderCopy error], v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
          {
            self = [(ATXProactiveSuggestionSingleSuggestionFeedbackSession *)self initWithProactiveSuggestion:v8 feedbackMetadata:v14 matchingSuggestionUUIDs:v22 associatedBlendingCacheUUIDs:v31 associatedClientModelCacheUUIDs:v39 sessionContextStatuses:v47];
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionSingleSuggestionFeedbackSession *)self isEqualToATXProactiveSuggestionSingleSuggestionFeedbackSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionSingleSuggestionFeedbackSession:(id)session
{
  sessionCopy = session;
  v5 = self->_suggestion;
  v6 = v5;
  if (v5 == sessionCopy[1])
  {
  }

  else
  {
    v7 = [(ATXProactiveSuggestion *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_19;
    }
  }

  v8 = self->_feedbackMetadata;
  v9 = v8;
  if (v8 == sessionCopy[2])
  {
  }

  else
  {
    v10 = [(NSData *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = self->_matchingSuggestionUUIDs;
  v12 = v11;
  if (v11 == sessionCopy[3])
  {
  }

  else
  {
    v13 = [(NSMutableOrderedSet *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = self->_associatedBlendingCacheUUIDs;
  v15 = v14;
  if (v14 == sessionCopy[5])
  {
  }

  else
  {
    v16 = [(NSMutableOrderedSet *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = self->_associatedClientModelCacheUUIDs;
  v18 = v17;
  if (v17 == sessionCopy[4])
  {
  }

  else
  {
    v19 = [(NSMutableOrderedSet *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }
  }

  v22 = self->_sessionContextStatusByConsumerSubType;
  v23 = v22;
  if (v22 == sessionCopy[6])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSMutableDictionary *)v22 isEqual:?];
  }

LABEL_20:
  return v20;
}

- (unint64_t)hash
{
  v2 = self->_feedbackMetadata - self->_suggestion + 32 * self->_suggestion;
  v3 = &self->_matchingSuggestionUUIDs[4 * v2] - v2;
  v4 = self->_associatedBlendingCacheUUIDs - v3 + 32 * v3;
  v5 = &self->_associatedClientModelCacheUUIDs[4 * v4] - v4;
  return &self->_sessionContextStatusByConsumerSubType[4 * v5] - v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uuid = [(ATXProactiveSuggestion *)self->_suggestion uuid];
  clientModelSpecification = [(ATXProactiveSuggestion *)self->_suggestion clientModelSpecification];
  clientModelId = [clientModelSpecification clientModelId];
  v7 = [v3 initWithFormat:@"uuid: %@, clientModelId: %@, statuses: %@, suggestionUUIDs: %@, blendingUUIDs: %@, clientUUIDs: %@", uuid, clientModelId, self->_sessionContextStatusByConsumerSubType, self->_matchingSuggestionUUIDs, self->_associatedBlendingCacheUUIDs, self->_associatedClientModelCacheUUIDs];

  return v7;
}

@end