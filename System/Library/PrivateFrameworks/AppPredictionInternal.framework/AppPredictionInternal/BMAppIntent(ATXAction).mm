@interface BMAppIntent(ATXAction)
- (id)atxAction;
- (void)atxAction;
@end

@implementation BMAppIntent(ATXAction)

- (id)atxAction
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CCAAC8];
  v4 = objc_opt_class();
  interaction = [self interaction];
  v16 = 0;
  v6 = [v3 unarchivedObjectOfClass:v4 fromData:interaction error:&v16];
  v7 = v16;

  objc_autoreleasePoolPop(v2);
  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x277CEB2C8]);
    intent = [v6 intent];
    v11 = objc_opt_new();
    bundleID = [self bundleID];
    LOBYTE(v15) = 0;
    v13 = [v9 initWithIntent:intent actionUUID:v11 bundleId:bundleID heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v15 title:0 subtitle:0];
  }

  else
  {
    intent = __atxlog_handle_feedback(v8);
    if (os_log_type_enabled(intent, OS_LOG_TYPE_ERROR))
    {
      [(BMAppIntent(ATXAction) *)v7 atxAction];
    }

    v13 = 0;
  }

  return v13;
}

- (void)atxAction
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "IntentEventIsCompleteEngagement - Error unarchiving intent: %@", &v2, 0xCu);
}

@end