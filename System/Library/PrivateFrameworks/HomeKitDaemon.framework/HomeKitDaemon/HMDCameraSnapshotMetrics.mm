@interface HMDCameraSnapshotMetrics
- (HMDCameraSnapshotMetrics)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local snapshotForNotification:(BOOL)notification;
- (void)dealloc;
@end

@implementation HMDCameraSnapshotMetrics

- (void)dealloc
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  cameraSnapshotMetricsLogEvent = [(HMDCameraSnapshotMetrics *)self cameraSnapshotMetricsLogEvent];
  error = [(HMDCameraSnapshotMetrics *)self error];
  [v3 submitLogEvent:cameraSnapshotMetricsLogEvent error:error];

  v6.receiver = self;
  v6.super_class = HMDCameraSnapshotMetrics;
  [(HMDCameraSnapshotMetrics *)&v6 dealloc];
}

- (HMDCameraSnapshotMetrics)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local snapshotForNotification:(BOOL)notification
{
  notificationCopy = notification;
  localCopy = local;
  dCopy = d;
  accessoryCopy = accessory;
  v16.receiver = self;
  v16.super_class = HMDCameraSnapshotMetrics;
  v12 = [(HMDCameraSnapshotMetrics *)&v16 init];
  if (v12)
  {
    v13 = [[HMDCameraMetricsSnapshotLogEvent alloc] initWithSessionID:dCopy cameraAccessory:accessoryCopy isLocal:localCopy snapshotForNotification:notificationCopy];
    cameraSnapshotMetricsLogEvent = v12->_cameraSnapshotMetricsLogEvent;
    v12->_cameraSnapshotMetricsLogEvent = v13;
  }

  return v12;
}

@end