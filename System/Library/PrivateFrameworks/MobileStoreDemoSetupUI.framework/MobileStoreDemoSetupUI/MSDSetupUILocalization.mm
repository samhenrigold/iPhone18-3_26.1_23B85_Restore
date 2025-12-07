@interface MSDSetupUILocalization
+ (id)localizedStringForKey:(id)key;
+ (id)localizedStringForKey:(id)key withStringArgument:(id)argument;
@end

@implementation MSDSetupUILocalization

+ (id)localizedStringForKey:(id)key
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v6 = [v4 bundleWithPath:@"/System/Library/PrivateFrameworks/MobileStoreDemoSetupUI.framework"];
  v7 = [v6 localizedStringForKey:keyCopy value:&stru_286AE2298 table:@"Localizable"];

  v8 = [v3 localizedStringWithFormat:v7];

  return v8;
}

+ (id)localizedStringForKey:(id)key withStringArgument:(id)argument
{
  argumentCopy = argument;
  v6 = [MSDSetupUILocalization localizedStringForKey:key];
  v12 = 0;
  argumentCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v12, argumentCopy];

  v8 = v12;
  v9 = v8;
  if (!argumentCopy)
  {
    v10 = defaultLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MSDSetupUILocalization *)v6 localizedStringForKey:v9 withStringArgument:v10];
    }
  }

  return argumentCopy;
}

+ (void)localizedStringForKey:(NSObject *)a3 withStringArgument:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_259BCA000, a3, OS_LOG_TYPE_ERROR, "Failed to validate localized format string %{public}@: %{public}@", &v6, 0x16u);
}

@end