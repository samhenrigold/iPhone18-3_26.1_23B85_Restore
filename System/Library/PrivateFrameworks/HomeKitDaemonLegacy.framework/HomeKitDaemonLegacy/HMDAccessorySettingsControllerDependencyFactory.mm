@interface HMDAccessorySettingsControllerDependencyFactory
- (id)createMessageHandlerWithQueue:(id)queue delegate:(id)delegate;
- (id)settingModelForUpdateWithIdentifier:(id)identifier parent:(id)parent value:(id)value configNumber:(id)number;
- (id)timerWithReason:(int64_t)reason interval:(double)interval;
- (void)assertWithCondition:(BOOL)condition message:(id)message;
@end

@implementation HMDAccessorySettingsControllerDependencyFactory

- (void)assertWithCondition:(BOOL)condition message:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (!condition)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = messageCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    messageCopy = [[HMDAssertionLogEvent alloc] initWithReason:@"%@", messageCopy];
    v12 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v12 submitLogEvent:messageCopy];
  }
}

- (id)createMessageHandlerWithQueue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  queueCopy = queue;
  v7 = [[HMDAccessorySettingsMessageHandler alloc] initWithQueue:queueCopy delegate:delegateCopy];

  return v7;
}

- (id)settingModelForUpdateWithIdentifier:(id)identifier parent:(id)parent value:(id)value configNumber:(id)number
{
  numberCopy = number;
  valueCopy = value;
  parentCopy = parent;
  identifierCopy = identifier;
  v13 = [(HMDBackingStoreModelObject *)[HMDAccessorySettingModel alloc] initWithObjectChangeType:2 uuid:identifierCopy parentUUID:parentCopy];

  v14 = encodeRootObject();

  [(HMDAccessorySettingModel *)v13 setValue:v14];
  [(HMDAccessorySettingModel *)v13 setConfigurationVersion:numberCopy];

  return v13;
}

- (id)timerWithReason:(int64_t)reason interval:(double)interval
{
  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:16 options:interval];

  return v4;
}

@end