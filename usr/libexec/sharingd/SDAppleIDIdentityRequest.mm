@interface SDAppleIDIdentityRequest
- (SDAppleIDIdentityRequest)initWithAppleID:(id)d;
- (SDAppleIDIdentityRequest)initWithAppleID:(id)d certificateToken:(id)token privateKeyPersistentReference:(id)reference;
- (void)_activate;
- (void)_handleCertificate:(__SecCertificate *)certificate intermediateCertificate:(__SecCertificate *)intermediateCertificate withTrustResult:(BOOL)result error:(int)error;
- (void)_handleCertificateCreateResponseError:(id)error;
- (void)_handleCertificateCreateResponseWithInfo:(id)info error:(id)error;
- (void)_handleCertificateFetchResponseError:(id)error;
- (void)_handleCertificateFetchResponseWithInfo:(id)info error:(id)error;
- (void)_handleCreateTimerFired;
- (void)_handleFetchTimerFired;
- (void)_handleKeyPairAvailable;
- (void)_handleReceivedCertificate;
- (void)_invalidate;
- (void)_responseHandlerWithIdentity:(id)identity error:(id)error;
- (void)_scheduleCreateCertificateTaskWithDelay:(unint64_t)delay;
- (void)_scheduleCreateRetryWithDelay:(unint64_t)delay;
- (void)_scheduleFetchCertificateTaskWithDelay:(unint64_t)delay;
- (void)_scheduleFetchRetryWithDelay:(unint64_t)delay;
- (void)_sendCreateCertificateRequest;
- (void)_sendFetchCertificateRequest;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SDAppleIDIdentityRequest

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activated)
  {
    sub_100173DC4(v3, v4, v5);
  }

  else
  {
    v6 = dword_100971998;
    if (self->_invalidated)
    {
      sub_100173D6C(dword_100971998, v4, v5);
    }

    else
    {
      if (dword_100971998 <= 30)
      {
        if (dword_100971998 != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          v6 = sub_100173D34(v6, v4, v5);
        }
      }

      if (self->_certificateToken && self->_privateKeyPersistentReference)
      {
        if (dword_100971998 <= 30)
        {
          if (dword_100971998 != -1 || (v6 = _LogCategory_Initialize(), v6))
          {
            sub_100173D50(v6, v4, v5);
          }
        }

        [(SDAppleIDIdentityRequest *)self _sendFetchCertificateRequest];
      }

      else
      {
        [(SDAppleIDIdentityRequest *)self _sendCreateCertificateRequest];
      }

      self->_activated = 1;
    }
  }
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = dword_100971998;
  if (self->_invalidated)
  {
    sub_100173E40(dword_100971998, v3, v4);
  }

  else
  {
    if (dword_100971998 <= 30)
    {
      if (dword_100971998 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_100173E24(v5, v3, v4);
      }
    }

    createDelayTimer = self->_createDelayTimer;
    if (createDelayTimer)
    {
      v7 = createDelayTimer;
      dispatch_source_cancel(v7);
      v8 = self->_createDelayTimer;
      self->_createDelayTimer = 0;
    }

    [(SDAppleIDServerTask *)self->_certificateCreateTask setResponseHandler:0];
    [(SDAppleIDServerTask *)self->_certificateCreateTask invalidate];
    certificateCreateTask = self->_certificateCreateTask;
    self->_certificateCreateTask = 0;

    fetchDelayTimer = self->_fetchDelayTimer;
    if (fetchDelayTimer)
    {
      v11 = fetchDelayTimer;
      dispatch_source_cancel(v11);
      v12 = self->_fetchDelayTimer;
      self->_fetchDelayTimer = 0;
    }

    [(SDAppleIDServerTask *)self->_certificateFetchTask setResponseHandler:0];
    [(SDAppleIDServerTask *)self->_certificateFetchTask invalidate];
    certificateFetchTask = self->_certificateFetchTask;
    self->_certificateFetchTask = 0;

    if (self->_activated)
    {
      v19 = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithUTF8String:DebugGetErrorString()];
      v15 = v14;
      v16 = @"?";
      if (v14)
      {
        v16 = v14;
      }

      v20 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6723 userInfo:v17];
      [(SDAppleIDIdentityRequest *)self _responseHandlerWithIdentity:0 error:v18];
    }

    self->_invalidated = 1;
  }
}

- (void)dealloc
{
  privateKey = self->_privateKey;
  if (privateKey)
  {
    CFRelease(privateKey);
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    CFRelease(publicKey);
  }

  v5.receiver = self;
  v5.super_class = SDAppleIDIdentityRequest;
  [(SDAppleIDIdentityRequest *)&v5 dealloc];
}

- (void)_handleCertificateCreateResponseError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971998 <= 90 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_100173E98(errorCopy);
  }

  [(SDAppleIDIdentityRequest *)self _responseHandlerWithIdentity:0 error:errorCopy];
}

- (void)_handleCertificateCreateResponseWithInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDAppleIDServerTask *)self->_certificateCreateTask invalidate];
  certificateCreateTask = self->_certificateCreateTask;
  self->_certificateCreateTask = 0;

  if (errorCopy)
  {
    v11 = errorCopy;
    v9 = 0;
    goto LABEL_20;
  }

  if (!infoCopy)
  {
    v9 = 0;
    v15 = -6705;
LABEL_19:
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v15 userInfo:0];
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_20:
    [(SDAppleIDIdentityRequest *)self _handleCertificateCreateResponseError:v11];

    v11 = 0;
    goto LABEL_14;
  }

  if (dword_100971998 <= 30 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_100173EF4(infoCopy);
  }

  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (!v9 || (objc_storeStrong(&self->_altDSID, v9), CFStringGetTypeID(), CFDictionaryGetTypedValue(), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = -6712;
    goto LABEL_19;
  }

  v11 = v10;
  objc_storeStrong(&self->_certificateToken, v10);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    v13 = Int64Ranged;
  }

  else
  {
    v13 = 60;
  }

  [(SDAppleIDIdentityRequest *)self _scheduleFetchCertificateTaskWithDelay:v13];
  certificateTokenHandler = self->_certificateTokenHandler;
  if (certificateTokenHandler && self->_privateKeyPersistentReference)
  {
    certificateTokenHandler[2](certificateTokenHandler, self->_certificateToken);
  }

LABEL_14:
}

- (void)_handleCertificateFetchResponseError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971998 <= 90 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_100173F34(errorCopy);
  }

  if (NSErrorToOSStatus() == -6712 && self->_fetchRetryCount <= 2)
  {
    userInfo = [errorCopy userInfo];
    Int64 = CFDictionaryGetInt64();

    v6 = 7200;
    if (Int64 < 0x1C20)
    {
      v6 = Int64;
    }

    if (Int64)
    {
      v7 = v6;
    }

    else
    {
      v7 = 60;
    }

    [(SDAppleIDIdentityRequest *)self _scheduleFetchRetryWithDelay:v7];
  }

  else
  {
    [(SDAppleIDIdentityRequest *)self _responseHandlerWithIdentity:0 error:errorCopy];
  }
}

- (void)_handleCertificateFetchResponseWithInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDAppleIDServerTask *)self->_certificateFetchTask invalidate];
  certificateFetchTask = self->_certificateFetchTask;
  self->_certificateFetchTask = 0;

  if (errorCopy)
  {
    v30 = errorCopy;
    v12 = 0;
    v9 = 0;
    goto LABEL_58;
  }

  if (!infoCopy)
  {
    sub_100174068();
    v9 = 0;
LABEL_53:
    v12 = 0;
    goto LABEL_57;
  }

  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (!v9)
  {
    goto LABEL_52;
  }

  altDSID = self->_altDSID;
  if (!altDSID)
  {
    objc_storeStrong(&self->_altDSID, v9);
    altDSID = self->_altDSID;
  }

  if (([v9 isEqualToString:altDSID] & 1) == 0)
  {
LABEL_52:
    sub_100173F74();
    goto LABEL_53;
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  v12 = v11;
  if (!v11 || ([v11 isEqualToString:self->_certificateToken] & 1) == 0)
  {
LABEL_60:
    sub_100173F74();
LABEL_57:
    v30 = v31;
    if (!v31)
    {
      goto LABEL_37;
    }

LABEL_58:
    [(SDAppleIDIdentityRequest *)self _handleCertificateFetchResponseError:v30];

    goto LABEL_37;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  certificateStatus = Int64Ranged;
  self->_certificateStatus = Int64Ranged;
  if (Int64Ranged > 2)
  {
    if ((Int64Ranged - 3) > 2)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (dword_100971998 > 60)
    {
      goto LABEL_35;
    }

    if (dword_100971998 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_35;
      }

      certificateStatus = self->_certificateStatus;
    }

    if (certificateStatus > 5)
    {
      v17 = @"?";
    }

    else
    {
      v17 = *(&off_1008D1EF0 + certificateStatus);
    }

    LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _handleCertificateFetchResponseWithInfo:error:]", 60, "### Certificate status %d/%@\n", certificateStatus, v17);
LABEL_35:
    if (self->_createRetryCount < 3)
    {
      [(SDAppleIDIdentityRequest *)self _scheduleCreateRetryWithDelay:5];
      goto LABEL_37;
    }

LABEL_56:
    sub_10017401C(&v31);
    goto LABEL_57;
  }

  switch(Int64Ranged)
  {
    case 0:
      goto LABEL_18;
    case 1:
      CFDateGetTypeID();
      v19 = CFDictionaryGetTypedValue();
      certificateExpirationDate = self->_certificateExpirationDate;
      self->_certificateExpirationDate = v19;

      if (self->_certificateExpirationDate)
      {
        CFStringGetTypeID();
        v21 = CFDictionaryGetTypedValue();
        certificatePEM = self->_certificatePEM;
        self->_certificatePEM = v21;

        if (self->_certificatePEM)
        {
          CFStringGetTypeID();
          v23 = CFDictionaryGetTypedValue();
          certificateSerialNumber = self->_certificateSerialNumber;
          self->_certificateSerialNumber = v23;

          if (self->_certificateSerialNumber)
          {
            CFStringGetTypeID();
            v25 = CFDictionaryGetTypedValue();
            intermediateCertificatePEM = self->_intermediateCertificatePEM;
            self->_intermediateCertificatePEM = v25;

            if (self->_intermediateCertificatePEM)
            {
              [(SDAppleIDIdentityRequest *)self _handleReceivedCertificate];
              goto LABEL_37;
            }
          }
        }
      }

      goto LABEL_60;
    case 2:
      if (dword_100971998 > 60)
      {
        goto LABEL_41;
      }

      if (dword_100971998 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_41:
          v27 = CFDictionaryGetInt64Ranged();
          if (self->_fetchRetryCount < 3)
          {
            v28 = v27;
            if (v27 >= 0x1C20uLL)
            {
              v28 = 7200;
            }

            if (v27)
            {
              v29 = v28;
            }

            else
            {
              v29 = 60;
            }

            [(SDAppleIDIdentityRequest *)self _scheduleFetchRetryWithDelay:v29];
            goto LABEL_37;
          }

          goto LABEL_56;
        }

        v16 = self->_certificateStatus;
        if (v16 > 5)
        {
          v15 = @"?";
        }

        else
        {
          v15 = *(&off_1008D1EF0 + v16);
        }
      }

      else
      {
        v15 = @"Pending";
        v16 = 2;
      }

      LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _handleCertificateFetchResponseWithInfo:error:]", 60, "### Certificate status %d/%@\n", v16, v15);
      goto LABEL_41;
  }

LABEL_22:
  if (dword_100971998 <= 60)
  {
    if (dword_100971998 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }

      certificateStatus = self->_certificateStatus;
    }

    if (certificateStatus > 5)
    {
      v18 = @"?";
    }

    else
    {
      v18 = *(&off_1008D1EF0 + certificateStatus);
    }

    LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _handleCertificateFetchResponseWithInfo:error:]", 60, "### Certificate status %d/%@ isn't handled yet\n", certificateStatus, v18);
  }

LABEL_37:
}

- (void)_handleCertificate:(__SecCertificate *)certificate intermediateCertificate:(__SecCertificate *)intermediateCertificate withTrustResult:(BOOL)result error:(int)error
{
  resultCopy = result;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = &NSURLAuthenticationMethodServerTrust_ptr;
  if (error)
  {
    v10 = 0;
    v34 = 0;
    v35 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_43;
  }

  error = 201209;
  if (!resultCopy)
  {
    v10 = 0;
    v34 = 0;
    v35 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    error = 201219;
    goto LABEL_43;
  }

  if (dword_100971998 <= 50 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_10017412C();
  }

  if (!self->_altDSID || !self->_appleID || !self->_privateKeyPersistentReference)
  {
    v10 = 0;
    v34 = 0;
    v35 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    error = -6709;
    goto LABEL_43;
  }

  v14 = SFAppleIDExpirationDateForCertificate();
  v15 = 0;
  if (v14 && dword_100971998 <= 60 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_10017414C();
  }

  [(NSDate *)self->_certificateExpirationDate timeIntervalSinceDate:v15];
  if (v15)
  {
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    if (v16 > 2592000.0 && dword_100971998 <= 60 && (dword_100971998 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _handleCertificate:intermediateCertificate:withTrustResult:error:]", 60, "### Large certificate expiration date discrepancy. Certificate=%@; Response=%@\n", v15, self->_certificateExpirationDate);
    }
  }

  v17 = SFAppleIDExpirationDateForCertificate();
  v18 = 0;
  v9 = &NSURLAuthenticationMethodServerTrust_ptr;
  if (v17 && dword_100971998 <= 60 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_100174180();
  }

  [v18 timeIntervalSinceNow];
  v20 = v19;
  if (v19 < 7776000.0 && dword_100971998 <= 60 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _handleCertificate:intermediateCertificate:withTrustResult:error:]", 60, "### Intermediate certificate expiration date warning: expiration date: %@, time interval since now: %lf", v18, *&v20);
  }

  v35 = v18;
  v21 = SFAppleIDCommonNameForCertificate();
  v22 = 0;
  v34 = v22;
  if (v21)
  {
    v13 = v15;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    error = v21;
    goto LABEL_43;
  }

  v23 = v22;
  if (([v22 hasPrefix:@"com.apple.idms.appleid."] & 1) == 0)
  {
    v13 = v15;
    if (dword_100971998 <= 90 && (dword_100971998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001741B4(v34);
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_43;
  }

  v24 = [NSString stringWithFormat:@"Apple ID authorization certificate for %@", self->_appleID];
  error = SFAppleIDAddCertificateToKeychain();
  v12 = 0;

  if (error)
  {
    v13 = v15;
    v10 = 0;
LABEL_42:
    v11 = 0;
    goto LABEL_43;
  }

  if (![v12 length])
  {
    v13 = v15;
    v10 = 0;
LABEL_66:
    v11 = 0;
    error = -6762;
    goto LABEL_43;
  }

  if (dword_100971998 <= 50 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001741F4(&self->_appleID);
  }

  error = SFAppleIDAddCertificateToKeychain();
  v25 = 0;
  v10 = v25;
  if (error)
  {
    v13 = v15;
    goto LABEL_42;
  }

  if (![v25 length])
  {
    v13 = v15;
    goto LABEL_66;
  }

  v32 = v35;
  if (dword_100971998 <= 50 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_100174238(&self->_appleID);
  }

  v11 = +[NSDate date];
  v33 = [[SFAppleIDIdentity alloc] initWithAppleID:self->_appleID altDSID:self->_altDSID];
  if (v33)
  {
    v28 = v33;
    [v33 setAccountIdentifier:v23];
    [v28 setCertificateExpirationDate:self->_certificateExpirationDate];
    [v28 setCertificatePersistentReference:v12];
    [v28 setIntermediateCertificateExpirationDate:v35];
    [v28 setIntermediateCertificatePersistentReference:v10];
    [v28 setLastValidationAttemptDate:v11];
    [v28 setLastValidationDate:v11];
    [v28 setModificationDate:v11];
    [v28 setPrivateKeyPersistentReference:self->_privateKeyPersistentReference];
    [v28 setSerialNumber:self->_certificateSerialNumber];
    [(SDAppleIDIdentityRequest *)self _responseHandlerWithIdentity:v28 error:0];
    goto LABEL_46;
  }

  v13 = v15;
  error = -6728;
LABEL_43:
  errorCopy = error;
  v36 = NSLocalizedDescriptionKey;
  v27 = [v9[266] stringWithUTF8String:DebugGetErrorString()];
  v28 = v27;
  v29 = @"?";
  if (v27)
  {
    v29 = v27;
  }

  v37 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v31 = [NSError errorWithDomain:NSOSStatusErrorDomain code:errorCopy userInfo:v30];
  [(SDAppleIDIdentityRequest *)self _responseHandlerWithIdentity:0 error:v31];

  v15 = v13;
  v23 = v34;
  v32 = v35;
LABEL_46:
}

- (void)_handleCreateTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971998 <= 20)
  {
    if (dword_100971998 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_10017427C(v3, v4, v5);
    }
  }

  createDelayTimer = self->_createDelayTimer;
  if (createDelayTimer)
  {
    v7 = createDelayTimer;
    dispatch_source_cancel(v7);
    v8 = self->_createDelayTimer;
    self->_createDelayTimer = 0;
  }

  [(SDAppleIDIdentityRequest *)self _sendCreateCertificateRequest];
}

- (void)_handleFetchTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971998 <= 20)
  {
    if (dword_100971998 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100174298(v3, v4, v5);
    }
  }

  fetchDelayTimer = self->_fetchDelayTimer;
  if (fetchDelayTimer)
  {
    v7 = fetchDelayTimer;
    dispatch_source_cancel(v7);
    v8 = self->_fetchDelayTimer;
    self->_fetchDelayTimer = 0;
  }

  [(SDAppleIDIdentityRequest *)self _sendFetchCertificateRequest];
}

- (void)_handleReceivedCertificate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_appleID)
  {
    v3 = SFAppleIDCreateCertificateWithPEMString();
    if (!v3)
    {
      v3 = -6762;
    }
  }

  else
  {
    v3 = -6709;
  }

  v4 = v3;
  v10 = NSLocalizedDescriptionKey;
  v5 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v6 = v5;
  v7 = @"?";
  if (v5)
  {
    v7 = v5;
  }

  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v4 userInfo:v8];
  [(SDAppleIDIdentityRequest *)self _responseHandlerWithIdentity:0 error:v9];
}

- (void)_handleKeyPairAvailable
{
  if (!self->_appleID)
  {
    v5 = 0;
    v9 = -6705;
    goto LABEL_9;
  }

  if (!self->_privateKey || !self->_publicKey || self->_certificateCreateTask)
  {
    v5 = 0;
    goto LABEL_14;
  }

  p_csrPEM = &self->_csrPEM;
  csrPEM = self->_csrPEM;
  if (!csrPEM)
  {
    v11[5] = 0;
    v9 = SFAppleIDCreateCertificateRequestPEMStringForKeyPair();
    v10 = 0;
    v5 = v10;
    if (v9)
    {
LABEL_9:
      v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v9 userInfo:0];
      [(SDAppleIDIdentityRequest *)self _responseHandlerWithIdentity:0 error:v6];
      goto LABEL_10;
    }

    if (v10)
    {
      objc_storeStrong(&self->_csrPEM, 0);
      csrPEM = *p_csrPEM;
      goto LABEL_7;
    }

LABEL_14:
    v9 = -6762;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_7:
  v12 = @"csr";
  v13 = csrPEM;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [[SDAppleIDServerTask alloc] initWithType:0 appleID:self->_appleID info:v6];
  certificateCreateTask = self->_certificateCreateTask;
  self->_certificateCreateTask = v7;

  [(SDAppleIDServerTask *)self->_certificateCreateTask setDispatchQueue:self->_dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100173070;
  v11[3] = &unk_1008D1E80;
  v11[4] = self;
  [(SDAppleIDServerTask *)self->_certificateCreateTask setResponseHandler:v11];
  [(SDAppleIDServerTask *)self->_certificateCreateTask activate];
LABEL_10:
}

- (void)_responseHandlerWithIdentity:(id)identity error:(id)error
{
  identityCopy = identity;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  responseHandler = [(SDAppleIDIdentityRequest *)self responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [(SDAppleIDIdentityRequest *)self responseHandler];
    (responseHandler2)[2](responseHandler2, identityCopy, errorCopy);

    [(SDAppleIDIdentityRequest *)self setResponseHandler:0];
  }
}

- (void)_scheduleCreateCertificateTaskWithDelay:(unint64_t)delay
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_createDelayTimer)
  {
    sub_1001742B4(dword_100971998, v5, v6);
  }

  else
  {
    if (dword_100971998 <= 30 && (dword_100971998 != -1 || _LogCategory_Initialize()))
    {
      sub_10017430C(delay);
    }

    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    createDelayTimer = self->_createDelayTimer;
    self->_createDelayTimer = v7;

    v9 = self->_createDelayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100173240;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    SFDispatchTimerSet();
    dispatch_resume(self->_createDelayTimer);
  }
}

- (void)_scheduleFetchCertificateTaskWithDelay:(unint64_t)delay
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_fetchDelayTimer)
  {
    sub_10017434C(dword_100971998, v5, v6);
  }

  else
  {
    if (dword_100971998 <= 30 && (dword_100971998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001743A4(delay);
    }

    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    fetchDelayTimer = self->_fetchDelayTimer;
    self->_fetchDelayTimer = v7;

    v9 = self->_fetchDelayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100173358;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    SFDispatchTimerSet();
    dispatch_resume(self->_fetchDelayTimer);
  }
}

- (void)_scheduleCreateRetryWithDelay:(unint64_t)delay
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  createRetryCount = self->_createRetryCount + 1;
  self->_createRetryCount = createRetryCount;
  if (dword_100971998 <= 50)
  {
    if (dword_100971998 != -1)
    {
LABEL_3:
      LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _scheduleCreateRetryWithDelay:]", 50, "Scheduling create retry %d with delay %u seconds.\n", createRetryCount, delay);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      createRetryCount = self->_createRetryCount;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(SDAppleIDIdentityRequest *)self _scheduleCreateCertificateTaskWithDelay:delay];
}

- (void)_scheduleFetchRetryWithDelay:(unint64_t)delay
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  fetchRetryCount = self->_fetchRetryCount + 1;
  self->_fetchRetryCount = fetchRetryCount;
  if (dword_100971998 <= 50)
  {
    if (dword_100971998 != -1)
    {
LABEL_3:
      LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _scheduleFetchRetryWithDelay:]", 50, "Scheduling fetch retry %d with delay %u seconds.\n", fetchRetryCount, delay);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      fetchRetryCount = self->_fetchRetryCount;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(SDAppleIDIdentityRequest *)self _scheduleFetchCertificateTaskWithDelay:delay];
}

- (void)_sendCreateCertificateRequest
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_appleID)
  {
    v6 = -6705;
    goto LABEL_14;
  }

  if (self->_certificateCreateTask)
  {
    v6 = -6762;
    goto LABEL_14;
  }

  if (!self->_privateKey || !self->_publicKey)
  {
    v3 = +[SDStatusMonitor sharedMonitor];
    deviceWasUnlockedOnce = [v3 deviceWasUnlockedOnce];

    if (deviceWasUnlockedOnce)
    {
      v5 = dispatch_get_global_queue(0, 0);
      SFAppleIDCreateKeyPair();

      return;
    }

    v6 = 201226;
LABEL_14:
    sub_1001743E4(v6, self);
    return;
  }

  [(SDAppleIDIdentityRequest *)self _handleKeyPairAvailable];
}

- (void)_sendFetchCertificateRequest
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_appleID)
  {
    v4 = 0;
    v8 = -6705;
    goto LABEL_10;
  }

  certificateToken = self->_certificateToken;
  if (!certificateToken || self->_certificateFetchTask)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v10 = @"certificateToken";
  v11 = certificateToken;
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v5 = [[SDAppleIDServerTask alloc] initWithType:1 appleID:self->_appleID info:v4];
  certificateFetchTask = self->_certificateFetchTask;
  self->_certificateFetchTask = v5;

  v7 = self->_certificateFetchTask;
  if (!v7)
  {
LABEL_8:
    v8 = -6762;
LABEL_10:
    sub_100174458(v8, self);
    goto LABEL_6;
  }

  [(SDAppleIDServerTask *)v7 setDispatchQueue:self->_dispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10017381C;
  v9[3] = &unk_1008D1E80;
  v9[4] = self;
  [(SDAppleIDServerTask *)self->_certificateFetchTask setResponseHandler:v9];
  [(SDAppleIDServerTask *)self->_certificateFetchTask activate];
LABEL_6:
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001738A0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (SDAppleIDIdentityRequest)initWithAppleID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = SDAppleIDIdentityRequest;
  v6 = [(SDAppleIDIdentityRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appleID, d);
    v8 = SFMainQueue();
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v8;
  }

  return v7;
}

- (SDAppleIDIdentityRequest)initWithAppleID:(id)d certificateToken:(id)token privateKeyPersistentReference:(id)reference
{
  dCopy = d;
  tokenCopy = token;
  referenceCopy = reference;
  v17.receiver = self;
  v17.super_class = SDAppleIDIdentityRequest;
  v12 = [(SDAppleIDIdentityRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appleID, d);
    objc_storeStrong(&v13->_certificateToken, token);
    objc_storeStrong(&v13->_privateKeyPersistentReference, reference);
    v14 = SFMainQueue();
    dispatchQueue = v13->_dispatchQueue;
    v13->_dispatchQueue = v14;
  }

  return v13;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173A74;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end