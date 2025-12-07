@interface BLTSettingsSendSerializerPassthrough
- (BLTSettingsSendSerializerDelegate)delegate;
- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout;
- (void)sendRequest:(id)request type:(unsigned __int16)type withTimeout:(id)timeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)send andResponse:(id)response spoolToFile:(BOOL)self0;
@end

@implementation BLTSettingsSendSerializerPassthrough

- (void)sendRequest:(id)request type:(unsigned __int16)type withTimeout:(id)timeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)send andResponse:(id)response spoolToFile:(BOOL)self0
{
  typeCopy = type;
  responseCopy = response;
  sendCopy = send;
  forCopy = for;
  descriptionCopy = description;
  timeoutCopy = timeout;
  requestCopy = request;
  delegate = [(BLTSettingsSendSerializerPassthrough *)self delegate];
  [delegate sendRequest:requestCopy type:typeCopy withTimeout:timeoutCopy withDescription:descriptionCopy onlyOneFor:forCopy didSend:sendCopy andResponse:responseCopy];
}

- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout
{
  sentCopy = sent;
  acknowledgementCopy = acknowledgement;
  timeoutCopy = timeout;
  if (sentCopy)
  {
    sentCopy[2](sentCopy, 1, 0);
  }

  if (acknowledgementCopy)
  {
    acknowledgementCopy[2](acknowledgementCopy, 1.0);
  }
}

- (BLTSettingsSendSerializerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end