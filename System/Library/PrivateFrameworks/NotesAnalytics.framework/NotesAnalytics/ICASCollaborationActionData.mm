@interface ICASCollaborationActionData
- (ICASCollaborationActionData)initWithCollaborationActionType:(id)type collaborationInviteStep:(id)step collaborationMethod:(id)method;
- (id)toDict;
@end

@implementation ICASCollaborationActionData

- (ICASCollaborationActionData)initWithCollaborationActionType:(id)type collaborationInviteStep:(id)step collaborationMethod:(id)method
{
  typeCopy = type;
  stepCopy = step;
  methodCopy = method;
  v15.receiver = self;
  v15.super_class = ICASCollaborationActionData;
  v12 = [(ICASCollaborationActionData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collaborationActionType, type);
    objc_storeStrong(&v13->_collaborationInviteStep, step);
    objc_storeStrong(&v13->_collaborationMethod, method);
  }

  return v13;
}

- (id)toDict
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"collaborationActionType";
  collaborationActionType = [(ICASCollaborationActionData *)self collaborationActionType];
  if (collaborationActionType)
  {
    collaborationActionType2 = [(ICASCollaborationActionData *)self collaborationActionType];
  }

  else
  {
    collaborationActionType2 = objc_opt_new();
  }

  v5 = collaborationActionType2;
  v15[0] = collaborationActionType2;
  v14[1] = @"collaborationInviteStep";
  collaborationInviteStep = [(ICASCollaborationActionData *)self collaborationInviteStep];
  if (collaborationInviteStep)
  {
    collaborationInviteStep2 = [(ICASCollaborationActionData *)self collaborationInviteStep];
  }

  else
  {
    collaborationInviteStep2 = objc_opt_new();
  }

  v8 = collaborationInviteStep2;
  v15[1] = collaborationInviteStep2;
  v14[2] = @"collaborationMethod";
  collaborationMethod = [(ICASCollaborationActionData *)self collaborationMethod];
  if (collaborationMethod)
  {
    collaborationMethod2 = [(ICASCollaborationActionData *)self collaborationMethod];
  }

  else
  {
    collaborationMethod2 = objc_opt_new();
  }

  v11 = collaborationMethod2;
  v15[2] = collaborationMethod2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end