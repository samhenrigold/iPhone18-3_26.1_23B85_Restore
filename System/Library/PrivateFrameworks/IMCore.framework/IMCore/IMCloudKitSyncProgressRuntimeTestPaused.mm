@interface IMCloudKitSyncProgressRuntimeTestPaused
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestPaused

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  [stateCopy setIMCloudKitSyncDate:0];
  [stateCopy setIMCloudKitSyncPaused:1];
  [stateCopy setIMCloudKitIsSyncing:0];
}

@end