@interface IMIntroductionsButtonsChatItem
- (id)_initWithChatWantsIntroductionsLabel:(BOOL)label;
@end

@implementation IMIntroductionsButtonsChatItem

- (id)_initWithChatWantsIntroductionsLabel:(BOOL)label
{
  v7.receiver = self;
  v7.super_class = IMIntroductionsButtonsChatItem;
  v4 = [(IMChatItem *)&v7 _initWithItem:0];
  v5 = v4;
  if (v4)
  {
    v4[56] = label;
    [v4 _setGUID:@"itr:"];
  }

  return v5;
}

@end