@interface LSApplicationProxy(CarouselPreferenceServices)
- (id)cslprf_safeCorrespondingApplicationRecord;
@end

@implementation LSApplicationProxy(CarouselPreferenceServices)

- (id)cslprf_safeCorrespondingApplicationRecord
{
  v15 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [self bundleIdentifier];
  correspondingApplicationRecord = [self correspondingApplicationRecord];
  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:bundleIdentifier allowPlaceholder:objc_msgSend(correspondingApplicationRecord error:{"isPlaceholder"), &v8}];
  v5 = v8;
  if (v5)
  {
    v6 = cslprf_app_library_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = self;
      v11 = 2112;
      v12 = bundleIdentifier;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_INFO, "%@ failed safeCorrespondingApplicationRecord for bundleIdentifier:%@ error:%@", buf, 0x20u);
    }
  }

  return v4;
}

@end