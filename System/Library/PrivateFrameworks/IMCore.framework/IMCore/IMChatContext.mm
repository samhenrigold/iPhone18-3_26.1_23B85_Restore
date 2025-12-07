@interface IMChatContext
- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation IMChatContext

- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    sub_1A84DFB20(a2, self);
  }

  v8 = [[(objc_class *)class allocWithZone:zone] init];
  *(v8 + 1) = [(IMChatContext *)self serviceVariant];
  *(v8 + 2) = [(IMChatContext *)self filterCategory];
  *(v8 + 24) = [(IMChatContext *)self isSpam];
  *(v8 + 25) = [(IMChatContext *)self areSendersUnknown];
  *(v8 + 26) = [(IMChatContext *)self hasResponded];
  activeTelephonyConversationUUID = [(IMChatContext *)self activeTelephonyConversationUUID];
  v10 = *(v8 + 4);
  *(v8 + 4) = activeTelephonyConversationUUID;

  showingEditHistoryForChatItemGUIDs = [(IMChatContext *)self showingEditHistoryForChatItemGUIDs];
  v12 = *(v8 + 5);
  *(v8 + 5) = showingEditHistoryForChatItemGUIDs;

  *(v8 + 48) = [(IMChatContext *)self isChatBot];
  *(v8 + 49) = [(IMChatContext *)self showTranslationAlternateText];
  return v8;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  serviceVariant = [(IMChatContext *)self serviceVariant];
  filterCategory = [(IMChatContext *)self filterCategory];
  if ([(IMChatContext *)self isSpam])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(IMChatContext *)self areSendersUnknown])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(IMChatContext *)self hasResponded])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  activeTelephonyConversationUUID = [(IMChatContext *)self activeTelephonyConversationUUID];
  uUIDString = [activeTelephonyConversationUUID UUIDString];
  if ([(IMChatContext *)self isChatBot])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v14 stringWithFormat:@"<%@, serviceVariant: %lu, filterCategory: %tu, spam: %@, sendersUnknown: %@, responded: %@, activeTelephonyConversationUUID: %@, isChatBot: %@>", v13, serviceVariant, filterCategory, v5, v6, v7, uUIDString, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return MEMORY[0x1EEE66B58](self, sel__copyWithClass_zone_);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return MEMORY[0x1EEE66B58](self, sel__copyWithClass_zone_);
}

@end