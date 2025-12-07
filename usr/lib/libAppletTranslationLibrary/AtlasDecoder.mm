@interface AtlasDecoder
+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error;
+ (id)amountDictionaryWithAmount:(id)amount withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingIdentifierKey:(id)identifierKey;
+ (id)calculateCommutePlanUniqueId:(id)id withExpiry:(id)expiry;
+ (id)calculateTransactionSN:(id)n withTimeStamp:(id)stamp withEventCode:(id)code withSP:(id)p withContractPointer:(id)pointer withDifferentiator:(id)differentiator;
+ (id)commutePlanWithIdAndExpiry:(id)expiry withExpiry:(id)withExpiry withUniqueId:(id)id;
+ (id)decodeBestContractList:(id)list;
+ (id)decodeContractFFBitMap:(id)map;
+ (id)decodeContractJourneyDataBitmap:(id)bitmap;
+ (id)decodeContractRestrictionBitmap:(id)bitmap;
+ (id)decodeContractSaleDataBitmap:(id)bitmap;
+ (id)decodeContractStructureFF:(id)f;
+ (id)decodeContractValidityBitmap:(id)bitmap;
+ (id)decodeCounterStructure03:(id)structure03;
+ (id)decodeCounterStructure0C:(id)c;
+ (id)decodeEnvironmentBitMap:(id)map;
+ (id)decodeEnvironmentData:(id)data;
+ (id)decodeEnvironmentDataBitMap:(id)map;
+ (id)decodeEventBitMap:(id)map;
+ (id)decodeEventEntry:(id)entry;
+ (id)formatCommutePlanIdentifier:(id)identifier withTariffCode:(id)code withZoneList:(id)list;
+ (id)formatTransitDetailRaw:(id)raw;
+ (id)getAbsoluteDateComponents:(id)components withTime:(id)time;
+ (id)getAbsoluteDateComponentsWithDefaultMinutes:(id)minutes withTime:(id)time withDefaultMinutes:(id)defaultMinutes;
+ (id)getInternalEnRouteStatus:(id)status;
+ (id)getTransitModality:(id)modality;
+ (id)getUnvalidatableContracts:(id)contracts;
+ (id)resolveServiceProvider:(unsigned __int8)provider;
+ (id)sharedInstance;
- (AtlasDecoder)init;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)generateContactEndEvent:(id)event withDidError:(BOOL)error;
- (id)generateEndEventFromHCI;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getCardIdFromSelectResponse:(id)response;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseCommandEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseHistory:(id)history withContractList:(id)list;
- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)readAndDecodeBestContractList:(id)list sfi:(unsigned __int8)sfi error:(id *)error;
- (id)readAndDecodeContracts:(id)contracts sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error;
- (id)readAndDecodeCounter:(id)counter sfi:(unsigned __int8)sfi recNum:(unsigned __int8)num counterStructure:(unsigned __int8)structure error:(id *)error;
- (id)readAndDecodeEnvironment:(id)environment sfi:(unsigned __int8)sfi error:(id *)error;
- (id)readAndDecodeHistory:(id)history sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error;
- (id)readPartnerRecords:(id)records sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error;
- (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index recLength:(unsigned __int8)length error:(id *)error;
- (void)cleanup;
- (void)stripContract:(id)contract;
@end

@implementation AtlasDecoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__AtlasDecoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__singleton;

  return v2;
}

uint64_t __30__AtlasDecoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__singleton = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AtlasDecoder)init
{
  v13.receiver = self;
  v13.super_class = AtlasDecoder;
  v2 = [(AtlasDecoder *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hciArray = v2->_hciArray;
    v2->_hciArray = v3;

    v5 = [ATLTimer alloc];
    v6 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __20__AtlasDecoder_init__block_invoke;
    v11[3] = &unk_278874C98;
    v7 = v2;
    v12 = v7;
    v8 = [(ATLTimer *)v5 initOnQueue:v6 withTimerBlock:v11];
    timer = v7->_timer;
    v7->_timer = v8;

    [AppletTranslator registerForCleanup:v7];
  }

  return v2;
}

void __20__AtlasDecoder_init__block_invoke(uint64_t a1)
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
    *v9 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Starting cleanup", v9, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_hciArray removeAllObjects];
  serviceProvider = selfCopy->_serviceProvider;
  selfCopy->_serviceProvider = 0;

  appletAID = selfCopy->_appletAID;
  selfCopy->_appletAID = 0;

  selfCopy->_errorTransaction = 0;
  errorCode = selfCopy->_errorCode;
  selfCopy->_errorCode = 0;

  transactionDetailRaw = selfCopy->_transactionDetailRaw;
  selfCopy->_transactionDetailRaw = 0;

  [(ATLTimer *)selfCopy->_timer stopTimer];
  objc_sync_exit(selfCopy);
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v64[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  if (!self->_appletAID)
  {
    objc_storeStrong(&self->_appletAID, applet);
  }

  v19 = [eventCopy length];
  if (v19 <= 1)
  {
    v20 = ATLLogObject(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v54 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v22 = v21;
    if (error)
    {
      v23 = *error;
      v24 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v25 = *MEMORY[0x277CCA7E8];
        v61[0] = *MEMORY[0x277CCA450];
        v61[1] = v25;
        v62[0] = v21;
        v62[1] = v23;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
      }

      else
      {
        v63 = *MEMORY[0x277CCA450];
        v64[0] = v21;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
      }
      v36 = ;
      *error = [v24 errorWithDomain:@"ATL" code:6 userInfo:v36];
    }

LABEL_28:

LABEL_29:
    v38 = 0;
    goto LABEL_34;
  }

  v26 = *[eventCopy bytes];
  bytes = [eventCopy bytes];
  v28 = *(bytes + 1);
  if (v28 != 7)
  {
    v31 = ATLLogObject(bytes);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v54 = v28;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_ERROR, "Unsupported version %u", buf, 8u);
    }

    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported version %u", v28];
    v22 = v32;
    if (error)
    {
      v33 = *error;
      v34 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v35 = *MEMORY[0x277CCA7E8];
        v57[0] = *MEMORY[0x277CCA450];
        v57[1] = v35;
        v58[0] = v32;
        v58[1] = v33;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
      }

      else
      {
        v59 = *MEMORY[0x277CCA450];
        v60 = v32;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      }
      v37 = ;
      *error = [v34 errorWithDomain:@"ATL" code:2 userInfo:v37];
    }

    goto LABEL_28;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v26 <= 16)
  {
    if (v26 == 1)
    {
      v30 = [(AtlasDecoder *)selfCopy parseStartEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_33;
    }

    if (v26 == 2)
    {
      v30 = [(AtlasDecoder *)selfCopy parseEndEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_33;
    }

LABEL_37:
    objc_sync_exit(selfCopy);

    v41 = ATLLogObject(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v54 = v26;
      v55 = 1024;
      v56 = 7;
      _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v26, 7];
    v43 = v42;
    if (error)
    {
      v44 = *error;
      v45 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v46 = *MEMORY[0x277CCA7E8];
        v49[0] = *MEMORY[0x277CCA450];
        v49[1] = v46;
        v50[0] = v42;
        v50[1] = v44;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      }

      else
      {
        v51 = *MEMORY[0x277CCA450];
        v52 = v42;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      }

      v48 = v47;
      *error = [v45 errorWithDomain:@"ATL" code:3 userInfo:v47];
    }

    goto LABEL_29;
  }

  if (v26 == 17)
  {
    v30 = [(AtlasDecoder *)selfCopy parseTransactionEvent:eventCopy withApplet:appletCopy error:error];
    goto LABEL_33;
  }

  if (v26 == 18)
  {
    v30 = [(AtlasDecoder *)selfCopy parseDeselectEvent:eventCopy withApplet:appletCopy error:error];
    goto LABEL_33;
  }

  if (v26 != 19)
  {
    goto LABEL_37;
  }

  v30 = [(AtlasDecoder *)selfCopy parseCommandEvent:eventCopy withApplet:appletCopy error:error];
LABEL_33:
  v38 = v30;
  objc_sync_exit(selfCopy);

LABEL_34:

  return v38;
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
          error = [(AtlasDecoder *)self generateContactEndEvent:appletCopy withDidError:v14 != 144];
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
  v91[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 > 2)
  {
    bytes = [eventCopy bytes];
    v22 = bytes;
    if (*(bytes + 1) == 7)
    {
      if (!*(bytes + 2))
      {
        v23 = @"Contact";
LABEL_19:
        v73[0] = bytes + 3;
        v73[1] = [eventCopy length] - 3;
        v36 = [AtlasDecoder DecodeTransactionE1TLV:v73 error:error];
        v37 = v36;
        if (error)
        {
          v38 = 0;
          if (*error || !v36)
          {
            goto LABEL_58;
          }
        }

        else if (!v36)
        {
          v38 = 0;
LABEL_58:

          goto LABEL_64;
        }

        v45 = [v36 objectForKeyedSubscript:@"recordData"];
        if ([v45 sfi] == 8 || (v46 = objc_msgSend(v45, "sfi"), v46 == 29))
        {
          content = [v45 content];
          v48 = 8 * [content length];

          if (v48 >= 0x35)
          {
            content2 = [v45 content];
            v50 = [AtlasDecoder decodeEventEntry:content2];

            if (v50)
            {
              v51 = [v50 objectForKeyedSubscript:@"EventCode"];
              if (v51)
              {
                v52 = [AtlasDecoder formatTransitDetailRaw:v51];
                v53 = v52;
                if (v52)
                {
                  transactionDetailRaw = self->_transactionDetailRaw;
                  if (transactionDetailRaw)
                  {
                    if (v52 != transactionDetailRaw)
                    {
                      log = ATLLogObject(v52);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        v55 = self->_transactionDetailRaw;
                        *buf = 138412546;
                        v77 = v55;
                        v78 = 2112;
                        v79 = v53;
                        _os_log_impl(&dword_22EEF5000, log, OS_LOG_TYPE_DEFAULT, "Inconsistent transaction details received during a single transaction %@ -> %@", buf, 0x16u);
                      }
                    }
                  }
                }

                v56 = self->_transactionDetailRaw;
                self->_transactionDetailRaw = v53;
              }

              v57 = [v50 objectForKeyedSubscript:@"EventResult"];

              if (v57)
              {
                v58 = [v50 objectForKeyedSubscript:@"EventResult"];
                errorCode = self->_errorCode;
                self->_errorCode = v58;

                longLongValue = [(NSNumber *)self->_errorCode longLongValue];
                if ((longLongValue - 32) >= 2 && (longLongValue - 131) >= 2)
                {
                  self->_errorTransaction = 1;
                }

                v61 = ATLLogObject(longLongValue);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = self->_errorCode;
                  *buf = 138412290;
                  v77 = v62;
                  _os_log_impl(&dword_22EEF5000, v61, OS_LOG_TYPE_DEFAULT, "*** SpecialEvent written with ErrorCode = %@", buf, 0xCu);
                }
              }
            }
          }
        }

        v63 = ATLLogObject(v46);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          v64 = self->_transactionDetailRaw;
          *buf = 138412290;
          v77 = v64;
          _os_log_impl(&dword_22EEF5000, v63, OS_LOG_TYPE_DEBUG, "*** _transactionDetailRaw = %@", buf, 0xCu);
        }

        v74[0] = @"EventType";
        v74[1] = @"appletIdentifier";
        v75[1] = appletCopy;
        v75[2] = v23;
        v75[0] = @"TransactionEvent";
        v74[2] = @"Interface";
        v74[3] = @"Version";
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 1)];
        v75[3] = v65;
        v75[4] = &unk_2843C65F0;
        v74[4] = @"spIdentifier";
        v74[5] = @"sfi";
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v45, "sfi")}];
        v75[5] = v66;
        v74[6] = @"recordId";
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v45, "recordId")}];
        v75[6] = v67;
        v74[7] = @"recordContent";
        content3 = [v45 content];
        v75[7] = content3;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:8];

        v70 = ATLLogObject(v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v77 = v38;
          _os_log_impl(&dword_22EEF5000, v70, OS_LOG_TYPE_DEBUG, "TransactionEvent %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_hciArray addObject:v38];
        goto LABEL_58;
      }

      if (*(bytes + 2) == 1)
      {
        v23 = @"Contactless";
        goto LABEL_19;
      }

      v39 = ATLLogObject(bytes);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *(v22 + 2);
        *buf = 67109120;
        LODWORD(v77) = v40;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
      }

      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v22 + 2)];
      v13 = v41;
      if (!error)
      {
        goto LABEL_63;
      }

      v42 = *error;
      v28 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v43 = *MEMORY[0x277CCA7E8];
        v80[0] = *MEMORY[0x277CCA450];
        v80[1] = v43;
        v81[0] = v41;
        v81[1] = v42;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v81;
        v32 = v80;
        goto LABEL_28;
      }

      v82 = *MEMORY[0x277CCA450];
      v83 = v41;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v83;
      v32 = &v82;
    }

    else
    {
      v24 = ATLLogObject(bytes);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(v22 + 1);
        *buf = 67109120;
        LODWORD(v77) = v25;
        _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Start Event version %u", buf, 8u);
      }

      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v22 + 1)];
      v13 = v26;
      if (!error)
      {
        goto LABEL_63;
      }

      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v84[0] = *MEMORY[0x277CCA450];
        v84[1] = v29;
        v85[0] = v26;
        v85[1] = v27;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v85;
        v32 = v84;
LABEL_28:
        v44 = 2;
LABEL_61:
        v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v44];
        v34 = v28;
        v35 = 3;
        goto LABEL_62;
      }

      v86 = *MEMORY[0x277CCA450];
      v87 = v26;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v87;
      v32 = &v86;
    }

    v44 = 1;
    goto LABEL_61;
  }

  v11 = ATLLogObject(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v77) = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
  v13 = v12;
  if (!error)
  {
    goto LABEL_63;
  }

  v14 = *error;
  v15 = MEMORY[0x277CCA9B8];
  if (*error)
  {
    v16 = *MEMORY[0x277CCA7E8];
    v88[0] = *MEMORY[0x277CCA450];
    v88[1] = v16;
    v89[0] = v12;
    v89[1] = v14;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v89;
    v19 = v88;
    v20 = 2;
  }

  else
  {
    v90 = *MEMORY[0x277CCA450];
    v91[0] = v12;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v91;
    v19 = &v90;
    v20 = 1;
  }

  v33 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  v34 = v15;
  v35 = 6;
LABEL_62:
  *error = [v34 errorWithDomain:@"ATL" code:v35 userInfo:v33];

LABEL_63:
  v38 = 0;
LABEL_64:

  return v38;
}

- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 != 3)
  {
    v14 = ATLLogObject(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v55 = [eventCopy length];
      v56 = 2048;
      v57 = 3;
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
      v52 = *MEMORY[0x277CCA450];
      v53 = v15;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v53;
      v22 = &v52;
      goto LABEL_31;
    }

    v19 = *MEMORY[0x277CCA7E8];
    v50[0] = *MEMORY[0x277CCA450];
    v50[1] = v19;
    v51[0] = v15;
    v51[1] = v17;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v51;
    v22 = v50;
LABEL_28:
    v37 = 2;
LABEL_32:
    v38 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v37];
    *error = [v18 errorWithDomain:@"ATL" code:3 userInfo:v38];

    error = 0;
    goto LABEL_33;
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
      LODWORD(v55) = v24;
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
      v48 = *MEMORY[0x277CCA450];
      v49 = v25;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v49;
      v22 = &v48;
      goto LABEL_31;
    }

    v27 = *MEMORY[0x277CCA7E8];
    v46[0] = *MEMORY[0x277CCA450];
    v46[1] = v27;
    v47[0] = v25;
    v47[1] = v26;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v47;
    v22 = v46;
    goto LABEL_28;
  }

  if (!*(bytes + 2))
  {
    v13 = @"Contact";
    goto LABEL_18;
  }

  if (*(bytes + 2) == 1)
  {
    v13 = @"Contactless";
LABEL_18:
    v40[0] = @"EventType";
    v40[1] = @"appletIdentifier";
    v41[1] = appletCopy;
    v41[2] = v13;
    v41[0] = @"StartEvent";
    v40[2] = @"Interface";
    v40[3] = @"Version";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v40[4] = @"IgnoreRFEvents";
    v40[5] = @"DontWaitForEOT";
    v41[5] = MEMORY[0x277CBEC38];
    v41[6] = MEMORY[0x277CBEC38];
    v41[3] = v28;
    v41[4] = MEMORY[0x277CBEC28];
    v40[6] = @"RequiresPowerCycle";
    v40[7] = @"EoTCallbackExpected";
    v40[8] = @"DelayExpressReentry";
    v41[7] = MEMORY[0x277CBEC28];
    v41[8] = &unk_2843C6608;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:9];

    v30 = ATLLogObject(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v16;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    error = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v16];
    v31 = ATLLogObject(error);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEBUG, "Stopping currently running timer due to incoming SELECT", buf, 2u);
    }

    [(ATLTimer *)self->_timer stopTimer];
    [(NSMutableArray *)self->_hciArray addObject:error];
    goto LABEL_33;
  }

  v32 = ATLLogObject(bytes);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = *(v12 + 2);
    *buf = 67109120;
    LODWORD(v55) = v33;
    _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
  }

  v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v12 + 2)];
  v16 = v34;
  if (error)
  {
    v35 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v36 = *MEMORY[0x277CCA7E8];
      v42[0] = *MEMORY[0x277CCA450];
      v42[1] = v36;
      v43[0] = v34;
      v43[1] = v35;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v43;
      v22 = v42;
      goto LABEL_28;
    }

    v44 = *MEMORY[0x277CCA450];
    v45 = v34;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v45;
    v22 = &v44;
LABEL_31:
    v37 = 1;
    goto LABEL_32;
  }

LABEL_33:

  return error;
}

- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 != 3)
  {
    v18 = ATLLogObject(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v43) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v20 = v19;
    if (!error)
    {
      goto LABEL_24;
    }

    v21 = *error;
    v22 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v23 = *MEMORY[0x277CCA7E8];
      v50[0] = *MEMORY[0x277CCA450];
      v50[1] = v23;
      v51[0] = v19;
      v51[1] = v21;
      v24 = MEMORY[0x277CBEAC0];
      v25 = v51;
      v26 = v50;
      v27 = 2;
    }

    else
    {
      v52 = *MEMORY[0x277CCA450];
      v53[0] = v19;
      v24 = MEMORY[0x277CBEAC0];
      v25 = v53;
      v26 = &v52;
      v27 = 1;
    }

    v38 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
    v39 = v22;
    v40 = 6;
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
    v28 = ATLLogObject(bytes);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(v12 + 2);
      *buf = 67109120;
      LODWORD(v43) = v29;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v12 + 2)];
    v20 = v30;
    if (!error)
    {
      goto LABEL_24;
    }

    v31 = *error;
    v32 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v33 = *MEMORY[0x277CCA7E8];
      v46[0] = *MEMORY[0x277CCA450];
      v46[1] = v33;
      v47[0] = v30;
      v47[1] = v31;
      v34 = MEMORY[0x277CBEAC0];
      v35 = v47;
      v36 = v46;
      v37 = 2;
    }

    else
    {
      v48 = *MEMORY[0x277CCA450];
      v49 = v30;
      v34 = MEMORY[0x277CBEAC0];
      v35 = &v49;
      v36 = &v48;
      v37 = 1;
    }

    v38 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:v37];
    v39 = v32;
    v40 = 3;
LABEL_23:
    *error = [v39 errorWithDomain:@"ATL" code:v40 userInfo:v38];

LABEL_24:
    goto LABEL_25;
  }

  v44[0] = @"EventType";
  v44[1] = @"appletIdentifier";
  v45[1] = appletCopy;
  v45[2] = @"Contactless";
  v45[0] = @"DeselectEvent";
  v44[2] = @"Interface";
  v44[3] = @"Version";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
  v44[4] = @"IgnoreRFEvents";
  v44[5] = @"DontWaitForEOT";
  v45[3] = v13;
  v45[4] = MEMORY[0x277CBEC38];
  v45[5] = MEMORY[0x277CBEC38];
  v45[6] = MEMORY[0x277CBEC28];
  v44[6] = @"RequiresPowerCycle";
  v44[7] = @"DelayExpressReentry";
  v45[7] = &unk_2843C6608;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:8];

  v16 = ATLLogObject(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v14;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v17 = ATLLogObject([(NSMutableArray *)self->_hciArray addObject:v14]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEBUG, "Starting 150 ms timer due to reception of DESELECT", buf, 2u);
  }

  [(ATLTimer *)self->_timer startTimerWithDelay:?];
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
        _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
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
    v35[6] = &unk_2843C6620;
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
  v39 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  if (![(NSMutableArray *)self->_hciArray count])
  {
    v19 = ATLLogObject(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    v23 = 0;
    goto LABEL_27;
  }

  if (self->_appletAID)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = self->_hciArray;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v27;
      *&v6 = 138412290;
      v25 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v26 + 1) + 8 * v9);
          v11 = ATLLogObject(v5);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v37 = v10;
            _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
          }

          ++v9;
        }

        while (v7 != v9);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
        v7 = v5;
      }

      while (v5);
    }

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
      v14 = ATLLogObject(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        errorCode = self->_errorCode;
        *buf = 138412290;
        v37 = errorCode;
        _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
      }
    }

    if (!self->_transactionDetailRaw)
    {
      v16 = [MEMORY[0x277CBEA90] dataWithHexString:@"010000"];
      transactionDetailRaw = self->_transactionDetailRaw;
      self->_transactionDetailRaw = v16;
    }

    v34[0] = @"EventType";
    v34[1] = @"appletIdentifier";
    appletAID = self->_appletAID;
    v35[0] = @"EndEvent";
    v35[1] = appletAID;
    v34[2] = @"Version";
    v34[3] = @"Interface";
    v35[2] = &unk_2843C6638;
    v35[3] = @"Contactless";
    v34[4] = @"didError";
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{self->_errorTransaction, v25, v26}];
    v35[4] = v19;
    v34[5] = @"result";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
    v35[5] = v20;
    v35[6] = &unk_2843C6620;
    v34[6] = @"type";
    v34[7] = @"parsedInfo";
    v30 = @"TypeDetailRaw";
    v31 = self->_transactionDetailRaw;
    v32 = @"Transaction";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v33 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v35[7] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];

LABEL_27:
    goto LABEL_29;
  }

  v23 = 0;
LABEL_29:

  return v23;
}

- (id)generateContactEndEvent:(id)event withDidError:(BOOL)error
{
  errorCopy = error;
  v41 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = ATLLogObject(eventCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEBUG, "Generating Contact EndEvent ...", buf, 2u);
  }

  v27 = eventCopy;

  hciArray = self->_hciArray;
  if (!hciArray || (hciArray = [(NSMutableArray *)hciArray count]) == 0)
  {
    v9 = ATLLogObject(hciArray);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEBUG, "HCI Array provided does not contain HCI events (data presumed cleared)", buf, 2u);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_hciArray;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        v16 = ATLLogObject(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v15;
          _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
        }

        ++v14;
      }

      while (v12 != v14);
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
      v12 = v11;
    }

    while (v11);
  }

  v17 = [MEMORY[0x277CBEA90] dataWithHexString:@"020000"];
  v36[0] = @"EventType";
  v36[1] = @"appletIdentifier";
  v37[0] = @"EndEvent";
  v37[1] = v27;
  v36[2] = @"Version";
  v36[3] = @"Interface";
  v37[2] = &unk_2843C6638;
  v37[3] = @"Contact";
  v36[4] = @"didError";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy];
  v37[4] = v18;
  v36[5] = @"result";
  if (errorCopy)
  {
    v19 = 0;
  }

  else
  {
    v19 = 64;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v19];
  v37[5] = v20;
  v37[6] = &unk_2843C6650;
  v36[6] = @"type";
  v36[7] = @"parsedInfo";
  v33 = v17;
  v34 = @"Transaction";
  v32 = @"TypeDetailRaw";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v35 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v37[7] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:8];

  v25 = ATLLogObject(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v23;
    _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEBUG, "EndEvent (Contact) %@", buf, 0xCu);
  }

  return v23;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Supported";
  v9[1] = @"DelayExpressReentry";
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_2843C6608;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:{2, transceiver, error}];

  return v7;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Atlas decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Atlas decoder doesn't expect processEndOfTransaction"];
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

+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error
{
  v60[1] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v5 = DERDecodeItemCtx(v, &v41);
  v6 = v5;
  if (v5 || v41 != 0xE000000000000001)
  {
    v19 = ATLLogObject(v5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v52 = 67109376;
      *&v52[4] = v6;
      *&v52[8] = 2048;
      *&v52[10] = v41;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v52, 0x12u);
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v20 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v6, v41];
    v22 = v21;
    if (!error)
    {
      goto LABEL_33;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v57[0] = *MEMORY[0x277CCA450];
      v57[1] = v25;
      v58[0] = v21;
      v58[1] = v23;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v58;
      v28 = v57;
LABEL_20:
      v33 = 2;
LABEL_32:
      v39 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v33];
      *error = [v24 errorWithDomain:@"ATL" code:3 userInfo:v39];

LABEL_33:
      error = 0;
      goto LABEL_34;
    }

    v59 = *MEMORY[0x277CCA450];
    v60[0] = v21;
    v26 = MEMORY[0x277CBEAC0];
    v27 = v60;
    v28 = &v59;
LABEL_31:
    v33 = 1;
    goto LABEL_32;
  }

  if (!v43)
  {
    v29 = ATLLogObject(v5);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v52 = 0;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Missing E1 content", v52, 2u);
    }

    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing E1 content"];
    v22 = v30;
    if (!error)
    {
      goto LABEL_33;
    }

    v31 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v53[0] = *MEMORY[0x277CCA450];
      v53[1] = v32;
      v54[0] = v30;
      v54[1] = v31;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v54;
      v28 = v53;
      goto LABEL_20;
    }

    v55 = *MEMORY[0x277CCA450];
    v56 = v30;
    v26 = MEMORY[0x277CBEAC0];
    v27 = &v56;
    v28 = &v55;
    goto LABEL_31;
  }

  memset(v52, 0, 32);
  v7 = DERParseSequenceSpec(&v42, &AtlasTransactionEventE1ContentsSpec, v52, 0x20uLL);
  if (v7)
  {
    v8 = v7;
    v9 = ATLLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v51 = v8;
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
        v46[0] = *MEMORY[0x277CCA450];
        v46[1] = v14;
        v47[0] = v10;
        v47[1] = v12;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v47;
        v17 = v46;
        v18 = 2;
      }

      else
      {
        v48 = *MEMORY[0x277CCA450];
        v49 = v10;
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v49;
        v17 = &v48;
        v18 = 1;
      }

      v38 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *error = [v13 errorWithDomain:@"ATL" code:3 userInfo:v38];

      error = 0;
    }
  }

  else
  {
    v11 = objc_alloc_init(AtlasRecordData);
    [(AtlasRecordData *)v11 setSfi:**v52];
    [(AtlasRecordData *)v11 setRecordId:*(*v52 + 1)];
    v34 = [MEMORY[0x277CBEA90] dataWithDERItem:&v52[16]];
    [(AtlasRecordData *)v11 setContent:v34];

    v35 = [(AtlasRecordData *)v11 sfi];
    if (v35 >= 0x1F)
    {
      v36 = ATLLogObject(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [(AtlasRecordData *)v11 sfi];
        *buf = 67109120;
        v51 = v37;
        _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_DEFAULT, "Unexpected SFI (0x%02X) provided in TransactionEvent", buf, 8u);
      }
    }

    v44 = @"recordData";
    v45 = v11;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  }

LABEL_34:

  return error;
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  errorCopy = error;
  v127[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  schemeCopy = scheme;
  dataCopy = data;
  v17 = [TransceiverWrapper withTransceiver:transceiver];
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v20 = [MEMORY[0x277CBEA90] dataWithHexString:dataCopy];

  v21 = SelectByNameCmd(v20);

  v119 = 0;
  v22 = [v17 transceiveAndCheckSW:v21 error:&v119];
  v23 = v119;
  if (!v23)
  {
    v104 = v22;
    if (!v22)
    {
      v75 = ATLLogObject(0);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v75, OS_LOG_TYPE_ERROR, "No response to SELECT received", buf, 2u);
      }

      v76 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No response to SELECT received"];
      v77 = v76;
      if (error)
      {
        v78 = v21;
        v79 = *error;
        v80 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v81 = *MEMORY[0x277CCA7E8];
          v124[0] = *MEMORY[0x277CCA450];
          v124[1] = v81;
          v125[0] = v76;
          v125[1] = v79;
          v82 = MEMORY[0x277CBEAC0];
          v83 = v125;
          v84 = v124;
          v85 = 2;
        }

        else
        {
          v126 = *MEMORY[0x277CCA450];
          v127[0] = v76;
          v82 = MEMORY[0x277CBEAC0];
          v83 = v127;
          v84 = &v126;
          v85 = 1;
        }

        v86 = [v82 dictionaryWithObjects:v83 forKeys:v84 count:v85];
        *error = [v80 errorWithDomain:@"ATL" code:5 userInfo:v86];

        v21 = v78;
      }

      v24 = 0;
      errorCopy = 0;
      goto LABEL_88;
    }

    v93 = v21;
    [v22 base64EncodedStringWithOptions:0];
    v27 = v26 = v22;
    [v19 setObject:v27 forKeyedSubscript:@"answerSelectApplication"];

    v92 = [(AtlasDecoder *)self getCardIdFromSelectResponse:v26];
    asHexString = [v92 asHexString];
    [v18 setObject:asHexString forKeyedSubscript:@"cardId"];

    selectRemoteTicketingCmd = [(AtlasDecoder *)self SelectRemoteTicketingCmd];
    v90 = [v17 transceiveAndCheckSW:? error:?];
    v29 = [v90 base64EncodedStringWithOptions:0];
    [v19 setObject:v29 forKeyedSubscript:@"answerSelectFileRT"];

    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:11];
    v118 = 0;
    v31 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:7 count:1 error:&v118];
    v32 = v118;
    v33 = v32;
    v96 = v31;
    if (v32)
    {
      v34 = ATLLogObject(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 7;
        _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Failed to read Environment File SFI %d", buf, 8u);
      }

      v31 = v96;
    }

    if (v31)
    {
      [v30 addObject:v31];
    }

    v117 = v33;
    v102 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:8 count:3 error:&v117];
    v35 = v117;

    if (v35)
    {
      v37 = ATLLogObject(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 8;
        _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Failed to read Transaction History SFI %d", buf, 8u);
      }
    }

    if (v102)
    {
      [v30 addObject:?];
    }

    v116 = v35;
    v101 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:9 count:4 error:&v116];
    v38 = v116;

    if (v38)
    {
      v40 = ATLLogObject(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 9;
        _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_ERROR, "Failed to read Contracts File SFI %d", buf, 8u);
      }
    }

    if (v101)
    {
      [v30 addObject:?];
    }

    v115 = v38;
    v100 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:10 count:1 error:&v115];
    v41 = v115;

    if (v41)
    {
      v43 = ATLLogObject(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 10;
        _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v100)
    {
      [v30 addObject:?];
    }

    v114 = v41;
    v99 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:11 count:1 error:&v114];
    v44 = v114;

    if (v44)
    {
      v46 = ATLLogObject(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 11;
        _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v99)
    {
      [v30 addObject:?];
    }

    v113 = v44;
    v98 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:12 count:1 error:&v113];
    v47 = v113;

    if (v47)
    {
      v49 = ATLLogObject(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 12;
        _os_log_impl(&dword_22EEF5000, v49, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v98)
    {
      [v30 addObject:?];
    }

    v112 = v47;
    v97 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:13 count:1 error:&v112];
    v50 = v112;

    if (v50)
    {
      v52 = ATLLogObject(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 13;
        _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v97)
    {
      [v30 addObject:?];
    }

    v105 = v30;
    v111 = v50;
    v53 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:6 count:4 error:&v111];
    v54 = v111;

    v95 = v53;
    if (v54)
    {
      v56 = ATLLogObject(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 6;
        _os_log_impl(&dword_22EEF5000, v56, OS_LOG_TYPE_ERROR, "Failed to read Contract Extentions File SFI %d", buf, 8u);
      }

      v53 = v95;
    }

    v103 = v19;
    if (v53)
    {
      [v105 addObject:v53];
    }

    v110 = v54;
    v57 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:29 count:3 error:&v110];
    v58 = v110;

    v94 = v57;
    if (v58)
    {
      v60 = ATLLogObject(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 29;
        _os_log_impl(&dword_22EEF5000, v60, OS_LOG_TYPE_ERROR, "Failed to read Special Events File SFI %d", buf, 8u);
      }

      v57 = v94;
    }

    if (v57)
    {
      [v105 addObject:v57];
    }

    v109 = v58;
    v61 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:30 count:1 error:&v109];
    v62 = v109;

    if (v62)
    {
      v64 = ATLLogObject(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 30;
        _os_log_impl(&dword_22EEF5000, v64, OS_LOG_TYPE_ERROR, "Failed to read Best Contracts SFI %d", buf, 8u);
      }
    }

    if (v61)
    {
      [v105 addObject:v61];
    }

    v89 = v61;
    v108 = v62;
    error = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:25 count:1 error:&v108, error];
    v66 = v108;

    if (v66)
    {
      v68 = ATLLogObject(v67);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v123 = 25;
        _os_log_impl(&dword_22EEF5000, v68, OS_LOG_TYPE_ERROR, "Failed to read All Counters SFI %d", buf, 8u);
      }
    }

    if (error)
    {
      [v105 addObject:error];
    }

    [v103 setObject:v105 forKeyedSubscript:@"recordFiles"];
    [v18 setObject:v103 forKeyedSubscript:@"cardBinaryrecord"];
    v120 = @"cardImage";
    v121 = v18;
    v69 = v18;
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v107 = v66;
    v71 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v70 options:1 error:&v107];
    v24 = v107;

    if (keyCopy)
    {
      v106 = v24;
      v72 = keyCopy;
      errorCopy = [_TtC24AppletTranslationLibrary17OpaqueDataService serializedHPKEWithData:v71 publicKey:keyCopy scheme:schemeCopy error:&v106];
      v73 = v106;

      if (v88)
      {
        v18 = v69;
        if (v73)
        {
          v74 = v73;
          *v88 = v73;
        }

        v24 = v73;
        keyCopy = v72;
        goto LABEL_84;
      }

      v24 = v73;
      keyCopy = v72;
    }

    else
    {
      errorCopy = v71;
    }

    v18 = v69;
LABEL_84:
    v21 = v93;

    v19 = v103;
LABEL_88:
    v22 = v104;
    goto LABEL_89;
  }

  v24 = v23;
  if (error)
  {
    v25 = v23;
    errorCopy = 0;
    *error = v24;
  }

LABEL_89:

  return errorCopy;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v110 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v11 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v12 = SelectByNameCmd(v11);

  v103 = 0;
  v13 = [historyCopy transceiveAndCheckSW:v12 error:&v103];
  v14 = v103;
  v15 = v14;
  if (v13)
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v102 = v15;
    v18 = [(AtlasDecoder *)self readAndDecodeContracts:historyCopy sfi:9 count:4 error:&v102];
    v19 = v102;

    v88 = v18;
    if (v19)
    {
      if (error)
      {
        v20 = v19;
        v21 = 0;
        *error = v19;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v23 = [v18 copy];
      [v16 setObject:v23 forKeyedSubscript:@"ContractList"];

      v101 = 0;
      [(AtlasDecoder *)self readAndDecodeHistory:historyCopy sfi:8 count:10 error:&v101];
      v25 = v24 = self;
      v26 = v101;
      if (v26)
      {
        v19 = v26;
        if (error)
        {
          v27 = v26;
          v21 = 0;
          *error = v19;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        [v16 setObject:v25 forKeyedSubscript:@"TransactionHistory"];
        v85 = [(AtlasDecoder *)v24 parseHistory:v25 withContractList:v18];
        v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
        v100 = 0;
        v28 = [(AtlasDecoder *)v24 readAndDecodeBestContractList:historyCopy sfi:30 error:&v100];
        v29 = v100;
        v84 = v28;
        if (v29)
        {
          v19 = v29;
          if (error)
          {
            v30 = v29;
            v21 = 0;
            *error = v19;
          }

          else
          {
            v21 = 0;
          }

          v67 = v85;
        }

        else
        {
          v78 = v24;
          errorCopy = error;
          v80 = v17;
          v82 = v13;
          v83 = v12;
          v81 = v16;
          [v16 setObject:v28 forKeyedSubscript:@"BestContractList"];
          v31 = [AtlasDecoder getUnvalidatableContracts:v28];
          v32 = ATLLogObject(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v109 = v31;
            _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEBUG, "unValidatableContracts: %@", buf, 0xCu);
          }

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v33 = v88;
          obj = [v88 copy];
          v34 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
          v86 = v31;
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v90 = *v97;
            do
            {
              v37 = 0;
              do
              {
                if (*v97 != v90)
                {
                  objc_enumerationMutation(obj);
                }

                v38 = *(*(&v96 + 1) + 8 * v37);
                ++v36;
                v39 = ATLLogObject(v34);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  LODWORD(v109) = v36;
                  _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEBUG, "contractPointerId %d", buf, 8u);
                }

                v41 = ATLLogObject(v40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v42 = [v38 objectForKeyedSubscript:@"ContractBitmap"];
                  *buf = 138412290;
                  v109 = v42;
                  _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEBUG, "ContractBitmap %@", buf, 0xCu);
                }

                v44 = ATLLogObject(v43);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  v45 = [v38 objectForKeyedSubscript:@"ContractStatus"];
                  *buf = 138412290;
                  v109 = v45;
                  _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEBUG, "ContractStatus %@", buf, 0xCu);
                }

                v47 = ATLLogObject(v46);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  v48 = [v38 objectForKeyedSubscript:@"ContractTariff"];
                  *buf = 138412290;
                  v109 = v48;
                  _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_DEBUG, "ContractTariff %@", buf, 0xCu);
                }

                v50 = ATLLogObject(v49);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v51 = [v38 objectForKeyedSubscript:@"ContractCounters"];
                  *buf = 138412290;
                  v109 = v51;
                  _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_DEBUG, "ContractCounters %@", buf, 0xCu);
                }

                v53 = ATLLogObject(v52);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                {
                  v54 = [v38 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  *buf = 138412290;
                  v109 = v54;
                  _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_DEBUG, "ContractValidityJourneysData %@", buf, 0xCu);
                }

                v55 = [v38 objectForKeyedSubscript:@"ContractStatus"];
                integerValue = [v55 integerValue];

                if (integerValue == 1 && ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v36], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", v57), v58 = objc_claimAutoreleasedReturnValue(), v58, v57, !v58))
                {
                  v59 = [v38 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  v60 = [v59 objectForKeyedSubscript:@"ContractCounterStructure"];

                  if ([v60 integerValue] == 12)
                  {
                    v61 = [v38 objectForKeyedSubscript:@"ContractCounters"];
                    v62 = [v61 objectForKeyedSubscript:@"CounterContractCount"];

                    v63 = [v38 objectForKeyedSubscript:@"CommutePlanIdentifier"];
                    v64 = [AtlasDecoder amountDictionaryWithAmount:v62 withIdentifier:v63 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingIdentifierKey:@"BalanceIdentifier"];

                    v33 = v88;
                    [v87 addObject:v64];
                    [v88 removeObject:v38];

                    v31 = v86;
                  }
                }

                else
                {
                  v34 = [v33 removeObject:v38];
                }

                ++v37;
              }

              while (v35 != v37);
              v34 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
              v35 = v34;
            }

            while (v34);
          }

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v65 = v33;
          v66 = [v65 countByEnumeratingWithState:&v92 objects:v106 count:16];
          v17 = v80;
          v67 = v85;
          if (v66)
          {
            v68 = v66;
            v69 = *v93;
            do
            {
              for (i = 0; i != v68; ++i)
              {
                if (*v93 != v69)
                {
                  objc_enumerationMutation(v65);
                }

                [(AtlasDecoder *)v78 stripContract:*(*(&v92 + 1) + 8 * i)];
              }

              v68 = [v65 countByEnumeratingWithState:&v92 objects:v106 count:16];
            }

            while (v68);
          }

          [v80 setObject:v65 forKeyedSubscript:@"CommutePlans"];
          [v80 setObject:v87 forKeyedSubscript:@"Balances"];
          v91 = 0;
          v71 = [(AtlasDecoder *)v78 readAndDecodeEnvironment:historyCopy sfi:7 error:&v91];
          v72 = v91;
          v19 = v72;
          if (v72)
          {
            v13 = v82;
            v12 = v83;
            if (errorCopy)
            {
              v73 = v72;
              v21 = 0;
              *errorCopy = v19;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v74 = [v71 objectForKeyedSubscript:@"EnvApplicationEndDate"];

            v13 = v82;
            if (v74)
            {
              v75 = [v71 objectForKeyedSubscript:@"EnvApplicationEndDate"];
              v76 = [AtlasDecoder getAbsoluteDateComponents:v75 withTime:0];
              [v80 setObject:v76 forKeyedSubscript:@"CardExpirationDate"];
            }

            v104[0] = @"State";
            v104[1] = @"TransactionHistory";
            v105[0] = v80;
            v105[1] = v85;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
            v12 = v83;
          }

          v16 = v81;
        }
      }
    }

    v15 = v19;
  }

  else if (error)
  {
    v22 = v14;
    v21 = 0;
    *error = v15;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)readAndDecodeContracts:(id)contracts sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  sfiCopy = sfi;
  v84[1] = *MEMORY[0x277D85DE8];
  contractsCopy = contracts;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy];
  v12 = v10;
  if (!countCopy)
  {
LABEL_43:
    v47 = v12;
    goto LABEL_59;
  }

  v13 = 0;
  *&v11 = 138412290;
  v63 = v11;
  v69 = v10;
  v70 = contractsCopy;
  v67 = sfiCopy;
  v68 = countCopy;
  selfCopy = self;
  while (1)
  {
    v14 = v13 + 1;
    v76 = 0;
    v15 = [(AtlasDecoder *)self readRecord:contractsCopy sfi:sfiCopy index:(v13 + 1) recLength:0 error:&v76, v63];
    v16 = v76;
    v17 = v16;
    if (!v16)
    {
      break;
    }

    if ([v16 code] != 9)
    {
      if (error)
      {
        v48 = v17;
        *error = v17;
      }

LABEL_57:

      goto LABEL_58;
    }

    v18 = ATLLogObject(9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = v13 + 1;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_DEFAULT, "Contract record %d not found (unexpected)", buf, 8u);
    }

LABEL_42:

    v13 = v14;
    if (countCopy == v14)
    {
      goto LABEL_43;
    }
  }

  v19 = [v15 length];
  if (v19 != 29)
  {
    v49 = ATLLogObject(v19);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v49, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data", buf, 2u);
    }

    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data"];
    v51 = v50;
    if (error)
    {
      v52 = *error;
      v53 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v54 = *MEMORY[0x277CCA7E8];
        v81[0] = *MEMORY[0x277CCA450];
        v81[1] = v54;
        v82[0] = v50;
        v82[1] = v52;
        v55 = MEMORY[0x277CBEAC0];
        v56 = v82;
        v57 = v81;
        v58 = 2;
      }

      else
      {
        v83 = *MEMORY[0x277CCA450];
        v84[0] = v50;
        v55 = MEMORY[0x277CBEAC0];
        v56 = v84;
        v57 = &v83;
        v58 = 1;
      }

      v61 = [v55 dictionaryWithObjects:v56 forKeys:v57 count:v58];
      *error = [v53 errorWithDomain:@"ATL" code:8 userInfo:v61];
    }

    goto LABEL_57;
  }

  v17 = [AtlasDecoder decodeContractStructureFF:v15];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:(v13 + 1)];
  [v17 setObject:v20 forKeyedSubscript:@"ContractPointerNumber"];

  v21 = [v17 objectForKeyedSubscript:@"ContractValidityJourneysData"];
  v18 = v21;
  if (!v21)
  {
    v25 = ATLLogObject(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = v13 + 1;
      v27 = v25;
      v28 = "No validityJourneysData provided for contract %d";
LABEL_16:
      _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 8u);
    }

LABEL_17:
    v23 = 0;
LABEL_18:

    v29 = [v17 objectForKeyedSubscript:@"ContractValidityStartDate"];
    v30 = [v17 objectForKeyedSubscript:@"ContractValidityStartTime"];
    v31 = [v17 objectForKeyedSubscript:@"ContractValidityEndDate"];
    v74 = [v17 objectForKeyedSubscript:@"ContractValidityEndTime"];
    v32 = ATLLogObject(v74);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v78 = v29;
      v79 = 2112;
      v80 = v30;
      _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEBUG, "Contract Start Date/Time: %@ / %@", buf, 0x16u);
    }

    v34 = ATLLogObject(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v78 = v31;
      v79 = 2112;
      v80 = v74;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEBUG, "Contract End Date/Time: %@ / %@", buf, 0x16u);
    }

    v72 = v23;
    v73 = v15;
    v71 = v31;
    if ([v23 integerValue] == 12)
    {
      v35 = v29;
      v36 = v30;
      v37 = [AtlasDecoder getAbsoluteDateComponents:v29 withTime:v30];
      v38 = [AtlasDecoder getAbsoluteDateComponents:v31 withTime:v74];
    }

    else
    {
      if ([v23 integerValue] == 3)
      {
        v39 = [v17 objectForKeyedSubscript:@"ContractCounters"];
        v40 = [v39 objectForKeyedSubscript:@"CounterCounterValidityEndDate"];

        v65 = v40;
        if ([v40 integerValue])
        {
          v41 = [AtlasDecoder getAbsoluteDateComponentsWithDefaultMinutes:v40 withTime:0 withDefaultMinutes:&unk_2843C6668];
          v42 = ATLLogObject(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            *buf = v63;
            v78 = v41;
            _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEBUG, "Overriding Contract Validity End from Counter: %@", buf, 0xCu);
          }
        }

        else
        {
          v42 = ATLLogObject(0);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            *buf = v63;
            v78 = 0;
            _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEBUG, "Contract Validity End from Counter not yet set: %@", buf, 0xCu);
          }

          v41 = 0;
        }

        if (v29)
        {
          v37 = [AtlasDecoder getAbsoluteDateComponentsWithDefaultMinutes:v29 withTime:v30 withDefaultMinutes:&unk_2843C6650];
        }

        else
        {
          v37 = 0;
        }

        v36 = v30;
        v35 = v29;

        goto LABEL_37;
      }

      v35 = v29;
      v36 = v30;
      v37 = [AtlasDecoder getAbsoluteDateComponentsWithDefaultMinutes:v29 withTime:v30 withDefaultMinutes:&unk_2843C6650];
      v38 = [AtlasDecoder getAbsoluteDateComponentsWithDefaultMinutes:v31 withTime:v74 withDefaultMinutes:&unk_2843C6668];
    }

    v41 = v38;
LABEL_37:
    v43 = [v17 objectForKeyedSubscript:@"ContractTariff"];
    v44 = [v17 objectForKeyedSubscript:@"ContractValidityZones"];
    v45 = [AtlasDecoder formatCommutePlanIdentifier:v18 withTariffCode:v43 withZoneList:v44];

    [v17 setObject:v45 forKeyedSubscript:@"CommutePlanIdentifier"];
    if (v37)
    {
      [v17 setObject:v37 forKeyedSubscript:@"CommutePlanValidityStartDate"];
    }

    v12 = v69;
    if (v41)
    {
      [v17 setObject:v41 forKeyedSubscript:@"CommutePlanValidityEndDate"];
      v46 = [AtlasDecoder calculateCommutePlanUniqueId:v45 withExpiry:v41];
      [v17 setObject:v46 forKeyedSubscript:@"CommutePlanUniqueIdentifier"];
    }

    [v69 addObject:v17];

    contractsCopy = v70;
    sfiCopy = v67;
    countCopy = v68;
    self = selfCopy;
    v15 = v73;
    goto LABEL_42;
  }

  v22 = [v21 valueForKey:@"ContractCounterStructure"];
  if (!v22)
  {
    v25 = ATLLogObject(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = v13 + 1;
      v27 = v25;
      v28 = "No counterStructure provided for contract %d";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v23 = v22;
  integerValue = [v22 integerValue];
  v75 = 0;
  v25 = [(AtlasDecoder *)self readAndDecodeCounter:contractsCopy sfi:(v13 + 10) recNum:1 counterStructure:integerValue error:&v75];
  v26 = v75;
  if (!v26)
  {
    [v17 setObject:v25 forKeyedSubscript:@"ContractCounters"];
    goto LABEL_18;
  }

  v59 = v26;
  if (error)
  {
    v60 = v26;
    *error = v59;
  }

LABEL_58:
  v47 = 0;
LABEL_59:

  return v47;
}

- (void)stripContract:(id)contract
{
  contractCopy = contract;
  [contractCopy removeObjectForKey:@"ContractBitmap"];
  [contractCopy removeObjectForKey:@"ContractTariff"];
  [contractCopy removeObjectForKey:@"ContractPointerNumber"];
  [contractCopy removeObjectForKey:@"ContractValidityStartDate"];
  [contractCopy removeObjectForKey:@"ContractValidityEndDate"];
  [contractCopy removeObjectForKey:@"ContractValidityStartTime"];
  [contractCopy removeObjectForKey:@"ContractValidityEndTime"];
  [contractCopy removeObjectForKey:@"ContractValidityInfoBitmap"];
}

- (id)readAndDecodeHistory:(id)history sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  sfiCopy = sfi;
  v53[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy];
  v10 = 0;
  if (!countCopy)
  {
LABEL_14:
    v27 = v43;
    v28 = v43;
    goto LABEL_26;
  }

  v11 = 0;
  v12 = 0x2818E8000uLL;
  v44 = countCopy;
  while (1)
  {
    v13 = v10;
    ++v11;
    v45 = v10;
    v14 = [(AtlasDecoder *)self readRecord:historyCopy sfi:sfiCopy index:v11 recLength:0 error:&v45];
    v10 = v45;

    if (!v10)
    {
      break;
    }

    if ([v10 code] != 9)
    {
      v27 = v43;
      if (error)
      {
        v29 = v10;
        *error = v10;
      }

      goto LABEL_25;
    }

LABEL_13:

    if (countCopy <= v11)
    {
      goto LABEL_14;
    }
  }

  v15 = [v14 length];
  if (v15 == 29)
  {
    selfCopy = self;
    v17 = sfiCopy;
    v18 = historyCopy;
    v19 = [v12 + 2992 decodeEventEntry:v14];
    v20 = [v19 objectForKeyedSubscript:@"EventContractPointer"];
    v21 = v12;
    unsignedIntValue = [v20 unsignedIntValue];

    if ((unsignedIntValue - 5) > 0xFFFFFFFB)
    {
      v25 = [v19 objectForKeyedSubscript:@"EventCode"];
      v26 = [v21 + 2992 getInternalEnRouteStatus:v25];
      [v19 setObject:v26 forKeyedSubscript:@"InternalEnRouteStatus"];

      [v43 addObject:v19];
    }

    else
    {
      v24 = ATLLogObject(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v47 = unsignedIntValue;
        v48 = 2112;
        v49 = v19;
        _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "ContractPointer %d out of expected range [1,4] in %@. Skipping.", buf, 0x12u);
      }
    }

    historyCopy = v18;

    v12 = 0x2818E8000;
    sfiCopy = v17;
    self = selfCopy;
    countCopy = v44;
    goto LABEL_13;
  }

  v30 = ATLLogObject(v15);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data", buf, 2u);
  }

  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data"];
  v32 = v31;
  v27 = v43;
  if (error)
  {
    v33 = *error;
    v34 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v35 = *MEMORY[0x277CCA7E8];
      v50[0] = *MEMORY[0x277CCA450];
      v50[1] = v35;
      v51[0] = v31;
      v51[1] = v33;
      v36 = MEMORY[0x277CBEAC0];
      v37 = v51;
      v38 = v50;
      v39 = 2;
    }

    else
    {
      v52 = *MEMORY[0x277CCA450];
      v53[0] = v31;
      v36 = MEMORY[0x277CBEAC0];
      v37 = v53;
      v38 = &v52;
      v39 = 1;
    }

    v40 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:v39];
    *error = [v34 errorWithDomain:@"ATL" code:8 userInfo:v40];
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (id)parseHistory:(id)history withContractList:(id)list
{
  v74[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  listCopy = list;
  v70 = historyCopy;
  v6 = [historyCopy count];
  v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v71 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = 0x2818E8000uLL;
    do
    {
      v72 = v7;
      v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{8, v68}];
      v10 = [v70 objectAtIndexedSubscript:v7];
      v11 = [v10 objectForKeyedSubscript:@"EventDateStamp"];
      v12 = [v10 objectForKeyedSubscript:@"EventTimeStamp"];
      v13 = [v10 objectForKeyedSubscript:@"EventCode"];
      v14 = [v10 objectForKeyedSubscript:@"EventServiceProvider"];
      v15 = [v10 objectForKeyedSubscript:@"EventContractPointer"];
      v16 = [v10 objectForKeyedSubscript:@"EventSerialNumber"];
      v17 = [v8 + 2992 calculateTransactionSN:v11 withTimeStamp:v12 withEventCode:v13 withSP:v14 withContractPointer:v15 withDifferentiator:v16];
      [v9 setObject:v17 forKeyedSubscript:@"SerialNumber"];

      v18 = [v10 objectForKeyedSubscript:@"EventCode"];
      v19 = [v8 + 2992 getInternalEnRouteStatus:v18];
      [v9 setObject:v19 forKeyedSubscript:@"InternalEnRouteStatus"];

      v20 = [v10 objectForKeyedSubscript:@"EventCode"];
      v21 = [v8 + 2992 getTransitModality:v20];
      [v9 setObject:v21 forKeyedSubscript:@"TypeDetail"];

      v22 = [v10 objectForKeyedSubscript:@"EventCode"];
      v23 = [v8 + 2992 formatTransitDetailRaw:v22];
      [v9 setObject:v23 forKeyedSubscript:@"TypeDetailRaw"];

      v24 = [v10 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v25 = v72 + 1;

      v26 = 1;
      if (v24 == @"CVPEnter" && v25 < v71)
      {
        v27 = [v70 objectAtIndexedSubscript:v25];
        v28 = [v27 objectForKeyedSubscript:@"EventCode"];
        unsignedLongValue = [v28 unsignedLongValue];

        v30 = unsignedLongValue >> 4;
        v26 = 1;
        if (v30 != 1 && v30 != 4)
        {
          v31 = [MEMORY[0x277CBEA90] dataWithBytes:&AtlasCardReadBytes length:3];
          [v9 setObject:v31 forKeyedSubscript:@"TypeDetailRaw"];

          v26 = 0;
        }
      }

      v32 = [v9 objectForKeyedSubscript:@"TypeDetailRaw"];
      v33 = [v32 isEqualToBytes:&AtlasCardReadBytes length:3];

      if (v33)
      {
        [v9 setObject:@"CardRead" forKeyedSubscript:@"TypeDetail"];
        v26 = 0;
      }

      [v9 setObject:&unk_2843C6680 forKeyedSubscript:@"CityCode"];
      v34 = [v10 objectForKeyedSubscript:@"EventLocationId"];

      if (!v34)
      {
        goto LABEL_22;
      }

      v35 = [v10 objectForKeyedSubscript:@"EventLocationId"];
      integerValue = [v35 integerValue];

      v37 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      if (v37 == @"Enter")
      {
        v39 = 1;
      }

      else
      {
        v38 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
        v39 = v38 == @"CVPEnter";
      }

      if (v39 && integerValue)
      {
        v40 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
        [v9 setObject:v40 forKeyedSubscript:@"StartStation"];
      }

      v41 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v42 = v41;
      if (v41 == @"Exit")
      {

        if (!integerValue)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v43 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];

        if (v43 != @"CVPExit" || !integerValue)
        {
          goto LABEL_22;
        }
      }

      v44 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
      [v9 setObject:v44 forKeyedSubscript:@"EndStation"];

LABEL_22:
      v45 = [v10 objectForKeyedSubscript:@"EventDateStamp"];
      v46 = [v10 objectForKeyedSubscript:@"EventTimeStamp"];
      v47 = [AtlasDecoder getAbsoluteDateComponents:v45 withTime:v46];
      [v9 setObject:v47 forKeyedSubscript:@"TransactionTime"];

      v48 = [v10 objectForKeyedSubscript:@"EventDataDateFirstStamp"];

      if (v48)
      {
        v49 = [v10 objectForKeyedSubscript:@"EventDataDateFirstStamp"];
        v50 = [v10 objectForKeyedSubscript:@"EventDataTimeFirstStamp"];
        v51 = [AtlasDecoder getAbsoluteDateComponents:v49 withTime:v50];
        [v9 setObject:v51 forKeyedSubscript:@"FirstStampTime"];
      }

      v52 = [v10 objectForKeyedSubscript:@"EventContractPointer"];
      v53 = [v52 unsignedIntValue] - 1;

      v54 = [listCopy objectAtIndex:v53];
      v55 = [v54 objectForKeyedSubscript:@"ContractValidityJourneysData"];
      v56 = [v55 objectForKeyedSubscript:@"ContractCounterStructure"];
      unsignedIntValue = [v56 unsignedIntValue];

      if (unsignedIntValue == 12)
      {
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
        v59 = [v54 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v60 = [AtlasDecoder amountDictionaryWithAmount:v58 withIdentifier:v59 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent" usingIdentifierKey:@"AmountIdentifier"];

        v74[0] = v60;
        v61 = v74;
        v62 = @"Amounts";
      }

      else
      {
        v63 = [v54 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v64 = [v54 objectForKeyedSubscript:@"CommutePlanValidityEndDate"];
        v65 = [v54 objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
        v60 = [AtlasDecoder commutePlanWithIdAndExpiry:v63 withExpiry:v64 withUniqueId:v65];

        v73 = v60;
        v61 = &v73;
        v62 = @"CommutePlans";
      }

      v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
      [v9 setObject:v66 forKeyedSubscript:v62];

      [v68 addObject:v9];
      v7 = v72 + 1;
      v8 = 0x2818E8000;
    }

    while (v71 != v72 + 1);
  }

  return v68;
}

- (id)readAndDecodeBestContractList:(id)list sfi:(unsigned __int8)sfi error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v6 = [(AtlasDecoder *)self readRecord:list sfi:sfi index:1 recLength:0 error:&v25];
  v7 = v25;
  v8 = v7;
  if (v7 && [v7 code] != 9)
  {
    if (error)
    {
      v21 = v8;
      v10 = 0;
      *error = v8;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = [v6 length];
    if (v9 == 29)
    {
      if (v6)
      {
        v10 = [AtlasDecoder decodeBestContractList:v6];
        goto LABEL_17;
      }
    }

    else
    {
      v11 = ATLLogObject(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data", v24, 2u);
      }

      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data"];
      v13 = v12;
      if (error)
      {
        v14 = *error;
        v15 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v16 = *MEMORY[0x277CCA7E8];
          v26[0] = *MEMORY[0x277CCA450];
          v26[1] = v16;
          v27[0] = v12;
          v27[1] = v14;
          v17 = MEMORY[0x277CBEAC0];
          v18 = v27;
          v19 = v26;
          v20 = 2;
        }

        else
        {
          v28 = *MEMORY[0x277CCA450];
          v29[0] = v12;
          v17 = MEMORY[0x277CBEAC0];
          v18 = v29;
          v19 = &v28;
          v20 = 1;
        }

        v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
        *error = [v15 errorWithDomain:@"ATL" code:8 userInfo:v22];
      }
    }
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (id)readAndDecodeCounter:(id)counter sfi:(unsigned __int8)sfi recNum:(unsigned __int8)num counterStructure:(unsigned __int8)structure error:(id *)error
{
  structureCopy = structure;
  numCopy = num;
  sfiCopy = sfi;
  v44 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v11 = [(AtlasDecoder *)self readRecord:counter sfi:sfi index:num recLength:0 error:&v35];
  v12 = v35;
  v13 = v12;
  if (v12)
  {
    if ([v12 code] == 9)
    {
      v14 = ATLLogObject(9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v41 = sfiCopy;
        v42 = 1024;
        v43 = numCopy;
        _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "Counter Structure Record not found: SFI 0x%02X Record 0x%02X", buf, 0xEu);
      }

      v15 = 0;
      v16 = MEMORY[0x277CBEC10];
      goto LABEL_28;
    }

    if (error)
    {
      v21 = v13;
      v15 = 0;
      v16 = 0;
      *error = v13;
      goto LABEL_28;
    }

LABEL_22:
    v15 = 0;
    v16 = 0;
    goto LABEL_28;
  }

  v17 = [v11 length];
  if (v17 != 29)
  {
    v22 = ATLLogObject(v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data (unexpected length)", buf, 2u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data (unexpected length)"];
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
      *error = [v26 errorWithDomain:@"ATL" code:8 userInfo:v32];
    }

    goto LABEL_22;
  }

  if (v11)
  {
    v18 = [v11 subdataWithOffset:0 length:{objc_msgSend(v11, "length")}];

    if (structureCopy == 12)
    {
      v20 = [AtlasDecoder decodeCounterStructure0C:v18];
    }

    else if (structureCopy == 3)
    {
      v20 = [AtlasDecoder decodeCounterStructure03:v18];
    }

    else
    {
      v33 = ATLLogObject(v19);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v41 = structureCopy;
        _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEFAULT, "Unexpected counter structure %u", buf, 8u);
      }

      v20 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v15 = v20;
  v11 = v18;
  v16 = v15;
LABEL_28:

  return v16;
}

- (id)readAndDecodeEnvironment:(id)environment sfi:(unsigned __int8)sfi error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v6 = [(AtlasDecoder *)self readRecord:environment sfi:sfi index:1 recLength:0 error:&v25];
  v7 = v25;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
      goto LABEL_15;
    }
  }

  else
  {
    v11 = [v6 length];
    if (v11 == 29)
    {
      v10 = [AtlasDecoder decodeEnvironmentData:v6];
      goto LABEL_15;
    }

    v12 = ATLLogObject(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data (unexpected length)", v24, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data (unexpected length)"];
    v14 = v13;
    if (error)
    {
      v15 = *error;
      v16 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v17 = *MEMORY[0x277CCA7E8];
        v26[0] = *MEMORY[0x277CCA450];
        v26[1] = v17;
        v27[0] = v13;
        v27[1] = v15;
        v18 = MEMORY[0x277CBEAC0];
        v19 = v27;
        v20 = v26;
        v21 = 2;
      }

      else
      {
        v28 = *MEMORY[0x277CCA450];
        v29[0] = v13;
        v18 = MEMORY[0x277CBEAC0];
        v19 = v29;
        v20 = &v28;
        v21 = 1;
      }

      v22 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
      *error = [v16 errorWithDomain:@"ATL" code:8 userInfo:v22];
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index recLength:(unsigned __int8)length error:(id *)error
{
  sfiCopy = sfi;
  v54[1] = *MEMORY[0x277D85DE8];
  if (sfi < 0x1Fu)
  {
    indexCopy = index;
    v39 = -19968;
    indexCopy2 = index;
    v41 = (8 * sfi) | 4;
    lengthCopy = length;
    v38 = 0;
    v20 = [record transceiveBytesAndCheckSW:&v39 length:5 inArray:&unk_2843C7340 keepingSW:1 error:&v38];
    v21 = v38;
    v11 = v21;
    if (v21)
    {
      if (error)
      {
        v22 = v21;
        v23 = 0;
        *error = v11;
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v24 = [v20 u16BE:{objc_msgSend(v20, "length") - 2}];
      if (v24 != 27267)
      {
        v23 = [v20 subdataWithOffset:0 length:{objc_msgSend(v20, "length") - 2}];
        goto LABEL_24;
      }

      v25 = ATLLogObject(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v48 = sfiCopy;
        v49 = 1024;
        v50 = indexCopy;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Warning: SFI 0x%02X Record 0x%02X not found", buf, 0xEu);
      }

      indexCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Warning: SFI 0x%02X Record 0x%02X not found", sfiCopy, indexCopy];
      v27 = indexCopy;
      if (error)
      {
        v28 = *error;
        v29 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v30 = *MEMORY[0x277CCA7E8];
          v43[0] = *MEMORY[0x277CCA450];
          v43[1] = v30;
          v44[0] = indexCopy;
          v44[1] = v28;
          v31 = MEMORY[0x277CBEAC0];
          v32 = v44;
          v33 = v43;
          v34 = 2;
        }

        else
        {
          v45 = *MEMORY[0x277CCA450];
          v46 = indexCopy;
          v31 = MEMORY[0x277CBEAC0];
          v32 = &v46;
          v33 = &v45;
          v34 = 1;
        }

        v36 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
        *error = [v29 errorWithDomain:@"ATL" code:9 userInfo:v36];
      }
    }

    v23 = 0;
    goto LABEL_24;
  }

  v9 = ATLLogObject(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v48 = sfiCopy;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Invalid SFI for read record 0x%X", buf, 8u);
  }

  sfiCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid SFI for read record 0x%X", sfiCopy];
  v11 = sfiCopy;
  if (error)
  {
    v12 = *error;
    v13 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v51[0] = *MEMORY[0x277CCA450];
      v51[1] = v14;
      v52[0] = sfiCopy;
      v52[1] = v12;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v52;
      v17 = v51;
      v18 = 2;
    }

    else
    {
      v53 = *MEMORY[0x277CCA450];
      v54[0] = sfiCopy;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v54;
      v17 = &v53;
      v18 = 1;
    }

    v35 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    *error = [v13 errorWithDomain:@"ATL" code:6 userInfo:v35];
  }

  v23 = 0;
LABEL_25:

  return v23;
}

- (id)readPartnerRecords:(id)records sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  sfiCopy = sfi;
  v26[1] = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy];
  if (countCopy)
  {
    errorCopy = error;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12;
      ++v13;
      v22 = v12;
      sfiCopy = [(AtlasDecoder *)self readRecord:recordsCopy sfi:sfiCopy index:v13 recLength:0 error:&v22];
      v12 = v22;

      if (v12)
      {
        if ([v12 code] != 9)
        {
          break;
        }
      }

      if (sfiCopy)
      {
        v25 = @"record";
        v16 = [sfiCopy base64EncodedStringWithOptions:0];
        v26[0] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

        [v11 addObject:v17];
      }

      if (countCopy <= v13)
      {
        goto LABEL_10;
      }
    }

    if (errorCopy)
    {
      v20 = v12;
      v18 = 0;
      *errorCopy = v12;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v12 = 0;
LABEL_10:
    sfiCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", sfiCopy];
    v23[0] = @"sfi";
    v23[1] = @"recordData";
    v24[0] = sfiCopy;
    v24[1] = v11;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  return v18;
}

- (id)getCardIdFromSelectResponse:(id)response
{
  responseCopy = response;
  v13[0] = [responseCopy bytes];
  v4 = [responseCopy length];

  v13[1] = v4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = DERFindItem(v13, 0xC000000000000007, &v10);
  v7 = v6;
  v8 = 0;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:{v12, v5}];
  }

  return v8;
}

+ (id)decodeEnvironmentBitMap:(id)map
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"EnvNetworkId";
  v3 = MEMORY[0x277CCABB0];
  mapCopy = map;
  v5 = [v3 numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 0)}];
  v15[0] = v5;
  v14[1] = @"EnvApplicationIssuerId";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 1)}];
  v15[1] = v6;
  v14[2] = @"EnvApplicationEndDate";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 2)}];
  v15[2] = v7;
  v14[3] = @"EnvAuthenticator";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 4)}];
  v15[3] = v8;
  v14[4] = @"EnvDataBitmap";
  v9 = MEMORY[0x277CCABB0];
  v10 = [mapCopy isBitSet:6];

  v11 = [v9 numberWithBool:v10];
  v15[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  return v12;
}

+ (id)decodeEnvironmentDataBitMap:(id)map
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"EnvDataCardStatus";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(map, "isBitSet:", 0)}];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

+ (id)decodeEnvironmentData:(id)data
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [dataCopy length];
  if (v6 > 0x1C)
  {
    v9 = [dataCopy readBinaryValueAtBit:0 numberOfBits:6];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    [dictionary setValue:v10 forKey:@"EnvVersionNumber"];

    v11 = [dataCopy readBinaryValueAtBit:6 numberOfBits:7];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    v13 = [self decodeEnvironmentBitMap:v12];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [dictionary setValue:v14 forKey:@"EnvBitmap"];

    v15 = [v13 objectForKeyedSubscript:@"EnvNetworkId"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      v17 = [dataCopy readBinaryValueAtBit:13 numberOfBits:24];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
      [dictionary setValue:v18 forKey:@"EnvNetworkId"];

      v19 = 37;
    }

    else
    {
      v19 = 13;
    }

    v20 = [v13 objectForKeyedSubscript:@"EnvApplicationIssuerId"];
    bOOLValue2 = [v20 BOOLValue];

    if (bOOLValue2)
    {
      v22 = [dataCopy readBinaryValueAtBit:v19 numberOfBits:8];
      v19 += 8;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
      [dictionary setValue:v23 forKey:@"EnvApplicationIssuerId"];
    }

    v24 = [v13 objectForKeyedSubscript:@"EnvApplicationEndDate"];
    bOOLValue3 = [v24 BOOLValue];

    if (bOOLValue3)
    {
      v26 = [dataCopy readBinaryValueAtBit:v19 numberOfBits:14];
      v19 += 14;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
      [dictionary setValue:v27 forKey:@"EnvApplicationEndDate"];
    }

    v28 = [v13 objectForKeyedSubscript:@"EnvAuthenticator"];
    bOOLValue4 = [v28 BOOLValue];

    if (bOOLValue4)
    {
      v30 = [dataCopy readBinaryValueAtBit:v19 numberOfBits:16];
      v19 += 16;
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
      [dictionary setValue:v31 forKey:@"EnvAuthenticator"];
    }

    v32 = [v13 objectForKeyedSubscript:@"EnvDataBitmap"];
    bOOLValue5 = [v32 BOOLValue];

    if (bOOLValue5)
    {
      v34 = [dataCopy readBinaryValueAtBit:v19 numberOfBits:2];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v34];
      [dictionary setValue:v35 forKey:@"EnvDataBitmap"];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      v37 = [self decodeEnvironmentDataBitMap:v36];

      v38 = [v37 objectForKeyedSubscript:@"EnvDataCardStatus"];
      LODWORD(v35) = [v38 BOOLValue];

      if (v35)
      {
        v39 = [dataCopy readBinaryValueAtBit:v19 + 2 numberOfBits:1];
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v39];
        [dictionary setValue:v40 forKey:@"EnvDataCardStatus"];
      }
    }

    v8 = dictionary;
  }

  else
  {
    v7 = ATLLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v42[0] = 67109120;
      v42[1] = [dataCopy length];
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Invalid data length %u", v42, 8u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)decodeBestContractList:(id)list
{
  v33 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = [listCopy length];
  if (v4 == 29)
  {
    v5 = [listCopy readBinaryValueAtBit:0 numberOfBits:4];
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
    v6 = 0x277CBE000uLL;
    if (v5)
    {
      v7 = 0;
      v8 = 4;
      v25 = v5;
      do
      {
        v9 = [listCopy readBinaryValueAtBit:v8 numberOfBits:{3, v25}];
        v10 = [listCopy readBinaryValueAtBit:v8 + 3 numberOfBits:4];
        v11 = [listCopy readBinaryValueAtBit:v8 + 7 numberOfBits:8];
        v12 = [listCopy readBinaryValueAtBit:v8 + 15 numberOfBits:4];
        v13 = [listCopy readBinaryValueAtBit:v8 + 19 numberOfBits:5];
        v29[0] = @"BestContractBitmap";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
        v30[0] = v14;
        v29[1] = @"BestContractIssuer";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        v30[1] = v15;
        v29[2] = @"BestContractType";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
        v30[2] = v16;
        v29[3] = @"BestContractPriority";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
        v30[3] = v17;
        v29[4] = @"BestContractPointer";
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
        v30[4] = v18;
        [*(v6 + 2752) dictionaryWithObjects:v30 forKeys:v29 count:5];
        v20 = v19 = v6;
        [v26 addObject:v20];

        v6 = v19;
        v5 = v25;
        ++v7;
        v8 += 24;
      }

      while (v25 > v7);
    }

    v27[0] = @"BestContract";
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
    v27[1] = @"BestContractList";
    v28[0] = v21;
    v22 = v26;
    v28[1] = v26;
    v23 = [*(v6 + 2752) dictionaryWithObjects:v28 forKeys:v27 count:2];
  }

  else
  {
    v22 = ATLLogObject(v4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = [listCopy length];
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Invalid data length %u", buf, 8u);
    }

    v23 = 0;
  }

  return v23;
}

+ (id)decodeCounterStructure03:(id)structure03
{
  v3 = MEMORY[0x277CBEB38];
  structure03Copy = structure03;
  dictionary = [v3 dictionary];
  v6 = [structure03Copy readBinaryValueAtBit:0 numberOfBits:10];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  [dictionary setValue:v7 forKey:@"CounterContractCount"];

  v8 = [structure03Copy readBinaryValueAtBit:10 numberOfBits:14];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [dictionary setValue:v9 forKey:@"CounterCounterValidityEndDate"];

  return dictionary;
}

+ (id)decodeCounterStructure0C:(id)c
{
  v3 = MEMORY[0x277CBEB38];
  cCopy = c;
  dictionary = [v3 dictionary];
  v6 = [cCopy readBinaryValueAtBit:0 numberOfBits:6];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  [dictionary setValue:v7 forKey:@"CounterContractCount"];

  v8 = [cCopy readBinaryValueAtBit:6 numberOfBits:18];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [dictionary setValue:v9 forKey:@"CounterCounterRelativeFirstStamp15Mn"];

  return dictionary;
}

+ (id)decodeContractStructureFF:(id)f
{
  fCopy = f;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = 20;
  v7 = [fCopy readBinaryValueAtBit:0 numberOfBits:20];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v9 = [self decodeContractFFBitMap:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  [dictionary setValue:v10 forKey:@"ContractBitmap"];

  v11 = [v9 objectForKeyedSubscript:@"ContractNetworkId"];
  LODWORD(v8) = [v11 BOOLValue];

  if (v8)
  {
    v12 = [fCopy readBinaryValueAtBit:20 numberOfBits:24];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
    [dictionary setValue:v13 forKey:@"ContractNetworkId"];

    v6 = 44;
  }

  v14 = [v9 objectForKeyedSubscript:@"ContractProvider"];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v16 = [fCopy readBinaryValueAtBit:v6 numberOfBits:8];
    v6 += 8;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
    [dictionary setValue:v17 forKey:@"ContractProvider"];
  }

  v18 = [v9 objectForKeyedSubscript:@"ContractTariff"];
  bOOLValue2 = [v18 BOOLValue];

  if (bOOLValue2)
  {
    v20 = [fCopy readBinaryValueAtBit:v6 numberOfBits:16];
    v6 += 16;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
    [dictionary setValue:v21 forKey:@"ContractTariff"];
  }

  v22 = [v9 objectForKeyedSubscript:@"ContractSerialNumber"];
  bOOLValue3 = [v22 BOOLValue];

  if (bOOLValue3)
  {
    v24 = [fCopy readBinaryValueAtBit:v6 numberOfBits:32];
    v6 += 32;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
    [dictionary setValue:v25 forKey:@"ContractSerialNumber"];
  }

  v26 = [v9 objectForKeyedSubscript:@"ContractCustomerInfoBitmap"];
  bOOLValue4 = [v26 BOOLValue];

  if (bOOLValue4)
  {
    v28 = [fCopy readBinaryValueAtBit:v6 numberOfBits:2];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
    v30 = [v29 isBitSet:0];
    v31 = 8;
    if (!v30)
    {
      v31 = 2;
    }

    v6 += v31;
    if ([v29 isBitSet:1])
    {
      v6 += 32;
    }
  }

  v32 = [v9 objectForKeyedSubscript:@"ContractPassengerInfoBitmap"];
  bOOLValue5 = [v32 BOOLValue];

  if (bOOLValue5)
  {
    v34 = [fCopy readBinaryValueAtBit:v6 numberOfBits:2];
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v34];
    v36 = [v35 isBitSet:0];
    v37 = 10;
    if (!v36)
    {
      v37 = 2;
    }

    v6 += v37;
    if ([v35 isBitSet:1])
    {
      v6 += 8;
    }
  }

  v38 = [v9 objectForKeyedSubscript:@"ContractPayMethod"];
  bOOLValue6 = [v38 BOOLValue];

  if (bOOLValue6)
  {
    v40 = v6 + 11;
  }

  else
  {
    v40 = v6;
  }

  v41 = [v9 objectForKeyedSubscript:@"ContractServices"];
  bOOLValue7 = [v41 BOOLValue];

  if (bOOLValue7)
  {
    v40 += 16;
  }

  v43 = [v9 objectForKeyedSubscript:@"ContractPriceAmount"];
  bOOLValue8 = [v43 BOOLValue];

  if (bOOLValue8)
  {
    v40 += 16;
  }

  v45 = [v9 objectForKeyedSubscript:@"ContractPriceUnit"];
  bOOLValue9 = [v45 BOOLValue];

  if (bOOLValue9)
  {
    v40 += 16;
  }

  v47 = [v9 objectForKeyedSubscript:@"ContractRestrictionBitmap"];
  bOOLValue10 = [v47 BOOLValue];

  if (bOOLValue10)
  {
    v49 = [fCopy readBinaryValueAtBit:v40 numberOfBits:7];
    v50 = v40 + 7;
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v49];
    v52 = [self decodeContractRestrictionBitmap:v51];

    v53 = [v52 objectForKeyedSubscript:@"ContractRestrictStart"];
    bOOLValue11 = [v53 BOOLValue];

    if (bOOLValue11)
    {
      v55 = [fCopy readBinaryValueAtBit:v40 + 7 numberOfBits:11];
      v50 = v40 + 18;
      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
      [dictionary setValue:v56 forKey:@"ContractRestrictStart"];
    }

    v57 = [v52 objectForKeyedSubscript:@"ContractRestrictEnd"];
    bOOLValue12 = [v57 BOOLValue];

    if (bOOLValue12)
    {
      v59 = [fCopy readBinaryValueAtBit:v50 numberOfBits:11];
      v50 += 11;
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v59];
      [dictionary setValue:v60 forKey:@"ContractRestrictEnd"];
    }

    v61 = [v52 objectForKeyedSubscript:@"ContractRestrictDay"];
    bOOLValue13 = [v61 BOOLValue];

    if (bOOLValue13)
    {
      v63 = [fCopy readBinaryValueAtBit:v50 numberOfBits:8];
      v50 += 8;
      v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
      [dictionary setValue:v64 forKey:@"ContractRestrictDay"];
    }

    v65 = [v52 objectForKeyedSubscript:@"ContractRestrictTimeCode"];
    bOOLValue14 = [v65 BOOLValue];

    if (bOOLValue14)
    {
      v67 = [fCopy readBinaryValueAtBit:v50 numberOfBits:8];
      v50 += 8;
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v67];
      [dictionary setValue:v68 forKey:@"ContractRestrictTimeCode"];
    }

    v69 = [v52 objectForKeyedSubscript:@"ContractRestrictCode"];
    bOOLValue15 = [v69 BOOLValue];

    if (bOOLValue15)
    {
      v71 = [fCopy readBinaryValueAtBit:v50 numberOfBits:8];
      v50 += 8;
      v72 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v71];
      [dictionary setValue:v72 forKey:@"ContractRestrictCode"];
    }

    v73 = [v52 objectForKeyedSubscript:@"ContractRestrictProduct"];
    bOOLValue16 = [v73 BOOLValue];

    if (bOOLValue16)
    {
      v75 = [fCopy readBinaryValueAtBit:v50 numberOfBits:16];
      v50 += 16;
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v75];
      [dictionary setValue:v76 forKey:@"ContractRestrictProduct"];
    }

    v77 = [v52 objectForKeyedSubscript:@"ContractRestrictLocation"];
    bOOLValue17 = [v77 BOOLValue];

    if (bOOLValue17)
    {
      v79 = [fCopy readBinaryValueAtBit:v50 numberOfBits:16];
      v50 += 16;
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79];
      [dictionary setValue:v80 forKey:@"ContractRestrictLocation"];
    }

    v40 = v50;
  }

  v81 = [v9 objectForKeyedSubscript:@"ContractValidityInfoBitmap"];
  bOOLValue18 = [v81 BOOLValue];

  if (bOOLValue18)
  {
    v83 = [fCopy readBinaryValueAtBit:v40 numberOfBits:9];
    v84 = v40 + 9;
    v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v83];
    [dictionary setValue:v85 forKey:@"ContractValidityInfoBitmap"];

    v86 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v83];
    v87 = [self decodeContractValidityBitmap:v86];

    v88 = [v87 objectForKeyedSubscript:@"ContractValidityStartDate"];
    bOOLValue19 = [v88 BOOLValue];

    if (bOOLValue19)
    {
      v90 = [fCopy readBinaryValueAtBit:v40 + 9 numberOfBits:14];
      v84 = v40 + 23;
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v90];
      [dictionary setValue:v91 forKey:@"ContractValidityStartDate"];
    }

    v92 = [v87 objectForKeyedSubscript:@"ContractValidityStartTime"];
    bOOLValue20 = [v92 BOOLValue];

    if (bOOLValue20)
    {
      v94 = [fCopy readBinaryValueAtBit:v84 numberOfBits:11];
      v84 += 11;
      v95 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v94];
      [dictionary setValue:v95 forKey:@"ContractValidityStartTime"];
    }

    v96 = [v87 objectForKeyedSubscript:@"ContractValidityEndDate"];
    bOOLValue21 = [v96 BOOLValue];

    if (bOOLValue21)
    {
      v98 = [fCopy readBinaryValueAtBit:v84 numberOfBits:14];
      v84 += 14;
      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v98];
      [dictionary setValue:v99 forKey:@"ContractValidityEndDate"];
    }

    v100 = [v87 objectForKeyedSubscript:@"ContractValidityEndTime"];
    bOOLValue22 = [v100 BOOLValue];

    if (bOOLValue22)
    {
      v102 = [fCopy readBinaryValueAtBit:v84 numberOfBits:11];
      v84 += 11;
      v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v102];
      [dictionary setValue:v103 forKey:@"ContractValidityEndTime"];
    }

    v104 = [v87 objectForKeyedSubscript:@"ContractValidityDuration"];
    bOOLValue23 = [v104 BOOLValue];

    if (bOOLValue23)
    {
      v106 = [fCopy readBinaryValueAtBit:v84 numberOfBits:8];
      v84 += 8;
      v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v106];
      [dictionary setValue:v107 forKey:@"ContractValidityDuration"];
    }

    v108 = [v87 objectForKeyedSubscript:@"ContractValidityLimitDate"];
    bOOLValue24 = [v108 BOOLValue];

    if (bOOLValue24)
    {
      v110 = [fCopy readBinaryValueAtBit:v84 numberOfBits:14];
      v84 += 14;
      v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v110];
      [dictionary setValue:v111 forKey:@"ContractValidityLimitDate"];
    }

    v112 = [v87 objectForKeyedSubscript:@"ContractValidityZones"];
    bOOLValue25 = [v112 BOOLValue];

    if (bOOLValue25)
    {
      v114 = [fCopy readBinaryValueAtBit:v84 numberOfBits:8];
      v84 += 8;
      v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v114];
      [dictionary setValue:v115 forKey:@"ContractValidityZones"];
    }

    v116 = [v87 objectForKeyedSubscript:@"ContractValidityJourneys"];
    bOOLValue26 = [v116 BOOLValue];

    if (bOOLValue26)
    {
      v118 = [fCopy readBinaryValueAtBit:v84 numberOfBits:16];
      v119 = [fCopy readBinaryValueAtBit:v84 + 1 numberOfBits:5];
      v120 = [fCopy readBinaryValueAtBit:v84 + 8 numberOfBits:8];
      v121 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v119];
      [dictionary2 setValue:v121 forKey:@"ContractCounterStructure"];

      v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v120];
      [dictionary2 setValue:v122 forKey:@"ContractCounterLastLoadCount"];

      v84 += 16;
      v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v118];
      [dictionary setValue:v123 forKey:@"ContractValidityJourneys"];

      [dictionary setObject:dictionary2 forKeyedSubscript:@"ContractValidityJourneysData"];
    }

    v124 = [v87 objectForKeyedSubscript:@"ContractPeriodJourneys"];
    bOOLValue27 = [v124 BOOLValue];

    if (bOOLValue27)
    {
      v126 = [fCopy readBinaryValueAtBit:v84 numberOfBits:16];
      v84 += 16;
      v127 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v126];
      [dictionary setValue:v127 forKey:@"ContractPeriodJourneys"];
    }

    v40 = v84;
  }

  v128 = [v9 objectForKeyedSubscript:@"ContractJourneyDataBitmap"];
  bOOLValue28 = [v128 BOOLValue];

  if (bOOLValue28)
  {
    v130 = [fCopy readBinaryValueAtBit:v40 numberOfBits:8];
    v131 = v40 + 8;
    v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v130];
    v133 = [self decodeContractJourneyDataBitmap:v132];

    v134 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v130];
    [dictionary setValue:v134 forKey:@"ContractJourneyDataBitmap"];

    v135 = [v133 objectForKeyedSubscript:@"ContractJourneyOrigin"];
    LODWORD(v132) = [v135 BOOLValue];

    if (v132)
    {
      v136 = [fCopy readBinaryValueAtBit:v40 + 8 numberOfBits:16];
      v131 = v40 + 24;
      v137 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v136];
      [dictionary setValue:v137 forKey:@"ContractJourneyOrigin"];
    }

    v138 = [v133 objectForKeyedSubscript:@"ContractJourneyDestination"];
    bOOLValue29 = [v138 BOOLValue];

    if (bOOLValue29)
    {
      v140 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v141 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v140];
      [dictionary setValue:v141 forKey:@"ContractJourneyDestination"];
    }

    v142 = [v133 objectForKeyedSubscript:@"ContractJourneyRouteNumbers"];
    bOOLValue30 = [v142 BOOLValue];

    if (bOOLValue30)
    {
      v144 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v145 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v144];
      [dictionary setValue:v145 forKey:@"ContractJourneyRouteNumbers"];
    }

    v146 = [v133 objectForKeyedSubscript:@"ContractJourneyRouteVariants"];
    bOOLValue31 = [v146 BOOLValue];

    if (bOOLValue31)
    {
      v148 = [fCopy readBinaryValueAtBit:v131 numberOfBits:8];
      v131 += 8;
      v149 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v148];
      [dictionary setValue:v149 forKey:@"ContractJourneyRouteVariants"];
    }

    v150 = [v133 objectForKeyedSubscript:@"ContractJourneyRun"];
    bOOLValue32 = [v150 BOOLValue];

    if (bOOLValue32)
    {
      v152 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v152];
      [dictionary setValue:v153 forKey:@"ContractJourneyRun"];
    }

    v154 = [v133 objectForKeyedSubscript:@"ContractJourneyVia"];
    bOOLValue33 = [v154 BOOLValue];

    if (bOOLValue33)
    {
      v156 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v157 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
      [dictionary setValue:v157 forKey:@"ContractJourneyVia"];
    }

    v158 = [v133 objectForKeyedSubscript:@"ContractJourneyVia"];
    bOOLValue34 = [v158 BOOLValue];

    if (bOOLValue34)
    {
      v160 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v161 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v160];
      [dictionary setValue:v161 forKey:@"ContractJourneyDistance"];
    }

    v162 = [v133 objectForKeyedSubscript:@"ContractJourneyInterchanges"];
    bOOLValue35 = [v162 BOOLValue];

    if (bOOLValue35)
    {
      v164 = [fCopy readBinaryValueAtBit:v131 numberOfBits:8];
      v131 += 8;
      v165 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v164];
      [dictionary setValue:v165 forKey:@"ContractJourneyInterchanges"];
    }

    v40 = v131;
  }

  v166 = [v9 objectForKeyedSubscript:@"ContractSaleDataBitmap"];
  bOOLValue36 = [v166 BOOLValue];

  if (bOOLValue36)
  {
    v168 = [fCopy readBinaryValueAtBit:v40 numberOfBits:4];
    v169 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v168];
    v170 = [self decodeContractSaleDataBitmap:v169];

    v171 = [v170 objectForKeyedSubscript:@"ContractSaleDate"];
    bOOLValue37 = [v171 BOOLValue];

    v173 = 18;
    if (!bOOLValue37)
    {
      v173 = 4;
    }

    v40 += v173;
    v174 = [v170 objectForKeyedSubscript:@"ContractSaleTime"];
    bOOLValue38 = [v174 BOOLValue];

    if (bOOLValue38)
    {
      v40 += 11;
    }

    v176 = [v170 objectForKeyedSubscript:@"ContractSaleAgent"];
    bOOLValue39 = [v176 BOOLValue];

    if (bOOLValue39)
    {
      v40 += 8;
    }

    v178 = [v170 objectForKeyedSubscript:@"ContractSaleDevice"];
    bOOLValue40 = [v178 BOOLValue];

    if (bOOLValue40)
    {
      v40 += 16;
    }
  }

  v180 = [v9 objectForKeyedSubscript:@"ContractStatus"];
  bOOLValue41 = [v180 BOOLValue];

  if (bOOLValue41)
  {
    v182 = [fCopy readBinaryValueAtBit:v40 numberOfBits:8];
    v40 += 8;
    v183 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v182];
    [dictionary setValue:v183 forKey:@"ContractStatus"];
  }

  v184 = [v9 objectForKeyedSubscript:@"ContractLoyaltyPoints"];
  bOOLValue42 = [v184 BOOLValue];

  if (bOOLValue42)
  {
    v186 = [fCopy readBinaryValueAtBit:v40 numberOfBits:16];
    v187 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v186];
    [dictionary setValue:v187 forKey:@"ContractLoyaltyPoints"];
  }

  v188 = dictionary;

  return dictionary;
}

+ (id)decodeEventBitMap:(id)map
{
  v33[23] = *MEMORY[0x277D85DE8];
  v32[0] = @"EventNetworkId";
  v3 = MEMORY[0x277CCABB0];
  mapCopy = map;
  v31 = [v3 numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 1)}];
  v33[0] = v31;
  v32[1] = @"EventCode";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 2)}];
  v33[1] = v30;
  v32[2] = @"EventResult";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 3)}];
  v33[2] = v29;
  v32[3] = @"EventServiceProvider";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 4)}];
  v33[3] = v28;
  v32[4] = @"EventNotOkCounter";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 5)}];
  v33[4] = v27;
  v32[5] = @"EventSerialNumber";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 6)}];
  v33[5] = v26;
  v32[6] = @"EventDestination";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 7)}];
  v33[6] = v25;
  v32[7] = @"EventLocationId";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 8)}];
  v33[7] = v24;
  v32[8] = @"EventLocationGate";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 9)}];
  v33[8] = v23;
  v32[9] = @"EventDevice";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 10)}];
  v33[9] = v22;
  v32[10] = @"EventRouteNumber";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 11)}];
  v33[10] = v21;
  v32[11] = @"EventRouteVariant";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 12)}];
  v33[11] = v20;
  v32[12] = @"EventJourneyRun";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 13)}];
  v33[12] = v19;
  v32[13] = @"EventVehicleId";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 14)}];
  v33[13] = v18;
  v32[14] = @"EventLocationType";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 16)}];
  v33[14] = v17;
  v32[15] = @"EventJourneyInterchanges";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 19)}];
  v33[15] = v5;
  v32[16] = @"EventTotalJourneys";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 21)}];
  v33[16] = v6;
  v32[17] = @"EventJourneyDistance";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 22)}];
  v33[17] = v7;
  v32[18] = @"EventPriceAmount";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 23)}];
  v33[18] = v8;
  v32[19] = @"EventPriceUnit";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 24)}];
  v33[19] = v9;
  v32[20] = @"EventContractPointer";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 25)}];
  v33[20] = v10;
  v32[21] = @"EventAuthenticator";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 26)}];
  v33[21] = v11;
  v32[22] = @"EventDataBitmap";
  v12 = MEMORY[0x277CCABB0];
  v13 = [mapCopy isBitSet:27];

  v14 = [v12 numberWithBool:v13];
  v33[22] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:23];

  return v15;
}

+ (id)decodeEventEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [entryCopy readBinaryValueAtBit:0 numberOfBits:14];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  [dictionary setObject:v7 forKeyedSubscript:@"EventDateStamp"];

  v8 = [entryCopy readBinaryValueAtBit:14 numberOfBits:11];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [dictionary setObject:v9 forKeyedSubscript:@"EventTimeStamp"];

  v10 = [entryCopy readBinaryValueAtBit:25 numberOfBits:28];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  v12 = [self decodeEventBitMap:v11];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  [dictionary setObject:v13 forKeyedSubscript:@"EventBitmap"];

  v14 = [v12 objectForKeyedSubscript:@"EventCode"];
  LODWORD(v11) = [v14 BOOLValue];

  if (v11)
  {
    v15 = [entryCopy readBinaryValueAtBit:53 numberOfBits:8];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    [dictionary setObject:v16 forKeyedSubscript:@"EventCode"];

    v17 = 61;
  }

  else
  {
    v17 = 53;
  }

  v18 = [v12 objectForKeyedSubscript:@"EventResult"];
  bOOLValue = [v18 BOOLValue];

  if (bOOLValue)
  {
    v20 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
    [dictionary setObject:v21 forKeyedSubscript:@"EventResult"];
  }

  v22 = [v12 objectForKeyedSubscript:@"EventServiceProvider"];
  bOOLValue2 = [v22 BOOLValue];

  if (bOOLValue2)
  {
    v24 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
    [dictionary setObject:v25 forKeyedSubscript:@"EventServiceProvider"];
  }

  v26 = [v12 objectForKeyedSubscript:@"EventNotOkCounter"];
  bOOLValue3 = [v26 BOOLValue];

  if (bOOLValue3)
  {
    v28 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
    [dictionary setObject:v29 forKeyedSubscript:@"EventNotOkCounter"];
  }

  v30 = [v12 objectForKeyedSubscript:@"EventSerialNumber"];
  bOOLValue4 = [v30 BOOLValue];

  if (bOOLValue4)
  {
    v32 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:24];
    v17 += 24;
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v32];
    [dictionary setObject:v33 forKeyedSubscript:@"EventSerialNumber"];
  }

  v34 = [v12 objectForKeyedSubscript:@"EventLocationId"];
  bOOLValue5 = [v34 BOOLValue];

  if (bOOLValue5)
  {
    v36 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
    [dictionary setObject:v37 forKeyedSubscript:@"EventLocationId"];
  }

  v38 = [v12 objectForKeyedSubscript:@"EventLocationGate"];
  bOOLValue6 = [v38 BOOLValue];

  if (bOOLValue6)
  {
    v40 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v40];
    [dictionary setObject:v41 forKeyedSubscript:@"EventLocationGate"];
  }

  v42 = [v12 objectForKeyedSubscript:@"EventDevice"];
  bOOLValue7 = [v42 BOOLValue];

  if (bOOLValue7)
  {
    v44 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v44];
    [dictionary setObject:v45 forKeyedSubscript:@"EventDevice"];
  }

  v46 = [v12 objectForKeyedSubscript:@"EventRouteNumber"];
  bOOLValue8 = [v46 BOOLValue];

  if (bOOLValue8)
  {
    v48 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
    [dictionary setObject:v49 forKeyedSubscript:@"EventRouteNumber"];
  }

  v50 = [v12 objectForKeyedSubscript:@"EventJourneyRun"];
  bOOLValue9 = [v50 BOOLValue];

  if (bOOLValue9)
  {
    v52 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v52];
    [dictionary setObject:v53 forKeyedSubscript:@"EventJourneyRun"];
  }

  v54 = [v12 objectForKeyedSubscript:@"EventVehicleId"];
  bOOLValue10 = [v54 BOOLValue];

  if (bOOLValue10)
  {
    v56 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56];
    [dictionary setObject:v57 forKeyedSubscript:@"EventVehicleId"];
  }

  v58 = [v12 objectForKeyedSubscript:@"EventContractPointer"];
  bOOLValue11 = [v58 BOOLValue];

  if (bOOLValue11)
  {
    v60 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:5];
    v17 += 5;
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v60];
    [dictionary setObject:v61 forKeyedSubscript:@"EventContractPointer"];
  }

  v62 = [v12 objectForKeyedSubscript:@"EventDataBitmap"];
  bOOLValue12 = [v62 BOOLValue];

  if (bOOLValue12)
  {
    v64 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:5];
    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v64];
    [dictionary setObject:v65 forKeyedSubscript:@"EventDataBitmap"];

    v66 = [entryCopy readBinaryValueAtBit:v17 + 5 numberOfBits:14];
    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v66];
    [dictionary setObject:v67 forKeyedSubscript:@"EventDataDateFirstStamp"];

    v68 = [entryCopy readBinaryValueAtBit:v17 + 19 numberOfBits:11];
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v68];
    [dictionary setObject:v69 forKeyedSubscript:@"EventDataTimeFirstStamp"];
  }

  return dictionary;
}

+ (id)decodeContractFFBitMap:(id)map
{
  v27[17] = *MEMORY[0x277D85DE8];
  v26[0] = @"ContractNetworkId";
  v3 = MEMORY[0x277CCABB0];
  mapCopy = map;
  v25 = [v3 numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 0)}];
  v27[0] = v25;
  v26[1] = @"ContractProvider";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 1)}];
  v27[1] = v24;
  v26[2] = @"ContractTariff";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 2)}];
  v27[2] = v23;
  v26[3] = @"ContractSerialNumber";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 3)}];
  v27[3] = v22;
  v26[4] = @"ContractCustomerInfoBitmap";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 4)}];
  v27[4] = v21;
  v26[5] = @"ContractPassengerInfoBitmap";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 5)}];
  v27[5] = v20;
  v26[6] = @"ContractPayMethod";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 8)}];
  v27[6] = v19;
  v26[7] = @"ContractServices";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 9)}];
  v27[7] = v18;
  v26[8] = @"ContractPriceAmount";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 10)}];
  v27[8] = v17;
  v26[9] = @"ContractPriceUnit";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 11)}];
  v27[9] = v5;
  v26[10] = @"ContractRestrictionBitmap";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 12)}];
  v27[10] = v6;
  v26[11] = @"ContractValidityInfoBitmap";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 13)}];
  v27[11] = v7;
  v26[12] = @"ContractJourneyDataBitmap";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 14)}];
  v27[12] = v8;
  v26[13] = @"ContractSaleDataBitmap";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 15)}];
  v27[13] = v9;
  v26[14] = @"ContractStatus";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 16)}];
  v27[14] = v10;
  v26[15] = @"ContractLoyaltyPoints";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 17)}];
  v27[15] = v11;
  v26[16] = @"ContractAuthenticator";
  v12 = MEMORY[0x277CCABB0];
  v13 = [mapCopy isBitSet:18];

  v14 = [v12 numberWithBool:v13];
  v27[16] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:17];

  return v15;
}

+ (id)decodeContractValidityBitmap:(id)bitmap
{
  v19[9] = *MEMORY[0x277D85DE8];
  v18[0] = @"ContractValidityStartDate";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v17 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v19[0] = v17;
  v18[1] = @"ContractValidityStartTime";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v19[1] = v5;
  v18[2] = @"ContractValidityEndDate";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v19[2] = v6;
  v18[3] = @"ContractValidityEndTime";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 3)}];
  v19[3] = v7;
  v18[4] = @"ContractValidityDuration";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 4)}];
  v19[4] = v8;
  v18[5] = @"ContractValidityLimitDate";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 5)}];
  v19[5] = v9;
  v18[6] = @"ContractValidityZones";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 6)}];
  v19[6] = v10;
  v18[7] = @"ContractValidityJourneys";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 7)}];
  v19[7] = v11;
  v18[8] = @"ContractPeriodJourneys";
  v12 = MEMORY[0x277CCABB0];
  v13 = [bitmapCopy isBitSet:8];

  v14 = [v12 numberWithBool:v13];
  v19[8] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:9];

  return v15;
}

+ (id)decodeContractJourneyDataBitmap:(id)bitmap
{
  v18[8] = *MEMORY[0x277D85DE8];
  v17[0] = @"ContractJourneyOrigin";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v5 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v18[0] = v5;
  v17[1] = @"ContractJourneyDestination";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v18[1] = v6;
  v17[2] = @"ContractJourneyRouteNumbers";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v18[2] = v7;
  v17[3] = @"ContractJourneyRouteVariants";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 3)}];
  v18[3] = v8;
  v17[4] = @"ContractJourneyRun";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 4)}];
  v18[4] = v9;
  v17[5] = @"ContractJourneyVia";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 5)}];
  v18[5] = v10;
  v17[6] = @"ContractJourneyDistance";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 6)}];
  v18[6] = v11;
  v17[7] = @"ContractJourneyInterchanges";
  v12 = MEMORY[0x277CCABB0];
  v13 = [bitmapCopy isBitSet:7];

  v14 = [v12 numberWithBool:v13];
  v18[7] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  return v15;
}

+ (id)decodeContractSaleDataBitmap:(id)bitmap
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"ContractSaleDate";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v5 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v14[0] = v5;
  v13[1] = @"ContractSaleTime";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v14[1] = v6;
  v13[2] = @"ContractSaleAgent";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v14[2] = v7;
  v13[3] = @"ContractSaleDevice";
  v8 = MEMORY[0x277CCABB0];
  v9 = [bitmapCopy isBitSet:3];

  v10 = [v8 numberWithBool:v9];
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

+ (id)decodeContractRestrictionBitmap:(id)bitmap
{
  v17[7] = *MEMORY[0x277D85DE8];
  v16[0] = @"ContractRestrictStart";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v5 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v17[0] = v5;
  v16[1] = @"ContractRestrictEnd";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v17[1] = v6;
  v16[2] = @"ContractRestrictDay";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v17[2] = v7;
  v16[3] = @"ContractRestrictTimeCode";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 3)}];
  v17[3] = v8;
  v16[4] = @"ContractRestrictCode";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 4)}];
  v17[4] = v9;
  v16[5] = @"ContractRestrictProduct";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 5)}];
  v17[5] = v10;
  v16[6] = @"ContractRestrictLocation";
  v11 = MEMORY[0x277CCABB0];
  v12 = [bitmapCopy isBitSet:6];

  v13 = [v11 numberWithBool:v12];
  v17[6] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];

  return v14;
}

+ (id)resolveServiceProvider:(unsigned __int8)provider
{
  providerCopy = provider;
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = &unk_2843C65F0;
  v11[0] = @"ATLAS";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:providerCopy];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    providerCopy = v6;
  }

  else
  {
    providerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", providerCopy];
  }

  v8 = providerCopy;

  return v8;
}

+ (id)getTransitModality:(id)modality
{
  unsignedLongValue = [modality unsignedLongValue];
  if (unsignedLongValue == 89)
  {
    return @"TransitOther";
  }

  v5 = unsignedLongValue >> 4;
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      return @"TransitBus";
    }

    if (v5 == 3)
    {
      return @"TransitMetro";
    }
  }

  else
  {
    switch(v5)
    {
      case 4uLL:
        return @"TransitLightRail";
      case 5uLL:
        return @"TransitTrain";
      case 0xEuLL:
        return @"TransitOther";
    }
  }

  return @"Transit";
}

+ (id)formatTransitDetailRaw:(id)raw
{
  unsignedLongValue = [raw unsignedLongValue];
  v4 = (unsignedLongValue & 0xF) - 2;
  if (v4 < 0xA && ((0x233u >> v4) & 1) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 4;
  }

  else
  {
    v8 = unsignedLongValue >> 4;
    if (v8 == 14)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    if (v8 == 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v8 == 5)
    {
      v11 = 3;
    }

    else
    {
      v11 = v9;
    }

    if (v8 == 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v10;
    }

    if (v8 == 4)
    {
      v13 = 3;
    }

    else
    {
      v13 = v11;
    }

    if (v8 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v8 == 3;
    }

    v7 = 1;
    if ((unsignedLongValue >> 4) <= 3uLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v12;
    }

    if ((unsignedLongValue >> 4) <= 3uLL)
    {
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  v15 = [MEMORY[0x277CBEB28] dataWithCapacity:3];
  [v15 appendByte:v7];
  [v15 appendByte:v6];
  [v15 appendByte:v5];

  return v15;
}

+ (id)getInternalEnRouteStatus:(id)status
{
  v3 = ([status unsignedLongValue] & 0xF) - 1;
  if (v3 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_278874CB8 + v3);
  }
}

+ (id)getAbsoluteDateComponents:(id)components withTime:(id)time
{
  timeCopy = time;
  if (components)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(components, "intValue") + 1}];
    if (timeCopy)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(timeCopy, "intValue")}];
    }

    else
    {
      v7 = &unk_2843C66C8;
    }

    v9 = [MEMORY[0x277CBEAB8] dateWithYear:1997 month:1 day:objc_msgSend(v6 hour:"intValue") minute:0 second:{objc_msgSend(v7, "intValue"), 0}];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [v9 setCalendar:currentCalendar];
    v11 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [v9 setTimeZone:v11];

    date = [v9 date];
    v8 = [currentCalendar components:3145852 fromDate:date];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getAbsoluteDateComponentsWithDefaultMinutes:(id)minutes withTime:(id)time withDefaultMinutes:(id)defaultMinutes
{
  if (!time)
  {
    time = defaultMinutes;
  }

  defaultMinutes = [AtlasDecoder getAbsoluteDateComponents:minutes withTime:time, defaultMinutes];

  return defaultMinutes;
}

+ (id)formatCommutePlanIdentifier:(id)identifier withTariffCode:(id)code withZoneList:(id)list
{
  identifierCopy = identifier;
  codeCopy = code;
  listCopy = list;
  v10 = [identifierCopy objectForKeyedSubscript:@"ContractCounterStructure"];
  if (v10)
  {
    v11 = [identifierCopy objectForKeyedSubscript:@"ContractCounterLastLoadCount"];
  }

  else
  {
    v11 = 0;
  }

  integerValue = [v10 integerValue];
  v13 = MEMORY[0x277CCACA8];
  intValue = [codeCopy intValue];
  intValue2 = [listCopy intValue];
  if (integerValue == 3)
  {
    [v13 stringWithFormat:@"%05d_%02X_%d", intValue, intValue2, objc_msgSend(v11, "intValue")];
  }

  else
  {
    [v13 stringWithFormat:@"%05d_%02X_1", intValue, intValue2, v18];
  }
  v16 = ;

  return v16;
}

+ (id)calculateTransactionSN:(id)n withTimeStamp:(id)stamp withEventCode:(id)code withSP:(id)p withContractPointer:(id)pointer withDifferentiator:(id)differentiator
{
  differentiatorCopy = &unk_2843C66E0;
  if (differentiator)
  {
    differentiatorCopy = differentiator;
  }

  v15 = differentiatorCopy;
  differentiatorCopy2 = differentiator;
  pointerCopy = pointer;
  pCopy = p;
  codeCopy = code;
  stampCopy = stamp;
  nCopy = n;
  v22 = +[HashHelper hashHelper];
  v23 = [(HashHelper *)v22 addNumber:nCopy];

  v24 = [(HashHelper *)v23 addNumber:stampCopy];

  v25 = [(HashHelper *)v24 addNumber:codeCopy];

  v26 = [(HashHelper *)v25 addNumber:pCopy];

  v27 = [(HashHelper *)v26 addNumber:pointerCopy];

  v28 = [(HashHelper *)v27 addNumber:v15];

  getHash = [(HashHelper *)v28 getHash];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(getHash, "u32BE:", 0)}];

  return v30;
}

+ (id)calculateCommutePlanUniqueId:(id)id withExpiry:(id)expiry
{
  expiryCopy = expiry;
  idCopy = id;
  v8 = +[HashHelper hashHelper];
  v9 = [(HashHelper *)v8 addString:idCopy];

  v10 = [(HashHelper *)v9 addDateComponents:expiryCopy];

  getHash = [(HashHelper *)v10 getHash];

  asHexString = [getHash asHexString];

  return asHexString;
}

+ (id)commutePlanWithIdAndExpiry:(id)expiry withExpiry:(id)withExpiry withUniqueId:(id)id
{
  v23[3] = *MEMORY[0x277D85DE8];
  if (id)
  {
    v22[0] = @"CommutePlanIdentifier";
    v22[1] = @"CommutePlanValidityEndDate";
    v23[0] = expiry;
    v23[1] = withExpiry;
    v22[2] = @"CommutePlanUniqueIdentifier";
    v23[2] = id;
    v7 = MEMORY[0x277CBEAC0];
    idCopy = id;
    withExpiryCopy = withExpiry;
    expiryCopy = expiry;
    v11 = v23;
    v12 = v22;
    v13 = v7;
    v14 = 3;
  }

  else
  {
    v20[0] = @"CommutePlanIdentifier";
    v20[1] = @"CommutePlanValidityEndDate";
    v21[0] = expiry;
    v21[1] = withExpiry;
    v15 = MEMORY[0x277CBEAC0];
    idCopy = 0;
    withExpiryCopy2 = withExpiry;
    expiryCopy2 = expiry;
    v11 = v21;
    v12 = v20;
    v13 = v15;
    v14 = 2;
  }

  v18 = [v13 dictionaryWithObjects:v11 forKeys:v12 count:v14];

  return v18;
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
  v29[2] = &unk_2843C66C8;
  v28[2] = exponentKeyCopy;
  v28[3] = identifierKeyCopy;
  v24 = [identifierCopy dataUsingEncoding:4];

  asHexString = [v24 asHexString];
  v29[3] = asHexString;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  return v26;
}

+ (id)getUnvalidatableContracts:(id)contracts
{
  v25 = *MEMORY[0x277D85DE8];
  contractsCopy = contracts;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = contractsCopy;
  v5 = [contractsCopy objectForKeyedSubscript:@"BestContractList"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = ATLLogObject(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEBUG, "contract -> %@", buf, 0xCu);
        }

        v12 = [v10 objectForKeyedSubscript:@"BestContractPriority"];
        integerValue = [v12 integerValue];

        if ((integerValue & 0xFCu) >= 0xCuLL)
        {
          v14 = [v10 objectForKeyedSubscript:@"BestContractPriority"];
          v15 = [v10 objectForKeyedSubscript:@"BestContractPointer"];
          [dictionary setObject:v14 forKeyedSubscript:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v7 = v6;
    }

    while (v6);
  }

  return dictionary;
}

@end