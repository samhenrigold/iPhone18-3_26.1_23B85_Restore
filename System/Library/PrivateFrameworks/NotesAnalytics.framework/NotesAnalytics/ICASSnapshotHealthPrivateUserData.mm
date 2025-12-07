@interface ICASSnapshotHealthPrivateUserData
- (ICASSnapshotHealthPrivateUserData)initWithSnapshotHealthPrivateUserID:(id)d;
- (id)toDict;
@end

@implementation ICASSnapshotHealthPrivateUserData

- (ICASSnapshotHealthPrivateUserData)initWithSnapshotHealthPrivateUserID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSnapshotHealthPrivateUserData;
  v6 = [(ICASSnapshotHealthPrivateUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotHealthPrivateUserID, d);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"snapshotHealthPrivateUserID";
  snapshotHealthPrivateUserID = [(ICASSnapshotHealthPrivateUserData *)self snapshotHealthPrivateUserID];
  if (snapshotHealthPrivateUserID)
  {
    snapshotHealthPrivateUserID2 = [(ICASSnapshotHealthPrivateUserData *)self snapshotHealthPrivateUserID];
  }

  else
  {
    snapshotHealthPrivateUserID2 = objc_opt_new();
  }

  v5 = snapshotHealthPrivateUserID2;
  v9[0] = snapshotHealthPrivateUserID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end