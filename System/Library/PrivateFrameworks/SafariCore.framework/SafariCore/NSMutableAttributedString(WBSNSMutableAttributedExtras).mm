@interface NSMutableAttributedString(WBSNSMutableAttributedExtras)
- (void)safari_replaceCharactersWithStringBindings:()WBSNSMutableAttributedExtras;
@end

@implementation NSMutableAttributedString(WBSNSMutableAttributedExtras)

- (void)safari_replaceCharactersWithStringBindings:()WBSNSMutableAttributedExtras
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  string = [self string];
  array = [MEMORY[0x1E695DF70] array];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __102__NSMutableAttributedString_WBSNSMutableAttributedExtras__safari_replaceCharactersWithStringBindings___block_invoke;
  v31[3] = &unk_1E7CF29F8;
  v26 = string;
  v32 = v26;
  v7 = array;
  v33 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        first = [v13 first];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          second = [v13 second];
          rangeValue = [second rangeValue];
          v19 = v18;
          first2 = [v13 first];
          [self replaceCharactersInRange:rangeValue withString:{v19, first2}];
        }

        else
        {
          first3 = [v13 first];
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();

          if ((v22 & 1) == 0)
          {
            continue;
          }

          second = [v13 second];
          rangeValue2 = [second rangeValue];
          v25 = v24;
          first2 = [v13 first];
          [self replaceCharactersInRange:rangeValue2 withAttributedString:{v25, first2}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v10);
  }
}

@end