@interface TIKeyboardSecureTouchManager
+ (id)sharedInstance;
- (BOOL)verifySlotID:(unsigned int)d;
- (TIKeyboardSecureTouchManager)init;
- (unint64_t)authenticationMessageContextForSlotID:(unsigned int)d;
- (void)registerSlotID:(unsigned int)d;
@end

@implementation TIKeyboardSecureTouchManager

- (unint64_t)authenticationMessageContextForSlotID:(unsigned int)d
{
  v3 = *&d;
  slots = [(TIKeyboardSecureTouchManager *)self slots];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [slots objectForKeyedSubscript:v5];
  authenticationMessageContext = [v6 authenticationMessageContext];

  return authenticationMessageContext;
}

- (BOOL)verifySlotID:(unsigned int)d
{
  v3 = *&d;
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "[TIKeyboardSecureTouchManager verifySlotID:]";
    v23 = 1024;
    LODWORD(v24) = v3;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Verifying slotID %X", &v21, 0x12u);
  }

  slots = [(TIKeyboardSecureTouchManager *)self slots];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v7 = [slots objectForKey:v6];

  lastEventAuthenticationMessage = [(TIKeyboardSecureTouchManager *)self lastEventAuthenticationMessage];
  v9 = lastEventAuthenticationMessage;
  if (v7)
  {
    v10 = lastEventAuthenticationMessage == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ([v7 slotID] == v3 && (-[TIKeyboardSecureTouchManager bypassCommunication](self, "bypassCommunication") || (objc_msgSend(MEMORY[0x277CF0668], "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "authenticateMessage:", v9), v11, v12 == 2)) && (v13 = objc_msgSend(v7, "authenticationMessageContext"), v13 == objc_msgSend(v9, "context")))
    {
      timestamp = [v9 timestamp];
      v15 = timestamp > [(TIKeyboardSecureTouchManager *)self lastVerifiedMessageTimestamp];
    }

    else
    {
      v15 = 0;
    }

    v16 = mach_continuous_time();
    v17 = (v16 - [v9 timestamp]);
    if (_TIGetMachTimeScale_once != -1)
    {
      dispatch_once(&_TIGetMachTimeScale_once, &__block_literal_global_79);
    }

    if (*&_TIGetMachTimeScale_scale * v17 < 2.0 && v15)
    {
      -[TIKeyboardSecureTouchManager setLastVerifiedMessageTimestamp:](self, "setLastVerifiedMessageTimestamp:", [v9 timestamp]);
LABEL_22:
      v19 = 1;
      goto LABEL_23;
    }
  }

  if (_AXSVoiceOverTouchEnabled() || _AXSFullKeyboardAccessEnabled())
  {
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v21 = 136315650;
    v22 = "[TIKeyboardSecureTouchManager verifySlotID:]";
    v23 = 2112;
    v24 = v9;
    v25 = 1024;
    v26 = v3;
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Failed to authenticate message %@ for slotID %X", &v21, 0x1Cu);
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (void)registerSlotID:(unsigned int)d
{
  v3 = *&d;
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[TIKeyboardSecureTouchManager registerSlotID:]";
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Registering slotID %X", buf, 0x12u);
  }

  if (v3)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__TIKeyboardSecureTouchManager_registerSlotID___block_invoke;
    v12[3] = &__block_descriptor_36_e52_v16__0__BKSMutableTouchAuthenticationSpecification_8l;
    v13 = v3;
    v5 = [MEMORY[0x277CF0780] buildSpecification:v12];
    v6 = objc_alloc_init(TIKeyboardSecureTouchSlot);
    [(TIKeyboardSecureTouchSlot *)v6 setSlotID:v3];
    if (![(TIKeyboardSecureTouchManager *)self bypassCommunication])
    {
      mEMORY[0x277CF07A0] = [MEMORY[0x277CF07A0] sharedInstance];
      v8 = [MEMORY[0x277CBEB98] setWithObject:v5];
      v9 = [mEMORY[0x277CF07A0] addAuthenticationSpecifications:v8 forReason:@"kbd registration"];
      [(TIKeyboardSecureTouchSlot *)v6 setInvalidatable:v9];
    }

    [(TIKeyboardSecureTouchSlot *)v6 setAuthenticationMessageContext:0x6779E7E572E4C6A7];
    slots = [(TIKeyboardSecureTouchManager *)self slots];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    [slots setObject:v6 forKey:v11];
  }
}

void __47__TIKeyboardSecureTouchManager_registerSlotID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSlotID:v2];
  [v3 setAuthenticationMessageContext:0x6779E7E572E4C6A7];
}

- (TIKeyboardSecureTouchManager)init
{
  v6.receiver = self;
  v6.super_class = TIKeyboardSecureTouchManager;
  v2 = [(TIKeyboardSecureTouchManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    slots = v2->_slots;
    v2->_slots = dictionary;

    v2->_lastVerifiedMessageTimestamp = mach_continuous_time();
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_24085 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_24085, &__block_literal_global_24086);
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __46__TIKeyboardSecureTouchManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_manager;
  sharedInstance_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end