@interface MRCompositeMessage
- (MRCompositeMessage)init;
- (NSArray)messages;
- (id)description;
- (id)transportOptions;
- (void)addMessage:(id)message;
- (void)setTransportOptions:(id)options;
@end

@implementation MRCompositeMessage

- (NSArray)messages
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_messages copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRCompositeMessage)init
{
  v6.receiver = self;
  v6.super_class = MRCompositeMessage;
  v2 = [(MRProtocolMessage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    messages = v2->_messages;
    v2->_messages = v3;
  }

  return v2;
}

- (id)transportOptions
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  transportOptions = selfCopy->_transportOptions;
  obj = selfCopy;
  if (transportOptions)
  {
    v4 = transportOptions;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = selfCopy->_messages;
    v6 = 0;
    v7 = 0;
    v8 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          transportOptions = [v11 transportOptions];
          if ([transportOptions priority] < 1)
          {
            priority = 3;
          }

          else
          {
            transportOptions2 = [v11 transportOptions];
            priority = [transportOptions2 priority];
          }

          if (priority > v7)
          {
            v7 = priority;
          }

          transportOptions3 = [v11 transportOptions];
          isWaking = [transportOptions3 isWaking];

          v6 |= isWaking;
        }

        v8 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    if ((v7 > 0) | v6 & 1)
    {
      v4 = objc_alloc_init(MRProtocolMessageOptions);
      [(MRProtocolMessageOptions *)v4 setPriority:v7];
      [(MRProtocolMessageOptions *)v4 setWaking:v6 & 1];
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(obj);

  return v4;
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v6 = messageCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableArray *)selfCopy->_messages addObject:v6];
    objc_sync_exit(selfCopy);

    messageCopy = v6;
  }
}

- (void)setTransportOptions:(id)options
{
  optionsCopy = options;
  obj = self;
  objc_sync_enter(obj);
  transportOptions = obj->_transportOptions;
  obj->_transportOptions = optionsCopy;

  objc_sync_exit(obj);
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@, Messages:\n", objc_opt_class()];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_messages;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) description];
        v9 = [v8 componentsSeparatedByString:@"\n"];

        v10 = [v9 mr_map:&__block_literal_global_66];
        v11 = [v10 componentsJoinedByString:@"\n"];

        [v3 appendFormat:@"%@\n", v11];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [v3 appendString:@">"];

  return v3;
}

@end