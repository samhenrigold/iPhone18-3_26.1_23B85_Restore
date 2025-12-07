@interface MBRestorableOperation
+ (BOOL)restore:(id)restore attributesToDestination:(id)destination error:(id *)error;
+ (BOOL)restore:(id)restore protectionClassToDestination:(id)destination unspecifiedDirectoryProtectionClass:(unsigned __int8)class logger:(id)logger error:(id *)error;
+ (id)_setProtectionClass:(unsigned __int8)class withPath:(id)path;
+ (id)move:(id)move fromSource:(id)source destination:(id)destination destinationSize:(unint64_t)size conflictResolution:(int64_t)resolution error:(id *)error;
+ (id)restore:(id)restore directoryAtPath:(id)path settingDataProtection:(BOOL)protection settingOwnershipAndFlags:(BOOL)flags;
+ (id)restore:(id)restore emptyRegularFileAtPath:(id)path settingAttributes:(BOOL)attributes;
+ (id)restore:(id)restore regularFileAtPath:(id)path settingAttributes:(BOOL)attributes;
+ (id)restore:(id)restore symbolicLinkAtPath:(id)path withTarget:(id)target settingOwnershipAndFlags:(BOOL)flags;
@end

@implementation MBRestorableOperation

+ (BOOL)restore:(id)restore attributesToDestination:(id)destination error:(id *)error
{
  restoreCopy = restore;
  destinationCopy = destination;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0u;
  [restoreCopy getNode:&v35];
  domain = [restoreCopy domain];
  if (!domain)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:84 description:@"Null domain"];
  }

  if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v35 path:destinationCopy])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v41 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog(@"Df", "=restorable= Fixing ownership at %@", destinationCopy);
    }
  }

  v13 = WORD2(v39);
  v14 = HIDWORD(v35);
  if ((WORD2(v39) & 0xF000) == 0xA000)
  {
    v15 = 0;
  }

  else
  {
    v15 = BYTE12(v35) & 0x80;
  }

  v16 = v15 | WORD6(v35) & 0x8040u;
  if (v16)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v41 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=restorable= Restoring BSD flags: 0x%x", buf, 8u);
      _MBLog(@"I ", "=restorable= Restoring BSD flags: 0x%x", v16);
    }

    if (lchflags([destinationCopy fileSystemRepresentation], v16))
    {
      v18 = *__error();
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v41 = v16;
        *&v41[4] = 2112;
        *&v41[6] = destinationCopy;
        v42 = 1024;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
        _MBLog(@"E ", "=restorable= Failed to restore BSD flags (0x%x) at %@: %{errno}d", v16, destinationCopy, v18);
      }

      if (error)
      {
        [MBError posixErrorWithCode:102 path:destinationCopy format:@"lchflags error"];
        *error = v20 = 0;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_22;
    }

    v14 = HIDWORD(v35);
  }

  v21 = v13 & 0xFFF;
  if ((v14 & 0x40000000) != 0)
  {
    extendedAttributes = [restoreCopy extendedAttributes];
    v23 = [extendedAttributes objectForKeyedSubscript:@"com.apple.decmpfs"];

    sub_1000F0A08(destinationCopy, v23, 0);
  }

  v24 = WORD2(v39);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v30 = v36;
  v31 = v37;
  v27[2] = sub_1000F0C6C;
  v27[3] = &unk_1003BE6C8;
  v32 = v38;
  v33 = v39;
  v29 = v35;
  v34 = v21;
  v28 = destinationCopy;
  v20 = [v28 mb_openatWithMode:v24 error:error setupDir:v27 itemAccessor:0];

LABEL_22:
  return v20;
}

+ (id)move:(id)move fromSource:(id)source destination:(id)destination destinationSize:(unint64_t)size conflictResolution:(int64_t)resolution error:(id *)error
{
  moveCopy = move;
  sourceCopy = source;
  destinationCopy = destination;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    goto LABEL_52;
  }

  if (!resolution)
  {
    __assert_rtn("+[MBRestorableOperation move:fromSource:destination:destinationSize:conflictResolution:error:]", "MBRestorable.m", 158, "operation != MBFileRestoreOperationUnspecified");
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  [moveCopy getNode:v45];
  if (*(&v46 + 1) == size)
  {
    v16 = +[MBDigest sha256];
    v17 = [v16 digestForFileAtPath:destinationCopy error:0];

    v18 = +[MBDigest sha256];
    pathExtension = [v18 digestForFileAtPath:sourceCopy error:0];

    if (v17 && pathExtension && [v17 isEqualToData:pathExtension])
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = destinationCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=restorable= The hashes of existing file and restoring file are the same. Skip re-restoring On My iPhone file at %@", buf, 0xCu);
        _MBLog(@"Df", "=restorable= The hashes of existing file and restoring file are the same. Skip re-restoring On My iPhone file at %@", destinationCopy);
      }

      v21 = destinationCopy;
      goto LABEL_51;
    }
  }

  errorCopy = error;
  v42 = moveCopy;
  pathExtension = [destinationCopy pathExtension];
  v43 = +[NSFileManager defaultManager];
  v17 = 0;
  v22 = 2;
  v23 = 2147483645;
  while (1)
  {
    if ([pathExtension length])
    {
      stringByDeletingPathExtension = [destinationCopy stringByDeletingPathExtension];
      v25 = [NSString stringWithFormat:@"%@ %d", stringByDeletingPathExtension, v22];
      v26 = [v25 stringByAppendingPathExtension:pathExtension];

      v17 = v26;
    }

    else
    {
      [NSString stringWithFormat:@"%@ %d", destinationCopy, v22];
      v17 = stringByDeletingPathExtension = v17;
    }

    if (resolution != 3)
    {
      break;
    }

    v44 = 0;
    v33 = [v43 moveItemAtPath:sourceCopy toPath:v17 error:&v44];
    v32 = v44;
    if (v33)
    {
      goto LABEL_36;
    }

    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v50 = sourceCopy;
      v51 = 2112;
      v52 = v17;
      v53 = 2112;
      resolutionCopy2 = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=restorable= Failed to move from %@ to %@: %@", buf, 0x20u);
      _MBLog(@"E ", "=restorable= Failed to move from %@ to %@: %@", sourceCopy, v17, v32);
    }

    domain = [v32 domain];
    if (![domain isEqualToString:NSCocoaErrorDomain])
    {

LABEL_36:
      LODWORD(v27) = 0;
      goto LABEL_37;
    }

    code = [v32 code];

    if (code == 516)
    {
      LODWORD(v27) = 17;
    }

    else
    {
      LODWORD(v27) = 0;
    }

LABEL_37:
    if (!v32)
    {
      goto LABEL_41;
    }

    if (v27 != 17)
    {
      if (errorCopy)
      {
        v38 = v32;
        *errorCopy = v32;
      }

      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v50 = sourceCopy;
        v51 = 2112;
        v52 = destinationCopy;
        v53 = 2048;
        resolutionCopy2 = resolution;
        v55 = 2112;
        v56 = v32;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "=restorable= Failed to resolve On My iPhone file conflict from %@ to %@(%ld): %@", buf, 0x2Au);
        _MBLog(@"E ", "=restorable= Failed to resolve On My iPhone file conflict from %@ to %@(%ld): %@", sourceCopy, destinationCopy, resolution, v32);
      }

LABEL_49:
      v21 = 0;
      goto LABEL_50;
    }

    v22 = (v22 + 1);
    if (!--v23)
    {
      goto LABEL_49;
    }
  }

  if (resolution == 2)
  {
    if (!link([sourceCopy fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation")))
    {
      goto LABEL_41;
    }

    v27 = *__error();
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v50 = sourceCopy;
      v51 = 2112;
      v52 = v17;
      v53 = 1024;
      LODWORD(resolutionCopy2) = v27;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "=restorable= Failed to hardlink from %@ to %@: %{errno}d", buf, 0x1Cu);
      _MBLog(@"E ", "=restorable= Failed to hardlink from %@ to %@: %{errno}d", sourceCopy, v17, v27);
    }

    v29 = v27;
    v30 = @"Failed to hardlink file";
    goto LABEL_27;
  }

  if (resolution == 1 && clonefile([sourceCopy fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation"), 0))
  {
    v27 = *__error();
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v50 = sourceCopy;
      v51 = 2112;
      v52 = v17;
      v53 = 1024;
      LODWORD(resolutionCopy2) = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=restorable= Failed to clone from %@ to %@: %{errno}d", buf, 0x1Cu);
      _MBLog(@"E ", "=restorable= Failed to clone from %@ to %@: %{errno}d", sourceCopy, v17, v27);
    }

    v29 = v27;
    v30 = @"Failed to clone file";
LABEL_27:
    v32 = [MBError errorWithErrno:v29 format:v30];
    goto LABEL_37;
  }

LABEL_41:
  v37 = MBGetDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v50 = sourceCopy;
    v51 = 2112;
    v52 = v17;
    v53 = 2048;
    resolutionCopy2 = resolution;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=restorable= Successfully resolved On My iPhone file conflict from %@ to %@(%ld)", buf, 0x20u);
    _MBLog(@"Df", "=restorable= Successfully resolved On My iPhone file conflict from %@ to %@(%ld)", sourceCopy, v17, resolution);
  }

  v21 = v17;
LABEL_50:
  moveCopy = v42;

LABEL_51:
LABEL_52:

  return v21;
}

+ (BOOL)restore:(id)restore protectionClassToDestination:(id)destination unspecifiedDirectoryProtectionClass:(unsigned __int8)class logger:(id)logger error:(id *)error
{
  classCopy = class;
  restoreCopy = restore;
  destinationCopy = destination;
  loggerCopy = logger;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  [restoreCopy getNode:v48];
  v14 = WORD2(v49) & 0xF000;
  v15 = BYTE6(v49);
  if (v14 == 0x4000 && BYTE6(v49) == 255)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v51 = restoreCopy;
      *&v51[8] = 1024;
      *&v51[10] = classCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=restorable= Unspecified data class for %@ -> defaulting to %d", buf, 0x12u);
      _MBLog(@"I ", "=restorable= Unspecified data class for %@ -> defaulting to %d", restoreCopy, classCopy);
    }

    BYTE6(v49) = classCopy;
  }

  else
  {
    if (v14 != 0x4000 && BYTE6(v49) == 255)
    {
      v15 = 4;
      BYTE6(v49) = 4;
    }

    classCopy = v15;
    if (v14 != 0x4000 && v14 != 0x8000)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v51 = destinationCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "=restorable= Not restoring protection class for symlink at %@", buf, 0xCu);
        _MBLog(@"Db", "=restorable= Not restoring protection class for symlink at %@", destinationCopy);
      }

      goto LABEL_43;
    }
  }

  if ((classCopy & 0xFFFFFFFB) != 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v51 = classCopy;
      *&v51[4] = 2112;
      *&v51[6] = destinationCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=restorable= Restoring protection class %d at %@", buf, 0x12u);
      _MBLog(@"I ", "=restorable= Restoring protection class %d at %@", classCopy, destinationCopy);
    }
  }

  if (classCopy)
  {
    v18 = classCopy;
  }

  else
  {
    v18 = 4 * (v14 == 0x8000);
  }

  v47 = 0;
  v19 = [MBProtectionClassUtils setWithPath:destinationCopy value:v18 error:&v47];
  v20 = v47;
  if (!v19)
  {
    if (![MBProtectionClassUtils isExpectedSetProtectionClassError:v20])
    {
      v25 = MBIsInternalInstall();
      v26 = MBGetDefaultLog();
      v23 = v26;
      if (v25)
      {
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_42;
        }

        *buf = 67109634;
        *v51 = v18;
        *&v51[4] = 2112;
        *&v51[6] = destinationCopy;
        *&v51[14] = 2112;
        *&v51[16] = v20;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "=restorable= =restorable= Failed to set protection class %d at %@: %@", buf, 0x1Cu);
        v43 = destinationCopy;
        v44 = v20;
        v42 = v18;
        v27 = @"F ";
      }

      else
      {
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 67109634;
        *v51 = v18;
        *&v51[4] = 2112;
        *&v51[6] = destinationCopy;
        *&v51[14] = 2112;
        *&v51[16] = v20;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=restorable= =restorable= Failed to set protection class %d at %@: %@", buf, 0x1Cu);
        v43 = destinationCopy;
        v44 = v20;
        v42 = v18;
        v27 = @"E ";
      }

      _MBLog(v27, "=restorable= =restorable= Failed to set protection class %d at %@: %@", v42, v43, v44);
      goto LABEL_42;
    }

    if ([MBProtectionClassUtils canOpenWhenLocked:v18])
    {
      v21 = MBIsInternalInstall();
      v22 = MBGetDefaultLog();
      v23 = v22;
      if (v21)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          *v51 = v18;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "=restorable= =restorable= Unexpected device lock error for pc:%d", buf, 8u);
          v24 = @"F ";
LABEL_41:
          _MBLog(v24, "=restorable= =restorable= Unexpected device lock error for pc:%d");
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v51 = v18;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=restorable= =restorable= Unexpected device lock error for pc:%d", buf, 8u);
        v24 = @"E ";
        goto LABEL_41;
      }

LABEL_42:

      goto LABEL_43;
    }

    v46 = 0;
    v28 = [MBProtectionClassUtils getWithPath:destinationCopy error:&v46];
    v29 = v46;
    v30 = v29;
    if (v28 == 255)
    {
      if (error)
      {
        v36 = v29;
        *error = v30;
      }

      v37 = MBIsInternalInstall();
      v38 = MBGetDefaultLog();
      v39 = v38;
      if (v37)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          *v51 = destinationCopy;
          *&v51[8] = 2112;
          *&v51[10] = v30;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "=restorable= =restorable= Failed to fetch the protection class for %@: %@", buf, 0x16u);
          _MBLog(@"F ", "=restorable= =restorable= Failed to fetch the protection class for %@: %@", destinationCopy, v30);
        }
      }

      else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v51 = destinationCopy;
        *&v51[8] = 2112;
        *&v51[10] = v30;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "=restorable= =restorable= Failed to fetch the protection class for %@: %@", buf, 0x16u);
        _MBLog(@"E ", "=restorable= =restorable= Failed to fetch the protection class for %@: %@", destinationCopy, v30);
      }
    }

    else if ([MBProtectionClassUtils canOpenWhenLocked:v28])
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        *v51 = 2;
        *&v51[4] = 1024;
        *&v51[6] = v18;
        *&v51[10] = 2112;
        *&v51[12] = destinationCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=restorable= Restoring protection class %d instead of %d for: %@", buf, 0x18u);
        _MBLog(@"I ", "=restorable= Restoring protection class %d instead of %d for: %@", 2, v18, destinationCopy);
      }

      v45 = v30;
      v32 = [MBProtectionClassUtils setWithPath:destinationCopy value:2 error:&v45];
      v33 = v45;

      if (v32)
      {
        [loggerCopy logSetClassForRestorable:restoreCopy state:5 absolutePath:destinationCopy value:2];
        v34 = 1;
      }

      else
      {
        if (error)
        {
          v40 = v33;
          *error = v33;
        }

        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *v51 = 2;
          *&v51[4] = 1024;
          *&v51[6] = v18;
          *&v51[10] = 2112;
          *&v51[12] = destinationCopy;
          *&v51[20] = 2112;
          *&v51[22] = v33;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore protection class %d instead of %d at %@: %@", buf, 0x22u);
          _MBLog(@"E ", "=restorable= Failed to restore protection class %d instead of %d at %@: %@", 2, v18, destinationCopy, v33);
        }

        v34 = 0;
      }

      v30 = v33;
      goto LABEL_60;
    }

    v34 = 1;
LABEL_60:

    goto LABEL_44;
  }

  [loggerCopy logSetClassForRestorable:restoreCopy state:5 absolutePath:destinationCopy value:v18];
LABEL_43:
  v34 = 1;
LABEL_44:

  return v34;
}

+ (id)_setProtectionClass:(unsigned __int8)class withPath:(id)path
{
  classCopy = class;
  pathCopy = path;
  v6 = pathCopy;
  if (!classCopy)
  {
    v12 = 0;
    goto LABEL_25;
  }

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v22 = 0;
  v8 = [MBProtectionClassUtils getWithPathFSR:fileSystemRepresentation error:&v22];
  v9 = v22;
  if (v8 == 255)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v24 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=restorable= Failed to get current protection class: %@", buf, 0xCu);
      _MBLog(@"E ", "=restorable= Failed to get current protection class: %@", v9);
    }

    v14 = v9;
  }

  else
  {
    v10 = MBGetDefaultLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v8 == classCopy)
    {
      if (v11)
      {
        *buf = 67109378;
        *v24 = v8;
        *&v24[4] = 2080;
        *&v24[6] = fileSystemRepresentation;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=restorable= Protection class is already %d, not setting for path: %s", buf, 0x12u);
        _MBLog(@"I ", "=restorable= Protection class is already %d, not setting for path: %s", v8, fileSystemRepresentation);
      }

      v12 = 0;
      goto LABEL_24;
    }

    if (v11)
    {
      *buf = 67109634;
      *v24 = v8;
      *&v24[4] = 1024;
      *&v24[6] = classCopy;
      *&v24[10] = 2080;
      *&v24[12] = fileSystemRepresentation;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=restorable= Restoring protection class: %d -> %d for path: %s", buf, 0x18u);
      _MBLog(@"I ", "=restorable= Restoring protection class: %d -> %d for path: %s", v8, classCopy, fileSystemRepresentation);
    }

    v21 = v9;
    v15 = [MBProtectionClassUtils setWithPathFSR:fileSystemRepresentation value:classCopy error:&v21];
    v16 = v21;

    if (v15)
    {
      v12 = 0;
LABEL_23:
      v9 = v16;
      goto LABEL_24;
    }

    v17 = [MBProtectionClassUtils isExpectedSetProtectionClassError:v16];
    v18 = MBGetDefaultLog();
    v19 = v18;
    if (!v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v24 = v8;
        *&v24[4] = 1024;
        *&v24[6] = classCopy;
        *&v24[10] = 2112;
        *&v24[12] = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=restorable= Unexpected failure setting protection class %d -> %d: %@", buf, 0x18u);
        _MBLog(@"E ", "=restorable= Unexpected failure setting protection class %d -> %d: %@", v8, classCopy, v16);
      }

      v12 = [MBError errorWithCode:102 error:v16 path:v6 format:@"fcntl error"];
      goto LABEL_23;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v24 = v8;
      *&v24[4] = 1024;
      *&v24[6] = classCopy;
      *&v24[10] = 2112;
      *&v24[12] = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=restorable= Expected failure setting protection class %d -> %d: %@", buf, 0x18u);
      _MBLog(@"Df", "=restorable= Expected failure setting protection class %d -> %d: %@", v8, classCopy, v16);
    }

    v14 = v16;
  }

  v9 = v14;
  v12 = v14;
LABEL_24:

LABEL_25:

  return v12;
}

+ (id)restore:(id)restore symbolicLinkAtPath:(id)path withTarget:(id)target settingOwnershipAndFlags:(BOOL)flags
{
  restoreCopy = restore;
  pathCopy = path;
  targetCopy = target;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  [restoreCopy getNode:&v44];
  if (!pathCopy)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:334 description:@"Null path"];
  }

  if ((WORD2(v48) & 0xF000) == 0xA000)
  {
    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:335 description:@"Not a symbolic link"];

    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  v28 = +[NSAssertionHandler currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:336 description:@"Target not set for symbolic link"];

LABEL_5:
  domain = [restoreCopy domain];
  if (!domain)
  {
    v29 = +[NSAssertionHandler currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:339 description:@"Null domain"];
  }

  rootPath = [domain rootPath];
  v16 = [pathCopy isEqualToString:rootPath];

  if (v16)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      name = [domain name];
      *buf = 138412546;
      v50 = pathCopy;
      v51 = 2112;
      v52 = name;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=restorable= Cannot restore domain root %@ for %@ as symlink", buf, 0x16u);

      name2 = [domain name];
      _MBLog(@"E ", "=restorable= Cannot restore domain root %@ for %@ as symlink", pathCopy, name2);
    }

    v20 = [MBError errorWithCode:205 path:pathCopy format:@"Cannot restore domain root as symlink"];
  }

  else
  {
    if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v44 path:pathCopy])
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = pathCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        _MBLog(@"Df", "=restorable= Fixing ownership at %@", pathCopy);
      }
    }

    v43 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000F2524;
    v40[3] = &unk_1003BE6F0;
    v41 = pathCopy;
    v42 = targetCopy;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v30[2] = sub_1000F2844;
    v30[3] = &unk_1003BE718;
    flagsCopy = flags;
    v38 = v48;
    v34 = v44;
    v31 = v41;
    v32 = restoreCopy;
    v33 = 0;
    v22 = [v31 mb_openatWithMode:40960 error:&v43 setupDir:v40 itemAccessor:v30];
    v23 = v43;
    v24 = v23;
    v20 = 0;
    if ((v22 & 1) == 0)
    {
      v20 = v23;
    }
  }

  return v20;
}

+ (id)restore:(id)restore directoryAtPath:(id)path settingDataProtection:(BOOL)protection settingOwnershipAndFlags:(BOOL)flags
{
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:430 description:@"Null path"];
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  [restoreCopy getNode:&v44];
  if ((WORD2(v48) & 0xF000) != 0x4000)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:434 description:@"Not a directory"];
  }

  domain = [restoreCopy domain];
  if (!domain)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:437 description:@"Null domain"];
  }

  if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v44 path:pathCopy])
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = pathCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog(@"Df", "=restorable= Fixing ownership at %@", pathCopy);
    }
  }

  v43 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36[2] = sub_1000F30F0;
  v36[3] = &unk_1003BE740;
  v42 = v48;
  v38 = v44;
  v37 = pathCopy;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v25[2] = sub_1000F3550;
  v25[3] = &unk_1003BE768;
  v33 = v48;
  v29 = v44;
  flagsCopy = flags;
  v15 = v37;
  v26 = v15;
  v16 = restoreCopy;
  protectionCopy = protection;
  v27 = v16;
  selfCopy = self;
  v17 = [v15 mb_openatWithMode:0x4000 error:&v43 setupDir:v36 itemAccessor:v25];
  v18 = v43;
  v19 = v18;
  v20 = 0;
  if ((v17 & 1) == 0)
  {
    v20 = v18;
  }

  return v20;
}

+ (id)restore:(id)restore emptyRegularFileAtPath:(id)path settingAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:549 description:@"Null path"];
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  [restoreCopy getNode:v19];
  if ((WORD2(v22) & 0xF000) != 0x8000)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:553 description:@"Not a regular file"];
  }

  if (*(&v20 + 1))
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:554 description:@"Not empty"];
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = pathCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=restorable= Creating empty file at %@", buf, 0xCu);
    _MBLog(@"I ", "=restorable= Creating empty file at %@", pathCopy);
  }

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v13 = open_dprotected_np(fileSystemRepresentation, 1793, 4, 0, WORD2(v22));
  if (v13 < 0)
  {
    [MBError errorWithErrno:*__error() path:pathCopy format:@"open_dprotected_np error"];
  }

  else
  {
    close(v13);
    [self restore:restoreCopy regularFileAtPath:pathCopy settingAttributes:attributesCopy];
  }
  v14 = ;

  return v14;
}

+ (id)restore:(id)restore regularFileAtPath:(id)path settingAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    v41 = +[NSAssertionHandler currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:575 description:@"Null path"];
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  [restoreCopy getNode:&v46];
  if ((WORD2(v50) & 0xF000) != 0x8000)
  {
    v42 = +[NSAssertionHandler currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:579 description:@"Not a regular file"];
  }

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  if (attributesCopy)
  {
    domain = [restoreCopy domain];
    if (!domain)
    {
      v43 = +[NSAssertionHandler currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"MBRestorable.m" lineNumber:585 description:@"Null domain"];
    }

    if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v46 path:pathCopy])
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = pathCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        _MBLog(@"Df", "=restorable= Fixing ownership at %@", pathCopy);
      }
    }

    v14 = DWORD1(v46);
    v15 = DWORD2(v46);
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109634;
      *&buf[4] = v14;
      *&buf[8] = 1024;
      *&buf[10] = v15;
      *&buf[14] = 2112;
      *&buf[16] = pathCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file ownership: %d:%d at %@", buf, 0x18u);
      _MBLog(@"I ", "=restorable= Restoring regular file ownership: %d:%d at %@", v14, v15, pathCopy);
    }

    if (lchown(fileSystemRepresentation, v14, v15))
    {
      v17 = [MBError posixErrorWithCode:102 path:pathCopy format:@"lchown error"];
      goto LABEL_58;
    }
  }

  extendedAttributes = [restoreCopy extendedAttributes];
  if (!extendedAttributes)
  {
    v21 = 0;
    domain = 0;
    goto LABEL_28;
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [extendedAttributes count];
    *buf = 134218242;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = pathCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file extended attributes (%ld) at %@", buf, 0x16u);
    _MBLog(@"I ", "=restorable= Restoring regular file extended attributes (%ld) at %@", [extendedAttributes count], pathCopy);
  }

  if ((HIBYTE(v46) & 0x40) != 0)
  {
    v21 = [extendedAttributes objectForKeyedSubscript:@"com.apple.decmpfs"];
    if (v21)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
        _MBLog(@"I ", "=restorable= Not re-applying the com.apple.decmpfs xattr yet.");
      }

      v23 = [extendedAttributes mutableCopy];
      [v23 removeObjectForKey:@"com.apple.decmpfs"];

      extendedAttributes = v23;
    }
  }

  else
  {
    v21 = 0;
  }

  v45 = 0;
  v24 = [MBExtendedAttributes setAttributes:extendedAttributes forPathFSR:fileSystemRepresentation error:&v45];
  domain = v45;
  if (v24)
  {
LABEL_28:
    if (attributesCopy)
    {
      v25 = HIDWORD(v46);
      if ((WORD2(v50) & 0xF000) == 0xA000)
      {
        v26 = 0;
      }

      else
      {
        v26 = BYTE12(v46) & 0x80;
      }

      v27 = v26 | WORD6(v46) & 0x8040u;
      if (v27)
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = v27;
          *&buf[8] = 2112;
          *&buf[10] = pathCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file BSD flags: 0x%x at %@", buf, 0x12u);
          _MBLog(@"I ", "=restorable= Restoring regular file BSD flags: 0x%x at %@", v27, pathCopy);
        }

        if (lchflags(fileSystemRepresentation, v27))
        {
          v29 = *__error();
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *&buf[4] = v27;
            *&buf[8] = 2112;
            *&buf[10] = pathCopy;
            *&buf[18] = 1024;
            *&buf[20] = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore regular file BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
            _MBLog(@"E ", "=restorable= Failed to restore regular file BSD flags (0x%x) at %@: %{errno}d", v27, pathCopy, v29);
          }

          v31 = @"lchflags error";
          goto LABEL_52;
        }

        v25 = HIDWORD(v46);
      }

      if ((v25 & 0x40000000) != 0)
      {
        v44 = domain;
        v33 = sub_1000F0A08(pathCopy, v21, &v44);
        v34 = v44;

        if (!v33)
        {
          v32 = v34;
LABEL_55:
          domain = v32;
          goto LABEL_56;
        }

        domain = v34;
      }

      v35 = WORD2(v50) & 0xFFF;
      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = v35;
        *&buf[8] = 2112;
        *&buf[10] = pathCopy;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file permissions: 0%3o at %@", buf, 0x12u);
        _MBLog(@"I ", "=restorable= Restoring regular file permissions: 0%3o at %@", v35, pathCopy);
      }

      if (lchmod(fileSystemRepresentation, v35))
      {
        v31 = @"lchmod error";
LABEL_52:
        v32 = [MBError posixErrorWithCode:102 path:pathCopy format:v31];
        goto LABEL_56;
      }

      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [NSDate dateWithTimeIntervalSince1970:*(&v47 + 1)];
        *buf = 138412546;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = pathCopy;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) at %@", buf, 0x16u);

        v39 = [NSDate dateWithTimeIntervalSince1970:*(&v47 + 1)];
        _MBLog(@"I ", "=restorable= Restoring last modified time (%@) at %@", v39, pathCopy);
      }

      *buf = time(0);
      *&buf[8] = 0;
      *&buf[16] = *(&v47 + 1);
      v52 = 0;
      if (lutimes(fileSystemRepresentation, buf))
      {
        v31 = @"lutimes error";
        goto LABEL_52;
      }
    }

    v17 = [self _setProtectionClass:BYTE6(v50) withPath:pathCopy];

    if (!v17)
    {
      domain = 0;
      goto LABEL_57;
    }

    v32 = v17;
    goto LABEL_55;
  }

  v32 = [MBError errorWithCode:102 error:domain format:@"setxattr error"];
LABEL_56:
  v17 = v32;
LABEL_57:

LABEL_58:

  return v17;
}

@end