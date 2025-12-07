@interface HFStandardReadPolicy
- (HFStandardReadPolicy)init;
- (HFStandardReadPolicy)initWithPolicies:(id)policies;
@end

@implementation HFStandardReadPolicy

- (HFStandardReadPolicy)initWithPolicies:(id)policies
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_init);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:179 description:{@"%s is unavailable; use %@ instead", "-[HFStandardReadPolicy initWithPolicies:]", v6}];

  return 0;
}

- (HFStandardReadPolicy)init
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v9[0] = v3;
  v4 = objc_opt_new();
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v8.receiver = self;
  v8.super_class = HFStandardReadPolicy;
  v6 = [(HFAggregatedCharacteristicReadPolicy *)&v8 initWithPolicies:v5];

  return v6;
}

@end