@interface HMDCharacteristicMonitorEvent
+ (id)logCategory;
- (BOOL)_compareEventValue:(id)value;
- (BOOL)_evaluateNewValue:(id)value;
- (BOOL)isCompatibleWithEvent:(id)event;
- (id)description;
@end

@implementation HMDCharacteristicMonitorEvent

- (BOOL)isCompatibleWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDCharacteristicMonitorEvent;
  return [(HMDCharacteristicEvent *)&v4 isCompatibleWithEvent:event];
}

- (BOOL)_compareEventValue:(id)value
{
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];
  eventValue = [(HMDCharacteristicEvent *)self eventValue];
  v6 = [HMDCharacteristicEventBase compareValueOfCharacteristic:characteristic againstValue:eventValue operatorType:&unk_283E71D38];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)_evaluateNewValue:(id)value
{
  v32 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];
  previousValue = [characteristic previousValue];

  if (valueCopy)
  {
    LODWORD(v7) = ![(HMDCharacteristicMonitorEvent *)self _compareEventValue:valueCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    characteristic2 = [(HMDCharacteristicEventBase *)selfCopy characteristic];
    value = [characteristic2 value];
    [(HMDCharacteristicEvent *)selfCopy eventValue];
    v15 = v19 = v8;
    [(HMDCharacteristicEventBase *)selfCopy characteristic];
    v18 = v7;
    v16 = v7 = previousValue;
    *buf = 138544642;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = value;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire: %@, previous value: %@, current value: %@, event monitor value: %@, %@", buf, 0x3Eu);

    previousValue = v7;
    LOBYTE(v7) = v18;

    v8 = v19;
  }

  objc_autoreleasePoolPop(v8);
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDCharacteristicMonitorEvent;
  v4 = [(HMDCharacteristicEvent *)&v8 description];
  eventValue = [(HMDCharacteristicEvent *)self eventValue];
  v6 = [v3 stringWithFormat:@"[Char-Monitor-Event: %@, event value: %@]", v4, eventValue];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_30260 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_30260, &__block_literal_global_30261);
  }

  v3 = logCategory__hmf_once_v1_30262;

  return v3;
}

void __44__HMDCharacteristicMonitorEvent_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_30262;
  logCategory__hmf_once_v1_30262 = v0;
}

@end