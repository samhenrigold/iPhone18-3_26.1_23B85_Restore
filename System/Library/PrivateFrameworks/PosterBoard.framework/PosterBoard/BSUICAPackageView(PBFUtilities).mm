@interface BSUICAPackageView(PBFUtilities)
+ (id)pbf_galleryHeroMicaViewForExtension:()PBFUtilities;
@end

@implementation BSUICAPackageView(PBFUtilities)

+ (id)pbf_galleryHeroMicaViewForExtension:()PBFUtilities
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  posterExtensionBundleIdentifier = [v3 posterExtensionBundleIdentifier];
  v5 = [posterExtensionBundleIdentifier isEqualToString:@"com.apple.weather.poster"];

  if (v5)
  {
    if (pbf_galleryHeroMicaViewForExtension__onceToken != -1)
    {
      +[BSUICAPackageView(PBFUtilities) pbf_galleryHeroMicaViewForExtension:];
    }

    v7 = PBFLogCommon(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      posterExtensionBundleIdentifier2 = [v3 posterExtensionBundleIdentifier];
      v11 = 138412290;
      v12 = posterExtensionBundleIdentifier2;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "BSUICAPackageView(PBFUtilities) using %@ fallback mica view", &v11, 0xCu);
    }

    v9 = pbf_galleryHeroMicaViewForExtension__weatherView;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end