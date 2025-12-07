@interface EMVDecoder
+ (BOOL)isEMV:(id)v;
+ (id)DecodeEndE1TLV:(id *)v withModule:(id)module withLegacy:(BOOL)legacy withType:(unsigned __int16 *)type withTransactionStatus:(BOOL)status error:(id *)error;
+ (id)parseEndEvent:(id)event withApplet:(id)applet withModule:(id)module withLegacy:(BOOL)legacy error:(id *)error;
+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation EMVDecoder

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v54[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  moduleCopy = module;
  v14 = [eventCopy length];
  if (v14 > 2)
  {
    v25 = *[eventCopy bytes];
    bytes = [eventCopy bytes];
    v27 = *(bytes + 1);
    if (v25 == 2)
    {
      if (v27 == 6 || v27 == 1)
      {
        v28 = [EMVDecoder parseEndEvent:eventCopy withApplet:appletCopy withModule:moduleCopy withLegacy:v27 == 1 error:error];
        goto LABEL_15;
      }
    }

    else if (v25 == 1 && (v27 == 6 || v27 == 1))
    {
      v28 = [EMVDecoder parseStartEvent:eventCopy withApplet:appletCopy error:error];
LABEL_15:
      v29 = v28;
      goto LABEL_27;
    }

    v30 = ATLLogObject(bytes);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v48 = v25;
      v49 = 1024;
      v50 = v27;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v25, v27];
    v17 = v31;
    if (!error)
    {
      goto LABEL_26;
    }

    v32 = *error;
    v33 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v43[0] = *MEMORY[0x277CCA450];
      v43[1] = v34;
      v44[0] = v31;
      v44[1] = v32;
      v35 = MEMORY[0x277CBEAC0];
      v36 = v44;
      v37 = v43;
      v38 = 2;
    }

    else
    {
      v45 = *MEMORY[0x277CCA450];
      v46 = v31;
      v35 = MEMORY[0x277CBEAC0];
      v36 = &v46;
      v37 = &v45;
      v38 = 1;
    }

    v39 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
    v40 = v33;
    v41 = 3;
    goto LABEL_25;
  }

  v15 = ATLLogObject(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v48 = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
  v17 = v16;
  if (!error)
  {
    goto LABEL_26;
  }

  v18 = *error;
  v19 = MEMORY[0x277CCA9B8];
  if (*error)
  {
    v20 = *MEMORY[0x277CCA7E8];
    v51[0] = *MEMORY[0x277CCA450];
    v51[1] = v20;
    v52[0] = v16;
    v52[1] = v18;
    v21 = MEMORY[0x277CBEAC0];
    v22 = v52;
    v23 = v51;
    v24 = 2;
  }

  else
  {
    v53 = *MEMORY[0x277CCA450];
    v54[0] = v16;
    v21 = MEMORY[0x277CBEAC0];
    v22 = v54;
    v23 = &v53;
    v24 = 1;
  }

  v39 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v24];
  v40 = v19;
  v41 = 6;
LABEL_25:
  *error = [v40 errorWithDomain:@"ATL" code:v41 userInfo:v39];

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "EMVDecoder doesn't support GetState", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"EMVDecoder doesn't support GetState"];
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

+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v9 = [eventCopy length];
  if (v9 == 4)
  {
    bytes = [eventCopy bytes];
    v23[0] = @"EventType";
    v23[1] = @"appletIdentifier";
    v24[0] = @"StartEvent";
    v24[1] = appletCopy;
    v23[2] = @"selectStatus";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 2)) >> 16];
    v23[3] = @"IgnoreRFEvents";
    v23[4] = @"DontWaitForEOT";
    v24[2] = v11;
    v24[3] = MEMORY[0x277CBEC28];
    v24[4] = MEMORY[0x277CBEC28];
    v24[5] = MEMORY[0x277CBEC28];
    v23[5] = @"RequiresPowerCycle";
    v23[6] = @"DelayExpressReentry";
    v24[6] = &unk_2843C65A8;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  }

  else
  {
    v12 = ATLLogObject(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v30 = [eventCopy length];
      v31 = 2048;
      v32 = 4;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(eventCopy, "length"), 4];
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

+ (id)parseEndEvent:(id)event withApplet:(id)applet withModule:(id)module withLegacy:(BOOL)legacy error:(id *)error
{
  legacyCopy = legacy;
  v59[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  moduleCopy = module;
  v14 = [eventCopy length];
  if (v14 > 0x29)
  {
    v49 = legacyCopy;
    errorCopy = error;
    bytes = [eventCopy bytes];
    v25 = MEMORY[0x277CBEB38];
    v54[0] = @"EventType";
    v54[1] = @"appletIdentifier";
    v55[0] = @"EndEvent";
    v55[1] = appletCopy;
    v51 = appletCopy;
    v54[2] = @"status";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(bytes[1]) >> 16];
    v55[2] = v26;
    v54[3] = @"command";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(bytes[2]) >> 16];
    v55[3] = v27;
    v54[4] = @"transactionIdentifier";
    [MEMORY[0x277CBEA90] dataWithBytes:bytes + 3 length:32];
    v29 = v28 = moduleCopy;
    asHexString = [v29 asHexString];
    v55[4] = asHexString;
    v54[5] = @"informative";
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(bytes[20]) >> 16];
    v55[5] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:6];
    v17 = [v25 dictionaryWithDictionary:v32];

    moduleCopy = v28;
    v52 = -1;
    v33 = bytes[1];
    v34 = v33 != 144;
    if ([eventCopy length] < 0x2B)
    {
      goto LABEL_15;
    }

    v35 = [eventCopy subdataWithRange:{42, objc_msgSend(eventCopy, "length") - 42}];
    *&buf = [v35 bytes];
    *(&buf + 1) = [v35 length];
    error = [EMVDecoder DecodeEndE1TLV:&buf withModule:v28 withLegacy:v49 withType:&v52 withTransactionStatus:v33 == 144 error:errorCopy];
    if (!error)
    {

      goto LABEL_22;
    }

    v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    [v36 setObject:error forKeyedSubscript:@"Transaction"];
    [v17 setObject:v35 forKeyedSubscript:@"tlv"];
    [v17 setObject:v36 forKeyedSubscript:@"parsedInfo"];
    v37 = [error objectForKeyedSubscript:@"Amount"];

    if (v37)
    {
      v38 = [error objectForKeyedSubscript:@"Amount"];
      [v17 setObject:v38 forKeyedSubscript:@"amount"];
    }

    v39 = [error objectForKeyedSubscript:@"Currency"];

    if (v39)
    {
      v40 = [error objectForKeyedSubscript:@"Currency"];
      [v17 setObject:v40 forKeyedSubscript:@"currency"];
    }

    if (v52 - 1 >= 0xFFFE)
    {
LABEL_15:
      v42 = bswap32(bytes[19]);
      v41 = HIWORD(v42);
      v34 = (v42 & 0xFEFF0000) == 0 || v33 != 144;
    }

    else
    {
      v41 = 0xFFFFLL;
    }

    v44 = [MEMORY[0x277CCABB0] numberWithBool:v34];
    [v17 setObject:v44 forKeyedSubscript:@"didError"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v52];
    [v17 setObject:v45 forKeyedSubscript:@"type"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v41];
    [v17 setObject:v46 forKeyedSubscript:@"result"];

    error = v17;
LABEL_22:
    appletCopy = v51;
    goto LABEL_25;
  }

  v15 = ATLLogObject(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(eventCopy, "length")];
  v17 = v16;
  if (error)
  {
    v18 = *error;
    v19 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v56[0] = *MEMORY[0x277CCA450];
      v56[1] = *MEMORY[0x277CCA7E8];
      v57[0] = v16;
      v57[1] = v18;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v57;
      v22 = v56;
      v23 = 2;
    }

    else
    {
      v58 = *MEMORY[0x277CCA450];
      v59[0] = v16;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v59;
      v22 = &v58;
      v23 = 1;
    }

    v47 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
    *error = [v19 errorWithDomain:@"ATL" code:3 userInfo:v47];

    error = 0;
  }

LABEL_25:

  return error;
}

+ (id)DecodeEndE1TLV:(id *)v withModule:(id)module withLegacy:(BOOL)legacy withType:(unsigned __int16 *)type withTransactionStatus:(BOOL)status error:(id *)error
{
  statusCopy = status;
  v140[1] = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v14 = DERDecodeItemCtx(v, &v94);
  v15 = v14;
  if (v14 || v94 != 0xE000000000000001)
  {
    v28 = ATLLogObject(v14);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v119[0].data) = 67109376;
      HIDWORD(v119[0].data) = v15;
      LOWORD(v119[0].length) = 2048;
      *(&v119[0].length + 2) = v94;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v119, 0x12u);
    }

    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = [v29 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v15, v94];
    v31 = v30;
    if (!error)
    {
      goto LABEL_25;
    }

    v32 = *error;
    v33 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v137[0] = *MEMORY[0x277CCA450];
      v137[1] = v34;
      v138[0] = v30;
      v138[1] = v32;
      v35 = MEMORY[0x277CBEAC0];
      v36 = v138;
      v37 = v137;
LABEL_15:
      v38 = 2;
LABEL_24:
      v43 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
      *error = [v33 errorWithDomain:@"ATL" code:3 userInfo:v43];

      goto LABEL_25;
    }

    v139 = *MEMORY[0x277CCA450];
    v140[0] = v30;
    v35 = MEMORY[0x277CBEAC0];
    v36 = v140;
    v37 = &v139;
LABEL_23:
    v38 = 1;
    goto LABEL_24;
  }

  if (!v96)
  {
    if (!statusCopy)
    {
      error = MEMORY[0x277CBEC10];
      goto LABEL_100;
    }

    v39 = ATLLogObject(v14);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v119[0].data) = 0;
      _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Missing E1 content", v119, 2u);
    }

    v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing E1 content"];
    v31 = v40;
    if (!error)
    {
LABEL_25:

      error = 0;
      goto LABEL_100;
    }

    v41 = *error;
    v33 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v42 = *MEMORY[0x277CCA7E8];
      v133[0] = *MEMORY[0x277CCA450];
      v133[1] = v42;
      v134[0] = v40;
      v134[1] = v41;
      v35 = MEMORY[0x277CBEAC0];
      v36 = v134;
      v37 = v133;
      goto LABEL_15;
    }

    v135 = *MEMORY[0x277CCA450];
    v136 = v40;
    v35 = MEMORY[0x277CBEAC0];
    v36 = &v136;
    v37 = &v135;
    goto LABEL_23;
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  memset(v119, 0, sizeof(v119));
  v16 = DERParseSequenceSpec(&v95, &e1EndEventContentSpec, v119, 0xF0uLL);
  if (v16)
  {
    v17 = v16;
    v18 = ATLLogObject(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v118 = v17;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", buf, 8u);
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v17];
    v20 = v19;
    if (!error)
    {
      goto LABEL_99;
    }

    v21 = *error;
    v22 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v23 = *MEMORY[0x277CCA7E8];
      v113[0] = *MEMORY[0x277CCA450];
      v113[1] = v23;
      v114[0] = v19;
      v114[1] = v21;
      v24 = MEMORY[0x277CBEAC0];
      v25 = v114;
      v26 = v113;
      v27 = 2;
    }

    else
    {
      v115 = *MEMORY[0x277CCA450];
      v116 = v19;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v116;
      v26 = &v115;
      v27 = 1;
    }

    v66 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
    *error = [v22 errorWithDomain:@"ATL" code:3 userInfo:v66];

    goto LABEL_71;
  }

  v44 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
  v20 = v44;
  *buf = 0;
  if (*(&v120 + 1))
  {
    v45 = DecodeBCD(&v120);
    v46 = [ATLCurrency currencyCodeForNumber:v45 exponentOut:buf];
    if (v46)
    {
      [v20 setObject:v46 forKeyedSubscript:@"Currency"];
      v47 = [MEMORY[0x277CCABB0] numberWithShort:*buf];
      [v20 setObject:v47 forKeyedSubscript:@"CurrencyExponent"];

      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
      [v20 setObject:v48 forKeyedSubscript:@"CurrencyCode"];
    }
  }

  if (v119[1].length)
  {
    v49 = DecodeBCD(&v119[1]);
    v50 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v49 exponent:-*buf isNegative:0];
    [v20 setObject:v50 forKeyedSubscript:@"Amount"];
  }

  if (legacy || v119[0].length || !statusCopy)
  {
    if (v119[0].length)
    {
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(v119)];
      [v20 setObject:v61 forKeyedSubscript:@"LocalValidation"];
    }

    if (type && *(&v121 + 1))
    {
      *type = *v121;
    }

    if (*(&v122 + 1))
    {
      v62 = [MEMORY[0x277CBEA90] dataWithDERItem:&v122];
      [v20 setObject:v62 forKeyedSubscript:@"MerchantNameAndLocation"];
    }

    if ([EMVDecoder isArgon:moduleCopy])
    {
      if (*(&v131 + 1))
      {
        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(&v131)];
        [v20 setObject:v63 forKeyedSubscript:@"MerchantCategoryCode"];
      }

      if (!*(&v132 + 1))
      {
        goto LABEL_98;
      }

      v64 = [MEMORY[0x277CBEA90] dataWithDERItem:&v132];
      v65 = @"MCII";
      goto LABEL_97;
    }

    v67 = [EMVDecoder isHelium:moduleCopy];
    if (v67)
    {
      if (*(&v123 + 1))
      {
        v68 = [MEMORY[0x277CBEA90] dataWithDERItem:&v123];
        [v20 setObject:v68 forKeyedSubscript:@"CDI"];

LABEL_85:
        if (*(&v124 + 1))
        {
          v78 = [MEMORY[0x277CBEA90] dataWithDERItem:&v124];
          [v20 setObject:v78 forKeyedSubscript:@"AIDPersonalized"];
        }

        if (*(&v125 + 1))
        {
          v79 = [MEMORY[0x277CBEA90] dataWithDERItem:&v125];
          [v20 setObject:v79 forKeyedSubscript:@"MAID"];
        }

        if (*(&v126 + 1))
        {
          v80 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(&v126)];
          [v20 setObject:v80 forKeyedSubscript:@"MSC"];
        }

        if (!*(&v127 + 1))
        {
          goto LABEL_98;
        }

        v64 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v127)];
        v65 = @"TerminalTypeQualifiers";
        goto LABEL_97;
      }

      if (!statusCopy)
      {
        goto LABEL_85;
      }

      v74 = ATLLogObject(v67);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *v93 = 0;
        _os_log_impl(&dword_22EEF5000, v74, OS_LOG_TYPE_ERROR, "Missing mandatory CDI tag", v93, 2u);
      }

      v75 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory CDI tag"];
      v53 = v75;
      if (!error)
      {
        goto LABEL_70;
      }

      v76 = *error;
      v55 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v77 = *MEMORY[0x277CCA7E8];
        v105[0] = *MEMORY[0x277CCA450];
        v105[1] = v77;
        v106[0] = v75;
        v106[1] = v76;
        v57 = MEMORY[0x277CBEAC0];
        v58 = v106;
        v59 = v105;
        goto LABEL_40;
      }

      v107 = *MEMORY[0x277CCA450];
      v108 = v75;
      v57 = MEMORY[0x277CBEAC0];
      v58 = &v108;
      v59 = &v107;
LABEL_68:
      v60 = 1;
      goto LABEL_69;
    }

    if ([EMVDecoder isNeon:moduleCopy])
    {
      if (*(&v128 + 1))
      {
        v69 = [MEMORY[0x277CBEA90] dataWithDERItem:&v128];
        [v20 setObject:v69 forKeyedSubscript:@"IssuerApplicationData"];
      }

      if (*(&v129 + 1))
      {
        v70 = [MEMORY[0x277CBEA90] dataWithDERItem:&v129];
        [v20 setObject:v70 forKeyedSubscript:@"MobileCVMResults"];
      }

      if (!*(&v130 + 1))
      {
        goto LABEL_98;
      }

      v64 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v130)];
      v65 = @"EnhancedContactlessReaderCapabilities";
      goto LABEL_97;
    }

    if ([EMVDecoder isXenon:moduleCopy])
    {
      if (*(&v127 + 1))
      {
        v72 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v127)];
        [v20 setObject:v72 forKeyedSubscript:@"TerminalTypeQualifiers"];
      }

      if (*(&v131 + 1))
      {
        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(&v131)];
        [v20 setObject:v73 forKeyedSubscript:@"MerchantCategoryCode"];
      }
    }

    else
    {
      v81 = [EMVDecoder isLuau:moduleCopy];
      if (!v81)
      {
LABEL_98:
        error = v20;
        goto LABEL_99;
      }

      if (*(&v123 + 1))
      {
        v82 = [MEMORY[0x277CBEA90] dataWithDERItem:&v123];
        [v20 setObject:v82 forKeyedSubscript:@"CDI"];

        if (!*(&v128 + 1))
        {
          if (!statusCopy)
          {
            goto LABEL_98;
          }

          v89 = ATLLogObject(v83);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            *v93 = 0;
            _os_log_impl(&dword_22EEF5000, v89, OS_LOG_TYPE_ERROR, "Missing mandatory IAD tag", v93, 2u);
          }

          v90 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory IAD tag"];
          v53 = v90;
          if (!error)
          {
            goto LABEL_70;
          }

          v91 = *error;
          v55 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v92 = *MEMORY[0x277CCA7E8];
            v97[0] = *MEMORY[0x277CCA450];
            v97[1] = v92;
            v98[0] = v90;
            v98[1] = v91;
            v57 = MEMORY[0x277CBEAC0];
            v58 = v98;
            v59 = v97;
            goto LABEL_40;
          }

          v99 = *MEMORY[0x277CCA450];
          v100 = v90;
          v57 = MEMORY[0x277CBEAC0];
          v58 = &v100;
          v59 = &v99;
          goto LABEL_68;
        }

        goto LABEL_96;
      }

      if (statusCopy)
      {
        v85 = ATLLogObject(v81);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *v93 = 0;
          _os_log_impl(&dword_22EEF5000, v85, OS_LOG_TYPE_ERROR, "Missing mandatory CVS tag", v93, 2u);
        }

        v86 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory CVS tag"];
        v53 = v86;
        if (!error)
        {
          goto LABEL_70;
        }

        v87 = *error;
        v55 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v88 = *MEMORY[0x277CCA7E8];
          v101[0] = *MEMORY[0x277CCA450];
          v101[1] = v88;
          v102[0] = v86;
          v102[1] = v87;
          v57 = MEMORY[0x277CBEAC0];
          v58 = v102;
          v59 = v101;
          goto LABEL_40;
        }

        v103 = *MEMORY[0x277CCA450];
        v104 = v86;
        v57 = MEMORY[0x277CBEAC0];
        v58 = &v104;
        v59 = &v103;
        goto LABEL_68;
      }
    }

    if (!*(&v128 + 1))
    {
      goto LABEL_98;
    }

LABEL_96:
    v64 = [MEMORY[0x277CBEA90] dataWithDERItem:&v128];
    v65 = @"IssuerApplicationData";
LABEL_97:
    [v20 setObject:v64 forKeyedSubscript:v65];

    goto LABEL_98;
  }

  v51 = ATLLogObject(v44);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    *v93 = 0;
    _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "Missing mandatory local validation tag", v93, 2u);
  }

  v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory local validation tag"];
  v53 = v52;
  if (!error)
  {
    goto LABEL_70;
  }

  v54 = *error;
  v55 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v111 = *MEMORY[0x277CCA450];
    v112 = v52;
    v57 = MEMORY[0x277CBEAC0];
    v58 = &v112;
    v59 = &v111;
    goto LABEL_68;
  }

  v56 = *MEMORY[0x277CCA7E8];
  v109[0] = *MEMORY[0x277CCA450];
  v109[1] = v56;
  v110[0] = v52;
  v110[1] = v54;
  v57 = MEMORY[0x277CBEAC0];
  v58 = v110;
  v59 = v109;
LABEL_40:
  v60 = 2;
LABEL_69:
  v71 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:v60];
  *error = [v55 errorWithDomain:@"ATL" code:3 userInfo:v71];

LABEL_70:
LABEL_71:
  error = 0;
LABEL_99:

LABEL_100:

  return error;
}

+ (BOOL)isEMV:(id)v
{
  vCopy = v;
  v4 = [EMVDecoder isArgon:vCopy]|| [EMVDecoder isHelium:vCopy]|| [EMVDecoder isNeon:vCopy]|| [EMVDecoder isXenon:vCopy]|| [EMVDecoder isLuau:vCopy]|| [EMVDecoder isPoke:vCopy]|| [EMVDecoder isEMVLegacy:vCopy];

  return v4;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Supported";
  v9[1] = @"DelayExpressReentry";
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_2843C65A8;
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
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "EMV decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"EMV decoder doesn't expect processEndOfTransaction"];
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

@end