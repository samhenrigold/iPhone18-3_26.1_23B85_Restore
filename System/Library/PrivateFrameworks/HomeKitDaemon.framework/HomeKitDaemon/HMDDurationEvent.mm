@interface HMDDurationEvent
+ (id)logCategory;
- (BOOL)isCompatbileWithEvent:(id)event;
- (HMDDurationEvent)initWithCoder:(id)coder;
- (HMDDurationEvent)initWithModel:(id)model home:(id)home;
- (NSNumber)duration;
- (NSString)description;
- (id)_nextTimerDate;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)_handleUpdateRequest:(id)request;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)encodeWithCoder:(id)coder;
- (void)setDuration:(id)duration;
@end

@implementation HMDDurationEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsDurationEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setDurationEvent:v4];

  return v3;
}

- (id)_nextTimerDate
{
  v19 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [currentCalendar components:252 fromDate:date];

  second = [v5 second];
  v7 = objc_msgSend_duration(self);
  [v5 setSecond:{objc_msgSend(v7, "unsignedIntegerValue") + second}];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar2 dateFromComponents:v5];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Next Fire Date : [%@]", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v10);

  return v9;
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = objc_msgSend_duration(v17);
    if (v18)
    {
      v19 = v18;
      v20 = objc_msgSend_duration(selfCopy);
      if (v20)
      {
        v21 = v20;
        v22 = objc_msgSend_duration(selfCopy);
        [v22 doubleValue];
        v23 = objc_msgSend_duration(v17);
        [v23 doubleValue];
        v24 = HMDurationsApproximatelyEqual();

        if (v24)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v25 = objc_msgSend_duration(v17);
      [(HMDDurationEvent *)selfCopy setDuration:v25];

      eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
      [eventTrigger markChangedForMessage:messageCopy];
    }

LABEL_13:
    [messageCopy respondWithSuccess];
  }
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDDurationEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDDurationEventModel *)v9 setEndEvent:v10];

  v11 = objc_msgSend_duration(self);
  [(HMDDurationEventModel *)v9 setDuration:v11];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDDurationEvent;
  coderCopy = coder;
  [(HMDTimeEvent *)&v6 encodeWithCoder:coderCopy];
  v5 = objc_msgSend_duration(self, v6.receiver, v6.super_class);
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD2280]];
}

- (HMDDurationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDDurationEvent;
  v5 = [(HMDTimeEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2280]];
    duration = v5->_duration;
    v5->_duration = v6;
  }

  return v5;
}

- (BOOL)isCompatbileWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDDurationEvent;
  return [(HMDTimeEvent *)&v4 isCompatibleWithEvent:event];
}

- (void)setDuration:(id)duration
{
  durationCopy = duration;
  os_unfair_lock_lock_with_options();
  duration = self->_duration;
  self->_duration = durationCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)duration
{
  os_unfair_lock_lock_with_options();
  v3 = self->_duration;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleUpdateRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy numberForKey:*MEMORY[0x277CD2280]];
  if (v5)
  {
    emptyModelObject = [(HMDDurationEvent *)self emptyModelObject];
    [emptyModelObject setDuration:v5];
    eventTrigger = [(HMDEvent *)self eventTrigger];
    home = [eventTrigger home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v11 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v12 = [backingStore transaction:name options:v11];

    [v12 add:emptyModelObject];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__HMDDurationEvent__handleUpdateRequest___block_invoke;
    v15[3] = &unk_27868A1D8;
    v16 = requestCopy;
    v17 = emptyModelObject;
    v13 = emptyModelObject;
    [v12 run:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [requestCopy respondWithError:v14];
  }
}

void __41__HMDDurationEvent__handleUpdateRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithError:a2];
  }

  else
  {
    v6 = *MEMORY[0x277CD2280];
    v4 = objc_msgSend_duration(*(a1 + 40));
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v2 respondWithPayload:v5];
  }
}

- (id)emptyModelObject
{
  v3 = [HMDDurationEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  return v7;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = HMDDurationEvent;
  createPayload = [(HMDEvent *)&v9 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  v6 = objc_msgSend_duration(self);
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2280]];

  v7 = objc_msgSend_copy(v5);

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDDurationEvent;
  v4 = [(HMDEvent *)&v8 description];
  v5 = objc_msgSend_duration(self);
  v6 = [v3 stringWithFormat:@"[Duration-Event: %@, %@s]", v4, v5];

  return v6;
}

- (HMDDurationEvent)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = HMDDurationEvent;
  v7 = [(HMDTimeEvent *)&v11 initWithModel:modelCopy home:home];
  if (v7)
  {
    v8 = objc_msgSend_duration(modelCopy);
    duration = v7->_duration;
    v7->_duration = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_263775 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_263775, &__block_literal_global_263776);
  }

  v3 = logCategory__hmf_once_v1_263777;

  return v3;
}

void __31__HMDDurationEvent_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_263777;
  logCategory__hmf_once_v1_263777 = v0;
}

@end