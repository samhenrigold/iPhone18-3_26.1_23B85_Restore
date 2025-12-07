@interface NSKeyedUnarchiver
@end

@implementation NSKeyedUnarchiver

uint64_t __55__NSKeyedUnarchiver_SYAdditions__sy_whitelistedClasses__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = sy_whitelistedClasses_supportedClasses;
  sy_whitelistedClasses_supportedClasses = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

@end