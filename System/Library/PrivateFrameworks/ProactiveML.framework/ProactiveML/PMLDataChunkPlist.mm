@interface PMLDataChunkPlist
+ (id)chunkWithPlist:(id)plist;
- (id)plist;
@end

@implementation PMLDataChunkPlist

- (id)plist
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_parsed)
  {
    backingData = selfCopy->super._backingData;
    v10 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:backingData options:0 format:0 error:&v10];
    v5 = v10;
    plist = selfCopy->_plist;
    selfCopy->_plist = v4;

    if (!selfCopy->_plist)
    {
      v7 = PML_LogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_error_impl(&dword_260D68000, v7, OS_LOG_TYPE_ERROR, "Error loading plist chunk: %@", buf, 0xCu);
      }
    }
  }

  v8 = selfCopy->_plist;
  objc_sync_exit(selfCopy);

  return v8;
}

+ (id)chunkWithPlist:(id)plist
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:plist format:200 options:0 error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithData:v3];
  }

  else
  {
    v6 = PML_LogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_260D68000, v6, OS_LOG_TYPE_ERROR, "Error writing plist chunk: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

@end