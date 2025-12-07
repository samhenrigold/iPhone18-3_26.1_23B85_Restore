@interface IHKSliderNetCPModelV1
- (CGSize)imageSize;
- (EspressoTensor)newTensorWithCorrectShape:(SEL)shape shape:(EspressoTensor *)a4;
- (IHKSliderNetCPModelV1)initWithModel:(id)model options:(id)options error:(id *)error;
- (id).cxx_construct;
- (id)applyAdjustments:(id)adjustments toCIImage:(id)image error:(id *)error;
- (id)getValueForAdjustment:(id)adjustment adjustments:(id)adjustments;
- (id)predictContentVectorForPixelBuffer:(__CVBuffer *)buffer scenePrint:(id)print error:(id *)error;
- (id)predictSlidersForStyleVector:(id)vector contentVector:(id)contentVector error:(id *)error;
- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)buffer scenePrint:(id)print error:(id *)error;
- (unint64_t)contentFVecSize;
- (unint64_t)styleFVecSize;
@end

@implementation IHKSliderNetCPModelV1

- (unint64_t)contentFVecSize
{
  v6 = objc_msgSend_contentFVecShape(self, a2, v2, v3, v4);
  v10 = objc_msgSend_product_(self, v7, v6, v8, v9);

  return v10;
}

- (unint64_t)styleFVecSize
{
  v6 = objc_msgSend_styleFVecShape(self, a2, v2, v3, v4);
  v10 = objc_msgSend_product_(self, v7, v6, v8, v9);

  return v10;
}

- (IHKSliderNetCPModelV1)initWithModel:(id)model options:(id)options error:(id *)error
{
  v131 = *MEMORY[0x277D85DE8];
  v130.receiver = self;
  v130.super_class = IHKSliderNetCPModelV1;
  modelCopy = model;
  optionsCopy = options;
  v129 = [IHKSliderNetCPModel initWithModel:sel_initWithModel_options_error_ options:modelCopy error:?];
  if (v129)
  {
    v9 = objc_msgSend_stringByAppendingPathComponent_(modelCopy, v6, @"net_info.json", v7, v8);
    v13 = objc_msgSend_loadJSonFrom_(IHKSliderNetCPModel, v10, v9, v11, v12);
    objc_msgSend_setInfo_(v129, v14, v13, v15, v16);

    v21 = objc_msgSend_info(v129, v17, v18, v19, v20);
    v127 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"input_image_shape", v23, v24);

    v28 = objc_msgSend_objectAtIndexedSubscript_(v127, v25, 1, v26, v27);
    objc_msgSend_doubleValue(v28, v29, v30, v31, v32);
    v34 = v33;
    v38 = objc_msgSend_objectAtIndexedSubscript_(v127, v35, 2, v36, v37);
    objc_msgSend_doubleValue(v38, v39, v40, v41, v42);
    objc_msgSend_setImageSize_(v129, v43, v44, v45, v46, v34, v47);

    v52 = objc_msgSend_info(v129, v48, v49, v50, v51);
    v56 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"adjustment_endpoints", v54, v55);
    objc_msgSend_setAdjustmentEndpoints_(v129, v57, v56, v58, v59);

    v64 = objc_msgSend_info(v129, v60, v61, v62, v63);
    v68 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"content_fvec_endpoint", v66, v67);
    objc_msgSend_setContentFVecEndpoint_(v129, v69, v68, v70, v71);

    v76 = objc_msgSend_info(v129, v72, v73, v74, v75);
    v80 = objc_msgSend_objectForKeyedSubscript_(v76, v77, @"style_fvec_endpoint", v78, v79);
    objc_msgSend_setStyleFVecEndpoint_(v129, v81, v80, v82, v83);

    v88 = objc_msgSend_info(v129, v84, v85, v86, v87);
    v92 = objc_msgSend_objectForKeyedSubscript_(v88, v89, @"content_vector_shape", v90, v91);
    objc_msgSend_setContentFVecShape_(v129, v93, v92, v94, v95);

    v100 = objc_msgSend_info(v129, v96, v97, v98, v99);
    v104 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"style_vector_shape", v102, v103);
    objc_msgSend_setStyleFVecShape_(v129, v105, v104, v106, v107);

    v112 = objc_msgSend_info(v129, v108, v109, v110, v111);
    v129->_colorSpace = objc_msgSend_extractColorSpaceFromInfo_(v129, v113, v112, v114, v115);

    v119 = objc_msgSend_stringByAppendingPathComponent_(modelCopy, v116, @"contentFVec.espresso.net", v117, v118);

    v120 = v119;
    objc_msgSend_UTF8String(v119, v121, v122, v123, v124);
    operator new();
  }

  return 0;
}

- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)buffer scenePrint:(id)print error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  printCopy = print;
  v15.receiver = self;
  v15.super_class = IHKSliderNetCPModelV1;
  v11 = [(IHKSliderNetCPModel *)&v15 predictStyleVectorForPixelBuffer:buffer scenePrint:printCopy error:error];
  if (!error || !*error)
  {
    v12 = objc_msgSend_preprocessPixelBuffer_error_(self, v9, buffer, error, v10);
    if (!error || !*error)
    {
      sub_254AD3B2C(&v14, v12);
    }
  }

  return 0;
}

- (id)predictContentVectorForPixelBuffer:(__CVBuffer *)buffer scenePrint:(id)print error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  printCopy = print;
  v15.receiver = self;
  v15.super_class = IHKSliderNetCPModelV1;
  v11 = [(IHKSliderNetCPModel *)&v15 predictContentVectorForPixelBuffer:buffer scenePrint:printCopy error:error];
  if (!error || !*error)
  {
    v12 = objc_msgSend_preprocessPixelBuffer_error_(self, v9, buffer, error, v10);
    if (!error || !*error)
    {
      sub_254AD3B2C(&v14, v12);
    }
  }

  return 0;
}

- (EspressoTensor)newTensorWithCorrectShape:(SEL)shape shape:(EspressoTensor *)a4
{
  v6 = a5;
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v15 = objc_msgSend_objectAtIndexedSubscript_(v6, v12, 0, v13, v14);
  MEMORY[0] = objc_msgSend_unsignedIntValue(v15, v16, v17, v18, v19);

  v23 = objc_msgSend_objectAtIndexedSubscript_(v6, v20, 3, v21, v22);
  MEMORY[8] = objc_msgSend_unsignedIntValue(v23, v24, v25, v26, v27);

  v31 = objc_msgSend_objectAtIndexedSubscript_(v6, v28, 1, v29, v30);
  MEMORY[0x10] = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  v39 = objc_msgSend_objectAtIndexedSubscript_(v6, v36, 2, v37, v38);
  MEMORY[0x18] = objc_msgSend_unsignedIntValue(v39, v40, v41, v42, v43);

  v48 = 0;
  v49 = 1;
  while (v48 < objc_msgSend_count(v6, v44, v45, v46, v47))
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(v6, v50, v48, v51, v52);
    v58 = objc_msgSend_unsignedIntValue(v53, v54, v55, v56, v57);

    v49 *= v58;
    ++v48;
  }

  v61 = 4;
  memset(__p, 0, sizeof(__p));
  sub_254ACDCBC(retstr, &v61, __p);
}

- (id)predictSlidersForStyleVector:(id)vector contentVector:(id)contentVector error:(id *)error
{
  v282 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  contentVectorCopy = contentVector;
  v267 = 4;
  v268 = 0u;
  v269 = 0u;
  v270 = 0;
  v265 = 0;
  v266 = &unk_2866F58A0;
  v262 = 4;
  *v263 = 0u;
  v264 = 0u;
  v261 = &unk_2866F58A0;
  if (objc_msgSend_useClipEmbedding(self, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_size(vectorCopy, v12, v13, v14, v15);
    v21 = objc_msgSend_styleFVecSize(self, v17, v18, v19, v20);
    v26 = objc_msgSend_styleFVecSize(self, v22, v23, v24, v25);
    v236 = objc_msgSend_subFeatureVectorWithRange_(vectorCopy, v27, v16 - v21, v26, v28);

    v33 = objc_msgSend_size(contentVectorCopy, v29, v30, v31, v32);
    v38 = objc_msgSend_contentFVecSize(self, v34, v35, v36, v37);
    v43 = objc_msgSend_contentFVecSize(self, v39, v40, v41, v42);
    v46 = objc_msgSend_subFeatureVectorWithRange_(contentVectorCopy, v44, v33 - v38, v43, v45);

    if (v236)
    {
      objc_msgSend_tensor(v236, v47, v48, v49, v50);
    }

    else
    {
      v260 = 0;
      *v258 = 0u;
      v259 = 0u;
      v257 = 0u;
    }

    v73 = objc_msgSend_styleFVecShape(self, v47, v48, v49, v50, v236);
    objc_msgSend_newTensorWithCorrectShape_shape_(self, v74, &v257, v73, v75);
    v267 = DWORD2(__dst[0]);
    sub_254ACE924(&v268, *&__dst[1], *(&__dst[1] + 1), (*(&__dst[1] + 1) - *&__dst[1]) >> 3);
    v77 = v272[1];
    v76 = v273;
    if (v273)
    {
      atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v78 = v270;
    *(&v269 + 1) = v77;
    v270 = v76;
    if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v78);
    }

    *&__dst[0] = &unk_2866F58E8;
    v79 = v273;
    if (v273 && !atomic_fetch_add(&v273->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v79->__on_zero_shared)(v79);
      std::__shared_weak_count::__release_weak(v79);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }

    *&v257 = &unk_2866F58E8;
    v84 = v260;
    if (v260 && !atomic_fetch_add(&v260->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v84->__on_zero_shared)(v84);
      std::__shared_weak_count::__release_weak(v84);
    }

    if (v258[0])
    {
      v258[1] = v258[0];
      operator delete(v258[0]);
    }

    if (v46)
    {
      objc_msgSend_tensor(v46, v80, v81, v82, v83);
    }

    else
    {
      v256 = 0;
      *v254 = 0u;
      v255 = 0u;
      v253 = 0u;
    }

    v85 = objc_msgSend_contentFVecShape(self, v80, v81, v82, v83);
    objc_msgSend_newTensorWithCorrectShape_shape_(self, v86, &v253, v85, v87);
    v262 = DWORD2(__dst[0]);
    sub_254ACE924(v263, *&__dst[1], *(&__dst[1] + 1), (*(&__dst[1] + 1) - *&__dst[1]) >> 3);
    v89 = v272[1];
    v88 = v273;
    if (v273)
    {
      atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = v265;
    *(&v264 + 1) = v89;
    v265 = v88;
    if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v90->__on_zero_shared)(v90);
      std::__shared_weak_count::__release_weak(v90);
    }

    *&__dst[0] = &unk_2866F58E8;
    v91 = v273;
    if (v273 && !atomic_fetch_add(&v273->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v91->__on_zero_shared)(v91);
      std::__shared_weak_count::__release_weak(v91);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }

    *&v253 = &unk_2866F58E8;
    v92 = v256;
    if (v256 && !atomic_fetch_add(&v256->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v92->__on_zero_shared)(v92);
      std::__shared_weak_count::__release_weak(v92);
    }

    if (v254[0])
    {
      v254[1] = v254[0];
      operator delete(v254[0]);
    }

    contentVectorCopy = v46;
    vectorCopy = v237;
  }

  else
  {
    if (vectorCopy)
    {
      objc_msgSend_tensor(vectorCopy, v12, v13, v14, v15);
      v51 = DWORD2(__dst[0]);
      v53 = *(&__dst[1] + 1);
      v52 = *&__dst[1];
    }

    else
    {
      v53 = 0;
      v52 = 0;
      v51 = 0;
      v273 = 0;
      *v272 = 0u;
      memset(__dst, 0, sizeof(__dst));
    }

    v267 = v51;
    sub_254ACE924(&v268, v52, v53, (v53 - v52) >> 3);
    v59 = v272[1];
    v58 = v273;
    if (v273)
    {
      atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = v270;
    *(&v269 + 1) = v59;
    v270 = v58;
    if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
    }

    *&__dst[0] = &unk_2866F58E8;
    v61 = v273;
    if (v273 && !atomic_fetch_add(&v273->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61);
      std::__shared_weak_count::__release_weak(v61);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }

    if (contentVectorCopy)
    {
      objc_msgSend_tensor(contentVectorCopy, v54, v55, v56, v57);
      v62 = DWORD2(__dst[0]);
      v64 = *(&__dst[1] + 1);
      v63 = *&__dst[1];
    }

    else
    {
      v64 = 0;
      v63 = 0;
      v62 = 0;
      v273 = 0;
      *v272 = 0u;
      memset(__dst, 0, sizeof(__dst));
    }

    v262 = v62;
    sub_254ACE924(v263, v63, v64, (v64 - v63) >> 3);
    v70 = v272[1];
    v69 = v273;
    if (v273)
    {
      atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v71 = v265;
    *(&v264 + 1) = v70;
    v265 = v69;
    if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v71->__on_zero_shared)(v71);
      std::__shared_weak_count::__release_weak(v71);
    }

    *&__dst[0] = &unk_2866F58E8;
    v72 = v273;
    if (v273 && !atomic_fetch_add(&v273->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v72->__on_zero_shared)(v72);
      std::__shared_weak_count::__release_weak(v72);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }
  }

  v250 = 0;
  v251 = 0;
  v252 = 0;
  v246 = 0u;
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v93 = objc_msgSend_adjustmentEndpoints(self, v65, v66, v67, v68, vectorCopy);
  v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v246, v281, 16);
  if (v95)
  {
    v96 = *v247;
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v247 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v99 = *(*(&v246 + 1) + 8 * i);
        selfCopy = self;
        v105 = objc_msgSend_UTF8String(v99, v101, v102, v103, v104);
        v106 = strlen(v105);
        if (v106 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_254ACEE24();
        }

        v108 = v106;
        if (v106 >= 0x17)
        {
          operator new();
        }

        BYTE7(__dst[1]) = v106;
        if (v106)
        {
          memmove(__dst, v105, v106);
          *(__dst + v108) = 0;
          v110 = v251;
          v109 = v252;
          if (v251 < v252)
          {
LABEL_68:
            *v110 = __dst[0];
            v110[2] = *&__dst[1];
            v98 = (v110 + 3);
            goto LABEL_69;
          }
        }

        else
        {
          LOBYTE(__dst[0]) = 0;
          v110 = v251;
          v109 = v252;
          if (v251 < v252)
          {
            goto LABEL_68;
          }
        }

        v111 = v250;
        v112 = v110 - v250;
        v113 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v250) >> 3);
        v114 = v113 + 1;
        if (v113 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_254ACE59C();
        }

        v115 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v250) >> 3);
        if (2 * v115 > v114)
        {
          v114 = 2 * v115;
        }

        if (v115 >= 0x555555555555555)
        {
          v116 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v116 = v114;
        }

        if (v116)
        {
          if (v116 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_254AD42D4();
        }

        v117 = 24 * v113;
        *v117 = __dst[0];
        *(v117 + 16) = *&__dst[1];
        v98 = 24 * v113 + 24;
        v118 = (24 * v113 - v112);
        memcpy((v117 - v112), v111, v112);
        v250 = v118;
        v251 = v98;
        v252 = 0;
        if (v111)
        {
          operator delete(v111);
        }

LABEL_69:
        v251 = v98;
        self = selfCopy;
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v107, &v246, v281, 16);
    }

    while (v95);
  }

  ptr = self->styleTransferNet.__ptr_;
  sub_254AE0820(__dst, "content_fvec:0", &v261);
  sub_254AE0998(v275, "style_fvec:0", &v266);
  memset(v242, 0, sizeof(v242));
  v243 = 1065353216;
  sub_254AD7344(v242, __dst, __dst);
  sub_254AD7344(v242, v275, v275);
  sub_254AD3138(ptr, v242, &v250, v244);
  sub_254AD20AC(v242);
  v277 = &unk_2866F58E8;
  v120 = v280;
  if (v280 && !atomic_fetch_add(&v280->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v120->__on_zero_shared)(v120);
    std::__shared_weak_count::__release_weak(v120);
  }

  if (v278)
  {
    v279 = v278;
    operator delete(v278);
  }

  if (v276 < 0)
  {
    operator delete(v275[0]);
  }

  *(&__dst[1] + 1) = &unk_2866F58E8;
  v121 = v274;
  if (v274 && !atomic_fetch_add(&v274->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v121->__on_zero_shared)(v121);
    std::__shared_weak_count::__release_weak(v121);
  }

  if (v272[1])
  {
    v273 = v272[1];
    operator delete(v272[1]);
  }

  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  v122 = objc_opt_new();
  for (j = v245; j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      sub_254AD6E24(__s, j[2], j[3]);
    }

    else
    {
      *__s = *(j + 1);
      v241 = j[4];
    }

    sub_254ADC074(__s, __dst);
    if (SHIBYTE(v241) < 0)
    {
      operator delete(__s[0]);
      v124 = SBYTE7(__dst[1]);
      if (SBYTE7(__dst[1]) < 0)
      {
LABEL_149:
        v134 = *&__dst[0];
        if (!strcmp(*&__dst[0], "WhiteBalanceTempTintCI"))
        {
          goto LABEL_159;
        }

        if (!strcmp(v134, "ExposureAndBlackPointCI"))
        {
LABEL_162:
          if (*(j + 12) != 4)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v161 = MEMORY[0x277CCABB0];
          LODWORD(v162) = *(*(*j[10] + 24))(j[10]);
          v167 = objc_msgSend_numberWithFloat_(v161, v163, v164, v165, v166, v162);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v168, v167, @"Exposure", v169);

          if (*(j + 12) != 4)
          {
            v228 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v228, "Incorrect data type requested.");
            __cxa_throw(v228, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v170 = MEMORY[0x277CCABB0];
          LODWORD(v171) = *((*(*j[10] + 24))(j[10]) + 4);
          v141 = objc_msgSend_numberWithFloat_(v170, v172, v173, v174, v175, v171);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v176, v141, @"Black", v177);
          goto LABEL_175;
        }

        if (!strcmp(v134, "ExposureCI"))
        {
          goto LABEL_165;
        }

        if (!strcmp(v134, "ColorCastCI"))
        {
LABEL_167:
          if (*(j + 12) != 4)
          {
            v231 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v231, "Incorrect data type requested.");
            __cxa_throw(v231, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v186 = MEMORY[0x277CCABB0];
          LODWORD(v187) = *(*(*j[10] + 24))(j[10]);
          v141 = objc_msgSend_numberWithFloat_(v186, v188, v189, v190, v191, v187);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v192, v141, @"Cast", v193);
          goto LABEL_175;
        }

        if (!strcmp(v134, "VibrancyCI"))
        {
          goto LABEL_169;
        }

        if (!strcmp(v134, "HighlightsCI"))
        {
LABEL_171:
          if (*(j + 12) != 4)
          {
            v233 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v233, "Incorrect data type requested.");
            __cxa_throw(v233, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v202 = MEMORY[0x277CCABB0];
          LODWORD(v203) = *(*(*j[10] + 24))(j[10]);
          v141 = objc_msgSend_numberWithFloat_(v202, v204, v205, v206, v207, v203);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v208, v141, @"Highlights", v209);
          goto LABEL_175;
        }

        if (!strcmp(v134, "HighKeyCI"))
        {
          goto LABEL_173;
        }

        goto LABEL_156;
      }
    }

    else
    {
      v124 = SBYTE7(__dst[1]);
      if (SBYTE7(__dst[1]) < 0)
      {
        goto LABEL_149;
      }
    }

    if (*&__dst[0] == 0x6C61426574696857 && *(&__dst[0] + 1) == 0x706D655465636E61 && *(__dst + 15) == 0x4943746E695470)
    {
LABEL_159:
      if (*(j + 12) != 4)
      {
        v226 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v226, "Incorrect data type requested.");
        __cxa_throw(v226, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v144 = MEMORY[0x277CCABB0];
      LODWORD(v145) = *(*(*j[10] + 24))(j[10]);
      v150 = objc_msgSend_numberWithFloat_(v144, v146, v147, v148, v149, v145);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v151, v150, @"Temperature", v152);

      if (*(j + 12) != 4)
      {
        v227 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v227, "Incorrect data type requested.");
        __cxa_throw(v227, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v153 = MEMORY[0x277CCABB0];
      LODWORD(v154) = *((*(*j[10] + 24))(j[10]) + 4);
      v141 = objc_msgSend_numberWithFloat_(v153, v155, v156, v157, v158, v154);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v159, v141, @"Tint", v160);
      goto LABEL_175;
    }

    if (*&__dst[0] == 0x657275736F707845 && *(&__dst[0] + 1) == 0x6B63616C42646E41 && *&__dst[1] == 0x4943746E696F50)
    {
      goto LABEL_162;
    }

    if (*&__dst[0] == 0x657275736F707845 && *(__dst + 3) == 0x4943657275736FLL)
    {
LABEL_165:
      if (*(j + 12) != 4)
      {
        v230 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v230, "Incorrect data type requested.");
        __cxa_throw(v230, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v178 = MEMORY[0x277CCABB0];
      LODWORD(v179) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v178, v180, v181, v182, v183, v179);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v184, v141, @"Exposure", v185);
      goto LABEL_175;
    }

    if (*&__dst[0] == 0x736143726F6C6F43 && DWORD2(__dst[0]) == 4801396)
    {
      goto LABEL_167;
    }

    if (*&__dst[0] == 0x79636E6172626956 && *(__dst + 3) == 0x494379636E6172)
    {
LABEL_169:
      if (*(j + 12) != 4)
      {
        v232 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v232, "Incorrect data type requested.");
        __cxa_throw(v232, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v194 = MEMORY[0x277CCABB0];
      LODWORD(v195) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v194, v196, v197, v198, v199, v195);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v200, v141, @"Vibrancy", v201);
      goto LABEL_175;
    }

    if (*&__dst[0] == 0x6867696C68676948 && *(__dst + 5) == 0x49437374686769)
    {
      goto LABEL_171;
    }

    if (*&__dst[0] == 0x4379654B68676948 && WORD4(__dst[0]) == 73)
    {
LABEL_173:
      if (*(j + 12) != 4)
      {
        v234 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v234, "Incorrect data type requested.");
        __cxa_throw(v234, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v210 = MEMORY[0x277CCABB0];
      LODWORD(v211) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v210, v212, v213, v214, v215, v211);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v216, v141, @"High Key", v217);
      goto LABEL_175;
    }

    v134 = __dst;
LABEL_156:
    if (!strcmp(v134, "ContrastCI"))
    {
      if (*(j + 12) != 4)
      {
        v235 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v235, "Incorrect data type requested.");
        __cxa_throw(v235, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v135 = MEMORY[0x277CCABB0];
      LODWORD(v136) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v135, v137, v138, v139, v140, v136);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v142, v141, @"Contrast", v143);
LABEL_175:
    }

    if (v124 < 0)
    {
      operator delete(*&__dst[0]);
    }
  }

  v218 = v122;

  sub_254AD20AC(v244);
  v219 = v250;
  if (v250)
  {
    v220 = v251;
    v221 = v250;
    if (v251 != v250)
    {
      do
      {
        v222 = *(v220 - 1);
        v220 -= 3;
        if (v222 < 0)
        {
          operator delete(*v220);
        }
      }

      while (v220 != v219);
      v221 = v250;
    }

    v251 = v219;
    operator delete(v221);
  }

  v261 = &unk_2866F58E8;
  v223 = v265;
  if (v265 && !atomic_fetch_add(&v265->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v223->__on_zero_shared)(v223);
    std::__shared_weak_count::__release_weak(v223);
  }

  if (v263[0])
  {
    v263[1] = v263[0];
    operator delete(v263[0]);
  }

  v266 = &unk_2866F58E8;
  v224 = v270;
  if (v270 && !atomic_fetch_add(&v270->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v224->__on_zero_shared)(v224);
    std::__shared_weak_count::__release_weak(v224);
  }

  if (v268)
  {
    *(&v268 + 1) = v268;
    operator delete(v268);
  }

  return v218;
}

- (id)getValueForAdjustment:(id)adjustment adjustments:(id)adjustments
{
  adjustmentCopy = adjustment;
  v14 = objc_msgSend_objectForKeyedSubscript_(adjustments, v7, adjustmentCopy, v8, v9);
  if (!v14)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = objc_msgSend_sliderSpecs(self, v10, v11, v12, v13);
    v20 = objc_msgSend_objectForKeyedSubscript_(v16, v17, adjustmentCopy, v18, v19);
    objc_msgSend_identity(v20, v21, v22, v23, v24);
    v14 = objc_msgSend_numberWithDouble_(v15, v25, v26, v27, v28);
  }

  return v14;
}

- (id)applyAdjustments:(id)adjustments toCIImage:(id)image error:(id *)error
{
  adjustmentsCopy = adjustments;
  imageCopy = image;
  v14 = objc_msgSend_filterSequence(self, v10, v11, v12, v13);
  v16 = objc_msgSend_applySliders_image_error_(v14, v15, adjustmentsCopy, imageCopy, error);

  return v16;
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  return self;
}

@end