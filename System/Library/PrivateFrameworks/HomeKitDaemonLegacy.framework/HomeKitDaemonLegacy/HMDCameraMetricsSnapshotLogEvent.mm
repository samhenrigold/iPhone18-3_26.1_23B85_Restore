@interface HMDCameraMetricsSnapshotLogEvent
- (HMDCameraMetricsSnapshotLogEvent)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local snapshotForNotification:(BOOL)notification;
@end

@implementation HMDCameraMetricsSnapshotLogEvent

- (HMDCameraMetricsSnapshotLogEvent)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local snapshotForNotification:(BOOL)notification
{
  v8.receiver = self;
  v8.super_class = HMDCameraMetricsSnapshotLogEvent;
  result = [(HMDCameraMetricsLogEvent *)&v8 initWithSessionID:d cameraAccessory:accessory isLocal:local];
  if (result)
  {
    result->_snapshotForNotification = notification;
  }

  return result;
}

@end