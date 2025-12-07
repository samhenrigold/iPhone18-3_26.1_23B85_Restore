@interface SDAppleIDServerTask
- (BOOL)_isTaskInfoValid;
- (SDAppleIDServerTask)initWithType:(int64_t)type appleID:(id)d info:(id)info;
- (id)_parseCreateCertificateResponse:(id)response error:(int *)error;
- (id)_parseFetchCertificateResponse:(id)response error:(int *)error;
- (id)_parseFindPersonResponse:(id)response error:(int *)error;
- (id)_parseGetMyInfoResponse:(id)response error:(int *)error;
- (id)_parseServerResponse:(id)response error:(int *)error;
- (id)description;
- (void)_activate;
- (void)_callResponseHandlerWithInfo:(id)info errorInfo:(id)errorInfo error:(int)error;
- (void)_handleGSTokenIsAvailable;
- (void)_handleServerError:(int64_t)error withStatusCode:(int64_t)code nextSuggestedAttemptDelay:(int64_t)delay responseInfo:(id)info;
- (void)_handleTaskResponse:(id)response withData:(id)data error:(int)error;
- (void)_handleURLIsAvailable:(id)available error:(int)error completion:(id)completion;
- (void)_handleURLRequestIsAvailable;
- (void)_invalidate;
- (void)_sendRequest;
- (void)_urlRequestWithCompletion:(id)completion;
- (void)_urlWithCompletion:(id)completion;
- (void)activate;
- (void)invalidate;
@end

@implementation SDAppleIDServerTask

- (SDAppleIDServerTask)initWithType:(int64_t)type appleID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = SDAppleIDServerTask;
  v11 = [(SDAppleIDServerTask *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appleID, d);
    v13 = SFMainQueue();
    dispatchQueue = v12->_dispatchQueue;
    v12->_dispatchQueue = v13;

    objc_storeStrong(&v12->_taskInfo, info);
    v12->_type = type;
    v15 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v15 setTimeoutIntervalForResource:3600.0];
    if ((type - 3) <= 1)
    {
      [v15 setTimeoutIntervalForRequest:15.0];
    }

    [v15 set_tlsTrustPinningPolicyName:kSecPolicyNameAppleAIDCService];
    v16 = [[AKAppleIDSession alloc] initWithIdentifier:@"com.apple.coreservices.appleidauthagent"];
    [v15 setWaitsForConnectivity:(type - 5) < 0xFFFFFFFFFFFFFFFELL];
    [v15 set_appleIDContext:v16];
    v17 = [NSURLSession sessionWithConfiguration:v15];
    session = v12->_session;
    v12->_session = v17;
  }

  return v12;
}

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "-- SDAppleIDServerTask --\n");
  v2 = v4;

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147FA8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_callResponseHandlerWithInfo:(id)info errorInfo:(id)errorInfo error:(int)error
{
  infoCopy = info;
  errorInfoCopy = errorInfo;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  responseHandler = [(SDAppleIDServerTask *)self responseHandler];

  if (responseHandler)
  {
    if (error)
    {
      v10 = [NSError errorWithDomain:SFAppleIDErrorDomain code:error userInfo:errorInfoCopy];
    }

    else
    {
      v10 = 0;
    }

    responseHandler2 = [(SDAppleIDServerTask *)self responseHandler];
    (responseHandler2)[2](responseHandler2, infoCopy, v10);

    [(SDAppleIDServerTask *)self setResponseHandler:0];
  }
}

- (void)_urlWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = dword_100971638;
  if (completionCopy)
  {
    if (dword_100971638 <= 30)
    {
      if (dword_100971638 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_10014B770(v7, v5, v6);
      }
    }

    type = [(SDAppleIDServerTask *)self type];
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001481B8;
    block[3] = &unk_1008D1728;
    v12 = type;
    block[4] = self;
    v11 = completionCopy;
    dispatch_async(v9, block);
  }

  else
  {
    sub_10014B78C(dword_100971638);
  }
}

- (void)_urlRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!completionCopy)
  {
    v6 = 4294960591;
LABEL_7:
    sub_10014B888(completionCopy == 0, completionCopy, v6);
    goto LABEL_4;
  }

  gsToken = [(SDAppleIDServerTask *)self gsToken];

  if (!gsToken)
  {
    v6 = 4294960587;
    goto LABEL_7;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001487F8;
  v7[3] = &unk_1008D1750;
  v7[4] = self;
  v8 = completionCopy;
  [(SDAppleIDServerTask *)self _urlWithCompletion:v7];

LABEL_4:
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activated)
  {
    sub_10014B9E8(v3, v4, v5);
    return;
  }

  v6 = dword_100971638;
  if (self->_invalidated)
  {
    sub_10014B96C(dword_100971638, &v8);
    v7 = v8;
LABEL_13:
    sub_10014B9DC(self, v7);
    return;
  }

  if (dword_100971638 <= 30)
  {
    if (dword_100971638 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_10014B950(v6, v4, v5);
    }
  }

  if (![(SDAppleIDServerTask *)self _isTaskInfoValid])
  {
    v7 = 4294960591;
    goto LABEL_13;
  }

  [(SDAppleIDServerTask *)self _sendRequest];
  self->_activated = 1;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100148940;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleURLRequestIsAvailable
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  urlRequest = [(SDAppleIDServerTask *)self urlRequest];

  if (urlRequest)
  {
    session = self->_session;
    urlRequest2 = [(SDAppleIDServerTask *)self urlRequest];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100148A94;
    v6[3] = &unk_1008D1778;
    v6[4] = self;
    urlRequest = [(NSURLSession *)session dataTaskWithRequest:urlRequest2 completionHandler:v6];

    [urlRequest resume];
    if (dword_100971638 <= 30)
    {
      if (dword_100971638 != -1 || _LogCategory_Initialize())
      {
        sub_10014BA48(self);
      }

      if (dword_100971638 <= 10 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        sub_10014BAAC(self);
      }
    }
  }

  else
  {
    sub_10014BB34(self);
  }
}

- (void)_handleGSTokenIsAvailable
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  gsToken = [(SDAppleIDServerTask *)self gsToken];

  if (gsToken)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100148C78;
    v4[3] = &unk_1008D17A0;
    v4[4] = self;
    [(SDAppleIDServerTask *)self _urlRequestWithCompletion:v4];
  }

  else
  {
    sub_10014BB34(self);
  }
}

- (void)_handleServerError:(int64_t)error withStatusCode:(int64_t)code nextSuggestedAttemptDelay:(int64_t)delay responseInfo:(id)info
{
  v10 = [info mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v16 = v12;

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (code == 401)
  {
    v13 = 201215;
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BB38(error);
    }
  }

  else if (code == 200)
  {
    v13 = 201215;
    if (error > -20210)
    {
      if (error == -1)
      {
        v13 = 201221;
        goto LABEL_29;
      }

      if (error == -20209)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((error + 22412) < 4)
      {
LABEL_8:
        if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
        {
          sub_10014BBC0(error);
        }

        goto LABEL_29;
      }

      if (error == -22413)
      {
        if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
        {
          sub_10014BB7C();
        }

        v13 = 201217;
        goto LABEL_29;
      }
    }

    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BC0C(error);
    }

    v13 = 201200;
  }

  else
  {
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _handleServerError:withStatusCode:nextSuggestedAttemptDelay:responseInfo:]", 60, "### Unhandled server response status code: %d. Server error code: %d\n", code, error);
    }

    v13 = 4294960584;
  }

LABEL_29:
  if (delay)
  {
    v14 = [NSNumber numberWithInteger:delay];
    [v16 setObject:v14 forKeyedSubscript:SFAppleIDErrorUserInfoRetryDelaySecondsKey];
  }

  v15 = [v16 copy];
  [(SDAppleIDServerTask *)self _callResponseHandlerWithInfo:0 errorInfo:v15 error:v13];
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidated)
  {
    sub_10014BCB0(dword_100971638, v3, v4);
  }

  else
  {
    if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BC4C(self);
    }

    if (self->_activated)
    {
      [(SDAppleIDServerTask *)self _callResponseHandlerWithInfo:0 error:4294960573];
    }

    self->_invalidated = 1;
  }
}

- (void)_handleTaskResponse:(id)response withData:(id)data error:(int)error
{
  v5 = *&error;
  responseCopy = response;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v41 = v5;
  if (v5)
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      sub_10014BD08(self, v5);
    }

    v19 = 0;
    v12 = 0;
    v26 = 0;
    responseInfo = 0;
    v27 = 0;
    v40 = 0;
    goto LABEL_20;
  }

  if (!responseCopy)
  {
    sub_10014BF54(dword_100971638, &v41);
    goto LABEL_31;
  }

  if (dword_100971638 > 30 || dword_100971638 == -1 && !_LogCategory_Initialize())
  {
    if (dataCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  sub_10014BD78(self, responseCopy);
  if (!dataCopy)
  {
LABEL_24:
    sub_10014BEDC(&v41);
LABEL_31:
    v19 = 0;
    v12 = 0;
    v26 = 0;
    responseInfo = 0;
    v27 = 0;
    v40 = 0;
    v5 = 4294960534;
    goto LABEL_20;
  }

LABEL_7:
  v10 = dataCopy;
  v40 = responseCopy;
  v11 = [[SDAppleIDURLResponse alloc] initWithHTTPUTLResponse:v40 data:v10];
  v12 = v11;
  v38 = dataCopy;
  v39 = responseCopy;
  v37 = v10;
  if (v11)
  {
    responseInfo = [(SDAppleIDURLResponse *)v11 responseInfo];

    if (responseInfo)
    {
      if (IsAppleInternalBuild() && dword_100971638 <= 10 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        sub_10014BDF0(v12);
      }

      responseInfo2 = [(SDAppleIDURLResponse *)v12 responseInfo];
      Int64 = CFDictionaryGetInt64();

      statusCode = [(SDAppleIDURLResponse *)v12 statusCode];
      responseInfo3 = [(SDAppleIDURLResponse *)v12 responseInfo];
      if (statusCode != 200 || Int64)
      {
        CFStringGetTypeID();
        v28 = CFDictionaryGetTypedValue();

        if (v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = &stru_1008EFBD0;
        }

        responseInfo4 = [(SDAppleIDURLResponse *)v12 responseInfo];
        v31 = CFDictionaryGetInt64();

        v32 = v31 / 1000;
        if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100971638, "[SDAppleIDServerTask _handleTaskResponse:withData:error:]", 90, "### Response status code: %d, error %d (%@), suggested retry delay: %d\n", [(SDAppleIDURLResponse *)v12 statusCode], Int64, v29, v31 / 1000);
        }

        v36 = v29;
        statusCode2 = [(SDAppleIDURLResponse *)v12 statusCode];
        responseInfo5 = [(SDAppleIDURLResponse *)v12 responseInfo];
        [(SDAppleIDServerTask *)self _handleServerError:Int64 withStatusCode:statusCode2 nextSuggestedAttemptDelay:v32 responseInfo:responseInfo5];

        responseInfo = 0;
        v18 = 0;
      }

      else
      {
        responseInfo = [(SDAppleIDServerTask *)self _parseServerResponse:responseInfo3 error:&v41];

        Int64 = 0;
        if (responseInfo)
        {
          v36 = 0;
        }

        else
        {
          v36 = 0;
          v33 = v41;
          if (!v41)
          {
            v33 = 201217;
          }

          v41 = v33;
        }

        v18 = 1;
      }

      goto LABEL_18;
    }

    sub_10014BE4C(&v41, v40);
    v36 = 0;
  }

  else
  {
    responseInfo = 0;
    v36 = 0;
    v41 = -6762;
  }

  v18 = 1;
  Int64 = -1;
LABEL_18:
  v19 = +[AKURLBag sharedBag];
  v42[0] = @"httpStatusCode";
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v40 statusCode]);
  v43[0] = v20;
  v42[1] = @"errorCode";
  v21 = [NSNumber numberWithInteger:Int64];
  v43[1] = v21;
  v42[2] = @"type";
  selfCopy = self;
  v23 = [NSNumber numberWithInteger:self->_type];
  v43[2] = v23;
  v42[3] = @"idmsEnv";
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 IDMSEnvironment]);
  v43[3] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:4];
  SFMetricsLog();

  if (!v18)
  {
    dataCopy = v38;
    responseCopy = v39;
    v27 = v36;
    v26 = v37;
    goto LABEL_22;
  }

  v5 = v41;
  dataCopy = v38;
  responseCopy = v39;
  self = selfCopy;
  v27 = v36;
  v26 = v37;
LABEL_20:
  [(SDAppleIDServerTask *)self _callResponseHandlerWithInfo:responseInfo error:v5];
LABEL_22:
}

- (id)_parseCreateCertificateResponse:(id)response error:(int *)error
{
  responseCopy = response;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  v9 = v6;
  if (!v6)
  {
    if (dword_100971638 <= 90)
    {
      if (dword_100971638 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_10014BFFC(v6, v7, v8);
      }
    }

    goto LABEL_29;
  }

  CFDictionaryGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    if (dword_100971638 <= 90)
    {
      if (dword_100971638 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_10014BFE0(v10, v11, v12);
      }
    }

LABEL_29:
    v13 = 0;
    goto LABEL_30;
  }

  v13 = v10;
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  if (v14)
  {
    v17 = v14;
    v18 = NSDictionaryGetNSNumber();
    v19 = v18;
    if (v18)
    {
      v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 integerValue] / 1000);
    }

    else
    {
      v20 = 0;
    }

    if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseCreateCertificateResponse:error:]", 30, "Received Create Certificate response: altDSID=%@, certToken=%@, suggestedDelay=%@\n", v9, v17, v20);
    }

    if (!v20 || ([v20 integerValue] & 0x8000000000000000) != 0)
    {
      v21 = &off_10090BD30;
    }

    else
    {
      if ([v20 integerValue] < 601)
      {
        goto LABEL_17;
      }

      v21 = &off_10090BD48;
    }

    v20 = v21;
LABEL_17:
    v25[0] = @"AltDSID";
    v25[1] = @"CertificateToken";
    v26[0] = v9;
    v26[1] = v17;
    v25[2] = @"Delay";
    v26[2] = v20;
    v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v23 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (dword_100971638 <= 90)
  {
    if (dword_100971638 != -1 || (v14 = _LogCategory_Initialize(), v14))
    {
      sub_10014BFC4(v14, v15, v16);
    }
  }

LABEL_30:
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 201240;
  if (error)
  {
LABEL_18:
    *error = v23;
  }

LABEL_19:

  return v22;
}

- (id)_parseServerResponse:(id)response error:(int *)error
{
  responseCopy = response;
  v7 = responseCopy;
  v12 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_17;
      }

      v9 = [(SDAppleIDServerTask *)self _parseFetchCertificateResponse:responseCopy error:&v12];
    }

    else
    {
      v9 = [(SDAppleIDServerTask *)self _parseCreateCertificateResponse:responseCopy error:&v12];
    }

LABEL_12:
    v10 = v9;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(type)
  {
    case 2:
      v9 = [(SDAppleIDServerTask *)self _parseGetMyInfoResponse:responseCopy error:&v12];
      goto LABEL_12;
    case 3:
      v9 = [(SDAppleIDServerTask *)self _parseFindPersonResponse:responseCopy error:&v12];
      goto LABEL_12;
    case 4:
      v9 = [responseCopy copy];
      goto LABEL_12;
  }

LABEL_17:
  if (dword_100971638 > 90)
  {
    goto LABEL_21;
  }

  if (dword_100971638 != -1)
  {
    goto LABEL_19;
  }

  if (_LogCategory_Initialize())
  {
    type = self->_type;
LABEL_19:
    LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseServerResponse:error:]", 90, "### Unhandled type %d\n", type);
  }

LABEL_21:
  v10 = 0;
  v12 = -6756;
  if (error)
  {
LABEL_13:
    *error = v12;
  }

LABEL_14:

  return v10;
}

- (void)_sendRequest
{
  appleID = [(SDAppleIDServerTask *)self appleID];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014B648;
  v5[3] = &unk_1008D17C8;
  v5[4] = self;
  sub_100267938(appleID, dispatchQueue, v5);
}

- (BOOL)_isTaskInfoValid
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  taskInfo = [(SDAppleIDServerTask *)self taskInfo];
  v4 = [taskInfo count];

  v5 = 0;
  isKindOfClass = 1;
  switch([(SDAppleIDServerTask *)self type])
  {
    case 0:
      if (v4 != 1)
      {
        goto LABEL_40;
      }

      taskInfo2 = [(SDAppleIDServerTask *)self taskInfo];
      v8 = taskInfo2;
      v9 = @"csr";
      goto LABEL_27;
    case 1:
      if (v4 != 1)
      {
        goto LABEL_40;
      }

      taskInfo2 = [(SDAppleIDServerTask *)self taskInfo];
      v8 = taskInfo2;
      v9 = @"certificateToken";
LABEL_27:
      v5 = [taskInfo2 objectForKeyedSubscript:v9];

      if (!v5)
      {
        goto LABEL_43;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_42;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_40;
      }

      taskInfo3 = [(SDAppleIDServerTask *)self taskInfo];
      v5 = [taskInfo3 objectForKeyedSubscript:@"serialNumber"];

      if (!v5)
      {
        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_43;
      }

      taskInfo4 = [(SDAppleIDServerTask *)self taskInfo];
      v18 = [taskInfo4 objectForKeyedSubscript:@"clientAidvrId"];

      if (!v18)
      {
        goto LABEL_40;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_34;
    case 3:
      if (v4 != 1)
      {
        goto LABEL_40;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      taskInfo5 = [(SDAppleIDServerTask *)self taskInfo];
      v11 = [taskInfo5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = v11;
      v13 = *v25;
      break;
    case 4:
      goto LABEL_42;
    default:
      if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100971638, "[SDAppleIDServerTask _isTaskInfoValid]", 60, "### Unhandled type %d\n", [(SDAppleIDServerTask *)self type]);
      }

      goto LABEL_40;
  }

  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(taskInfo5);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![&off_100910130 containsObject:v15])
      {

LABEL_40:
        isKindOfClass = 0;
        goto LABEL_41;
      }
    }

    v12 = [taskInfo5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_14:

  taskInfo6 = [(SDAppleIDServerTask *)self taskInfo];
  v5 = [taskInfo6 objectForKeyedSubscript:@"emails"];

  isKindOfClass = v5 != 0;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 count] != 1)
    {
LABEL_43:
      isKindOfClass = 0;
      goto LABEL_42;
    }
  }

  taskInfo7 = [(SDAppleIDServerTask *)self taskInfo];
  v18 = [taskInfo7 objectForKeyedSubscript:@"phones"];

  if (!v18)
  {
LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v18 count];
    if (v5)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19 == 1;
    }

    isKindOfClass = v20;
  }

  else
  {
    isKindOfClass = 0;
  }

LABEL_34:
  v5 = v18;
LABEL_42:

  return isKindOfClass & 1;
}

- (void)_handleURLIsAvailable:(id)available error:(int)error completion:(id)completion
{
  v6 = *&error;
  availableCopy = available;
  completionCopy = completion;
  v10 = availableCopy;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = 0;
  v12 = 0;
  gsToken = 0;
  taskInfo = 0;
  if (v10 && !v6)
  {
    gsToken = [(SDAppleIDServerTask *)self gsToken];

    if (gsToken)
    {
      v15 = [SDAppleIDMutableURLRequest alloc];
      gsToken2 = [(SDAppleIDServerTask *)self gsToken];
      gsToken = [(SDAppleIDMutableURLRequest *)v15 initWithURL:v10 gsToken:gsToken2];

      if (gsToken)
      {
        taskInfo = [(SDAppleIDServerTask *)self taskInfo];

        if (!taskInfo)
        {
LABEL_8:
          v12 = gsToken;
          v11 = 0;
          v6 = 0;
          gsToken = v12;
          goto LABEL_9;
        }

        taskInfo2 = [(SDAppleIDServerTask *)self taskInfo];
        v19 = 0;
        taskInfo = [NSJSONSerialization dataWithJSONObject:taskInfo2 options:0 error:&v19];
        v11 = v19;

        if (!v11)
        {
          [(SDAppleIDMutableURLRequest *)gsToken setHTTPBody:taskInfo];
          goto LABEL_8;
        }

        if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
        {
          localizedDescription = [v11 localizedDescription];
          LogPrintF(&dword_100971638, "[SDAppleIDServerTask _handleURLIsAvailable:error:completion:]", 90, "JSON Serialization of the URL Request body failed with error %@", localizedDescription);
        }

        v6 = NSErrorToOSStatus();
        v12 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        taskInfo = 0;
        v6 = 4294960534;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      taskInfo = 0;
      v6 = 4294960587;
    }
  }

LABEL_9:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v12, v6);
  }
}

- (id)_parseFetchCertificateResponse:(id)response error:(int *)error
{
  responseCopy = response;
  v7 = +[NSMutableDictionary dictionary];
  if (!v7)
  {
    v31 = 0;
    v14 = 0;
    v9 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v28 = 0;
    v29 = 0;
    sub_100149BC8();
    v25 = 0;
    v26 = -6728;
    goto LABEL_80;
  }

  CFStringGetTypeID();
  sub_100019CA0();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    sub_100023F44();
  }

  else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 60, "### No altDSID\n");
  }

  CFDictionaryGetTypeID();
  sub_100019CA0();
  v9 = CFDictionaryGetTypedValue();
  v31 = v8;
  if (!v9)
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 90, "### No certificate info\n");
    }

    v28 = 0;
    v29 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_64;
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v10 = CFDictionaryGetTypedValue();
  v29 = v10;
  if (v10)
  {
    [v7 setObject:v10 forKeyedSubscript:@"CertificateToken"];
  }

  else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 60, "### No certificate token\n");
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v11 = CFDictionaryGetTypedValue();
  lowercaseString = [v11 lowercaseString];
  if ([lowercaseString isEqualToString:@"issued"])
  {
    v5 = 1;
  }

  else if ([lowercaseString isEqualToString:@"pending"])
  {
    v5 = 2;
  }

  else if ([lowercaseString isEqualToString:@"failed"])
  {
    v5 = 3;
  }

  else if ([lowercaseString isEqualToString:@"revoked"])
  {
    v5 = 4;
  }

  else if ([lowercaseString isEqualToString:@"expired"])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  v4 = &NSURLAuthenticationMethodServerTrust_ptr;
  v16 = [NSNumber numberWithInteger:v5];
  sub_100023F44();

  CFDictionaryGetDouble();
  if (v17 <= 0.0)
  {
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 60, "### No certificate expiration date. Will set to 6 months from now.\n");
    }

    v14 = +[NSDate date];
    v20 = [v14 dateByAddingTimeInterval:15552000.0];
    v19 = 0;
  }

  else
  {
    v14 = [NSDate dateWithTimeIntervalSince1970:v17 / 1000.0];
    v18 = +[NSDate date];
    v19 = [v18 dateByAddingTimeInterval:155520000.0];

    if ([v19 compare:v14] != -1)
    {
      goto LABEL_40;
    }

    v20 = v19;
    v19 = v20;
  }

  v14 = v20;
LABEL_40:
  v28 = v19;
  if (v14)
  {
    [v7 setObject:v14 forKeyedSubscript:{@"CertificateExpirationDate", v19, v29}];
  }

  else if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 90, "### Failed to create expiration date\n", v19, v29);
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v13 = CFDictionaryGetTypedValue();
  if (v13)
  {
    [v7 setObject:v13 forKeyedSubscript:@"CertificatePEM"];
  }

  else if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 90, "### No certificate PEM\n", v28);
  }

  CFStringGetTypeID();
  sub_100149BD4();
  v12 = CFDictionaryGetTypedValue();
  if (v12)
  {
    [v7 setObject:v12 forKeyedSubscript:@"CertificateSerialNumber"];
  }

  else if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 90, "### No certificate serial number\n", v28);
  }

  if (v5 != 2)
  {
LABEL_64:
    sub_100149BC8();
    goto LABEL_73;
  }

  v21 = NSDictionaryGetNSNumber();
  v5 = v21;
  if (!v21)
  {
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 60, "### Certificate status is pending, but delay not provided.\n", v28);
    }

    v4 = 0;
    goto LABEL_70;
  }

  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue] / 1000);
  v4 = v22;
  if (!v22 || ([v22 integerValue] & 0x8000000000000000) != 0)
  {
LABEL_70:
    v23 = &off_10090BD30;
    goto LABEL_71;
  }

  if ([v4 integerValue] >= 601)
  {
    v23 = &off_10090BD48;
LABEL_71:

    v4 = v23;
  }

  [v7 setObject:v4 forKeyedSubscript:{@"Delay", v28}];
LABEL_73:
  CFStringGetTypeID();
  sub_100019CA0();
  v24 = CFDictionaryGetTypedValue();
  if (v24)
  {
    v25 = v24;
    sub_100023F44();
    v26 = 0;
  }

  else
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFetchCertificateResponse:error:]", 90, "### No intermediate certificate PEM\n", v28, v29);
    }

    v26 = 0;
    v25 = 0;
  }

LABEL_80:
  if (error)
  {
    *error = v26;
  }

  return v7;
}

- (id)_parseFindPersonResponse:(id)response error:(int *)error
{
  errorCopy = error;
  responseCopy = response;
  v11 = +[NSDate date];
  v22 = responseCopy;
  if (!v11)
  {
    sub_100008978();
    v13 = 0;
    sub_100149BC8();
    goto LABEL_69;
  }

  CFArrayGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (v12)
  {
    v13 = v12;
    if ([v12 count])
    {
      if ([v13 count] == 1)
      {
        firstObject = [v13 firstObject];
        v6 = +[NSMutableDictionary dictionary];
        if (v6)
        {
          CFStringGetTypeID();
          sub_100021EBC();
          v5 = CFDictionaryGetTypedValue();
          if (v5)
          {
            [v6 setObject:v5 forKeyedSubscript:@"AccountIdentifier"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 60, "Account identifier not in match info dictionary returned by server\n", errorCopy, responseCopy);
          }

          CFStringGetTypeID();
          sub_100021EBC();
          v8 = CFDictionaryGetTypedValue();
          if (v8)
          {
            [v6 setObject:v8 forKeyedSubscript:@"AltDSID"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 60, "AltDSID not in match info dictionary returned by server\n", errorCopy);
          }

          CFStringGetTypeID();
          sub_100021EBC();
          v14 = CFDictionaryGetTypedValue();
          v9 = v14;
          if (v14)
          {
            lowercaseString = [v14 lowercaseString];
            if ([lowercaseString isEqualToString:@"issued"])
            {
              v16 = 1;
            }

            else if ([lowercaseString isEqualToString:@"pending"])
            {
              v16 = 2;
            }

            else if ([lowercaseString isEqualToString:@"failed"])
            {
              v16 = 3;
            }

            else if ([lowercaseString isEqualToString:@"revoked"])
            {
              v16 = 4;
            }

            else if ([lowercaseString isEqualToString:@"expired"])
            {
              v16 = 5;
            }

            else
            {
              v16 = 0;
            }

            v17 = [NSNumber numberWithInteger:v16];
            [v6 setObject:v17 forKeyedSubscript:@"CertificateStatus"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 60, "Certificate status not in match info dictionary returned by server\n", errorCopy);
          }

          CFStringGetTypeID();
          sub_100021EBC();
          responseCopy = CFDictionaryGetTypedValue();
          if (responseCopy)
          {
            [v6 setObject:responseCopy forKeyedSubscript:@"Matched"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 60, "Matched criterion not in match info dictionary returned by server\n", errorCopy);
          }

          CFStringGetTypeID();
          sub_100021EBC();
          v4 = CFDictionaryGetTypedValue();
          if (v4)
          {
            [v6 setObject:v4 forKeyedSubscript:@"MatchedValue"];
          }

          else if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 60, "Matched value not in match info dictionary returned by server\n", errorCopy);
          }

          v18 = [v11 dateByAddingTimeInterval:{2592000.0, errorCopy}];
          [v6 setObject:v18 forKeyedSubscript:@"ValidUntil"];

          if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 60, "### No matches array\n");
          }

          v19 = 0;
          goto LABEL_53;
        }

        sub_100008978();
LABEL_69:
        v19 = -6728;
        goto LABEL_53;
      }

      if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 60, "### Matches array has more than 1 object\n", errorCopy, responseCopy);
      }

      sub_100008978();
      sub_100149BC8();
      v19 = 201241;
    }

    else
    {
      v19 = 201223;
      if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 90, "### No matches found\n", errorCopy, responseCopy);
      }

      sub_100008978();
      sub_100149BC8();
    }
  }

  else
  {
    if (dword_100971638 <= 90 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseFindPersonResponse:error:]", 90, "### No matches array\n", errorCopy, responseCopy);
    }

    sub_100008978();
    v13 = 0;
    sub_100149BC8();
    v19 = 201240;
  }

LABEL_53:
  if (errorCopy)
  {
    *errorCopy = v19;
  }

  return v6;
}

- (id)_parseGetMyInfoResponse:(id)response error:(int *)error
{
  responseCopy = response;
  CFDictionaryGetTypeID();
  sub_100019CA0();
  v6 = CFDictionaryGetTypedValue();
  if (v6)
  {
    CFStringGetTypeID();
    sub_100021EBC();
    v35 = CFDictionaryGetTypedValue();
    CFDictionaryGetDouble();
    v8 = 0;
    if (v7 > 0.0)
    {
      v8 = [NSDate dateWithTimeIntervalSince1970:v7 / 1000.0];
    }

    CFStringGetTypeID();
    sub_100021EBC();
    v37 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    sub_100021EBC();
    v9 = CFDictionaryGetTypedValue();
    lowercaseString = [v9 lowercaseString];
    if ([lowercaseString isEqualToString:@"issued"])
    {
      v11 = 1;
    }

    else if ([lowercaseString isEqualToString:@"pending"])
    {
      v11 = 2;
    }

    else if ([lowercaseString isEqualToString:@"failed"])
    {
      v11 = 3;
    }

    else if ([lowercaseString isEqualToString:@"revoked"])
    {
      v11 = 4;
    }

    else
    {
      v12 = [lowercaseString isEqualToString:@"expired"];
      v11 = 5;
      if (!v12)
      {
        v11 = 0;
      }
    }

    v32 = v11;

    if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseGetMyInfoResponse:error:]", 30, "Received Get My Info Certificate Info: token=%@, expirationDate=%@, serial number=%@, status=%@\n", v35, v8, v37, v9);
    }
  }

  else
  {
    v8 = 0;
    v37 = 0;
    v9 = 0;
    v32 = 0;
    v35 = 0;
  }

  CFStringGetTypeID();
  sub_100019CA0();
  v36 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v42 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v41 = CFDictionaryGetTypedValue();
  CFDictionaryGetDouble();
  v14 = v13;
  CFArrayGetTypeID();
  sub_100019CA0();
  v40 = CFDictionaryGetTypedValue();
  CFArrayGetTypeID();
  sub_100019CA0();
  v39 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v15 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  sub_100019CA0();
  v38 = CFDictionaryGetTypedValue();
  v16 = NSDictionaryGetNSNumber();
  if (dword_100971638 <= 30)
  {
    if (dword_100971638 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseGetMyInfoResponse:error:]", 30, "Received Get My Info response: AltDSID=%@, Firstname=%{mask}, LastName=%{mask}, Emails=%~@, Phones=%~@, Validation Record: identifier=%@,version=%@, msUntilNextCheck=%d\n", v36, v42, v41, v40, v39, v38, v16, v14);
    }

    if (dword_100971638 <= 10 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971638, "[SDAppleIDServerTask _parseGetMyInfoResponse:error:]", 10, "Validation Record Data (base64)=%@\n", v15);
    }
  }

  v33 = v9;
  v17 = v14 / 1000.0;
  if (v14 / 1000.0 > 7776000.0 || v17 == 0.0)
  {
    v19 = 2592000.0;
  }

  else
  {
    v19 = v14 / 1000.0;
  }

  v20 = +[NSDate date];
  v21 = [v20 dateByAddingTimeInterval:v19];
  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = &off_10090BD60;
  }

  if (v15)
  {
    v23 = [[NSData alloc] initWithBase64EncodedString:v15 options:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = +[NSMutableDictionary dictionary];
  v25 = v24;
  v34 = v8;
  if (v24)
  {
    [v24 setObject:v8 forKeyedSubscript:@"CertificateExpirationDate"];
    [v25 setObject:v37 forKeyedSubscript:@"CertificateSerialNumber"];
    [NSNumber numberWithInteger:v32];
    errorCopy = error;
    v28 = v27 = v6;
    [v25 setObject:v28 forKeyedSubscript:@"CertificateStatus"];

    v6 = v27;
    error = errorCopy;
    v29 = v35;
    [v25 setObject:v35 forKeyedSubscript:@"CertificateToken"];
    [v25 setObject:v42 forKeyedSubscript:@"FirstName"];
    [v25 setObject:v41 forKeyedSubscript:@"LastName"];
    [v25 setObject:v40 forKeyedSubscript:@"ValidatedEmails"];
    [v25 setObject:v39 forKeyedSubscript:@"ValidatedPhones"];
    sub_100023F44();
    [v25 setObject:v38 forKeyedSubscript:@"ValidationRecordDataID"];
    [v25 setObject:v21 forKeyedSubscript:@"ValidationRecordNextCheckDate"];
    [v25 setObject:v22 forKeyedSubscript:@"Version"];
    v30 = 0;
    if (!error)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v30 = -6728;
  v29 = v35;
  if (error)
  {
LABEL_41:
    *error = v30;
  }

LABEL_42:

  return v25;
}

@end