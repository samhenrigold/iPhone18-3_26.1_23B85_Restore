@interface TTSAudioSessionChannel
+ (id)channelWithChannel:(id)channel;
+ (id)convertChannels:(id)channels;
- (BOOL)isEqual:(id)equal;
- (NSString)channelName;
- (NSString)owningPortUID;
- (TTSAudioSessionChannel)init;
- (id)description;
- (unint64_t)channelNumber;
- (unsigned)channelLabel;
- (void)dealloc;
@end

@implementation TTSAudioSessionChannel

+ (id)channelWithChannel:(id)channel
{
  channelCopy = channel;
  v4 = objc_opt_new();
  [v4 setChannel:channelCopy];

  return v4;
}

+ (id)convertChannels:(id)channels
{
  v23 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = channelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        channel = [v10 channel];

        channel2 = [v10 channel];
        v13 = channel2;
        if (channel)
        {
          [array addObject:channel2];
LABEL_8:

          goto LABEL_10;
        }

        if (!v13)
        {
          v13 = AXTTSLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_1A9578B50(&v16, v17, v13);
          }

          goto LABEL_8;
        }

LABEL_10:
        ++v9;
      }

      while (v7 != v9);
      v14 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = v14;
    }

    while (v14);
  }

  return array;
}

- (TTSAudioSessionChannel)init
{
  v6.receiver = self;
  v6.super_class = TTSAudioSessionChannel;
  v2 = [(TTSAudioSessionChannel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_channelNumber = 0x7FFFFFFFFFFFFFFFLL;
    v2->_channelLabel = -1;
    v4 = v2;
  }

  return v3;
}

- (unsigned)channelLabel
{
  if (self->_channelLabel != -1)
  {
    return self->_channelLabel;
  }

  channel = [(TTSAudioSessionChannel *)self channel];
  channelLabel = [channel channelLabel];

  return channelLabel;
}

- (unint64_t)channelNumber
{
  if (self->_channelNumber != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_channelNumber;
  }

  channel = [(TTSAudioSessionChannel *)self channel];
  channelNumber = [channel channelNumber];

  return channelNumber;
}

- (NSString)channelName
{
  channelName = self->_channelName;
  if (channelName)
  {
    channelName = channelName;
  }

  else
  {
    channel = [(TTSAudioSessionChannel *)self channel];
    channelName = [channel channelName];
  }

  return channelName;
}

- (NSString)owningPortUID
{
  owningPortUID = self->_owningPortUID;
  if (owningPortUID)
  {
    owningPortUID = owningPortUID;
  }

  else
  {
    channel = [(TTSAudioSessionChannel *)self channel];
    owningPortUID = [channel owningPortUID];
  }

  return owningPortUID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_channelNumber == 0x7FFFFFFFFFFFFFFFLL || [equalCopy channelNumber] == 0x7FFFFFFFFFFFFFFFLL)
    {
      channel = [(TTSAudioSessionChannel *)self channel];
      channel2 = [equalCopy channel];
      v7 = [channel isEqual:channel2];
    }

    else
    {
      channelNumber = self->_channelNumber;
      v7 = channelNumber == [equalCopy channelNumber];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(TTSAudioSessionChannel *)self setChannel:0];
  v3.receiver = self;
  v3.super_class = TTSAudioSessionChannel;
  [(TTSAudioSessionChannel *)&v3 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  channel = [(TTSAudioSessionChannel *)self channel];
  v4 = [channel description];
  v5 = [v2 stringWithFormat:@"TTSAudioSessionChannel -> %@", v4];

  return v5;
}

@end