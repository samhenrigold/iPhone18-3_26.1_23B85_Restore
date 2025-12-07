@interface SCNMTLLibraryManager
+ (id)hashCodeForSource:(id)source macros:(id)macros;
- (SCNMTLLibraryManager)initWithDevice:(id)device;
- (id)defaultLibrary;
- (id)libraryForFile:(id)file;
- (id)libraryForSourceCode:(id)code options:(id)options;
- (void)clearCompiledLibraries;
- (void)dealloc;
- (void)libraryForProgramDesc:(id *)desc completionHandler:(id)handler;
@end

@implementation SCNMTLLibraryManager

- (SCNMTLLibraryManager)initWithDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SCNMTLLibraryManager;
  v4 = [(SCNMTLLibraryManager *)&v29 init];
  v5 = v4;
  if (v4)
  {
    v4->_device = device;
    v4->_frameworkLibrary = -[SCNMTLLibrary initWithPath:manager:]([SCNMTLLibrary alloc], "initWithPath:manager:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", @"default", @"metallib"}], v4);
    v5->_availableLibraries = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v5->_availableCompiledLibraries = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    v5->_availableCompiledLibrariesLock._os_unfair_lock_opaque = 0;
    v5->_deviceQueue = dispatch_queue_create("com.apple.scenekit.device", 0);
    v5->_shaderCompilationGroup = dispatch_group_create();
    v6 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (!v6)
    {
      v6 = C3DGetShaderCacheLibraryURL();
      if (!v6)
      {
        v6 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      }
    }

    v7 = v6;
    v28 = 0;
    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      v8 = [(MTLDevice *)v5->_device newLibraryWithURL:v7 error:&v28];
      if (v8)
      {
        v10 = v8;
        v11 = CFHash(v7);
        v5->_commonProfileCacheLibrary = v10;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __39__SCNMTLLibraryManager_initWithDevice___block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_Q8__0l;
        aBlock[4] = v11;
        v5->_commonProfileCacheLibraryHasherBlock = _Block_copy(aBlock);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __39__SCNMTLLibraryManager_initWithDevice___block_invoke_2;
        v26[3] = &unk_2782FE8C8;
        v26[4] = v10;
        v5->_commonProfileCacheLibraryProviderBlock = _Block_copy(v26);
        functionNames = [(MTLLibrary *)v5->_commonProfileCacheLibrary functionNames];
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = [functionNames countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(functionNames);
              }

              v18 = *(*(&v22 + 1) + 8 * i);
              if (([v18 hasPrefix:@"commonprofile_vert"] & 1) != 0 || objc_msgSend(v18, "hasPrefix:", @"commonprofile_frag"))
              {
                v19 = [(MTLLibrary *)v5->_commonProfileCacheLibrary newFunctionWithName:v18];
                [v13 setObject:v19 forKeyedSubscript:v18];
              }
            }

            v15 = [functionNames countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v15);
        }

        if ([v13 count])
        {
          v5->_commonProfilePrecompiledFunctions = [v13 copy];
        }

        else
        {
          CFRelease(v5->_commonProfileCacheLibrary);
          CFRelease(v5->_commonProfileCacheLibraryHasherBlock);
          CFRelease(v5->_commonProfileCacheLibraryProviderBlock);
        }
      }

      else
      {
        v20 = scn_default_log(0, v9);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [SCNMTLLibraryManager initWithDevice:];
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_availableCompiledLibraries);

  dispatch_release(self->_deviceQueue);
  v3.receiver = self;
  v3.super_class = SCNMTLLibraryManager;
  [(SCNMTLLibraryManager *)&v3 dealloc];
}

+ (id)hashCodeForSource:(id)source macros:(id)macros
{
  v34 = *MEMORY[0x277D85DE8];
  CC_SHA256_Init(&c);
  CFStringUpdateHash(source);
  v6 = [objc_msgSend(macros "allKeys")];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [macros objectForKeyedSubscript:v11];
        CFStringUpdateHash(v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CFStringUpdateHash(v12);
        }

        else
        {
          data[0] = [v12 hash];
          CC_SHA256_Update(&c, data, 8u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  CC_SHA256_Final(md, &c);
  v13 = 0;
  v14 = data;
  v15.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v15.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v16.i64[0] = 0x3737373737373737;
  v16.i64[1] = 0x3737373737373737;
  v17.i64[0] = 0x3030303030303030;
  v17.i64[1] = 0x3030303030303030;
  v18.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v18.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v19.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v19.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v20 = *&md[v13];
    v21.i64[0] = 0x3737373737373737;
    v21.i64[1] = 0x3737373737373737;
    v22.i64[0] = 0x3030303030303030;
    v22.i64[1] = 0x3030303030303030;
    v35.val[0] = vbslq_s8(vcgtq_u8(v15, v20), vsraq_n_u8(v22, v20, 4uLL), vsraq_n_u8(v21, v20, 4uLL));
    v23 = vandq_s8(v20, v18);
    v35.val[1] = vbslq_s8(vcgtq_u8(v19, v23), vorrq_s8(v23, v17), vaddq_s8(v23, v16));
    vst2q_s8(v14, v35);
    v14 += 32;
    v13 += 16;
  }

  while (v13 != 32);
  v31 = 0;
  return [MEMORY[0x277CCACA8] stringWithCString:data encoding:1];
}

- (void)clearCompiledLibraries
{
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  CFDictionaryRemoveAllValues(self->_availableCompiledLibraries);

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
}

- (id)defaultLibrary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SCNMTLLibraryManager_defaultLibrary__block_invoke;
  block[3] = &unk_2782FB608;
  block[4] = self;
  if ([SCNMTLLibraryManager defaultLibrary]::onceToken != -1)
  {
    dispatch_once(&[SCNMTLLibraryManager defaultLibrary]::onceToken, block);
  }

  return [(SCNMTLLibrary *)self->_defaultLibrary library];
}

SCNMTLLibrary *__38__SCNMTLLibraryManager_defaultLibrary__block_invoke(uint64_t a1)
{
  result = -[SCNMTLLibrary initWithPath:manager:]([SCNMTLLibrary alloc], "initWithPath:manager:", [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")], *(a1 + 32));
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (id)libraryForFile:(id)file
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  deviceQueue = self->_deviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SCNMTLLibraryManager_libraryForFile___block_invoke;
  block[3] = &unk_2782FE8F0;
  block[4] = self;
  block[5] = file;
  block[6] = &v7;
  dispatch_sync(deviceQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

MTLLibrary *__39__SCNMTLLibraryManager_libraryForFile___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  if (!v2)
  {
    v2 = [[SCNMTLLibrary alloc] initWithPath:a1[5] manager:a1[4]];
    [*(a1[4] + 88) setObject:v2 forKey:a1[5]];
  }

  result = [(SCNMTLLibrary *)v2 library];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (id)libraryForSourceCode:(id)code options:(id)options
{
  v7 = +[SCNMTLLibraryManager hashCodeForSource:macros:](SCNMTLLibraryManager, "hashCodeForSource:macros:", code, [options preprocessorMacros]);
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  Value = CFDictionaryGetValue(self->_availableCompiledLibraries, v7);
  if (!Value)
  {
    v14 = 0;
    ++self->__engineStats->onlineShaderCount;
    v9 = CACurrentMediaTime();
    Value = [(MTLDevice *)self->_device newLibraryWithSource:code options:options error:&v14];
    self->__engineStats->onlineShaderCompilationTime = CACurrentMediaTime() - v9 + self->__engineStats->onlineShaderCompilationTime;
    if (Value)
    {
      CFDictionarySetValue(self->_availableCompiledLibraries, v7, Value);
    }

    else
    {
      v12 = scn_default_log(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLLibraryManager libraryForSourceCode:options:];
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
  return Value;
}

- (void)libraryForProgramDesc:(id *)desc completionHandler:(id)handler
{
  if (desc->var0)
  {
    selfCopy = self;
    TypeID = C3DFXMetalProgramGetTypeID();
    self = CFGetTypeID(desc->var0);
    if (TypeID == self)
    {
      var0 = desc->var0;
      LibraryProviderBlock = C3DFXMetalProgramGetLibraryProviderBlock(&desc->var0->var0.var0.var0.var0);
      if (!LibraryProviderBlock || (defaultLibrary = (*(LibraryProviderBlock + 16))(LibraryProviderBlock, selfCopy->_device)) == 0)
      {
        SourceCode = C3DFXMetalProgramGetSourceCode(var0, v10);
        if (SourceCode)
        {
          v14 = SourceCode;
          PreprocessorsMacros = C3DFXMetalProgramGetPreprocessorsMacros(var0, v13);
          v16 = [SCNMTLLibraryManager hashCodeForSource:v14 macros:PreprocessorsMacros];
          os_unfair_lock_lock(&selfCopy->_availableCompiledLibrariesLock);
          Value = CFDictionaryGetValue(selfCopy->_availableCompiledLibraries, v16);
          os_unfair_lock_unlock(&selfCopy->_availableCompiledLibrariesLock);
          if (Value)
          {
            v20 = *(handler + 2);
            handlerCopy3 = handler;
            commonProfileCacheLibrary = Value;
LABEL_19:

            v20(handlerCopy3, commonProfileCacheLibrary, 0);
            return;
          }

          v24 = C3DShouldCollectGeneratedShaders(v18, v19);
          v25 = [(NSDictionary *)selfCopy->_commonProfilePrecompiledFunctions count];
          if (!v25 && !v24)
          {
LABEL_34:
            OverrideMaterial = C3DGeometryGetOverrideMaterial(var0);
            v35 = SCNMetalLanguageVersion(OverrideMaterial, v34);
            LanguageVersion = C3DFXMetalProgramGetLanguageVersion(var0, v36);
            if (v35 <= LanguageVersion)
            {
              v38 = LanguageVersion;
            }

            else
            {
              v38 = v35;
            }

            v39 = objc_alloc_init(MEMORY[0x277CD6D08]);
            [v39 setPreprocessorMacros:PreprocessorsMacros];
            [v39 setLanguageVersion:v38];
            [v39 setAdditionalCompilerArguments:@" -w "];
            kdebug_trace();
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v57 = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49;
            v58 = &unk_2782FE9B8;
            v40 = *&desc->var13;
            v67 = *&desc->var11;
            v68 = v40;
            var16 = desc->var16;
            var17 = desc->var17;
            v42 = *&desc->var2;
            v63 = *&desc->var0;
            v64 = v42;
            v43 = *&desc->var6;
            v65 = *&desc->var4;
            v66 = v43;
            v70 = var17;
            v71 = OverrideMaterial;
            v59 = v14;
            v60 = selfCopy;
            v61 = v16;
            handlerCopy2 = handler;
            v72 = var0;
            ++selfCopy->__engineStats->onlineShaderCount;
            v46 = CACurrentMediaTime();
            var14 = desc->var14;
            if (desc->var14)
            {
              if (var14 == 2)
              {
                device = selfCopy->_device;
                v54[0] = MEMORY[0x277D85DD0];
                v54[1] = 3221225472;
                v54[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_56;
                v54[3] = &unk_2782FEA58;
                v54[4] = selfCopy;
                v54[5] = v56;
                v49 = v54;
              }

              else
              {
                if (var14 != 1)
                {
                  v51 = scn_default_log(v44, v45);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
                  }

                  goto LABEL_46;
                }

                dispatch_group_enter(selfCopy->_shaderCompilationGroup);
                device = selfCopy->_device;
                v55[0] = MEMORY[0x277D85DD0];
                v55[1] = 3221225472;
                v55[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_54;
                v55[3] = &unk_2782FEA08;
                *&v55[6] = v46;
                v55[4] = selfCopy;
                v55[5] = v56;
                v49 = v55;
              }

              [(MTLDevice *)device newLibraryWithSource:v14 options:v39 completionHandler:v49];
            }

            else
            {
              v53 = 0;
              v50 = [(MTLDevice *)selfCopy->_device newLibraryWithSource:v14 options:v39 error:&v53];
              selfCopy->__engineStats->onlineShaderCompilationTime = CACurrentMediaTime() - v46 + selfCopy->__engineStats->onlineShaderCompilationTime;
              v57(v56, v50, v53);
            }

LABEL_46:

            return;
          }

          v26 = [@"commonprofile_vert" stringByAppendingString:v16];
          v52 = [@"commonprofile_frag" stringByAppendingString:v16];
          if (v25)
          {
            v27 = [(NSDictionary *)selfCopy->_commonProfilePrecompiledFunctions objectForKeyedSubscript:v26];
            if (v27)
            {
              v27 = [(NSDictionary *)selfCopy->_commonProfilePrecompiledFunctions objectForKeyedSubscript:v52];
              if (v27)
              {
                C3DFXMetalProgramSetFunctionName(var0, 0, v26);
                C3DFXMetalProgramSetFunctionName(var0, 1, v52);
                C3DFXMetalProgramReplaceSourceCodeWithLibrary(var0, selfCopy->_commonProfileCacheLibraryHasherBlock, selfCopy->_commonProfileCacheLibraryProviderBlock);
                commonProfileCacheLibrary = selfCopy->_commonProfileCacheLibrary;
                goto LABEL_18;
              }
            }

            v29 = scn_default_log(v27, v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = v26;
              [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
              if (!v24)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v30 = v26;
              if (!v24)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            v30 = v26;
            if (!v24)
            {
              goto LABEL_34;
            }
          }

          v31 = C3DGetShaderCompilationDirectory();
          if (v31)
          {
            v32 = v31;
            if ([SCNMTLLibraryManager libraryForProgramDesc:completionHandler:]::onceToken != -1)
            {
              [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
            }

            CFRetain(var0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2;
            block[3] = &unk_2782FE968;
            block[4] = v32;
            block[5] = v16;
            block[6] = v30;
            block[7] = v52;
            block[8] = var0;
            dispatch_async([SCNMTLLibraryManager libraryForProgramDesc:completionHandler:]::shaderCollectionQueue, block);
          }

          goto LABEL_34;
        }

        if (C3DFXProgramIsClientProgram(desc->var0, v13))
        {
          defaultLibrary = [(SCNMTLLibraryManager *)selfCopy defaultLibrary];
        }

        else
        {
          defaultLibrary = [(SCNMTLLibraryManager *)selfCopy frameworkLibrary];
        }
      }

      commonProfileCacheLibrary = defaultLibrary;
LABEL_18:
      v20 = *(handler + 2);
      handlerCopy3 = handler;
      goto LABEL_19;
    }
  }

  v23 = scn_default_log(self, a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
  }
}

dispatch_queue_t __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.scenekit.shader-collection-queue", v1);
  [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:]::shaderCollectionQueue = result;
  return result;
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3;
  v8[3] = &unk_2782FE918;
  v9 = *(a1 + 32);
  v2 = [SCNCommonProfileProgramGenerator generatorWithProfile:0 allowingHotReload:0];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43;
  v7[3] = &unk_2782FE940;
  v7[4] = *(a1 + 32);
  [(SCNCommonProfileProgramGenerator *)v2 collectShaderForProgram:v5 hashCode:v3 newVertexFunctionName:v4 newFragmentFunctionName:v6 sourceCodeBlock:v8 additionalFileBlock:v7];
  CFRelease(*(a1 + 64));
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = 0;
  v3 = [a2 writeToURL:objc_msgSend(v2 atomically:"URLByAppendingPathComponent:" encoding:objc_msgSend(MEMORY[0x277CCACA8] error:{"stringWithFormat:", @"commonProfile_%@.metal", v7)), 1, 4, &v8}];
  if (v3)
  {
    v5 = v8 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = scn_default_log(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_cold_1(&v8);
    }
  }
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v4 = [*(a1 + 32) URLByAppendingPathComponent:?];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    isEqualToString = objc_msgSend_isEqualToString_([MEMORY[0x277CCACA8] stringWithContentsOfURL:v4 encoding:4 error:0]);
    if ((isEqualToString & 1) == 0)
    {
      v7 = scn_default_log(isEqualToString, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43_cold_2();
      }
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v8 = [a2 writeToURL:v4 atomically:1 encoding:4 error:&v11];
    if (!v8 || v11)
    {
      v10 = scn_default_log(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_cold_1(&v11);
      }
    }
  }
}

uint64_t __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49(uint64_t a1, const void *a2, void *a3)
{
  if (a3)
  {
    v6 = *(a1 + 152);
    if (v6)
    {
      [v6 setObject:a3 forKeyedSubscript:*(a1 + 32)];
    }
  }

  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 40) + 104));
    if (!CFDictionaryGetValue(*(*(a1 + 40) + 96), *(a1 + 48)))
    {
      CFDictionarySetValue(*(*(a1 + 40) + 96), *(a1 + 48), a2);
    }

    os_unfair_lock_unlock((*(a1 + 40) + 104));
  }

  else
  {
    Callbacks = *(a1 + 184);
    if (Callbacks && (Callbacks = C3DFXProgramDelegateGetCallbacks(Callbacks, a2)) != 0 && (v8 = *(Callbacks + 16)) != 0)
    {
      UserInfo = C3DFXProgramDelegateGetUserInfo(*(a1 + 184), a2);
      v8(0, a3, UserInfo);
    }

    else
    {
      v10 = scn_default_log(Callbacks, a2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49_cold_1(a3);
      }

      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v15 = 0;
      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_50;
      v13[3] = &unk_2782FE990;
      v13[4] = v14;
      [v11 enumerateLinesUsingBlock:v13];
      _Block_object_dispose(v14, 8);
    }
  }

  (*(*(a1 + 56) + 16))();
  return kdebug_trace();
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_50(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = v6 + 1;
    v7[0] = 67109378;
    v7[1] = v6;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_DEFAULT, "%d: %@", v7, 0x12u);
  }
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_54(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = *(v3 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2_55;
  block[3] = &unk_2782FE9E0;
  block[8] = a1[6];
  v5 = a1[5];
  block[4] = v3;
  block[5] = a2;
  block[6] = a3;
  block[7] = v5;
  dispatch_async(v4, block);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_2_55(uint64_t a1)
{
  *(*(*(a1 + 32) + 32) + 288) = CACurrentMediaTime() - *(a1 + 64) + *(*(*(a1 + 32) + 32) + 288);
  (*(*(a1 + 56) + 16))();
  v2 = *(*(a1 + 32) + 48);

  dispatch_group_leave(v2);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_56(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_4;
  block[3] = &unk_2782FEA30;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

- (void)initWithDevice:.cold.1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)libraryForSourceCode:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)libraryForProgramDesc:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_3_cold_1(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: Failed to collect shader: %@", v3, v4, v5, v6);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_43_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__SCNMTLLibraryManager_libraryForProgramDesc_completionHandler___block_invoke_49_cold_1(void *a1)
{
  [a1 description];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: FATAL ERROR : failed compiling shader:\n%@", v3, v4, v5, v6);
}

@end