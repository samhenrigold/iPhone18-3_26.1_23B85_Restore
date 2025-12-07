@interface PurchaseManifest
+ (id)_sharedManifestWithManifestType:(int64_t)type;
+ (id)sharedManifestForDownloadKind:(id)kind;
+ (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block;
+ (void)getPathsWithMessage:(id)message connection:(id)connection;
+ (void)jetsam;
+ (void)observeXPCServer:(id)server;
+ (void)rebuildWithMessage:(id)message connection:(id)connection;
+ (void)removeItemWithMessage:(id)message connection:(id)connection;
- (BOOL)_writeToFile;
- (NSArray)purchaseManifestItems;
- (NSString)path;
- (PurchaseManifest)initWithPurchaseDirectory:(id)directory;
- (id)_dictionary;
- (id)removeItemsWithAssetPaths:(id)paths error:(id *)error;
- (void)addCompletedItem:(id)item;
- (void)dealloc;
- (void)jetsam;
- (void)rebuildManifest;
@end

@implementation PurchaseManifest

- (PurchaseManifest)initWithPurchaseDirectory:(id)directory
{
  if (!directory)
  {
    sub_100271E80(a2, self);
  }

  v7.receiver = self;
  v7.super_class = PurchaseManifest;
  v5 = [(PurchaseManifest *)&v7 init];
  if (v5)
  {
    v5->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.PurchaseManifest", 0);
    v5->_path = [directory stringByAppendingPathComponent:@"StorePurchasesInfo.plist"];
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = PurchaseManifest;
  [(PurchaseManifest *)&v3 dealloc];
}

+ (void)jetsam
{
  pthread_mutex_lock(&stru_1003827B0);
  v2 = [qword_100383DA8 copy];
  pthread_mutex_unlock(&stru_1003827B0);
  [v2 makeObjectsPerformSelector:"jetsam"];
}

+ (id)sharedManifestForDownloadKind:(id)kind
{
  if ((SSDownloadKindIsMediaKind() & 1) == 0 && (SSDownloadKindIsPodcastKind() & 1) == 0 && !SSDownloadKindIsToneKind())
  {
    return 0;
  }

  pthread_mutex_lock(&stru_1003827B0);
  if (!qword_100383DA8)
  {
    qword_100383DA8 = objc_alloc_init(NSMutableArray);
  }

  v4 = sub_10020F36C(kind);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = qword_100383DA8;
  v6 = [qword_100383DA8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_8:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([[(NSString *)[(PurchaseManifest *)v10 path] stringByDeletingLastPathComponent] isEqualToString:v4])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

    if (v10)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v10 = [[PurchaseManifest alloc] initWithPurchaseDirectory:v4];
  [qword_100383DA8 addObject:v10];

LABEL_17:
  v11 = v10;
  pthread_mutex_unlock(&stru_1003827B0);
  return v10;
}

- (void)addCompletedItem:(id)item
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100097D18;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = item;
  dispatch_sync(dispatchQueue, v4);
}

- (void)jetsam
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097FC8;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (NSString)path
{
  v2 = self->_path;

  return v2;
}

- (NSArray)purchaseManifestItems
{
  v3 = +[NSMutableArray array];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000980B8;
  v6[3] = &unk_100327350;
  v6[4] = self;
  v6[5] = v3;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

- (void)rebuildManifest
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098254;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (id)removeItemsWithAssetPaths:(id)paths error:(id *)error
{
  v5 = +[NSMutableSet set];
  v78 = objc_alloc_init(NSMutableOrderedSet);
  v92 = 0;
  v93 = &v92;
  v94 = 0x3052000000;
  v95 = sub_100099120;
  v96 = sub_100099130;
  v97 = 0;
  v6 = objc_alloc_init(NSMutableSet);
  stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
  v79 = v6;
  selfCopy = self;
  v77 = v5;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v8 = [paths countByEnumeratingWithState:&v88 objects:v105 count:16];
  if (v8)
  {
    v9 = *v89;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v89 != v9)
        {
          objc_enumerationMutation(paths);
        }

        v11 = *(*(&v88 + 1) + 8 * i);
        v12 = [v11 length];
        if (v12 > -[NSString length](stringByDeletingLastPathComponent, "length") && ([v11 hasPrefix:stringByDeletingLastPathComponent] & 1) != 0)
        {
          [v79 addObject:{objc_msgSend(v11, "substringFromIndex:", -[NSString length](stringByDeletingLastPathComponent, "length") + 1)}];
        }

        else
        {
          v13 = +[SSLogConfig sharedDaemonConfig];
          if (!v13)
          {
            v13 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v13 shouldLog];
          shouldLogToDisk = [v13 shouldLogToDisk];
          oSLogObject = [v13 OSLogObject];
          v17 = oSLogObject;
          if (shouldLogToDisk)
          {
            v18 = shouldLog | 2;
          }

          else
          {
            v18 = shouldLog;
          }

          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
          }

          else
          {
            v19 = v18 & 2;
          }

          if (v19)
          {
            v20 = objc_opt_class();
            v99 = 138412802;
            v100 = v20;
            v101 = 2112;
            v102 = v11;
            v103 = 2112;
            v104 = stringByDeletingLastPathComponent;
            LODWORD(v75) = 32;
            v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v17, 0, "%@: Path: %@ not valid for manifest: %@", &v99, v75);
            if (v21)
            {
              v22 = v21;
              v23 = [NSString stringWithCString:v21 encoding:4];
              free(v22);
              v72 = v23;
              SSFileLog();
            }
          }
        }
      }

      v8 = [paths countByEnumeratingWithState:&v88 objects:v105 count:16];
    }

    while (v8);
  }

  v24 = v77;
  v25 = [v79 count];
  if (v25 != [paths count])
  {
    v26 = [NSError errorWithDomain:SSErrorDomain code:601 userInfo:0];
    v93[5] = v26;
  }

  if ([v79 count])
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009913C;
    block[3] = &unk_1003273B8;
    block[4] = selfCopy;
    block[5] = v79;
    block[6] = v77;
    block[7] = stringByDeletingLastPathComponent;
    block[8] = v78;
    block[9] = &v92;
    dispatch_sync(dispatchQueue, block);
  }

  v28 = [v77 count];
  if (v28 == [paths count])
  {
    if ([v78 count])
    {
      v29 = objc_alloc_init(NSFileManager);
      v30 = +[SSLogConfig sharedDaemonConfig];
      if (!v30)
      {
        v30 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v30 shouldLog];
      shouldLogToDisk2 = [v30 shouldLogToDisk];
      oSLogObject2 = [v30 OSLogObject];
      v34 = oSLogObject2;
      if (shouldLogToDisk2)
      {
        v35 = shouldLog2 | 2;
      }

      else
      {
        v35 = shouldLog2;
      }

      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 2;
      }

      if (v36)
      {
        v37 = objc_opt_class();
        v38 = [v78 count];
        v39 = [v77 count];
        v99 = 138412802;
        v100 = v37;
        v101 = 2048;
        v102 = v38;
        v103 = 2048;
        v104 = v39;
        LODWORD(v75) = 32;
        v40 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, v34, 1, "%@: Deleting %lu secondary files for %lu removed manifest items", &v99, v75);
        if (v40)
        {
          v41 = v40;
          v42 = [NSString stringWithCString:v40 encoding:4];
          free(v41);
          v73 = v42;
          SSFileLog();
        }
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v43 = [v78 countByEnumeratingWithState:&v83 objects:v98 count:{16, v73}];
      if (v43)
      {
        v44 = *v84;
        do
        {
          for (j = 0; j != v43; j = j + 1)
          {
            if (*v84 != v44)
            {
              objc_enumerationMutation(v78);
            }

            v46 = *(*(&v83 + 1) + 8 * j);
            v82 = 0;
            if ([v29 removeItemAtPath:v46 error:{&v82, v74}])
            {
              v47 = +[SSLogConfig sharedDaemonConfig];
              if (!v47)
              {
                v47 = +[SSLogConfig sharedConfig];
              }

              shouldLog3 = [v47 shouldLog];
              shouldLogToDisk3 = [v47 shouldLogToDisk];
              oSLogObject3 = [v47 OSLogObject];
              v51 = oSLogObject3;
              if (shouldLogToDisk3)
              {
                v52 = shouldLog3 | 2;
              }

              else
              {
                v52 = shouldLog3;
              }

              if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
              {
                v53 = v52;
              }

              else
              {
                v53 = v52 & 2;
              }

              if (v53)
              {
                v54 = objc_opt_class();
                v99 = 138412546;
                v100 = v54;
                v101 = 2112;
                v102 = v46;
                LODWORD(v75) = 22;
                v55 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, v51, 1, "%@: Deleted secondary file: %@", &v99, v75);
                if (v55)
                {
                  v56 = v55;
                  v57 = [NSString stringWithCString:v55 encoding:4];
                  free(v56);
                  v74 = v57;
                  SSFileLog();
                }
              }
            }

            else
            {
              v58 = +[SSLogConfig sharedDaemonConfig];
              if (!v58)
              {
                v58 = +[SSLogConfig sharedConfig];
              }

              shouldLog4 = [v58 shouldLog];
              shouldLogToDisk4 = [v58 shouldLogToDisk];
              oSLogObject4 = [v58 OSLogObject];
              v62 = oSLogObject4;
              if (shouldLogToDisk4)
              {
                v63 = shouldLog4 | 2;
              }

              else
              {
                v63 = shouldLog4;
              }

              if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v63;
              }

              else
              {
                v64 = v63 & 2;
              }

              if (v64)
              {
                v65 = objc_opt_class();
                v66 = v93[5];
                v99 = 138412802;
                v100 = v65;
                v101 = 2112;
                v102 = v66;
                v103 = 2112;
                v104 = v46;
                LODWORD(v75) = 32;
                v67 = _os_log_send_and_compose_impl(v64, 0, 0, 0, &_mh_execute_header, v62, 0, "%@: Could not delete secondary file: %@: %@", &v99, v75);
                if (v67)
                {
                  v68 = v67;
                  v69 = [NSString stringWithCString:v67 encoding:4];
                  free(v68);
                  v74 = v69;
                  SSFileLog();
                }
              }
            }
          }

          v43 = [v78 countByEnumeratingWithState:&v83 objects:v98 count:16];
        }

        while (v43);
      }

      v24 = v77;
    }
  }

  else if (error)
  {
    *error = v93[5];
  }

  v70 = v93[5];
  _Block_object_dispose(&v92, 8);
  return v24;
}

+ (void)getPathsWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000995F8;
  v4[3] = &unk_1003273E0;
  v4[4] = connection;
  v4[5] = message;
  v4[6] = self;
  [self _handleMessage:message connection:connection usingBlock:v4];
}

+ (void)observeXPCServer:(id)server
{
  [server addObserver:self selector:"getPathsWithMessage:connection:" forMessage:46];
  [server addObserver:self selector:"rebuildWithMessage:connection:" forMessage:47];

  [server addObserver:self selector:"removeItemWithMessage:connection:" forMessage:44];
}

+ (void)rebuildWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100099908;
  v4[3] = &unk_1003273E0;
  v4[4] = connection;
  v4[5] = message;
  v4[6] = self;
  [self _handleMessage:message connection:connection usingBlock:v4];
}

+ (void)removeItemWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000999FC;
  v4[3] = &unk_1003273E0;
  v4[4] = connection;
  v4[5] = message;
  v4[6] = self;
  [self _handleMessage:message connection:connection usingBlock:v4];
}

+ (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(message);
  xpc_retain(connection);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099CA0;
  block[3] = &unk_100327408;
  block[5] = connection;
  block[6] = block;
  block[4] = message;
  dispatch_async(global_queue, block);
}

+ (id)_sharedManifestWithManifestType:(int64_t)type
{
  if (!type)
  {
    v3 = &SSDownloadKindMusic;
    return [self sharedManifestForDownloadKind:*v3];
  }

  if (type == 1)
  {
    v3 = &SSDownloadKindPodcast;
    return [self sharedManifestForDownloadKind:*v3];
  }

  return 0;
}

- (id)_dictionary
{
  if (!self->_dictionary && [NSFileManager ensureDirectoryExists:[(NSString *)self->_path stringByDeletingLastPathComponent]])
  {
    memset(&v22, 0, sizeof(v22));
    if (stat([(NSString *)self->_path fileSystemRepresentation], &v22))
    {
      if (*__error() == 2)
      {
        v3 = +[SSLogConfig sharedDaemonConfig];
        if (!v3)
        {
          v3 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v3 shouldLog];
        if ([v3 shouldLogToDisk])
        {
          LODWORD(v5) = shouldLog | 2;
        }

        else
        {
          LODWORD(v5) = shouldLog;
        }

        oSLogObject = [v3 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v5 = v5;
        }

        else
        {
          v5 &= 2u;
        }

        if (v5)
        {
          v7 = objc_opt_class();
          path = self->_path;
          v23 = 138412546;
          v24 = v7;
          v25 = 2112;
          v26 = path;
          v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Path does not exist: %@", &v23, 22);
          if (v9)
          {
            v10 = v9;
            [NSString stringWithCString:v9 encoding:4];
            free(v10);
            SSFileLog();
          }
        }

        self->_dictionary = objc_alloc_init(NSMutableDictionary);
      }
    }

    else if (v22.st_mode < 0)
    {
      v11 = sub_1000CA250(self->_path);
      if ([(__CFDictionary *)v11 length])
      {
        v12 = [NSPropertyListSerialization propertyListWithData:v11 options:1 format:0 error:0];
      }

      else
      {
        v13 = +[SSLogConfig sharedDaemonConfig];
        if (!v13)
        {
          v13 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v13 shouldLog];
        if ([v13 shouldLogToDisk])
        {
          LODWORD(v15) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v15) = shouldLog2;
        }

        oSLogObject2 = [v13 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v15 = v15;
        }

        else
        {
          v15 &= 2u;
        }

        if (v15)
        {
          v17 = objc_opt_class();
          v18 = self->_path;
          v23 = 138412546;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Path returned empty plist: %@", &v23, 22);
          if (v19)
          {
            v20 = v19;
            [NSString stringWithCString:v19 encoding:4];
            free(v20);
            SSFileLog();
          }
        }

        v12 = objc_alloc_init(NSMutableDictionary);
      }

      self->_dictionary = v12;
    }
  }

  return self->_dictionary;
}

- (BOOL)_writeToFile
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    return 0;
  }

  v4 = [NSPropertyListSerialization dataWithPropertyList:dictionary format:200 options:0 error:0];
  if (![(NSData *)v4 length])
  {
    return 0;
  }

  v5 = sub_1000CA05C(v4, self->_path);
  v6 = v5 != 0;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 1024;
    v17 = v5 != 0;
    v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Wrote dictionary (success: %d)", &v14, 18);
    if (v11)
    {
      v12 = v11;
      [NSString stringWithCString:v11 encoding:4];
      free(v12);
      SSFileLog();
    }
  }

  return v6;
}

@end