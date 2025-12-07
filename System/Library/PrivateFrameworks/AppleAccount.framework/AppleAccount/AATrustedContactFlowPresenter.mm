@interface AATrustedContactFlowPresenter
- (void)dealloc;
- (void)presentInvitationUIWithCustodianshipInfo:(id)info completion:(id)completion;
- (void)presentModel:(id)model completion:(id)completion;
@end

@implementation AATrustedContactFlowPresenter

- (void)presentModel:(id)model completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  [(AAFlowPresenter *)self setPresentationCompletion:completion];
  v17 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:modelCopy requiringSecureCoding:1 error:&v17];
  v8 = v17;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 setObject:v12 forKeyedSubscript:@"modelType"];
  }

  v13 = _AALogSystem(isKindOfClass);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 objectForKeyedSubscript:@"modelType"];
    *buf = 138412290;
    v19 = v14;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "modelType: %@", buf, 0xCu);
  }

  if (!v7)
  {
    v16 = _AALogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AATrustedContactFlowPresenter presentModel:v8 completion:v16];
    }
  }

  [v9 setObject:v7 forKeyedSubscript:@"modelData"];
  [(AAFlowPresenter *)self launchProcessWithUserInfo:v9];
}

- (void)presentInvitationUIWithCustodianshipInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  v7 = _AALogSystem([(AAFlowPresenter *)self setPresentationCompletion:completion]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Presenting invitation UI with info.", buf, 2u);
  }

  v9 = _AALogSystem(v8);
  v10 = v9;
  if (infoCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Will create model for invitation.", v20, 2u);
    }

    v11 = [[AAOBCustodianInvitationModel alloc] initWithCustodianshipInfo:infoCopy];
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = 0;
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v19];
    v14 = v19;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 setObject:v16 forKeyedSubscript:@"modelType"];

    if (!v13)
    {
      v18 = _AALogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AATrustedContactFlowPresenter presentModel:v14 completion:v18];
      }
    }

    [v12 setObject:v13 forKeyedSubscript:@"modelData"];
    [(AAFlowPresenter *)self launchProcessWithUserInfo:v12];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AATrustedContactFlowPresenter presentInvitationUIWithCustodianshipInfo:v10 completion:?];
    }

    v11 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
    [(AAFlowPresenter *)self flowFinishedWithError:v11 completion:0];
  }
}

- (void)dealloc
{
  v3 = _AALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAInheritanceController *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = AATrustedContactFlowPresenter;
  [(AAFlowPresenter *)&v4 dealloc];
}

- (void)presentModel:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Context data is nil: %@", &v2, 0xCu);
}

@end