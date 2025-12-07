@interface RestoreDownloadItemsOperation
- (BOOL)_runWithOptions:(id)options error:(id *)error;
- (BOOL)shouldShowTermsAndConditionsDialog;
- (NSArray)responses;
- (RestoreDownloadItemsOperation)initWithDownloadItems:(id)items account:(id)account;
- (id)_newResponseWithItems:(id)items error:(id)error;
- (id)_plistDataWithItems:(id)items options:(id)options error:(id *)error;
- (id)_runWithBodyData:(id)data contentEncoding:(id)encoding options:(id)options error:(id *)error;
- (id)_runWithItems:(id)items options:(id)options;
- (void)_addResponse:(id)response;
- (void)_run;
- (void)_showDialogsForResponse:(id)response;
- (void)setShouldShowTermsAndConditionsDialog:(BOOL)dialog;
@end

@implementation RestoreDownloadItemsOperation

- (RestoreDownloadItemsOperation)initWithDownloadItems:(id)items account:(id)account
{
  itemsCopy = items;
  accountCopy = account;
  v15.receiver = self;
  v15.super_class = RestoreDownloadItemsOperation;
  v8 = [(RestoreDownloadItemsOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, account);
    v10 = [itemsCopy copy];
    downloadItems = v9->_downloadItems;
    v9->_downloadItems = v10;

    v12 = objc_alloc_init(NSMutableArray);
    responses = v9->_responses;
    v9->_responses = v12;
  }

  return v9;
}

- (NSArray)responses
{
  [(RestoreDownloadItemsOperation *)self lock];
  v3 = [(NSMutableArray *)self->_responses copy];
  [(RestoreDownloadItemsOperation *)self unlock];

  return v3;
}

- (void)setShouldShowTermsAndConditionsDialog:(BOOL)dialog
{
  [(RestoreDownloadItemsOperation *)self lock];
  self->_shouldShowTermsAndConditionsDialog = dialog;

  [(RestoreDownloadItemsOperation *)self unlock];
}

- (BOOL)shouldShowTermsAndConditionsDialog
{
  [(RestoreDownloadItemsOperation *)self lock];
  shouldShowTermsAndConditionsDialog = self->_shouldShowTermsAndConditionsDialog;
  [(RestoreDownloadItemsOperation *)self unlock];
  return shouldShowTermsAndConditionsDialog;
}

- (void)_addResponse:(id)response
{
  responseCopy = response;
  [(RestoreDownloadItemsOperation *)self lock];
  v4 = OBJC_IVAR___ISOperation__delegate;
  WeakRetained = objc_loadWeakRetained(&self->ISOperation_opaque[OBJC_IVAR___ISOperation__delegate]);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->ISOperation_opaque[v4]);
  }

  else
  {
    v7 = 0;
  }

  [(NSMutableArray *)self->_responses addObject:responseCopy];
  [(RestoreDownloadItemsOperation *)self unlock];
  if (v7)
  {
    [v7 restoreDownloadItemsOperation:self didReceiveResponse:responseCopy];
  }
}

- (id)_newResponseWithItems:(id)items error:(id)error
{
  errorCopy = error;
  itemsCopy = items;
  v8 = objc_alloc_init(RestoreDownloadItemsResponse);
  v9 = [StoreDownloadQueueResponse alloc];
  uniqueIdentifier = [(SSAccount *)self->_account uniqueIdentifier];
  v11 = [(StoreDownloadQueueResponse *)v9 initWithError:errorCopy userIdentifier:uniqueIdentifier];

  [(RestoreDownloadItemsResponse *)v8 setRequestItems:itemsCopy];
  [(RestoreDownloadItemsResponse *)v8 setServerResponse:v11];

  return v8;
}

- (id)_plistDataWithItems:(id)items options:(id)options error:(id *)error
{
  itemsCopy = items;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[ISDevice sharedInstance];
  deviceName = [v9 deviceName];
  if (deviceName)
  {
    [v8 setObject:deviceName forKey:@"device-name"];
  }

  guid = [v9 guid];

  if (guid)
  {
    [v8 setObject:guid forKey:@"guid"];
  }

  serialNumber = [v9 serialNumber];

  if (serialNumber)
  {
    [v8 setObject:serialNumber forKey:@"serial-number"];
  }

  uniqueIdentifier = [(SSAccount *)self->_account uniqueIdentifier];
  v14 = sub_1000B18E8([uniqueIdentifier unsignedLongLongValue], 1);

  if ([(__CFData *)v14 length])
  {
    [v8 setObject:v14 forKey:@"kbsync"];
  }

  if (itemsCopy)
  {
    errorCopy = error;
    v15 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = itemsCopy;
    v16 = itemsCopy;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          copyRestoreDictionary = [*(*(&v26 + 1) + 8 * i) copyRestoreDictionary];
          if (copyRestoreDictionary)
          {
            [v15 addObject:copyRestoreDictionary];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    [v8 setObject:v15 forKey:@"items"];
    error = errorCopy;
    itemsCopy = v25;
  }

  errorCopy = [NSPropertyListSerialization dataWithPropertyList:v8 format:100 options:0 error:error, errorCopy];

  return errorCopy;
}

- (void)_run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    downloadItems = self->_downloadItems;
    v10 = v8;
    v11 = [(NSArray *)downloadItems componentsJoinedByString:@", "];
    uniqueIdentifier = [(SSAccount *)self->_account uniqueIdentifier];
    storeFrontIdentifier = [(SSAccount *)self->_account storeFrontIdentifier];
    v48 = 138413058;
    v49 = v8;
    v50 = 2114;
    v51 = v11;
    v52 = 2112;
    v53 = uniqueIdentifier;
    v54 = 2112;
    v55 = storeFrontIdentifier;
    v14 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Restoring items: [%{public}@]for account: (%@ / %@)", &v48, 42);

    if (!v14)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
  }

LABEL_13:
  v15 = objc_opt_class();
  v16 = [(NSArray *)self->_downloadItems componentsJoinedByString:@", "];
  uniqueIdentifier2 = [(SSAccount *)self->_account uniqueIdentifier];
  SSDebugLog();

  v17 = [(SSAccount *)self->_account accountName:v15];
  v18 = [v17 length];

  if (v18)
  {
    [(SSAccount *)self->_account accountScope];
    v19 = [SSURLBagContext contextWithBagType:SSURLBagTypeForAccountScope()];
    uniqueIdentifier3 = [(SSAccount *)self->_account uniqueIdentifier];
    [v19 setUserIdentifier:uniqueIdentifier3];

    v47 = 0;
    v21 = [(RestoreDownloadItemsOperation *)self loadURLBagWithContext:v19 returningError:&v47];
    v22 = v47;
    if ((v21 & 1) == 0)
    {
      v24 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v22];
      [(RestoreDownloadItemsOperation *)self _addResponse:v24];
      v27 = 0;
LABEL_46:

      goto LABEL_47;
    }

    v23 = +[ISURLBagCache sharedCache];
    v24 = [v23 URLBagForContext:v19];

    v25 = [v24 valueForKey:@"p2-content-restore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v25 objectForKey:@"url"];

      if (v26)
      {
        v46 = v22;
        v27 = [(RestoreDownloadItemsOperation *)self _runWithOptions:v25 error:&v46];
        v28 = v46;
LABEL_45:

        v22 = v28;
        goto LABEL_46;
      }
    }

    v37 = +[SSLogConfig sharedDaemonConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      LODWORD(v39) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v39) = shouldLog2;
    }

    oSLogObject2 = [v37 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v39 = v39;
    }

    else
    {
      v39 &= 2u;
    }

    if (v39)
    {
      v41 = objc_opt_class();
      v48 = 138412290;
      v49 = v41;
      v42 = v41;
      LODWORD(v44) = 12;
      v43 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%@: Cannot restore: no URL", &v48, v44);

      if (!v43)
      {
LABEL_44:

        v28 = SSError();

        v22 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v28];
        [(RestoreDownloadItemsOperation *)self _addResponse:v22];
        v27 = 1;
        goto LABEL_45;
      }

      oSLogObject2 = [NSString stringWithCString:v43 encoding:4];
      free(v43);
      SSFileLog();
    }

    goto LABEL_44;
  }

  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    LODWORD(v31) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v31) = shouldLog3;
  }

  oSLogObject3 = [v29 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v31;
  }

  else
  {
    v31 &= 2u;
  }

  if (!v31)
  {
    goto LABEL_29;
  }

  v33 = objc_opt_class();
  account = self->_account;
  v48 = 138412546;
  v49 = v33;
  v50 = 2112;
  v51 = account;
  v35 = v33;
  LODWORD(v44) = 22;
  v36 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Can't restore using account: %@ with no account name", &v48, v44);

  if (v36)
  {
    oSLogObject3 = [NSString stringWithCString:v36 encoding:4];
    free(v36);
    SSFileLog();
LABEL_29:
  }

  v22 = SSError();
  v19 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v22];
  [(RestoreDownloadItemsOperation *)self _addResponse:v19];
  v27 = 0;
LABEL_47:

  [(RestoreDownloadItemsOperation *)self setError:v22];
  [(RestoreDownloadItemsOperation *)self setSuccess:v27];
}

- (id)_runWithBodyData:(id)data contentEncoding:(id)encoding options:(id)options error:(id *)error
{
  dataCopy = data;
  encodingCopy = encoding;
  v12 = [options objectForKey:@"url"];
  v49 = encodingCopy;
  if (!v12 || (v13 = [[NSURL alloc] initWithString:v12]) == 0)
  {
    v32 = +[SSLogConfig sharedDaemonConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      LODWORD(v34) = shouldLog | 2;
    }

    else
    {
      LODWORD(v34) = shouldLog;
    }

    oSLogObject = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v34;
    }

    else
    {
      v34 &= 2u;
    }

    if (v34)
    {
      v51 = 138412546;
      v52 = objc_opt_class();
      v53 = 2112;
      v54 = v12;
      v36 = v52;
      v37 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Invalid URL: %@", &v51, 22);

      if (!v37)
      {
LABEL_29:

        v24 = SSError();
        v14 = 0;
        v27 = 0;
        goto LABEL_32;
      }

      oSLogObject = [NSString stringWithCString:v37 encoding:4];
      free(v37);
      SSFileLog();
    }

    goto LABEL_29;
  }

  v14 = v13;
  selfCopy = self;
  errorCopy = error;
  v15 = objc_alloc_init(ISStoreURLOperation);
  [v15 setShouldSendXTokenHeader:1];
  [v15 setUseUserSpecificURLBag:1];
  v16 = objc_alloc_init(DaemonProtocolDataProvider);
  [(DaemonProtocolDataProvider *)v16 setShouldProcessDialogs:0];
  v46 = v16;
  [v15 setDataProvider:v16];
  v17 = [[SSMutableURLRequestProperties alloc] initWithURL:v14];
  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = +[ISDevice sharedInstance];
  serialNumber = [v19 serialNumber];

  if (serialNumber)
  {
    [v18 setObject:serialNumber forKey:@"serial-number"];
  }

  [v17 setRequestParameters:v18];
  v21 = +[SSDevice currentDevice];
  thinnedApplicationVariantIdentifier = [v21 thinnedApplicationVariantIdentifier];

  if (thinnedApplicationVariantIdentifier)
  {
    [v17 setValue:thinnedApplicationVariantIdentifier forHTTPHeaderField:SSHTTPHeaderXAppleTADevice];
  }

  v43 = thinnedApplicationVariantIdentifier;
  v44 = serialNumber;
  v45 = v18;
  [v17 setCachePolicy:1];
  v48 = dataCopy;
  [v17 setHTTPBody:dataCopy];
  [v17 setHTTPMethod:@"POST"];
  if (encodingCopy)
  {
    [v17 setValue:encodingCopy forHTTPHeaderField:@"Content-Encoding"];
  }

  [v17 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v15 setRequestProperties:v17];
  v23 = [[SSMutableAuthenticationContext alloc] initWithAccount:selfCopy->_account];
  [v23 setAccountNameEditable:1];
  [v23 setCanCreateNewAccount:0];
  [v23 setPromptStyle:1001];
  [v15 setAuthenticationContext:v23];
  v50 = 0;
  v41 = [(RestoreDownloadItemsOperation *)selfCopy runSubOperation:v15 returningError:&v50];
  v24 = v50;
  dataProvider = [v15 dataProvider];
  output = [dataProvider output];

  objc_opt_class();
  v27 = 0;
  if (objc_opt_isKindOfClass())
  {
    v28 = [StoreDownloadQueueResponse alloc];
    uniqueIdentifier = [(SSAccount *)selfCopy->_account uniqueIdentifier];
    v27 = [(StoreDownloadQueueResponse *)v28 initWithDictionary:output userIdentifier:uniqueIdentifier];

    [(RestoreDownloadItemsOperation *)selfCopy _showDialogsForResponse:output];
    v30 = v27 ? v41 : 1;
    if ((v30 & 1) == 0)
    {
      error = [(StoreDownloadQueueResponse *)v27 error];

      if (!error)
      {
        if (v24)
        {
          [(StoreDownloadQueueResponse *)v27 setError:v24];
          [(StoreDownloadQueueResponse *)v27 setShouldCancelPurchaseBatch:ISErrorIsEqual()];
        }

        else
        {
          v38 = SSError();
          [(StoreDownloadQueueResponse *)v27 setError:v38];
        }
      }
    }
  }

  error = errorCopy;
  dataCopy = v48;
LABEL_32:
  if (error)
  {
    v39 = v24;
    *error = v24;
  }

  return v27;
}

- (id)_runWithItems:(id)items options:(id)options
{
  itemsCopy = items;
  optionsCopy = options;
  v57 = 0;
  v8 = [(RestoreDownloadItemsOperation *)self _plistDataWithItems:itemsCopy options:optionsCopy error:&v57];
  v9 = v57;
  if (!v8)
  {
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v31 = shouldLog | 2;
    }

    else
    {
      v31 = shouldLog;
    }

    oSLogObject = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v33 = v31;
    }

    else
    {
      v33 = v31 & 2;
    }

    if (v33)
    {
      v34 = objc_opt_class();
      v58 = 138412802;
      v59 = v34;
      v60 = 2114;
      v61 = itemsCopy;
      v62 = 2114;
      v63 = v9;
      v35 = v34;
      v36 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%@: No body data for items: [%{public}@] error: %{public}@", &v58, 32);

      if (!v36)
      {
LABEL_36:

        v12 = 0;
        goto LABEL_38;
      }

      oSLogObject = [NSString stringWithCString:v36 encoding:4];
      free(v36);
      SSFileLog();
    }

    goto LABEL_36;
  }

  v10 = @"gzip";
  v11 = [optionsCopy objectForKey:@"gzip"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v11 BOOLValue] || ((v12 = ISCopyGzippedDataForData()) != 0 ? (v13 = @"gzip") : (v13 = 0), v14 = v13, !v12))
  {
    v12 = v8;
    v10 = 0;
  }

  v56 = v9;
  v15 = [(RestoreDownloadItemsOperation *)self _runWithBodyData:v12 contentEncoding:v10 options:optionsCopy error:&v56];
  v16 = v56;

  if (v15)
  {
    error = [(StoreDownloadQueueResponse *)v15 error];

    v18 = +[SSLogConfig sharedDaemonConfig];
    v19 = v18;
    v54 = v8;
    v55 = itemsCopy;
    if (error)
    {
      if (!v18)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      v52 = v12;
      shouldLog2 = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        v21 = shouldLog2 | 2;
      }

      else
      {
        v21 = shouldLog2;
      }

      oSLogObject2 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v23 = v21;
      }

      else
      {
        v23 = v21 & 2;
      }

      if (v23)
      {
        v24 = objc_opt_class();
        v50 = v24;
        v25 = [itemsCopy componentsJoinedByString:{@", "}];
        error2 = [(StoreDownloadQueueResponse *)v15 error];
        v58 = 138412802;
        v59 = v24;
        v60 = 2114;
        v61 = v25;
        v62 = 2114;
        v63 = error2;
        v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%@: Received failure for items: [%{public}@] response error: %{public}@", &v58, 32);

        itemsCopy = v55;
        if (!v27)
        {
LABEL_23:

          objc_opt_class();
          v28 = [itemsCopy componentsJoinedByString:{@", "}];
          error3 = [(StoreDownloadQueueResponse *)v15 error];
          SSDebugLog();

          v8 = v54;
          itemsCopy = v55;
          v12 = v52;
          goto LABEL_41;
        }

        oSLogObject2 = [NSString stringWithCString:v27 encoding:4];
        free(v27);
        SSFileLog();
      }

      goto LABEL_23;
    }

    if (!v18)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v42 = shouldLog3;
    }

    else
    {
      v42 = shouldLog3 & 2;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v53 = v43;
      downloads = [(StoreDownloadQueueResponse *)v15 downloads];
      v44 = v12;
      v45 = [downloads count];
      v46 = [v55 componentsJoinedByString:{@", "}];
      v58 = 138412802;
      v59 = v43;
      v60 = 2048;
      v61 = v45;
      v12 = v44;
      v62 = 2114;
      v63 = v46;
      v47 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Received content restore metadata for %lu items for restore items: [%{public}@]", &v58, 32);

      if (!v47)
      {
LABEL_55:

        keybag = [(StoreDownloadQueueResponse *)v15 keybag];
        if ([keybag length])
        {
          sub_1000B29AC(keybag);
        }

        v8 = v54;
        itemsCopy = v55;
        goto LABEL_41;
      }

      oSLogObject3 = [NSString stringWithCString:v47 encoding:4];
      free(v47);
      SSFileLog();
    }

    goto LABEL_55;
  }

  v9 = v16;
LABEL_38:
  if (!v9)
  {
    v9 = SSError();
  }

  v37 = [StoreDownloadQueueResponse alloc];
  uniqueIdentifier = [(SSAccount *)self->_account uniqueIdentifier];
  v15 = [(StoreDownloadQueueResponse *)v37 initWithError:v9 userIdentifier:uniqueIdentifier];

  [(StoreDownloadQueueResponse *)v15 setShouldCancelPurchaseBatch:ISErrorIsEqual()];
  v16 = v9;
LABEL_41:

  return v15;
}

- (BOOL)_runWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKey:@"allowed-kinds"];

  if (v5)
  {
    v6 = [NSMutableSet alloc];
    v7 = [optionsCopy objectForKey:@"allowed-kinds"];
    v106 = [v6 initWithArray:v7];
  }

  else
  {
    v106 = 0;
  }

  v8 = CFPreferencesCopyAppValue(@"ExtraRestoreKinds", kSSUserDefaultsIdentifier);
  objc_opt_class();
  v105 = v8;
  v117 = optionsCopy;
  if (objc_opt_isKindOfClass())
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v135 = 138412546;
      v136 = objc_opt_class();
      v137 = 2112;
      v138 = v105;
      v13 = v136;
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Adding extra allowed kinds: %@", &v135, 22);

      if (!v14)
      {
LABEL_17:

        [v106 addObjectsFromArray:v105];
        optionsCopy = v117;
        goto LABEL_18;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4];
      free(v14);
      v100 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_18:
  v15 = [optionsCopy objectForKey:{@"allowed-match-status", v100}];

  v16 = [NSMutableSet alloc];
  if (v15)
  {
    v17 = [optionsCopy objectForKey:@"allowed-match-status"];
    v18 = [v16 initWithArray:v17];
  }

  else
  {
    v17 = [NSNumber numberWithInteger:0];
    v18 = [v16 initWithObjects:{v17, 0}];
  }

  v115 = v18;
  v19 = v106;

  v20 = objc_alloc_init(NSMutableDictionary);
  v109 = objc_alloc_init(NSMutableArray);
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = self->_downloadItems;
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v131 objects:v144 count:16];
  v111 = v20;
  if (v21)
  {
    v22 = v21;
    v23 = *v132;
    v121 = *v132;
    do
    {
      v24 = 0;
      v123 = v22;
      do
      {
        if (*v132 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v131 + 1) + 8 * v24);
        downloadKind = [v25 downloadKind];
        cloudMatchStatus = [v25 cloudMatchStatus];
        if (v19 && ([v19 containsObject:downloadKind] & 1) == 0)
        {
          v30 = +[SSLogConfig sharedDaemonConfig];
          if (!v30)
          {
            v30 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v30 shouldLog];
          if ([v30 shouldLogToDisk])
          {
            v32 = shouldLog2 | 2;
          }

          else
          {
            v32 = shouldLog2;
          }

          oSLogObject2 = [v30 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 2;
          }

          if (v34)
          {
            v35 = objc_opt_class();
            v36 = v35;
            storeItemID = [v25 storeItemID];
            v135 = 138412802;
            v136 = v35;
            v20 = v111;
            v137 = 2112;
            v138 = downloadKind;
            v139 = 2112;
            v140 = storeItemID;
            LODWORD(v102) = 32;
            v38 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Filtering disallowed kind: %@ for item: %@", &v135, v102);

            goto LABEL_54;
          }

LABEL_56:
          v23 = v121;
LABEL_57:

LABEL_58:
          [v109 addObject:v25];
          v22 = v123;
          goto LABEL_59;
        }

        if (v115 && cloudMatchStatus && ([v115 containsObject:cloudMatchStatus] & 1) == 0)
        {
          v30 = +[SSLogConfig sharedDaemonConfig];
          if (!v30)
          {
            v30 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v30 shouldLog];
          if ([v30 shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          oSLogObject2 = [v30 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v40 = shouldLog3;
          }

          else
          {
            v40 = shouldLog3 & 2;
          }

          if (!v40)
          {
            goto LABEL_56;
          }

          v41 = objc_opt_class();
          v36 = v41;
          storeItemID2 = [v25 storeItemID];
          v135 = 138412802;
          v136 = v41;
          v137 = 2112;
          v138 = cloudMatchStatus;
          v139 = 2112;
          v140 = storeItemID2;
          LODWORD(v102) = 32;
          v38 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Filtering disallowed match status: %@ for item: %@", &v135, v102);

          v20 = v111;
LABEL_54:

          v19 = v106;
          v23 = v121;
          if (v38)
          {
            oSLogObject2 = [NSString stringWithCString:v38 encoding:4];
            free(v38);
            v101 = oSLogObject2;
            SSFileLog();
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        v28 = [v20 objectForKey:downloadKind];
        if (v28)
        {
          v29 = v28;
          [v28 addObject:v25];
        }

        else
        {
          v29 = [[NSMutableArray alloc] initWithObjects:{v25, 0}];
          [v20 setObject:v29 forKey:downloadKind];
        }

LABEL_59:
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSArray *)obj countByEnumeratingWithState:&v131 objects:v144 count:16];
    }

    while (v22);
  }

  if ([v109 count])
  {
    v43 = SSError();
    v44 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:v109 error:v43];

    [(RestoreDownloadItemsOperation *)self _addResponse:v44];
  }

  v116 = objc_alloc_init(NSMutableArray);
  allKeys = [v20 allKeys];
  v46 = [allKeys sortedArrayUsingComparator:&stru_10032A0E0];

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v110 = v46;
  v47 = [v110 countByEnumeratingWithState:&v127 objects:v143 count:16];
  if (!v47)
  {
    v49 = 0;
    v124 = 1;
    v51 = v117;
    v52 = &CFDictionaryGetValue_ptr;
    goto LABEL_125;
  }

  v48 = v47;
  v49 = 0;
  v50 = *v128;
  v124 = 1;
  v51 = v117;
  v52 = &CFDictionaryGetValue_ptr;
  v107 = *v128;
  do
  {
    v53 = 0;
    v108 = v48;
    do
    {
      if (*v128 != v50)
      {
        objc_enumerationMutation(v110);
      }

      v54 = *(*(&v127 + 1) + 8 * v53);
      v55 = objc_autoreleasePoolPush();
      v56 = [v20 objectForKey:v54];
      if (v49)
      {
        [v116 addObjectsFromArray:v56];
        goto LABEL_121;
      }

      v118 = v54;
      v57 = objc_alloc_init(NSMutableArray);
      v119 = v56;
      v58 = [v56 count];
      v59 = [v51 objectForKey:@"max-item-count"];
      intValue = v58;
      if (objc_opt_respondsToSelector())
      {
        intValue = [v59 intValue];
      }

      v112 = v59;
      sharedDaemonConfig = [v52[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v52[412] sharedConfig];
      }

      v113 = v55;
      v114 = v53;
      shouldLog4 = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        v62 = shouldLog4 | 2;
      }

      else
      {
        v62 = shouldLog4;
      }

      oSLogObject3 = [sharedDaemonConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v64 = v62;
      }

      else
      {
        v64 = v62 & 2;
      }

      if (v64)
      {
        v65 = objc_opt_class();
        v135 = 138413058;
        v136 = v65;
        v137 = 2048;
        v138 = v58;
        v139 = 2112;
        v140 = v118;
        v141 = 2048;
        v66 = intValue;
        v142 = intValue;
        v67 = v65;
        LODWORD(v102) = 42;
        v68 = _os_log_send_and_compose_impl(v64, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Restoring %ld items with kind %@ with chunk size %ld", &v135, v102);

        v51 = v117;
        if (!v68)
        {
          goto LABEL_85;
        }

        oSLogObject3 = [NSString stringWithCString:v68 encoding:4];
        free(v68);
        v101 = oSLogObject3;
        SSFileLog();
      }

      else
      {
        v51 = v117;
        v66 = intValue;
      }

LABEL_85:
      v49 = 0;
      if (v58 >= 1)
      {
        v69 = 0;
        v52 = &CFDictionaryGetValue_ptr;
        v70 = v56;
        while (1)
        {
          v71 = [v70 objectAtIndex:{v69, v101}];
          [v57 addObject:v71];
          if ([v57 count] == v66 || v69 == v58 - 1)
          {
            break;
          }

LABEL_117:

          if (++v69 >= v58)
          {
            goto LABEL_120;
          }
        }

        v72 = objc_alloc_init(RestoreDownloadItemsResponse);
        [(RestoreDownloadItemsResponse *)v72 setRequestItems:v57];
        if (![v57 count])
        {
LABEL_113:
          [(RestoreDownloadItemsOperation *)self _addResponse:v72];
          if (v49 && v69 + 1 < v58)
          {
            v87 = [v70 subarrayWithRange:?];
            [v116 addObjectsFromArray:v87];

            v69 = v58;
          }

          goto LABEL_117;
        }

        v122 = v49;
        sharedDaemonConfig2 = [v52[412] sharedDaemonConfig];
        if (!sharedDaemonConfig2)
        {
          sharedDaemonConfig2 = [v52[412] sharedConfig];
        }

        shouldLog5 = [sharedDaemonConfig2 shouldLog];
        if ([sharedDaemonConfig2 shouldLogToDisk])
        {
          v75 = shouldLog5 | 2;
        }

        else
        {
          v75 = shouldLog5;
        }

        oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
        {
          v77 = v75;
        }

        else
        {
          v77 = v75 & 2;
        }

        if (v77)
        {
          v78 = objc_opt_class();
          v79 = v78;
          v80 = [v57 count];
          v135 = 138412802;
          v136 = v78;
          v137 = 2048;
          v138 = v80;
          v139 = 2112;
          v140 = v118;
          LODWORD(v102) = 32;
          v81 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &_mh_execute_header, oSLogObject4, 1, "%@: Making chunk request for %lu items with kind: %@", &v135, v102);

          v51 = v117;
          v52 = &CFDictionaryGetValue_ptr;
          if (!v81)
          {
LABEL_103:

            v82 = [(RestoreDownloadItemsOperation *)self _runWithItems:v57 options:v51];
            if ([v82 shouldCancelPurchaseBatch])
            {
              error = [v82 error];
              v84 = error;
              if (error)
              {
                v85 = error;
              }

              else
              {
                v85 = SSError();
              }

              v49 = v85;
            }

            else
            {
              v49 = v122;
            }

            v70 = v119;
            if (v124)
            {
              error2 = [v82 error];
              v124 = error2 == 0;
            }

            else
            {
              v124 = 0;
            }

            [(RestoreDownloadItemsResponse *)v72 setServerResponse:v82, v101];
            [v57 removeAllObjects];

            v66 = intValue;
            goto LABEL_113;
          }

          oSLogObject4 = [NSString stringWithCString:v81 encoding:4];
          free(v81);
          v101 = oSLogObject4;
          SSFileLog();
        }

        else
        {
          v52 = &CFDictionaryGetValue_ptr;
        }

        goto LABEL_103;
      }

      v52 = &CFDictionaryGetValue_ptr;
      v70 = v56;
LABEL_120:

      v20 = v111;
      v50 = v107;
      v56 = v70;
      v48 = v108;
      v55 = v113;
      v53 = v114;
LABEL_121:

      objc_autoreleasePoolPop(v55);
      v53 = v53 + 1;
    }

    while (v53 != v48);
    v48 = [v110 countByEnumeratingWithState:&v127 objects:v143 count:16];
  }

  while (v48);
LABEL_125:

  if ([v116 count])
  {
    v88 = v49;
    sharedDaemonConfig3 = [v52[412] sharedDaemonConfig];
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = [v52[412] sharedConfig];
    }

    shouldLog6 = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      shouldLog6 |= 2u;
    }

    oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v92 = shouldLog6;
    }

    else
    {
      v92 = shouldLog6 & 2;
    }

    if (v92)
    {
      v93 = objc_opt_class();
      v94 = v93;
      v95 = [v116 componentsJoinedByString:{@", "}];
      v135 = 138412802;
      v136 = v93;
      v137 = 2114;
      v138 = v95;
      v139 = 2114;
      v140 = v88;
      LODWORD(v102) = 32;
      v96 = _os_log_send_and_compose_impl(v92, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Cancel restore items: [%{public}@] error: %{public}@", &v135, v102);

      v49 = v88;
      if (v96)
      {
        oSLogObject5 = [NSString stringWithCString:v96 encoding:4];
        free(v96);
        SSFileLog();
        goto LABEL_136;
      }
    }

    else
    {
LABEL_136:
    }

    v97 = objc_opt_class();
    v103 = [v116 componentsJoinedByString:{@", "}];
    SSDebugLog();

    v98 = [(RestoreDownloadItemsOperation *)self _newResponseWithItems:v116 error:v49, v97, v103, v49];
    [(RestoreDownloadItemsOperation *)self _addResponse:v98];

    v51 = v117;
  }

  if (error)
  {
    *error = 0;
  }

  return v124;
}

- (void)_showDialogsForResponse:(id)response
{
  responseCopy = response;
  v5 = [responseCopy objectForKey:kISFailureTypeKey];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = [responseCopy objectForKey:@"status"];

    v5 = v6;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 intValue] == 3038 && !-[RestoreDownloadItemsOperation shouldShowTermsAndConditionsDialog](self, "shouldShowTermsAndConditionsDialog"))
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      v12 = v15;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Skipping terms and conditions failure", &v14, 12);

      if (!v13)
      {
LABEL_20:

        goto LABEL_7;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog();
    }

    goto LABEL_20;
  }

  v7 = objc_alloc_init(DaemonProtocolDataProvider);
  [(DaemonProtocolDataProvider *)v7 setShouldProcessAuthenticationDialogs:0];
  [(DaemonProtocolDataProvider *)v7 processDialogFromDictionary:responseCopy error:0];

LABEL_7:
}

@end