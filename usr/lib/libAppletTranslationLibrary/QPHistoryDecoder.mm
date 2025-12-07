@interface QPHistoryDecoder
+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver;
+ (id)getTransactionAmount:(id)amount;
+ (id)getTransactionDate:(id)date;
+ (id)parseQuickPayHistoryBlocks:(id)blocks;
+ (unsigned)getATC:(id)c;
+ (unsigned)getExpirationDate:(id)date;
+ (unsigned)getHistoryNumber:(id)number;
+ (unsigned)getTypeOfUse:(id)use;
@end

@implementation QPHistoryDecoder

+ (id)getTransactionDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = [SlalomUtils isValidFelicaBlock:dateCopy];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v6 = [dateCopy decodeBCDAtOffset:0 length:2];
    v7 = [dateCopy decodeBCDAtOffset:2 length:1];
    v8 = [dateCopy decodeBCDAtOffset:3 length:1];
    [v5 setDay:{objc_msgSend(v8, "intValue")}];
    [v5 setMonth:{objc_msgSend(v7, "intValue")}];
    [v5 setYear:{objc_msgSend(v6, "intValue")}];
  }

  else
  {
    v9 = ATLLogObject(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for QuicPay, invalid block: %@", &v11, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)getTransactionAmount:(id)amount
{
  v11 = *MEMORY[0x277D85DE8];
  amountCopy = amount;
  v4 = [SlalomUtils isValidFelicaBlock:amountCopy];
  if (v4)
  {
    bytes = [amountCopy bytes];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bytes[13] << 16) | (bytes[14] << 8) | bytes[15]];
  }

  else
  {
    v7 = ATLLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = amountCopy;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction amount for QuicPay, invalid block: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (unsigned)getTypeOfUse:(id)use
{
  v11 = *MEMORY[0x277D85DE8];
  useCopy = use;
  v4 = [SlalomUtils isValidFelicaBlock:useCopy];
  if (v4)
  {
    v5 = *([useCopy bytes] + 4) >> 4;
    switch(v5)
    {
      case 1:
        LOWORD(v5) = 241;
        break;
      case 2:
        LOWORD(v5) = 240;
        break;
      case 4:
        LOWORD(v5) = 74;
        break;
    }

    v7 = v5 << 8;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = useCopy;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the type of use for QuicPay, invalid block: %@", &v9, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (unsigned)getHistoryNumber:(id)number
{
  v9 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = [SlalomUtils isValidFelicaBlock:numberCopy];
  if (v4)
  {
    LODWORD(v5) = bswap32(*([numberCopy bytes] + 11)) >> 16;
  }

  else
  {
    v5 = ATLLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = numberCopy;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the hisotry number for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v5) = 0;
  }

  return v5;
}

+ (id)parseQuickPayHistoryBlocks:(id)blocks
{
  blocksCopy = blocks;
  v5 = blocksCopy;
  if (blocksCopy && (blocksCopy = [blocksCopy count]) != 0)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [SlalomUtils isValidFelicaBlock:v7];
    if (v8)
    {
      v9 = [self getTransactionDate:v7];
      v10 = [self getTransactionAmount:v7];
      v11 = [self getTypeOfUse:v7];
      [dictionary setObject:v9 forKeyedSubscript:@"NFTransactionDate"];
      [dictionary setObject:v10 forKeyedSubscript:@"NFAmount"];
      [dictionary setObject:&unk_2843C7130 forKeyedSubscript:@"NFAmountType"];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v11 >> 8];
      [dictionary setObject:v12 forKeyedSubscript:@"NFTransactionType"];

      [dictionary setObject:&unk_2843C7148 forKeyedSubscript:@"NFSectorCombination"];
      v13 = [self getHistoryNumber:v7];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
      [dictionary setObject:v14 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v15 = dictionary;
    }

    else
    {
      v9 = ATLLogObject(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, "the array contains an empty block", v17, 2u);
      }

      v15 = 0;
    }
  }

  else
  {
    dictionary = ATLLogObject(blocksCopy);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, dictionary, OS_LOG_TYPE_DEFAULT, "the array of block does not contain block entry", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver
{
  v84 = *MEMORY[0x277D85DE8];
  iCopy = i;
  transceiverCopy = transceiver;
  v8 = transceiverCopy;
  if (!transceiverCopy)
  {
    dictionary = ATLLogObject(0);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v45 = "No transceiver provided";
      goto LABEL_29;
    }

LABEL_30:
    v46 = 0;
    goto LABEL_65;
  }

  if (!iCopy || (transceiverCopy = [iCopy count]) == 0)
  {
    dictionary = ATLLogObject(transceiverCopy);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v45 = "HCI Array provided does not contain HCI events";
LABEL_29:
      _os_log_impl(&dword_22EEF5000, dictionary, OS_LOG_TYPE_DEFAULT, v45, md, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_2843C7160 forKeyedSubscript:@"NFServiceProviderID"];
  v10 = FelicaGetDataFileSystemCommand(13771, 4);
  if (v10)
  {
    v11 = v10;
    v12 = [v8 transceiveAndCheckSW:v10 error:0];
    if (v12)
    {
      v13 = v12;
      v14 = FeliCaGetBlockDataFromGetDataCommand(v12);
      if (v14)
      {
        v15 = v14;
        v64 = v11;
        v65 = v13;
        v16 = [self getDPAN:v14];
        v62 = *([v16 bytes] + 2);
        asHexString = [v16 asHexString];
        v69 = dictionary;
        [dictionary setObject:asHexString forKeyedSubscript:@"NFDPAN"];

        selfCopy = self;
        v66 = v15;
        v61 = [self getExpirationDate:v15];

        array = [MEMORY[0x277CBEB18] array];
        array2 = [MEMORY[0x277CBEB18] array];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v68 = iCopy;
        v18 = iCopy;
        v19 = [v18 countByEnumeratingWithState:&v72 objects:v83 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v73;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v73 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v72 + 1) + 8 * i);
              v24 = [v23 objectForKeyedSubscript:@"EventType"];

              if (v24 == @"TransactionEvent")
              {
                v25 = [v23 objectForKeyedSubscript:@"parsedInfo"];
                v26 = [v25 objectForKeyedSubscript:@"OPWrite"];
                v27 = [v25 objectForKeyedSubscript:@"OPRead"];
                if ([v26 count])
                {
                  [array addObject:v26];
                }

                if ([v27 count])
                {
                  [array2 addObject:v27];
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v72 objects:v83 count:16];
          }

          while (v20);
        }

        v28 = [array count];
        if (v28)
        {
          v11 = FelicaGetDataFileSystemCommand(13839, 0);

          dictionary = v69;
          if (v11)
          {
            v30 = [v8 transceiveAndCheckSW:v11 error:0];

            if (v30)
            {
              v32 = FeliCaGetBlockDataFromGetDataCommand(v30);

              if (v32)
              {
                bytes = [v32 bytes];
                v67 = v28;
                v35 = *(bytes + 13);
                v36 = *(bytes + 15);
                v37 = *bytes;
                v82 = v32;
                v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
                v39 = [QPHistoryDecoder parseQuickPayHistoryBlocks:v38];

                [v69 addEntriesFromDictionary:v39];
                data = v62;
                v79 = v35;
                v80 = v36;
                v81 = v37;
                CC_SHA256(&data, 0xFu, md);
                asHexString3 = [MEMORY[0x277CBEB28] dataWithBytes:md length:32];
                asHexString2 = [asHexString3 asHexString];
                [v69 setObject:asHexString2 forKeyedSubscript:@"NFTransactionID"];

                v42 = [selfCopy getTypeOfUse:v32];
                LOBYTE(asHexString2) = v42;
                v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v42 >> 8];
                [v69 setObject:v43 forKeyedSubscript:@"NFTransactionType"];

                dictionary = v69;
                v44 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:asHexString2];
                [v69 setObject:v44 forKeyedSubscript:@"NFSectorCombination"];

                v28 = v67;
LABEL_44:

LABEL_63:
                v59 = [MEMORY[0x277CCABB0] numberWithBool:v28 == 0];
                [dictionary setObject:v59 forKeyedSubscript:@"readOnly"];

                v46 = dictionary;
                iCopy = v68;
                goto LABEL_64;
              }

LABEL_51:
              v55 = ATLLogObject(v33);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *md = 138412290;
                *&md[4] = 0;
                v56 = "QP block is unexpected (Sercice 360F block 0): %@";
LABEL_61:
                _os_log_impl(&dword_22EEF5000, v55, OS_LOG_TYPE_DEFAULT, v56, md, 0xCu);
                goto LABEL_62;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v53 = ATLLogObject(v29);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *md = 138412290;
              *&md[4] = 0;
              _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
            }
          }

          v54 = ATLLogObject(v31);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            *&md[4] = 0;
            _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
          }

          v30 = 0;
          goto LABEL_51;
        }

        v11 = FelicaGetDataFileSystemCommand(13771, 6);

        dictionary = v69;
        if (v11)
        {
          v30 = [v8 transceiveAndCheckSW:v11 error:0];

          if (v30)
          {
            v32 = FeliCaGetBlockDataFromGetDataCommand(v30);

            if (v32)
            {
              data = v62;
              v52 = [selfCopy getATC:v32];
              LOBYTE(v79) = HIBYTE(v52);
              HIBYTE(v79) = v52;
              v80 = HIBYTE(v61);
              LOBYTE(v81) = v61;
              *md = 0u;
              v77 = 0u;
              CC_SHA256(&data, 0xCu, md);
              v39 = [MEMORY[0x277CBEB28] dataWithBytes:md length:32];
              asHexString3 = [v39 asHexString];
              [v69 setObject:asHexString3 forKeyedSubscript:@"NFTransactionID"];
              goto LABEL_44;
            }

LABEL_59:
            v55 = ATLLogObject(v51);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *md = 138412290;
              *&md[4] = 0;
              v56 = "QP block is unexpected (Sercice 408C block 0): %@";
              goto LABEL_61;
            }

LABEL_62:

            v32 = 0;
            goto LABEL_63;
          }
        }

        else
        {
          v57 = ATLLogObject(v49);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            *&md[4] = 0;
            _os_log_impl(&dword_22EEF5000, v57, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
          }
        }

        v58 = ATLLogObject(v50);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          *&md[4] = 0;
          _os_log_impl(&dword_22EEF5000, v58, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
        }

        v30 = 0;
        goto LABEL_59;
      }

      v48 = ATLLogObject(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *md = 138412290;
        *&md[4] = 0;
        _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_DEFAULT, "QP block is unexpected (Sercice 35CB block 4): %@", md, 0xCu);
      }
    }

    else
    {
      v47 = ATLLogObject(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *md = 138412290;
        *&md[4] = 0;
        _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
      }
    }
  }

  else
  {
    v11 = ATLLogObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *md = 138412290;
      *&md[4] = 0;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
    }
  }

  v46 = 0;
LABEL_64:

LABEL_65:

  return v46;
}

+ (unsigned)getATC:(id)c
{
  v9 = *MEMORY[0x277D85DE8];
  cCopy = c;
  v4 = [SlalomUtils isValidFelicaBlock:cCopy];
  if (v4)
  {
    LODWORD(v5) = bswap32(*([cCopy bytes] + 4)) >> 16;
  }

  else
  {
    v5 = ATLLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = cCopy;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the ATC for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v5) = 0;
  }

  return v5;
}

+ (unsigned)getExpirationDate:(id)date
{
  v9 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = [SlalomUtils isValidFelicaBlock:dateCopy];
  if (v4)
  {
    LODWORD(v5) = bswap32(*([dateCopy bytes] + 13)) >> 16;
  }

  else
  {
    v5 = ATLLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the expiration date for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v5) = 0;
  }

  return v5;
}

@end