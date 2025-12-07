@interface CVNLPCaptionDecoderLSTM
- (CVNLPCaptionDecoderLSTM)initWithOptions:(id)options runTimeParams:(id)params;
- (id)computeCaptionForImageWithInputs:(id)inputs genderOption:(int)option;
- (id)packBeamID:(id)d tokenID:(id)iD lstmAttnState:(id *)state lstmLangState:(id *)langState softmax:(id *)softmax;
- (void)dealloc;
- (void)extractBeamID:(id *)d tokenID:(id *)iD lstmAttnState:(id *)state lstmLangState:(id *)langState fromFollowup:(id)followup;
@end

@implementation CVNLPCaptionDecoderLSTM

- (CVNLPCaptionDecoderLSTM)initWithOptions:(id)options runTimeParams:(id)params
{
  optionsCopy = options;
  paramsCopy = params;
  v90.receiver = self;
  v90.super_class = CVNLPCaptionDecoderLSTM;
  v8 = [(CVNLPCaptionModelBase *)&v90 initWithOptions:optionsCopy runTimeParams:paramsCopy];
  v11 = v8;
  if (v8)
  {
    v8->startID = 0;
    v8->endID = 0;
    v8->maxCaptionLen = 16;
    v8->beamSize = 5;
    v8->meanFeaturesPresent = 0;
    v87 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, CVNLPCaptionModelPath, v10);
    v14 = objc_msgSend_URLByAppendingPathComponent_(v87, v12, @"vocab_reverse.json", v13);
    v15 = MEMORY[0x1E695DEF0];
    v86 = v14;
    v19 = objc_msgSend_path(v14, v16, v17, v18);
    v22 = objc_msgSend_dataWithContentsOfFile_(v15, v20, v19, v21);

    v89 = 0;
    v24 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v23, v22, 0, &v89);
    v85 = v89;
    vocab = v11->vocab;
    v11->vocab = v24;

    v88 = objc_msgSend_URLByAppendingPathComponent_(v87, v26, @"decoder_opt_pro.espresso.net", v27);
    v11->decoderCtx = espresso_create_context();
    v11->_decoderPlan = espresso_create_plan();
    v31 = objc_msgSend_path(v88, v28, v29, v30);
    v32 = v31;
    objc_msgSend_UTF8String(v32, v33, v34, v35);
    LODWORD(v24) = espresso_plan_add_network();

    if (v24)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(exception, v60);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_plan_build())
    {
      v61 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v61, v62);
      __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (c_network_get_input_names())
    {
      v63 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v63, v64);
      __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (v11->meanFeaturesPresent && espresso_network_bind_buffer())
    {
      v83 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v83, v84);
      __cxa_throw(v83, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v65 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v65, v66);
      __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v67 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v67, v68);
      __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v69 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v69, v70);
      __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v71 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v71, v72);
      __cxa_throw(v71, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v73 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v73, v74);
      __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v75 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v75, v76);
      __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v77 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v77, v78);
      __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v79 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v79, v80);
      __cxa_throw(v79, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v81 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v81, v82);
      __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v11->vocabSize = objc_msgSend_count(v11->vocab, v36, v37, v38);
    v42 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v39, v40, v41);
    v45 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v43, CVNLPBeamSearchSize, v44);
    v47 = v45;
    if (v45)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v42, v46, v45, CVNLPBeamSearchSize);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v42, v46, &unk_1F5554B50, CVNLPBeamSearchSize);
    }

    v50 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, v11->endID, v49);
    objc_msgSend_setObject_forKeyedSubscript_(v42, v51, v50, CVNLPBeamEndToken);

    v54 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v52, v11->vocabSize, v53);
    objc_msgSend_setObject_forKeyedSubscript_(v42, v55, v54, CVNLPBeamSearchOutputVocabSize);

    objc_msgSend_setObject_forKeyedSubscript_(v42, v56, v11->vocab, CVNLPBeamSearchOutputVocabMap);
    objc_msgSend_setObject_forKeyedSubscript_(v42, v57, MEMORY[0x1E695E118], CVNLPBeamSearchIncludeLanguageModel);
    v11->_beamSearch = CVNLPBeamSearchCreate(v42, 0);
  }

  return v11;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  CFRelease(self->_beamSearch);
  v3.receiver = self;
  v3.super_class = CVNLPCaptionDecoderLSTM;
  [(CVNLPCaptionDecoderLSTM *)&v3 dealloc];
}

- (id)packBeamID:(id)d tokenID:(id)iD lstmAttnState:(id *)state lstmLangState:(id *)langState softmax:(id *)softmax
{
  dCopy = d;
  iDCopy = iD;
  v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v18, dCopy, CVNLPBeamSearchBeamID);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v19, iDCopy, CVNLPBeamSearchNextTokenID);
  if (softmax)
  {
    v23 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v20, softmax->var0, 4 * self->vocabSize);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v24, v23, CVNLPBeamSearchNextTokenSoftmaxValues);
  }

  v28 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v20, v21, v22);
  if (state)
  {
    var0 = state->var0;
    v30 = *&state->var12;
    v60 = *&state->var10;
    v61 = v30;
    v62 = *&state->var14;
    v31 = *&state->var4;
    v56 = *&state->var3[2];
    v57 = v31;
    v32 = *&state->var8;
    v58 = *&state->var6;
    v59 = v32;
    v33 = *state->var2;
    v52 = *&state->var0;
    v53 = v33;
    v34 = *state->var3;
    v54 = *&state->var2[2];
    v55 = v34;
    v35 = objc_msgSend__blob_size_(self, v25, &v52, v27);
    v37 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v36, var0, 4 * v35);
    objc_msgSend_setObject_forKeyedSubscript_(v28, v38, v37, @"lstmAttnStateData");
  }

  if (langState)
  {
    v39 = langState->var0;
    v40 = *&langState->var12;
    v60 = *&langState->var10;
    v61 = v40;
    v62 = *&langState->var14;
    v41 = *&langState->var4;
    v56 = *&langState->var3[2];
    v57 = v41;
    v42 = *&langState->var8;
    v58 = *&langState->var6;
    v59 = v42;
    v43 = *langState->var2;
    v52 = *&langState->var0;
    v53 = v43;
    v44 = *langState->var3;
    v54 = *&langState->var2[2];
    v55 = v44;
    v45 = objc_msgSend__blob_size_(self, v25, &v52, v27);
    v47 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v46, v39, 4 * v45);
    objc_msgSend_setObject_forKeyedSubscript_(v28, v48, v47, @"lstmLangStateData");
  }

  v49 = objc_msgSend_copy(v28, v25, v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v50, v49, CVNLPBeamSearchNextTokenMetaData);

  return v17;
}

- (void)extractBeamID:(id *)d tokenID:(id *)iD lstmAttnState:(id *)state lstmLangState:(id *)langState fromFollowup:(id)followup
{
  followupCopy = followup;
  *d = objc_msgSend_objectForKeyedSubscript_(followupCopy, v13, CVNLPBeamSearchBeamID, v14);
  *iD = objc_msgSend_objectForKeyedSubscript_(followupCopy, v15, CVNLPBeamSearchNextTokenID, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(followupCopy, v17, CVNLPBeamSearchNextTokenMetaData, v18);
  v24 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"lstmAttnStateData", v21);
  if (v24)
  {
    var0 = state->var0;
    v26 = *&state->var12;
    v59 = *&state->var10;
    v60 = v26;
    v61 = *&state->var14;
    v27 = *&state->var4;
    v55 = *&state->var3[2];
    v56 = v27;
    v28 = *&state->var8;
    v57 = *&state->var6;
    v58 = v28;
    v29 = *state->var2;
    v51 = *&state->var0;
    v52 = v29;
    v30 = *state->var3;
    v53 = *&state->var2[2];
    v54 = v30;
    v31 = objc_msgSend__blob_size_(self, v22, &v51, v23);
    v32 = v24;
    v22 = objc_msgSend_bytes(v32, v33, v34, v35);
    if (v31)
    {
      memmove(var0, v22, 4 * v31);
    }
  }

  v38 = objc_msgSend_objectForKeyedSubscript_(v19, v22, @"lstmLangStateData", v23);
  if (v38)
  {
    v39 = langState->var0;
    v40 = *&langState->var12;
    v59 = *&langState->var10;
    v60 = v40;
    v61 = *&langState->var14;
    v41 = *&langState->var4;
    v55 = *&langState->var3[2];
    v56 = v41;
    v42 = *&langState->var8;
    v57 = *&langState->var6;
    v58 = v42;
    v43 = *langState->var2;
    v51 = *&langState->var0;
    v52 = v43;
    v44 = *langState->var3;
    v53 = *&langState->var2[2];
    v54 = v44;
    v45 = objc_msgSend__blob_size_(self, v36, &v51, v37);
    v46 = v38;
    v50 = objc_msgSend_bytes(v46, v47, v48, v49);
    if (v45)
    {
      memmove(v39, v50, 4 * v45);
    }
  }
}

- (id)computeCaptionForImageWithInputs:(id)inputs genderOption:(int)option
{
  v181[1] = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  v144 = inputsCopy;
  if (self->meanFeaturesPresent)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v6, 0, v7);
    v9 = v8;
    v13 = objc_msgSend_bytes(v9, v10, v11, v12);
    v14 = *&self->meanFeatsPlaceholderBlob.stride_batch_number;
    v174 = *&self->meanFeatsPlaceholderBlob.stride_height;
    v175 = v14;
    v176 = *&self->meanFeatsPlaceholderBlob.storage_type;
    v15 = *&self->meanFeatsPlaceholderBlob.width;
    v170 = *&self->meanFeatsPlaceholderBlob.stride[2];
    v171 = v15;
    v16 = *&self->meanFeatsPlaceholderBlob.sequence_length;
    v172 = *&self->meanFeatsPlaceholderBlob.channels;
    v173 = v16;
    v17 = *self->meanFeatsPlaceholderBlob.dim;
    v166 = *&self->meanFeatsPlaceholderBlob.data;
    v167 = v17;
    v18 = *self->meanFeatsPlaceholderBlob.stride;
    v168 = *&self->meanFeatsPlaceholderBlob.dim[2];
    v169 = v18;
    objc_msgSend__copy_data_to_blob_to_(self, v19, v13, &v166);

    inputsCopy = v144;
  }

  v142 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v6, 1, v7);
  v20 = v142;
  v24 = objc_msgSend_bytes(v142, v21, v22, v23);
  v25 = *&self->attFeatsPlaceholderBlob.stride_batch_number;
  v174 = *&self->attFeatsPlaceholderBlob.stride_height;
  v175 = v25;
  v176 = *&self->attFeatsPlaceholderBlob.storage_type;
  v26 = *&self->attFeatsPlaceholderBlob.width;
  v170 = *&self->attFeatsPlaceholderBlob.stride[2];
  v171 = v26;
  v27 = *&self->attFeatsPlaceholderBlob.sequence_length;
  v172 = *&self->attFeatsPlaceholderBlob.channels;
  v173 = v27;
  v28 = *self->attFeatsPlaceholderBlob.dim;
  v166 = *&self->attFeatsPlaceholderBlob.data;
  v167 = v28;
  v29 = *self->attFeatsPlaceholderBlob.stride;
  v168 = *&self->attFeatsPlaceholderBlob.dim[2];
  v169 = v29;
  objc_msgSend__copy_data_to_blob_to_(self, v30, v24, &v166);
  v143 = objc_msgSend_objectAtIndexedSubscript_(v144, v31, 2, v32);
  v33 = v143;
  v37 = objc_msgSend_bytes(v143, v34, v35, v36);
  v38 = *&self->pAttFeatsPlaceholderBlob.stride_batch_number;
  v174 = *&self->pAttFeatsPlaceholderBlob.stride_height;
  v175 = v38;
  v176 = *&self->pAttFeatsPlaceholderBlob.storage_type;
  v39 = *&self->pAttFeatsPlaceholderBlob.width;
  v170 = *&self->pAttFeatsPlaceholderBlob.stride[2];
  v171 = v39;
  v40 = *&self->pAttFeatsPlaceholderBlob.sequence_length;
  v172 = *&self->pAttFeatsPlaceholderBlob.channels;
  v173 = v40;
  v41 = *self->pAttFeatsPlaceholderBlob.dim;
  v166 = *&self->pAttFeatsPlaceholderBlob.data;
  v167 = v41;
  v42 = *self->pAttFeatsPlaceholderBlob.stride;
  v168 = *&self->pAttFeatsPlaceholderBlob.dim[2];
  v169 = v42;
  objc_msgSend__copy_data_to_blob_to_(self, v43, v37, &v166);
  v44 = *&self->lstmAttStateFeedBlob.stride_batch_number;
  v174 = *&self->lstmAttStateFeedBlob.stride_height;
  v175 = v44;
  v176 = *&self->lstmAttStateFeedBlob.storage_type;
  v45 = *&self->lstmAttStateFeedBlob.width;
  v170 = *&self->lstmAttStateFeedBlob.stride[2];
  v171 = v45;
  v46 = *&self->lstmAttStateFeedBlob.sequence_length;
  v172 = *&self->lstmAttStateFeedBlob.channels;
  v173 = v46;
  v47 = *self->lstmAttStateFeedBlob.dim;
  v166 = *&self->lstmAttStateFeedBlob.data;
  v167 = v47;
  v48 = *self->lstmAttStateFeedBlob.stride;
  v168 = *&self->lstmAttStateFeedBlob.dim[2];
  v169 = v48;
  objc_msgSend__fill_blob_data_with_(self, v49, &v166, v50, 0.0);
  v51 = *&self->lstmLangStateFeedBlob.stride_batch_number;
  v174 = *&self->lstmLangStateFeedBlob.stride_height;
  v175 = v51;
  v176 = *&self->lstmLangStateFeedBlob.storage_type;
  v52 = *&self->lstmLangStateFeedBlob.width;
  v170 = *&self->lstmLangStateFeedBlob.stride[2];
  v171 = v52;
  v53 = *&self->lstmLangStateFeedBlob.sequence_length;
  v172 = *&self->lstmLangStateFeedBlob.channels;
  v173 = v53;
  v54 = *self->lstmLangStateFeedBlob.dim;
  v166 = *&self->lstmLangStateFeedBlob.data;
  v167 = v54;
  v55 = *self->lstmLangStateFeedBlob.stride;
  v168 = *&self->lstmLangStateFeedBlob.dim[2];
  v169 = v55;
  objc_msgSend__fill_blob_data_with_(self, v56, &v166, v57, 0.0);
  v60 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v58, self->startID, v59);
  v62 = objc_msgSend_packBeamID_tokenID_lstmAttnState_lstmLangState_softmax_(self, v61, 0, v60, 0, 0, 0);
  v181[0] = v62;
  v147 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v63, v181, 1);

  v64 = 0;
  v65 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    theArray = objc_msgSend_array(MEMORY[0x1E695DF70], v66, v67, v68);
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    obj = v147;
    v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v162, v180, 16);
    if (v70)
    {
      v152 = *v163;
      do
      {
        v71 = 0;
        v72 = v64;
        v73 = v65;
        do
        {
          if (*v163 != v152)
          {
            objc_enumerationMutation(obj);
          }

          v74 = *(*(&v162 + 1) + 8 * v71);
          v75 = objc_autoreleasePoolPush();
          v160 = v72;
          v161 = v73;
          objc_msgSend_extractBeamID_tokenID_lstmAttnState_lstmLangState_fromFollowup_(self, v76, &v161, &v160, &self->lstmAttStateFeedBlob, &self->lstmLangStateFeedBlob, v74);
          v65 = v161;

          v64 = v160;
          v77 = *&self->inWordIDBlob.stride_batch_number;
          v174 = *&self->inWordIDBlob.stride_height;
          v175 = v77;
          v176 = *&self->inWordIDBlob.storage_type;
          v78 = *&self->inWordIDBlob.width;
          v170 = *&self->inWordIDBlob.stride[2];
          v171 = v78;
          v79 = *&self->inWordIDBlob.sequence_length;
          v172 = *&self->inWordIDBlob.channels;
          v173 = v79;
          v80 = *self->inWordIDBlob.dim;
          v166 = *&self->inWordIDBlob.data;
          v167 = v80;
          v81 = *self->inWordIDBlob.stride;
          v168 = *&self->inWordIDBlob.dim[2];
          v169 = v81;
          *&v85 = objc_msgSend_unsignedIntegerValue(v64, v82, v83, v84);
          objc_msgSend__fill_blob_data_with_(self, v86, &v166, v87, v85);
          if (espresso_plan_execute_sync())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            espresso_plan_get_error_info();
            std::runtime_error::runtime_error(exception, v141);
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v89 = objc_msgSend_packBeamID_tokenID_lstmAttnState_lstmLangState_softmax_(self, v88, v65, v64, &self->newAttStateBlob, &self->newLangStateBlob, &self->langProbBlob);
          objc_msgSend_addObject_(theArray, v90, v89, v91);

          objc_autoreleasePoolPop(v75);
          ++v71;
          v72 = v64;
          v73 = v65;
        }

        while (v70 != v71);
        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v92, &v162, v180, 16);
      }

      while (v70);
    }

    v147 = CVNLPBeamSearchOneStep(self->_beamSearch, theArray);
    objc_autoreleasePoolPop(context);
  }

  while (objc_msgSend_count(v147, v93, v94, v95));
  contexta = CVNLPBeamSearchCopyTopBeams(self->_beamSearch);
  v151 = objc_msgSend_array(MEMORY[0x1E695DF70], v96, v97, v98);
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  obja = contexta;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v99, &v156, v179, 16);
  if (v100)
  {
    v150 = *v157;
    do
    {
      v153 = v100;
      for (i = 0; i != v153; ++i)
      {
        if (*v157 != v150)
        {
          objc_enumerationMutation(obja);
        }

        v105 = *(*(&v156 + 1) + 8 * i);
        v106 = objc_msgSend_array(MEMORY[0x1E695DF70], v101, v102, v103);
        v109 = objc_msgSend_objectForKeyedSubscript_(v105, v107, CVNLPBeamTokens, v108);
        theArraya = objc_msgSend_objectForKeyedSubscript_(v105, v110, CVNLPBeamScore, v111);
        if (objc_msgSend_count(v109, v112, v113, v114))
        {
          v118 = objc_msgSend_lastObject(v109, v115, v116, v117);
          v122 = objc_msgSend_unsignedIntegerValue(v118, v119, v120, v121) == self->endID;

          if (v122)
          {
            for (j = 0; j < objc_msgSend_count(v109, v115, v123, v117) - 1; ++j)
            {
              v125 = objc_msgSend_objectAtIndexedSubscript_(v109, v115, j, v117);
              v128 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @"%@", v127, v125);
              v131 = objc_msgSend_objectForKeyedSubscript_(self->vocab, v129, v128, v130);
              objc_msgSend_addObject_(v106, v132, v131, v133);
            }
          }
        }

        v177[0] = CVNLPGeneratedCaption;
        v134 = objc_msgSend_componentsJoinedByString_(v106, v115, @" ", v117);
        v177[1] = CVNLPGeneratedCaptionScore;
        v178[0] = v134;
        v178[1] = theArraya;
        v136 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v135, v178, v177, 2);

        objc_msgSend_addObject_(v151, v137, v136, v138);
      }

      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v101, &v156, v179, 16);
    }

    while (v100);
  }

  sub_1D9D9AA4C(self->_beamSearch + 2);

  return v151;
}

@end