@interface AAAppleIDRepairController
- (AAAppleIDRepairController)init;
- (BOOL)offline_primaryAppleIDNeedsRepair;
- (unint64_t)_fetchRepairState;
- (void)_forceFetchUpdatedUserInformationWithCompletion:(id)completion;
- (void)primaryAppleIDRepairNeedsRepairCompletion:(id)completion;
@end

@implementation AAAppleIDRepairController

- (AAAppleIDRepairController)init
{
  v6.receiver = self;
  v6.super_class = AAAppleIDRepairController;
  v2 = [(AAAppleIDRepairController *)&v6 init];
  if (v2)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
    [(AAAppleIDRepairController *)v2 setPrimaryAccount:aa_primaryAppleAccount];
  }

  return v2;
}

- (BOOL)offline_primaryAppleIDNeedsRepair
{
  primaryAccount = [(AAAppleIDRepairController *)self primaryAccount];

  if (!primaryAccount)
  {
    return 0;
  }

  _fetchRepairState = [(AAAppleIDRepairController *)self _fetchRepairState];
  return (_fetchRepairState & 0xFFFFFFFFFFFFFFFDLL) == 0 || _fetchRepairState == 3;
}

- (void)primaryAppleIDRepairNeedsRepairCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AAAppleIDRepairController_primaryAppleIDRepairNeedsRepairCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9C950;
  v5 = completionCopy;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  primaryAccount = [(AAAppleIDRepairController *)self primaryAccount];

  if (primaryAccount)
  {
    _fetchRepairState = [(AAAppleIDRepairController *)self _fetchRepairState];
    if (_fetchRepairState)
    {
      v6[2](v6, _fetchRepairState);
    }

    else
    {
      [(AAAppleIDRepairController *)self _forceFetchUpdatedUserInformationWithCompletion:v6];
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

uint64_t __71__AAAppleIDRepairController_primaryAppleIDRepairNeedsRepairCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _AALogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Final repair state %@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (a2 & 0xFFFFFFFFFFFFFFFELL) == 2);
  }

  return result;
}

- (unint64_t)_fetchRepairState
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAccount = [(AAAppleIDRepairController *)self primaryAccount];
  aa_altDSID = [primaryAccount aa_altDSID];
  v6 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:aa_altDSID];

  mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
  v8 = [mEMORY[0x1E698DC80]2 repairStateForAccount:v6];

  return v8;
}

- (void)_forceFetchUpdatedUserInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  primaryAccount = [(AAAppleIDRepairController *)self primaryAccount];
  aa_altDSID = [primaryAccount aa_altDSID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke;
  v9[3] = &unk_1E7C9C978;
  v10 = completionCopy;
  v8 = completionCopy;
  [v5 getUserInformationForAltDSID:aa_altDSID completion:v9];
}

void __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _AALogSystem(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke_cold_1(v6, v8);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "repairState")}];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "User information returned state: %@", &v12, 0xCu);
    }

    v11 = *(a1 + 32);
    [v5 repairState];
    v9 = *(v11 + 16);
  }

  v9();
}

void __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Error fetching user information: %@", &v2, 0xCu);
}

@end