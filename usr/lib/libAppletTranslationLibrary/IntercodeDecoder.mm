@interface IntercodeDecoder
+ (id)decodeContractFFBitMap:(id)map;
+ (id)decodeContractJourneyDataBitmap:(id)bitmap;
+ (id)decodeContractList:(id)list;
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
+ (id)formatCommutePlanIdentifier:(id)identifier;
+ (id)formatCommutePlanIdentifier:(id)identifier withTariffCode:(id)code withZoneList:(id)list;
+ (id)getAbsoluteDateComponents:(id)components withTime:(id)time;
+ (id)getAbsoluteDateComponentsWithDefaultMinutes:(id)minutes withTime:(id)time withDefaultMinutes:(id)defaultMinutes;
+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
+ (id)getAppletStateAndHistory:(id)history withError:(id *)error;
+ (id)getServiceProviderData:(id)data withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPublicKey:(id)key withEncryptionScheme:(id)scheme withError:(id *)error;
+ (void)interpretTransactionEvent:(id)event;
- (id)generateContactEndEvent:(id)event withDidError:(BOOL)error;
- (id)generateEndEventFromHCI;
@end

@implementation IntercodeDecoder

+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "IntercodeDecoder doesn't support getAppletStateAndHistory (implemented in specific subDecoders)", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IntercodeDecoder doesn't support getAppletStateAndHistory (implemented in specific subDecoders)"];
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

+ (id)getAppletStateAndHistory:(id)history withError:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = ATLLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "IntercodeDecoder doesn't support getAppletStateAndHistory (implemented in specific subDecoders)", v17, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IntercodeDecoder doesn't support getAppletStateAndHistory (implemented in specific subDecoders)"];
  v7 = v6;
  if (error)
  {
    v8 = *error;
    v9 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v10 = *MEMORY[0x277CCA7E8];
      v18[0] = *MEMORY[0x277CCA450];
      v18[1] = v10;
      v19[0] = v6;
      v19[1] = v8;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v19;
      v13 = v18;
      v14 = 2;
    }

    else
    {
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v6;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v21;
      v13 = &v20;
      v14 = 1;
    }

    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
    *error = [v9 errorWithDomain:@"ATL" code:2 userInfo:v15];
  }

  return 0;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = ATLLogObject(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "IntercodeDecoder doesn't support getServiceProviderData (implemented in specific subDecoders)", v21, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IntercodeDecoder doesn't support getServiceProviderData (implemented in specific subDecoders)"];
  v11 = v10;
  if (error)
  {
    v12 = *error;
    v13 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v22[0] = *MEMORY[0x277CCA450];
      v22[1] = v14;
      v23[0] = v10;
      v23[1] = v12;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v23;
      v17 = v22;
      v18 = 2;
    }

    else
    {
      v24 = *MEMORY[0x277CCA450];
      v25[0] = v10;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v25;
      v17 = &v24;
      v18 = 1;
    }

    v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    *error = [v13 errorWithDomain:@"ATL" code:2 userInfo:v19];
  }

  return 0;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "IntercodeDecoder doesn't support getServiceProviderData (implemented in specific subDecoders)", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IntercodeDecoder doesn't support getServiceProviderData (implemented in specific subDecoders)"];
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

- (id)generateContactEndEvent:(id)event withDidError:(BOOL)error
{
  errorCopy = error;
  eventCopy = event;
  v6 = +[CalypsoDecoder sharedInstance];
  v7 = [v6 generateContactEndEvent:eventCopy withDidError:errorCopy];

  return v7;
}

- (id)generateEndEventFromHCI
{
  v2 = ATLLogObject(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEFAULT, "IntercodeDecoder doesn't support generateEndEventFromHCI (implemented in specific subDecoders)", v4, 2u);
  }

  return 0;
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
      v7 = &unk_2843C67A0;
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

  return [IntercodeDecoder getAbsoluteDateComponents:minutes withTime:time];
}

+ (void)interpretTransactionEvent:(id)event
{
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEFAULT, "IntercodeDecoder doesn't support generateEndEventFromHCI (implemented in specific subDecoders)", v4, 2u);
  }
}

+ (id)formatCommutePlanIdentifier:(id)identifier
{
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEFAULT, "IntercodeDecoder doesn't support formatCommutePlanIdentifier via context (implemented in specific subDecoders)", v5, 2u);
  }

  return &stru_2843B92D8;
}

+ (id)getServiceProviderData:(id)data withError:(id *)error
{
  v4 = ATLLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "IntercodeDecoder doesn't support getServiceProviderData via context (implemented in specific subDecoders)", v6, 2u);
  }

  return 0;
}

+ (id)getServiceProviderData:(id)data withPublicKey:(id)key withEncryptionScheme:(id)scheme withError:(id *)error
{
  v6 = ATLLogObject(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "IntercodeDecoder doesn't support getServiceProviderData via context (implemented in specific subDecoders)", v8, 2u);
  }

  return 0;
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

+ (id)decodeContractList:(id)list
{
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = [listCopy length];
  if (v4 == 29)
  {
    v5 = [listCopy readBinaryValueAtBit:0 numberOfBits:4];
    [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
    v28 = v27 = v5;
    if (v5)
    {
      v7 = 0;
      v8 = 4;
      *&v6 = 134217984;
      v26 = v6;
      do
      {
        v9 = [listCopy readBinaryValueAtBit:v8 numberOfBits:{3, v26}];
        v10 = [listCopy readBinaryValueAtBit:v8 + 3 numberOfBits:4];
        v11 = v8 + 7;
        v12 = [listCopy readBinaryValueAtBit:v11 numberOfBits:8];
        v13 = ATLLogObject(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = v26;
          v34 = v12;
          _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEBUG, "ContractType: %llu", buf, 0xCu);
        }

        v14 = [listCopy readBinaryValueAtBit:v11 + 8 numberOfBits:4];
        v15 = [listCopy readBinaryValueAtBit:v11 + 12 numberOfBits:5];
        v31[0] = @"BestContractBitmap";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
        v32[0] = v16;
        v31[1] = @"BestContractIssuer";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        v32[1] = v17;
        v31[2] = @"BestContractType";
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
        v32[2] = v18;
        v31[3] = @"BestContractPriority";
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
        v32[3] = v19;
        v31[4] = @"BestContractPointer";
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
        v32[4] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:5];
        [v28 addObject:v21];

        ++v7;
        v8 = v11 + 17;
      }

      while (v27 > v7);
    }

    v29[0] = @"BestContract";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
    v29[1] = @"BestContractList";
    v30[0] = v22;
    v23 = v28;
    v30[1] = v28;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  else
  {
    v23 = ATLLogObject(v4);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v34) = [listCopy length];
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Invalid data length %u", buf, 8u);
    }

    v24 = 0;
  }

  return v24;
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

    v158 = [v133 objectForKeyedSubscript:@"ContractJourneyDistance"];
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

@end