@interface NSUserDefaults(WBSStartPageSectionManagerStorage)
- (id)startPageSectionDescriptors;
- (void)setStartPageSectionDescriptors:()WBSStartPageSectionManagerStorage;
- (void)startPageSectionDescriptors;
@end

@implementation NSUserDefaults(WBSStartPageSectionManagerStorage)

- (id)startPageSectionDescriptors
{
  v1 = [self objectForKey:@"StartPageSections"];
  v8 = 0;
  v2 = [WBSStartPageSectionSerialization decodeSectionsFromData:v1 expectedFormat:0 allowingFallbackFormats:0 error:&v8];
  v3 = v8;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXStartPage(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NSUserDefaults(WBSStartPageSectionManagerStorage) *)v6 startPageSectionDescriptors];
    }
  }

  return v2;
}

- (void)setStartPageSectionDescriptors:()WBSStartPageSectionManagerStorage
{
  v9 = 0;
  v4 = [WBSStartPageSectionSerialization encodeSectionsAsLocalData:a3 error:&v9];
  v5 = v9;
  v7 = v5;
  if (v5)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXStartPage(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSUserDefaults(WBSStartPageSectionManagerStorage) *)v8 setStartPageSectionDescriptors:v7];
    }
  }

  [self setObject:v4 forKey:@"StartPageSections"];
}

- (void)startPageSectionDescriptors
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = safari_privacyPreservingDescription;
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to decode section data: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)setStartPageSectionDescriptors:()WBSStartPageSectionManagerStorage .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to serialize section data: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end