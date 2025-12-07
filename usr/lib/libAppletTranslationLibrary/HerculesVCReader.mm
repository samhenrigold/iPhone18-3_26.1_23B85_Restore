@interface HerculesVCReader
+ (id)getBalanceForPass:(unint64_t)pass withRiderClass:(unsigned __int8)class withTransitSummary:(id)summary withRTAData:(id)data forCity:(id)city withError:(id *)error;
+ (id)getCurrentTransitSummary:(id)summary withError:(id *)error;
+ (id)readBalancesFromVC:(id)c forCity:(id)city withError:(id *)error;
@end

@implementation HerculesVCReader

+ (id)readBalancesFromVC:(id)c forCity:(id)city withError:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  cCopy = c;
  cityCopy = city;
  v70 = 0;
  v9 = [MifareUtils getMcmDataDal:21071 withTransceiver:cCopy withError:&v70];
  v10 = v70;
  if (v10)
  {
    v11 = v10;
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
      goto LABEL_53;
    }

    goto LABEL_20;
  }

  v14 = [v9 length];
  if (v14 != 352)
  {
    v18 = ATLLogObject(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v9 length];
      *buf = 134217984;
      v84 = v19;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Unexpected RTA Data length %lu", buf, 0xCu);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected RTA Data length %lu", objc_msgSend(v9, "length")];
    v21 = v20;
    if (error)
    {
      v22 = *error;
      v23 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v79[0] = *MEMORY[0x277CCA450];
        v79[1] = v24;
        v80[0] = v20;
        v80[1] = v22;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v80;
        v27 = v79;
        v28 = 2;
      }

      else
      {
        v81 = *MEMORY[0x277CCA450];
        v82 = v20;
        v25 = MEMORY[0x277CBEAC0];
        v26 = &v82;
        v27 = &v81;
        v28 = 1;
      }

      v32 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
      *error = [v23 errorWithDomain:@"ATL" code:3 userInfo:v32];
    }

    v11 = 0;
LABEL_20:
    v13 = 0;
    goto LABEL_53;
  }

  v69 = 0;
  v15 = [MifareUtils getMcmDataDal:21327 withTransceiver:cCopy withError:&v69];
  v16 = v69;
  if (v16)
  {
    v11 = v16;
    if (error)
    {
      v17 = v16;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v68 = 0;
    v29 = [HerculesVCReader getCurrentTransitSummary:v15 withError:&v68];
    v30 = v68;
    if (v30)
    {
      v11 = v30;
      if (error)
      {
        v31 = v30;
        v13 = 0;
        *error = v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v66 = v29;
      bytes = [v29 bytes];
      v34 = *(bytes + 15) & 3;
      if (v34 == 1)
      {
        v35 = [MEMORY[0x277CBEA90] dataWithReversedBytes:objc_msgSend(v9 length:{"bytes"), 16}];
        bytes2 = [v35 bytes];
        v37 = *(bytes2 + 15) & 3;
        v64 = v35;
        if (v37 == 1)
        {
          v38 = [v35 u8:7];
          v65 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
          v39 = 0;
          while (1)
          {
            v67 = 0;
            v40 = [HerculesVCReader getBalanceForPass:v39 withRiderClass:v38 withTransitSummary:v66 withRTAData:v9 forCity:cityCopy withError:&v67];
            v41 = v67;
            v11 = v41;
            if (v41)
            {
              break;
            }

            if (v40)
            {
              [v65 addObject:v40];
            }

            if (++v39 == 6)
            {
              v13 = v65;
              v65 = v13;
              goto LABEL_50;
            }
          }

          if (error)
          {
            v60 = v41;
            *error = v11;
          }
        }

        else
        {
          v52 = ATLLogObject(bytes2);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v84) = v37;
            _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Unexpected Issue Object data format %hhu", buf, 8u);
          }

          v65 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Issue Object data format %hhu", v37, v64];
          if (error)
          {
            v53 = *error;
            v54 = MEMORY[0x277CCA9B8];
            if (*error)
            {
              v55 = *MEMORY[0x277CCA7E8];
              v71[0] = *MEMORY[0x277CCA450];
              v71[1] = v55;
              v72[0] = v65;
              v72[1] = v53;
              v56 = MEMORY[0x277CBEAC0];
              v57 = v72;
              v58 = v71;
              v59 = 2;
            }

            else
            {
              v73 = *MEMORY[0x277CCA450];
              v74 = v65;
              v56 = MEMORY[0x277CBEAC0];
              v57 = &v74;
              v58 = &v73;
              v59 = 1;
            }

            v62 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:v59];
            *error = [v54 errorWithDomain:@"ATL" code:3 userInfo:v62];
          }

          v11 = 0;
        }

        v13 = 0;
LABEL_50:
        v29 = v66;
      }

      else
      {
        v42 = ATLLogObject(bytes);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v84) = v34;
          _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Unexpected Transit Summary data format %hhu", buf, 8u);
        }

        v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Transit Summary data format %hhu", v34];
        v44 = v43;
        if (error)
        {
          v45 = *error;
          v46 = MEMORY[0x277CCA9B8];
          if (*error)
          {
            v47 = *MEMORY[0x277CCA7E8];
            v75[0] = *MEMORY[0x277CCA450];
            v75[1] = v47;
            v76[0] = v43;
            v76[1] = v45;
            v48 = MEMORY[0x277CBEAC0];
            v49 = v76;
            v50 = v75;
            v51 = 2;
          }

          else
          {
            v77 = *MEMORY[0x277CCA450];
            v78 = v43;
            v48 = MEMORY[0x277CBEAC0];
            v49 = &v78;
            v50 = &v77;
            v51 = 1;
          }

          v61 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:v51];
          *error = [v46 errorWithDomain:@"ATL" code:3 userInfo:v61];
        }

        v11 = 0;
        v13 = 0;
        v29 = v66;
      }
    }
  }

LABEL_53:

  return v13;
}

+ (id)getCurrentTransitSummary:(id)summary withError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  v6 = [summaryCopy length];
  if (v6 == 32)
  {
    v7 = *([summaryCopy bytes] + 13);
    v8 = v7 >> 4;
    v9 = *([summaryCopy bytes] + 29);
    v10 = v9 >> 4;
    if (v7 >> 4 <= v9 >> 4)
    {
      v11 = v9 >> 4;
    }

    else
    {
      v11 = v7 >> 4;
    }

    if (v8 >= v9 >> 4)
    {
      v12 = v9 >> 4;
    }

    else
    {
      v12 = v7 >> 4;
    }

    v13 = MEMORY[0x277CBEA90];
    bytes = [summaryCopy bytes];
    v15 = bytes;
    if (v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = v11 == 15;
    }

    if (v16)
    {
      if (v7 < 0x10)
      {
LABEL_21:
        v27 = [v13 dataWithReversedBytes:v15 length:16];
        goto LABEL_25;
      }
    }

    else if (v8 >= v10)
    {
      goto LABEL_21;
    }

    v15 = bytes + 16;
    goto LABEL_21;
  }

  v17 = ATLLogObject(v6);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v35 = [summaryCopy length];
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Unexpected Transit Summary length %lu", buf, 0xCu);
  }

  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Transit Summary length %lu", objc_msgSend(summaryCopy, "length")];
  v19 = v18;
  if (error)
  {
    v20 = *error;
    v21 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v30[0] = *MEMORY[0x277CCA450];
      v30[1] = v22;
      v31[0] = v18;
      v31[1] = v20;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v31;
      v25 = v30;
      v26 = 2;
    }

    else
    {
      v32 = *MEMORY[0x277CCA450];
      v33 = v18;
      v23 = MEMORY[0x277CBEAC0];
      v24 = &v33;
      v25 = &v32;
      v26 = 1;
    }

    v28 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    *error = [v21 errorWithDomain:@"ATL" code:3 userInfo:v28];
  }

  v27 = 0;
LABEL_25:

  return v27;
}

+ (id)getBalanceForPass:(unint64_t)pass withRiderClass:(unsigned __int8)class withTransitSummary:(id)summary withRTAData:(id)data forCity:(id)city withError:(id *)error
{
  classCopy = class;
  v68 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  dataCopy = data;
  cityCopy = city;
  if ((*([summaryCopy bytes] + 8 - pass) & 0x80000000) == 0 || (v16 = *(objc_msgSend(summaryCopy, "bytes") + 8 - pass) & 0x3F, v16 == 63))
  {
    v17 = 0;
    goto LABEL_4;
  }

  v19 = [MEMORY[0x277CBEA90] dataWithReversedBytes:objc_msgSend(dataCopy length:{"bytes") + 16 * pass + 64, 16}];
  bytes = [v19 bytes];
  v21 = *(bytes + 15) & 3;
  if (v21 != 1)
  {
    v28 = ATLLogObject(bytes);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v67 = v21;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Unexpected Pass Object data format %hhu", buf, 8u);
    }

    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Pass Object data format %hhu", v21];
    v26 = v29;
    if (error)
    {
      v30 = *error;
      v31 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v32 = *MEMORY[0x277CCA7E8];
        v62[0] = *MEMORY[0x277CCA450];
        v62[1] = v32;
        v63[0] = v29;
        v63[1] = v30;
        v33 = MEMORY[0x277CBEAC0];
        v34 = v63;
        v35 = v62;
        v36 = 2;
      }

      else
      {
        v64 = *MEMORY[0x277CCA450];
        v65 = v29;
        v33 = MEMORY[0x277CBEAC0];
        v34 = &v65;
        v35 = &v64;
        v36 = 1;
      }

      v39 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
      *error = [v31 errorWithDomain:@"ATL" code:3 userInfo:v39];
    }

    goto LABEL_21;
  }

  v22 = *([v19 bytes] + 14);
  v23 = *([v19 bytes] + 9);
  v55 = 0;
  v54 = 0;
  v24 = [HerculesFareTables getProductIDWithTicketType:v23 withOperatorID:v22 withRiderClass:classCopy forCity:cityCopy withProductCategory:&v55 withError:&v54];
  v25 = v54;
  v26 = v25;
  if (!v25)
  {
    if (v55 == 1)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v38 = 0;
      v37 = @"XXX";
    }

    else
    {
      if (v55 != 3)
      {
        v44 = ATLLogObject(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v67 = v55;
          _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_ERROR, "Unexpected product category %d", buf, 8u);
        }

        v45 = objc_alloc(MEMORY[0x277CCACA8]);
        v46 = [v45 initWithFormat:@"Unexpected product category %d", v55];
        v40 = v46;
        if (!error)
        {
          v17 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v47 = *error;
        v48 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v49 = *MEMORY[0x277CCA7E8];
          v58[0] = *MEMORY[0x277CCA450];
          v58[1] = v49;
          v59[0] = v46;
          v59[1] = v47;
          v50 = MEMORY[0x277CBEAC0];
          v51 = v59;
          v52 = v58;
          v53 = 2;
        }

        else
        {
          v60 = *MEMORY[0x277CCA450];
          v61 = v46;
          v50 = MEMORY[0x277CBEAC0];
          v51 = &v61;
          v52 = &v60;
          v53 = 1;
        }

        v41 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:v53];
        [v48 errorWithDomain:@"ATL" code:3 userInfo:v41];
        *error = v17 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v16 = bswap32(*([v19 bytes] + 10)) >> 13;
      v37 = @"USD";
      v38 = 2;
    }

    v56[0] = @"Balance";
    v57[0] = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v16 exponent:-v38 isNegative:0];
    v57[1] = v37;
    v40 = v57[0];
    v56[1] = @"BalanceCurrency";
    v56[2] = @"BalanceCurrencyExponent";
    v41 = [MEMORY[0x277CCABB0] numberWithShort:v38];
    v57[2] = v41;
    v56[3] = @"BalanceIdentifier";
    v42 = [MEMORY[0x277CBEA90] dataWithIntBE:v24];
    asHexString = [v42 asHexString];
    v57[3] = asHexString;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];

    goto LABEL_33;
  }

  if (!error)
  {
LABEL_21:
    v17 = 0;
    goto LABEL_35;
  }

  v27 = v25;
  v17 = 0;
  *error = v26;
LABEL_35:

LABEL_4:

  return v17;
}

@end