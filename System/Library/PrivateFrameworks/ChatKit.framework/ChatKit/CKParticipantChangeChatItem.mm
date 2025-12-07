@interface CKParticipantChangeChatItem
- (BOOL)failed;
- (BOOL)unattributed;
- (IMHandle)handle;
- (NSString)errorText;
- (id)activeTelephonyConversationUUID;
- (id)loadTranscriptText;
- (id)sender;
- (int64_t)changeType;
@end

@implementation CKParticipantChangeChatItem

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

  sender = [(CKParticipantChangeChatItem *)self sender];
  handle = [(CKParticipantChangeChatItem *)self handle];
  name = [sender name];
  v14 = name;
  if (name)
  {
    v15 = name;
  }

  else
  {
    v15 = &stru_1F04268F8;
  }

  v111 = v15;

  name2 = [handle name];
  v17 = name2;
  if (name2)
  {
    v18 = name2;
  }

  else
  {
    v18 = &stru_1F04268F8;
  }

  v19 = v18;

  v110 = transcriptRegularFontAttributes;
  v112 = transcriptGroupModificationErrorRegularFontAttributes;
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v20 = transcriptGroupModificationErrorRegularFontAttributes;
  }

  else
  {
    v20 = transcriptRegularFontAttributes;
  }

  v115 = v20;
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v21 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  }

  else
  {
    v21 = transcriptEmphasizedFontAttributes;
  }

  v114 = v21;
  changeType = [(CKParticipantChangeChatItem *)self changeType];
  if (changeType != 1)
  {
    if (changeType)
    {
      v113 = 0;
      goto LABEL_42;
    }

    unattributed = [(CKParticipantChangeChatItem *)self unattributed];
    if (unattributed)
    {
      v24 = CKFrameworkBundle(unattributed);
      v25 = v24;
      v26 = @"GROUP_SYSTEM_ADD_STATUS";
    }

    else
    {
      if (sender)
      {
        v31 = CKFrameworkBundle(unattributed);
        v25 = v31;
        if (handle)
        {
          [v31 localizedStringForKey:@"GROUP_ADD_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
        }

        else
        {
          [v31 localizedStringForKey:@"GROUP_ADD_YOU_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
        }
        v40 = ;
        CKAttributedFormatString(v115, v114, v40, v51, v52, v53, v54, v55, v111);
        goto LABEL_32;
      }

      v24 = CKFrameworkBundle(unattributed);
      v25 = v24;
      v26 = @"GROUP_YOU_ADD_STATUS";
    }

    v40 = [v24 localizedStringForKey:v26 value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v115, v114, v40, v41, v42, v43, v44, v45, v19);
    v113 = LABEL_32:;

    goto LABEL_42;
  }

  unattributed2 = [(CKParticipantChangeChatItem *)self unattributed];
  if (unattributed2)
  {
    v28 = CKFrameworkBundle(unattributed2);
    v29 = v28;
    v30 = @"GROUP_LEAVE_STATUS";
LABEL_29:
    v38 = [v28 localizedStringForKey:v30 value:&stru_1F04268F8 table:@"ChatKit"];
    v105 = 0;
    v39 = v19;
    CKAttributedFormatString(v115, v114, v38, v46, v47, v48, v49, v50, v19);
    goto LABEL_35;
  }

  if (!sender)
  {
    v28 = CKFrameworkBundle(unattributed2);
    v29 = v28;
    v30 = @"GROUP_YOU_REMOVE_STATUS";
    goto LABEL_29;
  }

  v32 = CKFrameworkBundle(unattributed2);
  v29 = v32;
  if (handle)
  {
    v38 = [v32 localizedStringForKey:@"GROUP_REMOVE_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v105 = v19;
    v39 = v19;
  }

  else
  {
    v39 = v19;
    v38 = [v32 localizedStringForKey:@"GROUP_REMOVE_YOU_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v105 = 0;
  }

  CKAttributedFormatString(v115, v114, v38, v33, v34, v35, v36, v37, v111);
  v113 = LABEL_35:;

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  activeTelephonyConversationUUID = [(CKParticipantChangeChatItem *)self activeTelephonyConversationUUID];
  v58 = [mEMORY[0x1E69A5AF8] existingConversationForTelephonyConversationUUID:activeTelephonyConversationUUID];

  if (v58)
  {
    v106 = handle;
    v107 = transcriptEmphasizedFontAttributes;
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v59, OS_LOG_TYPE_INFO, "Chat participant was removed while there is an active FaceTime call", buf, 2u);
      }
    }

    v60 = [v113 mutableCopy];
    v61 = MEMORY[0x1E696AEC0];
    v62 = CKFrameworkBundle(v60);
    v63 = [v62 localizedStringForKey:@"GROUP_MEMBER_ACTIVE_IN_FT_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v105 = [v61 stringWithFormat:@" %@", v63, v105];
    v70 = CKAttributedFormatString(v115, v114, v105, v65, v66, v67, v68, v69, v39);
    [v60 appendAttributedString:v70];

    v19 = v39;
    v113 = v60;
    handle = v106;
    transcriptEmphasizedFontAttributes = v107;
  }

  else
  {
    v19 = v39;
  }

LABEL_42:
  if (![(CKParticipantChangeChatItem *)self unattributed])
  {
    goto LABEL_48;
  }

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![mEMORY[0x1E69A60F0] isInternalInstall])
  {
    goto LABEL_46;
  }

  v108 = v19;
  v72 = IMGetDomainBoolForKey();

  if (v72)
  {
    mEMORY[0x1E69A60F0] = objc_alloc_init(MEMORY[0x1E696AD40]);
    [mEMORY[0x1E69A60F0] appendAttributedString:v113];
    v73 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [mEMORY[0x1E69A60F0] appendAttributedString:v73];

    v75 = CKFrameworkBundle(v74);
    [v75 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v76 = sender;
    v77 = transcriptGroupModificationErrorEmphasizedFontAttributes;
    v79 = v78 = transcriptEmphasizedFontAttributes;
    v85 = CKAttributedFormatString(v115, v114, v79, v80, v81, v82, v83, v84, v111);
    [mEMORY[0x1E69A60F0] appendAttributedString:v85];

    transcriptEmphasizedFontAttributes = v78;
    transcriptGroupModificationErrorEmphasizedFontAttributes = v77;
    sender = v76;

    v86 = [mEMORY[0x1E69A60F0] copy];
    v113 = v86;
    v19 = v108;
LABEL_46:

    goto LABEL_48;
  }

  v19 = v108;
LABEL_48:
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v87 = MEMORY[0x1E69DCAD8];
    +[CKUIBehavior sharedBehaviors];
    v88 = v109 = v19;
    [v88 transcriptLightFont];
    v89 = handle;
    v90 = sender;
    v91 = transcriptGroupModificationErrorEmphasizedFontAttributes;
    v93 = v92 = transcriptEmphasizedFontAttributes;
    v94 = [v87 configurationWithFont:v93];

    v95 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v94];
    redColor = [MEMORY[0x1E69DC888] redColor];
    v97 = [v95 imageWithTintColor:redColor];

    v98 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v98 setImage:v97];
    v99 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v98 attributes:v112];
    v100 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v99 appendAttributedString:v100];

    v101 = v113;
    [v99 appendAttributedString:v113];
    v102 = v99;
    transcriptEmphasizedFontAttributes = v92;
    transcriptGroupModificationErrorEmphasizedFontAttributes = v91;
    sender = v90;
    handle = v89;
    v103 = v102;

    v19 = v109;
  }

  else
  {
    v101 = v113;
    v103 = v113;
  }

  return v103;
}

- (NSString)errorText
{
  changeType = [(CKParticipantChangeChatItem *)self changeType];
  if (!changeType)
  {
    v4 = @"GROUP_ADD_ERROR_STATUS";
    goto LABEL_5;
  }

  changeType = [(CKParticipantChangeChatItem *)self changeType];
  if (changeType == 1)
  {
    v4 = @"GROUP_REMOVE_ERROR_STATUS";
LABEL_5:
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle(changeType);
    v7 = [v6 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];
    handle = [(CKParticipantChangeChatItem *)self handle];
    name = [handle name];
    v10 = [v5 stringWithFormat:v7, name];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)changeType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  changeType = [iMChatItem changeType];

  return changeType;
}

- (IMHandle)handle
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  otherHandle = [iMChatItem otherHandle];

  return otherHandle;
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

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (id)activeTelephonyConversationUUID
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  activeTelephonyConversationUUID = [iMChatItem activeTelephonyConversationUUID];

  return activeTelephonyConversationUUID;
}

@end