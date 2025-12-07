@interface EDFoundationModelContextGenerator
+ (id)_messageInReplyToMessage:(id)message messagePersistence:(id)persistence error:(id *)error;
+ (id)log;
+ (id)originalContentMessageForMessage:(id)message limitOfInReplyToAncestors:(unint64_t)ancestors checkForForwardedMessages:(BOOL)messages condenseEmptyLines:(BOOL)lines messagePersistence:(id)persistence htmlStringFromMessage:(id)fromMessage error:(id *)error;
+ (id)originalContentMessageForPersistedMessage:(id)message condenseEmptyLines:(BOOL)lines preserveQuotedForwardedContent:(BOOL)content htmlStringFromMessage:(id)fromMessage;
+ (id)originalContentMessagesForPersistedMessages:(id)messages condenseEmptyLines:(BOOL)lines preserveQuotedForwardedContent:(BOOL)content htmlStringFromMessage:(id)message;
@end

@implementation EDFoundationModelContextGenerator

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDFoundationModelContextGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_40 != -1)
  {
    dispatch_once(&log_onceToken_40, block);
  }

  v2 = log_log_40;

  return v2;
}

void __40__EDFoundationModelContextGenerator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_40;
  log_log_40 = v1;
}

+ (id)originalContentMessageForMessage:(id)message limitOfInReplyToAncestors:(unint64_t)ancestors checkForForwardedMessages:(BOOL)messages condenseEmptyLines:(BOOL)lines messagePersistence:(id)persistence htmlStringFromMessage:(id)fromMessage error:(id *)error
{
  linesCopy = lines;
  messagesCopy = messages;
  v44 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  persistenceCopy = persistence;
  fromMessageCopy = fromMessage;
  v33 = messageCopy;
  if (!messageCopy)
  {
LABEL_24:
    v18 = 0;
    goto LABEL_29;
  }

  if (messagesCopy)
  {
    subject = [messageCopy subject];
    hasForwardPrefix = [subject hasForwardPrefix];

    if (hasForwardPrefix)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] em_internalErrorWithReason:{@"Replying to forwarded message, failed to generate any original-content messages"}];
        *error = v18 = 0;
        goto LABEL_29;
      }

      goto LABEL_24;
    }
  }

  v19 = messageCopy;
  v20 = [MEMORY[0x1E695DF70] arrayWithObject:v19];
  v21 = 0;
  v22 = [v20 count] + ancestors;
  do
  {
    if ([v20 count] >= v22)
    {
      break;
    }

    if (v21)
    {
      break;
    }

    v41 = 0;
    v23 = [self _messageInReplyToMessage:v19 messagePersistence:persistenceCopy error:&v41];
    v21 = v41;
    [v20 ef_addOptionalObject:v23];

    v19 = v23;
  }

  while (v23);
  if (v21)
  {
    v24 = +[EDFoundationModelContextGenerator log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v21 description];
      [EDFoundationModelContextGenerator originalContentMessageForMessage:v25 limitOfInReplyToAncestors:buf checkForForwardedMessages:v24 condenseEmptyLines:? messagePersistence:? htmlStringFromMessage:? error:?];
    }
  }

  v26 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v20;
  v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v28 = *v38;
LABEL_16:
    v29 = 0;
    while (1)
    {
      if (*v38 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = [self originalContentMessageForPersistedMessage:*(*(&v37 + 1) + 8 * v29) condenseEmptyLines:linesCopy preserveQuotedForwardedContent:0 htmlStringFromMessage:fromMessageCopy];
      if (!v30)
      {
        break;
      }

      [v26 addObject:v30];

      if (v27 == ++v29)
      {
        v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v27)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v31 = [v26 ef_filter:&__block_literal_global_26];
  if ([v31 count])
  {
    v18 = v31;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to generate any original-content messages"];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_29:

  return v18;
}

uint64_t __188__EDFoundationModelContextGenerator_originalContentMessageForMessage_limitOfInReplyToAncestors_checkForForwardedMessages_condenseEmptyLines_messagePersistence_htmlStringFromMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 draft];

  return v3 ^ 1u;
}

+ (id)originalContentMessagesForPersistedMessages:(id)messages condenseEmptyLines:(BOOL)lines preserveQuotedForwardedContent:(BOOL)content htmlStringFromMessage:(id)message
{
  contentCopy = content;
  linesCopy = lines;
  v24 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  messageCopy = message;
  v12 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = messagesCopy;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [self originalContentMessageForPersistedMessage:*(*(&v19 + 1) + 8 * i) condenseEmptyLines:linesCopy preserveQuotedForwardedContent:contentCopy htmlStringFromMessage:messageCopy];
        if (v17)
        {
          [v12 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v12;
}

+ (id)originalContentMessageForPersistedMessage:(id)message condenseEmptyLines:(BOOL)lines preserveQuotedForwardedContent:(BOOL)content htmlStringFromMessage:(id)fromMessage
{
  contentCopy = content;
  linesCopy = lines;
  messageCopy = message;
  fromMessageCopy = fromMessage;
  v10 = fromMessageCopy[2](fromMessageCopy, messageCopy);
  if (v10)
  {
    if (linesCopy)
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    v24 = v10;
    v25 = [MEMORY[0x1E699B2F8] snippetFromHTMLBody:v10 options:v11 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:contentCopy];
    v12 = objc_alloc(MEMORY[0x1E699AE10]);
    searchableMessageID = [messageCopy searchableMessageID];
    subject = [messageCopy subject];
    subjectString = [subject subjectString];
    senders = [messageCopy senders];
    firstObject = [senders firstObject];
    v15 = [messageCopy to];
    v16 = [messageCopy cc];
    flags = [messageCopy flags];
    dateReceived = [messageCopy dateReceived];
    v19 = [v12 initWithSearchableMessageID:searchableMessageID bodyText:v25 subject:subjectString sender:firstObject toList:v15 ccList:v16 flags:flags date:dateReceived];

    v10 = v24;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)_messageInReplyToMessage:(id)message messagePersistence:(id)persistence error:(id *)error
{
  persistenceCopy = persistence;
  headersIfAvailable = [message headersIfAvailable];
  v9 = headersIfAvailable;
  if (headersIfAvailable)
  {
    v10 = [headersIfAvailable firstMessageIDForKey:*MEMORY[0x1E699B108]];
    v11 = [v9 messageIDListForKey:*MEMORY[0x1E699B140]];
    v12 = v11;
    if (v10)
    {
      lastObject = v10;
    }

    else
    {
      lastObject = [v11 lastObject];
      if (!lastObject)
      {
        firstObject = 0;
        goto LABEL_8;
      }
    }

    v15 = [persistenceCopy persistedMessagesForForMessageIDHeader:lastObject requireProtectedData:1];
    firstObject = [v15 firstObject];

LABEL_8:
    goto LABEL_9;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"No headers available"];
    *error = firstObject = 0;
  }

  else
  {
    firstObject = 0;
  }

LABEL_9:

  return firstObject;
}

+ (void)originalContentMessageForMessage:(os_log_t)log limitOfInReplyToAncestors:checkForForwardedMessages:condenseEmptyLines:messagePersistence:htmlStringFromMessage:error:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Error while generating original-content messages: %@", buf, 0xCu);
}

@end