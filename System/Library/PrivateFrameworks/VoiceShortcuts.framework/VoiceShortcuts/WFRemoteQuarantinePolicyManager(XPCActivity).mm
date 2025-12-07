@interface WFRemoteQuarantinePolicyManager(XPCActivity)
- (void)scheduleRegularPolicyUpdatesWithDatabaseProvider:()XPCActivity;
@end

@implementation WFRemoteQuarantinePolicyManager(XPCActivity)

- (void)scheduleRegularPolicyUpdatesWithDatabaseProvider:()XPCActivity
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[WFRemoteQuarantinePolicyManager(XPCActivity) scheduleRegularPolicyUpdatesWithDatabaseProvider:]";
    v13 = 2112;
    v14 = @"com.apple.siriactionsd.RemoteQuarantineUpdate";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s Scheduling remote quarantine bundle update activity: (%@)", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__WFRemoteQuarantinePolicyManager_XPCActivity__scheduleRegularPolicyUpdatesWithDatabaseProvider___block_invoke;
  v8[3] = &unk_2788FEE68;
  v9 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [WFXPCActivityScheduler activatedSchedulerWithActivityIdentifier:@"com.apple.siriactionsd.RemoteQuarantineUpdate" runHandler:v8];
}

@end