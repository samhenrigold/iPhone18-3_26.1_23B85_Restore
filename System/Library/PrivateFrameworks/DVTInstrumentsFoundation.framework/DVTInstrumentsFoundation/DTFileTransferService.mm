@interface DTFileTransferService
+ (void)registerCapabilities:(id)capabilities;
- (BOOL)_fileTransfer:(id)transfer isValidForApplication:(id)application;
- (BOOL)_unarchivePackageIfNecessary:(id)necessary;
- (DTFileTransferService)initWithChannel:(id)channel;
- (id)_beginTransferOfFileNamed:(id)named outError:(id *)error;
- (id)_moveFileTransfer:(id)transfer inDataContainerOfApplicationBundleIdentifier:(id)identifier withError:(id *)error;
- (id)_moveFileTransfer:(id)transfer toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier outError:(id *)error;
- (id)openFileInDocumentDebugInbox:(id)inbox forApplicationWithBundleIdentifier:(id)identifier withAnnotation:(id)annotation;
- (id)transferData:(id)data intoAppContainerForBundleIdentifier:(id)identifier filename:(id)filename;
- (id)transferFile:(id)file toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier destinationFilename:(id)filename;
@end

@implementation DTFileTransferService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.filetransfer" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.filetransfer.debuginbox" withVersion:1 forClass:self];
}

- (DTFileTransferService)initWithChannel:(id)channel
{
  v12.receiver = self;
  v12.super_class = DTFileTransferService;
  v3 = [(DTXService *)&v12 initWithChannel:channel];
  if (v3)
  {
    v4 = dispatch_queue_create("File transfer service coordination queue", 0);
    coordinationQueue = v3->_coordinationQueue;
    v3->_coordinationQueue = v4;

    v6 = objc_opt_new();
    activeFileTransfers = v3->_activeFileTransfers;
    v3->_activeFileTransfers = v6;

    channel = [(DTXService *)v3 channel];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_247FD7C0C;
    v10[3] = &unk_278EF1070;
    v11 = v3;
    [channel registerDisconnectHandler:v10];
  }

  return v3;
}

- (id)transferFile:(id)file toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier destinationFilename:(id)filename
{
  fileCopy = file;
  identifierCopy = identifier;
  filenameCopy = filename;
  v11 = objc_opt_new();
  if (identifierCopy && (v12 = [identifierCopy length], filenameCopy) && fileCopy && v12 && objc_msgSend(filenameCopy, "length"))
  {
    v27 = 0;
    v13 = [(DTFileTransferService *)self _beginTransferOfFileNamed:filenameCopy outError:&v27];
    v14 = v27;
    if (v13)
    {
      writeHandle = [v13 writeHandle];
      [writeHandle writeData:fileCopy];

      [v13 closeFileTransfer];
      coordinationQueue = self->_coordinationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FD82C8;
      block[3] = &unk_278EF2A28;
      block[4] = self;
      v24 = v13;
      v17 = v11;
      v25 = v17;
      v26 = identifierCopy;
      dispatch_async(coordinationQueue, block);
      v18 = v17;
    }

    else
    {
      [v11 invokeCompletionWithReturnValue:v14 error:v14];
      v22 = v11;
    }
  }

  else
  {
    v19 = sub_247FD7F9C(1);
    [v11 invokeCompletionWithReturnValue:0 error:v19];
    v20 = v11;
  }

  return v11;
}

- (id)openFileInDocumentDebugInbox:(id)inbox forApplicationWithBundleIdentifier:(id)identifier withAnnotation:(id)annotation
{
  v49[3] = *MEMORY[0x277D85DE8];
  inboxCopy = inbox;
  identifierCopy = identifier;
  annotationCopy = annotation;
  v10 = objc_opt_new();
  if (!inboxCopy || (v11 = [inboxCopy length], !identifierCopy) || !v11 || !objc_msgSend(identifierCopy, "length"))
  {
    v23 = sub_247FD7F9C(1);
    [v10 invokeCompletionWithReturnValue:v23 error:v23];
    v24 = v10;

    goto LABEL_14;
  }

  if (([identifierCopy isEqualToString:@"com.apple.Playgrounds"] & 1) == 0)
  {
    [v10 invokeCompletionWithReturnValue:0 error:0];
    v26 = v10;
    goto LABEL_14;
  }

  v47 = 0;
  v12 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v47];
  v13 = v47;
  if (v12)
  {
    v14 = sub_247FD87C8(v12);
    v15 = sub_247FD882C(v14);
    v16 = [v14 URLByAppendingPathComponent:@"Debug" isDirectory:1];

    v17 = sub_247FD882C(v16);
    if (!v16 || !v15 || !v17)
    {
      v28 = sub_247FD7F9C(5);

      [v10 invokeCompletionWithReturnValue:v28 error:v28];
      v29 = v10;
      v13 = v28;
LABEL_27:

      goto LABEL_28;
    }

    v18 = sub_247FD88A8(inboxCopy);

    v19 = [v16 URLByAppendingPathComponent:v18 isDirectory:0];
    memset(&v46, 0, sizeof(v46));
    path = [v19 path];
    if (lstat([path fileSystemRepresentation], &v46))
    {
    }

    else
    {
      v30 = v46.st_mode & 0xF000;

      if (v30 == 0x4000 || v30 == 0x8000)
      {
        v41 = v18;
        if (annotationCopy)
        {
          v31 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:annotationCopy];
        }

        else
        {
          v31 = objc_opt_new();
        }

        v32 = MEMORY[0x277CBEC38];
        v33 = v31;
        v43 = v31;
        [v31 setObject:MEMORY[0x277CBEC38] forKey:@"DTFileTransferServiceOriginatedKey"];
        v34 = *MEMORY[0x277D0AC40];
        v48[0] = *MEMORY[0x277D0AC58];
        v48[1] = v34;
        v49[0] = v32;
        v49[1] = v19;
        v48[2] = *MEMORY[0x277D0AC30];
        v49[2] = v33;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
        serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
        bundleIdentifier = [v12 bundleIdentifier];
        [MEMORY[0x277D0AD60] optionsWithDictionary:v42];
        v36 = v39 = v19;
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = sub_247FD893C;
        v44[3] = &unk_278EF3818;
        v37 = v10;
        v45 = v37;
        [serviceWithDefaultShellEndpoint openApplication:bundleIdentifier withOptions:v36 completion:v44];

        v19 = v39;
        v38 = v37;

        v18 = v41;
        goto LABEL_26;
      }
    }

    v21 = sub_247FD7F9C(7);

    [v10 invokeCompletionWithReturnValue:v21 error:v21];
    v22 = v10;
    v13 = v21;
LABEL_26:

    inboxCopy = v18;
    goto LABEL_27;
  }

  [v10 invokeCompletionWithReturnValue:v13 error:v13];
  v27 = v10;
LABEL_28:

LABEL_14:

  return v10;
}

- (id)transferData:(id)data intoAppContainerForBundleIdentifier:(id)identifier filename:(id)filename
{
  v45 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  filenameCopy = filename;
  v11 = objc_opt_new();
  v12 = sub_247FD8D80(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    *&buf[4] = dataCopy;
    *&buf[12] = 2080;
    *&buf[14] = [identifierCopy UTF8String];
    *&buf[22] = 2080;
    uTF8String = [filenameCopy UTF8String];
    _os_log_impl(&dword_247F67000, v12, OS_LOG_TYPE_INFO, "transferData:%p intoAppContainerForBundleIdentifier:%s withFileName: %s", buf, 0x20u);
  }

  if (!identifierCopy)
  {
    goto LABEL_16;
  }

  v13 = [identifierCopy length];
  if (!filenameCopy || !dataCopy || !v13 || ![filenameCopy length])
  {
    goto LABEL_16;
  }

  v14 = [filenameCopy rangeOfString:@"/"];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = sub_247FD8D80(v14);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_24802F904(filenameCopy);
    }

LABEL_16:
    v20 = sub_247FD7F9C(1);
    [v11 invokeCompletionWithReturnValue:0 error:v20];
    v32 = v11;
    goto LABEL_17;
  }

  v15 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  filenameCopy = [v15 stringWithFormat:@"%@-%@", uUIDString, filenameCopy];

  v40 = 0;
  v19 = [(DTFileTransferService *)self _beginTransferOfFileNamed:filenameCopy outError:&v40];
  v20 = v40;
  if (v19)
  {
    writeHandle = [v19 writeHandle];
    [writeHandle writeData:dataCopy];

    v22 = sub_247FD8D80([v19 closeFileTransfer]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      destinationDirectoryURLToRemoveOnDealloc = [v19 destinationDirectoryURLToRemoveOnDealloc];
      absoluteString = [destinationDirectoryURLToRemoveOnDealloc absoluteString];
      uTF8String2 = [absoluteString UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String2;
      _os_log_impl(&dword_247F67000, v22, OS_LOG_TYPE_INFO, "File transfer successfully staged. %s", buf, 0xCu);
    }

    destinationURL = [v19 destinationURL];
    path = [destinationURL path];
    sub_247FD8DC4([path fileSystemRepresentation]);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    uTF8String = sub_247FD8E08;
    v43 = sub_247FD8E18;
    v44 = 0;
    coordinationQueue = self->_coordinationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FD8E20;
    block[3] = &unk_278EF3840;
    v39 = buf;
    block[4] = self;
    v36 = v19;
    v37 = identifierCopy;
    v29 = v11;
    v38 = v29;
    dispatch_sync(coordinationQueue, block);
    v30 = v29;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [v11 invokeCompletionWithReturnValue:0 error:v20];
    v34 = v11;
  }

  filenameCopy = filenameCopy;
LABEL_17:

  return v11;
}

- (BOOL)_fileTransfer:(id)transfer isValidForApplication:(id)application
{
  v21 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v6 = MEMORY[0x277CC1EB8];
  destinationURL = [transfer destinationURL];
  v8 = [v6 documentProxyForURL:destinationURL];

  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:@"DTFileTransferServiceNoDefaultApplicationException" format:@"Unable to resolve default application for file in DTFileTransferService"];
  }

  [v8 availableClaimBindingsReturningError:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        bundleRecord = [*(*(&v16 + 1) + 8 * i) bundleRecord];
        v14 = [bundleRecord isEqual:applicationCopy];

        if (v14)
        {
          LOBYTE(v10) = 1;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v10;
}

- (id)_beginTransferOfFileNamed:(id)named outError:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  namedCopy = named;
  defaultManager = [v5 defaultManager];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/tmp"];
  v11 = sub_247FD93A8(v10, @"DTFileTransferService", 1);
  v12 = sub_247FD93A8(v11, uUIDString, 0);

  v13 = v12;
  v14 = sub_247FD88A8(namedCopy);

  v15 = [v13 URLByAppendingPathComponent:v14 isDirectory:0];

  path = [v15 path];
  v17 = lstat([path fileSystemRepresentation], &v24);

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v13 && v18 && ([defaultManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0] & 1) != 0 && (objc_msgSend(v18, "path"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(defaultManager, "createFileAtPath:contents:attributes:", v19, 0, 0), v19, (v20 & 1) != 0))
  {
    v21 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v18 error:0];
    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setDestinationURL:v18];
      [v22 setDestinationDirectoryURLToRemoveOnDealloc:v13];
      [v22 setWriteHandle:v21];
    }

    else if (error)
    {
      sub_247FD7F9C(2);
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (error)
  {
    sub_247FD7F9C(2);
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_moveFileTransfer:(id)transfer toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier outError:(id *)error
{
  transferCopy = transfer;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.Playgrounds"])
  {
    v24 = 0;
    v10 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v24];
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      if ([(DTFileTransferService *)self _fileTransfer:transferCopy isValidForApplication:v10])
      {
        v13 = sub_247FD87C8(v10);
        if (v13)
        {
          v14 = v13;
          if (!sub_247FD9704(v13, 1))
          {
            if (error)
            {
              sub_247FD7F9C(6);
              *error = v20 = 0;
            }

            else
            {
              v20 = 0;
            }

            v15 = v14;
            goto LABEL_32;
          }

          v15 = [v14 URLByAppendingPathComponent:@"Debug" isDirectory:1];

          if (sub_247FD9704(v15, 1))
          {
            destinationURL = [transferCopy destinationURL];
            lastPathComponent = [destinationURL lastPathComponent];
            v18 = [v15 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

            v19 = sub_247FD97BC(transferCopy, v18, 1);

            if (v19)
            {
              v20 = v18;
            }

            else if (error)
            {
              sub_247FD7F9C(6);
              *error = v20 = 0;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_32;
          }

          if (error)
          {
            v22 = sub_247FD7F9C(6);
            goto LABEL_23;
          }
        }

        else
        {
          if (error)
          {
            v22 = sub_247FD7F9C(6);
            v15 = 0;
LABEL_23:
            v20 = 0;
            *error = v22;
LABEL_32:

            goto LABEL_33;
          }

          v15 = 0;
        }

        v20 = 0;
        goto LABEL_32;
      }

      if (error)
      {
        sub_247FD7F9C(5);
        *error = v20 = 0;
        goto LABEL_33;
      }
    }

    else if (error)
    {
      v21 = v11;
      v20 = 0;
      *error = v12;
LABEL_33:

      goto LABEL_34;
    }

    v20 = 0;
    goto LABEL_33;
  }

  if (error)
  {
    sub_247FD7F9C(5);
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_34:

  return v20;
}

- (id)_moveFileTransfer:(id)transfer inDataContainerOfApplicationBundleIdentifier:(id)identifier withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  identifierCopy = identifier;
  v41 = 0;
  v9 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v41];
  v10 = v41;
  if (!v9)
  {
    v40 = v10;
    v9 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:identifierCopy error:&v40];
    v11 = v40;

    if (!v9)
    {
      v36 = sub_247FD8D80(v12);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_24802FB24(identifierCopy);
      }

      if (error)
      {
        v37 = v11;
        v9 = 0;
        v24 = 0;
        v34 = 0;
        *error = v11;
      }

      else
      {
        v9 = 0;
        v24 = 0;
        v34 = 0;
      }

      v10 = v11;
      goto LABEL_42;
    }

    v10 = v11;
  }

  dataContainerURL = [v9 dataContainerURL];
  v14 = sub_247FD8D80(dataContainerURL);
  v15 = v14;
  if (!dataContainerURL)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_24802FAA8(identifierCopy);
    }

    if (error)
    {
      v35 = sub_247FD7F9C(6);
      v24 = 0;
LABEL_29:
      v34 = 0;
      *error = v35;
      goto LABEL_42;
    }

    v24 = 0;
LABEL_31:
    v34 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    path = [dataContainerURL path];
    uTF8String = [path UTF8String];
    *buf = 136315138;
    v43 = uTF8String;
    _os_log_impl(&dword_247F67000, v15, OS_LOG_TYPE_INFO, "Checking for container at: %s", buf, 0xCu);
  }

  v18 = sub_247FD9704(dataContainerURL, 0);
  v19 = v18;
  v20 = sub_247FD8D80(v18);
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      path2 = [dataContainerURL path];
      uTF8String2 = [path2 UTF8String];
      *buf = 136315138;
      v43 = uTF8String2;
      _os_log_impl(&dword_247F67000, v21, OS_LOG_TYPE_INFO, "Data container exists at: %s", buf, 0xCu);
    }

    v24 = [dataContainerURL URLByAppendingPathComponent:@"/tmp"];

    v25 = sub_247FD9704(v24, 0);
    if (v25)
    {
      v26 = sub_247FD8D80(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        path3 = [v24 path];
        uTF8String3 = [path3 UTF8String];
        *buf = 136315138;
        v43 = uTF8String3;
        _os_log_impl(&dword_247F67000, v26, OS_LOG_TYPE_INFO, "Temp directory exists: %s", buf, 0xCu);
      }

      destinationURL = [transferCopy destinationURL];
      lastPathComponent = [destinationURL lastPathComponent];
      v31 = [v24 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

      v32 = sub_247FD97BC(transferCopy, v31, 0);

      if (v32)
      {
        v34 = v31;
      }

      else
      {
        v38 = sub_247FD8D80(v33);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_24802FA64(v38);
        }

        if (error)
        {
          sub_247FD7F9C(6);
          *error = v34 = 0;
        }

        else
        {
          v34 = 0;
        }
      }

      goto LABEL_42;
    }

    if (error)
    {
      v35 = sub_247FD7F9C(6);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_24802FA20(v21);
  }

  if (error)
  {
    sub_247FD7F9C(6);
    *error = v34 = 0;
  }

  else
  {
    v34 = 0;
  }

  v24 = dataContainerURL;
LABEL_42:

  return v34;
}

- (BOOL)_unarchivePackageIfNecessary:(id)necessary
{
  v51 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  destinationURL = [necessaryCopy destinationURL];
  lastPathComponent = [destinationURL lastPathComponent];

  pathExtension = [lastPathComponent pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v8 = [lowercaseString isEqualToString:@"zip"];

  if (!v8)
  {
    LOBYTE(v21) = 1;
    goto LABEL_28;
  }

  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  pathExtension2 = [stringByDeletingPathExtension pathExtension];
  if (!pathExtension2)
  {

    goto LABEL_10;
  }

  v11 = pathExtension2;
  v12 = [pathExtension2 length];

  if (!v12)
  {
LABEL_10:
    LOBYTE(v21) = 0;
    goto LABEL_28;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  destinationDirectoryURLToRemoveOnDealloc = [necessaryCopy destinationDirectoryURLToRemoveOnDealloc];
  v16 = [destinationDirectoryURLToRemoveOnDealloc URLByAppendingPathComponent:uUIDString isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v49 = 0;
  v18 = [defaultManager createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v49];
  v19 = v49;
  v20 = v19;
  LOBYTE(v21) = 0;
  if (v18 && !v19)
  {
    v22 = MEMORY[0x277D036C0];
    destinationURL2 = [necessaryCopy destinationURL];
    v48 = 0;
    v24 = [v22 flatUnarchiveFileAtURL:destinationURL2 toURL:v16 error:&v48];
    v25 = v48;

    if (v25)
    {
      v20 = 0;
      LOBYTE(v21) = 0;
    }

    else
    {
      stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];
      pathExtension3 = [stringByDeletingPathExtension2 pathExtension];

      path = [v16 path];
      v47 = 0;
      v28 = [defaultManager subpathsOfDirectoryAtPath:path error:&v47];
      v20 = v47;

      LOBYTE(v21) = 0;
      if (v28 && !v20)
      {
        v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF beginswith[c] '__MACOSX' OR SELF contains '/.' OR SELF beginswith '.')"];
        v30 = [v28 filteredArrayUsingPredicate:v29];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v28 = v30;
        v21 = [v28 countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v21)
        {
          v40 = uUIDString;
          v41 = v16;
          v39 = defaultManager;
          v31 = *v44;
          while (2)
          {
            v32 = v28;
            for (i = 0; i != v21; ++i)
            {
              if (*v44 != v31)
              {
                objc_enumerationMutation(v32);
              }

              v34 = *(*(&v43 + 1) + 8 * i);
              pathExtension4 = [v34 pathExtension];
              v36 = [pathExtension4 caseInsensitiveCompare:pathExtension3];

              if (!v36)
              {
                v37 = [v41 URLByAppendingPathComponent:v34];
                [necessaryCopy setDestinationURL:v37];

                LOBYTE(v21) = 1;
                defaultManager = v39;
                uUIDString = v40;
                v25 = 0;
                v28 = v32;
                goto LABEL_23;
              }
            }

            v28 = v32;
            v21 = [v32 countByEnumeratingWithState:&v43 objects:v50 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          defaultManager = v39;
          uUIDString = v40;
          v25 = 0;
LABEL_23:
          v16 = v41;
        }
      }
    }
  }

LABEL_28:
  return v21;
}

@end