@interface GEOConfigKeyChangeNotification
- (BOOL)isValid;
@end

@implementation GEOConfigKeyChangeNotification

- (BOOL)isValid
{
  keyStrings = [(GEOConfigKeyChangeNotification *)self keyStrings];
  if ([keyStrings count])
  {
    v4 = [(GEOConfigKeyChangeNotification *)self keyOptions]!= 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end