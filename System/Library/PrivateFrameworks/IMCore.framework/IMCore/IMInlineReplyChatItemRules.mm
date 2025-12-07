@interface IMInlineReplyChatItemRules
- (BOOL)_hasEarlierMessagesToLoad;
- (BOOL)_hasRecentMessagesToLoad;
- (IMInlineReplyChatItemRules)initWithChat:(id)chat threadIdentifier:(id)identifier;
- (_NSRange)threadOriginatorRange;
- (id)_filteredChatItemsForNewChatItems:(id)items;
@end

@implementation IMInlineReplyChatItemRules

- (IMInlineReplyChatItemRules)initWithChat:(id)chat threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = IMInlineReplyChatItemRules;
  v7 = [(IMTranscriptChatItemRules *)&v13 _initWithChat:chat];
  v8 = v7;
  if (v7)
  {
    [(IMInlineReplyChatItemRules *)v7 setThreadIdentifier:identifierCopy];
    v9 = IMMessageThreadIdentifierGetOriginatorGUID();
    [(IMInlineReplyChatItemRules *)v8 setThreadOriginatorMessageGUID:v9];

    OriginatorRange = IMMessageThreadIdentifierGetOriginatorRange();
    [(IMInlineReplyChatItemRules *)v8 setThreadOriginatorRange:OriginatorRange, v11];
  }

  return v8;
}

- (BOOL)_hasEarlierMessagesToLoad
{
  inlineReplyController = [(IMTranscriptChatItemRules *)self inlineReplyController];

  if (!inlineReplyController)
  {
    return 0;
  }

  inlineReplyController2 = [(IMTranscriptChatItemRules *)self inlineReplyController];
  hasEarlierMessagesToLoad = [inlineReplyController2 hasEarlierMessagesToLoad];

  return hasEarlierMessagesToLoad;
}

- (BOOL)_hasRecentMessagesToLoad
{
  inlineReplyController = [(IMTranscriptChatItemRules *)self inlineReplyController];

  if (!inlineReplyController)
  {
    return 0;
  }

  inlineReplyController2 = [(IMTranscriptChatItemRules *)self inlineReplyController];
  hasRecentMessagesToLoad = [inlineReplyController2 hasRecentMessagesToLoad];

  return hasRecentMessagesToLoad;
}

- (id)_filteredChatItemsForNewChatItems:(id)items
{
  v39 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A831484C;
  aBlock[3] = &unk_1E7812378;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = itemsCopy;
    v6 = itemsCopy;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      v24 = *v33;
      v25 = v8;
      do
      {
        v12 = 0;
        v26 = v10;
        do
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * v12);
          v14 = v5[2](v5, v13);
          if (v14)
          {
            [v7 addObject:v14];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v13;
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v27 = v15;
              aggregateAttachmentParts = [v15 aggregateAttachmentParts];
              v17 = [aggregateAttachmentParts countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v29;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v29 != v19)
                    {
                      objc_enumerationMutation(aggregateAttachmentParts);
                    }

                    v21 = v5[2](v5, *(*(&v28 + 1) + 8 * i));
                    if (v21)
                    {
                      [v7 addObject:v21];
                    }
                  }

                  v18 = [aggregateAttachmentParts countByEnumeratingWithState:&v28 objects:v37 count:16];
                }

                while (v18);
              }

              v11 = v24;
              v8 = v25;
              v10 = v26;
            }
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v10);
    }

    itemsCopy = v23;
  }

  else
  {
    v7 = v5[2](v5, itemsCopy);
  }

  return v7;
}

- (_NSRange)threadOriginatorRange
{
  p_threadOriginatorRange = &self->_threadOriginatorRange;
  location = self->_threadOriginatorRange.location;
  length = p_threadOriginatorRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end