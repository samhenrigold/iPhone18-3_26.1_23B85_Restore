@interface IFVariantAgnosticBundle
- (id)infoDictionary;
@end

@implementation IFVariantAgnosticBundle

- (id)infoDictionary
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(IFBundle *)self bundle])
  {
    [(IFBundle *)self bundle];
    v3 = _CFBundleCopyInfoPlistURL();
    if (v3)
    {
      v11 = 0;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:&v11];
      v5 = v11;
      v6 = v5;
      if (v4)
      {
        v7 = v4;
      }

      else
      {
        v9 = IFDefaultLog(v5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v13 = v3;
          v14 = 2112;
          v15 = v6;
          _os_log_impl(&dword_1B9DEC000, v9, OS_LOG_TYPE_INFO, "Failed to read Info.plist contents at URL: %@. Error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v6 = IFDefaultLog(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        bundleURL = [(IFBundle *)self bundleURL];
        *buf = 138412290;
        v13 = bundleURL;
        _os_log_impl(&dword_1B9DEC000, v6, OS_LOG_TYPE_INFO, "Failed to determine Info.plist URL for bundle at URL: %@", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end