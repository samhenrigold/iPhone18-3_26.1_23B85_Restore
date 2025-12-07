@interface HerculesMappings
+ (id)addBalancesFromVC:(id)c withTransceiver:(id)transceiver forCity:(id)city withError:(id *)error;
+ (id)getStationCode:(id)code withTransitInformation:(id)information forCity:(id)city;
+ (id)getStationMode:(id)mode forCity:(id)city;
+ (id)getTransitModality:(id)modality forCity:(id)city;
+ (id)mergeTaps:(id)taps forCity:(id)city outEnRoute:(id *)route;
+ (id)processEnRouteStatus:(id)status forTransitInformation:(id)information forCity:(id)city;
@end

@implementation HerculesMappings

+ (id)getStationCode:(id)code withTransitInformation:(id)information forCity:(id)city
{
  codeCopy = code;
  informationCopy = information;
  if ([city intValue] == 5)
  {
    v9 = [informationCopy u8:0];
    v10 = [informationCopy u16BE:1];
    v11 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(codeCopy, "length") + 3}];
    [v11 appendShortBE:v10];
    [v11 appendByte:v9];
    [v11 appendData:codeCopy];
  }

  else
  {
    v11 = codeCopy;
  }

  return v11;
}

+ (id)getStationMode:(id)mode forCity:(id)city
{
  modeCopy = mode;
  cityCopy = city;
  v7 = [modeCopy u8:3];
  intValue = [cityCopy intValue];

  v9 = @"StartStation";
  if (intValue == 1)
  {
    if (v7 == 2 || v7 == 12)
    {
      v9 = @"EndStation";
    }
  }

  else if (intValue == 7 && [modeCopy u16BE:1] == 4 && (v7 - 64) < 4u)
  {
    v9 = off_278875338[(v7 - 64)];
  }

  return v9;
}

+ (id)getTransitModality:(id)modality forCity:(id)city
{
  modalityCopy = modality;
  intValue = [city intValue];
  if (intValue == 1)
  {
    v10 = [modalityCopy u16BE:1];
    if (v10 <= 0x3D)
    {
      if (((1 << v10) & 0x2008020000200044) != 0)
      {
        goto LABEL_17;
      }

      if (((1 << v10) & 0x400038) != 0)
      {
LABEL_12:
        v9 = @"TransitTrain";
        goto LABEL_21;
      }

      if (v10 == 23)
      {
        v9 = @"PurchaseAdmissionParking";
        goto LABEL_21;
      }
    }

    v11 = v10 - 81;
    if (v11 <= 0x3C)
    {
      if (((1 << (v10 - 81)) & 0x1000010040100401) != 0)
      {
        goto LABEL_17;
      }

      if (v11 == 50)
      {
        goto LABEL_12;
      }
    }

    if (v10 != 71)
    {
      goto LABEL_20;
    }

LABEL_17:
    v9 = @"TransitBus";
    goto LABEL_21;
  }

  if (intValue == 5)
  {
    LOBYTE(v7) = [modalityCopy u8:0] - 1;
    if (v7 < 4u)
    {
      v7 = v7;
      v8 = off_278875380;
      goto LABEL_8;
    }

LABEL_20:
    v9 = @"Transit";
    goto LABEL_21;
  }

  if (intValue != 7)
  {
    goto LABEL_20;
  }

  LODWORD(v7) = [modalityCopy u8:0] - 2;
  if (v7 >= 5)
  {
    goto LABEL_20;
  }

  v7 = v7;
  v8 = off_278875358;
LABEL_8:
  v9 = v8[v7];
LABEL_21:

  return v9;
}

+ (id)processEnRouteStatus:(id)status forTransitInformation:(id)information forCity:(id)city
{
  statusCopy = status;
  informationCopy = information;
  cityCopy = city;
  v10 = [informationCopy u8:3];
  intValue = [cityCopy intValue];

  if (intValue == 1)
  {
    if (v10 <= 8)
    {
      if (v10 == 1)
      {
        goto LABEL_15;
      }

      if (v10 != 2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 == 9)
      {
        goto LABEL_17;
      }

      if (v10 != 12)
      {
        if (v10 != 11)
        {
          goto LABEL_20;
        }

LABEL_15:
        [statusCopy setObject:@"Start" forKeyedSubscript:@"InternalEnRouteStatus"];
        v12 = @"EnRoute";
        v13 = @"IgnoreReason";
LABEL_19:
        [statusCopy setObject:v12 forKeyedSubscript:v13];
        goto LABEL_20;
      }
    }

LABEL_14:
    v12 = @"End";
LABEL_18:
    v13 = @"InternalEnRouteStatus";
    goto LABEL_19;
  }

  if (intValue == 7 && [informationCopy u16BE:1] == 4)
  {
    if ((v10 - 63) <= 4)
    {
      if (((1 << (v10 - 63)) & 0x16) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if ((v10 - 61) > 1)
    {
      goto LABEL_20;
    }

LABEL_17:
    v12 = @"Cancel";
    goto LABEL_18;
  }

LABEL_20:

  return statusCopy;
}

+ (id)mergeTaps:(id)taps forCity:(id)city outEnRoute:(id *)route
{
  v33 = *MEMORY[0x277D85DE8];
  tapsCopy = taps;
  if ([tapsCopy count])
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [tapsCopy objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      if (v9)
      {
        if ((v7 & 1) != 0 && (([@"Start" isEqualToString:v9] & 1) != 0 || objc_msgSend(@"Transfer", "isEqualToString:", v9)))
        {
          *route = [v8 objectForKeyedSubscript:@"TypeDetail"];
        }

        if ([@"End" isEqualToString:v9])
        {
          v10 = v6 + 1;
          if (v6 + 1 < [tapsCopy count])
          {
            while (1)
            {
              v11 = [tapsCopy objectAtIndexedSubscript:v10];
              v12 = [v11 objectForKeyedSubscript:@"InternalEnRouteStatus"];
              if (v12)
              {
                break;
              }

              if (++v10 >= [tapsCopy count])
              {
                v7 = 0;
                v10 = v6;
                goto LABEL_15;
              }
            }

            v13 = v12;
            if (([@"End" isEqualToString:v12] & 1) == 0 && (objc_msgSend(@"Cancel", "isEqualToString:", v13) & 1) == 0)
            {
              v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
              [v14 setObject:@"Merged" forKeyedSubscript:@"IgnoreReason"];
              [tapsCopy setObject:v14 atIndexedSubscript:v10];
              [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
              v23 = v22 = v14;
              v15 = [v14 objectForKeyedSubscript:@"StartStation"];
              if (v15)
              {
                [v23 setObject:v15 forKeyedSubscript:@"StartStation"];
              }

              v21 = v15;
              [v23 setObject:v22 forKeyedSubscript:@"MergedStartRecord"];
              v16 = ATLLogObject([tapsCopy setObject:v23 atIndexedSubscript:v6]);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v22 objectForKeyedSubscript:@"SerialNumber"];
                v18 = [v23 objectForKeyedSubscript:@"SerialNumber"];
                *buf = 67109890;
                v26 = v10;
                v27 = 2112;
                v28 = v17;
                v29 = 1024;
                v30 = v6;
                v31 = 2112;
                v32 = v18;
                v19 = v18;
                _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Merged events %u (SN %@) --> %u (SN %@)", buf, 0x22u);
              }
            }

            v7 = 0;
            goto LABEL_15;
          }
        }

        v7 = 0;
      }

      v10 = v6;
LABEL_15:

      v6 = v10 + 1;
    }

    while (v10 + 1 < [tapsCopy count]);
  }

  return tapsCopy;
}

+ (id)addBalancesFromVC:(id)c withTransceiver:(id)transceiver forCity:(id)city withError:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  cCopy = c;
  transceiverCopy = transceiver;
  cityCopy = city;
  if (([cityCopy intValue] | 4) == 5)
  {
    v63 = 0;
    v12 = [HerculesVCReader readBalancesFromVC:transceiverCopy forCity:cityCopy withError:&v63];
    v14 = v63;
    v15 = 0x278874000uLL;
    if (v14 && +[AppletTranslator isInternalBuild])
    {
      if (error)
      {
        v16 = v14;
        v17 = 0;
        *error = v14;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      errorCopy = error;
      v52 = v14;
      v54 = cityCopy;
      v55 = transceiverCopy;
      v18 = [cCopy mutableCopy];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v53 = v12;
      v19 = v12;
      v20 = v18;
      v21 = v19;
      v22 = [v19 countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v60;
        v56 = v21;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v60 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v59 + 1) + 8 * i);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __72__HerculesMappings_addBalancesFromVC_withTransceiver_forCity_withError___block_invoke;
            v58[3] = &unk_278875318;
            v58[4] = v26;
            v28 = Find(cCopy, v58);
            if (v28)
            {
              if (+[(AppletTranslator *)*(v15])
              {
                v29 = [v26 isEqual:v28];
                if ((v29 & 1) == 0)
                {
                  v57 = v20;
                  v37 = ATLLogObject(v29);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v69 = v26;
                    v70 = 2112;
                    v71 = v28;
                    _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Found a balance discrepancy %@ %@", buf, 0x16u);
                  }

                  v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Found a balance discrepancy %@ %@", v26, v28];
                  v40 = v39;
                  cityCopy = v54;
                  transceiverCopy = v55;
                  v14 = v52;
                  v12 = v53;
                  if (errorCopy)
                  {
                    v41 = cCopy;
                    v42 = *errorCopy;
                    v43 = MEMORY[0x277CCA9B8];
                    if (*errorCopy)
                    {
                      v44 = *MEMORY[0x277CCA7E8];
                      v64[0] = *MEMORY[0x277CCA450];
                      v64[1] = v44;
                      v65[0] = v39;
                      v65[1] = v42;
                      v45 = MEMORY[0x277CBEAC0];
                      v46 = v65;
                      v47 = v64;
                      v48 = 2;
                    }

                    else
                    {
                      v66 = *MEMORY[0x277CCA450];
                      v67 = v39;
                      v45 = MEMORY[0x277CBEAC0];
                      v46 = &v67;
                      v47 = &v66;
                      v48 = 1;
                    }

                    v49 = [v45 dictionaryWithObjects:v46 forKeys:v47 count:v48];
                    *errorCopy = [v43 errorWithDomain:@"ATL" code:3 userInfo:v49];

                    cCopy = v41;
                  }

                  v17 = 0;
                  v36 = v57;
                  goto LABEL_31;
                }
              }
            }

            else
            {
              v30 = v24;
              v31 = v15;
              v32 = ATLLogObject(0);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                [v26 objectForKeyedSubscript:@"BalanceIdentifier"];
                v33 = v20;
                v35 = v34 = cCopy;
                *buf = 138412290;
                v69 = v35;
                _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEFAULT, "Adding missing balance %@", buf, 0xCu);

                cCopy = v34;
                v20 = v33;
                v21 = v56;
              }

              [v20 addObject:v26];
              v15 = v31;
              v24 = v30;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v59 objects:v72 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v17 = v20;
      cityCopy = v54;
      transceiverCopy = v55;
      v36 = v20;
      v14 = v52;
      v12 = v53;
LABEL_31:
    }
  }

  else
  {
    v17 = cCopy;
  }

  return v17;
}

uint64_t __72__HerculesMappings_addBalancesFromVC_withTransceiver_forCity_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"BalanceIdentifier"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"BalanceIdentifier"];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end