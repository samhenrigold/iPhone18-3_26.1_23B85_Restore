@interface ISRootMigrator
- (BOOL)performMigration;
- (id)appendRegionalVariantsToLanguageIdentifiers:(id)identifiers regionCode:(id)code;
- (id)importPreferredLanguagesForPreferences:(id)preferences;
- (id)importPreferredLanguages_macOS_10_9_forPreferences:(id)preferences;
- (id)performMigrationForUserPreferences:(id)preferences systemPreferences:(id)systemPreferences;
- (void)performMigration;
- (void)updateAppleLanguagesSchemaVersionToCurrent;
@end

@implementation ISRootMigrator

- (BOOL)performMigration
{
  v165 = *MEMORY[0x277D85DE8];
  v3 = MigrationLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    previousVersion = [(ISMigrator *)self previousVersion];
    currentVersion = [(ISMigrator *)self currentVersion];
    *buf = 136316418;
    v154 = "[ISRootMigrator performMigration]";
    v155 = 2114;
    v156 = previousVersion;
    v157 = 2114;
    v158 = currentVersion;
    v159 = 1024;
    isErase = [(ISRootMigrator *)self isErase];
    v161 = 1024;
    isRestoreFromBackup = [(ISRootMigrator *)self isRestoreFromBackup];
    v163 = 1024;
    newUserAccount = [(ISMigrator *)self newUserAccount];
    _os_log_impl(&dword_22DFB7000, v3, OS_LOG_TYPE_DEFAULT, "%s: previousVersion='%{public}@', currentVersion='%{public}@', isErase=%d, isRestoreFromBackup=%d, isNewUserAccount=%d", buf, 0x32u);
  }

  previousVersion2 = [(ISMigrator *)self previousVersion];
  currentVersion2 = [(ISMigrator *)self currentVersion];
  if ([currentVersion2 length])
  {
    if (![previousVersion2 length])
    {
      v8 = currentVersion2;
      v9 = currentVersion2;

      v11 = MigrationLogger(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v154 = "[ISRootMigrator performMigration]";
        _os_log_impl(&dword_22DFB7000, v11, OS_LOG_TYPE_DEFAULT, "%s: failed to retrieve previousVersion. Setting it to currentVersion.", buf, 0xCu);
      }

      previousVersion2 = v9;
      currentVersion2 = v8;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if ([(ISMigrator *)self platform]== 1)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    }

    else
    {
      dictionary2 = 0;
    }

    platform = [(ISMigrator *)self platform];
    v118 = previousVersion2;
    selfCopy = self;
    v117 = currentVersion2;
    if (platform - 3 < 2)
    {
      v14 = MEMORY[0x277CBEB58];
      v150[0] = @"AppleLanguages";
      v150[1] = @"AppleLocale";
      v15 = MEMORY[0x277CBEA60];
      v16 = v150;
      v18 = 2;
    }

    else
    {
      if (platform == 2)
      {
        v14 = MEMORY[0x277CBEB58];
        v151[0] = @"AppleLanguages";
        v151[1] = @"AppleLocale";
        v151[2] = @"PreferredLanguages";
        v15 = MEMORY[0x277CBEA60];
        v16 = v151;
      }

      else
      {
        if (platform != 1)
        {
          v20 = 0;
          goto LABEL_25;
        }

        v14 = MEMORY[0x277CBEB58];
        v152[0] = @"AppleLanguages";
        v152[1] = @"AppleLocale";
        v152[2] = @"AppleUserLanguages";
        v15 = MEMORY[0x277CBEA60];
        v16 = v152;
      }

      v18 = 3;
    }

    v19 = [v15 arrayWithObjects:v16 count:v18];
    v20 = [v14 setWithArray:v19];

LABEL_25:
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v141 objects:v149 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v142;
      v25 = *MEMORY[0x277CBF008];
      v26 = *MEMORY[0x277CBF040];
      v27 = *MEMORY[0x277CBF010];
      v28 = *MEMORY[0x277CBF020];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v142 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v141 + 1) + 8 * i);
          v31 = CFPreferencesCopyValue(v30, v25, v26, v27);
          if (v31)
          {
            [dictionary setObject:v31 forKeyedSubscript:v30];
          }

          if (dictionary2)
          {
            v32 = CFPreferencesCopyValue(v30, v25, v28, v27);
            if (v32)
            {
              [dictionary2 setObject:v32 forKeyedSubscript:v30];
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v141 objects:v149 count:16];
      }

      while (v23);
    }

    v33 = [(ISRootMigrator *)selfCopy performMigrationForUserPreferences:dictionary systemPreferences:dictionary2];
    v34 = MigrationLogger(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v154 = "[ISRootMigrator performMigration]";
      v155 = 2114;
      v156 = dictionary;
      v157 = 2114;
      v158 = v33;
      _os_log_impl(&dword_22DFB7000, v34, OS_LOG_TYPE_DEFAULT, "%s: oldPreferences = %{public}@, migratedPreferences = %{public}@", buf, 0x20u);
    }

    allKeys = [v33 allKeys];
    [v21 addObjectsFromArray:allKeys];

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    obj = v21;
    v36 = [obj countByEnumeratingWithState:&v137 objects:v148 count:16];
    v125 = v33;
    if (v36)
    {
      v37 = v36;
      v38 = *v138;
      v39 = *MEMORY[0x277CBF008];
      v124 = *MEMORY[0x277CBF040];
      applicationID = *MEMORY[0x277CBF010];
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v138 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v137 + 1) + 8 * j);
          v42 = [dictionary objectForKeyedSubscript:v41];
          v43 = [v33 objectForKeyedSubscript:v41];
          if (!v42 || ([v42 isEqual:v43] & 1) == 0)
          {
            if ([(__CFString *)v41 isEqualToString:@"AppleLanguages"])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = [v43 count];
                if (v44)
                {
                  v45 = MigrationLogger(v44);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    v46 = [v43 componentsJoinedByString:{@", "}];
                    *buf = 136315394;
                    v154 = "[ISRootMigrator performMigration]";
                    v155 = 2114;
                    v156 = v46;
                    _os_log_impl(&dword_22DFB7000, v45, OS_LOG_TYPE_DEFAULT, "%s: [NSLocale setPreferredLanguages:@[ %{public}@ ]]", buf, 0x16u);

                    v33 = v125;
                  }

                  [MEMORY[0x277CBEAF8] setPreferredLanguages:v43];
                }
              }
            }

            else
            {
              v47 = [(__CFString *)v41 isEqualToString:@"AppleLocale"];
              if (v47)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v43 length])
                {
                  [MEMORY[0x277CBEAF8] setLocaleOnly:v43];
                }
              }

              else
              {
                v48 = MigrationLogger(v47);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v154 = "[ISRootMigrator performMigration]";
                  v155 = 2114;
                  v156 = v41;
                  v157 = 2114;
                  v158 = v43;
                  _os_log_impl(&dword_22DFB7000, v48, OS_LOG_TYPE_DEFAULT, "%s: CFPreferencesSetValue(%{public}@ → %{public}@)", buf, 0x20u);
                }

                CFPreferencesSetValue(v41, v43, v39, v124, applicationID);
                v33 = v125;
              }
            }
          }
        }

        v37 = [obj countByEnumeratingWithState:&v137 objects:v148 count:16];
      }

      while (v37);
    }

    v49 = [v118 compare:@"17A450" options:64];
    v50 = selfCopy;
    platform2 = [(ISMigrator *)selfCopy platform];
    if (platform2 == 2)
    {
      if (v49 == -1 || (platform2 = [(ISRootMigrator *)selfCopy isRestoreFromBackup], platform2))
      {
        v52 = MigrationLogger(platform2);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v154 = "[ISRootMigrator performMigration]";
          _os_log_impl(&dword_22DFB7000, v52, OS_LOG_TYPE_DEFAULT, "%s: Migrating to enable watch mirroring.", buf, 0xCu);
        }

        v53 = objc_opt_new();
        [v53 initializeMirrorSettings];
      }
    }

    v54 = *MEMORY[0x277CBF040];
    v55 = *MEMORY[0x277CBF010];
    applicationIDa = *MEMORY[0x277CBF008];
    v56 = CFPreferencesCopyValue(@"AppleLanguagesSchemaVersion", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    unsignedIntegerValue = [v56 unsignedIntegerValue];

    v59 = MigrationLogger(v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v154 = "[ISRootMigrator performMigration]";
      v155 = 2048;
      v156 = unsignedIntegerValue;
      _os_log_impl(&dword_22DFB7000, v59, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguagesSchemaVersion = %lu", buf, 0x16u);
    }

    v60 = CFPreferencesCopyValue(@"AppleLanguages", applicationIDa, v54, v55);
    v61 = CFPreferencesCopyValue(@"AppleLocale", applicationIDa, v54, v55);
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v63 = dictionary3;
    if (v60)
    {
      [dictionary3 setObject:v60 forKeyedSubscript:@"AppleLanguages"];
    }

    if (v61)
    {
      [v63 setObject:v61 forKeyedSubscript:@"AppleLocale"];
    }

    v121 = [(ISMigrator *)IP_emptyPreferences_migrator migratorFromSchemaVersion:unsignedIntegerValue];
    v64 = [v121 performMigrationForPreferences:v63];
    v65 = [v64 mutableCopy];

    v66 = [v65 objectForKeyedSubscript:@"AppleLanguages"];
    v120 = v65;
    if (v66 && (v67 = v66, [v65 objectForKeyedSubscript:@"AppleLocale"], v68 = objc_claimAutoreleasedReturnValue(), v68, v67, v68))
    {
      v115 = v61;
      v116 = v60;
      previousVersion3 = [(ISMigrator *)selfCopy previousVersion];
      currentVersion3 = [(ISMigrator *)selfCopy currentVersion];
      [(ISMigrator *)IP_pa_Arab_to_pa_Aran_migrator migratorFromVersion:previousVersion3 toVersion:currentVersion3];
      v72 = v71 = unsignedIntegerValue;
      v147[0] = v72;
      v73 = [(ISMigrator *)IP_HK_MO_yue_Hant_migrator migratorFromSchemaVersion:v71];
      v147[1] = v73;
      v74 = [(ISMigrator *)IP_unsupportedVariantsAddedByKeyboards_migrator migratorFromSchemaVersion:v71];
      v147[2] = v74;
      v75 = [(ISMigrator *)IP_advancedSettings_migrator migratorFromSchemaVersion:v71];
      v147[3] = v75;
      v114 = v71;
      v76 = [(ISMigrator *)IP_scriptSelection_migrator migratorFromSchemaVersion:v71];
      v147[4] = v76;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:5];

      v79 = MigrationLogger(v78);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v154 = "[ISRootMigrator performMigration]";
        v155 = 2114;
        v156 = v65;
        _os_log_impl(&dword_22DFB7000, v79, OS_LOG_TYPE_DEFAULT, "%s: Preferences before running preferences migrators: %{public}@", buf, 0x16u);
      }

      v80 = v65;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v81 = v77;
      v82 = [v81 countByEnumeratingWithState:&v133 objects:v146 count:16];
      v83 = v81;
      if (v82)
      {
        v84 = v82;
        v85 = *v134;
        do
        {
          v86 = 0;
          v87 = v80;
          do
          {
            if (*v134 != v85)
            {
              objc_enumerationMutation(v83);
            }

            v80 = [*(*(&v133 + 1) + 8 * v86) performMigrationForPreferences:v87];

            v89 = MigrationLogger(v88);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              v90 = objc_opt_class();
              v91 = NSStringFromClass(v90);
              *buf = 136315650;
              v154 = "[ISRootMigrator performMigration]";
              v155 = 2114;
              v156 = v91;
              v157 = 2114;
              v158 = v80;
              _os_log_impl(&dword_22DFB7000, v89, OS_LOG_TYPE_DEFAULT, "%s: Preferences after running <%{public}@>: %{public}@", buf, 0x20u);
            }

            ++v86;
            v87 = v80;
          }

          while (v84 != v86);
          v81 = v83;
          v84 = [v83 countByEnumeratingWithState:&v133 objects:v146 count:16];
        }

        while (v84);
      }

      v92 = [v80 objectForKeyedSubscript:@"AppleLanguages"];
      objc_opt_class();
      v33 = v125;
      if (objc_opt_isKindOfClass())
      {
        if ([v92 count])
        {
          v93 = [v116 isEqualToArray:v92];
          if ((v93 & 1) == 0)
          {
            v94 = MigrationLogger(v93);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v154 = "[ISRootMigrator performMigration]";
              v155 = 2114;
              v156 = v92;
              _os_log_impl(&dword_22DFB7000, v94, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguages changed to %{public}@. Writing to disk.", buf, 0x16u);
            }

            [MEMORY[0x277CBEAF8] setPreferredLanguages:v92];
          }
        }
      }

      v113 = v92;
      v95 = [v80 objectForKeyedSubscript:@"AppleLocale"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v95 length])
        {
          v96 = [v115 isEqualToString:v95];
          if ((v96 & 1) == 0)
          {
            v97 = MigrationLogger(v96);
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v154 = "[ISRootMigrator performMigration]";
              v155 = 2114;
              v156 = v95;
              _os_log_impl(&dword_22DFB7000, v97, OS_LOG_TYPE_DEFAULT, "%s: AppleLocale changed to %{public}@. Writing to disk.", buf, 0x16u);
            }

            [MEMORY[0x277CBEAF8] setLocaleOnly:v95];
          }
        }
      }

      v112 = v95;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v98 = v80;
      v99 = [v98 countByEnumeratingWithState:&v129 objects:v145 count:16];
      if (v99)
      {
        v100 = v99;
        v101 = *v130;
        do
        {
          for (k = 0; k != v100; ++k)
          {
            if (*v130 != v101)
            {
              objc_enumerationMutation(v98);
            }

            v103 = *(*(&v129 + 1) + 8 * k);
            if (([(__CFString *)v103 isEqualToString:@"AppleLanguages", v112]& 1) == 0 && ([(__CFString *)v103 isEqualToString:@"AppleLocale"]& 1) == 0)
            {
              v104 = [v98 objectForKeyedSubscript:v103];
              v105 = MigrationLogger(v104);
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v154 = "[ISRootMigrator performMigration]";
                v155 = 2114;
                v156 = v103;
                v157 = 2114;
                v158 = v104;
                _os_log_impl(&dword_22DFB7000, v105, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ set to %{public}@. Writing to disk.", buf, 0x20u);
              }

              CFPreferencesSetAppValue(v103, v104, applicationIDa);
              CFPreferencesAppSynchronize(applicationIDa);

              v33 = v125;
            }
          }

          v100 = [v98 countByEnumeratingWithState:&v129 objects:v145 count:16];
        }

        while (v100);
      }

      currentVersion2 = v117;
      previousVersion2 = v118;
      v50 = selfCopy;
      unsignedIntegerValue = v114;
      v61 = v115;
      v60 = v116;
      v106 = v121;
    }

    else
    {
      v107 = MigrationLogger(v66);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v154 = "[ISRootMigrator performMigration]";
        v155 = 2114;
        v156 = v60;
        v157 = 2114;
        v158 = v61;
        v83 = v107;
        _os_log_impl(&dword_22DFB7000, v107, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguages (%{public}@) or AppleLocale (%{public}@) is nil. Skipping preferences migrators.", buf, 0x20u);
      }

      else
      {
        v83 = v107;
      }

      currentVersion2 = v117;
      v106 = v121;
      previousVersion2 = v118;
    }

    v108 = [(ISMigrator *)IP_advancedSettings_migrator migratorFromSchemaVersion:unsignedIntegerValue];
    [v108 migrateOtherSystemSettings];

    if (unsignedIntegerValue == 5400)
    {
      v110 = MigrationLogger(v109);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v154 = "[ISRootMigrator performMigration]";
        _os_log_impl(&dword_22DFB7000, v110, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguagesSchemaVersion is up to date.", buf, 0xCu);
      }
    }

    else
    {
      [(ISRootMigrator *)v50 updateAppleLanguagesSchemaVersionToCurrent];
    }

    goto LABEL_122;
  }

  platform3 = [(ISMigrator *)self platform];
  if (platform3 == 1 || (platform3 = [(ISRootMigrator *)self isErase], !platform3))
  {
    v17 = MigrationLogger(platform3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ISRootMigrator *)v17 performMigration];
    }
  }

  else
  {
    [(ISRootMigrator *)self updateAppleLanguagesSchemaVersionToCurrent];
  }

LABEL_122:

  return 1;
}

- (void)updateAppleLanguagesSchemaVersionToCurrent
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MigrationLogger(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ISRootMigrator updateAppleLanguagesSchemaVersionToCurrent]";
    v8 = 2048;
    v9 = 5400;
    _os_log_impl(&dword_22DFB7000, v2, OS_LOG_TYPE_DEFAULT, "%s: Updating AppleLanguagesSchemaVersion to %lu.", &v6, 0x16u);
  }

  v3 = *MEMORY[0x277CBF008];
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"AppleLanguagesSchemaVersion", &unk_2841A23F8, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  CFPreferencesSynchronize(v3, v4, v5);
}

- (id)performMigrationForUserPreferences:(id)preferences systemPreferences:(id)systemPreferences
{
  v101 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  systemPreferencesCopy = systemPreferences;
  previousVersion = [(ISMigrator *)self previousVersion];
  currentVersion = [(ISMigrator *)self currentVersion];
  v10 = [preferencesCopy mutableCopy];
  if ([(ISMigrator *)self platform]== 1)
  {
    newUserAccount = [(ISMigrator *)self newUserAccount];
    if (newUserAccount)
    {
      v12 = MigrationLogger(newUserAccount);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        v95 = 2114;
        v96 = previousVersion;
        v97 = 2114;
        v98 = currentVersion;
        _os_log_impl(&dword_22DFB7000, v12, OS_LOG_TYPE_DEFAULT, "%s: (1) previousVersion=%{public}@, currentVersion=%{public}@ → Performing New User Account Migration", buf, 0x20u);
      }

      v14 = MigrationLogger(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [systemPreferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
        v16 = [v15 componentsJoinedByString:{@", "}];
        *buf = 136315394;
        v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        v95 = 2114;
        v96 = v16;
        _os_log_impl(&dword_22DFB7000, v14, OS_LOG_TYPE_DEFAULT, "%s: (1) System AppleLanguages= [ %{public}@ ]", buf, 0x16u);
      }

      v18 = MigrationLogger(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [systemPreferencesCopy objectForKeyedSubscript:@"AppleLocale"];
        *buf = 136315394;
        v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        v95 = 2114;
        v96 = v19;
        _os_log_impl(&dword_22DFB7000, v18, OS_LOG_TYPE_DEFAULT, "%s: (1) System AppleLocale= %{public}@", buf, 0x16u);
      }

      v20 = [systemPreferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
      [v10 setObject:v20 forKeyedSubscript:@"AppleLanguages"];

      firstObject3 = [systemPreferencesCopy objectForKeyedSubscript:@"AppleLocale"];
      [v10 setObject:firstObject3 forKeyedSubscript:@"AppleLocale"];
      goto LABEL_69;
    }
  }

  platform = [(ISMigrator *)self platform];
  if ((platform - 1) > 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = off_2787A8F00[platform - 1];
  }

  v24 = MigrationLogger(platform);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
    v95 = 2114;
    v96 = previousVersion;
    v97 = 2114;
    v98 = currentVersion;
    v99 = 2114;
    v100 = v23;
    _os_log_impl(&dword_22DFB7000, v24, OS_LOG_TYPE_DEFAULT, "%s: (1) previousVersion=%{public}@, currentVersion=%{public}@, upgradeThreshold=%{public}@", buf, 0x2Au);
  }

  v87 = currentVersion;
  if ([previousVersion compare:v23 options:64] == -1)
  {
    v25 = [currentVersion compare:v23 options:64];
    if (v25 != -1)
    {
      v26 = MigrationLogger(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        v95 = 2114;
        v96 = previousVersion;
        v97 = 2114;
        v98 = currentVersion;
        v99 = 2114;
        v100 = v23;
        _os_log_impl(&dword_22DFB7000, v26, OS_LOG_TYPE_DEFAULT, "%s: (1) { %{public}@, %{public}@, %{public}@ } qualifies for AppleLanguages migration", buf, 0x2Au);
      }

      v27 = [v10 objectForKeyedSubscript:@"AppleLanguages"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 || (isKindOfClass = [v27 count]) == 0)
      {
        v30 = MigrationLogger(isKindOfClass);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
          _os_log_impl(&dword_22DFB7000, v30, OS_LOG_TYPE_DEFAULT, "%s: (1) current AppleLanguages is nil/empty; skipping migration", buf, 0xCu);
        }

        goto LABEL_33;
      }

      v29 = previousVersion;
      v30 = [(ISRootMigrator *)self importPreferredLanguagesForPreferences:v10];
      v31 = MEMORY[0x277CBEAF8];
      v32 = [v10 objectForKeyedSubscript:@"AppleLocale"];
      v33 = [v31 localeWithLocaleIdentifier:v32];
      v34 = [v33 objectForKey:*MEMORY[0x277CBE690]];

      if (v34)
      {
        [(ISRootMigrator *)self appendRegionalVariantsToLanguageIdentifiers:v30 regionCode:v34];
        v30 = v36 = v30;
      }

      else
      {
        v36 = MigrationLogger(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        }
      }

      previousVersion = v29;

      [v10 setObject:v30 forKeyedSubscript:@"AppleLanguages"];
      if ([(ISMigrator *)self platform]== 1)
      {
        v37 = @"AppleUserLanguages";
      }

      else
      {
        if ([(ISMigrator *)self platform]!= 2)
        {
LABEL_32:

          currentVersion = v87;
LABEL_33:

          goto LABEL_34;
        }

        v37 = @"PreferredLanguages";
      }

      [v10 setObject:0 forKeyedSubscript:v37];
      goto LABEL_32;
    }
  }

LABEL_34:
  v38 = [v10 objectForKeyedSubscript:@"AppleLanguages"];
  if ([v38 count] == 1)
  {
    v81 = v10;
    v83 = previousVersion;
    v84 = systemPreferencesCopy;
    v85 = preferencesCopy;
    v39 = MEMORY[0x277CBEAF8];
    firstObject = [v38 firstObject];
    v41 = [v39 localeWithLocaleIdentifier:firstObject];

    languageCode = [v41 languageCode];
    v82 = v41;
    countryCode = [v41 countryCode];
    baseSystemLanguages = [MEMORY[0x277CBEAF8] baseSystemLanguages];
    v44 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(baseSystemLanguages, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v45 = baseSystemLanguages;
    v46 = [v45 countByEnumeratingWithState:&v88 objects:v92 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v89;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v89 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v88 + 1) + 8 * i)];
          languageCode2 = [v50 languageCode];
          [v44 addObject:languageCode2];
        }

        v47 = [v45 countByEnumeratingWithState:&v88 objects:v92 count:16];
      }

      while (v47);
    }

    v52 = languageCode;
    v53 = [languageCode length];
    v10 = v81;
    v54 = countryCode;
    if (v53)
    {
      if (([v44 containsObject:v52] & 1) == 0)
      {
        if ([countryCode length])
        {
          v55 = MEMORY[0x277CCA8D8];
          baseSystemLanguages2 = [MEMORY[0x277CBEAF8] baseSystemLanguages];
          v57 = [v55 preferredLocalizationsFromArray:baseSystemLanguages2 forPreferences:v38];
          firstObject2 = [v57 firstObject];
          v59 = [firstObject2 isEqualToString:@"en"];

          v54 = countryCode;
          if (v59)
          {
            v60 = [MEMORY[0x277CBEAF8] languageFromLanguage:@"en" byReplacingRegion:countryCode];
            v61 = [v60 length];
            if (v61)
            {
              v62 = MigrationLogger(v61);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v63 = [v38 componentsJoinedByString:{@", "}];
                *buf = 136315394;
                v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
                v95 = 2114;
                v96 = v63;
                _os_log_impl(&dword_22DFB7000, v62, OS_LOG_TYPE_DEFAULT, "%s: (2) AppleLanguages = [ %{public}@ ] qualifies for AppleLanguages repair", buf, 0x16u);
              }

              v64 = [v38 arrayByAddingObject:v60];
              [v81 setObject:v64 forKeyedSubscript:@"AppleLanguages"];

              v66 = MigrationLogger(v65);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                log = v66;
                v67 = [v38 componentsJoinedByString:{@", "}];
                v68 = [v81 objectForKeyedSubscript:@"AppleLanguages"];
                v69 = [v68 componentsJoinedByString:{@", "}];
                *buf = 136315650;
                v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
                v95 = 2114;
                v96 = v67;
                v97 = 2114;
                v98 = v69;
                _os_log_impl(&dword_22DFB7000, log, OS_LOG_TYPE_DEFAULT, "%s: (2) AppleLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);

                v66 = log;
              }
            }
          }
        }
      }
    }

    systemPreferencesCopy = v84;
    preferencesCopy = v85;
    previousVersion = v83;
    currentVersion = v87;
  }

  v70 = [v10 objectForKeyedSubscript:@"AppleLanguages"];
  firstObject3 = [v70 firstObject];

  v71 = [v10 objectForKeyedSubscript:@"AppleLocale"];
  v72 = [firstObject3 length];
  if (v72 && (v72 = [v71 length]) != 0)
  {
    v73 = MigrationLogger(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      v95 = 2114;
      v96 = v71;
      _os_log_impl(&dword_22DFB7000, v73, OS_LOG_TYPE_DEFAULT, "%s: (3) AppleLocale = %{public}@", buf, 0x16u);
    }

    v74 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifier:v71 withNewLanguageIdentifier:firstObject3];
    v75 = [v74 length];
    v76 = MigrationLogger(v75);
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
    if (v75)
    {
      if (v77)
      {
        v78 = [v10 objectForKeyedSubscript:@"AppleLocale"];
        *buf = 136315650;
        v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        v95 = 2114;
        v96 = v78;
        v97 = 2114;
        v98 = v74;
        _os_log_impl(&dword_22DFB7000, v76, OS_LOG_TYPE_DEFAULT, "%s: (3) AppleLocale = %{public}@ → %{public}@", buf, 0x20u);
      }

      [v10 setObject:v74 forKeyedSubscript:@"AppleLocale"];
    }

    else
    {
      if (v77)
      {
        *buf = 136315138;
        v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        _os_log_impl(&dword_22DFB7000, v76, OS_LOG_TYPE_DEFAULT, "%s: (3) new AppleLocale is nil/empty; skipping migration", buf, 0xCu);
      }
    }

    currentVersion = v87;
  }

  else
  {
    v74 = MigrationLogger(v72);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v94 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      _os_log_impl(&dword_22DFB7000, v74, OS_LOG_TYPE_DEFAULT, "%s: (3) current AppleLanguages or AppleLocale is nil/empty; skipping migration", buf, 0xCu);
    }
  }

LABEL_69:

  return v10;
}

- (id)appendRegionalVariantsToLanguageIdentifiers:(id)identifiers regionCode:(id)code
{
  v60 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  codeCopy = code;
  v42 = codeCopy;
  if (codeCopy)
  {
    v7 = codeCopy;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = identifiersCopy;
    obj = identifiersCopy;
    v9 = orderedSet;
    v41 = orderedSet;
    v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (!v44)
    {
      goto LABEL_16;
    }

    v10 = *v46;
    v11 = *MEMORY[0x277CBE690];
    v12 = 0x277CBE000uLL;
    v39 = *MEMORY[0x277CBE690];
    v40 = *v46;
    while (1)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = [*(v12 + 2808) componentsFromLocaleIdentifier:v14];
        v16 = v7;
        v17 = [*(v12 + 2808) languageFromLanguage:v14 byReplacingRegion:v7];
        v18 = [v15 objectForKeyedSubscript:v11];

        if (!v18)
        {
          v19 = v14;
          v14 = v17;
LABEL_13:
          v27 = v9;
          goto LABEL_14;
        }

        v19 = [*(v12 + 2808) baseLanguageFromLanguage:v14];
        if (![v19 length])
        {
          goto LABEL_13;
        }

        v20 = MEMORY[0x277CCA8D8];
        v50[0] = v19;
        v50[1] = v14;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
        v49 = v17;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
        v23 = [v20 preferredLocalizationsFromArray:v21 forPreferences:v22];
        firstObject = [v23 firstObject];
        v25 = [firstObject isEqualToString:v14];

        if (v25)
        {
          v26 = v17;

          v14 = v26;
        }

        v27 = v41;
        v16 = v42;
        v11 = v39;
        v10 = v40;
LABEL_14:

        v9 = v27;
        [v27 addObject:v14];

        v12 = 0x277CBE000;
        v7 = v16;
      }

      v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (!v44)
      {
LABEL_16:

        v29 = MigrationLogger(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [obj componentsJoinedByString:{@", "}];
          array = [v9 array];
          v32 = [array componentsJoinedByString:{@", "}];
          *buf = 136315906;
          v53 = "[ISRootMigrator appendRegionalVariantsToLanguageIdentifiers:regionCode:]";
          v54 = 2114;
          v55 = v7;
          v56 = 2114;
          v57 = v30;
          v58 = 2114;
          v59 = v32;
          _os_log_impl(&dword_22DFB7000, v29, OS_LOG_TYPE_DEFAULT, "%s: regionCode=%{public}@, preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x2Au);

          v9 = v41;
        }

        array2 = [v9 array];

        identifiersCopy = v38;
        goto LABEL_22;
      }
    }
  }

  v34 = MigrationLogger(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [identifiersCopy componentsJoinedByString:{@", "}];
    v36 = [identifiersCopy componentsJoinedByString:{@", "}];
    *buf = 136315906;
    v53 = "[ISRootMigrator appendRegionalVariantsToLanguageIdentifiers:regionCode:]";
    v54 = 2114;
    v55 = 0;
    v56 = 2114;
    v57 = v35;
    v58 = 2114;
    v59 = v36;
    _os_log_impl(&dword_22DFB7000, v34, OS_LOG_TYPE_DEFAULT, "%s: regionCode=%{public}@, preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x2Au);
  }

  array2 = identifiersCopy;
  v7 = 0;
LABEL_22:

  return array2;
}

- (id)importPreferredLanguagesForPreferences:(id)preferences
{
  v36 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  previousVersion = [(ISMigrator *)self previousVersion];
  v6 = [preferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
  if ([(ISMigrator *)self platform]== 1)
  {
    v7 = [preferencesCopy objectForKeyedSubscript:@"AppleUserLanguages"];
    v8 = v7;
    if (v7)
    {
      v9 = MigrationLogger(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
        _os_log_impl(&dword_22DFB7000, v9, OS_LOG_TYPE_DEFAULT, "%s: Possible upgrade from macOS 10.9", buf, 0xCu);
      }

      v10 = @"10.9";
      if ([previousVersion compare:@"10.9" options:64] != -1 && objc_msgSend(previousVersion, "compare:options:", @"10.10", 64) == -1)
      {
        v11 = MigrationLogger(-1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v31 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
          _os_log_impl(&dword_22DFB7000, v11, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from macOS 10.9", buf, 0xCu);
        }

        v12 = [(ISRootMigrator *)self importPreferredLanguages_macOS_10_9_forPreferences:preferencesCopy];
LABEL_20:
        v19 = v12;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v10 = @"10.9";
    }
  }

  else
  {
    platform = [(ISMigrator *)self platform];
    if (platform != 2)
    {
      goto LABEL_23;
    }

    v14 = [preferencesCopy objectForKeyedSubscript:@"PreferredLanguages"];
    v8 = v14;
    if (v14 || (v14 = [v6 count], v14 == 1))
    {
      v15 = MigrationLogger(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
        _os_log_impl(&dword_22DFB7000, v15, OS_LOG_TYPE_DEFAULT, "%s: Possible upgrade from iOS 8", buf, 0xCu);
      }

      v10 = @"12A";
      if ([previousVersion compare:@"12A" options:64] != -1 && objc_msgSend(previousVersion, "compare:options:", @"13A", 64) == -1)
      {
        v16 = MigrationLogger(-1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v6 componentsJoinedByString:{@", "}];
          v18 = [v6 componentsJoinedByString:{@", "}];
          *buf = 136315650;
          v31 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
          v32 = 2114;
          v33 = v17;
          v34 = 2114;
          v35 = v18;
          _os_log_impl(&dword_22DFB7000, v16, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from iOS 8; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
        }

        v12 = v6;
        goto LABEL_20;
      }
    }

    else
    {
      v10 = @"12A";
    }
  }

  platform = [previousVersion compare:v10 options:64];
  if (platform == -1)
  {
    platform = [v6 count];
    if (platform)
    {
      v23 = [v6 objectAtIndexedSubscript:0];
      v24 = [IntlUtility normalizedLanguageIDFromString:v23];
      v29 = v24;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

      v8 = MigrationLogger(v25);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 componentsJoinedByString:{@", "}];
        v27 = [v19 componentsJoinedByString:{@", "}];
        *buf = 136315650;
        v31 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
        v32 = 2114;
        v33 = v26;
        v34 = 2114;
        v35 = v27;
        _os_log_impl(&dword_22DFB7000, v8, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from pre-{ macOS 10.9, iOS 8 }; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
      }

      goto LABEL_29;
    }
  }

LABEL_23:
  v20 = MigrationLogger(platform);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v6 componentsJoinedByString:{@", "}];
    v22 = [v6 componentsJoinedByString:{@", "}];
    *buf = 136315650;
    v31 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
    v32 = 2114;
    v33 = v21;
    v34 = 2114;
    v35 = v22;
    _os_log_impl(&dword_22DFB7000, v20, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from post-{ macOS 10.9, iOS 8 }; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
  }

  v19 = v6;
LABEL_30:

  return v19;
}

- (id)importPreferredLanguages_macOS_10_9_forPreferences:(id)preferences
{
  v32[1] = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [preferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
  v25 = preferencesCopy;
  v6 = [preferencesCopy objectForKeyedSubscript:@"AppleUserLanguages"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
    v8 = MigrationLogger(unsignedIntegerValue);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[ISRootMigrator importPreferredLanguages_macOS_10_9_forPreferences:]";
      v28 = 1024;
      LODWORD(v29) = unsignedIntegerValue;
      _os_log_impl(&dword_22DFB7000, v8, OS_LOG_TYPE_DEFAULT, "%s: preferredLanguagesIndex=%u", buf, 0x12u);
    }

    if (unsignedIntegerValue && unsignedIntegerValue <= [v5 count])
    {
      v9 = [v5 subarrayWithRange:{0, unsignedIntegerValue}];
      [array addObjectsFromArray:v9];
    }
  }

  if (![array count] && objc_msgSend(v5, "count"))
  {
    v10 = [v5 objectAtIndexedSubscript:0];
    v32[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [array setArray:v11];
  }

  v24 = v5;
  v12 = [array count];
  if (v12)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      v15 = [array objectAtIndexedSubscript:i];
      v16 = [IntlUtility normalizedLanguageIDFromString:v15];

      v18 = MigrationLogger(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [array objectAtIndexedSubscript:i];
        *buf = 136315650;
        v27 = "[ISRootMigrator importPreferredLanguages_macOS_10_9_forPreferences:]";
        v28 = 2114;
        v29 = v19;
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&dword_22DFB7000, v18, OS_LOG_TYPE_DEFAULT, "%s: Normalizing %{public}@ → %{public}@", buf, 0x20u);
      }

      [array setObject:v16 atIndexedSubscript:i];
    }
  }

  v20 = MigrationLogger(v12);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v24 componentsJoinedByString:{@", "}];
    v22 = [array componentsJoinedByString:{@", "}];
    *buf = 136315650;
    v27 = "[ISRootMigrator importPreferredLanguages_macOS_10_9_forPreferences:]";
    v28 = 2114;
    v29 = v21;
    v30 = 2114;
    v31 = v22;
    _os_log_impl(&dword_22DFB7000, v20, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from macOS 10.9; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
  }

  return array;
}

- (void)performMigration
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ISRootMigrator performMigration]";
  _os_log_fault_impl(&dword_22DFB7000, log, OS_LOG_TYPE_FAULT, "%s: failed to retrieve currentVersion; bailing...", &v1, 0xCu);
}

@end