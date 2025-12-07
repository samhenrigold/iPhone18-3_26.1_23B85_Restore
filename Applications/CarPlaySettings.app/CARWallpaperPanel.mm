@interface CARWallpaperPanel
- (CARWallpaperPanel)initWithPanelController:(id)controller;
- (CGSize)cachedEffectiveSectionInsetLayoutSize;
- (UIEdgeInsets)cachedEffectiveSectionInset;
- (UIEdgeInsets)effectiveSectionHeaderInset;
- (UIEdgeInsets)effectiveSectionInset;
- (UIEdgeInsets)sectionInset;
- (id)_newPreviewPanelForWallpaper:(id)wallpaper;
- (id)cellSpecifier;
- (id)specifierSections;
- (unint64_t)numberOfRows;
- (void)_vehicleDidChange:(id)change;
- (void)invalidate;
@end

@implementation CARWallpaperPanel

- (CARWallpaperPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CARWallpaperPanel;
  v5 = [(CARSettingsPanel *)&v10 initWithPanelController:controllerCopy];
  if (v5)
  {
    loadWallpaperPreferences = [controllerCopy loadWallpaperPreferences];
    wallpaperPreferences = v5->_wallpaperPreferences;
    v5->_wallpaperPreferences = loadWallpaperPreferences;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_vehicleDidChange:" name:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];
  }

  return v5;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"WALLPAPER_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.wallpaper"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100008690;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsWallpaperCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (id)specifierSections
{
  sections = [(CARWallpaperPanel *)self sections];

  if (!sections)
  {
    v4 = objc_opt_new();
    wallpaperPreferences = [(CARWallpaperPanel *)self wallpaperPreferences];
    dataProvider = [wallpaperPreferences dataProvider];
    wallpapers = [dataProvider wallpapers];

    objc_initWeak(&location, self);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000088D0;
    v17 = &unk_1000DAF00;
    selfCopy = self;
    objc_copyWeak(&v20, &location);
    v8 = v4;
    v19 = v8;
    [wallpapers enumerateObjectsUsingBlock:&v14];
    v9 = [CARSettingsCellSpecifierSection alloc];
    selfCopy = [(CARSettingsCellSpecifierSection *)v9 initWithTitle:0 specifiers:v8, v14, v15, v16, v17, selfCopy];
    v22 = selfCopy;
    v11 = [NSArray arrayWithObjects:&v22 count:1];
    [(CARWallpaperPanel *)self setSections:v11];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  sections2 = [(CARWallpaperPanel *)self sections];

  return sections2;
}

- (unint64_t)numberOfRows
{
  sections = [(CARWallpaperPanel *)self sections];
  firstObject = [sections firstObject];
  specifiers = [firstObject specifiers];
  v6 = [specifiers count];

  v7 = [(CARWallpaperPanel *)self numberOfColumns]+ v6 - 1;
  return v7 / [(CARWallpaperPanel *)self numberOfColumns];
}

- (UIEdgeInsets)sectionInset
{
  view = [(CARWallpaperPanel *)self view];
  [view safeAreaInsets];
  v5 = v4 + 4.0;
  view2 = [(CARWallpaperPanel *)self view];
  [view2 safeAreaInsets];
  v8 = v7 + 4.0;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.right = v12;
  result.bottom = v10;
  result.left = v11;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)effectiveSectionInset
{
  view = [(CARWallpaperPanel *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  height = CGSizeZero.height;

  if (CGSizeZero.width == v5 && height == v7)
  {
    v52 = sub_10001C784(v9);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[Settings] [CARWallpaper] Using default sectionInset due to zero bounds", buf, 2u);
    }

    [(CARWallpaperPanel *)self sectionInset];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
  }

  else
  {
    panelController = [(CARSettingsPanel *)self panelController];
    carSession = [panelController carSession];
    configuration = [carSession configuration];
    screens = [configuration screens];
    v15 = [screens bs_firstObjectPassingTest:&stru_1000DAF20];

    currentViewArea = [v15 currentViewArea];
    [currentViewArea safeFrame];
    v18 = v17;
    v20 = v19;

    view2 = [(CARWallpaperPanel *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    [(CARWallpaperPanel *)self cachedEffectiveSectionInsetLayoutSize];
    if (v28 != v32 || v30 != v31 || ([(CARWallpaperPanel *)self cachedEffectiveSectionInset], v34.f64[1] = v33, v36.f64[1] = v35, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&UIEdgeInsetsZero.top, v34), vceqq_f64(*&UIEdgeInsetsZero.bottom, v36)))) & 1) != 0))
    {
      [(CARWallpaperPanel *)self setCachedEffectiveSectionInsetLayoutSize:v28, v30];
      v108.origin.x = v24;
      v108.origin.y = v26;
      v108.size.width = v28;
      v108.size.height = v30;
      Width = CGRectGetWidth(v108);
      [(CARWallpaperPanel *)self sectionInset];
      v39 = Width - v38;
      [(CARWallpaperPanel *)self sectionInset];
      v41 = v39 - v40 - [(CARWallpaperPanel *)self numberOfColumns]* 8.0;
      v42 = v20 / v18;
      v43 = v42 * (v41 / [(CARWallpaperPanel *)self numberOfColumns]);
      numberOfRows = [(CARWallpaperPanel *)self numberOfRows];
      v45 = [(CARWallpaperPanel *)self numberOfRows]* 8.0 + v43 * numberOfRows + 32.0;
      v109.origin.x = v24;
      v109.origin.y = v26;
      v109.size.width = v28;
      v109.size.height = v30;
      v46 = CGRectGetHeight(v109) * 0.98;
      availableInteractionModels = [v15 availableInteractionModels];
      if (v45 < v46 || (availableInteractionModels & 2) == 0)
      {
        v49 = sub_10001C784(availableInteractionModels);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[Settings] [CARWallpaper] Using default sectionInset (no scroll bar needed)", buf, 2u);
        }

        [(CARWallpaperPanel *)self sectionInset];
        selfCopy2 = self;
      }

      else
      {
        v110.origin.x = v24;
        v110.origin.y = v26;
        v110.size.width = v28;
        v110.size.height = v30;
        v61 = CGRectGetWidth(v110) + -45.0;
        [(CARWallpaperPanel *)self sectionInset];
        v63 = v61 - v62;
        [(CARWallpaperPanel *)self sectionInset];
        v65 = v63 - v64 - [(CARWallpaperPanel *)self numberOfColumns]* 8.0;
        v66 = v42 * (v65 / [(CARWallpaperPanel *)self numberOfColumns]);
        numberOfRows2 = [(CARWallpaperPanel *)self numberOfRows];
        v68 = [(CARWallpaperPanel *)self numberOfRows]* 8.0 + v66 * numberOfRows2 + 32.0;
        v111.origin.x = v24;
        v111.origin.y = v26;
        v111.size.width = v28;
        v111.size.height = v30;
        v69 = CGRectGetHeight(v111) * 0.98;
        [(CARWallpaperPanel *)self sectionInset];
        v71 = v70;
        if (v68 >= v69)
        {
          panelController2 = [(CARSettingsPanel *)self panelController];
          carSession2 = [panelController2 carSession];
          configuration2 = [carSession2 configuration];
          [configuration2 rightHandDrive];

          [(CARWallpaperPanel *)self sectionInset];
        }

        selfCopy2 = self;
        v50 = v71;
      }

      v75 = sub_10001C784([(CARWallpaperPanel *)selfCopy2 setCachedEffectiveSectionInset:v50]);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v107.width = v28;
        v107.height = v30;
        v76 = NSStringFromCGSize(v107);
        [(CARWallpaperPanel *)self cachedEffectiveSectionInset];
        v77 = NSStringFromUIEdgeInsets(v112);
        [(CARWallpaperPanel *)self sectionInset];
        v78 = NSStringFromUIEdgeInsets(v113);
        currentViewArea2 = [v15 currentViewArea];
        v94 = v15;
        [currentViewArea2 safeFrame];
        v79 = NSStringFromCGRect(v114);
        view3 = [(CARWallpaperPanel *)self view];
        safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
        [safeAreaLayoutGuide2 layoutFrame];
        v81 = NSStringFromCGRect(v115);
        view4 = [(CARWallpaperPanel *)self view];
        [view4 safeAreaInsets];
        v83 = NSStringFromUIEdgeInsets(v116);
        *buf = 138413570;
        v96 = v76;
        v97 = 2112;
        v98 = v77;
        v99 = 2112;
        v100 = v78;
        v101 = 2112;
        v102 = v79;
        v103 = 2112;
        v104 = v81;
        v105 = 2112;
        v106 = v83;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[Settings] [CARWallpaper] Final effective section insets for layout: %@,                        using cachedEffectiveSectionInset: (%@);                        sectionInset:(%@);                        mainScreen.currentViewArea.safeFrame:(%@)                        self.view.safeAreaLayoutGuide.layoutFrame:(%@)                        self.view.safeAreaInsets(%@)", buf, 0x3Eu);

        v15 = v94;
      }
    }

    [(CARWallpaperPanel *)self cachedEffectiveSectionInset];
    v54 = v84;
    v56 = v85;
    v58 = v86;
    v60 = v87;
  }

  v88 = v54;
  v89 = v56;
  v90 = v58;
  v91 = v60;
  result.right = v91;
  result.bottom = v90;
  result.left = v89;
  result.top = v88;
  return result;
}

- (UIEdgeInsets)effectiveSectionHeaderInset
{
  [(CARWallpaperPanel *)self effectiveSectionInset];
  v5 = v4 + 4.0;
  v7 = v6 + 4.0;
  result.right = v7;
  result.bottom = v3;
  result.left = v5;
  result.top = v2;
  return result;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = CARWallpaperPanel;
  [(CARSettingsPanel *)&v4 invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (id)_newPreviewPanelForWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  v5 = [_TtC15CarPlaySettings24CARWallpaperPreviewPanel alloc];
  wallpaperPreferences = [(CARWallpaperPanel *)self wallpaperPreferences];
  panelController = [(CARSettingsPanel *)self panelController];
  v8 = [(CARWallpaperPreviewPanel *)v5 initWithWallpaper:wallpaperCopy wallpaperPreferences:wallpaperPreferences panelController:panelController completionHandler:&stru_1000DAF60];

  return v8;
}

- (void)_vehicleDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000093A8;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (UIEdgeInsets)cachedEffectiveSectionInset
{
  top = self->_cachedEffectiveSectionInset.top;
  left = self->_cachedEffectiveSectionInset.left;
  bottom = self->_cachedEffectiveSectionInset.bottom;
  right = self->_cachedEffectiveSectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)cachedEffectiveSectionInsetLayoutSize
{
  width = self->_cachedEffectiveSectionInsetLayoutSize.width;
  height = self->_cachedEffectiveSectionInsetLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end