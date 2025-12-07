@interface TSUserInPurchaseFlowAssertion
+ (id)sharedInstance;
- (TSUserInPurchaseFlowAssertion)init;
- (void)assertUserInPurchaseFlowStartOver:(BOOL)over caller:(id)caller;
- (void)deassertUserInPurchaseFlowWithForce:(BOOL)force caller:(id)caller;
@end

@implementation TSUserInPurchaseFlowAssertion

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[TSUserInPurchaseFlowAssertion sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __47__TSUserInPurchaseFlowAssertion_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(TSUserInPurchaseFlowAssertion);

  return MEMORY[0x2821F96F8]();
}

- (TSUserInPurchaseFlowAssertion)init
{
  v3.receiver = self;
  v3.super_class = TSUserInPurchaseFlowAssertion;
  result = [(TSUserInPurchaseFlowAssertion *)&v3 init];
  if (result)
  {
    result->_assertionCounter = 0;
  }

  return result;
}

- (void)assertUserInPurchaseFlowStartOver:(BOOL)over caller:(id)caller
{
  v17 = *MEMORY[0x277D85DE8];
  callerCopy = caller;
  v7 = callerCopy;
  if (over)
  {
    v8 = 1;
  }

  else
  {
    v8 = self->_assertionCounter + 1;
  }

  self->_assertionCounter = v8;
  v9 = _TSLogDomain(callerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    assertionCounter = self->_assertionCounter;
    v12[0] = 67109634;
    v12[1] = assertionCounter;
    v13 = 2112;
    v14 = v7;
    v15 = 2080;
    v16 = "[TSUserInPurchaseFlowAssertion assertUserInPurchaseFlowStartOver:caller:]";
    _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "_assertionCounter: %d, caller:%@ @%s", v12, 0x1Cu);
  }

  if (self->_assertionCounter >= 1)
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    [mEMORY[0x277CF96D8] setUserInPurchaseFlow:1];
  }
}

- (void)deassertUserInPurchaseFlowWithForce:(BOOL)force caller:(id)caller
{
  forceCopy = force;
  v17 = *MEMORY[0x277D85DE8];
  callerCopy = caller;
  v7 = _TSLogDomain(callerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    assertionCounter = self->_assertionCounter;
    v12[0] = 67109634;
    v12[1] = assertionCounter;
    v13 = 2112;
    v14 = callerCopy;
    v15 = 2080;
    v16 = "[TSUserInPurchaseFlowAssertion deassertUserInPurchaseFlowWithForce:caller:]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "_assertionCounter: %d, caller:%@ @%s", v12, 0x1Cu);
  }

  v9 = self->_assertionCounter;
  if (v9)
  {
    v10 = v9 - 1;
    self->_assertionCounter = v10;
    if (!v10 || forceCopy)
    {
      mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
      [mEMORY[0x277CF96D8] setUserInPurchaseFlow:0];
    }
  }
}

@end