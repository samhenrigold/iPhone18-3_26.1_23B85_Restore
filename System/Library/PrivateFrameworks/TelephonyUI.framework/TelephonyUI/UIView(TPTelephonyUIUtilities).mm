@interface UIView(TPTelephonyUIUtilities)
+ (void)tpSetSemanticContentAttribute_recursive:()TPTelephonyUIUtilities startingAtView:;
@end

@implementation UIView(TPTelephonyUIUtilities)

+ (void)tpSetSemanticContentAttribute_recursive:()TPTelephonyUIUtilities startingAtView:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subviews = [v6 subviews];
  v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [self tpSetSemanticContentAttribute_recursive:a3 startingAtView:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [v6 setSemanticContentAttribute:a3];
}

@end