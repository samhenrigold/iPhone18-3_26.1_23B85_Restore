@interface AXCaptionTextMetaFontController
- (id)_fontForCategory:(id)category;
- (id)specifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXCaptionTextMetaFontController

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v27 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    captionPreviewSpecifiers = [(AXCaptionStyleChooserController *)selfCopy captionPreviewSpecifiers];
    [v4 addObjectsFromArray:captionPreviewSpecifiers];

    v32 = v4;
    lastObject = [v4 lastObject];
    v7 = settingsLocString(@"FONT_CATEGORY_FOOTER_TEXT", @"CaptioningStyle");
    v26 = lastObject;
    [lastObject setProperty:v7 forKey:PSFooterTextGroupKey];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = AXCaptionFonts(v8, v9);
    v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v31 = PSCellClassKey;
      v29 = PSTitleKey;
      v30 = PSIDKey;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"category"];
          intValue = [v15 intValue];

          if (intValue)
          {
            v17 = [v14 objectForKeyedSubscript:@"category"];
            v18 = AXCaptionFontCategoryName([v17 intValue]);

            v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:selfCopy set:0 get:"_fontForCategory:" detail:objc_opt_class() cell:1 edit:0];
            [v19 setProperty:objc_opt_class() forKey:v31];
            [v14 objectForKeyedSubscript:@"category"];
            v21 = v20 = selfCopy;
            [v19 setProperty:v21 forKey:@"category"];

            v22 = [v14 objectForKeyedSubscript:@"name"];
            [v19 setProperty:v22 forKey:v30];

            selfCopy = v20;
            v23 = [v14 objectForKeyedSubscript:@"isBold"];
            [v19 setProperty:v23 forKey:@"isBold"];

            [v19 setProperty:v18 forKey:v29];
            [v19 setCellType:2];
            [v32 addObject:v19];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    v24 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v27];
    *&selfCopy->super.AXUISettingsBaseListController_opaque[v27] = v32;

    v3 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v27];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextMetaFontController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  table = [(AXCaptionTextMetaFontController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionFontCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXCaptionTextMetaFontController;
  [(AXCaptionTextMetaFontController *)&v4 viewWillAppear:appear];
  [(AXCaptionTextMetaFontController *)self reloadSpecifiers];
}

- (id)_fontForCategory:(id)category
{
  categoryCopy = category;
  v5 = [categoryCopy propertyForKey:@"category"];
  intValue = [v5 intValue];

  v29 = -1;
  [(AXCaptionStyleChooserController *)self profileId];
  MACaptionAppearancePrefIsSystemFont();
  [(AXCaptionStyleChooserController *)self profileId];
  v7 = MACaptionAppearancePrefCopyFontForStyle();
  if (!v7)
  {
    v10 = AXCaptionDefaultFontForCategory(intValue, v8);
    v15 = [v10 objectForKeyedSubscript:@"displayName"];
    goto LABEL_17;
  }

  v9 = v7;
  v10 = CGFontCopyPostScriptName(v7);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = AXCaptionFonts(v10, v11);
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v23 = v9;
    v24 = categoryCopy;
    v15 = 0;
    v16 = *v26;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:{@"name", v23, v24, v25}];
        v20 = [v19 isEqualToString:v10];

        if (v20)
        {
          v21 = [v18 objectForKeyedSubscript:@"displayName"];

          v15 = v21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v14);

    v9 = v23;
    categoryCopy = v24;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v15 = CGFontCopyFullName(v9);
LABEL_16:
  CFRelease(v9);
LABEL_17:

  return v15;
}

@end