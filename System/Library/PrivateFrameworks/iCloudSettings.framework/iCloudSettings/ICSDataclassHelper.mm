@interface ICSDataclassHelper
+ (id)attributedLinkForDataclass:(id)dataclass;
+ (id)dataclassAttributedLinkDictionary;
+ (id)dataclassSubTitleDictionary:(id)dictionary idmsAccount:(id)account securityLevel:(unint64_t)level;
+ (id)dataclassTitleDictionary;
+ (id)healthDataclassSubtitleForSecurityLevel:(unint64_t)level;
+ (id)localizedSubTitleForDataclass:(id)dataclass idmsAccount:(id)account securityLevel:(unint64_t)level;
+ (id)localizedTitleForDataclass:(id)dataclass;
+ (unint64_t)currentSecurityLevel:(unint64_t)level;
@end

@implementation ICSDataclassHelper

+ (id)localizedTitleForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  dataclassTitleDictionary = [self dataclassTitleDictionary];
  v6 = [dataclassTitleDictionary objectForKeyedSubscript:dataclassCopy];

  return v6;
}

+ (id)localizedSubTitleForDataclass:(id)dataclass idmsAccount:(id)account securityLevel:(unint64_t)level
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dataclassCopy = dataclass;
  v10 = LogSubsystem(dataclassCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = accountCopy;
    v16 = 2048;
    levelCopy = level;
    _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "localizedSubTitleForDataclass idmsAccount: %@, securityLevel: %lu", &v14, 0x16u);
  }

  v11 = [self dataclassSubTitleDictionary:dataclassCopy idmsAccount:accountCopy securityLevel:level];
  v12 = [v11 objectForKeyedSubscript:dataclassCopy];

  return v12;
}

+ (id)attributedLinkForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  dataclassAttributedLinkDictionary = [self dataclassAttributedLinkDictionary];
  v6 = [dataclassAttributedLinkDictionary objectForKeyedSubscript:dataclassCopy];

  return v6;
}

+ (id)dataclassTitleDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICSDataclassHelper_dataclassTitleDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (dataclassTitleDictionary_onceToken != -1)
  {
    dispatch_once(&dataclassTitleDictionary_onceToken, block);
  }

  v2 = dataclassTitleDictionary_dataclassTitleMap;

  return v2;
}

void __46__ICSDataclassHelper_dataclassTitleDictionary__block_invoke(uint64_t a1)
{
  v33 = objc_alloc_init(MEMORY[0x277CEC7B8]);
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NOTES_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v5 = [v33 deviceClass];
  v6 = [v2 stringWithFormat:v4, v5];
  [v1 setObject:v6 forKeyedSubscript:*MEMORY[0x277CB89F8]];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MESSAGES_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v10 = [v33 deviceClass];
  v11 = [v7 stringWithFormat:v9, v10];
  [v1 setObject:v11 forKeyedSubscript:*MEMORY[0x277CB89D8]];

  v12 = [MEMORY[0x277CEC7A0] sharedManager];
  v13 = *MEMORY[0x277CB89A0];
  LODWORD(v9) = [v12 appIsNeitherInstalledOrPlaceholder:*MEMORY[0x277CB89A0]];

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = v15;
  if (v9)
  {
    v17 = @"HEALTH_DATA_DATACLASS_TITLE";
  }

  else
  {
    v17 = @"HEALTH_DATACLASS_TITLE";
  }

  v18 = [v15 localizedStringForKey:v17 value:&stru_288487370 table:@"Localizable-AppleID"];
  v19 = [v33 deviceClass];
  v20 = [v14 stringWithFormat:v18, v19];
  [v1 setObject:v20 forKeyedSubscript:v13];

  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"KEYCHAIN_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v24 = [v33 deviceClass];
  v25 = [v21 stringWithFormat:v23, v24];
  [v1 setObject:v25 forKeyedSubscript:*MEMORY[0x277CB89C0]];

  v26 = MEMORY[0x277CCACA8];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"ICLOUD_DRIVE_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v29 = [v33 deviceClass];
  v30 = [v26 stringWithFormat:v28, v29];
  [v1 setObject:v30 forKeyedSubscript:*MEMORY[0x277CB8A58]];

  v31 = [v1 copy];
  v32 = dataclassTitleDictionary_dataclassTitleMap;
  dataclassTitleDictionary_dataclassTitleMap = v31;
}

+ (id)dataclassSubTitleDictionary:(id)dictionary idmsAccount:(id)account securityLevel:(unint64_t)level
{
  v8 = [dictionary isEqualToString:*MEMORY[0x277CB89A0]];
  if (account && v8)
  {
    v9 = [self healthDataclassSubtitleForSecurityLevel:level];
  }

  else
  {
    v10 = LogSubsystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "IdMS account is nil. Proceeding with default subtitles for Health dataclass.", buf, 2u);
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"HEALTH_DATACLASS_SUBTITLE_DEFAULT"];
    v9 = [v11 localizedStringForKey:v12 value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__ICSDataclassHelper_dataclassSubTitleDictionary_idmsAccount_securityLevel___block_invoke;
  v18[3] = &unk_27A666A68;
  v19 = v9;
  selfCopy = self;
  v13 = dataclassSubTitleDictionary_idmsAccount_securityLevel__onceToken;
  v14 = v9;
  if (v13 != -1)
  {
    dispatch_once(&dataclassSubTitleDictionary_idmsAccount_securityLevel__onceToken, v18);
  }

  v15 = dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap;
  v16 = dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap;

  return v15;
}

void __76__ICSDataclassHelper_dataclassSubTitleDictionary_idmsAccount_securityLevel___block_invoke(uint64_t a1)
{
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NOTES_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v12 setObject:v3 forKeyedSubscript:*MEMORY[0x277CB89F8]];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MESSAGES_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v12 setObject:v5 forKeyedSubscript:*MEMORY[0x277CB89D8]];

  [v12 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x277CB89A0]];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"KEYCHAIN_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x277CB89C0]];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ICLOUD_DRIVE_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x277CB8A58]];

  v10 = [v12 copy];
  v11 = dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap;
  dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap = v10;
}

+ (id)healthDataclassSubtitleForSecurityLevel:(unint64_t)level
{
  v3 = [self currentSecurityLevel:level];
  if (v3 > 3)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(&off_27A666A88 + v3);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v4];
    v7 = [v5 localizedStringForKey:v6 value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  return v7;
}

+ (unint64_t)currentSecurityLevel:(unint64_t)level
{
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  v6 = 1;
  if (level != 4)
  {
    v6 = 2;
  }

  v7 = 3;
  if (level != 4)
  {
    v7 = 0;
  }

  if (hasLocalSecret)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

+ (id)dataclassAttributedLinkDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ICSDataclassHelper_dataclassAttributedLinkDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (dataclassAttributedLinkDictionary_onceToken != -1)
  {
    dispatch_once(&dataclassAttributedLinkDictionary_onceToken, block);
  }

  v2 = dataclassAttributedLinkDictionary_dataclassAttributedLinksMap;

  return v2;
}

void __55__ICSDataclassHelper_dataclassAttributedLinkDictionary__block_invoke(uint64_t a1)
{
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v1 localizedStringForKey:@"NOTES_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v11 setObject:v2 forKeyedSubscript:*MEMORY[0x277CB89F8]];

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MESSAGES_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v11 setObject:v4 forKeyedSubscript:*MEMORY[0x277CB89D8]];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HEALTH_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v11 setObject:v6 forKeyedSubscript:*MEMORY[0x277CB89A0]];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ICLOUD_DRIVE_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x277CB8A58]];

  v9 = [v11 copy];
  v10 = dataclassAttributedLinkDictionary_dataclassAttributedLinksMap;
  dataclassAttributedLinkDictionary_dataclassAttributedLinksMap = v9;
}

@end