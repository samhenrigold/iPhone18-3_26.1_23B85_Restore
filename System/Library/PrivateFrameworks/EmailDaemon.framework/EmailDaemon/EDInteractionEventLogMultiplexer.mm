@interface EDInteractionEventLogMultiplexer
- (EDInteractionEventLogMultiplexer)initWithLogs:(id)logs;
- (id)description;
- (void)persistEvent:(id)event dataFromMessage:(id)message;
- (void)persistEvent:(id)event dataFromMessage:(id)message account:(id)account;
- (void)persistEvent:(id)event date:(id)date conversationID:(int64_t)d data:(id)data;
- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data;
- (void)persistEvent:(id)event date:(id)date message:(id)message mailbox:(id)mailbox;
- (void)persistEvent:(id)event date:(id)date message:(id)message mailboxType:(int64_t)type;
@end

@implementation EDInteractionEventLogMultiplexer

- (EDInteractionEventLogMultiplexer)initWithLogs:(id)logs
{
  logsCopy = logs;
  v9.receiver = self;
  v9.super_class = EDInteractionEventLogMultiplexer;
  v6 = [(EDInteractionEventLogMultiplexer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logs, logs);
  }

  return v7;
}

- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  messageCopy = message;
  dataCopy = data;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v15 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v15)
  {
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v18 + 1) + 8 * v17++) persistEvent:eventCopy date:dateCopy message:messageCopy data:dataCopy];
      }

      while (v15 != v17);
      v15 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)persistEvent:(id)event date:(id)date conversationID:(int64_t)d data:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  dataCopy = data;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v14 = [logs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v17 + 1) + 8 * v16++) persistEvent:eventCopy date:dateCopy conversationID:d data:dataCopy];
      }

      while (v14 != v16);
      v14 = [logs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)persistEvent:(id)event dataFromMessage:(id)message
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  messageCopy = message;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v9 = [logs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v12 + 1) + 8 * v11++) persistEvent:eventCopy dataFromMessage:messageCopy];
      }

      while (v9 != v11);
      v9 = [logs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)persistEvent:(id)event dataFromMessage:(id)message account:(id)account
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  messageCopy = message;
  accountCopy = account;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v12 = [logs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v15 + 1) + 8 * v14++) persistEvent:eventCopy dataFromMessage:messageCopy account:accountCopy];
      }

      while (v12 != v14);
      v12 = [logs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)persistEvent:(id)event date:(id)date message:(id)message mailbox:(id)mailbox
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  messageCopy = message;
  mailboxCopy = mailbox;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v15 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v15)
  {
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v18 + 1) + 8 * v17++) persistEvent:eventCopy date:dateCopy message:messageCopy mailbox:mailboxCopy];
      }

      while (v15 != v17);
      v15 = [logs countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)persistEvent:(id)event date:(id)date message:(id)message mailboxType:(int64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  messageCopy = message;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v14 = [logs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(logs);
        }

        [*(*(&v17 + 1) + 8 * v16++) persistEvent:eventCopy date:dateCopy message:messageCopy mailboxType:type];
      }

      while (v14 != v16);
      v14 = [logs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  logs = [(EDInteractionEventLogMultiplexer *)self logs];
  v6 = [v3 initWithFormat:@"<%@ %p: %@>", v4, self, logs];

  return v6;
}

@end