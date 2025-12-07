@interface HKAllowedCountries
+ (id)allowedCountriesInIntersectionOfLocalAndRemoteSetPendingSync:(id)sync;
+ (id)allowedCountriesInIntersectionOfLocalSet:(id)set remoteSet:(id)remoteSet;
+ (id)allowedCountriesInLocalSet:(id)set;
+ (id)capabilityNotSupportedOnRemoteDevice:(id)device;
+ (id)noRemoteDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (BOOL)someRegionIsSupported;
- (HKAllowedCountries)initWithCoder:(id)coder;
- (NSString)prettyPrintedDescription;
- (unint64_t)hash;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code;
- (void)_initWithCategory:(void *)category version:(void *)version localCountrySet:(uint64_t)set remoteState:(void *)state remoteCountrySet:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAllowedCountries

+ (id)allowedCountriesInLocalSet:(id)set
{
  setCopy = set;
  v4 = [[_HKAllowedCountriesInLocalSet alloc] initWithLocalCountrySet:setCopy];

  return v4;
}

+ (id)noRemoteDevice:(id)device
{
  deviceCopy = device;
  v4 = [[_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction alloc] initWithLocalCountrySet:deviceCopy remoteState:2];

  return v4;
}

+ (id)capabilityNotSupportedOnRemoteDevice:(id)device
{
  deviceCopy = device;
  v4 = [[_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction alloc] initWithLocalCountrySet:deviceCopy remoteState:3];

  return v4;
}

+ (id)allowedCountriesInIntersectionOfLocalAndRemoteSetPendingSync:(id)sync
{
  syncCopy = sync;
  v4 = [[_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction alloc] initWithLocalCountrySet:syncCopy remoteState:4];

  return v4;
}

+ (id)allowedCountriesInIntersectionOfLocalSet:(id)set remoteSet:(id)remoteSet
{
  remoteSetCopy = remoteSet;
  setCopy = set;
  v7 = [[_HKAllowedCountriesInIntersectionOfLocalAndRemoteSet alloc] initWithLocalCountrySet:setCopy remoteCountrySet:remoteSetCopy];

  return v7;
}

- (NSString)prettyPrintedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  localCountrySet = [(HKAllowedCountries *)self localCountrySet];
  allCountryCodes = [localCountrySet allCountryCodes];
  v6 = [allCountryCodes sortedArrayUsingSelector:sel_compare_];
  v7 = [v6 componentsJoinedByString:{@", "}];

  category = [(HKAllowedCountries *)self category];
  if (category != 2)
  {
    if (category != 1)
    {
      goto LABEL_18;
    }

    [v3 appendString:@"Available only in countries specified by this device:\n"];
    [v3 appendFormat:@"%@\n", v7];
    localCountrySet2 = [(HKAllowedCountries *)self localCountrySet];
    v10 = NSStringFromHKCountrySetProvenance([localCountrySet2 provenance]);
    [v3 appendFormat:@"(Provenance: %@)\n", v10];
    goto LABEL_4;
  }

  [v3 appendString:@"Available based on the intersection of countries specified by the local and remote devices:\n"];
  [v3 appendFormat:@"Local : %@\n", v7];
  localCountrySet3 = [(HKAllowedCountries *)self localCountrySet];
  v12 = NSStringFromHKCountrySetProvenance([localCountrySet3 provenance]);
  [v3 appendFormat:@"(Provenance: %@)\n", v12];

  [v3 appendString:@"Remote: "];
  remoteState = [(HKAllowedCountries *)self remoteState];
  if (remoteState <= 3)
  {
    if (remoteState == 2)
    {
      v14 = @"No device";
    }

    else
    {
      if (remoteState != 3)
      {
        goto LABEL_18;
      }

      v14 = @"Device capability not supported";
    }

    goto LABEL_17;
  }

  if (remoteState == 4)
  {
    v14 = @"Awaiting sync of countries";
LABEL_17:
    [v3 appendString:v14];
    goto LABEL_18;
  }

  if (remoteState == 5)
  {
    remoteCountrySet = [(HKAllowedCountries *)self remoteCountrySet];
    allCountryCodes2 = [remoteCountrySet allCountryCodes];
    v17 = [allCountryCodes2 sortedArrayUsingSelector:sel_compare_];
    v18 = [v17 componentsJoinedByString:{@", "}];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1F05FF230;
    }

    [v3 appendString:v20];

    localCountrySet2 = [(HKAllowedCountries *)self remoteCountrySet];
    v10 = NSStringFromHKCountrySetProvenance([localCountrySet2 provenance]);
    [v3 appendFormat:@"\n(Provenance: %@)\n", v10];
LABEL_4:
  }

LABEL_18:
  v21 = [v3 copy];

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = HKAllowedCountries;
  if (![(HKAllowedCountries *)&v14 isEqual:equalCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_18;
    }

    v6 = equalCopy;
    if (self->_category != v6[1])
    {
      goto LABEL_16;
    }

    localCountrySet = self->_localCountrySet;
    v8 = v6[3];
    if (localCountrySet != v8 && (!v8 || ![(HKCountrySet *)localCountrySet isEqual:?]))
    {
      goto LABEL_16;
    }

    remoteCountrySet = self->_remoteCountrySet;
    v10 = v6[5];
    if (remoteCountrySet != v10 && (!v10 || ![(HKCountrySet *)remoteCountrySet isEqual:?]))
    {
      goto LABEL_16;
    }

    if (self->_remoteState != v6[4])
    {
      goto LABEL_16;
    }

    version = self->_version;
    v12 = v6[2];
    if (version == v12)
    {
      v5 = 1;
      goto LABEL_17;
    }

    if (v12)
    {
      v5 = [(NSString *)version isEqual:?];
    }

    else
    {
LABEL_16:
      v5 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v5 = 1;
LABEL_18:

  return v5;
}

- (unint64_t)hash
{
  category = self->_category;
  v4 = [(HKCountrySet *)self->_localCountrySet hash]^ category;
  v5 = v4 ^ [(HKCountrySet *)self->_remoteCountrySet hash]^ self->_remoteState;
  return v5 ^ [(NSString *)self->_version hash];
}

- (void)encodeWithCoder:(id)coder
{
  category = self->_category;
  coderCopy = coder;
  [coderCopy encodeInteger:category forKey:@"category"];
  [coderCopy encodeObject:self->_localCountrySet forKey:@"localCountrySet"];
  [coderCopy encodeObject:self->_remoteCountrySet forKey:@"remoteCountrySet"];
  [coderCopy encodeInteger:self->_remoteState forKey:@"remoteState"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
}

- (HKAllowedCountries)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"category"];
  v7 = v5;
  if ((v5 - 1) >= 2)
  {
    _HKInitializeLogging(v5, v6);
    v11 = HKLogInfrastructure(v20, v21);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HKAllowedCountries *)self initWithCoder:v7];
    }

    goto LABEL_13;
  }

  v8 = [coderCopy decodeIntegerForKey:@"remoteState"];
  v10 = v8;
  if ((v8 - 1) >= 5)
  {
    _HKInitializeLogging(v8, v9);
    v11 = HKLogInfrastructure(v22, v23);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HKAllowedCountries *)self initWithCoder:v10];
    }

LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localCountrySet"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteCountrySet"];
  v15 = v13;
  if (v11 && v12)
  {
    self = [(HKAllowedCountries *)self _initWithCategory:v7 version:v11 localCountrySet:v12 remoteState:v10 remoteCountrySet:v13];
    selfCopy = self;
  }

  else
  {
    _HKInitializeLogging(v13, v14);
    v18 = HKLogInfrastructure(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = 138543874;
      v27 = objc_opt_class();
      v28 = 2114;
      v29 = v11;
      v30 = 2114;
      v31 = v12;
      v25 = v27;
      _os_log_error_impl(&dword_19197B000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Missing required fields: %{public}@ %{public}@", &v26, 0x20u);
    }

    selfCopy = 0;
  }

LABEL_14:
  return selfCopy;
}

- (void)_initWithCategory:(void *)category version:(void *)version localCountrySet:(uint64_t)set remoteState:(void *)state remoteCountrySet:
{
  v31 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  versionCopy = version;
  stateCopy = state;
  if (self)
  {
    v28.receiver = self;
    v28.super_class = HKAllowedCountries;
    v14 = objc_msgSendSuper2(&v28, sel_init);
    self = v14;
    if (v14)
    {
      if (set != 5 || stateCopy)
      {
        v14[1] = a2;
        v20 = [categoryCopy copy];
        v21 = self[2];
        self[2] = v20;

        v22 = [versionCopy copy];
        v23 = self[3];
        self[3] = v22;

        self[4] = set;
        v24 = [stateCopy copy];
        selfCopy = self[5];
        self[5] = v24;
      }

      else
      {
        _HKInitializeLogging(v14, v15);
        v18 = HKLogInfrastructure(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          *buf = 138543362;
          v30 = v26;
          v27 = v26;
          _os_log_error_impl(&dword_19197B000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] activeRemoteCountries is required when remoteState is HKRemoteAllowedCountriesStateReady", buf, 0xCu);
        }

        selfCopy = self;
        self = 0;
      }
    }
  }

  return self;
}

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)someRegionIsSupported
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AD98];
  v5 = v3;
  v6 = [v4 numberWithInteger:a2];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v7, v8, "[%{public}@] Unsupported category: %{public}@", v9, v10, v11, v12);
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AD98];
  v5 = v3;
  v6 = [v4 numberWithInteger:a2];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v7, v8, "[%{public}@] Unsupported remote state: %{public}@", v9, v10, v11, v12);
}

@end