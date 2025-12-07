@interface TSPFileResourceCache
+ (id)cacheDirectoryURLWithSignature:(id)signature sharedGroupContainer:(BOOL)container;
- (BOOL)cachedResourceExistsForInfo:(id)info;
- (NSString)description;
- (TSPFileResourceCache)initWithURL:(id)l;
- (id)fileURLInCacheForResourceInfo:(id)info;
- (void)cacheResourceAtURL:(id)l forInfo:(id)info copy:(BOOL)copy completionQueue:(id)queue completionHandler:(id)handler;
- (void)purge;
@end

@implementation TSPFileResourceCache

+ (id)cacheDirectoryURLWithSignature:(id)signature sharedGroupContainer:(BOOL)container
{
  containerCopy = container;
  signatureCopy = signature;
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
  v11 = v8;
  if (containerCopy)
  {
    v12 = objc_msgSend_tsu_containerURLForDefaultSecurityApplicationGroupIdentifier(v8, v9, v10);
    v14 = objc_msgSend_URLByAppendingPathComponent_(v12, v13, @"Library");
    v16 = objc_msgSend_URLByAppendingPathComponent_(v14, v15, @"Caches");

    if (v16)
    {
      goto LABEL_12;
    }

    if (qword_280A530B0 != -1)
    {
      sub_276BD6A74();
    }

    v18 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v11, v17, 13, 1, 0, 1, 0);
    v19 = v18;
    if (!v18)
    {
      v31 = MEMORY[0x277CBEBC0];
      v32 = NSTemporaryDirectory();
      v16 = objc_msgSend_tsu_fileURLWithPath_(v31, v33, v32);

      goto LABEL_11;
    }

    v20 = v18;
  }

  else
  {
    v21 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v8, v9, 13, 1, 0, 1, 0);
    v12 = v21;
    if (v21)
    {
      v12 = v21;
      v16 = v12;
      goto LABEL_12;
    }

    v22 = MEMORY[0x277CBEBC0];
    v19 = NSTemporaryDirectory();
    v20 = objc_msgSend_tsu_fileURLWithPath_(v22, v23, v19);
  }

  v16 = v20;
LABEL_11:

LABEL_12:
  if (!v16)
  {
    if (qword_280A530B0 != -1)
    {
      sub_276BD6A88();
    }

    v25 = MEMORY[0x277CBEBC0];
    v26 = NSTemporaryDirectory();
    v16 = objc_msgSend_tsu_fileURLWithPath_(v25, v27, v26);
  }

  v28 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v16, v24, signatureCopy, 1);
  v34 = 0;
  if ((objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v11, v29, v28, 1, 0, &v34) & 1) == 0 && qword_280A530B0 != -1)
  {
    sub_276BD6A9C();
  }

  return v28;
}

- (TSPFileResourceCache)initWithURL:(id)l
{
  lCopy = l;
  if ((objc_msgSend_isFileURL(lCopy, v6, v7) & 1) == 0)
  {
    sub_276BD6AC4(self);
  }

  v20.receiver = self;
  v20.super_class = TSPFileResourceCache;
  v8 = [(TSPFileResourceCache *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cacheURL, l);
    v10 = objc_opt_new();
    ioOperationQueue = v9->_ioOperationQueue;
    v9->_ioOperationQueue = v10;

    objc_msgSend_setMaxConcurrentOperationCount_(v9->_ioOperationQueue, v12, 1);
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v17 = objc_msgSend_stringWithFormat_(v13, v16, @"%@.IO", v15);
    objc_msgSend_setName_(v9->_ioOperationQueue, v18, v17);
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSPFileResourceCache;
  v4 = [(TSPFileResourceCache *)&v11 description];
  v7 = objc_msgSend_cacheURL(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ - cacheURL: (%@)", v4, v7);

  return v9;
}

- (id)fileURLInCacheForResourceInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_cacheURL(self, v5, v6);
  v10 = objc_msgSend_resourceIdentifier(infoCopy, v8, v9);

  v12 = objc_msgSend_URLByAppendingPathComponent_(v7, v11, v10);

  return v12;
}

- (BOOL)cachedResourceExistsForInfo:(id)info
{
  v3 = objc_msgSend_fileURLForResourceInfo_(self, a2, info);
  v5 = objc_msgSend_checkResourceIsReachableAndReturnError_(v3, v4, 0);

  return v5;
}

- (void)cacheResourceAtURL:(id)l forInfo:(id)info copy:(BOOL)copy completionQueue:(id)queue completionHandler:(id)handler
{
  v39[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  infoCopy = info;
  queueCopy = queue;
  handlerCopy = handler;
  v18 = objc_msgSend_fileURLInCacheForResourceInfo_(self, v16, infoCopy);
  if (v18)
  {
    copyCopy = copy;
    v19 = objc_msgSend_readingIntentWithURL_options_(MEMORY[0x277CCA9E0], v17, lCopy, 1);
    v21 = objc_msgSend_writingIntentWithURL_options_(MEMORY[0x277CCA9E0], v20, v18, 8);
    v31 = lCopy;
    if (qword_280A530B0 != -1)
    {
      sub_276BD6BA0();
    }

    v22 = objc_alloc(MEMORY[0x277CCA9E8]);
    v24 = objc_msgSend_initWithFilePresenter_(v22, v23, 0);
    v39[0] = v19;
    v39[1] = v21;
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v39, 2);
    ioOperationQueue = self->_ioOperationQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_276AE8930;
    v34[3] = &unk_27A6E70D8;
    v34[4] = self;
    v34[5] = v19;
    v34[6] = v21;
    v35 = infoCopy;
    v38 = copyCopy;
    v37 = handlerCopy;
    v36 = queueCopy;
    objc_msgSend_tsp_coordinateAccessWithIntents_queue_byAccessor_(v24, v28, v26, ioOperationQueue, v34);

    lCopy = v31;
  }

  else
  {
    if (qword_280A530B0 == -1)
    {
      if (!handlerCopy)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_276BD6BB4();
      if (!handlerCopy)
      {
        goto LABEL_5;
      }
    }

    if (queueCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276AE8BA0;
      block[3] = &unk_27A6E4E90;
      v33 = handlerCopy;
      dispatch_async(queueCopy, block);
    }

    else
    {
      v29 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, *MEMORY[0x277CCA738], -1002, 0);
      (*(handlerCopy + 2))(handlerCopy, 0, v29);
    }
  }

LABEL_5:
}

- (void)purge
{
  v32 = *MEMORY[0x277D85DE8];
  if (qword_280A530B0 != -1)
  {
    sub_276BD6BDC();
  }

  v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v7 = objc_msgSend_cacheURL(self, v5, v6);
  v9 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v4, v8, v7, 0, 1, 0);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v9;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v26, v31, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = objc_msgSend_writingIntentWithURL_options_(MEMORY[0x277CCA9E0], v12, *(*(&v26 + 1) + 8 * i), 1);
        v17 = objc_alloc(MEMORY[0x277CCA9E8]);
        v19 = objc_msgSend_initWithFilePresenter_(v17, v18, 0);
        v30 = v16;
        v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, &v30, 1);
        ioOperationQueue = self->_ioOperationQueue;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_276AE8E88;
        v25[3] = &unk_27A6E7100;
        v25[4] = v16;
        v25[5] = v4;
        v25[6] = self;
        objc_msgSend_tsp_coordinateAccessWithIntents_queue_byAccessor_(v19, v23, v21, ioOperationQueue, v25);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v26, v31, 16);
    }

    while (v13);
  }
}

@end