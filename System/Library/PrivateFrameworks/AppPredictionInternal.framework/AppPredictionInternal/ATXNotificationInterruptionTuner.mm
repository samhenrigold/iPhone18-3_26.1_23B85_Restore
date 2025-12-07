@interface ATXNotificationInterruptionTuner
- (ATXNotificationInterruptionTuner)init;
- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store;
- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client;
- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager;
- (ATXNotificationInterruptionTuner)initWithNotificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager;
- (BOOL)appWithBundleId:(id)id isRecommendedByAllowListModel:(id)model;
- (BOOL)appWithBundleId:(id)id isRecommendedByDenyListModel:(id)model;
- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByAllowListModel:(id)model;
- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByDenyListModel:(id)model;
- (BOOL)validateNotificationUrgency:(id)urgency;
- (id)activeNotificationSuggestionsForMode:(unint64_t)mode;
- (id)activeNotificationSuggestionsForMode:(unint64_t)mode candidateNotifications:(id)notifications;
- (id)dndModeUUID:(unint64_t)d;
@end

@implementation ATXNotificationInterruptionTuner

- (ATXNotificationInterruptionTuner)init
{
  v3 = objc_alloc(MEMORY[0x277CEB6A0]);
  v4 = +[ATXModeEntityScorerServer sharedInstance];
  v5 = [v3 initWithModeEntityScorerClient:v4];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [(ATXNotificationInterruptionTuner *)self initWithModesModels:v5 notificationSettingsReader:v6 dataStore:v7];

  return v8;
}

- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store
{
  v8 = MEMORY[0x277CEB440];
  storeCopy = store;
  readerCopy = reader;
  modelsCopy = models;
  sharedInstance = [v8 sharedInstance];
  v13 = [(ATXNotificationInterruptionTuner *)self initWithModesModels:modelsCopy notificationSettingsReader:readerCopy dataStore:storeCopy modeConfigClient:sharedInstance];

  return v13;
}

- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client
{
  v10 = MEMORY[0x277CEB5F0];
  clientCopy = client;
  storeCopy = store;
  readerCopy = reader;
  modelsCopy = models;
  v15 = [[v10 alloc] initWithModesModels:modelsCopy notificationSettingsReader:readerCopy modeConfigurationClient:clientCopy];
  v16 = [(ATXNotificationInterruptionTuner *)self initWithModesModels:modelsCopy notificationSettingsReader:readerCopy dataStore:storeCopy modeConfigClient:clientCopy interruptionManager:v15];

  return v16;
}

- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager
{
  modelsCopy = models;
  readerCopy = reader;
  storeCopy = store;
  clientCopy = client;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = ATXNotificationInterruptionTuner;
  v17 = [(ATXNotificationInterruptionTuner *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_modesModels, models);
    objc_storeStrong(&v18->_notificationSettingsReader, reader);
    objc_storeStrong(&v18->_dataStore, store);
    objc_storeStrong(&v18->_modeConfigClient, client);
    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    constants = v18->_constants;
    v18->_constants = mEMORY[0x277CEB710];

    objc_storeStrong(&v18->_interruptionManager, manager);
  }

  return v18;
}

- (ATXNotificationInterruptionTuner)initWithNotificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager
{
  readerCopy = reader;
  storeCopy = store;
  clientCopy = client;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = ATXNotificationInterruptionTuner;
  v15 = [(ATXNotificationInterruptionTuner *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationSettingsReader, reader);
    objc_storeStrong(&v16->_dataStore, store);
    objc_storeStrong(&v16->_modeConfigClient, client);
    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    constants = v16->_constants;
    v16->_constants = mEMORY[0x277CEB710];

    objc_storeStrong(&v16->_interruptionManager, manager);
  }

  return v16;
}

- (id)activeNotificationSuggestionsForMode:(unint64_t)mode
{
  v5 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore getTopOfProminentStackNotificationsWithLimit:10];
  v6 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore getTopOfNonProminentStackNotificationsWithLimit:10];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];
  v8 = [(ATXNotificationInterruptionTuner *)self activeNotificationSuggestionsForMode:mode candidateNotifications:v7];

  return v8;
}

- (id)activeNotificationSuggestionsForMode:(unint64_t)mode candidateNotifications:(id)notifications
{
  v239 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  if (mode <= 0xF && ((1 << mode) & 0xB021) != 0)
  {
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_4;
  }

  v152 = notificationsCopy;
  modeCopy = mode;
  v9 = [(ATXNotificationInterruptionTuner *)self dndModeUUID:mode];
  if (v9)
  {
    v147 = objc_opt_new();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v220[0] = MEMORY[0x277D85DD0];
    v220[1] = 3221225472;
    v220[2] = __96__ATXNotificationInterruptionTuner_activeNotificationSuggestionsForMode_candidateNotifications___block_invoke;
    v220[3] = &unk_278598640;
    v168 = dictionary;
    v221 = v168;
    v167 = dictionary2;
    v222 = v167;
    [v152 enumerateObjectsUsingBlock:v220];
    v219 = 0;
    v175 = v9;
    v12 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader applicationConfigurationTypeForDNDModeUUID:v9 success:&v219];
    selfCopy = self;
    if (v219 != 1)
    {
      v40 = __atxlog_handle_notification_management(v12);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v40 candidateNotifications:?];
      }

      v7 = v147;
      v41 = v9;
LABEL_88:

      v219 = 0;
      v75 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader senderConfigurationTypeForDNDModeUUID:v41 success:&v219];
      if (v219 != 1)
      {
        v106 = __atxlog_handle_notification_management(v75);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v106 candidateNotifications:?];
        }

        goto LABEL_177;
      }

      v146 = v75;
      if (![v167 count])
      {
        v106 = __atxlog_handle_notification_management(0);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
          _os_log_impl(&dword_2263AA000, v106, OS_LOG_TYPE_DEFAULT, "%s: None of the notifications had associated contacts, so not returning any contact suggestions", buf, 0xCu);
        }

        goto LABEL_177;
      }

      interruptionManager = self->_interruptionManager;
      v77 = +[ATXModeEntityScorerServer sharedInstance];
      v78 = [v77 rankedContactsForMode:modeCopy options:1];
      v79 = [(ATXInterruptionManager *)interruptionManager recommendedAllowedContactsForContactScores:v78];

      v166 = [(ATXInterruptionManager *)self->_interruptionManager recommendedDeniedContactsForMode:modeCopy options:1];
      v80 = objc_opt_new();
      v177 = v80;
      v151 = v79;
      if (v146 == 2)
      {
        v81 = __atxlog_handle_notification_management(v80);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v131 = ATXModeToString();
          v132 = DNDStringFromConfigurationType();
          *buf = 136315650;
          v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
          v231 = 2114;
          v232 = v131;
          v233 = 2114;
          v234 = v132;
          _os_log_impl(&dword_2263AA000, v81, OS_LOG_TYPE_DEFAULT, "%s: Not returning any notification adjacent suggestions for contacts because mode: %{public}@ is in an unconfigured state: %{public}@", buf, 0x20u);
        }

LABEL_165:

        v134 = __atxlog_handle_notification_management(v133);
        if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
        {
          v135 = [v177 count];
          v136 = DNDStringFromConfigurationType();
          *buf = 136315650;
          v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
          v231 = 2048;
          v232 = v135;
          v233 = 2112;
          v234 = v136;
          _os_log_impl(&dword_2263AA000, v134, OS_LOG_TYPE_INFO, "%s: Created %ld contact suggestions for DND configuration type: %@", buf, 0x20u);
        }

        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v137 = v177;
        v138 = [v137 countByEnumeratingWithState:&v179 objects:v223 count:16];
        if (v138)
        {
          v139 = v138;
          v140 = *v180;
          do
          {
            v141 = 0;
            do
            {
              if (*v180 != v140)
              {
                objc_enumerationMutation(v137);
              }

              v142 = *(*(&v179 + 1) + 8 * v141);
              v143 = __atxlog_handle_notification_management(v138);
              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
                v231 = 2112;
                v232 = v142;
                _os_log_debug_impl(&dword_2263AA000, v143, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
              }

              ++v141;
            }

            while (v139 != v141);
            v138 = [v137 countByEnumeratingWithState:&v179 objects:v223 count:16];
            v139 = v138;
          }

          while (v138);
        }

        v7 = v147;
        [v147 addObjectsFromArray:v137];

        v106 = v151;
LABEL_177:

        v9 = v175;
        goto LABEL_178;
      }

      if (v146 != 1)
      {
        if (!v146)
        {
          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v81 = v79;
          v82 = [v81 countByEnumeratingWithState:&v195 objects:v227 count:16];
          if (!v82)
          {
            goto LABEL_165;
          }

          v84 = v82;
          v85 = *v196;
          *&v83 = 138412290;
          v144 = v83;
          v162 = v81;
          v149 = *v196;
          while (1)
          {
            v86 = 0;
            v154 = v84;
            do
            {
              if (*v196 != v85)
              {
                objc_enumerationMutation(v81);
              }

              v87 = *(*(&v195 + 1) + 8 * v86);
              if (v87)
              {
                cnContactId = [v87 cnContactId];
                if (cnContactId)
                {
                  v89 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader contactIsOnAllowList:cnContactId dndModeUUID:v175];
                  if (v89)
                  {
                    logb = __atxlog_handle_notification_management(v89);
                    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v144;
                      v230 = cnContactId;
                      _os_log_debug_impl(&dword_2263AA000, logb, OS_LOG_TYPE_DEBUG, "Not suggesting contact: %@ for allow list because it's already there", buf, 0xCu);
                    }

                    goto LABEL_120;
                  }

                  if (![(ATXNotificationInterruptionTuner *)self contactWithIdentifier:cnContactId isRecommendedByDenyListModel:v166])
                  {
                    v193 = 0u;
                    v194 = 0u;
                    v191 = 0u;
                    v192 = 0u;
                    logb = [v167 objectForKeyedSubscript:cnContactId];
                    v91 = [logb countByEnumeratingWithState:&v191 objects:v226 count:16];
                    if (!v91)
                    {
                      goto LABEL_120;
                    }

                    v92 = v91;
                    v159 = v86;
                    v93 = *v192;
                    v95 = logb;
                    v94 = v175;
                    while (1)
                    {
                      for (i = 0; i != v92; ++i)
                      {
                        if (*v192 != v93)
                        {
                          objc_enumerationMutation(v95);
                        }

                        v97 = *(*(&v191 + 1) + 8 * i);
                        bundleID = [v97 bundleID];
                        v99 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnAllowList:bundleID dndModeUUID:v94];
                        if (v99)
                        {
                          v100 = __atxlog_handle_notification_management(v99);
                          if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412546;
                            v230 = cnContactId;
                            v231 = 2112;
                            v232 = bundleID;
                            _os_log_impl(&dword_2263AA000, v100, OS_LOG_TYPE_INFO, "Not suggesting contact: %@ because app: %@ is already allowed so no reason to suggest allowing the contact as well.", buf, 0x16u);
                          }
                        }

                        else
                        {
                          if (![(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v97])
                          {
                            goto LABEL_117;
                          }

                          v100 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:1];
                          v101 = objc_alloc(MEMORY[0x277CEB6F0]);
                          v102 = objc_opt_new();
                          v103 = objc_opt_new();
                          uuid = [v97 uuid];
                          v105 = [v101 initWithInterruptionManagerTuningSuggestion:v100 scope:3 entityIdentifier:cnContactId uuid:v102 timestamp:v103 triggerNotificationUUID:uuid];

                          self = selfCopy;
                          v94 = v175;
                          [v177 addObject:v105];

                          v95 = logb;
                        }

LABEL_117:
                      }

                      v92 = [v95 countByEnumeratingWithState:&v191 objects:v226 count:16];
                      if (!v92)
                      {
                        v86 = v159;
                        v81 = v162;
                        v85 = v149;
                        v84 = v154;
                        goto LABEL_120;
                      }
                    }
                  }
                }

                else
                {
                  v90 = __atxlog_handle_notification_management(0);
                  logb = v90;
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
                    _os_log_impl(&dword_2263AA000, v90, OS_LOG_TYPE_INFO, "%s: Contact doesn't have a cnContactId. Skipping.", buf, 0xCu);
                  }

LABEL_120:
                }
              }

              ++v86;
            }

            while (v86 != v84);
            v84 = [v81 countByEnumeratingWithState:&v195 objects:v227 count:16];
            if (!v84)
            {
              goto LABEL_165;
            }
          }
        }

        v81 = __atxlog_handle_notification_management(v80);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v146 candidateNotifications:v81];
        }

        goto LABEL_165;
      }

      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v81 = v166;
      v107 = [v81 countByEnumeratingWithState:&v187 objects:v225 count:16];
      if (!v107)
      {
        goto LABEL_165;
      }

      v109 = v107;
      v110 = *v188;
      *&v108 = 138412290;
      v145 = v108;
      v163 = v81;
      v150 = *v188;
LABEL_131:
      v111 = 0;
      v155 = v109;
      while (1)
      {
        if (*v188 != v110)
        {
          objc_enumerationMutation(v81);
        }

        v112 = *(*(&v187 + 1) + 8 * v111);
        if (!v112)
        {
          goto LABEL_158;
        }

        cnContactId2 = [v112 cnContactId];
        if (!cnContactId2)
        {
          v115 = __atxlog_handle_notification_management(0);
          logc = v115;
          if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
            _os_log_impl(&dword_2263AA000, v115, OS_LOG_TYPE_INFO, "%s: Contact doesn't have a cnContactId. Skipping.", buf, 0xCu);
          }

          goto LABEL_156;
        }

        v114 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader contactIsOnDenyList:cnContactId2 dndModeUUID:v175];
        if (v114)
        {
          logc = __atxlog_handle_notification_management(v114);
          if (os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG))
          {
            *buf = v145;
            v230 = cnContactId2;
            _os_log_debug_impl(&dword_2263AA000, logc, OS_LOG_TYPE_DEBUG, "Not suggesting contact: %@ for deny list because it's already there", buf, 0xCu);
          }

LABEL_156:

          goto LABEL_157;
        }

        if (![(ATXNotificationInterruptionTuner *)self contactWithIdentifier:cnContactId2 isRecommendedByAllowListModel:v79])
        {
          break;
        }

LABEL_157:

LABEL_158:
        if (++v111 == v109)
        {
          v109 = [v81 countByEnumeratingWithState:&v187 objects:v225 count:16];
          if (!v109)
          {
            goto LABEL_165;
          }

          goto LABEL_131;
        }
      }

      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      logc = [v167 objectForKeyedSubscript:cnContactId2];
      v116 = [logc countByEnumeratingWithState:&v183 objects:v224 count:16];
      if (!v116)
      {
        goto LABEL_156;
      }

      v117 = v116;
      v160 = v111;
      v118 = *v184;
      v120 = logc;
      v119 = v175;
LABEL_144:
      v121 = 0;
      while (1)
      {
        if (*v184 != v118)
        {
          objc_enumerationMutation(v120);
        }

        v122 = *(*(&v183 + 1) + 8 * v121);
        bundleID2 = [v122 bundleID];
        v124 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnDenyList:bundleID2 dndModeUUID:v119];
        if (v124)
        {
          break;
        }

        if ([(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v122])
        {
          v125 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:3];
          v126 = objc_alloc(MEMORY[0x277CEB6F0]);
          v127 = objc_opt_new();
          v128 = objc_opt_new();
          uuid2 = [v122 uuid];
          v130 = [v126 initWithInterruptionManagerTuningSuggestion:v125 scope:3 entityIdentifier:cnContactId2 uuid:v127 timestamp:v128 triggerNotificationUUID:uuid2];

          v119 = v175;
          self = selfCopy;
          [v177 addObject:v130];

          v120 = logc;
LABEL_152:
        }

        if (v117 == ++v121)
        {
          v117 = [v120 countByEnumeratingWithState:&v183 objects:v224 count:16];
          if (!v117)
          {
            v110 = v150;
            v79 = v151;
            v111 = v160;
            v81 = v163;
            v109 = v155;
            goto LABEL_156;
          }

          goto LABEL_144;
        }
      }

      v125 = __atxlog_handle_notification_management(v124);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v230 = cnContactId2;
        v231 = 2112;
        v232 = bundleID2;
        _os_log_impl(&dword_2263AA000, v125, OS_LOG_TYPE_INFO, "Not suggesting contact: %@ because app: %@ is already denied so no reason to suggest denying the contact as well.", buf, 0x16u);
      }

      goto LABEL_152;
    }

    v148 = v12;
    v13 = [(ATXInterruptionManager *)self->_interruptionManager recommendedAllowedAppsForMode:modeCopy];
    v14 = [(ATXInterruptionManager *)self->_interruptionManager recommendedDeniedAppsForMode:modeCopy];
    v15 = objc_opt_new();
    v176 = v15;
    v161 = v13;
    v156 = v14;
    if (v148 == 2)
    {
      v16 = __atxlog_handle_notification_management(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v62 = ATXModeToString();
        v63 = DNDStringFromConfigurationType();
        *buf = 136315650;
        v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
        v231 = 2114;
        v232 = v62;
        v233 = 2114;
        v234 = v63;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "%s: Not returning any notification adjacent suggestions for apps because mode: %{public}@ is in an unconfigured state: %{public}@", buf, 0x20u);
      }

LABEL_76:

      v65 = __atxlog_handle_notification_management(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = [v176 count];
        v67 = DNDStringFromConfigurationType();
        *buf = 136315650;
        v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
        v231 = 2048;
        v232 = v66;
        v233 = 2112;
        v234 = v67;
        _os_log_impl(&dword_2263AA000, v65, OS_LOG_TYPE_INFO, "%s: Created %ld app suggestions for DND configuration type: %@", buf, 0x20u);
      }

      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v68 = v176;
      v69 = [v68 countByEnumeratingWithState:&v199 objects:v228 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v200;
        do
        {
          v72 = 0;
          do
          {
            if (*v200 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v199 + 1) + 8 * v72);
            v74 = __atxlog_handle_notification_management(v69);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v230 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
              v231 = 2112;
              v232 = v73;
              _os_log_debug_impl(&dword_2263AA000, v74, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
            }

            ++v72;
          }

          while (v70 != v72);
          v69 = [v68 countByEnumeratingWithState:&v199 objects:v228 count:16];
          v70 = v69;
        }

        while (v69);
      }

      v7 = v147;
      [v147 addObjectsFromArray:v68];

      v41 = v175;
      self = selfCopy;
      v40 = v161;
      goto LABEL_88;
    }

    if (v148 != 1)
    {
      if (!v148)
      {
        v217 = 0u;
        v218 = 0u;
        v215 = 0u;
        v216 = 0u;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v215 objects:v238 count:16];
        if (!v17)
        {
          goto LABEL_76;
        }

        v18 = v17;
        v19 = *v216;
        v169 = v16;
        v157 = *v216;
        while (1)
        {
          v20 = 0;
          v164 = v18;
          do
          {
            if (*v216 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v215 + 1) + 8 * v20);
            if (v21)
            {
              bundleId = [v21 bundleId];
              v23 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnAllowList:bundleId dndModeUUID:v175];
              if (v23)
              {
                v24 = __atxlog_handle_notification_management(v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v230 = bundleId;
                  v25 = v24;
                  v26 = "Not suggesting app: %@ for allow list because it's already there";
                  goto LABEL_21;
                }

                goto LABEL_37;
              }

              if (![(ATXNotificationInterruptionTuner *)self appWithBundleId:bundleId isRecommendedByDenyListModel:v14])
              {
                v27 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader doesAppSendNotificationsToDigest:bundleId];
                if (v27)
                {
                  v24 = __atxlog_handle_notification_management(v27);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v230 = bundleId;
                    v25 = v24;
                    v26 = "Not suggesting app: %@ for allow list because app is configured to go to digest";
LABEL_21:
                    _os_log_debug_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEBUG, v26, buf, 0xCu);
                  }
                }

                else
                {
                  v213 = 0u;
                  v214 = 0u;
                  v211 = 0u;
                  v212 = 0u;
                  v28 = bundleId;
                  v24 = [v168 objectForKeyedSubscript:bundleId];
                  v29 = [v24 countByEnumeratingWithState:&v211 objects:v237 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    log = v20;
                    v31 = *v212;
                    do
                    {
                      for (j = 0; j != v30; ++j)
                      {
                        if (*v212 != v31)
                        {
                          objc_enumerationMutation(v24);
                        }

                        v33 = *(*(&v211 + 1) + 8 * j);
                        if ([(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v33])
                        {
                          v34 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:1];
                          v35 = objc_alloc(MEMORY[0x277CEB6F0]);
                          v36 = objc_opt_new();
                          v37 = objc_opt_new();
                          uuid3 = [v33 uuid];
                          v39 = [v35 initWithInterruptionManagerTuningSuggestion:v34 scope:1 entityIdentifier:v28 uuid:v36 timestamp:v37 triggerNotificationUUID:uuid3];

                          [v176 addObject:v39];
                          self = selfCopy;
                        }
                      }

                      v30 = [v24 countByEnumeratingWithState:&v211 objects:v237 count:16];
                    }

                    while (v30);
                    v14 = v156;
                    v16 = v169;
                    v19 = v157;
                    v18 = v164;
                    v20 = log;
                  }

                  bundleId = v28;
                }

LABEL_37:
              }
            }

            v20 = (v20 + 1);
          }

          while (v20 != v18);
          v18 = [v16 countByEnumeratingWithState:&v215 objects:v238 count:16];
          if (!v18)
          {
            goto LABEL_76;
          }
        }
      }

      v16 = __atxlog_handle_notification_management(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v148 candidateNotifications:v16];
      }

      goto LABEL_76;
    }

    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v16 = v14;
    v42 = [v16 countByEnumeratingWithState:&v207 objects:v236 count:16];
    if (!v42)
    {
      goto LABEL_76;
    }

    v43 = v42;
    v44 = *v208;
    v45 = v175;
    v170 = v16;
    v158 = *v208;
LABEL_48:
    v46 = 0;
    v165 = v43;
    while (1)
    {
      if (*v208 != v44)
      {
        objc_enumerationMutation(v16);
      }

      v47 = *(*(&v207 + 1) + 8 * v46);
      if (!v47)
      {
        goto LABEL_69;
      }

      bundleId2 = [v47 bundleId];
      v49 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnDenyList:bundleId2 dndModeUUID:v45];
      if (v49)
      {
        break;
      }

      if (![(ATXNotificationInterruptionTuner *)self appWithBundleId:bundleId2 isRecommendedByAllowListModel:v13])
      {
        loga = v46;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v50 = [v168 objectForKeyedSubscript:bundleId2];
        v51 = [v50 countByEnumeratingWithState:&v203 objects:v235 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v204;
          do
          {
            for (k = 0; k != v52; ++k)
            {
              if (*v204 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v203 + 1) + 8 * k);
              if ([(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v55])
              {
                v56 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:3];
                v57 = objc_alloc(MEMORY[0x277CEB6F0]);
                v58 = objc_opt_new();
                v59 = objc_opt_new();
                uuid4 = [v55 uuid];
                v61 = [v57 initWithInterruptionManagerTuningSuggestion:v56 scope:1 entityIdentifier:bundleId2 uuid:v58 timestamp:v59 triggerNotificationUUID:uuid4];

                self = selfCopy;
                [v176 addObject:v61];
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v203 objects:v235 count:16];
          }

          while (v52);
          v45 = v175;
          v44 = v158;
          v13 = v161;
          v16 = v170;
          v43 = v165;
        }

        v46 = loga;
        goto LABEL_67;
      }

LABEL_68:

LABEL_69:
      v46 = (v46 + 1);
      if (v46 == v43)
      {
        v43 = [v16 countByEnumeratingWithState:&v207 objects:v236 count:16];
        if (!v43)
        {
          goto LABEL_76;
        }

        goto LABEL_48;
      }
    }

    v50 = __atxlog_handle_notification_management(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v230 = bundleId2;
      _os_log_debug_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEBUG, "Not suggesting app: %@ for deny list because it's already there", buf, 0xCu);
    }

LABEL_67:

    goto LABEL_68;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_178:

  notificationsCopy = v152;
LABEL_4:

  return v7;
}

void __96__ATXNotificationInterruptionTuner_activeNotificationSuggestionsForMode_candidateNotifications___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 bundleID];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

    if (!v4)
    {
      v5 = objc_opt_new();
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
    }

    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
    [v6 addObject:v13];
  }

  v7 = [objc_alloc(MEMORY[0x277CEB720]) initWithUserNotification:v13];
  v8 = [v7 contactEntity];
  v9 = [v8 cnContactId];

  if (v9)
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v9];

    if (!v10)
    {
      v11 = objc_opt_new();
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];
    }

    v12 = [*(a1 + 40) objectForKeyedSubscript:v9];
    [v12 addObject:v13];
  }
}

- (BOOL)validateNotificationUrgency:(id)urgency
{
  urgencyCopy = urgency;
  urgency = [urgencyCopy urgency];
  if (urgency && (urgency = [urgencyCopy urgency], urgency != 1))
  {
    v6 = 1;
  }

  else
  {
    v5 = __atxlog_handle_notification_management(urgency);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(ATXNotificationInterruptionTuner *)urgencyCopy validateNotificationUrgency:v5];
    }

    v6 = 0;
  }

  return v6;
}

- (id)dndModeUUID:(unint64_t)d
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient dndModeForATXMode:?];
  if (!v3)
  {
    v4 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = ATXModeToString();
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Unable to retrieve dndModeUUID for ATXMode: %@", &v7, 0xCu);
    }
  }

  return v3;
}

- (BOOL)appWithBundleId:(id)id isRecommendedByAllowListModel:(id)model
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bundleId = [v10 bundleId];
        if (bundleId)
        {
          v12 = bundleId;
          bundleId2 = [v10 bundleId];
          v14 = [bundleId2 isEqualToString:idCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (BOOL)appWithBundleId:(id)id isRecommendedByDenyListModel:(id)model
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bundleId = [v10 bundleId];
        if (bundleId)
        {
          v12 = bundleId;
          bundleId2 = [v10 bundleId];
          v14 = [bundleId2 isEqualToString:idCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByAllowListModel:(id)model
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        cnContactId = [v10 cnContactId];
        if (cnContactId)
        {
          v12 = cnContactId;
          cnContactId2 = [v10 cnContactId];
          v14 = [cnContactId2 isEqualToString:identifierCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByDenyListModel:(id)model
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        cnContactId = [v10 cnContactId];
        if (cnContactId)
        {
          v12 = cnContactId;
          cnContactId2 = [v10 cnContactId];
          v14 = [cnContactId2 isEqualToString:identifierCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (void)activeNotificationSuggestionsForMode:(os_log_t)log candidateNotifications:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to get the DND allow/silence list configuration for apps", &v1, 0xCu);
}

- (void)activeNotificationSuggestionsForMode:(uint64_t)a1 candidateNotifications:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unknown configuration type: %ld", &v2, 0xCu);
}

- (void)activeNotificationSuggestionsForMode:(os_log_t)log candidateNotifications:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to get the DND allow/silence list configuration for contacts", &v1, 0xCu);
}

- (void)validateNotificationUrgency:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleID];
  v4 = 136315394;
  v5 = "[ATXNotificationInterruptionTuner validateNotificationUrgency:]";
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Not sending suggestion for critical/time sensitive notification from app: %@", &v4, 0x16u);
}

@end