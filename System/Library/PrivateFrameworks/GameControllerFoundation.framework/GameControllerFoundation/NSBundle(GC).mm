@interface NSBundle(GC)
+ (id)GameControllerFoundationBundle;
+ (id)GameControllerFrameworkBundle;
+ (id)gc_bundleForExecutableAtPath:()GC;
+ (id)gc_bundleForExecutableAtURL:()GC;
@end

@implementation NSBundle(GC)

+ (id)GameControllerFoundationBundle
{
  if (GameControllerFoundationBundle_onceToken != -1)
  {
    +[NSBundle(GC) GameControllerFoundationBundle];
  }

  v2 = GameControllerFoundationBundle_Bundle;

  return v2;
}

+ (id)GameControllerFrameworkBundle
{
  if (GameControllerFrameworkBundle_onceToken != -1)
  {
    +[NSBundle(GC) GameControllerFrameworkBundle];
  }

  v2 = GameControllerFrameworkBundle_Bundle;

  return v2;
}

+ (id)gc_bundleForExecutableAtURL:()GC
{
  v3 = _CFBundleCopyBundleURLForExecutableURL();
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)gc_bundleForExecutableAtPath:()GC
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v3 = [self gc_bundleForExecutableAtURL:v2];

  return v3;
}

@end