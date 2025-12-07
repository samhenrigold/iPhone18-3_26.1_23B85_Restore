@interface CSUVisualGenerationTextEncoderV1
- (BOOL)loadResources:(id *)resources;
- (CSUVisualGenerationTextEncoderV1)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
- (unordered_map<std::string,)_inputTokenTensorsWithTokenIDs:()std:()std:(std:(ik:(CSUVisualGenerationTextEncoderV1 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(vector<unsigned)int allocator<std:(std::allocator<unsigned int>> *)std :pair<const)std::string :equal_to<std::string> :hash<std::string>;
- (vector<unsigned)getTokenIDsOnText:(CSUVisualGenerationTextEncoderV1 *)self withBOS:(SEL)s withEOS:(id)oS withError:(BOOL)error;
- (void)_unsafeRunOnInput:(id)input completion:(id)completion;
- (void)runOnInput:(id)input completion:(id)completion;
@end

@implementation CSUVisualGenerationTextEncoderV1

- (CSUVisualGenerationTextEncoderV1)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CSUVisualGenerationTextEncoderV1;
  v6 = [(CSUVisualGenerationTextEncoderV1 *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (vector<unsigned)getTokenIDsOnText:(CSUVisualGenerationTextEncoderV1 *)self withBOS:(SEL)s withEOS:(id)oS withError:(BOOL)error
{
  v8 = a6;
  errorCopy = error;
  oSCopy = oS;
  if ((objc_msgSend_loadResources_(self, v13, a7, v14, v15) & 1) == 0)
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    goto LABEL_26;
  }

  if (objc_msgSend_inputIsLowerCase(self->_configuration, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_lowercaseString(oSCopy, v20, v21, v22, v23);

    oSCopy = v24;
  }

  ptr = self->_vocabulary.__ptr_;
  v26 = oSCopy;
  v55 = oSCopy;
  v31 = objc_msgSend_UTF8String(v26, v27, v28, v29, v30);
  v32 = strlen(v31);
  if (v32 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v33 = v32;
  if (v32 >= 0x17)
  {
    operator new();
  }

  v57 = v32;
  if (v32)
  {
    memmove(&__dst, v31, v32);
  }

  *(&__dst + v33) = 0;
  (*(*ptr + 16))(&__p, ptr, &__dst, 0);
  oSCopy = v55;
  if ((v57 & 0x80000000) == 0)
  {
    if (!errorCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  operator delete(__dst);
  if (errorCopy)
  {
LABEL_15:
    LODWORD(__dst) = 1;
    sub_1AC071660(&__p, __p, &__dst);
  }

LABEL_16:
  v39 = __p;
  v38 = v59;
  if (objc_msgSend_maximumSequenceLength(self->_configuration, v34, v35, v36, v37) >= ((v38 - v39) >> 2))
  {
    v53 = v59;
    if (!v8)
    {
      v53 = v59 - 4;
    }

    if (v53 != __p)
    {
      if (((v53 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    objc_msgSend_maximumSequenceLength(self->_configuration, v40, v41, v42, v43);
    NSLog(&cfstr_TokenizedQuery.isa, v55, 0);
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    v44 = MEMORY[0x1E696AEC0];
    v45 = objc_msgSend_maximumSequenceLength(self->_configuration, v40, v41, v42, v43);
    v49 = objc_msgSend_stringWithFormat_(v44, v46, @"input text exceeded max allowed length %zu", v47, v48, v45);
    *a7 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v50, v49, v51, v52);

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

LABEL_26:

  return result;
}

- (unordered_map<std::string,)_inputTokenTensorsWithTokenIDs:()std:()std:(std:(ik:(CSUVisualGenerationTextEncoderV1 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(vector<unsigned)int allocator<std:(std::allocator<unsigned int>> *)std :pair<const)std::string :equal_to<std::string> :hash<std::string>
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_maximumSequenceLength(self->_configuration, a3, std, v4, v5);
  __p = 0;
  v8 = 0;
  v9 = 0;
  operator new();
}

- (BOOL)loadResources:(id *)resources
{
  if (!self->_textEncoderNet.__ptr_)
  {
    v6 = objc_msgSend_vocabularyModelPath(self->_configuration, a2, resources, v3, v4);
    objc_msgSend_UTF8String(v6, v7, v8, v9, v10);
    sub_1AC0D4C68();
  }

  return 1;
}

- (void)_unsafeRunOnInput:(id)input completion:(id)completion
{
  v155 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  completionCopy = completion;
  v153 = 0;
  v128 = completionCopy;
  LOBYTE(completion) = objc_msgSend_loadResources_(self, v7, &v153, v8, v9);
  v10 = v153;
  if (completion)
  {
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v11 = inputCopy;
    v126 = v11;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v143, v154, 16);
    if (v13)
    {
      v14 = 0;
      v129 = *v144;
      v15 = v10;
      while (1)
      {
        if (*v144 != v129)
        {
          objc_enumerationMutation(v11);
        }

        v16 = **(&v143 + 1);
        v21 = objc_msgSend_string(v16, v17, v18, v19, v20);
        v130 = v13;
        v26 = objc_msgSend_count(v11, v22, v23, v24, v25);
        v142 = v15;
        objc_msgSend_getTokenIDsOnText_withBOS_withEOS_withError_(self, v27, v21, v14 == 0, v14 == v26 - 1, &v142);
        v10 = v142;

        if (v10)
        {
          break;
        }

        shouldReturnMask = objc_msgSend_shouldReturnMask(v16, v28, v29, v30, v31);
        v71 = v151;
        v72 = __p;
        v73 = v140;
        if (shouldReturnMask)
        {
          v74 = (v151 - v150) >> 2;
          v75 = v74 + ((v140 - __p) >> 2);
          v76 = v148;
          if (v148 >= v149)
          {
            selfCopy = self;
            v79 = v147;
            v80 = v148 - v147;
            v81 = (v148 - v147) >> 4;
            v82 = v81 + 1;
            if ((v81 + 1) >> 60)
            {
LABEL_102:
              sub_1AC060AAC();
            }

            v83 = v149 - v147;
            if ((v149 - v147) >> 3 > v82)
            {
              v82 = v83 >> 3;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFF0)
            {
              v84 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v82;
            }

            if (v84)
            {
              if (!(v84 >> 60))
              {
                operator new();
              }

LABEL_103:
              sub_1AC066FD4();
            }

            v85 = (16 * v81);
            *v85 = v74;
            v85[1] = v75;
            v77 = 16 * v81 + 16;
            memcpy(0, v79, v80);
            v147 = 0;
            v148 = v77;
            v149 = 0;
            if (v79)
            {
              operator delete(v79);
            }

            self = selfCopy;
            v11 = v126;
          }

          else
          {
            *v148 = v74;
            *(v76 + 1) = v75;
            v77 = (v76 + 16);
          }

          v148 = v77;
          v71 = v151;
          v72 = __p;
          v73 = v140;
          completionCopy = v128;
        }

        sub_1AC075F44(&v150, v71, v72, v73, (v73 - v72) >> 2);
        ++v14;
        v32 = __p;
        if (__p)
        {
          goto LABEL_8;
        }

LABEL_9:

        if (v10)
        {
LABEL_59:

          v86 = v147;
          if (v147)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        if (v130 >= 2)
        {
          for (i = 1; v130 != i; ++i)
          {
            if (*v144 != v129)
            {
              objc_enumerationMutation(v11);
            }

            v35 = *(*(&v143 + 1) + 8 * i);
            v40 = objc_msgSend_string(v35, v36, v37, v38, v39);
            v45 = objc_msgSend_count(v11, v41, v42, v43, v44);
            v142 = 0;
            objc_msgSend_getTokenIDsOnText_withBOS_withEOS_withError_(self, v46, v40, v14 == 0, v14 == v45 - 1, &v142);
            v10 = v142;

            if (v10)
            {
              completionCopy[2](completionCopy, 0, v10);
              v51 = __p;
              if (__p)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v52 = objc_msgSend_shouldReturnMask(v35, v47, v48, v49, v50);
              v53 = v151;
              v54 = __p;
              v55 = v140;
              if (v52)
              {
                selfCopy2 = self;
                v57 = (v151 - v150) >> 2;
                v58 = v57 + ((v140 - __p) >> 2);
                v59 = v148;
                if (v148 >= v149)
                {
                  v61 = v147;
                  v62 = v148 - v147;
                  v63 = (v148 - v147) >> 4;
                  v64 = v63 + 1;
                  if ((v63 + 1) >> 60)
                  {
                    goto LABEL_102;
                  }

                  v65 = v149 - v147;
                  if ((v149 - v147) >> 3 > v64)
                  {
                    v64 = v65 >> 3;
                  }

                  if (v65 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v66 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v66 = v64;
                  }

                  if (v66)
                  {
                    if (!(v66 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_103;
                  }

                  v67 = (v148 - v147) >> 4;
                  v68 = (16 * v63);
                  *v68 = v57;
                  v68[1] = v58;
                  v60 = 16 * v63 + 16;
                  v69 = &v68[-2 * v67];
                  memcpy(v69, v61, v62);
                  v147 = v69;
                  v148 = v60;
                  v149 = 0;
                  if (v61)
                  {
                    operator delete(v61);
                  }

                  self = selfCopy2;
                  v11 = v126;
                }

                else
                {
                  *v148 = v57;
                  *(v59 + 1) = v58;
                  v60 = (v59 + 16);
                  self = selfCopy2;
                }

                v148 = v60;
                v53 = v151;
                v54 = __p;
                v55 = v140;
                completionCopy = v128;
              }

              sub_1AC075F44(&v150, v53, v54, v55, (v55 - v54) >> 2);
              ++v14;
              v51 = __p;
              if (__p)
              {
LABEL_18:
                v140 = v51;
                operator delete(v51);
              }
            }

            if (v10)
            {
              goto LABEL_59;
            }
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v33, &v143, v154, 16);
        v15 = 0;
        v10 = 0;
        if (!v13)
        {
          goto LABEL_64;
        }
      }

      completionCopy[2](completionCopy, 0, v10);
      v32 = __p;
      if (!__p)
      {
        goto LABEL_9;
      }

LABEL_8:
      v140 = v32;
      operator delete(v32);
      goto LABEL_9;
    }

LABEL_64:

    v137 = 0;
    v138 = 0;
    v136 = 0;
    if (v151 != v150)
    {
      if (((v151 - v150) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    objc_msgSend__inputTokenTensorsWithTokenIDs_(self, v87, &v136, v88, v89);
    if (v136)
    {
      v137 = v136;
      operator delete(v136);
    }

    sub_1AC0669EC(self->_textEncoderNet.__ptr_, &__p, v135);
    v90 = [CSUVisualGenerationTextEncoderV1NetworkOutput alloc];
    v95 = objc_msgSend_outputLastHiddenState(self->_configuration, v91, v92, v93, v94);
    v96 = v95;
    v101 = objc_msgSend_UTF8String(v95, v97, v98, v99, v100);
    v102 = strlen(v101);
    if (v102 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v103 = v102;
    if (v102 >= 0x17)
    {
      operator new();
    }

    v134 = v102;
    if (v102)
    {
      memmove(&__dst, v101, v102);
    }

    *(&__dst + v103) = 0;
    v108 = sub_1AC068CD4(v135, &__dst);
    if (!v108)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    v109 = objc_msgSend_outputCLIPPooledLayer(self->_configuration, v104, v105, v106, v107);
    v110 = v109;
    v115 = objc_msgSend_UTF8String(v109, v111, v112, v113, v114);
    v116 = strlen(v115);
    if (v116 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v117 = v116;
    if (v116 >= 0x17)
    {
      operator new();
    }

    v132 = v116;
    if (v116)
    {
      memmove(&v131, v115, v116);
    }

    *(&v131 + v117) = 0;
    v118 = sub_1AC068CD4(v135, &v131);
    if (!v118)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    HiddenLayer_PooledCLIPEmbedding_MaskIndices = objc_msgSend_initWithLastHiddenLayer_PooledCLIPEmbedding_MaskIndices_(v90, v119, (v108 + 5), (v118 + 5), &v147);
    if (v132 < 0)
    {
      operator delete(v131);
    }

    if (v134 < 0)
    {
      operator delete(__dst);
    }

    (completionCopy)[2](completionCopy, HiddenLayer_PooledCLIPEmbedding_MaskIndices, v10);
    sub_1AC066D78(v135);
    v121 = v141;
    if (v141)
    {
      while (1)
      {
        v122 = *v121;
        v121[5] = &unk_1F20D01C0;
        v123 = v121[11];
        if (v123)
        {
          if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v124 = v121[7];
        if (v124)
        {
          goto LABEL_93;
        }

LABEL_94:
        if (*(v121 + 39) < 0)
        {
          operator delete(v121[2]);
        }

        operator delete(v121);
        v121 = v122;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      (v123->__on_zero_shared)(v123);
      std::__shared_weak_count::__release_weak(v123);
      v124 = v121[7];
      if (!v124)
      {
        goto LABEL_94;
      }

LABEL_93:
      v121[8] = v124;
      operator delete(v124);
      goto LABEL_94;
    }

LABEL_98:
    v125 = __p;
    __p = 0;
    if (v125)
    {
      operator delete(v125);
    }

    completionCopy = v128;
    v86 = v147;
    if (v147)
    {
LABEL_60:
      v148 = v86;
      operator delete(v86);
    }

LABEL_61:
    if (v150)
    {
      v151 = v150;
      operator delete(v150);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)runOnInput:(id)input completion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  objc_msgSend__unsafeRunOnInput_completion_(self, v8, inputCopy, completionCopy, v9);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end