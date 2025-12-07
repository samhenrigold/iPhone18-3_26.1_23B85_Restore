@interface CKGroupActionChatItem
- (BOOL)failed;
- (BOOL)unattributed;
- (IMHandle)sender;
- (NSArray)fileTransferGUIDs;
- (NSString)errorText;
- (id)loadTranscriptText;
- (int64_t)actionType;
@end

@implementation CKGroupActionChatItem

- (id)loadTranscriptText
{
  v108[2] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorRegularFontAttributes = [v7 transcriptGroupModificationErrorRegularFontAttributes];

  v9 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorEmphasizedFontAttributes = [v9 transcriptGroupModificationErrorEmphasizedFontAttributes];

  sender = [(CKGroupActionChatItem *)self sender];
  name = [sender name];
  v13 = name;
  v14 = &stru_1F04268F8;
  if (name)
  {
    v14 = name;
  }

  v15 = v14;

  v99 = transcriptRegularFontAttributes;
  if ([(CKGroupActionChatItem *)self failed])
  {
    v16 = transcriptGroupModificationErrorRegularFontAttributes;
  }

  else
  {
    v16 = transcriptRegularFontAttributes;
  }

  v17 = v16;
  v102 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  if ([(CKGroupActionChatItem *)self failed])
  {
    v18 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  }

  else
  {
    v18 = transcriptEmphasizedFontAttributes;
  }

  v19 = v18;
  selfCopy = self;
  actionType = [(CKGroupActionChatItem *)self actionType];
  v21 = 0;
  v103 = v17;
  if (actionType <= 3)
  {
    if (!actionType)
    {
      if (sender)
      {
        isBusiness = [sender isBusiness];
        v28 = isBusiness;
        v29 = CKFrameworkBundle(isBusiness);
        v24 = v29;
        if (v28)
        {
          v30 = @"BIA_LEAVE_CONVERSATION";
        }

        else
        {
          v30 = @"GROUP_LEAVE_STATUS";
        }

        v35 = [v29 localizedStringForKey:v30 value:&stru_1F04268F8 table:@"ChatKit"];
        v17 = v103;
        CKAttributedFormatString(v103, v19, v35, v49, v50, v51, v52, v53, v15);
        goto LABEL_50;
      }

      v23 = CKFrameworkBundle(0);
      v24 = v23;
      v25 = @"GROUP_YOU_LEAVE_STATUS";
      goto LABEL_49;
    }

    if (actionType == 1)
    {
      unattributed = [(CKGroupActionChatItem *)self unattributed];
      if (unattributed)
      {
        v23 = CKFrameworkBundle(unattributed);
        v24 = v23;
        v25 = @"GROUP_SYSTEM_UPDATE_PHOTO_STATUS";
        goto LABEL_49;
      }

      v24 = CKFrameworkBundle(unattributed);
      if (sender)
      {
        v34 = @"GROUP_UPDATE_PHOTO_STATUS";
        goto LABEL_37;
      }

      v25 = @"GROUP_YOU_UPDATE_PHOTO_STATUS";
    }

    else
    {
      v105 = 0;
      if (actionType != 2)
      {
        goto LABEL_52;
      }

      unattributed2 = [(CKGroupActionChatItem *)self unattributed];
      if (unattributed2)
      {
        v23 = CKFrameworkBundle(unattributed2);
        v24 = v23;
        v25 = @"GROUP_SYSTEM_DELETE_PHOTO_STATUS";
LABEL_49:
        v35 = [v23 localizedStringForKey:v25 value:&stru_1F04268F8 table:@"ChatKit"];
        CKAttributedFormatString(v17, v19, v35, v54, v55, v56, v57, v58, 0);
        goto LABEL_50;
      }

      v24 = CKFrameworkBundle(unattributed2);
      if (sender)
      {
        v34 = @"GROUP_DELETE_PHOTO_STATUS";
        goto LABEL_37;
      }

      v25 = @"GROUP_YOU_DELETE_PHOTO_STATUS";
    }

    goto LABEL_48;
  }

  if (actionType == 4)
  {
    unattributed3 = [(CKGroupActionChatItem *)self unattributed];
    if (unattributed3)
    {
      v23 = CKFrameworkBundle(unattributed3);
      v24 = v23;
      v25 = @"GROUP_SYSTEM_UPDATE_BACKGROUND_STATUS";
      goto LABEL_49;
    }

    v24 = CKFrameworkBundle(unattributed3);
    if (sender)
    {
      v34 = @"GROUP_UPDATE_BACKGROUND_STATUS";
LABEL_37:
      v35 = [v24 localizedStringForKey:v34 value:&stru_1F04268F8 table:@"ChatKit"];
      CKAttributedFormatString(v17, v19, v35, v36, v37, v38, v39, v40, v15);
      v105 = LABEL_50:;

      v21 = 0;
      goto LABEL_51;
    }

    v25 = @"GROUP_YOU_UPDATE_BACKGROUND_STATUS";
LABEL_48:
    v23 = v24;
    goto LABEL_49;
  }

  if (actionType != 5)
  {
    v105 = 0;
    if (actionType != 6)
    {
      goto LABEL_52;
    }

    unattributed4 = [(CKGroupActionChatItem *)self unattributed];
    if (unattributed4)
    {
      v23 = CKFrameworkBundle(unattributed4);
      v24 = v23;
      v25 = @"GROUP_SYSTEM_DELETE_BACKGROUND_STATUS";
      goto LABEL_49;
    }

    v24 = CKFrameworkBundle(unattributed4);
    if (sender)
    {
      v34 = @"GROUP_DELETE_BACKGROUND_STATUS";
      goto LABEL_37;
    }

    v25 = @"GROUP_YOU_DELETE_BACKGROUND_STATUS";
    goto LABEL_48;
  }

  unattributed5 = [(CKGroupActionChatItem *)self unattributed];
  if (unattributed5)
  {
    v23 = CKFrameworkBundle(unattributed5);
    v24 = v23;
    v25 = @"GROUP_SYSTEM_UPDATE_BACKGROUND_STATUS_SENSITIVE";
    goto LABEL_49;
  }

  v41 = CKFrameworkBundle(unattributed5);
  v24 = v41;
  if (!sender)
  {
    v25 = @"GROUP_YOU_UPDATE_BACKGROUND_STATUS_SENSITIVE";
    goto LABEL_48;
  }

  v42 = [v41 localizedStringForKey:@"GROUP_UPDATE_BACKGROUND_STATUS_SENSITIVE" value:&stru_1F04268F8 table:@"ChatKit"];
  v105 = CKAttributedFormatString(v17, v19, v42, v43, v44, v45, v46, v47, v15);

  v24 = CKFrameworkBundle(v48);
  v21 = [v24 localizedStringForKey:@"GROUP_UPDATE_SENSITIVE_BACKGROUND_OPTIONS" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_51:

LABEL_52:
  v59 = 0x1E696A000;
  v104 = v19;
  if (![(CKGroupActionChatItem *)selfCopy unattributed])
  {
    goto LABEL_57;
  }

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([mEMORY[0x1E69A60F0] isInternalInstall])
  {
    v61 = IMGetDomainBoolForKey();

    if (!v61)
    {
      goto LABEL_57;
    }

    mEMORY[0x1E69A60F0] = objc_alloc_init(MEMORY[0x1E696AD40]);
    [mEMORY[0x1E69A60F0] appendAttributedString:v105];
    v62 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [mEMORY[0x1E69A60F0] appendAttributedString:v62];

    v64 = CKFrameworkBundle(v63);
    v65 = [v64 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v17, v104, v65, v66, v67, v68, v69, v70, v15);
    v72 = v71 = transcriptGroupModificationErrorRegularFontAttributes;
    [mEMORY[0x1E69A60F0] appendAttributedString:v72];

    transcriptGroupModificationErrorRegularFontAttributes = v71;
    v73 = [mEMORY[0x1E69A60F0] copy];

    v59 = 0x1E696A000uLL;
    v105 = v73;
  }

LABEL_57:
  v100 = v15;
  v101 = sender;
  if (v21)
  {
    v107[0] = *MEMORY[0x1E69DB648];
    v74 = +[CKUIBehavior sharedBehaviors];
    transcriptBoldFont = [v74 transcriptBoldFont];
    v108[0] = transcriptBoldFont;
    v107[1] = *MEMORY[0x1E69DB650];
    +[CKUIBehavior sharedBehaviors];
    v77 = v76 = transcriptGroupModificationErrorRegularFontAttributes;
    [v77 theme];
    v78 = transcriptEmphasizedFontAttributes;
    v80 = v79 = v59;
    appTintColor = [v80 appTintColor];
    v108[1] = appTintColor;
    v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:2];

    v59 = v79;
    transcriptEmphasizedFontAttributes = v78;

    transcriptGroupModificationErrorRegularFontAttributes = v76;
    v83 = [objc_alloc(*(v59 + 2736)) initWithString:v21 attributes:v82];
    v84 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v105];
    v85 = [objc_alloc(*(v59 + 2736)) initWithString:@" " attributes:v82];
    [v84 appendAttributedString:v85];

    [v84 appendAttributedString:v83];
    v86 = [v84 copy];
  }

  else
  {
    v86 = v105;
  }

  if ([(CKGroupActionChatItem *)selfCopy failed])
  {
    v87 = MEMORY[0x1E69DCAD8];
    +[CKUIBehavior sharedBehaviors];
    v89 = v88 = v86;
    transcriptLightFont = [v89 transcriptLightFont];
    v91 = [v87 configurationWithFont:transcriptLightFont];

    v92 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v91];
    redColor = [MEMORY[0x1E69DC888] redColor];
    v94 = [v92 imageWithTintColor:redColor];

    v95 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v95 setImage:v94];
    v96 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v95 attributes:transcriptGroupModificationErrorRegularFontAttributes];
    v97 = [objc_alloc(*(v59 + 2736)) initWithString:@" "];
    [v96 appendAttributedString:v97];

    [v96 appendAttributedString:v88];
    v86 = v88;
  }

  else
  {
    v96 = v86;
  }

  return v96;
}

- (int64_t)actionType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  actionType = [iMChatItem actionType];

  return actionType;
}

- (IMHandle)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (BOOL)failed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  failed = [iMChatItem failed];

  return failed;
}

- (BOOL)unattributed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  unattributed = [iMChatItem unattributed];

  return unattributed;
}

- (NSString)errorText
{
  actionType = [(CKGroupActionChatItem *)self actionType];
  if (actionType)
  {
    v3 = CKFrameworkBundle(actionType);
    v4 = [v3 localizedStringForKey:@"GROUP_PHOTO_CHANGE_ERROR_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)fileTransferGUIDs
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  fileTransferGUIDs = [iMChatItem fileTransferGUIDs];

  return fileTransferGUIDs;
}

@end