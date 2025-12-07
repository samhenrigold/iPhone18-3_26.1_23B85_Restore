@interface HKCategorySample
+ (HKCategorySample)categorySampleWithType:(HKCategoryType *)type value:(NSInteger)value startDate:(NSDate *)startDate endDate:(NSDate *)endDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
+ (id)_categorySamplesSplittingDurationWithType:(id)type value:(int64_t)value startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata;
- (BOOL)isEquivalent:(id)equivalent;
- (HKCategorySample)init;
- (HKCategorySample)initWithCoder:(id)coder;
- (NSInteger)value;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)_valueDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCategorySample

- (NSInteger)value
{
  categoryType = [(HKCategorySample *)self categoryType];
  v4 = [categoryType _categoryValueForValue:self->_value];

  return v4;
}

- (id)_valueDescription
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_value];
  v3 = [v2 description];

  return v3;
}

- (HKCategorySample)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HKCategorySample)categorySampleWithType:(HKCategoryType *)type value:(NSInteger)value startDate:(NSDate *)startDate endDate:(NSDate *)endDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v14 = type;
  v15 = startDate;
  v16 = endDate;
  v17 = device;
  v18 = metadata;
  if (v15)
  {
    [(NSDate *)v15 timeIntervalSinceReferenceDate];
    v20 = v19;
    if (v16)
    {
LABEL_3:
      [(NSDate *)v16 timeIntervalSinceReferenceDate];
      v22 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 2.22507386e-308;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v22 = 2.22507386e-308;
LABEL_6:
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __83__HKCategorySample_categorySampleWithType_value_startDate_endDate_device_metadata___block_invoke;
  v25[3] = &__block_descriptor_40_e26_v16__0__HKCategorySample_8l;
  v25[4] = value;
  v23 = [self _newSampleWithType:v14 startDate:v17 endDate:v18 device:v25 metadata:v20 config:v22];

  return v23;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v19.receiver = self;
  v19.super_class = HKCategorySample;
  v5 = [(HKSample *)&v19 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    categoryType = [(HKCategorySample *)self categoryType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      categoryType2 = [(HKCategorySample *)self categoryType];
      if ([categoryType2 _acceptsValue:self->_value])
      {
        v7 = 0;
      }

      else
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = objc_opt_class();
        value = self->_value;
        categoryType3 = [(HKCategorySample *)self categoryType];
        v7 = [v14 hk_errorForInvalidArgument:@"@" class:v15 selector:a2 format:{@"Value %ld is not compatible with type %@", value, categoryType3}];
      }
    }

    else
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = objc_opt_class();
      categoryType4 = [(HKCategorySample *)self categoryType];
      v7 = [v11 hk_errorForInvalidArgument:@"@" class:v12 selector:a2 format:{@"Data type %@ must be of type %@", categoryType4, objc_opt_class()}];
    }
  }

  return v7;
}

+ (id)_categorySamplesSplittingDurationWithType:(id)type value:(int64_t)value startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata
{
  v41 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  deviceCopy = device;
  metadataCopy = metadata;
  if ([typeCopy isMaximumDurationRestricted] && (objc_msgSend(endDateCopy, "timeIntervalSinceDate:", dateCopy), v20 = v19, v21 = objc_msgSend(typeCopy, "maximumAllowedDuration"), v20 > v23))
  {
    _HKInitializeLogging(v21, v22);
    v24 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v36 = typeCopy;
      v37 = 2112;
      v38 = dateCopy;
      v39 = 2112;
      v40 = endDateCopy;
      _os_log_fault_impl(&dword_19197B000, v24, OS_LOG_TYPE_FAULT, "Data duration is longer than allowed for type %@, start date %@, end date %@", buf, 0x20u);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __102__HKCategorySample__categorySamplesSplittingDurationWithType_value_startDate_endDate_device_metadata___block_invoke;
    v28[3] = &unk_1E7384970;
    selfCopy = self;
    v29 = typeCopy;
    valueCopy = value;
    v30 = deviceCopy;
    v31 = metadataCopy;
    v25 = [self _enumerateValidIntervalsWithStartDate:dateCopy endDate:endDateCopy sampleType:v29 block:v28];

    v26 = v29;
  }

  else
  {
    v26 = [self categorySampleWithType:typeCopy value:value startDate:dateCopy endDate:endDateCopy device:deviceCopy metadata:metadataCopy];
    v34 = v26;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  }

  return v25;
}

- (HKCategorySample)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKCategorySample;
  v5 = [(HKSample *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    _defaultValue = [coderCopy decodeIntegerForKey:@"value"];
    categoryType = [(HKCategorySample *)v5 categoryType];
    v8 = [categoryType _acceptsValue:_defaultValue];

    if ((v8 & 1) == 0)
    {
      v9 = +[_HKBehavior isAppleInternalInstall];
      v10 = v9;
      _HKInitializeLogging(v9, v11);
      v12 = HKLogDefault;
      if (v10)
      {
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
        {
          [(HKCategorySample *)v12 initWithCoder:v5, _defaultValue];
        }
      }

      else if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        categoryType2 = [(HKCategorySample *)v5 categoryType];
        *buf = 138412290;
        v19 = categoryType2;
        _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "Invalid value received for %@, setting value to 0", buf, 0xCu);
      }

      categoryType3 = [(HKCategorySample *)v5 categoryType];
      _defaultValue = [categoryType3 _defaultValue];
    }

    v5->_value = _defaultValue;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKCategorySample;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_value forKey:{@"value", v5.receiver, v5.super_class}];
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equivalentCopy;
    v8.receiver = self;
    v8.super_class = HKCategorySample;
    if ([(HKSample *)&v8 isEquivalent:v5])
    {
      v6 = self->_value == v5[12];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithCoder:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 categoryType];
  v7 = 134218242;
  v8 = a3;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_19197B000, v5, OS_LOG_TYPE_ERROR, "Invalid value %ld received for %@, setting value to 0", &v7, 0x16u);
}

@end