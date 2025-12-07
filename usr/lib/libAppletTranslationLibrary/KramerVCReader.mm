@interface KramerVCReader
+ (id)decodeCyclicLogEntry:(id)entry withRecordIndex:(unsigned __int8)index;
+ (id)decodeDirectory:(id)directory;
+ (id)decodeIPEHeader:(id)header;
+ (id)decodeIPETyp16:(id)typ16 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp22Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp23Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeTransientTicketIfr1:(id)ifr1 withIfr:(id)ifr withBitmap:(id)bitmap withRecordOffset:(id)offset;
+ (id)decodeVGHeader:(id)header;
+ (id)decodeVGTyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records;
+ (id)decodeVGTyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records;
+ (id)decodeVGTyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records;
+ (id)deriveWalletData:(id)data withSector:(unsigned __int8)sector withValueGroup:(id)group;
+ (id)getBestExpiry:(id)expiry withLatestValueGroup:(id)group;
+ (id)getCommutePlanIdentifier:(id)identifier;
+ (id)getCommutePlanIdentifier:(id)identifier withTyp:(id)typ withPtyp:(id)ptyp withCpicc:(id)cpicc withPassDuration:(id)duration withPromotionCode:(id)code withConcessionaryClass:(id)class withEntitlementCode:(id)self0 withRouteCode:(id)self1 withValidAtOrFrom:(id)self2 withValidTo:(id)self3;
+ (id)getCommutePlanUniqueId:(id)id withSector:(id)sector;
+ (id)getIPELabelDetails:(id)details withError:(id *)error;
+ (id)getLatestValueGroup:(id)group;
+ (id)getLogDirectoryEntry:(id)entry;
+ (id)getTopupCredits:(id)credits withIpeId:(unsigned __int16)id;
+ (id)processSectorChain:(id)chain forIPE:(unsigned __int8)e;
+ (id)readCardFromVC:(id)c forCity:(id)city withError:(id *)error;
+ (id)readCyclicLogFromVC:(id)c forCity:(id)city withError:(id *)error;
+ (id)readIPEFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withDirectoryDetails:(id)details withError:(id *)error;
+ (id)readVGFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withError:(id *)error;
@end

@implementation KramerVCReader

+ (id)readCardFromVC:(id)c forCity:(id)city withError:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  cityCopy = city;
  v70 = 0;
  v61 = cCopy;
  v9 = [MifareUtils getMcmDataDal:19215 withTransceiver:cCopy withError:&v70];
  v10 = v70;
  v11 = [v9 length];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    v13 = ATLLogObject(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "No DAL data for Directory File", buf, 2u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for Directory File"];
    v15 = MEMORY[0x277CCA9B8];
    v71 = *MEMORY[0x277CCA450];
    v72[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    v10 = [v15 errorWithDomain:@"ATL" code:3 userInfo:v16];
  }

  if (v10)
  {
    if (error)
    {
      v17 = v10;
      v18 = 0;
      *error = v10;
      goto LABEL_35;
    }

LABEL_34:
    v18 = 0;
    goto LABEL_35;
  }

  if (*[v9 bytes] != 8448)
  {
    v10 = 0;
    if (error)
    {
      v18 = 0;
      *error = 0;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v58 = cityCopy;
  v19 = 0x277CBE000uLL;
  v57 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v60 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v59 = v9;
  do
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"bytes") + 5 * v21 + 2, 5}];
    if ([v23 isAll00])
    {
      v24 = [*(v19 + 2872) dictionaryWithCapacity:1];
      [v63 addObject:v24];

      ++v21;
    }

    else
    {
      v68 = v22;
      v25 = [KramerVCReader getIPELabelDetails:v23 withError:&v68];
      v26 = v68;

      v27 = [v25 objectForKeyedSubscript:@"IPEType"];
      v28 = [KramerVCReader processSectorChain:v9 forIPE:v20];
      if ([v28 count])
      {
        lastObject = [v28 lastObject];
        v30 = [lastObject unsignedIntValue] == 13;

        v31 = [MEMORY[0x277CCABB0] numberWithBool:v30];
        [v25 setObject:v31 forKeyedSubscript:@"IPEBlocked"];

        [v25 setObject:v28 forKeyedSubscript:@"IPESectorChain"];
      }

      ++v21;
      v64 = v27;
      unsignedCharValue = [v27 unsignedCharValue];
      v67 = v26;
      v33 = [KramerVCReader readIPEFromVC:v61 withStorageFile:v21 withTyp:unsignedCharValue withSectorChain:v28 withDirectoryDetails:v25 withError:&v67];
      v34 = v67;

      [v25 addEntriesFromDictionary:v33];
      v35 = [v25 objectForKeyedSubscript:@"IPEValueGroupFlag"];
      unsignedIntValue = [v35 unsignedIntValue];

      if (unsignedIntValue)
      {
        v37 = v28;
        v38 = [v25 objectForKeyedSubscript:@"OverflowFlag"];
        unsignedIntValue2 = [v38 unsignedIntValue];

        if (unsignedIntValue2 == 1)
        {
          v40 = [v37 subarrayWithRange:{1, objc_msgSend(v37, "count")}];

          v37 = v40;
          v41 = 1;
        }

        else
        {
          v41 = 0;
        }

        if ([v37 count])
        {
          v42 = [v37 objectAtIndex:v41];
          unsignedCharValue2 = [v42 unsignedCharValue];

          if (unsignedCharValue2 <= 0xC)
          {
            unsignedCharValue3 = [v64 unsignedCharValue];
            v66 = v34;
            v45 = [KramerVCReader readVGFromVC:v61 withStorageFile:unsignedCharValue2 withTyp:unsignedCharValue3 withSectorChain:v37 withError:&v66];
            v46 = v66;

            [v25 addEntriesFromDictionary:v45];
            v34 = v46;
          }
        }

        v62 = v34;
      }

      else
      {
        v62 = v34;
      }

      v47 = v19;
      v48 = [*(v19 + 2872) dictionaryWithCapacity:10];
      v49 = [KramerVCReader getLatestValueGroup:v25];
      [v25 setObject:v49 forKeyedSubscript:@"LatestValueGroup"];
      v50 = [KramerVCReader getTopupCredits:v25 withIpeId:v21];
      if (v50)
      {
        [v25 setObject:v50 forKeyedSubscript:@"VGTopups"];
      }

      v51 = [KramerVCReader deriveWalletData:v25 withSector:v20 withValueGroup:v49];
      [v48 addEntriesFromDictionary:v51];
      [v25 addEntriesFromDictionary:v51];
      [v63 addObject:v25];
      [v60 addObject:v48];

      v9 = v59;
      v19 = v47;
      v22 = v62;
    }

    ++v20;
  }

  while (v21 != 7);
  v52 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"bytes") + 37, 5}];
  v53 = [*(v19 + 2872) dictionaryWithCapacity:2];
  v54 = [KramerVCReader getLogDirectoryEntry:v52];
  [v53 setObject:v54 forKeyedSubscript:@"LogDirectory"];

  v65 = v22;
  v55 = [KramerVCReader readCyclicLogFromVC:v61 forCity:&unk_2843C6320 withError:&v65];
  v10 = v65;

  [v53 setObject:v55 forKeyedSubscript:@"CyclicLog"];
  [v63 addObject:v53];
  v18 = v57;
  [v57 setObject:v53 forKeyedSubscript:@"CyclicLog"];
  [v57 setObject:v60 forKeyedSubscript:@"CommutePlans"];
  [v57 setObject:v63 forKeyedSubscript:@"ATLInternal"];

  cityCopy = v58;
LABEL_35:

  return v18;
}

+ (id)readIPEFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withDirectoryDetails:(id)details withError:(id *)error
{
  typCopy = typ;
  fileCopy = file;
  v103[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  chainCopy = chain;
  detailsCopy = details;
  v89 = 0;
  v15 = [MifareUtils getMcmDataDal:fileCopy | 0x4B00u withTransceiver:cCopy withError:&v89];
  v16 = v89;
  v87 = v15;
  v17 = [v15 length];
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 == 0;
  }

  if (v18)
  {
    v19 = detailsCopy;
    v20 = chainCopy;
    v21 = cCopy;
    v22 = ATLLogObject(v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
    v24 = MEMORY[0x277CCA9B8];
    v102 = *MEMORY[0x277CCA450];
    v103[0] = v23;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:&v102 count:1];
    v16 = [v24 errorWithDomain:@"ATL" code:3 userInfo:v25];

    cCopy = v21;
    chainCopy = v20;
    detailsCopy = v19;
  }

  if (!v16)
  {
    v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    v29 = [KramerVCReader decodeIPEHeader:v87];
    v84 = v28;
    [v28 addEntriesFromDictionary:v29];
    v85 = v29;
    v30 = [v29 objectForKeyedSubscript:@"IPELength"];
    unsignedShortValue = [v30 unsignedShortValue];

    v33 = ATLLogObject(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v85 objectForKeyedSubscript:@"IPELength"];
      unsignedShortValue2 = [v34 unsignedShortValue];
      *buf = 67109376;
      *v101 = unsignedShortValue2;
      *&v101[4] = 1024;
      *&v101[6] = 4 * unsignedShortValue;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEFAULT, "IPE Length %d blocks %d bytes", buf, 0xEu);
    }

    if (unsignedShortValue < 0x1D)
    {
      v40 = v84;
      v41 = v85;
      goto LABEL_27;
    }

    [v84 setObject:&unk_2843C6338 forKeyedSubscript:@"OverflowFlag"];
    if (![chainCopy count])
    {
      v42 = ATLLogObject(0);
      v41 = v85;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEFAULT, "IPE overflow indicated, but there is no next sector in chain.", buf, 2u);
      }

      v40 = v84;
      [v84 setObject:@"IPE Overflow: Missing next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
      [v84 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
      goto LABEL_27;
    }

    firstObject = [chainCopy firstObject];
    unsignedShortValue3 = [firstObject unsignedShortValue];

    if (!unsignedShortValue3 || unsignedShortValue3 == 13 || unsignedShortValue3 == fileCopy)
    {
      v39 = ATLLogObject(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEFAULT, "IPE overflow indicated, but chain entry does not indicate a new sector to read.", buf, 2u);
      }

      v40 = v84;
      [v84 setObject:@"IPE Overflow: Invalid next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
      [v84 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
      v41 = v85;
      goto LABEL_27;
    }

    v88 = 0;
    v77 = [MifareUtils getMcmDataDal:(unsignedShortValue3 + 19200) withTransceiver:cCopy withError:&v88];
    v16 = v88;
    if (![v87 length])
    {
      v41 = v85;
      if (v16)
      {
LABEL_74:
        if (v16)
        {
          if (error)
          {
            v82 = v16;
            *error = v16;
          }

          v27 = 0;
          v40 = v84;
          goto LABEL_64;
        }

        v83 = [v87 mutableCopy];
        [v83 appendData:v77];

        v87 = v83;
        v40 = v84;
LABEL_27:
        v43 = [v41 objectForKeyedSubscript:@"IPEFormatRev"];
        unsignedShortValue4 = [v43 unsignedShortValue];

        if (typCopy > 21)
        {
          if (typCopy == 22)
          {
            if ((unsignedShortValue4 - 3) > 0xFFFFFFFD)
            {
              v16 = 0;
            }

            else
            {
              v52 = ATLLogObject(v45);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v101 = unsignedShortValue4;
                _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 22", buf, 8u);
              }

              v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 22", unsignedShortValue4];
              v54 = MEMORY[0x277CCA9B8];
              v92 = *MEMORY[0x277CCA450];
              v93 = v53;
              v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
              v16 = [v54 errorWithDomain:@"ATL" code:8 userInfo:v55];
            }

            v71 = [v41 objectForKeyedSubscript:@"IPEFormatRev"];
            v72 = [v41 objectForKeyedSubscript:@"IPEBitmap"];
            v73 = [KramerVCReader decodeIPETyp22:v87 withIfr:v71 withBitmap:v72];
            [v40 addEntriesFromDictionary:v73];

            v74 = [detailsCopy objectForKeyedSubscript:@"IPEValueGroupFlag"];
            LODWORD(v71) = [v74 unsignedIntValue];

            if (!v71)
            {
              goto LABEL_61;
            }

LABEL_60:
            v75 = &unk_2843C6338;
LABEL_62:
            [v40 setObject:v75 forKeyedSubscript:@"CountBasedFlag"];
LABEL_63:
            v27 = v40;
LABEL_64:

            goto LABEL_65;
          }

          if (typCopy != 23)
          {
            goto LABEL_38;
          }

          if ((unsignedShortValue4 - 3) > 0xFFFFFFFD)
          {
            v16 = 0;
          }

          else
          {
            v46 = ATLLogObject(v45);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v101 = unsignedShortValue4;
              _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 23", buf, 8u);
            }

            v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 23", unsignedShortValue4];
            v48 = MEMORY[0x277CCA9B8];
            v90 = *MEMORY[0x277CCA450];
            v91 = v47;
            v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            v16 = [v48 errorWithDomain:@"ATL" code:8 userInfo:v49];
          }

          v63 = [v41 objectForKeyedSubscript:@"IPEFormatRev"];
          v64 = [v41 objectForKeyedSubscript:@"IPEBitmap"];
          v65 = [KramerVCReader decodeIPETyp23:v87 withIfr:v63 withBitmap:v64];
        }

        else
        {
          if (typCopy != 2)
          {
            if (typCopy == 16)
            {
              if (unsignedShortValue4 == 1)
              {
                v16 = 0;
              }

              else
              {
                v56 = ATLLogObject(v45);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *v101 = unsignedShortValue4;
                  _os_log_impl(&dword_22EEF5000, v56, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 2", buf, 8u);
                }

                v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 2", unsignedShortValue4];
                v58 = MEMORY[0x277CCA9B8];
                v94 = *MEMORY[0x277CCA450];
                v95 = v57;
                v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                v16 = [v58 errorWithDomain:@"ATL" code:8 userInfo:v59];
              }

              v60 = [v41 objectForKeyedSubscript:@"IPEFormatRev"];
              v61 = [v41 objectForKeyedSubscript:@"IPEBitmap"];
              v62 = [KramerVCReader decodeIPETyp16:v87 withIfr:v60 withBitmap:v61];
              [v40 addEntriesFromDictionary:v62];

LABEL_61:
              v75 = &unk_2843C6320;
              goto LABEL_62;
            }

LABEL_38:
            v50 = ATLLogObject(v45);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typCopy];
              *buf = 138412290;
              *v101 = v51;
              _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_DEFAULT, "Specific decoding not yet implemented for TYP %@", buf, 0xCu);
            }

            v16 = 0;
            goto LABEL_63;
          }

          if (unsignedShortValue4 == 1)
          {
            v16 = 0;
          }

          else
          {
            v66 = ATLLogObject(v45);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v101 = unsignedShortValue4;
              _os_log_impl(&dword_22EEF5000, v66, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 2", buf, 8u);
            }

            v67 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 2", unsignedShortValue4];
            v68 = MEMORY[0x277CCA9B8];
            v96 = *MEMORY[0x277CCA450];
            v97 = v67;
            v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
            v16 = [v68 errorWithDomain:@"ATL" code:8 userInfo:v69];
          }

          v63 = [v41 objectForKeyedSubscript:@"IPEFormatRev"];
          v64 = [v41 objectForKeyedSubscript:@"IPEBitmap"];
          v65 = [KramerVCReader decodeIPETyp2:v87 withIfr:v63 withBitmap:v64];
        }

        v70 = v65;
        [v40 addEntriesFromDictionary:v65];

        goto LABEL_60;
      }

      v78 = ATLLogObject(0);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v78, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
      }

      v79 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
      v80 = MEMORY[0x277CCA9B8];
      v98 = *MEMORY[0x277CCA450];
      v99 = v79;
      v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      v16 = [v80 errorWithDomain:@"ATL" code:3 userInfo:v81];
    }

    v41 = v85;
    goto LABEL_74;
  }

  if (error)
  {
    v26 = v16;
    v27 = 0;
    *error = v16;
  }

  else
  {
    v27 = 0;
  }

LABEL_65:

  return v27;
}

+ (id)readVGFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withError:(id *)error
{
  typCopy = typ;
  v85[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  chainCopy = chain;
  firstObject = [chainCopy firstObject];
  unsignedShortValue = [firstObject unsignedShortValue];

  v73 = 0;
  v13 = [MifareUtils getMcmDataDal:(unsignedShortValue + 19200) withTransceiver:cCopy withError:&v73];
  v14 = v73;
  v15 = [v13 length];
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0;
  }

  if (v16)
  {
    v17 = v13;
    v18 = cCopy;
    v19 = ATLLogObject(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
    v21 = MEMORY[0x277CCA9B8];
    v84 = *MEMORY[0x277CCA450];
    v85[0] = v20;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
    v14 = [v21 errorWithDomain:@"ATL" code:3 userInfo:v22];

    cCopy = v18;
    v13 = v17;
  }

  if (!v14)
  {
    v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:12];
    v69 = v13;
    v27 = [KramerVCReader decodeVGHeader:v13];
    [v26 addEntriesFromDictionary:v27];
    v28 = [v27 objectForKeyedSubscript:@"VGLength"];
    unsignedShortValue2 = [v28 unsignedShortValue];

    v31 = ATLLogObject(v30);
    v70 = v27;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v27 objectForKeyedSubscript:@"IPELength"];
      unsignedShortValue3 = [v32 unsignedShortValue];
      *buf = 67109376;
      *v83 = unsignedShortValue3;
      *&v83[4] = 1024;
      *&v83[6] = 4 * unsignedShortValue2;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEFAULT, "VG Length %d blocks %d bytes", buf, 0xEu);

      v27 = v70;
    }

    v34 = [v27 objectForKeyedSubscript:@"VGFormatRev"];
    unsignedIntValue = [v34 unsignedIntValue];

    v23 = chainCopy;
    if (unsignedShortValue2 >= 0x1D)
    {
      [v26 setObject:&unk_2843C6338 forKeyedSubscript:@"OverflowFlag"];
      if ([chainCopy count] == 1)
      {
        v37 = ATLLogObject(1);
        v38 = typCopy;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_DEFAULT, "VG overflow indicated, but there is no next sector in chain.", buf, 2u);
        }

        [v26 setObject:@"VG Overflow: Missing next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
        v36 = [v26 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
LABEL_27:
        if (v38 > 21)
        {
          if (v38 == 22)
          {
            if ((unsignedIntValue - 11) > 0xFFFFFFFD)
            {
              v14 = 0;
            }

            else
            {
              v49 = ATLLogObject(v36);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v83 = unsignedIntValue;
                _os_log_impl(&dword_22EEF5000, v49, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 22", buf, 8u);
              }

              v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 22", unsignedIntValue];
              v51 = MEMORY[0x277CCA9B8];
              v76 = *MEMORY[0x277CCA450];
              v77 = v50;
              v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
              v14 = [v51 errorWithDomain:@"ATL" code:8 userInfo:v52];
            }

            v47 = [v70 objectForKeyedSubscript:@"VGFormatRev"];
            v53 = [v70 objectForKeyedSubscript:@"VGBitmap"];
            v54 = [v70 objectForKeyedSubscript:@"VGNumValueRecords"];
            v55 = [KramerVCReader decodeVGTyp22:v69 withIfr:v47 withBitmap:v53 withNumRecords:v54];
          }

          else
          {
            if (v38 != 23)
            {
LABEL_37:
              v47 = ATLLogObject(v36);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38];
                *buf = 138412290;
                *v83 = v48;
                _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_DEBUG, "Specific decoding not yet implemented for TYP %@", buf, 0xCu);
              }

              v14 = 0;
              goto LABEL_55;
            }

            if ((unsignedIntValue - 11) > 0xFFFFFFFD)
            {
              v14 = 0;
            }

            else
            {
              v43 = ATLLogObject(v36);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v83 = unsignedIntValue;
                _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 23", buf, 8u);
              }

              v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 23", unsignedIntValue];
              v45 = MEMORY[0x277CCA9B8];
              v74 = *MEMORY[0x277CCA450];
              v75 = v44;
              v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
              v14 = [v45 errorWithDomain:@"ATL" code:8 userInfo:v46];
            }

            v47 = [v70 objectForKeyedSubscript:@"VGFormatRev"];
            v53 = [v70 objectForKeyedSubscript:@"VGBitmap"];
            v54 = [v70 objectForKeyedSubscript:@"VGNumValueRecords"];
            v55 = [KramerVCReader decodeVGTyp23:v69 withIfr:v47 withBitmap:v53 withNumRecords:v54];
          }
        }

        else
        {
          if (v38 != 2)
          {
            if (v38 == 16)
            {
              v14 = 0;
LABEL_56:
              v25 = v26;
LABEL_57:
              v13 = v69;

              goto LABEL_58;
            }

            goto LABEL_37;
          }

          if (unsignedIntValue == 9)
          {
            v14 = 0;
          }

          else
          {
            v56 = ATLLogObject(v36);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v83 = unsignedIntValue;
              _os_log_impl(&dword_22EEF5000, v56, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 2", buf, 8u);
            }

            v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 2", unsignedIntValue];
            v58 = MEMORY[0x277CCA9B8];
            v78 = *MEMORY[0x277CCA450];
            v79 = v57;
            v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v14 = [v58 errorWithDomain:@"ATL" code:8 userInfo:v59];
          }

          v47 = [v70 objectForKeyedSubscript:@"VGFormatRev"];
          v53 = [v70 objectForKeyedSubscript:@"VGBitmap"];
          v54 = [v70 objectForKeyedSubscript:@"VGNumValueRecords"];
          v55 = [KramerVCReader decodeVGTyp2:v69 withIfr:v47 withBitmap:v53 withNumRecords:v54];
        }

        v60 = v55;
        [v26 addEntriesFromDictionary:v55];

LABEL_55:
        goto LABEL_56;
      }

      firstObject2 = [chainCopy firstObject];
      unsignedCharValue = [firstObject2 unsignedCharValue];

      if (!unsignedCharValue || unsignedCharValue == 13 || unsignedShortValue == unsignedCharValue)
      {
        v42 = ATLLogObject(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEFAULT, "VG overflow indicated, but chain entry does not indicate a new sector to read.", buf, 2u);
        }

        [v26 setObject:@"VG Overflow: Invalid next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
        v36 = [v26 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
      }

      else
      {
        v72 = 0;
        v62 = [MifareUtils getMcmDataDal:(unsignedShortValue + 19200) withTransceiver:cCopy withError:&v72];
        v14 = v72;
        if (![v69 length] && !v14)
        {
          v63 = ATLLogObject(0);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v63, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
          }

          v64 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
          v65 = MEMORY[0x277CCA9B8];
          v80 = *MEMORY[0x277CCA450];
          v81 = v64;
          v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v14 = [v65 errorWithDomain:@"ATL" code:3 userInfo:v66];
        }

        if (v14)
        {
          if (error)
          {
            v67 = v14;
            *error = v14;
          }

          v25 = 0;
          goto LABEL_57;
        }

        v68 = [v69 mutableCopy];
        [v68 appendData:v62];

        v69 = v68;
      }
    }

    v38 = typCopy;
    goto LABEL_27;
  }

  v23 = chainCopy;
  if (error)
  {
    v24 = v14;
    v25 = 0;
    *error = v14;
  }

  else
  {
    v25 = 0;
  }

LABEL_58:

  return v25;
}

+ (id)readCyclicLogFromVC:(id)c forCity:(id)city withError:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v6 = [MifareUtils getMcmDataDal:19214 withTransceiver:c withError:&v21];
  v7 = v21;
  v8 = [v6 length];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = ATLLogObject(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", v20, 2u);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
    v12 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v7 = [v12 errorWithDomain:@"ATL" code:3 userInfo:v13];
  }

  if (v7)
  {
    if (error)
    {
      v14 = v7;
      v15 = 0;
      *error = v7;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v16 = 0;
    do
    {
      v17 = v16;
      v18 = [KramerVCReader decodeCyclicLogEntry:v6 withRecordIndex:v16];
      [v15 addObject:v18];

      ++v16;
    }

    while (v17 < 3);
  }

  return v15;
}

+ (id)getIPELabelDetails:(id)details withError:(id *)error
{
  detailsCopy = details;
  v5 = *[detailsCopy bytes];
  v6 = *([detailsCopy bytes] + 3);
  [detailsCopy bytes];
  v7 = bswap32(*[detailsCopy bytes]) >> 18;
  v8 = bswap32(*([detailsCopy bytes] + 1));
  v9 = *([detailsCopy bytes] + 2);
  bytes = [detailsCopy bytes];

  v11 = bswap32(*(bytes + 3) & 0xFF3F) >> 16;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v5 >> 7];
  [v12 setObject:v13 forKeyedSubscript:@"OIDExtensionFlag"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  [v12 setObject:v14 forKeyedSubscript:@"OID"];

  0x1F = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(v8 >> 21) & 0x1F];
  [v12 setObject:0x1F forKeyedSubscript:@"IPEType"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9 & 0xF];
  [v12 setObject:v16 forKeyedSubscript:@"IPESubType"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:v6 >> 7];
  [v12 setObject:v17 forKeyedSubscript:@"IPEValueGroupFlag"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v12 setObject:v18 forKeyedSubscript:@"IPEIinNotInShellFlag"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
  [v12 setObject:v19 forKeyedSubscript:@"IPEExpiryDate"];

  return v12;
}

+ (id)getCommutePlanIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy objectForKeyedSubscript:@"OID"];
  v5 = [identifierCopy objectForKeyedSubscript:@"IPEType"];
  v6 = [identifierCopy objectForKeyedSubscript:@"IPESubType"];
  v15 = [identifierCopy objectForKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];
  v14 = [identifierCopy objectForKeyedSubscript:@"IPEPassDuration"];
  v7 = [identifierCopy objectForKeyedSubscript:@"IPEPromoCode"];
  v13 = [identifierCopy objectForKeyedSubscript:@"IPEConcessionaryClass"];
  v8 = [identifierCopy objectForKeyedSubscript:@"IPEEntitlementCode"];
  v9 = [identifierCopy objectForKeyedSubscript:@"IPERouteCode"];
  v10 = [identifierCopy objectForKeyedSubscript:@"IPEValidAtOrFrom"];
  v11 = [identifierCopy objectForKeyedSubscript:@"IPEValidTo"];

  v16 = [KramerVCReader getCommutePlanIdentifier:v4 withTyp:v5 withPtyp:v6 withCpicc:v15 withPassDuration:v14 withPromotionCode:v7 withConcessionaryClass:v13 withEntitlementCode:v8 withRouteCode:v9 withValidAtOrFrom:v10 withValidTo:v11];

  return v16;
}

+ (id)getCommutePlanIdentifier:(id)identifier withTyp:(id)typ withPtyp:(id)ptyp withCpicc:(id)cpicc withPassDuration:(id)duration withPromotionCode:(id)code withConcessionaryClass:(id)class withEntitlementCode:(id)self0 withRouteCode:(id)self1 withValidAtOrFrom:(id)self2 withValidTo:(id)self3
{
  cpiccCopy = cpicc;
  durationCopy = duration;
  codeCopy = code;
  classCopy = class;
  entitlementCodeCopy = entitlementCode;
  routeCodeCopy = routeCode;
  fromCopy = from;
  toCopy = to;
  v34 = MEMORY[0x277CCACA8];
  ptypCopy = ptyp;
  typCopy = typ;
  intValue = [identifier intValue];
  intValue2 = [typCopy intValue];

  intValue3 = [ptypCopy intValue];
  if (cpiccCopy)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(cpiccCopy, "intValue")];
  }

  else
  {
    v37 = &stru_2843B92D8;
  }

  if (durationCopy)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(durationCopy, "intValue")];
    if (codeCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v36 = &stru_2843B92D8;
    if (codeCopy)
    {
LABEL_6:
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(codeCopy, "intValue")];
      if (classCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  v35 = &stru_2843B92D8;
  if (classCopy)
  {
LABEL_7:
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(classCopy, "intValue")];
    if (entitlementCodeCopy)
    {
      goto LABEL_8;
    }

LABEL_13:
    v25 = &stru_2843B92D8;
    if (routeCodeCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v24 = &stru_2843B92D8;
  if (!entitlementCodeCopy)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(entitlementCodeCopy, "intValue")];
  if (routeCodeCopy)
  {
LABEL_9:
    asHexString = [routeCodeCopy asHexString];
    goto LABEL_15;
  }

LABEL_14:
  asHexString = &stru_2843B92D8;
LABEL_15:
  if (fromCopy)
  {
    asHexString2 = [fromCopy asHexString];
  }

  else
  {
    asHexString2 = &stru_2843B92D8;
  }

  if (toCopy)
  {
    asHexString3 = [toCopy asHexString];
    v29 = [v34 stringWithFormat:@"%04X_%02X_%02X_%@_%@_%@_%@_%@_%@_%@_%@", intValue, intValue2, intValue3, v37, v36, v35, v24, v25, asHexString, asHexString2, asHexString3];

    if (!fromCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v29 = [v34 stringWithFormat:@"%04X_%02X_%02X_%@_%@_%@_%@_%@_%@_%@_%@", intValue, intValue2, intValue3, v37, v36, v35, v24, v25, asHexString, asHexString2, &stru_2843B92D8];
  if (fromCopy)
  {
LABEL_20:
  }

LABEL_21:
  if (routeCodeCopy)
  {
  }

  if (entitlementCodeCopy)
  {
  }

  if (classCopy)
  {
  }

  if (codeCopy)
  {
  }

  if (durationCopy)
  {
  }

  if (cpiccCopy)
  {
  }

  return v29;
}

+ (id)getCommutePlanUniqueId:(id)id withSector:(id)sector
{
  sectorCopy = sector;
  idCopy = id;
  v8 = +[HashHelper hashHelper];
  v9 = [(HashHelper *)v8 addString:idCopy];

  v10 = [(HashHelper *)v9 addNumber:sectorCopy];

  getHash = [(HashHelper *)v10 getHash];

  asHexString = [getHash asHexString];

  return asHexString;
}

+ (id)processSectorChain:(id)chain forIPE:(unsigned __int8)e
{
  eCopy = e;
  chainCopy = chain;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  if (eCopy <= 0xC)
  {
    LOBYTE(v7) = eCopy;
    do
    {
      v8 = *([chainCopy bytes] + (eCopy >> 1) + 42);
      v9 = v8 >> 4;
      v10 = v8 & 0xF;
      v11 = (v7 & 1) != 0 ? v10 : v9;
      if (!v11)
      {
        break;
      }

      if (v11 == 13 || v11 == 15)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        [v6 addObject:v14];

        break;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
      [v6 addObject:v13];

      if (eCopy + 1 == v11)
      {
        v7 = 13;
      }

      else
      {
        v7 = v11 - 1;
      }

      eCopy = v7;
    }

    while (v7 < 0xDu);
  }

  return v6;
}

+ (id)decodeIPETyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap
{
  typ2Copy = typ2;
  v7 = MEMORY[0x277CBEB38];
  bitmapCopy = bitmap;
  v9 = [v7 dictionaryWithCapacity:2];
  bytes = [typ2Copy bytes];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 5)];
  [v9 setObject:v11 forKeyedSubscript:@"IPEFlags"];

  LOBYTE(v11) = [bitmapCopy unsignedCharValue];
  if (v11)
  {
    bytes2 = [typ2Copy bytes];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes2 + 22)) >> 8];
    [v9 setObject:v13 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v9;
}

+ (id)decodeIPETyp16:(id)typ16 withIfr:(id)ifr withBitmap:(id)bitmap
{
  v43 = *MEMORY[0x277D85DE8];
  typ16Copy = typ16;
  bitmapCopy = bitmap;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:11];
  bytes = [typ16Copy bytes];
  v10 = *(bytes + 2);
  if (v10 != 255)
  {
    v11 = ATLLogObject(bytes);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v42[0] = 67109120;
      v42[1] = v10;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "Remove Date value(%d) is not 255. This is inconsistent with expections for IPE 16.", v42, 8u);
    }
  }

  v12 = bswap32(*([typ16Copy bytes] + 3)) >> 16;
  v13 = bswap32(*([typ16Copy bytes] + 16) & 0xFF3F) >> 16;
  v14 = *([typ16Copy bytes] + 27);
  v15 = *([typ16Copy bytes] + 28);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
  [v8 setObject:v16 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
  [v8 setObject:v17 forKeyedSubscript:@"IPEEntitlementExpiryRaw"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
  [v8 setObject:v18 forKeyedSubscript:@"IPEEntitlementCode"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
  [v8 setObject:v19 forKeyedSubscript:@"IPEConcessionaryClass"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
  [v8 setObject:v20 forKeyedSubscript:@"IPERemoveDate"];

  if (([bitmapCopy unsignedCharValue] & 2) != 0)
  {
    v22 = [typ16Copy subdataWithOffset:29 length:4];
    asHexString = [v22 asHexString];
    [v8 setObject:asHexString forKeyedSubscript:@"TmpSecondaryID"];

    v21 = 33;
  }

  else
  {
    v21 = 29;
  }

  if (([bitmapCopy unsignedCharValue] & 4) != 0)
  {
    v24 = [typ16Copy u8:v21];
    v25 = v24;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
    [v8 setObject:v26 forKeyedSubscript:@"TmpForenameLength"];

    LODWORD(v26) = v21 + 1;
    v27 = [typ16Copy subdataWithOffset:v21 + 1 length:v25];
    [v8 setObject:v27 forKeyedSubscript:@"TmpForename"];

    v28 = v26 + v25;
    v29 = [typ16Copy u8:v28];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
    [v8 setObject:v30 forKeyedSubscript:@"TmpSurnameLength"];

    v31 = (v28 + 1);
    v32 = [typ16Copy subdataWithOffset:v31 length:v29];
    [v8 setObject:v32 forKeyedSubscript:@"TmpSurname"];

    v21 = v31 + v29;
  }

  if (([bitmapCopy unsignedCharValue] & 8) != 0)
  {
    bytes2 = [typ16Copy bytes];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes2 + v21)) >> 16];
    [v8 setObject:v34 forKeyedSubscript:@"IPEHalfDayOfWeek"];

    v35 = v21 + 2;
    v36 = [typ16Copy u8:v21 + 3] + 2;
    v37 = [typ16Copy subdataWithOffset:v35 length:v36];
    [v8 setObject:v37 forKeyedSubscript:@"IPEValidAtOrFrom"];
    v21 = v35 + v36;
  }

  if (([bitmapCopy unsignedCharValue] & 0x10) != 0)
  {
    v38 = [typ16Copy u8:v21 + 1] + 2;
    v39 = [typ16Copy subdataWithOffset:v21 length:v38];
    [v8 setObject:v39 forKeyedSubscript:@"IPEValidTo"];
    v21 += v38;
  }

  if ([bitmapCopy unsignedCharValue])
  {
    v40 = [typ16Copy subdataWithOffset:v21 length:3];
    [v8 setObject:v40 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v8;
}

+ (id)decodeIPETyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap
{
  typ22Copy = typ22;
  ifrCopy = ifr;
  bitmapCopy = bitmap;
  if ([ifrCopy unsignedIntValue] == 2)
  {
    v10 = [KramerVCReader decodeIPETyp22Ifr2:typ22Copy withIfr:ifrCopy withBitmap:bitmapCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:13];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + 5)) >> 16}];
    [v10 setObject:v11 forKeyedSubscript:@"IPEFlags"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + 8)) >> 18}];
    [v10 setObject:v12 forKeyedSubscript:@"IPEIssuedDate"];

    bytes = [typ22Copy bytes];
    0x7FF = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bswap32(*(bytes + 9)) >> 15) & 0x7FF];
    [v10 setObject:0x7FF forKeyedSubscript:@"IPEExpiryTime"];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ22Copy, "bytes") + 12) >> 5}];
    [v10 setObject:v15 forKeyedSubscript:@"IPEClassCode"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ22Copy, "bytes") + 12) & 0x1F}];
    [v10 setObject:v16 forKeyedSubscript:@"IPEValidityCode"];

    v17 = bswap32(*([typ22Copy bytes] + 13));
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 >> 8];
    [v10 setObject:v18 forKeyedSubscript:@"IPEValidityStartRaw"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ22Copy, "bytes") + 16)}];
    [v10 setObject:v19 forKeyedSubscript:@"IPEPromoCode"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ22Copy, "bytes") + 17)}];
    [v10 setObject:v20 forKeyedSubscript:@"IPEValidOnDayCode"];

    if (v17 >= 0x100)
    {
      v21 = [KramerMappings getAbsoluteDateComponents:v17 >> 8];
      [v10 setObject:v21 forKeyedSubscript:@"IPEValidityStart"];
    }

    if (([bitmapCopy unsignedCharValue] & 0x10) != 0)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + 26)) >> 16}];
      [v10 setObject:v23 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

      v22 = 28;
    }

    else
    {
      v22 = 26;
    }

    if (([bitmapCopy unsignedCharValue] & 2) != 0)
    {
      v24 = [typ22Copy u8:v22 | 1] + 2;
      v25 = [typ22Copy subdataWithOffset:v22 length:v24];
      [v10 setObject:v25 forKeyedSubscript:@"IPEValidAtOrFrom"];

      v22 += v24;
    }

    if (([bitmapCopy unsignedCharValue] & 4) != 0)
    {
      v26 = [typ22Copy u8:v22 + 1] + 2;
      v27 = [typ22Copy subdataWithOffset:v22 length:v26];
      [v10 setObject:v27 forKeyedSubscript:@"IPEValidTo"];

      v22 += v26;
    }

    if (([bitmapCopy unsignedCharValue] & 8) != 0)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ22Copy, "bytes") + v22)}];
      [v10 setObject:v28 forKeyedSubscript:@"IPEPassDuration"];

      ++v22;
    }

    if ([bitmapCopy unsignedCharValue])
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + v22)) >> 8}];
      [v10 setObject:v29 forKeyedSubscript:@"IPELevelIIN"];
    }
  }

  return v10;
}

+ (id)decodeIPETyp22Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap
{
  ifr2Copy = ifr2;
  bitmapCopy = bitmap;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:14];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 5)) >> 16}];
  [v8 setObject:v9 forKeyedSubscript:@"IPEFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 8)) >> 18}];
  [v8 setObject:v10 forKeyedSubscript:@"IPEIssuedDate"];

  bytes = [ifr2Copy bytes];
  0x7FF = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bswap32(*(bytes + 9)) >> 15) & 0x7FF];
  [v8 setObject:0x7FF forKeyedSubscript:@"IPEExpiryTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 12) >> 5}];
  [v8 setObject:v13 forKeyedSubscript:@"IPEClassCode"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 12) & 0x1F}];
  [v8 setObject:v14 forKeyedSubscript:@"IPEValidityCode"];

  v15 = bswap32(*([ifr2Copy bytes] + 13));
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15 >> 8];
  [v8 setObject:v16 forKeyedSubscript:@"IPEValidityStartRaw"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 16)}];
  [v8 setObject:v17 forKeyedSubscript:@"IPEPromoCode"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 17)}];
  [v8 setObject:v18 forKeyedSubscript:@"IPEValidOnDayCode"];

  if (v15 >= 0x100)
  {
    v19 = [KramerMappings getAbsoluteDateComponents:v15 >> 8];
    [v8 setObject:v19 forKeyedSubscript:@"IPEValidityStart"];
  }

  if (([bitmapCopy unsignedCharValue] & 0x10) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 28)) >> 16}];
    [v8 setObject:v21 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

    v20 = 30;
  }

  else
  {
    v20 = 28;
  }

  if (([bitmapCopy unsignedCharValue] & 8) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + v20)}];
    [v8 setObject:v22 forKeyedSubscript:@"IPEPassDuration"];

    v20 |= 1u;
  }

  if (([bitmapCopy unsignedCharValue] & 2) != 0)
  {
    v23 = [ifr2Copy subdataWithOffset:v20 length:5];
    [v8 setObject:v23 forKeyedSubscript:@"IPERouteCode"];

    LODWORD(v23) = v20 + 5;
    v24 = [ifr2Copy u8:v20 + 6] + 2;
    v25 = [ifr2Copy subdataWithOffset:v20 + 5 length:v24];
    [v8 setObject:v25 forKeyedSubscript:@"IPEValidAtOrFrom"];

    v26 = v23 + v24;
    v27 = [ifr2Copy u8:v26 + 1] + 2;
    v28 = [ifr2Copy subdataWithOffset:v26 length:v27];
    [v8 setObject:v28 forKeyedSubscript:@"IPEValidTo"];

    v20 = v26 + v27;
  }

  if ([bitmapCopy unsignedCharValue])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + v20)) >> 8}];
    [v8 setObject:v29 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v8;
}

+ (id)decodeIPETyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap
{
  typ23Copy = typ23;
  ifrCopy = ifr;
  bitmapCopy = bitmap;
  if ([ifrCopy unsignedIntValue] == 2)
  {
    v10 = [KramerVCReader decodeIPETyp23Ifr2:typ23Copy withIfr:ifrCopy withBitmap:bitmapCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 5)}];
    [v10 setObject:v11 forKeyedSubscript:@"IPEFlags"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 7)) >> 19}];
    [v10 setObject:v12 forKeyedSubscript:@"IPEIssuedDate"];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ23Copy, "bytes") + 9) >> 3}];
    [v10 setObject:v13 forKeyedSubscript:@"IPEValidityCode"];

    v14 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 9) & 0xFF07) >> 16}];
    [v10 setObject:v14 forKeyedSubscript:@"IPEExpiryTime"];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ23Copy, "bytes") + 11) & 7}];
    [v10 setObject:v15 forKeyedSubscript:@"IPEClassCode"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 24)}];
    [v10 setObject:v16 forKeyedSubscript:@"IPEPromoCode"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 25)) >> 16}];
    [v10 setObject:v17 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

    if (([bitmapCopy unsignedCharValue] & 8) != 0)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ23Copy, "bytes") + 27) >> 4}];
      [v10 setObject:v19 forKeyedSubscript:@"IPEOperatingMode"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 28)}];
      [v10 setObject:v20 forKeyedSubscript:@"IPEMaxTransfers"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 29)}];
      [v10 setObject:v21 forKeyedSubscript:@"IPETimeLimit"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 30)) >> 16}];
      [v10 setObject:v22 forKeyedSubscript:@"IPEValueRideJourney"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 32)) >> 16}];
      [v10 setObject:v23 forKeyedSubscript:@"IPEValueRideJourneyCurrCode"];

      v18 = 33;
    }

    else
    {
      v18 = 27;
    }

    if (([bitmapCopy unsignedCharValue] & 4) != 0)
    {
      v24 = [typ23Copy u8:v18 + 1] + 2;
      v25 = [typ23Copy subdataWithOffset:v18 length:v24];
      [v10 setObject:v25 forKeyedSubscript:@"IPEOrigin1"];

      v18 += v24;
    }

    if (([bitmapCopy unsignedCharValue] & 2) != 0)
    {
      v26 = [typ23Copy u8:v18 + 1] + 2;
      v27 = [typ23Copy subdataWithOffset:v18 length:v26];
      [v10 setObject:v27 forKeyedSubscript:@"IPEDest1"];

      v18 += v26;
    }

    if ([bitmapCopy unsignedCharValue])
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + v18)) >> 8}];
      [v10 setObject:v28 forKeyedSubscript:@"IPELevelIIN"];
    }
  }

  return v10;
}

+ (id)decodeIPETyp23Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap
{
  ifr2Copy = ifr2;
  bitmapCopy = bitmap;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 5)}];
  [v8 setObject:v9 forKeyedSubscript:@"IPEFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 7)) >> 19}];
  [v8 setObject:v10 forKeyedSubscript:@"IPEIssuedDate"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 9) >> 3}];
  [v8 setObject:v11 forKeyedSubscript:@"IPEValidityCode"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 9) & 0xFF07) >> 16}];
  [v8 setObject:v12 forKeyedSubscript:@"IPEExpiryTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 11) & 7}];
  [v8 setObject:v13 forKeyedSubscript:@"IPEClassCode"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 26)}];
  [v8 setObject:v14 forKeyedSubscript:@"IPEPromoCode"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 27)) >> 16}];
  [v8 setObject:v15 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

  if (([bitmapCopy unsignedCharValue] & 8) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 29) >> 4}];
    [v8 setObject:v17 forKeyedSubscript:@"IPEOperatingMode"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 30)}];
    [v8 setObject:v18 forKeyedSubscript:@"IPEMaxTransfers"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 31)}];
    [v8 setObject:v19 forKeyedSubscript:@"IPETimeLimit"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 32)) >> 16}];
    [v8 setObject:v20 forKeyedSubscript:@"IPEValueRideJourney"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 34)) >> 16}];
    [v8 setObject:v21 forKeyedSubscript:@"IPEValueRideJourneyCurrCode"];

    v22 = [ifr2Copy subdataWithOffset:35 length:5];
    [v8 setObject:v22 forKeyedSubscript:@"IPERouteCode"];

    v16 = 40;
  }

  else
  {
    v16 = 29;
  }

  if (([bitmapCopy unsignedCharValue] & 2) != 0)
  {
    v23 = [ifr2Copy u8:v16 + 1] + 2;
    v24 = [ifr2Copy subdataWithOffset:v16 length:v23];
    [v8 setObject:v24 forKeyedSubscript:@"IPEOrigin1"];

    v25 = v16 + v23;
    v26 = [ifr2Copy u8:(v25 + 1)] + 2;
    v27 = [ifr2Copy subdataWithOffset:v25 length:v26];
    [v8 setObject:v27 forKeyedSubscript:@"IPEDest1"];

    v16 = v25 + v26;
  }

  if ([bitmapCopy unsignedCharValue])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + v16)) >> 8}];
    [v8 setObject:v28 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v8;
}

+ (id)decodeIPEHeader:(id)header
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  headerCopy = header;
  v5 = [v3 dictionaryWithCapacity:3];
  v6 = *[headerCopy bytes] >> 2;
  v7 = (bswap32(*[headerCopy bytes]) >> 20) & 0x3F;
  bytes = [headerCopy bytes];

  v9 = *(bytes + 1) & 0xF;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  [v5 setObject:v10 forKeyedSubscript:@"IPELength"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  [v5 setObject:v11 forKeyedSubscript:@"IPEBitmap"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
  [v5 setObject:v12 forKeyedSubscript:@"IPEFormatRev"];

  if ((v9 - 3) <= 0xFFFFFFFD)
  {
    v14 = ATLLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109120;
      v16[1] = v9;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected IFR value for IPE (%d)", v16, 8u);
    }
  }

  return v5;
}

+ (id)decodeVGHeader:(id)header
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  headerCopy = header;
  v5 = [v3 dictionaryWithCapacity:3];
  v6 = *[headerCopy bytes] >> 2;
  v7 = (bswap32(*[headerCopy bytes]) >> 20) & 0x3F;
  bytes = [headerCopy bytes];

  v9 = *(bytes + 1) & 0xF;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  [v5 setObject:v10 forKeyedSubscript:@"VGLength"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  [v5 setObject:v11 forKeyedSubscript:@"VGBitmap"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
  [v5 setObject:v12 forKeyedSubscript:@"VGFormatRev"];

  if ((v9 - 11) <= 0xFFFFFFFD)
  {
    v14 = ATLLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 67109120;
      LODWORD(v23) = v9;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected IFR value for VG (%d)", &v22, 8u);
    }
  }

  v15 = v7 & 0x3E;
  if (v15 <= 0x37)
  {
    if (v15 == 32)
    {
      v16 = 1;
      goto LABEL_19;
    }

    if (v15 == 48)
    {
      v16 = 2;
      goto LABEL_19;
    }
  }

  else
  {
    switch(v15)
    {
      case '8':
        v16 = 3;
        goto LABEL_19;
      case '<':
        v16 = 4;
        goto LABEL_19;
      case '>':
        v16 = 5;
        goto LABEL_19;
    }
  }

  v17 = ATLLogObject(v13);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    0x3E = [MEMORY[0x277CCABB0] numberWithInt:v7 & 0x3E];
    v22 = 138412290;
    v23 = 0x3E;
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEFAULT, "Unexpected number of records for the Value Group (%@)", &v22, 0xCu);
  }

  v16 = 0;
LABEL_19:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
  [v5 setObject:v19 forKeyedSubscript:@"VGNumValueRecords"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
  [v5 setObject:v20 forKeyedSubscript:@"VGExtendedFlag"];

  return v5;
}

+ (id)getLogDirectoryEntry:(id)entry
{
  v3 = MEMORY[0x277CBEB38];
  entryCopy = entry;
  v5 = [v3 dictionaryWithCapacity:7];
  isAll00 = [entryCopy isAll00];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:isAll00];
  [v5 setObject:v7 forKeyedSubscript:@"LogUninitialized"];

  v8 = *[entryCopy bytes];
  v9 = (*[entryCopy bytes] >> 2) & 0x1F;
  v10 = *[entryCopy bytes];
  v11 = bswap32(*([entryCopy bytes] + 1)) >> 8;
  v12 = *([entryCopy bytes] + 4) >> 6;
  bytes = [entryCopy bytes];

  LOBYTE(bytes) = *(bytes + 4);
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v8 >> 7];
  [v5 setObject:v14 forKeyedSubscript:@"LogNormalModeFlag"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
  [v5 setObject:v15 forKeyedSubscript:@"LogIpePointer"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10 & 3];
  [v5 setObject:v16 forKeyedSubscript:@"LogEntryExitIndicator"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  [v5 setObject:v17 forKeyedSubscript:@"LogDateTimeStampRaw"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
  [v5 setObject:v18 forKeyedSubscript:@"LogRecordOffset"];

  0x3F = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes & 0x3F];
  [v5 setObject:0x3F forKeyedSubscript:@"LogPassbackTime"];

  v20 = [KramerMappings getAbsoluteDateComponents:v11];
  [v5 setObject:v20 forKeyedSubscript:@"LogDateTimeStamp"];

  return v5;
}

+ (id)decodeCyclicLogEntry:(id)entry withRecordIndex:(unsigned __int8)index
{
  indexCopy = index;
  v34 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:indexCopy];
  [v6 setObject:v7 forKeyedSubscript:@"RecordOffset"];

  v8 = 48 * indexCopy;
  v9 = *([entryCopy bytes] + v8);
  if (v9 >= 4)
  {
    v10 = v9 >> 2;
    v11 = bswap32(*([entryCopy bytes] + 48 * indexCopy));
    v12 = *([entryCopy bytes] + v8 + 1) & 0xF;
    v13 = bswap32(*([entryCopy bytes] + v8 + 2)) >> 20;
    v14 = *([entryCopy bytes] + v8 + 3);
    v15 = bswap32(*([entryCopy bytes] + v8 + 4)) >> 8;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
    [v6 setObject:v16 forKeyedSubscript:@"TTLength"];

    0x3F = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(v11 >> 20) & 0x3F];
    [v6 setObject:0x3F forKeyedSubscript:@"TTBitmap1"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
    [v6 setObject:v18 forKeyedSubscript:@"TTFormatRev"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
    [v6 setObject:v19 forKeyedSubscript:@"TTBitmap2"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14 & 0xF];
    [v6 setObject:v20 forKeyedSubscript:@"TTTransactionType"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
    [v6 setObject:v21 forKeyedSubscript:@"TTDateTimeStampRaw"];

    v22 = [KramerMappings getAbsoluteDateComponents:v15];
    v23 = [v6 setObject:v22 forKeyedSubscript:@"TTDateTimeStamp"];
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:3];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
        v27 = [KramerVCReader decodeTransientTicketIfr3:entryCopy withIfr:v24 withBitmap:v25 withRecordOffset:v26];
        goto LABEL_14;
      }

      if (v12 == 4)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:4];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
        v27 = [KramerVCReader decodeTransientTicketIfr4:entryCopy withIfr:v24 withBitmap:v25 withRecordOffset:v26];
        goto LABEL_14;
      }
    }

    else
    {
      if (v12 == 1)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:1];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
        v27 = [KramerVCReader decodeTransientTicketIfr1:entryCopy withIfr:v24 withBitmap:v25 withRecordOffset:v26];
        goto LABEL_14;
      }

      if (v12 == 2)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:2];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
        v27 = [KramerVCReader decodeTransientTicketIfr2:entryCopy withIfr:v24 withBitmap:v25 withRecordOffset:v26];
LABEL_14:
        v30 = v27;
        [v6 addEntriesFromDictionary:v27];

LABEL_15:
        goto LABEL_16;
      }
    }

    v28 = ATLLogObject(v23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
      v32 = 138412290;
      v33 = v29;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_DEFAULT, "Unexpected IFR for Cyclic Log Transient Ticket (%@)", &v32, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

+ (id)decodeVGTyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records
{
  typ2Copy = typ2;
  unsignedCharValue = [records unsignedCharValue];
  v8 = unsignedCharValue;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedCharValue];
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (unsignedCharValue)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v12 = [typ2Copy subdataWithOffset:v11 length:{15, v29}];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
      [v13 setObject:v14 forKeyedSubscript:@"VGRecordOffset"];

      v15 = [MEMORY[0x277CCABB0] numberWithInt:{*objc_msgSend(v12, "bytes") >> 4}];
      [v13 setObject:v15 forKeyedSubscript:@"VGTrxType"];

      v16 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*objc_msgSend(v12, "bytes") & 0xFF0F) >> 16}];
      [v13 setObject:v16 forKeyedSubscript:@"VGTrxSerialNum"];

      v17 = bswap32(*([v12 bytes] + 2));
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 >> 8];
      [v13 setObject:v18 forKeyedSubscript:@"VGDateTimeStampRaw"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v12, "bytes") + 5))}];
      [v13 setObject:v19 forKeyedSubscript:@"VGISAMIDMod"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 9)}];
      [v13 setObject:v20 forKeyedSubscript:@"VGActionSeqNum"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v12, "bytes") + 10)) >> 16}];
      [v13 setObject:v21 forKeyedSubscript:@"VGValue"];

      v22 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v12, "bytes") + 12) >> 4}];
      [v13 setObject:v22 forKeyedSubscript:@"VGCurrencyCode"];

      v23 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v12, "bytes") + 12) & 0xF}];
      [v13 setObject:v23 forKeyedSubscript:@"VGCountJourneyLegs"];

      v24 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v12, "bytes") + 13)) >> 19}];
      [v13 setObject:v24 forKeyedSubscript:@"VGCumulativeFare"];

      v25 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v12, "bytes") + 14) & 3}];
      [v13 setObject:v25 forKeyedSubscript:@"VGTYPFlags"];

      if (v17 >= 0x100)
      {
        v26 = [KramerMappings getAbsoluteDateComponents:v17 >> 8];
        if (v26)
        {
          [v13 setObject:v26 forKeyedSubscript:@"VGDateTimeStamp"];
        }
      }

      [v9 addObject:v13];

      ++v10;
      v11 += 15;
    }

    while (v8 != v10);
  }

  v27 = v29;
  [v29 setObject:v9 forKeyedSubscript:{@"ValueGroupRecords", v29}];

  return v27;
}

+ (id)decodeVGTyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records
{
  typ22Copy = typ22;
  unsignedCharValue = [records unsignedCharValue];
  v33 = unsignedCharValue;
  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (unsignedCharValue)
  {
    v8 = 0;
    v9 = 2;
    do
    {
      v10 = [typ22Copy subdataWithOffset:v9 length:{15, v32}];
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
      [v11 setObject:v12 forKeyedSubscript:@"VGRecordOffset"];

      v13 = [MEMORY[0x277CCABB0] numberWithInt:{*objc_msgSend(v10, "bytes") >> 4}];
      [v11 setObject:v13 forKeyedSubscript:@"VGTrxType"];

      v14 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*objc_msgSend(v10, "bytes") & 0xFF0F) >> 16}];
      [v11 setObject:v14 forKeyedSubscript:@"VGTrxSerialNum"];

      v15 = bswap32(*([v10 bytes] + 2));
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15 >> 8];
      [v11 setObject:v16 forKeyedSubscript:@"VGDateTimeStampRaw"];

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v10, "bytes") + 5))}];
      [v11 setObject:v17 forKeyedSubscript:@"VGISAMIDMod"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v10, "bytes") + 9)}];
      [v11 setObject:v18 forKeyedSubscript:@"VGActionSeqNum"];

      v19 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v10, "bytes") + 10) >> 2}];
      [v11 setObject:v19 forKeyedSubscript:@"VGRemainingPasses"];

      bytes = [v10 bytes];
      0x3F = [MEMORY[0x277CCABB0] numberWithShort:(bswap32(*(bytes + 10)) >> 20) & 0x3F];
      [v11 setObject:0x3F forKeyedSubscript:@"VGTYPFlags"];

      v22 = (bswap32(*([v10 bytes] + 11)) >> 14) & 0x3FFF;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
      [v11 setObject:v23 forKeyedSubscript:@"VGExpiryStoredPassRaw"];

      v24 = *([v10 bytes] + 13) & 0xFF3F;
      v25 = bswap32(v24) >> 16;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v25];
      [v11 setObject:v26 forKeyedSubscript:@"VGExpiryCurrentRaw"];

      if (v15 >= 0x100)
      {
        v27 = [KramerMappings getAbsoluteDateComponents:v15 >> 8];
        if (v27)
        {
          [v11 setObject:v27 forKeyedSubscript:@"VGDateTimeStamp"];
        }
      }

      if (v22)
      {
        v28 = [KramerMappings getAbsoluteDateComponents:v22 withTime:0];
        if (v28)
        {
          [v11 setObject:v28 forKeyedSubscript:@"VGExpiryStoredPass"];
        }
      }

      if (v24)
      {
        v29 = [KramerMappings getAbsoluteDateComponents:v25 withTime:0];
        if (v29)
        {
          [v11 setObject:v29 forKeyedSubscript:@"VGExpiryCurrent"];
        }
      }

      [v34 addObject:v11];

      ++v8;
      v9 += 15;
    }

    while (v33 != v8);
  }

  v30 = v32;
  [v32 setObject:v34 forKeyedSubscript:{@"ValueGroupRecords", v32}];

  return v30;
}

+ (id)decodeVGTyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records
{
  typ23Copy = typ23;
  unsignedCharValue = [records unsignedCharValue];
  v8 = unsignedCharValue;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedCharValue];
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (unsignedCharValue)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v12 = [typ23Copy subdataWithOffset:v11 length:{15, v27}];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
      [v13 setObject:v14 forKeyedSubscript:@"VGRecordOffset"];

      v15 = [MEMORY[0x277CCABB0] numberWithInt:{*objc_msgSend(v12, "bytes") >> 4}];
      [v13 setObject:v15 forKeyedSubscript:@"VGTrxType"];

      v16 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*objc_msgSend(v12, "bytes") & 0xFF0F) >> 16}];
      [v13 setObject:v16 forKeyedSubscript:@"VGTrxSerialNum"];

      v17 = bswap32(*([v12 bytes] + 2));
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 >> 8];
      [v13 setObject:v18 forKeyedSubscript:@"VGDateTimeStampRaw"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v12, "bytes") + 5))}];
      [v13 setObject:v19 forKeyedSubscript:@"VGISAMIDMod"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 9)}];
      [v13 setObject:v20 forKeyedSubscript:@"VGActionSeqNum"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 10)}];
      [v13 setObject:v21 forKeyedSubscript:@"VGRemainingRides"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 11)}];
      [v13 setObject:v22 forKeyedSubscript:@"VGTransfers"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 12)}];
      [v13 setObject:v23 forKeyedSubscript:@"VGTYPFlags"];

      if (v17 >= 0x100)
      {
        v24 = [KramerMappings getAbsoluteDateComponents:v17 >> 8];
        if (v24)
        {
          [v13 setObject:v24 forKeyedSubscript:@"VGDateTimeStamp"];
        }
      }

      [v9 addObject:v13];

      ++v10;
      v11 += 15;
    }

    while (v8 != v10);
  }

  v25 = v27;
  [v27 setObject:v9 forKeyedSubscript:{@"ValueGroupRecords", v27}];

  return v25;
}

+ (id)decodeTransientTicketIfr1:(id)ifr1 withIfr:(id)ifr withBitmap:(id)bitmap withRecordOffset:(id)offset
{
  ifr1Copy = ifr1;
  bitmapCopy = bitmap;
  v10 = MEMORY[0x277CBEB38];
  offsetCopy = offset;
  v12 = [v10 dictionaryWithCapacity:7];
  unsignedShortValue = [offsetCopy unsignedShortValue];

  v14 = unsignedShortValue + 7;
  if ([bitmapCopy unsignedShortValue])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr1Copy, "bytes") + (unsignedShortValue + 7)) >> 4}];
    [v12 setObject:v15 forKeyedSubscript:@"AmountCurrency"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr1Copy, "bytes") + v14 + 1)) >> 16}];
    [v12 setObject:v16 forKeyedSubscript:@"Amount"];

    v14 = unsignedShortValue + 12;
  }

  if (([bitmapCopy unsignedShortValue] & 2) != 0)
  {
    v17 = [ifr1Copy subdataWithOffset:v14 length:7];
    [v12 setObject:v17 forKeyedSubscript:@"EndStation"];

    v14 += 7;
  }

  if (([bitmapCopy unsignedShortValue] & 4) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr1Copy, "bytes") + v14) & 0x1F}];
    [v12 setObject:v18 forKeyedSubscript:@"TTIpeId"];

    ++v14;
  }

  if (([bitmapCopy unsignedShortValue] & 8) != 0)
  {
    v19 = [ifr1Copy subdataWithOffset:v14 length:7];
    [v12 setObject:v19 forKeyedSubscript:@"StartStation"];

    v14 += 7;
  }

  if (([bitmapCopy unsignedShortValue] & 0x20) != 0)
  {
    v20 = [ifr1Copy subdataWithOffset:v14 length:7];
    asHexString = [v20 asHexString];
    [v12 setObject:asHexString forKeyedSubscript:@"TTRouteCode"];

    v14 += 7;
  }

  if (([bitmapCopy unsignedShortValue] & 0x80) != 0)
  {
    v22 = [ifr1Copy subdataWithOffset:v14 length:3];
    asHexString2 = [v22 asHexString];
    [v12 setObject:asHexString2 forKeyedSubscript:@"TTIin"];
  }

  return v12;
}

+ (id)deriveWalletData:(id)data withSector:(unsigned __int8)sector withValueGroup:(id)group
{
  sectorCopy = sector;
  dataCopy = data;
  groupCopy = group;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v10 = [KramerVCReader getCommutePlanIdentifier:dataCopy];
  [v9 setObject:v10 forKeyedSubscript:@"CommutePlanIdentifier"];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:(sectorCopy + 1)];
  v12 = [KramerVCReader getCommutePlanUniqueId:v10 withSector:v11];

  [v9 setObject:v12 forKeyedSubscript:@"CommutePlanUniqueIdentifier"];
  v13 = [dataCopy objectForKeyedSubscript:@"IPEValidityStart"];

  if (v13)
  {
    v14 = [dataCopy objectForKeyedSubscript:@"IPEValidityStart"];
    [v9 setObject:v14 forKeyedSubscript:@"CommutePlanValidityStartDate"];
  }

  v15 = [KramerVCReader getBestExpiry:dataCopy withLatestValueGroup:groupCopy];
  [v9 setObject:v15 forKeyedSubscript:@"CommutePlanValidityEndDate"];

  return v9;
}

+ (id)getLatestValueGroup:(id)group
{
  v23[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v4 = [groupCopy objectForKeyedSubscript:@"ValueGroupRecords"];
  v5 = [groupCopy objectForKeyedSubscript:@"IPEValueGroupFlag"];
  if (v5 && (v6 = v5, v7 = [v4 count], v6, v7))
  {
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"VGTrxSerialNum" ascending:0];
    v23[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v10 = [v4 sortedArrayUsingDescriptors:v9];

    firstObject = [v10 firstObject];
    v12 = [groupCopy objectForKeyedSubscript:@"IPEType"];
    unsignedShortValue = [v12 unsignedShortValue];

    if (unsignedShortValue == 22)
    {
      v14 = [firstObject objectForKeyedSubscript:@"VGRemainingPasses"];
      unsignedShortValue2 = [v14 unsignedShortValue];

      if (unsignedShortValue2)
      {
        v16 = [firstObject objectForKeyedSubscript:@"VGTYPFlags"];
        unsignedShortValue3 = [v16 unsignedShortValue];

        if ((unsignedShortValue3 & 2) == 0)
        {
          v19 = ATLLogObject(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEFAULT, "Warning: TYP22 VG has remainingPasses, but StoredPasses flag is not set.", v22, 2u);
          }
        }
      }
    }

    v20 = firstObject;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)getTopupCredits:(id)credits withIpeId:(unsigned __int16)id
{
  idCopy = id;
  v50[1] = *MEMORY[0x277D85DE8];
  creditsCopy = credits;
  v5 = [creditsCopy objectForKeyedSubscript:@"ValueGroupRecords"];
  if ([v5 count] < 2)
  {
    v49 = 0;
    goto LABEL_23;
  }

  v46 = creditsCopy;
  v6 = [creditsCopy objectForKeyedSubscript:@"VGNumValueRecords"];
  unsignedShortValue = [v6 unsignedShortValue];

  v49 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedShortValue];
  v44 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"VGTrxSerialNum" ascending:0];
  v50[0] = v44;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  v45 = v5;
  v9 = [v5 sortedArrayUsingDescriptors:v8];

  if ([v9 count] != 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v16 = @"VGRemainingRides";
    v47 = v9;
    while (1)
    {
      v17 = v16;
      v18 = v10;
      v19 = v11;
      v11 = [v9 objectAtIndexedSubscript:v13];

      v10 = [v9 objectAtIndexedSubscript:v13 + 1];

      v20 = [v11 objectForKeyedSubscript:@"VGTrxSerialNum"];
      LODWORD(v18) = [v20 unsignedShortValue];

      v21 = [v11 objectForKeyedSubscript:@"VGDateTimeStampRaw"];
      unsignedIntValue = [v21 unsignedIntValue];
      unsignedIntValue2 = unsignedIntValue;
      if (v18 >= 2)
      {
        if (!unsignedIntValue)
        {

          goto LABEL_20;
        }

        v24 = [v10 objectForKeyedSubscript:@"VGDateTimeStampRaw"];
        unsignedIntValue2 = [v24 unsignedIntValue];
      }

      if (unsignedIntValue2)
      {
        v25 = [v11 objectForKeyedSubscript:@"VGTrxType"];
        unsignedShortValue2 = [v25 unsignedShortValue];

        if (unsignedShortValue2 <= 5)
        {
          v16 = v17;
          if (((1 << unsignedShortValue2) & 0x32) != 0)
          {
            v27 = [v11 mutableCopy];

            v28 = [v11 objectForKeyedSubscript:@"VGValue"];

            if (v28)
            {
              v29 = [v11 objectForKeyedSubscript:@"VGValue"];
              shortValue = [v29 shortValue];
              v31 = [v10 objectForKeyedSubscript:@"VGValue"];
              v15 = shortValue - [v31 shortValue];
              v16 = v17;
            }

            v32 = [v11 objectForKeyedSubscript:v16];

            if (v32)
            {
              v33 = [v11 objectForKeyedSubscript:v16];
              shortValue2 = [v33 shortValue];
              v35 = [v10 objectForKeyedSubscript:v16];
              v15 = shortValue2 - [v35 shortValue];

              v16 = v17;
            }

            v36 = v15;
            v37 = [v11 objectForKeyedSubscript:@"VGRemainingPasses"];

            if (v37)
            {
              v38 = [v11 objectForKeyedSubscript:@"VGRemainingPasses"];
              shortValue3 = [v38 shortValue];
              v40 = [v10 objectForKeyedSubscript:@"VGRemainingPasses"];
              v36 = shortValue3 - [v40 shortValue];

              v16 = v17;
            }

            v15 = v36;
            v41 = [MEMORY[0x277CCABB0] numberWithShort:v36];
            [v27 setObject:v41 forKeyedSubscript:@"VGTopupCredit"];

            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:idCopy];
            [v27 setObject:v42 forKeyedSubscript:@"VGIpePointer"];

            [v49 addObject:v27];
            v12 = v27;
            v9 = v47;
          }

          goto LABEL_21;
        }
      }

LABEL_20:
      v16 = v17;
LABEL_21:
      v13 = ++v14;
      if ([v9 count] - 1 <= v14)
      {
        goto LABEL_22;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
LABEL_22:

  v5 = v45;
  creditsCopy = v46;
LABEL_23:

  return v49;
}

+ (id)getBestExpiry:(id)expiry withLatestValueGroup:(id)group
{
  v25 = *MEMORY[0x277D85DE8];
  expiryCopy = expiry;
  groupCopy = group;
  v7 = [expiryCopy objectForKeyedSubscript:@"IPEType"];
  unsignedShortValue = [v7 unsignedShortValue];

  v9 = [expiryCopy objectForKeyedSubscript:@"IPEExpiryDate"];
  unsignedShortValue2 = [v9 unsignedShortValue];

  if (unsignedShortValue > 21)
  {
    if (unsignedShortValue == 22)
    {
      v17 = [expiryCopy objectForKeyedSubscript:@"IPEExpiryTime"];
      unsignedShortValue3 = [v17 unsignedShortValue];

      if (groupCopy)
      {
        v18 = [groupCopy objectForKeyedSubscript:@"VGExpiryCurrentRaw"];
        unsignedShortValue4 = [v18 unsignedShortValue];

        if (unsignedShortValue4)
        {
          unsignedShortValue2 = unsignedShortValue4;
        }

        else
        {
          v20 = [groupCopy objectForKeyedSubscript:@"VGExpiryStoredPassRaw"];
          unsignedShortValue5 = [v20 unsignedShortValue];

          if (unsignedShortValue5)
          {
            unsignedShortValue2 = unsignedShortValue5;
          }

          else
          {
            unsignedShortValue2 = unsignedShortValue2;
          }
        }
      }
    }

    else
    {
      if (unsignedShortValue != 23)
      {
        goto LABEL_10;
      }

      v14 = [expiryCopy objectForKeyedSubscript:@"IPEExpiryTime"];
      unsignedShortValue3 = [v14 unsignedShortValue];
    }

    if (unsignedShortValue3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (unsignedShortValue != 2)
  {
    if (unsignedShortValue == 16)
    {
      v12 = [expiryCopy objectForKeyedSubscript:@"IPEEntitlementExpiryRaw"];
      unsignedShortValue6 = [v12 unsignedShortValue];

      if (unsignedShortValue6)
      {
        unsignedShortValue2 = unsignedShortValue6;
      }

      else
      {
        unsignedShortValue2 = unsignedShortValue2;
      }

      goto LABEL_20;
    }

LABEL_10:
    v16 = ATLLogObject(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 67109120;
      v24[1] = unsignedShortValue;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Warning: IPE Typ %d is not supported! Default expiry date from Directory Entry is used.", v24, 8u);
    }
  }

LABEL_20:
  unsignedShortValue3 = 1439;
LABEL_21:
  v22 = [KramerMappings getAbsoluteDateComponents:unsignedShortValue2 withTime:unsignedShortValue3];

  return v22;
}

+ (id)decodeDirectory:(id)directory
{
  v3 = MEMORY[0x277CBEB38];
  directoryCopy = directory;
  v5 = [v3 dictionaryWithCapacity:20];
  v6 = MEMORY[0x277CBEA90];
  bytes = [directoryCopy bytes];

  v8 = [v6 dataWithBytes:bytes + 37 length:5];
  v9 = [KramerVCReader getLogDirectoryEntry:v8];
  [v5 setObject:v9 forKeyedSubscript:@"LogDirectory"];

  return v5;
}

@end