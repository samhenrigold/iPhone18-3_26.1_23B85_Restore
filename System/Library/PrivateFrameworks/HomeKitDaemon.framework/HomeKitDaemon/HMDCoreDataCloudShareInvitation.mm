@interface HMDCoreDataCloudShareInvitation
- (HMDCoreDataCloudShareInvitation)initWithURL:(id)l token:(id)token;
- (NSDictionary)content;
@end

@implementation HMDCoreDataCloudShareInvitation

- (NSDictionary)content
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCoreDataCloudShareInvitation *)self url];
  v7 = v3;
  token = [(HMDCoreDataCloudShareInvitation *)self token];
  v8[0] = token;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (HMDCoreDataCloudShareInvitation)initWithURL:(id)l token:(id)token
{
  lCopy = l;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = HMDCoreDataCloudShareInvitation;
  v9 = [(HMDCoreDataCloudShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_token, token);
  }

  return v10;
}

@end