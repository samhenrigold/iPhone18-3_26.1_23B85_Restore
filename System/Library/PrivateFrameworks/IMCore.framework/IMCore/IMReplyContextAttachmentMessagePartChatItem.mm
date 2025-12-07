@interface IMReplyContextAttachmentMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1;
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2;
@end

@implementation IMReplyContextAttachmentMessagePartChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1
{
  itemCopy = item;
  obj = d;
  parentItemCopy = parentItem;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = IMReplyContextAttachmentMessagePartChatItem;
  context = [(IMAttachmentMessagePartChatItem *)&v25 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUID:range.length chatContext:iD, context];
  if (context)
  {
    guid = [itemCopy guid];
    v20 = sub_1A83AC604();

    [context _setGUID:v20];
    objc_storeStrong(context + 29, parentItem);
    *(context + 224) = me;
    objc_storeStrong(context + 30, obj);
  }

  return context;
}

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2
{
  itemCopy = item;
  obj = parentItem;
  parentItemCopy = parentItem;
  dCopy = d;
  dCopy2 = d;
  v27.receiver = self;
  v27.super_class = IMReplyContextAttachmentMessagePartChatItem;
  items = [(IMAttachmentMessagePartChatItem *)&v27 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUID:range.length chatContext:iD visibleAssociatedMessageChatItems:context, items];
  if (items)
  {
    guid = [itemCopy guid];
    v20 = sub_1A83AC604();

    [items _setGUID:v20];
    objc_storeStrong(items + 29, obj);
    *(items + 224) = me;
    objc_storeStrong(items + 30, dCopy);
  }

  return items;
}

@end