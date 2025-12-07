@interface LAPasscodeRecoveryService
- (BOOL)isRecoveryAvailableWithError:(id *)error;
- (LAPasscodeRecoveryService)init;
- (LAPasscodeRecoveryService)initWithControllerBuilder:(id)builder;
- (id)lastPasscodeChange;
- (void)cancelRecovery;
- (void)startRecoveryInParentVC:(id)c completion:(id)completion;
@end

@implementation LAPasscodeRecoveryService

- (LAPasscodeRecoveryService)init
{
  v3 = objc_alloc_init(LAPSPasscodeChangeControllerProvider);
  v4 = [(LAPasscodeRecoveryService *)self initWithControllerBuilder:v3];

  return v4;
}

- (LAPasscodeRecoveryService)initWithControllerBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = LAPasscodeRecoveryService;
  v6 = [(LAPasscodeRecoveryService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_builder, builder);
  }

  return v7;
}

- (id)lastPasscodeChange
{
  passcodeRecoveryPreflightController = [(LAPSPasscodeChangeControllerProviding *)self->_builder passcodeRecoveryPreflightController];
  lastPasscodeChange = [passcodeRecoveryPreflightController lastPasscodeChange];

  return lastPasscodeChange;
}

- (BOOL)isRecoveryAvailableWithError:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "LAPasscodeRecoveryService preflight will start", buf, 2u);
  }

  passcodeRecoveryPreflightController = [(LAPSPasscodeChangeControllerProviding *)self->_builder passcodeRecoveryPreflightController];
  v12 = 0;
  v7 = [passcodeRecoveryPreflightController canChangePasscodeWithError:&v12];
  v8 = v12;

  if (error && (v7 & 1) == 0)
  {
    *error = [LAPasscodeServiceErrorBuilder redactError:v8];
  }

  v9 = LACLogPasscodeService();
  v10 = 16 * (v8 != 0);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_238BCD000, v9, v10, "LAPasscodeRecoveryService preflight did finish (error=%{public}@)", buf, 0xCu);
  }

  return v7;
}

- (void)startRecoveryInParentVC:(id)c completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  cCopy = c;
  completionCopy = completion;
  v8 = LACLogPasscodeService();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = cCopy;
    _os_log_impl(&dword_238BCD000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will start on parentVC: %{public}@", buf, 0x16u);
  }

  builder = self->_builder;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke;
  v19[3] = &unk_278A65F60;
  v10 = cCopy;
  v20 = v10;
  v11 = __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke(v19);
  v12 = [(LAPSPasscodeChangeControllerProviding *)builder passcodeRecoveryControllerWithOptions:v11];

  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke_2;
  v15[3] = &unk_278A658B8;
  objc_copyWeak(&v18, buf);
  v13 = completionCopy;
  v17 = v13;
  v14 = v12;
  v16 = v14;
  [v14 startWithCompletion:v15];
  objc_storeWeak(&self->_recoveryController, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

LAPSPasscodeChangeControllerProviderOptions *__64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke(uint64_t a1)
{
  v1 = [[LAPSPasscodeChangeControllerProviderOptions alloc] initWithParentVC:*(a1 + 32)];
  v2 = +[LALocalizedString passcodeRecoveryTitle];
  [(LAPSPasscodeChangeControllerProviderOptions *)v1 setTitle:v2];

  v3 = +[LALocalizedString passcodeRecoveryOldPasscodePrompt];
  [(LAPSPasscodeChangeControllerProviderOptions *)v1 setOldPasscodePrompt:v3];

  v4 = +[LALocalizedString passcodeRecoveryOldPasscodeSubPrompt];
  [(LAPSPasscodeChangeControllerProviderOptions *)v1 setOldPasscodeSubPrompt:v4];

  return v1;
}

void __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LACLogPasscodeService();
  v6 = 16 * (v4 != 0);
  if (os_log_type_enabled(v5, v6))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = 138543618;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_238BCD000, v5, v6, "%{public}@ did finish (error=%{public}@)", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = [LAPasscodeServiceErrorBuilder redactError:v4];
  (*(v8 + 16))(v8, v9);
}

- (void)cancelRecovery
{
  v3 = LACLogPasscodeService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_238BCD000, v3, OS_LOG_TYPE_DEFAULT, "LAPasscodeRecoveryService will cancel", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_recoveryController);
  [WeakRetained cancel];
}

@end