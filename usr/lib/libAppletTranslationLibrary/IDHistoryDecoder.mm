@interface IDHistoryDecoder
+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver;
+ (id)getDPAN:(id)n;
+ (id)getExpirationDate:(id)date;
+ (id)getTransactionAmount:(id)amount;
+ (id)getTransactionDate:(id)date;
+ (id)parseIDHistoryBlocks:(id)blocks;
+ (unsigned)getHistoryNumber:(id)number;
+ (unsigned)getTypeOfUse:(id)use;
@end

@implementation IDHistoryDecoder

+ (id)getTransactionDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = [SlalomUtils isValidFelicaBlock:dateCopy];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v6 = [dateCopy decodeBCDAtOffset:13 length:1];
    v7 = [dateCopy decodeBCDAtOffset:14 length:1];
    v8 = [dateCopy decodeBCDAtOffset:15 length:1];
    [v5 setDay:{objc_msgSend(v6, "intValue")}];
    [v5 setMonth:{objc_msgSend(v7, "intValue")}];
    [v5 setYear:{(objc_msgSend(v8, "intValue") + 2000)}];
  }

  else
  {
    v9 = ATLLogObject(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for ID, invalid block: %@", &v11, 0xCu);
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
    LOBYTE(v9) = bytes[11];
    BYTE1(v9) = bytes[10];
    BYTE2(v9) = bytes[9];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{DecodeBCD(&v9, 3)}];
  }

  else
  {
    v7 = ATLLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = amountCopy;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction amount for ID, invalid block: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (unsigned)getTypeOfUse:(id)use
{
  v12 = *MEMORY[0x277D85DE8];
  useCopy = use;
  v4 = [SlalomUtils isValidFelicaBlock:useCopy];
  if (v4)
  {
    bytes = [useCopy bytes];
    v6 = *(bytes + 3);
    if (v6 == 32)
    {
      v7 = 18944;
    }

    else if (v6 == 16)
    {
      v7 = -4096;
    }

    else
    {
      NSLog(&cfstr_UnknownIdTypeO.isa, *(bytes + 3));
      v7 = v6 << 8;
    }
  }

  else
  {
    v8 = ATLLogObject(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = useCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction type of use for ID, invalid block: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (unsigned)getHistoryNumber:(id)number
{
  v11 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = [SlalomUtils isValidFelicaBlock:numberCopy];
  if (v4)
  {
    bytes = [numberCopy bytes];
    v6 = *(bytes + 2) | (*(bytes + 13) << 8);
  }

  else
  {
    v7 = ATLLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = numberCopy;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the history number for ID, invalid block: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)getDPAN:(id)n
{
  v15 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v4 = [SlalomUtils isValidFelicaBlock:nCopy];
  if (v4)
  {
    bytes = [nCopy bytes];
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x24E098A9uLL);
    v7 = v6;
    for (i = 15; i != -1; --i)
    {
      v9 = *bytes++;
      *(v6 + i) = v9;
    }

    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:16];
    free(v7);
  }

  else
  {
    v11 = ATLLogObject(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = nCopy;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "Failed to get the DPAN for ID, invalid block: %@", &v13, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)parseIDHistoryBlocks:(id)blocks
{
  blocksCopy = blocks;
  v5 = blocksCopy;
  if (blocksCopy && [blocksCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = [v5 objectAtIndexedSubscript:0];
    if ([SlalomUtils isValidFelicaBlock:v7])
    {
      v8 = [self getTransactionDate:v7];
      v9 = [self getTransactionAmount:v7];
      v10 = [self getHistoryNumber:v7];
      [dictionary setObject:v8 forKeyedSubscript:@"NFTransactionDate"];
      [dictionary setObject:v9 forKeyedSubscript:@"NFAmount"];
      [dictionary setObject:&unk_2843C63B0 forKeyedSubscript:@"NFAmountType"];
      [dictionary setObject:&unk_2843C63C8 forKeyedSubscript:@"NFSectorCombination"];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
      [dictionary setObject:v11 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v12 = dictionary;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_TheArrayOfBloc.isa);
    v12 = 0;
  }

  return v12;
}

+ (id)getExpirationDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = [SlalomUtils isValidFelicaBlock:dateCopy];
  if (v4)
  {
    v5.i32[0] = *([dateCopy bytes] + 12);
    v6 = vrev64_s16(*&vmovl_u8(v5));
    v10 = vuzp1_s8(v6, v6).u32[0];
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:4];
  }

  else
  {
    v8 = ATLLogObject(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the expiration date for ID, invalid block: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver
{
  v93 = *MEMORY[0x277D85DE8];
  iCopy = i;
  transceiverCopy = transceiver;
  v8 = transceiverCopy;
  if (!transceiverCopy)
  {
    dictionary = ATLLogObject(0);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v42 = "No transceiver provided";
      goto LABEL_29;
    }

LABEL_30:
    v43 = 0;
    goto LABEL_75;
  }

  if (!iCopy || (transceiverCopy = [iCopy count]) == 0)
  {
    dictionary = ATLLogObject(transceiverCopy);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v42 = "HCI Array provided does not contain HCI events";
LABEL_29:
      _os_log_impl(&dword_22EEF5000, dictionary, OS_LOG_TYPE_DEFAULT, v42, md, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_2843C63B0 forKeyedSubscript:@"NFServiceProviderID"];
  v10 = FelicaGetDataFileSystemCommand(16587, 1);
  if (v10)
  {
    v11 = v10;
    v12 = [v8 transceiveAndCheckSW:v10 error:0];
    if (v12)
    {
      v13 = v12;
      v14 = FeliCaGetBlockDataFromGetDataCommand(v12);
      if (!v14)
      {
        v27 = ATLLogObject(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          v86 = 0;
          _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "ID block is unexpected (Sercice 40CB block 1): %@", md, 0xCu);
        }

        v43 = 0;
        goto LABEL_73;
      }

      v73 = v13;
      v77 = v8;
      selfCopy = self;
      v75 = v14;
      v15 = [self getDPAN:?];
      v92 = *[v15 bytes];
      asHexString = [v15 asHexString];
      v78 = dictionary;
      [dictionary setObject:asHexString forKeyedSubscript:@"NFDPAN"];

      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v76 = iCopy;
      v17 = iCopy;
      v18 = [v17 countByEnumeratingWithState:&v81 objects:v91 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v82;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v82 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v81 + 1) + 8 * i);
            v23 = [v22 objectForKeyedSubscript:@"EventType"];

            if (v23 == @"TransactionEvent")
            {
              v24 = [v22 objectForKeyedSubscript:@"parsedInfo"];
              v25 = [v24 objectForKeyedSubscript:@"OPWrite"];
              v26 = [v24 objectForKeyedSubscript:@"OPRead"];
              if ([v25 count])
              {
                [array addObject:v25];
              }

              if ([v26 count])
              {
                [array2 addObject:v26];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v81 objects:v91 count:16];
        }

        while (v19);
      }

      v27 = array;
      v28 = [array count];
      if (!v28)
      {
        v45 = FelicaGetDataFileSystemCommand(16587, 2);

        v8 = v77;
        dictionary = v78;
        v74 = v45;
        if (v45)
        {
          v13 = [v77 transceiveAndCheckSW:v45 error:0];

          v48 = v75;
          iCopy = v76;
          if (v13)
          {
            v49 = FeliCaGetBlockDataFromGetDataCommand(v13);

            if (!v49)
            {
LABEL_72:
              v70 = [MEMORY[0x277CCABB0] numberWithBool:v28 == 0];
              [dictionary setObject:v70 forKeyedSubscript:@"readOnly"];

              v43 = dictionary;
              v11 = v74;
LABEL_73:

              goto LABEL_74;
            }

            v50 = [selfCopy getExpirationDate:v49];
            data = v92;
            v88 = 0;
            v89 = *[v50 bytes];
            CC_SHA256(&data, 0x16u, md);
            v51 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
            asHexString2 = [v51 asHexString];
            [v78 setObject:asHexString2 forKeyedSubscript:@"NFTransactionID"];

            v27 = array;
            v8 = v77;

            v28 = 0;
            v48 = v49;
LABEL_71:

            goto LABEL_72;
          }
        }

        else
        {
          v68 = ATLLogObject(v46);
          v48 = v75;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            v86 = 0;
            _os_log_impl(&dword_22EEF5000, v68, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
          }

          iCopy = v76;
        }

        v69 = ATLLogObject(v47);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          v86 = 0;
          _os_log_impl(&dword_22EEF5000, v69, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
        }

        v13 = 0;
        goto LABEL_71;
      }

      v29 = FelicaGetDataFileSystemCommand(16527, 0);

      v8 = v77;
      if (v29)
      {
        v31 = [v77 transceiveAndCheckSW:v29 error:0];

        v33 = v75;
        if (v31)
        {
          v34 = FeliCaGetBlockDataFromGetDataCommand(v31);

          if (v34)
          {
            v90 = v34;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
            v37 = v36 = v28;
            v38 = [IDHistoryDecoder parseIDHistoryBlocks:v37];

            [v78 addEntriesFromDictionary:v38];
            bytes = [v34 bytes];
            data = v92;
            LOBYTE(v88) = bytes[11];
            HIBYTE(v88) = bytes[10];
            LOBYTE(v89) = bytes[9];
            BYTE1(v89) = bytes[15];
            BYTE2(v89) = bytes[14];
            HIBYTE(v89) = bytes[13];
            CC_SHA256(&data, 0x16u, md);
            v40 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
            asHexString3 = [v40 asHexString];
            v27 = array;
            [v78 setObject:asHexString3 forKeyedSubscript:@"NFTransactionID"];

            v28 = v36;
            iCopy = v76;
            goto LABEL_53;
          }

          iCopy = v76;
LABEL_50:
          v38 = ATLLogObject(v35);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            v86 = 0;
            _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_DEFAULT, "ID block is unexpected (Sercice 408F block 0): %@", md, 0xCu);
          }

          v34 = 0;
LABEL_53:

          v55 = FelicaGetDataFileSystemCommand(16524, 0);

          v74 = v55;
          if (v55)
          {
            v13 = [v77 transceiveAndCheckSW:v55 error:0];

            if (v13)
            {
              v58 = FeliCaGetBlockDataFromGetDataCommand(v13);

              if (v58)
              {
                v60 = [selfCopy getTypeOfUse:v58];
                v61 = v60;
                [MEMORY[0x277CCABB0] numberWithUnsignedChar:v60 >> 8];
                v62 = v58;
                v64 = v63 = v28;
                dictionary = v78;
                [v78 setObject:v64 forKeyedSubscript:@"NFTransactionType"];

                v28 = v63;
                v48 = v62;
                v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v61];
                [v78 setObject:v65 forKeyedSubscript:@"NFSectorCombination"];

                goto LABEL_71;
              }

LABEL_63:
              dictionary = v78;
              v48 = ATLLogObject(v59);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *md = 138412290;
                v86 = 0;
                _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_DEFAULT, "ID block is unexpected (Sercice 408C block 0): %@", md, 0xCu);
              }

              goto LABEL_71;
            }
          }

          else
          {
            v66 = ATLLogObject(v56);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *md = 138412290;
              v86 = 0;
              _os_log_impl(&dword_22EEF5000, v66, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
            }
          }

          v67 = ATLLogObject(v57);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            v86 = 0;
            _os_log_impl(&dword_22EEF5000, v67, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
          }

          v13 = 0;
          goto LABEL_63;
        }
      }

      else
      {
        v53 = ATLLogObject(v30);
        v33 = v75;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          v86 = 0;
          _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
        }
      }

      v54 = ATLLogObject(v32);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *md = 138412290;
        v86 = 0;
        _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
      }

      v31 = 0;
      iCopy = v76;
      goto LABEL_50;
    }

    v44 = ATLLogObject(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *md = 138412290;
      v86 = 0;
      _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
    }
  }

  else
  {
    v11 = ATLLogObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *md = 138412290;
      v86 = 0;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
    }
  }

  v43 = 0;
LABEL_74:

LABEL_75:

  return v43;
}

@end