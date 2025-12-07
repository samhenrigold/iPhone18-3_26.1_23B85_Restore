@interface VSCredentialEntryViewController_iOS
- (CGSize)preferredLogoSize;
- (VSAuthenticationViewControllerDelegate)delegate;
- (VSCredentialEntryViewController_iOS)initWithNibName:(id)name bundle:(id)bundle;
- (id)_createSpecifierForField:(id)field;
- (id)_credentialEntryFieldForSpecifier:(id)specifier;
- (id)_linkURL;
- (id)_specifierForTextField:(id)field;
- (id)_textFieldForSpecifier:(id)specifier;
- (id)_textForSpecifier:(id)specifier;
- (id)pickerTitle;
- (id)pickerViewCell:(id)cell titleForRow:(int64_t)row;
- (id)textFieldTextDidChangeObserver;
- (int64_t)pickerViewCellInitialSelectedRow:(id)row;
- (int64_t)pickerViewCellNumberOfRows:(id)rows;
- (void)_jsButtonTapped:(id)tapped;
- (void)_linkButtonTapped:(id)tapped;
- (void)_presentError:(id)error;
- (void)_setText:(id)text forSpecifier:(id)specifier;
- (void)_startObservingViewModel:(id)model;
- (void)_startValidation;
- (void)_stopObservingViewModel:(id)model;
- (void)buildButtonsIfNeeded;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)doneButtonPressed:(id)pressed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pickerButtonSelected;
- (void)pickerViewCell:(id)cell didSelectRow:(int64_t)row;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setViewModel:(id)model;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation VSCredentialEntryViewController_iOS

- (VSCredentialEntryViewController_iOS)initWithNibName:(id)name bundle:(id)bundle
{
  v23[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
  v22.receiver = self;
  v22.super_class = VSCredentialEntryViewController_iOS;
  v8 = [(VSCredentialEntryViewController_iOS *)&v22 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CE2348]);
    [v9 setObject:v8];
    [(VSCredentialEntryViewController_iOS *)v8 setWeakTarget:v9];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    objc_initWeak(&location, v8);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __62__VSCredentialEntryViewController_iOS_initWithNibName_bundle___block_invoke;
    v19 = &unk_279E1A638;
    objc_copyWeak(&v20, &location);
    v12 = [defaultCenter addObserverForName:*MEMORY[0x277D770B0] object:0 queue:mainQueue usingBlock:&v16];
    objc_storeWeak(&v8->_textFieldTextDidChangeObserver, v12);

    v23[0] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:{1, v16, v17, v18, v19}];
    v14 = [(VSCredentialEntryViewController_iOS *)v8 registerForTraitChanges:v13 withHandler:&__block_literal_global_18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  [(VSCredentialEntryViewController_iOS *)self _stopObservingViewModel:self->_viewModel];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_textFieldTextDidChangeObserver);
  if (WeakRetained)
  {
    [defaultCenter removeObserver:WeakRetained];
  }

  v5.receiver = self;
  v5.super_class = VSCredentialEntryViewController_iOS;
  [(ACUIViewController *)&v5 dealloc];
}

- (void)_presentError:(id)error
{
  errorCopy = error;
  v5 = VSErrorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(VSCredentialEntryViewController_iOS *)errorCopy _presentError:v5];
  }

  v6 = VSAlertForError(errorCopy, 0);
  [(VSCredentialEntryViewController_iOS *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_specifierForTextField:(id)field
{
  v20 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  specifiers = [(ACUIViewController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(specifiers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(VSCredentialEntryViewController_iOS *)self _textFieldForSpecifier:v10];
        v12 = v11;
        if (v11 == fieldCopy)
        {
          v13 = v10;

          goto LABEL_11;
        }
      }

      v7 = [specifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_textFieldForSpecifier:(id)specifier
{
  v4 = [(VSCredentialEntryViewController_iOS *)self indexPathForSpecifier:specifier];
  table = [(VSCredentialEntryViewController_iOS *)self table];
  v6 = [table cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The cellOrNil parameter must not be nil."];
    }

    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x277CBEAD8];
      v9 = *MEMORY[0x277CBE660];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v8 raise:v9 format:{@"Unexpectedly, cell was %@, instead of PSEditableTableCell.", v11}];
    }

    textField = [v7 textField];
  }

  else
  {
    textField = 0;
  }

  return textField;
}

- (id)_credentialEntryFieldForSpecifier:(id)specifier
{
  v23 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  credentialEntryFields = [viewModel credentialEntryFields];

  v7 = [credentialEntryFields countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(credentialEntryFields);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        identifier = [v12 identifier];
        identifier2 = [specifierCopy identifier];
        v15 = [identifier isEqualToString:identifier2];

        if (v15)
        {
          v16 = v12;

          v9 = v16;
        }
      }

      v8 = [credentialEntryFields countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_textForSpecifier:(id)specifier
{
  v3 = [(VSCredentialEntryViewController_iOS *)self _credentialEntryFieldForSpecifier:specifier];
  text = [v3 text];

  return text;
}

- (void)_setText:(id)text forSpecifier:(id)specifier
{
  textCopy = text;
  v7 = &stru_2880B8BB0;
  if (textCopy)
  {
    v7 = textCopy;
  }

  v10 = v7;
  v8 = [(VSCredentialEntryViewController_iOS *)self _credentialEntryFieldForSpecifier:specifier];
  [v8 setText:v10];

  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [viewModel validateCredentialEntryFields];
}

- (id)_linkURL
{
  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  linkURL = [viewModel linkURL];

  return linkURL;
}

- (void)_linkButtonTapped:(id)tapped
{
  _linkURL = [(VSCredentialEntryViewController_iOS *)self _linkURL];
  if (_linkURL)
  {
    v4 = _linkURL;
    VSOpenURL();
    _linkURL = v4;
  }
}

- (void)_jsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  buttons = [(VSCredentialEntryViewController_iOS *)self buttons];
  v6 = [buttons indexOfObject:tappedCopy];

  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [viewModel buttonTappedAtIndex:v6];
}

- (void)_startValidation
{
  table = [(VSCredentialEntryViewController_iOS *)self table];
  firstResponder = [table firstResponder];
  [firstResponder resignFirstResponder];
}

- (void)_startObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_DoneButton;
  modelCopy = model;
  [modelCopy addObserver:self forKeyPath:@"beginValidationButtonEnabled" options:4 context:v4];
  [modelCopy addObserver:self forKeyPath:@"logo" options:4 context:kVSKeyValueObservingContext_Image];
  [modelCopy addObserver:self forKeyPath:@"validationState" options:3 context:kVSKeyValueObservingContext_ValidationState_0];
  picker = [modelCopy picker];

  [picker addObserver:self forKeyPath:@"selectedIndex" options:4 context:kVSKeyValueObservingContext_PickerSelectedItemIndex];
}

- (void)_stopObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_DoneButton;
  modelCopy = model;
  [modelCopy removeObserver:self forKeyPath:@"beginValidationButtonEnabled" context:v4];
  [modelCopy removeObserver:self forKeyPath:@"logo" context:kVSKeyValueObservingContext_Image];
  [modelCopy removeObserver:self forKeyPath:@"validationState" context:kVSKeyValueObservingContext_ValidationState_0];
  picker = [modelCopy picker];

  [picker removeObserver:self forKeyPath:@"selectedIndex" context:kVSKeyValueObservingContext_PickerSelectedItemIndex];
}

- (id)_createSpecifierForField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isSecure])
  {
    v5 = 12;
  }

  else
  {
    v5 = 8;
  }

  v6 = MEMORY[0x277D3FB40];
  title = [fieldCopy title];
  weakTarget = [(VSCredentialEntryViewController_iOS *)self weakTarget];
  v9 = [v6 preferenceSpecifierNamed:title target:weakTarget set:sel__setText_forSpecifier_ get:sel__textForSpecifier_ detail:0 cell:v5 edit:0];

  if ([fieldCopy isSecure])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v9 setProperty:v10 forKey:*MEMORY[0x277D40080]];
  }

  [v9 setKeyboardType:objc_msgSend(fieldCopy autoCaps:"keyboardType") autoCorrection:{objc_msgSend(fieldCopy, "autocapitalizationType"), objc_msgSend(fieldCopy, "autocorrectionType")}];
  placeholder = [fieldCopy placeholder];
  [v9 setPlaceholder:placeholder];

  return v9;
}

- (void)setViewModel:(id)model
{
  v43 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    [(VSCredentialEntryViewController_iOS *)self _stopObservingViewModel:?];
    objc_storeStrong(&self->_viewModel, model);
    title = [(VSViewModel *)modelCopy title];
    [(VSCredentialEntryViewController_iOS *)self setTitle:title];

    v7 = objc_alloc(MEMORY[0x277D751E0]);
    beginValidationButtonTitle = [(VSCuratedViewModel *)modelCopy beginValidationButtonTitle];
    v9 = [v7 initWithTitle:beginValidationButtonTitle style:0 target:self action:sel_doneButtonPressed_];

    [v9 setEnabled:0];
    [(ACUIViewController *)self setDoneButton:v9];
    array = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    credentialEntryFields = [(VSCredentialEntryViewModel *)modelCopy credentialEntryFields];
    v12 = [credentialEntryFields countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(credentialEntryFields);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [(VSCredentialEntryViewController_iOS *)self _createSpecifierForField:v16];
          identifier = [v16 identifier];
          [v17 setIdentifier:identifier];

          [array addObject:v17];
        }

        v13 = [credentialEntryFields countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }

    picker = [(VSCredentialEntryViewModel *)modelCopy picker];

    if (picker)
    {
      picker2 = [(VSCredentialEntryViewModel *)modelCopy picker];

      if (!picker2)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [viewModel picker] parameter must not be nil."];
      }

      picker3 = [(VSCredentialEntryViewModel *)modelCopy picker];
      [(VSCredentialEntryViewController_iOS *)self setPicker:picker3];
      v22 = MEMORY[0x277D3FAD8];
      pickerTitle = [(VSCredentialEntryViewController_iOS *)self pickerTitle];
      v24 = [v22 preferenceSpecifierNamed:pickerTitle target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v24 setButtonAction:sel_pickerButtonSelected];
      [(VSCredentialEntryViewController_iOS *)self setPickerButtonSpecifier:v24];
      [array addObject:v24];
    }

    if ([(VSCuratedViewModel *)modelCopy showFooter])
    {
      message = [(VSCuratedViewModel *)modelCopy message];
      additionalMessage = [(VSCredentialEntryViewModel *)modelCopy additionalMessage];
      v27 = additionalMessage;
      if (message && [additionalMessage length])
      {
        v28 = message;
        if (!v27)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The additionalMessageOrNil parameter must not be nil."];
        }

        v41[0] = v28;
        v41[1] = v27;
        v29 = MEMORY[0x277CBEA60];
        v30 = v27;
        v31 = [v29 arrayWithObjects:v41 count:2];

        message = [v31 componentsJoinedByString:@"\n\n"];
      }

      notice = [(VSCuratedViewModel *)modelCopy notice];
      footerText = [(VSCuratedViewModel *)modelCopy footerText];
      v34 = VSSpecifierForFooter(message, notice, footerText);
      [array addObject:v34];
    }

    [(VSCredentialEntryViewController_iOS *)self setSpecifiers:array];
    logoView = [(VSCredentialEntryViewController_iOS *)self logoView];
    logoAccessibilityLabel = [(VSCuratedViewModel *)modelCopy logoAccessibilityLabel];
    [logoView setAccessibilityLabel:logoAccessibilityLabel];

    [(VSCredentialEntryViewController_iOS *)self _startObservingViewModel:modelCopy];
  }
}

- (void)buildButtonsIfNeeded
{
  v40 = *MEMORY[0x277D85DE8];
  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  if (viewModel)
  {
    buttonView = [(VSCredentialEntryViewController_iOS *)self buttonView];
    [buttonView removeAllButtons];

    v34 = viewModel;
    v5 = viewModel;
    [(VSCredentialEntryViewController_iOS *)self setButtons:MEMORY[0x277CBEBF8]];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = v5;
    buttons = [v5 buttons];
    v7 = [buttons countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(buttons);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = objc_alloc_init(VSMultilineButton);
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [(VSMultilineButton *)v12 setTitleColor:whiteColor forState:1];

          title = [v11 title];
          [(VSMultilineButton *)v12 setTitle:title forState:0];

          titleLabel = [(VSMultilineButton *)v12 titleLabel];
          [titleLabel setTextAlignment:1];

          titleLabel2 = [(VSMultilineButton *)v12 titleLabel];
          [titleLabel2 setNumberOfLines:0];

          titleLabel3 = [(VSMultilineButton *)v12 titleLabel];
          [titleLabel3 setLineBreakMode:0];

          [(VSMultilineButton *)v12 addTarget:self action:sel__jsButtonTapped_ forControlEvents:64];
          buttonView2 = [(VSCredentialEntryViewController_iOS *)self buttonView];
          [buttonView2 addButton:v12];

          buttons2 = [(VSCredentialEntryViewController_iOS *)self buttons];
          v20 = [buttons2 mutableCopy];
          v21 = v20;
          if (v20)
          {
            array = v20;
          }

          else
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          v23 = array;

          [v23 addObject:v12];
          v24 = [v23 copy];
          [(VSCredentialEntryViewController_iOS *)self setButtons:v24];
        }

        v8 = [buttons countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v8);
    }

    linkURL = [v33 linkURL];

    if (linkURL)
    {
      v26 = objc_alloc_init(VSMultilineButton);
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [(VSMultilineButton *)v26 setTitleColor:whiteColor2 forState:1];

      linkTitle = [v33 linkTitle];
      [(VSMultilineButton *)v26 setTitle:linkTitle forState:0];

      titleLabel4 = [(VSMultilineButton *)v26 titleLabel];
      [titleLabel4 setNumberOfLines:0];

      titleLabel5 = [(VSMultilineButton *)v26 titleLabel];
      [titleLabel5 setLineBreakMode:0];

      titleLabel6 = [(VSMultilineButton *)v26 titleLabel];
      [titleLabel6 setTextAlignment:1];

      [(VSMultilineButton *)v26 addTarget:self action:sel__linkButtonTapped_ forControlEvents:64];
      [(VSCredentialEntryViewController_iOS *)self setLinkButton:v26];
      buttonView3 = [(VSCredentialEntryViewController_iOS *)self buttonView];
      [buttonView3 addButton:v26];
    }

    viewModel = v34;
  }
}

- (void)pickerButtonSelected
{
  pickerSpecifier = [(VSCredentialEntryViewController_iOS *)self pickerSpecifier];

  if (pickerSpecifier)
  {
    specifiers = [(ACUIViewController *)self specifiers];
    v12 = [specifiers mutableCopy];

    pickerSpecifier2 = [(VSCredentialEntryViewController_iOS *)self pickerSpecifier];

    if (!pickerSpecifier2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self pickerSpecifier] parameter must not be nil."];
    }

    pickerSpecifier3 = [(VSCredentialEntryViewController_iOS *)self pickerSpecifier];
    [v12 removeObject:pickerSpecifier3];

    [(VSCredentialEntryViewController_iOS *)self setPickerSpecifier:0];
    [(VSCredentialEntryViewController_iOS *)self setSpecifiers:v12];
  }

  else
  {
    v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_2880B8BB0 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [v12 setIdentifier:@"TIME_PICKER"];
    v7 = MEMORY[0x277CCABB0];
    +[VSPSPickerTableViewCell preferredHeight];
    v8 = [v7 numberWithDouble:?];
    [v12 setProperty:v8 forKey:*MEMORY[0x277D40140]];

    [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(VSCredentialEntryViewController_iOS *)self setPickerSpecifier:v12];
    specifiers2 = [(ACUIViewController *)self specifiers];
    v10 = [specifiers2 mutableCopy];

    pickerButtonSpecifier = [(VSCredentialEntryViewController_iOS *)self pickerButtonSpecifier];
    [v10 ps_insertObject:v12 afterObject:pickerButtonSpecifier];

    [(VSCredentialEntryViewController_iOS *)self setSpecifiers:v10];
  }
}

- (id)pickerTitle
{
  picker = [(VSCredentialEntryViewController_iOS *)self picker];

  if (!picker)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self picker] parameter must not be nil."];
  }

  picker2 = [(VSCredentialEntryViewController_iOS *)self picker];
  title = [picker2 title];
  v6 = MEMORY[0x277CCACA8];
  picker3 = [(VSCredentialEntryViewController_iOS *)self picker];
  pickerItemAtCurrentIndex = [picker3 pickerItemAtCurrentIndex];
  itemName = [pickerItemAtCurrentIndex itemName];
  v10 = [v6 stringWithFormat:@"%@ %@", title, itemName];

  return v10;
}

- (id)pickerViewCell:(id)cell titleForRow:(int64_t)row
{
  picker = [(VSCredentialEntryViewController_iOS *)self picker];

  if (!picker)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self picker] parameter must not be nil."];
  }

  picker2 = [(VSCredentialEntryViewController_iOS *)self picker];
  pickerItems = [picker2 pickerItems];
  v9 = [pickerItems objectAtIndex:row];
  itemName = [v9 itemName];

  return itemName;
}

- (int64_t)pickerViewCellInitialSelectedRow:(id)row
{
  picker = [(VSCredentialEntryViewController_iOS *)self picker];
  selectedIndex = [picker selectedIndex];

  return selectedIndex;
}

- (int64_t)pickerViewCellNumberOfRows:(id)rows
{
  picker = [(VSCredentialEntryViewController_iOS *)self picker];
  pickerItems = [picker pickerItems];
  v5 = [pickerItems count];

  return v5;
}

- (void)pickerViewCell:(id)cell didSelectRow:(int64_t)row
{
  picker = [(VSCredentialEntryViewController_iOS *)self picker];
  [picker setSelectedIndex:row];

  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [viewModel pickerDidSelectRow:row];

  pickerButtonSpecifier = [(VSCredentialEntryViewController_iOS *)self pickerButtonSpecifier];
  pickerTitle = [(VSCredentialEntryViewController_iOS *)self pickerTitle];
  [pickerButtonSpecifier setName:pickerTitle];

  pickerButtonSpecifier2 = [(VSCredentialEntryViewController_iOS *)self pickerButtonSpecifier];
  [(VSCredentialEntryViewController_iOS *)self reloadSpecifier:pickerButtonSpecifier2];
}

- (CGSize)preferredLogoSize
{
  logoView = [(VSCredentialEntryViewController_iOS *)self logoView];
  [logoView preferredImageSize];
  v4 = v3;
  v6 = v5;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  v10 = v6 * v9;
  v11 = v4 * v9;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (kVSKeyValueObservingContext_DoneButton == context)
  {
    doneButton = [(ACUIViewController *)self doneButton];
    viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
    [doneButton setEnabled:{objc_msgSend(viewModel, "isBeginValidationButtonEnabled")}];

LABEL_14:
    goto LABEL_15;
  }

  if (kVSKeyValueObservingContext_Image == context)
  {
    if (!objectCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectOrNil parameter must not be nil."];
    }

    v16 = objectCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = MEMORY[0x277CBEAD8];
      v18 = *MEMORY[0x277CBE660];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [v17 raise:v18 format:{@"Unexpectedly, object was %@, instead of VSCredentialEntryViewModel.", v20}];
    }

    doneButton = v16;
    if (!pathCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    }

    v21 = [doneButton valueForKeyPath:pathCopy];
    logoView = [(VSCredentialEntryViewController_iOS *)self logoView];
    [logoView setLogo:v21];

    goto LABEL_14;
  }

  if (kVSKeyValueObservingContext_ValidationState_0 == context)
  {
    v23 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    unsignedIntegerValue = [v23 unsignedIntegerValue];

    v25 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    unsignedIntegerValue2 = [v25 unsignedIntegerValue];

    v27 = VSDefaultLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v35 = unsignedIntegerValue;
      v36 = 2048;
      v37 = unsignedIntegerValue2;
      _os_log_impl(&dword_270DD4000, v27, OS_LOG_TYPE_DEFAULT, "credential entry controller validation state changed from %lu to %lu", buf, 0x16u);
    }

    if (unsignedIntegerValue2 != 3)
    {
      if (unsignedIntegerValue2 == 2)
      {
        if (unsignedIntegerValue)
        {
          goto LABEL_15;
        }
      }

      else if (unsignedIntegerValue2 != 1)
      {
        goto LABEL_15;
      }

      [(VSCredentialEntryViewController_iOS *)self _startValidation];
      goto LABEL_15;
    }

    if (unsignedIntegerValue == 2)
    {
      [(ACUIViewController *)self setCellsChecked:1];
    }
  }

  else if (kVSKeyValueObservingContext_PickerSelectedItemIndex == context)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __86__VSCredentialEntryViewController_iOS_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v32 = &unk_279E19290;
    selfCopy = self;
    VSPerformBlockOnMainThread();
  }

  else
  {
    v28.receiver = self;
    v28.super_class = VSCredentialEntryViewController_iOS;
    [(VSCredentialEntryViewController_iOS *)&v28 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_15:
}

- (void)cancelButtonTapped:(id)tapped
{
  v16 = *MEMORY[0x277D85DE8];
  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  credentialEntryFields = [viewModel credentialEntryFields];
  v6 = [credentialEntryFields countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(credentialEntryFields);
        }

        [*(*(&v11 + 1) + 8 * v9++) setText:&stru_2880B8BB0];
      }

      while (v7 != v9);
      v7 = [credentialEntryFields countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  delegate = [(VSCredentialEntryViewController_iOS *)self delegate];
  [delegate authenticationViewControllerDidCancel:self];
}

- (void)doneButtonPressed:(id)pressed
{
  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [viewModel setValidationState:1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = VSCredentialEntryViewController_iOS;
  [(ACUIViewController *)&v15 viewDidLoad];
  table = [(VSCredentialEntryViewController_iOS *)self table];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    table2 = [(VSCredentialEntryViewController_iOS *)self table];
    [table2 setViewController:self];
  }

  [table setPreservesSuperviewLayoutMargins:1];
  v5 = [VSIdentityProviderLogoView alloc];
  tableHeaderView = [table tableHeaderView];
  [tableHeaderView frame];
  v7 = [(VSIdentityProviderLogoView *)v5 initWithFrame:?];

  viewModel = [(VSCredentialEntryViewController_iOS *)self viewModel];
  logo = [viewModel logo];
  [(VSIdentityProviderLogoView *)v7 setLogo:logo];

  viewModel2 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  logoAccessibilityLabel = [viewModel2 logoAccessibilityLabel];
  [(VSIdentityProviderLogoView *)v7 setAccessibilityLabel:logoAccessibilityLabel];

  [(VSCredentialEntryViewController_iOS *)self setLogoView:v7];
  [(VSIdentityProviderLogoView *)v7 sizeToFit];
  [table setTableHeaderView:v7];
  v12 = [VSIdentityProviderButtonView alloc];
  tableFooterView = [table tableFooterView];
  [tableFooterView frame];
  v14 = [(VSIdentityProviderButtonView *)v12 initWithFrame:?];

  [(VSCredentialEntryViewController_iOS *)self setButtonView:v14];
  [(VSCredentialEntryViewController_iOS *)self buildButtonsIfNeeded];
  [(VSIdentityProviderButtonView *)v14 sizeToFit];
  [table setTableFooterView:v14];
  VSAuthenticationViewControllerViewDidLoad(self);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VSCredentialEntryViewController_iOS;
  [(VSCredentialEntryViewController_iOS *)&v4 viewWillAppear:appear];
  [(VSCredentialEntryViewController_iOS *)self buildButtonsIfNeeded];
  VSAuthenticationViewControllerViewWillAppear(self);
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VSCredentialEntryViewController_iOS;
  [(VSCredentialEntryViewController_iOS *)&v4 viewDidAppear:appear];
  VSAuthenticationViewControllerViewDidAppear(self);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VSCredentialEntryViewController_iOS;
  [(VSCredentialEntryViewController_iOS *)&v4 viewWillDisappear:disappear];
  VSAuthenticationViewControllerViewWillDisappear(self);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VSCredentialEntryViewController_iOS;
  [(VSCredentialEntryViewController_iOS *)&v4 viewDidDisappear:disappear];
  VSAuthenticationViewControllerViewDidDisappear(self);
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = VSCredentialEntryViewController_iOS;
  [(VSCredentialEntryViewController_iOS *)&v2 viewDidLayoutSubviews];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([MEMORY[0x277CE85A0] instancesRespondToSelector:a2])
  {
    v6.receiver = self;
    v6.super_class = VSCredentialEntryViewController_iOS;
    [(VSCredentialEntryViewController_iOS *)&v6 scrollViewDidScroll:scrollCopy];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(VSCredentialEntryViewController_iOS *)self buttonView:coordinator];
  subviews = [v5 subviews];

  v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 frame];
        v13 = width - v12;
        [v11 setFrame:floorf(v13 * 0.5)];
      }

      v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (VSAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)textFieldTextDidChangeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldTextDidChangeObserver);

  return WeakRetained;
}

- (void)_presentError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Will present error: %@", &v2, 0xCu);
}

@end