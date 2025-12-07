@interface SSPurchase
- (id)newAMSPurchase;
@end

@implementation SSPurchase

- (id)newAMSPurchase
{
  buyParameters = [(SSPurchase *)self buyParameters];
  v4 = [AMSBuyParams buyParamsWithString:buyParameters];

  if ([(SSPurchase *)self isBackgroundPurchase])
  {
    [v4 setObject:@"1" forKeyedSubscript:AMSBuyParamPropertyIsBackground];
  }

  affiliateIdentifier = [(SSPurchase *)self affiliateIdentifier];

  if (affiliateIdentifier)
  {
    affiliateIdentifier2 = [(SSPurchase *)self affiliateIdentifier];
    [v4 setObject:affiliateIdentifier2 forKeyedSubscript:AMSBuyParamPropertyAffiliateId];
  }

  [v4 setObject:0 forKeyedSubscript:@"isUpdateAll"];
  v7 = [v4 objectForKeyedSubscript:@"generateBuyParams"];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 BOOLValue]);
    [v4 setObject:v9 forKeyedSubscript:@"generateBuyParams"];
  }

  if ([(SSPurchase *)self isPlaybackRequest])
  {
    [v4 setObject:@"1" forKeyedSubscript:@"playback"];
  }

  requestProperties = [(SSPurchase *)self requestProperties];
  requestParameters = [requestProperties requestParameters];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000CABFC;
  v40[3] = &unk_100327658;
  v12 = v4;
  v41 = v12;
  [requestParameters enumerateKeysAndObjectsUsingBlock:v40];

  requestProperties2 = [(SSPurchase *)self requestProperties];
  uRLBagKey = [requestProperties2 URLBagKey];

  if (([uRLBagKey isEqualToString:@"backgroundUpdateProduct"] & 1) == 0)
  {
    if ([uRLBagKey isEqualToString:@"buyProduct"])
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_34;
    }

    if ([uRLBagKey isEqualToString:@"downloadProduct"])
    {
      v15 = 0;
      v16 = 2;
      goto LABEL_34;
    }

    if ([uRLBagKey isEqualToString:@"p2-in-app-buy"])
    {
      v15 = 0;
      v16 = 3;
      goto LABEL_34;
    }

    if ([uRLBagKey isEqualToString:@"updateProduct"])
    {
      v15 = 0;
      v16 = 4;
      goto LABEL_34;
    }

    if ([uRLBagKey isEqualToString:@"redownloadAllTones"])
    {
LABEL_33:
      v16 = 0;
      v15 = 1;
      goto LABEL_34;
    }

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v42 = 138543618;
      v43 = v21;
      v44 = 2112;
      v45 = uRLBagKey;
      v22 = v21;
      v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 17, "%{public}@: Unmatched type found in AMSPurchaseShim for bag key: (%@)", &v42, 22);

      if (!v23)
      {
LABEL_32:

        goto LABEL_33;
      }

      oSLogObject = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      v39 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_32;
  }

  v15 = 0;
  v16 = 1;
LABEL_34:
  v24 = [[SSAMSPurchase alloc] initWithPurchaseType:v16 buyParams:v12];
  if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v24 performSelector:"setURLBagKey:" withObject:uRLBagKey];
  }

  v25 = objc_alloc_init(NSMutableDictionary);
  hTTPHeaders = [requestProperties HTTPHeaders];

  if (hTTPHeaders)
  {
    hTTPHeaders2 = [requestProperties HTTPHeaders];
    [v25 addEntriesFromDictionary:hTTPHeaders2];
  }

  tidHeaders = [(SSPurchase *)self tidHeaders];

  if (tidHeaders)
  {
    tidHeaders2 = [(SSPurchase *)self tidHeaders];
    [v25 addEntriesFromDictionary:tidHeaders2];
  }

  [v25 setObject:0 forKeyedSubscript:SSHTTPHeaderUserAgent];
  v30 = [v25 copy];
  [v24 setAdditionalHeaders:v30];

  [v24 setUserInitiated:{-[SSPurchase isBackgroundPurchase](self, "isBackgroundPurchase") ^ 1}];
  ownerAccountDSID = [(SSPurchase *)self ownerAccountDSID];
  [v24 setOwnerAccountId:ownerAccountDSID];

  accountIdentifier = [(SSPurchase *)self accountIdentifier];
  [v24 setAccountIdentifier:accountIdentifier];

  [v24 setIgnoreRequirePasswordRestriction:{-[SSPurchase ignoresForcedPasswordRestriction](self, "ignoresForcedPasswordRestriction")}];
  [v24 setPreauthenticated:{-[SSPurchase isPreauthenticated](self, "isPreauthenticated")}];
  [v24 setRequiresAccount:1];
  presentingSceneBundleIdentifier = [(SSPurchase *)self presentingSceneBundleIdentifier];
  [v24 setPresentingSceneBundleIdentifier:presentingSceneBundleIdentifier];

  presentingSceneIdentifier = [(SSPurchase *)self presentingSceneIdentifier];
  [v24 setPresentingSceneIdentifier:presentingSceneIdentifier];

  requestProperties3 = [(SSPurchase *)self requestProperties];
  [requestProperties3 URLBagType];
  v36 = SSAccountScopeForURLBagType();

  v37 = &AMSAccountMediaTypeProduction;
  if (v36)
  {
    v37 = &AMSAccountMediaTypeAppStoreSandbox;
  }

  [v24 setMediaType:*v37];

  return v24;
}

@end