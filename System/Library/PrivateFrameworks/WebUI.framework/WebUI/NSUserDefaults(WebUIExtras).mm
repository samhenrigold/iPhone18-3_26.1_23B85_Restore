@interface NSUserDefaults(WebUIExtras)
+ (id)webui_defaults;
@end

@implementation NSUserDefaults(WebUIExtras)

+ (id)webui_defaults
{
  if (webui_defaults_onceToken != -1)
  {
    +[NSUserDefaults(WebUIExtras) webui_defaults];
  }

  v2 = webui_defaults_userDefaults;

  return v2;
}

@end