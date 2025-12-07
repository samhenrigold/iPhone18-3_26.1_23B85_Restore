@interface MUExtensionGroup
@end

@implementation MUExtensionGroup

void __39___MUExtensionGroup_bestExtensionToUse__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 extensionPointIdentifier];
        v9 = [v8 isEqualToString:@"com.apple.intents-ui-service"];

        if ((v9 & 1) == 0)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

@end