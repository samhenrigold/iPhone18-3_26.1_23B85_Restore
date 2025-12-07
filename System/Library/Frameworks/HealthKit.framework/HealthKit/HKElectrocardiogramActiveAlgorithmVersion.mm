@interface HKElectrocardiogramActiveAlgorithmVersion
+ (id)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(id)domain;
+ (id)knownAlgorithmVersionFromOnboardedVersion:(id)version keyValueDomain:(id)domain;
+ (id)versionWithHealthStore:(id)store error:(id *)error;
+ (int64_t)algorithmVersionForOnboardingVersion:(int64_t)version;
+ (unint64_t)onboardingVersionForKnownAlgorithmVersion:(int64_t)version;
@end

@implementation HKElectrocardiogramActiveAlgorithmVersion

+ (id)versionWithHealthStore:(id)store error:(id *)error
{
  storeCopy = store;
  v7 = @"HKElectrocardiogramOnboardingCompleted";
  hk_heartRhythmDefaults = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v9 = [hk_heartRhythmDefaults objectForKey:v7];

  if (v9 && [v9 integerValue])
  {
    integerValue = [v9 integerValue];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "algorithmVersionForOnboardingVersion:", integerValue)}];
    goto LABEL_14;
  }

  v12 = [HKKeyValueDomain heartRhythmDefaultsDomainWithHealthStore:storeCopy];
  v20 = 0;
  v13 = [v12 numberForKey:v7 error:&v20];
  v14 = v20;
  v16 = v14;
  if (!v13 || (v14 = [v13 integerValue]) == 0)
  {
    if (v16)
    {
      _HKInitializeLogging(v14, v15);
      v17 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        [(HKElectrocardiogramActiveAlgorithmVersion *)v7 versionWithHealthStore:v16 error:v17];
        if (error)
        {
          goto LABEL_10;
        }
      }

      else if (error)
      {
LABEL_10:
        v18 = v16;
        v11 = 0;
        *error = v16;
        goto LABEL_13;
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = [self knownAlgorithmVersionFromOnboardedVersion:v13 keyValueDomain:v12];
LABEL_13:

LABEL_14:

  return v11;
}

+ (id)knownAlgorithmVersionFromOnboardedVersion:(id)version keyValueDomain:(id)domain
{
  v23 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v7 = +[HKElectrocardiogramActiveAlgorithmVersion algorithmVersionForOnboardingVersion:](HKElectrocardiogramActiveAlgorithmVersion, "algorithmVersionForOnboardingVersion:", [version integerValue]);
  v8 = [self _maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:domainCopy];

  integerValue = [v8 integerValue];
  if (integerValue)
  {
    if (v7 == 0x7FFFFFFF)
    {
      _HKInitializeLogging(integerValue, v10);
      v11 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136446210;
        v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
        _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Sync'd alg version is greater than max previously onboarded and known to build.", &v21, 0xCu);
      }

      v12 = v8;
    }

    else
    {
      v15 = integerValue;
      _HKInitializeLogging(integerValue, v10);
      v16 = HKLogHeartRhythm;
      v17 = os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT);
      if (v7 >= v15)
      {
        if (v17)
        {
          v21 = 136446210;
          v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
          _os_log_impl(&dword_19197B000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Sync'd alg version is known to this build and not smaller than any version previously onboarded.", &v21, 0xCu);
        }

        v18 = MEMORY[0x1E696AD98];
        v19 = v7;
      }

      else
      {
        if (v17)
        {
          v21 = 136446210;
          v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
          _os_log_impl(&dword_19197B000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Sync'd alg version is less than max previously onboarded and known to build.", &v21, 0xCu);
        }

        v18 = MEMORY[0x1E696AD98];
        v19 = v15;
      }

      v12 = [v18 numberWithInteger:v19];
    }

    v14 = v12;
  }

  else
  {
    _HKInitializeLogging(0, v10);
    v13 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136446210;
      v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
      _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Known onboarding history is empty.", &v21, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(id)domain
{
  v3 = [HKHeartRhythmAvailability electrocardiogramOnboardingHistoryMaxKnownWithKeyValueDomain:domain];
  if ([v3 count] == 1)
  {
    allKeys = [v3 allKeys];
    firstObject = [allKeys firstObject];
    integerValue = [firstObject integerValue];

    v7 = [HKElectrocardiogramActiveAlgorithmVersion algorithmVersionForOnboardingVersion:integerValue];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  }

  else
  {
    v9 = [v3 count];
    if (v9 >= 2)
    {
      _HKInitializeLogging(v9, v10);
      v11 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        [HKElectrocardiogramActiveAlgorithmVersion _maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:v11];
      }
    }

    v8 = 0;
  }

  return v8;
}

+ (int64_t)algorithmVersionForOnboardingVersion:(int64_t)version
{
  if (!version)
  {
    v3 = &_HKAppleECGAlgorithmVersionUnknown;
    return *v3;
  }

  if (version >= 5)
  {
    v3 = &_HKAppleECGAlgorithmVersionGreaterThanMax;
    return *v3;
  }

  if (version == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unint64_t)onboardingVersionForKnownAlgorithmVersion:(int64_t)version
{
  if (version == 1)
  {
    return 3;
  }

  else
  {
    return 4 * (version == 2);
  }
}

+ (void)versionWithHealthStore:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Couldn't read heart rhythm onboarding completion state for key [%@]: %@", &v3, 0x16u);
}

+ (void)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "+[HKElectrocardiogramActiveAlgorithmVersion _maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:]";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%{pulic}s] More than one max alg version previously onboarded and known to the build.", &v1, 0xCu);
}

@end