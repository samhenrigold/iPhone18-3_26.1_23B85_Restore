@interface WuluDecoder
+ (id)getInstance;
- (BOOL)isMetroEntry:(id)entry cityCode:(id)code setting:(id)setting error:(id *)error;
- (WuluDecoder)init;
- (id)DecodeEndE1TLV:(id *)v error:(id *)error;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)adjustHistory:(id)history;
- (id)findNextCappPuchaseEntry:(id)entry history:(id)history;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withError:(id *)error;
- (id)getHistory:(id)history state:(id)state error:(id *)error;
- (id)getState:(id)state;
- (id)getStationCode:(id)code codeSetting:(id)setting swapByteOrdering:(id)ordering convertFormat:(id)format cityCode:(id)cityCode;
- (id)parseEndEvent:(id)event withApplet:(id)applet withError:(id *)error;
- (id)parseFile18:(id)file18;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseStartEvent:(id)event withApplet:(id)applet withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)resolveTransitModality:(unsigned __int8)modality;
- (id)setTimer:(id)timer history:(id)history;
- (void)addFakeBusTxnGuangdong:(id)guangdong history:(id)history cityCode:(id)code;
- (void)adjustState:(id)state history:(id)history ctx:(id)ctx;
- (void)parseTransit:(id)transit file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into;
- (void)parseTransitApollo:(id)apollo file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitGalileo:(id)galileo file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into;
- (void)parseTransitKepler:(id)kepler file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitNoLocal:(id)local file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitPioneer:(id)pioneer file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitSettingBased:(id)based file1E:(id)e file1A:(id)a ctx:(id)ctx into:(id)into;
- (void)parseUnreliable1ECities:(id)cities file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into;
- (void)removeDoubleMetroTapGuangdong:(id)guangdong history:(id)history cityCode:(id)code;
- (void)removeEnRouteForSingleTapBusGuangdong:(id)guangdong transaction:(id)transaction cityCode:(id)code;
- (void)removeUnreliable1EEntryFlag:(id)flag ctx:(id)ctx;
- (void)setGalileoJinshanMaglevNonlocal:(id)nonlocal ctx:(id)ctx;
- (void)setMetroEntryWithLocalLog:(id)log ctx:(id)ctx;
@end

@implementation WuluDecoder

+ (id)getInstance
{
  if (getInstance_onceToken != -1)
  {
    +[WuluDecoder getInstance];
  }

  v3 = getInstance_inst;

  return v3;
}

uint64_t __26__WuluDecoder_getInstance__block_invoke()
{
  getInstance_inst = objc_alloc_init(WuluDecoder);

  return MEMORY[0x2821F96F8]();
}

- (WuluDecoder)init
{
  v8.receiver = self;
  v8.super_class = WuluDecoder;
  v2 = [(WuluDecoder *)&v8 init];
  v4 = v2;
  if (v2)
  {
    v2->decoderState = 0;
    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v6 = +[AppletTranslator userDefaults];
      v4->debug = [v6 BOOLForKey:@"debug.wulu"];
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
  v10[1] = &unk_2843C63E0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:{2, transceiver, error}];

  return v7;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  historyCopy = history;
  packageCopy = package;
  v13 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v14 = SelectByNameCmd(v13);

  v15 = [historyCopy transceiveAndCheckSW:v14 error:error];
  if (v15)
  {
    v16 = [WuluReaderContext readAllFiles:historyCopy appletPID:packageCopy debug:self->debug error:error];
    if (v16)
    {
      v17 = [(WuluDecoder *)self getAppletStateAndHistory:v16 withError:error];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 objectForKeyedSubscript:@"TransactionHistory"];
        v20 = [(WuluDecoder *)self setTimer:historyCopy history:v19];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)getAppletStateAndHistory:(id)history withError:(id *)error
{
  v14[3] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v7 = [(WuluDecoder *)self getState:historyCopy];
  v8 = [(WuluDecoder *)self getHistory:historyCopy state:v7 error:error];
  if (v8)
  {
    v9 = v8;
    v10 = [(WuluDecoder *)self adjustHistory:v8];

    [(WuluDecoder *)self adjustState:v7 history:v10 ctx:historyCopy];
    v13[0] = @"State";
    v13[1] = @"TransactionHistory";
    v14[0] = v7;
    v14[1] = v10;
    v13[2] = @"ATLInternal";
    v14[2] = historyCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getState:(id)state
{
  v43[9] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = MEMORY[0x277CBEAB8];
  file15 = [stateCopy file15];
  v6 = DecodeBCD([file15 bytes], 24, 2);
  file152 = [stateCopy file15];
  v8 = DecodeBCD([file152 bytes], 26, 1);
  file153 = [stateCopy file15];
  v41 = [v4 dateWithYear:v6 month:v8 day:{DecodeBCD(objc_msgSend(file153, "bytes"), 27, 1)}];

  v10 = MEMORY[0x277CCABB0];
  file17 = [stateCopy file17];
  v12 = [v10 numberWithUnsignedShort:{bswap32(*(objc_msgSend(file17, "bytes") + 6)) >> 16}];

  file154 = [stateCopy file15];
  v14 = [file154 subdataWithRange:{10, 10}];

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  file1A = [stateCopy file1A];
  v17 = [file1A firstWhere:&__block_literal_global_708];

  if (v17)
  {
    data = [v17 data];
    if (*([data bytes] + 14) == 1)
    {

LABEL_5:
      [v15 addObject:@"TransitMetro"];
      goto LABEL_6;
    }

    data2 = [v17 data];
    v20 = *([data2 bytes] + 14);

    if (v20 == 3)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  file1A2 = [stateCopy file1A];
  v22 = [file1A2 firstWhere:&__block_literal_global_710];

  if (v22 && ([v22 data], v23 = objc_claimAutoreleasedReturnValue(), v24 = *(objc_msgSend(v23, "bytes") + 14), v23, v24 == 1))
  {
    [v15 addObject:@"TransitBus"];
  }

  else
  {
    file1E = [stateCopy file1E];
    v26 = [file1E firstWhere:&__block_literal_global_712];

    if (v26)
    {
      data3 = [v26 data];
      if (*[data3 bytes] == 3)
      {
        data4 = [v26 data];
        v29 = [data4 u8:9];

        if (v29 == 2)
        {
          [v15 addObject:@"TransitBus"];
        }
      }

      else
      {
      }
    }
  }

  file1A3 = [stateCopy file1A];
  v31 = [file1A3 firstWhere:&__block_literal_global_714];

  if (v31)
  {
    data5 = [v31 data];
    v33 = *([data5 bytes] + 14);

    if (v33 == 1)
    {
      [v15 addObject:@"TransitTrain"];
    }
  }

  overdraft = [stateCopy overdraft];
  unsignedIntValue = [overdraft unsignedIntValue];

  v36 = MEMORY[0x277CCA980];
  if (unsignedIntValue)
  {
    [stateCopy overdraft];
  }

  else
  {
    [stateCopy balance];
  }
  v37 = ;
  v38 = [v36 decimalNumberWithMantissa:objc_msgSend(v37 exponent:"unsignedIntegerValue") isNegative:{4294967294, unsignedIntValue != 0}];

  v42[0] = @"Balance";
  v42[1] = @"SP";
  v43[0] = v38;
  v43[1] = @"UNKNOWN";
  v42[2] = @"SPRaw";
  v42[3] = @"CardExpirationDate";
  v43[2] = v12;
  v43[3] = v41;
  v42[4] = @"CardIdentifier";
  v42[5] = @"CardCurrency";
  v43[4] = v14;
  v43[5] = @"CNY";
  v42[6] = @"CardCurrencyCode";
  v42[7] = @"CardCurrencyExponent";
  v43[6] = &unk_2843C63F8;
  v43[7] = &unk_2843C6410;
  v42[8] = @"TransactionInProgress";
  v43[8] = v15;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:9];

  return v39;
}

- (id)getHistory:(id)history state:(id)state error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  stateCopy = state;
  v8 = MEMORY[0x277CBEB18];
  file18 = [historyCopy file18];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(file18, "count")}];

  v11 = historyCopy;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [historyCopy file18];
  v12 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v48;
    *&v13 = 67109120;
    v35 = v13;
    v39 = v10;
    v40 = historyCopy;
    v38 = *v48;
    selfCopy = self;
    do
    {
      v16 = 0;
      v41 = v14;
      do
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v47 + 1) + 8 * v16);
        data = [v17 data];
        v19 = [(WuluDecoder *)self parseFile18:data];

        if (v19)
        {
          v20 = [v19 objectForKeyedSubscript:@"TypeDetailRaw"];
          if ([v20 unsignedIntegerValue] == 2)
          {
            [v19 setObject:@"TopUp" forKeyedSubscript:@"TypeDetail"];
          }

          else
          {
            data2 = [v17 data];
            v22 = bswap32(*[data2 bytes]) >> 16;

            file1E = [v11 file1E];
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __38__WuluDecoder_getHistory_state_error___block_invoke;
            v45[3] = &__block_descriptor_34_e20_B16__0__WuluRecord_8l;
            v46 = v22;
            v24 = [file1E firstWhere:v45];

            [v11 file1A];
            v26 = v25 = v11;
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __38__WuluDecoder_getHistory_state_error___block_invoke_2;
            v43[3] = &__block_descriptor_34_e20_B16__0__WuluRecord_8l;
            v44 = v22;
            v27 = [v26 firstWhere:v43];

            if (v24)
            {
              v29 = v25;
              self = selfCopy;
              [(WuluDecoder *)selfCopy parseTransit:v17 file1E:v24 file1A:v27 ctx:v29 state:stateCopy into:v19];
            }

            else
            {
              v30 = ATLLogObject(v28);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEBUG, "No matching 0x1E entry found, parsing as basic", buf, 2u);
              }

              self = selfCopy;
            }

            v31 = [v19 objectForKeyedSubscript:@"TypeDetail"];

            v15 = v38;
            if (!v31)
            {
              v33 = ATLLogObject(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v35;
                v52 = v22;
                _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEFAULT, "Transit details were incomplete for SN 0x%x", buf, 8u);
              }

              [v19 setObject:@"Purchase" forKeyedSubscript:@"TypeDetail"];
            }

            v10 = v39;
            v11 = v40;
            v14 = v41;
          }

          [v10 addObject:v19];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v14);
  }

  return v10;
}

- (id)parseFile18:(id)file18
{
  v4 = MEMORY[0x277CBEB38];
  file18Copy = file18;
  dictionary = [v4 dictionary];
  v7 = MEMORY[0x277CBEAB8];
  v8 = DecodeBCD(([file18Copy bytes] + 16), 2);
  v9 = DecodeBCD(([file18Copy bytes] + 18), 1);
  v10 = DecodeBCD(([file18Copy bytes] + 19), 1);
  v11 = DecodeBCD(([file18Copy bytes] + 20), 1);
  v12 = DecodeBCD(([file18Copy bytes] + 21), 1);
  v13 = [v7 dateWithYear:v8 month:v9 day:v10 hour:v11 minute:v12 second:{DecodeBCD((objc_msgSend(file18Copy, "bytes") + 22), 1)}];
  [dictionary setObject:v13 forKeyedSubscript:@"TransactionTime"];

  v14 = *([file18Copy bytes] + 9);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
  [dictionary setObject:v15 forKeyedSubscript:@"TypeDetailRaw"];

  v16 = *([file18Copy bytes] + 5);
  v17 = bswap32(v16);
  v19 = v14 == 2 && v16 != 0;
  v20 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v17 exponent:4294967294 isNegative:v19];
  [dictionary setObject:v20 forKeyedSubscript:@"Amount"];

  v21 = [file18Copy subdataWithRange:{10, 6}];
  [dictionary setObject:v21 forKeyedSubscript:@"TerminalIdentifier"];

  v22 = MEMORY[0x277CCABB0];
  bytes = [file18Copy bytes];

  v24 = [v22 numberWithUnsignedInt:{-[WuluDecoder convertAppletSNtoWalletSN:txnTypeIdentifier:](self, "convertAppletSNtoWalletSN:txnTypeIdentifier:", bswap32(*bytes) >> 16, v14)}];
  [dictionary setObject:v24 forKeyedSubscript:@"SerialNumber"];

  return dictionary;
}

- (void)parseTransit:(id)transit file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into
{
  v49 = *MEMORY[0x277D85DE8];
  transitCopy = transit;
  eCopy = e;
  aCopy = a;
  ctxCopy = ctx;
  stateCopy = state;
  intoCopy = into;
  data = [eCopy data];
  v18 = [data subdataWithOffset:32 length:2];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "u16BE:", 0)}];
  [intoCopy setObject:v19 forKeyedSubscript:@"CityCode"];

  data2 = [eCopy data];
  v21 = bswap32(*([data2 bytes] + 21));

  v22 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v21 exponent:4294967294 isNegative:0];
  [intoCopy setObject:v22 forKeyedSubscript:@"FinalBalance"];

  data3 = [eCopy data];
  v24 = [data3 u8:9];

  v25 = [(WuluDecoder *)self resolveTransitModality:v24];
  [intoCopy setObject:v25 forKeyedSubscript:@"TypeDetail"];

  data4 = [eCopy data];
  v27 = *[data4 bytes];

  if (v27 == 3)
  {
    [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
  }

  v28 = MEMORY[0x277CCABB0];
  v29 = [intoCopy objectForKeyedSubscript:@"TypeDetailRaw"];
  v30 = [v28 numberWithInt:{objc_msgSend(v29, "intValue") | (v27 << 8)}];
  [intoCopy setObject:v30 forKeyedSubscript:@"TypeDetailRaw"];

  v31 = +[AppletConfigurationData getWuluSettings];
  v32 = [v31 objectForKeyedSubscript:@"cityRules"];
  asHexString = [v18 asHexString];
  v34 = [v32 objectForKeyedSubscript:asHexString];

  if (!v34)
  {
    v37 = ATLLogObject(v35);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      v41 = transitCopy;
      goto LABEL_13;
    }

    *buf = 138412290;
    v48 = v18;
    v38 = "Configuration does not define city rules for city code %@";
    v39 = v37;
    v40 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
    _os_log_impl(&dword_22EEF5000, v39, v40, v38, buf, 0xCu);
    goto LABEL_12;
  }

  unsignedIntValue = [v34 unsignedIntValue];
  if (unsignedIntValue <= 5)
  {
    if (unsignedIntValue > 2)
    {
      if (unsignedIntValue != 3)
      {
        if (unsignedIntValue == 4)
        {
          v42 = ctxCopy;
          v41 = transitCopy;
          v43 = stateCopy;
          [(WuluDecoder *)self parseTransitGalileo:transitCopy file1E:eCopy file1A:aCopy ctx:ctxCopy state:stateCopy into:intoCopy];
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v41 = transitCopy;
      [(WuluDecoder *)self parseTransitPioneer:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
LABEL_13:
      v42 = ctxCopy;
LABEL_19:
      v43 = stateCopy;
      goto LABEL_20;
    }

    if (unsignedIntValue == 1)
    {
      v41 = transitCopy;
      [(WuluDecoder *)self parseTransitKepler:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
      goto LABEL_13;
    }

    if (unsignedIntValue == 2)
    {
      v41 = transitCopy;
      [(WuluDecoder *)self parseTransitApollo:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if ((unsignedIntValue - 7) < 2)
  {
LABEL_18:
    v42 = ctxCopy;
    v41 = transitCopy;
    [(WuluDecoder *)self parseTransitSettingBased:transitCopy file1E:eCopy file1A:aCopy ctx:ctxCopy into:intoCopy];
    goto LABEL_19;
  }

  if (unsignedIntValue == 6)
  {
    v41 = transitCopy;
    [(WuluDecoder *)self parseTransitNoLocal:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
    goto LABEL_13;
  }

  if (unsignedIntValue != 99)
  {
LABEL_28:
    v37 = ATLLogObject(unsignedIntValue);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v48 = v34;
    v38 = "Configuration gave us unknown rule type %@";
    v39 = v37;
    v40 = OS_LOG_TYPE_ERROR;
    goto LABEL_11;
  }

  v42 = ctxCopy;
  v41 = transitCopy;
  v43 = stateCopy;
  [(WuluDecoder *)self parseUnreliable1ECities:transitCopy file1E:eCopy file1A:aCopy ctx:ctxCopy state:stateCopy into:intoCopy];
LABEL_20:
}

- (void)parseTransitApollo:(id)apollo file1E:(id)e file1A:(id)a into:(id)into
{
  v40 = *MEMORY[0x277D85DE8];
  eCopy = e;
  aCopy = a;
  intoCopy = into;
  data = [eCopy data];
  v12 = [data u8:9];

  data2 = [eCopy data];
  v14 = *[data2 bytes];

  if (v12 == 2)
  {
    data3 = [eCopy data];
    data6 = data3;
    v17 = 10;
    v18 = 2;
LABEL_3:
    v19 = [data3 subdataWithOffset:v17 length:v18];
    v20 = @"StartStation";
LABEL_4:
    [intoCopy setObject:v19 forKeyedSubscript:v20];

LABEL_5:
    goto LABEL_6;
  }

  if (aCopy && v12 == 1)
  {
    number = [aCopy number];
    if (number == 1)
    {
      data4 = [aCopy data];
      v23 = *([data4 bytes] + 14);

      v26 = v14 == 8 && v23 == 2;
      if (v14 == 6 && v23 == 1)
      {
        [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
LABEL_23:
        data3 = [aCopy data];
        data6 = data3;
        v17 = 38;
        v18 = 5;
        goto LABEL_3;
      }

      if (v14 == 3)
      {
        goto LABEL_23;
      }

      if (v14 == 4 || v26)
      {
        data5 = [aCopy data];
        v31 = [data5 subdataWithOffset:38 length:5];
        [intoCopy setObject:v31 forKeyedSubscript:@"StartStation"];

        data6 = [aCopy data];
        v19 = [data6 subdataWithOffset:46 length:5];
        v20 = @"EndStation";
        goto LABEL_4;
      }

      if (v14 == 8)
      {
        data7 = [aCopy data];
        v33 = [data7 u8:99];

        if (v33)
        {
          [intoCopy setObject:@"TransitMetroUpgrade" forKeyedSubscript:@"TypeDetail"];
          [intoCopy removeObjectForKey:@"IgnoreReason"];
        }

        goto LABEL_6;
      }

      data6 = ATLLogObject(v24);
      if (!os_log_type_enabled(data6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v34 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      number2 = 1;
      v27 = "SN 0x%x with type %d but modality %d";
      v28 = data6;
      v29 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      data6 = ATLLogObject(number);
      if (!os_log_type_enabled(data6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v34 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v36 = 1024;
      v37 = 1;
      v38 = 1024;
      number2 = [aCopy number];
      v27 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
      v28 = data6;
      v29 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_22EEF5000, v28, v29, v27, &v34, 0x14u);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)parseTransitKepler:(id)kepler file1E:(id)e file1A:(id)a into:(id)into
{
  v45 = *MEMORY[0x277D85DE8];
  aCopy = a;
  intoCopy = into;
  eCopy = e;
  data = [eCopy data];
  v12 = [data u8:9];

  data2 = [eCopy data];

  v14 = *[data2 bytes];
  if (aCopy && v12 == 1)
  {
    number = [aCopy number];
    if (number == 1)
    {
      data3 = [aCopy data];
      v17 = *([data3 bytes] + 14);

      v19 = v14 == 8;
      if (v17 != 4)
      {
        v19 = 0;
      }

      if (v14 == 8 && v17 == 3)
      {
        [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
LABEL_14:
        data4 = [aCopy data];
        v25 = [data4 subdataWithOffset:85 length:1];
        v26 = [v25 mutableCopy];

        data5 = [aCopy data];
        v28 = [data5 subdataWithOffset:35 length:8];
        [v26 appendData:v28];

        [intoCopy setObject:v26 forKeyedSubscript:@"StartStation"];
        goto LABEL_15;
      }

      if (v14 == 3)
      {
        goto LABEL_14;
      }

      if (v14 == 4 || v19)
      {
        data6 = [aCopy data];
        v30 = [data6 subdataWithOffset:85 length:1];
        v31 = [v30 mutableCopy];

        data7 = [aCopy data];
        v33 = [data7 subdataWithOffset:35 length:8];
        [v31 appendData:v33];

        [intoCopy setObject:v31 forKeyedSubscript:@"StartStation"];
        data8 = [aCopy data];
        v35 = [data8 subdataWithOffset:86 length:1];
        v36 = [v35 mutableCopy];

        data9 = [aCopy data];
        v38 = [data9 subdataWithOffset:43 length:8];
        [v36 appendData:v38];

        [intoCopy setObject:v36 forKeyedSubscript:@"EndStation"];
        goto LABEL_15;
      }

      v20 = ATLLogObject(v18);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v39 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v41 = 1024;
      v42 = v14;
      v43 = 1024;
      number2 = 1;
      v21 = "SN 0x%x with type %d but modality %d";
      v22 = v20;
      v23 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v20 = ATLLogObject(number);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        goto LABEL_15;
      }

      v39 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v41 = 1024;
      v42 = 1;
      v43 = 1024;
      number2 = [aCopy number];
      v21 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_22EEF5000, v22, v23, v21, &v39, 0x14u);
    goto LABEL_12;
  }

LABEL_15:
}

- (void)parseTransitPioneer:(id)pioneer file1E:(id)e file1A:(id)a into:(id)into
{
  v46 = *MEMORY[0x277D85DE8];
  aCopy = a;
  intoCopy = into;
  eCopy = e;
  data = [eCopy data];
  v12 = [data u8:9];

  data2 = [eCopy data];

  v14 = *[data2 bytes];
  if (!aCopy || v12 != 14 && v12 != 1)
  {
    goto LABEL_23;
  }

  if ([aCopy number] != 1)
  {
    number = [aCopy number];
    if (number != 14)
    {
      v26 = ATLLogObject(number);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v40 = 67109632;
        associatedSerialNumber = [aCopy associatedSerialNumber];
        v42 = 1024;
        v43 = v12;
        v44 = 1024;
        number2 = [aCopy number];
        v27 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
        v28 = v26;
        v29 = OS_LOG_TYPE_ERROR;
LABEL_21:
        _os_log_impl(&dword_22EEF5000, v28, v29, v27, &v40, 0x14u);
      }

LABEL_22:

      goto LABEL_23;
    }
  }

  data3 = [aCopy data];
  v17 = *([data3 bytes] + 14);

  v19 = v14 == 8;
  if (v17 != 4)
  {
    v19 = 0;
  }

  if (v14 != 8 || v17 != 3)
  {
    if (v14 == 3)
    {
      goto LABEL_12;
    }

    if (v14 == 4 || v19)
    {
      data4 = [aCopy data];
      v31 = [data4 subdataWithOffset:85 length:1];
      v32 = [v31 mutableCopy];

      data5 = [aCopy data];
      v34 = [data5 subdataWithOffset:35 length:8];
      [v32 appendData:v34];

      [intoCopy setObject:v32 forKeyedSubscript:@"StartStation"];
      data6 = [aCopy data];
      v36 = [data6 subdataWithOffset:86 length:1];
      v37 = [v36 mutableCopy];

      data7 = [aCopy data];
      v39 = [data7 subdataWithOffset:43 length:8];
      [v37 appendData:v39];

      [intoCopy setObject:v37 forKeyedSubscript:@"EndStation"];
      goto LABEL_23;
    }

    v26 = ATLLogObject(v18);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v42 = 1024;
      v43 = v14;
      v44 = 1024;
      number2 = v12;
      v27 = "SN 0x%x with type %d but modality %d";
      v28 = v26;
      v29 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
LABEL_12:
  data8 = [aCopy data];
  v21 = [data8 subdataWithOffset:85 length:1];
  v22 = [v21 mutableCopy];

  data9 = [aCopy data];
  v24 = [data9 subdataWithOffset:35 length:8];
  [v22 appendData:v24];

  [intoCopy setObject:v22 forKeyedSubscript:@"StartStation"];
  data10 = [aCopy data];
  LODWORD(v24) = [data10 u8:100];

  if (v24 == 11)
  {
    [intoCopy setObject:@"TransitMetroUpgrade" forKeyedSubscript:@"TypeDetail"];
    [intoCopy removeObjectForKey:@"IgnoreReason"];
  }

LABEL_23:
}

- (void)parseTransitGalileo:(id)galileo file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into
{
  v108 = *MEMORY[0x277D85DE8];
  galileoCopy = galileo;
  aCopy = a;
  ctxCopy = ctx;
  stateCopy = state;
  intoCopy = into;
  eCopy = e;
  v19 = [stateCopy objectForKeyedSubscript:@"SPRaw"];
  data = [eCopy data];
  v21 = [data u8:9];

  data2 = [eCopy data];

  v23 = *[data2 bytes];
  if (v21 == 1)
  {
    data9 = [intoCopy objectForKeyedSubscript:@"CityCode"];
    v25 = [v19 isEqualToNumber:data9];

    if (v25)
    {
      localRecordFormat = [ctxCopy localRecordFormat];
      if (localRecordFormat == 1)
      {
        v94 = galileoCopy;
        data3 = [galileoCopy data];
        v29 = bswap32(*[data3 bytes]) >> 16;

        localRecords = [ctxCopy localRecords];
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke;
        v102[3] = &__block_descriptor_34_e20_B16__0__WuluRecord_8l;
        v103 = v29;
        v31 = [localRecords firstWhere:v102];

        localRecords2 = [ctxCopy localRecords];
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_2;
        v100[3] = &unk_278874AD0;
        v33 = v31;
        v101 = v33;
        v34 = [localRecords2 firstWhere:v100];

        localRecords3 = [ctxCopy localRecords];
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_3;
        v98[3] = &unk_278874AD0;
        v36 = v33;
        v99 = v36;
        v37 = [localRecords3 firstWhere:v98];

        if (!v36 || !(v34 | v37))
        {
          v39 = ATLLogObject(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Missing mandatory records.", buf, 2u);
          }

          galileoCopy = v94;
          goto LABEL_70;
        }

        v93 = v37;
        v54 = [v36 sfi];
        if (v54 == 20)
        {
          [intoCopy setObject:@"TransitTrain" forKeyedSubscript:@"TypeDetail"];
          galileoCopy = v94;
        }

        else
        {
          galileoCopy = v94;
          if (v54 == 19)
          {
            v55 = @"TransitTrainMaglev";
          }

          else
          {
            if (v54 != 17)
            {
              v79 = ATLLogObject(v54);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v80 = [v36 sfi];
                *buf = 67109120;
                *v105 = v80;
                _os_log_impl(&dword_22EEF5000, v79, OS_LOG_TYPE_ERROR, "Metro in 1E but local SFI %d not in the list.", buf, 8u);
              }

              goto LABEL_62;
            }

            v55 = @"TransitMetro";
          }

          [intoCopy setObject:v55 forKeyedSubscript:@"TypeDetail"];
        }

LABEL_62:
        v97 = v34;
        data4 = [v34 data];
        v82 = [data4 subdataWithOffset:6 length:2];
        v83 = [v82 copy];

        v91 = v83;
        [intoCopy setObject:v83 forKeyedSubscript:@"StartStation"];
        v84 = MEMORY[0x277CCABB0];
        data5 = [v36 data];
        v86 = [v84 numberWithUnsignedChar:{objc_msgSend(data5, "u8:", 0)}];
        LODWORD(v83) = [&unk_2843C7250 containsObject:v86];

        if (v83)
        {
          [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
          v88 = v91;
          v87 = v93;
        }

        else
        {
          v87 = v93;
          data6 = [v93 data];
          v89 = [data6 subdataWithOffset:6 length:2];
          v88 = [v89 copy];

          [intoCopy setObject:v88 forKeyedSubscript:@"EndStation"];
        }

        goto LABEL_70;
      }

      v36 = ATLLogObject(localRecordFormat);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v50 = "Galileo Metro: The local file format is not extended format with associated SN.";
        v51 = v36;
        v52 = OS_LOG_TYPE_ERROR;
        v53 = 2;
LABEL_30:
        _os_log_impl(&dword_22EEF5000, v51, v52, v50, buf, v53);
        goto LABEL_70;
      }

      goto LABEL_70;
    }

    if (!aCopy)
    {
      v36 = ATLLogObject(v26);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v105 = [galileoCopy number];
        v50 = "No 1A associated with this metro transaction, an old transaction, pass. %d";
        v51 = v36;
        v52 = OS_LOG_TYPE_DEFAULT;
        v53 = 8;
        goto LABEL_30;
      }

LABEL_70:

      goto LABEL_71;
    }

    number = [aCopy number];
    if (number != 1)
    {
      if (number != 2)
      {
        v36 = ATLLogObject(number);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *v105 = [aCopy associatedSerialNumber];
          *&v105[4] = 1024;
          *&v105[6] = 1;
          v106 = 1024;
          number2 = [aCopy number];
          v50 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
          v51 = v36;
          v52 = OS_LOG_TYPE_ERROR;
          v53 = 20;
          goto LABEL_30;
        }

        goto LABEL_70;
      }

      v41 = [stateCopy objectForKeyedSubscript:@"TransactionInProgress"];
      [v41 removeObject:@"TransitBus"];

      data7 = [aCopy data];
      v43 = [data7 subdataWithOffset:26 length:1];
      v44 = [v43 u8:0];

      v45 = @"TransitMetro";
      if (v44 == 34)
      {
        v45 = @"TransitTrain";
      }

      if (v44 == 144)
      {
        v46 = @"TransitTrainMaglev";
      }

      else
      {
        v46 = v45;
      }

      data9 = ATLLogObject([intoCopy setObject:v46 forKeyedSubscript:@"TypeDetail"]);
      if (os_log_type_enabled(data9, OS_LOG_TYPE_DEFAULT))
      {
        data8 = [aCopy data];
        v48 = [data8 subdataWithOffset:26 length:1];
        *buf = 138412290;
        *v105 = v48;
        _os_log_impl(&dword_22EEF5000, data9, OS_LOG_TYPE_DEFAULT, "1A-02 associated with this metro transaction, special type. %@", buf, 0xCu);
      }
    }

    if (v23 == 8 || v23 == 3)
    {
      data9 = [aCopy data];
      number = [data9 bytes];
      if (*(number + 14) == 1)
      {
        v49 = 1;
      }

      else
      {
        data10 = [aCopy data];
        v57 = *([data10 bytes] + 14) == 3;

        v49 = v57;
      }
    }

    else
    {
      v49 = 0;
    }

    switch(v23)
    {
      case 8:
        goto LABEL_40;
      case 4:
        goto LABEL_41;
      case 3:
LABEL_40:

        if (v23 == 8)
        {
LABEL_41:
          data9 = [aCopy data];
          number = [data9 bytes];
          if (*(number + 14) == 2)
          {
            v58 = 1;
          }

          else
          {
            [aCopy data];
            v59 = v95 = v49;
            v58 = *([v59 bytes] + 14) == 4;

            v49 = v95;
          }

          goto LABEL_45;
        }

        break;
    }

    v58 = 0;
LABEL_45:
    if (v23 == 8 || v23 == 4)
    {
    }

    if (v49)
    {
      data11 = [aCopy data];
      v61 = [data11 subdataWithOffset:26 length:1];
      v36 = [v61 mutableCopy];

      data12 = [aCopy data];
      v63 = [data12 subdataWithOffset:42 length:1];
      [v36 appendData:v63];

      [intoCopy setObject:v36 forKeyedSubscript:@"StartStation"];
      v64 = @"EnRoute";
      v65 = @"IgnoreReason";
      v66 = intoCopy;
    }

    else
    {
      if (!v58)
      {
        v36 = ATLLogObject(number);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          associatedSerialNumber = [aCopy associatedSerialNumber];
          data13 = [aCopy data];
          v77 = *([data13 bytes] + 14);
          if (v77 == 1)
          {
            v78 = 1;
          }

          else
          {
            data14 = [aCopy data];
            v78 = *([data14 bytes] + 14) == 3;
          }

          *buf = 67109632;
          *v105 = associatedSerialNumber;
          *&v105[4] = 1024;
          *&v105[6] = v23;
          v106 = 1024;
          number2 = v78;
          _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Galileo Metro: SN 0x%x with type %d, 1A entry type %d", buf, 0x14u);
          if (v77 != 1)
          {
          }
        }

        goto LABEL_70;
      }

      data15 = [aCopy data];
      v68 = [data15 subdataWithOffset:26 length:1];
      v69 = [v68 mutableCopy];

      data16 = [aCopy data];
      v71 = [data16 subdataWithOffset:42 length:1];
      [v69 appendData:v71];

      [intoCopy setObject:v69 forKeyedSubscript:@"StartStation"];
      data17 = [aCopy data];
      v73 = [data17 subdataWithOffset:34 length:1];
      v36 = [v73 mutableCopy];

      data18 = [aCopy data];
      v75 = [data18 subdataWithOffset:50 length:1];
      [v36 appendData:v75];

      v65 = @"EndStation";
      v66 = intoCopy;
      v64 = v36;
    }

    [v66 setObject:v64 forKeyedSubscript:v65];
    goto LABEL_70;
  }

LABEL_71:
}

BOOL __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 associatedSerialNumber] == *(a1 + 32))
  {
    v4 = [v3 number] == 3 || objc_msgSend(v3, "number") == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 number] == 1 || objc_msgSend(v3, "number") == 4)
  {
    v4 = [v3 sfi];
    v5 = v4 == [*(a1 + 32) sfi];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 number] == 2 || objc_msgSend(v3, "number") == 5)
  {
    v4 = [v3 sfi];
    v5 = v4 == [*(a1 + 32) sfi];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)parseTransitSettingBased:(id)based file1E:(id)e file1A:(id)a ctx:(id)ctx into:(id)into
{
  v110 = *MEMORY[0x277D85DE8];
  basedCopy = based;
  eCopy = e;
  aCopy = a;
  ctxCopy = ctx;
  intoCopy = into;
  data = [eCopy data];
  v18 = [data u8:9];

  data2 = [eCopy data];
  v20 = *[data2 bytes];

  if (v18 == 1)
  {
    if (aCopy)
    {
      number = [aCopy number];
      if (number != 1)
      {
        firstObject = ATLLogObject(number);
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *v107 = [aCopy associatedSerialNumber];
          *&v107[4] = 1024;
          *&v107[6] = 1;
          v108 = 1024;
          number2 = [aCopy number];
          _os_log_impl(&dword_22EEF5000, firstObject, OS_LOG_TYPE_ERROR, "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d", buf, 0x14u);
        }

        goto LABEL_66;
      }

      v99 = ctxCopy;
      v22 = intoCopy;
      v103 = basedCopy;
      data3 = [eCopy data];
      firstObject = [data3 subdataWithOffset:32 length:2];

      v25 = +[AppletConfigurationData getWuluSettings];
      v26 = [v25 objectForKeyedSubscript:@"defaultLogSettings"];
      asHexString = [firstObject asHexString];
      v28 = [v26 objectForKeyedSubscript:asHexString];

      v29 = MEMORY[0x277CBEA90];
      v102 = v28;
      v30 = [v28 objectForKeyedSubscript:@"metroEntryStationCode"];
      v31 = [v29 dataWithHexString:v30];

      selfCopy = self;
      v97 = v31;
      v32 = [(WuluDecoder *)self getStationCode:aCopy codeSetting:v31 swapByteOrdering:@"00" convertFormat:@"00" cityCode:firstObject];
      data4 = [aCopy data];
      if (*([data4 bytes] + 14) == 1)
      {

        intoCopy = v22;
LABEL_19:
        if (v32)
        {
          v52 = v32;
          [intoCopy setObject:v32 forKeyedSubscript:@"StartStation"];
          basedCopy = v103;
          ctxCopy = v99;
        }

        else
        {
          v52 = 0;
          v57 = ATLLogObject(v34);
          basedCopy = v103;
          ctxCopy = v99;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v57, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
          }
        }

        v58 = [intoCopy objectForKeyedSubscript:@"Amount"];
        intValue = [v58 intValue];

        if (!intValue)
        {
          [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
        }

        v49 = v97;
        goto LABEL_65;
      }

      data5 = [aCopy data];
      v56 = *([data5 bytes] + 14);

      intoCopy = v22;
      if (v56 == 3)
      {
        goto LABEL_19;
      }

      data6 = [aCopy data];
      if (*([data6 bytes] + 14) == 2)
      {
      }

      else
      {
        data7 = [aCopy data];
        v65 = *([data7 bytes] + 14);

        if (v65 != 4)
        {
          v84 = v32;
          v85 = ATLLogObject(v61);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v107 = [aCopy associatedSerialNumber];
            *&v107[4] = 1024;
            *&v107[6] = v20;
            v108 = 1024;
            number2 = 1;
            _os_log_impl(&dword_22EEF5000, v85, OS_LOG_TYPE_DEFAULT, "SN 0x%x with type %d but modality %d", buf, 0x14u);
          }

          v49 = v97;
          ctxCopy = v99;
          basedCopy = v103;
          v52 = v84;
          goto LABEL_65;
        }
      }

      if (v32)
      {
        [v22 setObject:v32 forKeyedSubscript:@"StartStation"];
      }

      else
      {
        v77 = ATLLogObject(v61);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v77, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
        }
      }

      basedCopy = v103;
      v78 = v32;
      v79 = MEMORY[0x277CBEA90];
      v80 = [v102 objectForKeyedSubscript:@"metroExitStationCode"];
      v49 = [v79 dataWithHexString:v80];

      v81 = [(WuluDecoder *)selfCopy getStationCode:aCopy codeSetting:v49 swapByteOrdering:@"00" convertFormat:@"00" cityCode:firstObject];

      if (v81)
      {
        [intoCopy setObject:v81 forKeyedSubscript:@"EndStation"];
        v52 = v81;
        ctxCopy = v99;
      }

      else
      {
        v83 = ATLLogObject(v82);
        ctxCopy = v99;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v83, OS_LOG_TYPE_ERROR, "Failed to get end station code", buf, 2u);
        }

        v52 = 0;
      }

LABEL_65:

      goto LABEL_66;
    }

    localRecords = [ctxCopy localRecords];
    v36 = [localRecords count];

    if (v36 != 3)
    {
      firstObject = ATLLogObject(v37);
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
      {
        localRecords2 = [ctxCopy localRecords];
        *buf = 134217984;
        *v107 = [localRecords2 count];
        _os_log_impl(&dword_22EEF5000, firstObject, OS_LOG_TYPE_DEFAULT, "Only %lu records retrived, expecting 3.", buf, 0xCu);
      }

      goto LABEL_66;
    }

    localRecords3 = [ctxCopy localRecords];
    firstObject = [localRecords3 firstObject];

    if (firstObject)
    {
      if ([ctxCopy localRecordFormat] != 1 || (objc_msgSend(basedCopy, "data"), v40 = objc_claimAutoreleasedReturnValue(), v41 = bswap32(*objc_msgSend(v40, "bytes")), v40, v42 = -[NSObject associatedSerialNumber](firstObject, "associatedSerialNumber"), v42 == HIWORD(v41)))
      {
        v100 = firstObject;
        v104 = basedCopy;
        file17 = [ctxCopy file17];
        v44 = [file17 subdataWithRange:{6, 2}];

        v45 = +[AppletConfigurationData getWuluSettings];
        v46 = [v45 objectForKeyedSubscript:@"localLogSettings"];
        asHexString2 = [v44 asHexString];
        v48 = [v46 objectForKeyedSubscript:asHexString2];

        v49 = v48;
        v105 = 0;
        v102 = v44;
        v50 = [(WuluDecoder *)self isMetroEntry:ctxCopy cityCode:v44 setting:v48 error:&v105];
        v51 = v105;
        v52 = v51;
        if (v51)
        {
          v53 = ATLLogObject(v51);
          firstObject = v100;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v107 = v102;
            _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_ERROR, "Entry information is not obtained correctly for city %@.", buf, 0xCu);
          }

          basedCopy = v104;
          goto LABEL_64;
        }

        v66 = [v48 objectForKeyedSubscript:@"stationCodeSwapByteOrdering"];
        v67 = [v48 objectForKeyedSubscript:@"stationCodeConvertFormat"];
        v68 = MEMORY[0x277CBEA90];
        v95 = v49;
        v69 = [v49 objectForKeyedSubscript:@"metroEntryStationCode"];
        v98 = [v68 dataWithHexString:v69];

        localRecords4 = [ctxCopy localRecords];
        v71 = [localRecords4 objectAtIndexedSubscript:1];

        v94 = v67;
        if (v71)
        {
          v101 = v66;
          v73 = [(WuluDecoder *)self getStationCode:v71 codeSetting:v98 swapByteOrdering:v66 convertFormat:v67 cityCode:v102];
          [intoCopy setObject:v73 forKeyedSubscript:@"StartStation"];
          if (v50)
          {
            v74 = v98;
            v75 = [intoCopy objectForKeyedSubscript:@"Amount"];
            intValue2 = [v75 intValue];

            if (!intValue2)
            {
              [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
            }

LABEL_62:
            basedCopy = v104;
            v52 = 0;
            v53 = v101;
            goto LABEL_63;
          }

          v86 = MEMORY[0x277CBEA90];
          v87 = [v95 objectForKeyedSubscript:@"metroExitStationCode"];
          v74 = [v86 dataWithHexString:v87];

          localRecords5 = [ctxCopy localRecords];
          v89 = [localRecords5 objectAtIndexedSubscript:2];

          if (!v89)
          {
            v93 = ATLLogObject(v90);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22EEF5000, v93, OS_LOG_TYPE_DEFAULT, "No local exit log retrived.", buf, 2u);
            }

            v71 = 0;
            goto LABEL_62;
          }

          selfCopy2 = self;
          v53 = v101;
          v92 = [(WuluDecoder *)selfCopy2 getStationCode:v89 codeSetting:v74 swapByteOrdering:v101 convertFormat:v94 cityCode:v102];

          [intoCopy setObject:v92 forKeyedSubscript:@"EndStation"];
          v73 = v92;
          v71 = v89;
        }

        else
        {
          v53 = v66;
          v73 = ATLLogObject(v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v73, OS_LOG_TYPE_DEFAULT, "No local entry log retrived.", buf, 2u);
          }

          v71 = 0;
          v74 = v98;
        }

        basedCopy = v104;
        v52 = 0;
LABEL_63:

        firstObject = v71;
        v49 = v95;
LABEL_64:

        goto LABEL_65;
      }

      v62 = ATLLogObject(v42);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v63 = "Local log is not updated in the latest transaction.";
        goto LABEL_40;
      }
    }

    else
    {
      v62 = ATLLogObject(v39);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v63 = "No local log retrived.";
LABEL_40:
        _os_log_impl(&dword_22EEF5000, v62, OS_LOG_TYPE_DEFAULT, v63, buf, 2u);
      }
    }

LABEL_66:
  }
}

- (void)parseTransitNoLocal:(id)local file1E:(id)e file1A:(id)a into:(id)into
{
  v58 = *MEMORY[0x277D85DE8];
  eCopy = e;
  aCopy = a;
  intoCopy = into;
  data = [eCopy data];
  v13 = [data u8:9];

  data2 = [eCopy data];
  v15 = *[data2 bytes];

  if (aCopy && v13 == 1)
  {
    number = [aCopy number];
    if (number != 1)
    {
      v18 = ATLLogObject(number);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        associatedSerialNumber = [aCopy associatedSerialNumber];
        v54 = 1024;
        v55 = 1;
        v56 = 1024;
        number2 = [aCopy number];
        _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d", buf, 0x14u);
      }

      goto LABEL_19;
    }

    data3 = [eCopy data];
    v18 = [data3 subdataWithOffset:32 length:2];

    v19 = +[AppletConfigurationData getWuluSettings];
    v20 = [v19 objectForKeyedSubscript:@"defaultLogSettings"];
    asHexString = [v18 asHexString];
    v22 = [v20 objectForKeyedSubscript:asHexString];

    v23 = MEMORY[0x277CBEA90];
    v24 = [v22 objectForKeyedSubscript:@"metroEntryStationCode"];
    v25 = [v23 dataWithHexString:v24];

    v51 = v25;
    v26 = [(WuluDecoder *)self getStationCode:aCopy codeSetting:v25 swapByteOrdering:@"00" convertFormat:@"00" cityCode:v18];
    data4 = [aCopy data];
    if (*([data4 bytes] + 14) == 1)
    {
    }

    else
    {
      selfCopy = self;
      data5 = [aCopy data];
      v30 = v22;
      v31 = *([data5 bytes] + 14);

      v32 = v31 == 3;
      v22 = v30;
      if (!v32)
      {
        data6 = [aCopy data];
        if (*([data6 bytes] + 14) == 2)
        {

          v39 = 0x277CBE000;
        }

        else
        {
          data7 = [aCopy data];
          v41 = *([data7 bytes] + 14);

          v32 = v41 == 4;
          v22 = v30;
          v39 = 0x277CBE000uLL;
          if (!v32)
          {
            v48 = ATLLogObject(v38);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              associatedSerialNumber = [aCopy associatedSerialNumber];
              v54 = 1024;
              v55 = v15;
              v56 = 1024;
              number2 = 1;
              _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_DEFAULT, "SN 0x%x with type %d but modality %d", buf, 0x14u);
            }

            goto LABEL_17;
          }
        }

        if (v26)
        {
          [intoCopy setObject:v26 forKeyedSubscript:@"StartStation"];
        }

        else
        {
          v42 = ATLLogObject(v38);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
          }
        }

        v43 = *(v39 + 2704);
        v44 = [v22 objectForKeyedSubscript:@"metroExitStationCode"];
        v36 = [v43 dataWithHexString:v44];

        v45 = [(WuluDecoder *)selfCopy getStationCode:aCopy codeSetting:v36 swapByteOrdering:@"00" convertFormat:@"00" cityCode:v18];

        if (v45)
        {
          [intoCopy setObject:v45 forKeyedSubscript:@"EndStation"];
          v26 = v45;
        }

        else
        {
          v47 = ATLLogObject(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_ERROR, "Failed to get end station code", buf, 2u);
          }

          v26 = 0;
        }

        goto LABEL_18;
      }
    }

    if (v26)
    {
      [intoCopy setObject:v26 forKeyedSubscript:@"StartStation"];
    }

    else
    {
      v33 = ATLLogObject(v28);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
      }
    }

    v34 = [intoCopy objectForKeyedSubscript:@"Amount"];
    intValue = [v34 intValue];

    if (!intValue)
    {
      [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
    }

LABEL_17:
    v36 = v51;
LABEL_18:

LABEL_19:
  }
}

- (void)parseUnreliable1ECities:(id)cities file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into
{
  intoCopy = into;
  [intoCopy setObject:@"Purchase" forKeyedSubscript:@"TypeDetail"];
  [intoCopy removeObjectForKey:@"IgnoreReason"];
}

- (id)getStationCode:(id)code codeSetting:(id)setting swapByteOrdering:(id)ordering convertFormat:(id)format cityCode:(id)cityCode
{
  v79 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  settingCopy = setting;
  orderingCopy = ordering;
  formatCopy = format;
  cityCodeCopy = cityCode;
  v14 = +[AppletConfigurationData getWuluSettings];
  v15 = [v14 objectForKeyedSubscript:@"cityRules"];
  asHexString = [cityCodeCopy asHexString];
  v17 = [v15 objectForKeyedSubscript:asHexString];

  if (!v17)
  {
    v25 = ATLLogObject(v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = cityCodeCopy;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEFAULT, "Configuration does not define city rules for city code %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  unsignedIntValue = [v17 unsignedIntValue];
  v20 = [settingCopy u8:0];
  v21 = [settingCopy u8:1];
  if (unsignedIntValue == 8)
  {
    LODWORD(v73) = [settingCopy u8:2];
    v22 = [settingCopy u8:3];
    data = [codeCopy data];
    if ([data length] < v21 + v20)
    {

LABEL_13:
      v39 = ATLLogObject(v24);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v78 = cityCodeCopy;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "City %@ local log's station code offset too big.", buf, 0xCu);
      }

LABEL_16:
      v31 = 0;
      goto LABEL_17;
    }

    v74 = v21;
    [codeCopy data];
    v33 = v32 = codeCopy;
    v72 = formatCopy;
    v34 = [v33 length];
    v71 = v22;
    v35 = v22;
    v36 = cityCodeCopy;
    v70 = v35;
    v37 = v35 + v73;

    codeCopy = v32;
    v38 = v34 >= v37;
    cityCodeCopy = v36;
    formatCopy = v72;
    if (!v38)
    {
      goto LABEL_13;
    }

    v42 = v20;
    data2 = [v32 data];
    data6 = [data2 subdataWithRange:{v42, v21}];

    data3 = [v32 data];
    formatCopy = v72;
    v45 = [data3 subdataWithRange:{v73, v70}];

    data4 = [MEMORY[0x277CBEB28] data];
    [data4 appendData:data6];
    [data4 appendData:v45];
    v31 = [data4 copy];
    v74 = v71 + v74;
  }

  else
  {
    data5 = [codeCopy data];
    v27 = [data5 length];
    v28 = v21;

    if (v27 < v21 + v20)
    {
      v30 = ATLLogObject(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v78 = cityCodeCopy;
        _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "City %@ local log's station code offset too big.", buf, 0xCu);
      }

      v31 = 0;
      goto LABEL_17;
    }

    v74 = v21;
    data6 = [codeCopy data];
    v31 = [data6 subdataWithRange:{v20, v28}];
  }

  if ([orderingCopy isEqualToString:@"01"])
  {
    v47 = [MEMORY[0x277CBEA90] dataWithReversedBytes:objc_msgSend(v31 length:{"bytes"), v74}];

    v31 = v47;
  }

  v48 = [formatCopy isEqualToString:@"01"];
  if (v48)
  {
    v73 = cityCodeCopy;
    v49 = formatCopy;
    v50 = codeCopy;
    v51 = v74;
    v52 = MEMORY[0x28223BE20](v48);
    v54 = &v69 - v53;
    if (v55)
    {
      v56 = 0;
      do
      {
        v57 = [v31 encodeBCDAtOffset:v56 length:{1, v52}];
        v54[v56] = [v57 unsignedCharValue];

        ++v56;
      }

      while (v51 != v56);
    }

LABEL_28:
    v58 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:{v51, v52}];

    v31 = v58;
    codeCopy = v50;
    formatCopy = v49;
    cityCodeCopy = v73;
    goto LABEL_17;
  }

  if ([formatCopy isEqualToString:@"03"])
  {
    encodeBCD = [v31 encodeBCD];
LABEL_31:
    v60 = encodeBCD;
    unsignedLongValue = [encodeBCD unsignedLongValue];

    v62 = [MEMORY[0x277CBEA90] dataWithLongBE:unsignedLongValue];
    v63 = [v62 subdataWithOffset:8 - v74 length:v74];

    v31 = v63;
    goto LABEL_17;
  }

  v64 = [formatCopy isEqualToString:@"02"];
  if (v64)
  {
    v73 = cityCodeCopy;
    v49 = formatCopy;
    v50 = codeCopy;
    v51 = v74;
    v52 = MEMORY[0x28223BE20](v64);
    v54 = &v69 - v65;
    if (v66)
    {
      v67 = 0;
      do
      {
        v68 = [v31 decodeBCDAtOffset:v67 length:{1, v52}];
        v54[v67] = [v68 unsignedCharValue];

        ++v67;
      }

      while (v51 != v67);
    }

    goto LABEL_28;
  }

  if ([formatCopy isEqualToString:@"04"])
  {
    encodeBCD = [v31 decodeBCD];
    goto LABEL_31;
  }

LABEL_17:

  return v31;
}

- (void)adjustState:(id)state history:(id)history ctx:(id)ctx
{
  stateCopy = state;
  historyCopy = history;
  ctxCopy = ctx;
  if ([historyCopy count])
  {
    v10 = [historyCopy objectAtIndexedSubscript:0];
    v11 = MEMORY[0x277CBEA90];
    v12 = [v10 objectForKeyedSubscript:@"CityCode"];
    v13 = [v11 dataWithShortBE:{objc_msgSend(v12, "unsignedShortValue")}];
    asHexString = [v13 asHexString];

    v15 = +[AppletConfigurationData getWuluSettings];
    v16 = [v15 objectForKeyedSubscript:@"cityRules"];
    v17 = [v16 objectForKeyedSubscript:asHexString];

    [(WuluDecoder *)self removeEnRouteForSingleTapBusGuangdong:stateCopy transaction:v10 cityCode:v17];
  }

  [(WuluDecoder *)self removeUnreliable1EEntryFlag:stateCopy ctx:ctxCopy];
  [(WuluDecoder *)self setMetroEntryWithLocalLog:stateCopy ctx:ctxCopy];
  [(WuluDecoder *)self setGalileoJinshanMaglevNonlocal:stateCopy ctx:ctxCopy];
}

- (void)removeEnRouteForSingleTapBusGuangdong:(id)guangdong transaction:(id)transaction cityCode:(id)code
{
  guangdongCopy = guangdong;
  transactionCopy = transaction;
  codeCopy = code;
  v9 = codeCopy;
  if (codeCopy)
  {
    if ([codeCopy unsignedIntValue] == 1)
    {
      v10 = [transactionCopy objectForKeyedSubscript:@"TypeDetail"];

      if (v10 == @"TransitBus")
      {
        v11 = [transactionCopy objectForKeyedSubscript:@"IgnoreReason"];

        if (!v11)
        {
          v12 = [guangdongCopy objectForKeyedSubscript:@"TransactionInProgress"];
          [v12 removeObject:@"TransitBus"];
        }
      }
    }
  }
}

- (void)setMetroEntryWithLocalLog:(id)log ctx:(id)ctx
{
  v40 = *MEMORY[0x277D85DE8];
  logCopy = log;
  ctxCopy = ctx;
  v8 = [logCopy objectForKeyedSubscript:@"TransactionInProgress"];
  if (([v8 containsObject:@"TransitMetro"] & 1) == 0)
  {
    v9 = [logCopy objectForKeyedSubscript:@"SPRaw"];
    v10 = [MEMORY[0x277CBEA90] dataWithShortBE:{objc_msgSend(v9, "unsignedShortValue")}];
    v11 = [MEMORY[0x277CBEA90] dataWithHexString:@"2900"];
    v12 = [v10 isEqualToData:v11];

    if (v12)
    {
      localRecords = [ctxCopy localRecords];
      v14 = [localRecords filter:&__block_literal_global_755];

      if (v14 && [v14 count])
      {
        v31 = v10;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = *v34;
        while (1)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v33 + 1) + 8 * i) sfi];
            switch(v20)
            {
              case 17:
                v21 = @"TransitMetro";
                break;
              case 20:
                v21 = @"TransitTrain";
                break;
              case 19:
                v21 = @"TransitTrainMaglev";
                break;
              default:
                continue;
            }

            [v8 addObject:v21];
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (!v17)
          {
LABEL_19:

            v10 = v31;
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v22 = v9;
      v23 = +[AppletConfigurationData getWuluSettings];
      v24 = [v23 objectForKeyedSubscript:@"localLogSettings"];
      asHexString = [v10 asHexString];
      v26 = [v24 objectForKeyedSubscript:asHexString];

      v32 = 0;
      v27 = [(WuluDecoder *)self isMetroEntry:ctxCopy cityCode:v10 setting:v26 error:&v32];
      v28 = v32;
      v29 = v28;
      if (v28)
      {
        v30 = ATLLogObject(v28);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v10;
          _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Entry information is not obtained correctly for city %@.", buf, 0xCu);
        }

        v9 = v22;
      }

      else
      {
        v9 = v22;
        if (v27)
        {
          [v8 addObject:@"TransitMetro"];
        }
      }
    }

LABEL_28:
  }
}

uint64_t __45__WuluDecoder_setMetroEntryWithLocalLog_ctx___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 number] == 3 || objc_msgSend(v2, "number") == 6)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [v2 data];
    v5 = [v3 numberWithUnsignedChar:{objc_msgSend(v4, "u8:", 0)}];
    v6 = [&unk_2843C7268 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setGalileoJinshanMaglevNonlocal:(id)nonlocal ctx:(id)ctx
{
  nonlocalCopy = nonlocal;
  file1A = [ctx file1A];
  v6 = [file1A firstWhere:&__block_literal_global_760];

  data = [v6 data];
  v8 = [data subdataWithOffset:15 length:2];
  asHexString = [v8 asHexString];
  v10 = [asHexString isEqualToString:@"2900"];

  if (v10)
  {
    data2 = [v6 data];
    if (*([data2 bytes] + 14) == 1)
    {
    }

    else
    {
      data3 = [v6 data];
      v13 = *([data3 bytes] + 14);

      if (v13 != 3)
      {
        goto LABEL_11;
      }
    }

    v14 = [nonlocalCopy objectForKeyedSubscript:@"TransactionInProgress"];
    [v14 removeObject:@"TransitBus"];

    data4 = [v6 data];
    v16 = [data4 subdataWithOffset:26 length:1];
    v17 = [v16 u8:0];

    v18 = [nonlocalCopy objectForKeyedSubscript:@"TransactionInProgress"];
    v19 = v18;
    v20 = @"TransitMetro";
    if (v17 == 34)
    {
      v20 = @"TransitTrain";
    }

    if (v17 == 144)
    {
      v21 = @"TransitTrainMaglev";
    }

    else
    {
      v21 = v20;
    }

    [v18 addObject:v21];
  }

LABEL_11:
}

- (void)removeUnreliable1EEntryFlag:(id)flag ctx:(id)ctx
{
  v62 = *MEMORY[0x277D85DE8];
  flagCopy = flag;
  ctxCopy = ctx;
  file1E = [ctxCopy file1E];
  v44 = [file1E firstWhere:&__block_literal_global_762];

  v43 = flagCopy;
  v46 = [flagCopy objectForKeyedSubscript:@"TransactionInProgress"];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:?];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v48 = *v54;
    v45 = v8;
    do
    {
      v11 = 0;
      v47 = v10;
      do
      {
        if (*v54 != v48)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v53 + 1) + 8 * v11);
        if ([v12 isEqualToString:@"TransitMetro"])
        {
          v13 = 1;
        }

        else
        {
          v14 = [v12 isEqualToString:@"TransitBus"];
          if ((v14 & 1) == 0)
          {
            v16 = ATLLogObject(v14);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v12;
              _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Unreliable city only has bus and metro, skip processing for type %@.", buf, 0xCu);
            }

            goto LABEL_35;
          }

          v13 = 2;
        }

        file1A = [ctxCopy file1A];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __47__WuluDecoder_removeUnreliable1EEntryFlag_ctx___block_invoke_764;
        v51[3] = &__block_descriptor_36_e20_B16__0__WuluRecord_8l;
        v52 = v13;
        v16 = [file1A firstWhere:v51];

        if (!v16)
        {
          goto LABEL_30;
        }

        data = [v16 data];
        if (*([data bytes] + 14) != 1)
        {
          data2 = [v16 data];
          if (*([data2 bytes] + 14) != 3)
          {
            data3 = [v16 data];
            v40 = *([data3 bytes] + 14);

            if (v40 != 1)
            {
LABEL_30:
              if ([v12 isEqualToString:@"TransitMetro"])
              {
                goto LABEL_35;
              }

              v21 = v44;
              v20 = v21;
              if (v21)
              {
LABEL_17:
                v22 = ctxCopy;
                data4 = [v20 data];
                v24 = [data4 subdataWithOffset:32 length:2];

                v25 = +[AppletConfigurationData getWuluSettings];
                v26 = [v25 objectForKeyedSubscript:@"cityRules"];
                asHexString = [v24 asHexString];
                v28 = [v26 objectForKeyedSubscript:asHexString];

                intValue = [v28 intValue];
                if (intValue == 99)
                {
                  v30 = ATLLogObject(intValue);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v58 = v12;
                    v59 = 2112;
                    v60 = v24;
                    _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEFAULT, "%@ entry flag removed as city code %@ in unreliable 1E city list.", buf, 0x16u);
                  }

                  [v46 removeObject:v12];
                }

                ctxCopy = v22;
                v8 = v45;
                v10 = v47;
                goto LABEL_35;
              }

              goto LABEL_32;
            }

            goto LABEL_15;
          }
        }

LABEL_15:
        if ([v16 associatedSerialNumber])
        {
          file1E2 = [ctxCopy file1E];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __47__WuluDecoder_removeUnreliable1EEntryFlag_ctx___block_invoke_766;
          v49[3] = &unk_278874AD0;
          v50 = v16;
          v20 = [file1E2 firstWhere:v49];

          if (v20)
          {
            goto LABEL_17;
          }

LABEL_32:
          v41 = ATLLogObject(v21);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            associatedSerialNumber = [v16 associatedSerialNumber];
            *buf = 138412546;
            v58 = v12;
            v59 = 1024;
            LODWORD(v60) = associatedSerialNumber;
            _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEFAULT, "Associated 1E record for %@ with associated SN = %u cannot be found, remove the entry flag.", buf, 0x12u);
          }

          [v46 removeObject:v12];
          goto LABEL_35;
        }

        data5 = [v16 data];
        v32 = [data5 subdataWithOffset:15 length:2];

        v33 = +[AppletConfigurationData getWuluSettings];
        v34 = [v33 objectForKeyedSubscript:@"cityRules"];
        asHexString2 = [v32 asHexString];
        v36 = [v34 objectForKeyedSubscript:asHexString2];

        intValue2 = [v36 intValue];
        if (intValue2 == 99)
        {
          v38 = ATLLogObject(intValue2);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = v12;
            v59 = 2112;
            v60 = v32;
            _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_DEFAULT, "%@ entry flag removed as city code %@ in unreliable city list and 1A's associated SN is 0.", buf, 0x16u);
          }

          [v46 removeObject:v12];
        }

        v10 = v47;
LABEL_35:

        ++v11;
      }

      while (v10 != v11);
      v10 = [v8 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v10);
  }
}

- (id)adjustHistory:(id)history
{
  v25 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v5 = [historyCopy mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = historyCopy;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = MEMORY[0x277CBEA90];
        v12 = [v10 objectForKeyedSubscript:@"CityCode"];
        v13 = [v11 dataWithShortBE:{objc_msgSend(v12, "unsignedShortValue")}];
        asHexString = [v13 asHexString];

        v15 = +[AppletConfigurationData getWuluSettings];
        v16 = [v15 objectForKeyedSubscript:@"cityRules"];
        v17 = [v16 objectForKeyedSubscript:asHexString];

        [(WuluDecoder *)self removeDoubleMetroTapGuangdong:v10 history:v5 cityCode:v17];
        [(WuluDecoder *)self addFakeBusTxnGuangdong:v10 history:v5 cityCode:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)removeDoubleMetroTapGuangdong:(id)guangdong history:(id)history cityCode:(id)code
{
  v33 = *MEMORY[0x277D85DE8];
  guangdongCopy = guangdong;
  historyCopy = history;
  codeCopy = code;
  v11 = codeCopy;
  if (codeCopy && [codeCopy unsignedIntValue] == 1)
  {
    v12 = [guangdongCopy objectForKeyedSubscript:@"Amount"];
    if ([v12 intValue])
    {
    }

    else
    {
      v13 = [guangdongCopy objectForKeyedSubscript:@"TypeDetail"];

      if (v13 == @"TransitMetro")
      {
        v14 = [guangdongCopy objectForKeyedSubscript:@"TypeDetailRaw"];
        v15 = [v14 intValue] >> 8;

        v16 = [(WuluDecoder *)self findNextCappPuchaseEntry:guangdongCopy history:historyCopy];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 objectForKeyedSubscript:@"TypeDetailRaw"];
          intValue = [v18 intValue];

          v20 = [v17 objectForKeyedSubscript:@"TypeDetail"];
          if (v20 == @"TransitMetro" && (intValue & 0xFF00) == 0x300 && ((v21 = v15, v15 == 3) || v15 == 6))
          {
            v22 = [guangdongCopy objectForKeyedSubscript:@"CityCode"];
            v23 = [v17 objectForKeyedSubscript:@"CityCode"];
            v24 = [v22 isEqualToNumber:v23];

            if (v24)
            {
              v25 = ATLLogObject([historyCopy removeObject:guangdongCopy]);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [guangdongCopy objectForKeyedSubscript:@"SerialNumber"];
                v27 = 138412802;
                v28 = v26;
                v29 = 1024;
                v30 = v21;
                v31 = 1024;
                v32 = 3;
                _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEFAULT, "SN %@ with type=%d, next transaction type=%d, both modality are metro, remove this transaction.", &v27, 0x18u);
              }
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

- (void)addFakeBusTxnGuangdong:(id)guangdong history:(id)history cityCode:(id)code
{
  v31 = *MEMORY[0x277D85DE8];
  guangdongCopy = guangdong;
  historyCopy = history;
  codeCopy = code;
  v11 = codeCopy;
  if (codeCopy)
  {
    if ([codeCopy unsignedIntValue] == 1)
    {
      v12 = [guangdongCopy objectForKeyedSubscript:@"TypeDetailRaw"];
      intValue = [v12 intValue];

      if ((intValue & 0xFF00) == 0x300)
      {
        v14 = [guangdongCopy objectForKeyedSubscript:@"TypeDetail"];

        if (v14 == @"TransitBus")
        {
          v15 = [(WuluDecoder *)self findNextCappPuchaseEntry:guangdongCopy history:historyCopy];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKeyedSubscript:@"TypeDetailRaw"];
            intValue2 = [v17 intValue];

            v19 = [v16 objectForKeyedSubscript:@"TypeDetail"];

            if (v19 != @"TransitBus" || (intValue2 & 0xFF00) == 0x300)
            {
              v20 = [guangdongCopy mutableCopy];
              [v20 removeObjectForKey:@"IgnoreReason"];
              v21 = MEMORY[0x277CCABB0];
              v22 = [v20 objectForKeyedSubscript:@"SerialNumber"];
              v23 = [v21 numberWithInt:{objc_msgSend(v22, "intValue") + 1}];
              [v20 setObject:v23 forKeyedSubscript:@"SerialNumber"];

              v24 = ATLLogObject([historyCopy insertObject:v20 atIndex:{objc_msgSend(historyCopy, "indexOfObject:", guangdongCopy)}]);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [guangdongCopy objectForKeyedSubscript:@"SerialNumber"];
                v26 = [v16 objectForKeyedSubscript:@"SerialNumber"];
                v27 = 138412546;
                v28 = v25;
                v29 = 2112;
                v30 = v26;
                _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "SN %@, previous transaction != bus or is an entry at %@, add a fake tap-out.", &v27, 0x16u);
              }
            }
          }
        }
      }
    }
  }
}

- (id)findNextCappPuchaseEntry:(id)entry history:(id)history
{
  historyCopy = history;
  v7 = [entry objectForKeyedSubscript:@"SerialNumber"];
  v8 = [(WuluDecoder *)self convertWalletSNtoAppletSN:v7]+ 1;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__WuluDecoder_findNextCappPuchaseEntry_history___block_invoke;
  v11[3] = &unk_278874B18;
  v11[4] = self;
  v12 = v8;
  v9 = [historyCopy firstWhere:v11];

  return v9;
}

BOOL __48__WuluDecoder_findNextCappPuchaseEntry_history___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"SerialNumber"];
  v4 = [v3 intValue];
  v5 = v4 == [*(a1 + 32) convertAppletSNtoWalletSN:*(a1 + 40) txnTypeIdentifier:9];

  return v5;
}

- (id)resolveTransitModality:(unsigned __int8)modality
{
  if ((modality - 1) > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_278874B38 + (modality - 1));
  }
}

- (BOOL)isMetroEntry:(id)entry cityCode:(id)code setting:(id)setting error:(id *)error
{
  v102[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  codeCopy = code;
  settingCopy = setting;
  v12 = settingCopy;
  if (settingCopy)
  {
    v77 = entryCopy;
    v13 = MEMORY[0x277CBEA90];
    v14 = [settingCopy objectForKeyedSubscript:@"localRecordSfi"];
    v15 = [v13 dataWithHexString:v14];
    v16 = [v15 u8:0];

    v17 = MEMORY[0x277CBEA90];
    v18 = [v12 objectForKeyedSubscript:@"localRecordId"];
    v19 = [v17 dataWithHexString:v18];
    v20 = [v19 u8:0];

    v21 = MEMORY[0x277CBEA90];
    v22 = [v12 objectForKeyedSubscript:@"metroInStationOffset"];
    v23 = [v21 dataWithHexString:v22];
    v24 = [v23 u8:0];

    v25 = MEMORY[0x277CBEA90];
    v26 = [v12 objectForKeyedSubscript:@"metroInStationValue"];
    v27 = [v25 dataWithHexString:v26];
    v28 = [v27 u8:0];

    v30 = ATLLogObject(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v83 = codeCopy;
      v84 = 1024;
      v85 = v16;
      v86 = 1024;
      v87 = v20;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEFAULT, "City %@ local record %02X(%02X) is being checked for enroute.", buf, 0x18u);
    }

    localRecords = [entryCopy localRecords];
    firstObject = [localRecords firstObject];

    if (firstObject)
    {
      number = [firstObject sfi];
      if (number == v16)
      {
        number = [firstObject number];
        if (number == v20)
        {
          data = [firstObject data];
          v36 = [data length];

          if (v36 >= v24)
          {
            data2 = [firstObject data];
            v74 = [data2 u8:v24] == v28;
          }

          else
          {
            v38 = ATLLogObject(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              data3 = [firstObject data];
              v40 = [data3 length];
              *buf = 138413314;
              v83 = codeCopy;
              v84 = 1024;
              v85 = v16;
              v86 = 1024;
              v87 = v20;
              v88 = 2048;
              *v89 = v40;
              *&v89[8] = 1024;
              v90 = v24;
              _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_ERROR, "City %@ local record %02X(%02X) was expected but not enough data provided. (actual length = %lu, expected minimum %u).", buf, 0x28u);
            }

            v41 = objc_alloc(MEMORY[0x277CCACA8]);
            data4 = [firstObject data];
            data2 = [v41 initWithFormat:@"City %@ local record %02X(%02X) was expected but not enough data provided. (actual length = %lu, expected minimum %u).", codeCopy, v16, v20, objc_msgSend(data4, "length"), v24];

            if (error)
            {
              v44 = *error;
              v45 = MEMORY[0x277CCA9B8];
              if (*error)
              {
                v46 = *MEMORY[0x277CCA7E8];
                v78[0] = *MEMORY[0x277CCA450];
                v78[1] = v46;
                v79[0] = data2;
                v79[1] = v44;
                v47 = MEMORY[0x277CBEAC0];
                v48 = v79;
                v49 = v78;
                v50 = 2;
              }

              else
              {
                v80 = *MEMORY[0x277CCA450];
                v81 = data2;
                v47 = MEMORY[0x277CBEAC0];
                v48 = &v81;
                v49 = &v80;
                v50 = 1;
              }

              v75 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:v50];
              entryCopy = v77;
              goto LABEL_36;
            }

            v74 = 0;
          }

          entryCopy = v77;
          goto LABEL_38;
        }
      }

      v60 = ATLLogObject(number);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = [firstObject sfi];
        number2 = [firstObject number];
        *buf = 138413314;
        v83 = codeCopy;
        v84 = 1024;
        v85 = v16;
        v86 = 1024;
        v87 = v20;
        v88 = 1024;
        *v89 = v61;
        *&v89[4] = 1024;
        *&v89[6] = number2;
        _os_log_impl(&dword_22EEF5000, v60, OS_LOG_TYPE_ERROR, "City %@ local record %02X(%02X) was expected but got %02X(%02X)", buf, 0x24u);
      }

      v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"City %@ local record %02X(%02X) was expected but got %02X(%02X)", codeCopy, v16, v20, objc_msgSend(firstObject, "sfi"), objc_msgSend(firstObject, "number")];
      data2 = v63;
      if (!error)
      {
        goto LABEL_37;
      }

      v64 = *error;
      v45 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v65 = *MEMORY[0x277CCA7E8];
        v91[0] = *MEMORY[0x277CCA450];
        v91[1] = v65;
        v92[0] = v63;
        v92[1] = v64;
        v66 = MEMORY[0x277CBEAC0];
        v67 = v92;
        v68 = v91;
LABEL_28:
        v73 = 2;
LABEL_35:
        v75 = [v66 dictionaryWithObjects:v67 forKeys:v68 count:v73];
LABEL_36:
        *error = [v45 errorWithDomain:@"ATL" code:8 userInfo:v75];

LABEL_37:
        v74 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v93 = *MEMORY[0x277CCA450];
      v94 = v63;
      v66 = MEMORY[0x277CBEAC0];
      v67 = &v94;
      v68 = &v93;
    }

    else
    {
      v69 = ATLLogObject(v33);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v83 = codeCopy;
        _os_log_impl(&dword_22EEF5000, v69, OS_LOG_TYPE_ERROR, "City %@ local record is missing.", buf, 0xCu);
      }

      codeCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"City %@ local record is missing.", codeCopy];
      data2 = codeCopy;
      if (!error)
      {
        goto LABEL_37;
      }

      v71 = *error;
      v45 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v72 = *MEMORY[0x277CCA7E8];
        v95[0] = *MEMORY[0x277CCA450];
        v95[1] = v72;
        v96[0] = codeCopy;
        v96[1] = v71;
        v66 = MEMORY[0x277CBEAC0];
        v67 = v96;
        v68 = v95;
        goto LABEL_28;
      }

      v97 = *MEMORY[0x277CCA450];
      v98 = codeCopy;
      v66 = MEMORY[0x277CBEAC0];
      v67 = &v98;
      v68 = &v97;
    }

    v73 = 1;
    goto LABEL_35;
  }

  v51 = ATLLogObject(0);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "No setting.", buf, 2u);
  }

  v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No setting."];
  firstObject = v52;
  if (error)
  {
    v53 = *error;
    v54 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v55 = *MEMORY[0x277CCA7E8];
      v99[0] = *MEMORY[0x277CCA450];
      v99[1] = v55;
      v100[0] = v52;
      v100[1] = v53;
      v56 = MEMORY[0x277CBEAC0];
      v57 = v100;
      v58 = v99;
      v59 = 2;
    }

    else
    {
      v101 = *MEMORY[0x277CCA450];
      v102[0] = v52;
      v56 = MEMORY[0x277CBEAC0];
      v57 = v102;
      v58 = &v101;
      v59 = 1;
    }

    data2 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:v59];
    [v54 errorWithDomain:@"ATL" code:8 userInfo:data2];
    *error = v74 = 0;
    goto LABEL_38;
  }

  v74 = 0;
LABEL_39:

  return v74;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v13 = [eventCopy length];
  if (v13 > 1)
  {
    bytes = [eventCopy bytes];
    v25 = *bytes;
    switch(v25)
    {
      case 0x12:
        v28 = ATLLogObject(bytes);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_DEFAULT, "Deselect event, nothing to do here", buf, 2u);
        }

        goto LABEL_26;
      case 2:
        v26 = [(WuluDecoder *)self parseEndEvent:eventCopy withApplet:appletCopy withError:error];
        break;
      case 1:
        v26 = [(WuluDecoder *)self parseStartEvent:eventCopy withApplet:appletCopy withError:error];
        break;
      default:
        v29 = ATLLogObject(bytes);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v44 = v25;
          _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Unknown event type %u", buf, 8u);
        }

        v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown event type %u", v25];
        v16 = v30;
        if (!error)
        {
          goto LABEL_25;
        }

        v31 = *error;
        v18 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v32 = *MEMORY[0x277CCA7E8];
          v35[0] = *MEMORY[0x277CCA450];
          v35[1] = v32;
          v36[0] = v30;
          v36[1] = v31;
          v20 = MEMORY[0x277CBEAC0];
          v21 = v36;
          v22 = v35;
          goto LABEL_7;
        }

        v37 = *MEMORY[0x277CCA450];
        v38 = v30;
        v20 = MEMORY[0x277CBEAC0];
        v21 = &v38;
        v22 = &v37;
LABEL_23:
        v23 = 1;
        goto LABEL_24;
    }

    v27 = v26;
    goto LABEL_27;
  }

  v14 = ATLLogObject(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v44 = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
  v16 = v15;
  if (!error)
  {
    goto LABEL_25;
  }

  v17 = *error;
  v18 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v41 = *MEMORY[0x277CCA450];
    v42 = v15;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v42;
    v22 = &v41;
    goto LABEL_23;
  }

  v19 = *MEMORY[0x277CCA7E8];
  v39[0] = *MEMORY[0x277CCA450];
  v39[1] = v19;
  v40[0] = v15;
  v40[1] = v17;
  v20 = MEMORY[0x277CBEAC0];
  v21 = v40;
  v22 = v39;
LABEL_7:
  v23 = 2;
LABEL_24:
  v33 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
  *error = [v18 errorWithDomain:@"ATL" code:6 userInfo:v33];

LABEL_25:
LABEL_26:
  v27 = 0;
LABEL_27:

  return v27;
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
  v37[8] = &unk_2843C63E0;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:9];

LABEL_29:

  return v33;
}

- (id)parseEndEvent:(id)event withApplet:(id)applet withError:(id *)error
{
  v62[1] = *MEMORY[0x277D85DE8];
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
      goto LABEL_29;
    }

    v14 = *error;
    v15 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v59[0] = *MEMORY[0x277CCA450];
      v59[1] = v16;
      v60[0] = v12;
      v60[1] = v14;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v60;
      v19 = v59;
      v20 = 2;
    }

    else
    {
      v61 = *MEMORY[0x277CCA450];
      v62[0] = v12;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v62;
      v19 = &v61;
      v20 = 1;
    }

    v36 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
    v37 = v15;
    v38 = 3;
LABEL_28:
    *error = [v37 errorWithDomain:@"ATL" code:v38 userInfo:v36];

LABEL_29:
    v42 = 0;
    goto LABEL_32;
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
      goto LABEL_29;
    }

    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v55[0] = *MEMORY[0x277CCA450];
      v55[1] = v31;
      v56[0] = v28;
      v56[1] = v29;
      v32 = MEMORY[0x277CBEAC0];
      v33 = v56;
      v34 = v55;
      v35 = 2;
    }

    else
    {
      v57 = *MEMORY[0x277CCA450];
      v58 = v28;
      v32 = MEMORY[0x277CBEAC0];
      v33 = &v58;
      v34 = &v57;
      v35 = 1;
    }

    v36 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
    v37 = v30;
    v38 = 6;
    goto LABEL_28;
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
  v13 = [eventCopy subdataWithRange:{9, objc_msgSend(eventCopy, "length") - 9}];
  *&buf = [v13 bytes];
  *(&buf + 1) = [v13 length];
  v41 = [(WuluDecoder *)self DecodeEndE1TLV:&buf error:error];
  if (v41 && !*error)
  {
    v52[0] = @"EventType";
    v52[1] = @"appletIdentifier";
    v53[0] = @"EndEvent";
    v53[1] = appletCopy;
    v52[2] = @"Version";
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 1)];
    v53[2] = v51;
    v52[3] = @"Interface";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 2)];
    v53[3] = v50;
    v52[4] = @"didError";
    v49 = [MEMORY[0x277CCABB0] numberWithBool:v40 != 144];
    v53[4] = v49;
    v52[5] = @"command";
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(v39)];
    v53[5] = v43;
    v52[6] = @"status";
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:__rev16(v40)];
    v53[6] = v44;
    v52[7] = @"result";
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:(v40 == 144) << 6];
    v53[7] = v45;
    v53[8] = &unk_2843C64A0;
    v52[8] = @"informative";
    v52[9] = @"type";
    v53[9] = &unk_2843C64B8;
    v52[10] = @"ReadOperationInfo";
    v46 = [v41 objectForKeyedSubscript:?];
    v53[10] = v46;
    v52[11] = @"WriteOperationInfo";
    v47 = [v41 objectForKeyedSubscript:?];
    v53[11] = v47;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:12];
  }

  else
  {
    v42 = 0;
  }

LABEL_32:

  return v42;
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

    LogBinary(OS_LOG_TYPE_ERROR, "[WuluDecoder DecodeEndE1TLV:error:]", 1416, v->var0, v->var1, @"E1 TLV data", v44, v45, v48);
    goto LABEL_27;
  }

  *buf = 0u;
  v58 = 0;
  v18 = DERParseSequenceSpec(v50, &EndEventE1ContentSpec, buf, 0x20uLL);
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
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Wulu decoder doesn't expect processEndOfTransaction", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Wulu decoder doesn't expect processEndOfTransaction"];
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

- (id)setTimer:(id)timer history:(id)history
{
  v41 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  historyCopy = history;
  v7 = historyCopy;
  if (!historyCopy)
  {
    v30 = 0;
    goto LABEL_35;
  }

  v8 = [historyCopy count];
  if (!v8)
  {
    v11 = ATLLogObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "No history found.", buf, 2u);
    }

    v30 = 0;
    goto LABEL_34;
  }

  v9 = v8;
  v10 = [v7 objectAtIndexedSubscript:0];
  v11 = [v10 objectForKeyedSubscript:@"CityCode"];

  if (!v11)
  {
    v14 = ATLLogObject(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "No city code in the last history record.", buf, 2u);
    }

    v30 = 0;
    goto LABEL_33;
  }

  v13 = [v7 objectAtIndexedSubscript:0];
  v14 = [v13 objectForKeyedSubscript:@"TerminalIdentifier"];

  if (v9 == 1)
  {
LABEL_9:
    v16 = [MEMORY[0x277CBEA90] dataWithShortBE:{-[NSObject intValue](v11, "intValue")}];
    v21 = +[AppletConfigurationData getWuluSettings];
    v22 = [v21 objectForKeyedSubscript:@"timerScript"];
    asHexString = [v16 asHexString];
    v18 = [v22 objectForKeyedSubscript:asHexString];

    if (v18)
    {
      goto LABEL_40;
    }

    v25 = ATLLogObject(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v40) = [v11 intValue];
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEFAULT, "No available timer for %02X, use the default one.", buf, 8u);
    }

    v26 = +[AppletConfigurationData getWuluSettings];
    v27 = [v26 objectForKeyedSubscript:@"timerScript"];
    v18 = [v27 objectForKeyedSubscript:@"default"];

    if (v18)
    {
LABEL_40:
      v28 = [v18 count];
      if (v28 == 3)
      {
        v29 = ATLLogObject(3);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v11;
          _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_DEFAULT, "Set timer for city code = %@.", buf, 0xCu);
        }

        v38 = 0;
        [timerCopy applyScript:v18 error:&v38];
        v30 = v38;
        goto LABEL_32;
      }
    }

    v31 = ATLLogObject(v28);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [v18 count];
      *buf = 67109120;
      LODWORD(v40) = v32;
      v33 = "No available timer or timers count %u != 3";
      v34 = v31;
      v35 = OS_LOG_TYPE_ERROR;
      v36 = 8;
LABEL_30:
      _os_log_impl(&dword_22EEF5000, v34, v35, v33, buf, v36);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v15 = [v7 objectAtIndexedSubscript:1];
  v16 = [v15 objectForKeyedSubscript:@"CityCode"];

  v17 = [v7 objectAtIndexedSubscript:1];
  v18 = [v17 objectForKeyedSubscript:@"TerminalIdentifier"];

  if (v18)
  {
    if ([v16 isEqualToNumber:v11])
    {
      v20 = [v14 isEqualToData:v18];
      if ((v20 & 1) == 0)
      {
        v31 = ATLLogObject(v20);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v11;
          v33 = "Same city city code = %@ and same on terminal, ignore the timer set.";
          v34 = v31;
          v35 = OS_LOG_TYPE_DEFAULT;
          v36 = 12;
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    goto LABEL_9;
  }

  v31 = ATLLogObject(v19);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v33 = "No terminal id in transaction.";
    v34 = v31;
    v35 = OS_LOG_TYPE_ERROR;
    v36 = 2;
    goto LABEL_30;
  }

LABEL_31:

  v30 = 0;
LABEL_32:

LABEL_33:
LABEL_34:

LABEL_35:

  return v30;
}

@end