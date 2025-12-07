@interface NSUUID(SensorKitInternal)
+ (id)sr_UUIDWithUint32_t:()SensorKitInternal;
@end

@implementation NSUUID(SensorKitInternal)

+ (id)sr_UUIDWithUint32_t:()SensorKitInternal
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = 0;
  v4 = a3;
  return [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v4];
}

@end