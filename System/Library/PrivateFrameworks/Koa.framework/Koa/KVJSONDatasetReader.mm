@interface KVJSONDatasetReader
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KVJSONDatasetReader)initWithDictionary:(id)dictionary error:(id *)error;
- (NSString)description;
@end

@implementation KVJSONDatasetReader

- (NSString)description
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"dataset format: %@ info: %@", v2, v3, v4, @"JSON", self->_datasetInfo);

  return v5;
}

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = self->_items;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v48, v56, 16, v8);
  if (!v9)
  {
    v30 = 1;
    goto LABEL_24;
  }

  v10 = *v49;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v49 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v48 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = MEMORY[0x277CCA9B8];
        v54 = *MEMORY[0x277CCA450];
        v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Unexpected item outer dictionary: %@", v14, v15, v16, v12);
        v55 = v17;
        v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v55, &v54, 1, v33);
        v37 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v35, @"com.apple.koa.profile", 10, v34, v36);
        v38 = v37;
        if (error && v37)
        {
          v39 = v37;
          *error = v38;
        }

LABEL_21:

LABEL_22:
LABEL_23:
        v30 = 0;
        goto LABEL_24;
      }

      v17 = objc_msgSend_objectForKey_(v12, v13, @"item", v14, v15, v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277CCA450];
        v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"Unexpected item inner dictionary: %@", v19, v20, v21, v17);
        v53 = v34;
        v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v53, &v52, 1, v42);
        v45 = objc_msgSend_errorWithDomain_code_userInfo_(v40, v43, @"com.apple.koa.profile", 10, v38, v44);
        if (error && v45)
        {
          v45 = v45;
          *error = v45;
        }

        goto LABEL_21;
      }

      v22 = [KVItem alloc];
      v26 = objc_msgSend_initFromDictionary_error_(v22, v23, v17, error, v24, v25);
      if (!v26)
      {
        goto LABEL_22;
      }

      v27 = blockCopy[2](blockCopy, v26);

      if ((v27 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v48, v56, 16, v29);
    v30 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_24:

  return v30;
}

- (KVJSONDatasetReader)initWithDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = KVJSONDatasetReader;
  v11 = [(KVJSONDatasetReader *)&v53 init];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"datasetInfo", v8, v9, v10);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v34 = objc_msgSend_stringWithFormat_(v27, v30, @"Unexpected DatasetInfo dictionary class: %@", v31, v32, v33, v29);
    v57[0] = v34;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v57, &v56, 1, v36);
    v40 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v38, @"com.apple.koa.profile", 10, v37, v39);
    goto LABEL_9;
  }

  v13 = [KVDatasetInfo alloc];
  v17 = objc_msgSend_initFromDictionary_error_(v13, v14, v12, error, v15, v16);
  datasetInfo = v11->_datasetInfo;
  v11->_datasetInfo = v17;

  if (!v11->_datasetInfo)
  {
LABEL_13:

    v25 = 0;
    goto LABEL_14;
  }

  v23 = objc_msgSend_objectForKey_(dictionaryCopy, v19, @"items", v20, v21, v22);
  items = v11->_items;
  v11->_items = v23;

  if (v11->_items)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v43 = MEMORY[0x277CCACA8];
      v44 = objc_opt_class();
      v29 = NSStringFromClass(v44);
      v34 = objc_msgSend_stringWithFormat_(v43, v45, @"Unexpected items array class: %@", v46, v47, v48, v29);
      v55 = v34;
      v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v55, &v54, 1, v50);
      v40 = objc_msgSend_errorWithDomain_code_userInfo_(v42, v51, @"com.apple.koa.profile", 10, v37, v52);
LABEL_9:
      if (error && v40)
      {
        v40 = v40;
        *error = v40;
      }

      goto LABEL_13;
    }
  }

LABEL_7:
  v25 = v11;
LABEL_14:

  return v25;
}

@end