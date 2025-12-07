@interface OBAdditionalDisplayLanguageManager
- (OBAdditionalDisplayLanguageManager)initWithDisplayLanguage:(id)language;
- (id)didTapRightBarButtonItemForWelcomeController:(id)controller currentDisplayLanguage:(id)language;
- (void)configureNavigationItemRightBarButtonItemForWelcomeController:(id)controller currentDisplayLanguage:(id)language action:(SEL)action;
@end

@implementation OBAdditionalDisplayLanguageManager

- (OBAdditionalDisplayLanguageManager)initWithDisplayLanguage:(id)language
{
  languageCopy = language;
  v10.receiver = self;
  v10.super_class = OBAdditionalDisplayLanguageManager;
  v5 = [(OBAdditionalDisplayLanguageManager *)&v10 init];
  if (v5)
  {
    v6 = [languageCopy copy];
    [(OBAdditionalDisplayLanguageManager *)v5 setOriginalDisplayLanguage:v6];

    v7 = +[OBCapabilities sharedCapabilities];
    v8 = [v7 additionalDisplayLanguageForDisplayLanguage:languageCopy];
    [(OBAdditionalDisplayLanguageManager *)v5 setAdditionalDisplayLanguage:v8];
  }

  return v5;
}

- (void)configureNavigationItemRightBarButtonItemForWelcomeController:(id)controller currentDisplayLanguage:(id)language action:(SEL)action
{
  v44 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  languageCopy = language;
  v10 = _OBLoggingFacility(languageCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    additionalDisplayLanguage = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
    *buf = 138412802;
    v39 = controllerCopy;
    v40 = 2112;
    v41 = languageCopy;
    v42 = 2112;
    v43 = additionalDisplayLanguage;
    _os_log_impl(&dword_1B4FB6000, v10, OS_LOG_TYPE_DEFAULT, "configure toggle button with welcomeController %@ displayLanguage %@ self.additionalDisplayLanguage %@", buf, 0x20u);
  }

  additionalDisplayLanguage2 = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];

  if (additionalDisplayLanguage2)
  {
    additionalDisplayLanguage3 = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
    v15 = [languageCopy isEqualToString:additionalDisplayLanguage3];

    if (v15)
    {
      [(OBAdditionalDisplayLanguageManager *)self originalDisplayLanguage];
    }

    else
    {
      [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
    }
    v16 = ;
    v17 = _OBLoggingFacility(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v16;
      _os_log_impl(&dword_1B4FB6000, v17, OS_LOG_TYPE_DEFAULT, "configure toggle button using language %@", buf, 0xCu);
    }

    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [OBUtilities localizedString:@"ALTERNATE_LANGUAGE_BUTTON_TITLE" forTable:@"Localizable" inBundle:v18 forLanguage:v16];

    v21 = _OBLoggingFacility(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v19;
      _os_log_impl(&dword_1B4FB6000, v21, OS_LOG_TYPE_DEFAULT, "configure toggle button title %@", buf, 0xCu);
    }

    v23 = _OBLoggingFacility(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      navigationItem = [controllerCopy navigationItem];
      *buf = 138412290;
      v39 = navigationItem;
      _os_log_impl(&dword_1B4FB6000, v23, OS_LOG_TYPE_DEFAULT, "configure toggle button navigation item %@", buf, 0xCu);
    }

    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v19 style:0 target:controllerCopy action:action];
    navigationItem2 = [controllerCopy navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];

    navigationItem3 = [controllerCopy navigationItem];
    v29 = navigationItem3;
    if (rightBarButtonItem)
    {
      rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];
      v37[0] = rightBarButtonItem2;
      v37[1] = v25;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      navigationItem4 = [controllerCopy navigationItem];
      [navigationItem4 setRightBarButtonItems:v31];
    }

    else
    {
      [navigationItem3 setRightBarButtonItem:v25];
    }

    v34 = _OBLoggingFacility(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      navigationItem5 = [controllerCopy navigationItem];
      rightBarButtonItem3 = [navigationItem5 rightBarButtonItem];
      *buf = 138412290;
      v39 = rightBarButtonItem3;
      _os_log_impl(&dword_1B4FB6000, v34, OS_LOG_TYPE_DEFAULT, "configure toggle button navigation item right bar button item %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = _OBLoggingFacility(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4FB6000, v16, OS_LOG_TYPE_DEFAULT, "configure toggle button short-circuiting", buf, 2u);
    }
  }
}

- (id)didTapRightBarButtonItemForWelcomeController:(id)controller currentDisplayLanguage:(id)language
{
  languageCopy = language;
  controllerCopy = controller;
  scrollView = [controllerCopy scrollView];
  [scrollView setContentOffset:0 animated:{0.0, 0.0}];

  [controllerCopy updateNavigationBarAnimated:0];
  additionalDisplayLanguage = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
  LODWORD(scrollView) = [additionalDisplayLanguage isEqualToString:languageCopy];

  if (scrollView)
  {
    [(OBAdditionalDisplayLanguageManager *)self originalDisplayLanguage];
  }

  else
  {
    [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
  }
  v10 = ;

  return v10;
}

@end