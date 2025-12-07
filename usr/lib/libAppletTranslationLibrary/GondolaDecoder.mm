@interface GondolaDecoder
+ (id)decodeAutoTopThresholdAmount:(id)amount;
+ (id)decodeAutoTopUpAmount:(id)amount;
+ (id)decodeCardNumberFromBlock0:(id)block0 andBlock1:(id)block1;
+ (id)decodeEnrollmentDateAfterDelivery:(id)delivery;
+ (id)decodeHistoryBlock1:(id)block1 andWithBlock2:(id)block2;
+ (id)decodeLastTransactionDate:(id)date;
+ (id)decodeLoyaltyPointBalancesAndExpiration:(id)expiration withActivationDate:(id)date;
+ (id)decodeTotalPointsUntil1YearAgo:(id)ago;
+ (id)decodeTotalPointsUntil2YearsAgo:(id)ago;
+ (id)decodeTransactionTopupCategory:(unint64_t)category;
+ (id)decodeTransactionType:(unint64_t)type;
+ (id)getPurseBalance:(id)balance;
@end

@implementation GondolaDecoder

+ (id)decodeCardNumberFromBlock0:(id)block0 andBlock1:(id)block1
{
  v5 = MEMORY[0x277CBEB28];
  block1Copy = block1;
  block0Copy = block0;
  v8 = [v5 dataWithCapacity:8];
  bytes = [block0Copy bytes];

  bytes2 = [block1Copy bytes];
  [v8 appendBytes:bytes + 12 length:4];
  [v8 appendBytes:bytes2 length:4];

  return v8;
}

+ (id)decodeEnrollmentDateAfterDelivery:(id)delivery
{
  v3 = MEMORY[0x277CBEAB8];
  deliveryCopy = delivery;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277CCABB0];
  v7 = [deliveryCopy decodeBCDAtOffset:3 length:1];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "intValue") + 2000}];

  v9 = [deliveryCopy decodeBCDAtOffset:4 length:1];
  v10 = [deliveryCopy decodeBCDAtOffset:5 length:1];

  [v5 setDay:{objc_msgSend(v10, "intValue")}];
  [v5 setMonth:{objc_msgSend(v9, "intValue")}];
  [v5 setYear:{objc_msgSend(v8, "intValue")}];

  return v5;
}

+ (id)decodeLastTransactionDate:(id)date
{
  v3 = MEMORY[0x277CCABB0];
  dateCopy = date;
  v5 = [dateCopy decodeBCDAtOffset:11 length:1];
  v6 = [v3 numberWithInt:{objc_msgSend(v5, "intValue") + 2000}];

  v7 = [dateCopy decodeBCDAtOffset:12 length:1];
  v8 = [dateCopy decodeBCDAtOffset:13 length:1];

  v9 = [MEMORY[0x277CBEAB8] dateWithYear:objc_msgSend(v6 month:"intValue") day:{objc_msgSend(v7, "intValue"), objc_msgSend(v8, "intValue")}];

  return v9;
}

+ (id)decodeHistoryBlock1:(id)block1 andWithBlock2:(id)block2
{
  v61[7] = *MEMORY[0x277D85DE8];
  block2Copy = block2;
  block1Copy = block1;
  v55 = [block1Copy subdataWithRange:{0, 13}];
  v50 = [block1Copy u16BE:13];

  v8 = [block2Copy readBinaryValueAtBit:8 numberOfBits:7] >> 1;
  v45 = [self decodeTransactionType:v8];
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  LODWORD(block1Copy) = [block2Copy readBinaryValueAtBit:14 numberOfBits:7];
  v10 = [block2Copy readBinaryValueAtBit:21 numberOfBits:4];
  v11 = [block2Copy readBinaryValueAtBit:25 numberOfBits:5];
  v12 = [block2Copy readBinaryValueAtBit:30 numberOfBits:5];
  v13 = [block2Copy readBinaryValueAtBit:35 numberOfBits:6];
  [v9 setDay:v11];
  [v9 setMonth:v10];
  [v9 setYear:block1Copy + 2005];
  [v9 setHour:v12];
  [v9 setMinute:v13];
  v14 = [block2Copy readBinaryValueAtBit:41 numberOfBits:18];
  v15 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v14 exponent:0 isNegative:0];
  v16 = [block2Copy readBinaryValueAtBit:59 numberOfBits:18];
  v17 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v16 exponent:0 isNegative:v8 == 10];
  v18 = [block2Copy readBinaryValueAtBit:77 numberOfBits:17];
  v52 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v18 exponent:0 isNegative:v8 != 5];
  selfCopy = self;
  v48 = [block2Copy readBinaryValueAtBit:94 numberOfBits:4];
  v53 = [self decodeTransactionTopupCategory:?];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  v20 = [MEMORY[0x277CBEB28] dataWithCapacity:32];
  bytes = [block2Copy bytes];

  v22 = v20;
  v46 = v20;
  v23 = v45;
  CC_SHA256(bytes, 8u, [v22 mutableBytes]);
  v47 = v17;
  v42 = v16;
  if (v16)
  {
    v60[0] = @"TerminalIdentifier";
    asHexString = [v55 asHexString];
    v61[0] = asHexString;
    v60[1] = @"SerialNumber";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v50];
    v61[1] = v25;
    v60[2] = @"TypeDetailRaw";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    v61[2] = v26;
    v61[3] = v9;
    v60[3] = @"TransactionTime";
    v60[4] = @"Amount";
    v61[4] = v17;
    v61[5] = v15;
    v60[5] = @"FinalBalance";
    v60[6] = @"TypeDetail";
    v61[6] = v45;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:7];
    v28 = v27 = v15;
    [v19 setValuesForKeysWithDictionary:v28];

    v15 = v27;
  }

  v49 = v9;
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{9, v42}];
  if (v18)
  {
    if ([selfCopy isTransactionTypePaymentWithReload:v8])
    {

      v23 = @"TopUpAuto";
    }

    if (v8 != 6 || v48)
    {
      v30 = v53;
    }

    else
    {

      v30 = @"Points";
    }

    v58[0] = @"TerminalIdentifier";
    asHexString2 = [v55 asHexString];
    v59[0] = asHexString2;
    v58[1] = @"SerialNumber";
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v50];
    v59[1] = v35;
    v58[2] = @"TypeDetailRaw";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    v59[2] = v36;
    v59[3] = v49;
    v58[3] = @"TransactionTime";
    v58[4] = @"Amount";
    v59[4] = v52;
    v59[5] = v15;
    v51 = v15;
    v58[5] = @"FinalBalance";
    v58[6] = @"AddValueTypeRaw";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
    v59[6] = v37;
    v59[7] = v30;
    v54 = v30;
    v58[7] = @"AddValueType";
    v58[8] = @"TypeDetail";
    v59[8] = v23;
    v33 = 0x277CBE000uLL;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:9];
    [v29 setValuesForKeysWithDictionary:v38];

    if (v43)
    {
      v32 = v46;
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{bswap64(*objc_msgSend(v46, "bytes"))}];
      [v19 setObject:v39 forKey:@"fakeTransactionId"];

      v15 = v51;
      v31 = v54;
    }

    else
    {
      v15 = v51;
      v31 = v54;
      v32 = v46;
    }
  }

  else
  {
    v31 = v53;
    v32 = v46;
    v33 = 0x277CBE000;
  }

  v56[0] = @"Charge";
  v56[1] = @"TopUp";
  v57[0] = v19;
  v57[1] = v29;
  v40 = [*(v33 + 2752) dictionaryWithObjects:v57 forKeys:v56 count:2];

  return v40;
}

+ (id)getPurseBalance:(id)balance
{
  v3 = *[balance bytes];
  v4 = MEMORY[0x277CCA980];

  return [v4 decimalNumberWithMantissa:v3 exponent:0 isNegative:0];
}

+ (id)decodeTotalPointsUntil1YearAgo:(id)ago
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [ago s24BE:0];

  return [v3 numberWithInt:v4];
}

+ (id)decodeTotalPointsUntil2YearsAgo:(id)ago
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [ago s24BE:3];

  return [v3 numberWithInt:v4];
}

+ (id)decodeAutoTopUpAmount:(id)amount
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [amount readBinaryValueAtBit:34 numberOfBits:17];

  return [v3 numberWithUnsignedLongLong:v4];
}

+ (id)decodeAutoTopThresholdAmount:(id)amount
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [amount readBinaryValueAtBit:51 numberOfBits:17];

  return [v3 numberWithUnsignedLongLong:v4];
}

+ (id)decodeTransactionTopupCategory:(unint64_t)category
{
  if (category - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_278874880[category - 1];
  }
}

+ (id)decodeTransactionType:(unint64_t)type
{
  v4 = +[AppletConfigurationData getSlalomSettings];
  v5 = [v4 objectForKeyedSubscript:@"gondola"];
  v6 = [v5 objectForKeyedSubscript:@"transactionType"];

  if (!v6 || ([MEMORY[0x277CCACA8] stringWithFormat:@"%llu", type], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "valueForKey:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    if (type - 1 > 0x25)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_2788748B0[type - 1];
    }
  }

  return v8;
}

+ (id)decodeLoyaltyPointBalancesAndExpiration:(id)expiration withActivationDate:(id)date
{
  v28[5] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  expirationCopy = expiration;
  v8 = [self decodeTotalPointsUntil1YearAgo:expirationCopy];
  v9 = [self decodeTotalPointsUntil2YearsAgo:expirationCopy];
  v10 = [self decodeLastTransactionDate:expirationCopy];

  if ([v10 year] == 2000)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [MEMORY[0x277CBEAB8] dateWithYear:objc_msgSend(dateCopy month:"year") + 1 day:{objc_msgSend(dateCopy, "month") % 12 + 1, 1}];
    v14 = [currentCalendar dateFromComponents:v13];
    v15 = [currentCalendar dateFromComponents:v10];
    v22 = v9;
    if ([v15 compare:v14] == 1)
    {
      [v13 setYear:{objc_msgSend(v10, "year")}];
      v16 = [currentCalendar dateFromComponents:v13];

      v21 = v16;
      if ([v15 compare:v16] == 1)
      {
        [v13 setYear:{objc_msgSend(v13, "year") + 1}];
      }

      v25[0] = @"BalanceIdentifier";
      v25[1] = @"Balance";
      v26[0] = @"Points2";
      v26[1] = v9;
      v25[2] = @"BalanceCurrency";
      v25[3] = @"BalanceCurrencyExponent";
      v26[2] = @"XXX";
      v26[3] = &unk_2843C6368;
      v25[4] = @"BalanceExpirationDate";
      v26[4] = v13;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];
      [v11 addObject:v17];

      v18 = [MEMORY[0x277CBEAB8] dateWithYear:objc_msgSend(v13 month:"year") + 1 day:{objc_msgSend(v13, "month"), objc_msgSend(v13, "day")}];
      v23[0] = @"BalanceIdentifier";
      v23[1] = @"Balance";
      v24[0] = @"Points1";
      v24[1] = v8;
      v23[2] = @"BalanceCurrency";
      v23[3] = @"BalanceCurrencyExponent";
      v24[2] = @"XXX";
      v24[3] = &unk_2843C6368;
      v23[4] = @"BalanceExpirationDate";
      v24[4] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];
      [v11 addObject:v19];

      v14 = v21;
    }

    else
    {
      [v13 setYear:{objc_msgSend(v13, "year") + 1}];
      v27[0] = @"BalanceIdentifier";
      v27[1] = @"Balance";
      v28[0] = @"Points1";
      v28[1] = v8;
      v27[2] = @"BalanceCurrency";
      v27[3] = @"BalanceCurrencyExponent";
      v28[2] = @"XXX";
      v28[3] = &unk_2843C6368;
      v27[4] = @"BalanceExpirationDate";
      v28[4] = v13;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
      [v11 addObject:v18];
    }

    v9 = v22;
  }

  return v11;
}

@end