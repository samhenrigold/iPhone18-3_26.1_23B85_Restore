@interface MUVendorLinkSorter
- (MUVendorLinkSorter)initWithViewModels:(id)models;
- (id)sortedViewModelsForParameters:(id)parameters;
@end

@implementation MUVendorLinkSorter

uint64_t __52__MUVendorLinkSorter__sortViewModelsAlphabetically___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 providerName];
  v6 = [v4 providerName];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (id)sortedViewModelsForParameters:(id)parameters
{
  v51 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  obj = [parametersCopy preferredOrdering];
  if ([obj count])
  {
    preferredOrdering = [parametersCopy preferredOrdering];

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = preferredOrdering;
    v4 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v4)
    {
      v28 = *v44;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v43 + 1) + 8 * i);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v7 = self->_viewModels;
          v8 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v8)
          {
            v9 = *v40;
            while (2)
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v40 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v39 + 1) + 8 * j);
                partnerId = [v11 partnerId];
                v13 = [partnerId isEqualToString:v6];

                if (v13)
                {
                  [v27 addObject:v11];
                  goto LABEL_17;
                }
              }

              v8 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v49 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v4 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v4);
    }

    v14 = [v27 copy];
  }

  else
  {
    v27 = [(NSArray *)self->_viewModels mutableCopy];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__10417;
    v37 = __Block_byref_object_dispose__10418;
    v38 = 0;
    winningAdamId = [parametersCopy winningAdamId];
    v16 = [winningAdamId length] == 0;

    if (!v16)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __52__MUVendorLinkSorter_sortedViewModelsForParameters___block_invoke;
      v30[3] = &unk_1E8219608;
      v17 = parametersCopy;
      v31 = v17;
      v32 = &v33;
      v18 = [v27 indexOfObjectPassingTest:v30];
      if (v18 >= [v27 count])
      {
        if (MUGetMUVendorLinkSorterLog_onceToken != -1)
        {
          dispatch_once(&MUGetMUVendorLinkSorterLog_onceToken, &__block_literal_global_42);
        }

        v19 = MUGetMUVendorLinkSorterLog_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          winningAdamId2 = [v17 winningAdamId];
          *buf = 138412290;
          v48 = winningAdamId2;
          _os_log_impl(&dword_1C5620000, v19, OS_LOG_TYPE_ERROR, "Could not remove winning adam id @%@", buf, 0xCu);
        }
      }

      else
      {
        [v27 removeObjectAtIndex:v18];
      }
    }

    if ([parametersCopy sortAlphabetically])
    {
      v21 = [v27 copy];
      v22 = [(MUVendorLinkSorter *)self _sortViewModelsAlphabetically:v21];
    }

    else
    {
      v22 = [v27 copy];
    }

    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_viewModels, "count")}];
    [v23 _mapsui_addObjectIfNotNil:v34[5]];
    [v23 addObjectsFromArray:v22];
    v14 = [v23 copy];

    _Block_object_dispose(&v33, 8);
  }

  return v14;
}

uint64_t __52__MUVendorLinkSorter_sortedViewModelsForParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 appAdamId];
  v9 = [*(a1 + 32) winningAdamId];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  return v10;
}

- (MUVendorLinkSorter)initWithViewModels:(id)models
{
  modelsCopy = models;
  v9.receiver = self;
  v9.super_class = MUVendorLinkSorter;
  v6 = [(MUVendorLinkSorter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModels, models);
  }

  return v7;
}

@end