@interface MTEventFieldsUtil
+ (id)applyFieldsMap:(id)map data:(id)data sectionName:(id)name error:(id *)error;
+ (id)mapForSectionName:(id)name inFieldsMap:(id)map;
@end

@implementation MTEventFieldsUtil

+ (id)mapForSectionName:(id)name inFieldsMap:(id)map
{
  nameCopy = name;
  mapCopy = map;
  v7 = nameCopy;
  v8 = [mapCopy valueForKeyPath:v7];
  v9 = v7;
  if (!v8)
  {
    v9 = [@"custom." stringByAppendingString:v7];

    v8 = [mapCopy valueForKeyPath:v9];
  }

  return v8;
}

+ (id)applyFieldsMap:(id)map data:(id)data sectionName:(id)name error:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dataCopy = data;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [self mapForSectionName:nameCopy inFieldsMap:mapCopy];
    if (v25)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = nameCopy;
        v63 = mapCopy;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v61 = v25;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v75 objects:v84 count:16];
        if (!v27)
        {
          goto LABEL_44;
        }

        v28 = v27;
        v29 = *v76;
        v30 = 0x277CBE000uLL;
        v65 = v26;
        while (1)
        {
          v31 = 0;
          v66 = v28;
          do
          {
            if (*v76 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v75 + 1) + 8 * v31);
            v33 = [v26 objectForKeyedSubscript:v32];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v83 = v33;
              v34 = [*(v30 + 2656) arrayWithObjects:&v83 count:1];
              if (!v34)
              {
                goto LABEL_23;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (v34 = v33) == 0)
              {
LABEL_23:
                v36 = 0;
                goto LABEL_26;
              }
            }

            v35 = v29;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v36 = v34;
            v37 = [v36 countByEnumeratingWithState:&v71 objects:v82 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v72;
              while (2)
              {
                for (i = 0; i != v38; ++i)
                {
                  if (*v72 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = [dataCopy mt_nullableValueForKeyPathExt:*(*(&v71 + 1) + 8 * i)];
                  if (v41)
                  {
                    v42 = v41;
                    [dictionary setObject:v41 forKey:v32];

                    goto LABEL_25;
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v71 objects:v82 count:16];
                if (v38)
                {
                  continue;
                }

                break;
              }
            }

LABEL_25:

            v29 = v35;
            v26 = v65;
            v28 = v66;
            v30 = 0x277CBE000;
LABEL_26:

            ++v31;
          }

          while (v31 != v28);
          v28 = [v26 countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (!v28)
          {
            goto LABEL_44;
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = nameCopy;
        v63 = mapCopy;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v61 = v25;
        v50 = v25;
        v51 = [v50 countByEnumeratingWithState:&v67 objects:v81 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v68;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v68 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v67 + 1) + 8 * j);
              v56 = [dataCopy mt_nullableValueForKey:v55];
              if (v56)
              {
                [dictionary setObject:v56 forKey:v55];
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v67 objects:v81 count:16];
          }

          while (v52);
        }

LABEL_44:
        v25 = v61;

        v57 = dictionary;
        nameCopy = v62;
        if (![dictionary count])
        {
          v58 = MTMetricsKitOSLog(0);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v80 = v62;
            _os_log_impl(&dword_258F4B000, v58, OS_LOG_TYPE_ERROR, "MetricsKit: No matched fields found in data for fieldsMap section %@", buf, 0xCu);
          }
        }

        v43 = [dictionary copy];
        mapCopy = v63;
      }

      else
      {
        if (error)
        {
          MTError(106, @"fieldsMap section %@ in config sources is not valid", v44, v45, v46, v47, v48, v49, nameCopy);
          *error = v43 = 0;
        }

        else
        {
          v43 = 0;
        }

        v57 = dictionary;
      }
    }

    else if (error)
    {
      MTError(105, @"fieldsMap section %@ is not found in config sources", v19, v20, v21, v22, v23, v24, nameCopy);
      *error = v43 = 0;
    }

    else
    {
      v43 = 0;
    }
  }

  else if (error)
  {
    MTError(104, @"fieldsMap in config sources is not a dictionary object", v13, v14, v15, v16, v17, v18, v60);
    *error = v43 = 0;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

@end