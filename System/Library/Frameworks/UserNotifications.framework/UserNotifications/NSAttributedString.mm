@interface NSAttributedString
@end

@implementation NSAttributedString

void __94__NSAttributedString_UserNotifications___un_attributedStringByKeepingOnlyAttachmentAttributes__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a2 keyEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (([v12 isEqualToString:@"NSAttachment"] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"CTAdaptiveImageProvider") & 1) == 0)
        {
          [*(a1 + 32) removeAttribute:v12 range:{a3, a4}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end