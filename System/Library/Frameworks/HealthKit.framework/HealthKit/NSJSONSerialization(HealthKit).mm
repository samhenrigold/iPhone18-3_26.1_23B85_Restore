@interface NSJSONSerialization(HealthKit)
+ (__CFString)hk_stringForDisplayFromFHIRData:()HealthKit;
+ (__CFString)hk_stringForDisplayFromFHIRJSONObject:()HealthKit;
+ (id)hk_JSONObjectSecureCodingClasses;
@end

@implementation NSJSONSerialization(HealthKit)

+ (__CFString)hk_stringForDisplayFromFHIRData:()HealthKit
{
  v11 = 0;
  v4 = [self hk_JSONObjectFromFHIRData:a3 options:0 error:&v11];
  v5 = v11;
  v7 = v5;
  if (v4)
  {
    v8 = [self hk_stringForDisplayFromFHIRJSONObject:v4];
  }

  else
  {
    _HKInitializeLogging(v5, v6);
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      [(NSJSONSerialization(HealthKit) *)v7 hk_stringForDisplayFromFHIRData:v9];
    }

    v8 = &stru_1F05FF230;
  }

  return v8;
}

+ (__CFString)hk_stringForDisplayFromFHIRJSONObject:()HealthKit
{
  v11 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:1 error:&v11];
  v4 = v11;
  v6 = v4;
  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    hk_stringByUnescapingJSONCharactersForDisplay = [v7 hk_stringByUnescapingJSONCharactersForDisplay];
  }

  else
  {
    _HKInitializeLogging(v4, v5);
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      [(NSJSONSerialization(HealthKit) *)v6 hk_stringForDisplayFromFHIRJSONObject:v9];
    }

    hk_stringByUnescapingJSONCharactersForDisplay = &stru_1F05FF230;
  }

  return hk_stringByUnescapingJSONCharactersForDisplay;
}

+ (id)hk_JSONObjectSecureCodingClasses
{
  if (hk_JSONObjectSecureCodingClasses_onceToken != -1)
  {
    +[NSJSONSerialization(HealthKit) hk_JSONObjectSecureCodingClasses];
  }

  v2 = hk_JSONObjectSecureCodingClasses_classes;

  return v2;
}

+ (void)hk_stringForDisplayFromFHIRData:()HealthKit .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to create JSON object from FHIR data: %@", &v2, 0xCu);
}

+ (void)hk_stringForDisplayFromFHIRJSONObject:()HealthKit .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to create data for display string from FHIR object: %@", &v2, 0xCu);
}

@end