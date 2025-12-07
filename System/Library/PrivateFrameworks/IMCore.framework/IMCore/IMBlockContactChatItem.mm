@interface IMBlockContactChatItem
- (id)_initWithItem:(id)item chatStyle:(unsigned __int8)style;
@end

@implementation IMBlockContactChatItem

- (id)_initWithItem:(id)item chatStyle:(unsigned __int8)style
{
  styleCopy = style;
  v8.receiver = self;
  v8.super_class = IMBlockContactChatItem;
  v5 = [(IMChatItem *)&v8 _initWithItem:item];
  v6 = v5;
  if (v5)
  {
    [v5 setChatStyle:styleCopy];
  }

  return v6;
}

@end