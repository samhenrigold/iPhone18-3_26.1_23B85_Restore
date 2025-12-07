@interface HAPPairSetupSessionServerInfo
- (HAPPairSetupSessionServerInfo)initWithProductData:(id)data maxTries:(int)tries;
@end

@implementation HAPPairSetupSessionServerInfo

- (HAPPairSetupSessionServerInfo)initWithProductData:(id)data maxTries:(int)tries
{
  v4 = *&tries;
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = HAPPairSetupSessionServerInfo;
  v7 = [(HAPPairSetupSessionServerInfo *)&v10 init];
  if (v7)
  {
    v8 = [dataCopy copy];
    [(HAPPairSetupSessionServerInfo *)v7 setProductData:v8];

    [(HAPPairSetupSessionServerInfo *)v7 setMaxTries:v4];
  }

  return v7;
}

@end