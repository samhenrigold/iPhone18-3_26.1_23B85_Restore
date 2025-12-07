@interface ATXProactiveSuggestion
+ (BOOL)suggestionsHaveChangedFromPreviousSuggestions:(id)suggestions newSuggestions:(id)newSuggestions;
+ (id)protoSuggestionsFromSuggestions:(id)suggestions;
+ (id)suggestionsFromProtoSuggestions:(id)suggestions;
- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification;
- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification uuid:(id)uuid;
- (ATXProactiveSuggestion)initWithCoder:(id)coder;
- (ATXProactiveSuggestion)initWithProto:(id)proto;
- (ATXProactiveSuggestion)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)fuzzyIsEqualToProactiveSuggestion:(id)suggestion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidForSuggestionsWidget;
- (INIntent)intent;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSDictionary)metadata;
- (NSString)appBundleIdentifier;
- (NSString)criterion;
- (NSString)suggestionIdentifier;
- (NSString)widgetBundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)infoSuggestion;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)applicableLayouts;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXProactiveSuggestion

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  clientModelSpecification = self->_clientModelSpecification;
  executableIdentifier = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableIdentifier];
  executableDescription = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableDescription];
  v7 = [v3 initWithFormat:@"Client Model Spec: %@   Executable ID: %@   Executable Description: %@   UI Spec: %@   Score Spec: %@", clientModelSpecification, executableIdentifier, executableDescription, self->_uiSpecification, self->_scoreSpecification];

  return v7;
}

- (id)proto
{
  v3 = objc_opt_new();
  proto = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setClientModelSpecification:proto];

  proto2 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setExecutableSpecification:proto2];

  proto3 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setScoreSpecification:proto3];

  proto4 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setUiSpecification:proto4];

  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBProactiveSuggestion *)v3 setUuidString:uUIDString];

  uuidString = [(ATXPBProactiveSuggestion *)v3 uuidString];

  if (!uuidString)
  {
    v11 = __atxlog_handle_blending(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestion *)&self->_uuid proto];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification hash];
    v5 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification hash]- v4 + 32 * v4;
    v6 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification hash]- v5 + 32 * v5;
    result = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification hash]- v6 + 32 * v6;
    self->_hash = result;
  }

  return result;
}

- (id)infoSuggestion
{
  executableSpecification = [(ATXProactiveSuggestion *)self executableSpecification];
  executableObject = [executableSpecification executableObject];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = executableObject;
  }

  else
  {
    v6 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestion(ATXProactiveCardSuggestionClient) *)v6 infoSuggestion];
    }

    v5 = 0;
  }

  return v5;
}

- (NSString)appBundleIdentifier
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  appBundleIdentifier = [infoSuggestion appBundleIdentifier];

  return appBundleIdentifier;
}

- (NSString)widgetBundleIdentifier
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  widgetBundleIdentifier = [infoSuggestion widgetBundleIdentifier];

  return widgetBundleIdentifier;
}

- (NSString)criterion
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  criterion = [infoSuggestion criterion];

  return criterion;
}

- (unint64_t)applicableLayouts
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  layouts = [infoSuggestion layouts];

  return layouts;
}

- (NSString)suggestionIdentifier
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  suggestionIdentifier = [infoSuggestion suggestionIdentifier];

  return suggestionIdentifier;
}

- (NSDate)startDate
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  startDate = [infoSuggestion startDate];

  return startDate;
}

- (NSDate)endDate
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  endDate = [infoSuggestion endDate];

  return endDate;
}

- (INIntent)intent
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  intent = [infoSuggestion intent];

  return intent;
}

- (NSDictionary)metadata
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  metadata = [infoSuggestion metadata];

  return metadata;
}

- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification
{
  scoreSpecificationCopy = scoreSpecification;
  uiSpecificationCopy = uiSpecification;
  executableSpecificationCopy = executableSpecification;
  specificationCopy = specification;
  v14 = objc_opt_new();
  v15 = [(ATXProactiveSuggestion *)self initWithClientModelSpecification:specificationCopy executableSpecification:executableSpecificationCopy uiSpecification:uiSpecificationCopy scoreSpecification:scoreSpecificationCopy uuid:v14];

  return v15;
}

- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification uuid:(id)uuid
{
  specificationCopy = specification;
  executableSpecificationCopy = executableSpecification;
  uiSpecificationCopy = uiSpecification;
  scoreSpecificationCopy = scoreSpecification;
  uuidCopy = uuid;
  v21.receiver = self;
  v21.super_class = ATXProactiveSuggestion;
  v17 = [(ATXProactiveSuggestion *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientModelSpecification, specification);
    objc_storeStrong(&v18->_executableSpecification, executableSpecification);
    objc_storeStrong(&v18->_uiSpecification, uiSpecification);
    objc_storeStrong(&v18->_scoreSpecification, scoreSpecification);
    objc_storeStrong(&v18->_uuid, uuid);
  }

  return v18;
}

- (BOOL)isValidForSuggestionsWidget
{
  executableType = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType];
  if (executableType)
  {
    LOBYTE(executableType) = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 3 && [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 4 && [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 11;
  }

  return executableType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXProactiveSuggestion allocWithZone:zone];
  v5 = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification copy];
  v6 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification copy];
  v7 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification copy];
  v8 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification copy];
  v9 = [(NSUUID *)self->_uuid copy];
  v10 = [(ATXProactiveSuggestion *)v4 initWithClientModelSpecification:v5 executableSpecification:v6 uiSpecification:v7 scoreSpecification:v8 uuid:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_clientModelSpecification;
      v7 = v6;
      if (v6 == v5->_clientModelSpecification)
      {
      }

      else
      {
        v8 = [(ATXProactiveSuggestionClientModelSpecification *)v6 isEqual:?];

        if (!v8)
        {
          goto LABEL_19;
        }
      }

      v10 = self->_executableSpecification;
      v11 = v10;
      if (v10 == v5->_executableSpecification)
      {
      }

      else
      {
        v12 = [(ATXProactiveSuggestionExecutableSpecification *)v10 isEqual:?];

        if (!v12)
        {
          goto LABEL_19;
        }
      }

      v13 = self->_uiSpecification;
      v14 = v13;
      if (v13 == v5->_uiSpecification)
      {
      }

      else
      {
        v15 = [(ATXProactiveSuggestionUISpecification *)v13 isEqual:?];

        if (!v15)
        {
          goto LABEL_19;
        }
      }

      v16 = self->_scoreSpecification;
      v17 = v16;
      if (v16 == v5->_scoreSpecification)
      {
      }

      else
      {
        v18 = [(ATXProactiveSuggestionScoreSpecification *)v16 isEqual:?];

        if (!v18)
        {
LABEL_19:
          v9 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      v19 = self->_uuid;
      v20 = v19;
      if (v19 == v5->_uuid)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSUUID *)v19 isEqual:?];
      }

      goto LABEL_25;
    }

    v9 = 0;
  }

LABEL_26:

  return v9;
}

- (BOOL)fuzzyIsEqualToProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (self == suggestionCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[ATXProactiveSuggestion clientModelSpecification](self, "clientModelSpecification"), v5 = objc_claimAutoreleasedReturnValue(), -[ATXProactiveSuggestion clientModelSpecification](suggestionCopy, "clientModelSpecification"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 fuzzyIsEqualToClientModelSpecification:v6], v6, v5, v7) && (-[ATXProactiveSuggestion executableSpecification](self, "executableSpecification"), v8 = objc_claimAutoreleasedReturnValue(), -[ATXProactiveSuggestion executableSpecification](suggestionCopy, "executableSpecification"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "fuzzyIsEqualToExecutableSpecification:", v9), v9, v8, v10) && (-[ATXProactiveSuggestion uiSpecification](self, "uiSpecification"), v11 = objc_claimAutoreleasedReturnValue(), -[ATXProactiveSuggestion uiSpecification](suggestionCopy, "uiSpecification"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "fuzzyIsEqualToUISpecification:", v12), v12, v11, v13))
    {
      scoreSpecification = [(ATXProactiveSuggestion *)self scoreSpecification];
      scoreSpecification2 = [(ATXProactiveSuggestion *)suggestionCopy scoreSpecification];
      v16 = [scoreSpecification fuzzyIsEqualToScoreSpecification:scoreSpecification2];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (BOOL)suggestionsHaveChangedFromPreviousSuggestions:(id)suggestions newSuggestions:(id)newSuggestions
{
  suggestionsCopy = suggestions;
  newSuggestionsCopy = newSuggestions;
  if ([newSuggestionsCopy count] || objc_msgSend(suggestionsCopy, "count"))
  {
    v7 = [newSuggestionsCopy count];
    v8 = [suggestionsCopy count];
    if (v7 == v8)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __87__ATXProactiveSuggestion_suggestionsHaveChangedFromPreviousSuggestions_newSuggestions___block_invoke;
      v15[3] = &unk_1E86A4830;
      v16 = suggestionsCopy;
      v17 = &v18;
      v9 = [newSuggestionsCopy enumerateObjectsUsingBlock:v15];
      v10 = *(v19 + 24);
      if ((v10 & 1) == 0)
      {
        v11 = __atxlog_handle_blending(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          +[ATXProactiveSuggestion suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:];
        }
      }

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v12 = __atxlog_handle_blending(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[ATXProactiveSuggestion suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:];
      }

      v10 = 1;
    }
  }

  else
  {
    v13 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[ATXProactiveSuggestion suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:];
    }

    v10 = 0;
  }

  return v10;
}

void __87__ATXProactiveSuggestion_suggestionsHaveChangedFromPreviousSuggestions_newSuggestions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 hash];
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if (v8 == [v9 hash])
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v7 fuzzyIsEqualToProactiveSuggestion:v10];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = __atxlog_handle_blending(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __87__ATXProactiveSuggestion_suggestionsHaveChangedFromPreviousSuggestions_newSuggestions___block_invoke_cold_1();
  }

  v15 = __atxlog_handle_blending(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v7 uiSpecification];
    v17 = [v16 title];
    v18 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v19 = [v18 uiSpecification];
    v20 = [v19 title];
    v21 = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v20;
    _os_log_debug_impl(&dword_1DEFC4000, v15, OS_LOG_TYPE_DEBUG, "Blending: New suggestion title: %@, Previous suggestion title: %@.", &v21, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
LABEL_10:
}

- (id)encodeAsProto
{
  proto = [(ATXProactiveSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXProactiveSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestion alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_37;
    }

    v6 = protoCopy;
    hasUuidString = [(ATXPBProactiveSuggestion *)v6 hasUuidString];
    if (!hasUuidString)
    {
      v10 = __atxlog_handle_blending(hasUuidString);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_36;
    }

    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    uuidString = [(ATXPBProactiveSuggestion *)v6 uuidString];
    v10 = [v8 initWithUUIDString:uuidString];

    if (!v10)
    {
      v14 = __atxlog_handle_blending(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_35;
    }

    v12 = [ATXProactiveSuggestionClientModelSpecification alloc];
    clientModelSpecification = [(ATXPBProactiveSuggestion *)v6 clientModelSpecification];
    v14 = [(ATXProactiveSuggestionClientModelSpecification *)v12 initWithProto:clientModelSpecification];

    if (!v14)
    {
      v18 = __atxlog_handle_blending(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_34;
    }

    v16 = [ATXProactiveSuggestionExecutableSpecification alloc];
    executableSpecification = [(ATXPBProactiveSuggestion *)v6 executableSpecification];
    v18 = [(ATXProactiveSuggestionExecutableSpecification *)v16 initWithProto:executableSpecification];

    if (!v18)
    {
      v22 = __atxlog_handle_blending(v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_33;
    }

    v20 = [ATXProactiveSuggestionUISpecification alloc];
    uiSpecification = [(ATXPBProactiveSuggestion *)v6 uiSpecification];
    v22 = [(ATXProactiveSuggestionUISpecification *)v20 initWithProto:uiSpecification];

    if (v22)
    {
      v24 = [ATXProactiveSuggestionScoreSpecification alloc];
      scoreSpecification = [(ATXPBProactiveSuggestion *)v6 scoreSpecification];
      v26 = [(ATXProactiveSuggestionScoreSpecification *)v24 initWithProto:scoreSpecification];

      if (v26)
      {
        self = [(ATXProactiveSuggestion *)self initWithClientModelSpecification:v14 executableSpecification:v18 uiSpecification:v22 scoreSpecification:v26 uuid:v10];
        selfCopy = self;
LABEL_32:

LABEL_33:
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      v29 = __atxlog_handle_blending(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }
    }

    else
    {
      v26 = __atxlog_handle_blending(v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_32;
  }

  selfCopy = 0;
LABEL_38:

  return selfCopy;
}

+ (id)suggestionsFromProtoSuggestions:(id)suggestions
{
  v20 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  if (suggestionsCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = suggestionsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[ATXProactiveSuggestion alloc] initWithProto:*(*(&v15 + 1) + 8 * i)];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = __atxlog_handle_default(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              [(ATXProactiveSuggestion *)&v13 suggestionsFromProtoSuggestions:v14];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)protoSuggestionsFromSuggestions:(id)suggestions
{
  v20 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  if (suggestionsCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = suggestionsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          proto = [*(*(&v15 + 1) + 8 * i) proto];
          if (proto)
          {
            [v4 addObject:proto];
          }

          else
          {
            v11 = __atxlog_handle_default(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              [(ATXProactiveSuggestion *)&v13 protoSuggestionsFromSuggestions:v14];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXProactiveSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestion *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"uuid";
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v11[0] = uUIDString;
  v10[1] = @"clientModelSpecification";
  jsonRawData = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification jsonRawData];
  v11[1] = jsonRawData;
  v10[2] = @"uiSpecification";
  jsonRawData2 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification jsonRawData];
  v11[2] = jsonRawData2;
  v10[3] = @"scoreSpecification";
  jsonRawData3 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification jsonRawData];
  v11[3] = jsonRawData3;
  v10[4] = @"executableSpecification";
  jsonRawData4 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification jsonRawData];
  v11[4] = jsonRawData4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (void)suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v7 = *MEMORY[0x1E69E9840];
  [v2 count];
  v3 = 134218240;
  v4 = v1;
  v5 = 2048;
  v6 = [OUTLINED_FUNCTION_5_1() count];
  _os_log_debug_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEBUG, "Blending: New suggestions and previous suggestions have different counts. New %lu, Previous %lu.", &v3, 0x16u);
}

- (void)initWithProto:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_1();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v4, v5, "Unable to construct class %@ from ProtoBuf object. Protobuf object was of class: %@", v6, v7, v8, v9);
}

- (void)proto
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Proto uuidString not set for Proactive Suggestion with UUID: %@. Suggestion: %@", &v4, 0x16u);
}

@end