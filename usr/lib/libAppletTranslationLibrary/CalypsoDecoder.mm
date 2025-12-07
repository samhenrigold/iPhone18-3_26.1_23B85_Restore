@interface CalypsoDecoder
+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error;
+ (id)amountDictionaryWithAmount:(id)amount withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingIdentifierKey:(id)identifierKey;
+ (id)getCardConfig:(unint64_t)config;
+ (id)getSubDecoder:(unsigned __int8)decoder;
+ (id)sharedInstance;
- (CalypsoDecoder)init;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)generateContactEndEvent:(id)event withDidError:(BOOL)error;
- (id)generateEndEventFromHCI;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getEmReentryDelayMs:(unsigned __int8)ms;
- (id)getServiceProvider:(unsigned __int8)provider;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)getSubDecoderConfig:(id)config withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseCommandEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (void)cleanup;
- (void)setErrorCode:(unsigned __int16)code;
@end

@implementation CalypsoDecoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CalypsoDecoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance__singleton_0;

  return v2;
}

uint64_t __32__CalypsoDecoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__singleton_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)setErrorCode:(unsigned __int16)code
{
  self->_errorCode = [MEMORY[0x277CCABB0] numberWithUnsignedShort:code];

  MEMORY[0x2821F96F8]();
}

- (CalypsoDecoder)init
{
  v18.receiver = self;
  v18.super_class = CalypsoDecoder;
  v2 = [(CalypsoDecoder *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hciArray = v2->_hciArray;
    v2->_hciArray = v3;

    v5 = [ATLTimer alloc];
    v6 = dispatch_get_global_queue(0, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __22__CalypsoDecoder_init__block_invoke;
    v16[3] = &unk_278874C98;
    v7 = v2;
    v17 = v7;
    v8 = [(ATLTimer *)v5 initOnQueue:v6 withTimerBlock:v16];
    timer = v7->_timer;
    v7->_timer = v8;

    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v12 = +[AppletTranslator userDefaults];
      v7->_debug = [v12 BOOLForKey:@"debug.calypso"];
    }

    else
    {
      v7->_debug = 0;
    }

    v13 = +[AppletConfigurationData getCalypsoSettings];
    staticConfig = v7->_staticConfig;
    v7->_staticConfig = v13;

    [AppletTranslator registerForCleanup:v7];
  }

  return v2;
}

void __22__CalypsoDecoder_init__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEBUG, "dispatching timer block", &v8, 2u);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v5 = [*(a1 + 32) generateEndEventFromHCI];
  if (v5)
  {
    v6 = +[AppletTranslator getATLDelegate];
    v7 = ATLLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEBUG, "EndEvent sent %@", &v8, 0xCu);
    }

    [v6 notifyTransactionEvent:v5];
  }

  objc_sync_exit(v3);
}

- (void)cleanup
{
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Starting cleanup", v12, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  appletAID = selfCopy->_appletAID;
  selfCopy->_appletAID = 0;

  selfCopy->_errorTransaction = 0;
  errorCode = selfCopy->_errorCode;
  selfCopy->_errorCode = 0;

  transactionDetailRaw = selfCopy->_transactionDetailRaw;
  selfCopy->_transactionDetailRaw = 0;

  cityCode = selfCopy->_cityCode;
  selfCopy->_cityCode = 0;

  serviceProvider = selfCopy->_serviceProvider;
  selfCopy->_serviceProvider = 0;

  staticConfig = selfCopy->_staticConfig;
  selfCopy->_staticConfig = 0;

  currentSubDecoder = selfCopy->_currentSubDecoder;
  selfCopy->_currentSubDecoder = 0;

  [(NSMutableArray *)selfCopy->_hciArray removeAllObjects];
  [(ATLTimer *)selfCopy->_timer stopTimer];
  objc_sync_exit(selfCopy);
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v80[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v17 = ATLLogObject(transceiverCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    asHexString = [eventCopy asHexString];
    *buf = 138412290;
    *v75 = asHexString;
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEBUG, "Incoming event data: %@", buf, 0xCu);
  }

  v19 = [(CalypsoDecoder *)self getSubDecoderConfig:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
  v20 = ATLLogObject(v19);
  v21 = v20;
  if (!v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v75 = appletCopy;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "parseHCIEvent requires static configuration for %@", buf, 0xCu);
    }

    appletCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"parseHCIEvent requires static configuration for %@", appletCopy];
    selfCopy = appletCopy;
    if (error)
    {
      v33 = *error;
      v34 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v35 = *MEMORY[0x277CCA7E8];
        v77[0] = *MEMORY[0x277CCA450];
        v77[1] = v35;
        v78[0] = appletCopy;
        v78[1] = v33;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
      }

      else
      {
        v79 = *MEMORY[0x277CCA450];
        v80[0] = appletCopy;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
      }
      v48 = ;
      *error = [v34 errorWithDomain:@"ATL" code:2 userInfo:v48];

      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    staticConfig = self->_staticConfig;
    *buf = 138412546;
    *v75 = v19;
    *&v75[8] = 2112;
    v76 = staticConfig;
    _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_DEBUG, "currentSubDecoder: %@ \n _staticConfig: %@", buf, 0x16u);
  }

  if (!self->_appletAID)
  {
    objc_storeStrong(&self->_appletAID, applet);
  }

  v23 = [eventCopy length];
  if (v23 <= 1)
  {
    v24 = ATLLogObject(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [eventCopy length];
      *buf = 67109120;
      *v75 = v25;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    selfCopy = v26;
    if (error)
    {
      v28 = *error;
      v29 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v70[0] = *MEMORY[0x277CCA450];
        v70[1] = v30;
        v71[0] = v26;
        v71[1] = v28;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
      }

      else
      {
        v72 = *MEMORY[0x277CCA450];
        v73 = v26;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      }

      v49 = v31;
      *error = [v29 errorWithDomain:@"ATL" code:6 userInfo:v31];

LABEL_39:
      error = 0;
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v36 = eventCopy;
  v37 = *[eventCopy bytes];
  v38 = eventCopy;
  bytes = [eventCopy bytes];
  v40 = *(bytes + 1);
  if (v40 != 7)
  {
    v42 = ATLLogObject(bytes);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v75 = v40;
      _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Unsupported version %u", buf, 8u);
    }

    v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported version %u", v40];
    selfCopy = v43;
    if (error)
    {
      v44 = *error;
      v45 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v46 = *MEMORY[0x277CCA7E8];
        v66[0] = *MEMORY[0x277CCA450];
        v66[1] = v46;
        v67[0] = v43;
        v67[1] = v44;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
      }

      else
      {
        v68 = *MEMORY[0x277CCA450];
        v69 = v43;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      }

      v50 = v47;
      *error = [v45 errorWithDomain:@"ATL" code:2 userInfo:v47];

      goto LABEL_39;
    }

    goto LABEL_40;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v37 <= 16)
  {
    if (v37 == 1)
    {
      v41 = [(CalypsoDecoder *)selfCopy parseStartEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_46;
    }

    if (v37 == 2)
    {
      v41 = [(CalypsoDecoder *)selfCopy parseEndEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_46;
    }
  }

  else
  {
    switch(v37)
    {
      case 0x11:
        v41 = [(CalypsoDecoder *)selfCopy parseTransactionEvent:eventCopy withApplet:appletCopy error:error];
        goto LABEL_46;
      case 0x12:
        v41 = [(CalypsoDecoder *)selfCopy parseDeselectEvent:eventCopy withApplet:appletCopy error:error];
        goto LABEL_46;
      case 0x13:
        v41 = [(CalypsoDecoder *)selfCopy parseCommandEvent:eventCopy withApplet:appletCopy error:error];
LABEL_46:
        error = v41;
        objc_sync_exit(selfCopy);
        goto LABEL_40;
    }
  }

  objc_sync_exit(selfCopy);

  v53 = ATLLogObject(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v75 = v37;
    *&v75[4] = 1024;
    *&v75[6] = 7;
    _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
  }

  v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v37, 7];
  selfCopy = v54;
  if (error)
  {
    v55 = *error;
    v56 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v57 = *MEMORY[0x277CCA7E8];
      v62[0] = *MEMORY[0x277CCA450];
      v62[1] = v57;
      v63[0] = v54;
      v63[1] = v55;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
    }

    else
    {
      v64 = *MEMORY[0x277CCA450];
      v65 = v54;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    }

    v59 = v58;
    *error = [v56 errorWithDomain:@"ATL" code:3 userInfo:v58];

    goto LABEL_39;
  }

LABEL_40:

  return error;
}

- (id)parseCommandEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v71[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 == 10)
  {
    bytes = [eventCopy bytes];
    v12 = bytes;
    if (*(bytes + 1) == 7)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 3 length:5];
      v14 = *(v12 + 8);
      v15 = [v13 u8:1];
      if (*(v12 + 2) == 1)
      {
        v38 = @"Contactless";
LABEL_33:
        v58[0] = @"EventType";
        v58[1] = @"appletIdentifier";
        v59[1] = appletCopy;
        v59[2] = v38;
        v59[0] = @"CommandEvent";
        v58[2] = @"Interface";
        v58[3] = @"Version";
        v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v12 + 1)];
        v59[3] = v51;
        v59[4] = v13;
        v58[4] = @"command";
        v58[5] = @"status";
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:__rev16(v14)];
        v59[5] = v52;
        error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:6];

        v54 = ATLLogObject(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          errorCopy = error;
          _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_hciArray addObject:error];
        goto LABEL_29;
      }

      if (!*(v12 + 2))
      {
        if (v15 == 142)
        {
          error = [(CalypsoDecoder *)self generateContactEndEvent:appletCopy withDidError:v14 != 144];
          goto LABEL_29;
        }

        v38 = @"Contact";
        goto LABEL_33;
      }

      v39 = ATLLogObject(v15);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *(v12 + 2);
        *buf = 67109120;
        LODWORD(errorCopy) = v40;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
      }

      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v12 + 2)];
      v42 = v41;
      if (error)
      {
        v43 = *error;
        v44 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v45 = *MEMORY[0x277CCA7E8];
          v60[0] = *MEMORY[0x277CCA450];
          v60[1] = v45;
          v61[0] = v41;
          v61[1] = v43;
          v46 = MEMORY[0x277CBEAC0];
          v47 = v61;
          v48 = v60;
          v49 = 2;
        }

        else
        {
          v62 = *MEMORY[0x277CCA450];
          v63 = v41;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v63;
          v48 = &v62;
          v49 = 1;
        }

        v55 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:v49];
        *error = [v44 errorWithDomain:@"ATL" code:3 userInfo:v55];
      }

LABEL_28:
      error = 0;
      goto LABEL_29;
    }

    v25 = ATLLogObject(bytes);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v12 + 1);
      *buf = 67109120;
      LODWORD(errorCopy) = v26;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Command Event version %u", buf, 8u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Command Event version %u", *(v12 + 1)];
    v13 = v27;
    if (error)
    {
      v28 = *error;
      v29 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v64[0] = *MEMORY[0x277CCA450];
        v64[1] = v30;
        v65[0] = v27;
        v65[1] = v28;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v65;
        v33 = v64;
        v34 = 2;
      }

      else
      {
        v66 = *MEMORY[0x277CCA450];
        v67 = v27;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v67;
        v33 = &v66;
        v34 = 1;
      }

      v35 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      v36 = v29;
      v37 = 3;
LABEL_27:
      *error = [v36 errorWithDomain:@"ATL" code:v37 userInfo:v35];

      goto LABEL_28;
    }
  }

  else
  {
    v16 = ATLLogObject(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(errorCopy) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v13 = v17;
    if (error)
    {
      v18 = *error;
      v19 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v20 = *MEMORY[0x277CCA7E8];
        v68[0] = *MEMORY[0x277CCA450];
        v68[1] = v20;
        v69[0] = v17;
        v69[1] = v18;
        v21 = MEMORY[0x277CBEAC0];
        v22 = v69;
        v23 = v68;
        v24 = 2;
      }

      else
      {
        v70 = *MEMORY[0x277CCA450];
        v71[0] = v17;
        v21 = MEMORY[0x277CBEAC0];
        v22 = v71;
        v23 = &v70;
        v24 = 1;
      }

      v35 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v24];
      v36 = v19;
      v37 = 6;
      goto LABEL_27;
    }
  }

LABEL_29:

  return error;
}

- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v80[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [(NSData *)eventCopy length];
  v11 = ATLLogObject(v10);
  v12 = v11;
  if (v10 <= 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v64) = [(NSData *)eventCopy length];
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", -[NSData length](eventCopy, "length")];
    v14 = v13;
    if (!error)
    {
      goto LABEL_45;
    }

    v15 = *error;
    v16 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v77[0] = *MEMORY[0x277CCA450];
      v77[1] = v17;
      v78[0] = v13;
      v78[1] = v15;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v78;
      v20 = v77;
      v21 = 2;
    }

    else
    {
      v79 = *MEMORY[0x277CCA450];
      v80[0] = v13;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v80;
      v20 = &v79;
      v21 = 1;
    }

    v34 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
    v35 = v16;
    v36 = 6;
LABEL_44:
    *error = [v35 errorWithDomain:@"ATL" code:v36 userInfo:v34];

LABEL_45:
    v39 = 0;
    goto LABEL_46;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v64 = eventCopy;
    _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEBUG, "eventData: %@", buf, 0xCu);
  }

  bytes = [(NSData *)eventCopy bytes];
  v23 = bytes;
  if (*(bytes + 1) != 7)
  {
    v25 = ATLLogObject(bytes);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v23 + 1);
      *buf = 67109120;
      LODWORD(v64) = v26;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Start Event version %u", buf, 8u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v23 + 1)];
    v14 = v27;
    if (!error)
    {
      goto LABEL_45;
    }

    v28 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v30 = *MEMORY[0x277CCA7E8];
      v73[0] = *MEMORY[0x277CCA450];
      v73[1] = v30;
      v74[0] = v27;
      v74[1] = v28;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v74;
      v33 = v73;
LABEL_39:
      v58 = 2;
LABEL_43:
      v34 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v58];
      v35 = v29;
      v36 = 3;
      goto LABEL_44;
    }

    v75 = *MEMORY[0x277CCA450];
    v76 = v27;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v76;
    v33 = &v75;
LABEL_42:
    v58 = 1;
    goto LABEL_43;
  }

  if (!*(bytes + 2))
  {
    v24 = @"Contact";
    goto LABEL_21;
  }

  if (*(bytes + 2) != 1)
  {
    v53 = ATLLogObject(bytes);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = *(v23 + 2);
      *buf = 67109120;
      LODWORD(v64) = v54;
      _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v23 + 2)];
    v14 = v55;
    if (!error)
    {
      goto LABEL_45;
    }

    v56 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v57 = *MEMORY[0x277CCA7E8];
      v69[0] = *MEMORY[0x277CCA450];
      v69[1] = v57;
      v70[0] = v55;
      v70[1] = v56;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v70;
      v33 = v69;
      goto LABEL_39;
    }

    v71 = *MEMORY[0x277CCA450];
    v72 = v55;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v72;
    v33 = &v71;
    goto LABEL_42;
  }

  v24 = @"Contactless";
LABEL_21:
  v60[0] = bytes + 3;
  v60[1] = [(NSData *)eventCopy length]- 3;
  v37 = [CalypsoDecoder DecodeTransactionE1TLV:v60 error:error];
  v38 = ATLLogObject(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v64 = v37;
    _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_DEBUG, "trxInfo: %@", buf, 0xCu);
  }

  if (error && *error)
  {
    v39 = 0;
  }

  else
  {
    v40 = [(NSData *)v37 objectForKeyedSubscript:@"recordData"];
    v41 = ATLLogObject(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v64 = v40;
      _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEBUG, "eventRecord: %@", buf, 0xCu);
    }

    v42 = ATLLogObject([self->_currentSubDecoder interpretTransactionEvent:v40]);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      errorTransaction = self->_errorTransaction;
      errorCode = self->_errorCode;
      transactionDetailRaw = self->_transactionDetailRaw;
      *buf = 138412802;
      v64 = transactionDetailRaw;
      v65 = 1024;
      v66 = errorTransaction;
      v67 = 2112;
      v68 = errorCode;
      _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEBUG, "*** _transactionDetailRaw = %@,  _errorTransaction = %d,  _errorCode = %@", buf, 0x1Cu);
    }

    v61[0] = @"EventType";
    v61[1] = @"appletIdentifier";
    v62[1] = appletCopy;
    v62[2] = v24;
    v62[0] = @"TransactionEvent";
    v61[2] = @"Interface";
    v61[3] = @"Version";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v23 + 1)];
    serviceProvider = self->_serviceProvider;
    v62[3] = v46;
    v62[4] = serviceProvider;
    v61[4] = @"spIdentifier";
    v61[5] = @"sfi";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[NSData sfi](v40, "sfi")}];
    v62[5] = v48;
    v61[6] = @"recordId";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[NSData recordId](v40, "recordId")}];
    v62[6] = v49;
    v61[7] = @"recordContent";
    content = [(NSData *)v40 content];
    v62[7] = content;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:8];

    v52 = ATLLogObject(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v64 = v39;
      _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_DEBUG, "TransactionEvent %@", buf, 0xCu);
    }

    [(NSMutableArray *)self->_hciArray addObject:v39];
  }

LABEL_46:

  return v39;
}

- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 != 3)
  {
    v14 = ATLLogObject(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v57 = [eventCopy length];
      v58 = 2048;
      v59 = 3;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Start Event length %zu (exp %zu)", buf, 0x16u);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event length %zu (exp %zu)", objc_msgSend(eventCopy, "length"), 3];
    v16 = v15;
    if (!error)
    {
      goto LABEL_33;
    }

    v17 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (!*error)
    {
      v54 = *MEMORY[0x277CCA450];
      v55 = v15;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v55;
      v22 = &v54;
      goto LABEL_31;
    }

    v19 = *MEMORY[0x277CCA7E8];
    v52[0] = *MEMORY[0x277CCA450];
    v52[1] = v19;
    v53[0] = v15;
    v53[1] = v17;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v53;
    v22 = v52;
LABEL_28:
    v39 = 2;
LABEL_32:
    v40 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v39];
    *error = [v18 errorWithDomain:@"ATL" code:3 userInfo:v40];

LABEL_33:
    v29 = 0;
    goto LABEL_34;
  }

  bytes = [eventCopy bytes];
  v12 = bytes;
  if (*(bytes + 1) != 7)
  {
    v23 = ATLLogObject(bytes);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(v12 + 1);
      *buf = 67109120;
      LODWORD(v57) = v24;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Start Event version %u", buf, 8u);
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v12 + 1)];
    v16 = v25;
    if (!error)
    {
      goto LABEL_33;
    }

    v26 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (!*error)
    {
      v50 = *MEMORY[0x277CCA450];
      v51 = v25;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v51;
      v22 = &v50;
      goto LABEL_31;
    }

    v27 = *MEMORY[0x277CCA7E8];
    v48[0] = *MEMORY[0x277CCA450];
    v48[1] = v27;
    v49[0] = v25;
    v49[1] = v26;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v49;
    v22 = v48;
    goto LABEL_28;
  }

  if (!*(bytes + 2))
  {
    v13 = @"Contact";
    goto LABEL_18;
  }

  if (*(bytes + 2) != 1)
  {
    v34 = ATLLogObject(bytes);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = *(v12 + 2);
      *buf = 67109120;
      LODWORD(v57) = v35;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v12 + 2)];
    v16 = v36;
    if (!error)
    {
      goto LABEL_33;
    }

    v37 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v44[0] = *MEMORY[0x277CCA450];
      v44[1] = v38;
      v45[0] = v36;
      v45[1] = v37;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v45;
      v22 = v44;
      goto LABEL_28;
    }

    v46 = *MEMORY[0x277CCA450];
    v47 = v36;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v47;
    v22 = &v46;
LABEL_31:
    v39 = 1;
    goto LABEL_32;
  }

  v13 = @"Contactless";
LABEL_18:
  v42[0] = @"EventType";
  v42[1] = @"appletIdentifier";
  v43[1] = appletCopy;
  v43[2] = v13;
  v43[0] = @"StartEvent";
  v42[2] = @"Interface";
  v42[3] = @"Version";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
  v42[4] = @"IgnoreRFEvents";
  v42[5] = @"DontWaitForEOT";
  v43[5] = MEMORY[0x277CBEC38];
  v43[6] = MEMORY[0x277CBEC38];
  v43[3] = v28;
  v43[4] = MEMORY[0x277CBEC28];
  v42[6] = @"RequiresPowerCycle";
  v42[7] = @"EoTCallbackExpected";
  v42[8] = @"DelayExpressReentry";
  v43[7] = MEMORY[0x277CBEC28];
  v43[8] = &unk_2843C6878;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:9];

  v31 = ATLLogObject(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEBUG, "Stopping currently running timer due to incoming SELECT", buf, 2u);
  }

  [(ATLTimer *)self->_timer stopTimer];
  v33 = ATLLogObject(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v57 = v29;
    _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEBUG, "Start Event %@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_hciArray addObject:v29];
LABEL_34:

  return v29;
}

- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 != 3)
  {
    v23 = ATLLogObject(v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v48) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v25 = v24;
    if (!error)
    {
      goto LABEL_24;
    }

    v26 = *error;
    v27 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v28 = *MEMORY[0x277CCA7E8];
      v55[0] = *MEMORY[0x277CCA450];
      v55[1] = v28;
      v56[0] = v24;
      v56[1] = v26;
      v29 = MEMORY[0x277CBEAC0];
      v30 = v56;
      v31 = v55;
      v32 = 2;
    }

    else
    {
      v57 = *MEMORY[0x277CCA450];
      v58[0] = v24;
      v29 = MEMORY[0x277CBEAC0];
      v30 = v58;
      v31 = &v57;
      v32 = 1;
    }

    v43 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
    v44 = v27;
    v45 = 6;
    goto LABEL_23;
  }

  bytes = [eventCopy bytes];
  if (!*(bytes + 2))
  {
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  v12 = bytes;
  if (*(bytes + 2) != 1)
  {
    v33 = ATLLogObject(bytes);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v12 + 2);
      *buf = 67109120;
      LODWORD(v48) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v12 + 2)];
    v25 = v35;
    if (!error)
    {
      goto LABEL_24;
    }

    v36 = *error;
    v37 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v51[0] = *MEMORY[0x277CCA450];
      v51[1] = v38;
      v52[0] = v35;
      v52[1] = v36;
      v39 = MEMORY[0x277CBEAC0];
      v40 = v52;
      v41 = v51;
      v42 = 2;
    }

    else
    {
      v53 = *MEMORY[0x277CCA450];
      v54 = v35;
      v39 = MEMORY[0x277CBEAC0];
      v40 = &v54;
      v41 = &v53;
      v42 = 1;
    }

    v43 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:v42];
    v44 = v37;
    v45 = 3;
LABEL_23:
    *error = [v44 errorWithDomain:@"ATL" code:v45 userInfo:v43];

LABEL_24:
    goto LABEL_25;
  }

  v49[0] = @"EventType";
  v49[1] = @"appletIdentifier";
  v50[1] = appletCopy;
  v50[2] = @"Contactless";
  v50[0] = @"DeselectEvent";
  v49[2] = @"Interface";
  v49[3] = @"Version";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
  v49[4] = @"IgnoreRFEvents";
  v49[5] = @"DontWaitForEOT";
  v50[3] = v13;
  v50[4] = MEMORY[0x277CBEC38];
  v50[5] = MEMORY[0x277CBEC38];
  v50[6] = MEMORY[0x277CBEC28];
  v49[6] = @"RequiresPowerCycle";
  v49[7] = @"DelayExpressReentry";
  v50[7] = &unk_2843C6878;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:8];

  v16 = ATLLogObject(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v48 = v14;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_hciArray addObject:v14];
  v17 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
  v18 = [v17 objectForKeyedSubscript:self->_cityCode];
  v19 = [v18 objectForKeyedSubscript:@"endEventDelayMs"];
  unsignedIntegerValue = [v19 unsignedIntegerValue];

  v22 = ATLLogObject(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v48 = unsignedIntegerValue;
    _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_DEBUG, "Starting %lld ms timer due to reception of DESELECT", buf, 0xCu);
  }

  [(ATLTimer *)self->_timer startTimerWithDelay:unsignedIntegerValue];
LABEL_26:

  return v14;
}

- (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 == 2)
  {
    bytes = [eventCopy bytes];
    v12 = bytes;
    if (self->_errorTransaction)
    {
      v13 = 0;
    }

    else
    {
      v13 = 64;
    }

    if (self->_errorTransaction)
    {
      v14 = ATLLogObject(bytes);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        errorCode = self->_errorCode;
        *buf = 138412290;
        v41 = errorCode;
        _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction(ErrorCode = %@)", buf, 0xCu);
      }
    }

    v34[0] = @"EventType";
    v34[1] = @"appletIdentifier";
    v35[0] = @"EndEvent";
    v35[1] = appletCopy;
    v34[2] = @"Version";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v12 + 1)];
    v35[2] = v16;
    v35[3] = @"Contactless";
    v34[3] = @"Interface";
    v34[4] = @"didError";
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_errorTransaction];
    v35[4] = v17;
    v34[5] = @"result";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
    v34[6] = @"type";
    v35[5] = v18;
    v35[6] = &unk_2843C6890;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:7];

    v21 = ATLLogObject(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = v19;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [(NSMutableArray *)self->_hciArray addObject:v19];
  }

  else
  {
    v22 = ATLLogObject(v10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v41 = [eventCopy length];
      v42 = 2048;
      v43 = 2;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "End event length %zu (exp) %zu", buf, 0x16u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu (exp) %zu", objc_msgSend(eventCopy, "length"), 2];
    v24 = v23;
    if (error)
    {
      v25 = *error;
      v26 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v27 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v27;
        v37[0] = v23;
        v37[1] = v25;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v37;
        v30 = v36;
        v31 = 2;
      }

      else
      {
        v38 = *MEMORY[0x277CCA450];
        v39 = v23;
        v28 = MEMORY[0x277CBEAC0];
        v29 = &v39;
        v30 = &v38;
        v31 = 1;
      }

      v32 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
      *error = [v26 errorWithDomain:@"ATL" code:3 userInfo:v32];
    }

    v19 = 0;
  }

  return v19;
}

- (id)generateEndEventFromHCI
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  currentSubDecoder = self->_currentSubDecoder;
  v6 = ATLLogObject(v5);
  v7 = v6;
  if (!currentSubDecoder)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Warning: SubDecoder has not been set (nil)", buf, 2u);
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->_currentSubDecoder;
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEBUG, "CurrentSubDecoder: %@", buf, 0xCu);
  }

  if (![(NSMutableArray *)self->_hciArray count])
  {
    v17 = ATLLogObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    goto LABEL_24;
  }

  if (!self->_appletAID)
  {
LABEL_24:
    generateEndEventFromHCI = 0;
    goto LABEL_25;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_hciArray;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = ATLLogObject(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v14;
          _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v11 = v10;
    }

    while (v10);
  }

  generateEndEventFromHCI = [self->_currentSubDecoder generateEndEventFromHCI];
LABEL_25:

  return generateEndEventFromHCI;
}

- (id)generateContactEndEvent:(id)event withDidError:(BOOL)error
{
  errorCopy = error;
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = ATLLogObject(eventCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEBUG, "Generating Contact EndEvent ...", buf, 2u);
  }

  v26 = eventCopy;

  if (![(NSMutableArray *)self->_hciArray count])
  {
    v8 = ATLLogObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEBUG, "HCI Array provided does not contain HCI events (data presumed cleared)", buf, 2u);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_hciArray;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v15 = ATLLogObject(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v38 = v14;
          _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v39 count:16];
      v11 = v10;
    }

    while (v10);
  }

  v16 = [MEMORY[0x277CBEA90] dataWithHexString:@"020000"];
  v35[0] = @"EventType";
  v35[1] = @"appletIdentifier";
  v36[0] = @"EndEvent";
  v36[1] = v26;
  v35[2] = @"Version";
  v35[3] = @"Interface";
  v36[2] = &unk_2843C68A8;
  v36[3] = @"Contact";
  v35[4] = @"didError";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy];
  v36[4] = v17;
  v35[5] = @"result";
  if (errorCopy)
  {
    v18 = 0;
  }

  else
  {
    v18 = 64;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
  v36[5] = v19;
  v36[6] = &unk_2843C68C0;
  v35[6] = @"type";
  v35[7] = @"parsedInfo";
  v32 = v16;
  v33 = @"Transaction";
  v31 = @"TypeDetailRaw";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v36[7] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:8];

  v24 = ATLLogObject(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v22;
    _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEBUG, "EndEvent (Contact) %@", buf, 0xCu);
  }

  return v22;
}

+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error
{
  v61[1] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v5 = DERDecodeItemCtx(v, &v42);
  v6 = v5;
  if (v5 || v42 != 0xE000000000000001)
  {
    v19 = ATLLogObject(v5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v53 = 67109376;
      *&v53[4] = v6;
      *&v53[8] = 2048;
      *&v53[10] = v42;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v53, 0x12u);
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v20 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v6, v42];
    v22 = v21;
    if (!error)
    {
      goto LABEL_35;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v58[0] = *MEMORY[0x277CCA450];
      v58[1] = v25;
      v59[0] = v21;
      v59[1] = v23;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v59;
      v28 = v58;
LABEL_20:
      v33 = 2;
LABEL_34:
      v40 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v33];
      *error = [v24 errorWithDomain:@"ATL" code:3 userInfo:v40];

LABEL_35:
      error = 0;
      goto LABEL_36;
    }

    v60 = *MEMORY[0x277CCA450];
    v61[0] = v21;
    v26 = MEMORY[0x277CBEAC0];
    v27 = v61;
    v28 = &v60;
LABEL_33:
    v33 = 1;
    goto LABEL_34;
  }

  if (!v44)
  {
    v29 = ATLLogObject(v5);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v53 = 0;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Missing E1 content", v53, 2u);
    }

    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing E1 content"];
    v22 = v30;
    if (!error)
    {
      goto LABEL_35;
    }

    v31 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v54[0] = *MEMORY[0x277CCA450];
      v54[1] = v32;
      v55[0] = v30;
      v55[1] = v31;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v55;
      v28 = v54;
      goto LABEL_20;
    }

    v56 = *MEMORY[0x277CCA450];
    v57 = v30;
    v26 = MEMORY[0x277CBEAC0];
    v27 = &v57;
    v28 = &v56;
    goto LABEL_33;
  }

  memset(v53, 0, 32);
  v7 = DERParseSequenceSpec(&v43, &CalypsoTransactionEventE1ContentsSpec, v53, 0x20uLL);
  if (v7)
  {
    v8 = v7;
    v9 = ATLLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v48) = v8;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Failed to validate transaction event contents %d", buf, 8u);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to validate transaction event contents %d", v8];
    v11 = v10;
    if (error)
    {
      v12 = *error;
      v13 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v14 = *MEMORY[0x277CCA7E8];
        v49[0] = *MEMORY[0x277CCA450];
        v49[1] = v14;
        v50[0] = v10;
        v50[1] = v12;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v50;
        v17 = v49;
        v18 = 2;
      }

      else
      {
        v51 = *MEMORY[0x277CCA450];
        v52 = v10;
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v52;
        v17 = &v51;
        v18 = 1;
      }

      v39 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *error = [v13 errorWithDomain:@"ATL" code:3 userInfo:v39];

      error = 0;
    }
  }

  else
  {
    v11 = objc_alloc_init(CalypsoHciRecordData);
    [(CalypsoHciRecordData *)v11 setSfi:**v53];
    [(CalypsoHciRecordData *)v11 setRecordId:*(*v53 + 1)];
    v34 = [MEMORY[0x277CBEA90] dataWithDERItem:&v53[16]];
    [(CalypsoHciRecordData *)v11 setContent:v34];

    v35 = [(CalypsoHciRecordData *)v11 sfi];
    if (v35 >= 0x1F)
    {
      v36 = ATLLogObject(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [(CalypsoHciRecordData *)v11 sfi];
        *buf = 67109120;
        LODWORD(v48) = v37;
        _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_DEFAULT, "Unexpected SFI (0x%02X) provided in TransactionEvent", buf, 8u);
      }
    }

    v38 = ATLLogObject(v35);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v48 = v11;
      _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_DEBUG, "decodedRecordData: %@", buf, 0xCu);
    }

    v45 = @"recordData";
    v46 = v11;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  }

LABEL_36:

  return error;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  v16 = [MEMORY[0x277CBEA90] dataWithHexString:appletCopy];
  v17 = SelectByNameCmd(v16);

  v45 = 0;
  v18 = [historyCopy transceiveAndCheckSW:v17 error:&v45];
  v19 = v45;
  v20 = v19;
  if (v18)
  {
    v44 = v19;
    v21 = [(CalypsoDecoder *)self getSubDecoderConfig:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:historyCopy withError:error];
    if (v21)
    {
      v41 = moduleCopy;
      v42 = packageCopy;
      v22 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
      v23 = [v22 objectForKeyedSubscript:self->_cityCode];
      v24 = [v23 objectForKeyedSubscript:@"altFileMapping"];

      if (v24)
      {
        v25 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"fileMapping"];
        v26 = [v25 objectForKeyedSubscript:self->_cityCode];

        v27 = [CalypsoReaderContext readAllFiles:historyCopy withFileMapping:v26 debug:self->_debug error:error];
        if (v27)
        {
          v28 = [v21 getAppletStateAndHistory:v27 withError:error];
        }

        else
        {
          v28 = 0;
        }

        moduleCopy = v41;
        packageCopy = v42;
      }

      else
      {
        moduleCopy = v41;
        packageCopy = v42;
        v28 = [v21 getAppletStateAndHistory:historyCopy withApplet:appletCopy withPackage:v42 withModule:v41 withError:error];
      }
    }

    else
    {
      v30 = ATLLogObject(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = appletCopy;
        _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "No subDecoder configured for %@", buf, 0xCu);
      }

      appletCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No subDecoder configured for %@", appletCopy];
      v32 = appletCopy;
      if (error)
      {
        v33 = *error;
        v43 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v34 = *MEMORY[0x277CCA7E8];
          v46[0] = *MEMORY[0x277CCA450];
          v46[1] = v34;
          v47[0] = appletCopy;
          v47[1] = v33;
          v35 = MEMORY[0x277CBEAC0];
          v36 = v47;
          v37 = v46;
          v38 = 2;
        }

        else
        {
          v48 = *MEMORY[0x277CCA450];
          v49 = appletCopy;
          v35 = MEMORY[0x277CBEAC0];
          v36 = &v49;
          v37 = &v48;
          v38 = 1;
        }

        v39 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
        *error = [v43 errorWithDomain:@"ATL" code:6 userInfo:v39];
      }

      v28 = 0;
    }

    v20 = v44;
  }

  else if (error)
  {
    v29 = v19;
    v28 = 0;
    *error = v20;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)getSubDecoderConfig:(id)config withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  configCopy = config;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v56 = transceiverCopy;
  if (!self->_staticConfig)
  {
    v14 = +[AppletConfigurationData getCalypsoSettings];
    staticConfig = self->_staticConfig;
    self->_staticConfig = v14;
  }

  v16 = ATLLogObject(transceiverCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = self->_staticConfig;
    *buf = 138412290;
    v64 = v17;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEBUG, "_staticConfig: \n %@", buf, 0xCu);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v18 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"aidToCityMapping"];
  v19 = [v18 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v60;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v60 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v59 + 1) + 8 * i);
        uppercaseString = [(NSDictionary *)configCopy uppercaseString];
        v25 = [uppercaseString hasPrefix:v23];

        if (v25)
        {
          v26 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"aidToCityMapping"];
          v27 = [v26 objectForKeyedSubscript:v23];
          cityCode = self->_cityCode;
          self->_cityCode = v27;

          v29 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
          v30 = [v29 objectForKeyedSubscript:self->_cityCode];
          v31 = [v30 objectForKeyedSubscript:@"spid"];
          serviceProvider = self->_serviceProvider;
          self->_serviceProvider = v31;

          v33 = [CalypsoDecoder getSubDecoder:[(NSNumber *)self->_cityCode unsignedCharValue]];
          currentSubDecoder = self->_currentSubDecoder;
          self->_currentSubDecoder = v33;

          objc_storeStrong(&self->_appletAID, config);
          goto LABEL_15;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v59 objects:v75 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v35 = self->_currentSubDecoder;
  v37 = ATLLogObject(v36);
  v38 = v37;
  if (v35)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      appletAID = self->_appletAID;
      v40 = self->_cityCode;
      v41 = self->_serviceProvider;
      v42 = self->_currentSubDecoder;
      *buf = 138413058;
      v64 = appletAID;
      v65 = 2112;
      v66 = v40;
      v67 = 2112;
      v68 = v41;
      v69 = 2112;
      v70 = v42;
      _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_DEBUG, "(getSubDecoderConfig) CONFIG aid: %@ cityCode: %@  serviceProvider: %@ currentSubDecoder: %@", buf, 0x2Au);
    }

    v43 = self->_currentSubDecoder;
  }

  else
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v64 = configCopy;
      _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_ERROR, "No subDecoder configured for %@", buf, 0xCu);
    }

    configCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No subDecoder configured for %@", configCopy];
    v45 = configCopy;
    if (error)
    {
      v46 = *error;
      v47 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v48 = *MEMORY[0x277CCA7E8];
        v71[0] = *MEMORY[0x277CCA450];
        v71[1] = v48;
        v72[0] = configCopy;
        v72[1] = v46;
        v49 = MEMORY[0x277CBEAC0];
        v50 = v72;
        v51 = v71;
        v52 = 2;
      }

      else
      {
        v73 = *MEMORY[0x277CCA450];
        v74 = configCopy;
        v49 = MEMORY[0x277CBEAC0];
        v50 = &v74;
        v51 = &v73;
        v52 = 1;
      }

      v53 = [v49 dictionaryWithObjects:v50 forKeys:v51 count:v52];
      *error = [v47 errorWithDomain:@"ATL" code:6 userInfo:v53];
    }

    v43 = 0;
  }

  return v43;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v16 = transceiverCopy;
  if (!self->_currentSubDecoder)
  {
    v17 = [(CalypsoDecoder *)self getSubDecoderConfig:propertiesCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
    currentSubDecoder = self->_currentSubDecoder;
    self->_currentSubDecoder = v17;
  }

  if (self->_cityCode)
  {
    v19 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
    v20 = [v19 objectForKeyedSubscript:self->_cityCode];
    v21 = [v20 objectForKeyedSubscript:@"expressReentryDelayMs"];

    v34[0] = @"Supported";
    v34[1] = @"DelayExpressReentry";
    v35[0] = MEMORY[0x277CBEC38];
    v35[1] = v21;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v22 = ATLLogObject(transceiverCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      cityCode = self->_cityCode;
      *buf = 138412546;
      v41 = cityCode;
      v42 = 2112;
      v43 = propertiesCopy;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "CityCode (%@) is not configured for AID %@", buf, 0x16u);
    }

    propertiesCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CityCode (%@) is not configured for AID %@", self->_cityCode, propertiesCopy];
    v21 = propertiesCopy;
    if (error)
    {
      v25 = *error;
      v26 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v27 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v27;
        v37[0] = propertiesCopy;
        v37[1] = v25;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v37;
        v30 = v36;
        v31 = 2;
      }

      else
      {
        v38 = *MEMORY[0x277CCA450];
        v39 = propertiesCopy;
        v28 = MEMORY[0x277CBEAC0];
        v29 = &v39;
        v30 = &v38;
        v31 = 1;
      }

      v32 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
      *error = [v26 errorWithDomain:@"ATL" code:6 userInfo:v32];

      error = 0;
    }
  }

  return error;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Calypso decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso decoder doesn't expect processEndOfTransaction"];
  v10 = v9;
  if (error)
  {
    v11 = *error;
    v12 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v21[0] = *MEMORY[0x277CCA450];
      v21[1] = v13;
      v22[0] = v9;
      v22[1] = v11;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v22;
      v16 = v21;
      v17 = 2;
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v24[0] = v9;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v24;
      v16 = &v23;
      v17 = 1;
    }

    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
    *error = [v12 errorWithDomain:@"ATL" code:7 userInfo:v18];
  }

  return 0;
}

+ (id)getSubDecoder:(unsigned __int8)decoder
{
  decoderCopy = decoder;
  v11 = *MEMORY[0x277D85DE8];
  v4 = ATLLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109376;
    v8[1] = decoderCopy;
    v9 = 1024;
    v10 = 255;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEBUG, "---> internalCityCode: %d currentCityCode: %d", v8, 0xEu);
  }

  if (decoderCopy == 1)
  {
    v6 = &off_2788744C8;
  }

  else
  {
    if (decoderCopy == 255)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v6 = off_278874498;
  }

  v5 = objc_alloc_init(*v6);
LABEL_9:

  return v5;
}

- (id)getServiceProvider:(unsigned __int8)provider
{
  providerCopy = provider;
  v4 = objc_opt_self();
  v5 = [v4 getServiceProvider:providerCopy];

  return v5;
}

- (id)getEmReentryDelayMs:(unsigned __int8)ms
{
  msCopy = ms;
  v4 = objc_opt_class();

  return [v4 getEmReentryDelayMs:msCopy];
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  keyCopy = key;
  schemeCopy = scheme;
  transceiverCopy = transceiver;
  v21 = [(CalypsoDecoder *)self getSubDecoderConfig:dataCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 getServiceProviderData:dataCopy withPackage:packageCopy withModule:moduleCopy withPublicKey:keyCopy withEncryptionScheme:schemeCopy withTransceiver:transceiverCopy withError:error];
  }

  else
  {
    v24 = ATLLogObject(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = dataCopy;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Service Provider (Opaque) Data requires static configuration for %@", buf, 0xCu);
    }

    dataCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service Provider (Opaque) Data requires static configuration for %@", dataCopy];
    v26 = dataCopy;
    if (error)
    {
      v27 = *error;
      v35 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v28 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v28;
        v37[0] = dataCopy;
        v37[1] = v27;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v37;
        v31 = v36;
        v32 = 2;
      }

      else
      {
        v38 = *MEMORY[0x277CCA450];
        v39 = dataCopy;
        v29 = MEMORY[0x277CBEAC0];
        v30 = &v39;
        v31 = &v38;
        v32 = 1;
      }

      v33 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
      *error = [v35 errorWithDomain:@"ATL" code:2 userInfo:v33];
    }

    v23 = 0;
  }

  return v23;
}

+ (id)amountDictionaryWithAmount:(id)amount withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingIdentifierKey:(id)identifierKey
{
  v29[4] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCA980];
  identifierKeyCopy = identifierKey;
  exponentKeyCopy = exponentKey;
  currencyKeyCopy = currencyKey;
  keyCopy = key;
  identifierCopy = identifier;
  amountCopy = amount;
  intValue = [amountCopy intValue];
  if (intValue >= 0)
  {
    v21 = intValue;
  }

  else
  {
    v21 = -intValue;
  }

  intValue2 = [amountCopy intValue];

  v23 = [v13 decimalNumberWithMantissa:v21 exponent:0 isNegative:intValue2 >> 31];
  v28[0] = keyCopy;
  v28[1] = currencyKeyCopy;
  v29[0] = v23;
  v29[1] = @"XXX";
  v29[2] = &unk_2843C68D8;
  v28[2] = exponentKeyCopy;
  v28[3] = identifierKeyCopy;
  v24 = [identifierCopy dataUsingEncoding:4];

  asHexString = [v24 asHexString];
  v29[3] = asHexString;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  return v26;
}

+ (id)getCardConfig:(unint64_t)config
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v5 = [MEMORY[0x277CBEA90] dataWithLongBE:config];
  v6 = +[AppletConfigurationData getCalypsoSettings];
  v7 = [v6 objectForKeyedSubscript:@"idToCityMapping"];

  asHexString = [v5 asHexString];
  v9 = [v7 objectForKeyedSubscript:asHexString];

  [v4 setObject:v9 forKeyedSubscript:@"atlCityCode"];
  v10 = +[AppletConfigurationData getCalypsoSettings];
  v11 = [v10 objectForKeyedSubscript:@"calypsoSettings"];
  v12 = [v11 objectForKeyedSubscript:v9];

  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"supportsMerge"];
    [v4 setObject:v14 forKeyedSubscript:@"supportsMerge"];

    v15 = [v12 objectForKeyedSubscript:@"altFileMapping"];
    [v4 setObject:v15 forKeyedSubscript:@"altFileMapping"];

    v16 = [v12 objectForKeyedSubscript:@"altFileMapping"];

    if (!v16)
    {
      goto LABEL_9;
    }

    v18 = +[AppletConfigurationData getCalypsoSettings];
    v19 = [v18 objectForKeyedSubscript:@"fileMapping"];
    v20 = [v19 objectForKeyedSubscript:v9];

    v22 = ATLLogObject(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412290;
      v26 = v20;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_DEBUG, "cityFileMapping %@", &v25, 0xCu);
    }

    [v4 setObject:v20 forKeyedSubscript:@"cityFileStructure"];
  }

  else
  {
    v20 = ATLLogObject(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412546;
      v26 = v5;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_DEFAULT, "No city-specific settings for networkId %@ (internal) city %@", &v25, 0x16u);
    }
  }

LABEL_9:
  v23 = ATLLogObject(v17);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = v4;
    _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_DEBUG, "Static config: %@", &v25, 0xCu);
  }

  return v4;
}

@end