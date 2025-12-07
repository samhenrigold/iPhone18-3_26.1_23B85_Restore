@interface CheckoutRentalKeysOperation
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (BOOL)_haveValidRentalInformation;
- (BOOL)_performCheckout:(id *)checkout;
- (CheckoutRentalKeysOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier;
- (CheckoutRentalKeysOperation)initWithSinfs:(id)sinfs;
- (CheckoutRentalKeysOperation)initWithStoreDownloadSinfs:(id)sinfs;
- (NSArray)sinfs;
- (NSNumber)accountIdentifier;
- (NSNumber)rentalKeyIdentifier;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSURLConnectionResponse)URLResponse;
- (id)_bodyData;
- (id)_copyAccountIdentifier;
- (id)_copyRentalIdentifier;
- (id)_primarySINF;
- (void)_run;
- (void)_showErrorDialogForOutput:(id)output;
- (void)dealloc;
- (void)setClientIdentifierHeader:(id)header;
- (void)setUserAgent:(id)agent;
@end

@implementation CheckoutRentalKeysOperation

- (CheckoutRentalKeysOperation)initWithSinfs:(id)sinfs
{
  if (![sinfs count])
  {
    sub_100271F04(a2, self);
  }

  v8.receiver = self;
  v8.super_class = CheckoutRentalKeysOperation;
  v6 = [(CheckoutRentalKeysOperation *)&v8 init];
  if (v6)
  {
    v6->_sinfs = [sinfs copy];
    v6->_shouldValidateRentalInfo = 1;
  }

  return v6;
}

- (CheckoutRentalKeysOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier
{
  if (![identifier unsignedLongLongValue] || !objc_msgSend(keyIdentifier, "unsignedLongLongValue"))
  {
    sub_100271F60(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CheckoutRentalKeysOperation;
  v8 = [(CheckoutRentalKeysOperation *)&v10 init];
  if (v8)
  {
    v8->_accountIdentifier = [identifier copy];
    v8->_rentalKeyIdentifier = [keyIdentifier copy];
    v8->_shouldValidateRentalInfo = 1;
  }

  return v8;
}

- (CheckoutRentalKeysOperation)initWithStoreDownloadSinfs:(id)sinfs
{
  v4 = [[DownloadDRM alloc] initWithSinfArray:sinfs];
  v5 = objc_alloc_init(NSMutableArray);
  sinfs = [(DownloadDRM *)v4 sinfs];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSArray *)sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(sinfs);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) dataForSinfDataKey:off_100382E78];
        if (v11)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(CheckoutRentalKeysOperation *)self initWithSinfs:v5];

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckoutRentalKeysOperation;
  [(CheckoutRentalKeysOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountIdentifier;

  return v2;
}

- (NSString)clientIdentifierHeader
{
  [(CheckoutRentalKeysOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(CheckoutRentalKeysOperation *)self unlock];
  return v3;
}

- (NSNumber)rentalKeyIdentifier
{
  v2 = self->_rentalKeyIdentifier;

  return v2;
}

- (void)setClientIdentifierHeader:(id)header
{
  [(CheckoutRentalKeysOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(CheckoutRentalKeysOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  [(CheckoutRentalKeysOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(CheckoutRentalKeysOperation *)self unlock];
}

- (NSArray)sinfs
{
  v2 = self->_sinfs;

  return v2;
}

- (SSURLConnectionResponse)URLResponse
{
  [(CheckoutRentalKeysOperation *)self lock];
  v3 = self->_urlResponse;
  [(CheckoutRentalKeysOperation *)self unlock];
  return v3;
}

- (NSString)userAgent
{
  [(CheckoutRentalKeysOperation *)self lock];
  v3 = self->_userAgent;
  [(CheckoutRentalKeysOperation *)self unlock];

  return v3;
}

- (id)_bodyData
{
  if ([-[CheckoutRentalKeysOperation _primarySINF](self "_primarySINF")] || -[NSNumber unsignedLongLongValue](self->_accountIdentifier, "unsignedLongLongValue") && -[NSNumber unsignedLongLongValue](self->_rentalKeyIdentifier, "unsignedLongLongValue"))
  {
    v3 = sub_1000B1E14();
    if (!v3)
    {
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        LODWORD(v22) = shouldLog | 2;
      }

      else
      {
        LODWORD(v22) = shouldLog;
      }

      oSLogObject = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (!v22)
      {
        goto LABEL_44;
      }

      v66 = 138412290;
      v67 = objc_opt_class();
      v19 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not get rental bag", &v66, 12);
      goto LABEL_42;
    }

    v4 = v3;
    v64 = 0;
    v65 = 0;
    if (sub_1000B208C(&v65, &v64))
    {
      _copyAccountIdentifier = [(CheckoutRentalKeysOperation *)self _copyAccountIdentifier];
      if (_copyAccountIdentifier)
      {
        v6 = _copyAccountIdentifier;
        _copyRentalIdentifier = [(CheckoutRentalKeysOperation *)self _copyRentalIdentifier];
        if (!_copyRentalIdentifier)
        {
          v45 = +[SSLogConfig sharedDaemonConfig];
          if (!v45)
          {
            v45 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v45 shouldLog];
          if ([v45 shouldLogToDisk])
          {
            LODWORD(v47) = shouldLog2 | 2;
          }

          else
          {
            LODWORD(v47) = shouldLog2;
          }

          oSLogObject2 = [v45 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v47;
          }

          else
          {
            v47 &= 2u;
          }

          if (v47)
          {
            v49 = objc_opt_class();
            v66 = 138412290;
            v67 = v49;
            v50 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not get rental identifier", &v66, 12);
            if (v50)
            {
              v51 = v50;
              v52 = [NSString stringWithCString:v50 encoding:4];
              free(v51);
              v62 = v52;
              SSFileLog();
            }
          }

          goto LABEL_68;
        }

        v8 = _copyRentalIdentifier;
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = @"play";
        if (MGGetSInt32Answer() != 4 && ![(CheckoutRentalKeysOperation *)self shouldCheckoutWithPlay])
        {
          v10 = @"download-done";
        }

        [v9 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), v10}];
        [v9 setObject:v6 forKey:@"dsid"];
        guid = [+[ISDevice sharedInstance](ISDevice guid];
        if (guid)
        {
          [v9 setObject:guid forKey:@"guid"];
        }

        v12 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
        if (v12)
        {
          [v9 setObject:v12 forKey:@"hw.model"];
        }

        if (v65)
        {
          [v9 setObject:v65 forKey:@"device-diversity"];
        }

        if (v64)
        {
          [v9 setObject:v64 forKey:@"rbsync"];
        }

        [v9 setObject:v4 forKey:@"rental-bag"];
        [v9 setObject:v8 forKey:@"rental-id"];
        checkoutType = [(CheckoutRentalKeysOperation *)self checkoutType];
        if (checkoutType == 1)
        {
          v14 = @"download";
        }

        else
        {
          if (checkoutType != 2)
          {
LABEL_94:
            v53 = +[SSLogConfig sharedWriteToDiskConfig];
            if (!v53)
            {
              v53 = +[SSLogConfig sharedConfig];
            }

            shouldLog3 = [v53 shouldLog];
            if ([v53 shouldLogToDisk])
            {
              LODWORD(v55) = shouldLog3 | 2;
            }

            else
            {
              LODWORD(v55) = shouldLog3;
            }

            oSLogObject3 = [v53 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
            {
              v55 = v55;
            }

            else
            {
              v55 &= 2u;
            }

            if (v55)
            {
              v57 = objc_opt_class();
              v66 = 138412546;
              v67 = v57;
              v68 = 2112;
              v69 = v9;
              v58 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Rental checkout body: %@", &v66, 22);
              if (v58)
              {
                v59 = v58;
                v60 = [NSString stringWithCString:v58 encoding:4];
                free(v59);
                v62 = v60;
                SSFileLog();
              }
            }

            v44 = [NSPropertyListSerialization dataWithPropertyList:v9 format:100 options:0 error:0, v62];

            goto LABEL_106;
          }

          v14 = @"stream";
        }

        [v9 setObject:v14 forKey:@"checkout-type"];
        goto LABEL_94;
      }

      v32 = +[SSLogConfig sharedDaemonConfig];
      if (!v32)
      {
        v32 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v32 shouldLog];
      if ([v32 shouldLogToDisk])
      {
        LODWORD(v34) = shouldLog4 | 2;
      }

      else
      {
        LODWORD(v34) = shouldLog4;
      }

      oSLogObject4 = [v32 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v34;
      }

      else
      {
        v34 &= 2u;
      }

      if (!v34)
      {
LABEL_67:
        v6 = 0;
        goto LABEL_68;
      }

      v36 = objc_opt_class();
      v66 = 138412290;
      v67 = v36;
      v31 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Could not get DSID", &v66, 12);
    }

    else
    {
      v26 = +[SSLogConfig sharedDaemonConfig];
      if (!v26)
      {
        v26 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v26 shouldLog];
      if ([v26 shouldLogToDisk])
      {
        LODWORD(v28) = shouldLog5 | 2;
      }

      else
      {
        LODWORD(v28) = shouldLog5;
      }

      oSLogObject5 = [v26 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v28;
      }

      else
      {
        v28 &= 2u;
      }

      if (!v28)
      {
        goto LABEL_67;
      }

      v30 = objc_opt_class();
      v66 = 138412290;
      v67 = v30;
      v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Could not get rental bag request", &v66, 12);
    }

    if (v31)
    {
      v37 = v31;
      v38 = [NSString stringWithCString:v31 encoding:4];
      free(v37);
      v62 = v38;
      SSFileLog();
    }

    goto LABEL_67;
  }

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    LODWORD(v17) = shouldLog6 | 2;
  }

  else
  {
    LODWORD(v17) = shouldLog6;
  }

  oSLogObject6 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_44;
  }

  v66 = 138412290;
  v67 = objc_opt_class();
  v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%@: Invalid primary sinf", &v66, 12);
LABEL_42:
  if (v19)
  {
    v24 = v19;
    v25 = [NSString stringWithCString:v19 encoding:4];
    free(v24);
    v62 = v25;
    SSFileLog();
  }

LABEL_44:
  v6 = 0;
  v4 = 0;
  v64 = 0;
  v65 = 0;
LABEL_68:
  v39 = +[SSLogConfig sharedDaemonConfig];
  if (!v39)
  {
    v39 = +[SSLogConfig sharedConfig];
  }

  shouldLog7 = [v39 shouldLog];
  if ([v39 shouldLogToDisk])
  {
    LODWORD(v41) = shouldLog7 | 2;
  }

  else
  {
    LODWORD(v41) = shouldLog7;
  }

  oSLogObject7 = [v39 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v41;
  }

  else
  {
    v41 &= 2u;
  }

  if (v41)
  {
    v43 = objc_opt_class();
    v66 = 138412290;
    v67 = v43;
    LODWORD(v63) = 12;
    v44 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, oSLogObject7, 0, "%@: Could not generate checkout request body", &v66, v63);
    if (!v44)
    {
      v8 = 0;
      goto LABEL_106;
    }

    [NSString stringWithCString:v44 encoding:4];
    free(v44);
    SSFileLog();
  }

  v8 = 0;
  v44 = 0;
LABEL_106:

  return v44;
}

- (id)_copyAccountIdentifier
{
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {

    return [(NSNumber *)accountIdentifier copy];
  }

  else
  {
    v5 = [[SinfsArray alloc] initWithSINFs:self->_sinfs];
    v6 = [(SinfsArray *)v5 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

    return v6;
  }
}

- (id)_copyRentalIdentifier
{
  rentalKeyIdentifier = self->_rentalKeyIdentifier;
  if (rentalKeyIdentifier)
  {

    return [(NSNumber *)rentalKeyIdentifier copy];
  }

  else
  {
    v5 = [[SinfsArray alloc] initWithSINFs:self->_sinfs];
    v6 = [(SinfsArray *)v5 copyValueForProperty:@"SinfPropertyFairPlayKeyIdentifier" error:0];

    return v6;
  }
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  v7 = [response objectForKey:kISFailureTypeKey];
  v8 = [response objectForKey:@"rental-bag-response"];
  if (v7)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v44 = 138412546;
      v45 = objc_opt_class();
      v46 = 2112;
      responseCopy = v7;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Received failure type: %@", &v44, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v42 = v15;
        SSFileLog();
      }
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 intValue] == 5102)
    {
      v16 = [ISError() errorBySettingFatalError:1];
      [(CheckoutRentalKeysOperation *)self _showErrorDialogForOutput:response];
LABEL_34:
      v26 = 0;
      goto LABEL_35;
    }

    v17 = ISError();
LABEL_33:
    v16 = v17;
    goto LABEL_34;
  }

  if (v8)
  {
    if (!sub_1000B2C3C(v8) || (v18 = [response objectForKey:@"device-diversity"]) != 0 && !sub_1000B2D94(v18))
    {
      v19 = +[SSLogConfig sharedDaemonConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        LODWORD(v21) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v21) = shouldLog2;
      }

      oSLogObject2 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (v21)
      {
        v44 = 138412290;
        v45 = objc_opt_class();
        v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not process rental bag keys", &v44, 12);
        if (v23)
        {
          v24 = v23;
          v25 = [NSString stringWithCString:v23 encoding:4];
          free(v24);
          v42 = v25;
          SSFileLog();
        }
      }

      ISError();
      [NSNumber numberWithBool:1];
      v17 = SSErrorBySettingUserInfoValue();
      goto LABEL_33;
    }

    goto LABEL_60;
  }

  v35 = +[SSLogConfig sharedDaemonConfig];
  if (!v35)
  {
    v35 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    LODWORD(v37) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v37) = shouldLog3;
  }

  oSLogObject3 = [v35 OSLogObject];
  v26 = 1;
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v37 = v37;
  }

  else
  {
    v37 &= 2u;
  }

  if (v37)
  {
    v44 = 138412290;
    v45 = objc_opt_class();
    v39 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Succeeding because no rental bag data", &v44, 12);
    if (v39)
    {
      v40 = v39;
      v41 = [NSString stringWithCString:v39 encoding:4];
      free(v40);
      v42 = v41;
      SSFileLog();
LABEL_60:
      v16 = 0;
      v26 = 1;
      goto LABEL_35;
    }
  }

  v16 = 0;
LABEL_35:
  v27 = +[SSLogConfig sharedWriteToDiskConfig];
  if (!v27)
  {
    v27 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v27 shouldLog];
  if ([v27 shouldLogToDisk])
  {
    LODWORD(v29) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v29) = shouldLog4;
  }

  oSLogObject4 = [v27 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v29;
  }

  else
  {
    v29 &= 2u;
  }

  if (v29)
  {
    v31 = objc_opt_class();
    v44 = 138412546;
    v45 = v31;
    v46 = 2112;
    responseCopy = response;
    LODWORD(v43) = 22;
    v32 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Rental checkout response: %@", &v44, v43);
    if (v32)
    {
      v33 = v32;
      [NSString stringWithCString:v32 encoding:4];
      free(v33);
      SSFileLog();
    }
  }

  if (error)
  {
    *error = v16;
  }

  return v26;
}

- (BOOL)_haveValidRentalInformation
{
  if ([(NSArray *)self->_sinfs count])
  {
    v3 = [[SinfsArray alloc] initWithSINFs:self->_sinfs];
    v4 = [(SinfsArray *)v3 copyValueForProperty:@"SinfPropertyRentalInformation" error:0];

    if (!v4)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v4 = sub_1000B23FC([(NSNumber *)self->_accountIdentifier unsignedLongLongValue], [(NSNumber *)self->_rentalKeyIdentifier unsignedLongLongValue]);
    if (!v4)
    {
      goto LABEL_40;
    }
  }

  if (![+[SSLogConfig sharedWriteToDiskConfig](SSLogConfig "sharedWriteToDiskConfig")])
  {
    goto LABEL_40;
  }

  v5 = [NSDate dateWithTimeInterval:[NSDate dateWithTimeIntervalSince1970:[(ISFairPlayRentalInfo *)v4 rentalStartTime]] sinceDate:[(ISFairPlayRentalInfo *)v4 rentalDuration]];
  v6 = +[SSLogConfig sharedWriteToDiskConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    [(NSDate *)v5 timeIntervalSinceNow];
    *v33 = 138412802;
    *&v33[4] = v10;
    *&v33[12] = 2048;
    *&v33[14] = v11;
    *&v33[22] = 2112;
    v34 = v5;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%@: Rental period ends in %.2f seconds at %@", v33, 32);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v31 = v14;
      SSFileLog();
    }
  }

  if ([(ISFairPlayRentalInfo *)v4 playbackStartTime]== -1)
  {
    v23 = +[SSLogConfig sharedWriteToDiskConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog2;
    }

    oSLogObject2 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      playbackDuration = [(ISFairPlayRentalInfo *)v4 playbackDuration];
      *v33 = 138412546;
      *&v33[4] = v27;
      *&v33[12] = 2048;
      *&v33[14] = playbackDuration;
      LODWORD(v32) = 22;
      v22 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 2, "%@: Playback not started, duration is %lu", v33, v32, *v33, *&v33[8], v34);
LABEL_38:
      if (v22)
      {
        v29 = v22;
        [NSString stringWithCString:v22 encoding:4];
        free(v29);
        SSFileLog();
      }
    }
  }

  else
  {
    v15 = [NSDate dateWithTimeInterval:[NSDate dateWithTimeIntervalSince1970:[(ISFairPlayRentalInfo *)v4 playbackStartTime]] sinceDate:[(ISFairPlayRentalInfo *)v4 playbackDuration]];
    v16 = +[SSLogConfig sharedWriteToDiskConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog3;
    }

    oSLogObject3 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      [(NSDate *)v15 timeIntervalSinceNow];
      *v33 = 138412802;
      *&v33[4] = v20;
      *&v33[12] = 2048;
      *&v33[14] = v21;
      *&v33[22] = 2112;
      LODWORD(v32) = 32;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject3, 2, "%@: Rental playback period ends in %.2f seconds at %@", v33, v32, *v33, *&v33[8], v15);
      goto LABEL_38;
    }
  }

LABEL_40:

  return v4 != 0;
}

- (BOOL)_performCheckout:(id *)checkout
{
  v24 = 0;
  _bodyData = [(CheckoutRentalKeysOperation *)self _bodyData];
  if (!_bodyData)
  {
    v24 = ISError();
    if (!checkout)
    {
      return _bodyData;
    }

    goto LABEL_23;
  }

  v6 = objc_alloc_init(ISStoreURLOperation);
  _copyAccountIdentifier = [(CheckoutRentalKeysOperation *)self _copyAccountIdentifier];
  if (_copyAccountIdentifier)
  {
    v8 = _copyAccountIdentifier;
    v9 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:_copyAccountIdentifier];
    [v6 setAuthenticationContext:v9];
  }

  v10 = objc_alloc_init(DaemonProtocolDataProvider);
  [v6 setDataProvider:v10];
  if ([(CheckoutRentalKeysOperation *)self isBackgroundCheckout])
  {
    [(DaemonProtocolDataProvider *)v10 setShouldProcessDialogs:0];
  }

  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  [v11 setCachePolicy:1];
  [v11 setClientIdentifier:{-[CheckoutRentalKeysOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v11 setHTTPBody:_bodyData];
  [v11 setHTTPMethod:@"POST"];
  [v11 setURLBagKey:@"rental-checkout"];
  userAgent = [(CheckoutRentalKeysOperation *)self userAgent];
  [v11 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v6 setRequestProperties:v11];

  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog;
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v25 = 138412290;
    v26 = objc_opt_class();
    v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Checking out rental keys", &v25, 12);
    if (v17)
    {
      v18 = v17;
      v19 = [NSString stringWithCString:v17 encoding:4];
      free(v18);
      v23 = v19;
      SSFileLog();
    }
  }

  if ([(CheckoutRentalKeysOperation *)self runSubOperation:v6 returningError:&v24, v23])
  {
    output = [(DaemonProtocolDataProvider *)v10 output];
    LOBYTE(_bodyData) = [(CheckoutRentalKeysOperation *)self _handleResponse:output error:&v24];
    v21 = [NSPropertyListSerialization dataWithPropertyList:output format:100 options:0 error:0];
    [(CheckoutRentalKeysOperation *)self lock];

    self->_urlResponse = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v6 bodyData:{"response"), v21}];
    [(CheckoutRentalKeysOperation *)self unlock];
  }

  else
  {
    LOBYTE(_bodyData) = 0;
  }

  if (checkout)
  {
LABEL_23:
    *checkout = v24;
  }

  return _bodyData;
}

- (id)_primarySINF
{
  result = [(NSArray *)self->_sinfs count];
  if (result)
  {
    sinfs = self->_sinfs;

    return [(NSArray *)sinfs objectAtIndex:0];
  }

  return result;
}

- (void)_run
{
  v41 = 0;
  v3 = SSErrorAllowRetryKey;
  v4 = 1;
  while (1)
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v42 = 138412802;
      v43 = v9;
      v44 = 2048;
      v45 = v4;
      v46 = 1024;
      v47 = 3;
      LODWORD(v40) = 28;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Performing checkout attempt #%ld of %d", &v42, v40);
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4];
        free(v11);
        v39 = v12;
        SSFileLog();
      }
    }

    if ([(CheckoutRentalKeysOperation *)self _performCheckout:&v41, v39])
    {
      if (!self->_shouldValidateRentalInfo || [(CheckoutRentalKeysOperation *)self _haveValidRentalInformation])
      {
        v23 = +[SSLogConfig sharedDaemonConfig];
        if (!v23)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v23 shouldLog];
        if ([v23 shouldLogToDisk])
        {
          LODWORD(v25) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v25) = shouldLog2;
        }

        oSLogObject2 = [v23 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v25 = v25;
        }

        else
        {
          v25 &= 2u;
        }

        if (v25)
        {
          v27 = objc_opt_class();
          v42 = 138412290;
          v43 = v27;
          LODWORD(v40) = 12;
          v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Verified rental information", &v42, v40);
          if (v28)
          {
            v29 = v28;
            v30 = [NSString stringWithCString:v28 encoding:4];
            free(v29);
            v39 = v30;
            SSFileLog();
          }
        }

        if ([(CheckoutRentalKeysOperation *)self isBackgroundCheckout])
        {
          [+[DistributedNotificationCenter defaultCenter](DistributedNotificationCenter "defaultCenter")];
        }

        v22 = 1;
        goto LABEL_57;
      }

      goto LABEL_18;
    }

    if (([objc_msgSend(objc_msgSend(v41 "userInfo")] & 1) == 0)
    {
      break;
    }

LABEL_18:
    v13 = v4++ - 1;
    if (v13 >= 2)
    {
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        LODWORD(v16) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v16) = shouldLog3;
      }

      oSLogObject3 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v16;
      }

      else
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v18 = objc_opt_class();
        v42 = 138412290;
        v43 = v18;
        LODWORD(v40) = 12;
        v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Giving up after repeated failure", &v42, v40);
        if (v19)
        {
          v20 = v19;
          v21 = [NSString stringWithCString:v19 encoding:4];
          free(v20);
          v39 = v21;
          SSFileLog();
        }
      }

      v22 = 0;
      v41 = ISError();
      goto LABEL_57;
    }
  }

  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    LODWORD(v33) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v33) = shouldLog4;
  }

  oSLogObject4 = [v31 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v33;
  }

  else
  {
    v33 &= 2u;
  }

  if (v33)
  {
    v35 = objc_opt_class();
    v42 = 138412290;
    v43 = v35;
    LODWORD(v40) = 12;
    v36 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Giving up after checkout failure", &v42, v40);
    if (v36)
    {
      v37 = v36;
      v38 = [NSString stringWithCString:v36 encoding:4];
      free(v37);
      v39 = v38;
      SSFileLog();
    }
  }

  v22 = 0;
LABEL_57:
  [(CheckoutRentalKeysOperation *)self setError:v41, v39];
  [(CheckoutRentalKeysOperation *)self setSuccess:v22];
}

- (void)_showErrorDialogForOutput:(id)output
{
  v5 = [output objectForKey:@"customerMessage"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length] && v5 && !objc_msgSend(output, "objectForKey:", kISDialogKey) && !-[CheckoutRentalKeysOperation isBackgroundCheckout](self, "isBackgroundCheckout"))
  {
    v6 = [ISDialogOperation operationWithError:ISError()];
    v7 = +[ISOperationQueue mainQueue];

    [v7 addOperation:v6];
  }
}

@end