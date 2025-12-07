@interface HerculesDecoder
+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result;
+ (BOOL)supportsPlasticCardMode:(unsigned __int8)mode withTransceiver:(id)transceiver;
+ (id)addAmount:(id *)amount withCurrency:(id *)currency usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey;
+ (id)calculateTransactionSN:(id *)n withDeviceId:(id *)id withDeviceSN:(id *)sN;
+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
+ (id)getIdentifier:(id *)identifier withInstanceIdentifier:(id *)instanceIdentifier;
+ (id)getRecords:(id)records withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getTransactionsFromRecord:(id *)record withCityCode:(id)code withServerRefreshRequired:(id *)required withStateDict:(id)dict withError:(id *)error;
+ (id)parseBalanceCollection:(id *)collection withError:(id *)error;
+ (id)parseBalanceItem:(id *)item withError:(id *)error;
+ (id)parseDalData:(id)data withCityCode:(id)code withStateDict:(id)dict withError:(id *)error;
+ (id)parseDateAndTime:(id *)time;
+ (id)parseEvent:(id *)event withError:(id *)error;
+ (id)parseIdentifierCollection:(id *)collection withError:(id *)error;
+ (id)parseIdentifierItem:(id *)item withError:(id *)error;
+ (id)parsePurchaseEvent:(id *)event withError:(id *)error;
+ (id)parseSaleEvent:(id *)event withError:(id *)error;
+ (id)parseUseEvent:(id *)event withError:(id *)error;
@end

@implementation HerculesDecoder

+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result
{
  v5 = *&error->var4[31] != 0x4000 || (*(&error->var7 + 1) ^ 0x13 | error->var8[1] ^ 0xEE) != 0;
  if (result)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 64;
    }

    if (HIBYTE(error->var7) == 15)
    {
      v7 = -4096;
    }

    else
    {
      v7 = v6;
    }

    *result = v7;
  }

  return v5;
}

+ (BOOL)supportsPlasticCardMode:(unsigned __int8)mode withTransceiver:(id)transceiver
{
  v10 = 0;
  v4 = [MifareUtils getMcmDataDal:17987 withTransceiver:transceiver withError:&v10];
  v5 = v10;
  if ([v4 length] == 2 && v5 == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "u16BE:", 0)}];
    v7 = [HerculesMappings supportsPlasticCardMode:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v39 = 0;
  v9 = [MifareUtils getMcmDataDal:17987 withTransceiver:historyCopy withError:&v39];
  v10 = v39;
  v11 = [v9 length];
  if (v11 != 2 && v10 == 0)
  {
    v13 = ATLLogObject(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      asHexString = [v9 asHexString];
      *buf = 138412290;
      v47 = asHexString;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Invalid city code '%@'", buf, 0xCu);
    }

    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    asHexString2 = [v9 asHexString];
    v17 = [v15 initWithFormat:@"Invalid city code '%@'", asHexString2];

    v18 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45 = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v10 = [v18 errorWithDomain:@"ATL" code:3 userInfo:v19];
  }

  if (!v10)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v9, "u16BE:", 0)}];
    v38 = 0;
    v23 = [MifareUtils getMcmDataDal:17734 withTransceiver:historyCopy withError:&v38];
    v10 = v38;
    if (![v23 length] && !v10)
    {
      v24 = ATLLogObject(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "No DAL data for Event File", buf, 2u);
      }

      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for Event File"];
      v26 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = v25;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v10 = [v26 errorWithDomain:@"ATL" code:3 userInfo:v27];
    }

    if (v10)
    {
      if (error)
      {
        v28 = v10;
        v21 = 0;
        *error = v10;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_30;
    }

    v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v37 = 0;
    v30 = [HerculesDecoder parseDalData:v23 withCityCode:v22 withStateDict:v29 withError:&v37];
    v31 = v37;
    if (v31)
    {
      v10 = v31;
      if (error)
      {
LABEL_23:
        v32 = v10;
        v21 = 0;
        *error = v10;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v33 = [v29 objectForKeyedSubscript:@"Balances"];
      v36 = 0;
      v34 = [HerculesMappings addBalancesFromVC:v33 withTransceiver:historyCopy forCity:v22 withError:&v36];
      v10 = v36;
      [v29 setObject:v34 forKeyedSubscript:@"Balances"];

      if (!v10)
      {
        v40[0] = @"State";
        v40[1] = @"TransactionHistory";
        v41[0] = v29;
        v41[1] = v30;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        goto LABEL_29;
      }

      if (error)
      {
        goto LABEL_23;
      }
    }

    v21 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    v20 = v10;
    v21 = 0;
    *error = v10;
  }

  else
  {
    v21 = 0;
  }

LABEL_31:

  return v21;
}

+ (id)getRecords:(id)records withError:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  bytes = [recordsCopy bytes];
  v38 = [recordsCopy length];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  bytes2 = [recordsCopy bytes];
  bytes3 = [recordsCopy bytes];
  v9 = [recordsCopy length];
  v10 = bytes3 + v9;
  if (bytes2 >= bytes3 + v9)
  {
LABEL_10:
    reverseObjectEnumerator = [v6 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  else
  {
    v11 = v9;
    while (1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v12 = DERDecodeItemCtx(&bytes, &v34);
      if (v12)
      {
        break;
      }

      if (v34 != 0xE000000000000000)
      {
        v26 = ATLLogObject(v12);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v44 = v34;
          _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Unexpected event tag 0x%llx", buf, 0xCu);
        }

        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        v28 = [v27 initWithFormat:@"Unexpected event tag 0x%llx", v34];
        v19 = v28;
        if (error)
        {
          v29 = *error;
          v21 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v30 = *MEMORY[0x277CCA7E8];
            v39[0] = *MEMORY[0x277CCA450];
            v39[1] = v30;
            v40[0] = v28;
            v40[1] = v29;
            v23 = MEMORY[0x277CBEAC0];
            v24 = v40;
            v25 = v39;
LABEL_21:
            v31 = 2;
LABEL_25:
            v32 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v31];
            *error = [v21 errorWithDomain:@"ATL" code:3 userInfo:v32];

            goto LABEL_26;
          }

          v41 = *MEMORY[0x277CCA450];
          v42 = v28;
          v23 = MEMORY[0x277CBEAC0];
          v24 = &v42;
          v25 = &v41;
LABEL_24:
          v31 = 1;
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:bytes2 length:v35 - bytes2 + v36 freeWhenDone:0];
      [v6 addObject:v13];

      bytes2 = (v35 + v36);
      if (v35 + v36 < v10)
      {
        while (!*bytes2)
        {
          if (++bytes2 >= v10)
          {
            bytes2 = (bytes3 + v11);
            break;
          }
        }
      }

      bytes = bytes2;
      v38 = v10 - bytes2;
      if (v10 <= bytes2)
      {
        goto LABEL_10;
      }
    }

    v16 = v12;
    v17 = ATLLogObject(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v44) = v16;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Failed to decode item %d", buf, 8u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode item %d", v16];
    v19 = v18;
    if (error)
    {
      v20 = *error;
      v21 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v22 = *MEMORY[0x277CCA7E8];
        v45[0] = *MEMORY[0x277CCA450];
        v45[1] = v22;
        v46[0] = v18;
        v46[1] = v20;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v46;
        v25 = v45;
        goto LABEL_21;
      }

      v47 = *MEMORY[0x277CCA450];
      v48[0] = v18;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v48;
      v25 = &v47;
      goto LABEL_24;
    }

LABEL_26:

    allObjects = 0;
  }

  return allObjects;
}

+ (id)parseDalData:(id)data withCityCode:(id)code withStateDict:(id)dict withError:(id *)error
{
  v68[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  codeCopy = code;
  dictCopy = dict;
  if ([dataCopy length])
  {
    v11 = [HerculesDecoder getRecords:dataCopy withError:error];
    v12 = v11;
    if (!*error)
    {
      if ([v11 count])
      {
        v48 = dataCopy;
        v49 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v47 = v12;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v56;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v56 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v55 + 1) + 8 * i);
              *buf = 0;
              v54 = 0;
              *buf = [v19 bytes];
              v54 = [v19 length];
              if (v16)
              {
                v20 = 0;
              }

              else
              {
                v20 = &v52;
              }

              if (!v16)
              {
                v52 = 0;
              }

              if ([dictCopy count])
              {
                v21 = 0;
              }

              else
              {
                v21 = dictCopy;
              }

              v22 = [HerculesDecoder getTransactionsFromRecord:buf withCityCode:codeCopy withServerRefreshRequired:v20 withStateDict:v21 withError:error];
              if (!v16)
              {
                v16 = v52;
              }

              if (*error)
              {

                v32 = 0;
                v12 = v47;
                dataCopy = v48;
                v33 = v49;
                v34 = v13;
                goto LABEL_44;
              }

              if ([v22 count])
              {
                [v49 addObjectsFromArray:v22];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v16 = 0;
        }

        v51 = 0;
        v44 = [HerculesMappings mergeTaps:v49 forCity:codeCopy outEnRoute:&v51];
        v34 = v51;

        if (v16)
        {
          [dictCopy setObject:v16 forKeyedSubscript:@"ServerRefreshRequired"];
        }

        v12 = v47;
        dataCopy = v48;
        if (v34)
        {
          v59 = v34;
          v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
          [dictCopy setObject:v45 forKeyedSubscript:@"TransactionInProgress"];
        }

        v33 = v44;
        v32 = v33;
LABEL_44:
      }

      else
      {
        v35 = ATLLogObject(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "No records", buf, 2u);
        }

        v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No records"];
        v16 = v36;
        v37 = *error;
        v38 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v39 = *MEMORY[0x277CCA7E8];
          v61[0] = *MEMORY[0x277CCA450];
          v61[1] = v39;
          v62[0] = v36;
          v62[1] = v37;
          v40 = MEMORY[0x277CBEAC0];
          v41 = v62;
          v42 = v61;
          v43 = 2;
        }

        else
        {
          v63 = *MEMORY[0x277CCA450];
          v64 = v36;
          v40 = MEMORY[0x277CBEAC0];
          v41 = &v64;
          v42 = &v63;
          v43 = 1;
        }

        v33 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:v43];
        [v38 errorWithDomain:@"ATL" code:3 userInfo:v33];
        *error = v32 = 0;
      }

      goto LABEL_48;
    }

LABEL_30:
    v32 = 0;
    goto LABEL_49;
  }

  v23 = ATLLogObject(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "No DAL data", buf, 2u);
  }

  v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data"];
  v12 = v24;
  if (!error)
  {
    goto LABEL_30;
  }

  v25 = *error;
  v26 = MEMORY[0x277CCA9B8];
  if (*error)
  {
    v27 = *MEMORY[0x277CCA7E8];
    v65[0] = *MEMORY[0x277CCA450];
    v65[1] = v27;
    v66[0] = v24;
    v66[1] = v25;
    v28 = MEMORY[0x277CBEAC0];
    v29 = v66;
    v30 = v65;
    v31 = 2;
  }

  else
  {
    v67 = *MEMORY[0x277CCA450];
    v68[0] = v24;
    v28 = MEMORY[0x277CBEAC0];
    v29 = v68;
    v30 = &v67;
    v31 = 1;
  }

  v16 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
  [v26 errorWithDomain:@"ATL" code:3 userInfo:v16];
  *error = v32 = 0;
LABEL_48:

LABEL_49:

  return v32;
}

+ (id)getTransactionsFromRecord:(id *)record withCityCode:(id)code withServerRefreshRequired:(id *)required withStateDict:(id)dict withError:(id *)error
{
  v122[1] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  dictCopy = dict;
  v81 = 0;
  v82[0] = 0;
  v82[1] = 0;
  v13 = DERDecodeItemCtx(record, &v81);
  v14 = v13;
  if (v13)
  {
    v15 = ATLLogObject(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "Failed to decode E0 %d", buf, 8u);
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E0 %d", v14];
    v17 = v16;
    if (error)
    {
      v18 = *error;
      v19 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v20 = *MEMORY[0x277CCA7E8];
        v119[0] = *MEMORY[0x277CCA450];
        v119[1] = v20;
        v120[0] = v16;
        v120[1] = v18;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
      }

      else
      {
        v121 = *MEMORY[0x277CCA450];
        v122[0] = v16;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:&v121 count:1];
      }
      v36 = ;
      *error = [v19 errorWithDomain:@"ATL" code:3 userInfo:v36];
    }

LABEL_37:
    v49 = 0;
    goto LABEL_38;
  }

  if (v81 != 0xE000000000000000)
  {
    v29 = ATLLogObject(v13);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v81;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx when trying to decode E0", buf, 0xCu);
    }

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v72 = v81;
    v31 = [v30 initWithFormat:@"Unexpected tag 0x%llx when trying to decode E0"];
    v32 = v31;
    if (error)
    {
      v33 = *error;
      v34 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v35 = *MEMORY[0x277CCA7E8];
        v115[0] = *MEMORY[0x277CCA450];
        v115[1] = v35;
        v116[0] = v31;
        v116[1] = v33;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
      }

      else
      {
        v117 = *MEMORY[0x277CCA450];
        v118 = v31;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      }
      v46 = ;
      *error = [v34 errorWithDomain:@"ATL" code:3 userInfo:v46];
    }

    LogBinary(OS_LOG_TYPE_ERROR, "+[HerculesDecoder getTransactionsFromRecord:withCityCode:withServerRefreshRequired:withStateDict:withError:]", 296, record->var0, record->var1, @"Record data", v47, v48, v72);
    goto LABEL_37;
  }

  v113 = 0u;
  v114 = 0u;
  v112 = 0u;
  v110 = 0u;
  memset(v111, 0, sizeof(v111));
  v109 = 0u;
  v107 = 0u;
  memset(v108, 0, sizeof(v108));
  *buf = 0u;
  v106 = 0u;
  v21 = DERParseSequenceSpec(v82, &EventContentSpec, buf, 0xC0uLL);
  v22 = v21;
  if (v21)
  {
    v23 = ATLLogObject(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v87 = 67109120;
      *&v87[4] = v22;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Failed to decode E0 contents %d", v87, 8u);
    }

    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E0 contents %d", v22];
    v25 = v24;
    if (error)
    {
      v26 = *error;
      v27 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v28 = *MEMORY[0x277CCA7E8];
        v101[0] = *MEMORY[0x277CCA450];
        v101[1] = v28;
        v102[0] = v24;
        v102[1] = v26;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
      }

      else
      {
        v103 = *MEMORY[0x277CCA450];
        v104 = v24;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      }

      v57 = LABEL_62:;
      [v27 errorWithDomain:@"ATL" code:3 userInfo:v57];
      *error = v49 = 0;
LABEL_67:

      goto LABEL_68;
    }

    goto LABEL_60;
  }

  if (**buf != 1)
  {
    v51 = ATLLogObject(v21);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = **buf;
      *v87 = 67109120;
      *&v87[4] = v52;
      _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "Incorrect record version %hhu", v87, 8u);
    }

    v53 = objc_alloc(MEMORY[0x277CCACA8]);
    v54 = [v53 initWithFormat:@"Incorrect record version %hhu", **buf];
    v25 = v54;
    if (error)
    {
      v55 = *error;
      v27 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v56 = *MEMORY[0x277CCA7E8];
        v97[0] = *MEMORY[0x277CCA450];
        v97[1] = v56;
        v98[0] = v54;
        v98[1] = v55;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
      }

      else
      {
        v99 = *MEMORY[0x277CCA450];
        v100 = v54;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (!dictCopy)
  {
LABEL_28:
    v39 = [HerculesDecoder parseDateAndTime:&v107];
    v40 = [HerculesDecoder calculateTransactionSN:&v107 withDeviceId:&v109 withDeviceSN:&v110];
    v41 = v40;
    if (required && *(&v113 + 1) && *v113)
    {
      v42 = v40;
      *required = v41;
    }

    v43 = [MEMORY[0x277CBEA90] dataWithDERItem:&v106];
    if (*(&v108[0] + 1))
    {
      v44 = [MEMORY[0x277CBEA90] dataWithDERItem:v108];
      v45 = [HerculesMappings getStationCode:v44 withTransitInformation:v43 forCity:codeCopy];
    }

    else
    {
      v45 = 0;
    }

    *v87 = 0;
    v88 = v87;
    v89 = 0x3032000000;
    v90 = __Block_byref_object_copy__0;
    v91 = __Block_byref_object_dispose__0;
    array = [MEMORY[0x277CBEB18] array];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __108__HerculesDecoder_getTransactionsFromRecord_withCityCode_withServerRefreshRequired_withStateDict_withError___block_invoke;
    v74[3] = &unk_2788749E8;
    v25 = v39;
    v75 = v25;
    v57 = v41;
    v76 = v57;
    v77 = codeCopy;
    v58 = v43;
    v78 = v58;
    v59 = v45;
    v79 = v59;
    v80 = v87;
    v60 = DERDecodeSequenceWithBlock(&v114, v74);
    if (v60)
    {
      v61 = ATLLogObject(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *v73 = 0;
        _os_log_impl(&dword_22EEF5000, v61, OS_LOG_TYPE_ERROR, "Failed to parse event", v73, 2u);
      }

      v62 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to parse event"];
      v63 = v62;
      if (error)
      {
        v64 = *error;
        v65 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v66 = *MEMORY[0x277CCA7E8];
          v83[0] = *MEMORY[0x277CCA450];
          v83[1] = v66;
          v84[0] = v62;
          v84[1] = v64;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
        }

        else
        {
          v85 = *MEMORY[0x277CCA450];
          v86 = v62;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        }
        v67 = ;
        *error = [v65 errorWithDomain:@"ATL" code:3 userInfo:v67];
      }

      v49 = 0;
    }

    else
    {
      v49 = *(v88 + 5);
    }

    _Block_object_dispose(v87, 8);
    goto LABEL_67;
  }

  v37 = [HerculesDecoder parseBalanceCollection:v111 withError:error];
  if (v37)
  {
    [dictCopy setObject:v37 forKeyedSubscript:@"Balances"];
    if (*(&v112 + 1))
    {
      v38 = [MEMORY[0x277CCABB0] numberWithInt:*v112 != 0];
      [dictCopy setObject:v38 forKeyedSubscript:@"CardDenyListed"];
    }

    goto LABEL_28;
  }

  v68 = ATLLogObject(0);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    *v87 = 0;
    _os_log_impl(&dword_22EEF5000, v68, OS_LOG_TYPE_ERROR, "Empty balance array", v87, 2u);
  }

  v69 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Empty balance array"];
  v25 = v69;
  if (error)
  {
    v70 = *error;
    v27 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v71 = *MEMORY[0x277CCA7E8];
      v93[0] = *MEMORY[0x277CCA450];
      v93[1] = v71;
      v94[0] = v69;
      v94[1] = v70;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
    }

    else
    {
      v95 = *MEMORY[0x277CCA450];
      v96 = v69;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    }

    goto LABEL_62;
  }

LABEL_60:
  v49 = 0;
LABEL_68:

LABEL_38:

  return v49;
}

uint64_t __108__HerculesDecoder_getTransactionsFromRecord_withCityCode_withServerRefreshRequired_withStateDict_withError___block_invoke(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v3 = [HerculesDecoder parseEvent:a2 withError:&v16];
  v4 = v16;
  v5 = v4;
  if (v4)
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v7 = 3;
LABEL_16:

    goto LABEL_17;
  }

  if (v3)
  {
    [v3 setObject:a1[4] forKeyedSubscript:@"TransactionTime"];
    [v3 setObject:a1[5] forKeyedSubscript:@"SerialNumber"];
    [v3 setObject:a1[6] forKeyedSubscript:@"CityCode"];
    v8 = [v3 objectForKeyedSubscript:@"TypeDetail"];
    v9 = [v8 hasPrefix:@"Transit"];

    if (v9)
    {
      v10 = [HerculesMappings getTransitModality:a1[7] forCity:a1[6]];
      [v3 setObject:v10 forKeyedSubscript:@"TypeDetail"];

      if (a1[8])
      {
        v11 = [HerculesMappings getStationMode:a1[7] forCity:a1[6]];
        [v3 setObject:a1[8] forKeyedSubscript:v11];
      }

      v12 = [HerculesMappings processEnRouteStatus:v3 forTransitInformation:a1[7] forCity:a1[6]];

      v3 = v12;
    }

    else
    {
      v13 = [v3 objectForKeyedSubscript:@"TypeDetail"];
      if ([v13 hasPrefix:@"TopUp"])
      {
        v14 = a1[8];

        if (v14)
        {
          [v3 setObject:a1[8] forKeyedSubscript:@"StartStation"];
        }
      }

      else
      {
      }
    }

    [*(*(a1[9] + 8) + 40) addObject:v3];
    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
LABEL_17:

  return v7;
}

+ (id)parseEvent:(id *)event withError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  var0 = event->var0;
  if (event->var0 <= 0xE000000000000002)
  {
    if (var0 == 0xE000000000000001)
    {
      v7 = [HerculesDecoder parseUseEvent:&event->var1 withError:error];
      goto LABEL_17;
    }

    if (var0 == 0xE000000000000002)
    {
      v7 = [HerculesDecoder parseSaleEvent:&event->var1 withError:error];
      goto LABEL_17;
    }
  }

  else
  {
    if (var0 == 0xE000000000000003)
    {
      v7 = [HerculesDecoder parsePurchaseEvent:&event->var1 withError:error];
      goto LABEL_17;
    }

    if (var0 == 0xE000000000000004 || var0 == 0xE00000000000000ELL)
    {
      goto LABEL_16;
    }
  }

  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = event->var0;
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Unknown event type 0x%llx", &v11, 0xCu);
  }

LABEL_16:
  v7 = 0;
LABEL_17:

  return v7;
}

+ (id)parseUseEvent:(id *)event withError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v22, 0, sizeof(v22));
  v5 = DERParseSequenceSpec(event, &UseEventContentSpec, v22, 0x20uLL);
  if (!v5)
  {
    v17 = [HerculesDecoder parseIdentifierCollection:v22 withError:error];
    v9 = v17;
    if (v17)
    {
      v18 = Filter(v17, &__block_literal_global);
      v19 = Filter(v9, &__block_literal_global_573);
      v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
      [v20 setObject:@"Transit" forKeyedSubscript:@"TypeDetail"];
      if ([v18 count])
      {
        [v20 setObject:v18 forKeyedSubscript:@"Amounts"];
      }

      if ([v19 count])
      {
        [v20 setObject:v19 forKeyedSubscript:@"CommutePlans"];
      }

      goto LABEL_16;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = ATLLogObject(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v28 = v6;
    _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to decode use event item contents %d", buf, 8u);
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode use event item contents %d", v6];
  v9 = v8;
  if (!error)
  {
    goto LABEL_13;
  }

  v10 = *error;
  v11 = MEMORY[0x277CCA9B8];
  if (*error)
  {
    v12 = *MEMORY[0x277CCA7E8];
    v23[0] = *MEMORY[0x277CCA450];
    v23[1] = v12;
    v24[0] = v8;
    v24[1] = v10;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v24;
    v15 = v23;
    v16 = 2;
  }

  else
  {
    v25 = *MEMORY[0x277CCA450];
    v26 = v8;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v26;
    v15 = &v25;
    v16 = 1;
  }

  v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
  [v11 errorWithDomain:@"ATL" code:3 userInfo:v18];
  *error = v20 = 0;
LABEL_16:

LABEL_17:

  return v20;
}

BOOL __43__HerculesDecoder_parseUseEvent_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"AmountIdentifier"];
  v3 = v2 != 0;

  return v3;
}

BOOL __43__HerculesDecoder_parseUseEvent_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"CommutePlanIdentifier"];
  v3 = v2 != 0;

  return v3;
}

+ (id)parseSaleEvent:(id *)event withError:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v27 = 0u;
  v5 = DERParseSequenceSpec(event, &SaleEventContentSpec, &v27, 0xB0uLL);
  if (v5)
  {
    v6 = v5;
    v7 = ATLLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v39 = v6;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to decode sale event item contents %d", buf, 8u);
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode sale event item contents %d", v6];
    v9 = v8;
    if (error)
    {
      v10 = *error;
      v11 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v12 = *MEMORY[0x277CCA7E8];
        v34[0] = *MEMORY[0x277CCA450];
        v34[1] = v12;
        v35[0] = v8;
        v35[1] = v10;
        v13 = MEMORY[0x277CBEAC0];
        v14 = v35;
        v15 = v34;
        v16 = 2;
      }

      else
      {
        v36 = *MEMORY[0x277CCA450];
        v37 = v8;
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v37;
        v15 = &v36;
        v16 = 1;
      }

      v21 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
      [v11 errorWithDomain:@"ATL" code:3 userInfo:v21];
      *error = v25 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v25 = 0;
    goto LABEL_13;
  }

  v17 = [HerculesDecoder addAmount:v30 withCurrency:&v29 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent"];
  v9 = v17;
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = [v17 objectForKeyedSubscript:@"Amount"];
  v19 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:1 exponent:0 isNegative:1];
  v20 = [v18 decimalNumberByMultiplyingBy:v19];
  [v9 setObject:v20 forKeyedSubscript:@"Amount"];

  v21 = [HerculesDecoder getIdentifier:&v27 withInstanceIdentifier:v28];
  [v9 setObject:v21 forKeyedSubscript:@"AmountIdentifier"];
  v22 = MEMORY[0x277CBEB38];
  v32[1] = @"Amounts";
  v33[0] = @"TopUp";
  v31 = v9;
  v32[0] = @"TypeDetail";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v33[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v25 = [v22 dictionaryWithDictionary:v24];

LABEL_12:
LABEL_13:

  return v25;
}

+ (id)parsePurchaseEvent:(id *)event withError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  v5 = DERParseSequenceSpec(event, &PurchaseEventContentSpec, &v23, 0x90uLL);
  if (v5)
  {
    v6 = v5;
    v7 = ATLLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v35 = v6;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to decode purchase event item contents %d", buf, 8u);
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode purchase event item contents %d", v6];
    v9 = v8;
    if (error)
    {
      v10 = *error;
      v11 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v12 = *MEMORY[0x277CCA7E8];
        v30[0] = *MEMORY[0x277CCA450];
        v30[1] = v12;
        v31[0] = v8;
        v31[1] = v10;
        v13 = MEMORY[0x277CBEAC0];
        v14 = v31;
        v15 = v30;
        v16 = 2;
      }

      else
      {
        v32 = *MEMORY[0x277CCA450];
        v33 = v8;
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v33;
        v15 = &v32;
        v16 = 1;
      }

      v17 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
      [v11 errorWithDomain:@"ATL" code:3 userInfo:v17];
      *error = v21 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v21 = 0;
    goto LABEL_13;
  }

  v9 = [HerculesDecoder addAmount:v26 withCurrency:&v25 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent"];
  if (!v9)
  {
    goto LABEL_9;
  }

  v17 = [HerculesDecoder getIdentifier:&v23 withInstanceIdentifier:v24];
  [v9 setObject:v17 forKeyedSubscript:@"AmountIdentifier"];
  v18 = MEMORY[0x277CBEB38];
  v28[1] = @"Amounts";
  v29[0] = @"Purchase";
  v28[0] = @"TypeDetail";
  v27 = v9;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v29[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v21 = [v18 dictionaryWithDictionary:v20];

LABEL_12:
LABEL_13:

  return v21;
}

+ (id)parseBalanceCollection:(id *)collection withError:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (collection && collection->var1)
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    array = [MEMORY[0x277CBEB18] array];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__HerculesDecoder_parseBalanceCollection_withError___block_invoke;
    v24[3] = &unk_278874A30;
    v24[4] = buf;
    v6 = DERDecodeSequenceWithBlock(collection, v24);
    if (v6)
    {
      v7 = ATLLogObject(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to parse balance item", v23, 2u);
      }

      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to parse balance item"];
      v9 = v8;
      if (error)
      {
        v10 = *error;
        v11 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v12 = *MEMORY[0x277CCA7E8];
          v31[0] = *MEMORY[0x277CCA450];
          v31[1] = v12;
          v32[0] = v8;
          v32[1] = v10;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
        }

        else
        {
          v33 = *MEMORY[0x277CCA450];
          v34 = v8;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        }
        v13 = ;
        *error = [v11 errorWithDomain:@"ATL" code:3 userInfo:v13];
      }

      v20 = 0;
    }

    else
    {
      v20 = *(v26 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = ATLLogObject(self);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Missing or zero length balance collection", buf, 2u);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing or zero length balance collection"];
    v16 = v15;
    if (error)
    {
      v17 = *error;
      v18 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v19 = *MEMORY[0x277CCA7E8];
        v35[0] = *MEMORY[0x277CCA450];
        v35[1] = v19;
        v36[0] = v15;
        v36[1] = v17;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      }

      else
      {
        v37 = *MEMORY[0x277CCA450];
        v38[0] = v15;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      }
      v21 = ;
      *error = [v18 errorWithDomain:@"ATL" code:3 userInfo:v21];
    }

    v20 = 0;
  }

  return v20;
}

uint64_t __52__HerculesDecoder_parseBalanceCollection_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [HerculesDecoder parseBalanceItem:a2 withError:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v6 = 0;
  }

  else
  {
    v7 = ATLLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v6 = 3;
  }

  return v6;
}

+ (id)parseBalanceItem:(id *)item withError:(id *)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  if (item->var0 == 0xE000000000000005)
  {
    memset(v41, 0, sizeof(v41));
    v39 = 0u;
    v40 = 0u;
    *v38 = 0u;
    v6 = DERParseSequenceSpec(&item->var1, &BalanceItemContentSpec, v38, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      v8 = ATLLogObject(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v37 = v7;
        _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode balance item contents %d", buf, 8u);
      }

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode balance item contents %d", v7];
      v10 = v9;
      if (error)
      {
        v11 = *error;
        v12 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v13 = *MEMORY[0x277CCA7E8];
          v32[0] = *MEMORY[0x277CCA450];
          v32[1] = v13;
          v33[0] = v9;
          v33[1] = v11;
          v14 = MEMORY[0x277CBEAC0];
          v15 = v33;
          v16 = v32;
          v17 = 2;
        }

        else
        {
          v34 = *MEMORY[0x277CCA450];
          v35 = v9;
          v14 = MEMORY[0x277CBEAC0];
          v15 = &v35;
          v16 = &v34;
          v17 = 1;
        }

        v30 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
        *error = [v12 errorWithDomain:@"ATL" code:3 userInfo:v30];

        error = 0;
      }
    }

    else
    {
      error = [HerculesDecoder addAmount:v41 withCurrency:&v40 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent"];
      v10 = [HerculesDecoder getIdentifier:v38 withInstanceIdentifier:&v39];
      [error setObject:v10 forKeyedSubscript:@"BalanceIdentifier"];
    }
  }

  else
  {
    v18 = ATLLogObject(self);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      var0 = item->var0;
      *v38 = 134217984;
      *&v38[4] = var0;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx for balance item", v38, 0xCu);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected tag 0x%llx for balance item", item->var0];
    v21 = v20;
    if (error)
    {
      v22 = *error;
      v23 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v42[0] = *MEMORY[0x277CCA450];
        v42[1] = v24;
        v43[0] = v20;
        v43[1] = v22;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v43;
        v27 = v42;
        v28 = 2;
      }

      else
      {
        v44 = *MEMORY[0x277CCA450];
        v45[0] = v20;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v45;
        v27 = &v44;
        v28 = 1;
      }

      v29 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
      *error = [v23 errorWithDomain:@"ATL" code:3 userInfo:v29];
    }

    error = 0;
  }

  return error;
}

+ (id)parseIdentifierCollection:(id *)collection withError:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (collection && collection->var1)
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    array = [MEMORY[0x277CBEB18] array];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __55__HerculesDecoder_parseIdentifierCollection_withError___block_invoke;
    v24[3] = &unk_278874A30;
    v24[4] = buf;
    v6 = DERDecodeSequenceWithBlock(collection, v24);
    if (v6)
    {
      v7 = ATLLogObject(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to parse identifier item", v23, 2u);
      }

      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to parse identifier item"];
      v9 = v8;
      if (error)
      {
        v10 = *error;
        v11 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v12 = *MEMORY[0x277CCA7E8];
          v31[0] = *MEMORY[0x277CCA450];
          v31[1] = v12;
          v32[0] = v8;
          v32[1] = v10;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
        }

        else
        {
          v33 = *MEMORY[0x277CCA450];
          v34 = v8;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        }
        v13 = ;
        *error = [v11 errorWithDomain:@"ATL" code:3 userInfo:v13];
      }

      v20 = 0;
    }

    else
    {
      v20 = *(v26 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = ATLLogObject(self);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Missing or zero length identifier collection", buf, 2u);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing or zero length identifier collection"];
    v16 = v15;
    if (error)
    {
      v17 = *error;
      v18 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v19 = *MEMORY[0x277CCA7E8];
        v35[0] = *MEMORY[0x277CCA450];
        v35[1] = v19;
        v36[0] = v15;
        v36[1] = v17;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      }

      else
      {
        v37 = *MEMORY[0x277CCA450];
        v38[0] = v15;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      }
      v21 = ;
      *error = [v18 errorWithDomain:@"ATL" code:3 userInfo:v21];
    }

    v20 = 0;
  }

  return v20;
}

uint64_t __55__HerculesDecoder_parseIdentifierCollection_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [HerculesDecoder parseIdentifierItem:a2 withError:&v9];
  v4 = v9;
  v5 = v4;
  if (v4)
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v7 = 3;
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v7 = 0;
  }

  return v7;
}

+ (id)parseIdentifierItem:(id *)item withError:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  if (item->var0 == 0xE000000000000006)
  {
    v45 = 0u;
    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    *v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v6 = DERParseSequenceSpec(&item->var1, &IdItemContentSpec, v41, 0xA0uLL);
    if (v6)
    {
      v7 = v6;
      v8 = ATLLogObject(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v40 = v7;
        _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode id item contents %d", buf, 8u);
      }

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode id item contents %d", v7];
      v10 = v9;
      if (error)
      {
        v11 = *error;
        v12 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v13 = *MEMORY[0x277CCA7E8];
          v35[0] = *MEMORY[0x277CCA450];
          v35[1] = v13;
          v36[0] = v9;
          v36[1] = v11;
          v14 = MEMORY[0x277CBEAC0];
          v15 = v36;
          v16 = v35;
          v17 = 2;
        }

        else
        {
          v37 = *MEMORY[0x277CCA450];
          v38 = v9;
          v14 = MEMORY[0x277CBEAC0];
          v15 = &v38;
          v16 = &v37;
          v17 = 1;
        }

        v32 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
        *error = [v12 errorWithDomain:@"ATL" code:3 userInfo:v32];

        error = 0;
      }
    }

    else
    {
      v10 = [HerculesDecoder getIdentifier:v41 withInstanceIdentifier:v42];
      if (*(&v44[0] + 1))
      {
        errorCopy = [HerculesDecoder addAmount:v44 withCurrency:&v43 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent"];
        error = errorCopy;
        v30 = @"AmountIdentifier";
      }

      else
      {
        error = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        if (*(&v45 + 1))
        {
          v33 = [HerculesDecoder parseDateAndTime:&v45];
          [error setObject:v33 forKeyedSubscript:@"CommutePlanExpirationDate"];
        }

        v30 = @"CommutePlanIdentifier";
        errorCopy = error;
      }

      [errorCopy setObject:v10 forKeyedSubscript:v30];
    }
  }

  else
  {
    v18 = ATLLogObject(self);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      var0 = item->var0;
      *v41 = 134217984;
      *&v41[4] = var0;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx for identifier item", v41, 0xCu);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected tag 0x%llx for identifier item", item->var0];
    v21 = v20;
    if (error)
    {
      v22 = *error;
      v23 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v46[0] = *MEMORY[0x277CCA450];
        v46[1] = v24;
        v47[0] = v20;
        v47[1] = v22;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v47;
        v27 = v46;
        v28 = 2;
      }

      else
      {
        v48 = *MEMORY[0x277CCA450];
        v49[0] = v20;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v49;
        v27 = &v48;
        v28 = 1;
      }

      v31 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
      *error = [v23 errorWithDomain:@"ATL" code:3 userInfo:v31];
    }

    error = 0;
  }

  return error;
}

+ (id)getIdentifier:(id *)identifier withInstanceIdentifier:(id *)instanceIdentifier
{
  if (instanceIdentifier->var1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEA90] dataWithDERItem:identifier];
    asHexString = [v6 asHexString];
    v8 = [MEMORY[0x277CBEA90] dataWithDERItem:instanceIdentifier];
    asHexString2 = [v8 asHexString];
    asHexString3 = [v5 stringWithFormat:@"%@-%@", asHexString, asHexString2];
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithDERItem:identifier];
    asHexString3 = [v6 asHexString];
  }

  return asHexString3;
}

+ (id)parseDateAndTime:(id *)time
{
  v4 = MEMORY[0x277CBEAB8];
  v5 = DecodeBCD(time->var0, 1);
  v6 = DecodeBCD(time->var0 + 1, 1);
  v7 = DecodeBCD(time->var0 + 2, 1);
  v8 = DecodeBCD(time->var0 + 3, 1);
  v9 = DecodeBCD(time->var0 + 4, 1);
  v10 = DecodeBCD(time->var0 + 5, 1);

  return [v4 dateWithYear:v5 + 2000 month:v6 day:v7 hour:v8 minute:v9 second:v10];
}

+ (id)addAmount:(id *)amount withCurrency:(id *)currency usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey
{
  v26[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  currencyKeyCopy = currencyKey;
  exponentKeyCopy = exponentKey;
  if (amount->var1)
  {
    v24 = 0;
    if (currency->var1 && ([ATLCurrency currencyCodeForNumber:DecodeBCD(currency) exponentOut:&v24], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = [MEMORY[0x277CCABB0] numberWithShort:v24];
    }

    else
    {
      v15 = @"XXX";
      v16 = &unk_2843C6398;
    }

    S32BE = ReadS32BE(amount);
    if (S32BE >= 0)
    {
      v18 = S32BE;
    }

    else
    {
      v18 = -S32BE;
    }

    v19 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v18 exponent:-v24 isNegative:S32BE >> 31];
    v20 = MEMORY[0x277CBEB38];
    v25[0] = keyCopy;
    v25[1] = currencyKeyCopy;
    v26[0] = v19;
    v26[1] = v15;
    v25[2] = exponentKeyCopy;
    v26[2] = v16;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v22 = [v20 dictionaryWithDictionary:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)calculateTransactionSN:(id *)n withDeviceId:(id *)id withDeviceSN:(id *)sN
{
  v8 = +[HashHelper hashHelper];
  v9 = [(HashHelper *)v8 addData:n->var1 withLength:?];
  v10 = [(HashHelper *)v9 addData:id->var1 withLength:?];
  v11 = [(HashHelper *)v10 addData:sN->var1 withLength:?];
  getHash = [(HashHelper *)v11 getHash];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(getHash, "u32BE:", 0)}];

  return v13;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = ATLLogObject(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "MIFARE Hercules Decoder doesn't support getServiceProviderData", v21, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Hercules Decoder doesn't support getServiceProviderData"];
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
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "MIFARE Hercules Decoder doesn't support getServiceProviderData", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Hercules Decoder doesn't support getServiceProviderData"];
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

@end