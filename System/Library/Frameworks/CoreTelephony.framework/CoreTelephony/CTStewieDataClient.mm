@interface CTStewieDataClient
- (BOOL)sendMessage:(id)message completion:(id)completion;
- (BOOL)start;
- (CTStewieDataClient)initWithServices:(int64_t)services delegate:(id)delegate delegateQueue:(id)queue;
- (id).cxx_construct;
- (id)dispatchOnDelegateQueue:(NSObject  *){objcproto17OS_dispatch_queue};
- (id)dispatchOnDelegateQueue:(id *)queue;
- (id)sendMessage:(NSObject  *){objcproto17OS_dispatch_queue} completion:(std::unique_ptr<-[CTStewieDataClient)sendMessage:completion:]::$_2>;
- (id)sendMessage:(id *)message completion:;
- (void)connectionPairStateChanged:(int64_t)changed;
- (void)createConnectionPairIfRequired;
- (void)discardConnectionPairIfRequired;
- (void)dispatchOnDelegateQueue:(id)queue;
- (void)failAllPendingMessages;
- (void)invokeSendCompletionForMsgId:(id)id ack:(id)ack metadata:(id)metadata;
- (void)reEvaluate;
- (void)receivedData:(id)data fromConnectionId:(int64_t)id;
- (void)sendMessageInternal:(id)internal usingConnection:(int64_t)connection completion:(id)completion;
- (void)stateChanged:(id)changed;
- (void)updateConnectedServices:(int64_t)services;
@end

@implementation CTStewieDataClient

- (CTStewieDataClient)initWithServices:(int64_t)services delegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = CTStewieDataClient;
  v10 = [(CTStewieDataClient *)&v27 init];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = [objc_opt_class() conformsToProtocol:&unk_1EF088160];
  if ((v11 & 1) == 0)
  {
    v13 = CTLogStewieDataClient(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  if (!queueCopy)
  {
    v13 = CTLogStewieDataClient(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  if (!services)
  {
    v13 = CTLogStewieDataClient(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  if (*(v10 + 3) >= 0x10000uLL)
  {
    v13 = CTLogStewieDataClient(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

LABEL_18:

LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  *(v10 + 8) = 0;
  qos_class = dispatch_queue_get_qos_class(queueCopy, 0);
  v15 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v16 = dispatch_queue_create("CTStewieDataClient", v15);
  v17 = *(v10 + 2);
  *(v10 + 2) = v16;

  *(v10 + 3) = services;
  *(v10 + 4) = 0;
  objc_storeWeak(v10 + 5, delegateCopy);
  objc_storeStrong(v10 + 6, queue);
  v18 = *(v10 + 7);
  *(v10 + 7) = 0;

  *(v10 + 8) = 0;
  v19 = objc_alloc_init(CTStewieState);
  v20 = *(v10 + 9);
  *(v10 + 9) = v19;

  v21 = [[CTStewieStateMonitor alloc] initWithDelegate:v10 queue:*(v10 + 2)];
  v22 = *(v10 + 10);
  *(v10 + 10) = v21;

  if (!*(v10 + 10))
  {
    v13 = CTLogStewieDataClient(v23, v24);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  v25 = v10;
LABEL_20:

  return v25;
}

- (BOOL)start
{
  selfCopy = self;
  v5 = 0;
  v2 = *(self + 2);
  v4[0] = &selfCopy;
  v4[1] = &v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN8dispatch9sync_implIZ27__CTStewieDataClient_start_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  dispatch_sync(v2, block);
  return v5;
}

- (void)dispatchOnDelegateQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(*(self + 2));
  objc_initWeak(&location, self);
  v5 = *(self + 6);
  objc_copyWeak(to, &location);
  to[1] = _Block_copy(queueCopy);
  v6 = v5;
  operator new();
}

- (void)sendMessageInternal:(id)internal usingConnection:(int64_t)connection completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  completionCopy = completion;
  dispatch_assert_queue_V2(*(self + 2));
  if (*(self + 4) && *(self + 7) && *(self + 8) == 1)
  {
    v12 = objc_alloc_init(CTStewieTransportMessage);
    [(CTStewieTransportMessage *)v12 setData:internalCopy];
    v33 = 0;
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v33];
    v14 = v33;
    v16 = v14;
    if (v14 || !v13)
    {
      v24 = CTLogStewieDataClient(v14, v15);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient sendMessageInternal:usingConnection:completion:];
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_62;
      v31[3] = &unk_1E6A48050;
      v32 = completionCopy;
      [(CTStewieDataClient *)self dispatchOnDelegateQueue:v31];
      msgId = v32;
    }

    else
    {
      v17 = [v13 length];
      if (v17 <= 0x1000)
      {
        msgId = [(CTStewieTransportMessage *)v12 msgId];
        v25 = _Block_copy(completionCopy);
        v26 = msgId;
        std::string::basic_string[abi:nn200100]<0>(buf, [msgId UTF8String]);
        v36 = buf;
        v27 = std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(self + 11, buf, &std::piecewise_construct, &v36);
        v28 = *(v27 + 56);
        *(v27 + 56) = v25;
        if (v38 < 0)
        {
          operator delete(*buf);
        }

        [*(self + 7) sendData:v13 usingConnection:connection completion:*MEMORY[0x1E6977E80]];
      }

      else
      {
        v19 = CTLogStewieDataClient(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          -[CTStewieDataClient sendMessageInternal:usingConnection:completion:].cold.2(buf, [v13 length], v19);
        }

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_63;
        v29[3] = &unk_1E6A48050;
        v30 = completionCopy;
        [(CTStewieDataClient *)self dispatchOnDelegateQueue:v29];
        msgId = v30;
      }
    }
  }

  else
  {
    v21 = CTLogStewieDataClient(v10, v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(self + 4);
      v23 = CTConnectionPairStateAsString(*(self + 8));
      [CTStewieDataClient sendMessageInternal:v23 usingConnection:buf completion:v22];
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke;
    v34[3] = &unk_1E6A48050;
    v35 = completionCopy;
    [(CTStewieDataClient *)self dispatchOnDelegateQueue:v34];
    v12 = v35;
  }
}

void __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(v1 + 16))(v1);
}

void __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(v1 + 16))(v1);
}

void __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_63(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(v1 + 16))(v1);
}

- (BOOL)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = [objc_opt_class() conformsToProtocol:&unk_1EF072C68];
  if ((v8 & 1) == 0)
  {
    v13 = CTLogStewieDataClient(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient sendMessage:completion:];
    }

    goto LABEL_19;
  }

  if (!completionCopy)
  {
    v13 = CTLogStewieDataClient(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient sendMessage:completion:];
    }

LABEL_19:
    v15 = 0;
    goto LABEL_23;
  }

  v23 = 0;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:messageCopy requiringSecureCoding:1 error:&v23];
  v11 = v23;
  v13 = v11;
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = v10 == 0;
  }

  v15 = !v14;
  if (!v14)
  {
    v16 = ([messageCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(messageCopy, "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(messageCopy, "isMemberOfClass:", objc_opt_class());
    objc_initWeak(&location, self);
    v17 = *(self + 2);
    objc_copyWeak(v21, &location);
    v21[1] = v10;
    v21[2] = v16;
    v21[3] = _Block_copy(completionCopy);
    v18 = v17;
    operator new();
  }

  v19 = CTLogStewieDataClient(v11, v12);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [CTStewieDataClient sendMessage:completion:];
  }

LABEL_23:
  return v15;
}

- (void)invokeSendCompletionForMsgId:(id)id ack:(id)ack metadata:(id)metadata
{
  idCopy = id;
  ackCopy = ack;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(*(self + 2));
  if (idCopy)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [idCopy UTF8String]);
    v11 = std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::find<std::string>(self + 88, __p);
    v13 = v11;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if ((self + 96) == v13)
    {
      v14 = CTLogStewieDataClient(v11, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient invokeSendCompletionForMsgId:ack:metadata:];
      }
    }

    else
    {
      v14 = _Block_copy(*(v13 + 56));
      std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::erase(self + 11, v13);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3321888768;
      v16[2] = __64__CTStewieDataClient_invokeSendCompletionForMsgId_ack_metadata___block_invoke;
      v16[3] = &unk_1EF013728;
      v19 = _Block_copy(v14);
      v17 = ackCopy;
      v18 = metadataCopy;
      [(CTStewieDataClient *)self dispatchOnDelegateQueue:v16];

      v15 = v19;
      v19 = 0;
    }
  }
}

- (void)failAllPendingMessages
{
  dispatch_assert_queue_V2(*(self + 2));
  v3 = *(self + 11);
  v4 = self + 96;
  if (v3 != (self + 96))
  {
    do
    {
      *__p = 0u;
      *aBlock = 0u;
      std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>::pair[abi:nn200100](__p, v3 + 2);
      v5 = _Block_copy(aBlock[1]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3321888768;
      v11[2] = __44__CTStewieDataClient_failAllPendingMessages__block_invoke;
      v11[3] = &__block_descriptor_40_ea8_32c88_ZTSN8dispatch5blockIU8__strongU13block_pointerFvP18CTStewieMessageAckP12NSDictionaryEEE_e38_v16__0___CTStewieDataClientDelegate__8l;
      v12 = _Block_copy(v5);
      [(CTStewieDataClient *)self dispatchOnDelegateQueue:v11];
      v6 = v12;
      v12 = 0;

      v7 = aBlock[1];
      aBlock[1] = 0;

      if (SHIBYTE(aBlock[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::destroy(self + 88, *(self + 12));
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = v4;
}

void __44__CTStewieDataClient_failAllPendingMessages__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(*(a1 + 32) + 16))();
}

- (void)updateConnectedServices:(int64_t)services
{
  dispatch_assert_queue_V2(*(self + 2));
  if (*(self + 4) != services)
  {
    *(self + 4) = services;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__CTStewieDataClient_updateConnectedServices___block_invoke;
    v5[3] = &__block_descriptor_40_e38_v16__0___CTStewieDataClientDelegate__8l;
    v5[4] = services;
    [(CTStewieDataClient *)self dispatchOnDelegateQueue:v5];
    if (!*(self + 4))
    {
      [(CTStewieDataClient *)self failAllPendingMessages];
    }
  }
}

void __46__CTStewieDataClient_updateConnectedServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 connectedServicesChanged:*(a1 + 32)];
}

- (void)createConnectionPairIfRequired
{
  dispatch_assert_queue_V2(*(self + 2));
  if (!*(self + 7))
  {
    v3 = xpc_array_create(0, 0);
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "CoreTelephony");
    v4 = xpc_array_create(0, 0);
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "Stewie");
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    nw_parameters_set_allow_ultra_constrained();
    v6 = nw_parameters_set_no_proxy();
    if (!secure_udp)
    {
      options = CTLogStewieDataClient(v6, v7);
      if (os_log_type_enabled(options, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }

      goto LABEL_29;
    }

    nw_parameters_set_required_netagent_classes();
    definition = nw_framer_create_definition("StewieClient", 0, &__block_literal_global_7);
    options = nw_framer_create_options(definition);

    v10 = nw_parameters_copy_default_protocol_stack(secure_udp);
    nw_protocol_stack_prepend_application_protocol(v10, options);
    memset(&v26, 0, sizeof(v26));
    std::to_string(&v26, *(self + 3));
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v26;
    }

    else
    {
      v11 = v26.__r_.__value_.__r.__words[0];
    }

    host = nw_endpoint_create_host("dataclientOne", v11);
    if (!host)
    {
      v16 = CTLogStewieDataClient(0, v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }

      goto LABEL_26;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v26;
    }

    else
    {
      v14 = v26.__r_.__value_.__r.__words[0];
    }

    v16 = nw_endpoint_create_host("dataclientTwo", v14);
    if (v16)
    {
      v17 = [[CTConnectionPair alloc] initWithQueue:*(self + 2) delegate:self endpoint1:host parameters1:secure_udp endpoint2:v16 parameter2:secure_udp];
      v18 = *(self + 7);
      *(self + 7) = v17;

      v20 = *(self + 7);
      if (!v20)
      {
        v21 = CTLogStewieDataClient(0, v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [CTStewieDataClient createConnectionPairIfRequired];
        }

        v20 = *(self + 7);
      }

      start = [v20 start];
      if (start)
      {
        goto LABEL_26;
      }

      v24 = CTLogStewieDataClient(start, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }

      v25 = *(self + 7);
      *(self + 7) = 0;
    }

    else
    {
      v25 = CTLogStewieDataClient(0, v15);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }
    }

LABEL_26:
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

LABEL_29:
  }
}

uint64_t __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_2;
  input_handler[3] = &unk_1E6A480E0;
  v3 = v2;
  v6 = v3;
  nw_framer_set_input_handler(v3, input_handler);
  nw_framer_set_output_handler(v3, &__block_literal_global_91);

  return 2;
}

uint64_t __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_2(uint64_t a1, NSObject *a2)
{
  parse[0] = MEMORY[0x1E69E9820];
  parse[1] = 3221225472;
  parse[2] = __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3;
  parse[3] = &unk_1E6A480B8;
  v6 = *(a1 + 32);
  if (nw_framer_parse_input(a2, 3uLL, 3uLL, 0, parse))
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

uint64_t __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3(uint64_t a1, const void *a2, size_t a3)
{
  result = 0;
  if (a2 && a3 >= 3)
  {
    v5 = memcmp(&kCTStewieMagicPacket, a2, a3);
    v6 = v5;
    v8 = CTLogConnectionPair(v5, v7);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3_cold_1();
      }

      nw_framer_mark_failed_with_error(*(a1 + 32), 50);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3_cold_2();
      }

      nw_framer_pass_through_input(*(a1 + 32));
      nw_framer_pass_through_output(*(a1 + 32));
      nw_framer_mark_ready(*(a1 + 32));
    }

    return 3;
  }

  return result;
}

- (void)discardConnectionPairIfRequired
{
  dispatch_assert_queue_V2(*(self + 2));
  v5 = *(self + 7);
  v4 = (self + 56);
  v3 = v5;
  if (v5)
  {
    *v4 = 0;
    v4[1] = 0;
  }
}

- (void)reEvaluate
{
  dispatch_assert_queue_V2(*(self + 2));
  v3 = *(self + 3);
  v4 = [*(self + 9) dataPathAssertedServices] & v3;
  if (!v4 || *(self + 8) == 2)
  {
    [(CTStewieDataClient *)self discardConnectionPairIfRequired];
    selfCopy2 = self;
    v6 = 0;
LABEL_4:

    [(CTStewieDataClient *)selfCopy2 updateConnectedServices:v6];
    return;
  }

  activeServices = [*(self + 9) activeServices];
  if (*(self + 7) && *(self + 8) == 1)
  {
    v6 = activeServices & v4;
    selfCopy2 = self;
    goto LABEL_4;
  }

  [(CTStewieDataClient *)self createConnectionPairIfRequired];
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(*(self + 2));
  if (([*(self + 9) isEqual:changedCopy] & 1) == 0)
  {
    objc_storeStrong(self + 9, changed);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__CTStewieDataClient_stateChanged___block_invoke;
    v6[3] = &unk_1E6A48128;
    v7 = changedCopy;
    [(CTStewieDataClient *)self dispatchOnDelegateQueue:v6];
    [(CTStewieDataClient *)self reEvaluate];
  }
}

void __35__CTStewieDataClient_stateChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 stateChanged:*(a1 + 32)];
}

- (void)connectionPairStateChanged:(int64_t)changed
{
  dispatch_assert_queue_V2(*(self + 2));
  if (*(self + 7) && *(self + 8) != changed)
  {
    *(self + 8) = changed;

    [(CTStewieDataClient *)self reEvaluate];
  }
}

- (void)receivedData:(id)data fromConnectionId:(int64_t)id
{
  v91[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dispatch_assert_queue_V2(*(self + 2));
  if (dataCopy && *(self + 7))
  {
    v80 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v80];
    v10 = v80;
    v12 = v10;
    if (!v9 || v10)
    {
      msgId2 = CTLogStewieDataClient(v10, v11);
      if (os_log_type_enabled(msgId2, OS_LOG_TYPE_ERROR))
      {
        v28 = [dataCopy length];
        v29 = CTConnectionPairConnectionIDAsString(id);
        [(CTStewieDataClient *)v29 receivedData:v28 fromConnectionId:?];
      }
    }

    else
    {
      data = [v9 data];
      v15 = data;
      if (!data || ([v9 data], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length") == 0, v16, v15, v17))
      {
        v30 = CTLogStewieDataClient(data, v14);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          msgId = [v9 msgId];
          v32 = CTConnectionPairConnectionIDAsString(id);
          [(CTStewieDataClient *)msgId receivedData:v32 fromConnectionId:location, v30];
        }

        msgId2 = [v9 msgId];
        v33 = [CTStewieMessageAck alloc];
        v34 = MEMORY[0x1E696ABC0];
        v90 = *MEMORY[0x1E696A578];
        v91[0] = @"Transport error: raise a bug";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:&v90 count:1];
        v36 = [v34 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v35];
        v37 = [(CTStewieMessageAck *)v33 initWithError:v36];
        [(CTStewieDataClient *)self invokeSendCompletionForMsgId:msgId2 ack:v37 metadata:0];

        v12 = 0;
      }

      else
      {
        v18 = MEMORY[0x1E696ACD0];
        v19 = +[CTStewieTransportMessage allowedSetOfClasses];
        data2 = [v9 data];
        v79 = 0;
        msgId2 = [v18 unarchivedObjectOfClasses:v19 fromData:data2 error:&v79];
        v12 = v79;

        if (!msgId2 || v12)
        {
          v39 = CTLogStewieDataClient(v22, v23);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            msgId3 = [v9 msgId];
            data3 = [v9 data];
            v66 = [data3 length];
            v67 = CTConnectionPairConnectionIDAsString(id);
            *location = 138412802;
            *&location[4] = msgId3;
            v86 = 2048;
            v87 = v66;
            v88 = 2080;
            v89 = v67;
            _os_log_error_impl(&dword_182E9B000, v39, OS_LOG_TYPE_ERROR, "Message: %@ has garbage data of length: %lu, connection: %s", location, 0x20u);
          }

          msgId4 = [v9 msgId];
          v41 = [CTStewieMessageAck alloc];
          v42 = MEMORY[0x1E696ABC0];
          v83 = *MEMORY[0x1E696A578];
          v84 = @"Transport error: raise a bug";
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v44 = [v42 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v43];
          v45 = [(CTStewieMessageAck *)v41 initWithError:v44];
          [(CTStewieDataClient *)self invokeSendCompletionForMsgId:msgId4 ack:v45 metadata:0];
        }

        else if ([msgId2 isMemberOfClass:objc_opt_class()])
        {
          msgId5 = [v9 msgId];
          metadata = [v9 metadata];
          v26 = [metadata valueForKey:@"clientMetadata"];
          [(CTStewieDataClient *)self invokeSendCompletionForMsgId:msgId5 ack:msgId2 metadata:v26];
        }

        else
        {
          v46 = [msgId2 conformsToProtocol:&unk_1EF072E90];
          if (v46)
          {
            objc_initWeak(location, self);
            msgId6 = [v9 msgId];
            metadata2 = [v9 metadata];
            v70 = [metadata2 valueForKey:@"clientMetadata"];

            metadata3 = [v9 metadata];
            v69 = [metadata3 mutableCopy];

            [v69 removeObjectForKey:@"clientMetadata"];
            v50 = *(self + 2);
            v72[0] = MEMORY[0x1E69E9820];
            v72[1] = 3221225472;
            v72[2] = __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke;
            v72[3] = &unk_1E6A48178;
            v51 = msgId2;
            v73 = v51;
            v52 = v70;
            v74 = v52;
            v68 = v50;
            v75 = v68;
            v53 = v69;
            v76 = v53;
            objc_copyWeak(&v78, location);
            v54 = msgId6;
            v77 = v54;
            [(CTStewieDataClient *)self dispatchOnDelegateQueue:v72];

            objc_destroyWeak(&v78);
            objc_destroyWeak(location);
            msgId2 = v51;
          }

          else
          {
            v55 = CTLogStewieDataClient(v46, v47);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              msgId7 = [v9 msgId];
              v57 = objc_opt_class();
              [(CTStewieDataClient *)msgId7 receivedData:v57 fromConnectionId:location, v55];
            }

            msgId8 = [v9 msgId];
            v59 = [CTStewieMessageAck alloc];
            v60 = MEMORY[0x1E696ABC0];
            v81 = *MEMORY[0x1E696A578];
            v82 = @"Transport error: raise a bug";
            v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
            v62 = [v60 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v61];
            v63 = [(CTStewieMessageAck *)v59 initWithError:v62];
            [(CTStewieDataClient *)self invokeSendCompletionForMsgId:msgId8 ack:v63 metadata:0];
          }
        }
      }
    }
  }

  else
  {
    v12 = CTLogStewieDataClient(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (dataCopy)
      {
        v27 = [dataCopy length];
      }

      else
      {
        v27 = 0;
      }

      v38 = CTConnectionPairConnectionIDAsString(id);
      [(CTStewieDataClient *)v38 receivedData:v27 fromConnectionId:?];
    }
  }
}

void __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke_2;
  v7[3] = &unk_1E6A48150;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v6 = a2;
  objc_copyWeak(&v11, (a1 + 72));
  v10 = *(a1 + 64);
  [v6 messageReceived:v4 withMetadata:v5 completionBlock:v7];

  objc_destroyWeak(&v11);
}

void __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_copyWeak(to, (a1 + 56));
  to[1] = *(a1 + 48);
  to[2] = *(a1 + 40);
  v3 = v2;
  operator new();
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

- (id)dispatchOnDelegateQueue:(id *)queue
{
  v2 = *queue;
  *queue = 0;
  if (v2)
  {

    objc_destroyWeak(v2);
    MEMORY[0x1865E0880](v2, 0xC0C402DE288CCLL);
  }

  return queue;
}

- (id)dispatchOnDelegateQueue:(NSObject  *){objcproto17OS_dispatch_queue}
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(self);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(self + 8);
    v5 = objc_loadWeakRetained(WeakRetained + 5);
    (*(v4 + 16))(v4, v5);
  }

  return std::unique_ptr<-[CTStewieDataClient dispatchOnDelegateQueue:]::$_1>::~unique_ptr[abi:nn200100](&selfCopy);
}

- (id)sendMessage:(id *)message completion:
{
  v2 = *message;
  *message = 0;
  if (v2)
  {

    objc_destroyWeak(v2);
    MEMORY[0x1865E0880](v2, 0x10C0C4019CFF88ELL);
  }

  return message;
}

- (id)sendMessage:(NSObject  *){objcproto17OS_dispatch_queue} completion:(std::unique_ptr<-[CTStewieDataClient)sendMessage:completion:]::$_2>
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(self);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendMessageInternal:*(self + 8) usingConnection:*(self + 16) completion:*(self + 24)];
  }

  return std::unique_ptr<-[CTStewieDataClient sendMessage:completion:]::$_2>::~unique_ptr[abi:nn200100](&selfCopy);
}

@end