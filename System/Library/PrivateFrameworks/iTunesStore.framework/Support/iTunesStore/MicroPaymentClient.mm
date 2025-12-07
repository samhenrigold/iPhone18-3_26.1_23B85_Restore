@interface MicroPaymentClient
+ (id)entityForContext:(id)context;
- (id)mergeResponse:(id)response withOptions:(int64_t)options;
- (id)replacePayment:(id)payment withPurchaseResponse:(id)response;
- (void)setValuesWithClientIdentity:(id)identity;
@end

@implementation MicroPaymentClient

+ (id)entityForContext:(id)context
{
  v3 = [objc_msgSend(objc_msgSend(context "persistentStoreCoordinator")];

  return [v3 objectForKey:@"MicroPaymentClient"];
}

- (id)mergeResponse:(id)response withOptions:(int64_t)options
{
  optionsCopy = options;
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v51 = objc_alloc_init(NSMutableArray);
  if (optionsCopy)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v7 = objc_alloc_init(NSMutableArray);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v59 = v7;
  if ((optionsCopy & 2) != 0)
  {
    v62 = objc_alloc_init(NSMutableSet);
  }

  else
  {
    v62 = 0;
  }

  v54 = v8;
  payments = [(MicroPaymentClient *)self payments];
  v10 = objc_alloc_init(NSMutableArray);
  v58 = objc_alloc_init(NSMutableDictionary);
  v61 = objc_alloc_init(NSMutableDictionary);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v11 = [payments countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v80;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v80 != v13)
        {
          objc_enumerationMutation(payments);
        }

        v15 = *(*(&v79 + 1) + 8 * i);
        transactionIdentifier = [v15 transactionIdentifier];
        if (transactionIdentifier)
        {
          [v61 setObject:v15 forKey:transactionIdentifier];
        }

        else
        {
          [v10 addObject:v15];
        }

        if ([objc_msgSend(v15 "supportsDeferredPayment")])
        {
          productIdentifier = [v15 productIdentifier];
          if (productIdentifier)
          {
            [v58 setObject:v15 forKey:productIdentifier];
          }
        }

        [v62 addObject:v15];
      }

      v12 = [payments countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v12);
  }

  managedObjectContext = [(MicroPaymentClient *)self managedObjectContext];
  v53 = [MicroPayment paymentEntityFromContext:?];
  requestType = [response requestType];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [response payments];
  v18 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
  v19 = v59;
  if (v18)
  {
    v20 = v18;
    v60 = *v76;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v76 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v75 + 1) + 8 * j);
        v23 = [v22 objectForKey:@"transaction-id"];
        if (v23)
        {
          v24 = [v61 objectForKey:v23];
          if (v24)
          {
            v25 = v24;
LABEL_40:
            [v25 mergeValuesFromResponse:v22];
            [v62 removeObject:v25];
            [v19 addObject:v25];
            continue;
          }
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v26 = [v10 countByEnumeratingWithState:&v71 objects:v85 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v72;
LABEL_30:
          v29 = 0;
          while (1)
          {
            if (*v72 != v28)
            {
              objc_enumerationMutation(v10);
            }

            v25 = *(*(&v71 + 1) + 8 * v29);
            if ([v25 isEqualToResponse:v22 compareAllFields:1])
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v10 countByEnumeratingWithState:&v71 objects:v85 count:16];
              v19 = v59;
              if (v27)
              {
                goto LABEL_30;
              }

              goto LABEL_38;
            }
          }

          v19 = v59;
          if (v25)
          {
            goto LABEL_40;
          }
        }

LABEL_38:
        v30 = [v22 objectForKey:@"item-id"];
        if (v30)
        {
          v25 = [v58 objectForKey:v30];
          [v25 setState:&off_10034BD00];
          if (v25)
          {
            goto LABEL_40;
          }
        }

        v31 = [[MicroPayment alloc] initWithEntity:v53 insertIntoManagedObjectContext:managedObjectContext];
        [(MicroPayment *)v31 mergeValuesFromResponse:v22];
        [(MicroPayment *)v31 setClient:self];
        if (requestType == 1)
        {
          v32 = 6;
        }

        else if ([(MicroPayment *)v31 originalTransactionIdentifier])
        {
          v32 = 7;
        }

        else
        {
          v32 = 2;
        }

        [(MicroPayment *)v31 setState:[NSNumber numberWithInteger:v32]];
        transactionIdentifier2 = [(MicroPayment *)v31 transactionIdentifier];
        if (transactionIdentifier2)
        {
          [v61 setObject:v31 forKey:transactionIdentifier2];
        }

        else
        {
          [v10 addObject:v31];
        }

        [v54 addObject:v31];
        [v19 addObject:v31];
      }

      v20 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v20);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v34 = [v62 countByEnumeratingWithState:&v67 objects:v84 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v68;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(v62);
        }

        v38 = *(*(&v67 + 1) + 8 * k);
        v39 = [objc_msgSend(v38 "state")];
        v40 = v39 == 5 || v39 == 8;
        if (!v40 && [v38 transactionIdentifier])
        {
          downloads = [v38 downloads];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v42 = [downloads countByEnumeratingWithState:&v63 objects:v83 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v64;
            do
            {
              for (m = 0; m != v43; m = m + 1)
              {
                if (*v64 != v44)
                {
                  objc_enumerationMutation(downloads);
                }

                downloadID = [*(*(&v63 + 1) + 8 * m) downloadID];
                if (downloadID)
                {
                  [v6 addObject:downloadID];
                }
              }

              v43 = [downloads countByEnumeratingWithState:&v63 objects:v83 count:16];
            }

            while (v43);
          }

          [v51 addObject:v38];
          [managedObjectContext deleteObject:v38];
          v19 = v59;
        }
      }

      v35 = [v62 countByEnumeratingWithState:&v67 objects:v84 count:16];
    }

    while (v35);
  }

  if (sub_1000CE00C(managedObjectContext))
  {
    v47 = objc_alloc_init(MicroPaymentClientMergeResults);
    v48 = v54;
    [(MicroPaymentClientMergeResults *)v47 setAddedPayments:v54];
    [(MicroPaymentClientMergeResults *)v47 setChangedPayments:v19];
    [(MicroPaymentClientMergeResults *)v47 setRemovedDownloadIDs:v6];
    v49 = v51;
    [(MicroPaymentClientMergeResults *)v47 setRemovedPayments:v51];
  }

  else
  {
    [managedObjectContext rollback];
    v47 = 0;
    v49 = v51;
    v48 = v54;
  }

  return v47;
}

- (id)replacePayment:(id)payment withPurchaseResponse:(id)response
{
  v41 = objc_alloc_init(NSMutableArray);
  v40 = objc_alloc_init(NSMutableArray);
  managedObjectContext = [(MicroPaymentClient *)self managedObjectContext];
  v38 = [MicroPayment paymentEntityFromContext:?];
  payments = [response payments];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [payments countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(payments);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        if ([payment isEqualToResponse:v12 compareAllFields:{0, v36}])
        {
          [payment mergeValuesFromResponse:v12];
          [payment setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 2)}];
          [v40 addObject:payment];
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
            v46 = 138412290;
            v47 = v17;
            LODWORD(v37) = 12;
            v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Merged existing payment with response payment", &v46, v37);
            goto LABEL_27;
          }
        }

        else
        {
          v19 = [[MicroPayment alloc] initWithEntity:v38 insertIntoManagedObjectContext:managedObjectContext];
          [(MicroPayment *)v19 mergeValuesFromResponse:v12];
          [(MicroPayment *)v19 setClient:self];
          [(MicroPayment *)v19 setState:[NSNumber numberWithInteger:2]];
          [v41 addObject:v19];

          v20 = +[SSLogConfig sharedDaemonConfig];
          if (!v20)
          {
            v20 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v20 shouldLog];
          if ([v20 shouldLogToDisk])
          {
            LODWORD(v22) = shouldLog2 | 2;
          }

          else
          {
            LODWORD(v22) = shouldLog2;
          }

          oSLogObject2 = [v20 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
          {
            v22 = v22;
          }

          else
          {
            v22 &= 2u;
          }

          if (v22)
          {
            v24 = objc_opt_class();
            v46 = 138412290;
            v47 = v24;
            LODWORD(v37) = 12;
            v18 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Merged in new payment from response", &v46, v37);
LABEL_27:
            if (v18)
            {
              v25 = v18;
              v26 = [NSString stringWithCString:v18 encoding:4];
              free(v25);
              v36 = v26;
              SSFileLog();
            }

            continue;
          }
        }
      }

      v9 = [payments countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v9);
  }

  if (payment && ![v40 count])
  {
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v28) = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      LODWORD(v28) = v28 | 2;
    }

    oSLogObject3 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v30 = objc_opt_class();
      v46 = 138412290;
      v47 = v30;
      LODWORD(v37) = 12;
      v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not find payment to merge with existing payment", &v46, v37);
      if (v31)
      {
        v32 = v31;
        [NSString stringWithCString:v31 encoding:4];
        free(v32);
        SSFileLog();
      }
    }

    sub_1001FA1F0();
    [payment setFailedWithError:ISErrorWithDomain()];
    [v40 addObject:payment];
  }

  if (sub_1000CE00C(managedObjectContext))
  {
    v33 = objc_alloc_init(MicroPaymentClientMergeResults);
    v34 = v41;
    [(MicroPaymentClientMergeResults *)v33 setAddedPayments:v41];
    [(MicroPaymentClientMergeResults *)v33 setChangedPayments:v40];
  }

  else
  {
    [managedObjectContext rollback];
    v33 = 0;
    v34 = v41;
  }

  return v33;
}

- (void)setValuesWithClientIdentity:(id)identity
{
  -[MicroPaymentClient setBundleVersion:](self, "setBundleVersion:", [identity bundleVersion]);
  -[MicroPaymentClient setIdentifier:](self, "setIdentifier:", [identity bundleIdentifier]);
  -[MicroPaymentClient setStoreIdentifier:](self, "setStoreIdentifier:", [identity storeIdentifier]);
  -[MicroPaymentClient setStoreVersion:](self, "setStoreVersion:", [identity storeVersion]);
  -[MicroPaymentClient setVendorIdentifier:](self, "setVendorIdentifier:", [identity vendorIdentifier]);
  -[MicroPaymentClient setSandboxed:](self, "setSandboxed:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [identity isSandboxed]));
  -[MicroPaymentClient setUsesIdentityAttributes:](self, "setUsesIdentityAttributes:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [identity usesIdentityAttributes]));
  -[MicroPaymentClient setAllowsBootstrapCellularData:](self, "setAllowsBootstrapCellularData:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [identity allowsBootstrapCellularData]));
  -[MicroPaymentClient setHidesConfirmationDialogs:](self, "setHidesConfirmationDialogs:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [identity hidesConfirmationDialogs]));
  -[MicroPaymentClient setIgnoresInAppPurchaseRestriction:](self, "setIgnoresInAppPurchaseRestriction:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [identity ignoresInAppPurchaseRestriction]));
  -[MicroPaymentClient setReceiptDirectoryPath:](self, "setReceiptDirectoryPath:", [identity receiptDirectoryPath]);
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [identity requiresAuthenticationForPayment]);

  [(MicroPaymentClient *)self setRequiresAuthenticationForPayment:v5];
}

@end