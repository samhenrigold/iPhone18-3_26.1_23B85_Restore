@interface SUISPresentationControllerHelper
+ (void)updateSheetPresentationController:(id)controller withConfiguration:(id)configuration;
@end

@implementation SUISPresentationControllerHelper

+ (void)updateSheetPresentationController:(id)controller withConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  v7 = +[NSNull null];

  if (v7 != configurationCopy)
  {
    v9 = sub_100001D50(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "set sheet configuration:%@", &v10, 0xCu);
    }

    [controllerCopy _setConfiguration:configurationCopy];
  }
}

@end