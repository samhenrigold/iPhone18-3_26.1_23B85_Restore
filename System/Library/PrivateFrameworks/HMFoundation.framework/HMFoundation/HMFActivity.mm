@interface HMFActivity
+ (HMFActivity)_currentActivity;
+ (HMFActivity)activityWithName:(id)name parent:(id)parent options:(unint64_t)options block:(id)block;
+ (NSString)currentClientMetricIdentifier;
+ (id)bundleIdentifier;
+ (id)logCategory;
+ (id)shortDescription;
+ (void)initialize;
+ (void)markCurrentActivity;
+ (void)markCurrentActivityWithFormat:(id)format;
+ (void)markCurrentActivityWithReason:(id)reason;
- (BOOL)hasStarted;
- (BOOL)isValid;
- (HMFActivity)init;
- (HMFActivity)initWithIdentifier:(id)identifier name:(id)name parent:(id)parent assertions:(id)assertions;
- (HMFActivity)initWithIdentifier:(id)identifier name:(id)name parent:(id)parent options:(unint64_t)options;
- (HMFActivity)initWithName:(id)name parent:(id)parent options:(unint64_t)options;
- (HMFActivity)parent;
- (NSArray)attributeDescriptions;
- (NSString)clientMetricIdentifier;
- (NSString)shortDescription;
- (id)_associatedObjectForKey:(id)key;
- (id)blockWithBlock:(id)block;
- (id)blockWithQualityOfService:(int64_t)service block:(id)block;
- (id)logIdentifier;
- (void)_setAssociatedObject:(id)object forKey:(id)key;
- (void)begin;
- (void)dealloc;
- (void)end;
- (void)invalidate;
- (void)markWithFormat:(id)format;
- (void)markWithReason:(id)reason;
- (void)performBlock:(id)block;
- (void)setClientMetricIdentifier:(id)identifier;
- (void)start;
- (void)synchronizeWithActivityLock:(id)lock;
@end

@implementation HMFActivity

+ (void)initialize
{
  v2 = objc_alloc_init(__HMFActivityManager);
  v3 = __manager;
  __manager = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (HMFActivity)_currentActivity
{
  v2 = __manager;
  identifier = os_activity_get_identifier(MEMORY[0x277D86210], 0);
  if (identifier)
  {
    os_unfair_lock_lock_with_options();
    v4 = objc_autoreleasePoolPush();
    identifier = NSMapGet(*(v2 + 2), identifier);
    objc_autoreleasePoolPop(v4);
    os_unfair_lock_unlock(v2 + 2);
    if (([identifier isValid] & 1) == 0)
    {

      identifier = 0;
    }
  }

  return identifier;
}

- (void)start
{
  v49 = *MEMORY[0x277D85DE8];
  if (self && ([self hasStarted] & 1) == 0)
  {
    v2 = NSStringFromSelector(sel_hasStarted);
    [self willChangeValueForKey:v2];

    os_unfair_lock_lock_with_options();
    *(self + 96) = mach_continuous_time();
    parent = [self parent];
    selfCopy = self;
    v5 = HMFGetOSLogHandle(selfCopy, v4);

    v6 = os_signpost_enabled(v5);
    if (v6)
    {
      v7 = selfCopy;
      v9 = HMFGetOSLogHandle(v7, v8);

      v10 = v7;
      v45 = 0;
      *buf = 0;
      *&buf[8] = 0;
      [v10[7] getUUIDBytes:buf];
      v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:buf length:16 freeWhenDone:0];
      [v11 getBytes:&v45 range:{objc_msgSend(v11, "length") - 8, 8}];

      if (v45 + 1 >= 2)
      {
        v12 = v45;
      }

      else
      {
        v12 = 0xEEEEB0B5B2B2EEEELL;
      }

      if (os_signpost_enabled(v9))
      {
        identifier = [v10 identifier];
        uUIDString = [identifier UUIDString];
        identifier2 = [parent identifier];
        uUIDString2 = [identifier2 UUIDString];
        name = [v10 name];
        *buf = 138412802;
        *&buf[4] = uUIDString;
        *&buf[12] = 2112;
        *&buf[14] = uUIDString2;
        v47 = 2112;
        v48 = name;
        _os_signpost_emit_with_name_impl(&dword_22ADEC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HMFActivity", "Identifier = %@, Parent = %@, Name = %@", buf, 0x20u);
      }
    }

    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__HMFActivity_start__block_invoke;
    block[3] = &unk_2786E6C80;
    block[4] = selfCopy;
    os_activity_apply(v19, block);
    objc_autoreleasePoolPop(v18);
    options = [selfCopy options];
    if ((options & 4) != 0 || ([selfCopy shortDescription], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(parent, "markWithFormat:", @"Started child activity: %@", v21), v21, options))
    {
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
      v23 = MEMORY[0x277CCACA8];
      name2 = [selfCopy name];
      identifier3 = [selfCopy identifier];
      uUIDString3 = [identifier3 UUIDString];
      v27 = [v23 stringWithFormat:@"%@.%@", name2, uUIDString3];

      if (options)
      {
        v28 = [[HMFMemoryAssertion alloc] initWithName:v27];
        if (v28)
        {
          [v22 addObject:v28];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v31 = HMFGetOSLogHandle(v29, v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier(v29);
            *buf = 138543362;
            *&buf[4] = v32;
            _os_log_impl(&dword_22ADEC000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create memory assertion", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }
      }

      if ((options & 2) != 0)
      {
        v33 = [[HMFPowerAssertion alloc] initWithName:v27];
        if (v33)
        {
          [v22 addObject:v33];
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v37 = HMFGetOSLogHandle(v35, v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier(v35);
            *buf = 138543362;
            *&buf[4] = v38;
            _os_log_impl(&dword_22ADEC000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to create power assertion", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v34);
        }
      }

      if (([v22 hmf_isEmpty] & 1) == 0)
      {
        v39 = [v22 copy];
        v40 = selfCopy[11];
        selfCopy[11] = v39;
      }
    }

    os_unfair_lock_unlock((self + 32));
    v41 = NSStringFromSelector(sel_hasStarted);
    [selfCopy didChangeValueForKey:v41];
  }
}

- (BOOL)hasStarted
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    v3 = self->_startMachTime != 0;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HMFActivity)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

+ (id)logCategory
{
  if (qword_280AFC298 != -1)
  {
    dispatch_once(&qword_280AFC298, &__block_literal_global_57);
  }

  v3 = qword_280AFC2A0;

  return v3;
}

uint64_t __26__HMFActivity_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Activity", @"com.apple.HMFoundation");
  v1 = qword_280AFC2A0;
  qword_280AFC2A0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __20__HMFActivity_start__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Started", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  name = [(HMFActivity *)self name];
  identifier = [(HMFActivity *)self identifier];
  uUIDString = [identifier UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@ (%@)", shortDescription, name, uUIDString];

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)begin
{
  [(HMFActivity *)self start];
  os_unfair_lock_lock_with_options();
  __HMFActivityBegin(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)end
{
  os_unfair_lock_lock_with_options();
  __HMFActivityEnd(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isValid
{
  os_unfair_lock_lock_with_options();
  valid = self->_valid;
  os_unfair_lock_unlock(&self->_lock);
  return valid;
}

- (void)invalidate
{
  p_lock = &self->_lock;
  os_unfair_lock_lock_with_options();
  if (self->_valid)
  {
    self->_valid = 0;
    __HMFActivityInvalidate(self);
  }

  os_unfair_lock_unlock(p_lock);
  v7 = __manager;
  selfCopy = self;
  identifier = os_activity_get_identifier(selfCopy->_internal, 0);
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  NSMapRemove(*(v7 + 2), identifier);
  objc_autoreleasePoolPop(v6);
  os_unfair_lock_unlock(v7 + 2);
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_valid)
  {
    __HMFActivityInvalidate(self);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_threadContexts;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle(selfCopy, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = HMFGetLogIdentifier(selfCopy);
          v13 = [v7 count];
          thread = [v7 thread];
          *buf = 138543874;
          v22 = v12;
          v23 = 2048;
          v24 = v13;
          v25 = 2112;
          v26 = thread;
          _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Thread left active (%tu): %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v4);
  }

  v16.receiver = self;
  v16.super_class = HMFActivity;
  [(HMFActivity *)&v16 dealloc];
}

+ (HMFActivity)activityWithName:(id)name parent:(id)parent options:(unint64_t)options block:(id)block
{
  nameCopy = name;
  parentCopy = parent;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [[HMFActivity alloc] initWithName:nameCopy parent:parentCopy options:options];
  internal = v13->_internal;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMFActivity_activityWithName_parent_options_block___block_invoke;
  block[3] = &unk_2786E7490;
  v15 = blockCopy;
  v18 = v15;
  os_activity_apply(internal, block);
  [(HMFActivity *)v13 invalidate];

  objc_autoreleasePoolPop(v12);
  return result;
}

+ (id)bundleIdentifier
{
  if (qword_280AFC290 != -1)
  {
    dispatch_once(&qword_280AFC290, &__block_literal_global_19);
  }

  v3 = _MergedGlobals_7;

  return v3;
}

void __31__HMFActivity_bundleIdentifier__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = _MergedGlobals_7;
  _MergedGlobals_7 = v2;

  objc_autoreleasePoolPop(v0);
}

+ (void)markCurrentActivity
{
  currentActivityForMarking = [self currentActivityForMarking];
  [currentActivityForMarking mark];
}

+ (void)markCurrentActivityWithReason:(id)reason
{
  reasonCopy = reason;
  currentActivityForMarking = [self currentActivityForMarking];
  [currentActivityForMarking markWithReason:reasonCopy];
}

+ (void)markCurrentActivityWithFormat:(id)format
{
  formatCopy = format;
  currentActivityForMarking = [self currentActivityForMarking];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v7];

  [currentActivityForMarking markWithReason:v6];
}

- (HMFActivity)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFActivity)initWithName:(id)name parent:(id)parent options:(unint64_t)options
{
  v8 = MEMORY[0x277CCAD78];
  parentCopy = parent;
  nameCopy = name;
  uUID = [v8 UUID];
  v12 = [(HMFActivity *)self initWithIdentifier:uUID name:nameCopy parent:parentCopy options:options];

  return v12;
}

- (HMFActivity)initWithIdentifier:(id)identifier name:(id)name parent:(id)parent assertions:(id)assertions
{
  identifierCopy = identifier;
  nameCopy = name;
  parentCopy = parent;
  assertionsCopy = assertions;
  if (![assertionsCopy count])
  {
    _HMFPreconditionFailure(@"assertions.count");
  }

  v14 = [(HMFActivity *)self initWithIdentifier:identifierCopy name:nameCopy parent:parentCopy options:0];
  if (v14->_internalAssertions)
  {
    _HMFPreconditionFailure(@"nil == self->_internalAssertions");
  }

  v15 = v14;
  v16 = [assertionsCopy copy];
  internalAssertions = v15->_internalAssertions;
  v15->_internalAssertions = v16;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__HMFActivity_initWithIdentifier_name_parent_assertions___block_invoke;
  v20[3] = &unk_2786E74B8;
  v18 = v15;
  v21 = v18;
  [assertionsCopy enumerateObjectsUsingBlock:v20];

  return v18;
}

void __57__HMFActivity_initWithIdentifier_name_parent_assertions___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 acquire:0] & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v7 = HMFGetOSLogHandle(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier(v5);
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to acquire the assertion : %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (HMFActivity)initWithIdentifier:(id)identifier name:(id)name parent:(id)parent options:(unint64_t)options
{
  identifierCopy = identifier;
  nameCopy = name;
  parentCopy = parent;
  v45.receiver = self;
  v45.super_class = HMFActivity;
  v14 = [(HMFActivity *)&v45 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_23;
  }

  objc_storeStrong(&v14->_identifier, identifier);
  v15->_valid = 1;
  v16 = [MEMORY[0x277CBEB58] set];
  threadContexts = v15->_threadContexts;
  v15->_threadContexts = v16;

  v18 = [nameCopy copy];
  name = v15->_name;
  v15->_name = v18;

  v15->_options = options;
  if (!parentCopy)
  {
    parentCopy = +[HMFActivity _currentActivity];
  }

  objc_storeWeak(&v15->_parent, parentCopy);
  v20 = MEMORY[0x277D86210];
  options = v15->_options;
  v40 = nameCopy;
  if ((options & 8) != 0)
  {
    v23 = 2;
    v22 = MEMORY[0x277D86218];
  }

  else
  {
    if (!parentCopy || (v22 = *(parentCopy + 1)) == 0)
    {
      v23 = 2;
      v24 = MEMORY[0x277D86210];
      goto LABEL_11;
    }

    v23 = 0;
  }

  v24 = v22;

  options = v15->_options;
LABEL_11:
  if ((options & 4) != 0)
  {
    v25 = OS_ACTIVITY_FLAG_DETACHED;
  }

  else
  {
    v25 = v23;
  }

  v26 = _os_activity_create(&dword_22ADEC000, "HMFActivity", v24, v25);
  internal = v15->_internal;
  v15->_internal = v26;

  v28 = __manager;
  v29 = v15;
  identifier = os_activity_get_identifier(v15->_internal, 0);
  os_unfair_lock_lock_with_options();
  v31 = objc_autoreleasePoolPush();
  NSMapInsert(*(v28 + 2), identifier, v29);
  objc_autoreleasePoolPop(v31);
  os_unfair_lock_unlock(v28 + 2);

  v32 = objc_autoreleasePoolPush();
  v33 = v15->_internal;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke;
  block[3] = &unk_2786E6C80;
  v34 = v29;
  v44 = v34;
  os_activity_apply(v33, block);

  objc_autoreleasePoolPop(v32);
  if (parentCopy)
  {
    os_unfair_lock_lock_with_options();
    v35 = [*(parentCopy + 5) copy];
    os_unfair_lock_unlock(parentCopy + 8);
    if (v35)
    {
      v36 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v35];
      v37 = v34[5];
      v34[5] = v36;

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke_2;
      v41[3] = &unk_2786E74E0;
      v42 = v34;
      [v35 enumerateKeysAndObjectsUsingBlock:v41];
      if (![v34[5] count])
      {
        v38 = v34[5];
        v34[5] = 0;
      }
    }
  }

  else
  {
    v35 = 0;
  }

  nameCopy = v40;
  if ((v15->_options & 0x10) == 0)
  {
    [(HMFActivity *)v34 start];
    __HMFActivityBegin(v34);
  }

LABEL_23:
  return v15;
}

uint64_t __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 80) & 4) != 0)
  {
    v2 = voucher_copy_without_importance();
  }

  else
  {
    v2 = voucher_copy();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForChildActivity];
  if (v5)
  {
    [*(*(a1 + 32) + 40) setObject:v5 forKey:v6];
  }
}

- (NSArray)attributeDescriptions
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  parent = [(HMFActivity *)self parent];
  identifier = [parent identifier];
  uUIDString = [identifier UUIDString];
  v7 = [(HMFAttributeDescription *)v3 initWithName:@"Parent" value:uUIDString];
  v8 = [HMFAttributeDescription alloc];
  assertions = [(HMFActivity *)self assertions];
  if (assertions)
  {
    v10 = assertions;
    array = [MEMORY[0x277CBEB18] array];
    v12 = array;
    if (v10)
    {
      [array addObject:@"Memory"];
    }

    if ((v10 & 2) != 0)
    {
      [v12 addObject:@"Power"];
    }

    if ([v12 count])
    {
      v13 = [v12 componentsJoinedByString:{@", "}];
    }

    else
    {
      v13 = @"Unknown";
    }
  }

  else
  {
    v13 = @"None";
  }

  v14 = [(HMFAttributeDescription *)v8 initWithName:@"Assertions" value:v13];
  v20[1] = v14;
  v15 = [HMFAttributeDescription alloc];
  v16 = HMFBooleanToString([(HMFActivity *)self isValid]);
  v17 = [(HMFAttributeDescription *)v15 initWithName:@"Valid" value:v16];
  v20[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  return v18;
}

- (void)markWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(HMFActivity *)self markWithReason:v6];
}

- (void)markWithReason:(id)reason
{
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  [(HMFActivity *)self start];
  os_unfair_lock_lock_with_options();
  if (self->_valid)
  {
    selfCopy = self;
    v7 = HMFGetOSLogHandle(selfCopy, v6);

    v8 = os_signpost_enabled(v7);
    if (v8)
    {
      v9 = selfCopy;
      v11 = HMFGetOSLogHandle(v9, v10);

      v12 = v9;
      v21 = 0;
      *buf = 0uLL;
      [v12[7] getUUIDBytes:buf];
      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:buf length:16 freeWhenDone:0];
      [v13 getBytes:&v21 range:{objc_msgSend(v13, "length") - 8, 8}];

      v14 = v21;
      if (os_signpost_enabled(v11))
      {
        if (v14 + 1 >= 2)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0xEEEEB0B5B2B2EEEELL;
        }

        *buf = 138412290;
        *&buf[4] = reasonCopy;
        _os_signpost_emit_with_name_impl(&dword_22ADEC000, v11, OS_SIGNPOST_EVENT, v15, "HMFActivity", "Reason = %@", buf, 0xCu);
      }
    }

    v16 = objc_autoreleasePoolPush();
    internal = selfCopy->_internal;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__HMFActivity_markWithReason___block_invoke;
    block[3] = &unk_2786E6D18;
    v19 = reasonCopy;
    v20 = selfCopy;
    os_activity_apply(internal, block);

    objc_autoreleasePoolPop(v16);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __30__HMFActivity_markWithReason___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v6 = HMFGetOSLogHandle(v4, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier(v4);
    v9 = *(a1 + 32);
    *buf = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v10 = "%{public}@Marked with reason: %@";
    v11 = v6;
    v12 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier(v4);
    *buf = 138543362;
    v25 = v8;
    v10 = "%{public}@Marked";
    v11 = v6;
    v12 = 12;
  }

  _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = *(a1 + 40);
  if (v13)
  {
    v13 = v13[11];
  }

  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * i) mark];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (id)blockWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    _HMFPreconditionFailure(@"block");
  }

  v5 = blockCopy;
  [(HMFActivity *)self start];
  v6 = dispatch_block_create_with_voucher();

  return v6;
}

- (id)blockWithQualityOfService:(int64_t)service block:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    _HMFPreconditionFailure(@"block");
  }

  v6 = blockCopy;
  [(HMFActivity *)self start];
  v7 = dispatch_block_create_with_voucher_and_qos_class();

  return v7;
}

- (void)performBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    [(HMFActivity *)self start];
    v5 = [(HMFActivity *)self blockWithBlock:blockCopy];

    v5[2]();
  }
}

- (void)_setAssociatedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_assert_owner(&self->_lock);
  associatedObjects = self->_associatedObjects;
  if (!associatedObjects)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_associatedObjects;
    self->_associatedObjects = dictionary;

    associatedObjects = self->_associatedObjects;
  }

  [(NSMutableDictionary *)associatedObjects setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (id)_associatedObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_associatedObjects objectForKey:keyCopy];

  return v5;
}

- (void)synchronizeWithActivityLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock_with_options();
  lockCopy[2]();
  os_unfair_lock_unlock(&self->_lock);
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  name = self->_name;
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v2 stringWithFormat:@"%@ (%@)", name, uUIDString];

  return v5;
}

- (void)setClientMetricIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMFActivity_ClientMetricIdentifier__setClientMetricIdentifier___block_invoke;
  v6[3] = &unk_2786E6D18;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(HMFActivity *)self synchronizeWithActivityLock:v6];
}

void __65__HMFActivity_ClientMetricIdentifier__setClientMetricIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _associatedObjectForKey:@"HMFClientMetricIdentifier"];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v6 = HMFGetOSLogHandle(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier(v4);
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v2;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Using existing clientMetricIdentifier: %@ and dropping: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [*(a1 + 32) _setAssociatedObject:*(a1 + 40) forKey:@"HMFClientMetricIdentifier"];
  }
}

- (NSString)clientMetricIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HMFActivity_ClientMetricIdentifier__clientMetricIdentifier__block_invoke;
  v4[3] = &unk_2786E7AF0;
  v4[4] = self;
  v4[5] = &v5;
  [(HMFActivity *)self synchronizeWithActivityLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __61__HMFActivity_ClientMetricIdentifier__clientMetricIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _associatedObjectForKey:@"HMFClientMetricIdentifier"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

+ (NSString)currentClientMetricIdentifier
{
  v2 = +[HMFActivity _currentActivity];
  clientMetricIdentifier = [v2 clientMetricIdentifier];

  return clientMetricIdentifier;
}

@end