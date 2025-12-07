@interface TTSAXResourceMigrationUtilities
+ (id)sharedInstance;
- (id)updatedIdentifierForLegacyIdentifier:(id)identifier withLanguageCode:(id)code;
@end

@implementation TTSAXResourceMigrationUtilities

+ (id)sharedInstance
{
  if (qword_1ED970E90 != -1)
  {
    sub_1A9577C00();
  }

  v3 = qword_1ED970EA8;

  return v3;
}

- (id)updatedIdentifierForLegacyIdentifier:(id)identifier withLanguageCode:(id)code
{
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  codeCopy = code;
  if (identifierCopy)
  {
    if ([identifierCopy isEqualToString:@"com.apple.speech.voice.Alex"])
    {
      v7 = @"com.apple.speech.synthesis.voice.Alex";
      goto LABEL_37;
    }

    lowercaseString = [identifierCopy lowercaseString];
    v10 = [&unk_1F1D0F858 containsObject:lowercaseString];

    if (v10)
    {
      v7 = identifierCopy;
      goto LABEL_37;
    }

    v11 = +[TTSRegexCache sharedInstance];
    v12 = [v11 regexForString:@"com\\.apple\\.ttsbundle\\.(?<name>[^.]*)\\-(?<quality>premium|compact|Premium|Compact)$" atStart:1];

    v13 = [v12 firstMatchInString:identifierCopy options:2 range:{0, objc_msgSend(identifierCopy, "length")}];
    if (![v13 numberOfRanges])
    {
      v7 = identifierCopy;
LABEL_36:

      goto LABEL_37;
    }

    v14 = [v13 rangeWithName:@"name"];
    v16 = v15;
    v17 = [v13 rangeWithName:@"quality"];
    v19 = v18;
    v20 = [identifierCopy substringWithRange:{v14, v16}];
    v21 = [identifierCopy substringWithRange:{v17, v19}];
    lowercaseString2 = [v21 lowercaseString];

    if ([v20 containsString:@"-"])
    {
      v23 = [v20 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F1CFF8D8];
      lowercaseString3 = [v23 lowercaseString];
      capitalizedString = [lowercaseString3 capitalizedString];

      v20 = capitalizedString;
    }

    v26 = [lowercaseString2 isEqualToString:@"compact"];
    if (codeCopy && v26)
    {
      v27 = +[TTSLocaleUtilities sharedInstance];
      v7 = [v27 defaultVoiceIdentifierForGeneralLanguageCode:codeCopy];

      if (v7)
      {
LABEL_35:

        goto LABEL_36;
      }
    }

    else if (!codeCopy)
    {
      v29 = +[TTSAXResourceManager sharedInstance];
      v28 = [v29 languageCodeForResourceName:v20 withType:4];

      goto LABEL_20;
    }

    v28 = codeCopy;
LABEL_20:
    v30 = _BuiltInVoiceNameForLanguage(v28);
    v44 = lowercaseString2;
    v45 = v12;
    v43 = v30;
    if (v30)
    {
      v31 = v30;
      if (([v30 isEqualToString:v20] & 1) == 0)
      {
        v32 = +[TTSAXResourceManager sharedInstance];
        v33 = [v32 languageCodeForResourceName:v20 withType:4];

        if (([v28 isEqualToString:v33] & 1) == 0)
        {
          v34 = v31;

          v20 = v34;
        }
      }

      v35 = v28;
    }

    else
    {
      v36 = AXTTSLogResourceMigration();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v28;
        _os_log_impl(&dword_1A9324000, v36, OS_LOG_TYPE_INFO, "No voice found for language code: %@. Attempting to find fallback language.", buf, 0xCu);
      }

      v37 = +[TTSAXResourceManager sharedInstance];
      v35 = [v37 languageCodeForResourceName:v20 withType:4];

      v38 = AXTTSLogResourceMigration();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v35;
        _os_log_impl(&dword_1A9324000, v38, OS_LOG_TYPE_INFO, "Found fallback language code: %@", buf, 0xCu);
      }
    }

    v39 = MEMORY[0x1E696AEC0];
    lowercaseString2 = v44;
    if ([v44 isEqualToString:@"compact"])
    {
      v40 = @"compact";
    }

    else
    {
      v40 = @"enhanced";
    }

    capitalizedString2 = [v20 capitalizedString];
    v7 = [v39 stringWithFormat:@"%@.%@.%@.%@", @"com.apple.voice", v40, v35, capitalizedString2];

    v12 = v45;
    goto LABEL_35;
  }

  v8 = AXTTSLogResourceMigration();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577C14(codeCopy, v8);
  }

  v7 = 0;
LABEL_37:

  return v7;
}

@end