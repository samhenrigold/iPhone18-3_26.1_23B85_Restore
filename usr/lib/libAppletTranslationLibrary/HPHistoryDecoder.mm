@interface HPHistoryDecoder
+ ($06D0163FE0D7AFE752A9F21F38483579)getInOutStation:(id)station;
+ ($391024036B902F3EE9BCB0FBA5EF777F)getCommuterBalance:(id)balance;
+ ($391024036B902F3EE9BCB0FBA5EF777F)getTransactionBalance:(id)balance;
+ ($9E16F6706E08E1DCF37CEDFAE5F41851)getSectorInformation:(id)information;
+ (BOOL)getGreenCarTicketUsed:(id)used;
+ (BOOL)getIsDenyListed:(id)listed;
+ (id)_decodeShinkansenTrainDataWithBlock:(id)block andBlock:(id)andBlock;
+ (id)getTransactionDate:(id)date;
+ (id)parseGreencarBlocks:(id)blocks;
+ (id)parseShinkansenBlocks:(id)blocks fromServiceCode:(unsigned __int16)code;
+ (id)parseSuicaHistoryBlocks:(id)blocks withIDm:(id)dm;
+ (int)getTransactionAmount:(id)amount withPreviousBlock:(id)block;
+ (unsigned)getHistoryNumber:(id)number;
+ (unsigned)getTypeOfUse:(id)use;
@end

@implementation HPHistoryDecoder

+ (id)getTransactionDate:(id)date
{
  v11 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = [SlalomUtils isValidFelicaBlock:dateCopy];
  if (v4)
  {
    v5 = bswap32(*([dateCopy bytes] + 4));
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setYear:(v5 >> 25) + 2000];
    [v6 setMonth:(v5 >> 21) & 0xF];
    [v6 setDay:HIWORD(v5) & 0x1F];
  }

  else
  {
    v7 = ATLLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for Suica, invalid block: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ ($391024036B902F3EE9BCB0FBA5EF777F)getTransactionBalance:(id)balance
{
  v12 = *MEMORY[0x277D85DE8];
  balanceCopy = balance;
  v4 = [SlalomUtils isValidFelicaBlock:balanceCopy];
  if (v4)
  {
    bytes = [balanceCopy bytes];
    v6 = ((bytes[12] << 16) | (bytes[11] << 8) | bytes[10]) << 32;
    v7 = 1;
  }

  else
  {
    v8 = ATLLogObject(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = balanceCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction balance for Suica, invalid block: %@", &v10, 0xCu);
    }

    v6 = 0;
    v7 = 0;
  }

  return (v7 | v6);
}

+ ($391024036B902F3EE9BCB0FBA5EF777F)getCommuterBalance:(id)balance
{
  v12 = *MEMORY[0x277D85DE8];
  balanceCopy = balance;
  v4 = [SlalomUtils isValidFelicaBlock:balanceCopy];
  if (v4)
  {
    bytes = [balanceCopy bytes];
    v6 = ((bytes[13] << 16) | (bytes[12] << 8) | bytes[11]) << 32;
    v7 = 1;
  }

  else
  {
    v8 = ATLLogObject(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = balanceCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the commuter balance for Suica, invalid block: %@", &v10, 0xCu);
    }

    v6 = 0;
    v7 = 0;
  }

  return (v7 | v6);
}

+ (unsigned)getTypeOfUse:(id)use
{
  v11 = *MEMORY[0x277D85DE8];
  useCopy = use;
  v4 = [SlalomUtils isValidFelicaBlock:useCopy];
  if (v4)
  {
    bytes = [useCopy bytes];
    v6 = *(bytes + 3) | ((*(bytes + 1) & 0x7F) << 8);
  }

  else
  {
    v7 = ATLLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = useCopy;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the type of use for Suica, invalid block: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (int)getTransactionAmount:(id)amount withPreviousBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  amountCopy = amount;
  blockCopy = block;
  v8 = [SlalomUtils isValidFelicaBlock:amountCopy];
  if (!v8)
  {
    v12 = ATLLogObject(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = amountCopy;
      v13 = "Failed to get the transaction amount use for Suica, invalid (current) block: %@";
LABEL_8:
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
    }

LABEL_9:

    v11 = 0;
    goto LABEL_10;
  }

  v9 = [SlalomUtils isValidFelicaBlock:blockCopy];
  if (!v9)
  {
    v12 = ATLLogObject(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = blockCopy;
      v13 = "Failed to get the transaction amount use for Suica, invalid (previous) block: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = [self getTransactionBalance:amountCopy] >> 32;
  v11 = ([self getTransactionBalance:blockCopy] >> 32) - v10;
LABEL_10:

  return v11;
}

+ ($9E16F6706E08E1DCF37CEDFAE5F41851)getSectorInformation:(id)information
{
  v14 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  v4 = [SlalomUtils isValidFelicaBlock:informationCopy];
  if (v4)
  {
    bytes = [informationCopy bytes];
    v6 = bswap32(*(bytes + 6)) >> 16;
    v7 = (*(bytes + 15) & 0x30) << 48;
    v8 = (bswap32(*(bytes + 8)) >> 16) << 32;
    v9 = (*(bytes + 15) & 0xC0) << 16;
  }

  else
  {
    v10 = ATLLogObject(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = informationCopy;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get the sector information for Suica, invalid block: %@", &v12, 0xCu);
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
  }

  return (v8 | v7 | v9 | v6);
}

+ (BOOL)getGreenCarTicketUsed:(id)used
{
  v10 = *MEMORY[0x277D85DE8];
  usedCopy = used;
  v4 = [SlalomUtils isValidFelicaBlock:usedCopy];
  if (v4)
  {
    v5 = *([usedCopy bytes] + 15) & 1;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = usedCopy;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the GreenCar information for Suica, invalid block: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ ($06D0163FE0D7AFE752A9F21F38483579)getInOutStation:(id)station
{
  v11 = *MEMORY[0x277D85DE8];
  stationCopy = station;
  v4 = [SlalomUtils isValidFelicaBlock:stationCopy];
  if (v4)
  {
    bytes = [stationCopy bytes];
    LODWORD(v6) = *bytes >> 7;
    v7 = (bytes[1] >> 6) & 1;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = stationCopy;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the In and Out information for Suica, invalid block: %@", &v9, 0xCu);
    }

    LOWORD(v7) = 0;
    LOWORD(v6) = 0;
  }

  return (v6 | (v7 << 8));
}

+ (BOOL)getIsDenyListed:(id)listed
{
  v10 = *MEMORY[0x277D85DE8];
  listedCopy = listed;
  v4 = [SlalomUtils isValidFelicaBlock:listedCopy];
  if (v4)
  {
    v5 = *([listedCopy bytes] + 8) < 0;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = listedCopy;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the denylisted information for Suica, invalid block: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (unsigned)getHistoryNumber:(id)number
{
  v9 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = [SlalomUtils isValidFelicaBlock:numberCopy];
  if (v4)
  {
    LODWORD(v5) = bswap32(*([numberCopy bytes] + 13)) >> 16;
  }

  else
  {
    v5 = ATLLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = numberCopy;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the history number information for Suica, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v5) = 0;
  }

  return v5;
}

+ (id)parseSuicaHistoryBlocks:(id)blocks withIDm:(id)dm
{
  v60 = *MEMORY[0x277D85DE8];
  blocksCopy = blocks;
  dmCopy = dm;
  v8 = dmCopy;
  if (!dmCopy || [dmCopy length] != 8)
  {
    NSLog(&cfstr_IdmNotProvided.isa, v8);
LABEL_14:
    v45 = 0;
    goto LABEL_15;
  }

  if (!blocksCopy || ![blocksCopy count])
  {
    NSLog(&cfstr_TheArrayOfBloc.isa);
    goto LABEL_14;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  if ([blocksCopy count])
  {
    v9 = 0;
    v10 = 0;
    v11 = 0x277CBE000uLL;
    selfCopy = self;
    v49 = v8;
    v51 = blocksCopy;
    do
    {
      v52 = v10;
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v13 = [blocksCopy objectAtIndexedSubscript:v9];
      v14 = [self getTransactionDate:v13];
      v15 = [self getTypeOfUse:v13];
      v16 = [self getSectorInformation:v13];
      v17 = [self getTransactionBalance:v13] >> 32;
      v55 = 0;
      v18 = v9 + 1;
      if (v18 >= [blocksCopy count])
      {
        *md = 0;
        v57 = 0;
        v20 = v11;
        v21 = [*(v11 + 2704) dataWithBytesNoCopy:md length:16 freeWhenDone:0];
        v55 = [self getTransactionAmount:v13 withPreviousBlock:v21];
      }

      else
      {
        v19 = [v51 objectAtIndexedSubscript:v18];
        v55 = [self getTransactionAmount:v13 withPreviousBlock:v19];

        v20 = v11;
      }

      v22 = v14;
      [dictionary2 setObject:v14 forKeyedSubscript:@"NFTransactionDate"];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      [dictionary2 setObject:v23 forKeyedSubscript:@"NFBalance"];

      v24 = [MEMORY[0x277CCABB0] numberWithInt:v55];
      [dictionary2 setObject:v24 forKeyedSubscript:@"NFAmount"];

      [dictionary2 setObject:&unk_2843C69F8 forKeyedSubscript:@"NFAmountType"];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15 >> 8];
      [dictionary2 setObject:v25 forKeyedSubscript:@"NFTransactionType"];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
      [dictionary2 setObject:v26 forKeyedSubscript:@"NFSectorCombination"];

      v54[0] = BYTE1(v16);
      v54[1] = v16;
      v54[2] = BYTE2(v16);
      v27 = [*(v20 + 2704) dataWithBytes:v54 length:3];
      [dictionary2 setObject:v27 forKeyedSubscript:@"NFStartStationData"];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      [dictionary2 setObject:v28 forKeyedSubscript:@"NFStartStation"];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v16)];
      [dictionary2 setObject:v29 forKeyedSubscript:@"NFStartStationExt"];

      v53[0] = BYTE5(v16);
      v53[1] = BYTE4(v16);
      v53[2] = BYTE6(v16);
      v30 = [*(v20 + 2704) dataWithBytes:v53 length:3];
      [dictionary2 setObject:v30 forKeyedSubscript:@"NFEndStationData"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v16)];
      [dictionary2 setObject:v31 forKeyedSubscript:@"NFEndStation"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v16)];
      [dictionary2 setObject:v32 forKeyedSubscript:@"NFEndStationExt"];

      data = 0;
      v59 = 0;
      v8 = v49;
      data = *[v49 bytes];
      LODWORD(v59) = bswap32(v55);
      bytes = [v13 bytes];
      WORD2(v59) = *(bytes + 4);
      CC_SHA256(&data, 0xDu, md);
      v34 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
      [v34 increaseLengthBy:16];
      asHexString = [v34 asHexString];
      [dictionary2 setObject:asHexString forKeyedSubscript:@"NFTransactionID"];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bswap32(*(bytes + 13)) >> 16];
      [dictionary2 setObject:v36 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v37 = v20;
      v38 = [SlalomUtils readBitsValueFromBuffer:bytes + 1 bitPosition:7 length:1];
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
      [dictionary2 setObject:v39 forKeyedSubscript:@"NFSFBreakdown"];

      v40 = [SlalomUtils readBitsValueFromBuffer:bytes bitPosition:0 length:7];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v40];
      [dictionary2 setObject:v41 forKeyedSubscript:@"NFDeviceCode"];

      v42 = [SlalomUtils readBitsValueFromBuffer:bytes + 2 bitPosition:0 length:7];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42];
      [dictionary2 setObject:v43 forKeyedSubscript:@"NFPaymentType"];

      [array addObject:dictionary2];
      v9 = (v52 + 1);
      blocksCopy = v51;
      v44 = [v51 count];
      self = selfCopy;
      v11 = v37;
      v10 = v52 + 1;
    }

    while (v44 > v9);
  }

  v45 = dictionary;
  [dictionary setObject:array forKeyedSubscript:@"NFHistoryRecords"];

LABEL_15:

  return v45;
}

+ (id)parseGreencarBlocks:(id)blocks
{
  v31 = *MEMORY[0x277D85DE8];
  blocksCopy = blocks;
  v4 = blocksCopy;
  if (!blocksCopy || ![blocksCopy count])
  {
    v13 = 0;
    goto LABEL_18;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [SlalomUtils isValidFelicaBlock:v6];
  if (v7)
  {
    isAll00 = [v6 isAll00];
    if (!isAll00)
    {
      bytes = [v6 bytes];
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:2];
      if (([v15 isAll00] & 1) == 0)
      {
        [dictionary setObject:v15 forKeyedSubscript:@"NFStartStationData"];
      }

      v16 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 2 length:2];

      if (([v16 isAll00] & 1) == 0)
      {
        [dictionary setObject:v16 forKeyedSubscript:@"NFEndStationData"];
      }

      v17 = [SlalomUtils readUInt16FromBytes:bytes + 4];
      v18 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v18 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v17, 7, 9) + 2000}];
      [v18 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v17, 4, 5)}];
      [v18 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v17, 5, 0)}];
      [dictionary setObject:v18 forKeyedSubscript:@"NFPurchaseDate"];
      v19 = [SlalomUtils readUInt24FromBytes:bytes + 6];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 6, 13)}];
      [dictionary setObject:v20 forKeyedSubscript:@"NFMinuteSold"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 5, 19)}];
      [dictionary setObject:v21 forKeyedSubscript:@"NFHourSold"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:10 * *(bytes + 9)];
      [dictionary setObject:v22 forKeyedSubscript:@"NFFare"];

      v23 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 12 length:2];
      [dictionary setObject:v23 forKeyedSubscript:@"NFRefundStation"];

      v24 = [SlalomUtils readUInt16FromBytes:bytes + 14];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v24, 1, 0)}];
      [dictionary setObject:v25 forKeyedSubscript:@"NFTicketUsed"];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v24, 6, 5)}];
      [dictionary setObject:v26 forKeyedSubscript:@"NFRefundDay"];

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v24, 6, 11)}];
      [dictionary setObject:v27 forKeyedSubscript:@"NFRefundMonth"];

      v13 = dictionary;
      goto LABEL_17;
    }

    v9 = ATLLogObject(isAll00);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v10 = "Shinkansen information are all zeros, filtering";
      v11 = v9;
      v12 = 2;
LABEL_10:
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, v10, &v29, v12);
    }
  }

  else
  {
    v9 = ATLLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v6;
      v10 = "Failed to get the GreenCar information for Suica, invalid block: %@";
      v11 = v9;
      v12 = 12;
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

+ (id)parseShinkansenBlocks:(id)blocks fromServiceCode:(unsigned __int16)code
{
  codeCopy = code;
  v61 = *MEMORY[0x277D85DE8];
  blocksCopy = blocks;
  v7 = blocksCopy;
  if (blocksCopy)
  {
    blocksCopy = [blocksCopy count];
    if (blocksCopy)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v9 = [v7 objectAtIndexedSubscript:0];
      v10 = [SlalomUtils isValidFelicaBlock:v9];
      if (v10)
      {
        isAll00 = [v9 isAll00];
        if (isAll00)
        {
          v12 = ATLLogObject(isAll00);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "Shinkansen information are all zeros, filtering";
            v14 = v12;
            v15 = 2;
LABEL_13:
            _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
          }

LABEL_14:

          v16 = 0;
LABEL_44:

          goto LABEL_45;
        }

        if (codeCopy != 6475)
        {
          bytes = [v9 bytes];
          if (!bytes)
          {
            goto LABEL_43;
          }

          v50 = bytes;
          v51 = [MEMORY[0x277CCABB0] numberWithInt:*bytes];
          [dictionary setObject:v51 forKeyedSubscript:@"NFTicketSelected"];

          if ([v9 length] < 9)
          {
            goto LABEL_43;
          }

          v52 = v50[8];
          v53 = [MEMORY[0x277CCABB0] numberWithInt:(v52 >> 4) & 1];
          [dictionary setObject:v53 forKeyedSubscript:@"NFNotifyOnLowBalance"];

          v25 = [MEMORY[0x277CCABB0] numberWithInt:(v52 >> 5) & 1];
          [dictionary setObject:v25 forKeyedSubscript:@"NFAllowBalanceUsageForCommute"];
LABEL_42:

LABEL_43:
          v16 = dictionary;
          goto LABEL_44;
        }

        v17 = [v7 count];
        if (v17 == 8)
        {
          bytes2 = [v9 bytes];
          v19 = [SlalomUtils readUInt16FromBytes:bytes2];
          v20 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          [v20 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 7, 9) + 2000}];
          [v20 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 4, 5)}];
          [v20 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 5, 0)}];
          [dictionary setObject:v20 forKeyedSubscript:@"NFExpressTicketDate"];
          v21 = [MEMORY[0x277CBEA90] dataWithBytes:bytes2 + 2 length:3];
          [dictionary setObject:v21 forKeyedSubscript:@"NFExpressTicketNumber"];

          v22 = [SlalomUtils readUInt16FromBytes:bytes2 + 11];
          v23 = objc_alloc_init(MEMORY[0x277CBEAB8]);

          [v23 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v22, 7, 9) + 2000}];
          [v23 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v22, 4, 5)}];
          [v23 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v22, 5, 0)}];
          [dictionary setObject:v23 forKeyedSubscript:@"NFIssueDate"];
          v24 = [SlalomUtils readUInt16FromBytes:bytes2 + 13];
          v25 = objc_alloc_init(MEMORY[0x277CBEAB8]);

          [v25 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v24, 7, 9) + 2000}];
          [v25 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v24, 4, 5)}];
          [v25 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v24, 5, 0)}];
          [dictionary setObject:v25 forKeyedSubscript:@"NFValidityStartDate"];
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes2 + 15)];
          [dictionary setObject:v26 forKeyedSubscript:@"NFValidityTerm"];

          v27 = [v7 objectAtIndexedSubscript:5];

          v56 = v27;
          bytes3 = [v27 bytes];
          v55 = [MEMORY[0x277CBEA90] dataWithBytes:bytes3 length:2];
          v29 = [MEMORY[0x277CBEA90] dataWithBytes:bytes3 + 2 length:2];
          v58 = [MEMORY[0x277CBEA90] dataWithBytes:bytes3 + 4 length:2];
          v57 = [MEMORY[0x277CBEA90] dataWithBytes:bytes3 + 6 length:2];
          v30 = [SlalomUtils readNumberFromBytes:bytes3 + 8 numberOfBytes:6];
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v30, 12, 12)}];
          [dictionary setObject:v31 forKeyedSubscript:@"NFExpressFareC"];

          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v30, 12, 12)}];
          [dictionary setObject:v32 forKeyedSubscript:@"NFExpressFareB"];

          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v30, 12, 24)}];
          [dictionary setObject:v33 forKeyedSubscript:@"NFExpressFareA"];

          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v30, 12, 36)}];
          [dictionary setObject:v34 forKeyedSubscript:@"NFExpressFare"];

          v35 = [SlalomUtils readUInt16FromBytes:bytes3 + 14];
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2 * ((5 * v35) & 0x7FFF)];
          [dictionary setObject:v36 forKeyedSubscript:@"NFTotalFare"];

          array = [MEMORY[0x277CBEB18] array];
          if (v55 && v29 && ([v55 isAll00] & 1) == 0 && (objc_msgSend(v29, "isAll00") & 1) == 0)
          {
            v38 = [v7 objectAtIndexedSubscript:1];
            v39 = [v7 objectAtIndexedSubscript:2];
            dictionary2 = [self _decodeShinkansenTrainDataWithBlock:v38 andBlock:v39];

            if (!dictionary2)
            {
              dictionary2 = [MEMORY[0x277CBEB38] dictionary];
            }

            [dictionary2 setObject:v55 forKey:@"NFStartStationData"];
            [dictionary2 setObject:v29 forKey:@"NFEndStationData"];
            [array addObject:dictionary2];
          }

          v42 = v57;
          v41 = v58;
          if (v29 && v58 && ([v29 isAll00] & 1) == 0 && (objc_msgSend(v58, "isAll00") & 1) == 0)
          {
            v43 = [v7 objectAtIndexedSubscript:3];
            v44 = [v7 objectAtIndexedSubscript:4];
            dictionary3 = [self _decodeShinkansenTrainDataWithBlock:v43 andBlock:v44];

            if (!dictionary3)
            {
              dictionary3 = [MEMORY[0x277CBEB38] dictionary];
            }

            [dictionary3 setObject:v29 forKey:@"NFStartStationData"];
            v41 = v58;
            [dictionary3 setObject:v58 forKey:@"NFEndStationData"];
            [array addObject:dictionary3];

            v42 = v57;
          }

          if (v41 && v42 && ([v41 isAll00] & 1) == 0 && (objc_msgSend(v42, "isAll00") & 1) == 0)
          {
            v46 = [v7 objectAtIndexedSubscript:6];
            v47 = [v7 objectAtIndexedSubscript:7];
            dictionary4 = [self _decodeShinkansenTrainDataWithBlock:v46 andBlock:v47];

            if (!dictionary4)
            {
              dictionary4 = [MEMORY[0x277CBEB38] dictionary];
            }

            v41 = v58;
            [dictionary4 setObject:v58 forKey:@"NFStartStationData"];
            [dictionary4 setObject:v42 forKey:@"NFEndStationData"];
            [array addObject:dictionary4];
          }

          [dictionary setObject:array forKeyedSubscript:@"NFTrains"];

          v9 = v56;
          goto LABEL_42;
        }

        v12 = ATLLogObject(v17);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 134217984;
        v60 = [v7 count];
        v13 = "Shinkansen1 missing blocks, bailing out. Expecting 8 got %lu";
      }

      else
      {
        v12 = ATLLogObject(v10);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 138412290;
        v60 = v9;
        v13 = "Failed to get the shinkansen information for Suica, invalid block: %@";
      }

      v14 = v12;
      v15 = 12;
      goto LABEL_13;
    }
  }

  dictionary = ATLLogObject(blocksCopy);
  if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, dictionary, OS_LOG_TYPE_DEFAULT, "Bailing out for Shinkansen Service, not enough blocks", buf, 2u);
  }

  v16 = 0;
LABEL_45:

  return v16;
}

+ (id)_decodeShinkansenTrainDataWithBlock:(id)block andBlock:(id)andBlock
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  andBlockCopy = andBlock;
  v7 = [SlalomUtils isValidFelicaBlock:blockCopy];
  if (!v7)
  {
    v35 = ATLLogObject(v7);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = blockCopy;
      v36 = "Failed to get the denylisted information for Suica, invalid (block1) block: %@";
LABEL_16:
      _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
    }

LABEL_17:

LABEL_18:
    v34 = 0;
    goto LABEL_26;
  }

  v8 = [SlalomUtils isValidFelicaBlock:andBlockCopy];
  if (!v8)
  {
    v35 = ATLLogObject(v8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = andBlockCopy;
      v36 = "Failed to get the denylisted information for Suica, invalid (block2) block: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([blockCopy isAll00] && (objc_msgSend(andBlockCopy, "isAll00") & 1) != 0)
  {
    goto LABEL_18;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = [blockCopy mutableCopy];
  bytes = [andBlockCopy bytes];
  [v10 appendBytes:bytes length:6];
  [dictionary setObject:v10 forKeyedSubscript:@"NFTrainName"];
  v12 = [SlalomUtils readNumberFromBytes:bytes + 6 numberOfBytes:8];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 6, 0)}];
  [dictionary setObject:v13 forKeyedSubscript:@"NFArrivalMinute"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 5, 6)}];
  [dictionary setObject:v14 forKeyedSubscript:@"NFArrivalHour"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 6, 11)}];
  [dictionary setObject:v15 forKeyedSubscript:@"NFDepartureMinute"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 5, 17)}];
  [dictionary setObject:v16 forKeyedSubscript:@"NFDepartureHour"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 20, 22)}];
  [dictionary setObject:v17 forKeyedSubscript:@"NFPBCode"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 1, 42)}];
  [dictionary setObject:v18 forKeyedSubscript:@"NFReissue"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 3, 43)}];
  [dictionary setObject:v19 forKeyedSubscript:@"NFCarId"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 1, 46)}];
  [dictionary setObject:v20 forKeyedSubscript:@"NFSmoking"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 5, 47)}];
  [dictionary setObject:v21 forKeyedSubscript:@"NFCarNumber"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 3, 52)}];
  [dictionary setObject:v22 forKeyedSubscript:@"NFSeatType"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 1, 55)}];
  [dictionary setObject:v23 forKeyedSubscript:@"NFChild"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 2, 56)}];
  [dictionary setObject:v24 forKeyedSubscript:@"NFGreenCar"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v12, 6, 58)}];
  [dictionary setObject:v25 forKeyedSubscript:@"NFSeatNumber"];

  v26 = [SlalomUtils readUInt16FromBytes:bytes + 14];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:10 * (v26 >> 6)];
  [dictionary setObject:v27 forKeyedSubscript:@"NFGreenCarFare"];

  v28 = [dictionary objectForKeyedSubscript:@"NFDepartureHour"];
  if (![v28 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_23:

    goto LABEL_24;
  }

  v29 = [dictionary objectForKeyedSubscript:@"NFDepartureMinute"];
  if (![v29 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_22:

    goto LABEL_23;
  }

  v30 = [dictionary objectForKeyedSubscript:@"NFArrivalHour"];
  if (![v30 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_21:

    goto LABEL_22;
  }

  v31 = [dictionary objectForKeyedSubscript:@"NFArrivalMinute"];
  if (![v31 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_20:

    goto LABEL_21;
  }

  v32 = [dictionary objectForKeyedSubscript:@"NFPBCode"];
  if (![v32 isEqualToNumber:&unk_2843C6A10])
  {

    goto LABEL_20;
  }

  v33 = [dictionary objectForKeyedSubscript:@"NFCarId"];
  v38 = [v33 isEqualToNumber:&unk_2843C6A10];

  if ((v38 & 1) == 0)
  {
LABEL_24:
    v34 = dictionary;
    goto LABEL_25;
  }

  v34 = 0;
LABEL_25:

LABEL_26:

  return v34;
}

@end