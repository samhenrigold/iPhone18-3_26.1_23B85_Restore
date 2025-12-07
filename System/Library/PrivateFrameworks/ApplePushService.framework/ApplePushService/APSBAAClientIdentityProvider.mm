@interface APSBAAClientIdentityProvider
- (APSBAAClientIdentityProvider)init;
- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey dataToSign:(id)sign time:(id)time useIDSNonceVersion:(BOOL)version nonceOut:(id *)out signatureOut:(id *)signatureOut;
- (BOOL)isReadyToFetchIdentity;
- (id)_parseDERCertificatesFromChain:(id)chain;
- (id)createBAAOptions:(BOOL)options;
- (id)fetchVMHostCertsAndSignData:(id)data error:(id *)error;
- (uint64_t)supportsFetchingVMHostCerts;
- (void)_processPotentialIdentityChanged;
- (void)checkIdentityIsAvailable:(id)available hasExistingToken:(BOOL)token;
- (void)dealloc;
- (void)debugForceDeleteIdentity:(id)identity;
- (void)debugForceIdentitySwap;
- (void)fetchClientIdentityWithReason:(unint64_t)reason hasExistingToken:(BOOL)token completionHandler:(id)handler;
- (void)forceIdentityRefresh:(id)refresh;
- (void)noteInvalidServerPresence;
- (void)preloadIdentity:(id)identity;
@end

@implementation APSBAAClientIdentityProvider

- (APSBAAClientIdentityProvider)init
{
  v6.receiver = self;
  v6.super_class = APSBAAClientIdentityProvider;
  v2 = [(APSBAAClientIdentityProvider *)&v6 init];
  if (sub_10000712C())
  {
    v3 = objc_alloc_init(APSDefaultsDebugOverrides);
    [(APSBAAClientIdentityProvider *)v2 setDebugOverrides:v3];
  }

  else
  {
    [(APSBAAClientIdentityProvider *)v2 setDebugOverrides:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100079C2C, kNotificationActivationStateChanged, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return v2;
}

- (uint64_t)supportsFetchingVMHostCerts
{
  if (qword_1001BF7F0 != -1)
  {
    sub_10010C140();
  }

  return byte_1001BF7E8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kNotificationActivationStateChanged, 0);
  v4.receiver = self;
  v4.super_class = APSBAAClientIdentityProvider;
  [(APSBAAClientIdentityProvider *)&v4 dealloc];
}

- (void)_processPotentialIdentityChanged
{
  if ([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0(self, a2) && [(APSBAAClientIdentityProvider *)self isReadyToFetchIdentity])
  {
    v3 = +[APSLog courier];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring activation signal on VMs, VMs post an activation signal on every boot since they are hacktivated.", buf, 2u);
    }
  }

  else
  {
    identityAvailabilityDidChangeBlock = [(APSBAAClientIdentityProvider *)self identityAvailabilityDidChangeBlock];

    if (identityAvailabilityDidChangeBlock)
    {
      identityAvailabilityDidChangeBlock2 = [(APSBAAClientIdentityProvider *)self identityAvailabilityDidChangeBlock];
      identityAvailabilityDidChangeBlock2[2](identityAvailabilityDidChangeBlock2, [(APSBAAClientIdentityProvider *)self isReadyToFetchIdentity]);
    }
  }
}

- (BOOL)isReadyToFetchIdentity
{
  v2 = MAEGetActivationStateWithError();
  v3 = [v2 isEqualToString:kMAActivationStateUnactivated];
  v4 = +[APSLog courier];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Device is not activated, can't fetch a BAA identity.";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "Device is activated, should be able to obtain an identity";
    v7 = buf;
    goto LABEL_6;
  }

  return v3 ^ 1;
}

- (void)preloadIdentity:(id)identity
{
  if (identity)
  {
    (*(identity + 2))(identity, 1);
  }
}

- (void)forceIdentityRefresh:(id)refresh
{
  refreshCopy = refresh;
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider not refreshing BAA certs", v5, 2u);
  }

  if (refreshCopy)
  {
    refreshCopy[2](refreshCopy);
  }
}

- (id)createBAAOptions:(BOOL)options
{
  optionsCopy = options;
  error = 0;
  v4 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlways, 0x40000000uLL, &error);
  if (v4)
  {
    v6 = v4;
    if (([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0(v4, v5) & 1) != 0 || (DeviceIdentityUCRTAttestationSupported() & 1) == 0)
    {
      v8 = +[APSLog courier];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "UCRT not supported, using SCRT/vSCRT", &v26, 2u);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    v9 = arc4random_uniform(0xFu);
    v10 = (1440 * v9 + 1555200);
    if ([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0(v9, v11))
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v26) = v12;
    v30[0] = kMAOptionsBAAKeychainLabel;
    v30[1] = kMAOptionsBAAKeychainAccessGroup;
    v31[0] = @"apsd";
    v31[1] = @"com.apple.apsd";
    v30[2] = kMAOptionsBAAIgnoreExistingKeychainItems;
    v13 = [NSNumber numberWithBool:optionsCopy, v26];
    v31[2] = v13;
    v31[3] = &__kCFBooleanTrue;
    v30[3] = kMAOptionsResuseExistingKey;
    v30[4] = kMAOptionsBAANetworkTimeoutInterval;
    v31[4] = &off_100197C68;
    v30[5] = kMAOptionsBAAValidity;
    v14 = [NSNumber numberWithDouble:v10];
    v31[5] = v14;
    v30[6] = kMAOptionsBAASCRTAttestation;
    v15 = [NSNumber numberWithBool:v7];
    v31[6] = v15;
    v31[7] = v6;
    v30[7] = kMAOptionsBAAAccessControls;
    v30[8] = kMAOptionsBAAAppSpecificData;
    v16 = [NSData dataWithBytes:&v26 length:1];
    v31[8] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];
    v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

    if ([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0(v19, v20))
    {
      v29[0] = kMAOptionsBAAOIDDeviceIdentifiers;
      v29[1] = kMAOptionsBAAOIDProductType;
      v29[2] = kMAOptionsBAAOIDKeyUsageProperties;
      v29[3] = kMAOptionsBAAOIDNonce;
      v21 = v29;
      v22 = 4;
    }

    else
    {
      v28[0] = kMAOptionsBAAOIDProductType;
      v28[1] = kMAOptionsBAAOIDKeyUsageProperties;
      v28[2] = kMAOptionsBAAOIDNonce;
      v21 = v28;
      v22 = 3;
    }

    v24 = [NSArray arrayWithObjects:v21 count:v22];
    [v18 setObject:v24 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];
  }

  else
  {
    v23 = +[APSLog courier];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to get security access control ref for fetching BAA cert", &v26, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)checkIdentityIsAvailable:(id)available hasExistingToken:(BOOL)token
{
  tokenCopy = token;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007A3F4;
  v7[3] = &unk_100187FD0;
  availableCopy = available;
  v6 = availableCopy;
  [(APSBAAClientIdentityProvider *)self fetchClientIdentityWithReason:3 hasExistingToken:tokenCopy completionHandler:v7];
}

- (void)fetchClientIdentityWithReason:(unint64_t)reason hasExistingToken:(BOOL)token completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider attempting to fetch BAA certs", buf, 2u);
  }

  if (DeviceIdentityIsSupported())
  {
    v8 = [(APSBAAClientIdentityProvider *)self createBAAOptions:0];
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider fetching BAA cert", buf, 2u);
    }

    v11 = handlerCopy;
    DeviceIdentityIssueClientCertificateWithCompletion();
  }

  else
  {
    v10 = +[APSLog courier];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device Identity is not supported, can't fetch a BAA cert", buf, 2u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    }
  }
}

- (id)fetchVMHostCertsAndSignData:(id)data error:(id *)error
{
  dataCopy = data;
  if (([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0(dataCopy, v7) & 1) == 0)
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "APSBAAClientIdentityProvider not a virtual machine, can't request host VM certs!";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }

LABEL_17:
    v17 = 0;
    goto LABEL_23;
  }

  if (!dataCopy)
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "APSBAAClientIdentityProvider no nonce provided to sign";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v20 = 769;
  v8 = DeviceIdentityCreateHostSignature();
  v9 = 0;
  if (error && *error)
  {
    v10 = +[APSLog courier];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 138412290;
      v22 = v11;
      v12 = "APSBAAClientIdentityProvider failed to sign nonce with host VM identity, error: %@";
      v13 = v10;
      v14 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    v10 = +[APSLog courier];
    v16 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8 && v9)
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider signed nonce data with host VM identity!", buf, 2u);
      }

      v17 = objc_alloc_init(APSDProtoHostCertificateInfo);
      v18 = [(APSBAAClientIdentityProvider *)self _parseDERCertificatesFromChain:v9];
      [(APSDProtoHostCertificateInfo *)v17 setCertificates:v18];

      [(APSDProtoHostCertificateInfo *)v17 setNonce:dataCopy];
      v10 = [NSMutableData dataWithBytes:&v20 length:2];
      [v10 appendData:v8];
      [(APSDProtoHostCertificateInfo *)v17 setSignature:v10];
      goto LABEL_22;
    }

    if (v16)
    {
      *buf = 0;
      v12 = "APSBAAClientIdentityProvider failed to sign nonce data with host VM identity with no error?";
      v13 = v10;
      v14 = 2;
      goto LABEL_20;
    }
  }

  v17 = 0;
LABEL_22:

LABEL_23:

  return v17;
}

- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey dataToSign:(id)sign time:(id)time useIDSNonceVersion:(BOOL)version nonceOut:(id *)out signatureOut:(id *)signatureOut
{
  versionCopy = version;
  timeCopy = time;
  signCopy = sign;
  LOBYTE(out) = sub_10001BDD8(key, privateKey, signCopy, timeCopy, versionCopy, [(APSBAAClientIdentityProvider *)self signatureTypeForSigning], out, signatureOut);

  return out;
}

- (void)debugForceIdentitySwap
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ swapping identity providers not supported, not using a multi identity provider", &v4, 0xCu);
  }
}

- (void)noteInvalidServerPresence
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ informed of an invalid server presence. Not doing anything, the next presence will use the same identity.", &v4, 0xCu);
  }
}

- (id)_parseDERCertificatesFromChain:(id)chain
{
  chainCopy = chain;
  memset(v19, 0, sizeof(v19));
  v14 = 0;
  bytes = [chainCopy bytes];
  v5 = CTParseCertificateSet(bytes, [chainCopy length] + bytes, v19, 3, &v14);
  if (v5 || !v14)
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = v5;
      v17 = 2048;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to parse certificate set. rc=%d, numCerts=%zu", buf, 0x12u);
    }
  }

  else
  {
    v6 = [NSMutableArray alloc];
    v7 = [v6 initWithCapacity:v14];
    if (!v14)
    {
      goto LABEL_15;
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = &v19[v8];
      if (!*v10 || !v10[1])
      {
        break;
      }

      v11 = [[NSData alloc] initWithBytes:*v10 length:v10[1]];
      [v7 setObject:v11 atIndexedSubscript:v8];

      v8 = ++v9;
      if (v14 <= v9)
      {
        goto LABEL_15;
      }
    }

    v12 = +[APSLog courier];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Invalid certData", buf, 2u);
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (void)debugForceDeleteIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider requesting to refresh BAA certs", buf, 2u);
  }

  v6 = [(APSBAAClientIdentityProvider *)self createBAAOptions:1];
  v7 = identityCopy;
  DeviceIdentityIssueClientCertificateWithCompletion();
}

@end