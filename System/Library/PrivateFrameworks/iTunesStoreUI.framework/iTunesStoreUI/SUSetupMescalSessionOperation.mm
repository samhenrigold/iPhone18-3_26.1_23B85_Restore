@interface SUSetupMescalSessionOperation
- (BOOL)_isMescalEnabled;
- (SUMescalSession)mescalSession;
- (SUSetupMescalSessionOperation)initWithURLRequestProperties:(id)properties;
- (id)_setupSAPCertificate:(id *)certificate;
- (id)_setupSAPWithData:(id)data error:(id *)error;
- (void)dealloc;
- (void)run;
@end

@implementation SUSetupMescalSessionOperation

- (SUSetupMescalSessionOperation)initWithURLRequestProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = SUSetupMescalSessionOperation;
  v4 = [(SUSetupMescalSessionOperation *)&v6 init];
  if (v4)
  {
    v4->_requestProperties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSetupMescalSessionOperation;
  [(SUSetupMescalSessionOperation *)&v3 dealloc];
}

- (SUMescalSession)mescalSession
{
  [(SUSetupMescalSessionOperation *)self lock];
  v3 = self->_session;
  [(SUSetupMescalSessionOperation *)self unlock];
  return v3;
}

- (void)run
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  if ([(SUSetupMescalSessionOperation *)self _isMescalEnabled])
  {
    v3 = objc_alloc_init(SUMescalSession);
    v4 = [(SUSetupMescalSessionOperation *)self _setupSAPCertificate:&v26];
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = [(SUMescalSession *)v3 exchangeData:v4 error:&v26];
    if (v5)
    {
      [(SUMescalSession *)v3 exchangeData:[(SUSetupMescalSessionOperation *)self _setupSAPWithData:v5 error:&v26] error:&v26];
    }

    else
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
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
        v27 = 138412546;
        v28 = v20;
        v29 = 2112;
        v30 = v26;
        v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Could not exchange cert data: %@", &v27, 22);
        if (v21)
        {
          v22 = v21;
          v23 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
          free(v22);
          v24 = v23;
          SSFileLog();
        }
      }
    }

    if ([(SUMescalSession *)v3 isComplete])
    {
      [(SUSetupMescalSessionOperation *)self lock];

      self->_session = v3;
      [(SUSetupMescalSessionOperation *)self unlock];
      v6 = 1;
    }

    else
    {
LABEL_8:
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        LODWORD(v10) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v10) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v10;
      }

      else
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v27 = 138412546;
        v28 = v12;
        v29 = 2112;
        v30 = v26;
        LODWORD(v25) = 22;
        v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%@: Could not setup mescal session: %@", &v27, v25);
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
          free(v14);
          v24 = v15;
          SSFileLog();
        }
      }

      v6 = 0;
    }

    v7 = v26;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  [(SUSetupMescalSessionOperation *)self setError:v7, v24];
  [(SUSetupMescalSessionOperation *)self setSuccess:v6];
}

- (BOOL)_isMescalEnabled
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:{-[SSURLRequestProperties URLBagType](self->_requestProperties, "URLBagType")}];
  if (!self->_requestProperties)
  {
    return 1;
  }

  v4 = v3;
  if (![(SUSetupMescalSessionOperation *)self loadURLBagWithContext:v3 returningError:0])
  {
    return 0;
  }

  v5 = [objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  v6 = [(SSURLRequestProperties *)self->_requestProperties URL];
  if (!v6)
  {
    uRLBagURLBlock = [(SSURLRequestProperties *)self->_requestProperties URLBagURLBlock];
    if (uRLBagURLBlock)
    {
      v8 = (*(uRLBagURLBlock + 16))(uRLBagURLBlock, v4);
    }

    else
    {
      uRLBagKey = [(SSURLRequestProperties *)self->_requestProperties URLBagKey];
      if (!uRLBagKey)
      {
        return 0;
      }

      v8 = [v5 urlForKey:uRLBagKey];
    }

    v6 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  v10 = [v5 valueForKey:@"account-flow-url-patterns"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v10 options:1 error:0];
    if (v11)
    {
      v12 = v11;
      absoluteString = [v6 absoluteString];
      v14 = [v12 rangeOfFirstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          LODWORD(v24) = shouldLog | 2;
        }

        else
        {
          LODWORD(v24) = shouldLog;
        }

        oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          v24 = v24;
        }

        else
        {
          v24 &= 2u;
        }

        if (v24)
        {
          v27 = 138412546;
          v28 = objc_opt_class();
          v29 = 2112;
          v30 = v6;
          v19 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Mescal enabled for URL: %@", &v27, 22);
          v20 = 1;
          if (!v19)
          {
            return v20;
          }

          goto LABEL_20;
        }

        return 1;
      }
    }
  }

  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    LODWORD(v17) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v17) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    return 0;
  }

  v27 = 138412546;
  v28 = objc_opt_class();
  v29 = 2112;
  v30 = v6;
  v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%@: Mescal not enabled for URL: %@", &v27, 22);
  v20 = 0;
  if (v19)
  {
LABEL_20:
    v21 = v19;
    [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
    free(v21);
    SSFileLog();
  }

  return v20;
}

- (id)_setupSAPCertificate:(id *)certificate
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v5 setDataProvider:{objc_msgSend(MEMORY[0x1E69E47B8], "provider")}];
  v6 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v6 setAllowedRetryCount:0];
  [v6 setURLBagKey:@"sign-sap-setup-cert"];
  [v5 setRequestProperties:v6];

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v26 = 138412290;
    v27 = objc_opt_class();
    v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Performing SAP cert setup", &v26, 12);
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v12);
      v23 = v13;
      SSFileLog();
    }
  }

  if ([(SUSetupMescalSessionOperation *)self runSubOperation:v5 returningError:&v25, v23])
  {
    v14 = [objc_msgSend(objc_msgSend(v5 "dataProvider")];
    if (!v14)
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        LODWORD(v17) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v17) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        v26 = 138412290;
        v27 = v19;
        LODWORD(v24) = 12;
        v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%@: No SAP cert data in response", &v26, v24);
        if (v20)
        {
          v21 = v20;
          [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
          free(v21);
          SSFileLog();
        }
      }

      v14 = 0;
      v25 = SSError();
    }
  }

  else
  {
    v14 = 0;
  }

  if (certificate && !v14)
  {
    *certificate = v25;
  }

  return v14;
}

- (id)_setupSAPWithData:(id)data error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v7 setDataProvider:{objc_msgSend(MEMORY[0x1E69E47B8], "provider")}];
  v8 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v8 setAllowedRetryCount:0];
  [v8 setHTTPMethod:@"POST"];
  [v8 setURLBagKey:@"sign-sap-setup"];
  [v8 setValue:data forRequestParameter:@"sign-sap-setup-buffer"];
  [v7 setRequestProperties:v8];

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v28 = 138412290;
    v29 = objc_opt_class();
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Performing SAP setup", &v28, 12);
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v14);
      v25 = v15;
      SSFileLog();
    }
  }

  if ([(SUSetupMescalSessionOperation *)self runSubOperation:v7 returningError:&v27, v25])
  {
    v16 = [objc_msgSend(objc_msgSend(v7 "dataProvider")];
    if (!v16)
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        LODWORD(v19) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v19) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        v28 = 138412290;
        v29 = v21;
        LODWORD(v26) = 12;
        v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%@: No SAP setup data in response", &v28, v26);
        if (v22)
        {
          v23 = v22;
          [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
          free(v23);
          SSFileLog();
        }
      }

      v16 = 0;
      v27 = SSError();
    }
  }

  else
  {
    v16 = 0;
  }

  if (error && !v16)
  {
    *error = v27;
  }

  return v16;
}

@end