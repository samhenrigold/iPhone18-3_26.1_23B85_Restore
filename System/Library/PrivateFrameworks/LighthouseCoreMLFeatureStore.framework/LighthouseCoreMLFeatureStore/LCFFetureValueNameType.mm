@interface LCFFetureValueNameType
- (id)init:(id)init featureValueType:(int64_t)type;
@end

@implementation LCFFetureValueNameType

- (id)init:(id)init featureValueType:(int64_t)type
{
  initCopy = init;
  v12.receiver = self;
  v12.super_class = LCFFetureValueNameType;
  v8 = [(LCFFetureValueNameType *)&v12 init];
  v10 = v8;
  if (v8)
  {
    LCFLoggingUtilsInit(v8, v9);
    objc_storeStrong(&v10->_featureName, init);
    v10->_featureValueType = type;
  }

  return v10;
}

@end