@interface ISMachineDataActionOperation
- (BOOL)_eraseProvisioning;
- (BOOL)_provisionWithRequest:(id)request error:(id *)error;
- (BOOL)_shouldRetryAfterError:(id)error;
- (BOOL)_syncMachineWithRequest:(id)request error:(id *)error;
- (BOOL)blocksPurchaseRequests;
- (BOOL)hidesServerDrivenDialogs;
- (ISMachineDataActionOperation)initWithMachineDataRequest:(id)request;
- (NSString)syncState;
- (NSString)userAgent;
- (id)resultBlock;
- (id)uniqueKey;
- (void)run;
- (void)setBlocksPurchaseRequests:(BOOL)requests;
- (void)setHidesServerDrivenDialogs:(BOOL)dialogs;
- (void)setResultBlock:(id)block;
- (void)setUserAgent:(id)agent;
@end

@implementation ISMachineDataActionOperation

- (ISMachineDataActionOperation)initWithMachineDataRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = ISMachineDataActionOperation;
  v6 = [(ISOperation *)&v8 init];
  if (v6)
  {
    *(v6 + 331) = [requestCopy waitsForPurchaseOperations];
    objc_storeStrong(v6 + 42, request);
  }

  return v6;
}

- (BOOL)blocksPurchaseRequests
{
  [(ISOperation *)self lock];
  v3 = *(&self->super._success + 1);
  [(ISOperation *)self unlock];
  return v3;
}

- (BOOL)hidesServerDrivenDialogs
{
  [(ISOperation *)self lock];
  v3 = *(&self->super._success + 2);
  [(ISOperation *)self unlock];
  return v3;
}

- (id)resultBlock
{
  [(ISOperation *)self lock];
  v3 = [(SSMachineDataRequest *)self->_request copy];
  [(ISOperation *)self unlock];
  v4 = MEMORY[0x277C8C270](v3);

  return v4;
}

- (void)setBlocksPurchaseRequests:(BOOL)requests
{
  [(ISOperation *)self lock];
  *(&self->super._success + 1) = requests;

  [(ISOperation *)self unlock];
}

- (void)setHidesServerDrivenDialogs:(BOOL)dialogs
{
  [(ISOperation *)self lock];
  *(&self->super._success + 2) = dialogs;

  [(ISOperation *)self unlock];
}

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(ISOperation *)self lock];
  if (self->_request != blockCopy)
  {
    v4 = [(SSMachineDataRequest *)blockCopy copy];
    request = self->_request;
    self->_request = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  agentCopy = agent;
  [(ISOperation *)self lock];
  if (self->_syncState != agentCopy)
  {
    v4 = [(NSString *)agentCopy copy];
    syncState = self->_syncState;
    self->_syncState = v4;
  }

  [(ISOperation *)self unlock];
}

- (NSString)syncState
{
  [(NSLock *)self->super._lock lock];
  v3 = self->_resultBlock;
  [(NSLock *)self->super._lock unlock];

  return v3;
}

- (NSString)userAgent
{
  [(ISOperation *)self lock];
  v3 = self->_syncState;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v34 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
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
    v8 = *&self->_blocksPurchaseRequests;
    v30 = 138543618;
    v31 = v7;
    v32 = 2114;
    v33 = v8;
    v9 = v7;
    v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Running for request %{public}@.", &v30, 22);

    if (!v10)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
    free(v10);
    v26 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  actionName = [*&self->_blocksPurchaseRequests actionName];
  if ([actionName isEqualToString:@"SP"])
  {
    v12 = *&self->_blocksPurchaseRequests;
    v29 = 0;
    _eraseProvisioning = [(ISMachineDataActionOperation *)self _provisionWithRequest:v12 error:&v29];
    v14 = v29;
LABEL_17:
    v16 = v14;
    goto LABEL_18;
  }

  if ([actionName isEqualToString:@"SM"])
  {
    v15 = *&self->_blocksPurchaseRequests;
    v28 = 0;
    _eraseProvisioning = [(ISMachineDataActionOperation *)self _syncMachineWithRequest:v15 error:&v28];
    v14 = v28;
    goto LABEL_17;
  }

  if ([actionName isEqualToString:@"RP"])
  {
    _eraseProvisioning = [(ISMachineDataActionOperation *)self _eraseProvisioning];
    v16 = 0;
    goto LABEL_18;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v21) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v21) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_34;
  }

  v23 = objc_opt_class();
  v30 = 138543618;
  v31 = v23;
  v32 = 2114;
  v33 = actionName;
  v24 = v23;
  LODWORD(v27) = 22;
  v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Unrecognized machine-data action %{public}@.", &v30, v27);

  if (v25)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:4];
    free(v25);
    v26 = oSLogObject2;
    SSFileLog();
LABEL_34:
  }

  v16 = SSError();
  _eraseProvisioning = 0;
LABEL_18:
  [(ISOperation *)self setError:v16, v26];
  [(ISOperation *)self setSuccess:_eraseProvisioning];
  resultBlock = [(ISMachineDataActionOperation *)self resultBlock];
  if (resultBlock)
  {
    syncState = [(ISMachineDataActionOperation *)self syncState];
    (resultBlock)[2](resultBlock, _eraseProvisioning, v16, syncState);

    [(ISMachineDataActionOperation *)self setResultBlock:0];
  }
}

- (id)uniqueKey
{
  if ([(ISMachineDataActionOperation *)self blocksPurchaseRequests])
  {
    return @"com.apple.itunesstored.PurchaseOperation";
  }

  else
  {
    return 0;
  }
}

- (BOOL)_eraseProvisioning
{
  v26 = *MEMORY[0x277D85DE8];
  if ([*&self->_blocksPurchaseRequests protocolVersion] == 1)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v22 = 138543362;
      v23 = objc_opt_class();
      v7 = v23;
      v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%{public}@: Erase anonymous provisioning.", &v22, 12);

      if (!v8)
      {
LABEL_14:
        unsignedLongLongValue = -1;
        goto LABEL_27;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog();
    }

    goto LABEL_14;
  }

  accountIdentifier = [*&self->_blocksPurchaseRequests accountIdentifier];
  unsignedLongLongValue = [accountIdentifier unsignedLongLongValue];

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CCACA8];
    v16 = v14;
    v17 = [v15 stringWithFormat:@"%llu", unsignedLongLongValue];
    v18 = SSHashIfNeeded();
    v22 = 138543618;
    v23 = v14;
    v24 = 2114;
    v25 = v18;
    v19 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: Erase provisioning for account %{public}@.", &v22, 22);

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

LABEL_27:

  return MEMORY[0x277C8BA50](unsignedLongLongValue) == 0;
}

- (BOOL)_provisionWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  accountIdentifier = [requestCopy accountIdentifier];
  unsignedLongLongValue = [accountIdentifier unsignedLongLongValue];

  actionData = [requestCopy actionData];
  hidesServerDrivenDialogs = [(ISMachineDataActionOperation *)self hidesServerDrivenDialogs];
  v10 = 0;
  v11 = 5;
  while (1)
  {
    v12 = [[ISMachineDataProvisioningOperation alloc] initWithAccountIdentifier:unsignedLongLongValue provisioningData:actionData];
    -[ISMachineDataProvisioningOperation setAllowsBootstrapCellularData:](v12, "setAllowsBootstrapCellularData:", [requestCopy allowsBootstrapCellularData]);
    [(ISMachineDataProvisioningOperation *)v12 setHidesServerDrivenDialogs:hidesServerDrivenDialogs];
    -[ISMachineDataProvisioningOperation setProtocolVersion:](v12, "setProtocolVersion:", [requestCopy protocolVersion]);
    userAgent = [(ISMachineDataActionOperation *)self userAgent];
    [(ISMachineDataProvisioningOperation *)v12 setUserAgent:userAgent];

    v19 = 0;
    v14 = [(ISOperation *)self runSubOperation:v12 returningError:&v19];
    v10 = v19;
    if (v14 || ![(ISMachineDataActionOperation *)self _shouldRetryAfterError:v10])
    {
      break;
    }

    if (!--v11)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  if (error)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = v10;
    *error = v10;
  }

  return v14;
}

- (BOOL)_shouldRetryAfterError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    v5 = 1;
  }

  else if ([domain isEqualToString:*MEMORY[0x277D6A110]])
  {
    v5 = [errorCopy code] == 109;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_syncMachineWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  accountIdentifier = [requestCopy accountIdentifier];
  unsignedLongLongValue = [accountIdentifier unsignedLongLongValue];

  actionData = [requestCopy actionData];
  hidesServerDrivenDialogs = [(ISMachineDataActionOperation *)self hidesServerDrivenDialogs];
  v10 = 0;
  v11 = 5;
  while (1)
  {
    v12 = [[ISMachineDataSyncOperation alloc] initWithAccountIdentifier:unsignedLongLongValue syncData:actionData];
    [(ISMachineDataSyncOperation *)v12 setHidesServerDrivenDialogs:hidesServerDrivenDialogs];
    -[ISMachineDataSyncOperation setProtocolVersion:](v12, "setProtocolVersion:", [requestCopy protocolVersion]);
    userAgent = [(ISMachineDataActionOperation *)self userAgent];
    [(ISMachineDataSyncOperation *)v12 setUserAgent:userAgent];

    v21 = 0;
    v14 = [(ISOperation *)self runSubOperation:v12 returningError:&v21];
    v10 = v21;
    if (v14)
    {
      break;
    }

    if (![(ISMachineDataActionOperation *)self _shouldRetryAfterError:v10])
    {
      goto LABEL_7;
    }

    if (!--v11)
    {
      goto LABEL_8;
    }
  }

  [(NSLock *)self->super._lock lock];
  syncState = [(ISMachineDataSyncOperation *)v12 syncState];
  resultBlock = self->_resultBlock;
  self->_resultBlock = syncState;

  [(NSLock *)self->super._lock unlock];
LABEL_7:

LABEL_8:
  if (error)
  {
    v17 = v14;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = v10;
    *error = v10;
  }

  return v14;
}

@end