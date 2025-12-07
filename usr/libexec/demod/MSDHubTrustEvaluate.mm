@interface MSDHubTrustEvaluate
+ (id)getTrustObject;
- (BOOL)isHubCertificatePinnedTo:(__SecCertificate *)to applePKI:(BOOL)i;
- (BOOL)saveHubCertificateIdentifer:(__SecCertificate *)identifer applePKI:(BOOL)i;
- (BOOL)trustDAServer:(__SecTrust *)server;
- (BOOL)trustServer:(__SecTrust *)server forRequestType:(BOOL)type typeOfCommand:(unint64_t)command;
- (BOOL)trustServer:(__SecTrust *)server withRootCA:(__SecCertificate *)a withHostName:(id)name;
- (BOOL)trustServerWithApplePKI:(__SecTrust *)i;
- (BOOL)trustServerWithAxinoePKI:(__SecTrust *)i;
- (id)hashForCertificate:(__SecCertificate *)certificate;
- (id)identifierFor:(__SecCertificate *)for applePKI:(BOOL)i;
@end

@implementation MSDHubTrustEvaluate

+ (id)getTrustObject
{
  v2 = objc_alloc_init(MSDHubTrustEvaluate);

  return v2;
}

- (BOOL)trustServer:(__SecTrust *)server forRequestType:(BOOL)type typeOfCommand:(unint64_t)command
{
  typeCopy = type;
  v9 = +[MSDTargetDevice sharedInstance];
  v10 = v9;
  if (!command)
  {
    v13 = sub_100063A54(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000DBAC4();
    }

    v11 = [(MSDHubTrustEvaluate *)self trustDAServer:server];
    goto LABEL_13;
  }

  if (!typeCopy)
  {
    v15 = [(MSDHubTrustEvaluate *)self trustServerWithApplePKI:server];
    if (v15 || [(MSDHubTrustEvaluate *)self trustServerWithAxinoePKI:server])
    {
      CertificateAtIndex = SecTrustGetCertificateAtIndex(server, 0);
      if (CertificateAtIndex)
      {
        v17 = CertificateAtIndex;
        certificateHash = [v10 certificateHash];
        if (certificateHash)
        {
          v18 = v15;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (command != 3)
          {
            if (command == 1 && ![(MSDHubTrustEvaluate *)self saveHubCertificateIdentifer:v17 applePKI:v15])
            {
              goto LABEL_39;
            }

LABEL_32:
            v11 = 1;
            goto LABEL_33;
          }

          v25 = [(MSDHubTrustEvaluate *)self isHubCertificatePinnedTo:v17 applePKI:v15];
          if (v25)
          {
            goto LABEL_32;
          }

          v22 = sub_100063A54(v25);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000DBA5C();
          }
        }

        else
        {
          v19 = [(MSDHubTrustEvaluate *)self hashForCertificate:v17];
          v20 = [certificateHash isEqualToData:v19];

          v22 = sub_100063A54(v21);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v23)
            {
              LOWORD(v30) = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Migrating certificate pinning.", &v30, 2u);
            }

            v24 = [(MSDHubTrustEvaluate *)self saveHubCertificateIdentifer:v17 applePKI:0];
            if (v24)
            {
              goto LABEL_32;
            }

            v22 = sub_100063A54(v24);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1000DBA28();
            }
          }

          else if (v23)
          {
            hexStringRepresentation = [certificateHash hexStringRepresentation];
            v28 = [(MSDHubTrustEvaluate *)self hashForCertificate:v17];
            hexStringRepresentation2 = [v28 hexStringRepresentation];
            v30 = 138543618;
            v31 = hexStringRepresentation;
            v32 = 2114;
            v33 = hexStringRepresentation2;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Certificate hash does not match the saved one - Saved:  %{public}@ - Current:  %{public}@", &v30, 0x16u);
          }
        }
      }

      else
      {
        v22 = sub_100063A54(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000DBA90();
        }

        certificateHash = 0;
      }
    }

    else
    {
      certificateHash = 0;
    }

LABEL_39:
    v11 = 0;
    goto LABEL_33;
  }

  v30 = 0;
  v11 = 0;
  if (!SecTrustEvaluate(server, &v30))
  {
    v11 = v30 == 4 || v30 == 1;
  }

LABEL_13:
  certificateHash = 0;
LABEL_33:

  return v11;
}

- (BOOL)trustDAServer:(__SecTrust *)server
{
  v4 = CFDataCreate(kCFAllocatorDefault, byte_1001A4CB8, dword_1001A5040);
  if (!v4)
  {
    sub_1000DBC24(0);
    return 0;
  }

  v5 = v4;
  v6 = SecCertificateCreateWithData(kCFAllocatorDefault, v4);
  if (!v6)
  {
    sub_1000DBB7C(v5);
    return 0;
  }

  v7 = v6;
  v8 = [NSArray arrayWithObjects:v6, 0];
  v9 = SecTrustSetAnchorCertificates(server, v8);
  if (v9)
  {
    v14 = v9;
    v11 = sub_100063A54(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[MSDHubTrustEvaluate trustDAServer:]";
      v19 = 2048;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Cannot set demounit anchor certificates: %ld", buf, 0x16u);
    }

    goto LABEL_21;
  }

  result = kSecTrustResultInvalid;
  v10 = SecTrustEvaluate(server, &result);
  if (v10)
  {
    v15 = v10;
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000DBB04(v15, v11);
    }

LABEL_21:
    v12 = 0;
    goto LABEL_10;
  }

  if (result != kSecTrustResultUnspecified && result != kSecTrustResultProceed)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = sub_100063A54(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Demounit server certificate is valid.", buf, 2u);
  }

  v12 = 1;
LABEL_10:

LABEL_12:
  CFRelease(v5);
  CFRelease(v7);

  return v12;
}

- (BOOL)trustServerWithApplePKI:(__SecTrust *)i
{
  commonName = 0;
  v5 = CFDataCreate(kCFAllocatorDefault, byte_1001A4CB8, dword_1001A5040);
  if (!v5)
  {
    sub_1000DBE14(0);
    return 0;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (!v7)
  {
    sub_1000DBD6C(v6);
    return 0;
  }

  v8 = v7;
  if (![(MSDHubTrustEvaluate *)self trustServer:i withRootCA:v7 withHostName:0])
  {
    v11 = 0;
LABEL_22:
    v13 = 0;
    goto LABEL_8;
  }

  CertificateAtIndex = SecTrustGetCertificateAtIndex(i, 0);
  if (!CertificateAtIndex)
  {
    v15 = sub_100063A54(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000DBA90();
    }

    goto LABEL_18;
  }

  v10 = SecCertificateCopyCommonName(CertificateAtIndex, &commonName);
  if (v10)
  {
    v15 = sub_100063A54(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000DBCC0();
    }

LABEL_18:
    v11 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v11 = commonName;
  v12 = [(__CFString *)commonName hasSuffix:@".hubs.iosdm.demounit.net"];
  if ((v12 & 1) == 0)
  {
    v15 = sub_100063A54(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000DBCF4(v11, v15);
    }

    goto LABEL_21;
  }

  v13 = 1;
LABEL_8:
  CFRelease(v6);
  CFRelease(v8);

  return v13;
}

- (BOOL)trustServerWithAxinoePKI:(__SecTrust *)i
{
  v5 = CFDataCreate(kCFAllocatorDefault, byte_1001A48A8, dword_1001A4CB4);
  if (!v5)
  {
    sub_1000DBF58(0);
    return 0;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (!v7)
  {
    sub_1000DBEB0(v6);
    return 0;
  }

  v8 = v7;
  if ([(MSDHubTrustEvaluate *)self trustServer:i withRootCA:v7 withHostName:@"hub.iosdm.local"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(MSDHubTrustEvaluate *)self trustServer:i withRootCA:v8 withHostName:@"hub.iosdm.net"];
  }

  CFRelease(v6);
  CFRelease(v8);
  return v9;
}

- (BOOL)trustServer:(__SecTrust *)server withRootCA:(__SecCertificate *)a withHostName:(id)name
{
  trust = 0;
  SSL = SecPolicyCreateSSL(1u, name);
  if (!SSL)
  {
    sub_1000DC1E4(0);
    v18 = 0;
    v15 = 0;
    goto LABEL_18;
  }

  v8 = SSL;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  CertificateCount = SecTrustGetCertificateCount(server);
  if (CertificateCount >= 1)
  {
    v11 = CertificateCount;
    for (i = 0; i != v11; ++i)
    {
      CertificateAtIndex = SecTrustGetCertificateAtIndex(server, i);
      CFArrayAppendValue(Mutable, CertificateAtIndex);
    }
  }

  v14 = SecTrustCreateWithCertificates(Mutable, v8, &trust);
  if (v14)
  {
    sub_1000DBFF4(v14);
    v18 = 0;
    v15 = 0;
  }

  else
  {
    v15 = [NSArray arrayWithObjects:a, 0];
    v16 = SecTrustSetAnchorCertificates(trust, v15);
    if (v16)
    {
      sub_1000DC090(v16);
    }

    else
    {
      result = kSecTrustResultInvalid;
      v17 = SecTrustEvaluate(trust, &result);
      if (v17)
      {
        sub_1000DC14C(v17);
      }

      else if (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed)
      {
        v18 = 1;
        goto LABEL_16;
      }
    }

    v18 = 0;
  }

LABEL_16:
  CFRelease(v8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_18:
  if (trust)
  {
    CFRelease(trust);
  }

  return v18;
}

- (id)hashForCertificate:(__SecCertificate *)certificate
{
  v3 = SecCertificateCopyData(certificate);
  if (v3)
  {
    v4 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    CC_SHA1([(__CFData *)v3 bytes], [(__CFData *)v3 length], v4);
    v5 = [NSData dataWithBytes:v4 length:20];
    free(v4);
  }

  else
  {
    sub_1000DC280(0);
    v5 = 0;
  }

  return v5;
}

- (id)identifierFor:(__SecCertificate *)for applePKI:(BOOL)i
{
  commonName = 0;
  if (!i)
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = SecCertificateCopyProperties();
    v25 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v25)
    {
      v8 = *v31;
      v23 = *v31;
      v24 = v7;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 objectForKey:@"label"];
          v12 = [v11 isEqualToString:@"Subject Name"];

          if (v12)
          {
            v13 = [v10 objectForKey:@"value"];
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v27;
              while (2)
              {
                for (j = 0; j != v16; j = j + 1)
                {
                  if (*v27 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v26 + 1) + 8 * j);
                  v20 = [v19 objectForKey:@"label"];
                  v21 = [v20 isEqualToString:@"2.5.4.45"];

                  if (v21)
                  {
                    v6 = [v19 objectForKey:@"value"];

                    v4 = 0;
                    goto LABEL_26;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v23;
            v7 = v24;
          }
        }

        v25 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v25);
    }

    goto LABEL_23;
  }

  if (SecCertificateCopyCommonName(for, &commonName))
  {
LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  v4 = commonName;
  v5 = [(__CFString *)commonName rangeOfString:@".hubs.iosdm.demounit.net"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(__CFString *)v4 substringWithRange:0, v5];
    goto LABEL_26;
  }

LABEL_24:
  v6 = 0;
LABEL_26:

  return v6;
}

- (BOOL)saveHubCertificateIdentifer:(__SecCertificate *)identifer applePKI:(BOOL)i
{
  v5 = [(MSDHubTrustEvaluate *)self identifierFor:identifer applePKI:i];
  if (v5 && (+[MSDTargetDevice sharedInstance](MSDTargetDevice, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 saveHubCertificateIdentifer:v5], v6, v7))
  {
    [(MSDHubTrustEvaluate *)self setHubCertificateIdentifier:v5];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isHubCertificatePinnedTo:(__SecCertificate *)to applePKI:(BOOL)i
{
  v5 = [(MSDHubTrustEvaluate *)self identifierFor:to applePKI:i];
  if (v5)
  {
    hubCertificateIdentifier = [(MSDHubTrustEvaluate *)self hubCertificateIdentifier];
    v7 = [hubCertificateIdentifier isEqualToString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end