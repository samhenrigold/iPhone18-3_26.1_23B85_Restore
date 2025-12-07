@interface BBPersistentStoreMigrator
+ (BOOL)removeSavedChronologicalSectionInfos:(id)infos;
+ (id)_sectionIdentifiersForNonDefaultSectionCategoriesFromSectionInfos:(id)infos;
+ (id)_sectionIdentifiersForWeeAppsFromSectionInfos:(id)infos;
+ (void)_migrateContentPreviewSettings:(id)settings;
+ (void)_migrateSectionIDs:(id)ds;
+ (void)migrateSectionInfoForStore:(id)store;
@end

@implementation BBPersistentStoreMigrator

+ (void)migrateSectionInfoForStore:(id)store
{
  v70 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  hasSectionInfoLegacyFile = [storeCopy hasSectionInfoLegacyFile];
  if (hasSectionInfoLegacyFile)
  {
    v6 = BBLogMigration;
    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Migrating from old sectionInfo file to new versionedSectionInfo file.", buf, 2u);
    }

    readSectionInfoLegacy = [storeCopy readSectionInfoLegacy];
    unsignedIntegerValue = 0;
  }

  else
  {
    readSectionInfoWithVersionNumberForMigration = [storeCopy readSectionInfoWithVersionNumberForMigration];
    readSectionInfoLegacy = [readSectionInfoWithVersionNumberForMigration objectForKey:@"sectionInfo"];
    v10 = [readSectionInfoWithVersionNumberForMigration objectForKey:@"sectionInfoVersionNumber"];
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  _sectionIDsToMigrate = [self _sectionIDsToMigrate];
  allKeys = [readSectionInfoLegacy allKeys];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __56__BBPersistentStoreMigrator_migrateSectionInfoForStore___block_invoke;
  v60[3] = &unk_278D2B5B8;
  v13 = _sectionIDsToMigrate;
  v61 = v13;
  v14 = [allKeys bs_containsObjectPassingTest:v60];

  if (unsignedIntegerValue > 2)
  {
    v15 = BBLogMigration;
    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "Due to a downgrade we are deleting the versioned section info file. Notification Settings will be corrupt.", buf, 2u);
    }

    [storeCopy deleteSectionInfoFile];
    BBIsInternalDevice();
  }

  if (unsignedIntegerValue < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14;
  }

  if (v16 == 1)
  {
    v43 = v14;
    v44 = unsignedIntegerValue;
    selfCopy = self;
    v47 = v13;
    v48 = storeCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [readSectionInfoLegacy allKeys];
    v17 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v57;
      do
      {
        v20 = 0;
        do
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v56 + 1) + 8 * v20);
          v22 = objc_autoreleasePoolPush();
          v23 = readSectionInfoLegacy;
          v24 = [readSectionInfoLegacy objectForKey:v21];
          v25 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v24 error:0];
          if (v25)
          {
            [dictionary setObject:v25 forKey:v21];
          }

          else
          {
            v26 = BBLogMigration;
            if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v63 = v21;
              _os_log_error_impl(&dword_241EFF000, v26, OS_LOG_TYPE_ERROR, "Decoding BBSectionInfo for sectionID %{public}@ failed", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v22);
          ++v20;
          readSectionInfoLegacy = v23;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v18);
    }

    if (v43)
    {
      [selfCopy _migrateSectionIDs:dictionary];
    }

    v13 = v47;
    storeCopy = v48;
    if (v44 != 1)
    {
      if (v44)
      {
LABEL_46:
        [storeCopy writeSectionInfo:dictionary];
        goto LABEL_47;
      }

      [selfCopy _removeVestigialSections:dictionary];
      [selfCopy _migrateContentPreviewSettings:dictionary];
      if (hasSectionInfoLegacyFile)
      {
        [v48 deleteSectionInfoLegacyFile];
      }
    }

    v46 = readSectionInfoLegacy;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    allKeys2 = [dictionary allKeys];
    v28 = [allKeys2 countByEnumeratingWithState:&v52 objects:v68 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v53;
      do
      {
        v31 = 0;
        obja = v29;
        do
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(allKeys2);
          }

          v32 = *(*(&v52 + 1) + 8 * v31);
          v33 = objc_autoreleasePoolPush();
          v34 = [dictionary objectForKey:v32];
          pushSettings = [v34 pushSettings];
          if ([v34 alertType])
          {
            v36 = (8 * pushSettings) & 0x20 | pushSettings;
          }

          else
          {
            v36 = pushSettings & 0xFFFFFFFFFFFFFFDFLL;
          }

          if (v36 != [v34 pushSettings])
          {
            v37 = BBLogMigration;
            if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v37;
              v39 = BBPushSettingsDescription([v34 pushSettings]);
              BBPushSettingsDescription(v36);
              v40 = v30;
              v42 = v41 = allKeys2;
              *buf = 138543874;
              v63 = v32;
              v64 = 2114;
              v65 = v39;
              v66 = 2114;
              v67 = v42;
              _os_log_impl(&dword_241EFF000, v38, OS_LOG_TYPE_DEFAULT, "Migrating pushSettings of BBSectionInfo for sectionID: %{public}@ from %{public}@ to %{public}@", buf, 0x20u);

              allKeys2 = v41;
              v30 = v40;
              v29 = obja;
            }

            [v34 setPushSettings:v36];
          }

          objc_autoreleasePoolPop(v33);
          ++v31;
        }

        while (v29 != v31);
        v29 = [allKeys2 countByEnumeratingWithState:&v52 objects:v68 count:16];
      }

      while (v29);
    }

    v13 = v47;
    storeCopy = v48;
    readSectionInfoLegacy = v46;
    goto LABEL_46;
  }

LABEL_47:
}

BOOL __56__BBPersistentStoreMigrator_migrateSectionInfoForStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

void __56__BBPersistentStoreMigrator_migrateSectionInfoForStore___block_invoke_23(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"tap-to-radar://new?ComponentID=500088&ComponentName=PEP%20BulletinBoard&ComponentVersion=1.0"];
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v3 openURL:v4 configuration:0 completionHandler:0];
  }
}

+ (void)_migrateSectionIDs:(id)ds
{
  v46 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  _sectionIDsToMigrate = [self _sectionIDsToMigrate];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  allKeys = [_sectionIDsToMigrate allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v26 = allKeys;
    v27 = _sectionIDsToMigrate;
    v25 = *v37;
    do
    {
      v10 = 0;
      v28 = v8;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [_sectionIDsToMigrate objectForKey:{v11, v25, v26, v27}];
        v13 = [dsCopy objectForKey:v11];
        if (v13)
        {
          v30 = v11;
          v31 = v13;
          v14 = BBLogMigration;
          if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v42 = v30;
            v43 = 2114;
            v44 = v12;
            _os_log_impl(&dword_241EFF000, v14, OS_LOG_TYPE_DEFAULT, "Migrating saved section info for %{public}@ to %{public}@", buf, 0x16u);
          }

          v15 = [dsCopy objectForKey:v12];

          if (v15)
          {
            v16 = BBLogMigration;
            if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v42 = v12;
              _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "\t*** Not migrating because section info for %{public}@ already exists!", buf, 0xCu);
            }
          }

          else
          {
            v29 = v10;
            [v31 setSectionID:v12];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            dataProviderIDs = [v31 dataProviderIDs];
            v18 = [dataProviderIDs countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v33;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v33 != v20)
                  {
                    objc_enumerationMutation(dataProviderIDs);
                  }

                  v22 = *(*(&v32 + 1) + 8 * i);
                  v23 = [dsCopy objectForKey:v22];
                  if (v23)
                  {
                    v24 = BBLogMigration;
                    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v42 = v22;
                      _os_log_impl(&dword_241EFF000, v24, OS_LOG_TYPE_DEFAULT, "\tUpdated data provider %{public}@", buf, 0xCu);
                    }

                    [v23 setFactorySectionID:v12];
                  }
                }

                v19 = [dataProviderIDs countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v19);
            }

            [dsCopy setObject:v31 forKey:v12];
            allKeys = v26;
            _sectionIDsToMigrate = v27;
            v9 = v25;
            v8 = v28;
            v10 = v29;
          }

          [dsCopy removeObjectForKey:v30];
          v13 = v31;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [allKeys countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v8);
  }
}

+ (BOOL)removeSavedChronologicalSectionInfos:(id)infos
{
  infosCopy = infos;
  v5 = [infosCopy count];
  v6 = [self _sectionIdentifiersForNonDefaultSectionCategoriesFromSectionInfos:infosCopy];
  [infosCopy removeObjectsForKeys:v6];

  v7 = [self _sectionIdentifiersForWeeAppsFromSectionInfos:infosCopy];
  [infosCopy removeObjectsForKeys:v7];

  v8 = [infosCopy count];
  return v8 != v5;
}

+ (id)_sectionIdentifiersForNonDefaultSectionCategoriesFromSectionInfos:(id)infos
{
  v18 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  array = [MEMORY[0x277CBEB18] array];
  allKeys = [infosCopy allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [infosCopy objectForKey:v10];
        if ([v11 sectionCategory])
        {
          [array addObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)_sectionIdentifiersForWeeAppsFromSectionInfos:(id)infos
{
  v18 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  array = [MEMORY[0x277CBEB18] array];
  allKeys = [infosCopy allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [infosCopy objectForKey:v10];
        if ([v11 sectionType] == 1)
        {
          [array addObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

+ (void)_migrateContentPreviewSettings:(id)settings
{
  v32 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [settingsCopy allKeys];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v22;
    *&v5 = 138543874;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [settingsCopy objectForKey:{v9, v19}];
        sectionInfoSettings = [v10 sectionInfoSettings];
        contentPreviewSetting = [sectionInfoSettings contentPreviewSetting];

        if (contentPreviewSetting == 2)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2 * (contentPreviewSetting == 1);
        }

        sectionInfoSettings2 = [v10 sectionInfoSettings];
        [sectionInfoSettings2 setContentPreviewSetting:v13];

        [settingsCopy setObject:v10 forKey:v9];
        v15 = BBLogMigration;
        if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
        {
          v16 = @"<unknown>";
          if (contentPreviewSetting <= 2)
          {
            v16 = off_278D2B5F8[contentPreviewSetting];
          }

          v17 = v15;
          v18 = BBStringFromBBContentPreviewSetting(v13);
          *buf = v19;
          v26 = v9;
          v27 = 2114;
          v28 = v16;
          v29 = 2114;
          v30 = v18;
          _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Migrated content preview setting for sectionId %{public}@. Old: %{public}@ New: %{public}@", buf, 0x20u);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v6);
  }
}

@end