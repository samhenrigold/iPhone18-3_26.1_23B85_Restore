@interface ATXLightweightProactiveSuggestion
+ (id)lightWeightSuggestionDescriptionsFromLightWeightSuggestions:(id)suggestions;
+ (id)lightWeightSuggestionsFromProtoLightWeightSuggestions:(id)suggestions;
+ (id)lightWeightSuggestionsFromSuggestions:(id)suggestions;
+ (id)protoLightWeightSuggestionsFromLightWeightSuggestions:(id)suggestions;
- (ATXLightweightProactiveSuggestion)initWithExecutableIdentifier:(id)identifier executableType:(int64_t)type scoreSpecification:(id)specification predictionReasons:(unint64_t)reasons;
- (ATXLightweightProactiveSuggestion)initWithProactiveSuggestion:(id)suggestion;
- (ATXLightweightProactiveSuggestion)initWithProto:(id)proto;
- (ATXLightweightProactiveSuggestion)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXLightweightProactiveSuggestion:(id)suggestion;
- (id)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXLightweightProactiveSuggestion

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setExecutableIdentifier:self->_executableIdentifier];
  executableType = self->_executableType;
  if (executableType >= 0xC)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_executableType];
  }

  else
  {
    v5 = off_1E86A4C38[executableType];
  }

  [v3 setExecutableType:v5];

  proto = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification proto];
  [v3 setScoreSpecification:proto];

  [v3 setPredictionReasons:self->_predictionReasons];

  return v3;
}

- (ATXLightweightProactiveSuggestion)initWithProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];
  executableSpecification2 = [suggestionCopy executableSpecification];
  executableType = [executableSpecification2 executableType];
  scoreSpecification = [suggestionCopy scoreSpecification];
  uiSpecification = [suggestionCopy uiSpecification];

  v11 = -[ATXLightweightProactiveSuggestion initWithExecutableIdentifier:executableType:scoreSpecification:predictionReasons:](self, "initWithExecutableIdentifier:executableType:scoreSpecification:predictionReasons:", executableIdentifier, executableType, scoreSpecification, [uiSpecification predictionReasons]);
  return v11;
}

- (ATXLightweightProactiveSuggestion)initWithExecutableIdentifier:(id)identifier executableType:(int64_t)type scoreSpecification:(id)specification predictionReasons:(unint64_t)reasons
{
  identifierCopy = identifier;
  specificationCopy = specification;
  v16.receiver = self;
  v16.super_class = ATXLightweightProactiveSuggestion;
  v13 = [(ATXLightweightProactiveSuggestion *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_executableIdentifier, identifier);
    v14->_executableType = type;
    objc_storeStrong(&v14->_scoreSpecification, specification);
    v14->_predictionReasons = reasons;
  }

  return v14;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  executableIdentifier = self->_executableIdentifier;
  executableType = self->_executableType;
  if (executableType >= 0xC)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_executableType];
  }

  else
  {
    v5 = off_1E86A4C38[executableType];
  }

  v6 = [v2 stringWithFormat:@"%@ (%@)", executableIdentifier, v5];

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLightweightProactiveSuggestion *)self isEqualToATXLightweightProactiveSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXLightweightProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = suggestionCopy;
  if (self->_executableType != suggestionCopy[3] || self->_predictionReasons != suggestionCopy[5])
  {
    goto LABEL_5;
  }

  v6 = self->_scoreSpecification;
  v7 = v6;
  if (v6 == v5[4])
  {
  }

  else
  {
    v8 = [(ATXProactiveSuggestionScoreSpecification *)v6 isEqual:?];

    if (!v8)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }
  }

  v11 = self->_executableIdentifier;
  v12 = v11;
  if (v11 == v5[2])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSString *)v11 isEqual:?];
  }

LABEL_6:
  return v9;
}

- (ATXLightweightProactiveSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBLightweightProactiveSuggestion alloc] initWithData:dataCopy];

    self = [(ATXLightweightProactiveSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXLightweightProactiveSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXLightweightProactiveSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __atxlog_handle_blending(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v6];
      }

      selfCopy = 0;
      goto LABEL_44;
    }

    v6 = protoCopy;
    executableIdentifier = [v6 executableIdentifier];
    if (executableIdentifier)
    {
      v8 = executableIdentifier;
      executableType = [v6 executableType];

      if (executableType)
      {
        hasScoreSpecification = [v6 hasScoreSpecification];
        v11 = [ATXProactiveSuggestionScoreSpecification alloc];
        v12 = v11;
        if (hasScoreSpecification)
        {
          scoreSpecification = [v6 scoreSpecification];
          v14 = [(ATXProactiveSuggestionScoreSpecification *)v12 initWithProto:scoreSpecification];

          if (!v14)
          {
            v14 = __atxlog_handle_blending(v15);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [ATXLightweightProactiveSuggestion initWithProto:v6];
            }

LABEL_15:
            selfCopy = 0;
LABEL_43:

LABEL_44:
            goto LABEL_45;
          }
        }

        else
        {
          v14 = [(ATXProactiveSuggestionScoreSpecification *)v11 initWithRawScore:0 suggestedConfidenceCategory:0.0];
        }

        executableIdentifier2 = [v6 executableIdentifier];
        executableType2 = [v6 executableType];
        if ([executableType2 isEqualToString:@"Unknown"])
        {
          v19 = 0;
        }

        else if ([executableType2 isEqualToString:@"App"])
        {
          v19 = 1;
        }

        else if ([executableType2 isEqualToString:@"Action"])
        {
          v19 = 2;
        }

        else if ([executableType2 isEqualToString:@"Widget"])
        {
          v19 = 3;
        }

        else if ([executableType2 isEqualToString:@"Tip"])
        {
          v19 = 4;
        }

        else if ([executableType2 isEqualToString:@"AppClip"])
        {
          v19 = 5;
        }

        else if ([executableType2 isEqualToString:@"Interaction"])
        {
          v19 = 6;
        }

        else if ([executableType2 isEqualToString:@"ContextualAction"])
        {
          v19 = 7;
        }

        else if ([executableType2 isEqualToString:@"SpotlightAction"])
        {
          v19 = 8;
        }

        else if ([executableType2 isEqualToString:@"ShortcutsAction"])
        {
          v19 = 9;
        }

        else if ([executableType2 isEqualToString:@"LinkAction"])
        {
          v19 = 10;
        }

        else if ([executableType2 isEqualToString:@"Max"])
        {
          v19 = 11;
        }

        else
        {
          v19 = 0;
        }

        self = [(ATXLightweightProactiveSuggestion *)self initWithExecutableIdentifier:executableIdentifier2 executableType:v19 scoreSpecification:v14 predictionReasons:[v6 predictionReasons]];
        selfCopy = self;
        goto LABEL_43;
      }
    }

    v14 = __atxlog_handle_blending(executableIdentifier);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXLightweightProactiveSuggestion initWithProto:v6];
    }

    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_45:

  return selfCopy;
}

+ (id)lightWeightSuggestionDescriptionsFromLightWeightSuggestions:(id)suggestions
{
  v17 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = suggestionsCopy;
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

        v10 = [*(*(&v12 + 1) + 8 * i) description];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)lightWeightSuggestionsFromProtoLightWeightSuggestions:(id)suggestions
{
  v20 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
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
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[ATXLightweightProactiveSuggestion alloc] initWithProto:*(*(&v15 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        else
        {
          v11 = __atxlog_handle_blending(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            [(ATXLightweightProactiveSuggestion(ArrayHelpers) *)&v13 lightWeightSuggestionsFromProtoLightWeightSuggestions:v14, v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)protoLightWeightSuggestionsFromLightWeightSuggestions:(id)suggestions
{
  v23 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        proto = [v11 proto];
        if (proto)
        {
          [v4 addObject:proto];
        }

        else
        {
          v13 = __atxlog_handle_blending(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = v15;
            v21 = v11;
            _os_log_fault_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_FAULT, "Unable to generate proto for ATXLightweightProactiveSuggestion: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)lightWeightSuggestionsFromSuggestions:(id)suggestions
{
  v19 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [ATXLightweightProactiveSuggestion alloc];
        v12 = [(ATXLightweightProactiveSuggestion *)v11 initWithProactiveSuggestion:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)initWithProto:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 executableIdentifier];
  v3 = [a1 executableType];
  v10 = 136315650;
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5(&dword_1DEFC4000, v4, v5, "%s: Returning nil because scoreSpecification initialization from proto returned nil. (exeId %@, type %@)", v6, v7, v8, v9, v10);
}

- (void)initWithProto:(void *)a1 .cold.3(void *a1)
{
  v2 = [a1 executableIdentifier];
  v3 = [a1 executableType];
  v10 = 136315650;
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5(&dword_1DEFC4000, v4, v5, "%s: Returning nil because proto is missing exeId and/or exeType. (exeID %@, type %@)", v6, v7, v8, v9, v10);
}

@end