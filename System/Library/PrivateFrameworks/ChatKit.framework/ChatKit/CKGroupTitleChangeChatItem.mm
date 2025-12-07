@interface CKGroupTitleChangeChatItem
- (BOOL)failed;
- (BOOL)unattributed;
- (NSString)errorText;
- (NSString)title;
- (id)loadTranscriptText;
- (id)sender;
@end

@implementation CKGroupTitleChangeChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorRegularFontAttributes = [v7 transcriptGroupModificationErrorRegularFontAttributes];

  v9 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorEmphasizedFontAttributes = [v9 transcriptGroupModificationErrorEmphasizedFontAttributes];

  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v11 = transcriptGroupModificationErrorRegularFontAttributes;
  }

  else
  {
    v11 = transcriptRegularFontAttributes;
  }

  v12 = v11;
  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v13 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  }

  else
  {
    v13 = transcriptEmphasizedFontAttributes;
  }

  v14 = v13;
  sender = [(CKGroupTitleChangeChatItem *)self sender];
  name = [sender name];
  v17 = name;
  if (name)
  {
    v18 = name;
  }

  else
  {
    v18 = &stru_1F04268F8;
  }

  v90 = v18;

  title = [(CKGroupTitleChangeChatItem *)self title];
  v20 = title;
  if (title)
  {
    v21 = title;
  }

  else
  {
    v21 = &stru_1F04268F8;
  }

  v22 = v21;

  v88 = sender;
  v89 = v22;
  if (![(CKGroupTitleChangeChatItem *)self unattributed])
  {
    v33 = [(__CFString *)v22 length];
    v34 = CKFrameworkBundle(v33);
    mEMORY[0x1E69A60F0] = v34;
    if (sender)
    {
      if (v33)
      {
        [v34 localizedStringForKey:@"GROUP_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        [v34 localizedStringForKey:@"GROUP_REMOVE_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }
      v41 = ;
      v63 = v90;
    }

    else
    {
      if (!v33)
      {
        v41 = [v34 localizedStringForKey:@"GROUP_YOU_REMOVE_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
        CKAttributedFormatString(v12, v14, v41, v79, v80, v81, v82, v83, 0);
        goto LABEL_28;
      }

      v41 = [v34 localizedStringForKey:@"GROUP_YOU_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      v63 = v89;
    }

    CKAttributedFormatString(v12, v14, v41, v58, v59, v60, v61, v62, v63);
    v57 = LABEL_28:;
    goto LABEL_29;
  }

  v23 = v22;
  v24 = [(__CFString *)v22 length];
  v25 = CKFrameworkBundle(v24);
  v26 = v25;
  if (v24)
  {
    v27 = [v25 localizedStringForKey:@"GROUP_SYSTEM_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v12, v14, v27, v28, v29, v30, v31, v32, v23);
  }

  else
  {
    v27 = [v25 localizedStringForKey:@"GROUP_SYSTEM_REMOVE_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v12, v14, v27, v36, v37, v38, v39, v40, 0);
  }
  v41 = ;

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![mEMORY[0x1E69A60F0] isInternalInstall])
  {
    goto LABEL_30;
  }

  v42 = IMGetDomainBoolForKey();

  if (!v42)
  {
    goto LABEL_31;
  }

  mEMORY[0x1E69A60F0] = objc_alloc_init(MEMORY[0x1E696AD40]);
  [mEMORY[0x1E69A60F0] appendAttributedString:v41];
  v43 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [mEMORY[0x1E69A60F0] appendAttributedString:v43];

  v45 = CKFrameworkBundle(v44);
  [v45 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
  v84 = transcriptRegularFontAttributes;
  v46 = v86 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  CKAttributedFormatString(v12, v14, v46, v47, v48, v49, v50, v51, v90);
  v52 = v14;
  v53 = v12;
  v54 = transcriptGroupModificationErrorRegularFontAttributes;
  v56 = v55 = transcriptEmphasizedFontAttributes;
  [mEMORY[0x1E69A60F0] appendAttributedString:v56];

  transcriptEmphasizedFontAttributes = v55;
  transcriptGroupModificationErrorRegularFontAttributes = v54;
  v12 = v53;
  v14 = v52;

  transcriptRegularFontAttributes = v84;
  transcriptGroupModificationErrorEmphasizedFontAttributes = v86;

  v57 = [mEMORY[0x1E69A60F0] copy];
LABEL_29:
  v64 = v57;

  v41 = v64;
LABEL_30:

LABEL_31:
  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v65 = MEMORY[0x1E69DCAD8];
    v66 = +[CKUIBehavior sharedBehaviors];
    [v66 transcriptLightFont];
    v85 = transcriptRegularFontAttributes;
    v67 = v87 = transcriptGroupModificationErrorEmphasizedFontAttributes;
    v68 = [v65 configurationWithFont:v67];

    v69 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v68];
    [MEMORY[0x1E69DC888] redColor];
    v70 = v14;
    v71 = v12;
    v73 = v72 = transcriptEmphasizedFontAttributes;
    v74 = [v69 imageWithTintColor:v73];

    v75 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v75 setImage:v74];
    v76 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v75 attributes:transcriptGroupModificationErrorRegularFontAttributes];
    v77 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v76 appendAttributedString:v77];

    transcriptEmphasizedFontAttributes = v72;
    v12 = v71;
    v14 = v70;
    [v76 appendAttributedString:v41];

    transcriptRegularFontAttributes = v85;
    transcriptGroupModificationErrorEmphasizedFontAttributes = v87;
  }

  else
  {
    v76 = v41;
  }

  return v76;
}

- (BOOL)failed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  failed = [iMChatItem failed];

  return failed;
}

- (NSString)title
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  title = [iMChatItem title];

  return title;
}

- (NSString)errorText
{
  v2 = CKFrameworkBundle(self);
  v3 = [v2 localizedStringForKey:@"GROUP_NAME_CHANGE_ERROR_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (BOOL)unattributed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  unattributed = [iMChatItem unattributed];

  return unattributed;
}

@end