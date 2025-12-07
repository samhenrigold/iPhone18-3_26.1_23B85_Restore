@interface NSCoder(SafeDecode)
- (id)fp_safeDecodeNSDictionaryForKey:()SafeDecode;
@end

@implementation NSCoder(SafeDecode)

- (id)fp_safeDecodeNSDictionaryForKey:()SafeDecode
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v7 = [v4 setWithArray:v6];

  v8 = [self decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v7 forKey:v5];

  return v8;
}

@end