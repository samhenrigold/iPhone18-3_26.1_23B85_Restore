@interface HUSiriLanguageOptionItem
+ (id)selectionKeyForLanguageOption:(id)option withOptionStyle:(unint64_t)style;
- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)style adapter:(id)adapter languageOption:(id)option;
- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)style siriLanguageOptionsManager:(id)manager languageOption:(id)option;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUSiriLanguageOptionItem

- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)style adapter:(id)adapter languageOption:(id)option
{
  adapterCopy = adapter;
  optionCopy = option;
  v14.receiver = self;
  v14.super_class = HUSiriLanguageOptionItem;
  v11 = [(HUSiriLanguageOptionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_optionStyle = style;
    objc_storeStrong(&v11->_adapter, adapter);
    objc_storeStrong(&v12->_languageOption, option);
  }

  return v12;
}

- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)style siriLanguageOptionsManager:(id)manager languageOption:(id)option
{
  managerCopy = manager;
  optionCopy = option;
  v14.receiver = self;
  v14.super_class = HUSiriLanguageOptionItem;
  v11 = [(HUSiriLanguageOptionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_optionStyle = style;
    objc_storeStrong(&v11->_siriLanguageOptionsManager, manager);
    objc_storeStrong(&v12->_languageOption, option);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke;
  v26[3] = &unk_277DBA4B8;
  v26[4] = self;
  v5 = __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke(v26);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  siriLanguageOptionsManager = [(HUSiriLanguageOptionItem *)self siriLanguageOptionsManager];
  selectedLanguageOption = [siriLanguageOptionsManager selectedLanguageOption];

  if (!selectedLanguageOption)
  {
    selectedLanguageOption = [(HUSiriLanguageOptionItem *)self adapter];

    if (selectedLanguageOption)
    {
      adapter = [(HUSiriLanguageOptionItem *)self adapter];
      selectedLanguageOption = [adapter selectedLanguageOption];
    }
  }

  v9 = MEMORY[0x277CCABB0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke_2;
  v24[3] = &unk_277DBB548;
  v24[4] = self;
  v10 = selectedLanguageOption;
  v25 = v10;
  v12 = [v9 numberWithBool:{__56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke_2(v24, v11)}];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  adapter2 = [(HUSiriLanguageOptionItem *)self adapter];

  if (adapter2)
  {
    v14 = MEMORY[0x277CBEB58];
    adapter3 = [(HUSiriLanguageOptionItem *)self adapter];
    homeKitSettingsVendor = [adapter3 homeKitSettingsVendor];
    v17 = [v14 setWithObject:homeKitSettingsVendor];

    adapter4 = [(HUSiriLanguageOptionItem *)self adapter];
    settings = [adapter4 settings];
    [v17 na_safeAddObject:settings];

    [v4 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13DA8]];
    adapter5 = [(HUSiriLanguageOptionItem *)self adapter];
    keyPaths = [adapter5 keyPaths];
    [v4 setObject:keyPaths forKeyedSubscript:*MEMORY[0x277D14098]];
  }

  v22 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v22;
}

__CFString *__56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) optionStyle];
  switch(v2)
  {
    case 2:
      v3 = [*(a1 + 32) languageOption];
      v4 = [v3 localizedOutputVoiceColor];
      goto LABEL_7;
    case 1:
      v3 = [*(a1 + 32) languageOption];
      v4 = [v3 localizedOutputVoiceAccent];
      goto LABEL_7;
    case 0:
      v3 = [*(a1 + 32) languageOption];
      v4 = [v3 localizedRecognitionLanguage];
LABEL_7:
      v5 = v4;

      goto LABEL_9;
  }

  v5 = &stru_2823E0EE8;
LABEL_9:

  return v5;
}

uint64_t __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_class() selectionKeyForLanguageOption:*(a1 + 40) withOptionStyle:{objc_msgSend(*(a1 + 32), "optionStyle")}];
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) languageOption];
  v6 = [v4 selectionKeyForLanguageOption:v5 withOptionStyle:{objc_msgSend(*(a1 + 32), "optionStyle")}];

  v7 = [v3 isEqual:v6];
  return v7;
}

+ (id)selectionKeyForLanguageOption:(id)option withOptionStyle:(unint64_t)style
{
  optionCopy = option;
  v6 = optionCopy;
  switch(style)
  {
    case 2uLL:
      localizedOutputVoiceColor = [optionCopy localizedOutputVoiceColor];
      goto LABEL_7;
    case 1uLL:
      localizedOutputVoiceColor = [optionCopy outputLanguage];
      goto LABEL_7;
    case 0uLL:
      localizedOutputVoiceColor = [optionCopy recognitionLanguage];
LABEL_7:
      v8 = localizedOutputVoiceColor;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

@end