@interface ICASInternalUserData
- (ICASInternalUserData)initWithRawUserDSID:(id)d;
- (id)toDict;
@end

@implementation ICASInternalUserData

- (ICASInternalUserData)initWithRawUserDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASInternalUserData;
  v6 = [(ICASInternalUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawUserDSID, d);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"rawUserDSID";
  rawUserDSID = [(ICASInternalUserData *)self rawUserDSID];
  if (rawUserDSID)
  {
    rawUserDSID2 = [(ICASInternalUserData *)self rawUserDSID];
  }

  else
  {
    rawUserDSID2 = objc_opt_new();
  }

  v5 = rawUserDSID2;
  v9[0] = rawUserDSID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end