@interface SCLSuppressSchoolModeAssertion
- (BOOL)acquireWithError:(id *)error;
- (BOOL)isValid;
- (SCLSuppressSchoolModeAssertion)initWithExplanation:(id)explanation;
- (id)description;
- (void)acquireWithInvalidationHandler:(id)handler;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)invalidate;
@end

@implementation SCLSuppressSchoolModeAssertion

- (SCLSuppressSchoolModeAssertion)initWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  v23.receiver = self;
  v23.super_class = SCLSuppressSchoolModeAssertion;
  v5 = [(SCLSuppressSchoolModeAssertion *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    v7 = [explanationCopy copy];
    explanation = v6->_explanation;
    v6->_explanation = v7;

    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v6->_UUID;
    v6->_UUID = uUID;

    v6->_lock._os_unfair_lock_opaque = 0;
    v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:0x2876232C8 options:0];
    connection = v6->_connection;
    v6->_connection = v11;

    v13 = v6->_connection;
    v14 = SCLSuppressSchoolModeAssertionXPCServerInterface();
    [(NSXPCConnection *)v13 setRemoteObjectInterface:v14];

    objc_initWeak(&location, v6);
    v15 = v6->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__SCLSuppressSchoolModeAssertion_initWithExplanation___block_invoke;
    v20[3] = &unk_279B6C3A8;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v15 setInterruptionHandler:v20];
    v16 = v6->_connection;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SCLSuppressSchoolModeAssertion_initWithExplanation___block_invoke_2;
    v18[3] = &unk_279B6C3A8;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v16 setInvalidationHandler:v18];
    [(NSXPCConnection *)v6->_connection resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __54__SCLSuppressSchoolModeAssertion_initWithExplanation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInterrupted];
}

void __54__SCLSuppressSchoolModeAssertion_initWithExplanation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_state == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (state > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279B6C488[state];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  explanation = [(SCLSuppressSchoolModeAssertion *)self explanation];
  v9 = [v5 stringWithFormat:@"<%@ %p (%@) %@>", v7, self, explanation, v4];;

  return v9;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_state != 2)
  {
    self->_state = 2;
    [(NSXPCConnection *)self->_connection invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)acquireWithInvalidationHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_264829000, "Acquire suppression assertion async", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = scl_framework_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring suppression assertion %@", buf, 0xCu);
  }

  connection = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SCLSuppressSchoolModeAssertion_acquireWithInvalidationHandler___block_invoke;
  v18[3] = &unk_279B6C3D0;
  v9 = handlerCopy;
  v18[4] = self;
  v19 = v9;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
  explanation = [(SCLSuppressSchoolModeAssertion *)self explanation];
  UUID = self->_UUID;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SCLSuppressSchoolModeAssertion_acquireWithInvalidationHandler___block_invoke_2;
  v15[3] = &unk_279B6C3F8;
  v15[4] = self;
  v13 = v5;
  v16 = v13;
  v14 = v9;
  v17 = v14;
  [v10 acquireWithExplanation:explanation UUID:UUID completion:v15];

  os_activity_scope_leave(&state);
}

void __65__SCLSuppressSchoolModeAssertion_acquireWithInvalidationHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v6 = *(a1 + 32);
  if (a2)
  {
    *(v6 + 32) = 1;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v9.opaque[0] = 0;
    v9.opaque[1] = 0;
    os_activity_scope_enter(*(a1 + 40), &v9);
  }

  else
  {
    os_unfair_lock_unlock((v6 + 8));
    v9.opaque[0] = 0;
    v9.opaque[1] = 0;
    os_activity_scope_enter(*(a1 + 40), &v9);
    v8 = scl_framework_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__SCLSuppressSchoolModeAssertion_acquireWithInvalidationHandler___block_invoke_2_cold_1((a1 + 32), v5, v8);
    }
  }

  (*(*(a1 + 48) + 16))();
  os_activity_scope_leave(&v9);
}

- (BOOL)acquireWithError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_264829000, "Acquire suppression assertion sync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = scl_framework_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring suppression assertion %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__SCLSuppressSchoolModeAssertion_acquireWithError___block_invoke;
  v17[3] = &unk_279B6C420;
  v17[4] = &buf;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  explanation = [(SCLSuppressSchoolModeAssertion *)self explanation];
  UUID = self->_UUID;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SCLSuppressSchoolModeAssertion_acquireWithError___block_invoke_2;
  v16[3] = &unk_279B6C448;
  v16[5] = &v18;
  v16[6] = &buf;
  v16[4] = self;
  [v9 acquireWithExplanation:explanation UUID:UUID completion:v16];

  if ((v19[3] & 1) == 0)
  {
    v13 = scl_framework_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SCLSuppressSchoolModeAssertion *)self acquireWithError:v13];
    }
  }

  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
  return v14 & 1;
}

void __51__SCLSuppressSchoolModeAssertion_acquireWithError___block_invoke_2(void *a1, int a2, void *a3)
{
  v6 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if (a2)
  {
    os_unfair_lock_lock((a1[4] + 8));
    *(a1[4] + 32) = 1;
    os_unfair_lock_unlock((a1[4] + 8));
  }
}

- (void)connectionInterrupted
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Suppression connection interrupted - needs reconnect = %{BOOL}d", v2, 8u);
}

- (void)connectionInvalidated
{
  v3 = scl_framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SCLSuppressSchoolModeAssertion *)v3 connectionInvalidated];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_state = 2;
  os_unfair_lock_unlock(&self->_lock);
}

void __65__SCLSuppressSchoolModeAssertion_acquireWithInvalidationHandler___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_264829000, a2, a3, "Could not acquire assertion - %@ %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)acquireWithError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_1(&dword_264829000, a2, a3, "Could not acquire assertion - %@ %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end