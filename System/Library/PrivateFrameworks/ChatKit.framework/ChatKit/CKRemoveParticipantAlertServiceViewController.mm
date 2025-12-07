@interface CKRemoveParticipantAlertServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (void)_dismissAndCleanup;
- (void)promptToRemoveParticipant:(id)participant fromHighlight:(id)highlight usingPreferredStyle:(int64_t)style;
- (void)viewDidLoad;
@end

@implementation CKRemoveParticipantAlertServiceViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKRemoveParticipantAlertServiceViewController;
  [(CKRemoveParticipantAlertServiceViewController *)&v5 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(CKRemoveParticipantAlertServiceViewController *)self view];
  [view setBackgroundColor:clearColor];
}

- (void)promptToRemoveParticipant:(id)participant fromHighlight:(id)highlight usingPreferredStyle:(int64_t)style
{
  participantCopy = participant;
  highlightCopy = highlight;
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "promptToRemoveParticipant", buf, 2u);
  }

  objc_initWeak(buf, self);
  displayName = [participantCopy displayName];
  mEMORY[0x1E69A5C78] = [MEMORY[0x1E69A5C78] sharedController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke;
  v15[3] = &unk_1E72F6408;
  objc_copyWeak(v19, buf);
  v13 = participantCopy;
  v16 = v13;
  v14 = displayName;
  v19[1] = style;
  v17 = v14;
  selfCopy = self;
  [mEMORY[0x1E69A5C78] fetchAttributionsForHighlight:highlightCopy completionHandler:v15];

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke(uint64_t a1, void *a2)
{
  v71[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 attributions];
  if ([v4 count] < 2)
  {
    v6 = [v4 firstObject];
    v7 = [v6 conversationIdentifier];
    v8 = [MEMORY[0x1E69A5AF8] sharedRegistryIfAvailable];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 existingChatWithGUID:v7];
      v11 = v10;
      if (v10)
      {
        if ([v10 isGroupChat])
        {
          v12 = [v11 account];
          v13 = [*(a1 + 32) handle];
          v59 = [v12 existingIMHandleWithID:v13];

          if (v59)
          {
            v57 = [[CKConversation alloc] initWithChat:v11];
            v14 = [(CKConversation *)v57 displayName];
            v15 = v14;
            if (v14)
            {
              v56 = v14;
            }

            else
            {
              v56 = [(CKConversation *)v57 name];
            }

            v71[0] = v59;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
            v21 = [v11 canRemoveParticipants:v20];

            if (v21)
            {
              v54 = MEMORY[0x1E696AEC0];
              v23 = CKFrameworkBundle(v22);
              v24 = [v23 localizedStringForKey:@"REMOVE_PARTICIPANT_FROM_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
              v55 = [v54 stringWithFormat:v24, *(a1 + 40), v56];

              v52 = MEMORY[0x1E696AEC0];
              v26 = CKFrameworkBundle(v25);
              v27 = [v26 localizedStringForKey:@"PARTICIPANT_REMOVED_FROM_COLLABORATIVE_DOCUMENT_SHARED_WITH_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
              v53 = [v52 stringWithFormat:v27, *(a1 + 40), v56];

              v50 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v55 message:v53 preferredStyle:*(a1 + 64)];
              v48 = MEMORY[0x1E69DC648];
              v28 = MEMORY[0x1E696AEC0];
              v29 = CKFrameworkBundle(v50);
              v30 = [v29 localizedStringForKey:@"REMOVE_FROM_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
              v45 = [v28 stringWithFormat:v30, v56];
              v64[0] = MEMORY[0x1E69E9820];
              v64[1] = 3221225472;
              v64[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_2;
              v64[3] = &unk_1E72F63E0;
              v65 = v57;
              v66 = v59;
              objc_copyWeak(&v67, (a1 + 56));
              v49 = [v48 actionWithTitle:v45 style:0 handler:v64];

              v46 = MEMORY[0x1E69DC648];
              v32 = CKFrameworkBundle(v31);
              v33 = [v32 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
              v62[0] = MEMORY[0x1E69E9820];
              v62[1] = 3221225472;
              v62[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_107;
              v62[3] = &unk_1E72EC698;
              objc_copyWeak(&v63, (a1 + 56));
              v47 = [v46 actionWithTitle:v33 style:1 handler:v62];

              [v50 addAction:v49];
              [v50 addAction:v47];
              [*(a1 + 48) presentViewController:v50 animated:1 completion:0];
              WeakRetained = objc_loadWeakRetained((a1 + 56));
              [WeakRetained _dismissAndCleanup];

              objc_destroyWeak(&v63);
              objc_destroyWeak(&v67);
            }

            else
            {
              v35 = IMLogHandleForCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Notifying that the participant is still a member of a 3-person group", buf, 2u);
              }

              v36 = MEMORY[0x1E696AEC0];
              v38 = CKFrameworkBundle(v37);
              v39 = [v38 localizedStringForKey:@"PARTICIPANT_IS_STILL_IN_MESSAGES_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
              v55 = [v36 stringWithFormat:v39, *(a1 + 40), v56];

              v53 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v55 preferredStyle:*(a1 + 64)];
              v40 = MEMORY[0x1E69DC648];
              v41 = MEMORY[0x1E696AEC0];
              v42 = CKFrameworkBundle(v53);
              v51 = [v42 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
              v43 = [v41 stringWithFormat:v51, v56];
              v68[0] = MEMORY[0x1E69E9820];
              v68[1] = 3221225472;
              v68[2] = __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_93;
              v68[3] = &unk_1E72EC698;
              objc_copyWeak(&v69, (a1 + 56));
              v44 = [v40 actionWithTitle:v43 style:0 handler:v68];

              [v53 addAction:v44];
              [*(a1 + 48) presentViewController:v53 animated:1 completion:0];

              objc_destroyWeak(&v69);
            }
          }

          else
          {
            v19 = IMLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Unable to find handle", buf, 2u);
            }

            v58 = objc_loadWeakRetained((a1 + 56));
            [v58 _dismissAndCleanup];
          }
        }

        else
        {
          v18 = IMLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Removing a single person from a collaboration sent to a 1-1 chat.", buf, 2u);
          }

          v61 = objc_loadWeakRetained((a1 + 56));
          [v61 _dismissAndCleanup];
        }
      }

      else
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_1(v7, v17);
        }

        v60 = objc_loadWeakRetained((a1 + 56));
        [v60 _dismissAndCleanup];
      }
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_2(v16);
      }

      v11 = objc_loadWeakRetained((a1 + 56));
      [v11 _dismissAndCleanup];
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_3(v5);
    }

    v6 = objc_loadWeakRetained((a1 + 56));
    [v6 _dismissAndCleanup];
  }
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_93(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndCleanup];
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Remove from the group selected by user", v6, 2u);
  }

  v3 = *(a1 + 32);
  v7[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 removeRecipientHandles:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dismissAndCleanup];
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_107(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Cancel selected by user", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndCleanup];
}

- (void)_dismissAndCleanup
{
  _remoteViewControllerProxy = [(CKRemoveParticipantAlertServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismissAlert];
}

+ (id)_remoteViewControllerInterface
{
  if (_remoteViewControllerInterface_onceToken != -1)
  {
    +[CKRemoveParticipantAlertServiceViewController _remoteViewControllerInterface];
  }

  v3 = _remoteViewControllerInterface_interface;

  return v3;
}

void __79__CKRemoveParticipantAlertServiceViewController__remoteViewControllerInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8A78];
  v1 = _remoteViewControllerInterface_interface;
  _remoteViewControllerInterface_interface = v0;
}

+ (id)_exportedInterface
{
  if (_exportedInterface_onceToken != -1)
  {
    +[CKRemoveParticipantAlertServiceViewController _exportedInterface];
  }

  v3 = _exportedInterface_interface;

  return v3;
}

void __67__CKRemoveParticipantAlertServiceViewController__exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06408C0];
  v1 = _exportedInterface_interface;
  _exportedInterface_interface = v0;

  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [_exportedInterface_interface setClasses:v3 forSelector:sel_promptToRemoveParticipant_fromHighlight_usingPreferredStyle_ argumentIndex:0 ofReply:0];
  [_exportedInterface_interface setClasses:v2 forSelector:sel_promptToRemoveParticipant_fromHighlight_usingPreferredStyle_ argumentIndex:1 ofReply:0];
}

void __109__CKRemoveParticipantAlertServiceViewController_promptToRemoveParticipant_fromHighlight_usingPreferredStyle___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "No chat found %@", &v2, 0xCu);
}

@end