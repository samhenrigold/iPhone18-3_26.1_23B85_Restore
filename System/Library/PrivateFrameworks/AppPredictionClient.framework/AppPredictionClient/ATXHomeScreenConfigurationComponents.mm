@interface ATXHomeScreenConfigurationComponents
- (ATXHomeScreenConfigurationComponents)initWithConfigurations:(id)configurations;
- (BOOL)containsWidgetWithBundleId:(id)id kind:(id)kind size:(unint64_t)size;
- (id)stackForStackedWidget:(id)widget;
@end

@implementation ATXHomeScreenConfigurationComponents

- (ATXHomeScreenConfigurationComponents)initWithConfigurations:(id)configurations
{
  v88 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v81.receiver = self;
  v81.super_class = ATXHomeScreenConfigurationComponents;
  v5 = [(ATXHomeScreenConfigurationComponents *)&v81 init];
  if (v5)
  {
    v6 = objc_opt_new();
    stackForStackedWidgetIdDictionary = v5->_stackForStackedWidgetIdDictionary;
    v5->_stackForStackedWidgetIdDictionary = v6;

    v53 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v58 = objc_opt_new();
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v50 = configurationsCopy;
    obj = configurationsCopy;
    v54 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
    if (v54)
    {
      v52 = *v78;
      v57 = v8;
      do
      {
        v10 = 0;
        do
        {
          if (*v78 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v77 + 1) + 8 * v10);
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v55 = v10;
          v56 = v11;
          stacks = [v11 stacks];
          v13 = [stacks countByEnumeratingWithState:&v73 objects:v86 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v74;
            v59 = *v74;
            v60 = stacks;
            do
            {
              v16 = 0;
              v61 = v14;
              do
              {
                if (*v74 != v15)
                {
                  objc_enumerationMutation(stacks);
                }

                v17 = *(*(&v73 + 1) + 8 * v16);
                widgets = [v17 widgets];
                v19 = [widgets count];

                widgets2 = [v17 widgets];
                v21 = widgets2;
                if (v19 == 1)
                {
                  firstObject = [widgets2 firstObject];

                  [v8 addObject:firstObject];
                }

                else
                {
                  v23 = [widgets2 count];

                  if (v23 >= 2)
                  {
                    v62 = v16;
                    v71 = 0u;
                    v72 = 0u;
                    v69 = 0u;
                    v70 = 0u;
                    widgets3 = [v17 widgets];
                    v25 = [widgets3 countByEnumeratingWithState:&v69 objects:v85 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v70;
                      do
                      {
                        for (i = 0; i != v26; ++i)
                        {
                          if (*v70 != v27)
                          {
                            objc_enumerationMutation(widgets3);
                          }

                          v29 = *(*(&v69 + 1) + 8 * i);
                          [v9 addObject:v29];
                          widgetUniqueId = [v29 widgetUniqueId];

                          if (widgetUniqueId)
                          {
                            v32 = v5->_stackForStackedWidgetIdDictionary;
                            widgetUniqueId2 = [v29 widgetUniqueId];
                            [(NSMutableDictionary *)v32 setObject:v17 forKeyedSubscript:widgetUniqueId2];
                          }

                          else
                          {
                            widgetUniqueId2 = __atxlog_handle_home_screen(v31);
                            if (os_log_type_enabled(widgetUniqueId2, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 138412290;
                              v84 = v29;
                              _os_log_fault_impl(&dword_1BF549000, widgetUniqueId2, OS_LOG_TYPE_FAULT, "ATXHomeScreenConfigurationComponents: stacked widget has no widgetUniqueId: %@", buf, 0xCu);
                            }
                          }
                        }

                        v26 = [widgets3 countByEnumeratingWithState:&v69 objects:v85 count:16];
                      }

                      while (v26);
                    }

                    [v58 addObject:v17];
                    v8 = v57;
                    v15 = v59;
                    stacks = v60;
                    v14 = v61;
                    v16 = v62;
                  }
                }

                ++v16;
              }

              while (v16 != v14);
              v14 = [stacks countByEnumeratingWithState:&v73 objects:v86 count:16];
            }

            while (v14);
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          panels = [v56 panels];
          v35 = [panels countByEnumeratingWithState:&v65 objects:v82 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v66;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v66 != v37)
                {
                  objc_enumerationMutation(panels);
                }

                widgets4 = [*(*(&v65 + 1) + 8 * j) widgets];
                firstObject2 = [widgets4 firstObject];

                [v8 addObject:firstObject2];
              }

              v36 = [panels countByEnumeratingWithState:&v65 objects:v82 count:16];
            }

            while (v36);
          }

          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __63__ATXHomeScreenConfigurationComponents_initWithConfigurations___block_invoke;
          v63[3] = &unk_1E80C3DB8;
          v63[4] = v56;
          v64 = v53;
          [v56 enumerateApps:v63];

          v10 = v55 + 1;
        }

        while (v55 + 1 != v54);
        v54 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
      }

      while (v54);
    }

    v41 = [v9 copy];
    stackedWidgets = v5->_stackedWidgets;
    v5->_stackedWidgets = v41;

    v43 = [v8 copy];
    pinnedWidgets = v5->_pinnedWidgets;
    v5->_pinnedWidgets = v43;

    v45 = [v58 copy];
    stacks = v5->_stacks;
    v5->_stacks = v45;

    v47 = [v53 copy];
    apps = v5->_apps;
    v5->_apps = v47;

    configurationsCopy = v50;
  }

  return v5;
}

void __63__ATXHomeScreenConfigurationComponents_initWithConfigurations___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPage:v3];
  [*(a1 + 40) addObject:v4];
}

- (id)stackForStackedWidget:(id)widget
{
  widgetCopy = widget;
  widgetUniqueId = [widgetCopy widgetUniqueId];

  if (widgetUniqueId)
  {
    stackForStackedWidgetIdDictionary = self->_stackForStackedWidgetIdDictionary;
    widgetUniqueId2 = [widgetCopy widgetUniqueId];
    v8 = [(NSMutableDictionary *)stackForStackedWidgetIdDictionary objectForKeyedSubscript:widgetUniqueId2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsWidgetWithBundleId:(id)id kind:(id)kind size:(unint64_t)size
{
  v26 = *MEMORY[0x1E69E9840];
  idCopy = id;
  kindCopy = kind;
  [(NSArray *)self->_pinnedWidgets arrayByAddingObjectsFromArray:self->_stackedWidgets];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *v22;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      extensionBundleId = [v15 extensionBundleId];
      if (![extensionBundleId isEqualToString:idCopy])
      {
        goto LABEL_11;
      }

      widgetKind = [v15 widgetKind];
      if (([widgetKind isEqualToString:kindCopy] & 1) == 0)
      {

LABEL_11:
        continue;
      }

      v18 = [v15 size];

      if (v18 == size)
      {
        v19 = 1;
        goto LABEL_15;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v12);
LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

@end