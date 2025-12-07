@interface HMDHomeMigrationEvent
- (HMDHomeMigrationEvent)initWithModel:(id)model reason:(id)reason;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDHomeMigrationEvent

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMDHomeMigrationEvent *)self model];
  v5 = [v3 initWithName:@"model" value:model];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  reason = [(HMDHomeMigrationEvent *)self reason];
  v8 = [v6 initWithName:@"reason" value:reason];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"modelClass";
  model = [(HMDHomeMigrationEvent *)self model];
  v7[1] = @"reason";
  v8[0] = model;
  reason = [(HMDHomeMigrationEvent *)self reason];
  v8[1] = reason;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (HMDHomeMigrationEvent)initWithModel:(id)model reason:(id)reason
{
  modelCopy = model;
  reasonCopy = reason;
  if (!modelCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = reasonCopy;
  if (!reasonCopy)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    return [(HAPCharacteristicValueActiveTransitionContext(Validator) *)v14 isValid];
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15.receiver = self;
  v15.super_class = HMDHomeMigrationEvent;
  v11 = [(HMMLogEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_model, v10);
    objc_storeStrong(&v12->_reason, reason);
  }

  return v12;
}

@end