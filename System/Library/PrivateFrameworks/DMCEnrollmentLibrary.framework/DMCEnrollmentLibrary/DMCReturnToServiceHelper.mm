@interface DMCReturnToServiceHelper
+ (id)_userDefaultsToPreserve;
+ (id)preseveReturnToServiceDataWithMDMProfileData:(id)data wifiProfileData:(id)profileData additionalDetails:(id)details error:(id *)error;
- (BOOL)shouldDoRapidReturnToService;
- (BOOL)shouldDoReturnToService;
- (DMCObliterationShelter)obliterationShelter;
- (id)languageStrings;
- (id)localeString;
- (void)returnToServiceFlowCompleted;
@end

@implementation DMCReturnToServiceHelper

+ (id)preseveReturnToServiceDataWithMDMProfileData:(id)data wifiProfileData:(id)profileData additionalDetails:(id)details error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  profileDataCopy = profileData;
  detailsCopy = details;
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  [mEMORY[0x277D24640] refreshDetailsFromDisk];
  v14 = objc_alloc_init(MEMORY[0x277D03548]);
  [v14 clear];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v14 setLanguageStrings:preferredLanguages];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [v14 setLocaleString:localeIdentifier];

  [v14 setWifiProfileData:profileDataCopy];
  [v14 setMdmProfileData:dataCopy];
  [v14 setIsSupervised:{objc_msgSend(mEMORY[0x277D24640], "isSupervised")}];
  [v14 setIsRapidReturnToService:{objc_msgSend(mEMORY[0x277D24640], "isRapidReturnToService")}];
  [v14 setIsSharediPad:{objc_msgSend(MEMORY[0x277D03538], "isSharediPad")}];
  [v14 setAdditionalDetails:detailsCopy];
  if ([mEMORY[0x277D24640] isSupervised] && (objc_msgSend(mEMORY[0x277D24640], "isTeslaEnrolled") & 1) == 0)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "Doing RTS on non-ADE enrolled device, need to preserve the cloud config", buf, 2u);
    }

    details = [mEMORY[0x277D24640] details];
    v20 = [details mutableCopy];

    v21 = MEMORY[0x277CBEC28];
    [v20 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D03028]];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277D03030]];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277D03108]];
    v22 = [v20 copy];
    [v14 setCloudConfigurationDetails:v22];
  }

  if ([MEMORY[0x277D03500] shouldPreserveUserDefaultsForReturnToService])
  {
    v44 = v14;
    v46 = mEMORY[0x277D24640];
    errorCopy = error;
    v50 = detailsCopy;
    v52 = profileDataCopy;
    v54 = dataCopy;
    v56 = objc_opt_new();
    [self _userDefaultsToPreserve];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v69 = 0u;
    v58 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v58)
    {
      v57 = *v67;
      do
      {
        v23 = 0;
        do
        {
          if (*v67 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v60 = v23;
          v24 = *(*(&v66 + 1) + 8 * v23);
          v25 = objc_opt_new();
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v26 = [obj objectForKeyedSubscript:v24];
          v27 = [v26 countByEnumeratingWithState:&v62 objects:v74 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v63;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v63 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v62 + 1) + 8 * i);
                standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
                v33 = [standardUserDefaults objectForKey:v31 inDomain:v24];

                [v25 setObject:v33 forKeyedSubscript:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v62 objects:v74 count:16];
            }

            while (v28);
          }

          if ([v25 count])
          {
            v34 = [v25 copy];
            [v56 setObject:v34 forKeyedSubscript:v24];
          }

          v23 = v60 + 1;
        }

        while (v60 + 1 != v58);
        v58 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v58);
    }

    v35 = *DMCLogObjects();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v71 = "+[DMCReturnToServiceHelper preseveReturnToServiceDataWithMDMProfileData:wifiProfileData:additionalDetails:error:]";
      v72 = 2114;
      v73 = v56;
      _os_log_impl(&dword_247E39000, v35, OS_LOG_TYPE_DEBUG, "%s preserving user defaults: %{public}@", buf, 0x16u);
    }

    v36 = [v56 count];
    profileDataCopy = v53;
    dataCopy = v55;
    error = v49;
    detailsCopy = v51;
    v14 = v45;
    mEMORY[0x277D24640] = v47;
    if (v36)
    {
      v37 = [v56 copy];
      [v45 setUserDefaults:v37];
    }
  }

  v61 = 0;
  v38 = [v14 preserveWithError:&v61];
  v39 = v61;
  v40 = v39;
  if (v38)
  {
    v41 = v14;
  }

  else
  {
    v41 = 0;
    if (error && v39)
    {
      v42 = v39;
      v41 = 0;
      *error = v40;
    }
  }

  return v41;
}

- (BOOL)shouldDoReturnToService
{
  obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
  hasConfigFile = [obliterationShelter hasConfigFile];

  return hasConfigFile;
}

- (BOOL)shouldDoRapidReturnToService
{
  shouldDoReturnToService = [(DMCReturnToServiceHelper *)self shouldDoReturnToService];
  if (shouldDoReturnToService)
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    isRapidReturnToService = [obliterationShelter isRapidReturnToService];

    LOBYTE(shouldDoReturnToService) = isRapidReturnToService;
  }

  return shouldDoReturnToService;
}

- (id)languageStrings
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    languageStrings = [obliterationShelter languageStrings];
  }

  else
  {
    languageStrings = 0;
  }

  return languageStrings;
}

- (id)localeString
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    localeString = [obliterationShelter localeString];
  }

  else
  {
    localeString = 0;
  }

  return localeString;
}

- (void)returnToServiceFlowCompleted
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    [obliterationShelter clear];
  }
}

+ (id)_userDefaultsToPreserve
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.managedconfiguration.notbackedup";
  v5[1] = @"Apple Global Domain";
  v6[0] = &unk_2859F9E68;
  _allOverrides = [MEMORY[0x277D03500] _allOverrides];
  v6[1] = _allOverrides;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (DMCObliterationShelter)obliterationShelter
{
  obliterationShelter = self->_obliterationShelter;
  if (!obliterationShelter)
  {
    v4 = objc_opt_new();
    v5 = self->_obliterationShelter;
    self->_obliterationShelter = v4;

    v6 = self->_obliterationShelter;
    v8 = 0;
    [(DMCObliterationShelter *)v6 retrieveWithError:&v8];
    obliterationShelter = self->_obliterationShelter;
  }

  return obliterationShelter;
}

@end