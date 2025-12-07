@interface BookEPUBWebProcessController
- (BookEPUBWebProcessPlugin)webProcessPlugin;
- (void)enableAXWithIdentifier:(id)identifier;
- (void)registerFontFamily:(id)family completion:(id)completion;
- (void)updateAXCurrentReadingStateWithMessage:(id)message forValue:(id)value;
@end

@implementation BookEPUBWebProcessController

- (void)registerFontFamily:(id)family completion:(id)completion
{
  familyCopy = family;
  completionCopy = completion;
  v26[0] = kCTFontFamilyNameAttribute;
  v26[1] = kCTFontDownloadedAttribute;
  v27[0] = familyCopy;
  v27[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v8 = CTFontDescriptorCreateWithAttributes(v7);

  v10 = _BookEPUBWebProcessPluginLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = familyCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Attempting registration for #fontFamily '%{public}@'", buf, 0xCu);
  }

  if (!v8)
  {
    v12 = _BookEPUBWebProcessPluginLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = familyCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to get font descriptor for #fontFamily:'%{public}@'", buf, 0xCu);
    }
  }

  v23 = v8;
  v13 = [NSArray arrayWithObjects:&v23 count:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_9F58;
  v19[3] = &unk_20860;
  v14 = familyCopy;
  v20 = v14;
  v22 = v8;
  v15 = completionCopy;
  v21 = v15;
  matched = CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v13, 0, v19);

  if (!matched)
  {
    v18 = _BookEPUBWebProcessPluginLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_FAULT, "Failed to get font descriptor for #fontFamily: %{public}@", buf, 0xCu);
    }

    CFRelease(v8);
    (*(v15 + 2))(v15, 0);
  }
}

- (void)enableAXWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  webProcessPlugin = [(BookEPUBWebProcessController *)self webProcessPlugin];
  v6 = _BookEPUBWebProcessPluginLog(webProcessPlugin);
  v7 = v6;
  if (webProcessPlugin)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = webProcessPlugin;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Enabling AX on:%@", &v9, 0xCu);
    }

    v8 = +[BEAccessibilityManager sharedInstance];
    [BEAXWebContentUtilities setWebProcessPlugin:webProcessPlugin];
    [webProcessPlugin setBe_identifier:identifierCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error initializing AX - no webProcessPlugin", &v9, 2u);
    }
  }
}

- (void)updateAXCurrentReadingStateWithMessage:(id)message forValue:(id)value
{
  messageCopy = message;
  valueCopy = value;
  webProcessPlugin = [(BookEPUBWebProcessController *)self webProcessPlugin];
  v9 = webProcessPlugin;
  if (webProcessPlugin)
  {
    [webProcessPlugin updateCurrentReadingState:valueCopy forKeyPath:messageCopy];
  }

  else
  {
    v10 = _BookEPUBWebProcessPluginLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Error passing AX message - no webProcessPlugin", v11, 2u);
    }
  }
}

- (BookEPUBWebProcessPlugin)webProcessPlugin
{
  WeakRetained = objc_loadWeakRetained(&self->_webProcessPlugin);

  return WeakRetained;
}

@end