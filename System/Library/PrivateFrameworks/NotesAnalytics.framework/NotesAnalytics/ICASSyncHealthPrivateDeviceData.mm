@interface ICASSyncHealthPrivateDeviceData
- (ICASSyncHealthPrivateDeviceData)initWithSyncHealthPrivateDeviceID:(id)d;
- (id)toDict;
@end

@implementation ICASSyncHealthPrivateDeviceData

- (ICASSyncHealthPrivateDeviceData)initWithSyncHealthPrivateDeviceID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSyncHealthPrivateDeviceData;
  v6 = [(ICASSyncHealthPrivateDeviceData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncHealthPrivateDeviceID, d);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"syncHealthPrivateDeviceID";
  syncHealthPrivateDeviceID = [(ICASSyncHealthPrivateDeviceData *)self syncHealthPrivateDeviceID];
  if (syncHealthPrivateDeviceID)
  {
    syncHealthPrivateDeviceID2 = [(ICASSyncHealthPrivateDeviceData *)self syncHealthPrivateDeviceID];
  }

  else
  {
    syncHealthPrivateDeviceID2 = objc_opt_new();
  }

  v5 = syncHealthPrivateDeviceID2;
  v9[0] = syncHealthPrivateDeviceID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end