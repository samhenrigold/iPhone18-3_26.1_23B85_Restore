@interface NSBundle(MediaControls)
+ (id)mediaControlsBundle;
@end

@implementation NSBundle(MediaControls)

+ (id)mediaControlsBundle
{
  if (mediaControlsBundle___once != -1)
  {
    +[NSBundle(MediaControls) mediaControlsBundle];
  }

  v2 = mediaControlsBundle___mediaControlsBundle;

  return v2;
}

@end