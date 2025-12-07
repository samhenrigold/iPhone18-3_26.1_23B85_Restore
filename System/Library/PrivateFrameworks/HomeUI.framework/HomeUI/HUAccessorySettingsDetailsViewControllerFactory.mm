@interface HUAccessorySettingsDetailsViewControllerFactory
+ (id)_viewControllerForIdentifier:(id)identifier groupItem:(id)item;
+ (id)_viewControllerForIdentifier:(id)identifier settingItem:(id)item;
+ (id)viewControllerForGroup:(id)group;
+ (id)viewControllerForSettingItem:(id)item;
@end

@implementation HUAccessorySettingsDetailsViewControllerFactory

+ (id)_viewControllerForIdentifier:(id)identifier groupItem:(id)item
{
  itemCopy = item;
  identifierCopy = identifier;
  if (_MergedGlobals_639 != -1)
  {
    dispatch_once(&_MergedGlobals_639, &__block_literal_global_261_0);
  }

  v7 = qword_2811221F8;
  v8 = [v7 objectForKeyedSubscript:identifierCopy];

  v9 = [[v8 alloc] initWithAccessoryGroupItem:itemCopy];

  return v9;
}

void __90__HUAccessorySettingsDetailsViewControllerFactory__viewControllerForIdentifier_groupItem___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5[11] = *MEMORY[0x277D85DE8];
  v4[0] = @"AnalyticsLogsViewController";
  v5[0] = objc_opt_class();
  v4[1] = @"AnalyticsViewController";
  v5[1] = objc_opt_class();
  v4[2] = @"AppleMusicAccountViewController";
  v5[2] = objc_opt_class();
  v4[3] = @"DataAnalyticsViewController";
  v5[3] = objc_opt_class();
  v4[4] = @"DoorbellChimeDevicesViewController";
  v5[4] = objc_opt_class();
  v4[5] = @"PlaybackInfluencesViewController";
  v5[5] = objc_opt_class();
  v4[6] = @"ProfilesViewController";
  v5[6] = objc_opt_class();
  v4[7] = @"SiriHistoryViewController";
  v5[7] = objc_opt_class();
  v4[8] = @"SiriOutputVoiceViewController";
  v5[8] = objc_opt_class();
  v4[9] = @"SiriPersonalRequestsViewController";
  v5[9] = objc_opt_class();
  v4[10] = @"SiriRecognitionLanguageViewController";
  v5[10] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:11];
  v3 = qword_2811221F8;
  qword_2811221F8 = v2;
}

+ (id)_viewControllerForIdentifier:(id)identifier settingItem:(id)item
{
  itemCopy = item;
  identifierCopy = identifier;
  if (qword_281122200 != -1)
  {
    dispatch_once(&qword_281122200, &__block_literal_global_311_0);
  }

  v7 = qword_281122208;
  v8 = [v7 objectForKeyedSubscript:identifierCopy];

  v9 = [[v8 alloc] initWithAccessorySettingItem:itemCopy];

  return v9;
}

void __92__HUAccessorySettingsDetailsViewControllerFactory__viewControllerForIdentifier_settingItem___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"AnnounceSettingsViewController";
  v5[0] = objc_opt_class();
  v4[1] = @"AudioAnalysisSettingsViewController";
  v5[1] = objc_opt_class();
  v4[2] = @"PlaybackInfluencesViewController";
  v5[2] = objc_opt_class();
  v4[3] = @"SiriTriggerPhraseSettingDetailsViewController";
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = qword_281122208;
  qword_281122208 = v2;
}

+ (id)viewControllerForSettingItem:(id)item
{
  itemCopy = item;
  entity = [itemCopy entity];
  userInfo = [entity userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D13390]];

  settingKeyPath = [itemCopy settingKeyPath];
  LODWORD(userInfo) = [settingKeyPath isEqualToString:*MEMORY[0x277D139E0]];

  if (userInfo)
  {

    v7 = @"SiriTriggerPhraseSettingDetailsViewController";
  }

  else if (!v7)
  {
    v10 = 0;
LABEL_8:
    v11 = [[HUAccessorySettingsDetailsViewController alloc] initWithAccessorySettingItem:itemCopy];

    goto LABEL_9;
  }

  v9 = [self _viewControllerForIdentifier:v7 settingItem:itemCopy];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = v9;
  if (([(HUAccessorySettingsDetailsViewController *)v9 conformsToProtocol:&unk_2824FE920]& 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

+ (id)viewControllerForGroup:(id)group
{
  groupCopy = group;
  entity = [groupCopy entity];
  userInfo = [entity userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D13390]];

  if (!v7)
  {
    v9 = 0;
LABEL_6:
    v10 = [[HUAccessorySettingsDetailsViewController alloc] initWithAccessoryGroupItem:groupCopy];

    goto LABEL_7;
  }

  v8 = [self _viewControllerForIdentifier:v7 groupItem:groupCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  v10 = v8;
  if (([(HUAccessorySettingsDetailsViewController *)v8 conformsToProtocol:&unk_2824FE920]& 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

@end