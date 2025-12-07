@interface ASIDSMessageCenter
+ (id)addContext:(id)context toInvitation:(id)invitation;
- (ASIDSMessageCenter)initWithServiceIdentifier:(id)identifier;
- (ASIDSMessageCenterDelegate)delegate;
- (ASIDSMessageCenterSecureCloudDelegate)secureCloudDelegate;
- (id)_idsIdentifierForDestination:(id)destination;
- (id)_idsIdentifiersForDestinations:(id)destinations;
- (id)_messageHandlerForType:(int)type;
- (void)_dispatchAction:(SEL)action invocationBlock:(id)block;
- (void)_dispatchMessage:(id)message handler:(id)handler messageHandledCompletion:(id)completion;
- (void)_donateEntries:(id)entries completion:(id)completion;
- (void)_handleErrorForMessage:(id)message;
- (void)_handleErrorSendingFinalizeHandshake:(id)handshake;
- (void)_handleErrorSendingInviteRequest:(id)request;
- (void)_handleErrorSendingInviteResponse:(id)response;
- (void)_handleErrorSendingSecureCloudMessage:(id)message;
- (void)_handleErrorSendingWithdrawInviteRequest:(id)request;
- (void)_handleFinalizeHandshake:(id)handshake fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)_handleInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)_handleInviteResponse:(id)response fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)_handleMessage:(id)message identifier:(id)identifier;
- (void)_handleMessageSendSuccess:(BOOL)success error:(id)error identifier:(id)identifier;
- (void)_handleSecureCloudMessage:(id)message fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)_handleWithdrawInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion;
- (void)_processMessageQueue:(id)queue preprocessingBlock:(id)block;
- (void)_retrieveFirewallWithCompletion:(id)completion;
- (void)_sendMessage:(id)message type:(int)type destinations:(id)destinations fromAddress:(id)address completion:(id)completion;
- (void)_sendPayload:(id)payload type:(int)type destinations:(id)destinations fromAddress:(id)address completion:(id)completion;
- (void)beginReceivingMessages;
- (void)dealloc;
- (void)donateAddresses:(id)addresses completion:(id)completion;
- (void)donatedAddressesWithCompletion:(id)completion;
- (void)endReceivingMessages;
- (void)processPersistedMessageQueue;
- (void)processRetryMessageQueue;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
@end

@implementation ASIDSMessageCenter

- (ASIDSMessageCenter)initWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = ASIDSMessageCenter;
  v6 = [(ASIDSMessageCenter *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceIdentifier, identifier);
    v8 = HKCreateSerialDispatchQueue();
    outgoingDispatchQueue = v7->_outgoingDispatchQueue;
    v7->_outgoingDispatchQueue = v8;

    v10 = HKCreateSerialDispatchQueue();
    incomingDispatchQueue = v7->_incomingDispatchQueue;
    v7->_incomingDispatchQueue = v10;

    v12 = [ASMessageQueue alloc];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-outgoing", identifierCopy];
    v14 = [(ASMessageQueue *)v12 initWithQueueName:identifierCopy];
    outgoingMessageQueue = v7->_outgoingMessageQueue;
    v7->_outgoingMessageQueue = v14;

    v16 = [ASMessageQueue alloc];
    identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-retry", identifierCopy];
    v18 = [(ASMessageQueue *)v16 initWithQueueName:identifierCopy2];
    retryMessageQueue = v7->_retryMessageQueue;
    v7->_retryMessageQueue = v18;

    v20 = [ASMessageQueue alloc];
    identifierCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-persisted", identifierCopy];
    v22 = [(ASMessageQueue *)v20 initWithQueueName:identifierCopy3];
    persistedMessageQueue = v7->_persistedMessageQueue;
    v7->_persistedMessageQueue = v22;
  }

  return v7;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = ASIDSMessageCenter;
  [(ASIDSMessageCenter *)&v3 dealloc];
}

- (void)beginReceivingMessages
{
  v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:self->_serviceIdentifier];
  idsService = self->_idsService;
  self->_idsService = v3;

  v5 = self->_idsService;
  incomingDispatchQueue = self->_incomingDispatchQueue;

  [(IDSService *)v5 addDelegate:self queue:incomingDispatchQueue];
}

- (void)endReceivingMessages
{
  [(IDSService *)self->_idsService removeDelegate:self];
  idsService = self->_idsService;
  self->_idsService = 0;
}

- (void)processRetryMessageQueue
{
  v7 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    serviceIdentifier = self->_serviceIdentifier;
    v5 = 138543362;
    v6 = serviceIdentifier;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter [%{public}@] processing retry messages", &v5, 0xCu);
  }

  [(ASIDSMessageCenter *)self _processMessageQueue:self->_retryMessageQueue preprocessingBlock:&__block_literal_global_13];
}

void __46__ASIDSMessageCenter_processRetryMessageQueue__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 setRetryCount:{objc_msgSend(v3, "retryCount") + 1}];
}

- (void)processPersistedMessageQueue
{
  v7 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    serviceIdentifier = self->_serviceIdentifier;
    v5 = 138543362;
    v6 = serviceIdentifier;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter [%{public}@] processing persisted messages", &v5, 0xCu);
  }

  [(ASIDSMessageCenter *)self _processMessageQueue:self->_persistedMessageQueue preprocessingBlock:0];
}

- (id)_messageHandlerForType:(int)type
{
  v3 = 0;
  if (type > 3)
  {
    if ((type - 100) >= 4)
    {
      if (type != 4)
      {
        goto LABEL_13;
      }

      v3 = objc_alloc_init(ASMessageHandler);
      [(ASMessageHandler *)v3 setProtobufClass:objc_opt_class()];
      v4 = &selRef__handleErrorSendingWithdrawInviteRequest_;
      v5 = &selRef__handleWithdrawInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion_;
    }

    else
    {
      v3 = objc_alloc_init(ASMessageHandler);
      v4 = &selRef__handleErrorSendingSecureCloudMessage_;
      v5 = &selRef__handleSecureCloudMessage_fromSenderAddress_receiverAddress_messageHandledCompletion_;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        v3 = objc_alloc_init(ASMessageHandler);
        [(ASMessageHandler *)v3 setProtobufClass:objc_opt_class()];
        v4 = &selRef__handleErrorSendingInviteRequest_;
        v5 = &selRef__handleInviteRequest_fromSenderAddress_receiverAddress_messageHandledCompletion_;
        break;
      case 2:
        v3 = objc_alloc_init(ASMessageHandler);
        [(ASMessageHandler *)v3 setProtobufClass:objc_opt_class()];
        v4 = &selRef__handleErrorSendingInviteResponse_;
        v5 = &selRef__handleInviteResponse_fromSenderAddress_receiverAddress_messageHandledCompletion_;
        break;
      case 3:
        v3 = objc_alloc_init(ASMessageHandler);
        [(ASMessageHandler *)v3 setProtobufClass:objc_opt_class()];
        v4 = &selRef__handleErrorSendingFinalizeHandshake_;
        v5 = &selRef__handleFinalizeHandshake_fromSenderAddress_receiverAddress_messageHandledCompletion_;
        break;
      default:
        goto LABEL_13;
    }
  }

  [(ASMessageHandler *)v3 setHandleReceiveMessageAction:*v5];
  [(ASMessageHandler *)v3 setHandleErrorSendingMessageAction:*v4];
LABEL_13:

  return v3;
}

- (void)_handleInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  completionCopy = completion;
  receiverAddressCopy = receiverAddress;
  addressCopy = address;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCenter:self didReceiveInviteRequest:requestCopy fromSenderAddress:addressCopy receiverAddress:receiverAddressCopy messageHandledCompletion:completionCopy];
}

- (void)_handleInviteResponse:(id)response fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  completionCopy = completion;
  receiverAddressCopy = receiverAddress;
  addressCopy = address;
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCenter:self didReceiveInviteResponse:responseCopy fromSenderAddress:addressCopy receiverAddress:receiverAddressCopy messageHandledCompletion:completionCopy];
}

- (void)_handleFinalizeHandshake:(id)handshake fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  completionCopy = completion;
  receiverAddressCopy = receiverAddress;
  addressCopy = address;
  handshakeCopy = handshake;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCenter:self didReceiveFinalizeHandshake:handshakeCopy fromSenderAddress:addressCopy receiverAddress:receiverAddressCopy messageHandledCompletion:completionCopy];
}

- (void)_handleWithdrawInviteRequest:(id)request fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  completionCopy = completion;
  receiverAddressCopy = receiverAddress;
  addressCopy = address;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCenter:self didReceiveWithdrawInviteRequest:requestCopy fromSenderAddress:addressCopy receiverAddress:receiverAddressCopy messageHandledCompletion:completionCopy];
}

- (void)_handleSecureCloudMessage:(id)message fromSenderAddress:(id)address receiverAddress:(id)receiverAddress messageHandledCompletion:(id)completion
{
  completionCopy = completion;
  addressCopy = address;
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
  payload = [messageCopy payload];
  type = [messageCopy type];

  [WeakRetained messageCenter:self didReceivePayload:payload type:type fromSenderAddress:addressCopy messageHandledCompletion:completionCopy];
}

- (void)_handleMessage:(id)message identifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_incomingDispatchQueue);
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __48__ASIDSMessageCenter__handleMessage_identifier___block_invoke;
  v18 = &unk_278C4CDA0;
  objc_copyWeak(&v21, &location);
  v8 = messageCopy;
  v19 = v8;
  v9 = identifierCopy;
  v20 = v9;
  v10 = MEMORY[0x23EF0EB00](&v15);
  v11 = -[ASIDSMessageCenter _messageHandlerForType:](self, "_messageHandlerForType:", [v8 type]);
  if (v11)
  {
    [(ASIDSMessageCenter *)self _dispatchMessage:v8 handler:v11 messageHandledCompletion:v10];
  }

  else
  {
    v12 = NSStringFromASMessageType([v8 type]);
    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      senderAddress = [v8 senderAddress];
      *buf = 138543874;
      v24 = v12;
      v25 = 2114;
      v26 = v9;
      v27 = 2112;
      v28 = senderAddress;
      _os_log_error_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_ERROR, "IDSMessageCenter ignoring protobuf with unknown type %{public}@, guid: %{public}@, from: %@", buf, 0x20u);
    }

    v10[2](v10, 0);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __48__ASIDSMessageCenter__handleMessage_identifier___block_invoke(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[3];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__ASIDSMessageCenter__handleMessage_identifier___block_invoke_2;
    v7[3] = &unk_278C4C7D0;
    v10 = a2;
    v7[4] = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(v6, v7);
  }
}

void __48__ASIDSMessageCenter__handleMessage_identifier___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      if (!v2)
      {
        ASLoggingInitialize();
        v3 = *MEMORY[0x277CE9008];
        if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter message handled successfully", &v11, 2u);
        }
      }

      return;
    }

    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter persisting message for later use", &v11, 2u);
    }

    v5 = a1[5];
    v6 = *(a1[4] + 48);
LABEL_13:
    [v6 setMessage:v5 identifier:a1[6]];
    return;
  }

  ASLoggingInitialize();
  v7 = MEMORY[0x277CE9008];
  v8 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[5];
    v10 = v8;
    v11 = 134217984;
    v12 = [v9 retryCount];
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter message needs retry, current count is %ld", &v11, 0xCu);
  }

  if ([a1[5] retryCount] <= 9)
  {
    v5 = a1[5];
    v6 = *(a1[4] + 40);
    goto LABEL_13;
  }

  ASLoggingInitialize();
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    __48__ASIDSMessageCenter__handleMessage_identifier___block_invoke_2_cold_1();
  }
}

- (void)_dispatchMessage:(id)message handler:(id)handler messageHandledCompletion:(id)completion
{
  messageCopy = message;
  handlerCopy = handler;
  completionCopy = completion;
  if ([handlerCopy protobufClass])
  {
    v11 = objc_alloc([handlerCopy protobufClass]);
    payload = [messageCopy payload];
    v13 = [v11 initWithData:payload];
  }

  else
  {
    v13 = 0;
  }

  handleReceiveMessageAction = [handlerCopy handleReceiveMessageAction];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__ASIDSMessageCenter__dispatchMessage_handler_messageHandledCompletion___block_invoke;
  v18[3] = &unk_278C4CDC8;
  v19 = v13;
  v20 = messageCopy;
  v22 = completionCopy;
  v23 = handleReceiveMessageAction;
  selfCopy = self;
  v15 = completionCopy;
  v16 = messageCopy;
  v17 = v13;
  [(ASIDSMessageCenter *)self _dispatchAction:handleReceiveMessageAction invocationBlock:v18];
}

void __72__ASIDSMessageCenter__dispatchMessage_handler_messageHandledCompletion___block_invoke(uint64_t a1, void (*a2)(uint64_t, uint64_t, id, id, void *, void *))
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = *(a1 + 40);
  }

  v5 = *(a1 + 64);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v11 = [v7 senderAddress];
  v9 = [*(a1 + 40) receiverAddress];
  v10 = MEMORY[0x23EF0EB00](*(a1 + 56));
  a2(v6, v5, v8, v11, v9, v10);
}

- (void)_handleErrorSendingInviteRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 messageCenter:self errorSendingInviteRequest:requestCopy];
  }
}

- (void)_handleErrorSendingInviteResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 messageCenter:self errorSendingInviteResponse:responseCopy];
  }
}

- (void)_handleErrorSendingFinalizeHandshake:(id)handshake
{
  handshakeCopy = handshake;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 messageCenter:self errorSendingFinalizeHandshake:handshakeCopy];
  }
}

- (void)_handleErrorSendingWithdrawInviteRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 messageCenter:self errorSendingWithdrawInviteRequest:requestCopy];
  }
}

- (void)_handleErrorSendingSecureCloudMessage:(id)message
{
  messageCopy = message;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    [(ASIDSMessageCenter *)v4 _handleErrorSendingSecureCloudMessage:messageCopy];
  }
}

- (void)_handleErrorForMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_outgoingDispatchQueue);
  v5 = -[ASIDSMessageCenter _messageHandlerForType:](self, "_messageHandlerForType:", [messageCopy type]);
  v6 = v5;
  if (v5)
  {
    v7 = objc_alloc([v5 protobufClass]);
    payload = [messageCopy payload];
    v9 = [v7 initWithData:payload];

    handleErrorSendingMessageAction = [v6 handleErrorSendingMessageAction];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__ASIDSMessageCenter__handleErrorForMessage___block_invoke;
    v12[3] = &unk_278C4CDF0;
    v13 = v9;
    v14 = messageCopy;
    selfCopy = self;
    v16 = handleErrorSendingMessageAction;
    v11 = v9;
    [(ASIDSMessageCenter *)self _dispatchAction:handleErrorSendingMessageAction invocationBlock:v12];
  }
}

uint64_t __45__ASIDSMessageCenter__handleErrorForMessage___block_invoke(void *a1, uint64_t (*a2)(void, void, uint64_t))
{
  v2 = a1[4];
  if (!v2)
  {
    v2 = a1[5];
  }

  return a2(a1[6], a1[7], v2);
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  protobufCopy = protobuf;
  context = [protobufCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];

  v15 = objc_alloc_init(ASMessage);
  v16 = IDSCopyRawAddressForDestination();

  [(ASMessage *)v15 setSenderAddress:v16];
  toID = [contextCopy toID];

  v18 = IDSCopyRawAddressForDestination();
  [(ASMessage *)v15 setReceiverAddress:v18];

  -[ASMessage setType:](v15, "setType:", [protobufCopy type]);
  data = [protobufCopy data];
  [(ASMessage *)v15 setPayload:data];

  type = [protobufCopy type];
  v21 = NSStringFromASMessageType(type);
  ASLoggingInitialize();
  v22 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    senderAddress = [(ASMessage *)v15 senderAddress];
    v25 = 138543874;
    v26 = v21;
    v27 = 2114;
    v28 = outgoingResponseIdentifier;
    v29 = 2112;
    v30 = senderAddress;
    _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter received protobuf of type %{public}@, guid: %{public}@, from: %@", &v25, 0x20u);
  }

  [(ASIDSMessageCenter *)self _handleMessage:v15 identifier:outgoingResponseIdentifier];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  ASLoggingInitialize();
  v12 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    v14 = identifierCopy;
    v15 = 1024;
    v16 = successCopy;
    v17 = 2114;
    v18 = errorCopy;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter sent protobuf with guid %{public}@ to server with success: %d error: %{public}@", &v13, 0x1Cu);
  }

  [(ASIDSMessageCenter *)self _handleMessageSendSuccess:successCopy error:errorCopy identifier:identifierCopy];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter successfully delivered protobuf with guid %{public}@ to remote device", &v9, 0xCu);
  }

  [(ASIDSMessageCenter *)self _handleMessageSendSuccess:1 error:0 identifier:identifierCopy];
}

- (void)_handleMessageSendSuccess:(BOOL)success error:(id)error identifier:(id)identifier
{
  errorCopy = error;
  identifierCopy = identifier;
  outgoingDispatchQueue = self->_outgoingDispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__ASIDSMessageCenter__handleMessageSendSuccess_error_identifier___block_invoke;
  v13[3] = &unk_278C4CE18;
  v13[4] = self;
  v14 = identifierCopy;
  successCopy = success;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = identifierCopy;
  dispatch_async(outgoingDispatchQueue, v13);
}

void __65__ASIDSMessageCenter__handleMessageSendSuccess_error_identifier___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) messageWithIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = NSStringFromASMessageType([v2 type]);
    if (*(a1 + 56) == 1 && !*(a1 + 48))
    {
      ASLoggingInitialize();
      v7 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138543618;
        v16 = v4;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter success sending protobuf with type %{public}@, guid %{public}@", buf, 0x16u);
      }
    }

    else
    {
      ASLoggingInitialize();
      v5 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        *buf = 138543874;
        v16 = v4;
        v17 = 2114;
        v18 = v9;
        v19 = 2114;
        v20 = v10;
        _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "IDSMessageCenter error sending protobuf with type %{public}@, guid %{public}@, error: %{public}@", buf, 0x20u);
      }

      [*(a1 + 32) _handleErrorForMessage:v3];
    }

    [*(*(a1 + 32) + 32) removeMessageWithIdentifier:*(a1 + 40)];
    v6 = [v3 ephemeralCompletionBlock];

    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__ASIDSMessageCenter__handleMessageSendSuccess_error_identifier___block_invoke_375;
      block[3] = &unk_278C4C758;
      v12 = v3;
      v14 = *(a1 + 56);
      v13 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __65__ASIDSMessageCenter__handleMessageSendSuccess_error_identifier___block_invoke_375(uint64_t a1)
{
  v2 = [*(a1 + 32) ephemeralCompletionBlock];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

- (void)_sendMessage:(id)message type:(int)type destinations:(id)destinations fromAddress:(id)address completion:(id)completion
{
  v9 = *&type;
  completionCopy = completion;
  addressCopy = address;
  destinationsCopy = destinations;
  data = [message data];
  [(ASIDSMessageCenter *)self _sendPayload:data type:v9 destinations:destinationsCopy fromAddress:addressCopy completion:completionCopy];
}

- (void)_sendPayload:(id)payload type:(int)type destinations:(id)destinations fromAddress:(id)address completion:(id)completion
{
  payloadCopy = payload;
  destinationsCopy = destinations;
  addressCopy = address;
  completionCopy = completion;
  outgoingDispatchQueue = self->_outgoingDispatchQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__ASIDSMessageCenter__sendPayload_type_destinations_fromAddress_completion___block_invoke;
  v21[3] = &unk_278C4CE40;
  typeCopy = type;
  v22 = destinationsCopy;
  v23 = payloadCopy;
  v24 = addressCopy;
  selfCopy = self;
  v26 = completionCopy;
  v17 = completionCopy;
  v18 = addressCopy;
  v19 = payloadCopy;
  v20 = destinationsCopy;
  dispatch_async(outgoingDispatchQueue, v21);
}

void __76__ASIDSMessageCenter__sendPayload_type_destinations_fromAddress_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromASMessageType(*(a1 + 72));
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543618;
    v28 = v2;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter requesting send for protobuf of type %{public}@ to destinations: %@", buf, 0x16u);
  }

  v5 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:*(a1 + 40) type:*(a1 + 72) isResponse:0];
  v25[0] = *MEMORY[0x277D18650];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v25[1] = *MEMORY[0x277D18678];
  v26[0] = v6;
  v26[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v8 = [v7 mutableCopy];

  if (*(a1 + 48))
  {
    v9 = [*(a1 + 56) _idsIdentifierForDestination:?];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D185E0]];
  }

  v10 = [*(a1 + 56) _idsIdentifiersForDestinations:*(a1 + 32)];
  v11 = *(*(a1 + 56) + 8);
  v23 = 0;
  v24 = 0;
  v12 = [v11 sendProtobuf:v5 toDestinations:v10 priority:300 options:v8 identifier:&v24 error:&v23];
  v13 = v24;
  v14 = v23;
  v15 = objc_alloc_init(ASMessage);
  [(ASMessage *)v15 setType:*(a1 + 72)];
  [(ASMessage *)v15 setPayload:*(a1 + 40)];
  v16 = [*(a1 + 64) copy];
  [(ASMessage *)v15 setEphemeralCompletionBlock:v16];

  if (!v12 || v14)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __76__ASIDSMessageCenter__sendPayload_type_destinations_fromAddress_completion___block_invoke_cold_1();
    }

    [*(a1 + 56) _handleErrorForMessage:v15];
    v18 = [(ASMessage *)v15 ephemeralCompletionBlock];

    if (v18)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__ASIDSMessageCenter__sendPayload_type_destinations_fromAddress_completion___block_invoke_379;
      block[3] = &unk_278C4C758;
      v20 = v15;
      v22 = v12;
      v21 = v14;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    [*(*(a1 + 56) + 32) setMessage:v15 identifier:v13];
    ASLoggingInitialize();
    v17 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v2;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter successfully requested send for protobuf of type %{public}@, guid: %{public}@", buf, 0x16u);
    }
  }
}

void __76__ASIDSMessageCenter__sendPayload_type_destinations_fromAddress_completion___block_invoke_379(uint64_t a1)
{
  v2 = [*(a1 + 32) ephemeralCompletionBlock];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

- (void)_dispatchAction:(SEL)action invocationBlock:(id)block
{
  blockCopy = block;
  v7 = [(ASIDSMessageCenter *)self methodForSelector:action];
  if (v7)
  {
    v8 = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__ASIDSMessageCenter__dispatchAction_invocationBlock___block_invoke;
    v9[3] = &unk_278C4CE68;
    v10 = blockCopy;
    v11 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (void)_processMessageQueue:(id)queue preprocessingBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  incomingDispatchQueue = self->_incomingDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ASIDSMessageCenter__processMessageQueue_preprocessingBlock___block_invoke;
  block[3] = &unk_278C4CEB8;
  selfCopy = self;
  v14 = blockCopy;
  v12 = queueCopy;
  v9 = blockCopy;
  v10 = queueCopy;
  dispatch_sync(incomingDispatchQueue, block);
}

void __62__ASIDSMessageCenter__processMessageQueue_preprocessingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ASIDSMessageCenter__processMessageQueue_preprocessingBlock___block_invoke_2;
  v5[3] = &unk_278C4CE90;
  v8 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 enumerateQueuedMessagesUsingBlock:v5];
}

void __62__ASIDSMessageCenter__processMessageQueue_preprocessingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = NSStringFromASMessageType([v6 type]);
    v10 = [v6 senderAddress];
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v5;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter redelivering protobuf of type %{public}@, guid: %{public}@, from: %@", &v12, 0x20u);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }

  [*(a1 + 32) removeMessageWithIdentifier:v5];
  [*(a1 + 40) _handleMessage:v6 identifier:v5];
}

- (id)_idsIdentifierForDestination:(id)destination
{
  destinationCopy = destination;
  if (([destinationCopy containsString:@"tel:"] & 1) != 0 || objc_msgSend(destinationCopy, "containsString:", @"mailto:"))
  {
    v4 = destinationCopy;
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  if ([destinationCopy containsString:@"@"])
  {
    v4 = MEMORY[0x23EF0E550](destinationCopy);
    goto LABEL_4;
  }

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v8 = [destinationCopy rangeOfCharacterFromSet:decimalDigitCharacterSet];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = IDSCopyIDForPhoneNumber();
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)_idsIdentifiersForDestinations:(id)destinations
{
  v19 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(destinationsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = destinationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ASIDSMessageCenter *)self _idsIdentifierForDestination:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v12;
}

- (void)_retrieveFirewallWithCompletion:(id)completion
{
  completionCopy = completion;
  idsService = self->_idsService;
  outgoingDispatchQueue = self->_outgoingDispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ASIDSMessageCenter__retrieveFirewallWithCompletion___block_invoke;
  v8[3] = &unk_278C4CEE0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(IDSService *)idsService retrieveFirewallWithQueue:outgoingDispatchQueue completion:v8];
}

void __54__ASIDSMessageCenter__retrieveFirewallWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __54__ASIDSMessageCenter__retrieveFirewallWithCompletion___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  if (v5)
  {
    v7 = *(*(a1 + 32) + 16);
LABEL_7:
    v7();
    goto LABEL_8;
  }

  ASLoggingInitialize();
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
  {
    __54__ASIDSMessageCenter__retrieveFirewallWithCompletion___block_invoke_cold_2();
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.IDSMessageCenter" code:1 userInfo:0];
  (*(v8 + 16))(v8, 0, v9);

LABEL_8:
}

- (void)_donateEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  completionCopy = completion;
  outgoingDispatchQueue = self->_outgoingDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASIDSMessageCenter__donateEntries_completion___block_invoke;
  block[3] = &unk_278C4BA30;
  v12 = entriesCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = entriesCopy;
  dispatch_async(outgoingDispatchQueue, block);
}

void __48__ASIDSMessageCenter__donateEntries_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter adding firewall entries %{public}@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ASIDSMessageCenter__donateEntries_completion___block_invoke_394;
  v5[3] = &unk_278C4CF30;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v4 _retrieveFirewallWithCompletion:v5];
}

void __48__ASIDSMessageCenter__donateEntries_completion___block_invoke_394(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter donating firewall entries %{public}@, to firewall %{public}@", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ASIDSMessageCenter__donateEntries_completion___block_invoke_395;
    v9[3] = &unk_278C4CF08;
    v10 = v8;
    v11 = *(a1 + 40);
    [v5 donateEntries:v10 withCompletion:v9];
  }
}

void __48__ASIDSMessageCenter__donateEntries_completion___block_invoke_395(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE9008];
  v5 = *MEMORY[0x277CE9008];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__ASIDSMessageCenter__donateEntries_completion___block_invoke_395_cold_1(a1, v3, v4);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "IDSMessageCenter added firewall entries %{public}@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

- (void)donateAddresses:(id)addresses completion:(id)completion
{
  addressesCopy = addresses;
  completionCopy = completion;
  v8 = [addressesCopy hk_map:&__block_literal_global_399];
  v9 = [v8 count];
  if (v9 == [addressesCopy count])
  {
    [(ASIDSMessageCenter *)self _donateEntries:v8 completion:completionCopy];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      [ASIDSMessageCenter donateAddresses:completion:];
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.IDSMessageCenter" code:2 userInfo:0];
    completionCopy[2](completionCopy, 0, v10);
  }
}

id __49__ASIDSMessageCenter_donateAddresses_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D18A48] URIWithUnprefixedURI:v2];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D18718]) initWithURI:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        __49__ASIDSMessageCenter_donateAddresses_completion___block_invoke_cold_1();
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __49__ASIDSMessageCenter_donateAddresses_completion___block_invoke_cold_2();
    }

    v5 = 0;
  }

  return v5;
}

- (void)donatedAddressesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke;
  v6[3] = &unk_278C4CEE0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(ASIDSMessageCenter *)self _retrieveFirewallWithCompletion:v6];
}

void __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke_2;
    v7[3] = &unk_278C4CF98;
    v8 = *(a1 + 32);
    [a2 currentDonatedEntries:v7];
  }
}

void __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = [v5 hk_map:&__block_literal_global_405];
      v8 = *(*(a1 + 32) + 16);
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke_2_cold_2();
      }

      v9 = *(a1 + 32);
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.IDSMessageCenter" code:3 userInfo:0];
      v8 = *(v9 + 16);
    }

    v8();
  }
}

id __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke_402(uint64_t a1, void *a2)
{
  v2 = [a2 uri];
  v3 = [v2 unprefixedURI];

  return v3;
}

+ (id)addContext:(id)context toInvitation:(id)invitation
{
  contextCopy = context;
  invitationCopy = invitation;
  if (objc_opt_respondsToSelector())
  {
    [invitationCopy setContext:contextCopy];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      +[ASIDSMessageCenter addContext:toInvitation:];
    }
  }

  return invitationCopy;
}

- (ASIDSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ASIDSMessageCenterSecureCloudDelegate)secureCloudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

  return WeakRetained;
}

- (void)_handleErrorSendingSecureCloudMessage:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromASMessageType([a2 type]);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_ERROR, "Error sending secure cloud message of type: %@", v5, 0xCu);
}

void __54__ASIDSMessageCenter__retrieveFirewallWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__ASIDSMessageCenter__donateEntries_completion___block_invoke_395_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, a2, a3, "IDSMessageCenter failed to donate firewall entries %{public}@, error %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)donateAddresses:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__ASIDSMessageCenter_donateAddresses_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__ASIDSMessageCenter_donateAddresses_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __53__ASIDSMessageCenter_donatedAddressesWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)addContext:toInvitation:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end