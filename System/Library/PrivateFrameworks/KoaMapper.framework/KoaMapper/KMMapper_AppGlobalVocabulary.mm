@interface KMMapper_AppGlobalVocabulary
- (BOOL)_addItemWithItemId:(id)id fieldType:(int64_t)type values:(id)values error:(id *)error;
- (KMMapper_AppGlobalVocabulary)init;
- (id)_resolveFieldTypeFromIntentSlotName:(id)name;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_AppGlobalVocabulary

- (id)_resolveFieldTypeFromIntentSlotName:(id)name
{
  v4 = [name componentsSeparatedByString:@"."];
  if ([v4 count] >= 2)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:1];
    if ([v6 length] && objc_msgSend(v7, "length"))
    {
      v8 = [(NSDictionary *)self->_intentSlotToFieldTypeMap objectForKey:v6];
      v5 = [v8 objectForKey:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_addItemWithItemId:(id)id fieldType:(int64_t)type values:(id)values error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  builder = self->_builder;
  v35 = 0;
  v12 = [(KVItemBuilder *)builder setItemType:14 itemId:id error:&v35];
  v13 = v35;

  if (v12)
  {
    errorCopy = error;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = valuesCopy;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      while (2)
      {
        v18 = 0;
        v19 = v13;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v31 + 1) + 8 * v18);
          v21 = self->_builder;
          v30 = v19;
          v22 = [(KVItemBuilder *)v21 addFieldWithType:type value:v20 error:&v30];
          v13 = v30;

          if (!v22)
          {
            KMMapperSetBuilderError(errorCopy, v13);

            goto LABEL_14;
          }

          ++v18;
          v19 = v13;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v23 = v13;

    v24 = self->_builder;
    v29 = v13;
    v25 = [(KVItemBuilder *)v24 buildItemWithError:&v29];
    v13 = v29;

    v26 = v25 != 0;
    if (v25)
    {
      [(NSMutableArray *)self->_items addObject:v25];
    }

    else
    {
      KMMapperSetBuilderError(errorCopy, v13);
    }
  }

  else
  {
    KMMapperSetBuilderError(error, v13);
LABEL_14:
    v26 = 0;
  }

  return v26;
}

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v114 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = self->_items;
  self->_items = v8;

  v56 = objectCopy;
  v10 = [objectCopy arrayValueForKey:*MEMORY[0x277CD4488] expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
  v55 = v10;
  if (v10)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = v10;
    v52 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
    if (v52)
    {
      v54 = *v104;
      v53 = *MEMORY[0x277CD4468];
      v51 = *MEMORY[0x277CD44A0];
      v66 = *MEMORY[0x277CD4478];
      v60 = *MEMORY[0x277CD4498];
      v77 = *MEMORY[0x277CD4480];
      v76 = *MEMORY[0x277CD4470];
      selfCopy = self;
      errorCopy = error;
      do
      {
        v11 = 0;
        do
        {
          if (*v104 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v58 = v11;
          v12 = *(*(&v103 + 1) + 8 * v11);
          v67 = objc_opt_new();
          v13 = [v12 arrayValueForKey:v53 expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
          if (v13)
          {
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v62 = v13;
            v14 = [v62 countByEnumeratingWithState:&v99 objects:v112 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v100;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v100 != v16)
                  {
                    objc_enumerationMutation(v62);
                  }

                  v18 = [(KMMapper_AppGlobalVocabulary *)self _resolveFieldTypeFromIntentSlotName:*(*(&v99 + 1) + 8 * i)];
                  if (v18)
                  {
                    [v67 addObject:v18];
                  }
                }

                v15 = [v62 countByEnumeratingWithState:&v99 objects:v112 count:16];
              }

              while (v15);
            }

            error = errorCopy;
            v19 = [v12 arrayValueForKey:v51 expectedObjectsType:objc_opt_class() keyRequired:1 error:errorCopy];
            if (v19)
            {
              v20 = v19;
              v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v59 = v20;
              v68 = [v59 countByEnumeratingWithState:&v95 objects:v111 count:16];
              if (v68)
              {
                v64 = *v96;
                do
                {
                  for (j = 0; j != v68; ++j)
                  {
                    if (*v96 != v64)
                    {
                      objc_enumerationMutation(v59);
                    }

                    v22 = *(*(&v95 + 1) + 8 * j);
                    v23 = [v22 stringValueForKey:v66 error:error];
                    if ([v23 length])
                    {
                      v72 = j;
                      v24 = [v63 objectForKey:v23];
                      if (!v24)
                      {
                        v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
                        [v24 addObject:v23];
                        [v63 setObject:v24 forKey:v23];
                      }

                      v70 = v23;
                      v74 = [v22 arrayValueForKey:v60 expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
                      if (v74)
                      {
                        v93 = 0u;
                        v94 = 0u;
                        v91 = 0u;
                        v92 = 0u;
                        v25 = [v74 countByEnumeratingWithState:&v91 objects:v110 count:16];
                        if (v25)
                        {
                          v26 = v25;
                          v27 = *v92;
                          do
                          {
                            for (k = 0; k != v26; ++k)
                            {
                              if (*v92 != v27)
                              {
                                objc_enumerationMutation(v74);
                              }

                              v29 = *(*(&v91 + 1) + 8 * k);
                              v30 = [v29 stringValueForKey:v77 error:error];
                              if ([v30 length])
                              {
                                [v24 addObject:v30];
                              }

                              v31 = [v29 arrayValueForKey:v76 expectedObjectsType:objc_opt_class() keyRequired:0 error:error];
                              v87 = 0u;
                              v88 = 0u;
                              v89 = 0u;
                              v90 = 0u;
                              v32 = [v31 countByEnumeratingWithState:&v87 objects:v109 count:16];
                              if (v32)
                              {
                                v33 = v32;
                                v34 = *v88;
                                do
                                {
                                  for (m = 0; m != v33; ++m)
                                  {
                                    if (*v88 != v34)
                                    {
                                      objc_enumerationMutation(v31);
                                    }

                                    v36 = *(*(&v87 + 1) + 8 * m);
                                    if ([v36 length])
                                    {
                                      [v24 addObject:v36];
                                    }
                                  }

                                  v33 = [v31 countByEnumeratingWithState:&v87 objects:v109 count:16];
                                }

                                while (v33);
                              }

                              error = errorCopy;
                            }

                            v26 = [v74 countByEnumeratingWithState:&v91 objects:v110 count:16];
                          }

                          while (v26);
                        }
                      }

                      self = selfCopy;
                      v23 = v70;
                      j = v72;
                    }
                  }

                  v68 = [v59 countByEnumeratingWithState:&v95 objects:v111 count:16];
                }

                while (v68);
              }

              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v37 = v67;
              v69 = [v37 countByEnumeratingWithState:&v83 objects:v108 count:16];
              if (v69)
              {
                v38 = *v84;
                v73 = v37;
                v65 = *v84;
                do
                {
                  v39 = 0;
                  do
                  {
                    if (*v84 != v38)
                    {
                      objc_enumerationMutation(v37);
                    }

                    v71 = v39;
                    v75 = KVFieldTypeFromNumber();
                    v79 = 0u;
                    v80 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v40 = v63;
                    v41 = [v40 countByEnumeratingWithState:&v79 objects:v107 count:16];
                    if (v41)
                    {
                      v42 = v41;
                      v43 = *v80;
                      while (2)
                      {
                        for (n = 0; n != v42; ++n)
                        {
                          if (*v80 != v43)
                          {
                            objc_enumerationMutation(v40);
                          }

                          v45 = *(*(&v79 + 1) + 8 * n);
                          v46 = [v40 setValueForKey:v45 expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
                          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u#%@", v75, v45];
                          v48 = [(KMMapper_AppGlobalVocabulary *)self _addItemWithItemId:v47 fieldType:v75 values:v46 error:error];

                          if (!v48)
                          {

                            v49 = 0;
                            goto LABEL_70;
                          }

                          self = selfCopy;
                        }

                        v42 = [v40 countByEnumeratingWithState:&v79 objects:v107 count:16];
                        if (v42)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v39 = v71 + 1;
                    v37 = v73;
                    v38 = v65;
                  }

                  while (v71 + 1 != v69);
                  v69 = [v73 countByEnumeratingWithState:&v83 objects:v108 count:16];
                }

                while (v69);
              }
            }
          }

          v11 = v58 + 1;
        }

        while (v58 + 1 != v52);
        v52 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v52);
    }
  }

  v49 = self->_items;
LABEL_70:

  return v49;
}

- (KMMapper_AppGlobalVocabulary)init
{
  v20[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = KMMapper_AppGlobalVocabulary;
  v2 = [(KMMapper_AppGlobalVocabulary *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v19 = v6;
    v17[0] = @"playlistTitle";
    v7 = KVFieldTypeToNumber();
    v18[0] = v7;
    v17[1] = @"musicArtistName";
    v8 = KVFieldTypeToNumber();
    v18[1] = v8;
    v17[2] = @"audiobookTitle";
    v9 = KVFieldTypeToNumber();
    v18[2] = v9;
    v17[3] = @"audiobookAuthor";
    v10 = KVFieldTypeToNumber();
    v18[3] = v10;
    v17[4] = @"showTitle";
    v11 = KVFieldTypeToNumber();
    v18[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    intentSlotToFieldTypeMap = v2->_intentSlotToFieldTypeMap;
    v2->_intentSlotToFieldTypeMap = v13;
  }

  return v2;
}

@end