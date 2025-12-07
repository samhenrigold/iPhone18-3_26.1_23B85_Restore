@interface TTSAUMessagingHost
+ (id)_validSelectorsForProtocol;
- (TTSAUMessagingHost)initWithMessageChannel:(id)channel;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_loadProtocolMethods;
- (void)forwardInvocation:(id)invocation;
@end

@implementation TTSAUMessagingHost

- (TTSAUMessagingHost)initWithMessageChannel:(id)channel
{
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = TTSAUMessagingHost;
  v6 = [(TTSAUMessagingHost *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channel, channel);
    [(TTSAUMessagingHost *)v7 _loadProtocolMethods];
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  array = [MEMORY[0x1E695DF70] array];
  methodSignature = [invocationCopy methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];

  if (numberOfArguments >= 3)
  {
    methodSignature2 = [invocationCopy methodSignature];
    numberOfArguments2 = [methodSignature2 numberOfArguments];

    if (numberOfArguments2 >= 3)
    {
      v10 = 2;
      do
      {
        methodSignature3 = [invocationCopy methodSignature];
        v12 = [methodSignature3 getArgumentTypeAtIndex:v10];

        if (*v12 == 64 && !v12[1])
        {
          v19 = 0;
          [invocationCopy getArgument:&v19 atIndex:v10];
          [array addObject:v19];
        }

        ++v10;
        methodSignature4 = [invocationCopy methodSignature];
        numberOfArguments3 = [methodSignature4 numberOfArguments];
      }

      while (v10 < numberOfArguments3);
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = NSStringFromSelector([invocationCopy selector]);
  [dictionary setObject:v16 forKeyedSubscript:@"TTSMessageChannelMessageSelectorKey"];

  [dictionary setObject:array forKeyedSubscript:@"TTSMessageChannelMessageArgumentsKey"];
  channel = [(TTSAUMessagingHost *)self channel];
  v18 = [channel callAudioUnit:dictionary];

  v19 = [v18 objectForKeyedSubscript:@"TTSMessageChannelMessageReturnValueKey"];
  if (v19)
  {
    [invocationCopy setReturnValue:&v19];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = NSStringFromSelector(selector);
  methods = [(TTSAUMessagingHost *)self methods];
  v6 = [methods objectForKey:v4];

  return v6;
}

- (void)_loadProtocolMethods
{
  self->_methods = [objc_opt_class() _validSelectorsForProtocol];

  MEMORY[0x1EEE66BB8]();
}

+ (id)_validSelectorsForProtocol
{
  outCount = 0;
  v2 = &unk_1F1D143F8;
  v3 = protocol_copyMethodDescriptionList(v2, 1, 1, &outCount);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (outCount)
  {
    v5 = 0;
    p_types = &v3->types;
    do
    {
      v7 = *(p_types - 1);
      v8 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:*p_types];
      v9 = NSStringFromSelector(v7);
      [dictionary setObject:v8 forKeyedSubscript:v9];

      ++v5;
      p_types += 2;
    }

    while (v5 < outCount);
  }

  free(v3);

  return dictionary;
}

@end