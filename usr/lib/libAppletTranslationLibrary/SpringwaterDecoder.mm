@interface SpringwaterDecoder
+ (id)calculateCommutePlanUniqueId:(id)id withExpiry:(id)expiry;
+ (id)calculateTransactionSN:(id)n withTimeStamp:(id)stamp withEventCode:(id)code withSP:(id)p withContractPointer:(id)pointer withDifferentiator:(id)differentiator;
+ (id)commutePlanWithIdAndExpiry:(id)expiry withExpiry:(id)withExpiry withUniqueId:(id)id;
+ (id)formatCommutePlanIdentifier:(id)identifier withTariffCode:(id)code withZoneList:(id)list;
+ (id)formatTransitDetailRaw:(id)raw;
+ (id)getCardIdFromSelectResponse:(id)response;
+ (id)getInternalEnRouteStatus:(id)status;
+ (id)getTransitModality:(id)modality;
+ (id)getUnvalidatableContracts:(id)contracts;
+ (id)readAndDecodeEnvironment:(id)environment sfi:(unsigned __int8)sfi error:(id *)error;
+ (id)readAndDecodeHistory:(id)history sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error;
+ (id)readPartnerRecords:(id)records sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error;
+ (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index recLength:(unsigned __int8)length error:(id *)error;
+ (void)stripContract:(id)contract;
- (id)generateEndEventFromHCI;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseHistory:(id)history withContracts:(id)contracts;
- (id)readAndDecodeContractList:(id)list sfi:(unsigned __int8)sfi error:(id *)error;
- (id)readAndDecodeContracts:(id)contracts sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error;
- (id)readAndDecodeCounter:(id)counter sfi:(unsigned __int8)sfi recNum:(unsigned __int8)num counterStructure:(unsigned __int8)structure error:(id *)error;
- (void)interpretTransactionEvent:(id)event;
@end

@implementation SpringwaterDecoder

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  errorCopy = error;
  v121[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  schemeCopy = scheme;
  dataCopy = data;
  v16 = [TransceiverWrapper withTransceiver:transceiver];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v19 = [MEMORY[0x277CBEA90] dataWithHexString:dataCopy];

  v20 = SelectByNameCmd(v19);

  v113 = 0;
  v21 = [v16 transceiveAndCheckSW:v20 error:&v113];
  v22 = v113;
  if (v22)
  {
    v23 = v22;
    if (error)
    {
      v24 = v22;
      errorCopy = 0;
      *error = v23;
    }

    goto LABEL_88;
  }

  if (v21)
  {
    v89 = v20;
    v25 = [v21 base64EncodedStringWithOptions:0];
    [v18 setObject:v25 forKeyedSubscript:@"answerSelectApplication"];

    v88 = v21;
    v87 = [SpringwaterDecoder getCardIdFromSelectResponse:v21];
    asHexString = [v87 asHexString];
    [v17 setObject:asHexString forKeyedSubscript:@"cardId"];

    v86 = +[SpringwaterDecoder SelectRemoteTicketingCmd];
    v85 = [v16 transceiveAndCheckSW:? error:?];
    v27 = [v85 base64EncodedStringWithOptions:0];
    [v18 setObject:v27 forKeyedSubscript:@"answerSelectFileRT"];

    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:11];
    v112 = 0;
    v29 = [SpringwaterDecoder readPartnerRecords:v16 sfi:7 count:1 error:&v112];
    v30 = v112;
    v31 = v30;
    v90 = v29;
    if (v30)
    {
      v32 = ATLLogObject(v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 7;
        _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_ERROR, "Failed to read Environment File SFI %d", buf, 8u);
      }

      v29 = v90;
    }

    if (v29)
    {
      [v28 addObject:v29];
    }

    v111 = v31;
    v98 = [SpringwaterDecoder readPartnerRecords:v16 sfi:8 count:3 error:&v111];
    v33 = v111;

    if (v33)
    {
      v35 = ATLLogObject(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 8;
        _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "Failed to read Transaction History SFI %d", buf, 8u);
      }
    }

    if (v98)
    {
      [v28 addObject:?];
    }

    v110 = v33;
    v97 = [SpringwaterDecoder readPartnerRecords:v16 sfi:9 count:4 error:&v110];
    v36 = v110;

    if (v36)
    {
      v38 = ATLLogObject(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 9;
        _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_ERROR, "Failed to read Contracts File SFI %d", buf, 8u);
      }
    }

    if (v97)
    {
      [v28 addObject:?];
    }

    v109 = v36;
    v96 = [SpringwaterDecoder readPartnerRecords:v16 sfi:10 count:1 error:&v109];
    v39 = v109;

    if (v39)
    {
      v41 = ATLLogObject(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 10;
        _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v96)
    {
      [v28 addObject:?];
    }

    v108 = v39;
    v95 = [SpringwaterDecoder readPartnerRecords:v16 sfi:11 count:1 error:&v108];
    v42 = v108;

    if (v42)
    {
      v44 = ATLLogObject(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 11;
        _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v95)
    {
      [v28 addObject:?];
    }

    v107 = v42;
    v94 = [SpringwaterDecoder readPartnerRecords:v16 sfi:12 count:1 error:&v107];
    v45 = v107;

    if (v45)
    {
      v47 = ATLLogObject(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 12;
        _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v94)
    {
      [v28 addObject:?];
    }

    v106 = v45;
    v93 = [SpringwaterDecoder readPartnerRecords:v16 sfi:13 count:1 error:&v106];
    v48 = v106;

    if (v48)
    {
      v50 = ATLLogObject(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 13;
        _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v93)
    {
      [v28 addObject:?];
    }

    v105 = v48;
    v92 = [SpringwaterDecoder readPartnerRecords:v16 sfi:6 count:4 error:&v105];
    v51 = v105;

    if (v51)
    {
      v53 = ATLLogObject(v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 6;
        _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_ERROR, "Failed to read Contract Extentions File SFI %d", buf, 8u);
      }
    }

    if (v92)
    {
      [v28 addObject:?];
    }

    v104 = v51;
    v91 = [SpringwaterDecoder readPartnerRecords:v16 sfi:29 count:3 error:&v104];
    v54 = v104;

    if (v54)
    {
      v56 = ATLLogObject(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 29;
        _os_log_impl(&dword_22EEF5000, v56, OS_LOG_TYPE_ERROR, "Failed to read Special Events File SFI %d", buf, 8u);
      }
    }

    if (v91)
    {
      [v28 addObject:?];
    }

    v99 = v28;
    v103 = v54;
    v57 = [SpringwaterDecoder readPartnerRecords:v16 sfi:30 count:1 error:&v103];
    v58 = v103;

    if (v58)
    {
      v60 = ATLLogObject(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 30;
        _os_log_impl(&dword_22EEF5000, v60, OS_LOG_TYPE_ERROR, "Failed to read Best Contracts SFI %d", buf, 8u);
      }
    }

    if (v57)
    {
      [v99 addObject:v57];
    }

    v102 = v58;
    v61 = [SpringwaterDecoder readPartnerRecords:v16 sfi:25 count:1 error:&v102];
    v62 = v102;

    if (v62)
    {
      v64 = ATLLogObject(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v117 = 25;
        _os_log_impl(&dword_22EEF5000, v64, OS_LOG_TYPE_ERROR, "Failed to read All Counters SFI %d", buf, 8u);
      }
    }

    v84 = v57;
    if (v61)
    {
      [v99 addObject:v61];
    }

    [v18 setObject:v99 forKeyedSubscript:@"recordFiles"];
    v65 = v18;
    [v17 setObject:v18 forKeyedSubscript:@"cardBinaryrecord"];
    v114 = @"cardImage";
    v115 = v17;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v101 = v62;
    v67 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v66 options:1 error:&v101];
    v23 = v101;

    if (keyCopy)
    {
      v83 = v17;
      v100 = v23;
      v68 = keyCopy;
      errorCopy = [_TtC24AppletTranslationLibrary17OpaqueDataService serializedHPKEWithData:v67 publicKey:keyCopy scheme:schemeCopy error:&v100];
      v69 = v100;

      if (error)
      {
        v18 = v65;
        if (v69)
        {
          v70 = v69;
          *error = v69;
        }

        v23 = v69;
        keyCopy = v68;
        v17 = v83;
        goto LABEL_84;
      }

      v23 = v69;
      keyCopy = v68;
      v17 = v83;
    }

    else
    {
      errorCopy = v67;
    }

    v18 = v65;
LABEL_84:

    v21 = v88;
    v20 = v89;
    goto LABEL_88;
  }

  v71 = ATLLogObject(0);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v71, OS_LOG_TYPE_ERROR, "No response to SELECT received", buf, 2u);
  }

  v72 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No response to SELECT received"];
  v73 = v72;
  if (error)
  {
    v74 = *error;
    v75 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v76 = *MEMORY[0x277CCA7E8];
      v118[0] = *MEMORY[0x277CCA450];
      v118[1] = v76;
      v119[0] = v72;
      v119[1] = v74;
      v77 = MEMORY[0x277CBEAC0];
      v78 = v119;
      v79 = v118;
      v80 = 2;
    }

    else
    {
      v120 = *MEMORY[0x277CCA450];
      v121[0] = v72;
      v77 = MEMORY[0x277CBEAC0];
      v78 = v121;
      v79 = &v120;
      v80 = 1;
    }

    v81 = [v77 dictionaryWithObjects:v78 forKeys:v79 count:v80];
    *error = [v75 errorWithDomain:@"ATL" code:5 userInfo:v81];

    v21 = 0;
  }

  v23 = 0;
  errorCopy = 0;
LABEL_88:

  return errorCopy;
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

+ (id)calculateTransactionSN:(id)n withTimeStamp:(id)stamp withEventCode:(id)code withSP:(id)p withContractPointer:(id)pointer withDifferentiator:(id)differentiator
{
  differentiatorCopy = &unk_2843C67B8;
  if (differentiator)
  {
    differentiatorCopy = differentiator;
  }

  v15 = differentiatorCopy;
  differentiatorCopy2 = differentiator;
  pointerCopy = pointer;
  pCopy = p;
  codeCopy = code;
  stampCopy = stamp;
  nCopy = n;
  v22 = +[HashHelper hashHelper];
  v23 = [(HashHelper *)v22 addNumber:nCopy];

  v24 = [(HashHelper *)v23 addNumber:stampCopy];

  v25 = [(HashHelper *)v24 addNumber:codeCopy];

  v26 = [(HashHelper *)v25 addNumber:pCopy];

  v27 = [(HashHelper *)v26 addNumber:pointerCopy];

  v28 = [(HashHelper *)v27 addNumber:v15];

  getHash = [(HashHelper *)v28 getHash];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(getHash, "u32BE:", 0)}];

  return v30;
}

+ (id)calculateCommutePlanUniqueId:(id)id withExpiry:(id)expiry
{
  expiryCopy = expiry;
  idCopy = id;
  v8 = +[HashHelper hashHelper];
  v9 = [(HashHelper *)v8 addString:idCopy];

  v10 = [(HashHelper *)v9 addDateComponents:expiryCopy];

  getHash = [(HashHelper *)v10 getHash];

  asHexString = [getHash asHexString];

  return asHexString;
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

- (id)generateEndEventFromHCI
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  v3 = +[CalypsoDecoder sharedInstance];
  getHciArray = [v3 getHciArray];

  v5 = +[CalypsoDecoder sharedInstance];
  getHciArray2 = [v5 getHciArray];
  v7 = [getHciArray2 count];

  if (!v7)
  {
    v30 = ATLLogObject(v8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    v40 = 0;
    goto LABEL_27;
  }

  v9 = +[CalypsoDecoder sharedInstance];
  getAppletAID = [v9 getAppletAID];

  if (getAppletAID)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = getHciArray;
    v11 = getHciArray;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      do
      {
        v15 = 0;
        do
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v43 + 1) + 8 * v15);
          v17 = ATLLogObject(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v54 = v16;
            _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
          }

          ++v15;
        }

        while (v13 != v15);
        v12 = [v11 countByEnumeratingWithState:&v43 objects:v55 count:16];
        v13 = v12;
      }

      while (v12);
    }

    v18 = +[CalypsoDecoder sharedInstance];
    if ([v18 getErrorTransaction])
    {
      v19 = 0;
    }

    else
    {
      v19 = 64;
    }

    v20 = +[CalypsoDecoder sharedInstance];
    getErrorTransaction = [v20 getErrorTransaction];

    if (getErrorTransaction)
    {
      v23 = ATLLogObject(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = +[CalypsoDecoder sharedInstance];
        getErrorCode = [v24 getErrorCode];
        *buf = 138412290;
        v54 = getErrorCode;
        _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
      }
    }

    v26 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw = [v26 getTransactionDetailRaw];

    if (!getTransactionDetailRaw)
    {
      v28 = +[CalypsoDecoder sharedInstance];
      v29 = [MEMORY[0x277CBEA90] dataWithHexString:@"010000"];
      [v28 setTransactionDetailRaw:v29];
    }

    v52[0] = @"EndEvent";
    v51[0] = @"EventType";
    v51[1] = @"appletIdentifier";
    v30 = +[CalypsoDecoder sharedInstance];
    getAppletAID2 = [v30 getAppletAID];
    v52[1] = getAppletAID2;
    v52[2] = &unk_2843C67D0;
    v51[2] = @"Version";
    v51[3] = @"Interface";
    v52[3] = @"Contactless";
    v51[4] = @"didError";
    v32 = MEMORY[0x277CCABB0];
    v33 = +[CalypsoDecoder sharedInstance];
    v34 = [v32 numberWithBool:{objc_msgSend(v33, "getErrorTransaction")}];
    v52[4] = v34;
    v51[5] = @"result";
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v19];
    v52[5] = v35;
    v52[6] = &unk_2843C67E8;
    v51[6] = @"type";
    v51[7] = @"parsedInfo";
    v49 = @"Transaction";
    v47 = @"TypeDetailRaw";
    v36 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw2 = [v36 getTransactionDetailRaw];
    v48 = getTransactionDetailRaw2;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v50 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v52[7] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:8];

    getHciArray = v42;
LABEL_27:

    goto LABEL_29;
  }

  v40 = 0;
LABEL_29:

  return v40;
}

- (void)interpretTransactionEvent:(id)event
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy sfi] != 8 && objc_msgSend(eventCopy, "sfi") != 29)
  {
    goto LABEL_25;
  }

  content = [eventCopy content];
  v6 = 8 * [content length];

  if (v6 >= 0x35)
  {
    content2 = [eventCopy content];
    v9 = [IntercodeDecoder decodeEventEntry:content2];

    if (!v9)
    {
LABEL_21:

      goto LABEL_22;
    }

    v10 = [v9 objectForKeyedSubscript:@"EventCode"];
    if (!v10)
    {
LABEL_13:
      v21 = [v9 objectForKeyedSubscript:@"EventResult"];

      if (v21)
      {
        v22 = +[CalypsoDecoder sharedInstance];
        getErrorCode = [v22 getErrorCode];
        longLongValue = [getErrorCode longLongValue];

        if ((longLongValue - 32) >= 2 && (longLongValue - 131) >= 2)
        {
          v26 = +[CalypsoDecoder sharedInstance];
          [v26 setErrorTransaction:1];
        }

        v27 = ATLLogObject(v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = +[CalypsoDecoder sharedInstance];
          getErrorCode2 = [v28 getErrorCode];
          v37 = 138412290;
          selfCopy = getErrorCode2;
          _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "*** SpecialEvent written with ErrorCode = %@", &v37, 0xCu);
        }
      }

      goto LABEL_21;
    }

    v11 = [SpringwaterDecoder formatTransitDetailRaw:v10];
    if (v11)
    {
      v12 = +[CalypsoDecoder sharedInstance];
      getTransactionDetailRaw = [v12 getTransactionDetailRaw];
      if (!getTransactionDetailRaw)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = getTransactionDetailRaw;
      v15 = +[CalypsoDecoder sharedInstance];
      getTransactionDetailRaw2 = [v15 getTransactionDetailRaw];

      if (v11 != getTransactionDetailRaw2)
      {
        v12 = ATLLogObject(v17);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v18 = +[CalypsoDecoder sharedInstance];
          getTransactionDetailRaw3 = [v18 getTransactionDetailRaw];
          v37 = 138412546;
          selfCopy = getTransactionDetailRaw3;
          v39 = 2112;
          v40 = v11;
          _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEFAULT, "Inconsistent transaction details received during a single transaction %@ -> %@", &v37, 0x16u);
        }

        goto LABEL_11;
      }
    }

LABEL_12:
    v20 = +[CalypsoDecoder sharedInstance];
    [v20 setTransactionDetailRaw:v11];

    goto LABEL_13;
  }

LABEL_22:
  v30 = ATLLogObject(v7);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw4 = [v31 getTransactionDetailRaw];
    v33 = +[CalypsoDecoder sharedInstance];
    getErrorTransaction = [v33 getErrorTransaction];
    v35 = +[CalypsoDecoder sharedInstance];
    getErrorCode3 = [v35 getErrorCode];
    v37 = 138413058;
    selfCopy = self;
    v39 = 2112;
    v40 = getTransactionDetailRaw4;
    v41 = 1024;
    v42 = getErrorTransaction;
    v43 = 2112;
    v44 = getErrorCode3;
    _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEBUG, "*** (%@) transactionDetailRaw = %@, errorTransaction = %d, errorCode = %@", &v37, 0x26u);
  }

LABEL_25:
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v110 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v11 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v12 = SelectByNameCmd(v11);

  v103 = 0;
  v13 = [historyCopy transceiveAndCheckSW:v12 error:&v103];
  v14 = v103;
  v15 = v14;
  if (v13)
  {
    errorCopy = error;
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v102 = v15;
    v18 = [(SpringwaterDecoder *)self readAndDecodeContracts:historyCopy sfi:9 count:4 error:&v102];
    v19 = v102;

    if (v19)
    {
      if (errorCopy)
      {
        v20 = v19;
        v21 = 0;
        *errorCopy = v19;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      [v16 setObject:v18 forKeyedSubscript:@"ContractList"];
      v101 = 0;
      v23 = [SpringwaterDecoder readAndDecodeHistory:historyCopy sfi:8 count:10 error:&v101];
      v24 = v101;
      if (v24)
      {
        v19 = v24;
        v25 = v23;
        if (errorCopy)
        {
          v26 = v24;
          v21 = 0;
          *errorCopy = v19;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v27 = @"TransactionHistory";
        [v16 setObject:v23 forKeyedSubscript:@"TransactionHistory"];
        v84 = [(SpringwaterDecoder *)self parseHistory:v23 withContracts:v18];
        v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
        v100 = 0;
        v28 = [(SpringwaterDecoder *)self readAndDecodeContractList:historyCopy sfi:30 error:&v100];
        v29 = v100;
        v82 = v28;
        v83 = v23;
        if (v29)
        {
          v19 = v29;
          if (errorCopy)
          {
            v30 = v29;
            v21 = 0;
            *errorCopy = v19;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v77 = v17;
          v78 = v16;
          v79 = v13;
          v80 = v12;
          v81 = historyCopy;
          [v16 setObject:v28 forKeyedSubscript:@"BestContractList"];
          v31 = [SpringwaterDecoder getUnvalidatableContracts:v28];
          v32 = ATLLogObject(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v109 = v31;
            _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEBUG, "unValidatableContracts: %@", buf, 0xCu);
          }

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          obj = [v18 copy];
          v33 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
          v86 = v31;
          v90 = v33;
          if (v33)
          {
            v34 = 0;
            v89 = *v97;
            do
            {
              v35 = 0;
              do
              {
                if (*v97 != v89)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v96 + 1) + 8 * v35);
                ++v34;
                v37 = ATLLogObject(v33);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  LODWORD(v109) = v34;
                  _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_DEBUG, "contractPointerId %d", buf, 8u);
                }

                v39 = ATLLogObject(v38);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v40 = [v36 objectForKeyedSubscript:@"ContractBitmap"];
                  *buf = 138412290;
                  v109 = v40;
                  _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEBUG, "ContractBitmap %@", buf, 0xCu);
                }

                v42 = ATLLogObject(v41);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  v43 = [v36 objectForKeyedSubscript:@"ContractStatus"];
                  *buf = 138412290;
                  v109 = v43;
                  _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEBUG, "ContractStatus %@", buf, 0xCu);
                }

                v45 = ATLLogObject(v44);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  v46 = [v36 objectForKeyedSubscript:@"ContractTariff"];
                  *buf = 138412290;
                  v109 = v46;
                  _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_DEBUG, "ContractTariff %@", buf, 0xCu);
                }

                v48 = ATLLogObject(v47);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  v49 = [v36 objectForKeyedSubscript:@"ContractCounters"];
                  *buf = 138412290;
                  v109 = v49;
                  _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_DEBUG, "ContractCounters %@", buf, 0xCu);
                }

                v51 = ATLLogObject(v50);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  v52 = [v36 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  *buf = 138412290;
                  v109 = v52;
                  _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_DEBUG, "ContractValidityJourneysData %@", buf, 0xCu);
                }

                v53 = [v36 objectForKeyedSubscript:@"ContractStatus"];
                integerValue = [v53 integerValue];

                if (integerValue == 1 && ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v34], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", v55), v56 = objc_claimAutoreleasedReturnValue(), v56, v55, !v56))
                {
                  v57 = [v36 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  v58 = [v57 objectForKeyedSubscript:@"ContractCounterStructure"];

                  if ([v58 integerValue] == 12)
                  {
                    v59 = [v36 objectForKeyedSubscript:@"ContractCounters"];
                    [v59 objectForKeyedSubscript:@"CounterContractCount"];
                    v61 = v60 = v27;

                    [v36 objectForKeyedSubscript:@"CommutePlanIdentifier"];
                    v63 = v62 = v18;
                    v64 = [CalypsoDecoder amountDictionaryWithAmount:v61 withIdentifier:v63 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingIdentifierKey:@"BalanceIdentifier"];

                    v18 = v62;
                    [v87 addObject:v64];
                    [v62 removeObject:v36];

                    v27 = v60;
                    v31 = v86;
                  }
                }

                else
                {
                  v33 = [v18 removeObject:v36];
                }

                ++v35;
              }

              while (v90 != v35);
              v33 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
              v90 = v33;
            }

            while (v33);
          }

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v65 = v18;
          v66 = [v65 countByEnumeratingWithState:&v92 objects:v106 count:16];
          historyCopy = v81;
          v13 = v79;
          v17 = v77;
          if (v66)
          {
            v67 = v66;
            v68 = *v93;
            do
            {
              for (i = 0; i != v67; ++i)
              {
                if (*v93 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                [SpringwaterDecoder stripContract:*(*(&v92 + 1) + 8 * i)];
              }

              v67 = [v65 countByEnumeratingWithState:&v92 objects:v106 count:16];
            }

            while (v67);
          }

          [v77 setObject:v65 forKeyedSubscript:@"CommutePlans"];
          [v77 setObject:v87 forKeyedSubscript:@"Balances"];
          v91 = 0;
          v70 = [SpringwaterDecoder readAndDecodeEnvironment:v81 sfi:7 error:&v91];
          v71 = v91;
          v19 = v71;
          if (v71)
          {
            v12 = v80;
            if (errorCopy)
            {
              v72 = v71;
              v21 = 0;
              *errorCopy = v19;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v73 = [v70 objectForKeyedSubscript:@"EnvApplicationEndDate"];

            if (v73)
            {
              v74 = [v70 objectForKeyedSubscript:@"EnvApplicationEndDate"];
              v75 = [IntercodeDecoder getAbsoluteDateComponents:v74 withTime:0];
              [v77 setObject:v75 forKeyedSubscript:@"CardExpirationDate"];
            }

            v104[0] = @"State";
            v104[1] = v27;
            v105[0] = v77;
            v105[1] = v84;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
            v12 = v80;
          }

          v16 = v78;
        }

        v25 = v83;
      }
    }

    v15 = v19;
  }

  else if (error)
  {
    v22 = v14;
    v21 = 0;
    *error = v15;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)getAppletStateAndHistory:(id)history withError:(id *)error
{
  v4 = ATLLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Context version of getAppletStateAndHistory is not yet implemented for Springwater", v6, 2u);
  }

  return 0;
}

- (id)readAndDecodeContracts:(id)contracts sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  sfiCopy = sfi;
  v82[1] = *MEMORY[0x277D85DE8];
  contractsCopy = contracts;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy];
  v11 = v9;
  if (!countCopy)
  {
LABEL_42:
    v46 = v11;
    goto LABEL_58;
  }

  v12 = 0;
  v13 = 0x2818E8000uLL;
  *&v10 = 138412290;
  v62 = v10;
  v67 = v9;
  v68 = contractsCopy;
  v65 = sfiCopy;
  v66 = countCopy;
  while (1)
  {
    v14 = v12 + 1;
    v74 = 0;
    v15 = [v13 + 3392 readRecord:contractsCopy sfi:sfiCopy index:(v12 + 1) recLength:0 error:{&v74, v62}];
    v16 = v74;
    v17 = v16;
    if (!v16)
    {
      break;
    }

    if ([v16 code] != 9)
    {
      if (error)
      {
        v47 = v17;
        *error = v17;
      }

LABEL_56:

      goto LABEL_57;
    }

    v18 = ATLLogObject(9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v76) = v12 + 1;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_DEFAULT, "Contract record %d not found (unexpected)", buf, 8u);
    }

LABEL_41:

    v12 = v14;
    if (countCopy == v14)
    {
      goto LABEL_42;
    }
  }

  v19 = [v15 length];
  if (v19 != 29)
  {
    v48 = ATLLogObject(v19);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data", buf, 2u);
    }

    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data"];
    v50 = v49;
    if (error)
    {
      v51 = *error;
      v52 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v53 = *MEMORY[0x277CCA7E8];
        v79[0] = *MEMORY[0x277CCA450];
        v79[1] = v53;
        v80[0] = v49;
        v80[1] = v51;
        v54 = MEMORY[0x277CBEAC0];
        v55 = v80;
        v56 = v79;
        v57 = 2;
      }

      else
      {
        v81 = *MEMORY[0x277CCA450];
        v82[0] = v49;
        v54 = MEMORY[0x277CBEAC0];
        v55 = v82;
        v56 = &v81;
        v57 = 1;
      }

      v60 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:v57];
      *error = [v52 errorWithDomain:@"ATL" code:8 userInfo:v60];
    }

    goto LABEL_56;
  }

  v17 = [v13 + 3392 decodeContractStructureFF:v15];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:(v12 + 1)];
  [v17 setObject:v20 forKeyedSubscript:@"ContractPointerNumber"];

  v21 = [v17 objectForKeyedSubscript:@"ContractValidityJourneysData"];
  v18 = v21;
  if (!v21)
  {
    v25 = ATLLogObject(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v76) = v12 + 1;
      v27 = v25;
      v28 = "No validityJourneysData provided for contract %d";
LABEL_16:
      _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 8u);
    }

LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  v22 = [v21 valueForKey:@"ContractCounterStructure"];
  if (!v22)
  {
    v25 = ATLLogObject(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v76) = v12 + 1;
      v27 = v25;
      v28 = "No counterStructure provided for contract %d";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v23 = v22;
  integerValue = [v22 integerValue];
  v73 = 0;
  v25 = [(SpringwaterDecoder *)self readAndDecodeCounter:contractsCopy sfi:(v12 + 10) recNum:1 counterStructure:integerValue error:&v73];
  v26 = v73;
  if (!v26)
  {
    [v17 setObject:v25 forKeyedSubscript:@"ContractCounters"];
LABEL_18:

    v29 = [v17 objectForKeyedSubscript:@"ContractValidityStartDate"];
    v30 = [v17 objectForKeyedSubscript:@"ContractValidityStartTime"];
    v31 = [v17 objectForKeyedSubscript:@"ContractValidityEndDate"];
    v72 = [v17 objectForKeyedSubscript:@"ContractValidityEndTime"];
    v32 = ATLLogObject(v72);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v76 = v29;
      v77 = 2112;
      v78 = v30;
      _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEBUG, "Contract Start Date/Time: %@ / %@", buf, 0x16u);
    }

    v34 = ATLLogObject(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v76 = v31;
      v77 = 2112;
      v78 = v72;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEBUG, "Contract End Date/Time: %@ / %@", buf, 0x16u);
    }

    v70 = v23;
    v71 = v15;
    v69 = v31;
    if ([v23 integerValue] == 12)
    {
      v35 = v29;
      v36 = v30;
      v37 = [(IntercodeDecoder *)SpringwaterDecoder getAbsoluteDateComponents:v29 withTime:v30];
      v38 = [(IntercodeDecoder *)SpringwaterDecoder getAbsoluteDateComponents:v31 withTime:v72];
    }

    else if ([v23 integerValue] == 3)
    {
      v39 = [v17 objectForKeyedSubscript:@"ContractCounters"];
      v40 = [v39 objectForKeyedSubscript:@"CounterCounterValidityEndDate"];

      if ([v40 integerValue])
      {
        v38 = [IntercodeDecoder getAbsoluteDateComponentsWithDefaultMinutes:v40 withTime:0 withDefaultMinutes:&unk_2843C6800];
        v41 = ATLLogObject(v38);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = v62;
          v76 = v38;
          _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEBUG, "Overriding Contract Validity End from Counter: %@", buf, 0xCu);
        }
      }

      else
      {
        v41 = ATLLogObject(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = v62;
          v76 = 0;
          _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEBUG, "Contract Validity End from Counter not yet set: %@", buf, 0xCu);
        }

        v38 = 0;
      }

      if (v29)
      {
        v37 = [IntercodeDecoder getAbsoluteDateComponentsWithDefaultMinutes:v29 withTime:v30 withDefaultMinutes:&unk_2843C6818];
      }

      else
      {
        v37 = 0;
      }

      v36 = v30;
      v35 = v29;
    }

    else
    {
      v35 = v29;
      v36 = v30;
      v37 = [IntercodeDecoder getAbsoluteDateComponentsWithDefaultMinutes:v29 withTime:v30 withDefaultMinutes:&unk_2843C6818];
      v38 = [IntercodeDecoder getAbsoluteDateComponentsWithDefaultMinutes:v31 withTime:v72 withDefaultMinutes:&unk_2843C6800];
    }

    v42 = [v17 objectForKeyedSubscript:@"ContractTariff"];
    v43 = [v17 objectForKeyedSubscript:@"ContractValidityZones"];
    v44 = [SpringwaterDecoder formatCommutePlanIdentifier:v18 withTariffCode:v42 withZoneList:v43];

    [v17 setObject:v44 forKeyedSubscript:@"CommutePlanIdentifier"];
    if (v37)
    {
      [v17 setObject:v37 forKeyedSubscript:@"CommutePlanValidityStartDate"];
    }

    v11 = v67;
    if (v38)
    {
      [v17 setObject:v38 forKeyedSubscript:@"CommutePlanValidityEndDate"];
      v45 = [SpringwaterDecoder calculateCommutePlanUniqueId:v44 withExpiry:v38];
      [v17 setObject:v45 forKeyedSubscript:@"CommutePlanUniqueIdentifier"];
    }

    [v67 addObject:v17];

    contractsCopy = v68;
    sfiCopy = v65;
    countCopy = v66;
    v13 = 0x2818E8000;
    v15 = v71;
    goto LABEL_41;
  }

  v58 = v26;
  if (error)
  {
    v59 = v26;
    *error = v58;
  }

LABEL_57:
  v46 = 0;
LABEL_58:

  return v46;
}

+ (id)getUnvalidatableContracts:(id)contracts
{
  v25 = *MEMORY[0x277D85DE8];
  contractsCopy = contracts;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = contractsCopy;
  v5 = [contractsCopy objectForKeyedSubscript:@"BestContractList"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = ATLLogObject(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEBUG, "contract -> %@", buf, 0xCu);
        }

        v12 = [v10 objectForKeyedSubscript:@"BestContractPriority"];
        integerValue = [v12 integerValue];

        if ((integerValue & 0xFCu) >= 0xCuLL)
        {
          v14 = [v10 objectForKeyedSubscript:@"BestContractPriority"];
          v15 = [v10 objectForKeyedSubscript:@"BestContractPointer"];
          [dictionary setObject:v14 forKeyedSubscript:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v7 = v6;
    }

    while (v6);
  }

  return dictionary;
}

+ (void)stripContract:(id)contract
{
  contractCopy = contract;
  [contractCopy removeObjectForKey:@"ContractBitmap"];
  [contractCopy removeObjectForKey:@"ContractTariff"];
  [contractCopy removeObjectForKey:@"ContractPointerNumber"];
  [contractCopy removeObjectForKey:@"ContractValidityStartDate"];
  [contractCopy removeObjectForKey:@"ContractValidityEndDate"];
  [contractCopy removeObjectForKey:@"ContractValidityStartTime"];
  [contractCopy removeObjectForKey:@"ContractValidityEndTime"];
  [contractCopy removeObjectForKey:@"ContractValidityInfoBitmap"];
}

+ (id)readAndDecodeHistory:(id)history sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  sfiCopy = sfi;
  v47[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy];
  v10 = 0;
  if (!countCopy)
  {
LABEL_14:
    v22 = v38;
    v23 = v38;
    goto LABEL_26;
  }

  v11 = 0;
  while (1)
  {
    v12 = v10;
    ++v11;
    v39 = v10;
    v13 = [self readRecord:historyCopy sfi:sfiCopy index:v11 recLength:0 error:&v39];
    v10 = v39;

    if (!v10)
    {
      break;
    }

    if ([v10 code] != 9)
    {
      v22 = v38;
      if (error)
      {
        v24 = v10;
        *error = v10;
      }

      goto LABEL_25;
    }

LABEL_13:

    if (countCopy <= v11)
    {
      goto LABEL_14;
    }
  }

  v14 = [v13 length];
  if (v14 == 29)
  {
    v15 = [IntercodeDecoder decodeEventEntry:v13];
    v16 = [v15 objectForKeyedSubscript:@"EventContractPointer"];
    unsignedIntValue = [v16 unsignedIntValue];

    if ((unsignedIntValue - 5) > 0xFFFFFFFB)
    {
      v20 = [v15 objectForKeyedSubscript:@"EventCode"];
      v21 = [SpringwaterDecoder getInternalEnRouteStatus:v20];
      [v15 setObject:v21 forKeyedSubscript:@"InternalEnRouteStatus"];

      [v38 addObject:v15];
    }

    else
    {
      v19 = ATLLogObject(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v41 = unsignedIntValue;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEFAULT, "ContractPointer %d out of expected range [1,4] in %@. Skipping.", buf, 0x12u);
      }
    }

    goto LABEL_13;
  }

  v25 = ATLLogObject(v14);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data", buf, 2u);
  }

  v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data"];
  v27 = v26;
  v22 = v38;
  if (error)
  {
    v28 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v30 = *MEMORY[0x277CCA7E8];
      v44[0] = *MEMORY[0x277CCA450];
      v44[1] = v30;
      v45[0] = v26;
      v45[1] = v28;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v45;
      v33 = v44;
      v34 = 2;
    }

    else
    {
      v46 = *MEMORY[0x277CCA450];
      v47[0] = v26;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v47;
      v33 = &v46;
      v34 = 1;
    }

    v35 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
    *error = [v29 errorWithDomain:@"ATL" code:8 userInfo:v35];
  }

LABEL_25:
  v23 = 0;
LABEL_26:

  return v23;
}

- (id)parseHistory:(id)history withContracts:(id)contracts
{
  v72[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  contractsCopy = contracts;
  v69 = historyCopy;
  v6 = [historyCopy count];
  v67 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v70 = v6;
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
      v9 = [v69 objectAtIndexedSubscript:v7];
      v10 = [v9 objectForKeyedSubscript:@"EventDateStamp"];
      v11 = [v9 objectForKeyedSubscript:@"EventTimeStamp"];
      v12 = [v9 objectForKeyedSubscript:@"EventCode"];
      v13 = [v9 objectForKeyedSubscript:@"EventServiceProvider"];
      v14 = [v9 objectForKeyedSubscript:@"EventContractPointer"];
      [v9 objectForKeyedSubscript:@"EventSerialNumber"];
      v16 = v15 = v7;
      v17 = [SpringwaterDecoder calculateTransactionSN:v10 withTimeStamp:v11 withEventCode:v12 withSP:v13 withContractPointer:v14 withDifferentiator:v16];
      [v8 setObject:v17 forKeyedSubscript:@"SerialNumber"];

      v18 = [v9 objectForKeyedSubscript:@"EventCode"];
      v19 = [SpringwaterDecoder getInternalEnRouteStatus:v18];
      [v8 setObject:v19 forKeyedSubscript:@"InternalEnRouteStatus"];

      v20 = [v9 objectForKeyedSubscript:@"EventCode"];
      v21 = [SpringwaterDecoder getTransitModality:v20];
      [v8 setObject:v21 forKeyedSubscript:@"TypeDetail"];

      v22 = [v9 objectForKeyedSubscript:@"EventCode"];
      v23 = [SpringwaterDecoder formatTransitDetailRaw:v22];
      [v8 setObject:v23 forKeyedSubscript:@"TypeDetailRaw"];

      v24 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v7 = v15 + 1;

      v25 = 1;
      if (v24 == @"CVPEnter" && v7 < v70)
      {
        v26 = [v69 objectAtIndexedSubscript:v7];
        v27 = [v26 objectForKeyedSubscript:@"EventCode"];
        unsignedLongValue = [v27 unsignedLongValue];

        v29 = unsignedLongValue >> 4;
        v25 = 1;
        if (v29 != 1 && v29 != 4)
        {
          v30 = [MEMORY[0x277CBEA90] dataWithBytes:&CalypsoCardReadBytes length:3];
          [v8 setObject:v30 forKeyedSubscript:@"TypeDetailRaw"];

          v25 = 0;
        }
      }

      v31 = [v8 objectForKeyedSubscript:@"TypeDetailRaw"];
      v32 = [v31 isEqualToBytes:&CalypsoCardReadBytes length:3];

      if (v32)
      {
        [v8 setObject:@"CardRead" forKeyedSubscript:@"TypeDetail"];
        v25 = 0;
      }

      [v8 setObject:&unk_2843C6830 forKeyedSubscript:@"CityCode"];
      v33 = [v9 objectForKeyedSubscript:@"EventLocationId"];

      if (!v33)
      {
        goto LABEL_22;
      }

      v34 = [v9 objectForKeyedSubscript:@"EventLocationId"];
      integerValue = [v34 integerValue];

      v36 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      if (v36 == @"Enter")
      {
        v38 = 1;
      }

      else
      {
        v37 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
        v38 = v37 == @"CVPEnter";
      }

      if (v38 && integerValue)
      {
        v39 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
        [v8 setObject:v39 forKeyedSubscript:@"StartStation"];
      }

      v40 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v41 = v40;
      if (v40 == @"Exit")
      {

        if (!integerValue)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v42 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];

        if (v42 != @"CVPExit" || !integerValue)
        {
          goto LABEL_22;
        }
      }

      v43 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
      [v8 setObject:v43 forKeyedSubscript:@"EndStation"];

LABEL_22:
      v44 = [v9 objectForKeyedSubscript:@"EventDateStamp"];
      v45 = [v9 objectForKeyedSubscript:@"EventTimeStamp"];
      v46 = [IntercodeDecoder getAbsoluteDateComponents:v44 withTime:v45];
      [v8 setObject:v46 forKeyedSubscript:@"TransactionTime"];

      v47 = [v9 objectForKeyedSubscript:@"EventDataDateFirstStamp"];

      if (v47)
      {
        v48 = [v9 objectForKeyedSubscript:@"EventDataDateFirstStamp"];
        v49 = [v9 objectForKeyedSubscript:@"EventDataTimeFirstStamp"];
        v50 = [IntercodeDecoder getAbsoluteDateComponents:v48 withTime:v49];
        [v8 setObject:v50 forKeyedSubscript:@"FirstStampTime"];
      }

      v51 = [v9 objectForKeyedSubscript:@"EventContractPointer"];
      v52 = [v51 unsignedIntValue] - 1;

      v53 = [contractsCopy objectAtIndex:v52];
      v54 = [v53 objectForKeyedSubscript:@"ContractValidityJourneysData"];
      v55 = [v54 objectForKeyedSubscript:@"ContractCounterStructure"];
      unsignedIntValue = [v55 unsignedIntValue];

      if (unsignedIntValue == 12)
      {
        v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v25];
        v58 = [v53 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v59 = [CalypsoDecoder amountDictionaryWithAmount:v57 withIdentifier:v58 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent" usingIdentifierKey:@"AmountIdentifier"];

        v72[0] = v59;
        v60 = v72;
        v61 = @"Amounts";
      }

      else
      {
        v62 = [v53 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v63 = [v53 objectForKeyedSubscript:@"CommutePlanValidityEndDate"];
        v64 = [v53 objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
        v59 = [SpringwaterDecoder commutePlanWithIdAndExpiry:v62 withExpiry:v63 withUniqueId:v64];

        v7 = v15 + 1;
        v71 = v59;
        v60 = &v71;
        v61 = @"CommutePlans";
      }

      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
      [v8 setObject:v65 forKeyedSubscript:v61];

      [v67 addObject:v8];
    }

    while (v70 != v7);
  }

  return v67;
}

+ (id)getTransitModality:(id)modality
{
  unsignedLongValue = [modality unsignedLongValue];
  if (unsignedLongValue == 89)
  {
    return @"TransitOther";
  }

  v5 = unsignedLongValue >> 4;
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      return @"TransitBus";
    }

    if (v5 == 3)
    {
      return @"TransitMetro";
    }
  }

  else
  {
    switch(v5)
    {
      case 4uLL:
        return @"TransitLightRail";
      case 5uLL:
        return @"TransitTrain";
      case 0xEuLL:
        return @"TransitOther";
    }
  }

  return @"Transit";
}

+ (id)formatTransitDetailRaw:(id)raw
{
  unsignedLongValue = [raw unsignedLongValue];
  v4 = (unsignedLongValue & 0xF) - 2;
  if (v4 < 0xA && ((0x233u >> v4) & 1) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 4;
  }

  else
  {
    v8 = unsignedLongValue >> 4;
    if (v8 == 14)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    if (v8 == 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v8 == 5)
    {
      v11 = 3;
    }

    else
    {
      v11 = v9;
    }

    if (v8 == 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v10;
    }

    if (v8 == 4)
    {
      v13 = 3;
    }

    else
    {
      v13 = v11;
    }

    if (v8 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v8 == 3;
    }

    v7 = 1;
    if ((unsignedLongValue >> 4) <= 3uLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v12;
    }

    if ((unsignedLongValue >> 4) <= 3uLL)
    {
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  v15 = [MEMORY[0x277CBEB28] dataWithCapacity:3];
  [v15 appendByte:v7];
  [v15 appendByte:v6];
  [v15 appendByte:v5];

  return v15;
}

+ (id)getInternalEnRouteStatus:(id)status
{
  v3 = ([status unsignedLongValue] & 0xF) - 1;
  if (v3 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_278874E00 + v3);
  }
}

- (id)readAndDecodeContractList:(id)list sfi:(unsigned __int8)sfi error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v6 = [SpringwaterDecoder readRecord:list sfi:sfi index:1 recLength:0 error:&v25];
  v7 = v25;
  v8 = v7;
  if (v7 && [v7 code] != 9)
  {
    if (error)
    {
      v21 = v8;
      v10 = 0;
      *error = v8;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = [v6 length];
    if (v9 == 29)
    {
      if (v6)
      {
        v10 = [(IntercodeDecoder *)SpringwaterDecoder decodeContractList:v6];
        goto LABEL_17;
      }
    }

    else
    {
      v11 = ATLLogObject(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed to decode Springwater record data", v24, 2u);
      }

      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Springwater record data"];
      v13 = v12;
      if (error)
      {
        v14 = *error;
        v15 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v16 = *MEMORY[0x277CCA7E8];
          v26[0] = *MEMORY[0x277CCA450];
          v26[1] = v16;
          v27[0] = v12;
          v27[1] = v14;
          v17 = MEMORY[0x277CBEAC0];
          v18 = v27;
          v19 = v26;
          v20 = 2;
        }

        else
        {
          v28 = *MEMORY[0x277CCA450];
          v29[0] = v12;
          v17 = MEMORY[0x277CBEAC0];
          v18 = v29;
          v19 = &v28;
          v20 = 1;
        }

        v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
        *error = [v15 errorWithDomain:@"ATL" code:8 userInfo:v22];
      }
    }
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (id)readAndDecodeCounter:(id)counter sfi:(unsigned __int8)sfi recNum:(unsigned __int8)num counterStructure:(unsigned __int8)structure error:(id *)error
{
  structureCopy = structure;
  numCopy = num;
  sfiCopy = sfi;
  v43 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v11 = [SpringwaterDecoder readRecord:counter sfi:sfi index:num recLength:0 error:&v34];
  v12 = v34;
  v13 = v12;
  if (v12)
  {
    if ([v12 code] == 9)
    {
      v14 = ATLLogObject(9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v40 = sfiCopy;
        v41 = 1024;
        v42 = numCopy;
        _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "Counter Structure Record not found: SFI 0x%02X Record 0x%02X", buf, 0xEu);
      }
    }

    else if (error)
    {
      v19 = v13;
      v20 = 0;
      *error = v13;
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v15 = [v11 length];
  if (v15 != 29)
  {
    v21 = ATLLogObject(v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data (unexpected length)", buf, 2u);
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data (unexpected length)"];
    v23 = v22;
    if (error)
    {
      v24 = *error;
      v25 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v26 = *MEMORY[0x277CCA7E8];
        v35[0] = *MEMORY[0x277CCA450];
        v35[1] = v26;
        v36[0] = v22;
        v36[1] = v24;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v36;
        v29 = v35;
        v30 = 2;
      }

      else
      {
        v37 = *MEMORY[0x277CCA450];
        v38 = v22;
        v27 = MEMORY[0x277CBEAC0];
        v28 = &v38;
        v29 = &v37;
        v30 = 1;
      }

      v31 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
      *error = [v25 errorWithDomain:@"ATL" code:8 userInfo:v31];
    }

LABEL_22:
    v20 = 0;
    goto LABEL_29;
  }

  if (!v11)
  {
    v16 = 0;
LABEL_27:
    v18 = 0;
    goto LABEL_28;
  }

  v16 = [v11 subdataWithOffset:0 length:{objc_msgSend(v11, "length")}];

  if (structureCopy == 12)
  {
    v18 = [IntercodeDecoder decodeCounterStructure0C:v16];
    goto LABEL_28;
  }

  if (structureCopy != 3)
  {
    v32 = ATLLogObject(v17);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v40 = structureCopy;
      _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEFAULT, "Unexpected counter structure %u", buf, 8u);
    }

    goto LABEL_27;
  }

  v18 = [IntercodeDecoder decodeCounterStructure03:v16];
LABEL_28:
  v20 = v18;
  v11 = v16;
LABEL_29:

  return v20;
}

+ (id)readAndDecodeEnvironment:(id)environment sfi:(unsigned __int8)sfi error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v6 = [self readRecord:environment sfi:sfi index:1 recLength:0 error:&v25];
  v7 = v25;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
      goto LABEL_15;
    }
  }

  else
  {
    v11 = [v6 length];
    if (v11 == 29)
    {
      v10 = [IntercodeDecoder decodeEnvironmentData:v6];
      goto LABEL_15;
    }

    v12 = ATLLogObject(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Failed to decode Atlas record data (unexpected length)", v24, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Atlas record data (unexpected length)"];
    v14 = v13;
    if (error)
    {
      v15 = *error;
      v16 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v17 = *MEMORY[0x277CCA7E8];
        v26[0] = *MEMORY[0x277CCA450];
        v26[1] = v17;
        v27[0] = v13;
        v27[1] = v15;
        v18 = MEMORY[0x277CBEAC0];
        v19 = v27;
        v20 = v26;
        v21 = 2;
      }

      else
      {
        v28 = *MEMORY[0x277CCA450];
        v29[0] = v13;
        v18 = MEMORY[0x277CBEAC0];
        v19 = v29;
        v20 = &v28;
        v21 = 1;
      }

      v22 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
      *error = [v16 errorWithDomain:@"ATL" code:8 userInfo:v22];
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

+ (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index recLength:(unsigned __int8)length error:(id *)error
{
  sfiCopy = sfi;
  v54[1] = *MEMORY[0x277D85DE8];
  if (sfi < 0x1Fu)
  {
    indexCopy = index;
    v39 = -19968;
    indexCopy2 = index;
    v41 = (8 * sfi) | 4;
    lengthCopy = length;
    v38 = 0;
    v20 = [record transceiveBytesAndCheckSW:&v39 length:5 inArray:&unk_2843C7358 keepingSW:1 error:&v38];
    v21 = v38;
    v11 = v21;
    if (v21)
    {
      if (error)
      {
        v22 = v21;
        v23 = 0;
        *error = v11;
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v24 = [v20 u16BE:{objc_msgSend(v20, "length") - 2}];
      if (v24 != 27267)
      {
        v23 = [v20 subdataWithOffset:0 length:{objc_msgSend(v20, "length") - 2}];
        goto LABEL_24;
      }

      v25 = ATLLogObject(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v48 = sfiCopy;
        v49 = 1024;
        v50 = indexCopy;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Warning: SFI 0x%02X Record 0x%02X not found", buf, 0xEu);
      }

      indexCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Warning: SFI 0x%02X Record 0x%02X not found", sfiCopy, indexCopy];
      v27 = indexCopy;
      if (error)
      {
        v28 = *error;
        v29 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v30 = *MEMORY[0x277CCA7E8];
          v43[0] = *MEMORY[0x277CCA450];
          v43[1] = v30;
          v44[0] = indexCopy;
          v44[1] = v28;
          v31 = MEMORY[0x277CBEAC0];
          v32 = v44;
          v33 = v43;
          v34 = 2;
        }

        else
        {
          v45 = *MEMORY[0x277CCA450];
          v46 = indexCopy;
          v31 = MEMORY[0x277CBEAC0];
          v32 = &v46;
          v33 = &v45;
          v34 = 1;
        }

        v36 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
        *error = [v29 errorWithDomain:@"ATL" code:9 userInfo:v36];
      }
    }

    v23 = 0;
    goto LABEL_24;
  }

  v9 = ATLLogObject(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v48 = sfiCopy;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Invalid SFI for read record 0x%X", buf, 8u);
  }

  sfiCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid SFI for read record 0x%X", sfiCopy];
  v11 = sfiCopy;
  if (error)
  {
    v12 = *error;
    v13 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v51[0] = *MEMORY[0x277CCA450];
      v51[1] = v14;
      v52[0] = sfiCopy;
      v52[1] = v12;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v52;
      v17 = v51;
      v18 = 2;
    }

    else
    {
      v53 = *MEMORY[0x277CCA450];
      v54[0] = sfiCopy;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v54;
      v17 = &v53;
      v18 = 1;
    }

    v35 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    *error = [v13 errorWithDomain:@"ATL" code:6 userInfo:v35];
  }

  v23 = 0;
LABEL_25:

  return v23;
}

+ (id)readPartnerRecords:(id)records sfi:(unsigned __int8)sfi count:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  sfiCopy = sfi;
  v26[1] = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy];
  if (countCopy)
  {
    errorCopy = error;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12;
      ++v13;
      v22 = v12;
      sfiCopy = [self readRecord:recordsCopy sfi:sfiCopy index:v13 recLength:0 error:&v22];
      v12 = v22;

      if (v12)
      {
        if ([v12 code] != 9)
        {
          break;
        }
      }

      if (sfiCopy)
      {
        v25 = @"record";
        v16 = [sfiCopy base64EncodedStringWithOptions:0];
        v26[0] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

        [v11 addObject:v17];
      }

      if (countCopy <= v13)
      {
        goto LABEL_10;
      }
    }

    if (errorCopy)
    {
      v20 = v12;
      v18 = 0;
      *errorCopy = v12;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v12 = 0;
LABEL_10:
    sfiCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", sfiCopy];
    v23[0] = @"sfi";
    v23[1] = @"recordData";
    v24[0] = sfiCopy;
    v24[1] = v11;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  return v18;
}

+ (id)getCardIdFromSelectResponse:(id)response
{
  responseCopy = response;
  v13[0] = [responseCopy bytes];
  v4 = [responseCopy length];

  v13[1] = v4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = DERFindItem(v13, 0xC000000000000007, &v10);
  v7 = v6;
  v8 = 0;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:{v12, v5}];
  }

  return v8;
}

@end