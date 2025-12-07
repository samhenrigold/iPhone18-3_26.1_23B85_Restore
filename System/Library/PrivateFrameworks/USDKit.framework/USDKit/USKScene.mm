@interface USKScene
+ (id)newSceneWithData:(id)data name:(id)name error:(id *)error;
+ (id)newSceneWithURL:(id)l error:(id *)error;
- (BOOL)exportToURL:(id)l;
- (BOOL)setCustomMetadata:(id)metadata value:(id)value;
- (BOOL)setDictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey value:(id)value;
- (BOOL)setMetadataWithKey:(id)key value:(id)value;
- (USKNode)rootNode;
- (USKScene)init;
- (USKScene)initWithData:(id)data name:(id)name error:(id *)error;
- (USKScene)initWithUsdStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(id)stage :UsdStage>)a3 fileURL:;
- (id)customMetadataWithKey:(id)key;
- (id)dictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey;
- (id)initSceneFromURL:(id)l error:(id *)error;
- (id)loadedNodeIterator;
- (id)metadata;
- (id)metadataWithKey:(id)key;
- (id)newNodeAtPath:(id)path type:(id)type specifier:(id)specifier;
- (id)nodeAtPath:(id)path;
- (id)nodeIterator;
- (id)objectAtPath:(id)path;
- (id)propertyAtPath:(id)path;
- (id)subLayerOffsets;
- (id)subLayerPaths;
- (void)addSubLayerWithPath:(id)path offset:(id)offset;
- (void)dealloc;
- (void)dumpUSDA;
- (void)save;
- (void)saveAndCreateARKitUSDZPackageWithURL:(id)l;
- (void)saveAndCreateUSDZPackageWithURL:(id)l;
@end

@implementation USKScene

+ (id)newSceneWithURL:(id)l error:(id *)error
{
  lCopy = l;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v7 = sub_270339E4C(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    v8 = 0;
  }

  else
  {
    v30[0] = 0;
    v30[1] = 0;
    sub_27033F578(v30);
    sub_27033F5F4(v30);
    v29 = 0;
    v12 = objc_msgSend_path(lCopy, v9, v10, v11);
    v13 = v12;
    v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
    sub_2703122D4(&__p, v17);
    pxrInternal__aapl__pxrReserved__::UsdStage::CreateNew();
    if (v28 < 0)
    {
      operator delete(__p);
    }

    sub_27033F644(v30);
    if (v29)
    {
      v21 = [USKScene alloc];
      v26 = v29;
      sub_27036CABC(&v26);
      v8 = objc_msgSend_initWithUsdStage_fileURL_(v21, v22, &v26, lCopy);
      sub_270312AB8(&v26, v23, v24);
    }

    else if (error)
    {
      sub_27033F694(v30, v18, v19, v20);
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }

    sub_270312AB8(&v29, v18, v19);
    sub_27033F57C(v30);
  }

  return v8;
}

+ (id)newSceneWithData:(id)data name:(id)name error:(id *)error
{
  dataCopy = data;
  nameCopy = name;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v10 = sub_270339E4C(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }
  }

  else
  {
    v12 = dataCopy;
    v16 = objc_msgSend_bytes(v12, v13, v14, v15);
    v20 = objc_msgSend_length(dataCopy, v17, v18, v19);
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"memory://%@?address=%lx&size=%ld", v22, nameCopy, v16, v20);
    v43[0] = 0;
    v43[1] = 0;
    v44 = 0;
    v23 = v10;
    v27 = objc_msgSend_UTF8String(v23, v24, v25, v26);
    sub_2703122D4(v43, v27);
    v42[0] = 0;
    v42[1] = 0;
    sub_27033F578(v42);
    sub_27033F5F4(v42);
    v41 = 0;
    v28 = nameCopy;
    v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
    sub_2703122D4(__p, v32);
    pxrInternal__aapl__pxrReserved__::SdfLayer::OpenAsAnonymous();
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    v38 = 0;
    sub_27033EA1C(__p, &v41);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    sub_27036CB50(__p);
    sub_27033F644(v42);
    if (error)
    {
      *error = sub_27033F694(v42, v33, v34, v35);
    }

    sub_270312AB8(&v38, v33, v34);
    sub_27033E9EC(&v41, v36, v37);
    sub_27033F57C(v42);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }
  }

  return 0;
}

- (USKScene)init
{
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v4 = sub_270339E4C(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = USKScene;
  v7 = [(USKScene *)&v13 init];
  if (!v7)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  refBase = v7->_usdStage._refBase;
  v7->_usdStage._refBase = v12;
  v12 = 0;
  sub_27036BFF4(v7 + 24, refBase, v9);
  sub_270312AB8(&v12, v10, v11);
  if (v7->_usdStage._refBase)
  {
    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
    self = v7;
  }

LABEL_6:

  return selfCopy;
}

- (id)initSceneFromURL:(id)l error:(id *)error
{
  lCopy = l;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v9 = sub_270339E4C(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    goto LABEL_5;
  }

  v35.receiver = self;
  v35.super_class = USKScene;
  v12 = [(USKScene *)&v35 init];
  self = v12;
  if (!v12 || (objc_storeStrong(&v12->_fileURL, l), !objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v13, error, v14)))
  {
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  v34[0] = 0;
  v34[1] = 0;
  sub_27033F578(v34);
  sub_27033F5F4(v34);
  v18 = objc_msgSend_path(lCopy, v15, v16, v17);
  v19 = v18;
  v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
  sub_2703122D4(&__p, v23);
  pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  refBase = self->_usdStage._refBase;
  self->_usdStage._refBase = v33;
  v33 = 0;
  sub_27036BFF4(self + 24, refBase, v25);
  sub_270312AB8(&v33, v26, v27);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  sub_27033F644(v34);
  if (self->_usdStage._refBase)
  {
    selfCopy = self;
  }

  else if (error)
  {
    sub_27033F694(v34, v28, v29, v30);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  sub_27033F57C(v34);
LABEL_6:

  return selfCopy;
}

- (USKScene)initWithData:(id)data name:(id)name error:(id *)error
{
  dataCopy = data;
  nameCopy = name;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v11 = sub_270339E4C(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    v12 = 0;
    selfCopy = self;
  }

  else
  {
    v51.receiver = self;
    v51.super_class = USKScene;
    v14 = [(USKScene *)&v51 init];
    selfCopy = v14;
    if (!v14)
    {
      v12 = 0;
      goto LABEL_8;
    }

    fileURL = v14->_fileURL;
    v14->_fileURL = 0;

    v17 = dataCopy;
    v21 = objc_msgSend_bytes(v17, v18, v19, v20);
    v25 = objc_msgSend_length(dataCopy, v22, v23, v24);
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"memory://%@?address=%lx&size=%ld", v27, nameCopy, v21, v25);
    v49[0] = 0;
    v49[1] = 0;
    v50 = 0;
    v28 = v11;
    v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
    sub_2703122D4(v49, v32);
    v48[0] = 0;
    v48[1] = 0;
    sub_27033F578(v48);
    sub_27033F5F4(v48);
    v47 = 0;
    v33 = nameCopy;
    v37 = objc_msgSend_UTF8String(v33, v34, v35, v36);
    sub_2703122D4(__p, v37);
    pxrInternal__aapl__pxrReserved__::SdfLayer::OpenAsAnonymous();
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    sub_27033EA1C(__p, &v47);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    refBase = selfCopy->_usdStage._refBase;
    selfCopy->_usdStage._refBase = v44;
    v44 = 0;
    sub_27036BFF4(selfCopy + 24, refBase, v39);
    sub_27036CBA0(&v44, __p, v40);
    sub_27033F644(v48);
    if (selfCopy->_usdStage._refBase)
    {
      v12 = selfCopy;
    }

    else if (error)
    {
      sub_27033F694(v48, v41, v42, v43);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    sub_27033E9EC(&v47, v41, v42);
    sub_27033F57C(v48);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }
  }

LABEL_8:
  return v12;
}

- (USKScene)initWithUsdStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(id)stage :UsdStage>)a3 fileURL:
{
  stageCopy = stage;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v9 = sub_270339E4C(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    goto LABEL_5;
  }

  v16.receiver = self;
  v16.super_class = USKScene;
  v12 = [(USKScene *)&v16 init];
  p_isa = &v12->super.super.isa;
  if (!v12)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  if (*a3._refBase)
  {
    refBase = v12->_usdStage._refBase;
    v12->_usdStage._refBase = *a3._refBase;
    sub_27036CABC(a3._refBase);
    sub_27036BFF4(p_isa + 24, refBase, v15);
    objc_storeStrong(p_isa + 4, stage);
    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
    self = v12;
  }

LABEL_6:

  return selfCopy;
}

- (BOOL)exportToURL:(id)l
{
  lCopy = l;
  sub_270312588(&self->_usdStage._refBase);
  v5 = lCopy;
  v9 = objc_msgSend_fileSystemRepresentation(v5, v6, v7, v8);
  sub_2703122D4(&__p, v9);
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v10 = pxrInternal__aapl__pxrReserved__::UsdStage::Export();
  sub_27033EB54(&v12, v13[0]);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v10;
}

- (void)save
{
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v4, v2);
  v3 = sub_27033AAD4(v4);
  MEMORY[0x27439F070](v3, 0);
  sub_27036CB50(v4);
}

- (void)saveAndCreateUSDZPackageWithURL:(id)l
{
  lCopy = l;
  v5 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v38, v5);
  v6 = sub_27033AAD4(v38);
  MEMORY[0x27439F070](v6, 0);
  sub_27036CB50(v38);
  refBase = self->_usdStage._refBase;
  self->_usdStage._refBase = 0;
  v38[0] = 0;
  sub_27036BFF4(self + 24, refBase, v8);
  sub_270312AB8(v38, v9, v10);
  fileURL = self->_fileURL;
  if (fileURL)
  {
    v15 = objc_msgSend_fileSystemRepresentation(fileURL, v11, v12, v13);
    sub_2703122D4(v36, v15);
    MEMORY[0x27439E030](v38, v36);
    v16 = lCopy;
    v20 = objc_msgSend_fileSystemRepresentation(v16, v17, v18, v19);
    sub_2703122D4(&v34, v20);
    pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewUsdzPackage();
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v24 = objc_msgSend_path(self->_fileURL, v21, v22, v23);
    v25 = v24;
    v29 = objc_msgSend_UTF8String(v25, v26, v27, v28);
    sub_2703122D4(v38, v29);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v30 = self->_usdStage._refBase;
    self->_usdStage._refBase = v36[0];
    v36[0] = 0;
    sub_27036BFF4(self + 24, v30, v31);
    sub_270312AB8(v36, v32, v33);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }
  }

  else
  {
    NSLog(&cfstr_UnableToSaveBe.isa);
  }
}

- (void)saveAndCreateARKitUSDZPackageWithURL:(id)l
{
  lCopy = l;
  v5 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v38, v5);
  v6 = sub_27033AAD4(v38);
  MEMORY[0x27439F070](v6, 0);
  sub_27036CB50(v38);
  refBase = self->_usdStage._refBase;
  self->_usdStage._refBase = 0;
  v38[0] = 0;
  sub_27036BFF4(self + 24, refBase, v8);
  sub_270312AB8(v38, v9, v10);
  fileURL = self->_fileURL;
  if (fileURL)
  {
    v15 = objc_msgSend_fileSystemRepresentation(fileURL, v11, v12, v13);
    sub_2703122D4(v36, v15);
    MEMORY[0x27439E030](v38, v36);
    v16 = lCopy;
    v20 = objc_msgSend_fileSystemRepresentation(v16, v17, v18, v19);
    sub_2703122D4(&v34, v20);
    pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewARKitUsdzPackage();
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v24 = objc_msgSend_path(self->_fileURL, v21, v22, v23);
    v25 = v24;
    v29 = objc_msgSend_UTF8String(v25, v26, v27, v28);
    sub_2703122D4(v38, v29);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v30 = self->_usdStage._refBase;
    self->_usdStage._refBase = v36[0];
    v36[0] = 0;
    sub_27036BFF4(self + 24, v30, v31);
    sub_270312AB8(v36, v32, v33);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }
  }

  else
  {
    NSLog(&cfstr_UnableToSaveBe.isa);
  }
}

- (id)nodeAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v5 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(pathCopy, v6, v7, v8);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v19, v5, v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v18);
    if (sub_27033E778(&v19))
    {
      v9 = [USKNode alloc];
      v13 = v19;
      v14 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v15, &v20);
      sub_270325728(&v16, &v20 + 1);
      v17 = *(&v20 + 1);
      if ((BYTE8(v20) & 7) != 0 && (atomic_fetch_add_explicit((*(&v20 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v9, v10, &v13, self);
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v15);
      if (v14)
      {
        sub_270314574(v14);
      }
    }

    else
    {
      v11 = 0;
    }

    if ((BYTE8(v20) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v20 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v20);
    if (*(&v19 + 1))
    {
      sub_270314574(*(&v19 + 1));
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)propertyAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v23 = 0u;
    v24 = 0u;
    v5 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(pathCopy, v6, v7, v8);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&v19, v5, v18);
    sub_27033B548(&v19, &v23);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v21);
    if (v20)
    {
      sub_270314574(v20);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v18);
    if (sub_27033E778(&v23))
    {
      v9 = [USKProperty alloc];
      v13 = v23;
      v14 = *(&v23 + 1);
      if (*(&v23 + 1))
      {
        atomic_fetch_add_explicit((*(&v23 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v15, &v24);
      sub_270325728(&v16, &v24 + 1);
      v17 = *(&v24 + 1);
      if ((BYTE8(v24) & 7) != 0 && (atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = objc_msgSend_initWithUsdProperty_withSceneOwner_(v9, v10, &v13, self);
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v15);
      if (v14)
      {
        sub_270314574(v14);
      }
    }

    else
    {
      v11 = 0;
    }

    if ((BYTE8(v24) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v24);
    if (*(&v23 + 1))
    {
      sub_270314574(*(&v23 + 1));
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)objectAtPath:(id)path
{
  pathCopy = path;
  v30 = 0u;
  v31 = 0u;
  v8 = sub_270312588(&self->_usdStage._refBase);
  if (pathCopy)
  {
    objc_msgSend_path(pathCopy, v5, v6, v7);
  }

  else
  {
    *&v28 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&v30, v8, &v28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v28);
  v28 = 0u;
  v29 = 0u;
  sub_27033BA38(&v30, &v28);
  if (sub_27033E778(&v28))
  {
    v9 = [USKNode alloc];
    v23 = v28;
    v24 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v25, &v29);
    sub_270325728(&v26, &v29 + 1);
    v27 = *(&v29 + 1);
    if ((BYTE8(v29) & 7) != 0 && (atomic_fetch_add_explicit((*(&v29 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v9, v10, &v23, self);
    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v25);
    v12 = v24;
    if (v24)
    {
LABEL_13:
      sub_270314574(v12);
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    sub_27033B548(&v30, &v21);
    if (sub_27033E778(&v21))
    {
      v14 = [USKProperty alloc];
      v16 = v21;
      v17 = *(&v21 + 1);
      if (*(&v21 + 1))
      {
        atomic_fetch_add_explicit((*(&v21 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v18, &v22);
      sub_270325728(&v19, &v22 + 1);
      v20 = *(&v22 + 1);
      if ((BYTE8(v22) & 7) != 0 && (atomic_fetch_add_explicit((*(&v22 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = objc_msgSend_initWithUsdProperty_withSceneOwner_(v14, v15, &v16, self);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v18);
      if (v17)
      {
        sub_270314574(v17);
      }
    }

    else
    {
      v11 = 0;
    }

    if ((BYTE8(v22) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v22 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v22);
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      goto LABEL_13;
    }
  }

  if ((BYTE8(v29) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v29 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v29);
  if (*(&v28 + 1))
  {
    sub_270314574(*(&v28 + 1));
  }

  if ((BYTE8(v31) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v31 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v31);
  if (*(&v30 + 1))
  {
    sub_270314574(*(&v30 + 1));
  }

  return v11;
}

- (id)newNodeAtPath:(id)path type:(id)type specifier:(id)specifier
{
  v47 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  typeCopy = type;
  specifierCopy = specifier;
  if (!pathCopy)
  {
    v15 = 0;
    goto LABEL_56;
  }

  *&v40[8] = 0u;
  v41 = 0uLL;
  *&v40[8] = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (!specifierCopy || @"SdfSpecifierDef" == specifierCopy)
  {
    v16 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(pathCopy, v17, v18, v19);
    v39 = 0;
    pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v42, v16, v40, &v39);
    *&v40[8] = v42;
    if (*&v40[16])
    {
      sub_270314574(*&v40[16]);
    }

    *&v40[16] = v43;
    v43 = 0;
    sub_270325804(&v41, &v44);
    sub_27032585C(&v41 + 4, &v45);
    if ((BYTE8(v41) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v41 + 1) = v46;
    v46 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v44);
    if (v43)
    {
      sub_270314574(v43);
    }

    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    goto LABEL_30;
  }

  if (@"SdfSpecifierOver" == specifierCopy)
  {
    v20 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(pathCopy, v21, v22, v23);
    pxrInternal__aapl__pxrReserved__::UsdStage::OverridePrim(&v42, v20, v40);
    *&v40[8] = v42;
    if (*&v40[16])
    {
      sub_270314574(*&v40[16]);
    }

    *&v40[16] = v43;
    v43 = 0;
    sub_270325804(&v41, &v44);
    sub_27032585C(&v41 + 4, &v45);
    if ((BYTE8(v41) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v41 + 1) = v46;
    v46 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v44);
    if (v43)
    {
      sub_270314574(v43);
    }

    goto LABEL_29;
  }

  if (@"SdfSpecifierClass" == specifierCopy)
  {
    v11 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(pathCopy, v12, v13, v14);
    pxrInternal__aapl__pxrReserved__::UsdStage::CreateClassPrim(&v42, v11, v40);
    *&v40[8] = v42;
    if (*&v40[16])
    {
      sub_270314574(*&v40[16]);
    }

    *&v40[16] = v43;
    v43 = 0;
    sub_270325804(&v41, &v44);
    sub_27032585C(&v41 + 4, &v45);
    if ((BYTE8(v41) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v41 + 1) = v46;
    v46 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v44);
    if (v43)
    {
      sub_270314574(v43);
    }

LABEL_29:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_30:
    sub_2703143D8(v40);
  }

  if (sub_27033E778(&v40[8]))
  {
    if (typeCopy)
    {
      MEMORY[0x27439E610](v40, "typeName");
      v26 = objc_msgSend_tokenWithNodeType_(USKToken, v24, typeCopy, v25);
      v30 = v26;
      if (v26)
      {
        objc_msgSend_token(v26, v27, v28, v29);
        v42 = v39;
        v43 = &off_288040298 + 1;
        if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v42 &= 0xFFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v39 = 0;
        v42 = 0;
        v43 = &off_288040298 + 1;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadata(&v40[8], v40, &v42);
      sub_270311D34(&v42);
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v40[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v31 = [USKNode alloc];
    v34 = *&v40[8];
    v35 = *&v40[16];
    if (*&v40[16])
    {
      atomic_fetch_add_explicit((*&v40[16] + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v36, &v41);
    sub_270325728(&v37, &v41 + 1);
    v38 = *(&v41 + 1);
    if ((BYTE8(v41) & 7) != 0 && (atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v38 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v31, v32, &v34, self);
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v36);
    if (v35)
    {
      sub_270314574(v35);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((BYTE8(v41) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v41);
  if (*&v40[16])
  {
    sub_270314574(*&v40[16]);
  }

LABEL_56:

  return v15;
}

- (USKNode)rootNode
{
  v13 = 0u;
  v14 = 0u;
  v3 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v13, v3);
  v4 = [USKNode alloc];
  v8 = v13;
  v9 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 48), 1uLL, memory_order_relaxed);
  }

  sub_2703256DC(&v10, &v14);
  sub_270325728(&v11, &v14 + 1);
  v12 = *(&v14 + 1);
  if ((BYTE8(v14) & 7) != 0 && (atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v12 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v4, v5, &v8, self);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v10);
  if (v9)
  {
    sub_270314574(v9);
  }

  if ((BYTE8(v14) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);
  if (*(&v13 + 1))
  {
    sub_270314574(*(&v13 + 1));
  }

  return v6;
}

- (void)addSubLayerWithPath:(id)path offset:(id)offset
{
  pathCopy = path;
  offsetCopy = offset;
  if (pathCopy)
  {
    v24[0] = 0;
    v24[1] = 0;
    v8 = sub_270312588(&self->_usdStage._refBase);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v24, v8);
    sub_27033AAD4(v24);
    v9 = pathCopy;
    v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
    sub_2703122D4(__p, v13);
    pxrInternal__aapl__pxrReserved__::SdfLayer::InsertSubLayerPath();
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (offsetCopy)
    {
      v14 = sub_27033AAD4(v24);
      objc_msgSend_sdfLayerOffset(offsetCopy, v15, v16, v17);
      v21[0] = v18;
      v21[1] = v19;
      v20 = sub_27033AAD4(v24);
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerOffsets(__p, v20);
      pxrInternal__aapl__pxrReserved__::SdfLayer::SetSubLayerOffset(v14, v21);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    sub_27036CB50(v24);
  }
}

- (id)subLayerPaths
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__dst, v2);
  v3 = sub_27033AAD4(&__dst);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(&v20, v3);
  sub_27036CB50(&__dst);
  if (sub_27033ED5C(&v20) && v20 && (v4 = (*(*v20 + 112))(v20, v22), v4[1] != *v4))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = sub_27033EDE0(&v20);
    sub_27033C6E8(&v20, &v23);
    if (v6)
    {
      v7 = &v20;
    }

    else
    {
      v7 = 0;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(&__dst + 1) = v7;
    v28 = 0;
    v25 = v23;
    v26 = v24;
    sub_27033EE64(&v17, &__dst, &v25, v24);
    v10 = v17;
    for (i = v18; v10 != i; v10 += 24)
    {
      v28 = 0;
      __dst = 0uLL;
      if (*(v10 + 23) < 0)
      {
        sub_2703129A8(&__dst, *v10, *(v10 + 8));
      }

      else
      {
        v12 = *v10;
        v28 = *(v10 + 16);
        __dst = v12;
      }

      if (v28 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, &__dst, v9);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, __dst, v9);
      }
      v13 = ;
      objc_msgSend_addObject_(v5, v14, v13, v15);

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst);
      }
    }

    *&__dst = &v17;
    sub_27033E88C(&__dst);
  }

  else
  {
    v5 = 0;
  }

  if (v21)
  {
    sub_270312A4C(v21);
  }

  return v5;
}

- (id)subLayerOffsets
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v19, v2);
  v3 = sub_27033AAD4(&v19);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerOffsets(&__p, v3);
  v4 = v20;
  if (v20 && atomic_fetch_add_explicit((v20 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = __p;
  if (v22 == __p)
  {
    v6 = 0;
    if (__p)
    {
LABEL_8:
      v22 = v5;
      operator delete(v5);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = __p;
    v8 = v22;
    if (__p != v22)
    {
      do
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = [USKLayerOffset alloc];
        v15 = objc_msgSend_initWithSdfLayerOffset_(v11, v12, v13, v14, v9, v10);
        objc_msgSend_addObject_(v6, v16, v15, v17);

        v7 += 2;
      }

      while (v7 != v8);
    }

    v5 = __p;
    if (__p)
    {
      goto LABEL_8;
    }
  }

  return v6;
}

- (id)metadata
{
  v54[2] = *MEMORY[0x277D85DE8];
  v34 = objc_opt_new();
  v3 = objc_opt_new();
  v49 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v4 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v40, v4);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetAllAuthoredMetadata(&v49, &v40);
  if ((BYTE8(v41) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v41);
  if (*(&v40 + 1))
  {
    sub_270314574(*(&v40 + 1));
  }

  v6 = v49;
  if (v49 != v50)
  {
    v32 = *(MEMORY[0x277D82818] + 64);
    v33 = *MEMORY[0x277D82818];
    v31 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v53 = 0;
      v54[0] = 0;
      v54[1] = 0;
      v7 = sub_27033E814(&v53, v6 + 4);
      v10 = MEMORY[0x277CCACA8];
      if ((v53 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v53 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v12 = objc_msgSend_stringWithUTF8String_(v10, v8, EmptyString, v9);
      objc_msgSend_addObject_(v34, v13, v12, v14);

      v48 = 0;
      v15 = atomic_load(off_279E01258);
      if (!v15)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
      }

      __p[0] = 0;
      *&v40 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v15, v54, __p);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v48, &v40);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v48)
      {
        v16 = [USKData alloc];
        sub_270313C14(v51, v54);
        v35 = v48;
        if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v35 &= 0xFFFFFFFFFFFFFFF8;
        }

        v18 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v16, v17, v51, &v35, self);
        objc_msgSend_addObject_(v3, v19, v18, v20);

        if ((v35 & 7) != 0)
        {
          atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270311D34(v51);
      }

      else
      {
        v47 = 0;
        v45 = 0u;
        memset(v46, 0, sizeof(v46));
        *v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        memset(v42, 0, sizeof(v42));
        v40 = 0u;
        sub_27031AD44(&v40);
        pxrInternal__aapl__pxrReserved__::operator<<();
        v21 = [USKData alloc];
        std::stringbuf::str();
        MEMORY[0x27439E620](&v39, __p);
        v52[0] = v39;
        v52[1] = &off_288040298 + 1;
        if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v52[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        MEMORY[0x27439E610](&v36, "token");
        v23 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v21, v22, v52, &v36, self);
        objc_msgSend_addObject_(v3, v24, v23, v25);

        if ((v36 & 7) != 0)
        {
          atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270311D34(v52);
        if ((v39 & 7) != 0)
        {
          atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        *&v40 = v33;
        *(&v40 + *(v33 - 24)) = v32;
        *&v41 = v31;
        *(&v41 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43[1]);
        }

        *(&v41 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v42);
        std::iostream::~basic_iostream();
        MEMORY[0x27439F390](v46);
      }

      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_270311D34(v54);
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v6[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v6[2];
          v28 = *v27 == v6;
          v6 = v27;
        }

        while (!v28);
      }

      v6 = v27;
    }

    while (v27 != v50);
  }

  v29 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x277CBEAC0], v5, v3, v34);
  sub_27033F310(&v49, v50[0]);

  return v29;
}

- (BOOL)setMetadataWithKey:(id)key value:(id)value
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v30 = 0;
  v8 = keyCopy;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  MEMORY[0x27439E610](&v30, v12);
  v35._storage = 0;
  v35._info._ptrAndBits = 0;
  v13 = atomic_load(off_279E01258);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsRegistered(v13, &v30, &v35))
  {
    if (!v35._info._ptrAndBits)
    {
      goto LABEL_10;
    }

    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v35);
    if (valueCopy)
    {
      objc_msgSend_value(valueCopy, v14, v15, v16);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v19 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v33);
    sub_270311D34(&v33);
    if (Type != v19)
    {
      v33 = 0;
      v34 = 0;
      if (valueCopy)
      {
        objc_msgSend_value(valueCopy, v20, v21, v22);
      }

      else
      {
        v31[0] = 0;
        v31[1] = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf(v32, v31, &v35, v21);
      sub_270312D2C(&v33, v32);
      sub_270311D34(v32);
      sub_270311D34(v31);
      v28 = sub_270312588(&self->_usdStage._refBase);
      v27 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadata(v28, &v30, &v33);
    }

    else
    {
LABEL_10:
      v26 = sub_270312588(&self->_usdStage._refBase);
      if (valueCopy)
      {
        objc_msgSend_value(valueCopy, v23, v24, v25);
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      v27 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadata(v26, &v30, &v33);
    }

    v18 = v27;
    sub_270311D34(&v33);
  }

  else
  {
    v18 = 0;
  }

  sub_270311D34(&v35);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v18;
}

- (BOOL)setDictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey value:(id)value
{
  v50 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dictionaryKeyCopy = dictionaryKey;
  valueCopy = value;
  v44 = 0;
  v11 = keyCopy;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v44, v15);
  v43 = 0;
  v16 = dictionaryKeyCopy;
  v20 = objc_msgSend_UTF8String(dictionaryKeyCopy, v17, v18, v19);
  MEMORY[0x27439E610](&v43, v20);
  v47._storage = 0;
  v47._info._ptrAndBits = 0;
  v21 = atomic_load(off_279E01258);
  if (!v21)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  IsRegistered = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsRegistered(v21, &v44, &v47);
  if (!IsRegistered)
  {
    v23 = 0;
    goto LABEL_37;
  }

  if ((v47._info._ptrAndBits & 4) != 0)
  {
    IsRegistered = (*((v47._info._ptrAndBits & 0xFFFFFFFFFFFFFFF8) + 168))(&v47);
  }

  if ((v43 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsRegistered);
  }

  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  p_storage = &ValueAtPath->_storage;
  if (ValueAtPath)
  {
    if (&v47 != ValueAtPath)
    {
      if (!ValueAtPath->_info._ptrAndBits)
      {
        if (v47._info._ptrAndBits && (v47._info._ptrAndBits & 3) != 3)
        {
          (*((v47._info._ptrAndBits & 0xFFFFFFFFFFFFFFF8) + 32))(&v47);
        }

        v47._info._ptrAndBits = 0;
        goto LABEL_28;
      }

      v48 = 0;
      v49 = 0;
      sub_270311CD0(&v48, &v47);
      v26 = p_storage[1];
      v27 = ~*p_storage[1].__data;
      v47._info._ptrAndBits = v26;
      if ((v27 & 3) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 24))(p_storage, &v47);
      }

      else
      {
        v47._storage = *p_storage;
      }

      if (v49)
      {
        (*(v49 + 32))(&v48);
      }
    }
  }

  else
  {
    v49 = 0;
    sub_270312D2C(&v47, &v48);
    sub_270311D34(&v48);
  }

  if (v47._info._ptrAndBits)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v47);
    if (valueCopy)
    {
      objc_msgSend_value(valueCopy, v28, v29, v30);
    }

    else
    {
      v48 = 0;
      v49 = 0;
    }

    v32 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v48);
    sub_270311D34(&v48);
    if (Type != v32)
    {
      v48 = 0;
      v49 = 0;
      if (valueCopy)
      {
        objc_msgSend_value(valueCopy, v33, v34, v35);
      }

      else
      {
        v45[0] = 0;
        v45[1] = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf(v46, v45, &v47, v34);
      sub_270312D2C(&v48, v46);
      sub_270311D34(v46);
      sub_270311D34(v45);
      v41 = sub_270312588(&self->_usdStage._refBase);
      v40 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadataByDictKey(v41, &v44, &v43, &v48);
      goto LABEL_36;
    }
  }

LABEL_28:
  v39 = sub_270312588(&self->_usdStage._refBase);
  if (valueCopy)
  {
    objc_msgSend_value(valueCopy, v36, v37, v38);
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v40 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadataByDictKey(v39, &v44, &v43, &v48);
LABEL_36:
  v23 = v40;
  sub_270311D34(&v48);
LABEL_37:
  sub_270311D34(&v47);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v23;
}

- (BOOL)setCustomMetadata:(id)metadata value:(id)value
{
  v24[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  valueCopy = value;
  v23 = 0;
  v8 = atomic_load(MEMORY[0x277D86540]);
  if (!v8)
  {
    sub_27033E930(MEMORY[0x277D86540]);
  }

  v9 = *(v8 + 80);
  v23 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v10;
    }
  }

  v22 = 0;
  v11 = metadataCopy;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v22, v15);
  v19 = sub_270312588(&self->_usdStage._refBase);
  if (valueCopy)
  {
    objc_msgSend_value(valueCopy, v16, v17, v18);
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
  }

  v20 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadataByDictKey(v19, &v23, &v22, v24);
  sub_270311D34(v24);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v20;
}

- (id)metadataWithKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v21 = 0;
  v22 = 0;
  v5 = sub_270312588(&self->_usdStage._refBase);
  v6 = keyCopy;
  v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
  MEMORY[0x27439E610](&v19, v10);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadata(v5, &v19, &v21);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v22)
  {
    v11 = [USKData alloc];
    sub_270313C14(v20, &v21);
    v12 = atomic_load(off_279E01258);
    if (!v12)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v16 = 0;
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v21);
    v19 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v12, &Type, &v16);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v18, &v19);
    v14 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v11, v13, v20, &v18, self);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v20);
  }

  else
  {
    v14 = 0;
  }

  sub_270311D34(&v21);

  return v14;
}

- (id)dictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey
{
  v52 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dictionaryKeyCopy = dictionaryKey;
  v50 = 0;
  v51 = 0;
  v8 = sub_270312588(&self->_usdStage._refBase);
  v9 = keyCopy;
  v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
  MEMORY[0x27439E610](&v46, v13);
  v14 = dictionaryKeyCopy;
  v18 = objc_msgSend_UTF8String(dictionaryKeyCopy, v15, v16, v17);
  MEMORY[0x27439E610](&v42, v18);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadataByDictKey(v8, &v46, &v42, &v50);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v51)
  {
    if (sub_27033E064(&v50))
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v19 = sub_27031DE50(&v50);
      v20 = *(v19 + 16);
      v42 = *v19;
      v43 = v20;
      v21 = *(v19 + 32);
      v44 = v21;
      if (v21)
      {
        v22 = (v21 - 1);
        if (*(&v43 + 1))
        {
          v22 = *(&v43 + 1);
        }

        atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
      }

      v41 = 0;
      memset(v40, 0, sizeof(v40));
      sub_27032EFE8(&v42);
      v23 = v44;
      sub_27032EFE8(&v42);
      v24 = &v44[3 * v42];
      if (v23 == v24)
      {
LABEL_36:
        *(&v46 + 1) = off_288041120;
        sub_270318A3C(&v46, v40);
      }

      while (1)
      {
        __dst[1] = 0;
        v39 = 0;
        __dst[0] = 0;
        if (*(v23 + 23) < 0)
        {
          sub_2703129A8(__dst, *v23, *(v23 + 1));
        }

        else
        {
          v25 = *v23;
          v39 = *(v23 + 2);
          *__dst = v25;
        }

        __p[0] = 0;
        __p[1] = 0;
        v37 = 0;
        if (*(v23 + 47) < 0)
        {
          sub_2703129A8(__p, *(v23 + 3), *(v23 + 4));
        }

        else
        {
          *__p = *(v23 + 24);
          v37 = *(v23 + 5);
        }

        if (SHIBYTE(v37) < 0)
        {
          if (!__p[1])
          {
LABEL_22:
            v26 = sub_270312588(&self->_usdStage._refBase);
            pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v34, v26);
            pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer();
            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = v46;
            v37 = v47;
            HIBYTE(v47) = 0;
            LOBYTE(v46) = 0;
            v27 = v35;
            if (v35 && atomic_fetch_add_explicit((v35 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*v27 + 8))(v27);
            }
          }
        }

        else if (!HIBYTE(v37))
        {
          goto LABEL_22;
        }

        MEMORY[0x27439E040](&v46, __dst, __p);
        sub_27033F384(v40, &v46);
        if (v49 < 0)
        {
          operator delete(v48);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(__dst[0]);
        }

        v23 += 3;
        if (v23 == v24)
        {
          goto LABEL_36;
        }
      }
    }

    v28 = [USKData alloc];
    sub_270313C14(v45, &v50);
    v29 = atomic_load(off_279E01258);
    if (!v29)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    *&v42 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v50);
    *&v40[0] = 0;
    *&v46 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v29, &v42, v40);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v33, &v46);
    v31 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v28, v30, v45, &v33, self);
    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v40[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v40[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v45);
  }

  else
  {
    v31 = 0;
  }

  sub_270311D34(&v50);

  return v31;
}

- (id)customMetadataWithKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v22 = 0;
  v23 = 0;
  v5 = sub_270312588(&self->_usdStage._refBase);
  v6 = atomic_load(MEMORY[0x277D86540]);
  if (!v6)
  {
    sub_27033E930(MEMORY[0x277D86540]);
  }

  v7 = keyCopy;
  v11 = objc_msgSend_UTF8String(v7, v8, v9, v10);
  MEMORY[0x27439E610](&v20, v11);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadataByDictKey(v5, (v6 + 72), &v20, &v22);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v23)
  {
    v12 = [USKData alloc];
    sub_270313C14(v21, &v22);
    v13 = atomic_load(off_279E01258);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v17 = 0;
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v22);
    v20 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v13, &Type, &v17);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v19, &v20);
    v15 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v12, v14, v21, &v19, self);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v21);
  }

  else
  {
    v15 = 0;
  }

  sub_270311D34(&v22);

  return v15;
}

- (id)nodeIterator
{
  v3 = [USKNodeSubtreeIterator alloc];
  sub_27033F45C(v8, &self->_usdStage);
  v6 = objc_msgSend_initWithScene_(v3, v4, v8, v5);
  sub_27036CCA8(v8, v6);
  return v6;
}

- (id)loadedNodeIterator
{
  v3 = [USKNodeSubtreeIterator alloc];
  sub_27033F45C(v9, &self->_usdStage);
  v8 = 0;
  v7 = vdupq_n_s64(2uLL);
  v5 = objc_msgSend_initWithScene_withPredicate_(v3, v4, v9, &v7);
  sub_27036CD0C(&v7, v9, v5);
  return v5;
}

- (void)dumpUSDA
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v7, v2);
  sub_27033AAD4(&v7);
  pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString();
  sub_27036CB50(&v7);
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v10 >= 0)
  {
    v4 = HIBYTE(v10);
  }

  else
  {
    v4 = v9;
  }

  v5 = sub_2703180A8(MEMORY[0x277D82678], p_p, v4);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v7);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

- (void)dealloc
{
  if (self->_usdStage._refBase)
  {
    sub_27033E684(&self->_usdStage, a2, v2);
  }

  v4.receiver = self;
  v4.super_class = USKScene;
  [(USKScene *)&v4 dealloc];
}

@end