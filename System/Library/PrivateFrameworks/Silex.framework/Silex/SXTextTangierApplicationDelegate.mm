@interface SXTextTangierApplicationDelegate
+ (void)setup;
@end

@implementation SXTextTangierApplicationDelegate

+ (void)setup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SXTextTangierApplicationDelegate_setup__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, block);
  }
}

void __41__SXTextTangierApplicationDelegate_setup__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = __applicationDelegate;
  __applicationDelegate = v1;

  [MEMORY[0x1E69D5698] setSurrogateDelegate:__applicationDelegate];
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];
  v5 = *MEMORY[0x1E696A238];
  v6 = [v4 valueForKey:*MEMORY[0x1E696A238]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AAA8]);
    v8 = [MEMORY[0x1E696AF00] currentThread];
    v9 = [v8 threadDictionary];
    [v9 setValue:v10 forKey:v5];
  }
}

@end