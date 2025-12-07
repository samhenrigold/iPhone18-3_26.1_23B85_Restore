@interface ITIdleTimerStateClient
- (BOOL)handleIdleEvent:(id)event usingConfigurationWithIdentifier:(id)identifier;
- (BOOL)isIdleTimerServiceAvailable;
- (ITIdleTimerStateClient)initWithDelegate:(id)delegate;
- (void)_access_addIdleTimerConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)_access_addIdleTimerOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)_access_removeIdleTimerConfiguration:(id)configuration forReason:(id)reason;
- (void)_connectionInterrupted;
- (void)addIdleTimerConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)addIdleTimerOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)isIdleTimerServiceAvailable;
- (void)removeIdleTimerConfiguration:(id)configuration forReason:(id)reason;
@end

@implementation ITIdleTimerStateClient

- (ITIdleTimerStateClient)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = ITIdleTimerStateClient;
  v5 = [(ITIdleTimerStateClient *)&v17 init];
  p_isa = &v5->super.isa;
  if (!v5)
  {
    goto LABEL_4;
  }

  v5->_accessLock._os_unfair_lock_opaque = 0;
  v5->_access_serviceAvailability = 0;
  objc_storeWeak(&v5->_delegate, delegateCopy);
  v7 = [MEMORY[0x277CF3288] endpointForMachName:@"com.apple.frontboard.systemappservices" service:@"com.apple.idletimer-service" instance:0];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CF3280] connectionWithEndpoint:v7];
    v10 = p_isa[3];
    p_isa[3] = v9;

    v11 = p_isa[3];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__ITIdleTimerStateClient_initWithDelegate___block_invoke;
    v15[3] = &unk_2797A5408;
    v16 = p_isa;
    [v11 configureConnection:v15];
    [p_isa[3] activate];

LABEL_4:
    v12 = p_isa;
    goto LABEL_8;
  }

  v13 = ITLogIdleTimer(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ITIdleTimerStateClient initWithDelegate:];
  }

  v12 = 0;
LABEL_8:

  return v12;
}

void __43__ITIdleTimerStateClient_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF0C90];
  v4 = a2;
  v5 = [v3 protocolForProtocol:&unk_2866F6C08];
  v6 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2866F6820];
  v7 = [MEMORY[0x277CF32C0] interfaceWithServer:v6 client:v5];
  [v4 setInterface:v7];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v8 = [MEMORY[0x277CF32C8] utility];
  [v4 setServiceQuality:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__ITIdleTimerStateClient_initWithDelegate___block_invoke_2;
  v11[3] = &unk_2797A53E0;
  v12 = *(a1 + 32);
  [v4 setInterruptionHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__ITIdleTimerStateClient_initWithDelegate___block_invoke_59;
  v9[3] = &unk_2797A53E0;
  v10 = *(a1 + 32);
  [v4 setInvalidationHandler:v9];
}

uint64_t __43__ITIdleTimerStateClient_initWithDelegate___block_invoke_2(uint64_t a1)
{
  v2 = ITLogIdleTimer(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __43__ITIdleTimerStateClient_initWithDelegate___block_invoke_2_cold_1();
  }

  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 16) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  return [*(a1 + 32) _connectionInterrupted];
}

void __43__ITIdleTimerStateClient_initWithDelegate___block_invoke_59(uint64_t a1)
{
  v2 = ITLogIdleTimer(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __43__ITIdleTimerStateClient_initWithDelegate___block_invoke_59_cold_1();
  }

  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 16) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

- (BOOL)isIdleTimerServiceAvailable
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  access_serviceAvailability = self->_access_serviceAvailability;
  if (access_serviceAvailability == 2)
  {
    LOBYTE(v4) = 1;
  }

  else if (access_serviceAvailability == 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    v9 = 0;
    LODWORD(v4) = [remoteTarget isIdleTimerServiceAvailableWithError:&v9];
    v6 = v9;

    if (v6)
    {
      v4 = ITLogIdleTimer(v7);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [ITIdleTimerStateClient isIdleTimerServiceAvailable];
      }

      LOBYTE(v4) = 0;
    }

    else if (v4)
    {
      self->_access_serviceAvailability = 2;
      LOBYTE(v4) = 1;
    }

    else
    {
      self->_access_serviceAvailability = 1;
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
  return v4;
}

- (void)addIdleTimerOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v8 = *&d;
  reasonCopy = reason;
  configurationCopy = configuration;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v14 = 0;
  [(ITIdleTimerStateClient *)self _access_addIdleTimerOnBehalfOfSceneWithPID:v8 withConfiguration:configurationCopy forReason:reasonCopy error:&v14];

  v12 = v14;
  os_unfair_lock_unlock(&self->_accessLock);
  if (error && v12)
  {
    v13 = v12;
    *error = v12;
  }
}

- (void)addIdleTimerConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  configurationCopy = configuration;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v12 = 0;
  [(ITIdleTimerStateClient *)self _access_addIdleTimerConfiguration:configurationCopy forReason:reasonCopy error:&v12];

  v10 = v12;
  os_unfair_lock_unlock(&self->_accessLock);
  if (error && v10)
  {
    v11 = v10;
    *error = v10;
  }
}

- (void)removeIdleTimerConfiguration:(id)configuration forReason:(id)reason
{
  reasonCopy = reason;
  configurationCopy = configuration;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(ITIdleTimerStateClient *)self _access_removeIdleTimerConfiguration:configurationCopy forReason:reasonCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (BOOL)handleIdleEvent:(id)event usingConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  unsignedIntegerValue = [event unsignedIntegerValue];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(unsignedIntegerValue) = [WeakRetained handleIdleEvent:unsignedIntegerValue usingConfigurationWithIdentifier:identifierCopy];

  return unsignedIntegerValue;
}

- (void)_connectionInterrupted
{
  [(BSServiceConnection *)self->_connection activate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained resendIdleTimerAssertions];
}

- (void)_access_addIdleTimerOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v8 = *&d;
  reasonCopy = reason;
  configurationCopy = configuration;
  os_unfair_lock_assert_owner(&self->_accessLock);
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v18 = 0;
  [remoteTarget addIdleTimerServiceOnBehalfOfSceneWithPID:v13 withConfiguration:configurationCopy forReason:reasonCopy error:&v18];

  v14 = v18;
  if (v14)
  {
    v16 = ITLogIdleTimer(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ITIdleTimerStateClient _access_addIdleTimerOnBehalfOfSceneWithPID:withConfiguration:forReason:error:];
    }

    if (error)
    {
      v17 = v14;
      *error = v14;
    }
  }
}

- (void)_access_addIdleTimerConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  configurationCopy = configuration;
  os_unfair_lock_assert_owner(&self->_accessLock);
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v15 = 0;
  [remoteTarget addIdleTimerServiceConfiguration:configurationCopy forReason:reasonCopy error:&v15];

  v11 = v15;
  if (v11)
  {
    v13 = ITLogIdleTimer(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ITIdleTimerStateClient _access_addIdleTimerOnBehalfOfSceneWithPID:withConfiguration:forReason:error:];
    }

    if (error)
    {
      v14 = v11;
      *error = v11;
    }
  }
}

- (void)_access_removeIdleTimerConfiguration:(id)configuration forReason:(id)reason
{
  reasonCopy = reason;
  configurationCopy = configuration;
  os_unfair_lock_assert_owner(&self->_accessLock);
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v12 = 0;
  [remoteTarget removeIdleTimerServiceConfiguration:configurationCopy forReason:reasonCopy error:&v12];

  v9 = v12;
  if (v9)
  {
    v11 = ITLogIdleTimer(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ITIdleTimerStateClient _access_removeIdleTimerConfiguration:forReason:];
    }
  }
}

- (void)initWithDelegate:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_254ABE000, v1, OS_LOG_TYPE_ERROR, "cannot get endpoint for mach service: %{public}@ (on behalf of BSService name: %{public}@)", v2, 0x16u);
}

- (void)isIdleTimerServiceAvailable
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_access_addIdleTimerOnBehalfOfSceneWithPID:withConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_access_removeIdleTimerConfiguration:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end