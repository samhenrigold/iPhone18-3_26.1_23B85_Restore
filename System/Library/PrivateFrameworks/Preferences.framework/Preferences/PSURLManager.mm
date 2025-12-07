@interface PSURLManager
+ (id)sharedManager;
- (id)currentSpecifierIDPath;
- (id)keyValueDictionaryForURL:(id)l;
- (id)urlForCurrentNavStack;
- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary objectOffsetPair:(id)pair withCompletion:(id)completion;
- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary withCompletion:(id)completion;
- (void)performURLHandlingForController:(id)controller dictionary:(id)dictionary items:(id)items controllerNeedsPush:(BOOL)push withCompletion:(id)completion;
- (void)popToRootAndSelectDefaultCategory:(BOOL)category performWithoutDeferringTransitions:(BOOL)transitions;
- (void)processURL:(id)l animated:(BOOL)animated fromSearch:(BOOL)search withCompletion:(id)completion;
- (void)setOffsetForController:(id)controller fromObjectPair:(id)pair;
@end

@implementation PSURLManager

+ (id)sharedManager
{
  if (sharedManager_once_0 != -1)
  {
    +[PSURLManager sharedManager];
  }

  v3 = sharedManager_manager_0;

  return v3;
}

void __29__PSURLManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PSURLManager);
  v1 = sharedManager_manager_0;
  sharedManager_manager_0 = v0;
}

- (void)processURL:(id)l animated:(BOOL)animated fromSearch:(BOOL)search withCompletion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DFF8];
  absoluteString = [l absoluteString];
  v12 = [absoluteString stringByReplacingOccurrencesOfString:@"%00" withString:&stru_1EFE45030];
  v13 = [v10 URLWithString:v12];

  v14 = [(PSURLManager *)self keyValueDictionaryForURL:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:searchCopy];
  [v14 setObject:v15 forKeyedSubscript:@"fromSearch"];

  v16 = [v14 objectForKey:@"root"];
  stringByRemovingPercentEncoding = [v16 stringByRemovingPercentEncoding];

  v18 = SFObjectAndOffsetForURLPair();
  v19 = [v18 objectForKey:@"object"];
  v20 = [v18 objectForKey:@"offsetItem"];
  v21 = v20;
  if (v19)
  {
    v34 = v20;
    v32 = v13;
    rootController = [(PSURLManager *)self rootController];
    topLevelController = [(PSURLManager *)self topLevelController];
    *buf = 0;
    v54 = buf;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__10;
    v57 = __Block_byref_object_dispose__10;
    v58 = [topLevelController specifierForID:v19];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__10;
    v51[4] = __Block_byref_object_dispose__10;
    v52 = [topLevelController indexPathForIndex:{objc_msgSend(topLevelController, "indexOfSpecifier:", *(v54 + 5))}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke;
    aBlock[3] = &unk_1E71DED18;
    v48 = buf;
    v24 = topLevelController;
    v39 = v24;
    v40 = v19;
    v41 = stringByRemovingPercentEncoding;
    v25 = rootController;
    v42 = v25;
    v43 = v34;
    v44 = v14;
    selfCopy = self;
    animatedCopy = animated;
    v47 = completionCopy;
    v49 = v51;
    v46 = v18;
    v26 = _Block_copy(aBlock);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_138;
    v35[3] = &unk_1E71DD4D8;
    v27 = v25;
    v36 = v27;
    v28 = v26;
    v37 = v28;
    v29 = _Block_copy(v35);
    v30 = v29;
    if (searchCopy || (v29 = v28, !v24))
    {
      (*(v29 + 2))();
    }

    else
    {
      [v24 dismissViewControllerAnimated:0 completion:v30];
    }

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(buf, 8);

    v13 = v32;
    v21 = v34;
  }

  else
  {
    v31 = _PSLoggingFacility(v20);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v31, OS_LOG_TYPE_DEFAULT, "PSURLManager: No root object in url", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 104) + 8) + 40))
  {
    v2 = [*(a1 + 32) specifierForBundle:*(a1 + 40)];
    v3 = *(*(a1 + 104) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = _PSLoggingFacility(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Special ROOT processing: %@ and %@", buf, 0x16u);
  }

  if ([*(a1 + 40) hasPrefix:@"ROOT"])
  {
    [*(a1 + 56) popRecursivelyToRootController];
    v8 = [*(a1 + 32) navigationController];
    v9 = [v8 topViewController];
    v10 = v9 == *(a1 + 32);

    v11 = *(a1 + 32);
    v12 = *(a1 + 64);
    if (v10)
    {
      [v11 _scrollToSpecifierWithID:v12 animated:0];
    }

    else
    {
      [v11 setDesiredVerticalContentOffsetItemNamed:v12];
    }
  }

  v13 = *(*(*(a1 + 104) + 8) + 40);
  if (v13 && (([v13 propertyForKey:@"enabled"], v14 = objc_claimAutoreleasedReturnValue(), (v15 = v14) == 0) || (objc_msgSend(*(*(*(a1 + 104) + 8) + 40), "propertyForKey:", @"enabled"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v15, v17)))
  {
    v18 = _PSLoggingFacility(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 104) + 8) + 40);
      v20 = [v19 properties];
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_impl(&dword_18B008000, v18, OS_LOG_TYPE_DEFAULT, "Trying to navigate to: %@ and %@", buf, 0x16u);
    }

    v21 = [*(a1 + 72) objectForKeyedSubscript:@"path"];
    v22 = [v21 pathComponents];

    v23 = [*(a1 + 80) currentSpecifierIDPath];
    if ([v23 count] >= 2)
    {
      v24 = [v23 subarrayWithRange:{1, objc_msgSend(v23, "count") - 1}];

      v23 = v24;
    }

    v25 = [MEMORY[0x1E695DF70] array];
    v26 = [MEMORY[0x1E695DF70] arrayWithArray:v22];
    v27 = [*(a1 + 80) splitViewController];
    v28 = [v27 categoryController];
    v29 = [v28 specifier];
    v30 = v29 == *(*(*(a1 + 104) + 8) + 40);

    if (v30)
    {
      v35 = [*(a1 + 80) splitViewController];
      v31 = [v35 categoryController];

      v36 = [*(*(*(a1 + 104) + 8) + 40) identifier];
      [v25 addObject:v36];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v97 = 0;
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_26;
      v91[3] = &unk_1E71DECC8;
      v92 = v23;
      v93 = v25;
      v94 = v26;
      v95 = buf;
      [v22 enumerateObjectsUsingBlock:v91];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v31 = [*(a1 + 32) selectSpecifier:*(*(*(a1 + 104) + 8) + 40)];
    }

    v37 = [*(a1 + 40) hasPrefix:@"FollowUpList_"];
    if (v31)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    if (v38 == 1)
    {
      [*(a1 + 56) popRecursivelyToRootController];
      v39 = [*(a1 + 32) navigationController];
      v40 = [v39 topViewController];
      v41 = v40 == *(a1 + 32);

      v42 = *(a1 + 32);
      v43 = *(a1 + 40);
      if (v41)
      {
        v44 = [v42 _scrollToSpecifierWithID:v43 animated:0];
      }

      else
      {
        v44 = [v42 setDesiredVerticalContentOffsetItemNamed:v43];
      }

      v60 = _PSLoggingFacility(v44);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B008000, v60, OS_LOG_TYPE_DEFAULT, "PSURLManager: skipping push for specifier that returns nil controller", buf, 2u);
      }

      v61 = *(a1 + 96);
      if (v61)
      {
        (*(v61 + 16))();
      }
    }

    else
    {
      v45 = [*(a1 + 32) shouldDeferPushForSpecifierID:*(a1 + 40) urlDictionary:*(a1 + 72)];
      v46 = [v25 containsObject:*(a1 + 40)];
      v47 = [v25 count];
      if (v46)
      {
        v48 = v47 != 0;
      }

      else
      {
        v48 = v47 > 1;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v97 = __Block_byref_object_copy__10;
      v98 = __Block_byref_object_dispose__10;
      v99 = 0;
      if ((v45 & 1) == 0)
      {
        if (v48)
        {
          v49 = [v25 lastObject];
          v50 = [*(a1 + 56) viewControllers];
          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 3221225472;
          v88[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_31;
          v88[3] = &unk_1E71DECF0;
          v51 = v49;
          v89 = v51;
          v90 = buf;
          [v50 enumerateObjectsWithOptions:2 usingBlock:v88];

          v52 = *(*&buf[8] + 40);
          v53 = [*(a1 + 56) topViewController];
          LOBYTE(v52) = v52 == v53;

          if ((v52 & 1) == 0)
          {
            v54 = [v26 count] == 0;
            v55 = [*(a1 + 56) popToViewController:*(*&buf[8] + 40) animated:v54];
          }

          v56 = *(*&buf[8] + 40);

          v57 = [*(*&buf[8] + 40) specifier];
          v58 = *(*(a1 + 104) + 8);
          v59 = *(v58 + 40);
          *(v58 + 40) = v57;

          v31 = v56;
        }

        else
        {
          [*(a1 + 56) setViewControllers:MEMORY[0x1E695E0F0]];
          [*(a1 + 32) setSkipSelectingDefaultCategoryOnLaunch:1];
        }
      }

      v62 = [*(a1 + 32) view];
      v63 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 120)];
      [*(a1 + 72) setObject:v63 forKeyedSubscript:@"animate"];

      if (v45)
      {
        v65 = *(a1 + 32);
        v66 = [v65 table];
        v67 = [v65 tableView:v66 willSelectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40)];
        v68 = *(*(a1 + 112) + 8);
        v69 = *(v68 + 40);
        *(v68 + 40) = v67;

        if (v67)
        {
          v70 = [*(a1 + 32) table];
          [v70 selectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40) animated:0 scrollPosition:0];

          [*(a1 + 80) popToRootAndSelectDefaultCategory:0 performWithoutDeferringTransitions:{objc_msgSend(*(a1 + 40), "isEqualToString:", @"PASSBOOK"}];
          v71 = *(a1 + 32);
          v72 = [v71 table];
          [v71 tableView:v72 didSelectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40)];

          v74 = _PSLoggingFacility(v73);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *v87 = 0;
            _os_log_impl(&dword_18B008000, v74, OS_LOG_TYPE_DEFAULT, "PSURLManager: selecting top level tableview row", v87, 2u);
          }

          v75 = *(a1 + 96);
          if (v75)
          {
            (*(v75 + 16))();
          }
        }
      }

      else if (v48)
      {
        v76 = [*(a1 + 32) table];
        [v76 selectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40) animated:0 scrollPosition:0];

        if ([v26 count])
        {
          v77 = [*(a1 + 72) mutableCopy];
          v78 = [MEMORY[0x1E696AEC0] pathWithComponents:v26];
          [v77 setObject:v78 forKeyedSubscript:@"path"];

          v79 = [v26 firstObject];
          v80 = SFObjectAndOffsetForURLPair();

          v81 = _PSLoggingFacility([*(a1 + 80) setOffsetForController:v31 fromObjectPair:v80]);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *v87 = 0;
            _os_log_impl(&dword_18B008000, v81, OS_LOG_TYPE_DEFAULT, "PSURLManager: handling url reusing existing controllers", v87, 2u);
          }

          [*(a1 + 80) performURLHandlingForController:*(*&buf[8] + 40) dictionary:v77 items:v26 controllerNeedsPush:0 withCompletion:*(a1 + 96)];
        }

        else
        {
          v77 = [v22 lastObject];
          if (![v77 length])
          {
            v83 = [*(a1 + 72) objectForKeyedSubscript:@"root"];

            v77 = v83;
          }

          v80 = SFObjectAndOffsetForURLPair();
          if (v80)
          {
            [*(a1 + 80) setOffsetForController:*(*&buf[8] + 40) fromObjectPair:v80];
          }

          v84 = [v31 conformsToProtocol:&unk_1EFEC66D0];
          if (v84)
          {
            v84 = objc_opt_respondsToSelector();
            if (v84)
            {
              v84 = [v31 handleResourceDictionaryWhenAlreadyPresented:*(a1 + 72)];
            }
          }

          v85 = _PSLoggingFacility(v84);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *v87 = 0;
            _os_log_impl(&dword_18B008000, v85, OS_LOG_TYPE_DEFAULT, "PSURLManager: handling url while already at destination", v87, 2u);
          }

          v86 = *(a1 + 96);
          if (v86)
          {
            (*(v86 + 16))();
          }
        }
      }

      else
      {
        v82 = _PSLoggingFacility(v64);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *v87 = 0;
          _os_log_impl(&dword_18B008000, v82, OS_LOG_TYPE_DEFAULT, "PSURLManager: handling url", v87, 2u);
        }

        [*(a1 + 80) handleDeferredURLForSpecifierID:*(a1 + 40) resourceDictionary:*(a1 + 72) objectOffsetPair:*(a1 + 88) withCompletion:*(a1 + 96)];
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v32 = [*(a1 + 32) shouldDeferPushForSpecifierID:*(a1 + 40) urlDictionary:*(a1 + 72)];
    if (v32)
    {
      [*(a1 + 32) prepareHandlingURLForSpecifierID:*(a1 + 40) resourceDictionary:*(a1 + 72) animatePush:0 withCompletion:*(a1 + 96)];
    }

    else
    {
      v33 = _PSLoggingFacility(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B008000, v33, OS_LOG_TYPE_DEFAULT, "PSURLManager: Couldn't find top level specifier and loading was not deferred", buf, 2u);
      }

      v34 = *(a1 + 96);
      if (v34)
      {
        (*(v34 + 16))();
      }
    }
  }
}

void __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_26(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v7 = SFObjectAndOffsetForURLPair();
  v15 = [v7 objectForKeyedSubscript:@"object"];

  v8 = v15;
  if (v15 && (v9 = [*(a1 + 32) count] > a3, v8 = v15, v9))
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v15 isEqualToString:v10];

    if (v11)
    {
      [*(a1 + 40) addObject:v15];
      v12 = *(a1 + 48);
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 24);
      *(v13 + 24) = v14 + 1;
      [v12 removeObjectAtIndex:a3 - v14];
    }

    else
    {
      *a4 = 1;
    }

    v8 = v15;
  }

  else
  {
    *a4 = 1;
  }
}

void __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_31(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 conformsToProtocol:&unk_1EFE6C730];
  v8 = v11;
  if (v7)
  {
    v9 = [v11 specifier];
    v10 = [v9 identifier];

    if (v10 && [v10 isEqualToString:*(a1 + 32)])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }

    v8 = v11;
  }
}

uint64_t __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_138(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    return [v2 dismissViewControllerAnimated:0 completion:v3];
  }

  else
  {
    return (*(v3 + 16))(*(a1 + 40));
  }
}

- (id)keyValueDictionaryForURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];
  v6 = [resourceSpecifier componentsSeparatedByString:@"&"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:{@"=", v17}];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [dictionary setObject:stringByRemovingPercentEncoding forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (id)currentSpecifierIDPath
{
  rootController = [(PSURLManager *)self rootController];
  viewControllers = [rootController viewControllers];
  v4 = [viewControllers mutableCopy];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PSURLManager_currentSpecifierIDPath__block_invoke;
  v8[3] = &unk_1E71DED40;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __38__PSURLManager_currentSpecifierIDPath__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 specifier];
    v7 = [v6 identifier];

    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (void)setOffsetForController:(id)controller fromObjectPair:(id)pair
{
  controllerCopy = controller;
  pairCopy = pair;
  v6 = [pairCopy objectForKeyedSubscript:@"offsetValue"];
  [v6 floatValue];
  v8 = v7;

  v9 = [pairCopy objectForKeyedSubscript:@"offsetItem"];

  if ([controllerCopy conformsToProtocol:&unk_1EFE6EBF8])
  {
    if (v8 == 0.0)
    {
      if ([v9 length])
      {
        [controllerCopy setDesiredVerticalContentOffsetItemNamed:v9];
      }
    }

    else
    {
      *&v10 = v8;
      [controllerCopy setDesiredVerticalContentOffset:v10];
    }
  }

  if ([v9 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [controllerCopy highlightSpecifierWithID:v9];
  }
}

- (void)performURLHandlingForController:(id)controller dictionary:(id)dictionary items:(id)items controllerNeedsPush:(BOOL)push withCompletion:(id)completion
{
  pushCopy = push;
  controllerCopy = controller;
  dictionaryCopy = dictionary;
  itemsCopy = items;
  completionCopy = completion;
  v16 = [dictionaryCopy objectForKeyedSubscript:@"animate"];
  bOOLValue = [v16 BOOLValue];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"fromSearch"];
  [v18 BOOLValue];

  v23 = 0;
  if ([itemsCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [itemsCopy objectAtIndexedSubscript:0];
    v20 = SFObjectAndOffsetForURLPair();

    v21 = [v20 objectForKeyedSubscript:@"object"];
    if (v21)
    {
      v22 = [controllerCopy prepareHandlingURLForSpecifierID:v21 resourceDictionary:dictionaryCopy animatePush:&v23 withCompletion:completionCopy] ^ 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  if (!pushCopy)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:bOOLValue];
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_15:
    [controllerCopy handleURL:dictionaryCopy withCompletion:completionCopy];
    goto LABEL_16;
  }

  if ((v23 & v22 & 1) == 0 && ((bOOLValue ^ 1) & 1) == 0)
  {
    [itemsCopy count];
  }

  [MEMORY[0x1E69DD250] setAnimationsEnabled:bOOLValue];
  [(PSSplitViewController *)self->_splitViewController showInitialViewController:controllerCopy];
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  [MEMORY[0x1E69DD250] enableAnimation];
}

- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary objectOffsetPair:(id)pair withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionaryCopy = dictionary;
  pairCopy = pair;
  completionCopy = completion;
  topLevelController = [(PSURLManager *)self topLevelController];
  v15 = [topLevelController specifierForID:dCopy];
  if (v15)
  {
    v16 = [topLevelController selectSpecifier:v15];
    if (v16)
    {
      v17 = [topLevelController indexPathForIndex:{objc_msgSend(topLevelController, "indexOfSpecifier:", v15)}];
      table = [topLevelController table];
      [table selectRowAtIndexPath:v17 animated:0 scrollPosition:0];

      [v16 setParentController:topLevelController];
      rootController = [(PSURLManager *)self rootController];
      [v16 setRootController:rootController];

      [v16 setSpecifier:v15];
      v26 = pairCopy;
      [(PSURLManager *)self setOffsetForController:v16 fromObjectPair:pairCopy];
      v20 = [dictionaryCopy objectForKeyedSubscript:@"path"];
      pathComponents = [v20 pathComponents];

      v23 = _PSLoggingFacility(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = dCopy;
        _os_log_impl(&dword_18B008000, v23, OS_LOG_TYPE_DEFAULT, "PSURLManager: Handling deferred url for %@", buf, 0xCu);
      }

      [(PSURLManager *)self performURLHandlingForController:v16 dictionary:dictionaryCopy items:pathComponents controllerNeedsPush:1 withCompletion:completionCopy];
      pairCopy = v26;
    }

    else
    {
      v25 = _PSLoggingFacility(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = dCopy;
        _os_log_impl(&dword_18B008000, v25, OS_LOG_TYPE_DEFAULT, "PSURLManager: No controller for deferred URL-handling ID %@", buf, 0xCu);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }

  else
  {
    v24 = _PSLoggingFacility(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = dCopy;
      _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "PSURLManager: No specifier for deferred URL-handling ID %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary withCompletion:(id)completion
{
  completionCopy = completion;
  dictionaryCopy = dictionary;
  dCopy = d;
  v11 = [dictionaryCopy objectForKey:@"root"];
  stringByRemovingPercentEncoding = [v11 stringByRemovingPercentEncoding];

  v12 = SFObjectAndOffsetForURLPair();
  v13 = [dictionaryCopy mutableCopy];

  [(PSURLManager *)self handleDeferredURLForSpecifierID:dCopy resourceDictionary:v13 objectOffsetPair:v12 withCompletion:completionCopy];
}

- (void)popToRootAndSelectDefaultCategory:(BOOL)category performWithoutDeferringTransitions:(BOOL)transitions
{
  transitionsCopy = transitions;
  categoryCopy = category;
  topLevelController = [(PSURLManager *)self topLevelController];
  v8 = topLevelController;
  if (transitionsCopy)
  {
    v9 = MEMORY[0x1E69DD258];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PSURLManager_popToRootAndSelectDefaultCategory_performWithoutDeferringTransitions___block_invoke;
    v12[3] = &unk_1E71DBE20;
    v13 = topLevelController;
    [v9 _performWithoutDeferringTransitions:v12];

    if (!categoryCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    navigationController = [topLevelController navigationController];
    v11 = [navigationController popToRootViewControllerAnimated:0];

    if (!categoryCopy)
    {
      goto LABEL_7;
    }
  }

  if (([(PSSplitViewController *)self->_splitViewController isCollapsed]& 1) == 0)
  {
    [v8 selectDefaultCategoryForced:1];
  }

LABEL_7:
}

void __85__PSURLManager_popToRootAndSelectDefaultCategory_performWithoutDeferringTransitions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popToRootViewControllerAnimated:0];
}

- (id)urlForCurrentNavStack
{
  v72 = *MEMORY[0x1E69E9840];
  splitViewController = [(PSURLManager *)self splitViewController];
  containerNavigationController = [splitViewController containerNavigationController];
  topViewController = [containerNavigationController topViewController];

  v6 = topViewController;
  v7 = 0.0;
  if ([topViewController conformsToProtocol:&unk_1EFE6EBF8])
  {
    [topViewController verticalContentOffset];
    v7 = v8;
  }

  v62 = objc_alloc_init(MEMORY[0x1E696AD60]);
  splitViewController2 = [(PSURLManager *)self splitViewController];
  categoryController = [splitViewController2 categoryController];

  v11 = [categoryController conformsToProtocol:&unk_1EFE6C730];
  v60 = categoryController;
  if (v11)
  {
    specifier = [categoryController specifier];
    identifier = [specifier identifier];
    v14 = identifier;
    v15 = @"ROOT";
    if (identifier)
    {
      v15 = identifier;
    }

    v16 = v15;
  }

  else
  {
    v17 = _PSLoggingFacility(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 136315394;
      v69 = "[PSURLManager urlForCurrentNavStack]";
      v70 = 2114;
      v71 = v19;
      _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "%s: Category controller doesn't have a specifier: %{public}@", buf, 0x16u);
    }

    v16 = @"ROOT";
  }

  v20 = 0x1E696A000uLL;
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v59 = v16;
  v22 = [(__CFString *)v16 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  [v62 appendFormat:@"prefs:root=%@", v22];

  if (v7 != 0.0)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%0.0f", v7];
    uRLPathAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v25 = [v23 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];
    [v62 appendString:v25];
  }

  v26 = MEMORY[0x1E695DEC8];
  splitViewController3 = [(PSURLManager *)self splitViewController];
  containerNavigationController2 = [splitViewController3 containerNavigationController];
  viewControllers = [containerNavigationController2 viewControllers];
  v30 = [v26 arrayWithArray:viewControllers];

  if ([v30 count] >= 2)
  {
    v58 = v6;
    v31 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, objc_msgSend(v30, "count") - 1}];
    v32 = [v30 objectsAtIndexes:v31];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v30 = v32;
    v33 = [v30 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v64;
      v36 = 1;
      v61 = v30;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v64 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v63 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v20;
            specifier2 = [v38 specifier];
            identifier2 = [specifier2 identifier];

            specifier3 = [v38 specifier];
            v43 = [specifier3 propertyForKey:@"id"];

            if (!v43)
            {
              specifier4 = [v38 specifier];
              specifier5 = [v38 specifier];
              identifier3 = [specifier5 identifier];
              [specifier4 setProperty:identifier3 forKey:@"id"];
            }

            if (![v38 canBeShownFromSuspendedState])
            {

              v30 = v61;
              goto LABEL_34;
            }

            v47 = 0.0;
            if ([v38 conformsToProtocol:&unk_1EFE6EBF8])
            {
              [v38 verticalContentOffset];
              v47 = v48;
            }

            v20 = v39;
            uRLPathAllowedCharacterSet3 = [*(v39 + 2824) URLPathAllowedCharacterSet];
            v50 = [identifier2 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet3];
            v51 = v50;
            if (v36)
            {
              v52 = @"&path=%@";
            }

            else
            {
              v52 = @"/%@";
            }

            [v62 appendFormat:v52, v50];

            if (v47 != 0.0)
            {
              v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%0.0f", v47];
              uRLPathAllowedCharacterSet4 = [*(v39 + 2824) URLPathAllowedCharacterSet];
              v55 = [v53 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet4];
              [v62 appendString:v55];

              v20 = v39;
            }

            v36 = 0;
            v30 = v61;
          }
        }

        v34 = [v30 countByEnumeratingWithState:&v63 objects:v67 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:

    v6 = v58;
  }

  v56 = [MEMORY[0x1E695DFF8] URLWithString:v62];

  return v56;
}

@end