@interface WFSystemIntentAppEnumerator
- (WFSystemIntentAppEnumerator)init;
- (id)supportedIdentifiersForIntentClassName:(id)name includingUserActivityBasedApps:(BOOL)apps;
- (void)dealloc;
- (void)enumerate;
@end

@implementation WFSystemIntentAppEnumerator

- (id)supportedIdentifiersForIntentClassName:(id)name includingUserActivityBasedApps:(BOOL)apps
{
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9838;
  v19 = __Block_byref_object_dispose__9839;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__WFSystemIntentAppEnumerator_supportedIdentifiersForIntentClassName_includingUserActivityBasedApps___block_invoke;
  v11[3] = &unk_1E8375530;
  appsCopy = apps;
  v12 = nameCopy;
  v13 = &v15;
  v11[4] = self;
  v8 = nameCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __101__WFSystemIntentAppEnumerator_supportedIdentifiersForIntentClassName_includingUserActivityBasedApps___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[3] || !v2[4])
  {
    [v2 enumerate];
    v2 = *(a1 + 32);
  }

  v3 = 3;
  if (*(a1 + 56))
  {
    v3 = 4;
  }

  v4 = [v2[v3] objectForKey:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)enumerate
{
  v95[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E6963668]);
  v48 = [v4 initWithIdentifier:*MEMORY[0x1E696E580] error:0];
  v95[0] = v48;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v88 = 0u;
  v52 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
  if (v52)
  {
    v51 = *v86;
    v55 = *MEMORY[0x1E696E560];
    do
    {
      v5 = 0;
      do
      {
        if (*v86 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v5;
        v6 = *(*(&v85 + 1) + 8 * v5);
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v54 = [MEMORY[0x1E69635D0] enumeratorWithExtensionPointRecord:v6 options:0];
        v59 = [v54 countByEnumeratingWithState:&v81 objects:v93 count:16];
        if (v59)
        {
          v57 = *v82;
          do
          {
            for (i = 0; i != v59; i = i + 1)
            {
              if (*v82 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v8 = *(*(&v81 + 1) + 8 * i);
              v9 = objc_autoreleasePoolPush();
              if_extensionAttributesDictionary = [v8 if_extensionAttributesDictionary];
              v11 = [if_extensionAttributesDictionary objectForKeyedSubscript:v55];

              if (v11)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v12 = v11;
                }

                else
                {
                  v12 = 0;
                }
              }

              else
              {
                v12 = 0;
              }

              v13 = v12;

              if ([v13 count])
              {
                containingBundleRecord = [v8 containingBundleRecord];
                if (containingBundleRecord && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (![containingBundleRecord wf_isAvailableInContext:0])
                  {
LABEL_33:

                    goto LABEL_34;
                  }
                }

                else
                {

                  containingBundleRecord = 0;
                }

                bundleIdentifier = [containingBundleRecord bundleIdentifier];
                v16 = bundleIdentifier;
                v63 = v9;
                if (bundleIdentifier)
                {
                  bundleIdentifier2 = bundleIdentifier;
                }

                else
                {
                  bundleIdentifier2 = [v8 bundleIdentifier];
                }

                v18 = bundleIdentifier2;

                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v61 = v13;
                v19 = v13;
                v20 = [v19 countByEnumeratingWithState:&v77 objects:v92 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v78;
                  do
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v78 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v77 + 1) + 8 * j);
                      WFInsertIdentifierForKey(v2, v24, v18);
                      WFInsertIdentifierForKey(v3, v24, v18);
                    }

                    v21 = [v19 countByEnumeratingWithState:&v77 objects:v92 count:16];
                  }

                  while (v21);
                }

                v13 = v61;
                v9 = v63;
                goto LABEL_33;
              }

LABEL_34:

              objc_autoreleasePoolPop(v9);
            }

            v59 = [v54 countByEnumeratingWithState:&v81 objects:v93 count:16];
          }

          while (v59);
        }

        v5 = v53 + 1;
      }

      while (v53 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
    }

    while (v52);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v60 = WFInstalledAppsEnumerator();
  v25 = [v60 countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v74;
    v56 = *v74;
    do
    {
      v28 = 0;
      v58 = v26;
      do
      {
        if (*v74 != v27)
        {
          objc_enumerationMutation(v60);
        }

        v29 = *(*(&v73 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        supportedIntents = [v29 supportedIntents];
        if_userActivityTypes = [v29 if_userActivityTypes];
        if (([supportedIntents count] || objc_msgSend(if_userActivityTypes, "count")) && objc_msgSend(v29, "wf_isAvailableInContext:", 0))
        {
          v62 = if_userActivityTypes;
          v64 = v30;
          bundleIdentifier3 = [v29 bundleIdentifier];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v34 = supportedIntents;
          v35 = [v34 countByEnumeratingWithState:&v69 objects:v90 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v70;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v70 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v69 + 1) + 8 * k);
                WFInsertIdentifierForKey(v2, v39, bundleIdentifier3);
                WFInsertIdentifierForKey(v3, v39, bundleIdentifier3);
              }

              v36 = [v34 countByEnumeratingWithState:&v69 objects:v90 count:16];
            }

            while (v36);
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          if_userActivityTypes = v62;
          v40 = v62;
          v41 = [v40 countByEnumeratingWithState:&v65 objects:v89 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v66;
            do
            {
              for (m = 0; m != v42; ++m)
              {
                if (*v66 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                WFInsertIdentifierForKey(v3, *(*(&v65 + 1) + 8 * m), bundleIdentifier3);
              }

              v42 = [v40 countByEnumeratingWithState:&v65 objects:v89 count:16];
            }

            while (v42);
          }

          v27 = v56;
          v26 = v58;
          v30 = v64;
        }

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v28 != v26);
      v26 = [v60 countByEnumeratingWithState:&v73 objects:v91 count:16];
    }

    while (v26);
  }

  identifiersByIntentName = self->_identifiersByIntentName;
  self->_identifiersByIntentName = v2;
  v46 = v2;

  identifiersByUserActivityType = self->_identifiersByUserActivityType;
  self->_identifiersByUserActivityType = v3;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = WFSystemIntentAppEnumerator;
  [(WFSystemIntentAppEnumerator *)&v3 dealloc];
}

- (WFSystemIntentAppEnumerator)init
{
  v12.receiver = self;
  v12.super_class = WFSystemIntentAppEnumerator;
  v2 = [(WFSystemIntentAppEnumerator *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.shortcuts.WFSystemIntentAppEnumerator", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    objc_initWeak(&location, v2);
    uTF8String = [*MEMORY[0x1E6963548] UTF8String];
    v6 = v2->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__WFSystemIntentAppEnumerator_init__block_invoke;
    v9[3] = &unk_1E837C5F8;
    objc_copyWeak(&v10, &location);
    notify_register_dispatch(uTF8String, &v2->_token, v6, v9);
    v7 = v2;
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__WFSystemIntentAppEnumerator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[3];
  WeakRetained[3] = 0;

  v2 = WeakRetained[4];
  WeakRetained[4] = 0;
}

@end