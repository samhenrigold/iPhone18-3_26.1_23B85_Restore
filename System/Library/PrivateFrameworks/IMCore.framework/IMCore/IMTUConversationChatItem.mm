@interface IMTUConversationChatItem
- (BOOL)isFromMe;
- (NSDate)time;
- (NSUUID)tuConversationUUID;
- (TUConversation)tuConversation;
- (id)_initWithItem:(id)item conversationInitiator:(id)initiator;
- (id)activeCall;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)conversationAVMode;
@end

@implementation IMTUConversationChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item conversationInitiator:self->_conversationInitiator];

  return v6;
}

- (id)_initWithItem:(id)item conversationInitiator:(id)initiator
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  initiatorCopy = initiator;
  v14.receiver = self;
  v14.super_class = IMTUConversationChatItem;
  v8 = [(IMChatItem *)&v14 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, initiator);
    guid = [itemCopy guid];
    v11 = sub_1A83AC604();

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = itemCopy;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Creating new IMTranscriptChatItem with GUID %@ from IMTUConversationItem %@", buf, 0x16u);
      }
    }

    [v9 _setGUID:v11];
  }

  return v9;
}

- (id)activeCall
{
  v3 = +[IMChatRegistry sharedRegistry];
  tuConversationUUID = [(IMTUConversationChatItem *)self tuConversationUUID];
  v5 = [v3 activeCallForConversationUUID:tuConversationUUID];

  return v5;
}

- (NSUUID)tuConversationUUID
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  _item = [(IMChatItem *)self _item];
  guid = [_item guid];
  v6 = [v3 initWithUUIDString:guid];

  return v6;
}

- (TUConversation)tuConversation
{
  v3 = +[IMChatRegistry sharedRegistry];
  tuConversationUUID = [(IMTUConversationChatItem *)self tuConversationUUID];
  v5 = [v3 existingConversationForFaceTimeConversationUUID:tuConversationUUID];

  return v5;
}

- (BOOL)isFromMe
{
  _item = [(IMChatItem *)self _item];
  isFromMe = [_item isFromMe];

  return isFromMe;
}

- (NSDate)time
{
  _item = [(IMChatItem *)self _item];
  time = [_item time];

  return time;
}

- (unint64_t)conversationAVMode
{
  _item = [(IMChatItem *)self _item];
  avMode = [_item avMode];

  return avMode;
}

@end