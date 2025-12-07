@interface AXCaptionTextEdgeController
- (id)_videoOverridesStyle:(id)style;
- (id)specifiers;
- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AXCaptionTextEdgeController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextEdgeController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  table = [(AXCaptionTextEdgeController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionColorCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v21 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    selfCopy = self;
    captionPreviewSpecifiers = [(AXCaptionStyleChooserController *)self captionPreviewSpecifiers];
    v24 = v4;
    [v4 addObjectsFromArray:captionPreviewSpecifiers];

    v23 = AXCaptionTextEdgeStyleDefault(v6);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = AXCaptionTextEdgeStyles(v23);
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      v10 = PSCellClassKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"name"];
          v14 = settingsLocString(v13, @"CaptioningStyle");
          v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

          [v15 setProperty:objc_opt_class() forKey:v10];
          v16 = [v12 objectForKeyedSubscript:@"name"];
          [v15 setProperty:v16 forKey:@"name"];

          v17 = [v12 objectForKeyedSubscript:@"edgeKey"];
          [v15 setProperty:v17 forKey:@"edgeKey"];

          if ([v23 isEqualToDictionary:v12])
          {
            [v15 setProperty:&__kCFBooleanTrue forKey:@"isDefault"];
          }

          [v15 setCellType:3];
          [v24 addObject:v15];
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    videoOverrideSpecifiers = [(AXCaptionStyleChooserController *)selfCopy videoOverrideSpecifiers];
    [v24 addObjectsFromArray:videoOverrideSpecifiers];

    v19 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v21];
    *&selfCopy->super.AXUISettingsBaseListController_opaque[v21] = v24;

    v3 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v21];
  }

  return v3;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = AXCaptionTextEdgeController;
  [(AXCaptionStyleChooserController *)&v14 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  [(AXCaptionStyleChooserController *)self profileId];
  v9 = MACaptionAppearancePrefCopyTextEdgeStyle();
  if (!v9)
  {
    v10 = AXCaptionTextEdgeStyleDefault(0);
    v9 = [v10 objectForKey:@"edgeKey"];
  }

  v11 = cellCopy;
  specifier = [v11 specifier];
  v13 = [specifier propertyForKey:@"edgeKey"];

  [v11 setChecked:{objc_msgSend(v13, "isEqual:", v9)}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AXCaptionTextEdgeController;
  pathCopy = path;
  viewCopy = view;
  [(AXCaptionTextEdgeController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];

  specifier = [v8 specifier];

  v11 = [specifier propertyForKey:@"edgeKey"];
  v10 = v11;
  AXPerformBlockOnMainThreadAfterDelay();
  [(AXCaptionStyleChooserController *)self updateTableCheckedSelection:pathCopy, _NSConcreteStackBlock, 3221225472, __65__AXCaptionTextEdgeController_tableView_didSelectRowAtIndexPath___block_invoke, &unk_255538, self];
}

uint64_t __65__AXCaptionTextEdgeController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profileId];
  v3 = *(a1 + 40);

  return _MACaptionAppearancePrefSetTextEdgeStyle(v2, v3);
}

- (id)_videoOverridesStyle:(id)style
{
  [(AXCaptionStyleChooserController *)self profileId];
  v3 = MACaptionAppearancePrefCopyVideoOverrideTextEdgeStyle();

  return v3;
}

- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier
{
  styleCopy = style;
  [(AXCaptionStyleChooserController *)self profileId];
  [styleCopy BOOLValue];

  MACaptionAppearancePrefSetVideoOverrideTextEdgeStyle();
}

@end