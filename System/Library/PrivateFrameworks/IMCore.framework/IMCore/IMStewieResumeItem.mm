@interface IMStewieResumeItem
- (id)_initWithItem:(id)item chatIdentifier:(id)identifier;
@end

@implementation IMStewieResumeItem

- (id)_initWithItem:(id)item chatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IMStewieResumeItem;
  v8 = [(IMChatItem *)&v11 _initWithItem:item];
  v9 = v8;
  if (v8)
  {
    [v8 _setGUID:@"srb:"];
    objc_storeStrong(v9 + 7, identifier);
  }

  return v9;
}

@end