@interface ARQuickLookPreviewItem
- (ARQuickLookPreviewItem)initWithFileAtURL:(NSURL *)url;
- (NSDictionary)previewOptions;
@end

@implementation ARQuickLookPreviewItem

- (ARQuickLookPreviewItem)initWithFileAtURL:(NSURL *)url
{
  v5 = url;
  v10.receiver = self;
  v10.super_class = ARQuickLookPreviewItem;
  v6 = [(ARQuickLookPreviewItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, url);
    canonicalWebPageURL = v7->_canonicalWebPageURL;
    v7->_canonicalWebPageURL = 0;

    *&v7->_allowsContentScaling = 1;
    v7->_forceIgnoreMuteSwitch = 0;
  }

  return v7;
}

- (NSDictionary)previewOptions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"ARQLCanonicalWebPageURL";
  canonicalWebPageURL = [(ARQuickLookPreviewItem *)self canonicalWebPageURL];
  null = canonicalWebPageURL;
  if (!canonicalWebPageURL)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v11[0] = null;
  v10[1] = @"allowObjectScaling";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ARQuickLookPreviewItem allowsContentScaling](self, "allowsContentScaling")}];
  v11[1] = v5;
  v10[2] = @"ARQLWantsStatusPillHiddenKey";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ARQuickLookPreviewItem wantsStatusPillHidden](self, "wantsStatusPillHidden")}];
  v11[2] = v6;
  v10[3] = @"ARQLForceIgnoreMuteSwitchKey";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ARQuickLookPreviewItem forceIgnoreMuteSwitch](self, "forceIgnoreMuteSwitch")}];
  v11[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  if (!canonicalWebPageURL)
  {
  }

  return v8;
}

@end