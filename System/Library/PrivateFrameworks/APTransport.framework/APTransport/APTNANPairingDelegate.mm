@interface APTNANPairingDelegate
- (APTNANPairingDelegate)initWithHandleAuthorizationRequestBlock:(id)block logContext:(__CFString *)context;
- (void)dealloc;
- (void)handlePairingRequestOfType:(__CFString *)type withInputCompletionHandler:(id)handler;
@end

@implementation APTNANPairingDelegate

- (APTNANPairingDelegate)initWithHandleAuthorizationRequestBlock:(id)block logContext:(__CFString *)context
{
  if (!block)
  {
    v10 = 1073;
LABEL_11:
    [APTNANPairingDelegate initWithHandleAuthorizationRequestBlock:v10 logContext:?];
    return 0;
  }

  if (!context)
  {
    v10 = 1074;
    goto LABEL_11;
  }

  v11.receiver = self;
  v11.super_class = APTNANPairingDelegate;
  v6 = [(APTNANPairingDelegate *)&v11 init];
  if (v6)
  {
    v6->_handleAuthorizationRequestBlock = _Block_copy(block);
    v6->_logContext = CFRetain(context);
    *&v6->_handledPairingRequest = 0;
    if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      [(APTNANPairingDelegate *)v6 initWithHandleAuthorizationRequestBlock:v7 logContext:v8];
    }
  }

  return v6;
}

- (void)dealloc
{
  handleAuthorizationRequestBlock = self->_handleAuthorizationRequestBlock;
  if (handleAuthorizationRequestBlock)
  {
    _Block_release(handleAuthorizationRequestBlock);
  }

  logContext = self->_logContext;
  if (logContext)
  {
    CFRelease(logContext);
  }

  v5.receiver = self;
  v5.super_class = APTNANPairingDelegate;
  [(APTNANPairingDelegate *)&v5 dealloc];
}

- (void)handlePairingRequestOfType:(__CFString *)type withInputCompletionHandler:(id)handler
{
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    [(APTNANPairingDelegate *)type handlePairingRequestOfType:type withInputCompletionHandler:?];
  }

  v7 = (*(self->_handleAuthorizationRequestBlock + 2))();
  self->_handledPairingRequest = 1;
  if (v7 == -16728)
  {
    self->_authPromptWasDismissed = 1;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    [(APTNANPairingDelegate *)self handlePairingRequestOfType:v8 withInputCompletionHandler:v9];
  }

  (*(handler + 2))(handler, 0);
}

- (void)initWithHandleAuthorizationRequestBlock:(void *)a1 logContext:(uint64_t)a2 .cold.2(void *a1, uint64_t a2)
{
  APSLogErrorAt();
  if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTNANDataSession)))
  {
    OUTLINED_FUNCTION_15(&gLogCategory_APTNANDataSession, "[APTNANPairingDelegate initWithHandleAuthorizationRequestBlock:logContext:]", v2, "Failed to initialize NAN Pairing Delegate.");
  }
}

@end