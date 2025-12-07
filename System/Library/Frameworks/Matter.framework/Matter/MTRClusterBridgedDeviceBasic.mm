@interface MTRClusterBridgedDeviceBasic
- (MTRClusterBridgedDeviceBasic)initWithDevice:(MTRDevice *)device endpoint:(uint16_t)endpoint queue:(dispatch_queue_t)queue;
@end

@implementation MTRClusterBridgedDeviceBasic

- (MTRClusterBridgedDeviceBasic)initWithDevice:(MTRDevice *)device endpoint:(uint16_t)endpoint queue:(dispatch_queue_t)queue
{
  v6 = endpoint;
  v8 = device;
  v9 = queue;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  v11 = [(MTRGenericCluster *)self initWithDevice:v8 endpointID:v10 queue:v9];

  return v11;
}

@end