@interface MSDBAAInterface
+ (id)sharedInstance;
- (BOOL)addBAAAuthenticationHeadersToRequest:(id)request withBody:(id)body error:(id *)error;
- (BOOL)generateBAACertficate:(id)certficate;
- (__SecKey)lockcrypto_extract_public:(id)lockcrypto_extract_public;
- (id)certificatesEncodeToBase64:(id)base64 status:(id *)status;
- (id)serializeCertificateChain:(id)chain;
- (id)signDataAndEncodeToBase64:(id)base64 withPrivateKey:(__SecKey *)key status:(id *)status;
- (void)printAllKeys:(id)keys;
- (void)writeCertsToDevice:(id)device;
@end

@implementation MSDBAAInterface

+ (id)sharedInstance
{
  if (qword_1001A58A0 != -1)
  {
    sub_1000D9DE0();
  }

  v3 = qword_1001A5898;

  return v3;
}

- (BOOL)generateBAACertficate:(id)certficate
{
  certficateCopy = certficate;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v4 = dispatch_semaphore_create(0);
  IsSupported = DeviceIdentityIsSupported();
  v6 = IsSupported;
  v7 = sub_100063A54(IsSupported);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device identity supported on this device: %d", buf, 8u);
  }

  v8 = [NSMutableArray alloc];
  v23[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v23[1] = kMAOptionsBAAOIDDeviceIdentifiers;
  v23[2] = kMAOptionsBAAOIDHardwareProperties;
  v23[3] = kMAOptionsBAAOIDDeviceOSInformation;
  v9 = [NSArray arrayWithObjects:v23 count:4];
  v10 = [v8 initWithArray:v9];

  if (v6)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:&off_10017B140 forKey:kMAOptionsBAACACert];
    [v11 setObject:&off_10017B158 forKey:kMAOptionsBAANetworkTimeoutInterval];
    [v11 setObject:&off_10017B170 forKey:kMAOptionsBAAValidity];
    [v11 setObject:v10 forKey:kMAOptionsBAAOIDSToInclude];
    [v11 setObject:@"DeKOTA-BAA-Cert" forKey:kMAOptionsBAAKeychainLabel];
    v18 = certficateCopy;
    v17 = v4;
    DeviceIdentityIssueClientCertificateWithCompletion();
    v12 = dispatch_time(0, 60000000000);
    v13 = dispatch_semaphore_wait(v17, v12);
    if (v13)
    {
      v14 = sub_100063A54(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000D9DF4(v14);
      }
    }
  }

  v15 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v15 & 1;
}

- (BOOL)addBAAAuthenticationHeadersToRequest:(id)request withBody:(id)body error:(id *)error
{
  requestCopy = request;
  bodyCopy = body;
  v10 = [(MSDBAAInterface *)self signDataAndEncodeToBase64:bodyCopy withPrivateKey:[(MSDBAAInterface *)self privateKey] status:error];

  clientCertArray = [(MSDBAAInterface *)self clientCertArray];
  v12 = [(MSDBAAInterface *)self certificatesEncodeToBase64:clientCertArray status:error];

  if (v10)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v14)
  {
    v16 = sub_100063A54(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000D9E88(v16);
    }
  }

  else
  {
    [requestCopy setValue:v10 forHTTPHeaderField:@"X-Apple-RM-Signature-Data"];
    v16 = sub_100063A54([requestCopy setValue:v12 forHTTPHeaderField:@"X-Apple-RM-Signature-Certificates"]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
      v19 = 138543362;
      v20 = allHTTPHeaderFields;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request header with BAA certificate: %{public}@", &v19, 0xCu);
    }
  }

  return v15;
}

- (id)signDataAndEncodeToBase64:(id)base64 withPrivateKey:(__SecKey *)key status:(id *)status
{
  error = 0;
  v5 = SecKeyCreateSignature(key, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, base64, &error);
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFData *)v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)certificatesEncodeToBase64:(id)base64 status:(id *)status
{
  status = [(MSDBAAInterface *)self serializeCertificateChain:base64, status];
  v9 = 0;
  v5 = [NSJSONSerialization dataWithJSONObject:status options:0 error:&v9];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializeCertificateChain:(id)chain
{
  chainCopy = chain;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [chainCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = chainCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = SecCertificateCopyData(*(*(&v14 + 1) + 8 * i));
        v11 = [(__CFData *)v10 base64EncodedStringWithOptions:0, v14];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)writeCertsToDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy objectAtIndex:0];
  v5 = [deviceCopy objectAtIndex:1];

  v7 = SecCertificateCopyData(v4);
  v6 = SecCertificateCopyData(v5);
  [(__CFData *)v7 writeToFile:@"/tmp/leafCertificate" atomically:1];
  [(__CFData *)v6 writeToFile:@"/tmp/intermediateCertificate" atomically:1];
}

- (__SecKey)lockcrypto_extract_public:(id)lockcrypto_extract_public
{
  BasicX509 = lockcrypto_extract_public;
  v4 = BasicX509;
  trust = 0;
  if (BasicX509 && (BasicX509 = SecPolicyCreateBasicX509()) != 0 && (BasicX509 = SecTrustCreateWithCertificates(v4, BasicX509, &trust), !BasicX509) && (BasicX509 = SecTrustCopyPublicKey(trust)) != 0)
  {
    v6 = BasicX509;
    v8 = sub_100063A54(BasicX509);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D9ECC(v6, v8);
    }

    v12 = 0;
    v9 = SecKeyCopyExternalRepresentation(v6, &v12);
    v10 = [[NSString alloc] initWithData:v9 encoding:4];
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D9F44(v9, v10, v11);
    }
  }

  else
  {
    v5 = sub_100063A54(BasicX509);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D9FCC(v5);
    }

    v6 = 0;
  }

  return v6;
}

- (void)printAllKeys:(id)keys
{
  keysCopy = keys;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = keysCopy;
    v5 = keysCopy;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      v9 = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
      v10 = kMAOptionsBAAOIDDeviceIdentifiers;
      v23 = kMAOptionsBAAOIDHardwareProperties;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          if (([v12 isEqualToString:v9] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", v10) & 1) == 0)
          {
            [v12 isEqualToString:v23];
          }

          v13 = [v5 objectForKey:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [(MSDBAAInterface *)self printAllKeys:v13];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[NSString alloc] initWithData:v13 encoding:4];
              NSLog(@"Key:%@ val:%@", v12, v14);
            }

            else
            {
              NSLog(@"Key:%@ val:%@", v12, v13);
            }
          }

          v11 = v11 + 1;
        }

        while (v7 != v11);
        v15 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
        v7 = v15;
      }

      while (v15);
    }

    keysCopy = v22;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = keysCopy;
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }

            [(MSDBAAInterface *)self printAllKeys:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v18);
      }
    }

    else
    {
      NSLog(@"object:%@", keysCopy);
    }
  }
}

@end