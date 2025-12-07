@interface MTRClusterOtaSoftwareUpdateRequestor
- (MTRClusterOtaSoftwareUpdateRequestor)initWithDevice:(MTRDevice *)device endpoint:(uint16_t)endpoint queue:(dispatch_queue_t)queue;
- (NSDictionary)readAttributeDefaultOtaProvidersWithParams:(MTRReadParams *)params;
@end

@implementation MTRClusterOtaSoftwareUpdateRequestor

- (MTRClusterOtaSoftwareUpdateRequestor)initWithDevice:(MTRDevice *)device endpoint:(uint16_t)endpoint queue:(dispatch_queue_t)queue
{
  v6 = endpoint;
  v8 = device;
  v9 = queue;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  v11 = [(MTRGenericCluster *)self initWithDevice:v8 endpointID:v10 queue:v9];

  return v11;
}

- (NSDictionary)readAttributeDefaultOtaProvidersWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterOTASoftwareUpdateRequestor *)self readAttributeDefaultOTAProvidersWithParams:params];

  return v3;
}

@end