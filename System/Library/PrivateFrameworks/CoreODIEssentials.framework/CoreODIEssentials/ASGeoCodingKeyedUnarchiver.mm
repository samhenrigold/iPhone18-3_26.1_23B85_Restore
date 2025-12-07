@interface ASGeoCodingKeyedUnarchiver
- (id)allowedClasses;
@end

@implementation ASGeoCodingKeyedUnarchiver

- (id)allowedClasses
{
  v16[10] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_self();
  v16[0] = v15;
  v14 = objc_opt_self();
  v16[1] = v14;
  v3 = objc_opt_self();
  v16[2] = v3;
  v4 = objc_opt_self();
  v16[3] = v4;
  v5 = objc_opt_self();
  v16[4] = v5;
  v6 = objc_opt_self();
  v16[5] = v6;
  v7 = objc_opt_self();
  v16[6] = v7;
  v8 = objc_opt_self();
  v16[7] = v8;
  v9 = objc_opt_self();
  v16[8] = v9;
  v10 = objc_opt_self();
  v16[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:10];
  v12 = [v2 setWithArray:v11];

  return v12;
}

@end