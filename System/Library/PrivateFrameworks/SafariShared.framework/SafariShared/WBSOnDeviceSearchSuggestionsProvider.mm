@interface WBSOnDeviceSearchSuggestionsProvider
- (BOOL)_findRootNodeForPrefix:(id)prefix rootNode:(_WBSSearchSuggestionCandidate *)node;
- (WBSOnDeviceSearchSuggestionsProvider)init;
- (WBSOnDeviceSearchSuggestionsProviderDelegate)delegate;
- (id)_loadModel;
- (void)_doSearch:(id)search atRootNode:(_WBSSearchSuggestionCandidate *)node;
- (void)reloadModel;
- (void)setQueryString:(id)string;
@end

@implementation WBSOnDeviceSearchSuggestionsProvider

- (WBSOnDeviceSearchSuggestionsProvider)init
{
  v9.receiver = self;
  v9.super_class = WBSOnDeviceSearchSuggestionsProvider;
  v2 = [(WBSOnDeviceSearchSuggestionsProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(WBSOnDeviceSearchSuggestionsProvider *)v2 reloadModel];
    v3->_maximumNumberOfSuggestions = 5;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.Shared.%@.%p", objc_opt_class(), v3];
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v5;

    v3->_prefixLock._os_unfair_lock_opaque = 0;
    v7 = v3;
  }

  return v3;
}

- (id)_loadModel
{
  v2 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v2 fileURLForModelWithLocaleIfDownloaded:currentLocale];
  path = [v4 path];

  if (path)
  {
    v6 = [[WBSOnDeviceSearchSuggestionsModel alloc] initWithModelFileAtPath:path];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reloadModel
{
  _loadModel = [(WBSOnDeviceSearchSuggestionsProvider *)self _loadModel];
  searchModel = self->_searchModel;
  self->_searchModel = _loadModel;
}

- (void)setQueryString:(id)string
{
  stringCopy = string;
  os_unfair_lock_lock(&self->_prefixLock);
  if ([(NSString *)self->_currentPrefix isEqualToString:stringCopy])
  {
    os_unfair_lock_unlock(&self->_prefixLock);
  }

  else
  {
    objc_storeStrong(&self->_currentPrefix, string);
    completionQueue = self->_completionQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke;
    v7[3] = &unk_1E7FB7F10;
    v7[4] = self;
    v8 = stringCopy;
    dispatch_async(completionQueue, v7);
    os_unfair_lock_unlock(&self->_prefixLock);
  }
}

void __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [*(*(a1 + 32) + 32) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if ([v2 isEqualToString:*(a1 + 40)] && objc_msgSend(v2, "length"))
  {
    v8 = 0x200000000;
    v9 = 0;
    v10 = &stru_1F3A5E418;
    if ([*(a1 + 32) _findRootNodeForPrefix:*(a1 + 40) rootNode:&v8])
    {
      [*(a1 + 32) _doSearch:*(a1 + 40) atRootNode:&v8];
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_3;
      v6[3] = &unk_1E7FB7F10;
      v5 = *(a1 + 40);
      v6[4] = *(a1 + 32);
      v7 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v6);
    }

    v4 = v10;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_2;
    block[3] = &unk_1E7FB7F10;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v12 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v4 = v12;
  }
}

void __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained onDeviceSearchSuggestionProvider:*(a1 + 32) didFinishWithSuggestions:MEMORY[0x1E695E0F0] forQueryString:*(a1 + 40)];
}

void __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained onDeviceSearchSuggestionProvider:*(a1 + 32) didFinishWithSuggestions:MEMORY[0x1E695E0F0] forQueryString:*(a1 + 40)];
}

- (BOOL)_findRootNodeForPrefix:(id)prefix rootNode:(_WBSSearchSuggestionCandidate *)node
{
  prefixCopy = prefix;
LABEL_2:
  v7 = [node->var3 length];
  if (v7 >= [prefixCopy length])
  {
    v12 = [node->var3 length];
    v13 = v12 >= [prefixCopy length];
  }

  else
  {
    searchModel = self->_searchModel;
    if (searchModel)
    {
      objc_msgSend_readTreeNodeWithCandidate_(searchModel);
      v9 = v15;
      v10 = v16;
      while (v9 != v10)
      {
        if ([*(v9 + 16) length] && ((objc_msgSend(prefixCopy, "hasPrefix:", *(v9 + 16)) & 1) != 0 || objc_msgSend(*(v9 + 16), "hasPrefix:", prefixCopy)))
        {
          if (*(v9 + 8) != 1 || (v11 = [*(v9 + 16) length], v11 >= objc_msgSend(prefixCopy, "length")))
          {
            objc_storeStrong(&node->var3, *(v9 + 16));
            node->var2 = *(v9 + 8);
            node->var1 = *(v9 + 4);
            v18 = &v15;
            std::vector<_WBSSearchSuggestionCandidate>::__destroy_vector::operator()[abi:sn200100](&v18);
            goto LABEL_2;
          }
        }

        v9 += 24;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v18 = &v15;
    std::vector<_WBSSearchSuggestionCandidate>::__destroy_vector::operator()[abi:sn200100](&v18);
    v13 = 0;
  }

  return v13;
}

- (void)_doSearch:(id)search atRootNode:(_WBSSearchSuggestionCandidate *)node
{
  searchCopy = search;
  v66 = 0;
  v67 = &v66;
  v68 = 0x6012000000;
  v69 = __Block_byref_object_copy__30;
  v70 = __Block_byref_object_dispose__30;
  v71 = "";
  memset(v72, 0, sizeof(v72));
  v59 = 0;
  v60 = &v59;
  v61 = 0x6012000000;
  v62 = __Block_byref_object_copy__30;
  v63 = __Block_byref_object_dispose__30;
  v64 = "";
  memset(v65, 0, sizeof(v65));
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke;
  v58[3] = &unk_1E7FC8990;
  v58[4] = &v66;
  v58[5] = &v59;
  v6 = MEMORY[0x1BFB13CE0](v58);
  v55 = *&node->var0;
  var2 = node->var2;
  v57 = node->var3;
  (v6)[2](v6, &v55);
  v7 = v60;
  for (i = v60[5].i64[1]; i; i = v60[5].i64[1])
  {
    v9 = *(v7[7] + 8 * ((i + v7[10] - 1) / 0xAAuLL)) + 24 * ((i + v7[10] - 1) % 0xAAuLL);
    v10 = *(v9 + 8);
    v52 = *v9;
    v53 = v10;
    v54 = *(v9 + 16);
    std::deque<_WBSSearchSuggestionCandidate>::pop_back(v7 + 6);
    searchModel = self->_searchModel;
    if (searchModel)
    {
      objc_msgSend_readTreeNodeWithCandidate_(searchModel);
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
    }

    std::deque<_WBSSearchSuggestionCandidate>::deque(v45, v67[3].i64);
    std::deque<_WBSSearchSuggestionCandidate>::deque(v41, v60[3].i64);
    if (v48)
    {
      v12 = *(*(v46 + 8 * (v47 / 0xAA)) + 24 * (v47 % 0xAA));
    }

    else
    {
      v12 = -1;
    }

    if (v44 && *(*(v42 + 8 * (v43 / 0xAA)) + 24 * (v43 % 0xAA)) < v12)
    {
      v12 = *(*(v42 + 8 * (v43 / 0xAA)) + 24 * (v43 % 0xAA));
    }

    std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v41);
    std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v45);
    v14 = v49;
    v13 = v50;
    while (v14 != v13)
    {
      if (*v14 > v12 || (v15 = v67, v16 = v67[5].i64[1], v17 = v60, v18 = v60[5].i64[1], v19 = v18 + v16, maximumNumberOfSuggestions = self->_maximumNumberOfSuggestions, v18 + v16 < maximumNumberOfSuggestions))
      {
        v21 = *v14;
        v39 = *(v14 + 8);
        v38 = v21;
        v40 = v14[2];
        (v6)[2](v6, &v38);
        v15 = v67;
        v16 = v67[5].i64[1];
        v17 = v60;
        v18 = v60[5].i64[1];
        maximumNumberOfSuggestions = self->_maximumNumberOfSuggestions;
        v19 = v18 + v16;
      }

      if (v19 > maximumNumberOfSuggestions)
      {
        v22 = v17 + 3;
        if (v16 && (!v18 || *(*(v15[3].i64[1] + 8 * (v15[5].i64[0] / 0xAAuLL)) + 24 * (v15[5].i64[0] % 0xAAuLL)) <= *(*(v17[3].i64[1] + 8 * (v17[5].i64[0] / 0xAAuLL)) + 24 * (v17[5].i64[0] % 0xAAuLL))))
        {
          v22 = v15 + 3;
        }

        std::deque<_WBSSearchSuggestionCandidate>::pop_front(v22);
        v15 = v67;
      }

      std::deque<_WBSSearchSuggestionCandidate>::deque(v34, v15[3].i64);
      std::deque<_WBSSearchSuggestionCandidate>::deque(v30, v60[3].i64);
      if (v37)
      {
        v12 = *(*(v35 + 8 * (v36 / 0xAA)) + 24 * (v36 % 0xAA));
      }

      else
      {
        v12 = -1;
      }

      if (v33)
      {
        if (*(*(v31 + 8 * (v32 / 0xAA)) + 24 * (v32 % 0xAA)) < v12)
        {
          v12 = *(*(v31 + 8 * (v32 / 0xAA)) + 24 * (v32 % 0xAA));
        }
      }

      std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v30);
      std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v34);
      v14 += 3;
    }

    v73 = &v49;
    std::vector<_WBSSearchSuggestionCandidate>::__destroy_vector::operator()[abi:sn200100](&v73);

    v7 = v60;
  }

  array = [MEMORY[0x1E695DF70] array];
  while (v67[5].i64[1])
  {
    [array addObject:*(*(v67[3].i64[1] + 8 * (v67[5].i64[0] / 0xAAuLL)) + 24 * (v67[5].i64[0] % 0xAAuLL) + 16)];
    std::deque<_WBSSearchSuggestionCandidate>::pop_front(v67 + 3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke_3;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v28 = array;
  v29 = searchCopy;
  v24 = array;
  v25 = searchCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(&v59, 8);
  std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v65);
  _Block_object_dispose(&v66, 8);
  std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v72);
}

void __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke(uint64_t a1, int *a2)
{
  v3 = 40;
  if (*(a2 + 8))
  {
    v3 = 32;
  }

  v4 = *(*(a1 + v3) + 8);
  v5 = v4[5].i64[1];
  if (v5 && (v6 = *a2, v7 = v4[5].u64[0], v8 = v4[3].i64[1], *a2 <= *(*(v8 + 8 * ((v5 + v7 - 1) / 0xAA)) + 24 * ((v5 + v7 - 1) % 0xAA))))
  {
    v9 = (v8 + 8 * (v7 / 0xAA));
    v10 = v4[4].i64[0];
    if (v10 == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = *v9 + 24 * (v7 % 0xAA);
    }

    v12 = v7 + v5;
    v13 = v12 / 0xAA;
    v14 = v12 % 0xAA;
LABEL_10:
    v15 = v11;
    while (1)
    {
      v16 = v10 == v8 ? 0 : *(v8 + 8 * v13) + 24 * v14;
      if (v15 == v16 || v6 <= *v15)
      {
        break;
      }

      v15 += 6;
      v11 += 24;
      if (*v9 + 4080 == v11)
      {
        v17 = v9[1];
        ++v9;
        v11 = v17;
        goto LABEL_10;
      }
    }

    std::deque<_WBSSearchSuggestionCandidate>::insert(v4 + 3, v9, v11, a2);
  }

  else
  {
    std::deque<_WBSSearchSuggestionCandidate>::push_back(&v4[3], a2);
  }

  v18 = *(a2 + 2);
}

void __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke_3(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained onDeviceSearchSuggestionProvider:a1[4] didFinishWithSuggestions:a1[5] forQueryString:a1[6]];
}

- (WBSOnDeviceSearchSuggestionsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end