@interface IMCloudKitSyncProgressRuntimeTestUploading
- (void)setUp;
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestUploading

- (void)setUp
{
  v3.receiver = self;
  v3.super_class = IMCloudKitSyncProgressRuntimeTestUploading;
  [(IMCloudKitSyncProgressRuntimeTest *)&v3 setUp];
  [(IMCloudKitSyncProgressRuntimeTest *)self setProgressRescheduleDelay:0.0];
  [(IMCloudKitSyncProgressRuntimeTest *)self setProgressCount:0];
  [(IMCloudKitSyncProgressRuntimeTest *)self setMaxProgressCount:5];
}

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  [stateCopy setIMCloudKitSyncDate:0];
  [stateCopy setIMCloudKitSyncControllerSyncState:4];
  [stateCopy setIMCloudKitSyncControllerSyncRecordType:1];
}

@end