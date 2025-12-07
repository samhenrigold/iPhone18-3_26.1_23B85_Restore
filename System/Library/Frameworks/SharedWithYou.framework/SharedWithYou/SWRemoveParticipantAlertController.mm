@interface SWRemoveParticipantAlertController
+ (SWRemoveParticipantAlertController)alertControllerWithParticipant:(SWPerson *)participant highlight:(SWCollaborationHighlight *)highlight;
- (id)_initWithParticipant:(id)participant highlight:(id)highlight;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SWRemoveParticipantAlertController

- (id)_initWithParticipant:(id)participant highlight:(id)highlight
{
  participantCopy = participant;
  highlightCopy = highlight;
  v17.receiver = self;
  v17.super_class = SWRemoveParticipantAlertController;
  v11 = [(SWRemoveParticipantAlertController *)&v17 init];
  if (v11)
  {
    title = [highlightCopy title];
    if (title)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = SWFrameworkBundle();
      v4 = [v14 localizedStringForKey:@"PERSON_HAS_BEEN_REMOVED_FROM_THIS_COLLABORATION_WITH_NAME" value:&stru_1F3ABB850 table:@"SharedWithYou"];
      displayName = [participantCopy displayName];
      title2 = [highlightCopy title];
      [v13 stringWithFormat:v4, displayName, title2];
    }

    else
    {
      v14 = SWFrameworkBundle();
      [v14 localizedStringForKey:@"PERSON_HAS_BEEN_REMOVED_FROM_THIS_COLLABORATION_WITHOUT_NAME" value:&stru_1F3ABB850 table:@"SharedWithYou"];
    }
    v15 = ;
    objc_storeStrong(&v11->_messageText, v15);
    if (title)
    {

      v15 = v4;
    }
  }

  return v11;
}

+ (SWRemoveParticipantAlertController)alertControllerWithParticipant:(SWPerson *)participant highlight:(SWCollaborationHighlight *)highlight
{
  v5 = highlight;
  v6 = participant;
  v7 = [[SWRemoveParticipantAlertController alloc] _initWithParticipant:v6 highlight:v5];

  [v7 setModalPresentationStyle:6];

  return v7;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v16.receiver = self;
  v16.super_class = SWRemoveParticipantAlertController;
  [(SWRemoveParticipantAlertController *)&v16 viewDidAppear:?];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(SWRemoveParticipantAlertController *)self view];
  [view setBackgroundColor:clearColor];

  objc_initWeak(&location, self);
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:self->_messageText message:0 preferredStyle:1];
  v8 = MEMORY[0x1E69DC648];
  v9 = SWFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F3ABB850 table:@"SharedWithYou"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__SWRemoveParticipantAlertController_viewDidAppear___block_invoke;
  v12[3] = &unk_1E7FDE0D8;
  objc_copyWeak(&v13, &location);
  v14 = appearCopy;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];

  [v7 addAction:v11];
  [(SWRemoveParticipantAlertController *)self presentViewController:v7 animated:appearCopy completion:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __52__SWRemoveParticipantAlertController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:*(a1 + 40) completion:0];
}

void __54___SWRemoveParticipantAlertController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7 && !v6 && WeakRetained)
  {
    [v7 setDelegate:WeakRetained];
    [v9 addChildViewController:v7];
    v10 = [v9 view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v7 view];
    [v19 setFrame:{v12, v14, v16, v18}];

    v20 = [v7 view];
    [v20 setAutoresizingMask:18];

    v21 = [v9 view];
    v22 = [v7 view];
    [v21 addSubview:v22];

    [v7 didMoveToParentViewController:v9];
    v23 = [v9 participant];
    v24 = [v9 highlight];
    [v7 _promptToRemoveParticipant:v23 fromHighlight:v24 preferredStyle:{objc_msgSend(v9, "preferredStyle")}];
  }

  else
  {
    v25 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412802;
      v27 = v7;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v6;
      _os_log_error_impl(&dword_1BBC06000, v25, OS_LOG_TYPE_ERROR, "Failed to present _SWRemoveParticipantAlertRemoteController. Dismissing without prompting the user for changes to the Messages group. remotePromptController: %@, presenter: %@, error: %@", &v26, 0x20u);
    }

    [v9 dismissAlert];
  }
}

@end