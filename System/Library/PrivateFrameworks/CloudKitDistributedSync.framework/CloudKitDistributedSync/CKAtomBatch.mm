@interface CKAtomBatch
+ (id)atomBatchByMergingAtomBatches:(id)batches error:(id *)error;
+ (id)bindingForFormatVersion:(unsigned __int8)version;
- ($06D0163FE0D7AFE752A9F21F38483579)writerIdentity;
- (BOOL)_setStorage:(id)storage optionsByReaderWriterClass:(id)class error:(id *)error;
- (BOOL)fileBacked;
- (BOOL)finishWritingWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isWriting;
- (BOOL)size:(unint64_t *)size error:(id *)error;
- (BOOL)splitWithMaximumSize:(unint64_t)size error:(id *)error block:(id)block;
- (BOOL)validateWithError:(id *)error;
- (CKAtomBatch)initWithCoder:(id)coder;
- (CKAtomBatch)initWithData:(id)data mergeableValueID:(id)d vectors:(id)vectors options:(id)options error:(id *)error;
- (CKAtomBatch)initWithFileURL:(id)l mergeableValueID:(id)d vectors:(id)vectors options:(id)options error:(id *)error;
- (CKAtomBatch)initWithMergeableDelta:(id)delta error:(id *)error;
- (CKAtomBatch)initWithStorage:(id)storage optionsByReaderWriterClass:(id)class mergeableValueID:(id)d vectors:(id)vectors formatVersion:(unsigned __int8)version error:(id *)error;
- (CKDSReadableStorage)storage;
- (CKDistributedTimestampStateVector)enumeratedContentsVector;
- (CKMergeableDeltaVectors)vectors;
- (CKMergeableValueID)mergeableValueID;
- (id)_metadataForCoding;
- (id)contentsDescriptionWithStringSiteIdentifiers:(BOOL)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)dataWithError:(id *)error;
- (id)description;
- (id)initWriterWithMergeableValueID:(id)d metadata:(id)metadata formatVersion:(unsigned __int8)version error:(id *)error;
- (id)initWriterWithMergeableValueID:(id)d metadata:(id)metadata formatVersion:(unsigned __int8)version fileURL:(id)l error:(id *)error;
- (id)initWriterWithMergeableValueID:(id)d metadata:(id)metadata version:(unsigned __int8)version;
- (id)initWriterWithMergeableValueID:(id)d vectors:(id)vectors formatVersion:(unsigned __int8)version fileURL:(id)l error:(id *)error;
- (id)initWriterWithMergeableValueID:(id)d vectors:(id)vectors options:(id)options error:(id *)error;
- (id)nthAtom:(int64_t)atom;
- (id)splitWithMaximumDeltaSize:(unint64_t)size error:(id *)error;
- (id)splitWithMaximumSize:(unint64_t)size error:(id *)error;
- (id)writableCopy;
- (id)writableCopyWithMergeableValueID:(id)d vectors:(id)vectors;
- (id)writerOptions;
- (int64_t)count;
- (unint64_t)hash;
- (unsigned)formatVersion;
- (void)appendAtomWithBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAtomsWithOptions:(id)options usingBlock:(id)block;
- (void)finishWriting;
@end

@implementation CKAtomBatch

- (CKAtomBatch)initWithData:(id)data mergeableValueID:(id)d vectors:(id)vectors options:(id)options error:(id *)error
{
  optionsCopy = options;
  vectorsCopy = vectors;
  dCopy = d;
  dataCopy = data;
  v16 = [CKDSReadableStorage alloc];
  v22 = objc_msgSend_initWithData_(v16, v17, dataCopy, v18, v19, v20, v21);

  v29 = objc_msgSend_underlyingReaderOptionsByClass(optionsCopy, v23, v24, v25, v26, v27, v28);

  v31 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(self, v30, v22, v29, dCopy, vectorsCopy, 3, error);
  return v31;
}

- (CKAtomBatch)initWithFileURL:(id)l mergeableValueID:(id)d vectors:(id)vectors options:(id)options error:(id *)error
{
  optionsCopy = options;
  vectorsCopy = vectors;
  dCopy = d;
  lCopy = l;
  v16 = [CKDSReadableStorage alloc];
  v22 = objc_msgSend_initWithFileURL_(v16, v17, lCopy, v18, v19, v20, v21);

  v29 = objc_msgSend_underlyingReaderOptionsByClass(optionsCopy, v23, v24, v25, v26, v27, v28);

  v31 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(self, v30, v22, v29, dCopy, vectorsCopy, 3, error);
  return v31;
}

- (id)initWriterWithMergeableValueID:(id)d metadata:(id)metadata version:(unsigned __int8)version
{
  v27 = 0;
  inited = objc_msgSend_initWriterWithMergeableValueID_metadata_formatVersion_error_(self, a2, d, metadata, version, &v27, v5);
  v7 = v27;
  v8 = inited;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = *MEMORY[0x277CBE660];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v21 = objc_msgSend_description(v7, v15, v16, v17, v18, v19, v20);
    objc_msgSend_raise_format_(v11, v22, v12, @"Failed to initialize %@: %@", v23, v24, v25, v14, v21);
  }

  return v9;
}

- (id)initWriterWithMergeableValueID:(id)d metadata:(id)metadata formatVersion:(unsigned __int8)version error:(id *)error
{
  versionCopy = version;
  dCopy = d;
  v17 = objc_msgSend_vectors(metadata, v11, v12, v13, v14, v15, v16);
  inited = objc_msgSend_initWriterWithMergeableValueID_vectors_formatVersion_fileURL_error_(self, v18, dCopy, v17, versionCopy, 0, error);

  return inited;
}

- (id)initWriterWithMergeableValueID:(id)d metadata:(id)metadata formatVersion:(unsigned __int8)version fileURL:(id)l error:(id *)error
{
  versionCopy = version;
  lCopy = l;
  dCopy = d;
  v20 = objc_msgSend_vectors(metadata, v14, v15, v16, v17, v18, v19);
  inited = objc_msgSend_initWriterWithMergeableValueID_vectors_formatVersion_fileURL_error_(self, v21, dCopy, v20, versionCopy, lCopy, error);

  return inited;
}

- (id)initWriterWithMergeableValueID:(id)d vectors:(id)vectors formatVersion:(unsigned __int8)version fileURL:(id)l error:(id *)error
{
  versionCopy = version;
  lCopy = l;
  vectorsCopy = vectors;
  dCopy = d;
  v15 = objc_opt_new();
  objc_msgSend_setFormatVersion_(v15, v16, versionCopy, v17, v18, v19, v20);
  objc_msgSend_setFileBacked_(v15, v21, versionCopy == 3, v22, v23, v24, v25);
  objc_msgSend_setFileURL_(v15, v26, lCopy, v27, v28, v29, v30);

  inited = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(self, v31, dCopy, vectorsCopy, v15, error, v32);
  return inited;
}

- (id)initWriterWithMergeableValueID:(id)d vectors:(id)vectors options:(id)options error:(id *)error
{
  dCopy = d;
  vectorsCopy = vectors;
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = objc_opt_new();
  }

  if (!objc_msgSend_fileBacked(optionsCopy, v12, v13, v14, v15, v16, v17))
  {
    v48 = [CKDSWritableStorage alloc];
    v40 = objc_msgSend_initInMemory(v48, v49, v50, v51, v52, v53, v54);
    goto LABEL_8;
  }

  v25 = objc_msgSend_fileURL(optionsCopy, v19, v20, v21, v22, v23, v24);

  v26 = [CKDSWritableStorage alloc];
  v33 = v26;
  if (v25)
  {
    v34 = objc_msgSend_fileURL(optionsCopy, v27, v28, v29, v30, v31, v32);
    v40 = objc_msgSend_initWithFileURL_(v33, v35, v34, v36, v37, v38, v39);

    v41 = 0;
    if (v40)
    {
LABEL_6:

LABEL_8:
      v55 = objc_msgSend_underlyingWriterOptionsByClass(optionsCopy, v42, v43, v44, v45, v46, v47);
      v62 = objc_msgSend_formatVersion(optionsCopy, v56, v57, v58, v59, v60, v61);
      self = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(self, v63, v40, v55, dCopy, vectorsCopy, v62, error);

      v41 = v40;
      selfCopy = self;
      goto LABEL_9;
    }
  }

  else
  {
    v66 = 0;
    v40 = objc_msgSend_initWithTemporaryFile_(v26, v27, &v66, v29, v30, v31, v32);
    v41 = v66;
    if (v40)
    {
      goto LABEL_6;
    }
  }

  if (error)
  {
    v41 = v41;
    selfCopy = 0;
    *error = v41;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_9:

  return selfCopy;
}

- (CKAtomBatch)initWithStorage:(id)storage optionsByReaderWriterClass:(id)class mergeableValueID:(id)d vectors:(id)vectors formatVersion:(unsigned __int8)version error:(id *)error
{
  versionCopy = version;
  v101 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  classCopy = class;
  dCopy = d;
  vectorsCopy = vectors;
  if (!storageCopy)
  {
    v87 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19, v20, v21, v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v87, v88, a2, self, @"CKAtomBatch.m", 186, @"Storage must not be nil");
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v32 = objc_msgSend_fileURL(storageCopy, v26, v27, v28, v29, v30, v31);

  v94.receiver = self;
  v94.super_class = CKAtomBatch;
  v39 = [(CKAtomBatch *)&v94 init];
  if (!v39)
  {
    v56 = 0;
    goto LABEL_13;
  }

  v40 = objc_msgSend_copy(dCopy, v33, v34, v35, v36, v37, v38);
  mergeableValueID = v39->_mergeableValueID;
  v39->_mergeableValueID = v40;

  v48 = objc_msgSend_copy(vectorsCopy, v42, v43, v44, v45, v46, v47);
  vectors = v39->_vectors;
  v39->_vectors = v48;

  if (isKindOfClass)
  {
    v93 = 0;
    objc_msgSend__setStorage_optionsByReaderWriterClass_error_(v39, v50, storageCopy, classCopy, &v93, v54, v55);
    v56 = v93;
    goto LABEL_12;
  }

  errorCopy = error;
  v90 = isKindOfClass;
  if (versionCopy < 3)
  {
    if (v32)
    {
      v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v50, v51, v52, v53, v54, v55);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v89, a2, v39, @"CKAtomBatch.m", 206, @"File-backed batches only supported for format version %d", 3);
      goto LABEL_29;
    }
  }

  else if (!vectorsCopy)
  {
    v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v50, v51, v52, v53, v54, v55);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v58, a2, v39, @"CKAtomBatch.m", 204, @"Expecting non-nil metadata for format version %d", versionCopy);
LABEL_29:
  }

  v59 = [CKXBackingStore alloc];
  v60 = objc_opt_class();
  v66 = objc_msgSend_bindingForFormatVersion_(v60, v61, versionCopy, v62, v63, v64, v65);
  v92 = 0;
  v68 = versionCopy;
  v69 = objc_msgSend_initWithStorage_binding_optionsByReaderWriterClass_formatVersion_error_(v59, v67, storageCopy, v66, classCopy, versionCopy, &v92);
  v56 = v92;
  backingStore = v39->_backingStore;
  v39->_backingStore = v69;
  versionCopy = v68;

  error = errorCopy;
  isKindOfClass = v90;
LABEL_12:
  if (!v39->_backingStore)
  {
    if (error)
    {
      v74 = v56;
      v72 = 0;
      *error = v56;
    }

    else
    {
      v72 = 0;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v71 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    if (v32)
    {
      v75 = @"file-backed ";
    }

    else
    {
      v75 = &stru_2856A2ED0;
    }

    if (isKindOfClass)
    {
      v76 = @"reader";
    }

    else
    {
      v76 = @"writer";
    }

    v77 = v71;
    v78 = versionCopy;
    v79 = v77;
    v86 = CKDSStringForBackingStoreFormatVersion(v78, v80, v81, v82, v83, v84, v85);
    *buf = 138412802;
    v96 = v75;
    v97 = 2112;
    v98 = v76;
    v99 = 2112;
    v100 = v86;
    _os_log_debug_impl(&dword_2438A8000, v79, OS_LOG_TYPE_DEBUG, "Created %@%@ atom batch with format version %@", buf, 0x20u);
  }

  v72 = v39;
LABEL_17:

  return v72;
}

- (CKDSReadableStorage)storage
{
  v7 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_readableStorage(v7, v8, v9, v10, v11, v12, v13);

  return v14;
}

- (unsigned)formatVersion
{
  v9 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);

  if (!v9)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKAtomBatch.m", 238, @"Unable to read format version before data is set");
  }

  v16 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_formatVersion(v16, v17, v18, v19, v20, v21, v22);

  return v23;
}

- (BOOL)fileBacked
{
  v7 = objc_msgSend_storage(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_fileURL(v7, v8, v9, v10, v11, v12, v13);
  v15 = v14 != 0;

  return v15;
}

- (id)writerOptions
{
  v3 = objc_opt_new();
  v10 = objc_msgSend_formatVersion(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_setFormatVersion_(v3, v11, v10, v12, v13, v14, v15);
  v22 = objc_msgSend_fileBacked(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_setFileBacked_(v3, v23, v22, v24, v25, v26, v27);

  return v3;
}

- ($06D0163FE0D7AFE752A9F21F38483579)writerIdentity
{
  v9 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);

  if (!v9)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKAtomBatch.m", 255, @"Unable to read writer identity before data is set");
  }

  v16 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_writerIdentity(v16, v17, v18, v19, v20, v21, v22);

  return v23;
}

- (void)enumerateAtomsWithOptions:(id)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v15 = objc_msgSend_backingStore(self, v9, v10, v11, v12, v13, v14);

  if (!v15)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17, v18, v19, v20, v21);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKAtomBatch.m", 261, @"Unable to read atoms before data is set");
  }

  v22 = objc_msgSend_backingStore(self, v16, v17, v18, v19, v20, v21);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_24396A7AC;
  v32[3] = &unk_278DDAE08;
  v33 = optionsCopy;
  v34 = blockCopy;
  v23 = blockCopy;
  v24 = optionsCopy;
  objc_msgSend_readUsingBlock_(v22, v25, v32, v26, v27, v28, v29);
}

- (id)nthAtom:(int64_t)atom
{
  v10 = objc_msgSend_backingStore(self, a2, atom, v3, v4, v5, v6);

  if (!v10)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKAtomBatch.m", 282, @"Unable to read atoms before data is set");
  }

  if (objc_msgSend_count(self, v11, v12, v13, v14, v15, v16) <= atom)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18, v19, v20, v21, v22);
    v40 = objc_msgSend_count(self, v34, v35, v36, v37, v38, v39);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v41, a2, self, @"CKAtomBatch.m", 283, @"Trying to read index: %ld, but atom batch has %ld atoms", atom, v40);

    if ((atom & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((atom & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18, v19, v20, v21, v22);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKAtomBatch.m", 284, @"Can not access a negative index: %ld", atom);

LABEL_5:
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_24396AC80;
  v49 = sub_24396AC90;
  v50 = 0;
  v23 = objc_msgSend_backingStore(self, v17, v18, v19, v20, v21, v22);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_24396AC98;
  v44[3] = &unk_278DDAE30;
  v44[4] = &v45;
  v44[5] = atom;
  objc_msgSend_readUsingBlock_(v23, v24, v44, v25, v26, v27, v28);

  v29 = v46[5];
  _Block_object_dispose(&v45, 8);

  return v29;
}

- (void)appendAtomWithBlock:(id)block
{
  blockCopy = block;
  v12 = objc_msgSend_backingStore(self, v6, v7, v8, v9, v10, v11);

  if (!v12)
  {
    v34 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14, v15, v16, v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CKAtomBatch.m", 294, @"Unable to append atoms before data is set");
  }

  v19 = self->_mergeableValueID;
  v26 = objc_msgSend_backingStore(self, v20, v21, v22, v23, v24, v25);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_24396AE34;
  v36[3] = &unk_278DDAE80;
  v37 = v19;
  v38 = blockCopy;
  v36[4] = self;
  v27 = v19;
  v28 = blockCopy;
  objc_msgSend_writeUsingBlock_(v26, v29, v36, v30, v31, v32, v33);
}

- (BOOL)isWriting
{
  v7 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  isWriting = objc_msgSend_isWriting(v7, v8, v9, v10, v11, v12, v13);

  return isWriting;
}

- (void)finishWriting
{
  v12 = 0;
  v6 = objc_msgSend_finishWritingWithError_(self, a2, &v12, v2, v3, v4, v5);
  v11 = v12;
  if ((v6 & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v7, *MEMORY[0x277CBE648], @"Failed to finish writing: %@", v8, v9, v10, v11);
  }
}

- (BOOL)finishWritingWithError:(id *)error
{
  errorCopy = error;
  v8 = objc_msgSend_backingStore(self, a2, error, v3, v4, v5, v6);
  LOBYTE(errorCopy) = objc_msgSend_finishWritingWithError_(v8, v9, errorCopy, v10, v11, v12, v13);

  return errorCopy;
}

- (BOOL)validateWithError:(id *)error
{
  v151[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isWriting(self, a2, error, v3, v4, v5, v6))
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v9, *MEMORY[0x277CBE660], @"[CKAtomBatch finishWritingWithError:] must be called before reading data", v12, v13, v14);
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_formatVersion(self, v9, v10, v11, v12, v13, v14);
    v23 = objc_msgSend_vectors(self, v17, v18, v19, v20, v21, v22);
    v30 = objc_msgSend_previous(v23, v24, v25, v26, v27, v28, v29);
    v37 = objc_msgSend_mutableCopy(v30, v31, v32, v33, v34, v35, v36);

    v44 = objc_msgSend_contents(v23, v38, v39, v40, v41, v42, v43);
    v51 = objc_msgSend_clockVector(v44, v45, v46, v47, v48, v49, v50);
    objc_msgSend_unionVector_(v37, v52, v51, v53, v54, v55, v56);

    v63 = objc_msgSend_contents(v23, v57, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_vectorFilteredByAtomState_(v63, v64, 3, v65, v66, v67, v68);

    v76 = objc_msgSend_contents(v23, v70, v71, v72, v73, v74, v75);
    v83 = objc_msgSend_clockVector(v76, v77, v78, v79, v80, v81, v82);
    v90 = objc_msgSend_mutableCopy(v83, v84, v85, v86, v87, v88, v89);

    v97 = objc_msgSend_clockVector(v69, v91, v92, v93, v94, v95, v96);
    objc_msgSend_minusVector_(v90, v98, v97, v99, v100, v101, v102);

    v103 = objc_opt_new();
    v146 = 0;
    v147 = &v146;
    v148 = 0x2020000000;
    v149 = 1;
    v140 = 0;
    v141 = &v140;
    v142 = 0x3032000000;
    v143 = sub_24396AC80;
    v144 = sub_24396AC90;
    v145 = 0;
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = sub_24396B418;
    v133[3] = &unk_278DDAEF8;
    v137 = &v140;
    v138 = &v146;
    v139 = v16;
    v104 = v23;
    v134 = v104;
    v105 = v37;
    v135 = v105;
    v106 = v103;
    v136 = v106;
    objc_msgSend_enumerateAtomsWithOptions_usingBlock_(self, v107, 0, v133, v108, v109, v110);
    if (!v141[5] && (objc_msgSend_isEqual_(v106, v111, v90, v112, v113, v114, v115) & 1) == 0)
    {
      *(v147 + 24) = 0;
      v121 = MEMORY[0x277CCA9B8];
      v150 = *MEMORY[0x277CCA450];
      v122 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v116, @"Batch contents %@ not equal to contents vector %@", v117, v118, v119, v120, v106, v90);
      v151[0] = v122;
      v126 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v123, v151, &v150, 1, v124, v125);
      v130 = objc_msgSend_errorWithDomain_code_userInfo_(v121, v127, @"CKDSErrorDomain", 3, v126, v128, v129);
      v131 = v141[5];
      v141[5] = v130;
    }

    if (error)
    {
      *error = v141[5];
    }

    v15 = *(v147 + 24);

    _Block_object_dispose(&v140, 8);
    _Block_object_dispose(&v146, 8);
  }

  return v15 & 1;
}

- (id)data
{
  v21 = 0;
  v8 = objc_msgSend_dataWithError_(self, a2, &v21, v2, v3, v4, v5);
  v15 = v21;
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKAtomBatch.m", 432, @"Unable to retrieve atom batch data: %@", v15);

    v16 = objc_opt_new();
  }

  v19 = v16;

  return v19;
}

- (id)dataWithError:(id *)error
{
  if (objc_msgSend_isWriting(self, a2, error, v3, v4, v5, v6))
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v10, *MEMORY[0x277CBE660], @"[CKAtomBatch finishWritingWithError:] must be called before reading data", v13, v14, v15);
    v16 = 0;
  }

  else
  {
    v17 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);
    v24 = objc_msgSend_readableStorage(v17, v18, v19, v20, v21, v22, v23);

    if (!v24)
    {
      v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26, v27, v28, v29, v30);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKAtomBatch.m", 447, @"Unexpectedly nil readable storage");
    }

    v16 = objc_msgSend_dataWithError_(v24, v25, error, v27, v28, v29, v30);
  }

  return v16;
}

- (BOOL)_setStorage:(id)storage optionsByReaderWriterClass:(id)class error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  classCopy = class;
  v16 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);

  if (v16)
  {
    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA450];
      v57[0] = @"Cannot replace existing backing store";
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v57, &v56, 1, v18, v19);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"CKDSErrorDomain", 1, v21, v23, v24);
    }

    v25 = 0;
  }

  else
  {
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v26 = objc_msgSend_header_forStorage_error_(CKXBackingStore, v17, &v52, storageCopy, &v51, v18, v19);
    v27 = v51;
    v28 = v27;
    if (v26)
    {
      v29 = [CKXBackingStore alloc];
      v30 = objc_opt_class();
      v36 = objc_msgSend_bindingForFormatVersion_(v30, v31, v52, v32, v33, v34, v35);
      v38 = objc_msgSend_initWithStorage_binding_optionsByReaderWriterClass_formatVersion_error_(v29, v37, storageCopy, v36, classCopy, v52, error);
      backingStore = self->_backingStore;
      self->_backingStore = v38;

      v43 = self->_backingStore;
      if (v43 && v52 >= 3u && !self->_vectors)
      {
        if (error)
        {
          v44 = MEMORY[0x277CCA9B8];
          v54 = *MEMORY[0x277CCA450];
          v55 = @"Expecting non-nil vectors";
          v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v55, &v54, 1, v41, v42);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v44, v46, @"CKDSErrorDomain", 2, v45, v47, v48);

          v43 = self->_backingStore;
        }

        self->_backingStore = 0;

        v43 = self->_backingStore;
      }

      v25 = v43 != 0;
    }

    else if (error)
    {
      v49 = v27;
      v25 = 0;
      *error = v28;
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (CKMergeableValueID)mergeableValueID
{
  p_mergeableValueID = &self->_mergeableValueID;
  if (!self->_mergeableValueID && objc_msgSend_formatVersion(self, a2, v2, v3, v4, v5, v6) <= 2 && (objc_msgSend_isWriting(self, v9, v10, v11, v12, v13, v14) & 1) == 0)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_24396AC80;
    v35 = sub_24396AC90;
    v36 = 0;
    v21 = objc_msgSend_backingStore(self, v15, v16, v17, v18, v19, v20);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_24396C178;
    v30[3] = &unk_278DDAF48;
    v30[4] = &v31;
    objc_msgSend_readUsingBlock_(v21, v22, v30, v23, v24, v25, v26);

    v27 = v32[5];
    if (v27)
    {
      objc_storeStrong(p_mergeableValueID, v27);
    }

    _Block_object_dispose(&v31, 8);
  }

  v28 = *p_mergeableValueID;

  return v28;
}

- (BOOL)size:(unint64_t *)size error:(id *)error
{
  if (objc_msgSend_isWriting(self, a2, size, error, v4, v5, v6))
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v10, *MEMORY[0x277CBE660], @"[CKAtomBatch finishWritingWithError:] must be called before getting the size", v13, v14, v15);
    return 0;
  }

  else
  {
    v61 = 0;
    v17 = objc_msgSend_storage(self, v10, v11, v12, v13, v14, v15);
    v60 = 0;
    v16 = objc_msgSend_size_error_(v17, v18, &v61, &v60, v19, v20, v21);
    v22 = v60;

    if (v16)
    {
      v29 = objc_msgSend_mergeableValueID(self, v23, v24, v25, v26, v27, v28);
      if (v29 && (v36 = v29, objc_msgSend_mergeableValueID(self, v30, v31, v32, v33, v34, v35), v37 = objc_claimAutoreleasedReturnValue(), isEncrypted = objc_msgSend_isEncrypted(v37, v38, v39, v40, v41, v42, v43), v37, v36, (isEncrypted & 1) == 0))
      {
        v45 = v61;
      }

      else
      {
        v45 = v61 + 28;
        v61 += 28;
      }

      v47 = v45 + 2;
      if (v45 >= 0x80)
      {
        do
        {
          ++v47;
          v48 = v45 >> 14;
          v45 >>= 7;
        }

        while (v48);
      }

      v49 = objc_msgSend__metadataForCoding(self, v30, v31, v32, v33, v34, v35);
      v56 = objc_msgSend_size(v49, v50, v51, v52, v53, v54, v55);
      v57 = v56 + 2;
      if (v56 >= 0x80)
      {
        do
        {
          ++v57;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
      }

      if (size)
      {
        *size = v47 + v57 + 16;
      }
    }

    else if (error)
    {
      v46 = v22;
      *error = v22;
    }
  }

  return v16;
}

- (int64_t)count
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (objc_msgSend_isWriting(self, a2, v2, v3, v4, v5, v6))
  {
    v14 = objc_msgSend_backingStore(self, v8, v9, v10, v11, v12, v13);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_24396C530;
    v28[3] = &unk_278DDAF70;
    v28[4] = &v29;
    objc_msgSend_writeUsingBlock_(v14, v15, v28, v16, v17, v18, v19);
  }

  else
  {
    v14 = objc_msgSend_backingStore(self, v8, v9, v10, v11, v12, v13);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_24396C58C;
    v27[3] = &unk_278DDAF48;
    v27[4] = &v29;
    objc_msgSend_readUsingBlock_(v14, v20, v27, v21, v22, v23, v24);
  }

  v25 = v30[3];
  _Block_object_dispose(&v29, 8);
  return v25;
}

- (CKDistributedTimestampStateVector)enumeratedContentsVector
{
  v3 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24396C698;
  v10[3] = &unk_278DDAF98;
  v4 = v3;
  v11 = v4;
  objc_msgSend_enumerateAtomsWithOptions_usingBlock_(self, v5, 0, v10, v6, v7, v8);

  return v4;
}

- (CKMergeableDeltaVectors)vectors
{
  if (!self->_vectors && (objc_msgSend_isWriting(self, a2, v2, v3, v4, v5, v6) & 1) == 0)
  {
    v14 = objc_msgSend_enumeratedContentsVector(self, v8, v9, v10, v11, v12, v13);
    v15 = objc_alloc(MEMORY[0x277CBC468]);
    v16 = objc_opt_new();
    v21 = objc_msgSend_initWithPreviousStateVector_currentStateVector_(v15, v17, v16, v14, v18, v19, v20);
    vectors = self->_vectors;
    self->_vectors = v21;
  }

  v23 = self->_vectors;

  return v23;
}

- (id)contentsDescriptionWithStringSiteIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v156[0] = 0;
  v156[1] = v156;
  v156[2] = 0x3032000000;
  v156[3] = sub_24396AC80;
  v156[4] = sub_24396AC90;
  v157 = 0;
  v155[0] = 0;
  v155[1] = v155;
  v155[2] = 0x2020000000;
  v155[3] = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v12 = objc_msgSend_count(self, v6, v7, v8, v9, v10, v11);
  v19 = objc_msgSend_count(self, v13, v14, v15, v16, v17, v18);
  v25 = @"s";
  if (v19 == 1)
  {
    v25 = &stru_2856A2ED0;
  }

  objc_msgSend_appendFormat_(v5, v20, @"Atom Batch (%ld atom%@) {\n", v21, v22, v23, v24, v12, v25);
  if (objc_msgSend_isWriting(self, v26, v27, v28, v29, v30, v31))
  {
    objc_msgSend_appendFormat_(v5, v32, @"  <Writing, not yet fully initialized>\n", v34, v35, v36, v37);
  }

  else
  {
    v43 = objc_msgSend_vectors(self, v32, v33, v34, v35, v36, v37);
    v50 = objc_msgSend_previous(v43, v44, v45, v46, v47, v48, v49);
    v55 = objc_msgSend_descriptionWithStringSiteIdentifiers_usingSuperscripts_(v50, v51, identifiersCopy, 1, v52, v53, v54);
    objc_msgSend_appendFormat_(v5, v56, @"  Previous: %@\n", v57, v58, v59, v60, v55);

    v67 = objc_msgSend_vectors(self, v61, v62, v63, v64, v65, v66);
    v74 = objc_msgSend_contents(v67, v68, v69, v70, v71, v72, v73);
    v79 = objc_msgSend_descriptionWithStringSiteIdentifiers_usingSuperscripts_(v74, v75, identifiersCopy, 1, v76, v77, v78);
    objc_msgSend_appendFormat_(v5, v80, @"  Contents: %@\n", v81, v82, v83, v84, v79);

    v91 = objc_msgSend_vectors(self, v85, v86, v87, v88, v89, v90);
    v98 = objc_msgSend_removals(v91, v92, v93, v94, v95, v96, v97);
    v103 = objc_msgSend_descriptionWithStringSiteIdentifiers_usingSuperscripts_(v98, v99, identifiersCopy, 1, v100, v101, v102);
    objc_msgSend_appendFormat_(v5, v104, @"  Removals: %@\n", v105, v106, v107, v108, v103);

    v115 = objc_msgSend_vectors(self, v109, v110, v111, v112, v113, v114);
    v122 = objc_msgSend_dependencies(v115, v116, v117, v118, v119, v120, v121);
    v127 = objc_msgSend_descriptionWithStringSiteIdentifiers_usingSuperscripts_(v122, v123, identifiersCopy, 1, v124, v125, v126);
    objc_msgSend_appendFormat_(v5, v128, @"  Dependencies: %@\n", v129, v130, v131, v132, v127);

    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = sub_24396CC20;
    v145[3] = &unk_278DDAFE8;
    v150 = identifiersCopy;
    v147 = &v151;
    v145[4] = self;
    v148 = v156;
    v149 = v155;
    v133 = v5;
    v146 = v133;
    objc_msgSend_enumerateAtomsWithOptions_usingBlock_(self, v134, 0, v145, v135, v136, v137);
    if (*(v152 + 24) == 1)
    {
      objc_msgSend_appendFormat_(v133, v138, @"\n  }\n", v139, v140, v141, v142);
    }
  }

  objc_msgSend_appendFormat_(v5, v38, @"}", v39, v40, v41, v42);
  v143 = v5;
  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(v155, 8);
  _Block_object_dispose(v156, 8);

  return v143;
}

- (id)description
{
  v3 = objc_opt_new();
  v10 = objc_msgSend_backingStore(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_readableStorage(v10, v11, v12, v13, v14, v15, v16);
  v24 = v17;
  if (v17)
  {
    v25 = v17;
  }

  else
  {
    v26 = objc_msgSend_backingStore(self, v18, v19, v20, v21, v22, v23);
    v25 = objc_msgSend_writableStorage(v26, v27, v28, v29, v30, v31, v32);
  }

  v127 = 0;
  objc_msgSend_size_error_(v25, v33, &v127, 0, v34, v35, v36);
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  objc_msgSend_appendFormat_(v3, v39, @"<%@: %p; ", v40, v41, v42, v43, v38, self);

  v50 = objc_msgSend_formatVersion(self, v44, v45, v46, v47, v48, v49);
  v57 = CKDSStringForBackingStoreFormatVersion(v50, v51, v52, v53, v54, v55, v56);
  objc_msgSend_appendFormat_(v3, v58, @"formatVersion=%@, ", v59, v60, v61, v62, v57);

  v63 = MEMORY[0x277CCABB0];
  isWriting = objc_msgSend_isWriting(self, v64, v65, v66, v67, v68, v69);
  v76 = objc_msgSend_numberWithBool_(v63, v71, isWriting, v72, v73, v74, v75);
  objc_msgSend_appendFormat_(v3, v77, @"isWriting=%@, ", v78, v79, v80, v81, v76);

  objc_msgSend_appendFormat_(v3, v82, @"storage=%@, ", v83, v84, v85, v86, v25);
  v92 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v87, v127, v88, v89, v90, v91);
  objc_msgSend_appendFormat_(v3, v93, @"size=%@, ", v94, v95, v96, v97, v92);

  if (self->_mergeableValueID || (objc_msgSend_isWriting(self, v98, v99, v100, v101, v102, v103) & 1) == 0)
  {
    v104 = objc_msgSend_mergeableValueID(self, v98, v99, v100, v101, v102, v103);
    objc_msgSend_appendFormat_(v3, v105, @"valueID=%@, ", v106, v107, v108, v109, v104);
  }

  if (self->_vectors)
  {
    v110 = objc_msgSend_vectors(self, v98, v99, v100, v101, v102, v103);
    objc_msgSend_appendFormat_(v3, v111, @"vectors=%@, ", v112, v113, v114, v115, v110);
  }

  v116 = objc_msgSend_length(v3, v98, v99, v100, v101, v102, v103);
  objc_msgSend_deleteCharactersInRange_(v3, v117, v116 - 2, 2, v118, v119, v120);
  objc_msgSend_appendFormat_(v3, v121, @">", v122, v123, v124, v125);

  return v3;
}

- (unint64_t)hash
{
  v8 = objc_msgSend_mergeableValueID(self, a2, v2, v3, v4, v5, v6);
  v15 = objc_msgSend_hash(v8, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_vectors(self, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_hash(v22, v23, v24, v25, v26, v27, v28);

  return v29 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v13 = objc_msgSend_mergeableValueID(self, v7, v8, v9, v10, v11, v12);
      v26 = objc_msgSend_mergeableValueID(v6, v14, v15, v16, v17, v18, v19);
      if (v13 != v26)
      {
        v27 = objc_msgSend_mergeableValueID(self, v20, v21, v22, v23, v24, v25);
        v3 = objc_msgSend_mergeableValueID(v6, v28, v29, v30, v31, v32, v33);
        if (!objc_msgSend_isEqual_(v27, v34, v3, v35, v36, v37, v38))
        {
          isEqual = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v68 = v27;
      }

      v40 = objc_msgSend_vectors(self, v20, v21, v22, v23, v24, v25);
      v53 = objc_msgSend_vectors(v6, v41, v42, v43, v44, v45, v46);
      if (v40 == v53)
      {
        isEqual = 1;
      }

      else
      {
        v54 = objc_msgSend_vectors(self, v47, v48, v49, v50, v51, v52);
        v61 = objc_msgSend_vectors(v6, v55, v56, v57, v58, v59, v60);
        isEqual = objc_msgSend_isEqual_(v54, v62, v61, v63, v64, v65, v66);
      }

      v27 = v68;
      if (v13 == v26)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    isEqual = 0;
  }

LABEL_15:

  return isEqual;
}

+ (id)bindingForFormatVersion:(unsigned __int8)version
{
  if (version == 2)
  {
    CKXAtomBindingFormatVersionORC();
  }

  else
  {
    CKXAtomBindingFormatVersionORCv2();
  }
  v3 = ;

  return v3;
}

- (id)writableCopyWithMergeableValueID:(id)d vectors:(id)vectors
{
  dCopy = d;
  vectorsCopy = vectors;
  v9 = [CKAtomBatch alloc];
  v16 = objc_msgSend_writerOptions(self, v10, v11, v12, v13, v14, v15);
  v60 = 0;
  inited = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v9, v17, dCopy, vectorsCopy, v16, &v60, v18);

  v20 = v60;
  if (v20)
  {
    v48 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22, v23, v24, v25, v26);
    v55 = objc_msgSend_description(v20, v49, v50, v51, v52, v53, v54);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v56, a2, self, @"CKAtomBatch.m", 752, v55);
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_24396D5C0;
  v57[3] = &unk_278DDB038;
  v27 = inited;
  v58 = v27;
  v59 = dCopy;
  v28 = dCopy;
  objc_msgSend_enumerateAtomsWithOptions_usingBlock_(self, v29, 0, v57, v30, v31, v32);
  v39 = objc_msgSend_atomValueDescriptionBlock(self, v33, v34, v35, v36, v37, v38);
  objc_msgSend_setAtomValueDescriptionBlock_(v27, v40, v39, v41, v42, v43, v44);

  v45 = v59;
  v46 = v27;

  return v27;
}

- (id)writableCopy
{
  v8 = objc_msgSend_mergeableValueID(self, a2, v2, v3, v4, v5, v6);
  v13 = objc_msgSend_writableCopyWithMergeableValueID_vectors_(self, v9, v8, 0, v10, v11, v12);

  return v13;
}

+ (id)atomBatchByMergingAtomBatches:(id)batches error:(id *)error
{
  v156[1] = *MEMORY[0x277D85DE8];
  batchesCopy = batches;
  if (objc_msgSend_count(batchesCopy, v6, v7, v8, v9, v10, v11))
  {
    if (objc_msgSend_count(batchesCopy, v12, v13, v14, v15, v16, v17) == 1)
    {
      v24 = objc_msgSend_firstObject(batchesCopy, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      errorCopy = error;
      v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v31 = batchesCopy;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v147, v154, 16, v33, v34);
      if (v35)
      {
        v42 = v35;
        v43 = *v148;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v148 != v43)
            {
              objc_enumerationMutation(v31);
            }

            v45 = objc_msgSend_vectors(*(*(&v147 + 1) + 8 * i), v36, v37, v38, v39, v40, v41);
            objc_msgSend_addObject_(v30, v46, v45, v47, v48, v49, v50);
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v36, &v147, v154, 16, v40, v41);
        }

        while (v42);
      }

      v56 = objc_msgSend_mergeableDeltaMetadataVectorsByCombiningVectors_(MEMORY[0x277CBC468], v51, v30, v52, v53, v54, v55);
      v63 = objc_msgSend_firstObject(v31, v57, v58, v59, v60, v61, v62);
      v70 = objc_msgSend_writerOptions(v63, v64, v65, v66, v67, v68, v69);

      v71 = [CKAtomBatch alloc];
      v78 = objc_msgSend_firstObject(v31, v72, v73, v74, v75, v76, v77);
      v85 = objc_msgSend_mergeableValueID(v78, v79, v80, v81, v82, v83, v84);
      v146 = 0;
      inited = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v71, v86, v85, v56, v70, &v146, v87);
      v89 = v146;

      if (inited)
      {
        v134 = v89;
        v135 = v56;
        v136 = batchesCopy;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        obj = v31;
        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v90, &v142, v153, 16, v91, v92);
        if (v93)
        {
          v100 = v93;
          v101 = *v143;
          while (2)
          {
            for (j = 0; j != v100; ++j)
            {
              if (*v143 != v101)
              {
                objc_enumerationMutation(obj);
              }

              v103 = *(*(&v142 + 1) + 8 * j);
              v104 = objc_msgSend_formatVersion(v103, v94, v95, v96, v97, v98, v99, v134, v135, v136);
              if (v104 != objc_msgSend_formatVersion(v70, v105, v106, v107, v108, v109, v110))
              {
                if (errorCopy)
                {
                  v126 = MEMORY[0x277CCA9B8];
                  v151 = *MEMORY[0x277CCA450];
                  v152 = @"Unable to merge atom batches with different format versions";
                  v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v111, &v152, &v151, 1, v112, v113);
                  *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v126, v128, @"CKDSErrorDomain", 2, v127, v129, v130);
                }

                v24 = 0;
                v56 = v135;
                batchesCopy = v136;
                v89 = v134;
                goto LABEL_35;
              }

              v140[0] = MEMORY[0x277D85DD0];
              v140[1] = 3221225472;
              v140[2] = sub_24396DC18;
              v140[3] = &unk_278DDAF98;
              v141 = inited;
              objc_msgSend_enumerateAtomsWithOptions_usingBlock_(v103, v114, 0, v140, v115, v116, v117);
            }

            v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v94, &v142, v153, 16, v98, v99);
            if (v100)
            {
              continue;
            }

            break;
          }
        }

        v139 = 0;
        v123 = objc_msgSend_finishWritingWithError_(inited, v118, &v139, v119, v120, v121, v122);
        v124 = v139;
        v125 = v124;
        if (v123)
        {
          v24 = inited;
        }

        else if (errorCopy)
        {
          v132 = v124;
          v24 = 0;
          *errorCopy = v125;
        }

        else
        {
          v24 = 0;
        }

        v56 = v135;
        batchesCopy = v136;
        v89 = v134;
      }

      else if (errorCopy)
      {
        v131 = v89;
        v24 = 0;
        *errorCopy = v89;
      }

      else
      {
        v24 = 0;
      }

LABEL_35:
    }
  }

  else
  {
    if (error)
    {
      v25 = MEMORY[0x277CCA9B8];
      v155 = *MEMORY[0x277CCA450];
      v156[0] = @"Cannot merge zero atom batches";
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v156, &v155, 1, v16, v17);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"CKDSErrorDomain", 2, v26, v28, v29);
    }

    v24 = 0;
  }

  return v24;
}

- (id)splitWithMaximumSize:(unint64_t)size error:(id *)error
{
  v7 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24396DD98;
  v14[3] = &unk_278DDB088;
  v8 = v7;
  v15 = v8;
  if (objc_msgSend_splitWithMaximumSize_error_block_(self, v9, size, error, v14, v10, v11))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)splitWithMaximumSize:(unint64_t)size error:(id *)error block:(id)block
{
  v400 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (objc_msgSend_isWriting(self, v9, v10, v11, v12, v13, v14))
  {
    v367 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16, v17, v18, v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v367, v368, a2, self, @"CKAtomBatch.m", 854, @"Cannot split an atom batch which is writing");
  }

  v21 = objc_msgSend_vectors(self, v15, v16, v17, v18, v19, v20);
  v375 = objc_msgSend_previous(v21, v22, v23, v24, v25, v26, v27);

  v34 = objc_msgSend_vectors(self, v28, v29, v30, v31, v32, v33);
  v372 = objc_msgSend_removals(v34, v35, v36, v37, v38, v39, v40);

  v47 = objc_msgSend_vectors(self, v41, v42, v43, v44, v45, v46);
  v54 = objc_msgSend_dependencies(v47, v48, v49, v50, v51, v52, v53);
  v61 = objc_msgSend_mutableCopy(v54, v55, v56, v57, v58, v59, v60);

  v68 = objc_msgSend_vectors(self, v62, v63, v64, v65, v66, v67);
  v75 = objc_msgSend_contents(v68, v69, v70, v71, v72, v73, v74);
  v82 = objc_msgSend_clockVector(v75, v76, v77, v78, v79, v80, v81);
  v374 = v61;
  objc_msgSend_unionVector_(v61, v83, v82, v84, v85, v86, v87);

  v94 = objc_msgSend_vectors(self, v88, v89, v90, v91, v92, v93);
  v101 = objc_msgSend_contents(v94, v95, v96, v97, v98, v99, v100);
  v371 = objc_msgSend_vectorFilteredByAtomState_(v101, v102, 3, v103, v104, v105, v106);

  v377 = objc_opt_new();
  v376 = objc_opt_new();
  selfCopy = self;
  v108 = selfCopy;
  if (!selfCopy)
  {
    v109 = 0;
    v327 = 0;
    v360 = 0;
LABEL_45:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v362 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v397 = v108;
      v398 = 2048;
      sizeCopy = v360;
      _os_log_debug_impl(&dword_2438A8000, v362, OS_LOG_TYPE_DEBUG, "Successfully split atom batch %@ over %tu iterations", buf, 0x16u);
    }

    v363 = 1;
    goto LABEL_57;
  }

  errorCopy = error;
  v109 = 0;
  v381 = 0;
  v110 = 1;
  v380 = selfCopy;
  v373 = blockCopy;
  while (1)
  {
    v111 = v110;
    context = objc_autoreleasePoolPush();
    if (v108 != v380)
    {
      v118 = objc_msgSend_vectors(v380, v112, v113, v114, v115, v116, v117);
      v125 = objc_msgSend_contents(v118, v119, v120, v121, v122, v123, v124);
      v132 = objc_msgSend_mutableCopy(v125, v126, v127, v128, v129, v130, v131);

      v139 = objc_msgSend_vectors(v108, v133, v134, v135, v136, v137, v138);
      v146 = objc_msgSend_contents(v139, v140, v141, v142, v143, v144, v145);
      v153 = objc_msgSend_clockVector(v146, v147, v148, v149, v150, v151, v152);
      objc_msgSend_intersectVector_(v132, v154, v153, v155, v156, v157, v158);

      v165 = objc_msgSend_vectors(v108, v159, v160, v161, v162, v163, v164);
      v172 = objc_msgSend_contents(v165, v166, v167, v168, v169, v170, v171);
      objc_msgSend_unionStateVector_(v172, v173, v132, v174, v175, v176, v177);

      if (!v381)
      {
        v184 = objc_msgSend_vectors(v108, v178, v179, v180, v181, v182, v183);
        v191 = objc_msgSend_contents(v184, v185, v186, v187, v188, v189, v190);
        objc_msgSend_unionStateVector_(v191, v192, v371, v193, v194, v195, v196);

        v203 = objc_msgSend_vectors(v108, v197, v198, v199, v200, v201, v202);
        v210 = objc_msgSend_removals(v203, v204, v205, v206, v207, v208, v209);
        objc_msgSend_unionStateVector_(v210, v211, v372, v212, v213, v214, v215);
      }
    }

    v384 = v111;
    v216 = objc_msgSend_count(v108, v112, v113, v114, v115, v116, v117);
    v394 = v109;
    v395 = 0;
    v221 = objc_msgSend_size_error_(v108, v217, &v395, &v394, v218, v219, v220);
    v222 = v394;

    if ((v221 & 1) == 0)
    {

      objc_autoreleasePoolPop(context);
      v327 = 0;
      v109 = v222;
      v361 = errorCopy;
      v360 = v384;
      goto LABEL_50;
    }

    v229 = v395;
    if (v395 <= size || v216 <= 1)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy, v108);
        ++v381;
        v229 = v395;
      }

      if (v229 > size)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v329 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v397 = v395;
          v398 = 2048;
          sizeCopy = size;
          _os_log_impl(&dword_2438A8000, v329, OS_LOG_TYPE_INFO, "An indivisible batch of size %tu exceeds the maximum requested size %tu, continuing as a best effort", buf, 0x16u);
        }
      }

      v330 = blockCopy;
      v331 = objc_msgSend_lastObject(v377, v223, v224, v225, v226, v227, v228);
      v280 = objc_msgSend_lastObject(v376, v332, v333, v334, v335, v336, v337);
      objc_msgSend_removeLastObject(v377, v338, v339, v340, v341, v342, v343);
      objc_msgSend_removeLastObject(v376, v344, v345, v346, v347, v348, v349);
      if (v331)
      {
        v350 = [CKAtomBatch alloc];
        v357 = objc_msgSend_mergeableValueID(v380, v351, v352, v353, v354, v355, v356);
        v393 = v222;
        v327 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(v350, v358, v331, 0, v357, v280, 3, &v393);
        v359 = v393;

        v301 = v331;
        if (!v327)
        {
          LOBYTE(v294) = 0;
          v328 = 1;
          blockCopy = v330;
          goto LABEL_37;
        }
      }

      else
      {
        v327 = 0;
        v359 = v222;
        v301 = 0;
      }

      blockCopy = v330;
      v328 = 0;
      LOBYTE(v294) = 1;
    }

    else
    {
      v230 = objc_alloc(MEMORY[0x277CBC468]);
      v231 = objc_opt_new();
      v232 = objc_opt_new();
      v235 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v230, v233, v375, v231, v232, v374, v234);

      v236 = objc_alloc(MEMORY[0x277CBC468]);
      v237 = objc_opt_new();
      v238 = objc_opt_new();
      v241 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v236, v239, v375, v237, v238, v374, v240);

      v242 = [CKAtomBatch alloc];
      v249 = objc_msgSend_mergeableValueID(v380, v243, v244, v245, v246, v247, v248);
      v256 = objc_msgSend_writerOptions(v380, v250, v251, v252, v253, v254, v255);
      v392 = v222;
      v379 = v235;
      inited = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v242, v257, v249, v235, v256, &v392, v258);
      v260 = v392;

      v378 = inited;
      if (inited)
      {
        v261 = [CKAtomBatch alloc];
        v268 = objc_msgSend_mergeableValueID(v380, v262, v263, v264, v265, v266, v267);
        v275 = objc_msgSend_writerOptions(v380, v269, v270, v271, v272, v273, v274);
        v391 = v260;
        v278 = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v261, v276, v268, v241, v275, &v391, v277);
        v279 = v391;

        v280 = v241;
        if (v278)
        {
          v370 = v241;
          v387[0] = MEMORY[0x277D85DD0];
          v387[1] = 3221225472;
          v387[2] = sub_24396E7E0;
          v387[3] = &unk_278DDB0B0;
          v390 = v216;
          v281 = v378;
          v282 = v378;
          v388 = v282;
          v283 = v278;
          v284 = v278;
          v389 = v284;
          objc_msgSend_enumerateAtomsWithOptions_usingBlock_(v108, v285, 0, v387, v286, v287, v288);
          v386 = v279;
          v294 = objc_msgSend_finishWritingWithError_(v282, v289, &v386, v290, v291, v292, v293);
          v295 = v386;

          v301 = v379;
          if (v294)
          {
            v385 = v295;
            v294 = objc_msgSend_finishWritingWithError_(v284, v296, &v385, v297, v298, v299, v300);
            v302 = v385;

            if (v294)
            {
              v309 = objc_msgSend_storage(v284, v303, v304, v305, v306, v307, v308);
              objc_msgSend_addObject_(v377, v310, v309, v311, v312, v313, v314);

              v321 = objc_msgSend_vectors(v284, v315, v316, v317, v318, v319, v320);
              objc_msgSend_addObject_(v376, v322, v321, v323, v324, v325, v326);

              v327 = v282;
              v328 = 0;
              LOBYTE(v294) = 1;
            }

            else
            {
              v327 = 0;
              v328 = 1;
            }

            v295 = v302;
          }

          else
          {
            v327 = 0;
            v328 = 1;
          }

          v279 = v295;
          v280 = v370;
          v278 = v283;
        }

        else
        {
          v327 = 0;
          LOBYTE(v294) = 0;
          v328 = 1;
          v281 = v378;
          v301 = v379;
        }

        v359 = v279;
      }

      else
      {
        v359 = v260;
        v327 = 0;
        LOBYTE(v294) = 0;
        v328 = 1;
        v281 = 0;
        v301 = v379;
        v280 = v241;
      }

      blockCopy = v373;
    }

LABEL_37:

    objc_autoreleasePoolPop(context);
    if (v328)
    {
      break;
    }

    v360 = v384;
    v110 = v384 + 1;
    v108 = v327;
    v109 = v359;
    if (!v327)
    {
      goto LABEL_43;
    }
  }

  v360 = v384;
  v109 = v359;
LABEL_43:
  v361 = errorCopy;
  if (v294)
  {
    v108 = v380;
    goto LABEL_45;
  }

LABEL_50:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v364 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v397 = v380;
    v398 = 2048;
    sizeCopy = v360;
    _os_log_error_impl(&dword_2438A8000, v364, OS_LOG_TYPE_ERROR, "Failed to split atom batch %@ over %tu iterations", buf, 0x16u);
    if (!v361)
    {
      goto LABEL_56;
    }

LABEL_54:
    v365 = v109;
    v363 = 0;
    *v361 = v109;
  }

  else
  {
    if (v361)
    {
      goto LABEL_54;
    }

LABEL_56:
    v363 = 0;
  }

LABEL_57:

  return v363;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_isWriting(self, a2, zone, v3, v4, v5, v6))
  {
    v51 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v51, v52, a2, self, @"CKAtomBatch.m", 1032, @"Cannot copy an atom batch which is writing");
  }

  v15 = [CKAtomBatch alloc];
  v22 = objc_msgSend_storage(self, v16, v17, v18, v19, v20, v21);
  vectors = self->_vectors;
  mergeableValueID = self->_mergeableValueID;
  v31 = objc_msgSend_formatVersion(self, v25, v26, v27, v28, v29, v30);
  v53 = 0;
  v33 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(v15, v32, v22, 0, mergeableValueID, vectors, v31, &v53);
  v34 = v53;

  if (!v33)
  {
    v35 = MEMORY[0x277CBEAD8];
    v36 = *MEMORY[0x277CBE660];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v45 = objc_msgSend_description(v34, v39, v40, v41, v42, v43, v44);
    objc_msgSend_raise_format_(v35, v46, v36, @"Failed to copy %@: %@", v47, v48, v49, v38, v45);
  }

  return v33;
}

- (void)encodeWithCoder:(id)coder
{
  v53 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (objc_msgSend_isWriting(self, v6, v7, v8, v9, v10, v11))
  {
    v48 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13, v14, v15, v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v49, a2, self, @"CKAtomBatch.m", 1058, @"Cannot encode an atom batch which is writing");
  }

  v50 = 0;
  v18 = objc_msgSend_dataWithError_(self, v12, &v50, v14, v15, v16, v17);
  v19 = v50;
  if (v18)
  {
    mergeableValueID = self->_mergeableValueID;
    v21 = NSStringFromSelector(sel_mergeableValueID);
    objc_msgSend_encodeObject_forKey_(coderCopy, v22, mergeableValueID, v21, v23, v24, v25);

    if (self->_vectors)
    {
      v32 = objc_msgSend__metadataForCoding(self, v26, v27, v28, v29, v30, v31);
      objc_msgSend_encodeObject_forKey_(coderCopy, v33, v32, @"metadata", v34, v35, v36);
    }

    else
    {
      objc_msgSend_encodeObject_forKey_(coderCopy, v26, 0, @"metadata", v29, v30, v31);
    }

    v43 = NSStringFromSelector(sel_data);
    objc_msgSend_encodeObject_forKey_(coderCopy, v44, v18, v43, v45, v46, v47);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v19;
      _os_log_error_impl(&dword_2438A8000, v37, OS_LOG_TYPE_ERROR, "Error exporting data for atom batch in coder: %@", buf, 0xCu);
    }

    objc_msgSend_failWithError_(coderCopy, v38, v19, v39, v40, v41, v42);
  }
}

- (CKAtomBatch)initWithCoder:(id)coder
{
  v47 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_mergeableValueID);
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6, v8, v9, v10);

  v12 = objc_opt_class();
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"metadata", v14, v15, v16);
  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_data);
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v18, v19, v21, v22, v23);

  v31 = objc_msgSend_vectors(v17, v25, v26, v27, v28, v29, v30);
  v44 = 0;
  v34 = objc_msgSend_initWithData_mergeableValueID_vectors_error_(self, v32, v24, v11, v31, &v44, v33);
  v35 = v44;

  if (v35)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = v35;
      _os_log_error_impl(&dword_2438A8000, v36, OS_LOG_TYPE_ERROR, "Error initializing atom batch from data in coder: %@", buf, 0xCu);
    }

    objc_msgSend_failWithError_(coderCopy, v37, v35, v38, v39, v40, v41);
    v42 = 0;
  }

  else
  {
    v42 = v34;
  }

  return v42;
}

- (id)_metadataForCoding
{
  v30[2] = *MEMORY[0x277D85DE8];
  v30[0] = 0;
  v30[1] = 0;
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = objc_msgSend_initWithUUIDBytes_(v3, v4, v30, v5, v6, v7, v8);
  v16 = objc_msgSend_UUIDString(v9, v10, v11, v12, v13, v14, v15);

  v17 = objc_alloc(MEMORY[0x277CBC460]);
  v24 = objc_msgSend_vectors(self, v18, v19, v20, v21, v22, v23);
  v28 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v17, v25, v16, v24, 0, v26, v27);

  return v28;
}

- (CKAtomBatch)initWithMergeableDelta:(id)delta error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  deltaCopy = delta;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    v60 = 138412290;
    v61 = deltaCopy;
    _os_log_debug_impl(&dword_2438A8000, v7, OS_LOG_TYPE_DEBUG, "Creating atom batch from delta: %@", &v60, 0xCu);
  }

  v20 = objc_msgSend_fileURL(deltaCopy, v8, v9, v10, v11, v12, v13);
  if (v20)
  {
    v21 = objc_msgSend_valueID(deltaCopy, v14, v15, v16, v17, v18, v19);
    v28 = objc_msgSend_metadata(deltaCopy, v22, v23, v24, v25, v26, v27);
    v35 = objc_msgSend_vectors(v28, v29, v30, v31, v32, v33, v34);
    self = objc_msgSend_initWithFileURL_mergeableValueID_vectors_options_error_(self, v36, v20, v21, v35, 0, error);
  }

  else
  {
    v21 = objc_msgSend_dataWithError_(deltaCopy, v14, error, v16, v17, v18, v19);
    if (!v21)
    {
      selfCopy = 0;
      goto LABEL_10;
    }

    v28 = objc_msgSend_valueID(deltaCopy, v37, v38, v39, v40, v41, v42);
    v35 = objc_msgSend_metadata(deltaCopy, v43, v44, v45, v46, v47, v48);
    v55 = objc_msgSend_vectors(v35, v49, v50, v51, v52, v53, v54);
    self = objc_msgSend_initWithData_mergeableValueID_vectors_error_(self, v56, v21, v28, v55, error, v57);
  }

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)splitWithMaximumDeltaSize:(unint64_t)size error:(id *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_24396F654;
  v29 = sub_24396F664;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v7 = objc_opt_new();
  v19 = &v21;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_24396F66C;
  v16[3] = &unk_278DDB0D8;
  v18 = &v25;
  v8 = v7;
  v17 = v8;
  LOBYTE(self) = objc_msgSend_splitWithMaximumSize_error_block_(self, v9, size, &v20, v16, v10, v11);
  v12 = v20;
  v13 = v12;
  if (v22[3] & self)
  {
    v14 = v8;
  }

  else if (error)
  {
    if (v26[5])
    {
      v12 = v26[5];
    }

    v14 = 0;
    *error = v12;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

@end