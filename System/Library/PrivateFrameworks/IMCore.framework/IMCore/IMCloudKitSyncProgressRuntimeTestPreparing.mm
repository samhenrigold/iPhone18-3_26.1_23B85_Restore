@interface IMCloudKitSyncProgressRuntimeTestPreparing
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestPreparing

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  [stateCopy setIMCloudKitSyncControllerSyncState:1];
  [stateCopy setIMCloudKitSyncControllerSyncRecordType:1];
  [stateCopy setIMCloudKitSyncDate:0];
}

@end