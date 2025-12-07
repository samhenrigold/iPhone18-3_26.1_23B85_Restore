@interface MDLArchiveAssetResolver
- (BOOL)canResolveAssetNamed:(id)named;
- (MDLArchiveAssetResolver)initWithURL:(id)l;
- (id)assetNamesInArchive;
- (id)resolveAssetNamed:(id)named;
- (id)resolveInsideArchiveWithAssetNamed:(id)named;
- (void)addResolvedAssetNamed:(id)named offset:(unint64_t)offset fileSize:(unint64_t)size;
- (void)removeAssetNamed:(id)named;
@end

@implementation MDLArchiveAssetResolver

- (MDLArchiveAssetResolver)initWithURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = MDLArchiveAssetResolver;
  v6 = [(MDLArchiveAssetResolver *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveURL, l);
    rootUSDPath = v7->_rootUSDPath;
    v7->_rootUSDPath = 0;

    v9 = objc_opt_new();
    archiveDictionary = v7->_archiveDictionary;
    v7->_archiveDictionary = v9;

    v11 = v7;
  }

  return v7;
}

- (BOOL)canResolveAssetNamed:(id)named
{
  v12 = objc_msgSend_objectForKey_(self->_archiveDictionary, a2, named, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = v12 != 0;

  return v13;
}

- (void)addResolvedAssetNamed:(id)named offset:(unint64_t)offset fileSize:(unint64_t)size
{
  v61[2] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, offset, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v61[0] = v19;
  v30 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, size, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v61[1] = v30;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v61, 2, v36, v37, v38, v39, v32, v33, v34, v35);

  v51 = objc_msgSend_objectForKey_(self->_archiveDictionary, v41, namedCopy, v42, v47, v48, v49, v50, v43, v44, v45, v46);
  LODWORD(v19) = v51 == 0;

  if (v19)
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_archiveDictionary, v52, v40, namedCopy, v57, v58, v59, v60, v53, v54, v55, v56);
  }
}

- (id)resolveAssetNamed:(id)named
{
  namedCopy = named;
  v4 = namedCopy;
  v16 = objc_msgSend_UTF8String(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  sub_239E552A0(&v41, v16);
  pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter();
  v26 = *v43;
  v47 = *v43;
  v48 = v44;
  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  if (v46 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  v27 = MEMORY[0x277CBEBC0];
  if (v48 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, &v47, v18, v26, v23, v24, v25, v19, v20, v21, v22);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v47, v18, v26, v23, v24, v25, v19, v20, v21, v22);
  }
  v28 = ;
  v39 = objc_msgSend_fileURLWithPath_(v27, v29, v28, v30, v35, v36, v37, v38, v31, v32, v33, v34);

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  return v39;
}

- (id)resolveInsideArchiveWithAssetNamed:(id)named
{
  v12 = objc_msgSend_objectForKey_(self->_archiveDictionary, a2, named, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return v12;
}

- (id)assetNamesInArchive
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_239E9BB0C;
  v21 = sub_239E9BB1C;
  v22 = objc_opt_new();
  archiveDictionary = self->_archiveDictionary;
  v16[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v16[1] = 3221225472;
  v16[2] = sub_239E9BB24;
  v16[3] = &unk_278B40EB0;
  v16[4] = &v17;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(archiveDictionary, v5, v16, v6, v4, v11, v12, v13, v7, v8, v9, v10);
  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (void)removeAssetNamed:(id)named
{
  namedCopy = named;
  v14 = objc_msgSend_objectForKey_(self->_archiveDictionary, v4, namedCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);

  if (v14)
  {
    objc_msgSend_removeObjectForKey_(self->_archiveDictionary, v15, namedCopy, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  }
}

@end