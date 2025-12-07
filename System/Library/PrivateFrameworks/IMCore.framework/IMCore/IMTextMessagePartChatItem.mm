@interface IMTextMessagePartChatItem
- (BOOL)canEditMessageText;
- (BOOL)shouldDisplayRichLink;
- (NSDate)lastEditDateForMessagePart;
- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject isShowingEditHistory:(BOOL)history showTranslationAlternateText:(BOOL)self0;
- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject shouldDisplayLink:(BOOL)link isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1;
- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject visibleAssociatedMessageChatItems:(id)items isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1 shouldDisplayLink:(BOOL)self2;
- (id)copyWithIsShowingEditHistory:(BOOL)history;
- (id)copyWithShowTranslationAlternateText:(BOOL)text;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageSummaryInfo;
- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context;
- (int64_t)numberOfPreviousEdits;
- (void)_setShowTranslationAlternateText:(BOOL)text;
- (void)enumerateEmojiTokensWithBlock:(id)block;
- (void)setShouldDisplayRichLink:(BOOL)link;
@end

@implementation IMTextMessagePartChatItem

- (BOOL)shouldDisplayRichLink
{
  _item = [(IMChatItem *)self _item];
  blockingRichLinks = [_item blockingRichLinks];

  return blockingRichLinks ^ 1;
}

- (void)setShouldDisplayRichLink:(BOOL)link
{
  linkCopy = link;
  _item = [(IMChatItem *)self _item];
  [_item setBlockingRichLinks:!linkCopy];
}

- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context
{
  replyCopy = reply;
  v6 = [IMReplyContextTextMessagePartChatItem alloc];
  _item = [(IMChatItem *)self _item];
  guid = [replyCopy guid];
  isFromMe = [replyCopy isFromMe];
  text = [(IMMessagePartChatItem *)self text];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v14 = v13;
  subject = [(IMTextMessagePartChatItem *)self subject];
  v16 = [(IMReplyContextTextMessagePartChatItem *)v6 _initWithItem:_item parentItem:replyCopy replyMessageGUID:guid replyIsFromMe:isFromMe text:text index:index messagePartRange:messagePartRange subject:v14, subject];

  return v16;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMTextMessagePartChatItem;
  v3 = [(IMMessagePartChatItem *)&v7 description];
  v4 = IMLoggingStringForMessageData();
  v5 = [v2 stringWithFormat:@"[[%@] subject: %@]", v3, v4];

  return v5;
}

- (BOOL)canEditMessageText
{
  v14 = *MEMORY[0x1E69E9840];
  _item = [(IMChatItem *)self _item];
  v4 = [_item eligibilityForEditType:1 messagePartIndex:{-[IMMessagePartChatItem index](self, "index")}];
  v5 = v4;
  if ((v4 - 1) >= 8)
  {
    if (!v4 && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Message can be edited, message edit eligibility is %ld", &v12, 0xCu);
      }
    }

    subject = [(IMTextMessagePartChatItem *)self subject];
    v11 = [subject length] == 0;

    if (v11)
    {
      v7 = 1;
      goto LABEL_7;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Message text cannot be edited, message has a subject", &v12, 2u);
      }

      goto LABEL_5;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Message cannot be edited. Edit Eligibility: %ld", &v12, 0xCu);
    }

LABEL_5:
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)enumerateEmojiTokensWithBlock:(id)block
{
  blockCopy = block;
  subject = [(IMTextMessagePartChatItem *)self subject];
  string = [subject string];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([string length])
  {
    v7 = [string length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A82D91A8;
    v14[3] = &unk_1E78119F8;
    v15 = blockCopy;
    v16 = &v17;
    [string _enumerateEmojiTokensInRange:0 block:{v7, v14}];
  }

  if ((v18[3] & 1) == 0)
  {
    text = [(IMMessagePartChatItem *)self text];
    string2 = [text string];

    v10 = [string2 length];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A82D9218;
    v11[3] = &unk_1E78119F8;
    v12 = blockCopy;
    v13 = &v17;
    [string2 _enumerateEmojiTokensInRange:0 block:{v10, v11}];
  }

  _Block_object_dispose(&v17, 8);
}

- (void)_setShowTranslationAlternateText:(BOOL)text
{
  if (self->_showTranslationAlternateText != text)
  {
    self->_showTranslationAlternateText = text;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  text = [(IMMessagePartChatItem *)self text];
  translationSecondaryText = [(IMMessagePartChatItem *)self translationSecondaryText];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v10 = v9;
  subject = self->_subject;
  visibleAssociatedMessageChatItems = [(IMMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  isShowingEditHistory = [(IMTextMessagePartChatItem *)self isShowingEditHistory];
  BYTE2(v16) = 1;
  BYTE1(v16) = [(IMTextMessagePartChatItem *)self showTranslationAlternateText];
  LOBYTE(v16) = isShowingEditHistory;
  v14 = [v17 _initWithItem:_item text:text translationSecondaryText:translationSecondaryText index:index messagePartRange:messagePartRange subject:v10 visibleAssociatedMessageChatItems:subject isShowingEditHistory:visibleAssociatedMessageChatItems showTranslationAlternateText:v16 shouldDisplayLink:?];

  return v14;
}

- (id)copyWithIsShowingEditHistory:(BOOL)history
{
  result = [(IMTextMessagePartChatItem *)self copy];
  *(result + 184) = history;
  return result;
}

- (id)copyWithShowTranslationAlternateText:(BOOL)text
{
  result = [(IMTextMessagePartChatItem *)self copy];
  *(result + 185) = text;
  return result;
}

- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject shouldDisplayLink:(BOOL)link isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1
{
  LOWORD(v14) = __PAIR16__(alternateText, history);
  v11 = [(IMTextMessagePartChatItem *)self _initWithItem:item text:text translationSecondaryText:secondaryText index:index messagePartRange:range.location subject:range.length isShowingEditHistory:subject showTranslationAlternateText:v14];
  v12 = v11;
  if (v11)
  {
    [v11 setShouldDisplayRichLink:link];
  }

  return v12;
}

- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject isShowingEditHistory:(BOOL)history showTranslationAlternateText:(BOOL)self0
{
  BYTE2(v11) = 1;
  LOWORD(v11) = __PAIR16__(alternateText, history);
  return [(IMTextMessagePartChatItem *)self _initWithItem:item text:text translationSecondaryText:secondaryText index:index messagePartRange:range.location subject:range.length visibleAssociatedMessageChatItems:subject isShowingEditHistory:0 showTranslationAlternateText:v11 shouldDisplayLink:?];
}

- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject visibleAssociatedMessageChatItems:(id)items isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1 shouldDisplayLink:(BOOL)self2
{
  length = range.length;
  location = range.location;
  subjectCopy = subject;
  v24.receiver = self;
  v24.super_class = IMTextMessagePartChatItem;
  items = [(IMMessagePartChatItem *)&v24 _initWithItem:item text:text translationSecondaryText:secondaryText index:index messagePartRange:location visibleAssociatedMessageChatItems:length, items];
  if (items)
  {
    v21 = [subjectCopy copy];
    v22 = items[24];
    items[24] = v21;

    *(items + 184) = history;
    *(items + 185) = alternateText;
    [items setShouldDisplayRichLink:link];
  }

  return items;
}

- (int64_t)numberOfPreviousEdits
{
  _item = [(IMChatItem *)self _item];
  v4 = [_item historyForMessagePart:{-[IMMessagePartChatItem index](self, "index")}];
  v5 = [v4 count];
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 - 1;

  return v7;
}

- (NSDate)lastEditDateForMessagePart
{
  _item = [(IMChatItem *)self _item];
  v4 = [_item historyForMessagePart:{-[IMMessagePartChatItem index](self, "index")}];
  lastObject = [v4 lastObject];
  dateSent = [lastObject dateSent];

  return dateSent;
}

- (id)messageSummaryInfo
{
  subject = [(IMTextMessagePartChatItem *)self subject];
  string = [subject string];

  text = [(IMMessagePartChatItem *)self text];
  string2 = [text string];

  if (string && string2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", string, string2];
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }

  if (string)
  {
    v7 = string;
    goto LABEL_8;
  }

  if (string2)
  {
    v7 = string2;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:
  v9 = MEMORY[0x1E695DF20];
  contentType = [(IMTextMessagePartChatItem *)self contentType];
  text2 = [(IMMessagePartChatItem *)self text];
  messageItem = [(IMMessageChatItem *)self messageItem];
  expressiveSendStyleID = [messageItem expressiveSendStyleID];
  v14 = [v9 dictionaryWithAssociatedMessageSummary:v8 contentType:contentType associatedMessagePartText:text2 pluginBundleID:0 pluginDisplayName:0 messageEffect:expressiveSendStyleID];

  return v14;
}

@end