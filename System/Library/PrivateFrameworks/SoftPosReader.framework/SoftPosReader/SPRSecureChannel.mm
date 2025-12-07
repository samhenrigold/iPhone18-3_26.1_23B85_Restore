@interface SPRSecureChannel
+ (id)secureChannelWithName:(id)name error:(id *)error;
- (BOOL)startSessionAsyncWithRequest:(id)request delegate:(id)delegate error:(id *)error;
- (SPRSecureChannel)init;
- (SPRSecureChannel)initWithName:(id)name error:(id *)error;
- (id)securingRequest:(id)request force:(BOOL)force error:(id *)error;
- (id)startSessionWithRequest:(id)request error:(id *)error;
@end

@implementation SPRSecureChannel

- (SPRSecureChannel)init
{
  v6 = objc_msgSend_shared(SPRPrimer, a2, v2, v3, v4);
  v10 = objc_msgSend_secureChannelAndReturnError_(v6, v7, 0, v8, v9);

  return v10;
}

- (id)securingRequest:(id)request force:(BOOL)force error:(id *)error
{
  forceCopy = force;
  requestCopy = request;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_26A94ADB0;
  v29 = sub_26A94ADC0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A94ADB0;
  v23 = sub_26A94ADC0;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A94ADC8;
  v18[3] = &unk_279CA5428;
  v18[4] = &v25;
  v12 = objc_msgSend_syncProxyWithErrorHandler_(self, v9, v18, v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A94ADD8;
  v17[3] = &unk_279CA5E68;
  v17[4] = &v19;
  v17[5] = &v25;
  objc_msgSend_securingRequest_force_reply_(v12, v13, requestCopy, forceCopy, v17);

  if (error)
  {
    v14 = v26[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v15;
}

- (SPRSecureChannel)initWithName:(id)name error:(id *)error
{
  v7 = objc_msgSend_shared(SPRPrimer, a2, name, error, v4);
  v11 = objc_msgSend_secureChannelAndReturnError_(v7, v8, error, v9, v10);

  return v11;
}

+ (id)secureChannelWithName:(id)name error:(id *)error
{
  v6 = objc_msgSend_shared(SPRPrimer, a2, name, error, v4);
  v10 = objc_msgSend_secureChannelAndReturnError_(v6, v7, error, v8, v9);

  return v10;
}

- (id)startSessionWithRequest:(id)request error:(id *)error
{
  v6 = MEMORY[0x277CCAD38];
  requestCopy = request;
  v12 = objc_msgSend_ephemeralSessionConfiguration(v6, v8, v9, v10, v11);
  v14 = objc_msgSend_startSessionWithRequest_configuration_error_(self, v13, requestCopy, v12, error);

  return v14;
}

- (BOOL)startSessionAsyncWithRequest:(id)request delegate:(id)delegate error:(id *)error
{
  v8 = MEMORY[0x277CCAD38];
  delegateCopy = delegate;
  requestCopy = request;
  v15 = objc_msgSend_ephemeralSessionConfiguration(v8, v11, v12, v13, v14);
  LOBYTE(error) = objc_msgSend_startSessionAsyncWithRequest_configuration_delegate_error_(self, v16, requestCopy, v15, delegateCopy, error);

  return error;
}

@end