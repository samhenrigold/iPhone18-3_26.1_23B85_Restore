@interface VFXWorldLoader
+ (id)loader;
+ (void)transferWorld:(id)world to:(id)to;
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
- (NSUUID)documentUUID;
- (VFXWorldLoader)init;
- (id)_loadURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error;
- (id)loadNonNativeFormatAt:(id)at options:(id)options statusHandler:(id)handler error:(id *)error;
- (id)loadWorldDescriptionAt:(id)at options:(id)options compressed:(BOOL)compressed statusHandler:(id)handler error:(id *)error;
- (id)loadWorldDescriptionFromData:(id)data options:(id)options compressed:(BOOL)compressed sourceURL:(id)l statusHandler:(id)handler error:(id *)error;
- (id)loadWorldFromData:(id)data options:(id)options statusHandler:(id)handler error:(id *)error;
- (id)loadWorldFromURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error;
- (void)dealloc;
@end

@implementation VFXWorldLoader

- (VFXWorldLoader)init
{
  v3.receiver = self;
  v3.super_class = VFXWorldLoader;
  return [(VFXWorldLoader *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXWorldLoader;
  [(VFXWorldLoader *)&v3 dealloc];
}

+ (id)loader
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)loadWorldFromURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error
{
  v11 = sub_1AF0D5194(self, a2);
  v12 = os_signpost_id_generate(v11);
  v14 = sub_1AF0D5194(v12, v13);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v14;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoadWorld", &unk_1AFF70A1D, buf, 2u);
    }
  }

  URL_options_statusHandler_error = objc_msgSend__loadURL_options_statusHandler_error_(self, v15, l, options, handler, error);
  v19 = sub_1AF0D5194(URL_options_statusHandler_error, v18);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v20, OS_SIGNPOST_INTERVAL_END, v12, "LoadWorld", &unk_1AFF70A1D, v22, 2u);
    }
  }

  return URL_options_statusHandler_error;
}

- (id)_loadURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error
{
  if (options)
  {
    v11 = objc_msgSend_mutableCopy(options, a2, l);
  }

  else
  {
    v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, l);
  }

  v14 = v11;
  v15 = objc_msgSend_pathExtension(l, v12, v13);
  v18 = objc_msgSend_lowercaseString(v15, v16, v17);
  if ((objc_msgSend_isEqualToString_(v18, v19, @"vfxproj") & 1) != 0 || objc_msgSend_isEqualToString_(v18, v20, @"vfx"))
  {
    objc_msgSend_begin(VFXTransaction, v20, v21);
    v23 = objc_msgSend_URLByAppendingPathComponent_(l, v22, @"world.plist");
    WorldDescriptionAt_options_compressed_statusHandler_error = objc_msgSend_loadWorldDescriptionAt_options_compressed_statusHandler_error_(self, v24, v23, v14, 0, handler, error);
    if (!WorldDescriptionAt_options_compressed_statusHandler_error)
    {
      v28 = sub_1AF0D5194(0, v25);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_DEFAULT, "Warning: loading VFX1 file format", buf, 2u);
      }
    }

    v29 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v25, v26);
    v31 = objc_msgSend_objectForKeyedSubscript_(options, v30, @"VFXWorldLoaderDisableVFXCoreSupport");
    v36 = objc_msgSend_BOOLValue(v31, v32, v33);
    if ((v36 & 1) == 0 && (objc_msgSend_loadCoreEntityManagerFromURL_options_infoOut_error_(WorldDescriptionAt_options_compressed_statusHandler_error, v34, l, v14, v29, error) & 1) == 0)
    {
      goto LABEL_22;
    }

    v37 = objc_msgSend_defaultRenderGraph(WorldDescriptionAt_options_compressed_statusHandler_error, v34, v35);
    v39 = objc_msgSend_objectForKeyedSubscript_(v29, v38, @"serializationContext");
    objc_msgSend_finishLoadingWithSerializationContext_(v37, v40, v39);
    v43 = objc_msgSend_assets(WorldDescriptionAt_options_compressed_statusHandler_error, v41, v42);
    v46 = objc_msgSend_rootNode(v43, v44, v45);
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = sub_1AF34F4C4;
    v80[3] = &unk_1E7A7F3C0;
    v80[4] = v29;
    objc_msgSend_enumerateHierarchyUsingBlock_(v46, v47, v80);
    if (v36)
    {
      objc_msgSend_commit(VFXTransaction, v48, v49);
LABEL_13:
      v51 = objc_msgSend_objectForKeyedSubscript_(v29, v50, @"version");
      self->_version = objc_msgSend_intValue(v51, v52, v53);
      self->_documentUUID = objc_msgSend_objectForKeyedSubscript_(v29, v54, @"documentUUID");
      self->_warnings = objc_msgSend_objectForKeyedSubscript_(v29, v55, @"warnings");
      v57 = objc_msgSend_objectForKeyedSubscript_(v29, v56, @"precompiled");
      v60 = objc_msgSend_BOOLValue(v57, v58, v59);
      self->_precompiled = v60;
      if (!error || !*error)
      {
        return WorldDescriptionAt_options_compressed_statusHandler_error;
      }

      v62 = sub_1AF0D5194(v60, v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFA20C(error, v62);
      }

      return 0;
    }

    objc_msgSend_resolveVFXCoreAndTagReferences(WorldDescriptionAt_options_compressed_statusHandler_error, v48, v49);
    if (objc_msgSend_migrateCoreEntityManagerWithInfo_error_(WorldDescriptionAt_options_compressed_statusHandler_error, v63, v29, error))
    {
      objc_msgSend_replicateToRuntimeAndStartReplicationWithOptions_(WorldDescriptionAt_options_compressed_statusHandler_error, v34, options);
      v65 = objc_msgSend_objectForKeyedSubscript_(options, v64, @"VFXWorldLoaderCompileGraphsCallback");
      if (v65)
      {
        (*(v65 + 16))(v65, WorldDescriptionAt_options_compressed_statusHandler_error);
      }

      v67 = objc_msgSend_initializeCoreEntityManagerWithInfo_error_(WorldDescriptionAt_options_compressed_statusHandler_error, v66, v29, error);
      objc_msgSend_commit(VFXTransaction, v68, v69);
      if (v67)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_22:
      objc_msgSend_commit(VFXTransaction, v34, v35);
    }

    return 0;
  }

  v70 = objc_msgSend_valueForKey_(options, v20, @"kSceneSourceFormat");
  if (objc_msgSend_isEqualToString_(v18, v71, @"vfx-world"))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v70, v72, @"vfx-world");
  }

  if (objc_msgSend_isEqualToString_(v18, v72, @"vfxz-world"))
  {
    LOBYTE(v75) = 1;
  }

  else
  {
    v75 = objc_msgSend_isEqualToString_(v70, v74, @"vfxz-world");
    if (((isEqualToString | v75) & 1) == 0)
    {
      if (!objc_msgSend_isEqualToString_(v18, v74, @"plist"))
      {
        goto LABEL_35;
      }

      LOBYTE(v75) = 0;
    }
  }

  v76 = objc_msgSend_loadWorldDescriptionAt_options_compressed_statusHandler_error_(self, v74, l, options, v75 & 1, handler, error);
  if (v76)
  {
    WorldDescriptionAt_options_compressed_statusHandler_error = v76;
    objc_msgSend_resolveVFXCoreAndTagReferences(v76, v77, v78);
    return WorldDescriptionAt_options_compressed_statusHandler_error;
  }

LABEL_35:

  return MEMORY[0x1EEE66B58](self, sel_loadNonNativeFormatAt_options_statusHandler_error_, l);
}

- (id)loadWorldFromData:(id)data options:(id)options statusHandler:(id)handler error:(id *)error
{
  v11 = sub_1AF0D5194(self, a2);
  v12 = os_signpost_id_generate(v11);
  v14 = sub_1AF0D5194(v12, v13);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v14;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoadWorld", &unk_1AFF70A1D, buf, 2u);
    }
  }

  WorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error = objc_msgSend_loadWorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error_(self, v15, data, options, 0, 0, handler, error);
  v19 = sub_1AF0D5194(WorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error, v18);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v20, OS_SIGNPOST_INTERVAL_END, v12, "LoadWorld", &unk_1AFF70A1D, v22, 2u);
    }
  }

  return WorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error;
}

- (id)loadNonNativeFormatAt:(id)at options:(id)options statusHandler:(id)handler error:(id *)error
{
  v9 = [VFXWorld alloc];
  v11 = objc_msgSend_initWithOptions_(v9, v10, options);
  v12 = MEMORY[0x1E6974B48];
  v15 = objc_msgSend_pathExtension(at, v13, v14);
  LODWORD(v12) = objc_msgSend_canImportFileExtension_(v12, v16, v15);
  objc_msgSend_begin(VFXTransaction, v17, v18);
  objc_msgSend_setImmediateMode_(VFXTransaction, v19, 1);
  if (v12)
  {
    v21 = sub_1AF2ED7AC(v11, at, options);
    objc_msgSend_commit(VFXTransaction, v22, v23);
    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v33 = 0;
    v24 = objc_msgSend_loadSCN_options_error_(v11, v20, at, options, &v33);
    if (!v33)
    {
      objc_msgSend_commit(VFXTransaction, v25, v26);
LABEL_12:
      sub_1AF1D7C54(v11, options, 0, -1);
      v30 = v11;
      goto LABEL_13;
    }

    if (error)
    {
      *error = v33;
    }

    v27 = sub_1AF0D5194(v24, v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA288(at, &v33, v27);
    }

    objc_msgSend_commit(VFXTransaction, v28, v29);
  }

  v30 = 0;
LABEL_13:
  v31 = v11;
  return v30;
}

- (id)loadWorldDescriptionAt:(id)at options:(id)options compressed:(BOOL)compressed statusHandler:(id)handler error:(id *)error
{
  compressedCopy = compressed;
  v13 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], a2, at, 0, error);
  if (v13)
  {

    return objc_msgSend_loadWorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error_(self, v14, v13, options, compressedCopy, at, handler, error);
  }

  else
  {
    if (handler)
    {
      v17 = 1;
      if (error)
      {
        v16 = *error;
      }

      else
      {
        v16 = 0;
      }

      (*(handler + 2))(handler, -1, v16, &v17, 1.0);
    }

    return 0;
  }
}

- (id)loadWorldDescriptionFromData:(id)data options:(id)options compressed:(BOOL)compressed sourceURL:(id)l statusHandler:(id)handler error:(id *)error
{
  compressedCopy = compressed;
  v45[2] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    v13 = 1;
    if (!compressed)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = objc_msgSend_vfx_uncompressedDataUsingCompressionAlgorithm_(data, a2, 517);
    data = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  v13 = sub_1AF1D8E6C(l, options);
  if (compressedCopy)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = [VFXKeyedUnarchiver alloc];
  v17 = objc_msgSend_initForReadingWithData_secure_(v15, v16, data, v13);
  v19 = v17;
  if (!v17)
  {
    return 0;
  }

  objc_msgSend_setDelegate_(v17, v18, self);
  context = objc_autoreleasePoolPush();
  if (l)
  {
    v21 = sub_1AF1D649C(options, l);
    objc_msgSend_setContext_(v19, v22, v21);
    objc_msgSend_setDocumentURL_(v19, v23, l);
    v44 = v21;
    objc_msgSend_setObject_forKeyedSubscript_(v21, v24, l, @"url");
  }

  else
  {
    v44 = 0;
  }

  v25 = objc_msgSend_valueForKey_(VFXTransaction, v20, @"VFXWorldLoadingContextKey");
  objc_msgSend_setValue_forKey_(VFXTransaction, v26, v44, @"VFXWorldLoadingContextKey");
  v27 = MEMORY[0x1E695DFD8];
  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, v45, 2);
  v31 = objc_msgSend_setWithArray_(v27, v30, v29);
  v33 = objc_msgSend_decodeObjectOfClasses_forKey_(v19, v32, v31, @"root");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = objc_alloc_init(VFXWorld);
    v37 = objc_msgSend_rootNode(v34, v35, v36);
    objc_msgSend_addChildNode_(v37, v38, v33);
  }

  else
  {
    v34 = v33;
    v40 = v33;
  }

  if (v34)
  {
    sub_1AF1D7C54(v34, options, 0, -1);
  }

  objc_msgSend_setValue_forKey_(VFXTransaction, v39, v25, @"VFXWorldLoadingContextKey");

  objc_msgSend_finishDecoding(v19, v41, v42);
  if (v44)
  {
    CFRelease(v44);
  }

  objc_autoreleasePoolPop(context);
  return v34;
}

- (NSUUID)documentUUID
{
  result = self->_documentUUID;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x1E696AFB0]);
    self->_documentUUID = result;
  }

  return result;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = sub_1AF36FBF4(self, a2);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(classes, v8, &v35, v40, 16);
  if (!v9)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v36;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(classes);
      }

      v14 = objc_msgSend_classNamed_(v7, v10, *(*(&v35 + 1) + 8 * i));
      if (v14)
      {
        v16 = v14;
        if (!objc_msgSend_requiresSecureCoding(unarchiver, v10, v15))
        {
          return v16;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v19 = objc_msgSend_allowedClasses(unarchiver, v17, v18);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v31, v39, 16);
        if (v21)
        {
          v22 = v21;
          v23 = *v32;
          v30 = v11;
LABEL_10:
          unarchiverCopy = unarchiver;
          classesCopy = classes;
          v26 = v7;
          v27 = v12;
          v28 = 0;
          while (1)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v19);
            }

            if (objc_msgSend_isSubclassOfClass_(v16, v10, *(*(&v31 + 1) + 8 * v28)))
            {
              return v16;
            }

            if (v22 == ++v28)
            {
              v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v10, &v31, v39, 16);
              v12 = v27;
              v7 = v26;
              classes = classesCopy;
              unarchiver = unarchiverCopy;
              v11 = v30;
              if (v22)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }
      }
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(classes, v10, &v35, v40, 16);
    v16 = 0;
    if (v11)
    {
      continue;
    }

    return v16;
  }
}

+ (void)transferWorld:(id)world to:(id)to
{
  objc_msgSend__mergeWorld_parentNode_parentAssetNode_remapEntities_(to, a2, world, 0, 0, 0);
  v9 = objc_msgSend_identifier(world, v6, v7);

  objc_msgSend_setIdentifier_(to, v8, v9);
}

@end