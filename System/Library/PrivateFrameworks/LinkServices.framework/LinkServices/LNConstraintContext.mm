@interface LNConstraintContext
+ (id)synchronousContextForAction:(id)action;
+ (void)contextForAction:(id)action completion:(id)completion;
@end

@implementation LNConstraintContext

+ (id)synchronousContextForAction:(id)action
{
  v17[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  metadata = [actionCopy metadata];
  effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
  firstObject = [effectiveBundleIdentifiers firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];

  v16[0] = @"_";
  v14[0] = @"defaults";
  v8 = [[LNConstraintContextUserDefaults alloc] initWithIdentifier:bundleIdentifier];
  v14[1] = @"fflags";
  v15[0] = v8;
  v9 = objc_opt_new();
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16[1] = @"action";
  v17[0] = v10;
  v11 = [[LNActionKVCAdapter alloc] initWithAction:actionCopy];

  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v12;
}

+ (void)contextForAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  metadata = [actionCopy metadata];
  effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
  firstObject = [effectiveBundleIdentifiers firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];

  v11 = objc_alloc_init(LNVisibleAppManager);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__LNConstraintContext_contextForAction_completion___block_invoke;
  v15[3] = &unk_1E74B18E8;
  v19 = v20;
  v12 = bundleIdentifier;
  v16 = v12;
  v13 = completionCopy;
  v18 = v13;
  v14 = actionCopy;
  v17 = v14;
  [(LNVisibleAppManager *)v11 getCurrentAppWithCompletionHandler:v15];

  _Block_object_dispose(v20, 8);
}

void __51__LNConstraintContext_contextForAction_completion___block_invoke(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v3 = [a2 containsObject:?];
  }

  else
  {
    v3 = 0;
  }

  *(*(a1[7] + 8) + 24) = v3;
  v4 = a1[6];
  v13[0] = @"_";
  v11[0] = @"defaults";
  v5 = [[LNConstraintContextUserDefaults alloc] initWithIdentifier:a1[4]];
  v12[0] = v5;
  v11[1] = @"fflags";
  v6 = objc_opt_new();
  v12[1] = v6;
  v11[2] = @"frontmost";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1[7] + 8) + 24)];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v13[1] = @"action";
  v14[0] = v8;
  v9 = [[LNActionKVCAdapter alloc] initWithAction:a1[5]];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  (*(v4 + 16))(v4, v10);
}

@end