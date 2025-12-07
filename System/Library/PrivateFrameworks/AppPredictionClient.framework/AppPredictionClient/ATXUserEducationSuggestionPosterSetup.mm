@interface ATXUserEducationSuggestionPosterSetup
- (ATXUserEducationSuggestionPosterSetup)initWithCoder:(id)coder;
- (ATXUserEducationSuggestionPosterSetup)initWithPosterId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserEducationSuggestionPosterSetup

- (ATXUserEducationSuggestionPosterSetup)initWithPosterId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = ATXUserEducationSuggestionPosterSetup;
  initWithRandomUUID = [(ATXUserEducationSuggestion *)&v9 initWithRandomUUID];
  v7 = initWithRandomUUID;
  if (initWithRandomUUID)
  {
    objc_storeStrong(&initWithRandomUUID->_posterId, id);
  }

  return v7;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ posterId: %@>", objc_opt_class(), self->_posterId];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionPosterSetup;
  coderCopy = coder;
  [(ATXUserEducationSuggestion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_posterId forKey:{@"DiscoverySuggestions.codingKeyForPosterId", v5.receiver, v5.super_class}];
}

- (ATXUserEducationSuggestionPosterSetup)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ATXUserEducationSuggestionPosterSetup;
  v5 = [(ATXUserEducationSuggestion *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E69C5D78];
    v7 = objc_opt_class();
    v8 = __atxlog_handle_context_user_education_suggestions(v7);
    v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"DiscoverySuggestions.codingKeyForPosterId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXUserEducationSuggestion" errorCode:-7 logHandle:v8];
    posterId = v5->_posterId;
    v5->_posterId = v9;

    error = [coderCopy error];

    if (!error)
    {
      v22 = v5;
      goto LABEL_9;
    }

    v13 = __atxlog_handle_context_user_education_suggestions(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [coderCopy error];
      *buf = 136315394;
      v26 = "[ATXUserEducationSuggestionPosterSetup initWithCoder:]";
      v27 = 2114;
      v28 = error2;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "%s: decoding error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v13 = __atxlog_handle_context_user_education_suggestions(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXUserEducationSuggestionPosterSetup *)v13 initWithCoder:v15, v16, v17, v18, v19, v20, v21];
    }
  }

  v22 = 0;
LABEL_9:

  return v22;
}

- (void)initWithCoder:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXUserEducationSuggestionPosterSetup initWithCoder:]";
  OUTLINED_FUNCTION_0_0(&dword_1BF549000, a1, a3, "%s: decoding issue, got nil instance", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end