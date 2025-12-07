@interface IMEditedTextMessagePartHistoricalContentChatItem
- (id)_initWithMessageItem:(id)item messagePartIndex:(int64_t)index historicalContent:(id)content editIndex:(int64_t)editIndex messagePartRange:(_NSRange)range subject:(id)subject showTranslationAlternateText:(BOOL)text;
@end

@implementation IMEditedTextMessagePartHistoricalContentChatItem

- (id)_initWithMessageItem:(id)item messagePartIndex:(int64_t)index historicalContent:(id)content editIndex:(int64_t)editIndex messagePartRange:(_NSRange)range subject:(id)subject showTranslationAlternateText:(BOOL)text
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  contentCopy = content;
  subjectCopy = subject;
  if ([itemCopy isFromMe])
  {
    messagePartText = [contentCopy messagePartText];
    messagePartTranslation = [contentCopy messagePartTranslation];
LABEL_5:
    v19 = messagePartTranslation;
    goto LABEL_6;
  }

  messagePartTranslation2 = [contentCopy messagePartTranslation];
  v19 = [messagePartTranslation2 length];

  if (v19)
  {
    messagePartText = [contentCopy messagePartTranslation];
    messagePartTranslation = [contentCopy messagePartText];
    goto LABEL_5;
  }

  messagePartText = [contentCopy messagePartText];
LABEL_6:
  v32.receiver = self;
  v32.super_class = IMEditedTextMessagePartHistoricalContentChatItem;
  BYTE2(v28) = 1;
  BYTE1(v28) = text;
  LOBYTE(v28) = 1;
  v20 = [(IMTextMessagePartChatItem *)&v32 _initWithItem:itemCopy text:messagePartText translationSecondaryText:v19 index:index messagePartRange:location subject:length visibleAssociatedMessageChatItems:subjectCopy isShowingEditHistory:0 showTranslationAlternateText:v28 shouldDisplayLink:?];

  if (v20)
  {
    objc_storeStrong(v20 + 25, content);
    guid = [itemCopy guid];
    v31 = messagePartText;
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    stringValue = [v22 stringValue];
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:editIndex];
    stringValue2 = [v24 stringValue];
    v26 = sub_1A83AC604();

    [v20 _setGUID:v26];
    messagePartText = v31;
  }

  return v20;
}

@end