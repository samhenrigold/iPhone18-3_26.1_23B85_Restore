@interface RefreshMicroPaymentDownloadOperation
- (BOOL)_refreshDownload:(id)download error:(id *)error;
- (BOOL)_updateDownload:(id)download withDictionary:(id)dictionary;
- (RefreshMicroPaymentDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier;
- (id)_newIdentityForPayment:(id)payment;
- (id)_newRequestWithIdentity:(id)identity transactionID:(id)d;
- (void)run;
@end

@implementation RefreshMicroPaymentDownloadOperation

- (RefreshMicroPaymentDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = RefreshMicroPaymentDownloadOperation;
  result = [(RefreshMicroPaymentDownloadOperation *)&v5 init];
  if (result)
  {
    result->_downloadID = identifier;
  }

  return result;
}

- (void)run
{
  v24 = 0;
  v3 = +[NSThread beginManagedContextSession];
  v4 = objc_alloc_init(NSFetchRequest);
  [v4 setEntity:{+[MicroPaymentDownload downloadEntityFromContext:](MicroPaymentDownload, "downloadEntityFromContext:", v3)}];
  [v4 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"downloadID=%lld", self->_downloadID)}];
  v5 = [v3 executeFetchRequest:v4 error:&v24];
  if (!v5 || (v6 = v5, [v5 count] != 1))
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      downloadID = self->_downloadID;
      v25 = 138412802;
      v26 = v20;
      v27 = 2048;
      v28 = downloadID;
      v29 = 2112;
      v30 = v24;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not get download: %lld, error: %@", &v25, 32);
      if (v22)
      {
        v23 = v22;
        [NSString stringWithCString:v22 encoding:4];
        free(v23);
        SSFileLog();
      }
    }

    goto LABEL_27;
  }

  if (!-[RefreshMicroPaymentDownloadOperation _refreshDownload:error:](self, "_refreshDownload:error:", [v6 objectAtIndex:0], &v24))
  {
LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog2;
  }

  oSLogObject2 = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v11 = objc_opt_class();
    v12 = self->_downloadID;
    v25 = 138412546;
    v26 = v11;
    v27 = 2048;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Refreshed download: %lld", &v25, 22);
    if (v13)
    {
      v14 = v13;
      [NSString stringWithCString:v13 encoding:4];
      free(v14);
      SSFileLog();
    }
  }

  sub_1000CE00C(v3);
  v15 = 1;
LABEL_28:

  +[NSThread endManagedContextSession];
  [(RefreshMicroPaymentDownloadOperation *)self setError:v24];
  [(RefreshMicroPaymentDownloadOperation *)self setSuccess:v15];
}

- (id)_newIdentityForPayment:(id)payment
{
  client = [payment client];
  if (!client)
  {
    return 0;
  }

  v5 = client;
  if ([objc_msgSend(client "usesIdentityAttributes")])
  {
    v6 = objc_alloc_init(StoreKitClientIdentity);
    -[StoreKitClientIdentity setAccountIdentifier:](v6, "setAccountIdentifier:", [payment userDSID]);
    -[StoreKitClientIdentity setBundleIdentifier:](v6, "setBundleIdentifier:", [v5 identifier]);
    -[StoreKitClientIdentity setBundleVersion:](v6, "setBundleVersion:", [v5 bundleVersion]);
    storeIdentifier = [v5 storeIdentifier];
    storeVersion = [v5 storeVersion];
    [(StoreKitClientIdentity *)v6 setStoreIdentifier:storeIdentifier];
    [(StoreKitClientIdentity *)v6 setStoreVersion:storeVersion];
    if (storeIdentifier)
    {
      v9 = storeVersion == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    [(StoreKitClientIdentity *)v6 setSandboxed:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = +[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy, "applicationProxyForIdentifier:", [v5 identifier]);
    if (v12)
    {
      v13 = v12;
      v6 = objc_alloc_init(StoreKitClientIdentity);
      [(StoreKitClientIdentity *)v6 setValuesWithSoftwareApplicationProxy:v13];
      -[StoreKitClientIdentity setSandboxed:](v6, "setSandboxed:", [objc_msgSend(v5 "sandboxed")]);
    }

    else
    {
      v6 = 0;
    }

    objc_autoreleasePoolPop(v11);
  }

  return v6;
}

- (id)_newRequestWithIdentity:(id)identity transactionID:(id)d
{
  v6 = objc_alloc_init(MicroPaymentQueueRequest);
  [(MicroPaymentQueueRequest *)v6 setClientIdentity:identity];
  -[MicroPaymentQueueRequest setUserIdentifier:](v6, "setUserIdentifier:", [identity accountIdentifier]);
  v7 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(d, "longLongValue")}];
  [(MicroPaymentQueueRequest *)v6 setRangeEndIdentifier:v7];
  [(MicroPaymentQueueRequest *)v6 setRangeStartIdentifier:v7];

  return v6;
}

- (BOOL)_refreshDownload:(id)download error:(id *)error
{
  v54 = 0;
  payment = [download payment];
  transactionIdentifier = [payment transactionIdentifier];
  if (transactionIdentifier)
  {
    v9 = transactionIdentifier;
    v10 = [(RefreshMicroPaymentDownloadOperation *)self _newIdentityForPayment:payment];
    if (v10)
    {
      v11 = v10;
      v12 = [(RefreshMicroPaymentDownloadOperation *)self _newRequestWithIdentity:v10 transactionID:v9];
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
        v17 = objc_opt_class();
        downloadID = self->_downloadID;
        v55 = 138412802;
        v56 = v17;
        v57 = 2048;
        v58 = downloadID;
        v59 = 2112;
        v60 = v9;
        v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Refreshing download: %lld / %@", &v55, 32);
        if (v19)
        {
          v20 = v19;
          v21 = [NSString stringWithCString:v19 encoding:4];
          free(v20);
          v52 = v21;
          SSFileLog();
        }
      }

      v22 = objc_alloc_init(LoadMicroPaymentQueuePaymentsOperation);
      [(LoadMicroPaymentQueuePaymentsOperation *)v22 setRequest:v12];
      [(LoadMicroPaymentQueuePaymentsOperation *)v22 setURLBagKey:@"p2-in-app-pending-transactions"];
      if (([(RefreshMicroPaymentDownloadOperation *)self runSubOperation:v22 returningError:&v54]& 1) != 0)
      {
        payments = [(MicroPaymentQueueResponse *)[(LoadMicroPaymentQueuePaymentsOperation *)v22 response] payments];
        if ([(NSArray *)payments count]== 1)
        {
          LOBYTE(self) = [(RefreshMicroPaymentDownloadOperation *)self _updateDownload:download withDictionary:[(NSArray *)payments objectAtIndex:0]];
          goto LABEL_65;
        }

        v44 = +[SSLogConfig sharedDaemonConfig];
        if (!v44)
        {
          v44 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v44 shouldLog];
        if ([v44 shouldLogToDisk])
        {
          LODWORD(v46) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v46) = shouldLog2;
        }

        oSLogObject2 = [v44 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v46;
        }

        else
        {
          v46 &= 2u;
        }

        if (!v46)
        {
          goto LABEL_64;
        }

        v48 = objc_opt_class();
        v49 = [(NSArray *)payments count];
        v50 = self->_downloadID;
        v55 = 138412802;
        v56 = v48;
        v57 = 2048;
        v58 = v49;
        v59 = 2048;
        v60 = v50;
        LODWORD(v53) = 32;
        v43 = _os_log_send_and_compose_impl(v46, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Unexpected count: %lu when refreshing download: %lld", &v55, v53);
      }

      else
      {
        v37 = +[SSLogConfig sharedDaemonConfig];
        if (!v37)
        {
          v37 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v37 shouldLog];
        if ([v37 shouldLogToDisk])
        {
          LODWORD(v39) = shouldLog3 | 2;
        }

        else
        {
          LODWORD(v39) = shouldLog3;
        }

        oSLogObject3 = [v37 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v39;
        }

        else
        {
          v39 &= 2u;
        }

        if (!v39)
        {
          goto LABEL_64;
        }

        v41 = objc_opt_class();
        v42 = self->_downloadID;
        v55 = 138412802;
        v56 = v41;
        v57 = 2048;
        v58 = v42;
        v59 = 2112;
        v60 = v54;
        LODWORD(v53) = 32;
        v43 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not refresh download: %lld, error: %@", &v55, v53);
      }

      self = v43;
      if (!v43)
      {
        goto LABEL_65;
      }

      [NSString stringWithCString:v43 encoding:4];
      free(self);
      SSFileLog();
LABEL_64:
      LOBYTE(self) = 0;
LABEL_65:

      if (!error)
      {
        return self;
      }

      goto LABEL_66;
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

    if (!v33)
    {
      goto LABEL_39;
    }

    v35 = objc_opt_class();
    v36 = self->_downloadID;
    v55 = 138412546;
    v56 = v35;
    v57 = 2048;
    v58 = v36;
    v30 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: No identity for download: %lld", &v55, 22);
  }

  else
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      LODWORD(v26) = shouldLog5 | 2;
    }

    else
    {
      LODWORD(v26) = shouldLog5;
    }

    oSLogObject5 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v26;
    }

    else
    {
      v26 &= 2u;
    }

    if (!v26)
    {
      goto LABEL_39;
    }

    v28 = objc_opt_class();
    v29 = self->_downloadID;
    v55 = 138412546;
    v56 = v28;
    v57 = 2048;
    v58 = v29;
    v30 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: No transaction ID for download: %lld", &v55, 22);
  }

  self = v30;
  if (!v30)
  {
    goto LABEL_40;
  }

  [NSString stringWithCString:v30 encoding:4];
  free(self);
  SSFileLog();
LABEL_39:
  LOBYTE(self) = 0;
LABEL_40:
  if (!error)
  {
    return self;
  }

LABEL_66:
  if ((self & 1) == 0)
  {
    *error = v54;
  }

  return self;
}

- (BOOL)_updateDownload:(id)download withDictionary:(id)dictionary
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  payment = [download payment];
  [payment mergeValuesFromResponse:dictionary];
  v8 = -[Download initWithMicroPaymentDownload:clientID:]([Download alloc], "initWithMicroPaymentDownload:clientID:", download, [objc_msgSend(payment "client")]);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100212100;
  v10[3] = &unk_10032C580;
  v10[5] = v8;
  v10[6] = &v11;
  v10[4] = self;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];

  LOBYTE(self) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return self;
}

@end