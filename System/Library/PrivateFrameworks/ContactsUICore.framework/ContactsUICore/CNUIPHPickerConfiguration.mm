@interface CNUIPHPickerConfiguration
+ (id)configurationForMeContact:(BOOL)contact;
- (CNUIPHPickerConfiguration)initWithWrappedConfiguration:(id)configuration;
@end

@implementation CNUIPHPickerConfiguration

- (CNUIPHPickerConfiguration)initWithWrappedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CNUIPHPickerConfiguration;
  v6 = [(CNUIPHPickerConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedConfiguration, configuration);
  }

  return v7;
}

+ (id)configurationForMeContact:(BOOL)contact
{
  contactCopy = contact;
  v17 = 0;
  v5 = [CNUIPHPhotoLibrary photoLibraryWithError:&v17];
  v6 = v17;
  if (!v5)
  {
    v7 = +[CNUICoreLogProvider photos_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CNUIPHPickerConfiguration configurationForMeContact:];
    }
  }

  v8 = objc_alloc(getPHPickerConfigurationClass());
  wrappedLibrary = [v5 wrappedLibrary];
  v10 = [v8 initWithPhotoLibrary:wrappedLibrary];

  imagesFilter = [(objc_class *)getPHPickerFilterClass() imagesFilter];
  [v10 setFilter:imagesFilter];

  v12 = [v10 _setDisabledPrivateCapabilities:8];
  PHPickerSuggestionGroupClass = get_PHPickerSuggestionGroupClass(v12);
  if (contactCopy)
  {
    [PHPickerSuggestionGroupClass deviceOwnerSuggestionGroup];
  }

  else
  {
    [PHPickerSuggestionGroupClass wallpaperLikeSuggestionGroup];
  }
  v14 = ;
  [v10 set_suggestionGroup:v14];

  v15 = [[self alloc] initWithWrappedConfiguration:v10];

  return v15;
}

@end