@interface CRSUISystemWallpaperProvider
- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate;
- (id)defaultWallpapers;
- (id)dynamicAppearanceWallpapersForVehicle:(id)vehicle;
- (id)loadWallpaperFromData:(id)data;
- (id)resolveWallpaper:(id)wallpaper;
@end

@implementation CRSUISystemWallpaperProvider

- (id)defaultWallpapers
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = +[CRSUISystemWallpaper defaultWallpaper];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)dynamicAppearanceWallpapersForVehicle:(id)vehicle
{
  v16[1] = *MEMORY[0x277D85DE8];
  previousSystemWallpaperData = [vehicle previousSystemWallpaperData];
  if (previousSystemWallpaperData)
  {
    v5 = [(CRSUISystemWallpaperProvider *)self loadWallpaperFromData:previousSystemWallpaperData];
    v6 = v5;
    if (v5)
    {
      traits = [v5 traits];
      supportsDynamicAppearance = [traits supportsDynamicAppearance];

      if (supportsDynamicAppearance)
      {
        v16[0] = v6;
        v9 = MEMORY[0x277CBEA60];
        v10 = v16;
LABEL_8:
        v12 = [v9 arrayWithObjects:v10 count:1];
        goto LABEL_12;
      }
    }
  }

  wallpapers = [(CRSUISystemWallpaperProvider *)self wallpapers];
  v6 = [wallpapers bs_firstObjectPassingTest:&__block_literal_global_235];

  if (v6)
  {
    v15 = v6;
    v9 = MEMORY[0x277CBEA60];
    v10 = &v15;
    goto LABEL_8;
  }

  v13 = CRSUILogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [CRSUISystemWallpaperProvider dynamicAppearanceWallpapersForVehicle:v13];
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_12:

  return v12;
}

uint64_t __70__CRSUISystemWallpaperProvider_dynamicAppearanceWallpapersForVehicle___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 traits];
  v3 = [v2 supportsDynamicAppearance];

  return v3;
}

- (id)loadWallpaperFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [CRSUISystemWallpaper alloc];
    identifier = [dataCopy identifier];
    v6 = [(CRSUISystemWallpaper *)v4 initWithIdentifier:identifier];
  }

  else
  {
    v7 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [CRSUISystemWallpaperProvider loadWallpaperFromData:dataCopy];
    }

    v6 = 0;
  }

  return v6;
}

- (id)resolveWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resolveWallpaper = [wallpaperCopy resolveWallpaper];
  }

  else
  {
    v5 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [CRSUISystemWallpaperProvider loadWallpaperFromData:wallpaperCopy];
    }

    resolveWallpaper = 0;
  }

  return resolveWallpaper;
}

- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->dataProviderDelegate);

  return WeakRetained;
}

- (void)loadWallpaperFromData:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138543362;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0_1(&dword_243218000, v3, v4, "Unsupported wallpaper type: %{public}@", v5, v6, v7, v8, v9, DWORD2(v9));
}

@end