@interface PTVFXResources
- (void)asyncVFXInit:(id)init metalContext:(id)context;
@end

@implementation PTVFXResources

- (void)asyncVFXInit:(id)init metalContext:(id)context
{
  initCopy = init;
  contextCopy = context;
  objc_initWeak(&location, self);
  [(PTVFXResources *)self setReactionTemplates:MEMORY[0x277CBEBF8]];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke;
  block[3] = &unk_2785233B0;
  objc_copyWeak(&v11, &location);
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(initCopy, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke(void **a1)
{
  v125 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained initializationCancelled] & 1) == 0)
  {
    v100 = a1;
    v106 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    kdebug_trace();
    v105 = objc_opt_new();
    [v105 setQosLevel:3];
    v4 = objc_msgSend_device(a1[4]);
    v5 = [v4 newCommandQueueWithDescriptor:v105];

    v99 = v5;
    v103 = [[PTCommandQueueProxy alloc] initWithInitializerCommandQueue:v5];
    v104 = [v106 URLForResource:@"default" withExtension:@"metallib"];
    context = objc_autoreleasePoolPush();
    v6 = [v3 initializationCancelled];
    if (v6)
    {
      v8 = _PTLogSystem(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2243FB000, v8, OS_LOG_TYPE_INFO, "VFX initialization aborted", buf, 2u);
      }

      objc_autoreleasePoolPop(context);
      goto LABEL_51;
    }

    Helper_x8__OBJC_CLASS___VFXRenderer = gotLoadHelper_x8__OBJC_CLASS___VFXRenderer(v7);
    v11 = [*(v10 + 312) rendererWithCommandQueue:v103 options:{0, Helper_x8__OBJC_CLASS___VFXRenderer}];
    [v3 setVfxRenderer:v11];

    v12 = [v3 vfxRenderer];
    [v12 setAntialiasingMode:0];

    v13 = [v106 URLForResource:@"lighting" withExtension:@"vfx"];
    Helper_x8__OBJC_CLASS___VFXWorld = gotLoadHelper_x8__OBJC_CLASS___VFXWorld(v14);
    v17 = *(v16 + 360);
    v117 = 0;
    v18 = [v17 worldWithURL:v13 options:0 error:{&v117, Helper_x8__OBJC_CLASS___VFXWorld}];
    v19 = v117;
    [v3 setWorld:v18];

    if (v19 || ([v3 world], v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == 0, v22, v23))
    {
      v21 = _PTLogSystem(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_4(v13, v19, v21);
      }

      objc_autoreleasePoolPop(context);
      goto LABEL_51;
    }

    v24 = [v3 world];
    v25 = [v3 vfxRenderer];
    [v25 setWorld:v24];

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v26 = [v3 world];
    v27 = [v26 behaviorGraph];
    v28 = [v27 bindings];

    v29 = [v28 countByEnumeratingWithState:&v113 objects:v124 count:16];
    if (v29)
    {
      v30 = *v114;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v114 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v113 + 1) + 8 * i);
          v33 = [v32 name];
          v34 = [v33 isEqualToString:@"IBLIntensity"];

          if (v34)
          {
            [v3 setLightBinding:v32];
            goto LABEL_22;
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v113 objects:v124 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    v35 = [v3 lightBinding];
    v36 = v35 == 0;

    if (v36)
    {
      v38 = _PTLogSystem(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_1(v38, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    v46 = [v3 vfxRenderer];
    v47 = [v46 world];
    v48 = [v3 vfxRenderer];
    v49 = [[PTVFXResourcesLogger alloc] initWithName:@"IBLIntensity" index:0xFFFFFFFFLL];
    v50 = [(PTVFXResourcesLogger *)v49 progressHandler];
    [v47 prepareForRenderer:v48 progressHandler:v50];

    objc_autoreleasePoolPop(context);
    v98 = objc_opt_new();
    v52 = 0;
    if ([&unk_2837F3928 count])
    {
      v53 = 0;
      gotLoadHelper_x8__VFXWorldLoaderOptionMetalLibraryURL(v51);
      v97 = **(v54 + 392);
      *&v55 = 138412546;
      v96 = v55;
      while (1)
      {
        contexta = objc_autoreleasePoolPush();
        v56 = [v3 initializationCancelled];
        if (v56)
        {
          break;
        }

        if (v53 == 2)
        {
          v57 = [v98 lastObject];
          [v98 addObject:v57];
        }

        else
        {
          v58 = [&unk_2837F3928 objectAtIndexedSubscript:v53];
          v57 = [v106 URLForResource:v58 withExtension:@"vfx"];

          v122 = v97;
          v123 = v104;
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
          v61 = gotLoadHelper_x8__OBJC_CLASS___VFXWorld(v60);
          v63 = *(v62 + 360);
          v112 = v52;
          v64 = [v63 worldWithURL:v57 options:v59 error:{&v112, v61}];
          v65 = v112;

          if (v64)
          {
            v67 = [v3 vfxRenderer];
            v68 = [PTVFXResourcesLogger alloc];
            v69 = [&unk_2837F3928 objectAtIndexedSubscript:v53];
            v70 = [(PTVFXResourcesLogger *)v68 initWithName:v69 index:v53];
            v71 = [(PTVFXResourcesLogger *)v70 progressHandler];
            [v64 prepareForRenderer:v67 progressHandler:v71];

            [v98 addObject:v64];
          }

          else
          {
            v72 = _PTLogSystem(v66);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              *buf = v96;
              v119 = v57;
              v120 = 2112;
              v121 = v65;
              _os_log_error_impl(&dword_2243FB000, v72, OS_LOG_TYPE_ERROR, "Failed to create world from %@ error %@", buf, 0x16u);
            }
          }

          v52 = v65;
        }

        objc_autoreleasePoolPop(contexta);
        if (++v53 >= [&unk_2837F3928 count])
        {
          goto LABEL_38;
        }
      }

      v74 = _PTLogSystem(v56);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        goto LABEL_50;
      }

      *buf = 0;
    }

    else
    {
LABEL_38:
      contexta = objc_autoreleasePoolPush();
      v73 = [v3 initializationCancelled];
      if (!v73)
      {
        v75 = [v3 world];
        v76 = [v75 rootNode];
        v77 = [v76 childNodeWithName:@"Camera" recursively:1];
        v78 = [v77 camera];
        [v3 setCamera:v78];

        v79 = [v3 camera];
        LODWORD(v75) = v79 == 0;

        if (v75)
        {
          v74 = _PTLogSystem(v80);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_3(v74, v89, v90, v91, v92, v93, v94, v95);
          }
        }

        else
        {
          v74 = [(PTCommandQueueProxy *)v103 commandBuffer];
          if (!v74)
          {
            v81 = _PTLogSystem(0);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_2(v81, v82, v83, v84, v85, v86, v87, v88);
            }
          }

          [v74 setLabel:@"PTVFXResources wait for resources", v96];
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_89;
          v107[3] = &unk_278523388;
          objc_copyWeak(&v111, v100 + 5);
          v108 = v103;
          v109 = v100[4];
          v110 = v98;
          [v74 addCompletedHandler:v107];
          [v74 commit];

          objc_destroyWeak(&v111);
        }

        goto LABEL_50;
      }

      v74 = _PTLogSystem(v73);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
LABEL_50:

        objc_autoreleasePoolPop(contexta);
LABEL_51:

        goto LABEL_52;
      }

      *buf = 0;
    }

    _os_log_impl(&dword_2243FB000, v74, OS_LOG_TYPE_INFO, "VFX initialization aborted", buf, 2u);
    goto LABEL_50;
  }

LABEL_52:
}

void __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained = [WeakRetained initializationCancelled], !WeakRetained))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) commandQueue];
    [v5 switchToCommandQueue:v6];

    v7 = [*(a1 + 48) copy];
    [v3 setReactionTemplates:v7];

    kdebug_trace();
  }

  else
  {
    v4 = _PTLogSystem(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2243FB000, v4, OS_LOG_TYPE_INFO, "VFX initialization aborted", v8, 2u);
    }
  }
}

void __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_6(&dword_2243FB000, a2, a3, "Failed to create world from %@ error %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end