@interface DreamworksDecoder
+ (id)getInstance;
- (DreamworksDecoder)init;
- (id)DecodeEndE1TLV:(id *)v error:(id *)error;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withError:(id *)error;
- (id)getHistory:(id)history state:(id)state error:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)getState:(id)state;
- (id)parseEndEvent:(id)event withApplet:(id)applet withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseStartEvent:(id)event withApplet:(id)applet withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)resolveTransitModality:(unsigned __int16)modality;
- (void)adjustSN:(id)n;
- (void)cleanup;
- (void)parseTransit:(id)transit fileTrans:(id)trans into:(id)into;
@end

@implementation DreamworksDecoder

+ (id)getInstance
{
  if (getInstance_onceToken_4 != -1)
  {
    +[DreamworksDecoder getInstance];
  }

  v3 = getInstance_inst_3;

  return v3;
}

uint64_t __32__DreamworksDecoder_getInstance__block_invoke()
{
  getInstance_inst_3 = objc_alloc_init(DreamworksDecoder);

  return MEMORY[0x2821F96F8]();
}

- (DreamworksDecoder)init
{
  v8.receiver = self;
  v8.super_class = DreamworksDecoder;
  v2 = [(DreamworksDecoder *)&v8 init];
  v4 = v2;
  if (v2)
  {
    v2->decoderState = 0;
    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v6 = +[AppletTranslator userDefaults];
      v4->debug = [v6 BOOLForKey:@"debug.dreamworks"];
    }

    else
    {
      v4->debug = 0;
    }
  }

  return v4;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Supported";
  v9[1] = @"DelayExpressReentry";
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_2843C71C0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:{2, transceiver, error}];

  return v7;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  historyCopy = history;
  v11 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v12 = SelectByNameCmd(v11);

  v13 = [historyCopy transceiveAndCheckSW:v12 error:error];
  if (v13)
  {
    v14 = [DreamworksReaderContext readAllFiles:historyCopy debug:self->debug error:error];
    if (v14)
    {
      v15 = [(DreamworksDecoder *)self getAppletStateAndHistory:v14 withError:error];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getAppletStateAndHistory:(id)history withError:(id *)error
{
  v13[3] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v7 = [(DreamworksDecoder *)self getState:historyCopy];
  v8 = [(DreamworksDecoder *)self getHistory:historyCopy state:v7 error:error];
  v9 = v8;
  if (v8)
  {
    v12[0] = @"State";
    v12[1] = @"TransactionHistory";
    v13[0] = v7;
    v13[1] = v8;
    v12[2] = @"ATLInternal";
    v13[2] = historyCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getState:(id)state
{
  v30[6] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = MEMORY[0x277CBEAB8];
  filePurseInfo = [stateCopy filePurseInfo];
  v7 = DecodeBCD([filePurseInfo bytes], 25, 2);
  filePurseInfo2 = [stateCopy filePurseInfo];
  v9 = DecodeBCD([filePurseInfo2 bytes], 27, 1);
  filePurseInfo3 = [stateCopy filePurseInfo];
  v24 = [v5 dateWithYear:v7 month:v9 day:{DecodeBCD(objc_msgSend(filePurseInfo3, "bytes"), 28, 1)}];

  filePurseInfo4 = [stateCopy filePurseInfo];
  v22 = [filePurseInfo4 subdataWithRange:{8, 8}];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  fileTrans = [stateCopy fileTrans];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __30__DreamworksDecoder_getState___block_invoke;
  v25[3] = &unk_2788753A8;
  v25[4] = self;
  v14 = [fileTrans firstWhere:v25];

  if (v14 && [v14 isIn])
  {
    [v12 addObject:@"TransitMetro"];
  }

  v29[0] = @"Balances";
  v26[0] = @"BalanceCurrency";
  v26[1] = @"BalanceCurrencyExponent";
  v27[0] = @"KRW";
  v27[1] = &unk_2843C71D8;
  v26[2] = @"Balance";
  v15 = MEMORY[0x277CCA980];
  balance = [stateCopy balance];
  v17 = [v15 decimalNumberWithMantissa:objc_msgSend(balance exponent:"unsignedIntValue") isNegative:{0, 0}];
  v26[3] = @"BalanceIdentifier";
  v27[2] = v17;
  v27[3] = @"PurseBalance";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v28 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v30[0] = v19;
  v30[1] = @"Taiji";
  v29[1] = @"SP";
  v29[2] = @"SPRaw";
  v30[2] = &unk_2843C71D8;
  v30[3] = v24;
  v30[4] = v23;
  v29[3] = @"CardExpirationDate";
  v29[4] = @"CardIdentifier";
  v29[5] = @"TransactionInProgress";
  v30[5] = v12;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  return v20;
}

BOOL __30__DreamworksDecoder_getState___block_invoke(uint64_t a1, void *a2)
{
  v2 = [*(a1 + 32) resolveTransitModality:{objc_msgSend(a2, "vehicleType")}];
  v3 = v2 == @"TransitMetro";

  return v3;
}

- (id)getHistory:(id)history state:(id)state error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v6 = MEMORY[0x277CBEB18];
  filePurse = [historyCopy filePurse];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(filePurse, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = historyCopy;
  obj = [historyCopy filePurse];
  v9 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v36;
    *&v10 = 67109120;
    v31 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v16 = [v14 trt];
        v17 = v16;
        v19 = (v16 == 64 || v16 == 2) && [v14 amount] != 0;
        v20 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:objc_msgSend(v14 exponent:"amount") isNegative:{0, v19}];
        [dictionary setObject:v20 forKeyedSubscript:@"Amount"];

        v21 = [MEMORY[0x277CBEA90] dataWithLongBE:{objc_msgSend(v14, "idSam")}];
        [dictionary setObject:v21 forKeyedSubscript:@"TerminalIdentifier"];

        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "seqnum")}];
        [dictionary setObject:v22 forKeyedSubscript:@"SerialNumber"];

        v23 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:objc_msgSend(v14 exponent:"balance") isNegative:{0, 0}];
        [dictionary setObject:v23 forKeyedSubscript:@"FinalBalance"];

        if (v17 <= 2)
        {
          if (v17 == 1)
          {
            [dictionary setObject:@"Purchase" forKeyedSubscript:@"TypeDetail"];
            fileTrans = [v32 fileTrans];
            [(DreamworksDecoder *)self parseTransit:v14 fileTrans:fileTrans into:dictionary];

            goto LABEL_23;
          }

          if (v17 == 2)
          {
            v25 = dictionary;
            v26 = @"TopUp";
            goto LABEL_22;
          }
        }

        else
        {
          switch(v17)
          {
            case 3:
              v25 = dictionary;
              v26 = @"PurchaseRefundReturn";
              goto LABEL_22;
            case 4:
              v25 = dictionary;
              v26 = @"TopUpCancel";
              goto LABEL_22;
            case 64:
              v25 = dictionary;
              v26 = @"PurchaseRefund";
LABEL_22:
              [v25 setObject:v26 forKeyedSubscript:@"TypeDetail"];
              goto LABEL_23;
          }
        }

        v28 = ATLLogObject(v24);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = v31;
          v40 = v17;
          _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "TRT not recognized (%d).", buf, 8u);
        }

LABEL_23:
        [v8 addObject:dictionary];

        ++v13;
      }

      while (v11 != v13);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      v11 = v29;
    }

    while (v29);
  }

  [(DreamworksDecoder *)self adjustSN:v8];

  return v8;
}

- (void)parseTransit:(id)transit fileTrans:(id)trans into:(id)into
{
  transitCopy = transit;
  intoCopy = into;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__DreamworksDecoder_parseTransit_fileTrans_into___block_invoke;
  v20[3] = &unk_2788753A8;
  v10 = transitCopy;
  v21 = v10;
  v11 = [trans filter:v20];
  v12 = [v11 count];
  if (v12)
  {
    if (v12 != 1)
    {
      v13 = [v11 sortedArrayUsingComparator:&__block_literal_global_720];

      v11 = v13;
    }

    lastObject = [v11 lastObject];
    datetime = [lastObject datetime];
    [intoCopy setObject:datetime forKeyedSubscript:@"TransactionTime"];

    v16 = -[DreamworksDecoder resolveTransitModality:](self, "resolveTransitModality:", [lastObject vehicleType]);
    [intoCopy setObject:v16 forKeyedSubscript:@"TypeDetail"];

    v17 = [MEMORY[0x277CBEA90] dataWithShortBE:{objc_msgSend(lastObject, "vehicleType")}];
    [intoCopy setObject:v17 forKeyedSubscript:@"TypeDetailRaw"];

    v18 = [intoCopy objectForKeyedSubscript:@"TypeDetail"];

    if (v18 == @"TransitMetro")
    {
      v19 = [MEMORY[0x277CBEA90] dataWithIntBE:{objc_msgSend(lastObject, "stationCode")}];
      [intoCopy setObject:v19 forKeyedSubscript:@"EndStation"];
    }
  }
}

uint64_t __49__DreamworksDecoder_parseTransit_fileTrans_into___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 number];
  if (v6 <= [v5 number])
  {
    v8 = [v4 number];
    if (v8 >= [v5 number])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)adjustSN:(id)n
{
  v17 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [nCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(nCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = MEMORY[0x277CCABB0];
        v10 = [v8 objectForKeyedSubscript:@"SerialNumber"];
        v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") << 8}];
        [v8 setObject:v11 forKeyedSubscript:@"SerialNumber"];
      }

      v5 = [nCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v13 = [eventCopy length];
  if (v13 > 1)
  {
    bytes = [eventCopy bytes];
    v25 = *bytes;
    if (*bytes <= 4u)
    {
      if (v25 == 1)
      {
        v26 = [(DreamworksDecoder *)self parseStartEvent:eventCopy withApplet:appletCopy withError:error];
        goto LABEL_26;
      }

      if (v25 == 2)
      {
        v26 = [(DreamworksDecoder *)self parseEndEvent:eventCopy withApplet:appletCopy withError:error];
LABEL_26:
        v33 = v26;
        goto LABEL_31;
      }

LABEL_20:
      v29 = ATLLogObject(bytes);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v41) = v25;
        _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Unknown event type %u", buf, 8u);
      }

      v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown event type %u", v25];
      v16 = v30;
      if (!error)
      {
        goto LABEL_19;
      }

      v31 = *error;
      v18 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v32 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v32;
        v37[0] = v30;
        v37[1] = v31;
        v20 = MEMORY[0x277CBEAC0];
        v21 = v37;
        v22 = v36;
        goto LABEL_7;
      }

      v38 = *MEMORY[0x277CCA450];
      v39 = v30;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v39;
      v22 = &v38;
LABEL_17:
      v23 = 1;
      goto LABEL_18;
    }

    if (v25 == 5)
    {
      v27 = ATLLogObject(bytes);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        asHexString = [eventCopy asHexString];
        *buf = 138412290;
        v41 = asHexString;
        _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "State change event, nothing to do here. %@", buf, 0xCu);
      }
    }

    else
    {
      if (v25 != 18)
      {
        goto LABEL_20;
      }

      v27 = ATLLogObject(bytes);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_INFO, "Deselect event, nothing to do here", buf, 2u);
      }
    }

    goto LABEL_30;
  }

  v14 = ATLLogObject(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v41) = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
  v16 = v15;
  if (!error)
  {
    goto LABEL_19;
  }

  v17 = *error;
  v18 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v44 = *MEMORY[0x277CCA450];
    v45[0] = v15;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v45;
    v22 = &v44;
    goto LABEL_17;
  }

  v19 = *MEMORY[0x277CCA7E8];
  v42[0] = *MEMORY[0x277CCA450];
  v42[1] = v19;
  v43[0] = v15;
  v43[1] = v17;
  v20 = MEMORY[0x277CBEAC0];
  v21 = v43;
  v22 = v42;
LABEL_7:
  v23 = 2;
LABEL_18:
  v28 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
  *error = [v18 errorWithDomain:@"ATL" code:6 userInfo:v28];

LABEL_19:
LABEL_30:
  v33 = 0;
LABEL_31:

  return v33;
}

- (id)parseStartEvent:(id)event withApplet:(id)applet withError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 != 5)
  {
    v17 = ATLLogObject(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v47 = [eventCopy length];
      v48 = 2048;
      v49 = 5;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Start event length %u expected %lu", buf, 0x12u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %u expected %lu", objc_msgSend(eventCopy, "length"), 5];
    v15 = v18;
    if (!error)
    {
      goto LABEL_28;
    }

    v19 = *error;
    v20 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v21 = *MEMORY[0x277CCA7E8];
      v42[0] = *MEMORY[0x277CCA450];
      v42[1] = v21;
      v43[0] = v18;
      v43[1] = v19;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v43;
      v24 = v42;
LABEL_17:
      v30 = 2;
LABEL_27:
      v34 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v30];
      *error = [v20 errorWithDomain:@"ATL" code:6 userInfo:v34];

      goto LABEL_28;
    }

    v44 = *MEMORY[0x277CCA450];
    v45 = v18;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v45;
    v24 = &v44;
LABEL_26:
    v30 = 1;
    goto LABEL_27;
  }

  bytes = [eventCopy bytes];
  v12 = bytes;
  if (*(bytes + 1) != 8)
  {
    v25 = ATLLogObject(bytes);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v12 + 1);
      *buf = 67109120;
      v47 = v26;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Start event got unexpected version 0x%x", buf, 8u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event got unexpected version 0x%x", *(v12 + 1)];
    v15 = v27;
    if (!error)
    {
      goto LABEL_28;
    }

    v28 = *error;
    v20 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v29 = *MEMORY[0x277CCA7E8];
      v38[0] = *MEMORY[0x277CCA450];
      v38[1] = v29;
      v39[0] = v27;
      v39[1] = v28;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v39;
      v24 = v38;
      goto LABEL_17;
    }

    v40 = *MEMORY[0x277CCA450];
    v41 = v27;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v41;
    v24 = &v40;
    goto LABEL_26;
  }

  if (!*(bytes + 2))
  {
    v15 = ATLLogObject(bytes);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Dropping Start event over contact";
      goto LABEL_21;
    }

LABEL_28:
    v33 = 0;
    goto LABEL_29;
  }

  decoderState = self->decoderState;
  v14 = ATLLogObject(bytes);
  v15 = v14;
  if (decoderState == 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Dropping Start event because already started";
LABEL_21:
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_INFO, "Got CL Start Event, setting state to Active", buf, 2u);
  }

  self->decoderState = 1;
  [AppletTranslator registerForCleanup:?];
  v36[0] = @"EventType";
  v36[1] = @"appletIdentifier";
  v37[0] = @"StartEvent";
  v37[1] = appletCopy;
  v36[2] = @"Version";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v12 + 1)];
  v37[2] = v15;
  v36[3] = @"Interface";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v12 + 2)];
  v37[3] = v31;
  v36[4] = @"selectStatus";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v12 + 3)) >> 16];
  v36[5] = @"IgnoreRFEvents";
  v36[6] = @"DontWaitForEOT";
  v37[4] = v32;
  v37[5] = MEMORY[0x277CBEC38];
  v37[6] = MEMORY[0x277CBEC38];
  v37[7] = MEMORY[0x277CBEC28];
  v36[7] = @"RequiresPowerCycle";
  v36[8] = @"DelayExpressReentry";
  v37[8] = &unk_2843C71C0;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:9];

LABEL_29:

  return v33;
}

- (id)parseEndEvent:(id)event withApplet:(id)applet withError:(id *)error
{
  v64[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [eventCopy length];
  if (v10 <= 8)
  {
    v11 = ATLLogObject(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(eventCopy, "length")];
    v13 = v12;
    if (!error)
    {
      goto LABEL_34;
    }

    v14 = *error;
    v15 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v61[0] = *MEMORY[0x277CCA450];
      v61[1] = v16;
      v62[0] = v12;
      v62[1] = v14;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v62;
      v19 = v61;
      v20 = 2;
    }

    else
    {
      v63 = *MEMORY[0x277CCA450];
      v64[0] = v12;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v64;
      v19 = &v63;
      v20 = 1;
    }

    v36 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
    v37 = v15;
    v38 = 3;
LABEL_33:
    *error = [v37 errorWithDomain:@"ATL" code:v38 userInfo:v36];

LABEL_34:
    v44 = 0;
    goto LABEL_37;
  }

  bytes = [eventCopy bytes];
  v22 = bytes;
  if (*(bytes + 1) != 8)
  {
    v26 = ATLLogObject(bytes);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(v22 + 1);
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v27;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "End event got unexpected version 0x%x", &buf, 8u);
    }

    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event got unexpected version 0x%x", *(v22 + 1)];
    v13 = v28;
    if (!error)
    {
      goto LABEL_34;
    }

    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v57[0] = *MEMORY[0x277CCA450];
      v57[1] = v31;
      v58[0] = v28;
      v58[1] = v29;
      v32 = MEMORY[0x277CBEAC0];
      v33 = v58;
      v34 = v57;
      v35 = 2;
    }

    else
    {
      v59 = *MEMORY[0x277CCA450];
      v60 = v28;
      v32 = MEMORY[0x277CBEAC0];
      v33 = &v60;
      v34 = &v59;
      v35 = 1;
    }

    v36 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
    v37 = v30;
    v38 = 6;
    goto LABEL_33;
  }

  if (*(bytes + 2) == 1)
  {
    decoderState = self->decoderState;
    v24 = ATLLogObject(bytes);
    v25 = v24;
    if (decoderState == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEFAULT, "Got CL End Event, setting state to Idle", &buf, 2u);
      }

      self->decoderState = 0;
      [AppletTranslator deregisterForCleanup:?];
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "End event in IDLE state?!", &buf, 2u);
      }
    }
  }

  v39 = *(v22 + 5);
  v40 = *(v22 + 3);
  if (v40 == 144 || v40 == 33642 && (*(v22 + 5) & 0xFF00) == 0xB200)
  {
    v41 = 0;
    v42 = 64;
  }

  else
  {
    v42 = 0;
    v41 = 1;
  }

  v13 = [eventCopy subdataWithRange:{9, objc_msgSend(eventCopy, "length") - 9}];
  *&buf = [v13 bytes];
  *(&buf + 1) = [v13 length];
  v43 = [(DreamworksDecoder *)self DecodeEndE1TLV:&buf error:error];
  if (v43 && !*error)
  {
    v54[0] = @"EventType";
    v54[1] = @"appletIdentifier";
    v55[0] = @"EndEvent";
    v55[1] = appletCopy;
    v54[2] = @"Version";
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 1)];
    v55[2] = v53;
    v54[3] = @"Interface";
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 2)];
    v55[3] = v52;
    v54[4] = @"didError";
    v51 = [MEMORY[0x277CCABB0] numberWithBool:v41];
    v55[4] = v51;
    v54[5] = @"command";
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(v39)];
    v55[5] = v45;
    v54[6] = @"status";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(v40) >> 16];
    v55[6] = v46;
    v54[7] = @"result";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v42];
    v55[7] = v47;
    v55[8] = &unk_2843C71D8;
    v54[8] = @"informative";
    v54[9] = @"type";
    v55[9] = &unk_2843C71F0;
    v54[10] = @"ReadOperationInfo";
    v48 = [v43 objectForKeyedSubscript:?];
    v55[10] = v48;
    v54[11] = @"WriteOperationInfo";
    v49 = [v43 objectForKeyedSubscript:?];
    v55[11] = v49;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:12];
  }

  else
  {
    v44 = 0;
  }

LABEL_37:

  return v44;
}

- (id)DecodeEndE1TLV:(id *)v error:(id *)error
{
  v66[1] = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v6 = DERDecodeItemCtx(v, &v49);
  if (v6)
  {
    v7 = v6;
    v8 = ATLLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode End Event E1 %d", buf, 8u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode End Event E1 %d", v7];
    v10 = v9;
    if (error)
    {
      v11 = *error;
      v12 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v13 = *MEMORY[0x277CCA7E8];
        v63[0] = *MEMORY[0x277CCA450];
        v63[1] = v13;
        v64[0] = v9;
        v64[1] = v11;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v64;
        v16 = v63;
        v17 = 2;
      }

      else
      {
        v65 = *MEMORY[0x277CCA450];
        v66[0] = v9;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v66;
        v16 = &v65;
        v17 = 1;
      }

      v41 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
      *error = [v12 errorWithDomain:@"ATL" code:3 userInfo:v41];
    }

LABEL_27:
    error = 0;
    goto LABEL_28;
  }

  if (v49 != 0xE000000000000001)
  {
    v30 = ATLLogObject(v6);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v49;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx", buf, 0xCu);
    }

    v31 = objc_alloc(MEMORY[0x277CCACA8]);
    v48 = v49;
    v32 = [v31 initWithFormat:@"Unexpected tag 0x%llx"];
    v33 = v32;
    if (error)
    {
      v34 = *error;
      v35 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v36 = *MEMORY[0x277CCA7E8];
        v59[0] = *MEMORY[0x277CCA450];
        v59[1] = v36;
        v60[0] = v32;
        v60[1] = v34;
        v37 = MEMORY[0x277CBEAC0];
        v38 = v60;
        v39 = v59;
        v40 = 2;
      }

      else
      {
        v61 = *MEMORY[0x277CCA450];
        v62 = v32;
        v37 = MEMORY[0x277CBEAC0];
        v38 = &v62;
        v39 = &v61;
        v40 = 1;
      }

      v43 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:v40];
      *error = [v35 errorWithDomain:@"ATL" code:3 userInfo:v43];
    }

    LogBinary(OS_LOG_TYPE_ERROR, "[DreamworksDecoder DecodeEndE1TLV:error:]", 420, v->var0, v->var1, @"E1 TLV data", v44, v45, v48);
    goto LABEL_27;
  }

  *buf = 0u;
  v58 = 0;
  v18 = DERParseSequenceSpec(v50, &DreamworksEndEventE1ContentSpec, buf, 0x20uLL);
  if (v18)
  {
    v19 = v18;
    v20 = ATLLogObject(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v55 = 67109120;
      v56 = v19;
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v55, 8u);
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v19];
    v22 = v21;
    if (error)
    {
      v23 = *error;
      v24 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v25 = *MEMORY[0x277CCA7E8];
        v51[0] = *MEMORY[0x277CCA450];
        v51[1] = v25;
        v52[0] = v21;
        v52[1] = v23;
        v26 = MEMORY[0x277CBEAC0];
        v27 = v52;
        v28 = v51;
        v29 = 2;
      }

      else
      {
        v53 = *MEMORY[0x277CCA450];
        v54 = v21;
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v54;
        v28 = &v53;
        v29 = 1;
      }

      v47 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v29];
      *error = [v24 errorWithDomain:@"ATL" code:3 userInfo:v47];

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    if (!*&buf[8])
    {
      goto LABEL_28;
    }

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ReadS32BE(buf)];
    [error setObject:v42 forKeyedSubscript:@"ReadOperationInfo"];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ReadS32BE(&v58)];
    [error setObject:v22 forKeyedSubscript:@"WriteOperationInfo"];
  }

LABEL_28:

  return error;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Dreamworks decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Dreamworks decoder doesn't expect processEndOfTransaction"];
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

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  dataCopy = data;
  v11 = [TransceiverWrapper withTransceiver:transceiver];
  v12 = [MEMORY[0x277CBEA90] dataWithHexString:dataCopy];

  v13 = SelectByNameCmd(v12);

  v14 = [v11 transceiveAndCheckSW:v13 error:error];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithIntBE:2163278080];
    v16 = [MEMORY[0x277CBEA90] dataWithIntBE:12582912];
    v17 = [v11 transceiveAndGetAllData:v15 withGetMoreData:v16 withMoreDataSW:24832 withError:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)resolveTransitModality:(unsigned __int16)modality
{
  modalityCopy = modality;
  v26 = *MEMORY[0x277D85DE8];
  v4 = +[AppletConfigurationData getDreamworksSettings];
  v5 = [v4 objectForKeyedSubscript:@"dreamworksMetroTypes"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:modalityCopy];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = @"TransitMetro";
  }

  else
  {
    v9 = +[AppletConfigurationData getDreamworksSettings];
    v10 = [v9 objectForKeyedSubscript:@"dreamworksBusTypeRanges"];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      v8 = @"TransitBus";
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 objectAtIndexedSubscript:{0, v21}];
          if ([v17 unsignedIntValue] <= modalityCopy)
          {
            v18 = [v16 objectAtIndexedSubscript:1];
            unsignedIntValue = [v18 unsignedIntValue];

            if (unsignedIntValue >= modalityCopy)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v8 = @"Transit";
LABEL_14:
  }

  return v8;
}

- (void)cleanup
{
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "cleanup", v4, 2u);
  }

  self->decoderState = 0;
}

@end