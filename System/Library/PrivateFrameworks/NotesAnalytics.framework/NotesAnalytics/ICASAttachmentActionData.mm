@interface ICASAttachmentActionData
- (ICASAttachmentActionData)initWithActionType:(id)type;
- (id)toDict;
@end

@implementation ICASAttachmentActionData

- (ICASAttachmentActionData)initWithActionType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASAttachmentActionData;
  v6 = [(ICASAttachmentActionData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionType, type);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"actionType";
  actionType = [(ICASAttachmentActionData *)self actionType];
  if (actionType)
  {
    actionType2 = [(ICASAttachmentActionData *)self actionType];
  }

  else
  {
    actionType2 = objc_opt_new();
  }

  v5 = actionType2;
  v9[0] = actionType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end