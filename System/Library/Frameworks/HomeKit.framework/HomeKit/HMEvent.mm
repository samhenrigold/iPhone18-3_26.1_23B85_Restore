@interface HMEvent
+ (BOOL)sharedTriggerActivationSupportedForHome:(id)home;
+ (HMEvent)new;
- (BOOL)isEqual:(id)equal;
- (HMEvent)init;
- (HMEvent)initWithCoder:(id)coder;
- (HMEvent)initWithDict:(id)dict;
- (HMEventTrigger)eventTrigger;
- (NSUUID)uniqueIdentifier;
- (id)_serializeForAdd;
- (unint64_t)hash;
- (void)__configureWithContext:(id)context eventTrigger:(id)trigger;
- (void)_unconfigure;
- (void)_updateEventWithPayload:(id)payload completionHandler:(id)handler;
- (void)_updateTriggerType;
- (void)setEventTrigger:(id)trigger;
@end

@implementation HMEvent

- (HMEvent)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kEventUUIDKey";
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v8[0] = uUID;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [(HMEvent *)self initWithDict:v4];

  return v5;
}

- (id)_serializeForAdd
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"kEventUUIDKey";
  uuid = [(HMEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  v10[0] = uUIDString;
  v9[1] = @"kEventTriggerEndEvent";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMEvent isEndEvent](self, "isEndEvent")}];
  v10[1] = v5;
  v9[2] = @"kEventTriggerTypeKey";
  triggerType = [(HMEvent *)self triggerType];
  v10[2] = triggerType;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (HMEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMEvent *)self init];
  if (v5)
  {
    v6 = [coderCopy hm_decodeAndCacheUUIDFromStringForKey:@"HM.eventIdentifier"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_endEvent = [coderCopy decodeBoolForKey:@"kEventTriggerEndEvent"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.eventTrigger"];
    objc_storeWeak(&v5->_eventTrigger, v8);

    [(HMEvent *)v5 _updateTriggerType];
  }

  return v5;
}

- (void)_updateEventWithPayload:(id)payload completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (context)
  {
    uuid = [(HMEvent *)self uuid];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__HMEvent__updateEventWithPayload_completionHandler___block_invoke;
    v15[3] = &unk_1E754E480;
    v16 = context;
    selfCopy = self;
    v18 = handlerCopy;
    [(_HMContext *)v16 sendMessage:uuid target:payloadCopy payload:v15 responseHandler:?];

    v10 = v16;
LABEL_7:

    goto LABEL_8;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v14;
    v21 = 2080;
    v22 = "[HMEvent _updateEventWithPayload:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (handlerCopy)
  {
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v10);
    goto LABEL_7;
  }

LABEL_8:
}

void __53__HMEvent__updateEventWithPayload_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = v9;
  }

  else
  {
    [*(a1 + 40) _updateFromDictionary:a3];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)_updateTriggerType
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, @"kEventTriggerTypeCharacteristicEventKey");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, @"kEventTriggerTypeLocationEventKey");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, @"kEventTriggerTypeCalendarEventKey");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, @"kEventTriggerTypeSignificantTimeEventKey");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, @"kEventTriggerTypeDurationEventKey");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, @"kEventTriggerTypeCharacteristicThresholdRangeEventKey");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, @"kEventTriggerTypePresenceEventKey");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    triggerType = self->_triggerType;
    self->_triggerType = @"kEventTriggerTypeMatterAttributeEventKey";
  }
}

- (void)setEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_eventTrigger, triggerCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMEventTrigger)eventTrigger
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_eventTrigger);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(HMEvent *)equalCopy uuid];
      uuid2 = [(HMEvent *)self uuid];
      v7 = [uuid isEqual:uuid2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  uuid = [(HMEvent *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)__configureWithContext:(id)context eventTrigger:(id)trigger
{
  contextCopy = context;
  [(HMEvent *)self setEventTrigger:trigger];
  if (contextCopy)
  {
    objc_storeStrong(&self->_context, context);
  }
}

- (void)_unconfigure
{
  v13 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring event", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMEvent *)selfCopy setEventTrigger:0];
    [(HMEvent *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (HMEvent)initWithDict:(id)dict
{
  dictCopy = dict;
  v10.receiver = self;
  v10.super_class = HMEvent;
  v5 = [(HMEvent *)&v10 init];
  if (v5)
  {
    v6 = [dictCopy hmf_UUIDForKey:@"kEventUUIDKey"];
    v7 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v5->_endEvent = [dictCopy hmf_BOOLForKey:@"kEventTriggerEndEvent"];
    [(HMEvent *)v5 _updateTriggerType];
  }

  return v5;
}

+ (HMEvent)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___HMEvent;
  return objc_msgSendSuper2(&v3, "new");
}

+ (BOOL)sharedTriggerActivationSupportedForHome:(id)home
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  residentDevices = [home residentDevices];
  v4 = [residentDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(residentDevices);
        }

        if (([*(*(&v8 + 1) + 8 * i) capabilities] & 8) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [residentDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end