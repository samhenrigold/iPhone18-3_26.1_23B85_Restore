@interface PBUIMagicWallpaperEnsure
@end

@implementation PBUIMagicWallpaperEnsure

void ___PBUIMagicWallpaperEnsure_block_invoke()
{
  v76 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = __identifierClassMap;
  __identifierClassMap = v0;

  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (![v2 count])
  {
    goto LABEL_47;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x223D62940]();
  v50 = v2;
  v5 = [v2 objectAtIndex:0];
  v6 = [v5 stringByAppendingPathComponent:@"ProceduralWallpaper"];
  v7 = [v4 stringByAppendingPathComponent:v6];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 contentsOfDirectoryAtPath:v7 error:0];

  v10 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
  v54 = v7;
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = v10;
  v12 = *v63;
  v51 = *v63;
  v52 = v9;
  do
  {
    v13 = 0;
    v55 = v11;
    do
    {
      if (*v63 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v62 + 1) + 8 * v13);
      v15 = [v14 pathExtension];
      v16 = [v15 caseInsensitiveCompare:@"bundle"];

      if (!v16)
      {
        v56 = v13;
        v17 = [v54 stringByAppendingPathComponent:v14];
        v18 = [MEMORY[0x277CCA8D8] bundleWithPath:v17];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 load];
          if (v20)
          {
            v53 = v17;
            v21 = [v19 objectForInfoDictionaryKey:@"SBProceduralWallpaperClassNames"];
            v22 = v21;
            if (v21)
            {
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v23 = [v21 countByEnumeratingWithState:&v58 objects:v70 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v59;
                do
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v59 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v58 + 1) + 8 * i);
                    v28 = [v19 classNamed:v27];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = PBUIMagicWallpaperDictionariesForClass(v28, v19);
                      [v3 addObjectsFromArray:v30];

                      v31 = __identifierClassMap;
                      v32 = [v29 identifier];
                      [v31 setObject:v29 forKey:v32];
                    }

                    else
                    {
                      v32 = PBUILogCommon(0);
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v75 = v27;
                        _os_log_error_impl(&dword_21E67D000, v32, OS_LOG_TYPE_ERROR, "Unable to load wallpaper class %{public}@, class does not exist in bundle", buf, 0xCu);
                      }
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v58 objects:v70 count:16];
                }

                while (v24);
                v12 = v51;
                v9 = v52;
              }
            }

            else
            {
              v35 = PBUILogCommon(0);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v75 = v53;
                _os_log_error_impl(&dword_21E67D000, v35, OS_LOG_TYPE_ERROR, "Unable to load wallpaper plugin, no defined wallpaper class names - %{public}@", buf, 0xCu);
              }

              [v19 unload];
            }

            v17 = v53;
            goto LABEL_32;
          }

          v22 = PBUILogCommon(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v75 = v17;
            v33 = v22;
            v34 = "Unable to load wallpaper plugin, bundle load failure - %{public}@";
LABEL_27:
            _os_log_error_impl(&dword_21E67D000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
          }
        }

        else
        {
          v22 = PBUILogCommon(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v75 = v17;
            v33 = v22;
            v34 = "Unable to load wallpaper plugin, path is not a bundle - %{public}@";
            goto LABEL_27;
          }
        }

LABEL_32:

        v11 = v55;
        v13 = v56;
      }

      ++v13;
    }

    while (v13 != v11);
    v11 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
  }

  while (v11);
LABEL_35:

  v36 = v3;
  v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = v36;
  v40 = [v39 countByEnumeratingWithState:&v66 objects:buf count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v67;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v67 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v66 + 1) + 8 * j);
        v45 = [v44 objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
        v46 = [v45 isEqualToString:@"360 VR"];
        v47 = v37;
        if ((v46 & 1) == 0)
        {
          if ([v45 isEqualToString:@"Pano VR"])
          {
            v47 = v57;
          }

          else
          {
            v47 = v38;
          }
        }

        [v47 addObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v66 objects:buf count:16];
    }

    while (v41);
  }

  v72[0] = @"kSBUIMagicWallpaperPanoVRSectionKey";
  v72[1] = @"kSBUIMagicWallpaper360VRSectionKey";
  v73[0] = v57;
  v73[1] = v37;
  v72[2] = @"kSBUIMagicWallpaperDynamicSectionKey";
  v73[2] = v38;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];
  v49 = __wallpaperEnumeration;
  __wallpaperEnumeration = v48;

  v2 = v50;
LABEL_47:
}

@end