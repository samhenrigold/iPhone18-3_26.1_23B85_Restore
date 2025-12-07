@interface COMessageChannelClientInterfaceMediator
- (COMessageChannel)messageChannel;
- (COMessageChannelClientInterfaceMediator)initWithMessageChannel:(id)channel;
- (void)failedToSendRequestWithID:(unsigned int)d withError:(id)error;
- (void)receivedRecipientListForRequestID:(unsigned int)d recipients:(id)recipients;
- (void)receivedRequestWithPayload:(id)payload payloadType:(id)type requestID:(unsigned int)d fromMember:(id)member withCallback:(id)callback;
- (void)receivedResponseForRequestID:(unsigned int)d responsePayload:(id)payload responseType:(id)type responseError:(id)error fromMember:(id)member;
@end

@implementation COMessageChannelClientInterfaceMediator

- (COMessageChannelClientInterfaceMediator)initWithMessageChannel:(id)channel
{
  channelCopy = channel;
  v8.receiver = self;
  v8.super_class = COMessageChannelClientInterfaceMediator;
  v5 = [(COMessageChannelClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageChannel, channelCopy);
  }

  return v6;
}

- (void)receivedRecipientListForRequestID:(unsigned int)d recipients:(id)recipients
{
  v4 = *&d;
  recipientsCopy = recipients;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained receivedRecipientListForRequestID:v4 recipients:recipientsCopy];
  }
}

- (void)receivedRequestWithPayload:(id)payload payloadType:(id)type requestID:(unsigned int)d fromMember:(id)member withCallback:(id)callback
{
  v9 = *&d;
  payloadCopy = payload;
  typeCopy = type;
  memberCopy = member;
  callbackCopy = callback;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained receivedRequestWithPayload:payloadCopy payloadType:typeCopy requestID:v9 fromMember:memberCopy withCallback:callbackCopy];
  }
}

- (void)receivedResponseForRequestID:(unsigned int)d responsePayload:(id)payload responseType:(id)type responseError:(id)error fromMember:(id)member
{
  v10 = *&d;
  payloadCopy = payload;
  typeCopy = type;
  errorCopy = error;
  memberCopy = member;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained receivedResponseForRequestID:v10 responsePayload:payloadCopy responseType:typeCopy responseError:errorCopy fromMember:memberCopy];
  }
}

- (void)failedToSendRequestWithID:(unsigned int)d withError:(id)error
{
  v4 = *&d;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained failedToSendRequestWithID:v4 withError:errorCopy];
  }
}

- (COMessageChannel)messageChannel
{
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);

  return WeakRetained;
}

@end