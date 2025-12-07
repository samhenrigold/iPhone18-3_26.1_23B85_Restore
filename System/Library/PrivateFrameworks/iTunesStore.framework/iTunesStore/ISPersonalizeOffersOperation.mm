@interface ISPersonalizeOffersOperation
- (BOOL)_runWithURLDictionary:(id)dictionary error:(id *)error;
- (ISPersonalizeOffersOperation)initWithPersonalizeOffersRequest:(id)request;
- (ISPersonalizeOffersRequest)personalizeOffersReqeust;
- (SSPersonalizeOffersResponse)response;
- (id)_copyResponseForURL:(id)l requestString:(id)string error:(id *)error;
- (void)_addDictionaryToResponse:(id)response;
- (void)dealloc;
- (void)run;
@end

@implementation ISPersonalizeOffersOperation

- (ISPersonalizeOffersOperation)initWithPersonalizeOffersRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = ISPersonalizeOffersOperation;
  v4 = [(ISOperation *)&v6 init];
  if (v4)
  {
    v4->_request = [request copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISPersonalizeOffersOperation;
  [(ISPersonalizeOffersOperation *)&v3 dealloc];
}

- (ISPersonalizeOffersRequest)personalizeOffersReqeust
{
  v2 = [(ISPersonalizeOffersRequest *)self->_request copy];

  return v2;
}

- (SSPersonalizeOffersResponse)response
{
  [(ISOperation *)self lock];
  v3 = self->_response;
  [(ISOperation *)self unlock];
  return v3;
}

- (void)run
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if ([(ISPersonalizeOffersRequest *)self->_request accountIdentifier])
  {
    v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
    if ([(ISOperation *)self loadURLBagWithContext:v3 returningError:&v27])
    {
      v4 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(ISPersonalizeOffersOperation *)self _runWithURLDictionary:v4 error:&v27];
        goto LABEL_40;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v21) = shouldLog | 2;
      }

      else
      {
        LODWORD(v21) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (!v21)
      {
LABEL_39:
        v5 = 0;
        goto LABEL_40;
      }

      v23 = objc_opt_class();
      v28 = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = @"personalized-buy-buttons";
      v18 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Missing bag key: %@", &v28, 22);
    }

    else
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        LODWORD(v15) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v15) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v15 = v15;
      }

      else
      {
        v15 &= 2u;
      }

      if (!v15)
      {
        goto LABEL_39;
      }

      v17 = objc_opt_class();
      v28 = 138412546;
      v29 = v17;
      v30 = 2112;
      v31 = v27;
      v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%@: Could not load URL bag: %@", &v28, 22);
    }

    if (v18)
    {
      v24 = v18;
      v25 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
      free(v24);
      v26 = v25;
      SSFileLog();
    }

    goto LABEL_39;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v28 = 138412290;
    v29 = objc_opt_class();
    v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%@: No account ID, can't personalize offers", &v28, 12);
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
      free(v11);
      v26 = v12;
      SSFileLog();
    }
  }

  v5 = 0;
  v27 = SSError();
LABEL_40:
  [(ISOperation *)self setError:v27, v26];
  [(ISOperation *)self setSuccess:v5];
}

- (void)_addDictionaryToResponse:(id)response
{
  v32 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  if (!self->_response)
  {
    self->_response = objc_alloc_init(MEMORY[0x277D69BF0]);
  }

  v5 = [response objectForKey:@"owns-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v5 objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SSPersonalizeOffersResponse *)self->_response setActionParameters:v11 forItemIdentifier:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [response countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(response);
        }

        v16 = *(*(&v22 + 1) + 8 * j);
        v17 = [response objectForKey:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v16 rangeOfString:@"action-display-name-" options:8])
            {
              if (![v16 rangeOfString:@"button-text-" options:8])
              {
                v20 = [v16 substringFromIndex:v19];
                if ([v20 length])
                {
                  [(SSPersonalizeOffersResponse *)self->_response setPriceDisplayString:v17 forItemType:v20];
                }
              }
            }

            else
            {
              v21 = [v16 substringFromIndex:v18];
              if ([v21 length])
              {
                [(SSPersonalizeOffersResponse *)self->_response setActionDisplayNameString:v17 forItemType:v21];
              }
            }
          }
        }
      }

      v13 = [response countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  [(ISOperation *)self unlock];
}

- (id)_copyResponseForURL:(id)l requestString:(id)string error:(id *)error
{
  v15 = 0;
  v9 = objc_alloc_init(ISStoreURLOperation);
  v10 = objc_alloc_init(ISJSONDataProvider);
  [(ISURLOperation *)v9 setDataProvider:v10];
  v11 = [objc_alloc(MEMORY[0x277D69A58]) initWithAccountIdentifier:{-[ISPersonalizeOffersRequest accountIdentifier](self->_request, "accountIdentifier")}];
  [(ISURLOperation *)v9 setAuthenticationContext:v11];

  v12 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:l];
  [v12 setHTTPBody:{objc_msgSend(string, "dataUsingEncoding:", 4)}];
  [v12 setHTTPMethod:@"POST"];
  [(ISURLOperation *)v9 setRequestProperties:v12];

  [(ISOperation *)self runSubOperation:v9 returningError:&v15];
  output = [(ISDataProvider *)v10 output];

  if (error)
  {
    *error = v15;
  }

  return output;
}

- (BOOL)_runWithURLDictionary:(id)dictionary error:(id *)error
{
  v92 = *MEMORY[0x277D85DE8];
  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  allItemTypes = [(ISPersonalizeOffersRequest *)self->_request allItemTypes];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = allItemTypes;
  v6 = [(NSArray *)allItemTypes countByEnumeratingWithState:&v82 objects:v91 count:16];
  v7 = 0x277CCA000uLL;
  if (v6)
  {
    v8 = v6;
    v9 = *v83;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v83 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v82 + 1) + 8 * i);
        v12 = [dictionary objectForKey:{v11, v64}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
        {
          v13 = [v70 objectForKey:v12];
          if (!v13)
          {
            v13 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"ids="];
            [v70 setObject:v13 forKey:v12];
          }

          v14 = [(ISPersonalizeOffersRequest *)selfCopy->_request itemIdentifiersForItemType:v11];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v79;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v79 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v78 + 1) + 8 * j);
                if ([v13 length] >= 5)
                {
                  [v13 appendString:{@", "}];
                }

                [v13 appendString:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v78 objects:v87 count:16];
            }

            while (v16);
          }

          v7 = 0x277CCA000;
        }

        else
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!mEMORY[0x277D69B38])
          {
            mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
          }

          shouldLog = [mEMORY[0x277D69B38] shouldLog];
          if ([mEMORY[0x277D69B38] shouldLogToDisk])
          {
            v22 = shouldLog | 2;
          }

          else
          {
            v22 = shouldLog;
          }

          oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v22;
          }

          else
          {
            v24 = v22 & 2;
          }

          if (v24)
          {
            v25 = objc_opt_class();
            *v88 = 138412546;
            *&v88[4] = v25;
            v89 = 2112;
            v90 = v11;
            LODWORD(v67) = 22;
            v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: No URL for item type: %@", v88, v67);
            if (v26)
            {
              v27 = v26;
              v28 = [*(v7 + 3240) stringWithCString:v26 encoding:4];
              free(v27);
              v64 = v28;
              SSFileLog();
            }
          }
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v8);
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v31 = shouldLog2 | 2;
  }

  else
  {
    v31 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v33 = v31;
  }

  else
  {
    v33 = v31 & 2;
  }

  v34 = v70;
  v35 = selfCopy;
  if (v33)
  {
    v36 = objc_opt_class();
    v37 = [v70 count];
    *v88 = 138412546;
    *&v88[4] = v36;
    v89 = 2048;
    v90 = v37;
    LODWORD(v67) = 22;
    v38 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%@: Issuing %lu requests", v88, v67);
    if (v38)
    {
      v39 = v38;
      v40 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:4];
      free(v39);
      v65 = v40;
      SSFileLog();
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v41 = [v70 countByEnumeratingWithState:&v74 objects:v86 count:{16, v65}];
  if (v41)
  {
    v42 = v41;
    v43 = 0;
    v72 = 0;
    v44 = *v75;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v75 != v44)
        {
          objc_enumerationMutation(v34);
        }

        v46 = *(*(&v74 + 1) + 8 * k);
        v47 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v46];
        if (v47)
        {
          v48 = v47;
          *v88 = 0;
          v49 = -[ISPersonalizeOffersOperation _copyResponseForURL:requestString:error:](v35, "_copyResponseForURL:requestString:error:", v47, [v34 objectForKey:v46], v88);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISPersonalizeOffersOperation *)v35 _addDictionaryToResponse:v49];
          }

          else
          {
            ++v43;
            v59 = v72;
            if (!v72)
            {
              v59 = *v88;
            }

            v72 = v59;
          }
        }

        else
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!mEMORY[0x277D69B38]3)
          {
            mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
          }

          shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
          if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
          {
            v52 = shouldLog3 | 2;
          }

          else
          {
            v52 = shouldLog3;
          }

          oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v52;
          }

          else
          {
            v54 = v52 & 2;
          }

          if (v54)
          {
            v55 = objc_opt_class();
            *v88 = 138412546;
            *&v88[4] = v55;
            v89 = 2112;
            v90 = v46;
            LODWORD(v67) = 22;
            v56 = _os_log_send_and_compose_impl(v54, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%@: Invalid URL: %@", v88, v67);
            if (v56)
            {
              v57 = v56;
              v58 = [MEMORY[0x277CCACA8] stringWithCString:v56 encoding:4];
              free(v57);
              v66 = v58;
              SSFileLog();
            }
          }

          ++v43;
          v34 = v70;
          v35 = selfCopy;
        }
      }

      v42 = [v34 countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v42);
    if (v43)
    {
      v60 = v43 < [v34 count];
    }

    else
    {
      v60 = 1;
    }

    errorCopy2 = error;
    v61 = v72;
  }

  else
  {
    v61 = 0;
    v60 = 1;
    errorCopy2 = error;
  }

  if (errorCopy2)
  {
    *errorCopy2 = v61;
  }

  return v60;
}

@end