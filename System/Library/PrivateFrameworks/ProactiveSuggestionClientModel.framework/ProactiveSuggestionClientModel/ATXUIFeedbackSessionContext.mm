@interface ATXUIFeedbackSessionContext
- (ATXUIFeedbackSessionContext)init;
- (ATXUIFeedbackSessionContext)initWithCoder:(id)coder;
- (ATXUIFeedbackSessionContext)initWithSessions:(id)sessions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUIFeedbackSessionContext:(id)context;
- (NSDictionary)sessions;
- (id)returnAndRemoveUIFeedbackSessionWithSessionIdentifier:(id)identifier endDate:(id)date;
- (void)trackNewUIFeedbackSessionWithSessionIdentifier:(id)identifier startDate:(id)date;
@end

@implementation ATXUIFeedbackSessionContext

- (ATXUIFeedbackSessionContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXUIFeedbackSessionContext *)self initWithSessions:v3];

  return v4;
}

- (ATXUIFeedbackSessionContext)initWithSessions:(id)sessions
{
  sessionsCopy = sessions;
  v9.receiver = self;
  v9.super_class = ATXUIFeedbackSessionContext;
  v6 = [(ATXUIFeedbackSessionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessions, sessions);
  }

  return v7;
}

- (void)trackNewUIFeedbackSessionWithSessionIdentifier:(id)identifier startDate:(id)date
{
  identifierCopy = identifier;
  sessions = self->_sessions;
  dateCopy = date;
  v9 = [(NSMutableDictionary *)sessions count];
  if (v9 >= 0xA)
  {
    v10 = __atxlog_handle_blending_ecosystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXUIFeedbackSessionContext *)self trackNewUIFeedbackSessionWithSessionIdentifier:identifierCopy startDate:v10];
    }

    [(NSMutableDictionary *)self->_sessions removeAllObjects];
  }

  v11 = [[ATXProactiveSuggestionUIFeedbackSession alloc] initWithSessionIdentifier:identifierCopy];
  [(ATXProactiveSuggestionUIFeedbackSession *)v11 updateSessionStartDateIfUnset:dateCopy];

  [(NSMutableDictionary *)self->_sessions setValue:v11 forKey:identifierCopy];
}

- (id)returnAndRemoveUIFeedbackSessionWithSessionIdentifier:(id)identifier endDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  v8 = [(ATXUIFeedbackSessionContext *)self uiFeedbackSessionWithSessionIdentifier:identifierCopy];
  [v8 updateSessionEndDateIfUnset:dateCopy];

  [(NSMutableDictionary *)self->_sessions removeObjectForKey:identifierCopy];

  return v8;
}

- (NSDictionary)sessions
{
  v2 = [(NSMutableDictionary *)self->_sessions copy];

  return v2;
}

- (ATXUIFeedbackSessionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x1E69C5D78];
  v12 = __atxlog_handle_blending_ecosystem(v11);
  v13 = [v10 robustDecodeObjectOfClasses:v9 forKey:@"sessions" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v12];

  if (v13 && ([coderCopy error], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    self = [(ATXUIFeedbackSessionContext *)self initWithSessions:v13];
    selfCopy = self;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackSessionContext *)self isEqualToATXUIFeedbackSessionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackSessionContext:(id)context
{
  v4 = self->_sessions;
  v5 = v4;
  if (v4 == *(context + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)v4 isEqual:?];
  }

  return v6;
}

- (void)trackNewUIFeedbackSessionWithSessionIdentifier:(NSObject *)a3 startDate:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412802;
  v8 = v6;
  v9 = 2048;
  v10 = 10;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_ERROR, "%@ - reached max count of %lu tracked sessions, pruning all before starting new session with identifier: %@", &v7, 0x20u);
}

@end