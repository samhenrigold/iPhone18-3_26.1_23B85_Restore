@interface CKMessageActionChatItem
- (id)handle;
- (id)loadTranscriptText;
- (id)sender;
- (int64_t)actionType;
- (void)loadTranscriptText;
@end

@implementation CKMessageActionChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  sender = [(CKMessageActionChatItem *)self sender];
  handle = [(CKMessageActionChatItem *)self handle];
  name = [sender name];
  v10 = name;
  if (name)
  {
    v11 = name;
  }

  else
  {
    v12 = CKFrameworkBundle(0);
    v11 = [v12 localizedStringForKey:@"SOMEONE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  name2 = [handle name];
  v14 = name2;
  if (name2)
  {
    v15 = name2;
  }

  else
  {
    v16 = CKFrameworkBundle(0);
    v15 = [v16 localizedStringForKey:@"SOMEONE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  actionType = [(CKMessageActionChatItem *)self actionType];
  switch(actionType)
  {
    case 2:
      iMChatItem = [(CKChatItem *)self IMChatItem];
      balloonBundleID = [iMChatItem balloonBundleID];

      if (balloonBundleID)
      {
        mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
        v26 = [mEMORY[0x1E69A5AD0] dataSourceClassForBundleID:balloonBundleID];

        if (v26)
        {
          v21 = [v26 previewSummaryForPluginBundle:balloonBundleID];
        }

        else
        {
          v37 = CKFrameworkBundle(v27);
          v21 = [v37 localizedStringForKey:@"A_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
        }
      }

      else
      {
        v35 = CKFrameworkBundle(v24);
        v21 = [v35 localizedStringForKey:@"A_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

        v36 = IMLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(CKMessageActionChatItem *)self loadTranscriptText];
        }
      }

      if (!sender)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    case 1:
      v18 = CKFrameworkBundle(1);
      v19 = v18;
      v20 = @"VIDEO_SAVE_ACTION";
LABEL_12:
      v21 = [v18 localizedStringForKey:v20 value:&stru_1F04268F8 table:@"ChatKit"];

      if (!sender)
      {
        goto LABEL_18;
      }

LABEL_24:
      v38 = CKFrameworkBundle(actionType);
      v28 = v38;
      if (handle)
      {
        [v38 localizedStringForKey:@"MESSAGE_SAVE_ACTION_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        [v38 localizedStringForKey:@"MESSAGE_SAVE_YOU_ACTION_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }
      v29 = ;
      CKAttributedFormatString(transcriptRegularFontAttributes, transcriptEmphasizedFontAttributes, v29, v39, v40, v41, v42, v43, v11);
      goto LABEL_28;
    case 0:
      v18 = CKFrameworkBundle(0);
      v19 = v18;
      v20 = @"AUDIO_SAVE_ACTION";
      goto LABEL_12;
  }

  v21 = 0;
  if (sender)
  {
    goto LABEL_24;
  }

LABEL_18:
  v28 = CKFrameworkBundle(actionType);
  v29 = [v28 localizedStringForKey:@"MESSAGE_YOU_SAVE_ACTION_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
  CKAttributedFormatString(transcriptRegularFontAttributes, transcriptEmphasizedFontAttributes, v29, v30, v31, v32, v33, v34, v21);
  v44 = LABEL_28:;

  return v44;
}

- (int64_t)actionType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  actionType = [iMChatItem actionType];

  return actionType;
}

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (id)handle
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  otherHandle = [iMChatItem otherHandle];

  return otherHandle;
}

- (void)loadTranscriptText
{
  v6 = *MEMORY[0x1E69E9840];
  iMChatItem = [self IMChatItem];
  v4 = 138412290;
  v5 = iMChatItem;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Unable to find a bundle ID for IMChatItem: %@", &v4, 0xCu);
}

@end