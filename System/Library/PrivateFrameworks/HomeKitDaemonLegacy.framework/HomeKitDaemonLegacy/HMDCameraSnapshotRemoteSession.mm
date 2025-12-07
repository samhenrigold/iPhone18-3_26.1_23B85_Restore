@interface HMDCameraSnapshotRemoteSession
- (HMDCameraSnapshotRemoteSession)initWithSessionID:(id)d accessory:(id)accessory snapshotGetter:(id)getter message:(id)message waitPeriod:(double)period streamingTierType:(unint64_t)type cameraLocallyReachable:(BOOL)reachable;
@end

@implementation HMDCameraSnapshotRemoteSession

- (HMDCameraSnapshotRemoteSession)initWithSessionID:(id)d accessory:(id)accessory snapshotGetter:(id)getter message:(id)message waitPeriod:(double)period streamingTierType:(unint64_t)type cameraLocallyReachable:(BOOL)reachable
{
  v11.receiver = self;
  v11.super_class = HMDCameraSnapshotRemoteSession;
  v10 = 0;
  return [(HMDCameraSnapshotSession *)&v11 initWithSessionID:d accessory:accessory snapshotGetter:getter message:message waitPeriod:type streamingTierType:reachable cameraLocallyReachable:period snapshotForNotification:v10];
}

@end