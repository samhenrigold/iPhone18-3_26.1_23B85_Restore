@interface CSLPRFAppSwitcherEditing
+ (void)logAppSwitcherEditingAction:(unint64_t)action fromSource:(unint64_t)source;
@end

@implementation CSLPRFAppSwitcherEditing

+ (void)logAppSwitcherEditingAction:(unint64_t)action fromSource:(unint64_t)source
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = @"gizmoSettings";
  if (!source)
  {
    v4 = @"gizmoSwitcher";
  }

  if (source == 2)
  {
    v5 = @"companionSettings";
  }

  else
  {
    v5 = v4;
  }

  v11[0] = @"source";
  v11[1] = @"action";
  v6 = @"remove";
  if (action == 1)
  {
    v6 = @"add";
  }

  if (action == 2)
  {
    v6 = @"reorder";
  }

  v12[0] = v5;
  v12[1] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = v6;
  v9 = v5;
  v10 = [v7 dictionaryWithObjects:v12 forKeys:v11 count:2];

  AnalyticsSendEvent();
}

@end