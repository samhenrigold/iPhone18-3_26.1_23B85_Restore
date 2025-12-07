@interface RestoreDownloadsOperation
+ (void)resetShouldSuppressTermsAndConditionsDialogs;
+ (void)setShouldSuppressTermsAndConditionsDialogs:(BOOL)dialogs;
- (BOOL)_isErrorCancelFailure:(id)failure;
- (BOOL)_isErrorSoftFail:(id)fail;
- (BOOL)_preflightAccountWithID:(id)d isFamily:(BOOL)family error:(id *)error;
- (BOOL)_shouldAuthenticateForCancelRetry;
- (BOOL)_shouldAutomaticallyRetryAfterSoftFailError:(id)error;
- (BOOL)_updateDownloadEntity:(id)entity withTransaction:(id)transaction storeDownload:(id)download accountID:(id)d;
- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byAuthenticatingWithContext:(id)context returningError:(id *)error;
- (NSArray)errors;
- (NSOrderedSet)downloadIdentifiers;
- (NSString)restoreReason;
- (RestoreDownloadsOperation)initWithDownloadIdentifiers:(id)identifiers restoreReason:(id)reason;
- (id)_accountIDForAccountName:(id)name error:(id *)error;
- (id)_copyDownloadSessionPropertiesForItem:(id)item download:(id)download;
- (id)_newDownloadWithStoreDownload:(id)download;
- (id)_newRestoreItemsWithDownloadIDs:(id)ds;
- (id)_softFailRestoreItem:(id)item download:(id)download withRestoreState:(int64_t)state error:(id)error;
- (int64_t)_downloadRestoreStateForError:(id)error;
- (void)_applyResponses:(id)responses withTransaction:(id)transaction;
- (void)_establishPrimaryAccount;
- (void)_hardFailRestoreItem:(id)item download:(id)download transaction:(id)transaction error:(id)error;
- (void)_scheduleAutomaticRetry;
- (void)_scheduleCancelRetry;
- (void)dealloc;
- (void)restoreDownloadItemsOperation:(id)operation didReceiveResponse:(id)response;
- (void)restorePodcastItemsOperation:(id)operation didReceiveResponse:(id)response;
- (void)run;
@end

@implementation RestoreDownloadsOperation

- (RestoreDownloadsOperation)initWithDownloadIdentifiers:(id)identifiers restoreReason:(id)reason
{
  v8.receiver = self;
  v8.super_class = RestoreDownloadsOperation;
  v6 = [(RestoreDownloadsOperation *)&v8 init];
  if (v6)
  {
    v6->_downloadIDs = [identifiers copy];
    v6->_restoreReason = [reason copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RestoreDownloadsOperation;
  [(RestoreDownloadsOperation *)&v3 dealloc];
}

+ (void)resetShouldSuppressTermsAndConditionsDialogs
{
  CFPreferencesSetAppValue(@"RestoreSuppressTermsAndConditions", 0, kSSUserDefaultsIdentifier);

  CFPreferencesAppSynchronize(@"RestoreSuppressTermsAndConditions");
}

+ (void)setShouldSuppressTermsAndConditionsDialogs:(BOOL)dialogs
{
  v3 = &kCFBooleanTrue;
  if (!dialogs)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"RestoreSuppressTermsAndConditions", *v3, kSSUserDefaultsIdentifier);

  CFPreferencesAppSynchronize(@"RestoreSuppressTermsAndConditions");
}

- (NSOrderedSet)downloadIdentifiers
{
  v2 = self->_downloadIDs;

  return v2;
}

- (NSArray)errors
{
  [(RestoreDownloadsOperation *)self lock];
  v3 = [(NSMutableArray *)self->_errors copy];
  [(RestoreDownloadsOperation *)self unlock];
  return v3;
}

- (NSString)restoreReason
{
  v2 = self->_restoreReason;

  return v2;
}

- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byAuthenticatingWithContext:(id)context returningError:(id *)error
{
  errorCopy3 = error;
  sourceCopy3 = source;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  if (self->_cancelRetryAlertState == 1)
  {
    v9 = [SSLogConfig sharedDaemonConfig:d];
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
      v54 = 138543362;
      v55 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Skipping authentication after cancel retry was cancelled", &v54, 12);
      if (v13)
      {
        v14 = v13;
        [NSString stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog();
      }
    }

    v15 = 0;
    v53 = SSError();
LABEL_47:
    dCopy2 = d;
    goto LABEL_48;
  }

  v17 = [(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"];
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  if (self->_cancelRetryAlertState)
  {
    goto LABEL_29;
  }

  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    LODWORD(v20) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v20) = shouldLog2;
  }

  oSLogObject2 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v20 = v20;
  }

  else
  {
    v20 &= 2u;
  }

  if (v20)
  {
    v22 = objc_opt_class();
    v54 = 138543362;
    v55 = v22;
    LODWORD(v46) = 12;
    v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%{public}@: Prompting user for restore cancel retry", &v54, v46);
    if (v23)
    {
      v24 = v23;
      v25 = [NSString stringWithCString:v23 encoding:4];
      free(v24);
      v45 = v25;
      SSFileLog();
    }
  }

  if ([(RestoreDownloadsOperation *)self _shouldAuthenticateForCancelRetry])
  {
    self->_cancelRetryAlertState = 2;
    while (1)
    {
LABEL_29:
      v50.receiver = self;
      v50.super_class = RestoreDownloadsOperation;
      v26 = [(RestoreDownloadsOperation *)&v50 copyAccountID:&v52 credentialSource:&v51 byAuthenticatingWithContext:context returningError:&v53, v44];
      if ((v26 | v17 ^ 1))
      {
        v15 = v26;
        goto LABEL_46;
      }

      if (!ISErrorIsEqual())
      {
        break;
      }

      v27 = +[SSLogConfig sharedDaemonConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        LODWORD(v29) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v29) = shouldLog3;
      }

      oSLogObject3 = [v27 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
        v54 = 138543362;
        v55 = v31;
        LODWORD(v46) = 12;
        v32 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: User cancelled auth during cancel retry", &v54, v46);
        if (v32)
        {
          v33 = v32;
          v34 = [NSString stringWithCString:v32 encoding:4];
          free(v33);
          v44 = v34;
          SSFileLog();
        }
      }

      self->_cancelRetryAlertState = 0;

      v52 = 0;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    v15 = 0;
LABEL_46:
    sourceCopy3 = source;
    errorCopy3 = error;
    goto LABEL_47;
  }

  v37 = +[SSLogConfig sharedDaemonConfig];
  if (!v37)
  {
    v37 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v37 shouldLog];
  if ([v37 shouldLogToDisk])
  {
    LODWORD(v39) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v39) = shouldLog4;
  }

  oSLogObject4 = [v37 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v39;
  }

  else
  {
    v39 &= 2u;
  }

  sourceCopy3 = source;
  errorCopy3 = error;
  dCopy2 = d;
  if (v39)
  {
    v41 = objc_opt_class();
    v54 = 138543362;
    v55 = v41;
    LODWORD(v46) = 12;
    v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: User cancelled cancel retry", &v54, v46);
    if (v42)
    {
      v43 = v42;
      [NSString stringWithCString:v42 encoding:4];
      free(v43);
      SSFileLog();
    }
  }

  self->_cancelRetryAlertState = 1;
  v15 = 0;
  v53 = SSError();
LABEL_48:
  if (dCopy2)
  {
    *dCopy2 = v52;
    if (!sourceCopy3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (sourceCopy3)
  {
LABEL_50:
    *sourceCopy3 = v51;
  }

LABEL_51:
  if (errorCopy3)
  {
    *errorCopy3 = v53;
  }

  return v15;
}

- (void)run
{
  v182 = objc_alloc_init(NSMutableDictionary);
  v193 = objc_alloc_init(NSMutableDictionary);
  v183 = objc_alloc_init(NSMutableArray);
  v194 = +[SSAccountStore defaultStore];
  self->_hadAutoRetrySoftFailure = 0;
  self->_hadCancelFailure = 0;
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
    v9 = [(NSOrderedSet *)self->_downloadIDs count];
    *v230 = 138543618;
    *&v230[4] = v8;
    *&v230[12] = 2048;
    *&v230[14] = v9;
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%{public}@: Attempting restore for %lu download(s)", v230, 22);
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4];
      free(v11);
      v164 = v12;
      SSFileLog();
    }
  }

  v184 = objc_alloc_init(NSMutableArray);
  v181 = objc_alloc_init(NSMutableArray);
  v178 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(FamilyCircleOperation);
  if ([(RestoreDownloadsOperation *)self runSubOperation:v13 returningError:0]&& [(FamilyCircleOperation *)v13 familyCircle])
  {
    [(RestoreDownloadsOperation *)self _establishPrimaryAccount];
    activeAccount = [v194 activeAccount];
    v15 = [objc_msgSend(-[SSFamilyCircle allITunesIdentifiers](-[FamilyCircleOperation familyCircle](v13 "familyCircle")];
    v16 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    if (v16)
    {
      [v15 removeObject:v16];
    }

    v180 = 1;
  }

  else
  {
    v15 = 0;
    activeAccount = 0;
    v180 = 0;
  }

  v17 = [(RestoreDownloadsOperation *)self _newRestoreItemsWithDownloadIDs:self->_downloadIDs];
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v221 objects:v229 count:16];
  selfCopy = self;
  v192 = v15;
  if (!v18)
  {
    activeAccount2 = activeAccount;
    goto LABEL_112;
  }

  v19 = v18;
  v20 = *v222;
  v198 = SSDownloadPhaseDownloading;
  activeAccount2 = activeAccount;
  obj = *v222;
  v185 = v17;
  do
  {
    v22 = 0;
    v190 = v19;
    do
    {
      if (*v222 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v221 + 1) + 8 * v22);
      [v23 downloadKind];
      IsPodcastKind = SSDownloadKindIsPodcastKind();
      v220 = 0;
      if ((IsPodcastKind & 1) == 0 && ![v23 storeAccountID])
      {
        storeAccountAppleID = [v23 storeAccountAppleID];
        if (storeAccountAppleID)
        {
          uniqueIdentifier = [(RestoreDownloadsOperation *)self _accountIDForAccountName:storeAccountAppleID error:&v220];
          goto LABEL_42;
        }

        if ((v180 & 1) == 0)
        {
          [(RestoreDownloadsOperation *)self _establishPrimaryAccount];
          activeAccount2 = [v194 activeAccount];
        }

        if (activeAccount2)
        {
          v27 = activeAccount2;
          v28 = +[SSLogConfig sharedDaemonConfig];
          if (!v28)
          {
            v28 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v28 shouldLog];
          if ([v28 shouldLogToDisk])
          {
            v30 = shouldLog2 | 2;
          }

          else
          {
            v30 = shouldLog2;
          }

          oSLogObject2 = [v28 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v30;
          }

          else
          {
            v32 = v30 & 2;
          }

          if (v32)
          {
            v33 = objc_opt_class();
            downloadIdentifier = [v23 downloadIdentifier];
            *v230 = 138543618;
            *&v230[4] = v33;
            self = selfCopy;
            *&v230[12] = 2048;
            *&v230[14] = downloadIdentifier;
            LODWORD(v172) = 22;
            v35 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Falling back to primary account to restore download: %lld", v230, v172);
            if (v35)
            {
              v36 = v35;
              v37 = [NSString stringWithCString:v35 encoding:4];
              free(v36);
              v164 = v37;
              SSFileLog();
            }
          }

          activeAccount2 = v27;
          [v23 setStoreAccountAppleID:{objc_msgSend(v27, "accountName", v164)}];
          uniqueIdentifier = [v27 uniqueIdentifier];
          v180 = 1;
          v19 = v190;
          v15 = v192;
          v20 = obj;
LABEL_42:
          [v23 setStoreAccountID:uniqueIdentifier];
        }

        else
        {
          v180 = 1;
        }

        storeAccountID = [v23 storeAccountID];
        if (!(storeAccountID | v220))
        {
          v220 = SSError();
        }
      }

      storeAccountID2 = [v23 storeAccountID];
      if (storeAccountID2)
      {
        v40 = activeAccount2 == 0;
      }

      else
      {
        v40 = 1;
      }

      if (!v40)
      {
        v41 = storeAccountID2;
        if ([v15 containsObject:storeAccountID2])
        {
          [v23 setStoreOriginalPurchaserAccountID:v41];
          [v23 setStoreAccountID:{objc_msgSend(activeAccount2, "uniqueIdentifier")}];
        }
      }

      v219 = 0;
      if (IsPodcastKind)
      {
        if ([v23 isEligibleForRestore:&v219])
        {
          [v183 addObject:v23];
          goto LABEL_106;
        }

LABEL_93:
        v66 = -[DownloadSessionProperties initWithClientIdentifier:handlerIdentifier:]([DownloadSessionProperties alloc], "initWithClientIdentifier:handlerIdentifier:", [v23 clientIdentifier], objc_msgSend(v23, "handlerIdentifier"));
        [(DownloadSessionProperties *)v66 setDownloadPhase:v198];
        [v23 setDownloadSessionProperties:v66];
        if (v219)
        {
          v67 = v219;
        }

        else
        {
          v67 = v220;
        }

        [v23 setError:v67];
        if ([(RestoreDownloadsOperation *)self _isErrorCancelFailure:v220])
        {
          [v184 addObject:v23];
          self->_hadCancelFailure = 1;
        }

        else if (v220 && [(RestoreDownloadsOperation *)self _isErrorSoftFail:?])
        {
          [v178 addObject:v23];
          if (self->_hadAutoRetrySoftFailure)
          {
            v68 = 1;
          }

          else
          {
            v68 = [(RestoreDownloadsOperation *)self _shouldAutomaticallyRetryAfterSoftFailError:v220];
          }

          self->_hadAutoRetrySoftFailure = v68;
        }

        else
        {
          [v181 addObject:v23];
        }

        goto LABEL_106;
      }

      if (![v23 storeAccountID] || (objc_msgSend(v23, "isEligibleForRestore:", &v219) & 1) == 0)
      {
        goto LABEL_93;
      }

      storeOriginalPurchaserAccountID = [v23 storeOriginalPurchaserAccountID];
      if (!storeOriginalPurchaserAccountID)
      {
        storeOriginalPurchaserAccountID = [v23 storeAccountID];
      }

      v43 = [v182 objectForKey:storeOriginalPurchaserAccountID];
      if (!v43)
      {
        v43 = [v194 accountWithUniqueIdentifier:storeOriginalPurchaserAccountID];
        if (!v43)
        {
          v43 = objc_alloc_init(SSAccount);
          [v43 setUniqueIdentifier:storeOriginalPurchaserAccountID];
        }

        [v182 setObject:v43 forKey:storeOriginalPurchaserAccountID];
      }

      if (![v43 accountName])
      {
        [v43 setAccountName:{objc_msgSend(v23, "storeAccountAppleID")}];
      }

      if (![v43 storeFrontIdentifier])
      {
        [v43 setStoreFrontIdentifier:{objc_msgSend(v23, "storeFrontID")}];
      }

      v44 = activeAccount2;
      v45 = +[SSLogConfig sharedAccountsConfig];
      if (!v45)
      {
        v45 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v45 shouldLog];
      if ([v45 shouldLogToDisk])
      {
        v47 = shouldLog3 | 2;
      }

      else
      {
        v47 = shouldLog3;
      }

      oSLogObject3 = [v45 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v47;
      }

      else
      {
        v49 = v47 & 2;
      }

      if (v49)
      {
        v50 = objc_opt_class();
        [v43 accountName];
        v51 = SSHashIfNeeded();
        *v230 = 138543618;
        *&v230[4] = v50;
        *&v230[12] = 2114;
        *&v230[14] = v51;
        LODWORD(v172) = 22;
        v52 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Updating an account during a restore operation. Saving %{public}@.", v230, v172);
        if (v52)
        {
          v53 = v52;
          v54 = [NSString stringWithCString:v52 encoding:4];
          free(v53);
          v164 = v54;
          SSFileLog();
        }
      }

      v218 = 0;
      activeAccount2 = v44;
      if (([v194 saveAccount:v43 verifyCredentials:0 error:{&v218, v164}] & 1) == 0 && v218)
      {
        v55 = +[SSLogConfig sharedAccountsConfig];
        if (!v55)
        {
          v55 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v55 shouldLog];
        if ([v55 shouldLogToDisk])
        {
          v57 = shouldLog4 | 2;
        }

        else
        {
          v57 = shouldLog4;
        }

        oSLogObject4 = [v55 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
        {
          v59 = v57;
        }

        else
        {
          v59 = v57 & 2;
        }

        activeAccount2 = v44;
        if (v59)
        {
          v60 = objc_opt_class();
          [v43 accountName];
          v61 = SSHashIfNeeded();
          *v230 = 138543874;
          *&v230[4] = v60;
          *&v230[12] = 2114;
          *&v230[14] = v61;
          *&v230[22] = 2114;
          v231 = v218;
          LODWORD(v172) = 32;
          v62 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%{public}@: Unabled to save an account during a restore operation. Saving %{public}@. Error: %{public}@", v230, v172);
          if (v62)
          {
            v63 = v62;
            v64 = [NSString stringWithCString:v62 encoding:4];
            free(v63);
            v165 = v64;
            SSFileLog();
          }
        }
      }

      v65 = [v193 objectForKey:storeOriginalPurchaserAccountID];
      if (!v65)
      {
        v65 = +[NSMutableArray array];
        [v193 setObject:v65 forKey:storeOriginalPurchaserAccountID];
      }

      [v65 addObject:{v23, v165}];
      self = selfCopy;
      v19 = v190;
      v15 = v192;
      v17 = v185;
      v20 = obj;
LABEL_106:
      v22 = v22 + 1;
    }

    while (v19 != v22);
    v69 = [v17 countByEnumeratingWithState:&v221 objects:v229 count:16];
    v19 = v69;
  }

  while (v69);
LABEL_112:

  v70 = objc_alloc_init(NSMutableArray);
  v179 = activeAccount2;
  if ([v181 count])
  {
    v71 = +[SSLogConfig sharedDaemonConfig];
    if (!v71)
    {
      v71 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v71 shouldLog];
    if ([v71 shouldLogToDisk])
    {
      v73 = shouldLog5 | 2;
    }

    else
    {
      v73 = shouldLog5;
    }

    oSLogObject5 = [v71 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v73;
    }

    else
    {
      v75 = v73 & 2;
    }

    if (v75)
    {
      v76 = objc_opt_class();
      v77 = [v181 componentsJoinedByString:{@", "}];
      *v230 = 138543618;
      *&v230[4] = v76;
      *&v230[12] = 2114;
      *&v230[14] = v77;
      LODWORD(v172) = 22;
      v78 = _os_log_send_and_compose_impl(v75, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: Hard fail invalid restore items: [%{public}@]", v230, v172);
      if (v78)
      {
        v79 = v78;
        [NSString stringWithCString:v78 encoding:4];
        free(v79);
        SSFileLog();
      }
    }

    v166 = objc_opt_class();
    v173 = [v181 componentsJoinedByString:{@", "}];
    SSDebugLog();
    v80 = objc_alloc_init(RestoreDownloadItemsResponse);
    [(RestoreDownloadItemsResponse *)v80 setRequestItems:v181, v166, v173];
    [v70 addObject:v80];

    activeAccount2 = v179;
  }

  if ([v178 count])
  {
    v81 = +[SSLogConfig sharedDaemonConfig];
    if (!v81)
    {
      v81 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [v81 shouldLog];
    if ([v81 shouldLogToDisk])
    {
      v83 = shouldLog6 | 2;
    }

    else
    {
      v83 = shouldLog6;
    }

    oSLogObject6 = [v81 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 2;
    }

    if (v85)
    {
      v86 = objc_opt_class();
      v87 = [v178 componentsJoinedByString:{@", "}];
      *v230 = 138543618;
      *&v230[4] = v86;
      *&v230[12] = 2114;
      *&v230[14] = v87;
      LODWORD(v172) = 22;
      v88 = _os_log_send_and_compose_impl(v85, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%{public}@: Soft fail invalid restore items: [%{public}@]", v230, v172);
      if (v88)
      {
        v89 = v88;
        [NSString stringWithCString:v88 encoding:4];
        free(v89);
        SSFileLog();
      }
    }

    v168 = objc_opt_class();
    v174 = [v178 componentsJoinedByString:{@", "}];
    SSDebugLog();
    v90 = objc_alloc_init(RestoreDownloadItemsResponse);
    [(RestoreDownloadItemsResponse *)v90 setRequestItems:v178, v168, v174];
    [(RestoreDownloadItemsResponse *)v90 setServerResponseWithError:SSError()];
    [v70 addObject:v90];

    activeAccount2 = v179;
  }

  if ([v184 count])
  {
    v91 = +[SSLogConfig sharedDaemonConfig];
    if (!v91)
    {
      v91 = +[SSLogConfig sharedConfig];
    }

    shouldLog7 = [v91 shouldLog];
    if ([v91 shouldLogToDisk])
    {
      v93 = shouldLog7 | 2;
    }

    else
    {
      v93 = shouldLog7;
    }

    oSLogObject7 = [v91 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      v95 = v93;
    }

    else
    {
      v95 = v93 & 2;
    }

    if (v95)
    {
      v96 = objc_opt_class();
      v97 = [v184 componentsJoinedByString:{@", "}];
      *v230 = 138543618;
      *&v230[4] = v96;
      *&v230[12] = 2114;
      *&v230[14] = v97;
      LODWORD(v172) = 22;
      v98 = _os_log_send_and_compose_impl(v95, 0, 0, 0, &_mh_execute_header, oSLogObject7, 0, "%{public}@: Cancel invalid restore items: [%{public}@]", v230, v172);
      if (v98)
      {
        v99 = v98;
        [NSString stringWithCString:v98 encoding:4];
        free(v99);
        SSFileLog();
      }
    }

    v169 = objc_opt_class();
    v175 = [v184 componentsJoinedByString:{@", "}];
    SSDebugLog();
    v100 = objc_alloc_init(RestoreDownloadItemsResponse);
    [(RestoreDownloadItemsResponse *)v100 setRequestItems:v184, v169, v175];
    [(RestoreDownloadItemsResponse *)v100 setServerResponseWithError:SSError()];
    [v70 addObject:v100];

    activeAccount2 = v179;
  }

  if ([v70 count])
  {
    v217[0] = _NSConcreteStackBlock;
    v217[1] = 3221225472;
    v217[2] = sub_10014FF3C;
    v217[3] = &unk_100327F38;
    v217[4] = self;
    v217[5] = v70;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  }

  if ([v193 count])
  {
    if ((v180 & 1) == 0 && ![(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"])
    {
      [(RestoreDownloadsOperation *)self _establishPrimaryAccount];
    }

    v101 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    allKeys = [v193 allKeys];
    *v230 = _NSConcreteStackBlock;
    *&v230[8] = 3221225472;
    *&v230[16] = sub_100153BF4;
    v231 = &unk_100329EE0;
    v232 = v101;
    v233 = v193;
    v103 = [allKeys sortedArrayUsingComparator:v230];
    v191 = objc_alloc_init(NSMutableArray);
    v104 = objc_alloc_init(NSCountedSet);
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    obja = v103;
    v105 = [v103 countByEnumeratingWithState:&v213 objects:v228 count:16];
    if (v105)
    {
      v106 = v105;
      v195 = *v214;
      v199 = 1;
      do
      {
        for (i = 0; i != v106; i = i + 1)
        {
          if (*v214 != v195)
          {
            objc_enumerationMutation(obja);
          }

          v108 = *(*(&v213 + 1) + 8 * i);
          v109 = [v15 containsObject:v108];
          v220 = 0;
          v110 = [(RestoreDownloadsOperation *)self _preflightAccountWithID:v108 isFamily:v109 error:&v220];
          v111 = +[SSAccountStore defaultStore];
          if (v109)
          {
            activeAccount3 = [v111 activeAccount];
          }

          else
          {
            activeAccount3 = [v111 accountWithUniqueIdentifier:v108];
          }

          v113 = activeAccount3;
          v114 = [v193 objectForKey:v108];
          v115 = [[RestoreDownloadItemsOperation alloc] initWithDownloadItems:v114 account:v113];
          if (v110)
          {
            v211 = 0u;
            v212 = 0u;
            v209 = 0u;
            v210 = 0u;
            v116 = [v114 countByEnumeratingWithState:&v209 objects:v227 count:16];
            v15 = v192;
            if (v116)
            {
              v117 = v116;
              v118 = *v210;
              do
              {
                for (j = 0; j != v117; j = j + 1)
                {
                  if (*v210 != v118)
                  {
                    objc_enumerationMutation(v114);
                  }

                  [v104 addObject:{objc_msgSend(*(*(&v209 + 1) + 8 * j), "downloadKind")}];
                }

                v117 = [v114 countByEnumeratingWithState:&v209 objects:v227 count:16];
              }

              while (v117);
            }

            [v191 addObject:v115];
          }

          else
          {
            v120 = +[SSLogConfig sharedDaemonConfig];
            if (!v120)
            {
              v120 = +[SSLogConfig sharedConfig];
            }

            shouldLog8 = [v120 shouldLog];
            if ([v120 shouldLogToDisk])
            {
              v122 = shouldLog8 | 2;
            }

            else
            {
              v122 = shouldLog8;
            }

            oSLogObject8 = [v120 OSLogObject];
            if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
            {
              v124 = v122;
            }

            else
            {
              v124 = v122 & 2;
            }

            if (v124)
            {
              v125 = objc_opt_class();
              v126 = [v114 componentsJoinedByString:{@", "}];
              *v230 = 138543874;
              *&v230[4] = v125;
              *&v230[12] = 2114;
              *&v230[14] = v126;
              *&v230[22] = 2114;
              v231 = v220;
              LODWORD(v172) = 32;
              v127 = _os_log_send_and_compose_impl(v124, 0, 0, 0, &_mh_execute_header, oSLogObject8, 0, "%{public}@: Failing restore items: [%{public}@] after account preflight failure: %{public}@", v230, v172);
              if (v127)
              {
                v128 = v127;
                [NSString stringWithCString:v127 encoding:4];
                free(v128);
                SSFileLog();
              }
            }

            self = selfCopy;
            v129 = objc_opt_class();
            v130 = [v114 componentsJoinedByString:{@", "}];
            v177 = v220;
            v170 = v129;
            v176 = v130;
            SSDebugLog();
            v131 = objc_alloc_init(RestoreDownloadItemsResponse);
            [(RestoreDownloadItemsResponse *)v131 setRequestItems:v114, v170, v176, v108, v177];
            [(RestoreDownloadItemsResponse *)v131 setServerResponseWithError:v220];
            [(RestoreDownloadsOperation *)selfCopy restoreDownloadItemsOperation:v115 didReceiveResponse:v131];

            v199 = 0;
            v15 = v192;
          }
        }

        v106 = [obja countByEnumeratingWithState:&v213 objects:v228 count:16];
      }

      while (v106);
    }

    else
    {
      v199 = 1;
    }

    v133 = +[SSLogConfig sharedDaemonConfig];
    if (!v133)
    {
      v133 = +[SSLogConfig sharedConfig];
    }

    shouldLog9 = [v133 shouldLog];
    if ([v133 shouldLogToDisk])
    {
      v135 = shouldLog9 | 2;
    }

    else
    {
      v135 = shouldLog9;
    }

    oSLogObject9 = [v133 OSLogObject];
    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
    {
      v137 = v135;
    }

    else
    {
      v137 = v135 & 2;
    }

    activeAccount2 = v179;
    if (v137)
    {
      v138 = objc_opt_class();
      v139 = [v191 count];
      *v230 = 138543618;
      *&v230[4] = v138;
      *&v230[12] = 2048;
      *&v230[14] = v139;
      LODWORD(v172) = 22;
      v140 = _os_log_send_and_compose_impl(v137, 0, 0, 0, &_mh_execute_header, oSLogObject9, 0, "%{public}@: Attempting restore for %lu accounts", v230, v172);
      if (v140)
      {
        v141 = v140;
        v142 = [NSString stringWithCString:v140 encoding:4];
        free(v141);
        v167 = v142;
        SSFileLog();
      }
    }

    shouldSuppressTermsAndConditionsDialogs = [objc_opt_class() shouldSuppressTermsAndConditionsDialogs];
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    objb = [v191 countByEnumeratingWithState:&v205 objects:v226 count:16];
    if (objb)
    {
      v144 = shouldSuppressTermsAndConditionsDialogs ^ 1;
      v186 = *v206;
      v132 = v199;
      do
      {
        for (k = 0; k != objb; k = k + 1)
        {
          if (*v206 != v186)
          {
            objc_enumerationMutation(v191);
          }

          v200 = v132;
          v146 = *(*(&v205 + 1) + 8 * k);
          v196 = objc_alloc_init(NSAutoreleasePool);
          [v146 setDelegate:self];
          [v146 setShouldShowTermsAndConditionsDialog:v144 & 1];
          v147 = [(RestoreDownloadsOperation *)self runSubOperation:v146 returningError:0];
          responses = [v146 responses];
          v201 = 0u;
          v202 = 0u;
          v203 = 0u;
          v204 = 0u;
          v149 = [responses countByEnumeratingWithState:&v201 objects:v225 count:16];
          if (v149)
          {
            v150 = v149;
            v151 = *v202;
            do
            {
              for (m = 0; m != v150; m = m + 1)
              {
                if (*v202 != v151)
                {
                  objc_enumerationMutation(responses);
                }

                [objc_msgSend(*(*(&v201 + 1) + 8 * m) serverResponse];
                v144 &= ISErrorIsEqual() ^ 1;
              }

              v150 = [responses countByEnumeratingWithState:&v201 objects:v225 count:16];
            }

            while (v150);
          }

          v132 = v200 & v147;
          [v146 setDelegate:{0, v167}];
          [v196 drain];
          self = selfCopy;
        }

        objb = [v191 countByEnumeratingWithState:&v205 objects:v226 count:16];
      }

      while (objb);
      LOBYTE(shouldSuppressTermsAndConditionsDialogs) = v144 ^ 1;
      v15 = v192;
      activeAccount2 = v179;
    }

    else
    {
      LOBYTE(v132) = v199;
    }

    [objc_opt_class() setShouldSuppressTermsAndConditionsDialogs:shouldSuppressTermsAndConditionsDialogs & 1];
  }

  else
  {
    LOBYTE(v132) = 1;
  }

  if ([v183 count])
  {
    v153 = +[SSLogConfig sharedDaemonConfig];
    if (!v153)
    {
      v153 = +[SSLogConfig sharedConfig];
    }

    shouldLog10 = [v153 shouldLog];
    if ([v153 shouldLogToDisk])
    {
      v155 = shouldLog10 | 2;
    }

    else
    {
      v155 = shouldLog10;
    }

    oSLogObject10 = [v153 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      v157 = v155;
    }

    else
    {
      v157 = v155 & 2;
    }

    if (v157)
    {
      v158 = objc_opt_class();
      v159 = [v183 componentsJoinedByString:{@", "}];
      *v230 = 138543618;
      *&v230[4] = v158;
      *&v230[12] = 2114;
      *&v230[14] = v159;
      LODWORD(v172) = 22;
      v160 = _os_log_send_and_compose_impl(v157, 0, 0, 0, &_mh_execute_header, oSLogObject10, 0, "%{public}@: Attempting restore of podcast items: [%{public}@]", v230, v172);
      if (v160)
      {
        v161 = v160;
        v162 = [NSString stringWithCString:v160 encoding:4];
        free(v161);
        v171 = v162;
        SSFileLog();
      }
    }

    v163 = [[RestorePodcastItemsOperation alloc] initWithDownloadItems:v183];
    [(RestorePodcastItemsOperation *)v163 setDelegate:self];
    LOBYTE(v132) = v132 & [(RestoreDownloadsOperation *)self runSubOperation:v163 returningError:0];
    [(RestorePodcastItemsOperation *)v163 setDelegate:0];
  }

  if (self->_hadAutoRetrySoftFailure)
  {
    [(RestoreDownloadsOperation *)self _scheduleAutomaticRetry];
  }

  if (self->_hadCancelFailure && ![(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"])
  {
    [(RestoreDownloadsOperation *)self _scheduleCancelRetry];
  }

  [(RestoreDownloadsOperation *)self setSuccess:v132 & 1, v171];
}

- (void)restoreDownloadItemsOperation:(id)operation didReceiveResponse:(id)response
{
  v5 = [[NSArray alloc] initWithObjects:{response, 0}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015000C;
  v6[3] = &unk_100327F38;
  v6[4] = self;
  v6[5] = v5;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
}

- (void)restorePodcastItemsOperation:(id)operation didReceiveResponse:(id)response
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001500BC;
  v4[3] = &unk_100327F38;
  v4[4] = response;
  v4[5] = self;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
}

- (id)_accountIDForAccountName:(id)name error:(id *)error
{
  v55 = 0;
  v56 = 0;
  [(RestoreDownloadsOperation *)self lock];
  if (!self->_accountIDsByAppleID)
  {
    v7 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    self->_accountIDsByAppleID = objc_alloc_init(NSMutableDictionary);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v52;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v52 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v51 + 1) + 8 * i);
          uniqueIdentifier = [v12 uniqueIdentifier];
          accountName = [v12 accountName];
          if (uniqueIdentifier)
          {
            v15 = accountName == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:uniqueIdentifier forKey:accountName];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v9);
    }
  }

  v16 = [(NSMutableDictionary *)self->_accountIDsByAppleID objectForKey:name];
  [(RestoreDownloadsOperation *)self unlock];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v16;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = v16;
    }

    else if (!v16)
    {
      v17 = objc_alloc_init(SSMutableAuthenticationContext);
      [v17 setAccountName:name];
      [v17 setAccountNameEditable:1];
      [v17 setCanCreateNewAccount:0];
      [v17 setPersistsAcrossDeviceLock:1];
      [v17 setPromptStyle:1001];
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        LODWORD(v20) = shouldLog | 2;
      }

      else
      {
        LODWORD(v20) = shouldLog;
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v20;
      }

      else
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v22 = objc_opt_class();
        v57 = 138543618;
        v58 = v22;
        v59 = 2112;
        nameCopy3 = name;
        v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Attempting to resolve unknown Apple ID: %@", &v57, 22);
        if (v23)
        {
          v24 = v23;
          v25 = [NSString stringWithCString:v23 encoding:4];
          free(v24);
          v48 = v25;
          SSFileLog();
        }
      }

      if (-[RestoreDownloadsOperation copyAccountID:credentialSource:byAuthenticatingWithContext:returningError:](self, "copyAccountID:credentialSource:byAuthenticatingWithContext:returningError:", &v56, 0, v17, &v55, v48) && (v26 = +[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), v27 = [objc_msgSend(v26 accountWithUniqueIdentifier:{v56), "accountName"}], objc_msgSend(v27, "length")))
      {
        v28 = +[SSLogConfig sharedDaemonConfig];
        if (!v28)
        {
          v28 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v28 shouldLog];
        if ([v28 shouldLogToDisk])
        {
          LODWORD(v30) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v30) = shouldLog2;
        }

        oSLogObject2 = [v28 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v30;
        }

        else
        {
          v30 &= 2u;
        }

        if (v30)
        {
          v32 = objc_opt_class();
          v57 = 138544130;
          v58 = v32;
          v59 = 2114;
          nameCopy3 = name;
          v61 = 2114;
          v62 = v27;
          v63 = 2114;
          v64 = v56;
          LODWORD(v50) = 42;
          v33 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Resolved AppleID: %{public}@ to AppleID: %{public}@ and DSID: %{public}@", &v57, v50);
          if (v33)
          {
            v34 = v33;
            v35 = [NSString stringWithCString:v33 encoding:4];
            free(v34);
            v49 = v35;
            SSFileLog();
          }
        }

        [(NSMutableDictionary *)self->_accountIDsByAppleID setObject:v56 forKey:name, v49];
        accountIDsByAppleID = self->_accountIDsByAppleID;
        v37 = v56;
        nameCopy4 = v27;
      }

      else
      {
        v39 = +[SSLogConfig sharedDaemonConfig];
        if (!v39)
        {
          v39 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v39 shouldLog];
        if ([v39 shouldLogToDisk])
        {
          LODWORD(v41) = shouldLog3 | 2;
        }

        else
        {
          LODWORD(v41) = shouldLog3;
        }

        oSLogObject3 = [v39 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
          v57 = 138543874;
          v58 = v43;
          v59 = 2114;
          nameCopy3 = name;
          v61 = 2114;
          v62 = v55;
          LODWORD(v50) = 32;
          v44 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Could not resolve AppleID: %{public}@ error: %{public}@", &v57, v50);
          if (v44)
          {
            v45 = v44;
            v46 = [NSString stringWithCString:v44 encoding:4];
            free(v45);
            v49 = v46;
            SSFileLog();
          }
        }

        v37 = v55;
        if (!v55)
        {
          v37 = SSError();
          v55 = v37;
        }

        accountIDsByAppleID = self->_accountIDsByAppleID;
        nameCopy4 = name;
      }

      [(NSMutableDictionary *)accountIDsByAppleID setObject:v37 forKey:nameCopy4, v49];
    }
  }

  if (error)
  {
    *error = v55;
  }

  return v56;
}

- (void)_applyResponses:(id)responses withTransaction:(id)transaction
{
  transactionCopy = transaction;
  database = [transaction database];
  v86 = +[DownloadHandlerManager handlerManager];
  v77 = [(NSString *)self->_restoreReason isEqualToString:@"cancel-retry"];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = responses;
  v79 = [responses countByEnumeratingWithState:&v102 objects:v115 count:16];
  if (v79)
  {
    v78 = *v103;
    v81 = SSDownloadPhaseCanceled;
    v87 = transactionCopy;
    do
    {
      v7 = 0;
      do
      {
        if (*v103 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v7;
        v8 = *(*(&v102 + 1) + 8 * v7);
        v93 = objc_alloc_init(NSMutableDictionary);
        serverResponse = [v8 serverResponse];
        userIdentifier = [serverResponse userIdentifier];
        error = [serverResponse error];
        v89 = [(RestoreDownloadsOperation *)self _downloadRestoreStateForError:?];
        v82 = serverResponse;
        downloads = [serverResponse downloads];
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v11 = [downloads countByEnumeratingWithState:&v98 objects:v114 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v99;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v99 != v13)
              {
                objc_enumerationMutation(downloads);
              }

              v15 = *(*(&v98 + 1) + 8 * i);
              v16 = [[NSNumber alloc] initWithItemIdentifier:{objc_msgSend(v15, "itemIdentifier")}];
              [v93 setObject:v15 forKey:v16];
            }

            v12 = [downloads countByEnumeratingWithState:&v98 objects:v114 count:16];
          }

          while (v12);
        }

        requestItems = [v8 requestItems];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v88 = requestItems;
        v92 = [requestItems countByEnumeratingWithState:&v94 objects:v113 count:16];
        if (v92)
        {
          v91 = *v95;
          v18 = v77;
          if (v89 != 3)
          {
            v18 = 0;
          }

          v83 = v18;
          do
          {
            for (j = 0; j != v92; j = j + 1)
            {
              if (*v95 != v91)
              {
                objc_enumerationMutation(v88);
              }

              v20 = *(*(&v94 + 1) + 8 * j);
              v21 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v20 downloadIdentifier], database);
              storeItemID = [v20 storeItemID];
              v23 = [v93 objectForKey:storeItemID];
              if (v23)
              {
                v24 = v23;
                [v23 kind];
                if (SSDownloadKindIsSoftwareKind() && (v25 = [v24 requiredDeviceCapabilities]) != 0)
                {
                  v26 = [+[ISDevice sharedInstance](ISDevice checkCapabilities:"checkCapabilities:withMismatches:" withMismatches:v25, 0];
                }

                else
                {
                  v26 = 1;
                }

                [v24 kind];
                if (SSDownloadKindIsBookToShimKind())
                {
                  v27 = +[SSLogConfig sharedDaemonConfig];
                  if (!v27)
                  {
                    v27 = +[SSLogConfig sharedConfig];
                  }

                  shouldLog = [v27 shouldLog];
                  if ([v27 shouldLogToDisk])
                  {
                    v29 = shouldLog | 2;
                  }

                  else
                  {
                    v29 = shouldLog;
                  }

                  oSLogObject = [v27 OSLogObject];
                  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
                  {
                    v31 = v29;
                  }

                  else
                  {
                    v31 = v29 & 2;
                  }

                  if (v31)
                  {
                    v32 = objc_opt_class();
                    persistentID = [(DownloadEntity *)v21 persistentID];
                    v107 = 138543874;
                    v108 = v32;
                    v109 = 2048;
                    v110 = persistentID;
                    v111 = 2114;
                    v112 = storeItemID;
                    LODWORD(v75) = 32;
                    v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Forwarding download: %lld itemID: %{public}@ to bookassetd", &v107, v75);
                    if (v34)
                    {
                      v35 = v34;
                      v36 = [NSString stringWithCString:v34 encoding:4];
                      free(v35);
                      v72 = v36;
                      SSFileLog();
                    }
                  }

                  [v24 setRequestPersistentID:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v20, "downloadIdentifier", v72))}];
                  v106 = v24;
                  [BookAssetDaemonUtility sendRestoreDownloads:[NSArray arrayWithObjects:&v106 count:1] withReason:@"restoring books"];
                  transactionCopy = v87;
                }

                else if (v26)
                {
                  [(RestoreDownloadsOperation *)self _updateDownloadEntity:v21 withTransaction:transactionCopy storeDownload:v24 accountID:userIdentifier];
                  goto LABEL_99;
                }

                v45 = +[SSLogConfig sharedDaemonConfig];
                if (!v45)
                {
                  v45 = +[SSLogConfig sharedConfig];
                }

                shouldLog2 = [v45 shouldLog];
                if ([v45 shouldLogToDisk])
                {
                  v47 = shouldLog2 | 2;
                }

                else
                {
                  v47 = shouldLog2;
                }

                oSLogObject2 = [v45 OSLogObject];
                if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = v47;
                }

                else
                {
                  v49 = v47 & 2;
                }

                if (v49)
                {
                  v50 = objc_opt_class();
                  persistentID2 = [(DownloadEntity *)v21 persistentID];
                  v107 = 138543874;
                  v108 = v50;
                  v109 = 2048;
                  v110 = persistentID2;
                  v111 = 2112;
                  v112 = storeItemID;
                  LODWORD(v75) = 32;
                  v52 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Cancelling forwarded book download: %lld itemID: %@", &v107, v75);
                  if (v52)
                  {
                    v53 = v52;
                    v54 = [NSString stringWithCString:v52 encoding:4];
                    free(v53);
                    v72 = v54;
                    SSFileLog();
                  }
                }

                [transactionCopy unionChangeset:{-[DownloadEntity failWithError:](v21, "failWithError:", SSError())}];
              }

              else if (v89)
              {
                v37 = [(RestoreDownloadsOperation *)self _copyDownloadSessionPropertiesForItem:v20 download:v21];
                if ([v86 canOpenSessionWithProperties:v37])
                {
                  v38 = +[SSLogConfig sharedDaemonConfig];
                  if (!v38)
                  {
                    v38 = +[SSLogConfig sharedConfig];
                  }

                  shouldLog3 = [v38 shouldLog];
                  if ([v38 shouldLogToDisk])
                  {
                    shouldLog3 |= 2u;
                  }

                  oSLogObject3 = [v38 OSLogObject];
                  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
                  {
                    v41 = shouldLog3;
                  }

                  else
                  {
                    v41 = shouldLog3 & 2;
                  }

                  if (v41)
                  {
                    v42 = objc_opt_class();
                    v107 = 138543618;
                    v108 = v42;
                    v109 = 2114;
                    v110 = v20;
                    LODWORD(v75) = 22;
                    v43 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Restore failed for item: %{public}@", &v107, v75);
                    if (v43)
                    {
                      v44 = v43;
                      [NSString stringWithCString:v43 encoding:4];
                      free(v44);
                      SSFileLog();
                    }
                  }

                  v73 = objc_opt_class();
                  SSDebugLog();
                  [(DownloadEntity *)v21 setValue:[NSNumber forProperty:"numberWithInteger:" numberWithInteger:v89, v73, v20], @"download_state.restore_state"];
                }

                else if (v89 == 1)
                {
                  error2 = [v20 error];
                  if (storeItemID && !error2)
                  {
                    error2 = [v82 errorForItemIdentifier:storeItemID];
                  }

                  if (error2)
                  {
                    v64 = error2;
                  }

                  else
                  {
                    v64 = error;
                  }

                  [(RestoreDownloadsOperation *)self _hardFailRestoreItem:v20 download:v21 transaction:transactionCopy error:v64, v72];
                }

                else if (v83)
                {
                  v65 = +[SSLogConfig sharedDaemonConfig];
                  if (!v65)
                  {
                    v65 = +[SSLogConfig sharedConfig];
                  }

                  shouldLog4 = [v65 shouldLog];
                  if ([v65 shouldLogToDisk])
                  {
                    shouldLog4 |= 2u;
                  }

                  oSLogObject4 = [v65 OSLogObject];
                  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
                  {
                    v68 = shouldLog4;
                  }

                  else
                  {
                    v68 = shouldLog4 & 2;
                  }

                  if (v68)
                  {
                    v69 = objc_opt_class();
                    v107 = 138543618;
                    v108 = v69;
                    v109 = 2114;
                    v110 = v20;
                    LODWORD(v75) = 22;
                    v70 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Restore cancel retry failed for item: %{public}@", &v107, v75);
                    if (v70)
                    {
                      v71 = v70;
                      [NSString stringWithCString:v70 encoding:4];
                      free(v71);
                      SSFileLog();
                    }
                  }

                  v74 = objc_opt_class();
                  SSDebugLog();
                  [transactionCopy finishDownloadWithID:-[DownloadEntity persistentID](v21 finalPhase:{"persistentID", v74, v20), v81}];
                }

                else
                {
                  [transactionCopy unionChangeset:{-[RestoreDownloadsOperation _softFailRestoreItem:download:withRestoreState:error:](self, "_softFailRestoreItem:download:withRestoreState:error:", v20, v21, v89, error)}];
                }
              }

              else
              {
                v55 = +[SSLogConfig sharedDaemonConfig];
                if (!v55)
                {
                  v55 = +[SSLogConfig sharedConfig];
                }

                shouldLog5 = [v55 shouldLog];
                if ([v55 shouldLogToDisk])
                {
                  v57 = shouldLog5 | 2;
                }

                else
                {
                  v57 = shouldLog5;
                }

                oSLogObject5 = [v55 OSLogObject];
                if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = v57;
                }

                else
                {
                  v59 = v57 & 2;
                }

                if (v59)
                {
                  v60 = objc_opt_class();
                  v107 = 138543618;
                  v108 = v60;
                  v109 = 2114;
                  v110 = v20;
                  LODWORD(v75) = 22;
                  v61 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: Restore transient failed item: %{public}@", &v107, v75);
                  if (v61)
                  {
                    v62 = v61;
                    [NSString stringWithCString:v61 encoding:4];
                    free(v62);
                    SSFileLog();
                  }
                }

                v72 = objc_opt_class();
                v75 = v20;
                SSDebugLog();
              }

LABEL_99:
            }

            v92 = [v88 countByEnumeratingWithState:&v94 objects:v113 count:16];
          }

          while (v92);
        }

        v7 = v80 + 1;
      }

      while ((v80 + 1) != v79);
      v79 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
    }

    while (v79);
  }
}

- (id)_copyDownloadSessionPropertiesForItem:(id)item download:(id)download
{
  downloadSessionProperties = [item downloadSessionProperties];
  if (!downloadSessionProperties)
  {
    v12[0] = @"client_id";
    v12[1] = @"handler_id";
    [download getValues:&v10 forProperties:v12 count:2];
    v6 = [DownloadSessionProperties alloc];
    v7 = v10;
    if (v11)
    {
      longLongValue = [v11 longLongValue];
    }

    else
    {
      longLongValue = 0;
    }

    downloadSessionProperties = [(DownloadSessionProperties *)v6 initWithClientIdentifier:v7 handlerIdentifier:longLongValue];
    [(DownloadSessionProperties *)downloadSessionProperties setDownloadPhase:SSDownloadPhaseDownloading];
  }

  return downloadSessionProperties;
}

- (int64_t)_downloadRestoreStateForError:(id)error
{
  if ([(RestoreDownloadsOperation *)self _isErrorCancelFailure:?])
  {
    return 3;
  }

  if ([(RestoreDownloadsOperation *)self _isErrorSoftFail:error])
  {
    return 2;
  }

  return !error || (SSErrorIsNetworkError() & 1) == 0;
}

- (void)_establishPrimaryAccount
{
  if (![+[SSAccountStore defaultStore](SSAccountStore "defaultStore")])
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Attempt to establish primary account", &v10, 12);
      if (v7)
      {
        v8 = v7;
        [NSString stringWithCString:v7 encoding:4];
        free(v8);
        SSFileLog();
      }
    }

    v9 = objc_alloc_init(SSMutableAuthenticationContext);
    [v9 setAccountNameEditable:1];
    [v9 setCanCreateNewAccount:0];
    [v9 setPersistsAcrossDeviceLock:1];
    [v9 setPromptStyle:1001];
    [(RestoreDownloadsOperation *)self copyAccountID:0 credentialSource:0 byAuthenticatingWithContext:v9 returningError:0];
  }
}

- (void)_hardFailRestoreItem:(id)item download:(id)download transaction:(id)transaction error:(id)error
{
  persistentID = [download persistentID];
  [download downloadKind];
  if (SSDownloadKindIsPodcastKind() && (v11 = [error domain], objc_msgSend(v11, "isEqualToString:", SSServerErrorDomain)) && objc_msgSend(error, "code") == 3701)
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v26 = 138543618;
      v27 = objc_opt_class();
      v28 = 2114;
      itemCopy3 = item;
      v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Podcast not found on server for item: %{public}@", &v26, 22);
      if (v16)
      {
        v17 = v16;
        [NSString stringWithCString:v16 encoding:4];
        free(v17);
        SSFileLog();
      }
    }

    v24 = objc_opt_class();
    itemCopy4 = item;
  }

  else
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog2;
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v26 = 138543874;
      v27 = objc_opt_class();
      v28 = 2114;
      itemCopy3 = item;
      v30 = 2114;
      errorCopy = error;
      v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Restore hard failed item: %{public}@ error: %{public}@", &v26, 32);
      if (v22)
      {
        v23 = v22;
        [NSString stringWithCString:v22 encoding:4];
        free(v23);
        SSFileLog();
      }
    }

    itemCopy4 = item;
    v24 = objc_opt_class();
  }

  SSDebugLog();
  [transaction finishDownloadWithID:persistentID finalPhase:{SSDownloadPhaseCanceled, v24, itemCopy4}];
}

- (BOOL)_isErrorCancelFailure:(id)failure
{
  if (ISErrorIsEqual())
  {
    return 1;
  }

  return ISErrorIsEqual();
}

- (BOOL)_isErrorSoftFail:(id)fail
{
  domain = [fail domain];
  if ([domain isEqualToString:SSServerErrorDomain] & 1) != 0 || (objc_msgSend(domain, "isEqualToString:", NSURLErrorDomain) & 1) != 0 || (objc_msgSend(domain, "isEqualToString:", kCFErrorDomainCFNetwork))
  {
LABEL_4:
    LOBYTE(v5) = 1;
    return v5;
  }

  if ([domain isEqualToString:SSErrorDomain])
  {
    code = [fail code];
    if ((code - 109) <= 0x17 && ((1 << (code - 109)) & 0x800003) != 0 || code == 16 || code == 2)
    {
      goto LABEL_4;
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [domain isEqualToString:NSCocoaErrorDomain];
    if (v5)
    {
      LOBYTE(v5) = ([fail code] & 0xFFFFFFFFFFFFFF00) == 3840;
    }
  }

  return v5;
}

- (id)_newDownloadWithStoreDownload:(id)download
{
  v3 = [[Download alloc] initWithStoreDownload:download];
  [(Download *)v3 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"is_from_store"];
  [(Download *)v3 setValue:&off_10034BEE0 forProperty:@"priority"];
  [(Download *)v3 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"suppress_error_dialogs"];
  v4 = objc_alloc_init(SSNetworkConstraints);
  [v4 disableCellularNetworkTypes];
  [(Download *)v3 unionNetworkConstraints:v4];

  return v3;
}

- (id)_newRestoreItemsWithDownloadIDs:(id)ds
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[DownloadsDatabase downloadsDatabase];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100152318;
  v29[3] = &unk_100327EE8;
  v29[4] = ds;
  v29[5] = v4;
  [v6 readUsingTransactionBlock:v29];
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    v12 = [v5 count];
    *v31 = 138543618;
    *&v31[4] = v11;
    v32 = 2048;
    v33 = v12;
    v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Loading restore data size for %lu items", v31, 22);
    if (v13)
    {
      v14 = v13;
      v15 = [NSString stringWithCString:v13 encoding:4];
      free(v14);
      v23 = v15;
      SSFileLog();
    }
  }

  if ([v5 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v5);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          bundleID = [v20 bundleID];
          if (bundleID)
          {
            *v31 = 0;
            [v20 setHasRestoreData:{+[RestoreBackupOperation restoreDataExistsForApplicationWithBundleID:size:](RestoreBackupOperation, "restoreDataExistsForApplicationWithBundleID:size:", bundleID, v31)}];
            [v20 setRestoreDataSize:*v31];
          }
        }

        v17 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001528C4;
    v24[3] = &unk_100329E90;
    v24[4] = v5;
    [v6 modifyUsingTransactionBlock:v24];
  }

  return v4;
}

- (BOOL)_preflightAccountWithID:(id)d isFamily:(BOOL)family error:(id *)error
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = sub_100152F70;
  v41 = sub_100152F80;
  v42 = 0;
  v8 = +[SSAccountStore defaultStore];
  v9 = v8;
  if (family)
  {
    activeAccount = [v8 activeAccount];
  }

  else
  {
    activeAccount = [v8 accountWithUniqueIdentifier:d];
  }

  v11 = activeAccount;
  if ([objc_msgSend(activeAccount "accountName")])
  {
    if (([v9 isExpired] & 1) != 0 || (objc_msgSend(v11, "isAuthenticated") & 1) == 0)
    {
      v12 = [[SSMutableAuthenticationContext alloc] initWithAccount:v11];
      [v12 setAccountNameEditable:1];
      [v12 setAllowsSilentAuthentication:1];
      [v12 setCanCreateNewAccount:0];
      [v12 setPersistsAcrossDeviceLock:1];
      [v12 setPromptStyle:1001];
      v13 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v12];
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v15) = [v14 shouldLog];
      shouldLogToDisk = [v14 shouldLogToDisk];
      oSLogObject = [v14 OSLogObject];
      v18 = oSLogObject;
      if (shouldLogToDisk)
      {
        LODWORD(v15) = v15 | 2;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v15 = v15;
      }

      else
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v19 = objc_opt_class();
        v47 = 138543618;
        v48 = v19;
        v49 = 2114;
        dCopy = v11;
        v20 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v18, 2, "%{public}@: Preflight account: %{public}@", &v47, 22);
        if (v20)
        {
          v21 = v20;
          [NSString stringWithCString:v20 encoding:4];
          free(v21);
          SSFileLog();
        }
      }

      v22 = dispatch_semaphore_create(0);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100152F8C;
      v36[3] = &unk_100329EB8;
      v36[6] = &v37;
      v36[4] = v22;
      v36[5] = &v43;
      [v13 startWithAuthenticateResponseBlock:v36];
      dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v22);
    }
  }

  else
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v24) = [v23 shouldLog];
    shouldLogToDisk2 = [v23 shouldLogToDisk];
    oSLogObject2 = [v23 OSLogObject];
    v27 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      LODWORD(v24) = v24 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v28 = objc_opt_class();
      v47 = 138543618;
      v48 = v28;
      v49 = 2114;
      dCopy = d;
      v29 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v27, 1, "%{public}@: Cannot restore without an AppleID for account: %{public}@", &v47, 22);
      if (v29)
      {
        v30 = v29;
        [NSString stringWithCString:v29 encoding:4];
        free(v30);
        SSFileLog();
      }
    }

    v31 = SSError();
    v38[5] = v31;
    *(v44 + 24) = 0;
  }

  v32 = v38[5];
  if (error)
  {
    *error = v32;
  }

  v33 = v32;
  v34 = *(v44 + 24);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
  return v34;
}

- (void)_scheduleAutomaticRetry
{
  v2 = kSSUserDefaultsIdentifier;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"RestoreSoftFailRetryCount", kSSUserDefaultsIdentifier, 0);
  if (AppIntegerValue <= 4)
  {
    v4 = AppIntegerValue;
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = v4 + 1;
      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = v4 + 1;
      v18 = 2048;
      v19 = 0x40AC200000000000;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Schedule restore soft-fail retry #%ld in %.0f seconds", &v14, 32);
      if (v10)
      {
        v11 = v10;
        [NSString stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog();
      }
    }

    else
    {
      v9 = v4 + 1;
    }

    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, XPC_ACTIVITY_DELAY, 3600);
    xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    v13 = [[BackgroundTaskRequest alloc] initWithBackgroundTaskAgentJob:v12];
    [(BackgroundTaskRequest *)v13 setRequestIdentifier:@"com.apple.itunesstored.RetrySoftFailedRestoreDownloads"];
    [+[Daemon daemon](Daemon "daemon")];

    CFPreferencesSetAppValue(@"RestoreSoftFailRetryCount", [NSNumber numberWithInteger:v9], v2);
    CFPreferencesAppSynchronize(v2);
    xpc_release(v12);
  }
}

- (void)_scheduleCancelRetry
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = 0x40F5180000000000;
    v6 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Schedule restore cancel retry in %.0f seconds", &v10, 22);
    if (v6)
    {
      v7 = v6;
      [NSString stringWithCString:v6 encoding:4];
      free(v7);
      SSFileLog();
    }
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_DELAY, 3600);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v9 = [[BackgroundTaskRequest alloc] initWithBackgroundTaskAgentJob:v8];
  [(BackgroundTaskRequest *)v9 setRequestIdentifier:@"com.apple.itunesstored.RetryCanceledRestoreDownloads"];
  [+[Daemon daemon](Daemon "daemon")];

  xpc_release(v8);
}

- (BOOL)_shouldAuthenticateForCancelRetry
{
  v3 = [ISDialog alloc];
  v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"RESTORE_CANCEL_RETRY_TITLE", &stru_10033CC30, 0];
  v5 = [v3 initWithTitle:v4 message:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"RESTORE_CANCEL_RETRY_BODY", &stru_10033CC30, 0)}];
  v6 = [ISDialogButton buttonWithTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"RESTORE_CANCEL_RETRY_DELETE_BUTTON", &stru_10033CC30, 0]];
  v7 = [NSArray arrayWithObjects:v6, [ISDialogButton buttonWithTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"RESTORE_CANCEL_RETRY_DOWNLOAD_BUTTON", &stru_10033CC30, 0]], 0];
  [v5 setButtons:v7];
  v8 = 1;
  [v5 setDefaultButtonIndex:1];
  [v5 setDismissOnLock:0];
  [v5 setShouldDismissAfterUnlock:0];
  v9 = [ISDialogOperation operationWithDialog:v5];
  [(RestoreDownloadsOperation *)self runSubOperation:v9 returningError:0];

  selectedButton = [(ISDialogOperation *)v9 selectedButton];
  if (selectedButton)
  {
    return selectedButton == [(NSArray *)v7 objectAtIndex:1];
  }

  return v8;
}

- (BOOL)_shouldAutomaticallyRetryAfterSoftFailError:(id)error
{
  domain = [error domain];
  if ([domain isEqualToString:NSURLErrorDomain])
  {
    LOBYTE(v5) = 1;
  }

  else if ([domain isEqualToString:SSServerErrorDomain])
  {
    LOBYTE(v5) = [error code] != 3038;
  }

  else if ([domain isEqualToString:SSErrorDomain])
  {
    code = [error code];
    v5 = 0x800003u >> (code - 109);
    if ((code - 109) > 0x17)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (id)_softFailRestoreItem:(id)item download:(id)download withRestoreState:(int64_t)state error:(id)error
{
  [download setValue:+[NSNumber numberWithInteger:](NSNumber forProperty:{"numberWithInteger:", state), @"download_state.restore_state"}];
  v11 = [download failWithError:error];
  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    LODWORD(v14) = shouldLog | 2;
  }

  else
  {
    LODWORD(v14) = shouldLog;
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v14;
  }

  else
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v22 = 138543874;
    v23 = objc_opt_class();
    v24 = 2114;
    itemCopy = item;
    v26 = 2114;
    errorCopy = error;
    v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Soft failed item: %{public}@ error: %{public}@", &v22, 32);
    if (v16)
    {
      v17 = v16;
      [NSString stringWithCString:v16 encoding:4];
      free(v17);
      SSFileLog();
    }
  }

  itemCopy2 = item;
  v20 = objc_opt_class();
  error = 1;
  SSDebugLog();
  if (!self->_hadAutoRetrySoftFailure)
  {
    error = [(RestoreDownloadsOperation *)self _shouldAutomaticallyRetryAfterSoftFailError:error, v20, itemCopy2, error];
  }

  self->_hadAutoRetrySoftFailure = error;
  self->_hadCancelFailure |= state == 3;
  return v11;
}

- (BOOL)_updateDownloadEntity:(id)entity withTransaction:(id)transaction storeDownload:(id)download accountID:(id)d
{
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 2;
  }

  if (v14)
  {
    v24 = 138544386;
    v25 = objc_opt_class();
    v26 = 2048;
    persistentID = [entity persistentID];
    v28 = 2048;
    itemIdentifier = [download itemIdentifier];
    v30 = 2114;
    artistName = [download artistName];
    v32 = 2114;
    title = [download title];
    v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Updating download %lld with restore metadata for item: [%llu, %{public}@, %{public}@]", &v24, 52);
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4];
      free(v16);
      v22 = v17;
      SSFileLog();
    }
  }

  v18 = [(RestoreDownloadsOperation *)self _newDownloadWithStoreDownload:download, v22];
  v19 = v18;
  if (d)
  {
    [v18 setValue:d forProperty:@"store_account_id"];
  }

  v20 = [transaction updateDownloadEntityWithIdentifier:objc_msgSend(entity withDownload:{"persistentID"), v19}];
  if (v20)
  {
    [download writeToFile:objc_msgSend(+[ScratchManager directoryPathForDownloadID:kind:createIfNeeded:](ScratchManager options:"directoryPathForDownloadID:kind:createIfNeeded:" error:{objc_msgSend(entity, "persistentID"), objc_msgSend(download, "kind"), 1), "stringByAppendingPathComponent:", @"iTunesMetadata.plist", 0, 0}];
  }

  return v20;
}

@end