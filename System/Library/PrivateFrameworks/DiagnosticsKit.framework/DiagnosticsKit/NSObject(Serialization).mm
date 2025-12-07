@interface NSObject(Serialization)
- (id)dropNonSerializableDataWithError:()Serialization;
@end

@implementation NSObject(Serialization)

- (id)dropNonSerializableDataWithError:()Serialization
{
  v52 = *MEMORY[0x277D85DE8];
  if ([self isJSONSerializable])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = [MEMORY[0x277CBEB18] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    selfCopy3 = self;
    v8 = [selfCopy3 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v44;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(selfCopy3);
          }

          v12 = [*(*(&v43 + 1) + 8 * i) dropNonSerializableDataWithError:a3];
          if (v12)
          {
            [selfCopy2 addObject:v12];
          }
        }

        v9 = [selfCopy3 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v9);
    }

LABEL_13:

    if ([selfCopy2 count])
    {
      v13 = selfCopy2;
    }

    else
    {
      v13 = 0;
    }

    selfCopy4 = v13;
LABEL_29:

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    allKeys = [selfCopy2 allKeys];
    v16 = [allKeys countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(allKeys);
          }

          v20 = *(*(&v39 + 1) + 8 * j);
          v21 = [selfCopy2 objectForKeyedSubscript:v20];
          v22 = [v21 dropNonSerializableDataWithError:a3];
          [dictionary setObject:v22 forKeyedSubscript:v20];
        }

        v17 = [allKeys countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v17);
    }

    if ([dictionary count])
    {
      v23 = dictionary;
    }

    else
    {
      v23 = 0;
    }

    selfCopy4 = v23;

    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = [MEMORY[0x277CBEB58] set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    selfCopy3 = self;
    v25 = [selfCopy3 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v36;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(selfCopy3);
          }

          v29 = [*(*(&v35 + 1) + 8 * k) dropNonSerializableDataWithError:a3];
          if (v29)
          {
            [selfCopy2 addObject:v29];
          }
        }

        v26 = [selfCopy3 countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v26);
    }

    goto LABEL_13;
  }

  if ([self isSecureCodable])
  {
LABEL_2:
    selfCopy4 = self;
    goto LABEL_30;
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = DKErrorLocalizedDescriptionForCode(-1009);
  v32 = [v30 stringWithFormat:v31, self];

  if (a3)
  {
    v33 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA450];
    v48 = v32;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    *a3 = [v33 errorWithDomain:@"DKErrorDomain" code:-1009 userInfo:v34];
  }

  selfCopy4 = 0;
LABEL_30:

  return selfCopy4;
}

@end