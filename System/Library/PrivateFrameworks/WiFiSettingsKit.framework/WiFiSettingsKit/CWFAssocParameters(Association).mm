@interface CWFAssocParameters(Association)
- (void)appendAdditionalParameters:()Association;
@end

@implementation CWFAssocParameters(Association)

- (void)appendAdditionalParameters:()Association
{
  v42 = a3;
  scanResult = [self scanResult];
  WiFiNetworkCreateFromCoreWiFiScanResult();

  if ([v42 isCarPlayOnly])
  {
    WiFiNetworkSetProperty();
  }

  if ([v42 isInstantHotspot])
  {
    WiFiNetworkSetProperty();
  }

  knownNetworkProfile = [self knownNetworkProfile];

  if (knownNetworkProfile)
  {
    knownNetworkProfile2 = [self knownNetworkProfile];
    knownNetworkProfile = WiFiNetworkCreateFromCoreWiFiNetworkProfile();
  }

  enterpriseParameters = [v42 enterpriseParameters];

  if (enterpriseParameters)
  {
    if (!knownNetworkProfile)
    {
      WiFiNetworkCreateCopy();
    }

    v8 = WiFiNetworkGetProperty();
    v9 = [v8 objectForKey:@"EAPClientConfiguration"];
    v10 = v9;
    if (v9)
    {
      dictionary = [v9 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v12 = dictionary;
    enterpriseParameters2 = [v42 enterpriseParameters];
    username = [enterpriseParameters2 username];

    if (username)
    {
      enterpriseParameters3 = [v42 enterpriseParameters];
      username2 = [enterpriseParameters3 username];
      [v12 setObject:username2 forKey:@"UserName"];
    }

    enterpriseParameters4 = [v42 enterpriseParameters];
    password = [enterpriseParameters4 password];

    if (password)
    {
      enterpriseParameters5 = [v42 enterpriseParameters];
      password2 = [enterpriseParameters5 password];
      [v12 setObject:password2 forKey:@"UserPassword"];
    }

    enterpriseParameters6 = [v42 enterpriseParameters];
    tLSIdentity = [enterpriseParameters6 TLSIdentity];

    if (tLSIdentity)
    {
      enterpriseParameters7 = [v42 enterpriseParameters];
      [enterpriseParameters7 TLSIdentity];
      v24 = EAPSecIdentityHandleCreate();

      if (v24)
      {
        [v12 setObject:v24 forKey:@"TLSIdentityHandle"];
        CFRelease(v24);
      }

      v25 = [v12 objectForKey:@"AcceptEAPTypes"];

      if (v25)
      {
        v26 = [v12 objectForKey:@"AcceptEAPTypes"];
        v27 = [v26 containsObject:&unk_2883333F0];

        if ((v27 & 1) == 0)
        {
          v28 = [v12 objectForKey:@"AcceptEAPTypes"];
          v29 = [v28 mutableCopy];

          [v29 addObject:&unk_2883333F0];
          [v12 setObject:v29 forKey:@"AcceptEAPTypes"];
        }
      }

      else
      {
        [v12 setObject:&unk_288333450 forKey:@"AcceptEAPTypes"];
      }
    }

    v30 = [v12 objectForKey:@"AcceptEAPTypes"];

    if (!v30)
    {
      enterpriseParameters8 = [v42 enterpriseParameters];
      tLSIdentity2 = [enterpriseParameters8 TLSIdentity];

      if (tLSIdentity2)
      {
        v33 = &unk_288333468;
      }

      else
      {
        v33 = &unk_288333480;
      }

      [v12 setObject:v33 forKey:@"AcceptEAPTypes"];
    }

    enterpriseParameters9 = [v42 enterpriseParameters];
    certificateChain = [enterpriseParameters9 certificateChain];

    if (certificateChain)
    {
      enterpriseParameters10 = [v42 enterpriseParameters];
      certificateChain2 = [enterpriseParameters10 certificateChain];
      [v12 setObject:certificateChain2 forKey:@"TLSUserTrustProceedCertificateChain"];

      [v12 setObject:MEMORY[0x277CBEC38] forKey:@"TLSSaveTrustExceptions"];
    }

    if ([v12 count])
    {
      if (v8)
      {
        dictionary2 = [v8 mutableCopy];
      }

      else
      {
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      }

      v39 = dictionary2;
      [dictionary2 setObject:v12 forKey:@"EAPClientConfiguration"];
      WiFiNetworkSetProperty();
    }
  }

  CoreWiFiNetworkProfile = WiFiNetworkCreateCoreWiFiNetworkProfile();
  if ([v42 joinedUsingWiFiPasswordSharing])
  {
    [CoreWiFiNetworkProfile setAddReason:11];
  }

  [self setKnownNetworkProfile:CoreWiFiNetworkProfile];
  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult();
  [self setScanResult:CoreWiFiScanResult];
}

@end