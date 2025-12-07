@interface IMReplyContextAggregateAttachmentMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1;
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2;
@end

@implementation IMReplyContextAggregateAttachmentMessagePartChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1
{
  itemCopy = item;
  obj = d;
  parentItemCopy = parentItem;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = IMReplyContextAggregateAttachmentMessagePartChatItem;
  context = [(IMAggregateAttachmentMessagePartChatItem *)&v25 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUIDs:range.length chatContext:ds, context];
  if (context)
  {
    guid = [itemCopy guid];
    v20 = sub_1A83AC604();

    [context _setGUID:v20];
    objc_storeStrong(context + 31, parentItem);
    *(context + 240) = me;
    objc_storeStrong(context + 32, obj);
  }

  return context;
}

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2
{
  itemCopy = item;
  obj = parentItem;
  parentItemCopy = parentItem;
  dCopy = d;
  dCopy2 = d;
  v27.receiver = self;
  v27.super_class = IMReplyContextAggregateAttachmentMessagePartChatItem;
  items = [(IMAggregateAttachmentMessagePartChatItem *)&v27 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUIDs:range.length chatContext:ds visibleAssociatedMessageChatItems:context, items];
  if (items)
  {
    guid = [itemCopy guid];
    v20 = sub_1A83AC604();

    [items _setGUID:v20];
    objc_storeStrong(items + 31, obj);
    *(items + 240) = me;
    objc_storeStrong(items + 32, dCopy);
  }

  return items;
}

@end