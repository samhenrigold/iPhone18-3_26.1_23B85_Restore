@interface RemotePairingDeviceTunnelServiceConnection
- (id)copyRemoteUnlockDeviceKeyForTunnelWithTunnelName:(id)name error:(id *)error;
@end

@implementation RemotePairingDeviceTunnelServiceConnection

- (id)copyRemoteUnlockDeviceKeyForTunnelWithTunnelName:(id)name error:(id *)error
{
  v5 = sub_26203A1BC();
  v7 = v6;
  selfCopy = self;
  v9 = RemotePairingDeviceTunnelServiceConnection.copyRemoteUnlockDeviceKeyForTunnel(tunnelName:)(v5, v7);
  v11 = v10;

  v12 = sub_26203952C();
  sub_261F6BFFC(v9, v11);
  return v12;
}

@end