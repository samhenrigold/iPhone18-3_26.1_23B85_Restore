@interface NSString
+ (id)localizedStringForKey:(id)key;
@end

@implementation NSString

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = DSSettingsBundle(keyCopy);
  v5 = [v4 localizedStringForKey:keyCopy value:keyCopy table:@"Localizable"];

  return v5;
}

@end