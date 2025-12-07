@interface DERDecoder
+ (id)DecodeItem:(id)item outTag:(unint64_t *)tag outError:(id *)error;
+ (id)DecodeSequence:(id)sequence specification:(id)specification unordered:(BOOL)unordered ignoreUnknownTags:(BOOL)tags outError:(id *)error;
+ (id)dataWithSource:(id)source item:(id *)item;
@end

@implementation DERDecoder

+ (id)DecodeItem:(id)item outTag:(unint64_t *)tag outError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v26[0] = [itemCopy bytes];
  v26[1] = [itemCopy length];
  v24 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v8 = DERDecodeItemCtx(v26, &v24);
  if (v8)
  {
    v9 = v8;
    v10 = ATLLogObject(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v32 = itemCopy;
      v33 = 1024;
      v34 = v9;
      v35 = 2048;
      v36 = v24;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Failed to decode item %@ : %d (0x%llx)", buf, 0x1Cu);
    }

    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v11 initWithFormat:@"Failed to decode item %@ : %d (0x%llx)", itemCopy, v9, v24];
    v13 = v12;
    if (error)
    {
      v14 = *error;
      v15 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v16 = *MEMORY[0x277CCA7E8];
        v27[0] = *MEMORY[0x277CCA450];
        v27[1] = v16;
        v28[0] = v12;
        v28[1] = v14;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v28;
        v19 = v27;
        v20 = 2;
      }

      else
      {
        v29 = *MEMORY[0x277CCA450];
        v30 = v12;
        v17 = MEMORY[0x277CBEAC0];
        v18 = &v30;
        v19 = &v29;
        v20 = 1;
      }

      v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
      *error = [v15 errorWithDomain:@"ATL" code:8 userInfo:v22];
    }

    v21 = 0;
  }

  else
  {
    if (tag)
    {
      *tag = v24;
    }

    v21 = [DERDecoder dataWithSource:itemCopy item:v25];
  }

  return v21;
}

+ (id)DecodeSequence:(id)sequence specification:(id)specification unordered:(BOOL)unordered ignoreUnknownTags:(BOOL)tags outError:(id *)error
{
  unorderedCopy = unordered;
  v83 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  specificationCopy = specification;
  v54 = [specificationCopy count];
  v59 = malloc_type_calloc(v54, 0x10uLL, 0x1010040FDD9F14CuLL);
  v9 = malloc_type_calloc(v54, 0x20uLL, 0x1000040F0CC3A19uLL);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v10 = specificationCopy;
  v11 = [v10 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v63;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v62 + 1) + 8 * i);
        v17 = [v16 count];
        if (v17 != 4)
        {
          v36 = ATLLogObject(v17);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v71 = v16;
            _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Invalid spec item %@", buf, 0xCu);
          }

          v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid spec item %@", v16];
          v38 = v37;
          v23 = sequenceCopy;
          v22 = v59;
          if (error)
          {
            v39 = *error;
            v40 = MEMORY[0x277CCA9B8];
            if (*error)
            {
              v41 = *MEMORY[0x277CCA7E8];
              v78[0] = *MEMORY[0x277CCA450];
              v78[1] = v41;
              v79[0] = v37;
              v79[1] = v39;
              v42 = MEMORY[0x277CBEAC0];
              v43 = v79;
              v44 = v78;
              v45 = 2;
            }

            else
            {
              v80 = *MEMORY[0x277CCA450];
              v81 = v37;
              v42 = MEMORY[0x277CBEAC0];
              v43 = &v81;
              v44 = &v80;
              v45 = 1;
            }

            v52 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
            *error = [v40 errorWithDomain:@"ATL" code:8 userInfo:v52];
          }

          v28 = v10;
          goto LABEL_31;
        }

        v18 = &v9[32 * v13];
        *v18 = 16 * v13;
        v19 = [v16 objectAtIndexedSubscript:1];
        *(v18 + 1) = [v19 unsignedLongLongValue];

        v20 = [v16 objectAtIndexedSubscript:2];
        *(v18 + 8) = [v20 unsignedShortValue];

        v21 = [v16 objectAtIndexedSubscript:3];
        *(v18 + 3) = [v21 unsignedLongLongValue];

        ++v13;
      }

      v12 = [v10 countByEnumeratingWithState:&v62 objects:v82 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v60[1] = v9;
  v60[0] = "<autogen>";
  v61 = v54;
  BYTE2(v61) = unorderedCopy;
  BYTE3(v61) = tags;
  v23 = sequenceCopy;
  v22 = v59;
  v24 = DERParseSequenceSpec(sequenceCopy, v60, v59, 0);
  if (v24)
  {
    v25 = v24;
    v26 = ATLLogObject(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v71 = sequenceCopy;
      v72 = 2112;
      v73 = v10;
      v74 = 1024;
      v75 = unorderedCopy;
      v76 = 1024;
      v77 = v25;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Failed to decode seq %@ spec %@ unord %d ret %d", buf, 0x22u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode seq %@ spec %@ unord %d ret %d", sequenceCopy, v10, unorderedCopy, v25];
    v28 = v27;
    if (error)
    {
      v29 = *error;
      v30 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v31 = *MEMORY[0x277CCA7E8];
        v66[0] = *MEMORY[0x277CCA450];
        v66[1] = v31;
        v67[0] = v27;
        v67[1] = v29;
        v32 = MEMORY[0x277CBEAC0];
        v33 = v67;
        v34 = v66;
        v35 = 2;
      }

      else
      {
        v68 = *MEMORY[0x277CCA450];
        v69 = v27;
        v32 = MEMORY[0x277CBEAC0];
        v33 = &v69;
        v34 = &v68;
        v35 = 1;
      }

      v38 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
      *error = [v30 errorWithDomain:@"ATL" code:8 userInfo:v38];
LABEL_31:
    }

    v46 = 0;
  }

  else
  {
    v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v54];
    if (v54)
    {
      v47 = 0;
      v48 = v59;
      do
      {
        if (*(v48 + 1))
        {
          v49 = [v10 objectAtIndexedSubscript:v47];
          v50 = [v49 objectAtIndexedSubscript:0];

          v51 = [DERDecoder dataWithSource:sequenceCopy item:v48];
          [v46 setObject:v51 forKeyedSubscript:v50];
        }

        v48 += 16;
        ++v47;
      }

      while (v54 != v47);
      v22 = v59;
    }
  }

  free(v22);
  free(v9);

  return v46;
}

+ (id)dataWithSource:(id)source item:(id *)item
{
  var0 = item->var0;
  sourceCopy = source;
  v7 = [sourceCopy subdataWithRange:{&var0[-objc_msgSend(sourceCopy, "bytes")], item->var1}];

  return v7;
}

@end