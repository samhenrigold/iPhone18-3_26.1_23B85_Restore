@interface VUIActionUpdateUpNext
- (VUIActionUpdateUpNext)initWithContextData:(id)data;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionUpdateUpNext

- (VUIActionUpdateUpNext)initWithContextData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = VUIActionUpdateUpNext;
  v5 = [(VUIActionUpdateUpNext *)&v11 init];
  if (v5)
  {
    v6 = [dataCopy vui_stringForKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v6;

    v8 = [dataCopy vui_stringForKey:@"state"];
    state = v5->_state;
    v5->_state = v8;

    v5->_confirmationShouldWaitCompletion = [dataCopy vui_BOOLForKey:@"confirmationShouldWaitCompletion" defaultValue:0];
  }

  return v5;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(NSString *)self->_state isEqualToString:@"added"];
  v7 = v6;
  if (self->_itemID && self->_state)
  {
    v8 = +[VUIUpNextRequestManager sharedInstance];
    [v8 sendRequestForCanonicalID:self->_itemID action:v7 confirmationShouldWaitCompletion:self->_confirmationShouldWaitCompletion];
  }

  else
  {
    v8 = VUIDefaultLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(VUIActionUpdateUpNext *)&self->_itemID performWithTargetResponder:v8 completionHandler:?];
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  v9 = +[VUIAppReviewManager sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__VUIActionUpdateUpNext_performWithTargetResponder_completionHandler___block_invoke;
  v10[3] = &__block_descriptor_40_e8_v12__0B8l;
  v10[4] = v7;
  [v9 isFeatureEnabled:v10];
}

void __70__VUIActionUpdateUpNext_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 32))
  {
    v3 = +[VUIAppReviewManager sharedInstance];
    [v3 processAddToUpNext];
  }
}

- (void)performWithTargetResponder:(os_log_t)log completionHandler:.cold.1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "VUIActionUpdateUpNext failed for itemID [%@] state [%@]", &v5, 0x16u);
}

@end