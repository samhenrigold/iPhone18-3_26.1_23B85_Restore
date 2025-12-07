@interface ATXSingleSuggestionSession
+ (id)stringForSuggestionSessionStatus:(unint64_t)status;
- (ATXSingleSuggestionSession)initWithCoder:(id)coder;
- (ATXSingleSuggestionSession)initWithTrackedProactiveSuggestion:(id)suggestion clientModelCacheUUID:(id)d feedbackMetadata:(id)metadata;
- (ATXSingleSuggestionSession)initWithTrackedProactiveSuggestion:(id)suggestion feedbackMetadata:(id)metadata matchingSuggestionUUIDs:(id)ds associatedBlendingCacheUUIDs:(id)iDs associatedClientModelCacheUUIDs:(id)uIDs sessionContextStatuses:(id)statuses sessionExpirationDate:(id)date completed:(BOOL)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSingleSuggestionSession:(id)session;
- (BOOL)tryUpdateSessionStatus:(unint64_t)status consumerSubType:(unsigned __int8)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock:(id)block;
@end

@implementation ATXSingleSuggestionSession

- (ATXSingleSuggestionSession)initWithTrackedProactiveSuggestion:(id)suggestion clientModelCacheUUID:(id)d feedbackMetadata:(id)metadata
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
  LOBYTE(v18) = 0;
  v16 = [(ATXSingleSuggestionSession *)self initWithTrackedProactiveSuggestion:suggestionCopy feedbackMetadata:metadataCopy matchingSuggestionUUIDs:v11 associatedBlendingCacheUUIDs:v14 associatedClientModelCacheUUIDs:v12 sessionContextStatuses:v15 sessionExpirationDate:0 completed:v18];

  return v16;
}

- (ATXSingleSuggestionSession)initWithTrackedProactiveSuggestion:(id)suggestion feedbackMetadata:(id)metadata matchingSuggestionUUIDs:(id)ds associatedBlendingCacheUUIDs:(id)iDs associatedClientModelCacheUUIDs:(id)uIDs sessionContextStatuses:(id)statuses sessionExpirationDate:(id)date completed:(BOOL)self0
{
  suggestionCopy = suggestion;
  metadataCopy = metadata;
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  statusesCopy = statuses;
  dateCopy = date;
  v27.receiver = self;
  v27.super_class = ATXSingleSuggestionSession;
  v19 = [(ATXSingleSuggestionSession *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_suggestion, suggestion);
    objc_storeStrong(&v20->_feedbackMetadata, metadata);
    objc_storeStrong(&v20->_matchingSuggestionUUIDs, ds);
    objc_storeStrong(&v20->_associatedBlendingCacheUUIDs, iDs);
    objc_storeStrong(&v20->_associatedClientModelCacheUUIDs, uIDs);
    objc_storeStrong(&v20->_sessionContextStatusByConsumerSubType, statuses);
    objc_storeStrong(&v20->_sessionExpirationDate, date);
    v20->_completed = completed;
  }

  return v20;
}

- (BOOL)tryUpdateSessionStatus:(unint64_t)status consumerSubType:(unsigned __int8)type
{
  v6 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:type];
  unsignedIntegerValue = [(NSMutableDictionary *)self->_sessionContextStatusByConsumerSubType objectForKey:v6];
  v8 = unsignedIntegerValue;
  if (unsignedIntegerValue)
  {
    unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
  }

  if (status && !unsignedIntegerValue || (v9 = 0, status >= 2) && unsignedIntegerValue == 1)
  {
    sessionContextStatusByConsumerSubType = self->_sessionContextStatusByConsumerSubType;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
    [(NSMutableDictionary *)sessionContextStatusByConsumerSubType setObject:v11 forKey:v6];

    v9 = 1;
  }

  return v9;
}

- (void)enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock:(id)block
{
  blockCopy = block;
  sessionContextStatusByConsumerSubType = self->_sessionContextStatusByConsumerSubType;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__ATXSingleSuggestionSession_enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock___block_invoke;
  v7[3] = &unk_2785999F8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)sessionContextStatusByConsumerSubType enumerateKeysAndObjectsUsingBlock:v7];
}

void __98__ATXSingleSuggestionSession_enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([MEMORY[0x277CEBCF0] consumerSubtypeForString:a2 found:0])
  {
    [v5 unsignedIntegerValue];
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)stringForSuggestionSessionStatus:(unint64_t)status
{
  result = @"not shown";
  if (status > 2)
  {
    if (status == 3)
    {
      return @"dismissed";
    }

    else if (status == 4)
    {
      v5 = __atxlog_handle_feedback(@"not shown");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXSingleSuggestionSession stringForSuggestionSessionStatus:v5];
      }

      return @"max";
    }
  }

  else
  {
    v4 = @"engaged";
    if (status != 2)
    {
      v4 = @"not shown";
    }

    if (status == 1)
    {
      return @"shown";
    }

    else
    {
      return v4;
    }
  }

  return result;
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
  [coderCopy encodeObject:self->_sessionExpirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_completed forKey:@"completed"];
}

- (ATXSingleSuggestionSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"suggestion" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXPushPullSessionContext" errorCode:-1 logHandle:v7];

  if (v8)
  {
    selfCopy = self;
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_metrics(v10);
    v53 = [v9 robustDecodeObjectOfClass:v10 forKey:@"feedbackMetadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXPushPullSessionContext" errorCode:-1 logHandle:v11];

    v12 = MEMORY[0x277D42620];
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc(MEMORY[0x277CBEB98]);
    v15 = objc_opt_class();
    v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v13);
    v18 = __atxlog_handle_metrics(v17);
    v19 = [v12 robustDecodeObjectOfClasses:v16 forKey:@"matchingSuggestionUUIDs" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXPushPullSessionContext" errorCode:-1 logHandle:v18];

    if (v19)
    {
      v20 = MEMORY[0x277D42620];
      v21 = objc_autoreleasePoolPush();
      v22 = objc_alloc(MEMORY[0x277CBEB98]);
      v23 = objc_opt_class();
      v24 = [v22 initWithObjects:{v23, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v21);
      v26 = __atxlog_handle_metrics(v25);
      v27 = [v20 robustDecodeObjectOfClasses:v24 forKey:@"blendingUUIDs" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXPushPullSessionContext" errorCode:-1 logHandle:v26];

      if (v27)
      {
        v28 = MEMORY[0x277D42620];
        v29 = objc_autoreleasePoolPush();
        v30 = objc_alloc(MEMORY[0x277CBEB98]);
        v31 = objc_opt_class();
        v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(v29);
        v34 = __atxlog_handle_metrics(v33);
        v35 = [v28 robustDecodeObjectOfClasses:v32 forKey:@"clientUUIDs" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXPushPullSessionContext" errorCode:-1 logHandle:v34];

        if (v35)
        {
          v52 = MEMORY[0x277D42620];
          v36 = objc_autoreleasePoolPush();
          v37 = objc_alloc(MEMORY[0x277CBEB98]);
          v38 = objc_opt_class();
          v39 = objc_opt_class();
          v40 = [v37 initWithObjects:{v38, v39, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v36);
          v42 = __atxlog_handle_metrics(v41);
          v43 = [v52 robustDecodeObjectOfClasses:v40 forKey:@"sessionStatuses" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXPushPullSessionContext" errorCode:-1 logHandle:v42];

          if (v43)
          {
            v44 = MEMORY[0x277D42620];
            v45 = objc_opt_class();
            v46 = __atxlog_handle_metrics(v45);
            v47 = [v44 robustDecodeObjectOfClass:v45 forKey:@"expirationDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXPushPullSessionContext" errorCode:-1 logHandle:v46];

            LOBYTE(v51) = [coderCopy decodeBoolForKey:@"completed"];
            v48 = v53;
            self = [(ATXSingleSuggestionSession *)selfCopy initWithTrackedProactiveSuggestion:v8 feedbackMetadata:v53 matchingSuggestionUUIDs:v19 associatedBlendingCacheUUIDs:v27 associatedClientModelCacheUUIDs:v35 sessionContextStatuses:v43 sessionExpirationDate:v47 completed:v51];

            selfCopy2 = self;
          }

          else
          {
            selfCopy2 = 0;
            v48 = v53;
            self = selfCopy;
          }
        }

        else
        {
          selfCopy2 = 0;
          v48 = v53;
          self = selfCopy;
        }
      }

      else
      {
        selfCopy2 = 0;
        v48 = v53;
      }
    }

    else
    {
      selfCopy2 = 0;
      v48 = v53;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSingleSuggestionSession *)self isEqualToATXSingleSuggestionSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSingleSuggestionSession:(id)session
{
  sessionCopy = session;
  v5 = self->_suggestion;
  v6 = v5;
  if (v5 == sessionCopy[2])
  {
  }

  else
  {
    v7 = [(ATXProactiveSuggestion *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v8 = self->_feedbackMetadata;
  v9 = v8;
  if (v8 == sessionCopy[3])
  {
  }

  else
  {
    v10 = [(NSData *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v11 = self->_matchingSuggestionUUIDs;
  v12 = v11;
  if (v11 == sessionCopy[4])
  {
  }

  else
  {
    v13 = [(NSMutableOrderedSet *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v14 = self->_associatedBlendingCacheUUIDs;
  v15 = v14;
  if (v14 == sessionCopy[6])
  {
  }

  else
  {
    v16 = [(NSMutableOrderedSet *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = self->_associatedClientModelCacheUUIDs;
  v18 = v17;
  if (v17 == sessionCopy[5])
  {
  }

  else
  {
    v19 = [(NSMutableOrderedSet *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v20 = self->_sessionContextStatusByConsumerSubType;
  v21 = v20;
  if (v20 == sessionCopy[7])
  {
  }

  else
  {
    v22 = [(NSMutableDictionary *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v23 = self->_sessionExpirationDate;
  v24 = v23;
  if (v23 == sessionCopy[8])
  {

    goto LABEL_30;
  }

  v25 = [(NSDate *)v23 isEqual:?];

  if (v25)
  {
LABEL_30:
    v26 = self->_completed == *(sessionCopy + 8);
    goto LABEL_28;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (unint64_t)hash
{
  v2 = self->_feedbackMetadata - self->_suggestion + 32 * self->_suggestion;
  v3 = &self->_matchingSuggestionUUIDs[4 * v2] - v2;
  v4 = self->_associatedBlendingCacheUUIDs - v3 + 32 * v3;
  v5 = self->_sessionContextStatusByConsumerSubType - (&self->_associatedClientModelCacheUUIDs[4 * v4] - v4) + 32 * (&self->_associatedClientModelCacheUUIDs[4 * v4] - v4);
  v6 = &self->_sessionExpirationDate[4 * v5] - v5;
  return self->_completed - v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  uuid = [(ATXProactiveSuggestion *)self->_suggestion uuid];
  clientModelSpecification = [(ATXProactiveSuggestion *)self->_suggestion clientModelSpecification];
  clientModelId = [clientModelSpecification clientModelId];
  v7 = clientModelId;
  if (self->_completed)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 initWithFormat:@"uuid: %@ clientModelId: %@ expirationDate: %@ completed: %@ statuses: %@ suggestionUUIDs: %@ blendingUUIDs: %@ clientUUIDs: %@", uuid, clientModelId, self->_sessionExpirationDate, v8, self->_sessionContextStatusByConsumerSubType, self->_matchingSuggestionUUIDs, self->_associatedBlendingCacheUUIDs, self->_associatedClientModelCacheUUIDs];

  return v9;
}

@end