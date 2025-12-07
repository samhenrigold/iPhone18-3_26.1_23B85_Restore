@interface VFXMTLLibraryManager
+ (id)hashCodeForSource:(id)source macros:(id)macros;
- (VFXMTLLibraryManager)initWithDevice:(id)device;
- (id)defaultLibrary;
- (id)libraryForFile:(id)file;
- (id)libraryForSourceCode:(id)code options:(id)options;
- (void)clearCompiledLibraries;
- (void)dealloc;
- (void)libraryForProgramDesc:(id *)desc resourceManager:(id)manager completionHandler:(id)handler;
@end

@implementation VFXMTLLibraryManager

- (VFXMTLLibraryManager)initWithDevice:(id)device
{
  v77 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = VFXMTLLibraryManager;
  v4 = [(VFXMTLLibraryManager *)&v75 init];
  v5 = v4;
  if (v4)
  {
    v4->_device = device;
    v6 = MEMORY[0x1E696AAE8];
    v7 = objc_opt_class();
    v9 = objc_msgSend_bundleForClass_(v6, v8, v7);
    v11 = objc_msgSend_pathForResource_ofType_(v9, v10, @"default", @"metallib");
    v12 = [VFXMTLLibrary alloc];
    v5->_frameworkLibrary = objc_msgSend_initWithPath_manager_(v12, v13, v11, v5);
    v5->_availableLibraries = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v14, v15);
    v5->_availableCompiledLibraries = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    v5->_availableCompiledLibrariesLock._os_unfair_lock_opaque = 0;
    v5->_deviceQueue = dispatch_queue_create("com.apple.vfx.device", 0);
    v5->_shaderCompilationGroup = dispatch_group_create();
    v18 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v16, v17);
    v20 = objc_msgSend_URLForResource_withExtension_(v18, v19, @"vfx", @"metallib");
    if (!v20)
    {
      v20 = sub_1AF28A400();
      if (!v20)
      {
        v23 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v21, v22);
        v20 = objc_msgSend_URLForResource_withExtension_(v23, v24, @"default", @"metallib");
      }
    }

    v25 = v20;
    v74 = 0;
    v26 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v21, v22);
    v29 = objc_msgSend_path(v25, v27, v28);
    if (objc_msgSend_fileExistsAtPath_(v26, v30, v29))
    {
      v32 = objc_msgSend_newLibraryWithURL_error_(v5->_device, v31, v25, &v74);
      if (v32)
      {
        v34 = v32;
        v35 = CFHash(v25);
        v5->_commonProfileCacheLibrary = v34;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_1AF1FBBBC;
        aBlock[3] = &unk_1E7A7CA90;
        aBlock[4] = v35;
        v5->_commonProfileCacheLibraryHasherBlock = _Block_copy(aBlock);
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = sub_1AF1FBBC4;
        v72[3] = &unk_1E7A7CAB8;
        v72[4] = v34;
        v5->_commonProfileCacheLibraryProviderBlock = _Block_copy(v72);
        v38 = objc_msgSend_functionNames(v5->_commonProfileCacheLibrary, v36, v37);
        v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        obj = v38;
        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v68, v76, 16);
        if (v41)
        {
          v44 = v41;
          v45 = *v69;
          v46 = v5;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v69 != v45)
              {
                objc_enumerationMutation(obj);
              }

              v48 = *(*(&v68 + 1) + 8 * i);
              if (objc_msgSend_hasPrefix_(v48, v42, @"vfx_") && ((objc_msgSend_hasSuffix_(v48, v49, @"commonprofile_vert") & 1) != 0 || objc_msgSend_hasSuffix_(v48, v49, @"commonprofile_frag")))
              {
                v50 = objc_msgSend_newFunctionWithName_(v5->_commonProfileCacheLibrary, v49, v48);
                objc_msgSend_setObject_forKeyedSubscript_(v39, v51, v50, v48);

                v5 = v46;
              }

              else if ((objc_msgSend_hasPrefix_(v48, v49, @"commonprofile_vert") & 1) != 0 || objc_msgSend_hasPrefix_(v48, v42, @"commonprofile_frag"))
              {
                v52 = objc_msgSend_newFunctionWithName_(v5->_commonProfileCacheLibrary, v42, v48);
                objc_msgSend_setObject_forKeyedSubscript_(v39, v53, v52, v48);

                v5 = v46;
                v46->_legacyShaderCache = 1;
              }
            }

            v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v68, v76, 16);
          }

          while (v44);
        }

        if (objc_msgSend_count(v39, v42, v43))
        {
          v5->_commonProfilePrecompiledFunctions = objc_msgSend_copy(v39, v54, v55);
        }

        else
        {
          commonProfileCacheLibrary = v5->_commonProfileCacheLibrary;
          if (commonProfileCacheLibrary)
          {
            CFRelease(commonProfileCacheLibrary);
            v5->_commonProfileCacheLibrary = 0;
          }

          commonProfileCacheLibraryHasherBlock = v5->_commonProfileCacheLibraryHasherBlock;
          if (commonProfileCacheLibraryHasherBlock)
          {
            CFRelease(commonProfileCacheLibraryHasherBlock);
            v5->_commonProfileCacheLibraryHasherBlock = 0;
          }

          commonProfileCacheLibraryProviderBlock = v5->_commonProfileCacheLibraryProviderBlock;
          if (commonProfileCacheLibraryProviderBlock)
          {
            CFRelease(commonProfileCacheLibraryProviderBlock);
            v5->_commonProfileCacheLibraryProviderBlock = 0;
          }
        }
      }

      else
      {
        v56 = sub_1AF0D5194(0, v33);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDE5B9C(&v74, v56, v57, v58, v59, v60, v61, v62);
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_availableCompiledLibraries);

  dispatch_release(self->_shaderCompilationGroup);
  dispatch_release(self->_deviceQueue);
  v3.receiver = self;
  v3.super_class = VFXMTLLibraryManager;
  [(VFXMTLLibraryManager *)&v3 dealloc];
}

+ (id)hashCodeForSource:(id)source macros:(id)macros
{
  v47 = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(&c);
  sub_1AF148DA8(source);
  v8 = objc_msgSend_allKeys(macros, v6, v7);
  v10 = objc_msgSend_sortedArrayUsingSelector_(v8, v9, sel_compare_);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v38, v46, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKeyedSubscript_(macros, v13, v17);
        sub_1AF148DA8(v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_1AF148DA8(v18);
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            data[0] = objc_msgSend_intValue(v18, v20, v21);
            CC_SHA256_Update(&c, data, 4u);
          }

          else
          {
            v22 = sub_1AF0D5194(isKindOfClass, v20);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE5C0C(&v36, v37, v22);
            }
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v38, v46, 16);
    }

    while (v14);
  }

  CC_SHA256_Final(md, &c);
  v24 = 0;
  v25 = data;
  v26.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v26.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v27.i64[0] = 0x3737373737373737;
  v27.i64[1] = 0x3737373737373737;
  v28.i64[0] = 0x3030303030303030;
  v28.i64[1] = 0x3030303030303030;
  v29.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v29.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v30.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v30.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v31 = *&md[v24];
    v32.i64[0] = 0x3737373737373737;
    v32.i64[1] = 0x3737373737373737;
    v33.i64[0] = 0x3030303030303030;
    v33.i64[1] = 0x3030303030303030;
    v48.val[0] = vbslq_s8(vcgtq_u8(v26, v31), vsraq_n_u8(v33, v31, 4uLL), vsraq_n_u8(v32, v31, 4uLL));
    v34 = vandq_s8(v31, v29);
    v48.val[1] = vbslq_s8(vcgtq_u8(v30, v34), vorrq_s8(v34, v28), vaddq_s8(v34, v27));
    vst2q_s8(v25, v48);
    v25 += 32;
    v24 += 16;
  }

  while (v24 != 32);
  v44 = 0;
  return objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v23, data, 1);
}

- (void)clearCompiledLibraries
{
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  CFDictionaryRemoveAllValues(self->_availableCompiledLibraries);

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
}

- (id)defaultLibrary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF1FBFAC;
  block[3] = &unk_1E7A7A770;
  block[4] = self;
  if (qword_1EB658688 != -1)
  {
    dispatch_once(&qword_1EB658688, block);
  }

  return objc_msgSend_library(self->_defaultLibrary, a2, v2);
}

- (id)libraryForFile:(id)file
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1AF1FC110;
  v11 = sub_1AF1FC120;
  v12 = 0;
  deviceQueue = self->_deviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF1FC12C;
  block[3] = &unk_1E7A7CAE0;
  block[4] = self;
  block[5] = file;
  block[6] = &v7;
  dispatch_sync(deviceQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)libraryForSourceCode:(id)code options:(id)options
{
  v7 = objc_msgSend_preprocessorMacros(options, a2, code);
  v9 = objc_msgSend_hashCodeForSource_macros_(VFXMTLLibraryManager, v8, code, v7);
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  Value = CFDictionaryGetValue(self->_availableCompiledLibraries, v9);
  if (!Value)
  {
    v23 = 0;
    ++self->__engineStats->onlineShaderCount;
    v11 = CACurrentMediaTime();
    prof_beginFlame("newLibraryWithSource", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLLibraryManager.mm", 513);
    Value = objc_msgSend_newLibraryWithSource_options_error_(self->_device, v12, code, options, &v23);
    self->__engineStats->onlineShaderCompilationTime = CACurrentMediaTime() - v11 + self->__engineStats->onlineShaderCompilationTime;
    prof_endFlame();
    if (Value)
    {
      CFDictionarySetValue(self->_availableCompiledLibraries, v9, Value);
    }

    else
    {
      v15 = sub_1AF0D5194(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5C4C(&v23, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
  return Value;
}

- (void)libraryForProgramDesc:(id *)desc resourceManager:(id)manager completionHandler:(id)handler
{
  v148 = *MEMORY[0x1E69E9840];
  var1 = desc->var1;
  v10 = sub_1AF1D5DF4(var1);
  if (v10)
  {
    v12 = (*(v10 + 16))(v10, self->_device);
    if (v12)
    {
      v13 = *(handler + 2);
      commonProfileCacheLibrary = v12;
LABEL_14:
      handlerCopy2 = handler;
      goto LABEL_15;
    }
  }

  v15 = sub_1AF1D5AC4(var1, v11);
  if (!v15)
  {
    if (sub_1AF1D5DFC(desc->var1, v16))
    {
      v27 = objc_msgSend_defaultLibrary(self, v25, v26);
    }

    else
    {
      v27 = objc_msgSend_frameworkLibrary(self, v25, v26);
    }

    commonProfileCacheLibrary = v27;
    goto LABEL_13;
  }

  v17 = v15;
  v18 = sub_1AF1D5B54(var1, v16);
  v20 = objc_msgSend_hashCodeForSource_macros_(VFXMTLLibraryManager, v19, v17, v18);
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  Value = CFDictionaryGetValue(self->_availableCompiledLibraries, v20);
  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
  if (Value)
  {
    v13 = *(handler + 2);
    handlerCopy2 = handler;
    commonProfileCacheLibrary = Value;
LABEL_15:

    v13(handlerCopy2, commonProfileCacheLibrary, 0);
    return;
  }

  v119 = v18;
  v121 = v20;
  v30 = sub_1AF333168(v22, v23);
  v120 = var1;
  managerCopy = manager;
  if (v30)
  {
    v31 = !sub_1AFDE7A50(manager);
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_msgSend_count(self->_commonProfilePrecompiledFunctions, v28, v29);
  if (((v32 == 0) & ~v30) != 0)
  {
    v36 = 0;
    cf = 0;
LABEL_28:
    v48 = v120;
    goto LABEL_31;
  }

  v35 = v32;
  handlerCopy3 = handler;
  if (self->_legacyShaderCache || v31)
  {
    v36 = objc_msgSend_stringByAppendingString_(@"commonprofile_vert", v33, v20);
    cf = objc_msgSend_stringByAppendingString_(@"commonprofile_frag", v37, v20);
  }

  else
  {
    v38 = objc_alloc(MEMORY[0x1E696AEC0]);
    v40 = objc_msgSend_initWithFormat_(v38, v39, @"vfx_%@::", v20);
    v36 = objc_msgSend_stringByAppendingString_(v40, v41, @"commonprofile_vert");
    v43 = v31;
    v44 = objc_msgSend_stringByAppendingString_(v40, v42, @"commonprofile_frag");

    sub_1AF1D5A3C(desc->var1, 0, v36);
    cf = v44;
    v45 = v44;
    v31 = v43;
    sub_1AF1D5A3C(desc->var1, 1, v45);
  }

  handler = handlerCopy3;
  if (!v35)
  {
    goto LABEL_28;
  }

  v46 = objc_msgSend_objectForKeyedSubscript_(self->_commonProfilePrecompiledFunctions, v33, v36);
  if (v46)
  {
    v46 = objc_msgSend_objectForKeyedSubscript_(self->_commonProfilePrecompiledFunctions, v47, cf);
    if (v46)
    {
      sub_1AF1D5A3C(v120, 0, v36);
      sub_1AF1D5A3C(v120, 1, cf);
      sub_1AF1D5998(v120, self->_commonProfileCacheLibraryHasherBlock, self->_commonProfileCacheLibraryProviderBlock);
      commonProfileCacheLibrary = self->_commonProfileCacheLibrary;
LABEL_13:
      v13 = *(handler + 2);
      goto LABEL_14;
    }
  }

  v49 = sub_1AF0D5194(v46, v47);
  v48 = v120;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE5CBC();
  }

LABEL_31:
  if (v30)
  {
    if (v31)
    {
      v50 = sub_1AF28A3A0();
      if (v50)
      {
        v51 = v50;
        if (qword_1EB658698 != -1)
        {
          sub_1AFDE5D30();
        }

        CFRetain(v48);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1AF1FCB9C;
        block[3] = &unk_1E7A7CB58;
        block[4] = v51;
        block[5] = v20;
        block[6] = v36;
        block[7] = cf;
        block[8] = v48;
        dispatch_async(qword_1EB658690, block);
      }
    }

    else
    {
      handlerCopy4 = handler;
      v52 = objc_msgSend_mutableCopy(v17, v33, v34);
      v54 = objc_msgSend_rangeOfString_(v52, v53, @"#pragma mark - Namespace Begin");
      if (v54)
      {
        v56 = v54;
        v57 = v55;
        v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v55, @"namespace vfx_%@ {", v20);
        objc_msgSend_replaceCharactersInRange_withString_(v52, v59, v56, v57, v58);
      }

      cfa = self;
      v60 = objc_msgSend_rangeOfString_options_(v52, v55, @"#pragma mark - Namespace End", 4);
      if (v60)
      {
        objc_msgSend_replaceCharactersInRange_withString_(v52, v61, v60, v61, @"} //namespace");
      }

      v62 = sub_1AF1D5B54(v48, v61);
      v65 = objc_msgSend_allKeys(v62, v63, v64);
      v67 = objc_msgSend_sortedArrayUsingSelector_(v65, v66, sel_compare_);
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v70 = objc_msgSend_reverseObjectEnumerator(v67, v68, v69);
      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v141, v147, 16);
      if (v72)
      {
        v75 = v72;
        v76 = *v142;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v142 != v76)
            {
              objc_enumerationMutation(v70);
            }

            v78 = *(*(&v141 + 1) + 8 * i);
            v79 = objc_msgSend_objectForKeyedSubscript_(v62, v73, v78);
            v81 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v80, @"#define %@ %@\n", v78, v79);
            objc_msgSend_insertString_atIndex_(v52, v82, v81, 0);
            v84 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v83, @"#undef %@\n", v78);
            objc_msgSend_appendString_(v52, v85, v84);
          }

          v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v73, &v141, v147, 16);
        }

        while (v75);
      }

      v17 = objc_msgSend_copy(v52, v73, v74);

      sub_1AFDE7A64(managerCopy, v17, v20);
      handler = handlerCopy4;
      self = cfa;
      v48 = v120;
    }
  }

  v86 = sub_1AF15B294(v48);
  v88 = sub_1AF1F32F0(v86, v87);
  v90 = sub_1AF1D5BE4(v48, v89);
  if (v88 <= v90)
  {
    v88 = v90;
  }

  v91 = objc_alloc_init(MEMORY[0x1E6974020]);
  objc_msgSend_setPreprocessorMacros_(v91, v92, v119);
  objc_msgSend_setLanguageVersion_(v91, v93, v88);
  v95 = objc_msgSend_setAdditionalCompilerArguments_(v91, v94, @" -w ");
  v97 = sub_1AF0D5194(v95, v96);
  v98 = os_signpost_id_generate(v97);
  v100 = sub_1AF0D5194(v98, v99);
  if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v102 = v100;
    v100 = os_signpost_enabled(v100);
    if (v100)
    {
      *buf = 67109120;
      *&buf[4] = v48;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v102, OS_SIGNPOST_INTERVAL_BEGIN, v98, "CompileShader", "programID=%d", buf, 8u);
    }
  }

  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v125 = sub_1AF1FCE58;
  v126 = &unk_1E7A7CB80;
  v103 = *&desc->var14;
  v135 = *&desc->var11;
  v136 = v103;
  v137 = *&desc->var15.var1;
  v104 = *&desc->var2;
  v131 = *&desc->var0;
  v132 = v104;
  v105 = *&desc->var4;
  v134 = *&desc->var6;
  v133 = v105;
  v127 = v17;
  selfCopy = self;
  v129 = v121;
  handlerCopy5 = handler;
  v138 = v86;
  v139 = v98;
  v140 = v48;
  ++self->__engineStats->onlineShaderCount;
  var13 = desc->var13;
  p_var13 = &desc->var13;
  v106 = var13;
  if (var13)
  {
    if (v106 == 2)
    {
      device = self->_device;
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = sub_1AF1FD0BC;
      v122[3] = &unk_1E7A7CBD0;
      v122[4] = self;
      v122[5] = v124;
      objc_msgSend_newLibraryWithSource_options_completionHandler_(device, v101, v17, v91, v122);
    }

    else if (v106 == 1)
    {
      dispatch_group_enter(self->_shaderCompilationGroup);
      v109 = self->_device;
      v123[0] = MEMORY[0x1E69E9820];
      v123[1] = 3221225472;
      v123[2] = sub_1AF1FCFF4;
      v123[3] = &unk_1E7A7CBD0;
      v123[4] = self;
      v123[5] = v124;
      objc_msgSend_newLibraryWithSource_options_completionHandler_(v109, v110, v17, v91, v123);
    }

    else
    {
      v113 = sub_1AF0D5194(v100, v101);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5D58(p_var13, v113);
      }
    }
  }

  else
  {
    *buf = 0;
    v112 = objc_msgSend_newLibraryWithSource_options_error_(self->_device, v101, v17, v91, buf);
    v125(v124, v112, *buf);
  }
}

@end