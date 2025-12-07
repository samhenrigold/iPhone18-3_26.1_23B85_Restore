@interface CSDFileTransferController
+ (id)copyFileAtURL:(id)l toTemporaryFileWithName:(id)name;
+ (id)renameResourceAtURL:(id)l toResourceWithName:(id)name;
+ (id)renamedResourceURL:(id)l withName:(id)name;
+ (void)deleteContentsAtURL:(id)l;
- (CSDFileTransferController)init;
- (CSDFileTransferController)initWithService:(id)service;
- (CSDFileTransferringDelegate)delegate;
- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l;
- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)transferFileAtSandboxExtendedURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member;
- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member;
- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata;
- (void)unzipArchiveAtURL:(id)l completion:(id)completion;
- (void)zipDirectoryAtURL:(id)l completion:(id)completion;
@end

@implementation CSDFileTransferController

- (CSDFileTransferController)init
{
  v3 = +[CSDFaceTimeLivePhotosIDSService sharedInstance];
  v4 = [(CSDFileTransferController *)self initWithService:v3];

  return v4;
}

- (CSDFileTransferController)initWithService:(id)service
{
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = CSDFileTransferController;
  v6 = [(CSDFileTransferController *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    clientFileURLByIdentifier = v6->_clientFileURLByIdentifier;
    v6->_clientFileURLByIdentifier = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    temporaryFileURLByClientFileURL = v6->_temporaryFileURLByClientFileURL;
    v6->_temporaryFileURLByClientFileURL = v9;

    objc_storeStrong(&v6->_service, service);
    v11 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.csdfiletransfercontroller", 0);
    queue = v6->_queue;
    v6->_queue = v11;

    [(CSDIDSService *)v6->_service addServiceDelegate:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  v11 = sub_100004778(metadataCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = lCopy;
    v22 = 2112;
    v23 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "transferFileAtURL: %@, destinations: %@", buf, 0x16u);
  }

  queue = [(CSDFileTransferController *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10010866C;
  v16[3] = &unk_10061A450;
  v16[4] = self;
  v17 = lCopy;
  v18 = destinationsCopy;
  v19 = metadataCopy;
  v13 = metadataCopy;
  v14 = destinationsCopy;
  v15 = lCopy;
  dispatch_async(queue, v16);
}

- (void)transferFileAtSandboxExtendedURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  memberCopy = member;
  queue = [(CSDFileTransferController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001087A4;
  block[3] = &unk_10061A428;
  block[4] = self;
  v20 = lCopy;
  v21 = destinationsCopy;
  v22 = metadataCopy;
  v23 = memberCopy;
  v15 = memberCopy;
  v16 = metadataCopy;
  v17 = destinationsCopy;
  v18 = lCopy;
  dispatch_async(queue, block);
}

- (void)unzipArchiveAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v9 = sub_100004778(uRLByDeletingLastPathComponent);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = uRLByDeletingLastPathComponent;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "placing unzip results into folder %@", buf, 0xCu);
  }

  queue = [(CSDFileTransferController *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100108984;
  v14[3] = &unk_10061AF98;
  v14[4] = self;
  v15 = lCopy;
  v16 = uRLByDeletingLastPathComponent;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = uRLByDeletingLastPathComponent;
  v13 = lCopy;
  dispatch_async(queue, v14);
}

- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata fromMember:(id)member
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  memberCopy = member;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = lCopy;
    v38 = 2112;
    v39 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "temporaryClientFileURL: %@, destinations: %@", buf, 0x16u);
  }

  buf[0] = 0;
  v17 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v19 = [v17 fileExistsAtPath:path isDirectory:buf];

  if (v19)
  {
    v21 = +[NSMutableDictionary dictionary];
    v22 = [NSNumber numberWithBool:buf[0]];
    [v21 setObject:v22 forKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];

    [v21 setObject:metadataCopy forKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100108FCC;
    v30[3] = &unk_10061BBA0;
    v31 = destinationsCopy;
    v23 = v21;
    v32 = v23;
    v33 = memberCopy;
    selfCopy = self;
    v24 = lCopy;
    v35 = v24;
    v25 = objc_retainBlock(v30);
    v26 = v25;
    if (buf[0] == 1)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10010922C;
      v27[3] = &unk_10061BBC8;
      v27[4] = self;
      v28 = v24;
      v29 = v26;
      [(CSDFileTransferController *)self zipDirectoryAtURL:v28 completion:v27];
    }

    else
    {
      (v25[2])(v25, v24);
    }
  }

  else
  {
    v23 = sub_100004778(v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100474ED8();
    }
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412802;
    v28 = lCopy;
    v29 = 2112;
    v30 = metadataCopy;
    v31 = 2112;
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "incomingResourceURL: %@ metadata: %@ fromID: %@", &v27, 0x20u);
  }

  v17 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];
  bOOLValue = [v17 BOOLValue];

  v19 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
  v20 = objc_opt_class();
  v21 = +[NSUUID UUID];
  uUIDString = [v21 UUIDString];
  v23 = [v20 copyFileAtURL:lCopy toTemporaryFileWithName:uUIDString];

  if (v23)
  {
    v25 = sub_100004778(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Copied resource to temporary URL: %@", &v27, 0xCu);
    }

    delegate = [(CSDFileTransferController *)self delegate];
    [delegate fileTransferer:self didReceiveResourcesAtURL:v23 withMetadata:v19 isZipped:bOOLValue fromIDSDestination:dCopy];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = sub_100004778(v17);
  v19 = v18;
  if (successCopy)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "successfully sent file with identifier: %@", &v27, 0xCu);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100474FC8();
  }

  clientFileURLByIdentifier = [(CSDFileTransferController *)self clientFileURLByIdentifier];
  v21 = [clientFileURLByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v21)
  {
    delegate = [(CSDFileTransferController *)self delegate];
    [delegate fileTransferer:self didTransferFileAtURL:v21 successfully:successCopy];

    clientFileURLByIdentifier2 = [(CSDFileTransferController *)self clientFileURLByIdentifier];
    [clientFileURLByIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];

    [(CSDFileTransferController *)self cleanUpTemporaryFileIfExistsForClientFileURL:v21];
  }

  else
  {
    v25 = sub_100004778(v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      clientFileURLByIdentifier3 = [(CSDFileTransferController *)self clientFileURLByIdentifier];
      v27 = 138413570;
      v28 = serviceCopy;
      v29 = 2112;
      v30 = accountCopy;
      v31 = 2112;
      v32 = identifierCopy;
      v33 = 1024;
      v34 = successCopy;
      v35 = 2112;
      v36 = errorCopy;
      v37 = 2112;
      v38 = clientFileURLByIdentifier3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Unexpected nil clientFileURL for service: %@, account: %@, identifier: %@, didSendWithSuccess: %d, error: %@, clientFileURLByIdentifier: %@", &v27, 0x3Au);
    }
  }
}

+ (id)copyFileAtURL:(id)l toTemporaryFileWithName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v7 = NSTemporaryDirectory();
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  v10 = [v7 stringByAppendingPathComponent:uUIDString];
  v11 = [NSURL fileURLWithPath:v10];

  v12 = +[NSFileManager defaultManager];
  v25 = 0;
  LODWORD(v8) = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v25];
  v13 = v25;

  if (!v8)
  {
    v21 = sub_100004778(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100475030();
    }

    v15 = 0;
    v18 = v13;
    goto LABEL_9;
  }

  v15 = [v11 URLByAppendingPathComponent:nameCopy];
  v16 = +[NSFileManager defaultManager];
  v24 = v13;
  v17 = [v16 copyItemAtURL:lCopy toURL:v15 error:&v24];
  v18 = v24;

  if ((v17 & 1) == 0)
  {
    v21 = sub_100004778(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v27 = lCopy;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v18;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to copy URL at %@ to %@: %@", buf, 0x20u);
    }

LABEL_9:
    v20 = v15;

    v15 = 0;
    goto LABEL_10;
  }

  v20 = v15;
LABEL_10:
  v22 = v15;

  return v22;
}

+ (id)renameResourceAtURL:(id)l toResourceWithName:(id)name
{
  lCopy = l;
  v7 = [self renamedResourceURL:lCopy withName:name];
  v8 = +[NSFileManager defaultManager];
  v14 = 0;
  v9 = [v8 moveItemAtURL:lCopy toURL:v7 error:&v14];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = lCopy;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error moving url %@ to %@: %@", buf, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)renamedResourceURL:(id)l withName:(id)name
{
  nameCopy = name;
  pathComponents = [l pathComponents];
  v7 = [pathComponents mutableCopy];

  [v7 removeLastObject];
  [v7 addObject:nameCopy];

  v8 = [NSURL fileURLWithPathComponents:v7];

  return v8;
}

+ (void)deleteContentsAtURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtURL:lCopy error:&v10];
  v6 = v10;

  v8 = sub_100004778(v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = lCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleted contents at URL: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100475098();
  }
}

- (void)zipDirectoryAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = NSTemporaryDirectory();
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  v12 = [v9 stringByAppendingPathComponent:uUIDString];
  v13 = [v12 stringByAppendingPathExtension:@"zip"];

  v14 = [NSURL fileURLWithPath:v13];
  v15 = sub_100004778(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = lCopy;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Zipping directory at URL: %@, output to: %@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100109E9C;
  v19[3] = &unk_10061A768;
  v20 = lCopy;
  v21 = v14;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v14;
  v18 = lCopy;
  [(CSDFileTransferController *)self performFileCopierOperation:0 onInputURL:v18 outputURL:v17 completion:v19];
}

- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = sub_100004778(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    operationCopy = operation;
    v29 = 2112;
    v30 = lCopy;
    v31 = 2112;
    v32 = rLCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "operation: %ld, inputURL: %@, outputURL: %@", buf, 0x20u);
  }

  v16 = [IMFileCopier alloc];
  v23 = lCopy;
  v24 = rLCopy;
  v25 = completionCopy;
  operationCopy2 = operation;
  v17 = completionCopy;
  v18 = rLCopy;
  v19 = lCopy;
  v20 = [(CSDFileTransferController *)self queue:_NSConcreteStackBlock];
  v21 = [v16 initWithInputURL:v19 outputURL:v18 identifier:0 operation:operation completionBlock:&v22 queue:v20];

  [v21 start];
}

- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l
{
  lCopy = l;
  queue = [(CSDFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  temporaryFileURLByClientFileURL = [(CSDFileTransferController *)self temporaryFileURLByClientFileURL];
  v7 = [temporaryFileURLByClientFileURL objectForKeyedSubscript:lCopy];

  if (v7)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "deleting temporary file at URL: %@", &v11, 0xCu);
    }

    [objc_opt_class() deleteContentsAtURL:v7];
    temporaryFileURLByClientFileURL2 = [(CSDFileTransferController *)self temporaryFileURLByClientFileURL];
    [temporaryFileURLByClientFileURL2 setObject:0 forKeyedSubscript:lCopy];
  }
}

- (CSDFileTransferringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end