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
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  [restoreCopy getNode:&v30];
  domain = [restoreCopy domain];
  if (!domain)
  {
    sub_10009FEA0();
  }

  if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v30 path:destinationCopy])
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v36 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog(@"Df", "=restorable= Fixing ownership at %@", destinationCopy);
    }
  }

  v11 = sub_10008E61C(&v30);
  v12 = sub_10007AFEC(&v30);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v36 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=restorable= Restoring BSD flags: 0x%x", buf, 8u);
    _MBLog(@"I ", "=restorable= Restoring BSD flags: 0x%x", v13);
  }

  if (lchflags([destinationCopy fileSystemRepresentation], v13))
  {
    v15 = *__error();
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v36 = v13;
      *&v36[4] = 2112;
      *&v36[6] = destinationCopy;
      v37 = 1024;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
      _MBLog(@"E ", "=restorable= Failed to restore BSD flags (0x%x) at %@: %{errno}d", v13, destinationCopy, v15);
    }

    if (error)
    {
      [MBError posixErrorWithCode:102 path:destinationCopy format:@"lchflags error"];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_22:
    if (sub_10008E598(&v30))
    {
      extendedAttributes = [restoreCopy extendedAttributes];
      v19 = [extendedAttributes objectForKeyedSubscript:@"com.apple.decmpfs"];

      sub_10007B058(destinationCopy, v19, 0);
    }

    v20 = WORD2(v34);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v25 = v31;
    v26 = v32;
    v22[2] = sub_10007B2BC;
    v22[3] = &unk_1000FE558;
    v27 = v33;
    v28 = v34;
    v24 = v30;
    v29 = v11;
    v23 = destinationCopy;
    v17 = [v23 mb_openatWithMode:v20 error:error setupDir:v22 itemAccessor:0];
  }

  return v17;
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
    sub_10009FEFC();
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  memset(v44, 0, sizeof(v44));
  [moveCopy getNode:v44];
  if (*(&v45 + 1) == size)
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
        v49 = destinationCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=restorable= The hashes of existing file and restoring file are the same. Skip re-restoring On My iPhone file at %@", buf, 0xCu);
        _MBLog(@"Df", "=restorable= The hashes of existing file and restoring file are the same. Skip re-restoring On My iPhone file at %@", destinationCopy);
      }

      v21 = destinationCopy;
      goto LABEL_51;
    }
  }

  errorCopy = error;
  v41 = moveCopy;
  pathExtension = [destinationCopy pathExtension];
  v42 = +[NSFileManager defaultManager];
  v17 = 0;
  v22 = 2;
  while (1)
  {
    if ([pathExtension length])
    {
      stringByDeletingPathExtension = [destinationCopy stringByDeletingPathExtension];
      v24 = [NSString stringWithFormat:@"%@ %d", stringByDeletingPathExtension, v22];
      v25 = [v24 stringByAppendingPathExtension:pathExtension];

      v17 = v25;
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

    v43 = 0;
    v32 = [v42 moveItemAtPath:sourceCopy toPath:v17 error:&v43];
    v31 = v43;
    if (v32)
    {
      goto LABEL_36;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v49 = sourceCopy;
      v50 = 2112;
      v51 = v17;
      v52 = 2112;
      resolutionCopy2 = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=restorable= Failed to move from %@ to %@: %@", buf, 0x20u);
      _MBLog(@"E ", "=restorable= Failed to move from %@ to %@: %@", sourceCopy, v17, v31);
    }

    domain = [v31 domain];
    if (![domain isEqualToString:NSCocoaErrorDomain])
    {

LABEL_36:
      LODWORD(v26) = 0;
      goto LABEL_37;
    }

    code = [v31 code];

    if (code == 516)
    {
      LODWORD(v26) = 17;
    }

    else
    {
      LODWORD(v26) = 0;
    }

LABEL_37:
    if (!v31)
    {
      goto LABEL_41;
    }

    if (v26 != 17)
    {
      if (errorCopy)
      {
        v37 = v31;
        *errorCopy = v31;
      }

      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v49 = sourceCopy;
        v50 = 2112;
        v51 = destinationCopy;
        v52 = 2048;
        resolutionCopy2 = resolution;
        v54 = 2112;
        v55 = v31;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "=restorable= Failed to resolve On My iPhone file conflict from %@ to %@(%ld): %@", buf, 0x2Au);
        _MBLog(@"E ", "=restorable= Failed to resolve On My iPhone file conflict from %@ to %@(%ld): %@", sourceCopy, destinationCopy, resolution, v31);
      }

LABEL_49:
      v21 = 0;
      goto LABEL_50;
    }

    v22 = (v22 + 1);
    if (v22 == 0x7FFFFFFF)
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

    v26 = *__error();
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v49 = sourceCopy;
      v50 = 2112;
      v51 = v17;
      v52 = 1024;
      LODWORD(resolutionCopy2) = v26;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=restorable= Failed to hardlink from %@ to %@: %{errno}d", buf, 0x1Cu);
      _MBLog(@"E ", "=restorable= Failed to hardlink from %@ to %@: %{errno}d", sourceCopy, v17, v26);
    }

    v28 = v26;
    v29 = @"Failed to hardlink file";
    goto LABEL_27;
  }

  if (resolution == 1 && clonefile([sourceCopy fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation"), 0))
  {
    v26 = *__error();
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v49 = sourceCopy;
      v50 = 2112;
      v51 = v17;
      v52 = 1024;
      LODWORD(resolutionCopy2) = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=restorable= Failed to clone from %@ to %@: %{errno}d", buf, 0x1Cu);
      _MBLog(@"E ", "=restorable= Failed to clone from %@ to %@: %{errno}d", sourceCopy, v17, v26);
    }

    v28 = v26;
    v29 = @"Failed to clone file";
LABEL_27:
    v31 = [MBError errorWithErrno:v28 format:v29];
    goto LABEL_37;
  }

LABEL_41:
  v36 = MBGetDefaultLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v49 = sourceCopy;
    v50 = 2112;
    v51 = v17;
    v52 = 2048;
    resolutionCopy2 = resolution;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "=restorable= Successfully resolved On My iPhone file conflict from %@ to %@(%ld)", buf, 0x20u);
    _MBLog(@"Df", "=restorable= Successfully resolved On My iPhone file conflict from %@ to %@(%ld)", sourceCopy, v17, resolution);
  }

  v21 = v17;
LABEL_50:
  moveCopy = v41;

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
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  [restoreCopy getNode:v51];
  v14 = sub_10008E5E0(v51);
  v15 = sub_10008E5F4(v51);
  v16 = BYTE6(v52);
  if (v14 && BYTE6(v52) == 255)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v54 = restoreCopy;
      *&v54[8] = 1024;
      *&v54[10] = classCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=restorable= Unspecified data class for %@ -> defaulting to %d", buf, 0x12u);
      _MBLog(@"I ", "=restorable= Unspecified data class for %@ -> defaulting to %d", restoreCopy, classCopy);
    }

    BYTE6(v52) = classCopy;
    v16 = classCopy;
  }

  v18 = v16 != 0xFF || v14;
  if ((v18 & 1) == 0)
  {
    v16 = 4;
    BYTE6(v52) = 4;
  }

  if (!v15 && !v14)
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v54 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "=restorable= Not restoring protection class for symlink at %@", buf, 0xCu);
      _MBLog(@"Db", "=restorable= Not restoring protection class for symlink at %@", destinationCopy);
    }

    goto LABEL_47;
  }

  if ((v16 & 0xFFFFFFFB) != 0)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v54 = v16;
      *&v54[4] = 2112;
      *&v54[6] = destinationCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=restorable= Restoring protection class %d at %@", buf, 0x12u);
      _MBLog(@"I ", "=restorable= Restoring protection class %d at %@", v16, destinationCopy);
    }
  }

  if (v15)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  v50 = 0;
  v22 = [MBProtectionClassUtils setWithPath:destinationCopy value:v21 error:&v50];
  v23 = v50;
  if (!v22)
  {
    if (![MBProtectionClassUtils isExpectedSetProtectionClassError:v23])
    {
      v28 = MBIsInternalInstall();
      v29 = MBGetDefaultLog();
      v26 = v29;
      if (v28)
      {
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_46;
        }

        *buf = 67109634;
        *v54 = v21;
        *&v54[4] = 2112;
        *&v54[6] = destinationCopy;
        *&v54[14] = 2112;
        *&v54[16] = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "=restorable= =restorable= Failed to set protection class %d at %@: %@", buf, 0x1Cu);
        v46 = destinationCopy;
        v47 = v23;
        v45 = v21;
        v30 = @"F ";
      }

      else
      {
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *buf = 67109634;
        *v54 = v21;
        *&v54[4] = 2112;
        *&v54[6] = destinationCopy;
        *&v54[14] = 2112;
        *&v54[16] = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=restorable= =restorable= Failed to set protection class %d at %@: %@", buf, 0x1Cu);
        v46 = destinationCopy;
        v47 = v23;
        v45 = v21;
        v30 = @"E ";
      }

      _MBLog(v30, "=restorable= =restorable= Failed to set protection class %d at %@: %@", v45, v46, v47);
      goto LABEL_46;
    }

    if ([MBProtectionClassUtils canOpenWhenLocked:v21])
    {
      v24 = MBIsInternalInstall();
      v25 = MBGetDefaultLog();
      v26 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          *v54 = v21;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "=restorable= =restorable= Unexpected device lock error for pc:%d", buf, 8u);
          v27 = @"F ";
LABEL_45:
          _MBLog(v27, "=restorable= =restorable= Unexpected device lock error for pc:%d");
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v54 = v21;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=restorable= =restorable= Unexpected device lock error for pc:%d", buf, 8u);
        v27 = @"E ";
        goto LABEL_45;
      }

LABEL_46:

      goto LABEL_47;
    }

    v49 = 0;
    v31 = [MBProtectionClassUtils getWithPath:destinationCopy error:&v49];
    v32 = v49;
    v33 = v32;
    if (v31 == 255)
    {
      if (error)
      {
        v39 = v32;
        *error = v33;
      }

      v40 = MBIsInternalInstall();
      v41 = MBGetDefaultLog();
      v42 = v41;
      if (v40)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          *v54 = destinationCopy;
          *&v54[8] = 2112;
          *&v54[10] = v33;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "=restorable= =restorable= Failed to fetch the protection class for %@: %@", buf, 0x16u);
          _MBLog(@"F ", "=restorable= =restorable= Failed to fetch the protection class for %@: %@", destinationCopy, v33);
        }
      }

      else if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v54 = destinationCopy;
        *&v54[8] = 2112;
        *&v54[10] = v33;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "=restorable= =restorable= Failed to fetch the protection class for %@: %@", buf, 0x16u);
        _MBLog(@"E ", "=restorable= =restorable= Failed to fetch the protection class for %@: %@", destinationCopy, v33);
      }
    }

    else if ([MBProtectionClassUtils canOpenWhenLocked:v31])
    {
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        *v54 = 2;
        *&v54[4] = 1024;
        *&v54[6] = v21;
        *&v54[10] = 2112;
        *&v54[12] = destinationCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=restorable= Restoring protection class %d instead of %d for: %@", buf, 0x18u);
        _MBLog(@"I ", "=restorable= Restoring protection class %d instead of %d for: %@", 2, v21, destinationCopy);
      }

      v48 = v33;
      v35 = [MBProtectionClassUtils setWithPath:destinationCopy value:2 error:&v48];
      v36 = v48;

      if (v35)
      {
        [loggerCopy logSetClassForRestorable:restoreCopy state:5 absolutePath:destinationCopy value:2];
        v37 = 1;
      }

      else
      {
        if (error)
        {
          v43 = v36;
          *error = v36;
        }

        v44 = MBGetDefaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *v54 = 2;
          *&v54[4] = 1024;
          *&v54[6] = v21;
          *&v54[10] = 2112;
          *&v54[12] = destinationCopy;
          *&v54[20] = 2112;
          *&v54[22] = v36;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore protection class %d instead of %d at %@: %@", buf, 0x22u);
          _MBLog(@"E ", "=restorable= Failed to restore protection class %d instead of %d at %@: %@", 2, v21, destinationCopy, v36);
        }

        v37 = 0;
      }

      v33 = v36;
      goto LABEL_64;
    }

    v37 = 1;
LABEL_64:

    goto LABEL_48;
  }

  [loggerCopy logSetClassForRestorable:restoreCopy state:5 absolutePath:destinationCopy value:v21];
LABEL_47:
  v37 = 1;
LABEL_48:

  return v37;
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
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  [restoreCopy getNode:&v38];
  if (!pathCopy)
  {
    sub_10009FF28();
  }

  if (sub_10008E608(&v38))
  {
    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_10009FF84();
    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  sub_10009FFE0();
LABEL_5:
  domain = [restoreCopy domain];
  if (!domain)
  {
    sub_1000A003C();
  }

  rootPath = [domain rootPath];
  v14 = [pathCopy isEqualToString:rootPath];

  if (v14)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      name = [domain name];
      *buf = 138412546;
      v44 = pathCopy;
      v45 = 2112;
      v46 = name;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=restorable= Cannot restore domain root %@ for %@ as symlink", buf, 0x16u);

      name2 = [domain name];
      _MBLog(@"E ", "=restorable= Cannot restore domain root %@ for %@ as symlink", pathCopy, name2);
    }

    v18 = [MBError errorWithCode:205 path:pathCopy format:@"Cannot restore domain root as symlink"];
  }

  else
  {
    if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v38 path:pathCopy])
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = pathCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        _MBLog(@"Df", "=restorable= Fixing ownership at %@", pathCopy);
      }
    }

    v37 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10007CAA8;
    v34[3] = &unk_1000FE580;
    v35 = pathCopy;
    v36 = targetCopy;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v24[2] = sub_10007CDC8;
    v24[3] = &unk_1000FE5A8;
    flagsCopy = flags;
    v32 = v42;
    v28 = v38;
    v25 = v35;
    v26 = restoreCopy;
    v27 = 0;
    v20 = [v25 mb_openatWithMode:40960 error:&v37 setupDir:v34 itemAccessor:v24];
    v21 = v37;
    v22 = v21;
    v18 = 0;
    if ((v20 & 1) == 0)
    {
      v18 = v21;
    }
  }

  return v18;
}

+ (id)restore:(id)restore directoryAtPath:(id)path settingDataProtection:(BOOL)protection settingOwnershipAndFlags:(BOOL)flags
{
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000A0098();
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  [restoreCopy getNode:&v40];
  if (!sub_10008E5E0(&v40))
  {
    sub_1000A0104();
  }

  domain = [restoreCopy domain];
  if (!domain)
  {
    sub_1000A0160();
  }

  if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v40 path:pathCopy])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = pathCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog(@"Df", "=restorable= Fixing ownership at %@", pathCopy);
    }
  }

  v39 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v32[2] = sub_10007D5D8;
  v32[3] = &unk_1000FE5D0;
  v38 = v44;
  v34 = v40;
  v33 = pathCopy;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v21[2] = sub_10007DA44;
  v21[3] = &unk_1000FE5F8;
  v29 = v44;
  v25 = v40;
  flagsCopy = flags;
  v14 = v33;
  v22 = v14;
  v15 = restoreCopy;
  protectionCopy = protection;
  v23 = v15;
  selfCopy = self;
  v16 = [v14 mb_openatWithMode:0x4000 error:&v39 setupDir:v32 itemAccessor:v21];
  v17 = v39;
  v18 = v17;
  v19 = 0;
  if ((v16 & 1) == 0)
  {
    v19 = v17;
  }

  return v19;
}

+ (id)restore:(id)restore emptyRegularFileAtPath:(id)path settingAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000A01BC();
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  [restoreCopy getNode:v15];
  if (!sub_10008E5F4(v15))
  {
    sub_1000A0228();
  }

  if (*(&v16 + 1))
  {
    sub_1000A0284();
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = pathCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=restorable= Creating empty file at %@", buf, 0xCu);
    _MBLog(@"I ", "=restorable= Creating empty file at %@", pathCopy);
  }

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v12 = open_dprotected_np(fileSystemRepresentation, 1793, 4, 0, WORD2(v18));
  if (v12 < 0)
  {
    [MBError errorWithErrno:*__error() path:pathCopy format:@"open_dprotected_np error"];
  }

  else
  {
    close(v12);
    [self restore:restoreCopy regularFileAtPath:pathCopy settingAttributes:attributesCopy];
  }
  v13 = ;

  return v13;
}

+ (id)restore:(id)restore regularFileAtPath:(id)path settingAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000A02E0();
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  [restoreCopy getNode:&v41];
  if (!sub_10008E5F4(&v41))
  {
    sub_1000A034C();
  }

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  if (attributesCopy)
  {
    domain = [restoreCopy domain];
    if (!domain)
    {
      sub_1000A03A8();
    }

    if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v41 path:pathCopy])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = pathCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        _MBLog(@"Df", "=restorable= Fixing ownership at %@", pathCopy);
      }
    }

    v13 = DWORD1(v41);
    v14 = DWORD2(v41);
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109634;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v14;
      *&buf[14] = 2112;
      *&buf[16] = pathCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file ownership: %d:%d at %@", buf, 0x18u);
      _MBLog(@"I ", "=restorable= Restoring regular file ownership: %d:%d at %@", v13, v14, pathCopy);
    }

    if (lchown(fileSystemRepresentation, v13, v14))
    {
      v16 = [MBError posixErrorWithCode:102 path:pathCopy format:@"lchown error"];
      goto LABEL_54;
    }
  }

  extendedAttributes = [restoreCopy extendedAttributes];
  if (!extendedAttributes)
  {
    v20 = 0;
    domain = 0;
    goto LABEL_28;
  }

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [extendedAttributes count];
    *buf = 134218242;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = pathCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file extended attributes (%ld) at %@", buf, 0x16u);
    _MBLog(@"I ", "=restorable= Restoring regular file extended attributes (%ld) at %@", [extendedAttributes count], pathCopy);
  }

  if (sub_10008E598(&v41))
  {
    v20 = [extendedAttributes objectForKeyedSubscript:@"com.apple.decmpfs"];
    if (v20)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
        _MBLog(@"I ", "=restorable= Not re-applying the com.apple.decmpfs xattr yet.");
      }

      v22 = [extendedAttributes mutableCopy];
      [v22 removeObjectForKey:@"com.apple.decmpfs"];

      extendedAttributes = v22;
    }
  }

  else
  {
    v20 = 0;
  }

  v40 = 0;
  v23 = [MBExtendedAttributes setAttributes:extendedAttributes forPathFSR:fileSystemRepresentation error:&v40];
  domain = v40;
  if (v23)
  {
LABEL_28:
    if (attributesCopy)
    {
      v24 = sub_10007AFEC(&v41);
      if (v24)
      {
        v25 = v24;
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = v25;
          *&buf[8] = 2112;
          *&buf[10] = pathCopy;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file BSD flags: 0x%x at %@", buf, 0x12u);
          _MBLog(@"I ", "=restorable= Restoring regular file BSD flags: 0x%x at %@", v25, pathCopy);
        }

        if (lchflags(fileSystemRepresentation, v25))
        {
          v27 = *__error();
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *&buf[4] = v25;
            *&buf[8] = 2112;
            *&buf[10] = pathCopy;
            *&buf[18] = 1024;
            *&buf[20] = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore regular file BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
            _MBLog(@"E ", "=restorable= Failed to restore regular file BSD flags (0x%x) at %@: %{errno}d", v25, pathCopy, v27);
          }

          v29 = @"lchflags error";
          goto LABEL_48;
        }
      }

      if (sub_10008E598(&v41))
      {
        v39 = domain;
        v31 = sub_10007B058(pathCopy, v20, &v39);
        v32 = v39;

        if (!v31)
        {
          v30 = v32;
LABEL_51:
          domain = v30;
          goto LABEL_52;
        }

        domain = v32;
      }

      v33 = sub_10008E61C(&v41);
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = v33;
        *&buf[8] = 2112;
        *&buf[10] = pathCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file permissions: 0%3o at %@", buf, 0x12u);
        _MBLog(@"I ", "=restorable= Restoring regular file permissions: 0%3o at %@", v33, pathCopy);
      }

      if (lchmod(fileSystemRepresentation, v33))
      {
        v29 = @"lchmod error";
LABEL_48:
        v30 = [MBError posixErrorWithCode:102 path:pathCopy format:v29];
        goto LABEL_52;
      }

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [NSDate dateWithTimeIntervalSince1970:*(&v42 + 1)];
        *buf = 138412546;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = pathCopy;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) at %@", buf, 0x16u);

        v37 = [NSDate dateWithTimeIntervalSince1970:*(&v42 + 1)];
        _MBLog(@"I ", "=restorable= Restoring last modified time (%@) at %@", v37, pathCopy);
      }

      *buf = time(0);
      *&buf[8] = 0;
      *&buf[16] = *(&v42 + 1);
      v47 = 0;
      if (lutimes(fileSystemRepresentation, buf))
      {
        v29 = @"lutimes error";
        goto LABEL_48;
      }
    }

    v16 = [self _setProtectionClass:BYTE6(v45) withPath:pathCopy];

    if (!v16)
    {
      domain = 0;
      goto LABEL_53;
    }

    v30 = v16;
    goto LABEL_51;
  }

  v30 = [MBError errorWithCode:102 error:domain format:@"setxattr error"];
LABEL_52:
  v16 = v30;
LABEL_53:

LABEL_54:

  return v16;
}

@end