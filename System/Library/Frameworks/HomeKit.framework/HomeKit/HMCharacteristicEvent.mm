@interface HMCharacteristicEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
- (BOOL)mergeFromNewObject:(id)object;
- (HMCharacteristic)characteristic;
- (HMCharacteristicEvent)initWithCharacteristic:(HMCharacteristic *)characteristic triggerValue:(id)triggerValue;
- (HMCharacteristicEvent)initWithCoder:(id)coder;
- (HMCharacteristicEvent)initWithDict:(id)dict characteristic:(id)characteristic triggerValue:(id)value;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)triggerValue;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setCharacteristic:(id)characteristic;
- (void)setTriggerValue:(id)value;
- (void)updateTriggerValue:(id)triggerValue completionHandler:(void *)completion;
@end

@implementation HMCharacteristicEvent

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCharacteristicEvent alloc];
  characteristic = [(HMCharacteristicEvent *)self characteristic];
  triggerValue = [(HMCharacteristicEvent *)self triggerValue];
  v7 = [(HMCharacteristicEvent *)v4 initWithCharacteristic:characteristic triggerValue:triggerValue];

  return v7;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"kCharacteristicValue"];
  v9 = [dictionaryCopy hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [dictionaryCopy hmf_numberForKey:@"kServiceInstanceID"];
  v11 = [dictionaryCopy hmf_numberForKey:@"kCharacteristicInstanceID"];
  v12 = v11;
  if (v9 && v10 && v11)
  {
    v13 = [homeCopy _findCharacteristic:v11 forService:v10 accessoryUUID:v9];
    if (v13)
    {
      v14 = [[HMCharacteristicEvent alloc] initWithDict:dictionaryCopy characteristic:v13 triggerValue:v8];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v22 = v24 = v19;
        *buf = 138544386;
        v26 = v22;
        v27 = 2112;
        v28 = objc_opt_class();
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, failed to resolve characteristic %@/%@/%@", buf, 0x34u);

        v19 = v24;
      }

      objc_autoreleasePoolPop(v19);
      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = objc_opt_class();
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing accessory/service/characteristic ids", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCharacteristicEvent alloc];
  characteristic = [(HMCharacteristicEvent *)self characteristic];
  triggerValue = [(HMCharacteristicEvent *)self triggerValue];
  v7 = [(HMCharacteristicEvent *)v4 initWithCharacteristic:characteristic triggerValue:triggerValue];

  return v7;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = HMCharacteristicEvent;
  v5 = [(HMEvent *)&v12 mergeFromNewObject:objectCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    triggerValue = [(HMCharacteristicEvent *)self triggerValue];
    triggerValue2 = [v6 triggerValue];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      triggerValue3 = [v6 triggerValue];
      [(HMCharacteristicEvent *)self setTriggerValue:triggerValue3];

      v5 = 1;
    }
  }

  return v5;
}

- (HMCharacteristicEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMCharacteristicEvent;
  v5 = [(HMEvent *)&v13 initWithCoder:coderCopy];
  if (v5 && (allowedCharValueTypes(), v6 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClasses:v6 forKey:@"characteristicValue"], v7 = objc_claimAutoreleasedReturnValue(), triggerValue = v5->_triggerValue, v5->_triggerValue = v7, triggerValue, v6, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"characteristic"), v9 = objc_claimAutoreleasedReturnValue(), characteristic = v5->_characteristic, v5->_characteristic = v9, characteristic, !v5->_characteristic))
  {
    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (void)_updateFromDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = HMCharacteristicEvent;
  dictionaryCopy = dictionary;
  [(HMEvent *)&v6 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy objectForKeyedSubscript:{@"kCharacteristicValue", v6.receiver, v6.super_class}];

  [(HMCharacteristicEvent *)self setTriggerValue:v5];
}

- (id)_serializeForAdd
{
  characteristic = [(HMCharacteristicEvent *)self characteristic];
  service = [characteristic service];

  accessory = [service accessory];
  v6 = accessory;
  v7 = 0;
  if (service && accessory)
  {
    v18.receiver = self;
    v18.super_class = HMCharacteristicEvent;
    _serializeForAdd = [(HMEvent *)&v18 _serializeForAdd];
    v9 = [_serializeForAdd mutableCopy];

    targetAccessoryUUID = [service targetAccessoryUUID];
    uUIDString = [targetAccessoryUUID UUIDString];
    [v9 setObject:uUIDString forKeyedSubscript:@"kAccessoryUUID"];

    instanceID = [service instanceID];
    [v9 setObject:instanceID forKeyedSubscript:@"kServiceInstanceID"];

    characteristic2 = [(HMCharacteristicEvent *)self characteristic];
    instanceID2 = [characteristic2 instanceID];
    [v9 setObject:instanceID2 forKeyedSubscript:@"kCharacteristicInstanceID"];

    triggerValue = [(HMCharacteristicEvent *)self triggerValue];

    if (triggerValue)
    {
      triggerValue2 = [(HMCharacteristicEvent *)self triggerValue];
      [v9 setObject:triggerValue2 forKeyedSubscript:@"kCharacteristicValue"];
    }

    v7 = [v9 copy];
  }

  return v7;
}

- (void)updateTriggerValue:(id)triggerValue completionHandler:(void *)completion
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = triggerValue;
  v7 = completion;
  context = [(HMEvent *)self context];
  if (!v7)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristicEvent updateTriggerValue:completionHandler:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v30;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v9 = context;
  if (context)
  {
    eventTrigger = [(HMEvent *)self eventTrigger];
    v11 = eventTrigger;
    if (!eventTrigger || ([eventTrigger home], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      delegateCaller = [v9 delegateCaller];
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller callCompletion:v7 error:v20];

LABEL_10:
      goto LABEL_18;
    }

    triggerValue = [(HMCharacteristicEvent *)self triggerValue];
    v14 = HMFEqualObjects();

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v18;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Trigger value is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:v7 error:0];
      goto LABEL_10;
    }

    if (v6)
    {
      v32 = @"kCharacteristicValue";
      v33 = v6;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v25 = 0;
    }

    [(HMEvent *)self _updateEventWithPayload:v25 completionHandler:v7];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v24;
      v36 = 2080;
      v37 = "[HMCharacteristicEvent updateTriggerValue:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v11);
  }

LABEL_18:
}

- (void)setTriggerValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  triggerValue = self->_triggerValue;
  self->_triggerValue = valueCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)triggerValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_triggerValue;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  os_unfair_lock_lock_with_options();
  characteristic = self->_characteristic;
  self->_characteristic = characteristicCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMCharacteristic)characteristic
{
  os_unfair_lock_lock_with_options();
  v3 = self->_characteristic;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HMCharacteristicEvent)initWithCharacteristic:(HMCharacteristic *)characteristic triggerValue:(id)triggerValue
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = characteristic;
  v7 = triggerValue;
  if (!v6)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = MEMORY[0x1E696ABC0];
    v18 = 3;
    goto LABEL_6;
  }

  v8 = v7;
  properties = [(HMCharacteristic *)v6 properties];
  v10 = [properties containsObject:@"HMCharacteristicPropertySupportsEventNotification"];

  if ((v10 & 1) == 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = MEMORY[0x1E696ABC0];
    v18 = 7;
LABEL_6:
    v19 = [v17 hmStringFromErrorCode:v18];
    v20 = [v15 exceptionWithName:v16 reason:v19 userInfo:0];
    v21 = v20;

    objc_exception_throw(v20);
  }

  v22 = @"kEventUUIDKey";
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v23[0] = uUID;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v13 = [(HMCharacteristicEvent *)self initWithDict:v12 characteristic:v6 triggerValue:v8];

  return v13;
}

- (HMCharacteristicEvent)initWithDict:(id)dict characteristic:(id)characteristic triggerValue:(id)value
{
  characteristicCopy = characteristic;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = HMCharacteristicEvent;
  v11 = [(HMEvent *)&v16 initWithDict:dict];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristic, characteristic);
    v13 = [valueCopy copy];
    triggerValue = v12->_triggerValue;
    v12->_triggerValue = v13;
  }

  return v12;
}

@end