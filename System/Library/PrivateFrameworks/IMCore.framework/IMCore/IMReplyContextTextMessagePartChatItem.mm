@interface IMReplyContextTextMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0;
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0 shouldDisplayLink:(BOOL)self1;
@end

@implementation IMReplyContextTextMessagePartChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0
{
  itemCopy = item;
  parentItemCopy = parentItem;
  dCopy = d;
  v24.receiver = self;
  v24.super_class = IMReplyContextTextMessagePartChatItem;
  v21 = 0;
  v17 = [(IMTextMessagePartChatItem *)&v24 _initWithItem:itemCopy text:text translationSecondaryText:0 index:index messagePartRange:range.location subject:range.length isShowingEditHistory:subject showTranslationAlternateText:v21];
  if (v17)
  {
    guid = [itemCopy guid];
    v19 = sub_1A83AC604();

    [v17 _setGUID:v19];
    objc_storeStrong(v17 + 26, parentItem);
    *(v17 + 200) = me;
    objc_storeStrong(v17 + 27, d);
  }

  return v17;
}

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0 shouldDisplayLink:(BOOL)self1
{
  meCopy = me;
  itemCopy = item;
  obj = d;
  parentItemCopy = parentItem;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = IMReplyContextTextMessagePartChatItem;
  *(&v22 + 1) = 0;
  LOBYTE(v22) = link;
  v18 = [(IMTextMessagePartChatItem *)&v27 _initWithItem:itemCopy text:text translationSecondaryText:0 index:index messagePartRange:range.location subject:range.length shouldDisplayLink:subject isShowingEditHistory:v22 showTranslationAlternateText:?];
  if (v18)
  {
    guid = [itemCopy guid];
    v20 = sub_1A83AC604();

    [v18 _setGUID:v20];
    objc_storeStrong(v18 + 26, parentItem);
    *(v18 + 200) = v24;
    objc_storeStrong(v18 + 27, obj);
  }

  return v18;
}

@end