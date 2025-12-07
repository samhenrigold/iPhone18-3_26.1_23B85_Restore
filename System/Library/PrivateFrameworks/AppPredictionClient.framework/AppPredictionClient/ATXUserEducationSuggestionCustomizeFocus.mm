@interface ATXUserEducationSuggestionCustomizeFocus
- (ATXUserEducationSuggestionCustomizeFocus)initWithCoder:(id)coder;
- (ATXUserEducationSuggestionCustomizeFocus)initWithModeSemanticType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserEducationSuggestionCustomizeFocus

- (ATXUserEducationSuggestionCustomizeFocus)initWithModeSemanticType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionCustomizeFocus;
  result = [(ATXUserEducationSuggestion *)&v5 initWithRandomUUID];
  if (result)
  {
    result->_modeSemanticType = type;
  }

  return result;
}

- (id)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = DNDModeSemanticTypeToString();
  v5 = [v2 initWithFormat:@"<%@ modeSemanticType: %@>", v3, v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionCustomizeFocus;
  coderCopy = coder;
  [(ATXUserEducationSuggestion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_modeSemanticType forKey:{@"DiscoverySuggestions.codingKeyForModeSemanticType", v5.receiver, v5.super_class}];
}

- (ATXUserEducationSuggestionCustomizeFocus)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ATXUserEducationSuggestionCustomizeFocus;
  v5 = [(ATXUserEducationSuggestion *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_modeSemanticType = [coderCopy decodeIntegerForKey:@"DiscoverySuggestions.codingKeyForModeSemanticType"];
    error = [coderCopy error];

    if (!error)
    {
      v17 = v5;
      goto LABEL_9;
    }

    v8 = __atxlog_handle_context_user_education_suggestions(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [coderCopy error];
      *buf = 136315394;
      v21 = "[ATXUserEducationSuggestionCustomizeFocus initWithCoder:]";
      v22 = 2114;
      v23 = error2;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s: decoding error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = __atxlog_handle_context_user_education_suggestions(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXUserEducationSuggestionCustomizeFocus *)v8 initWithCoder:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (void)initWithCoder:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXUserEducationSuggestionCustomizeFocus initWithCoder:]";
  OUTLINED_FUNCTION_0_0(&dword_1BF549000, a1, a3, "%s: decoding issue, got nil instance", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end