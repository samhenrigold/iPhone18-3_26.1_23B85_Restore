@interface HMDCameraSnapshotLocalSession
- (HMDCameraSnapshotLocalSession)initWithSessionID:(id)d accessory:(id)accessory snapshotGetter:(id)getter message:(id)message waitPeriod:(double)period reachabilityPath:(unint64_t)path cameraLocallyReachable:(BOOL)reachable snapshotForNotification:(BOOL)self0;
- (void)addMessage:(id)message;
@end

@implementation HMDCameraSnapshotLocalSession

- (void)addMessage:(id)message
{
  messageCopy = message;
  sessionMessages = [(HMDCameraSnapshotSession *)self sessionMessages];
  [sessionMessages addObject:messageCopy];
}

- (HMDCameraSnapshotLocalSession)initWithSessionID:(id)d accessory:(id)accessory snapshotGetter:(id)getter message:(id)message waitPeriod:(double)period reachabilityPath:(unint64_t)path cameraLocallyReachable:(BOOL)reachable snapshotForNotification:(BOOL)self0
{
  reachableCopy = reachable;
  dCopy = d;
  accessoryCopy = accessory;
  getterCopy = getter;
  messageCopy = message;
  if (isWatch())
  {
    v21 = 0;
  }

  else if (reachableCopy)
  {
    if (isiPadDevice() || isAppleTV())
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v22 = 4;
    if (path != 3)
    {
      v22 = 1;
    }

    if (path == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = v22;
    }
  }

  v25.receiver = self;
  v25.super_class = HMDCameraSnapshotLocalSession;
  v23 = [(HMDCameraSnapshotSession *)&v25 initWithSessionID:dCopy accessory:accessoryCopy snapshotGetter:getterCopy message:messageCopy waitPeriod:v21 streamingTierType:reachableCopy cameraLocallyReachable:period snapshotForNotification:notification];

  return v23;
}

@end