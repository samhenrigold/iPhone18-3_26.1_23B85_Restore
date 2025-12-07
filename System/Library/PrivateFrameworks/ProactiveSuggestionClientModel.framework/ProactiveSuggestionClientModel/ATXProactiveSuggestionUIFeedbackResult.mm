@interface ATXProactiveSuggestionUIFeedbackResult
- (ATXProactiveSuggestionUIFeedbackResult)initWithCoder:(id)coder;
- (ATXProactiveSuggestionUIFeedbackResult)initWithEngagementType:(int64_t)type shownSuggestions:(id)suggestions engagedSuggestions:(id)engagedSuggestions rejectedSuggestions:(id)rejectedSuggestions session:(id)session consumerSubType:(unsigned __int8)subType clientCacheUpdate:(id)update uiCacheUpdate:(id)self0 context:(id)self1;
- (ATXProactiveSuggestionUIFeedbackResult)initWithShownSuggestions:(id)suggestions engagedSuggestions:(id)engagedSuggestions rejectedSuggestions:(id)rejectedSuggestions session:(id)session consumerSubType:(unsigned __int8)type clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackResult:(id)result;
- (id)description;
- (id)suggestionExecutableObjectListFromSuggestions:(id)suggestions;
- (int64_t)uiEngagementTypeFromShownSuggestions:(id)suggestions engagedSuggestions:(id)engagedSuggestions rejectedSuggestions:(id)rejectedSuggestions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionUIFeedbackResult

- (ATXProactiveSuggestionUIFeedbackResult)initWithShownSuggestions:(id)suggestions engagedSuggestions:(id)engagedSuggestions rejectedSuggestions:(id)rejectedSuggestions session:(id)session consumerSubType:(unsigned __int8)type clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)self0
{
  typeCopy = type;
  contextCopy = context;
  cacheUpdateCopy = cacheUpdate;
  updateCopy = update;
  sessionCopy = session;
  rejectedSuggestionsCopy = rejectedSuggestions;
  engagedSuggestionsCopy = engagedSuggestions;
  suggestionsCopy = suggestions;
  v24 = [(ATXProactiveSuggestionUIFeedbackResult *)self initWithEngagementType:[(ATXProactiveSuggestionUIFeedbackResult *)self uiEngagementTypeFromShownSuggestions:suggestionsCopy engagedSuggestions:engagedSuggestionsCopy rejectedSuggestions:rejectedSuggestionsCopy] shownSuggestions:suggestionsCopy engagedSuggestions:engagedSuggestionsCopy rejectedSuggestions:rejectedSuggestionsCopy session:sessionCopy consumerSubType:typeCopy clientCacheUpdate:updateCopy uiCacheUpdate:cacheUpdateCopy context:contextCopy];

  return v24;
}

- (ATXProactiveSuggestionUIFeedbackResult)initWithEngagementType:(int64_t)type shownSuggestions:(id)suggestions engagedSuggestions:(id)engagedSuggestions rejectedSuggestions:(id)rejectedSuggestions session:(id)session consumerSubType:(unsigned __int8)subType clientCacheUpdate:(id)update uiCacheUpdate:(id)self0 context:(id)self1
{
  subTypeCopy = subType;
  suggestionsCopy = suggestions;
  engagedSuggestionsCopy = engagedSuggestions;
  rejectedSuggestionsCopy = rejectedSuggestions;
  sessionCopy = session;
  v25.receiver = self;
  v25.super_class = ATXProactiveSuggestionUIFeedbackResult;
  v18 = [(ATXProactiveSuggestionFeedbackResult *)&v25 initWithConsumerSubType:subTypeCopy sessionType:0 clientCacheUpdate:update uiCacheUpdate:cacheUpdate context:context];
  v19 = v18;
  if (v18)
  {
    v18->_engagementType = type;
    objc_storeStrong(&v18->_shownSuggestions, suggestions);
    objc_storeStrong(&v19->_engagedSuggestions, engagedSuggestions);
    objc_storeStrong(&v19->_rejectedSuggestions, rejectedSuggestions);
    objc_storeStrong(&v19->_session, session);
  }

  return v19;
}

- (int64_t)uiEngagementTypeFromShownSuggestions:(id)suggestions engagedSuggestions:(id)engagedSuggestions rejectedSuggestions:(id)rejectedSuggestions
{
  engagedSuggestionsCopy = engagedSuggestions;
  v7 = [rejectedSuggestions count] != 0;
  v8 = [engagedSuggestionsCopy count];

  if (v8)
  {
    return 2;
  }

  else
  {
    return v7;
  }
}

- (unint64_t)hash
{
  engagementType = self->_engagementType;
  v4 = [(NSArray *)self->_engagedSuggestions hash]- engagementType + 32 * engagementType;
  v5 = [(NSArray *)self->_shownSuggestions hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_rejectedSuggestions hash]- v5 + 32 * v5;
  v7 = 31 * ([(ATXProactiveSuggestionUIFeedbackSession *)self->_session hash]- v6 + 32 * v6);
  v8 = v7 + [(ATXProactiveSuggestionFeedbackResult *)self consumerSubType];
  clientCacheUpdate = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  v10 = [clientCacheUpdate hash] - v8 + 32 * v8;

  uiCacheUpdate = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
  v12 = [uiCacheUpdate hash] - v10 + 32 * v10;

  context = [(ATXProactiveSuggestionFeedbackResult *)self context];
  v14 = [context hash] - v12 + 32 * v12;

  return v14;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionUIFeedbackResult *)self isEqualToATXProactiveSuggestionUIFeedbackResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackResult:(id)result
{
  resultCopy = result;
  engagementType = self->_engagementType;
  if (engagementType != [resultCopy engagementType])
  {
    goto LABEL_25;
  }

  v6 = self->_engagedSuggestions;
  v7 = v6;
  if (v6 == resultCopy[8])
  {
  }

  else
  {
    v8 = [(NSArray *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v9 = self->_shownSuggestions;
  v10 = v9;
  if (v9 == resultCopy[7])
  {
  }

  else
  {
    v11 = [(NSArray *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v12 = self->_rejectedSuggestions;
  v13 = v12;
  if (v12 == resultCopy[9])
  {
  }

  else
  {
    v14 = [(NSArray *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v15 = self->_session;
  v16 = v15;
  if (v15 == resultCopy[10])
  {
  }

  else
  {
    v17 = [(ATXProactiveSuggestionUIFeedbackSession *)v15 isEqual:?];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  consumerSubType = [(ATXProactiveSuggestionFeedbackResult *)self consumerSubType];
  if (consumerSubType != [resultCopy consumerSubType])
  {
LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  clientCacheUpdate = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  clientCacheUpdate2 = [resultCopy clientCacheUpdate];
  v21 = clientCacheUpdate2;
  if (clientCacheUpdate == clientCacheUpdate2)
  {
  }

  else
  {
    clientCacheUpdate3 = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
    clientCacheUpdate4 = [resultCopy clientCacheUpdate];
    v24 = [clientCacheUpdate3 isEqual:clientCacheUpdate4];

    if (!v24)
    {
      goto LABEL_25;
    }
  }

  uiCacheUpdate = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
  uiCacheUpdate2 = [resultCopy uiCacheUpdate];
  v27 = uiCacheUpdate2;
  if (uiCacheUpdate == uiCacheUpdate2)
  {
  }

  else
  {
    uiCacheUpdate3 = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
    uiCacheUpdate4 = [resultCopy uiCacheUpdate];
    v30 = [uiCacheUpdate3 isEqual:uiCacheUpdate4];

    if (!v30)
    {
      goto LABEL_25;
    }
  }

  context = [(ATXProactiveSuggestionFeedbackResult *)self context];
  context2 = [resultCopy context];
  if (context == context2)
  {
    v31 = 1;
  }

  else
  {
    context3 = [(ATXProactiveSuggestionFeedbackResult *)self context];
    context4 = [resultCopy context];
    v31 = [context3 isEqual:context4];
  }

LABEL_26:
  return v31 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXProactiveSuggestionFeedbackResult consumerSubType](self, "consumerSubType")}];
  [coderCopy encodeObject:v4 forKey:@"consumerSubType"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXProactiveSuggestionFeedbackResult sessionType](self, "sessionType")}];
  [coderCopy encodeObject:v5 forKey:@"sessionType"];

  clientCacheUpdate = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  [coderCopy encodeObject:clientCacheUpdate forKey:@"clientCache"];

  uiCacheUpdate = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
  [coderCopy encodeObject:uiCacheUpdate forKey:@"uiCache"];

  context = [(ATXProactiveSuggestionFeedbackResult *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  context2 = [(ATXProactiveSuggestionFeedbackResult *)self context];

  if (context2)
  {
    context3 = [(ATXProactiveSuggestionFeedbackResult *)self context];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [coderCopy encodeObject:v12 forKey:@"contextString"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_engagementType];
  [coderCopy encodeObject:v13 forKey:@"uiEngagementType"];

  [coderCopy encodeObject:self->_engagedSuggestions forKey:@"engaged"];
  [coderCopy encodeObject:self->_shownSuggestions forKey:@"shown"];
  [coderCopy encodeObject:self->_rejectedSuggestions forKey:@"dismissed"];
  [coderCopy encodeObject:self->_session forKey:@"session"];
}

- (ATXProactiveSuggestionUIFeedbackResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"consumerSubType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v7];

  if (v8)
  {
    error = [coderCopy error];

    if (!error)
    {
      v12 = [MEMORY[0x1E698B028] consumerSubtypeForString:v8 found:0];
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0x1E69C5D78];
        v15 = objc_opt_class();
        v16 = __atxlog_handle_blending_ecosystem(v15);
        v17 = [v14 robustDecodeObjectOfClass:v15 forKey:@"sessionType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v16];

        if (!v17 || ([coderCopy error], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          selfCopy = 0;
LABEL_52:

          goto LABEL_4;
        }

        v19 = MEMORY[0x1E69C5D78];
        v20 = objc_opt_class();
        v21 = __atxlog_handle_blending_ecosystem(v20);
        v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"clientCache" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v21];

        if (!v22 || ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          selfCopy = 0;
LABEL_51:

          goto LABEL_52;
        }

        v76 = v22;
        v24 = MEMORY[0x1E69C5D78];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_blending_ecosystem(v25);
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"uiCache" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v26];

        if (!v27 || ([coderCopy error], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
        {
          selfCopy = 0;
          v22 = v76;
LABEL_50:

          goto LABEL_51;
        }

        v75 = v27;
        v29 = MEMORY[0x1E69C5D78];
        v30 = objc_opt_class();
        v31 = __atxlog_handle_blending_ecosystem(v30);
        v32 = [v29 robustDecodeObjectOfClass:v30 forKey:@"contextString" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v31];

        error2 = [coderCopy error];

        if (error2)
        {
          selfCopy = 0;
          v27 = v75;
          v22 = v76;
LABEL_49:

          goto LABEL_50;
        }

        v22 = v76;
        if (v32 && (-[ATXProactiveSuggestionFeedbackResult validContextClassNames](self, "validContextClassNames"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 containsObject:v32], v34, v35))
        {
          v36 = NSClassFromString(v32);
          v37 = v36;
          if (!v36 || (v73 = MEMORY[0x1E69C5D78], __atxlog_handle_blending_ecosystem(v36), v38 = objc_claimAutoreleasedReturnValue(), [v73 robustDecodeObjectOfClass:v37 forKey:@"context" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v38], v37 = objc_claimAutoreleasedReturnValue(), v38, !v37) || (objc_msgSend(coderCopy, "error"), v39 = objc_claimAutoreleasedReturnValue(), v39, v39))
          {
            selfCopy = 0;
            v27 = v75;
LABEL_48:

            goto LABEL_49;
          }

          v74 = v37;
          v71 = v32;
        }

        else
        {
          v71 = v32;
          v74 = 0;
        }

        v40 = MEMORY[0x1E69C5D78];
        v41 = objc_opt_class();
        v42 = __atxlog_handle_blending_ecosystem(v41);
        v43 = [v40 robustDecodeObjectOfClass:v41 forKey:@"uiEngagementType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v42];

        v72 = v43;
        if (v43)
        {
          error3 = [coderCopy error];

          v27 = v75;
          if (error3)
          {
            selfCopy = 0;
LABEL_47:
            v37 = v74;

            v32 = v71;
            goto LABEL_48;
          }

          v45 = objc_autoreleasePoolPush();
          v46 = objc_alloc(MEMORY[0x1E695DFD8]);
          v47 = objc_opt_class();
          v48 = [v46 initWithObjects:{v47, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v45);
          v49 = MEMORY[0x1E69C5D78];
          v51 = __atxlog_handle_blending_ecosystem(v50);
          v52 = [v49 robustDecodeObjectOfClasses:v48 forKey:@"engaged" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v51];

          if (v52 && ([coderCopy error], v53 = objc_claimAutoreleasedReturnValue(), v53, !v53))
          {
            v55 = MEMORY[0x1E69C5D78];
            v56 = __atxlog_handle_blending_ecosystem(v54);
            v57 = [v55 robustDecodeObjectOfClasses:v48 forKey:@"shown" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v56];

            v70 = v57;
            if (v57 && ([coderCopy error], v58 = objc_claimAutoreleasedReturnValue(), v58, !v58))
            {
              v60 = MEMORY[0x1E69C5D78];
              v61 = __atxlog_handle_blending_ecosystem(v59);
              v62 = [v60 robustDecodeObjectOfClasses:v48 forKey:@"dismissed" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v61];

              v63 = v62;
              if (v62 && ([coderCopy error], v64 = objc_claimAutoreleasedReturnValue(), v64, !v64))
              {
                v69 = MEMORY[0x1E69C5D78];
                v65 = objc_opt_class();
                v66 = __atxlog_handle_blending_ecosystem(v65);
                v67 = [v69 robustDecodeObjectOfClass:v65 forKey:@"session" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v66];

                if (v67 && ([coderCopy error], v68 = objc_claimAutoreleasedReturnValue(), v68, !v68))
                {
                  self = -[ATXProactiveSuggestionUIFeedbackResult initWithEngagementType:shownSuggestions:engagedSuggestions:rejectedSuggestions:session:consumerSubType:clientCacheUpdate:uiCacheUpdate:context:](self, "initWithEngagementType:shownSuggestions:engagedSuggestions:rejectedSuggestions:session:consumerSubType:clientCacheUpdate:uiCacheUpdate:context:", [v72 integerValue], v70, v52, v63, v67, v13, v76, v75, v74);
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

          v22 = v76;
        }

        else
        {
          selfCopy = 0;
        }

        v27 = v75;
        goto LABEL_47;
      }
    }
  }

  selfCopy = 0;
LABEL_4:

  return selfCopy;
}

- (id)description
{
  v24 = objc_autoreleasePoolPush();
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v17 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXProactiveSuggestionFeedbackResult consumerSubType](self, "consumerSubType")}];
  v26 = [ATXProactiveSuggestionFeedbackTypes stringForUIFeedbackEngagementType:[(ATXProactiveSuggestionUIFeedbackResult *)self engagementType]];
  session = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  sessionStartDate = [session sessionStartDate];
  session2 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  sessionEndDate = [session2 sessionEndDate];
  engagedSuggestions = [(ATXProactiveSuggestionUIFeedbackResult *)self engagedSuggestions];
  v4 = [(ATXProactiveSuggestionUIFeedbackResult *)self suggestionExecutableObjectListFromSuggestions:engagedSuggestions];
  rejectedSuggestions = [(ATXProactiveSuggestionUIFeedbackResult *)self rejectedSuggestions];
  v13 = [(ATXProactiveSuggestionUIFeedbackResult *)self suggestionExecutableObjectListFromSuggestions:rejectedSuggestions];
  shownSuggestions = [(ATXProactiveSuggestionUIFeedbackResult *)self shownSuggestions];
  v5 = [(ATXProactiveSuggestionUIFeedbackResult *)self suggestionExecutableObjectListFromSuggestions:shownSuggestions];
  clientCacheUpdate = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  clientModelId = [clientCacheUpdate clientModelId];
  session3 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  blendingUICacheUpdateUUID = [session3 blendingUICacheUpdateUUID];
  session4 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  sessionMetadata = [session4 sessionMetadata];
  v21 = [v20 initWithFormat:@"%@: %@ - %@ \nsession start: %@, session end: %@ \nengaged suggestions: %@ \nrejected suggestions: %@ \nshown suggestions: %@ \nclient model id: %@ \nblending cache uuid: %@ \nmetadata: %@", v19, v17, v26, sessionStartDate, sessionEndDate, v4, v13, v5, clientModelId, blendingUICacheUpdateUUID, sessionMetadata];

  objc_autoreleasePoolPop(v24);

  return v21;
}

- (id)suggestionExecutableObjectListFromSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        executableSpecification = [v10 executableSpecification];
        executableIdentifier = [executableSpecification executableIdentifier];
        [v4 addObject:executableIdentifier];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 componentsJoinedByString:{@", "}];

  return v14;
}

@end