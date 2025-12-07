@interface UniKernel
+ (BOOL)_shouldEmulate_sRGBForTexture:(id)texture;
+ (id)_mtlTextureForImage:(id)image;
+ (id)_outputTextureForTexture:(id)texture force:(BOOL)force;
+ (id)generateCIImage:(id)image;
- (CGRect)_findOutputRect;
- (CGRect)extentForImage:(id)image;
- (UniKernel)init;
- (UniKernel)initWithName:(id)name library:(id)library constants:(id)constants;
- (UniKernel)initWithName:(id)name metalContext:(id)context coreImageLibrary:(id)library constants:(id)constants;
- (id)_ciImageForInput:(id)input;
- (id)_findKernelInCache:(id)cache library:(id)library constants:(id)constants;
- (id)_findKernelInCache:(id)cache metalContext:(id)context coreImageLibrary:(id)library constants:(id)constants;
- (id)_flattenDict:(id)dict;
- (id)_inputOrOutputArray:(BOOL)array;
- (id)_inputOrOutputBufferArray:(BOOL)array;
- (id)_intputOrOutputNameArray:(BOOL)array;
- (id)_mtlTextureForImage:(id)image;
- (id)_populateStruct:(id)struct values:(id)values;
- (id)_regionForTexture:(id)texture name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getRenderOrder;
- (id)imageByApplyingParameters:(id)parameters extent:(id)extent;
- (id)imageByApplyingParameters:(id)parameters runInfo:(id)info;
- (id)makeBufferCpuAccessible:(id)accessible;
- (id)outputImage:(id)image;
- (id)outputImageOfSize:(id)size;
- (id)run:(id)run;
- (int)_outputFormatForMetalFormat:(unint64_t)format;
- (int)_promoteFormatForCoreImage:(int)image;
- (unint64_t)_outputFormatForImage:(id)image;
- (unsigned)kDebugFlagForKernel;
- (void)_setNumber:(id)number forEncoder:(id)encoder atIndex:(unint64_t)index;
- (void)_setRunInfoBasedOnCoreImage;
- (void)setValues:(id)values;
- (void)writeDebugTextures:(id)textures filesWritten:(id)written;
@end

@implementation UniKernel

- (id)getRenderOrder
{
  context = self->context;
  if (context)
  {
    v5 = objc_msgSend_weakArray(context, a2, v2);
  }

  else
  {
    v5 = objc_msgSend_weakObjectsPointerArray(MEMORY[0x29EDBA0A0], a2, v2);
    objc_msgSend_addPointer_(v5, v6, self);
  }

  return v5;
}

- (unsigned)kDebugFlagForKernel
{
  kernel = self->kernel;
  if (!kernel)
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_mk(kernel, a2, v2);
  if (v7)
  {
    v8 = objc_msgSend_mk(self->kernel, v5, v6);
    v11 = objc_msgSend_label(v8, v9, v10);

    if (v11)
    {
      LODWORD(v7) = 822149904;
      v14 = objc_msgSend_mk(self->kernel, v12, v13);
      v17 = objc_msgSend_label(v14, v15, v16);

      v20 = 822149888;
      if ((objc_msgSend_isEqualToString_(v17, v18, @"slm_calc") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v19, @"slm_calc") & 1) == 0)
      {
        if (objc_msgSend_isEqualToString_(v17, v21, @"sparserendering_preprocess"))
        {
          LODWORD(v7) = 822149892;
          goto LABEL_7;
        }

        if (objc_msgSend_isEqualToString_(v17, v23, @"sparserendering_sample_noAlpha") & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v24, @"sparserendering_sample_withAlpha") & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v25, @"sparserendering_opt2x_sample_noAlpha") & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v26, @"sparserendering_opt2x_sample_withAlpha"))
        {
          goto LABEL_7;
        }

        v20 = 822150004;
        if ((objc_msgSend_isEqualToString_(v17, v27, @"blurmap_x_smoothing") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v28, @"blurmap_y_smoothing") & 1) == 0)
        {
          v20 = 822149996;
          if ((objc_msgSend_isEqualToString_(v17, v29, @"sparserendering_antialias_x") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v30, @"sparserendering_antialias_y") & 1) == 0)
          {
            v20 = 822150012;
            if ((objc_msgSend_isEqualToString_(v17, v31, @"sparserendering_prefilter_x") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v32, @"sparserendering_prefilter_y") & 1) == 0)
            {
              if (objc_msgSend_isEqualToString_(v17, v33, @"segmentation_fusion_apply"))
              {
                LODWORD(v7) = 822150648;
              }

              else
              {
                LODWORD(v7) = 0;
              }

              goto LABEL_7;
            }
          }
        }
      }

      LODWORD(v7) = v20;
LABEL_7:

      return v7;
    }

LABEL_8:
    LODWORD(v7) = 0;
  }

  return v7;
}

- (id)_findKernelInCache:(id)cache library:(id)library constants:(id)constants
{
  cacheCopy = cache;
  libraryCopy = library;
  constantsCopy = constants;
  v10 = sub_2956BB4F0(constantsCopy);
  objc_sync_enter(v10);
  if (libraryCopy)
  {
    v13 = objc_msgSend_metalContext(libraryCopy, v11, v12);
    v18 = objc_msgSend_library(v13, v14, v15);
    if (v18)
    {
      v19 = MEMORY[0x29EDBA070];
      v20 = objc_msgSend_metalContext(libraryCopy, v16, v17);
      v23 = objc_msgSend_library(v20, v21, v22);
      v26 = objc_msgSend_device(v23, v24, v25);
      v29 = objc_msgSend_registryID(v26, v27, v28);
      v31 = objc_msgSend_numberWithUnsignedLongLong_(v19, v30, v29);
    }

    else
    {
      v31 = &unk_2A1C94B88;
    }
  }

  else
  {
    v31 = &unk_2A1C94B88;
  }

  v32 = &stru_2A1C8D648;
  if (constantsCopy)
  {
    v32 = constantsCopy;
  }

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v11, @"%@:%@:%@", v31, cacheCopy, v32);
  v35 = objc_msgSend_objectForKeyedSubscript_(v10, v34, v33);
  v38 = v35;
  if (v35)
  {
    v39 = objc_msgSend_ck(v35, v36, v37);

    v42 = objc_msgSend_coreImageLibrary(libraryCopy, v40, v41);

    if ((v39 != 0) != (v42 == 0))
    {
      goto LABEL_17;
    }

    objc_msgSend_removeAllObjects(v10, v43, v44);
  }

  v45 = [UniKernelInternal alloc];
  v38 = objc_msgSend_initWithName_library_constants_(v45, v46, cacheCopy, libraryCopy, constantsCopy);
  if (v38)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v47, v38, v33);
  }

  else
  {
    v48 = uni_logger_compile(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v49, @"Unable to find kernel for %@", cacheCopy);
      v52 = v51;
      *buf = 136315138;
      v56 = objc_msgSend_UTF8String(v52, v53, v54);
      _os_log_error_impl(&dword_295691000, v48, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    v38 = 0;
  }

LABEL_17:

  objc_sync_exit(v10);

  return v38;
}

- (id)_findKernelInCache:(id)cache metalContext:(id)context coreImageLibrary:(id)library constants:(id)constants
{
  cacheCopy = cache;
  contextCopy = context;
  libraryCopy = library;
  constantsCopy = constants;
  v13 = sub_2956BB4F0(constantsCopy);
  objc_sync_enter(v13);
  v18 = objc_msgSend_library(contextCopy, v14, v15);
  if (v18)
  {
    v19 = MEMORY[0x29EDBA070];
    v20 = objc_msgSend_library(contextCopy, v16, v17);
    v23 = objc_msgSend_device(v20, v21, v22);
    v26 = objc_msgSend_registryID(v23, v24, v25);
    v28 = objc_msgSend_numberWithUnsignedLongLong_(v19, v27, v26);
  }

  else
  {
    v28 = &unk_2A1C94B88;
  }

  v30 = &stru_2A1C8D648;
  if (constantsCopy)
  {
    v30 = constantsCopy;
  }

  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v29, @"%@:%@:%@", v28, cacheCopy, v30);
  v33 = objc_msgSend_objectForKeyedSubscript_(v13, v32, v31);
  if (!v33)
  {
    v34 = [UniKernelInternal alloc];
    v33 = objc_msgSend_initWithName_metalContext_coreImageLibrary_constants_(v34, v35, cacheCopy, contextCopy, libraryCopy, constantsCopy);
    if (!v33)
    {
      __assert_rtn("[UniKernel _findKernelInCache:metalContext:coreImageLibrary:constants:]", "UniKernel.m", 425, "k");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v13, v36, v33, v31);
  }

  objc_sync_exit(v13);

  return v33;
}

- (UniKernel)initWithName:(id)name metalContext:(id)context coreImageLibrary:(id)library constants:(id)constants
{
  nameCopy = name;
  contextCopy = context;
  libraryCopy = library;
  constantsCopy = constants;
  v36.receiver = self;
  v36.super_class = UniKernel;
  v14 = [(UniKernel *)&v36 init];
  v16 = v14;
  if (!v14)
  {
LABEL_7:
    v21 = v16;
    goto LABEL_8;
  }

  v17 = objc_msgSend__findKernelInCache_metalContext_coreImageLibrary_constants_(v14, v15, nameCopy, contextCopy, libraryCopy, constantsCopy);
  objc_msgSend_setKernel_(v16, v18, v17);

  v21 = objc_msgSend_kernel(v16, v19, v20);

  if (v21)
  {
    if (contextCopy)
    {
      objc_msgSend_device(contextCopy, v22, v23);
    }

    else
    {
      objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], v22, v23);
    }
    v24 = ;
    objc_msgSend_setDevice_(v16, v25, v24);

    v28 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x29EDBA028], v26, v27);
    objc_msgSend_setInputs_(v16, v29, v28);

    objc_msgSend_setScale_(v16, v30, &unk_2A1C94BA0);
    objc_msgSend_setRoiCallback_(v16, v31, &unk_2A1C8A7E8);
    objc_msgSend_setRunInfo_(v16, v32, 0);
    objc_msgSend_setContext_(v16, v33, 0);
    objc_msgSend_setPreferredOutputFormat_(v16, v34, &unk_2A1C94BB8);
    goto LABEL_7;
  }

LABEL_8:

  return v21;
}

- (UniKernel)initWithName:(id)name library:(id)library constants:(id)constants
{
  nameCopy = name;
  libraryCopy = library;
  constantsCopy = constants;
  v36.receiver = self;
  v36.super_class = UniKernel;
  v11 = [(UniKernel *)&v36 init];
  v13 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  v14 = objc_msgSend__findKernelInCache_library_constants_(v11, v12, nameCopy, libraryCopy, constantsCopy);
  objc_msgSend_setKernel_(v13, v15, v14);

  v18 = objc_msgSend_kernel(v13, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_metalContext(libraryCopy, v19, v20);
    v24 = objc_msgSend_device(v21, v22, v23);
    objc_msgSend_setDevice_(v13, v25, v24);

    v28 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x29EDBA028], v26, v27);
    objc_msgSend_setInputs_(v13, v29, v28);

    objc_msgSend_setScale_(v13, v30, &unk_2A1C94BA0);
    objc_msgSend_setRoiCallback_(v13, v31, &unk_2A1C8A808);
    objc_msgSend_setRunInfo_(v13, v32, 0);
    objc_msgSend_setContext_(v13, v33, 0);
    objc_msgSend_setPreferredOutputFormat_(v13, v34, &unk_2A1C94BB8);
LABEL_4:
    v18 = v13;
  }

  return v18;
}

- (UniKernel)init
{
  v15.receiver = self;
  v15.super_class = UniKernel;
  v2 = [(UniKernel *)&v15 init];
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setKernel_(v2, v3, 0);
    v7 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x29EDBA028], v5, v6);
    objc_msgSend_setInputs_(v4, v8, v7);

    objc_msgSend_setScale_(v4, v9, &unk_2A1C94BA0);
    objc_msgSend_setRoiCallback_(v4, v10, &unk_2A1C8A828);
    objc_msgSend_setRunInfo_(v4, v11, 0);
    objc_msgSend_setContext_(v4, v12, 0);
    objc_msgSend_setPreferredOutputFormat_(v4, v13, &unk_2A1C94BB8);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  if (!v7)
  {
    v16 = 0;
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_device(self, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = v7;
    v14 = objc_msgSend_device(self, v12, v13);
    v16 = objc_msgSend_initWithDevice_(v11, v15, v14);

    if (!v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = v7;
    v16 = objc_msgSend_init(v19, v20, v21);
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  v22 = objc_msgSend_inputs(self, v17, v18);
  v24 = objc_msgSend_copyWithZone_(v22, v23, zone);
  objc_msgSend_setInputs_(v16, v25, v24);

  v28 = objc_msgSend_device(self, v26, v27);
  objc_msgSend_setDevice_(v16, v29, v28);

  v32 = objc_msgSend_scale(self, v30, v31);
  objc_msgSend_setScale_(v16, v33, v32);

  v36 = objc_msgSend_roiCallback(self, v34, v35);
  objc_msgSend_setRoiCallback_(v16, v37, v36);

  v40 = objc_msgSend_kernel(self, v38, v39);
  objc_msgSend_setKernel_(v16, v41, v40);

  v46 = objc_msgSend_runInfo(self, v42, v43);
  if (v46)
  {
    v47 = objc_msgSend_runInfo(self, v44, v45);
    v50 = objc_msgSend_copy(v47, v48, v49);
    objc_msgSend_setRunInfo_(v16, v51, v50);
  }

  else
  {
    objc_msgSend_setRunInfo_(v16, v44, 0);
  }

  v54 = objc_msgSend_context(self, v52, v53);
  objc_msgSend_setContext_(v16, v55, v54);

  v58 = objc_msgSend_preferredOutputFormat(self, v56, v57);
  objc_msgSend_setPreferredOutputFormat_(v16, v59, v58);

  v62 = objc_msgSend_context(v16, v60, v61);

  if (v62)
  {
    v65 = objc_msgSend_context(v16, v63, v64);
    objc_sync_enter(v65);
    v68 = objc_msgSend_context(v16, v66, v67);
    v71 = objc_msgSend_weakArray(v68, v69, v70);
    objc_msgSend_addPointer_(v71, v72, v16);

    objc_sync_exit(v65);
  }

LABEL_13:

  return v16;
}

- (id)_flattenDict:(id)dict
{
  dictCopy = dict;
  v5 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v4, dictCopy);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = dictCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v42, v41, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v43;
    v31 = *v43;
    v32 = v6;
    do
    {
      v12 = 0;
      v33 = v10;
      do
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        v14 = objc_msgSend_objectForKeyedSubscript_(v6, v9, v13);
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v12;
            objc_msgSend_removeObjectForKey_(v5, v15, v13);
            v34 = v14;
            v16 = v14;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v37, v36, 16);
            if (v18)
            {
              v20 = v18;
              v21 = *v38;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v38 != v21)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v23 = *(*(&v37 + 1) + 8 * i);
                  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v19, @"%@_%@", v13, v23);
                  v26 = objc_msgSend_objectForKeyedSubscript_(v16, v25, v23);
                  objc_msgSend_setObject_forKeyedSubscript_(v5, v27, v26, v24);
                }

                v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v37, v36, 16);
              }

              while (v20);
            }

            v11 = v31;
            v6 = v32;
            v10 = v33;
            v14 = v34;
            v12 = v35;
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v42, v41, 16);
    }

    while (v10);
  }

  v29 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8DC0], v28, v5);

  return v29;
}

- (id)_populateStruct:(id)struct values:(id)values
{
  structCopy = struct;
  valuesCopy = values;
  if (objc_msgSend_bufferDataType(structCopy, v8, v9) != 1)
  {
    goto LABEL_16;
  }

  v12 = objc_msgSend_bufferDataSize(structCopy, v10, v11);
  v13 = v12;
  if (!v12)
  {
    v59 = 0;
    goto LABEL_18;
  }

  v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
  if (!v14)
  {
LABEL_16:
    v59 = 0;
    v13 = 0;
LABEL_18:
    v51 = 0;
    goto LABEL_19;
  }

  v17 = v14;
  v102 = v13;
  v13 = objc_msgSend_bufferStructType(structCopy, v15, v16);

  if (v13)
  {
    v20 = MEMORY[0x29EDB8E20];
    v21 = objc_msgSend_bufferStructType(structCopy, v18, v19);
    v24 = objc_msgSend_members(v21, v22, v23);
    v27 = objc_msgSend_count(v24, v25, v26);
    v13 = objc_msgSend_setWithCapacity_(v20, v28, v27);

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v106 = structCopy;
    v31 = objc_msgSend_bufferStructType(structCopy, v29, v30);
    v34 = objc_msgSend_members(v31, v32, v33);

    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v121, v120, 16);
    if (v36)
    {
      v39 = v36;
      v40 = *v122;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v122 != v40)
          {
            objc_enumerationMutation(v34);
          }

          v42 = objc_msgSend_name(*(*(&v121 + 1) + 8 * i), v37, v38);
          objc_msgSend_addObject_(v13, v43, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v121, v120, 16);
      }

      while (v39);
    }

    v45 = objc_msgSend__flattenDict_(self, v44, valuesCopy);

    v46 = MEMORY[0x29EDB8E20];
    v49 = objc_msgSend_allKeys(v45, v47, v48);
    v51 = objc_msgSend_setWithArray_(v46, v50, v49);

    objc_msgSend_minusSet_(v13, v52, v51);
    v55 = objc_msgSend_count(v13, v53, v54);
    if (v55)
    {
      v58 = uni_logger_compile(v55);
      structCopy = v106;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_2956CE4C8(v13, v58);
      }

LABEL_50:
      v59 = 0;
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      structCopy = v106;
      v62 = objc_msgSend_bufferStructType(v106, v56, v57);
      v65 = objc_msgSend_members(v62, v63, v64);

      obj = v65;
      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v116, v115, 16);
      if (v105)
      {
        v69 = *v117;
        v99 = v45;
        v100 = v51;
        v101 = *v117;
        while (2)
        {
          v70 = 0;
          do
          {
            if (*v117 != v69)
            {
              objc_enumerationMutation(obj);
            }

            v71 = *(*(&v116 + 1) + 8 * v70);
            v72 = objc_msgSend_name(v71, v67, v68);
            v74 = objc_msgSend_objectForKeyedSubscript_(v45, v73, v72);

            if (!v74)
            {
              goto LABEL_49;
            }

            v107 = v70;
            v77 = objc_msgSend_dataType(v71, v75, v76);
            v113 = 0;
            v114 = 0;
            v78 = numComponentsForType(v77, &v114, &v113);
            if (!v114 || !v113)
            {
              goto LABEL_48;
            }

            v79 = v78;
            if (v78 == 1)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_48;
              }

              v82 = objc_msgSend_offset(v71, v80, v81);
              packSingleValue(v74, 0, v82, v114, v17);
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_48;
              }

              v104 = v74;
              v83 = v74;
              if (objc_msgSend_count(v83, v84, v85) != v79)
              {

LABEL_48:
LABEL_49:

                goto LABEL_50;
              }

              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v86 = v83;
              v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, &v109, v108, 16);
              if (v88)
              {
                v91 = v88;
                v92 = 0;
                v93 = *v110;
                do
                {
                  v94 = 0;
                  v95 = v92;
                  do
                  {
                    if (*v110 != v93)
                    {
                      objc_enumerationMutation(v86);
                    }

                    v96 = *(*(&v109 + 1) + 8 * v94);
                    v92 = v95 + 1;
                    v97 = objc_msgSend_offset(v71, v89, v90);
                    packSingleValue(v96, v95, v97, v114, v17);
                    ++v94;
                    ++v95;
                  }

                  while (v91 != v94);
                  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v89, &v109, v108, 16);
                }

                while (v91);

                structCopy = v106;
                v45 = v99;
                v51 = v100;
              }

              else
              {
              }

              v69 = v101;
              v74 = v104;
            }

            v70 = v107 + 1;
          }

          while (v107 + 1 != v105);
          v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v116, v115, 16);
          if (v105)
          {
            continue;
          }

          break;
        }
      }

      v59 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v98, v17, v102);
    }
  }

  else
  {
    v59 = 0;
    v51 = 0;
    v45 = valuesCopy;
  }

  free(v17);
  valuesCopy = v45;
LABEL_19:
  v60 = v59;

  return v59;
}

+ (id)_mtlTextureForImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_texture(imageCopy, v4, v5);

    v7 = objc_opt_class();
    v9 = objc_msgSend__mtlTextureForImage_(v7, v8, v6);
    imageCopy = v6;
    goto LABEL_9;
  }

  if (objc_msgSend_conformsToProtocol_(imageCopy, v4, &unk_2A1CA0A70))
  {
    v9 = imageCopy;
    imageCopy = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_null(MEMORY[0x29EDB8E28], v10, v11);
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (id)_mtlTextureForImage:(id)image
{
  imageCopy = image;
  v4 = objc_opt_class();
  v6 = objc_msgSend__mtlTextureForImage_(v4, v5, imageCopy);

  return v6;
}

- (void)_setNumber:(id)number forEncoder:(id)encoder atIndex:(unint64_t)index
{
  numberCopy = number;
  encoderCopy = encoder;
  if (!numberCopy || (v9 = encoderCopy, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sub_2956CE6AC();
  }

  if (!v9)
  {
    sub_2956CE680();
  }

  v10 = numberCopy;
  v13 = objc_msgSend_objCType(v10, v11, v12);
  if (!v13 || (v14 = v13, strlen(v13) != 1))
  {
    sub_2956CE654();
  }

  v35 = 0.0;
  v17 = *v14;
  if (v17 <= 0x62)
  {
    if (*v14 > 0x4Bu)
    {
      if (v17 == 76)
      {
        LODWORD(v35) = objc_msgSend_unsignedLongValue(numberCopy, v15, v16);
        if (objc_msgSend_unsignedLongValue(numberCopy, v32, v33) >> 32)
        {
          sub_2956CE570();
        }

        goto LABEL_41;
      }

      if (v17 == 81)
      {
        LODWORD(v35) = objc_msgSend_unsignedLongLongValue(numberCopy, v15, v16);
        if (objc_msgSend_unsignedLongLongValue(numberCopy, v29, v30) >> 32)
        {
          sub_2956CE544();
        }

        goto LABEL_41;
      }

      if (v17 != 83)
      {
        goto LABEL_49;
      }

      v22 = objc_msgSend_unsignedShortValue(numberCopy, v15, v16);
      goto LABEL_29;
    }

    switch(v17)
    {
      case 'B':
        v27 = objc_msgSend_BOOLValue(numberCopy, v15, v16);
        break;
      case 'C':
        v27 = objc_msgSend_unsignedCharValue(numberCopy, v15, v16);
        break;
      case 'I':
        LODWORD(v21) = objc_msgSend_unsignedIntValue(numberCopy, v15, v16);
LABEL_31:
        v35 = v21;
        goto LABEL_41;
      default:
        goto LABEL_49;
    }

LABEL_43:
    LOBYTE(v35) = v27;
    objc_msgSend_setBytes_length_atIndex_(v9, v28, &v35, 1, index);
    goto LABEL_44;
  }

  if (*v14 <= 0x68u)
  {
    if (v17 != 99)
    {
      if (v17 == 100)
      {
        objc_msgSend_doubleValue(numberCopy, v15, v16);
        v24 = v31;
      }

      else
      {
        if (v17 != 102)
        {
          goto LABEL_49;
        }

        objc_msgSend_floatValue(numberCopy, v15, v16);
      }

      v35 = v24;
LABEL_41:
      objc_msgSend_setBytes_length_atIndex_(v9, v20, &v35, 4, index);
      goto LABEL_44;
    }

    v27 = objc_msgSend_charValue(numberCopy, v15, v16);
    goto LABEL_43;
  }

  if (*v14 <= 0x70u)
  {
    if (v17 != 105)
    {
      if (v17 == 108)
      {
        LODWORD(v35) = objc_msgSend_longValue(numberCopy, v15, v16);
        if (objc_msgSend_longValue(numberCopy, v18, v19) >= 0x80000000)
        {
          sub_2956CE5C8();
        }

        goto LABEL_41;
      }

LABEL_49:
      v34 = uni_logger_api(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_2956CE5F4();
      }

      __assert_rtn("[UniKernel _setNumber:forEncoder:atIndex:]", "UniKernel.m", 828, "length > 0");
    }

    LODWORD(v21) = objc_msgSend_intValue(numberCopy, v15, v16);
    goto LABEL_31;
  }

  if (v17 == 113)
  {
    LODWORD(v35) = objc_msgSend_longLongValue(numberCopy, v15, v16);
    if (objc_msgSend_longLongValue(numberCopy, v25, v26) >= 0x80000000)
    {
      sub_2956CE59C();
    }

    goto LABEL_41;
  }

  if (v17 != 115)
  {
    goto LABEL_49;
  }

  v22 = objc_msgSend_shortValue(numberCopy, v15, v16);
LABEL_29:
  LOWORD(v35) = v22;
  objc_msgSend_setBytes_length_atIndex_(v9, v23, &v35, 2, index);
LABEL_44:
}

- (void)writeDebugTextures:(id)textures filesWritten:(id)written
{
  texturesCopy = textures;
  writtenCopy = written;
  if (texturesCopy)
  {
    if (writtenCopy)
    {
      v7 = objc_opt_class();
      if (objc_msgSend_shouldWriteDebugTextures(v7, v8, v9))
      {
        objc_msgSend__writeDebugTextures_filesWritten_(self, v10, texturesCopy, writtenCopy);
      }
    }
  }
}

- (id)_regionForTexture:(id)texture name:(id)name
{
  textureCopy = texture;
  nameCopy = name;
  if (!textureCopy)
  {
    v27 = MEMORY[0x29EDB8E90];
    goto LABEL_9;
  }

  v9 = objc_msgSend_buffer(textureCopy, v6, v7);
  v12 = objc_msgSend_heap(textureCopy, v10, v11);
  v15 = objc_msgSend_height(textureCopy, v13, v14);
  v20 = objc_msgSend_bufferBytesPerRow(textureCopy, v16, v17);
  if (v9)
  {
    v35[0] = v9;
    v21 = MEMORY[0x29EDBA070];
    v22 = objc_msgSend_bufferOffset(textureCopy, v18, v19);
    v25 = objc_msgSend_numberWithUnsignedInteger_(v21, v23, v22);
    v35[1] = v25;
    v26 = v35;
  }

  else
  {
    if (!v12)
    {
      v27 = MEMORY[0x29EDB8E90];
      goto LABEL_8;
    }

    v28 = MEMORY[0x29EDBA070];
    v29 = objc_msgSend_heapOffset(textureCopy, v18, v19, v12);
    v25 = objc_msgSend_numberWithUnsignedInteger_(v28, v30, v29);
    v34[1] = v25;
    v26 = v34;
  }

  v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v24, v20 * v15);
  v26[2] = v31;
  v26[3] = nameCopy;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v32, v26, 4);

LABEL_8:
LABEL_9:

  return v27;
}

- (id)run:(id)run
{
  runCopy = run;
  selfCopy = self;
  v7 = objc_msgSend_mk(self, v5, v6);

  if (v7)
  {
    if (runCopy)
    {
      v12 = runCopy;
      v13 = selfCopy;
    }

    else
    {
      v13 = selfCopy;
      v15 = objc_msgSend_device(selfCopy, v8, v9);
      v12 = objc_msgSend_newCommandQueue(v15, v16, v17);
    }

    v18 = objc_msgSend_commandBuffer(v12, v10, v11);
    v21 = objc_msgSend_mk(v13, v19, v20);
    v24 = objc_msgSend_label(v21, v22, v23);
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v27 = objc_opt_class();
      v26 = objc_msgSend_description(v27, v28, v29);
    }

    v30 = v26;

    objc_msgSend_setLabel_(v18, v31, v30);
    v267 = v18;
    v34 = objc_msgSend_computeCommandEncoder(v18, v32, v33);
    v266 = v30;
    objc_msgSend_setLabel_(v34, v35, v30);
    v38 = objc_msgSend_mk(v13, v36, v37);
    objc_msgSend_setComputePipelineState_(v34, v39, v38);

    v286[0] = 0;
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v42 = objc_msgSend_kernel(v13, v40, v41);
    v45 = objc_msgSend_arguments(v42, v43, v44);

    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v282, v281, 16);
    if (v47)
    {
      v50 = v47;
      v264 = v12;
      v265 = runCopy;
      v51 = 0;
      v52 = 0;
      v274 = -1;
      v276 = *v283;
      v268 = v34;
      v53 = selfCopy;
      v272 = v45;
      while (1)
      {
        v54 = 0;
        do
        {
          if (*v283 != v276)
          {
            objc_enumerationMutation(v45);
          }

          v55 = *(*(&v282 + 1) + 8 * v54);
          v56 = objc_msgSend_name(v55, v48, v49);
          isEqualToString = objc_msgSend_isEqualToString_(v56, v57, @"emulate_sRGB");

          if (isEqualToString)
          {
            v274 = objc_msgSend_index(v55, v59, v60);
            goto LABEL_38;
          }

          if (objc_msgSend_type(v55, v59, v60) == 2)
          {
            inputs = v53->inputs;
            v64 = objc_msgSend_name(v55, v61, v62);
            v66 = objc_msgSend_objectForKeyedSubscript_(inputs, v65, v64);

            if (v66)
            {
              v69 = objc_msgSend__mtlTextureForImage_(UniKernel, v67, v66);
              if (v69)
              {
                v70 = v69;
                if (objc_msgSend_access(v55, v67, v68) == 1)
                {
                  sub_2956CE980();
                }

                if (objc_msgSend_access(v55, v71, v72) == 2)
                {
                  v74 = v70;

                  v286[0] = objc_msgSend__shouldEmulate_sRGBForTexture_(UniKernel, v75, v74);
                  v51 = v74;
                  v45 = v272;
                }

                if (objc_msgSend_conformsToProtocol_(v70, v73, &unk_2A1CA0A70))
                {
                  v78 = objc_msgSend_index(v55, v76, v77);
                  objc_msgSend_setTexture_atIndex_(v34, v79, v70, v78);
                }

                if (!v52)
                {
                  v70 = v70;
                  v52 = v70;
                }

                goto LABEL_36;
              }
            }

            v98 = objc_msgSend_access(v55, v67, v68);
            v70 = uni_logger_render(v98);
            v99 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);
            if (v98 == 2)
            {
              v202 = v52;
              if (v99)
              {
                v211 = MEMORY[0x29EDBA0F8];
                v212 = objc_msgSend_name(v55, v100, v101);
                v214 = objc_msgSend_stringWithFormat_(v211, v213, @"Output texture for %@ is missing (which may be ok)", v212);
                v215 = v214;
                v218 = objc_msgSend_UTF8String(v215, v216, v217);
                *buf = 136315138;
                *&buf[4] = v218;
                _os_log_impl(&dword_295691000, v70, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
              }

LABEL_94:
              v12 = v264;
              runCopy = v265;
              v201 = v267;

              goto LABEL_95;
            }

            if (v99)
            {
              v102 = MEMORY[0x29EDBA0F8];
              v103 = objc_msgSend_name(v55, v100, v101);
              v105 = objc_msgSend_stringWithFormat_(v102, v104, @"Input texture for %@ is missing (which may be ok)", v103);
              v106 = v105;
              v109 = objc_msgSend_UTF8String(v106, v107, v108);
              *buf = 136315138;
              *&buf[4] = v109;
              _os_log_impl(&dword_295691000, v70, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
            }

            v70 = 0;
LABEL_35:
            v45 = v272;
LABEL_36:

            goto LABEL_37;
          }

          if (!objc_msgSend_type(v55, v61, v62))
          {
            v110 = v53->inputs;
            v111 = objc_msgSend_name(v55, v80, v81);
            v66 = objc_msgSend_objectForKeyedSubscript_(v110, v112, v111);

            if (!v66)
            {
              v115 = objc_msgSend_name(v55, v113, v114);
              v117 = objc_msgSend_isEqualToString_(v115, v116, @"kernelScale");

              if (!v117)
              {
                v66 = uni_logger_api(v118);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  v166 = MEMORY[0x29EDBA0F8];
                  v167 = objc_msgSend_name(v55, v164, v165);
                  v271 = objc_msgSend_kernel(v53, v168, v169);
                  v263 = objc_msgSend_mk(v271, v170, v171);
                  v174 = objc_msgSend_label(v263, v172, v173);
                  v176 = objc_msgSend_stringWithFormat_(v166, v175, @"missing object for input parameter %@ on kernel %@", v167, v174);
                  v177 = v176;
                  v180 = objc_msgSend_UTF8String(v177, v178, v179);
                  *buf = 136446466;
                  *&buf[4] = "[UniKernel run:]";
                  *&buf[12] = 2080;
                  *&buf[14] = v180;
                  _os_log_error_impl(&dword_295691000, v66, OS_LOG_TYPE_ERROR, "%{public}s %s", buf, 0x16u);

                  v45 = v272;
                }

                goto LABEL_37;
              }

              v66 = objc_msgSend_scale(v53, v119, v120);
            }

            if (objc_msgSend_bufferDataType(v55, v113, v114) == 1)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v124 = objc_msgSend__populateStruct_values_(v53, v123, v55, v66);
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v138 = objc_msgSend_conformsToProtocol_(v66, v137, &unk_2A1CA21A8);
                  if (!v138)
                  {
                    v202 = v52;
                    v70 = uni_logger_api(v138);
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                    {
                      sub_2956CE82C();
                    }

                    goto LABEL_94;
                  }
                }

                v124 = v66;
              }

              v70 = v124;
              if (!v124)
              {
                v202 = v52;
                v70 = uni_logger_api(0);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  sub_2956CE730();
                }

                goto LABEL_94;
              }

              v270 = v52;
              v139 = v51;
              v140 = objc_msgSend_conformsToProtocol_(v124, v125, &unk_2A1CA21A8);
              v143 = objc_msgSend_length(v70, v141, v142);
              v146 = objc_msgSend_bufferDataSize(v55, v144, v145);
              if (v140)
              {
                if (v143 != v146)
                {
                  sub_2956CE954();
                }

                v51 = v139;
                v149 = objc_msgSend_index(v55, v147, v148);
                objc_msgSend_setBuffer_offset_atIndex_(v34, v150, v70, 0, v149);
              }

              else
              {
                if (v143 != v146)
                {
                  sub_2956CE8FC();
                }

                if (objc_msgSend_length(v70, v147, v148) <= 0x1000)
                {
                  v186 = v70;
                  v189 = objc_msgSend_bytes(v186, v187, v188);
                  v192 = objc_msgSend_length(v70, v190, v191);
                  v195 = objc_msgSend_index(v55, v193, v194);
                  objc_msgSend_setBytes_length_atIndex_(v34, v196, v189, v192, v195);
                }

                else
                {
                  v157 = objc_msgSend_device(v53, v155, v156);
                  v159 = objc_msgSend_bufferFromData_device_(UniDeviceCache, v158, v70, v157);

                  if (!v159)
                  {
                    sub_2956CE928();
                  }

                  v162 = objc_msgSend_index(v55, v160, v161);
                  v34 = v268;
                  objc_msgSend_setBuffer_offset_atIndex_(v268, v163, v159, 0, v162);
                }

                v51 = v139;
              }

              v52 = v270;
            }

            else
            {
              v126 = objc_msgSend_bufferDataType(v55, v121, v122);
              v127 = isSupportedType(v126);
              if (!v127)
              {
                v202 = v52;
                v70 = uni_logger_render(v127);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                {
                  v221 = v51;
                  v222 = MEMORY[0x29EDBA0F8];
                  v223 = objc_msgSend_bufferDataType(v55, v219, v220);
                  v225 = MTLDataTypeAsString(v223, v224);
                  v228 = objc_msgSend_name(v55, v226, v227);
                  v230 = objc_msgSend_stringWithFormat_(v222, v229, @"Unhandled Metal buffer data type %@ for argument: %@", v225, v228);
                  v231 = v230;
                  v234 = objc_msgSend_UTF8String(v231, v232, v233);
                  *buf = 136315138;
                  *&buf[4] = v234;
                  _os_log_impl(&dword_295691000, v70, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);

                  v51 = v221;
                }

                goto LABEL_94;
              }

              v70 = v66;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v153 = objc_msgSend_index(v55, v151, v152);
                  objc_msgSend__setNumber_forEncoder_atIndex_(v53, v154, v70, v34, v153);
                }

                else
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  if ((isKindOfClass & 1) == 0)
                  {
                    v202 = v52;
                    v235 = uni_logger_api(isKindOfClass);
                    if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
                    {
                      sub_2956CE730();
                    }

                    v66 = v70;
                    goto LABEL_94;
                  }

                  *buf = 0;
                  v184 = objc_msgSend_index(v55, v182, v183);
                  objc_msgSend_setBytes_length_atIndex_(v34, v185, buf, 4, v184);
                }

                goto LABEL_36;
              }

              v130 = objc_msgSend_device(v53, v128, v129);
              v132 = objc_msgSend_bufferFromData_device_(UniDeviceCache, v131, v70, v130);

              if (!v132)
              {
                sub_2956CE800();
              }

              v135 = objc_msgSend_index(v55, v133, v134);
              v34 = v268;
              objc_msgSend_setBuffer_offset_atIndex_(v268, v136, v132, 0, v135);

              v53 = selfCopy;
            }

            goto LABEL_35;
          }

          if (objc_msgSend_type(v55, v80, v81) != 1)
          {
            goto LABEL_38;
          }

          v82 = v53->inputs;
          v83 = objc_msgSend_name(v55, v48, v49);
          v66 = objc_msgSend_objectForKeyedSubscript_(v82, v84, v83);

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            sub_2956CE6D8();
          }

          v87 = objc_msgSend_unsignedIntegerValue(v66, v85, v86);
          v90 = v87 + objc_msgSend_threadgroupMemoryAlignment(v55, v88, v89) - 1;
          v95 = v90 & -objc_msgSend_threadgroupMemoryAlignment(v55, v91, v92);
          if (!v95)
          {
            sub_2956CE704();
          }

          v96 = objc_msgSend_index(v55, v93, v94);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v34, v97, v95, v96);
LABEL_37:

LABEL_38:
          ++v54;
        }

        while (v50 != v54);
        v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v282, v281, 16);
        v50 = v197;
        if (!v197)
        {

          if (!v52)
          {
            v12 = v264;
            runCopy = v265;
            goto LABEL_79;
          }

          runCopy = v265;
          v201 = v267;
          if (v274 != -1)
          {
            objc_msgSend_setBytes_length_atIndex_(v34, v199, v286, 1);
          }

          v202 = v52;
          v203 = objc_msgSend_runInfo(selfCopy, v199, v200);
          v12 = v264;
          if (v203)
          {
            v206 = v203;
            objc_msgSend_dispatchOn_(v203, v204, v34);
          }

          else
          {
            v277 = objc_msgSend_width(v51, v204, v205);
            v273 = v51;
            v275 = objc_msgSend_height(v51, v237, v238);
            v241 = objc_msgSend_mk(selfCopy, v239, v240);
            v244 = objc_msgSend_threadExecutionWidth(v241, v242, v243);
            v247 = objc_msgSend_mk(selfCopy, v245, v246);
            v250 = objc_msgSend_maxTotalThreadsPerThreadgroup(v247, v248, v249);
            v253 = objc_msgSend_mk(selfCopy, v251, v252);
            v256 = v250 / objc_msgSend_threadExecutionWidth(v253, v254, v255);

            v257 = [UniRunInfo alloc];
            *buf = v277;
            *&buf[8] = v275;
            *&buf[16] = 1;
            v279[0] = v244;
            v279[1] = v256;
            v279[2] = 1;
            v259 = objc_msgSend_initWithGridSize_threadsPerThreadGroup_(v257, v258, buf, v279);
            if (!v259)
            {
              sub_2956CE9AC();
            }

            v206 = v259;
            v34 = v268;
            v51 = v273;
            objc_msgSend_dispatchOn_(v259, v260, v268);
          }

          objc_msgSend_endEncoding(v34, v207, v208);
          objc_msgSend_kDebugFlagForKernel(selfCopy, v261, v262);
          goto LABEL_96;
        }
      }
    }

    v51 = 0;
LABEL_79:
    v201 = v267;
    v209 = uni_logger_render(v198);
    if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_295691000, v209, OS_LOG_TYPE_INFO, "First texture unspecified. Error for now", buf, 2u);
    }

    v202 = 0;
LABEL_95:
    v206 = 0;
LABEL_96:
    v14 = 0;
    if (v201 && v51)
    {
      v278[0] = v201;
      v278[1] = v51;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v210, v278, 2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)makeBufferCpuAccessible:(id)accessible
{
  accessibleCopy = accessible;
  v6 = objc_msgSend_device(accessibleCopy, v4, v5);
  v9 = objc_msgSend_length(accessibleCopy, v7, v8);
  v11 = objc_msgSend_newBufferWithLength_options_(v6, v10, v9, 0);

  v14 = objc_msgSend_device(accessibleCopy, v12, v13);
  v17 = objc_msgSend_newCommandQueue(v14, v15, v16);
  v20 = objc_msgSend_commandBuffer(v17, v18, v19);

  v23 = objc_msgSend_blitCommandEncoder(v20, v21, v22);
  v26 = objc_msgSend_length(accessibleCopy, v24, v25);
  objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v23, v27, accessibleCopy, 0, v11, 0, v26);

  objc_msgSend_endEncoding(v23, v28, v29);
  objc_msgSend_commit(v20, v30, v31);
  objc_msgSend_waitUntilCompleted(v20, v32, v33);
  v34 = v11;

  return v11;
}

- (int)_outputFormatForMetalFormat:(unint64_t)format
{
  v4 = *MEMORY[0x29EDB91E0];
  if (format <= 64)
  {
    if (format > 24)
    {
      if (format == 25)
      {
        v5 = MEMORY[0x29EDB9218];
        return *v5;
      }

      if (format == 30)
      {
        v5 = MEMORY[0x29EDB91F0];
        return *v5;
      }
    }

    else
    {
      if (!format)
      {
        return v4;
      }

      if (format == 10)
      {
        v5 = MEMORY[0x29EDB91E8];
        return *v5;
      }
    }
  }

  else
  {
    if (format > 70)
    {
      if (format != 71)
      {
        if (format == 115)
        {
          v5 = MEMORY[0x29EDB9208];
          return *v5;
        }

        if (format == 125)
        {
          v5 = MEMORY[0x29EDB9200];
          return *v5;
        }

        goto LABEL_22;
      }

LABEL_16:
      v5 = MEMORY[0x29EDB91F8];
      return *v5;
    }

    if (format == 65)
    {
      v5 = MEMORY[0x29EDB9210];
      return *v5;
    }

    if (format == 70)
    {
      goto LABEL_16;
    }
  }

LABEL_22:
  v7 = uni_logger_api(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_2956CE9D8(format, v7);
  }

  return v4;
}

- (int)_promoteFormatForCoreImage:(int)image
{
  if (*MEMORY[0x29EDB91E8] == image)
  {
    v3 = MEMORY[0x29EDB9218];
    return *v3;
  }

  if (*MEMORY[0x29EDB91F0] == image)
  {
    v3 = MEMORY[0x29EDB9210];
    return *v3;
  }

  if (*MEMORY[0x29EDB91F8] == image)
  {
    return *MEMORY[0x29EDB9208];
  }

  else
  {
    return image;
  }
}

+ (BOOL)_shouldEmulate_sRGBForTexture:(id)texture
{
  textureCopy = texture;
  v8 = objc_msgSend_parentTexture(textureCopy, v4, v5);
  if (v8)
  {
    v9 = objc_msgSend_parentTexture(textureCopy, v6, v7);
    if (objc_msgSend_pixelFormat(v9, v10, v11) == 71)
    {
      v14 = 1;
    }

    else
    {
      v15 = objc_msgSend_parentTexture(textureCopy, v12, v13);
      if (objc_msgSend_pixelFormat(v15, v16, v17) == 31)
      {
        v14 = 1;
      }

      else
      {
        v20 = objc_msgSend_parentTexture(textureCopy, v18, v19);
        v14 = objc_msgSend_pixelFormat(v20, v21, v22) == 11;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_outputTextureForTexture:(id)texture force:(BOOL)force
{
  textureCopy = texture;
  v8 = textureCopy;
  if (force)
  {
    v9 = objc_msgSend_device(textureCopy, v6, v7, 0, 0, 0, 0, 0, 0, 0);
    objc_msgSend_pixelFormat(v8, v10, v11);
    MTLPixelFormatGetInfoForDevice();

    if ((v22 & 8) != 0)
    {
      if ((objc_msgSend_usage(v8, v12, v13) & 0x10) == 0)
      {
        sub_2956CEA8C();
      }

      v16 = objc_msgSend_pixelFormat(v8, v14, v15);
      switch(v16)
      {
        case 11:
          v18 = objc_msgSend_newTextureViewWithPixelFormat_(v8, v17, 10);
          break;
        case 71:
          v18 = objc_msgSend_newTextureViewWithPixelFormat_(v8, v17, 70);
          break;
        case 31:
          v18 = objc_msgSend_newTextureViewWithPixelFormat_(v8, v17, 30);
          break;
        default:
          sub_2956CEA60();
      }

      v19 = v18;

      v8 = v19;
    }
  }

  v20 = v8;

  return v20;
}

- (CGRect)extentForImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    if (objc_msgSend_conformsToProtocol_(imageCopy, v4, &unk_2A1CA0A70))
    {
      v6 = v5;
      v9 = objc_msgSend_width(v6, v7, v8);
LABEL_13:
      v14 = v9;
      v15 = objc_msgSend_height(v6, v10, v11);

      v12 = 0.0;
      v13 = 0.0;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_texture(v5, v16, v17);
      if (!v6)
      {
        v20 = objc_msgSend_image(v5, v18, v19);
        v6 = v20;
        if (v20)
        {
          objc_msgSend_extent(v20, v18, v19);
          v12 = v21;
          v13 = v22;
          v14 = v23;
          v15 = v24;

          goto LABEL_14;
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_extent(v5, v18, v19);
        v12 = v25;
        v13 = v26;
        v14 = v27;
        v15 = v28;
        goto LABEL_14;
      }

      v6 = 0;
    }

    v9 = objc_msgSend_width(v6, v18, v19);
    goto LABEL_13;
  }

  v12 = *MEMORY[0x29EDB90D8];
  v13 = *(MEMORY[0x29EDB90D8] + 8);
  v14 = *(MEMORY[0x29EDB90D8] + 16);
  v15 = *(MEMORY[0x29EDB90D8] + 24);
LABEL_14:

  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (unint64_t)_outputFormatForImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (!imageCopy)
  {
    goto LABEL_7;
  }

  if (objc_msgSend_conformsToProtocol_(imageCopy, v4, &unk_2A1CA0A70))
  {
    v8 = objc_msgSend_pixelFormat(v5, v6, v7);
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = objc_msgSend_texture(v5, v9, v10);

  if (v8)
  {
    v13 = objc_msgSend_texture(v5, v11, v12);
    v8 = objc_msgSend_pixelFormat(v13, v14, v15);
  }

LABEL_8:

  return v8;
}

- (id)_ciImageForInput:(id)input
{
  inputCopy = input;
  if (!inputCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v4, v5);
LABEL_4:
    v8 = v7;
    goto LABEL_5;
  }

  if (objc_msgSend_conformsToProtocol_(inputCopy, v4, &unk_2A1CA0A70))
  {
    v7 = objc_msgSend_imageWithMTLTexture_options_(MEMORY[0x29EDB9178], v10, inputCopy, MEMORY[0x29EDB8EA0]);
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = inputCopy;
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = objc_msgSend_image(inputCopy, v12, v13);
    if (v8)
    {
      goto LABEL_5;
    }

    v15 = objc_msgSend__mtlTextureForImage_(UniKernel, v14, inputCopy);
    if (v15)
    {
      v17 = v15;
      if (objc_msgSend_conformsToProtocol_(v15, v16, &unk_2A1CA0A70))
      {
        objc_msgSend_imageWithMTLTexture_options_(MEMORY[0x29EDB9178], v18, v17, 0);
      }

      else
      {
        objc_msgSend__ciImageForInput_(self, v18, v17);
      }
      v8 = ;

      goto LABEL_5;
    }
  }

  else
  {
    v19 = uni_logger_api(isKindOfClass);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_2956CEAB8();
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (id)outputImageOfSize:(id)size
{
  sizeCopy = size;
  v7 = sizeCopy;
  if (sizeCopy)
  {
    v8 = objc_msgSend_kernel(sizeCopy, v5, v6);
    if (!v8)
    {
      goto LABEL_8;
    }

    v11 = v8;
    v12 = objc_msgSend_kernel(v7, v9, v10);
    v17 = objc_msgSend_runInfo(v12, v13, v14);
    if (v17)
    {
      v18 = objc_msgSend_kernel(v7, v15, v16);
      v21 = objc_msgSend_runInfo(v18, v19, v20);
      v24 = objc_msgSend_copy(v21, v22, v23);
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
LABEL_8:
      v26 = [UniRunInfo alloc];
      v24 = objc_msgSend_initWithImage_(v26, v27, v7);
    }

    objc_msgSend_outputImage_(self, v25, v24);
  }

  else
  {
    v24 = 0;
    objc_msgSend_outputImage_(self, v5, 0);
  }
  v28 = ;

  return v28;
}

- (id)_intputOrOutputNameArray:(BOOL)array
{
  arrayCopy = array;
  v7 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, array);
  v30 = 0u;
  v31 = 0u;
  if (arrayCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  v32 = 0uLL;
  v33 = 0uLL;
  v9 = objc_msgSend_kernel(self, v5, v6);
  v12 = objc_msgSend_arguments(v9, v10, v11);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v29, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        if (v8 == objc_msgSend_access(v20, v15, v16) && objc_msgSend_type(v20, v15, v16) == 2)
        {
          v21 = objc_msgSend_name(v20, v15, v16);
          if (!v21)
          {
            sub_2956CEAF8();
          }

          v24 = objc_msgSend_name(v20, v22, v23);
          objc_msgSend_addObject_(v7, v25, v24);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v30, v29, 16);
    }

    while (v17);
  }

  v27 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v26, v7);

  return v27;
}

- (id)_inputOrOutputArray:(BOOL)array
{
  if (array)
  {
    objc_msgSend_inputNameArray(self, a2, array);
  }

  else
  {
    objc_msgSend_outputNameArray(self, a2, array);
  }
  v5 = ;
  v8 = v5;
  if (v5 && (v9 = objc_msgSend_count(v5, v6, v7)) != 0)
  {
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v10, v9);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = v8;
    v12 = v8;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v39, v38, 16);
    if (v14)
    {
      v17 = v14;
      v18 = *v40;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = objc_msgSend_inputs(self, v15, v16);
          v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v20);

          if (v23)
          {
            if (objc_msgSend_conformsToProtocol_(v23, v15, &unk_2A1CA0A70))
            {
              v26 = rootTexture(v23);

              v23 = v26;
            }

            if (array || (v27 = objc_opt_class(), v27 == objc_opt_class()))
            {
              objc_msgSend_addObject_(v11, v25, v23);
            }

            else
            {
              v29 = objc_msgSend_inputs(self, v25, v28);
              v31 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v20);
              objc_msgSend_addObject_(v11, v32, v31);
            }
          }

          else if (!array)
          {
            v35 = uni_logger_api(v24);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_2956CEB24(self, v20, v35);
            }

            v34 = MEMORY[0x29EDB8E90];
            goto LABEL_27;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v39, v38, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v34 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v33, v11);
LABEL_27:
    v8 = v37;
  }

  else
  {
    v34 = MEMORY[0x29EDB8E90];
  }

  return v34;
}

- (id)_inputOrOutputBufferArray:(BOOL)array
{
  arrayCopy = array;
  v36 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, array);
  v38 = 0u;
  v39 = 0u;
  if (arrayCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v40 = 0uLL;
  v41 = 0uLL;
  v8 = objc_msgSend_kernel(self, v5, v6);
  v11 = objc_msgSend_arguments(v8, v9, v10);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v38, v37, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v39;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        if (v7 == objc_msgSend_access(v19, v14, v15) && !objc_msgSend_type(v19, v14, v15))
        {
          v20 = objc_msgSend_inputs(self, v14, v15);
          v23 = objc_msgSend_name(v19, v21, v22);
          v25 = objc_msgSend_objectForKeyedSubscript_(v20, v24, v23);

          v28 = objc_msgSend_access(v19, v26, v27);
          if (v28 == 2 && v25 == 0)
          {
            v34 = uni_logger_api(v28);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_2956CEBEC();
            }

            v33 = MEMORY[0x29EDB8E90];
            v31 = v36;
            goto LABEL_24;
          }

          if (v25)
          {
            objc_msgSend_addObject_(v36, v29, v25);
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v38, v37, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v31 = v36;
  v33 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v32, v36);
LABEL_24:

  return v33;
}

- (CGRect)_findOutputRect
{
  v4 = objc_msgSend_kernel(self, a2, v2);
  if (!v4)
  {
    sub_2956CECE8();
  }

  v7 = objc_msgSend_kernel(self, v5, v6);
  v10 = objc_msgSend_arguments(v7, v8, v9);
  if (!v10)
  {
    sub_2956CECBC();
  }

  x = *MEMORY[0x29EDB90D8];
  y = *(MEMORY[0x29EDB90D8] + 8);
  width = *(MEMORY[0x29EDB90D8] + 16);
  height = *(MEMORY[0x29EDB90D8] + 24);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = objc_msgSend_kernel(self, v15, v16);
  v20 = objc_msgSend_arguments(v17, v18, v19);

  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v49, v48, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v50;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v49 + 1) + 8 * i);
        if (objc_msgSend_access(v28, v23, v24) == 2 && objc_msgSend_type(v28, v23, v24) == 2)
        {
          v29 = objc_msgSend_inputs(self, v23, v24);
          v32 = objc_msgSend_name(v28, v30, v31);
          v34 = objc_msgSend_objectForKeyedSubscript_(v29, v33, v32);
          objc_msgSend_extentForImage_(self, v35, v34);
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;

          v53.origin.x = v37;
          v53.origin.y = v39;
          v53.size.width = v41;
          v53.size.height = v43;
          if (!CGRectIsNull(v53))
          {
            v54.origin.x = x;
            v54.origin.y = y;
            v54.size.width = width;
            v54.size.height = height;
            if (CGRectIsNull(v54))
            {
              height = v43;
              width = v41;
              y = v39;
              x = v37;
            }

            else
            {
              v55.origin.x = x;
              v55.origin.y = y;
              v55.size.width = width;
              v55.size.height = height;
              v58.origin.x = v37;
              v58.origin.y = v39;
              v58.size.width = v41;
              v58.size.height = v43;
              v56 = CGRectUnion(v55, v58);
              x = v56.origin.x;
              y = v56.origin.y;
              width = v56.size.width;
              height = v56.size.height;
            }
          }
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v49, v48, 16);
    }

    while (v25);
  }

  v44 = x;
  v45 = y;
  v46 = width;
  v47 = height;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

+ (id)generateCIImage:(id)image
{
  imageCopy = image;
  v8 = objc_msgSend_runInfo(imageCopy, v4, v5);
  if (v8)
  {
    v9 = objc_msgSend_runInfo(imageCopy, v6, v7);
    objc_msgSend_outputExtent(v9, v10, v11);
    *v565 = v12;
    *&v565[8] = v13;
    *&v565[16] = v14;
    *&v565[24] = v15;
  }

  else
  {
    *v565 = *MEMORY[0x29EDB90D8];
    *&v565[8] = *(MEMORY[0x29EDB90D8] + 8);
    *&v565[16] = *(MEMORY[0x29EDB90D8] + 16);
    *&v565[24] = *(MEMORY[0x29EDB90D8] + 24);
  }

  v18 = objc_msgSend_preferredOutputFormat(imageCopy, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_preferredOutputFormat(imageCopy, v19, v20);
    v18 = objc_msgSend_unsignedIntegerValue(v21, v22, v23);
  }

  v24 = MEMORY[0x29EDB8E20];
  v25 = objc_msgSend_kernel(imageCopy, v19, v20);
  v28 = objc_msgSend_arguments(v25, v26, v27);
  v31 = objc_msgSend_count(v28, v29, v30);
  v33 = objc_msgSend_setWithCapacity_(v24, v32, v31);

  v638 = 0u;
  v639 = 0u;
  v636 = 0u;
  v637 = 0u;
  v575 = imageCopy;
  v36 = objc_msgSend_kernel(imageCopy, v34, v35);
  v39 = objc_msgSend_arguments(v36, v37, v38);

  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v636, v635, 16);
  if (v41)
  {
    v44 = v41;
    v45 = *v637;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v637 != v45)
        {
          objc_enumerationMutation(v39);
        }

        v47 = objc_msgSend_name(*(*(&v636 + 1) + 8 * i), v42, v43);
        objc_msgSend_addObject_(v33, v48, v47);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v636, v635, 16);
    }

    while (v44);
  }

  v51 = objc_msgSend_set(MEMORY[0x29EDB8E20], v49, v50);
  v54 = objc_msgSend_inputs(v575, v52, v53);
  v57 = objc_msgSend_keyEnumerator(v54, v55, v56);

  v60 = objc_msgSend_nextObject(v57, v58, v59);
  if (v60)
  {
    v62 = v60;
    do
    {
      objc_msgSend_addObject_(v51, v61, v62);
      v65 = objc_msgSend_nextObject(v57, v63, v64);

      v62 = v65;
    }

    while (v65);
  }

  v560 = v57;
  objc_msgSend_addObject_(v51, v61, @"emulate_sRGB");
  objc_msgSend_addObject_(v51, v66, @"kernelScale");
  v561 = v51;
  objc_msgSend_minusSet_(v33, v67, v51);
  v70 = objc_msgSend_count(v33, v68, v69);
  if (v70)
  {
    v73 = uni_logger_render(v70);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v76 = MEMORY[0x29EDBA0F8];
      v77 = objc_msgSend_mk(v575, v74, v75);
      v80 = objc_msgSend_label(v77, v78, v79);
      v82 = objc_msgSend_stringWithFormat_(v76, v81, @"For kernel %@, missing kernel arguments = %@", v80, v33);
      v83 = v82;
      LODWORD(buf) = 136315138;
      *(&buf + 4) = objc_msgSend_UTF8String(v83, v84, v85);
      _os_log_impl(&dword_295691000, v73, OS_LOG_TYPE_INFO, "%s", &buf, 0xCu);
    }
  }

  shouldEmulate_sRGBForTexture = 0;
  v630 = 0u;
  v631 = 0u;
  v632 = 0u;
  v633 = 0u;
  v86 = objc_msgSend_kernel(v575, v71, v72);
  v89 = objc_msgSend_arguments(v86, v87, v88);

  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v630, v629, 16);
  if (v91)
  {
    v94 = v91;
    v95 = *v631;
    while (2)
    {
      for (j = 0; j != v94; ++j)
      {
        if (*v631 != v95)
        {
          objc_enumerationMutation(v89);
        }

        v97 = *(*(&v630 + 1) + 8 * j);
        if (objc_msgSend_access(v97, v92, v93) == 2)
        {
          v98 = objc_msgSend_inputs(v575, v92, v93);
          v101 = objc_msgSend_name(v97, v99, v100);
          v103 = objc_msgSend_objectForKeyedSubscript_(v98, v102, v101);

          if (objc_msgSend_type(v97, v104, v105) == 2)
          {
            if (!v103)
            {
              sub_2956CED14();
            }

            v107 = objc_msgSend__mtlTextureForImage_(UniKernel, v106, v103);
            v109 = v107;
            if (v107 && objc_msgSend_conformsToProtocol_(v107, v108, &unk_2A1CA0A70))
            {
              shouldEmulate_sRGBForTexture = objc_msgSend__shouldEmulate_sRGBForTexture_(UniKernel, v108, v109);
            }

            objc_msgSend_extentForImage_(v575, v108, v103);
            x = v110;
            y = v112;
            width = v114;
            height = v116;
            if (!CGRectIsNull(*v565))
            {
              v646.origin.x = x;
              v646.origin.y = y;
              v646.size.width = width;
              v646.size.height = height;
              v641 = CGRectUnion(*v565, v646);
              x = v641.origin.x;
              y = v641.origin.y;
              width = v641.size.width;
              height = v641.size.height;
            }

            if (!v18)
            {
              v18 = objc_msgSend__outputFormatForImage_(v575, v118, v103);
            }

            *&v565[16] = width;
            *&v565[24] = height;
            *v565 = x;
            *&v565[8] = y;
          }

          goto LABEL_40;
        }
      }

      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v92, &v630, v629, 16);
      if (v94)
      {
        continue;
      }

      break;
    }
  }

LABEL_40:

  v120 = objc_msgSend__outputFormatForMetalFormat_(v575, v119, v18);
  v122 = v120;
  v556 = *MEMORY[0x29EDB91E0];
  if (*MEMORY[0x29EDB91E0] == v120)
  {
    v557 = v120;
  }

  else if ((v18 - 11) <= 0x3C && ((1 << (v18 - 11)) & 0x1000000000100001) != 0)
  {
    v557 = v120;
    shouldEmulate_sRGBForTexture = 1;
  }

  else
  {
    v557 = objc_msgSend__promoteFormatForCoreImage_(v575, v121, v120);
  }

  v123 = objc_msgSend_inputs(v575, v121, v122);
  v126 = objc_msgSend_copy(v123, v124, v125);

  shouldEmulate_sRGBForTexture = 0;
  v128 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v127, &shouldEmulate_sRGBForTexture, 1);
  objc_msgSend_setObject_forKeyedSubscript_(v126, v129, v128, @"emulate_sRGB");

  v559 = v126;
  v132 = objc_msgSend_copy(v126, v130, v131);
  objc_msgSend_setInputs_(v575, v133, v132);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v625 = 0x3032000000;
  v626 = sub_2956C09B8;
  v627 = sub_2956C09C8;
  v628 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v134, v135);
  v618 = 0;
  v619 = &v618;
  v620 = 0x3032000000;
  v621 = sub_2956C09B8;
  v622 = sub_2956C09C8;
  v623 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v136, v137);
  v140 = objc_msgSend_ck(v575, v138, v139);
  v143 = objc_msgSend_parameters(v140, v141, v142);

  v144 = MEMORY[0x29EDB8DE8];
  v147 = objc_msgSend_count(v143, v145, v146);
  v149 = objc_msgSend_arrayWithCapacity_(v144, v148, v147);
  v150 = MEMORY[0x29EDB8DE8];
  v153 = objc_msgSend_count(v143, v151, v152);
  v157 = objc_msgSend_arrayWithCapacity_(v150, v154, v153);
  for (k = 0; k < objc_msgSend_count(v143, v155, v156); ++k)
  {
    v161 = objc_msgSend_null(MEMORY[0x29EDB8E28], v159, v160);
    objc_msgSend_addObject_(v149, v162, v161);

    objc_msgSend_setObject_atIndexedSubscript_(v157, v163, &unk_2A1C94B88, k);
  }

  v164 = MEMORY[0x29EDB8E00];
  v165 = objc_msgSend_count(v143, v159, v160);
  v578 = objc_msgSend_dictionaryWithCapacity_(v164, v166, v165);
  v169 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x29EDBA040], v167, v168);
  objc_msgSend_addCharactersInString_(v169, v170, @"_");
  v577 = objc_msgSend_invertedSet(v169, v171, v172);
  v558 = v169;
  v616 = 0u;
  v617 = 0u;
  v614 = 0u;
  v615 = 0u;
  obj = v143;
  v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v173, &v614, v613, 16);
  v567 = v157;
  v570 = v149;
  if (v175)
  {
    v176 = 0;
    v177 = *v615;
    v178 = *MEMORY[0x29EDB91B0];
    do
    {
      for (m = 0; m != v175; ++m)
      {
        if (*v615 != v177)
        {
          objc_enumerationMutation(obj);
        }

        v180 = objc_msgSend_objectForKeyedSubscript_(*(*(&v614 + 1) + 8 * m), v174, v178);
        v182 = v180;
        if (!v180)
        {
          __assert_rtn("+[UniKernel generateCIImage:]", "UniKernel.m", 1870, "str");
        }

        v183 = objc_msgSend_componentsSeparatedByCharactersInSet_(v180, v181, v577);
        v185 = objc_msgSend_componentsJoinedByString_(v183, v184, &stru_2A1C8D648);

        v187 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v186, v176);
        objc_msgSend_setObject_forKeyedSubscript_(v578, v188, v187, v185);

        ++v176;
      }

      v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v174, &v614, v613, 16);
    }

    while (v175);
  }

  v191 = objc_msgSend_ck(v575, v189, v190);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v611 = 0u;
  v612 = 0u;
  v609 = 0u;
  v610 = 0u;
  v194 = objc_msgSend_kernel(v575, v192, v193);
  v197 = objc_msgSend_arguments(v194, v195, v196);

  v201 = objc_msgSend_countByEnumeratingWithState_objects_count_(v197, v198, &v609, v608, 16);
  v569 = v197;
  if (!v201)
  {
LABEL_118:

    v606 = 0u;
    v607 = 0u;
    v604 = 0u;
    v605 = 0u;
    v569 = v567;
    v348 = objc_msgSend_countByEnumeratingWithState_objects_count_(v569, v345, &v604, v603, 16);
    if (v348)
    {
      v349 = 0;
      v350 = *v605;
LABEL_120:
      v351 = 0;
      v352 = v349;
      v349 += v348;
      while (1)
      {
        if (*v605 != v350)
        {
          objc_enumerationMutation(v569);
        }

        v353 = objc_msgSend_BOOLValue(*(*(&v604 + 1) + 8 * v351), v346, v347);
        if ((v353 & 1) == 0)
        {
          break;
        }

        ++v352;
        if (v348 == ++v351)
        {
          v348 = objc_msgSend_countByEnumeratingWithState_objects_count_(v569, v346, &v604, v603, 16);
          if (!v348)
          {
            goto LABEL_126;
          }

          goto LABEL_120;
        }
      }

      v359 = uni_logger_api(v353);
      if (os_log_type_enabled(v359, OS_LOG_TYPE_ERROR))
      {
        sub_2956CEE34();
      }

      v362 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v360, v361);
      goto LABEL_193;
    }

LABEL_126:

    v355 = MEMORY[0x29EDB8EA0];
    v356 = v557;
    if (v556 != v557 && v557 >= 1)
    {
      v601 = *MEMORY[0x29EDB9250];
      v357 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v354, v557);
      v602 = v357;
      v355 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v358, &v602, &v601, 1);
    }

    v569 = v355;
    v384 = objc_msgSend_runInfo(v575, v354, v356);
    v568 = v384;
    if (v384)
    {
      objc_msgSend_outputExtent(v384, v385, v386);
      if (CGRectIsNull(v643))
      {
        memset(v591, 0, sizeof(v591));
        objc_msgSend_getThreadsPerThreadgroup(v568, v385, v386);
        if (*v591 && *&v591[8] && *&v591[16])
        {
          v389 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v387, v355);
          v391 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v390, *v591);
          v600[0] = v391;
          v393 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v392, *&v591[8]);
          v600[1] = v393;
          v395 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v394, *&v591[16]);
          v600[2] = v395;
          v397 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v396, v600, 3);
          objc_msgSend_setObject_forKeyedSubscript_(v389, v398, v397, @"kCIKernelThreadsPerThreadgroup");

          v400 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8DC0], v399, v389);

          v569 = v400;
        }

        v585 = 0;
        v586 = 0;
        v587 = 0;
        objc_msgSend_getThreadgroupsPerGrid(v568, v387, v388);
      }
    }

    if (!v570 || !objc_msgSend_count(v570, v385, v386))
    {
LABEL_180:
      objc_msgSend__findOutputRect(v575, v385, v386);
      v447 = v644.origin.x;
      v448 = v644.origin.y;
      v449 = v644.size.width;
      v450 = v644.size.height;
      if (!CGRectIsNull(v644))
      {
        v455 = objc_msgSend_runInfo(v575, v451, v452);
        if (v455)
        {
          v456 = objc_msgSend_runInfo(v575, v453, v454);
          objc_msgSend_outputExtent(v456, v457, v458);
          v460 = v459;
          v462 = v461;
          v464 = v463;
          v466 = v465;
        }

        else
        {
          v460 = *MEMORY[0x29EDB90D8];
          v462 = *(MEMORY[0x29EDB90D8] + 8);
          v464 = *(MEMORY[0x29EDB90D8] + 16);
          v466 = *(MEMORY[0x29EDB90D8] + 24);
        }

        v645.origin.x = v460;
        v645.origin.y = v462;
        v645.size.width = v464;
        v645.size.height = v466;
        if (CGRectIsNull(v645))
        {
          *&v565[16] = v449;
          *&v565[24] = v450;
          *v565 = v447;
          *&v565[8] = v448;
        }
      }

      *v591 = 0;
      *&v591[8] = v591;
      *&v591[16] = 0x3032000000;
      v592 = sub_2956C09B8;
      v593 = sub_2956C09C8;
      v472 = objc_msgSend_kernel(v575, v451, v452);
      v594 = objc_msgSend_constants(v472, v473, v474);

      v585 = 0;
      v586 = &v585;
      v587 = 0x3032000000;
      v588 = sub_2956C09B8;
      v589 = sub_2956C09C8;
      v477 = objc_msgSend_scale(v575, v475, v476);
      v590 = objc_msgSend_copy(v477, v478, v479);

      v482 = objc_msgSend_ck(v575, v480, v481);
      v579[0] = MEMORY[0x29EDCA5F8];
      v579[1] = 3221225472;
      v579[2] = sub_2956C09D0;
      v579[3] = &unk_29EDD49A0;
      v580 = v575;
      v581 = v591;
      v582 = &v618;
      p_buf = &buf;
      v584 = &v585;
      v484 = objc_msgSend_applyWithExtent_roiCallback_arguments_options_(v482, v483, v579, v570, v569, *v565, *&v565[8], *&v565[16], *&v565[24]);

      if ((isKindOfClass & 1) == 0)
      {
        v487 = objc_msgSend_imageByCroppingToRect_(v484, v485, v486, *v565, *&v565[8], *&v565[16], *&v565[24]);

        v484 = v487;
      }

      v362 = v484;

      _Block_object_dispose(&v585, 8);
      _Block_object_dispose(v591, 8);

      goto LABEL_192;
    }

    v401 = objc_msgSend_ck(v575, v385, v386);
    v404 = objc_msgSend_parameters(v401, v402, v403);

    v407 = objc_msgSend_count(v404, v405, v406);
    v410 = objc_msgSend_count(v570, v408, v409);
    if (v407 != v410)
    {
      v467 = uni_logger_api(v410);
      if (os_log_type_enabled(v467, OS_LOG_TYPE_ERROR))
      {
        v542 = MEMORY[0x29EDBA0F8];
        v543 = objc_msgSend_count(v404, v468, v469);
        v546 = objc_msgSend_count(v570, v544, v545);
        v549 = objc_msgSend_ck(v575, v547, v548);
        v551 = objc_msgSend_stringWithFormat_(v542, v550, @"Unexpected # of argumetns for kernel (wanted %lu, got %ld). Returning empty image for kernel %@", v543, v546, v549);
        v552 = v551;
        v555 = objc_msgSend_UTF8String(v552, v553, v554);
        *v591 = 136315138;
        *&v591[4] = v555;
        _os_log_error_impl(&dword_295691000, v467, OS_LOG_TYPE_ERROR, "%s", v591, 0xCu);
      }

      v362 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v470, v471);

      goto LABEL_192;
    }

    v598 = 0u;
    v599 = 0u;
    v596 = 0u;
    v597 = 0u;
    v411 = v404;
    v414 = objc_msgSend_countByEnumeratingWithState_objects_count_(v411, v412, &v596, v595, 16);
    if (!v414)
    {
      goto LABEL_179;
    }

    v415 = 0;
    v572 = *MEMORY[0x29EDB91A8];
    v574 = *v597;
    v562 = *MEMORY[0x29EDB91B0];
LABEL_157:
    v416 = 0;
    v564 = v414;
    while (1)
    {
      if (*v597 != v574)
      {
        objc_enumerationMutation(v411);
      }

      v417 = *(*(&v596 + 1) + 8 * v416);
      v418 = objc_msgSend_objectForKeyedSubscript_(v417, v413, v572);
      v419 = v418;
      if (!v418)
      {
        goto LABEL_175;
      }

      v421 = NSClassFromString(v418);
      if (!v421)
      {
        goto LABEL_175;
      }

      v422 = objc_msgSend_objectAtIndexedSubscript_(v570, v420, v415);
      if (objc_opt_class() == v421)
      {
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_174;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_174;
        }

        v435 = v415;
        v436 = MEMORY[0x29EDBA0F8];
        v437 = objc_msgSend_objectForKeyedSubscript_(v417, v434, v562);
        v438 = objc_opt_class();
        v439 = NSStringFromClass(v438);
        v431 = objc_msgSend_stringWithFormat_(v436, v440, @"object named %@ is of incorrect class (%@) expecting an image or sampler.", v437, v439);;

        v433 = uni_logger_compile(v441);
        v415 = v435;
        if (os_log_type_enabled(v433, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_177;
        }
      }

      else
      {
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_174;
        }

        if (isKindOfClass)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v421 == objc_opt_class())
          {
            goto LABEL_174;
          }
        }

        v424 = v415;
        v425 = MEMORY[0x29EDBA0F8];
        v426 = objc_msgSend_objectForKeyedSubscript_(v417, v423, v562);
        v427 = objc_opt_class();
        v428 = NSStringFromClass(v427);
        v429 = NSStringFromClass(v421);
        v431 = objc_msgSend_stringWithFormat_(v425, v430, @"object named %@ is of incorrect class (%@) expecting %@", v426, v428, v429);;

        v433 = uni_logger_compile(v432);
        v415 = v424;
        if (os_log_type_enabled(v433, OS_LOG_TYPE_ERROR))
        {
LABEL_177:
          v442 = v431;
          v445 = objc_msgSend_UTF8String(v442, v443, v444);
          v414 = v564;
          *v591 = 136446466;
          *&v591[4] = "+[UniKernel generateCIImage:]";
          *&v591[12] = 2080;
          *&v591[14] = v445;
          _os_log_error_impl(&dword_295691000, v433, OS_LOG_TYPE_ERROR, "%{public}s %s", v591, 0x16u);
          goto LABEL_173;
        }
      }

      v414 = v564;
LABEL_173:

LABEL_174:
      ++v415;

LABEL_175:
      if (v414 == ++v416)
      {
        v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(v411, v413, &v596, v595, 16);
        v414 = v446;
        if (!v446)
        {
LABEL_179:

          goto LABEL_180;
        }

        goto LABEL_157;
      }
    }
  }

  v202 = *v610;
  v571 = *v610;
LABEL_59:
  v203 = 0;
  v573 = v201;
  while (1)
  {
    if (*v610 != v202)
    {
      objc_enumerationMutation(v569);
    }

    v204 = *(*(&v609 + 1) + 8 * v203);
    if (objc_msgSend_access(v204, v199, v200) != 2)
    {
      break;
    }

LABEL_109:
    if (v201 == ++v203)
    {
      v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v569, v199, &v609, v608, 16);
      v201 = v344;
      if (!v344)
      {
        goto LABEL_118;
      }

      goto LABEL_59;
    }
  }

  if (objc_msgSend_type(v204, v199, v200) != 2)
  {
    v207 = objc_msgSend_inputs(v575, v205, v206);
    v210 = objc_msgSend_name(v204, v208, v209);
    v212 = objc_msgSend_objectForKeyedSubscript_(v207, v211, v210);

    if (v212)
    {
      v215 = v619[5];
      v216 = objc_msgSend_name(v204, v213, v214);
      objc_msgSend_setObject_forKeyedSubscript_(v215, v217, v212, v216);
    }
  }

  v218 = objc_msgSend_name(v204, v205, v206);
  v220 = objc_msgSend_objectForKeyedSubscript_(v578, v219, v218);

  v568 = v220;
  if (v220)
  {
    v224 = objc_msgSend_unsignedIntValue(v220, v222, v223);
    v227 = objc_msgSend_count(obj, v225, v226);
    if (v227 <= v224)
    {
      v369 = uni_logger_api(v227);
      if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
      {
        v372 = objc_msgSend_name(v204, v370, v371);
        v373 = v372;
        v376 = objc_msgSend_UTF8String(v373, v374, v375);
        *v591 = 136315394;
        *&v591[4] = v376;
        *&v591[12] = 2048;
        *&v591[14] = v224;
        _os_log_error_impl(&dword_295691000, v369, OS_LOG_TYPE_ERROR, "Index out of range for argument %s (%ld).", v591, 0x16u);
      }
    }

    else
    {
      if (objc_msgSend_type(v204, v228, v229) == 2)
      {
        v232 = objc_msgSend_inputs(v575, v230, v231);
        v235 = objc_msgSend_name(v204, v233, v234);
        v237 = objc_msgSend_objectForKeyedSubscript_(v232, v236, v235);

        v241 = objc_msgSend__ciImageForInput_(v575, v238, v237);
        if (!v241)
        {
          v242 = MEMORY[0x29EDBA0F8];
          v243 = objc_msgSend_name(v204, v239, v240);
          v245 = objc_msgSend_stringWithFormat_(v242, v244, @"input image for texture named %@ is nil", v243);
          v246 = v245;
          v249 = objc_msgSend_UTF8String(v246, v247, v248);

          v251 = uni_logger_api(v250);
          if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
          {
            *v591 = 136315138;
            *&v591[4] = v249;
            _os_log_error_impl(&dword_295691000, v251, OS_LOG_TYPE_ERROR, "%s", v591, 0xCu);
          }

          v241 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v252, v253);
        }

        v254 = objc_msgSend_runInfo(v575, v239, v240);

        if (!v254)
        {
          if (CGRectIsNull(*v565))
          {
            objc_msgSend_extent(v241, v257, v258);
          }

          else
          {
            objc_msgSend_extent(v241, v257, v258);
            v647.origin.x = v278;
            v647.origin.y = v279;
            v647.size.width = v280;
            v647.size.height = v281;
            *&v259 = CGRectUnion(*v565, v647);
          }

          *v565 = v259;
          *&v565[8] = v260;
          *&v565[16] = v261;
          *&v565[24] = v262;
        }

        objc_msgSend_extent(v241, v255, v256);
        IsEmpty = CGRectIsEmpty(v642);
        v283 = *(*(&buf + 1) + 40);
        v284 = MEMORY[0x29EDB9198];
        objc_msgSend_extent(v241, v285, v286);
        v289 = objc_msgSend_vectorWithCGRect_(v284, v287, v288);
        objc_msgSend_addObject_(v283, v290, v289);

        v292 = v241;
        if (((IsEmpty | isKindOfClass) & 1) == 0)
        {
          v563 = objc_msgSend_imageByClampingToExtent(v241, v291, v241);
          v292 = v563;
        }

        objc_msgSend_setObject_atIndexedSubscript_(v570, v291, v292, v224);
        if (((IsEmpty | isKindOfClass) & 1) == 0)
        {
        }

        objc_msgSend_setObject_atIndexedSubscript_(v567, v293, &unk_2A1C94BA0, v224);
        objc_msgSend_setObject_atIndexedSubscript_(v567, v294, &unk_2A1C94BA0, v224 + 1);
        v297 = MEMORY[0x29EDB9198];
        if (IsEmpty)
        {
          objc_msgSend_vectorWithCGRect_(MEMORY[0x29EDB9198], v295, v296, 0.0, 0.0, 0.0, 0.0);
        }

        else
        {
          objc_msgSend_extent(v241, v295, v296);
          objc_msgSend_vectorWithCGRect_(v297, v300, v301);
        }
        v298 = ;
        objc_msgSend_setObject_atIndexedSubscript_(v570, v299, v298, v224 + 1);

        goto LABEL_108;
      }

      if (!objc_msgSend_type(v204, v230, v231) || (v265 = objc_msgSend_type(v204, v263, v264), v265 == 1))
      {
        v266 = objc_msgSend_inputs(v575, v263, v264);
        v269 = objc_msgSend_name(v204, v267, v268);
        v237 = objc_msgSend_objectForKeyedSubscript_(v266, v270, v269);

        if (!v237)
        {
          v273 = objc_msgSend_name(v204, v271, v272);
          isEqualToString = objc_msgSend_isEqualToString_(v273, v274, @"kernelScale");

          if (isEqualToString)
          {
            v237 = objc_msgSend_scale(v575, v276, v277);
          }

          else
          {
            v302 = objc_msgSend_name(v204, v276, v277);
            v304 = objc_msgSend_isEqualToString_(v302, v303, @"emulate_sRGB");

            if (!v304)
            {
              v489 = MEMORY[0x29EDBA0F8];
              v490 = objc_msgSend_name(v204, v305, v306);
              v493 = objc_msgSend_ck(v575, v491, v492);
              v495 = objc_msgSend_stringWithFormat_(v489, v494, @"Missing parameter for input named %@ for kernel %@ returning empty image.", v490, v493);;
              v496 = v495;
              objc_msgSend_UTF8String(v496, v497, v498);

              v363 = uni_logger_api(v499);
              if (os_log_type_enabled(v363, OS_LOG_TYPE_ERROR))
              {
                sub_2956CED80();
              }

              goto LABEL_135;
            }

            v591[0] = 0;
            v237 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v305, v591, 1);
          }
        }

        if (objc_msgSend_type(v204, v271, v272))
        {
          v309 = objc_msgSend_type(v204, v307, v308);
          if (v309 != 1)
          {
            goto LABEL_138;
          }

          v312 = objc_msgSend_threadgroupMemoryDataSize(v204, v310, v311);
          v315 = objc_msgSend_arrayLength(v204, v313, v314);
          v318 = objc_msgSend_threadgroupMemoryAlignment(v204, v316, v317);
          v321 = objc_msgSend_threadgroupMemoryAlignment(v204, v319, v320);
          objc_opt_class();
          v322 = objc_opt_isKindOfClass();
          if (v322)
          {
            v325 = objc_msgSend_unsignedIntegerValue(v237, v323, v324);
            v328 = objc_msgSend_threadgroupMemoryAlignment(v204, v326, v327);
            v322 = objc_msgSend_threadgroupMemoryAlignment(v204, v329, v330);
            v331 = v325 + v328 - 1;
            v332 = -v322;
          }

          else
          {
            v331 = v318 + v315 * v312 - 1;
            v332 = -v321;
          }

          v337 = v331 & v332;
          v338 = uni_logger_render(v322);
          if (os_log_type_enabled(v338, OS_LOG_TYPE_INFO))
          {
            *v591 = 136315394;
            *&v591[4] = "threadgroup memory size = ";
            *&v591[12] = 2048;
            *&v591[14] = v337;
            _os_log_impl(&dword_295691000, v338, OS_LOG_TYPE_INFO, "%s %ld", v591, 0x16u);
          }

          v309 = objc_msgSend_dataWithLength_(MEMORY[0x29EDB8DF8], v339, v337);
          goto LABEL_105;
        }

        if (objc_msgSend_bufferDataType(v204, v307, v308) == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v309 = objc_msgSend__populateStruct_values_(v575, v335, v204, v237);
LABEL_105:
            v241 = v309;
LABEL_106:
            if (v241)
            {
              objc_msgSend_setObject_atIndexedSubscript_(v570, v336, v241, v224);
              objc_msgSend_setObject_atIndexedSubscript_(v567, v340, &unk_2A1C94BA0, v224);
LABEL_108:

              v202 = v571;
              v201 = v573;
              goto LABEL_109;
            }

LABEL_138:
            v377 = uni_logger_api(v309);
            if (os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
            {
              v523 = objc_msgSend_name(v204, v378, v379);
              v524 = v523;
              v527 = objc_msgSend_UTF8String(v524, v525, v526);
              sub_2956CEDC8(v527, v591, v377, v523);
            }

LABEL_140:

            v362 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v380, v381);

            goto LABEL_192;
          }

          objc_opt_class();
          v343 = objc_opt_isKindOfClass();
          if (v343)
          {
            v309 = v237;
            goto LABEL_105;
          }

          v377 = uni_logger_api(v343);
          if (!os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_140;
          }

          v530 = MEMORY[0x29EDBA0F8];
          v505 = objc_msgSend_name(v204, v528, v529);
          v507 = objc_msgSend_kernel(v575, v531, v532);
          v535 = objc_msgSend_ck(v507, v533, v534);
          v537 = objc_msgSend_stringWithFormat_(v530, v536, @"For argument %@ on kernel %@ we expect either NSData or a NSDictionary.", v505, v535);
          v538 = v537;
          v541 = objc_msgSend_UTF8String(v538, v539, v540);
          *v591 = 136315138;
          *&v591[4] = v541;
          _os_log_error_impl(&dword_295691000, v377, OS_LOG_TYPE_ERROR, "%s", v591, 0xCu);
        }

        else
        {
          v341 = objc_msgSend_bufferDataType(v204, v333, v334);
          v342 = isSupportedType(v341);
          if (v342)
          {
            v241 = v237;
            objc_opt_class();
            v309 = objc_opt_isKindOfClass();
            if ((v309 & 1) == 0)
            {
              objc_opt_class();
              v309 = objc_opt_isKindOfClass();
              if ((v309 & 1) == 0)
              {
                __assert_rtn("+[UniKernel generateCIImage:]", "UniKernel.m", 1983, "[object isKindOfClass:[NSData class]] || [object isKindOfClass:[NSNumber class]]");
              }
            }

            goto LABEL_106;
          }

          v377 = uni_logger_api(v342);
          if (!os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_140;
          }

          v502 = MEMORY[0x29EDBA0F8];
          v503 = objc_msgSend_bufferDataType(v204, v500, v501);
          v505 = MTLDataTypeAsString(v503, v504);
          v507 = objc_msgSend_stringWithFormat_(v502, v506, @"Don't know how to set type %@", v505);
          v508 = v507;
          v511 = objc_msgSend_UTF8String(v508, v509, v510);
          *v591 = 136315138;
          *&v591[4] = v511;
          _os_log_error_impl(&dword_295691000, v377, OS_LOG_TYPE_ERROR, "%s", v591, 0xCu);
        }

        goto LABEL_140;
      }

      v369 = uni_logger_api(v265);
      if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
      {
        sub_2956CED40();
      }
    }

    v368 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v382, v383);
    goto LABEL_144;
  }

  v363 = uni_logger_api(v221);
  if (os_log_type_enabled(v363, OS_LOG_TYPE_ERROR))
  {
    v512 = MEMORY[0x29EDBA0F8];
    v513 = objc_msgSend_name(v204, v364, v365);
    v516 = objc_msgSend_allKeys(v578, v514, v515);
    v518 = objc_msgSend_stringWithFormat_(v512, v517, @"Unable to find matching Core Image kernel parameter for name %@.Available names are %@", v513, v516);
    v519 = v518;
    v522 = objc_msgSend_UTF8String(v519, v520, v521);
    *v591 = 136315138;
    *&v591[4] = v522;
    _os_log_error_impl(&dword_295691000, v363, OS_LOG_TYPE_ERROR, "%s", v591, 0xCu);
  }

LABEL_135:

  v368 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v366, v367);
LABEL_144:
  v362 = v368;
LABEL_192:

LABEL_193:
  _Block_object_dispose(&v618, 8);

  _Block_object_dispose(&buf, 8);

  return v362;
}

- (void)_setRunInfoBasedOnCoreImage
{
  v4 = objc_msgSend_runInfo(self, a2, v2);
  if (v4)
  {
LABEL_2:

    return;
  }

  v59 = objc_msgSend_kernel(self, v5, v6);
  v9 = objc_msgSend_ck(v59, v7, v8);
  if (!v9)
  {
    v4 = v59;
    goto LABEL_2;
  }

  v12 = v9;
  v13 = objc_msgSend_kernel(self, v10, v11);
  v16 = objc_msgSend_mk(v13, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_kernel(self, v17, v18);
    v22 = objc_msgSend_ck(v19, v20, v21);
    objc_msgSend_outputGroupSize(v22, v23, v24);
    v26 = v25;
    v28 = v27;

    objc_msgSend__findOutputRect(self, v29, v30);
    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
    if (!CGRectIsNull(v63))
    {
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      if (!CGRectIsEmpty(v64))
      {
        v37 = objc_msgSend_kernel(self, v35, v36);
        v40 = objc_msgSend_mk(v37, v38, v39);

        v43 = objc_msgSend_threadExecutionWidth(v40, v41, v42);
        v46 = objc_msgSend_maxTotalThreadsPerThreadgroup(v40, v44, v45);
        v49 = v46 / objc_msgSend_threadExecutionWidth(v40, v47, v48);
        v50 = [UniRunInfo alloc];
        v61[0] = (width / v26);
        v61[1] = (height / v28);
        v61[2] = 1;
        v60[0] = v43;
        v60[1] = v49;
        v60[2] = 1;
        v52 = objc_msgSend_initWithGridSize_threadsPerThreadGroup_(v50, v51, v61, v60);
        objc_msgSend_setRunInfo_(self, v53, v52);

        v56 = objc_msgSend_runInfo(self, v54, v55);
        objc_msgSend_setCoreImageOutputExtent_(v56, v57, v58, x, y, width, height);
      }
    }
  }
}

- (id)outputImage:(id)image
{
  imageCopy = image;
  v7 = objc_msgSend_copy(self, v5, v6);
  if (!v7)
  {
    sub_2956CEF00();
  }

  v10 = v7;
  objc_msgSend__replace_sRGBTexturesIfNeeded(v7, v8, v9);
  objc_msgSend_setRunInfo_(v10, v11, imageCopy);
  objc_msgSend__setRunInfoBasedOnCoreImage(v10, v12, v13);
  v16 = objc_msgSend_outputImageArray(v10, v14, v15);
  if (!v16 || (v19 = v16, !objc_msgSend_count(v16, v17, v18)) || (objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    sub_2956CEED4();
  }

  v24 = objc_msgSend_ck(v10, v22, v23);
  if (v24 && (v25 = v24, v26 = objc_opt_class(), objc_msgSend_generateCIImage_(v26, v27, v10), v28 = objc_claimAutoreleasedReturnValue(), v25, v28))
  {
    v30 = objc_msgSend_imageWithCIImage_(UniImage, v29, v28);
    objc_msgSend_setKernel_(v30, v31, v10);
  }

  else
  {
    v33 = [UniImage alloc];
    v30 = objc_msgSend_initWithKernel_(v33, v34, v10);
    v28 = 0;
  }

  if (!v30)
  {
    sub_2956CEEA8();
  }

  v35 = objc_msgSend_objectAtIndexedSubscript_(v19, v32, 0);
  objc_msgSend_setTexture_(v30, v36, v35);

  v39 = objc_msgSend_texture(v30, v37, v38);
  if (!v39)
  {
    goto LABEL_20;
  }

  v42 = v39;
  v43 = objc_msgSend_texture(v30, v40, v41);
  if (objc_msgSend_conformsToProtocol_(v43, v44, &unk_2A1CA0A70))
  {
    goto LABEL_14;
  }

  v47 = objc_msgSend_texture(v30, v45, v46);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_20:
    sub_2956CEE7C();
  }

LABEL_14:

  return v30;
}

- (void)setValues:(id)values
{
  valuesCopy = values;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(valuesCopy, v5, &v22, v21, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v7, v11);
        if (v13)
        {
          if (objc_msgSend_isEqualToString_(v11, v12, @"_renderContext"))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setContext_(self, v14, v13);
              goto LABEL_17;
            }
          }

          if (objc_msgSend_isEqualToString_(v11, v14, @"_kernelScale"))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setScale_(self, v15, v13);
              goto LABEL_17;
            }
          }

          v17 = objc_msgSend_inputs(self, v15, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v13, v11);
        }

        else
        {
          v17 = uni_logger_api(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_2956CEF2C(v19, v11, &v20, v17);
          }
        }

LABEL_17:
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(valuesCopy, v7, &v22, v21, 16);
    }

    while (v8);
  }
}

- (id)imageByApplyingParameters:(id)parameters runInfo:(id)info
{
  infoCopy = info;
  objc_msgSend_setValues_(self, v7, parameters);
  v9 = objc_msgSend_outputImage_(self, v8, infoCopy);

  return v9;
}

- (id)imageByApplyingParameters:(id)parameters extent:(id)extent
{
  extentCopy = extent;
  objc_msgSend_setValues_(self, v7, parameters);
  v9 = objc_msgSend_outputImageOfSize_(self, v8, extentCopy);

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p ", v4, self);
  v9 = objc_msgSend_mk(self, v7, v8);

  v12 = 0x29EDBA000uLL;
  selfCopy = self;
  if (v9)
  {
    v13 = MEMORY[0x29EDBA0F8];
    v14 = objc_msgSend_mk(self, v10, v11);
    v17 = objc_msgSend_label(v14, v15, v16);
    v19 = objc_msgSend_stringWithFormat_(v13, v18, @"MTL pipeline = %@", v17);
    objc_msgSend_appendString_(v6, v20, v19);

    self = selfCopy;
  }

  v21 = objc_msgSend_kernel(self, v10, v11);
  v24 = objc_msgSend_constants(v21, v22, v23);

  if (v24)
  {
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v25, @"\n\t<constants = \n\t%@\n\t>", v24);
    objc_msgSend_appendString_(v6, v27, v26);
  }

  v80 = v24;
  objc_msgSend_appendString_(v6, v25, @"\n\t<inputs = \n");
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = self->inputs;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v84, v83, 16);
  if (v29)
  {
    v31 = v29;
    v32 = *v85;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v85 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v84 + 1) + 8 * i);
        v35 = objc_msgSend_objectForKeyedSubscript_(self->inputs, v30, v34);
        v37 = objc_msgSend_stringWithFormat_(*(v12 + 248), v36, @"\t\t%@ = ", v34);
        objc_msgSend_appendString_(v6, v38, v37);

        if (objc_msgSend_conformsToProtocol_(v35, v39, &unk_2A1CA0A70))
        {
          v40 = v35;
        }

        else
        {
          v40 = 0;
        }

        v42 = v35;
        if (v40)
        {
          if (!v35)
          {
            goto LABEL_28;
          }

LABEL_15:
          if (v42 && objc_msgSend_conformsToProtocol_(v42, v41, &unk_2A1CA0A70))
          {
            v43 = shortTextureDescription(v42);
            objc_msgSend_appendString_(v6, v44, v43);

            self = selfCopy;
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = objc_msgSend_kernel(v35, v41, v46);
          v50 = objc_msgSend_mk(v47, v48, v49);
          if (v50)
          {
            v53 = v50;
            v54 = objc_msgSend_mk(v47, v51, v52);
            v57 = objc_msgSend_label(v54, v55, v56);

            if (v57)
            {
              v58 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v51, @"(%@) ", v57);
              objc_msgSend_appendString_(v6, v59, v58);
            }
          }

          v42 = objc_msgSend_texture(v35, v51, v52);

          self = selfCopy;
          v12 = 0x29EDBA000;
          if (!v35)
          {
LABEL_28:
            objc_msgSend_appendString_(v6, v41, @"nil\n");
            goto LABEL_31;
          }

          goto LABEL_15;
        }

        v42 = 0;
        if (!v35)
        {
          goto LABEL_28;
        }

LABEL_25:
        v60 = objc_msgSend__mtlTextureForImage_(UniKernel, v41, v35);
        v63 = v60;
        if (v60 && objc_msgSend_conformsToProtocol_(v60, v61, &unk_2A1CA0A70))
        {
          v64 = shortTextureDescription(v63);
        }

        else
        {
          v64 = objc_msgSend_description(v35, v61, v62);
        }

        v66 = v64;
        objc_msgSend_appendString_(v6, v65, v64);

        v12 = 0x29EDBA000uLL;
LABEL_31:
        objc_msgSend_appendString_(v6, v45, @"\n");
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v84, v83, 16);
    }

    while (v31);
  }

  selfCopy2 = self;
  v68 = *(v12 + 248);
  v73 = objc_msgSend_runInfo(selfCopy2, v69, v70);
  if (v73)
  {
    v74 = objc_msgSend_runInfo(selfCopy2, v71, v72);
    objc_msgSend_stringWithFormat_(v68, v75, @"\trunInfo = %@\n", v74);
  }

  else
  {
    v74 = @"(Unspecified)";
    objc_msgSend_stringWithFormat_(v68, v71, @"\trunInfo = %@\n", @"(Unspecified)");
  }
  v76 = ;
  objc_msgSend_appendString_(v6, v77, v76);

  if (v73)
  {
  }

  objc_msgSend_appendString_(v6, v78, @"\t>\n");

  return v6;
}

@end