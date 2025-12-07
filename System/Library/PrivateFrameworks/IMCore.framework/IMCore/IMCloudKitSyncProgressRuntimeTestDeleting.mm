@interface IMCloudKitSyncProgressRuntimeTestDeleting
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestDeleting

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  [stateCopy setIMCloudKitSyncDate:0];
  [stateCopy setIMCloudKitSyncControllerSyncState:3];
  [stateCopy setIMCloudKitSyncControllerSyncRecordType:1];
}

@end