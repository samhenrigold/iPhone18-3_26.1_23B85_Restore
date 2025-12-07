@interface NSURL(Pasteboard)
- (uint64_t)_pb_isDirectory;
@end

@implementation NSURL(Pasteboard)

- (uint64_t)_pb_isDirectory
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = *MEMORY[0x277CBE868];
  v10 = 0;
  v3 = [self getResourceValue:&v11 forKey:v2 error:&v10];
  v4 = v11;
  v5 = v10;
  if (v3)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v7 = _PBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_25E138000, v7, OS_LOG_TYPE_INFO, "Warning: Cannot stat file at %@. Error: %@. Using [NSURL hasDirectoryPath] instead.", buf, 0x16u);
    }

    bOOLValue = [self hasDirectoryPath];
  }

  v8 = bOOLValue;

  return v8;
}

@end