@interface CKXVersionedReaderWriterStore
- (CKXVersionedReaderWriterStore)initWithBinding:(id)binding optionsByReaderWriterClass:(id)class;
- (id)createReaderForVersionIfNecessary:(unsigned __int8)necessary;
- (id)createWriterForVersionIfNecessary:(unsigned __int8)necessary;
@end

@implementation CKXVersionedReaderWriterStore

- (CKXVersionedReaderWriterStore)initWithBinding:(id)binding optionsByReaderWriterClass:(id)class
{
  bindingCopy = binding;
  classCopy = class;
  v12.receiver = self;
  v12.super_class = CKXVersionedReaderWriterStore;
  v9 = [(CKXVersionedReaderWriterStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binding, binding);
    objc_storeStrong(&v10->_optionsByReaderWriterClass, class);
  }

  return v10;
}

- (id)createReaderForVersionIfNecessary:(unsigned __int8)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();
  v17 = objc_msgSend_versionSupported_(v5, v6, necessaryCopy, v7, v8, v9, v10);
  v18 = 0;
  if ((necessaryCopy & 0xFE) == 2 && v17)
  {
    v19 = objc_msgSend_orcReader(self, v11, v12, v13, v14, v15, v16);

    if (!v19)
    {
      v26 = [CKXORCReader alloc];
      v33 = objc_msgSend_binding(self, v27, v28, v29, v30, v31, v32);
      v40 = objc_msgSend_schema(v33, v34, v35, v36, v37, v38, v39);
      v47 = objc_msgSend_binding(self, v41, v42, v43, v44, v45, v46);
      v54 = objc_msgSend_orcHelpers(v47, v48, v49, v50, v51, v52, v53);
      v61 = objc_msgSend_optionsByReaderWriterClass(self, v55, v56, v57, v58, v59, v60);
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v69 = objc_msgSend_objectForKeyedSubscript_(v61, v64, v63, v65, v66, v67, v68);
      v73 = objc_msgSend_initWithSchema_helpers_options_(v26, v70, v40, v54, v69, v71, v72);
      objc_msgSend_setOrcReader_(self, v74, v73, v75, v76, v77, v78);
    }

    v18 = objc_msgSend_orcReader(self, v20, v21, v22, v23, v24, v25);
  }

  return v18;
}

- (id)createWriterForVersionIfNecessary:(unsigned __int8)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();
  v17 = objc_msgSend_versionSupported_(v5, v6, necessaryCopy, v7, v8, v9, v10);
  v18 = 0;
  if ((necessaryCopy & 0xFE) == 2 && v17)
  {
    v19 = objc_msgSend_orcWriter(self, v11, v12, v13, v14, v15, v16);

    if (!v19)
    {
      v26 = [CKXORCWriter alloc];
      v33 = objc_msgSend_binding(self, v27, v28, v29, v30, v31, v32);
      v40 = objc_msgSend_schema(v33, v34, v35, v36, v37, v38, v39);
      v47 = objc_msgSend_binding(self, v41, v42, v43, v44, v45, v46);
      v54 = objc_msgSend_orcHelpers(v47, v48, v49, v50, v51, v52, v53);
      v61 = objc_msgSend_optionsByReaderWriterClass(self, v55, v56, v57, v58, v59, v60);
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v69 = objc_msgSend_objectForKeyedSubscript_(v61, v64, v63, v65, v66, v67, v68);
      v73 = objc_msgSend_initWithSchema_helpers_options_(v26, v70, v40, v54, v69, v71, v72);
      objc_msgSend_setOrcWriter_(self, v74, v73, v75, v76, v77, v78);
    }

    v18 = objc_msgSend_orcWriter(self, v20, v21, v22, v23, v24, v25);
  }

  return v18;
}

@end