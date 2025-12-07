@interface FAFollowupManager
+ (id)_followupManager;
+ (void)synchronizeFollowupWithPayload:(id)payload altDSID:(id)d;
+ (void)tearDownFollowupItemWithIdentifier:(id)identifier completion:(id)completion;
+ (void)teardownFollowUpWithContext:(id)context completion:(id)completion;
+ (void)teardownPendingFollowup;
@end

@implementation FAFollowupManager

+ (void)tearDownFollowupItemWithIdentifier:(id)identifier completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = MEMORY[0x1E6997AC8];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithClientIdentifier:@"com.icloud.family"];
  v13[0] = identifierCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E7CA47F0;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 clearPendingFollowUpItemsWithUniqueIdentifiers:v9 completion:v11];
}

void __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _FALogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke_cold_1(v6);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v6);
  }
}

+ (void)synchronizeFollowupWithPayload:(id)payload altDSID:(id)d
{
  dCopy = d;
  payloadCopy = payload;
  _followupManager = [self _followupManager];
  v13 = 0;
  v9 = [_followupManager synchronizeFollowUpsWithServerPayload:payloadCopy altDSID:dCopy error:&v13];

  v10 = v13;
  v11 = _FALogSystem(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v12)
    {
      [FAFollowupManager synchronizeFollowupWithPayload:v11 altDSID:?];
    }
  }

  else if (v12)
  {
    [FAFollowupManager synchronizeFollowupWithPayload:v10 altDSID:v11];
  }
}

+ (void)teardownPendingFollowup
{
  v1 = [self description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0(&dword_1B70B0000, v2, v3, "Failed to clear pending family followup items with error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

+ (void)teardownFollowUpWithContext:(id)context completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _FALogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = contextCopy;
    _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "teardownFollowUpWithContext called with context: %@", buf, 0xCu);
  }

  _followupManager = [self _followupManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__FAFollowupManager_teardownFollowUpWithContext_completion___block_invoke;
  v11[3] = &unk_1E7CA47F0;
  v12 = completionCopy;
  v10 = completionCopy;
  [_followupManager teardownFollowUpWithContext:contextCopy completion:v11];
}

void __60__FAFollowupManager_teardownFollowUpWithContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _FALogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Successfully cleared pending family followup items.", &v9, 2u);
    }
  }

  else if (v7)
  {
    v8 = [v5 debugDescription];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Failed to clear pending family followup items with error: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)_followupManager
{
  v2 = [objc_alloc(MEMORY[0x1E6997AC8]) initWithClientIdentifier:@"com.icloud.family"];
  v3 = [objc_alloc(MEMORY[0x1E698DD78]) initWithFLFollowupController:v2];
  v4 = objc_alloc_init(MEMORY[0x1E698DD80]);
  [v4 setExtensionIdentifier:@"com.apple.family.FAFollowupExtension"];
  [v4 setRepresentingBundlePath:@"/System/Library/PreferencePanes/FamilySharingPrefPane.prefPane"];
  [v4 setBundleIconName:@"iCloudFamily"];
  v5 = [objc_alloc(MEMORY[0x1E698DD30]) initWithFollowUpFactory:v4 provider:v3];

  return v5;
}

void __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0(&dword_1B70B0000, v2, v3, "Failed to teardown followup item with error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

+ (void)synchronizeFollowupWithPayload:(void *)a1 altDSID:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "Failed to post followup with error %@", &v4, 0xCu);
}

@end