@interface ISMachineDataProvisioningOperation
- (BOOL)_finishProvisioningWithResponse:(id)response sessionID:(unsigned int)d error:(id *)error;
- (BOOL)allowsBootstrapCellularData;
- (BOOL)hidesServerDrivenDialogs;
- (ISMachineDataProvisioningOperation)initWithAccountIdentifier:(unint64_t)identifier provisioningData:(id)data;
- (NSString)userAgent;
- (id)_newFinishProvisioningOperationWithData:(id)data;
- (int64_t)protocolVersion;
- (void)run;
- (void)setAllowsBootstrapCellularData:(BOOL)data;
- (void)setHidesServerDrivenDialogs:(BOOL)dialogs;
- (void)setProtocolVersion:(int64_t)version;
- (void)setUserAgent:(id)agent;
@end

@implementation ISMachineDataProvisioningOperation

- (ISMachineDataProvisioningOperation)initWithAccountIdentifier:(unint64_t)identifier provisioningData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = ISMachineDataProvisioningOperation;
  v7 = [(ISOperation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_accountID = identifier;
    v9 = [dataCopy copy];
    inputData = v8->_inputData;
    v8->_inputData = v9;
  }

  return v8;
}

- (BOOL)allowsBootstrapCellularData
{
  [(ISOperation *)self lock];
  allowsBootstrapCellularData = self->_allowsBootstrapCellularData;
  [(ISOperation *)self unlock];
  return allowsBootstrapCellularData;
}

- (BOOL)hidesServerDrivenDialogs
{
  [(ISOperation *)self lock];
  hidesServerDrivenDialogs = self->_hidesServerDrivenDialogs;
  [(ISOperation *)self unlock];
  return hidesServerDrivenDialogs;
}

- (int64_t)protocolVersion
{
  [(ISOperation *)self lock];
  protocolVersion = self->_protocolVersion;
  [(ISOperation *)self unlock];
  return protocolVersion;
}

- (void)setAllowsBootstrapCellularData:(BOOL)data
{
  [(ISOperation *)self lock];
  self->_allowsBootstrapCellularData = data;

  [(ISOperation *)self unlock];
}

- (void)setHidesServerDrivenDialogs:(BOOL)dialogs
{
  [(ISOperation *)self lock];
  self->_hidesServerDrivenDialogs = dialogs;

  [(ISOperation *)self unlock];
}

- (void)setProtocolVersion:(int64_t)version
{
  [(ISOperation *)self lock];
  self->_protocolVersion = version;

  [(ISOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  agentCopy = agent;
  [(ISOperation *)self lock];
  if (self->_userAgent != agentCopy)
  {
    v4 = [(NSString *)agentCopy copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(ISOperation *)self unlock];
}

- (NSString)userAgent
{
  [(ISOperation *)self lock];
  v3 = self->_userAgent;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v70 = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = 0;
  accountID = self->_accountID;
  if ([(ISMachineDataProvisioningOperation *)self protocolVersion]== 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = accountID;
  }

  v5 = SSVAnisetteProvisioningStart();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (!v5)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = MEMORY[0x277CCACA8];
      v20 = v18;
      v21 = [v19 stringWithFormat:@"%llu", v4];
      v22 = SSHashIfNeeded();
      v62 = 138543874;
      v63 = v18;
      v64 = 2114;
      v65 = v22;
      v66 = 2048;
      v67 = v60;
      v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Started provisioning for account %{public}@ with session ID %lu.", &v62, 32);

      if (!v23)
      {
        goto LABEL_28;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      free(v23);
      v54 = oSLogObject;
      SSFileLog();
    }

LABEL_28:
    v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v61 length:HIDWORD(v60) freeWhenDone:0];
    v25 = [(ISMachineDataProvisioningOperation *)self _newFinishProvisioningOperationWithData:v24];
    v59 = 0;
    v26 = [(ISOperation *)self runSubOperation:v25 returningError:&v59];
    v27 = v59;
    v28 = v27;
    if (v26)
    {
      v56 = v24;
      dataProvider = [v25 dataProvider];
      output = [dataProvider output];
      v58 = v28;
      v31 = [(ISMachineDataProvisioningOperation *)self _finishProvisioningWithResponse:output sessionID:v60 error:&v58];
      v32 = v58;

      if (v31)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
        if (!mEMORY[0x277D69B38]3)
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
        if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
        {
          v35 = shouldLog2 | 2;
        }

        else
        {
          v35 = shouldLog2;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v35;
        }

        else
        {
          v37 = v35 & 2;
        }

        if (!v37)
        {
          v44 = 1;
          v24 = v56;
          goto LABEL_60;
        }

        v38 = objc_opt_class();
        v39 = MEMORY[0x277CCACA8];
        v40 = v38;
        v41 = [v39 stringWithFormat:@"%llu", v4];
        v42 = SSHashIfNeeded();
        v62 = 138543874;
        v63 = v38;
        v64 = 2114;
        v65 = v42;
        v66 = 2048;
        v67 = v60;
        LODWORD(v55) = 32;
        v43 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: Provisioning succeeded for account %{public}@ with session ID %lu.", &v62, v55);

        v44 = 1;
        if (!v43)
        {
          v24 = v56;
          goto LABEL_61;
        }

        v24 = v56;
        goto LABEL_56;
      }

      v24 = v56;
    }

    else
    {
      v32 = v27;
    }

    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v46 = shouldLog3 | 2;
    }

    else
    {
      v46 = shouldLog3;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 2;
    }

    if (!v47)
    {
      v44 = 0;
      goto LABEL_60;
    }

    v57 = v25;
    v48 = v24;
    v49 = objc_opt_class();
    v50 = MEMORY[0x277CCACA8];
    v51 = v49;
    v52 = [v50 stringWithFormat:@"%llu", v4];
    v53 = SSHashIfNeeded();
    v62 = 138544130;
    v63 = v49;
    v64 = 2114;
    v65 = v53;
    v66 = 2048;
    v67 = v60;
    v68 = 2114;
    v69 = v32;
    LODWORD(v55) = 42;
    v43 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Provisioning failed for account %{public}@ with session ID %lu. error = %{public}@", &v62, v55);

    v44 = 0;
    v24 = v48;
    if (!v43)
    {
      v25 = v57;
LABEL_61:

      goto LABEL_62;
    }

    v25 = v57;
LABEL_56:
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:4];
    free(v43);
    v54 = oSLogObject2;
    SSFileLog();
LABEL_60:

    goto LABEL_61;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog4;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v62 = 138543618;
    v63 = objc_opt_class();
    v64 = 2048;
    v65 = v5;
    v11 = v63;
    v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%{public}@: Provisioning start failed with error code %ld.", &v62, 22);

    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
      free(v12);
      v54 = v13;
      SSFileLog();
    }
  }

  else
  {
  }

  v32 = SSError();
  v44 = 0;
LABEL_62:
  if (v61)
  {
    MEMORY[0x277C8BA80](v61);
  }

  if (v60)
  {
    MEMORY[0x277C8BA60](v60);
  }

  [(ISOperation *)self setError:v32, v54];
  [(ISOperation *)self setSuccess:v44];
}

- (BOOL)_finishProvisioningWithResponse:(id)response sessionID:(unsigned int)d error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v8 = [responseCopy objectForKey:@"transportKey"];
  v9 = [responseCopy objectForKey:@"keybag"];
  v10 = [responseCopy objectForKey:@"settingInfo"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (!v23)
    {
      goto LABEL_39;
    }

    v46 = 138543618;
    v47 = objc_opt_class();
    v48 = 2114;
    dCopy = v10;
    v25 = v47;
    v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Invalid settingInfo value %{public}@.", &v46, 22);
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v28) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v28) = shouldLog2;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      goto LABEL_39;
    }

    v46 = 138543618;
    v47 = objc_opt_class();
    v48 = 2114;
    dCopy = v8;
    v25 = v47;
    v26 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Invalid transportKey value %{public}@.", &v46, 22);
LABEL_37:
    v29 = v26;

    if (!v29)
    {
LABEL_40:

      v30 = 0;
      goto LABEL_41;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
    free(v29);
    SSFileLog();
LABEL_39:

    goto LABEL_40;
  }

  if ([v9 length] && (SSVFairPlayImportKeybagData() & 1) == 0)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v35) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v35) = shouldLog3;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v35 = v35;
    }

    else
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v46 = 138543362;
      v47 = objc_opt_class();
      v37 = v47;
      v38 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Could not import keybag.", &v46, 12);

      if (!v38)
      {
LABEL_57:

        v30 = SSError();
LABEL_41:
        v13 = 0;
        if (!error)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:4];
      free(v38);
      SSFileLog();
    }

    goto LABEL_57;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v10 options:0];
  v44 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
  v45 = v11;
  v12 = SSVAnisetteProvisioningEnd();
  v13 = v12 == 0;
  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  mEMORY[0x277D69B38]4 = mEMORY[0x277D69B38]3;
  if (!v12)
  {
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
    if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      LODWORD(v40) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v40) = shouldLog4;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v40;
    }

    else
    {
      v40 &= 2u;
    }

    if (v40)
    {
      v46 = 138543618;
      v47 = objc_opt_class();
      v48 = 2048;
      dCopy = d;
      v42 = v47;
      v43 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: Finished machine provisioning for sessionID %lu.", &v46, 22);

      if (!v43)
      {
LABEL_70:

        v30 = 0;
        goto LABEL_73;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:4];
      free(v43);
      SSFileLog();
    }

    goto LABEL_70;
  }

  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v16) = [mEMORY[0x277D69B38]4 shouldLog];
  if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
  {
    LODWORD(v16) = v16 | 2;
  }

  oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v16 = v16;
  }

  else
  {
    v16 &= 2u;
  }

  if (v16)
  {
    v46 = 138543618;
    v47 = objc_opt_class();
    v48 = 2048;
    dCopy = v12;
    v18 = v47;
    v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject4, 16, "%{public}@: Machine provisioning failed with error code %ld.", &v46, 22);

    if (v19)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }
  }

  else
  {
  }

  v30 = SSError();
LABEL_73:

  if (!error)
  {
    goto LABEL_44;
  }

LABEL_42:
  if (!v13)
  {
    v31 = v30;
    *error = v30;
  }

LABEL_44:

  return v13;
}

- (id)_newFinishProvisioningOperationWithData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(ISStoreURLOperation);
  [(ISStoreURLOperation *)v5 setShouldSendXTokenHeader:1];
  [(ISStoreURLOperation *)v5 setUseUserSpecificURLBag:1];
  hidesServerDrivenDialogs = [(ISMachineDataProvisioningOperation *)self hidesServerDrivenDialogs];
  userAgent = [(ISMachineDataProvisioningOperation *)self userAgent];
  v8 = +[(ISDataProvider *)ISProtocolDataProvider];
  v9 = !hidesServerDrivenDialogs;
  [v8 setShouldProcessAuthenticationDialogs:!hidesServerDrivenDialogs];
  [v8 setShouldProcessDialogs:!hidesServerDrivenDialogs];
  [(ISURLOperation *)v5 setDataProvider:v8];
  v10 = objc_alloc(MEMORY[0x277D69BC8]);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_accountID];
  v12 = [v10 initWithAccountIdentifier:v11];

  if (!v9)
  {
    [v12 setPromptStyle:1000];
    [v12 setShouldSuppressDialogs:1];
  }

  [v12 setAllowsBootstrapCellularData:{-[ISMachineDataProvisioningOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  v13 = *MEMORY[0x277D6A130];
  [v12 setValue:userAgent forHTTPHeaderField:*MEMORY[0x277D6A130]];
  [(ISURLOperation *)v5 setAuthenticationContext:v12];
  v14 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v14 setAllowedRetryCount:0];
  [v14 setAllowsBootstrapCellularData:{-[ISMachineDataProvisioningOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  [v14 setHTTPMethod:@"POST"];
  [v14 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v14 setValue:userAgent forHTTPHeaderField:v13];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [dataCopy base64EncodedStringWithOptions:0];

  [v15 setObject:v16 forKey:@"clientData"];
  v17 = +[ISDevice sharedInstance];
  guid = [v17 guid];

  if (guid)
  {
    [v15 setObject:guid forKey:@"guid"];
  }

  protocolVersion = [(ISMachineDataProvisioningOperation *)self protocolVersion];
  if (protocolVersion == 1)
  {
    [v14 setURLBagKey:@"amd-finish-provisioning"];
  }

  else if (!protocolVersion)
  {
    v20 = SSVFairPlayCopyKeyBagSyncData();
    if (v20)
    {
      [v15 setObject:v20 forKey:@"kbsync"];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_accountID];
    [v15 setObject:v21 forKey:@"dsId"];

    [v14 setURLBagKey:@"md-finish-provisioning"];
  }

  v22 = [MEMORY[0x277CCAC58] dataWithPropertyList:v15 format:100 options:0 error:0];
  [v14 setHTTPBody:v22];

  [(ISURLOperation *)v5 setRequestProperties:v14];
  return v5;
}

@end