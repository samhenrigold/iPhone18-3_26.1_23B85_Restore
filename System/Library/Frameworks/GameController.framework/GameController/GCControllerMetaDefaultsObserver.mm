@interface GCControllerMetaDefaultsObserver
- (GCControllerMetaDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GCControllerMetaDefaultsObserver

- (GCControllerMetaDefaultsObserver)init
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = GCControllerMetaDefaultsObserver;
  v2 = [(GCControllerMetaDefaultsObserver *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", &stru_1F4E3B4E0, @"com.apple.gamecontroller.settings", @"meta"];
    v4 = getGCSettingsLogger(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "Initializing user defaults with suite = %@", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v3];
    metaDefaults = v2->_metaDefaults;
    v2->_metaDefaults = v5;

    [(NSUserDefaults *)v2->_metaDefaults addObserver:v2 forKeyPath:@"settingsExist" options:3 context:kGCSettingsContext];
    [(NSUserDefaults *)v2->_metaDefaults addObserver:v2 forKeyPath:@"controllerSettingsExist" options:3 context:kGCSettingsContext];
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (kGCSettingsContext == context)
  {
    v12 = +[GCControllerSettings settingsDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__GCControllerMetaDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E8418C50;
    v15 = pathCopy;
    v16 = changeCopy;
    dispatch_sync(v12, block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GCControllerMetaDefaultsObserver;
    [(GCControllerMetaDefaultsObserver *)&v13 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
  }
}

void __83__GCControllerMetaDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v111 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 == @"settingsExist")
  {
    v39 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v40 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v41 = [MEMORY[0x1E695DFB0] null];
    v42 = [v39 isEqual:v41];

    if (v42)
    {
      v43 = [MEMORY[0x1E695DF20] dictionary];

      v39 = v43;
    }

    v44 = [MEMORY[0x1E695DFB0] null];
    v45 = [v40 isEqual:v44];

    if (v45)
    {
      v46 = [MEMORY[0x1E695DF20] dictionary];

      v40 = v46;
    }

    v11 = [MEMORY[0x1E695DF70] array];
    v47 = [MEMORY[0x1E695DF70] array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v38 = v40;
    v48 = [v38 countByEnumeratingWithState:&v100 objects:v110 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v101;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v101 != v50)
          {
            objc_enumerationMutation(v38);
          }

          v52 = *(*(&v100 + 1) + 8 * i);
          v53 = [v39 objectForKeyedSubscript:v52];

          if (!v53)
          {
            [v11 addObject:v52];
          }
        }

        v49 = [v38 countByEnumeratingWithState:&v100 objects:v110 count:16];
      }

      while (v49);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v54 = v39;
    v55 = [v54 countByEnumeratingWithState:&v96 objects:v109 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v97;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v97 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v96 + 1) + 8 * j);
          v60 = [v38 objectForKeyedSubscript:v59];

          if (!v60)
          {
            [v47 addObject:v59];
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v96 objects:v109 count:16];
      }

      while (v56);
    }

    v71 = v54;

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v61 = +[GCControllerSettings settingsCustomizedChangedHandlers];
    v62 = [v61 countByEnumeratingWithState:&v92 objects:v108 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v93;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v93 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v92 + 1) + 8 * k);
          v67 = +[GCControllerSettings settingsCustomizedChangedHandlers];
          v68 = [v67 objectForKeyedSubscript:v66];
          (v68)[2](v68, v11, v47);
        }

        v63 = [v61 countByEnumeratingWithState:&v92 objects:v108 count:16];
      }

      while (v63);
    }

    v3 = v71;
  }

  else
  {
    if (v2 != @"controllerSettingsExist")
    {
      return;
    }

    v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v3 isEqual:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF20] dictionary];

      v3 = v7;
    }

    v8 = [MEMORY[0x1E695DFB0] null];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      v10 = [MEMORY[0x1E695DF20] dictionary];

      v4 = v10;
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v11 = v4;
    v73 = [v11 countByEnumeratingWithState:&v88 objects:v107 count:16];
    if (v73)
    {
      v70 = v3;
      v72 = *v89;
      v69 = v11;
      do
      {
        for (m = 0; m != v73; ++m)
        {
          if (*v89 != v72)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v88 + 1) + 8 * m);
          v14 = +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (v15)
          {
            v75 = m;
            v16 = [v3 objectForKeyedSubscript:v13];
            v17 = [v11 objectForKeyedSubscript:v13];
            v18 = [MEMORY[0x1E695DF70] array];
            v19 = [MEMORY[0x1E695DF70] array];
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v20 = v17;
            v21 = [v20 countByEnumeratingWithState:&v84 objects:v106 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v85;
              do
              {
                for (n = 0; n != v22; ++n)
                {
                  if (*v85 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v84 + 1) + 8 * n);
                  if (([v16 containsObject:v25] & 1) == 0)
                  {
                    [v18 addObject:v25];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v84 objects:v106 count:16];
              }

              while (v22);
            }

            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v26 = v16;
            v27 = [v26 countByEnumeratingWithState:&v80 objects:v105 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v81;
              do
              {
                for (ii = 0; ii != v28; ++ii)
                {
                  if (*v81 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v80 + 1) + 8 * ii);
                  if (([v20 containsObject:v31] & 1) == 0)
                  {
                    [v19 addObject:v31];
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v80 objects:v105 count:16];
              }

              while (v28);
            }

            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = v15;
            v32 = v15;
            v33 = [v32 countByEnumeratingWithState:&v76 objects:v104 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v77;
              do
              {
                for (jj = 0; jj != v34; ++jj)
                {
                  if (*v77 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = [v32 objectForKeyedSubscript:*(*(&v76 + 1) + 8 * jj)];
                  (v37)[2](v37, v13, v18, v19);
                }

                v34 = [v32 countByEnumeratingWithState:&v76 objects:v104 count:16];
              }

              while (v34);
            }

            v11 = v69;
            v3 = v70;
            v15 = v74;
            m = v75;
          }
        }

        v73 = [v11 countByEnumeratingWithState:&v88 objects:v107 count:16];
      }

      while (v73);
    }

    v38 = v11;
  }
}

- (void)dealloc
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, a2, a3, "Dealloc: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end