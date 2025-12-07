@interface CKMessageRetractionChatItem
- (BOOL)hasSelectableText;
- (BOOL)isRetractedReply;
- (BOOL)isRetractedReplyThreadOriginator;
- (UIEdgeInsets)contentInsets;
- (id)_loadTranscriptTextWithRetractionUnsupportedCount:(unint64_t)count unsupportedNames:(id)names isFromMe:(BOOL)me isFailedRetraction:(BOOL)retraction senderName:(id)name;
- (id)_retractionUnsupportedByNamesFromHandles:(id)handles;
- (id)loadTranscriptText;
@end

@implementation CKMessageRetractionChatItem

- (BOOL)hasSelectableText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFailedRetraction = [iMChatItem isFailedRetraction];

  return isFailedRetraction;
}

- (id)_retractionUnsupportedByNamesFromHandles:(id)handles
{
  v19 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = handlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        _displayNameWithAbbreviation = [*(*(&v14 + 1) + 8 * i) _displayNameWithAbbreviation];
        v11 = _displayNameWithAbbreviation;
        if (_displayNameWithAbbreviation && [_displayNameWithAbbreviation length])
        {
          [array addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [array copy];

  return v12;
}

- (id)_loadTranscriptTextWithRetractionUnsupportedCount:(unint64_t)count unsupportedNames:(id)names isFromMe:(BOOL)me isFailedRetraction:(BOOL)retraction senderName:(id)name
{
  retractionCopy = retraction;
  meCopy = me;
  namesCopy = names;
  nameCopy = name;
  v13 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularPreferredFontAttributes = [v13 transcriptRegularPreferredFontAttributes];

  v15 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedPreferredFontAttributes = [v15 transcriptEmphasizedPreferredFontAttributes];

  if (!meCopy)
  {
    v18 = CKFrameworkBundle(v17);
    v22 = [v18 localizedStringForKey:@"MESSAGE_RETRACTED_BY_PERSON_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v22, v23, v24, v25, v26, v27, nameCopy);
    v28 = LABEL_8:;
    v29 = 0;
    goto LABEL_22;
  }

  if (!count)
  {
    v30 = CKFrameworkBundle(v17);
    v18 = v30;
    if (retractionCopy)
    {
      v29 = [v30 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_RETRACTION_FAILED_STATUS_ERROR_SUBSTRING_HARDSPACE" value:&stru_1F04268F8 table:@"ChatKit"];

      v18 = CKFrameworkBundle(v31);
      v22 = [v18 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_RETRACTION_FAILED_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      v28 = CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v22, v32, v33, v34, v35, v36, v29);
      goto LABEL_22;
    }

    v22 = [v30 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v22, v81, v82, v83, v84, v85, 0);
    goto LABEL_8;
  }

  v18 = namesCopy;
  if ([v18 count] >= 4)
  {
    v19 = [v18 subarrayWithRange:{0, 2}];

    v18 = v19;
  }

  v20 = [v18 count];
  v21 = count - v20;
  v88 = nameCopy;
  v90 = namesCopy;
  if (count != v20)
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = CKFrameworkBundle(v20);
    v39 = [v38 localizedStringForKey:@"N_OTHER_PEOPLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v40 = [v37 localizedStringWithFormat:v39, v21];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v43 = @"\u200F";
    }

    else
    {
      v43 = @"\u200E";
    }

    v44 = [(__CFString *)v43 stringByAppendingString:v40];

    v45 = [v18 arrayByAddingObject:v44];

    v18 = v45;
  }

  v46 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v18];
  v22 = v46;
  if (retractionCopy)
  {
    v47 = CKFrameworkBundle(v46);
    v29 = [v47 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_UNSUPPORTED_RECIPIENTS_AND_RETRACTION_FAILED_STATUS_ERROR_SUBSTRING_HARDSPACE" value:&stru_1F04268F8 table:@"ChatKit"];

    v48 = MEMORY[0x1E696AEC0];
    v50 = CKFrameworkBundle(v49);
    v51 = [v50 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_N_UNSUPPORTED_RECIPIENTS_AND_RETRACTION_FAILED_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v52 = [v48 localizedStringWithFormat:v51, count, v22, v29];
  }

  else
  {
    v53 = MEMORY[0x1E696AEC0];
    v50 = CKFrameworkBundle(v46);
    v51 = [v50 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_N_UNSUPPORTED_RECIPIENTS_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v52 = [v53 localizedStringWithFormat:v51, count, v22];
    v29 = 0;
  }

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection2 == 1)
  {
    v56 = @"\u200F";
  }

  else
  {
    v56 = @"\u200E";
  }

  v57 = [(__CFString *)v56 stringByAppendingString:v52];

  v28 = CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v57, v58, v59, v60, v61, v62, 0);

  nameCopy = v88;
  namesCopy = v90;
LABEL_22:

  if (v28 && [v29 length])
  {
    v89 = nameCopy;
    v91 = namesCopy;
    string = [v28 string];
    v64 = [string rangeOfString:v29];
    v66 = v65;

    if (v64 == 0x7FFFFFFFFFFFFFFFLL)
    {
      nameCopy = v89;
      namesCopy = v91;
    }

    else
    {
      v86 = transcriptRegularPreferredFontAttributes;
      v67 = [v28 mutableCopy];
      v68 = +[CKUIBehavior sharedBehaviors];
      transcriptErrorStampPreferredFontAttributes = [v68 transcriptErrorStampPreferredFontAttributes];

      v87 = transcriptErrorStampPreferredFontAttributes;
      [v67 setAttributes:transcriptErrorStampPreferredFontAttributes range:{v64, v66}];
      string2 = [v67 string];
      v71 = [string2 rangeOfString:@"(!)" options:0 range:{v64, v66}];
      v73 = v72;

      if (v71 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v67 replaceCharactersInRange:v71 withString:{v73, &stru_1F04268F8}];
        v74 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        v75 = +[CKUIBehavior sharedBehaviors];
        messageStampWarningIconRed = [v75 messageStampWarningIconRed];

        [v74 setImage:messageStampWarningIconRed];
        v77 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v74];
        v78 = [v77 mutableCopy];

        [v78 addAttributes:v87 range:{0, objc_msgSend(v78, "length")}];
        [v67 insertAttributedString:v78 atIndex:v71];
      }

      v79 = [v67 copy];

      v28 = v79;
      nameCopy = v89;
      namesCopy = v91;
      transcriptRegularPreferredFontAttributes = v86;
    }
  }

  return v28;
}

- (id)loadTranscriptText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFromMe = [iMChatItem isFromMe];
  sender = [iMChatItem sender];
  name = [sender name];

  isFailedRetraction = [iMChatItem isFailedRetraction];
  retractionUnsupportedByHandles = [iMChatItem retractionUnsupportedByHandles];
  v9 = [(CKMessageRetractionChatItem *)self _retractionUnsupportedByNamesFromHandles:retractionUnsupportedByHandles];
  v10 = -[CKMessageRetractionChatItem _loadTranscriptTextWithRetractionUnsupportedCount:unsupportedNames:isFromMe:isFailedRetraction:senderName:](self, "_loadTranscriptTextWithRetractionUnsupportedCount:unsupportedNames:isFromMe:isFailedRetraction:senderName:", [retractionUnsupportedByHandles count], v9, isFromMe, isFailedRetraction, name);

  return v10;
}

- (UIEdgeInsets)contentInsets
{
  isRetractedReply = [(CKMessageRetractionChatItem *)self isRetractedReply];
  isRetractedReplyThreadOriginator = [(CKMessageRetractionChatItem *)self isRetractedReplyThreadOriginator];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (isRetractedReply || isRetractedReplyThreadOriginator)
  {
    [v5 retractedReplyStampInsets];
  }

  else
  {
    [v5 stampTranscriptInsets];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (BOOL)isRetractedReply
{
  imMessageRetractionChatItem = [(CKMessageRetractionChatItem *)self imMessageRetractionChatItem];
  itemIsReply = [imMessageRetractionChatItem itemIsReply];

  return itemIsReply;
}

- (BOOL)isRetractedReplyThreadOriginator
{
  imMessageRetractionChatItem = [(CKMessageRetractionChatItem *)self imMessageRetractionChatItem];
  itemIsThreadOriginator = [imMessageRetractionChatItem itemIsThreadOriginator];

  return itemIsThreadOriginator;
}

@end