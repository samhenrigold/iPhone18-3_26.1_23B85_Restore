@interface SCLSuppressSchoolModeAssertionClient
- (NSString)description;
- (SCLSuppressSchoolModeAssertionClient)initWithConnection:(id)connection;
- (SCLSuppressSchoolModeAssertionClientDelegate)delegate;
- (void)acquireWithExplanation:(id)explanation UUID:(id)d completion:(id)completion;
- (void)connectionDidInvalidate;
@end

@implementation SCLSuppressSchoolModeAssertionClient

- (SCLSuppressSchoolModeAssertionClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = SCLSuppressSchoolModeAssertionClient;
  v6 = [(SCLSuppressSchoolModeAssertionClient *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = SCLSuppressSchoolModeAssertionXPCServerInterface();
    [(NSXPCConnection *)connection setExportedInterface:v9];

    v10 = [connectionCopy valueForEntitlement:0x2876232C8];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) != 0 && (isKindOfClass = [v10 BOOLValue], isKindOfClass))
    {
      v7->_entitled = 1;
    }

    else
    {
      v12 = scl_framework_log(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SCLSuppressSchoolModeAssertionClient *)connectionCopy initWithConnection:v12];
      }
    }

    objc_initWeak(&location, v7);
    v13 = v7->_connection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__SCLSuppressSchoolModeAssertionClient_initWithConnection___block_invoke;
    v15[3] = &unk_279B6C3A8;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __59__SCLSuppressSchoolModeAssertionClient_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInvalidate];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  explanation = [(SCLSuppressSchoolModeAssertionClient *)self explanation];
  v7 = [v3 stringWithFormat:@"<%@ %p explanation: %@>", v5, self, explanation];;

  return v7;
}

- (void)connectionDidInvalidate
{
  [(SCLSuppressSchoolModeAssertionClient *)self setAcquired:0];
  delegate = [(SCLSuppressSchoolModeAssertionClient *)self delegate];
  [delegate clientDidInvalidate:self];
}

- (void)acquireWithExplanation:(id)explanation UUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [explanation copy];
  explanation = self->_explanation;
  self->_explanation = v7;

  if ([(SCLSuppressSchoolModeAssertionClient *)self isEntitled])
  {
    if (![(SCLSuppressSchoolModeAssertionClient *)self isAcquired])
    {
      [(SCLSuppressSchoolModeAssertionClient *)self setAcquired:1];
      delegate = [(SCLSuppressSchoolModeAssertionClient *)self delegate];
      [delegate clientDidAcquireAssertion:self];
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v10 = SCLEntitlementError(0x2876232C8);
    (completionCopy)[2](completionCopy, 0, v10);
  }
}

- (SCLSuppressSchoolModeAssertionClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Client %@ is not entitled to acquire suppression assertions", &v2, 0xCu);
}

@end