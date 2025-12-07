@interface AXCACCustomCommandEditorServiceViewController
- (AXCACCustomCommandEditorServiceViewController)init;
- (void)_dismiss;
- (void)_saveCommandItem;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AXCACCustomCommandEditorServiceViewController

- (AXCACCustomCommandEditorServiceViewController)init
{
  v23.receiver = self;
  v23.super_class = AXCACCustomCommandEditorServiceViewController;
  v5 = [(AXCACCustomCommandEditorServiceViewController *)&v23 init];
  if (v5)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v6 = qword_100031868;
    v32 = qword_100031868;
    if (!qword_100031868)
    {
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100002A68;
      v27 = &unk_100028780;
      v28 = &v29;
      sub_100002A68(&v24, v2, v3, v4);
      v6 = v30[3];
    }

    v7 = v6;
    _Block_object_dispose(&v29, 8);
    v8 = objc_alloc_init(v6);
    [v8 setDelegate:v5];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v9 = qword_100031878;
    v32 = qword_100031878;
    if (!qword_100031878)
    {
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100002C34;
      v27 = &unk_100028780;
      v28 = &v29;
      sub_100002C34(&v24);
      v9 = v30[3];
    }

    v10 = v9;
    _Block_object_dispose(&v29, 8);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v11 = qword_100031880;
    v32 = qword_100031880;
    if (!qword_100031880)
    {
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100002C8C;
      v27 = &unk_100028780;
      v28 = &v29;
      sub_100002C8C(&v24);
      v11 = v30[3];
    }

    v12 = v11;
    _Block_object_dispose(&v29, 8);
    sharedPreferences = [v11 sharedPreferences];
    bestLocaleIdentifier = [sharedPreferences bestLocaleIdentifier];
    v15 = [v9 newCommandItemWithLocale:bestLocaleIdentifier scope:@"com.apple.speech.SystemWideScope"];
    [v8 setCommandItem:v15];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CommandAndControlCustomCommandEditor.new.command" value:&stru_100028F48 table:@"AXUIViewService"];
    [v8 setTitle:v17];

    editor = v5->_editor;
    v5->_editor = v8;
    v19 = v8;

    v20 = [[UINavigationController alloc] initWithRootViewController:v5->_editor];
    editorNavigationController = v5->_editorNavigationController;
    v5->_editorNavigationController = v20;
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = AXCACCustomCommandEditorServiceViewController;
  [(AXCACCustomCommandEditorServiceViewController *)&v10 viewDidAppear:appear];
  view = [(AXCACCustomCommandEditorServiceViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  editorNavigationController = [(AXCACCustomCommandEditorServiceViewController *)self editorNavigationController];
  presentationController = [editorNavigationController presentationController];
  [presentationController setDelegate:self];

  editorNavigationController2 = [(AXCACCustomCommandEditorServiceViewController *)self editorNavigationController];
  [(AXCACCustomCommandEditorServiceViewController *)self presentViewController:editorNavigationController2 animated:1 completion:0];
}

- (void)_saveCommandItem
{
  editor = [(AXCACCustomCommandEditorServiceViewController *)self editor];
  commandItem = [editor commandItem];

  dictionaryForSavingToPreferences = [commandItem dictionaryForSavingToPreferences];
  if (dictionaryForSavingToPreferences)
  {
    identifier = [commandItem identifier];

    if (identifier)
    {
      v23[0] = kAXCACCustomCommandIdentifierKey;
      identifier2 = [commandItem identifier];
      v23[1] = kAXCACCustomCommandDictionaryKey;
      v24[0] = identifier2;
      v24[1] = dictionaryForSavingToPreferences;
      v8 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      UIAccessibilityPostNotification(0x7ECu, v8);
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v9 = off_100031888;
      v22 = off_100031888;
      if (!off_100031888)
      {
        v15 = _NSConcreteStackBlock;
        v16 = 3221225472;
        v17 = sub_100002CE4;
        v18 = &unk_100028780;
        v10 = sub_100002AC0();
        v20[3] = dlsym(v10, "CACLogPreferences");
        off_100031888 = v20[3];
        v9 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (!v9)
      {
        sub_100012D7C();
        __break(1u);
      }

      identifier2 = v9(v11, v12, v13, v14);
      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
      {
        sub_100012D08();
      }
    }
  }

  [(AXCACCustomCommandEditorServiceViewController *)self _dismiss:v15];
}

- (void)_dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000023AC;
  v2[3] = &unk_100028758;
  v2[4] = self;
  [(AXCACCustomCommandEditorServiceViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  userInfo = [contextCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:AXCACCommandEditorTextToInsertKey];

  userInfo2 = [contextCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:AXCACCommandEditorGestureKey];

  userInfo3 = [contextCopy userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:AXCACCommandEditorUserActionFlowKey];

  userInfo4 = [contextCopy userInfo];
  v15 = [userInfo4 objectForKeyedSubscript:AXCACCommandEditorShortcutWorkflowKey];

  userInfo5 = [contextCopy userInfo];
  v52 = [userInfo5 objectForKeyedSubscript:AXCACCommandEditorPasteboardKey];

  if (!v9 && !v11 && !v13)
  {
    v21 = sub_1000028D4(v17, v18, v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100012DA0(contextCopy, v21);
    }
  }

  editor = [(AXCACCustomCommandEditorServiceViewController *)self editor];
  commandItem = [editor commandItem];

  if (v9)
  {
    if (![v9 length])
    {
      v27 = sub_1000028D4(0, v24, v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100012E38(v27);
      }
    }

    [commandItem setCustomType:@"PasteText"];
    [commandItem setCustomTextToInsert:v9];
    goto LABEL_30;
  }

  if (v11)
  {
    v51 = v15;
    v54 = 0;
    v28 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v54];
    v29 = v54;
    v33 = v29;
    if (v28)
    {
      [commandItem setCustomType:@"RunGesture"];
      [commandItem setCustomGesture:v28];
LABEL_29:

      v15 = v51;
      goto LABEL_30;
    }

    v40 = sub_1000028D4(v29, v30, v31, v32);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_100012E7C();
    }

    goto LABEL_28;
  }

  if (v13)
  {
    v51 = v15;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2050000000;
    v34 = qword_100031898;
    v59 = qword_100031898;
    if (!qword_100031898)
    {
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100002D84;
      v55[3] = &unk_100028780;
      v55[4] = &v56;
      sub_100002D84(v55);
      v34 = v57[3];
    }

    v35 = v34;
    _Block_object_dispose(&v56, 8);
    v53 = 0;
    v28 = [NSKeyedUnarchiver unarchivedObjectOfClass:v34 fromData:v13 error:&v53];
    v36 = v53;
    v33 = v36;
    if (v28)
    {
      [commandItem setCustomType:@"RunUserActionFlow"];
      [commandItem setCustomUserActionFlow:v28];
      goto LABEL_29;
    }

    v40 = sub_1000028D4(v36, v37, v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_100012EF0();
    }

LABEL_28:

    goto LABEL_29;
  }

  if (v15)
  {
    v41 = +[AXSiriShortcutsManager sharedManager];
    v42 = [v41 shortcutForIdentifier:v15];

    if (v42)
    {
      [commandItem setCustomType:@"RunShortcutsWorkflow"];
      [commandItem setCustomShortcutsWorkflowIdentifier:v15];
    }

    else
    {
      v50 = sub_1000028D4(v43, v44, v45, v46);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_100012F64();
      }
    }
  }

LABEL_30:
  userInfo6 = [contextCopy userInfo];
  v48 = [userInfo6 objectForKeyedSubscript:AXCACCommandEditorApplicationIdentifiersToNamesKey];

  editor2 = [(AXCACCustomCommandEditorServiceViewController *)self editor];
  [editor2 setApplicationIdentifiersToNames:v48];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end