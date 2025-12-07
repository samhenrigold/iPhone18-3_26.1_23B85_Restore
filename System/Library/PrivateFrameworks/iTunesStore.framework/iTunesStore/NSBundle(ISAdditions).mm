@interface NSBundle(ISAdditions)
+ (void)pathForITunesStoreResource:()ISAdditions ofType:;
@end

@implementation NSBundle(ISAdditions)

+ (void)pathForITunesStoreResource:()ISAdditions ofType:
{
  result = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (!result)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

    return [v7 pathForResource:a3 ofType:a4];
  }

  return result;
}

@end