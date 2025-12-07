@interface HMDSecureRemoteSessionDefaultDataSource
- (id)createSecureStreamWithPeerDevice:(id)device clientMode:(BOOL)mode sessionID:(id)d;
@end

@implementation HMDSecureRemoteSessionDefaultDataSource

- (id)createSecureStreamWithPeerDevice:(id)device clientMode:(BOOL)mode sessionID:(id)d
{
  modeCopy = mode;
  dCopy = d;
  deviceCopy = device;
  v9 = [HMDSecureRemoteStream alloc];
  v10 = +[HMDAppleAccountManager sharedManager];
  device = [v10 device];
  v12 = +[HMDAccountRegistry sharedRegistry];
  v13 = [(HMDSecureRemoteStream *)v9 initWithCurrentDevice:device peerDevice:deviceCopy clientMode:modeCopy sessionID:dCopy accountRegistry:v12];

  return v13;
}

@end