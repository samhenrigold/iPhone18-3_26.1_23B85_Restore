@interface SHQuickNoteActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (SHQuickNoteActivity)init;
- (id)activityTitle;
- (void)_configureQuickNotePresentationDelegateWithPresenterViewController:(id)controller;
- (void)prepareWithActivityItems:(id)items;
- (void)systemPaperDidFinishWithError:(id)error;
@end

@implementation SHQuickNoteActivity

void __27__SHQuickNoteActivity_init__block_invoke(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v21 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getMCProfileConnectionClass_block_invoke;
    v16 = &unk_1E71F91F0;
    v17 = &v18;
    __getMCProfileConnectionClass_block_invoke(&v13);
    v2 = v19[3];
  }

  v3 = v2;
  _Block_object_dispose(&v18, 8);
  v4 = [v2 sharedConnection];
  atomic_store([v4 mayOpenFromManagedToUnmanaged], (*(a1 + 32) + 145));
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v5 = get_EXQueryClass_softClass;
  v21 = get_EXQueryClass_softClass;
  if (!get_EXQueryClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __get_EXQueryClass_block_invoke;
    v16 = &unk_1E71F91F0;
    v17 = &v18;
    __get_EXQueryClass_block_invoke(&v13);
    v5 = v19[3];
  }

  v6 = v5;
  _Block_object_dispose(&v18, 8);
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleIdentifier == %@", @"com.apple.mobilenotes.EditorExtension"];
  v9 = [v7 initWithExtensionPointIdentifier:@"com.apple.private.system-paper" predicate:v8];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v10 = get_EXQueryControllerClass_softClass;
  v21 = get_EXQueryControllerClass_softClass;
  if (!get_EXQueryControllerClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __get_EXQueryControllerClass_block_invoke;
    v16 = &unk_1E71F91F0;
    v17 = &v18;
    __get_EXQueryControllerClass_block_invoke(&v13);
    v10 = v19[3];
  }

  v11 = v10;
  _Block_object_dispose(&v18, 8);
  v12 = [v10 executeQuery:v9];
  atomic_store([v12 count] != 0, (*(a1 + 32) + 144));
}

- (SHQuickNoteActivity)init
{
  v18.receiver = self;
  v18.super_class = SHQuickNoteActivity;
  v2 = [(UIActivity *)&v18 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(1u, &v2->_isQuickNoteExtensionInstalled);
    atomic_store(0, &v2->_canOpenFromManagedToUnmanaged);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.sharing.QuickNote", v5);
    queryQueue = v3->_queryQueue;
    v3->_queryQueue = v6;

    v8 = v3->_queryQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__SHQuickNoteActivity_init__block_invoke;
    block[3] = &unk_1E71F9510;
    v9 = v3;
    v17 = v9;
    dispatch_async(v8, block);
    _currentUserActivityUUID = [MEMORY[0x1E69636A8] _currentUserActivityUUID];
    v9->__hasUserActivityCurrent = _currentUserActivityUUID != 0;
    if (_currentUserActivityUUID)
    {
      objc_initWeak(&location, v9);
      v11 = MEMORY[0x1E69636A8];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __27__SHQuickNoteActivity_init__block_invoke_2;
      v13[3] = &unk_1E71FA9B0;
      objc_copyWeak(&v14, &location);
      [v11 _fetchUserActivityWithUUID:_currentUserActivityUUID completionHandler:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  return v3;
}

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void __27__SHQuickNoteActivity_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SHQuickNoteActivity_init__block_invoke_3;
  block[3] = &unk_1E71FA988;
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __27__SHQuickNoteActivity_init__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v4 = getSYIsLinkableUserActivitySymbolLoc_ptr;
    v14 = getSYIsLinkableUserActivitySymbolLoc_ptr;
    if (!getSYIsLinkableUserActivitySymbolLoc_ptr)
    {
      v5 = SynapseLibrary();
      v12[3] = dlsym(v5, "SYIsLinkableUserActivity");
      getSYIsLinkableUserActivitySymbolLoc_ptr = v12[3];
      v4 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v4)
    {
      [SHSheetRemoteSceneViewController reloadMetadata:];
      v10 = v9;
      _Block_object_dispose(&v11, 8);
      _Unwind_Resume(v10);
    }

    v6 = v4(v3);

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained set_hasUserActivityCurrent:v6];
  }

  else
  {
    v8 = (a1 + 40);
    if (!*(a1 + 40))
    {
      return;
    }

    WeakRetained = SHQuickNoteLog(a1);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __27__SHQuickNoteActivity_init__block_invoke_3_cold_2(v8, WeakRetained);
    }
  }
}

- (id)activityTitle
{
  if ([(SHQuickNoteActivity *)self _hasSupportedShareableItems]|| [(SHQuickNoteActivity *)self _hasUserActivityCurrent])
  {
    v3 = _ShareSheetBundle();
    v4 = v3;
    v5 = @"AddToNewQuickNote[Activity]";
    v6 = @"Add to New Quick Note";
  }

  else
  {
    v3 = _ShareSheetBundle();
    v4 = v3;
    v5 = @"NewQuickNote[Activity]";
    v6 = @"New Quick Note";
  }

  v7 = [v3 localizedStringForKey:v5 value:v6 table:@"Localizable"];

  return v7;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v33 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (![itemsCopy count])
  {
    goto LABEL_22;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E69CDE78] isSWYActivityItemProvider:v10])
        {

          goto LABEL_22;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  canOpenFromManagedToUnmanaged = [(SHQuickNoteActivity *)self canOpenFromManagedToUnmanaged];
  if ((canOpenFromManagedToUnmanaged & 1) == 0)
  {
    v25 = SHQuickNoteLog(canOpenFromManagedToUnmanaged);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_18B359000, v25, OS_LOG_TYPE_INFO, "Can't perform Quick Note activity from managed app.", v27, 2u);
    }

    goto LABEL_22;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = _os_feature_enabled_impl();
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  lowercaseString = [bundleIdentifier lowercaseString];
  v18 = [lowercaseString isEqualToString:@"com.apple.mobilesafari"];

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  lowercaseString2 = [bundleIdentifier2 lowercaseString];
  v22 = [lowercaseString2 isEqualToString:@"com.apple.mobilenotes"];

  v23 = 0;
  if (!userInterfaceIdiom && v14)
  {
    if (!(v18 & 1 | ![(SHQuickNoteActivity *)self isQuickNoteExtensionInstalled]| v22 & 1))
    {
      v24 = _UIActivityItemCountOfType(v5, 2);
      if (v24 <= 5)
      {
        [(SHQuickNoteActivity *)self set_hasSupportedShareableItems:(v24 > 0) | _UIActivityHasAtMoreThan(v5, 4, 0)];
        v23 = -[SHQuickNoteActivity _hasUserActivityCurrent](self, "_hasUserActivityCurrent") || [v5 count] != 0;
        goto LABEL_23;
      }
    }

LABEL_22:
    v23 = 0;
  }

LABEL_23:

  return v23;
}

- (void)prepareWithActivityItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = _UIActivityItemsGetWebURLs(itemsCopy, 0);
  [(SHQuickNoteActivity *)self set_urls:v5];

  v6 = _UIActivityItemsGetImages(itemsCopy, 0, 0);
  [(SHQuickNoteActivity *)self set_images:v6];

  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = *MEMORY[0x1E69637F8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (isKindOfClass)
        {
          if (isKindOfClass)
          {
            v15 = [MEMORY[0x1E695DFF8] URLWithString:v13];
          }

          else
          {
            v15 = v13;
          }

          v16 = v15;
          v17 = _UIActivityUTIForURL(v15);
          v18 = v17;
          if (v17 && UTTypeConformsTo(v17, v11))
          {
            [array addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(SHQuickNoteActivity *)self set_imageFileURLs:array];
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  isQuickNoteExtensionInstalled = [(SHQuickNoteActivity *)self isQuickNoteExtensionInstalled];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v10 = getSYNotesActivationRequestClass_softClass;
  v48 = getSYNotesActivationRequestClass_softClass;
  if (!getSYNotesActivationRequestClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getSYNotesActivationRequestClass_block_invoke;
    v43 = &unk_1E71F91F0;
    v44 = &v45;
    __getSYNotesActivationRequestClass_block_invoke(&v40);
    v10 = v46[3];
  }

  v11 = v10;
  _Block_object_dispose(&v45, 8);
  v12 = objc_alloc_init(v10);
  [v12 setShouldAutoInsertLinkToCurrentActivity:{-[SHQuickNoteActivity _hasUserActivityCurrent](self, "_hasUserActivityCurrent")}];
  if (isQuickNoteExtensionInstalled)
  {
    _urls = [(SHQuickNoteActivity *)self _urls];
    v14 = [_urls count] == 0;

    if (!v14)
    {
      _urls2 = [(SHQuickNoteActivity *)self _urls];
      [v12 addURLs:_urls2];
    }

    _images = [(SHQuickNoteActivity *)self _images];
    v17 = [_images count] == 0;

    if (!v17)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      _images2 = [(SHQuickNoteActivity *)self _images];
      v19 = [_images2 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v19)
      {
        v20 = *v37;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(_images2);
            }

            v22 = *(*(&v36 + 1) + 8 * i);
            if ([(UIImage *)v22 imageOrientation])
            {
              UIImageJPEGRepresentation(v22, 0.9);
            }

            else
            {
              UIImagePNGRepresentation(v22);
            }
            v23 = ;
            if (v23)
            {
              [v12 addImageData:v23];
            }
          }

          v19 = [_images2 countByEnumeratingWithState:&v36 objects:v49 count:16];
        }

        while (v19);
      }
    }

    _imageFileURLs = [(SHQuickNoteActivity *)self _imageFileURLs];
    v25 = [_imageFileURLs count] == 0;

    if (!v25)
    {
      _imageFileURLs2 = [(SHQuickNoteActivity *)self _imageFileURLs];
      [v12 addImageFileURLs:_imageFileURLs2];
    }
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v27 = getSYNotesActivationCommandClass_softClass;
  v48 = getSYNotesActivationCommandClass_softClass;
  if (!getSYNotesActivationCommandClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getSYNotesActivationCommandClass_block_invoke;
    v43 = &unk_1E71F91F0;
    v44 = &v45;
    __getSYNotesActivationCommandClass_block_invoke(&v40);
    v27 = v46[3];
  }

  v28 = v27;
  _Block_object_dispose(&v45, 8);
  v29 = objc_alloc_init(v27);
  [v29 setActivationRequest:v12];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke;
  v33[3] = &unk_1E71FA9D8;
  v33[4] = self;
  v34 = controllerCopy;
  v35 = completionCopy;
  v30 = completionCopy;
  v31 = controllerCopy;
  [v29 activateWithCompletion:v33];

  return 1;
}

void __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = SHQuickNoteLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_cold_1(v4, v5);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_48;
  block[3] = &unk_1E71F9958;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_48(uint64_t a1)
{
  [*(a1 + 32) _configureQuickNotePresentationDelegateWithPresenterViewController:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_configureQuickNotePresentationDelegateWithPresenterViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = controllerCopy;
    while (1)
    {
      NSClassFromString(&cfstr_Icsystempapere.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      presentedViewController = [v5 presentedViewController];

      v5 = presentedViewController;
      if (!presentedViewController)
      {
        goto LABEL_7;
      }
    }

    [(SHQuickNoteActivity *)self setSystemPaperViewController:v5];
  }

LABEL_7:
  systemPaperViewController = [(SHQuickNoteActivity *)self systemPaperViewController];
  if (systemPaperViewController && (v8 = systemPaperViewController, -[SHQuickNoteActivity systemPaperViewController](self, "systemPaperViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isBeingDismissed], v9, v8, (v10 & 1) == 0))
  {
    systemPaperViewController2 = [(SHQuickNoteActivity *)self systemPaperViewController];
    [systemPaperViewController2 setPresentationDelegate:self];
  }

  else
  {

    [(UIActivity *)self activityDidFinish:0];
  }
}

- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __78__SHQuickNoteActivity__dismissActivityFromViewController_animated_completion___block_invoke;
  v18 = &unk_1E71FA0F0;
  selfCopy = self;
  v20 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x18CFF58E0](&v15);
  if (controllerCopy)
  {
    v11 = 1;
    [controllerCopy dismissViewControllerAnimated:1 completion:{v10, v15, v16, v17, v18, selfCopy, v20}];
  }

  else
  {
    v12 = [(SHQuickNoteActivity *)self systemPaperViewController:v15];

    if (v12)
    {
      systemPaperViewController = [(SHQuickNoteActivity *)self systemPaperViewController];
      v11 = 1;
      [systemPaperViewController dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      v10[2](v10);
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __78__SHQuickNoteActivity__dismissActivityFromViewController_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSystemPaperViewController:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)systemPaperDidFinishWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = domain;
  if (domain == *MEMORY[0x1E696A250])
  {
    code = [errorCopy code];

    if (code == 3072)
    {
      v9 = SHQuickNoteLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [SHQuickNoteActivity systemPaperDidFinishWithError:v9];
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (errorCopy)
  {
    v9 = SHQuickNoteLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SHQuickNoteActivity *)errorCopy systemPaperDidFinishWithError:v9];
    }

LABEL_9:
  }

  [(UIActivity *)self activityDidFinish:errorCopy == 0];
}

void __27__SHQuickNoteActivity_init__block_invoke_3_cold_2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch local user activity: %@", &v3, 0xCu);
}

void __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Quick Note invocation failed with error: %@", &v2, 0xCu);
}

- (void)systemPaperDidFinishWithError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Quick Note presentation finished with error: %@", &v4, 0xCu);
}

@end