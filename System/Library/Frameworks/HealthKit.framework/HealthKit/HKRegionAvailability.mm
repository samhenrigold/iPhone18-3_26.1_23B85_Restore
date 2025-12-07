@interface HKRegionAvailability
+ (id)allowedInSomeCountries:(id)countries;
+ (id)anyCountryAvailability;
+ (id)uncheckedAvailability;
- (BOOL)isEqual:(id)equal;
- (HKRegionAvailability)initWithCoder:(id)coder;
- (NSString)prettyPrintedDescription;
- (id)onboardingEligibilityForCountryCode:(id)code;
- (unint64_t)hash;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)code;
- (void)_initWithCategory:(void *)category version:(void *)version allowedCountries:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKRegionAvailability

+ (id)uncheckedAvailability
{
  v2 = objc_alloc_init(_HKUncheckedRegionAvailability);

  return v2;
}

+ (id)anyCountryAvailability
{
  v2 = objc_alloc_init(_HKAnyCountryAvailability);

  return v2;
}

+ (id)allowedInSomeCountries:(id)countries
{
  countriesCopy = countries;
  v4 = [[_HKAllowedInSomeCountriesAvailability alloc] initWithAllowedCountries:countriesCopy];

  return v4;
}

- (id)onboardingEligibilityForCountryCode:(id)code
{
  codeCopy = code;
  v5 = [HKFeatureAvailabilityOnboardingEligibility alloc];
  v6 = [(HKRegionAvailability *)self ineligibilityReasonsForOnboardingCountryCode:codeCopy];

  version = [(HKRegionAvailability *)self version];
  v8 = [(HKFeatureAvailabilityOnboardingEligibility *)v5 initWithIneligibilityReasons:v6 countryAvailabilityVersion:version];

  return v8;
}

- (NSString)prettyPrintedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  version = [(HKRegionAvailability *)self version];
  [v3 appendFormat:@"Version: %@\n", version];

  category = [(HKRegionAvailability *)self category];
  switch(category)
  {
    case 3:
      allowedCountries = [(HKRegionAvailability *)self allowedCountries];
      prettyPrintedDescription = [allowedCountries prettyPrintedDescription];
      v9 = prettyPrintedDescription;
      if (prettyPrintedDescription)
      {
        v10 = prettyPrintedDescription;
      }

      else
      {
        v10 = &stru_1F05FF230;
      }

      [v3 appendString:v10];

      goto LABEL_11;
    case 2:
      v6 = @"All countries";
      break;
    case 1:
      v6 = @"Unchecked";
      break;
    default:
      goto LABEL_11;
  }

  [v3 appendString:v6];
LABEL_11:
  v11 = [v3 copy];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = HKRegionAvailability;
  if (![(HKRegionAvailability *)&v12 isEqual:equalCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = equalCopy;
    allowedCountries = self->_allowedCountries;
    v8 = v6[3];
    if (allowedCountries != v8 && (!v8 || ![(HKAllowedCountries *)allowedCountries isEqual:?]) || self->_category != v6[1])
    {
      goto LABEL_12;
    }

    version = self->_version;
    v10 = v6[2];
    if (version == v10)
    {
      v5 = 1;
      goto LABEL_13;
    }

    if (v10)
    {
      v5 = [(NSString *)version isEqual:?];
    }

    else
    {
LABEL_12:
      v5 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HKAllowedCountries *)self->_allowedCountries hash];
  version = self->_version;
  v5 = self->_category ^ v3;
  return v5 ^ [(NSString *)version hash];
}

- (void)encodeWithCoder:(id)coder
{
  allowedCountries = self->_allowedCountries;
  coderCopy = coder;
  [coderCopy encodeObject:allowedCountries forKey:@"allowedCountries"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
}

- (HKRegionAvailability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"category"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowedCountries"];

  if (v6)
  {
    self = [(HKRegionAvailability *)self _initWithCategory:v5 version:v6 allowedCountries:v7];
    selfCopy = self;
  }

  else
  {
    _HKInitializeLogging(v8, v9);
    v12 = HKLogInfrastructure(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(HKRegionAvailability *)self initWithCoder:v12];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initWithCategory:(void *)category version:(void *)version allowedCountries:
{
  v33 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  versionCopy = version;
  if (self)
  {
    v28.receiver = self;
    v28.super_class = HKRegionAvailability;
    v9 = objc_msgSendSuper2(&v28, sel_init);
    self = v9;
    if (v9)
    {
      if ((a2 - 4) > 0xFFFFFFFFFFFFFFFCLL)
      {
        if (a2 != 3 || versionCopy)
        {
          v9[1] = a2;
          v18 = [categoryCopy copy];
          v19 = self[2];
          self[2] = v18;

          v20 = [versionCopy copy];
          selfCopy = self[3];
          self[3] = v20;
          goto LABEL_14;
        }

        _HKInitializeLogging(v9, v10);
        v16 = HKLogInfrastructure(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          *buf = 138543362;
          v30 = v26;
          v27 = v26;
          _os_log_error_impl(&dword_19197B000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Allowed countries is required when category is HKRegionAvailabilityCategoryAllowedInSomeCountries", buf, 0xCu);
        }
      }

      else
      {
        _HKInitializeLogging(v9, v10);
        v13 = HKLogInfrastructure(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = MEMORY[0x1E696AD98];
          v24 = v22;
          v25 = [v23 numberWithInteger:a2];
          *buf = 138543618;
          v30 = v22;
          v31 = 2114;
          v32 = v25;
          _os_log_error_impl(&dword_19197B000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Unknown category value: %{public}@", buf, 0x16u);
        }
      }

      selfCopy = self;
      self = 0;
LABEL_14:
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

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Version is required", &v4, 0xCu);
}

@end