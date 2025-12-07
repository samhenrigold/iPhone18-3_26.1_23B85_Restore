@interface NearFieldManager
- (id)secureElementInfo;
- (void)getSecureElementWithReason:(id)reason callback:(id)callback;
- (void)getSecureElementWithReason:(id)reason handoffToken:(id)token completion:(id)completion;
- (void)setHandoffToken:(id)token;
@end

@implementation NearFieldManager

- (id)secureElementInfo
{
  secureElementInfo = self->_secureElementInfo;
  if (secureElementInfo)
  {
    goto LABEL_26;
  }

  v35 = 0;
  v4 = [NFSecureElement embeddedSecureElementWithError:&v35];
  v5 = v35;
  info = [v4 info];

  if (info)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    sequenceCounter = [info sequenceCounter];
    unsignedIntValue = [sequenceCounter unsignedIntValue];

    deviceType = [info deviceType];
    v34 = unsignedIntValue;
    if (deviceType > 114)
    {
      if (deviceType != 210 && deviceType != 200)
      {
        if (deviceType != 115)
        {
          goto LABEL_20;
        }

        v33 = unsignedIntValue > 0x90B;
        v14 = 2;
LABEL_24:
        v32 = v14;
        v29 = [info signingKeyType] == 2;
LABEL_25:
        serialNumber = [info serialNumber];
        hexStringAsData = [serialNumber hexStringAsData];
        ecdsaCertificate = [info ecdsaCertificate];
        hexStringAsData2 = [ecdsaCertificate hexStringAsData];
        v20 = [SESTLV TLVWithTag:32545 value:hexStringAsData2];
        asData = [v20 asData];
        rsaCertificate = [info rsaCertificate];
        hexStringAsData3 = [rsaCertificate hexStringAsData];
        v24 = [SESTLV TLVWithTag:32545 value:hexStringAsData3];
        asData2 = [v24 asData];
        v26 = +[SecureElementInfo withSEID:casdCertificate:casdCertificateRSA:isProd:isSkyOrLater:secureElementType:csn:chipID:](SecureElementInfo, "withSEID:casdCertificate:casdCertificateRSA:isProd:isSkyOrLater:secureElementType:csn:chipID:", hexStringAsData, asData, asData2, v29, v33, v32, v34, [info deviceType]);
        v27 = self->_secureElementInfo;
        self->_secureElementInfo = v26;

        secureElementInfo = self->_secureElementInfo;
LABEL_26:
        v10 = secureElementInfo;
        goto LABEL_27;
      }
    }

    else
    {
      if (deviceType == 44)
      {
        v33 = 1;
        v14 = 4;
        goto LABEL_24;
      }

      if (deviceType == 55)
      {
        v33 = 1;
        v14 = 5;
        goto LABEL_24;
      }

      if (deviceType != 100)
      {
LABEL_20:
        signingKeyType = [info signingKeyType];
        if (signingKeyType == 2)
        {
          persistentConfigID = [info persistentConfigID];
          unsignedIntValue2 = [persistentConfigID unsignedIntValue];

          v29 = HIBYTE(unsignedIntValue2) != 80;
          v33 = 1;
          v32 = 6;
        }

        else
        {
          v33 = 1;
          v32 = 6;
          v29 = signingKeyType == 2;
        }

        goto LABEL_25;
      }
    }

    v33 = unsignedIntValue > 0xA17;
    v14 = 3;
    goto LABEL_24;
  }

  v9 = sub_1000554DC(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to retrieve eSE info %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_27:

  return v10;
}

- (void)getSecureElementWithReason:(id)reason callback:(id)callback
{
  reasonCopy = reason;
  callbackCopy = callback;
  dispatch_assert_queue_V2(self->_queue);
  v10 = sub_1000554DC(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    internalState = self->_internalState;
    v12 = [(NSMutableArray *)self->_queuedWaiters count];
    v24 = 67240448;
    LODWORD(v25[0]) = internalState;
    WORD2(v25[0]) = 1026;
    *(v25 + 6) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Client request %{public}u queue (before) %{public}u", &v24, 0xEu);
  }

  v14 = self->_internalState;
  if (v14 > 3)
  {
    if ((v14 - 5) >= 2)
    {
      if (v14 == 4)
      {
        self->_internalState = 3;
        objc_storeStrong(&self->_reasonForInUseSession, reason);
        v22 = sub_1000554DC(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = 138543362;
          v25[0] = reasonCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Free session claimed for reason %{public}@", &v24, 0xCu);
        }

        sub_1003AE754(self->_timer);
        v23 = sub_1003AFF44(&self->super.isa);
        callbackCopy[2](callbackCopy, v23, 0);
      }

      goto LABEL_11;
    }

LABEL_10:
    queuedWaiters = self->_queuedWaiters;
    v18 = sub_100056548(SERequest, reasonCopy, callbackCopy);
    [(NSMutableArray *)queuedWaiters pushLast:v18];

    goto LABEL_11;
  }

  switch(v14)
  {
    case 2:
      goto LABEL_10;
    case 3:
      v15 = sub_1000554DC(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        reasonForInUseSession = self->_reasonForInUseSession;
        v24 = 138543362;
        v25[0] = reasonForInUseSession;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Currently in use for %{public}@", &v24, 0xCu);
      }

      goto LABEL_10;
    case 1:
      v19 = self->_queuedWaiters;
      v20 = sub_100056548(SERequest, reasonCopy, callbackCopy);
      [(NSMutableArray *)v19 pushLast:v20];

      sub_1003AFD48(self);
      break;
  }

LABEL_11:
}

- (void)setHandoffToken:(id)token
{
  tokenCopy = token;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005666C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(queue, v7);
}

- (void)getSecureElementWithReason:(id)reason handoffToken:(id)token completion:(id)completion
{
  reasonCopy = reason;
  tokenCopy = token;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  secureElementInfo = [(NearFieldManager *)self secureElementInfo];
  seid = [secureElementInfo seid];

  if (seid)
  {
    v14 = sub_1000554DC(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      asHexString = [tokenCopy asHexString];
      *buf = 138543618;
      v28 = reasonCopy;
      v29 = 2114;
      v30 = asHexString;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Getting SE for reason %{public}@ with token %{public}@", buf, 0x16u);
    }

    v16 = +[NFHardwareManager sharedHardwareManager];
    v25[0] = @"session.handofftoken";
    v25[1] = @"session.handofftoken.failurebehaviour";
    v26[0] = tokenCopy;
    v26[1] = @"fail";
    v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100056954;
    v21[3] = &unk_1004C2E58;
    v21[4] = self;
    v22 = reasonCopy;
    v24 = completionCopy;
    v23 = seid;
    v18 = [v16 startSecureElementManagerSessionWithAttributes:v17 completion:v21];
  }

  else
  {
    v19 = sub_1000554DC(v13);
    v20 = SESCreateAndLogError();
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

@end