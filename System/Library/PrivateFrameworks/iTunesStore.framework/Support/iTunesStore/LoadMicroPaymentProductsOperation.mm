@interface LoadMicroPaymentProductsOperation
- (BOOL)_loadResponseForIdentity:(id)identity batchSize:(int64_t)size returningError:(id *)error;
- (LoadMicroPaymentProductsOperation)initWithProductIdentifiers:(id)identifiers;
- (NSArray)productIdentifiers;
- (StoreKitClientIdentity)clientIdentity;
- (id)_copyQueryStringDictionaryForIdentity:(id)identity productIdentifiers:(id)identifiers;
- (id)_copyResponseForIdentity:(id)identity identifiers:(id)identifiers returningError:(id *)error;
- (id)copyProductsResponse;
- (int64_t)_batchSizeForIdentity:(id)identity error:(id *)error;
- (void)dealloc;
- (void)run;
- (void)setClientIdentity:(id)identity;
@end

@implementation LoadMicroPaymentProductsOperation

- (LoadMicroPaymentProductsOperation)initWithProductIdentifiers:(id)identifiers
{
  v6.receiver = self;
  v6.super_class = LoadMicroPaymentProductsOperation;
  v4 = [(LoadMicroPaymentProductsOperation *)&v6 init];
  if (v4)
  {
    v4->_productIdentifiers = [identifiers copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMicroPaymentProductsOperation;
  [(LoadMicroPaymentProductsOperation *)&v3 dealloc];
}

- (StoreKitClientIdentity)clientIdentity
{
  [(LoadMicroPaymentProductsOperation *)self lock];
  v3 = self->_clientIdentity;
  [(LoadMicroPaymentProductsOperation *)self unlock];
  return v3;
}

- (id)copyProductsResponse
{
  [(LoadMicroPaymentProductsOperation *)self lock];
  v3 = self->_response;
  [(LoadMicroPaymentProductsOperation *)self unlock];
  return v3;
}

- (NSArray)productIdentifiers
{
  v2 = self->_productIdentifiers;

  return v2;
}

- (void)setClientIdentity:(id)identity
{
  [(LoadMicroPaymentProductsOperation *)self lock];
  clientIdentity = self->_clientIdentity;
  if (clientIdentity != identity)
  {

    self->_clientIdentity = [identity copy];
  }

  [(LoadMicroPaymentProductsOperation *)self unlock];
}

- (void)run
{
  v35 = 0;
  clientIdentity = [(LoadMicroPaymentProductsOperation *)self clientIdentity];
  if (![(StoreKitClientIdentity *)clientIdentity usesIdentityAttributes])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [LSApplicationProxy applicationProxyForIdentifier:[(StoreKitClientIdentity *)clientIdentity bundleIdentifier]];
    bundleType = [v5 bundleType];
    if (([bundleType isEqualToString:LSUserApplicationType] & 1) == 0)
    {
      v5 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:[(StoreKitClientIdentity *)clientIdentity bundleIdentifier]];
    }

    if (v5)
    {
      [(StoreKitClientIdentity *)clientIdentity setValuesWithSoftwareApplicationProxy:v5];
LABEL_18:
      objc_autoreleasePoolPop(v4);
      goto LABEL_19;
    }

    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2112;
      bundleIdentifier = [(StoreKitClientIdentity *)clientIdentity bundleIdentifier];
      clientIdentity = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: No app for ID: %@", &v36, 22);
      if (!clientIdentity)
      {
        goto LABEL_18;
      }

      v11 = [NSString stringWithCString:clientIdentity encoding:4];
      free(clientIdentity);
      v32 = v11;
      SSFileLog();
    }

    clientIdentity = 0;
    goto LABEL_18;
  }

LABEL_19:
  if (!clientIdentity)
  {
    selfCopy2 = self;
    v23 = 0;
LABEL_48:
    [(LoadMicroPaymentProductsOperation *)selfCopy2 setError:v23, v32];
    return;
  }

  v12 = [(LoadMicroPaymentProductsOperation *)self _batchSizeForIdentity:clientIdentity error:&v35];
  if (v12 <= 0)
  {
LABEL_47:
    v23 = v35;
    selfCopy2 = self;
    goto LABEL_48;
  }

  if (![(LoadMicroPaymentProductsOperation *)self _loadResponseForIdentity:clientIdentity batchSize:v12 returningError:&v35])
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      LODWORD(v26) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v26) = shouldLog2;
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v26;
    }

    else
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v28 = objc_opt_class();
      v36 = 138412546;
      v37 = v28;
      v38 = 2112;
      bundleIdentifier = v35;
      LODWORD(v34) = 22;
      v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Products load failed/cancelled: %@", &v36, v34);
      if (v29)
      {
        v30 = v29;
        v31 = [NSString stringWithCString:v29 encoding:4];
        free(v30);
        v32 = v31;
        SSFileLog();
      }
    }

    goto LABEL_47;
  }

  if (([(LoadMicroPaymentProductsOperation *)self isCancelled]& 1) == 0)
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog3;
    }

    oSLogObject3 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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
      v18 = [(NSArray *)self->_productIdentifiers count];
      v36 = 138412546;
      v37 = v17;
      v38 = 2048;
      bundleIdentifier = v18;
      LODWORD(v34) = 22;
      v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Loaded products for %lu identifiers", &v36, v34);
      if (v19)
      {
        v20 = v19;
        v21 = [NSString stringWithCString:v19 encoding:4];
        free(v20);
        v33 = v21;
        SSFileLog();
      }
    }

    [(LoadMicroPaymentProductsOperation *)self setSuccess:1, v33];
  }
}

- (int64_t)_batchSizeForIdentity:(id)identity error:(id *)error
{
  v15 = 0;
  v6 = +[SSURLBagContext contextWithBagType:](SSURLBagContext, "contextWithBagType:", [identity isSandboxed]);
  if (([(LoadMicroPaymentProductsOperation *)self loadURLBagWithContext:v6 returningError:&v15]& 1) != 0)
  {
    v7 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v7 integerValue]) == 0)
    {
      result = 25;
    }
  }

  else
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
      v13 = objc_opt_class();
      v16 = 138412290;
      v17 = v13;
      result = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Couldn't load bag to get batch size", &v16, 12);
      if (!result)
      {
        goto LABEL_17;
      }

      v14 = result;
      [NSString stringWithCString:result encoding:4];
      free(v14);
      SSFileLog();
    }

    result = 0;
  }

LABEL_17:
  if (error)
  {
    *error = v15;
  }

  return result;
}

- (id)_copyQueryStringDictionaryForIdentity:(id)identity productIdentifiers:(id)identifiers
{
  v6 = objc_alloc_init(NSMutableDictionary);
  bundleIdentifier = [identity bundleIdentifier];
  if (bundleIdentifier)
  {
    v8 = [bundleIdentifier copyUTF8StringOfLength:256];
    if (v8)
    {
      v9 = v8;
      [v6 setObject:v8 forKey:@"bid"];
    }
  }

  bundleVersion = [identity bundleVersion];
  if (bundleVersion)
  {
    v11 = [bundleVersion copyUTF8StringOfLength:100];
    if (v11)
    {
      v12 = v11;
      [v6 setObject:v11 forKey:@"bvrs"];
    }
  }

  storeIdentifier = [identity storeIdentifier];
  if (storeIdentifier)
  {
    [v6 setObject:objc_msgSend(storeIdentifier forKey:{"stringValue"), @"appAdamId"}];
  }

  v14 = +[NSLocale autoupdatingCurrentLocale];
  if (v14)
  {
    [v6 setObject:-[NSLocale localeIdentifier](v14 forKey:{"localeIdentifier"), @"icuLocale"}];
  }

  v15 = [identifiers componentsJoinedByString:{@", "}];
  if ([v15 length])
  {
    [v6 setObject:v15 forKey:@"offerNames"];
  }

  v16 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  if (v16)
  {
    [v6 setObject:v16 forKey:@"sfId"];
  }

  storeVersion = [identity storeVersion];
  if (storeVersion)
  {
    [v6 setObject:objc_msgSend(storeVersion forKey:{"stringValue"), @"appExtVrsId"}];
  }

  return v6;
}

- (id)_copyResponseForIdentity:(id)identity identifiers:(id)identifiers returningError:(id *)error
{
  v16 = 0;
  v9 = objc_alloc_init(ISStoreURLOperation);
  v10 = objc_alloc_init(DaemonProtocolDataProvider);
  [v9 setDataProvider:v10];

  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  [v11 setAllowedRetryCount:0];
  [v11 setAllowsBootstrapCellularData:{objc_msgSend(identity, "allowsBootstrapCellularData")}];
  [v11 setCachePolicy:1];
  [v11 setURLBagKey:@"p2-product-offers"];
  [v11 setURLBagType:{objc_msgSend(identity, "isSandboxed")}];
  v12 = [(LoadMicroPaymentProductsOperation *)self _copyQueryStringDictionaryForIdentity:identity productIdentifiers:identifiers];
  [v11 setRequestParameters:v12];

  [v9 setRequestProperties:v11];
  v13 = [(LoadMicroPaymentProductsOperation *)self runSubOperation:v9 returningError:&v16];
  v14 = 0;
  if (v13)
  {
    v14 = objc_alloc_init(MicroPaymentProductsResponse);
    [(MicroPaymentProductsResponse *)v14 setExpectedIdentifiers:identifiers];
    if (![(MicroPaymentProductsResponse *)v14 loadFromDictionary:[(DaemonProtocolDataProvider *)v10 output] error:&v16])
    {

      v14 = 0;
    }
  }

  if (error)
  {
    *error = v16;
  }

  return v14;
}

- (BOOL)_loadResponseForIdentity:(id)identity batchSize:(int64_t)size returningError:(id *)error
{
  v46 = 0;
  v41 = [(NSArray *)[(LoadMicroPaymentProductsOperation *)self productIdentifiers] sortedArrayUsingSelector:"compare:"];
  v6 = +[SSLogConfig sharedDaemonConfig];
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v48 = 138412802;
    v49 = objc_opt_class();
    v50 = 2048;
    v51 = [(NSArray *)v41 count];
    v52 = 2048;
    sizeCopy = size;
    v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Loading products for %lu identifiers with batch size %ld", &v48, 32);
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4];
      free(v11);
      v37 = v12;
      SSFileLog();
    }
  }

  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableArray);
  v15 = objc_alloc_init(NSMutableArray);
  v16 = [(NSArray *)v41 count];
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v16;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (([(LoadMicroPaymentProductsOperation *)self isCancelled]& 1) != 0)
      {
        goto LABEL_35;
      }

      if (v18 >= v17)
      {
        break;
      }

      v20 = [(NSArray *)v41 objectAtIndex:v18];
      v21 = [v20 length];
      if (v21 > 0x280)
      {
        goto LABEL_22;
      }

      if (!v20 || [v15 count] == size || v21 + v19 >= 0x281)
      {
LABEL_24:
        v23 = [(LoadMicroPaymentProductsOperation *)self _copyResponseForIdentity:identity identifiers:v15 returningError:&v46];
        v22 = v23 == 0;
        if (v23)
        {
          v24 = v23;
          [v13 addObjectsFromArray:{objc_msgSend(v23, "products")}];
          [v14 addObjectsFromArray:{objc_msgSend(v24, "invalidIdentifiers")}];
        }

        [v15 removeAllObjects];
        v19 = 0;
        goto LABEL_27;
      }

LABEL_23:
      v22 = 0;
LABEL_27:
      if (v21 - 1 <= 0x27F)
      {
        [v15 addObject:v20];
        v19 += v21;
      }

      v26 = v18++ >= v17 || v22;
      if (v26)
      {

        if (!v22)
        {
          goto LABEL_36;
        }

        [(LoadMicroPaymentProductsOperation *)self lock];

        self->_response = 0;
        [(LoadMicroPaymentProductsOperation *)self unlock];
        v27 = 0;
        goto LABEL_46;
      }
    }

    v21 = [0 length];
    v20 = 0;
    if (v21 < 0x281)
    {
      goto LABEL_24;
    }

LABEL_22:
    [v14 addObject:v20];
    goto LABEL_23;
  }

LABEL_35:

LABEL_36:
  v28 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v43;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(v13);
        }

        copyProduct = [*(*(&v42 + 1) + 8 * i) copyProduct];
        if (copyProduct)
        {
          v34 = copyProduct;
          [v28 addObject:copyProduct];
        }
      }

      v30 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v30);
  }

  [(LoadMicroPaymentProductsOperation *)self lock];

  v35 = objc_alloc_init(sub_1001FA27C());
  self->_response = v35;
  [(SKProductsResponse *)v35 _setInvalidIdentifiers:v14];
  [(SKProductsResponse *)self->_response _setProducts:v28];
  [(LoadMicroPaymentProductsOperation *)self unlock];

  v27 = 1;
LABEL_46:

  if (error)
  {
    *error = v46;
  }

  return v27;
}

@end