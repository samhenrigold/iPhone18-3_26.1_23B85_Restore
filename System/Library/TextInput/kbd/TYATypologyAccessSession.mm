@interface TYATypologyAccessSession
+ (id)_safeFilenameWithName:(id)name;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (TYATypologyAccessSession)initWithAuditToken:(id *)token;
- (id)_issueSandboxExtensionForURL:(id)l;
- (void)_initializeEnumerator;
- (void)nextTypologyURL:(id)l;
- (void)removeTypologyFileWithName:(id)name completion:(id)completion;
- (void)setAccessMode:(unint64_t)mode;
- (void)setAuditToken:(id *)token;
- (void)setTypologyAccessMode:(unint64_t)mode;
- (void)startEnumeration;
- (void)writeData:(id)data toTypologyFileWithName:(id)name completion:(id)completion;
@end

@implementation TYATypologyAccessSession

- (TYATypologyAccessSession)initWithAuditToken:(id *)token
{
  v8.receiver = self;
  v8.super_class = TYATypologyAccessSession;
  v4 = [(TYATypologyAccessSession *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&token->var0[4];
    *v4->_auditToken.val = *token->var0;
    *&v4->_auditToken.val[4] = v6;
    [(TYATypologyAccessSession *)v4 setAccessMode:0];
  }

  return v5;
}

- (void)setAccessMode:(unint64_t)mode
{
  if (self->_accessMode != mode)
  {
    self->_accessMode = mode;
    if (mode <= 2)
    {
      self->_typologyPreferences = objc_alloc_init(*(&off_10001C770)[mode]);

      _objc_release_x1();
    }
  }
}

- (void)_initializeEnumerator
{
  directoryEnumerator = self->_directoryEnumerator;
  self->_directoryEnumerator = 0;

  typologyPreferences = [(TYATypologyAccessSession *)self typologyPreferences];
  typologyLoggingEnabledByProfile = [typologyPreferences typologyLoggingEnabledByProfile];

  if (typologyLoggingEnabledByProfile)
  {
    typologyPreferences2 = [(TYATypologyAccessSession *)self typologyPreferences];
    typologyDirectoryURL = [typologyPreferences2 typologyDirectoryURL];

    v13[0] = NSURLNameKey;
    v13[1] = NSURLIsDirectoryKey;
    v9 = [NSArray arrayWithObjects:v13 count:2];
    v10 = [&stru_10001C750 copy];
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 enumeratorAtURL:typologyDirectoryURL includingPropertiesForKeys:v9 options:5 errorHandler:v10];
    [(TYATypologyAccessSession *)self setDirectoryEnumerator:v12];
  }

  else
  {
    typologyDirectoryURL = TYALog(v6);
    if (os_log_type_enabled(typologyDirectoryURL, OS_LOG_TYPE_ERROR))
    {
      sub_10000D014();
    }
  }
}

- (id)_issueSandboxExtensionForURL:(id)l
{
  lCopy = l;
  path = [lCopy path];
  [path fileSystemRepresentation];
  objc_msgSend_auditToken(self);
  v6 = sandbox_extension_issue_file_to_process();
  if (!v6)
  {
    v14 = TYALog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D140(lCopy, v14);
    }

    goto LABEL_12;
  }

  v7 = v6;
  v8 = [[NSString alloc] initWithBytesNoCopy:v7 length:strlen(v7) encoding:4 freeWhenDone:1];
  v9 = TYALog(v8);
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000D100();
    }

    free(v7);
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    uTF8String = [v8 UTF8String];
    lastPathComponent = [lCopy lastPathComponent];
    uTF8String2 = [lastPathComponent UTF8String];
    v16 = 136380931;
    v17 = uTF8String;
    v18 = 2081;
    v19 = uTF8String2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Issued sandbox extension (%{private}s) for typology url with name %{private}s", &v16, 0x16u);
  }

LABEL_13:

  return v8;
}

- (void)startEnumeration
{
  v3 = TYALog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Start enumeration.", v4, 2u);
  }

  [(TYATypologyAccessSession *)self _initializeEnumerator];
}

+ (id)_safeFilenameWithName:(id)name
{
  nameCopy = name;
  lastPathComponent = [nameCopy lastPathComponent];
  v5 = lastPathComponent;
  if (lastPathComponent && [lastPathComponent length] && (objc_msgSend(v5, "isEqualToString:", @"/") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"~") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @".") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"..") & 1) == 0)
  {
    if ([v5 isEqualToString:nameCopy])
    {
LABEL_8:
      v6 = v5;
      goto LABEL_15;
    }

    pathComponents = [nameCopy pathComponents];
    if ([pathComponents count] == 2 && (objc_msgSend(pathComponents, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"."), v8, v9))
    {
      lastObject = [pathComponents lastObject];
      v11 = [lastObject isEqualToString:v5];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (void)nextTypologyURL:(id)l
{
  lCopy = l;
  nextObject = 0;
  while (1)
  {
    v6 = nextObject;
    directoryEnumerator = [(TYATypologyAccessSession *)self directoryEnumerator];
    nextObject = [directoryEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    if (_isTypologyURL(nextObject))
    {
      typologyPreferences = [(TYATypologyAccessSession *)self typologyPreferences];
      isTypologyInDatavault = [typologyPreferences isTypologyInDatavault];

      if (isTypologyInDatavault)
      {
        v11 = [(TYATypologyAccessSession *)self _issueSandboxExtensionForURL:nextObject];
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v14 = TYALog(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        lastPathComponent = [nextObject lastPathComponent];
        v16 = 136380931;
        uTF8String = [lastPathComponent UTF8String];
        v18 = 2081;
        uTF8String2 = [v12 UTF8String];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "-nextTypologyURL: -> (%{private}s, %{private}s)", &v16, 0x16u);
      }

      lCopy[2](lCopy, nextObject, v12);
      goto LABEL_13;
    }
  }

  v13 = TYALog(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "-nextTypologyURL: -> ((null), (null))", &v16, 2u);
  }

  lCopy[2](lCopy, 0, 0);
LABEL_13:
}

- (void)removeTypologyFileWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = TYALog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v21 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removing typology file with name: %{private}@", buf, 0xCu);
  }

  v9 = [objc_opt_class() _safeFilenameWithName:nameCopy];
  if (v9)
  {
    typologyPreferences = [(TYATypologyAccessSession *)self typologyPreferences];
    typologyDirectoryURL = [typologyPreferences typologyDirectoryURL];
    v12 = [typologyDirectoryURL URLByAppendingPathComponent:v9 isDirectory:0];

    v13 = +[NSFileManager defaultManager];
    v19 = 0;
    v14 = [v13 removeItemAtURL:v12 error:&v19];
    v15 = v19;

    if ((v14 & 1) == 0)
    {
      v17 = TYALog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000D1DC();
      }
    }
  }

  else
  {
    v18 = TYALog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000D24C();
    }

    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:514 userInfo:0];
    v14 = 0;
  }

  completionCopy[2](completionCopy, v14, v15);
}

- (void)setTypologyAccessMode:(unint64_t)mode
{
  v5 = TYALog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Set typology access mode %lu.", &v6, 0xCu);
  }

  [(TYATypologyAccessSession *)self setAccessMode:mode];
}

- (void)writeData:(id)data toTypologyFileWithName:(id)name completion:(id)completion
{
  dataCopy = data;
  nameCopy = name;
  completionCopy = completion;
  if (TI_IS_INTERNAL_INSTALL())
  {
    v11 = [objc_opt_class() _safeFilenameWithName:nameCopy];
    if (!v11)
    {
      v26 = TYALog(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10000D24C();
      }

      v24 = [NSError errorWithDomain:NSCocoaErrorDomain code:514 userInfo:0];
      v25 = 0;
      goto LABEL_17;
    }

    typologyPreferences = [(TYATypologyAccessSession *)self typologyPreferences];
    typologyDirectoryURL = [typologyPreferences typologyDirectoryURL];
    v14 = [typologyDirectoryURL URLByAppendingPathComponent:v11];

    v16 = TYALog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Write data to typology file at url: %{private}@", buf, 0xCu);
    }

    v17 = +[NSFileManager defaultManager];
    typologyPreferences2 = [(TYATypologyAccessSession *)self typologyPreferences];
    typologyDirectoryURL2 = [typologyPreferences2 typologyDirectoryURL];
    v29 = 0;
    v20 = [v17 createDirectoryAtURL:typologyDirectoryURL2 withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v29];
    v21 = v29;

    if (v20)
    {
      v28 = v21;
      v23 = [dataCopy writeToURL:v14 options:2 error:&v28];
      v24 = v28;

      if (v23)
      {
        v25 = 1;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      v24 = v21;
    }

    v27 = TYALog(v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10000D2BC();
    }

    v25 = 0;
    goto LABEL_16;
  }

  v24 = 0;
  v25 = 0;
LABEL_18:
  completionCopy[2](completionCopy, v25, v24);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_auditToken.val = *token->var0;
  *&self->_auditToken.val[4] = v3;
}

@end