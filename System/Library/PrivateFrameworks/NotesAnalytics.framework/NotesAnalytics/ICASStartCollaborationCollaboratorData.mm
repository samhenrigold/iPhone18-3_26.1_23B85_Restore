@interface ICASStartCollaborationCollaboratorData
- (ICASStartCollaborationCollaboratorData)initWithStartInvitedCount:(id)count startAcceptedCount:(id)acceptedCount;
- (id)toDict;
@end

@implementation ICASStartCollaborationCollaboratorData

- (ICASStartCollaborationCollaboratorData)initWithStartInvitedCount:(id)count startAcceptedCount:(id)acceptedCount
{
  countCopy = count;
  acceptedCountCopy = acceptedCount;
  v12.receiver = self;
  v12.super_class = ICASStartCollaborationCollaboratorData;
  v9 = [(ICASStartCollaborationCollaboratorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startInvitedCount, count);
    objc_storeStrong(&v10->_startAcceptedCount, acceptedCount);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"startInvitedCount";
  startInvitedCount = [(ICASStartCollaborationCollaboratorData *)self startInvitedCount];
  if (startInvitedCount)
  {
    startInvitedCount2 = [(ICASStartCollaborationCollaboratorData *)self startInvitedCount];
  }

  else
  {
    startInvitedCount2 = objc_opt_new();
  }

  v5 = startInvitedCount2;
  v11[1] = @"startAcceptedCount";
  v12[0] = startInvitedCount2;
  startAcceptedCount = [(ICASStartCollaborationCollaboratorData *)self startAcceptedCount];
  if (startAcceptedCount)
  {
    startAcceptedCount2 = [(ICASStartCollaborationCollaboratorData *)self startAcceptedCount];
  }

  else
  {
    startAcceptedCount2 = objc_opt_new();
  }

  v8 = startAcceptedCount2;
  v12[1] = startAcceptedCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end