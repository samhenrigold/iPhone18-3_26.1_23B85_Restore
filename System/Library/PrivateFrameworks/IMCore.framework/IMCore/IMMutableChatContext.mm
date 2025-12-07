@interface IMMutableChatContext
+ (id)chatContextForPinnedChat:(id)chat;
@end

@implementation IMMutableChatContext

+ (id)chatContextForPinnedChat:(id)chat
{
  chatCopy = chat;
  v4 = objc_alloc_init(IMMutableChatContext);
  isBusinessChat = [chatCopy isBusinessChat];
  if ([chatCopy isStewieChat])
  {
    isBusinessChat = 2;
  }

  if ([chatCopy isStewieSharingChat])
  {
    v6 = 3;
  }

  else
  {
    v6 = isBusinessChat;
  }

  [(IMMutableChatContext *)v4 setServiceType:v6];
  [(IMMutableChatContext *)v4 setFilterCategory:0];
  [(IMMutableChatContext *)v4 setSpam:0];
  -[IMMutableChatContext setSendersUnknown:](v4, "setSendersUnknown:", [chatCopy hasKnownParticipantsCache] ^ 1);
  -[IMMutableChatContext setResponded:](v4, "setResponded:", [chatCopy repliedToChat]);
  conversation = [chatCopy conversation];
  uUID = [conversation UUID];
  [(IMMutableChatContext *)v4 setActiveTelephonyConversationUUID:uUID];

  showingEditHistoryForChatItemGUIDs = [chatCopy showingEditHistoryForChatItemGUIDs];
  [(IMMutableChatContext *)v4 setShowingEditHistoryForChatItemGUIDs:showingEditHistoryForChatItemGUIDs];

  -[IMMutableChatContext setIsChatBot:](v4, "setIsChatBot:", [chatCopy isChatBot]);
  isShowingTranslationText = [chatCopy isShowingTranslationText];

  [(IMMutableChatContext *)v4 setShowTranslationAlternateText:isShowingTranslationText];

  return v4;
}

@end