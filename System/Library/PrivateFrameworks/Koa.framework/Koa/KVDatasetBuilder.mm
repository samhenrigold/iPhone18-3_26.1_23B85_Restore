@interface KVDatasetBuilder
- (BOOL)_finishWithError:(id *)error;
- (KVDatasetBuilder)init;
- (KVDatasetBuilder)initWithDatasetInfo:(id)info writer:(id)writer error:(id *)error;
- (id)addItem:(id)item error:(id *)error;
@end

@implementation KVDatasetBuilder

- (BOOL)_finishWithError:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  itemCount = self->_itemCount;
  if (itemCount == objc_msgSend_itemCount(self->_datasetInfo, a2, error, v3, v4, v5))
  {
    v14 = objc_msgSend_finishDataset_(self->_writer, v9, error, v11, v12, v13);
    writer = self->_writer;
    self->_writer = 0;

    return v14;
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_msgSend_itemCount(self->_datasetInfo, v9, v10, v11, v12, v13);
    v24 = objc_msgSend_stringWithFormat_(v18, v20, @"Expected %u dataset items but %u were added.", v21, v22, v23, v19, self->_itemCount);
    v32[0] = v24;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v32, &v31, 1, v26);
    v30 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v28, @"com.apple.koa.profile", 8, v27, v29);
    if (error)
    {
      if (v30)
      {
        v30 = v30;
        *error = v30;
      }
    }

    return 0;
  }
}

- (id)addItem:(id)item error:(id *)error
{
  v73[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = objc_msgSend_itemType(itemCopy, v7, v8, v9, v10, v11);
    if (v12 == objc_msgSend_itemType(self->_datasetInfo, v13, v14, v15, v16, v17))
    {
      if (objc_msgSend_addItem_error_(self->_writer, v18, itemCopy, error, v21, v22))
      {
        ++self->_itemCount;
        selfCopy = self;
        goto LABEL_11;
      }
    }

    else
    {
      v40 = MEMORY[0x277CCA9B8];
      v70 = *MEMORY[0x277CCA450];
      v41 = MEMORY[0x277CCACA8];
      v42 = objc_msgSend_itemType(itemCopy, v18, v19, v20, v21, v22);
      if (v42 - 1 >= 0x1A)
      {
        v46 = 0;
      }

      else
      {
        v46 = v42;
      }

      v47 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v43, off_279803A58[v46], 4, v44, v45);
      v53 = objc_msgSend_itemType(self->_datasetInfo, v48, v49, v50, v51, v52);
      if (v53 - 1 >= 0x1A)
      {
        v57 = 0;
      }

      else
      {
        v57 = v53;
      }

      v58 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v54, off_279803A58[v57], 4, v55, v56);
      v63 = objc_msgSend_stringWithFormat_(v41, v59, @"Item has type %@ inconsistent with dataset itemType %@", v60, v61, v62, v47, v58);
      v71 = v63;
      v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v64, &v71, &v70, 1, v65);
      v69 = objc_msgSend_errorWithDomain_code_userInfo_(v40, v67, @"com.apple.koa.profile", 7, v66, v68);
      if (error && v69)
      {
        v69 = v69;
        *error = v69;
      }
    }
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v72 = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v32 = objc_msgSend_stringWithFormat_(v25, v28, @"Invalid item: %@ expected %@", v29, v30, v31, itemCopy, v27);
    v73[0] = v32;
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v73, &v72, 1, v34);
    v38 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v36, @"com.apple.koa.profile", 7, v35, v37);
    if (error && v38)
    {
      v38 = v38;
      *error = v38;
    }
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (KVDatasetBuilder)initWithDatasetInfo:(id)info writer:(id)writer error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  writerCopy = writer;
  v41.receiver = self;
  v41.super_class = KVDatasetBuilder;
  v11 = [(KVDatasetBuilder *)&v41 init];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v11->_datasetInfo, info);
  if (!v12->_datasetInfo)
  {
    datasetInfo = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  datasetInfo = v12->_datasetInfo;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = objc_msgSend_buffer(datasetInfo, v14, v18, v15, v16, v17);
  v27 = objc_msgSend_length(v21, v22, v23, v24, v25, v26) == 0;

  if (v27)
  {
    datasetInfo = v12->_datasetInfo;
LABEL_10:
    v32 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"Invalid DatasetInfo: %@", v15, v16, v17, datasetInfo);
    v43[0] = v33;
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v43, &v42, 1, v35);
    v39 = objc_msgSend_errorWithDomain_code_userInfo_(v32, v37, @"com.apple.koa.profile", 6, v36, v38);
    if (error && v39)
    {
      v39 = v39;
      *error = v39;
    }

    goto LABEL_14;
  }

  objc_storeStrong(&v12->_writer, writer);
  if (!objc_msgSend_startDataset_error_(v12->_writer, v28, infoCopy, error, v29, v30))
  {
LABEL_14:
    v31 = 0;
    goto LABEL_15;
  }

  v13->_itemCount = 0;
LABEL_7:
  v31 = v13;
LABEL_15:

  return v31;
}

- (KVDatasetBuilder)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

@end