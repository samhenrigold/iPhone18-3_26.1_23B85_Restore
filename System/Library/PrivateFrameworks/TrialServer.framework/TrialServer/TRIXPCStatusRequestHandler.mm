@interface TRIXPCStatusRequestHandler
- (TRIXPCStatusRequestHandler)initWithPromise:(id)promise auditToken:(id *)token;
- (void)experimentHistoryRecordsWithLimit:(unint64_t)limit newerThanDate:(id)date deploymentEnvironment:(int)environment completion:(id)completion;
- (void)experimentRecordsWithDeploymentEnvironments:(id)environments completion:(id)completion;
- (void)rolloutAllocationStatusWithCompletion:(id)completion;
- (void)rolloutRecordsWithCompletion:(id)completion;
@end

@implementation TRIXPCStatusRequestHandler

- (TRIXPCStatusRequestHandler)initWithPromise:(id)promise auditToken:(id *)token
{
  promiseCopy = promise;
  if (!promiseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCStatusService.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  v14.receiver = self;
  v14.super_class = TRIXPCStatusRequestHandler;
  v9 = [(TRIXPCStatusRequestHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_promise, promise);
    v11 = *&token->var0[4];
    *v10->_auditToken.val = *token->var0;
    *&v10->_auditToken.val[4] = v11;
  }

  return v10;
}

- (void)experimentHistoryRecordsWithLimit:(unint64_t)limit newerThanDate:(id)date deploymentEnvironment:(int)environment completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke;
  v23[3] = &unk_279DE1038;
  v23[4] = self;
  environmentCopy = environment;
  v12 = MEMORY[0x2743948D0](v23);
  v12[2](v12, 0);
  promise = self->_promise;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_58;
  v17[3] = &unk_279DE10B0;
  v19 = v12;
  v20 = completionCopy;
  environmentCopy2 = environment;
  v17[4] = self;
  v18 = dateCopy;
  limitCopy = limit;
  v14 = dateCopy;
  v15 = completionCopy;
  v16 = v12;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v17];
}

void __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    if (a2)
    {
      v9 = "end";
    }

    else
    {
      v9 = "begin";
    }

    v10 = TRIDeploymentEnvironment_EnumDescriptor();
    v11 = [v10 textFormatNameForValue:*(a1 + 40)];
    v12[0] = 67110146;
    v12[1] = v5;
    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s experimentHistoryRecordsWithLimit:newerThanDate:deploymentEnvironment:completion: with env %@", v12, 0x30u);
  }
}

void __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_2;
  v61[3] = &unk_279DE0398;
  v62 = *(a1 + 48);
  v7 = MEMORY[0x2743948D0](v61);
  if (v5 && v6)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_63;
    v59[3] = &unk_279DE0548;
    v60 = *(a1 + 56);
    v8 = MEMORY[0x2743948D0](v59);
    v9 = *MEMORY[0x277D73A98];
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *buf = *(v10 + 16);
    *&buf[16] = v11;
    v12 = [MEMORY[0x277D736B0] objectForEntitlement:v9 withAuditToken:buf];
    if (!v12)
    {
      v32 = TRILogCategory_Server();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v39 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v39;
        *&buf[8] = 2114;
        *&buf[10] = v9;
        _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) is missing entitlement %{public}@.", buf, 0x12u);
      }

      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is missing entitlement %@.", v9];
      (v8)[2](v8, 3, v13);
      goto LABEL_37;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v40 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v40;
        *&buf[8] = 2114;
        *&buf[10] = v9;
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) has ill-typed value for entitlement %{public}@ (expected array).", buf, 0x12u);
      }

      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v9];
      (v8)[2](v8, 3, v13);
      goto LABEL_37;
    }

    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
    v15 = [v13 containsObject:v14];

    if ((v15 & 1) == 0)
    {
      v34 = TRILogCategory_Server();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v41 = *(*(a1 + 32) + 36);
        v53 = TRIDeploymentEnvironment_EnumDescriptor();
        v42 = [v53 textFormatNameForValue:*(a1 + 72)];
        *buf = 67109378;
        *&buf[4] = v41;
        *&buf[8] = 2114;
        *&buf[10] = v42;
        _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) is not entitled for access to %{public}@.", buf, 0x12u);
      }

      v35 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = TRIDeploymentEnvironment_EnumDescriptor();
      v36 = [v19 textFormatNameForValue:*(a1 + 72)];
      v37 = [v35 initWithFormat:@"The calling process is not entitled for access to %@.", v36];
      (v8)[2](v8, 3, v37);

      goto LABEL_35;
    }

    if (*(a1 + 40))
    {
      if (*(a1 + 64))
      {
        v49 = objc_opt_new();
        v51 = [v5 experimentHistoryDatabase];
        v46 = *(a1 + 40);
        contexta = objc_autoreleasePoolPush();
        v16 = objc_alloc(MEMORY[0x277CBEB98]);
        v17 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
        v18 = [v16 initWithObjects:{v17, 0}];

        objc_autoreleasePoolPop(contexta);
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_84;
        v56[3] = &unk_279DE1060;
        v19 = v49;
        v20 = *(a1 + 64);
        v57 = v19;
        v58 = v20;
        LOBYTE(v17) = [v51 enumerateRecordsNewerThanDate:v46 matchingDeploymentEnvironments:v18 block:v56];

        if ((v17 & 1) == 0)
        {
          (v8)[2](v8, 12, @"The database query failed.");
          goto LABEL_34;
        }

        v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v19, "count")}];
        v52 = objc_opt_new();
        if ([v50 intValue] >= 1)
        {
          v21 = [v19 lastObject];
          v22 = [v21 eventDate];

          v52 = v22;
        }

        if (!*(a1 + 72))
        {
          v23 = *MEMORY[0x277D73AA0];
          v24 = *(a1 + 32);
          v25 = *(v24 + 32);
          *buf = *(v24 + 16);
          *&buf[16] = v25;
          context = [MEMORY[0x277D736B0] objectForEntitlement:v23 withAuditToken:buf];
          if (context)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v43 = TRILogCategory_Server();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v45 = *(*(a1 + 32) + 36);
                *buf = 67109378;
                *&buf[4] = v45;
                *&buf[8] = 2112;
                *&buf[10] = v23;
                _os_log_error_impl(&dword_26F567000, v43, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) has ill-typed value for entitlement %@ (expected array).", buf, 0x12u);
              }

              v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v23];
              (v8)[2](v8, 3, v44);

              goto LABEL_18;
            }

            v26 = MEMORY[0x277CCAC30];
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_90;
            v54[3] = &unk_279DE1088;
            v55 = context;
            v27 = [v26 predicateWithBlock:v54];
            [v19 filterUsingPredicate:v27];
          }
        }

        v28 = *(a1 + 56);
        if (v28)
        {
          (*(v28 + 16))(v28, v50, v19, v52, 0);
        }

LABEL_18:

LABEL_34:
        v36 = v57;
LABEL_35:

        goto LABEL_36;
      }

      v38 = *(a1 + 56);
      if (v38)
      {
        v19 = objc_opt_new();
        (*(v38 + 16))(v38, &unk_287FC4738, MEMORY[0x277CBEBF8], v19, 0);
LABEL_36:
      }
    }

    else
    {
      (v8)[2](v8, 2, @"The 'date' parameter must be non-nil.");
    }

LABEL_37:

    v30 = v60;
    goto LABEL_38;
  }

  v29 = *(a1 + 56);
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = objc_opt_new();
  v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
  (*(v29 + 16))(v29, &unk_287FC4738, MEMORY[0x277CBEBF8], v30, v31);

LABEL_38:
LABEL_39:
  if (v7)
  {
    v7[2](v7);
  }
}

void __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_63(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    v10 = *(a1 + 32);
    v11 = objc_opt_new();
    (*(v10 + 16))(v10, &unk_287FC4738, 0, v11, v9);
  }
}

void *__111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_84(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result >= *(a1 + 40))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a2 namespaces];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v12 + 1) + 8 * v7) name];
        LOBYTE(v8) = [v8 containsObject:v9];

        if (v8)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)experimentRecordsWithDeploymentEnvironments:(id)environments completion:(id)completion
{
  environmentsCopy = environments;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke;
  v17[3] = &unk_279DE0460;
  v17[4] = self;
  v8 = MEMORY[0x2743948D0](v17);
  v8[2](v8, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_93;
  v13[3] = &unk_279DE0610;
  v15 = completionCopy;
  v16 = v8;
  v13[4] = self;
  v14 = environmentsCopy;
  v9 = environmentsCopy;
  v10 = v8;
  v11 = completionCopy;
  v12 = MEMORY[0x2743948D0](v13);
  [(TRIXPCServerContextPromise *)self->_promise addBlockToExecuteAfterPromiseFullfillment:v12];
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v11[0] = 67109890;
    v11[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = v9;
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s experimentRecordsWithDeploymentEnvironments:completion:", v11, 0x26u);
  }
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_2;
    v51[3] = &unk_279DE0398;
    v52 = *(a1 + 56);
    v43 = MEMORY[0x2743948D0](v51);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_3;
    v49[3] = &unk_279DE0548;
    v50 = *(a1 + 48);
    v8 = MEMORY[0x2743948D0](v49);
    v9 = *MEMORY[0x277D73A98];
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *buf = *(v10 + 16);
    *&buf[16] = v11;
    v12 = [MEMORY[0x277D736B0] objectForEntitlement:v9 withAuditToken:buf];
    v13 = *(a1 + 32);
    v14 = *(v13 + 32);
    *buf = *(v13 + 16);
    *&buf[16] = v14;
    v15 = [MEMORY[0x277D736B0] objectForEntitlement:@"com.apple.triald.internal" withAuditToken:buf];
    v16 = v15 == 0;

    if (v16)
    {
      if (!v12)
      {
        v31 = TRILogCategory_Server();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v38 = *(*(a1 + 32) + 36);
          *buf = 67109378;
          *&buf[4] = v38;
          *&buf[8] = 2114;
          *&buf[10] = v9;
          _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) is missing entitlement %{public}@.", buf, 0x12u);
        }

        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is missing entitlement %@.", v9];
        (v8)[2](v8, 3, v12);
        goto LABEL_33;
      }
    }

    else
    {

      v12 = &unk_287FC4F48;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v35 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v35;
        *&buf[8] = 2114;
        *&buf[10] = v9;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) has ill-typed value for entitlement %{public}@ (expected array).", buf, 0x12u);
      }

      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v9];
      (v8)[2](v8, 3, v19);
      goto LABEL_32;
    }

    v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
    v20 = *(a1 + 40);
    if (!v20)
    {
      (v8)[2](v8, 2, @"Parameter 'environments' must be non-nil.");
LABEL_32:

LABEL_33:
      v34 = v43;
      if (v43)
      {
        (*(v43 + 2))();
        v34 = v43;
      }

      goto LABEL_36;
    }

    if (([v20 isSubsetOfSet:v19] & 1) == 0)
    {
      v32 = TRILogCategory_Server();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 40);
        v40 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v40;
        *&buf[8] = 2114;
        *&buf[10] = v39;
        _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) is not entitled for access to deployment environments %{public}@.", buf, 0x12u);
      }

      v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is not entitled for access to deployment environments %@.", *(a1 + 40)];
      (v8)[2](v8, 3, v33);
      goto LABEL_31;
    }

    v21 = objc_opt_new();
    v22 = [v5 experimentDatabase];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_108;
    v46[3] = &unk_279DE08A8;
    v47 = *(a1 + 40);
    v42 = v21;
    v48 = v42;
    LOBYTE(v21) = [v22 enumerateExperimentRecordsWithBlock:v46];

    if (v21)
    {
      if ([*(a1 + 40) containsObject:&unk_287FC4750])
      {
        v23 = *MEMORY[0x277D73AA0];
        v24 = *(a1 + 32);
        v25 = *(v24 + 32);
        *buf = *(v24 + 16);
        *&buf[16] = v25;
        v26 = [MEMORY[0x277D736B0] objectForEntitlement:v23 withAuditToken:buf];
        if (v26)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v36 = TRILogCategory_Server();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v41 = *(*(a1 + 32) + 36);
              *buf = 67109378;
              *&buf[4] = v41;
              *&buf[8] = 2112;
              *&buf[10] = v23;
              _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) has ill-typed value for entitlement %@ (expected array).", buf, 0x12u);
            }

            v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v23];
            (v8)[2](v8, 3, v37);

            goto LABEL_30;
          }

          v27 = MEMORY[0x277CCAC30];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_111;
          v44[3] = &unk_279DE1088;
          v45 = v26;
          v28 = [v27 predicateWithBlock:v44];
          [v42 filterUsingPredicate:v28];
        }
      }

      v29 = *(a1 + 48);
      if (v29)
      {
        (*(v29 + 16))(v29, v42, 0);
      }
    }

    else
    {
      (v8)[2](v8, 12, @"The database query failed.");
    }

LABEL_30:

    v33 = v42;
LABEL_31:

    goto LABEL_32;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v17 + 16))(v17, MEMORY[0x277CBEBF8], v18);
  }

LABEL_36:
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v22 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "deploymentEnvironment")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x277D73798]);
    v7 = [v22 deploymentEnvironment];
    v20 = [v22 experimentDeployment];
    v19 = [v22 treatmentId];
    [v22 factorPackSetId];
    v8 = v21 = a1;
    v18 = [v22 type];
    v9 = [v22 status];
    v10 = [v22 startDate];
    v11 = [v22 endDate];
    v12 = [v22 namespaces];
    v13 = [v22 experimentType];
    v14 = [v22 counterfactualsTreatmentsToFactorPackSetIds];
    v15 = [v14 allKeys];
    LODWORD(v17) = v13;
    v16 = [v6 initWithDeploymentEnvironment:v7 experimentDeployment:v20 treatmentId:v19 factorPackSetId:v8 type:v18 status:v9 startDate:v10 endDate:v11 namespaces:v12 experimentType:v17 counterfactualTreatmentIds:v15];

    [*(v21 + 40) addObject:v16];
  }
}

uint64_t __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_111(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 deploymentEnvironment])
  {
    v4 = 1;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 namespaces];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(a1 + 32);
          v11 = [*(*(&v13 + 1) + 8 * v9) name];
          LOBYTE(v10) = [v10 containsObject:v11];

          if (v10)
          {
            v4 = 1;
            goto LABEL_13;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_13:
  }

  return v4;
}

- (void)rolloutRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke;
  v16[3] = &unk_279DE0460;
  v16[4] = self;
  v5 = MEMORY[0x2743948D0](v16);
  v5[2](v5, 0);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_112;
  v12 = &unk_279DE0638;
  v14 = completionCopy;
  v15 = v5;
  selfCopy = self;
  v6 = v5;
  v7 = completionCopy;
  v8 = MEMORY[0x2743948D0](&v9);
  [(TRIXPCServerContextPromise *)self->_promise addBlockToExecuteAfterPromiseFullfillment:v8, v9, v10, v11, v12, selfCopy];
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v11[0] = 67109890;
    v11[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = v9;
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s rolloutRecordsWithCompletion:", v11, 0x26u);
  }
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_2;
    v34[3] = &unk_279DE0398;
    v35 = *(a1 + 48);
    v8 = MEMORY[0x2743948D0](v34);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_3;
    v32[3] = &unk_279DE0548;
    v33 = *(a1 + 40);
    v9 = MEMORY[0x2743948D0](v32);
    v10 = *MEMORY[0x277D73A98];
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *buf = *(v11 + 16);
    *&buf[16] = v12;
    v13 = [MEMORY[0x277D736B0] objectForEntitlement:v10 withAuditToken:buf];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v13];
        if ([v14 containsObject:&unk_287FC4750])
        {
          v15 = objc_opt_new();
          v16 = [v5 rolloutDatabase];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_113;
          v30[3] = &unk_279DE0700;
          v17 = v15;
          v31 = v17;
          v18 = [v16 enumerateRecordsUsingTransaction:0 block:v30];

          if (v18)
          {
            v19 = *(a1 + 40);
            if (v19)
            {
              (*(v19 + 16))(v19, v17, 0);
            }
          }

          else
          {
            (v9)[2](v9, 12, @"The database query failed.");
          }

          v26 = v31;
        }

        else
        {
          v24 = TRIDeploymentEnvironment_EnumDescriptor();
          v17 = [v24 textFormatNameForValue:0];

          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v29 = *(*(a1 + 32) + 36);
            *buf = 67109378;
            *&buf[4] = v29;
            *&buf[8] = 2112;
            *&buf[10] = v17;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "rolloutRecordsWithCompletion: the calling process (pid %d) is not entitled for access to deployment environment %@.", buf, 0x12u);
          }

          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is not entitled for access to deployment environments %@.", v17];
          (v9)[2](v9, 3, v26);
        }
      }

      else
      {
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v28 = *(*(a1 + 32) + 36);
          *buf = 67109378;
          *&buf[4] = v28;
          *&buf[8] = 2114;
          *&buf[10] = v10;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "rolloutRecordsWithCompletion: the calling process (pid %d) has ill-typed value for entitlement %{public}@ (expected array).", buf, 0x12u);
        }

        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v10];
        (v9)[2](v9, 3, v14);
      }
    }

    else
    {
      v22 = TRILogCategory_Server();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v27 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v27;
        *&buf[8] = 2114;
        *&buf[10] = v10;
        _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "rolloutRecordsWithCompletion: the calling process (pid %d) is missing entitlement %{public}@.", buf, 0x12u);
      }

      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is missing entitlement %@.", v10];
      (v9)[2](v9, 3, v14);
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v20 + 16))(v20, 0, v21);
    }
  }
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_113(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D737A0] partialRecordWithFullRecord:a2];
  [*(a1 + 32) addObject:v3];
}

- (void)rolloutAllocationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TRIXPCStatusRequestHandler_rolloutAllocationStatusWithCompletion___block_invoke;
  v6[3] = &unk_279DE10D8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(TRIXPCStatusRequestHandler *)self rolloutRecordsWithCompletion:v6];
}

void __68__TRIXPCStatusRequestHandler_rolloutAllocationStatusWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v27 = a1;
    v6 = objc_alloc(MEMORY[0x277D73690]);
    v7 = [MEMORY[0x277D737E0] sharedPaths];
    v8 = [v6 initWithPaths:v7 factorsState:0];

    v30 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = v5;
    obj = v5;
    v32 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v32)
    {
      v31 = *v38;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v37 + 1) + 8 * i);
          v11 = [v10 activeFactorPackSetId];

          if (v11)
          {
            v12 = objc_opt_new();
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v13 = [v10 namespaces];
            v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v34;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v34 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v33 + 1) + 8 * j);
                  v19 = [v8 factorPackIdForRolloutWithNamespaceName:v18];
                  [v12 setObject:v19 forKeyedSubscript:v18];
                }

                v15 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v15);
            }

            v20 = objc_alloc(MEMORY[0x277D737C0]);
            v21 = [v10 deployment];
            v22 = [v21 rolloutId];
            v23 = [v10 deployment];
            v24 = [v23 deploymentId];
            v25 = [v10 rampId];
            v26 = [v20 initWithRolloutId:v22 deploymentId:v24 rampId:v25 factorPackIds:v12];
            [v30 addObject:v26];
          }
        }

        v32 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v32);
    }

    (*(*(v27 + 32) + 16))();
    v5 = v28;
  }
}

@end