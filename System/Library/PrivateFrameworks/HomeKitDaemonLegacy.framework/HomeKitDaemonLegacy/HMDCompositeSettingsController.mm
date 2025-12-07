@interface HMDCompositeSettingsController
+ (id)logCategory;
- (BOOL)configured;
- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)adapter model:(Class)model homeUUID:(id)d ownerUUID:(id)iD logEventSubmitter:(id)submitter settingKeyPathBlockList:(id)list;
- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)adapter model:(Class)model homeUUID:(id)d ownerUUID:(id)iD settingKeyPathBlockList:(id)list;
- (HMDCompositeSettingsControllerDelegate)delegate;
- (HMDCompositeSettingsZoneManager)zoneManager;
- (id)_metricSubmittingSingleFetchCompletionFromCompletion:(void *)completion;
- (id)_metricSubmittingSingleUpdateCompletionFromCompletion:(void *)completion;
- (id)_migrateUpdatedSettings:(void *)settings;
- (id)_settingFromSetting:(id)setting value:(id)value error:(id *)error;
- (id)emptyModelForTransaction;
- (id)fetchSynchronousSettingsForKeyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege;
- (id)logIdentifier;
- (void)_createSettingsFromModel:(id)model;
- (void)_fetchSettingForKeyPath:(void *)path callerVersion:(uint64_t)version callerPrivilege:(void *)privilege completion:;
- (void)_handleModelCreationOrUpdate:(void *)update;
- (void)database:(id)database didConfigureWithError:(id)error;
- (void)database:(id)database didProcessDeletionForModel:(id)model;
- (void)fetchSettingForKeyPath:(id)path callerVersion:(id)version callerPrivilege:(unint64_t)privilege completion:(id)completion;
- (void)fetchSettingsForKeyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege completion:(id)completion;
- (void)setConfigured:(BOOL)configured;
- (void)start;
- (void)updateSettingForKeyPath:(id)path value:(id)value callerVersion:(id)version completion:(id)completion;
- (void)updateSettingsForKeyPaths:(id)paths callerVersion:(id)version completion:(id)completion;
@end

@implementation HMDCompositeSettingsController

- (HMDCompositeSettingsZoneManager)zoneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_zoneManager);

  return WeakRetained;
}

- (HMDCompositeSettingsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)database:(id)database didConfigureWithError:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  errorCopy = error;
  if (errorCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *v32 = 138543618;
      *&v32[4] = v12;
      *&v32[12] = 2112;
      *&v32[14] = errorCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error configuring database adapter: %@", v32, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    if (self)
    {
      v14 = objc_getProperty(self, v7, 64, 1);
      if (v14)
      {
        v15 = [objc_getProperty(self v13];
        dispatch_assert_queue_V2(v15);

        v17 = objc_getProperty(self, v16, 64, 1);
        uuid = [(HMDCompositeSettingsController *)self uuid];
        emptyModelForTransaction = [v17 fetchModelWithID:uuid];

        if (!emptyModelForTransaction)
        {
          emptyModelForTransaction = [(HMDCompositeSettingsController *)self emptyModelForTransaction];
        }

        v21 = [(HMDCompositeSettingsController *)self _migrateUpdatedSettings:emptyModelForTransaction];
        *v32 = MEMORY[0x277D85DD0];
        *&v32[8] = 3221225472;
        *&v32[16] = __59__HMDCompositeSettingsController__migrateAndCreateSettings__block_invoke;
        v33 = &unk_279735918;
        selfCopy2 = self;
        v35 = emptyModelForTransaction;
        v22 = emptyModelForTransaction;
        v23 = [v21 addSuccessBlock:v32];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Nil database adapter (_migrateAndCreateSettings)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v23 = 0;
      }

      Property = objc_getProperty(self, v28, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v30 = Property;
    uuid2 = [(HMDCompositeSettingsController *)self uuid];
    [v30 startObservingModelWithID:uuid2];
  }
}

- (id)emptyModelForTransaction
{
  v3 = objc_getProperty(self, a2, 64, 1);
  uuid = [self uuid];
  uuid2 = [self uuid];
  v7 = [v3 emptyModelWithID:uuid parentModelID:uuid2 modelClass:{objc_getProperty(self, v6, 40, 1)}];

  return v7;
}

- (id)_migrateUpdatedSettings:(void *)settings
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_getProperty(settings, v4, 64, 1);
  if (v6)
  {
    v7 = [objc_getProperty(settings v5];
    dispatch_assert_queue_V2(v7);

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    keyPathsToSettingsForMigration = [v3 keyPathsToSettingsForMigration];
    v10 = objc_autoreleasePoolPush();
    settingsCopy = settings;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v13;
      v33 = 2112;
      v34 = keyPathsToSettingsForMigration;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Settings to migrate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if ([keyPathsToSettingsForMigration count])
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke;
      v28[3] = &unk_279729238;
      v14 = v3;
      v29 = v14;
      v30 = settingsCopy;
      [keyPathsToSettingsForMigration na_each:v28];
      v15 = MEMORY[0x277D2C900];
      v26 = MEMORY[0x277D85DD0];
      v27 = v14;
      v16 = MEMORY[0x277D2C938];
      v18 = [objc_getProperty(settingsCopy v17];
      v19 = [v16 schedulerWithDispatchQueue:v18];
      v20 = [v15 futureWithBlock:&v26 scheduler:v19];
    }

    else
    {
      v20 = futureWithNoResult;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    settingsCopy2 = settings;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Nil database adapter (_migrateUpdatedSettings)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  return v20;
}

void __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14 = 0;
  [v7 setSetting:v6 forKeyPath:v5 withError:&v14];
  v8 = v14;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 40);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 32);
    *buf = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating setting on model: %@, setting: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
}

void __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke_31(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke_2;
  v9[3] = &unk_2797359D8;
  v10 = v4;
  v8 = v4;
  [Property addModel:v7 withOptionsLabel:@"HMDCompositeSettingController Migrate UninitializedSettings" completion:v9];
}

void __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = NAEmptyResult();
    [v2 finishWithResult:v4];
  }
}

- (void)database:(id)database didProcessDeletionForModel:(id)model
{
  v24 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (self)
  {
    v7 = objc_getProperty(self, v5, 64, 1);
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v12;
        v22 = 2112;
        v23 = modelCopy;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Processing  model deletion, model:%@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v14 = objc_getProperty(selfCopy, v13, 64, 1);
      uuid = [(HMDCompositeSettingsController *)selfCopy uuid];
      [v14 stopObservingModelWithID:uuid];

      v16 = MEMORY[0x277CBEC10];
      objc_setProperty_atomic_copy(selfCopy, v17, MEMORY[0x277CBEC10], 24);
      objc_setProperty_atomic_copy(selfCopy, v18, v16, 32);
    }

    else
    {
      if (v11)
      {
        v19 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v19;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Nil database adapter (_handleModelDeletion)", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }
}

- (void)_handleModelCreationOrUpdate:(void *)update
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (update)
  {
    v5 = [objc_getProperty(update v3];
    if (v5)
    {
      v6 = [(HMDCompositeSettingsController *)update _migrateUpdatedSettings:v4];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __63__HMDCompositeSettingsController__handleModelCreationOrUpdate___block_invoke;
      v12[3] = &unk_27972E9E0;
      v12[4] = update;
      v13 = v4;
      v7 = [v6 addCompletionBlock:v12];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      updateCopy = update;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Nil database (_handleModelCreationOrUpdate)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }
}

- (id)_settingFromSetting:(id)setting value:(id)value error:(id *)error
{
  v165 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = valueCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v29 = settingCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v28 = v30;

    if (v28)
    {
      v31 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v22 = v32;

      if (v22)
      {
        v33 = [HMDCompositeStringSetting alloc];
        stringValue = [v22 stringValue];
        readVersion = [v28 readVersion];
        writeVersion = [v28 writeVersion];
        self = [(HMDCompositeStringSetting *)v33 initWithValue:stringValue readVersion:readVersion writeVersion:writeVersion];

        v14 = 0;
      }

      else
      {
        v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid string setting value" reason:0 suggestion:{@"Setting type is String, please pass a String value"}];
        v62 = objc_autoreleasePoolPush();
        selfCopy = self;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v66 = v65 = v14;
          *buf = 138543618;
          v160 = v66;
          v161 = 2112;
          v162 = v65;
          _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

          v14 = v65;
        }

        objc_autoreleasePoolPop(v62);
        if (error)
        {
          v67 = v14;
          v22 = 0;
          self = 0;
          *error = v14;
        }

        else
        {
          v22 = 0;
          self = 0;
        }
      }
    }

    else
    {
      v44 = v29;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v22 = v45;

      if (v22)
      {
        v46 = valueCopy;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        v48 = v47;

        if (v48)
        {
          v49 = v48;
          v50 = [HMDCompositeBoolSetting alloc];
          v51 = v49;
          bOOLValue = [v49 BOOLValue];
          readVersion2 = [v22 readVersion];
          [v22 writeVersion];
          v55 = v54 = settingCopy;
          v56 = bOOLValue;
          v57 = v51;
          self = [(HMDCompositeBoolSetting *)v50 initWithValue:v56 readVersion:readVersion2 writeVersion:v55];

          settingCopy = v54;
          v11 = 0;

          v14 = 0;
        }

        else
        {
          errorCopy = error;
          v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid BOOL setting value" reason:0 suggestion:{@"Setting type is Bool, please pass a Bool value"}];
          v94 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v96 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v98 = v97 = v14;
            *buf = 138543618;
            v160 = v98;
            v161 = 2112;
            v162 = v97;
            _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

            v14 = v97;
          }

          objc_autoreleasePoolPop(v94);
          if (errorCopy)
          {
            v99 = v14;
            v57 = 0;
            self = 0;
            *errorCopy = v14;
          }

          else
          {
            v57 = 0;
            self = 0;
          }

          v28 = 0;
        }
      }

      else
      {
        v68 = v44;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        v70 = v69;

        v148 = v70;
        if (v70)
        {
          v71 = valueCopy;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = v71;
          }

          else
          {
            v72 = 0;
          }

          v73 = v72;

          v74 = 0;
          v151 = v73;
          if (!v73)
          {
            v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid Number setting value" reason:0 suggestion:{@"Setting type is Number, please pass a Number value"}];
            v76 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v78 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              v79 = HMFGetLogIdentifier();
              *buf = 138543618;
              v160 = v79;
              v161 = 2112;
              v162 = v75;
              _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v76);
            if (error)
            {
              v80 = v75;
              *error = v75;
            }

            v74 = v75;
            v73 = 0;
          }

          v81 = [HMDCompositeNumberSetting alloc];
          numberValue = [v73 numberValue];
          [v148 readVersion];
          v84 = v83 = settingCopy;
          writeVersion2 = [v148 writeVersion];
          v86 = v81;
          v14 = v74;
          self = [(HMDCompositeNumberSetting *)v86 initWithValue:numberValue readVersion:v84 writeVersion:writeVersion2];

          settingCopy = v83;
          v87 = v151;
        }

        else
        {
          v100 = v68;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v101 = v100;
          }

          else
          {
            v101 = 0;
          }

          v102 = v101;

          if (v102)
          {
            v158 = settingCopy;
            v103 = valueCopy;
            if ([v103 conformsToProtocol:&unk_28667C8D8])
            {
              v104 = v103;
            }

            else
            {
              v104 = 0;
            }

            v105 = v104;

            v106 = 0;
            if (!v105)
            {
              v152 = v102;
              v107 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid Language setting value" reason:0 suggestion:{@"Setting type is Language, please pass a Language value"}];
              v108 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v110 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                v111 = HMFGetLogIdentifier();
                *buf = 138543618;
                v160 = v111;
                v161 = 2112;
                v162 = v107;
                _os_log_impl(&dword_2531F8000, v110, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v108);
              if (error)
              {
                v106 = v107;
                *error = v107;
              }

              else
              {
                v106 = v107;
              }

              v102 = v152;
            }

            v153 = v106;
            v156 = [HMDCompositeLanguageSetting alloc];
            inputLanguageCode = [v105 inputLanguageCode];
            outputVoiceLanguageCode = [v105 outputVoiceLanguageCode];
            outputVoiceGenderCode = [v105 outputVoiceGenderCode];
            v139 = v105;
            v147 = v105;
            v140 = outputVoiceGenderCode;
            voiceName = [v139 voiceName];
            readVersion3 = [v102 readVersion];
            writeVersion3 = [v102 writeVersion];
            self = [(HMDCompositeLanguageSetting *)v156 initWithInputLanguage:inputLanguageCode outputVoiceLanguageCode:outputVoiceLanguageCode outputVoiceGenderCode:v140 voiceName:voiceName readVersion:readVersion3 writeVersion:writeVersion3];

            v87 = v102;
            v14 = v153;

            settingCopy = v158;
          }

          else
          {
            v123 = settingCopy;
            v124 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"trying to create an invalid setting from value" reason:0 suggestion:0];
            v125 = objc_autoreleasePoolPush();
            selfCopy5 = self;
            v127 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              v128 = HMFGetLogIdentifier();
              *buf = 138543618;
              v160 = v128;
              v161 = 2112;
              v162 = v124;
              _os_log_impl(&dword_2531F8000, v127, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v125);
            if (error)
            {
              v129 = v124;
              v87 = 0;
              self = 0;
              *error = v124;
              v14 = v124;
              settingCopy = v123;
            }

            else
            {
              v87 = 0;
              self = 0;
              settingCopy = v123;
              v14 = v124;
            }
          }
        }

        v11 = 0;
        v57 = v148;
      }
    }

    goto LABEL_116;
  }

  v157 = settingCopy;
  v12 = settingCopy;
  v13 = v11;
  v14 = v13;
  if (self)
  {
    errorCopy2 = error;
    type = [v13 type];
    if ((type - 1) >= 2)
    {
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to derived setting" reason:@"unknown version type" suggestion:0];
      v37 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v41 = v40 = v14;
        v42 = HMSettingVersionValueTypeAsString();
        *buf = 138543874;
        v160 = v41;
        v161 = 2112;
        v162 = v42;
        v163 = 2112;
        v164 = v22;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive setting due to unknown version value type: %@ error: %@", buf, 0x20u);

        v14 = v40;
      }

      objc_autoreleasePoolPop(v37);
      if (errorCopy2)
      {
        v43 = v22;
        self = 0;
        *errorCopy2 = v22;
      }

      else
      {
        self = 0;
      }

      settingCopy = v157;
      v28 = v12;
    }

    else
    {
      v154 = v11;
      [v12 readVersion];
      v17 = v16 = v14;
      writeVersion4 = [v12 writeVersion];
      v150 = v16;
      version = [v16 version];
      if (type == 1)
      {
        v20 = v17;
      }

      else
      {
        v20 = writeVersion4;
      }

      if (type == 1)
      {
        v21 = writeVersion4;
      }

      else
      {
        v21 = version;
      }

      if (type == 1)
      {
        v22 = version;
      }

      else
      {
        v22 = v17;
      }

      v23 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (v25)
      {
        v26 = [HMDCompositeStringSetting alloc];
        stringValue2 = [v25 stringValue];
        self = [(HMDCompositeStringSetting *)v26 initWithValue:stringValue2 readVersion:v22 writeVersion:v21];

        v14 = v16;
        v11 = v154;
        v28 = v12;
      }

      else
      {
        v58 = v23;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v60 = v59;

        if (v60)
        {
          self = -[HMDCompositeBoolSetting initWithValue:readVersion:writeVersion:]([HMDCompositeBoolSetting alloc], "initWithValue:readVersion:writeVersion:", [v60 BOOLValue], v22, v21);
          v14 = v16;
          v11 = v154;
          v61 = v60;
          v28 = v12;
        }

        else
        {
          v149 = v21;
          v88 = v58;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v89 = v88;
          }

          else
          {
            v89 = 0;
          }

          v90 = v89;

          if (v90)
          {
            v91 = [HMDCompositeNumberSetting alloc];
            numberValue2 = [v90 numberValue];
            self = [(HMDCompositeNumberSetting *)v91 initWithValue:numberValue2 readVersion:v22 writeVersion:v149];

            v14 = v16;
            v11 = v154;
          }

          else
          {
            v112 = v88;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v113 = v112;
            }

            else
            {
              v113 = 0;
            }

            v114 = v113;

            if (v114)
            {
              v115 = [HMDCompositeLanguageSetting alloc];
              inputLanguageCode2 = [v114 inputLanguageCode];
              outputVoiceLanguageCode2 = [v114 outputVoiceLanguageCode];
              outputVoiceGenderCode2 = [v114 outputVoiceGenderCode];
              [v114 voiceName];
              v120 = v119 = v114;
              v121 = v115;
              v122 = outputVoiceLanguageCode2;
              self = [(HMDCompositeLanguageSetting *)v121 initWithInputLanguage:inputLanguageCode2 outputVoiceLanguageCode:outputVoiceLanguageCode2 outputVoiceGenderCode:outputVoiceGenderCode2 voiceName:v120 readVersion:v22 writeVersion:v149];

              v14 = v150;
              v11 = v154;
              v90 = 0;
            }

            else
            {
              v145 = v112;
              v130 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Unable to derived setting" reason:@"unknown setting type" suggestion:0];
              v131 = objc_autoreleasePoolPush();
              selfCopy7 = self;
              v133 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v135 = v134 = v130;
                *buf = 138543874;
                v160 = v135;
                v161 = 2112;
                v162 = v145;
                v163 = 2112;
                v164 = v134;
                _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive setting due to unknown setting object type: %@ error: %@", buf, 0x20u);

                v130 = v134;
              }

              objc_autoreleasePoolPop(v131);
              v11 = v154;
              if (errorCopy2)
              {
                v136 = v130;
                *errorCopy2 = v130;
              }

              self = 0;
              v14 = v150;
              v119 = 0;
              v90 = 0;
            }
          }

          v28 = v12;

          v61 = 0;
          v21 = v149;
        }
      }

      settingCopy = v157;
    }

LABEL_116:

    goto LABEL_117;
  }

  v28 = v12;
LABEL_117:

  return self;
}

- (void)updateSettingsForKeyPaths:(id)paths callerVersion:(id)version completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  versionCopy = version;
  completionCopy = completion;
  v11 = [(HMDCompositeSettingsController *)self _metricSubmittingSingleUpdateCompletionFromCompletion:completionCopy];
  if ([pathsCopy count])
  {
    if (self)
    {
      Property = objc_getProperty(self, v12, 64, 1);
    }

    else
    {
      Property = 0;
    }

    rawDatabase = [Property rawDatabase];
    if (rawDatabase)
    {
      v16 = rawDatabase;
      if (self)
      {
        v17 = objc_getProperty(self, v15, 64, 1);
      }

      else
      {
        v17 = 0;
      }

      queue = [v17 queue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __85__HMDCompositeSettingsController_updateSettingsForKeyPaths_callerVersion_completion___block_invoke;
      v29[3] = &unk_279734578;
      v29[4] = self;
      v30 = pathsCopy;
      v31 = versionCopy;
      v32 = v11;
      dispatch_async(queue, v29);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Nil database (updateSettingsForKeyPaths)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v28 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"onboardingSettings" setting:0 metadata:0 error:v27];
      (v11)[2](v11, v28);

      v16 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@settings is empty", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v16 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"onboardingSettings" setting:0 metadata:0 error:0];
    (v11)[2](v11, v16);
  }
}

- (id)_metricSubmittingSingleUpdateCompletionFromCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    [MEMORY[0x277D17DC0] currentTime];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__HMDCompositeSettingsController__metricSubmittingSingleUpdateCompletionFromCompletion___block_invoke;
    aBlock[3] = &unk_27972FAB0;
    aBlock[4] = completion;
    v8 = v4;
    v7 = v3;
    completion = _Block_copy(aBlock);
  }

  return completion;
}

void __85__HMDCompositeSettingsController_updateSettingsForKeyPaths_callerVersion_completion___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v54 = *(a1 + 40);
  v58 = v2;
  v59 = v3;
  if (!v1)
  {
    goto LABEL_47;
  }

  v5 = [objc_getProperty(v1 v4];
  dispatch_assert_queue_V2(v5);

  if (!v54)
  {
    _HMFPreconditionFailure();
    goto LABEL_49;
  }

  if (!v58)
  {
LABEL_49:
    _HMFPreconditionFailure();
LABEL_50:
    _HMFPreconditionFailure();
  }

  if (!v59)
  {
    goto LABEL_50;
  }

  v53 = [objc_getProperty(v1 v6];
  if (!v53)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v1;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *v73 = 138543362;
      v74 = v35;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Nil database (_updateSettingsForKeyPaths)", v73, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v57 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"onboardingSettings" setting:0 metadata:0 error:v17];
    v59[2](v59, v57);
    goto LABEL_46;
  }

  v57 = [(HMDCompositeSettingsController *)v1 emptyModelForTransaction];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v54;
  v56 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (!v56)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v55 = *v65;
  *&v8 = 138543618;
  v51 = v8;
  while (2)
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v65 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v64 + 1) + 8 * i);
      v12 = [v11 keyPath];
      v14 = [objc_getProperty(v1 v13];
      if (!v14)
      {
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21 description:@"Setting has not been configured yet (no current setting)" reason:0 suggestion:0];

        v39 = objc_autoreleasePoolPush();
        v40 = v1;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = v51;
          *&buf[4] = v42;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        v14 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v12 setting:0 metadata:0 error:v17];
        v59[2](v59, v14);
        goto LABEL_43;
      }

      v15 = [v11 value];
      v63 = v9;
      v16 = [v1 _settingFromSetting:v14 value:v15 error:&v63];
      v17 = v63;

      if (!v16)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v1;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = v51;
          *&buf[4] = v46;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

        v16 = 0;
        goto LABEL_42;
      }

      v18 = [(HMDCompositeSettingOperationResult *)v14 writeVersion];
      v19 = [v18 isGreaterThanVersion:v58];

      if (v19)
      {
        v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Write version does not meet the minimum" reason:0 suggestion:0];

        v43 = objc_autoreleasePoolPush();
        v48 = v1;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = v51;
          *&buf[4] = v49;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

        v17 = v47;
LABEL_42:

        objc_autoreleasePoolPop(v43);
        v50 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v12 setting:0 metadata:0 error:v17];
        v59[2](v59, v50);

LABEL_43:
LABEL_45:

        goto LABEL_46;
      }

      v21 = [objc_getProperty(v1 v20];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 constraint];
        v24 = [v11 value];
        v62 = v17;
        [v23 isValidValue:v24 error:&v62];
        v9 = v62;

        if (v9)
        {
          v25 = objc_autoreleasePoolPush();
          v26 = v1;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        v17 = 0;
      }

      v61 = v17;
      [(HMDCompositeSettingOperationResult *)v57 setSetting:v16 forKeyPath:v12 withError:&v61];
      v9 = v61;

      if (v9)
      {
        v25 = objc_autoreleasePoolPush();
        v28 = v1;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_21:
          v29 = HMFGetLogIdentifier();
          *buf = v51;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

LABEL_22:

        objc_autoreleasePoolPop(v25);
        v30 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v12 setting:0 metadata:0 error:v9];
        v59[2](v59, v30);

        v31 = 0;
        goto LABEL_24;
      }

      v31 = 1;
LABEL_24:

      if (!v31)
      {
        v17 = v9;
        goto LABEL_45;
      }
    }

    v56 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_32:

  objc_initWeak(&location, v1);
  v37 = objc_getProperty(v1, v36, 64, 1);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke;
  v69 = &unk_2797346E0;
  objc_copyWeak(v72, &location);
  v38 = v57;
  v70 = v38;
  v71 = v59;
  v57 = v38;
  [v37 addModel:v38 withOptionsLabel:@"HMDCompositeSettingController updating settings" completion:buf];

  objc_destroyWeak(v72);
  objc_destroyWeak(&location);
  v17 = v9;
LABEL_46:

LABEL_47:
}

void __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Finished updating models:%@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = MEMORY[0x277D2C900];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke_92;
    v16[3] = &unk_2797292D8;
    v17 = v3;
    v18 = *(a1 + 40);
    v11 = MEMORY[0x277D2C938];
    v13 = [objc_getProperty(v6 v12];
    v14 = [v11 schedulerWithDispatchQueue:v13];
    v15 = [v10 futureWithBlock:v16 scheduler:v14];
  }
}

void __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"nil" setting:0 metadata:0 error:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
  [v3 finishWithNoResult];
}

void __88__HMDCompositeSettingsController__metricSubmittingSingleUpdateCompletionFromCompletion___block_invoke(double *a1, void *a2)
{
  v11 = a2;
  Property = *(a1 + 4);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v5 = Property;
  v6 = [HMDCompositeSettingsControllerUpdateLogEvent alloc];
  v7 = a1[6];
  v8 = [v11 keyPath];
  v9 = [(HMDCompositeSettingsControllerUpdateLogEvent *)v6 initWithStartTime:v8 keyPath:v7];
  v10 = [v11 error];
  [v5 submitLogEvent:v9 error:v10];

  (*(*(a1 + 5) + 16))();
}

- (void)updateSettingForKeyPath:(id)path value:(id)value callerVersion:(id)version completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  versionCopy = version;
  completionCopy = completion;
  v15 = [(HMDCompositeSettingsController *)self _metricSubmittingSingleUpdateCompletionFromCompletion:completionCopy];
  if (self)
  {
    Property = objc_getProperty(self, v14, 64, 1);
  }

  else
  {
    Property = 0;
  }

  rawDatabase = [Property rawDatabase];
  if (rawDatabase)
  {
    if (self)
    {
      v19 = objc_getProperty(self, v17, 64, 1);
    }

    else
    {
      v19 = 0;
    }

    queue = [v19 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDCompositeSettingsController_updateSettingForKeyPath_value_callerVersion_completion___block_invoke;
    block[3] = &unk_279734668;
    block[4] = self;
    v28 = pathCopy;
    v29 = valueCopy;
    v30 = versionCopy;
    v31 = v15;
    dispatch_async(queue, block);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Nil database (updateSettingForKeyPath)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v26 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:pathCopy setting:0 metadata:0 error:v25];
    (v15)[2](v15, v26);
  }
}

void __89__HMDCompositeSettingsController_updateSettingForKeyPath_value_callerVersion_completion___block_invoke(uint64_t a1)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v47 = v2;
  v48 = v3;
  v7 = v4;
  if (v1)
  {
    v9 = [objc_getProperty(v1 v6];
    if (!v9)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v1;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Nil database (_updateSettingForKeyPath)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v12 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
      v7[2](v7, v12);
      goto LABEL_34;
    }

    v10 = [objc_getProperty(v1 v8];
    dispatch_assert_queue_V2(v10);

    if (v5)
    {
      if (v47)
      {
        if (v48)
        {
          if (v7)
          {
            v12 = [objc_getProperty(v1 v11];
            v46 = [objc_getProperty(v1 v13];
            if (!v12)
            {
              v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21 description:@"Setting has not been configured yet (no current setting)" reason:0 suggestion:0];
              v26 = objc_autoreleasePoolPush();
              v27 = v1;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v29;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v26);
              v17 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v7[2](v7, v17);
              goto LABEL_33;
            }

            v14 = [(HMDCompositeSettingOperationResult *)v12 writeVersion];
            v15 = [v14 isGreaterThanVersion:v48];

            if (v15)
            {
              v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Write version does not meet the minimum" reason:0 suggestion:0];
              v17 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v18 = objc_autoreleasePoolPush();
              v19 = v1;
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v21;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v18);
              v7[2](v7, v17);
              goto LABEL_33;
            }

            v52 = 0;
            v17 = [v1 _settingFromSetting:v12 value:v47 error:&v52];
            v16 = v52;
            if (!v17)
            {
              v37 = objc_autoreleasePoolPush();
              v38 = v1;
              v39 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v40;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v37);
              v33 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v7[2](v7, v33);
              goto LABEL_32;
            }

            if (v46)
            {
              v31 = [v46 constraint];
              v51 = v16;
              [v31 isValidValue:v47 error:&v51];
              v32 = v51;

              if (v32)
              {
                v33 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v32];
                context = objc_autoreleasePoolPush();
                v34 = v1;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v36;
                  *&buf[12] = 2112;
                  *&buf[14] = v32;
                  _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(context);
                v7[2](v7, v33);
                v16 = v32;
                goto LABEL_32;
              }

              v41 = 0;
            }

            else
            {
              v41 = v16;
            }

            v33 = [(HMDCompositeSettingsController *)v1 emptyModelForTransaction];
            v50 = v41;
            [(HMDCompositeSettingOperationResult *)v33 setSetting:v17 forKeyPath:v5 withError:&v50];
            v16 = v50;

            if (v16)
            {
              v42 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v7[2](v7, v42);
            }

            else
            {
              objc_initWeak(&location, v1);
              v44 = objc_getProperty(v1, v43, 64, 1);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke;
              v54 = &unk_27972D7A8;
              objc_copyWeak(v60, &location);
              v55 = v12;
              v56 = v17;
              v57 = v5;
              v58 = v46;
              v59 = v7;
              [v44 addModel:v33 withOptionsLabel:@"HMDCompositeSettingController updating setting" completion:buf];

              objc_destroyWeak(v60);
              objc_destroyWeak(&location);
              v16 = 0;
            }

LABEL_32:

LABEL_33:
LABEL_34:

            goto LABEL_35;
          }

LABEL_39:
          _HMFPreconditionFailure();
        }

LABEL_38:
        _HMFPreconditionFailure();
        goto LABEL_39;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
    goto LABEL_38;
  }

LABEL_35:
}

void __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138544130;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@updating current setting:%@, new setting:%@ error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    v11 = MEMORY[0x277D2C900];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke_82;
    v17[3] = &unk_2797292B0;
    v17[4] = v6;
    v18 = *(a1 + 40);
    v19 = v3;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v12 = MEMORY[0x277D2C938];
    v14 = [objc_getProperty(v6 v13];
    v15 = [v12 schedulerWithDispatchQueue:v14];
    v16 = [v11 futureWithBlock:v17 scheduler:v15];
  }
}

void __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@updating setting:%@, error:%@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:*(a1 + 56) setting:*(a1 + 40) metadata:*(a1 + 64) error:*(a1 + 48)];
  (*(*(a1 + 72) + 16))();
  [v3 finishWithNoResult];
}

- (id)fetchSynchronousSettingsForKeyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege
{
  v35 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  versionCopy = version;
  array = [MEMORY[0x277CBEB18] array];
  if (self)
  {
    Property = objc_getProperty(self, v10, 64, 1);
  }

  else
  {
    Property = 0;
  }

  rawDatabase = [Property rawDatabase];
  if (rawDatabase)
  {
    if (self)
    {
      v15 = objc_getProperty(self, v13, 64, 1);
    }

    else
    {
      v15 = 0;
    }

    queue = [v15 queue];
    dispatch_assert_queue_V2(queue);

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke_2;
    v27[3] = &unk_279729288;
    v27[4] = self;
    v28 = versionCopy;
    privilegeCopy = privilege;
    v17 = array;
    v29 = v17;
    [pathsCopy na_each:v27];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Nil database (fetchSynchronousSettingsForKeyPaths)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke;
    v31[3] = &unk_2797330F0;
    v32 = v22;
    v23 = v22;
    v24 = [pathsCopy na_map:v31];
    v17 = [v24 mutableCopy];
  }

  v25 = objc_msgSend_copy(v17);

  return v25;
}

HMDCompositeSettingOperationResult *__100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v3 setting:0 metadata:0 error:*(a1 + 32)];

  return v4;
}

void __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke_3;
  v8[3] = &unk_279729260;
  v5 = *(a1 + 56);
  v9 = *(a1 + 48);
  v6 = a2;
  v7 = [(HMDCompositeSettingsController *)v3 _metricSubmittingSingleFetchCompletionFromCompletion:v8];
  [(HMDCompositeSettingsController *)v3 _fetchSettingForKeyPath:v6 callerVersion:v4 callerPrivilege:v5 completion:v7];
}

- (id)_metricSubmittingSingleFetchCompletionFromCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    [MEMORY[0x277D17DC0] currentTime];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__HMDCompositeSettingsController__metricSubmittingSingleFetchCompletionFromCompletion___block_invoke;
    aBlock[3] = &unk_27972FAB0;
    aBlock[4] = completion;
    v8 = v4;
    v7 = v3;
    completion = _Block_copy(aBlock);
  }

  return completion;
}

- (void)_fetchSettingForKeyPath:(void *)path callerVersion:(uint64_t)version callerPrivilege:(void *)privilege completion:
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a2;
  pathCopy = path;
  privilegeCopy = privilege;
  v13 = privilegeCopy;
  if (self && privilegeCopy)
  {
    if ([objc_getProperty(self v12])
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v18;
        v52 = 2112;
        v53 = v9;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Blocked fetch setting with key path: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      v20 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v19];
      (v13)[2](v13, v20);
      goto LABEL_26;
    }

    v19 = [objc_getProperty(self v14];
    if (!v19)
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v40;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Nil database (_fetchSettingForKeyPath)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v26 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v20];
      (v13)[2](v13, v26);
      goto LABEL_25;
    }

    v22 = [objc_getProperty(self v21];
    dispatch_assert_queue_V2(v22);

    v20 = [objc_getProperty(self v23];
    v25 = [objc_getProperty(self v24];
    v26 = v25;
    if (!v20)
    {
      v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21 description:@"Setting has not been configured yet (no setting)" reason:0 suggestion:0];
      v43 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v46;
        v52 = 2112;
        v53 = v42;
        _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@_fetchSettingForKeyPath Error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
      v47 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v42];
      (v13)[2](v13, v47);

      v20 = 0;
      goto LABEL_25;
    }

    if (!v25 || (-[HMDCompositeSettingOperationResult privileges](v25, "privileges"), v27 = objc_claimAutoreleasedReturnValue(), v28 = HMDUserPrivilegeCompare(version, [v27 minReadUserPrivilege]), v27, v28 == -1))
    {
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient User read Privilege or missing Metadata" reason:0 suggestion:0];
      v32 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v49 = v32;
        *buf = 138543618;
        v51 = v35;
        v52 = 2112;
        v53 = v31;
        v36 = "%{public}@_fetchSettingForKeyPath failed, Error: %@";
        goto LABEL_19;
      }
    }

    else
    {
      readVersion = [(HMDCompositeSettingOperationResult *)v20 readVersion];
      v30 = [readVersion isGreaterThanVersion:pathCopy];

      if (!v30)
      {
        v48 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:v20 metadata:v26 error:0];
        (v13)[2](v13, v48);

        goto LABEL_25;
      }

      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Read version does not meet the minimum" reason:0 suggestion:0];
      v32 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v49 = v32;
        *buf = 138543618;
        v51 = v35;
        v52 = 2112;
        v53 = v31;
        v36 = "%{public}@_fetchSettingForKeyPath Error: %@";
LABEL_19:
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);

        v32 = v49;
      }
    }

    objc_autoreleasePoolPop(v32);
    v41 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v31];
    (v13)[2](v13, v41);

LABEL_25:
LABEL_26:
  }
}

void __87__HMDCompositeSettingsController__metricSubmittingSingleFetchCompletionFromCompletion___block_invoke(double *a1, void *a2)
{
  v11 = a2;
  Property = *(a1 + 4);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v5 = Property;
  v6 = [HMDCompositeSettingsControllerFetchLogEvent alloc];
  v7 = a1[6];
  v8 = [v11 keyPath];
  v9 = [(HMDCompositeSettingsControllerFetchLogEvent *)v6 initWithStartTime:v8 keyPath:v7];
  v10 = [v11 error];
  [v5 submitLogEvent:v9 error:v10];

  (*(*(a1 + 5) + 16))();
}

- (void)fetchSettingsForKeyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  versionCopy = version;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v12, 64, 1);
  }

  else
  {
    Property = 0;
  }

  rawDatabase = [Property rawDatabase];
  v16 = completionCopy;
  if (self)
  {
    [MEMORY[0x277D17DC0] currentTime];
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 3221225472;
    v43 = __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke;
    v44 = &unk_279729210;
    selfCopy = self;
    v47 = v17;
    v46 = v16;
    v18 = _Block_copy(&aBlock);
  }

  else
  {
    v18 = 0;
  }

  if (rawDatabase)
  {
    if (![pathsCopy count])
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v23 = v33 = v20;
        LODWORD(aBlock) = 138543362;
        *(&aBlock + 4) = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Empty keypaths array", &aBlock, 0xCu);

        v20 = v33;
      }

      objc_autoreleasePoolPop(v20);
      v18[2](v18, MEMORY[0x277CBEBF8]);
    }

    if (self)
    {
      v24 = objc_getProperty(self, v19, 64, 1);
    }

    else
    {
      v24 = 0;
    }

    queue = [v24 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_49;
    block[3] = &unk_2797309E0;
    v35 = pathsCopy;
    selfCopy3 = self;
    v37 = versionCopy;
    privilegeCopy = privilege;
    v38 = v18;
    dispatch_async(queue, block);

    v26 = v35;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      LODWORD(aBlock) = 138543362;
      *(&aBlock + 4) = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Nil database (fetchSettingsForKeyPaths)", &aBlock, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke;
    v40[3] = &unk_2797330F0;
    v41 = v31;
    v26 = v31;
    v32 = [pathsCopy na_map:v40];
    (v18)[2](v18, v32);
  }
}

HMDCompositeSettingOperationResult *__100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v3 setting:0 metadata:0 error:*(a1 + 32)];

  return v4;
}

void __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_49(void *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_2;
  v11[3] = &unk_279729288;
  v3 = a1[4];
  v4 = a1[6];
  v11[4] = a1[5];
  v5 = v4;
  v6 = a1[8];
  v13 = v2;
  v14 = v6;
  v12 = v5;
  v7 = v2;
  [v3 na_each:v11];
  (*(a1[7] + 16))(a1[7], v7, v8, v9, v10);
}

void __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_3;
  v6[3] = &unk_279729260;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  [(HMDCompositeSettingsController *)v3 _fetchSettingForKeyPath:a2 callerVersion:v4 callerPrivilege:v5 completion:v6];
}

void __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke(void *a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke_2;
  v8[3] = &unk_2797291E8;
  v8[4] = a1[4];
  v8[5] = a1[6];
  v3 = a2;
  [v3 na_each:v8];
  (*(a1[5] + 16))(a1[5], v3, v4, v5, v6, v7);
}

void __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v5 = Property;
  v6 = [HMDCompositeSettingsControllerFetchLogEvent alloc];
  v7 = *(a1 + 40);
  v8 = [v11 keyPath];
  v9 = [(HMDCompositeSettingsControllerFetchLogEvent *)v6 initWithStartTime:v8 keyPath:v7];
  v10 = [v11 error];
  [v5 submitLogEvent:v9 error:v10];
}

- (void)fetchSettingForKeyPath:(id)path callerVersion:(id)version callerPrivilege:(unint64_t)privilege completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  versionCopy = version;
  completionCopy = completion;
  v14 = [(HMDCompositeSettingsController *)self _metricSubmittingSingleFetchCompletionFromCompletion:completionCopy];
  if (self)
  {
    Property = objc_getProperty(self, v13, 64, 1);
  }

  else
  {
    Property = 0;
  }

  rawDatabase = [Property rawDatabase];
  if (rawDatabase)
  {
    if (self)
    {
      v18 = objc_getProperty(self, v16, 64, 1);
    }

    else
    {
      v18 = 0;
    }

    queue = [v18 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__HMDCompositeSettingsController_fetchSettingForKeyPath_callerVersion_callerPrivilege_completion___block_invoke;
    block[3] = &unk_2797309E0;
    block[4] = self;
    v27 = pathCopy;
    v28 = versionCopy;
    privilegeCopy = privilege;
    v29 = v14;
    dispatch_async(queue, block);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Nil database (fetchSettingForKeyPath)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v25 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:pathCopy setting:0 metadata:0 error:v24];
    (v14)[2](v14, v25);
  }
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  homeUUID = [(HMDCompositeSettingsController *)self homeUUID];
  uuid = [(HMDCompositeSettingsController *)self uuid];
  v6 = [v3 stringWithFormat:@"%@.%@", homeUUID, uuid];

  return v6;
}

- (void)_createSettingsFromModel:(id)model
{
  v65 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  rawDatabase = [Property rawDatabase];
  if (rawDatabase)
  {
    if (self)
    {
      v7 = [objc_getProperty(self v6];
      dispatch_assert_queue_V2(v7);

      v9 = objc_getProperty(self, v8, 24, 1);
    }

    else
    {
      queue = [0 queue];
      dispatch_assert_queue_V2(queue);

      v9 = 0;
    }

    v10 = v9;
    keyPathsToSettings = [modelCopy keyPathsToSettings];
    v12 = v10;
    v13 = keyPathsToSettings;
    v14 = v13;
    if (self)
    {
      v15 = [v13 mutableCopy];
      *v58 = MEMORY[0x277D85DD0];
      *&v58[8] = 3221225472;
      *&v58[16] = __74__HMDCompositeSettingsController__addedOrUpdatedSettingsFrom_newSettings___block_invoke;
      v59 = &unk_279729238;
      v60 = v12;
      v16 = v15;
      v61 = v16;
      [v14 na_each:v58];
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Settings changed %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = objc_msgSend_copy(v16);
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *v58 = 138543618;
      *&v58[4] = v25;
      *&v58[12] = 2112;
      *&v58[14] = v21;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Updated Settings %@", v58, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    if ([v21 count])
    {
      v26 = v21;
      v27 = v26;
      if (self)
      {
        v28 = [v26 mutableCopy];
        v30 = objc_getProperty(selfCopy2, v29, 56, 1);
        *v58 = MEMORY[0x277D85DD0];
        *&v58[8] = 3221225472;
        *&v58[16] = __62__HMDCompositeSettingsController_filteredSettingsForSettings___block_invoke;
        v59 = &unk_279732AC0;
        v31 = v28;
        v60 = v31;
        v61 = selfCopy2;
        [v30 na_each:v58];
        v32 = v31;

        if ([v32 count])
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v63 = 0u;
          v64 = 0u;
          memset(buf, 0, sizeof(buf));
          v27 = v32;
          v35 = [v27 countByEnumeratingWithState:buf objects:v58 count:16];
          if (v35)
          {
            v36 = **&buf[16];
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (**&buf[16] != v36)
                {
                  objc_enumerationMutation(v27);
                }

                v38 = *(*&buf[8] + 8 * i);
                v39 = [objc_getProperty(selfCopy2 v34];
                [dictionary setObject:v39 forKeyedSubscript:v38];
              }

              v35 = [v27 countByEnumeratingWithState:buf objects:v58 count:16];
            }

            while (v35);
          }

          delegate = [(HMDCompositeSettingsController *)selfCopy2 delegate];
          v41 = objc_msgSend_copy(dictionary);
          [delegate settingsController:selfCopy2 didUpdateSettings:v27 metadata:v41];
        }

        else
        {
          v27 = v32;
        }
      }
    }

    keyPathsToSettings2 = [modelCopy keyPathsToSettings];
    if (self)
    {
      objc_setProperty_atomic_copy(selfCopy2, v46, keyPathsToSettings2, 24);
    }

    v48 = self == 0;

    keyPathsToSettingMetadata = [modelCopy keyPathsToSettingMetadata];
    if (!v48)
    {
      objc_setProperty_atomic_copy(selfCopy2, v49, keyPathsToSettingMetadata, 32);
    }

    os_unfair_lock_lock_with_options();
    if (!selfCopy2->_configured)
    {
      selfCopy2->_configured = 1;
      v52 = objc_getProperty(selfCopy2, v51, 64, 1);
      queue2 = [v52 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__HMDCompositeSettingsController__createSettingsFromModel___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = selfCopy2;
      dispatch_async(queue2, block);
    }

    os_unfair_lock_unlock(&selfCopy2->_lock);
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *v58 = 138543362;
      *&v58[4] = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Nil database (_createSettingsFromModel)", v58, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }
}

void __59__HMDCompositeSettingsController__createSettingsFromModel___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"HMDCompositeSettingControllerOwnerUUIDNotificationKey";
  v2 = [*(a1 + 32) uuid];
  v9[1] = @"HMDCompositeSettingControllerHomeUUIDNotificationKey";
  v10[0] = v2;
  v3 = [*(a1 + 32) homeUUID];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = @"HMDHomeUUIDOwnerUUIDKey";
  v8 = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v5 postNotificationName:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0 userInfo:v6];
}

void __62__HMDCompositeSettingsController_filteredSettingsForSettings___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Filtering setting with blocked key path: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) removeObjectForKey:v3];
  }
}

void __74__HMDCompositeSettingsController__addedOrUpdatedSettingsFrom_newSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v8 = [v7 isEqual:v5];

    if (v8)
    {
      [*(a1 + 40) removeObjectForKey:v9];
    }
  }
}

- (void)setConfigured:(BOOL)configured
{
  os_unfair_lock_lock_with_options();
  self->_configured = configured;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)configured
{
  os_unfair_lock_lock_with_options();
  configured = self->_configured;
  os_unfair_lock_unlock(&self->_lock);
  return configured;
}

- (void)start
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  [(HMDCompositeSettingsController *)self startWithDelegate:selfCopy];
}

- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)adapter model:(Class)model homeUUID:(id)d ownerUUID:(id)iD logEventSubmitter:(id)submitter settingKeyPathBlockList:(id)list
{
  adapterCopy = adapter;
  dCopy = d;
  iDCopy = iD;
  submitterCopy = submitter;
  listCopy = list;
  v23.receiver = self;
  v23.super_class = HMDCompositeSettingsController;
  v18 = [(HMDCompositeSettingsController *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_lock._os_unfair_lock_opaque = 0;
    v18->_configured = 0;
    objc_storeStrong(&v18->_modelClass, model);
    objc_storeStrong(&v19->_databaseAdapter, adapter);
    objc_storeStrong(&v19->_uuid, iD);
    objc_storeStrong(&v19->_homeUUID, d);
    objc_storeStrong(&v19->_logEventSubmitter, submitter);
    objc_storeStrong(&v19->_settingKeyPathBlockList, list);
  }

  return v19;
}

- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)adapter model:(Class)model homeUUID:(id)d ownerUUID:(id)iD settingKeyPathBlockList:(id)list
{
  listCopy = list;
  iDCopy = iD;
  dCopy = d;
  adapterCopy = adapter;
  v16 = +[HMDMetricsManager sharedLogEventSubmitter];
  v17 = [(HMDCompositeSettingsController *)self initWithDatabaseAdapter:adapterCopy model:model homeUUID:dCopy ownerUUID:iDCopy logEventSubmitter:v16 settingKeyPathBlockList:listCopy];

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_82165 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_82165, &__block_literal_global_82166);
  }

  v3 = logCategory__hmf_once_v14_82167;

  return v3;
}

uint64_t __45__HMDCompositeSettingsController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_82167;
  logCategory__hmf_once_v14_82167 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end