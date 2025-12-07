@interface DKFollowUpExtensionViewController
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation DKFollowUpExtensionViewController

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v8 = _DKLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Processing follow up action: %@", buf, 0xCu);
  }

  v9 = [actionCopy url];

  if (v9)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = [actionCopy url];
    v25 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v26 = &__kCFBooleanTrue;
    domain = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = 0;
    v13 = [v10 openSensitiveURL:v11 withOptions:domain error:&v20];
    v14 = v20;

    if ((v13 & 1) == 0)
    {
      v16 = _DKLogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [actionCopy url];
        if (_DKIsInternalInstall())
        {
          v18 = 0;
          v19 = v14;
        }

        else if (v14)
        {
          domain = [v14 domain];
          v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v14 code]);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        *buf = 138412546;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to open URL %@: %{public}@", buf, 0x16u);
        if (v18)
        {
        }
      }
    }
  }

  else
  {
    +[DKFollowUp clearFollowUp];
  }

  completionCopy[2](completionCopy, 1);
}

@end