@interface IMKeyTransparencyStatusChangedChatItem
- (id)_initWithHandles:(id)handles status:(unint64_t)status isGroupChat:(BOOL)chat;
@end

@implementation IMKeyTransparencyStatusChangedChatItem

- (id)_initWithHandles:(id)handles status:(unint64_t)status isGroupChat:(BOOL)chat
{
  handlesCopy = handles;
  v13.receiver = self;
  v13.super_class = IMKeyTransparencyStatusChangedChatItem;
  v10 = [(IMChatItem *)&v13 _initWithItem:0];
  v11 = v10;
  if (v10)
  {
    [v10 _setGUID:@"kte:"];
    objc_storeStrong(v11 + 8, handles);
    v11[9] = status;
    *(v11 + 56) = chat;
  }

  return v11;
}

@end