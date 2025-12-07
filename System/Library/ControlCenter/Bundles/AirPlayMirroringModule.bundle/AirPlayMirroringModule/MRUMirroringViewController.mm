@interface MRUMirroringViewController
- (BOOL)isConnectedToExternalDisplay;
- (id)leadingImageForMenuItem:(id)item;
- (void)mirroringController:(id)controller didChangeOutputDevice:(id)device;
- (void)mirroringController:(id)controller didUpdateBusyIdenifiers:(id)idenifiers;
- (void)selectOutputDevice:(id)device;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)stopMirroringDismissOnComplete:(BOOL)complete;
- (void)updateFooter;
- (void)updateGlyphPackageDescription;
- (void)updateItems;
- (void)updateState;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation MRUMirroringViewController

- (void)viewDidLoad
{
  v27[1] = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = MRUMirroringViewController;
  [(CCUIMenuModuleViewController *)&v20 viewDidLoad];
  [(MRUMirroringViewController *)self updateGlyphPackageDescription];
  v3 = objc_opt_self();
  v27[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v27 count:1];
  v5 = [(MRUMirroringViewController *)self registerForTraitChanges:v4 withAction:sel_updateGlyphPackageDescription];

  screenMirroring = [MEMORY[0x29EDC5910] screenMirroring];
  [(CCUIMenuModuleViewController *)self setTitle:screenMirroring];

  [(CCUIMenuModuleViewController *)self setMinimumMenuItems:4];
  [(CCUIMenuModuleViewController *)self setVisibleMenuItems:0.0];
  [(CCUIMenuModuleViewController *)self setIndentation:2];
  [(CCUIMenuModuleViewController *)self setUseTrailingCheckmarkLayout:1];
  v7 = objc_alloc_init(MEMORY[0x29EDC5908]);
  controller = self->_controller;
  self->_controller = v7;

  v9 = objc_alloc_init(MEMORY[0x29EDC11B0]);
  displayMonitor = self->_displayMonitor;
  self->_displayMonitor = v9;

  v11 = _MRLogCategoryMirroringView();
  v12 = os_signpost_id_generate(v11);

  v13 = _MRLogCategoryMirroringView();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    mainConfiguration = [(FBSDisplayMonitor *)self->_displayMonitor mainConfiguration];
    deviceName = [mainConfiguration deviceName];
    mainConfiguration2 = [(FBSDisplayMonitor *)self->_displayMonitor mainConfiguration];
    hardwareIdentifier = [mainConfiguration2 hardwareIdentifier];
    connectedIdentities = [(FBSDisplayMonitor *)self->_displayMonitor connectedIdentities];
    *buf = 138478339;
    v22 = deviceName;
    v23 = 2114;
    v24 = hardwareIdentifier;
    v25 = 2112;
    v26 = connectedIdentities;
    _os_signpost_emit_with_name_impl(&dword_29C950000, v14, OS_SIGNPOST_EVENT, v12, "MirrorModuleViewDidLoad", "EVENT DETAILS || displayMonitor (mainConfiguration) - deviceName:%{private}@, hardwareID:%{public}@}, connectedIdentities:%@", buf, 0x20u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v12 = *MEMORY[0x29EDCA608];
  v9.receiver = self;
  v9.super_class = MRUMirroringViewController;
  [(CCUIMenuModuleViewController *)&v9 viewWillAppear:appear];
  [(MRUMirroringViewController *)self setShowMoreExpanded:0];
  [(MRUMirroringViewController *)self updateState];
  [(MRUMirroringController *)self->_controller setDelegate:self];
  v4 = _MRLogCategoryMirroringView();
  v5 = os_signpost_id_generate(v4);

  v6 = _MRLogCategoryMirroringView();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    showMoreExpanded = [(MRUMirroringViewController *)self showMoreExpanded];
    *buf = 67109120;
    v11 = showMoreExpanded;
    _os_signpost_emit_with_name_impl(&dword_29C950000, v7, OS_SIGNPOST_EVENT, v5, "MirrorModuleViewWillAppear", "EVENT DETAILS || isShowMoreExpanded:%{BOOL}u", buf, 8u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v14 = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = MRUMirroringViewController;
  [(CCUIMenuModuleViewController *)&v11 viewWillDisappear:disappear];
  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  [buttonView setGlyphState:@"off"];

  [(MRUMirroringController *)self->_controller setDelegate:0];
  v5 = _MRLogCategoryMirroringView();
  v6 = os_signpost_id_generate(v5);

  v7 = _MRLogCategoryMirroringView();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
    glyphState = [buttonView2 glyphState];
    *buf = 138543362;
    v13 = glyphState;
    _os_signpost_emit_with_name_impl(&dword_29C950000, v8, OS_SIGNPOST_EVENT, v6, "MirrorModuleViewWillDisappear", "EVENT DETAILS || glyphState:%{public}@", buf, 0xCu);
  }
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  v4.receiver = self;
  v4.super_class = MRUMirroringViewController;
  [(CCUIButtonModuleViewController *)&v4 setContentRenderingMode:mode];
  [(MRUMirroringViewController *)self updateState];
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v7.receiver = self;
  v7.super_class = MRUMirroringViewController;
  [(CCUIMenuModuleViewController *)&v7 willTransitionToExpandedContentMode:?];
  [(MRUMirroringViewController *)self updateState];
  controller = self->_controller;
  if (modeCopy)
  {
    [(MRUMirroringController *)controller startDetailedDiscovery];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = sub_29C951594;
    v6[3] = &unk_29F336670;
    v6[4] = self;
    [MEMORY[0x29EDC7DA0] performWithoutAnimation:v6];
  }

  else
  {
    [(MRUMirroringController *)controller stopDetailedDiscovery];
    [(CCUIMenuModuleViewController *)self setBusy:0];
  }
}

- (id)leadingImageForMenuItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:4 weight:3 scale:17.0];
    v5 = MEMORY[0x29EDC7AC8];
    symbolName = [itemCopy symbolName];
    v7 = [v5 _systemImageNamed:symbolName];

    v8 = [v7 imageWithConfiguration:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)mirroringController:(id)controller didChangeOutputDevice:(id)device
{
  [(MRUMirroringViewController *)self updateState:controller];
  [(MRUMirroringViewController *)self updateItems];

  MEMORY[0x2A1C70FE8](self, sel_updateFooter);
}

- (void)mirroringController:(id)controller didUpdateBusyIdenifiers:(id)idenifiers
{
  if ([(CCUIButtonModuleViewController *)self isExpanded:controller])
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = sub_29C951778;
    v5[3] = &unk_29F336670;
    v5[4] = self;
    [MEMORY[0x29EDC7DA0] performWithoutAnimation:v5];
  }
}

- (void)updateItems
{
  v61 = *MEMORY[0x29EDCA608];
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    v36 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    availableOutputDevices = [(MRUMirroringController *)self->_controller availableOutputDevices];
    v3 = [availableOutputDevices msv_filter:&unk_2A23E3258];
    v47[0] = MEMORY[0x29EDCA5F8];
    v47[1] = 3221225472;
    v47[2] = sub_29C951DF8;
    v47[3] = &unk_29F3366B8;
    v32 = v3;
    v48 = v32;
    v31 = [availableOutputDevices msv_filter:v47];
    if (-[MRUMirroringViewController showMoreExpanded](self, "showMoreExpanded") || ![v32 count])
    {
      v4 = [v32 arrayByAddingObjectsFromArray:v31];
    }

    else
    {
      v4 = v32;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v4;
    v37 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
    if (v37)
    {
      v35 = *v44;
      do
      {
        v5 = 0;
        do
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v43 + 1) + 8 * v5);
          busyIdentifiers = [(MRUMirroringController *)self->_controller busyIdentifiers];
          deviceID = [v6 deviceID];
          v9 = [busyIdentifiers containsObject:deviceID];

          selectedOutputDevice = [(MRUMirroringController *)self->_controller selectedOutputDevice];
          v11 = [v6 isEqual:selectedOutputDevice];

          objc_initWeak(location, self);
          v12 = [MRUMirroringMenuModuleItem alloc];
          name = [v6 name];
          deviceID2 = [v6 deviceID];
          v39[0] = MEMORY[0x29EDCA5F8];
          v39[1] = 3221225472;
          v39[2] = sub_29C951E1C;
          v39[3] = &unk_29F3366E0;
          objc_copyWeak(&v40, location);
          v41 = v11;
          v42 = v9;
          v39[4] = v6;
          v15 = [(CCUIMenuModuleItem *)v12 initWithTitle:name identifier:deviceID2 handler:v39];

          v16 = [MEMORY[0x29EDC5908] symbolNameForOutputDevice:v6];
          [(MRUMirroringMenuModuleItem *)v15 setSymbolName:v16];

          [(CCUIMenuModuleItem *)v15 setBusy:v9];
          [(CCUIMenuModuleItem *)v15 setSelected:v11];
          [v36 addObject:v15];

          objc_destroyWeak(&v40);
          objc_destroyWeak(location);
          ++v5;
        }

        while (v37 != v5);
        v37 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
      }

      while (v37);
    }

    if (![(MRUMirroringViewController *)self showMoreExpanded])
    {
      v17 = [availableOutputDevices count];
      if (v17 > [obj count])
      {
        v18 = [MRUMirroringMenuModuleItem alloc];
        routingFooterShowMoreTitle = [MEMORY[0x29EDC5910] routingFooterShowMoreTitle];
        v38[0] = MEMORY[0x29EDCA5F8];
        v38[1] = 3221225472;
        v38[2] = sub_29C951E80;
        v38[3] = &unk_29F336708;
        v38[4] = self;
        v20 = [(CCUIMenuModuleItem *)v18 initWithTitle:routingFooterShowMoreTitle identifier:@"showmore" handler:v38];
        [v36 addObject:v20];
      }
    }

    [(CCUIMenuModuleViewController *)self setMenuItems:v36];
    -[CCUIMenuModuleViewController setBusy:](self, "setBusy:", [v36 count] == 0);
    v21 = _MRLogCategoryMirroringView();
    v22 = os_signpost_id_generate(v21);

    v23 = _MRLogCategoryMirroringView();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v36, "count")}];
      v26 = [v36 valueForKey:@"symbolName"];
      v27 = [v36 valueForKey:@"title"];
      v28 = [v36 valueForKey:@"identifier"];
      v29 = [v36 valueForKey:@"busy"];
      v30 = [v36 valueForKey:@"selected"];
      *location = 138544643;
      *&location[4] = v25;
      v50 = 2114;
      v51 = v26;
      v52 = 2113;
      v53 = v27;
      v54 = 2114;
      v55 = v28;
      v56 = 2114;
      v57 = v29;
      v58 = 2114;
      v59 = v30;
      _os_signpost_emit_with_name_impl(&dword_29C950000, v24, OS_SIGNPOST_EVENT, v22, "UpdatedMirrorMenuItems", "EVENT DETAILS || menuItems - count:%{public}@, items - symbolName:%{public}@, title:%{private}@, identifier:%{public}@, isBusy:%{public}@, isSelected:%{public}@", location, 0x3Eu);
    }
  }
}

- (void)updateFooter
{
  location[1] = *MEMORY[0x29EDCA608];
  selectedOutputDevice = [(MRUMirroringController *)self->_controller selectedOutputDevice];

  if (selectedOutputDevice)
  {
    objc_initWeak(location, self);
    stopMirroring = [MEMORY[0x29EDC5910] stopMirroring];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = sub_29C952128;
    v14[3] = &unk_29F336730;
    objc_copyWeak(&v15, location);
    [(CCUIMenuModuleViewController *)self setFooterButtonTitle:stopMirroring handler:v14];

    v5 = _MRLogCategoryMirroringView();
    v6 = os_signpost_id_generate(v5);

    v7 = _MRLogCategoryMirroringView();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      hasFooterButton = [(CCUIMenuModuleViewController *)self hasFooterButton];
      *buf = 67109120;
      v17 = hasFooterButton;
      _os_signpost_emit_with_name_impl(&dword_29C950000, v8, OS_SIGNPOST_EVENT, v6, "SetMirrorModuleFooterButton", "EVENT DETAILS || hasFooterButton:%{BOOL}u", buf, 8u);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    [(CCUIMenuModuleViewController *)self removeFooterButton];
    v10 = _MRLogCategoryMirroringView();
    v11 = os_signpost_id_generate(v10);

    v12 = _MRLogCategoryMirroringView();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LODWORD(location[0]) = 67109120;
      HIDWORD(location[0]) = [(CCUIMenuModuleViewController *)self hasFooterButton];
      _os_signpost_emit_with_name_impl(&dword_29C950000, v13, OS_SIGNPOST_EVENT, v11, "RemovedMirrorModuleFooterButton", "EVENT DETAILS || hasFooterButton:%{BOOL}u", location, 8u);
    }
  }
}

- (void)updateGlyphPackageDescription
{
  traitCollection = [(MRUMirroringViewController *)self traitCollection];
  accessibilityContrast = [traitCollection accessibilityContrast];
  v5 = @"Mirroring";
  if (accessibilityContrast == 1)
  {
    v5 = @"Mirroring_IC";
  }

  v6 = v5;

  v7 = [MEMORY[0x29EDC58E8] packageDescriptionWithName:v6];

  [(CCUIMenuModuleViewController *)self setGlyphPackageDescription:v7];
}

- (void)updateState
{
  v32 = *MEMORY[0x29EDCA608];
  if ([(CCUIButtonModuleViewController *)self contentRenderingMode]== 1)
  {
    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
    [buttonView setGlyphState:@"off"];

    [(CCUIButtonModuleViewController *)self setSelected:0];
    v4 = _MRLogCategoryMirroringView();
    v5 = os_signpost_id_generate(v4);

    v6 = _MRLogCategoryMirroringView();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      isExpanded = [(CCUIButtonModuleViewController *)self isExpanded];
      isSelected = [(CCUIButtonModuleViewController *)self isSelected];
      buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
      glyphState = [buttonView2 glyphState];
      v26 = 67109634;
      v27 = isExpanded;
      v28 = 1024;
      v29 = isSelected;
      v30 = 2114;
      v31 = glyphState;
      v12 = "UpdatedMirroringModuleStateModePreview";
LABEL_15:
      _os_signpost_emit_with_name_impl(&dword_29C950000, v7, OS_SIGNPOST_EVENT, v5, v12, "EVENT DETAILS || isModuleExpanded:%{BOOL}u, isModuleSelected:%{BOOL}u, glyphState:%{public}@", &v26, 0x18u);
    }
  }

  else if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(CCUIButtonModuleViewController *)self setSelected:0];
    buttonView3 = [(CCUIButtonModuleViewController *)self buttonView];
    [buttonView3 setGlyphState:@"off"];

    v14 = _MRLogCategoryMirroringView();
    v5 = os_signpost_id_generate(v14);

    v15 = _MRLogCategoryMirroringView();
    v7 = v15;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      isExpanded2 = [(CCUIButtonModuleViewController *)self isExpanded];
      isSelected2 = [(CCUIButtonModuleViewController *)self isSelected];
      buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
      glyphState = [buttonView2 glyphState];
      v26 = 67109634;
      v27 = isExpanded2;
      v28 = 1024;
      v29 = isSelected2;
      v30 = 2114;
      v31 = glyphState;
      v12 = "UpdatedMirroringModuleStateIsExpanded";
      goto LABEL_15;
    }
  }

  else
  {
    selectedOutputDevice = [(MRUMirroringController *)self->_controller selectedOutputDevice];
    [(CCUIButtonModuleViewController *)self setSelected:selectedOutputDevice != 0];

    selectedOutputDevice2 = [(MRUMirroringController *)self->_controller selectedOutputDevice];
    if (selectedOutputDevice2)
    {
      v20 = @"on";
    }

    else
    {
      v20 = @"off";
    }

    buttonView4 = [(CCUIButtonModuleViewController *)self buttonView];
    [buttonView4 setGlyphState:v20];

    v22 = _MRLogCategoryMirroringView();
    v5 = os_signpost_id_generate(v22);

    v23 = _MRLogCategoryMirroringView();
    v7 = v23;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      isExpanded3 = [(CCUIButtonModuleViewController *)self isExpanded];
      isSelected3 = [(CCUIButtonModuleViewController *)self isSelected];
      buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
      glyphState = [buttonView2 glyphState];
      v26 = 67109634;
      v27 = isExpanded3;
      v28 = 1024;
      v29 = isSelected3;
      v30 = 2114;
      v31 = glyphState;
      v12 = "UpdatedMirroringModuleState";
      goto LABEL_15;
    }
  }
}

- (void)selectOutputDevice:(id)device
{
  deviceCopy = device;
  if ([(MRUMirroringViewController *)self isConnectedToExternalDisplay]&& ([(MRUMirroringController *)self->_controller selectedOutputDevice], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = MEMORY[0x29EDC7928];
    airPlayErrorTitle = [MEMORY[0x29EDC5910] airPlayErrorTitle];
    airplayErrorExternalDisplay = [MEMORY[0x29EDC5910] airplayErrorExternalDisplay];
    v8 = [v5 alertControllerWithTitle:airPlayErrorTitle message:airplayErrorExternalDisplay preferredStyle:1];

    v9 = MEMORY[0x29EDC7920];
    v10 = [MEMORY[0x29EDC5910] ok];
    v11 = [v9 actionWithTitle:v10 style:0 handler:&unk_2A23E3278];
    [v8 addAction:v11];

    [(MRUMirroringViewController *)self showViewController:v8 sender:self];
  }

  else
  {
    [(MRUMirroringController *)self->_controller startMirroringToOutputDevice:deviceCopy completion:0];
  }
}

- (void)stopMirroringDismissOnComplete:(BOOL)complete
{
  objc_initWeak(&location, self);
  controller = self->_controller;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C9527A4;
  v6[3] = &unk_29F336778;
  objc_copyWeak(&v7, &location);
  completeCopy = complete;
  [(MRUMirroringController *)controller stopMirroringWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)isConnectedToExternalDisplay
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  connectedIdentities = [(FBSDisplayMonitor *)self->_displayMonitor connectedIdentities];
  v3 = [connectedIdentities countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(connectedIdentities);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isExternal] && objc_msgSend(v6, "connectionType") == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [connectedIdentities countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

@end