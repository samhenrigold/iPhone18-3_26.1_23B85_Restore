@interface HMWeeklyScheduleEntry
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMWeeklyScheduleEntry)initWithCoder:(id)coder;
- (HMWeeklyScheduleEntry)initWithDictionary:(id)dictionary;
- (HMWeeklyScheduleEntry)initWithStart:(id)start end:(id)end;
- (id)serializeForAdd;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMWeeklyScheduleEntry

- (HMWeeklyScheduleEntry)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy hmf_integerForKey:@"startWeekday" error:0];
    v7 = [v5 hmf_integerForKey:@"startHour" error:0];
    v8 = [v5 hmf_integerForKey:@"startMinute" error:0];
    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v9 setWeekday:v6];
    [v9 setHour:v7];
    [v9 setMinute:v8];
    if (v9)
    {
      v10 = [v5 hmf_integerForKey:@"endWeekday" error:0];
      v11 = [v5 hmf_integerForKey:@"endHour" error:0];
      v12 = [v5 hmf_integerForKey:@"endMinute" error:0];
      v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v13 setWeekday:v10];
      [v13 setHour:v11];
      [v13 setMinute:v12];
      if (v13)
      {
        self = [(HMWeeklyScheduleEntry *)self initWithStart:v9 end:v13];
        selfCopy = self;
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        self = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v20;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the end date components", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        selfCopy = 0;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      self = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v17;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the start date components", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)serializeForAdd
{
  v24[6] = *MEMORY[0x1E69E9840];
  v23[0] = @"startWeekday";
  v3 = MEMORY[0x1E696AD98];
  start = [(HMWeeklyScheduleEntry *)self start];
  v21 = [v3 numberWithInteger:{objc_msgSend(start, "weekday")}];
  v24[0] = v21;
  v23[1] = @"startHour";
  v4 = MEMORY[0x1E696AD98];
  start2 = [(HMWeeklyScheduleEntry *)self start];
  v5 = [v4 numberWithInteger:{objc_msgSend(start2, "hour")}];
  v24[1] = v5;
  v23[2] = @"startMinute";
  v6 = MEMORY[0x1E696AD98];
  start3 = [(HMWeeklyScheduleEntry *)self start];
  v8 = [v6 numberWithInteger:{objc_msgSend(start3, "minute")}];
  v24[2] = v8;
  v23[3] = @"endWeekday";
  v9 = MEMORY[0x1E696AD98];
  v10 = [(HMWeeklyScheduleEntry *)self end];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "weekday")}];
  v24[3] = v11;
  v23[4] = @"endHour";
  v12 = MEMORY[0x1E696AD98];
  v13 = [(HMWeeklyScheduleEntry *)self end];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "hour")}];
  v24[4] = v14;
  v23[5] = @"endMinute";
  v15 = MEMORY[0x1E696AD98];
  v16 = [(HMWeeklyScheduleEntry *)self end];
  v17 = [v15 numberWithInteger:{objc_msgSend(v16, "minute")}];
  v24[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];

  return v18;
}

- (HMWeeklyScheduleEntry)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMScheduleEntryStartCodingKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMScheduleEntryEndCodingKey"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding start:%@, end:%@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(HMWeeklyScheduleEntry *)self initWithStart:v5 end:v6];
    v13 = selfCopy;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  start = [(HMWeeklyScheduleEntry *)self start];
  [coderCopy encodeObject:start forKey:@"HMScheduleEntryStartCodingKey"];

  v6 = [(HMWeeklyScheduleEntry *)self end];
  [coderCopy encodeObject:v6 forKey:@"HMScheduleEntryEndCodingKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      start = [(HMWeeklyScheduleEntry *)self start];
      start2 = [(HMWeeklyScheduleEntry *)v7 start];
      if ([start isEqual:start2])
      {
        v10 = [(HMWeeklyScheduleEntry *)self end];
        v11 = [(HMWeeklyScheduleEntry *)v7 end];
        v12 = [v10 isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HMWeeklyScheduleEntry)initWithStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v12.receiver = self;
  v12.super_class = HMWeeklyScheduleEntry;
  v9 = [(HMWeeklyScheduleEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_start, start);
    objc_storeStrong(&v10->_end, end);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4, &__block_literal_global_669);
  }

  v3 = logCategory__hmf_once_v5;

  return v3;
}

uint64_t __36__HMWeeklyScheduleEntry_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5;
  logCategory__hmf_once_v5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end