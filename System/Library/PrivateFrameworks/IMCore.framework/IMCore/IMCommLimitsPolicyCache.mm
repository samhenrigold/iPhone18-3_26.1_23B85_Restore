@interface IMCommLimitsPolicyCache
- (BOOL)isFetchingCommLimitsPolicyForChat:(id)chat;
- (IMCommLimitsPolicyCache)init;
- (id)chatForConversationContext:(id)context;
- (id)chatForParticipantIDsHash:(id)hash;
- (id)contextForParticipantIDsHash:(id)hash;
- (id)conversationContextForChat:(id)chat;
- (void)addSentinelContextForParticipantIDsHash:(id)hash;
- (void)addTrackingForChat:(id)chat participantIDsHash:(id)hash;
- (void)addTrackingForConversationContext:(id)context forParticipantIDsHash:(id)hash;
- (void)removeTrackingForChat:(id)chat;
@end

@implementation IMCommLimitsPolicyCache

- (IMCommLimitsPolicyCache)init
{
  v12.receiver = self;
  v12.super_class = IMCommLimitsPolicyCache;
  v2 = [(IMCommLimitsPolicyCache *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    participantIDsHashToConversationContext = v2->_participantIDsHashToConversationContext;
    v2->_participantIDsHashToConversationContext = v3;

    v5 = objc_opt_new();
    conversationContextToParticipantIDsHash = v2->_conversationContextToParticipantIDsHash;
    v2->_conversationContextToParticipantIDsHash = v5;

    v7 = objc_opt_new();
    participantIDsHashToChatIdentifier = v2->_participantIDsHashToChatIdentifier;
    v2->_participantIDsHashToChatIdentifier = v7;

    v9 = objc_opt_new();
    chatIdentifierToParticipantIDsHash = v2->_chatIdentifierToParticipantIDsHash;
    v2->_chatIdentifierToParticipantIDsHash = v9;
  }

  return v2;
}

- (void)addTrackingForChat:(id)chat participantIDsHash:(id)hash
{
  hashCopy = hash;
  chatIdentifier = [chat chatIdentifier];
  if (hashCopy && chatIdentifier)
  {
    participantIDsHashToChatIdentifier = [(IMCommLimitsPolicyCache *)self participantIDsHashToChatIdentifier];
    [participantIDsHashToChatIdentifier setObject:chatIdentifier forKeyedSubscript:hashCopy];

    chatIdentifierToParticipantIDsHash = [(IMCommLimitsPolicyCache *)self chatIdentifierToParticipantIDsHash];
    [chatIdentifierToParticipantIDsHash setObject:hashCopy forKeyedSubscript:chatIdentifier];
  }
}

- (void)removeTrackingForChat:(id)chat
{
  v20 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  if (chatIdentifier)
  {
    chatIdentifierToParticipantIDsHash = [(IMCommLimitsPolicyCache *)self chatIdentifierToParticipantIDsHash];
    v7 = [chatIdentifierToParticipantIDsHash objectForKeyedSubscript:chatIdentifier];

    if (v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 138412546;
          v17 = chatCopy;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Participants changed for chat %@. Invalidating cached Screen Time policy for participants group IDs hash: %@", &v16, 0x16u);
        }
      }

      participantIDsHashToConversationContext = [(IMCommLimitsPolicyCache *)self participantIDsHashToConversationContext];
      v10 = [participantIDsHashToConversationContext objectForKeyedSubscript:v7];

      if (v10)
      {
        v11 = [MEMORY[0x1E696B098] valueWithPointer:v10];
        conversationContextToParticipantIDsHash = [(IMCommLimitsPolicyCache *)self conversationContextToParticipantIDsHash];
        [conversationContextToParticipantIDsHash setObject:0 forKeyedSubscript:v11];
      }

      chatIdentifierToParticipantIDsHash2 = [(IMCommLimitsPolicyCache *)self chatIdentifierToParticipantIDsHash];
      [chatIdentifierToParticipantIDsHash2 setObject:0 forKeyedSubscript:chatIdentifier];

      participantIDsHashToChatIdentifier = [(IMCommLimitsPolicyCache *)self participantIDsHashToChatIdentifier];
      [participantIDsHashToChatIdentifier setObject:0 forKeyedSubscript:v7];

      participantIDsHashToConversationContext2 = [(IMCommLimitsPolicyCache *)self participantIDsHashToConversationContext];
      [participantIDsHashToConversationContext2 setObject:0 forKeyedSubscript:v7];
    }
  }
}

- (BOOL)isFetchingCommLimitsPolicyForChat:(id)chat
{
  chatIdentifier = [chat chatIdentifier];
  if (chatIdentifier && (-[IMCommLimitsPolicyCache chatIdentifierToParticipantIDsHash](self, "chatIdentifierToParticipantIDsHash"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:chatIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    participantIDsHashToConversationContext = [(IMCommLimitsPolicyCache *)self participantIDsHashToConversationContext];
    v8 = [participantIDsHashToConversationContext objectForKeyedSubscript:v6];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)chatForParticipantIDsHash:(id)hash
{
  if (hash)
  {
    hashCopy = hash;
    participantIDsHashToChatIdentifier = [(IMCommLimitsPolicyCache *)self participantIDsHashToChatIdentifier];
    v6 = [participantIDsHashToChatIdentifier objectForKeyedSubscript:hashCopy];

    if (v6)
    {
      v7 = +[IMChatRegistry sharedRegistry];
      v8 = [v7 existingChatWithChatIdentifier:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)chatForConversationContext:(id)context
{
  if (context)
  {
    v4 = [MEMORY[0x1E696B098] valueWithPointer:?];
    conversationContextToParticipantIDsHash = [(IMCommLimitsPolicyCache *)self conversationContextToParticipantIDsHash];
    v6 = [conversationContextToParticipantIDsHash objectForKeyedSubscript:v4];

    v7 = [(IMCommLimitsPolicyCache *)self chatForParticipantIDsHash:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)conversationContextForChat:(id)chat
{
  chatIdentifier = [chat chatIdentifier];
  if (chatIdentifier)
  {
    chatIdentifierToParticipantIDsHash = [(IMCommLimitsPolicyCache *)self chatIdentifierToParticipantIDsHash];
    v6 = [chatIdentifierToParticipantIDsHash objectForKeyedSubscript:chatIdentifier];

    if (v6)
    {
      participantIDsHashToConversationContext = [(IMCommLimitsPolicyCache *)self participantIDsHashToConversationContext];
      v8 = [participantIDsHashToConversationContext objectForKeyedSubscript:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v8 = 0;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)addTrackingForConversationContext:(id)context forParticipantIDsHash:(id)hash
{
  if (context && hash)
  {
    hashCopy = hash;
    contextCopy = context;
    participantIDsHashToConversationContext = [(IMCommLimitsPolicyCache *)self participantIDsHashToConversationContext];
    [participantIDsHashToConversationContext setObject:contextCopy forKeyedSubscript:hashCopy];

    v10 = [MEMORY[0x1E696B098] valueWithPointer:contextCopy];

    conversationContextToParticipantIDsHash = [(IMCommLimitsPolicyCache *)self conversationContextToParticipantIDsHash];
    [conversationContextToParticipantIDsHash setObject:hashCopy forKeyedSubscript:v10];
  }
}

- (void)addSentinelContextForParticipantIDsHash:(id)hash
{
  if (hash)
  {
    v4 = MEMORY[0x1E695DFB0];
    hashCopy = hash;
    null = [v4 null];
    participantIDsHashToConversationContext = [(IMCommLimitsPolicyCache *)self participantIDsHashToConversationContext];
    [participantIDsHashToConversationContext setObject:null forKeyedSubscript:hashCopy];
  }
}

- (id)contextForParticipantIDsHash:(id)hash
{
  if (hash)
  {
    hashCopy = hash;
    participantIDsHashToConversationContext = [(IMCommLimitsPolicyCache *)self participantIDsHashToConversationContext];
    v6 = [participantIDsHashToConversationContext objectForKeyedSubscript:hashCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end