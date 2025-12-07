@interface IMMessageChatItem
- (BOOL)canReply;
- (BOOL)failed;
- (BOOL)isFromMe;
- (IMHandle)sender;
- (IMMessage)message;
- (NSDate)time;
@end

@implementation IMMessageChatItem

- (IMMessage)message
{
  _item = [(IMChatItem *)self _item];
  message = [_item message];

  return message;
}

- (BOOL)isFromMe
{
  _item = [(IMChatItem *)self _item];
  isFromMe = [_item isFromMe];

  return isFromMe;
}

- (BOOL)failed
{
  _item = [(IMChatItem *)self _item];
  v3 = [_item errorCode] != 0;

  return v3;
}

- (NSDate)time
{
  _item = [(IMChatItem *)self _item];
  time = [_item time];

  return time;
}

- (IMHandle)sender
{
  message = [(IMMessageChatItem *)self message];
  sender = [message sender];

  return sender;
}

- (BOOL)canReply
{
  _item = [(IMChatItem *)self _item];
  service = [_item service];
  v4 = [IMServiceImpl serviceWithInternalName:service];

  v5 = MEMORY[0x1E69A7990];
  if ([v4 supportsCapability:*MEMORY[0x1E69A7990]])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 supportsReplicationCapability:*v5];
  }

  return v6;
}

@end