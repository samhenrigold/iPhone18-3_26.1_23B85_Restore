@interface FTFileTransferController
+ (id)copyFileAtURL:(id)l toTemporaryFileWithName:(id)name;
+ (id)renameResourceAtURL:(id)l toResourceWithName:(id)name;
+ (id)renamedResourceURL:(id)l withName:(id)name;
+ (void)deleteContentsAtURL:(id)l;
- (FTFileSandboxDelegate)sandboxDelegate;
- (FTFileTransferController)initWithService:(id)service serverBag:(id)bag;
- (FTFileTransferringDelegate)delegate;
- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l;
- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata;
- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata;
- (void)unzipArchiveAtURL:(id)l completion:(id)completion;
- (void)zipDirectoryAtURL:(id)l completion:(id)completion;
@end

@implementation FTFileTransferController

- (FTFileTransferController)initWithService:(id)service serverBag:(id)bag
{
  serviceCopy = service;
  bagCopy = bag;
  v22.receiver = self;
  v22.super_class = FTFileTransferController;
  v9 = [(FTFileTransferController *)&v22 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    clientFileURLByIdentifier = v9->_clientFileURLByIdentifier;
    v9->_clientFileURLByIdentifier = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    temporaryFileURLByClientFileURL = v9->_temporaryFileURLByClientFileURL;
    v9->_temporaryFileURLByClientFileURL = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    transactionIDByIDSFileIdentifier = v9->_transactionIDByIDSFileIdentifier;
    v9->_transactionIDByIDSFileIdentifier = v14;

    objc_storeStrong(&v9->_service, service);
    objc_storeStrong(&v9->_serverBag, bag);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_DEFAULT, 0);

    v18 = dispatch_queue_create("com.apple.telephonyutilities.FTFileTransfercontroller", v17);
    queue = v9->_queue;
    v9->_queue = v18;
    v20 = v18;

    [(FTIDSService *)v9->_service addServiceDelegate:v9 queue:v9->_queue];
  }

  return v9;
}

- (void)transferFileAtURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  v11 = FTDefaultLog(metadataCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = lCopy;
    v22 = 2112;
    v23 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "transferFileAtURL: %@, destinations: %@", buf, 0x16u);
  }

  queue = [(FTFileTransferController *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000823C;
  v16[3] = &unk_100051040;
  v16[4] = self;
  v17 = lCopy;
  v18 = destinationsCopy;
  v19 = metadataCopy;
  v13 = metadataCopy;
  v14 = destinationsCopy;
  v15 = lCopy;
  dispatch_async(queue, v16);
}

- (void)unzipArchiveAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v9 = FTDefaultLog(uRLByDeletingLastPathComponent);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = uRLByDeletingLastPathComponent;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "placing unzip results into folder %@", buf, 0xCu);
  }

  queue = [(FTFileTransferController *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000083CC;
  v14[3] = &unk_1000512A0;
  v14[4] = self;
  v15 = lCopy;
  v16 = uRLByDeletingLastPathComponent;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = uRLByDeletingLastPathComponent;
  v13 = lCopy;
  dispatch_async(queue, v14);
}

- (void)transferFileAtTemporaryURL:(id)l toDestinations:(id)destinations withMetadata:(id)metadata
{
  lCopy = l;
  destinationsCopy = destinations;
  metadataCopy = metadata;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = FTDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    allObjects = [destinationsCopy allObjects];
    v15 = TULoggableStringForHandles();
    *buf = 138412546;
    v36 = lCopy;
    v37 = 2112;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "temporaryClientFileURL: %@, destinations: %@", buf, 0x16u);
  }

  buf[0] = 0;
  v16 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v18 = [v16 fileExistsAtPath:path isDirectory:buf];

  if (v18)
  {
    v20 = +[NSMutableDictionary dictionary];
    v21 = [NSNumber numberWithBool:buf[0]];
    [v20 setObject:v21 forKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];

    [v20 setObject:metadataCopy forKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100008A28;
    v29[3] = &unk_1000512C8;
    v30 = destinationsCopy;
    v22 = v20;
    v31 = v22;
    v32 = metadataCopy;
    selfCopy = self;
    v23 = lCopy;
    v34 = v23;
    v24 = objc_retainBlock(v29);
    v25 = v24;
    if (buf[0] == 1)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100008CE0;
      v26[3] = &unk_1000512F0;
      v26[4] = self;
      v27 = v23;
      v28 = v25;
      [(FTFileTransferController *)self zipDirectoryAtURL:v27 completion:v26];
    }

    else
    {
      (v24[2])(v24, v23);
    }
  }

  else
  {
    v22 = FTDefaultLog(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100039248();
    }
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = FTDefaultLog(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    serviceIdentifier = [serviceCopy serviceIdentifier];
    v20 = IDSLoggableDescriptionForHandleOnService();
    *buf = 138412802;
    v39 = lCopy;
    v40 = 2112;
    v41 = metadataCopy;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "incomingResourceURL: %@ metadata: %@ fromID: %@", buf, 0x20u);
  }

  v21 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyIsDirectory"];
  bOOLValue = [v21 BOOLValue];

  v23 = [metadataCopy objectForKeyedSubscript:@"CSDFileTransferringMetadataKeyUserData"];
  v24 = [v23 objectForKeyedSubscript:@"CSDMomentsControllerMetadataKeyTransactionID"];
  v25 = dispatch_semaphore_create(0);
  sandboxDelegate = [(FTFileTransferController *)self sandboxDelegate];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000900C;
  v32[3] = &unk_100051318;
  v32[4] = self;
  v33 = lCopy;
  v37 = bOOLValue;
  v34 = v23;
  v35 = dCopy;
  v36 = v25;
  v27 = v25;
  v28 = dCopy;
  v29 = v23;
  v30 = lCopy;
  [sandboxDelegate requestSandboxExtensionForTransactionID:v24 reply:v32];

  v31 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v27, v31);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = FTDefaultLog(v17);
  v19 = v18;
  if (successCopy)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "successfully sent file with identifier: %@", &v29, 0xCu);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100039338();
  }

  clientFileURLByIdentifier = [(FTFileTransferController *)self clientFileURLByIdentifier];
  v21 = [clientFileURLByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v21)
  {
    [(FTFileTransferController *)self cleanUpTemporaryFileIfExistsForClientFileURL:v21];
    delegate = [(FTFileTransferController *)self delegate];
    transactionIDByIDSFileIdentifier = [(FTFileTransferController *)self transactionIDByIDSFileIdentifier];
    v25 = [transactionIDByIDSFileIdentifier objectForKeyedSubscript:identifierCopy];
    [delegate fileTransferer:self didTransferFileAtURL:v21 transactionID:v25 successfully:successCopy];

    clientFileURLByIdentifier2 = [(FTFileTransferController *)self clientFileURLByIdentifier];
    [clientFileURLByIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];

    transactionIDByIDSFileIdentifier2 = [(FTFileTransferController *)self transactionIDByIDSFileIdentifier];
    [transactionIDByIDSFileIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  else
  {
    transactionIDByIDSFileIdentifier2 = FTDefaultLog(v22);
    if (os_log_type_enabled(transactionIDByIDSFileIdentifier2, OS_LOG_TYPE_DEFAULT))
    {
      clientFileURLByIdentifier3 = [(FTFileTransferController *)self clientFileURLByIdentifier];
      v29 = 138413570;
      v30 = serviceCopy;
      v31 = 2112;
      v32 = accountCopy;
      v33 = 2112;
      v34 = identifierCopy;
      v35 = 1024;
      v36 = successCopy;
      v37 = 2112;
      v38 = errorCopy;
      v39 = 2112;
      v40 = clientFileURLByIdentifier3;
      _os_log_impl(&_mh_execute_header, transactionIDByIDSFileIdentifier2, OS_LOG_TYPE_DEFAULT, "[WARN] Unexpected nil clientFileURL for service: %@, account: %@, identifier: %@, didSendWithSuccess: %d, error: %@, clientFileURLByIdentifier: %@", &v29, 0x3Au);
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
    v21 = FTDefaultLog(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000393A0();
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
    v21 = FTDefaultLog(v19);
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
    v12 = FTDefaultLog(v11);
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

  v8 = FTDefaultLog(v7);
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
    sub_100038938();
  }
}

- (void)zipDirectoryAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = NSTemporaryDirectory();
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  v12 = [v9 stringByAppendingPathComponent:uUIDString];
  v13 = [v12 stringByAppendingPathExtension:@"zip"];

  v14 = [NSURL fileURLWithPath:v13];
  v15 = FTDefaultLog(v14);
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
  v19[2] = sub_100009B4C;
  v19[3] = &unk_100051340;
  v20 = lCopy;
  v21 = v14;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v14;
  v18 = lCopy;
  [(FTFileTransferController *)self performFileCopierOperation:0 onInputURL:v18 outputURL:v17 completion:v19];
}

- (void)performFileCopierOperation:(unint64_t)operation onInputURL:(id)l outputURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = FTDefaultLog(v14);
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
  v20 = [(FTFileTransferController *)self queue:_NSConcreteStackBlock];
  v21 = [v16 initWithInputURL:v19 outputURL:v18 identifier:0 operation:operation completionBlock:&v22 queue:v20];

  [v21 start];
}

- (void)cleanUpTemporaryFileIfExistsForClientFileURL:(id)l
{
  lCopy = l;
  queue = [(FTFileTransferController *)self queue];
  dispatch_assert_queue_V2(queue);

  temporaryFileURLByClientFileURL = [(FTFileTransferController *)self temporaryFileURLByClientFileURL];
  v7 = [temporaryFileURLByClientFileURL objectForKeyedSubscript:lCopy];

  if (v7)
  {
    v9 = FTDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "deleting temporary file at URL: %@", &v11, 0xCu);
    }

    [objc_opt_class() deleteContentsAtURL:v7];
    temporaryFileURLByClientFileURL2 = [(FTFileTransferController *)self temporaryFileURLByClientFileURL];
    [temporaryFileURLByClientFileURL2 setObject:0 forKeyedSubscript:lCopy];
  }
}

- (FTFileTransferringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FTFileSandboxDelegate)sandboxDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sandboxDelegate);

  return WeakRetained;
}

@end