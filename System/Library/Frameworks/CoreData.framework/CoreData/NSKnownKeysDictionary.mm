@interface NSKnownKeysDictionary
+ (NSArray)classesForArchiving;
@end

@implementation NSKnownKeysDictionary

+ (NSArray)classesForArchiving
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
}

@end