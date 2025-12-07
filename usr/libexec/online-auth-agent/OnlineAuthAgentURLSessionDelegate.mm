@interface OnlineAuthAgentURLSessionDelegate
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation OnlineAuthAgentURLSessionDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  if (!sub_100003F60(handlerCopy, v10) || (v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mis"], v12 = objc_msgSend(v11, "BOOLForKey:", @"disableServerPinning"), v11, !v12))
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100007494;
    v33[3] = &unk_10005DC28;
    v33[4] = &v34;
    v33[5] = &v38;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000074F4;
    v30[3] = &unk_10005DC50;
    v13 = objc_retainBlock(v33);
    v31 = v13;
    v14 = handlerCopy;
    v32 = v14;
    v15 = objc_retainBlock(v30);
    protectionSpace = [challengeCopy protectionSpace];
    serverTrust = [protectionSpace serverTrust];

    if (!serverTrust)
    {
      v25 = sub_100006750(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100040C60();
      }

      (v15[2])(v15);
      goto LABEL_30;
    }

    CertificateCount = SecTrustGetCertificateCount(serverTrust);
    v20 = [[NSMutableArray alloc] initWithCapacity:CertificateCount];
    if (CertificateCount)
    {
      for (i = 0; i != CertificateCount; ++i)
      {
        [v20 addObject:{SecTrustGetCertificateAtIndex(serverTrust, i)}];
      }
    }

    ApplePPQService = SecPolicyCreateApplePPQService();
    v39[3] = ApplePPQService;
    if (ApplePPQService)
    {
      v23 = SecTrustCreateWithCertificates(v20, ApplePPQService, v35 + 3);
      if (v23)
      {
        v24 = sub_100006750(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100040A80();
        }
      }

      else
      {
        v26 = v35[3];
        if (v26)
        {
          result = kSecTrustResultDeny;
          v27 = SecTrustEvaluate(v26, &result);
          if (v27)
          {
            v28 = sub_100006750(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_100040AF4();
            }
          }

          else
          {
            if (result == kSecTrustResultProceed || result == kSecTrustResultUnspecified)
            {
              (v13[2])(v13);
              (*(v14 + 2))(v14, 1, 0);
              goto LABEL_29;
            }

            v28 = sub_100006750(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_100040B68();
            }
          }

          (v15[2])(v15);
LABEL_29:

LABEL_30:
          _Block_object_dispose(&v34, 8);
          _Block_object_dispose(&v38, 8);
          goto LABEL_31;
        }

        v24 = sub_100006750(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100040BE0();
        }
      }
    }

    else
    {
      v24 = sub_100006750(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100040C20();
      }
    }

    (v15[2])(v15);
    goto LABEL_29;
  }

  (*(handlerCopy + 2))(handlerCopy, 1, 0);
LABEL_31:
}

@end