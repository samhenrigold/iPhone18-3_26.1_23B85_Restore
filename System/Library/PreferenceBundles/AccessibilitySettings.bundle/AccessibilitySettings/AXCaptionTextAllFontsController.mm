@interface AXCaptionTextAllFontsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AXCaptionTextAllFontsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextAllFontsController;
  [(AXCaptionTextAllFontsController *)&v6 viewDidLoad];
  table = [(AXCaptionTextAllFontsController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionFontCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v39 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v42 = objc_alloc_init(NSMutableArray);
    v4 = +[NSMutableArray array];
    v6 = AXCaptionFonts(v4, v5);
    v7 = +[NSMutableArray array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v54;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v54 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v53 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          lowercaseString = [v12 lowercaseString];

          v14 = [lowercaseString rangeOfString:@"-"];
          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = [lowercaseString substringToIndex:v14];

            lowercaseString = v15;
          }

          [v7 addObject:lowercaseString];
        }

        v9 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v9);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v16 = +[UIFont familyNames];
    v17 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v4 addObject:*(*(&v49 + 1) + 8 * j)];
        }

        v18 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v18);
    }

    [v4 sortUsingComparator:&__block_literal_global_63];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = v4;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      v41 = PSCellClassKey;
      v40 = PSIDKey;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = _CTFontCreateWithNameAndSymbolicTraits();
          if (v26)
          {
            v27 = v26;
            v28 = CTFontCopyFullName(v26);
            v29 = CTFontCopyPostScriptName(v27);
            v30 = [(__CFString *)v29 rangeOfString:@"-"];
            v31 = v29;
            if (v30 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v31 = [(__CFString *)v29 substringToIndex:v30];
            }

            CFRelease(v27);
            lowercaseString2 = [(__CFString *)v29 lowercaseString];
            lowercaseString3 = [v31 lowercaseString];
            _AXLogWithFacility(3, 0, 1, 0, 0, 0, 0, 0, 0.0, 1, @"here: %@/%@");

            lowercaseString4 = [v31 lowercaseString];
            v34 = [v7 containsObject:lowercaseString4];

            if ((v34 & 1) == 0)
            {
              v35 = [PSSpecifier preferenceSpecifierNamed:v28 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
              [v35 setProperty:objc_opt_class() forKey:v41];
              [v35 setProperty:v29 forKey:v40];
              [v35 setProperty:&__kCFBooleanTrue forKey:@"isFont"];
              [v35 setCellType:3];
              [v42 addObject:v35];
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v23);
    }

    v36 = *&selfCopy->AXUISettingsBaseListController_opaque[v39];
    *&selfCopy->AXUISettingsBaseListController_opaque[v39] = v42;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v39];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  v7 = [specifier propertyForKey:PSIDKey];
  v17[0] = @"name";
  v17[1] = @"size";
  v18[0] = v7;
  v18[1] = &off_27B4F0;
  v17[2] = @"displayName";
  name = [specifier name];
  v17[3] = @"isBold";
  v18[2] = name;
  v18[3] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

  AXCaptionAddExtraUserFont(v9);
  _AXLogWithFacility(3, 0, 1, 0, 0, 0, 0, 0, 0.0, 1, @"add font: %@");
  specifier2 = [(AXCaptionTextAllFontsController *)self specifier];
  v11 = [specifier2 propertyForKey:@"TextCategory"];
  [v11 integerValue];

  v12 = [specifier2 propertyForKey:@"ProfileId"];
  v13 = _CTFontCreateWithNameAndSymbolicTraits();
  v14 = CTFontCopyGraphicsFont(v13, 0);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    MACaptionAppearancePrefSetFontForStyle();
    CFRelease(v14);
  }

  navigationController = [(AXCaptionTextAllFontsController *)self navigationController];
  v16 = [navigationController popViewControllerAnimated:1];
}

@end