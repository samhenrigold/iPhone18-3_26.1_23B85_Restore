@interface GSClient
- (BOOL)_validateToken:(id)token error:(id *)error;
- (GSClient)initWithConnection:(id)connection;
- (id)_getCachedVolPath:(unint64_t)path error:(id *)error;
- (id)_volPathFromPath:(id)path error:(id *)error;
- (int)importCookieFileDescriptorForVolumeURL:(id)l forWriting:(BOOL)writing error:(id *)error;
- (void)_removeAdditionsInVolPath:(id)path removalSpec:(id)spec completionHandler:(id)handler;
- (void)_stagingPrefixCleanup:(id)cleanup;
- (void)checkItemAtURLValidInsidePermanentStorage:(id)storage reply:(id)reply;
- (void)createAdditionInStorage:(int64_t)storage stagedFileDescriptor:(id)descriptor creationInfo:(id)info completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteImportCookieDataForVolumeAtURL:(id)l reply:(id)reply;
- (void)getAdditionInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler;
- (void)getAdditionsInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler;
- (void)getFileIdForDocumentId:(unint64_t)id onDevice:(int)device reply:(id)reply;
- (void)hintDocIDCreationForFileHandle:(id)handle;
- (void)invalidate;
- (void)isPermanentStorageSupportedForHandle:(id)handle reply:(id)reply;
- (void)listAdditionsOfStorage:(int64_t)storage nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler;
- (void)listAdditionsUnderPath:(id)path withNameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler;
- (void)mergeAdditionInfoValueInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply;
- (void)permanentStorageClose:(unint64_t)close;
- (void)permanentStorageIDForHandle:(id)handle reply:(id)reply;
- (void)permanentStorageOpenForHandle:(id)handle withRemoteID:(unint64_t)d andDocumentID:(id)iD reply:(id)reply;
- (void)permanentStoragePrefixForHandle:(id)handle reply:(id)reply;
- (void)readImportCookieDataForVolumeAtURL:(id)l reply:(id)reply;
- (void)removeAdditionsInStorage:(int64_t)storage removalSpec:(id)spec completionHandler:(id)handler;
- (void)removeAdditionsUnderPath:(id)path additionsList:(id)list completionHandler:(id)handler;
- (void)requestFreeSpace:(unint64_t)space forVolume:(id)volume reply:(id)reply;
- (void)setAdditionConflictResolvedInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(BOOL)value reply:(id)reply;
- (void)setAdditionDisplayNameInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply;
- (void)setAdditionNameSpaceInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value completionHandler:(id)handler;
- (void)setAdditionOptionsInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(unint64_t)value reply:(id)reply;
- (void)stagingPrefixForDevice:(int)device volumeUUID:(id)d reply:(id)reply;
- (void)stagingPrefixRelinquish:(id)relinquish;
- (void)storeImportCookieData:(id)data forVolumeURL:(id)l reply:(id)reply;
@end

@implementation GSClient

- (GSClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = GSClient;
  v5 = [(GSClient *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = objc_alloc_init(NSMutableSet);
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    *v12 = [connectionCopy processIdentifier];
    *&v12[4] = [connectionCopy effectiveUserIdentifier];
    *&v12[8] = [connectionCopy effectiveGroupIdentifier];
    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy);
    }

    else
    {
      memset(&v12[12], 0, 32);
    }

    *(v5 + 24) = *v12;
    *(v5 + 40) = *&v12[16];
    *(v5 + 52) = *&v12[28];
    v10 = [connectionCopy valueForEntitlement:@"com.apple.fileprovider.import-cookie"];
    v5[80] = [v10 BOOLValue];
  }

  return v5;
}

- (void)invalidate
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_stagingPrefixes;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = sub_100003164(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] invalidating %@", buf, 0xCu);
        }

        v4 = [(GSClient *)self _stagingPrefixCleanup:v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
      v5 = v4;
    }

    while (v4);
  }

  [(NSMutableSet *)self->_stagingPrefixes removeAllObjects];
  if ([(NSMutableDictionary *)self->_storageVolPaths count])
  {
    [(NSMutableDictionary *)self->_storageVolPaths removeAllObjects];
    openHandleTx = self->_openHandleTx;
    self->_openHandleTx = 0;
  }
}

- (void)dealloc
{
  [(GSClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = GSClient;
  [(GSClient *)&v3 dealloc];
}

- (id)_getCachedVolPath:(unint64_t)path error:(id *)error
{
  storageVolPaths = self->_storageVolPaths;
  v8 = [NSNumber numberWithUnsignedLongLong:?];
  v9 = [(NSMutableDictionary *)storageVolPaths objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [NSString stringWithFormat:@"Instance id %llu does not exist for %@\n", path, self];
    v12 = sub_100003164(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100027C60();
    }

    if (error)
    {
      *error = sub_10000F0F8(101, v11, 0);
    }
  }

  return v9;
}

- (void)requestFreeSpace:(unint64_t)space forVolume:(id)volume reply:(id)reply
{
  volumeCopy = volume;
  replyCopy = reply;
  memset(&v27, 0, sizeof(v27));
  v10 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100027CD4();
  }

  if (![volumeCopy isFileURL] || lstat(objc_msgSend(volumeCopy, "fileSystemRepresentation"), &v27) < 0)
  {
    volumeCopy = [NSString stringWithFormat:@"invalid path [%@]", volumeCopy];
    v15 = sub_100003164(volumeCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100027DCC();
    }

    v13 = sub_10000F0F8(104, volumeCopy, 0);

    v17 = sub_100003164(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100027D50();
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v11 = [GSStorageManager existingLibraryForDevice:v27.st_dev];
    v12 = v11;
    if (v11)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000132AC;
      v24[3] = &unk_100041270;
      v25 = v11;
      spaceCopy = space;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000133A0;
      v22[3] = &unk_100041298;
      v23 = replyCopy;
      [v25 purgeWithCredential:&self->_creds whilePredicateIsTrue:v24 done:v22];

      v13 = 0;
    }

    else
    {
      v18 = [NSString stringWithFormat:@"no library on this volume"];
      v19 = sub_100003164(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1000256F4();
      }

      v13 = sub_10000F0F8(102, v18, 0);

      v21 = sub_100003164(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100027D50();
      }

      replyCopy[2](replyCopy, 0, v13);
    }
  }
}

- (void)getFileIdForDocumentId:(unint64_t)id onDevice:(int)device reply:(id)reply
{
  v5 = *&device;
  replyCopy = reply;
  v8 = [GSStorageManager existingLibraryForDevice:v5];
  v9 = v8;
  if (!v8)
  {
    v16 = 0;
    v9 = [GSStorageManager createLibraryForDevice:v5 error:&v16];
    v10 = v16;
    v11 = v10;
    if (!v9)
    {
      v12 = sub_100003164(v10);
      if (os_log_type_enabled(v12, 0x90u))
      {
        sub_100027F6C(v11, v5, v12);
      }
    }
  }

  v13 = sub_100003164(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100027FE4();
  }

  if (v9)
  {
    [v9 resolveDocId:id reply:replyCopy];
  }

  else
  {
    v15 = sub_100003164(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100028070();
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 4);
  }
}

- (void)hintDocIDCreationForFileHandle:(id)handle
{
  handleCopy = handle;
  v12 = 0;
  v4 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v12);
  v5 = v12;
  v6 = sub_100003164(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100028108();
  }

  v11 = v5;
  v7 = [v4 isValidForCreds:0 documentIdentifier:0 error:&v11];
  v8 = v11;

  if (v7)
  {
    [v4 performOnResolvedPath:&stru_1000412D8];
  }

  else
  {
    v10 = sub_100003164(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100028184();
    }
  }
}

- (void)isPermanentStorageSupportedForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v7 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000281C0();
  }

  v21 = 0;
  v8 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v21);
  v9 = v21;
  v10 = v9;
  if (v8)
  {
    isInIgnoredLocation = [v8 isInIgnoredLocation];
    if (isInIgnoredLocation)
    {
      path = [v8 path];
      v13 = [NSString stringWithFormat:@"%@ is in an ignored location", path];

      v15 = sub_100003164(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100027DCC();
      }

      v16 = sub_10000F0F8(104, v13, 0);

      v18 = sub_100003164(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000282C8();
      }

      replyCopy[2](replyCopy, 0, v16);
      v10 = v16;
    }

    else
    {
      v20 = sub_100003164(isInIgnoredLocation);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_10002823C();
      }

      replyCopy[2](replyCopy, 1, 0);
    }
  }

  else
  {
    v19 = sub_100003164(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000282C8();
    }

    replyCopy[2](replyCopy, 0, v10);
  }
}

- (void)stagingPrefixForDevice:(int)device volumeUUID:(id)d reply:(id)reply
{
  v6 = *&device;
  dCopy = d;
  replyCopy = reply;
  v10 = +[NSFileManager defaultManager];
  v11 = sub_100003164(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100028344(dCopy);
  }

  v43 = 0;
  v12 = [GSStorageManager createLibraryForDevice:v6 error:&v43];
  v13 = v43;
  v14 = v13;
  if (v12)
  {
    volumeUUID = [v12 volumeUUID];
    v16 = [dCopy isEqual:volumeUUID];

    if ((v16 & 1) == 0)
    {
      v23 = [NSString stringWithFormat:@"device UUID doesn't match"];
      v24 = sub_100003164(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100027DCC();
      }

      v19 = sub_10000F0F8(104, v23, 0);

      v21 = sub_100003164(v25);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_1000283F0();
LABEL_17:

      (*(replyCopy + 2))(replyCopy, 0, 0, v19);
      v14 = v19;
      goto LABEL_29;
    }

    if ([v12 isReadOnly])
    {
      v17 = [NSString stringWithFormat:@"storage is read-only"];
      v18 = sub_100003164(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000284F8();
      }

      v19 = sub_10000F0F8(111, v17, 0);

      v21 = sub_100003164(v20);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    stagingPath = [v12 stagingPath];
    v27 = [[NSString alloc] initWithFormat:@"%d-%d-XXXXXXXX", self->_creds.uid, self->_creds.pid];
    v42 = v14;
    v28 = [v10 gs_createTemporarySubdirectoryOfItem:stagingPath withTemplate:v27 error:&v42];
    v29 = v42;

    if (v28)
    {
      v39 = v27;
      v45[0] = &off_100044250;
      v44[0] = NSFilePosixPermissions;
      v44[1] = NSFileOwnerAccountID;
      v31 = [NSNumber numberWithUnsignedInt:self->_creds.uid];
      v44[2] = NSFileGroupOwnerAccountID;
      v45[1] = v31;
      v45[2] = &off_100044268;
      v32 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
      v41 = v29;
      v33 = v28;
      v34 = [v10 setAttributes:v32 ofItemAtPath:v28 error:&v41];
      v38 = v41;

      if (v34)
      {
        v40 = 0;
        v35 = [v33 gs_issueExtension:"com.apple.revisiond.staging" error:&v40];
        v29 = v40;

        v28 = v33;
        if (v35)
        {
          v36 = sub_100003164([(NSMutableSet *)self->_stagingPrefixes addObject:v33]);
          v27 = v39;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            sub_100028470();
          }

          (*(replyCopy + 2))(replyCopy, v33, v35, 0);
          goto LABEL_28;
        }

        v37 = sub_100003164([v10 removeItemAtPath:v33 error:0]);
        v27 = v39;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_1000283F0();
        }

LABEL_27:

        (*(replyCopy + 2))(replyCopy, 0, 0, v29);
LABEL_28:

        v14 = v29;
        goto LABEL_29;
      }

      v30 = [v10 removeItemAtPath:v33 error:0];
      v29 = v38;
      v27 = v39;
      v28 = v33;
    }

    v37 = sub_100003164(v30);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      sub_1000283F0();
    }

    goto LABEL_27;
  }

  v22 = sub_100003164(v13);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1000283F0();
  }

  (*(replyCopy + 2))(replyCopy, 0, 0, v14);
LABEL_29:
}

- (void)_stagingPrefixCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  v4 = open([cleanupCopy fileSystemRepresentation], 260);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = sub_100003164(v4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = 138412290;
    v10 = cleanupCopy;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't resolve staging path %@, volume is probably gone", &v9, 0xCu);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [GSVolPath volPathOnVolume:0 withFD:v4 error:0];
  if (!v6)
  {
    v7 = sub_100003164(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = 138412290;
    v10 = cleanupCopy;
    goto LABEL_8;
  }

  v7 = v6;
  close(v5);
  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtPath:cleanupCopy error:0];

LABEL_9:
}

- (void)stagingPrefixRelinquish:(id)relinquish
{
  relinquishCopy = relinquish;
  v5 = sub_100003164(relinquishCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100028568();
  }

  if ([(NSMutableSet *)self->_stagingPrefixes containsObject:relinquishCopy])
  {
    [(NSMutableSet *)self->_stagingPrefixes removeObject:relinquishCopy];
    [(GSClient *)self _stagingPrefixCleanup:relinquishCopy];
  }
}

- (void)permanentStoragePrefixForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v8 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000285E4();
  }

  v20 = 0;
  v9 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v20);
  v10 = v20;
  v19 = v10;
  v11 = [v9 isValidForCreds:0 documentIdentifier:0 error:&v19];
  v12 = v19;

  if (v11)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100014184;
    v15[3] = &unk_100041300;
    v16 = v9;
    selfCopy = self;
    v18 = replyCopy;
    [v16 performOnResolvedPath:v15];
  }

  else
  {
    v14 = sub_100003164(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100028660();
    }

    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (void)permanentStorageIDForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v7 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100028760();
  }

  v17 = 0;
  v8 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v17);
  v9 = v17;
  v16 = v9;
  v10 = [v8 isValidForCreds:0 documentIdentifier:0 error:&v16];
  v11 = v16;

  if (v10)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100014450;
    v14[3] = &unk_100041328;
    v15 = replyCopy;
    [v8 performOnResolvedPath:v14];
  }

  else
  {
    v13 = sub_100003164(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000287DC();
    }

    (*(replyCopy + 2))(replyCopy, 0, v11);
  }
}

- (void)permanentStorageOpenForHandle:(id)handle withRemoteID:(unint64_t)d andDocumentID:(id)iD reply:(id)reply
{
  handleCopy = handle;
  iDCopy = iD;
  replyCopy = reply;
  v13 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v35 = "[GSClient permanentStorageOpenForHandle:withRemoteID:andDocumentID:reply:]";
    v36 = 2112;
    v37 = handleCopy;
    v38 = 2048;
    dCopy = d;
    v40 = 2112;
    v41 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%@, %lld, %@)", buf, 0x2Au);
  }

  storageVolPaths = self->_storageVolPaths;
  v15 = [NSNumber numberWithUnsignedLongLong:d];
  v16 = [(NSMutableDictionary *)storageVolPaths objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = [NSString stringWithFormat:@"Instance %lld already exists", d];
    v18 = sub_100003164(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000288E4();
    }

    v19 = sub_10000F0F8(101, v17, 0);

    v21 = sub_100003164(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100028954();
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v19);
    v22 = 0;
  }

  else
  {
    v33 = 0;
    v22 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v33);
    v23 = v33;
    v32 = v23;
    v24 = [v22 isValidForCreds:0 documentIdentifier:iDCopy error:&v32];
    v19 = v32;

    if (v24)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100014820;
      v27[3] = &unk_100041350;
      v22 = v22;
      v28 = v22;
      selfCopy = self;
      v30 = replyCopy;
      dCopy2 = d;
      [v22 performOnResolvedPath:v27];
    }

    else
    {
      v26 = sub_100003164(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_100028954();
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v19);
    }
  }
}

- (void)permanentStorageClose:(unint64_t)close
{
  v5 = sub_100003164(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000289D4();
  }

  if ([(NSMutableDictionary *)self->_storageVolPaths count])
  {
    storageVolPaths = self->_storageVolPaths;
    v7 = [NSNumber numberWithUnsignedLongLong:close];
    [(NSMutableDictionary *)storageVolPaths removeObjectForKey:v7];

    if (![(NSMutableDictionary *)self->_storageVolPaths count])
    {
      openHandleTx = self->_openHandleTx;
      self->_openHandleTx = 0;
    }
  }
}

- (void)getAdditionInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler
{
  spaceCopy = space;
  namedCopy = named;
  handlerCopy = handler;
  v13 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v32 = "[GSClient getAdditionInStorage:andNameSpace:named:completionHandler:]";
    v33 = 2048;
    storageCopy = storage;
    v35 = 2112;
    v36 = spaceCopy;
    v37 = 2112;
    v38 = namedCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  v30 = 0;
  v14 = [(GSClient *)self _getCachedVolPath:storage error:&v30];
  v15 = v30;
  v16 = v15;
  if (!v14)
  {
    v19 = sub_100003164(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100028ACC();
    }

    goto LABEL_12;
  }

  v29 = 0;
  v17 = [namedCopy validateGSName:&v29];
  v18 = v29;

  if ((v17 & 1) == 0)
  {
    v20 = [NSString stringWithFormat:@"Invalid namespace"];
    v21 = sub_100003164(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100028A54();
    }

    v16 = sub_10000F0F8(3, v20, 0);

    v19 = sub_100003164(v22);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100028ACC();
    }

LABEL_12:

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
    goto LABEL_13;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100014E64;
  v23[3] = &unk_100041378;
  v24 = v14;
  v25 = spaceCopy;
  v26 = namedCopy;
  selfCopy = self;
  v28 = handlerCopy;
  [v24 performOnResolvedPath:v23];

  v16 = v18;
LABEL_13:
}

- (void)getAdditionsInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler
{
  spaceCopy = space;
  namedCopy = named;
  handlerCopy = handler;
  v13 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v31 = "[GSClient getAdditionsInStorage:andNameSpace:named:completionHandler:]";
    v32 = 2048;
    storageCopy = storage;
    v34 = 2112;
    v35 = spaceCopy;
    v36 = 2112;
    v37 = namedCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  v29 = 0;
  v14 = [(GSClient *)self _getCachedVolPath:storage error:&v29];
  v15 = v29;
  v16 = v15;
  if (v14)
  {
    if (sub_10001532C(namedCopy))
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100015464;
      v23[3] = &unk_100041378;
      v24 = namedCopy;
      v25 = v14;
      v26 = spaceCopy;
      selfCopy = self;
      v28 = handlerCopy;
      [v25 performOnResolvedPath:v23];
    }

    else
    {
      v18 = [NSString stringWithFormat:@"Invalid removal spec"];
      v19 = sub_100003164(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100028B4C();
      }

      v20 = sub_10000F0F8(105, v18, 0);

      v22 = sub_100003164(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_100028BC4();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v20);
      v16 = v20;
    }
  }

  else
  {
    v17 = sub_100003164(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100028BC4();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
  }
}

- (BOOL)_validateToken:(id)token error:(id *)error
{
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [tokenCopy count];
    if (!error || v6 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!error)
  {
    goto LABEL_9;
  }

  v7 = [NSString stringWithFormat:@"invalid enumeration state"];
  v8 = sub_100003164(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000288E4();
  }

  v9 = sub_10000F0F8(101, v7, 0);

  v10 = v9;
  *error = v9;
LABEL_9:
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [tokenCopy copy];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v17 = [NSString stringWithFormat:@"invalid enumeration state", v22];
            v18 = sub_100003164(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              sub_1000288E4();
            }

            v19 = sub_10000F0F8(101, v17, 0);

            v20 = v19;
            v16 = 0;
            *error = v19;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_23;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)listAdditionsOfStorage:(int64_t)storage nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler
{
  spaceCopy = space;
  stateCopy = state;
  handlerCopy = handler;
  v17 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v44 = "[GSClient listAdditionsOfStorage:nameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:]";
    v45 = 2048;
    storageCopy = storage;
    v47 = 2112;
    v48 = spaceCopy;
    v49 = 2048;
    optionsCopy = options;
    v51 = 2048;
    withoutOptionsCopy = withoutOptions;
    v53 = 2112;
    v54 = stateCopy;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %llx, %llx, %@)", buf, 0x3Eu);
  }

  if (stateCopy)
  {
    v42 = 0;
    v18 = [(GSClient *)self _validateToken:stateCopy error:&v42];
    v19 = v42;
    v20 = v19;
    if ((v18 & 1) == 0)
    {
      v28 = sub_100003164(v19);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_100028C44();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v20);
      goto LABEL_16;
    }

    v21 = [stateCopy mutableCopy];
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = v20;
  v41 = 0;
  v23 = [(GSClient *)self _getCachedVolPath:storage error:&v41];
  v20 = v41;

  if (!v23)
  {
    v29 = sub_100003164(v24);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028C44();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v20);
LABEL_16:
    v23 = 0;
    goto LABEL_20;
  }

  v40 = 0;
  v25 = [spaceCopy validateGSName:&v40];
  v31 = v40;

  if (v25)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100015CD4;
    v32[3] = &unk_1000413A0;
    v33 = v21;
    v23 = v23;
    v34 = v23;
    optionsCopy2 = options;
    withoutOptionsCopy2 = withoutOptions;
    v35 = spaceCopy;
    selfCopy = self;
    v37 = handlerCopy;
    v27 = v21;
    [v23 performOnResolvedPath:v32];

    v20 = v31;
  }

  else
  {
    v30 = sub_100003164(v26);
    v20 = v31;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100028C44();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v31);
  }

LABEL_20:
}

- (void)checkItemAtURLValidInsidePermanentStorage:(id)storage reply:(id)reply
{
  replyCopy = reply;
  isFileURL = [storage isFileURL];
  v7 = isFileURL;
  v8 = sub_100003164(isFileURL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      sub_100028D70();
    }

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    if (v9)
    {
      sub_100028CC4(NSURLErrorDomain);
    }

    v10 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
    replyCopy[2](replyCopy, 0, v10);

    replyCopy = v10;
  }
}

- (void)setAdditionOptionsInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(unint64_t)value reply:(id)reply
{
  spaceCopy = space;
  nameCopy = name;
  replyCopy = reply;
  v15 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v44 = "[GSClient setAdditionOptionsInStorage:nameSpace:additionName:value:reply:]";
    v45 = 2048;
    storageCopy = storage;
    v47 = 2112;
    v48 = spaceCopy;
    v49 = 2112;
    v50 = nameCopy;
    v51 = 2048;
    valueCopy = value;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %llx)", buf, 0x34u);
  }

  if ((value & 0xFFFFFFFFFFFFFFE1) != 1)
  {
    v30 = [NSString stringWithFormat:@"invalid options"];
    v31 = sub_100003164(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_100028DFC();
    }

    v18 = sub_10000F0F8(110, v30, 0);

    v33 = sub_100003164(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

    goto LABEL_20;
  }

  v42 = 0;
  v16 = [nameCopy validateGSName:&v42];
  v17 = v42;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_18;
  }

  v41 = 0;
  v19 = [spaceCopy validateGSName:&v41];
  v20 = v41;

  if ((v19 & 1) == 0)
  {
    v18 = v20;
LABEL_18:
    v33 = sub_100003164(v17);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

    goto LABEL_20;
  }

  v40 = 0;
  v21 = [(GSClient *)self _getCachedVolPath:storage error:&v40];
  v18 = v40;

  if (!v21)
  {
    v33 = sub_100003164(v22);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

LABEL_20:

    replyCopy[2](replyCopy, 0, v18);
    goto LABEL_21;
  }

  library = [v21 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v25 = [NSString stringWithFormat:@"storage is read-only"];
    v26 = sub_100003164(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v27 = sub_10000F0F8(111, v25, 0);

    v29 = sub_100003164(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

    replyCopy[2](replyCopy, 0, v27);
    v18 = v27;
  }

  else
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100016404;
    v34[3] = &unk_1000413C8;
    v35 = nameCopy;
    v36 = spaceCopy;
    selfCopy = self;
    v39 = value & 0xFFFFFFFFFFFFFFEDLL;
    v38 = replyCopy;
    [v21 performOnResolvedPath:v34];
  }

LABEL_21:
}

- (void)mergeAdditionInfoValueInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply
{
  spaceCopy = space;
  nameCopy = name;
  valueCopy = value;
  replyCopy = reply;
  v16 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v50 = "[GSClient mergeAdditionInfoValueInStorage:nameSpace:additionName:value:reply:]";
    v51 = 2048;
    storageCopy = storage;
    v53 = 2112;
    v54 = spaceCopy;
    v55 = 2112;
    v56 = nameCopy;
    v57 = 2112;
    v58 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v48 = 0;
  v17 = [nameCopy validateGSName:&v48];
  v18 = v48;
  v19 = v18;
  if (!v17)
  {
    goto LABEL_13;
  }

  v47 = 0;
  v20 = [spaceCopy validateGSName:&v47];
  v21 = v47;

  if ((v20 & 1) == 0)
  {
    v19 = v21;
LABEL_13:
    v32 = sub_100003164(v18);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F78();
    }

    goto LABEL_15;
  }

  v46 = 0;
  v22 = [(GSClient *)self _getCachedVolPath:storage error:&v46];
  v19 = v46;

  if (!v22)
  {
    v32 = sub_100003164(v23);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F78();
    }

LABEL_15:

    replyCopy[2](replyCopy, 0, v19);
    v31 = 0;
    v22 = 0;
    goto LABEL_16;
  }

  library = [v22 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v26 = [NSString stringWithFormat:@"storage is read-only"];
    v27 = sub_100003164(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v28 = sub_10000F0F8(111, v26, 0);

    v30 = sub_100003164(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F78();
    }

    replyCopy[2](replyCopy, 0, v28);
    v31 = 0;
    v19 = v28;
  }

  else
  {
    v45 = 0;
    v31 = [NSPropertyListSerialization propertyListWithData:valueCopy options:0 format:0 error:&v45];
    v33 = v45;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100016A1C;
      v38[3] = &unk_1000413F0;
      v39 = nameCopy;
      v40 = spaceCopy;
      selfCopy = self;
      v22 = v22;
      v42 = v22;
      v31 = v31;
      v43 = v31;
      v44 = replyCopy;
      [v22 performOnResolvedPath:v38];

      v19 = v33;
    }

    else
    {
      v34 = [NSString stringWithFormat:@"Invalid plist value received"];
      v35 = sub_100003164(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_1000288E4();
      }

      v19 = sub_10000F0F8(101, v34, v33);

      v37 = sub_100003164(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_100028F78();
      }

      replyCopy[2](replyCopy, 0, v19);
    }
  }

LABEL_16:
}

- (void)setAdditionDisplayNameInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply
{
  spaceCopy = space;
  nameCopy = name;
  valueCopy = value;
  replyCopy = reply;
  v16 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v46 = "[GSClient setAdditionDisplayNameInStorage:nameSpace:additionName:value:reply:]";
    v47 = 2048;
    storageCopy = storage;
    v49 = 2112;
    v50 = spaceCopy;
    v51 = 2112;
    v52 = nameCopy;
    v53 = 2112;
    v54 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v44 = 0;
  v17 = [nameCopy validateGSName:&v44];
  v18 = v44;
  v19 = v18;
  if (!v17)
  {
    goto LABEL_15;
  }

  v43 = 0;
  v20 = [valueCopy validateGSName:&v43];
  v21 = v43;

  if (!v20)
  {
    v19 = v21;
    goto LABEL_15;
  }

  v42 = 0;
  v22 = [spaceCopy validateGSName:&v42];
  v23 = v42;

  if ((v22 & 1) == 0)
  {
    v19 = v23;
LABEL_15:
    v33 = sub_100003164(v18);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_10002907C();
    }

    goto LABEL_17;
  }

  v41 = 0;
  v24 = [(GSClient *)self _getCachedVolPath:storage error:&v41];
  v19 = v41;

  if (!v24)
  {
    v33 = sub_100003164(v25);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_10002907C();
    }

LABEL_17:

    replyCopy[2](replyCopy, 0, v19);
    v24 = 0;
    goto LABEL_18;
  }

  library = [v24 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v28 = [NSString stringWithFormat:@"storage is read-only"];
    v29 = sub_100003164(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v30 = sub_10000F0F8(111, v28, 0);

    v32 = sub_100003164(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_10002907C();
    }

    replyCopy[2](replyCopy, 0, v30);
    v19 = v30;
  }

  else
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100016F70;
    v34[3] = &unk_1000413F0;
    v35 = nameCopy;
    v36 = spaceCopy;
    selfCopy = self;
    v24 = v24;
    v38 = v24;
    v39 = valueCopy;
    v40 = replyCopy;
    [v24 performOnResolvedPath:v34];
  }

LABEL_18:
}

- (void)setAdditionNameSpaceInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value completionHandler:(id)handler
{
  spaceCopy = space;
  nameCopy = name;
  valueCopy = value;
  handlerCopy = handler;
  v16 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v46 = "[GSClient setAdditionNameSpaceInStorage:nameSpace:additionName:value:completionHandler:]";
    v47 = 2048;
    storageCopy = storage;
    v49 = 2112;
    v50 = spaceCopy;
    v51 = 2112;
    v52 = nameCopy;
    v53 = 2112;
    v54 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v44 = 0;
  v17 = [nameCopy validateGSName:&v44];
  v18 = v44;
  v19 = v18;
  if (!v17)
  {
    goto LABEL_15;
  }

  v43 = 0;
  v20 = [spaceCopy validateGSName:&v43];
  v21 = v43;

  if (!v20)
  {
    v19 = v21;
    goto LABEL_15;
  }

  v42 = 0;
  v22 = [valueCopy validateGSName:&v42];
  v23 = v42;

  if ((v22 & 1) == 0)
  {
    v19 = v23;
LABEL_15:
    v33 = sub_100003164(v18);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

    goto LABEL_17;
  }

  v41 = 0;
  v24 = [(GSClient *)self _getCachedVolPath:storage error:&v41];
  v19 = v41;

  if (!v24)
  {
    v33 = sub_100003164(v25);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

LABEL_17:

    handlerCopy[2](handlerCopy, 0, v19);
    v24 = 0;
    goto LABEL_18;
  }

  library = [v24 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v28 = [NSString stringWithFormat:@"storage is read-only"];
    v29 = sub_100003164(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v30 = sub_10000F0F8(111, v28, 0);

    v32 = sub_100003164(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

    handlerCopy[2](handlerCopy, 0, v30);
    v19 = v30;
  }

  else
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000174C4;
    v34[3] = &unk_1000413F0;
    v24 = v24;
    v35 = v24;
    v36 = spaceCopy;
    v37 = nameCopy;
    v38 = valueCopy;
    selfCopy = self;
    v40 = handlerCopy;
    [v24 performOnResolvedPath:v34];
  }

LABEL_18:
}

- (id)_volPathFromPath:(id)path error:(id *)error
{
  pathCopy = path;
  memset(&v21, 0, sizeof(v21));
  if (lstat([pathCopy fileSystemRepresentation], &v21))
  {
    if (error)
    {
      v6 = *__error();
      v7 = __error();
      v8 = [NSString stringWithFormat:@"lstat(%@) failed error %d (%s)\n", pathCopy, v6, strerror(*v7)];;
      v9 = sub_100003164(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000288E4();
      }

      v10 = sub_10000F0F8(101, v8, 0);

      v11 = v10;
      v12 = 0;
      *error = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [GSStorageManager existingLibraryForDevice:v21.st_dev];
    if (v13)
    {
      v20 = 0;
      v12 = [GSVolPath volPathOnVolume:v13 withPath:pathCopy error:&v20];
      v14 = v20;
      if (error && !v12)
      {
        v14 = v14;
        *error = v14;
      }
    }

    else if (error)
    {
      v15 = [NSString stringWithFormat:@"Unable to open library"];
      v16 = sub_100003164(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000256F4();
      }

      v17 = sub_10000F0F8(102, v15, 0);

      v18 = v17;
      v12 = 0;
      *error = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)listAdditionsUnderPath:(id)path withNameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler
{
  pathCopy = path;
  spaceCopy = space;
  stateCopy = state;
  handlerCopy = handler;
  v18 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v41 = "[GSClient listAdditionsUnderPath:withNameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:]";
    v42 = 2112;
    v43 = pathCopy;
    v44 = 2112;
    v45 = spaceCopy;
    v46 = 2048;
    optionsCopy = options;
    v48 = 2048;
    withoutOptionsCopy = withoutOptions;
    v50 = 2112;
    v51 = stateCopy;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%@, %@, %llx, %llx, %@)", buf, 0x3Eu);
  }

  if (!stateCopy)
  {
    v22 = 0;
    v21 = 0;
    goto LABEL_7;
  }

  v39 = 0;
  v19 = [(GSClient *)self _validateToken:stateCopy error:&v39];
  v20 = v39;
  v21 = v20;
  if (v19)
  {
    v22 = [stateCopy mutableCopy];
LABEL_7:
    v23 = v21;
    v38 = v21;
    pathCopy = [(GSClient *)self _volPathFromPath:pathCopy error:&v38, pathCopy];
    v21 = v38;

    if (pathCopy)
    {
      library = [pathCopy library];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100017AD8;
      v30[3] = &unk_100041418;
      v31 = v22;
      v32 = pathCopy;
      optionsCopy2 = options;
      withoutOptionsCopy2 = withoutOptions;
      v33 = spaceCopy;
      selfCopy = self;
      v35 = handlerCopy;
      [library dispatchSync:v30];
    }

    else
    {
      v28 = sub_100003164(v25);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_100029280();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);
    }

    pathCopy = v29;
    goto LABEL_16;
  }

  v27 = sub_100003164(v20);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_100029280();
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);
LABEL_16:
}

- (void)createAdditionInStorage:(int64_t)storage stagedFileDescriptor:(id)descriptor creationInfo:(id)info completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  infoCopy = info;
  handlerCopy = handler;
  v13 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v51 = "[GSClient createAdditionInStorage:stagedFileDescriptor:creationInfo:completionHandler:]";
    v52 = 2048;
    storageCopy = storage;
    v54 = 2112;
    v55 = descriptorCopy;
    v56 = 2112;
    v57 = infoCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  if (fcntl([descriptorCopy fileDescriptor], 50, buf) < 0)
  {
    v26 = [NSString stringWithFormat:@"Unable to get path for file descriptor"];
    v27 = __error();
    v28 = *v27;
    v29 = sub_100003164(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100029408(v26, v28);
    }

    v16 = sub_10000F37C(v28, v26);

    v31 = sub_100003164(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_100029388();
    }

    goto LABEL_21;
  }

  memset(&v49, 0, sizeof(v49));
  if (fstat([descriptorCopy fileDescriptor], &v49) < 0)
  {
    v32 = [NSString stringWithFormat:@"Unable to stat file descriptor"];
    v33 = __error();
    v34 = *v33;
    v35 = sub_100003164(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_100029408(v32, v34);
    }

    v16 = sub_10000F37C(v34, v32);

    v31 = sub_100003164(v36);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_100029388();
    }

LABEL_21:

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
    v14 = 0;
    v18 = 0;
    goto LABEL_31;
  }

  v14 = [NSString gs_stringWithFileSystemRepresentation:buf];
  v48 = 0;
  v15 = sub_1000119BC(v14, infoCopy, &v48);
  v16 = v48;

  if (v15)
  {
    v47 = 0;
    v18 = [(GSClient *)self _getCachedVolPath:storage error:&v47];
    v19 = v47;

    if (v18)
    {
      library = [v18 library];
      if ([library isReadOnly])
      {
        v22 = [NSString stringWithFormat:@"storage is read-only"];
        v23 = sub_100003164(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_1000284F8();
        }

        v16 = sub_10000F0F8(111, v22, 0);

        v25 = sub_100003164(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100029388();
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
      }

      else
      {
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100018168;
        v39[3] = &unk_100041440;
        v40 = library;
        v41 = v15;
        v46 = v49;
        v42 = v14;
        selfCopy = self;
        v44 = v18;
        v45 = handlerCopy;
        [v44 performOnResolvedPath:v39];

        v16 = v19;
      }
    }

    else
    {
      v38 = sub_100003164(v20);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_100029388();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v19);
      v18 = 0;
      v16 = v19;
    }

    infoCopy = v15;
  }

  else
  {
    v37 = sub_100003164(v17);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      sub_100029388();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
    v18 = 0;
    infoCopy = 0;
  }

LABEL_31:
}

- (void)_removeAdditionsInVolPath:(id)path removalSpec:(id)spec completionHandler:(id)handler
{
  pathCopy = path;
  specCopy = spec;
  handlerCopy = handler;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = specCopy;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    selfCopy = self;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v35 + 1) + 8 * v15);
      v17 = [v11 objectForKeyedSubscript:v16];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (![v16 validateGSName:0])
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v18 = sub_10001532C(v17);

      if (!v18)
      {
        goto LABEL_18;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
        self = selfCopy;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

LABEL_18:
    v26 = [NSString stringWithFormat:@"Invalid removal spec"];
    v27 = sub_100003164(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_100028B4C();
    }

    v23 = sub_10000F0F8(105, v26, 0);

    v25 = sub_100003164(v28);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_10002949C();
    goto LABEL_22;
  }

LABEL_12:

  library = [pathCopy library];
  isReadOnly = [library isReadOnly];

  if (!isReadOnly)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000186B4;
    v30[3] = &unk_100041490;
    v34 = handlerCopy;
    v31 = v11;
    v32 = pathCopy;
    selfCopy2 = self;
    [v32 performOnResolvedPath:v30];

    v23 = v34;
    goto LABEL_23;
  }

  v21 = [NSString stringWithFormat:@"storage is read-only"];
  v22 = sub_100003164(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1000284F8();
  }

  v23 = sub_10000F0F8(111, v21, 0);

  v25 = sub_100003164(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_21;
  }

LABEL_22:

  (*(handlerCopy + 2))(handlerCopy, 0, v23);
LABEL_23:
}

- (void)removeAdditionsInStorage:(int64_t)storage removalSpec:(id)spec completionHandler:(id)handler
{
  specCopy = spec;
  handlerCopy = handler;
  v10 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000296A8();
  }

  v15 = 0;
  v11 = [(GSClient *)self _getCachedVolPath:storage error:&v15];
  v12 = v15;
  v13 = v12;
  if (v11)
  {
    [(GSClient *)self _removeAdditionsInVolPath:v11 removalSpec:specCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = sub_100003164(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100029724();
    }

    handlerCopy[2](handlerCopy, 0, v13);
  }
}

- (void)removeAdditionsUnderPath:(id)path additionsList:(id)list completionHandler:(id)handler
{
  pathCopy = path;
  listCopy = list;
  handlerCopy = handler;
  v11 = sub_100003164(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000297A4();
  }

  v12 = [GSRemoveAdditionSpec calculateSpecForAdditionRemovalUnderPath:listCopy];
  if (v12)
  {
    v34 = 0;
    v13 = [(GSClient *)self _volPathFromPath:pathCopy error:&v34];
    v14 = v34;
    v15 = v14;
    if (v13)
    {
      library = [v13 library];
      isReadOnly = [library isReadOnly];

      if (isReadOnly)
      {
        v18 = [NSString stringWithFormat:@"storage is read-only"];
        v19 = sub_100003164(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_1000284F8();
        }

        v20 = sub_10000F0F8(111, v18, 0);

        v22 = sub_100003164(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_100029824();
        }

        handlerCopy[2](handlerCopy, 0, v20);
        v15 = v20;
      }

      else
      {
        library2 = [v13 library];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10001902C;
        v29[3] = &unk_1000414B8;
        v30 = v12;
        v31 = v13;
        selfCopy = self;
        v33 = handlerCopy;
        [library2 dispatchSync:v29];
      }
    }

    else
    {
      v27 = sub_100003164(v14);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100029824();
      }

      handlerCopy[2](handlerCopy, 0, v15);
    }
  }

  else
  {
    v23 = [NSString stringWithFormat:@"Invalid removal spec"];
    v24 = sub_100003164(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100028B4C();
    }

    v15 = sub_10000F0F8(105, v23, 0);

    v26 = sub_100003164(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100029824();
    }

    handlerCopy[2](handlerCopy, 0, v15);
  }
}

- (int)importCookieFileDescriptorForVolumeURL:(id)l forWriting:(BOOL)writing error:(id *)error
{
  writingCopy = writing;
  lCopy = l;
  v10 = realpath_DARWIN_EXTSN([l fileSystemRepresentation], v68);
  if (v10)
  {
    v11 = [NSString stringWithUTF8String:v68];
    v12 = [NSURL fileURLWithPath:v11 isDirectory:1];

    if (writingCopy)
    {
      v13 = 536871430;
    }

    else
    {
      v13 = 536870916;
    }

    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100019CD0;
    v65[3] = &unk_1000414E0;
    if (writingCopy)
    {
      v14 = "file-write-data";
    }

    else
    {
      v14 = "file-read-data";
    }

    v65[4] = self;
    v65[5] = v14;
    v15 = objc_retainBlock(v65);
    memset(&v67, 0, 512);
    if (!statfs(v68, &v67) && (v67.f_flags & 0x40000000) != 0)
    {
      v40 = [v12 URLByAppendingPathComponent:@".DocumentRevisions-V100" isDirectory:1];
      v25 = [v40 URLByAppendingPathComponent:@"fpfs_import_cookie" isDirectory:0];

      if ((v15[2])(v15, v25))
      {
        v41 = open([v25 fileSystemRepresentation], v13, 384);
        v27 = v41;
        if ((v41 & 0x80000000) != 0)
        {
          v42 = sub_100003164(v41);
          if (os_log_type_enabled(v42, 0x90u))
          {
            sub_100029928();
          }

          if (error)
          {
            v43 = [NSString stringWithFormat:@"Invalid volume URL"];
            v44 = sub_100003164(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              sub_100027DCC();
            }

            v45 = sub_10000F0F8(104, v43, 0);

            v46 = v45;
            *error = v45;
          }
        }

        goto LABEL_88;
      }

      if (error)
      {
        *error = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
      }
    }

    else
    {
      memset(&v64, 0, sizeof(v64));
      v16 = lstat(v68, &v64);
      if ((v16 & 0x80000000) == 0)
      {
        v17 = [GSStorageManager existingLibraryForDevice:v64.st_dev];
        v18 = v17;
        if (!v17 && writingCopy)
        {
          v19 = sub_100003164(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            sub_1000299B0();
          }

          v63 = 0;
          v18 = [GSStorageManager createLibraryForDevice:v64.st_dev error:&v63];
          v20 = v63;
          v21 = v20;
          if (v20)
          {
            v22 = sub_100003164(v20);
            if (os_log_type_enabled(v22, 0x90u))
            {
              sub_100029A24();
            }
          }
        }

        if (v18)
        {
          libraryRoot = [v18 libraryRoot];
          v24 = [NSURL fileURLWithPath:libraryRoot isDirectory:1];

          v25 = [v24 URLByAppendingPathComponent:@"fpfs_import_cookie" isDirectory:0];
          if (v25)
          {
            if ((v15[2])(v15, v25))
            {
              v26 = open([v25 fileSystemRepresentation], v13, 384);
              v27 = v26;
              if ((v26 & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              v28 = sub_100003164(v26);
              if (os_log_type_enabled(v28, 0x90u))
              {
                sub_100029A94();
              }

              if (!error)
              {
                goto LABEL_79;
              }

              v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
              goto LABEL_64;
            }

            if (error)
            {
              v29 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
LABEL_63:
              v27 = -1;
LABEL_64:
              v50 = v29;
              *error = v29;
LABEL_79:

LABEL_87:
              goto LABEL_88;
            }
          }

          else
          {
            v47 = sub_100003164(0);
            if (os_log_type_enabled(v47, 0x90u))
            {
              sub_100029B28();
            }

            if (error)
            {
              v48 = [NSString stringWithFormat:@"Can't create cookie URL"];
              v49 = sub_100003164(v48);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                sub_100027C60();
              }

              v29 = sub_10000F0F8(101, v48, 0);

              goto LABEL_63;
            }
          }

          v27 = -1;
          goto LABEL_79;
        }

        v35 = sub_100003164(v17);
        if (os_log_type_enabled(v35, 0x90u))
        {
          sub_100029B64();
        }

        if (writingCopy)
        {
          if (error)
          {
            v36 = [NSString stringWithFormat:@"No storage in volume"];
            v37 = sub_100003164(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              sub_1000256F4();
            }

            v38 = sub_10000F0F8(102, v36, 0);

            v39 = v38;
            v25 = 0;
            *error = v38;
          }

          else
          {
            v25 = 0;
          }

          v27 = -1;
          goto LABEL_87;
        }

        v66 = NSURLVolumeURLKey;
        v51 = [NSArray arrayWithObjects:&v66 count:1];
        v62 = 0;
        v52 = [v12 resourceValuesForKeys:v51 error:&v62];
        v53 = v62;

        if (v53)
        {
          v55 = sub_100003164(v54);
          if (os_log_type_enabled(v55, 0x90u))
          {
            sub_100029BD0();
          }
        }

        v56 = [v52 objectForKeyedSubscript:NSURLVolumeURLKey];
        v57 = [v56 URLByAppendingPathComponent:@".DocumentRevisions-V100" isDirectory:1];
        v25 = [v57 URLByAppendingPathComponent:@"fpfs_import_cookie" isDirectory:0];

        if ((v15[2])(v15, v25))
        {
          v58 = open([v25 fileSystemRepresentation], 536870916, 384);
          v27 = v58;
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_86;
          }

          v59 = sub_100003164(v58);
          if (os_log_type_enabled(v59, 0x90u))
          {
            sub_100029C40();
          }

          if (!error)
          {
            goto LABEL_86;
          }

          v60 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
        }

        else
        {
          if (!error)
          {
            v27 = -1;
            goto LABEL_86;
          }

          v60 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
          v27 = -1;
        }

        *error = v60;
LABEL_86:

        goto LABEL_87;
      }

      v30 = sub_100003164(v16);
      if (os_log_type_enabled(v30, 0x90u))
      {
        sub_100029CC8();
      }

      if (error)
      {
        v31 = [NSString stringWithFormat:@"Invalid volume"];
        v32 = sub_100003164(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_100027DCC();
        }

        v33 = sub_10000F0F8(104, v31, 0);

        v34 = v33;
        v25 = 0;
        *error = v33;
      }

      else
      {
        v25 = 0;
      }
    }

    v27 = -1;
LABEL_88:

    goto LABEL_89;
  }

  if (error)
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    *error = v10;
  }

  v12 = sub_100003164(v10);
  if (os_log_type_enabled(v12, 0x90u))
  {
    sub_100029D5C();
  }

  v27 = -1;
LABEL_89:

  return v27;
}

- (void)storeImportCookieData:(id)data forVolumeURL:(id)l reply:(id)reply
{
  dataCopy = data;
  lCopy = l;
  replyCopy = reply;
  v11 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100029DD4(dataCopy, lCopy);
  }

  if (lCopy)
  {
    v62 = 0;
    v13 = [(GSClient *)self importCookieFileDescriptorForVolumeURL:lCopy forWriting:1 error:&v62];
    v14 = v62;
    v15 = v14;
    if ((v13 & 0x80000000) != 0)
    {
      v27 = sub_100003164(v14);
      if (os_log_type_enabled(v27, 0x90u))
      {
        sub_10002A188();
      }

      if (!v15)
      {
        v29 = [NSString stringWithFormat:@"Unknown error. See logs for more details."];
        v30 = sub_100003164(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_100027C60();
        }

        v15 = sub_10000F0F8(101, v29, 0);
      }

      v31 = sub_100003164(v28);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_10002A1F8();
      }

      replyCopy[2](replyCopy, v15);
    }

    else
    {
      v16 = [[NSFileHandle alloc] initWithFileDescriptor:v13 closeOnDealloc:1];
      v17 = v16;
      if (dataCopy)
      {
        v56 = 0;
        v57 = &v56;
        v58 = 0x3032000000;
        v59 = sub_1000188F8;
        v60 = sub_100018908;
        v61 = 0;
        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v55 = 0;
        v18 = sub_10001B000(v16);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001A3B4;
        block[3] = &unk_100041508;
        v50 = &v52;
        v48 = v17;
        v49 = dataCopy;
        v51 = &v56;
        dispatch_sync(v18, block);

        if (v53[3])
        {
          v20 = sub_100003164(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            sub_100029F9C();
          }

          v22 = sub_100003164(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_100029FD8();
          }

          v23 = 0;
        }

        else
        {
          v40 = sub_100003164(v19);
          if (os_log_type_enabled(v40, 0x90u))
          {
            sub_100029EA8();
          }

          v42 = sub_100003164(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            sub_100029F1C();
          }

          v23 = v57[5];
        }

        replyCopy[2](replyCopy, v23);

        _Block_object_dispose(&v52, 8);
      }

      else
      {
        v32 = sub_100003164(v16);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A058();
        }

        v56 = 0;
        v57 = &v56;
        v58 = 0x3032000000;
        v59 = sub_1000188F8;
        v60 = sub_100018908;
        v61 = 0;
        v34 = sub_10001B000(v33);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10001A458;
        v44[3] = &unk_100041530;
        v45 = v17;
        v46 = &v56;
        dispatch_sync(v34, v44);

        if (v57[5])
        {
          v36 = sub_100003164(v35);
          if (os_log_type_enabled(v36, 0x90u))
          {
            sub_10002A094();
          }

          v38 = sub_100003164(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            sub_100029F1C();
          }

          v39 = v57[5];
        }

        else
        {
          v43 = sub_100003164(v35);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            sub_10002A108();
          }

          v39 = 0;
        }

        replyCopy[2](replyCopy, v39);
      }

      _Block_object_dispose(&v56, 8);
    }
  }

  else
  {
    v24 = sub_100003164(v12);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A274();
    }

    v26 = sub_100003164(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100029FD8();
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)readImportCookieDataForVolumeAtURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v8 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A2B0(lCopy);
  }

  if (lCopy)
  {
    v49 = 0;
    v10 = [(GSClient *)self importCookieFileDescriptorForVolumeURL:lCopy forWriting:0 error:&v49];
    v11 = v49;
    v12 = v11;
    if ((v10 & 0x80000000) != 0)
    {
      code = [v11 code];
      if (code == 2 && ([v12 domain], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", NSPOSIXErrorDomain), v24, v25))
      {
        v26 = sub_100003164(code);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A510();
        }

        (*(replyCopy + 2))(replyCopy, 0, 0, 0);
      }

      else
      {
        v27 = sub_100003164(code);
        if (os_log_type_enabled(v27, 0x90u))
        {
          sub_10002A188();
        }

        if (!v12)
        {
          v29 = [NSString stringWithFormat:@"Unknown error. See logs for more details."];
          v30 = sub_100003164(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            sub_100027C60();
          }

          v12 = sub_10000F0F8(101, v29, 0);
        }

        v31 = sub_100003164(v28);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A490();
        }

        (*(replyCopy + 2))(replyCopy, 0, 0, v12);
      }
    }

    else
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_1000188F8;
      v47 = sub_100018908;
      v48 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = sub_1000188F8;
      v41 = sub_100018908;
      v42 = 0;
      v13 = sub_10001B000(v11);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10001A988;
      v35[3] = &unk_100041558;
      v36 = v10;
      v35[4] = &v43;
      v35[5] = &v37;
      dispatch_sync(v13, v35);

      if (v44[5])
      {
        v15 = sub_100003164(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = v44[5];
          v17 = +[NSDate distantPast];
          sub_10002A344(v16, v17, buf, v15);
        }

        v18 = v44[5];
        v19 = +[NSDate distantPast];
        (*(replyCopy + 2))(replyCopy, v18, v19, 0);
      }

      else
      {
        v32 = sub_100003164(v14);
        if (os_log_type_enabled(v32, 0x90u))
        {
          sub_10002A3C4();
        }

        v34 = sub_100003164(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A400();
        }

        (*(replyCopy + 2))(replyCopy, 0, 0, v38[5]);
      }

      _Block_object_dispose(&v37, 8);

      _Block_object_dispose(&v43, 8);
    }
  }

  else
  {
    v20 = sub_100003164(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A274();
    }

    v22 = sub_100003164(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A510();
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0);
  }
}

- (void)deleteImportCookieDataForVolumeAtURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 removeItemAtPath:@"/var/mobile/.DocumentRevisions-V100/fpfs_import_cookie" error:0];

  v8 = sub_100003164(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A594();
  }

  replyCopy[2](replyCopy, v6);
}

- (void)setAdditionConflictResolvedInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(BOOL)value reply:(id)reply
{
  valueCopy = value;
  spaceCopy = space;
  nameCopy = name;
  replyCopy = reply;
  v15 = sub_100003164(replyCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v41 = "[GSClient setAdditionConflictResolvedInStorage:nameSpace:additionName:value:reply:]";
    v42 = 2048;
    storageCopy = storage;
    v44 = 2112;
    v45 = spaceCopy;
    v46 = 2112;
    v47 = nameCopy;
    v48 = 1024;
    v49 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %hhd)", buf, 0x30u);
  }

  v39 = 0;
  v16 = [nameCopy validateGSName:&v39];
  v17 = v39;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_13;
  }

  v38 = 0;
  v19 = [spaceCopy validateGSName:&v38];
  v20 = v38;

  if ((v19 & 1) == 0)
  {
    v18 = v20;
LABEL_13:
    v30 = sub_100003164(v17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A618();
    }

    goto LABEL_15;
  }

  v37 = 0;
  v21 = [(GSClient *)self _getCachedVolPath:storage error:&v37];
  v18 = v37;

  if (!v21)
  {
    v30 = sub_100003164(v22);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A618();
    }

LABEL_15:

    replyCopy[2](replyCopy, 0, v18);
    goto LABEL_16;
  }

  library = [v21 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v25 = [NSString stringWithFormat:@"storage is read-only"];
    v26 = sub_100003164(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v27 = sub_10000F0F8(111, v25, 0);

    v29 = sub_100003164(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A618();
    }

    replyCopy[2](replyCopy, 0, v27);
    v18 = v27;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10001AE60;
    v31[3] = &unk_100041580;
    v32 = nameCopy;
    v33 = spaceCopy;
    selfCopy = self;
    v36 = valueCopy;
    v35 = replyCopy;
    [v21 performOnResolvedPath:v31];
  }

LABEL_16:
}

@end