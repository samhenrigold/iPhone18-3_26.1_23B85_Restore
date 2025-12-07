@interface HMDFetchedSettingsUtilities
+ (id)_outputGenderStringFromAFVoiceGender:(int64_t)gender;
+ (id)languageValueFromHPLanguageValue:(id)value;
+ (id)transformHPLanguageItemsToLanguageListValue:(id)value;
+ (int64_t)_outputGenderFromString:(id)string;
@end

@implementation HMDFetchedSettingsUtilities

+ (id)transformHPLanguageItemsToLanguageListValue:(id)value
{
  v14 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    v6 = [valueCopy na_map:&__block_literal_global_195291];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Empty language item list", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

+ (id)languageValueFromHPLanguageValue:(id)value
{
  v3 = MEMORY[0x277CD1A20];
  v4 = MEMORY[0x277CD1DC0];
  valueCopy = value;
  v6 = [v4 alloc];
  recognitionLanguage = [valueCopy recognitionLanguage];
  outputLanguage = [valueCopy outputLanguage];
  v9 = +[HMDFetchedSettingsUtilities _outputGenderStringFromAFVoiceGender:](HMDFetchedSettingsUtilities, "_outputGenderStringFromAFVoiceGender:", [valueCopy gender]);
  voiceName = [valueCopy voiceName];

  v11 = [v6 initWithInputLanguageCode:recognitionLanguage outputVoiceLanguageCode:outputLanguage outputVoiceGenderCode:v9 voiceName:voiceName];
  v12 = [v3 cachedInstanceForLanguageSettingValue:v11];

  return v12;
}

+ (id)_outputGenderStringFromAFVoiceGender:(int64_t)gender
{
  v11 = *MEMORY[0x277D85DE8];
  if ((gender - 1) < 3)
  {
    return off_279735D70[gender - 1];
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Unknown Voice Gender Value", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  return @"?";
}

+ (int64_t)_outputGenderFromString:(id)string
{
  v15 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy isEqualToString:@"m"])
  {
    v5 = 1;
  }

  else if ([stringCopy isEqualToString:@"f"])
  {
    v5 = 2;
  }

  else if ([stringCopy isEqualToString:@"n"])
  {
    v5 = 3;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = stringCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unknown gender option %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  return v5;
}

@end