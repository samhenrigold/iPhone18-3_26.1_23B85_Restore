@interface WFMutableNetworkProfile
+ (id)mutableProfileForNetwork:(id)network;
- (NSDictionary)enterpriseProfile;
- (WFMutableNetworkProfile)initWithNetwork:(id)network;
- (void)dealloc;
- (void)removePassword;
- (void)setTLSIdentity:(__SecIdentity *)identity;
@end

@implementation WFMutableNetworkProfile

+ (id)mutableProfileForNetwork:(id)network
{
  networkCopy = network;
  v4 = [[WFMutableNetworkProfile alloc] initWithNetwork:networkCopy];

  return v4;
}

- (void)dealloc
{
  TLSIdentity = self->_TLSIdentity;
  if (TLSIdentity)
  {
    CFRelease(TLSIdentity);
    self->_TLSIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = WFMutableNetworkProfile;
  [(WFNetworkProfile *)&v4 dealloc];
}

- (NSDictionary)enterpriseProfile
{
  v43 = *MEMORY[0x277D85DE8];
  enterpriseProfile = self->_enterpriseProfile;
  if (enterpriseProfile)
  {
    enterpriseProfile = enterpriseProfile;
  }

  else
  {
    v38.receiver = self;
    v38.super_class = WFMutableNetworkProfile;
    enterpriseProfile = [(WFNetworkProfile *)&v38 enterpriseProfile];
  }

  v5 = enterpriseProfile;
  v6 = [(NSDictionary *)enterpriseProfile objectForKey:@"EAPClientConfiguration"];
  v7 = v6;
  if (v6)
  {
    dictionary = [v6 mutableCopy];
    if (self->_TLSIdentity)
    {
      v9 = EAPSecIdentityHandleCreate();
      if (v9)
      {
        v10 = v9;
        [dictionary setObject:v9 forKey:@"TLSIdentityHandle"];
        CFRelease(v10);
      }

      else
      {
        v11 = WFLogForCategory(0);
        v12 = OSLogForWFLogLevel(1uLL);
        v13 = v12;
        if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
        {
          *buf = 136315138;
          v40 = "[WFMutableNetworkProfile enterpriseProfile]";
          _os_log_impl(&dword_273ECD000, v11, v13, "%s: failed to create SecIdentity handle for identity", buf, 0xCu);
        }
      }

      v15 = [dictionary objectForKey:@"AcceptEAPTypes"];

      if (v15)
      {
        v16 = [dictionary objectForKey:@"AcceptEAPTypes"];
        v17 = [v16 containsObject:&unk_288304828];

        if (v17)
        {
          v18 = WFLogForCategory(0);
          v19 = OSLogForWFLogLevel(1uLL);
          v20 = v19;
          if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
          {
            *buf = 136315394;
            v40 = "[WFMutableNetworkProfile enterpriseProfile]";
            v41 = 2112;
            v42 = dictionary;
            _os_log_impl(&dword_273ECD000, v18, v20, "%s: accept EAP types already present %@", buf, 0x16u);
          }
        }

        else
        {
          v22 = [dictionary objectForKey:@"AcceptEAPTypes"];
          v23 = [v22 mutableCopy];

          [v23 addObject:&unk_288304828];
          [dictionary setObject:v23 forKey:@"AcceptEAPTypes"];
        }
      }

      else
      {
        [dictionary setObject:&unk_288304E88 forKey:@"AcceptEAPTypes"];
      }
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  certificateChain = [(WFMutableNetworkProfile *)self certificateChain];

  if (v5)
  {
    v25 = certificateChain == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    certificateChain2 = [(WFMutableNetworkProfile *)self certificateChain];
    [dictionary setObject:certificateChain2 forKey:@"TLSUserTrustProceedCertificateChain"];

    [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"TLSSaveTrustExceptions"];
  }

  username = [(WFMutableNetworkProfile *)self username];
  if ([username length])
  {
  }

  else
  {
    password = [(WFMutableNetworkProfile *)self password];
    v29 = [password length];

    if (!v29)
    {
      goto LABEL_35;
    }
  }

  username2 = [(WFMutableNetworkProfile *)self username];
  v31 = [username2 length];

  if (v31)
  {
    username3 = [(WFMutableNetworkProfile *)self username];
    [dictionary setObject:username3 forKey:@"UserName"];
  }

  password2 = [(WFMutableNetworkProfile *)self password];
  v34 = [password2 length];

  if (v34)
  {
    password3 = [(WFMutableNetworkProfile *)self password];
    [dictionary setObject:password3 forKey:@"UserPassword"];
  }

LABEL_35:
  if ([dictionary count])
  {
    v36 = [(NSDictionary *)v5 mutableCopy];
    [(NSDictionary *)v36 setObject:dictionary forKey:@"EAPClientConfiguration"];

    v5 = v36;
  }

  return v5;
}

- (void)removePassword
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) >= 3 && v0 && os_log_type_enabled(v0, v2))
  {
    v10 = 136315394;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v4, v5, "%s: no password to remove for profile %@", v6, v7, v8, v9, v10);
  }
}

- (void)setTLSIdentity:(__SecIdentity *)identity
{
  TLSIdentity = self->_TLSIdentity;
  if (TLSIdentity)
  {
    CFRelease(TLSIdentity);
  }

  self->_TLSIdentity = identity;
  if (identity)
  {

    CFRetain(identity);
  }
}

- (WFMutableNetworkProfile)initWithNetwork:(id)network
{
  networkCopy = network;
  v18.receiver = self;
  v18.super_class = WFMutableNetworkProfile;
  v5 = [(WFNetworkProfile *)&v18 initWithNetwork:networkCopy];
  if (v5)
  {
    ssid = [networkCopy ssid];

    if (ssid)
    {
      ssid2 = [networkCopy ssid];
      ssid = v5->_ssid;
      v5->_ssid = ssid2;

      v5->_securityMode = [networkCopy securityMode];
      v5->_securityModeExt = [networkCopy securityModeExt];
      bssid = [networkCopy bssid];
      bssid = v5->_bssid;
      v5->_bssid = bssid;

      attributes = [networkCopy attributes];
      scanAttributes = v5->_scanAttributes;
      v5->_scanAttributes = attributes;

      v13 = [(NSDictionary *)v5->_scanAttributes objectForKey:*MEMORY[0x277D29850]];
      enterpriseProfile = v5->_enterpriseProfile;
      v5->_enterpriseProfile = v13;

      v15 = WFUserNameFromEnterpriseProfile(v5->_enterpriseProfile);
      username = v5->_username;
      v5->_username = v15;
    }
  }

  return v5;
}

@end