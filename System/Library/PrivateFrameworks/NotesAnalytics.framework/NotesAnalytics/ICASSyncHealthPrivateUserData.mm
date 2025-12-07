@interface ICASSyncHealthPrivateUserData
- (ICASSyncHealthPrivateUserData)initWithSyncHealthPrivateUserID:(id)d;
- (id)toDict;
@end

@implementation ICASSyncHealthPrivateUserData

- (ICASSyncHealthPrivateUserData)initWithSyncHealthPrivateUserID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSyncHealthPrivateUserData;
  v6 = [(ICASSyncHealthPrivateUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncHealthPrivateUserID, d);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"syncHealthPrivateUserID";
  syncHealthPrivateUserID = [(ICASSyncHealthPrivateUserData *)self syncHealthPrivateUserID];
  if (syncHealthPrivateUserID)
  {
    syncHealthPrivateUserID2 = [(ICASSyncHealthPrivateUserData *)self syncHealthPrivateUserID];
  }

  else
  {
    syncHealthPrivateUserID2 = objc_opt_new();
  }

  v5 = syncHealthPrivateUserID2;
  v9[0] = syncHealthPrivateUserID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end