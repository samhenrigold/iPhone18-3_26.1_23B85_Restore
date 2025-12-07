@interface ATXModeConfigurationLogger
- (ATXModeConfigurationLogger)init;
- (ATXModeConfigurationLogger)initWithDNDModeConfigurationClient:(id)client;
- (void)logMetricForConfiguration:(id)configuration;
- (void)logModeConfigurationsWithXPCActivity:(id)activity;
- (void)retrieveEvents;
@end

@implementation ATXModeConfigurationLogger

- (ATXModeConfigurationLogger)initWithDNDModeConfigurationClient:(id)client
{
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = ATXModeConfigurationLogger;
  v6 = [(ATXModeConfigurationLogger *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    v8 = objc_opt_new();
    cachedSuggestedItems = v7->_cachedSuggestedItems;
    v7->_cachedSuggestedItems = v8;

    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v7->_modeEntityTrialClientWrapper;
    v7->_modeEntityTrialClientWrapper = mEMORY[0x277CEB6A8];

    [(ATXModeConfigurationLogger *)v7 retrieveEvents];
    v12 = +[ATXPosterConfigurationCache sharedInstance];
    configurations = [v12 configurations];
    cachedConfigurations = v7->_cachedConfigurations;
    v7->_cachedConfigurations = configurations;
  }

  return v7;
}

- (ATXModeConfigurationLogger)init
{
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  v4 = [(ATXModeConfigurationLogger *)self initWithDNDModeConfigurationClient:mEMORY[0x277CEB440]];

  return v4;
}

- (void)logModeConfigurationsWithXPCActivity:(id)activity
{
  v36 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = __atxlog_handle_metrics(activityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "%@ - Logging mode configurations", buf, 0xCu);
  }

  getAllModeConfigurationsWithoutCache = [(ATXDNDModeConfigurationClient *)self->_client getAllModeConfigurationsWithoutCache];
  v9 = __atxlog_handle_metrics(getAllModeConfigurationsWithoutCache);
  allValues = v9;
  if (getAllModeConfigurationsWithoutCache)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412290;
      v35 = v12;
      _os_log_impl(&dword_2263AA000, allValues, OS_LOG_TYPE_INFO, "%@ - Fetched mode configurations from client", buf, 0xCu);
    }

    didDefer = [activityCopy didDefer];
    if (didDefer)
    {
      allValues = __atxlog_handle_metrics(didDefer);
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412290;
        v35 = v15;
        v16 = "%@ - XPC Activity deferred, terminating.";
LABEL_21:
        _os_log_impl(&dword_2263AA000, allValues, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      allValues = [getAllModeConfigurationsWithoutCache allValues];
      v17 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(allValues);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            v22 = objc_autoreleasePoolPush();
            [(ATXModeConfigurationLogger *)self logMetricForConfiguration:v21];
            didDefer2 = [activityCopy didDefer];
            if (didDefer2)
            {
              v26 = __atxlog_handle_metrics(didDefer2);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = objc_opt_class();
                v28 = NSStringFromClass(v27);
                *buf = 138412290;
                v35 = v28;
                _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v22);
              goto LABEL_25;
            }

            objc_autoreleasePoolPop(v22);
          }

          v18 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      allValues = __atxlog_handle_metrics(v24);
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v15 = NSStringFromClass(v25);
        *buf = 138412290;
        v35 = v15;
        v16 = "%@ - Finished logging mode configurations";
        goto LABEL_21;
      }
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ATXModeConfigurationLogger logModeConfigurationsWithXPCActivity:?];
  }

LABEL_25:
}

- (void)logMetricForConfiguration:(id)configuration
{
  v185 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v4 = __atxlog_handle_metrics(configurationCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    mode = [configurationCopy mode];
    identifier = [mode identifier];
    uUIDString = [identifier UUIDString];
    *buf = 138412546;
    v177 = v6;
    v178 = 2112;
    v179 = uUIDString;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "%@ - Generating metrics for DND mode with UUID %@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  mode2 = [configurationCopy mode];
  identifier2 = [mode2 identifier];
  uUIDString2 = [identifier2 UUIDString];
  [v10 setModeIdentifier:uUIDString2];

  mode3 = [configurationCopy mode];
  [mode3 semanticType];
  DNDModeSemanticTypeToATXActivityType();
  v15 = ATXActivityTypeToString();
  [v10 setModeSemanticType:v15];

  v174 = 0;
  v139 = objc_alloc_init(MEMORY[0x277CEB568]);
  v16 = [v139 loadHomeScreenPageConfigurationsIncludingHidden:1 error:&v174];
  v17 = v174;
  v18 = v17;
  if (v17)
  {
    v19 = __atxlog_handle_home_screen(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXModeConfigurationLogger logMetricForConfiguration:];
    }
  }

  v142 = configurationCopy;
  v138 = v18;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = v16;
  v20 = [obj countByEnumeratingWithState:&v170 objects:v184 count:16];
  if (v20)
  {
    v21 = v20;
    v145 = *v171;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v171 != v145)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v170 + 1) + 8 * i);
        v166 = 0u;
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        associatedModeUUIDs = [v23 associatedModeUUIDs];
        v25 = [associatedModeUUIDs countByEnumeratingWithState:&v166 objects:v183 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v167;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v167 != v27)
              {
                objc_enumerationMutation(associatedModeUUIDs);
              }

              v29 = *(*(&v166 + 1) + 8 * j);
              modeIdentifier = [v10 modeIdentifier];
              LODWORD(v29) = [v29 isEqualToString:modeIdentifier];

              if (v29)
              {
                [v10 setHasCustomHomeScreen:1];
                [v10 setNumCustomHomeScreens:{objc_msgSend(v10, "numCustomHomeScreens") + 1}];
                associatedModeUUIDs2 = [v23 associatedModeUUIDs];
                v32 = [associatedModeUUIDs2 count];
                hasCustomHomeScreenUsedInOtherModes = [v10 hasCustomHomeScreenUsedInOtherModes];
                if (v32 > 1)
                {
                  v34 = 1;
                }

                else
                {
                  v34 = hasCustomHomeScreenUsedInOtherModes;
                }

                [v10 setHasCustomHomeScreenUsedInOtherModes:v34];
              }
            }

            v26 = [associatedModeUUIDs countByEnumeratingWithState:&v166 objects:v183 count:16];
          }

          while (v26);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v170 objects:v184 count:16];
    }

    while (v21);
  }

  cachedConfigurations = [(ATXModeConfigurationLogger *)self cachedConfigurations];
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke;
  v164[3] = &unk_27859F778;
  v36 = v142;
  v165 = v36;
  v37 = [cachedConfigurations _pas_filteredArrayWithTest:v164];
  [v10 setNumLockScreenPosters:{objc_msgSend(v37, "count")}];

  v38 = objc_opt_new();
  mode4 = [v36 mode];
  identifier3 = [mode4 identifier];
  uUIDString3 = [identifier3 UUIDString];
  v137 = v38;
  v42 = [v38 identifierOfSuggestedPageForModeUUID:uUIDString3];

  if (v42)
  {
    [v10 setNumAcceptedSuggestedHomePages:1];
  }

  mode5 = [v36 mode];
  semanticType = [mode5 semanticType];

  if (semanticType == 1)
  {
    v45 = ATXSleepSuggestedHomePageWasCreatedDuringMigration();
    if (!v45)
    {
      v46 = __atxlog_handle_home_screen(0);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [ATXModeConfigurationLogger logMetricForConfiguration:v46];
      }
    }

    bOOLValue = [v45 BOOLValue];
    [v10 setIsSleepMigrated:bOOLValue];
    [v10 setDidRemoveSuggestedPage:{bOOLValue & (objc_msgSend(v10, "hasCustomHomeScreen") ^ 1)}];
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v143 = v36;
  triggers = [v36 triggers];
  v49 = [triggers countByEnumeratingWithState:&v160 objects:v182 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v161;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v161 != v51)
        {
          objc_enumerationMutation(triggers);
        }

        v53 = *(*(&v160 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isEnabled])
        {
          [v10 setHasAreaTrigger:1];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isEnabled])
          {
            [v10 setHasTimeTrigger:1];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isEnabled])
            {
              [v10 setHasAppTrigger:1];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isEnabled])
              {
                [v10 setHasSmartTrigger:1];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isEnabled])
                {
                  [v10 setHasWorkoutTrigger:1];
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isEnabled])
                  {
                    [v10 setHasSleepTrigger:1];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isEnabled])
                    {
                      [v10 setHasDrivingTrigger:1];
                    }
                  }
                }
              }
            }
          }
        }
      }

      v50 = [triggers countByEnumeratingWithState:&v160 objects:v182 count:16];
    }

    while (v50);
  }

  configuration = [v143 configuration];
  allowIntelligentManagement = [configuration allowIntelligentManagement];

  if (allowIntelligentManagement == 2)
  {
    [v10 setIsIntelligentBreakthroughEnabled:1];
  }

  cachedSuggestedItems = [(ATXModeConfigurationLogger *)self cachedSuggestedItems];
  mode6 = [v143 mode];
  identifier4 = [mode6 identifier];
  uUIDString4 = [identifier4 UUIDString];
  v60 = [cachedSuggestedItems objectForKeyedSubscript:uUIDString4];

  configuration2 = [v143 configuration];
  applicationConfigurationType = [configuration2 applicationConfigurationType];

  if (applicationConfigurationType)
  {
    if (applicationConfigurationType == 2)
    {
      goto LABEL_73;
    }

    if (applicationConfigurationType != 1)
    {
      v67 = __atxlog_handle_metrics(v63);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        [ATXModeConfigurationLogger logMetricForConfiguration:v143];
      }

      goto LABEL_72;
    }

    configuration3 = [v143 configuration];
    applicationsWithExceptions = [configuration3 applicationsWithExceptions];

    [v10 setNumDeniedApps:{objc_msgSend(applicationsWithExceptions, "count")}];
    suggestedDeniedApps = [v60 suggestedDeniedApps];
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_57;
    v158[3] = &unk_27859B908;
    v159 = applicationsWithExceptions;
    v67 = applicationsWithExceptions;
    v68 = [suggestedDeniedApps _pas_filteredSetWithTest:v158];

    [v10 setNumAcceptedSuggestedApps:{objc_msgSend(v68, "count")}];
    v69 = v159;
  }

  else
  {
    configuration4 = [v143 configuration];
    applicationsWithExceptions2 = [configuration4 applicationsWithExceptions];

    [v10 setNumAllowedApps:{objc_msgSend(applicationsWithExceptions2, "count")}];
    suggestedAllowedApps = [v60 suggestedAllowedApps];
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2;
    v156[3] = &unk_27859B908;
    v157 = applicationsWithExceptions2;
    v67 = applicationsWithExceptions2;
    v73 = [suggestedAllowedApps _pas_filteredSetWithTest:v156];

    [v10 setNumAcceptedSuggestedApps:{objc_msgSend(v73, "count")}];
    v69 = v157;
  }

LABEL_72:
LABEL_73:
  configuration5 = [v143 configuration];
  senderConfigurationType = [configuration5 senderConfigurationType];

  if (senderConfigurationType)
  {
    if (senderConfigurationType == 2)
    {
      goto LABEL_82;
    }

    if (senderConfigurationType != 1)
    {
      v80 = __atxlog_handle_metrics(v76);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        [ATXModeConfigurationLogger logMetricForConfiguration:v143];
      }

      goto LABEL_81;
    }

    configuration6 = [v143 configuration];
    contactsWithExceptions = [configuration6 contactsWithExceptions];

    [v10 setNumDeniedContacts:{objc_msgSend(contactsWithExceptions, "count")}];
    suggestedDeniedContacts = [v60 suggestedDeniedContacts];
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_59;
    v154[3] = &unk_27859B908;
    v155 = contactsWithExceptions;
    v80 = contactsWithExceptions;
    v81 = [suggestedDeniedContacts _pas_filteredSetWithTest:v154];

    [v10 setNumAcceptedSuggestedContacts:{objc_msgSend(v81, "count")}];
    v82 = v155;
  }

  else
  {
    configuration7 = [v143 configuration];
    contactsWithExceptions2 = [configuration7 contactsWithExceptions];

    [v10 setNumAllowedContacts:{objc_msgSend(contactsWithExceptions2, "count")}];
    suggestedAllowedContacts = [v60 suggestedAllowedContacts];
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2_60;
    v152[3] = &unk_27859B908;
    v153 = contactsWithExceptions2;
    v80 = contactsWithExceptions2;
    v86 = [suggestedAllowedContacts _pas_filteredSetWithTest:v152];

    [v10 setNumAcceptedSuggestedContacts:{objc_msgSend(v86, "count")}];
    v82 = v153;
  }

LABEL_81:
LABEL_82:
  v136 = v60;
  configuration8 = [v143 configuration];
  [configuration8 applicationConfigurationType];
  v88 = DNDStringFromConfigurationType();
  [v10 setAppConfigurationType:v88];

  configuration9 = [v143 configuration];
  [configuration9 senderConfigurationType];
  v90 = DNDStringFromConfigurationType();
  [v10 setContactConfigurationType:v90];

  [v10 setIsAutomaticallyGenerated:{objc_msgSend(v143, "isAutomaticallyGenerated")}];
  [v10 setDoesImpactAvailability:{objc_msgSend(v143, "impactsAvailability") != 0}];
  client = [(ATXModeConfigurationLogger *)self client];
  [v10 setIsSharingAcrossDevices:{objc_msgSend(client, "isCloudSyncActive")}];

  client2 = [(ATXModeConfigurationLogger *)self client];
  mode7 = [v143 mode];
  modeIdentifier2 = [mode7 modeIdentifier];
  v151 = 0;
  v95 = [client2 appConfigurationsForModeIdentifier:modeIdentifier2 error:&v151];
  v96 = v151;
  [v10 setNumAppConfigurations:{objc_msgSend(v95, "count")}];

  trialExperimentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialExperimentId];
  [v10 setExperimentId:trialExperimentId];

  trialTreatmentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialTreatmentId];
  [v10 setTreatmentId:trialTreatmentId];

  v99 = [MEMORY[0x277CCABB0] numberWithInt:{-[ATXModeEntityTrialClientWrapper trialDeploymentId](self->_modeEntityTrialClientWrapper, "trialDeploymentId")}];
  [v10 setDeploymentId:v99];

  v140 = v96;
  if (v96)
  {
    v101 = __atxlog_handle_metrics(v100);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      v131 = objc_opt_class();
      v132 = NSStringFromClass(v131);
      localizedDescription = [v96 localizedDescription];
      mode8 = [v143 mode];
      [mode8 semanticType];
      v135 = DNDModeSemanticTypeToString();
      *buf = 138412802;
      v177 = v132;
      v178 = 2112;
      v179 = localizedDescription;
      v180 = 2112;
      v181 = v135;
      _os_log_error_impl(&dword_2263AA000, v101, OS_LOG_TYPE_ERROR, "%@: Got error: %@, when getting AppConfigturation for %@", buf, 0x20u);
    }
  }

  v102 = MEMORY[0x277CEB930];
  mode9 = [v143 mode];
  LODWORD(v102) = [v102 suggestionsAreSupportedForModeSemanticType:{objc_msgSend(mode9, "semanticType")}];

  if (v102)
  {
    v104 = objc_alloc(MEMORY[0x277CEB930]);
    mode10 = [v143 mode];
    v106 = [v104 initWithModeSemanticType:{objc_msgSend(mode10, "semanticType")}];

    [v10 setWasQuickStartPlatterShown:{objc_msgSend(v106, "suggestionWasAlreadyShown")}];
  }

  v107 = objc_alloc(MEMORY[0x277CBEBD0]);
  v108 = [v107 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v109 = [v108 dictionaryForKey:*MEMORY[0x277CEBDA8]];
  mode11 = [v143 mode];
  modeIdentifier3 = [mode11 modeIdentifier];
  mode12 = [v109 objectForKeyedSubscript:modeIdentifier3];
  [v10 setWasColoringBookSeen:{objc_msgSend(mode12, "BOOLValue")}];

  [v10 setNumAcceptedSuggestedLockScreens:0];
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v113 = +[ATXPosterConfigurationCache sharedInstance];
  configurations = [v113 configurations];

  v146 = configurations;
  v115 = [configurations countByEnumeratingWithState:&v147 objects:v175 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v148;
    do
    {
      for (m = 0; m != v116; ++m)
      {
        if (*v148 != v117)
        {
          objc_enumerationMutation(v146);
        }

        galleryItem = [*(*(&v147 + 1) + 8 * m) galleryItem];
        v120 = galleryItem;
        if (galleryItem && ([galleryItem modeSemanticType], (modeIdentifier3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          mode11 = [v120 modeSemanticType];
          integerValue = [mode11 integerValue];
          mode12 = [v143 mode];
          v122 = integerValue == [mode12 semanticType] && objc_msgSend(v120, "source") == 6;
          v123 = 1;
        }

        else
        {
          v123 = 0;
          v122 = 0;
        }

        [v10 setNumAcceptedSuggestedLockScreens:{objc_msgSend(v10, "numAcceptedSuggestedLockScreens") + v122}];
        if (v123)
        {
        }

        if (v120)
        {
        }
      }

      v116 = [v146 countByEnumeratingWithState:&v147 objects:v175 count:16];
    }

    while (v116);
  }

  v125 = __atxlog_handle_metrics(v124);
  if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
  {
    v126 = objc_opt_class();
    v127 = NSStringFromClass(v126);
    mode13 = [v143 mode];
    identifier5 = [mode13 identifier];
    uUIDString5 = [identifier5 UUIDString];
    *buf = 138412546;
    v177 = v127;
    v178 = 2112;
    v179 = uUIDString5;
    _os_log_impl(&dword_2263AA000, v125, OS_LOG_TYPE_INFO, "%@ - Logging metrics for DND mode with UUID %@", buf, 0x16u);
  }

  [v10 logToCoreAnalytics];
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 modeUUID];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) mode];
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  v8 = [v4 isEqualToString:v7];

  return v8;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_57(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) bundleID];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) bundleID];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_59(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) contactIdentifier];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2_60(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) contactIdentifier];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)retrieveEvents
{
  v3 = objc_opt_new();
  v4 = [v3 publisherFromStartTime:0.0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke;
  v7[3] = &unk_27859E3D8;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_66;
  v6[3] = &unk_27859A798;
  v6[4] = self;
  v5 = [v4 sinkWithCompletion:v7 shouldContinue:v6];
}

void __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_metrics(v4);
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - Retrieved events from ATXModeConfigurationUIFlowLoggingBiomeStream", &v9, 0xCu);
  }
}

uint64_t __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_66(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 dndModeUUID];
  v5 = [v4 UUIDString];

  v6 = [*(a1 + 32) cachedSuggestedItems];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = [*(a1 + 32) cachedSuggestedItems];
    [v9 setObject:v8 forKeyedSubscript:v5];
  }

  v10 = [*(a1 + 32) cachedSuggestedItems];
  v11 = [v10 objectForKeyedSubscript:v5];

  if (![v3 modeConfigurationEntityType])
  {
    if ([v3 modeConfigurationType])
    {
      [v11 suggestedDeniedApps];
    }

    else
    {
      [v11 suggestedAllowedApps];
    }

    goto LABEL_7;
  }

  if ([v3 modeConfigurationEntityType] == 1)
  {
    if ([v3 modeConfigurationType])
    {
      [v11 suggestedDeniedContacts];
    }

    else
    {
      [v11 suggestedAllowedContacts];
    }

    v12 = LABEL_7:;
    v13 = v12;
    v14 = [v3 suggestedEntityIdentifiers];
    [v13 addObjectsFromArray:v14];
  }

  return 1;
}

- (void)logModeConfigurationsWithXPCActivity:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

- (void)logMetricForConfiguration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXModeConfigurationLogger: Unable to load HomeScreen page configurations - %{public}@", v1, 0xCu);
}

- (void)logMetricForConfiguration:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXModeConfigurationLogger logMetricForConfiguration:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to determine whether sleep migration happened so can't set didRemoveSuggestedPage on the metric correctly. Setting metric to NO as a fallback.", &v1, 0xCu);
}

- (void)logMetricForConfiguration:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 configuration];
  [v1 applicationConfigurationType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

- (void)logMetricForConfiguration:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 configuration];
  [v1 senderConfigurationType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 error];
  v10 = [v5 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0x16u);
}

@end