@interface NSURL(WFFileProviderOperations)
- (id)wf_fileProviderItem;
@end

@implementation NSURL(WFFileProviderOperations)

- (id)wf_fileProviderItem
{
  v14 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E69673B0] defaultManager];
  v9 = 0;
  v3 = [defaultManager itemForURL:self error:&v9];
  v4 = v9;

  if (v3 && ([v3 fileURL], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = v3;
  }

  else
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[NSURL(WFFileProviderOperations) wf_fileProviderItem]";
      v12 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s URL: %@ does not require file provider options due no item", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

@end