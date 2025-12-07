@interface MSDSessionFMHTrustEvaluate
- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect;
@end

@implementation MSDSessionFMHTrustEvaluate

- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect
{
  v5 = CFDataCreate(kCFAllocatorDefault, byte_1001A4CB8, dword_1001A5040);
  if (!v5)
  {
    sub_1000E41BC(0);
    return 0;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (!v7)
  {
    sub_1000E4114(v6);
    return 0;
  }

  v8 = v7;
  v9 = [NSArray arrayWithObjects:v7, 0];
  v10 = SecTrustSetAnchorCertificates(server, v9);
  if (v10)
  {
    v15 = v10;
    v12 = sub_100063A54(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[MSDSessionFMHTrustEvaluate trustServer:isRedirect:]";
      v19 = 2048;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Cannot set demounit anchor certificates: %ld", buf, 0x16u);
    }

    goto LABEL_21;
  }

  result = kSecTrustResultInvalid;
  v11 = SecTrustEvaluate(server, &result);
  if (v11)
  {
    v12 = sub_100063A54(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E40A0();
    }

LABEL_21:
    v13 = 0;
    goto LABEL_10;
  }

  if (result != kSecTrustResultUnspecified && result != kSecTrustResultProceed)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v12 = sub_100063A54(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Demounit server certificate is valid.", buf, 2u);
  }

  v13 = 1;
LABEL_10:

LABEL_12:
  CFRelease(v6);
  CFRelease(v8);

  return v13;
}

@end