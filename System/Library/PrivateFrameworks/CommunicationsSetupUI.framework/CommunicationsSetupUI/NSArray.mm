@interface NSArray
@end

@implementation NSArray

void __52__NSArray_CNFRegUtilities__CNFRegArrayPassingTests___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = (*(*(*(&v14 + 1) + 8 * i) + 16))(*(*(&v14 + 1) + 8 * i));
        v13 = v18;
        if (a4 && v18)
        {
          *a4 = 1;
        }

        if (!v12 || (v13 & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 40) addObject:{v6, v14}];
LABEL_15:
}

@end