@interface PLServerTransaction
@end

@implementation PLServerTransaction

void *__49___PLServerTransaction_completeTransactionScope___block_invoke(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_count(*(*(a1 + 32) + 112), a2);
  [*(*(a1 + 32) + 112) removeObject:*(a1 + 40)];
  [*(a1 + 32) _updateChangeScopesDescriptionSnapshot];
  result = objc_msgSend_count(*(*(a1 + 32) + 112));
  if (result != v3)
  {
    v5 = *(a1 + 32);
    v6 = v5[14];

    return [v5 persistTransactionScopes:v6];
  }

  return result;
}

void __36___PLServerTransaction_changeScopes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void *__45___PLServerTransaction__enqueueChangeScopes___block_invoke(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_count(*(a1 + 32), a2);
  if (result)
  {
    v4 = objc_msgSend_count(*(*(a1 + 40) + 112));
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(a1 + 40) + 112) addObject:{*(*(&v10 + 1) + 8 * v9), v10}];
          [*(a1 + 40) _updateChangeScopesDescriptionSnapshot];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    result = objc_msgSend_count(*(*(a1 + 40) + 112));
    if (result > v4)
    {
      return [*(a1 + 40) persistTransactionScopes:*(*(a1 + 40) + 112)];
    }
  }

  return result;
}

@end