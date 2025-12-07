@interface TSPPackageConverter
+ (BOOL)convertDocumentAtURL:(id)l toPackageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error;
+ (NSArray)regularRexpressionsForCachedCollaborationData;
+ (id)newPackageConverterWithURL:(id)l preserveExtendedAttributes:(BOOL)attributes error:(id *)error;
- (BOOL)enumeratePackageEntriesWithZipArchive:(id)archive needsReadChannel:(BOOL)channel accessor:(id)accessor;
- (BOOL)hasEntriesMatchingFilter:(id)filter;
- (BOOL)isDataPath:(id)path;
- (BOOL)isDocumentPropertiesPath:(id)path;
- (BOOL)isObjectArchivePath:(id)path;
- (BOOL)isValid;
- (BOOL)path:(id)path matchesFilter:(id)filter;
- (BOOL)writeToURL:(id)l packageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error;
- (TSPPackageConverter)init;
- (TSPPackageConverter)initWithURL:(id)l package:(id)package fileCoordinatorDelegate:(id)delegate preserveExtendedAttributes:(BOOL)attributes error:(id *)error;
- (id)newWriteChannelAtPath:(id)path lastModificationDate:(id)date size:(unint64_t)size CRC:(unsigned int)c packageWriter:(id)writer error:(id *)error;
- (unint64_t)progressTotalUnitCountWithZipArchive:(id)archive;
@end

@implementation TSPPackageConverter

+ (BOOL)convertDocumentAtURL:(id)l toPackageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error
{
  lCopy = l;
  filterCopy = filter;
  v12 = objc_msgSend_newPackageConverterWithURL_preserveExtendedAttributes_error_(TSPPackageConverter, v11, lCopy, 0, error);
  v15 = v12;
  if (v12)
  {
    if (objc_msgSend_packageType(v12, v13, v14) == type)
    {
      v16 = 1;
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277D81318]);
      v19 = objc_msgSend_initForSavingToURL_error_(v17, v18, lCopy, error);
      v22 = v19;
      if (v19)
      {
        v23 = objc_msgSend_writeURL(v19, v20, v21);
        v25 = objc_msgSend_writeToURL_packageType_removeEntriesMatchingFilter_error_(v15, v24, v23, type, filterCopy, error);

        v16 = objc_msgSend_endSaveWithSuccess_addingAttributes_error_(v22, v26, v25, 0, error);
      }

      else
      {
        v16 = 0;
      }

      objc_msgSend_removeAllCachedResourceValues(lCopy, v20, v21);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)newPackageConverterWithURL:(id)l preserveExtendedAttributes:(BOOL)attributes error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  v8 = [TSPPackageConverterFileCoordinatorDelegate alloc];
  v10 = objc_msgSend_initWithURL_(v8, v9, lCopy);
  v12 = objc_msgSend_newLazyPackageWithURL_packageIdentifier_decryptionKey_fileCoordinatorDelegate_(TSPPackage, v11, lCopy, 1, 0, v10);
  v15 = v12;
  if (v12)
  {
    if (objc_msgSend_packageType(v12, v13, v14) >= 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_opt_class();
    }

    v18 = [v16 alloc];
    v17 = objc_msgSend_initWithURL_package_fileCoordinatorDelegate_preserveExtendedAttributes_error_(v18, v19, lCopy, v15, v10, attributesCopy, error);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (TSPPackageConverter)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageConverter init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 122, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageConverter init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageConverter)initWithURL:(id)l package:(id)package fileCoordinatorDelegate:(id)delegate preserveExtendedAttributes:(BOOL)attributes error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  packageCopy = package;
  delegateCopy = delegate;
  if (objc_msgSend_isFileURL(lCopy, v15, v16))
  {
    v32.receiver = self;
    v32.super_class = TSPPackageConverter;
    v20 = [(TSPPackageConverter *)&v32 init];
    if (v20 && (v21 = objc_msgSend_copy(lCopy, v18, v19), URL = v20->_URL, v20->_URL = v21, URL, objc_storeStrong(&v20->_package, package), objc_storeStrong(&v20->_fileCoordinatorDelegate, delegate), attributesCopy) && (v23 = objc_alloc(MEMORY[0x277D811C0]), objc_msgSend_path(lCopy, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend_initWithPath_options_error_(v23, v27, v26, 0, error), extendedAttributeCollection = v20->_extendedAttributeCollection, v20->_extendedAttributeCollection = v28, extendedAttributeCollection, v26, !v20->_extendedAttributeCollection))
    {
      selfCopy = 0;
      self = v20;
    }

    else
    {
      self = v20;
      selfCopy = self;
    }
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, *MEMORY[0x277CCA738], -1000, 0);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (NSArray)regularRexpressionsForCachedCollaborationData
{
  if (qword_280A52648 != -1)
  {
    sub_276BD3490();
  }

  v3 = qword_280A52640;

  return v3;
}

- (BOOL)isValid
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageConverter isValid]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 173, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPPackageConverter isValid]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (BOOL)path:(id)path matchesFilter:(id)filter
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  filterCopy = filter;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(filterCopy, v7, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(filterCopy);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = objc_msgSend_length(pathCopy, v8, v9, v17);
        if (objc_msgSend_rangeOfFirstMatchInString_options_range_(v13, v15, pathCopy, 0, 0, v14) != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(filterCopy, v8, &v17, v21, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (BOOL)hasEntriesMatchingFilter:(id)filter
{
  filterCopy = filter;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = objc_msgSend_zipArchive(self->_package, v5, v6);
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276A09184;
    v11[3] = &unk_27A6E42A0;
    v11[4] = self;
    v12 = filterCopy;
    v13 = &v14;
    objc_msgSend_enumeratePackageEntriesWithZipArchive_needsReadChannel_accessor_(self, v8, v7, 0, v11);
  }

  v9 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (BOOL)writeToURL:(id)l packageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error
{
  lCopy = l;
  filterCopy = filter;
  if ((objc_msgSend_isFileURL(lCopy, v12, v13) & 1) == 0)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v14, *MEMORY[0x277CCA738], -1000, 0);
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_37;
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_276A09790;
  v83 = sub_276A097A0;
  v84 = 0;
  v17 = objc_msgSend_zipArchive(self->_package, v14, v15);
  if (!v17)
  {
    v26 = objc_opt_class();
    if ((objc_msgSend_hasZipArchive(v26, v27, v28) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v34 = objc_msgSend_lastReloadError(self->_package, v23, v24);
    updated = v34;
    if (!v34)
    {
      updated = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v63, 0);
    }

    objc_storeStrong(v80 + 5, updated);
    v54 = 0;
    v25 = 0;
    if (v34)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v18 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v16, @"Metadata");
  v20 = objc_msgSend_entryForName_(v17, v19, v18);

  if (!v20)
  {
    if (objc_msgSend_packageType(self, v21, v22) == 2)
    {
      v31 = objc_msgSend_componentZipArchive(self->_package, v29, v30);
      v33 = objc_msgSend_entryForName_(v31, v32, v18);

      if (v33)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

LABEL_12:
  v68 = filterCopy;
  v34 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v23, v24);

  if (v34)
  {
    v37 = MEMORY[0x277CCAC48];
    v38 = objc_msgSend_progressTotalUnitCountWithZipArchive_(self, v35, v17);
    v34 = objc_msgSend_progressWithTotalUnitCount_(v37, v39, v38);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_276A097A8;
    v78[3] = &unk_27A6E27F8;
    v78[4] = self;
    objc_msgSend_setCancellationHandler_(v34, v40, v78);
  }

  v41 = objc_msgSend_documentProperties(self->_package, v35, v36);
  package = self->_package;
  fileCoordinatorDelegate = self->_fileCoordinatorDelegate;
  v44 = v80;
  v77 = v80[5];
  updated = objc_msgSend_newPackageWriterWithPackageType_URL_documentTargetURL_relativeURLForExternalData_packageIdentifier_documentProperties_documentMetadata_fileFormatVersion_updateType_cloneMode_documentSaveValidationPolicy_encryptionKey_originalDocumentPackage_originalSupportPackage_fileCoordinatorDelegate_progress_error_(TSPPackageWriter, v45, type, lCopy, lCopy, lCopy, 1, v41, 0, 0, 2, 0, 0, 0, package, 0, fileCoordinatorDelegate, 0, &v77);
  objc_storeStrong(v44 + 5, v77);

  if (updated)
  {
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_276A097B8;
    v72[3] = &unk_27A6E42C8;
    v72[4] = self;
    v73 = filterCopy;
    updated = updated;
    v74 = updated;
    v76 = &v79;
    v34 = v34;
    v75 = v34;
    if (objc_msgSend_enumeratePackageEntriesWithZipArchive_needsReadChannel_accessor_(self, v47, v17, 1, v72))
    {
      v50 = objc_msgSend_documentProperties(self->_package, v48, v49);
      v51 = v80;
      obj = v80[5];
      v53 = objc_msgSend_writeToPackageWriter_error_(v50, v52, updated, &obj);
      objc_storeStrong(v51 + 5, obj);
    }

    else
    {
      v53 = 0;
    }

    v55 = v80;
    v70 = v80[5];
    v56 = objc_msgSend_closeAndReturnError_(updated, v48, &v70);
    objc_storeStrong(v55 + 5, v70);
    if ((v56 & v53) == 1)
    {
      extendedAttributeCollection = self->_extendedAttributeCollection;
      if (extendedAttributeCollection)
      {
        v60 = objc_msgSend_path(lCopy, v57, v58);
        v61 = v80;
        v69 = v80[5];
        v54 = objc_msgSend_setAttributeCollectionToPath_intent_options_error_(extendedAttributeCollection, v62, v60, 2, 0, &v69);
        objc_storeStrong(v61 + 5, v69);
      }

      else
      {
        v54 = 1;
      }
    }

    else
    {
      v54 = 0;
    }

    filterCopy = v68;
  }

  else
  {
    v54 = 0;
  }

LABEL_30:

  v25 = v54;
LABEL_31:

  if (error && !v25)
  {
    v65 = v80[5];
    if (v65)
    {
      *error = v65;
    }

    else
    {
      v66 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v64, 0);
      *error = v66;
    }
  }

  _Block_object_dispose(&v79, 8);
LABEL_37:

  return v25;
}

- (BOOL)isDocumentPropertiesPath:(id)path
{
  pathCopy = path;
  v6 = objc_msgSend_documentPropertiesRelativePath(TSPDocumentProperties, v4, v5);
  if (objc_msgSend_isEqualToString_(pathCopy, v7, v6))
  {
    isEqualToString = 1;
  }

  else
  {
    v11 = objc_msgSend_shareIdentifierRelativePath(TSPDocumentProperties, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(pathCopy, v12, v11);
  }

  return isEqualToString;
}

- (BOOL)isObjectArchivePath:(id)path
{
  pathCopy = path;
  if (qword_280A52658 != -1)
  {
    sub_276BD34A4();
  }

  hasPrefix = objc_msgSend_hasPrefix_(pathCopy, v3, qword_280A52650);

  return hasPrefix;
}

- (BOOL)isDataPath:(id)path
{
  pathCopy = path;
  if (qword_280A52668 != -1)
  {
    sub_276BD34B8();
  }

  hasPrefix = objc_msgSend_hasPrefix_(pathCopy, v3, qword_280A52660);

  return hasPrefix;
}

- (unint64_t)progressTotalUnitCountWithZipArchive:(id)archive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A09C20;
  v5[3] = &unk_27A6E42F0;
  v5[4] = &v6;
  objc_msgSend_enumerateEntriesUsingBlock_(archive, a2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)enumeratePackageEntriesWithZipArchive:(id)archive needsReadChannel:(BOOL)channel accessor:(id)accessor
{
  archiveCopy = archive;
  accessorCopy = accessor;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_276A09E3C;
  v21[3] = &unk_27A6E4318;
  v21[4] = self;
  v11 = objc_msgSend_sortedEntriesUsingComparator_(archiveCopy, v10, v21);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276A0A01C;
  v16[3] = &unk_27A6E4340;
  v16[4] = self;
  v19 = &v22;
  channelCopy = channel;
  v12 = accessorCopy;
  v18 = v12;
  v13 = archiveCopy;
  v17 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(v11, v14, v16);
  LOBYTE(archiveCopy) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return archiveCopy;
}

- (id)newWriteChannelAtPath:(id)path lastModificationDate:(id)date size:(unint64_t)size CRC:(unsigned int)c packageWriter:(id)writer error:(id *)error
{
  v9 = *&c;
  pathCopy = path;
  dateCopy = date;
  writerCopy = writer;
  if (!pathCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPackageConverter newWriteChannelAtPath:lastModificationDate:size:CRC:packageWriter:error:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 433, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_zipArchiveWriter(writerCopy, v14, v15);
  objc_msgSend_beginEntryWithName_force32BitSize_lastModificationDate_size_CRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate_(v24, v25, pathCopy, 0, dateCopy, size, v9, 0);
  v26 = [TSPZipFileWriteChannel alloc];
  v28 = objc_msgSend_initWithArchiveWriter_(v26, v27, v24);

  return v28;
}

@end