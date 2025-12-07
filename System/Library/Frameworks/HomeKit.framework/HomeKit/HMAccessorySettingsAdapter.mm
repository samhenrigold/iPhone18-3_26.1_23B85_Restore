@interface HMAccessorySettingsAdapter
+ (BOOL)defaultSettingsContainsKeyPath:(id)path;
+ (BOOL)isKeyPathForBooleanSettingType:(id)type;
+ (BOOL)isKeyPathForConstrainedNumberSettingType:(id)type;
+ (BOOL)isKeyPathForTapAssistanceSelectionSettingType:(id)type;
+ (NSArray)languageKeyPaths;
+ (id)defaultSettingsAllKeyPaths;
+ (id)defaultSettingsConstraintsForKeyPath:(id)path;
+ (id)logCategory;
+ (id)scaleDownNumberSettingValue:(id)value;
+ (id)scaleUpNumberSettingValue:(id)value;
+ (id)tapAssistanceSelectionItemWithIndex:(int64_t)index;
+ (int64_t)itemIndexWithTapAssistanceSelectionItem:(id)item;
- (BOOL)BOOLeanSettingValueWithKeyPath:(id)path;
- (BOOL)_addOrUpdateLanguageSetting:(id)setting availableLanguagesSetting:(id)languagesSetting;
- (BOOL)_handleLanguageSettingUpdate:(id)update;
- (BOOL)isValidSelectionItemNumberConstraintValue:(id)value min:(id)min max:(id)max step:(id)step;
- (BOOL)settingReflected:(id)reflected;
- (BOOL)transformSelectionToInteger:(id)integer integerValue:(int64_t *)value;
- (BOOL)updateBooleanSettingWithKeyPath:(id)path value:(BOOL)value;
- (BOOL)updateNumberSettingWithKeyPath:(id)path value:(id)value;
- (BOOL)updateTapAssistanceSelectionSettingWithKeyPath:(id)path value:(id)value;
- (HMAccessorySettingsAdapter)initWithHomeIdentifier:(id)identifier dataSource:(id)source controller:(id)controller workQueue:(id)queue settingsContainer:(id)container containerIdentifier:(id)containerIdentifier containerType:(int64_t)type settingsControl:(id)self0 context:(id)self1;
- (HMAccessorySettingsAdapterDelegate)delegate;
- (HMAccessorySettingsContainerInternal)settingsContainer;
- (HMControllable)settingsControl;
- (id)_findSettingInGroupForKeyPath:(id)path group:(id)group;
- (id)_transformAccessorySettingToLanguageSetting:(id)setting;
- (id)accessoryLanguageSetting;
- (id)accessoryNumberSettingWithKeyPath:(id)path;
- (id)accessorySettingWithKeyPath:(id)path;
- (id)createKeyPathArrayWithKeyPath:(id)path;
- (id)createTapAssistanceSelectionSettingFromNumberConstraint:(id)constraint properties:(unint64_t)properties value:(id)value min:(id)min max:(id)max step:(id)step;
- (id)createTapAssistanceSelections;
- (id)findOrAddAccessorySettingGroupWithKeyPath:(id)path;
- (id)groupKeyArrayFromKeyPath:(id)path;
- (id)languageSelectionItemFromValue:(id)value;
- (id)legacyLanguageSettingFromSelectedSetting:(id)setting selections:(id)selections settingsReflected:(BOOL)reflected;
- (id)logIdentifier;
- (id)numberSettingValueWithKeyPath:(id)path;
- (id)settingKeyFromKeyPath:(id)path;
- (id)tapAssistanceSelectionSetting:(id)setting;
- (id)tapAssistanceSelectionSettingValue:(id)value;
- (id)transformIntegerToSelection:(int64_t)selection;
- (void)_configureForAccessoryWithCompletionHandler:(id)handler;
- (void)_configureForMediaSystemWithCompletionHandler:(id)handler;
- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)configureWithCompletionHandler:(id)handler;
- (void)createRootSettingGroup;
- (void)unconfigure;
- (void)updateSettingsReflected:(BOOL)reflected;
- (void)updateWithKeyPath:(id)path value:(id)value completionHandler:(id)handler;
@end

@implementation HMAccessorySettingsAdapter

- (HMControllable)settingsControl
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsControl);

  return WeakRetained;
}

- (HMAccessorySettingsContainerInternal)settingsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsContainer);

  return WeakRetained;
}

- (HMAccessorySettingsAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v14 = *MEMORY[0x1E69E9840];
  containerType = [(HMAccessorySettingsAdapter *)self containerType];
  if (containerType == 2)
  {
    settingsContainer = [(HMAccessorySettingsAdapter *)self settingsContainer];
    containerUUID = [settingsContainer containerUUID];
    uUIDString = [containerUUID UUIDString];

    goto LABEL_5;
  }

  if (containerType == 1)
  {
    settingsContainer = [(HMAccessorySettingsAdapter *)self settingsContainerIdentifier];
    uUIDString = [settingsContainer UUIDString];
LABEL_5:

    goto LABEL_9;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unknown settings container type", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  uUIDString = @"wrong-log-identifier";
LABEL_9:

  return uUIDString;
}

- (BOOL)settingReflected:(id)reflected
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:reflected];
  v4 = v3;
  if (v3)
  {
    isReflected = [v3 isReflected];
  }

  else
  {
    isReflected = 0;
  }

  return isReflected;
}

- (id)tapAssistanceSelectionSettingValue:(id)value
{
  v3 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelectionSetting:value];
  value = [v3 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = value;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)tapAssistanceSelectionSetting:(id)setting
{
  settingCopy = setting;
  if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:settingCopy])
  {
    v5 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:settingCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)numberSettingValueWithKeyPath:(id)path
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    value = [v3 value];
  }

  else
  {
    value = &unk_1F0EFD070;
  }

  return value;
}

- (id)accessoryLanguageSetting
{
  selectedLanguageSettingKeyPath = [objc_opt_class() selectedLanguageSettingKeyPath];
  v4 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:selectedLanguageSettingKeyPath];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)BOOLeanSettingValueWithKeyPath:(id)path
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    value = [v3 value];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v8 = [value isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)transformSelectionToInteger:(id)integer integerValue:(int64_t *)value
{
  integerCopy = integer;
  tapAssistanceSelections = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];

  if (tapAssistanceSelections)
  {
    tapAssistanceSelections2 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__HMAccessorySettingsAdapter_transformSelectionToInteger_integerValue___block_invoke;
    v11[3] = &unk_1E7549288;
    v12 = integerCopy;
    *value = [tapAssistanceSelections2 indexOfObjectPassingTest:v11];

    v9 = *value != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __71__HMAccessorySettingsAdapter_transformSelectionToInteger_integerValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (id)transformIntegerToSelection:(int64_t)selection
{
  tapAssistanceSelections = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];

  v6 = 0;
  if ((selection & 0x8000000000000000) == 0 && tapAssistanceSelections)
  {
    tapAssistanceSelections2 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
    v8 = [tapAssistanceSelections2 count];

    if (v8 <= selection)
    {
      v6 = 0;
    }

    else
    {
      tapAssistanceSelections3 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
      v6 = [tapAssistanceSelections3 objectAtIndexedSubscript:selection];
    }
  }

  return v6;
}

- (id)createTapAssistanceSelections
{
  tapAssistanceSelectionTitles = [objc_opt_class() tapAssistanceSelectionTitles];
  v3 = [tapAssistanceSelectionTitles na_map:&__block_literal_global_76];

  return v3;
}

HMAccessorySelectionSettingItem *__59__HMAccessorySettingsAdapter_createTapAssistanceSelections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMAccessorySelectionSettingItem alloc] initWithTitle:v2];

  return v3;
}

- (id)languageSelectionItemFromValue:(id)value
{
  valueCopy = value;
  inputLanguageCode = [valueCopy inputLanguageCode];
  outputVoiceLanguageCode = [valueCopy outputVoiceLanguageCode];
  outputVoiceGenderCode = [valueCopy outputVoiceGenderCode];
  v7 = [&stru_1F0E92498 stringByAppendingFormat:@"%@, %@, %@, %@", inputLanguageCode, outputVoiceLanguageCode, outputVoiceGenderCode, @"d"];

  voiceName = [valueCopy voiceName];

  if (voiceName)
  {
    voiceName2 = [valueCopy voiceName];
    v10 = [v7 stringByAppendingFormat:@", %@", voiceName2];

    v7 = v10;
  }

  v11 = [[HMAccessorySelectionSettingItem alloc] initWithTitle:v7];

  return v11;
}

- (id)legacyLanguageSettingFromSelectedSetting:(id)setting selections:(id)selections settingsReflected:(BOOL)reflected
{
  reflectedCopy = reflected;
  selectionsCopy = selections;
  settingCopy = setting;
  selectedLanguageSettingKeyPath = [objc_opt_class() selectedLanguageSettingKeyPath];
  v11 = [(HMAccessorySettingsAdapter *)self settingKeyFromKeyPath:selectedLanguageSettingKeyPath];

  languageValues = [selectionsCopy languageValues];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__HMAccessorySettingsAdapter_legacyLanguageSettingFromSelectedSetting_selections_settingsReflected___block_invoke;
  v18[3] = &unk_1E7549240;
  v18[4] = self;
  v13 = [languageValues na_map:v18];

  languageValue = [settingCopy languageValue];

  v15 = [(HMAccessorySettingsAdapter *)self languageSelectionItemFromValue:languageValue];

  v16 = [[HMAccessorySelectionSetting alloc] initWithKey:v11 properties:3 value:v15 items:v13];
  [(HMAccessorySetting *)v16 updateReflected:reflectedCopy];

  return v16;
}

- (BOOL)_addOrUpdateLanguageSetting:(id)setting availableLanguagesSetting:(id)languagesSetting
{
  v45 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  languagesSettingCopy = languagesSetting;
  selectedLanguageSettingKeyPath = [objc_opt_class() selectedLanguageSettingKeyPath];
  if (settingCopy && languagesSettingCopy)
  {
    rootGroup = [(HMAccessorySettingsAdapter *)self rootGroup];
    v10 = [(HMAccessorySettingsAdapter *)self _findSettingInGroupForKeyPath:selectedLanguageSettingKeyPath group:rootGroup];

    v36 = [(HMAccessorySettingsAdapter *)self groupKeyArrayFromKeyPath:selectedLanguageSettingKeyPath];
    v37 = [(HMAccessorySettingsAdapter *)self findOrAddAccessorySettingGroupWithKeyPath:?];
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = v13 == 0;
    v15 = v11;
    if (!v13)
    {
      v16 = [(HMAccessorySettingsAdapter *)self legacyLanguageSettingFromSelectedSetting:settingCopy selections:languagesSettingCopy settingsReflected:[(HMAccessorySettingsAdapter *)self settingsReflected]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v15 = v17;

      internal = [v15 internal];
      accessorySettings = [(HMAccessorySettingsAdapter *)self accessorySettings];
      accessoryContext = [(HMAccessorySettingsAdapter *)self accessoryContext];
      [internal configureWithAccessorySettings:accessorySettings context:accessoryContext shouldHandleUpdatedValue:0];

      [v37 addSetting:v15];
    }

    v21 = [(HMAccessorySettingsAdapter *)self legacyLanguageSettingFromSelectedSetting:settingCopy selections:languagesSettingCopy settingsReflected:[(HMAccessorySettingsAdapter *)self settingsReflected]];
    value = [v15 value];
    value2 = [v21 value];
    v24 = [value isEqual:value2];

    if ((v24 & 1) == 0)
    {
      value3 = [v21 value];
      [v15 updateValue:value3];

      v14 = 1;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      selectedLanguageSetting = [(HMAccessorySettingsAdapter *)selfCopy selectedLanguageSetting];
      v31 = MEMORY[0x1E696AD98];
      availableLanguageSetting = [(HMAccessorySettingsAdapter *)selfCopy availableLanguageSetting];
      [availableLanguageSetting languageValues];
      v33 = v38 = v26;
      v34 = [v31 numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
      *buf = 138543874;
      v40 = v29;
      v41 = 2112;
      v42 = selectedLanguageSetting;
      v43 = 2112;
      v44 = v34;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Missing selected language: %@ or available language settings (count): %@", buf, 0x20u);

      v26 = v38;
    }

    objc_autoreleasePoolPop(v26);
    v14 = 0;
  }

  return v14;
}

- (id)_findSettingInGroupForKeyPath:(id)path group:(id)group
{
  pathCopy = path;
  groupCopy = group;
  v8 = groupCopy;
  if (groupCopy)
  {
    settings = [groupCopy settings];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__HMAccessorySettingsAdapter__findSettingInGroupForKeyPath_group___block_invoke;
    v18[3] = &unk_1E754B680;
    v10 = pathCopy;
    v19 = v10;
    v11 = [settings na_firstObjectPassingTest:v18];

    if (v11)
    {
      firstObject = v11;
    }

    else
    {
      groups = [v8 groups];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__HMAccessorySettingsAdapter__findSettingInGroupForKeyPath_group___block_invoke_2;
      v16[3] = &unk_1E7549218;
      v16[4] = self;
      v17 = v10;
      v14 = [groups na_map:v16];

      if ([v14 count])
      {
        firstObject = [v14 firstObject];
      }

      else
      {
        firstObject = 0;
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

uint64_t __66__HMAccessorySettingsAdapter__findSettingInGroupForKeyPath_group___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_handleLanguageSettingUpdate:(id)update
{
  v32 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  keyPath = [updateCopy keyPath];
  selectedLanguageSettingKeyPath = [objc_opt_class() selectedLanguageSettingKeyPath];
  v7 = [keyPath isEqual:selectedLanguageSettingKeyPath];

  if (v7)
  {
    v8 = updateCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v10)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v14;
        v28 = 2112;
        v29 = 0;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected setting type for setting = %@, cast from object:%@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }

    [(HMAccessorySettingsAdapter *)self setSelectedLanguageSetting:v10];
LABEL_16:

    goto LABEL_17;
  }

  keyPath2 = [updateCopy keyPath];
  availableLanguagesKeyPath = [objc_opt_class() availableLanguagesKeyPath];
  v17 = [keyPath2 isEqual:availableLanguagesKeyPath];

  if (v17)
  {
    v10 = updateCopy;
    if (!v10)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v21;
        v28 = 2112;
        v29 = 0;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unexpected setting type for setting = %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    [(HMAccessorySettingsAdapter *)self setAvailableLanguageSetting:v10];
    goto LABEL_16;
  }

LABEL_17:
  selectedLanguageSetting = [(HMAccessorySettingsAdapter *)self selectedLanguageSetting];
  availableLanguageSetting = [(HMAccessorySettingsAdapter *)self availableLanguageSetting];
  v24 = [(HMAccessorySettingsAdapter *)self _addOrUpdateLanguageSetting:selectedLanguageSetting availableLanguagesSetting:availableLanguageSetting];

  return v24;
}

- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  identifierCopy = identifier;
  settingsCopy = settings;
  workQueue = [(HMAccessorySettingsAdapter *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__HMAccessorySettingsAdapter_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke;
  block[3] = &unk_1E754E5E8;
  v13 = settingsCopy;
  selfCopy = self;
  v15 = identifierCopy;
  v10 = identifierCopy;
  v11 = settingsCopy;
  dispatch_async(workQueue, block);
}

void __119__HMAccessorySettingsAdapter_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) hmf_isEmpty])
  {
    v6 = [*(a1 + 40) accessorySettings];
    v7 = [v6 settingsContainerInternal];

    if (v7)
    {
      if ([*(a1 + 40) containerType] == 1)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 40);
        v10 = HMFGetOSLogHandle();
        v52 = v7;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v12 = *(a1 + 48);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
          *buf = 138543874;
          v64 = v11;
          v65 = 2112;
          v66 = v12;
          v67 = 2112;
          v68 = v13;
          v14 = "%{public}@Adapter did receive setting update: accessory: %@ settings (count): %@";
LABEL_14:
          _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, v14, buf, 0x20u);

          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v17 = [*(a1 + 40) containerType];
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      v10 = v18;
      if (v17 == 2)
      {
        v52 = v7;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v19 = *(a1 + 48);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
          *buf = 138543874;
          v64 = v11;
          v65 = 2112;
          v66 = v19;
          v67 = 2112;
          v68 = v13;
          v14 = "%{public}@Adapter did receive setting update: media system: %@ settings (count): %@";
          goto LABEL_14;
        }

LABEL_15:

        objc_autoreleasePoolPop(v8);
        v55 = [MEMORY[0x1E695DF70] array];
        v54 = [*(a1 + 40) delegate];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = *(a1 + 32);
        v57 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v57)
        {
          v20 = *v59;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v59 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v58 + 1) + 8 * i);
              v23 = [v22 keyPath];
              if (([*(a1 + 40) didReceiveFirstUpdateEvent] & 1) == 0)
              {
                v24 = [*(a1 + 40) accessorySettings];

                if (v24)
                {
                  v25 = objc_autoreleasePoolPush();
                  v26 = *(a1 + 40);
                  v27 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    v28 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v64 = v28;
                    _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Received first update event, notifying delegate we have a valid settings tree.", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v25);
                  v29 = *(a1 + 40);
                  v30 = [v29 accessorySettings];
                  [v54 adapter:v29 didUpdateSettings:v30];

                  [*(a1 + 40) setDidReceiveFirstUpdateEvent:1];
                }
              }

              v31 = v22;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;
              }

              else
              {
                v32 = 0;
              }

              v33 = v32;

              if (v33)
              {
                if ([*(a1 + 40) updateBooleanSettingWithKeyPath:v23 value:{objc_msgSend(v33, "BOOLValue")}])
                {
                  [v55 addObject:v23];
                }
              }

              else
              {
                v34 = v31;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 0;
                }

                v36 = v35;

                if (v36)
                {
                  v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v36, "integerValue")}];
                  v38 = [objc_opt_class() scaleDownNumberSettingValue:v37];
                  if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:v23])
                  {
                    v39 = [*(a1 + 40) transformIntegerToSelection:{objc_msgSend(v38, "integerValue")}];
                    if (v39 && [*(a1 + 40) updateTapAssistanceSelectionSettingWithKeyPath:v23 value:v39])
                    {
                      [v55 addObject:v23];
                    }
                  }

                  else if ([*(a1 + 40) updateNumberSettingWithKeyPath:v23 value:v38])
                  {
                    [v55 addObject:v23];
                  }
                }

                else
                {
                  v40 = [objc_opt_class() languageKeyPaths];
                  v41 = [v40 containsObject:v23];

                  if (v41)
                  {
                    if ([*(a1 + 40) _handleLanguageSettingUpdate:v34])
                    {
                      [v55 addObject:v23];
                    }
                  }

                  else
                  {
                    v42 = objc_autoreleasePoolPush();
                    v43 = *(a1 + 40);
                    v44 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v45 = v53 = v42;
                      v46 = [v34 keyPath];
                      *buf = 138543618;
                      v64 = v45;
                      v65 = 2112;
                      v66 = v46;
                      _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_ERROR, "%{public}@The setting object for key path: %@ is not supported in the adapter.", buf, 0x16u);

                      v42 = v53;
                    }

                    objc_autoreleasePoolPop(v42);
                  }
                }
              }
            }

            v57 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
          }

          while (v57);
        }

        v7 = v52;
        if ([v55 count])
        {
          v47 = objc_autoreleasePoolPush();
          v48 = *(a1 + 40);
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543618;
            v64 = v50;
            v65 = 2112;
            v66 = v55;
            _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_INFO, "%{public}@Adapter did update for settings %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v47);
          [v54 adapter:*(a1 + 40) didUpdateSettingKeyPaths:v55];
        }

        goto LABEL_60;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v51;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown settings container type this adapter", buf, 0xCu);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 40) accessorySettings];
        *buf = 138543618;
        v64 = v15;
        v65 = 2112;
        v66 = v16;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@settings container not found, not processing. settings: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v8);
LABEL_60:

    return;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v64 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Event delegate call from dataSource has empty settings array.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)updateTapAssistanceSelectionSettingWithKeyPath:(id)path value:(id)value
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  valueCopy = value;
  v8 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelectionSetting:pathCopy];
  v9 = v8;
  if (v8)
  {
    value = [v8 value];
    [v9 updateValue:valueCopy];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      keyPath = [v9 keyPath];
      value2 = [v9 value];
      v20 = 138544130;
      v21 = v14;
      v22 = 2112;
      v23 = keyPath;
      v24 = 2112;
      v25 = value;
      v26 = 2112;
      v27 = value2;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully updated the tap assistance selection setting: %@, old value: %@, new value: %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    value3 = [v9 value];
    v18 = [value isEqual:value3] ^ 1;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)updateNumberSettingWithKeyPath:(id)path value:(id)value
{
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  valueCopy = value;
  v8 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    value = [v10 value];
    v12 = valueCopy;
    [v10 updateValue:v12];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      [v8 keyPath];
      v17 = v21 = v13;
      [v10 value];
      v18 = v22 = valueCopy;
      *buf = 138544130;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = value;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully updated the number setting: %@, old value: %@, new value: %@", buf, 0x2Au);

      valueCopy = v22;
      v13 = v21;
    }

    objc_autoreleasePoolPop(v13);
    v19 = [value isEqual:v12] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (BOOL)updateBooleanSettingWithKeyPath:(id)path value:(BOOL)value
{
  valueCopy = value;
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    value = [v9 value];
    v11 = &unk_1F0EFCFE0;
    if (valueCopy)
    {
      v11 = &unk_1F0EFCFC8;
    }

    v12 = v11;
    [v9 updateValue:v12];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      keyPath = [v7 keyPath];
      [v9 value];
      v18 = v21 = v13;
      *buf = 138544130;
      v23 = v16;
      v24 = 2112;
      v25 = keyPath;
      v26 = 2112;
      v27 = value;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully updated the BOOLean setting: %@, old value: %@, new value: %@", buf, 0x2Au);

      v13 = v21;
    }

    objc_autoreleasePoolPop(v13);
    v19 = [value isEqual:v12] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (id)accessorySettingWithKeyPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [(HMAccessorySettingsAdapter *)self groupKeyArrayFromKeyPath:pathCopy];
  if ([v5 hmf_isEmpty])
  {
    v6 = 0;
  }

  else
  {
    rootGroup = [(HMAccessorySettingsAdapter *)self rootGroup];
    keyPath = [rootGroup keyPath];
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v9 isEqual:keyPath];

    if (v10)
    {
      v24 = pathCopy;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        v15 = 1;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ((v15 & 1) == 0)
            {
              v17 = [(HMAccessorySettingsAdapter *)self appendKeyPath:keyPath withNextKey:*(*(&v25 + 1) + 8 * i)];

              v18 = [rootGroup accessorySettingGroupWithKeyPath:v17];

              if (!v18)
              {
                v19 = objc_autoreleasePoolPush();
                selfCopy = self;
                v21 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v30 = v22;
                  v31 = 2112;
                  v32 = v17;
                  _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot find group with the key path: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v19);
                rootGroup = 0;
                v6 = 0;
                pathCopy = v24;
                goto LABEL_20;
              }

              keyPath = v17;
              rootGroup = v18;
            }

            v15 = 0;
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          v15 = 0;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      pathCopy = v24;
      v6 = [rootGroup accessorySettingWithKeyPath:v24];
    }

    else
    {
      v6 = 0;
    }

    v17 = keyPath;
LABEL_20:
  }

  return v6;
}

- (id)accessoryNumberSettingWithKeyPath:(id)path
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)isValidSelectionItemNumberConstraintValue:(id)value min:(id)min max:(id)max step:(id)step
{
  valueCopy = value;
  minCopy = min;
  maxCopy = max;
  stepCopy = step;
  v15 = ![minCopy integerValue] && objc_msgSend(maxCopy, "integerValue") == 2 && (v13 = objc_msgSend(valueCopy, "integerValue"), v13 >= objc_msgSend(minCopy, "integerValue")) && (v14 = objc_msgSend(valueCopy, "integerValue"), v14 <= objc_msgSend(maxCopy, "integerValue")) && objc_msgSend(stepCopy, "integerValue") == 1;

  return v15;
}

- (id)createTapAssistanceSelectionSettingFromNumberConstraint:(id)constraint properties:(unint64_t)properties value:(id)value min:(id)min max:(id)max step:(id)step
{
  v36 = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  valueCopy = value;
  minCopy = min;
  maxCopy = max;
  stepCopy = step;
  if ([(HMAccessorySettingsAdapter *)self isValidSelectionItemNumberConstraintValue:valueCopy min:minCopy max:maxCopy step:stepCopy])
  {
    tapAssistanceSelections = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
    if (tapAssistanceSelections)
    {
      v20 = tapAssistanceSelections;
      tapAssistanceSelections2 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
      v22 = [tapAssistanceSelections2 count];

      if (v22 == 3)
      {
        tapAssistanceSelections3 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
        v24 = [tapAssistanceSelections3 objectAtIndexedSubscript:{objc_msgSend(valueCopy, "integerValue")}];

        v25 = [HMAccessorySelectionSetting alloc];
        tapAssistanceSelections4 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
        v27 = [(HMAccessorySelectionSetting *)v25 initWithKey:constraintCopy properties:properties value:v24 items:tapAssistanceSelections4];

        goto LABEL_11;
      }
    }

    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v31;
      v32 = "%{public}@Tab assistance selections array is nil or the number selection items is not 3";
      goto LABEL_9;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v31;
      v32 = "%{public}@Invalid number constraints for tab assistance selection item";
LABEL_9:
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, v32, &v34, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v28);
  v27 = 0;
LABEL_11:

  return v27;
}

- (void)createRootSettingGroup
{
  selfCopy = self;
  v71 = *MEMORY[0x1E69E9840];
  rootGroup = [(HMAccessorySettingsAdapter *)self rootGroup];

  if (rootGroup)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = selfCopy;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Warning: Settings adapter root group has already been constructed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    return;
  }

  createTapAssistanceSelections = [(HMAccessorySettingsAdapter *)selfCopy createTapAssistanceSelections];
  [(HMAccessorySettingsAdapter *)selfCopy setTapAssistanceSelections:createTapAssistanceSelections];

  defaultSettings = [objc_opt_class() defaultSettings];
  allKeys = [defaultSettings allKeys];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = allKeys;
  v58 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (!v58)
  {
    goto LABEL_24;
  }

  v57 = *v61;
  *&v11 = 138543618;
  v51 = v11;
  do
  {
    for (i = 0; i != v58; ++i)
    {
      if (*v61 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v60 + 1) + 8 * i);
      v14 = [(HMAccessorySettingsAdapter *)selfCopy groupKeyArrayFromKeyPath:v13, v51];
      v59 = [(HMAccessorySettingsAdapter *)selfCopy findOrAddAccessorySettingGroupWithKeyPath:v14];
      v15 = [(HMAccessorySettingsAdapter *)selfCopy settingKeyFromKeyPath:v13];
      defaultSettings2 = [objc_opt_class() defaultSettings];
      v17 = [defaultSettings2 hmf_arrayForKey:v13];

      if ([v17 count] == 6)
      {
        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [v17 objectAtIndexedSubscript:1];
        v20 = [v17 objectAtIndexedSubscript:2];
        v21 = [v17 objectAtIndexedSubscript:3];
        v55 = v20;
        v56 = v15;
        v54 = v21;
        if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:v13])
        {
          v22 = [(HMAccessorySettingsAdapter *)selfCopy createTapAssistanceSelectionSettingFromNumberConstraint:v15 properties:3 value:v21 min:v18 max:v19 step:v20];
          if (!v22)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = selfCopy;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v52 = HMFGetLogIdentifier();
              *buf = v51;
              v65 = v52;
              v66 = 2112;
              v67 = v13;
              _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Error in creating setting for keypath %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v23);
            v26 = v59;
            goto LABEL_21;
          }
        }

        else
        {
          v22 = [[HMAccessoryNumberSetting alloc] initWithKey:v15 properties:3 value:v21 minimumValue:v18 maximumValue:v19 stepValue:v20];
        }

        internal = [(HMAccessorySetting *)v22 internal];
        accessorySettings = [(HMAccessorySettingsAdapter *)selfCopy accessorySettings];
        [(HMAccessorySettingsAdapter *)selfCopy accessoryContext];
        v34 = v17;
        v35 = v14;
        v36 = selfCopy;
        v37 = v18;
        v39 = v38 = v19;
        [internal configureWithAccessorySettings:accessorySettings context:v39 shouldHandleUpdatedValue:0];

        v19 = v38;
        v18 = v37;
        selfCopy = v36;
        v14 = v35;
        v17 = v34;

        v26 = v59;
        [v59 addSetting:v22];

LABEL_21:
        v15 = v56;
        goto LABEL_22;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v31 = v30 = v15;
        *buf = 138543362;
        v65 = v31;
        _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Value array size mismatch", buf, 0xCu);

        v15 = v30;
      }

      objc_autoreleasePoolPop(v27);
      v26 = v59;
LABEL_22:
    }

    v58 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  }

  while (v58);
LABEL_24:

  if ([(HMAccessorySettingsAdapter *)selfCopy containerType]== 1)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = selfCopy;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      homeIdentifier = [(HMAccessorySettingsAdapter *)v41 homeIdentifier];
      settingsContainerIdentifier = [(HMAccessorySettingsAdapter *)v41 settingsContainerIdentifier];
      *buf = 138543874;
      v65 = v43;
      v66 = 2112;
      v67 = homeIdentifier;
      v68 = 2112;
      v69 = settingsContainerIdentifier;
      v46 = "%{public}@Root group created for home: %@, accessory: %@";
      goto LABEL_30;
    }
  }

  else
  {
    containerType = [(HMAccessorySettingsAdapter *)selfCopy containerType];
    v40 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    v42 = v49;
    if (containerType == 2)
    {
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      v43 = HMFGetLogIdentifier();
      homeIdentifier = [(HMAccessorySettingsAdapter *)v48 homeIdentifier];
      settingsContainerIdentifier = [(HMAccessorySettingsAdapter *)v48 settingsContainerIdentifier];
      *buf = 138543874;
      v65 = v43;
      v66 = 2112;
      v67 = homeIdentifier;
      v68 = 2112;
      v69 = settingsContainerIdentifier;
      v46 = "%{public}@Root group created for home: %@, media system: %@";
LABEL_30:
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, v46, buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v43 = HMFGetLogIdentifier();
      homeIdentifier2 = [(HMAccessorySettingsAdapter *)v48 homeIdentifier];
      *buf = 138543618;
      v65 = v43;
      v66 = 2112;
      v67 = homeIdentifier2;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Error in root group creation for home: %@", buf, 0x16u);
    }
  }

LABEL_34:

  objc_autoreleasePoolPop(v40);
}

- (id)findOrAddAccessorySettingGroupWithKeyPath:(id)path
{
  v53 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  rootGroup = [(HMAccessorySettingsAdapter *)self rootGroup];
  if (rootGroup)
  {
  }

  else
  {
    accessorySettings = [(HMAccessorySettingsAdapter *)self accessorySettings];

    if (!accessorySettings)
    {
      v7 = [HMAccessorySettingGroup alloc];
      firstObject = [pathCopy firstObject];
      v9 = [(HMAccessorySettingGroup *)v7 initWithKeyPath:firstObject];
      [(HMAccessorySettingsAdapter *)self setRootGroup:v9];

      v10 = [HMAccessorySettings alloc];
      settingsContainer = [(HMAccessorySettingsAdapter *)self settingsContainer];
      settingsControl = [(HMAccessorySettingsAdapter *)self settingsControl];
      rootGroup2 = [(HMAccessorySettingsAdapter *)self rootGroup];
      v14 = [(HMAccessorySettings *)v10 initWithSettingsContainer:settingsContainer settingsControl:settingsControl rootGroup:rootGroup2];
      [(HMAccessorySettingsAdapter *)self setAccessorySettings:v14];

      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v18;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Creating RootGroup and AccessorySettings for the adapter", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  rootGroup3 = [(HMAccessorySettingsAdapter *)self rootGroup];
  if (rootGroup3)
  {
    v20 = rootGroup3;
    accessorySettings2 = [(HMAccessorySettingsAdapter *)self accessorySettings];

    if (accessorySettings2)
    {
      rootGroup4 = [(HMAccessorySettingsAdapter *)self rootGroup];
      keyPath = [rootGroup4 keyPath];
      if ([pathCopy hmf_isEmpty])
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v52 = v27;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Group key array cannot be empty.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
      }

      else
      {
        v33 = [pathCopy objectAtIndexedSubscript:0];
        v34 = [keyPath isEqual:v33];

        if (v34)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = pathCopy;
          v35 = pathCopy;
          v36 = [v35 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v47;
            v39 = 1;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v47 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                if ((v39 & 1) == 0)
                {
                  v41 = *(*(&v46 + 1) + 8 * i);
                  v42 = [(HMAccessorySettingsAdapter *)self appendKeyPath:keyPath withNextKey:v41];

                  v43 = [rootGroup4 accessorySettingGroupWithKeyPath:v42];
                  if (!v43)
                  {
                    v43 = [[HMAccessorySettingGroup alloc] initWithKeyPath:v41];
                    [rootGroup4 addGroup:v43];
                  }

                  rootGroup4 = v43;
                  keyPath = v42;
                }

                v39 = 0;
              }

              v37 = [v35 countByEnumeratingWithState:&v46 objects:v50 count:16];
              v39 = 0;
            }

            while (v37);
          }

          rootGroup4 = rootGroup4;
          v32 = rootGroup4;
          pathCopy = v45;
          goto LABEL_30;
        }
      }

      v32 = 0;
LABEL_30:

      goto LABEL_31;
    }
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v31;
    _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Root group or accessory settings object is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = 0;
LABEL_31:

  return v32;
}

- (id)settingKeyFromKeyPath:(id)path
{
  v3 = [(HMAccessorySettingsAdapter *)self createKeyPathArrayWithKeyPath:path];
  if ([v3 hmf_isEmpty])
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [v3 lastObject];
  }

  return lastObject;
}

- (id)groupKeyArrayFromKeyPath:(id)path
{
  v3 = [(HMAccessorySettingsAdapter *)self createKeyPathArrayWithKeyPath:path];
  v4 = [v3 mutableCopy];
  if ([v4 hmf_isEmpty])
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    [v4 removeLastObject];
    v5 = v4;
  }

  return v5;
}

- (id)createKeyPathArrayWithKeyPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy componentsSeparatedByString:@"."];
  if ([v5 count] > 1)
  {
    v10 = v5;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = pathCopy;
      v16 = 2048;
      v17 = [v5 count];
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@The keypath %@ needs at least 2 keys, but only has %lu component.", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (void)updateSettingsReflected:(BOOL)reflected
{
  workQueue = [(HMAccessorySettingsAdapter *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__HMAccessorySettingsAdapter_updateSettingsReflected___block_invoke;
  v6[3] = &unk_1E7549C80;
  v6[4] = self;
  reflectedCopy = reflected;
  dispatch_async(workQueue, v6);
}

void __54__HMAccessorySettingsAdapter_updateSettingsReflected___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() defaultSettings];
  v42 = v2;
  if (v2)
  {
    v3 = v2;
    [v2 allKeys];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v4 = v50 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
    v45 = v4;
    if (v5)
    {
      v7 = v5;
      v8 = *v48;
      *&v6 = 138543874;
      v41 = v6;
      v44 = *v48;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v48 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v47 + 1) + 8 * i);
          v11 = [v3 objectForKey:{v10, v41}];
          if (v11)
          {
            v12 = [*(a1 + 32) accessorySettingWithKeyPath:v10];
            v13 = [v11 objectAtIndexedSubscript:5];
            v14 = v13;
            if (v12)
            {
              v15 = v13 == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15 && [v13 BOOLValue])
            {
              context = objc_autoreleasePoolPush();
              v16 = *(a1 + 32);
              HMFGetOSLogHandle();
              v18 = v17 = a1;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v43 = HMFGetLogIdentifier();
                v19 = HMFBooleanToString();
                *buf = v41;
                v52 = v43;
                v53 = 2112;
                v54 = v10;
                v55 = 2112;
                v56 = v19;
                v20 = v19;
                _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating setting %@ reflected to: %@", buf, 0x20u);

                v3 = v42;
              }

              objc_autoreleasePoolPop(context);
              [v12 updateReflected:*(v17 + 40)];
              a1 = v17;
              v8 = v44;
              v4 = v45;
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v7);
    }

    v21 = *(a1 + 32);
    v22 = [objc_opt_class() selectedLanguageSettingKeyPath];
    v23 = [v21 accessorySettingWithKeyPath:v22];

    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [objc_opt_class() selectedLanguageSettingKeyPath];
        v29 = HMFBooleanToString();
        *buf = 138543874;
        v52 = v27;
        v53 = 2112;
        v54 = v28;
        v55 = 2112;
        v56 = v29;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating language setting %@ reflected to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      [v23 updateReflected:*(a1 + 40)];
    }

    v30 = objc_autoreleasePoolPush();
    v31 = *(a1 + 32);
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = HMFBooleanToString();
      *buf = 138543618;
      v52 = v33;
      v53 = 2112;
      v54 = v34;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Setting adapter needReflectSettings to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    [*(a1 + 32) setSettingsReflected:*(a1 + 40)];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = a1;
    v37 = v35;
    v38 = *(v36 + 32);
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v40;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@Default settings do not exist", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
  }
}

- (void)updateWithKeyPath:(id)path value:(id)value completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  valueCopy = value;
  handlerCopy = handler;
  if (([objc_opt_class() defaultSettingsContainsKeyPath:pathCopy] & 1) == 0)
  {
    languageKeyPaths = [objc_opt_class() languageKeyPaths];
    v12 = [languageKeyPaths containsObject:pathCopy];

    if ((v12 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v20;
        v37 = 2112;
        v38 = pathCopy;
        v39 = 2112;
        v40 = valueCopy;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error in adapter updating keypath: %@ value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = MEMORY[0x1E696ABC0];
      v22 = @"Setting is not supported in the adapter";
      v23 = @"Only Boolean and Number Settings are supported";
      goto LABEL_21;
    }
  }

  if ([(HMAccessorySettingsAdapter *)self containerType]== 1)
  {
    settingsContainerIdentifier = [(HMAccessorySettingsAdapter *)self settingsContainerIdentifier];
    if (!settingsContainerIdentifier)
    {
      goto LABEL_18;
    }
  }

  else if (-[HMAccessorySettingsAdapter containerType](self, "containerType") != 2 || ((-[HMAccessorySettingsAdapter settingsContainer](self, "settingsContainer"), v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v15 = 0) : (v15 = v14), (v16 = v15, v14, !v16) ? (settingsContainerIdentifier = 0) : ([v16 targetAccessoryIdentifierBySerial], settingsContainerIdentifier = objc_claimAutoreleasedReturnValue()), v16, !settingsContainerIdentifier))
  {
LABEL_18:
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v29;
      v37 = 2112;
      v38 = pathCopy;
      v39 = 2112;
      v40 = valueCopy;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error in updating keypath: %@ value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v21 = MEMORY[0x1E696ABC0];
    v22 = @"Settings container is not supported in the adapter";
    v23 = @"Only accessory or media system is supported";
LABEL_21:
    v25 = [v21 hmfErrorWithCode:3 reason:v22 suggestion:v23];
    handlerCopy[2](handlerCopy, v25);
    goto LABEL_22;
  }

  workQueue = [(HMAccessorySettingsAdapter *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke;
  block[3] = &unk_1E754D7A8;
  block[4] = self;
  v31 = pathCopy;
  v32 = valueCopy;
  v33 = settingsContainerIdentifier;
  v34 = handlerCopy;
  v25 = settingsContainerIdentifier;
  dispatch_async(workQueue, block);

LABEL_22:
}

void __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() languageKeyPaths];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) _transformAccessorySettingToLanguageSetting:*(a1 + 48)];
    if (v4)
    {
      v5 = [*(a1 + 32) accessorySettingsController];
      v6 = [*(a1 + 32) homeIdentifier];
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      v9 = [v4 languageValue];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke_33;
      v44[3] = &unk_1E754D898;
      v44[4] = *(a1 + 32);
      v45 = v4;
      v46 = *(a1 + 64);
      [v5 updateAccessorySettingWithHomeIdentifier:v6 accessoryIdentifier:v7 keyPath:v8 settingValue:v9 completionHandler:v44];

LABEL_30:
      return;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v24;
      v49 = 2112;
      v50 = 0;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil setting transformation for setting = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = *(a1 + 64);
    v26 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8];
    (*(v25 + 16))(v25, v26);
LABEL_29:

    goto LABEL_30;
  }

  if (![objc_opt_class() isKeyPathForBooleanSettingType:*(a1 + 40)])
  {
    if ([objc_opt_class() isKeyPathForConstrainedNumberSettingType:*(a1 + 40)])
    {
      [*(a1 + 48) floatValue];
      v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      v12 = [objc_opt_class() scaleUpNumberSettingValue:v4];
      v11 = -[HMSettingIntegerValue initWithIntegerValue:]([HMSettingIntegerValue alloc], "initWithIntegerValue:", [v12 integerValue]);
      [*(a1 + 32) updateNumberSettingWithKeyPath:*(a1 + 40) value:v4];
LABEL_8:

      goto LABEL_9;
    }

    if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:*(a1 + 40)])
    {
      v43 = -1;
      v27 = *(a1 + 48);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v4 = v28;

      if (v4 && [*(a1 + 32) transformSelectionToInteger:v4 integerValue:&v43])
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v43];
        v29 = [objc_opt_class() scaleUpNumberSettingValue:v12];
        v11 = -[HMSettingIntegerValue initWithIntegerValue:]([HMSettingIntegerValue alloc], "initWithIntegerValue:", [v29 integerValue]);
        [*(a1 + 32) updateTapAssistanceSelectionSettingWithKeyPath:*(a1 + 40) value:v4];

        goto LABEL_8;
      }

      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 32);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        v40 = *(a1 + 48);
        *buf = 138543618;
        v48 = v39;
        v49 = 2112;
        v50 = v40;
        _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Wrong update value for tap assistance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v26 = [*(a1 + 32) accessoryContext];
      v35 = [v26 delegateCaller];
      v41 = *(a1 + 64);
      v42 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:3];
      [v35 callCompletion:v41 error:v42];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = *(a1 + 40);
        *buf = 138543618;
        v48 = v33;
        v49 = 2112;
        v50 = v34;
        _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Keypath is of an unknown type that is not supported: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v4 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:3 reason:@"Keypath is of unknown setting type" suggestion:@"Only Boolean and Number Setting are supported"];
      v26 = [*(a1 + 32) accessoryContext];
      v35 = [v26 delegateCaller];
      [v35 callCompletion:*(a1 + 64) error:v4];
    }

    goto LABEL_29;
  }

  v10 = [*(a1 + 48) BOOLValue];
  v11 = [[HMSettingBooleanValue alloc] initWithBoolValue:v10];
  [*(a1 + 32) updateBooleanSettingWithKeyPath:*(a1 + 40) value:v10];
LABEL_9:
  v13 = [*(a1 + 32) accessorySettingsController];
  v14 = [*(a1 + 32) homeIdentifier];
  [v13 updateAccessorySettingWithHomeIdentifier:v14 accessoryIdentifier:*(a1 + 56) keyPath:*(a1 + 40) settingValue:v11 completionHandler:*(a1 + 64)];

  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    *buf = 138543874;
    v48 = v18;
    v49 = 2112;
    v50 = v19;
    v51 = 2112;
    v52 = v20;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Update setting keypath: %@ value: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
}

void __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) setSelectedLanguageSetting:*(a1 + 40)];
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() selectedLanguageSettingKeyPath];
    v13[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v4 adapter:v5 didUpdateSettingKeyPaths:v7];

    v8 = *(a1 + 32);
    v9 = [v8 selectedLanguageSetting];
    v10 = [*(a1 + 32) availableLanguageSetting];
    [v8 _addOrUpdateLanguageSetting:v9 availableLanguagesSetting:v10];
  }

  v11 = [*(a1 + 32) accessoryContext];
  v12 = [v11 delegateCaller];
  [v12 callCompletion:*(a1 + 48) error:v3];
}

- (id)_transformAccessorySettingToLanguageSetting:(id)setting
{
  settingCopy = setting;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = settingCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    title = [v5 title];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = title;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 componentsSeparatedByString:{@", "}];
      if ([v10 count] >= 3)
      {
        v12 = [v10 objectAtIndex:0];
        v13 = [v10 objectAtIndex:1];
        v14 = [v10 objectAtIndex:2];
        v15 = 0;
        if ([v10 count] >= 5)
        {
          v15 = [v10 objectAtIndex:4];
        }

        v16 = [[HMSettingLanguageValue alloc] initWithInputLanguageCode:v12 outputVoiceLanguageCode:v13 outputVoiceGenderCode:v14 voiceName:v15];
        v21 = v12;
        v17 = [HMLanguageSetting alloc];
        [objc_opt_class() selectedLanguageSettingKeyPath];
        v18 = v20 = v13;
        v11 = [(HMLanguageSetting *)v17 initWithKeyPath:v18 readOnly:0 languageValue:v16];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_configureForMediaSystemWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  defaultSettings = [objc_opt_class() defaultSettings];
  allKeys = [defaultSettings allKeys];

  languageKeyPaths = [objc_opt_class() languageKeyPaths];
  v8 = [allKeys arrayByAddingObjectsFromArray:languageKeyPaths];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    homeIdentifier = [(HMAccessorySettingsAdapter *)selfCopy homeIdentifier];
    settingsContainerIdentifier = [(HMAccessorySettingsAdapter *)selfCopy settingsContainerIdentifier];
    *buf = 138544130;
    v24 = v12;
    v25 = 2112;
    v26 = homeIdentifier;
    v27 = 2112;
    v28 = settingsContainerIdentifier;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Adapter subscribes to media system settings, home identifier: %@, media system identifier: %@, key paths: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  accessoryDataSource = [(HMAccessorySettingsAdapter *)selfCopy accessoryDataSource];
  homeIdentifier2 = [(HMAccessorySettingsAdapter *)selfCopy homeIdentifier];
  settingsContainerIdentifier2 = [(HMAccessorySettingsAdapter *)selfCopy settingsContainerIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__HMAccessorySettingsAdapter__configureForMediaSystemWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E754D898;
  v20[4] = selfCopy;
  v21 = v8;
  v22 = handlerCopy;
  v18 = handlerCopy;
  v19 = v8;
  [accessoryDataSource subscribeToMediaSystemSettingsWithHomeIdentifier:homeIdentifier2 mediaSystemIdentifier:settingsContainerIdentifier2 keyPaths:v19 options:0 completionHandler:v20];
}

void __76__HMAccessorySettingsAdapter__configureForMediaSystemWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v16 = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v3;
    v10 = "%{public}@Failed to subscribe to media system settings with key paths: %@ :%@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Successfully subscribed to media system settings with key paths: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
  }

  _os_log_impl(&dword_19BB39000, v11, v12, v10, &v16, v13);

LABEL_7:
  objc_autoreleasePoolPop(v4);
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }
}

- (void)_configureForAccessoryWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  defaultSettings = [objc_opt_class() defaultSettings];
  allKeys = [defaultSettings allKeys];

  languageKeyPaths = [objc_opt_class() languageKeyPaths];
  v8 = [allKeys arrayByAddingObjectsFromArray:languageKeyPaths];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    homeIdentifier = [(HMAccessorySettingsAdapter *)selfCopy homeIdentifier];
    settingsContainerIdentifier = [(HMAccessorySettingsAdapter *)selfCopy settingsContainerIdentifier];
    *buf = 138544130;
    v24 = v12;
    v25 = 2112;
    v26 = homeIdentifier;
    v27 = 2112;
    v28 = settingsContainerIdentifier;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Adapter subscribes to accessory settings, home identifier: %@, accessory identifier: %@, key paths: %@\a", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  accessoryDataSource = [(HMAccessorySettingsAdapter *)selfCopy accessoryDataSource];
  homeIdentifier2 = [(HMAccessorySettingsAdapter *)selfCopy homeIdentifier];
  settingsContainerIdentifier2 = [(HMAccessorySettingsAdapter *)selfCopy settingsContainerIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__HMAccessorySettingsAdapter__configureForAccessoryWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E754D898;
  v20[4] = selfCopy;
  v21 = v8;
  v22 = handlerCopy;
  v18 = handlerCopy;
  v19 = v8;
  [accessoryDataSource subscribeToAccessorySettingsWithHomeIdentifier:homeIdentifier2 accessoryIdentifier:settingsContainerIdentifier2 keyPaths:v19 options:0 completionHandler:v20];
}

void __74__HMAccessorySettingsAdapter__configureForAccessoryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v16 = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v3;
    v10 = "%{public}@Failed to subscribe to the accessory settings with key paths: %@ :%@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Successfully subscribed to the accessory settings with key paths: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
  }

  _os_log_impl(&dword_19BB39000, v11, v12, v10, &v16, v13);

LABEL_7:
  objc_autoreleasePoolPop(v4);
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }
}

- (void)unconfigure
{
  accessoryDataSource = [(HMAccessorySettingsAdapter *)self accessoryDataSource];
  [accessoryDataSource resetSubscriptions];
}

- (void)configureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMAccessorySettingsAdapter *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__HMAccessorySettingsAdapter_configureWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E754E458;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __61__HMAccessorySettingsAdapter_configureWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) createRootSettingGroup];
  v2 = *(a1 + 32);
  v3 = [v2 accessoryDataSource];
  [v3 setDelegate:v2];

  v4 = [*(a1 + 32) containerType];
  v5 = *(a1 + 32);
  if (v4 == 1)
  {
    v6 = *(a1 + 40);

    [v5 _configureForAccessoryWithCompletionHandler:v6];
  }

  else if ([v5 containerType] == 2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v7 _configureForMediaSystemWithCompletionHandler:v8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) settingsContainer];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown settings container: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:3 reason:@"Unknown settings container" suggestion:@"Only accessory or media system can be container"];
      (*(v14 + 16))(v14, v15);
    }
  }
}

- (HMAccessorySettingsAdapter)initWithHomeIdentifier:(id)identifier dataSource:(id)source controller:(id)controller workQueue:(id)queue settingsContainer:(id)container containerIdentifier:(id)containerIdentifier containerType:(int64_t)type settingsControl:(id)self0 context:(id)self1
{
  identifierCopy = identifier;
  sourceCopy = source;
  controllerCopy = controller;
  queueCopy = queue;
  containerCopy = container;
  containerIdentifierCopy = containerIdentifier;
  controlCopy = control;
  contextCopy = context;
  v32.receiver = self;
  v32.super_class = HMAccessorySettingsAdapter;
  v21 = [(HMAccessorySettingsAdapter *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_homeIdentifier, identifier);
    objc_storeStrong(&v22->_accessoryDataSource, source);
    objc_storeStrong(&v22->_accessorySettingsController, controller);
    objc_storeStrong(&v22->_workQueue, queue);
    objc_storeWeak(&v22->_settingsContainer, containerCopy);
    objc_storeWeak(&v22->_settingsControl, controlCopy);
    objc_storeStrong(&v22->_accessoryContext, context);
    accessorySettings = v22->_accessorySettings;
    v22->_accessorySettings = 0;

    rootGroup = v22->_rootGroup;
    v22->_rootGroup = 0;

    tapAssistanceSelections = v22->_tapAssistanceSelections;
    v22->_tapAssistanceSelections = 0;

    objc_storeStrong(&v22->_settingsContainerIdentifier, containerIdentifier);
    v22->_containerType = type;
    *&v22->_didReceiveFirstUpdateEvent = 0;
  }

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t64 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t64, &__block_literal_global_258);
  }

  v3 = logCategory__hmf_once_v65;

  return v3;
}

uint64_t __41__HMAccessorySettingsAdapter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v65;
  logCategory__hmf_once_v65 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)scaleDownNumberSettingValue:(id)value
{
  [value floatValue];
  v5 = v4;
  v6 = MEMORY[0x1E696AD98];
  [self constraintSettingScaleFactor];
  *&v7 = v5 / *&v7;

  return [v6 numberWithFloat:v7];
}

+ (id)scaleUpNumberSettingValue:(id)value
{
  [value floatValue];
  v5 = v4;
  v6 = MEMORY[0x1E696AD98];
  [self constraintSettingScaleFactor];
  *&v7 = v5 * *&v7;

  return [v6 numberWithFloat:v7];
}

+ (id)defaultSettingsAllKeyPaths
{
  defaultSettings = [self defaultSettings];
  allKeys = [defaultSettings allKeys];

  return allKeys;
}

+ (id)defaultSettingsConstraintsForKeyPath:(id)path
{
  pathCopy = path;
  if ([self defaultSettingsContainsKeyPath:pathCopy])
  {
    defaultSettings = [self defaultSettings];
    v6 = [defaultSettings objectForKeyedSubscript:pathCopy];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isKeyPathForTapAssistanceSelectionSettingType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    defaultSettings = [self defaultSettings];
    v6 = [defaultSettings objectForKeyedSubscript:typeCopy];

    if (v6 && [v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:4];
      v8 = [v7 isEqual:&unk_1F0EFD058];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isKeyPathForConstrainedNumberSettingType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    defaultSettings = [self defaultSettings];
    v6 = [defaultSettings objectForKeyedSubscript:typeCopy];

    if (v6 && [v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:4];
      v8 = [v7 isEqual:&unk_1F0EFD010];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isKeyPathForBooleanSettingType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    defaultSettings = [self defaultSettings];
    v6 = [defaultSettings objectForKeyedSubscript:typeCopy];

    if (v6 && [v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:4];
      v8 = [v7 isEqual:&unk_1F0EFCFF8];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)defaultSettingsContainsKeyPath:(id)path
{
  pathCopy = path;
  defaultSettings = [self defaultSettings];
  v6 = [defaultSettings objectForKey:pathCopy];

  return v6 != 0;
}

+ (int64_t)itemIndexWithTapAssistanceSelectionItem:(id)item
{
  itemCopy = item;
  tapAssistanceSelectionTitles = [self tapAssistanceSelectionTitles];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__HMAccessorySettingsAdapter_itemIndexWithTapAssistanceSelectionItem___block_invoke;
  v10[3] = &unk_1E75492B0;
  v11 = itemCopy;
  v6 = itemCopy;
  v7 = [tapAssistanceSelectionTitles indexOfObjectPassingTest:v10];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

uint64_t __70__HMAccessorySettingsAdapter_itemIndexWithTapAssistanceSelectionItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 title];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (id)tapAssistanceSelectionItemWithIndex:(int64_t)index
{
  if (index < 0 || ([self tapAssistanceSelectionTitles], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 <= index))
  {
    v10 = 0;
  }

  else
  {
    v7 = [HMAccessorySelectionSettingItem alloc];
    tapAssistanceSelectionTitles = [self tapAssistanceSelectionTitles];
    v9 = [tapAssistanceSelectionTitles objectAtIndexedSubscript:index];
    v10 = [(HMAccessorySelectionSettingItem *)v7 initWithTitle:v9];
  }

  return v10;
}

+ (NSArray)languageKeyPaths
{
  if (languageKeyPaths__hmf_once_t0 != -1)
  {
    dispatch_once(&languageKeyPaths__hmf_once_t0, &__block_literal_global_29899);
  }

  v3 = languageKeyPaths__hmf_once_v1;

  return v3;
}

uint64_t __46__HMAccessorySettingsAdapter_languageKeyPaths__block_invoke()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"root.siri.language", @"root.siri.availableLanguages", 0}];
  v1 = languageKeyPaths__hmf_once_v1;
  languageKeyPaths__hmf_once_v1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end