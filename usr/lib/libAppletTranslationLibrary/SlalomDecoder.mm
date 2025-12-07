@interface SlalomDecoder
+ (BOOL)isJREServiceProviderID:(unsigned __int8)d;
+ (id)getDataAndCheckFeliCaServiceCode:(unsigned __int16)code withBlockNumber:(unsigned __int8)number withTransceiver:(id)transceiver withError:(id *)error;
+ (id)sharedInstance;
- (SlalomDecoder)init;
- (id)DecodeStartE1TLV:(id *)v error:(id *)error;
- (id)DecodeTransactionE1TLV:(id *)v error:(id *)error;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseEndEvent:(id)event withApplet:(id)applet withTransceiver:(id)transceiver error:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (void)cleanup;
@end

@implementation SlalomDecoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SlalomDecoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance__singleton_1;

  return v2;
}

uint64_t __31__SlalomDecoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__singleton_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SlalomDecoder)init
{
  v9.receiver = self;
  v9.super_class = SlalomDecoder;
  v2 = [(SlalomDecoder *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hciArray = v2->_hciArray;
    v2->_hciArray = v3;

    v2->_eotInProgress = 0;
    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v7 = +[AppletTranslator userDefaults];
      v2->_debug = [v7 BOOLForKey:@"debug.slalom"];
    }

    else
    {
      v2->_debug = 0;
    }

    [AppletTranslator registerForCleanup:v2];
  }

  return v2;
}

- (void)cleanup
{
  [(NSMutableArray *)self->_hciArray removeAllObjects];
  self->_eotInProgress = 0;
  serviceProvider = self->_serviceProvider;
  self->_serviceProvider = 0;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v73[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  if (self->_eotInProgress)
  {
    goto LABEL_28;
  }

  v19 = [eventCopy length];
  if (v19 <= 1)
  {
    v20 = ATLLogObject(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v66 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
    v22 = v21;
    if (!error)
    {
      goto LABEL_27;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v70[0] = *MEMORY[0x277CCA450];
      v70[1] = v25;
      v71[0] = v21;
      v71[1] = v23;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v71;
      v28 = v70;
      v29 = 2;
    }

    else
    {
      v72 = *MEMORY[0x277CCA450];
      v73[0] = v21;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v73;
      v28 = &v72;
      v29 = 1;
    }

    v43 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v29];
    v44 = v24;
    v45 = 6;
LABEL_26:
    *error = [v44 errorWithDomain:@"ATL" code:v45 userInfo:v43];

LABEL_27:
LABEL_28:
    v46 = 0;
    goto LABEL_29;
  }

  v30 = *[eventCopy bytes];
  bytes = [eventCopy bytes];
  v32 = *(bytes + 1);
  if (v30 == 16 && v32 == 1)
  {
    v33 = ATLLogObject(bytes);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v66 = appletCopy;
      *&v66[8] = 2112;
      v67 = packageCopy;
      v68 = 2112;
      v69 = moduleCopy;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    moduleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@", appletCopy, packageCopy, moduleCopy];
    v22 = moduleCopy;
    if (!error)
    {
      goto LABEL_27;
    }

    v35 = *error;
    v36 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v37 = *MEMORY[0x277CCA7E8];
      v61[0] = *MEMORY[0x277CCA450];
      v61[1] = v37;
      v62[0] = moduleCopy;
      v62[1] = v35;
      v38 = MEMORY[0x277CBEAC0];
      v39 = v62;
      v40 = v61;
      v41 = 2;
    }

    else
    {
      v63 = *MEMORY[0x277CCA450];
      v64 = moduleCopy;
      v38 = MEMORY[0x277CBEAC0];
      v39 = &v64;
      v40 = &v63;
      v41 = 1;
    }

    v43 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:v41];
    v44 = v36;
    v45 = 2;
    goto LABEL_26;
  }

  if (v30 > 16)
  {
    if (v30 == 17)
    {
      v42 = [(SlalomDecoder *)self parseTransactionEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_39;
    }

    if (v30 == 18)
    {
      v42 = [(SlalomDecoder *)self parseDeselectEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_39;
    }

LABEL_32:
    v48 = ATLLogObject(bytes);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v66 = v30;
      *&v66[4] = 1024;
      *&v66[6] = v32;
      _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v30, v32];
    v22 = v49;
    if (!error)
    {
      goto LABEL_27;
    }

    v50 = *error;
    v51 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v52 = *MEMORY[0x277CCA7E8];
      v57[0] = *MEMORY[0x277CCA450];
      v57[1] = v52;
      v58[0] = v49;
      v58[1] = v50;
      v53 = MEMORY[0x277CBEAC0];
      v54 = v58;
      v55 = v57;
      v56 = 2;
    }

    else
    {
      v59 = *MEMORY[0x277CCA450];
      v60 = v49;
      v53 = MEMORY[0x277CBEAC0];
      v54 = &v60;
      v55 = &v59;
      v56 = 1;
    }

    v43 = [v53 dictionaryWithObjects:v54 forKeys:v55 count:v56];
    v44 = v51;
    v45 = 3;
    goto LABEL_26;
  }

  if (v30 == 1)
  {
    v42 = [(SlalomDecoder *)self parseStartEvent:eventCopy withApplet:appletCopy error:error];
    goto LABEL_39;
  }

  if (v30 != 2)
  {
    goto LABEL_32;
  }

  v42 = [(SlalomDecoder *)self parseEndEvent:eventCopy withApplet:appletCopy withTransceiver:transceiverCopy error:error];
LABEL_39:
  v46 = v42;
LABEL_29:

  return v46;
}

- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 == 22)
  {
    bytes = [eventCopy bytes];
    v12 = bytes;
    if (*(bytes + 1) == 7)
    {
      v58[0] = &unk_2843C6AB8;
      v58[1] = &unk_2843C6AD0;
      v59[0] = @"Contact";
      v59[1] = @"Contactless";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v12 + 2)];
      v15 = [v13 objectForKeyedSubscript:v14];

      if (v15)
      {
        *v68 = v12 + 3;
        *&v68[8] = [eventCopy length] - 3;
        v17 = [(SlalomDecoder *)self DecodeStartE1TLV:v68 error:error];
        v52[0] = @"EventType";
        v52[1] = @"appletIdentifier";
        v53[0] = @"StartEvent";
        v53[1] = appletCopy;
        v52[2] = @"Version";
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v12 + 1)];
        v53[2] = v18;
        v53[3] = v15;
        v52[3] = @"Interface";
        v52[4] = @"IgnoreRFEvents";
        v53[4] = MEMORY[0x277CBEC28];
        v53[5] = MEMORY[0x277CBEC38];
        v52[5] = @"DontWaitForEOT";
        v52[6] = @"RequiresPowerCycle";
        v53[6] = MEMORY[0x277CBEC38];
        v53[7] = MEMORY[0x277CBEC38];
        v52[7] = @"EoTCallbackExpected";
        v52[8] = @"DelayExpressReentry";
        v53[8] = &unk_2843C6AE8;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:9];

        v21 = ATLLogObject(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v51 = v19;
          _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v22 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v19];
        [(NSMutableArray *)self->_hciArray addObject:v22];
      }

      else
      {
        v37 = ATLLogObject(v16);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *(v12 + 2);
          *v68 = 67109120;
          *&v68[4] = v38;
          _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Unknown interface type %u", v68, 8u);
        }

        v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v12 + 2)];
        v40 = v39;
        if (error)
        {
          v41 = *error;
          v42 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v43 = *MEMORY[0x277CCA7E8];
            v54[0] = *MEMORY[0x277CCA450];
            v54[1] = v43;
            v55[0] = v39;
            v55[1] = v41;
            v44 = MEMORY[0x277CBEAC0];
            v45 = v55;
            v46 = v54;
            v47 = 2;
          }

          else
          {
            v56 = *MEMORY[0x277CCA450];
            v57 = v39;
            v44 = MEMORY[0x277CBEAC0];
            v45 = &v57;
            v46 = &v56;
            v47 = 1;
          }

          v49 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47];
          *error = [v42 errorWithDomain:@"ATL" code:3 userInfo:v49];
        }
      }

      goto LABEL_27;
    }

    v31 = ATLLogObject(bytes);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(v12 + 1);
      *v68 = 67109120;
      *&v68[4] = v32;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_ERROR, "Start Event version %u", v68, 8u);
    }

    v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v12 + 1)];
    v13 = v33;
    if (error)
    {
      v34 = *error;
      v26 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v35 = *MEMORY[0x277CCA7E8];
        v60[0] = *MEMORY[0x277CCA450];
        v60[1] = v35;
        v61[0] = v33;
        v61[1] = v34;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v61;
        v30 = v60;
        goto LABEL_17;
      }

      v62 = *MEMORY[0x277CCA450];
      v63 = v33;
      v28 = MEMORY[0x277CBEAC0];
      v29 = &v63;
      v30 = &v62;
      goto LABEL_25;
    }
  }

  else
  {
    v23 = ATLLogObject(v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v68 = 134218240;
      *&v68[4] = [eventCopy length];
      *&v68[12] = 2048;
      *&v68[14] = 22;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Start Event length %zu (exp %zu)", v68, 0x16u);
    }

    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event length %zu (exp %zu)", objc_msgSend(eventCopy, "length"), 22];
    v13 = v24;
    if (error)
    {
      v25 = *error;
      v26 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v27 = *MEMORY[0x277CCA7E8];
        v64[0] = *MEMORY[0x277CCA450];
        v64[1] = v27;
        v65[0] = v24;
        v65[1] = v25;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v65;
        v30 = v64;
LABEL_17:
        v36 = 2;
LABEL_26:
        v15 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v36];
        *error = [v26 errorWithDomain:@"ATL" code:3 userInfo:v15];
LABEL_27:

        goto LABEL_28;
      }

      v66 = *MEMORY[0x277CCA450];
      v67 = v24;
      v28 = MEMORY[0x277CBEAC0];
      v29 = &v67;
      v30 = &v66;
LABEL_25:
      v36 = 1;
      goto LABEL_26;
    }
  }

LABEL_28:

  return 0;
}

- (id)parseEndEvent:(id)event withApplet:(id)applet withTransceiver:(id)transceiver error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v8 = [eventCopy length];
  if (v8 != 2)
  {
    v21 = ATLLogObject(v8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v37 = [eventCopy length];
      *&v37[8] = 2048;
      v38 = 2;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "End Event length %zu (exp %zu)", buf, 0x16u);
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End Event length %zu (exp %zu)", objc_msgSend(eventCopy, "length"), 2];
    v14 = v22;
    if (!error)
    {
      goto LABEL_18;
    }

    v23 = *error;
    v16 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v24 = *MEMORY[0x277CCA7E8];
      v32[0] = *MEMORY[0x277CCA450];
      v32[1] = v24;
      v33[0] = v22;
      v33[1] = v23;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v33;
      v20 = v32;
      goto LABEL_13;
    }

    v34 = *MEMORY[0x277CCA450];
    v35 = v22;
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v35;
    v20 = &v34;
LABEL_16:
    v25 = 1;
    goto LABEL_17;
  }

  bytes = [eventCopy bytes];
  if (*(bytes + 1) != 7)
  {
    v10 = bytes;
    v11 = ATLLogObject(bytes);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v10 + 1);
      *buf = 67109376;
      *v37 = v12;
      *&v37[4] = 1024;
      *&v37[6] = 7;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "End Event version %u (exp %u)", buf, 0xEu);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End Event version %u (exp %u)", *(v10 + 1), 7];
    v14 = v13;
    if (!error)
    {
      goto LABEL_18;
    }

    v15 = *error;
    v16 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v28[0] = *MEMORY[0x277CCA450];
      v28[1] = v17;
      v29[0] = v13;
      v29[1] = v15;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v29;
      v20 = v28;
LABEL_13:
      v25 = 2;
LABEL_17:
      v26 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v25];
      *error = [v16 errorWithDomain:@"ATL" code:3 userInfo:v26];

LABEL_18:
      goto LABEL_19;
    }

    v30 = *MEMORY[0x277CCA450];
    v31 = v13;
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v31;
    v20 = &v30;
    goto LABEL_16;
  }

LABEL_19:

  return 0;
}

- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 == 3)
  {
    bytes = [eventCopy bytes];
    v12 = bytes;
    if (*(bytes + 1) == 7)
    {
      v51[0] = &unk_2843C6AB8;
      v51[1] = &unk_2843C6AD0;
      v52[0] = @"Contact";
      v52[1] = @"Contactless";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v12 + 2)];
      v15 = [v13 objectForKeyedSubscript:v14];

      if (v15)
      {
        v45[0] = @"EventType";
        v45[1] = @"appletIdentifier";
        v46[0] = @"DeselectEvent";
        v46[1] = appletCopy;
        v45[2] = @"Interface";
        v46[2] = v15;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
        v18 = ATLLogObject(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v62 = v17;
          _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_hciArray addObject:v17];
      }

      else
      {
        v33 = ATLLogObject(v16);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = *(v12 + 2);
          *buf = 67109120;
          *v62 = v34;
          _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
        }

        v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v12 + 2)];
        v17 = v35;
        if (error)
        {
          v36 = *error;
          v37 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v38 = *MEMORY[0x277CCA7E8];
            v47[0] = *MEMORY[0x277CCA450];
            v47[1] = v38;
            v48[0] = v35;
            v48[1] = v36;
            v39 = MEMORY[0x277CBEAC0];
            v40 = v48;
            v41 = v47;
            v42 = 2;
          }

          else
          {
            v49 = *MEMORY[0x277CCA450];
            v50 = v35;
            v39 = MEMORY[0x277CBEAC0];
            v40 = &v50;
            v41 = &v49;
            v42 = 1;
          }

          v43 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:v42];
          *error = [v37 errorWithDomain:@"ATL" code:3 userInfo:v43];
        }
      }

      goto LABEL_30;
    }

    v27 = ATLLogObject(bytes);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(v12 + 1);
      *buf = 67109376;
      *v62 = v28;
      *&v62[4] = 1024;
      *&v62[6] = 1;
      _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "Deselect Event version  %u (exp %u)", buf, 0xEu);
    }

    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Deselect Event version  %u (exp %u)", *(v12 + 1), 1];
    v13 = v29;
    if (error)
    {
      v30 = *error;
      v22 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v31 = *MEMORY[0x277CCA7E8];
        v53[0] = *MEMORY[0x277CCA450];
        v53[1] = v31;
        v54[0] = v29;
        v54[1] = v30;
        v24 = MEMORY[0x277CBEAC0];
        v25 = v54;
        v26 = v53;
        goto LABEL_17;
      }

      v55 = *MEMORY[0x277CCA450];
      v56 = v29;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v56;
      v26 = &v55;
      goto LABEL_25;
    }
  }

  else
  {
    v19 = ATLLogObject(v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v62 = [eventCopy length];
      *&v62[8] = 2048;
      v63 = 3;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Deselect Event length %zu (exp %zu)", buf, 0x16u);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Deselect Event length %zu (exp %zu)", objc_msgSend(eventCopy, "length"), 3];
    v13 = v20;
    if (error)
    {
      v21 = *error;
      v22 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v23 = *MEMORY[0x277CCA7E8];
        v57[0] = *MEMORY[0x277CCA450];
        v57[1] = v23;
        v58[0] = v20;
        v58[1] = v21;
        v24 = MEMORY[0x277CBEAC0];
        v25 = v58;
        v26 = v57;
LABEL_17:
        v32 = 2;
LABEL_26:
        v15 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v32];
        *error = [v22 errorWithDomain:@"ATL" code:3 userInfo:v15];
LABEL_30:

        goto LABEL_31;
      }

      v59 = *MEMORY[0x277CCA450];
      v60 = v20;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v60;
      v26 = &v59;
LABEL_25:
      v32 = 1;
      goto LABEL_26;
    }
  }

LABEL_31:

  return 0;
}

- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v90 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 <= 2)
  {
    v11 = ATLLogObject(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = [eventCopy length];
      *&buf[12] = 2048;
      *&buf[14] = 3;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Transaction Event length %zu (at least %zu)", buf, 0x16u);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Transaction Event length %zu (at least %zu)", objc_msgSend(eventCopy, "length"), 3];
    v13 = v12;
    if (!error)
    {
      goto LABEL_45;
    }

    v14 = *error;
    v15 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v85[0] = *MEMORY[0x277CCA450];
      v85[1] = v16;
      v86[0] = v12;
      v86[1] = v14;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v86;
      v19 = v85;
LABEL_27:
      v42 = 2;
LABEL_44:
      v57 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v42];
      *error = [v15 errorWithDomain:@"ATL" code:3 userInfo:v57];

LABEL_45:
      v56 = 0;
      goto LABEL_51;
    }

    v87 = *MEMORY[0x277CCA450];
    v88 = v12;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v88;
    v19 = &v87;
    goto LABEL_43;
  }

  bytes = [eventCopy bytes];
  v21 = bytes;
  if (*(bytes + 1) != 7)
  {
    v37 = ATLLogObject(bytes);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = *(v21 + 1);
      *buf = 67109376;
      *&buf[4] = v38;
      *&buf[8] = 1024;
      *&buf[10] = 7;
      _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Transaction Event version %u (exp %u)", buf, 0xEu);
    }

    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Transaction Event version %u (exp %u)", *(v21 + 1), 7];
    v13 = v39;
    if (!error)
    {
      goto LABEL_45;
    }

    v40 = *error;
    v15 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v41 = *MEMORY[0x277CCA7E8];
      v81[0] = *MEMORY[0x277CCA450];
      v81[1] = v41;
      v82[0] = v39;
      v82[1] = v40;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v82;
      v19 = v81;
      goto LABEL_27;
    }

    v83 = *MEMORY[0x277CCA450];
    v84 = v39;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v84;
    v19 = &v83;
LABEL_43:
    v42 = 1;
    goto LABEL_44;
  }

  *buf = bytes + 3;
  *&buf[8] = [eventCopy length] - 3;
  v22 = [(SlalomDecoder *)self DecodeTransactionE1TLV:buf error:error];
  v79[0] = &unk_2843C6AB8;
  v79[1] = &unk_2843C6AD0;
  v80[0] = @"Contact";
  v80[1] = @"Contactless";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v21 + 2)];
  v25 = [v23 objectForKeyedSubscript:v24];

  if (v25)
  {
    v73[0] = @"EventType";
    v73[1] = @"appletIdentifier";
    v74[0] = @"TransactionEvent";
    v74[1] = appletCopy;
    v73[2] = @"Version";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v21 + 1)];
    v74[2] = v27;
    v74[3] = v25;
    v62 = v25;
    v73[3] = @"Interface";
    v73[4] = @"type";
    v74[4] = &unk_2843C6B00;
    v73[5] = @"tlv";
    v28 = [MEMORY[0x277CBEA90] dataWithDERItem:buf];
    v74[5] = v28;
    v73[6] = @"parsedInfo";
    null = v22;
    if (!v22)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v74[6] = null;
    v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:7];
    if (!v22)
    {
    }

    v63 = v23;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v30 = self->_hciArray;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v31)
    {
      v32 = v31;
      v59 = v22;
      v60 = appletCopy;
      v33 = *v65;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v65 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v64 + 1) + 8 * i) objectForKeyedSubscript:@"EventType"];

          if (v35 == @"TransactionEvent")
          {
            v36 = 0;
            goto LABEL_30;
          }
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }

      v36 = 1;
LABEL_30:
      v22 = v59;
      appletCopy = v60;
    }

    else
    {
      v36 = 1;
    }

    v46 = v61;
    v54 = ATLLogObject([(NSMutableArray *)self->_hciArray addObject:v61]);
    v25 = v62;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      *v70 = 138412290;
      v71 = v61;
      _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_DEBUG, "%@", v70, 0xCu);
    }

    if (v36)
    {
      v68[0] = @"EventType";
      v68[1] = @"paymentMode";
      v69[0] = @"StartEvent";
      v69[1] = &unk_2843C6B18;
      v68[2] = @"appletIdentifier";
      v68[3] = @"Interface";
      v69[2] = appletCopy;
      v69[3] = v62;
      v68[4] = @"Version";
      v55 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v21 + 1)];
      v69[4] = v55;
      v69[5] = MEMORY[0x277CBEC28];
      v68[5] = @"IgnoreRFEvents";
      v68[6] = @"DontWaitForEOT";
      v69[6] = MEMORY[0x277CBEC38];
      v69[7] = MEMORY[0x277CBEC38];
      v68[7] = @"RequiresPowerCycle";
      v68[8] = @"EoTCallbackExpected";
      v68[9] = @"DelayExpressReentry";
      v69[8] = MEMORY[0x277CBEC38];
      v69[9] = &unk_2843C6AE8;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:10];
      v23 = v63;
LABEL_49:

      goto LABEL_50;
    }

    v56 = 0;
    v23 = v63;
  }

  else
  {
    v43 = ATLLogObject(v26);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = *(v21 + 2);
      *v70 = 67109120;
      LODWORD(v71) = v44;
      _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_ERROR, "Unknown interface type %u", v70, 8u);
    }

    v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v21 + 2)];
    v46 = v45;
    if (error)
    {
      v47 = *error;
      v48 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v49 = *MEMORY[0x277CCA7E8];
        v75[0] = *MEMORY[0x277CCA450];
        v75[1] = v49;
        v76[0] = v45;
        v76[1] = v47;
        v50 = MEMORY[0x277CBEAC0];
        v51 = v76;
        v52 = v75;
        v53 = 2;
      }

      else
      {
        v77 = *MEMORY[0x277CCA450];
        v78 = v45;
        v50 = MEMORY[0x277CBEAC0];
        v51 = &v78;
        v52 = &v77;
        v53 = 1;
      }

      v55 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:v53];
      [v48 errorWithDomain:@"ATL" code:3 userInfo:v55];
      *error = v56 = 0;
      goto LABEL_49;
    }

    v56 = 0;
  }

LABEL_50:

LABEL_51:

  return v56;
}

- (id)DecodeTransactionE1TLV:(id *)v error:(id *)error
{
  v113[1] = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v6 = DERDecodeItemCtx(v, &v83);
  if (v6)
  {
    v7 = v6;
    v8 = ATLLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v109) = v7;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event E1 %d", buf, 8u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event E1 %d", v7];
    v10 = v9;
    if (error)
    {
      v11 = *error;
      v12 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v13 = *MEMORY[0x277CCA7E8];
        v110[0] = *MEMORY[0x277CCA450];
        v110[1] = v13;
        v111[0] = v9;
        v111[1] = v11;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v111;
        v16 = v110;
        v17 = 2;
      }

      else
      {
        v112 = *MEMORY[0x277CCA450];
        v113[0] = v9;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v113;
        v16 = &v112;
        v17 = 1;
      }

      v46 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
      *error = [v12 errorWithDomain:@"ATL" code:3 userInfo:v46];
    }

LABEL_32:
    v34 = 0;
    goto LABEL_33;
  }

  if (v83 != 0xE000000000000001)
  {
    v35 = ATLLogObject(v6);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v109 = v83;
      _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx", buf, 0xCu);
    }

    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v81 = v83;
    v37 = [v36 initWithFormat:@"Unexpected tag 0x%llx"];
    v38 = v37;
    if (error)
    {
      v39 = *error;
      v40 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v41 = *MEMORY[0x277CCA7E8];
        v104[0] = *MEMORY[0x277CCA450];
        v104[1] = v41;
        v105[0] = v37;
        v105[1] = v39;
        v42 = MEMORY[0x277CBEAC0];
        v43 = v105;
        v44 = v104;
        v45 = 2;
      }

      else
      {
        v106 = *MEMORY[0x277CCA450];
        v107 = v37;
        v42 = MEMORY[0x277CBEAC0];
        v43 = &v107;
        v44 = &v106;
        v45 = 1;
      }

      v47 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
      *error = [v40 errorWithDomain:@"ATL" code:3 userInfo:v47];
    }

    LogBinary(OS_LOG_TYPE_ERROR, "[SlalomDecoder DecodeTransactionE1TLV:error:]", 356, v->var0, v->var1, @"E1 TLV data", v48, v49, v81);
    goto LABEL_32;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v82 = array2;
  v20 = v85;
  if (v85 < 1)
  {
LABEL_20:
    v86[0] = @"OPRead";
    v86[1] = @"OPWrite";
    v33 = v82;
    v87[0] = array;
    v87[1] = v82;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
    goto LABEL_66;
  }

  v21 = 0;
  v22 = v84;
  while (1)
  {
    if (v20 - v21 <= 1)
    {
      v51 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
      v52 = ATLLogObject(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v109 = v51;
        _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event E1, length issue: %@", buf, 0xCu);
      }

      v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event E1, length issue: %@", v51];
      v54 = v53;
      if (error)
      {
        v55 = *error;
        v56 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v57 = *MEMORY[0x277CCA7E8];
          v100[0] = *MEMORY[0x277CCA450];
          v100[1] = v57;
          v101[0] = v53;
          v101[1] = v55;
          v58 = MEMORY[0x277CBEAC0];
          v59 = v101;
          v60 = v100;
          goto LABEL_56;
        }

        v102 = *MEMORY[0x277CCA450];
        v103 = v53;
        v58 = MEMORY[0x277CBEAC0];
        v59 = &v103;
        v60 = &v102;
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    v23 = (v22 + v21);
    v24 = *v23;
    v25 = v21 + 2;
    if (v24 != 194)
    {
      break;
    }

    if (v20 - v25 <= 3)
    {
      v51 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
      v70 = ATLLogObject(v51);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v109 = v51;
        _os_log_impl(&dword_22EEF5000, v70, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event C2 tag, length issue: %@", buf, 0xCu);
      }

      v71 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event C2 tag, length issue: %@", v51];
      v54 = v71;
      if (error)
      {
        v72 = *error;
        v56 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v73 = *MEMORY[0x277CCA7E8];
          v92[0] = *MEMORY[0x277CCA450];
          v92[1] = v73;
          v93[0] = v71;
          v93[1] = v72;
          v58 = MEMORY[0x277CBEAC0];
          v59 = v93;
          v60 = v92;
          goto LABEL_56;
        }

        v94 = *MEMORY[0x277CCA450];
        v95 = v71;
        v58 = MEMORY[0x277CBEAC0];
        v59 = &v95;
        v60 = &v94;
LABEL_62:
        v78 = 1;
LABEL_63:
        v80 = [v58 dictionaryWithObjects:v59 forKeys:v60 count:v78];
        *error = [v56 errorWithDomain:@"ATL" code:3 userInfo:v80];
      }

LABEL_64:

      goto LABEL_65;
    }

    v28 = array;
    v29 = v23[1];
    v26 = objc_alloc_init(SlalomWriteOperation);
    v30 = *(v25 + v22);
    v31 = *(v23 + 2);
    v32 = v21 + 6;
    [(SlalomWriteOperation *)v26 setServiceCode:v30];
    [(SlalomWriteOperation *)v26 setBlockNumber:v31];
    if (v29 == 6)
    {
      [(SlalomWriteOperation *)v26 setOffsets:bswap32(*(v32 + v22)) >> 16];
      LODWORD(v32) = v21 + 8;
    }

    [v82 addObject:v26];
    v21 = v32;
    array = v28;
LABEL_19:

    v20 = v85;
    if (v21 >= v85)
    {
      goto LABEL_20;
    }
  }

  if (v24 == 193)
  {
    if (v20 - v25 <= 3)
    {
      v51 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
      v74 = ATLLogObject(v51);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v109 = v51;
        _os_log_impl(&dword_22EEF5000, v74, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event C1 tag, length issue: %@", buf, 0xCu);
      }

      v75 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event C1 tag, length issue: %@", v51];
      v54 = v75;
      if (error)
      {
        v76 = *error;
        v56 = MEMORY[0x277CCA9B8];
        if (!*error)
        {
          v98 = *MEMORY[0x277CCA450];
          v99 = v75;
          v58 = MEMORY[0x277CBEAC0];
          v59 = &v99;
          v60 = &v98;
          goto LABEL_62;
        }

        v77 = *MEMORY[0x277CCA7E8];
        v96[0] = *MEMORY[0x277CCA450];
        v96[1] = v77;
        v97[0] = v75;
        v97[1] = v76;
        v58 = MEMORY[0x277CBEAC0];
        v59 = v97;
        v60 = v96;
LABEL_56:
        v78 = 2;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    v26 = objc_alloc_init(SlalomReadOperation);
    v27 = *(v25 + v22);
    v21 += 6;
    [(SlalomWriteOperation *)v26 setBlockNumber:*(v23 + 2)];
    [(SlalomWriteOperation *)v26 setServiceCode:v27];
    [array addObject:v26];
    goto LABEL_19;
  }

  v61 = ATLLogObject(array2);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v109) = v24;
    _os_log_impl(&dword_22EEF5000, v61, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event E1, tag received was not C0 or C1: %2X", buf, 8u);
  }

  v62 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event E1, tag received was not C0 or C1: %2X", v24];
  v51 = v62;
  if (error)
  {
    v63 = *error;
    v64 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v65 = *MEMORY[0x277CCA7E8];
      v88[0] = *MEMORY[0x277CCA450];
      v88[1] = v65;
      v89[0] = v62;
      v89[1] = v63;
      v66 = MEMORY[0x277CBEAC0];
      v67 = v89;
      v68 = v88;
      v69 = 2;
    }

    else
    {
      v90 = *MEMORY[0x277CCA450];
      v91 = v62;
      v66 = MEMORY[0x277CBEAC0];
      v67 = &v91;
      v68 = &v90;
      v69 = 1;
    }

    v79 = [v66 dictionaryWithObjects:v67 forKeys:v68 count:v69];
    *error = [v64 errorWithDomain:@"ATL" code:3 userInfo:v79];
  }

LABEL_65:

  v34 = 0;
  v33 = v82;
LABEL_66:

LABEL_33:

  return v34;
}

- (id)DecodeStartE1TLV:(id *)v error:(id *)error
{
  v93[1] = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70[0] = 0;
  v70[1] = 0;
  v7 = DERDecodeItemCtx(v, &v69);
  if (v7)
  {
    v8 = v7;
    v9 = ATLLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v8;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Failed to decode Start Event E1 %d", &buf, 8u);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Start Event E1 %d", v8];
    v11 = v10;
    if (error)
    {
      v12 = *error;
      v13 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v14 = *MEMORY[0x277CCA7E8];
        v90[0] = *MEMORY[0x277CCA450];
        v90[1] = v14;
        v91[0] = v10;
        v91[1] = v12;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v91;
        v17 = v90;
        v18 = 2;
      }

      else
      {
        v92 = *MEMORY[0x277CCA450];
        v93[0] = v10;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v93;
        v17 = &v92;
        v18 = 1;
      }

      v41 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *error = [v13 errorWithDomain:@"ATL" code:3 userInfo:v41];
    }

    goto LABEL_42;
  }

  if (v69 == 0xE000000000000001)
  {
    v84 = 0u;
    v85 = 0u;
    buf = 0u;
    v19 = DERParseSequenceSpec(v70, &startEventE1ContentSpec, &buf, 0x30uLL);
    if (v19)
    {
      v20 = v19;
      v21 = ATLLogObject(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v75 = 67109120;
        LODWORD(v76) = v20;
        _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Failed to decode Start Event E1 contents %d", v75, 8u);
      }

      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Start Event E1 contents %d", v20];
      v11 = v22;
      if (!error)
      {
        goto LABEL_42;
      }

      v23 = *error;
      v24 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v25 = *MEMORY[0x277CCA7E8];
        v79[0] = *MEMORY[0x277CCA450];
        v79[1] = v25;
        v80[0] = v22;
        v80[1] = v23;
        v26 = MEMORY[0x277CBEAC0];
        v27 = v80;
        v28 = v79;
        v29 = 2;
      }

      else
      {
        v81 = *MEMORY[0x277CCA450];
        v82 = v22;
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v82;
        v28 = &v81;
        v29 = 1;
      }

      v43 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v29];
      *error = [v24 errorWithDomain:@"ATL" code:3 userInfo:v43];
      goto LABEL_41;
    }

    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v77[0] = &unk_2843C6AD0;
    v77[1] = &unk_2843C6B30;
    v78[0] = @"Suica";
    v78[1] = @"QuicPay";
    v77[2] = &unk_2843C6B48;
    v77[3] = &unk_2843C6B60;
    v78[2] = @"iD";
    v78[3] = @"Octopus";
    v77[4] = &unk_2843C6B78;
    v77[5] = &unk_2843C6B90;
    v78[4] = @"Cross";
    v78[5] = @"Mogul";
    v77[6] = &unk_2843C6BA8;
    v77[7] = &unk_2843C6BC0;
    v78[6] = @"Gondola";
    v78[7] = @"Wildcat";
    v77[8] = &unk_2843C6BD8;
    v78[8] = @"JRE Operator";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:9];
    v43 = v42;
    if (*(&v85 + 1) && (*v85 >= 0xE0u ? (v44 = 224) : (v44 = *v85), [MEMORY[0x277CCABB0] numberWithUnsignedChar:v44], v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "objectForKeyedSubscript:", v45), v46 = objc_claimAutoreleasedReturnValue(), v45, v46))
    {
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v85];
      serviceProvider = self->_serviceProvider;
      self->_serviceProvider = v47;

      [v11 setObject:v46 forKeyedSubscript:@"SP"];
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v85];
      [v11 setObject:v49 forKeyedSubscript:@"SPRaw"];

      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*buf];
      [v11 setObject:v50 forKeyedSubscript:@"SystemCode"];

      v51 = [MEMORY[0x277CBEA90] dataWithBytes:v84 length:8];
      asHexString = [v51 asHexString];
      [v11 setObject:asHexString forKeyedSubscript:@"IDm"];
    }

    else
    {
      v56 = ATLLogObject(v42);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = [MEMORY[0x277CBEA90] dataWithDERItem:&v85];
        *v75 = 138412290;
        v76 = v57;
        _os_log_impl(&dword_22EEF5000, v56, OS_LOG_TYPE_ERROR, "Unknown SP identifier %@", v75, 0xCu);
      }

      v58 = objc_alloc(MEMORY[0x277CCACA8]);
      v59 = [MEMORY[0x277CBEA90] dataWithDERItem:&v85];
      v46 = [v58 initWithFormat:@"Unknown SP identifier %@", v59];

      if (!error)
      {
        goto LABEL_40;
      }

      v60 = *error;
      v61 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v62 = *MEMORY[0x277CCA7E8];
        v71[0] = *MEMORY[0x277CCA450];
        v71[1] = v62;
        v72[0] = v46;
        v72[1] = v60;
        v63 = MEMORY[0x277CBEAC0];
        v64 = v72;
        v65 = v71;
        v66 = 2;
      }

      else
      {
        v73 = *MEMORY[0x277CCA450];
        v74 = v46;
        v63 = MEMORY[0x277CBEAC0];
        v64 = &v74;
        v65 = &v73;
        v66 = 1;
      }

      v51 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:v66];
      *error = [v61 errorWithDomain:@"ATL" code:3 userInfo:v51];
    }

LABEL_40:
LABEL_41:

LABEL_42:
    return 0;
  }

  v30 = ATLLogObject(v7);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v69;
    _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx", &buf, 0xCu);
  }

  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v68 = v69;
  v32 = [v31 initWithFormat:@"Unexpected tag 0x%llx"];
  v33 = v32;
  if (error)
  {
    v34 = *error;
    v35 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v36 = *MEMORY[0x277CCA7E8];
      v86[0] = *MEMORY[0x277CCA450];
      v86[1] = v36;
      v87[0] = v32;
      v87[1] = v34;
      v37 = MEMORY[0x277CBEAC0];
      v38 = v87;
      v39 = v86;
      v40 = 2;
    }

    else
    {
      v88 = *MEMORY[0x277CCA450];
      v89 = v32;
      v37 = MEMORY[0x277CBEAC0];
      v38 = &v89;
      v39 = &v88;
      v40 = 1;
    }

    v53 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:v40];
    *error = [v35 errorWithDomain:@"ATL" code:3 userInfo:v53];
  }

  LogBinary(OS_LOG_TYPE_ERROR, "[SlalomDecoder DecodeStartE1TLV:error:]", 446, v->var0, v->var1, @"E1 TLV data", v54, v55, v68);
  return 0;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v543[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  v16 = [MEMORY[0x277CBEA90] dataWithHexString:appletCopy];
  v17 = SelectByNameCmd(v16);

  v18 = [historyCopy transceiveAndCheckSW:v17 error:error];
  v19 = v18;
  if (!v18)
  {
    v33 = 0;
    goto LABEL_352;
  }

  v451[0] = [v18 bytes];
  v440 = v19;
  v451[1] = [v19 length];
  v449 = 0;
  v450[0] = 0;
  v450[1] = 0;
  DERFindItem(v451, 0xA000000000000005, &v449);
  if (v20)
  {
    v21 = v20;
    v22 = ATLLogObject(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v21;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Failed to find tag 'A5' in Slalom SELECT response, %d", buf, 8u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to find tag 'A5' in Slalom SELECT response, %d", v21];
    v24 = v23;
    if (error)
    {
      v25 = moduleCopy;
      v26 = *error;
      v27 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v28 = *MEMORY[0x277CCA7E8];
        v540[0] = *MEMORY[0x277CCA450];
        v540[1] = v28;
        v541[0] = v23;
        v541[1] = v26;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v541;
        v31 = v540;
        v32 = 2;
      }

      else
      {
        v542 = *MEMORY[0x277CCA450];
        v543[0] = v23;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v543;
        v31 = &v542;
        v32 = 1;
      }

      v46 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
      *error = [v27 errorWithDomain:@"ATL" code:3 userInfo:v46];

      moduleCopy = v25;
    }

    v33 = 0;
    v19 = v440;
    goto LABEL_352;
  }

  v539 = 0u;
  v538 = 0u;
  v537 = 0u;
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  *buf = 0u;
  v34 = DERParseSequenceSpec(v450, &selectResponseA5ContentSpec, buf, 0x18uLL);
  if (!v34)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v47 = *v538;
    v426 = [MEMORY[0x277CBEA90] dataWithBytes:v534 length:?];
    if (v47 >= 0xE0)
    {
      v48 = 224;
    }

    else
    {
      v48 = v47;
    }

    array = [MEMORY[0x277CBEB18] array];
    v437 = array;
    v438 = v17;
    v425 = appletCopy;
    if (v48 > 5)
    {
      if (v48 <= 7)
      {
        if (v48 != 6)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary2 setObject:&unk_2843C6BA8 forKeyedSubscript:@"SPRaw"];
          [dictionary2 setObject:@"Gondola" forKeyedSubscript:@"SP"];
          v51 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:0 withTransceiver:historyCopy withError:error];
          v52 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:1 withTransceiver:historyCopy withError:error];
          v53 = v52;
          if (!v51 || !v52)
          {
            v427 = moduleCopy;
            v116 = ATLLogObject(v52);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              *v517 = 0;
              _os_log_impl(&dword_22EEF5000, v116, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola S/N, invalid blocks", v517, 2u);
            }

            v117 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola S/N, invalid blocks"];
            v118 = v117;
            if (error)
            {
              v119 = dictionary2;
              v120 = packageCopy;
              v121 = *error;
              v122 = MEMORY[0x277CCA9B8];
              if (*error)
              {
                v123 = *MEMORY[0x277CCA7E8];
                v501[0] = *MEMORY[0x277CCA450];
                v501[1] = v123;
                v502[0] = v117;
                v502[1] = v121;
                v124 = MEMORY[0x277CBEAC0];
                v125 = v502;
                v126 = v501;
                v127 = 2;
              }

              else
              {
                v503 = *MEMORY[0x277CCA450];
                v504 = v117;
                v124 = MEMORY[0x277CBEAC0];
                v125 = &v504;
                v126 = &v503;
                v127 = 1;
              }

              v274 = [v124 dictionaryWithObjects:v125 forKeys:v126 count:v127];
              *error = [v122 errorWithDomain:@"ATL" code:3 userInfo:v274];

              packageCopy = v120;
              dictionary2 = v119;
            }

            v70 = 0;
            v68 = 0;
            v66 = 0;
            goto LABEL_183;
          }

          v54 = [GondolaDecoder decodeCardNumberFromBlock0:v51 andBlock1:v52];
          [dictionary2 setObject:v54 forKeyedSubscript:@"CardIdentifier"];

          v55 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:0 withTransceiver:historyCopy withError:error];
          v56 = v51;
          v57 = v53;
          v58 = v55;

          v59 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:1 withTransceiver:historyCopy withError:error];

          v432 = v58;
          if (v58 && v59)
          {
            v407 = dictionary2;
            v61 = [GondolaDecoder isCardUsageFlag:v58];
            v417 = v59;
            v62 = [GondolaDecoder isCardEffectiveFlag:v59];
            if (v61)
            {
              [MEMORY[0x277CCABB0] numberWithInt:v62 ^ 1];
              v64 = v63 = moduleCopy;
              [dictionary2 setObject:v64 forKeyedSubscript:@"CardDenyListed"];

              moduleCopy = v63;
            }

            else
            {
              [dictionary2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"CardDenyListed"];
            }

            if (self->_debug)
            {
              v229 = [MEMORY[0x277CCABB0] numberWithBool:v61];
              [dictionary2 setObject:v229 forKeyedSubscript:@"CardActivated"];

              v230 = [MEMORY[0x277CCABB0] numberWithBool:v62];
              [dictionary2 setObject:v230 forKeyedSubscript:@"CardEffective"];

              v231 = [MEMORY[0x277CCACA8] hexStringFromBytes:v539 length:2];
              [dictionary2 setObject:v231 forKeyedSubscript:@"LifeCycleState"];
            }

            v232 = v417;
            v233 = [GondolaDecoder decodeEnrollmentDateAfterDelivery:v417];
            v234 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
            v235 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26647 withBlockNumber:0 withTransceiver:historyCopy withError:error];

            v406 = v234;
            if (v235)
            {
              v412 = historyCopy;
              v404 = v233;
              v434 = v235;
              v237 = [GondolaDecoder getPurseBalance:v235];
              v495[0] = @"BalanceIdentifier";
              v495[1] = @"Balance";
              v496[0] = @"Purse";
              v496[1] = v237;
              v495[2] = @"BalanceCurrency";
              v495[3] = @"BalanceCurrencyExponent";
              v496[2] = @"JPY";
              v496[3] = &unk_2843C6AB8;
              v238 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v496 forKeys:v495 count:4];
              [v234 addObject:v238];

              array2 = [MEMORY[0x277CBEB18] array];
              v239 = 0;
              v240 = @"TopUp";
              v241 = @"Amount";
              v423 = packageCopy;
              v429 = moduleCopy;
              while (1)
              {
                v242 = v241;
                v243 = v240;
                v420 = v232;
                v244 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:v239 withTransceiver:historyCopy withError:error];

                v232 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:v239 | 1u withTransceiver:historyCopy withError:error];

                v246 = !v244 || v232 == 0;
                v434 = v244;
                if (v246)
                {
                  break;
                }

                v247 = [GondolaDecoder decodeHistoryBlock1:v244 andWithBlock2:v232];
                v240 = v243;
                v248 = [v247 objectForKeyedSubscript:v243];
                v241 = v242;
                v249 = [v248 objectForKeyedSubscript:v242];

                if (v249)
                {
                  v250 = [v247 objectForKeyedSubscript:v240];
                  [array2 addObject:v250];
                }

                v251 = [v247 objectForKeyedSubscript:@"Charge"];
                v252 = [v251 objectForKeyedSubscript:v241];

                if (v252)
                {
                  v253 = [v247 objectForKeyedSubscript:@"Charge"];
                  [array2 addObject:v253];
                }

                v254 = v239;
                v239 += 2;
                moduleCopy = v429;
                if (v254 >= 4)
                {
                  v417 = v232;
                  v255 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"SerialNumber" ascending:0];
                  v486 = v255;
                  v256 = [MEMORY[0x277CBEA60] arrayWithObjects:&v486 count:1];
                  v257 = [array2 sortedArrayUsingDescriptors:v256];
                  [dictionary setObject:v257 forKeyedSubscript:@"TransactionHistory"];

                  v447 = 0u;
                  v448 = 0u;
                  v445 = 0u;
                  v446 = 0u;
                  v258 = array2;
                  v259 = [v258 countByEnumeratingWithState:&v445 objects:v485 count:16];
                  if (v259)
                  {
                    v260 = v259;
                    v261 = *v446;
                    do
                    {
                      for (i = 0; i != v260; ++i)
                      {
                        if (*v446 != v261)
                        {
                          objc_enumerationMutation(v258);
                        }

                        v263 = *(*(&v445 + 1) + 8 * i);
                        v264 = [v263 objectForKey:@"fakeTransactionId"];

                        if (v264)
                        {
                          v265 = [v263 objectForKeyedSubscript:@"fakeTransactionId"];
                          [v263 setObject:v265 forKeyedSubscript:@"SerialNumber"];

                          [v263 removeObjectForKey:@"fakeTransactionId"];
                        }
                      }

                      v260 = [v258 countByEnumeratingWithState:&v445 objects:v485 count:16];
                    }

                    while (v260);
                  }

                  historyCopy = v412;
                  v266 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:7 withTransceiver:v412 withError:error];

                  if (v266)
                  {
                    v268 = [GondolaDecoder decodeAutoTopUpAmount:v266];
                    packageCopy = v423;
                    moduleCopy = v429;
                    v17 = v438;
                    v269 = v406;
                    if ([v268 intValue] >= 1)
                    {
                      [dictionary setObject:v268 forKeyedSubscript:@"CardDefaultAAVSAmount"];
                    }

                    v270 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26699 withBlockNumber:0 withTransceiver:v412 withError:error];

                    if (v270)
                    {
                      v272 = v404;
                      if (v404)
                      {
                        v273 = [GondolaDecoder decodeLoyaltyPointBalancesAndExpiration:v270 withActivationDate:v404];
                        if (v273)
                        {
                          [v406 addObjectsFromArray:v273];
                        }

                        v272 = v404;
                      }

                      [v407 setObject:v406 forKeyedSubscript:@"Balances"];
                      v186 = v407;
                      [dictionary setObject:v407 forKeyedSubscript:@"State"];

                      v187 = 0;
                      v188 = 0;
                      v66 = 0;
LABEL_198:

                      v68 = v188;
                      v194 = dictionary;
                      v70 = v187;
LABEL_337:
                      v33 = v194;
LABEL_349:

                      appletCopy = v425;
                      v72 = v426;
                      v38 = dictionary;
LABEL_350:

                      goto LABEL_351;
                    }

                    v397 = ATLLogObject(v271);
                    v233 = v404;
                    if (os_log_type_enabled(v397, OS_LOG_TYPE_ERROR))
                    {
                      *v517 = 0;
                      _os_log_impl(&dword_22EEF5000, v397, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola loyalty balances, invalid block", v517, 2u);
                    }

                    v287 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola loyalty balances, invalid block"];
                    v286 = v407;
                    if (error)
                    {
                      v398 = *error;
                      v376 = MEMORY[0x277CCA9B8];
                      v434 = v287;
                      if (*error)
                      {
                        v399 = *MEMORY[0x277CCA7E8];
                        v477[0] = *MEMORY[0x277CCA450];
                        v477[1] = v399;
                        v478[0] = v287;
                        v478[1] = v398;
                        v378 = MEMORY[0x277CBEAC0];
                        v379 = v478;
                        v380 = v477;
LABEL_327:
                        v400 = 2;
LABEL_344:
                        v394 = [v378 dictionaryWithObjects:v379 forKeys:v380 count:v400];
                        *error = [v376 errorWithDomain:@"ATL" code:3 userInfo:v394];
                        goto LABEL_345;
                      }

                      v479 = *MEMORY[0x277CCA450];
                      v480 = v287;
                      v378 = MEMORY[0x277CBEAC0];
                      v379 = &v480;
                      v380 = &v479;
LABEL_343:
                      v400 = 1;
                      goto LABEL_344;
                    }
                  }

                  else
                  {
                    v374 = ATLLogObject(v267);
                    packageCopy = v423;
                    moduleCopy = v429;
                    v17 = v438;
                    v269 = v406;
                    if (os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
                    {
                      *v517 = 0;
                      _os_log_impl(&dword_22EEF5000, v374, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola AAVS settings, invalid block", v517, 2u);
                    }

                    v287 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola AAVS settings, invalid block"];
                    v286 = v407;
                    v233 = v404;
                    if (error)
                    {
                      v375 = *error;
                      v376 = MEMORY[0x277CCA9B8];
                      v434 = v287;
                      if (*error)
                      {
                        v377 = *MEMORY[0x277CCA7E8];
                        v481[0] = *MEMORY[0x277CCA450];
                        v481[1] = v377;
                        v482[0] = v287;
                        v482[1] = v375;
                        v378 = MEMORY[0x277CBEAC0];
                        v379 = v482;
                        v380 = v481;
                        goto LABEL_327;
                      }

                      v483 = *MEMORY[0x277CCA450];
                      v484 = v287;
                      v378 = MEMORY[0x277CBEAC0];
                      v379 = &v484;
                      v380 = &v483;
                      goto LABEL_343;
                    }
                  }

LABEL_346:

LABEL_347:
                  v70 = 0;
                  v68 = 0;
                  v66 = 0;
LABEL_348:
                  v33 = 0;
                  goto LABEL_349;
                }
              }

              v417 = v232;
              v304 = ATLLogObject(v245);
              if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
              {
                *v517 = 0;
                _os_log_impl(&dword_22EEF5000, v304, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola history, invalid blocks", v517, 2u);
              }

              v305 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola history, invalid blocks"];
              v306 = v305;
              v17 = v438;
              v269 = v406;
              packageCopy = v423;
              if (error)
              {
                v307 = moduleCopy;
                v308 = *error;
                v309 = MEMORY[0x277CCA9B8];
                if (*error)
                {
                  v310 = *MEMORY[0x277CCA7E8];
                  v487[0] = *MEMORY[0x277CCA450];
                  v487[1] = v310;
                  v488[0] = v305;
                  v488[1] = v308;
                  v311 = MEMORY[0x277CBEAC0];
                  v312 = v488;
                  v313 = v487;
                  v314 = 2;
                }

                else
                {
                  v489 = *MEMORY[0x277CCA450];
                  v490 = v305;
                  v311 = MEMORY[0x277CBEAC0];
                  v312 = &v490;
                  v313 = &v489;
                  v314 = 1;
                }

                v395 = [v311 dictionaryWithObjects:v312 forKeys:v313 count:v314];
                *error = [v309 errorWithDomain:@"ATL" code:3 userInfo:v395];

                moduleCopy = v307;
              }

              v286 = v407;
              v233 = v404;
              v394 = array2;
            }

            else
            {
              v285 = ATLLogObject(v236);
              v286 = v407;
              if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
              {
                *v517 = 0;
                _os_log_impl(&dword_22EEF5000, v285, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola purse, invalid block", v517, 2u);
              }

              v287 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola purse, invalid block"];
              v17 = v438;
              if (!error)
              {
                v269 = v406;
                goto LABEL_346;
              }

              v288 = *error;
              v289 = MEMORY[0x277CCA9B8];
              v434 = v287;
              if (*error)
              {
                v290 = *MEMORY[0x277CCA7E8];
                v491[0] = *MEMORY[0x277CCA450];
                v491[1] = v290;
                v492[0] = v287;
                v492[1] = v288;
                v291 = MEMORY[0x277CBEAC0];
                v292 = v492;
                v293 = v491;
                v294 = 2;
              }

              else
              {
                v493 = *MEMORY[0x277CCA450];
                v494 = v287;
                v291 = MEMORY[0x277CBEAC0];
                v292 = &v494;
                v293 = &v493;
                v294 = 1;
              }

              v394 = [v291 dictionaryWithObjects:v292 forKeys:v293 count:v294];
              *error = [v289 errorWithDomain:@"ATL" code:3 userInfo:v394];
              v269 = v406;
            }

LABEL_345:

            v287 = v434;
            goto LABEL_346;
          }

          v144 = v59;
          v145 = ATLLogObject(v60);
          v17 = v438;
          if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
          {
            *v517 = 0;
            _os_log_impl(&dword_22EEF5000, v145, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola Usage Flag and/or Effectiveness Flag, invalid blocks", v517, 2u);
          }

          v146 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola Usage Flag and/or Effectiveness Flag, invalid blocks"];
          v147 = v146;
          if (error)
          {
            v409 = dictionary2;
            v148 = moduleCopy;
            v149 = *error;
            v150 = MEMORY[0x277CCA9B8];
            if (*error)
            {
              v151 = *MEMORY[0x277CCA7E8];
              v497[0] = *MEMORY[0x277CCA450];
              v497[1] = v151;
              v498[0] = v146;
              v498[1] = v149;
              v152 = MEMORY[0x277CBEAC0];
              v153 = v498;
              v154 = v497;
              v155 = 2;
            }

            else
            {
              v499 = *MEMORY[0x277CCA450];
              v500 = v146;
              v152 = MEMORY[0x277CBEAC0];
              v153 = &v500;
              v154 = &v499;
              v155 = 1;
            }

            v346 = [v152 dictionaryWithObjects:v153 forKeys:v154 count:v155];
            *error = [v150 errorWithDomain:@"ATL" code:3 userInfo:v346];

            moduleCopy = v148;
            dictionary2 = v409;
          }

          goto LABEL_321;
        }

LABEL_43:
        v427 = moduleCopy;
        v421 = packageCopy;
        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v47];
        [dictionary setObject:v73 forKeyedSubscript:@"NFServiceProviderID"];

        v74 = 0;
        v66 = 0;
        v68 = 0;
        v70 = 0;
        while (1)
        {
          v75 = v66;
          v66 = FelicaGetDataFileSystemCommand(2319, v74);

          if (v66)
          {
            v76 = [historyCopy transceiveAndCheckSW:v66 error:error];

            if (!v76)
            {
              v68 = 0;
              v33 = 0;
              goto LABEL_184;
            }

            v77 = FeliCaGetBlockDataFromGetDataCommand(v76);

            if (v77)
            {
              [v437 addObject:v77];
              v70 = v77;
            }

            else
            {
              v79 = ATLLogObject(v78);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                *v517 = 67109378;
                v518 = v74;
                v519 = 2112;
                *v520 = v76;
                _os_log_impl(&dword_22EEF5000, v79, OS_LOG_TYPE_DEFAULT, "failed to get block for Suica history, blocknumber %04x with response %@", v517, 0x12u);
              }

              v70 = 0;
            }

            v68 = v76;
            v17 = v438;
          }

          if (++v74 == 20)
          {
            if (![v437 count])
            {
              v106 = ATLLogObject(0);
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *v517 = 0;
                _os_log_impl(&dword_22EEF5000, v106, OS_LOG_TYPE_ERROR, "Suica History failure: could not get a single history block. Aborting.", v517, 2u);
              }

              v107 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Suica History failure: could not get a single history block. Aborting."];
              v108 = v107;
              if (error)
              {
                v109 = *error;
                v110 = MEMORY[0x277CCA9B8];
                if (*error)
                {
                  v111 = *MEMORY[0x277CCA7E8];
                  v525[0] = *MEMORY[0x277CCA450];
                  v525[1] = v111;
                  v526[0] = v107;
                  v526[1] = v109;
                  v112 = MEMORY[0x277CBEAC0];
                  v113 = v526;
                  v114 = v525;
                  v115 = 2;
                }

                else
                {
                  v527 = *MEMORY[0x277CCA450];
                  v528 = v107;
                  v112 = MEMORY[0x277CBEAC0];
                  v113 = &v528;
                  v114 = &v527;
                  v115 = 1;
                }

                v197 = [v112 dictionaryWithObjects:v113 forKeys:v114 count:v115];
                *error = [v110 errorWithDomain:@"ATL" code:3 userInfo:v197];

                packageCopy = v421;
              }

              v33 = 0;
              moduleCopy = v427;
              goto LABEL_349;
            }

            v80 = [HPHistoryDecoder parseSuicaHistoryBlocks:v437 withIDm:v426];
            [dictionary addEntriesFromDictionary:v80];

            [dictionary setObject:&unk_2843C6AD0 forKeyedSubscript:@"NFServiceProviderID"];
            v81 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v47];
            [dictionary setObject:v81 forKeyedSubscript:@"SPRaw"];

            asHexString = [v426 asHexString];
            [dictionary setObject:asHexString forKeyedSubscript:@"NFDPAN"];

            v83 = FelicaGetDataFileSystemCommand(4239, 0);

            if (!v83)
            {
              v33 = v68;
              goto LABEL_121;
            }

            v33 = [historyCopy transceiveAndCheckSW:v83 error:error];

            if (v33)
            {
              v84 = FeliCaGetBlockDataFromGetDataCommand(v33);

              if (v84)
              {
                v85 = [HPHistoryDecoder getInOutStation:v84];
                var1 = v85.var1;
                v87 = [MEMORY[0x277CCABB0] numberWithInt:v85.var0];
                [dictionary setObject:v87 forKeyedSubscript:@"NFInStation"];

                v88 = [MEMORY[0x277CCABB0] numberWithInt:var1];
                [dictionary setObject:v88 forKeyedSubscript:@"NFInStationShinkansen"];

                packageCopy = v421;
                v70 = v84;
              }

              else
              {
                v70 = 0;
              }

LABEL_121:
              v66 = FelicaGetDataFileSystemCommand(6219, 0);

              if (!v66)
              {
                v68 = v33;
                goto LABEL_127;
              }

              v68 = [historyCopy transceiveAndCheckSW:v66 error:error];

              if (v68)
              {
                v191 = FeliCaGetBlockDataFromGetDataCommand(v68);

                v70 = v191;
                if (v191)
                {
                  v192 = [HPHistoryDecoder getGreenCarTicketUsed:v191];
                  v193 = [MEMORY[0x277CCABB0] numberWithBool:v192];
                  v194 = dictionary;
                  [dictionary setObject:v193 forKeyedSubscript:@"NFTicketUsed"];

                  array3 = [MEMORY[0x277CBEB18] array];
                  [array3 addObject:v70];
                  v196 = [HPHistoryDecoder parseGreencarBlocks:array3];
                  if (v196)
                  {
                    [dictionary setObject:v196 forKeyedSubscript:@"NFGreenCarTicket"];
                  }

                  else
                  {
                    v276 = ATLLogObject(0);
                    if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
                    {
                      *v517 = 0;
                      _os_log_impl(&dword_22EEF5000, v276, OS_LOG_TYPE_DEFAULT, "failed to parse GreenCar blocks", v517, 2u);
                    }

                    packageCopy = v421;
                  }

LABEL_193:
                  v277 = FelicaGetDataFileSystemCommand(139, 0);

                  v66 = v277;
                  moduleCopy = v427;
                  if (!v277)
                  {
                    v17 = v438;
                    goto LABEL_337;
                  }

                  v278 = v70;
                  v188 = [historyCopy transceiveAndCheckSW:v277 error:error];

                  if (v188)
                  {
                    v279 = FeliCaGetBlockDataFromGetDataCommand(v188);

                    if (v279)
                    {
                      v280 = [HPHistoryDecoder getCommuterBalance:v279];
                      v281 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(*&v280)];
                      [dictionary setObject:v281 forKeyedSubscript:@"NFBalance"];

                      v282 = *([v279 bytes] + 8);
                      v283 = [MEMORY[0x277CCABB0] numberWithInt:(v282 >> 4) & 1];
                      [dictionary setObject:v283 forKeyedSubscript:@"NFNotifyOnLowBalance"];

                      v284 = [MEMORY[0x277CCABB0] numberWithInt:(v282 >> 5) & 1];
                      [dictionary setObject:v284 forKeyedSubscript:@"NFAllowBalanceUsageForCommute"];

                      v186 = [MEMORY[0x277CCABB0] numberWithBool:{+[HPHistoryDecoder getIsDenyListed:](HPHistoryDecoder, "getIsDenyListed:", v279)}];
                      [dictionary setObject:v186 forKeyedSubscript:@"NFBlacklisted"];
                      v187 = v279;
LABEL_197:
                      v17 = v438;
                      goto LABEL_198;
                    }

                    v68 = v188;
                    v70 = 0;
                    v17 = v438;
LABEL_336:
                    v194 = dictionary;
                    goto LABEL_337;
                  }

                  v68 = 0;
                  v33 = 0;
                  v70 = v278;
LABEL_185:
                  v17 = v438;
                  goto LABEL_349;
                }

LABEL_127:
                v194 = dictionary;
                goto LABEL_193;
              }

LABEL_183:
              v33 = 0;
            }

            else
            {
              v68 = 0;
              v66 = v83;
            }

LABEL_184:
            moduleCopy = v427;
            goto LABEL_185;
          }
        }
      }

      if (v48 == 224 || v48 == 8)
      {
        goto LABEL_43;
      }

LABEL_59:
      v89 = ATLLogObject(array);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *v517 = 67109120;
        v518 = v48;
        _os_log_impl(&dword_22EEF5000, v89, OS_LOG_TYPE_ERROR, "Could not GET APPLET HISTORY: unknown Service Provider ID %02X in SELECT Response", v517, 8u);
      }

      v90 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not GET APPLET HISTORY: unknown Service Provider ID %02X in SELECT Response", v48];
      v91 = v90;
      if (error)
      {
        v92 = moduleCopy;
        v93 = *error;
        v94 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v95 = *MEMORY[0x277CCA7E8];
          v452[0] = *MEMORY[0x277CCA450];
          v452[1] = v95;
          v453[0] = v90;
          v453[1] = v93;
          v96 = MEMORY[0x277CBEAC0];
          v97 = v453;
          v98 = v452;
          v99 = 2;
        }

        else
        {
          v454 = *MEMORY[0x277CCA450];
          v455 = v90;
          v96 = MEMORY[0x277CBEAC0];
          v97 = &v455;
          v98 = &v454;
          v99 = 1;
        }

        v189 = [v96 dictionaryWithObjects:v97 forKeys:v98 count:v99];
        *error = [v94 errorWithDomain:@"ATL" code:3 userInfo:v189];

        moduleCopy = v92;
      }

      goto LABEL_347;
    }

    if (v48 == 1)
    {
      goto LABEL_43;
    }

    if (v48 == 4)
    {
      v428 = moduleCopy;
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [dictionary2 setObject:&unk_2843C6B90 forKeyedSubscript:@"SPRaw"];
      [dictionary2 setObject:@"Mogul" forKeyedSubscript:@"SP"];
      v100 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:0 withTransceiver:historyCopy withError:error];
      v101 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:1 withTransceiver:historyCopy withError:error];
      v102 = v101;
      if (!v100 || !v101)
      {
        v128 = ATLLogObject(v101);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          *v517 = 0;
          _os_log_impl(&dword_22EEF5000, v128, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul card settings, invalid blocks", v517, 2u);
        }

        v129 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul card settings, invalid blocks"];
        v130 = v129;
        if (error)
        {
          v131 = *error;
          v132 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v133 = *MEMORY[0x277CCA7E8];
            v473[0] = *MEMORY[0x277CCA450];
            v473[1] = v133;
            v474[0] = v129;
            v474[1] = v131;
            v134 = MEMORY[0x277CBEAC0];
            v135 = v474;
            v136 = v473;
            v137 = 2;
          }

          else
          {
            v475 = *MEMORY[0x277CCA450];
            v476 = v129;
            v134 = MEMORY[0x277CBEAC0];
            v135 = &v476;
            v136 = &v475;
            v137 = 1;
          }

          v275 = [v134 dictionaryWithObjects:v135 forKeys:v136 count:v137];
          *error = [v132 errorWithDomain:@"ATL" code:3 userInfo:v275];

          moduleCopy = v428;
        }

        v70 = 0;
        v68 = 0;
        v66 = 0;
        v33 = 0;
        goto LABEL_185;
      }

      v422 = packageCopy;
      v103 = [MogulDecoder decodeCardID:v100];
      [dictionary2 setObject:v103 forKeyedSubscript:@"CardIdentifier"];
      v104 = [MogulDecoder decodeEnableFlag:v102];
      v105 = [MogulDecoder decodeStatusFlag:v102];
      if (!v104 || (v105 & 0xFFFFFFFD) != 0)
      {
        v156 = [MEMORY[0x277CCABB0] numberWithInt:v104 != 1];
        [dictionary2 setObject:v156 forKeyedSubscript:@"CardDenyListed"];
      }

      else
      {
        [dictionary2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CardDenyListed"];
      }

      v157 = [MogulDecoder decodeChargeAmountFlagValue:v102];
      if (v157)
      {
        [dictionary2 setObject:v157 forKeyedSubscript:@"CardDefaultAAVSAmount"];
      }

      v158 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      v159 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21911 withBlockNumber:0 withTransceiver:historyCopy withError:error];

      if (v159)
      {
        v410 = dictionary2;
        v419 = v159;
        v161 = [MogulDecoder getPurseBalance:v159];
        v471[0] = @"BalanceIdentifier";
        v471[1] = @"Balance";
        v472[0] = @"Purse";
        v472[1] = v161;
        v471[2] = @"BalanceCurrency";
        v471[3] = @"BalanceCurrencyExponent";
        v472[2] = @"JPY";
        v472[3] = &unk_2843C6AB8;
        v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v472 forKeys:v471 count:4];
        v163 = v158;
        v164 = v162;
        v433 = v163;
        [v163 addObject:v162];

        array4 = [MEMORY[0x277CBEB18] array];
        v166 = 0;
        v167 = 0;
        do
        {
          v168 = v167;
          v167 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:22095 withBlockNumber:v166 withTransceiver:historyCopy withError:error];

          if (!v167)
          {
            v207 = ATLLogObject(v169);
            if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
            {
              *v517 = 0;
              _os_log_impl(&dword_22EEF5000, v207, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul history, invalid block", v517, 2u);
            }

            v208 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul history, invalid block"];
            v209 = v208;
            dictionary2 = v410;
            if (error)
            {
              v210 = *error;
              v211 = MEMORY[0x277CCA9B8];
              if (*error)
              {
                v212 = *MEMORY[0x277CCA7E8];
                v463[0] = *MEMORY[0x277CCA450];
                v463[1] = v212;
                v464[0] = v208;
                v464[1] = v210;
                v213 = MEMORY[0x277CBEAC0];
                v214 = v464;
                v215 = v463;
                v216 = 2;
              }

              else
              {
                v465 = *MEMORY[0x277CCA450];
                v466 = v208;
                v213 = MEMORY[0x277CBEAC0];
                v214 = &v466;
                v215 = &v465;
                v216 = 1;
              }

              v347 = [v213 dictionaryWithObjects:v214 forKeys:v215 count:v216];
              *error = [v211 errorWithDomain:@"ATL" code:3 userInfo:v347];

              moduleCopy = v428;
            }

            v172 = v419;
LABEL_318:
            v158 = v433;
            goto LABEL_319;
          }

          v170 = [MogulDecoder decodeTransactionHistoryEntry:v167];
          if (v170)
          {
            [array4 addObject:v170];
          }

          v171 = v166++;
        }

        while (v171 < 4);
        [dictionary setObject:array4 forKeyedSubscript:@"TransactionHistory"];

        v172 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:22027 withBlockNumber:0 withTransceiver:historyCopy withError:error];

        v173 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:22027 withBlockNumber:1 withTransceiver:historyCopy withError:error];

        if (v172 && v173)
        {
          v411 = historyCopy;
          v414 = v173;
          v175 = [MogulDecoder decodePointsData:v172 andWith:v173];
          v176 = v175;
          if (v175)
          {
            v443 = 0u;
            v444 = 0u;
            v441 = 0u;
            v442 = 0u;
            v177 = [v175 countByEnumeratingWithState:&v441 objects:v462 count:16];
            if (v177)
            {
              v178 = v177;
              v179 = *v442;
              do
              {
                for (j = 0; j != v178; ++j)
                {
                  if (*v442 != v179)
                  {
                    objc_enumerationMutation(v176);
                  }

                  v181 = *(*(&v441 + 1) + 8 * j);
                  v460[0] = @"Balance";
                  balance = [v181 balance];
                  v461[0] = balance;
                  v461[1] = @"XXX";
                  v460[1] = @"BalanceCurrency";
                  v460[2] = @"BalanceCurrencyExponent";
                  v461[2] = &unk_2843C6AB8;
                  v460[3] = @"BalanceExpirationDate";
                  expiration = [v181 expiration];
                  v461[3] = expiration;
                  v460[4] = @"BalanceIdentifier";
                  name = [v181 name];
                  v461[4] = name;
                  v185 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v461 forKeys:v460 count:5];
                  [v433 addObject:v185];
                }

                v178 = [v176 countByEnumeratingWithState:&v441 objects:v462 count:16];
              }

              while (v178);
            }
          }

          v186 = v410;
          [v410 setObject:v433 forKeyedSubscript:@"Balances"];
          [dictionary setObject:v410 forKeyedSubscript:@"State"];

          v187 = 0;
          v188 = 0;
          v66 = 0;
          historyCopy = v411;
          packageCopy = v422;
          moduleCopy = v428;
          goto LABEL_197;
        }

        v328 = ATLLogObject(v174);
        if (os_log_type_enabled(v328, OS_LOG_TYPE_ERROR))
        {
          *v517 = 0;
          _os_log_impl(&dword_22EEF5000, v328, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul loyalty points, invalid blocks", v517, 2u);
        }

        v329 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul loyalty points, invalid blocks"];
        array4 = v329;
        v158 = v433;
        v102 = v173;
        if (error)
        {
          v330 = *error;
          v331 = MEMORY[0x277CCA9B8];
          dictionary2 = v410;
          if (*error)
          {
            v332 = *MEMORY[0x277CCA7E8];
            v456[0] = *MEMORY[0x277CCA450];
            v456[1] = v332;
            v457[0] = v329;
            v457[1] = v330;
            v333 = MEMORY[0x277CBEAC0];
            v334 = v457;
            v335 = v456;
            v336 = 2;
          }

          else
          {
            v458 = *MEMORY[0x277CCA450];
            v459 = v329;
            v333 = MEMORY[0x277CBEAC0];
            v334 = &v459;
            v335 = &v458;
            v336 = 1;
          }

          v396 = [v333 dictionaryWithObjects:v334 forKeys:v335 count:v336];
          *error = [v331 errorWithDomain:@"ATL" code:3 userInfo:v396];

          goto LABEL_318;
        }

        dictionary2 = v410;
LABEL_319:

        v17 = v438;
      }

      else
      {
        v198 = ATLLogObject(v160);
        if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
        {
          *v517 = 0;
          _os_log_impl(&dword_22EEF5000, v198, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul purse balance, invalid block", v517, 2u);
        }

        v199 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul purse balance, invalid block"];
        v172 = v199;
        v17 = v438;
        if (error)
        {
          v200 = *error;
          v201 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v202 = *MEMORY[0x277CCA7E8];
            v467[0] = *MEMORY[0x277CCA450];
            v467[1] = v202;
            v468[0] = v199;
            v468[1] = v200;
            v203 = MEMORY[0x277CBEAC0];
            v204 = v468;
            v205 = v467;
            v206 = 2;
          }

          else
          {
            v469 = *MEMORY[0x277CCA450];
            v470 = v199;
            v203 = MEMORY[0x277CBEAC0];
            v204 = &v470;
            v205 = &v469;
            v206 = 1;
          }

          array4 = [v203 dictionaryWithObjects:v204 forKeys:v205 count:v206];
          *error = [v201 errorWithDomain:@"ATL" code:3 userInfo:array4];
          goto LABEL_319;
        }
      }

LABEL_321:
      goto LABEL_347;
    }

    if (v48 != 5)
    {
      goto LABEL_59;
    }

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    [dictionary3 setObject:&unk_2843C6B60 forKeyedSubscript:@"SPRaw"];
    v66 = FelicaGetDataFileSystemCommand(279, 0);
    v418 = dictionary3;
    if (!v66)
    {
      v408 = 0;
      v70 = 0;
      v68 = 0;
      goto LABEL_86;
    }

    v67 = [historyCopy transceiveAndCheckSW:v66 error:error];
    v68 = v67;
    if (!v67)
    {
      v190 = 0;
      v70 = 0;
      goto LABEL_312;
    }

    v69 = FeliCaGetBlockDataFromGetDataCommand(v67);
    if (v69)
    {
      v70 = v69;
      v71 = [OctopusDecoder getPurseBalance:v69];
      if (v71)
      {
        v408 = v71;
LABEL_86:
        v138 = FelicaGetDataFileSystemCommand(1800, 0);

        if (!v138)
        {
          v139 = v68;
          goto LABEL_221;
        }

        v139 = [historyCopy transceiveAndCheckSW:v138 error:error];

        if (v139)
        {
          v140 = moduleCopy;
          v141 = FeliCaGetBlockDataFromGetDataCommand(v139);

          if (v141)
          {
            v143 = [OctopusDecoder getLoyaltyBalance:v141];
            [v418 setObject:v143 forKeyedSubscript:@"PointBalance"];
            v70 = v141;
          }

          else
          {
            v143 = ATLLogObject(v142);
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              *v517 = 67109634;
              v518 = 1800;
              v519 = 1024;
              *v520 = 0;
              *&v520[4] = 2112;
              *&v520[6] = v139;
              _os_log_impl(&dword_22EEF5000, v143, OS_LOG_TYPE_DEFAULT, "Octopus Rewards : GET DATA for Service Code %d and block %d is invalid: %@", v517, 0x18u);
            }

            v70 = 0;
          }

          moduleCopy = v140;

          dictionary3 = v418;
LABEL_221:
          v435 = v138;
          v315 = [dictionary3 objectForKeyedSubscript:@"PointBalance"];

          if (!v315)
          {
            v317 = ATLLogObject(v316);
            if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
            {
              *v517 = 0;
              _os_log_impl(&dword_22EEF5000, v317, OS_LOG_TYPE_DEFAULT, "failed to retrieved rewards", v517, 2u);
            }
          }

          v318 = v139;
          date = [MEMORY[0x277CBEAA8] date];
          v66 = FelicaGetDataFileSystemCommand(776, 0);

          v430 = moduleCopy;
          if (v66)
          {
            v416 = date;
            v68 = [historyCopy transceiveAndCheckSW:v66 error:error];

            if (v68)
            {
              v321 = FeliCaGetBlockDataFromGetDataCommand(v68);

              if (v321)
              {
                v323 = [OctopusDecoder getBaseDate:v321];

                v405 = [OctopusDecoder getNegativeValueLimit:v321];
                v70 = v321;
                v324 = [OctopusDecoder getAAVSAmount:v321];
                if (v324)
                {
                  v325 = v418;
                  [v418 setObject:v324 forKeyedSubscript:@"CardDefaultAAVSAmount"];
                }

                else
                {
                  v348 = packageCopy;
                  v349 = ATLLogObject(0);
                  if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
                  {
                    *v517 = 0;
                    _os_log_impl(&dword_22EEF5000, v349, OS_LOG_TYPE_DEFAULT, "failed to retrieved AAVS amount", v517, 2u);
                  }

                  packageCopy = v348;
                  v325 = v418;
                }

                if (v405)
                {
                  v320 = v408;
                  if (v408)
                  {
                    v350 = [v408 decimalNumberBySubtracting:?];
                    [v325 setObject:v350 forKeyedSubscript:@"Balance"];

                    *v517 = 0;
                    v326 = [ATLCurrency currencyCodeForNumber:344 exponentOut:v517];
                    if (v326)
                    {
                      [v325 setObject:v326 forKeyedSubscript:@"CardCurrency"];
                      [MEMORY[0x277CCABB0] numberWithShort:*v517];
                      v352 = v351 = packageCopy;
                      [v418 setObject:v352 forKeyedSubscript:@"CardCurrencyExponent"];

                      packageCopy = v351;
                      [v418 setObject:&unk_2843C6BF0 forKeyedSubscript:@"CardCurrencyCode"];
                    }

LABEL_261:

                    v416 = v323;
                    array5 = [MEMORY[0x277CBEB18] array];
                    v353 = 0;
                    v436 = v68;
                    moduleCopy = v430;
                    v17 = v438;
                    v424 = packageCopy;
                    while (1)
                    {
                      v354 = v66;
                      v66 = FelicaGetDataFileSystemCommand(1036, v353);

                      if (v66)
                      {
                        v68 = [historyCopy transceiveAndCheckSW:v66 error:error];

                        if (!v68)
                        {
                          v327 = 0;
                          goto LABEL_289;
                        }

                        v436 = v68;
                        v355 = FeliCaGetBlockDataFromGetDataCommand(v68);

                        if (v355)
                        {
                          v357 = [OctopusDecoder parseTLOGBlock:v355 withBaseDate:v416];
                          if (v357)
                          {
                            v358 = [v418 objectForKeyedSubscript:@"CardDefaultAAVSAmount"];
                            v359 = [v418 objectForKeyedSubscript:@"Balance"];
                            v360 = [OctopusDecoder injectTLOGAAVS:v357 withAAVSAmount:v358 andBalance:v359];

                            if (![OctopusDecoder filterHistoryEntry:v357])
                            {
                              [array5 addObject:v357];
                            }

                            if (v360)
                            {
                              [array5 addObject:v360];
                            }

                            packageCopy = v424;
                            v17 = v438;
                          }
                        }

                        else
                        {
                          v357 = ATLLogObject(v356);
                          if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                          {
                            *v517 = 67109634;
                            v518 = 1036;
                            v519 = 1024;
                            *v520 = v353;
                            *&v520[4] = 2112;
                            *&v520[6] = v436;
                            _os_log_impl(&dword_22EEF5000, v357, OS_LOG_TYPE_DEFAULT, "Octopus TLOG : GET DATA for Service Code %d and block %d is invalid: %@", v517, 0x18u);
                          }

                          v355 = 0;
                        }

                        v70 = v355;
                        moduleCopy = v430;
                      }

                      if (++v353 == 10)
                      {
                        v361 = FelicaGetDataFileSystemCommand(520, 0);

                        if (v361)
                        {
                          v68 = [historyCopy transceiveAndCheckSW:v361 error:error];

                          if (v68)
                          {
                            v439 = v361;
                            v362 = FeliCaGetBlockDataFromGetDataCommand(v68);

                            if (v362)
                            {
                              v364 = moduleCopy;
                              v365 = [MEMORY[0x277CCABB0] numberWithInt:{+[OctopusDecoder isDenyListed:](OctopusDecoder, "isDenyListed:", v362)}];
                              [v418 setObject:v365 forKeyedSubscript:@"CardDenyListed"];

                              moduleCopy = v364;
                              v366 = v418;
                              v70 = v362;
                              v361 = v439;
                              goto LABEL_282;
                            }

                            v381 = ATLLogObject(v363);
                            if (os_log_type_enabled(v381, OS_LOG_TYPE_ERROR))
                            {
                              *v517 = 67109634;
                              v518 = 520;
                              v519 = 1024;
                              *v520 = 0;
                              *&v520[4] = 2112;
                              *&v520[6] = v68;
                              _os_log_impl(&dword_22EEF5000, v381, OS_LOG_TYPE_ERROR, "Octopus Card Settings : GET DATA for Service Code %d and block %d is invalid: %@", v517, 0x18u);
                            }

                            v382 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Octopus Card Settings : GET DATA for Service Code %d and block %d is invalid: %@", 520, 0, v68];
                            v383 = v382;
                            if (error)
                            {
                              v384 = moduleCopy;
                              v385 = packageCopy;
                              v386 = *error;
                              v387 = MEMORY[0x277CCA9B8];
                              if (*error)
                              {
                                v388 = *MEMORY[0x277CCA7E8];
                                v505[0] = *MEMORY[0x277CCA450];
                                v505[1] = v388;
                                v506[0] = v382;
                                v506[1] = v386;
                                v389 = MEMORY[0x277CBEAC0];
                                v390 = v506;
                                v391 = v505;
                                v392 = 2;
                              }

                              else
                              {
                                v507 = *MEMORY[0x277CCA450];
                                v508 = v382;
                                v389 = MEMORY[0x277CBEAC0];
                                v390 = &v508;
                                v391 = &v507;
                                v392 = 1;
                              }

                              v402 = [v389 dictionaryWithObjects:v390 forKeys:v391 count:v392];
                              *error = [v387 errorWithDomain:@"ATL" code:3 userInfo:v402];

                              packageCopy = v385;
                              moduleCopy = v384;
                            }

                            v393 = 0;
                            v327 = 0;
                            v66 = v439;
                            v367 = array5;
LABEL_333:

                            v338 = v405;
                            goto LABEL_334;
                          }

                          v327 = 0;
                          v66 = v361;
LABEL_289:
                          v367 = array5;
                        }

                        else
                        {
                          v68 = v436;
                          v366 = v418;
LABEL_282:
                          v66 = FelicaGetDataFileSystemCommand(2312, 0);

                          v367 = array5;
                          if (v66)
                          {
                            v368 = [historyCopy transceiveAndCheckSW:v66 error:0];

                            if (v368)
                            {
                              v369 = FeliCaGetBlockDataFromGetDataCommand(v368);

                              if (v369)
                              {
                                if ([OctopusDecoder getEnRouteStatus:v369])
                                {
                                  [MEMORY[0x277CBEB18] arrayWithObject:@"TransitTrain"];
                                  v371 = v370 = moduleCopy;
                                  [v418 setObject:v371 forKeyedSubscript:@"TransactionInProgress"];

                                  moduleCopy = v370;
                                  v366 = v418;
                                }

                                v70 = v369;
                              }

                              else
                              {
                                v70 = 0;
                              }
                            }
                          }

                          else
                          {
                            v368 = v68;
                          }

                          [dictionary setObject:array5 forKeyedSubscript:@"TransactionHistory"];
                          [dictionary setObject:v366 forKeyedSubscript:@"State"];
                          v327 = 1;
                          v68 = v368;
                        }

                        v393 = v70;
                        goto LABEL_333;
                      }
                    }
                  }
                }

LABEL_231:
                v326 = ATLLogObject(v320);
                if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
                {
                  *v517 = 0;
                  _os_log_impl(&dword_22EEF5000, v326, OS_LOG_TYPE_DEFAULT, "failed to retrieved negative value limit", v517, 2u);
                }

                goto LABEL_261;
              }

              v337 = ATLLogObject(v322);
              if (os_log_type_enabled(v337, OS_LOG_TYPE_ERROR))
              {
                *v517 = 67109634;
                v518 = 776;
                v519 = 1024;
                *v520 = 0;
                *&v520[4] = 2112;
                *&v520[6] = v68;
                _os_log_impl(&dword_22EEF5000, v337, OS_LOG_TYPE_ERROR, "Octopus Internal : GET DATA for Service Code %d and block %d is invalid: %@", v517, 0x18u);
              }

              v338 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Octopus Internal : GET DATA for Service Code %d and block %d is invalid: %@", 776, 0, v68];
              if (error)
              {
                v339 = *error;
                v340 = MEMORY[0x277CCA9B8];
                v405 = v338;
                if (*error)
                {
                  v341 = *MEMORY[0x277CCA7E8];
                  v509[0] = *MEMORY[0x277CCA450];
                  v509[1] = v341;
                  v510[0] = v338;
                  v510[1] = v339;
                  v342 = MEMORY[0x277CBEAC0];
                  v343 = v510;
                  v344 = v509;
                  v345 = 2;
                }

                else
                {
                  v511 = *MEMORY[0x277CCA450];
                  v512 = v338;
                  v342 = MEMORY[0x277CBEAC0];
                  v343 = &v512;
                  v344 = &v511;
                  v345 = 1;
                }

                v401 = [v342 dictionaryWithObjects:v343 forKeys:v344 count:v345];
                [v340 errorWithDomain:@"ATL" code:3 userInfo:v401];
                v393 = 0;
                *error = v327 = 0;
                v367 = v401;
                goto LABEL_333;
              }

              v393 = 0;
              v327 = 0;
LABEL_334:

              v70 = v393;
            }

            else
            {
              v327 = 0;
            }

            if ((v327 & 1) == 0)
            {
              goto LABEL_348;
            }

            goto LABEL_336;
          }

          v405 = 0;
          v68 = v318;
          v323 = date;
          goto LABEL_231;
        }

        v68 = 0;
        v66 = v138;
        v190 = v408;
LABEL_312:

        goto LABEL_348;
      }

      v217 = packageCopy;
      v295 = ATLLogObject(0);
      if (os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
      {
        *v517 = 0;
        _os_log_impl(&dword_22EEF5000, v295, OS_LOG_TYPE_ERROR, "failed to retrieved balance", v517, 2u);
      }

      v296 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to retrieved balance"];
      v220 = v296;
      if (error)
      {
        v221 = moduleCopy;
        v297 = *error;
        v298 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v299 = *MEMORY[0x277CCA7E8];
          v521[0] = *MEMORY[0x277CCA450];
          v521[1] = v299;
          v522[0] = v296;
          v522[1] = v297;
          v300 = MEMORY[0x277CBEAC0];
          v301 = v522;
          v302 = v521;
          v303 = 2;
        }

        else
        {
          v523 = *MEMORY[0x277CCA450];
          v524 = v296;
          v300 = MEMORY[0x277CBEAC0];
          v301 = &v524;
          v302 = &v523;
          v303 = 1;
        }

        v372 = [v300 dictionaryWithObjects:v301 forKeys:v302 count:v303];
        v373 = [v298 errorWithDomain:@"ATL" code:3 userInfo:v372];
LABEL_310:
        *error = v373;

        packageCopy = v217;
        moduleCopy = v221;
        goto LABEL_311;
      }
    }

    else
    {
      v217 = packageCopy;
      v218 = ATLLogObject(0);
      if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
      {
        *v517 = 67109634;
        v518 = 279;
        v519 = 1024;
        *v520 = 0;
        *&v520[4] = 2112;
        *&v520[6] = v68;
        _os_log_impl(&dword_22EEF5000, v218, OS_LOG_TYPE_ERROR, "Octopus Purse : GET DATA for Service Code %d and block %d is invalid: %@", v517, 0x18u);
      }

      v219 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Octopus Purse : GET DATA for Service Code %d and block %d is invalid: %@", 279, 0, v68];
      v220 = v219;
      if (error)
      {
        v221 = moduleCopy;
        v222 = *error;
        v223 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v224 = *MEMORY[0x277CCA7E8];
          v513[0] = *MEMORY[0x277CCA450];
          v513[1] = v224;
          v514[0] = v219;
          v514[1] = v222;
          v225 = MEMORY[0x277CBEAC0];
          v226 = v514;
          v227 = v513;
          v228 = 2;
        }

        else
        {
          v515 = *MEMORY[0x277CCA450];
          v516 = v219;
          v225 = MEMORY[0x277CBEAC0];
          v226 = &v516;
          v227 = &v515;
          v228 = 1;
        }

        v372 = [v225 dictionaryWithObjects:v226 forKeys:v227 count:v228];
        v373 = [v223 errorWithDomain:@"ATL" code:3 userInfo:v372];
        v70 = 0;
        goto LABEL_310;
      }

      v70 = 0;
    }

    packageCopy = v217;
LABEL_311:

    v190 = 0;
    v17 = v438;
    dictionary3 = v418;
    goto LABEL_312;
  }

  v35 = v34;
  v36 = ATLLogObject(v34);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *v517 = 67109120;
    v518 = v35;
    _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Failed to decode SELECT response contents %d", v517, 8u);
  }

  v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode SELECT response contents %d", v35];
  v38 = v37;
  if (error)
  {
    v39 = *error;
    v40 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v41 = *MEMORY[0x277CCA7E8];
      v529[0] = *MEMORY[0x277CCA450];
      v529[1] = v41;
      v530[0] = v37;
      v530[1] = v39;
      v42 = MEMORY[0x277CBEAC0];
      v43 = v530;
      v44 = v529;
      v45 = 2;
    }

    else
    {
      v531 = *MEMORY[0x277CCA450];
      v532 = v37;
      v42 = MEMORY[0x277CBEAC0];
      v43 = &v532;
      v44 = &v531;
      v45 = 1;
    }

    v72 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
    [v40 errorWithDomain:@"ATL" code:3 userInfo:v72];
    *error = v33 = 0;
    goto LABEL_350;
  }

  v33 = 0;
LABEL_351:
  v19 = v440;

LABEL_352:

  return v33;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Supported";
  v9[1] = @"DelayExpressReentry";
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_2843C6AE8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:{2, transceiver, error}];

  return v7;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v85[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  appletCopy = applet;
  v12 = appletCopy;
  if (transactionCopy)
  {
    self->_eotInProgress = 1;
    v13 = [MEMORY[0x277CBEA90] dataWithHexString:appletCopy];
    v14 = EndOfTransactionCmd(v13, 0);
    v15 = [transactionCopy transceive:v14 error:0];
    v16 = SelectByNameCmd(v13);

    v17 = [transactionCopy transceiveAndCheckSW:v16 error:error];
    v62[0] = [v17 bytes];
    v62[1] = [v17 length];
    v60 = 0;
    v61[0] = 0;
    v61[1] = 0;
    DERFindItem(v62, 0xA000000000000005, &v60);
    if (v18)
    {
      v19 = v18;
      v20 = ATLLogObject(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Failed to find tag 'A5' in Slalom SELECT response, %d", buf, 8u);
      }

      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to find tag 'A5' in Slalom SELECT response, %d", v19];
      v22 = v21;
      if (!error)
      {
        goto LABEL_30;
      }

      v23 = *error;
      v24 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v25 = *MEMORY[0x277CCA7E8];
        v78[0] = *MEMORY[0x277CCA450];
        v78[1] = v25;
        v79[0] = v21;
        v79[1] = v23;
        v26 = MEMORY[0x277CBEAC0];
        v27 = v79;
        v28 = v78;
LABEL_19:
        v45 = 2;
LABEL_29:
        v50 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v45];
        *error = [v24 errorWithDomain:@"ATL" code:3 userInfo:v50];

LABEL_30:
        self->_eotInProgress = 0;
        [(NSMutableArray *)self->_hciArray removeAllObjects];
        dictionary = 0;
LABEL_31:

        goto LABEL_32;
      }

      v80 = *MEMORY[0x277CCA450];
      v81 = v21;
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v81;
      v28 = &v80;
      goto LABEL_28;
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    *buf = 0u;
    v39 = DERParseSequenceSpec(v61, &selectResponseA5ContentSpec, buf, 0x18uLL);
    if (v39)
    {
      v40 = v39;
      v41 = ATLLogObject(v39);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *v69 = 67109120;
        v70 = v40;
        _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_ERROR, "Failed to decode SELECT response contents %d", v69, 8u);
      }

      v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode SELECT response contents %d", v40];
      v22 = v42;
      if (!error)
      {
        goto LABEL_30;
      }

      v43 = *error;
      v24 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v44 = *MEMORY[0x277CCA7E8];
        v65[0] = *MEMORY[0x277CCA450];
        v65[1] = v44;
        v66[0] = v42;
        v66[1] = v43;
        v26 = MEMORY[0x277CBEAC0];
        v27 = v66;
        v28 = v65;
        goto LABEL_19;
      }

      v67 = *MEMORY[0x277CCA450];
      v68 = v42;
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v68;
      v28 = &v67;
LABEL_28:
      v45 = 1;
      goto LABEL_29;
    }

    v48 = *v76;
    if (v48 == 3)
    {
      v49 = off_2788744B0;
    }

    else
    {
      if (v48 != 2)
      {
        self->_eotInProgress = 0;
        [(NSMutableArray *)self->_hciArray removeAllObjects];
        goto LABEL_43;
      }

      v49 = off_2788744C0;
    }

    v52 = [(__objc2_class *)*v49 generateEndEventFromHCI:self->_hciArray withTransceiver:transactionCopy];
    [(NSMutableArray *)self->_hciArray removeAllObjects];
    if (v52)
    {
      v53 = [v52 objectForKeyedSubscript:@"NFServiceProviderID"];
      v59 = [v52 objectForKeyedSubscript:@"readOnly"];
      unsignedShortValue = [v53 unsignedShortValue];
      v55 = -4095;
      if ([SlalomDecoder isJREServiceProviderID:unsignedShortValue])
      {
        v57 = v59;
      }

      else
      {
        v56 = unsignedShortValue & 0xFE;
        v57 = v59;
        if (v56 != 4)
        {
          if ([v59 BOOLValue])
          {
            v55 = -4094;
          }

          else
          {
            v55 = -4095;
          }
        }
      }

      goto LABEL_46;
    }

LABEL_43:
    v63 = @"NFServiceProviderID";
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v48];
    v64 = v53;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v55 = -4094;
LABEL_46:

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v12 forKeyedSubscript:@"appletIdentifier"];
    [dictionary setObject:&unk_2843C6B00 forKeyedSubscript:@"type"];
    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v55];
    [dictionary setObject:v58 forKeyedSubscript:@"result"];

    [dictionary setObject:v52 forKeyedSubscript:@"felicaInfo"];
    self->_eotInProgress = 0;

    goto LABEL_31;
  }

  v29 = ATLLogObject(appletCopy);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Transceiver is required to process End of Transaction method call.", buf, 2u);
  }

  v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Transceiver is required to process End of Transaction method call."];
  v31 = v30;
  if (error)
  {
    v32 = *error;
    v33 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v82[0] = *MEMORY[0x277CCA450];
      v82[1] = v34;
      v83[0] = v30;
      v83[1] = v32;
      v35 = MEMORY[0x277CBEAC0];
      v36 = v83;
      v37 = v82;
      v38 = 2;
    }

    else
    {
      v84 = *MEMORY[0x277CCA450];
      v85[0] = v30;
      v35 = MEMORY[0x277CBEAC0];
      v36 = v85;
      v37 = &v84;
      v38 = 1;
    }

    v46 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
    *error = [v33 errorWithDomain:@"ATL" code:4 userInfo:v46];
  }

  [(NSMutableArray *)self->_hciArray removeAllObjects];
  dictionary = 0;
LABEL_32:

  return dictionary;
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v216[1] = *MEMORY[0x277D85DE8];
  transceiverCopy = transceiver;
  v10 = [MEMORY[0x277CBEA90] dataWithHexString:data];
  v11 = SelectByNameCmd(v10);

  v12 = [transceiverCopy transceiveAndCheckSW:v11 error:error];
  v13 = v12;
  if (!v12)
  {
LABEL_17:
    v39 = 0;
    goto LABEL_112;
  }

  v163[0] = [v12 bytes];
  v163[1] = [v13 length];
  v161 = 0;
  v162[0] = 0;
  v162[1] = 0;
  DERFindItem(v163, 0xA000000000000005, &v161);
  if (v14)
  {
    v15 = v14;
    v16 = ATLLogObject(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v15;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Failed to find tag 'A5' in Slalom SELECT response, %d", &buf, 8u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to find tag 'A5' in Slalom SELECT response, %d", v15];
    v18 = v17;
    if (error)
    {
      v19 = *error;
      v20 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v21 = *MEMORY[0x277CCA7E8];
        v213[0] = *MEMORY[0x277CCA450];
        v213[1] = v21;
        v214[0] = v17;
        v214[1] = v19;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v214;
        v24 = v213;
        v25 = 2;
      }

      else
      {
        v215 = *MEMORY[0x277CCA450];
        v216[0] = v17;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v216;
        v24 = &v215;
        v25 = 1;
      }

      v38 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
      *error = [v20 errorWithDomain:@"ATL" code:3 userInfo:v38];
    }

    goto LABEL_17;
  }

  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  buf = 0u;
  v26 = DERParseSequenceSpec(v162, &selectResponseA5ContentSpec, &buf, 0x18uLL);
  if (v26)
  {
    v27 = v26;
    v28 = ATLLogObject(v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v204 = 67109120;
      v205 = v27;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Failed to decode SELECT response contents %d", v204, 8u);
    }

    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode SELECT response contents %d", v27];
    v30 = v29;
    if (error)
    {
      v31 = *error;
      v32 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v33 = *MEMORY[0x277CCA7E8];
        v200[0] = *MEMORY[0x277CCA450];
        v200[1] = v33;
        v201[0] = v29;
        v201[1] = v31;
        v34 = MEMORY[0x277CBEAC0];
        v35 = v201;
        v36 = v200;
        v37 = 2;
      }

      else
      {
        v202 = *MEMORY[0x277CCA450];
        v203 = v29;
        v34 = MEMORY[0x277CBEAC0];
        v35 = &v203;
        v36 = &v202;
        v37 = 1;
      }

      v41 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:v37];
      v56 = v32;
      v57 = 3;
LABEL_27:
      [v56 errorWithDomain:@"ATL" code:v57 userInfo:v41];
      *error = v39 = 0;
LABEL_110:

      goto LABEL_111;
    }

    goto LABEL_40;
  }

  v40 = *v211;
  if (v40 == 7)
  {
    v30 = objc_opt_new();
    v58 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:0 withTransceiver:transceiverCopy withError:error];
    v59 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:1 withTransceiver:transceiverCopy withError:error];
    v41 = v59;
    if (v58)
    {
      v60 = [GondolaDecoder decodeCardNumberFromBlock0:v58 andBlock1:v59];
      asHexString = [v60 asHexString];
      [v30 setObject:asHexString forKeyedSubscript:@"CardNumber"];

      v62 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26647 withBlockNumber:0 withTransceiver:transceiverCopy withError:error];

      if (v62)
      {
        v64 = [v62 subdataWithOffset:0 length:4];
        asHexString2 = [v64 asHexString];
        [v30 setObject:asHexString2 forKeyedSubscript:@"Balance"];

        v66 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:1 withTransceiver:transceiverCopy withError:error];

        v67 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:0 withTransceiver:transceiverCopy withError:error];

        if (!v66 || !v67)
        {
          v110 = ATLLogObject(v68);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            *v204 = 0;
            _os_log_impl(&dword_22EEF5000, v110, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v204, 2u);
          }

          v111 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
          v112 = v111;
          if (error)
          {
            v113 = *error;
            v114 = MEMORY[0x277CCA9B8];
            if (*error)
            {
              v115 = *MEMORY[0x277CCA7E8];
              v176[0] = *MEMORY[0x277CCA450];
              v176[1] = v115;
              v177[0] = v111;
              v177[1] = v113;
              v116 = MEMORY[0x277CBEAC0];
              v117 = v177;
              v118 = v176;
              v119 = 2;
            }

            else
            {
              v178 = *MEMORY[0x277CCA450];
              v179 = v111;
              v116 = MEMORY[0x277CBEAC0];
              v117 = &v179;
              v118 = &v178;
              v119 = 1;
            }

            v148 = [v116 dictionaryWithObjects:v117 forKeys:v118 count:v119];
            *error = [v114 errorWithDomain:@"ATL" code:8 userInfo:v148];
          }

          goto LABEL_107;
        }

        v69 = [v66 subdataWithOffset:3 length:3];
        asHexString3 = [v69 asHexString];
        [v30 setObject:asHexString3 forKeyedSubscript:@"EntryDate"];

        v71 = [MEMORY[0x277CCABB0] numberWithBool:{+[GondolaDecoder isCardUsageFlag:](GondolaDecoder, "isCardUsageFlag:", v67)}];
        [v30 setObject:v71 forKeyedSubscript:@"UsageStartFlag"];

        v72 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v66, "u8:", 12)}];
        [v30 setObject:v72 forKeyedSubscript:@"BrandApplicationStatus"];

        v73 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26699 withBlockNumber:0 withTransceiver:transceiverCopy withError:error];

        if (v73)
        {
          asHexString4 = [v73 asHexString];
          [v30 setObject:asHexString4 forKeyedSubscript:@"PointBlock"];

          v67 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:7 withTransceiver:transceiverCopy withError:error];

          if (v67)
          {
            v77 = [v67 subdataWithOffset:4 length:5];
            asHexString5 = [v77 asHexString];
            [v30 setObject:asHexString5 forKeyedSubscript:@"BitData9"];

            v39 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v30 options:1 error:error];
LABEL_108:
            v41 = v66;
            goto LABEL_109;
          }

          v149 = ATLLogObject(v76);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            *v204 = 0;
            _os_log_impl(&dword_22EEF5000, v149, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v204, 2u);
          }

          v150 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
          v67 = v150;
          if (!error)
          {
LABEL_107:
            v39 = 0;
            goto LABEL_108;
          }

          v151 = *error;
          v142 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v152 = *MEMORY[0x277CCA7E8];
            v168[0] = *MEMORY[0x277CCA450];
            v168[1] = v152;
            v169[0] = v150;
            v169[1] = v151;
            v144 = MEMORY[0x277CBEAC0];
            v145 = v169;
            v146 = v168;
            goto LABEL_95;
          }

          v170 = *MEMORY[0x277CCA450];
          v171 = v150;
          v144 = MEMORY[0x277CBEAC0];
          v145 = &v171;
          v146 = &v170;
        }

        else
        {
          v139 = ATLLogObject(v74);
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            *v204 = 0;
            _os_log_impl(&dword_22EEF5000, v139, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v204, 2u);
          }

          v140 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
          v67 = v140;
          if (!error)
          {
            goto LABEL_107;
          }

          v141 = *error;
          v142 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v143 = *MEMORY[0x277CCA7E8];
            v172[0] = *MEMORY[0x277CCA450];
            v172[1] = v143;
            v173[0] = v140;
            v173[1] = v141;
            v144 = MEMORY[0x277CBEAC0];
            v145 = v173;
            v146 = v172;
LABEL_95:
            v153 = 2;
LABEL_106:
            v156 = [v144 dictionaryWithObjects:v145 forKeys:v146 count:v153];
            *error = [v142 errorWithDomain:@"ATL" code:8 userInfo:v156];

            goto LABEL_107;
          }

          v174 = *MEMORY[0x277CCA450];
          v175 = v140;
          v144 = MEMORY[0x277CBEAC0];
          v145 = &v175;
          v146 = &v174;
        }

        v153 = 1;
        goto LABEL_106;
      }

      v105 = ATLLogObject(v63);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        *v204 = 0;
        _os_log_impl(&dword_22EEF5000, v105, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v204, 2u);
      }

      v106 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
      v67 = v106;
      if (!error)
      {
LABEL_86:
        v39 = 0;
LABEL_109:

        goto LABEL_110;
      }

      v107 = *error;
      v100 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v108 = *MEMORY[0x277CCA7E8];
        v180[0] = *MEMORY[0x277CCA450];
        v180[1] = v108;
        v181[0] = v106;
        v181[1] = v107;
        v102 = MEMORY[0x277CBEAC0];
        v103 = v181;
        v104 = v180;
        goto LABEL_56;
      }

      v182 = *MEMORY[0x277CCA450];
      v183 = v106;
      v102 = MEMORY[0x277CBEAC0];
      v103 = &v183;
      v104 = &v182;
    }

    else
    {
      v97 = ATLLogObject(v59);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        *v204 = 0;
        _os_log_impl(&dword_22EEF5000, v97, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v204, 2u);
      }

      v98 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
      v67 = v98;
      if (!error)
      {
        goto LABEL_86;
      }

      v99 = *error;
      v100 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v101 = *MEMORY[0x277CCA7E8];
        v184[0] = *MEMORY[0x277CCA450];
        v184[1] = v101;
        v185[0] = v98;
        v185[1] = v99;
        v102 = MEMORY[0x277CBEAC0];
        v103 = v185;
        v104 = v184;
LABEL_56:
        v109 = 2;
LABEL_85:
        v147 = [v102 dictionaryWithObjects:v103 forKeys:v104 count:v109];
        *error = [v100 errorWithDomain:@"ATL" code:8 userInfo:v147];

        goto LABEL_86;
      }

      v186 = *MEMORY[0x277CCA450];
      v187 = v98;
      v102 = MEMORY[0x277CBEAC0];
      v103 = &v187;
      v104 = &v186;
    }

    v109 = 1;
    goto LABEL_85;
  }

  if (v40 == 4)
  {
    v30 = objc_opt_new();
    v41 = objc_opt_new();
    [v41 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    v42 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:0 withTransceiver:transceiverCopy withError:error];
    v43 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:1 withTransceiver:transceiverCopy withError:error];
    v44 = v43;
    if (v42 && v43)
    {
      v158 = [MogulDecoder decodeCardID:v42];
      asHexString6 = [v158 asHexString];
      [v30 setObject:asHexString6 forKeyedSubscript:@"CardNumber"];

      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{+[MogulDecoder decodeTopupFlag:](MogulDecoder, "decodeTopupFlag:", v44)}];
      [v30 setObject:v46 forKeyedSubscript:@"TopUpFlag"];

      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{+[MogulDecoder decodeTopupSettings:](MogulDecoder, "decodeTopupSettings:", v44)}];
      [v30 setObject:v47 forKeyedSubscript:@"TopUpSettings"];

      v48 = [MEMORY[0x277CCABB0] numberWithInt:{+[MogulDecoder decodeEnableFlag:](MogulDecoder, "decodeEnableFlag:", v44)}];
      [v30 setObject:v48 forKeyedSubscript:@"EffectiveFlag"];

      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{+[MogulDecoder decodeStatusFlag:](MogulDecoder, "decodeStatusFlag:", v44)}];
      [v30 setObject:v49 forKeyedSubscript:@"StatusFlag"];

      v50 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21911 withBlockNumber:0 withTransceiver:transceiverCopy withError:error];

      if (v50)
      {
        asHexString7 = [v50 asHexString];
        [v30 setObject:asHexString7 forKeyedSubscript:@"BalanceBlock"];

        [SlalomDecoder getDataAndCheckFeliCaServiceCode:22027 withBlockNumber:1 withTransceiver:transceiverCopy withError:error];
        v53 = v42 = v50;

        if (v53)
        {
          asHexString8 = [v53 asHexString];
          [v30 setObject:asHexString8 forKeyedSubscript:@"PointBlock"];

          v39 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v30 options:1 error:error];
        }

        else
        {
          v160 = v42;
          v130 = ATLLogObject(v54);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            *v204 = 0;
            _os_log_impl(&dword_22EEF5000, v130, OS_LOG_TYPE_ERROR, "Failed to decode Mogul SP Opaque Data", v204, 2u);
          }

          v131 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Mogul SP Opaque Data"];
          v53 = v131;
          if (error)
          {
            v132 = *error;
            v133 = MEMORY[0x277CCA9B8];
            if (*error)
            {
              v134 = *MEMORY[0x277CCA7E8];
              v188[0] = *MEMORY[0x277CCA450];
              v188[1] = v134;
              v189[0] = v131;
              v189[1] = v132;
              v135 = MEMORY[0x277CBEAC0];
              v136 = v189;
              v137 = v188;
              v138 = 2;
            }

            else
            {
              v190 = *MEMORY[0x277CCA450];
              v191 = v131;
              v135 = MEMORY[0x277CBEAC0];
              v136 = &v191;
              v137 = &v190;
              v138 = 1;
            }

            v155 = [v135 dictionaryWithObjects:v136 forKeys:v137 count:v138];
            *error = [v133 errorWithDomain:@"ATL" code:8 userInfo:v155];
          }

          v39 = 0;
          v42 = v160;
        }
      }

      else
      {
        v120 = ATLLogObject(v51);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          *v204 = 0;
          _os_log_impl(&dword_22EEF5000, v120, OS_LOG_TYPE_ERROR, "Failed to decode Mogul SP Opaque Data", v204, 2u);
        }

        v121 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Mogul SP Opaque Data"];
        v53 = v121;
        if (error)
        {
          v122 = *error;
          v123 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v124 = *MEMORY[0x277CCA7E8];
            v192[0] = *MEMORY[0x277CCA450];
            v192[1] = v124;
            v193[0] = v121;
            v193[1] = v122;
            v125 = MEMORY[0x277CBEAC0];
            v126 = v193;
            v127 = v192;
            v128 = 2;
          }

          else
          {
            v194 = *MEMORY[0x277CCA450];
            v195 = v121;
            v125 = MEMORY[0x277CBEAC0];
            v126 = &v195;
            v127 = &v194;
            v128 = 1;
          }

          v154 = [v125 dictionaryWithObjects:v126 forKeys:v127 count:v128];
          *error = [v123 errorWithDomain:@"ATL" code:8 userInfo:v154];
        }

        v39 = 0;
        v42 = v44;
      }
    }

    else
    {
      v88 = ATLLogObject(v43);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *v204 = 0;
        _os_log_impl(&dword_22EEF5000, v88, OS_LOG_TYPE_ERROR, "Failed to decode Mogul SP Opaque Data", v204, 2u);
      }

      v89 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Mogul SP Opaque Data"];
      v90 = v89;
      if (error)
      {
        v91 = *error;
        v159 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v92 = *MEMORY[0x277CCA7E8];
          v196[0] = *MEMORY[0x277CCA450];
          v196[1] = v92;
          v197[0] = v89;
          v197[1] = v91;
          v93 = MEMORY[0x277CBEAC0];
          v94 = v197;
          v95 = v196;
          v96 = 2;
        }

        else
        {
          v198 = *MEMORY[0x277CCA450];
          v199 = v89;
          v93 = MEMORY[0x277CBEAC0];
          v94 = &v199;
          v95 = &v198;
          v96 = 1;
        }

        v129 = [v93 dictionaryWithObjects:v94 forKeys:v95 count:v96];
        *error = [v159 errorWithDomain:@"ATL" code:8 userInfo:v129];
      }

      v39 = 0;
      v53 = v44;
    }

    goto LABEL_110;
  }

  v79 = ATLLogObject(v26);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    *v204 = 67109120;
    v205 = v40;
    _os_log_impl(&dword_22EEF5000, v79, OS_LOG_TYPE_ERROR, "No Opaque Data for TypeF provider %d", v204, 8u);
  }

  v80 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No Opaque Data for TypeF provider %d", v40];
  v30 = v80;
  if (error)
  {
    v81 = *error;
    v82 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v83 = *MEMORY[0x277CCA7E8];
      v164[0] = *MEMORY[0x277CCA450];
      v164[1] = v83;
      v165[0] = v80;
      v165[1] = v81;
      v84 = MEMORY[0x277CBEAC0];
      v85 = v165;
      v86 = v164;
      v87 = 2;
    }

    else
    {
      v166 = *MEMORY[0x277CCA450];
      v167 = v80;
      v84 = MEMORY[0x277CBEAC0];
      v85 = &v167;
      v86 = &v166;
      v87 = 1;
    }

    v41 = [v84 dictionaryWithObjects:v85 forKeys:v86 count:v87];
    v56 = v82;
    v57 = 2;
    goto LABEL_27;
  }

LABEL_40:
  v39 = 0;
LABEL_111:

LABEL_112:

  return v39;
}

+ (id)getDataAndCheckFeliCaServiceCode:(unsigned __int16)code withBlockNumber:(unsigned __int8)number withTransceiver:(id)transceiver withError:(id *)error
{
  numberCopy = number;
  codeCopy = code;
  v36 = *MEMORY[0x277D85DE8];
  transceiverCopy = transceiver;
  v10 = FelicaGetDataFileSystemCommand(codeCopy, numberCopy);
  if (v10)
  {
    v11 = [transceiverCopy transceiveAndCheckSW:v10 error:error];
    v12 = v11;
    if (v11)
    {
      v13 = FeliCaGetBlockDataFromGetDataCommand(v11);
    }

    else
    {
      v14 = ATLLogObject(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        v31 = codeCopy;
        v32 = 1024;
        v33 = numberCopy;
        v34 = 2112;
        v35 = 0;
        _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "FeliCa GET DATA for Service Code %d and block %d is invalid: %@", buf, 0x18u);
      }

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"FeliCa GET DATA for Service Code %d and block %d is invalid: %@", codeCopy, numberCopy, 0];
      v16 = v15;
      if (error)
      {
        v17 = *error;
        v18 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v19 = *MEMORY[0x277CCA7E8];
          v26[0] = *MEMORY[0x277CCA450];
          v26[1] = v19;
          v27[0] = v15;
          v27[1] = v17;
          v20 = MEMORY[0x277CBEAC0];
          v21 = v27;
          v22 = v26;
          v23 = 2;
        }

        else
        {
          v28 = *MEMORY[0x277CCA450];
          v29 = v15;
          v20 = MEMORY[0x277CBEAC0];
          v21 = &v29;
          v22 = &v28;
          v23 = 1;
        }

        v24 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
        *error = [v18 errorWithDomain:@"ATL" code:3 userInfo:v24];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isJREServiceProviderID:(unsigned __int8)d
{
  if (d > 8u)
  {
    return d > 0xDFu;
  }

  result = 1;
  if (((1 << d) & 0x142) == 0)
  {
    return d > 0xDFu;
  }

  return result;
}

@end