@interface NSURL(BRCPathAdditions)
+ (id)brc_ciconiaDumpDirForCurrentPersona;
+ (id)brc_ciconiaWorkDirForCurrentPersona;
+ (id)brc_fileURLWithFileDescriptor:()BRCPathAdditions;
+ (id)brc_fileURLWithVolumeDeviceID:()BRCPathAdditions fileID:isDirectory:withError:;
+ (void)brc_ciconiaWorkDirForCurrentPersona;
- (BOOL)brc_isDirectory:()BRCPathAdditions isExists:withError:;
- (id)brc_appBundleID;
- (id)brc_appContainerID;
- (id)brc_issueSandboxExtensionOfClass:()BRCPathAdditions error:;
@end

@implementation NSURL(BRCPathAdditions)

+ (id)brc_fileURLWithFileDescriptor:()BRCPathAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = xmmword_1AE33DF58;
  v13 = 0;
  memset(v20, 0, 512);
  if (fgetattrlist(a3, &v12, v20, 0x410uLL, 0x20u) < 0)
  {
    v7 = *__error();
    v8 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_fileURLWithFileDescriptor:]", 40);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      *buf = 67109634;
      v15 = a3;
      v16 = 1024;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] fgetattrlist(%d) failed %{errno}d%@", buf, 0x18u);
    }

    v10 = __error();
    v6 = 0;
    *v10 = v7;
  }

  else
  {
    v4 = SDWORD2(v20[0]);
    v5 = objc_alloc(MEMORY[0x1E695DFF8]);
    v6 = [v5 initFileURLWithFileSystemRepresentation:v20 + v4 + 8 isDirectory:(WORD2(v20[0]) & 0xF000) == 0x4000 relativeToURL:0];
  }

  return v6;
}

+ (id)brc_fileURLWithVolumeDeviceID:()BRCPathAdditions fileID:isDirectory:withError:
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a4;
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  if (fsgetpath(v16, 0x400uLL, &v15, unsignedLongLongValue) < 0)
  {
    if (a6)
    {
      br_errorFromErrno = [MEMORY[0x1E696ABC0] br_errorFromErrno];
      v13 = br_errorFromErrno;
      v11 = 0;
      *a6 = br_errorFromErrno;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v16 isDirectory:a5 relativeToURL:0];
  }

  return v11;
}

- (id)brc_issueSandboxExtensionOfClass:()BRCPathAdditions error:
{
  v28 = *MEMORY[0x1E69E9840];
  path = [self path];
  [path fileSystemRepresentation];
  v8 = sandbox_extension_issue_file();

  if (v8)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:strlen(v8) + 1 freeWhenDone:1];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *__error();
    path2 = [self path];
    v13 = __error();
    v14 = [v10 br_errorWithPOSIXCode:v11 description:{@"couldn't issue sandbox extension %s for '%@': %s", a3, path2, strerror(*v13)}];

    if (v14)
    {
      v15 = brc_bread_crumbs("[NSURL(BRCPathAdditions) brc_issueSandboxExtensionOfClass:error:]", 82);
      v16 = brc_default_log(0, 0);
      if (os_log_type_enabled(v16, 0x90u))
      {
        v19 = "(passed to caller)";
        *buf = 136315906;
        v21 = "[NSURL(BRCPathAdditions) brc_issueSandboxExtensionOfClass:error:]";
        v22 = 2080;
        if (!a4)
        {
          v19 = "(ignored by caller)";
        }

        v23 = v19;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a4)
    {
      v17 = v14;
      *a4 = v14;
    }

    v9 = 0;
  }

  return v9;
}

+ (id)brc_ciconiaWorkDirForCurrentPersona
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  br_personaID = [currentPersona br_personaID];
  v3 = [br_personaID isEqual:@"__defaultPersonaID__"];

  if (v3)
  {
    path = _getCloudDocsAppSupportURL();
    v5 = [path URLByAppendingPathComponent:@"ciconia"];
    goto LABEL_14;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.iCloudDrive"];
  path = [v7 path];

  if (!path)
  {
    [@"group.com.apple.iCloudDrive" UTF8String];
    v8 = container_create_or_lookup_path_for_current_user();
    if (!v8)
    {
      v10 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_ciconiaWorkDirForCurrentPersona]", 117);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v17 = 1;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] container_create_or_lookup_path_for_current_user() failed with %llu%@", buf, 0x16u);
      }

      goto LABEL_10;
    }

    v9 = v8;
    path = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    free(v9);
    if (!path)
    {
LABEL_10:
      v12 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_ciconiaWorkDirForCurrentPersona]", 125);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[(NSURL(BRCPathAdditions) *)currentPersona];
      }

      path = 0;
    }
  }

  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
  v5 = [v14 URLByAppendingPathComponent:@"ciconia"];

LABEL_14:

  return v5;
}

+ (id)brc_ciconiaDumpDirForCurrentPersona
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  br_personaID = [currentPersona br_personaID];
  v3 = [br_personaID isEqual:@"__defaultPersonaID__"];

  if (v3)
  {
    v4 = _getCloudDocsAppSupportURL();
    v5 = [v4 URLByAppendingPathComponent:@"session/ciconia_diagnose"];
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.CloudDocs"];
    path = [v7 path];

    if (!path)
    {
      [@"group.com.apple.CloudDocs" UTF8String];
      v9 = container_create_or_lookup_path_for_current_user();
      if (v9)
      {
        v10 = v9;
        path = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
        free(v10);
      }

      else
      {
        v11 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_ciconiaDumpDirForCurrentPersona]", 147);
        v12 = brc_default_log(1, 0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v16 = 1;
          v17 = 2112;
          v18 = v11;
          _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] container_create_or_lookup_path_for_current_user() failed with %llu%@", buf, 0x16u);
        }

        path = 0;
      }
    }

    v4 = [path stringByAppendingPathComponent:@"Library/Application Support/CloudDocs"];

    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v5 = [v13 URLByAppendingPathComponent:@"session/ciconia_diagnose"];
  }

  return v5;
}

- (BOOL)brc_isDirectory:()BRCPathAdditions isExists:withError:
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  path = [self path];
  v9 = fstatat(-1, [path fileSystemRepresentation], &v17, 32);

  if (v9 < 0)
  {
    if (*__error() == 2)
    {
      return 1;
    }

    else
    {
      br_errorFromErrno = [MEMORY[0x1E696ABC0] br_errorFromErrno];
      v10 = br_errorFromErrno == 0;
      if (br_errorFromErrno)
      {
        v12 = brc_bread_crumbs("[NSURL(BRCPathAdditions) brc_isDirectory:isExists:withError:]", 170);
        v13 = brc_default_log(0, 0);
        if (os_log_type_enabled(v13, 0x90u))
        {
          v16 = "(passed to caller)";
          *buf = 136315906;
          v19 = "[NSURL(BRCPathAdditions) brc_isDirectory:isExists:withError:]";
          v20 = 2080;
          if (!a5)
          {
            v16 = "(ignored by caller)";
          }

          v21 = v16;
          v22 = 2112;
          v23 = br_errorFromErrno;
          v24 = 2112;
          v25 = v12;
          _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a5)
      {
        v14 = br_errorFromErrno;
        *a5 = br_errorFromErrno;
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = (v17.st_mode & 0xF000) == 0x4000;
    }

    v10 = 1;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v10;
}

- (id)brc_appBundleID
{
  lastPathComponent = [self lastPathComponent];
  v2 = extensionInFilename([lastPathComponent fileSystemRepresentation]);

  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    v2 = [MEMORY[0x1E696AEC0] brc_applicationBundleIDForExtension:v3];
  }

  return v2;
}

- (id)brc_appContainerID
{
  lastPathComponent = [self lastPathComponent];
  v2 = extensionInFilename([lastPathComponent fileSystemRepresentation]);

  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    v2 = [MEMORY[0x1E696AEC0] brc_applicationContainerIDForExtension:v3];
  }

  return v2;
}

+ (void)brc_ciconiaWorkDirForCurrentPersona
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Unable to retrieve base path for current persona : %@%@", &v3, 0x16u);
}

@end