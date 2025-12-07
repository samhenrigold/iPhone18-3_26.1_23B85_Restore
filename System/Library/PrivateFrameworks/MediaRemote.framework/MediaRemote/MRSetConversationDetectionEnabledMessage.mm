@interface MRSetConversationDetectionEnabledMessage
- (MRSetConversationDetectionEnabledMessage)initWithOutputDeviceUID:(id)d enabled:(BOOL)enabled;
- (MRSetConversationDetectionEnabledMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRSetConversationDetectionEnabledMessage

- (MRSetConversationDetectionEnabledMessage)initWithOutputDeviceUID:(id)d enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dCopy = d;
  v7 = objc_alloc_init(_MRSetConversationDetectionEnabledMessageProtobuf);
  [(_MRSetConversationDetectionEnabledMessageProtobuf *)v7 setOutputDeviceUID:dCopy];

  [(_MRSetConversationDetectionEnabledMessageProtobuf *)v7 setEnabled:enabledCopy];
  v8 = [(MRSetConversationDetectionEnabledMessage *)self initWithUnderlyingCodableMessage:v7 error:0];

  return v8;
}

- (MRSetConversationDetectionEnabledMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = MRSetConversationDetectionEnabledMessage;
  v7 = [(MRProtocolMessage *)&v11 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    outputDeviceUID = [messageCopy outputDeviceUID];
    outputDeviceUID = v7->_outputDeviceUID;
    v7->_outputDeviceUID = outputDeviceUID;

    v7->_enabled = [messageCopy enabled];
  }

  return v7;
}

@end