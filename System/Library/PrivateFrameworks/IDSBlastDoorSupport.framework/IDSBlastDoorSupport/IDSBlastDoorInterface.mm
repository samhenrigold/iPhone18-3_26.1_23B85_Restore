@interface IDSBlastDoorInterface
- (IDSBlastDoorInterface)init;
- (void)unpackClientMessage:(id)message context:(id)context resultHandler:(id)handler;
- (void)unpackPayloadDictionary:(id)dictionary resultHandler:(id)handler;
@end

@implementation IDSBlastDoorInterface

- (IDSBlastDoorInterface)init
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = IDSBlastDoorInterface;
  v2 = [(IDSBlastDoorInterface *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IDSBlastDoorInterfaceInternal);
    interface = v2->_interface;
    v2->_interface = v3;
  }

  return v2;
}

- (void)unpackPayloadDictionary:(id)dictionary resultHandler:(id)handler
{
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  interface = [(IDSBlastDoorInterface *)self interface];
  [interface unpackPayloadDictionary:dictionaryCopy resultHandler:handlerCopy];
}

- (void)unpackClientMessage:(id)message context:(id)context resultHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  messageCopy = message;
  interface = [(IDSBlastDoorInterface *)self interface];
  [interface unpackClientMessage:messageCopy context:contextCopy resultHandler:handlerCopy];
}

@end