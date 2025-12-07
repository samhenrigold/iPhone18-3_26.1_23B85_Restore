@interface HDNotificationInstructionSyncSendEvent
- (HDNotificationInstructionSyncSendEvent)initWithNotificationInstructionMessage:(id)message sendError:(id)error;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDNotificationInstructionSyncSendEvent

- (HDNotificationInstructionSyncSendEvent)initWithNotificationInstructionMessage:(id)message sendError:(id)error
{
  messageCopy = message;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = HDNotificationInstructionSyncSendEvent;
  v8 = [(HDNotificationInstructionSyncSendEvent *)&v14 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(messageCopy);
    message = v8->_message;
    v8->_message = v9;

    v11 = objc_msgSend_copy(errorCopy);
    sendError = v8->_sendError;
    v8->_sendError = v11;
  }

  return v8;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"categoryIdentifier";
  v4 = [(HDNotificationInstructionMessage *)self->_message categoryIdentifier:source];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v16 = @"clientIdentifier";
  clientIdentifier = [(HDNotificationInstructionMessage *)self->_message clientIdentifier];
  v17[0] = clientIdentifier;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = [v5 initWithDictionary:v7];

  sendError = self->_sendError;
  if (sendError)
  {
    v10 = MEMORY[0x277CCACA8];
    domain = [(NSError *)sendError domain];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](self->_sendError, "code")}];
    v13 = [v10 stringWithFormat:@"%@_%@", domain, v12];
    [v8 setObject:v13 forKeyedSubscript:@"error"];
  }

  v14 = objc_msgSend_copy(v8);

  return v14;
}

@end