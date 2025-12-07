@interface ATXUserEducationSuggestion
- (ATXUserEducationSuggestion)initWithCoder:(id)coder;
- (ATXUserEducationSuggestion)initWithRandomUUID;
- (ATXUserEducationSuggestion)initWithUUID_ATXUserEducationSuggestion:(id)suggestion;
- (id)description;
@end

@implementation ATXUserEducationSuggestion

- (ATXUserEducationSuggestion)initWithUUID_ATXUserEducationSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = ATXUserEducationSuggestion;
  v6 = [(ATXUserEducationSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, suggestion);
  }

  return v7;
}

- (ATXUserEducationSuggestion)initWithRandomUUID
{
  v3 = objc_opt_new();
  v4 = [(ATXUserEducationSuggestion *)self initWithUUID_ATXUserEducationSuggestion:v3];

  return v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ uuid: %@>", objc_opt_class(), self->_uuid];

  return v2;
}

- (ATXUserEducationSuggestion)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_context_user_education_suggestions(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"DiscoverySuggestions.codingKeyForUUID" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXUserEducationSuggestion" errorCode:-7 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    v11 = __atxlog_handle_context_user_education_suggestions(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [coderCopy error];
      *buf = 136315394;
      v16 = "[ATXUserEducationSuggestion initWithCoder:]";
      v17 = 2114;
      v18 = error2;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%s: decoding error: %{public}@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v13 = [objc_alloc(objc_opt_class()) initWithUUID_ATXUserEducationSuggestion:v8];
  }

  return v13;
}

@end