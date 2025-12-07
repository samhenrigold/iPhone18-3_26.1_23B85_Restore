@interface KramerMappings
+ (id)addAmount:(id)amount withCurrency:(id)currency withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingPlanIdentifier:(id)planIdentifier withExpirationDate:(id)self0 usingBalanceExpiryKey:(id)self1;
+ (id)addBalance:(id)balance withIpe:(id)ipe;
+ (id)calculateTopupTransactionSN:(id)n withDifferentiator:(id)differentiator withIpeId:(id)id;
+ (id)calculateTransactionSN:(id)n withDifferentiator:(id)differentiator;
+ (id)commutePlanWithIdAndExpiry:(id)expiry withExpiry:(id)withExpiry withUniqueId:(id)id;
+ (id)convertLogToHistory:(id)history withDirectory:(id)directory withIpeList:(id)list;
+ (id)convertPlansToBalances:(id)balances withDetails:(id)details;
+ (id)convertTopupsToHistory:(id)history;
+ (id)getAbsoluteDateComponents:(unsigned int)components;
+ (id)getMergedHistory:(id)history withDirectory:(id)directory withIpeList:(id)list;
+ (id)mapEnterExitIndicator:(unsigned __int8)indicator;
+ (id)mapInternalEnRouteStatus:(unsigned __int8)status;
+ (id)mapIpeToBalance:(id)balance;
+ (id)mapLogEntryToHistory:(id)history withIpeList:(id)list withNormalLogFlag:(BOOL)flag;
+ (id)mapTransactionTypeCode:(unsigned __int8)code;
+ (id)mapTransitDetailRaw:(unsigned __int8)raw;
+ (id)mergeTransitAndTopupHistory:(id)history withTopupHistory:(id)topupHistory;
@end

@implementation KramerMappings

+ (id)getAbsoluteDateComponents:(unsigned int)components
{
  if (components >> 23)
  {
    v3 = 0;
  }

  else
  {
    v3 = 20;
  }

  if (components >> 23)
  {
    v4 = 1;
  }

  else
  {
    v4 = 11;
  }

  v5 = 2028;
  if (components >> 23)
  {
    v5 = 1997;
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  if (components >> 23)
  {
    v7 = components / 1440 + 1;
  }

  else
  {
    v7 = components / 1440 + 24;
  }

  v8 = [MEMORY[0x277CBEAB8] dateWithYear:v5 month:v4 day:v7 hour:v3 minute:components % 1440 + 16 * v6 second:0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  [v8 setCalendar:currentCalendar];
  v10 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [v8 setTimeZone:v10];

  date = [v8 date];
  v12 = [currentCalendar components:3145852 fromDate:date];

  return v12;
}

+ (id)mapIpeToBalance:(id)balance
{
  balanceCopy = balance;
  v5 = [balanceCopy objectForKeyedSubscript:@"ValueGroupRecords"];
  v6 = [balanceCopy objectForKeyedSubscript:@"CountBasedFlag"];
  if (v6 && (v7 = v6, v8 = [v5 count], v7, v8))
  {
    v9 = [balanceCopy objectForKeyedSubscript:@"LatestValueGroup"];
    v10 = [self addBalance:v9 withIpe:balanceCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)mapLogEntryToHistory:(id)history withIpeList:(id)list withNormalLogFlag:(BOOL)flag
{
  v63 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  listCopy = list;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  if (!flag)
  {
    v23 = [historyCopy objectForKeyedSubscript:@"LogUninitialized"];
    bOOLValue = [v23 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v12 = [historyCopy objectForKeyedSubscript:@"LogEntryExitIndicator"];
      v22 = [self mapEnterExitIndicator:{objc_msgSend(v12, "unsignedCharValue")}];
      v20 = [self mapTransitDetailRaw:0];
      [historyCopy objectForKeyedSubscript:@"LogDateTimeStampRaw"];
      v55 = v51 = self;
      v26 = [self calculateTransactionSN:? withDifferentiator:?];
      v27 = [historyCopy objectForKeyedSubscript:@"LogDateTimeStamp"];
      v14 = [historyCopy objectForKeyedSubscript:@"LogIpePointer"];
      unsignedShortValue = [v14 unsignedShortValue];
      v58 = @"Transit";
      goto LABEL_12;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_28;
  }

  v11 = [historyCopy objectForKeyedSubscript:@"TTLength"];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [historyCopy objectForKeyedSubscript:@"TTTransactionType"];
  v58 = [self mapTransactionTypeCode:{objc_msgSend(v12, "unsignedCharValue")}];
  v13 = [self mapTransitDetailRaw:{objc_msgSend(v12, "unsignedCharValue")}];
  v56 = [self mapInternalEnRouteStatus:{objc_msgSend(v12, "unsignedCharValue")}];
  v14 = [historyCopy objectForKeyedSubscript:@"RecordOffset"];
  [historyCopy objectForKeyedSubscript:@"TTDateTimeStampRaw"];
  v55 = v51 = self;
  v49 = [self calculateTransactionSN:? withDifferentiator:?];
  v53 = [historyCopy objectForKeyedSubscript:@"TTDateTimeStamp"];
  v15 = [historyCopy objectForKeyedSubscript:@"TTIpeId"];
  unsignedShortValue = [v15 unsignedShortValue];

  [v10 setObject:v12 forKeyedSubscript:@"TerminalTransactionCode"];
  v17 = [historyCopy objectForKeyedSubscript:@"StartStation"];

  if (v17)
  {
    v18 = [historyCopy objectForKeyedSubscript:@"StartStation"];
    [v10 setObject:v18 forKeyedSubscript:@"StartStation"];
  }

  v19 = [historyCopy objectForKeyedSubscript:@"EndStation"];

  if (v19)
  {
    [historyCopy objectForKeyedSubscript:@"EndStation"];
    v21 = v20 = v13;
    [v10 setObject:v21 forKeyedSubscript:@"EndStation"];

    v22 = v56;
  }

  else
  {
    v22 = v56;
    v20 = v13;
  }

  v26 = v49;
  v27 = v53;
LABEL_12:

  [v10 setObject:v27 forKeyedSubscript:@"TransactionTime"];
  [v10 setObject:v22 forKeyedSubscript:@"InternalEnRouteStatus"];
  [v10 setObject:v58 forKeyedSubscript:@"TypeDetail"];
  v57 = v20;
  [v10 setObject:v20 forKeyedSubscript:@"TypeDetailRaw"];
  v28 = [v10 setObject:v26 forKeyedSubscript:@"SerialNumber"];
  if ((unsignedShortValue - 1) > 6)
  {
    v29 = 0;
  }

  else
  {
    v29 = [listCopy objectAtIndex:?];
    v28 = [v29 count];
    if (v28)
    {
      v54 = v27;
      v30 = [v29 objectForKeyedSubscript:@"CommutePlanIdentifier"];
      v50 = [v29 objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
      v48 = [v29 objectForKeyedSubscript:@"CommutePlanValidityEndDate"];
      v31 = [v29 objectForKeyedSubscript:@"CountBasedFlag"];
      bOOLValue2 = [v31 BOOLValue];

      if (bOOLValue2)
      {
        v52 = listCopy;
        v33 = v22;
        v34 = [historyCopy objectForKeyedSubscript:@"Amount"];
        v35 = [historyCopy objectForKeyedSubscript:@"AmountCurrency"];
        v36 = v30;
        v37 = v35;
        v38 = v36;
        v39 = [v51 addAmount:v34 withCurrency:v35 withIdentifier:@"AmountIdentifier" usingAmountKey:0 usingCurrencyKey:0 usingExponentKey:? usingPlanIdentifier:? withExpirationDate:? usingBalanceExpiryKey:?];

        v41 = ATLLogObject(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = v39;
          _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEBUG, "Adding Amounts %@", buf, 0xCu);
        }

        v60 = v39;
        v42 = @"Amounts";
        v43 = &v60;
        v30 = v38;
      }

      else
      {
        if (!v29)
        {
LABEL_24:

          v27 = v54;
          goto LABEL_25;
        }

        v52 = listCopy;
        v33 = v22;
        v39 = [v51 commutePlanWithIdAndExpiry:v30 withExpiry:v48 withUniqueId:v50];
        v44 = ATLLogObject(v39);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = v39;
          _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEBUG, "Adding commutePlanWithIdAndExpiry %@", buf, 0xCu);
        }

        v59 = v39;
        v42 = @"CommutePlans";
        v43 = &v59;
      }

      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      [v10 setObject:v45 forKeyedSubscript:v42];

      v22 = v33;
      listCopy = v52;
      goto LABEL_24;
    }
  }

LABEL_25:
  v46 = ATLLogObject(v28);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v62 = v10;
    _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_DEBUG, "historyEntry %@", buf, 0xCu);
  }

  v25 = v10;
LABEL_28:

  return v25;
}

+ (id)getMergedHistory:(id)history withDirectory:(id)directory withIpeList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  listCopy = list;
  directoryCopy = directory;
  historyCopy = history;
  v10 = [KramerMappings convertTopupsToHistory:listCopy];
  v11 = [KramerMappings convertLogToHistory:historyCopy withDirectory:directoryCopy withIpeList:listCopy];

  v12 = [KramerMappings mergeTransitAndTopupHistory:v11 withTopupHistory:v10];
  v13 = ATLLogObject(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEBUG, "Merged history: %@", &v15, 0xCu);
  }

  return v12;
}

+ (id)convertTopupsToHistory:(id)history
{
  v78 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:{5 * objc_msgSend(historyCopy, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = historyCopy;
  v4 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v70;
    v48 = *v70;
    do
    {
      v7 = 0;
      v49 = v5;
      do
      {
        if (*v70 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v69 + 1) + 8 * v7);
        v9 = [v8 objectForKeyedSubscript:@"VGTopups"];
        v10 = v9;
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v56 = [v9 countByEnumeratingWithState:&v65 objects:v76 count:16];
          if (v56)
          {
            v50 = v7;
            v12 = 0;
            v13 = 0;
            v63 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v54 = *v66;
            v51 = v10;
            do
            {
              v17 = 0;
              v18 = v12;
              v19 = v13;
              v20 = v63;
              v21 = v14;
              v22 = v15;
              v23 = v16;
              do
              {
                v64 = v19;
                v60 = v18;
                if (*v66 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v62 = v17;
                v24 = *(*(&v65 + 1) + 8 * v17);
                v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
                v26 = [v24 objectForKeyedSubscript:@"VGTrxType"];
                v27 = [self mapTransactionTypeCode:{objc_msgSend(v26, "unsignedCharValue")}];

                v58 = v26;
                v28 = [self mapTransitDetailRaw:{objc_msgSend(v26, "unsignedCharValue")}];

                v29 = [v24 objectForKeyedSubscript:@"VGDateTimeStampRaw"];

                v30 = [v24 objectForKeyedSubscript:@"VGRecordOffset"];

                v31 = [v24 objectForKeyedSubscript:@"VGIpePointer"];

                v57 = [obj objectAtIndex:{objc_msgSend(v31, "unsignedShortValue") - 1}];
                v32 = [v57 objectForKeyedSubscript:@"CommutePlanIdentifier"];
                v59 = v29;
                v63 = v30;
                v33 = v30;
                v13 = v31;
                v34 = [self calculateTopupTransactionSN:v29 withDifferentiator:v33 withIpeId:v31];

                v35 = [v24 objectForKeyedSubscript:@"VGDateTimeStamp"];
                [v25 setObject:v35 forKeyedSubscript:@"TransactionTime"];

                v61 = v27;
                [v25 setObject:v27 forKeyedSubscript:@"TypeDetail"];
                v22 = v28;
                v36 = v28;
                v12 = v34;
                [v25 setObject:v36 forKeyedSubscript:@"TypeDetailRaw"];
                [v25 setObject:v34 forKeyedSubscript:@"SerialNumber"];
                v37 = MEMORY[0x277CCABB0];
                v38 = [v24 objectForKeyedSubscript:@"VGTopupCredit"];
                v39 = [v37 numberWithInt:{-objc_msgSend(v38, "intValue")}];

                v40 = [v24 objectForKeyedSubscript:@"VGCurrencyCode"];
                v41 = [self addAmount:v39 withCurrency:v40 withIdentifier:v32 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent" usingPlanIdentifier:@"AmountIdentifier" withExpirationDate:0 usingBalanceExpiryKey:0];

                v43 = ATLLogObject(v42);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v75 = v41;
                  _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_DEFAULT, "Adding Amounts %@", buf, 0xCu);
                }

                v73 = v41;
                v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
                [v25 setObject:v44 forKeyedSubscript:@"Amounts"];

                [v53 addObject:v25];
                v20 = v63;
                v17 = v62 + 1;
                v18 = v12;
                v19 = v13;
                v14 = v59;
                v16 = v61;
                v21 = v59;
                v23 = v61;
              }

              while (v56 != v62 + 1);
              v15 = v22;
              v10 = v51;
              v56 = [v51 countByEnumeratingWithState:&v65 objects:v76 count:16];
            }

            while (v56);

            v6 = v48;
            v5 = v49;
            v7 = v50;
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v5);
  }

  v46 = ATLLogObject(v45);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v75 = v53;
    _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_DEFAULT, "historyEntries %@", buf, 0xCu);
  }

  return v53;
}

+ (id)mapTransactionTypeCode:(unsigned __int8)code
{
  if ((code - 1) > 0x16)
  {
    return @"Unknown";
  }

  else
  {
    return off_278874EB0[(code - 1)];
  }
}

+ (id)mapInternalEnRouteStatus:(unsigned __int8)status
{
  statusCopy = status;
  v7 = *MEMORY[0x277D85DE8];
  if (status - 1) < 0x17 && ((0x7DBC7Bu >> (status - 1)))
  {
    return off_278874F68[(status - 1)];
  }

  v5 = ATLLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = statusCopy;
    _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected Transaction Type code: %u", v6, 8u);
  }

  return @"Unknown";
}

+ (id)mapEnterExitIndicator:(unsigned __int8)indicator
{
  indicatorCopy = indicator;
  v7 = *MEMORY[0x277D85DE8];
  if (indicator < 4u)
  {
    return off_278875020[indicator];
  }

  v5 = ATLLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = indicatorCopy;
    _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected Enter / Exit Indicatorcode: %u (expected for topup transactions)", v6, 8u);
  }

  return @"Unknown";
}

+ (id)mapTransitDetailRaw:(unsigned __int8)raw
{
  if ((raw - 1) > 4)
  {
    v5 = @"010000";
  }

  else
  {
    v5 = off_278875040[(raw - 1)];
  }

  v6 = [MEMORY[0x277CBEA90] dataWithHexString:{v5, v3}];

  return v6;
}

+ (id)calculateTopupTransactionSN:(id)n withDifferentiator:(id)differentiator withIpeId:(id)id
{
  differentiatorCopy = differentiator;
  nCopy = n;
  LOWORD(id) = [id unsignedShortValue];
  unsignedShortValue = [differentiatorCopy unsignedShortValue];

  v10 = unsignedShortValue + 100 * id;
  v12 = +[HashHelper hashHelper];
  v13 = [(HashHelper *)v12 addNumber:nCopy];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
  v15 = [(HashHelper *)v13 addNumber:v14];
  getHash = [(HashHelper *)v15 getHash];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(getHash, "u32BE:", 0)}];

  return v17;
}

+ (id)calculateTransactionSN:(id)n withDifferentiator:(id)differentiator
{
  differentiatorCopy = differentiator;
  nCopy = n;
  v8 = +[HashHelper hashHelper];
  v9 = [(HashHelper *)v8 addNumber:nCopy];

  v10 = [(HashHelper *)v9 addNumber:differentiatorCopy];

  getHash = [(HashHelper *)v10 getHash];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(getHash, "u32BE:", 0)}];

  return v12;
}

+ (id)addBalance:(id)balance withIpe:(id)ipe
{
  balanceCopy = balance;
  ipeCopy = ipe;
  v8 = [ipeCopy objectForKeyedSubscript:@"CommutePlanIdentifier"];
  v9 = [ipeCopy objectForKeyedSubscript:@"CommutePlanValidityEndDate"];

  v10 = [balanceCopy objectForKeyedSubscript:@"VGRemainingRides"];

  if (v10)
  {
    v11 = @"VGRemainingRides";
LABEL_5:
    v13 = [balanceCopy objectForKeyedSubscript:v11];
    v14 = [self addAmount:v13 withCurrency:0 withIdentifier:v8 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingPlanIdentifier:@"BalanceIdentifier" withExpirationDate:v9 usingBalanceExpiryKey:@"BalanceExpirationDate"];
    goto LABEL_6;
  }

  v12 = [balanceCopy objectForKeyedSubscript:@"VGRemainingPasses"];

  if (v12)
  {
    v11 = @"VGRemainingPasses";
    goto LABEL_5;
  }

  v13 = [balanceCopy objectForKeyedSubscript:@"VGValue"];
  v16 = [balanceCopy objectForKeyedSubscript:@"VGCurrencyCode"];
  v14 = [self addAmount:v13 withCurrency:v16 withIdentifier:v8 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingPlanIdentifier:@"BalanceIdentifier" withExpirationDate:0 usingBalanceExpiryKey:0];

LABEL_6:

  return v14;
}

+ (id)addAmount:(id)amount withCurrency:(id)currency withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingPlanIdentifier:(id)planIdentifier withExpirationDate:(id)self0 usingBalanceExpiryKey:(id)self1
{
  v76 = *MEMORY[0x277D85DE8];
  amountCopy = amount;
  currencyCopy = currency;
  identifierCopy = identifier;
  keyCopy = key;
  currencyKeyCopy = currencyKey;
  exponentKeyCopy = exponentKey;
  planIdentifierCopy = planIdentifier;
  dateCopy = date;
  expiryKeyCopy = expiryKey;
  v57 = currencyCopy;
  if (!currencyCopy)
  {
    v24 = 0;
    v23 = @"XXX";
    v22 = amountCopy;
    goto LABEL_5;
  }

  unsignedCharValue = [currencyCopy unsignedCharValue];
  v22 = amountCopy;
  if (unsignedCharValue || (v46 = [amountCopy integerValue]) == 0)
  {
    v23 = [self mapCurrencyCode:unsignedCharValue];
    v24 = [self mapCurrencyExponent:unsignedCharValue];
LABEL_5:
    v25 = keyCopy;
    v26 = identifierCopy;
    goto LABEL_6;
  }

  v47 = ATLLogObject(v46);
  v25 = keyCopy;
  v26 = identifierCopy;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v71 = currencyCopy;
    v72 = 2112;
    v73 = identifierCopy;
    v74 = 2112;
    v75 = amountCopy;
    _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_DEFAULT, "Warning: Currency code field is %@ for %@. Defaulting to GBP with exponent 2. Amount is %@.", buf, 0x20u);
  }

  v23 = @"GBP";
  v24 = 2;
LABEL_6:
  shortValue = [v22 shortValue];
  if (shortValue >= 0)
  {
    v28 = shortValue;
  }

  else
  {
    v28 = -shortValue;
  }

  v29 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v28 exponent:-v24 isNegative:(shortValue >> 15) & 1];
  v54 = v29;
  v55 = expiryKeyCopy;
  v53 = v23;
  if (v26)
  {
    v30 = planIdentifierCopy;
    v31 = MEMORY[0x277CBEB38];
    if (!dateCopy)
    {
      v66[0] = v25;
      v40 = currencyKeyCopy;
      v67[0] = v29;
      v67[1] = v23;
      v66[1] = currencyKeyCopy;
      v66[2] = exponentKeyCopy;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
      v67[2] = v32;
      v66[3] = v30;
      v33 = identifierCopy;
      v34 = [identifierCopy dataUsingEncoding:4];
      asHexString = [v34 asHexString];
      v67[3] = asHexString;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:4];
      v38 = [v31 dictionaryWithDictionary:v49];

      v39 = exponentKeyCopy;
      v50 = amountCopy;
      v36 = v55;
      goto LABEL_24;
    }

    v68[0] = v25;
    v68[1] = currencyKeyCopy;
    v69[0] = v29;
    v69[1] = v23;
    v68[2] = exponentKeyCopy;
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
    v69[2] = v32;
    v68[3] = v30;
    v33 = identifierCopy;
    v34 = [identifierCopy dataUsingEncoding:4];
    asHexString2 = [v34 asHexString];
    v36 = expiryKeyCopy;
    v68[4] = expiryKeyCopy;
    v69[3] = asHexString2;
    v69[4] = dateCopy;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:5];
    v38 = [v31 dictionaryWithDictionary:v37];

    v39 = exponentKeyCopy;
    v40 = currencyKeyCopy;
  }

  else
  {
    v41 = v25;
    v42 = v29;
    v43 = v23;
    v52 = planIdentifierCopy;
    v44 = ATLLogObject(v29);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v71) = shortValue;
      _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "Plan Identifier not available for inclusion of amount (%d)", buf, 8u);
    }

    v45 = MEMORY[0x277CBEB38];
    v40 = currencyKeyCopy;
    v39 = exponentKeyCopy;
    if (dateCopy)
    {
      v64[0] = v41;
      v64[1] = currencyKeyCopy;
      v65[0] = v42;
      v65[1] = v43;
      v64[2] = exponentKeyCopy;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
      v36 = v55;
      v64[3] = v55;
      v65[2] = v32;
      v65[3] = dateCopy;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:4];
      v38 = [v45 dictionaryWithDictionary:v34];
    }

    else
    {
      v62[0] = v41;
      v62[1] = currencyKeyCopy;
      v63[0] = v42;
      v63[1] = v43;
      v62[2] = exponentKeyCopy;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
      v63[2] = v32;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
      v38 = [v45 dictionaryWithDictionary:v34];
      v36 = v55;
    }

    v33 = identifierCopy;
    v30 = v52;
  }

  v50 = amountCopy;
LABEL_24:

  return v38;
}

+ (id)mergeTransitAndTopupHistory:(id)history withTopupHistory:(id)topupHistory
{
  v46 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  topupHistoryCopy = topupHistory;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(topupHistoryCopy, "count") + objc_msgSend(historyCopy, "count")}];
  if (![historyCopy count])
  {
    v28 = topupHistoryCopy;
LABEL_25:
    allObjects = v28;
    goto LABEL_26;
  }

  if (![topupHistoryCopy count])
  {
    v28 = historyCopy;
    goto LABEL_25;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v30 = topupHistoryCopy;
  v32 = [topupHistoryCopy mutableCopy];
  if ([historyCopy count])
  {
    v9 = 0;
    v10 = 0;
    v31 = historyCopy;
    v35 = v7;
    do
    {
      v33 = v10;
      v11 = [historyCopy objectAtIndex:v9];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v32;
      v12 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v40 + 1) + 8 * i);
            v17 = [v16 objectForKeyedSubscript:@"TransactionTime"];
            v18 = [currentCalendar dateFromComponents:v17];

            v19 = [v11 objectForKeyedSubscript:@"TransactionTime"];
            v20 = [currentCalendar dateFromComponents:v19];

            if ([v18 compare:v20] != -1)
            {
              [v35 insertObject:v16 atIndex:0];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v13);
      }

      v7 = v35;
      [v35 insertObject:v11 atIndex:0];
      [obj removeObjectsInArray:v35];

      v10 = v33 + 1;
      v9 = (v33 + 1);
      historyCopy = v31;
    }

    while ([v31 count] > v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v32;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v7 insertObject:*(*(&v36 + 1) + 8 * j) atIndex:0];
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v23);
  }

  reverseObjectEnumerator = [v7 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  topupHistoryCopy = v30;
LABEL_26:

  return allObjects;
}

+ (id)convertLogToHistory:(id)history withDirectory:(id)directory withIpeList:(id)list
{
  historyCopy = history;
  directoryCopy = directory;
  listCopy = list;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v11 = [directoryCopy objectForKeyedSubscript:@"LogUninitialized"];
  bOOLValue = [v11 BOOLValue];

  v13 = [directoryCopy objectForKeyedSubscript:@"LogNormalModeFlag"];
  bOOLValue2 = [v13 BOOLValue];

  if ((bOOLValue & 1) != 0 || ((historyCopy == 0) & bOOLValue2) != 0)
  {
    allObjects = v10;
  }

  else
  {
    v27 = bOOLValue2;
    v15 = [directoryCopy objectForKeyedSubscript:@"LogRecordOffset"];
    unsignedShortValue = [v15 unsignedShortValue];

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v17;
      v17 = [historyCopy objectAtIndexedSubscript:unsignedShortValue & 3];

      v20 = [v17 objectForKeyedSubscript:@"TTLength"];

      if (v20)
      {
        v21 = [KramerMappings mapLogEntryToHistory:v17 withIpeList:listCopy withNormalLogFlag:1];
        [v10 addObject:v21];
      }

      unsignedShortValue = (unsignedShortValue & 3) + 1;
    }

    while (v18++ < 4);
    if ((v27 & 1) == 0)
    {
      v23 = [KramerMappings mapLogEntryToHistory:directoryCopy withIpeList:listCopy withNormalLogFlag:0];
      if (v23)
      {
        [v10 addObject:v23];
      }
    }

    reverseObjectEnumerator = [v10 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  return allObjects;
}

+ (id)convertPlansToBalances:(id)balances withDetails:(id)details
{
  balancesCopy = balances;
  detailsCopy = details;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v8 = [balancesCopy count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      v10 = [detailsCopy objectAtIndexedSubscript:v9];
      v11 = [KramerMappings mapIpeToBalance:v10];
      if (v11)
      {
        [v7 addObject:v11];
        [balancesCopy removeObjectAtIndex:v9];
      }

      --v9;
    }

    while (v9 != -1);
  }

  return v7;
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

@end