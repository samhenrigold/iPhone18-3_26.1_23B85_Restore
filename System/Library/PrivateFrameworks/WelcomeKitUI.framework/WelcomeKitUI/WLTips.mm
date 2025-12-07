@interface WLTips
+ (BOOL)download;
+ (id)tips;
- (WLTips)initWithTitle:(id)title desc:(id)desc thumbnail:(id)thumbnail image:(id)image video:(id)video;
@end

@implementation WLTips

- (WLTips)initWithTitle:(id)title desc:(id)desc thumbnail:(id)thumbnail image:(id)image video:(id)video
{
  titleCopy = title;
  descCopy = desc;
  thumbnailCopy = thumbnail;
  imageCopy = image;
  videoCopy = video;
  v20.receiver = self;
  v20.super_class = WLTips;
  v17 = [(WLTips *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(WLTips *)v17 setTitle:titleCopy];
    [(WLTips *)v18 setDesc:descCopy];
    [(WLTips *)v18 setThumbnail:thumbnailCopy];
    [(WLTips *)v18 setImage:imageCopy];
    [(WLTips *)v18 setVideo:videoCopy];
  }

  return v18;
}

+ (id)tips
{
  v66 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = +[WLDeviceCapability hasHomeButton];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (userInterfaceIdiom)
  {
    if (v4)
    {
      v7 = @"IPAD_HOME_BUTTON";
    }

    else
    {
      v7 = @"IPAD_NO_HOME_BUTTON";
    }

    v8 = @"3Z";
    if (v4)
    {
      v8 = @"4Z";
    }

    v37 = v8;
    v38 = v7;
    [v5 addObject:@"GoHome"];
    [v6 addObject:@"AppSwitcher"];
    [v6 addObject:@"ControlCenter"];
    [v6 addObject:@"TouchAndHold"];
    [v6 addObject:@"NotificationCenter"];
  }

  else
  {
    if (v4)
    {
      v9 = @"IPHONE_HOME_BUTTON";
    }

    else
    {
      v9 = @"IPHONE_NO_HOME_BUTTON";
    }

    v10 = @"1V";
    if (v4)
    {
      v10 = @"2Y";
    }

    v37 = v10;
    v38 = v9;
    if (!+[WLDeviceCapability hasHomeButton])
    {
      [v6 addObject:@"GoHome"];
    }

    if (+[WLDeviceCapability hasDynamicIsland])
    {
      [v6 addObject:@"DynamicIsland"];
    }

    [v6 addObject:@"AppSwitcher"];
    [v6 addObject:@"ControlCenter"];
    [v6 addObject:@"TouchAndHold"];
    [v6 addObject:@"NotificationCenter"];
    if (+[WLDeviceCapability hasActionButton])
    {
      v11 = @"SilentModeActionButton";
      goto LABEL_20;
    }
  }

  v11 = @"SilentMode";
LABEL_20:
  [v6 addObject:v11];
  [v6 addObject:@"Screenshot"];
  v39 = +[WLTipAssetRemoteDocumentIdentifier documentIDs];
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v6;
  v41 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v41)
  {
    v36 = *v62;
    do
    {
      v12 = 0;
      do
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v12;
        v13 = *(*(&v61 + 1) + 8 * v12);
        v14 = MEMORY[0x277CCACA8];
        uppercaseString = [v13 uppercaseString];
        v16 = [v14 stringWithFormat:@"TIPS_%@_TITLE", uppercaseString];
        v59 = WLLocalizedString();

        v17 = MEMORY[0x277CCACA8];
        uppercaseString2 = [v13 uppercaseString];
        v19 = [v17 stringWithFormat:@"TIPS_%@_DESCRIPTION_%@", uppercaseString2, v38];
        v52 = WLLocalizedString();

        v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@_T.png", v13, v37, @"L"];
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.jpg", v13, v37, @"L"];
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.mp4", v13, v37, @"L"];
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@_T.png", v13, v37, @"D"];
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.jpg", v13, v37, @"D"];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@~%@.mp4", v13, v37, @"D"];
        v22 = [v39 objectForKeyedSubscript:v58];
        v50 = [WLTipAssetRemoteDocumentIdentifier url:v22];

        v51 = v20;
        v23 = [v39 objectForKeyedSubscript:v20];
        v49 = [WLTipAssetRemoteDocumentIdentifier url:v23];

        v24 = [v39 objectForKeyedSubscript:v54];
        v56 = [WLTipAssetRemoteDocumentIdentifier url:v24];

        v25 = [v39 objectForKeyedSubscript:v57];
        v55 = [WLTipAssetRemoteDocumentIdentifier url:v25];

        v26 = [v39 objectForKeyedSubscript:v53];
        v46 = [WLTipAssetRemoteDocumentIdentifier url:v26];

        v44 = v21;
        v27 = [v39 objectForKeyedSubscript:v21];
        v45 = [WLTipAssetRemoteDocumentIdentifier url:v27];

        v48 = [[WLAsset alloc] initWithName:v58 remoteURL:v50];
        v47 = [[WLAsset alloc] initWithName:v20 remoteURL:v49];
        v42 = [[WLInterfaceStyleAsset alloc] initWithLight:v48 dark:v47];
        v43 = [[WLAsset alloc] initWithName:v54 remoteURL:v56];
        v28 = [[WLAsset alloc] initWithName:v57 remoteURL:v55];
        v29 = [[WLInterfaceStyleAsset alloc] initWithLight:v43 dark:v28];
        v30 = [[WLAsset alloc] initWithName:v53 remoteURL:v46];
        v31 = [[WLAsset alloc] initWithName:v21 remoteURL:v45];
        v32 = [[WLInterfaceStyleAsset alloc] initWithLight:v30 dark:v31];
        v33 = [[WLTips alloc] initWithTitle:v59 desc:v52 thumbnail:v42 image:v29 video:v32];
        [v40 addObject:v33];

        v12 = v60 + 1;
      }

      while (v41 != v60 + 1);
      v41 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v41);
  }

  return v40;
}

+ (BOOL)download
{
  v62 = *MEMORY[0x277D85DE8];
  +[WLTips tips];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v2 = v56 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v54;
    v6 = 0x277CBE000uLL;
    do
    {
      v7 = 0;
      v40 = v3;
      do
      {
        if (*v54 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v42 = v7;
        v8 = *(*(&v53 + 1) + 8 * v7);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        thumbnail = [v8 thumbnail];
        v59[0] = thumbnail;
        image = [v8 image];
        v59[1] = image;
        video = [v8 video];
        v59[2] = video;
        v12 = [*(v6 + 2656) arrayWithObjects:v59 count:3];

        v13 = [v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v50;
          v41 = v2;
          v37 = *v50;
          v38 = v5;
          v44 = v12;
          while (2)
          {
            v16 = 0;
            do
            {
              if (*v50 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v43 = v16;
              v17 = *(*(&v49 + 1) + 8 * v16);
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              light = [v17 light];
              v57[0] = light;
              dark = [v17 dark];
              v57[1] = dark;
              v20 = [*(v6 + 2656) arrayWithObjects:v57 count:2];

              v21 = [v20 countByEnumeratingWithState:&v45 objects:v58 count:16];
              if (v21)
              {
                v22 = v21;
                v39 = v14;
                v23 = *v46;
                while (2)
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v46 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v45 + 1) + 8 * i);
                    name = [v25 name];
                    remoteURL = [v25 remoteURL];
                    localFile = [v25 localFile];
                    _WLLog();

                    download = [v25 download];
                    name2 = [v25 name];
                    remoteURL2 = [v25 remoteURL];
                    localFile2 = [v25 localFile];
                    v36 = download;
                    v32 = name2;
                    v33 = remoteURL2;
                    _WLLog();

                    if ((download & 1) == 0)
                    {

                      v2 = v41;
                      goto LABEL_29;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v45 objects:v58 count:{16, name2, remoteURL2, localFile2, download}];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }

                v2 = v41;
                v15 = v37;
                v5 = v38;
                v6 = 0x277CBE000;
                v14 = v39;
              }

              else
              {

                if (!v4)
                {
LABEL_29:

                  goto LABEL_30;
                }
              }

              v12 = v44;
              v16 = v43 + 1;
              v4 = 1;
            }

            while (v43 + 1 != v14);
            v14 = [v44 countByEnumeratingWithState:&v49 objects:v60 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        else
        {

          if (!v4)
          {
            goto LABEL_30;
          }
        }

        v7 = v42 + 1;
        v4 = 1;
      }

      while (v42 + 1 != v40);
      v3 = [v2 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v3);
  }

  else
  {
LABEL_30:
    v4 = 0;
  }

  return v4;
}

@end