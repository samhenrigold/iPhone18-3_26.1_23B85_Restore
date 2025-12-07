@interface HMFAssertion
+ (id)bundleIdentifier;
+ (id)logCategory;
- (BOOL)acquire:(id *)acquire;
- (HMFAssertion)init;
- (HMFAssertion)initWithName:(id)name;
- (NSString)uniqueDescription;
- (id)attributeDescriptions;
- (void)dealloc;
- (void)invalidate;
@end

@implementation HMFAssertion

+ (id)bundleIdentifier
{
  if (qword_280AFC608 != -1)
  {
    dispatch_once(&qword_280AFC608, &__block_literal_global_21);
  }

  v3 = _MergedGlobals_63;

  return v3;
}

void __32__HMFAssertion_bundleIdentifier__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = _MergedGlobals_63;
  _MergedGlobals_63 = v2;

  objc_autoreleasePoolPop(v0);
}

- (HMFAssertion)init
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

- (HMFAssertion)initWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v10.receiver = self;
    v10.super_class = HMFAssertion;
    v5 = [(HMFAssertion *)&v10 init];
    if (v5)
    {
      v6 = [nameCopy copy];
      name = v5->_name;
      v5->_name = v6;

      v5->_valid = 1;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_valid)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle(selfCopy, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Invalidating during deallocation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFAssertion *)selfCopy invalidate];
  }

  v8.receiver = self;
  v8.super_class = HMFAssertion;
  [(HMFAssertion *)&v8 dealloc];
}

- (NSString)uniqueDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[HMFAssertion bundleIdentifier];
  name = [(HMFAssertion *)self name];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, name];

  return v6;
}

- (BOOL)acquire:(id *)acquire
{
  v12 = *MEMORY[0x277D85DE8];
  if (![(HMFAssertion *)self isValid])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle(selfCopy, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier(selfCopy);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Acquiring", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    selfCopy->_valid = 1;
  }

  return 1;
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HMFAssertion *)self isValid])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle(selfCopy, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier(selfCopy);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Invalidating", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    selfCopy->_valid = 0;
  }
}

+ (id)logCategory
{
  if (qword_280AFC610 != -1)
  {
    dispatch_once(&qword_280AFC610, &__block_literal_global_11);
  }

  v3 = qword_280AFC618;

  return v3;
}

uint64_t __27__HMFAssertion_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Assertion", @"com.apple.HMFoundation");
  v1 = qword_280AFC618;
  qword_280AFC618 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  name = [(HMFAssertion *)self name];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Name" value:name];
  v11[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  v7 = HMFBooleanToString([(HMFAssertion *)self isValid]);
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Valid" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

@end