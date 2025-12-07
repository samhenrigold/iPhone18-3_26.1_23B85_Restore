@interface IMTranscriptSharingChatItem
- (id)_initWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMTranscriptSharingChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item];

  return v6;
}

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = IMTranscriptSharingChatItem;
  v5 = [(IMChatItem *)&v9 _initWithItem:itemCopy];
  if (v5)
  {
    guid = [itemCopy guid];
    v7 = sub_1A83AC604();

    [v5 _setGUID:v7];
  }

  return v5;
}

@end