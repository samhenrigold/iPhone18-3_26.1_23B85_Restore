@interface BAAgentClientConnection
- (BAAgentClientConnection)initWithNSXPCConnection:(id)connection error:(id *)error;
- (BOOL)_entitledForCloudKitWithDownload:(id)download outError:(id *)error;
- (BOOL)isActive;
- (NSString)debugDescription;
- (id)extendClientSandboxForStagedURL:(id)l allowWrites:(BOOL)writes;
- (void)_validateAndSetClientIdentifier;
- (void)callBlockWhenConnectionReady:(id)ready onQueue:(id)queue;
- (void)cancelDownload:(id)download reply:(id)reply;
- (void)connectionInvalidated;
- (void)currentDownloads:(id)downloads;
- (void)dealloc;
- (void)downloadIdentifier:(id)identifier didFailWithError:(id)error wasHandled:(id)handled;
- (void)downloadIdentifier:(id)identifier didReceiveChallenge:(id)challenge authChallengeHandler:(id)handler withCompletion:(id)completion;
- (void)downloadIdentifier:(id)identifier didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)downloadIdentifierDidBegin:(id)begin;
- (void)downloadIdentifierDidFinish:(id)finish sandboxExtensionToken:(id)token wasHandled:(id)handled;
- (void)downloadIdentifierDidPause:(id)pause;
- (void)exclusiveControlExitedWithToken:(id)token;
- (void)markPurgeableWithFileURL:(id)l sandboxToken:(id)token reply:(id)reply;
- (void)performWithExclusiveControlBeforeDate:(id)date handler:(id)handler;
- (void)performWithExclusiveControlWithHandler:(id)handler;
- (void)removeDownloadIdentifier:(id)identifier;
- (void)scheduleDownload:(id)download reply:(id)reply;
- (void)startForegroundDownload:(id)download reply:(id)reply;
- (void)syncDownloads:(id)downloads;
@end

@implementation BAAgentClientConnection

- (BAAgentClientConnection)initWithNSXPCConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  if (qword_100089CC8 != -1)
  {
    sub_10004C824();
  }

  v65.receiver = self;
  v65.super_class = BAAgentClientConnection;
  v7 = [(BAAgentConnection *)&v65 initWithNSXPCConnection:connectionCopy error:error];
  if (v7)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BAAgentClientXPCProtocol];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v81[2] = objc_opt_class();
    v81[3] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v81 count:4];
    v10 = [NSSet setWithArray:v9];
    [v8 setClasses:v10 forSelector:"currentDownloads:" argumentIndex:0 ofReply:1];

    v80 = objc_opt_class();
    v11 = [NSArray arrayWithObjects:&v80 count:1];
    v12 = [NSSet setWithArray:v11];
    [v8 setClasses:v12 forSelector:"performWithExclusiveControlBeforeDate:handler:" argumentIndex:0 ofReply:0];

    v79[0] = objc_opt_class();
    v79[1] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v79 count:2];
    v14 = [NSSet setWithArray:v13];
    v62 = v8;
    [v8 setClasses:v14 forSelector:"scheduleDownload:reply:" argumentIndex:0 ofReply:0];

    v78[0] = objc_opt_class();
    v78[1] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v78 count:2];
    v16 = [NSSet setWithArray:v15];
    [v8 setClasses:v16 forSelector:"startForegroundDownload:reply:" argumentIndex:0 ofReply:0];

    connection = [(BAAgentConnection *)v7 connection];
    [connection setExportedInterface:v8];

    connection2 = [(BAAgentConnection *)v7 connection];
    [connection2 setExportedObject:v7];

    connection3 = [(BAAgentConnection *)v7 connection];
    processIdentifier = [connection3 processIdentifier];
    v21 = +[NSUUID UUID];
    uUIDString = [v21 UUIDString];
    v23 = [NSString stringWithFormat:@"%d.%@.worker", processIdentifier, uUIDString];

    connection4 = [(BAAgentConnection *)v7 connection];
    processIdentifier2 = [connection4 processIdentifier];
    v26 = +[NSUUID UUID];
    uUIDString2 = [v26 UUIDString];
    v28 = [NSString stringWithFormat:@"%d.%@.handler", processIdentifier2, uUIDString2];

    v29 = dispatch_queue_create([v23 UTF8String], 0);
    [(BAAgentClientConnection *)v7 setClientWorkQueue:v29];

    v30 = dispatch_queue_create([v28 UTF8String], 0);
    [(BAAgentClientConnection *)v7 setClientHandlerQueue:v30];

    clientWorkQueue = [(BAAgentClientConnection *)v7 clientWorkQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100032ED8;
    block[3] = &unk_100079260;
    v32 = v7;
    v64 = v32;
    dispatch_async(clientWorkQueue, block);

    connection5 = [(BAAgentConnection *)v32 connection];
    clientHandlerQueue = [(BAAgentClientConnection *)v32 clientHandlerQueue];
    [connection5 _setQueue:clientHandlerQueue];

    v35 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BADownloadManagerSyncProtocol];
    v77[0] = objc_opt_class();
    v77[1] = objc_opt_class();
    v77[2] = objc_opt_class();
    v77[3] = objc_opt_class();
    v36 = [NSArray arrayWithObjects:v77 count:4];
    v37 = [NSSet setWithArray:v36];
    [v35 setClasses:v37 forSelector:"syncDownloads:" argumentIndex:0 ofReply:0];

    v76 = objc_opt_class();
    v38 = [NSArray arrayWithObjects:&v76 count:1];
    v39 = [NSSet setWithArray:v38];
    [v35 setClasses:v39 forSelector:"removeDownloadIdentifier:" argumentIndex:0 ofReply:0];

    v75 = objc_opt_class();
    v40 = [NSArray arrayWithObjects:&v75 count:1];
    v41 = [NSSet setWithArray:v40];
    [v35 setClasses:v41 forSelector:"downloadIdentifierDidBegin:" argumentIndex:0 ofReply:0];

    v74 = objc_opt_class();
    v42 = [NSArray arrayWithObjects:&v74 count:1];
    v43 = [NSSet setWithArray:v42];
    [v35 setClasses:v43 forSelector:"downloadIdentifierDidPause:" argumentIndex:0 ofReply:0];

    v73 = objc_opt_class();
    v44 = [NSArray arrayWithObjects:&v73 count:1];
    v45 = [NSSet setWithArray:v44];
    [v35 setClasses:v45 forSelector:"downloadIdentifier:didWriteBytes:totalBytesWritten:totalBytesExpectedToWrite:" argumentIndex:0 ofReply:0];

    v72 = objc_opt_class();
    v46 = [NSArray arrayWithObjects:&v72 count:1];
    v47 = [NSSet setWithArray:v46];
    [v35 setClasses:v47 forSelector:"downloadIdentifier:didReceiveChallenge:authChallengeHandler:" argumentIndex:0 ofReply:0];

    v71 = objc_opt_class();
    v48 = [NSArray arrayWithObjects:&v71 count:1];
    v49 = [NSSet setWithArray:v48];
    [v35 setClasses:v49 forSelector:"downloadIdentifier:didReceiveChallenge:authChallengeHandler:" argumentIndex:1 ofReply:0];

    v70 = objc_opt_class();
    v50 = [NSArray arrayWithObjects:&v70 count:1];
    v51 = [NSSet setWithArray:v50];
    [v35 setClasses:v51 forSelector:"downloadIdentifier:didReceiveChallenge:authChallengeHandler:" argumentIndex:1 ofReply:1];

    v69 = objc_opt_class();
    v52 = [NSArray arrayWithObjects:&v69 count:1];
    v53 = [NSSet setWithArray:v52];
    [v35 setClasses:v53 forSelector:"downloadIdentifier:didFailWithError:wasHandled:" argumentIndex:0 ofReply:0];

    v68 = objc_opt_class();
    v54 = [NSArray arrayWithObjects:&v68 count:1];
    v55 = [NSSet setWithArray:v54];
    [v35 setClasses:v55 forSelector:"downloadIdentifier:didFailWithError:wasHandled:" argumentIndex:1 ofReply:0];

    v67 = objc_opt_class();
    v56 = [NSArray arrayWithObjects:&v67 count:1];
    v57 = [NSSet setWithArray:v56];
    [v35 setClasses:v57 forSelector:"downloadIdentifierDidFinish:sandboxExtensionToken:wasHandled:" argumentIndex:0 ofReply:0];

    v66 = objc_opt_class();
    v58 = [NSArray arrayWithObjects:&v66 count:1];
    v59 = [NSSet setWithArray:v58];
    [v35 setClasses:v59 forSelector:"downloadIdentifierDidFinish:sandboxExtensionToken:wasHandled:" argumentIndex:1 ofReply:0];

    connection6 = [(BAAgentConnection *)v32 connection];
    [connection6 setRemoteObjectInterface:v35];
  }

  return v7;
}

- (void)connectionInvalidated
{
  v5.receiver = self;
  v5.super_class = BAAgentClientConnection;
  [(BAAgentConnection *)&v5 connectionInvalidated];
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033028;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(clientWorkQueue, block);
}

- (void)dealloc
{
  exclusiveAccessBlockQueue = [(BAAgentClientConnection *)self exclusiveAccessBlockQueue];

  if (exclusiveAccessBlockQueue)
  {
    v4 = qword_100089CD0;
    exclusiveAccessBlockQueue2 = [(BAAgentClientConnection *)self exclusiveAccessBlockQueue];
    [v4 invalidateBlockQueue:exclusiveAccessBlockQueue2];
  }

  v6.receiver = self;
  v6.super_class = BAAgentClientConnection;
  [(BAAgentClientConnection *)&v6 dealloc];
}

- (void)currentDownloads:(id)downloads
{
  downloadsCopy = downloads;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000331F8;
  v7[3] = &unk_10007A2C0;
  v7[4] = self;
  v8 = downloadsCopy;
  v6 = downloadsCopy;
  dispatch_async(clientWorkQueue, v7);
}

- (void)scheduleDownload:(id)download reply:(id)reply
{
  downloadCopy = download;
  replyCopy = reply;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000333D4;
  block[3] = &unk_10007A2E8;
  v12 = downloadCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = downloadCopy;
  v10 = replyCopy;
  dispatch_async(clientWorkQueue, block);
}

- (void)performWithExclusiveControlWithHandler:(id)handler
{
  handlerCopy = handler;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033720;
  v7[3] = &unk_10007A2C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientWorkQueue, v7);
}

- (void)performWithExclusiveControlBeforeDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033A0C;
  block[3] = &unk_10007A2E8;
  v12 = dateCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dateCopy;
  v10 = handlerCopy;
  dispatch_async(clientWorkQueue, block);
}

- (void)exclusiveControlExitedWithToken:(id)token
{
  tokenCopy = token;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033CD8;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(clientWorkQueue, v7);
}

- (void)_validateAndSetClientIdentifier
{
  memset(&audittoken, 0, sizeof(audittoken));
  connection = [(BAAgentConnection *)self connection];
  v4 = connection;
  if (connection)
  {
    objc_msgSend_auditToken(connection);
  }

  else
  {
    memset(&audittoken, 0, sizeof(audittoken));
  }

  cf = 0;
  staticCode = 0;
  bzero(buffer, 0x400uLL);
  v5 = proc_pidpath_audittoken(&audittoken, buffer, 0x400u);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = sub_100010584(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004D0BC();
    }

    goto LABEL_16;
  }

  v6 = [NSString stringWithUTF8String:buffer];
  v7 = v6;
  if (!v6 || (v6 = [v6 length]) == 0)
  {
    v13 = sub_100010584(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004D080();
    }

    goto LABEL_13;
  }

  token = audittoken;
  v8 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!v8)
  {
    v13 = sub_100010584(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004D044();
    }

LABEL_13:

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [NSURL fileURLWithPath:v7];
  v11 = SecStaticCodeCreateWithPath(v10, 0, &staticCode);
  if (v11)
  {
    v12 = sub_100010584(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004C8DC();
    }

    goto LABEL_83;
  }

  v15 = SecCodeCopySigningInformation(staticCode, 0, &cf);
  if (v15)
  {
    v12 = sub_100010584(v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004C950();
    }

    goto LABEL_83;
  }

  v16 = CFDictionaryGetValue(cf, kSecCodeInfoPList);
  if (!v16)
  {
    v12 = sub_100010584(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004D008();
    }

    goto LABEL_83;
  }

  v12 = v16;
  v17 = [v16 objectForKey:@"EXAppExtensionAttributes"];
  if (v17)
  {

    goto LABEL_33;
  }

  v18 = [v12 objectForKey:@"NSExtension"];

  if (v18)
  {
LABEL_33:
    v19 = [v12 objectForKey:kCFBundleIdentifierKey];
    if (!v19)
    {
      v20 = sub_100010584(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10004CB78();
      }

      goto LABEL_82;
    }

    v20 = v19;
    v80 = 0;
    token = audittoken;
    v21 = [LSBundleRecord bundleRecordForAuditToken:&token error:&v80];
    v22 = v80;
    v23 = v22;
    if (v21)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        bundleIdentifier = [v21 bundleIdentifier];
        [(BAAgentClientConnection *)self setClientBundleIdentifier:bundleIdentifier];

        clientBundleIdentifier = [(BAAgentClientConnection *)self clientBundleIdentifier];
        if (clientBundleIdentifier)
        {
          v27 = clientBundleIdentifier;
          [(BAAgentClientConnection *)self clientBundleIdentifier];
          v28 = v76 = v23;
          v29 = [v28 length];

          v23 = v76;
          if (v29)
          {
            containingBundleRecord = [v21 containingBundleRecord];
            objc_opt_class();
            v31 = objc_opt_isKindOfClass();
            if ((v31 & 1) == 0 || ([containingBundleRecord bundleIdentifier], v31 = objc_claimAutoreleasedReturnValue(), (_baassets_stringByRemovingLastIdentifierComponent = v31) == 0))
            {
              v33 = sub_100010584(v31);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_10004CA54();
              }

              _baassets_stringByRemovingLastIdentifierComponent = [v20 _baassets_stringByRemovingLastIdentifierComponent];
            }

            [(BAAgentClientConnection *)self setApplicationBundleIdentifier:_baassets_stringByRemovingLastIdentifierComponent];
            applicationBundleIdentifier = [(BAAgentClientConnection *)self applicationBundleIdentifier];
            if (applicationBundleIdentifier)
            {
              v35 = applicationBundleIdentifier;
              [(BAAgentClientConnection *)self applicationBundleIdentifier];
              v36 = v75 = containingBundleRecord;
              v74 = [v36 length];

              containingBundleRecord = v75;
              if (v74)
              {
                -[BAAgentClientConnection setIsAppClip:](self, "setIsAppClip:", [v75 ba_isAppClip]);
                [(BAAgentClientConnection *)self setIsApplication:0];

                goto LABEL_56;
              }
            }

            v67 = sub_100010584(applicationBundleIdentifier);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_10004CA90();
            }

LABEL_81:
            goto LABEL_82;
          }
        }

        v37 = sub_100010584(clientBundleIdentifier);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10004CACC();
        }
      }

      else
      {
        v37 = sub_100010584(isKindOfClass);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10004C9C4(v21);
        }
      }
    }

    else
    {
      v37 = sub_100010584(v22);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10004CB08();
      }
    }

    goto LABEL_82;
  }

  v79 = 0;
  token = audittoken;
  _baassets_stringByRemovingLastIdentifierComponent = [LSBundleRecord bundleRecordForAuditToken:&token error:&v79];
  v38 = v79;
  v20 = v38;
  if (!_baassets_stringByRemovingLastIdentifierComponent)
  {
    v66 = sub_100010584(v38);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_10004CB08();
    }

    goto LABEL_80;
  }

  objc_opt_class();
  v39 = objc_opt_isKindOfClass();
  if ((v39 & 1) == 0)
  {
    v66 = sub_100010584(v39);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_10004CBB4(_baassets_stringByRemovingLastIdentifierComponent);
    }

    goto LABEL_80;
  }

  bundleIdentifier2 = [_baassets_stringByRemovingLastIdentifierComponent bundleIdentifier];
  [(BAAgentClientConnection *)self setApplicationBundleIdentifier:bundleIdentifier2];

  applicationBundleIdentifier2 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  [(BAAgentClientConnection *)self setClientBundleIdentifier:applicationBundleIdentifier2];

  applicationBundleIdentifier3 = [(BAAgentClientConnection *)self applicationBundleIdentifier];

  if (!applicationBundleIdentifier3)
  {
    v66 = sub_100010584(v43);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_10004CF98();
    }

LABEL_80:

    goto LABEL_81;
  }

  -[BAAgentClientConnection setIsAppClip:](self, "setIsAppClip:", [_baassets_stringByRemovingLastIdentifierComponent ba_isAppClip]);
  [(BAAgentClientConnection *)self setIsApplication:1];
LABEL_56:

  applicationBundleIdentifier4 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  v20 = [LSApplicationProxy applicationProxyForIdentifier:applicationBundleIdentifier4];

  if (v20)
  {
    v46 = [[FBSApplicationInfo alloc] initWithApplicationProxy:v20];
    if (v46)
    {
      v47 = v46;
      unauthoritativeTrustState = [v46 unauthoritativeTrustState];
      if (unauthoritativeTrustState == 8)
      {
        v77 = v47;
        applicationBundleIdentifier5 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
        applicationBundleIdentifier6 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
        _baassets_validUTI = [applicationBundleIdentifier6 _baassets_validUTI];
        v52 = [applicationBundleIdentifier5 isEqualToString:_baassets_validUTI];

        if (v52)
        {
          clientBundleIdentifier2 = [(BAAgentClientConnection *)self clientBundleIdentifier];
          clientBundleIdentifier3 = [(BAAgentClientConnection *)self clientBundleIdentifier];
          _baassets_validUTI2 = [clientBundleIdentifier3 _baassets_validUTI];
          v57 = [clientBundleIdentifier2 isEqualToString:_baassets_validUTI2];

          if (v57)
          {
            error = 0;
            v59 = SecTaskCopySigningIdentifier(v9, &error);
            [(BAAgentClientConnection *)self setSigningIdentifier:v59];

            signingIdentifier = [(BAAgentClientConnection *)self signingIdentifier];

            v62 = error;
            if (signingIdentifier)
            {
              if (error)
              {
                CFRelease(error);
              }

              isApplication = [(BAAgentClientConnection *)self isApplication];
              v64 = +[BAAgentCore sharedCore];
              applicationBundleIdentifier7 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
              if (isApplication)
              {
                [v64 handleApplicationLaunched:applicationBundleIdentifier7];
              }

              else
              {
                v73 = [v64 applicationInfoForIdentifier:applicationBundleIdentifier7];

                [v73 setApplicationExtensionState:4];
              }

              v14 = 1;
              goto LABEL_84;
            }

            v72 = sub_100010584(v61);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              sub_10004CE10();
            }
          }

          else
          {
            v71 = sub_100010584(v58);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              sub_10004CD84(self);
            }

            [(BAAgentClientConnection *)self setClientBundleIdentifier:0];
          }
        }

        else
        {
          v70 = sub_100010584(v53);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            sub_10004CCF8(self);
          }

          [(BAAgentClientConnection *)self setApplicationBundleIdentifier:0];
        }

        goto LABEL_82;
      }

      v68 = unauthoritativeTrustState;
      v69 = sub_100010584(unauthoritativeTrustState);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_10004CC44(self, v68);
      }
    }

    else
    {
      v47 = sub_100010584(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_10004CE80(self);
      }
    }
  }

  else
  {
    v20 = sub_100010584(v45);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10004CF0C(self);
    }
  }

LABEL_82:

LABEL_83:
  v14 = 0;
LABEL_84:

  CFRelease(v9);
  v7 = v10;
LABEL_17:

  if (staticCode)
  {
    CFRelease(staticCode);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [(BAAgentClientConnection *)self setConnectionIsValid:v14, v74];
}

- (BOOL)_entitledForCloudKitWithDownload:(id)download outError:(id *)error
{
  downloadCopy = download;
  connection = [(BAAgentConnection *)self connection];
  v8 = [connection valueForEntitlement:@"com.apple.developer.icloud-services"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (![*(*(&v33 + 1) + 8 * i) caseInsensitiveCompare:@"CloudKit"])
          {

            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 caseInsensitiveCompare:@"CloudKit"])
  {
LABEL_13:
    if (error)
    {
      sub_100027BE4(-52);
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_35;
  }

LABEL_16:
  connection2 = [(BAAgentConnection *)self connection];
  v16 = [connection2 valueForEntitlement:@"com.apple.developer.icloud-container-identifiers"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 count])
  {
    errorCopy = error;
    v28 = v16;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          containerID = [downloadCopy containerID];
          containerIdentifier = [containerID containerIdentifier];
          LOBYTE(v22) = [containerIdentifier isEqualToString:v22];

          if (v22)
          {

            signingIdentifier = [(BAAgentClientConnection *)self signingIdentifier];
            [downloadCopy setMasqueradeIdentifier:signingIdentifier];

            v14 = 1;
            goto LABEL_33;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    if (errorCopy)
    {
      sub_100027BE4(-54);
      *errorCopy = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_33:
    v16 = v28;
  }

  else if (error)
  {
    sub_100027BE4(-53);
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_35:
  return v14;
}

- (BOOL)isActive
{
  isApplication = [(BAAgentClientConnection *)self isApplication];
  v4 = +[BAAgentCore sharedCore];
  applicationBundleIdentifier = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  if (isApplication)
  {
    v6 = [v4 applicationStateForIdentifier:applicationBundleIdentifier];
  }

  else
  {
    v6 = [v4 applicationExtensionStateForIdentifier:applicationBundleIdentifier];
  }

  v7 = v6;

  return (v7 & 0xFFFFFFFFFFFFFFFELL) == 4;
}

- (void)startForegroundDownload:(id)download reply:(id)reply
{
  downloadCopy = download;
  replyCopy = reply;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034C1C;
  block[3] = &unk_10007A2E8;
  v12 = downloadCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = downloadCopy;
  v10 = replyCopy;
  dispatch_async(clientWorkQueue, block);
}

- (void)cancelDownload:(id)download reply:(id)reply
{
  downloadCopy = download;
  replyCopy = reply;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034EA4;
  block[3] = &unk_100079AA8;
  v12 = downloadCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = downloadCopy;
  dispatch_async(clientWorkQueue, block);
}

- (void)markPurgeableWithFileURL:(id)l sandboxToken:(id)token reply:(id)reply
{
  lCopy = l;
  tokenCopy = token;
  replyCopy = reply;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100035134;
  v15[3] = &unk_10007A360;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = lCopy;
  v18 = replyCopy;
  v12 = lCopy;
  v13 = tokenCopy;
  v14 = replyCopy;
  dispatch_async(clientWorkQueue, v15);
}

- (void)syncDownloads:(id)downloads
{
  downloadsCopy = downloads;
  connection = [(BAAgentConnection *)self connection];
  v5 = [connection remoteObjectProxyWithErrorHandler:&stru_10007A380];
  [v5 syncDownloads:downloadsCopy];
}

- (void)callBlockWhenConnectionReady:(id)ready onQueue:(id)queue
{
  readyCopy = ready;
  queueCopy = queue;
  clientWorkQueue = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000355F0;
  block[3] = &unk_100079AA8;
  block[4] = self;
  v12 = queueCopy;
  v13 = readyCopy;
  v9 = readyCopy;
  v10 = queueCopy;
  dispatch_async(clientWorkQueue, block);
}

- (void)removeDownloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connection = [(BAAgentConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100035774;
  v8[3] = &unk_100079328;
  v9 = identifierCopy;
  v6 = identifierCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 removeDownloadIdentifier:v6];
}

- (void)downloadIdentifierDidBegin:(id)begin
{
  beginCopy = begin;
  connection = [(BAAgentConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000358A0;
  v8[3] = &unk_100079328;
  v9 = beginCopy;
  v6 = beginCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 downloadIdentifierDidBegin:v6];
}

- (void)downloadIdentifierDidPause:(id)pause
{
  pauseCopy = pause;
  connection = [(BAAgentConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000359CC;
  v8[3] = &unk_100079328;
  v9 = pauseCopy;
  v6 = pauseCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 downloadIdentifierDidPause:v6];
}

- (void)downloadIdentifier:(id)identifier didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  identifierCopy = identifier;
  connection = [(BAAgentConnection *)self connection];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100035B18;
  v14[3] = &unk_100079328;
  v15 = identifierCopy;
  v12 = identifierCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:v14];
  [v13 downloadIdentifier:v12 didWriteBytes:bytes totalBytesWritten:written totalBytesExpectedToWrite:write];
}

- (void)downloadIdentifier:(id)identifier didReceiveChallenge:(id)challenge authChallengeHandler:(id)handler withCompletion:(id)completion
{
  identifierCopy = identifier;
  challengeCopy = challenge;
  handlerCopy = handler;
  completionCopy = completion;
  v14 = dispatch_queue_create("com.apple.BAAgentClientConnection.AuthChallengeWaiter", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035CA4;
  block[3] = &unk_10007A3D0;
  block[4] = self;
  v20 = identifierCopy;
  v21 = challengeCopy;
  v22 = handlerCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = handlerCopy;
  v17 = challengeCopy;
  v18 = identifierCopy;
  dispatch_async(v14, block);
}

- (void)downloadIdentifier:(id)identifier didFailWithError:(id)error wasHandled:(id)handled
{
  identifierCopy = identifier;
  handledCopy = handled;
  errorCopy = error;
  connection = [(BAAgentConnection *)self connection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100035F9C;
  v18[3] = &unk_100079378;
  v19 = identifierCopy;
  v12 = handledCopy;
  v20 = v12;
  v13 = identifierCopy;
  v14 = [connection remoteObjectProxyWithErrorHandler:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100036014;
  v16[3] = &unk_10007A3F8;
  v17 = v12;
  v15 = v12;
  [v14 downloadIdentifier:v13 didFailWithError:errorCopy wasHandled:v16];
}

- (void)downloadIdentifierDidFinish:(id)finish sandboxExtensionToken:(id)token wasHandled:(id)handled
{
  finishCopy = finish;
  handledCopy = handled;
  tokenCopy = token;
  connection = [(BAAgentConnection *)self connection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003618C;
  v18[3] = &unk_100079378;
  v19 = finishCopy;
  v12 = handledCopy;
  v20 = v12;
  v13 = finishCopy;
  v14 = [connection remoteObjectProxyWithErrorHandler:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100036204;
  v16[3] = &unk_10007A3F8;
  v17 = v12;
  v15 = v12;
  [v14 downloadIdentifierDidFinish:v13 sandboxExtensionToken:tokenCopy wasHandled:v16];
}

- (id)extendClientSandboxForStagedURL:(id)l allowWrites:(BOOL)writes
{
  lCopy = l;
  [l fileSystemRepresentation];
  connection = [(BAAgentConnection *)self connection];
  v8 = connection;
  if (connection)
  {
    objc_msgSend_auditToken(connection);
  }

  v9 = sandbox_extension_issue_file_to_process();

  v10 = *__error();
  if (v9)
  {
    v11 = [NSString stringWithCString:v9 encoding:4];
    free(v9);
  }

  else
  {
    v11 = 0;
  }

  *__error() = v10;

  return v11;
}

- (NSString)debugDescription
{
  applicationBundleIdentifier = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  clientBundleIdentifier = [(BAAgentClientConnection *)self clientBundleIdentifier];
  connection = [(BAAgentConnection *)self connection];
  processIdentifier = [connection processIdentifier];
  isApplication = [(BAAgentClientConnection *)self isApplication];
  v8 = @"NO";
  if (isApplication)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"Client Connection\nApp Identifier: %@\nClient Identifier: %@\nPID: %d\nIs Client App: %@", applicationBundleIdentifier, clientBundleIdentifier, processIdentifier, v8];

  return v9;
}

@end