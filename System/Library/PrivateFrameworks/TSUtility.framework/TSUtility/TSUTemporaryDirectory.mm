@interface TSUTemporaryDirectory
- (TSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory;
- (void)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory;
- (void)dealloc;
@end

@implementation TSUTemporaryDirectory

- (TSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory
{
  v9.receiver = self;
  v9.super_class = TSUTemporaryDirectory;
  v6 = [(TSUTemporaryDirectory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TSUTemporaryDirectory *)v6 _createDirectoryWithSignature:signature subdirectory:subdirectory];
  }

  return v7;
}

- (void)dealloc
{
  if (!self->_leak)
  {
    v9 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      if ([v9 code] != 4 || (v7 = objc_msgSend(v9, "domain"), (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCA050]) & 1) == 0))
      {
        TSULogErrorInFunction("[TSUTemporaryDirectory dealloc]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUTemporaryDirectory.mm", 65, @"Failed to remove TSUTemporaryDirectory. Error: %@, path: %@", v3, v4, v5, v6, v9);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = TSUTemporaryDirectory;
  [(TSUTemporaryDirectory *)&v8 dealloc];
}

- (void)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory
{
  if (signature)
  {
    signatureCopy = signature;
  }

  else
  {
    signatureCopy = &stru_287DDF830;
  }

  if (![TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase)
  {
    v7 = objc_sync_enter(self);
    if (![TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase)
    {
      v9 = [SFUBundle(v7 v8)];
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v11 = getpid();
      v12 = @"com.apple.Unknown";
      if (v9)
      {
        v12 = v9;
      }

      v13 = [v10 initWithFormat:@"%@_%d", v12, v11];
      __dmb(0xBu);
      [TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase = v13;
      if (!v13)
      {
        v14 = +[TSUAssertionHandler currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]"];
        [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUTemporaryDirectory.mm"), 105, @"Couldn't initialize lazy variable %s", "secretSubdirectoryNameBase"}];
      }
    }

    objc_sync_exit(self);
  }

  v16 = [-[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase stringByAppendingFormat:@"_%@_%d_%d", signatureCopy, CFAbsoluteTimeGetCurrent(), atomic_fetch_add(-[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryIndex, 1u) + 1];
  if ([v16 length] >= 0x100)
  {
    v16 = [v16 substringToIndex:255];
  }

  v17 = getenv("CIRRUSEXPORTERTEMPDIR");
  if (v17)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
    if (!subdirectory)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v18 = NSTemporaryDirectory();
  if (subdirectory)
  {
LABEL_15:
    v18 = [(NSString *)v18 stringByAppendingPathComponent:subdirectory];
  }

LABEL_16:
  v19 = [(NSString *)v18 stringByAppendingPathComponent:v16];
  v20 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    self->_path = v19;
  }

  else
  {
    [MEMORY[0x277CBEAD8] tsu_raiseWithError:v20];
  }
}

@end