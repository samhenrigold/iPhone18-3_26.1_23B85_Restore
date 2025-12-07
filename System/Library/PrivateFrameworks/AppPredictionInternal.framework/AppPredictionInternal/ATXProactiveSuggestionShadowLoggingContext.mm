@interface ATXProactiveSuggestionShadowLoggingContext
- (ATXProactiveSuggestionShadowLoggingContext)init;
- (ATXProactiveSuggestionShadowLoggingContext)initWithClientModelCacheUpdates:(id)updates context:(id)context;
- (ATXProactiveSuggestionShadowLoggingContext)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingContext:(id)context;
- (NSDictionary)clientModelCacheUpdates;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithClientModelCacheUpdate:(id)update;
- (void)updateWithContext:(id)context;
@end

@implementation ATXProactiveSuggestionShadowLoggingContext

- (ATXProactiveSuggestionShadowLoggingContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXProactiveSuggestionShadowLoggingContext *)self initWithClientModelCacheUpdates:v3 context:0];

  return v4;
}

- (ATXProactiveSuggestionShadowLoggingContext)initWithClientModelCacheUpdates:(id)updates context:(id)context
{
  updatesCopy = updates;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ATXProactiveSuggestionShadowLoggingContext;
  v8 = [(ATXProactiveSuggestionShadowLoggingContext *)&v12 init];
  if (v8)
  {
    v9 = [updatesCopy mutableCopy];
    clientModelCacheUpdates = v8->_clientModelCacheUpdates;
    v8->_clientModelCacheUpdates = v9;

    objc_storeStrong(&v8->_context, context);
  }

  return v8;
}

- (NSDictionary)clientModelCacheUpdates
{
  v2 = [(NSMutableDictionary *)self->_clientModelCacheUpdates copy];

  return v2;
}

- (void)updateWithClientModelCacheUpdate:(id)update
{
  updateCopy = update;
  clientModelCacheUpdates = self->_clientModelCacheUpdates;
  clientModelId = [updateCopy clientModelId];
  [(NSMutableDictionary *)clientModelCacheUpdates setObject:updateCopy forKey:clientModelId];

  v8 = __atxlog_handle_blending_ecosystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXProactiveSuggestionShadowLoggingContext updateWithClientModelCacheUpdate:?];
  }
}

- (void)updateWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_context, context);
  v7 = __atxlog_handle_blending_ecosystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXProactiveSuggestionShadowLoggingContext updateWithContext:?];
  }
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionShadowLoggingContext *)self isEqualToATXProactiveSuggestionShadowLoggingContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingContext:(id)context
{
  contextCopy = context;
  v5 = self->_clientModelCacheUpdates;
  v6 = v5;
  if (v5 == contextCopy[1])
  {
  }

  else
  {
    v7 = [(NSMutableDictionary *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_context;
  v10 = v9;
  if (v9 == contextCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(ATXPredictionContext *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  clientModelCacheUpdates = self->_clientModelCacheUpdates;
  coderCopy = coder;
  [coderCopy encodeObject:clientModelCacheUpdates forKey:@"clientCaches"];
  [coderCopy encodeObject:self->_context forKey:@"predictionContext"];
}

- (ATXProactiveSuggestionShadowLoggingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x277D42620];
  v12 = __atxlog_handle_blending_ecosystem(v11);
  v13 = [v10 robustDecodeObjectOfClasses:v9 forKey:@"clientCaches" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingContext" errorCode:-1 logHandle:v12];

  if (v13)
  {
    v14 = MEMORY[0x277D42620];
    v15 = objc_opt_class();
    v16 = __atxlog_handle_blending_ecosystem(v15);
    v17 = [v14 robustDecodeObjectOfClass:v15 forKey:@"predictionContext" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingContext" errorCode:-1 logHandle:v16];

    self = [(ATXProactiveSuggestionShadowLoggingContext *)self initWithClientModelCacheUpdates:v13 context:v17];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)updateWithClientModelCacheUpdate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v3, v4, "%@ - updated with new client model cache: %@", v5, v6, v7, v8);
}

- (void)updateWithContext:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v3, v4, "%@ - updated with new context: %@", v5, v6, v7, v8);
}

@end