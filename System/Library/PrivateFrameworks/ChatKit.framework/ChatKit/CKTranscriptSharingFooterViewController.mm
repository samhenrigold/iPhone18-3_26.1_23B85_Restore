@interface CKTranscriptSharingFooterViewController
- (CKTranscriptSharingFooterViewController)initWithConversation:(id)conversation;
- (void)configurePocketInteractionForScrollView:(id)view;
- (void)loadView;
@end

@implementation CKTranscriptSharingFooterViewController

- (CKTranscriptSharingFooterViewController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v9.receiver = self;
  v9.super_class = CKTranscriptSharingFooterViewController;
  v6 = [(CKTranscriptSharingFooterViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, conversation);
  }

  return v7;
}

- (void)loadView
{
  v53[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    v5 = [CKTranscriptSharingFooterView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v44 = [(CKTranscriptSharingFooterView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(CKTranscriptSharingFooterViewController *)self setView:v44];
    conversation = [(CKTranscriptSharingFooterViewController *)self conversation];
    chat = [conversation chat];
    emergencyUserHandle = [chat emergencyUserHandle];

    conversation2 = [(CKTranscriptSharingFooterViewController *)self conversation];
    chat2 = [conversation2 chat];
    v48 = emergencyUserHandle;
    v15 = [emergencyUserHandle displayNameForChat:chat2];

    v16 = MEMORY[0x1E696AEC0];
    v18 = CKFrameworkBundle(v17);
    v19 = [v18 localizedStringForKey:@"TS_DESCRIPTION_INPUT_DISABLED_DESCRIPTION" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v47 = v15;
    [v16 localizedStringWithFormat:v19, v15];
    v20 = v45 = self;

    v21 = objc_alloc(MEMORY[0x1E696AD40]);
    v22 = CKFrameworkBundle(v21);
    v23 = [v22 localizedStringForKey:@"TS_DESCRIPTION_INPUT_DISABLED_TITLE" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v51 = *MEMORY[0x1E69DB648];
    v24 = v51;
    v25 = +[CKUIBehavior sharedBehaviors];
    transcriptFooterNoteTitleFont = [v25 transcriptFooterNoteTitleFont];
    v53[0] = transcriptFooterNoteTitleFont;
    v52 = *MEMORY[0x1E69DB650];
    v27 = v52;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v53[1] = labelColor;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v51 count:2];
    v30 = [v21 initWithString:v23 attributes:v29];

    v31 = objc_alloc(MEMORY[0x1E696AD40]);
    v49[0] = v24;
    v32 = +[CKUIBehavior sharedBehaviors];
    transcriptFooterNoteBodyFont = [v32 transcriptFooterNoteBodyFont];
    v49[1] = v27;
    v50[0] = transcriptFooterNoteBodyFont;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v50[1] = secondaryLabelColor;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
    v46 = v20;
    v36 = [v31 initWithString:v20 attributes:v35];

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v32) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

    if ((v32 & 1) == 0)
    {
      v38 = [objc_alloc(MEMORY[0x1E69DD180]) initWithFrame:{v6, v7, v8, v9}];
      view = [(CKTranscriptSharingFooterViewController *)v45 view];
      [view addSubview:v38];

      [(CKTranscriptSharingFooterView *)v44 setToolbar:v38];
    }

    v40 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v40 setAttributedText:v30];
    [v40 setNumberOfLines:0];
    view2 = [(CKTranscriptSharingFooterViewController *)v45 view];
    [view2 addSubview:v40];

    [(CKTranscriptSharingFooterView *)v44 setFooterTextViewTitle:v40];
    v42 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v42 setAttributedText:v36];
    [v42 setNumberOfLines:0];
    view3 = [(CKTranscriptSharingFooterViewController *)v45 view];
    [view3 addSubview:v42];

    [(CKTranscriptSharingFooterView *)v44 setFooterTextViewDesc:v42];
  }
}

- (void)configurePocketInteractionForScrollView:(id)view
{
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:viewCopy edge:4];
    view = [(CKTranscriptSharingFooterViewController *)self view];
    [view addInteraction:v6];
  }
}

@end