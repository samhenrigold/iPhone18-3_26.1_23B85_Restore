@interface PurchaseManagerOperation
- (BOOL)_isDeviceCapableForPurchase;
- (BOOL)useRemoteAuthentication;
- (NSString)clientIdentifier;
- (NSString)clientIdentifierHeader;
- (PurchaseManagerOperation)initWithPurchase:(id)purchase;
- (id)_appleIDForApp:(id)app error:(id *)error;
- (id)_familyPurchaserAccountIdentifierForApplication:(id)application;
- (id)_incompatibleErrorWithPurchase:(id)purchase;
- (id)_installedSoftwareApplicationForPurchase:(id)purchase;
- (id)_localRedownloadParametersForPurchase:(id)purchase;
- (id)_newPurchaseOperationWithPurchase:(id)purchase;
- (id)_personalizedRedownloadParametersForPurchase:(id)purchase;
- (id)_urlBagKey;
- (id)purchaseBlock;
- (int64_t)URLBagType;
- (void)_performSetup;
- (void)_performTeardownWithResult:(BOOL)result queueResponse:(id)response;
- (void)_showDialogForPurchase:(id)purchase error:(id)error;
- (void)_updateAccount:(id)account withPurchaseResponse:(id)response;
- (void)run;
- (void)setClientIdentifier:(id)identifier;
- (void)setClientIdentifierHeader:(id)header;
- (void)setPurchaseBlock:(id)block;
- (void)setURLBagType:(int64_t)type;
- (void)setUseRemoteAuthentication:(BOOL)authentication;
@end

@implementation PurchaseManagerOperation

- (PurchaseManagerOperation)initWithPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v10.receiver = self;
  v10.super_class = PurchaseManagerOperation;
  v6 = [(PurchaseManagerOperation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchase, purchase);
    requestProperties = [purchaseCopy requestProperties];
    v7->_urlBagType = [requestProperties URLBagType];
  }

  return v7;
}

- (NSString)clientIdentifier
{
  [(PurchaseManagerOperation *)self lock];
  v3 = [(NSString *)self->_clientIdentifier copy];
  [(PurchaseManagerOperation *)self unlock];

  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(PurchaseManagerOperation *)self lock];
  v3 = [(NSString *)self->_clientIdentifierHeader copy];
  [(PurchaseManagerOperation *)self unlock];

  return v3;
}

- (id)purchaseBlock
{
  [(PurchaseManagerOperation *)self lock];
  v3 = [self->_purchaseBlock copy];
  [(PurchaseManagerOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PurchaseManagerOperation *)self lock];
  if (self->_clientIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copy];
    clientIdentifier = self->_clientIdentifier;
    self->_clientIdentifier = v4;
  }

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  headerCopy = header;
  [(PurchaseManagerOperation *)self lock];
  if (self->_clientIdentifierHeader != headerCopy)
  {
    v4 = [(NSString *)headerCopy copy];
    clientIdentifierHeader = self->_clientIdentifierHeader;
    self->_clientIdentifierHeader = v4;
  }

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setPurchaseBlock:(id)block
{
  blockCopy = block;
  [(PurchaseManagerOperation *)self lock];
  if (self->_purchaseBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    purchaseBlock = self->_purchaseBlock;
    self->_purchaseBlock = v4;
  }

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setURLBagType:(int64_t)type
{
  [(PurchaseManagerOperation *)self lock];
  self->_urlBagType = type;

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setUseRemoteAuthentication:(BOOL)authentication
{
  [(PurchaseManagerOperation *)self lock];
  self->_useRemoteAuthentication = authentication;

  [(PurchaseManagerOperation *)self unlock];
}

- (int64_t)URLBagType
{
  [(PurchaseManagerOperation *)self lock];
  urlBagType = self->_urlBagType;
  [(PurchaseManagerOperation *)self unlock];
  return urlBagType;
}

- (BOOL)useRemoteAuthentication
{
  [(PurchaseManagerOperation *)self lock];
  useRemoteAuthentication = self->_useRemoteAuthentication;
  [(PurchaseManagerOperation *)self unlock];
  return useRemoteAuthentication;
}

- (void)run
{
  selfCopy = self;
  if ([(PurchaseManagerOperation *)self _isDeviceCapableForPurchase])
  {
    [(PurchaseManagerOperation *)selfCopy _performSetup];
    gratisIdentifiers = [(SSPurchase *)selfCopy->_purchase gratisIdentifiers];
    v4 = [gratisIdentifiers count];

    if (v4)
    {
      if ([(SSPurchase *)selfCopy->_purchase isGratisSoftwareClaim])
      {
        [AppStoreUtility claimAppsWithPurchase:selfCopy->_purchase];
        v5 = 0;
        authenticatedAccountDSID = 0;
        rawOutput = 0;
        requestPerformanceMetrics = 0;
        v8 = 0;
        uRLResponse = 0;
        tidHeaders = 0;
        goto LABEL_46;
      }

      v22 = [[GratisClaimOperation alloc] initWithPurchase:selfCopy->_purchase];
      v117 = 0;
      v5 = [(PurchaseManagerOperation *)selfCopy runSubOperation:v22 returningError:&v117];
      v116 = v117;
      authenticatedAccountDSID = [(GratisClaimOperation *)v22 authenticatedAccountDSID];
      rawOutput = [(GratisClaimOperation *)v22 rawOutput];
      uRLResponse = [(GratisClaimOperation *)v22 URLResponse];
      tidHeaders = 0;
      requestPerformanceMetrics = 0;
      storeCorrelationID = 0;
      goto LABEL_43;
    }

    v22 = [(PurchaseManagerOperation *)selfCopy _newPurchaseOperationWithPurchase:selfCopy->_purchase];
    v118 = 0;
    v5 = [(PurchaseManagerOperation *)selfCopy runSubOperation:v22 returningError:&v118];
    v116 = v118;
    shim = [(GratisClaimOperation *)v22 shim];

    if (shim)
    {
      shim2 = [(GratisClaimOperation *)v22 shim];
      authenticatedAccountDSID = [shim2 authenticatedAccountDSID];

      shim3 = [(GratisClaimOperation *)v22 shim];
      rawOutput = [shim3 rawOutput];

      shim4 = [(GratisClaimOperation *)v22 shim];
      requestPerformanceMetrics = [shim4 requestPerformanceMetrics];

      shim5 = [(GratisClaimOperation *)v22 shim];
      storeCorrelationID = [shim5 storeCorrelationID];

      shim6 = [(GratisClaimOperation *)v22 shim];
      tidHeaders = [shim6 tidHeaders];

      shim7 = [(GratisClaimOperation *)v22 shim];
      uRLResponse = [shim7 URLResponse];
    }

    else
    {
      authenticatedAccountDSID = [(GratisClaimOperation *)v22 authenticatedAccountDSID];
      rawOutput = [(GratisClaimOperation *)v22 rawOutput];
      requestPerformanceMetrics = [(GratisClaimOperation *)v22 requestPerformanceMetrics];
      storeCorrelationID = [(GratisClaimOperation *)v22 storeCorrelationID];
      tidHeaders = [(GratisClaimOperation *)v22 tidHeaders];
      uRLResponse = [(GratisClaimOperation *)v22 URLResponse];
    }

    if (![(GratisClaimOperation *)v22 isMoveToiOS])
    {
LABEL_43:

      v39 = [rawOutput objectForKey:@"cancel-purchase-batch"];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v108 = 0;
LABEL_49:

        if (authenticatedAccountDSID)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      bOOLValue = [v39 BOOLValue];

      if (!bOOLValue)
      {
        v108 = 0;
        if (authenticatedAccountDSID)
        {
          goto LABEL_53;
        }

LABEL_50:
        authenticatedAccountDSID = [(SSPurchase *)selfCopy->_purchase valueForDownloadProperty:SSDownloadPropertyStoreAccountIdentifier, v91];
        if (!authenticatedAccountDSID)
        {
LABEL_54:
          v109 = authenticatedAccountDSID;
          if (!rawOutput)
          {
            v21 = 0;
            v20 = requestPerformanceMetrics;
LABEL_86:
            [(PurchaseManagerOperation *)selfCopy _performTeardownWithResult:v5 queueResponse:v21, v91];
            goto LABEL_87;
          }

          v42 = [(SSPurchase *)selfCopy->_purchase valueForDownloadProperty:SSDownloadPropertyPreferredAssetFlavor];
          v21 = [[StoreDownloadQueueResponse alloc] initWithDictionary:rawOutput userIdentifier:authenticatedAccountDSID preferredAssetFlavor:v42];
          if ([storeCorrelationID length])
          {
            [(StoreDownloadQueueResponse *)v21 setStoreCorrelationID:storeCorrelationID];
          }

          v43 = [rawOutput objectForKey:@"jingleAction"];
          objc_opt_class();
          v20 = requestPerformanceMetrics;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v43 isEqualToString:@"inAppBuy"])
          {
            v44 = v21;
            v45 = [[MicroPaymentQueueResponse alloc] initWithRequestType:0];
            if ([(MicroPaymentQueueResponse *)v45 loadFromPropertyList:rawOutput])
            {
              +[MicroPaymentQueue paymentQueue];
              v98 = v43;
              v46 = selfCopy;
              v47 = storeCorrelationID;
              v49 = v48 = v42;
              [v49 updateWithPurchaseResponse:v45];

              v42 = v48;
              storeCorrelationID = v47;
              selfCopy = v46;
              v43 = v98;
            }

            v21 = v44;
          }

          v112 = rawOutput;
          v50 = [rawOutput objectForKeyedSubscript:@"ad-network"];
          v51 = v50;
          if (!v50)
          {
LABEL_85:

            rawOutput = v112;
            goto LABEL_86;
          }

          v99 = v43;
          v100 = v21;
          v52 = [v50 objectForKeyedSubscript:@"error"];

          v103 = v5;
          if (v52)
          {
            v53 = +[SSLogConfig sharedDaemonConfig];
            if (!v53)
            {
              v53 = +[SSLogConfig sharedConfig];
            }

            shouldLog = [v53 shouldLog];
            if ([v53 shouldLogToDisk])
            {
              v55 = shouldLog | 2;
            }

            else
            {
              v55 = shouldLog;
            }

            oSLogObject = [v53 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
            {
              v57 = v55;
            }

            else
            {
              v57 = v55 & 2;
            }

            if (!v57)
            {
              v5 = v103;
              v21 = v100;
LABEL_83:

              goto LABEL_84;
            }

            v97 = v42;
            v106 = storeCorrelationID;
            v58 = objc_opt_class();
            v59 = v58;
            v60 = [v51 objectForKeyedSubscript:@"error"];
            v119 = 138543618;
            v120 = v58;
            v121 = 2112;
            v122 = v60;
            LODWORD(v92) = 22;
            v61 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: Install attribution response error: %@", &v119, v92);

            if (!v61)
            {
              v5 = v103;
              storeCorrelationID = v106;
              v21 = v100;
              v42 = v97;
LABEL_84:

              v43 = v99;
              goto LABEL_85;
            }

            oSLogObject = [NSString stringWithCString:v61 encoding:4];
            free(v61);
            v91 = oSLogObject;
            SSFileLog();
          }

          else
          {
            v106 = storeCorrelationID;
            v53 = [v51 objectForKeyedSubscript:@"ad-network-id"];
            oSLogObject = [v51 objectForKeyedSubscript:@"adam-id"];
            v95 = [v51 objectForKeyedSubscript:@"campaign-id"];
            v62 = [v51 objectForKeyedSubscript:@"transaction-id"];
            v96 = [v51 objectForKeyedSubscript:@"signature"];
            v63 = [v51 objectForKeyedSubscript:@"url"];
            v97 = v42;
            v93 = v63;
            if (v63)
            {
              v94 = [NSURL URLWithString:v63];
            }

            else
            {
              v94 = 0;
            }

            v64 = +[NSDate date];
            [v64 timeIntervalSince1970];
            v66 = (v65 * 1000.0);

            v67 = [InstallAttributionPingback alloc];
            v68 = [NSNumber numberWithLongLong:v66];
            v69 = [(InstallAttributionPingback *)v67 initWithAppAdamId:oSLogObject transactionId:v62 campaignId:v95 adNetworkId:v53 attributionSignature:v96 pingbackUrl:v94 retryCount:0 localTimestamp:v68];

            v70 = +[PurchaseActionsManager sharedInstance];
            [v70 insertInstallAttributionPingback:v69];

            v71 = +[PurchaseActionsManager sharedInstance];
            [v71 removeInstallAttributionParamsForApp:oSLogObject];
          }

          v5 = v103;
          storeCorrelationID = v106;
          v21 = v100;
          v42 = v97;
          goto LABEL_83;
        }

LABEL_53:
        [(PurchaseManagerOperation *)selfCopy _updateAccount:authenticatedAccountDSID withPurchaseResponse:rawOutput, v91];
        goto LABEL_54;
      }

LABEL_45:
      v8 = storeCorrelationID;
      if (v116)
      {
LABEL_47:
        v108 = 1;
        v39 = [NSNumber numberWithBool:1, v91];
        v41 = SSErrorBySettingUserInfoValue();

        v116 = v41;
        storeCorrelationID = v8;
        goto LABEL_49;
      }

LABEL_46:
      v116 = SSError();
      goto LABEL_47;
    }

    v111 = rawOutput;
    v102 = v5;
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
      v35 = authenticatedAccountDSID;
      v36 = objc_opt_class();
      v110 = v36;
      v37 = AMSLogableError();
      v119 = 138412546;
      v120 = v36;
      authenticatedAccountDSID = v35;
      v121 = 2112;
      v122 = v37;
      v38 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Checking error for Move to iOS flow. error: %@", &v119, 22);

      v5 = v102;
      if (!v38)
      {
        goto LABEL_38;
      }

      oSLogObject2 = [NSString stringWithCString:v38 encoding:4];
      free(v38);
      v91 = oSLogObject2;
      SSFileLog();
    }

    else
    {
      v5 = v102;
    }

LABEL_38:
    if ([v116 ams_hasDomain:ISErrorDomain code:16] & 1) != 0 || (objc_msgSend(v116, "ams_hasDomain:code:", SSErrorDomain, 140) & 1) != 0 || (objc_msgSend(v116, "ams_hasDomain:code:", AMSErrorDomain, 6))
    {

      rawOutput = v111;
      goto LABEL_45;
    }

    rawOutput = v111;
    goto LABEL_43;
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog3;
  }

  oSLogObject3 = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v13 = objc_opt_class();
  purchase = selfCopy->_purchase;
  v119 = 138412546;
  v120 = v13;
  v121 = 2112;
  v122 = purchase;
  v15 = v13;
  v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Capabilities mismatch for purchase: %@", &v119, 22);

  if (v16)
  {
    oSLogObject3 = [NSString stringWithCString:v16 encoding:4];
    free(v16);
    v91 = oSLogObject3;
    SSFileLog();
LABEL_16:
  }

  v116 = [(PurchaseManagerOperation *)selfCopy _incompatibleErrorWithPurchase:selfCopy->_purchase];
  v17 = [(SSPurchase *)selfCopy->_purchase valueForDownloadProperty:SSDownloadPropertyShouldSuppressErrorDialogs];
  bOOLValue2 = [v17 BOOLValue];

  if ((bOOLValue2 & 1) == 0)
  {
    [(PurchaseManagerOperation *)selfCopy _showDialogForPurchase:selfCopy->_purchase error:v116];
  }

  uRLResponse = 0;
  tidHeaders = 0;
  storeCorrelationID = 0;
  v108 = 0;
  v20 = 0;
  rawOutput = 0;
  v21 = 0;
  v109 = 0;
  v5 = 0;
LABEL_87:
  enabledServiceType = [(SSPurchase *)selfCopy->_purchase enabledServiceType];
  v73 = enabledServiceType;
  if (v5 && enabledServiceType && ![enabledServiceType integerValue])
  {
    v101 = v21;
    v74 = objc_alloc_init(SubscriptionOperation);
    [(SubscriptionOperation *)v74 setOperationType:1];
    [(SSPurchase *)selfCopy->_purchase requestProperties];
    v75 = v104 = v5;
    hTTPHeaders = [v75 HTTPHeaders];
    v77 = [hTTPHeaders objectForKey:SSHTTPHeaderUserAgent];
    [(SubscriptionOperation *)v74 setUserAgent:v77];

    v5 = v104;
    [(PurchaseManagerOperation *)selfCopy runSubOperation:v74 returningError:0];

    v21 = v101;
  }

  purchaseBlock = [(PurchaseManagerOperation *)selfCopy purchaseBlock];
  if (purchaseBlock)
  {
    v79 = v21;
    v113 = rawOutput;
    v80 = v116;
    if (v80)
    {
      v81 = 1;
    }

    else
    {
      v81 = v5;
    }

    if ((v81 & 1) == 0)
    {
      v80 = SSError();
    }

    v82 = objc_alloc_init(DaemonPurchaseResponse);
    [(DaemonPurchaseResponse *)v82 setCancelsPurchaseBatch:v108];
    [(DaemonPurchaseResponse *)v82 setDecodedResponse:v79];
    [(DaemonPurchaseResponse *)v82 setError:v80];
    [(DaemonPurchaseResponse *)v82 setPurchase:selfCopy->_purchase];
    [(DaemonPurchaseResponse *)v82 setTidHeaders:tidHeaders];
    [(DaemonPurchaseResponse *)v82 setURLResponse:uRLResponse];
    if (v20)
    {
      [v20 startTime];
      v84 = v83;
      [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v107 = storeCorrelationID;
      v86 = v85 = v5;
      [v86 timeIntervalSince1970];
      [(DaemonPurchaseResponse *)v82 setRequestStartTime:?];

      [v20 receivedResponseInterval];
      v88 = [NSDate dateWithTimeIntervalSinceReferenceDate:v84 + v87];
      [v88 timeIntervalSince1970];
      [(DaemonPurchaseResponse *)v82 setResponseStartTime:?];

      [v20 finishInterval];
      v90 = [NSDate dateWithTimeIntervalSinceReferenceDate:v84 + v89];
      [v90 timeIntervalSince1970];
      [(DaemonPurchaseResponse *)v82 setResponseEndTime:?];

      v5 = v85;
      storeCorrelationID = v107;
    }

    (purchaseBlock)[2](purchaseBlock, v82);

    rawOutput = v113;
    v21 = v79;
  }

  [(PurchaseManagerOperation *)selfCopy setError:v116];
  [(PurchaseManagerOperation *)selfCopy setSuccess:v5];
}

- (id)_appleIDForApp:(id)app error:(id *)error
{
  appCopy = app;
  appState = [appCopy appState];
  isValid = [appState isValid];

  if ((isValid & 1) == 0)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v28 = 138543618;
      v29 = objc_opt_class();
      v30 = 2114;
      v31 = appCopy;
      v19 = v29;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: Account lookup failed for invalid proxy: %{public}@", &v28, 22);

      if (!v20)
      {
LABEL_22:
        v15 = 0;
        goto LABEL_41;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_22;
  }

  bundleContainerURL = [appCopy bundleContainerURL];
  v9 = [bundleContainerURL URLByAppendingPathComponent:@"iTunesMetadata.plist"];

  if (v9)
  {
    v27[0] = @"com.apple.iTunesStore.downloadInfo";
    v27[1] = @"accountInfo";
    v27[2] = @"AppleID";
    v10 = [NSArray arrayWithObjects:v27 count:3];
    v11 = [v10 componentsJoinedByString:@":"];

    v12 = [MappedPropertyList readKeyPath:v11 fromURL:v9 error:error];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v13 = [v12 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_38;
    }

    v14 = [v13 objectForKey:@"accountInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 objectForKey:@"AppleID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_9:

LABEL_38:
        goto LABEL_39;
      }
    }

    v15 = 0;
    goto LABEL_9;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v22) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v22) = shouldLog2;
  }

  oSLogObject2 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v22 = v22;
  }

  else
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_34;
  }

  v28 = 138543618;
  v29 = objc_opt_class();
  v30 = 2114;
  v31 = appCopy;
  v24 = v29;
  v25 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "[%{public}@]: Account lookup failed when composing bundle URL for proxy: %{public}@", &v28, 22);

  if (v25)
  {
    oSLogObject2 = [NSString stringWithCString:v25 encoding:4];
    free(v25);
    SSFileLog();
LABEL_34:
  }

  v15 = 0;
LABEL_40:

LABEL_41:

  return v15;
}

- (id)_familyPurchaserAccountIdentifierForApplication:(id)application
{
  bundleIdentifier = [application bundleIdentifier];
  if (bundleIdentifier)
  {
    v4 = +[ApplicationWorkspace defaultWorkspace];
    v5 = [v4 sinfPathForBundleID:bundleIdentifier];

    if (v5)
    {
      v6 = [[NSData alloc] initWithContentsOfFile:v5];
      v7 = v6;
      if (v6)
      {
        v14 = 0;
        sub_1000B2914(v6, 4uLL, &v14);
        v8 = 0;
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = v14 == 0;
        }

        if (!v10)
        {
          v13 = 0;
          sub_1000B2914(v7, 2uLL, &v13);
          v8 = 0;
          if (!v11)
          {
            if (v13)
            {
              v8 = [NSNumber numberWithUnsignedLongLong:?];
            }
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_incompatibleErrorWithPurchase:(id)purchase
{
  v3 = [purchase valueForDownloadProperty:SSDownloadPropertyTitle];
  v4 = ISDeviceIncompatibleAppErrorWithAppTitle();

  return v4;
}

- (id)_installedSoftwareApplicationForPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v4 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  if (!v4 || ([LSApplicationProxy applicationProxyForItemID:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyBundleIdentifier];
    if (v6)
    {
      v5 = [LSApplicationProxy applicationProxyForIdentifier:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isDeviceCapableForPurchase
{
  requiredDeviceCapabilities = [(SSPurchase *)self->_purchase requiredDeviceCapabilities];
  v3 = requiredDeviceCapabilities;
  if (requiredDeviceCapabilities)
  {
    v4 = requiredDeviceCapabilities;
    v5 = MobileInstallationCheckCapabilitiesMatch();
    if (v5)
    {
      v6 = v5;
      Value = CFDictionaryGetValue(v5, @"CapabilitiesMatch");
      if (Value)
      {
        v8 = CFBooleanGetValue(Value) != 0;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_localRedownloadParametersForPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10021EDBC;
  v15 = sub_10021EDCC;
  v16 = 0;
  v4 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  if (v4)
  {
    v5 = +[SSAppPurchaseHistoryDatabase newDefaultInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10021EDD4;
    v8[3] = &unk_10032CAC0;
    v9 = v4;
    v10 = &v11;
    [v5 readUsingTransactionBlock:v8];
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)_newPurchaseOperationWithPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v5 = [[PurchaseOperation alloc] initWithPurchase:purchaseCopy];

  [(PurchaseOperation *)v5 setBagType:[(PurchaseManagerOperation *)self URLBagType]];
  clientIdentifier = [(PurchaseManagerOperation *)self clientIdentifier];
  [(PurchaseOperation *)v5 setClientIdentifier:clientIdentifier];

  clientIdentifierHeader = [(PurchaseManagerOperation *)self clientIdentifierHeader];
  [(PurchaseOperation *)v5 setClientIdentifierHeader:clientIdentifierHeader];

  [(PurchaseOperation *)v5 setOriginalProductOwnerAccountDSID:self->_applicationOwnerAccountDSID];
  [(PurchaseOperation *)v5 setShouldSendKeyBagSyncData:1];
  _urlBagKey = [(PurchaseManagerOperation *)self _urlBagKey];
  [(PurchaseOperation *)v5 setUrlBagKey:_urlBagKey];

  if ([(PurchaseManagerOperation *)self useRemoteAuthentication])
  {
    [(PurchaseOperation *)v5 setUseRemoteAuthentication:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021F1DC;
    v10[3] = &unk_10032CAE8;
    v10[4] = self;
    [(PurchaseOperation *)v5 setRemoteAuthenticationHandler:v10];
  }

  return v5;
}

- (void)_performSetup
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(RingtonePurchaseStore);
    purchase = self->_purchase;
    v4 = [NSArray arrayWithObjects:&purchase count:1];
    [(RingtonePurchaseStore *)v3 addRingtonesForPurchases:v4];
  }

  v5 = [(SSPurchase *)self->_purchase valueForDownloadProperty:SSDownloadPropertyKind];
  if (v5)
  {
    v6 = +[DownloadController controller];
    [v6 beginUsingNetworkForDownloadKind:v5];
  }

  if (SSDownloadKindIsSoftwareKind())
  {
    if (![(SSPurchase *)self->_purchase usesLocalRedownloadParametersIfPossible])
    {
      v88 = 0;
      goto LABEL_32;
    }

    v88 = [(PurchaseManagerOperation *)self _installedSoftwareApplicationForPurchase:self->_purchase];
    if (v88)
    {
      goto LABEL_32;
    }

    v7 = [(PurchaseManagerOperation *)self _personalizedRedownloadParametersForPurchase:self->_purchase];
    v8 = v7;
    if (v7)
    {
      v86 = [v7 length];
    }

    else
    {
      v8 = [(PurchaseManagerOperation *)self _localRedownloadParametersForPurchase:self->_purchase];
      v86 = [v8 length];
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    buyParameters = [(SSPurchase *)self->_purchase buyParameters];
    v10 = [NSURL copyDictionaryForQueryString:buyParameters unescapedValues:1];

    v97 = *off_10032CB08;
    v11 = &v97;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = [v10 objectForKey:*v11];
      v15 = v14;
      if (v14)
      {
        v16 = [v8 stringByAppendingFormat:@"&%@=%@", *v11, v14];

        v8 = v16;
      }

      v12 = 0;
      v11 = (&v97 + 8);
    }

    while ((v13 & 1) != 0);
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v18) = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v18) = v18 | 2;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      *v93 = 138412546;
      *&v93[4] = objc_opt_class();
      *&v93[12] = 2112;
      *&v93[14] = v8;
      v20 = *&v93[4];
      LODWORD(v81) = 22;
      v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Using local buy parameters for purchase: %@", v93, v81);

      if (!v21)
      {
LABEL_27:

        if (v86)
        {
          [(SSPurchase *)self->_purchase setValue:&__kCFBooleanTrue forDownloadProperty:SSDownloadPropertyIsRedownload];
        }

        [(SSPurchase *)self->_purchase setBuyParameters:v8, v79];
        for (i = 8; i != -8; i -= 8)
        {
        }

LABEL_32:
        accountIdentifier = [(SSPurchase *)self->_purchase accountIdentifier];
        if (accountIdentifier)
        {
          goto LABEL_55;
        }

        if (([(SSPurchase *)self->_purchase skipSoftwareAccountPreflight]& 1) != 0)
        {
          accountIdentifier = 0;
          goto LABEL_55;
        }

        v24 = v88;
        if (!v88)
        {
          v24 = [(PurchaseManagerOperation *)self _installedSoftwareApplicationForPurchase:self->_purchase];
        }

        v88 = v24;
        if ([v24 hasMIDBasedSINF])
        {
          goto LABEL_38;
        }

        applicationOwnerAccountDSID = [v88 purchaserDSID];
        if ([applicationOwnerAccountDSID unsignedLongLongValue] == -1)
        {
          accountIdentifier = 0;
        }

        else
        {
          purchaserDSID = [v88 purchaserDSID];
          v27 = [purchaserDSID unsignedLongLongValue] == 0;

          if (v27)
          {
LABEL_38:
            accountIdentifier = 0;
            goto LABEL_44;
          }

          accountIdentifier = [v88 purchaserDSID];
          v28 = [accountIdentifier copy];
          applicationOwnerAccountDSID = self->_applicationOwnerAccountDSID;
          self->_applicationOwnerAccountDSID = v28;
        }

LABEL_44:
        v29 = +[SSAccountStore defaultStore];
        activeAccount = [v29 activeAccount];
        uniqueIdentifier = [activeAccount uniqueIdentifier];

        if (!accountIdentifier)
        {
LABEL_54:

LABEL_55:
          ownerAccountDSID = [(SSPurchase *)self->_purchase ownerAccountDSID];

          if (ownerAccountDSID)
          {
            ownerAccountDSID2 = [(SSPurchase *)self->_purchase ownerAccountDSID];
            v40 = [ownerAccountDSID2 copy];
            v41 = self->_applicationOwnerAccountDSID;
            self->_applicationOwnerAccountDSID = v40;
          }

          if (!accountIdentifier)
          {
LABEL_85:
            downloadProperties = [(SSPurchase *)self->_purchase downloadProperties];
            v62 = [downloadProperties objectForKeyedSubscript:SSDownloadPropertyIsRedownload];
            v63 = [v62 integerValue] == 0;

            if (!v63)
            {
LABEL_100:

              goto LABEL_101;
            }

            v64 = dispatch_semaphore_create(0);
            *v93 = 0;
            *&v93[8] = v93;
            *&v93[16] = 0x3032000000;
            v94 = sub_10021EDBC;
            v95 = sub_10021EDCC;
            buyParameters2 = [(SSPurchase *)self->_purchase buyParameters];
            v96 = [buyParameters2 copy];

            v66 = +[PurchaseActionsManager sharedInstance];
            downloadProperties2 = [(SSPurchase *)self->_purchase downloadProperties];
            v68 = [downloadProperties2 objectForKeyedSubscript:SSDownloadPropertyStoreItemIdentifier];
            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_10021FF84;
            v89[3] = &unk_10032CB20;
            v89[4] = self;
            v91 = v93;
            v69 = v64;
            v90 = v69;
            [v66 getInstallAttributionParamsForApp:v68 completionHandler:v89];

            v70 = dispatch_time(0, 30000000000);
            if (!dispatch_semaphore_wait(v69, v70))
            {
LABEL_99:
              [(SSPurchase *)self->_purchase setBuyParameters:*(*&v93[8] + 40), v80];

              _Block_object_dispose(v93, 8);
              goto LABEL_100;
            }

            v71 = +[SSLogConfig sharedDaemonConfig];
            if (!v71)
            {
              v71 = +[SSLogConfig sharedConfig];
            }

            LODWORD(v72) = [v71 shouldLog];
            shouldLogToDisk = [v71 shouldLogToDisk];
            oSLogObject2 = [v71 OSLogObject];
            v75 = oSLogObject2;
            if (shouldLogToDisk)
            {
              LODWORD(v72) = v72 | 2;
            }

            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v72 = v72;
            }

            else
            {
              v72 &= 2u;
            }

            if (v72)
            {
              v76 = objc_opt_class();
              LODWORD(v97) = 138543362;
              *(&v97 + 4) = v76;
              v77 = v76;
              LODWORD(v81) = 12;
              v78 = _os_log_send_and_compose_impl(v72, 0, 0, 0, &_mh_execute_header, v75, 16, "[%{public}@]: Timed out waiting to get install attribution params from DB", &v97, v81);

              if (!v78)
              {
LABEL_98:

                goto LABEL_99;
              }

              v75 = [NSString stringWithCString:v78 encoding:4];
              free(v78);
              v80 = v75;
              SSFileLog();
            }

            goto LABEL_98;
          }

          v87 = +[SSAccountStore defaultStore];
          v42 = [v87 accountWithUniqueIdentifier:accountIdentifier];
          if (v42)
          {
LABEL_84:

            goto LABEL_85;
          }

          v92 = 0;
          v84 = [(PurchaseManagerOperation *)self _appleIDForApp:v88 error:&v92];
          v83 = v92;
          if (!v84)
          {
            v53 = +[SSLogConfig sharedAccountsConfig];
            if (!v53)
            {
              v53 = +[SSLogConfig sharedConfig];
            }

            v85 = v53;
            shouldLog = [v53 shouldLog];
            if ([v85 shouldLogToDisk])
            {
              shouldLog |= 2u;
            }

            oSLogObject3 = [v85 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
            {
              v56 = shouldLog;
            }

            else
            {
              v56 = shouldLog & 2;
            }

            if (v56)
            {
              v57 = objc_opt_class();
              v58 = v57;
              bundleIdentifier = [v88 bundleIdentifier];
              *v93 = 138543874;
              *&v93[4] = v57;
              *&v93[12] = 2114;
              *&v93[14] = bundleIdentifier;
              *&v93[22] = 2114;
              v94 = v83;
              LODWORD(v81) = 32;
              v60 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Failed to find account name for %{public}@ error: %{public}@", v93, v81);

              if (!v60)
              {
                goto LABEL_83;
              }

              oSLogObject3 = [NSString stringWithCString:v60 encoding:4];
              free(v60);
              v79 = oSLogObject3;
              SSFileLog();
            }

            goto LABEL_83;
          }

          v85 = objc_alloc_init(SSAccount);
          [v85 setAccountName:v84];
          activeAccount2 = [v87 activeAccount];
          [v85 setActive:activeAccount2 == 0];

          storeFront = [v88 storeFront];
          stringValue = [storeFront stringValue];
          [v85 setStoreFrontIdentifier:stringValue];

          [v85 setUniqueIdentifier:accountIdentifier];
          v46 = +[SSLogConfig sharedAccountsConfig];
          if (!v46)
          {
            v46 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v47) = [v46 shouldLog];
          if ([v46 shouldLogToDisk])
          {
            LODWORD(v47) = v47 | 2;
          }

          oSLogObject4 = [v46 OSLogObject];
          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
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
            v82 = v49;
            accountName = [v85 accountName];
            v51 = SSHashIfNeeded();
            *v93 = 138543618;
            *&v93[4] = v49;
            *&v93[12] = 2114;
            *&v93[14] = v51;
            LODWORD(v81) = 22;
            v52 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Adding an account for purchases. Saving %{public}@.", v93, v81);

            if (!v52)
            {
LABEL_71:

              [v87 saveAccount:v85 verifyCredentials:0 completion:0];
LABEL_83:

              v42 = 0;
              goto LABEL_84;
            }

            oSLogObject4 = [NSString stringWithCString:v52 encoding:4];
            free(v52);
            v79 = oSLogObject4;
            SSFileLog();
          }

          goto LABEL_71;
        }

        if (([accountIdentifier isEqual:uniqueIdentifier] & 1) == 0)
        {
          v32 = [(PurchaseManagerOperation *)self _familyPurchaserAccountIdentifierForApplication:v88];
          if (v32)
          {
LABEL_47:
            buyParameters3 = [(SSPurchase *)self->_purchase buyParameters];
            v34 = [buyParameters3 stringByAppendingFormat:@"&ownerDsid=%llu", objc_msgSend(v32, "unsignedLongLongValue")];

            [(SSPurchase *)self->_purchase setBuyParameters:v34];
            accountIdentifier = 0;
            goto LABEL_54;
          }

          v35 = objc_alloc_init(FamilyCircleOperation);
          if ([(PurchaseManagerOperation *)self runSubOperation:v35 returningError:0])
          {
            familyCircle = [(FamilyCircleOperation *)v35 familyCircle];
            allITunesIdentifiers = [familyCircle allITunesIdentifiers];

            if ([allITunesIdentifiers containsObject:accountIdentifier])
            {
              v32 = accountIdentifier;

              goto LABEL_47;
            }
          }
        }

        [(SSPurchase *)self->_purchase setAccountIdentifier:accountIdentifier];
        goto LABEL_54;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      v79 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_27;
  }

LABEL_101:
}

- (void)_performTeardownWithResult:(BOOL)result queueResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(RingtonePurchaseStore);
    if (result)
    {
      purchase = self->_purchase;
      v8 = [NSArray arrayWithObjects:&purchase count:1];
      downloads = [responseCopy downloads];
      [(RingtonePurchaseStore *)v7 updateRingtonesForPurchases:v8 withDownloads:downloads];
    }

    else
    {
      v13 = self->_purchase;
      v8 = [NSArray arrayWithObjects:&v13 count:1];
      [(RingtonePurchaseStore *)v7 removeRingtonesForPurchases:v8];
    }
  }

  v10 = [(SSPurchase *)self->_purchase valueForDownloadProperty:SSDownloadPropertyKind];
  if (v10)
  {
    v11 = +[DownloadController controller];
    [v11 endUsingNetworkForDownloadKind:v10];
  }
}

- (id)_personalizedRedownloadParametersForPurchase:(id)purchase
{
  v4 = [purchase valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  stringValue = [v4 stringValue];

  if (stringValue)
  {
    v6 = objc_alloc_init(SSLookupProperties);
    [v6 setKeyProfile:@"offer"];
    [v6 setTimeoutInterval:&off_10034CCF0];
    [v6 setValue:@"itunesstored" forRequestParameter:SSLookupParameterCaller];
    [v6 setValue:stringValue forRequestParameter:SSLookupParameterItemIdentifiers];
    [v6 setValue:@"1" forRequestParameter:SSLookupParameterProtocolVersion];
    v7 = [[LookupRequestOperation alloc] initWithLookupProperties:v6];
    [(LookupRequestOperation *)v7 setPersonalizationStyle:0];
    v8 = 0;
    if ([(PurchaseManagerOperation *)self runSubOperation:v7 returningError:0])
    {
      lookupResponse = [(LookupRequestOperation *)v7 lookupResponse];
      v10 = [lookupResponse itemForKey:stringValue];

      [v10 offers];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v26 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v21 = v10;
        v22 = stringValue;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            offerType = [v16 offerType];
            v18 = [offerType isEqualToString:@"redownload"];

            if (v18)
            {
              buyParameters = [v16 buyParameters];
              v8 = [buyParameters copy];

              goto LABEL_14;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v8 = 0;
LABEL_14:
        v10 = v21;
        stringValue = v22;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_showDialogForPurchase:(id)purchase error:(id)error
{
  errorCopy = error;
  purchaseCopy = purchase;
  v10 = [[ISDialog alloc] initWithError:errorCopy];

  v7 = [[DaemonDialogOperation alloc] initWithDialog:v10];
  displaysOnLockScreen = [purchaseCopy displaysOnLockScreen];

  [(DaemonDialogOperation *)v7 setDisplaysOnLockscreen:displaysOnLockScreen];
  v9 = +[ISOperationQueue mainQueue];
  [v9 addOperation:v7];
}

- (void)_updateAccount:(id)account withPurchaseResponse:(id)response
{
  responseCopy = response;
  accountCopy = account;
  v7 = +[SSAccountStore defaultStore];
  v8 = [v7 accountWithUniqueIdentifier:accountCopy];

  v9 = [v8 copy];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = [responseCopy objectForKey:@"newCustomer"];
  if (!v10)
  {
    bOOLValue = 0;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v10 BOOLValue];
LABEL_6:
    [v9 setNewCustomer:bOOLValue];
  }

  v30 = responseCopy;
  v12 = [responseCopy valueForKey:@"passwordSettings"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 valueForKey:@"free"];
    v15 = [v13 valueForKey:@"paid"];
    v16 = [UpdateAccountPasswordSettingsOperation _accountPasswordSettingValueForServerValue:v14];
    v17 = [UpdateAccountPasswordSettingsOperation _accountPasswordSettingValueForServerValue:v15];
    [v9 setFreeDownloadsPasswordSetting:v16];
    [v9 setPaidPurchasesPasswordSetting:v17];
  }

  v18 = +[SSLogConfig sharedAccountsConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = shouldLog | 2;
  }

  else
  {
    v20 = shouldLog;
  }

  oSLogObject = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 2;
  }

  if (v22)
  {
    v23 = objc_opt_class();
    v29 = v23;
    [v9 accountName];
    v25 = v24 = v10;
    v26 = SSHashIfNeeded();
    v31 = 138543618;
    v32 = v23;
    v33 = 2114;
    v34 = v26;
    v27 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Setting an account's password settings. Saving %{public}@.", &v31, 22);

    v10 = v24;
    if (v27)
    {
      v28 = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      SSFileLog();
    }
  }

  else
  {
  }

  [v7 saveAccount:v9 verifyCredentials:0 completion:0];
  responseCopy = v30;
LABEL_22:
}

- (id)_urlBagKey
{
  v3 = [(SSPurchase *)self->_purchase valueForDownloadProperty:SSDownloadPropertyStorePreorderIdentifier];
  v4 = SSGetItemIdentifierFromValue();

  if (v4)
  {
    uRLBagKey = @"p2-order-pre-order";
  }

  else
  {
    requestProperties = [(SSPurchase *)self->_purchase requestProperties];
    uRLBagKey = [requestProperties URLBagKey];
  }

  return uRLBagKey;
}

@end