@interface MercuryDecoder
+ (BOOL)IsIncompatibleApplet:(unsigned int)applet sw:(unsigned __int16)sw;
+ (BOOL)isSpecialBusErrorFor45299868:(id)for45299868 state:(id)state transaction:(id)transaction;
+ (id)DecodeE1TLV:(id *)v transactionInfo:(id *)info error:(id *)error;
+ (id)DecodeE456TLV:(id *)v currencyExponent:(id)exponent error:(id *)error;
+ (id)parseActivityTimeout:(id)timeout withApplet:(id)applet error:(id *)error;
+ (id)parseEndEvent:(id)event withApplet:(id)applet moduleAID:(id)d error:(id *)error;
+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
+ (void)ApplyHackFor50863616:(id)for50863616 historyRecords:(id)records transceiver:(id)transceiver;
+ (void)RemoveMatchedTapIns:(id)ins transactionsInProgress:(id)progress;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation MercuryDecoder

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v50[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  moduleCopy = module;
  if (![eventCopy length])
  {
    v17 = ATLLogObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Empty eventData?", buf, 2u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Empty eventData?"];
    v19 = v18;
    if (!error)
    {
      goto LABEL_24;
    }

    v20 = *error;
    v21 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v47[0] = *MEMORY[0x277CCA450];
      v47[1] = v22;
      v48[0] = v18;
      v48[1] = v20;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v48;
      v25 = v47;
      v26 = 2;
    }

    else
    {
      v49 = *MEMORY[0x277CCA450];
      v50[0] = v18;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v50;
      v25 = &v49;
      v26 = 1;
    }

    v37 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    v38 = v21;
    v39 = 6;
    goto LABEL_23;
  }

  bytes = [eventCopy bytes];
  v15 = *bytes;
  switch(v15)
  {
    case 0x10:
      v16 = [MercuryDecoder parseActivityTimeout:eventCopy withApplet:appletCopy error:error];
      goto LABEL_13;
    case 2:
      v16 = [MercuryDecoder parseEndEvent:eventCopy withApplet:appletCopy moduleAID:moduleCopy error:error];
      goto LABEL_13;
    case 1:
      v16 = [MercuryDecoder parseStartEvent:eventCopy withApplet:appletCopy error:error];
LABEL_13:
      v27 = v16;
      goto LABEL_25;
  }

  v28 = ATLLogObject(bytes);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v46 = v15;
    _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x", buf, 8u);
  }

  v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x", v15];
  v19 = v29;
  if (error)
  {
    v30 = *error;
    v31 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v41[0] = *MEMORY[0x277CCA450];
      v41[1] = v32;
      v42[0] = v29;
      v42[1] = v30;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v42;
      v35 = v41;
      v36 = 2;
    }

    else
    {
      v43 = *MEMORY[0x277CCA450];
      v44 = v29;
      v33 = MEMORY[0x277CBEAC0];
      v34 = &v44;
      v35 = &v43;
      v36 = 1;
    }

    v37 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
    v38 = v31;
    v39 = 3;
LABEL_23:
    *error = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];
  }

LABEL_24:

  v27 = 0;
LABEL_25:

  return v27;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  moduleCopy = module;
  v12 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v13 = SelectByNameCmd(v12);

  v14 = [historyCopy transceiveAndCheckSW:v13 error:error];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&getAppletStateAndHistory_withApplet_withPackage_withModule_withError__getE1Cmd length:5 freeWhenDone:0];
    v16 = [historyCopy transceiveAndCheckSW:v15 error:error];
    v17 = v16;
    if (v16)
    {
      v50[0] = [v16 bytes];
      v50[1] = [v17 length];
      v18 = [MercuryDecoder DecodeE1TLV:v50 transactionInfo:0 error:error];
      if (v18)
      {
        v42 = v14;
        v43 = v17;
        v44 = v15;
        v45 = v13;
        v46 = moduleCopy;
        v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
        v49 = 0;
        v48 = 52352;
        v20 = [MEMORY[0x277CBEB28] dataWithBytes:&v48 length:5];
        v47 = 1;
        v41 = 138412290;
        do
        {
          [v20 replaceBytesInRange:3 withBytes:1 length:{&v47, 1, v41}];
          v21 = [historyCopy transceiveAndCheckSW:v20 error:error];
          if (!v21)
          {
            v32 = 0;
            goto LABEL_30;
          }

          v22 = v21;
          if ([v21 length])
          {
            v55 = 0uLL;
            *&v55 = [v22 bytes];
            *(&v55 + 1) = [v22 length];
            v23 = [v18 objectForKeyedSubscript:@"CardCurrencyExponent"];
            v24 = [MercuryDecoder DecodeE456TLV:&v55 currencyExponent:v23 error:error];

            if (v24)
            {
              [v19 addObject:v24];
            }

            else
            {
              bytes = [v22 bytes];
              v26 = [v22 length];
              LogBinary(OS_LOG_TYPE_ERROR, "[MercuryDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:]", 127, bytes, v26, @"Skipping invalid transaction info:", v27, v28, v41);
              if (error && *error)
              {
                v30 = ATLLogObject(v29);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = *error;
                  *buf = v41;
                  v54 = v31;
                  _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Swallowing txn error %@", buf, 0xCu);
                }

                *error = 0;
              }
            }
          }

          ++v47;
        }

        while (v47 <= 0xAu);
        v33 = [v18 objectForKeyedSubscript:@"TransactionInProgress"];
        [MercuryDecoder RemoveMatchedTapIns:v19 transactionsInProgress:v33];

        v34 = [v18 objectForKeyedSubscript:@"SPRaw"];
        unsignedIntegerValue = [v34 unsignedIntegerValue];

        if (unsignedIntegerValue == 16)
        {
          [MercuryDecoder ApplyHackFor50863616:v18 historyRecords:v19 transceiver:historyCopy];
        }

        if (+[AppletTranslator isInternalBuild])
        {
          v37 = [AppletConfigurationData extraDebugScriptForModule:v46];
          v38 = v37;
          if (v37)
          {
            v37 = [historyCopy applyScript:v37 ignoreSW:1 error:0];
          }

          v39 = ATLLogObject(v37);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v55) = v41;
            *(&v55 + 4) = v38;
            _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEFAULT, "Script executed: %@", &v55, 0xCu);
          }
        }

        v51[0] = @"State";
        v51[1] = @"TransactionHistory";
        v52[0] = v18;
        v52[1] = v19;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
LABEL_30:

        v13 = v45;
        moduleCopy = v46;
        v17 = v43;
        v15 = v44;
        v14 = v42;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v9 = [eventCopy length];
  if (v9 != 9)
  {
    v16 = ATLLogObject(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v42 = [eventCopy length];
      v43 = 2048;
      v44 = 9;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(eventCopy, "length"), 9];
    v12 = v17;
    if (error)
    {
      v18 = *error;
      v19 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v20 = *MEMORY[0x277CCA7E8];
        v37[0] = *MEMORY[0x277CCA450];
        v37[1] = v20;
        v38[0] = v17;
        v38[1] = v18;
        v21 = MEMORY[0x277CBEAC0];
        v22 = v38;
        v23 = v37;
LABEL_14:
        v29 = 2;
LABEL_19:
        v13 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v29];
        [v19 errorWithDomain:@"ATL" code:3 userInfo:v13];
        *error = v15 = 0;
        goto LABEL_20;
      }

      v39 = *MEMORY[0x277CCA450];
      v40 = v17;
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v40;
      v23 = &v39;
LABEL_18:
      v29 = 1;
      goto LABEL_19;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_21;
  }

  bytes = [eventCopy bytes];
  v11 = bytes;
  if (*(bytes + 1) != 2)
  {
    v24 = ATLLogObject(bytes);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v11 + 1);
      *buf = 67109120;
      LODWORD(v42) = v25;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Start event version %u", buf, 8u);
    }

    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event version %u", *(v11 + 1)];
    v12 = v26;
    if (error)
    {
      v27 = *error;
      v19 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v28 = *MEMORY[0x277CCA7E8];
        v33[0] = *MEMORY[0x277CCA450];
        v33[1] = v28;
        v34[0] = v26;
        v34[1] = v27;
        v21 = MEMORY[0x277CBEAC0];
        v22 = v34;
        v23 = v33;
        goto LABEL_14;
      }

      v35 = *MEMORY[0x277CCA450];
      v36 = v26;
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v36;
      v23 = &v35;
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v31[0] = @"EventType";
  v31[1] = @"appletIdentifier";
  v32[0] = @"StartEvent";
  v32[1] = appletCopy;
  v31[2] = @"Version";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:2];
  v32[2] = v12;
  v31[3] = @"command";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v11 + 5))];
  v32[3] = v13;
  v31[4] = @"selectStatus";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v11 + 2)) >> 16];
  v31[5] = @"IgnoreRFEvents";
  v31[6] = @"DontWaitForEOT";
  v32[4] = v14;
  v32[5] = MEMORY[0x277CBEC38];
  v32[6] = MEMORY[0x277CBEC38];
  v32[7] = MEMORY[0x277CBEC38];
  v31[7] = @"RequiresPowerCycle";
  v31[8] = @"DelayExpressReentry";
  v32[8] = &unk_2843C66F8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:9];

LABEL_20:
LABEL_21:

  return v15;
}

+ (id)parseEndEvent:(id)event withApplet:(id)applet moduleAID:(id)d error:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  dCopy = d;
  v13 = [eventCopy length];
  if (v13 <= 0x2C)
  {
    v14 = ATLLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(eventCopy, "length")];
    v16 = v15;
    if (!error)
    {
      goto LABEL_35;
    }

    v17 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v19 = *MEMORY[0x277CCA7E8];
      v73[0] = *MEMORY[0x277CCA450];
      v73[1] = v19;
      v74[0] = v15;
      v74[1] = v17;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v74;
      v22 = v73;
LABEL_28:
      v53 = 2;
LABEL_34:
      v54 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v53];
      *error = [v18 errorWithDomain:@"ATL" code:3 userInfo:v54];

LABEL_35:
      v43 = 0;
      goto LABEL_36;
    }

    v75 = *MEMORY[0x277CCA450];
    v76[0] = v15;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v76;
    v22 = &v75;
    goto LABEL_33;
  }

  bytes = [eventCopy bytes];
  v24 = bytes;
  if (*(bytes + 1) != 2)
  {
    v48 = ATLLogObject(bytes);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = *(v24 + 1);
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v49;
      _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "End event version %u", &buf, 8u);
    }

    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event version %u", *(v24 + 1)];
    v16 = v50;
    if (!error)
    {
      goto LABEL_35;
    }

    v51 = *error;
    v18 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v52 = *MEMORY[0x277CCA7E8];
      v69[0] = *MEMORY[0x277CCA450];
      v69[1] = v52;
      v70[0] = v50;
      v70[1] = v51;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v70;
      v22 = v69;
      goto LABEL_28;
    }

    v71 = *MEMORY[0x277CCA450];
    v72 = v50;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v72;
    v22 = &v71;
LABEL_33:
    v53 = 1;
    goto LABEL_34;
  }

  *&buf = bytes + 44;
  *(&buf + 1) = [eventCopy length] - 44;
  v65 = 0;
  v25 = [MercuryDecoder DecodeE1TLV:&buf transactionInfo:&v65 error:error];
  v26 = v65;
  if (v25)
  {
    v63 = dCopy;
    v64 = appletCopy;
    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v62 = v25;
    [v27 setObject:v25 forKeyedSubscript:@"State"];
    if (v26)
    {
      [v27 setObject:v26 forKeyedSubscript:@"Transaction"];
    }

    v61 = v27;
    v28 = bswap32(*(v24 + 4));
    v29 = bswap32(*(v24 + 2)) >> 16;
    v30 = [MercuryDecoder IsIncompatibleApplet:v28 sw:v29];
    v31 = *(v24 + 40);
    if (v30)
    {
      v32 = -4092;
    }

    else
    {
      v32 = 64;
    }

    v33 = v31 == 1;
    if (v31 == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    v56 = v34;
    v35 = [self isSpecialBusErrorFor45299868:v63 state:v62 transaction:v26];
    v58 = MEMORY[0x277CBEB38];
    v66[0] = @"EventType";
    v66[1] = @"appletIdentifier";
    v67[0] = @"EndEvent";
    v67[1] = v64;
    v66[2] = @"Version";
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v24 + 1)];
    v67[2] = v60;
    v66[3] = @"transactionIdentifier";
    v59 = [MEMORY[0x277CBEA90] dataWithBytes:v24 + 8 length:32];
    asHexString = [v59 asHexString];
    v67[3] = asHexString;
    v66[4] = @"didError";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:((v33 || v30) | v35) & 1];
    v67[4] = v36;
    v66[5] = @"command";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v28];
    v67[5] = v37;
    v66[6] = @"status";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v29];
    v67[6] = v38;
    v66[7] = @"result";
    0xFFFC = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v56 & 0xFFFC];
    v67[7] = 0xFFFC;
    v66[8] = @"informative";
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v24 + 42)) >> 16];
    v67[8] = v40;
    v67[9] = &unk_2843C6710;
    v66[9] = @"type";
    v66[10] = @"tlv";
    v41 = [MEMORY[0x277CBEA90] dataWithDERItem:&buf];
    v66[11] = @"parsedInfo";
    v67[10] = v41;
    v67[11] = v61;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:12];
    v43 = [v58 dictionaryWithDictionary:v42];

    if (v26)
    {
      v44 = [v26 objectForKeyedSubscript:@"Amount"];

      if (v44)
      {
        v45 = [v26 objectForKeyedSubscript:@"Amount"];
        [v43 setObject:v45 forKeyedSubscript:@"amount"];
      }
    }

    v25 = v62;
    v46 = [v62 objectForKeyedSubscript:@"CardCurrency"];

    if (v46)
    {
      v47 = [v62 objectForKeyedSubscript:@"CardCurrency"];
      [v43 setObject:v47 forKeyedSubscript:@"currency"];
    }

    dCopy = v63;
    appletCopy = v64;
  }

  else
  {
    v43 = 0;
  }

LABEL_36:

  return v43;
}

+ (id)parseActivityTimeout:(id)timeout withApplet:(id)applet error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  appletCopy = applet;
  v9 = [timeoutCopy length];
  if (v9 != 11)
  {
    v25 = ATLLogObject(v9);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v59 = [timeoutCopy length];
      *&v59[8] = 2048;
      v60 = 11;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Activity param length %zu (exp %zu)", buf, 0x16u);
    }

    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Activity param length %zu (exp %zu)", objc_msgSend(timeoutCopy, "length"), 11];
    v27 = v26;
    if (!error)
    {
      goto LABEL_23;
    }

    v28 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v30 = *MEMORY[0x277CCA7E8];
      v54[0] = *MEMORY[0x277CCA450];
      v54[1] = v30;
      v55[0] = v26;
      v55[1] = v28;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v55;
      v33 = v54;
LABEL_17:
      v39 = 2;
LABEL_22:
      v40 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v39];
      *error = [v29 errorWithDomain:@"ATL" code:3 userInfo:v40];

LABEL_23:
      v24 = 0;
      goto LABEL_24;
    }

    v56 = *MEMORY[0x277CCA450];
    v57 = v26;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v57;
    v33 = &v56;
LABEL_21:
    v39 = 1;
    goto LABEL_22;
  }

  bytes = [timeoutCopy bytes];
  v11 = bytes;
  if (*(bytes + 1) != 2)
  {
    v34 = ATLLogObject(bytes);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = *(v11 + 1);
      *buf = 67109376;
      *v59 = v35;
      *&v59[4] = 1024;
      *&v59[6] = 2;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Activity Timeout got vers %u exp %u", buf, 0xEu);
    }

    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Activity Timeout got vers %u exp %u", *(v11 + 1), 2];
    v27 = v36;
    if (!error)
    {
      goto LABEL_23;
    }

    v37 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v50[0] = *MEMORY[0x277CCA450];
      v50[1] = v38;
      v51[0] = v36;
      v51[1] = v37;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v51;
      v33 = v50;
      goto LABEL_17;
    }

    v52 = *MEMORY[0x277CCA450];
    v53 = v36;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v53;
    v33 = &v52;
    goto LABEL_21;
  }

  v12 = bswap32(*(bytes + 5));
  v13 = bswap32(*(bytes + 3)) >> 16;
  v14 = [MercuryDecoder IsIncompatibleApplet:v12 sw:v13];
  v15 = v14;
  v16 = ATLLogObject(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v59 = v12;
    *&v59[4] = 1024;
    *&v59[6] = v13;
    LOWORD(v60) = 1024;
    *(&v60 + 2) = v15;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Timeout! Last cmd 0x%x sw 0x%x incompatible %d", buf, 0x14u);
  }

  if (v15)
  {
    v48[0] = @"EventType";
    v48[1] = @"appletIdentifier";
    v49[0] = @"EndEvent";
    v49[1] = appletCopy;
    v48[2] = @"Version";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v11 + 1)];
    v49[2] = v17;
    v49[3] = MEMORY[0x277CBEC38];
    v48[3] = @"didError";
    v48[4] = @"command";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    v49[4] = v18;
    v48[5] = @"status";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
    v49[5] = v19;
    v48[6] = @"TimeOutValue";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v11 + 9)];
    v49[6] = v20;
    v49[7] = &unk_2843C6728;
    v48[7] = @"result";
    v48[8] = @"type";
    v49[8] = &unk_2843C6710;
    v48[9] = @"parsedInfo";
    v46 = @"State";
    v44 = @"SPRaw";
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v11 + 2)];
    v45 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v47 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v49[9] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:10];
  }

  else
  {
    v42[0] = @"EventType";
    v42[1] = @"Result";
    v43[0] = @"ActivityTimeout";
    v43[1] = @"Success";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  }

LABEL_24:

  return v24;
}

+ (id)DecodeE1TLV:(id *)v transactionInfo:(id *)info error:(id *)error
{
  v118[1] = *MEMORY[0x277D85DE8];
  v88 = 0;
  v89 = 0;
  v8 = DERDecodeItemCtx(v, &v88);
  if (!v8)
  {
    if (v88 != 0xE000000000000001)
    {
      LogBinary(OS_LOG_TYPE_ERROR, "+[MercuryDecoder DecodeE1TLV:transactionInfo:error:]", 333, v->var0, v->var1, @"Unexpected tag 0x%llx, skipping to contents...", v9, v10, v88);
      v89 = *v;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    buf = 0u;
    memset(v107, 0, sizeof(v107));
    v22 = DERParseSequenceSpec(&v89, &e1ContentSpec, &buf, 0xA0uLL);
    if (v22)
    {
      v23 = v22;
      v24 = ATLLogObject(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v98 = 67109120;
        LODWORD(v99) = v23;
        _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v98, 8u);
      }

      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v23];
      v26 = v25;
      if (!error)
      {
        v35 = 0;
LABEL_62:

        goto LABEL_63;
      }

      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v102[0] = *MEMORY[0x277CCA450];
        v102[1] = v29;
        v103[0] = v25;
        v103[1] = v27;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v103;
        v32 = v102;
        v33 = 2;
      }

      else
      {
        v104 = *MEMORY[0x277CCA450];
        v105 = v25;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v105;
        v32 = &v104;
        v33 = 1;
      }

      v37 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      [v28 errorWithDomain:@"ATL" code:3 userInfo:v37];
      *error = v35 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    v100[0] = &unk_2843C6740;
    v100[1] = &unk_2843C6758;
    v101[0] = @"Pioneer";
    v101[1] = @"Galileo";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
    v37 = v36;
    if (*(&buf + 1) && ([MEMORY[0x277CCABB0] numberWithUnsignedChar:*buf], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "objectForKeyedSubscript:", v38), v39 = objc_claimAutoreleasedReturnValue(), v38, v39))
    {
      [v26 setObject:v39 forKeyedSubscript:@"SP"];
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*buf];
      [v26 setObject:v40 forKeyedSubscript:@"SPRaw"];

      if (v107[1])
      {
        v41 = [MEMORY[0x277CBEA90] dataWithDERItem:v107];
        [v26 setObject:v41 forKeyedSubscript:@"CardIdentifier"];
      }

      v87 = 0x7FFF;
      if (!*(&v108 + 1))
      {
        goto LABEL_30;
      }

      v42 = DecodeBCD(&v108);
      v43 = [ATLCurrency currencyCodeForNumber:v42 exponentOut:&v87];
      if (v43)
      {
        v44 = v43;
        [v26 setObject:v43 forKeyedSubscript:@"CardCurrency"];
        v45 = [MEMORY[0x277CCABB0] numberWithShort:v87];
        [v26 setObject:v45 forKeyedSubscript:@"CardCurrencyExponent"];

        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42];
        [v26 setObject:v46 forKeyedSubscript:@"CardCurrencyCode"];

        if (v87 != 0x7FFF && *(&v109 + 1))
        {
          S32BE = ReadS32BE(&v109);
          if (S32BE >= 0)
          {
            v48 = S32BE;
          }

          else
          {
            v48 = -S32BE;
          }

          v49 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v48 exponent:-v87 isNegative:S32BE >> 31];
          [v26 setObject:v49 forKeyedSubscript:@"Balance"];
        }

LABEL_30:
        if (*(&v110 + 1))
        {
          v50 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v110)];
          [v26 setObject:v50 forKeyedSubscript:@"PointBalance"];
        }

        v51 = *(&v111 + 1);
        if (*(&v111 + 1))
        {
          v52 = *(&v111 + 1) / 3uLL;
          3uLL = [MEMORY[0x277CBEB18] arrayWithCapacity:*(&v111 + 1) / 3uLL];
          if (v51 >= 3)
          {
            v54 = 0;
            do
            {
              v55 = DecodeTransactionDetail((v111 + v54));
              [3uLL addObject:v55];

              v54 += 3;
              --v52;
            }

            while (v52);
          }

          v56 = [MEMORY[0x277CBEA60] arrayWithArray:3uLL];
          [v26 setObject:v56 forKeyedSubscript:@"TransactionInProgress"];
        }

        if (*(&v112 + 1))
        {
          v57 = [MEMORY[0x277CCABB0] numberWithInt:*v112 != 0];
          [v26 setObject:v57 forKeyedSubscript:@"CardDenyListed"];
        }

        if (*(&v113 + 1))
        {
          v58 = MEMORY[0x277CBEAB8];
          v59 = DecodeBCD(v113, 1);
          v60 = DecodeBCD((v113 + 1), 1);
          v61 = [v58 dateWithYear:v59 month:v60 day:{DecodeBCD((v113 + 2), 1)}];
          if ([v61 year] != 99 || objc_msgSend(v61, "month") != 12 || objc_msgSend(v61, "day") != 31)
          {
            [v61 setYear:{objc_msgSend(v61, "year") + 2000}];
            [v26 setObject:v61 forKeyedSubscript:@"CardExpirationDate"];
          }
        }

        if (info && *(&v114 + 1))
        {
          v62 = [v26 objectForKeyedSubscript:@"CardCurrencyExponent"];
          *info = [MercuryDecoder DecodeE456TLV:&v114 currencyExponent:v62 error:error];
        }

        v35 = v26;
        goto LABEL_60;
      }

      v76 = ATLLogObject(0);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *v98 = 134217984;
        v99 = v42;
        _os_log_impl(&dword_22EEF5000, v76, OS_LOG_TYPE_ERROR, "Invalid currency code %llu", v98, 0xCu);
      }

      v77 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid currency code %llu", v42];
      v78 = v77;
      if (error)
      {
        v79 = *error;
        v80 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v81 = *MEMORY[0x277CCA7E8];
          v90[0] = *MEMORY[0x277CCA450];
          v90[1] = v81;
          v91[0] = v77;
          v91[1] = v79;
          v82 = MEMORY[0x277CBEAC0];
          v83 = v91;
          v84 = v90;
          v85 = 2;
        }

        else
        {
          v92 = *MEMORY[0x277CCA450];
          v93 = v77;
          v82 = MEMORY[0x277CBEAC0];
          v83 = &v93;
          v84 = &v92;
          v85 = 1;
        }

        v86 = [v82 dictionaryWithObjects:v83 forKeys:v84 count:v85];
        *error = [v80 errorWithDomain:@"ATL" code:3 userInfo:v86];
      }
    }

    else
    {
      v63 = ATLLogObject(v36);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = [MEMORY[0x277CBEA90] dataWithDERItem:&buf];
        *v98 = 138412290;
        v99 = v64;
        _os_log_impl(&dword_22EEF5000, v63, OS_LOG_TYPE_ERROR, "Invalid SP identifier %@", v98, 0xCu);
      }

      v65 = objc_alloc(MEMORY[0x277CCACA8]);
      v66 = [MEMORY[0x277CBEA90] dataWithDERItem:&buf];
      v39 = [v65 initWithFormat:@"Invalid SP identifier %@", v66];

      if (error)
      {
        v67 = *error;
        v68 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v69 = *MEMORY[0x277CCA7E8];
          v94[0] = *MEMORY[0x277CCA450];
          v94[1] = v69;
          v95[0] = v39;
          v95[1] = v67;
          v70 = MEMORY[0x277CBEAC0];
          v71 = v95;
          v72 = v94;
          v73 = 2;
        }

        else
        {
          v96 = *MEMORY[0x277CCA450];
          v97 = v39;
          v70 = MEMORY[0x277CBEAC0];
          v71 = &v97;
          v72 = &v96;
          v73 = 1;
        }

        v74 = [v70 dictionaryWithObjects:v71 forKeys:v72 count:v73];
        *error = [v68 errorWithDomain:@"ATL" code:3 userInfo:v74];
      }
    }

    v35 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v11 = v8;
  v12 = ATLLogObject(v8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v11;
    _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Failed to decode E1 %d", &buf, 8u);
  }

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 %d", v11];
  v14 = v13;
  if (error)
  {
    v15 = *error;
    v16 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v115[0] = *MEMORY[0x277CCA450];
      v115[1] = v17;
      v116[0] = v13;
      v116[1] = v15;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v116;
      v20 = v115;
      v21 = 2;
    }

    else
    {
      v117 = *MEMORY[0x277CCA450];
      v118[0] = v13;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v118;
      v20 = &v117;
      v21 = 1;
    }

    v34 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
    *error = [v16 errorWithDomain:@"ATL" code:3 userInfo:v34];
  }

  v35 = 0;
LABEL_63:

  return v35;
}

+ (id)DecodeE456TLV:(id *)v currencyExponent:(id)exponent error:(id *)error
{
  v74[1] = *MEMORY[0x277D85DE8];
  exponentCopy = exponent;
  v53 = 0;
  v54[0] = 0;
  v54[1] = 0;
  v8 = DERDecodeItemCtx(v, &v53);
  v9 = v8;
  if (v8 || v53 + 0x1FFFFFFFFFFFFFF9 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v10 = ATLLogObject(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v9;
      *&buf[8] = 2048;
      *&buf[10] = v53;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Failed to decode E4,E5,E6 %d 0x%llX", buf, 0x12u);
    }

    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v11 initWithFormat:@"Failed to decode E4, E5, E6 %d 0x%llX", v9, v53];
    v13 = v12;
    if (error)
    {
      v14 = *error;
      v15 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v16 = *MEMORY[0x277CCA7E8];
        v71[0] = *MEMORY[0x277CCA450];
        v71[1] = v16;
        v72[0] = v12;
        v72[1] = v14;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v72;
        v19 = v71;
        v20 = 2;
      }

      else
      {
        v73 = *MEMORY[0x277CCA450];
        v74[0] = v12;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v74;
        v19 = &v73;
        v20 = 1;
      }

      v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
      *error = [v15 errorWithDomain:@"ATL" code:3 userInfo:v21];
    }

    error = 0;
    goto LABEL_11;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  memset(buf, 0, sizeof(buf));
  v23 = DERParseSequenceSpec(v54, &e456ContentSpec, buf, 0xB0uLL);
  if (v23)
  {
    v24 = v23;
    v25 = ATLLogObject(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v59 = 67109120;
      v60 = v24;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Failed to decode E4,E5,E6 contents %d", v59, 8u);
    }

    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E4, E5, E6 contents %d", v24];
    v27 = v26;
    if (error)
    {
      v28 = *error;
      v29 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v55[0] = *MEMORY[0x277CCA450];
        v55[1] = v30;
        v56[0] = v26;
        v56[1] = v28;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v56;
        v33 = v55;
        v34 = 2;
      }

      else
      {
        v57 = *MEMORY[0x277CCA450];
        v58 = v26;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v58;
        v33 = &v57;
        v34 = 1;
      }

      v49 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      *error = [v29 errorWithDomain:@"ATL" code:3 userInfo:v49];

      error = 0;
    }

    goto LABEL_59;
  }

  error = [MEMORY[0x277CBEB38] dictionaryWithCapacity:11];
  if (*&buf[8])
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v35 setYear:{DecodeBCD(*buf, 1)}];
    [v35 setMonth:{DecodeBCD((*buf + 1), 1)}];
    [v35 setDay:{DecodeBCD((*buf + 2), 1)}];
    [v35 setYear:{objc_msgSend(v35, "year") + 2000}];
    if (*&buf[24])
    {
      [v35 setHour:{DecodeBCD(*&buf[16], 1)}];
      [v35 setMinute:{DecodeBCD((*&buf[16] + 1), 1)}];
      [v35 setSecond:{DecodeBCD((*&buf[16] + 2), 1)}];
    }

    [error setObject:v35 forKeyedSubscript:@"TransactionTime"];
  }

  if (exponentCopy && *(&v62 + 1))
  {
    S32BE = ReadS32BE(&v62);
    if (S32BE >= 0)
    {
      v37 = S32BE;
    }

    else
    {
      v37 = -S32BE;
    }

    v38 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v37 exponent:-objc_msgSend(exponentCopy isNegative:{"shortValue"), S32BE >> 31}];
    [error setObject:v38 forKeyedSubscript:@"FinalBalance"];
  }

  if (exponentCopy && *(&v63 + 1))
  {
    v39 = ReadS32BE(&v63);
    if (v39 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = -v39;
    }

    v41 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v40 exponent:-objc_msgSend(exponentCopy isNegative:{"shortValue"), v39 >> 31}];
    [error setObject:v41 forKeyedSubscript:@"Amount"];
  }

  if (*(&v64 + 1))
  {
    v42 = DecodeTransactionDetail(v64);
    [error setObject:v42 forKeyedSubscript:@"TypeDetail"];

    v43 = [MEMORY[0x277CBEA90] dataWithDERItem:&v64];
    [error setObject:v43 forKeyedSubscript:@"TypeDetailRaw"];
  }

  if (*(&v65 + 1))
  {
    v44 = [MEMORY[0x277CBEA90] dataWithDERItem:&v65];
    if (([v44 isAlLFF] & 1) == 0)
    {
      [error setObject:v44 forKeyedSubscript:@"StartStation"];
    }
  }

  if (*(&v66 + 1))
  {
    v45 = [MEMORY[0x277CBEA90] dataWithDERItem:&v66];
    if (([v45 isAlLFF] & 1) == 0)
    {
      [error setObject:v45 forKeyedSubscript:@"EndStation"];
    }
  }

  if (*(&v67 + 1))
  {
    v46 = [error objectForKeyedSubscript:@"TypeDetailRaw"];
    v47 = v46;
    if (v46)
    {
      v48 = *[v46 bytes] << 24;
    }

    else
    {
      v48 = -16777216;
    }

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v48 | ReadU16BE(&v67)];
    [error setObject:v50 forKeyedSubscript:@"SerialNumber"];
  }

  if (*(&v68 + 1))
  {
    v51 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v68)];
    [error setObject:v51 forKeyedSubscript:@"PointsBalance"];
  }

  if (*(&v69 + 1))
  {
    v52 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v69)];
    [error setObject:v52 forKeyedSubscript:@"PointsAmount"];
  }

  if (*(&v70 + 1))
  {
    v27 = [MEMORY[0x277CBEA90] dataWithDERItem:&v70];
    [error setObject:v27 forKeyedSubscript:@"TerminalIdentifier"];
LABEL_59:
  }

LABEL_11:

  return error;
}

+ (void)RemoveMatchedTapIns:(id)ins transactionsInProgress:(id)progress
{
  v45 = *MEMORY[0x277D85DE8];
  insCopy = ins;
  progressCopy = progress;
  if ([insCopy count])
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = [insCopy objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"StartStation"];
      v10 = [v8 objectForKeyedSubscript:@"TypeDetail"];
      v11 = [v8 objectForKeyedSubscript:@"Amount"];
      if (v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"Amount"];
        v13 = [MEMORY[0x277CCA980] numberWithUnsignedInteger:0];
        v14 = [v12 isEqual:v13];
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (v9)
        {
          if (v10)
          {
            v15 = [v8 objectForKeyedSubscript:@"EndStation"];

            if (!v15)
            {
              if (v6 < 1)
              {
                v22 = 0;
              }

              else
              {
                v16 = v7;
                while (1)
                {
                  v17 = [insCopy objectAtIndexedSubscript:v16];
                  v18 = [v17 objectForKeyedSubscript:@"EndStation"];
                  v19 = [v17 objectForKeyedSubscript:@"TypeDetail"];
                  v20 = v19;
                  if (v18)
                  {
                    if (v19 && [v19 isEqual:v10])
                    {
                      break;
                    }
                  }

                  v21 = v16-- + 1;
                  if (v21 <= 1)
                  {
                    v22 = 0;
                    goto LABEL_29;
                  }
                }

                v35 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
                [v35 setObject:v8 forKeyedSubscript:@"MergedStartRecord"];
                v33 = [v35 objectForKeyedSubscript:@"StartStation"];

                if (!v33)
                {
                  [v35 setObject:v9 forKeyedSubscript:@"StartStation"];
                }

                v30 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
                [v30 setObject:@"Merged" forKeyedSubscript:@"IgnoreReason"];
                v34 = [v8 objectForKeyedSubscript:@"SerialNumber"];
                v32 = [v17 objectForKeyedSubscript:@"SerialNumber"];
                log = ATLLogObject(v32);
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  if (v34)
                  {
                    intValue = [v34 intValue];
                  }

                  else
                  {
                    intValue = -1;
                  }

                  if (v32)
                  {
                    v29 = intValue;
                    intValue2 = [v32 intValue];
                    intValue = v29;
                  }

                  else
                  {
                    intValue2 = -1;
                  }

                  *buf = 67109888;
                  v38 = v6;
                  v39 = 1024;
                  v40 = intValue;
                  v41 = 1024;
                  v42 = v16;
                  v43 = 1024;
                  v44 = intValue2;
                  _os_log_impl(&dword_22EEF5000, log, OS_LOG_TYPE_DEFAULT, "Merged events %u (SN 0x%x) --> %u (SN 0x%x)", buf, 0x1Au);
                }

                [insCopy setObject:v35 atIndexedSubscript:v16];
                [insCopy setObject:v30 atIndexedSubscript:v6];

                v22 = 1;
              }

LABEL_29:
              v25 = progressCopy;
              if (progressCopy)
              {
                v25 = [progressCopy containsObject:v10];
                v26 = v25;
              }

              else
              {
                v26 = 0;
              }

              v27 = ATLLogObject(v25);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                v38 = v6;
                v39 = 1024;
                v40 = v22;
                v41 = 1024;
                v42 = v26;
                _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "Tap-In event %d merged %d enRouteEvent %d", buf, 0x14u);
              }

              if (!(v22 & 1 | ((v26 & 1) == 0)))
              {
                v28 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
                [v28 setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
                [insCopy setObject:v28 atIndexedSubscript:v6];
              }
            }
          }
        }
      }

      ++v6;
      ++v7;
    }

    while (v6 < [insCopy count]);
  }
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Supported";
  v9[1] = @"DelayExpressReentry";
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_2843C66F8;
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
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Mercury decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Mercury decoder doesn't expect processEndOfTransaction"];
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

+ (BOOL)IsIncompatibleApplet:(unsigned int)applet sw:(unsigned __int16)sw
{
  if ((applet & 0xFFFFFBFF) == 0xA40000 && sw == 27266)
  {
    return 1;
  }

  v6 = applet == 11572480 && sw == 27266;
  v8 = applet != -2142240510 && applet != 11568384 || sw == 36864;
  result = 1;
  if (v8)
  {
    v10 = applet == 8912896 && sw != 36864;
    return v6 || v10;
  }

  return result;
}

+ (void)ApplyHackFor50863616:(id)for50863616 historyRecords:(id)records transceiver:(id)transceiver
{
  v71 = *MEMORY[0x277D85DE8];
  for50863616Copy = for50863616;
  recordsCopy = records;
  transceiverCopy = transceiver;
  *(v63 + 3) = 17826304;
  v63[0] = 41984;
  v62 = 40;
  v61 = 10137600;
  v60 = 0;
  v10 = [transceiverCopy transceiveBytesAndCheckSW:v63 length:7 error:&v60];
  v11 = v60;
  v12 = v11;
  if (!v10 || v11)
  {
    v20 = recordsCopy;
    v21 = ATLLogObject(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v65 = v12;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Failed to select ADF: %@", buf, 0xCu);
    }

    recordsCopy = v20;
    goto LABEL_20;
  }

  v59 = 0;
  v13 = [transceiverCopy transceiveBytesAndCheckSW:&v61 length:5 error:&v59];
  v12 = v59;

  if (!v13 || v12)
  {
    v22 = ATLLogObject(v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v65 = v12;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Failed to read 0xA8: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v15 = [v13 length];
  if (v15 != 40)
  {
    v12 = ATLLogObject(v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = [v13 length];
      *buf = 67109120;
      LODWORD(v65) = v23;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Ignoring wrong length on A8 %u", buf, 8u);
    }

    goto LABEL_19;
  }

  bytes = [v13 bytes];
  v17 = ATLLogObject(bytes);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(bytes + 15);
    *buf = 67109120;
    LODWORD(v65) = v18;
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEFAULT, "Station status byte is 0x%02X", buf, 8u);
  }

  if (*(bytes + 15) == 1)
  {
    v19 = [for50863616Copy objectForKeyedSubscript:@"TransactionInProgress"];
    v12 = [v19 mutableCopy];

    if (([v12 containsObject:@"TransitMetro"]& 1) == 0)
    {
      if (!v12)
      {
        v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      }

      [v12 addObject:@"TransitMetro"];
      [for50863616Copy setObject:v12 forKeyedSubscript:@"TransactionInProgress"];
    }

LABEL_19:
    v10 = v13;
    goto LABEL_20;
  }

  v24 = DecodeBCD((bytes + 16), 0, 1);
  v25 = DecodeBCD((bytes + 16), 1, 1);
  v54 = DecodeBCD((bytes + 16), 2, 1);
  v52 = DecodeBCD((bytes + 16), 3, 1);
  v50 = DecodeBCD((bytes + 16), 4, 1);
  if (![recordsCopy count])
  {
    goto LABEL_21;
  }

  v48 = v13;
  v49 = for50863616Copy;
  v26 = 0;
  v27 = 0;
  v28 = v24 + 2000;
  while (1)
  {
    v12 = [recordsCopy objectAtIndexedSubscript:{v26, v48, v49}];
    v29 = [v12 objectForKeyedSubscript:@"TransactionTime"];
    v30 = v29;
    if (v29)
    {
      if ([v29 year] == v28 && objc_msgSend(v30, "month") == v25 && objc_msgSend(v30, "day") == v54 && objc_msgSend(v30, "hour") == v52 && objc_msgSend(v30, "minute") == v50)
      {
        break;
      }
    }

    v26 = ++v27;
    if ([recordsCopy count] <= v27)
    {
      v13 = v48;
      for50863616Copy = v49;
      goto LABEL_21;
    }
  }

  v51 = transceiverCopy;
  v31 = [v12 mutableCopy];
  v32 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 5 length:2];
  [v31 setObject:v32 forKeyedSubscript:@"StartStation"];

  v33 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 21 length:2];
  [v31 setObject:v33 forKeyedSubscript:@"EndStation"];

  v53 = recordsCopy;
  v34 = ATLLogObject([recordsCopy setObject:v31 atIndexedSubscript:v26]);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v65) = v27;
    _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEFAULT, "Modified record %u", buf, 8u);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v31;
  v36 = [v35 countByEnumeratingWithState:&v55 objects:v70 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v56;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v55 + 1) + 8 * i);
        v41 = [v12 objectForKeyedSubscript:v40];
        v42 = [v35 objectForKeyedSubscript:v40];
        v43 = [v41 isEqual:v42];

        if ((v43 & 1) == 0)
        {
          v45 = ATLLogObject(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [v12 objectForKeyedSubscript:v40];
            v47 = [v35 objectForKeyedSubscript:v40];
            *buf = 138412802;
            v65 = v40;
            v66 = 2112;
            v67 = v46;
            v68 = 2112;
            v69 = v47;
            _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_DEFAULT, "%@ changed %@ -> %@", buf, 0x20u);
          }
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v55 objects:v70 count:16];
    }

    while (v37);
  }

  v10 = v48;
  for50863616Copy = v49;
  transceiverCopy = v51;
  recordsCopy = v53;
LABEL_20:

  v13 = v10;
LABEL_21:
}

+ (BOOL)isSpecialBusErrorFor45299868:(id)for45299868 state:(id)state transaction:(id)transaction
{
  stateCopy = state;
  if ([for45299868 isEqualToString:@"9156000014020001"])
  {
    v8 = [stateCopy objectForKeyedSubscript:@"TransactionInProgress"];
    v9 = [v8 containsObject:@"TransitBus"];
    if (transaction)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end