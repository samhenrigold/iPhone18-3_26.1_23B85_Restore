@interface VUIAction
+ (id)actionWithDictionary:(id)dictionary appContext:(id)context;
- (id)_siriConfigInfo;
- (void)_finalizeWithSuccess:(BOOL)success targetResponder:(id)responder documentOptions:(id)options completion:(id)completion;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIAction

+ (id)actionWithDictionary:(id)dictionary appContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  contextCopy = context;
  v8 = [dictionaryCopy vui_stringForKey:@"actionRef"];
  v9 = [dictionaryCopy vui_dictionaryForKey:@"contextData"];
  v10 = v9;
  if (v8)
  {
    v11 = [v8 isEqualToString:@"actionRefBuy"];
    if (v11 & 1) != 0 || (v11 = [v8 isEqualToString:@"actionRefGet"], (v11) || (v11 = objc_msgSend(v8, "isEqualToString:", @"actionRefPreorder"), (v11) || (v11 = objc_msgSend(v8, "isEqualToString:", @"actionRefRent"), (v11) || (v11 = objc_msgSend(v8, "isEqualToString:", @"actionRefRentWatchNow"), (v11) || (v11 = objc_msgSend(v8, "isEqualToString:", @"actionRefComplete"), (v11) || (v11 = objc_msgSend(v8, "isEqualToString:", @"actionRefUpdate"), (v11) || (v11 = objc_msgSend(v8, "isEqualToString:", @"actionRefSubscribe"), v11))
    {
      if (contextCopy)
      {
        v12 = [[VUIActionCommerceTransaction alloc] initWithActionRef:v8 contextData:v10 appContext:contextCopy];
LABEL_12:
        v13 = v12;
LABEL_20:
        v14 = [dictionaryCopy vui_dictionaryForKey:@"success"];
        v16 = [dictionaryCopy vui_dictionaryForKey:@"failure"];
        v17 = [self actionWithDictionary:v14 appContext:contextCopy];
        [(VUIAction *)v13 setSuccessAction:v17];

        v18 = [self actionWithDictionary:v16 appContext:contextCopy];
        [(VUIAction *)v13 setFailureAction:v18];

        goto LABEL_21;
      }

      v15 = VUIDefaultLogObject(v11);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_17:
      +[VUIAction actionWithDictionary:appContext:];
LABEL_18:

LABEL_19:
      v13 = 0;
      goto LABEL_20;
    }

    v20 = [v8 isEqualToString:@"actionRefPlay"];
    if ((v20 & 1) != 0 || (v20 = [v8 isEqualToString:@"actionRefRedownload"], v20))
    {
      if (!contextCopy)
      {
        v15 = VUIDefaultLogObject(v20);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v21 = VUIActionPlay;
      goto LABEL_28;
    }

    v22 = [v8 isEqualToString:@"actionRefPlaylist"];
    if (v22)
    {
      if (!contextCopy)
      {
        v15 = VUIDefaultLogObject(v22);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v21 = VUIActionPlaylist;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefDownload"])
    {
      v21 = VUIActionDownload;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefNavigate"])
    {
      v12 = [[VUIActionNavigate alloc] initWithActionDataSource:dictionaryCopy appContext:contextCopy];
      goto LABEL_12;
    }

    if ([v8 isEqualToString:@"actionRefAppPunchout"])
    {
      v21 = VUIActionAppPunchout;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefPunchout"])
    {
      v21 = VUIActionPunchout;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefPromise"])
    {
      v21 = VUIActionPromise;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefItunesExtras"])
    {
      goto LABEL_19;
    }

    if ([v8 isEqualToString:@"actionRefShareMediaItem"])
    {
      v12 = [[VUIActionShareSheet alloc] initWithContextData:v10 sourceView:0];
      goto LABEL_12;
    }

    if ([v8 isEqualToString:@"actionRefUpdateUpNext"])
    {
      v23 = VUIActionUpdateUpNext;
      goto LABEL_53;
    }

    if ([v8 isEqualToString:@"actionRefMarkAsWatched"])
    {
      v23 = VUIActionMarkedAsWatched;
      goto LABEL_53;
    }

    if ([v8 isEqualToString:@"actionRefRemoveFromPlayHistory"])
    {
      v24 = [VUIActionRemoveFromPlayHistory alloc];
      v25 = v10;
      v26 = 0;
    }

    else
    {
      if (![v8 isEqualToString:@"actionRefClearFromPlayHistory"])
      {
        if ([v8 isEqualToString:@"actionRefUpdateMusic"])
        {
          v23 = VUIActionUpdateMusic;
        }

        else
        {
          v27 = [v8 isEqualToString:@"actionRefAlert"];
          if (v27)
          {
            if (contextCopy)
            {
              v12 = [[VUIActionAlert alloc] initWithContextData:v10 appContext:contextCopy controllerClass:objc_opt_class()];
              goto LABEL_12;
            }

            v15 = VUIDefaultLogObject(v27);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          if ([v8 isEqualToString:@"actionRefLocationPrompt"])
          {
            v21 = VUIActionLocationPrompt;
            goto LABEL_28;
          }

          if (![v8 isEqualToString:@"actionRefUpdateSportsFavorite"])
          {
            v28 = [v8 isEqualToString:@"actionRefGdprProceed"];
            if (v28)
            {
              if (!contextCopy)
              {
                v15 = VUIDefaultLogObject(v28);
                if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_18;
                }

                goto LABEL_17;
              }

              v21 = VUIActionTypeGDPR;
            }

            else
            {
              if ([v8 isEqualToString:@"actionRefSystemSettings"])
              {
                v23 = VUIActionSystemSettings;
                goto LABEL_53;
              }

              if ([v8 isEqualToString:@"actionRefARQLPreview"])
              {
                v23 = VUIActionARQLPreview;
                goto LABEL_53;
              }

              if ([v8 isEqualToString:@"actionRefBundleOffer"])
              {
                v21 = VUIActionBundleOffer;
                goto LABEL_28;
              }

              if ([v8 isEqualToString:@"actionRefActivateCarrierOffer"])
              {
                v23 = VUIActionActivateCarrierOffer;
                goto LABEL_53;
              }

              if ([v8 isEqualToString:@"actionRefLeaveGroupSession"])
              {
                v12 = objc_alloc_init(VUIActionLeaveGroupSession);
                goto LABEL_12;
              }

              if ([v8 isEqualToString:@"actionRefSearchRAC"])
              {
                v23 = VUIActionSearchRAC;
                goto LABEL_53;
              }

              v29 = [v8 isEqualToString:@"actionRefOpenWebLink"];
              if (!v29)
              {
                if (![v8 isEqualToString:@"actionRefAskToBuy"])
                {
                  v12 = [_TtC8VideosUI8VideosUI vuiSwiftAction:dictionaryCopy appContext:contextCopy];
                  goto LABEL_12;
                }

                v23 = VUIActionAskToBuy;
                goto LABEL_53;
              }

              if (!contextCopy)
              {
                v15 = VUIDefaultLogObject(v29);
                if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_18;
                }

                goto LABEL_17;
              }

              v21 = VUIActionOpenWebLink;
            }

LABEL_28:
            v12 = [[v21 alloc] initWithContextData:v10 appContext:contextCopy];
            goto LABEL_12;
          }

          v23 = VUIActionUpdateSportsFavorite;
        }

LABEL_53:
        v12 = [[v23 alloc] initWithContextData:v10];
        goto LABEL_12;
      }

      v24 = [VUIActionRemoveFromPlayHistory alloc];
      v25 = v10;
      v26 = 1;
    }

    v12 = [(VUIActionRemoveFromPlayHistory *)v24 initWithContextData:v25 isContinueWatching:v26];
    goto LABEL_12;
  }

  v14 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = 0;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIApplicationAction: Unknown action type %@", &v30, 0xCu);
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1);
  }
}

- (void)_finalizeWithSuccess:(BOOL)success targetResponder:(id)responder documentOptions:(id)options completion:(id)completion
{
  successCopy = success;
  responderCopy = responder;
  optionsCopy = options;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__VUIAction__finalizeWithSuccess_targetResponder_documentOptions_completion___block_invoke;
  aBlock[3] = &unk_1E8731A88;
  v22 = responderCopy;
  v13 = completionCopy;
  v23 = optionsCopy;
  v24 = v13;
  v14 = optionsCopy;
  v15 = responderCopy;
  v16 = _Block_copy(aBlock);
  if (successCopy)
  {
    successAction = [(VUIAction *)self successAction];

    if (successAction)
    {
      successAction2 = [(VUIAction *)self successAction];
LABEL_6:
      v20 = successAction2;
      v16[2](v16, successAction2);

      goto LABEL_9;
    }
  }

  else
  {
    failureAction = [(VUIAction *)self failureAction];

    if (failureAction)
    {
      successAction2 = [(VUIAction *)self failureAction];
      goto LABEL_6;
    }
  }

  if (v13)
  {
    (*(v13 + 2))(v13, successCopy);
  }

LABEL_9:
}

void __77__VUIAction__finalizeWithSuccess_targetResponder_documentOptions_completion___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  if (+[VUIUtilities isSUIEnabled])
  {
    v3 = +[VUIInterfaceFactory sharedInstance];
    v4 = [v3 controllerPresenter];
    [v4 invokeAction:v5 targetResponder:a1[4] completion:a1[6]];
  }

  else
  {
    [VUIApplicationRouter invokeAction:v5 targetResponder:a1[4] documentOptions:a1[5] completion:a1[6]];
  }
}

- (id)_siriConfigInfo
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [v2 copy];

  return v3;
}

@end