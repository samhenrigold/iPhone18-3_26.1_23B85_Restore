@interface HFMediaAccessoryUtility
+ (id)sharedInstance;
- (BOOL)checkIfAccessoryisPartofHomeAndHasLanguageSettings:(id)settings;
- (BOOL)checkIfLanguageSetupIsDoneForAccessory:(id)accessory;
- (BOOL)isHomePodRestartInitiated:(id)initiated;
- (BOOL)isHomePodRestartingCurrently:(id)currently;
- (HFMediaAccessoryUtility)init;
- (void)markUUIDReachableViaRapport:(id)rapport;
- (void)markUUIDUnreachableViaRapport:(id)rapport;
- (void)updateHomePodAccessoryRestartState:(unint64_t)state with:(id)with;
@end

@implementation HFMediaAccessoryUtility

+ (id)sharedInstance
{
  if (_MergedGlobals_276 != -1)
  {
    dispatch_once(&_MergedGlobals_276, &__block_literal_global_3_20);
  }

  v3 = qword_280E03328;

  return v3;
}

void __41__HFMediaAccessoryUtility_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFMediaAccessoryUtility);
  v1 = qword_280E03328;
  qword_280E03328 = v0;
}

- (HFMediaAccessoryUtility)init
{
  v8.receiver = self;
  v8.super_class = HFMediaAccessoryUtility;
  v2 = [(HFMediaAccessoryUtility *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uuidTrackingList = v2->_uuidTrackingList;
    v2->_uuidTrackingList = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    restartStateList = v2->_restartStateList;
    v2->_restartStateList = v5;
  }

  return v2;
}

- (BOOL)isHomePodRestartInitiated:(id)initiated
{
  initiatedCopy = initiated;
  restartStateList = [(HFMediaAccessoryUtility *)self restartStateList];
  v6 = [restartStateList objectForKeyedSubscript:initiatedCopy];

  LOBYTE(initiatedCopy) = [v6 integerValue] == 1;
  return initiatedCopy;
}

- (BOOL)isHomePodRestartingCurrently:(id)currently
{
  currentlyCopy = currently;
  if (!currentlyCopy)
  {
    goto LABEL_17;
  }

  uuidTrackingList = [(HFMediaAccessoryUtility *)self uuidTrackingList];
  if ([uuidTrackingList count])
  {
  }

  else
  {
    restartStateList = [(HFMediaAccessoryUtility *)self restartStateList];
    v7 = [restartStateList objectForKeyedSubscript:currentlyCopy];

    if (!v7)
    {
      goto LABEL_17;
    }
  }

  restartStateList2 = [(HFMediaAccessoryUtility *)self restartStateList];
  v9 = [restartStateList2 objectForKeyedSubscript:currentlyCopy];
  integerValue = [v9 integerValue];

  uuidTrackingList2 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
  if ([uuidTrackingList2 count])
  {
    uuidTrackingList3 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    v13 = [uuidTrackingList3 containsObject:currentlyCopy];

    if ((v13 & 1) == 0 && !integerValue)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  uuidTrackingList4 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
  v15 = [uuidTrackingList4 containsObject:currentlyCopy];

  if (!v15 || integerValue != 2)
  {
    uuidTrackingList5 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    if ([uuidTrackingList5 containsObject:currentlyCopy])
    {
    }

    else
    {

      if ((integerValue - 1) <= 1)
      {
        v16 = [(HFMediaAccessoryUtility *)self checkIfAccessoryisPartofHomeAndHasLanguageSettings:currentlyCopy];
        goto LABEL_18;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v16 = 1;
LABEL_18:

  return v16;
}

- (void)updateHomePodAccessoryRestartState:(unint64_t)state with:(id)with
{
  v31 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = HFLogForCategory(0);
  v8 = v7;
  if (withCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      uuidTrackingList = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      restartStateList = [(HFMediaAccessoryUtility *)self restartStateList];
      v21 = 136316162;
      v22 = "[HFMediaAccessoryUtility updateHomePodAccessoryRestartState:with:]";
      v23 = 2048;
      stateCopy2 = state;
      v25 = 2112;
      v26 = withCopy;
      v27 = 2112;
      v28 = uuidTrackingList;
      v29 = 2112;
      v30 = restartStateList;
      _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "%s Requesting RestartState %lu Device UUID %@ uuidTrackingList..%@ Restart Tracking List ..%@", &v21, 0x34u);
    }

    if (state == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      restartStateList2 = [(HFMediaAccessoryUtility *)self restartStateList];
      [restartStateList2 setObject:v8 forKeyedSubscript:withCopy];

      goto LABEL_19;
    }

    restartStateList3 = [(HFMediaAccessoryUtility *)self restartStateList];
    v11 = [restartStateList3 objectForKeyedSubscript:withCopy];
    integerValue = [v11 integerValue];

    if (state == 3)
    {
      uuidTrackingList2 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      if (![uuidTrackingList2 containsObject:withCopy])
      {
LABEL_16:

        goto LABEL_17;
      }

      if ((integerValue - 1) > 1)
      {
        goto LABEL_17;
      }
    }

    else if (state != 2 || (-[HFMediaAccessoryUtility uuidTrackingList](self, "uuidTrackingList"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:withCopy], v13, (v14 & 1) != 0) || integerValue != 1)
    {
LABEL_17:
      v8 = HFLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        uuidTrackingList3 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
        restartStateList4 = [(HFMediaAccessoryUtility *)self restartStateList];
        v21 = 136316162;
        v22 = "[HFMediaAccessoryUtility updateHomePodAccessoryRestartState:with:]";
        v23 = 2048;
        stateCopy2 = state;
        v25 = 2112;
        v26 = withCopy;
        v27 = 2112;
        v28 = uuidTrackingList3;
        v29 = 2112;
        v30 = restartStateList4;
        _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "%s After Requesting RestartState %lu Device UUID %@ uuidTrackingList..%@ Restart Tracking List ..%@", &v21, 0x34u);
      }

      goto LABEL_19;
    }

    uuidTrackingList2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    restartStateList5 = [(HFMediaAccessoryUtility *)self restartStateList];
    [restartStateList5 setObject:uuidTrackingList2 forKeyedSubscript:withCopy];

    goto LABEL_16;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315138;
    v22 = "[HFMediaAccessoryUtility updateHomePodAccessoryRestartState:with:]";
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%s UUID Parameter cant be NIL", &v21, 0xCu);
  }

LABEL_19:
}

- (BOOL)checkIfAccessoryisPartofHomeAndHasLanguageSettings:(id)settings
{
  v61 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = objc_msgSend_home(v4);
  hf_allHomePodProfileContainers = [v5 hf_allHomePodProfileContainers];

  v7 = [hf_allHomePodProfileContainers count];
  v8 = HFLogForCategory(0);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v56 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
      v57 = 2112;
      v58 = hf_allHomePodProfileContainers;
      v59 = 2112;
      v60 = settingsCopy;
      _os_log_debug_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEBUG, "%s HomePod Profiles %@, requesting uuid %@", buf, 0x20u);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v43 = hf_allHomePodProfileContainers;
    v10 = hf_allHomePodProfileContainers;
    v11 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v50;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          hf_backingAccessory = [v15 hf_backingAccessory];
          uniqueIdentifier = [hf_backingAccessory uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];
          v19 = [uUIDString isEqualToString:settingsCopy];

          if (v19)
          {
            v20 = HFLogForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              hf_backingAccessory2 = [v15 hf_backingAccessory];
              uniqueIdentifier2 = [hf_backingAccessory2 uniqueIdentifier];
              uUIDString2 = [uniqueIdentifier2 UUIDString];
              *buf = 136315650;
              v56 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
              v57 = 2112;
              v58 = uUIDString2;
              v59 = 2112;
              v60 = settingsCopy;
              _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "%s Media Profile Containers uuid %@ match against requesting uuid %@", buf, 0x20u);
            }

            hf_backingAccessory3 = [v15 hf_backingAccessory];
            v25 = [(HFMediaAccessoryUtility *)self checkIfLanguageSetupIsDoneForAccessory:hf_backingAccessory3];

            if (v25)
            {
              v35 = HFLogForCategory(0);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                hf_backingAccessory4 = [v15 hf_backingAccessory];
                uniqueIdentifier3 = [hf_backingAccessory4 uniqueIdentifier];
                uUIDString3 = [uniqueIdentifier3 UUIDString];
                *buf = 136315650;
                v56 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
                v57 = 2112;
                v58 = uUIDString3;
                v59 = 2112;
                v60 = settingsCopy;
                _os_log_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEFAULT, "%s Solo Media Profile Containers uuid %@ match against requesting uuid %@ and language settings is available", buf, 0x20u);
              }

              v34 = 1;
              hf_allHomePodProfileContainers = v43;
              v9 = v10;
              goto LABEL_34;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = v10;
    v26 = [v9 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v46;
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v9);
          }

          v30 = *(*(&v45 + 1) + 8 * j);
          uniqueIdentifier4 = [v30 uniqueIdentifier];
          uUIDString4 = [uniqueIdentifier4 UUIDString];
          v33 = [uUIDString4 isEqualToString:settingsCopy];

          if (v33)
          {
            v39 = HFLogForCategory(0);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              uniqueIdentifier5 = [v30 uniqueIdentifier];
              uUIDString5 = [uniqueIdentifier5 UUIDString];
              *buf = 136315650;
              v56 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
              v57 = 2112;
              v58 = uUIDString5;
              v59 = 2112;
              v60 = settingsCopy;
              _os_log_debug_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEBUG, "%s Grouped Media Profile Containers uuid %@ match against requesting uuid %@", buf, 0x20u);
            }

            v34 = 1;
            goto LABEL_33;
          }
        }

        v27 = [v9 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v34 = 0;
LABEL_33:
    hf_allHomePodProfileContainers = v43;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v56 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "%s Empty Profiles", buf, 0xCu);
    }

    v34 = 0;
  }

LABEL_34:

  return v34;
}

- (BOOL)checkIfLanguageSetupIsDoneForAccessory:(id)accessory
{
  v13 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  settings = [accessoryCopy settings];
  v5 = [settings hf_accessorySettingAtKeyPath:@"root.siri.language"];

  v6 = HFLogForCategory(0);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[HFMediaAccessoryUtility checkIfLanguageSetupIsDoneForAccessory:]";
      v11 = 2112;
      v12 = accessoryCopy;
      _os_log_debug_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEBUG, "%s Language Settings available %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[HFMediaAccessoryUtility checkIfLanguageSetupIsDoneForAccessory:]";
    v11 = 2112;
    v12 = accessoryCopy;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%s Language Settings NOT available %@", &v9, 0x16u);
  }

  return v5 != 0;
}

- (void)markUUIDReachableViaRapport:(id)rapport
{
  v16 = *MEMORY[0x277D85DE8];
  rapportCopy = rapport;
  v5 = HFLogForCategory(0);
  v6 = v5;
  if (rapportCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uuidTrackingList = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v12 = 138412546;
      v13 = uuidTrackingList;
      v14 = 2112;
      v15 = rapportCopy;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport prior to adding to list %@. UUID requested to be added..%@", &v12, 0x16u);
    }

    uuidTrackingList2 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    v8 = [uuidTrackingList2 containsObject:rapportCopy];

    if ((v8 & 1) == 0)
    {
      uuidTrackingList3 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      [uuidTrackingList3 addObject:rapportCopy];
    }

    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      uuidTrackingList4 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v12 = 138412546;
      v13 = uuidTrackingList4;
      v14 = 2112;
      v15 = rapportCopy;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport after adding to list %@. UUID requested to be added..%@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[HFMediaAccessoryUtility markUUIDReachableViaRapport:]";
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s UUID Parameter cant be NIL", &v12, 0xCu);
  }
}

- (void)markUUIDUnreachableViaRapport:(id)rapport
{
  v19 = *MEMORY[0x277D85DE8];
  rapportCopy = rapport;
  v5 = HFLogForCategory(0);
  v6 = v5;
  if (rapportCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uuidTrackingList = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v13 = 138412546;
      v14 = uuidTrackingList;
      v15 = 2112;
      v16 = rapportCopy;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport prior to removal from list %@. UUID requested to be removed..%@", &v13, 0x16u);
    }

    uuidTrackingList2 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    v8 = [uuidTrackingList2 containsObject:rapportCopy];

    if (v8)
    {
      uuidTrackingList3 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      [uuidTrackingList3 removeObject:rapportCopy];
    }

    else
    {
      uuidTrackingList3 = HFLogForCategory(0);
      if (os_log_type_enabled(uuidTrackingList3, OS_LOG_TYPE_ERROR))
      {
        uuidTrackingList4 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
        v13 = 136315650;
        v14 = "[HFMediaAccessoryUtility markUUIDUnreachableViaRapport:]";
        v15 = 2112;
        v16 = rapportCopy;
        v17 = 2112;
        v18 = uuidTrackingList4;
        _os_log_error_impl(&dword_20D9BF000, uuidTrackingList3, OS_LOG_TYPE_ERROR, "%s Trying to remove the UUID %@ of accessory which is not there in the list %@", &v13, 0x20u);
      }
    }

    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      uuidTrackingList5 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v13 = 138412546;
      v14 = uuidTrackingList5;
      v15 = 2112;
      v16 = rapportCopy;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport after removal from list %@. UUID requested to be removed..%@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[HFMediaAccessoryUtility markUUIDUnreachableViaRapport:]";
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s UUID Parameter cant be NIL", &v13, 0xCu);
  }
}

@end