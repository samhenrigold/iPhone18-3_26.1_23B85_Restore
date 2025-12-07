@interface IMReplyContextDeletedMessageChatItem
- (id)_initWithReplyItem:(id)item threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me deletedMessageIsFromMe:(BOOL)fromMe;
@end

@implementation IMReplyContextDeletedMessageChatItem

- (id)_initWithReplyItem:(id)item threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me deletedMessageIsFromMe:(BOOL)fromMe
{
  fromMeCopy = fromMe;
  meCopy = me;
  itemCopy = item;
  identifierCopy = identifier;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = IMReplyContextDeletedMessageChatItem;
  v15 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  if (v15)
  {
    guid = [itemCopy guid];
    v17 = sub_1A83AC604();

    [v15 _setGUID:v17];
    [v15 set_parentItem:itemCopy];
    [v15 setReplyIsFromMe:meCopy];
    [v15 setDeletedMessageIsFromMe:fromMeCopy];
    [v15 setReplyMessageGUID:dCopy];
  }

  return v15;
}

@end