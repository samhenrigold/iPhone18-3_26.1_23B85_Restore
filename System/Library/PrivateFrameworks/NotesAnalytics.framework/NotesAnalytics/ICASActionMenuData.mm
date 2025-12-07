@interface ICASActionMenuData
- (ICASActionMenuData)initWithActionMenuUsageType:(id)type actionMenuContextType:(id)contextType actionMenuSelection:(id)selection;
- (id)toDict;
@end

@implementation ICASActionMenuData

- (ICASActionMenuData)initWithActionMenuUsageType:(id)type actionMenuContextType:(id)contextType actionMenuSelection:(id)selection
{
  typeCopy = type;
  contextTypeCopy = contextType;
  selectionCopy = selection;
  v15.receiver = self;
  v15.super_class = ICASActionMenuData;
  v12 = [(ICASActionMenuData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionMenuUsageType, type);
    objc_storeStrong(&v13->_actionMenuContextType, contextType);
    objc_storeStrong(&v13->_actionMenuSelection, selection);
  }

  return v13;
}

- (id)toDict
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"actionMenuUsageType";
  actionMenuUsageType = [(ICASActionMenuData *)self actionMenuUsageType];
  if (actionMenuUsageType)
  {
    actionMenuUsageType2 = [(ICASActionMenuData *)self actionMenuUsageType];
  }

  else
  {
    actionMenuUsageType2 = objc_opt_new();
  }

  v5 = actionMenuUsageType2;
  v15[0] = actionMenuUsageType2;
  v14[1] = @"actionMenuContextType";
  actionMenuContextType = [(ICASActionMenuData *)self actionMenuContextType];
  if (actionMenuContextType)
  {
    actionMenuContextType2 = [(ICASActionMenuData *)self actionMenuContextType];
  }

  else
  {
    actionMenuContextType2 = objc_opt_new();
  }

  v8 = actionMenuContextType2;
  v15[1] = actionMenuContextType2;
  v14[2] = @"actionMenuSelection";
  actionMenuSelection = [(ICASActionMenuData *)self actionMenuSelection];
  if (actionMenuSelection)
  {
    actionMenuSelection2 = [(ICASActionMenuData *)self actionMenuSelection];
  }

  else
  {
    actionMenuSelection2 = objc_opt_new();
  }

  v11 = actionMenuSelection2;
  v15[2] = actionMenuSelection2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end