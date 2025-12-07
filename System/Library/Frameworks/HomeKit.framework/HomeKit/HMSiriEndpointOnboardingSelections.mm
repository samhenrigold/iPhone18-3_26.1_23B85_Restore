@interface HMSiriEndpointOnboardingSelections
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMSiriEndpointOnboardingSelections)init;
- (HMSiriEndpointOnboardingSelections)initWithPayload:(id)payload;
- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled;
- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled languageValue:(id)value;
- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled playbackInfluencesForYouEnabled:(BOOL)youEnabled shareSiriAnalyticsEnabled:(BOOL)analyticsEnabled explicitContentAllowed:(BOOL)allowed;
- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled playbackInfluencesForYouEnabled:(BOOL)youEnabled shareSiriAnalyticsEnabled:(BOOL)analyticsEnabled explicitContentAllowed:(BOOL)allowed languageValue:(id)value;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)_initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled playbackInfluencesForYouEnabled:(BOOL)youEnabled shareSiriAnalyticsEnabled:(BOOL)analyticsEnabled explicitContentAllowed:(BOOL)allowed languageValue:(id)value;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSiriEndpointOnboardingSelections

- (unint64_t)hash
{
  languageValue = [(HMSiriEndpointOnboardingSelections *)self languageValue];
  v4 = [languageValue hash];

  v5 = v4 ^ [(HMSiriEndpointOnboardingSelections *)self isSiriEnabled];
  if ([(HMSiriEndpointOnboardingSelections *)self allowHeySiri])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  isAirPlayEnabled = [(HMSiriEndpointOnboardingSelections *)self isAirPlayEnabled];
  v8 = 4;
  if (!isAirPlayEnabled)
  {
    v8 = 0;
  }

  v9 = v5 ^ v6 ^ v8;
  if ([(HMSiriEndpointOnboardingSelections *)self isExplicitContentAllowed])
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  isShareSiriAnalyticsEnabled = [(HMSiriEndpointOnboardingSelections *)self isShareSiriAnalyticsEnabled];
  v12 = 16;
  if (!isShareSiriAnalyticsEnabled)
  {
    v12 = 0;
  }

  v13 = v10 ^ v12;
  isLightWhenUsingSiriEnabled = [(HMSiriEndpointOnboardingSelections *)self isLightWhenUsingSiriEnabled];
  v15 = 32;
  if (!isLightWhenUsingSiriEnabled)
  {
    v15 = 0;
  }

  v16 = v9 ^ v13 ^ v15;
  if ([(HMSiriEndpointOnboardingSelections *)self isAnnounceEnabled])
  {
    v17 = 64;
  }

  else
  {
    v17 = 0;
  }

  isDoorbellChimeEnabled = [(HMSiriEndpointOnboardingSelections *)self isDoorbellChimeEnabled];
  v19 = 128;
  if (!isDoorbellChimeEnabled)
  {
    v19 = 0;
  }

  v20 = v17 ^ v19;
  hasDoorbellChimeEnabled = [(HMSiriEndpointOnboardingSelections *)self hasDoorbellChimeEnabled];
  v22 = 256;
  if (!hasDoorbellChimeEnabled)
  {
    v22 = 0;
  }

  v23 = v20 ^ v22;
  hasLightWhenUsingSiriEnabled = [(HMSiriEndpointOnboardingSelections *)self hasLightWhenUsingSiriEnabled];
  v25 = 512;
  if (!hasLightWhenUsingSiriEnabled)
  {
    v25 = 0;
  }

  v26 = v16 ^ v23 ^ v25;
  if ([(HMSiriEndpointOnboardingSelections *)self hasAnnounceEnabled])
  {
    v27 = 1024;
  }

  else
  {
    v27 = 0;
  }

  hasAllowHeySiri = [(HMSiriEndpointOnboardingSelections *)self hasAllowHeySiri];
  v29 = 2048;
  if (!hasAllowHeySiri)
  {
    v29 = 0;
  }

  v30 = v27 ^ v29;
  hasShareSiriAnalyticsEnabled = [(HMSiriEndpointOnboardingSelections *)self hasShareSiriAnalyticsEnabled];
  v32 = 4096;
  if (!hasShareSiriAnalyticsEnabled)
  {
    v32 = 0;
  }

  v33 = v30 ^ v32;
  hasAirPlayEnabled = [(HMSiriEndpointOnboardingSelections *)self hasAirPlayEnabled];
  v35 = 0x2000;
  if (!hasAirPlayEnabled)
  {
    v35 = 0;
  }

  v36 = v33 ^ v35;
  hasExplicitContentAllowed = [(HMSiriEndpointOnboardingSelections *)self hasExplicitContentAllowed];
  v38 = 0x4000;
  if (!hasExplicitContentAllowed)
  {
    v38 = 0;
  }

  v39 = v26 ^ v36 ^ v38;
  hasLanguageValue = [(HMSiriEndpointOnboardingSelections *)self hasLanguageValue];
  v41 = 0x8000;
  if (!hasLanguageValue)
  {
    v41 = 0;
  }

  return v39 ^ v41;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v7 = [(HMSiriEndpointOnboardingSelections *)self isSiriEnabled], v7 == [(HMSiriEndpointOnboardingSelections *)v6 isSiriEnabled]) && (v8 = [(HMSiriEndpointOnboardingSelections *)self allowHeySiri], v8 == [(HMSiriEndpointOnboardingSelections *)v6 allowHeySiri]) && (v9 = [(HMSiriEndpointOnboardingSelections *)self isAirPlayEnabled], v9 == [(HMSiriEndpointOnboardingSelections *)v6 isAirPlayEnabled]) && (v10 = [(HMSiriEndpointOnboardingSelections *)self isExplicitContentAllowed], v10 == [(HMSiriEndpointOnboardingSelections *)v6 isExplicitContentAllowed]) && (v11 = [(HMSiriEndpointOnboardingSelections *)self isShareSiriAnalyticsEnabled], v11 == [(HMSiriEndpointOnboardingSelections *)v6 isShareSiriAnalyticsEnabled]) && ([(HMSiriEndpointOnboardingSelections *)self languageValue], v12 = objc_claimAutoreleasedReturnValue(), [(HMSiriEndpointOnboardingSelections *)v6 languageValue], v13 = objc_claimAutoreleasedReturnValue(), v14 = HMFEqualObjects(), v13, v12, v14) && (v15 = [(HMSiriEndpointOnboardingSelections *)self isAnnounceEnabled], v15 == [(HMSiriEndpointOnboardingSelections *)v6 isAnnounceEnabled]) && (v16 = [(HMSiriEndpointOnboardingSelections *)self isDoorbellChimeEnabled], v16 == [(HMSiriEndpointOnboardingSelections *)v6 isDoorbellChimeEnabled]) && (v17 = [(HMSiriEndpointOnboardingSelections *)self isLightWhenUsingSiriEnabled], v17 == [(HMSiriEndpointOnboardingSelections *)v6 isLightWhenUsingSiriEnabled]) && (v18 = [(HMSiriEndpointOnboardingSelections *)self hasLanguageValue], v18 == [(HMSiriEndpointOnboardingSelections *)v6 hasLanguageValue]) && (v19 = [(HMSiriEndpointOnboardingSelections *)self hasSiriEnabled], v19 == [(HMSiriEndpointOnboardingSelections *)v6 hasSiriEnabled]) && (v20 = [(HMSiriEndpointOnboardingSelections *)self hasAllowHeySiri], v20 == [(HMSiriEndpointOnboardingSelections *)v6 hasAllowHeySiri]) && (v21 = [(HMSiriEndpointOnboardingSelections *)self hasExplicitContentAllowed], v21 == [(HMSiriEndpointOnboardingSelections *)v6 hasExplicitContentAllowed]))
    {
      hasShareSiriAnalyticsEnabled = [(HMSiriEndpointOnboardingSelections *)self hasShareSiriAnalyticsEnabled];
      v22 = hasShareSiriAnalyticsEnabled ^ [(HMSiriEndpointOnboardingSelections *)v6 hasShareSiriAnalyticsEnabled]^ 1;
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

- (NSArray)attributeDescriptions
{
  v32[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isSiriEnabled];
  v31 = HMFBooleanToString();
  v30 = [v3 initWithName:@"siriEnabled" value:v31];
  v32[0] = v30;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self allowHeySiri];
  v29 = HMFBooleanToString();
  v28 = [v4 initWithName:@"allowHeySiri" value:v29];
  v32[1] = v28;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isAirPlayEnabled];
  v27 = HMFBooleanToString();
  v26 = [v5 initWithName:@"airPlayEnabled" value:v27];
  v32[2] = v26;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isExplicitContentAllowed];
  v25 = HMFBooleanToString();
  v24 = [v6 initWithName:@"explicitContentAllowed" value:v25];
  v32[3] = v24;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isShareSiriAnalyticsEnabled];
  v23 = HMFBooleanToString();
  v8 = [v7 initWithName:@"shareSiriAnalyticsEnabled" value:v23];
  v32[4] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isLightWhenUsingSiriEnabled];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"lightWhenUsingSiriEnabled" value:v10];
  v32[5] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isDoorbellChimeEnabled];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"doorbellChimeEnabled" value:v13];
  v32[6] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isAnnounceEnabled];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"announceEnabled" value:v16];
  v32[7] = v17;
  v18 = objc_alloc(MEMORY[0x1E69A29C8]);
  languageValue = [(HMSiriEndpointOnboardingSelections *)self languageValue];
  v20 = [v18 initWithName:@"languageValue" value:languageValue];
  v32[8] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:9];

  return v21;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMSiriEndpointOnboardingSelections)initWithPayload:(id)payload
{
  v93 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v84 = 0;
  v5 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsSiriEnabledPayloadKey" error:&v84];
  v6 = v84;
  if (v6)
  {
    v7 = v6;
    v8 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v11;
      v87 = 2112;
      v88 = v7;
      v12 = "%{public}@Failed to decode isSiriEnabled due to error: %@";
LABEL_16:
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v83 = 0;
  v13 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsAllowHeySiriPayloadKey" error:&v83];
  v14 = v83;
  if (v14)
  {
    v7 = v14;
    v8 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v11;
      v87 = 2112;
      v88 = v7;
      v12 = "%{public}@Failed to decode allowHeySiri due to error: %@";
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v8);
    v20 = 0;
    goto LABEL_18;
  }

  v82 = 0;
  v15 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsAirPlayEnabledPayloadKey" error:&v82];
  v16 = v82;
  if (v16)
  {
    v7 = v16;
    v8 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v11;
      v87 = 2112;
      v88 = v7;
      v12 = "%{public}@Failed to decode isAirPlayEnabled due to error: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v81 = 0;
  v68 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsExplicitContentAllowedPayloadKey" error:&v81];
  v17 = v81;
  if (v17)
  {
    v7 = v17;
    v8 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v11;
      v87 = 2112;
      v88 = v7;
      v12 = "%{public}@Failed to decode isExplicitContentAllowed due to error: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v80 = 0;
  v18 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsShareSiriAnalyticsPayloadKey" error:&v80];
  v19 = v80;
  if (v19)
  {
    v7 = v19;
    v8 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v11;
      v87 = 2112;
      v88 = v7;
      v12 = "%{public}@Failed to decode isShareSiriAnalyticsEnabled due to error: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v22 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsShouldHonorSiriAnalyticsSelectionPayloadKey"];
  if (v18 && (v22 & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v86 = v26;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Blocking enabling siri analytics due to old payload with missing flag", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v18 = 0;
  }

  v64 = v18;
  v79 = 0;
  v63 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasSiriEnabledPayloadKey" error:&v79];
  v27 = v79;
  v78 = v27;
  v62 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasAllowHeySiriPayloadKey" error:&v78];
  v28 = v78;

  v77 = v28;
  v61 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasAirPlayEnabledPayloadKey" error:&v77];
  v29 = v77;

  v76 = v29;
  v60 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasExplicitContentAllowedPayloadKey" error:&v76];
  v30 = v76;

  v75 = v30;
  v31 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasShareSiriAnalyticsPayloadKey" error:&v75];
  v32 = v75;

  v33 = [payloadCopy hmf_dictionaryForKey:@"HMSiriEndpointOnboardingSelectionsLanguageValueKey"];
  v34 = v33;
  if (v33 && (v33 = [[HMSettingLanguageValue alloc] initWithPayload:v33]) == 0)
  {
    v7 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2 reason:@"Unable to decode languageValue"];

    v48 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v50;
      v87 = 2112;
      v88 = v34;
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode onboarding selections due to invalid language value payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v48);
    v20 = 0;
  }

  else
  {
    v57 = v33;
    v58 = v31;
    v59 = v34;
    v56 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasLanguageValueKey"];
    v74 = v32;
    v67 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasDoorbellChimeEnabledPayloadKey" error:&v74];
    v35 = v74;

    v73 = v35;
    v66 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasAnnounceEnabledPayloadKey" error:&v73];
    v36 = v73;

    v72 = v36;
    v65 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasLightWhenUsingSiriEnabledPayloadKey" error:&v72];
    v37 = v72;

    v71 = v37;
    v55 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsDoorbellChimeEnabledPayloadKey" error:&v71];
    v38 = v71;

    v70 = v38;
    v54 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsAnnounceEnabledPayloadKey" error:&v70];
    v39 = v70;

    v69 = v39;
    v53 = [payloadCopy hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsLightWhenUsingSiriEnabledPayloadKey" error:&v69];
    v7 = v69;

    v40 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      v43 = HMFBooleanToString();
      HMFBooleanToString();
      v44 = v51 = v40;
      v45 = HMFBooleanToString();
      *buf = 138544130;
      v86 = v52;
      v87 = 2112;
      v88 = v43;
      v89 = 2112;
      v90 = v44;
      v91 = 2112;
      v92 = v45;
      v46 = v45;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, "%{public}@Decoded Payload hasAnnounce = %@, hasLightWhenUsingSiri = %@, hasDoorbellChimeEnabled = %@ ", buf, 0x2Au);

      v40 = v51;
    }

    objc_autoreleasePoolPop(v40);
    v47 = [(HMSiriEndpointOnboardingSelections *)selfCopy8 init];
    [(HMSiriEndpointOnboardingSelections *)v47 setAllowHeySiri:v13];
    [(HMSiriEndpointOnboardingSelections *)v47 setSiriEnabled:v5];
    [(HMSiriEndpointOnboardingSelections *)v47 setAirPlayEnabled:v15];
    [(HMSiriEndpointOnboardingSelections *)v47 setExplicitContentAllowed:v68];
    [(HMSiriEndpointOnboardingSelections *)v47 setShareSiriAnalyticsEnabled:v64];
    [(HMSiriEndpointOnboardingSelections *)v47 setLanguageValue:v57];
    [(HMSiriEndpointOnboardingSelections *)v47 setDoorbellChimeEnabled:v55];
    [(HMSiriEndpointOnboardingSelections *)v47 setAnnounceEnabled:v54];
    [(HMSiriEndpointOnboardingSelections *)v47 setLightWhenUsingSiriEnabled:v53];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasAllowHeySiri:v62];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasSiriEnabled:v63];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasAirPlayEnabled:v61];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasExplicitContentAllowed:v60];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasShareSiriAnalyticsEnabled:v58];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasLanguageValue:v56];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasAnnounceEnabled:v66];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasDoorbellChimeEnabled:v67];
    [(HMSiriEndpointOnboardingSelections *)v47 setHasLightWhenUsingSiriEnabled:v65];
    selfCopy7 = v47;

    v20 = selfCopy7;
    v34 = v59;
  }

LABEL_18:
  return v20;
}

- (id)payloadCopy
{
  v28[17] = *MEMORY[0x1E69E9840];
  v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:19];
  v27[0] = @"HMSiriEndpointOnboardingSelectionsSiriEnabledPayloadKey";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isSiriEnabled](self, "isSiriEnabled")}];
  v28[0] = v26;
  v27[1] = @"HMSiriEndpointOnboardingSelectionsAllowHeySiriPayloadKey";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections allowHeySiri](self, "allowHeySiri")}];
  v28[1] = v25;
  v27[2] = @"HMSiriEndpointOnboardingSelectionsAirPlayEnabledPayloadKey";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isAirPlayEnabled](self, "isAirPlayEnabled")}];
  v28[2] = v24;
  v27[3] = @"HMSiriEndpointOnboardingSelectionsExplicitContentAllowedPayloadKey";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isExplicitContentAllowed](self, "isExplicitContentAllowed")}];
  v28[3] = v22;
  v27[4] = @"HMSiriEndpointOnboardingSelectionsShareSiriAnalyticsPayloadKey";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isShareSiriAnalyticsEnabled](self, "isShareSiriAnalyticsEnabled")}];
  v28[4] = v21;
  v27[5] = @"HMSiriEndpointOnboardingSelectionsDoorbellChimeEnabledPayloadKey";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isDoorbellChimeEnabled](self, "isDoorbellChimeEnabled")}];
  v28[5] = v20;
  v27[6] = @"HMSiriEndpointOnboardingSelectionsAnnounceEnabledPayloadKey";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isAnnounceEnabled](self, "isAnnounceEnabled")}];
  v28[6] = v19;
  v27[7] = @"HMSiriEndpointOnboardingSelectionsLightWhenUsingSiriEnabledPayloadKey";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isLightWhenUsingSiriEnabled](self, "isLightWhenUsingSiriEnabled")}];
  v28[7] = v18;
  v27[8] = @"HMSiriEndpointOnboardingSelectionsHasSiriEnabledPayloadKey";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasSiriEnabled](self, "hasSiriEnabled")}];
  v28[8] = v17;
  v27[9] = @"HMSiriEndpointOnboardingSelectionsHasAllowHeySiriPayloadKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasAllowHeySiri](self, "hasAllowHeySiri")}];
  v28[9] = v3;
  v27[10] = @"HMSiriEndpointOnboardingSelectionsHasAirPlayEnabledPayloadKey";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasAirPlayEnabled](self, "hasAirPlayEnabled")}];
  v28[10] = v4;
  v27[11] = @"HMSiriEndpointOnboardingSelectionsHasExplicitContentAllowedPayloadKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasExplicitContentAllowed](self, "hasExplicitContentAllowed")}];
  v28[11] = v5;
  v27[12] = @"HMSiriEndpointOnboardingSelectionsHasShareSiriAnalyticsPayloadKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasShareSiriAnalyticsEnabled](self, "hasShareSiriAnalyticsEnabled")}];
  v28[12] = v6;
  v27[13] = @"HMSiriEndpointOnboardingSelectionsHasDoorbellChimeEnabledPayloadKey";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasDoorbellChimeEnabled](self, "hasDoorbellChimeEnabled")}];
  v28[13] = v7;
  v27[14] = @"HMSiriEndpointOnboardingSelectionsHasAnnounceEnabledPayloadKey";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasAnnounceEnabled](self, "hasAnnounceEnabled")}];
  v28[14] = v8;
  v27[15] = @"HMSiriEndpointOnboardingSelectionsHasLightWhenUsingSiriEnabledPayloadKey";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasLightWhenUsingSiriEnabled](self, "hasLightWhenUsingSiriEnabled")}];
  v27[16] = @"HMSiriEndpointOnboardingSelectionsShouldHonorSiriAnalyticsSelectionPayloadKey";
  v28[15] = v9;
  v28[16] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:17];
  [v23 addEntriesFromDictionary:v10];

  languageValue = [(HMSiriEndpointOnboardingSelections *)self languageValue];

  if (languageValue)
  {
    languageValue2 = [(HMSiriEndpointOnboardingSelections *)self languageValue];
    payloadCopy = [languageValue2 payloadCopy];
    [v23 setObject:payloadCopy forKeyedSubscript:@"HMSiriEndpointOnboardingSelectionsLanguageValueKey"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasLanguageValue](self, "hasLanguageValue")}];
  [v23 setObject:v14 forKeyedSubscript:@"HMSiriEndpointOnboardingSelectionsHasLanguageValueKey"];

  v15 = [v23 copy];

  return v15;
}

- (HMSiriEndpointOnboardingSelections)init
{
  v6.receiver = self;
  v6.super_class = HMSiriEndpointOnboardingSelections;
  v2 = [(HMSiriEndpointOnboardingSelections *)&v6 init];
  v3 = v2;
  if (v2)
  {
    languageValue = v2->_languageValue;
    v2->_languageValue = 0;

    v3->_siriEnabled = 0;
    *&v3->_allowHeySiri = 0;
  }

  return v3;
}

- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled playbackInfluencesForYouEnabled:(BOOL)youEnabled shareSiriAnalyticsEnabled:(BOOL)analyticsEnabled explicitContentAllowed:(BOOL)allowed
{
  v8 = [(HMSiriEndpointOnboardingSelections *)self _initWithSiriEnabled:enabled allowHeySiri:siri airPlayEnabled:playEnabled playbackInfluencesForYouEnabled:youEnabled shareSiriAnalyticsEnabled:analyticsEnabled explicitContentAllowed:allowed languageValue:0];
  [(HMSiriEndpointOnboardingSelections *)v8 setHasLanguageValue:0];
  return v8;
}

- (id)_initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled playbackInfluencesForYouEnabled:(BOOL)youEnabled shareSiriAnalyticsEnabled:(BOOL)analyticsEnabled explicitContentAllowed:(BOOL)allowed languageValue:(id)value
{
  allowedCopy = allowed;
  analyticsEnabledCopy = analyticsEnabled;
  playEnabledCopy = playEnabled;
  siriCopy = siri;
  enabledCopy = enabled;
  valueCopy = value;
  v16 = [(HMSiriEndpointOnboardingSelections *)self init];
  [(HMSiriEndpointOnboardingSelections *)v16 setSiriEnabled:enabledCopy];
  [(HMSiriEndpointOnboardingSelections *)v16 setAllowHeySiri:siriCopy];
  [(HMSiriEndpointOnboardingSelections *)v16 setAirPlayEnabled:playEnabledCopy];
  [(HMSiriEndpointOnboardingSelections *)v16 setShareSiriAnalyticsEnabled:analyticsEnabledCopy];
  [(HMSiriEndpointOnboardingSelections *)v16 setExplicitContentAllowed:allowedCopy];
  [(HMSiriEndpointOnboardingSelections *)v16 setLanguageValue:valueCopy];

  [(HMSiriEndpointOnboardingSelections *)v16 setDoorbellChimeEnabled:1];
  [(HMSiriEndpointOnboardingSelections *)v16 setAnnounceEnabled:1];
  [(HMSiriEndpointOnboardingSelections *)v16 setLightWhenUsingSiriEnabled:1];
  return v16;
}

- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled playbackInfluencesForYouEnabled:(BOOL)youEnabled shareSiriAnalyticsEnabled:(BOOL)analyticsEnabled explicitContentAllowed:(BOOL)allowed languageValue:(id)value
{
  allowedCopy = allowed;
  analyticsEnabledCopy = analyticsEnabled;
  youEnabledCopy = youEnabled;
  playEnabledCopy = playEnabled;
  siriCopy = siri;
  enabledCopy = enabled;
  valueCopy = value;
  if (valueCopy)
  {
    v17 = valueCopy;
    v18 = [(HMSiriEndpointOnboardingSelections *)self _initWithSiriEnabled:enabledCopy allowHeySiri:siriCopy airPlayEnabled:playEnabledCopy playbackInfluencesForYouEnabled:youEnabledCopy shareSiriAnalyticsEnabled:analyticsEnabledCopy explicitContentAllowed:allowedCopy languageValue:valueCopy];

    return v18;
  }

  else
  {
    v20 = _HMFPreconditionFailure();
    return +[(HMSiriEndpointOnboardingSelections *)v20];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global_32218);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __49__HMSiriEndpointOnboardingSelections_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v9;
  logCategory__hmf_once_v9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled
{
  playEnabledCopy = playEnabled;
  siriCopy = siri;
  enabledCopy = enabled;
  v31 = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:siriCopy];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:playEnabledCopy];
    v17 = 138544898;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = MEMORY[0x1E695E118];
    v27 = 2112;
    v28 = MEMORY[0x1E695E110];
    v29 = 2112;
    v30 = MEMORY[0x1E695E110];
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Deprecated API: Initializing with isSiriEnabled: %@ allowHeySiri: %@ isAirPlayEnabled: %@ playbackInfluencesForYouEnabled: %@ shareSiriAnalyticsEnabled: %@ explicitContentAllowed: %@", &v17, 0x48u);
  }

  objc_autoreleasePoolPop(v9);
  return [(HMSiriEndpointOnboardingSelections *)selfCopy initWithSiriEnabled:enabledCopy allowHeySiri:siriCopy airPlayEnabled:playEnabledCopy playbackInfluencesForYouEnabled:1 shareSiriAnalyticsEnabled:0 explicitContentAllowed:0];
}

- (HMSiriEndpointOnboardingSelections)initWithSiriEnabled:(BOOL)enabled allowHeySiri:(BOOL)siri airPlayEnabled:(BOOL)playEnabled languageValue:(id)value
{
  playEnabledCopy = playEnabled;
  siriCopy = siri;
  enabledCopy = enabled;
  v38 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    _HMFPreconditionFailure();
  }

  v11 = valueCopy;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v21 = v12;
    v16 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:siriCopy];
    v18 = [MEMORY[0x1E696AD98] numberWithBool:playEnabledCopy];
    *buf = 138545154;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = MEMORY[0x1E695E118];
    v32 = 2112;
    v33 = MEMORY[0x1E695E110];
    v34 = 2112;
    v35 = MEMORY[0x1E695E110];
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Deprecated API: Initializing with isSiriEnabled: %@ allowHeySiri: %@ isAirPlayEnabled: %@ playbackInfluencesForYouEnabled: %@ shareSiriAnalyticsEnabled: %@ explicitContentAllowed: %@ languageValue: %@", buf, 0x52u);

    v12 = v21;
  }

  objc_autoreleasePoolPop(v12);
  v19 = [(HMSiriEndpointOnboardingSelections *)selfCopy initWithSiriEnabled:enabledCopy allowHeySiri:siriCopy airPlayEnabled:playEnabledCopy playbackInfluencesForYouEnabled:1 shareSiriAnalyticsEnabled:0 explicitContentAllowed:0 languageValue:v11];

  return v19;
}

@end