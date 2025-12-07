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
  v11 = [TSPPackageConverter newPackageConverterWithURL:lCopy preserveExtendedAttributes:0 error:error];
  v12 = v11;
  if (v11)
  {
    if ([v11 packageType] == type)
    {
      v13 = 1;
    }

    else
    {
      v14 = [[TSUSafeSaveAssistant alloc] initForSavingToURL:lCopy error:error];
      v15 = v14;
      if (v14)
      {
        writeURL = [v14 writeURL];
        v17 = [v12 writeToURL:writeURL packageType:type removeEntriesMatchingFilter:filterCopy error:error];

        v13 = [v15 endSaveWithSuccess:v17 addingAttributes:0 error:error];
      }

      else
      {
        v13 = 0;
      }

      [lCopy removeAllCachedResourceValues];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)newPackageConverterWithURL:(id)l preserveExtendedAttributes:(BOOL)attributes error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  v8 = [[TSPPackageConverterFileCoordinatorDelegate alloc] initWithURL:lCopy];
  v9 = [TSPPackage newLazyPackageWithURL:lCopy packageIdentifier:1 decryptionKey:0 fileCoordinatorDelegate:v8];
  v10 = v9;
  if (v9)
  {
    if ([v9 packageType] >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_opt_class();
    }

    v12 = [[v11 alloc] initWithURL:lCopy package:v10 fileCoordinatorDelegate:v8 preserveExtendedAttributes:attributesCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (TSPPackageConverter)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6408);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPPackageConverter init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm";
    v15 = 1024;
    v16 = 122;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPPackageConverter init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:122 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPPackageConverter init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPPackageConverter)initWithURL:(id)l package:(id)package fileCoordinatorDelegate:(id)delegate preserveExtendedAttributes:(BOOL)attributes error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  packageCopy = package;
  delegateCopy = delegate;
  if ([lCopy isFileURL])
  {
    v24.receiver = self;
    v24.super_class = TSPPackageConverter;
    v15 = [(TSPPackageConverter *)&v24 init];
    if (v15 && (v16 = [lCopy copy], URL = v15->_URL, v15->_URL = v16, URL, objc_storeStrong(&v15->_package, package), objc_storeStrong(&v15->_fileCoordinatorDelegate, delegate), attributesCopy) && (v18 = [TSUExtendedAttributeCollection alloc], objc_msgSend(lCopy, "path"), v19 = objc_claimAutoreleasedReturnValue(), v20 = -[TSUExtendedAttributeCollection initWithPath:options:error:](v18, "initWithPath:options:error:", v19, 0, error), extendedAttributeCollection = v15->_extendedAttributeCollection, v15->_extendedAttributeCollection = v20, extendedAttributeCollection, v19, !v15->_extendedAttributeCollection))
    {
      selfCopy = 0;
      self = v15;
    }

    else
    {
      self = v15;
      selfCopy = self;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:0];
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
  if (qword_1001EA9E8 != -1)
  {
    sub_1001529D4();
  }

  v3 = qword_1001EA9E0;

  return v3;
}

- (BOOL)isValid
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6488);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v16 = v2;
    v17 = 2082;
    v18 = "[TSPPackageConverter isValid]";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm";
    v21 = 1024;
    v22 = 173;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v6 = [NSString stringWithUTF8String:"[TSPPackageConverter isValid]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:173 isFatal:0 description:"Abstract method not overridden by %{public}@", v9];

  +[TSUAssertionHandler logBacktraceThrottled];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "[TSPPackageConverter isValid]"];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)path:(id)path matchesFilter:(id)filter
{
  pathCopy = path;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  filterCopy = filter;
  v7 = [filterCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(filterCopy);
        }

        if ([*(*(&v11 + 1) + 8 * i) rangeOfFirstMatchInString:pathCopy options:0 range:{0, objc_msgSend(pathCopy, "length", v11)}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [filterCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)hasEntriesMatchingFilter:(id)filter
{
  filterCopy = filter;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  zipArchive = [(TSPPackage *)self->_package zipArchive];
  if (zipArchive)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000191F8;
    v8[3] = &unk_1001C64B0;
    v8[4] = self;
    v9 = filterCopy;
    v10 = &v11;
    [(TSPPackageConverter *)self enumeratePackageEntriesWithZipArchive:zipArchive needsReadChannel:0 accessor:v8];
  }

  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (BOOL)writeToURL:(id)l packageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error
{
  lCopy = l;
  filterCopy = filter;
  if (([lCopy isFileURL] & 1) == 0)
  {
    if (error)
    {
      [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:0];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_37;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100019804;
  v52 = sub_100019814;
  v53 = 0;
  zipArchive = [(TSPPackage *)self->_package zipArchive];
  if (!zipArchive)
  {
    if (([objc_opt_class() hasZipArchive] & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    lastReloadError = [(TSPPackage *)self->_package lastReloadError];
    v23 = lastReloadError;
    if (!lastReloadError)
    {
      v23 = [NSError tsp_unknownReadErrorWithUserInfo:0];
    }

    objc_storeStrong(v49 + 5, v23);
    v27 = 0;
    v15 = 0;
    if (lastReloadError)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v13 = [TSPPackage objectArchiveEntryPathForPackageLocator:@"Metadata"];
  v14 = [zipArchive entryForName:v13];

  if (!v14)
  {
    if ([(TSPPackageConverter *)self packageType]== 2)
    {
      componentZipArchive = [(TSPPackage *)self->_package componentZipArchive];
      v17 = [componentZipArchive entryForName:v13];

      if (v17)
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
  v37 = filterCopy;
  lastReloadError = +[NSProgress currentProgress];

  if (lastReloadError)
  {
    lastReloadError = [NSProgress progressWithTotalUnitCount:[(TSPPackageConverter *)self progressTotalUnitCountWithZipArchive:zipArchive]];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10001981C;
    v47[3] = &unk_1001C5710;
    v47[4] = self;
    [lastReloadError setCancellationHandler:v47];
  }

  documentProperties = [(TSPPackage *)self->_package documentProperties];
  package = self->_package;
  fileCoordinatorDelegate = self->_fileCoordinatorDelegate;
  v22 = v49;
  v46 = v49[5];
  LOBYTE(v36) = 0;
  v23 = [TSPPackageWriter newPackageWriterWithPackageType:type URL:lCopy documentTargetURL:lCopy relativeURLForExternalData:lCopy packageIdentifier:1 documentProperties:documentProperties documentMetadata:0 fileFormatVersion:0 updateType:2 cloneMode:v36 documentSaveValidationPolicy:0 encryptionKey:0 originalDocumentPackage:package originalSupportPackage:0 fileCoordinatorDelegate:fileCoordinatorDelegate progress:0 error:&v46];
  objc_storeStrong(v22 + 5, v46);

  if (v23)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10001982C;
    v41[3] = &unk_1001C64D8;
    v41[4] = self;
    v42 = filterCopy;
    v23 = v23;
    v43 = v23;
    v45 = &v48;
    lastReloadError = lastReloadError;
    v44 = lastReloadError;
    if ([(TSPPackageConverter *)self enumeratePackageEntriesWithZipArchive:zipArchive needsReadChannel:1 accessor:v41])
    {
      documentProperties2 = [(TSPPackage *)self->_package documentProperties];
      v25 = v49;
      obj = v49[5];
      v26 = [documentProperties2 writeToPackageWriter:v23 error:&obj];
      objc_storeStrong(v25 + 5, obj);
    }

    else
    {
      v26 = 0;
    }

    v28 = v49;
    v39 = v49[5];
    v29 = [v23 closeAndReturnError:&v39];
    objc_storeStrong(v28 + 5, v39);
    if ((v29 & v26) == 1)
    {
      extendedAttributeCollection = self->_extendedAttributeCollection;
      if (extendedAttributeCollection)
      {
        path = [lCopy path];
        v32 = v49;
        v38 = v49[5];
        v27 = [(TSUExtendedAttributeCollection *)extendedAttributeCollection setAttributeCollectionToPath:path intent:2 options:0 error:&v38];
        objc_storeStrong(v32 + 5, v38);
      }

      else
      {
        v27 = 1;
      }
    }

    else
    {
      v27 = 0;
    }

    filterCopy = v37;
  }

  else
  {
    v27 = 0;
  }

LABEL_30:

  v15 = v27;
LABEL_31:

  if (error && !v15)
  {
    v33 = v49[5];
    if (v33)
    {
      *error = v33;
    }

    else
    {
      v34 = [NSError tsp_unknownWriteErrorWithUserInfo:0];
      *error = v34;
    }
  }

  _Block_object_dispose(&v48, 8);
LABEL_37:

  return v15;
}

- (BOOL)isDocumentPropertiesPath:(id)path
{
  pathCopy = path;
  v4 = +[TSPDocumentProperties documentPropertiesRelativePath];
  if ([pathCopy isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[TSPDocumentProperties shareIdentifierRelativePath];
    v5 = [pathCopy isEqualToString:v6];
  }

  return v5;
}

- (BOOL)isObjectArchivePath:(id)path
{
  pathCopy = path;
  if (qword_1001EA9F8 != -1)
  {
    sub_100152A38();
  }

  v4 = [pathCopy hasPrefix:qword_1001EA9F0];

  return v4;
}

- (BOOL)isDataPath:(id)path
{
  pathCopy = path;
  if (qword_1001EAA08 != -1)
  {
    sub_100152A4C();
  }

  v4 = [pathCopy hasPrefix:qword_1001EAA00];

  return v4;
}

- (unint64_t)progressTotalUnitCountWithZipArchive:(id)archive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019C94;
  v5[3] = &unk_1001C6540;
  v5[4] = &v6;
  [archive enumerateEntriesUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)enumeratePackageEntriesWithZipArchive:(id)archive needsReadChannel:(BOOL)channel accessor:(id)accessor
{
  archiveCopy = archive;
  accessorCopy = accessor;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100019EB0;
  v19[3] = &unk_1001C6568;
  v19[4] = self;
  v10 = [archiveCopy sortedEntriesUsingComparator:v19];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001A090;
  v14[3] = &unk_1001C6590;
  v14[4] = self;
  v17 = &v20;
  channelCopy = channel;
  v11 = accessorCopy;
  v16 = v11;
  v12 = archiveCopy;
  v15 = v12;
  [v10 enumerateObjectsUsingBlock:v14];
  LOBYTE(archiveCopy) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
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
    v15 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100152A60();
    }

    v16 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100152A74(v15, v16);
    }

    v17 = [NSString stringWithUTF8String:"[TSPPackageConverter newWriteChannelAtPath:lastModificationDate:size:CRC:packageWriter:error:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:433 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  zipArchiveWriter = [writerCopy zipArchiveWriter];
  [zipArchiveWriter beginEntryWithName:pathCopy force32BitSize:0 lastModificationDate:dateCopy size:size CRC:v9 forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];
  v20 = [[TSPZipFileWriteChannel alloc] initWithArchiveWriter:zipArchiveWriter];

  return v20;
}

@end