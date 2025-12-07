@interface HMDCameraStreamMetrics
- (HMDCameraStreamMetrics)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local isRelayed:(BOOL)relayed;
- (void)dealloc;
- (void)setError:(id)error;
@end

@implementation HMDCameraStreamMetrics

- (void)setError:(id)error
{
  errorCopy = error;
  if (!self->_error)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_error, error);
    errorCopy = v6;
  }
}

- (void)dealloc
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  cameraStreamMetricsLogEvent = [(HMDCameraStreamMetrics *)self cameraStreamMetricsLogEvent];
  error = [(HMDCameraStreamMetrics *)self error];
  [v3 submitLogEvent:cameraStreamMetricsLogEvent error:error];

  v6.receiver = self;
  v6.super_class = HMDCameraStreamMetrics;
  [(HMDCameraStreamMetrics *)&v6 dealloc];
}

- (HMDCameraStreamMetrics)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local isRelayed:(BOOL)relayed
{
  relayedCopy = relayed;
  localCopy = local;
  dCopy = d;
  accessoryCopy = accessory;
  v16.receiver = self;
  v16.super_class = HMDCameraStreamMetrics;
  v12 = [(HMDCameraStreamMetrics *)&v16 init];
  if (v12)
  {
    v13 = [[HMDCameraMetricsStreamLogEvent alloc] initWithSessionID:dCopy cameraAccessory:accessoryCopy isLocal:localCopy isRelayed:relayedCopy];
    cameraStreamMetricsLogEvent = v12->_cameraStreamMetricsLogEvent;
    v12->_cameraStreamMetricsLogEvent = v13;
  }

  return v12;
}

@end