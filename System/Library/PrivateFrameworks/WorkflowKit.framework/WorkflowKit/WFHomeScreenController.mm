@interface WFHomeScreenController
+ (WFHomeScreenController)sharedInstance;
+ (id)iconImageForIcon:(id)icon;
+ (id)iconImageWithSymbolName:(id)name backgroundColor:(id)color roundCorners:(BOOL)corners;
+ (void)migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:(id)accessor;
+ (void)migratePreYukonWebClipsIfNeeded;
+ (void)migrateWebClipsIfNeededWithDatabaseAccessor:(id)accessor;
- (BOOL)addAppShortcutToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error;
- (BOOL)addTopHitToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error;
- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name icon:(id)icon error:(id *)error;
- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error;
- (BOOL)createHomeScreenShortcutForAppShortcut:(id)shortcut title:(id)title image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error;
- (BOOL)createHomeScreenShortcutForWorkflow:(id)workflow name:(id)name image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error;
- (WFHomeScreenController)init;
- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed;
- (void)getHomeScreenShortcutIDsWithCompletionHandler:(id)handler;
- (void)startListeningForDatabaseChanges;
- (void)updateWebClipIfNeeded:(id)needed;
@end

@implementation WFHomeScreenController

void __40__WFHomeScreenController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WFHomeScreenController);
  v1 = sharedInstance_controller;
  sharedInstance_controller = v0;
}

- (WFHomeScreenController)init
{
  v11.receiver = self;
  v11.super_class = WFHomeScreenController;
  v2 = [(WFHomeScreenController *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    homeScreenShortcutIDs = v2->_homeScreenShortcutIDs;
    v2->_homeScreenShortcutIDs = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.shortcuts.WFHomeScreenController", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = v2;
  }

  return v2;
}

- (void)startListeningForDatabaseChanges
{
  v13 = *MEMORY[0x1E69E9840];
  database = [(WFHomeScreenController *)self database];

  if (database)
  {
    v4 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[WFHomeScreenController startListeningForDatabaseChanges]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Attempted to start database listening, but we are already listening", buf, 0xCu);
    }
  }

  else
  {
    v5 = +[WFDatabase defaultDatabase];
    if (v5)
    {
      v4 = v5;
      objc_storeStrong(&self->_database, v5);
      v6 = getWFHomescreenLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "[WFHomeScreenController startListeningForDatabaseChanges]";
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Starting to observe database changes", buf, 0xCu);
      }

      queue = [(WFHomeScreenController *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__WFHomeScreenController_startListeningForDatabaseChanges__block_invoke;
      block[3] = &unk_1E837FA70;
      block[4] = self;
      dispatch_async(queue, block);

      database2 = [(WFHomeScreenController *)self database];
      [database2 addObjectObserver:self];
    }

    else
    {
      v9 = getWFHomescreenLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v12 = "[WFHomeScreenController startListeningForDatabaseChanges]";
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Trying to start observing changes with on a process with no default database", buf, 0xCu);
      }

      v4 = 0;
    }
  }
}

void __58__WFHomeScreenController_startListeningForDatabaseChanges__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(objc_class *)getUIWebClipClass() webClips];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = getWFHomescreenLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 title];
          v9 = [v6 shortcutIdentifier];
          v10 = [v6 pageURL];
          v11 = [v6 applicationBundleIdentifier];
          *buf = 136316418;
          v20 = "[WFHomeScreenController startListeningForDatabaseChanges]_block_invoke";
          v21 = 2112;
          v22 = v6;
          v23 = 2112;
          v24 = v8;
          v25 = 2114;
          v26 = v9;
          v27 = 2112;
          v28 = v10;
          v29 = 2112;
          v30 = v11;
          _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Considering web clip: %@, title: %@, shortcutIdentifier: %{public}@, pageURL: %@, applicationBundleID: %@", buf, 0x3Eu);
        }

        v12 = [v6 shortcutIdentifier];
        if (v12)
        {
          [*(a1 + 32) updateWebClipIfNeeded:v6];
          v13 = [*(a1 + 32) homeScreenShortcutIDs];
          [v13 addObject:v12];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v31 count:16];
    }

    while (v3);
  }
}

+ (WFHomeScreenController)sharedInstance
{
  if (sharedInstance_onceToken_59057 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_59057, &__block_literal_global_59058);
  }

  v3 = sharedInstance_controller;

  return v3;
}

- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed
{
  v15 = *MEMORY[0x1E69E9840];
  modifiedCopy = modified;
  if ([modifiedCopy count])
  {
    queue = [(WFHomeScreenController *)self queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__WFHomeScreenController_databaseDidChange_modified_inserted_removed___block_invoke;
    v10[3] = &unk_1E837F870;
    v11 = modifiedCopy;
    selfCopy = self;
    dispatch_async(queue, v10);

    v9 = v11;
  }

  else
  {
    v9 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[WFHomeScreenController databaseDidChange:modified:inserted:removed:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Database did change, but no shortcuts were modified", buf, 0xCu);
    }
  }
}

void __70__WFHomeScreenController_databaseDidChange_modified_inserted_removed___block_invoke(uint64_t a1)
{
  v1 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v38;
    v28 = *v38;
    v29 = v2;
    do
    {
      v6 = 0;
      v30 = v4;
      do
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v37 + 1) + 8 * v6);
        if (![v7 objectType])
        {
          v8 = [*(v1 + 40) homeScreenShortcutIDs];
          v9 = [v7 identifier];
          v10 = [v8 containsObject:v9];

          if (v10)
          {
            v31 = v6;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v11 = [(objc_class *)getUIWebClipClass() webClips];
            v12 = [v11 countByEnumeratingWithState:&v33 objects:v49 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v34;
              do
              {
                v15 = 0;
                v32 = v13;
                do
                {
                  if (*v34 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v33 + 1) + 8 * v15);
                  v17 = [v16 shortcutIdentifier];
                  v18 = [v7 identifier];
                  isEqualToString = objc_msgSend_isEqualToString_(v17);

                  if (isEqualToString)
                  {
                    v20 = getWFHomescreenLogObject();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = [v16 title];
                      v22 = [v16 identifier];
                      [v7 identifier];
                      v23 = v14;
                      v24 = v7;
                      v25 = v11;
                      v27 = v26 = v1;
                      *buf = 136315906;
                      v42 = "[WFHomeScreenController databaseDidChange:modified:inserted:removed:]_block_invoke";
                      v43 = 2112;
                      v44 = v21;
                      v45 = 2112;
                      v46 = v22;
                      v47 = 2112;
                      v48 = v27;
                      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Found webclip (title %@, id %@) that matches shortcut %@... Assessing migration", buf, 0x2Au);

                      v1 = v26;
                      v11 = v25;
                      v7 = v24;
                      v14 = v23;
                      v13 = v32;
                    }

                    [*(v1 + 40) updateWebClipIfNeeded:v16];
                  }

                  ++v15;
                }

                while (v13 != v15);
                v13 = [v11 countByEnumeratingWithState:&v33 objects:v49 count:16];
              }

              while (v13);
            }

            v5 = v28;
            v2 = v29;
            v4 = v30;
            v6 = v31;
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v4);
  }
}

- (void)updateWebClipIfNeeded:(id)needed
{
  v17 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  queue = [(WFHomeScreenController *)self queue];
  dispatch_assert_queue_V2(queue);

  shortcutIdentifier = [neededCopy shortcutIdentifier];
  database = [(WFHomeScreenController *)self database];
  v8 = WFUpdateWebClipForShortcutIfNeeded(neededCopy, shortcutIdentifier, database);

  if (v8)
  {
    v9 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      identifier = [neededCopy identifier];
      v13 = 136315394;
      v14 = "[WFHomeScreenController updateWebClipIfNeeded:]";
      v15 = 2112;
      v16 = identifier;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Updated web clip %@, pinging SpringBoard", &v13, 0x16u);
    }

    SBSWebClipServiceClass = getSBSWebClipServiceClass();
    identifier2 = [neededCopy identifier];
    [(objc_class *)SBSWebClipServiceClass updateWebClipPropertiesWithIdentifier:identifier2];
  }
}

- (void)getHomeScreenShortcutIDsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(WFHomeScreenController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WFHomeScreenController_getHomeScreenShortcutIDsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E837F4E8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);
}

void __72__WFHomeScreenController_getHomeScreenShortcutIDsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(objc_class *)getUIWebClipClass() webClips];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) shortcutIdentifier];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)createHomeScreenShortcutForAppShortcut:(id)shortcut title:(id)title image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  imageCopy = image;
  darkImageCopy = darkImage;
  tintableImageCopy = tintableImage;
  base64ArchivedData = [shortcut base64ArchivedData];
  if ([base64ArchivedData length])
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *MEMORY[0x1E69E1210], base64ArchivedData];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v21 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F4A1C408];

    v22 = objc_alloc_init(getUIWebClipClass());
    [v22 setTitle:titleCopy];
    [v22 setIdentifier:v21];
    [v22 setShortcutIdentifier:v18];
    v23 = [MEMORY[0x1E695DFF8] URLWithString:@"shortcuts://run-app-shortcut"];
    [v22 setPageURL:v23];

    [v22 setApplicationBundleIdentifier:*MEMORY[0x1E69E0F60]];
    [v22 setFullScreen:1];
    if (imageCopy)
    {
      [v22 setIconImage:imageCopy isPrecomposed:0];
    }

    if (darkImageCopy)
    {
      [v22 setDarkIconImage:darkImageCopy];
    }

    if (tintableImageCopy)
    {
      [v22 setTintableIconImage:tintableImageCopy];
    }

    v41 = darkImageCopy;
    v24 = imageCopy;
    if ([v22 createOnDisk])
    {
      v25 = softLinkSBSSpringBoardServerPort();
      v26 = [v21 cStringUsingEncoding:4];
      v27 = softLinkSBAddWebClipToHomeScreen(v25, v26);
      errorCopy = error;
      LOBYTE(error) = v27 == 0;
      if (!errorCopy || !v27)
      {
        goto LABEL_19;
      }

      errorCopy3 = errorCopy;
      v40 = titleCopy;
      v30 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      error = WFLocalizedString(@"Unable to add Home Screen icon.");
      errorCopy2 = error;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v42 count:1];
      v32 = v30;
      v33 = 2;
    }

    else
    {
      if (!error)
      {
LABEL_19:

        imageCopy = v24;
        darkImageCopy = v41;
        goto LABEL_20;
      }

      errorCopy3 = error;
      v40 = titleCopy;
      v38 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      error = WFLocalizedString(@"Unable to save Home Screen icon.");
      errorCopy4 = error;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy4 forKeys:&v44 count:1];
      v32 = v38;
      v33 = 1;
    }

    *errorCopy3 = [v32 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:v33 userInfo:v31];

    LOBYTE(error) = 0;
    titleCopy = v40;
    goto LABEL_19;
  }

  v34 = getWFHomescreenLogObject();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v49 = "[WFHomeScreenController createHomeScreenShortcutForAppShortcut:title:image:darkImage:tintableImage:error:]";
    _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Could not get base64 encoding for the auto shortcut", buf, 0xCu);
  }

  if (error)
  {
    v35 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v18 = WFLocalizedString(@"Unable to add Home Screen icon.");
    v47 = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v36 = [v35 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:2 userInfo:v21];
    errorCopy5 = error;
    LOBYTE(error) = 0;
    *errorCopy5 = v36;
LABEL_20:
  }

  return error;
}

- (BOOL)addAppShortcutToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error
{
  colorCopy = color;
  symbolNameCopy = symbolName;
  nameCopy = name;
  screenCopy = screen;
  v16 = [objc_opt_class() iconImageWithSymbolName:symbolNameCopy backgroundColor:colorCopy roundCorners:0];

  LOBYTE(error) = [(WFHomeScreenController *)self addAppShortcutToHomeScreen:screenCopy withName:nameCopy image:v16 error:error];
  return error;
}

- (BOOL)addTopHitToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  nameCopy = name;
  symbolNameCopy = symbolName;
  colorCopy = color;
  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v16 = WFLocalizedString(@"An internal error occurred.");
    v23[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *error = [v15 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:2 userInfo:v17];
  }

  v18 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v20 = 136315138;
    v21 = "[WFHomeScreenController addTopHitToHomeScreen:withName:symbolName:backgroundColor:error:]";
    _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s WFHomeScreenController does not yet support WFTopHitItemContextualAction", &v20, 0xCu);
  }

  return 0;
}

- (BOOL)createHomeScreenShortcutForWorkflow:(id)workflow name:(id)name image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  nameCopy = name;
  imageCopy = image;
  darkImageCopy = darkImage;
  tintableImageCopy = tintableImage;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v19 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F4A1C408];

  v20 = +[WFDatabase defaultDatabase];
  v21 = [WFWorkflow workflowWithReference:workflowCopy database:v20 error:error];

  if (v21)
  {
    v22 = WFFastPathBundleIdentifierIfApplicable(v21);
    identifier = [workflowCopy identifier];
    v24 = objc_alloc_init(getUIWebClipClass());
    [v24 setTitle:nameCopy];
    [v24 setIdentifier:v19];
    v49 = identifier;
    [v24 setShortcutIdentifier:identifier];
    if (v22)
    {
      [v24 setPageURL:0];
    }

    else
    {
      [workflowCopy externalURLForRunningWithSource:*MEMORY[0x1E69E1398]];
      selfCopy = self;
      errorCopy = error;
      v27 = v19;
      v28 = tintableImageCopy;
      v30 = v29 = imageCopy;
      [v24 setPageURL:v30];

      imageCopy = v29;
      tintableImageCopy = v28;
      v19 = v27;
      error = errorCopy;
      self = selfCopy;
    }

    if (v22)
    {
      v31 = v22;
    }

    else
    {
      v31 = *MEMORY[0x1E69E0F60];
    }

    [v24 setApplicationBundleIdentifier:v31];
    [v24 setFullScreen:1];
    [v24 setIconImage:imageCopy isPrecomposed:0];
    if (darkImageCopy)
    {
      [v24 setDarkIconImage:darkImageCopy];
    }

    if (tintableImageCopy)
    {
      [v24 setTintableIconImage:tintableImageCopy];
    }

    if ([v24 createOnDisk])
    {
      v47 = imageCopy;
      v32 = softLinkSBSSpringBoardServerPort();
      v33 = [v19 cStringUsingEncoding:4];
      if (softLinkSBAddWebClipToHomeScreen(v32, v33))
      {
        if (error)
        {
          v34 = MEMORY[0x1E696ABC0];
          v54 = *MEMORY[0x1E696A578];
          WFLocalizedString(@"Unable to add Home Screen icon.");
          v35 = v46 = tintableImageCopy;
          v55 = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          *error = [v34 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:2 userInfo:v36];

          tintableImageCopy = v46;
          LOBYTE(error) = 0;
        }
      }

      else
      {
        queue = [(WFHomeScreenController *)self queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __103__WFHomeScreenController_createHomeScreenShortcutForWorkflow_name_image_darkImage_tintableImage_error___block_invoke;
        block[3] = &unk_1E837F870;
        block[4] = self;
        v53 = v49;
        dispatch_async(queue, block);

        LOBYTE(error) = 1;
      }

      imageCopy = v47;
    }

    else if (error)
    {
      v48 = imageCopy;
      v37 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A578];
      v38 = WFLocalizedString(@"Unable to save Home Screen icon.");
      v57[0] = v38;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v39 = workflowCopy;
      v40 = v19;
      v42 = v41 = tintableImageCopy;
      v43 = v37;
      imageCopy = v48;
      *error = [v43 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:1 userInfo:v42];

      tintableImageCopy = v41;
      v19 = v40;
      workflowCopy = v39;

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

  return error;
}

void __103__WFHomeScreenController_createHomeScreenShortcutForWorkflow_name_image_darkImage_tintableImage_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeScreenShortcutIDs];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error
{
  colorCopy = color;
  symbolNameCopy = symbolName;
  nameCopy = name;
  screenCopy = screen;
  v16 = [objc_opt_class() iconImageWithSymbolName:symbolNameCopy backgroundColor:colorCopy roundCorners:0];

  LOBYTE(error) = [(WFHomeScreenController *)self createHomeScreenShortcutForWorkflow:screenCopy name:nameCopy image:v16 darkImage:0 tintableImage:0 error:error];
  return error;
}

- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name icon:(id)icon error:(id *)error
{
  iconCopy = icon;
  nameCopy = name;
  screenCopy = screen;
  v13 = [objc_opt_class() iconImageForIcon:iconCopy];

  LOBYTE(error) = [(WFHomeScreenController *)self createHomeScreenShortcutForWorkflow:screenCopy name:nameCopy image:v13 darkImage:0 tintableImage:0 error:error];
  return error;
}

+ (id)iconImageWithSymbolName:(id)name backgroundColor:(id)color roundCorners:(BOOL)corners
{
  cornersCopy = corners;
  colorCopy = color;
  nameCopy = name;
  v9 = objc_opt_new();
  [v9 setRounded:cornersCopy];
  [v9 setBackgroundColor:colorCopy];

  [v9 setSymbolName:nameCopy];
  v10 = [v9 imageWithSize:200.0 scale:{200.0, 1.0}];
  uIImage = [v10 UIImage];

  return uIImage;
}

+ (id)iconImageForIcon:(id)icon
{
  v3 = getISImageDescriptorClass;
  iconCopy = icon;
  v5 = v3();
  v6 = getkISImageDescriptorHomeScreen();
  v7 = [(objc_class *)v5 imageDescriptorNamed:v6];

  [v7 size];
  v15 = v9;
  v16 = v8;
  [v7 scale];
  CGAffineTransformMakeScale(&v18, v10, v10);
  v17 = vmlaq_n_f64(vmulq_n_f64(*&v18.c, v15), *&v18.a, v16);
  v11 = [objc_alloc(MEMORY[0x1E69E0E08]) initWithHomeScreenIcon:iconCopy];

  [v11 setRounded:0];
  v12 = [v11 imageWithSize:*&v17];
  uIImage = [v12 UIImage];

  return uIImage;
}

+ (void)migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:(id)accessor
{
  v55 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v5 = [systemShortcutsUserDefaults BOOLForKey:@"WFOpenAppWebClipsMigratedToFastPath"];

  if ((v5 & 1) == 0)
  {
    v6 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Migrating Open App web clips to the fast path...", buf, 0xCu);
    }

    v39 = accessorCopy[2](accessorCopy);
    if (v39)
    {
      v38 = accessorCopy;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = [(objc_class *)getUIWebClipClass() webClips];
      v7 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (!v7)
      {
        goto LABEL_42;
      }

      v8 = v7;
      v9 = *v45;
      v10 = *MEMORY[0x1E69E0F60];
      v41 = *MEMORY[0x1E69E0F60];
      while (1)
      {
        v11 = 0;
        v42 = v8;
        do
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v44 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = getWFHomescreenLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            title = [v12 title];
            pageURL = [v12 pageURL];
            *buf = 136315650;
            v49 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
            v50 = 2112;
            v51 = title;
            v52 = 2112;
            v53 = pageURL;
            _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Considering web clip with title, URL: %@, %@", buf, 0x20u);
          }

          applicationBundleIdentifier = [v12 applicationBundleIdentifier];
          v18 = applicationBundleIdentifier;
          if (applicationBundleIdentifier == v10)
          {
          }

          else
          {
            if (applicationBundleIdentifier)
            {
              v19 = v10 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {

LABEL_39:
              goto LABEL_40;
            }

            isEqualToString = objc_msgSend_isEqualToString_(applicationBundleIdentifier);

            if (!isEqualToString)
            {
              goto LABEL_39;
            }
          }

          pageURL2 = [v12 pageURL];
          scheme = [pageURL2 scheme];
          v23 = scheme;
          if (scheme != @"shortcuts")
          {
            if (!scheme || (v24 = objc_msgSend_isEqualToString_(scheme), v23, !v24))
            {

              goto LABEL_39;
            }
          }

          v25 = v9;
          pageURL3 = [v12 pageURL];
          host = [pageURL3 host];
          if (host == @"x-callback-url")
          {

            v10 = v41;
LABEL_30:
            v29 = getWFHomescreenLogObject();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              title2 = [v12 title];
              pageURL4 = [v12 pageURL];
              *buf = 136315650;
              v49 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
              v50 = 2112;
              v51 = title2;
              v52 = 2112;
              v53 = pageURL4;
              _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_INFO, "%s Web clip with title, URL is coming from shortcuts, checking if we need to migrate: %@, %@", buf, 0x20u);
            }

            pageURL5 = [v12 pageURL];
            dc_queryDictionary = [pageURL5 dc_queryDictionary];
            v18 = [dc_queryDictionary objectForKeyedSubscript:@"id"];

            if (v18)
            {
              WFUpdateWebClipForShortcutIfNeeded(v12, v18, v39);
            }

            else
            {
              v34 = getWFHomescreenLogObject();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                pageURL6 = [v12 pageURL];
                *buf = 136315394;
                v49 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
                v50 = 2112;
                v51 = pageURL6;
                _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Can't migrate web clip with page URL %@ -- couldn't extract shortcut identifier", buf, 0x16u);
              }

              v18 = 0;
            }

            goto LABEL_38;
          }

          v28 = host;
          if (!host)
          {

            v9 = v25;
            v10 = v41;
LABEL_38:
            v8 = v42;
            goto LABEL_39;
          }

          v40 = objc_msgSend_isEqualToString_(host);

          v9 = v25;
          v10 = v41;
          v8 = v42;
          if (v40)
          {
            goto LABEL_30;
          }

LABEL_40:
          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (!v8)
        {
LABEL_42:

          v36 = getWFHomescreenLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v49 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
            _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_DEFAULT, "%s Open App web clip fast path migration complete.", buf, 0xCu);
          }

          systemShortcutsUserDefaults2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
          [systemShortcutsUserDefaults2 setBool:1 forKey:@"WFOpenAppWebClipsMigratedToFastPath"];
          accessorCopy = v38;
          goto LABEL_47;
        }
      }
    }

    systemShortcutsUserDefaults2 = getWFHomescreenLogObject();
    if (os_log_type_enabled(systemShortcutsUserDefaults2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v49 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
      _os_log_impl(&dword_1CA256000, systemShortcutsUserDefaults2, OS_LOG_TYPE_ERROR, "%s Couldn't access database for Open App migration... bailing out", buf, 0xCu);
    }

LABEL_47:
  }
}

+ (void)migratePreYukonWebClipsIfNeeded
{
  v55 = *MEMORY[0x1E69E9840];
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"WFWebClipsMigratedToDirectLaunch"];

  if ((v3 & 1) == 0)
  {
    v4 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Migrating web clips to directly launch the Shortcuts app...", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"<a id=jump href=(.*?)>" options:0 error:0];
    [(objc_class *)getUIWebClipClass() webClips];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = v47 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v7)
    {
      v8 = v7;
      v42 = *v45;
      v43 = *MEMORY[0x1E69E0F60];
      v38 = v5;
      v40 = v6;
      while (2)
      {
        v9 = 0;
        v41 = v8;
        do
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v44 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          applicationBundleIdentifier = [v10 applicationBundleIdentifier];
          isEqualToString = objc_msgSend_isEqualToString_(applicationBundleIdentifier);

          if (isEqualToString)
          {
            v35 = getWFHomescreenLogObject();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
              _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_DEFAULT, "%s Web clip migration is stopping because it found an already migrated web clip.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v11);
            goto LABEL_40;
          }

          pageURL = [v10 pageURL];
          absoluteString = [pageURL absoluteString];

          if ([absoluteString hasPrefix:{@"data:text/html;base64, "}])
          {
            v16 = [absoluteString substringFromIndex:{objc_msgSend(@"data:text/htmlbase64, ", "length")}];;
            v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v16 options:1];
            if (v17)
            {
              v18 = v17;
              v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
              if ([v19 containsString:@"/webclips/images/"])
              {
                v20 = [v5 firstMatchInString:v19 options:0 range:{0, objc_msgSend(v19, "length")}];
                v21 = v20;
                if (v20)
                {
                  v22 = [v20 rangeAtIndex:1];
                  v24 = [v19 substringWithRange:{v22, v23}];
                  if (([v24 hasPrefix:@"shortcuts"]& 1) != 0 || ([v24 hasPrefix:@"workflow"]& 1) != 0)
                  {
                    v39 = v21;
                    v25 = getWFHomescreenLogObject();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier = [v10 identifier];
                      *buf = 136315394;
                      v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                      v50 = 2114;
                      v51 = identifier;
                      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "%s Updating page URL and bundle ID for web clip: %{public}@", buf, 0x16u);
                    }

                    v27 = [MEMORY[0x1E695DFF8] URLWithString:v24];
                    [v10 setPageURL:v27];

                    [v10 setApplicationBundleIdentifier:v43];
                    [v10 updateOnDisk];
                    v5 = v38;
                    v21 = v39;
                  }

                  else
                  {
                    v33 = getWFHomescreenLogObject();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier2 = [v10 identifier];
                      *buf = 136315650;
                      v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                      v50 = 2114;
                      v51 = identifier2;
                      v52 = 2112;
                      v53 = v24;
                      _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration for web clip: %{public}@, with link: %@", buf, 0x20u);
                    }

                    v5 = v38;
                  }
                }

                else
                {
                  v24 = getWFHomescreenLogObject();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    identifier3 = [v10 identifier];
                    *buf = 136315394;
                    v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                    v50 = 2114;
                    v51 = identifier3;
                    _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration due to no regex match for web clip: %{public}@", buf, 0x16u);
                  }
                }
              }

              else
              {
                v21 = getWFHomescreenLogObject();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  identifier4 = [v10 identifier];
                  *buf = 136315394;
                  v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                  v50 = 2114;
                  v51 = identifier4;
                  _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration because it was not created by shortcuts: %{public}@", buf, 0x16u);
                }
              }

              v6 = v40;
            }

            else
            {
              v29 = getWFHomescreenLogObject();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                identifier5 = [v10 identifier];
                *buf = 136315394;
                v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                v50 = 2114;
                v51 = identifier5;
                _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration because it contained invalid base64-encoded data in its URL: %{public}@", buf, 0x16u);
              }
            }

            v8 = v41;
          }

          else
          {
            v16 = getWFHomescreenLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              identifier6 = [v10 identifier];
              *buf = 136315394;
              v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
              v50 = 2114;
              v51 = identifier6;
              _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration because it isn't a base64-encoded data URL: %{public}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v11);
          ++v9;
        }

        while (v8 != v9);
        v8 = [v6 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:

    v36 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
      _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_DEFAULT, "%s Web clip migration complete.", buf, 0xCu);
    }

    workflowUserDefaults2 = [MEMORY[0x1E695E000] workflowUserDefaults];
    [workflowUserDefaults2 setBool:1 forKey:@"WFWebClipsMigratedToDirectLaunch"];
  }
}

+ (void)migrateWebClipsIfNeededWithDatabaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  [self migratePreYukonWebClipsIfNeeded];
  [self migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:accessorCopy];
}

@end