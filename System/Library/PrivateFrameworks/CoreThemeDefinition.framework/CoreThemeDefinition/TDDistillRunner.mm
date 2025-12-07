@interface TDDistillRunner
- (BOOL)_isDistillUnnecessaryForDocument:(id)document;
- (BOOL)runDistillWithDocumentURL:(id)l outputURL:(id)rL attemptIncremental:(BOOL)incremental forceDistill:(BOOL)distill;
- (TDDistillRunner)init;
- (id)carScratchURL;
- (void)_moveScratchToOutputPath;
- (void)_removeScratchPath;
- (void)dealloc;
@end

@implementation TDDistillRunner

- (TDDistillRunner)init
{
  v3.receiver = self;
  v3.super_class = TDDistillRunner;
  result = [(TDDistillRunner *)&v3 init];
  if (result)
  {
    result->_assetStoreVersionNumber = 17;
  }

  return result;
}

- (id)carScratchURL
{
  v10 = *MEMORY[0x277D85DE8];
  result = self->_carScratchURL;
  if (!result)
  {
    [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"CoreThemeThemeDistillXXXXXX.car"] getFileSystemRepresentation:__s maxLength:1024];
    v4 = mkstemps(__s, 4);
    v5 = strlen(__s);
    self->_carScratchURL = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], __s, v5, 0);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSend(defaultManager, "attributesOfItemAtPath:error:", -[NSURL path](self->_carScratchURL, "path"), 0)}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:420];
    [v7 setObject:v8 forKey:*MEMORY[0x277CCA180]];
    [defaultManager setAttributes:v7 ofItemAtPath:-[NSURL path](self->_carScratchURL error:{"path"), 0}];
    close(v4);
    return self->_carScratchURL;
  }

  return result;
}

- (void)_removeScratchPath
{
  carScratchURL = [(TDDistillRunner *)self carScratchURL];
  if ([carScratchURL checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];

    [defaultManager removeItemAtURL:carScratchURL error:0];
  }
}

- (void)_moveScratchToOutputPath
{
  carScratchURL = [(TDDistillRunner *)self carScratchURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([carScratchURL checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [(TDDistillRunner *)carScratchURL _moveScratchToOutputPath];
  }

  outputURL = [(TDDistillRunner *)self outputURL];
  if ([(NSURL *)outputURL checkResourceIsReachableAndReturnError:0])
  {
    [defaultManager removeItemAtURL:outputURL error:0];
  }

  v10 = 0;
  if (([defaultManager moveItemAtURL:carScratchURL toURL:outputURL error:&v10] & 1) == 0)
  {
    logger = [(TDDistillRunner *)self logger];
    path = [carScratchURL path];
    path2 = [(NSURL *)outputURL path];
    [(TDLogger *)logger logErrorWithFormat:@"move from %@ toPath: %@ failed: %@", path, path2, v10];
  }
}

- (BOOL)_isDistillUnnecessaryForDocument:(id)document
{
  outputURL = [(TDDistillRunner *)self outputURL];
  if ([(NSURL *)outputURL checkResourceIsReachableAndReturnError:0])
  {
    v5 = [[TDProMergeableCommonAssetStorage alloc] initWithPath:[(NSURL *)outputURL path]];
    checksum = [document checksum];
    if (v5 && checksum == [(CUICommonAssetStorage *)v5 associatedChecksum])
    {
      historian = [document historian];
      v8 = [historian foundDataChangesSinceDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSince1970:", -[CUICommonAssetStorage storageTimestamp](v5, "storageTimestamp"))}] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)runDistillWithDocumentURL:(id)l outputURL:(id)rL attemptIncremental:(BOOL)incremental forceDistill:(BOOL)distill
{
  incrementalCopy = incremental;
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  pathExtension = [l pathExtension];
  v32 = 0;
  [(TDDistillRunner *)self setOutputURL:rL];
  [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"CoreThemeDefinitionMigrationXXXXXX"] getFileSystemRepresentation:to maxLength:1024];
  mktemp(to);
  v12 = copyfile_state_alloc();
  v13 = copyfile([l fileSystemRepresentation], to, v12, 0x1000000u);
  copyfile_state_free(v12);
  logger = [(TDDistillRunner *)self logger];
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (v13 < 0)
  {
    [(TDLogger *)logger logErrorWithFormat:@"Unable to copy '%s' to '%s' distil failed.", fileSystemRepresentation, to];
    return 0;
  }

  [(TDLogger *)logger logInfoWithFormat:@"Distiling document '%s' to '%s.", fileSystemRepresentation, to];
  v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:to isDirectory:0 relativeToURL:0];
  v17 = [[CoreThemeDocument alloc] initWithContentsOfURL:v16 ofType:pathExtension error:&v34];
  -[CoreThemeDocument setPathToRepresentedDocument:](v17, "setPathToRepresentedDocument:", [l path]);
  if (v17)
  {
    [(CoreThemeDocument *)v17 setMinimumDeploymentVersion:[(TDDistillRunner *)self minDeploymentTarget]];
    if (![(TDDistillRunner *)self packImagesInDocument])
    {
      goto LABEL_17;
    }

    [(CoreThemeDocument *)v17 packRenditionsError:&v33];
    [-[TDPersistentDocument managedObjectContext](v17 "managedObjectContext")];
    if (v34)
    {
      goto LABEL_17;
    }

    v18 = v33;
    if (!v33)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (-[__CFString isEqualToString:](CoreThemeDefinitionErrorDomain[0], "isEqualToString:", [v34 domain]) && objc_msgSend(v34, "code") == 101)
  {
    v32 = 0;
    v16 = [CoreThemeDocument migrateDocumentAtURL:v16 ofType:pathExtension error:&v32];
    v19 = v16;
    if (v16)
    {
      v17 = [[CoreThemeDocument alloc] initWithContentsOfURL:v16 ofType:pathExtension error:&v32];
      if (v17)
      {
        -[CoreThemeDocument setPathToRepresentedDocument:](v17, "setPathToRepresentedDocument:", [l path]);
        [(CoreThemeDocument *)v17 setMinimumDeploymentVersion:[(TDDistillRunner *)self minDeploymentTarget]];
        if ([(TDDistillRunner *)self packImagesInDocument])
        {
          [(CoreThemeDocument *)v17 packRenditionsError:&v33];
          [-[TDPersistentDocument managedObjectContext](v17 "managedObjectContext")];
        }
      }

      v18 = v33;
LABEL_15:
      v34 = v18;
      goto LABEL_17;
    }

    v17 = 0;
  }

  else
  {
    v17 = 0;
    v34 = 0;
  }

LABEL_17:
  v20 = v17;
  v21 = v34;
  if (!v17 || v34)
  {
    if (!v17)
    {
      -[TDLogger logErrorWithFormat:](-[TDDistillRunner logger](self, "logger"), "logErrorWithFormat:", @"Unable to open theme definition file %@.", [l path]);
      v21 = v34;
    }

    if (v21)
    {
      logger2 = [(TDDistillRunner *)self logger];
      -[TDLogger logErrorWithFormat:](logger2, "logErrorWithFormat:", @"Error: %@\n", [v34 localizedDescription]);
      userInfo = [v34 userInfo];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __87__TDDistillRunner_runDistillWithDocumentURL_outputURL_attemptIncremental_forceDistill___block_invoke;
      v31[3] = &unk_278EBB608;
      v31[4] = self;
      [userInfo enumerateKeysAndObjectsUsingBlock:v31];
    }
  }

  else
  {
    [CoreThemeDocument _addThemeDocument:v17];
    if (!distill && [(TDDistillRunner *)self _isDistillUnnecessaryForDocument:v17])
    {
      [(TDLogger *)[(TDDistillRunner *)self logger] logInfoWithFormat:@"No changes to distill."];

      return 1;
    }

    rLCopy = [(TDDistillRunner *)self carScratchURL];
    v26 = rLCopy;
    if (incrementalCopy)
    {
      rLCopy = rL;
    }

    path = [rLCopy path];

    self->_distiller = 0;
    v28 = [[TDDistiller alloc] initWithDocument:v17 outputPath:path attemptIncremental:incrementalCopy];
    self->_distiller = v28;
    if (!v28 && incrementalCopy)
    {
      v28 = -[TDDistiller initWithDocument:outputPath:attemptIncremental:]([TDDistiller alloc], "initWithDocument:outputPath:attemptIncremental:", v17, [v26 path], 0);
      self->_distiller = v28;
    }

    if (v28)
    {
      [(TDDistiller *)v28 setDontPackRenditionsBeforeDistilling:1];
      [(TDDistiller *)self->_distiller setAssetStoreVersionNumber:[(TDDistillRunner *)self assetStoreVersionNumber]];
      [(TDDistiller *)self->_distiller setAssetStoreVersionString:[(TDDistillRunner *)self assetStoreVersionString]];
      [(TDDistiller *)self->_distiller setLogger:[(TDDistillRunner *)self logger]];
      distiller = self->_distiller;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __87__TDDistillRunner_runDistillWithDocumentURL_outputURL_attemptIncremental_forceDistill___block_invoke_2;
      v30[3] = &unk_278EBB630;
      v30[4] = self;
      v30[5] = l;
      v30[6] = v16;
      v30[7] = v17;
      [(TDDistiller *)distiller saveAndDistillWithCompletionHandler:v30];
      [(TDDistiller *)self->_distiller waitUntilFinished];

      return [(TDDistiller *)self->_distiller isSuccessful];
    }

    [(TDLogger *)[(TDDistillRunner *)self logger] logErrorWithFormat:@"Error:  Aborting distillation"];
  }

  return 0;
}

void *__87__TDDistillRunner_runDistillWithDocumentURL_outputURL_attemptIncremental_forceDistill___block_invoke_2(id *a1, int a2, void *a3)
{
  v6 = [*(a1[4] + 2) isIncremental];
  if (a2)
  {
    if ((v6 & 1) == 0)
    {
      [a1[4] _moveScratchToOutputPath];
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      [a1[4] _removeScratchPath];
    }

    [objc_msgSend(a1[4] "logger")];
    [objc_msgSend(a1[4] "logger")];
  }

  result = [objc_msgSend(a1[6] "lastPathComponent")];
  if (result)
  {
    v12 = 0;
    [a1[7] close];

    v8 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v9 = [a1[4] logger];
    v10 = [a1[6] path];
    if (v8)
    {
      return [v9 logInfoWithFormat:@"Removed temporary migration file at path: %@", v10];
    }

    else
    {
      [v9 logErrorWithFormat:@"Failed to remove temporary migration file at path: %@", v10];
      v11 = [a1[4] logger];
      return [v11 logError:{objc_msgSend(v12, "localizedDescription")}];
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDDistillRunner;
  [(TDDistillRunner *)&v3 dealloc];
}

@end