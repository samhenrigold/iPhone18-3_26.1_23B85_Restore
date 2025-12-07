@interface PurchaseProtocolDataProvider
- (BOOL)_processBuyFailuresFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error;
- (BOOL)processDictionary:(id)dictionary error:(id *)error;
- (void)_performActionsForButton:(id)button withDialog:(id)dialog;
@end

@implementation PurchaseProtocolDataProvider

- (void)_performActionsForButton:(id)button withDialog:(id)dialog
{
  buttonCopy = button;
  dialogCopy = dialog;
  actionType = [buttonCopy actionType];
  switch(actionType)
  {
    case 1u:
      if ([buttonCopy urlType] != 1)
      {
        break;
      }

      goto LABEL_6;
    case 4u:
LABEL_6:
      [buttonCopy performDefaultActionForDialog:dialogCopy];
      break;
    case 3u:
      parameter = [buttonCopy parameter];
      [(PurchaseProtocolDataProvider *)self setRedirectActionParameters:parameter];

      break;
  }
}

- (BOOL)processDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PurchaseProtocolDataProvider;
  v16 = 0;
  v7 = [(DaemonProtocolDataProvider *)&v15 processDictionary:dictionaryCopy error:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v14 = v8;
    v10 = [(PurchaseProtocolDataProvider *)self _processBuyFailuresFromDictionary:dictionaryCopy error:&v14];
    v11 = v14;

    v9 = v11;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
    v12 = v9;
    *error = v9;
  }

LABEL_7:

  return v10;
}

- (BOOL)_processBuyFailuresFromDictionary:(id)dictionary error:(id *)error
{
  v5 = [dictionary objectForKey:kISFailureTypeKey];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_62;
  }

  intValue = [v5 intValue];
  v7 = 0;
  v8 = 1;
  if (intValue > 3901)
  {
    if (intValue == 3902)
    {
      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v29) = shouldLog | 2;
      }

      else
      {
        LODWORD(v29) = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
        v32 = v31;
        v37 = 138543618;
        v38 = v31;
        v39 = 1024;
        intValue2 = [v5 intValue];
        v33 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: AdHocOfferMissingKeyParams: %d", &v37, 18);

        if (!v33)
        {
          goto LABEL_59;
        }

        oSLogObject = [NSString stringWithCString:v33 encoding:4];
        free(v33);
        SSFileLog();
      }
    }

    else
    {
      if (intValue != 3903)
      {
        goto LABEL_62;
      }

      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v17) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v17) = shouldLog2;
      }

      oSLogObject2 = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v17 = v17;
      }

      else
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v19 = objc_opt_class();
        v20 = v19;
        v37 = 138543618;
        v38 = v19;
        v39 = 1024;
        intValue2 = [v5 intValue];
        v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: AdHocOfferSignatureNotValid: %d", &v37, 18);

        if (!v21)
        {
          goto LABEL_59;
        }

        oSLogObject2 = [NSString stringWithCString:v21 encoding:4];
        free(v21);
        SSFileLog();
      }
    }
  }

  else if (intValue == 3900)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog3;
    }

    oSLogObject3 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v26 = v25;
      v37 = 138543618;
      v38 = v25;
      v39 = 1024;
      intValue2 = [v5 intValue];
      v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: AdHocOfferNotFound: %d", &v37, 18);

      if (!v27)
      {
        goto LABEL_59;
      }

      oSLogObject3 = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      SSFileLog();
    }
  }

  else
  {
    if (intValue != 3901)
    {
      goto LABEL_62;
    }

    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog4;
    }

    oSLogObject4 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
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
      v14 = v13;
      v37 = 138543618;
      v38 = v13;
      v39 = 1024;
      intValue2 = [v5 intValue];
      v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%{public}@: AdHocOfferPriceNotValid: %d", &v37, 18);

      if (!v15)
      {
        goto LABEL_59;
      }

      oSLogObject4 = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }
  }

LABEL_59:

  v34 = SSError();
  v7 = v34;
  if (error)
  {
    v35 = v34;
    v8 = 0;
    *error = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_62:

  return v8;
}

- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_1000CFF90;
  v90 = sub_1000CFFA0;
  v91 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  [operationCopy setPerformsButtonAction:0];
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_1000CFF90;
  v76 = sub_1000CFFA0;
  v77 = 0;
  v63 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  dialog = [operationCopy dialog];
  paymentSheet = [dialog paymentSheet];

  if (!paymentSheet)
  {
LABEL_48:
    v41 = v87;
    obj = v87[5];
    v42 = [(PurchaseProtocolDataProvider *)self runSubOperation:operationCopy error:&obj, v59];
    objc_storeStrong(v41 + 5, obj);
    *(v83 + 24) = v42;
    goto LABEL_49;
  }

  authenticationContext = [operationCopy authenticationContext];
  v8 = [[DisplayPaymentSheetOperation alloc] initWithPaymentSheet:paymentSheet];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];
  [(DisplayPaymentSheetOperation *)v8 setAccountIdentifier:requiredUniqueIdentifier];

  defaultAuthKitAuthenticationContext = [paymentSheet defaultAuthKitAuthenticationContext];
  [(DisplayPaymentSheetOperation *)v8 setAuthenticationContext:defaultAuthKitAuthenticationContext];

  dialogId = [paymentSheet dialogId];
  [(DisplayPaymentSheetOperation *)v8 setDialogId:dialogId];

  accountName = [*&self->super.ISProtocolDataProvider_opaque[OBJC_IVAR___ISDataProvider__authenticationContext] accountName];
  [(DisplayPaymentSheetOperation *)v8 setAccountName:accountName];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000CFFA8;
  v66[3] = &unk_1003281C8;
  v13 = v63;
  v67 = v13;
  v68 = &v86;
  v69 = &v78;
  v70 = &v72;
  v71 = &v82;
  [(DisplayPaymentSheetOperation *)v8 setCompletionHandler:v66];
  v14 = [[DisplayPaymentSheetContainerOperation alloc] initWithDisplayPaymentSheetOperation:v8];
  if (!v14)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v26 shouldLog];
    shouldLogToDisk = [v26 shouldLogToDisk];
    oSLogObject = [v26 OSLogObject];
    v30 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v31 = shouldLog;
    }

    else
    {
      v31 = shouldLog & 2;
    }

    if (v31)
    {
      v92 = 138543362;
      v93 = v13;
      v32 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v30, 16, "%{public}@: [PW] Payment sheet encountered an unknown error", &v92, 12);

      if (!v32)
      {
        v23 = 0;
        goto LABEL_41;
      }

      v30 = [NSString stringWithCString:v32 encoding:4];
      free(v32);
      v59 = v30;
      SSFileLog();
    }

    v23 = 0;
    goto LABEL_40;
  }

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v15 shouldLog];
  shouldLogToDisk2 = [v15 shouldLogToDisk];
  oSLogObject2 = [v15 OSLogObject];
  v19 = oSLogObject2;
  if (shouldLogToDisk2)
  {
    shouldLog2 |= 2u;
  }

  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = shouldLog2;
  }

  else
  {
    v20 = shouldLog2 & 2;
  }

  if (v20)
  {
    v92 = 138543362;
    v93 = v13;
    v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 0, "%{public}@: Preparing to display payment sheet", &v92, 12);

    if (!v21)
    {
      goto LABEL_14;
    }

    v19 = [NSString stringWithCString:v21 encoding:4];
    free(v21);
    v59 = v19;
    SSFileLog();
  }

LABEL_14:
  v65 = 0;
  [(PurchaseProtocolDataProvider *)self runSubOperation:v14 error:&v65];
  v22 = v65;
  v23 = v22;
  if (!v22)
  {
    goto LABEL_42;
  }

  domain = [v22 domain];
  if ([domain isEqualToString:SSErrorDomain])
  {
    v25 = [v23 code] == 140;

    if (v25)
    {
      *(v79 + 24) = 1;
    }
  }

  else
  {
  }

  v26 = +[SSLogConfig sharedDaemonConfig];
  if (!v26)
  {
    v26 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v33) = [v26 shouldLog];
  shouldLogToDisk3 = [v26 shouldLogToDisk];
  oSLogObject3 = [v26 OSLogObject];
  v30 = oSLogObject3;
  if (shouldLogToDisk3)
  {
    LODWORD(v33) = v33 | 2;
  }

  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v33 = v33;
  }

  else
  {
    v33 &= 2u;
  }

  if (!v33)
  {
    goto LABEL_40;
  }

  v36 = objc_opt_class();
  v92 = 138543618;
  v93 = v36;
  v94 = 2114;
  v95 = v23;
  v37 = v36;
  LODWORD(v60) = 22;
  v38 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, v30, 16, "%{public}@: Display payment sheet container operation failed with error: %{public}@", &v92, v60);

  if (v38)
  {
    v30 = [NSString stringWithCString:v38 encoding:4];
    free(v38);
    v59 = v30;
    SSFileLog();
LABEL_40:
  }

LABEL_41:

LABEL_42:
  if (*(v83 + 24) == 1)
  {
    authenticationContext2 = [operationCopy authenticationContext];
    v40 = [authenticationContext2 mutableCopy];

    if (v73[5])
    {
      [v40 setPasswordEquivalentToken:?];
      [operationCopy setAuthenticationContext:v40];
    }
  }

  if (!v14 || (v79[3] & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_49:
  selectedButton = [operationCopy selectedButton];
  if ((v83[3] & 1) == 0)
  {
    v47 = +[SSLogConfig sharedDaemonConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v47 shouldLog];
    shouldLogToDisk4 = [v47 shouldLogToDisk];
    oSLogObject4 = [v47 OSLogObject];
    v51 = oSLogObject4;
    if (shouldLogToDisk4)
    {
      shouldLog3 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v52 = shouldLog3;
    }

    else
    {
      v52 = shouldLog3 & 2;
    }

    if (v52)
    {
      v53 = objc_opt_class();
      v54 = v87[5];
      v92 = 138543618;
      v93 = v53;
      v94 = 2114;
      v95 = v54;
      v55 = v53;
      LODWORD(v60) = 22;
      v56 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &_mh_execute_header, v51, 0, "%{public}@: Server-driven authentication failed with error: %{public}@", &v92, v60);

      if (!v56)
      {
LABEL_62:

        dialog2 = [operationCopy dialog];
        [selectedButton performDefaultActionForDialog:dialog2];
        goto LABEL_63;
      }

      v51 = [NSString stringWithCString:v56 encoding:4];
      free(v56);
      SSFileLog();
    }

    goto LABEL_62;
  }

  dialog3 = [operationCopy dialog];
  [(PurchaseProtocolDataProvider *)self _performActionsForButton:selectedButton withDialog:dialog3];

  -[PurchaseProtocolDataProvider setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [operationCopy authenticatedAccountCredentialSource]);
  authenticatedAccountDSID = [operationCopy authenticatedAccountDSID];
  [(PurchaseProtocolDataProvider *)self setAuthenticatedAccountDSID:authenticatedAccountDSID];

  dialog2 = [operationCopy redirectURL];
  [(PurchaseProtocolDataProvider *)self setRedirectURL:dialog2];
LABEL_63:

  v57 = *(v83 + 24);
  if (error && (v83[3] & 1) == 0)
  {
    *error = v87[5];
    v57 = *(v83 + 24);
  }

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);

  return v57 & 1;
}

@end