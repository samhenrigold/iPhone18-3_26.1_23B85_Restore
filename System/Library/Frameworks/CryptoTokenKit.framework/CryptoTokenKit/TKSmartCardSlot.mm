@interface TKSmartCardSlot
- (BOOL)simulateCardReinsertionWithError:(id *)error;
- (TKSmartCard)makeSmartCard;
- (TKSmartCardSlot)initWithEndpoint:(id)endpoint error:(id *)error;
- (id)synchronous:(BOOL)synchronous remoteSlotWithErrorHandler:(id)handler;
- (void)connectToEndpoint:(id)endpoint synchronous:(BOOL)synchronous reply:(id)reply;
- (void)control:(id)control data:(id)data expectedLength:(unsigned int)length reply:(id)reply;
- (void)dealloc;
- (void)getAttrib:(unsigned int)attrib reply:(id)reply;
- (void)invalidate;
- (void)setAttrib:(unsigned int)attrib data:(id)data reply:(id)reply;
@end

@implementation TKSmartCardSlot

- (id)synchronous:(BOOL)synchronous remoteSlotWithErrorHandler:(id)handler
{
  connection = self->_connection;
  if (synchronous)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:handler];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:handler];
  }
  v5 = ;

  return v5;
}

- (void)connectToEndpoint:(id)endpoint synchronous:(BOOL)synchronous reply:(id)reply
{
  synchronousCopy = synchronous;
  endpointCopy = endpoint;
  replyCopy = reply;
  v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
  connection = self->_connection;
  self->_connection = v10;

  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8A8B0];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8AD38];
  [v12 setInterface:v13 forSelector:sel_sessionWithParameters_reply_ argumentIndex:0 ofReply:1];

  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v12];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A87BE0];
  [(NSXPCConnection *)self->_connection setExportedInterface:v14];

  v15 = [[TKSmartCardSlotProxy alloc] initWithSlot:self];
  proxy = self->_proxy;
  self->_proxy = v15;

  [(NSXPCConnection *)self->_connection setExportedObject:self->_proxy];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke;
  v26[3] = &unk_1E86B71F0;
  objc_copyWeak(&v27, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v26];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_211;
  v24[3] = &unk_1E86B71F0;
  objc_copyWeak(&v25, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v24];
  [(NSXPCConnection *)self->_connection resume];
  self->_state = 1;
  self->_previousState = 1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212;
  v22[3] = &unk_1E86B7218;
  v17 = replyCopy;
  v23 = v17;
  v18 = [(TKSmartCardSlot *)self synchronous:synchronousCopy remoteSlotWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_213;
  v20[3] = &unk_1E86B7240;
  v20[4] = self;
  v19 = v17;
  v21 = v19;
  [v18 setupSlotWithReply:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = TK_LOG_smartcard(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_cold_1();
    }

    v4 = v2;
    objc_sync_enter(v4);
    [v4 setState:0];
    objc_sync_exit(v4);

    [v4 setPreviousState:0];
    [v4 setATR:0];
  }
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_211(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = TK_LOG_smartcard(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_211_cold_1();
    }

    [v2 invalidate];
  }
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"name"];
  v6 = a1 + 32;
  v5 = *(a1 + 32);
  v7 = *(v5 + 56);
  *(v5 + 56) = v4;

  v8 = [v3 objectForKey:@"state"];
  *(*v6 + 40) = [v8 integerValue];

  v9 = [v3 objectForKey:@"prevstate"];
  *(*v6 + 72) = [v9 integerValue];

  v10 = [TKSmartCardATR alloc];
  v11 = [v3 objectForKey:@"atr"];
  v12 = [(TKSmartCardATR *)v10 initWithBytes:v11];
  v13 = *(*(a1 + 32) + 48);
  *(*v6 + 48) = v12;

  v14 = [v3 objectForKey:@"power"];
  *(*v6 + 16) = [v14 integerValue];

  v15 = [v3 objectForKey:@"share"];
  *(*v6 + 24) = [v15 integerValue];

  [*(*(a1 + 32) + 64) slotInitialized];
  v16 = [TKSlotParameters alloc];
  v17 = [v3 objectForKey:@"params"];

  v18 = [(TKSlotParameters *)v16 initWithEntriesFromDictionary:v17];
  v19 = *(*(a1 + 32) + 32);
  *(*v6 + 32) = v18;

  v21 = TK_LOG_smartcard(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_213_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (TKSmartCard)makeSmartCard
{
  if ([(TKSmartCardSlot *)self state]!= TKSmartCardSlotStateValidCard && [(TKSmartCardSlot *)self state]!= TKSmartCardSlotStateProbing)
  {
    goto LABEL_7;
  }

  if ([(TKSmartCardSlot *)self state]== TKSmartCardSlotStateProbing)
  {
    v3 = [(TKSmartCardSlot *)self synchronous:1 remoteSlotWithErrorHandler:&__block_literal_global_217];
    [v3 waitForNextState:-[TKSmartCardSlot state](self reply:{"state"), &__block_literal_global_221}];
  }

  if ([(TKSmartCardSlot *)self state]== TKSmartCardSlotStateValidCard)
  {
    v4 = [[TKSmartCard alloc] initWithSlot:self];
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

  return v4;
}

void __32__TKSmartCardSlot_makeSmartCard__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_smartcard(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212_cold_1();
  }
}

- (void)invalidate
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)dealloc
{
  [(TKSmartCardSlot *)self invalidate];
  v3.receiver = self;
  v3.super_class = TKSmartCardSlot;
  [(TKSmartCardSlot *)&v3 dealloc];
}

- (TKSmartCardSlot)initWithEndpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  v21.receiver = self;
  v21.super_class = TKSmartCardSlot;
  v7 = [(TKSmartCardSlot *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__TKSmartCardSlot_initWithEndpoint_error___block_invoke;
    v10[3] = &unk_1E86B7288;
    v10[4] = &v17;
    v10[5] = &v11;
    [(TKSmartCardSlot *)v7 connectToEndpoint:endpointCopy synchronous:1 reply:v10];
    if ((v18[3] & 1) == 0)
    {

      v8 = 0;
      if (error)
      {
        *error = v12[5];
      }
    }

    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  return v8;
}

void __42__TKSmartCardSlot_initWithEndpoint_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)control:(id)control data:(id)data expectedLength:(unsigned int)length reply:(id)reply
{
  v6 = *&length;
  replyCopy = reply;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__TKSmartCardSlot_control_data_expectedLength_reply___block_invoke;
  v15[3] = &unk_1E86B7218;
  v16 = replyCopy;
  v11 = replyCopy;
  dataCopy = data;
  controlCopy = control;
  v14 = [(TKSmartCardSlot *)self synchronous:0 remoteSlotWithErrorHandler:v15];
  [v14 sendControl:controlCopy data:dataCopy expectedLength:v6 reply:v11];
}

- (void)getAttrib:(unsigned int)attrib reply:(id)reply
{
  v4 = *&attrib;
  replyCopy = reply;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__TKSmartCardSlot_getAttrib_reply___block_invoke;
  v9[3] = &unk_1E86B7218;
  v10 = replyCopy;
  v7 = replyCopy;
  v8 = [(TKSmartCardSlot *)self synchronous:0 remoteSlotWithErrorHandler:v9];
  [v8 getAttrib:v4 reply:v7];
}

- (void)setAttrib:(unsigned int)attrib data:(id)data reply:(id)reply
{
  v6 = *&attrib;
  replyCopy = reply;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__TKSmartCardSlot_setAttrib_data_reply___block_invoke;
  v12[3] = &unk_1E86B7218;
  v13 = replyCopy;
  v9 = replyCopy;
  dataCopy = data;
  v11 = [(TKSmartCardSlot *)self synchronous:0 remoteSlotWithErrorHandler:v12];
  [v11 setAttrib:v6 data:dataCopy reply:v9];
}

- (BOOL)simulateCardReinsertionWithError:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  state = self->_state;
  v6 = TK_LOG_smartcard(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (state == 4)
  {
    if (v7)
    {
      [TKSmartCardSlot simulateCardReinsertionWithError:];
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke;
    v14[3] = &unk_1E86B71A0;
    v14[4] = self;
    v14[5] = &v15;
    v14[6] = &v21;
    v8 = [(TKSmartCardSlot *)self synchronous:1 remoteSlotWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_229;
    v13[3] = &unk_1E86B7178;
    v13[4] = &v15;
    v13[5] = &v21;
    [v8 simulateCardReinsertionWithReply:v13];

    v9 = v22;
    if (error && (v22[3] & 1) == 0)
    {
      *error = v16[5];
      v9 = v22;
    }

    LOBYTE(error) = *(v9 + 24);
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    if (v7)
    {
      [TKSmartCardSlot simulateCardReinsertionWithError:];
    }

    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A278];
      v26[0] = @"Card is missing";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *error = [v10 errorWithDomain:@"CryptoTokenKit" code:-1001 userInfo:v11];

      LOBYTE(error) = 0;
    }
  }

  return error & 1;
}

void __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = TK_LOG_smartcard(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_cold_1(a1, v5, v6);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_229(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_211_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_213_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(*(a1 + 32) + 56);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_11(&dword_1DF413000, a2, a3, "%{public}@: Error when simulating card reinsertion: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end