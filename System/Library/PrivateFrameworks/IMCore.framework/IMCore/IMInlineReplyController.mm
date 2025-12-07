@interface IMInlineReplyController
- (BOOL)itemMatchesFilter:(id)filter;
- (IMInlineReplyController)initWithChat:(id)chat threadIdentifier:(id)identifier threadOriginator:(id)originator;
- (id)generateChatItemRules;
- (id)itemsToPrepend;
@end

@implementation IMInlineReplyController

- (IMInlineReplyController)initWithChat:(id)chat threadIdentifier:(id)identifier threadOriginator:(id)originator
{
  chatCopy = chat;
  identifierCopy = identifier;
  originatorCopy = originator;
  v14.receiver = self;
  v14.super_class = IMInlineReplyController;
  v11 = [(IMChatItemFilterController *)&v14 initWithChat:chatCopy];
  v12 = v11;
  if (v11)
  {
    [(IMInlineReplyController *)v11 setThreadIdentifier:identifierCopy];
    [(IMInlineReplyController *)v12 setThreadOriginator:originatorCopy];
    if (originatorCopy)
    {
      -[IMItemsController _handleItem:forChatStyle:](v12, "_handleItem:forChatStyle:", originatorCopy, [chatCopy chatStyle]);
    }
  }

  return v12;
}

- (id)itemsToPrepend
{
  if ([(IMChatItemFilterController *)self hasEarlierMessagesToLoad]|| ([(IMInlineReplyController *)self threadOriginator], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = MEMORY[0x1E695DEC8];
    threadOriginator = [(IMInlineReplyController *)self threadOriginator];
    v6 = [v4 arrayWithObject:threadOriginator];
  }

  return v6;
}

- (BOOL)itemMatchesFilter:(id)filter
{
  v38 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v29.receiver = self;
  v29.super_class = IMInlineReplyController;
  if ([(IMChatItemFilterController *)&v29 itemMatchesFilter:filterCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = filterCopy;
      threadIdentifier = [v5 threadIdentifier];
      if (threadIdentifier)
      {
      }

      else
      {
        guid = [v5 guid];
        threadOriginator = [(IMInlineReplyController *)self threadOriginator];
        guid2 = [threadOriginator guid];
        v11 = [guid isEqualToString:guid2];

        if (v11)
        {
LABEL_8:
          v7 = 1;
LABEL_32:

          goto LABEL_33;
        }
      }

      threadIdentifier2 = [(IMInlineReplyController *)self threadIdentifier];
      threadIdentifier3 = [v5 threadIdentifier];
      v14 = [threadIdentifier2 isEqualToString:threadIdentifier3];

      if (v14)
      {
        goto LABEL_8;
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          guid3 = [v5 guid];
          *buf = 136315394;
          v31 = "[IMInlineReplyController itemMatchesFilter:]";
          v32 = 2112;
          v33 = guid3;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "%s threadIdentifier does not match for item %@", buf, 0x16u);
        }
      }

      threadIdentifier4 = [v5 threadIdentifier];
      v18 = threadIdentifier4 == 0;

      if (!v18)
      {
        v7 = 0;
        goto LABEL_32;
      }

      associatedMessageGUID = [v5 associatedMessageGUID];
      threadIdentifier5 = [(IMInlineReplyController *)self threadIdentifier];
      AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();

      v22 = IMAssociatedMessageDecodeGUID();
      if (associatedMessageGUID)
      {
        syndicationRanges = IMAssociatedMessageDecodeGUID();
        if ([v22 isEqualToString:syndicationRanges])
        {
          goto LABEL_17;
        }

        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            guid4 = [v5 guid];
            *buf = 136315906;
            v31 = "[IMInlineReplyController itemMatchesFilter:]";
            v32 = 2112;
            v33 = v22;
            v34 = 2112;
            v35 = syndicationRanges;
            v36 = 2112;
            v37 = guid4;
            _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "%s guidFromThreadIdentifier %@ does not match guidFromAssociateMessageGUID %@ for item %@", buf, 0x2Au);
          }
        }
      }

      else
      {
        syndicationRanges = [v5 syndicationRanges];
        if ([syndicationRanges count])
        {
          guid5 = [v5 guid];
          v25 = [v22 isEqualToString:guid5];

          if (v25)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_18;
            }

            syndicationRanges = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(syndicationRanges, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v31 = "[IMInlineReplyController itemMatchesFilter:]";
              v32 = 2112;
              v33 = v22;
              _os_log_impl(&dword_1A823F000, syndicationRanges, OS_LOG_TYPE_INFO, "%s guidFromThreadIdentifier %@ is the same as the item given, and it has syndication ranges.", buf, 0x16u);
            }

LABEL_17:

LABEL_18:
            v7 = 1;
LABEL_31:

            goto LABEL_32;
          }

LABEL_30:
          v7 = 0;
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  v7 = 0;
LABEL_33:

  return v7;
}

- (id)generateChatItemRules
{
  v3 = [IMInlineReplyChatItemRules alloc];
  chat = [(IMChatItemFilterController *)self chat];
  threadIdentifier = [(IMInlineReplyController *)self threadIdentifier];
  v6 = [(IMInlineReplyChatItemRules *)v3 initWithChat:chat threadIdentifier:threadIdentifier];

  return v6;
}

@end