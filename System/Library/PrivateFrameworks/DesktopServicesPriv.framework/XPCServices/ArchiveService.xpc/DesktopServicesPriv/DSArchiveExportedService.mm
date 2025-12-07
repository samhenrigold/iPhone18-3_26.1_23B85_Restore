@interface DSArchiveExportedService
- (AAByteStream_impl)_openAppleArchiveReadStreamWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases addToKeychain:(BOOL)keychain aeaContext:(AEAContext_impl *)context formats:(unint64_t)formats error:(id *)self0;
- (AAByteStream_impl)_openAppleArchiveWriteStreamWithArchiveURL:(id)l itemURLs:(id)ls progress:(id)progress passphrase:(id)passphrase aeaContext:(AEAContext_impl *)context compressionFormat:(unint64_t)format error:(id *)error;
- (BOOL)_archiveFromItemURLs:(id)ls passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format archiveURL:(id)l fd:(int)fd progress:(id)progress error:(id *)self0;
- (BOOL)_archiveItemURL:(id)l itemArchivePath:(id)path isDirectory:(BOOL)directory archive:(archive *)archive entry:(archive_entry *)entry stat:(stat *)stat writeProgressHandler:(id)handler error:(id *)self0;
- (BOOL)_createAppleArchiveOfItemURLs:(id)ls passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format archiveURL:(id)l archiveFD:(int)d progress:(id)progress error:(id *)self0;
- (BOOL)_createArchiveOfItemURLs:(id)ls compressionFormat:(unint64_t)format archive:(archive *)archive entry:(archive_entry *)entry archiveURL:(id)l fd:(int)fd progress:(id)progress error:(id *)self0;
- (BOOL)_createMetadataFileWithAppleDoubleFormatOfItemURL:(id)l destinationURL:(id)rL error:(id *)error;
- (BOOL)_enumerateItemURL:(id)l itemActionBlock:(id)block error:(id *)error;
- (BOOL)_getIsDirectoryProperty:(BOOL *)property forItemURL:(id)l error:(id *)error;
- (BOOL)_isAppleArchive:(id)archive;
- (BOOL)_isCancelled;
- (BOOL)_listAppleArchiveWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases formats:(unint64_t)formats listItemHandler:(id)handler error:(id *)error;
- (BOOL)_openArchiveWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases formats:(unint64_t)formats archive:(archive *)archive entry:(archive_entry *)entry readItemHandler:(id)self0 error:(id *)self1;
- (BOOL)_openArchiveWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases formats:(unint64_t)formats readItemHandler:(id)handler error:(id *)error;
- (BOOL)_unarchiveAppleArchiveWithFD:(int)d url:(id)url destinationURL:(id)l progress:(id)progress passphrases:(id)passphrases addToKeychain:(BOOL)keychain formats:(unint64_t)formats error:(id *)self0;
- (BOOL)_unarchiveEntryAtPath:(const char *)path entry:(archive_entry *)entry fromArchive:(archive *)archive archiveURL:(id)l destinationURL:(id)rL progress:(id)progress error:(id *)error;
- (BOOL)_unarchiveFromArchiveFD:(int)d url:(id)url passphrases:(id)passphrases addToKeychain:(BOOL)keychain destinationURL:(id)l formats:(unint64_t)formats progress:(id)progress readItemGroup:(id)self0 error:(id *)self1;
- (BOOL)_writeOnArchiveEntryAtPath:(const char *)path entry:(archive_entry *)entry archive:(archive *)archive writeProgressHandler:(id)handler error:(id *)error;
- (BOOL)_writeXattrEntryForURL:(id)l compressionFormat:(unint64_t)format archive:(archive *)archive entry:(archive_entry *)entry archiveURL:(id)rL commonParentPath:(id)path stat:(stat *)stat error:(id *)self0;
- (DSArchiveExportedService)init;
- (id)__temporaryURLAppropriateForURL:(id)l calledFromLegacyAPI:(BOOL)i error:(id *)error;
- (id)_createArchivePlaceholderForItems:(id)items inFolder:(id)folder compressionFormat:(unint64_t)format error:(id *)error;
- (id)_createUnarchivePlaceholderForDescriptors:(id)descriptors describingArchive:(id)archive inFolder:(id)folder hasMultipleTopLevelItems:(BOOL *)items placeholderIsFolder:(BOOL *)isFolder error:(id *)error;
- (id)_createUniquePlaceholderWithName:(id)name inFolder:(id)folder asFolder:(BOOL)asFolder isArchiving:(BOOL)archiving error:(id *)error;
- (id)_errorForAppleArchive:(int)archive itemURL:(id)l;
- (id)_errorForArchive:(archive *)archive itemURL:(id)l;
- (id)_filepathForFd:(int)fd error:(id *)error;
- (id)_passwordFromKeychainWithArchiveID:(char *)d archiveIDSize:(unint64_t)size;
- (id)_quarantineDataFromArchiveFD:(int)d url:(id)url error:(id *)error;
- (id)_replacePathComponent:(id)component withComponent:(id)withComponent inFilePath:(id)path;
- (id)_sanitizedPathWithCString:(const char *)string length:(unint64_t)length;
- (id)_temporaryURLAppropriateForURL:(id)l calledFromLegacyAPI:(BOOL)i error:(id *)error;
- (id)archiveItemsWithURLWrappers:(id)wrappers passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format destinationFolderURLWrapper:(id)wrapper usePlaceholder:(BOOL)placeholder completionHandler:(id)handler;
- (id)archiveItemsWithURLWrappers:(id)wrappers toURLWrapper:(id)wrapper options:(unint64_t)options compressionFormat:(unint64_t)format passphrase:(id)passphrase completionHandler:(id)handler;
- (id)archivedItemDescriptorsForFD:(int)d url:(id)url passphrases:(id)passphrases progress:(id)progress formats:(unint64_t)formats destinationFolderURL:(id)l error:(id *)error;
- (id)performActionOfKind:(unint64_t)kind onResourcesWithURLWrappers:(id)wrappers clientDestinationFolderURLWrapper:(id)wrapper calledFromLegacyAPI:(BOOL)i actionHandler:(id)handler completionHandler:(id)completionHandler;
- (id)unarchiveItemWithURLWrapper:(id)wrapper passphrases:(id)passphrases addToKeychain:(BOOL)keychain destinationFolderURLWrapper:(id)lWrapper acceptedFormats:(unint64_t)formats exportsStreamingReceiver:(BOOL)receiver usePlaceholder:(BOOL)placeholder completionHandler:(id)self0;
- (id)unarchiveItemWithURLWrapper:(id)wrapper toURLWrapper:(id)lWrapper options:(unint64_t)options passphrases:(id)passphrases acceptedFormats:(unint64_t)formats completionHandler:(id)handler;
- (int)openArchiveFile:(id)file error:(id *)error;
- (void)_cancel;
- (void)_cleanupWithResult:(id)result error:(id)error securityScopedURLs:(id)ls completionHandler:(id)handler;
- (void)itemDescriptorsForItemWithURLWrapper:(id)wrapper passphrases:(id)passphrases completionHandler:(id)handler;
@end

@implementation DSArchiveExportedService

- (DSArchiveExportedService)init
{
  v9.receiver = self;
  v9.super_class = DSArchiveExportedService;
  v2 = [(DSArchiveExportedService *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("archive-service-queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

- (id)_filepathForFd:(int)fd error:(id *)error
{
  if (fcntl(fd, 50, __s) == -1)
  {
    v8 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:0 debugDescription:@"couldn't get filename from a file descriptor"];
    v6 = v8;
    if (error)
    {
      v9 = v8;
      *error = v6;
    }

    v10 = LogObj(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      fdCopy = fd;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Couldn't get the path of a file from a fd (%d): %@", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 stringWithFileSystemRepresentation:__s length:strlen(__s)];
  }

  return v7;
}

- (void)itemDescriptorsForItemWithURLWrapper:(id)wrapper passphrases:(id)passphrases completionHandler:(id)handler
{
  wrapperCopy = wrapper;
  passphrasesCopy = passphrases;
  handlerCopy = handler;
  v20 = wrapperCopy;
  v11 = [wrapperCopy url];
  startAccessingSecurityScopedResource = [v11 startAccessingSecurityScopedResource];
  if (((v11 != 0) & startAccessingSecurityScopedResource) != 0)
  {
    v13 = [NSFileAccessIntent readingIntentWithURL:v11 options:0x20000];
    v14 = objc_opt_new();
    v15 = passphrasesCopy;
    v27 = v13;
    v16 = [NSArray arrayWithObjects:&v27 count:1];
    operationQueue = self->_operationQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000F978;
    v21[3] = &unk_10002D038;
    v21[4] = self;
    v22 = v11;
    v18 = v13;
    v23 = v18;
    v24 = v15;
    v26 = startAccessingSecurityScopedResource;
    v25 = handlerCopy;
    [v14 coordinateAccessWithIntents:v16 queue:operationQueue byAccessor:v21];

    passphrasesCopy = v15;
  }

  else
  {
    if (v11)
    {
      v28 = NSURLErrorKey;
      v29 = v11;
      v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }

    else
    {
      v18 = 0;
    }

    v19 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:v18];
    (*(handlerCopy + 2))(handlerCopy, 0, v19);
  }
}

- (id)_createUniquePlaceholderWithName:(id)name inFolder:(id)folder asFolder:(BOOL)asFolder isArchiving:(BOOL)archiving error:(id *)error
{
  archivingCopy = archiving;
  nameCopy = name;
  folder;
  v15 = nameCopy;
  if (archivingCopy)
  {
    nameCopy = [nameCopy stringByDeletingPathExtension];
  }

  v10 = [NSString ds_fileNameHasClaimedFileExtension:nameCopy];
  if (archivingCopy)
  {

    pathExtension = [v15 pathExtension];
    v17 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v17, pathExtension);

    v18 = 1;
    stringByDeletingPathExtension = [v15 stringByDeletingPathExtension];
  }

  else
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    stringByDeletingPathExtension = v15;
  }

  v16 = &off_10002DEA8;
  [stringByDeletingPathExtension fp_stringByDeletingPathBounceNo:&v16 andPathExtension:0 isFolder:v10 ^ 1];
  objc_claimAutoreleasedReturnValue();
  v13 = v16;
  if (archivingCopy)
  {
  }

  v15;
  sub_100004D50();
}

- (id)_createArchivePlaceholderForItems:(id)items inFolder:(id)folder compressionFormat:(unint64_t)format error:(id *)error
{
  itemsCopy = items;
  folderCopy = folder;
  v24 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  if ([itemsCopy count] == 1)
  {
    v12 = [itemsCopy objectAtIndexedSubscript:0];
    lastPathComponent = [v12 lastPathComponent];
    if (v24 != lastPathComponent)
    {
      TString::SetStringRefAsImmutable(&v24, lastPathComponent);
    }

    if (BRContainerClass() && [v12 br_isDocumentsContainer])
    {
      TCFURLInfo::StringProperty(v12, kCFURLLocalizedNameKey, &theString);
      if (CFStringGetLength(theString))
      {
        TString::SetStringRefAsImmutable(&v24, theString);
      }

      sub_100004348(&theString);
    }

    if ([NSString ds_fileNameHasClaimedFileExtension:v24])
    {
      v14 = v24;
      stringByDeletingPathExtension = [(__CFString *)v14 stringByDeletingPathExtension];
      if (v24 != stringByDeletingPathExtension)
      {
        TString::SetStringRefAsImmutable(&v24, stringByDeletingPathExtension);
      }
    }
  }

  else
  {
    TCFURLInfo::LocalizedStringWithKey(@"GenericArchiveName", &theString);
    sub_100004F88(&v24, &theString);
    CFRetain(&stru_10002D580);
    if (theString)
    {
      CFRelease(theString);
    }

    theString = &stru_10002D580;
    sub_100004348(&theString);
  }

  if (format > 2)
  {
    switch(format)
    {
      case 3uLL:
        preferredFilenameExtension = @"tar";
        goto LABEL_32;
      case 4uLL:
        v18 = &UTTypeAppleArchive;
        break;
      case 5uLL:
        v18 = &_UTTypeAppleEncryptedArchive;
        break;
      default:
        preferredFilenameExtension = 0;
        goto LABEL_32;
    }

LABEL_31:
    preferredFilenameExtension = [*v18 preferredFilenameExtension];
    goto LABEL_32;
  }

  if (!format)
  {
    v18 = &UTTypeZIP;
    goto LABEL_31;
  }

  v16 = @"cpgz";
  if (format != 2)
  {
    v16 = 0;
  }

  if (format == 1)
  {
    preferredFilenameExtension = @"cpio";
  }

  else
  {
    preferredFilenameExtension = v16;
  }

LABEL_32:
  v19 = v24;
  v20 = [(__CFString *)v19 stringByAppendingPathExtension:preferredFilenameExtension];
  if (v24 != v20)
  {
    TString::SetStringRefAsImmutable(&v24, v20);
  }

  v21 = [(DSArchiveExportedService *)self _createUniquePlaceholderWithName:v24 inFolder:folderCopy asFolder:0 isArchiving:1 error:error];

  sub_100004348(&v24);

  return v21;
}

- (id)_createUnarchivePlaceholderForDescriptors:(id)descriptors describingArchive:(id)archive inFolder:(id)folder hasMultipleTopLevelItems:(BOOL *)items placeholderIsFolder:(BOOL *)isFolder error:(id *)error
{
  selfCopy = self;
  descriptorsCopy = descriptors;
  archiveCopy = archive;
  folderCopy = folder;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = descriptorsCopy;
  v12 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (!v12)
  {

    goto LABEL_37;
  }

  v42 = 0;
  v43 = 0;
  v38 = 0;
  v45 = v12;
  v46 = *v53;
  do
  {
    v13 = 0;
    do
    {
      if (*v53 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v52 + 1) + 8 * v13);
      context = objc_autoreleasePoolPush();
      filePath = [v14 filePath];
      pathComponents = [filePath pathComponents];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v17 = pathComponents;
      v18 = [v17 countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (!v18)
      {
LABEL_17:

        v22 = 0;
LABEL_18:
        v23 = 1;
        goto LABEL_19;
      }

      v19 = *v49;
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v48 + 1) + 8 * v20);
        if (([v21 isEqualToString:{@"/", selfCopy}] & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", @".") & 1) == 0)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v17 countByEnumeratingWithState:&v48 objects:v59 count:16];
          if (v18)
          {
            goto LABEL_8;
          }

          goto LABEL_17;
        }
      }

      if ([v21 isEqualToString:@".."])
      {
        goto LABEL_17;
      }

      v22 = v21;

      if (!v22)
      {
        goto LABEL_18;
      }

      if (!v43)
      {
        v24 = v22;
        v42 |= [v17 count] > 1;
        v43 = v24;
        v22 = v24;
        goto LABEL_18;
      }

      if ([v43 isEqualToString:v22])
      {
        goto LABEL_18;
      }

      v23 = 0;
      v38 = 1;
LABEL_19:

      objc_autoreleasePoolPop(context);
      if (!v23)
      {
        goto LABEL_28;
      }

      v13 = v13 + 1;
    }

    while (v13 != v45);
    v25 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    v45 = v25;
  }

  while (v25);
LABEL_28:

  if (v43)
  {
    if (items)
    {
      *items = v38 & 1;
    }

    if (v38)
    {
      lastPathComponent = [(__CFString *)archiveCopy lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      pathExtension = [stringByDeletingPathExtension pathExtension];
      if (![pathExtension caseInsensitiveCompare:@"tar"] || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"cpio"))
      {
        v27StringByDeletingPathExtension = [stringByDeletingPathExtension stringByDeletingPathExtension];

        stringByDeletingPathExtension = v27StringByDeletingPathExtension;
      }

      v42 = 1;
    }

    else
    {
      stringByDeletingPathExtension = v43;
    }

    if (isFolder)
    {
      *isFolder = v42 & 1;
    }

    selfCopy = [(DSArchiveExportedService *)selfCopy _createUniquePlaceholderWithName:stringByDeletingPathExtension inFolder:folderCopy asFolder:v42 & 1 isArchiving:0 error:error, selfCopy];
    goto LABEL_46;
  }

LABEL_37:
  v58[0] = archiveCopy;
  v57[0] = NSURLErrorKey;
  v57[1] = NSLocalizedDescriptionKey;
  TCFURLInfo::LocalizedStringWithFileName(buf, @"ArchiveIsEmpty", archiveCopy);
  v30 = *buf;
  v58[1] = v30;
  v43 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];

  sub_100004348(buf);
  stringByDeletingPathExtension = [NSError errorWithDomain:@"com.apple.desktopservices.ArchiveService" code:-1001 userInfo:v43];
  v31 = LogObj(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = SanitizedURL(archiveCopy);
    *buf = 138543362;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "No top level items in %{public}@", buf, 0xCu);
  }

  if (error)
  {
    v33 = stringByDeletingPathExtension;
    selfCopy = 0;
    *error = stringByDeletingPathExtension;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_46:

  return selfCopy;
}

- (id)archiveItemsWithURLWrappers:(id)wrappers toURLWrapper:(id)wrapper options:(unint64_t)options compressionFormat:(unint64_t)format passphrase:(id)passphrase completionHandler:(id)handler
{
  optionsCopy = options;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100010B84;
  v17[3] = &unk_10002D060;
  handlerCopy = handler;
  v14 = handlerCopy;
  v15 = [(DSArchiveExportedService *)self archiveItemsWithURLWrappers:wrappers passphrase:passphrase addToKeychain:optionsCopy & 1 compressionFormat:format destinationFolderURLWrapper:wrapper usePlaceholder:1 completionHandler:v17];

  return v15;
}

- (id)archiveItemsWithURLWrappers:(id)wrappers passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format destinationFolderURLWrapper:(id)wrapper usePlaceholder:(BOOL)placeholder completionHandler:(id)handler
{
  placeholderCopy = placeholder;
  passphraseCopy = passphrase;
  wrapperCopy = wrapper;
  handlerCopy = handler;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100010F14;
  v39[4] = sub_100010F24;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_100010F14;
  v37[4] = sub_100010F24;
  v38 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100010F2C;
  v28[3] = &unk_10002D0B0;
  v35 = placeholderCopy;
  v32 = v37;
  v28[4] = self;
  v29 = wrapperCopy;
  formatCopy = format;
  v33 = v39;
  v30 = passphraseCopy;
  v31 = handlerCopy;
  keychainCopy = keychain;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100011534;
  v23[3] = &unk_10002D0D8;
  v26 = v37;
  v27 = v39;
  v24 = v29;
  v25 = v31;
  v18 = v29;
  v19 = v31;
  v20 = passphraseCopy;
  v21 = [(DSArchiveExportedService *)self performActionOfKind:0 onResourcesWithURLWrappers:wrappers clientDestinationFolderURLWrapper:v18 calledFromLegacyAPI:!placeholderCopy actionHandler:v28 completionHandler:v23];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  return v21;
}

- (id)unarchiveItemWithURLWrapper:(id)wrapper toURLWrapper:(id)lWrapper options:(unint64_t)options passphrases:(id)passphrases acceptedFormats:(unint64_t)formats completionHandler:(id)handler
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100011B18;
  v18[3] = &unk_10002D100;
  handlerCopy = handler;
  v14 = handlerCopy;
  LOBYTE(v17) = 1;
  v15 = [(DSArchiveExportedService *)self unarchiveItemWithURLWrapper:wrapper passphrases:passphrases addToKeychain:options & 1 destinationFolderURLWrapper:lWrapper acceptedFormats:formats exportsStreamingReceiver:(options >> 20) & 1 usePlaceholder:v17 completionHandler:v18];

  return v15;
}

- (id)unarchiveItemWithURLWrapper:(id)wrapper passphrases:(id)passphrases addToKeychain:(BOOL)keychain destinationFolderURLWrapper:(id)lWrapper acceptedFormats:(unint64_t)formats exportsStreamingReceiver:(BOOL)receiver usePlaceholder:(BOOL)placeholder completionHandler:(id)self0
{
  receiverCopy = receiver;
  wrapperCopy = wrapper;
  passphrasesCopy = passphrases;
  lWrapperCopy = lWrapper;
  handlerCopy = handler;
  v17 = +[NSXPCConnection currentConnection];
  v25 = v17;
  v29 = dispatch_group_create();
  if (receiverCopy)
  {
    remoteObjectProxy = [v17 remoteObjectProxy];
  }

  else
  {
    remoteObjectProxy = 0;
  }

  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = sub_100010F14;
  v67[4] = sub_100010F24;
  v68 = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = -1;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = sub_100010F14;
  v61[4] = sub_100010F24;
  v62 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = sub_100010F14;
  v59[4] = sub_100010F24;
  v60 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_100010F14;
  v57[4] = sub_100010F24;
  v58 = 0;
  v69 = wrapperCopy;
  v18 = [NSArray arrayWithObjects:&v69 count:1];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000120EC;
  v42[3] = &unk_10002D150;
  v48 = v61;
  v49 = v63;
  v26 = remoteObjectProxy;
  v43 = v26;
  selfCopy = self;
  v24 = passphrasesCopy;
  placeholderCopy = placeholder;
  formatsCopy = formats;
  v28 = passphrasesCopy;
  v45 = v28;
  v50 = v59;
  v19 = lWrapperCopy;
  v46 = v19;
  v51 = v65;
  v52 = v67;
  v53 = v57;
  keychainCopy = keychain;
  v47 = v29;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100012A0C;
  v33[3] = &unk_10002D1C8;
  v37 = v67;
  v38 = v59;
  v39 = v63;
  v20 = v47;
  v34 = v20;
  selfCopy2 = self;
  v21 = handlerCopy;
  v36 = v21;
  v40 = v61;
  v41 = v65;
  v22 = [(DSArchiveExportedService *)self performActionOfKind:1 onResourcesWithURLWrappers:v18 clientDestinationFolderURLWrapper:v19 calledFromLegacyAPI:!placeholder actionHandler:v42 completionHandler:v33, v24];

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);

  return v22;
}

- (void)_cancel
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = 1;
  objc_sync_exit(obj);
}

- (BOOL)_isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  objc_sync_exit(selfCopy);

  return cancelled;
}

- (id)_quarantineDataFromArchiveFD:(int)d url:(id)url error:(id *)error
{
  v5 = [NSData data:*&d];

  return v5;
}

- (id)_errorForAppleArchive:(int)archive itemURL:(id)l
{
  archiveCopy = archive;
  lCopy = l;
  if ((archiveCopy & 0x3FF) != 0)
  {
    v6 = archiveCopy & 0x3FF;
  }

  else
  {
    v6 = 22;
  }

  v7 = strerror(v6);
  if (v7)
  {
    v8 = [NSString stringWithUTF8String:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSError ds_errorWithPOSIXCode:v6 itemURL:lCopy debugDescription:v8];

  return v9;
}

- (id)_errorForArchive:(archive *)archive itemURL:(id)l
{
  lCopy = l;
  v6 = archive_errno();
  if (v6 == -1 && archive_read_has_encrypted_entries() == 1)
  {
    _archiveDecryptionError = [(DSArchiveExportedService *)self _archiveDecryptionError];
  }

  else
  {
    v8 = archive_error_string();
    if (v8)
    {
      v9 = [NSString stringWithUTF8String:v8];
    }

    else
    {
      v9 = 0;
    }

    if (v6 == -1)
    {
      v10 = 94;
    }

    else
    {
      v10 = v6;
    }

    _archiveDecryptionError = [NSError ds_errorWithPOSIXCode:v10 itemURL:lCopy debugDescription:v9];
  }

  return _archiveDecryptionError;
}

- (id)_temporaryURLAppropriateForURL:(id)l calledFromLegacyAPI:(BOOL)i error:(id *)error
{
  iCopy = i;
  lCopy = l;
  v9 = [(DSArchiveExportedService *)self __temporaryURLAppropriateForURL:lCopy calledFromLegacyAPI:iCopy error:error];
  if (realpath_DARWIN_EXTSN([(NSURL *)v9 fileSystemRepresentation], v15))
  {
    [NSURL fileURLWithFileSystemRepresentation:v15 isDirectory:[(NSURL *)v9 hasDirectoryPath] relativeToURL:0];
    v9 = p_super = &v9->super;
  }

  else
  {
    p_super = LogObj(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v11 = SanitizedURL(v9);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "Couldn't fetch realpath for %{public}@", &v13, 0xCu);
    }
  }

  return v9;
}

- (id)__temporaryURLAppropriateForURL:(id)l calledFromLegacyAPI:(BOOL)i error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v8 = lCopy;
    if (!i)
    {
      v35 = 0;
      v34 = 0;
      v9 = [lCopy getResourceValue:&v35 forKey:NSURLIsDirectoryKey error:&v34];
      v10 = v35;
      v11 = v34;
      if ((v9 & 1) == 0)
      {
        v12 = LogObj(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't get isDir property: %@", buf, 0xCu);
        }
      }

      if ([v10 BOOLValue])
      {
        v13 = [v8 URLByAppendingPathComponent:@".ArchiveServiceTemp" isDirectory:1];

        v8 = v13;
      }
    }

    v14 = +[NSFileManager defaultManager];
    v15 = [v14 URLForDirectory:99 inDomain:1 appropriateForURL:v8 create:1 error:error];

    goto LABEL_32;
  }

  v16 = NSTemporaryDirectory();
  v17 = [NSURL fileURLWithPath:v16];

  if (!v17)
  {
    v24 = LogObj(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't get temporary directory", buf, 2u);
    }

    if (error)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      *error = v15 = 0;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v18 = [v17 URLByAppendingPathComponent:@"Archiving__XXXXXX"];

  v19 = strdup([v18 fileSystemRepresentation]);
  if (!v19)
  {
    v25 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:v18 debugDescription:@"Couldn't copy temporary directory name"];
    v26 = v25;
    if (error)
    {
      v27 = v25;
      *error = v26;
    }

    v28 = LogObj(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Couldn't copy temporary directory name: %@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v20 = v19;
  v21 = mkdtemp(v19);
  if (!v21)
  {
    v29 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:v18 debugDescription:@"Couldn't create temporary directory"];
    v30 = v29;
    if (error)
    {
      v31 = v29;
      *error = v30;
    }

    v32 = LogObj(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v30;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't create temporary directory: %@", buf, 0xCu);
    }

    free(v20);
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  v15 = [NSURL fileURLWithFileSystemRepresentation:v21 isDirectory:1 relativeToURL:0];
  v22 = +[NSFileManager defaultManager];
  v23 = [v22 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:error];

  free(v20);
  if ((v23 & 1) == 0)
  {

    v15 = 0;
  }

LABEL_32:

  return v15;
}

- (void)_cleanupWithResult:(id)result error:(id)error securityScopedURLs:(id)ls completionHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, result, error);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = lsCopy;
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * v14) stopAccessingSecurityScopedResource];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (id)performActionOfKind:(unint64_t)kind onResourcesWithURLWrappers:(id)wrappers clientDestinationFolderURLWrapper:(id)wrapper calledFromLegacyAPI:(BOOL)i actionHandler:(id)handler completionHandler:(id)completionHandler
{
  wrappersCopy = wrappers;
  wrapperCopy = wrapper;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v13 = objc_opt_new();
  v14 = sub_10001149C(v13);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014980;
  block[3] = &unk_10002D218;
  selfCopy = self;
  kindCopy = kind;
  v38 = v13;
  v55 = v38;
  dispatch_async(v14, block);

  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [wrappersCopy count]);
  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [wrappersCopy count]);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v17 = wrappersCopy;
  v18 = [(NSURL *)v17 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v18)
  {
    v19 = *v51;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v51 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v21 = [*(*(&v50 + 1) + 8 * v20) url];
      v22 = v21;
      if (!v21)
      {
        break;
      }

      if (([v21 startAccessingSecurityScopedResource] & 1) == 0)
      {
        v62 = NSURLErrorKey;
        v63 = v22;
        v29 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        goto LABEL_14;
      }

      [v15 addObject:v22];
      v23 = [NSFileAccessIntent readingIntentWithURL:v22 options:0x20000];
      [v16 addObject:v23];

      if (v18 == ++v20)
      {
        v18 = [(NSURL *)v17 countByEnumeratingWithState:&v50 objects:v64 count:16];
        if (v18)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v29 = 0;
LABEL_14:
    v30 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:v29];
    [(DSArchiveExportedService *)self _cleanupWithResult:0 error:v30 securityScopedURLs:v15 completionHandler:completionHandlerCopy];

    v28 = 0;
    v24 = v17;
    goto LABEL_18;
  }

LABEL_10:

  v24 = [wrapperCopy url];
  if ([(NSURL *)v24 startAccessingSecurityScopedResource])
  {
    [v15 addObject:v24];
    v25 = objc_opt_new();
    operationQueue = self->_operationQueue;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100014AF4;
    v41[3] = &unk_10002D240;
    v42 = v16;
    selfCopy2 = self;
    v44 = v15;
    v47 = completionHandlerCopy;
    v27 = v24;
    v45 = v27;
    iCopy = i;
    v48 = handlerCopy;
    v28 = v38;
    v46 = v28;
    [v25 coordinateAccessWithIntents:v42 queue:operationQueue byAccessor:v41];

    v38 = 0;
    v22 = v42;
    v24 = v27;
  }

  else
  {
    v31 = LogObj(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = SanitizedURL(v24);
      *buf = 138543362;
      v61 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Couldn't access the destination folder %{public}@", buf, 0xCu);
    }

    v58 = NSURLErrorKey;
    v59 = v24;
    v22 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v33 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:v22];
    [(DSArchiveExportedService *)self _cleanupWithResult:0 error:v33 securityScopedURLs:v15 completionHandler:completionHandlerCopy];

    v28 = 0;
  }

LABEL_18:

  return v28;
}

- (BOOL)_getIsDirectoryProperty:(BOOL *)property forItemURL:(id)l error:(id *)error
{
  lCopy = l;
  v17 = 0;
  v16 = 0;
  v8 = [lCopy getResourceValue:&v17 forKey:NSURLIsDirectoryKey error:&v16];
  v9 = v17;
  v10 = v16;
  if ((v8 & 1) == 0)
  {
    v12 = LogObj(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get isDirectory info: %@", buf, 0xCu);
    }

    if (error)
    {
      v13 = v10;
      v11 = 0;
      *error = v10;
      goto LABEL_11;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (!v9)
  {
    if (error)
    {
      v18 = NSURLErrorKey;
      v19 = lCopy;
      v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];
    }

    goto LABEL_10;
  }

  *property = [v9 BOOLValue];
  v11 = 1;
LABEL_11:

  return v11;
}

- (id)_replacePathComponent:(id)component withComponent:(id)withComponent inFilePath:(id)path
{
  componentCopy = component;
  withComponentCopy = withComponent;
  pathCopy = path;
  v11 = [pathCopy rangeOfString:componentCopy];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [pathCopy stringByReplacingCharactersInRange:v11 withString:{v10, withComponentCopy}];

    pathCopy = v12;
  }

  return pathCopy;
}

- (BOOL)_createMetadataFileWithAppleDoubleFormatOfItemURL:(id)l destinationURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v9 = copyfile([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), 0, 0x4C0005u);
  if (v9)
  {
    v10 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:lCopy debugDescription:@"Couldn't set extended attributes / ACLs"];
    v11 = v10;
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    v13 = LogObj(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't set extended attributes / ACLs: %@", &v15, 0xCu);
    }
  }

  return v9 == 0;
}

- (id)_sanitizedPathWithCString:(const char *)string length:(unint64_t)length
{
  v6 = [NSString stringWithUTF8String:?];
  if (!v6)
  {
    v15[0] = &__kCFBooleanTrue;
    v14[0] = NSStringEncodingDetectionAllowLossyKey;
    v14[1] = NSStringEncodingDetectionSuggestedEncodingsKey;
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", +[NSString defaultCStringEncoding]);
    v13 = v7;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v15[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    v10 = [NSData dataWithBytesNoCopy:string length:length freeWhenDone:0];
    v12 = 0;
    [NSString stringEncodingForData:v10 encodingOptions:v9 convertedString:&v12 usedLossyConversion:0];
    v6 = v12;

    if (!v6)
    {
      v6 = [NSString stringWithCString:string encoding:1];
    }
  }

  return v6;
}

- (BOOL)_enumerateItemURL:(id)l itemActionBlock:(id)block error:(id *)error
{
  lCopy = l;
  blockCopy = block;
  v38 = 0;
  v32 = lCopy;
  v7 = [[NSMutableArray alloc] initWithObjects:{lCopy, 0}];
  v8 = 0;
  v9 = 0;
  v33 = 0;
  LOBYTE(lCopy) = 1;
  while (!-[DSArchiveExportedService _isCancelled](self, "_isCancelled") && (lCopy & 1) != 0 && [v7 count])
  {
    v11 = objc_autoreleasePoolPush();
    firstObject = [v7 firstObject];

    v9 = firstObject;
    [v7 removeObjectAtIndex:0];
    v37 = v8;
    LODWORD(lCopy) = [(DSArchiveExportedService *)self _getIsDirectoryProperty:&v38 forItemURL:firstObject error:&v37];
    v13 = v37;

    if (lCopy)
    {
      v36 = v13;
      v14 = blockCopy[2](blockCopy, v9, v38, &v36);
      v8 = v36;

      if (v14)
      {
        if (v38 == 1)
        {
          v15 = v9;
          v16 = opendir([v9 fileSystemRepresentation]);
          if (!v16)
          {
            v26 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:v9 debugDescription:@"Couldn't open file"];

            v27 = LogObj(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v26;
              v28 = v27;
              v29 = "Couldn't open file: %@";
LABEL_31:
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
            }

LABEL_32:

            LOBYTE(lCopy) = 0;
            v24 = 1;
            v8 = v26;
            goto LABEL_33;
          }

          v17 = 0;
          *__error() = 0;
          while (1)
          {
            v18 = readdir(v16);
            if (!v18 || [(DSArchiveExportedService *)self _isCancelled])
            {
              break;
            }

            v19 = objc_autoreleasePoolPush();
            if (v18->d_name[0] != 46 || v18->d_name[1] && (v18->d_name[1] != 46 || v18->d_name[2]))
            {
              d_type = v18->d_type;
              if (d_type <= 0xA && ((1 << d_type) & 0x510) != 0)
              {
                v21 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v18->d_name isDirectory:d_type == 4 relativeToURL:v9];
                lastPathComponent = [v21 lastPathComponent];
                v23 = [v9 URLByAppendingPathComponent:lastPathComponent isDirectory:d_type == 4];
                [v7 addObject:v23];
              }
            }

            v17 = 1;
            objc_autoreleasePoolPop(v19);
          }

          if ((v17 & 1) == 0 && ![(DSArchiveExportedService *)self _isCancelled])
          {
            v33 = *__error();
          }

          v25 = closedir(v16);
          if (v33)
          {
            v26 = [NSError ds_errorWithPOSIXCode:"ds_errorWithPOSIXCode:itemURL:debugDescription:" itemURL:? debugDescription:?];

            v27 = LogObj(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v26;
              v28 = v27;
              v29 = "Couldn't read directory content: %@";
              goto LABEL_31;
            }

            goto LABEL_32;
          }

          if (v25 == -1)
          {
            v26 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:v9 debugDescription:@"Couldn't close directory content"];

            v27 = LogObj(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Couldn't close directory content: %@", buf, 0xCu);
            }

            v33 = 0;
            goto LABEL_32;
          }

          v24 = 0;
          v33 = 0;
        }

        else
        {
          v24 = 0;
        }

        LOBYTE(lCopy) = 1;
      }

      else
      {
        LOBYTE(lCopy) = 0;
        v24 = 1;
      }
    }

    else
    {
      v24 = 1;
      v8 = v13;
    }

LABEL_33:
    objc_autoreleasePoolPop(v11);
    if (v24)
    {
      break;
    }
  }

  if (error && (lCopy & 1) == 0)
  {
    v30 = v8;
    *error = v8;
  }

  return lCopy & 1;
}

- (BOOL)_writeOnArchiveEntryAtPath:(const char *)path entry:(archive_entry *)entry archive:(archive *)archive writeProgressHandler:(id)handler error:(id *)error
{
  v7 = __chkstk_darwin(self, a2, path, entry, archive, handler, error);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v7;
  v16 = v15;
  v17 = open(v13, 33028);
  if (v17 < 0)
  {
    v20 = *__error();
    v21 = [NSURL fileURLWithFileSystemRepresentation:v13 isDirectory:0 relativeToURL:0];
    v22 = [NSError ds_errorWithPOSIXCode:v20 itemURL:v21 debugDescription:@"Couldn't open the file"];

    if (v9)
    {
      v23 = v22;
      *v9 = v22;
    }

    v24 = LogObj(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v38 = 138412290;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't open the file: %@", &v38, 0xCu);
    }
  }

  else
  {
    while (1)
    {
      if ([v14 _isCancelled])
      {
        goto LABEL_13;
      }

      v18 = read(v17, v40, 0x2000uLL);
      v19 = v18;
      if (v18 < 1)
      {
        break;
      }

      if (archive_write_data() == -1)
      {
        v26 = archive_errno();
        v25 = 0;
        goto LABEL_16;
      }

      if (v16)
      {
        v16[2](v16, v19);
      }
    }

    if (v18 != -1)
    {
LABEL_13:
      v25 = 0;
      v26 = 0;
      goto LABEL_16;
    }

    v26 = *__error();
    v25 = 1;
LABEL_16:
    v27 = close(v17);
    if (v26)
    {
      if (v25)
      {
        v28 = [NSURL fileURLWithFileSystemRepresentation:v13 isDirectory:0 relativeToURL:0];
        v22 = [NSError ds_errorWithPOSIXCode:v26 itemURL:v28 debugDescription:@"Couldn't read the file"];

        v29 = LogObj(0);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v38 = 138412290;
        v39 = v22;
        v30 = "Couldn't read the file: %@";
      }

      else
      {
        v34 = [NSURL fileURLWithFileSystemRepresentation:v13 isDirectory:0 relativeToURL:0];
        v22 = [v14 _errorForArchive:v11 itemURL:v34];

        v29 = LogObj(0);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v38 = 138412290;
        v39 = v22;
        v30 = "Couldn't write the file to the archive: %@";
      }

      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v30, &v38, 0xCu);
LABEL_29:

      if (v9)
      {
        v35 = v22;
        *v9 = v22;
      }

      goto LABEL_31;
    }

    if (!v27)
    {
      v36 = 1;
      goto LABEL_32;
    }

    v31 = *__error();
    v32 = [NSURL fileURLWithFileSystemRepresentation:v13 isDirectory:0 relativeToURL:0];
    v22 = [NSError ds_errorWithPOSIXCode:v31 itemURL:v32 debugDescription:@"Couldn't close the file"];

    if (v9)
    {
      v33 = v22;
      *v9 = v22;
    }

    v24 = LogObj(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v38 = 138412290;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't close the file: %@", &v38, 0xCu);
    }
  }

LABEL_31:
  v36 = 0;
LABEL_32:

  return v36;
}

- (BOOL)_archiveItemURL:(id)l itemArchivePath:(id)path isDirectory:(BOOL)directory archive:(archive *)archive entry:(archive_entry *)entry stat:(stat *)stat writeProgressHandler:(id)handler error:(id *)self0
{
  lCopy = l;
  pathCopy = path;
  handlerCopy = handler;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v19 = fileSystemRepresentation;
  if (stat)
  {
    archive_entry_copy_stat();
    st_mode = stat->st_mode;
  }

  else
  {
    if (lstat(fileSystemRepresentation, buf))
    {
      v29 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:lCopy debugDescription:@"Couldn't get info from the file"];
      v30 = v29;
      if (error)
      {
        v31 = v29;
        *error = v30;
      }

      v32 = LogObj(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v38 = 138412290;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't get info from the file: %@", v38, 0xCu);
      }

      goto LABEL_26;
    }

    archive_entry_copy_stat();
    st_mode = buf[0].st_mode;
  }

  v21 = pathCopy;
  [pathCopy fileSystemRepresentation];
  archive_entry_set_pathname();
  v22 = st_mode & 0xF000;
  if (v22 == 40960)
  {
    v23 = readlink(v19, buf, 0x3FFuLL);
    if (v23 != -1)
    {
      *(&buf[0].st_dev + v23) = 0;
      archive_entry_set_symlink();
      goto LABEL_6;
    }

    v33 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:lCopy debugDescription:@"readlink failed"];
    v30 = v33;
    if (error)
    {
      v34 = v33;
      *error = v30;
    }

    v32 = LogObj(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v38 = 138412290;
      v39 = v30;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't get symlink target from the file: %@", v38, 0xCu);
    }

LABEL_26:

    v28 = 0;
    goto LABEL_27;
  }

LABEL_6:
  if (archive_write_header())
  {
    v24 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:lCopy];
    v25 = v24;
    if (error)
    {
      v26 = v24;
      *error = v25;
    }

    v27 = LogObj(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      buf[0].st_dev = 138412290;
      *&buf[0].st_mode = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Couldn't write the header on the archive of the entry: %@", buf, 0xCu);
    }

    v28 = 0;
  }

  else
  {
    v28 = 1;
    if (!directory && v22 != 40960)
    {
      v28 = [(DSArchiveExportedService *)self _writeOnArchiveEntryAtPath:v19 entry:entry archive:archive writeProgressHandler:handlerCopy error:error];
    }
  }

  archive_entry_clear();
LABEL_27:

  return v28;
}

- (BOOL)_writeXattrEntryForURL:(id)l compressionFormat:(unint64_t)format archive:(archive *)archive entry:(archive_entry *)entry archiveURL:(id)rL commonParentPath:(id)path stat:(stat *)stat error:(id *)self0
{
  lCopy = l;
  rLCopy = rL;
  pathCopy = path;
  if ((stat->st_mode & 0xF000) == 0xA000 || (copyfile([lCopy fileSystemRepresentation], 0, 0, 0x10005u) & 5) == 0)
  {
    v25 = 0;
    v20 = 0;
    goto LABEL_7;
  }

  uRLByDeletingLastPathComponent = [rLCopy URLByDeletingLastPathComponent];
  v18 = +[NSUUID UUID];
  uUIDString = [v18 UUIDString];
  v20 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:uUIDString isDirectory:0];

  v35 = v20;
  if (!v20)
  {
    v25 = 0;
LABEL_15:
    v29 = v35;
    goto LABEL_16;
  }

  uRLByDeletingLastPathComponent2 = [lCopy URLByDeletingLastPathComponent];
  [uRLByDeletingLastPathComponent2 path];
  if (format)
    v22 = {;
    v20 = [v22 stringByAppendingString:@"/"];

    lastPathComponent2 = [(DSArchiveExportedService *)self _replacePathComponent:pathCopy withComponent:&stru_10002D580 inFilePath:v20];
    lastPathComponent = [lCopy lastPathComponent];
    v25 = [lastPathComponent2 stringByAppendingFormat:@"._%@", lastPathComponent];
  }

  else
    v27 = {;
    v20 = [v27 stringByAppendingString:@"/"];

    lastPathComponent = [@"__MACOSX" stringByAppendingString:@"/"];
    v28 = [(DSArchiveExportedService *)self _replacePathComponent:pathCopy withComponent:lastPathComponent inFilePath:v20];
    lastPathComponent2 = [lCopy lastPathComponent];
    v25 = [v28 stringByAppendingFormat:@"._%@", lastPathComponent2];
  }

  if (![(DSArchiveExportedService *)self _createMetadataFileWithAppleDoubleFormatOfItemURL:lCopy destinationURL:v35 error:error]|| ![(DSArchiveExportedService *)self _archiveItemURL:v35 itemArchivePath:v25 isDirectory:0 archive:archive entry:entry stat:0 writeProgressHandler:0 error:error])
  {
    goto LABEL_15;
  }

  v29 = v35;
  v30 = unlink([v35 fileSystemRepresentation]);
  v31 = v30;
  if (error && v30)
  {
    v32 = *__error();
    v38 = NSURLErrorKey;
    v39 = v35;
    v33 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v32 userInfo:v33];

LABEL_16:
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  if (v31)
  {
    goto LABEL_17;
  }

LABEL_7:
  v26 = 1;
LABEL_18:

  return v26;
}

- (BOOL)_createAppleArchiveOfItemURLs:(id)ls passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format archiveURL:(id)l archiveFD:(int)d progress:(id)progress error:(id *)self0
{
  keychainCopy = keychain;
  lsCopy = ls;
  passphraseCopy = passphrase;
  lCopy = l;
  v59 = lsCopy;
  progressCopy = progress;
  v14 = [NSString ds_commonParentPathForItemURLs:lsCopy];
  if (!v14)
  {
    v33 = LogObj(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(msg_data) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Couldn't fetch common parent", &msg_data, 2u);
    }

    if (error)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      *error = LOBYTE(v32) = 0;
      goto LABEL_59;
    }

LABEL_22:
    LOBYTE(v32) = 0;
    goto LABEL_59;
  }

  context = 0;
  stream = [(DSArchiveExportedService *)self _openAppleArchiveWriteStreamWithArchiveURL:lCopy itemURLs:lsCopy progress:progressCopy passphrase:passphraseCopy aeaContext:&context compressionFormat:format error:error];
  if (!stream)
  {
    goto LABEL_22;
  }

  path_list = AAPathListCreate();
  AAThreadErrorContextEnter();
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = lsCopy;
  v15 = [obj countByEnumeratingWithState:&v68 objects:v89 count:16];
  if (v15)
  {
    v16 = *v69;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v69 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v68 + 1) + 8 * v17);
      if ([(DSArchiveExportedService *)self _isCancelled])
      {
        goto LABEL_16;
      }

      path = [v18 path];
      v20 = [(DSArchiveExportedService *)self _replacePathComponent:v14 withComponent:&stru_10002D580 inFilePath:path];

      v66 = 0;
      v67 = 0;
      v21 = [v18 getResourceValue:&v67 forKey:NSURLIsDirectoryKey error:&v66];
      v22 = v67;
      v23 = v66;
      if ((v21 & 1) == 0)
      {
        break;
      }

      if ([v22 BOOLValue])
      {
        msg_data = 0u;
        v74 = 0u;
        *(&msg_data + 1) = v14;
        fileSystemRepresentation = [*(&msg_data + 1) fileSystemRepresentation];
        v25 = v20;
        v26 = AAPathListCreateWithDirectoryContents(fileSystemRepresentation, [v20 fileSystemRepresentation], &msg_data, sub_100017128, 0, 0);

        if (!v26)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v27 = v14;
        fileSystemRepresentation2 = [v14 fileSystemRepresentation];
        v29 = v20;
        v26 = AAPathListCreateWithPath(fileSystemRepresentation2, [v20 fileSystemRepresentation]);
        if (!v26)
        {
LABEL_31:
          v39 = LogObj(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = v20;
            *buf = &stru_10002D580;
            CFRetain(&stru_10002D580);
            TString::SetStringRefAsImmutable(buf, v40);

            v41 = SanitizedPath(buf);
            LODWORD(msg_data) = 138543362;
            *(&msg_data + 4) = v41;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Error building AAPathList for %{public}@", &msg_data, 0xCu);
            sub_100004348(buf);
          }

LABEL_33:

          v31 = 0;
          v32 = 0;
          goto LABEL_38;
        }
      }

      AAPathListMerge();
      AAPathListDestroy(v26);

      if (v15 == ++v17)
      {
        v15 = [obj countByEnumeratingWithState:&v68 objects:v89 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    v39 = LogObj(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LODWORD(msg_data) = 138412290;
      *(&msg_data + 4) = v23;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed getting item type to generate AAPathList: %@", &msg_data, 0xCu);
    }

    goto LABEL_33;
  }

LABEL_16:

  _isCancelled = [(DSArchiveExportedService *)self _isCancelled];
  if (_isCancelled)
  {
    v31 = 0;
    v32 = 1;
  }

  else
  {
    *&msg_data = self;
    v34 = v14;
    *(&msg_data + 1) = v34;
    v74 = progressCopy;
    v31 = AAEncodeArchiveOutputStreamOpen(stream, &msg_data, sub_100017128, 1uLL, 0);
    if (v31)
    {
      v35 = AAFieldKeySetCreateWithString("TYP,PAT,LNK,DEV,DAT,MOD,FLG,MTM,BTM,CTM,UID,GID,CLC,HLC,XAT");
      v36 = v34;
      v37 = AAArchiveStreamWritePathList(v31, path_list, v35, [v34 fileSystemRepresentation], 0, 0, 1uLL, 0);
      if (v37 < 0)
      {
        v38 = LogObj(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Apple Archive encoding failed", buf, 2u);
        }
      }

      AAFieldKeySetDestroy(v35);
      v32 = v37 >= 0;
    }

    else
    {
      v42 = LogObj(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "AAEncodeArchiveOutputStreamOpen failed", buf, 2u);
      }

      v32 = 0;
    }
  }

LABEL_38:
  v43 = sub_10001149C(_isCancelled);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000173E4;
  block[3] = &unk_10002D268;
  v64 = progressCopy;
  dispatch_async(v43, block);

  AAPathListDestroy(path_list);
  AAArchiveStreamClose(v31);
  AAByteStreamClose(stream);
  if (!v32)
  {
    goto LABEL_53;
  }

  _isCancelled2 = [(DSArchiveExportedService *)self _isCancelled];
  v45 = format == 5 ? _isCancelled2 : 1;
  if (v45)
  {
    goto LABEL_53;
  }

  if (!keychainCopy)
  {
    goto LABEL_53;
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  msg_data = 0u;
  v74 = 0u;
  *buf = 0;
  if (AEAContextGetFieldBlob(context, 0x12u, 0, 0x100uLL, &msg_data, buf))
  {
    goto LABEL_53;
  }

  if (!*buf)
  {
    v48 = LogObj(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *v62 = 0;
      v49 = "Not adding to keychain - invalid archive identifier size";
      goto LABEL_51;
    }

LABEL_52:

    goto LABEL_53;
  }

  v46 = passphraseCopy;
  [passphraseCopy UTF8String];
  v47 = passphraseCopy;
  strlen([passphraseCopy UTF8String]);
  if (AEAKeychainStoreItem())
  {
    v48 = LogObj(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *v62 = 0;
      v49 = "AEAKeychainStoreItem failed";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, v49, v62, 2u);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

LABEL_53:
  AEAContextDestroy(context);
  v50 = AAThreadErrorContextLeave();
  if (error)
  {
    v51 = v32;
  }

  else
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    *error = [(DSArchiveExportedService *)self _errorForAppleArchive:v50 itemURL:lCopy];
  }

LABEL_59:
  return v32;
}

- (BOOL)_createArchiveOfItemURLs:(id)ls compressionFormat:(unint64_t)format archive:(archive *)archive entry:(archive_entry *)entry archiveURL:(id)l fd:(int)fd progress:(id)progress error:(id *)self0
{
  lsCopy = ls;
  lCopy = l;
  progressCopy = progress;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (format > 1)
  {
    if (format == 2)
    {
      v16 = archive_write_set_format_cpio();
      *(v52 + 6) = v16;
      if (v16)
      {
        goto LABEL_14;
      }

      v14 = archive_write_add_filter_gzip();
    }

    else
    {
      if (format != 3)
      {
        goto LABEL_8;
      }

      v14 = archive_write_set_format_gnutar();
    }

LABEL_13:
    *(v52 + 6) = v14;
    if (!v14)
    {
      v15 = 1;
LABEL_20:
      v21 = archive_write_open_fd();
      *(v52 + 6) = v21;
      if (v21)
      {
        v22 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:lCopy];
        v23 = v22;
        if (error)
        {
          v24 = v22;
          *error = v23;
        }

        v25 = LogObj(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Couldn't open the temporary archive file: %@", buf, 0xCu);
        }

        goto LABEL_26;
      }

      if (v15)
      {
        v32 = [NSString ds_commonParentPathForItemURLs:lsCopy];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v57 = 0;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = lsCopy;
        v26 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v26)
        {
          v27 = *v48;
          LOBYTE(v15) = 1;
LABEL_30:
          v28 = 0;
          while (1)
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(obj);
            }

            if ((v15 & 1) == 0)
            {
              break;
            }

            v29 = *(*(&v47 + 1) + 8 * v28);
            if ([(DSArchiveExportedService *)self _isCancelled])
            {
              break;
            }

            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_100017940;
            v37[3] = &unk_10002D2E0;
            v37[4] = self;
            v38 = v32;
            v39 = v29;
            v42 = &v51;
            formatCopy = format;
            archiveCopy = archive;
            entryCopy = entry;
            v40 = lCopy;
            v43 = buf;
            v41 = progressCopy;
            LOBYTE(v15) = [(DSArchiveExportedService *)self _enumerateItemURL:v29 itemActionBlock:v37 error:error];

            if (v26 == ++v28)
            {
              v26 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
              if (v26)
              {
                goto LABEL_30;
              }

              break;
            }
          }
        }

        else
        {
          LOBYTE(v15) = 1;
        }

        _Block_object_dispose(buf, 8);
      }

      goto LABEL_40;
    }

LABEL_14:
    v17 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:lCopy];
    v18 = v17;
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    v20 = LogObj(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = format;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't set %lu as ouput format: %@", buf, 0x16u);
    }

    v15 = 0;
    goto LABEL_20;
  }

  if (!format)
  {
    v14 = archive_write_set_format_zip();
    goto LABEL_13;
  }

  if (format == 1)
  {
    v14 = archive_write_set_format_cpio();
    goto LABEL_13;
  }

LABEL_8:
  if (!error)
  {
LABEL_26:
    LOBYTE(v15) = 0;
    goto LABEL_40;
  }

  [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  *error = LOBYTE(v15) = 0;
LABEL_40:
  _Block_object_dispose(&v51, 8);

  return v15 & 1;
}

- (BOOL)_archiveFromItemURLs:(id)ls passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format archiveURL:(id)l fd:(int)fd progress:(id)progress error:(id *)self0
{
  keychainCopy = keychain;
  lsCopy = ls;
  passphraseCopy = passphrase;
  lCopy = l;
  progressCopy = progress;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  if (format == 5)
  {
    if (![passphraseCopy length])
    {
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v17 = LogObj(0);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v18 = "Apple Encrypted Archive requires a passphrase.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
LABEL_13:
      v19 = 0;
      goto LABEL_31;
    }
  }

  else if ([passphraseCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v17 = LogObj(0);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v18 = "Can't archive this format with a passphrase.";
    goto LABEL_12;
  }

  fdCopy = fd;
  formatCopy = format;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = lsCopy;
  v20 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v20)
  {
    v21 = *v39;
LABEL_16:
    v22 = 0;
    while (1)
    {
      if (*v39 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v38 + 1) + 8 * v22);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001822C;
      v37[3] = &unk_10002D308;
      v37[4] = v43;
      if (![(DSArchiveExportedService *)self _enumerateItemURL:v23 itemActionBlock:v37 error:error])
      {
        goto LABEL_13;
      }

      if ([(DSArchiveExportedService *)self _isCancelled])
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v20)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v25 = sub_10001149C(v24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000183CC;
  block[3] = &unk_10002D330;
  v26 = progressCopy;
  v35 = v26;
  v36 = v43;
  dispatch_async(v25, block);

  if ((formatCopy & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v19 = [(DSArchiveExportedService *)self _createAppleArchiveOfItemURLs:v17 passphrase:passphraseCopy addToKeychain:keychainCopy compressionFormat:formatCopy archiveURL:lCopy archiveFD:fdCopy progress:v26 error:error];
  }

  else
  {
    v27 = archive_write_new();
    v19 = [(DSArchiveExportedService *)self _createArchiveOfItemURLs:v17 compressionFormat:formatCopy archive:v27 entry:archive_entry_new() archiveURL:lCopy fd:fdCopy progress:v26 error:error];
    archive_entry_free();
    if (archive_write_close())
    {
      if (error)
      {
        [(DSArchiveExportedService *)self _errorForArchive:v27 itemURL:lCopy];
        *error = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    archive_write_free();
  }

  v17 = v35;
LABEL_31:

  _Block_object_dispose(v43, 8);
  return v19;
}

- (BOOL)_isAppleArchive:(id)archive
{
  pathExtension = [archive pathExtension];
  v4 = [UTType typeWithFilenameExtension:pathExtension];

  if ([v4 isEqual:UTTypeAppleArchive])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:_UTTypeAppleEncryptedArchive];
  }

  return v5;
}

- (AAByteStream_impl)_openAppleArchiveWriteStreamWithArchiveURL:(id)l itemURLs:(id)ls progress:(id)progress passphrase:(id)passphrase aeaContext:(AEAContext_impl *)context compressionFormat:(unint64_t)format error:(id *)error
{
  lCopy = l;
  passphraseCopy = passphrase;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
  v17 = AACustomByteStreamOpen();
  AACustomByteStreamSetData(v17, v16);
  AACustomByteStreamSetCloseProc(v17, sub_1000188B8);
  AACustomByteStreamSetCancelProc(v17, sub_100018930);
  AACustomByteStreamSetWriteProc(v17, sub_100018940);
  AAThreadErrorContextEnter();
  v18 = AAFileStreamOpenWithPath(fileSystemRepresentation, 1537, 0x1A4u);
  *v16 = v18;
  if (v18)
  {
    if (format == 4)
    {
      v19 = AACompressionOutputStreamOpen(v18, 0x801u, 0x400000uLL, 1uLL, 0);
      v16[2] = v19;
      if (!v19)
      {
        v20 = [(DSArchiveExportedService *)self _errorForAppleArchive:AAThreadErrorContextLeave() itemURL:lCopy];
        v21 = v20;
        if (error)
        {
          v22 = v20;
          *error = v21;
        }

        v23 = LogObj(0);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v37 = 138412290;
        v38 = v21;
        v24 = "Error opening compression stream: %@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, &v37, 0xCu);
LABEL_20:

        v33 = 0;
LABEL_21:
        AAThreadErrorContextLeave();
        if ((v33 & 1) == 0)
        {
          AAByteStreamClose(v17);
          AEAContextDestroy(*context);
          v17 = 0;
          *context = 0;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v29 = AEAContextCreateWithProfile(5u);
      *context = v29;
      uTF8String = [passphraseCopy UTF8String];
      v31 = strlen([passphraseCopy UTF8String]);
      AEAContextSetFieldBlob(v29, 0x13u, 0, uTF8String, v31);
      AEAContextSetFieldUInt(*context, 3u, 0x801uLL);
      AEAContextSetFieldUInt(*context, 4u, 0x400000uLL);
      AEAContextSetFieldUInt(*context, 2u, 2uLL);
      AEAContextSetFieldUInt(*context, 1u, 0x10000uLL);
      v32 = AEAEncryptionOutputStreamOpen(*v16, *context, 1uLL, 0);
      v16[1] = v32;
      v16[3] = *context;
      if (!v32)
      {
        v34 = [(DSArchiveExportedService *)self _errorForAppleArchive:AAThreadErrorContextLeave() itemURL:lCopy];
        v21 = v34;
        if (error)
        {
          v35 = v34;
          *error = v21;
        }

        v23 = LogObj(0);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v37 = 138412290;
        v38 = v21;
        v24 = "Error opening encryption stream: %@";
        goto LABEL_19;
      }
    }

    v33 = 1;
    goto LABEL_21;
  }

  v25 = [(DSArchiveExportedService *)self _errorForAppleArchive:AAThreadErrorContextLeave() itemURL:lCopy];
  v26 = v25;
  if (error)
  {
    v27 = v25;
    *error = v26;
  }

  v28 = LogObj(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v37 = 138412290;
    v38 = v26;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Couldn't open the archive: %@", &v37, 0xCu);
  }

  v17 = 0;
LABEL_23:

  return v17;
}

- (id)_passwordFromKeychainWithArchiveID:(char *)d archiveIDSize:(unint64_t)size
{
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  if (AEAKeychainLoadItem() == 1)
  {
    v4 = [NSString stringWithUTF8String:v9];
  }

  else
  {
    v5 = LogObj(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "archive not found in keychain", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (AAByteStream_impl)_openAppleArchiveReadStreamWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases addToKeychain:(BOOL)keychain aeaContext:(AEAContext_impl *)context formats:(unint64_t)formats error:(id *)self0
{
  keychainCopy = keychain;
  urlCopy = url;
  progressCopy = progress;
  passphrasesCopy = passphrases;
  if ((formats & 1) == 0)
  {
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:79 userInfo:0];
    v15 = v14;
    if (error)
    {
      v16 = v14;
      *error = v15;
    }

    v17 = LogObj(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Apple Archive format not allowed: %@", buf, 0xCu);
    }

LABEL_19:

    v19 = 0;
    goto LABEL_20;
  }

  v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
  v19 = AACustomByteStreamOpen();
  v75 = 0;
  AACustomByteStreamSetData(v19, v18);
  AACustomByteStreamSetCloseProc(v19, sub_1000188B8);
  AACustomByteStreamSetReadProc(v19, sub_100019478);
  AACustomByteStreamSetCancelProc(v19, sub_100018930);
  AAThreadErrorContextEnter();
  v20 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A00409D8FE3EAuLL);
  if (!v20)
  {
LABEL_15:
    *v18 = 0;
    v26 = [(DSArchiveExportedService *)self _errorForAppleArchive:AAThreadErrorContextLeave() itemURL:urlCopy];
    v15 = v26;
    if (error)
    {
      v27 = v26;
      *error = v15;
    }

    v17 = LogObj(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Couldn't open the archive: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  lseek(d, 0, 0);
  v21 = AAFileStreamOpenWithFD(d, 0);
  *v20 = v21;
  if (!v21 || (v22 = AACustomByteStreamOpen(), (v23 = v22) == 0))
  {
    free(v20);
    goto LABEL_15;
  }

  AACustomByteStreamSetData(v22, v20);
  AACustomByteStreamSetCloseProc(v23, sub_10001BEB8);
  AACustomByteStreamSetCancelProc(v23, sub_10001BEF8);
  AACustomByteStreamSetPReadProc(v23, sub_10001BF08);
  AACustomByteStreamSetReadProc(v23, sub_10001BF1C);
  *v18 = v23;
  objc_storeStrong(v20 + 2, progress);
  AAByteStreamPRead(*v18, &v75, 4uLL, 0);
  if (v75 == 826361153)
  {
    v24 = AEAContextCreateWithEncryptedStream(*v18);
    *context = v24;
    FieldUInt = AEAContextGetFieldUInt(v24, 0);
    if (FieldUInt == 5)
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      memset(buf, 0, sizeof(buf));
      buf_size = 0;
      AEAContextGetFieldBlob(*context, 0x12u, 0, 0x100uLL, buf, &buf_size);
      if ([passphrasesCopy count] || (-[DSArchiveExportedService _passwordFromKeychainWithArchiveID:archiveIDSize:](self, "_passwordFromKeychainWithArchiveID:archiveIDSize:", buf, buf_size), (v63 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v63 = 0;
      }

      else
      {
        [passphrasesCopy addObject:?];
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = passphrasesCopy;
      v41 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v41)
      {
        v42 = *v71;
        while (2)
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v71 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v70 + 1) + 8 * i);
            v45 = *context;
            v46 = v44;
            uTF8String = [v44 UTF8String];
            v48 = v44;
            v49 = strlen([v44 UTF8String]);
            AEAContextSetFieldBlob(v45, 0x13u, 0, uTF8String, v49);
            v50 = AEADecryptionInputStreamOpen(*v18, *context, 0, 0);
            v18[1] = v50;
            if (v50)
            {
              if (keychainCopy)
              {
                v54 = v44;
                [v44 UTF8String];
                v55 = v44;
                strlen([v44 UTF8String]);
                AEAKeychainStoreItem();
              }

              goto LABEL_54;
            }

            v51 = AAThreadErrorContextLeave();
            v52 = LogObj(0);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *v76 = 67109120;
              LODWORD(v77) = v51;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "AEADecryptionInputStreamOpen failed with (%d)", v76, 8u);
            }

            AAThreadErrorContextEnter();
          }

          v41 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
          if (v41)
          {
            continue;
          }

          break;
        }

        v53 = 1;
      }

      else
      {
LABEL_54:
        v53 = 0;
      }

      v56 = v18[1];
      v30 = v56 != 0;
      if (!v56)
      {
        if ((([obj count] != 0) & ~v53) != 0)
        {
          [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        }

        else
        {
          [(DSArchiveExportedService *)self _archiveDecryptionError];
        }
        v57 = ;
        v60 = v57;
        if (error)
        {
          v61 = v57;
          *error = v60;
        }

        v62 = LogObj(0);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *v76 = 138412290;
          v77 = v60;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Error opening decryption stream: %@", v76, 0xCu);
        }
      }

      goto LABEL_71;
    }

    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:79 userInfo:0];
    v37 = v36;
    if (error)
    {
      v38 = v36;
      *error = v37;
    }

    v39 = LogObj(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = FieldUInt;
      *&buf[8] = 2112;
      *&buf[10] = v37;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Unsupported encryption profile (%d): %@", buf, 0x12u);
    }

LABEL_62:

LABEL_63:
    v30 = 0;
    goto LABEL_71;
  }

  if (v75 == 25200 && BYTE2(v75) == 122)
  {
    v40 = AADecompressionInputStreamOpen(*v18, 0, 0);
    v18[2] = v40;
    if (v40)
    {
      v30 = 1;
      goto LABEL_71;
    }

    v58 = [(DSArchiveExportedService *)self _errorForAppleArchive:AAThreadErrorContextLeave() itemURL:urlCopy];
    v37 = v58;
    if (error)
    {
      v59 = v58;
      *error = v37;
    }

    v39 = LogObj(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Error opening decompression stream: %@", buf, 0xCu);
    }

    goto LABEL_62;
  }

  v30 = 1;
  if (v75 != 825246017 && v75 != 826360153)
  {
    v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:79 userInfo:0];
    v32 = v31;
    if (error)
    {
      v33 = v31;
      *error = v32;
    }

    v34 = LogObj(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = SanitizedURL(urlCopy);
      *buf = 138543618;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Invalid Apple Archive %{public}@: %@", buf, 0x16u);
    }

    goto LABEL_63;
  }

LABEL_71:
  AAThreadErrorContextLeave();
  if (!v30)
  {
    AAByteStreamClose(v19);
    AEAContextDestroy(*context);
    v19 = 0;
    *context = 0;
  }

LABEL_20:

  return v19;
}

- (BOOL)_listAppleArchiveWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases formats:(unint64_t)formats listItemHandler:(id)handler error:(id *)error
{
  v13 = *&d;
  urlCopy = url;
  progressCopy = progress;
  passphrasesCopy = passphrases;
  handlerCopy = handler;
  context = 0;
  v42 = urlCopy;
  v19 = [(DSArchiveExportedService *)self _openAppleArchiveReadStreamWithFD:v13 url:urlCopy progress:progressCopy passphrases:passphrasesCopy addToKeychain:0 aeaContext:&context formats:formats error:error];
  if (v19)
  {
    header = 0;
    AAThreadErrorContextEnter();
    v20 = AADecodeArchiveInputStreamOpen(v19, 0, 0, 0, 0);
    if (v20)
    {
      while (1)
      {
        if ([(DSArchiveExportedService *)self _isCancelled])
        {
          v37 = 1;
          goto LABEL_30;
        }

        value = 0;
        length = 0;
        bzero(buf, 0x400uLL);
        v21 = AAArchiveStreamReadHeader(v20, &header);
        if (v21 != 1)
        {
          break;
        }

        v22 = header;
        v23.ikey = 5265748;
        KeyIndex = AAHeaderGetKeyIndex(header, v23);
        if ((KeyIndex & 0x80000000) == 0)
        {
          FieldUInt = AAHeaderGetFieldUInt(v22, KeyIndex, &value);
          v26 = FieldUInt <= 1 ? 1 : FieldUInt;
          if (v26 >= 1 && value - 68 <= 8 && ((1 << (value - 68)) & 0x105) != 0)
          {
            v27 = header;
            v28.ikey = 5521744;
            v29 = AAHeaderGetKeyIndex(header, v28);
            if ((v29 & 0x80000000) == 0)
            {
              FieldString = AAHeaderGetFieldString(v27, v29, 0x400uLL, buf, &length);
              v31 = FieldString <= 1 ? 1 : FieldString;
              if (v31 >= 1)
              {
                if (value != 70 || (offset = 0, size = 0, v32 = header, v33.ikey = 5521732, v34 = AAHeaderGetKeyIndex(header, v33), (v34 & 0x80000000) != 0))
                {
                  v35 = 0;
                }

                else if (AAHeaderGetFieldBlob(v32, v34, &size, &offset) >= 2)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = size;
                }

                v36 = [NSString stringWithUTF8String:buf];
                if ([v36 length])
                {
                  handlerCopy[2](handlerCopy, v36, value, v35);
                }
              }
            }
          }
        }
      }

      v37 = v21 >= 0;
    }

    else
    {
      v37 = 0;
    }

LABEL_30:
    v38 = AAThreadErrorContextLeave();
    if (!v37)
    {
      v39 = v38;
      v40 = LogObj(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed listing Apple Archive", buf, 2u);
      }

      if (error)
      {
        *error = [(DSArchiveExportedService *)self _errorForAppleArchive:v39 itemURL:v42];
      }
    }

    AAArchiveStreamClose(v20);
    AAByteStreamClose(v19);
    AEAContextDestroy(context);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (BOOL)_unarchiveAppleArchiveWithFD:(int)d url:(id)url destinationURL:(id)l progress:(id)progress passphrases:(id)passphrases addToKeychain:(BOOL)keychain formats:(unint64_t)formats error:(id *)self0
{
  keychainCopy = keychain;
  v14 = *&d;
  urlCopy = url;
  lCopy = l;
  progressCopy = progress;
  passphrasesCopy = passphrases;
  v49[0] = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = [(DSArchiveExportedService *)self _openAppleArchiveReadStreamWithFD:v14 url:urlCopy progress:progressCopy passphrases:passphrasesCopy addToKeychain:keychainCopy aeaContext:v49 formats:formats error:error];
  if (!v46[3])
  {
    v24 = 0;
    goto LABEL_20;
  }

  AAThreadErrorContextEnter();
  v39 = 0;
  v40 = &v39;
  v41 = 0x3042000000;
  v42 = sub_100019D20;
  v43 = sub_100019D2C;
  v44 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3042000000;
  v37[3] = sub_100019D20;
  v37[4] = sub_100019D2C;
  objc_initWeak(&v38, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019D34;
  block[3] = &unk_10002D358;
  block[4] = &v39;
  block[5] = v37;
  block[6] = &v45;
  v19 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  objc_storeWeak(v40 + 5, v19);
  v20 = dispatch_get_global_queue(0, 0);
  dispatch_async(v20, v19);

  v21 = AADecodeArchiveInputStreamOpen(v46[3], 0, 0, 1uLL, 0);
  if (!v21)
  {
    v25 = LogObj(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "AADecodeArchiveInputStreamOpen failed";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    }

LABEL_12:
    v22 = 0;
LABEL_13:
    v23 = urlCopy;

    v24 = 0;
    goto LABEL_14;
  }

  v22 = AAExtractArchiveOutputStreamOpen([lCopy fileSystemRepresentation], 0, 0, 1uLL, 0);
  if (!v22)
  {
    v25 = LogObj(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "AAExtractArchiveOutputStreamOpen failed";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (AAArchiveStreamProcess(v21, v22, 0, 0, 1uLL, 0) < 0)
  {
    v25 = LogObj(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "AAArchiveStreamProcess failed", buf, 2u);
    }

    goto LABEL_13;
  }

  v23 = urlCopy;
  v24 = 1;
LABEL_14:
  dispatch_block_cancel(v19);
  v28 = sub_10001149C(v27);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100019E28;
  v33[3] = &unk_10002D268;
  v34 = progressCopy;
  dispatch_async(v28, v33);

  AAArchiveStreamClose(v22);
  AAArchiveStreamClose(v21);
  AAByteStreamClose(v46[3]);
  AEAContextDestroy(v49[0]);
  urlCopy = v23;
  v29 = AAThreadErrorContextLeave();
  if (error)
  {
    v30 = v24;
  }

  else
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    *error = [(DSArchiveExportedService *)self _errorForAppleArchive:v29 itemURL:v23];
  }

  _Block_object_dispose(v37, 8);
  objc_destroyWeak(&v38);
  _Block_object_dispose(&v39, 8);
  objc_destroyWeak(&v44);

LABEL_20:
  _Block_object_dispose(&v45, 8);

  return v24;
}

- (int)openArchiveFile:(id)file error:(id *)error
{
  fileCopy = file;
  v6 = open([fileCopy fileSystemRepresentation], 2097156);
  if (v6 == -1)
  {
    v7 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:fileCopy debugDescription:@"Couldn't open the archive file"];
    v8 = v7;
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    v10 = LogObj(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Couldn't open the archive file: %@", &v12, 0xCu);
    }
  }

  return v6;
}

- (BOOL)_openArchiveWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases formats:(unint64_t)formats archive:(archive *)archive entry:(archive_entry *)entry readItemHandler:(id)self0 error:(id *)self1
{
  formatsCopy = formats;
  urlCopy = url;
  progressCopy = progress;
  passphrasesCopy = passphrases;
  handlerCopy = handler;
  if (formatsCopy)
  {
    if (archive_read_support_format_all())
    {
      v22 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:urlCopy];
      v19 = v22;
      if (error)
      {
        v23 = v22;
        *error = v19;
      }

      v21 = LogObj(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "archive_read_support_format_all failed: %@", &buf, 0xCu);
      }

      goto LABEL_27;
    }
  }

  else
  {
    if ((formatsCopy & 2) != 0 && archive_read_support_format_tar())
    {
      v18 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:urlCopy];
      v19 = v18;
      if (error)
      {
        v20 = v18;
        *error = v19;
      }

      v21 = LogObj(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "archive_read_support_format_tar failed:  %@", &buf, 0xCu);
      }

LABEL_27:

LABEL_28:
      v28 = 0;
      goto LABEL_29;
    }

    if ((formatsCopy & 4) != 0 && archive_read_support_format_zip())
    {
      v24 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:urlCopy];
      v19 = v24;
      if (error)
      {
        v25 = v24;
        *error = v19;
      }

      v21 = LogObj(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "archive_read_support_format_zip failed: %@", &buf, 0xCu);
      }

      goto LABEL_27;
    }
  }

  if (archive_read_support_filter_all())
  {
    v26 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:urlCopy];
    v19 = v26;
    if (error)
    {
      v27 = v26;
      *error = v19;
    }

    v21 = LogObj(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Doesn't support the compression of this archive: %@", &buf, 0xCu);
    }

    goto LABEL_27;
  }

  if (passphrasesCopy)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v30 = passphrasesCopy;
    v31 = [v30 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v31)
    {
      v32 = *v61;
      while (2)
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v61 != v32)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v60 + 1) + 8 * i) cStringUsingEncoding:4];
          if (archive_read_add_passphrase())
          {
            v38 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:urlCopy];
            v39 = v38;
            if (error)
            {
              v40 = v38;
              *error = v39;
            }

            v41 = LogObj(0);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v39;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Couldn't add passphrase to the archive: %@", &buf, 0xCu);
            }

            goto LABEL_28;
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v60 objects:v67 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }
  }

  lseek(d, 0, 0);
  if (archive_read_open_fd())
  {
    v34 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:urlCopy];
    v35 = v34;
    if (error)
    {
      v36 = v34;
      *error = v35;
    }

    v37 = LogObj(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v35;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Couldn't open the archive: %@", &buf, 0xCu);
    }

    goto LABEL_28;
  }

  *&buf = archive;
  v52 = progressCopy;
  *(&buf + 1) = v52;
  archive_read_extract_set_progress_callback();
  v42 = 0;
  v59 = 0;
  v28 = 1;
  while ((v28 & 1) != 0)
  {
    if ((v59 & 1) != 0 || [(DSArchiveExportedService *)self _isCancelled]|| (next_header2 = archive_read_next_header2(), next_header2 == 1))
    {
      v28 = 1;
LABEL_70:
      if (!error)
      {
        goto LABEL_72;
      }

LABEL_71:
      v49 = v42;
      *error = v42;
      goto LABEL_72;
    }

    v44 = objc_autoreleasePoolPush();
    if (next_header2 < 0)
    {
      v47 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:urlCopy];

      v48 = LogObj(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *v64 = 138412290;
        v65 = v47;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Couldn't read the header of the entry: %@", v64, 0xCu);
      }

      v28 = 0;
      v42 = v47;
    }

    else
    {
      v45 = archive_entry_pathname();
      if (v45 && (*v45 != 46 || v45[1] && (v45[1] != 46 || v45[2])))
      {
        v58 = v42;
        v28 = handlerCopy[2](handlerCopy, archive, entry, v45, &v58, &v59);
        v46 = v58;

        v42 = v46;
        archive_entry_clear();
      }

      else
      {
        v28 = 1;
      }
    }

    objc_autoreleasePoolPop(v44);
    if (next_header2 < 0)
    {
      goto LABEL_70;
    }
  }

  v28 = 0;
  if (error)
  {
    goto LABEL_71;
  }

LABEL_72:
  set_progress_callback = archive_read_extract_set_progress_callback();
  v51 = sub_10001149C(set_progress_callback);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A888;
  block[3] = &unk_10002D268;
  v57 = v52;
  dispatch_async(v51, block);

LABEL_29:
  return v28;
}

- (BOOL)_openArchiveWithFD:(int)d url:(id)url progress:(id)progress passphrases:(id)passphrases formats:(unint64_t)formats readItemHandler:(id)handler error:(id *)error
{
  v13 = *&d;
  urlCopy = url;
  progressCopy = progress;
  passphrasesCopy = passphrases;
  handlerCopy = handler;
  v19 = archive_read_new();
  v20 = [(DSArchiveExportedService *)self _openArchiveWithFD:v13 url:urlCopy progress:progressCopy passphrases:passphrasesCopy formats:formats archive:v19 entry:archive_entry_new() readItemHandler:handlerCopy error:error];
  archive_entry_free();
  if (archive_read_close())
  {
    if (error)
    {
      [(DSArchiveExportedService *)self _errorForArchive:v19 itemURL:urlCopy];
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  archive_read_free();

  return v20;
}

- (id)archivedItemDescriptorsForFD:(int)d url:(id)url passphrases:(id)passphrases progress:(id)progress formats:(unint64_t)formats destinationFolderURL:(id)l error:(id *)error
{
  v12 = *&d;
  urlCopy = url;
  passphrasesCopy = passphrases;
  progressCopy = progress;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v17 = objc_opt_new();
  if (![(DSArchiveExportedService *)self _isAppleArchive:urlCopy])
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10001B154;
    v35[3] = &unk_10002D3A8;
    v35[4] = self;
    v18 = v17;
    v36 = v18;
    v38 = &v42;
    v39 = &v46;
    v20 = passphrasesCopy;
    v37 = v20;
    if ([(DSArchiveExportedService *)self _openArchiveWithFD:v12 url:urlCopy progress:progressCopy passphrases:v20 formats:formats readItemHandler:v35 error:error])
    {
      if (*(v43 + 24) != 1 || *(v47 + 24) != 1)
      {
        goto LABEL_9;
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10001B47C;
      v33[3] = &unk_10002D3D0;
      v33[4] = self;
      v34 = urlCopy;
      v32 = 0;
      v21 = [(DSArchiveExportedService *)self _openArchiveWithFD:v12 url:v34 progress:progressCopy passphrases:v20 formats:formats readItemHandler:v33 error:&v32];
      v22 = v32;
      v23 = v22;
      if (v21)
      {

LABEL_9:
        goto LABEL_10;
      }

      if (error)
      {
        v30 = v22;
        *error = v23;
      }
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001AF2C;
  v40[3] = &unk_10002D380;
  v18 = v17;
  v41 = v18;
  v19 = [(DSArchiveExportedService *)self _listAppleArchiveWithFD:v12 url:urlCopy progress:progressCopy passphrases:passphrasesCopy formats:formats listItemHandler:v40 error:error];

  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (![v17 count])
  {
    v52[0] = urlCopy;
    v51[0] = NSURLErrorKey;
    v51[1] = NSLocalizedDescriptionKey;
    TCFURLInfo::LocalizedStringWithFileName(buf, @"ArchiveIsEmpty", urlCopy);
    v24 = *buf;
    v52[1] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];

    sub_100004348(buf);
    v26 = [NSError errorWithDomain:@"com.apple.desktopservices.ArchiveService" code:-1001 userInfo:v25];
    v27 = LogObj(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = SanitizedURL(urlCopy);
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "No items listed from %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v29 = v26;
      *error = v26;
    }
  }

  v18 = 0;
LABEL_22:

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return v17;
}

- (BOOL)_unarchiveEntryAtPath:(const char *)path entry:(archive_entry *)entry fromArchive:(archive *)archive archiveURL:(id)l destinationURL:(id)rL progress:(id)progress error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  archive_entry_set_pathname();
  v15 = archive_entry_hardlink();
  v16 = v15;
  if (v15)
  {
    v17 = strlen(v15);
    v18 = +[NSFileManager defaultManager];
    v19 = [v18 stringWithFileSystemRepresentation:v16 length:v17];
    v20 = [rLCopy URLByAppendingPathComponent:v19];

    [v20 fileSystemRepresentation];
    archive_entry_set_hardlink();
  }

  v21 = archive_read_extract();
  if (v21)
  {
    if (v21 == -20)
    {
      v22 = archive_format();
      v23 = archive_error_string();
      if ((v22 & 0xFF0000) != 0x50000 || strncmp(v23, "Too much data: Truncating file at", 0x21uLL))
      {
        v24 = 0;
        v25 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v34[0] = lCopy;
      v33[0] = NSURLErrorKey;
      v33[1] = NSLocalizedDescriptionKey;
      TCFURLInfo::LocalizedStringWithFileName(v32, @"InvalidBomZip", lCopy);
      v30 = *v32;
      v34[1] = v30;
      v31 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

      sub_100004348(v32);
      v24 = [NSError errorWithDomain:@"com.apple.desktopservices.ArchiveService" code:-1002 userInfo:v31];
    }

    else
    {
      v26 = [NSURL fileURLWithFileSystemRepresentation:path isDirectory:0 relativeToURL:0];
      v24 = [(DSArchiveExportedService *)self _errorForArchive:archive itemURL:v26];
    }

    if (!v24)
    {
      goto LABEL_15;
    }

    v27 = LogObj(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v32 = 138412290;
      *&v32[4] = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could't extract entry from archive: %@", v32, 0xCu);
    }

    if (error)
    {
      v28 = v24;
      v25 = 0;
      *error = v24;
    }

    else
    {
LABEL_15:
      v25 = 0;
    }

    goto LABEL_16;
  }

  v25 = 1;
LABEL_17:

  return v25;
}

- (BOOL)_unarchiveFromArchiveFD:(int)d url:(id)url passphrases:(id)passphrases addToKeychain:(BOOL)keychain destinationURL:(id)l formats:(unint64_t)formats progress:(id)progress readItemGroup:(id)self0 error:(id *)self1
{
  keychainCopy = keychain;
  v15 = *&d;
  urlCopy = url;
  passphrasesCopy = passphrases;
  lCopy = l;
  progressCopy = progress;
  v38[0] = 0;
  v37 = 0;
  LODWORD(l) = [urlCopy getResourceValue:v38 forKey:NSURLFileSizeKey error:&v37];
  v27 = v38[0];
  v20 = v37;
  v26 = v20;
  if (l)
  {
    v21 = sub_10001149C(v20);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BBA0;
    block[3] = &unk_10002CE80;
    v35 = progressCopy;
    v36 = v27;
    dispatch_async(v21, block);
  }

  path = [lCopy path];
  if ([(DSArchiveExportedService *)self _isAppleArchive:urlCopy])
  {
    v23 = [passphrasesCopy mutableCopy];
    v24 = [(DSArchiveExportedService *)self _unarchiveAppleArchiveWithFD:v15 url:urlCopy destinationURL:lCopy progress:progressCopy passphrases:v23 addToKeychain:keychainCopy formats:formats error:error];
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001BBE0;
    v29[3] = &unk_10002D3F8;
    v29[4] = self;
    v30 = path;
    v31 = urlCopy;
    v32 = lCopy;
    v33 = progressCopy;
    v24 = [(DSArchiveExportedService *)self _openArchiveWithFD:v15 url:v31 progress:v33 passphrases:passphrasesCopy formats:formats readItemHandler:v29 error:error];
  }

  return v24;
}

@end