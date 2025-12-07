@interface MOSuggestionSheetSettingsController
+ (BOOL)fetchSiginificantLocationEnablementStatus;
+ (id)onboardingSettingsBundle;
+ (int)runCommand:(id)command;
- (BOOL)_isAnySettingEnabled;
- (MOSuggestionSheetSettingsController)init;
- (id)_getLocalizedSpecifier:(id)specifier;
- (id)_getStreamToggle:(id)toggle;
- (id)specifiers;
- (void)_clearHistory:(id)history;
- (void)_clearHistoryWarmup:(id)warmup;
- (void)_processDevicesJSON:(id)n;
- (void)_setStreamToggle:(id)toggle withSpecifier:(id)specifier;
- (void)_setStreamToggleWarmup:(id)warmup withSpecifier:(id)specifier;
- (void)didTapSuggestionNotificationSettings:(id)settings;
- (void)didTapTurnOffAll:(id)all;
- (void)didTapTurnOffAllWarmup:(id)warmup;
- (void)didTapTurnOnAll:(id)all;
- (void)didTapTurnOnJournalingSuggestion:(id)suggestion;
- (void)didTransitionTo:(id)to;
- (void)dismissDataAccessExplanationSheet:(id)sheet;
- (void)fillSupportedApplicationsArray:(id)array andSupportedApplicationsWithDataAccess:(id)access;
- (void)navigateToiCloudTCC:(id)c;
- (void)shouldDismissOnboarding;
- (void)showDataAccessExplanationSheet:(id)sheet;
- (void)showPrivacyExplanationSheet:(id)sheet;
- (void)syncFromPhone:(id)phone;
@end

@implementation MOSuggestionSheetSettingsController

+ (id)onboardingSettingsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (BOOL)fetchSiginificantLocationEnablementStatus
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  defaultManager = [MEMORY[0x277D01280] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__MOSuggestionSheetSettingsController_fetchSiginificantLocationEnablementStatus__block_invoke;
  v7[3] = &unk_27991F050;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [defaultManager fetchRoutineStateWithHandler:v7];

  v5 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v4, v5);
  LOBYTE(defaultManager) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return defaultManager;
}

void __80__MOSuggestionSheetSettingsController_fetchSiginificantLocationEnablementStatus__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2 && !a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (int)runCommand:(id)command
{
  v14 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v4 = [commandCopy count];
  v5 = v4;
  v6 = (&v12 - ((8 * v4 + 23) & 0xFFFFFFFFFFFFFFF0));
  if ((8 * v4 + 8) >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = 8 * v4 + 8;
  }

  bzero(&v12 - ((8 * v4 + 23) & 0xFFFFFFFFFFFFFFF0), v7);
  v6[v5] = 0;
  if ([commandCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [commandCopy objectAtIndexedSubscript:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        +[MOSuggestionSheetSettingsController runCommand:];
      }

      v6[v8] = [v9 cStringUsingEncoding:4];

      ++v8;
    }

    while (v8 < [commandCopy count]);
  }

  v13 = 0;
  v10 = posix_spawn(&v13, *v6, 0, 0, v6, 0);
  v12 = v10;
  if (!v10)
  {
    waitpid(v13, &v12, 0);
    v10 = v12;
  }

  return v10;
}

- (MOSuggestionSheetSettingsController)init
{
  v7.receiver = self;
  v7.super_class = MOSuggestionSheetSettingsController;
  v2 = [(MOSuggestionSheetSettingsController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    supportedApplications = v2->supportedApplications;
    v2->supportedApplications = 0;

    supportedApplicationsWithDataAccess = v3->supportedApplicationsWithDataAccess;
    v3->supportedApplicationsWithDataAccess = 0;

    v3->supportedApplicationsLoading = 0;
  }

  return v3;
}

- (void)_processDevicesJSON:(id)n
{
  v72 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v5 = [nCopy dataUsingEncoding:4];
  v6 = v5;
  if (v5)
  {
    selfCopy = self;
    v43 = v5;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:16 error:0];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v61 objects:v71 count:16];
    v44 = nCopy;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v46 = 0;
      v47 = 0;
      v52 = 0;
      v45 = 0;
      v48 = 0;
      v49 = 0;
      v11 = *v62;
      LOBYTE(v57) = 1;
      v51 = 1;
      v50 = v7;
      v55 = *v62;
      do
      {
        v12 = 0;
        v56 = v9;
        do
        {
          if (*v62 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [v7 objectForKeyedSubscript:*(*(&v61 + 1) + 8 * v12)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            v60 = [v14 objectForKeyedSubscript:@"idiom"];
            v59 = [v60 isEqualToString:@".phone"];
            v15 = [v14 objectForKeyedSubscript:@"thisDevice"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 BOOLValue])
            {
              v16 = [v14 objectForKeyedSubscript:@"id"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 length])
              {
                v17 = v10;
                v18 = v16;

                v47 = v18;
              }

              else
              {
                v17 = v10;
              }

              v19 = [v14 objectForKeyedSubscript:@"onboarded"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v52 |= [v19 BOOLValue];
              }

              v20 = [v14 objectForKeyedSubscript:@"accountState"];
              if ([v20 isEqualToString:@"signedOut"])
              {
                v51 = 0;
              }

              else if ([v20 isEqualToString:@"tccDenied"])
              {
                LOBYTE(v46) = 0;
                v51 = 1;
              }

              else
              {
                LOBYTE(v46) = [v20 isEqualToString:@"signedIn"];
                BYTE4(v46) |= v46 ^ 1;
                v51 = v46;
              }

              v21 = [v14 objectForKeyedSubscript:@"deviceCapabilities"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v45 = [v21 containsObject:@"neverOnboarded"];
              }

              v10 = v17;
              v11 = v55;
              v9 = v56;
            }

            v22 = [v14 objectForKeyedSubscript:@"primary"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 BOOLValue])
            {
              v23 = [v14 objectForKeyedSubscript:@"id"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 length])
              {
                v24 = v23;

                v48 = v24;
              }

              v25 = [v14 objectForKeyedSubscript:@"name"];
              objc_opt_class();
              v54 = v10;
              v53 = v25;
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 length])
              {
                v26 = v25;

                v49 = v26;
              }

              v58 = [v14 objectForKeyedSubscript:@"userModificationDate"];
              v27 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.momentsui"];
              v28 = [v27 objectForKey:@"StalePrimaryWarningThreshold"];
              intValue = 604800;
              if (v28)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  intValue = [v28 intValue];
                }
              }

              date = [MEMORY[0x277CBEAA8] date];
              [date timeIntervalSinceReferenceDate];
              v32 = v31;
              [v58 doubleValue];
              v34 = v32 - v33;

              v57 = (v34 >= intValue) & v57;
              v35 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 67109632;
                v66 = v57;
                v67 = 1024;
                v68 = intValue;
                v69 = 2048;
                v70 = v34;
                _os_log_impl(&dword_25A200000, v35, OS_LOG_TYPE_INFO, "primaryIsStale=%d, stalePrimaryWarningThreshold=%d, primaryStaleness=%f", buf, 0x18u);
              }

              v7 = v50;
              v10 = v54;
              v11 = v55;
              v9 = v56;
            }

            else
            {
              v23 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_25A200000, v23, OS_LOG_TYPE_INFO, "primaryIsStale=YES, no primary", buf, 2u);
              }
            }

            v10 += v59;
          }

          ++v12;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      v48 = 0;
      v49 = 0;
      LOBYTE(v57) = 1;
      v51 = 1;
      LOBYTE(v52) = 0;
    }

    currentDeviceID = selfCopy->_currentDeviceID;
    selfCopy->_currentDeviceID = v47;
    v37 = v47;

    primaryDeviceID = selfCopy->_primaryDeviceID;
    selfCopy->_primaryDeviceID = &v48->isa;
    v39 = v48;

    primaryName = selfCopy->_primaryName;
    selfCopy->_primaryName = v49;
    v41 = v49;

    selfCopy->_neverOnboarded = v45 & 1;
    selfCopy->_isOnboarded = v52 & 1;
    selfCopy->_isSignedIn = v51 & 1;
    selfCopy->_tcc = v46 & 1;
    selfCopy->_accountUnknown = BYTE4(v46) & 1;
    selfCopy->_numPhones = v10;
    selfCopy->_primaryIsStale = v57 & 1;

    v6 = v43;
    nCopy = v44;
  }
}

- (id)specifiers
{
  v217 = *MEMORY[0x277D85DE8];
  v2 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v209 = 0;
  v210 = &v209;
  v211 = 0x3032000000;
  v212 = __Block_byref_object_copy__0;
  v213 = __Block_byref_object_dispose__0;
  v214 = 0;
  v3 = dispatch_group_create();
  v4 = objc_alloc_init(MEMORY[0x277D2A208]);
  dispatch_group_enter(v3);
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = __49__MOSuggestionSheetSettingsController_specifiers__block_invoke;
  v206[3] = &unk_27991F078;
  v208 = &v209;
  v5 = v3;
  v207 = v5;
  [v4 deviceListJSONWithCompletionHandler:v206];
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  [(MOSuggestionSheetSettingsController *)self _processDevicesJSON:v210[5]];
  v176 = [v2 localizedStringForKey:@"Go to Settings" value:&stru_286BDDEB8 table:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v12 = +[MOOnboardingManager sharedInstance];
    self->_isOnboarded = [v12 isOnboarded];

    if (self->_accountUnknown)
    {
      v13 = 0;
    }

    else if (self->_isSignedIn)
    {
      currentDeviceID = self->_currentDeviceID;
      primaryDeviceID = self->_primaryDeviceID;
      if (self->_tcc)
      {
        if ([(NSString *)currentDeviceID isEqualToString:primaryDeviceID])
        {
          v13 = 1;
        }

        else
        {
          v13 = 3;
        }
      }

      else if ([(NSString *)currentDeviceID isEqualToString:primaryDeviceID])
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }
    }

    else
    {
      v13 = 5;
    }

    v191 = [v2 localizedStringForKey:@"Sync Settings" value:&stru_286BDDEB8 table:0];
    v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SYNC_FROM_IPHONE_GROUP" name:v191];
    v178 = *MEMORY[0x277D3FFE8];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:?];
    v8 = [v2 localizedStringForKey:@"Suggestions will no longer be created from" value:&stru_286BDDEB8 table:0];
    v9 = [v2 localizedStringForKey:@"You can manage how journaling suggestions on this iPhone sync to iCloud in Settings." value:&stru_286BDDEB8 table:0];
    range = [v176 length];
    v170 = 0;
    v171 = v10;
    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v10 = [v2 localizedStringForKey:@"You’re using this iPhone to create journaling suggestions that can sync to iPad." value:&stru_286BDDEB8 table:0];
        v37 = MEMORY[0x277CCACA8];
        v38 = [v2 localizedStringForKey:@"%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
        v176 = [v37 localizedStringWithFormat:v38, v10, v9, v176];

        [v171 setObject:v176 forKeyedSubscript:*MEMORY[0x277D3FF88]];
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        [v171 setProperty:v40 forKey:*MEMORY[0x277D3FF48]];

        v41 = [v176 length];
        v220.length = range;
        v220.location = v41 - range;
        v42 = NSStringFromRange(v220);
        [v171 setProperty:v42 forKey:*MEMORY[0x277D3FF58]];

        v43 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v171 setProperty:v43 forKey:*MEMORY[0x277D3FF68]];

        [v171 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
        goto LABEL_43;
      }

      if (v13 != 2)
      {
        v180 = 0;
        v160 = 0;
        v171 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      if (v13 == 3)
      {
        v10 = [v2 localizedStringForKey:@"Sync from This iPhone" value:&stru_286BDDEB8 table:0];
        v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v35 setButtonAction:sel_syncFromPhone_];
        v160 = v35;
        v176 = [v2 localizedStringForKey:@"Use this iPhone to create journaling suggestions that can sync to iPad." value:&stru_286BDDEB8 table:0];
        if (!self->_primaryDeviceID || self->_primaryIsStale)
        {
          goto LABEL_110;
        }

        if (self->_primaryName)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_primaryName];
        }

        else
        {
          [v2 localizedStringForKey:@"your other iPhone" value:&stru_286BDDEB8 table:0];
        }
        v128 = ;
        v129 = MEMORY[0x277CCACA8];
        v130 = [v2 localizedStringForKey:@"%@ %@." value:&stru_286BDDEB8 table:0];
        v128 = [v129 localizedStringWithFormat:v130, v8, v128];

        if (v128)
        {
          v131 = MEMORY[0x277CCACA8];
          v132 = [v2 localizedStringForKey:@"%@ %@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1762 = [v131 localizedStringWithFormat:v132, v176, v128, v9, v176];
        }

        else
        {
LABEL_110:
          v133 = MEMORY[0x277CCACA8];
          v132 = [v2 localizedStringForKey:@"%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1762 = [v133 localizedStringWithFormat:v132, v176, v9, v176];
          v128 = 0;
        }

        [v171 setObject:v1762 forKeyedSubscript:*MEMORY[0x277D3FF88]];
        v134 = objc_opt_class();
        v135 = NSStringFromClass(v134);
        [v171 setProperty:v135 forKey:*MEMORY[0x277D3FF48]];

        v136 = [v1762 length];
        v223.length = range;
        v223.location = v136 - range;
        v137 = NSStringFromRange(v223);
        [v171 setProperty:v137 forKey:*MEMORY[0x277D3FF58]];

        v138 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v171 setProperty:v138 forKey:*MEMORY[0x277D3FF68]];

        [v171 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
        v170 = 0;
        v180 = 0;
        goto LABEL_17;
      }

      if (v13 == 4)
      {
        v10 = [v2 localizedStringForKey:@"Sync from This iPhone" value:&stru_286BDDEB8 table:0];
        v36 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v36 setButtonAction:sel_syncFromPhone_];
        [v36 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
        v160 = v36;
        v176 = [v2 localizedStringForKey:@"Use this iPhone to create journaling suggestions that can sync to iPad." value:&stru_286BDDEB8 table:0];
        v128 = [v2 localizedStringForKey:@"You'll need Journaling Suggestions enabled in iCloud settings." value:&stru_286BDDEB8 table:0];
        if (!self->_primaryDeviceID || self->_primaryIsStale)
        {
          goto LABEL_115;
        }

        if (self->_primaryName)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_primaryName];
        }

        else
        {
          [v2 localizedStringForKey:@"your other iPhone" value:&stru_286BDDEB8 table:0];
        }
        v139 = ;
        v140 = MEMORY[0x277CCACA8];
        v141 = [v2 localizedStringForKey:@"%@ %@." value:&stru_286BDDEB8 table:0];
        v1762 = [v140 localizedStringWithFormat:v141, v8, v139];

        if (v1762)
        {
          v142 = MEMORY[0x277CCACA8];
          v143 = [v2 localizedStringForKey:@"%@ %@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1763 = [v142 localizedStringWithFormat:v143, v176, v1762, v128, v176];
        }

        else
        {
LABEL_115:
          v144 = MEMORY[0x277CCACA8];
          v143 = [v2 localizedStringForKey:@"%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1763 = [v144 localizedStringWithFormat:v143, v176, v128, v176];
          v1762 = 0;
        }

        [v171 setObject:v1763 forKeyedSubscript:*MEMORY[0x277D3FF88]];
        v145 = objc_opt_class();
        v146 = NSStringFromClass(v145);
        [v171 setProperty:v146 forKey:*MEMORY[0x277D3FF48]];

        v147 = [v1763 length];
        v224.length = range;
        v224.location = v147 - range;
        v148 = NSStringFromRange(v224);
        [v171 setProperty:v148 forKey:*MEMORY[0x277D3FF58]];

        v149 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v171 setProperty:v149 forKey:*MEMORY[0x277D3FF68]];

        [v171 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
        v170 = 0;
        v180 = 0;
        goto LABEL_16;
      }
    }

    v10 = [v2 localizedStringForKey:@"To use this iPhone to create journaling suggestions that can sync to iPad value:enable Journaling Suggestions in iCloud settings." table:{&stru_286BDDEB8, 0}];
    v28 = MEMORY[0x277CCACA8];
    v29 = [v2 localizedStringForKey:@"%@ %@" value:&stru_286BDDEB8 table:0];
    v176 = [v28 localizedStringWithFormat:v29, v10, v176];

    [v171 setObject:v176 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [v171 setProperty:v31 forKey:*MEMORY[0x277D3FF48]];

    v32 = [v176 length];
    v219.length = range;
    v219.location = v32 - range;
    v33 = NSStringFromRange(v219);
    [v171 setProperty:v33 forKey:*MEMORY[0x277D3FF58]];

    v34 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v171 setProperty:v34 forKey:*MEMORY[0x277D3FF68]];

    [v171 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
LABEL_43:
    v170 = 0;
    v180 = 0;
    v160 = 0;
    goto LABEL_44;
  }

  v191 = [v2 localizedStringForKey:@"Sync Settings" value:&stru_286BDDEB8 table:0];
  v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SYNC_TO_IPAD_GROUP" name:v191];
  v178 = *MEMORY[0x277D3FFE8];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:?];
  v8 = [v2 localizedStringForKey:@"Show suggested moments created on your iPhone." value:&stru_286BDDEB8 table:0];
  v9 = [v2 localizedStringForKey:@"Suggestions use data from apps and services you turn on value:but can appear in any app using suggestions. Data used for suggestions is private and stored on-device." table:{&stru_286BDDEB8, 0}];
  v10 = [v2 localizedStringForKey:@"About Journaling Suggestions & Privacy" value:&stru_286BDDEB8 table:0];
  v176 = [v2 localizedStringForKey:@"To customize journaling suggestions or clear history value:go to" table:{&stru_286BDDEB8, 0}];
  if (self->_primaryDeviceID && !self->_primaryIsStale)
  {
    v14 = v7;
    v15 = [v2 localizedStringForKey:@"the iPhone that’s set to sync journaling suggestions" value:&stru_286BDDEB8 table:0];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v2 localizedStringForKey:@"%@ %@." value:&stru_286BDDEB8 table:0];
    v128 = [v16 localizedStringWithFormat:v17, v176, v15];

    v7 = v14;
  }

  else
  {
    v128 = 0;
  }

  v1762 = [v2 localizedStringForKey:@"You can manage how journaling suggestions sync from iCloud to this iPad in Settings." value:&stru_286BDDEB8 table:0];
  v180 = v7;
  v19 = MEMORY[0x277CCACA8];
  if (v128)
  {
    v20 = [v2 localizedStringForKey:@"%@\n\n%@ %@\n\n%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
    [v19 localizedStringWithFormat:v20, v8, v9, v10, v128, v1762, v176];
  }

  else
  {
    v20 = [v2 localizedStringForKey:@"%@\n\n%@ %@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
    [v19 localizedStringWithFormat:v20, v8, v9, v10, v1762, v176];
  }
  v1763 = ;

  [v180 setObject:v1763 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [v180 setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

  [v180 addFooterHyperlinkWithRange:objc_msgSend(v8 target:"length") + objc_msgSend(v9 action:{"length") + 3, objc_msgSend(v10, "length"), self, sel_showPrivacyExplanationSheet_}];
  [v180 addFooterHyperlinkWithRange:objc_msgSend(v1763 target:"length") - objc_msgSend(v176 action:{"length"), objc_msgSend(v176, "length"), self, sel_navigateToiCloudTCC_}];
  v24 = [v2 localizedStringForKey:@"Allow Sync to iPad" value:&stru_286BDDEB8 table:0];
  v170 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v24 target:self set:sel__setStreamToggle_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];
  if (self->_isSignedIn && self->_tcc)
  {
    v25 = v170;
    [v170 setTarget:?];
  }

  else
  {
    v25 = v170;
    [v170 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    [v170 setTarget:0];
  }

  [v25 setObject:@"Sync to iPad" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [v25 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v25 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];

  v160 = 0;
  v171 = 0;
LABEL_16:

LABEL_17:
LABEL_44:

LABEL_45:
  array = [MEMORY[0x277CBEB18] array];
  v174 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PRE_ONBOARDING_NO_APP_WARMUP" name:&stru_286BDDEB8];
  [v174 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v178];
  v45 = [v2 localizedStringForKey:@"Journaling Suggestions are only available when there is a journaling App on iPhone" value:&stru_286BDDEB8 table:0];
  v177 = *MEMORY[0x277D3FF88];
  [v174 setObject:v45 forKeyedSubscript:?];

  v46 = MEMORY[0x277D3FAD8];
  v47 = [v2 localizedStringForKey:@"Turn On Journaling Suggestions" value:&stru_286BDDEB8 table:0];
  v173 = [v46 preferenceSpecifierNamed:v47 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v192 = *MEMORY[0x277D3FD80];
  [v173 setProperty:MEMORY[0x277CBEC38] forKey:?];
  [v173 setButtonAction:sel_didTapTurnOnJournalingSuggestion_];
  v166 = [v2 localizedStringForKey:@"Turn Off All" value:&stru_286BDDEB8 table:0];
  v165 = [v2 localizedStringForKey:@"Turn On All" value:&stru_286BDDEB8 table:0];
  v48 = MEMORY[0x277D3FAD8];
  if ([(MOSuggestionSheetSettingsController *)self _isAnySettingEnabled])
  {
    v49 = v166;
  }

  else
  {
    v49 = v165;
  }

  v169 = [v48 preferenceSpecifierNamed:v49 target:self set:0 get:0 detail:0 cell:13 edit:0];
  _isAnySettingEnabled = [(MOSuggestionSheetSettingsController *)self _isAnySettingEnabled];
  v51 = &selRef_didTapTurnOffAllWarmup_;
  if (!_isAnySettingEnabled)
  {
    v51 = &selRef_didTapTurnOnAll_;
  }

  [v169 setButtonAction:*v51];
  v153 = [v2 localizedStringForKey:@"Include Suggestions From" value:&stru_286BDDEB8 table:0];
  v52 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"INCLUDE_SUGGESTIONS_FROM_GROUP" name:?];
  [v52 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v178];
  v190 = v52;
  v152 = [MEMORY[0x277D37630] bundleWithIdentifier:@"com.apple.onboarding.journal"];
  privacyFlow = [v152 privacyFlow];
  localizedButtonTitle = [privacyFlow localizedButtonTitle];

  v163 = [v2 localizedStringForKey:@"Suggestions use data from apps and services you turn on value:but can appear in any app using suggestions. Data used for suggestions is private and stored on-device." table:{&stru_286BDDEB8, 0}];
  v172 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v163, localizedButtonTitle];
  [v190 setObject:v172 forKeyedSubscript:v177];
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  v157 = *MEMORY[0x277D3FF48];
  [v190 setProperty:v55 forKey:?];

  v56 = [v163 length];
  v221.length = [localizedButtonTitle length];
  v221.location = v56 + 1;
  v57 = NSStringFromRange(v221);
  v156 = *MEMORY[0x277D3FF58];
  [v190 setProperty:v57 forKey:?];

  v58 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  v155 = *MEMORY[0x277D3FF68];
  [v190 setProperty:v58 forKey:?];

  v154 = *MEMORY[0x277D3FF50];
  [v190 setProperty:@"showPrivacyExplanationSheet:" forKey:?];
  v59 = MEMORY[0x277D3FAD8];
  v60 = [v2 localizedStringForKey:@"Activity" value:&stru_286BDDEB8 table:0];
  v186 = [v59 preferenceSpecifierNamed:v60 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  v61 = *MEMORY[0x277D3FFB8];
  [v186 setObject:@"Activity" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v62 = NSClassFromString(&cfstr_Pssubtitleswit.isa);
  v63 = *MEMORY[0x277D3FE58];
  [v186 setObject:v62 forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v64 = [v2 localizedStringForKey:@"Your workouts and exercise" value:&stru_286BDDEB8 table:0];
  v65 = *MEMORY[0x277D40160];
  [v186 setObject:v64 forKeyedSubscript:*MEMORY[0x277D40160]];

  [v186 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  v66 = MEMORY[0x277D3FAD8];
  v67 = [v2 localizedStringForKey:@"Media" value:&stru_286BDDEB8 table:0];
  v185 = [v66 preferenceSpecifierNamed:v67 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v185 setObject:@"Media" forKeyedSubscript:v61];
  [v185 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v68 = [v2 localizedStringForKey:@"Podcasts value:music table:{videos, and more", &stru_286BDDEB8, 0}];
  [v185 setObject:v68 forKeyedSubscript:v65];

  [v185 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  v69 = MEMORY[0x277D3FAD8];
  v70 = [v2 localizedStringForKey:@"Contacts" value:&stru_286BDDEB8 table:0];
  v184 = [v69 preferenceSpecifierNamed:v70 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v184 setObject:@"Contacts" forKeyedSubscript:v61];
  [v184 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v71 = [v2 localizedStringForKey:@"People you message and call" value:&stru_286BDDEB8 table:0];
  [v184 setObject:v71 forKeyedSubscript:v65];

  [v184 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  v72 = MEMORY[0x277D3FAD8];
  v73 = [v2 localizedStringForKey:@"Photos" value:&stru_286BDDEB8 table:0];
  v183 = [v72 preferenceSpecifierNamed:v73 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v183 setObject:@"Photos" forKeyedSubscript:v61];
  [v183 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v74 = [v2 localizedStringForKey:@"Library value:memories and people" table:{&stru_286BDDEB8, 0}];
  [v183 setObject:v74 forKeyedSubscript:v65];

  [v183 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  LODWORD(v73) = +[MOSuggestionSheetSettingsController fetchSiginificantLocationEnablementStatus];
  v75 = MEMORY[0x277D3FAD8];
  v76 = [v2 localizedStringForKey:@"Significant Locations" value:&stru_286BDDEB8 table:0];
  rangea = [v75 preferenceSpecifierNamed:v76 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [rangea setObject:@"Significant Locations" forKeyedSubscript:v61];
  [rangea setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v77 = [v2 localizedStringForKey:@"Places where you spend time" value:&stru_286BDDEB8 table:0];
  [rangea setObject:v77 forKeyedSubscript:v65];

  v78 = MEMORY[0x277CBEC38];
  [rangea setProperty:MEMORY[0x277CBEC38] forKey:v192];
  if (v73)
  {
    v79 = v78;
  }

  else
  {
    v79 = MEMORY[0x277CBEC28];
  }

  [rangea setProperty:v79 forKey:*MEMORY[0x277D3FF38]];
  v80 = MEMORY[0x277D3FAD8];
  v81 = [v2 localizedStringForKey:@"State of Mind" value:&stru_286BDDEB8 table:0];
  v182 = [v80 preferenceSpecifierNamed:v81 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v182 setObject:@"State of Mind" forKeyedSubscript:v61];
  [v182 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v82 = [v2 localizedStringForKey:@"Moods and emotions you log" value:&stru_286BDDEB8 table:0];
  [v182 setObject:v82 forKeyedSubscript:v65];

  [v182 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v178];
  v83 = [v2 localizedStringForKey:@"General prompts to reflect on gratitude value:kindness table:{purpose, and more", &stru_286BDDEB8, 0}];
  [emptyGroupSpecifier setObject:v83 forKeyedSubscript:v177];

  v84 = MEMORY[0x277D3FAD8];
  v85 = [v2 localizedStringForKey:@"Reflection Prompts" value:&stru_286BDDEB8 table:0];
  v181 = [v84 preferenceSpecifierNamed:v85 target:self set:sel__setStreamToggle_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v181 setObject:@"Reflection" forKeyedSubscript:v61];
  [v181 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  [v181 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v86 = MEMORY[0x277D3FAD8];
  v87 = [v2 localizedStringForKey:@"Clear History" value:&stru_286BDDEB8 table:0];
  v168 = [v86 deleteButtonSpecifierWithName:v87 target:self action:sel__clearHistoryWarmup_];

  [v168 setObject:&unk_286BE0ED8 forKeyedSubscript:*MEMORY[0x277D3FD78]];
  v162 = [v2 localizedStringForKey:@"iPhone will discover nearby contacts to show moments spent with contacts higher up in your list of suggestions. This may also allow your contacts to discover when you’re nearby. Your name and location will not be shared." value:&stru_286BDDEB8 table:0];
  v151 = [v2 localizedStringForKey:@"Nearby People" value:&stru_286BDDEB8 table:0];
  v88 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"NEARBY_PEOPLE_GROUP" name:?];
  [v88 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v178];
  [v88 setObject:v162 forKeyedSubscript:v177];
  v158 = v88;
  v89 = MEMORY[0x277D3FAD8];
  v90 = [v2 localizedStringForKey:@"Prioritize Moments with Contacts" value:&stru_286BDDEB8 table:0];
  v91 = [v89 preferenceSpecifierNamed:v90 target:self set:sel__setStreamToggle_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v91 setObject:@"Prioritize Moments with Contacts" forKeyedSubscript:v61];
  [v91 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  [v91 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v92 = MEMORY[0x277D3FAD8];
  v93 = [v2 localizedStringForKey:@"Notifications" value:&stru_286BDDEB8 table:0];
  v94 = [v92 preferenceSpecifierNamed:v93 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v94 setProperty:MEMORY[0x277CBEC38] forKey:v192];
  [v94 setButtonAction:sel_didTapSuggestionNotificationSettings_];
  v150 = [v2 localizedStringForKey:@"Apps Using Private Access" value:&stru_286BDDEB8 table:0];
  v95 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_USING_PRIVATE_ACCESS_GROUP" name:?];
  v193 = [v2 localizedStringForKey:@"Learn More" value:&stru_286BDDEB8 table:0];
  v96 = [v2 localizedStringForKey:@"Apps using Private Access for suggestions data will appear here." value:&stru_286BDDEB8 table:0];
  v193 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v96, v193];
  [v95 setObject:v193 forKeyedSubscript:v177];
  v97 = objc_opt_class();
  v98 = NSStringFromClass(v97);
  [v95 setProperty:v98 forKey:v157];

  v99 = [v96 length];
  v222.length = [v193 length];
  v222.location = v99 + 1;
  v100 = NSStringFromRange(v222);
  [v95 setProperty:v100 forKey:v156];

  v101 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v95 setProperty:v101 forKey:v155];

  [v95 setProperty:@"showDataAccessExplanationSheet:" forKey:v154];
  if (!self->supportedApplicationsLoading && !self->supportedApplications && !self->supportedApplicationsWithDataAccess)
  {
    v102 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25A200000, v102, OS_LOG_TYPE_DEFAULT, "Triggering loading of supported applications specifiers", buf, 2u);
    }

    self->supportedApplicationsLoading = 1;
    v103 = objc_opt_new();
    supportedApplications = self->supportedApplications;
    self->supportedApplications = v103;

    v105 = objc_opt_new();
    supportedApplicationsWithDataAccess = self->supportedApplicationsWithDataAccess;
    self->supportedApplicationsWithDataAccess = v105;

    v107 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v108 = dispatch_queue_create("MOSuggestionSheetSettingsController", v107);

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_287;
    block[3] = &unk_27991F020;
    objc_copyWeak(&v204, buf);
    dispatch_async(v108, block);
    objc_destroyWeak(&v204);
    objc_destroyWeak(buf);
  }

  if (userInterfaceIdiom)
  {
    if (self->_neverOnboarded)
    {
      if (!self->supportedApplicationsLoading)
      {
        v109 = self->supportedApplications;
        if (v109)
        {
          if ([(NSMutableArray *)v109 count])
          {
            v110 = v173;
          }

          else
          {
            v110 = v174;
          }

          [array addObject:v110];
        }
      }
    }

    else if (v180)
    {
      [array addObject:v180];
      if (v170)
      {
        [array addObject:v170];
      }
    }

    selfCopy6 = self;
    if (!self->_neverOnboarded)
    {
      [array addObject:emptyGroupSpecifier3];
      [array addObject:v94];
      [array addObject:v95];
      selfCopy6 = self;
      if (!self->supportedApplicationsLoading)
      {
        v113 = self->supportedApplicationsWithDataAccess;
        if (v113)
        {
          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v114 = v113;
          v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v195 objects:v215 count:16];
          if (v115)
          {
            v116 = *v196;
            do
            {
              for (i = 0; i != v115; ++i)
              {
                if (*v196 != v116)
                {
                  objc_enumerationMutation(v114);
                }

                [array addObject:*(*(&v195 + 1) + 8 * i)];
              }

              v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v195 objects:v215 count:16];
            }

            while (v115);
          }

LABEL_103:

          selfCopy6 = self;
          goto LABEL_104;
        }
      }
    }

    goto LABEL_104;
  }

  if (self->_isOnboarded)
  {
    if (v171)
    {
      [array addObject:v171];
      if (v160)
      {
        [array addObject:v160];
      }
    }

    [array addObject:v190];
    [array addObject:v169];
    [array addObject:v186];
    [array addObject:v185];
    [array addObject:v184];
    [array addObject:v183];
    [array addObject:rangea];
    [array addObject:v182];
    [array addObject:emptyGroupSpecifier2];
    [array addObject:v168];
    [array addObject:emptyGroupSpecifier];
    v111 = v181;
    goto LABEL_91;
  }

  if (!self->supportedApplicationsLoading)
  {
    v118 = self->supportedApplications;
    if (v118)
    {
      if ([(NSMutableArray *)v118 count])
      {
        v111 = v173;
      }

      else
      {
        v111 = v174;
      }

LABEL_91:
      [array addObject:v111];
    }
  }

  selfCopy6 = self;
  if (self->_isOnboarded)
  {
    [array addObject:v158];
    [array addObject:v91];
    selfCopy6 = self;
    if (self->_isOnboarded)
    {
      [array addObject:emptyGroupSpecifier3];
      [array addObject:v94];
      [array addObject:v95];
      selfCopy6 = self;
      if (!self->supportedApplicationsLoading)
      {
        v119 = self->supportedApplicationsWithDataAccess;
        if (v119)
        {
          v201 = 0u;
          v202 = 0u;
          v199 = 0u;
          v200 = 0u;
          v114 = v119;
          v120 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v199 objects:v216 count:16];
          if (v120)
          {
            v121 = *v200;
            do
            {
              for (j = 0; j != v120; ++j)
              {
                if (*v200 != v121)
                {
                  objc_enumerationMutation(v114);
                }

                [array addObject:*(*(&v199 + 1) + 8 * j)];
              }

              v120 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v199 objects:v216 count:16];
            }

            while (v120);
          }

          goto LABEL_103;
        }
      }
    }
  }

LABEL_104:
  v123 = *MEMORY[0x277D3FC48];
  v124 = *(&selfCopy6->super.super.super.super.super.isa + v123);
  *(&selfCopy6->super.super.super.super.super.isa + v123) = array;
  v125 = array;

  v126 = *(&self->super.super.super.super.super.isa + v123);
  _Block_object_dispose(&v209, 8);

  return v126;
}

void __49__MOSuggestionSheetSettingsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_287(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_DEFAULT, "Loading of supported applications specifiers started", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fillSupportedApplicationsArray:WeakRetained[182] andSupportedApplicationsWithDataAccess:WeakRetained[183]];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_288;
  block[3] = &unk_27991F020;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
}

void __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_288(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_DEFAULT, "Loading of supported applications specifiers complete", buf, 2u);
  }

  v3 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_DEFAULT, "Triggering specifiers reload", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1472] = 0;
    [WeakRetained reloadSpecifiers];
  }
}

- (void)fillSupportedApplicationsArray:(id)array andSupportedApplicationsWithDataAccess:(id)access
{
  arrayCopy = array;
  accessCopy = access;
  v6 = +[MOApprovedApplicationsManager sharedInstance];
  v7 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __109__MOSuggestionSheetSettingsController_fillSupportedApplicationsArray_andSupportedApplicationsWithDataAccess___block_invoke;
  v29[3] = &unk_27991F0A0;
  v25 = v6;
  v30 = v25;
  v26 = arrayCopy;
  v31 = v26;
  [v7 setFilter:v29];
  v27 = v7;
  nextObject = [v7 nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    v10 = *MEMORY[0x277D3FFC0];
    v11 = *MEMORY[0x277D401A8];
    do
    {
      v12 = [v9 URL];
      v13 = [MEMORY[0x277CCA8D8] bundleWithURL:v12];
      bundleIdentifier = [v13 bundleIdentifier];
      v15 = MEMORY[0x277D755B8];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v17 = [v15 _applicationIconImageForBundleIdentifier:bundleIdentifier format:0 scale:?];

      v18 = [v13 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
      if (isValidString(v18))
      {
        v19 = v18;

        bundleIdentifier = v19;
      }

      v20 = [v13 objectForInfoDictionaryKey:@"CFBundleName"];

      if (isValidString(v20))
      {
        v21 = v20;

        bundleIdentifier = v21;
      }

      v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:bundleIdentifier target:0 set:0 get:0 detail:0 cell:3 edit:0];
      bundleIdentifier2 = [v9 bundleIdentifier];
      [v22 setUserInfo:bundleIdentifier2];

      [v22 setObject:v17 forKeyedSubscript:v10];
      [v22 setObject:bundleIdentifier forKeyedSubscript:v11];
      [accessCopy addObject:v22];

      nextObject2 = [v27 nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }
}

BOOL __109__MOSuggestionSheetSettingsController_fillSupportedApplicationsArray_andSupportedApplicationsWithDataAccess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = *(a1 + 32);
  v6 = [v3 bundleIdentifier];
  LODWORD(v5) = [v5 isJournalingSuggestionsAvailableForBundleIdentifier:v6];

  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = [v4 copy];
    [v7 addObject:v8];
  }

  v9 = *(a1 + 32);
  v10 = [v3 bundleIdentifier];
  v11 = [v9 getJournalingSuggestionsApprovedApplicationRecordForBundleIdentifier:v10];

  return v11 != 0;
}

- (BOOL)_isAnySettingEnabled
{
  v2 = +[MOSettingsManager sharedInstance];
  v3 = [v2 getStateForSetting:1];
  v4 = v3 | [v2 getStateForSetting:2];
  v5 = [v2 getStateForSetting:3];
  v6 = v4 | v5 | [v2 getStateForSetting:4];
  v7 = [v2 getStateForSetting:5];
  v8 = v7 | [v2 getStateForSetting:6];
  v9 = v6 | v8 | [v2 getStateForSetting:9];

  return v9 & 1;
}

- (void)_clearHistoryWarmup:(id)warmup
{
  warmupCopy = warmup;
  objc_initWeak(&location, self);
  v5 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v6 = MEMORY[0x277D75110];
  v7 = [v5 localizedStringForKey:@"Do you want to clear the history of Journaling Suggestions?" value:&stru_286BDDEB8 table:0];
  v8 = [v6 alertControllerWithTitle:v7 message:0 preferredStyle:0];

  v9 = MEMORY[0x277D750F8];
  v10 = [v5 localizedStringForKey:@"Clear History" value:&stru_286BDDEB8 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__MOSuggestionSheetSettingsController__clearHistoryWarmup___block_invoke;
  v16[3] = &unk_27991F0C8;
  objc_copyWeak(&v18, &location);
  v11 = warmupCopy;
  v17 = v11;
  v12 = [v9 actionWithTitle:v10 style:2 handler:v16];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = [v5 localizedStringForKey:@"Cancel" value:&stru_286BDDEB8 table:0];
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v8 addAction:v15];

  [(MOSuggestionSheetSettingsController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __59__MOSuggestionSheetSettingsController__clearHistoryWarmup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearHistory:*(a1 + 32)];
}

- (void)_clearHistory:(id)history
{
  v12 = +[MOSettingsManager sharedInstance];
  v4 = [v12 getStateForSetting:1];
  v5 = [v12 getStateForSetting:2];
  v6 = [v12 getStateForSetting:3];
  v7 = [v12 getStateForSetting:4];
  v8 = [v12 getStateForSetting:5];
  v9 = [v12 getStateForSetting:6];
  v10 = [v12 getStateForSetting:9];
  v11 = [v12 getStateForSetting:10];
  [v12 setState:1 forSetting:1];
  [v12 setState:1 forSetting:2];
  [v12 setState:1 forSetting:3];
  [v12 setState:1 forSetting:4];
  [v12 setState:1 forSetting:5];
  [v12 setState:1 forSetting:6];
  [v12 setState:1 forSetting:9];
  [v12 setState:1 forSetting:10];
  [v12 setState:0 forSetting:1];
  [v12 setState:0 forSetting:2];
  [v12 setState:0 forSetting:3];
  [v12 setState:0 forSetting:4];
  [v12 setState:0 forSetting:5];
  [v12 setState:0 forSetting:6];
  [v12 setState:0 forSetting:9];
  [v12 setState:0 forSetting:10];
  [v12 setState:v4 forSetting:1];
  [v12 setState:v5 forSetting:2];
  [v12 setState:v6 forSetting:3];
  [v12 setState:v7 forSetting:4];
  [v12 setState:v8 forSetting:5];
  [v12 setState:v9 forSetting:6];
  [v12 setState:v10 forSetting:9];
  [v12 setState:v11 forSetting:10];
  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
  [MOSuggestionSheetSettingsController runCommand:&unk_286BE0E60];
}

- (void)didTapTurnOnJournalingSuggestion:(id)suggestion
{
  v4 = objc_opt_new();
  connection = self->connection;
  self->connection = v4;

  remoteTarget = [(PresenterServerConnection *)self->connection remoteTarget];
  getConnectionID = [remoteTarget getConnectionID];

  [(PresenterServerConnection *)self->connection setPresenterDelegate:self];
  v7 = objc_opt_new();
  [v7 setOnboardingOnlyPresentation:1];
  [(PresenterServerConnection *)self->connection requestPresentationFor:0 with:v7];
  v8 = objc_opt_new();
  [v8 setupSceneHostingWithConnectionUUID:getConnectionID];
  [(MOSuggestionSheetSettingsController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)shouldDismissOnboarding
{
  [(MOSuggestionSheetSettingsController *)self dismissViewControllerAnimated:1 completion:0];

  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
}

- (void)didTapSuggestionNotificationSettings:(id)settings
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"app-prefs:com.apple.momentsd.MOUserNotifications&target=com.apple.settings.notifications"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (void)didTapTurnOffAllWarmup:(id)warmup
{
  warmupCopy = warmup;
  objc_initWeak(&location, self);
  v5 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v6 = MEMORY[0x277D75110];
  v7 = [v5 localizedStringForKey:@"Do you want to turn off Journaling Suggestions?" value:&stru_286BDDEB8 table:0];
  v8 = [v6 alertControllerWithTitle:v7 message:0 preferredStyle:0];

  v9 = MEMORY[0x277D750F8];
  v10 = [v5 localizedStringForKey:@"Turn Off All" value:&stru_286BDDEB8 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__MOSuggestionSheetSettingsController_didTapTurnOffAllWarmup___block_invoke;
  v16[3] = &unk_27991F0C8;
  objc_copyWeak(&v18, &location);
  v11 = warmupCopy;
  v17 = v11;
  v12 = [v9 actionWithTitle:v10 style:2 handler:v16];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = [v5 localizedStringForKey:@"Cancel" value:&stru_286BDDEB8 table:0];
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v8 addAction:v15];

  [(MOSuggestionSheetSettingsController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __62__MOSuggestionSheetSettingsController_didTapTurnOffAllWarmup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didTapTurnOffAll:*(a1 + 32)];
}

- (void)didTapTurnOffAll:(id)all
{
  v4 = +[MOSettingsManager sharedInstance];
  [v4 setState:0 forSetting:1];
  [v4 setState:0 forSetting:2];
  [v4 setState:0 forSetting:3];
  [v4 setState:0 forSetting:4];
  [v4 setState:0 forSetting:5];
  [v4 setState:0 forSetting:6];
  [v4 setState:0 forSetting:9];
  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
  [MOSuggestionSheetSettingsController runCommand:&unk_286BE0E78];
}

- (void)didTapTurnOnAll:(id)all
{
  v4 = +[MOSettingsManager sharedInstance];
  [v4 setState:1 forSetting:1];
  [v4 setState:1 forSetting:2];
  [v4 setState:1 forSetting:3];
  [v4 setState:1 forSetting:4];
  [v4 setState:1 forSetting:5];
  [v4 setState:1 forSetting:6];
  [v4 setState:1 forSetting:9];
  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
  [MOSuggestionSheetSettingsController runCommand:&unk_286BE0E90];
}

- (void)_setStreamToggleWarmup:(id)warmup withSpecifier:(id)specifier
{
  warmupCopy = warmup;
  specifierCopy = specifier;
  bOOLValue = [warmupCopy BOOLValue];
  v9 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v11 = v10;
  if (!v10 || [v10 BOOLValue])
  {
    objc_initWeak(location, self);
    if (bOOLValue)
    {
      WeakRetained = objc_loadWeakRetained(location);
      [WeakRetained _setStreamToggle:MEMORY[0x277CBEC38] withSpecifier:specifierCopy];

      [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
    }

    else
    {
      v13 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
      v14 = [(MOSuggestionSheetSettingsController *)self _getLocalizedSpecifier:v9];
      v15 = MEMORY[0x277CCACA8];
      v16 = [v13 localizedStringForKey:@"Turning off %@ will clear history of selected data of Journaling Suggestions. Continue?" value:&stru_286BDDEB8 table:0];
      v28 = [v15 localizedStringWithFormat:v16, v14];

      v17 = MEMORY[0x277CCACA8];
      v18 = [v13 localizedStringForKey:@"Clear %@ history" value:&stru_286BDDEB8 table:0];
      v27 = [v17 localizedStringWithFormat:v18, v14];

      [v13 localizedStringForKey:@"Cancel" value:&stru_286BDDEB8 table:0];
      v26 = v25 = v13;
      v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v28 message:0 preferredStyle:0];
      v20 = MEMORY[0x277D750F8];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke;
      v33[3] = &unk_27991F0F0;
      objc_copyWeak(&v36, location);
      v21 = specifierCopy;
      v34 = v21;
      selfCopy = self;
      v22 = [v20 actionWithTitle:v27 style:2 handler:v33];
      [v19 addAction:v22];

      v23 = MEMORY[0x277D750F8];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke_2;
      v29[3] = &unk_27991F0F0;
      objc_copyWeak(&v32, location);
      v30 = v21;
      selfCopy2 = self;
      v24 = [v23 actionWithTitle:v26 style:1 handler:v29];
      [v19 addAction:v24];

      [(MOSuggestionSheetSettingsController *)self presentViewController:v19 animated:1 completion:0];
      objc_destroyWeak(&v32);

      objc_destroyWeak(&v36);
    }

    objc_destroyWeak(location);
  }
}

uint64_t __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setStreamToggle:MEMORY[0x277CBEC28] withSpecifier:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

uint64_t __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setStreamToggle:MEMORY[0x277CBEC38] withSpecifier:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

- (void)_setStreamToggle:(id)toggle withSpecifier:(id)specifier
{
  toggleCopy = toggle;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v9 = v8;
  if (!v8 || [v8 BOOLValue])
  {
    v10 = +[MOSettingsManager sharedInstance];
    bOOLValue = [toggleCopy BOOLValue];
    v12 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
    if ([v12 isEqual:@"Activity"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 1;
    }

    else if ([v12 isEqual:@"Media"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 2;
    }

    else if ([v12 isEqual:@"Contacts"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 3;
    }

    else if ([v12 isEqual:@"Photos"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 4;
    }

    else if ([v12 isEqual:@"Significant Locations"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 5;
    }

    else if ([v12 isEqual:@"Prioritize Moments with Contacts"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 6;
    }

    else if ([v12 isEqual:@"State of Mind"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 9;
    }

    else
    {
      if (![v12 isEqual:@"Reflection"])
      {
        if ([v12 isEqual:@"Sync to iPad"])
        {
          v16 = objc_alloc_init(MEMORY[0x277D2A208]);
          v17 = [v16 setOnboardedWithFlag:toggleCopy];
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MOSuggestionSheetSettingsController.m" lineNumber:1133 description:@"Specifier identifier is unknown"];
        }

        goto LABEL_20;
      }

      v13 = v10;
      v14 = bOOLValue;
      v15 = 10;
    }

    [v13 setState:v14 forSetting:v15];
LABEL_20:
    [MOSuggestionSheetSettingsController runCommand:&unk_286BE0EA8];
  }
}

- (id)_getStreamToggle:(id)toggle
{
  toggleCopy = toggle;
  v6 = [toggleCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v7 = v6;
  if (v6 && ![v6 BOOLValue])
  {
    isOnboarded = MEMORY[0x277CBEC28];
    goto LABEL_22;
  }

  v8 = +[MOSettingsManager sharedInstance];
  v9 = [toggleCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  if ([v9 isEqual:@"Activity"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 1;
  }

  else if ([v9 isEqual:@"Media"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 2;
  }

  else if ([v9 isEqual:@"Contacts"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 3;
  }

  else if ([v9 isEqual:@"Photos"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 4;
  }

  else if ([v9 isEqual:@"Significant Locations"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 5;
  }

  else if ([v9 isEqual:@"Prioritize Moments with Contacts"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 6;
  }

  else if ([v9 isEqual:@"State of Mind"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 9;
  }

  else
  {
    if (![v9 isEqual:@"Reflection"])
    {
      if ([v9 isEqual:@"Sync to iPad"])
      {
        v15 = objc_alloc_init(MEMORY[0x277D2A208]);
        isOnboarded = [v15 isOnboarded];
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MOSuggestionSheetSettingsController.m" lineNumber:1170 description:@"Specifier identifier is unknown"];

        isOnboarded = 0;
      }

      goto LABEL_21;
    }

    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 10;
  }

  isOnboarded = [v10 numberWithBool:{objc_msgSend(v11, "getStateForSetting:", v12)}];
LABEL_21:

LABEL_22:

  return isOnboarded;
}

- (id)_getLocalizedSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v6 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  if ([specifierCopy isEqual:@"Activity"])
  {
    v7 = @"Activity";
LABEL_19:
    v8 = [v6 localizedStringForKey:v7 value:&stru_286BDDEB8 table:0];
    goto LABEL_20;
  }

  if ([specifierCopy isEqual:@"Media"])
  {
    v7 = @"Media";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Contacts"])
  {
    v7 = @"Contacts";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Photos"])
  {
    v7 = @"Photos";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Significant Locations"])
  {
    v7 = @"Significant Locations";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Prioritize Moments with Contacts"])
  {
    v7 = @"Prioritize Moments with Contacts";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"State of Mind"])
  {
    v7 = @"State of Mind";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Reflection"])
  {
    v7 = @"Reflection Prompts";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Sync to iPad"])
  {
    v7 = @"Sync to iPad";
    goto LABEL_19;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MOSuggestionSheetSettingsController.m" lineNumber:1198 description:@"Specifier identifier is unknown"];

  v8 = &stru_286BDDEB8;
LABEL_20:

  return v8;
}

- (void)showPrivacyExplanationSheet:(id)sheet
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.journal"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)showDataAccessExplanationSheet:(id)sheet
{
  v12 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v4 = [v12 localizedStringForKey:@"Private Access & Suggestions" value:&stru_286BDDEB8 table:0];
  v5 = [v12 localizedStringForKey:@"Your journal only has access to suggestions when you start writing about them or save them.\n\nThe information used to create a suggestion value:such as a photo or workout table:{is also shared with your journal at that time.\n\nApps that use Private Access to offer suggestions will appear in Journaling Suggestions settings.", &stru_286BDDEB8, 0}];
  v6 = [MEMORY[0x277D755B8] imageNamed:@"momentsPrivacy-80-masked" inBundle:v12];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v8 = [v12 localizedStringForKey:@"Done" value:&stru_286BDDEB8 table:0];
  [boldButton setTitle:v8 forState:0];

  [boldButton addTarget:self action:sel_dismissDataAccessExplanationSheet_ forControlEvents:0x2000];
  v9 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v4 detailText:v5 icon:v6 contentLayout:2];
  buttonTray = [(OBWelcomeController *)v9 buttonTray];
  [buttonTray addButton:boldButton];

  [(OBWelcomeController *)v9 setModalInPresentation:1];
  [(MOSuggestionSheetSettingsController *)self presentViewController:v9 animated:1 completion:0];
  dataAccessPresenter = self->dataAccessPresenter;
  self->dataAccessPresenter = v9;
}

- (void)dismissDataAccessExplanationSheet:(id)sheet
{
  [(OBWelcomeController *)self->dataAccessPresenter dismissViewControllerAnimated:1 completion:0];
  dataAccessPresenter = self->dataAccessPresenter;
  self->dataAccessPresenter = 0;
}

- (void)navigateToiCloudTCC:(id)c
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE/com.apple.Dataclass"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (void)syncFromPhone:(id)phone
{
  phoneCopy = phone;
  v5 = objc_alloc_init(MEMORY[0x277D2A208]);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke;
  v6[3] = &unk_27991F140;
  objc_copyWeak(&v7, &location);
  [v5 deviceMakePrimaryJSONWithCompletionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke_2;
  v5[3] = &unk_27991F118;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processDevicesJSON:*(a1 + 32)];
  [WeakRetained reloadSpecifiers];
}

- (void)didTransitionTo:(id)to
{
  v10 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = toCopy;
    _os_log_impl(&dword_25A200000, v5, OS_LOG_TYPE_INFO, "Sheet didTransitionTo: %@", buf, 0xCu);
  }

  if (![toCopy intValue])
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MOSuggestionSheetSettingsController_didTransitionTo___block_invoke;
    block[3] = &unk_27991F020;
    objc_copyWeak(&v7, buf);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __55__MOSuggestionSheetSettingsController_didTransitionTo___block_invoke(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_INFO, "Sheet dismiss onboarding and set streams", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shouldDismissOnboarding];
}

@end