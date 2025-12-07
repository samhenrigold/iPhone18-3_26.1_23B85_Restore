@interface BCSAlertController
- (BCSAlertControllerDelegate)delegate;
- (id)_createHeaderViewControllerWithAction:(id)action;
- (id)_createHeaderViewControllerWithAppIdentifier:(id)identifier;
- (id)_createPreviewControllerForDataDetectionActionPickerItem:(id)item;
- (id)_createPreviewControllerWithText:(id)text;
- (id)_createSeparatorView;
- (void)_addActionForHandlingAlertDismissal:(id)dismissal;
- (void)_configurePopoverPresentationControllerForAlertController:(id)controller fromViewController:(id)viewController;
- (void)showActionPickerViewForAction:(id)action fromViewController:(id)controller;
- (void)showErrorExplanationForAction:(id)action error:(id)error fromViewController:(id)controller;
- (void)showFirstTimePromptToOpenApp:(id)app fromViewController:(id)controller;
- (void)showICloudSignInPromptWithTitle:(id)title message:(id)message fromViewController:(id)controller;
- (void)showInvalidDataAlertForAction:(id)action fromViewController:(id)controller;
@end

@implementation BCSAlertController

- (id)_createHeaderViewControllerWithAction:(id)action
{
  actionCopy = action;
  defaultActionTargetApplicationBundleIdentifier = [actionCopy defaultActionTargetApplicationBundleIdentifier];
  if ([(__CFString *)defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
  {
    urlThatCanBeOpened = [actionCopy urlThatCanBeOpened];

    if (!urlThatCanBeOpened)
    {

      defaultActionTargetApplicationBundleIdentifier = @"com.apple.barcodescanner.text-only";
    }
  }

  v7 = [(BCSAlertController *)self _createHeaderViewControllerWithAppIdentifier:defaultActionTargetApplicationBundleIdentifier];

  return v7;
}

- (id)_createHeaderViewControllerWithAppIdentifier:(id)identifier
{
  v71[12] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v58 = objc_alloc_init(MEMORY[0x277D75D28]);
  view = [v58 view];
  v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([identifierCopy isEqualToString:@"com.apple.barcodescanner.icloud"])
  {
    v4 = [MEMORY[0x277D755B8] imageNamed:@"iCloud" inBundle:v60];
    v63 = [v4 _applicationIconImageForFormat:0 precomposed:1];

    uppercaseString = _BCSLocalizedString();
    goto LABEL_28;
  }

  if ([identifierCopy isEqualToString:@"com.apple.barcodescanner.invalid-data.qr"])
  {
    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:@"com.apple.barcodescanner.invalid-data.appclip"])
  {
    v6 = [MEMORY[0x277D755B8] imageNamed:@"Viewfinder-20" inBundle:v60];
    v63 = [v6 _applicationIconImageForFormat:0 precomposed:1];

    uppercaseString = _BCSLocalizedString();
  }

  else
  {
    if ([identifierCopy isEqualToString:@"com.apple.barcodescanner.text-only"])
    {
LABEL_4:
      v5 = [MEMORY[0x277D755B8] imageNamed:@"QRCode-20" inBundle:v60];
      v63 = [v5 _applicationIconImageForFormat:0 precomposed:1];

      uppercaseString = _BCSLocalizedString();
      goto LABEL_28;
    }

    if ([identifierCopy isEqualToString:@"com.apple.barcodescanner.wifi"])
    {
      v7 = [MEMORY[0x277D755B8] imageNamed:@"Wi-Fi-20" inBundle:v60];
      v63 = [v7 _applicationIconImageForFormat:0 precomposed:1];

      MGGetBoolAnswer();
      uppercaseString = _BCSLocalizedString();
    }

    else
    {
      v8 = [getLSApplicationProxyClass() applicationProxyForIdentifier:identifierCopy];
      v9 = *&screenScale_scale;
      if (*&screenScale_scale == 0.0)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        screenScale_scale = v11;

        v9 = *&screenScale_scale;
      }

      if (v9 == 2.0)
      {
        v12 = 17;
      }

      else
      {
        v12 = 4;
      }

      if (v9 == 3.0)
      {
        v13 = 34;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v8 iconDataForVariant:v13];
      if (v14)
      {
        v67 = 0;
        v68 = &v67;
        v69 = 0x2020000000;
        v15 = getLICreateIconFromCachedBitmapSymbolLoc_ptr;
        v70 = getLICreateIconFromCachedBitmapSymbolLoc_ptr;
        if (!getLICreateIconFromCachedBitmapSymbolLoc_ptr)
        {
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __getLICreateIconFromCachedBitmapSymbolLoc_block_invoke;
          v66[3] = &unk_278D021A8;
          v66[4] = &v67;
          __getLICreateIconFromCachedBitmapSymbolLoc_block_invoke(v66);
          v15 = v68[3];
        }

        _Block_object_dispose(&v67, 8);
        if (!v15)
        {
          [BCSAlertController _createHeaderViewControllerWithAppIdentifier:];
        }

        v16 = v15(v14);
        if (v16)
        {
          v63 = [MEMORY[0x277D755B8] imageWithCGImage:v16 scale:0 orientation:v9];
        }

        else
        {
          v63 = 0;
        }

        CGImageRelease(v16);
      }

      else
      {
        v63 = 0;
      }

      localizedName = [v8 localizedName];
      uppercaseString = [localizedName uppercaseString];
    }
  }

LABEL_28:
  if (v63)
  {
    v18 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v63];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setAccessibilityIgnoresInvertColors:1];
    [view addSubview:v18];
    if ([uppercaseString length])
    {
      v64 = objc_alloc_init(MEMORY[0x277D756B8]);
      v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
      [v64 setFont:v19];

      [v64 setText:uppercaseString];
      grayColor = [MEMORY[0x277D75348] grayColor];
      [v64 setTextColor:grayColor];

      [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v64 setAdjustsFontSizeToFitWidth:1];
      [view addSubview:v64];
      _createSeparatorView = [(BCSAlertController *)self _createSeparatorView];
      [view addSubview:_createSeparatorView];
      v32 = MEMORY[0x277CCAAD0];
      leadingAnchor = [v18 leadingAnchor];
      leadingAnchor2 = [view leadingAnchor];
      v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
      v71[0] = v55;
      centerYAnchor = [v18 centerYAnchor];
      centerYAnchor2 = [view centerYAnchor];
      v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v71[1] = v52;
      heightAnchor = [v18 heightAnchor];
      v50 = [heightAnchor constraintEqualToConstant:20.0];
      v71[2] = v50;
      widthAnchor = [v18 widthAnchor];
      heightAnchor2 = [v18 heightAnchor];
      v47 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
      v71[3] = v47;
      leadingAnchor3 = [v64 leadingAnchor];
      trailingAnchor = [v18 trailingAnchor];
      v44 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
      v71[4] = v44;
      trailingAnchor2 = [v64 trailingAnchor];
      trailingAnchor3 = [view trailingAnchor];
      v41 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
      v71[5] = v41;
      centerYAnchor3 = [v64 centerYAnchor];
      centerYAnchor4 = [view centerYAnchor];
      v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v71[6] = v38;
      heightAnchor3 = [view heightAnchor];
      v36 = [heightAnchor3 constraintEqualToConstant:52.0];
      v71[7] = v36;
      leadingAnchor4 = [_createSeparatorView leadingAnchor];
      leadingAnchor5 = [view leadingAnchor];
      v33 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      v71[8] = v33;
      trailingAnchor4 = [_createSeparatorView trailingAnchor];
      trailingAnchor5 = [view trailingAnchor];
      v23 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      v71[9] = v23;
      bottomAnchor = [_createSeparatorView bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v71[10] = v26;
      heightAnchor4 = [_createSeparatorView heightAnchor];
      _bcs_pixelLength();
      v28 = [heightAnchor4 constraintEqualToConstant:?];
      v71[11] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:12];
      [v32 activateConstraints:v29];

      v30 = v58;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)_createSeparatorView
{
  v2 = [MEMORY[0x277D75210] effectWithStyle:1200];
  v3 = [MEMORY[0x277D75D00] _effectForBlurEffect:v2 vibrancyStyle:120];
  v4 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v3];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  contentView = [v4 contentView];
  [contentView setBackgroundColor:whiteColor];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

- (id)_createPreviewControllerWithText:(id)text
{
  v49[9] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75D28];
  textCopy = text;
  v26 = objc_alloc_init(v4);
  view = [v26 view];
  _createSeparatorView = [(BCSAlertController *)self _createSeparatorView];
  [view addSubview:?];
  v8 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v8 setText:textCopy];

  v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [v8 setFont:v9];

  [v8 setDataDetectorTypes:-1];
  [v8 setEditable:0];
  [v8 setScrollEnabled:0];
  textContainer = [v8 textContainer];
  [textContainer setLineBreakMode:4];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:clearColor];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = MEMORY[0x277CBEB38];
  linkTextAttributes = [v8 linkTextAttributes];
  v14 = [v12 dictionaryWithDictionary:linkTextAttributes];

  blueColor = [MEMORY[0x277D75348] blueColor];
  v48 = v14;
  [v14 setValue:blueColor forKey:*MEMORY[0x277D740C0]];

  [v14 setValue:&unk_2853A1120 forKey:*MEMORY[0x277D741F0]];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];
  [v8 setLinkTextAttributes:v16];

  [view addSubview:v8];
  v35 = MEMORY[0x277CCAAD0];
  heightAnchor = [_createSeparatorView heightAnchor];
  _bcs_pixelLength();
  v46 = [heightAnchor constraintEqualToConstant:?];
  v49[0] = v46;
  leadingAnchor = [_createSeparatorView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[1] = v42;
  v44 = _createSeparatorView;
  trailingAnchor = [_createSeparatorView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[2] = v39;
  topAnchor = [_createSeparatorView topAnchor];
  topAnchor2 = [view topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[3] = v36;
  centerXAnchor = [v8 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v49[4] = v32;
  leadingAnchor3 = [v8 leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v29 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:20.0];
  v49[5] = v29;
  trailingAnchor3 = [v8 trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v17 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-20.0];
  v49[6] = v17;
  topAnchor3 = [v8 topAnchor];
  topAnchor4 = [view topAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
  v49[7] = v20;
  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v49[8] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:9];
  [v35 activateConstraints:v24];

  return v26;
}

- (id)_createPreviewControllerForDataDetectionActionPickerItem:(id)item
{
  v25[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  icsString = [itemCopy icsString];
  if ([icsString length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CC5A40]);
    v24[0] = @"ICS";
    v24[1] = @"NotificationStyle";
    v25[0] = icsString;
    v25[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v7 = v5;
    v8 = v6;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v9 = getDDUIEventForResultsSymbolLoc_ptr;
    v23 = getDDUIEventForResultsSymbolLoc_ptr;
    if (!getDDUIEventForResultsSymbolLoc_ptr)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __getDDUIEventForResultsSymbolLoc_block_invoke;
      v19[3] = &unk_278D021A8;
      v19[4] = &v20;
      __getDDUIEventForResultsSymbolLoc_block_invoke(v19);
      v9 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v9)
    {
      [BCSAlertController _createPreviewControllerForDataDetectionActionPickerItem:];
    }

    v10 = v9(v7, 0, v8);

    startDate = [v10 startDate];
    v12 = objc_alloc(MEMORY[0x277CC5B68]);
    endDate = [v10 endDate];
    v14 = [v12 initWithDate:startDate event:v10 overriddenEventStartDate:startDate overriddenEventEndDate:endDate];

    v18 = 0;
    v15 = [v7 removeEvent:v10 span:0 error:&v18];
    v16 = v18;
    if ((v15 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSAlertController _createPreviewControllerForDataDetectionActionPickerItem:v16];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_configurePopoverPresentationControllerForAlertController:(id)controller fromViewController:(id)viewController
{
  viewControllerCopy = viewController;
  popoverPresentationController = [controller popoverPresentationController];
  view = [viewControllerCopy view];
  if ([viewControllerCopy conformsToProtocol:&unk_2853B3C08])
  {
    popoverAnchorView = [viewControllerCopy popoverAnchorView];
    v8 = popoverAnchorView;
    if (popoverAnchorView)
    {
      v9 = popoverAnchorView;
    }

    else
    {
      v9 = view;
    }

    [popoverPresentationController setSourceView:v9];
    if (v8)
    {
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      goto LABEL_9;
    }
  }

  else
  {
    [popoverPresentationController setSourceView:view];
  }

  [view center];
  v11 = v18;
  [view size];
  v13 = v19;
  v15 = 0.0;
  v17 = 0.0;
LABEL_9:
  [popoverPresentationController setSourceRect:{v11, v13, v15, v17}];
  [popoverPresentationController setPermittedArrowDirections:0];
}

- (void)_addActionForHandlingAlertDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  if (_bcs_deviceIsPad())
  {
    v5 = MEMORY[0x277D750F8];
    v6 = _BCSLocalizedString();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__BCSAlertController__addActionForHandlingAlertDismissal___block_invoke;
    v8[3] = &unk_278D02130;
    v8[4] = self;
    v7 = [v5 actionWithTitle:v6 style:1 handler:v8];
    [dismissalCopy addAction:v7];
  }
}

void __58__BCSAlertController__addActionForHandlingAlertDismissal___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained alertControllerDidCancel:*(a1 + 32)];
}

- (void)showActionPickerViewForAction:(id)action fromViewController:(id)controller
{
  v65 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  controllerCopy = controller;
  v7 = controllerCopy;
  if (controllerCopy)
  {
    presentedViewController = [controllerCopy presentedViewController];

    if (presentedViewController)
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        [(BCSAlertController *)v9 showActionPickerViewForAction:v10 fromViewController:v11, v12, v13, v14, v15, v16];
      }

      goto LABEL_31;
    }

    actionPickerItems = [actionCopy actionPickerItems];
    if (![actionPickerItems count])
    {
LABEL_30:

      goto LABEL_31;
    }

    v48 = objc_alloc_init(MEMORY[0x277D75110]);
    [v48 setPreferredStyle:0];
    v26 = [(BCSAlertController *)self _createHeaderViewControllerWithAction:actionCopy];
    firstObject = [actionPickerItems firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(BCSAlertController *)self _createPreviewControllerForDataDetectionActionPickerItem:firstObject], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v28;
      extraPreviewText = 0;
    }

    else
    {
      if ([actionCopy conformsToProtocol:&unk_2853A31C0])
      {
        extraPreviewText = [actionCopy extraPreviewText];
      }

      else
      {
        extraPreviewText = 0;
      }

      if (![extraPreviewText length])
      {
        v43 = 0;
        v44 = extraPreviewText;
        goto LABEL_20;
      }

      v29 = [(BCSAlertController *)self _createPreviewControllerWithText:extraPreviewText];
    }

    v43 = v29;
    v44 = extraPreviewText;
    if (v29 && v26)
    {
      [v48 _setHeaderContentViewController:v26];
      [v48 setContentViewController:v29];
LABEL_22:
      v45 = v26;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v46 = actionPickerItems;
      obj = actionPickerItems;
      v33 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v61;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v61 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v60 + 1) + 8 * i);
            label = [v37 label];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __71__BCSAlertController_showActionPickerViewForAction_fromViewController___block_invoke;
            v56[3] = &unk_278D01D30;
            v57 = WeakRetained;
            selfCopy = self;
            v59 = v37;
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __71__BCSAlertController_showActionPickerViewForAction_fromViewController___block_invoke_2;
            v53[3] = &unk_278D02158;
            v54 = v57;
            v55 = v37;
            [v48 _addActionWithTitle:label style:0 handler:v56 shouldDismissHandler:v53];
          }

          v34 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        }

        while (v34);
      }

      v39 = MEMORY[0x277D750F8];
      v40 = _BCSLocalizedString();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __71__BCSAlertController_showActionPickerViewForAction_fromViewController___block_invoke_3;
      v50[3] = &unk_278D02180;
      v51 = WeakRetained;
      selfCopy2 = self;
      v41 = WeakRetained;
      v42 = [v39 actionWithTitle:v40 style:1 handler:v50];
      [v48 addAction:v42];

      [(BCSAlertController *)self _configurePopoverPresentationControllerForAlertController:v48 fromViewController:v7];
      [v7 presentViewController:v48 animated:1 completion:0];

      actionPickerItems = v46;
      goto LABEL_30;
    }

LABEL_20:
    if (v26)
    {
      [v48 _setHeaderContentViewController:v26];
      localizedDefaultActionDescription = [actionCopy localizedDefaultActionDescription];
      [v48 setMessage:localizedDefaultActionDescription];
    }

    goto LABEL_22;
  }

  v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v17)
  {
    [(BCSAlertController *)v17 showActionPickerViewForAction:v18 fromViewController:v19, v20, v21, v22, v23, v24];
  }

LABEL_31:
}

uint64_t __71__BCSAlertController_showActionPickerViewForAction_fromViewController___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 32) alertController:*(a1 + 40) didSelectActionItem:*(a1 + 48)];
  }

  else
  {
    return [*(a1 + 48) performAction];
  }
}

uint64_t __71__BCSAlertController_showActionPickerViewForAction_fromViewController___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  else
  {
    return [*(a1 + 40) shouldDismissAlertWhenActionIsTaken];
  }
}

void *__71__BCSAlertController_showActionPickerViewForAction_fromViewController___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result alertControllerDidCancel:*(a1 + 40)];
  }

  return result;
}

- (void)showFirstTimePromptToOpenApp:(id)app fromViewController:(id)controller
{
  appCopy = app;
  controllerCopy = controller;
  if ([appCopy length])
  {
    if (controllerCopy)
    {
      presentedViewController = [controllerCopy presentedViewController];

      if (presentedViewController)
      {
        v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v9)
        {
          [(BCSAlertController *)v9 showActionPickerViewForAction:v10 fromViewController:v11, v12, v13, v14, v15, v16];
        }
      }

      else
      {
        v33 = objc_alloc_init(MEMORY[0x277D75110]);
        [v33 setPreferredStyle:0];
        v45 = [(BCSAlertController *)self _createHeaderViewControllerWithAppIdentifier:appCopy];
        [v33 _setHeaderContentViewController:v45];
        v44 = [getLSApplicationProxyClass() applicationProxyForIdentifier:appCopy];
        v34 = MEMORY[0x277CCACA8];
        v35 = _BCSLocalizedString();
        localizedName = [v44 localizedName];
        v37 = [v34 stringWithFormat:v35, localizedName];
        [v33 setMessage:v37];

        v38 = MEMORY[0x277D750F8];
        v39 = _BCSLocalizedString();
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __70__BCSAlertController_showFirstTimePromptToOpenApp_fromViewController___block_invoke;
        v47[3] = &unk_278D02130;
        v47[4] = self;
        v40 = [v38 actionWithTitle:v39 style:0 handler:v47];
        [v33 addAction:v40];

        v41 = MEMORY[0x277D750F8];
        v42 = _BCSLocalizedString();
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __70__BCSAlertController_showFirstTimePromptToOpenApp_fromViewController___block_invoke_2;
        v46[3] = &unk_278D02130;
        v46[4] = self;
        v43 = [v41 actionWithTitle:v42 style:0 handler:v46];
        [v33 addAction:v43];

        [(BCSAlertController *)self _addActionForHandlingAlertDismissal:v33];
        [(BCSAlertController *)self _configurePopoverPresentationControllerForAlertController:v33 fromViewController:controllerCopy];
        [controllerCopy presentViewController:v33 animated:1 completion:0];
      }
    }

    else
    {
      v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v25)
      {
        [(BCSAlertController *)v25 showActionPickerViewForAction:v26 fromViewController:v27, v28, v29, v30, v31, v32];
      }
    }
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      [(BCSAlertController *)v17 showFirstTimePromptToOpenApp:v18 fromViewController:v19, v20, v21, v22, v23, v24];
    }
  }
}

void __70__BCSAlertController_showFirstTimePromptToOpenApp_fromViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained alertControllerDidAllow:*(a1 + 32)];
}

void __70__BCSAlertController_showFirstTimePromptToOpenApp_fromViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained alertControllerDidCancel:*(a1 + 32)];
}

- (void)showICloudSignInPromptWithTitle:(id)title message:(id)message fromViewController:(id)controller
{
  titleCopy = title;
  messageCopy = message;
  controllerCopy = controller;
  v11 = controllerCopy;
  if (controllerCopy)
  {
    presentedViewController = [controllerCopy presentedViewController];

    if (presentedViewController)
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v13)
      {
        [(BCSAlertController *)v13 showActionPickerViewForAction:v14 fromViewController:v15, v16, v17, v18, v19, v20];
      }
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x277D75110]);
      [v29 setPreferredStyle:0];
      v30 = [(BCSAlertController *)self _createHeaderViewControllerWithAppIdentifier:@"com.apple.barcodescanner.icloud"];
      [v29 _setHeaderContentViewController:v30];

      [v29 setMessage:messageCopy];
      v31 = MEMORY[0x277D750F8];
      v32 = _BCSLocalizedString();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __81__BCSAlertController_showICloudSignInPromptWithTitle_message_fromViewController___block_invoke;
      v38[3] = &unk_278D02130;
      v38[4] = self;
      v33 = [v31 actionWithTitle:v32 style:0 handler:v38];
      [v29 addAction:v33];

      v34 = MEMORY[0x277D750F8];
      v35 = _BCSLocalizedString();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __81__BCSAlertController_showICloudSignInPromptWithTitle_message_fromViewController___block_invoke_2;
      v37[3] = &unk_278D02130;
      v37[4] = self;
      v36 = [v34 actionWithTitle:v35 style:0 handler:v37];
      [v29 addAction:v36];

      [(BCSAlertController *)self _addActionForHandlingAlertDismissal:v29];
      [(BCSAlertController *)self _configurePopoverPresentationControllerForAlertController:v29 fromViewController:v11];
      [v11 presentViewController:v29 animated:1 completion:0];
    }
  }

  else
  {
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      [(BCSAlertController *)v21 showActionPickerViewForAction:v22 fromViewController:v23, v24, v25, v26, v27, v28];
    }
  }
}

void __81__BCSAlertController_showICloudSignInPromptWithTitle_message_fromViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained alertControllerDidAllow:*(a1 + 32)];
}

void __81__BCSAlertController_showICloudSignInPromptWithTitle_message_fromViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained alertControllerDidCancel:*(a1 + 32)];
}

- (void)showInvalidDataAlertForAction:(id)action fromViewController:(id)controller
{
  actionCopy = action;
  controllerCopy = controller;
  v8 = controllerCopy;
  if (controllerCopy)
  {
    presentedViewController = [controllerCopy presentedViewController];

    if (presentedViewController)
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v10)
      {
        [(BCSAlertController *)v10 showActionPickerViewForAction:v11 fromViewController:v12, v13, v14, v15, v16, v17];
      }
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x277D75110]);
      [v26 setPreferredStyle:0];
      if ([actionCopy codeType] == 3)
      {
        v27 = @"com.apple.barcodescanner.invalid-data.appclip";
      }

      else
      {
        v27 = @"com.apple.barcodescanner.invalid-data.qr";
      }

      v28 = [(BCSAlertController *)self _createHeaderViewControllerWithAppIdentifier:v27];
      [v26 _setHeaderContentViewController:v28];

      localizedDefaultActionDescription = [actionCopy localizedDefaultActionDescription];
      [v26 setMessage:localizedDefaultActionDescription];

      v30 = MEMORY[0x277D750F8];
      v31 = _BCSLocalizedString();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __71__BCSAlertController_showInvalidDataAlertForAction_fromViewController___block_invoke;
      v33[3] = &unk_278D02130;
      v33[4] = self;
      v32 = [v30 actionWithTitle:v31 style:1 handler:v33];
      [v26 addAction:v32];

      [(BCSAlertController *)self _configurePopoverPresentationControllerForAlertController:v26 fromViewController:v8];
      [v8 presentViewController:v26 animated:1 completion:0];
    }
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      [(BCSAlertController *)v18 showActionPickerViewForAction:v19 fromViewController:v20, v21, v22, v23, v24, v25];
    }
  }
}

void __71__BCSAlertController_showInvalidDataAlertForAction_fromViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained alertControllerDidCancel:*(a1 + 32)];
}

- (void)showErrorExplanationForAction:(id)action error:(id)error fromViewController:(id)controller
{
  actionCopy = action;
  errorCopy = error;
  controllerCopy = controller;
  v11 = controllerCopy;
  if (controllerCopy)
  {
    presentedViewController = [controllerCopy presentedViewController];

    if (presentedViewController)
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v13)
      {
        [(BCSAlertController *)v13 showActionPickerViewForAction:v14 fromViewController:v15, v16, v17, v18, v19, v20];
      }
    }

    else
    {
      domain = [errorCopy domain];
      v30 = [domain isEqualToString:*MEMORY[0x277CF0AE0]];

      if (v30)
      {
        WeakRetained = objc_alloc_init(MEMORY[0x277D75110]);
        [WeakRetained setPreferredStyle:0];
        localizedDescription = [errorCopy localizedDescription];
        defaultActionTargetApplicationBundleIdentifier = [actionCopy defaultActionTargetApplicationBundleIdentifier];
        if (!-[__CFString length](defaultActionTargetApplicationBundleIdentifier, "length") && [actionCopy conformsToProtocol:&unk_2853A31C0] && objc_msgSend(actionCopy, "isWiFiAction"))
        {

          defaultActionTargetApplicationBundleIdentifier = @"com.apple.barcodescanner.wifi";
        }

        v34 = [(BCSAlertController *)self _createHeaderViewControllerWithAppIdentifier:defaultActionTargetApplicationBundleIdentifier];
        [WeakRetained _setHeaderContentViewController:v34];

        [WeakRetained setMessage:localizedDescription];
        v35 = MEMORY[0x277D750F8];
        v36 = _BCSLocalizedString();
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __77__BCSAlertController_showErrorExplanationForAction_error_fromViewController___block_invoke;
        v38[3] = &unk_278D02130;
        v38[4] = self;
        v37 = [v35 actionWithTitle:v36 style:1 handler:v38];
        [WeakRetained addAction:v37];

        [(BCSAlertController *)self _configurePopoverPresentationControllerForAlertController:WeakRetained fromViewController:v11];
        [v11 presentViewController:WeakRetained animated:1 completion:0];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained alertControllerDidCancel:self];
      }
    }
  }

  else
  {
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      [(BCSAlertController *)v21 showActionPickerViewForAction:v22 fromViewController:v23, v24, v25, v26, v27, v28];
    }
  }
}

void __77__BCSAlertController_showErrorExplanationForAction_error_fromViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained alertControllerDidCancel:*(a1 + 32)];
}

- (BCSAlertControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createHeaderViewControllerWithAppIdentifier:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGImageRef _LICreateIconFromCachedBitmap(CFDataRef)"];
  [v0 handleFailureInFunction:v1 file:@"BCSAlertController.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_createPreviewControllerForDataDetectionActionPickerItem:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&dword_2419E7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSAlertController: failed to remove event %{public}@", &v2, 0xCu);
}

- (void)_createPreviewControllerForDataDetectionActionPickerItem:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"EKEvent *_DDUIEventForResults(EKEventStore *__strong, NSArray *__strong, NSDictionary *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"DataDetectorsUISoftLink.h" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

@end