@interface HerculesFareTables
+ (unsigned)getProductIDWithTicketType:(unsigned __int8)type withOperatorID:(unsigned __int8)d withRiderClass:(unsigned __int8)class forCity:(id)city withProductCategory:(char *)category withError:(id *)error;
@end

@implementation HerculesFareTables

+ (unsigned)getProductIDWithTicketType:(unsigned __int8)type withOperatorID:(unsigned __int8)d withRiderClass:(unsigned __int8)class forCity:(id)city withProductCategory:(char *)category withError:(id *)error
{
  classCopy = class;
  dCopy = d;
  typeCopy = type;
  v68[1] = *MEMORY[0x277D85DE8];
  cityCopy = city;
  v14 = +[AppletConfigurationData getHerculesSettings];
  v15 = [v14 objectForKeyedSubscript:@"fareTables"];
  stringValue = [cityCopy stringValue];
  v17 = [v15 objectForKeyedSubscript:stringValue];

  if (v17)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBase64:v17];
    v20 = [v19 length];
    if (!v20 || (v20 = [v19 length], (v20 & 7) != 0))
    {
      v21 = ATLLogObject(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v56 = cityCopy;
        v57 = 2112;
        *v58 = v17;
        _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Invalid fare table for city %@ %@", buf, 0x16u);
      }

      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid fare table for city %@ %@", cityCopy, v17];
      v23 = v22;
      if (!error)
      {
        goto LABEL_32;
      }

      v24 = *error;
      v25 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v26 = *MEMORY[0x277CCA7E8];
        v61[0] = *MEMORY[0x277CCA450];
        v61[1] = v26;
        v62[0] = v22;
        v62[1] = v24;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v62;
        v29 = v61;
LABEL_25:
        v47 = 2;
LABEL_31:
        v49 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v47];
        *error = [v25 errorWithDomain:@"ATL" code:3 userInfo:v49];

LABEL_32:
LABEL_33:
        LODWORD(error) = 0;
        goto LABEL_34;
      }

      v63 = *MEMORY[0x277CCA450];
      v64 = v22;
      v27 = MEMORY[0x277CBEAC0];
      v28 = &v64;
      v29 = &v63;
      goto LABEL_30;
    }

    bytes = [v19 bytes];
    v40 = bytes + [v19 length];
    bytes2 = [v19 bytes];
    if (bytes2 >= v40)
    {
LABEL_20:
      v43 = ATLLogObject(bytes2);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v56 = cityCopy;
        v57 = 1024;
        *v58 = typeCopy;
        *&v58[4] = 1024;
        *&v58[6] = dCopy;
        v59 = 1024;
        v60 = classCopy;
        _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_ERROR, "No Product ID for City %@ TicketType %hhu OperatorID %hhu RiderClass %hhu", buf, 0x1Eu);
      }

      classCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No Product ID for City %@ TicketType %hhu OperatorID %hhu RiderClass %hhu", cityCopy, typeCopy, dCopy, classCopy];
      v23 = classCopy;
      if (!error)
      {
        goto LABEL_32;
      }

      v45 = *error;
      v25 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v46 = *MEMORY[0x277CCA7E8];
        v51[0] = *MEMORY[0x277CCA450];
        v51[1] = v46;
        v52[0] = classCopy;
        v52[1] = v45;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v52;
        v29 = v51;
        goto LABEL_25;
      }

      v53 = *MEMORY[0x277CCA450];
      v54 = classCopy;
      v27 = MEMORY[0x277CBEAC0];
      v28 = &v54;
      v29 = &v53;
LABEL_30:
      v47 = 1;
      goto LABEL_31;
    }

    v42 = (bytes2 + 4);
    while (*bytes2 != typeCopy || bytes2[1] != dCopy || bytes2[2] != classCopy)
    {
      bytes2 += 8;
      v42 += 2;
      if (bytes2 >= v40)
      {
        goto LABEL_20;
      }
    }

    *category = bytes2[3];
    LODWORD(error) = bswap32(*v42);
  }

  else
  {
    v30 = ATLLogObject(v18);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = cityCopy;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "No fare table for city %@", buf, 0xCu);
    }

    cityCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No fare table for city %@", cityCopy];
    v19 = cityCopy;
    if (error)
    {
      v32 = *error;
      v33 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v34 = *MEMORY[0x277CCA7E8];
        v65[0] = *MEMORY[0x277CCA450];
        v65[1] = v34;
        v66[0] = cityCopy;
        v66[1] = v32;
        v35 = MEMORY[0x277CBEAC0];
        v36 = v66;
        v37 = v65;
        v38 = 2;
      }

      else
      {
        v67 = *MEMORY[0x277CCA450];
        v68[0] = cityCopy;
        v35 = MEMORY[0x277CBEAC0];
        v36 = v68;
        v37 = &v67;
        v38 = 1;
      }

      v48 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
      *error = [v33 errorWithDomain:@"ATL" code:3 userInfo:v48];

      goto LABEL_33;
    }
  }

LABEL_34:

  return error;
}

@end