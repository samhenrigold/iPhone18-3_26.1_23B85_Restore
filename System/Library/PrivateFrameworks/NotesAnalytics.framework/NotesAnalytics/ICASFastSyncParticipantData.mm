@interface ICASFastSyncParticipantData
- (ICASFastSyncParticipantData)initWithCountOfUniqueAccounts:(id)accounts countOfUniqueDevices:(id)devices;
- (id)toDict;
@end

@implementation ICASFastSyncParticipantData

- (ICASFastSyncParticipantData)initWithCountOfUniqueAccounts:(id)accounts countOfUniqueDevices:(id)devices
{
  accountsCopy = accounts;
  devicesCopy = devices;
  v12.receiver = self;
  v12.super_class = ICASFastSyncParticipantData;
  v9 = [(ICASFastSyncParticipantData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countOfUniqueAccounts, accounts);
    objc_storeStrong(&v10->_countOfUniqueDevices, devices);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"countOfUniqueAccounts";
  countOfUniqueAccounts = [(ICASFastSyncParticipantData *)self countOfUniqueAccounts];
  if (countOfUniqueAccounts)
  {
    countOfUniqueAccounts2 = [(ICASFastSyncParticipantData *)self countOfUniqueAccounts];
  }

  else
  {
    countOfUniqueAccounts2 = objc_opt_new();
  }

  v5 = countOfUniqueAccounts2;
  v11[1] = @"countOfUniqueDevices";
  v12[0] = countOfUniqueAccounts2;
  countOfUniqueDevices = [(ICASFastSyncParticipantData *)self countOfUniqueDevices];
  if (countOfUniqueDevices)
  {
    countOfUniqueDevices2 = [(ICASFastSyncParticipantData *)self countOfUniqueDevices];
  }

  else
  {
    countOfUniqueDevices2 = objc_opt_new();
  }

  v8 = countOfUniqueDevices2;
  v12[1] = countOfUniqueDevices2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end