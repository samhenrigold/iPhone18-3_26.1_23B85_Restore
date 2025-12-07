@interface HMAccessorySettingConstraint(HMDBackingStoreModelObject)
- (HMDAccessorySettingConstraintModel)modelWithParentIdentifier:()HMDBackingStoreModelObject;
- (char)initWithModel:()HMDBackingStoreModelObject;
@end

@implementation HMAccessorySettingConstraint(HMDBackingStoreModelObject)

- (HMDAccessorySettingConstraintModel)modelWithParentIdentifier:()HMDBackingStoreModelObject
{
  v4 = a3;
  v5 = [HMDAccessorySettingConstraintModel alloc];
  identifier = [self identifier];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:0 uuid:identifier parentUUID:v4];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "type")}];
  [(HMDAccessorySettingConstraintModel *)v7 setType:v8];

  value = [self value];
  v10 = encodeRootObject();
  [(HMDAccessorySettingConstraintModel *)v7 setValue:v10];

  return v7;
}

- (char)initWithModel:()HMDBackingStoreModelObject
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  type = [v4 type];

  if (!type)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Model missing 'type'", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [[HMDAssertionLogEvent alloc] initWithReason:@"Model missing 'type'"];
    v34 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v34 submitLogEvent:v33];
  }

  type2 = [v5 type];

  if (!type2)
  {
    v24 = objc_autoreleasePoolPush();
    self = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v26;
      v27 = "%{public}@Model missing 'type'";
LABEL_17:
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
    }

LABEL_18:

    objc_autoreleasePoolPop(v24);
LABEL_19:
    selfCopy4 = 0;
    goto LABEL_20;
  }

  type3 = [v5 type];
  integerValue = [type3 integerValue];

  value = [v5 value];

  if (!value)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Model missing 'value'", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v39 = [[HMDAssertionLogEvent alloc] initWithReason:@"Model missing 'value'"];
    v40 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v40 submitLogEvent:v39];
  }

  value2 = [v5 value];

  if (!value2)
  {
    v24 = objc_autoreleasePoolPush();
    self = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v26;
      v27 = "%{public}@Model missing 'value'";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v12 = MEMORY[0x277CCAAC8];
  supportedValueClasses = [objc_opt_class() supportedValueClasses];
  value3 = [v5 value];
  v41 = 0;
  v15 = [v12 unarchivedObjectOfClasses:supportedValueClasses fromData:value3 error:&v41];
  v16 = v41;

  if (!v15)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v20;
      v44 = 2112;
      v45 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory setting constraint model supported value from the model's value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = [self initWithType:integerValue value:v15];
  if (v21)
  {
    uuid = [v5 uuid];
    [uuid getUUIDBytes:&v21[*MEMORY[0x277CD1F70]]];
  }

  self = v21;

  selfCopy4 = self;
LABEL_20:

  return selfCopy4;
}

@end