@interface CKIDSService
- (BOOL)sendFile:(id)file onService:(id)service;
- (BOOL)sendProtobufData:(id)data type:(unint64_t)type service:(id)service fireAndForget:(BOOL)forget includeInactiveDevices:(BOOL)devices;
- (CKIDSService)init;
@end

@implementation CKIDSService

- (CKIDSService)init
{
  v15.receiver = self;
  v15.super_class = CKIDSService;
  v2 = [(CKIDSService *)&v15 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.quickboard.classa"];
    classAService = v2->_classAService;
    v2->_classAService = v3;

    v5 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.messages"];
    classCService = v2->_classCService;
    v2->_classCService = v5;

    v7 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.tinker.messages"];
    tinkerMessagesActivationService = v2->_tinkerMessagesActivationService;
    v2->_tinkerMessagesActivationService = v7;

    v9 = +[NSProcessInfo processInfo];
    processName = [v9 processName];
    v11 = [NSString stringWithFormat:@"%@ - IDS queue", processName];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v12;
  }

  return v2;
}

- (BOOL)sendProtobufData:(id)data type:(unint64_t)type service:(id)service fireAndForget:(BOOL)forget includeInactiveDevices:(BOOL)devices
{
  devicesCopy = devices;
  forgetCopy = forget;
  typeCopy = type;
  dataCopy = data;
  serviceCopy = service;
  v42 = [[IDSProtobuf alloc] initWithProtobufData:dataCopy type:typeCopy isResponse:0];
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  if (forgetCopy)
  {
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  }

  v14 = &NSLog_ptr;
  if (devicesCopy)
  {
    v15 = dataCopy;
    devices = [serviceCopy devices];
    v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(devices, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = devices;
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v51;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = IDSCopyIDForDevice();
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v20);
    }

    dataCopy = v15;
  }

  else
  {
    v17 = [NSSet setWithObject:IDSDefaultPairedDevice];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v24 = v17;
  v25 = [v24 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v25)
  {
    v26 = v25;
    v39 = v13;
    v40 = dataCopy;
    v27 = 0;
    v28 = 0;
    v29 = *v47;
    obj = v24;
    while (2)
    {
      v30 = 0;
      v31 = v27;
      v32 = v28;
      do
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v14;
        v34 = [v14[96] setWithObject:*(*(&v46 + 1) + 8 * v30)];
        v44 = v32;
        v45 = v31;
        v35 = [serviceCopy sendProtobuf:v42 toDestinations:v34 priority:200 options:0 identifier:&v45 error:&v44];
        v27 = v45;

        v28 = v44;
        if (!v35)
        {
          v24 = obj;

          localizedDescription = [v28 localizedDescription];
          NSLog(@"sendProtobufData failed - %@", localizedDescription);
          v36 = 0;
          goto LABEL_23;
        }

        v30 = v30 + 1;
        v31 = v27;
        v32 = v28;
        v14 = v33;
      }

      while (v26 != v30);
      v24 = obj;
      v26 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

    v36 = 1;
    localizedDescription = obj;
LABEL_23:
    v13 = v39;
    dataCopy = v40;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v36 = 1;
    localizedDescription = v24;
  }

  return v36;
}

- (BOOL)sendFile:(id)file onService:(id)service
{
  v5 = IDSDefaultPairedDevice;
  serviceCopy = service;
  fileCopy = file;
  v8 = [NSSet setWithObject:v5];
  v12 = 0;
  v13 = 0;
  LOBYTE(v5) = [serviceCopy sendResourceAtURL:fileCopy metadata:&__NSDictionary0__struct toDestinations:v8 priority:200 options:0 identifier:&v13 error:&v12];

  v9 = v13;
  v10 = v12;

  return v5;
}

@end