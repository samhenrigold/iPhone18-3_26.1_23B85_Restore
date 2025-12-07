@interface MX_DeviceManagementPolicyDidChangeObserver
- (void)deviceManagementPolicyDidChange:(id)change;
@end

@implementation MX_DeviceManagementPolicyDidChangeObserver

- (void)deviceManagementPolicyDidChange:(id)change
{
  changeCopy = change;
  v6 = MXGetSerialQueue(changeCopy, v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MX_DeviceManagementPolicyDidChangeObserver_deviceManagementPolicyDidChange___block_invoke;
  v7[3] = &unk_1E7AE7CE0;
  v7[4] = change;
  MXDispatchAsync("[MX_DeviceManagementPolicyDidChangeObserver deviceManagementPolicyDidChange:]", "MX_CoreServices.m", 258, 0, 0, v6, v7);
}

@end