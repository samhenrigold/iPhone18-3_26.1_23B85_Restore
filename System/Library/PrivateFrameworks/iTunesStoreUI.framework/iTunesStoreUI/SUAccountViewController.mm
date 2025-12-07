@interface SUAccountViewController
- (BOOL)shouldSignRequests;
- (SUAccountViewController)init;
- (SUAccountViewController)initWithExternalAccountURL:(id)l;
- (id)_URLByRemovingBlacklistedParametersWithURL:(id)l;
- (id)_authenticationQueryParametersForStyle:(int64_t)style;
- (id)_bagKeyForStyle:(int64_t)style;
- (id)navigationItem:(id)item willChangeLeftItem:(id)leftItem toNewItem:(id)newItem;
- (id)navigationItem:(id)item willChangeLeftItems:(id)items toNewItems:(id)newItems;
- (id)newFetchOperation;
- (id)newViewControllerForPage:(id)page ofType:(int64_t)type returningError:(id *)error;
- (void)_didEnterBackground:(id)background;
- (void)_forceOrientationBackToSupportedOrientation;
- (void)_logoutPressed:(id)pressed;
- (void)_mescalDidOpenWithSession:(id)session error:(id)error;
- (void)enqueueFetchOperation;
- (void)handleFailureWithError:(id)error;
- (void)setStyle:(int64_t)style;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUAccountViewController

- (SUAccountViewController)init
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SUAccountViewController;
  v2 = [(SUStorePageViewController *)&v14 init];
  if (v2)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
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
      v7 = objc_opt_class();
      v15 = 138543362;
      v16 = v7;
      v8 = v7;
      v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Account view controller created", &v15, 12);

      if (!v9)
      {
LABEL_12:

        uRLRequestProperties = [(SUStorePageViewController *)v2 URLRequestProperties];
        v11 = [uRLRequestProperties mutableCopy];

        v12 = [(SUAccountViewController *)v2 _bagKeyForStyle:v2->_style];
        [v11 setURLBagKey:v12];

        [(SUStorePageViewController *)v2 setURLRequestProperties:v11];
        return v2;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    goto LABEL_12;
  }

  return v2;
}

- (SUAccountViewController)initWithExternalAccountURL:(id)l
{
  v118 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v107.receiver = self;
  v107.super_class = SUAccountViewController;
  v4 = [(SUStorePageViewController *)&v107 init];
  if (v4)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    LODWORD(v6) = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v6) = v6 | 2;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      *v114 = 138543618;
      *&v114[4] = v8;
      *&v114[12] = 2112;
      *&v114[14] = lCopy;
      v9 = v8;
      v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Initializing with url: %@", v114, 22);

      if (!v10)
      {
        goto LABEL_11;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      v93 = oSLogObject;
      SSFileLog();
    }

LABEL_11:
    v101 = [lCopy copyQueryStringDictionaryWithUnescapedValues:1];
    v11 = [v101 objectForKey:@"url"];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
    }

    else
    {
      host = [lCopy host];
      v14 = [host length] == 0;

      if (v14)
      {
        goto LABEL_16;
      }

      v12 = lCopy;
    }

    accountURL = v4->_accountURL;
    v4->_accountURL = v12;

LABEL_16:
    v16 = [(SUAccountViewController *)v4 _URLByRemovingBlacklistedParametersWithURL:v4->_accountURL, v93];
    v17 = v4->_accountURL;
    v4->_accountURL = v16;

    v18 = [v101 objectForKey:@"continuation"];

    if (v18)
    {
      v99 = [MEMORY[0x1E695DFF8] copyDictionaryForQueryString:v18 unescapedValues:1];
    }

    else
    {
      v99 = 0;
    }

    v100 = [(NSURL *)v4->_accountURL copyQueryStringDictionaryWithUnescapedValues:0];
    *v114 = 0;
    *&v114[8] = v114;
    *&v114[16] = 0x3032000000;
    v115 = __Block_byref_object_copy__2;
    v116 = __Block_byref_object_dispose__2;
    v117 = 0;
    v19 = [v100 objectForKeyedSubscript:@"tidContinueToken"];

    if (!v19)
    {
      v43 = [v101 objectForKeyedSubscript:@"signatureResumption"];
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![v43 BOOLValue])
      {
LABEL_50:
        v51 = objc_alloc(MEMORY[0x1E69D4970]);
        schemeSwizzledURL = [(NSURL *)v4->_accountURL schemeSwizzledURL];
        v53 = [v51 initWithURL:schemeSwizzledURL];

        [v53 setRequestParameters:v99];
        if (*(*&v114[8] + 40))
        {
          hTTPHeaders = [v53 HTTPHeaders];
          v55 = [hTTPHeaders mutableCopy];

          if (!v55)
          {
            v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v55 addEntriesFromDictionary:{*(*&v114[8] + 40), v94}];
          [v53 setHTTPHeaders:v55];
        }

        [(SUStorePageViewController *)v4 setURLRequestProperties:v53, v94];
        v56 = [*(*&v114[8] + 40) copy];
        tidHeaders = v4->_tidHeaders;
        v4->_tidHeaders = v56;

        v98 = [v101 objectForKey:@"dsid"];

        if (v98)
        {
          v58 = SSAccountGetUniqueIdentifierFromValue();
          v59 = v58;
          if (v58)
          {
            if ([v58 unsignedLongLongValue])
            {
              authenticationContext = [(SUStorePageViewController *)v4 authenticationContext];
              mEMORY[0x1E69D4938]2 = [authenticationContext mutableCopy];

              if (mEMORY[0x1E69D4938]2)
              {
                [mEMORY[0x1E69D4938]2 setRequiredUniqueIdentifier:v59];
              }

              else
              {
                mEMORY[0x1E69D4938]2 = [objc_alloc(MEMORY[0x1E69D4968]) initWithAccountIdentifier:v59];
              }

              [(SUStorePageViewController *)v4 setAuthenticationContext:mEMORY[0x1E69D4938]2];
              v62 = 0;
              goto LABEL_73;
            }

            v62 = 0;
LABEL_61:
            mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
            LODWORD(v63) = [mEMORY[0x1E69D4938]2 shouldLog];
            shouldLogToDisk = [mEMORY[0x1E69D4938]2 shouldLogToDisk];
            oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
            v66 = oSLogObject2;
            if (shouldLogToDisk)
            {
              LODWORD(v63) = v63 | 2;
            }

            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
            {
              v63 = v63;
            }

            else
            {
              v63 &= 2u;
            }

            if (v63)
            {
              v67 = objc_opt_class();
              v108 = 138543362;
              v109 = v67;
              v68 = v67;
              LODWORD(v96) = 12;
              v69 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_1C21AF000, v66, 0, "%{public}@: Unable to locate account", &v108, v96);

              if (!v69)
              {
                goto LABEL_73;
              }

              v66 = [MEMORY[0x1E696AEC0] stringWithCString:v69 encoding:4];
              free(v69);
              v95 = v66;
              SSFileLog();
            }

LABEL_73:
            [(SUStorePageViewController *)v4 setExternalRequest:1];
            if (v4->_accountURL)
            {
              v70 = 0;
            }

            else
            {
              v70 = v62;
            }

            if (v70 == 1)
            {
              defaultStore = [MEMORY[0x1E69D4890] defaultStore];
              activeAccount = [defaultStore activeAccount];
              v73 = activeAccount == 0;

              if (v73)
              {
                v74 = 1;
              }

              else
              {
                v74 = 2;
              }
            }

            else
            {
              v74 = 2 * (v4->_accountURL == 0);
            }

            [(SUAccountViewController *)v4 setStyle:v74, v95];
            if (v4->_accountURL)
            {
              mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
              shouldLog = [mEMORY[0x1E69D4938]3 shouldLog];
              shouldLogToDisk2 = [mEMORY[0x1E69D4938]3 shouldLogToDisk];
              oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
              v79 = oSLogObject3;
              if (shouldLogToDisk2)
              {
                shouldLog |= 2u;
              }

              if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
              {
                v80 = shouldLog;
              }

              else
              {
                v80 = shouldLog & 2;
              }

              if (!v80)
              {
                goto LABEL_98;
              }

              v81 = objc_opt_class();
              v82 = v4->_accountURL;
              authenticationContext2 = [(SUStorePageViewController *)v4 authenticationContext];
              requiredUniqueIdentifier = [authenticationContext2 requiredUniqueIdentifier];
              v108 = 138543874;
              v109 = v81;
              v110 = 2112;
              v111 = v82;
              v112 = 2112;
              v113 = requiredUniqueIdentifier;
              LODWORD(v96) = 32;
              v85 = _os_log_send_and_compose_impl(v80, 0, 0, 0, &dword_1C21AF000, v79, 0, "%{public}@: Loading url: %@ account: %@", &v108, v96);

              if (v85)
              {
                v79 = [MEMORY[0x1E696AEC0] stringWithCString:v85 encoding:4];
                free(v85);
                SSFileLog();
LABEL_98:
              }
            }

            else
            {
              mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
              LODWORD(v86) = [mEMORY[0x1E69D4938]3 shouldLog];
              shouldLogToDisk3 = [mEMORY[0x1E69D4938]3 shouldLogToDisk];
              oSLogObject4 = [mEMORY[0x1E69D4938]3 OSLogObject];
              v79 = oSLogObject4;
              if (shouldLogToDisk3)
              {
                LODWORD(v86) = v86 | 2;
              }

              if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
              {
                v86 = v86;
              }

              else
              {
                v86 &= 2u;
              }

              if (!v86)
              {
                goto LABEL_98;
              }

              v89 = objc_opt_class();
              v108 = 138543362;
              v109 = v89;
              v90 = v89;
              LODWORD(v96) = 12;
              v91 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &dword_1C21AF000, v79, 16, "%{public}@: Loading a nil url", &v108, v96);

              if (v91)
              {
                v79 = [MEMORY[0x1E696AEC0] stringWithCString:v91 encoding:4];
                free(v91);
                SSFileLog();
                goto LABEL_98;
              }
            }

            _Block_object_dispose(v114, 8);
            goto LABEL_100;
          }
        }

        else
        {
          v59 = 0;
        }

        v62 = 1;
        goto LABEL_61;
      }

      resumptionHeaders = [MEMORY[0x1E698C940] resumptionHeaders];
      v45 = *(*&v114[8] + 40);
      *(*&v114[8] + 40) = resumptionHeaders;
LABEL_49:

      goto LABEL_50;
    }

    v20 = v19;
    mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
    LODWORD(v19) = [mEMORY[0x1E69D4938]4 shouldLog];
    shouldLogToDisk4 = [mEMORY[0x1E69D4938]4 shouldLogToDisk];
    oSLogObject5 = [mEMORY[0x1E69D4938]4 OSLogObject];
    v24 = oSLogObject5;
    if (shouldLogToDisk4)
    {
      LODWORD(v19) = v19 | 2;
    }

    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    v97 = v20;
    if (v19)
    {
      v25 = objc_opt_class();
      v108 = 138543618;
      v109 = v25;
      v110 = 2114;
      v111 = v20;
      v26 = v25;
      LODWORD(v96) = 22;
      v27 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1C21AF000, v24, 0, "%{public}@: Fetching biometric authentication context for token: %{public}@", &v108, v96);

      if (!v27)
      {
        goto LABEL_29;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:4];
      free(v27);
      v94 = v24;
      SSFileLog();
    }

LABEL_29:
    defaultStore2 = [MEMORY[0x1E69D4890] defaultStore];
    activeAccount2 = [defaultStore2 activeAccount];
    uniqueIdentifier = [activeAccount2 uniqueIdentifier];

    v31 = dispatch_semaphore_create(0);
    v32 = objc_alloc_init(MEMORY[0x1E69D48A8]);
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __54__SUAccountViewController_initWithExternalAccountURL___block_invoke;
    v103[3] = &unk_1E8164EB0;
    v104 = v4;
    v106 = v114;
    v33 = v31;
    v105 = v33;
    [v32 getAllCachedBiometricHTTPHeadersWithToken:v20 accountID:uniqueIdentifier evict:1 completionBlock:v103];
    v34 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v33, v34))
    {
      v46 = [*(*&v114[8] + 40) objectForKeyedSubscript:*MEMORY[0x1E69D4C80]];
      v47 = v46 == 0;

      if (!v47)
      {
        v48 = [*(*&v114[8] + 40) objectForKeyedSubscript:*MEMORY[0x1E69D4C88]];
        v49 = v48 == 0;

        if (v49)
        {
          v50 = @"FB";
        }

        else
        {
          v50 = @"PK";
        }

        [*(*&v114[8] + 40) setObject:v50 forKey:{*MEMORY[0x1E69D4C70], v94}];
      }

      goto LABEL_48;
    }

    mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
    LODWORD(v36) = [mEMORY[0x1E69D4938]5 shouldLog];
    shouldLogToDisk5 = [mEMORY[0x1E69D4938]5 shouldLogToDisk];
    oSLogObject6 = [mEMORY[0x1E69D4938]5 OSLogObject];
    v39 = oSLogObject6;
    if (shouldLogToDisk5)
    {
      LODWORD(v36) = v36 | 2;
    }

    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v36 = v36;
    }

    else
    {
      v36 &= 2u;
    }

    if (v36)
    {
      v40 = objc_opt_class();
      v108 = 138543618;
      v109 = v40;
      v110 = 2114;
      v111 = v97;
      v41 = v40;
      LODWORD(v96) = 22;
      v42 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_1C21AF000, v39, 16, "%{public}@: Timed out while fetching HTTP headers for token: %{public}@", &v108, v96);

      if (!v42)
      {
LABEL_39:

LABEL_48:
        v45 = v97;
        v43 = v97;
        goto LABEL_49;
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:4];
      free(v42);
      v94 = v39;
      SSFileLog();
    }

    goto LABEL_39;
  }

LABEL_100:

  return v4;
}

void __54__SUAccountViewController_initWithExternalAccountURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_14;
  }

  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = v8 | 2;
  }

  else
  {
    LODWORD(v9) = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v16 = 138543618;
  v17 = objc_opt_class();
  v18 = 2114;
  v19 = v6;
  v11 = v17;
  v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, v10, 16, "%{public}@: Failed to fetch biometric HTTP headers for error: %{public}@", &v16, 22);

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_11:
  }

LABEL_14:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setStyle:(int64_t)style
{
  v18 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
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
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2048;
    styleCopy = style;
    v9 = v15;
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Setting style %ld", &v14, 22);

    if (!v10)
    {
      goto LABEL_11;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
  }

LABEL_11:
  if (self->_style != style)
  {
    self->_style = style;
    uRLRequestProperties = [(SUStorePageViewController *)self URLRequestProperties];
    v12 = [uRLRequestProperties mutableCopy];

    v13 = [(SUAccountViewController *)self _bagKeyForStyle:self->_style];
    [v12 setURLBagKey:v13];

    [(SUStorePageViewController *)self setURLRequestProperties:v12];
    [(SUStorePageViewController *)self _setUseWebViewFastPath:[(SUAccountViewController *)self _shouldUseWebViewFastPath]];
  }
}

- (void)enqueueFetchOperation
{
  location[3] = *MEMORY[0x1E69E9840];
  mescalState = self->_mescalState;
  if (mescalState)
  {
    if (mescalState == 2)
    {
      v20.receiver = self;
      v20.super_class = SUAccountViewController;
      [(SUStorePageViewController *)&v20 enqueueFetchOperation];
    }
  }

  else
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v8 = *(location + 4);
      v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Opening mescal session", location, 12);

      if (v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
        free(v9);
        SSFileLog();
      }
    }

    else
    {
    }

    newFetchOperation = [(SUAccountViewController *)self newFetchOperation];
    v12 = [SUSetupMescalSessionOperation alloc];
    requestProperties = [newFetchOperation requestProperties];
    v14 = [(SUSetupMescalSessionOperation *)v12 initWithURLRequestProperties:requestProperties];

    objc_initWeak(location, v14);
    objc_initWeak(&from, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__SUAccountViewController_enqueueFetchOperation__block_invoke;
    v16[3] = &unk_1E8164ED8;
    objc_copyWeak(&v17, location);
    objc_copyWeak(&v18, &from);
    [(SUSetupMescalSessionOperation *)v14 setCompletionBlock:v16];
    self->_mescalState = 1;
    mainQueue = [MEMORY[0x1E69E4798] mainQueue];
    [mainQueue addOperation:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }
}

void __48__SUAccountViewController_enqueueFetchOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __48__SUAccountViewController_enqueueFetchOperation__block_invoke_2;
  v7 = &unk_1E8164948;
  objc_copyWeak(&v9, (a1 + 40));
  v3 = WeakRetained;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  [v3 setCompletionBlock:{0, v4, v5, v6, v7}];

  objc_destroyWeak(&v9);
}

void __48__SUAccountViewController_enqueueFetchOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) mescalSession];
  v3 = [*(a1 + 32) error];
  [WeakRetained _mescalDidOpenWithSession:v2 error:v3];
}

- (void)handleFailureWithError:(id)error
{
  errorCopy = error;
  v5 = ISWeakLinkedStringConstantForString();
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SUAccountViewController;
    [(SUStorePageViewController *)&v8 handleFailureWithError:errorCopy];
  }
}

- (id)newFetchOperation
{
  v14.receiver = self;
  v14.super_class = SUAccountViewController;
  newFetchOperation = [(SUStorePageViewController *)&v14 newFetchOperation];
  authenticationContext = [(SUStorePageViewController *)self authenticationContext];
  v5 = [authenticationContext mutableCopy];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69D4968]);
    defaultStore = [MEMORY[0x1E69D4890] defaultStore];
    activeAccount = [defaultStore activeAccount];
    v5 = [v6 initWithAccount:activeAccount];
  }

  [v5 setPromptStyle:1];
  v9 = [(SUAccountViewController *)self _authenticationQueryParametersForStyle:self->_style];
  [v5 setRequestParameters:v9];

  [v5 setShouldFollowAccountButtons:1];
  [newFetchOperation setAuthenticationContext:v5];
  requestProperties = [newFetchOperation requestProperties];
  v11 = [requestProperties mutableCopy];

  if (self->_style == 2)
  {
    [v5 accountScope];
    [v11 setURLBagType:SSURLBagTypeForAccountScope()];
  }

  primingSignature = self->_primingSignature;
  if (primingSignature)
  {
    [v11 setValue:primingSignature forHTTPHeaderField:@"X-Apple-ActionSignature"];
  }

  [newFetchOperation setRequestProperties:v11];

  return newFetchOperation;
}

- (id)newViewControllerForPage:(id)page ofType:(int64_t)type returningError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  if (!type)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![pageCopy didShowDialog])
    {
      goto LABEL_20;
    }

    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v29 = 138543362;
      v30 = objc_opt_class();
      v17 = v30;
      v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Received non-HTML account page with dialog in response", &v29, 12);

      if (!v18)
      {
LABEL_19:

        v10 = 0;
LABEL_31:
        v9 = 0;
        goto LABEL_32;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog();
    }

    goto LABEL_19;
  }

  if (type != 1)
  {
LABEL_20:
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
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
      v29 = 138543362;
      v30 = objc_opt_class();
      v23 = v30;
      v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%{public}@: Received non-HTML account page with no dialog in response", &v29, 12);

      if (!v24)
      {
LABEL_30:

        v10 = ISError();
        goto LABEL_31;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }

    goto LABEL_30;
  }

  v27.receiver = self;
  v27.super_class = SUAccountViewController;
  v28 = 0;
  v9 = [(SUStorePageViewController *)&v27 newViewControllerForPage:pageCopy ofType:1 returningError:&v28];
  v10 = v28;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    account = [(SUAccountViewController *)self account];
    [v9 setAccount:account];

    authenticationContext = [(SUStorePageViewController *)self authenticationContext];
    [v9 setAuthenticationContext:authenticationContext];

    [v9 _setMescalSession:self->_mescalSession];
    [v9 setStyle:1];
    if ([(SUAccountViewController *)self shouldSignRequests])
    {
      [v9 setShouldSignRequests:1];
    }

    [v9 setTidHeaders:self->_tidHeaders];
  }

LABEL_32:
  if (error)
  {
    v25 = v10;
    *error = v10;
  }

  return v9;
}

- (BOOL)shouldSignRequests
{
  if ([(SUAccountViewController *)self style]== 1)
  {
    return 1;
  }

  if ([(SUAccountViewController *)self style])
  {
    return 0;
  }

  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v5 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v6 = [mEMORY[0x1E69E47F8] URLBagForContext:v5];

  v7 = [(SUAccountViewController *)self _bagKeyForStyle:1];
  v8 = [v6 valueForKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    path = [v9 path];

    schemeSwizzledURL = [(NSURL *)self->_accountURL schemeSwizzledURL];
    path2 = [schemeSwizzledURL path];

    if ([path2 length])
    {
      v3 = [path2 isEqualToString:path];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SUAccountViewControllerDidDisappearNotification" object:self];

  v6.receiver = self;
  v6.super_class = SUAccountViewController;
  [(SUStorePageViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  [(SUAccountViewController *)self _forceOrientationBackToSupportedOrientation];
  if ([(SUAccountViewController *)self showAccountGlyph])
  {
    logoutButton = [(SUAccountViewController *)self logoutButton];

    if (!logoutButton)
    {
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v7 style:2 target:self action:sel__logoutPressed_];
      [(SUAccountViewController *)self setLogoutButton:v8];

      logoutButton2 = [(SUAccountViewController *)self logoutButton];
      [logoutButton2 setTag:424242];
    }

    navigationItem = [(SUViewController *)self navigationItem];
    [navigationItem setDelegate:self];

    navigationItem2 = [(SUViewController *)self navigationItem];
    logoutButton3 = [(SUAccountViewController *)self logoutButton];
    [navigationItem2 setLeftBarButtonItem:logoutButton3];
  }

  v13.receiver = self;
  v13.super_class = SUAccountViewController;
  [(SUStorePageViewController *)&v13 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v6.receiver = self;
  v6.super_class = SUAccountViewController;
  [(SUStorePageViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (id)navigationItem:(id)item willChangeLeftItem:(id)leftItem toNewItem:(id)newItem
{
  leftItemCopy = leftItem;
  if ([(SUAccountViewController *)self showAccountGlyph])
  {
    logoutButton = [(SUAccountViewController *)self logoutButton];

    logoutButton2 = 0;
    if (!newItem && logoutButton != leftItemCopy)
    {
      logoutButton2 = [(SUAccountViewController *)self logoutButton];
    }
  }

  else
  {
    logoutButton2 = 0;
  }

  return logoutButton2;
}

- (id)navigationItem:(id)item willChangeLeftItems:(id)items toNewItems:(id)newItems
{
  itemsCopy = items;
  newItemsCopy = newItems;
  if (![(SUAccountViewController *)self showAccountGlyph])
  {
    goto LABEL_5;
  }

  logoutButton = [(SUAccountViewController *)self logoutButton];
  if (([itemsCopy containsObject:logoutButton] & 1) == 0)
  {
    v11 = [newItemsCopy count];

    if (!v11)
    {
      v12 = MEMORY[0x1E695DEC8];
      logoutButton = [(SUAccountViewController *)self logoutButton];
      v10 = [v12 arrayWithObject:logoutButton];
      goto LABEL_7;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_7:

LABEL_8:

  return v10;
}

- (void)_logoutPressed:(id)pressed
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [currentDevice userInterfaceIdiom] == 1;

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:v5];
  v7 = MEMORY[0x1E69DC648];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_1F41B3660 table:0];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42__SUAccountViewController__logoutPressed___block_invoke;
  v26[3] = &unk_1E8164F00;
  v26[4] = self;
  v10 = v6;
  v27 = v10;
  v11 = [v7 actionWithTitle:v9 style:1 handler:v26];
  [v10 addAction:v11];

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  if (([(objc_class *)getAMSBiometricsClass() isAvailableForAccount:ams_activeiTunesAccount]& 1) == 0)
  {
    v14 = MEMORY[0x1E69DC648];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"PASSWORD_SETTINGS" value:&stru_1F41B3660 table:0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__SUAccountViewController__logoutPressed___block_invoke_89;
    v23[3] = &unk_1E8164F00;
    v24 = ams_activeiTunesAccount;
    selfCopy = self;
    v17 = [v14 actionWithTitle:v16 style:0 handler:v23];
    [v10 addAction:v17];
  }

  v18 = MEMORY[0x1E69DC648];
  v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SIGN_OUT_OF_STORE" value:&stru_1F41B3660 table:0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __42__SUAccountViewController__logoutPressed___block_invoke_2;
  v22[3] = &unk_1E8164F78;
  v22[4] = self;
  v21 = [v18 actionWithTitle:v20 style:2 handler:v22];
  [v10 addAction:v21];

  [(SUAccountViewController *)self presentViewController:v10 animated:1 completion:0];
}

uint64_t __42__SUAccountViewController__logoutPressed___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v9 = 138543362;
  v10 = objc_opt_class();
  v6 = v10;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1C21AF000, v5, 0, "%{public}@: Logout cancelled", &v9, 12);

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog();
LABEL_10:
  }

  return [*(a1 + 40) dismissAnimated:1];
}

void __42__SUAccountViewController__logoutPressed___block_invoke_89(uint64_t a1)
{
  v5 = [objc_alloc(getAMSUIPasswordSettingsViewControllerClass()) initWithAccount:*(a1 + 32)];
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    [v2 setModalPresentationStyle:3];
  }

  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

void __42__SUAccountViewController__logoutPressed___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  [v3 setActive:0];
  v4 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SUAccountViewController__logoutPressed___block_invoke_3;
  v5[3] = &unk_1E8164F50;
  v5[4] = *(a1 + 32);
  [v4 saveAccount:v3 withCompletionHandler:v5];
}

void __42__SUAccountViewController__logoutPressed___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SUAccountViewController__logoutPressed___block_invoke_4;
  block[3] = &unk_1E8164F28;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __42__SUAccountViewController__logoutPressed___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 1)
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = v4 | 2;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v9 = v7;
      v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1C21AF000, v6, 16, "%{public}@: Logout failed: %{public}@", &v11, 22);

      if (!v10)
      {
LABEL_15:

        return;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 32);

  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (id)_authenticationQueryParametersForStyle:(int64_t)style
{
  if (style == 2)
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"true", @"createSession", @"viewAccount", @"why", 0, v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_bagKeyForStyle:(int64_t)style
{
  v3 = @"signup";
  if (style != 1)
  {
    v3 = 0;
  }

  if (style == 2)
  {
    return @"modifyAccount";
  }

  else
  {
    return v3;
  }
}

- (void)_didEnterBackground:(id)background
{
  if (![(SUStorePageViewController *)self didPageViewLoad])
  {

    [(UIViewController *)self dismissAnimated:0];
  }
}

- (void)_forceOrientationBackToSupportedOrientation
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if (([mEMORY[0x1E69DC668] statusBarOrientation] - 3) <= 1 && (-[SUViewController supportedInterfaceOrientations](self, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    if (!-[SUAccountViewController isViewLoaded](self, "isViewLoaded") || (-[SUAccountViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], window = objc_claimAutoreleasedReturnValue(), v3, !window))
    {
      presentedViewController = [(SUAccountViewController *)self presentedViewController];
      view = [presentedViewController view];
      window = [view window];

      if (!window)
      {
        window = [MEMORY[0x1E69DD2E8] keyWindow];
      }
    }

    [window _setRotatableViewOrientation:1 duration:1 force:0.0];
  }
}

- (void)_mescalDidOpenWithSession:(id)session error:(id)error
{
  v38 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  errorCopy = error;
  primingSignature = self->_primingSignature;
  self->_primingSignature = 0;

  mescalSession = self->_mescalSession;
  self->_mescalSession = 0;

  v11 = __LatestAccountViewController;
  __LatestAccountViewController = 0;

  if (!errorCopy)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (!sessionCopy)
    {
      if (v20)
      {
        v34 = 138543362;
        v35 = objc_opt_class();
        v30 = v35;
        v31 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Mescal setup finished without a session", &v34, 12);

        if (v31)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:4];
          free(v31);
          SSFileLog();
        }

        sessionCopy = 0;
      }

      else
      {
      }

      goto LABEL_30;
    }

    if (v20)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v33 = sessionCopy;
      v22 = v35;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Finished setting up mescal session", &v34, 12);

      sessionCopy = v33;
      if (!v23)
      {
        goto LABEL_23;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

LABEL_23:
    objc_storeStrong(&self->_mescalSession, session);
    v24 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v25 = __LatestAccountViewController;
    __LatestAccountViewController = v24;

    v26 = self->_mescalSession;
    data = [MEMORY[0x1E695DEF0] data];
    mEMORY[0x1E69D4938] = [(SUMescalSession *)v26 primeForAccountCreationWithData:data error:0];

    if ([mEMORY[0x1E69D4938] length])
    {
      [mEMORY[0x1E69D4938] bytes];
      [mEMORY[0x1E69D4938] length];
      v28 = ISCopyEncodedBase64();
      v29 = self->_primingSignature;
      self->_primingSignature = v28;
    }

    goto LABEL_30;
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v14 = shouldLog2 | 2;
  }

  else
  {
    v14 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  v34 = 138543618;
  v35 = objc_opt_class();
  v36 = 2112;
  v37 = errorCopy;
  v17 = v35;
  v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%{public}@: Mescal open failed with error: %@", &v34, 22);

  if (v18)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
    free(v18);
    SSFileLog();
LABEL_11:
  }

LABEL_30:

  self->_mescalState = 2;
  [(SUAccountViewController *)self enqueueFetchOperation];
}

- (id)_URLByRemovingBlacklistedParametersWithURL:(id)l
{
  if (l)
  {
    v3 = MEMORY[0x1E695DFD8];
    lCopy = l;
    v5 = [v3 setWithArray:&unk_1F41EAA60];
    v6 = [lCopy copyQueryStringDictionaryWithUnescapedValues:0];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __70__SUAccountViewController__URLByRemovingBlacklistedParametersWithURL___block_invoke;
    v22 = &unk_1E8164FA0;
    v8 = v5;
    v23 = v8;
    v9 = v7;
    v24 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:&v19];
    v10 = objc_alloc(MEMORY[0x1E696AD60]);
    absoluteString = [lCopy absoluteString];
    v12 = [v10 initWithString:absoluteString];

    query = [lCopy query];

    if (query)
    {
      v14 = [v12 rangeOfString:query options:4];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 deleteCharactersInRange:{v14, v15}];
      }
    }

    if (([v12 hasSuffix:@"?"] & 1) == 0)
    {
      [v12 appendString:@"?"];
    }

    v16 = [MEMORY[0x1E695DFF8] queryStringForDictionary:v9 escapedValues:0];
    if (v16)
    {
      [v12 appendString:v16];
    }

    v17 = [MEMORY[0x1E695DFF8] URLWithString:v12];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __70__SUAccountViewController__URLByRemovingBlacklistedParametersWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

@end