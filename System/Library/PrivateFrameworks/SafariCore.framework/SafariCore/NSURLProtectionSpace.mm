@interface NSURLProtectionSpace
@end

@implementation NSURLProtectionSpace

void __71__NSURLProtectionSpace_SafariCoreExtras__safari_allowsCredentialSaving__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 exactMatches];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) savedAccount];
        v9 = [v8 userIsNeverSaveMarker];

        if (v9)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

@end