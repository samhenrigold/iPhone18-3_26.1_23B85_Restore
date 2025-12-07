@interface PLSMCAccumOutputObject
+ (id)objectWithChannelValue:(double)value cycleCount:(unsigned int)count variant:(unsigned __int8)variant;
@end

@implementation PLSMCAccumOutputObject

+ (id)objectWithChannelValue:(double)value cycleCount:(unsigned int)count variant:(unsigned __int8)variant
{
  variantCopy = variant;
  v6 = *&count;
  v8 = objc_alloc_init(PLSMCAccumOutputObject);
  [(PLSMCAccumOutputObject *)v8 setChannelValue:value];
  [(PLSMCAccumOutputObject *)v8 setCycleCount:v6];
  [(PLSMCAccumOutputObject *)v8 setVariant:variantCopy];

  return v8;
}

@end