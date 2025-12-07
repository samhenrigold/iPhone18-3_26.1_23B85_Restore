@interface ICASChecklistUsageData
- (ICASChecklistUsageData)initWithChecklistAction:(id)action moveCheckedItemsToBottomSwitchSetting:(id)setting;
- (id)toDict;
@end

@implementation ICASChecklistUsageData

- (ICASChecklistUsageData)initWithChecklistAction:(id)action moveCheckedItemsToBottomSwitchSetting:(id)setting
{
  actionCopy = action;
  settingCopy = setting;
  v12.receiver = self;
  v12.super_class = ICASChecklistUsageData;
  v9 = [(ICASChecklistUsageData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_checklistAction, action);
    objc_storeStrong(&v10->_moveCheckedItemsToBottomSwitchSetting, setting);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"checklistAction";
  checklistAction = [(ICASChecklistUsageData *)self checklistAction];
  if (checklistAction)
  {
    checklistAction2 = [(ICASChecklistUsageData *)self checklistAction];
  }

  else
  {
    checklistAction2 = objc_opt_new();
  }

  v5 = checklistAction2;
  v11[1] = @"moveCheckedItemsToBottomSwitchSetting";
  v12[0] = checklistAction2;
  moveCheckedItemsToBottomSwitchSetting = [(ICASChecklistUsageData *)self moveCheckedItemsToBottomSwitchSetting];
  if (moveCheckedItemsToBottomSwitchSetting)
  {
    moveCheckedItemsToBottomSwitchSetting2 = [(ICASChecklistUsageData *)self moveCheckedItemsToBottomSwitchSetting];
  }

  else
  {
    moveCheckedItemsToBottomSwitchSetting2 = objc_opt_new();
  }

  v8 = moveCheckedItemsToBottomSwitchSetting2;
  v12[1] = moveCheckedItemsToBottomSwitchSetting2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end