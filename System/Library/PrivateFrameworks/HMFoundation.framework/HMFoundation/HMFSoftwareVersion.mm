@interface HMFSoftwareVersion
+ (BOOL)isValidVersionString:(id)string;
+ (id)logCategory;
- (HMFSoftwareVersion)initWithCoder:(id)coder;
- (HMFSoftwareVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion updateVersion:(unint64_t)updateVersion buildVersion:(id)buildVersion;
- (HMFSoftwareVersion)initWithString:(id)string;
- (NSString)shortVersionString;
- (id)versionString;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFSoftwareVersion

- (HMFSoftwareVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion updateVersion:(unint64_t)updateVersion buildVersion:(id)buildVersion
{
  buildVersionCopy = buildVersion;
  v15.receiver = self;
  v15.super_class = HMFSoftwareVersion;
  v11 = [(HMFVersion *)&v15 initWithMajorVersion:version minorVersion:minorVersion updateVersion:updateVersion];
  if (v11)
  {
    v12 = [buildVersionCopy copy];
    buildVersion = v11->_buildVersion;
    v11->_buildVersion = v12;
  }

  return v11;
}

- (HMFSoftwareVersion)initWithString:(id)string
{
  v40 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v5 = +[HMFVersion versionRegex];
    v6 = [v5 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];

    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      if ([v7 numberOfRanges])
      {
        v8 = [v7 rangeAtIndex:1];
        v10 = [stringCopy substringWithRange:{v8, v9}];
        if ([v7 numberOfRanges] >= 4 && (v11 = objc_msgSend(v7, "rangeAtIndex:", 3), v12))
        {
          v13 = [stringCopy substringWithRange:{v11, v12}];
        }

        else
        {
          v13 = 0;
        }

        if ([v7 numberOfRanges] >= 6 && (v19 = objc_msgSend(v7, "rangeAtIndex:", 5), v20))
        {
          v21 = [stringCopy substringWithRange:{v19, v20}];
        }

        else
        {
          v21 = 0;
        }

        if ([v7 numberOfRanges] >= 0xD && (v22 = objc_msgSend(v7, "rangeAtIndex:", 12), v23))
        {
          v24 = [stringCopy substringWithRange:{v22, v23}];
        }

        else
        {
          v24 = 0;
        }

        if ([v7 numberOfRanges] >= 0xB)
        {
          v25 = [v7 rangeAtIndex:10];
          if (v26)
          {
            v27 = [stringCopy substringWithRange:{v25, v26}];

            v24 = v27;
          }
        }

        if ([v7 numberOfRanges] >= 9)
        {
          v28 = [v7 rangeAtIndex:8];
          if (v29)
          {
            v30 = [stringCopy substringWithRange:{v28, v29}];

            v24 = v30;
          }
        }

        self = -[HMFSoftwareVersion initWithMajorVersion:minorVersion:updateVersion:buildVersion:](self, "initWithMajorVersion:minorVersion:updateVersion:buildVersion:", [v10 integerValue], objc_msgSend(v13, "integerValue"), objc_msgSend(v21, "integerValue"), v24);

        selfCopy = self;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        self = self;
        v33 = HMFGetOSLogHandle(self, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier(self);
          v36 = 138543618;
          v37 = v34;
          v38 = 2112;
          v39 = stringCopy;
          _os_log_impl(&dword_22ADEC000, v33, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v36, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        selfCopy = 0;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      self = self;
      v17 = HMFGetOSLogHandle(self, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier(self);
        v36 = 138543618;
        v37 = v18;
        v38 = 2112;
        v39 = stringCopy;
        _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v36, 0x16u);
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

- (id)versionString
{
  buildVersion = [(HMFSoftwareVersion *)self buildVersion];

  if (buildVersion)
  {
    v4 = MEMORY[0x277CCACA8];
    v10.receiver = self;
    v10.super_class = HMFSoftwareVersion;
    versionString = [(HMFVersion *)&v10 versionString];
    buildVersion2 = [(HMFSoftwareVersion *)self buildVersion];
    versionString2 = [v4 stringWithFormat:@"%@ (%@)", versionString, buildVersion2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HMFSoftwareVersion;
    versionString2 = [(HMFVersion *)&v9 versionString];
  }

  return versionString2;
}

- (NSString)shortVersionString
{
  v4.receiver = self;
  v4.super_class = HMFSoftwareVersion;
  versionString = [(HMFVersion *)&v4 versionString];

  return versionString;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v13.receiver = self;
  v13.super_class = HMFSoftwareVersion;
  buildVersion = [(HMFVersion *)&v13 compare:compareCopy];
  if (!buildVersion)
  {
    v6 = compareCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    buildVersion = [(HMFSoftwareVersion *)self buildVersion];
    if (buildVersion)
    {
      buildVersion2 = [v8 buildVersion];

      if (buildVersion2)
      {
        buildVersion3 = [(HMFSoftwareVersion *)self buildVersion];
        buildVersion4 = [v8 buildVersion];
        buildVersion = [buildVersion3 compare:buildVersion4 options:65];
      }

      else
      {
        buildVersion = 0;
      }
    }
  }

  return buildVersion;
}

+ (BOOL)isValidVersionString:(id)string
{
  stringCopy = string;
  v4 = +[HMFVersion versionRegex];
  if (v4)
  {
    v5 = [v4 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMFSoftwareVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMFVersion alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.build"];
    self = [(HMFSoftwareVersion *)self initWithMajorVersion:[(HMFVersion *)v5 majorVersion] minorVersion:[(HMFVersion *)v5 minorVersion] updateVersion:[(HMFVersion *)v5 updateVersion] buildVersion:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMFSoftwareVersion;
  coderCopy = coder;
  [(HMFVersion *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMFSoftwareVersion *)self buildVersion:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.build"];
}

+ (id)logCategory
{
  if (qword_280AFC308 != -1)
  {
    dispatch_once(&qword_280AFC308, &__block_literal_global_138);
  }

  v3 = qword_280AFC310;

  return v3;
}

uint64_t __33__HMFSoftwareVersion_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"HMFSoftwareVersion", @"com.apple.HomeKit");
  v1 = qword_280AFC310;
  qword_280AFC310 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end