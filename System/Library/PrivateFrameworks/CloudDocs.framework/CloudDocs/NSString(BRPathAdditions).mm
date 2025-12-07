@interface NSString(BRPathAdditions)
+ (id)br_accountSessionOpenErrorInfoPath;
+ (id)br_badFilenameAlternativeName;
+ (id)br_corruptedDBInfoPath;
+ (id)br_currentPersonaIDWithIsDataSeparated:()BRPathAdditions;
+ (id)br_emptyFilenameAlternativeName;
+ (id)br_pathForDirectory:()BRPathAdditions;
+ (id)br_pathWithDeviceID:()BRPathAdditions fileID:;
+ (id)br_personaGroupDirForFPFS:()BRPathAdditions;
+ (id)br_reimportDomainErrorInfoPath;
+ (id)br_representableHFSFileNameWithBase:()BRPathAdditions suffix:extension:makeDotFile:;
- (BOOL)_br_isExcludedWithMaximumDepth:()BRPathAdditions inFPFS:isFile:;
- (BOOL)br_isDocumentTooLargeForUpload:()BRPathAdditions maxUploadDocumentSize:;
- (BOOL)br_isInPackage;
- (BOOL)br_isPackageRoot;
- (__CFString)br_pathRelativeToPath:()BRPathAdditions;
- (char)br_pathExtension;
- (const)br_fileSystemRepresentation;
- (id)_br_nameWithAddedExtension:()BRPathAdditions makeDotFile:;
- (id)br_displayFilenameWithExtensionHidden:()BRPathAdditions;
- (id)br_pathOfPackageRoot;
- (id)br_pathRelativeToDirectory:()BRPathAdditions;
- (id)br_pathRelativeToPackageRoot;
- (id)br_realpathKeepingLastSymlink;
- (id)br_representableHFSFileNameWithNumber:()BRPathAdditions addedExtension:makeDotFile:;
- (id)br_sideFaultPath;
- (id)brc_representableHFSFileNameWithSuffix:()BRPathAdditions addedExtension:makeDotFile:;
- (id)brc_stringByDeletingPathExtension;
- (id)removingROSPPrefix;
- (uint64_t)_br_pathSafeFileSystemRepresentationWithDefaultValue:()BRPathAdditions;
- (uint64_t)br_filenameSafeFileSystemRepresentation;
- (uint64_t)br_isExcludedButPreservedAtLogOutWithFilenames:()BRPathAdditions extensions:;
- (void)br_isAbsolutePath;
- (void)br_pathSafeFileSystemRepresentation;
- (void)br_realpathKeepingLastSymlink;
@end

@implementation NSString(BRPathAdditions)

+ (id)br_badFilenameAlternativeName
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v2 = [@"tmp-bad-filename-" stringByAppendingString:uUIDString];

  return v2;
}

- (BOOL)br_isPackageRoot
{
  v2 = offsetOfPackageRootFilenameInPath(self, 0);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = ([self fileSystemRepresentation] + v2);
  do
  {
    v5 = *v3++;
    v4 = v5;
  }

  while (v5 == 47);
  return v4 == 0;
}

- (char)br_pathExtension
{
  if (![self length])
  {
    goto LABEL_5;
  }

  v2 = extensionInFilename([self fileSystemRepresentation]);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = strlen(v2);
  if (v4)
  {
    v5 = v4;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [defaultManager stringWithFileSystemRepresentation:v3 length:v5];
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

LABEL_6:

  return v3;
}

- (id)brc_stringByDeletingPathExtension
{
  br_pathSafeFileSystemRepresentation = [self br_pathSafeFileSystemRepresentation];
  if (!br_pathSafeFileSystemRepresentation)
  {
    br_pathSafeFileSystemRepresentation = [self UTF8String];
  }

  v3 = extensionInFilename(br_pathSafeFileSystemRepresentation);
  if (v3)
  {
    v4 = v3;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    selfCopy = [defaultManager stringWithFileSystemRepresentation:br_pathSafeFileSystemRepresentation length:&v4[~br_pathSafeFileSystemRepresentation]];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)br_displayFilenameWithExtensionHidden:()BRPathAdditions
{
  selfCopy = self;
  v5 = selfCopy;
  if (a3)
  {
    brc_stringByDeletingPathExtension = [selfCopy brc_stringByDeletingPathExtension];

    v5 = brc_stringByDeletingPathExtension;
  }

  v7 = [v5 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

  return v7;
}

- (BOOL)br_isDocumentTooLargeForUpload:()BRPathAdditions maxUploadDocumentSize:
{
  v4 = a4;
  v53[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    selfCopy = self;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:selfCopy];
    v9 = *MEMORY[0x1E695DB50];
    v53[0] = *MEMORY[0x1E695DB78];
    v53[1] = v9;
    v35 = v9;
    v10 = *MEMORY[0x1E695DBB8];
    v53[2] = *MEMORY[0x1E695DBB8];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __fileSystemSizeForDirectoryAtPath_block_invoke;
    v44[3] = &unk_1E7A154A0;
    v31 = selfCopy;
    v32 = defaultManager;
    v45 = v31;
    v12 = [defaultManager enumeratorAtURL:v8 includingPropertiesForKeys:v11 options:0 errorHandler:v44];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v14)
    {
      v15 = v14;
      v36 = 0;
      v16 = *v41;
      v34 = v10;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          v39 = 0;
          v19 = [v18 getResourceValue:&v39 forKey:v10 error:0];
          v20 = v39;
          v21 = v20;
          if (v19 && [v20 BOOLValue])
          {
            v37 = 0;
            v38 = 0;
            v22 = [v18 getResourceValue:&v38 forKey:v35 error:&v37];
            v23 = v38;
            v24 = v37;
            if ((v22 & 1) == 0)
            {
              v25 = brc_bread_crumbs("fileSystemSizeForDirectoryAtPath", 241);
              v26 = brc_default_log(0, 0);
              if (os_log_type_enabled(v26, 0x90u))
              {
                *buf = 138412802;
                v47 = v18;
                v48 = 2112;
                v49 = v24;
                v50 = 2112;
                v51 = v25;
                _os_log_error_impl(&dword_1AE2A9000, v26, 0x90u, "[ERROR] couldn't get fileSize for url %@: %@%@", buf, 0x20u);
              }

              v10 = v34;
            }

            v36 += [v23 integerValue];
          }

          else
          {
            v23 = 0;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v15);
    }

    else
    {
      v36 = 0;
    }

    v4 = a4;
    fileSize = v36;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = [defaultManager2 attributesOfItemAtPath:self error:0];
    fileSize = [v28 fileSize];
  }

  return fileSize > v4;
}

- (uint64_t)br_isExcludedButPreservedAtLogOutWithFilenames:()BRPathAdditions extensions:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  lastPathComponent = [self lastPathComponent];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = 1;
        if (![lastPathComponent compare:*(*(&v24 + 1) + 8 * i) options:1])
        {
          br_pathExtension = v9;
          goto LABEL_23;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  br_pathExtension = [lastPathComponent br_pathExtension];
  if (br_pathExtension)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = v7;
    v14 = [v16 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v17 = *v21;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v16);
          }

          if (![br_pathExtension compare:*(*(&v20 + 1) + 8 * j) options:{1, v20}])
          {
            v14 = 1;
            goto LABEL_21;
          }
        }

        v14 = [v16 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    v14 = 0;
  }

LABEL_23:

  return v14;
}

- (BOOL)_br_isExcludedWithMaximumDepth:()BRPathAdditions inFPFS:isFile:
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  if (![self length])
  {
    v11 = 0;
    goto LABEL_67;
  }

  v9 = [self _br_pathSafeFileSystemRepresentationWithDefaultValue:self];
  v10 = v31;
  if (__strlcpy_chk() > 0x3FF)
  {
    v10 = strdup(v9);
    __stringp = v10;
    if (!v10)
    {
      v11 = 0;
LABEL_63:
      if (a4)
      {
        v11 = fpfs_path_is_safe_save_temp_file_ext() != 0;
      }

      goto LABEL_65;
    }
  }

  else
  {
    __stringp = v31;
  }

  v28 = a4;
  v12 = 0;
  v13 = "/";
  v14 = ".DS_Store";
  v15 = "(A Document Being Saved";
  v16 = ".nosync";
  v29 = a3;
  do
  {
    v17 = strsep(&__stringp, v13);
    if (!_CFURLCStringIsPromiseName())
    {
      if (!strcmp(v17, v14))
      {
        goto LABEL_59;
      }

      if (!strncmp(v17, v15, 0x17uLL))
      {
        goto LABEL_59;
      }

      if (strcasestr(v17, v16))
      {
        goto LABEL_59;
      }

      if (!strcmp(v17, ".ubd"))
      {
        goto LABEL_59;
      }

      if (strstr(v17, ".weakpkg"))
      {
        goto LABEL_59;
      }

      if (!strcasecmp(v17, "tmp"))
      {
        goto LABEL_59;
      }

      if (!strcasecmp(v17, ".tmp"))
      {
        goto LABEL_59;
      }

      if (++v12 > a3 || !strcasecmp(v17, "Thumbs.db") || !strcasecmp(v17, "desktop.ini"))
      {
        goto LABEL_59;
      }

      v18 = v13;
      v19 = v16;
      v20 = v15;
      v21 = v14;
      v22 = *v17;
      if (v22 == 46)
      {
        if (v17[1] == 126)
        {
          goto LABEL_61;
        }
      }

      else if (v22 == 126 && v17[1] == 36)
      {
LABEL_61:
        v11 = 1;
        goto LABEL_65;
      }

      if (!strcasecmp(v17, "Microsoft User Data") || !strcasecmp(v17, "$RECYCLE.BIN") || !strcasecmp(v17, "iPhoto Library") || !strcasecmp(v17, "Dropbox") || !strcasecmp(v17, "OneDrive") || !strcasecmp(v17, "IDrive-Sync") || !strcasecmp(v17, ".dropbox") || !strcasecmp(v17, ".dropbox.attr") || !strcasecmp(v17, "icon\r"))
      {
        goto LABEL_61;
      }

      v23 = extensionInFilename(v17);
      if (!v23 || (v24 = v23, (v25 = strlen(v23)) == 0))
      {
        v15 = v20;
        v16 = v19;
        v13 = v18;
        a3 = v29;
        continue;
      }

      v26 = v25;
      if (!strcasecmp(v24, "tmp") || !strcasecmp(v24, "photoslibrary") || !strcasecmp(v24, "photolibrary") || !strcasecmp(v24, "aplibrary") || !strcasecmp(v24, "migratedaplibrary") || !strcasecmp(v24, "migratedphotolibrary") || !strcasecmp(v24, "migratedaperturelibrary") || v26 != 1 && v24[v26 - 1] == 126 && !v24[v26])
      {
        goto LABEL_61;
      }

      if (*v24 == 115 && v24[1] == 98 && v26 == 18 && v24[2] == 45)
      {
        if (v24[11] == 45)
        {
          goto LABEL_61;
        }
      }

      else if (v26 == 3 && *v17 == 46 && *v24 == 30579 && v24[2] > 111)
      {
        goto LABEL_61;
      }

      v14 = v21;
      v15 = v20;
      v16 = v19;
      v13 = v18;
      a3 = v29;
      if (!strcasecmp(v24, "pkpass"))
      {
        break;
      }
    }
  }

  while (__stringp);
  v17 = 0;
LABEL_59:
  v11 = v17 != 0;
  a4 = v28;
  if (!v17)
  {
    goto LABEL_63;
  }

LABEL_65:
  if (v10 != v31)
  {
    free(v10);
  }

LABEL_67:
  objc_autoreleasePoolPop(v8);
  return v11;
}

- (BOOL)br_isInPackage
{
  v2 = offsetOfPackageRootFilenameInPath(self, 0);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = ([self fileSystemRepresentation] + v2);
  do
  {
    v5 = *v3++;
    v4 = v5;
  }

  while (v5 == 47);
  return v4 != 0;
}

- (id)br_pathOfPackageRoot
{
  v3 = 0;
  offsetOfPackageRootFilenameInPath(self, &v3);
  v1 = v3;

  return v1;
}

- (id)br_pathRelativeToPackageRoot
{
  v2 = offsetOfPackageRootFilenameInPath(self, 0);
  if (v2 < 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    fileSystemRepresentation = [self fileSystemRepresentation];
    v5 = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:fileSystemRepresentation + v3];
  }

  return v5;
}

- (id)removingROSPPrefix
{
  if ([self hasPrefix:@"/System/Volumes/Data"])
  {
    selfCopy = [self substringFromIndex:{objc_msgSend(@"/System/Volumes/Data", "length")}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (__CFString)br_pathRelativeToPath:()BRPathAdditions
{
  removingROSPPrefix = [a3 removingROSPPrefix];
  removingROSPPrefix2 = [self removingROSPPrefix];
  if ([removingROSPPrefix2 length])
  {
    if (![removingROSPPrefix length])
    {
      v9 = removingROSPPrefix2;
LABEL_12:
      v8 = v9;
      goto LABEL_14;
    }

    if ([removingROSPPrefix hasSuffix:@"/"])
    {
      v6 = [removingROSPPrefix substringToIndex:{objc_msgSend(removingROSPPrefix, "length") - 1}];

      removingROSPPrefix = v6;
    }

    if (![removingROSPPrefix length] || objc_msgSend(removingROSPPrefix2, "hasPrefix:", removingROSPPrefix))
    {
      v7 = [removingROSPPrefix2 length];
      if (v7 == [removingROSPPrefix length])
      {
        v8 = &stru_1F23D4ED0;
        goto LABEL_14;
      }

      if ([removingROSPPrefix2 characterAtIndex:{objc_msgSend(removingROSPPrefix, "length")}] == 47)
      {
        v9 = [removingROSPPrefix2 substringFromIndex:{objc_msgSend(removingROSPPrefix, "length") + 1}];
        goto LABEL_12;
      }
    }
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (void)br_isAbsolutePath
{
  result = [self length];
  if (result)
  {
    return ([self characterAtIndex:0] == 47);
  }

  return result;
}

- (const)br_fileSystemRepresentation
{
  if (![self length])
  {
    return ".";
  }

  selfCopy = self;

  return [selfCopy fileSystemRepresentation];
}

- (uint64_t)br_filenameSafeFileSystemRepresentation
{
  br_badFilenameAlternativeName = [MEMORY[0x1E696AEC0] br_badFilenameAlternativeName];
  v3 = [self _br_pathSafeFileSystemRepresentationWithDefaultValue:br_badFilenameAlternativeName];

  return v3;
}

- (uint64_t)_br_pathSafeFileSystemRepresentationWithDefaultValue:()BRPathAdditions
{
  v4 = a3;
  br_pathSafeFileSystemRepresentation = [self br_pathSafeFileSystemRepresentation];
  if (!br_pathSafeFileSystemRepresentation)
  {
    br_pathSafeFileSystemRepresentation = [v4 UTF8String];
  }

  return br_pathSafeFileSystemRepresentation;
}

- (id)br_realpathKeepingLastSymlink
{
  v15 = *MEMORY[0x1E69E9840];
  if (![self length])
  {
    goto LABEL_10;
  }

  memset(v14, 0, 512);
  v2 = [self _br_pathSafeFileSystemRepresentationWithDefaultValue:self];
  v12 = xmmword_1AE33DFB8;
  v13 = 0;
  if (getattrlist(v2, &v12, v14, 0x40CuLL, 0x21u) < 0)
  {
    if (*__error() == 2)
    {
      stringByDeletingLastPathComponent = [self stringByDeletingLastPathComponent];
      br_realpath = [stringByDeletingLastPathComponent br_realpath];
      lastPathComponent = [self lastPathComponent];
      v8 = [br_realpath stringByAppendingPathComponent:lastPathComponent];

      goto LABEL_12;
    }

    v9 = brc_bread_crumbs("[NSString(BRPathAdditions) br_realpathKeepingLastSymlink]", 641);
    v10 = brc_default_log(1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(NSString(BRPathAdditions) *)v2 br_realpathKeepingLastSymlink];
    }

    goto LABEL_10;
  }

  v3 = SDWORD1(v14[0]);
  if (!strcmp(v2, v14 + SDWORD1(v14[0]) + 4))
  {
LABEL_10:
    selfCopy = self;
    goto LABEL_11;
  }

  selfCopy = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v14 + v3 + 4];
LABEL_11:
  v8 = selfCopy;
LABEL_12:

  return v8;
}

+ (id)br_pathWithDeviceID:()BRPathAdditions fileID:
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  +[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:];
LABEL_3:
  v8.val[1] = 0;
  v8.val[0] = a3;
  if (fsgetpath(v9, 0x400uLL, &v8, a4) < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"/.vol/%d/%lld", a3, a4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v9];
  }
  v6 = ;

  return v6;
}

+ (id)br_emptyFilenameAlternativeName
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v2 = [@".com-apple-bird-noname-" stringByAppendingString:uUIDString];

  return v2;
}

+ (id)br_representableHFSFileNameWithBase:()BRPathAdditions suffix:extension:makeDotFile:
{
  *&v38[253] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 length];
  v13 = [v11 lengthOfBytesUsingEncoding:4];
  if (v13 < 0x33)
  {
    v15 = v13;
  }

  else
  {
    v14 = [v9 stringByAppendingPathExtension:v11];

    v15 = 0;
    v11 = 0;
    v9 = v14;
  }

  v35 = 0;
  if (v15)
  {
    v16 = ~v15;
  }

  else
  {
    v16 = 0;
  }

  v34 = a6;
  if (a6)
  {
    v36 = 46;
    if (*[v9 UTF8String] == 95)
    {
      v17 = v38;
      v37 = 46;
      v18 = 2;
    }

    else
    {
      v17 = &v37;
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
    v17 = &v36;
  }

  v19 = 255;
  if (v12)
  {
    v19 = 254 - v12;
  }

  v20 = [v9 getBytes:v17 maxLength:v19 + v16 - v18 usedLength:&v35 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v9, "length"), 0}];
  v21 = v35;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v21 + v18;
  if (!v12)
  {
LABEL_19:
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v23 = v22 + 1;
  *(&v36 + v22) = 32;
  if ([v10 getBytes:&v36 + v22 + 1 maxLength:v12 usedLength:&v35 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v10, "length"), 0}])
  {
    v22 = v35 + v23;
    goto LABEL_19;
  }

  v24 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_representableHFSFileNameWithBase:suffix:extension:makeDotFile:]", 741);
  v25 = brc_default_log(0, 0);
  if (os_log_type_enabled(v25, 0x90u))
  {
    +[NSString(BRPathAdditions) br_representableHFSFileNameWithBase:suffix:extension:makeDotFile:];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v22 = v23 + snprintf(&v36 + v23, 254 - v22, "com-apple-bird-recovered-%s", [uUIDString UTF8String]);

  if (v15)
  {
LABEL_24:
    v28 = v22 + 1;
    *(&v36 + v22) = 46;
    if ([v11 getBytes:&v36 + ++v22 maxLength:v15 usedLength:&v35 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v11, "length"), 0}])
    {
      v22 = v35 + v28;
    }
  }

LABEL_26:
  if (v22 == 1)
  {
    v30 = v34;
  }

  else
  {
    v30 = 0;
  }

  if (!v22 || v30)
  {
    br_emptyFilenameAlternativeName = [MEMORY[0x1E696AEC0] br_emptyFilenameAlternativeName];
  }

  else
  {
    br_emptyFilenameAlternativeName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v36 length:v22 encoding:4];
  }

  v32 = br_emptyFilenameAlternativeName;

  return v32;
}

- (id)brc_representableHFSFileNameWithSuffix:()BRPathAdditions addedExtension:makeDotFile:
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 length];
  v11 = [v9 length];
  if ((a5 & 1) != 0 || v10 || v11 || [self lengthOfBytesUsingEncoding:4] >= 0x100)
  {
    br_pathExtension = [self br_pathExtension];
    brc_stringByDeletingPathExtension = [self brc_stringByDeletingPathExtension];
    if (v9)
    {
      if (br_pathExtension)
      {
        v14 = [br_pathExtension stringByAppendingPathExtension:v9];

        br_pathExtension = v14;
      }

      else
      {
        br_pathExtension = v9;
      }
    }

    selfCopy = [MEMORY[0x1E696AEC0] br_representableHFSFileNameWithBase:brc_stringByDeletingPathExtension suffix:v8 extension:br_pathExtension makeDotFile:a5];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)br_representableHFSFileNameWithNumber:()BRPathAdditions addedExtension:makeDotFile:
{
  v8 = a4;
  stringValue = [a3 stringValue];
  v10 = [self brc_representableHFSFileNameWithSuffix:stringValue addedExtension:v8 makeDotFile:a5];

  return v10;
}

- (id)br_sideFaultPath
{
  stringByDeletingLastPathComponent = [self stringByDeletingLastPathComponent];
  lastPathComponent = [self lastPathComponent];
  br_sideFaultName = [lastPathComponent br_sideFaultName];
  v5 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:br_sideFaultName];

  return v5;
}

- (id)_br_nameWithAddedExtension:()BRPathAdditions makeDotFile:
{
  v6 = a3;
  v7 = [self lengthOfBytesUsingEncoding:4];
  if (v7 + a4 + [v6 length] < 0x100)
  {
    v12 = [self brc_representableHFSFileNameWithSuffix:0 addedExtension:v6 makeDotFile:a4];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v8 = [self br_stringByDeletingPathBounceNo:&v16 andPathExtension:&v15];
    v9 = v15;
    if (v9)
    {
      v10 = v9;
      v11 = [v9 stringByAppendingPathExtension:v6];
    }

    else
    {
      v11 = v6;
    }

    if (v16)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      v12 = [v8 br_representableHFSFileNameWithNumber:v13 addedExtension:v11 makeDotFile:a4];
    }

    else
    {
      v12 = [v8 br_representableHFSFileNameWithNumber:0 addedExtension:v11 makeDotFile:a4];
    }
  }

  return v12;
}

+ (id)br_pathForDirectory:()BRPathAdditions
{
  if (getuid())
  {
    if (!a3)
    {
      +[NSString(BRPathAdditions) br_pathForDirectory:];
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager URLsForDirectory:a3 inDomains:1];

    if ([v5 count] != 1)
    {
      +[NSString(BRPathAdditions) br_pathForDirectory:];
    }

    firstObject = [v5 firstObject];
    path = [firstObject path];
    br_realpath = [path br_realpath];
  }

  else
  {
    if (a3 == 14)
    {
      v9 = @"Application Support";
    }

    else if (a3 == 5)
    {
      v9 = @"Library";
    }

    else
    {
      v10 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathForDirectory:]", 862);
      v11 = brc_default_log(0, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(NSString(BRPathAdditions) *)v10 br_pathForDirectory:v11];
      }

      v9 = 0;
    }

    br_realpath = [@"/var/mobile" stringByAppendingPathComponent:v9];
  }

  return br_realpath;
}

- (id)br_pathRelativeToDirectory:()BRPathAdditions
{
  v2 = [MEMORY[0x1E696AEC0] br_pathForDirectory:?];
  v3 = [v2 stringByAppendingPathComponent:self];

  return v3;
}

+ (id)br_currentPersonaIDWithIsDataSeparated:()BRPathAdditions
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];
  if (a3)
  {
    *a3 = [currentPersona isDataSeparatedPersona];
  }

  return br_currentPersonaID;
}

+ (id)br_personaGroupDirForFPFS:()BRPathAdditions
{
  v28 = *MEMORY[0x1E69E9840];
  if ((BRCurrentProcessHasAccessToCloudDocsGroupContainers() & 1) != 0 || (v4 = -[BRDaemonConnection initUsingUserLocalDaemonTokenService]([BRDaemonConnection alloc], "initUsingUserLocalDaemonTokenService"), v5 = [v4 newSyncTokenProxy], v19 = MEMORY[0x1E69E9820], v20 = 3221225472, v21 = __55__NSString_BRPathAdditions__br_personaGroupDirForFPFS___block_invoke, v22 = &unk_1E7A14CF8, v23 = v5, v6 = v5, objc_msgSend(v6, "fetchGroupContainerPathForCurrentPersonaForFPFS:withReply:", a3, &v19), objc_msgSend(v6, "result"), v7 = objc_claimAutoreleasedReturnValue(), v23, v6, v4, !v7))
  {
    if (a3)
    {
      v8 = @"group.com.apple.iCloudDrive";
    }

    else
    {
      v8 = @"group.com.apple.CloudDocs";
    }

    [(__CFString *)v8 UTF8String:1];
    v9 = container_create_or_lookup_path_for_current_user();
    if (v9)
    {
      v10 = v9;
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      free(v10);
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_personaGroupDirForFPFS:]", 929);
      v12 = brc_default_log(1, 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v25 = v18;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] container_create_or_lookup_path_for_current_user() failed with %llu%@", buf, 0x16u);
      }
    }

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    v15 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_personaGroupDirForFPFS:]", 937);
    v16 = brc_default_log(0, 0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      +[NSString(BRPathAdditions) br_personaGroupDirForFPFS:];
    }

    v7 = 0;
  }

LABEL_15:

  return v7;
}

+ (id)br_corruptedDBInfoPath
{
  br_currentSupportDir = [MEMORY[0x1E696AEC0] br_currentSupportDir];
  v1 = [br_currentSupportDir stringByAppendingPathComponent:@"corrupted_db_info"];

  return v1;
}

+ (id)br_reimportDomainErrorInfoPath
{
  br_currentSupportDir = [MEMORY[0x1E696AEC0] br_currentSupportDir];
  v1 = [br_currentSupportDir stringByAppendingPathComponent:@"reimport_domain_error_info"];

  return v1;
}

+ (id)br_accountSessionOpenErrorInfoPath
{
  br_currentSupportDir = [MEMORY[0x1E696AEC0] br_currentSupportDir];
  v1 = [br_currentSupportDir stringByAppendingPathComponent:@"account_session_open_error_info"];

  return v1;
}

- (void)br_pathSafeFileSystemRepresentation
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)br_realpathKeepingLastSymlink
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = 136315650;
  selfCopy = self;
  v9 = 1024;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] realpath(%s) failed %{errno}d%@", &v7, 0x1Cu);
}

+ (void)br_pathWithDeviceID:()BRPathAdditions fileID:.cold.1()
{
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:]", 663);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: fileID != 0%@", v7, v8, v9, v10);
  }
}

+ (void)br_pathWithDeviceID:()BRPathAdditions fileID:.cold.2()
{
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:]", 664);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: deviceID != 0%@", v7, v8, v9, v10);
  }
}

+ (void)br_representableHFSFileNameWithBase:()BRPathAdditions suffix:extension:makeDotFile:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

+ (void)br_pathForDirectory:()BRPathAdditions .cold.1()
{
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathForDirectory:]", 870);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: directory > 0%@", v7, v8, v9, v10);
  }
}

+ (void)br_pathForDirectory:()BRPathAdditions .cold.2()
{
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathForDirectory:]", 872);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: urls.count == 1%@", v7, v8, v9, v10);
  }
}

+ (void)br_pathForDirectory:()BRPathAdditions .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown directory%@", &v2, 0xCu);
}

+ (void)br_personaGroupDirForFPFS:()BRPathAdditions .cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

@end