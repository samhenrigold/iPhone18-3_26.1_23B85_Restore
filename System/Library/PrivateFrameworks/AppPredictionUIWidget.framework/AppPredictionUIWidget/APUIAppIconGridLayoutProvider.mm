@interface APUIAppIconGridLayoutProvider
- (APUIAppIconGridLayoutProvider)initWithLargeIconsEnabled:(BOOL)enabled;
- (id)layoutForIconLocation:(id)location;
@end

@implementation APUIAppIconGridLayoutProvider

- (APUIAppIconGridLayoutProvider)initWithLargeIconsEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = APUIAppIconGridLayoutProvider;
  result = [(APUIAppIconGridLayoutProvider *)&v5 init];
  if (result)
  {
    result->_largeIconsEnabled = enabled;
  }

  return result;
}

- (id)layoutForIconLocation:(id)location
{
  locationCopy = location;
  if ([(APUIAppIconGridLayoutProvider *)self isLargeIconsEnabled])
  {
    v7 = 24;
  }

  else
  {
    v7 = 0;
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v8 = getSBHDefaultIconListLayoutProviderClass_softClass;
  v42 = getSBHDefaultIconListLayoutProviderClass_softClass;
  if (!getSBHDefaultIconListLayoutProviderClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getSBHDefaultIconListLayoutProviderClass_block_invoke;
    v37 = &unk_278C90BC0;
    v38 = &v39;
    __getSBHDefaultIconListLayoutProviderClass_block_invoke(&v34, v5, v6);
    v8 = v40[3];
  }

  v9 = v8;
  _Block_object_dispose(&v39, 8);
  v10 = [[v8 alloc] initWithLayoutOptions:v7];
  v13 = v10;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v14 = getSBIconLocationRootSymbolLoc_ptr;
  v42 = getSBIconLocationRootSymbolLoc_ptr;
  if (!getSBIconLocationRootSymbolLoc_ptr)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getSBIconLocationRootSymbolLoc_block_invoke;
    v37 = &unk_278C90BC0;
    v38 = &v39;
    v15 = SpringBoardHomeLibrary(v10, v11, v12);
    v16 = dlsym(v15, "SBIconLocationRoot");
    *(v38[1] + 24) = v16;
    getSBIconLocationRootSymbolLoc_ptr = *(v38[1] + 24);
    v14 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v14)
  {
    v33 = [APUIAppIconGridLayoutProvider layoutForIconLocation:];
    _Block_object_dispose(&v39, 8);
    _Unwind_Resume(v33);
  }

  v17 = [v13 makeLayoutForIconLocation:*v14];
  layoutConfiguration = [v17 layoutConfiguration];
  [layoutConfiguration setNumberOfPortraitColumns:4];

  layoutConfiguration2 = [v17 layoutConfiguration];
  [layoutConfiguration2 setNumberOfLandscapeColumns:4];

  layoutConfiguration3 = [v17 layoutConfiguration];
  [layoutConfiguration3 setNumberOfPortraitRows:2];

  layoutConfiguration4 = [v17 layoutConfiguration];
  [layoutConfiguration4 setNumberOfLandscapeRows:2];

  layoutConfiguration5 = [v17 layoutConfiguration];
  [layoutConfiguration5 portraitLayoutInsets];
  v24 = v23;
  v26 = v25;

  if (self->_mode == 1)
  {
    v26 = 12.0;
    v24 = 12.0;
    v27 = 12.0;
  }

  else
  {
    v27 = 0.0;
  }

  layoutConfiguration6 = [v17 layoutConfiguration];
  [layoutConfiguration6 setPortraitLayoutInsets:{v27, v24, v27, v26}];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    layoutConfiguration7 = [v17 layoutConfiguration];
    [layoutConfiguration7 setLandscapeLayoutInsets:{12.0, 12.0, 12.0, 12.0}];
  }

  return v17;
}

- (uint64_t)layoutForIconLocation:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getSBHDefaultIconListLayoutProviderClass_block_invoke_cold_1();
}

@end