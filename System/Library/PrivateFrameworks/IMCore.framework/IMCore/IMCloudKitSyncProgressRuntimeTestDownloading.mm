@interface IMCloudKitSyncProgressRuntimeTestDownloading
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestDownloading

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  [stateCopy setIMCloudKitSyncDate:0];
  [stateCopy setIMCloudKitSyncControllerSyncState:2];
  [stateCopy setIMCloudKitSyncControllerSyncRecordType:1];
}

@end