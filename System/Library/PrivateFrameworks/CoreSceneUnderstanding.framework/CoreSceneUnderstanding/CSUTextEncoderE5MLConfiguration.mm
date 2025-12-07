@interface CSUTextEncoderE5MLConfiguration
+ (id)TextEncoderE5MLConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisions;
+ (id)getConfigurationForRevision_v1_2_EnglishWithError:(id *)error;
+ (id)getConfigurationForRevision_v7_0_Tier0WithError:(id *)error;
+ (id)getConfigurationFromModelCatalogForRevision_ADM_v10Revision_v1WithError:(id *)error;
+ (id)getConfigurationFromModelCatalogForRevision_v1_2_EnglishWithError:(id *)error;
+ (id)getConfigurationFromModelCatalogForRevision_v4_1_Tier0WithError:(id *)error;
+ (id)overrideWithSideLoadedPathForTokenEmbeddingModel:(id)model TextEmbeddingModel:(id)embeddingModel;
- (BOOL)isTextEncoderE5MLPresentForTextEncoderVersion:(id)version forTextEncoderName:(id)name;
- (id)initTextEncoderV1ConfigurationForRevision:(int64_t)revision vocabularyModelPath:(id)path tokenEmbeddingNetworkPath:(id)networkPath textEncoderNetworkPath:(id)encoderNetworkPath encoderParams:(id)params;
@end

@implementation CSUTextEncoderE5MLConfiguration

- (BOOL)isTextEncoderE5MLPresentForTextEncoderVersion:(id)version forTextEncoderName:(id)name
{
  versionCopy = version;
  nameCopy = name;
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"SystemSearch/%@/", v14, v15, versionCopy);
  v22 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v17, nameCopy, @"mlmodelc", v16);
  if (v22)
  {
    v23 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19, v20, v21);
    v27 = objc_msgSend_fileExistsAtPath_(v23, v24, v22, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)getConfigurationFromModelCatalogForRevision_v1_2_EnglishWithError:(id *)error
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"t5_base", @"model", @"SystemSearch/v1.2.0/");
  if (v14)
  {
    v15 = [self alloc];
    inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v15, v16, 2, v14, @"md1_e5_3outputs_token_embed_fp32inOut.mlmodelc", @"md1_e5_3outputs_text_model_fp16outs_only.mlmodelc", &unk_1F20DF058);
  }

  else if (error)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *error = inited = 0;
  }

  else
  {
    inited = 0;
  }

  return inited;
}

+ (id)getConfigurationForRevision_v1_2_EnglishWithError:(id *)error
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"t5_base", @"model", @"SystemSearch/v1.2.0/");
  if (v14)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v12, @"SystemSearch_v1.2.0_ac4rja6ikq-15000_token-embed-en", @"mlmodelc", @"SystemSearch/v1.2.0/");
    if (v17)
    {
      v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v15, @"SystemSearch_v1.2.0_ac4rja6ikq-15000_text-encoder-en", @"mlmodelc", @"SystemSearch/v1.2.0/");
      if (v20)
      {
        v21 = [self alloc];
        inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v21, v22, 2, v14, v17, v20, &unk_1F20DF080);
      }

      else if (error)
      {
        objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v18, @"text embedding model file not found in bundle!", 0, v19);
        *error = inited = 0;
      }

      else
      {
        inited = 0;
      }
    }

    else if (error)
    {
      objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v15, @"token embedding model file not found in bundle!", 0, v16);
      *error = inited = 0;
    }

    else
    {
      inited = 0;
    }
  }

  else if (error)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *error = inited = 0;
  }

  else
  {
    inited = 0;
  }

  return inited;
}

+ (id)overrideWithSideLoadedPathForTokenEmbeddingModel:(id)model TextEmbeddingModel:(id)embeddingModel
{
  modelCopy = model;
  embeddingModelCopy = embeddingModel;
  v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8, v9, v10);
  v15 = objc_msgSend_stringByAppendingPathComponent_(@"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", v12, modelCopy, v13, v14);
  if (objc_msgSend_fileExistsAtPath_(v11, v16, v15, v17, v18))
  {
    v22 = objc_msgSend_stringByAppendingPathComponent_(@"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", v19, embeddingModelCopy, v20, v21);
    if (objc_msgSend_fileExistsAtPath_(v11, v23, v22, v24, v25))
    {
      v28 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v26, @"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", 1, v27);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)getConfigurationFromModelCatalogForRevision_v4_1_Tier0WithError:(id *)error
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"omnie_t0_50k_mmap", @"model", @"SystemSearch/v5.0.0/");
  if (v14)
  {
    v15 = [self alloc];
    inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v15, v16, 5, v14, @"token_model_md4_mubb.mlmodelc", @"text_model_md4_mubb.mlmodelc", &unk_1F20DF0A8);
  }

  else if (error)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *error = inited = 0;
  }

  else
  {
    inited = 0;
  }

  return inited;
}

+ (id)getConfigurationForRevision_v7_0_Tier0WithError:(id *)error
{
  v43[11] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"spm_omnie_md7_v02_100k_mmap", @"model", @"SystemSearch/v7.0.0/");
  if (v14)
  {
    v15 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v12, @"token_md7_6bit", @"mlmodelc", @"SystemSearch/v7.0.0/");
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"file://%@", v17, v18, v15);

    if (v19)
    {
      v25 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v20, @"text_md7_6bit_ctx_512_77", @"mlmodelc", @"SystemSearch/v7.0.0/");
      if (v25)
      {
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"file://%@", v23, v24, v25);

        v42[0] = @"contextLength";
        v42[1] = @"maxSeqLen";
        v43[0] = &unk_1F20DEC80;
        v43[1] = &unk_1F20DEC98;
        v42[2] = @"tokenEmbedLen";
        v42[3] = @"numCustomTokens";
        v43[2] = &unk_1F20DECE0;
        v43[3] = &unk_1F20DECB0;
        v42[4] = @"text_embed_shape";
        v42[5] = @"text_embed_width";
        v43[4] = &unk_1F20DEEA8;
        v43[5] = &unk_1F20DEC98;
        v42[6] = @"text_embed_height";
        v42[7] = @"usePrecompiledBundleForMacOS";
        v43[6] = &unk_1F20DECC8;
        v43[7] = MEMORY[0x1E695E110];
        v43[8] = @"main_ctx_77";
        v42[8] = @"e5function";
        v42[9] = @"e5functionsAvailable";
        v40[0] = &unk_1F20DEC98;
        v40[1] = &unk_1F20DEC80;
        v41[0] = @"main_ctx_512";
        v41[1] = @"main_ctx_77";
        v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v41, v40, 2);
        v43[9] = v28;
        v42[10] = @"default_compute_units";
        v32 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, 0, v30, v31);
        v43[10] = v32;
        v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, v43, v42, 11);

        v35 = [self alloc];
        inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v35, v36, 7, v14, v19, v26, v34);

LABEL_13:
        goto LABEL_14;
      }

      if (error)
      {
        v38 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v22, @"text embedding model file not found in bundle!", 0, v24);
        goto LABEL_11;
      }
    }

    else if (error)
    {
      v38 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v20, @"token embedding model file not found in bundle!", 0, v21);
LABEL_11:
      inited = 0;
      *error = v38;
      goto LABEL_13;
    }

    inited = 0;
    goto LABEL_13;
  }

  if (error)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *error = inited = 0;
  }

  else
  {
    inited = 0;
  }

LABEL_14:

  return inited;
}

+ (id)getConfigurationFromModelCatalogForRevision_ADM_v10Revision_v1WithError:(id *)error
{
  v29[11] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"spm_omnie_md6_v01_100k_mmap", @"model", @"VisualGeneration/v10-revision1/");
  if (v14)
  {
    v28[0] = @"contextLength";
    v28[1] = @"maxSeqLen";
    v29[0] = &unk_1F20DECF8;
    v29[1] = &unk_1F20DECF8;
    v28[2] = @"tokenEmbedLen";
    v28[3] = @"numCustomTokens";
    v29[2] = &unk_1F20DECE0;
    v29[3] = &unk_1F20DECB0;
    v28[4] = @"text_embed_shape";
    v28[5] = @"text_embed_width";
    v29[4] = &unk_1F20DEEC0;
    v29[5] = &unk_1F20DEC98;
    v28[6] = @"text_embed_height";
    v28[7] = @"usePrecompiledBundleForMacOS";
    v29[6] = &unk_1F20DECC8;
    v29[7] = MEMORY[0x1E695E118];
    v29[8] = @"main_ctx_128";
    v28[8] = @"e5function";
    v28[9] = @"e5functionsAvailable";
    v26[0] = &unk_1F20DECF8;
    v26[1] = &unk_1F20DEC80;
    v27[0] = @"main_ctx_128";
    v27[1] = @"main_ctx_77";
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v27, v26, 2);
    v29[9] = v15;
    v28[10] = @"default_compute_units";
    v19 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, 0, v17, v18);
    v29[10] = v19;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v29, v28, 11);

    v22 = [self alloc];
    inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v22, v23, 8, v14, @"token_ADM_md6.mlmodelc", @"text_ADM_md6_ctx_128_77.mlmodelc", v21);
  }

  else if (error)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *error = inited = 0;
  }

  else
  {
    inited = 0;
  }

  return inited;
}

+ (id)TextEncoderE5MLConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v8 = objc_msgSend__resolvedRevision_(self, a2, revision, error, v4);
  if (v8 > 6)
  {
    if (v8 == 7)
    {
      v12 = objc_msgSend_getConfigurationForRevision_v7_0_Tier0WithError_(self, v9, error, v10, v11);
    }

    else
    {
      if (v8 != 8)
      {
LABEL_12:
        if (error)
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, revision, v10, v11);
          v19 = objc_msgSend_stringWithFormat_(v14, v16, @"Unsupported TextEncoderE5ML revision %@", v17, v18, v15);
          *error = objc_msgSend_errorForUnsupportedRevision_(CSUError, v20, v19, v21, v22);
        }

        v12 = 0;

        return v12;
      }

      v12 = objc_msgSend_getConfigurationFromModelCatalogForRevision_ADM_v10Revision_v1WithError_(self, v9, error, v10, v11);
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 5)
      {
        v12 = objc_msgSend_getConfigurationFromModelCatalogForRevision_v4_1_Tier0WithError_(self, v9, error, v10, v11);

        return v12;
      }

      goto LABEL_12;
    }

    v12 = objc_msgSend_getConfigurationFromModelCatalogForRevision_v1_2_EnglishWithError_(self, v9, error, v10, v11);
  }

  return v12;
}

- (id)initTextEncoderV1ConfigurationForRevision:(int64_t)revision vocabularyModelPath:(id)path tokenEmbeddingNetworkPath:(id)networkPath textEncoderNetworkPath:(id)encoderNetworkPath encoderParams:(id)params
{
  v221 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  networkPathCopy = networkPath;
  encoderNetworkPathCopy = encoderNetworkPath;
  paramsCopy = params;
  v215.receiver = self;
  v215.super_class = CSUTextEncoderE5MLConfiguration;
  v208 = [(CSUTextEncoderE5MLConfiguration *)&v215 init];
  if (v208)
  {
    *(v208 + 6) = revision;
    v16 = objc_msgSend_copy(pathCopy, v12, v13, v14, v15);
    v17 = *(v208 + 7);
    *(v208 + 7) = v16;

    v21 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v18, @"contextLength", v19, v20);
    *(v208 + 2) = objc_msgSend_unsignedLongValue(v21, v22, v23, v24, v25);

    v29 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v26, @"maxSeqLen", v27, v28);
    *(v208 + 12) = objc_msgSend_unsignedLongValue(v29, v30, v31, v32, v33);

    *(v208 + 5) = 257;
    v34 = *(v208 + 20);
    *(v208 + 20) = @"text_ids";

    v35 = *(v208 + 8);
    *(v208 + 8) = 0;

    v40 = objc_msgSend_copy(networkPathCopy, v36, v37, v38, v39);
    v41 = *(v208 + 9);
    *(v208 + 9) = v40;

    v42 = *(v208 + 10);
    *(v208 + 10) = 0;

    v47 = objc_msgSend_copy(encoderNetworkPathCopy, v43, v44, v45, v46);
    v48 = *(v208 + 11);
    *(v208 + 11) = v47;

    v49 = objc_opt_class();
    obj = objc_msgSend_overrideWithSideLoadedPathForTokenEmbeddingModel_TextEmbeddingModel_(v49, v50, *(v208 + 9), *(v208 + 11), v51);
    objc_storeStrong(v208 + 10, obj);
    objc_storeStrong(v208 + 8, obj);
    v53 = v208;
    *(v208 + 8) = 0;
    if (obj)
    {
      v54 = sub_1AC090E50(v52);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v59 = objc_msgSend_absoluteString(obj, v55, v56, v57, v58);
        *buf = 138412290;
        v220 = v59;
        _os_log_impl(&dword_1AC05D000, v54, OS_LOG_TYPE_INFO, "Models side loaded from %@", buf, 0xCu);
      }

      v53 = v208;
      *(v208 + 8) = 1;
    }

    v60 = v53[21];
    v53[21] = @"token_embed";

    v64 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v61, @"tokenEmbedLen", v62, v63);
    *(v208 + 13) = objc_msgSend_unsignedLongValue(v64, v65, v66, v67, v68);

    v72 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v69, @"numCustomTokens", v70, v71);
    *(v208 + 14) = objc_msgSend_unsignedLongValue(v72, v73, v74, v75, v76);

    v80 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v77, @"usePrecompiledBundleForMacOS", v78, v79);
    *(v208 + 9) = objc_msgSend_BOOLValue(v80, v81, v82, v83, v84);

    v85 = objc_opt_new();
    v86 = *(v208 + 17);
    *(v208 + 17) = v85;

    v90 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v87, @"text_embed_shape", v88, v89);
    objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 17), v91, v90, @"text_embed", v92);

    v93 = objc_opt_new();
    v94 = *(v208 + 18);
    *(v208 + 18) = v93;

    v98 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v95, @"text_embed_width", v96, v97);
    objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 18), v99, v98, @"text_embed", v100);

    v101 = objc_opt_new();
    v102 = *(v208 + 19);
    *(v208 + 19) = v101;

    v106 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v103, @"text_embed_height", v104, v105);
    objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 19), v107, v106, @"text_embed", v108);

    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v207 = *(v208 + 3);
    v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v109, &v211, v218, 16);
    if (v113)
    {
      v209 = *v212;
      do
      {
        for (i = 0; i != v113; ++i)
        {
          if (*v212 != v209)
          {
            objc_enumerationMutation(v207);
          }

          v115 = *(*(&v211 + 1) + 8 * i);
          v116 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v110, @"%@_shape", v111, v112, v115);
          v123 = objc_msgSend_objectForKey_(paramsCopy, v117, v116, v118, v119);
          if (!v123)
          {
            goto LABEL_10;
          }

          v124 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v120, @"%@_width", v121, v122, v115);
          v131 = objc_msgSend_objectForKey_(paramsCopy, v125, v124, v126, v127);
          if (!v131)
          {

            goto LABEL_9;
          }

          v132 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v128, @"%@_height", v129, v130, v115);
          v136 = objc_msgSend_objectForKey_(paramsCopy, v133, v132, v134, v135);
          v137 = v136 == 0;

          if (!v137)
          {
            v138 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v110, @"%@_shape", v111, v112, v115);
            v142 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v139, v138, v140, v141);
            objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 17), v143, v142, v115, v144);

            v148 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v145, @"%@_width", v146, v147, v115);
            v152 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v149, v148, v150, v151);
            objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 18), v153, v152, v115, v154);

            v116 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v155, @"%@_height", v156, v157, v115);
            v123 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v158, v116, v159, v160);
            objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 19), v161, v123, v115, v162);
LABEL_9:

LABEL_10:
            continue;
          }
        }

        v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v110, &v211, v218, 16);
      }

      while (v113);
    }

    v163 = *(v208 + 22);
    *(v208 + 22) = @"token_embed";

    v164 = *(v208 + 23);
    *(v208 + 23) = @"indices";

    v165 = *(v208 + 24);
    *(v208 + 24) = @"text_embed";

    v166 = *(v208 + 25);
    *(v208 + 25) = @"input_tranpose";

    v170 = objc_msgSend_objectForKey_(paramsCopy, v167, @"e5function", v168, v169);
    v171 = v170 == 0;

    if (v171)
    {
      *(v208 + 4) = @"main";
    }

    else
    {
      v175 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v172, @"e5function", v173, v174);
      *(v208 + 4) = v175;
    }

    v176 = objc_msgSend_objectForKey_(paramsCopy, v172, @"e5functionsAvailable", v173, v174);
    v177 = v176 == 0;

    if (v177)
    {
      v182 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v178, *(v208 + 12), v179, v180);
      v183 = *(v208 + 4);
      v216 = v182;
      v217 = v183;
      v185 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v184, &v217, &v216, 1);
      *(v208 + 5) = v185;

      v181 = v182;
    }

    else
    {
      v181 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v178, @"e5functionsAvailable", v179, v180);
      *(v208 + 5) = v181;
    }

    v189 = objc_msgSend_objectForKey_(paramsCopy, v186, @"default_compute_units", v187, v188);
    v190 = v189 == 0;

    if (v190)
    {
      v199 = 1;
      v200 = v208;
      *(v208 + 16) = 1;
    }

    else
    {
      v194 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v191, @"default_compute_units", v192, v193);
      *(v208 + 16) = objc_msgSend_integerValue(v194, v195, v196, v197, v198);

      v199 = *(v208 + 16);
      v200 = v208;
    }

    v200[15] = v199;
    v201 = v200;
  }

  return v208;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 2, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 4, v7, v8);
  objc_msgSend_addIndex_(v2, v9, 5, v10, v11);
  v16 = objc_msgSend_copy(v2, v12, v13, v14, v15);

  return v16;
}

@end