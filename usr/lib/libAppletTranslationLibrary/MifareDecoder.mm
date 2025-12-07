@interface MifareDecoder
+ (BOOL)didTransactionError:(unsigned __int8)error withISOParameters:(id *)parameters withTransactionResult:(unsigned __int16 *)result;
+ (BOOL)didTransactionError:(unsigned __int8)error withParameters:(id *)parameters withTransactionResult:(unsigned __int16 *)result;
+ (BOOL)getDontWaitForEOT:(unsigned __int8)t;
+ (id)ParseEndEventShort:(id)short withApplet:(id)applet error:(id *)error;
+ (id)ParseTimeoutEventISO:(id)o withApplet:(id)applet error:(id *)error;
+ (id)ParseTimeoutEventNative:(id)native withApplet:(id)applet error:(id *)error;
+ (id)getAppletStateAndHistory:(unsigned __int8)history withTransceiver:(id)transceiver withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
+ (id)getEmReentryDelayMs:(unsigned __int8)ms;
+ (id)getSPID:(id)d withApplet:(id)applet withError:(id *)error;
+ (id)getServiceProvider:(unsigned __int8)provider;
+ (id)getSubDecoder:(unsigned __int8)decoder;
+ (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error;
+ (id)parseEndEventISO:(id)o withApplet:(id)applet error:(id *)error;
+ (id)parseStartEventISO:(id)o withApplet:(id)applet error:(id *)error;
+ (id)parseStartEventNative:(id)native withApplet:(id)applet error:(id *)error;
- (BOOL)supportsPlasticCardMode:(id)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation MifareDecoder

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v12 = [eventCopy length];
  if (v12 <= 1)
  {
    v13 = ATLLogObject(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v46 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
    v15 = v14;
    if (!error)
    {
      goto LABEL_33;
    }

    v16 = *error;
    v17 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v49[0] = *MEMORY[0x277CCA450];
      v49[1] = v18;
      v50[0] = v14;
      v50[1] = v16;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v50;
      v21 = v49;
      v22 = 2;
    }

    else
    {
      v51 = *MEMORY[0x277CCA450];
      v52[0] = v14;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v52;
      v21 = &v51;
      v22 = 1;
    }

    v27 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    v28 = v17;
    v29 = 6;
LABEL_32:
    *error = [v28 errorWithDomain:@"ATL" code:v29 userInfo:v27];

LABEL_33:
    v39 = 0;
    goto LABEL_36;
  }

  v23 = [eventCopy u8:0];
  v24 = [eventCopy u8:1];
  v25 = v24;
  if (v23 == 16)
  {
    if ((v24 - 3) <= 1)
    {
      v26 = [MifareDecoder ParseTimeoutEventNative:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    if (v24 == 255)
    {
      v26 = [MifareDecoder ParseTimeoutEventISO:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v23 == 2)
  {
    if ((v24 - 3) <= 1)
    {
      v26 = [MifareDecoder parseEndEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    if (v24 == 240)
    {
      v26 = [MifareDecoder ParseEndEventShort:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    if (v24 == 255)
    {
      v26 = [MifareDecoder parseEndEventISO:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

LABEL_25:
    v30 = ATLLogObject(v24);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v46 = v23;
      v47 = 1024;
      v48 = v25;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v23, v25];
    v15 = v31;
    if (!error)
    {
      goto LABEL_33;
    }

    v32 = *error;
    v33 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v41[0] = *MEMORY[0x277CCA450];
      v41[1] = v34;
      v42[0] = v31;
      v42[1] = v32;
      v35 = MEMORY[0x277CBEAC0];
      v36 = v42;
      v37 = v41;
      v38 = 2;
    }

    else
    {
      v43 = *MEMORY[0x277CCA450];
      v44 = v31;
      v35 = MEMORY[0x277CBEAC0];
      v36 = &v44;
      v37 = &v43;
      v38 = 1;
    }

    v27 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
    v28 = v33;
    v29 = 3;
    goto LABEL_32;
  }

  if (v23 != 1)
  {
    goto LABEL_25;
  }

  if ((v24 - 3) > 1)
  {
    if (v24 == 255)
    {
      v26 = [MifareDecoder parseStartEventISO:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  v26 = [MifareDecoder parseStartEventNative:eventCopy withApplet:appletCopy error:error];
LABEL_35:
  v39 = v26;
LABEL_36:

  return v39;
}

+ (id)parseStartEventNative:(id)native withApplet:(id)applet error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  nativeCopy = native;
  appletCopy = applet;
  v9 = [nativeCopy length];
  if (v9 == 7)
  {
    bytes = [nativeCopy bytes];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"StartEvent";
    v29[1] = appletCopy;
    v28[2] = @"Version";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v29[2] = v11;
    v28[3] = @"command";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 4)) >> 16];
    v29[3] = v12;
    v28[4] = @"selectStatus";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 2)];
    v29[4] = v13;
    v28[5] = @"spIdentifier";
    v14 = [MifareDecoder getServiceProvider:*(bytes + 6)];
    v29[5] = v14;
    v29[6] = MEMORY[0x277CBEC38];
    v28[6] = @"IgnoreRFEvents";
    v28[7] = @"DontWaitForEOT";
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{+[MifareDecoder getDontWaitForEOT:](MifareDecoder, "getDontWaitForEOT:", *(bytes + 6))}];
    v29[7] = v15;
    v29[8] = MEMORY[0x277CBEC28];
    v28[8] = @"RequiresPowerCycle";
    v28[9] = @"DelayExpressReentry";
    v16 = [MifareDecoder getEmReentryDelayMs:*(bytes + 6)];
    v29[9] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  }

  else
  {
    v18 = ATLLogObject(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = [nativeCopy length];
      v36 = 2048;
      v37 = 7;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(nativeCopy, "length"), 7];
    v11 = v19;
    if (!error)
    {
      v17 = 0;
      goto LABEL_12;
    }

    v20 = *error;
    v21 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v30[0] = *MEMORY[0x277CCA450];
      v30[1] = v22;
      v31[0] = v19;
      v31[1] = v20;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v31;
      v25 = v30;
      v26 = 2;
    }

    else
    {
      v32 = *MEMORY[0x277CCA450];
      v33 = v19;
      v23 = MEMORY[0x277CBEAC0];
      v24 = &v33;
      v25 = &v32;
      v26 = 1;
    }

    v12 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    [v21 errorWithDomain:@"ATL" code:3 userInfo:v12];
    *error = v17 = 0;
  }

LABEL_12:

  return v17;
}

+ (id)parseStartEventISO:(id)o withApplet:(id)applet error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  oCopy = o;
  appletCopy = applet;
  v9 = [oCopy length];
  if (v9 == 10)
  {
    bytes = [oCopy bytes];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"StartEvent";
    v29[1] = appletCopy;
    v28[2] = @"Version";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v29[2] = v11;
    v28[3] = @"command";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes + 5))];
    v29[3] = v12;
    v28[4] = @"selectStatus";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 2)) >> 16];
    v29[4] = v13;
    v28[5] = @"spIdentifier";
    v14 = [MifareDecoder getServiceProvider:*(bytes + 9)];
    v29[5] = v14;
    v29[6] = MEMORY[0x277CBEC38];
    v28[6] = @"IgnoreRFEvents";
    v28[7] = @"DontWaitForEOT";
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{+[MifareDecoder getDontWaitForEOT:](MifareDecoder, "getDontWaitForEOT:", *(bytes + 9))}];
    v29[7] = v15;
    v29[8] = MEMORY[0x277CBEC28];
    v28[8] = @"RequiresPowerCycle";
    v28[9] = @"DelayExpressReentry";
    v16 = [MifareDecoder getEmReentryDelayMs:*(bytes + 9)];
    v29[9] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  }

  else
  {
    v18 = ATLLogObject(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = [oCopy length];
      v36 = 2048;
      v37 = 10;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(oCopy, "length"), 10];
    v11 = v19;
    if (!error)
    {
      v17 = 0;
      goto LABEL_12;
    }

    v20 = *error;
    v21 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v30[0] = *MEMORY[0x277CCA450];
      v30[1] = v22;
      v31[0] = v19;
      v31[1] = v20;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v31;
      v25 = v30;
      v26 = 2;
    }

    else
    {
      v32 = *MEMORY[0x277CCA450];
      v33 = v19;
      v23 = MEMORY[0x277CBEAC0];
      v24 = &v33;
      v25 = &v32;
      v26 = 1;
    }

    v12 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    [v21 errorWithDomain:@"ATL" code:3 userInfo:v12];
    *error = v17 = 0;
  }

LABEL_12:

  return v17;
}

+ (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v79[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v9 = [eventCopy length];
  if (v9 <= 0x2D)
  {
    v10 = ATLLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(eventCopy, "length")];
    v12 = v11;
    if (error)
    {
      v13 = *error;
      v14 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v15 = *MEMORY[0x277CCA7E8];
        v76[0] = *MEMORY[0x277CCA450];
        v76[1] = v15;
        v77[0] = v11;
        v77[1] = v13;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v77;
        v18 = v76;
        v19 = 2;
      }

      else
      {
        v78 = *MEMORY[0x277CCA450];
        v79[0] = v11;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v79;
        v18 = &v78;
        v19 = 1;
      }

      v40 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      *error = [v14 errorWithDomain:@"ATL" code:3 userInfo:v40];
    }

    goto LABEL_29;
  }

  bytes = [eventCopy bytes];
  v12 = [eventCopy subdataWithRange:{46, objc_msgSend(eventCopy, "length") - 46}];
  v55[0] = [v12 bytes];
  v55[1] = [v12 length];
  buf = 0uLL;
  v75 = 0;
  v21 = DERDecodeItemCtx(v55, &buf);
  v22 = v21;
  if (v21 || buf != 0xE000000000000001)
  {
    v34 = ATLLogObject(v21);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v72 = 67109376;
      *&v72[4] = v22;
      LOWORD(v73[0]) = 2048;
      *(v73 + 2) = buf;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v72, 0x12u);
    }

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = [v35 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v22, buf];
    v27 = v36;
    if (!error)
    {
      goto LABEL_28;
    }

    v37 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v68[0] = *MEMORY[0x277CCA450];
      v68[1] = v38;
      v69[0] = v36;
      v69[1] = v37;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v69;
      v33 = v68;
      goto LABEL_20;
    }

    v70 = *MEMORY[0x277CCA450];
    v71 = v36;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v71;
    v33 = &v70;
LABEL_26:
    v39 = 1;
    goto LABEL_27;
  }

  *v72 = 0;
  v73[0] = 0;
  v23 = DERParseSequenceSpec(&buf + 1, &mifareE1TLVSpec, v72, 0x10uLL);
  if (!v23)
  {
    *v66 = -1;
    v41 = [MifareDecoder didTransactionError:**v72 withParameters:bytes withTransactionResult:v66];
    v60 = @"State";
    v58[0] = @"SP";
    v42 = [MifareDecoder getServiceProvider:**v72];
    v58[1] = @"SPRaw";
    v59[0] = v42;
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:**v72];
    v59[1] = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v61 = v44;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

    v56[0] = @"EventType";
    v56[1] = @"appletIdentifier";
    v57[0] = @"EndEvent";
    v57[1] = appletCopy;
    v56[2] = @"Version";
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v57[2] = v54;
    v56[3] = @"didError";
    v45 = [MEMORY[0x277CCABB0] numberWithBool:v41];
    v57[3] = v45;
    v56[4] = @"command";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 3)) >> 16];
    v57[4] = v46;
    v56[5] = @"status";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 2)];
    v57[5] = v47;
    v56[6] = @"result";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v66];
    v57[6] = v48;
    v56[7] = @"informative";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 39)) >> 16];
    v57[7] = v49;
    v57[8] = &unk_2843C6A70;
    v56[8] = @"type";
    v56[9] = @"tlv";
    v56[10] = @"parsedInfo";
    v57[9] = v12;
    v57[10] = v53;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:11];

    goto LABEL_30;
  }

  v24 = v23;
  v25 = ATLLogObject(v23);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v66 = 67109120;
    v67 = v24;
    _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v66, 8u);
  }

  v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v24];
  v27 = v26;
  if (!error)
  {
    goto LABEL_28;
  }

  v28 = *error;
  v29 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v64 = *MEMORY[0x277CCA450];
    v65 = v26;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v65;
    v33 = &v64;
    goto LABEL_26;
  }

  v30 = *MEMORY[0x277CCA7E8];
  v62[0] = *MEMORY[0x277CCA450];
  v62[1] = v30;
  v63[0] = v26;
  v63[1] = v28;
  v31 = MEMORY[0x277CBEAC0];
  v32 = v63;
  v33 = v62;
LABEL_20:
  v39 = 2;
LABEL_27:
  v51 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v39];
  *error = [v29 errorWithDomain:@"ATL" code:3 userInfo:v51];

LABEL_28:
LABEL_29:
  v50 = 0;
LABEL_30:

  return v50;
}

+ (id)parseEndEventISO:(id)o withApplet:(id)applet error:(id *)error
{
  v79[1] = *MEMORY[0x277D85DE8];
  oCopy = o;
  appletCopy = applet;
  v9 = [oCopy length];
  if (v9 <= 0x30)
  {
    v10 = ATLLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [oCopy length];
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(oCopy, "length")];
    v12 = v11;
    if (error)
    {
      v13 = *error;
      v14 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v15 = *MEMORY[0x277CCA7E8];
        v76[0] = *MEMORY[0x277CCA450];
        v76[1] = v15;
        v77[0] = v11;
        v77[1] = v13;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v77;
        v18 = v76;
        v19 = 2;
      }

      else
      {
        v78 = *MEMORY[0x277CCA450];
        v79[0] = v11;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v79;
        v18 = &v78;
        v19 = 1;
      }

      v40 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      *error = [v14 errorWithDomain:@"ATL" code:3 userInfo:v40];
    }

    goto LABEL_29;
  }

  bytes = [oCopy bytes];
  v12 = [oCopy subdataWithRange:{49, objc_msgSend(oCopy, "length") - 49}];
  v55[0] = [v12 bytes];
  v55[1] = [v12 length];
  buf = 0uLL;
  v75 = 0;
  v21 = DERDecodeItemCtx(v55, &buf);
  v22 = v21;
  if (v21 || buf != 0xE000000000000001)
  {
    v34 = ATLLogObject(v21);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v72 = 67109376;
      *&v72[4] = v22;
      LOWORD(v73[0]) = 2048;
      *(v73 + 2) = buf;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v72, 0x12u);
    }

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = [v35 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v22, buf];
    v27 = v36;
    if (!error)
    {
      goto LABEL_28;
    }

    v37 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v68[0] = *MEMORY[0x277CCA450];
      v68[1] = v38;
      v69[0] = v36;
      v69[1] = v37;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v69;
      v33 = v68;
      goto LABEL_20;
    }

    v70 = *MEMORY[0x277CCA450];
    v71 = v36;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v71;
    v33 = &v70;
LABEL_26:
    v39 = 1;
    goto LABEL_27;
  }

  *v72 = 0;
  v73[0] = 0;
  v23 = DERParseSequenceSpec(&buf + 1, &mifareE1TLVSpec, v72, 0x10uLL);
  if (!v23)
  {
    *v66 = -1;
    v41 = [MifareDecoder didTransactionError:**v72 withISOParameters:bytes withTransactionResult:v66];
    v60 = @"State";
    v58[0] = @"SP";
    v42 = [MifareDecoder getServiceProvider:**v72];
    v58[1] = @"SPRaw";
    v59[0] = v42;
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:**v72];
    v59[1] = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v61 = v44;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

    v56[0] = @"EventType";
    v56[1] = @"appletIdentifier";
    v57[0] = @"EndEvent";
    v57[1] = appletCopy;
    v56[2] = @"Version";
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v57[2] = v54;
    v56[3] = @"didError";
    v45 = [MEMORY[0x277CCABB0] numberWithBool:v41];
    v57[3] = v45;
    v56[4] = @"command";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes + 4))];
    v57[4] = v46;
    v56[5] = @"status";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 2)) >> 16];
    v57[5] = v47;
    v56[6] = @"result";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v66];
    v57[6] = v48;
    v56[7] = @"informative";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 42)) >> 16];
    v57[7] = v49;
    v57[8] = &unk_2843C6A70;
    v56[8] = @"type";
    v56[9] = @"tlv";
    v56[10] = @"parsedInfo";
    v57[9] = v12;
    v57[10] = v53;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:11];

    goto LABEL_30;
  }

  v24 = v23;
  v25 = ATLLogObject(v23);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v66 = 67109120;
    v67 = v24;
    _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v66, 8u);
  }

  v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v24];
  v27 = v26;
  if (!error)
  {
    goto LABEL_28;
  }

  v28 = *error;
  v29 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v64 = *MEMORY[0x277CCA450];
    v65 = v26;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v65;
    v33 = &v64;
    goto LABEL_26;
  }

  v30 = *MEMORY[0x277CCA7E8];
  v62[0] = *MEMORY[0x277CCA450];
  v62[1] = v30;
  v63[0] = v26;
  v63[1] = v28;
  v31 = MEMORY[0x277CBEAC0];
  v32 = v63;
  v33 = v62;
LABEL_20:
  v39 = 2;
LABEL_27:
  v51 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v39];
  *error = [v29 errorWithDomain:@"ATL" code:3 userInfo:v51];

LABEL_28:
LABEL_29:
  v50 = 0;
LABEL_30:

  return v50;
}

+ (id)ParseEndEventShort:(id)short withApplet:(id)applet error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  shortCopy = short;
  appletCopy = applet;
  v9 = [shortCopy length];
  if (v9 == 3)
  {
    bytes = [shortCopy bytes];
    v24[0] = @"EndEvent";
    v23[0] = @"EventType";
    v23[1] = @"Version";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v23[2] = @"appletIdentifier";
    v23[3] = @"didError";
    v24[1] = v11;
    v24[2] = appletCopy;
    v24[3] = MEMORY[0x277CBEC28];
    v24[4] = &unk_2843C6A88;
    v23[4] = @"result";
    v23[5] = @"type";
    v24[5] = &unk_2843C6A70;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  }

  else
  {
    v12 = ATLLogObject(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v30 = [shortCopy length];
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "End event length %zu", buf, 0xCu);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(shortCopy, "length")];
    v11 = v13;
    if (error)
    {
      v14 = *error;
      v15 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v16 = *MEMORY[0x277CCA7E8];
        v25[0] = *MEMORY[0x277CCA450];
        v25[1] = v16;
        v26[0] = v13;
        v26[1] = v14;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v26;
        v19 = v25;
        v20 = 2;
      }

      else
      {
        v27 = *MEMORY[0x277CCA450];
        v28 = v13;
        v17 = MEMORY[0x277CBEAC0];
        v18 = &v28;
        v19 = &v27;
        v20 = 1;
      }

      v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
      *error = [v15 errorWithDomain:@"ATL" code:3 userInfo:v21];

      error = 0;
    }
  }

  return error;
}

+ (id)ParseTimeoutEventNative:(id)native withApplet:(id)applet error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  nativeCopy = native;
  appletCopy = applet;
  v9 = [nativeCopy length];
  if (v9 == 8)
  {
    bytes = [nativeCopy bytes];
    v26[0] = @"EndEvent";
    v25[0] = @"EventType";
    v25[1] = @"Version";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v26[1] = v11;
    v26[2] = appletCopy;
    v25[2] = @"appletIdentifier";
    v25[3] = @"didError";
    v26[3] = MEMORY[0x277CBEC38];
    v25[4] = @"command";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 4)) >> 16];
    v26[4] = v12;
    v25[5] = @"status";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 3)];
    v26[5] = v13;
    v26[6] = &unk_2843C6AA0;
    v25[6] = @"result";
    v25[7] = @"type";
    v26[7] = &unk_2843C6A70;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  }

  else
  {
    v15 = ATLLogObject(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = [nativeCopy length];
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "event length %zu", buf, 0xCu);
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"event length %zu", objc_msgSend(nativeCopy, "length")];
    v11 = v16;
    if (!error)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v17 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v19 = *MEMORY[0x277CCA7E8];
      v27[0] = *MEMORY[0x277CCA450];
      v27[1] = v19;
      v28[0] = v16;
      v28[1] = v17;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v28;
      v22 = v27;
      v23 = 2;
    }

    else
    {
      v29 = *MEMORY[0x277CCA450];
      v30 = v16;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v30;
      v22 = &v29;
      v23 = 1;
    }

    v12 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
    [v18 errorWithDomain:@"ATL" code:3 userInfo:v12];
    *error = v14 = 0;
  }

LABEL_12:

  return v14;
}

+ (id)ParseTimeoutEventISO:(id)o withApplet:(id)applet error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  oCopy = o;
  appletCopy = applet;
  v9 = [oCopy length];
  if (v9 == 11)
  {
    bytes = [oCopy bytes];
    v26[0] = @"EndEvent";
    v25[0] = @"EventType";
    v25[1] = @"Version";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v26[1] = v11;
    v26[2] = appletCopy;
    v25[2] = @"appletIdentifier";
    v25[3] = @"didError";
    v26[3] = MEMORY[0x277CBEC38];
    v25[4] = @"command";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes + 5))];
    v26[4] = v12;
    v25[5] = @"status";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 3)) >> 16];
    v26[5] = v13;
    v26[6] = &unk_2843C6AA0;
    v25[6] = @"result";
    v25[7] = @"type";
    v26[7] = &unk_2843C6A70;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  }

  else
  {
    v15 = ATLLogObject(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = [oCopy length];
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "event length %zu", buf, 0xCu);
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"event length %zu", objc_msgSend(oCopy, "length")];
    v11 = v16;
    if (!error)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v17 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v19 = *MEMORY[0x277CCA7E8];
      v27[0] = *MEMORY[0x277CCA450];
      v27[1] = v19;
      v28[0] = v16;
      v28[1] = v17;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v28;
      v22 = v27;
      v23 = 2;
    }

    else
    {
      v29 = *MEMORY[0x277CCA450];
      v30 = v16;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v30;
      v22 = &v29;
      v23 = 1;
    }

    v12 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
    [v18 errorWithDomain:@"ATL" code:3 userInfo:v12];
    *error = v14 = 0;
  }

LABEL_12:

  return v14;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  historyCopy = history;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  v15 = [MifareDecoder getSPID:historyCopy withApplet:appletCopy withError:error];
  v16 = v15;
  if (v15)
  {
    v17 = +[MifareDecoder getAppletStateAndHistory:withTransceiver:withApplet:withPackage:withModule:withError:](MifareDecoder, "getAppletStateAndHistory:withTransceiver:withApplet:withPackage:withModule:withError:", [v15 unsignedCharValue], historyCopy, appletCopy, packageCopy, moduleCopy, error);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v10 = [TransceiverWrapper withTransceiver:transceiver];
  v11 = [MifareDecoder getSPID:v10 withApplet:propertiesCopy withError:error];

  if (v11)
  {
    v15[0] = @"Supported";
    v15[1] = @"DelayExpressReentry";
    v16[0] = MEMORY[0x277CBEC38];
    v12 = +[MifareDecoder getEmReentryDelayMs:](MifareDecoder, "getEmReentryDelayMs:", [v11 unsignedCharValue]);
    v16[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Mifare decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Mifare decoder doesn't expect processEndOfTransaction"];
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

- (BOOL)supportsPlasticCardMode:(id)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module
{
  modeCopy = mode;
  v14 = 0;
  v8 = [MifareDecoder getSPID:modeCopy withApplet:applet withError:&v14];
  v9 = v8;
  if (v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v11 = +[MifareDecoder getSubDecoder:](MifareDecoder, "getSubDecoder:", [v8 unsignedCharValue]);
    v12 = [objc_opt_class() supportsPlasticCardMode:objc_msgSend(v9 withTransceiver:{"unsignedCharValue"), modeCopy}];
  }

  return v12;
}

+ (id)getSPID:(id)d withApplet:(id)applet withError:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v9 = SelectByNameCmd(v8);

  v10 = [dCopy transceiveAndCheckSW:v9 error:error];
  if (!v10)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&getSPID_withApplet_withError__getDataSpid length:6 freeWhenDone:0];
  v12 = [dCopy transceiveAndCheckSW:v11 error:error];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = [v12 length];
  if (v14 != 1)
  {
    v16 = ATLLogObject(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Invalid response length to GET DATA SPID != 1", v28, 2u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid response length to GET DATA SPID != 1"];
    v18 = v17;
    if (error)
    {
      v19 = *error;
      v20 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v21 = *MEMORY[0x277CCA7E8];
        v29[0] = *MEMORY[0x277CCA450];
        v29[1] = v21;
        v30[0] = v17;
        v30[1] = v19;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v30;
        v24 = v29;
        v25 = 2;
      }

      else
      {
        v31 = *MEMORY[0x277CCA450];
        v32[0] = v17;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v32;
        v24 = &v31;
        v25 = 1;
      }

      v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
      *error = [v20 errorWithDomain:@"ATL" code:3 userInfo:v26];
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v13, "u8:", 0)}];
LABEL_15:

LABEL_16:

  return v15;
}

+ (id)getSubDecoder:(unsigned __int8)decoder
{
  if (getSubDecoder__currentSPId != decoder)
  {
    decoderCopy = decoder;
    v4 = off_2788744A8;
    if (![HerculesDecoder canDecodeSPId:?])
    {
      v4 = off_2788744B8;
      if (![KramerDecoder canDecodeSPId:decoderCopy])
      {
        v4 = off_2788744A0;
      }
    }

    v5 = objc_alloc_init(*v4);
    v6 = getSubDecoder__currentSubDecoder;
    getSubDecoder__currentSubDecoder = v5;

    getSubDecoder__currentSPId = decoderCopy;
  }

  v7 = getSubDecoder__currentSubDecoder;

  return v7;
}

+ (id)getServiceProvider:(unsigned __int8)provider
{
  providerCopy = provider;
  v4 = [MifareDecoder getSubDecoder:?];
  v5 = [objc_opt_class() getServiceProvider:providerCopy];

  return v5;
}

+ (id)getEmReentryDelayMs:(unsigned __int8)ms
{
  v3 = [MifareDecoder getSubDecoder:ms];
  getEmReentryDelayMs = [objc_opt_class() getEmReentryDelayMs];

  return getEmReentryDelayMs;
}

+ (BOOL)getDontWaitForEOT:(unsigned __int8)t
{
  v3 = [MifareDecoder getSubDecoder:t];
  getDontWaitForEOT = [objc_opt_class() getDontWaitForEOT];

  return getDontWaitForEOT;
}

+ (BOOL)didTransactionError:(unsigned __int8)error withISOParameters:(id *)parameters withTransactionResult:(unsigned __int16 *)result
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[37] = parameters->var5;
  v7 = *parameters->var8;
  v8 = parameters->var8[2];
  return [MifareDecoder didTransactionError:error withParameters:v6 withTransactionResult:result];
}

+ (BOOL)didTransactionError:(unsigned __int8)error withParameters:(id *)parameters withTransactionResult:(unsigned __int16 *)result
{
  v7 = [MifareDecoder getSubDecoder:error];
  LOBYTE(result) = [objc_opt_class() didTransactionError:parameters withTransactionResult:result];

  return result;
}

+ (id)getAppletStateAndHistory:(unsigned __int8)history withTransceiver:(id)transceiver withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  historyCopy = history;
  moduleCopy = module;
  packageCopy = package;
  appletCopy = applet;
  transceiverCopy = transceiver;
  v17 = [MifareDecoder getSubDecoder:historyCopy];
  v18 = [objc_opt_class() getAppletStateAndHistory:transceiverCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withError:error];

  return v18;
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  errorCopy = error;
  v41[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  keyCopy = key;
  schemeCopy = scheme;
  transceiverCopy = transceiver;
  v37 = 0;
  v21 = [MifareDecoder getSPID:transceiverCopy withApplet:dataCopy withError:&v37];
  v22 = v37;
  v23 = v22;
  if (v22 || !v21)
  {
    v25 = ATLLogObject(v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Service Provider Opaque Data for Mifare not supported when SPID not available.", buf, 2u);
    }

    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service Provider Opaque Data for Mifare not supported when SPID not available."];
    v24 = v26;
    if (error)
    {
      v27 = *error;
      v35 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v28 = *MEMORY[0x277CCA7E8];
        v38[0] = *MEMORY[0x277CCA450];
        v38[1] = v28;
        v39[0] = v26;
        v39[1] = v27;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v39;
        v31 = v38;
        v32 = 2;
      }

      else
      {
        v40 = *MEMORY[0x277CCA450];
        v41[0] = v26;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v41;
        v31 = &v40;
        v32 = 1;
      }

      v33 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
      *error = [v35 errorWithDomain:@"ATL" code:2 userInfo:v33];

      errorCopy = 0;
    }
  }

  else
  {
    v24 = +[MifareDecoder getSubDecoder:](MifareDecoder, "getSubDecoder:", [v21 unsignedCharValue]);
    errorCopy = [objc_opt_class() getServiceProviderData:dataCopy withPackage:packageCopy withModule:moduleCopy withPublicKey:keyCopy withEncryptionScheme:schemeCopy withTransceiver:transceiverCopy withError:error];
  }

  return errorCopy;
}

@end