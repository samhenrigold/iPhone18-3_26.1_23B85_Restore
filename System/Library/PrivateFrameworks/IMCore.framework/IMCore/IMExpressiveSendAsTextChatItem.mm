@interface IMExpressiveSendAsTextChatItem
- (id)_initWithItem:(id)item text:(id)text;
@end

@implementation IMExpressiveSendAsTextChatItem

- (id)_initWithItem:(id)item text:(id)text
{
  itemCopy = item;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = IMExpressiveSendAsTextChatItem;
  v8 = [(IMChatItem *)&v14 _initWithItem:itemCopy];
  if (v8)
  {
    guid = [itemCopy guid];
    v10 = sub_1A83AC604();

    [v8 _setGUID:v10];
    v11 = [textCopy copy];
    v12 = v8[7];
    v8[7] = v11;
  }

  return v8;
}

@end