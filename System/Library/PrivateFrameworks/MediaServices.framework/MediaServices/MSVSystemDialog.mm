@interface MSVSystemDialog
+ (id)systemDialogWithOptions:(id)options;
- (MSVSystemDialog)initWithCFUserNotification:(__CFUserNotification *)notification;
- (MSVSystemDialog)initWithOptions:(id)options;
- (id)pendingCompletion;
- (void)addTextFieldWithTitle:(id)title secure:(BOOL)secure;
- (void)dealloc;
- (void)dismiss;
- (void)presentWithCompletion:(id)completion;
- (void)setActiveRunLoopSource:(__CFRunLoopSource *)source;
- (void)setPendingCompletion:(id)completion;
- (void)setPresentedUserNotification:(__CFUserNotification *)notification;
@end

@implementation MSVSystemDialog

- (void)dismiss
{
  presentedUserNotification = self->_presentedUserNotification;
  if (presentedUserNotification)
  {
    CFUserNotificationCancel(presentedUserNotification);
  }
}

- (void)presentWithCompletion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 3;
  preparedUserNotification = self->_preparedUserNotification;
  if (preparedUserNotification)
  {
    v6 = CFRetain(preparedUserNotification);
    goto LABEL_51;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  alertHeader = [(MSVSystemDialogOptions *)self->_options alertHeader];

  if (alertHeader)
  {
    alertHeader2 = [(MSVSystemDialogOptions *)self->_options alertHeader];
    [v7 setObject:alertHeader2 forKey:*MEMORY[0x1E695EE58]];
  }

  alertMessage = [(MSVSystemDialogOptions *)self->_options alertMessage];

  if (alertMessage)
  {
    alertMessage2 = [(MSVSystemDialogOptions *)self->_options alertMessage];
    [v7 setObject:alertMessage2 forKey:*MEMORY[0x1E695EE60]];
  }

  alertIconURL = [(MSVSystemDialogOptions *)self->_options alertIconURL];

  if (alertIconURL)
  {
    alertIconURL2 = [(MSVSystemDialogOptions *)self->_options alertIconURL];
    [v7 setObject:alertIconURL2 forKey:*MEMORY[0x1E695EE80]];
  }

  defaultButtonTitle = [(MSVSystemDialogOptions *)self->_options defaultButtonTitle];

  if (defaultButtonTitle)
  {
    defaultButtonTitle2 = [(MSVSystemDialogOptions *)self->_options defaultButtonTitle];
    [v7 setObject:defaultButtonTitle2 forKey:*MEMORY[0x1E695EE78]];
  }

  alternateButtonTitle = [(MSVSystemDialogOptions *)self->_options alternateButtonTitle];

  if (alternateButtonTitle)
  {
    alternateButtonTitle2 = [(MSVSystemDialogOptions *)self->_options alternateButtonTitle];
    [v7 setObject:alternateButtonTitle2 forKey:*MEMORY[0x1E695EE70]];
  }

  if ([(MSVSystemDialogOptions *)self->_options showAsTopmost])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695EE68]];
  }

  if ([(MSVSystemDialogOptions *)self->_options forceModalAlertAppearance])
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v18 = getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr;
    v74 = getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr;
    if (!getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr)
    {
      v66 = MEMORY[0x1E69E9820];
      v67 = 3221225472;
      v68 = __getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_block_invoke;
      v69 = &unk_1E79828C0;
      v70 = &v71;
      v19 = SpringBoardServicesLibrary();
      v20 = dlsym(v19, "SBUserNotificationForcesModalAlertAppearance");
      *(v70[1] + 24) = v20;
      getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr = *(v70[1] + 24);
      v18 = v72[3];
    }

    _Block_object_dispose(&v71, 8);
    if (!v18)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationForcesModalAlertAppearance(void)"];
      [currentHandler handleFailureInFunction:v50 file:@"MSVSystemDialog.m" lineNumber:19 description:{@"%s", dlerror()}];

      goto LABEL_60;
    }

    v21 = *v18;
    [v7 setObject:MEMORY[0x1E695E118] forKey:v21];
  }

  if ([(MSVSystemDialogOptions *)self->_options showOnLockscreen])
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v22 = getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr;
    v74 = getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr;
    if (!getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr)
    {
      v66 = MEMORY[0x1E69E9820];
      v67 = 3221225472;
      v68 = __getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_block_invoke;
      v69 = &unk_1E79828C0;
      v70 = &v71;
      v23 = SpringBoardServicesLibrary();
      v24 = dlsym(v23, "SBUserNotificationDisplayActionButtonOnLockScreen");
      *(v70[1] + 24) = v24;
      getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr = *(v70[1] + 24);
      v22 = v72[3];
    }

    _Block_object_dispose(&v71, 8);
    if (!v22)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationDisplayActionButtonOnLockScreen(void)"];
      [currentHandler2 handleFailureInFunction:v52 file:@"MSVSystemDialog.m" lineNumber:20 description:{@"%s", dlerror()}];

      goto LABEL_60;
    }

    v25 = *v22;
    [v7 setObject:MEMORY[0x1E695E118] forKey:v25];
  }

  if ([(MSVSystemDialogOptions *)self->_options dismissOverlaysOnLockscreen])
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v26 = getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr;
    v74 = getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr;
    if (!getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr)
    {
      v66 = MEMORY[0x1E69E9820];
      v67 = 3221225472;
      v68 = __getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_block_invoke;
      v69 = &unk_1E79828C0;
      v70 = &v71;
      v27 = SpringBoardServicesLibrary();
      v28 = dlsym(v27, "SBUserNotificationDismissesOverlaysInLockScreen");
      *(v70[1] + 24) = v28;
      getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr = *(v70[1] + 24);
      v26 = v72[3];
    }

    _Block_object_dispose(&v71, 8);
    if (!v26)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationDismissesOverlaysInLockScreen(void)"];
      [currentHandler3 handleFailureInFunction:v54 file:@"MSVSystemDialog.m" lineNumber:21 description:{@"%s", dlerror()}];

      goto LABEL_60;
    }

    v29 = *v26;
    [v7 setObject:MEMORY[0x1E695E118] forKey:v29];
  }

  allowedApplicationBundleIDs = [(MSVSystemDialogOptions *)self->_options allowedApplicationBundleIDs];
  if ([allowedApplicationBundleIDs count])
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v31 = getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr;
    v74 = getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr;
    if (!getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr)
    {
      v66 = MEMORY[0x1E69E9820];
      v67 = 3221225472;
      v68 = __getSBUserNotificationAllowedApplicationsKeySymbolLoc_block_invoke;
      v69 = &unk_1E79828C0;
      v70 = &v71;
      v32 = SpringBoardServicesLibrary();
      v33 = dlsym(v32, "SBUserNotificationAllowedApplicationsKey");
      *(v70[1] + 24) = v33;
      getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr = *(v70[1] + 24);
      v31 = v72[3];
    }

    _Block_object_dispose(&v71, 8);
    if (v31)
    {
      v34 = *v31;
      [v7 setObject:allowedApplicationBundleIDs forKey:v34];

      goto LABEL_35;
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationAllowedApplicationsKey(void)"];
    [currentHandler4 handleFailureInFunction:v48 file:@"MSVSystemDialog.m" lineNumber:22 description:{@"%s", dlerror()}];

LABEL_60:
    __break(1u);
  }

LABEL_35:
  if ([(NSMutableArray *)self->_textFields count])
  {
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_textFields, "count")}];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = self->_textFields;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v58 objects:v75 count:16];
    if (v37)
    {
      v38 = *v59;
      do
      {
        v39 = 0;
        do
        {
          if (*v59 != v38)
          {
            objc_enumerationMutation(v36);
          }

          title = [*(*(&v58 + 1) + 8 * v39) title];
          if (title)
          {
            [v35 addObject:title];
          }

          ++v39;
        }

        while (v37 != v39);
        v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v58 objects:v75 count:16];
      }

      while (v37);
    }

    if ([v35 count])
    {
      [v7 setObject:v35 forKey:*MEMORY[0x1E695EEA0]];
    }
  }

  if ([(NSMutableArray *)self->_textFields count])
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFields = self->_textFields;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __41__MSVSystemDialog_presentWithCompletion___block_invoke;
    v55[3] = &unk_1E7982820;
    v57 = &v62;
    v43 = v41;
    v56 = v43;
    [(NSMutableArray *)textFields enumerateObjectsUsingBlock:v55];
    [v7 setObject:v43 forKey:*MEMORY[0x1E695EE88]];
  }

  v6 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, v63[3], 0, v7);

LABEL_51:
  if (v6)
  {
    v44 = +[MSVSystemDialogManager sharedManager];
    [v44 registerSystemDialog:self forUserNotification:v6];
    RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x1E695E480], v6, _MSVSystemDialogUserNotificationCallback, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x1E695E8E0]);
    CFRelease(RunLoopSource);
    [(MSVSystemDialog *)self setPresentedUserNotification:v6];
    [(MSVSystemDialog *)self setPendingCompletion:completionCopy];
    [(MSVSystemDialog *)self setActiveRunLoopSource:RunLoopSource];
    CFRelease(v6);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  _Block_object_dispose(&v62, 8);
}

void __41__MSVSystemDialog_presentWithCompletion___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ([v5 isSecure])
  {
    *(*(*(a1 + 40) + 8) + 24) |= 1 << (a3 + 16);
  }

  v6 = [v5 keyboardType];

  if (v6 == 2)
  {
    v7 = 7;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 3)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  [v9 addObject:v10];
}

- (void)addTextFieldWithTitle:(id)title secure:(BOOL)secure
{
  v5 = [MSVSystemDialogTextField textFieldWithTitle:title secure:secure];
  [(MSVSystemDialog *)self addTextField:v5];
}

- (void)setPendingCompletion:(id)completion
{
  self->_pendingCompletion = [completion copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)pendingCompletion
{
  v2 = MEMORY[0x1B26EC6C0](self->_pendingCompletion, a2);

  return v2;
}

- (void)setActiveRunLoopSource:(__CFRunLoopSource *)source
{
  activeRunLoopSource = self->_activeRunLoopSource;
  if (activeRunLoopSource)
  {
    CFRunLoopSourceInvalidate(activeRunLoopSource);
    CFRelease(self->_activeRunLoopSource);
  }

  self->_activeRunLoopSource = source;
  if (source)
  {

    CFRetain(source);
  }
}

- (void)setPresentedUserNotification:(__CFUserNotification *)notification
{
  presentedUserNotification = self->_presentedUserNotification;
  if (presentedUserNotification)
  {
    CFRelease(presentedUserNotification);
  }

  self->_presentedUserNotification = notification;
  if (notification)
  {

    CFRetain(notification);
  }
}

- (void)dealloc
{
  presentedUserNotification = self->_presentedUserNotification;
  if (presentedUserNotification)
  {
    CFRelease(presentedUserNotification);
  }

  preparedUserNotification = self->_preparedUserNotification;
  if (preparedUserNotification)
  {
    CFRelease(preparedUserNotification);
  }

  activeRunLoopSource = self->_activeRunLoopSource;
  if (activeRunLoopSource)
  {
    CFRunLoopSourceInvalidate(activeRunLoopSource);
    CFRelease(self->_activeRunLoopSource);
  }

  v6.receiver = self;
  v6.super_class = MSVSystemDialog;
  [(MSVSystemDialog *)&v6 dealloc];
}

- (MSVSystemDialog)initWithCFUserNotification:(__CFUserNotification *)notification
{
  v6.receiver = self;
  v6.super_class = MSVSystemDialog;
  v4 = [(MSVSystemDialog *)&v6 init];
  if (v4)
  {
    v4->_preparedUserNotification = CFRetain(notification);
  }

  return v4;
}

- (MSVSystemDialog)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = MSVSystemDialog;
  v6 = [(MSVSystemDialog *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFields = v7->_textFields;
    v7->_textFields = v8;
  }

  return v7;
}

+ (id)systemDialogWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [[MSVSystemDialog alloc] initWithOptions:optionsCopy];

  return v4;
}

@end