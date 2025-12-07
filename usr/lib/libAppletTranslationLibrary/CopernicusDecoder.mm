@interface CopernicusDecoder
+ (BOOL)supportsStepUp:(id)up;
+ (id)getInstance;
- (CopernicusDecoder)init;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)_stringFromASCIIBytes:(id *)bytes;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)handleApplicationSpecific:(id)specific appletAID:(id)d error:(id *)error;
- (id)handleControlFlow:(id)flow appletAID:(id)d error:(id *)error;
- (id)handleEventInDummy:(unsigned __int8)dummy eventData:(id)data appletAID:(id)d error:(id *)error;
- (id)handleEventInFast:(unsigned __int8)fast eventData:(id)data appletAID:(id)d error:(id *)error;
- (id)handleEventInIdle:(unsigned __int8)idle eventVersion:(unsigned __int8)version eventData:(id)data appletAID:(id)d error:(id *)error;
- (id)handleEventInStandard:(unsigned __int8)standard eventData:(id)data appletAID:(id)d error:(id *)error;
- (id)handleFailure:(unsigned __int8)failure appletAID:(id)d error:(id *)error;
- (id)handleFailureWithImmediateExit:(unsigned __int8)exit appletAID:(id)d error:(id *)error;
- (id)handleMessageInExchange:(id)exchange appletAID:(id)d error:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (void)cleanup;
- (void)parseHomeSpecificCFParameters:(id *)parameters into:(id)into;
@end

@implementation CopernicusDecoder

+ (id)getInstance
{
  if (getInstance_onceToken_0 != -1)
  {
    +[CopernicusDecoder getInstance];
  }

  v3 = getInstance_inst_0;

  return v3;
}

uint64_t __32__CopernicusDecoder_getInstance__block_invoke()
{
  getInstance_inst_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (CopernicusDecoder)init
{
  v6.receiver = self;
  v6.super_class = CopernicusDecoder;
  v2 = [(CopernicusDecoder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CopernicusDecoder *)v2 setEndPointIdentifier:0];
    [(CopernicusDecoder *)v3 setReaderIdentifier:0];
    [(CopernicusDecoder *)v3 setState:0];
    [(CopernicusDecoder *)v3 setTransactionType:0xFFFFFFFFLL];
    v4 = objc_opt_new();
    [(CopernicusDecoder *)v3 setStepUpData:v4];

    [AppletTranslator registerForCleanup:v3];
  }

  return v3;
}

- (void)cleanup
{
  v7 = *MEMORY[0x277D85DE8];
  state = [(CopernicusDecoder *)self state];
  if (state)
  {
    v4 = ATLLogObject(state);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = [(CopernicusDecoder *)self state];
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_INFO, "Clearing non-idle Copernicus state %d", v6, 8u);
    }

    [(CopernicusDecoder *)self setEndPointIdentifier:0];
    [(CopernicusDecoder *)self setState:0];
    [(CopernicusDecoder *)self setTransactionType:0xFFFFFFFFLL];
    stepUpData = [(CopernicusDecoder *)self stepUpData];
    [stepUpData removeAllObjects];
  }
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v13 = [eventCopy length];
  if (v13 <= 1)
  {
    v14 = ATLLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v70 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
    v16 = v15;
    if (!error)
    {
      goto LABEL_31;
    }

    v17 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v73[0] = *MEMORY[0x277CCA450];
      v73[1] = *MEMORY[0x277CCA7E8];
      v74[0] = v15;
      v74[1] = v17;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v74;
      v21 = v73;
      v22 = 2;
    }

    else
    {
      v75 = *MEMORY[0x277CCA450];
      v76[0] = v15;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v76;
      v21 = &v75;
      v22 = 1;
    }

    v45 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    v46 = v18;
    v47 = 6;
LABEL_30:
    *error = [v46 errorWithDomain:@"ATL" code:v47 userInfo:v45];

LABEL_31:
LABEL_32:
    v48 = 0;
    goto LABEL_33;
  }

  v23 = [eventCopy u8:0];
  v24 = [eventCopy u8:1];
  v25 = v24;
  if ((v24 - 16) >= 3)
  {
    v33 = ATLLogObject(v24);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v70 = v25;
      v71 = 1024;
      state = v23;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Decoder only support version 0x10, 0x11, and 0x12 of HCI event, got version=0x%02X with eventType=0x%02X", buf, 0xEu);
    }

    v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Decoder only support version 0x10, 0x11, and 0x12 of HCI event, got version=0x%02X with eventType=0x%02X", v25, v23];
    v16 = v34;
    if (!error)
    {
      goto LABEL_31;
    }

    v35 = *error;
    v36 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v37 = *MEMORY[0x277CCA7E8];
      v65[0] = *MEMORY[0x277CCA450];
      v65[1] = v37;
      v66[0] = v34;
      v66[1] = v35;
      v38 = MEMORY[0x277CBEAC0];
      v39 = v66;
      v40 = v65;
      v41 = 2;
    }

    else
    {
      v67 = *MEMORY[0x277CCA450];
      v68 = v34;
      v38 = MEMORY[0x277CBEAC0];
      v39 = &v68;
      v40 = &v67;
      v41 = 1;
    }

    v45 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:v41];
    v46 = v36;
    v47 = 3;
    goto LABEL_30;
  }

  if (v23 == 23)
  {
    v24 = [eventCopy length];
    if (v24 >= 4)
    {
      v60 = 0;
      v26 = [eventCopy subdataWithRange:{2, 2}];
      [v26 getBytes:&v60 length:2];

      v28 = ATLLogObject(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v70 = bswap32(v60) >> 16;
        v29 = "Fatal Copernicus Error: 0x%04X";
        v30 = v28;
        v31 = OS_LOG_TYPE_ERROR;
        v32 = 8;
LABEL_39:
        _os_log_impl(&dword_22EEF5000, v30, v31, v29, buf, v32);
        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  v42 = ATLLogObject(v24);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v70 = v23;
    v71 = 1024;
    state = [(CopernicusDecoder *)self state];
    _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEFAULT, "Received event 0x%02X in state %d", buf, 0xEu);
  }

  state2 = [(CopernicusDecoder *)self state];
  if (state2 > 2)
  {
    if ((state2 - 3) < 2)
    {
      v44 = [(CopernicusDecoder *)self handleEventInDummy:v23 eventData:eventCopy appletAID:appletCopy error:error];
      goto LABEL_48;
    }

    if (state2 == 5)
    {
      v28 = ATLLogObject(state2);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "Transaction already ended . . .";
        v30 = v28;
        v31 = OS_LOG_TYPE_DEFAULT;
        v32 = 2;
        goto LABEL_39;
      }

LABEL_40:

      goto LABEL_32;
    }

LABEL_42:
    v50 = ATLLogObject(state2);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      state3 = [(CopernicusDecoder *)self state];
      *buf = 67109120;
      v70 = state3;
      _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_ERROR, "Invalid state %d", buf, 8u);
    }

    v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid state %d", -[CopernicusDecoder state](self, "state")];
    v16 = v52;
    if (!error)
    {
      goto LABEL_31;
    }

    v53 = *error;
    v54 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v55 = *MEMORY[0x277CCA7E8];
      v61[0] = *MEMORY[0x277CCA450];
      v61[1] = v55;
      v62[0] = v52;
      v62[1] = v53;
      v56 = MEMORY[0x277CBEAC0];
      v57 = v62;
      v58 = v61;
      v59 = 2;
    }

    else
    {
      v63 = *MEMORY[0x277CCA450];
      v64 = v52;
      v56 = MEMORY[0x277CBEAC0];
      v57 = &v64;
      v58 = &v63;
      v59 = 1;
    }

    v45 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:v59];
    v46 = v54;
    v47 = 8;
    goto LABEL_30;
  }

  if (!state2)
  {
    v44 = [(CopernicusDecoder *)self handleEventInIdle:v23 eventVersion:v25 eventData:eventCopy appletAID:appletCopy error:error];
    goto LABEL_48;
  }

  if (state2 == 1)
  {
    v44 = [(CopernicusDecoder *)self handleEventInStandard:v23 eventData:eventCopy appletAID:appletCopy error:error];
    goto LABEL_48;
  }

  if (state2 != 2)
  {
    goto LABEL_42;
  }

  v44 = [(CopernicusDecoder *)self handleEventInFast:v23 eventData:eventCopy appletAID:appletCopy error:error];
LABEL_48:
  v48 = v44;
LABEL_33:

  return v48;
}

- (id)handleEventInIdle:(unsigned __int8)idle eventVersion:(unsigned __int8)version eventData:(id)data appletAID:(id)d error:(id *)error
{
  versionCopy = version;
  idleCopy = idle;
  v113 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  v14 = dCopy;
  v15 = 0;
  if (idleCopy <= 0xF)
  {
    if (((1 << idleCopy) & 0xAF00) != 0)
    {
      goto LABEL_86;
    }

    if (((1 << idleCopy) & 0xE0) != 0)
    {
      v16 = [dataCopy length];
      if (v16 <= 0x17)
      {
        v17 = ATLLogObject(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109888;
          *v110 = idleCopy;
          *&v110[4] = 1024;
          *&v110[6] = versionCopy;
          *&v110[10] = 2048;
          *&v110[12] = 24;
          v111 = 1024;
          v112 = [dataCopy length];
          _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Event type %d with version 0x%x expected length at least 0x%lx, got 0x%x", buf, 0x1Eu);
        }

        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Event type %d with version 0x%x expected length at least 0x%lx, got 0x%x", idleCopy, versionCopy, 24, objc_msgSend(dataCopy, "length")];
        v19 = v18;
        if (!error)
        {
          goto LABEL_84;
        }

        v20 = *error;
        v21 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v22 = *MEMORY[0x277CCA7E8];
          v105[0] = *MEMORY[0x277CCA450];
          v105[1] = v22;
          v106[0] = v18;
          v106[1] = v20;
          v23 = MEMORY[0x277CBEAC0];
          v24 = v106;
          v25 = v105;
LABEL_46:
          v57 = 2;
LABEL_83:
          v92 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v57];
          *error = [v21 errorWithDomain:@"ATL" code:3 userInfo:v92];

          goto LABEL_84;
        }

        v107 = *MEMORY[0x277CCA450];
        v108 = v18;
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v108;
        v25 = &v107;
        goto LABEL_82;
      }

      switch(versionCopy)
      {
        case 0x12:
          bytes = [dataCopy bytes];
          v27 = bswap32(*(bytes + 22)) >> 16;
          v28 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 2 length:20];
          v59 = MEMORY[0x277CBEA90];
          v60 = [dataCopy length] - 26;
          v61 = bytes + 26;
          break;
        case 0x11:
          bytes2 = [dataCopy bytes];
          v27 = bswap32(*(bytes2 + 22)) >> 16;
          v28 = [MEMORY[0x277CBEA90] dataWithBytes:bytes2 + 2 length:20];
          v59 = MEMORY[0x277CBEA90];
          v60 = [dataCopy length] - 24;
          v61 = bytes2 + 24;
          break;
        case 0x10:
          bytes3 = [dataCopy bytes];
          v27 = bswap32(*(bytes3 + 22)) >> 16;
          v28 = [MEMORY[0x277CBEA90] dataWithBytes:bytes3 + 2 length:20];
          v29 = 0;
LABEL_50:
          v94 = v28;
          asHexString = [v28 asHexString];
          [(CopernicusDecoder *)self setEndPointIdentifier:asHexString];

          asHexString2 = [v29 asHexString];
          [(CopernicusDecoder *)self setReaderIdentifier:asHexString2];

          if (idleCopy == 6)
          {
            v65 = 2;
          }

          else
          {
            v65 = 1;
          }

          [(CopernicusDecoder *)self setState:v65];
          [(CopernicusDecoder *)self setTransactionType:v27];
          v66 = &unk_2843C6500;
          if (![CopernicusDecoder isHomeAID:v14]&& ![CopernicusDecoder isHydraAID:v14])
          {
            v66 = &unk_2843C6518;
          }

          v99[0] = @"EventType";
          v99[1] = @"appletIdentifier";
          v100[0] = @"StartEvent";
          v100[1] = v14;
          v100[2] = &unk_2843C6530;
          v99[2] = @"selectStatus";
          v99[3] = @"command";
          v67 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          v100[3] = v67;
          v99[4] = @"endPointIdentifier";
          endPointIdentifier = [(CopernicusDecoder *)self endPointIdentifier];
          v100[4] = endPointIdentifier;
          v99[5] = @"BackgroundTransaction";
          v69 = [MEMORY[0x277CCABB0] numberWithInt:{-[CopernicusDecoder transactionType](self, "transactionType") == 5}];
          v100[5] = v69;
          v99[6] = @"ptaTransactionMode";
          if (idleCopy == 5)
          {
            v70 = 2;
          }

          else
          {
            v70 = 1;
          }

          v71 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v70];
          v100[6] = v71;
          v100[7] = MEMORY[0x277CBEC38];
          v99[7] = @"IgnoreRFEvents";
          v99[8] = @"DontWaitForEOT";
          v100[8] = MEMORY[0x277CBEC38];
          v100[9] = MEMORY[0x277CBEC28];
          v99[9] = @"RequiresPowerCycle";
          v99[10] = @"DelayExpressReentry";
          v100[10] = v66;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:11];

          v72 = v94;
          goto LABEL_60;
        default:
          v73 = ATLLogObject(v16);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v110 = idleCopy;
            *&v110[4] = 1024;
            *&v110[6] = versionCopy;
            _os_log_impl(&dword_22EEF5000, v73, OS_LOG_TYPE_ERROR, "Event type %d with unrecognized version 0x%x", buf, 0xEu);
          }

          versionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Event type %d with unrecognized version 0x%x", idleCopy, versionCopy];
          v72 = versionCopy;
          if (!error)
          {
            v15 = 0;
            goto LABEL_61;
          }

          v75 = *error;
          v76 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v77 = *MEMORY[0x277CCA7E8];
            v101[0] = *MEMORY[0x277CCA450];
            v101[1] = v77;
            v102[0] = versionCopy;
            v102[1] = v75;
            v78 = MEMORY[0x277CBEAC0];
            v79 = v102;
            v80 = v101;
            v81 = 2;
          }

          else
          {
            v103 = *MEMORY[0x277CCA450];
            v104 = versionCopy;
            v78 = MEMORY[0x277CBEAC0];
            v79 = &v104;
            v80 = &v103;
            v81 = 1;
          }

          v29 = [v78 dictionaryWithObjects:v79 forKeys:v80 count:v81];
          [v76 errorWithDomain:@"ATL" code:3 userInfo:v29];
          *error = v15 = 0;
LABEL_60:

LABEL_61:
          goto LABEL_86;
      }

      v29 = [v59 dataWithBytes:v61 length:v60];
      goto LABEL_50;
    }

    if (idleCopy == 14)
    {
      v30 = [dataCopy length];
      if (v30 == 23)
      {
        bytes4 = [dataCopy bytes];
        v32 = [MEMORY[0x277CBEA90] dataWithBytes:bytes4 + 2 length:20];
        asHexString3 = [v32 asHexString];
        [(CopernicusDecoder *)self setEndPointIdentifier:asHexString3];

        if (*(bytes4 + 22))
        {
          v34 = 3;
        }

        else
        {
          v34 = 4;
        }

        [(CopernicusDecoder *)self setState:v34];
        goto LABEL_85;
      }

      v53 = ATLLogObject(v30);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v110 = 23;
        *&v110[8] = 1024;
        *&v110[10] = [dataCopy length];
        _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_ERROR, "Event type 0x0E expected length 0x%lx got 0x%x", buf, 0x12u);
      }

      v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Event type 0x0E expected length 0x%lx got 0x%x", 23, objc_msgSend(dataCopy, "length")];
      v19 = v54;
      if (!error)
      {
        goto LABEL_84;
      }

      v55 = *error;
      v21 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v56 = *MEMORY[0x277CCA7E8];
        v95[0] = *MEMORY[0x277CCA450];
        v95[1] = v56;
        v96[0] = v54;
        v96[1] = v55;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v96;
        v25 = v95;
        goto LABEL_46;
      }

      v97 = *MEMORY[0x277CCA450];
      v98 = v54;
      v23 = MEMORY[0x277CBEAC0];
      v24 = &v98;
      v25 = &v97;
LABEL_82:
      v57 = 1;
      goto LABEL_83;
    }
  }

  if ((idleCopy - 1) < 2)
  {
    goto LABEL_86;
  }

  if ((idleCopy - 3) >= 2)
  {
    v19 = ATLLogObject(dCopy);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 67109120;
    *v110 = idleCopy;
    v42 = "Unknown event type 0x%02X, ignoring";
    goto LABEL_31;
  }

  if (idleCopy == 4)
  {
    v35 = 3;
  }

  else
  {
    v35 = 4;
  }

  v36 = [(CopernicusDecoder *)self setState:v35];
  if (versionCopy == 17)
  {
    if ([dataCopy length] == 32)
    {
      bytes5 = [dataCopy bytes];
      v43 = ATLLogObject(bytes5);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *(bytes5 + 31);
        *buf = 67109120;
        *v110 = v44;
        _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_DEFAULT, "Reason for endpoint not found: %d", buf, 8u);
      }

      if (*(bytes5 + 31) != 4)
      {
        v45 = [MEMORY[0x277CBEA90] dataWithBytes:bytes5 + 2 length:20];
        asHexString4 = [v45 asHexString];
        [(CopernicusDecoder *)self setEndPointIdentifier:asHexString4];
      }

      v41 = MEMORY[0x277CBEA90];
      goto LABEL_38;
    }

    v82 = [dataCopy length];
    if (v82 != 40)
    {
      v19 = ATLLogObject(v82);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_78:
        asHexString5 = [dataCopy asHexString];
        *buf = 138412290;
        *v110 = asHexString5;
        v50 = "No endpoint to retrieve: %@";
        v51 = v19;
        v52 = 12;
        goto LABEL_79;
      }

LABEL_84:

      goto LABEL_85;
    }

    bytes6 = [dataCopy bytes];
    v84 = ATLLogObject(bytes6);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = *(bytes6 + 39);
      *buf = 67109120;
      *v110 = v85;
      _os_log_impl(&dword_22EEF5000, v84, OS_LOG_TYPE_DEFAULT, "Reason for endpoint not found: %d", buf, 8u);
    }

    if (*(bytes6 + 39) != 4)
    {
      v86 = [MEMORY[0x277CBEA90] dataWithBytes:bytes6 + 2 length:20];
      asHexString6 = [v86 asHexString];
      [(CopernicusDecoder *)self setEndPointIdentifier:asHexString6];
    }

    v88 = [MEMORY[0x277CBEA90] dataWithBytes:bytes6 + 22 length:16];
    asHexString7 = [v88 asHexString];
    [(CopernicusDecoder *)self setReaderIdentifier:asHexString7];

    v19 = ATLLogObject(v90);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    v91 = *(bytes6 + 39);
    *buf = 67109120;
    *v110 = v91;
    v42 = "Reason for endpoint not found: %d";
LABEL_31:
    _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEFAULT, v42, buf, 8u);
    goto LABEL_84;
  }

  if (versionCopy != 16)
  {
    v19 = ATLLogObject(v36);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      asHexString5 = [dataCopy asHexString];
      *buf = 67109378;
      *v110 = versionCopy;
      *&v110[4] = 2112;
      *&v110[6] = asHexString5;
      v50 = "Unexpected event version %d for event %@";
      v51 = v19;
      v52 = 18;
LABEL_79:
      _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_DEFAULT, v50, buf, v52);

      goto LABEL_84;
    }

    goto LABEL_84;
  }

  v37 = [dataCopy length];
  if (v37 != 31)
  {
    v19 = ATLLogObject(v37);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    goto LABEL_84;
  }

  bytes5 = [dataCopy bytes];
  v39 = [MEMORY[0x277CBEA90] dataWithBytes:bytes5 + 2 length:20];
  asHexString8 = [v39 asHexString];
  [(CopernicusDecoder *)self setEndPointIdentifier:asHexString8];

  v41 = MEMORY[0x277CBEA90];
LABEL_38:
  v47 = [v41 dataWithBytes:bytes5 + 22 length:8];
  asHexString9 = [v47 asHexString];
  [(CopernicusDecoder *)self setReaderIdentifier:asHexString9];

LABEL_85:
  v15 = 0;
LABEL_86:

  return v15;
}

- (id)handleEventInStandard:(unsigned __int8)standard eventData:(id)data appletAID:(id)d error:(id *)error
{
  standardCopy = standard;
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  v12 = dCopy;
  v13 = 0;
  if (standardCopy > 7)
  {
    if (standardCopy <= 10)
    {
      if (standardCopy == 8)
      {
        v14 = [(CopernicusDecoder *)self handleFailureWithImmediateExit:8 appletAID:dCopy error:error];
      }

      else
      {
        if (standardCopy == 9)
        {
          goto LABEL_20;
        }

        v14 = [(CopernicusDecoder *)self handleApplicationSpecific:dataCopy appletAID:dCopy error:error];
      }

      goto LABEL_19;
    }

    if ((standardCopy - 14) < 2)
    {
      goto LABEL_20;
    }

    if (standardCopy == 11)
    {
      v14 = [(CopernicusDecoder *)self handleFailure:11 appletAID:dCopy error:error];
      goto LABEL_19;
    }

    if (standardCopy == 13)
    {
      v14 = [(CopernicusDecoder *)self handleMessageInExchange:dataCopy appletAID:dCopy error:error];
      goto LABEL_19;
    }
  }

  else
  {
    if ((standardCopy - 3) < 5 || standardCopy == 1)
    {
      goto LABEL_20;
    }

    if (standardCopy == 2)
    {
      v14 = [(CopernicusDecoder *)self handleControlFlow:dataCopy appletAID:dCopy error:error];
LABEL_19:
      v13 = v14;
      goto LABEL_20;
    }
  }

  v15 = ATLLogObject(dCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = standardCopy;
    _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, "Unknown event type 0x%02X, ignoring", v17, 8u);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)handleEventInFast:(unsigned __int8)fast eventData:(id)data appletAID:(id)d error:(id *)error
{
  fastCopy = fast;
  v21[9] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  v12 = dCopy;
  v13 = 0;
  if (fastCopy > 7)
  {
    if (fastCopy <= 0xF)
    {
      if (((1 << fastCopy) & 0x6600) != 0)
      {
        goto LABEL_20;
      }

      if (fastCopy == 11)
      {
        if ([CopernicusDecoder isAutomotiveAID:dCopy])
        {
          endPointIdentifier = [(CopernicusDecoder *)self endPointIdentifier];
          [(CopernicusDecoder *)self setState:5];
          v20[0] = @"EventType";
          v20[1] = @"appletIdentifier";
          v21[0] = @"EndEvent";
          v21[1] = v12;
          v20[2] = @"didError";
          v20[3] = @"command";
          v21[2] = &unk_2843C6518;
          v21[3] = &unk_2843C6548;
          v20[4] = @"endPointIdentifier";
          v20[5] = @"informative";
          v21[4] = endPointIdentifier;
          v21[5] = &unk_2843C6518;
          v20[6] = @"BackgroundTransaction";
          v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[CopernicusDecoder transactionType](self, "transactionType") == 5}];
          v21[6] = v16;
          v21[7] = &unk_2843C6560;
          v20[7] = @"ptaTransactionMode";
          v20[8] = @"result";
          v21[8] = &unk_2843C6578;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:9];

          goto LABEL_20;
        }

        v14 = [(CopernicusDecoder *)self handleFailure:11 appletAID:v12 error:error];
        goto LABEL_19;
      }

      if (fastCopy == 15)
      {
        v13 = 0;
        self->_state = 1;
        goto LABEL_20;
      }
    }

    if (fastCopy == 8)
    {
      v14 = [(CopernicusDecoder *)self handleFailureWithImmediateExit:8 appletAID:dCopy error:error];
      goto LABEL_19;
    }
  }

  else
  {
    if ((fastCopy - 3) < 5 || fastCopy == 1)
    {
      goto LABEL_20;
    }

    if (fastCopy == 2)
    {
      v14 = [(CopernicusDecoder *)self handleControlFlow:dataCopy appletAID:dCopy error:error];
LABEL_19:
      v13 = v14;
      goto LABEL_20;
    }
  }

  v17 = ATLLogObject(dCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109120;
    v19[1] = fastCopy;
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEFAULT, "Unknown event type 0x%02X, ignoring", v19, 8u);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)handleEventInDummy:(unsigned __int8)dummy eventData:(id)data appletAID:(id)d error:(id *)error
{
  dummyCopy = dummy;
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  v12 = dCopy;
  if (dummyCopy > 0xF)
  {
    goto LABEL_9;
  }

  if (((1 << dummyCopy) & 0xE6FE) != 0)
  {
LABEL_3:
    v13 = 0;
    goto LABEL_4;
  }

  if (((1 << dummyCopy) & 0x900) == 0)
  {
LABEL_9:
    v15 = ATLLogObject(dCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109120;
      v16[1] = dummyCopy;
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, "Unknown event type 0x%02X, ignoring", v16, 8u);
    }

    goto LABEL_3;
  }

  v13 = [(CopernicusDecoder *)self handleFailureWithImmediateExit:dummyCopy appletAID:dCopy error:error];
LABEL_4:

  return v13;
}

- (id)handleControlFlow:(id)flow appletAID:(id)d error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  dCopy = d;
  v10 = [flowCopy length];
  if (v10 <= 3)
  {
    v11 = ATLLogObject(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = 4;
      *&buf[12] = 1024;
      *&buf[14] = [flowCopy length];
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Event type 0x02 expected length 0x%lx got 0x%x", buf, 0x12u);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Event type 0x02 expected length 0x%lx got 0x%x", 4, objc_msgSend(flowCopy, "length")];
    endPointIdentifier2 = v12;
    if (!error)
    {
      goto LABEL_31;
    }

    v14 = *error;
    v15 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v51[0] = *MEMORY[0x277CCA450];
      v51[1] = v16;
      v52[0] = v12;
      v52[1] = v14;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v52;
      v19 = v51;
LABEL_17:
      v30 = 2;
LABEL_30:
      v41 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v30];
      *error = [v15 errorWithDomain:@"ATL" code:3 userInfo:v41];

LABEL_31:
      v40 = 0;
      goto LABEL_32;
    }

    v53 = *MEMORY[0x277CCA450];
    v54 = v12;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v54;
    v19 = &v53;
    goto LABEL_29;
  }

  endPointIdentifier = [(CopernicusDecoder *)self endPointIdentifier];

  if (!endPointIdentifier)
  {
    v26 = ATLLogObject(v21);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Control flow with no endPointIdentifier?!", buf, 2u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Control flow with no endPointIdentifier?!"];
    endPointIdentifier2 = v27;
    if (!error)
    {
      goto LABEL_31;
    }

    v28 = *error;
    v15 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v29 = *MEMORY[0x277CCA7E8];
      v47[0] = *MEMORY[0x277CCA450];
      v47[1] = v29;
      v48[0] = v27;
      v48[1] = v28;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v48;
      v19 = v47;
      goto LABEL_17;
    }

    v49 = *MEMORY[0x277CCA450];
    v50 = v27;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v50;
    v19 = &v49;
LABEL_29:
    v30 = 1;
    goto LABEL_30;
  }

  bytes = [flowCopy bytes];
  v23 = bytes;
  v24 = *(bytes + 2);
  if (v24 >= 2)
  {
    endPointIdentifier2 = ATLLogObject(bytes);
    if (os_log_type_enabled(endPointIdentifier2, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(v23 + 2);
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_impl(&dword_22EEF5000, endPointIdentifier2, OS_LOG_TYPE_DEFAULT, "Ignoring CF with P1 0x%X", buf, 8u);
    }

    goto LABEL_31;
  }

  v25 = *(bytes + 2) && [(CopernicusDecoder *)self state]== 1 && [CopernicusDecoder isAutomotiveAID:dCopy];
  endPointIdentifier2 = [(CopernicusDecoder *)self endPointIdentifier];
  state = [(CopernicusDecoder *)self state];
  [(CopernicusDecoder *)self setState:5];
  v45[0] = @"EventType";
  v45[1] = @"appletIdentifier";
  v46[0] = @"EndEvent";
  v46[1] = dCopy;
  v45[2] = @"didError";
  v43 = [MEMORY[0x277CCABB0] numberWithBool:v24 == 0];
  v46[2] = v43;
  v46[3] = &unk_2843C6590;
  v45[3] = @"command";
  v45[4] = @"endPointIdentifier";
  v46[4] = endPointIdentifier2;
  v45[5] = @"informative";
  v33 = [MEMORY[0x277CCABB0] numberWithInt:__rev16(*(v23 + 2))];
  v46[5] = v33;
  v45[6] = @"BackgroundTransaction";
  v44 = dCopy;
  v34 = [MEMORY[0x277CCABB0] numberWithInt:{-[CopernicusDecoder transactionType](self, "transactionType") == 5}];
  v46[6] = v34;
  v45[7] = @"result";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:(v24 != 0) << 6];
  v46[7] = v35;
  v45[8] = @"ptaTransactionMode";
  if (state == 2)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v36];
  v46[8] = v37;
  v46[9] = MEMORY[0x277CBEC28];
  v45[9] = @"DontWaitForEOT";
  v45[10] = @"ForceExpressExit";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  v46[10] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:11];
  v40 = [v39 mutableCopy];

  dCopy = v44;
  if (+[CopernicusDecoder isHomeAID:](CopernicusDecoder, "isHomeAID:", v44) && [flowCopy length] >= 5)
  {
    *buf = [flowCopy bytes] + 4;
    *&buf[8] = [flowCopy length] - 4;
    [(CopernicusDecoder *)self parseHomeSpecificCFParameters:buf into:v40];
  }

LABEL_32:

  return v40;
}

- (id)handleFailureWithImmediateExit:(unsigned __int8)exit appletAID:(id)d error:(id *)error
{
  exitCopy = exit;
  dCopy = d;
  if (self->_state - 3 > 1)
  {
    v9 = 0;
  }

  else
  {
    endPointIdentifier = [(CopernicusDecoder *)self endPointIdentifier];
    if (endPointIdentifier)
    {
      v9 = -4091;
    }

    else
    {
      v9 = -4089;
    }
  }

  v10 = 1;
  if ([(CopernicusDecoder *)self state]!= 3)
  {
    if ([(CopernicusDecoder *)self state]== 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  v11 = MEMORY[0x277CBEB38];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:exitCopy];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[CopernicusDecoder transactionType](self, "transactionType") == 5}];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
  v16 = [v11 dictionaryWithObjectsAndKeys:{@"EndEvent", @"EventType", &unk_2843C6560, @"ForceExpressExit", dCopy, @"appletIdentifier", &unk_2843C6560, @"didError", v12, @"command", v13, @"result", v14, @"BackgroundTransaction", v15, @"ptaTransactionMode", 0}];

  endPointIdentifier2 = [(CopernicusDecoder *)self endPointIdentifier];

  if (endPointIdentifier2)
  {
    endPointIdentifier3 = [(CopernicusDecoder *)self endPointIdentifier];
    [v16 setObject:endPointIdentifier3 forKeyedSubscript:@"endPointIdentifier"];
  }

  if (exitCopy == 11)
  {
    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"DontWaitForEOT"];
  }

  [(CopernicusDecoder *)self setState:5];

  return v16;
}

- (id)handleFailure:(unsigned __int8)failure appletAID:(id)d error:(id *)error
{
  failureCopy = failure;
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  endPointIdentifier = [(CopernicusDecoder *)self endPointIdentifier];

  if (endPointIdentifier)
  {
    if (failureCopy == 11)
    {
      v11 = -4096;
    }

    else
    {
      v11 = -1;
    }

    v12 = 1;
    if ([(CopernicusDecoder *)self state]!= 3)
    {
      if ([(CopernicusDecoder *)self state]== 2)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    [(CopernicusDecoder *)self setState:5];
    v29[0] = @"EventType";
    v29[1] = @"appletIdentifier";
    v30[0] = @"EndEvent";
    v30[1] = dCopy;
    v30[2] = &unk_2843C6560;
    v29[2] = @"didError";
    v29[3] = @"command";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:failureCopy];
    v30[3] = v13;
    v29[4] = @"endPointIdentifier";
    endPointIdentifier2 = [(CopernicusDecoder *)self endPointIdentifier];
    v30[4] = endPointIdentifier2;
    v30[5] = &unk_2843C6518;
    v29[5] = @"informative";
    v29[6] = @"BackgroundTransaction";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[CopernicusDecoder transactionType](self, "transactionType") == 5}];
    v30[6] = v15;
    v29[7] = @"ptaTransactionMode";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
    v30[7] = v16;
    v29[8] = @"result";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
    v30[8] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:9];
  }

  else
  {
    v19 = ATLLogObject(v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v36 = failureCopy;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Failure %d with no endpoint identifier?", buf, 8u);
    }

    failureCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failure %d with no endpoint identifier?", failureCopy];
    v13 = failureCopy;
    if (!error)
    {
      v18 = 0;
      goto LABEL_19;
    }

    v21 = *error;
    v22 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v23 = *MEMORY[0x277CCA7E8];
      v31[0] = *MEMORY[0x277CCA450];
      v31[1] = v23;
      v32[0] = failureCopy;
      v32[1] = v21;
      v24 = MEMORY[0x277CBEAC0];
      v25 = v32;
      v26 = v31;
      v27 = 2;
    }

    else
    {
      v33 = *MEMORY[0x277CCA450];
      v34 = failureCopy;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v34;
      v26 = &v33;
      v27 = 1;
    }

    endPointIdentifier2 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
    [v22 errorWithDomain:@"ATL" code:3 userInfo:endPointIdentifier2];
    *error = v18 = 0;
  }

LABEL_19:

  return v18;
}

- (id)handleApplicationSpecific:(id)specific appletAID:(id)d error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  specificCopy = specific;
  dCopy = d;
  endPointIdentifier = [(CopernicusDecoder *)self endPointIdentifier];

  if (!endPointIdentifier)
  {
    v22 = ATLLogObject(v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Application Specific with no endpoint identifier?", buf, 2u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Application Specific with no endpoint identifier?"];
    v15 = v23;
    if (!error)
    {
      goto LABEL_29;
    }

    v24 = *error;
    v17 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v49[0] = *MEMORY[0x277CCA450];
      v49[1] = v25;
      v50[0] = v23;
      v50[1] = v24;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v50;
      v21 = v49;
      goto LABEL_13;
    }

    v51 = *MEMORY[0x277CCA450];
    v52[0] = v23;
    v19 = MEMORY[0x277CBEAC0];
    v20 = v52;
    v21 = &v51;
LABEL_27:
    v26 = 1;
    goto LABEL_28;
  }

  v12 = [specificCopy length];
  if (v12 <= 3)
  {
    v13 = ATLLogObject(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = [specificCopy length];
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Event Application Specific too small %u", buf, 8u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Event Application Specific too small %u", objc_msgSend(specificCopy, "length")];
    v15 = v14;
    if (!error)
    {
      goto LABEL_29;
    }

    v16 = *error;
    v17 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v45[0] = *MEMORY[0x277CCA450];
      v45[1] = v18;
      v46[0] = v14;
      v46[1] = v16;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v46;
      v21 = v45;
LABEL_13:
      v26 = 2;
LABEL_28:
      v38 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v26];
      *error = [v17 errorWithDomain:@"ATL" code:3 userInfo:v38];

LABEL_29:
LABEL_30:
      v32 = 0;
      goto LABEL_31;
    }

    v47 = *MEMORY[0x277CCA450];
    v48 = v14;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v48;
    v21 = &v47;
    goto LABEL_27;
  }

  bytes = [specificCopy bytes];
  v28 = [CopernicusDecoder supportsStepUp:dCopy];
  if (!v28 || *(bytes + 2) != 64 || *(bytes + 3) != 160)
  {
    v35 = ATLLogObject(v28);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(bytes + 2);
      v37 = *(bytes + 3);
      *buf = 138412802;
      *&buf[4] = dCopy;
      *&buf[12] = 1024;
      *&buf[14] = v36;
      v41 = 1024;
      v42 = v37;
      _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_DEFAULT, "Not interested in Application Specific for AID %@ P1 0x%X P2 0x%X", buf, 0x18u);
    }

    goto LABEL_30;
  }

  [(CopernicusDecoder *)self setState:5];
  v43[0] = @"EventType";
  v43[1] = @"StepUpReaderData";
  stepUpData = self->_stepUpData;
  v44[0] = @"StepUpRequested";
  v44[1] = stepUpData;
  v44[2] = dCopy;
  v43[2] = @"appletIdentifier";
  v43[3] = @"endPointIdentifier";
  endPointIdentifier2 = [(CopernicusDecoder *)self endPointIdentifier];
  v44[3] = endPointIdentifier2;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
  v32 = [v31 mutableCopy];

  readerIdentifier = [(CopernicusDecoder *)self readerIdentifier];

  if (readerIdentifier)
  {
    readerIdentifier2 = [(CopernicusDecoder *)self readerIdentifier];
    [v32 setObject:readerIdentifier2 forKeyedSubscript:@"readerIdentifier"];
  }

  if (+[CopernicusDecoder isHomeAID:](CopernicusDecoder, "isHomeAID:", dCopy) && [specificCopy length] >= 5)
  {
    *buf = [specificCopy bytes] + 4;
    *&buf[8] = [specificCopy length] - 4;
    [(CopernicusDecoder *)self parseHomeSpecificCFParameters:buf into:v32];
  }

LABEL_31:

  return v32;
}

- (id)handleMessageInExchange:(id)exchange appletAID:(id)d error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  exchangeCopy = exchange;
  if (+[CopernicusDecoder supportsStepUp:](CopernicusDecoder, "supportsStepUp:", d) && [exchangeCopy length] >= 3)
  {
    v8 = [exchangeCopy length] - 3;
    v15[0] = [exchangeCopy bytes] + 2;
    v15[1] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__CopernicusDecoder_handleMessageInExchange_appletAID_error___block_invoke;
    v13[3] = &unk_278874BC8;
    v13[4] = self;
    v14 = exchangeCopy;
    v9 = DERDecodeSequenceWithBlock(v15, v13);
    if (v9)
    {
      v10 = v9;
      v11 = ATLLogObject(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v17 = v10;
        _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed to decode contents of EXCHANGE %d", buf, 8u);
      }
    }
  }

  return 0;
}

uint64_t __61__CopernicusDecoder_handleMessageInExchange_appletAID_error___block_invoke(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*a2 != 0xC000000000000000)
  {
    v6 = ATLLogObject(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v11 = *a2;
    v14 = 134217984;
    v15 = v11;
    v7 = "Ignoring exchange tag 0x%llx";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
    v10 = 12;
    goto LABEL_10;
  }

  if (a2[2] != 32)
  {
    v6 = ATLLogObject(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = a2[2];
    v14 = 134217984;
    v15 = v12;
    v7 = "StepUp -- invalid length %zx for shared secret";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_9;
  }

  v4 = [*(a1 + 40) subdataWithRange:{4, 32}];
  [*(*(a1 + 32) + 32) setObject:v4 forKeyedSubscript:@"SharedSecret"];

  v6 = ATLLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v7 = "StepUp - got shared secret over exchange";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 2;
LABEL_10:
    _os_log_impl(&dword_22EEF5000, v8, v9, v7, &v14, v10);
  }

LABEL_11:

  return 0;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "CopernicusDecoder doesn't support GetState", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CopernicusDecoder doesn't support GetState"];
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
    *error = [v12 errorWithDomain:@"ATL" code:2 userInfo:v18];
  }

  return 0;
}

+ (BOOL)supportsStepUp:(id)up
{
  upCopy = up;
  v4 = [CopernicusDecoder isHomeAID:upCopy]|| [CopernicusDecoder isHydraAID:upCopy];

  return v4;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v12[2] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v8 = &unk_2843C6500;
  if (![CopernicusDecoder isHomeAID:propertiesCopy]&& ![CopernicusDecoder isHydraAID:propertiesCopy])
  {
    v8 = &unk_2843C6518;
  }

  v11[0] = @"Supported";
  v11[1] = @"DelayExpressReentry";
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Copernicus decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Copernicus decoder doesn't expect processEndOfTransaction"];
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

- (void)parseHomeSpecificCFParameters:(id *)parameters into:(id)into
{
  v23 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__CopernicusDecoder_Home__parseHomeSpecificCFParameters_into___block_invoke;
  v16 = &unk_278874BC8;
  selfCopy = self;
  v7 = intoCopy;
  v18 = v7;
  v8 = DERDecodeSequenceWithBlock(parameters, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = ATLLogObject(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CBEA90] dataWithDERItem:{parameters, v13, v14, v15, v16, selfCopy}];
      asHexString = [v11 asHexString];
      *buf = 67109378;
      v20 = v9;
      v21 = 2112;
      v22 = asHexString;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Failed to parse additional HomeKit data (%d) - %@", buf, 0x12u);
    }
  }
}

uint64_t __62__CopernicusDecoder_Home__parseHomeSpecificCFParameters_into___block_invoke(uint64_t a1, void *a2)
{
  if (*a2 == 0x400000000000000DLL)
  {
    v3 = [*(a1 + 32) _stringFromASCIIBytes:a2 + 1];
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = @"HomeKitModel";
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  if (*a2 == 0x400000000000000CLL)
  {
    v3 = [*(a1 + 32) _stringFromASCIIBytes:a2 + 1];
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = @"HomeKitManufacturer";
LABEL_7:
      [v4 setObject:v3 forKeyedSubscript:v5];
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 0;
}

- (id)_stringFromASCIIBytes:(id *)bytes
{
  var1 = bytes->var1;
  if (var1)
  {
    var0 = bytes->var0;
    while (1)
    {
      v5 = *var0++;
      if (v5 < 0)
      {
        break;
      }

      if (!--var1)
      {
        goto LABEL_5;
      }
    }

    v6 = 0;
  }

  else
  {
LABEL_5:
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:bytes->var0 length:bytes->var1 encoding:1];
  }

  return v6;
}

@end