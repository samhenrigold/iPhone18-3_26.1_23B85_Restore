@interface PLSMCOutputObject
+ (id)objectWithChannelValue:(double)value cycleCount:(unsigned int)count variant:(unsigned __int8)variant;
@end

@implementation PLSMCOutputObject

+ (id)objectWithChannelValue:(double)value cycleCount:(unsigned int)count variant:(unsigned __int8)variant
{
  variantCopy = variant;
  v6 = *&count;
  v8 = objc_alloc_init(PLSMCOutputObject);
  [(PLSMCOutputObject *)v8 setChannelValue:value];
  [(PLSMCOutputObject *)v8 setCycleCount:v6];
  [(PLSMCOutputObject *)v8 setVariant:variantCopy];

  return v8;
}

@end