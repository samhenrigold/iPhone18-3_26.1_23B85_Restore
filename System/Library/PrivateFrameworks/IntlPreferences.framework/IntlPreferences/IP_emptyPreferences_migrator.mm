@interface IP_emptyPreferences_migrator
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_emptyPreferences_migrator

- (id)performMigrationForPreferences:(id)preferences
{
  v27 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if (-[ISMigrator platform](self, "platform") != 2 || -[ISMigrator previousSchemaVersion](self, "previousSchemaVersion") >= 0xFA0 || ([preferencesCopy objectForKeyedSubscript:@"AppleLocale"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(preferencesCopy, "objectForKeyedSubscript:", @"AppleLanguages"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = preferencesCopy;
  }

  else
  {
    v10 = MigrationLogger(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[IP_emptyPreferences_migrator performMigrationForPreferences:]";
      v25 = 2114;
      v26 = preferencesCopy;
      _os_log_impl(&dword_22DFB7000, v10, OS_LOG_TYPE_DEFAULT, "%s: Languages or locale is empty. Preferences: %{public}@", &v23, 0x16u);
    }

    v8 = [preferencesCopy mutableCopy];
    v11 = [v8 objectForKeyedSubscript:@"AppleLanguages"];

    if (!v11)
    {
      [v8 setObject:&unk_2841A2500 forKeyedSubscript:@"AppleLanguages"];
    }

    v12 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];

    if (v12)
    {
      v13 = MEMORY[0x277CBEAF8];
      v14 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
      v15 = [v13 localeWithLocaleIdentifier:v14];
      regionCode = [v15 regionCode];
    }

    else
    {
      regionCode = @"US";
    }

    v17 = [IPLanguageListManager alloc];
    v18 = [v8 objectForKeyedSubscript:@"AppleLanguages"];
    v19 = [(IPLanguageListManager *)v17 initWithPreferredLanguages:v18];

    v20 = MEMORY[0x277CBEAF8];
    deviceLanguage = [(IPLanguageListManager *)v19 deviceLanguage];
    v22 = [v20 _localeIdentifierForLanguage:deviceLanguage region:regionCode];
    [v8 setObject:v22 forKeyedSubscript:@"AppleLocale"];
  }

  return v8;
}

@end