@interface IMReportSpamChatItem
- (id)_initWithItem:(id)item wasReportedAsSpam:(BOOL)spam isGroup:(BOOL)group hasMultipleMessages:(BOOL)messages showReportSMSSpam:(BOOL)sSpam isBusinessChat:(BOOL)chat canUnsubscribe:(BOOL)unsubscribe filterExtension:(id)self0;
@end

@implementation IMReportSpamChatItem

- (id)_initWithItem:(id)item wasReportedAsSpam:(BOOL)spam isGroup:(BOOL)group hasMultipleMessages:(BOOL)messages showReportSMSSpam:(BOOL)sSpam isBusinessChat:(BOOL)chat canUnsubscribe:(BOOL)unsubscribe filterExtension:(id)self0
{
  extensionCopy = extension;
  v23.receiver = self;
  v23.super_class = IMReportSpamChatItem;
  v18 = [(IMChatItem *)&v23 _initWithItem:item];
  v19 = v18;
  if (v18)
  {
    [v18 _setGUID:@"rs:"];
    v19[56] = spam;
    v19[57] = group;
    v19[58] = messages;
    v19[59] = sSpam;
    v19[60] = chat;
    v19[61] = unsubscribe;
    v20 = [extensionCopy copy];
    v21 = *(v19 + 8);
    *(v19 + 8) = v20;
  }

  return v19;
}

@end