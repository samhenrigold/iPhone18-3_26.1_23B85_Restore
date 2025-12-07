@interface LAPSCurrentPasscodeService
- (BOOL)canChangePasscodeWithError:(id *)error;
- (BOOL)hasPasscode;
- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence;
- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence options:(id)options;
- (id)passcodeType;
- (int64_t)backoffTimeout;
- (int64_t)failedPasscodeAttempts;
- (void)_reportPasscodeChangedTo:(id)to;
- (void)changePasscode:(id)passcode to:(id)to enableRecovery:(BOOL)recovery completion:(id)completion;
- (void)verifyPasscode:(id)passcode completion:(id)completion;
@end

@implementation LAPSCurrentPasscodeService

- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v5 = objc_alloc_init(LAPSCurrentPasscodeServiceOptions);
  v6 = [(LAPSCurrentPasscodeService *)self initWithPersistence:persistenceCopy options:v5];

  return v6;
}

- (LAPSCurrentPasscodeService)initWithPersistence:(id)persistence options:(id)options
{
  persistenceCopy = persistence;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = LAPSCurrentPasscodeService;
  v9 = [(LAPSCurrentPasscodeService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistence, persistence);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

- (BOOL)hasPasscode
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  hasPasscode = [persistence hasPasscode];

  return hasPasscode;
}

- (int64_t)backoffTimeout
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  backoffTimeout = [persistence backoffTimeout];
  v4 = backoffTimeout;
  if (!backoffTimeout)
  {
    backoffTimeout = &unk_284B87678;
  }

  integerValue = [backoffTimeout integerValue];

  return integerValue;
}

- (id)passcodeType
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  passcodeType = [persistence passcodeType];

  return passcodeType;
}

- (int64_t)failedPasscodeAttempts
{
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  failedPasscodeAttempts = [persistence failedPasscodeAttempts];
  v4 = failedPasscodeAttempts;
  if (!failedPasscodeAttempts)
  {
    failedPasscodeAttempts = &unk_284B87678;
  }

  integerValue = [failedPasscodeAttempts integerValue];

  return integerValue;
}

- (void)verifyPasscode:(id)passcode completion:(id)completion
{
  completionCopy = completion;
  passcodeCopy = passcode;
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  v8 = [persistence verifyPasscode:passcodeCopy];

  if (v8)
  {
    if ([(LAPSCurrentPasscodeService *)self backoffTimeout]< 1)
    {
      if ([LAPSErrorBuilder checkError:v8 hasCode:4])
      {
        [LAPSErrorBuilder invalidPasscodeErrorWithFailedAttemptsCount:[(LAPSCurrentPasscodeService *)self failedPasscodeAttempts]];
      }

      else
      {
        [LAPSErrorBuilder genericErrorWithUnderlyingError:v8];
      }
      v9 = ;
    }

    else
    {
      v9 = [LAPSErrorBuilder invalidPasscodeErrorWithFailedAttemptsCount:[(LAPSCurrentPasscodeService *)self failedPasscodeAttempts] backoffTimeout:[(LAPSCurrentPasscodeService *)self backoffTimeout]];
    }

    v10 = v9;
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)canChangePasscodeWithError:(id *)error
{
  canChangePasscode = [(LAPSPasscodePersistence *)self->_persistence canChangePasscode];
  v5 = canChangePasscode;
  if (error && (canChangePasscode & 1) == 0)
  {
    *error = [LAPSErrorBuilder genericErrorWithDebugDescription:@"Passcode change is not allowed"];
  }

  return v5;
}

- (void)changePasscode:(id)passcode to:(id)to enableRecovery:(BOOL)recovery completion:(id)completion
{
  recoveryCopy = recovery;
  v28[3] = *MEMORY[0x277D85DE8];
  toCopy = to;
  completionCopy = completion;
  passcodeCopy = passcode;
  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  v26 = 0;
  v14 = [persistence changePasscode:passcodeCopy to:toCopy enableRecovery:recoveryCopy error:&v26];

  v15 = v26;
  if (v14)
  {
    persistence2 = [(LAPSCurrentPasscodeService *)self persistence];
    v17 = [persistence2 setPasscodeRecoveryEnabled:recoveryCopy];

    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Passcode recovery intent storage failed (error: %@)", v17];
      v19 = LACLogPasscodeService();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [LAPSCurrentPasscodeService changePasscode:v18 to:v19 enableRecovery:? completion:?];
      }
    }

    if ([(LAPSCurrentPasscodeServiceOptions *)self->_options skipSuccessNotification])
    {
      v20 = LACLogPasscodeService();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238BCD000, v20, OS_LOG_TYPE_DEFAULT, "Skipping success notification as requested", buf, 2u);
      }
    }

    else
    {
      [(LAPSCurrentPasscodeService *)self _reportPasscodeChangedTo:toCopy];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v27[0] = *MEMORY[0x277CCA450];
    v21 = +[LALocalizedString passcodeChangeFailedTitle];
    v28[0] = v21;
    v27[1] = *MEMORY[0x277CCA068];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Passcode change failed (error: %@)", v15];
    v27[2] = @"LAPSInteractiveErrorKey";
    v28[1] = v22;
    v28[2] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v24 = [LAPSErrorBuilder errorWithCode:9 userInfo:v23];
    (completionCopy)[2](completionCopy, v24);

    completionCopy = v21;
    v17 = v15;
  }
}

- (void)_reportPasscodeChangedTo:(id)to
{
  toCopy = to;
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "CDP update will start", v7, 2u);
  }

  persistence = [(LAPSCurrentPasscodeService *)self persistence];
  [persistence reportPasscodeDidChangeTo:toCopy completion:&__block_literal_global_1];
}

void __55__LAPSCurrentPasscodeService__reportPasscodeChangedTo___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = LACLogPasscodeService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_238BCD000, v3, OS_LOG_TYPE_DEFAULT, "CDP update did finish (error: %@)", &v4, 0xCu);
  }
}

- (void)changePasscode:(uint64_t)a1 to:(NSObject *)a2 enableRecovery:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

@end