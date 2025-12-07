@interface __MABuiltinBrainBundle__
+ (BOOL)destageCurrent:(id *)current;
+ (BOOL)destageProposed:(id *)proposed;
+ (BOOL)stageProposed:(id)proposed error:(id *)error;
+ (void)garbageCollect;
- (BOOL)graft:(id *)graft;
- (BOOL)hasValidCurrentBootOnlyTicket;
- (BOOL)isGrafted;
- (BOOL)isGraftedPath:(id)path;
- (BOOL)isPersonalized;
- (BOOL)stageCurrent:(id *)current;
- (BOOL)ungraft:(id *)ungraft;
- (NSDictionary)brainInfo;
- (NSString)brainPath;
- (NSString)currentBootOnlyTicketPath;
- (NSString)ticketPath;
- (__MABuiltinBrainBundle__)initWithPath:(id)path;
- (unsigned)graftdmgType;
@end

@implementation __MABuiltinBrainBundle__

+ (BOOL)destageCurrent:(id *)current
{
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".current"];
  v5 = +[__MABuiltinBrainBundle__ currentTargetPath];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 removeItemAtPath:v4 error:current];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)destageProposed:(id *)proposed
{
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".proposed"];
  v5 = +[__MABuiltinBrainBundle__ proposedTargetPath];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 removeItemAtPath:v4 error:proposed];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)stageProposed:(id)proposed error:(id *)error
{
  proposedCopy = proposed;
  v5 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".proposed"];
  lastPathComponent = [proposedCopy lastPathComponent];
  v7 = sub_1000010A4(lastPathComponent, v5);

  if ((v7 & 1) == 0)
  {
    v8 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent2 = [proposedCopy lastPathComponent];
      v11 = 138412546;
      v12 = lastPathComponent2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MAB] Failed to write stagingName final path component(%@) to proposed path(%@)", &v11, 0x16u);
    }
  }

  return v7;
}

+ (void)garbageCollect
{
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:@"/private/var/MobileAsset/MobileAssetBrain"])
  {
    v22 = 0;
    v3 = [v2 removeItemAtPath:@"/private/var/MobileAsset/MobileAssetBrain" error:&v22];
    v4 = v22;
    v5 = sub_100000D90(@"Brain");
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "[MAB] Successfully removed old MobileAssetBrain installation directory";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
        v10 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v4;
      v7 = "[MAB] Error removing old MobileAssetBrain installation directory: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
      goto LABEL_7;
    }
  }

  v11 = [NSSet setWithArray:&off_10000CE90];
  v12 = [v11 mutableCopy];

  v13 = +[__MABuiltinBrainBundle__ currentTargetPath];
  lastPathComponent = [v13 lastPathComponent];

  if (lastPathComponent)
  {
    [v12 addObject:lastPathComponent];
  }

  v15 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"nil";
    if (lastPathComponent)
    {
      v16 = lastPathComponent;
    }

    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MAB] Performing MABrain garbage collection (current=%@)...", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002684;
  v19[3] = &unk_10000C3F0;
  v20 = v12;
  v21 = v2;
  v17 = v2;
  v18 = v12;
  sub_1000016C8(@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain", 0, v19);
}

- (__MABuiltinBrainBundle__)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = __MABuiltinBrainBundle__;
  v6 = [(__MABuiltinBrainBundle__ *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundlePath, path);
  }

  return v7;
}

- (BOOL)isGrafted
{
  selfCopy = self;
  graftPath = [(__MABuiltinBrainBundle__ *)self graftPath];
  LOBYTE(selfCopy) = [(__MABuiltinBrainBundle__ *)selfCopy isGraftedPath:graftPath];

  return selfCopy;
}

- (BOOL)isGraftedPath:(id)path
{
  v6[0] = 0;
  v6[1] = 0;
  v3 = fsctl([path fileSystemRepresentation], 0xC0104A66uLL, v6, 1u);
  return BYTE4(v6[0]) && v3 == 0;
}

- (BOOL)stageCurrent:(id *)current
{
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".current"];
  bundleId = [(__MABuiltinBrainBundle__ *)self bundleId];
  v6 = sub_1000010A4(bundleId, v4);

  if ((v6 & 1) == 0)
  {
    v7 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      bundleId2 = [(__MABuiltinBrainBundle__ *)self bundleId];
      v10 = 138412290;
      v11 = bundleId2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[MAB] Failed to mark bundle(%@) as current brain.", &v10, 0xCu);
    }
  }

  return v6;
}

- (BOOL)graft:(id *)graft
{
  v5 = +[NSMutableDictionary dictionary];
  graftPath = [(__MABuiltinBrainBundle__ *)self graftPath];
  cryptexPath = [(__MABuiltinBrainBundle__ *)self cryptexPath];
  v59 = 0;
  memset(&v58, 0, sizeof(v58));
  v57[0] = 0;
  v57[1] = 0;
  v104 = 0u;
  memset(v105, 0, sizeof(v105));
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v74 = xmmword_100007970;
  v75 = -1;
  v72[0] = NSFileOwnerAccountID;
  v72[1] = NSFileGroupOwnerAccountID;
  v73[0] = &off_10000CE38;
  v73[1] = &off_10000CE38;
  v72[2] = NSFilePosixPermissions;
  v73[2] = &off_10000CE50;
  v8 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:3];
  v9 = v8;
  if (!graftPath)
  {
    v53 = v8;
    v70 = NSDebugDescriptionErrorKey;
    v12 = [NSString stringWithFormat:@"graftPath is nil"];
    v71 = v12;
    v13 = &v71;
    v14 = &v70;
LABEL_7:
    v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
    v16 = 100;
    v17 = v15;
LABEL_8:
    v10 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:v16 userInfo:v17];

    v11 = 0;
    goto LABEL_9;
  }

  if (!cryptexPath)
  {
    v53 = v8;
    v68 = NSDebugDescriptionErrorKey;
    v12 = [NSString stringWithFormat:@"cryptexPath is nil"];
    v69 = v12;
    v13 = &v69;
    v14 = &v68;
    goto LABEL_7;
  }

  if ([(__MABuiltinBrainBundle__ *)self isGraftedPath:graftPath])
  {
    v10 = 0;
    v11 = 1;
    goto LABEL_26;
  }

  graftCopy = graft;
  v19 = v5;
  v20 = +[NSFileManager defaultManager];
  v21 = [v20 fileExistsAtPath:graftPath isDirectory:&v59];

  v53 = v9;
  if ((v21 & 1) == 0)
  {
    v22 = +[NSFileManager defaultManager];
    v56 = 0;
    v23 = [v22 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v9 error:&v56];
    v10 = v56;

    if (v23)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v59)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v29 = +[NSFileManager defaultManager];
  v55 = 0;
  v30 = [v29 removeItemAtPath:graftPath error:&v55];
  v10 = v55;

  if (!v30)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v31 = +[NSFileManager defaultManager];
  v54 = v10;
  v32 = [v31 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v53 error:&v54];
  v33 = v54;

  if (v32)
  {
    v10 = v33;
LABEL_16:
    v5 = v19;
    graft = graftCopy;
    if (lstat([graftPath fileSystemRepresentation], &v58))
    {
      v24 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        fileSystemRepresentation = [graftPath fileSystemRepresentation];
        *buf = 136315138;
        v63 = fileSystemRepresentation;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[MAB] Could not lstat %s", buf, 0xCu);
      }

      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];

      v66[0] = NSDebugDescriptionErrorKey;
      v66[1] = NSUnderlyingErrorKey;
      v67[0] = @"lstat failed";
      v67[1] = v15;
      v66[2] = @"graftPath";
      v67[2] = graftPath;
      v26 = v67;
      v27 = v66;
      v28 = 3;
LABEL_51:
      v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v27 count:v28];
      v16 = 104;
      v17 = v12;
      goto LABEL_8;
    }

    if ([(__MABuiltinBrainBundle__ *)self isPersonalized]|| [(__MABuiltinBrainBundle__ *)self isGloballySigned])
    {
      cryptexPath2 = [(__MABuiltinBrainBundle__ *)self cryptexPath];
      v36 = open([cryptexPath2 fileSystemRepresentation], 0);

      if (v36 < 0)
      {
        [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
        cryptexPath3 = [(__MABuiltinBrainBundle__ *)self cryptexPath];
        [v5 setObject:cryptexPath3 forKeyedSubscript:@"path"];

LABEL_45:
        v44 = sub_100000D90(@"Brain");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          fileSystemRepresentation2 = [cryptexPath fileSystemRepresentation];
          fileSystemRepresentation3 = [graftPath fileSystemRepresentation];
          *buf = 136315394;
          v63 = fileSystemRepresentation2;
          v64 = 2080;
          v65 = fileSystemRepresentation3;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[MAB] Could not graft %s to %s", buf, 0x16u);
        }

        v47 = *__error();
        if ([v5 count])
        {
          v48 = v5;
        }

        else
        {
          v48 = 0;
        }

        v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v47 userInfo:v48];

        v60[0] = NSDebugDescriptionErrorKey;
        v60[1] = NSUnderlyingErrorKey;
        v61[0] = @"graft failed";
        v61[1] = v15;
        v60[2] = @"cryptexPath";
        v60[3] = @"graftPath";
        v61[2] = cryptexPath;
        v61[3] = graftPath;
        v26 = v61;
        v27 = v60;
        v28 = 4;
        goto LABEL_51;
      }

      ticketPath = [(__MABuiltinBrainBundle__ *)self ticketPath];
      v51 = open([ticketPath fileSystemRepresentation], 0);
      if (v51 < 0)
      {
        [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
        [v5 setObject:ticketPath forKeyedSubscript:@"path"];
        v41 = -1;
      }

      else
      {
        v50 = v36;
        v38 = sub_100000D90(@"Brain");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = ticketPath;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[MAB] Found MA brain ticket: %@", buf, 0xCu);
        }

        v49 = ticketPath;

        rootHashPath = [(__MABuiltinBrainBundle__ *)self rootHashPath];
        v40 = open([rootHashPath fileSystemRepresentation], 0);

        if (v40 < 0)
        {
          [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
          rootHashPath2 = [(__MABuiltinBrainBundle__ *)self rootHashPath];
          [v5 setObject:rootHashPath2 forKeyedSubscript:@"path"];

          v41 = -1;
        }

        else
        {
          DWORD2(v74) = v51;
          v75 = v40;
          *&v76 = 16;
          [graftPath fileSystemRepresentation];
          [(__MABuiltinBrainBundle__ *)self graftdmgType];
          v41 = graftdmg();
          if (v41)
          {
            [v5 setObject:@"graftdmg()" forKeyedSubscript:@"syscall"];
            [v5 setObject:v49 forKeyedSubscript:@"path"];
          }

          close(v40);
        }

        close(v51);
        v36 = v50;
        ticketPath = v49;
      }

      close(v36);
    }

    else
    {
      v57[0] = v58.st_ino;
      v41 = fsctl([cryptexPath fileSystemRepresentation], 0x80104A63uLL, v57, 0);
    }

    if (!v41)
    {
      v12 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v63 = cryptexPath;
        v64 = 2112;
        v65 = graftPath;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully grafted %@ onto %@", buf, 0x16u);
      }

      v11 = 1;
LABEL_9:

      if (graft)
      {
        goto LABEL_10;
      }

LABEL_25:
      v9 = v53;
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v11 = 0;
  v10 = v33;
LABEL_24:
  v5 = v19;
  graft = graftCopy;
  if (!graftCopy)
  {
    goto LABEL_25;
  }

LABEL_10:
  v9 = v53;
  if (v10)
  {
    v18 = v10;
    *graft = v10;
  }

LABEL_26:

  return v11;
}

- (BOOL)ungraft:(id *)ungraft
{
  v5 = +[NSMutableDictionary dictionary];
  graftPath = [(__MABuiltinBrainBundle__ *)self graftPath];
  v22 = 0;
  if (graftPath)
  {
    if ([(__MABuiltinBrainBundle__ *)self isGraftedPath:graftPath])
    {
      if (&_ungraftdmg)
      {
        if (sub_100001B34())
        {
          v22 = 2;
          [v5 setObject:@"UNGRAFTDMG_NOFORCE" forKeyedSubscript:@"ungraft_param"];
        }

        [graftPath fileSystemRepresentation];
        v11 = ungraftdmg();
        v12 = @"ungraftdmg()";
      }

      else
      {
        v11 = fsctl([graftPath fileSystemRepresentation], 0x80084A64uLL, &v22, 0);
        v12 = @"fsctl()";
      }

      v13 = sub_100000D90(@"Brain");
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          fileSystemRepresentation = [graftPath fileSystemRepresentation];
          *buf = 136315138;
          v24 = fileSystemRepresentation;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[MAB] Could not ungraft %s", buf, 0xCu);
        }

        [v5 setObject:v12 forKeyedSubscript:@"syscall"];
        v16 = *__error();
        if ([v5 count])
        {
          v17 = v5;
        }

        else
        {
          v17 = 0;
        }

        v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:v17];
        v27[0] = NSDebugDescriptionErrorKey;
        v27[1] = NSUnderlyingErrorKey;
        v28[0] = @"ungraft failed";
        v28[1] = v8;
        v27[2] = @"graftPath";
        v28[2] = graftPath;
        v7 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
        v9 = 105;
        v10 = v7;
        goto LABEL_16;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = graftPath;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully ungrafted %@ from the file system using %@", buf, 0x16u);
      }
    }

    v18 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  v29 = NSDebugDescriptionErrorKey;
  v7 = [NSString stringWithFormat:@"graftPath is nil"];
  v30 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v9 = 100;
  v10 = v8;
LABEL_16:
  v18 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:v9 userInfo:v10];

  v19 = 0;
  if (ungraft && v18)
  {
    v20 = v18;
    v19 = 0;
    *ungraft = v18;
  }

LABEL_23:

  return v19;
}

- (BOOL)isPersonalized
{
  v3 = +[NSFileManager defaultManager];
  ticketPath = [(__MABuiltinBrainBundle__ *)self ticketPath];
  v5 = [v3 fileExistsAtPath:ticketPath];

  return v5;
}

- (BOOL)hasValidCurrentBootOnlyTicket
{
  currentBootOnlyTicketPath = [(__MABuiltinBrainBundle__ *)self currentBootOnlyTicketPath];
  if (currentBootOnlyTicketPath)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 fileExistsAtPath:currentBootOnlyTicketPath];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)ticketPath
{
  if ([(__MABuiltinBrainBundle__ *)self hasValidCurrentBootOnlyTicket])
  {
    [(__MABuiltinBrainBundle__ *)self currentBootOnlyTicketPath];
  }

  else
  {
    [(__MABuiltinBrainBundle__ *)self primaryTicketPath];
  }

  return objc_claimAutoreleasedReturnValue();
}

- (NSString)currentBootOnlyTicketPath
{
  bundlePath = self->_bundlePath;
  v3 = sub_100001414(self, a2);
  v4 = [NSString stringWithFormat:@"cryptex1ticket.%@.der", v3];
  v5 = [(NSString *)bundlePath stringByAppendingPathComponent:v4];

  return v5;
}

- (unsigned)graftdmgType
{
  hasValidCurrentBootOnlyTicket = [(__MABuiltinBrainBundle__ *)self hasValidCurrentBootOnlyTicket];
  v3 = sub_100000D90(@"Brain");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (hasValidCurrentBootOnlyTicket)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MAB] Using GRAFTDMG_CRYPTEX_PDI_NONCE", buf, 2u);
    }

    v5 = 6;
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MAB] Using GRAFTDMG_CRYPTEX_BOOT", v7, 2u);
    }

    v5 = 1;
  }

  return v5;
}

- (NSString)brainPath
{
  graftPath = [(__MABuiltinBrainBundle__ *)self graftPath];
  v3 = [graftPath stringByAppendingPathComponent:@"/usr/lib/libmobileassetd.dylib"];

  return v3;
}

- (NSDictionary)brainInfo
{
  v2 = [(NSString *)self->_bundlePath stringByAppendingPathComponent:@"MobileAssetBrain.plist"];
  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];

  return v3;
}

@end