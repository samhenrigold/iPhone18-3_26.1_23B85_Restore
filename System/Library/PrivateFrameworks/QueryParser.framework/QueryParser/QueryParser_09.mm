uint64_t QP::tokenHasArgIdAsTopPredictionOrWithScore(void *a1, uint64_t a2, int a3, float a4)
{
  v7 = a1;
  v8 = 0;
  while (1)
  {
    v9 = v8;
    v10 = [v7 argIdsForTokens];
    v11 = [v10 objectAtIndexedSubscript:a2];
    v12 = [v11 count];

    if (v12 <= v9)
    {
      break;
    }

    if (v9)
    {
      v13 = [v7 argScoresForTokens];
      v14 = [v13 objectAtIndexedSubscript:a2];
      v15 = [v14 objectAtIndexedSubscript:v9];
      [v15 floatValue];
      v17 = v16;

      if (v17 < a4)
      {
        LOBYTE(v10) = 0;
        break;
      }
    }

    v18 = [v7 argIdsForTokens];
    v19 = [v18 objectAtIndexedSubscript:a2];
    v20 = [v19 objectAtIndexedSubscript:v9];
    v21 = [v20 intValue];

    v8 = v9 + 1;
    if (v21 == a3)
    {
      LOBYTE(v10) = 1;
      break;
    }
  }

  return (v12 > v9) & v10;
}

id QP::visualIdentifiersWithTimeout(void *a1, uint64_t a2, char a3, void *a4, void *a5, const __CFDictionary *a6)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__599;
  v48 = __Block_byref_object_dispose__600;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__599;
  v42 = __Block_byref_object_dispose__600;
  v43 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = qos_class_self();
  v14 = dispatch_get_global_queue(v13, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2QPL28visualIdentifiersWithTimeoutEP8NSStringb27QPECRClientEntityFilterTypebNSt3__110shared_ptrINS_19ParserConfigurationEEEPU15__autoreleasingP7NSErrorPK14__CFDictionary_block_invoke;
  block[3] = &unk_1F45E89B8;
  v15 = a4[1];
  v33 = *a4;
  v34 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = &v44;
  v16 = v11;
  v36 = 0;
  v35 = a2;
  v37 = a3;
  v29 = v16;
  v32 = &v38;
  v17 = v12;
  v30 = v17;
  dispatch_async(v14, block);

  valuePtr = 0;
  if (!a6 || (Value = CFDictionaryGetValue(a6, @"kMDQueryOptionColdStartPhotosECRTimeout")) == 0 || (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), (v19 = valuePtr) == 0))
  {
    if (*(*a4 + 35))
    {
      v19 = -1;
    }

    else
    {
      v19 = dispatch_time(0, 100000000);
    }
  }

  if (dispatch_semaphore_wait(v17, v19))
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ECR timed out after %dms", 100];
    v21 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v51[0] = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v23 = [v21 errorWithDomain:@"com.apple.QueryParser.QueryUnderstandingError" code:-2002 userInfo:v22];
    v24 = v39[5];
    v39[5] = v23;
  }

  if (a5)
  {
    *a5 = v39[5];
  }

  v25 = v45[5];

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v25;
}

void sub_1C661F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2QP8U2Parser13parseInternalERNSt3__16vectorINS1_10shared_ptrINS_5ParseEEENS1_9allocatorIS5_EEEEPK14__CFDictionary_block_invoke(void *a1, uint64_t *a2)
{
  v4 = a1[5];
  v5 = *a2;
  v6 = *(*a2 + 184);
  if (!v6)
  {
    if (MEMORY[0x58] - 1 > 3)
    {
      return;
    }

    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (*(v5[22] + 88) - 1 <= 3)
  {
    v5 = *a2;
LABEL_6:
    v8 = v5[2];
    v9 = a1[6];
    v10 = a1[7];
    if (v8 <= v9)
    {
      v11 = a1[6];
    }

    else
    {
      v11 = v5[2];
    }

    v12 = v5[3] + v8;
    if (v12 >= v10 + v9)
    {
      v12 = v10 + v9;
    }

    v14 = v11 != -1 && v12 > v11;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v14)
    {
      v15 = *a2;
      v29 = 0uLL;
      v16 = *(v15 + 184);
      if (v16)
      {
        *(&v29 + 1) = std::__shared_weak_count::lock(v16);
        if (*(&v29 + 1))
        {
          *&v29 = *(v15 + 176);
        }
      }

      std::vector<std::shared_ptr<QP::Lexeme>>::push_back[abi:ne200100]((v4 + 184), &v29);
      if (*(&v29 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
      }

      v17 = *a2;
      *(*a2 + 76) = 8;
      v18 = *(a1[4] + 8);
      v20 = *(v18 + 48);
      v19 = *(v18 + 56);
      v27 = v20;
      v28 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *a2;
      }

      v21 = a2[1];
      v25 = v17;
      v26 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QP::operator+(&v27, &v25, &v29);
      v22 = *(a1[4] + 8);
      v23 = v29;
      v29 = 0uLL;
      v24 = *(v22 + 56);
      *(v22 + 48) = v23;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        if (*(&v29 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
        }
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }
    }

    return;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1C661F364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::tokenHasArgIdWithScore(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = 0;
  while (1)
  {
    v7 = [v5 argIdsForTokens];
    v8 = [v7 objectAtIndexedSubscript:a2];
    v9 = [v8 count];

    if (v9 <= v6)
    {
      break;
    }

    v10 = [v5 argScoresForTokens];
    v11 = [v10 objectAtIndexedSubscript:a2];
    v12 = [v11 objectAtIndexedSubscript:v6];
    [v12 floatValue];
    v14 = v13;

    if (v14 < 0.3)
    {
      break;
    }

    v15 = [v5 argIdsForTokens];
    v16 = [v15 objectAtIndexedSubscript:a2];
    v17 = [v16 objectAtIndexedSubscript:v6];
    v18 = [v17 intValue];

    ++v6;
    if (v18 == a3)
    {
      v19 = 1;
      goto LABEL_7;
    }
  }

  v19 = 0;
LABEL_7:

  return v19;
}

void ___ZN2QP8U2Parser13parseInternalERNSt3__16vectorINS1_10shared_ptrINS_5ParseEEENS1_9allocatorIS5_EEEEPK14__CFDictionary_block_invoke_529(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = *a2;
  v6 = *(*a2 + 16);
  v7 = *(*a2 + 24);
  memset(&v27, 0, sizeof(v27));
  v8 = std::__shared_weak_count::lock(*(v5 + 184));
  v9 = *(v5 + 176);
  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *v9, *(v9 + 1));
  }

  else
  {
    v10 = *v9;
    v27.__r_.__value_.__r.__words[2] = *(v9 + 2);
    *&v27.__r_.__value_.__l.__data_ = v10;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (std::string::starts_with[abi:ne200100](&v27, "Action"))
  {
    v11 = a1[6];
    if (v6 <= v11 && v7 + v6 >= a1[7] + v11)
    {
      v13 = *a2;
      v26 = 0uLL;
      v14 = *(v13 + 184);
      if (v14)
      {
        *(&v26 + 1) = std::__shared_weak_count::lock(v14);
        if (*(&v26 + 1))
        {
          *&v26 = *(v13 + 176);
        }
      }

      std::vector<std::shared_ptr<QP::Lexeme>>::push_back[abi:ne200100]((v4 + 184), &v26);
      if (*(&v26 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
      }

      v15 = *(a1[4] + 8);
      v17 = *(v15 + 48);
      v16 = *(v15 + 56);
      v24 = v17;
      v25 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = a2[1];
      v22 = *a2;
      v23 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QP::operator+(&v24, &v22, &v26);
      v19 = *(a1[4] + 8);
      v20 = v26;
      v26 = 0uLL;
      v21 = *(v19 + 56);
      *(v19 + 48) = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        if (*(&v26 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
        }
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1C661F6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFAttributedStringRef QP::createEmbeddingString(void *a1, void *a2, void *a3, unint64_t ***a4, uint64_t a5, void *a6, const __CFAttributedString *a7, uint64_t a8, void *a9, char a10)
{
  v182 = *MEMORY[0x1E69E9840];
  v163 = a1;
  v164 = a2;
  v148 = a3;
  v151 = a9;
  v157 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v14 = *a4;
  v15 = a4[1];
  v16 = v15 - *a4;
  if (v15 != *a4)
  {
    v17 = 0;
    v18 = v16 >> 4;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    while (1)
    {
      v19 = *v14;
      v20 = *(*v14 + 23);
      if (v20 < 0)
      {
        if (v19[1] == 14)
        {
          v19 = *v19;
LABEL_9:
          v21 = bswap64(*v19);
          v22 = 0x47726F756E646564;
          if (v21 == 0x47726F756E646564 && (v21 = bswap64(*(v19 + 6)), v22 = 0x6564506572736F6ELL, v21 == 0x6564506572736F6ELL))
          {
            v23 = 0;
          }

          else if (v21 < v22)
          {
            v23 = -1;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            ++v17;
          }
        }
      }

      else if (v20 == 14)
      {
        goto LABEL_9;
      }

      v14 += 2;
      if (!--v18)
      {
        v24 = v17 == 1;
        goto LABEL_20;
      }
    }
  }

  v24 = 0;
LABEL_20:
  v146 = *(*a5 + 112);
  v154 = [v146 languageCode];
  v149 = [&unk_1F45FA568 objectForKey:?];
  if (!v149)
  {
    v149 = [&unk_1F45FA568 objectForKey:@"en"];
  }

  v152 = [&unk_1F45FA540 objectForKey:v154];
  if (!v152)
  {
    v152 = [&unk_1F45FA540 objectForKey:@"en"];
  }

  v162 = a4;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v25 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [v152 floatValue];
    v27 = v26;
    [v149 floatValue];
    *buf = 134218496;
    v174 = a8;
    v175 = 2048;
    v176 = v27;
    v177 = 2048;
    v178 = v28;
    _os_log_impl(&dword_1C6584000, v25, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] People Threshold: %f, Location Threshold: %f", buf, 0x20u);
  }

  v29 = [MEMORY[0x1E695E000] standardUserDefaults];
  v150 = [v29 objectForKey:@"EnablePersonalizedEmbedding"];

  if (v150)
  {
    v30 = [MEMORY[0x1E695E000] standardUserDefaults];
    v31 = [v30 BOOLForKey:@"EnablePersonalizedEmbedding"];
  }

  else
  {
    v31 = 0;
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v32 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v174 = a8;
    v175 = 1024;
    LODWORD(v176) = v31;
    _os_log_impl(&dword_1C6584000, v32, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] personalized embedding: %d", buf, 0x12u);
  }

  v161 = a6;
  v147 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx: 0"];
  v33 = [MEMORY[0x1E695DFA8] set];
  v34 = [v151 locationNameRanges];
  v35 = [v34 count] == 0;

  if (!v35)
  {
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v36 = [v151 locationNameRanges];
    v37 = [v36 countByEnumeratingWithState:&v167 objects:v181 count:16];
    if (v37)
    {
      v38 = *v168;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v168 != v38)
          {
            objc_enumerationMutation(v36);
          }

          [v33 addObject:*(*(&v167 + 1) + 8 * i)];
        }

        v37 = [v36 countByEnumeratingWithState:&v167 objects:v181 count:16];
      }

      while (v37);
    }
  }

  v40 = 0;
  v156 = 0;
  v155 = 0.0;
  v145 = v24 & v31;
  while (1)
  {
    v41 = [v164 tokens];
    v42 = v40 < [v41 count];

    if (!v42)
    {
      if (!(v156 & 1 | ((a10 & 1) == 0)))
      {
        if (u2ParserLogger(void)::token != -1)
        {
          QP::U2Parser::lexemeForTokenWithRange();
        }

        v115 = u2ParserLogger(void)::log;
        if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_ERROR))
        {
          QP::createEmbeddingString(v147, a8, v115);
        }

        goto LABEL_160;
      }

      v106 = a5;
      v107 = *(*a5 + 8);
      v108 = v107 > 0xD;
      v109 = (1 << v107) & 0x2E01;
      if (!v108 && v109 != 0)
      {
        goto LABEL_205;
      }

      if (*(*a5 + 32) != 1)
      {
        goto LABEL_205;
      }

      v120 = [v154 isEqualToString:@"ko"];
      v106 = a5;
      if (v120)
      {
        goto LABEL_205;
      }

      if ([(__CFAttributedString *)v157 length]>= 3 && v155 != 0.0)
      {
        systemListenerLogTriggerForCodepathID(@"A961F9B4-F844-4261-8740-BA91F44C6393", a8);
      }

      *&v121 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"VisualSemanticSearchMinQueryLength"));
      v122 = [(__CFAttributedString *)v157 length];
      if (v122 < v121)
      {
        v123 = u2ParserLogger(v122);
        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          v144 = COERCE_DOUBLE([(__CFAttributedString *)v157 length]);
          *buf = 134218496;
          v174 = a8;
          v175 = 2048;
          v176 = v144;
          v177 = 2048;
          v178 = *&v121;
          _os_log_error_impl(&dword_1C6584000, v123, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string length (%ld) less than (%ld)", buf, 0x20u);
        }

LABEL_173:

        goto LABEL_160;
      }

      *&v141 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"VisualSemanticSearchMinNumTokens"));
      v142 = *&v141;
      v106 = a5;
      if (*&v155 < v141)
      {
        v127 = u2ParserLogger(v141);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v174 = a8;
          v175 = 2048;
          v176 = v155;
          v177 = 2048;
          v178 = v142;
          _os_log_error_impl(&dword_1C6584000, v127, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string tokens count (%ld) less than (%ld)", buf, 0x20u);
        }
      }

      else
      {
LABEL_205:
        if (*(*v106 + 8) != 2 || *(*v106 + 32) != 1 || ([v154 isEqualToString:@"ko"] & 1) != 0)
        {
          goto LABEL_151;
        }

        if (v155 != 0.0 && [(__CFAttributedString *)v157 length]>= 4)
        {
          systemListenerLogTriggerForCodepathID(@"AA8B6BD9-5D27-4127-B880-4429A0B855B5", a8);
        }

        *&v124 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"MailSemanticSearchMinQueryLength"));
        v125 = v124;
        if (v124 < 0)
        {
          v127 = u2ParserLogger(v124);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            QP::createEmbeddingString(a8, v127, v128, v129, v130, v131, v132, v133);
          }

          goto LABEL_202;
        }

        v126 = [(__CFAttributedString *)v157 length];
        if (v126 < v125)
        {
          v123 = u2ParserLogger(v126);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            v143 = COERCE_DOUBLE([(__CFAttributedString *)v157 length]);
            *buf = 134218496;
            v174 = a8;
            v175 = 2048;
            v176 = v143;
            v177 = 2048;
            v178 = *&v125;
            _os_log_error_impl(&dword_1C6584000, v123, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string length (%ld) less than (%ld)", buf, 0x20u);
          }

          goto LABEL_173;
        }

        *&v134 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"MailSemanticSearchMinNumTokens"));
        v135 = *&v134;
        if (*&v155 >= v134)
        {
LABEL_151:
          if (u2ParserLogger(void)::token != -1)
          {
            QP::U2Parser::lexemeForTokenWithRange();
          }

          v111 = u2ParserLogger(void)::log;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v157;
            v113 = [(__CFAttributedString *)v112 length];
            if (v113 > 4)
            {
              v117 = [(__CFAttributedString *)v112 attributedSubstringFromRange:0, 3];
              v118 = [(__CFAttributedString *)v112 attributedSubstringFromRange:v113 - 1, 1];
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...%@<%lu chars>", v117, v118, v113];
              v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            }

            else
            {
              [(__CFAttributedString *)v112 string];
              v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            }

            *buf = 134218242;
            v174 = a8;
            v175 = 2112;
            v176 = v114;
            _os_log_impl(&dword_1C6584000, v111, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] embedding string - (%@)", buf, 0x16u);
          }

          Copy = CFAttributedStringCreateCopy(*MEMORY[0x1E695E480], v157);
          goto LABEL_164;
        }

        v127 = u2ParserLogger(v134);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v174 = a8;
          v175 = 2048;
          v176 = v155;
          v177 = 2048;
          v178 = v135;
          _os_log_error_impl(&dword_1C6584000, v127, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string tokens count (%ld) less than (%ld)", buf, 0x20u);
        }
      }

LABEL_202:

      goto LABEL_160;
    }

    v43 = [v163 objectAtIndexedSubscript:v40];
    v165 = [v43 objectForKeyedSubscript:kQPQUOutputTokenKey];
    v44 = [v43 objectForKeyedSubscript:kQPQUOutputTokenRangeKey];
    v45 = COERCE_DOUBLE([v44 rangeValue]);
    v47 = v46;

    if (v45 == NAN || *&v45 + *&v47 > [v161 length])
    {
      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      log = u2ParserLogger(void)::log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v64 = [v161 length];
        *buf = 134218752;
        v174 = a8;
        v175 = 2048;
        v176 = v45;
        v177 = 2048;
        v178 = v47;
        v179 = 2048;
        v180 = v64;
        _os_log_error_impl(&dword_1C6584000, log, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Invalid token range: location=%lu, length=%lu, string length=%lu", buf, 0x2Au);
      }

      goto LABEL_52;
    }

    log = [v161 substringWithRange:{*&v45, *&v47}];
    if (log)
    {
      break;
    }

LABEL_53:

    ++v40;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"idx: %lu", v40];
  v159 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v48 = [v164 argIdsForTokens];
  v49 = [v48 objectAtIndexedSubscript:v40];
  v50 = [v49 firstObject];
  v51 = [v50 intValue];

  v52 = [v164 argScoresForTokens];
  v53 = [v52 objectAtIndexedSubscript:v40];
  v54 = [v53 firstObject];
  [v54 floatValue];
  v56 = v55;

  if (!a7)
  {
    goto LABEL_62;
  }

  Attributes = CFAttributedStringGetAttributes(a7, *&v45, 0);
  if (!Attributes)
  {
    goto LABEL_62;
  }

  v58 = CFDictionaryGetValue(Attributes, kQPInputAttributeAnnotationKey);
  v59 = v58;
  if (!v58 || ![v58 isEqualToString:@"PUBLIC_FIGURE"])
  {
LABEL_61:

LABEL_62:
    if (a10)
    {
      v61 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:log];
      v156 |= v51 == 5;
      goto LABEL_135;
    }

    if (v51 > 0xA)
    {
LABEL_134:
      v61 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:log];
LABEL_135:
      v63 = v61;
      if (v61)
      {
        goto LABEL_136;
      }

      goto LABEL_140;
    }

    if (((1 << v51) & 0x1C) == 0)
    {
      if (((1 << v51) & 0x103) != 0)
      {
        goto LABEL_140;
      }

      if (v51 != 10)
      {
        goto LABEL_134;
      }

      if (([v154 isEqualToString:@"it"] & 1) != 0 || objc_msgSend(v154, "isEqualToString:", @"de"))
      {
        v62 = [MEMORY[0x1E696B098] valueWithRange:{*&v45, *&v47}];
        if ([v33 containsObject:v62])
        {
          v63 = 0;
        }

        else
        {
          v63 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:log];
        }

        if (v63)
        {
          goto LABEL_136;
        }

        goto LABEL_140;
      }

      [v149 floatValue];
      if (v56 >= v101)
      {
        goto LABEL_140;
      }

      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v102 = u2ParserLogger(void)::log;
      if (!os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *buf = 134217984;
      v174 = a8;
      v99 = v102;
      v100 = "[QPNLU][qid=%ld] ARG_LOCATION confidence below threshold, keeping it in embedding string";
LABEL_133:
      _os_log_impl(&dword_1C6584000, v99, OS_LOG_TYPE_DEFAULT, v100, buf, 0xCu);
      goto LABEL_134;
    }

    if (([v154 isEqualToString:@"it"] & 1) != 0 || objc_msgSend(v154, "isEqualToString:", @"de"))
    {
      if (v162[1] == *v162)
      {
        goto LABEL_134;
      }

      v65 = 0;
      v66 = 0;
      while (1)
      {
        if (u2ParserLogger(void)::token != -1)
        {
          QP::U2Parser::lexemeForTokenWithRange();
        }

        v67 = u2ParserLogger(void)::log;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          [v161 substringWithRange:{(*v162)[v65][9], (*v162)[v65][10]}];
          v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v69 = (*v162)[v65];
          if (*(v69 + 23) < 0)
          {
            v69 = *v69;
          }

          [MEMORY[0x1E696AEC0] stringWithUTF8String:v69];
          v70 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 134218498;
          v174 = a8;
          v175 = 2112;
          v176 = v68;
          v177 = 2112;
          v178 = v70;
          _os_log_impl(&dword_1C6584000, v67, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Lexeme: %@ Type: %@", buf, 0x20u);
        }

        v71 = (*v162)[v65];
        v72 = *(v71 + 23);
        if (v72 < 0)
        {
          if (v71[1] != 14)
          {
            goto LABEL_96;
          }

          v73 = *v71;
        }

        else
        {
          v73 = (*v162)[v65];
          if (v72 != 14)
          {
            goto LABEL_96;
          }
        }

        v74 = *v73;
        v75 = *(v73 + 6);
        if (v74 == 0x6465646E756F7247 && v75 == 0x6E6F737265506465)
        {
          v78 = v71[9];
          v77 = v71[10];
          if (v78 == *&v45 && v77 == *&v47)
          {
            goto LABEL_140;
          }
        }

LABEL_96:
        ++v66;
        v65 += 2;
        if (v66 >= (v162[1] - *v162) >> 4)
        {
          goto LABEL_134;
        }
      }
    }

    if (!v145 || (v80 = *v162, v162[1] == *v162))
    {
LABEL_120:
      [v152 floatValue];
      if (v56 >= v97)
      {
        goto LABEL_140;
      }

      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v98 = u2ParserLogger(void)::log;
      if (!os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *buf = 134217984;
      v174 = a8;
      v99 = v98;
      v100 = "[QPNLU][qid=%ld] cannot remove ARG_PERSON because of low confidence";
      goto LABEL_133;
    }

    v81 = 0;
    v82 = 0;
    while (1)
    {
      v83 = v80[v81];
      v84 = *(v83 + 23);
      if (v84 < 0)
      {
        if (v83[1] != 14)
        {
          goto LABEL_119;
        }

        v85 = *v83;
      }

      else
      {
        v85 = v83;
        if (v84 != 14)
        {
          goto LABEL_119;
        }
      }

      v86 = *v85;
      v87 = *(v85 + 6);
      if (v86 == 0x6465646E756F7247 && v87 == 0x6E6F737265506465)
      {
        v90 = v83[9];
        v89 = v83[10];
        if (v90 == *&v45 && v89 == *&v47)
        {
          v92 = [v148 objectForKeyedSubscript:v165];
          v93 = v92 == 0;

          if (!v93)
          {
            v94 = [v148 objectForKeyedSubscript:v165];
            v95 = [v94 allKeys];
            v96 = [v95 firstObject];

            if (v96)
            {
              v104 = objc_alloc(MEMORY[0x1E696AAB0]);
              v171 = @"kMDItemPhotosPeoplePersonIdentifiers";
              v172 = v96;
              v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
              v63 = [v104 initWithString:log attributes:v105];

              if (!v63)
              {
                goto LABEL_120;
              }

LABEL_136:
              if ([(__CFAttributedString *)v157 length]&& *(*a5 + 32) == 1)
              {
                v103 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
                [(__CFAttributedString *)v157 appendAttributedString:v103];
              }

              [(__CFAttributedString *)v157 appendAttributedString:v63];

              ++*&v155;
LABEL_140:

LABEL_52:
              goto LABEL_53;
            }
          }
        }
      }

LABEL_119:
      ++v82;
      v80 = *v162;
      v81 += 2;
      if (v82 >= (v162[1] - *v162) >> 4)
      {
        goto LABEL_120;
      }
    }
  }

  if (v51 == 2)
  {
    [v152 floatValue];
    if (v56 > v60)
    {
      goto LABEL_61;
    }

    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v140 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v174 = a8;
      v175 = 2112;
      v176 = v159;
      v177 = 2048;
      v178 = v56;
      v137 = "[QPNLU][qid=%ld] no embedding string as public figure token (%@) with person arg type with low confidence (%f)";
      v138 = v140;
      v139 = 32;
LABEL_197:
      _os_log_impl(&dword_1C6584000, v138, OS_LOG_TYPE_DEFAULT, v137, buf, v139);
    }
  }

  else
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v136 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v174 = a8;
      v175 = 2112;
      v176 = v159;
      v177 = 1024;
      LODWORD(v178) = v51;
      v137 = "[QPNLU][qid=%ld] no embedding string as public figure token (%@) with non person arg type (%d)";
      v138 = v136;
      v139 = 28;
      goto LABEL_197;
    }
  }

LABEL_160:
  Copy = 0;
LABEL_164:

  return Copy;
}

id QP::debugDescriptionWithQUOutput(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v10 = a1;
  v70 = a2;
  v65 = a3;
  v76 = a4;
  v63 = a6;
  context = objc_autoreleasePoolPush();
  v74 = [MEMORY[0x1E696AD60] string];
  v11 = v10;
  v64 = v11;
  v12 = [v11 length];
  if (v12 > 4)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v11 substringToIndex:3];
    v16 = [v11 substringFromIndex:v12 - 1];
    v13 = [v14 stringWithFormat:@"%@...%@<%lu chars>", v15, v16, v12];
  }

  else
  {
    v13 = v11;
  }

  objc_msgSend_appendFormat_(v74, v13);
  v17 = [v70 intentId];
  [v17 intValue];
  v18 = intentLabel();

  v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
  v19 = [v70 safetyScore];
  [v19 floatValue];
  objc_msgSend_appendFormat_(v74, v62, v20, v63);

  for (i = 0; ; ++i)
  {
    v21 = [v70 tokens];
    v22 = [v21 count];

    if (v22 <= i)
    {
      break;
    }

    v23 = [v70 tokens];
    v24 = [v23 objectAtIndexedSubscript:i];

    v25 = [v70 tokenRanges];
    v26 = [v25 objectAtIndexedSubscript:i];
    v78.location = [v26 rangeValue];
    v27 = NSStringFromRange(v78);
    objc_msgSend_appendFormat_(v74, v27);

    v28 = [v70 argIdsForTokens];
    v75 = [v28 objectAtIndexedSubscript:i];

    v29 = [v70 argScoresForTokens];
    v72 = [v29 objectAtIndexedSubscript:i];

    v66 = [v65 objectAtIndexedSubscript:i];
    v68 = [v66 objectForKeyedSubscript:kQPQUOutputSpanTypesKey];
    if ([v68 count])
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = [v68 componentsJoinedByString:{@", "}];
      v67 = [v30 stringWithFormat:@" spans:%@", v31];
    }

    else
    {
      v67 = &stru_1F45E9EA0;
    }

    v32 = 0;
    v33 = 0;
    v73 = &stru_1F45E9EA0;
    while (v33 < [v75 count])
    {
      if (v33)
      {
        [v74 appendString:{@", "}];
      }

      v35 = [v75 objectAtIndexedSubscript:v33];
      v34 = [(__CFString *)v35 intValue];

      HIDWORD(v35) = MEMORY[0x1E696AEC4];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:intentArgShortLabel()];
      if (!v33 && a5 && ([v70 tokens], v35 = objc_claimAutoreleasedReturnValue(), v37 = -[__CFString count](v35, "count") - 1, v35, v37 == i))
      {
        v38 = MEMORY[0x1E696AEC0];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:intentArgShortLabel()];
        v35 = [v38 stringWithFormat:@"%@ {originally %@}", v39, v36];

        v36 = v35;
      }

      else if (v34 != 2)
      {
        v40 = [v76 objectForKeyedSubscript:v24];
        v35 = [v40 count];

        if (!v35)
        {
          goto LABEL_24;
        }
      }

      v41 = [v76 objectForKeyedSubscript:v24];

      if (v41)
      {
        v42 = [v76 objectForKeyedSubscript:v24];
        v43 = [v42 allKeys];
        v44 = [v43 firstObject];

        v45 = [v76 objectForKeyedSubscript:v24];
        v46 = [v45 objectForKeyedSubscript:v44];

        v47 = [v76 objectForKeyedSubscript:v24];
        v48 = [v47 count];

        v35 = MEMORY[0x1E696AEC0];
        v49 = [v46 firstObject];
        [v49 doubleValue];
        v51 = v50;
        v52 = [v46 lastObject];
        [v52 doubleValue];
        if (v48 < 2)
        {
          [(__CFString *)v35 stringWithFormat:@"vids: (%@(%.2g, %2.g))", v44, v51, v53];
          v73 = v55 = v73;
        }

        else
        {
          v54 = v53;
          v55 = [v76 objectForKeyedSubscript:v24];
          v35 = -[__CFString stringWithFormat:](v35, "stringWithFormat:", @"vids: (%@(%.2g, %.2g) + %lu more)", v44, v51, v54, [v55 count] - 1);

          v73 = v35;
        }
      }

LABEL_24:
      v56 = [v72 objectAtIndexedSubscript:v33];
      [v56 floatValue];
      LODWORD(v35) = llroundf(v57 * 100.0);

      if (v32 == v35)
      {
        objc_msgSend_appendFormat_(v74, v36);
      }

      else
      {
        objc_msgSend_appendFormat_(v74, v36, v35);
      }

      ++v33;
      v32 = v35;
    }

    v58 = [(__CFString *)v73 length];
    v59 = &stru_1F45E9EA0;
    if (v58)
    {
      v59 = @" ";
    }

    objc_msgSend_appendFormat_(v74, v59, v73, v67);

    v11 = v64;
  }

  objc_autoreleasePoolPop(context);

  return v74;
}

void QP::logQueryUnderstandingOverviewCAEvent(void *a1, void *a2, unsigned int a3, unsigned int a4, BOOL a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = a2;
  empty = xpc_dictionary_create_empty();
  xdict = empty;
  v9 = [v29 intentId];
  v10 = [v9 intValue];

  if (v10 >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_1C6632698[v10];
  }

  v14 = QPProcessName(v11, v12);
  xpc_dictionary_set_string(empty, "process", v14);
  v15 = [v30 localeIdentifier];
  v16 = [v15 cStringUsingEncoding:4];

  if (v16)
  {
    xpc_dictionary_set_string(empty, "locale", v16);
  }

  xpc_dictionary_set_uint64(empty, "queryLength", a3);
  xpc_dictionary_set_uint64(empty, "tokenCount", a4);
  xpc_dictionary_set_uint64(empty, "queryIntent", v13);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [v29 argIdsForTokens];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v22)
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v35 = 0;
    v31 = 0;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = [*(*(&v36 + 1) + 8 * i) firstObject];
        v26 = [v25 intValue];

        if (v26 <= 7)
        {
          if (v26 > 2)
          {
            switch(v26)
            {
              case 3:
                LOBYTE(v34) = 1;
                break;
              case 5:
                BYTE4(v33) = 1;
                break;
              case 7:
                LOBYTE(v32) = 1;
                break;
            }
          }

          else if (v26)
          {
            if (v26 == 1)
            {
              LOBYTE(v33) = 1;
            }

            else if (v26 == 2)
            {
              BYTE4(v32) = 1;
            }
          }

          else
          {
            v31 = 1;
          }
        }

        else if (v26 <= 10)
        {
          if (v26 == 8)
          {
            BYTE4(v35) = 1;
          }

          else if (v26 == 9)
          {
            v18 = 1;
          }

          else
          {
            v21 = 1;
          }
        }

        else if (v26 > 20)
        {
          if (v26 == 21)
          {
            v19 = 1;
          }

          else if (v26 == 50)
          {
            BYTE4(v34) = 1;
          }
        }

        else if (v26 == 11)
        {
          v20 = 1;
        }

        else if (v26 == 12)
        {
          LOBYTE(v35) = 1;
        }
      }

      v22 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v22);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v35 = 0;
    v31 = 0;
  }

  xpc_dictionary_set_BOOL(xdict, "queryContainsActionTokens", 0);
  xpc_dictionary_set_BOOL(xdict, "queryContainsCaptureDeviceTokens", 0);
  xpc_dictionary_set_BOOL(xdict, "queryContainsEventTokens", v18 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsFavoritedTokens", v19 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsGenericLocationTokens", v20 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsLocationTokens", v21 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsMediaTypeTokens", v33 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsNounTokens", v33 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsPersonSenderTokens", v34 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsPersonTokens", v32 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsSortCriteriaTokens", v34 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsSourceAppTokens", v35 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsTimeTokens", v35 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsUnspecifiedTokens", v31 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsVisualQualityTokens", v32 & 1);
  xpc_dictionary_set_BOOL(xdict, "ecrGroundedPersonEntity", a5);
  analytics_send_event();
}

uint64_t QP::U2Parser::resourcesLoaded(QP::U2Parser *this)
{
  v1 = [MEMORY[0x1E69C6A68] sharedInstance];
  v2 = [v1 modelLoaded];

  return v2;
}

void QP::U2Parser::preheat(QP::U2Parser *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 10) + 112);
  if (QP::isSupportedQULanguage(v2, v3))
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    v4 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(this + 10) + 48);
      v6 = [v2 localeIdentifier];
      v13 = 134218242;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Preheat QU model for locale: %@", &v13, 0x16u);
    }

    v7 = *(*(this + 10) + 37);
    v8 = [MEMORY[0x1E69C6A68] sharedInstance];
    v9 = [v8 getModelForLocale:v2 withTimeoutMS:-v7];

    if (QP::isSupportedECRLocale(v2, v10))
    {
      if (*(*(this + 10) + 65) == 1)
      {
        +[QPInProcessECRClient sharedClient];
      }

      else
      {
        +[QPXPCECRClient sharedClient];
      }
      v11 = ;
      v12 = v11;
      if (*(*(this + 10) + 37) == 1)
      {
        [v11 warmUpSync];
      }

      else
      {
        [v11 warmUpAsync];
      }
    }
  }
}

void QP::U2Parser::cooldown(QP::U2Parser *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 10) + 112);
  if (QP::isSupportedQULanguage(v2, v3))
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    v4 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(this + 10) + 48);
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Cooldown QU model", &v10, 0xCu);
    }

    v6 = [MEMORY[0x1E69C6A68] sharedInstance];
    [v6 releaseModel];

    if (QP::isSupportedECRLocale(v2, v7))
    {
      if (*(*(this + 10) + 65) == 1)
      {
        +[QPInProcessECRClient sharedClient];
      }

      else
      {
        +[QPXPCECRClient sharedClient];
      }
      v8 = ;
      v9 = v8;
      if (*(*(this + 10) + 37) == 1)
      {
        [v8 cooldownSync];
      }

      else
      {
        [v8 cooldownAsync];
      }
    }
  }
}

void ___ZL14u2ParserLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QPU2Parser");
  v2 = u2ParserLogger(void)::log;
  u2ParserLogger(void)::log = v1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t __Block_byref_object_copy__599(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2QPL31allVisualIdentifiersWithTimeoutEP8NSStringNSt3__110shared_ptrINS_19ParserConfigurationEEEPU15__autoreleasingP7NSErrorPK14__CFDictionary_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 64) + 65))
  {
    v2 = off_1E82660B8;
  }

  else
  {
    v2 = &off_1E82660C0;
  }

  v3 = [(__objc2_class *)*v2 sharedClient];
  v4 = *(*(a1 + 64) + 68);
  v5 = *(a1 + 32);
  v13 = 0;
  v6 = [v3 visualIdentifiersWithQuery:v5 entityFilterType:v4 ^ 1 enableBackupSearch:0 error:&v13];
  v7 = v13;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void ___ZN2QPL26u2UnderstandingWithTimeoutEPU31objcproto20QUUnderstandingModel11objc_objectPK10__CFStringlP7QUSpansP8NSNumberbjPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a2;
  v7 = a3;
  CFRelease(*(a1 + 56));
  if (v7)
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      ___ZN2QPL26u2UnderstandingWithTimeoutEPU31objcproto20QUUnderstandingModel11objc_objectPK10__CFStringlP7QUSpansP8NSNumberbjPU15__autoreleasingP7NSError_block_invoke_cold_2();
    }

    v8 = 40;
    v4 = a3;
  }

  else
  {
    v8 = 48;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), v4);
  dispatch_group_leave(*(a1 + 32));
}

ModifiedToken *QP::newModifiedToken(void *a1, void *a2)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v17 = a1;
  v18 = a2;
  v3 = objc_opt_new();
  v38 = 0;
  v39 = &v38;
  v40 = 0x4012000000;
  v41 = __Block_byref_object_copy__627;
  v42 = __Block_byref_object_dispose__628;
  v43 = &unk_1C664F151;
  v44 = 0;
  v45 = 0;
  v4 = objc_opt_new();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke;
  v32[3] = &unk_1E8267FC8;
  v5 = v18;
  v33 = v5;
  v6 = v3;
  v34 = v6;
  v37 = &v38;
  v7 = v4;
  v35 = v7;
  v8 = v17;
  v36 = v8;
  [v8 enumerateIndexesUsingBlock:v32];
  v9 = [v6 length];
  v39[7] = v9;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__599;
  v30 = __Block_byref_object_dispose__600;
  v31 = &unk_1F45FA750;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__599;
  v24 = __Block_byref_object_dispose__600;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke_633;
  v19[3] = &unk_1E8267FF0;
  v19[4] = &v26;
  v19[5] = &v20;
  [v7 enumerateKeysAndObjectsUsingBlock:v19];
  v10 = [ModifiedToken alloc];
  v12 = v39[6];
  v11 = v39[7];
  v47[0] = v21[5];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v46 = v27[5];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v15 = [(ModifiedToken *)v10 initWithToken:v6 tokenRange:v12 argIdsForToken:v11 argScoresForToken:v13, v14];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v38, 8);

  return v15;
}

void sub_1C6622700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, id a35, id a36, id a37)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose((v41 - 192), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__627(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) tokens];
  v29 = [v4 objectAtIndexedSubscript:a2];

  if (![*(a1 + 40) length])
  {
    v5 = [*(a1 + 32) tokenRanges];
    v6 = [v5 objectAtIndexedSubscript:a2];

    *(*(*(a1 + 64) + 8) + 48) = [v6 rangeValue];
  }

  [*(a1 + 40) appendString:v29];
  v7 = [*(a1 + 32) argIdsForTokens];
  v8 = [v7 objectAtIndexedSubscript:a2];
  v9 = [v8 firstObject];
  v10 = [v9 intValue];

  v11 = [*(a1 + 32) argScoresForTokens];
  v12 = [v11 objectAtIndexedSubscript:a2];
  v13 = [v12 firstObject];
  [v13 doubleValue];
  v15 = v14;

  v16 = *(a1 + 48);
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (v18)
  {
    v19 = *(a1 + 48);
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    v21 = [v19 objectForKeyedSubscript:v20];

    [v21 doubleValue];
    v23 = v22;
    v24 = [*(a1 + 56) count];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v23 + v15 / v24];
    v26 = *(a1 + 48);
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [v26 setObject:v25 forKeyedSubscript:v27];
  }

  else
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:{v15 / objc_msgSend(*(a1 + 56), "count")}];
    v28 = *(a1 + 48);
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [v28 setObject:v21 forKeyedSubscript:v25];
  }
}

void ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke_633(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ([v6 compare:*(*(*(a1 + 32) + 8) + 40)] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void ___ZN2QPL28visualIdentifiersWithTimeoutEP8NSStringb27QPECRClientEntityFilterTypebNSt3__110shared_ptrINS_19ParserConfigurationEEEPU15__autoreleasingP7NSErrorPK14__CFDictionary_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 64) + 65))
  {
    v2 = off_1E82660B8;
  }

  else
  {
    v2 = &off_1E82660C0;
  }

  v3 = [(__objc2_class *)*v2 sharedClient];
  v4 = *(a1 + 32);
  v5 = *(a1 + 88);
  v6 = *(a1 + 80);
  v7 = *(*(a1 + 64) + 67);
  v8 = *(a1 + 89);
  v17 = 0;
  LOBYTE(v16) = 0;
  v9 = [v3 visualIdentifiersWithText:v4 allowPrefixSearch:v5 entityFilterType:v6 includeInferredNames:v7 allowGroundingToNamesAndEmails:v8 useNamesAndEmailsForNonRelations:1 enableBackupSearch:v16 error:&v17];
  v10 = v17;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v15 = v10;

  dispatch_semaphore_signal(*(a1 + 40));
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<char const*&,CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, char **a2, uint64_t *a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,char const*&,CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,char const*&,CFRange &,QP::Lexeme*>(std::string *a1, char **a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  QP::Lexeme::Lexeme(a1, __p, *a3, a3[1]);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C6622DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange &,int,int,QUIntentArgType,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, *a6);
  return a1;
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange &,int,int,QUIntentArgType &,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, *a6);
  return a1;
}

void *std::__shared_ptr_emplace<QP::Parse>::__shared_ptr_emplace[abi:ne200100]<nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,std::allocator<QP::Parse>,0>(void *a1, const void **a2, uint64_t *a3, uint64_t *a4, void **a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8A88;
  std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,QP::Parse*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,QP::Parse*>(uint64_t a1, const void **a2, uint64_t *a3, uint64_t *a4, void **a5, uint64_t *a6)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  memset(v12, 0, sizeof(v12));
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v12, *a5, a5[1], (a5[1] - *a5) >> 4);
  QP::Parse::Parse(a1, v8, v9, v10, v12, *a6, 0);
  v13 = v12;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v13);
  return a1;
}

void sub_1C66231B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL QP::startswith(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3)
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = a2[23];
  }

  v6 = &v4[v5];
  if (v5)
  {
    if ((a1[23] & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    while (*v4 == *v7)
    {
      ++v4;
      ++v7;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v4 = v6;
  }

  return v4 == v6;
}

BOOL QP::endswith(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  if (v3 > v4)
  {
    return 0;
  }

  v7 = v2;
  v8 = (a2 + v2);
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = (*a2 + a2[1]);
    v9 = *a2;
  }

  if (v5 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v11 = v10 + v4 - 1;
  do
  {
    result = v8 == v9;
    if (v8 == v9)
    {
      break;
    }

    v13 = *(v8 - 1);
    v8 = (v8 - 1);
    v12 = v13;
    v14 = *v11--;
  }

  while (v12 == v14);
  return result;
}

BOOL QP::equals(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a1[1];
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
    a2 = *a2;
  }

  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v2 == v3;
  return !memcmp(a1, a2, v5) && v6;
}

CFStringRef QP::createCFStringFromString(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return &stru_1F45E9EA0;
    }

    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], v1, v2, 0x8000100u, 0);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v1 = *a1;
    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], v1, v2, 0x8000100u, 0);
  }

  return &stru_1F45E9EA0;
}

void *QP::getUTF8StringFromCFString@<X0>(void *__return_ptr a1@<X8>, const __CFString *this@<X0>)
{
  if (this)
  {
    Length = CFStringGetLength(this);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, "");
}

uint64_t copyStringInsertingSpacesBetweenIdeographCharacters(const __CFString *a1, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  if (__onceCSetToken != -1)
  {
    copyStringInsertingSpacesBetweenIdeographCharacters();
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  Mutable = CFStringCreateMutable(0, 0);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___Z51copyStringInsertingSpacesBetweenIdeographCharactersPK10__CFString7CFRange_block_invoke_2;
  v7[3] = &unk_1E8268860;
  v7[7] = &v14;
  v7[8] = a1;
  v7[4] = v12;
  v7[5] = v10;
  v7[6] = v8;
  CFEnumerateCharactersInCFString(a1, location, length, v7);
  v5 = v15[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

void sub_1C6623654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

CFArrayRef ___Z15getValidRegionsv_block_invoke()
{
  v1[257] = *MEMORY[0x1E69E9840];
  memcpy(v1, off_1E8268030, 0x808uLL);
  result = CFArrayCreate(*MEMORY[0x1E695E480], v1, 257, MEMORY[0x1E695E9C0]);
  getValidRegions(void)::gRegions = result;
  return result;
}

const __CFLocale *getLanguageCode(const __CFLocale *result)
{
  if (result)
  {
    return CFLocaleGetValue(result, *MEMORY[0x1E695E6F0]);
  }

  return result;
}

__CFString *getScriptCode(__CFString *result)
{
  if (result)
  {
    v1 = result;
    result = CFLocaleGetValue(result, *MEMORY[0x1E695E6F8]);
    if (!result)
    {
      Value = CFLocaleGetValue(v1, *MEMORY[0x1E695E6F0]);
      v3 = CFLocaleGetValue(v1, *MEMORY[0x1E695E6D0]);
      if (Value)
      {
        v4 = v3 == 0;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }

      v5 = v3;
      if (Value != @"zh")
      {
        if (CFStringCompare(Value, @"zh", 0))
        {
          return 0;
        }
      }

      if (v5 == @"HK")
      {
        return @"Hant";
      }

      v6 = CFStringCompare(v5, @"HK", 0) == kCFCompareEqualTo || v5 == @"TW";
      if (v6 || CFStringCompare(v5, @"TW", 0) == kCFCompareEqualTo)
      {
        return @"Hant";
      }

      else
      {
        if (v5 != @"CN" && CFStringCompare(v5, @"CN", 0))
        {
          return 0;
        }

        return @"Hans";
      }
    }
  }

  return result;
}

BOOL CFStringsAreEqual(CFStringRef theString1, const __CFString *a2)
{
  if (theString1 == a2)
  {
    return 1;
  }

  result = 0;
  if (theString1)
  {
    if (a2)
    {
      return CFStringCompare(theString1, a2, 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

const __CFLocale *copyNormalizedLocaleForIdentifier(CFLocaleIdentifier localeIdentifier)
{
  if (localeIdentifier)
  {
    v1 = CFLocaleCreate(*MEMORY[0x1E695E480], localeIdentifier);
  }

  else
  {
    v1 = CFLocaleCopyCurrent();
  }

  v2 = v1;
  if (v1)
  {
    Value = CFLocaleGetValue(v1, *MEMORY[0x1E695E6D0]);
    if (Value)
    {
      v4 = Value;
      if (getValidRegions(void)::onceToken != -1)
      {
        copyNormalizedLocaleForIdentifier();
      }

      v5 = getValidRegions(void)::gRegions;
      v13.length = CFArrayGetCount(getValidRegions(void)::gRegions);
      v13.location = 0;
      if (CFArrayContainsValue(v5, v13, v4))
      {
        v6 = v2;
LABEL_19:
        CFRelease(v2);
        return v6;
      }
    }

    v6 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F0]);
    v7 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F8]);
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (!v6)
      {
        goto LABEL_19;
      }

      v9 = *MEMORY[0x1E695E480];
      v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_US", v6);
    }

    else
    {
      v9 = *MEMORY[0x1E695E480];
      v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@_US", v6, v7);
    }

    v11 = v10;
    v6 = CFLocaleCreate(v9, v10);
    CFRelease(v11);
    goto LABEL_19;
  }

  return 0;
}

uint64_t normalizedLanguageForLocale(const __CFLocale *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x1C695ACD0]();
  v2 = copyNormalizedLocaleForIdentifier(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = MEMORY[0x1C695ACD0]();
  CFRelease(v3);
  return v4;
}

const __CFArray *copyNormalizedLanguagesForIdentifiers(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v6 = copyNormalizedLocaleForIdentifier(ValueAtIndex);
        if (v6)
        {
          v7 = v6;
          v8 = MEMORY[0x1C695ACD0]();
          v20.length = CFArrayGetCount(Mutable);
          v20.location = 0;
          if (!CFArrayContainsValue(Mutable, v20, v8))
          {
            CFArrayAppendValue(Mutable, v8);
          }

          CFRelease(v7);
        }
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  if (!CFArrayGetCount(Mutable))
  {
    v9 = CFLocaleCopyCurrent();
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x1C695ACD0]();
      v12 = copyNormalizedLocaleForIdentifier(v11);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0x1C695ACD0]();
        v21.length = CFArrayGetCount(Mutable);
        v21.location = 0;
        if (!CFArrayContainsValue(Mutable, v21, v14))
        {
          CFArrayAppendValue(Mutable, v14);
        }

        CFRelease(v13);
      }
    }

    else
    {
      if (!CFLocaleGetSystem() || (v16 = MEMORY[0x1C695ACD0](), (v17 = copyNormalizedLocaleForIdentifier(v16)) == 0))
      {
LABEL_18:
        if (!CFArrayGetCount(Mutable))
        {
          CFArrayAppendValue(Mutable, @"en-US");
        }

        return Mutable;
      }

      v10 = v17;
      v18 = MEMORY[0x1C695ACD0]();
      v22.length = CFArrayGetCount(Mutable);
      v22.location = 0;
      if (!CFArrayContainsValue(Mutable, v22, v18))
      {
        v19 = MEMORY[0x1C695ACD0](v10);
        CFArrayAppendValue(Mutable, v19);
      }
    }

    CFRelease(v10);
    goto LABEL_18;
  }

  return Mutable;
}

const __CFArray *copyCurrentPreferredLanguages(void)
{
  v0 = CFLocaleCopyPreferredLanguages();
  v1 = copyNormalizedLanguagesForIdentifiers(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CFLocaleRef copyCurrentLocale(void)
{
  v0 = copyCurrentPreferredLanguages();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFArrayGetCount(v0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
    v3 = CFLocaleCreate(*MEMORY[0x1E695E480], ValueAtIndex);
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

__CFCalendar *copyCurrentCalendar(const __CFLocale *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = MEMORY[0x1C695ACD0]();
  v4 = *MEMORY[0x1E695E480];
  v5 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], v3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = CFCalendarCopyCurrent();
    if (!v6)
    {
      return v6;
    }
  }

  v7 = CFTimeZoneCopySystem();
  if (v7)
  {
    v8 = v7;
    CFCalendarSetTimeZone(v6, v7);
    CFRelease(v8);
  }

  if (a2)
  {
    v9 = CFLocaleCreate(v4, a2);
    CFCalendarSetLocale(v6, v9);
    CFRelease(v9);
  }

  return v6;
}

CFAbsoluteTime getCurrentTime(__CFCalendar *a1, const __CFDate *a2)
{
  if (a2)
  {
    MEMORY[0x1C695AB50](a2);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  at = Current;
  v9 = -1;
  v10 = -1;
  v7 = -1;
  v8 = -1;
  v6 = -1;
  v5 = -1;
  CFCalendarDecomposeAbsoluteTime(a1, Current, "dMyHms", &v10, &v9, &v8, &v7, &v6, &v5);
  CFCalendarComposeAbsoluteTime(a1, &at, "dMyHms", v10, v9, v8, v7, v6, v5);
  return at;
}

CFAbsoluteTime convertAbsoluteTime(__CFCalendar *a1, __CFCalendar *a2, const __CFDate *a3, int a4)
{
  at = 0.0;
  v7 = MEMORY[0x1C695AB50](a3);
  v8 = MEMORY[0x1C695AA30](a2);
  v24 = -1;
  v25 = -1;
  v22 = -1;
  v23 = -1;
  v21 = -1;
  v19 = -1;
  v20 = -1;
  v17 = -1;
  v18 = -1;
  CFCalendarDecomposeAbsoluteTime(a1, v7, "yMdwEFHms", &v23, &v24, &v25, &v21, &v22, &v20, &v19, &v18, &v17);
  v9 = *MEMORY[0x1E695E6B8];
  if (v8 == *MEMORY[0x1E695E6B8] || v8 && v9 && CFStringCompare(v8, v9, 0) == kCFCompareEqualTo)
  {
    v16 = -1;
    CFCalendarComposeAbsoluteTime(a2, &at, "y", v23);
    CFCalendarDecomposeAbsoluteTime(a1, at, "y", &v16);
    v23 = v23 - v16 + 1;
  }

  v10 = MEMORY[0x1C695AA20](a1);
  v11 = MEMORY[0x1C695AA20](a2);
  if (a4 != -1 || v10 == v11)
  {
    CFCalendarComposeAbsoluteTime(a2, &at, "yMdwEFHms", v23, v24, v25, v21, v22, v20, v19, v18, v17);
  }

  else
  {
    CFCalendarComposeAbsoluteTime(a2, &at, "ywEHms", v23, v21, v22, v19, v18, v17, v13, v14, v15);
  }

  return at;
}

BOOL CFStringContainsString(CFStringRef theString, const __CFString *a2)
{
  if (theString == a2)
  {
    return 1;
  }

  result = 0;
  if (theString)
  {
    if (a2)
    {
      return CFStringFind(theString, a2, 0).location != -1;
    }
  }

  return result;
}

BOOL CFLocaleIsCJ(_BOOL8 result)
{
  if (result)
  {
    v1 = MEMORY[0x1C695ACD0]();
    return CFStringHasPrefix(v1, @"zh") || CFStringHasPrefix(v1, @"yue") || CFStringHasPrefix(v1, @"ja") != 0;
  }

  return result;
}

BOOL CFLocalesAreEqual(_BOOL8 result, const __CFLocale *a2)
{
  if (result)
  {
    v3 = MEMORY[0x1C695ACD0]();
    v4 = MEMORY[0x1C695ACD0](a2);
    if (v3 == v4)
    {
      return 1;
    }

    else
    {
      v5 = v4;
      result = 0;
      if (v3)
      {
        if (v5)
        {
          return CFStringCompare(v3, v5, 0) == kCFCompareEqualTo;
        }
      }
    }
  }

  return result;
}

const __CFString *CFEnumerateCharactersInCFString(const __CFString *theString, CFIndex theIndex, uint64_t a3, uint64_t a4)
{
  v5 = theIndex;
  v6 = theString;
  v9 = 0;
  v7 = theIndex + a3;
  do
  {
    if (v5 >= v7)
    {
      break;
    }

    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v6, v5);
    theString = RangeOfComposedCharactersAtIndex.location;
    if (RangeOfComposedCharactersAtIndex.location == -1)
    {
      break;
    }

    theString = (*(a4 + 16))(a4, RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length, &v9);
    v5 += RangeOfComposedCharactersAtIndex.length;
  }

  while (v9 != 1);
  return theString;
}

uint64_t ___Z51copyStringInsertingSpacesBetweenIdeographCharactersPK10__CFString7CFRange_block_invoke(const __CFString *a1)
{
  result = newCharacterSetWithPattern(a1);
  __CSet = result;
  return result;
}

uint64_t newCharacterSetWithPattern(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  HIDWORD(v5) = 0;
  Length = CFStringGetLength(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]");
  MEMORY[0x1EEE9AC00](Length);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v3, v2);
  if (!CFStringGetCharactersPtr(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]"))
  {
    v7.location = 0;
    v7.length = Length;
    CFStringGetCharacters(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]", v7, v3);
  }

  result = uset_openPattern();
  if (SHIDWORD(v5) >= 1)
  {
    if (result)
    {
      uset_close();
      return 0;
    }
  }

  return result;
}

void ___Z51copyStringInsertingSpacesBetweenIdeographCharactersPK10__CFString7CFRange_block_invoke_2(uint64_t a1, CFIndex a2, CFIndex a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = (v12 - ((2 * a3 + 17) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, 2 * a3 + 2);
  v13.location = a2;
  v13.length = a3;
  CFStringGetCharacters(*(a1 + 64), v13, v6);
  isWhitespace = u_isWhitespace(*v6);
  v8 = uset_containsAllCodePoints();
  v9 = v8;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24) != 1 || v8 == 0;
    if (!v10 || (*(*(*(a1 + 48) + 8) + 24) == 1 ? (v11 = isWhitespace == 0) : (v11 = 0), v11))
    {
      CFStringAppend(*(*(*(a1 + 56) + 8) + 24), @" ");
    }
  }

  CFStringAppendCharacters(*(*(*(a1 + 56) + 8) + 24), v6, a3);
  *(*(*(a1 + 40) + 8) + 24) = isWhitespace == 0;
  *(*(*(a1 + 48) + 8) + 24) = v9 != 0;
  ++*(*(*(a1 + 32) + 8) + 24);
}

CFStringRef copyTranslatedRomanNumberFromChineseNumberString(const __CFString *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  values[4] = xmmword_1E82688C0;
  values[5] = *&off_1E82688D0;
  v29 = @"9";
  values[0] = xmmword_1E8268880;
  values[1] = *&off_1E8268890;
  values[2] = xmmword_1E82688A0;
  values[3] = *&off_1E82688B0;
  v25 = xmmword_1E8268928;
  v26 = *&off_1E8268938;
  v27 = @"九";
  *keys = xmmword_1E82688E8;
  v22 = *&off_1E82688F8;
  v23 = xmmword_1E8268908;
  v24 = *&off_1E8268918;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *prefix = xmmword_1E8268950;
  v20 = @"千";
  v4 = CFArrayCreate(v2, prefix, 3, MEMORY[0x1E695E9C0]);
  Length = CFStringGetLength(a1);
  if (Length >= 1)
  {
    v6 = Length;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v32.location = v10;
      v32.length = 1;
      v11 = CFStringCreateWithSubstring(v2, a1, v32);
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, v11, &value))
      {
        IntValue = CFStringGetIntValue(value);
        v13 = 10 * v9;
        if (!v7)
        {
          v13 = v9;
        }

        v9 = IntValue + v13;
        ++v7;
      }

      else
      {
        v31.length = CFArrayGetCount(v4);
        v31.location = 0;
        if (!CFArrayContainsValue(v4, v31, v11))
        {
          CFRelease(v11);
          CFRelease(v3);
          CFRelease(v4);
          return 0;
        }

        HasPrefix = CFStringHasPrefix(v11, prefix[0]);
        if (v9)
        {
          if (HasPrefix)
          {
            v15 = 10 * v9;
          }

          else
          {
            v16 = CFStringHasPrefix(v11, prefix[1]);
            v15 = 1000 * v9;
            if (v16)
            {
              v15 = 100 * v9;
            }
          }
        }

        else if (HasPrefix)
        {
          v15 = 10;
        }

        else if (CFStringHasPrefix(v11, prefix[1]))
        {
          v15 = 100;
        }

        else
        {
          v15 = 1000;
        }

        v9 = 0;
        v7 = 0;
        v8 += v15;
      }

      CFRelease(v11);
      if (v6 == ++v10)
      {
        goto LABEL_22;
      }
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_22:
  CFRelease(v3);
  CFRelease(v4);
  return CFStringCreateWithFormat(v2, 0, @"%d", (v8 + v9));
}

uint64_t getIntFromSpelledNumber(const __CFString *a1, const __CFLocale *a2)
{
  result = 0xFFFFFFFFLL;
  IntValue = -1;
  if (a1 && a2)
  {
    if (!DDFastIntegerExtraction() && CFLocaleIsCJ(a2))
    {
      v5 = *MEMORY[0x1E695E480];
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @" ");
      if (ArrayBySeparatingStrings)
      {
        v7 = ArrayBySeparatingStrings;
        v8 = CFStringCreateByCombiningStrings(v5, ArrayBySeparatingStrings, &stru_1F45E9EA0);
        if (v8)
        {
          v9 = v8;
          v10 = copyTranslatedRomanNumberFromChineseNumberString(v8);
          if (v10)
          {
            v11 = v10;
            IntValue = CFStringGetIntValue(v10);
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v7);
      }
    }

    return IntValue;
  }

  return result;
}

char *QPProcessName(uint64_t a1, uint64_t a2)
{
  if (QPProcessName(void)::onceToken != -1)
  {
    QPProcessName();
  }

  return QPProcessName(void)::processName;
}

size_t ___Z13QPProcessNamev_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  result = getpid();
  if (result)
  {
    *v4 = 0xE00000001;
    v5 = 1;
    v6 = result;
    bzero(v2, 0x288uLL);
    __size = 648;
    result = sysctl(v4, 4u, v2, &__size, 0, 0);
    if (result != -1)
    {
      if (__size)
      {
        return strlcpy(QPProcessName(void)::processName, v3, __size);
      }
    }
  }

  return result;
}

uint64_t QPCFDictionaryGetInt32ValueIfPresent(uint64_t result, const __CFString *a2, int *a3)
{
  if (result)
  {
    value = 0;
    result = CFDictionaryGetValueIfPresent(result, a2, &value);
    if (result)
    {
      result = value;
      if (value)
      {
        v4 = CFGetTypeID(value);
        if (v4 == CFNumberGetTypeID())
        {
          CFNumberGetValue(value, kCFNumberSInt32Type, a3);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL SPQueryKindIsSpotlightUISearch(_BOOL8 theString1)
{
  if (theString1)
  {
    v1 = theString1;
    if (theString1 == @"com.apple.Spotlight")
    {
      return 1;
    }

    else
    {
      v2 = CFStringCompare(theString1, @"com.apple.Spotlight", 0);
      theString1 = 1;
      if (v1 != @"com.apple.Search.framework")
      {
        if (v2)
        {
          return CFStringCompare(v1, @"com.apple.Search.framework", 0) == kCFCompareEqualTo;
        }
      }
    }
  }

  return theString1;
}

BOOL QPQueryKindIsShortcutsSearch(_BOOL8 theString1)
{
  if (theString1)
  {
    v1 = theString1;
    if (theString1 == @"com.apple.shortcuts.search")
    {
      return 1;
    }

    else
    {
      v2 = CFStringCompare(theString1, @"com.apple.shortcuts.search", 0);
      theString1 = 1;
      if (v1 != @"com.apple.WorkflowKit.BackgroundShortcutRunner")
      {
        if (v2)
        {
          return CFStringCompare(v1, @"com.apple.WorkflowKit.BackgroundShortcutRunner", 0) == kCFCompareEqualTo;
        }
      }
    }
  }

  return theString1;
}

BOOL CFStringHasPrefixCaseInsensitive(CFStringRef theString, const __CFString *a2)
{
  v3 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  v5 = CFStringCreateMutableCopy(v3, 0, a2);
  CFStringLowercase(MutableCopy, 0);
  CFStringLowercase(v5, 0);
  v6 = CFStringHasPrefix(MutableCopy, v5) != 0;
  CFRelease(v5);
  CFRelease(MutableCopy);
  return v6;
}

BOOL SPQueryKindIsSearchToolSearch(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (CFStringHasPrefixCaseInsensitive(result, @"com.apple.omniSearch") || CFStringHasPrefixCaseInsensitive(v1, @"com.apple.intelligenceflow"))
    {
      return 1;
    }

    else
    {

      return CFStringHasPrefixCaseInsensitive(v1, @"com.apple.ondeviceeval");
    }
  }

  return result;
}

uint64_t QP::parseAttributeCanExtendPersonEntity(CFStringRef theString, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *(*a2 + 16);
  if (a3 + a4 > v5)
  {
    return 0;
  }

  v7 = v4 + 1;
  if (v4 == v5 || v7 >= v5)
  {
    return 1;
  }

  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v7);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    if (!CFCharacterSetIsCharacterMember(Predefined, CharacterAtIndex))
    {
      v12 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
      result = CFCharacterSetIsCharacterMember(v12, CharacterAtIndex);
      if (!result)
      {
        break;
      }
    }

    if (++v7 >= v5)
    {
      return 1;
    }
  }

  return result;
}

__CFArray *QP::createAllPersonEntities(const __CFString ***a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3802000000;
  v19 = __Block_byref_object_copy__18;
  v20 = __Block_byref_object_dispose__18;
  v21 = xmmword_1C6631880;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = 0;
  v3 = **a1;
  Length = CFStringGetLength(v3);
  v5 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *a1;
    v7 = a1[1];
  }

  else
  {
    v7 = 0;
    v8 = *a1;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___ZN2QP23createAllPersonEntitiesENSt3__110shared_ptrINS_5ParseEEE_block_invoke;
  v12[3] = &unk_1F45E9A00;
  v12[4] = &v22;
  v12[5] = &v16;
  v12[6] = v15;
  v12[7] = v3;
  v12[8] = v8;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = Mutable;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3802000000;
  v27[3] = __Block_byref_object_copy__18;
  v27[4] = __Block_byref_object_dispose__18;
  v27[5] = 0;
  v27[6] = Length;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke;
  v26[3] = &unk_1E8268A08;
  v26[4] = v12;
  v26[5] = v27;
  v26[6] = 0;
  v26[7] = Length;
  QP::Parse::enumerateParseAttributes(v5, v26);
  _Block_object_dispose(v27, 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v23 + 24) == 1)
  {
    v9.location = v17[6];
    EntityInfo = QP::createEntityInfo(**a1, v17[5], v9);
    CFArrayAppendValue(Mutable, EntityInfo);
    CFRelease(EntityInfo);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return Mutable;
}

void sub_1C6624EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose((v32 - 120), 8);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__18(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void ___ZN2QP23createAllPersonEntitiesENSt3__110shared_ptrINS_5ParseEEE_block_invoke(uint64_t a1, void **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (vgFormatterLogger(void)::token != -1)
  {
    ___ZN2QP23createAllPersonEntitiesENSt3__110shared_ptrINS_5ParseEEE_block_invoke_cold_1();
  }

  v4 = vgFormatterLogger(void)::log;
  if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_INFO))
  {
    v7 = (*a2)[2];
    v6 = (*a2)[3];
    *buf = 134218240;
    v23 = v7;
    v24 = 2048;
    v25 = v6;
    _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_INFO, "Found QU person prediction at (%ld, %ld)", buf, 0x16u);
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v8 = *(a1 + 56);
    v9 = a2[1];
    v21[0] = *a2;
    v21[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CanExtendPersonEntity = QP::parseAttributeCanExtendPersonEntity(v8, v21, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48));
    v11 = CanExtendPersonEntity;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (v11)
      {
LABEL_10:
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        v14 = *a2;
        v15 = (*a2)[2];
        v16 = (*a2)[3];
        if (v13 != -1)
        {
          if (v15 == -1)
          {
            v15 = *(v12 + 40);
            v16 = *(v12 + 48);
          }

          else
          {
            v17 = v16 + v15;
            if (v13 < v15)
            {
              v15 = *(v12 + 40);
            }

            v18 = *(v12 + 48) + v13;
            if (v18 > v17)
            {
              v17 = v18;
            }

            v16 = v17 - v15;
          }
        }

        *(v12 + 40) = v15;
        *(v12 + 48) = v16;
        *(*(*(a1 + 48) + 8) + 24) = *v14;
        return;
      }
    }

    else if (CanExtendPersonEntity)
    {
      goto LABEL_10;
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v19 = *(*(a1 + 40) + 8);
    v5.location = *(v19 + 48);
    EntityInfo = QP::createEntityInfo(**(a1 + 64), *(v19 + 40), v5);
    CFArrayAppendValue(*(a1 + 80), EntityInfo);
    CFRelease(EntityInfo);
  }

  *(*(*(a1 + 40) + 8) + 40) = *(*a2 + 1);
  *(*(*(a1 + 48) + 8) + 24) = **a2;
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_1C662515C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *QP::createEntityInfo(const __CFString *this, const __CFString *a2, CFRange a3)
{
  valuePtr.location = a2;
  valuePtr.length = a3.location;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(Mutable, v6);
  v7 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr.length);
  CFArrayAppendValue(Mutable, v7);
  v8 = CFStringCreateWithSubstring(v4, this, valuePtr);
  CFArrayAppendValue(Mutable, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

void sub_1C6625280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va2, 0);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_64c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_64c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__CFArray *QP::createAllSafetyEntities(const __CFString ***a1, const __CFAttributedString *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    Length = CFAttributedStringGetLength(a2);
    if (Length >= 1)
    {
      v7 = Length;
      v8 = 0;
      do
      {
        v14.location = v7 - v8;
        v13 = xmmword_1C6631880;
        v14.length = &v13;
        if (!QP::QPVisualGenerationFormatterSafetyRiskInRange(a2, v8, v14, v6))
        {
          break;
        }

        v9.location = *(&v13 + 1);
        if (v13 == -1 || *(&v13 + 1) <= 0)
        {
          break;
        }

        EntityInfo = QP::createEntityInfo(**a1, v13, v9);
        CFArrayAppendValue(Mutable, EntityInfo);
        CFRelease(EntityInfo);
        v8 = (*(&v13 + 1) + v13);
      }

      while (*(&v13 + 1) + v13 < v7);
    }
  }

  return Mutable;
}

const __CFString *QP::QPVisualGenerationFormatterSafetyRiskInRange(QP *this, const __CFAttributedString *a2, CFRange a3, CFRange *a4)
{
  if (!this)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  v8 = 0;
  if (CFAttributedStringGetLength(this))
  {
    if (location)
    {
      v8 = 0;
      if (a2 + location <= CFAttributedStringGetLength(this) && location >= 1)
      {
        v9 = a2;
        while (1)
        {
          if (CFAttributedStringGetAttributes(this, v9, 0))
          {
            v12.location = a2;
            v12.length = location;
            AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(this, v9, kQPInputAttributeAnnotationKey, v12, length);
            if (AttributeAndLongestEffectiveRange)
            {
              v8 = AttributeAndLongestEffectiveRange;
              if (CFStringsAreEqual(@"COPYRIGHTED", AttributeAndLongestEffectiveRange) || CFStringsAreEqual(@"PUBLIC_FIGURE", v8) || CFStringsAreEqual(@"FICTIONAL_CHARACTER", v8))
              {
                break;
              }
            }
          }

          v9 = (v9 + 1);
          if (v9 >= (a2 + location))
          {
            return 0;
          }
        }
      }
    }
  }

  return v8;
}

__CFArray *QP::GPVisualGenerationFormatterCreateEntities(uint64_t a1, const __CFAttributedString *a2)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 8);
  v37[0] = *a1;
  v37[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  AllPersonEntities = QP::createAllPersonEntities(v37);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = *(a1 + 8);
  v36[0] = *a1;
  v36[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  AllSafetyEntities = QP::createAllSafetyEntities(v36, a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  Count = CFArrayGetCount(AllPersonEntities);
  v8 = CFArrayGetCount(AllSafetyEntities);
  v9 = v8;
  v10 = v8 > 0;
  v11 = Count > 0;
  if (Count > 0 || v8 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!v11 || v10 && (v15 = CFArrayGetValueAtIndex(AllPersonEntities, v12), v17 = QP::rangeWithEntityInfo(v15, v16), v19 = v18, v20 = CFArrayGetValueAtIndex(AllSafetyEntities, v13), v22 = QP::rangeWithEntityInfo(v20, v21), v17 >= v22) && (v17 > v22 || v19 < v23))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllSafetyEntities, v13++);
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllPersonEntities, v12++);
      }

      v26 = QP::rangeWithEntityInfo(ValueAtIndex, v24);
      v29 = v26;
      v30 = v27;
      if (v26 >= v14)
      {
        CFArrayAppendValue(theArray, ValueAtIndex);
        v14 = (v29 + v30);
      }

      else
      {
        v31 = (v26 + v27);
        if (v26 + v27 > v14)
        {
          v28.location = v26 + v27 - v14;
          EntityInfo = QP::createEntityInfo(**a1, v14, v28);
          CFArrayAppendValue(theArray, EntityInfo);
          CFRelease(EntityInfo);
          v14 = v31;
        }
      }

      v10 = v13 < v9;
      v11 = v12 < Count;
    }

    while (v12 < Count || v13 < v9);
  }

  CFRelease(AllPersonEntities);
  CFRelease(AllSafetyEntities);
  return theArray;
}

void sub_1C6625714(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::rangeWithEntityInfo(QP *this, const __CFArray *a2)
{
  if (!this)
  {
    return -1;
  }

  if (CFArrayGetCount(this) < 3)
  {
    return -1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(this, 0);
  v5 = CFArrayGetValueAtIndex(this, 1);
  v6 = CFArrayGetValueAtIndex(this, 2);
  v9 = 0;
  valuePtr = 0;
  CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
  CFNumberGetValue(v5, kCFNumberCFIndexType, &v9);
  if (ValueAtIndex)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if ((v8 & (v6 != 0)) != 0)
  {
    return valuePtr;
  }

  else
  {
    return -1;
  }
}

__CFArray *QP::VisualGenerationFormatter::createEntities(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v19, *(v3 + 120), *(v3 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 128) - *(v3 + 120)) >> 3));
  v4 = *a2;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(&__p, *(v4 + 144), *(v4 + 152), (*(v4 + 152) - *(v4 + 144)) >> 4);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v20 != v19)
  {
    v6 = 0;
    v7 = 0;
    v8 = 8;
    v9 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], v9);
      if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) <= v7)
      {
        std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
      }

      v11 = v10;
      CFStringFromString = QP::createCFStringFromString(v19 + v6);
      CFDictionarySetValue(v11, kQPParseAttributeValueNamedEntityIdentifierKey, CFStringFromString);
      CFRelease(CFStringFromString);
      if (v7 >= (v17 - __p) >> 4)
      {
        break;
      }

      v13 = kQPNamedEntityIsInferredKey;
      if (*(__p + v8) == 1.0)
      {
        goto LABEL_8;
      }

      v14 = MEMORY[0x1E695E4D0];
LABEL_9:
      CFDictionarySetValue(v11, v13, *v14);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
      ++v7;
      v8 += 16;
      v6 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) <= v7)
      {
        goto LABEL_10;
      }
    }

    v13 = kQPNamedEntityIsInferredKey;
LABEL_8:
    v14 = MEMORY[0x1E695E4C0];
    goto LABEL_9;
  }

LABEL_10:
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  __p = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return Mutable;
}

void sub_1C6625A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, char *a10, uint64_t a11, char a12)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  __p = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t QP::VisualGenerationFormatter::shouldSuppressUnknownNamedEntityInRange(QP::VisualGenerationFormatter *this, CFRange a2)
{
  v2 = *(this + 11);
  v3 = *(v2 + 448);
  if (!v3)
  {
    return 0;
  }

  length = a2.length;
  location = a2.location;
  if (!CFAttributedStringGetLength(*(v2 + 448)) || length == 0)
  {
    return 0;
  }

  v7 = location + length;
  if (location + length > CFAttributedStringGetLength(v3) || length < 1)
  {
    return 0;
  }

  while (1)
  {
    Attribute = CFAttributedStringGetAttribute(v3, location, kQPInputAttributeAnnotationKey, 0);
    if (CFStringsAreEqual(@"GENERIC_ENTITY", Attribute) || CFStringsAreEqual(@"OFFENSIVE", Attribute))
    {
      break;
    }

    if (++location >= v7)
    {
      return 0;
    }
  }

  return 1;
}

__CFArray *QP::VisualGenerationFormatter::createEntitiesWithIntersection(QP::VisualGenerationFormatter *this, const __CFArray *a2, const __CFArray *a3)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (CFArrayGetCount(a2) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      Value = CFDictionaryGetValue(ValueAtIndex, kQPParseAttributeValueNamedEntityIdentifierKey);
      CFSetAddValue(Mutable, Value);
      ++v7;
    }

    while (v7 < CFArrayGetCount(a2));
  }

  v10 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a3) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = CFArrayGetValueAtIndex(a3, v11);
      v13 = CFDictionaryGetValue(v12, kQPParseAttributeValueNamedEntityIdentifierKey);
      if (CFSetContainsValue(Mutable, v13))
      {
        CFArrayAppendValue(v10, v12);
      }

      ++v11;
    }

    while (v11 < CFArrayGetCount(a3));
  }

  CFRelease(Mutable);
  return v10;
}

uint64_t QP::VisualGenerationFormatter::setParse(const void **a1, uint64_t **a2)
{
  v69 = *MEMORY[0x1E69E9840];
  QP::Formatter::clear(a1);
  QP::Formatter::clear(a1);
  v4 = a2[1];
  v60 = *a2;
  v61 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = QP::Formatter::setParse(a1, &v60);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v6 = a2[1];
  v40 = **a2;
  v59[0] = *a2;
  v59[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v5;
  Entities = QP::GPVisualGenerationFormatterCreateEntities(v59, *(a1[11] + 56));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (Entities)
  {
    if (CFArrayGetCount(Entities) <= 0)
    {
      CFRelease(Entities);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Entities, v8);
        v11 = ValueAtIndex;
        if (ValueAtIndex)
        {
          if (CFArrayGetCount(ValueAtIndex) >= 3)
          {
            v12 = CFArrayGetValueAtIndex(v11, 0);
            v13 = CFArrayGetValueAtIndex(v11, 1);
            v14 = CFArrayGetValueAtIndex(v11, 2);
            v57 = 0;
            valuePtr = 0;
            CFNumberGetValue(v12, kCFNumberCFIndexType, &valuePtr);
            CFNumberGetValue(v13, kCFNumberCFIndexType, &v57);
            if (v12)
            {
              if (v13 && v14)
              {
                v16 = v57;
                v15 = valuePtr;
                v53 = 0;
                v54 = &v53;
                v55 = 0x2000000000;
                v56 = 0;
                v49 = 0;
                v50 = &v49;
                v51 = 0x2000000000;
                v52 = 0;
                v43 = 0;
                v44 = &v43;
                v45 = 0x3802000000;
                v46 = __Block_byref_object_copy__18;
                v47 = __Block_byref_object_dispose__18;
                v48 = xmmword_1C6631880;
                v17 = *a2;
                v42[0] = MEMORY[0x1E69E9820];
                v42[1] = 0x40000000;
                v42[2] = ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke;
                v42[3] = &unk_1E82689B8;
                v42[8] = valuePtr;
                v42[9] = v57;
                v42[10] = v40;
                v42[4] = &v49;
                v42[5] = &v43;
                v42[6] = &v53;
                v42[7] = a1;
                QP::Parse::enumerateParseAttributes(v17, v42);
                v41 = xmmword_1C6631880;
                v70.length = &v41;
                v70.location = v16;
                v19 = QP::QPVisualGenerationFormatterSafetyRiskInRange(*(a1[11] + 56), v15, v70, v18);
                v20 = v19;
                if (v19)
                {
                  if (CFStringGetLength(v19))
                  {
                    v71.location = v15;
                    v71.length = v16;
                    QP::Formatter::setParseAttribute(a1, kQPParseAttributeSafetyRiskTypeKey, v20, v71);
                    v21 = v44;
                    v22 = v44[5];
                    if (v22 != -1)
                    {
                      v23 = v44[6];
                      v24 = v44[5];
                      v25 = v23;
                      if (v41 != -1)
                      {
                        if (v22 >= v41)
                        {
                          v24 = v41;
                        }

                        else
                        {
                          v24 = v44[5];
                        }

                        v26 = *(&v41 + 1) + v41;
                        if (v23 + v22 > *(&v41 + 1) + v41)
                        {
                          v26 = v23 + v22;
                        }

                        v25 = v26 - v24;
                      }

                      if (v15 <= v24)
                      {
                        v27 = v24;
                      }

                      else
                      {
                        v27 = v15;
                      }

                      v28 = (v25 + v24);
                      if ((v15 + v16) < v28)
                      {
                        v28 = v15 + v16;
                      }

                      v29 = v28 <= v27;
                      v30 = v28 - v27;
                      if (v29)
                      {
                        v31 = -1;
                      }

                      else
                      {
                        v31 = v27;
                      }

                      if (v29)
                      {
                        v30 = 0;
                      }

                      v44[5] = v31;
                      v21[6] = v30;
                      if (v22 != v31 || v23 != v30)
                      {
                        if (vgFormatterLogger(void)::token != -1)
                        {
                          QP::VisualGenerationFormatter::setParse();
                        }

                        v32 = vgFormatterLogger(void)::log;
                        if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                        {
                          v34 = v44[5];
                          v33 = v44[6];
                          *buf = 134218752;
                          *&buf[4] = v22;
                          v63 = 2048;
                          v64 = v23;
                          v65 = 2048;
                          v66 = v34;
                          v67 = 2048;
                          v68 = v33;
                          _os_log_impl(&dword_1C6584000, v32, OS_LOG_TYPE_DEFAULT, "Modified refined person range for NamedEntity due to annotation. Was (%ld, %ld) now (%ld, %ld)", buf, 0x2Au);
                        }
                      }
                    }
                  }
                }

                if (v50[3] || *(v54 + 24) == 1)
                {
                  if (v44[5] == -1)
                  {
                    if (vgFormatterLogger(void)::token != -1)
                    {
                      QP::VisualGenerationFormatter::setParse();
                    }

                    v35 = vgFormatterLogger(void)::log;
                    if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218240;
                      *&buf[4] = v15;
                      v63 = 2048;
                      v64 = v16;
                      _os_log_impl(&dword_1C6584000, v35, OS_LOG_TYPE_DEFAULT, "Missing a refined person range for NamedEntity at (%ld, %ld), using original range", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v16 = v44[6];
                    v15 = v44[5];
                  }

                  v72.location = v15;
                  v72.length = v16;
                  QP::Formatter::setParseAttribute(a1, kQPParseAttributeEntityTypeKey, @"NamedEntity", v72);
                  if ((v54[3] & 1) == 0 && CFArrayGetCount(v50[3]))
                  {
                    v73.location = v15;
                    v73.length = v16;
                    QP::Formatter::setParseAttribute(a1, kQPParseAttributeValueNamedEntitiesKey, v50[3], v73);
                  }
                }

                else
                {
                  v74.location = v15;
                  v74.length = v16;
                  QP::Formatter::setParseAttribute(a1, kQPParseAttributeEntityTypeKey, @"GenericEntity", v74);
                }

                v36 = v50[3];
                if (v36)
                {
                  CFRelease(v36);
                }

                ++v9;
                _Block_object_dispose(&v43, 8);
                _Block_object_dispose(&v49, 8);
                _Block_object_dispose(&v53, 8);
              }
            }
          }
        }

        ++v8;
      }

      while (CFArrayGetCount(Entities) > v8);
      CFRelease(Entities);
      if (v9)
      {
        v43 = 3;
        v37 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v43);
        *buf = v37;
        QP::Formatter::setResultValue(a1, kQPParseResultConfidenceKey, v37);
        if (v37)
        {
          CFRelease(v37);
        }
      }
    }
  }

  return v39;
}

void sub_1C6626280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *(v4 + 24);
  if (v3 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  v8 = *(a1 + 72) + v3;
  if (v8 >= v6 + v5)
  {
    v8 = v6 + v5;
  }

  if (v7 != -1 && v8 > v7)
  {
    v11 = *(a1 + 56);
    if (v6 == 1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 80), v5);
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
      if (CFCharacterSetIsCharacterMember(Predefined, CharacterAtIndex))
      {
        return;
      }

      v4 = *a2;
    }

    if (*(v4 + 200) != *(v4 + 192))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v48 = __Block_byref_object_copy__5;
      v49 = __Block_byref_object_dispose__6;
      v50 = 0;
      v51 = 0;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 0x40000000;
      v46[2] = ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke_7;
      v46[3] = &unk_1E8268990;
      v46[4] = buf;
      QP::ParseAttribute::enumerateAttributes(v4, v46);
      v15 = *(*&buf[8] + 40);
      v14 = *(*&buf[8] + 48);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = a2[1];
      *a2 = v15;
      a2[1] = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      _Block_object_dispose(buf, 8);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      v4 = *a2;
    }

    v17 = v4 + 48;
    v18 = *(v4 + 71);
    if (v18 < 0)
    {
      if (*(v4 + 56) != 17)
      {
        goto LABEL_33;
      }

      v17 = *v17;
    }

    else if (v18 != 17)
    {
      goto LABEL_33;
    }

    v19 = *v17;
    v20 = *(v17 + 8);
    v21 = *(v17 + 16);
    if (v19 != 0x6E756F724750516BLL || v20 != 0x6F73726550646564 || v21 != 110)
    {
LABEL_33:
      if ((*(v4 + 76) - 2) <= 2)
      {
        if (QP::VisualGenerationFormatter::shouldSuppressUnknownNamedEntityInRange(v11, *(v4 + 16)))
        {
          if (vgFormatterLogger(void)::token != -1)
          {
            QP::VisualGenerationFormatter::setParse();
          }

          v24 = vgFormatterLogger(void)::log;
          if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(*a2 + 16);
            v25 = *(*a2 + 24);
            *buf = 134218240;
            *&buf[4] = v26;
            *&buf[12] = 2048;
            *&buf[14] = v25;
            _os_log_impl(&dword_1C6584000, v24, OS_LOG_TYPE_DEFAULT, "Ignoring prediction for unknown person at (%ld, %ld)", buf, 0x16u);
          }
        }

        else
        {
          v27 = *(*(a1 + 40) + 8);
          v28 = *(v27 + 40);
          v29 = *(*a2 + 16);
          v30 = *(*a2 + 24);
          if (v28 != -1 && *(v27 + 48) != 0)
          {
            if (v30)
            {
              v30 += v29 - v28;
            }

            else
            {
              v30 = *(v27 + 48);
            }

            if (v29 == -1)
            {
              v30 = *(v27 + 48);
            }

            v29 = *(v27 + 40);
          }

          *(v27 + 40) = v29;
          *(v27 + 48) = v30;
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }

      return;
    }

    v32 = *(v4 + 184);
    if (v32)
    {
      v32 = std::__shared_weak_count::lock(v32);
      v33 = v32;
      if (v32)
      {
        v34 = *(v4 + 176);
        if (*(v34 + 88) != 16)
        {
LABEL_74:
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          return;
        }

        v35 = 0;
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v44 = v34;
        v45 = v32;
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_58;
      }

      if (MEMORY[0x58] != 16)
      {
        goto LABEL_73;
      }
    }

    else if (MEMORY[0x58] != 16)
    {
      return;
    }

    v33 = 0;
    v44 = 0;
    v45 = 0;
    v35 = 1;
LABEL_58:
    v36 = QP::VisualGenerationFormatter::createEntities(v32, &v44);
    v37 = v36;
    if ((v35 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    v38 = *(*(a1 + 32) + 8);
    v39 = *(v38 + 24);
    if (v39)
    {
      *(*(*(a1 + 32) + 8) + 24) = QP::VisualGenerationFormatter::createEntitiesWithIntersection(v36, *(v38 + 24), v37);
      CFRelease(v37);
      CFRelease(v39);
    }

    else
    {
      *(v38 + 24) = v37;
    }

    v40 = *(*(a1 + 40) + 8);
    v41 = *(v40 + 40);
    v42 = *(*a2 + 16);
    v43 = *(*a2 + 24);
    if (v41 != -1 && *(v40 + 48))
    {
      if (v43)
      {
        v43 += v42 - v41;
      }

      else
      {
        v43 = *(v40 + 48);
      }

      if (v42 == -1)
      {
        v43 = *(v40 + 48);
      }

      v42 = *(v40 + 40);
    }

    *(v40 + 40) = v42;
    *(v40 + 48) = v43;
    if ((v35 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

LABEL_73:
    if (!v33)
    {
      return;
    }

    goto LABEL_74;
  }
}

void sub_1C662672C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if ((v24 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke_7(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  v4 = *a2;
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = (v4 + 48);
  v6 = *(v4 + 71);
  if (v6 < 0)
  {
    if (*(v4 + 56) != 17)
    {
      return;
    }

    v5 = *v5;
  }

  else if (v6 != 17)
  {
    return;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 16);
  if (v7 == 0x6E756F724750516BLL && v8 == 0x6F73726550646564 && v9 == 110)
  {
    v12 = (v3 + 48);
    v13 = *(v3 + 71);
    if (v13 < 0)
    {
      if (*(v3 + 56) != 17)
      {
LABEL_27:
        v19 = a2[1];
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v2 + 48);
        *(v2 + 40) = v4;
        *(v2 + 48) = v19;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        return;
      }

      v12 = *v12;
    }

    else if (v13 != 17)
    {
      goto LABEL_27;
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = *(v12 + 16);
    if (v14 == 0x6E756F724750516BLL && v15 == 0x6F73726550646564 && v16 == 110)
    {
      return;
    }

    goto LABEL_27;
  }
}

void QP::VisualGenerationFormatter::~VisualGenerationFormatter(const void **this)
{
  QP::VisualGenerationFormatter::~VisualGenerationFormatter(this);

  JUMPOUT(0x1C695B850);
}

{
  *this = &unk_1F45E9A40;
  nlp::CFScopedPtr<void *>::reset(this + 13, 0);
  v2 = this[12];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  QP::Formatter::~Formatter(this);
}

void ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke(void *a1, uint64_t *a2)
{
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  v5 = *a2;
  v6 = *(*a2 + 16);
  v7 = *(v3 + 48) + v4;
  if (v4 > v6 || v7 < *(*a2 + 24) + v6)
  {
    return;
  }

  if (*(v5 + 200) != *(v5 + 192))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3802000000;
    v31 = __Block_byref_object_copy__5;
    v32 = __Block_byref_object_dispose__6;
    v33 = 0;
    v34 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke_2;
    v27[3] = &unk_1E82689E0;
    v27[4] = &v28;
    QP::ParseAttribute::enumerateAttributes(v5, v27);
    v11 = v29[5];
    v10 = v29[6];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a2[1];
    *a2 = v11;
    a2[1] = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    _Block_object_dispose(&v28, 8);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v5 = *a2;
  }

  v13 = v5 + 48;
  v14 = *(v5 + 71);
  if (v14 < 0)
  {
    if (*(v5 + 56) != 17)
    {
      goto LABEL_25;
    }

    v13 = *v13;
  }

  else if (v14 != 17)
  {
    goto LABEL_25;
  }

  v15 = *v13;
  v16 = *(v13 + 8);
  v17 = *(v13 + 16);
  if (v15 != 0x6E756F724750516BLL || v16 != 0x6F73726550646564 || v17 != 110)
  {
LABEL_25:
    if ((*(v5 + 76) - 2) > 2)
    {
      return;
    }
  }

  v20 = a1[4];
  v21 = a2[1];
  v25 = v5;
  v26 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v20 + 16))(v20, &v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v22 = *(*a2 + 24) + *(*a2 + 16);
  v23 = a1[6] - v22 + a1[7];
  v24 = *(a1[5] + 8);
  *(v24 + 40) = v22;
  *(v24 + 48) = v23;
}

void sub_1C6626ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  v4 = *a2;
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = (v4 + 48);
  v6 = *(v4 + 71);
  if (v6 < 0)
  {
    if (*(v4 + 56) != 17)
    {
      return;
    }

    v5 = *v5;
  }

  else if (v6 != 17)
  {
    return;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 16);
  if (v7 == 0x6E756F724750516BLL && v8 == 0x6F73726550646564 && v9 == 110)
  {
    v12 = (v3 + 48);
    v13 = *(v3 + 71);
    if (v13 < 0)
    {
      if (*(v3 + 56) != 17)
      {
LABEL_27:
        v19 = a2[1];
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v2 + 48);
        *(v2 + 40) = v4;
        *(v2 + 48) = v19;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        return;
      }

      v12 = *v12;
    }

    else if (v13 != 17)
    {
      goto LABEL_27;
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = *(v12 + 16);
    if (v14 == 0x6E756F724750516BLL && v15 == 0x6F73726550646564 && v16 == 110)
    {
      return;
    }

    goto LABEL_27;
  }
}

os_log_t ___ZL17vgFormatterLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "VisualGenerationFormatter");
  vgFormatterLogger(void)::log = result;
  return result;
}

void nlp::CFScopedPtr<void *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

BOOL nlp::traverseCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    a2 += 20;
    v3 = *(v2 + 16);
    v4 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return nlp::BurstTrieAdd(a1, a2, v3, v4);
}

BOOL nlp::BurstTrieAdd(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 2080))
  {
    return 0;
  }

  v25[11] = v4;
  v25[12] = v5;
  if (*(a1 + 2064))
  {
    return 0;
  }

  v8 = 0;
  v24 = 0;
  if ((a3 - 1) <= 0x3FE)
  {
    v9 = a4;
    if (a4)
    {
      v11 = 0;
      v12 = 1;
      v13 = a1;
      while (1)
      {
        v14 = v13 + 1;
        v15 = *&v13[2 * *(a2 + v11) + 1];
        if ((v15 & 3) != 1)
        {
          break;
        }

        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        ++v11;
        ++v12;
        if (a3 == v11)
        {
          v16 = *v13;
          *v13 = a4;
          if (!v16)
          {
            goto LABEL_18;
          }

LABEL_19:
          v8 = 1;
          return v8 != 0;
        }
      }

      if ((v15 & 3) != 2)
      {
        v20 = a3 - v12;
        v21 = (a3 - v12);
        v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
        memcpy((v22 + 14), (a2 + v12), v21);
        *(v22 + 14 + v20) = 0;
        *(v22 + 12) = v20;
        *(v22 + 8) = v9;
        *v22 = 0;
        *&v14[2 * *(a2 + v11)] = v22 | 2;
        goto LABEL_18;
      }

      v25[0] = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v17 = nlp::addListNode(a1, v25, a2, a3, v12, a4, &v24);
      v18 = v25[0];
      if (v17 >= *(a1 + 2088))
      {
        v18 = nlp::burstLevel(a1, v25[0], &v24);
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      v23 = v19 | v18;
      v8 = v24;
      *&v14[2 * *(a2 + v11)] = v23;
      if (v8 == 2)
      {
LABEL_18:
        ++*(a1 + 2060);
        goto LABEL_19;
      }
    }
  }

  return v8 != 0;
}

uint64_t nlp::TrieCompletionGetCompletion(uint64_t a1)
{
  if (a1)
  {
    return a1 + 20;
  }

  else
  {
    return 0;
  }
}

uint64_t nlp::TrieCompletionGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t nlp::TrieCompletionGetPayload(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t nlp::rankedTraverseCallback(uint64_t a1, unsigned __int32 *a2, __n128 a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2 + 5;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = a2[4];
    v6 = a2[2];
    v7 = *a2;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0.0;
  }

  v10 = 0;
  nlp::BurstTrieAddWithScore(a1, v4, v5, v6, 0, v9, v7);
  return std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v9);
}

void sub_1C6626F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL nlp::BurstTrieAddWithScore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2080) || (*(a1 + 2064) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  v16 = 0;
  if ((a3 - 1) <= 0x3FE && a4)
  {
    v15 = 0;
    std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v17, a6);
    nlp::addLevelRanked(a1, a1, a2, a3, 0, a4, &v15, &v16, a7, a5, v17);
    std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v17);
    v14 = v16;
    if (v16 == 2)
    {
      ++*(a1 + 2060);
    }

    return v14 != 0;
  }

  return result;
}

void sub_1C6627090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double nlp::BurstTrieCreateMutableWithOptions(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
  if (v4)
  {
    result = 0.0;
    *(v4 + 2060) = 0u;
    *(v4 + 519) = 1;
    *(v4 + 260) = 0;
    *(v4 + 2092) = 0x200000000;
    *(v4 + 516) = a2;
    *(v4 + 522) = a1;
  }

  return result;
}

char *nlp::burstTrieCreateWithBytes(char *this, const char *a2)
{
  if (this)
  {
    v2 = this;
    if (*this == 12648430 || *this == -900339842)
    {
      v4 = a2;
      this = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
      *(this + 260) = v2;
      v5 = *(v2 + 3);
      *(this + 2068) = *(v2 + 2);
      *(this + 515) = v5;
      v6 = *(v2 + 4);
      *(this + 516) = v6;
      if (*v2 == -900339842)
      {
        *(this + 516) = v6 | 1;
      }

      *(this + 522) = *(v2 + 5);
      *(this + 523) = v4;
      *(this + 524) = 2;
      *(this + 519) = 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void nlp::BurstTrieRelease(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 519) - 1;
    *(a1 + 519) = v2;
    if (!v2)
    {
      v3 = *(a1 + 260);
      if (v3)
      {
        if (*(a1 + 523))
        {
          munmap(v3, *(a1 + 2068));
        }
      }

      else if (a1[2064])
      {
        nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(a1);
      }

      else
      {
        nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(a1);
      }

      free(a1);
    }
  }
}

uint64_t nlp::BurstTrieCreateMutableCopy(int *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  nlp::BurstTrieCreateMutableWithOptions(a1[522], a1[516]);
  v3 = v2;
  if (a1[516])
  {
    v4 = v7;
    v7[0] = &unk_1F45E9B88;
    v7[1] = nlp::rankedTraverseCallback;
    v7[3] = v7;
    nlp::BurstTrieSearch(a1, 0, 0, v2, v7, 0xFFFFFFFFLL);
  }

  else
  {
    v4 = v6;
    v6[0] = &unk_1F45E9B88;
    v6[1] = nlp::traverseCallback;
    v6[3] = v6;
    nlp::BurstTrieSearch(a1, 0, 0, v2, v6, 0xFFFFFFFFLL);
  }

  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v4);
  return v3;
}

void sub_1C66273BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlp::BurstTrieSearch(nlp *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if ((a6 & 0x80000000) != 0)
  {
    v9 = 0xFFFFFFFF00000003;
    v10 = 0;
    v11 = a4;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__value_func[abi:ne200100](v12, a5);
    nlp::searchWithContext(a1, a2, a3, 0, &v9);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v12);
  }

  else if (nlp::BurstTrieCreateCursorWithBytes(a1, a2, a3))
  {
    operator new();
  }
}

void nlp::addLevelRanked(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v13 = a9;
  v34 = *MEMORY[0x1E69E9840];
  if (a5 >= a4)
  {
    *a8 = 2;
    if (*(a2 + 8))
    {
      *a8 = 1;
      if (*(a11 + 24))
      {
        std::function<float ()(void *,float,float)>::operator()(a11, a10, *(a2 + 4), a9);
        v13 = v21;
      }
    }

    *(a2 + 4) = v13;
    *(a2 + 8) = a6;
    *a7 = v13;
  }

  else
  {
    v30 = (a3 + a5);
    v20 = *(a2 + 12 + 8 * *v30);
    if ((v20 & 3) == 2)
    {
      v29 = a2 + 12;
      v31 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v32, a11);
      v22 = nlp::addListNodeRanked(a1, &v31, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v32);
      std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v32);
      v23 = v31;
      if (v22 >= *(a1 + 2088))
      {
        v23 = nlp::burstLevelRanked(a1, v31, a7, a8);
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v28 = v24 | v23;
      v27 = v30;
    }

    else
    {
      if ((v20 & 3) == 1)
      {
        std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v33, a11);
        nlp::addLevelRanked(a1, v20 & 0xFFFFFFFFFFFFFFFCLL, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v33);
        std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v33);
        goto LABEL_15;
      }

      v29 = a2 + 12;
      *a7 = a9;
      v25 = ~a5 + a4;
      v26 = malloc_type_calloc(1uLL, v25 + 23, 0x10200402E77EEF7uLL);
      v27 = v30;
      memcpy((v26 + 22), v30 + 1, v25);
      *(v26 + 22 + v25) = 0;
      *(v26 + 20) = v25;
      *(v26 + 16) = a6;
      *(v26 + 8) = v13;
      *(v26 + 12) = v13;
      *v26 = 0;
      v28 = v26 | 2;
      *a8 = 2;
    }

    *(v29 + 8 * *v27) = v28;
  }

LABEL_15:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }
}

void sub_1C66277B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

nlp *nlp::searchWithContext(nlp *result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (a3 <= 0x3FF)
  {
    v9 = result;
    v10 = nlp::sharedBuffer(result);
    memcpy(v10, a2, a3);
    *(v10 + a3) = 0;
    v11 = *(v9 + 260);
    v12 = *(v9 + 516);
    if (v11)
    {
      v13 = *(v11 + 4) & 0xFFFFFFFC;
      if (v12)
      {
        v14 = v18;
        v18[0] = &unk_1F45E9AD8;
        v18[1] = nlp::containsKey;
        v18[3] = v18;
        nlp::searchDiskLevelRanked(v9, v13 + v11, v10, a3, 0, a4, a5, v18);
      }

      else
      {
        v14 = v17;
        v17[0] = &unk_1F45E9AD8;
        v17[1] = nlp::containsKey;
        v17[3] = v17;
        nlp::searchDiskLevel(v9, v13 + v11, v10, a3, 0, a4, a5, v17);
      }
    }

    else if (v12)
    {
      v14 = v16;
      v16[0] = &unk_1F45E9AD8;
      v16[1] = nlp::containsKey;
      v16[3] = v16;
      nlp::searchLevelRanked(v9, v10, a3, 0, a4, a5, v16);
    }

    else
    {
      v14 = v15;
      v15[0] = &unk_1F45E9AD8;
      v15[1] = nlp::containsKey;
      v15[3] = v15;
      nlp::searchLevel(v9, v10, a3, 0, a4, a5, v15);
    }

    return std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v14);
  }

  return result;
}

void sub_1C66279F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *nlp::BurstTrieCreateCursorWithBytes(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
  if (!nlp::BurstTrieSetCursorWithBytes(a1, v6, a2, a3) && v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

nlp *nlp::BurstTrieTraverseFromCursor(nlp *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = a4;
    v7 = result;
    result = nlp::sharedBuffer(result);
    v8 = result;
    v16 = 0;
    v9 = *(v7 + 7);
    if (v9)
    {
      if (v9 != 1)
      {
        return result;
      }

      v13 = *v7;
      v14 = *(v7 + 2);
      v10 = *(v7 + 4);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v18, a3);
      nlp::traverseFromCompactMapCursor(v10, &v13, v8, 4096, 0, &v16, a2, v18);
      v11 = v18;
    }

    else
    {
      v13 = *v7;
      v14 = *(v7 + 2);
      v15 = *(v7 + 6);
      v12 = *(v7 + 4);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v17, a3);
      nlp::traverseFromMapCursor(v12, &v13, v8, 0, &v16, v4, a2, v17);
      v11 = v17;
    }

    return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v11);
  }

  return result;
}

void sub_1C6627BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v11 = a5;
  v10 = a7;
  v9 = a6;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t nlp::traverseFromCompactMapCursor(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = a4;
  v13 = result;
  v66 = *MEMORY[0x1E69E9840];
  v14 = *a2 & 3;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, a8);
      v16 = *(v13 + 2064);
      v17 = ((*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080));
      if (v16)
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v65, v62);
        v27 = *v17 - 8;
        if (*v17 != 8)
        {
          v28 = 0;
          do
          {
            v29 = v17 + v28 + 8;
            v30 = *(v29 + 8);
            v31 = *(a2 + 12);
            if (v30 >= v31)
            {
              v32 = v30 - v31;
              memcpy((a3 + v9), (v29 + v31 + 10), v30 - v31);
              *(a3 + v32 + v9) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v65, a7, a3, *(v29 + 8), *(v29 + 4), a6, *v29);
              LODWORD(v30) = *(v29 + 8);
            }

            v28 += v30 + 10;
          }

          while (v28 < v27);
          goto LABEL_36;
        }
      }

      else if ((v16 & 4) != 0)
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v65, v62);
        v33 = *v17 - 4;
        v34 = *(a2 + 8);
        if (v34 < v33)
        {
          v35 = v17 + 1;
          do
          {
            v36 = v35 + v34;
            v37 = *(v36 + 2);
            v38 = *(a2 + 12);
            if (v37 >= v38)
            {
              v40 = v37 - v38;
              memcpy((a3 + v9 + v36[6]), &v36[v38 + 7], v37 - v38);
              *(a3 + v40 + v9 + v36[6]) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v65, a7, a3, *(v36 + 2), *v36, a6, 0.0);
              v39 = *(v36 + 2) + *(a2 + 8);
            }

            else
            {
              v39 = v34 + v37;
            }

            v34 = v39 + 7;
            *(a2 + 8) = v34;
          }

          while (v34 < v33);
          goto LABEL_36;
        }
      }

      else
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v65, v62);
        v19 = *v17 - 4;
        v20 = *(a2 + 8);
        if (v20 < v19)
        {
          do
          {
            v21 = v17 + v20 + 4;
            v22 = *(v21 + 4);
            v23 = *(a2 + 12);
            if (v22 >= v23)
            {
              v25 = v22 - v23;
              memcpy((a3 + v9), (v21 + v23 + 6), v22 - v23);
              *(a3 + v25 + v9) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v65, a7, a3, *(v21 + 4), *v21, a6, *v21);
              v24 = *(v21 + 4) + *(a2 + 8);
            }

            else
            {
              v24 = v20 + v22;
            }

            v20 = v24 + 6;
            *(a2 + 8) = v20;
          }

          while (v20 < v19);
LABEL_36:
          v18 = v65;
        }
      }

      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v18);
      v15 = v62;
      return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v15);
    }

    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, a8);
    v26 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080);
    if ((*(v13 + 2064) & 1) == 0)
    {
      if (*(v26 + 32))
      {
        *(a3 + v9) = 0;
        std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v63, a7, a3, v9, *(v26 + 32), a6, 0.0);
        if (v9 >= v10 || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }

LABEL_39:
        v41 = 0;
        v42 = v10 - 1;
        while (1)
        {
          *(a3 + v9) = v41;
          v43 = *(v26 + 8 * (v41 >> 6));
          if ((v43 & (1 << v41)) != 0)
          {
            if (v41 >= 0x40)
            {
              v44 = 0;
              v45 = v41 >> 6;
              v46 = v26;
              do
              {
                v47 = *v46++;
                v48 = vcnt_s8(v47);
                v48.i16[0] = vaddlv_u8(v48);
                v44 += v48.i32[0];
                --v45;
              }

              while (v45);
            }

            else
            {
              v44 = 0;
            }

            v49 = vcnt_s8((v43 & ((1 << v41) - 1)));
            v49.i16[0] = vaddlv_u8(v49);
            *a2 = *(v26 + 36 + 4 * (v44 + v49.i32[0]));
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v65, v63);
            nlp::traverseFromCompactMapCursor(v13, a2, a3, v42, v9 + 1, a6, a7, v65);
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v65);
            if (v41 > 0xFE || (*a6 & 1) != 0)
            {
              goto LABEL_62;
            }
          }

          else if (v41 > 0xFE)
          {
            goto LABEL_62;
          }

          ++v41;
        }
      }

      if (v9 < v10)
      {
        goto LABEL_39;
      }

LABEL_62:
      v15 = v63;
      return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v15);
    }

    if (*(v26 + 40))
    {
      *(a3 + v9) = 0;
      std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v63, a7, a3, v9, *(v26 + 40), a6, *(v26 + 36));
      if (v9 >= v10 || (*a6 & 1) != 0)
      {
        goto LABEL_62;
      }
    }

    else if (v9 >= v10)
    {
      goto LABEL_62;
    }

    v50 = 0;
    v51 = v10 - 1;
    while (1)
    {
      *(a3 + v9) = v50;
      v52 = *(v26 + 8 * (v50 >> 6));
      if ((v52 & (1 << v50)) != 0)
      {
        if (v50 >= 0x40)
        {
          v53 = 0;
          v54 = v50 >> 6;
          v55 = v26;
          do
          {
            v56 = *v55++;
            v57 = vcnt_s8(v56);
            v57.i16[0] = vaddlv_u8(v57);
            v53 += v57.i32[0];
            --v54;
          }

          while (v54);
        }

        else
        {
          v53 = 0;
        }

        v58 = vcnt_s8((v52 & ((1 << v50) - 1)));
        v58.i16[0] = vaddlv_u8(v58);
        v59 = *(v26 + 44 + 4 * (v53 + v58.i32[0]));
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = v59;
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v65, v63);
        nlp::traverseFromCompactMapCursor(v13, a2, a3, v51, v9 + 1, a6, a7, v65);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v65);
        if (v50 > 0xFE || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }
      }

      else if (v50 > 0xFE)
      {
        goto LABEL_62;
      }

      ++v50;
    }
  }

  if (v14)
  {
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v64, a8);
    v15 = v64;
    nlp::traverseFromCompactMapCursorMappedLevel(v13, a2, a3, v10, v9, a6, a7, v64);
  }

  else
  {
    if (*a2 != *(*(result + 2080) + 4))
    {
      return result;
    }

    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v61, a8);
    v15 = v61;
    nlp::traverseFromCompactMapCursorMappedLevel(v13, a2, a3, v10, v9, a6, a7, v61);
  }

  return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v15);
}

void sub_1C662825C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::traverseFromCompactMapCursorMappedLevel(uint64_t result, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v26 = *MEMORY[0x1E69E9840];
  v13 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
  v14 = *(v13 + 1024);
  if (*(result + 2064))
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(a8, a7, a3, 0, *(v13 + 1024), a6, *(v13 + 1032));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        return result;
      }
    }

    else if (a5 >= a4)
    {
      return result;
    }

    v18 = 0;
    do
    {
      *(a3 + a5) = v18;
      v19 = *(v13 + 4 * v18);
      if (v18)
      {
        v20 = a5 + 1;
      }

      else
      {
        v20 = a5;
      }

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v19;
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v25, a8);
      nlp::traverseFromCompactMapCursor(v12, a2, a3, a4 - (v18 != 0), v20, a6, a7, v25);
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v25);
      if (*a6)
      {
        break;
      }

      v17 = v18++ == 255;
    }

    while (!v17);
  }

  else
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(a8, a7, a3, 0, *(v13 + 1024), a6, 0.0);
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        return result;
      }
    }

    else if (a5 >= a4)
    {
      return result;
    }

    v15 = 0;
    do
    {
      *(a3 + a5) = v15;
      *a2 = *(v13 + 4 * v15);
      a2[1] = 0;
      *(a2 + 4) = 0;
      if (v15)
      {
        v16 = a5 + 1;
      }

      else
      {
        v16 = a5;
      }

      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v24, a8);
      nlp::traverseFromCompactMapCursor(v12, a2, a3, a4 - (v15 != 0), v16, a6, a7, v24);
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v24);
      if (*a6)
      {
        break;
      }

      v17 = v15++ == 255;
    }

    while (!v17);
  }

  return result;
}

void sub_1C66284FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::BurstTrieSetCursorWithBytes(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a1 || !a2 || !nlp::burstTrieSetCursor(a1, a2))
  {
    return 0;
  }

  return nlp::BurstTrieCursorAdvanceWithBytes(a2, a3, a4);
}

uint64_t nlp::burstTrieSetCursor(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  *(a2 + 32) = a1;
  v2 = *(a1 + 2080);
  if (v2)
  {
    if (*v2 == -900339842 || *v2 == 12648430 && v2[7] == 2)
    {
      result = 1;
      *(a2 + 28) = 1;
      v4 = v2[1];
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      return result;
    }

    return 0;
  }

  *(a2 + 28) = 0;
  *(a2 + 8) = a1 | 1;
  *(a2 + 16) = 0;
  return 1;
}

uint64_t nlp::BurstTrieCursorAdvanceWithBytes(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 28);
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = *result;
        v6 = *(result + 8);
        v7 = *(result + 16);
        v8 = *(result + 20);
        result = nlp::advanceCompactMapCursor(*(result + 32), result, a2, a3);
        if (!result)
        {
          *v3 = v5;
          *(v3 + 8) = v6;
          *(v3 + 16) = v7;
          *(v3 + 20) = v8;
          return result;
        }

        return 1;
      }

      return 0;
    }

    else
    {
      v10 = *result;
      v9 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 24);
      result = nlp::advanceMapCursor(*(result + 32), result, a2, a3);
      if (result)
      {
        return 1;
      }

      *v3 = v10;
      *(v3 + 8) = v9;
      *(v3 + 16) = v11;
      *(v3 + 24) = v12;
    }
  }

  return result;
}

uint64_t nlp::advanceCompactMapCursor(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v8 = *a2;
  v9 = *a2 & 3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      if (v8 == *(*(a1 + 2080) + 4))
      {
        v10 = nlp::advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
        return v10 & 1;
      }

LABEL_23:
      v10 = 0;
      return v10 & 1;
    }

    v20 = nlp::advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
    goto LABEL_70;
  }

  if (v9 != 2)
  {
    v21 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
    if (*(a1 + 2064))
    {
      if (a4)
      {
        v27 = *a3;
        v28 = v27 >> 6;
        v29 = v21[v27 >> 6];
        v30 = 1 << v27;
        if (((1 << v27) & *&v29) != 0)
        {
          if (v27 >= 0x40)
          {
            v31 = 0;
            v57 = v21;
            do
            {
              v58 = *v57++;
              v59 = vcnt_s8(v58);
              v59.i16[0] = vaddlv_u8(v59);
              v31 += v59.i32[0];
              --v28;
            }

            while (v28);
          }

          else
          {
            v31 = 0;
          }

          v60 = vcnt_s8(((v30 - 1) & *&v29));
          v60.i16[0] = vaddlv_u8(v60);
          v56 = v21[5].u32[v31 + v60.i32[0] + 1];
          goto LABEL_69;
        }

        goto LABEL_43;
      }

      *(a2 + 4) = v21[5].i32[0];
      *(a2 + 5) = v21[4].i32[1];
    }

    else
    {
      if (a4)
      {
        v22 = *a3;
        v23 = v22 >> 6;
        v24 = v21[v22 >> 6];
        v25 = 1 << v22;
        if (((1 << v22) & *&v24) != 0)
        {
          if (v22 >= 0x40)
          {
            v26 = 0;
            v52 = v21;
            do
            {
              v53 = *v52++;
              v54 = vcnt_s8(v53);
              v54.i16[0] = vaddlv_u8(v54);
              v26 += v54.i32[0];
              --v23;
            }

            while (v23);
          }

          else
          {
            v26 = 0;
          }

          v55 = vcnt_s8(((v25 - 1) & *&v24));
          v55.i16[0] = vaddlv_u8(v55);
          v56 = v21[4].u32[v26 + v55.i32[0] + 1];
LABEL_69:
          nlp::updateCompactMapCursorPointer(a1, a2, v56);
          v20 = nlp::advanceCompactMapCursor(a1, a2, a3 + 1, v4 - 1);
          goto LABEL_70;
        }

LABEL_43:
        v20 = 0;
LABEL_70:
        v61 = v20 == 0;
LABEL_71:
        v10 = !v61;
        return v10 & 1;
      }

      *(a2 + 4) = v21[4].i32[0];
    }

    v20 = 1;
    goto LABEL_70;
  }

  v11 = *(a1 + 2064);
  v12 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
  v13 = *v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13 - 4;
    if (v13 == 4)
    {
      goto LABEL_23;
    }

    if ((v11 & 4) != 0)
    {
      if (a4)
      {
        v44 = *(a2 + 2);
        if (v44 >= v14)
        {
          goto LABEL_23;
        }

        v45 = 0;
        v46 = v12 + 1;
        while (1)
        {
          v47 = v46 + v44;
          v48 = v47[6];
          LODWORD(v49) = v48;
          if (v48 < a4)
          {
            if (v48 <= *(v47 + 2))
            {
              v49 = *(v47 + 2);
            }

            else
            {
              v49 = v47[6];
            }

            v50 = v47[6];
            while (v49 != v50)
            {
              if (v47[(v50 + *(a2 + 3)) + 7] != a3[v45 + v50])
              {
                LODWORD(v49) = v50;
                break;
              }

              if (a4 == ++v50)
              {
                LODWORD(v49) = a4;
                break;
              }
            }
          }

          v45 += v49;
          v51 = *(v47 + 2);
          if (v45 == a4)
          {
            break;
          }

          v10 = 0;
          v44 += v51 + 7;
          *(a2 + 2) = v44;
          if (v44 >= v14)
          {
            return v10 & 1;
          }
        }

        v64 = *(a2 + 3) + a4;
        *(a2 + 4) = 0;
        if (v51 + v48 == v64)
        {
          *(a2 + 4) = *v47;
        }

        goto LABEL_87;
      }

      v63 = v12 + *(a2 + 2);
      if (*(v63 + 4) | v63[10])
      {
LABEL_78:
        *(a2 + 4) = 0;
        goto LABEL_88;
      }
    }

    else
    {
      if (a4)
      {
        v15 = *(a2 + 2);
        if (v15 >= v14)
        {
          goto LABEL_23;
        }

        v16 = v12 + 1;
        v17 = *(a2 + 3);
        while (1)
        {
          v18 = v16 + v15;
          v19 = *(v18 + 2);
          if (v19 >= v17 && !memcmp(&v18[v17 + 6], a3, v4))
          {
            break;
          }

          v10 = 0;
          v15 += v19 + 6;
          *(a2 + 2) = v15;
          if (v15 >= v14)
          {
            return v10 & 1;
          }
        }

        *(a2 + 4) = 0;
        if (v19 - v17 == v4)
        {
          *(a2 + 4) = *v18;
        }

        v64 = v17 + v4;
LABEL_87:
        *(a2 + 3) = v64;
        goto LABEL_88;
      }

      v63 = v12 + *(a2 + 2);
      if (*(v63 + 4))
      {
        goto LABEL_78;
      }
    }

    *(a2 + 4) = 0;
    *(a2 + 4) = *(v63 + 1);
    goto LABEL_88;
  }

  if (v13 == 4)
  {
    goto LABEL_23;
  }

  v32 = *(a2 + 2);
  v33 = *(a2 + 3);
  v34 = *(a2 + 4);
  v35 = *(a2 + 5);
  v36 = v13 - 8;
  if (v13 == 8)
  {
    v38 = 0;
LABEL_76:
    *(a2 + 2) = v32;
    *(a2 + 3) = v33;
    *(a2 + 4) = v34;
    *(a2 + 5) = v35;
    v61 = v38 == 0;
    goto LABEL_71;
  }

  v37 = 0;
  v38 = 0;
  v39 = *(a2 + 3);
  v40 = v12 + 2;
  v41 = v33 + a4;
  while (1)
  {
    while (1)
    {
      v42 = v40 + v37;
      v43 = *(v42 + 4);
      if (v41 <= v43)
      {
        break;
      }

      v37 += v43 + 10;
      if (v37 >= v36)
      {
        goto LABEL_76;
      }
    }

    v66 = v38;
    v67 = v34;
    v68 = v33;
    v69 = v32;
    v65 = v39;
    if (!memcmp(&v42[v39 + 10], a3, v4))
    {
      break;
    }

    v33 = v68;
    v32 = v69;
    v38 = v66;
    v34 = v67;
LABEL_41:
    v37 += v43 + 10;
    v39 = v65;
    if (v37 >= v36)
    {
      goto LABEL_76;
    }
  }

  if (v41 != v43)
  {
    v34 = v67;
    v33 = v68;
    if (!v66)
    {
      v34 = 0;
      v33 = v68 + v4;
    }

    v32 = v69;
    if (!v66)
    {
      v32 = v37;
      v35 = 0.0;
    }

    v38 = 1;
    goto LABEL_41;
  }

  *(a2 + 4) = 0;
  *(a2 + 4) = *(v42 + 1);
  *(a2 + 5) = *v42;
  *(a2 + 2) = v37;
  *(a2 + 3) = v41;
LABEL_88:
  v10 = 1;
  return v10 & 1;
}

uint64_t nlp::advanceMapCursor(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a2 + 8);
  if ((v8 & 3) == 2)
  {
    v11 = nlp::advanceMapCursorTrieList(a1, a2, a3, a4) != 0;
  }

  else
  {
    if ((v8 & 3) == 1)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(a1 + 2064))
      {
        if (a4)
        {
          v10 = 3;
          goto LABEL_10;
        }

        *(a2 + 20) = v9[2];
        *(a2 + 24) = v9[1];
      }

      else
      {
        if (a4)
        {
          v10 = 1;
LABEL_10:
          nlp::updateMapCursorPointer(a1, a2, *&v9[2 * *a3 + v10]);
          v11 = nlp::advanceMapCursor(a1, a2, a3 + 1, (v4 - 1));
          return v11 & 1;
        }

        *(a2 + 20) = *v9;
      }

      v11 = 1;
      return v11 & 1;
    }

    v11 = 0;
  }

  return v11 & 1;
}

void *nlp::sharedBuffer(nlp *this)
{
  {
    v3 = 0;
    pthread_key_create(&v3, MEMORY[0x1E69E9B38]);
    nlp::sharedBuffer(void)::key = v3;
  }

  v1 = pthread_getspecific(nlp::sharedBuffer(void)::key);
  if (!v1)
  {
    v1 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    pthread_setspecific(nlp::sharedBuffer(void)::key, v1);
  }

  return v1;
}

uint64_t nlp::traverseFromMapCursor(uint64_t result, uint64_t a2, uint64_t a3, int a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = *(result + 2064);
  v15 = *(a2 + 8) & 3;
  if (v15 <= 1)
  {
    if (!v15)
    {
      return result;
    }

    v16 = result;
    if ((v14 & 1) == 0)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v60, a8);
      v17 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      if (*v17)
      {
        std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v60, a7, a3, a4, *v17, a5, *(a2 + 24));
        if (!a6 || (*a5 & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (!a6)
      {
LABEL_47:
        v47 = v60;
        return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v47);
      }

      v48 = 0;
      v49 = v17 + 1;
      v50 = a6 - 1;
      do
      {
        *(a3 + a4) = v48;
        nlp::updateMapCursorPointer(v16, a2, *&v49[2 * v48]);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, v60);
        nlp::traverseFromMapCursor(v16, a2, a3, a4 + 1, a5, v50, a7, v62);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v62);
        if (*a5)
        {
          break;
        }

        v51 = v48++ == 255;
      }

      while (!v51);
      goto LABEL_47;
    }

    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v61, a8);
    v34 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 8);
    if (v35)
    {
      std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v61, a7, a3, a4, v35, a5, *(a2 + 24));
      if (!a6 || (*a5 & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    else if (!a6)
    {
LABEL_53:
      v47 = v61;
      return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v47);
    }

    v52 = 0;
    v53 = v34 + 12;
    v54 = a6 - 1;
    do
    {
      *(a3 + a4) = v52;
      nlp::updateMapCursorPointer(v16, a2, *(v53 + 8 * v52));
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, v61);
      nlp::traverseFromMapCursor(v16, a2, a3, a4 + 1, a5, v54, a7, v62);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v62);
      if (*a5)
      {
        break;
      }

      v51 = v52++ == 255;
    }

    while (!v51);
    goto LABEL_53;
  }

  if (v15 != 2)
  {
    return result;
  }

  if (v14)
  {
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v59, a8);
    v36 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
    if (!v36)
    {
LABEL_41:
      v47 = v59;
      return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v47);
    }

    __dst = (v36 + 22);
    v37 = *(a2 + 16);
    do
    {
      v38 = *(v36 + 20);
      if (v38 >= v37)
      {
        v39 = v38 - v37;
        if (a6 < 0 || v39 <= a6)
        {
          if (v37)
          {
            v40 = (v36 + 22);
            v41 = __dst;
            v42 = v37;
            while (1)
            {
              v44 = *v40++;
              v43 = v44;
              v45 = *v41++;
              if (v43 != v45)
              {
                break;
              }

              if (!--v42)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
LABEL_37:
            v46 = v39 + a4;
            memcpy((a3 + a4), (v36 + v37 + 22), v39);
            *(a3 + v46) = 0;
            std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v59, a7, a3, v46, *(v36 + 16), a5, *(v36 + 12));
          }
        }
      }

      v36 = *v36;
    }

    while (v36);
  }

  else
  {
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v58, a8);
    v18 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *(a2 + 16);
    if (v19 > *(v18 + 12))
    {
      __assert_rtn("traverseFromMapCursorTrieList", "BurstTrie.cpp", 1957, "cursor.prfxlen <= head->restlen");
    }

    if (v18)
    {
      v55 = (v18 + 14);
      v20 = *(a2 + 16);
      v21 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v56 = v14;
      while (1)
      {
        v22 = *(v21 + 12);
        if (v21 != v18)
        {
          if (v22 <= v20)
          {
            goto LABEL_39;
          }

          if (v19)
          {
            break;
          }
        }

LABEL_19:
        v29 = v22 - v19;
        if (a6 < 0 || v29 <= a6)
        {
          v14 = v20;
          v30 = v18;
          v31 = v29 + a4;
          v32 = v19;
          memcpy((a3 + a4), (v21 + v19 + 14), v29);
          *(a3 + v31) = 0;
          v33 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, v58);
          std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v33, a7, a3, v31, *(v21 + 8), a5, 0.0);
          std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v62);
          v18 = v30;
          v20 = v14;
          LOBYTE(v14) = v56;
          v19 = v32;
        }

        v21 = *v21;
        if (!v21)
        {
          goto LABEL_39;
        }
      }

      v23 = (v21 + 14);
      v24 = v55;
      v25 = v19;
      while (1)
      {
        v27 = *v23++;
        v26 = v27;
        v28 = *v24++;
        if (v26 != v28)
        {
          break;
        }

        if (!--v25)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_39:
  if (v14)
  {
    goto LABEL_41;
  }

  v47 = v58;
  return std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v47);
}

void sub_1C6629194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 12;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

void nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 4;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

uint64_t nlp::addListNode(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, int *a7)
{
  v12 = a1;
  v13 = *a2;
  v14 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v15 = (a3 + a5);
  if (v13)
  {
    v31 = v12;
    v32 = a7;
    v16 = 0;
    v17 = 1;
LABEL_3:
    v18 = &v14[v16];
    LODWORD(v19) = v16++;
    do
    {
      v20 = *(v13 + 6);
      if (v20 + a5 == a4 && !memcmp(v15, v13 + 14, v20))
      {
        v17 = 0;
        *(v13 + 2) = a6;
        *v18 = v13;
        v13 = *v13;
        if (v13)
        {
          goto LABEL_3;
        }

        v19 = (v19 + 1);
        goto LABEL_14;
      }

      *v18++ = v13;
      v13 = *v13;
      v19 = (v19 + 1);
      ++v16;
    }

    while (v13);
    if (v17)
    {
      v12 = v31;
      a7 = v32;
      goto LABEL_13;
    }

LABEL_14:
    v23 = 1;
    v12 = v31;
    a7 = v32;
  }

  else
  {
    LODWORD(v19) = 0;
LABEL_13:
    v21 = a4 - a5;
    v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
    memcpy(v22 + 14, v15, v21);
    v22[v21 + 14] = 0;
    *(v22 + 6) = v21;
    *v22 = 0;
    v14[v19] = v22;
    v23 = 2;
    v19 = (v19 + 1);
    *(v22 + 2) = a6;
  }

  qsort(v14, v19, 8uLL, nlp::nodeStringCompare);
  v24 = *v14;
  v25 = *v14;
  if (v19 >= 2)
  {
    v26 = v14 + 1;
    v27 = v19 - 1;
    v28 = *v14;
    do
    {
      v29 = *v26++;
      v25 = v29;
      *v28 = v29;
      v28 = v29;
      --v27;
    }

    while (v27);
  }

  *v25 = 0;
  *a2 = v24;
  free(v14);
  *a7 = v23;
  if (v19 > *(v12 + 2088))
  {
    nlp::addListNode();
  }

  return v19;
}

int *nlp::burstLevel(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x804uLL, 0x10000406A7154B6uLL);
  v7 = v6;
  if (a2)
  {
    v8 = (v6 + 1);
    do
    {
      v9 = *(a2 + 6);
      v10 = a2[2];
      if (*(a2 + 6))
      {
        v11 = *&v8[8 * *(a2 + 14)];
        if (v11)
        {
          v21 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          v12 = nlp::addListNode(a1, &v21, a2 + 14, v9, 1u, v10, a3);
          v13 = v21;
          if (v12 >= *(a1 + 2088))
          {
            v13 = nlp::burstLevel(a1, v21, a3);
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          v17 = v14 | v13;
          v18 = *(a2 + 14);
        }

        else
        {
          v15 = (v9 - 1);
          v16 = malloc_type_calloc(1uLL, v15 + 15, 0x1020040D0C9BDDAuLL);
          memcpy((v16 + 14), a2 + 15, v15);
          *(v16 + 14 + v15) = 0;
          *(v16 + 12) = v15;
          *(v16 + 8) = v10;
          *v16 = 0;
          v17 = v16 | 2;
          v18 = *(a2 + 14);
        }

        *&v8[8 * v18] = v17;
      }

      else
      {
        *v7 = v10;
      }

      v19 = *a2;
      free(a2);
      a2 = v19;
    }

    while (v19);
  }

  return v7;
}

uint64_t nlp::nodeStringCompare(nlp *this, const void *a2, const void *a3)
{
  v3 = *(*this + 12);
  v4 = *(*a2 + 12);
  v5 = v3 - v4;
  if (v3 >= v4)
  {
    v6 = *(*a2 + 12);
  }

  else
  {
    v6 = *(*this + 12);
  }

  LODWORD(result) = memcmp((*this + 14), (*a2 + 14), v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t nlp::addListNodeRanked(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v17 = *a2;
  v18 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v19 = (a3 + a5);
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    do
    {
      v23 = v20;
      v24 = *(v17 + 10);
      if (v24 + a5 == a4 && !memcmp(v19, v17 + 22, v24))
      {
        *(v17 + 4) = a6;
        v25 = *(v17 + 3);
        if (*(a11 + 24))
        {
          std::function<float ()(void *,float,float)>::operator()(a11, a10, v25, a9);
        }

        else
        {
          v26 = v25 + a9;
        }

        *(v17 + 3) = v26;
        v21 = 1;
      }

      if (*(v17 + 2) > v22)
      {
        v22 = *(v17 + 2);
      }

      ++v20;
      v18[v23] = v17;
      v17 = *v17;
    }

    while (v17);
    if (v21)
    {
      v27 = 1;
      v28 = v23 + 1;
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v22 = 0.0;
  }

  if (v22 < a9)
  {
    v22 = a9;
  }

  v29 = a4 - a5;
  v30 = malloc_type_calloc(1uLL, v29 + 23, 0x10200402E77EEF7uLL);
  memcpy(v30 + 22, v19, v29);
  v30[v29 + 22] = 0;
  *(v30 + 10) = v29;
  *(v30 + 4) = a6;
  *(v30 + 2) = v22;
  *(v30 + 3) = a9;
  v28 = (v20 + 1);
  v27 = 2;
  *v30 = 0;
  v18[v20] = v30;
LABEL_18:
  qsort(v18, v28, 8uLL, nlp::nodeScoreCompare);
  v31 = *v18;
  *a7 = v22;
  v32 = v31;
  if (v28 >= 2)
  {
    v33 = (v28 - 1);
    v34 = v18 + 1;
    v35 = v31;
    do
    {
      v36 = *v34++;
      v32 = v36;
      *v35 = v36;
      *(v36 + 8) = *a7;
      v35 = v36;
      --v33;
    }

    while (v33);
  }

  *v32 = 0;
  *a2 = v31;
  free(v18);
  *a8 = v27;
  if (v28 > *(a1 + 2088))
  {
    nlp::addListNodeRanked();
  }

  return v28;
}

float *nlp::burstLevelRanked(uint64_t a1, unsigned __int16 *a2, float *a3, int *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x80CuLL, 0x10000408B9410F9uLL);
  v9 = v8;
  *a3 = 0.0;
  if (a2)
  {
    v10 = v8 + 12;
    do
    {
      v24 = 0.0;
      v11 = a2[10];
      v12 = *(a2 + 4);
      v13 = *(a2 + 3);
      v27 = 0;
      if (v11)
      {
        v14 = *&v10[8 * *(a2 + 22)];
        if (v14)
        {
          v25 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          v29 = 0;
          v15 = nlp::addListNodeRanked(a1, &v25, (a2 + 11), v11, 1u, v12, &v24, a4, v13, 0, v28);
          std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v28);
          v16 = v25;
          if (v15 >= *(a1 + 2088))
          {
            v16 = nlp::burstLevelRanked(a1, v25, &v24, a4);
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          *&v10[8 * *(a2 + 22)] = v17 | v16;
          v13 = v24;
        }

        else
        {
          v18 = (v11 - 1);
          v19 = malloc_type_calloc(1uLL, v18 + 23, 0x10200402E77EEF7uLL);
          memcpy((v19 + 22), a2 + 23, v18);
          *(v19 + 22 + v18) = 0;
          *(v19 + 20) = v18;
          *(v19 + 16) = v12;
          *(v19 + 8) = v13;
          *(v19 + 12) = v13;
          *v19 = 0;
          *&v10[8 * *(a2 + 22)] = v19 | 2;
        }
      }

      else
      {
        v9[1] = v13;
        *(v9 + 2) = v12;
      }

      std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v26);
      v20 = *a3;
      if (v13 > *a3)
      {
        v20 = v13;
      }

      *a3 = v20;
      v21 = *a2;
      free(a2);
      a2 = v21;
    }

    while (v21);
    v22 = *a3;
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return v9;
}

void sub_1C6629AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<float ()(void *,float,float)>::operator()(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t nlp::nodeScoreCompare(nlp *this, const void *a2, const void *a3)
{
  v3 = *(*this + 12);
  v4 = *(*a2 + 12);
  if (v3 == v4)
  {
    v5 = *(*this + 16);
    v6 = *(*a2 + 16);
    v7 = v5 == v6;
    if (v5 > v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else if (v3 <= v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t nlp::searchDiskLevelRanked(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v19 = *(a2 + 1032);
      v33 = a6;
      v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v20[4] = a4;
      *(v20 + a4 + 20) = 0;
      LOBYTE(v10) = v33;
      memcpy(v20 + 5, a3, a4);
      v20[2] = v18;
      *v20 = v19;
      v20[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v20, 1, &v34);
      v21 = v20[3]-- == 1;
      if (v21)
      {
        free(v20);
      }

      v17 = v34;
      if (v34)
      {
        return 1;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      return v17;
    }

    v25 = 0;
    while (1)
    {
      v26 = *(a2 + 4 * v25);
      a3[a5] = v25;
      if ((v26 & 3u) > 1uLL)
      {
        v29 = *(a1 + 2080);
        if ((v26 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v35, a8);
          v34 = nlp::searchDiskPageRanked(((v26 & 0xFFFFFFFC) + v29), a3, a4 + 1, a5 + 1, 0, a7, v35);
          v28 = v35;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
          v34 = nlp::searchCompactDiskLevelRanked(a1, ((v26 & 0xFFFFFFFC) + v29), a3, (a4 + 1), a5 + 1, 0, a7, v36);
          v28 = v36;
        }
      }

      else
      {
        if ((v26 & 3) == 0)
        {
          goto LABEL_23;
        }

        v27 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
        v34 = nlp::searchDiskLevelRanked(a1, (v26 & 0xFFFFFFFC) + v27, a3, (a4 + 1), a5 + 1, 0, a7, v37);
        v28 = v37;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v28);
LABEL_23:
      v17 = v34;
      if ((v34 & 1) == 0)
      {
        v21 = v25++ == 255;
        if (!v21)
        {
          continue;
        }
      }

      return v17;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    if ((v16 & 3) == 2)
    {
      v22 = *(a1 + 2080);
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
      v23 = v38;
      v24 = nlp::searchDiskPageRanked(((v16 & 0xFFFFFFFC) + v22), a3, a4, a5 + 1, v10, a7, v38);
    }

    else
    {
      v31 = *(a1 + 2080);
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v39, a8);
      v23 = v39;
      v24 = nlp::searchCompactDiskLevelRanked(a1, ((v16 & 0xFFFFFFFC) + v31), a3, a4, a5 + 1, v10, a7, v39);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v30 = *(a1 + 2080);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v40, a8);
    v23 = v40;
    v24 = nlp::searchDiskLevelRanked(a1, (v16 & 0xFFFFFFFC) + v30, a3, a4, a5 + 1, v10, a7, v40);
LABEL_29:
    v17 = v24;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v23);
    return v17;
  }

  return 0;
}

void sub_1C6629EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::containsKey(uint64_t result, _DWORD *a2, int a3, _BYTE *a4)
{
  if (result)
  {
    if (*result == 1)
    {
LABEL_5:
      *(result + 4) = a2[2];
      *(result + 8) = *a2;
LABEL_6:
      *a4 = 1;
      return result;
    }

    if (!*result)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    v5 = 0;
    if (*(result + 48))
    {
      result = std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::operator()(result + 24, *(result + 16), a2, &v5);
      if (v5)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t nlp::searchDiskLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v31 = a6;
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      LOBYTE(v10) = v31;
      memcpy(v19 + 5, a3, a4);
      v19[2] = v18;
      *v19 = 0;
      v19[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v19, 1, &v32);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v17 = v32;
      if (v32)
      {
        return 1;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      return v17;
    }

    v24 = 0;
    while (1)
    {
      v25 = *(a2 + 4 * v24);
      a3[a5] = v24;
      if ((v25 & 3u) > 1uLL)
      {
        v28 = *(a1 + 2080);
        if ((v25 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v33, a8);
          v32 = nlp::searchDiskPage(a1, ((v25 & 0xFFFFFFFC) + v28), a3, a4 + 1, a5 + 1, 0, a7, v33);
          v27 = v33;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v34, a8);
          v32 = nlp::searchCompactDiskLevel(a1, ((v25 & 0xFFFFFFFC) + v28), a3, (a4 + 1), a5 + 1, 0, a7, v34);
          v27 = v34;
        }
      }

      else
      {
        if ((v25 & 3) == 0)
        {
          goto LABEL_23;
        }

        v26 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v35, a8);
        v32 = nlp::searchDiskLevel(a1, (v25 & 0xFFFFFFFC) + v26, a3, (a4 + 1), a5 + 1, 0, a7, v35);
        v27 = v35;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v27);
LABEL_23:
      v17 = v32;
      if ((v32 & 1) == 0)
      {
        v20 = v24++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      return v17;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    v21 = *(a1 + 2080);
    if ((v16 & 3) == 2)
    {
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
      v22 = v36;
      v23 = nlp::searchDiskPage(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v36);
    }

    else
    {
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
      v22 = v37;
      v23 = nlp::searchCompactDiskLevel(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v37);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v29 = *(a1 + 2080);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
    v22 = v38;
    v23 = nlp::searchDiskLevel(a1, (v16 & 0xFFFFFFFC) + v29, a3, a4, a5 + 1, v10, a7, v38);
LABEL_29:
    v17 = v23;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v22);
    return v17;
  }

  return 0;
}

void sub_1C662A314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchLevelRanked(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  if (a4 >= a3)
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *(a1 + 4);
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      memcpy(v19 + 5, a2, a4);
      v19[2] = v17;
      *v19 = v18;
      v19[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v19, 1, &v28);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v21 = v28;
      if (v28)
      {
        return 1;
      }
    }

    else
    {
      v21 = 0;
    }

    if (a5)
    {
      return v21;
    }

    v22 = 0;
    v23 = a1 + 12;
    while (1)
    {
      v24 = *(v23 + 8 * v22);
      a2[a4] = v22;
      if ((v24 & 3) == 2)
      {
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v29, a7);
        v25 = v29;
        v26 = nlp::searchListRanked((v24 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v29);
      }

      else
      {
        if ((v24 & 3) != 1)
        {
          goto LABEL_19;
        }

        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
        v25 = v30;
        v26 = nlp::searchLevelRanked(v24 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v30);
      }

      v28 = v26;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v25);
LABEL_19:
      v21 = v28;
      if ((v28 & 1) == 0)
      {
        v20 = v22++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      return v21;
    }
  }

  v14 = *(a1 + 8 * a2[a4] + 12);
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v31, a7);
    v15 = v31;
    v16 = nlp::searchListRanked((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v31);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      return 0;
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v32, a7);
    v15 = v32;
    v16 = nlp::searchLevelRanked(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v32);
  }

  v21 = v16;
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
  return v21;
}

void sub_1C662A5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchLevel(int *a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (a4 >= a3)
  {
    v17 = *a1;
    if (*a1)
    {
      v18 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v18[4] = a4;
      *(v18 + a4 + 20) = 0;
      memcpy(v18 + 5, a2, a4);
      v18[2] = v17;
      *v18 = 0;
      v18[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v18, 1, &v27);
      v19 = v18[3]-- == 1;
      if (v19)
      {
        free(v18);
      }

      v20 = v27;
      if (v27)
      {
        return 1;
      }
    }

    else
    {
      v20 = 0;
    }

    if (a5)
    {
      return v20;
    }

    v21 = 0;
    v22 = a1 + 1;
    while (1)
    {
      v23 = *&v22[2 * v21];
      a2[a4] = v21;
      if ((v23 & 3) == 2)
      {
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v28, a7);
        v24 = v28;
        v25 = nlp::searchList((v23 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v28);
      }

      else
      {
        if ((v23 & 3) != 1)
        {
          goto LABEL_19;
        }

        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v29, a7);
        v24 = v29;
        v25 = nlp::searchLevel((v23 & 0xFFFFFFFFFFFFFFFCLL), a2, (a3 + 1), a4 + 1, 0, a6, v29);
      }

      v27 = v25;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v24);
LABEL_19:
      v20 = v27;
      if ((v27 & 1) == 0)
      {
        v19 = v21++ == 255;
        if (!v19)
        {
          continue;
        }
      }

      return v20;
    }
  }

  v14 = *&a1[2 * a2[a4] + 1];
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
    v15 = v30;
    v16 = nlp::searchList((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v30);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      return 0;
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v31, a7);
    v15 = v31;
    v16 = nlp::searchLevel((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v31);
  }

  v20 = v16;
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
  return v20;
}

void sub_1C662A8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchCompactDiskLevelRanked(uint64_t a1, int8x8_t *a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v36 = a2;
        do
        {
          v37 = *v36++;
          v38 = vcnt_s8(v37);
          v38.i16[0] = vaddlv_u8(v38);
          v18 += v38.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v39 = vcnt_s8(((v17 - 1) & *&v16));
      v39.i16[0] = vaddlv_u8(v39);
      v40 = a2[5].i32[v18 + v39.i32[0] + 1];
      if ((v40 & 3u) > 1)
      {
        if ((v40 & 3) == 2)
        {
          v41 = *(a1 + 2080);
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
          v42 = v53;
          v43 = nlp::searchDiskPageRanked(((v40 & 0xFFFFFFFC) + v41), a3, a4, a5 + 1, a6, a7, v53);
        }

        else
        {
          v45 = *(a1 + 2080);
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v54, a8);
          v42 = v54;
          v43 = nlp::searchCompactDiskLevelRanked(a1, ((v40 & 0xFFFFFFFC) + v45), a3, a4, a5 + 1, a6, a7, v54);
        }
      }

      else
      {
        if ((v40 & 3) == 0)
        {
          return 0;
        }

        v44 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v55, a8);
        v42 = v55;
        v43 = nlp::searchDiskLevelRanked(a1, (v40 & 0xFFFFFFFC) + v44, a3, a4, a5 + 1, a6, a7, v55);
      }

      v23 = v43;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v42);
      return v23;
    }

    return 0;
  }

  v19 = a2[5].i32[0];
  if (!v19)
  {
    v23 = 0;
LABEL_12:
    if (a6)
    {
      return v23;
    }

    v24 = 0;
    while (1)
    {
      if (v24 >> 6 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24 >> 6;
      }

      v26 = a2[v24 >> 6];
      if ((*&v26 & (1 << v24)) == 0)
      {
        goto LABEL_29;
      }

      if (v24 >= 0x40)
      {
        v27 = 0;
        v28 = a2;
        do
        {
          v29 = *v28++;
          v30 = vcnt_s8(v29);
          v30.i16[0] = vaddlv_u8(v30);
          v27 += v30.i32[0];
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = 0;
      }

      v31 = vcnt_s8((*&v26 & ((1 << v24) - 1)));
      v31.i16[0] = vaddlv_u8(v31);
      v32 = a2[5].i32[v27 + v31.i32[0] + 1];
      a3[a5] = v24;
      if ((v32 & 3u) > 1)
      {
        v35 = *(a1 + 2080);
        if ((v32 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v50, a8);
          v49 = nlp::searchDiskPageRanked((v35 + (v32 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v50);
          v34 = v50;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
          v49 = nlp::searchCompactDiskLevelRanked(a1, (v35 + (v32 & 0xFFFFFFFC)), a3, (a4 + 1), a5 + 1, 0, a7, v51);
          v34 = v51;
        }
      }

      else
      {
        if ((v32 & 3) == 0)
        {
          goto LABEL_29;
        }

        v33 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
        v49 = nlp::searchDiskLevelRanked(a1, v33 + (v32 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v52);
        v34 = v52;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v34);
LABEL_29:
      v23 = v49;
      if ((v49 & 1) == 0 && ++v24 != 256)
      {
        continue;
      }

      return v23;
    }
  }

  v20 = a2[4].i32[1];
  v21 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v21[4] = a4;
  *(v21 + a4 + 20) = 0;
  memcpy(v21 + 5, a3, a4);
  v21[2] = v19;
  *v21 = v20;
  v21[3] = 1;
  std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v21, 1, &v49);
  if (v21[3]-- == 1)
  {
    free(v21);
  }

  v23 = v49;
  if ((v49 & 1) == 0)
  {
    goto LABEL_12;
  }

  return 1;
}

void sub_1C662AD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchDiskPageRanked(unsigned int *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v35 = 0;
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = 0;
  v11 = a3 - a4;
  v12 = &a2[a4];
  __n = (a3 - a4);
  v13 = a1 + 2;
  v27 = v12;
  __dst = &a2[a3];
  v26 = a3;
  while (1)
  {
    v14 = v13 + v10;
    v15 = *(v14 + 4);
    if (v11 > v15 || memcmp(v14 + 10, v12, __n))
    {
      goto LABEL_14;
    }

    v16 = a5;
    if (v11 == v15)
    {
      v16 = 0;
    }

    if (v16)
    {
      goto LABEL_14;
    }

    v17 = (v15 + v8);
    v18 = v17 - v9;
    v19 = v26;
    if (v18 >= 1)
    {
      memcpy(__dst, &v14[v15 - v18 + 10], v18);
      v19 = v17;
      v9 = v17;
    }

    a2[v19] = 0;
    v20 = *(v14 + 1);
    v21 = *v14;
    v22 = malloc_type_malloc(v19 + 21, 0x1000040A86A77D5uLL);
    v22[4] = v9;
    *(v22 + v19 + 20) = 0;
    memcpy(v22 + 5, a2, v19);
    *v22 = v21;
    v22[2] = v20;
    v22[3] = 1;
    std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v22, v11 == v15, &v35);
    v23 = v22[3] - 1;
    v22[3] = v23;
    if (!v23)
    {
      free(v22);
    }

    v9 = a3;
    v8 = a4;
    v12 = v27;
    if (v35)
    {
      return 1;
    }

    LODWORD(v15) = *(v14 + 4);
LABEL_14:
    v10 += v15 + 10;
    if (v10 >= v7)
    {
      return 0;
    }
  }
}

uint64_t std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F45E9AD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t nlp::searchCompactDiskLevel(uint64_t a1, int8x8_t *a2, char *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v35 = a2;
        do
        {
          v36 = *v35++;
          v37 = vcnt_s8(v36);
          v37.i16[0] = vaddlv_u8(v37);
          v18 += v37.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v38 = vcnt_s8(((v17 - 1) & *&v16));
      v38.i16[0] = vaddlv_u8(v38);
      v39 = a2[4].i32[v18 + v38.i32[0] + 1];
      if ((v39 & 3u) > 1)
      {
        v40 = *(a1 + 2080);
        if ((v39 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
          v41 = v51;
          v42 = nlp::searchDiskPage(a1, ((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v51);
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
          v41 = v52;
          v42 = nlp::searchCompactDiskLevel(a1, ((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v52);
        }
      }

      else
      {
        if ((v39 & 3) == 0)
        {
          return 0;
        }

        v43 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
        v41 = v53;
        v42 = nlp::searchDiskLevel(a1, (v39 & 0xFFFFFFFC) + v43, a3, a4, a5 + 1, a6, a7, v53);
      }

      v22 = v42;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v41);
      return v22;
    }

    return 0;
  }

  v19 = a2[4].i32[0];
  if (!v19)
  {
    v22 = 0;
LABEL_12:
    if (a6)
    {
      return v22;
    }

    v23 = 0;
    while (1)
    {
      if (v23 >> 6 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 >> 6;
      }

      v25 = a2[v23 >> 6];
      if ((*&v25 & (1 << v23)) == 0)
      {
        goto LABEL_29;
      }

      if (v23 >= 0x40)
      {
        v26 = 0;
        v27 = a2;
        do
        {
          v28 = *v27++;
          v29 = vcnt_s8(v28);
          v29.i16[0] = vaddlv_u8(v29);
          v26 += v29.i32[0];
          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = 0;
      }

      v30 = vcnt_s8((*&v25 & ((1 << v23) - 1)));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = a2[4].i32[v26 + v30.i32[0] + 1];
      a3[a5] = v23;
      if ((v31 & 3u) > 1)
      {
        v34 = *(a1 + 2080);
        if ((v31 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v48, a8);
          v47 = nlp::searchDiskPage(a1, (v34 + (v31 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v48);
          v33 = v48;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v49, a8);
          v47 = nlp::searchCompactDiskLevel(a1, (v34 + (v31 & 0xFFFFFFFC)), a3, (a4 + 1), a5 + 1, 0, a7, v49);
          v33 = v49;
        }
      }

      else
      {
        if ((v31 & 3) == 0)
        {
          goto LABEL_29;
        }

        v32 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v50, a8);
        v47 = nlp::searchDiskLevel(a1, v32 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v50);
        v33 = v50;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v33);
LABEL_29:
      v22 = v47;
      if ((v47 & 1) == 0 && ++v23 != 256)
      {
        continue;
      }

      return v22;
    }
  }

  v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v20[4] = a4;
  *(v20 + a4 + 20) = 0;
  memcpy(v20 + 5, a3, a4);
  v20[2] = v19;
  *v20 = 0;
  v20[3] = 1;
  std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v20, 1, &v47);
  if (v20[3]-- == 1)
  {
    free(v20);
  }

  v22 = v47;
  if ((v47 & 1) == 0)
  {
    goto LABEL_12;
  }

  return 1;
}

void sub_1C662B610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchDiskPage(uint64_t a1, unsigned int *a2, char *a3, unsigned int a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v65 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v10 = a4 - a5;
  v11 = *a2;
  if ((*(a1 + 2064) & 4) != 0)
  {
    memset(__s1, 0, sizeof(__s1));
    if (v11)
    {
      v26 = 0;
      v27 = 0;
      v28 = a2 + 1;
      v52 = a5 - a4;
      __s2 = &a3[a5];
      v50 = &a3[a4];
      v53 = a2 + 1;
      do
      {
        v29 = v27;
        v27 = v28 + v26;
        v30 = v27[6];
        if (v29)
        {
          v31 = v29[6];
          if (v30 > v31)
          {
            memcpy(__s1 + v31, v29 + 7, v30 - v31);
          }
        }

        v32 = *(v27 + 2);
        v33 = v32 + v30;
        if ((v32 + v30) >= v10)
        {
          if (v9 == v8 || (v30 >= v10 ? (v34 = v10) : (v34 = v30), !memcmp(__s1, __s2, v34)))
          {
            v35 = v10 - v30;
            if (v10 - v30 < 0 || (v32 >= v35 ? (v36 = v35) : (v36 = v32), !memcmp(v27 + 7, &__s2[v30], v36)))
            {
              v37 = a6;
              if (v10 == v33)
              {
                v37 = 0;
              }

              if ((v37 & 1) == 0)
              {
                v38 = v9;
                v39 = v30 + v8;
                v40 = v30 + v8 - v38;
                if (v40 < 1)
                {
                  v39 = v38;
                }

                else
                {
                  memcpy(v50, __s1 + v30 - v40, v40);
                  v32 = *(v27 + 2);
                  LODWORD(v30) = v27[6];
                }

                v41 = v52 + v32 + v30;
                if (v41 < 1)
                {
                  v43 = a3;
                }

                else
                {
                  v42 = v41 - (v40 & ~(v40 >> 31));
                  v43 = a3;
                  memcpy(&a3[v39], &v27[v32 - v42 + 7], v42);
                  v39 += v42;
                }

                v43[v39] = 0;
                v44 = *v27;
                v45 = malloc_type_malloc(v39 + 21, 0x1000040A86A77D5uLL);
                v45[4] = v39;
                *(v45 + v39 + 20) = 0;
                memcpy(v45 + 5, v43, v39);
                *v45 = 0;
                v45[2] = v44;
                v45[3] = 1;
                std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v45, v10 == v33, &v63);
                v46 = v45[3] - 1;
                v45[3] = v46;
                if (!v46)
                {
                  free(v45);
                }

                v9 = a4;
                v28 = v53;
                if (v63)
                {
                  return 1;
                }

                v32 = *(v27 + 2);
                v8 = a5;
              }
            }
          }
        }

        v26 += v32 + 7;
      }

      while (v26 < v11);
    }
  }

  else if (v11)
  {
    v12 = 0;
    v13 = &a3[a5];
    v14 = v10;
    v15 = a2 + 1;
    v16 = a6;
    __dst = &a3[a4];
    v49 = a4;
    v54 = v13;
    do
    {
      v17 = v15 + v12;
      v18 = *(v17 + 2);
      if (v10 <= v18 && !memcmp(v17 + 6, v13, v14))
      {
        v19 = v10 == v18 ? 0 : v16;
        if ((v19 & 1) == 0)
        {
          v20 = a4;
          v21 = v18 + a5 - a4;
          v22 = v49;
          if (v21 >= 1)
          {
            memcpy(__dst, &v17[v18 - v21 + 6], v21);
            v22 = (v18 + a5);
            v20 = v18 + a5;
          }

          a3[v22] = 0;
          v23 = *v17;
          v24 = malloc_type_malloc(v22 + 21, 0x1000040A86A77D5uLL);
          v24[4] = v20;
          *(v24 + v22 + 20) = 0;
          memcpy(v24 + 5, a3, v22);
          *v24 = 0;
          v24[2] = v23;
          v24[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v24, v10 == v18, &v63);
          v25 = v24[3] - 1;
          v24[3] = v25;
          if (!v25)
          {
            free(v24);
          }

          v14 = v10;
          v13 = v54;
          v16 = a6;
          if (v63)
          {
            return 1;
          }

          LODWORD(v18) = *(v17 + 2);
        }
      }

      v12 += v18 + 6;
    }

    while (v12 < v11);
  }

  return 0;
}

uint64_t nlp::searchListRanked(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v33 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v27 = a3;
    while (1)
    {
      v14 = *(v9 + 10);
      if (v12 <= v14 && !memcmp(v9 + 22, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v27;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 22, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 4);
          v22 = *(v9 + 3);
          v23 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v23[4] = v19;
          *(v23 + v18 + 20) = 0;
          memcpy(v23 + 5, a2, v18);
          *v23 = v22;
          v23[2] = v21;
          v23[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v23, v20, &v33);
          v24 = v23[3] - 1;
          v23[3] = v24;
          if (!v24)
          {
            free(v23);
          }

          v10 = v33;
          v7 = a4;
          v13 = a5;
          if (v33)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t nlp::searchList(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v32 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v26 = a3;
    while (1)
    {
      v14 = *(v9 + 6);
      if (v12 <= v14 && !memcmp(v9 + 14, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v26;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 14, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 2);
          v22 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v22[4] = v19;
          *(v22 + v18 + 20) = 0;
          memcpy(v22 + 5, a2, v18);
          *v22 = 0;
          v22[2] = v21;
          v22[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v22, v20, &v32);
          v23 = v22[3] - 1;
          v22[3] = v23;
          if (!v23)
          {
            free(v22);
          }

          v10 = v32;
          v7 = a4;
          v13 = a5;
          if (v32)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t nlp::advanceCompactMapCursorMappedLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v8 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080);
  if (*(a1 + 2064))
  {
    if (!a4)
    {
      *(a2 + 16) = *(v8 + 1024);
      *(a2 + 20) = *(v8 + 1032);
      return 1;
    }
  }

  else if (!a4)
  {
    *(a2 + 16) = *(v8 + 1024);
    return 1;
  }

  nlp::updateCompactMapCursorPointer(a1, a2, *(v8 + 4 * *a3));

  return nlp::advanceCompactMapCursor(a1, a2, a3 + 1, (a4 - 1));
}

uint64_t nlp::updateCompactMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    if ((a3 & 3u) <= 1uLL)
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 16) = 0;
LABEL_18:
        *a2 = a3;
        *(a2 + 8) = 0;
        return result;
      }

      v6 = *(result + 2064);
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
      *(a2 + 16) = *(v7 + 1024);
      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 1032);
LABEL_17:
      *(a2 + 20) = v8;
      goto LABEL_18;
    }

    if ((a3 & 3) == 2)
    {
      v3 = *(result + 2064);
      if ((v3 & 4) != 0)
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      }

      else
      {
        v4 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
        if (v3)
        {
          *(a2 + 16) = v4[1];
          v8 = *v4;
          goto LABEL_17;
        }

        v5 = *v4;
      }
    }

    else
    {
      v9 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      if (*(result + 2064))
      {
        *(a2 + 16) = v9[10];
        v8 = v9[9];
        goto LABEL_17;
      }

      v5 = v9[8];
    }

    *(a2 + 16) = v5;
    goto LABEL_18;
  }

  return result;
}

uint64_t nlp::advanceMapCursorTrieList(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  if ((*(a1 + 2064) & 1) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *(a2 + 16);
    if (v9 > *(v8 + 12))
    {
      nlp::advanceMapCursorTrieList();
    }

    if (!v8)
    {
      LOBYTE(v10) = 0;
      return v10;
    }

    v10 = v8;
    while (1)
    {
      v11 = *(v10 + 12);
      if (v10 != v8)
      {
        if (v9 >= v11)
        {
          goto LABEL_18;
        }

        if (v9)
        {
          v12 = (v10 + 14);
          v13 = *(a2 + 16);
          v14 = (v8 + 14);
          do
          {
            v16 = *v12++;
            v15 = v16;
            v17 = *v14++;
            if (v15 != v17)
            {
              goto LABEL_18;
            }
          }

          while (--v13);
        }
      }

      if (v9 >= v11 || a4 == 0)
      {
        LODWORD(v19) = 0;
        LODWORD(v20) = *(a2 + 16);
      }

      else
      {
        v19 = 0;
        v20 = *(a2 + 16);
        do
        {
          if (*(v10 + 14 + v20) != a3[v19])
          {
            break;
          }

          ++v20;
          ++v19;
          if (v20 >= v11)
          {
            break;
          }
        }

        while (v19 < a4);
      }

      if (v19 == a4)
      {
        *(a2 + 8) = v10 | 2;
        if (v20 == v11)
        {
          *(a2 + 16) = v11;
          *(a2 + 20) = *(v10 + 8);
        }

        else
        {
          *(a2 + 16) = v9 + a4;
        }

        LOBYTE(v10) = 1;
        return v10;
      }

LABEL_18:
      v10 = *v10;
      if (!v10)
      {
        return v10;
      }
    }
  }

  v35[1] = v35;
  v35[0] = *a2;
  v21 = *(a2 + 16);
  v38 = *(a2 + 20);
  v39 = v7;
  v22 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v23 = v35 - ((v21 + 15) & 0x1FFFFFFF0);
  v24 = *(a2 + 16);
  memcpy(v23, (v25 + 22), v24);
  v26 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
  if (v26)
  {
    v37 = 0;
    v27 = v24 + a4;
    v36 = a4;
    do
    {
      v28 = *(v26 + 20);
      if (v27 <= v28 && !memcmp((v26 + 22), v23, v24) && !memcmp((v26 + 22 + v24), a3, v36))
      {
        if (v27 == v28)
        {
          *(a2 + 8) = v26 | 2;
          v34 = *(v26 + 16);
          *(a2 + 24) = *(v26 + 12);
          *(a2 + 16) = v27;
          *(a2 + 20) = v34;
          LOBYTE(v10) = 1;
          return v10;
        }

        v29 = v38;
        if (!v37)
        {
          v29 = 0;
          LODWORD(v21) = v21 + a4;
        }

        v30 = v39;
        if (!v37)
        {
          v30 = v26 | 2;
        }

        v39 = v30;
        if (!v37)
        {
          v22 = 0.0;
        }

        v37 = 1;
        v38 = v29;
      }

      v26 = *v26;
    }

    while (v26);
  }

  else
  {
    v37 = 0;
  }

  v31 = v39;
  *a2 = v35[0];
  *(a2 + 8) = v31;
  LOBYTE(v10) = v37;
  v32 = v38;
  *(a2 + 16) = v21;
  *(a2 + 20) = v32;
  *(a2 + 24) = v22;
  return v10;
}

uint64_t nlp::updateMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != a3)
  {
    if ((a3 & 3u) > 1uLL)
    {
      if ((a3 & 3) != 2)
      {
        goto LABEL_15;
      }

      v3 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v3[4];
        *(a2 + 24) = v3[3];
        *a2 = a3;
        goto LABEL_15;
      }

      if (*(v3 + 6))
      {
        v4 = 0;
      }

      else
      {
        v4 = v3[2];
      }
    }

    else
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 20) = 0;
LABEL_15:
        *(a2 + 8) = a3;
        *(a2 + 16) = 0;
        return result;
      }

      v5 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v5[2];
        *(a2 + 24) = v5[1];
        goto LABEL_15;
      }

      v4 = *v5;
    }

    *(a2 + 20) = v4;
    goto LABEL_15;
  }

  return result;
}

uint64_t std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F45E9BF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

CFPropertyListRef nlp::createDictionaryWithContentsOfURL(CFURLRef fileURL, const __CFURL *a2, CFErrorRef *a3, __CFError **a4)
{
  v5 = a2;
  v7 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  if (v7)
  {
    v9 = v7;
    if (CFReadStreamOpen(v7) && (!v5 ? (v11 = 0) : (v11 = 2), v12 = CFPropertyListCreateWithStream(0, v9, 0, v11, 0, 0), CFReadStreamClose(v9), v12))
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFDictionaryGetTypeID())
      {
        if (a3)
        {
          *a3 = nlp::createErrorWithMessageAndURL(@"Property list at URL is not a dictionary", fileURL, v14);
        }

        CFRelease(v12);
        goto LABEL_15;
      }
    }

    else
    {
      if (!a3)
      {
LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }

      v12 = 0;
      *a3 = nlp::createErrorWithMessageAndURL(@"File at URL is not a valid property list", fileURL, v10);
    }

LABEL_16:
    CFRelease(v9);
    return v12;
  }

  v12 = 0;
  if (a3)
  {
    *a3 = nlp::createErrorWithMessageAndURL(@"File at URL is not readable", fileURL, v8);
  }

  return v12;
}

void sub_1C662C8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFReadStream *>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFErrorRef nlp::createErrorWithMessageAndURL(nlp *this, CFURLRef anURL, const __CFURL *a3)
{
  v4 = CFURLCopyPath(anURL);
  v5 = *MEMORY[0x1E695E480];
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@: %@", this, v4);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], v6);
  v8 = CFErrorCreate(v5, @"com.apple.NLPUtils.ErrorDomain", 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

void sub_1C662CA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFReadStream *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void __normalizeRelationLabelString_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "[POMMES][SearchTool][Query Normalization] Error creating apostropheSRegex: %@", &v2, 0xCu);
}

void QP::Embedder::preheat()
{
  dispatch_once(&embeddingLogger(void)::token, &__block_literal_global_3);
}

{
  dispatch_once(&embeddingLogger(void)::token, &__block_literal_global_3);
}

void copyEmbeddingDataForInputs_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void copyEmbeddingDataForInputs_cold_4()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void copyEmbeddingDataForInputs_cold_11()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] %@");
}

void copyEmbeddingDataForInputs_cold_14()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void copyEmbeddingDataForInputs_cold_15()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Failed to serialize the embedding data dictionary with error: %@");
}

void copyEmbeddingDataForInputs_cold_19()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __embeddingGeneratorPreheatAsync_block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = *(*(*a2 + 8) + 24) / 1000000.0;
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, a2, a3, "[QPNLU] Embedding preheat failed (%@) (time=%.6fms)", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void embeddingGeneratorPreheatSync_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  *v3 = 134218242;
  *&v3[4] = *(v0 + 24) / 1000000.0;
  *&v3[12] = 2112;
  *&v3[14] = *(*v1 + 40);
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v1, v2, "[QPNLU] Embedding preheat failed (time=time=%.6fms) (%@)", *v3, *&v3[8], *&v3[16]);
}

void QP::Formatter::loadFormatterResource()
{
  dispatch_once(&formatterLogger(void)::token, &__block_literal_global_6);
}

{
  dispatch_once(&formatterLogger(void)::token, &__block_literal_global_6);
}

void QP::Formatter::updateParseWithAttribute(void *a1)
{
  _Block_object_dispose(a1, 8);
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>()
{
  OUTLINED_FUNCTION_0_1();
  if (v2 < 0)
  {
    operator delete(*v1);
  }

  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string,std::string,CFRange &,QP::LexemeStatus*>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t QP::Lexer::Lexer(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return MEMORY[0x1C695B850](a2, 0x20C40D91ED9E0);
}

void QP::LLMParser::parse()
{
  dispatch_once(&llmParserLogger(void)::token, &__block_literal_global_134);
}

{
  dispatch_once(&llmParserLogger(void)::token, &__block_literal_global_134);
}

void QP::LLMParser::parseInternal(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 48);
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1C6584000, log, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] spQUParse from LLM Parse:%@", &v4, 0x16u);
}

void QP::LLMParser::parseInternal(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 48);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Got empty QU Parse from LLM spQUParse, skipping generating QUOutput", &v3, 0xCu);
}

void QP::ParserConfiguration::loadConfigurationResource(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "QueryParser: %@ (error)", &v3, 0xCu);
}

void QP::ParserGrammar::loadParserGrammarResource()
{
  dispatch_once(&grammarLogger(void)::token, &__block_literal_global_11);
}

{
  dispatch_once(&grammarLogger(void)::token, &__block_literal_global_11);
}

void QP::ParserGrammar::fallbackToCFG(CFURLRef *a1, const __CFString *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = CFURLGetString(*a1);
  v6 = 136315394;
  CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
  v8 = 2080;
  v9 = CFStringGetCStringPtr(a2, 0x8000100u);
  _os_log_error_impl(&dword_1C6584000, a3, OS_LOG_TYPE_ERROR, "Failed loading %s. Falling back to %s.", &v6, 0x16u);
}

void QP::ParserGrammar::tokenCompletions(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C6584000, a2, OS_LOG_TYPE_FAULT, "m_completion_keys is missing an entry for key %@", &v2, 0xCu);
}

void QP::QueryParserEngine::init()
{
  dispatch_once(&parserLogger(void)::token, &__block_literal_global_15);
}

{
  dispatch_once(&parserLogger(void)::token, &__block_literal_global_15);
}

uint64_t QP::QueryParserEngine::init(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5(a1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v2);
  }

  return MEMORY[0x1C695B850](v1, 0x60C40737A016DLL);
}

{
  v3 = OUTLINED_FUNCTION_5(a1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v2);
  }

  return MEMORY[0x1C695B850](v1, 0x10F2C40A327DDDALL);
}

void QP::QueryParserEngine::loadKnowledgeSource(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v1);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v1 = OUTLINED_FUNCTION_4(a1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v1 = OUTLINED_FUNCTION_4(a1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v1 = OUTLINED_FUNCTION_4(a1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  OUTLINED_FUNCTION_2_0();
}

void QP::QueryParserEngine::setString()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1C6584000, v1, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] queryRef (%@)", v2, 0x16u);
}

void QP::QueryParserEngine::embeddingString()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Did not request any query embedding due to nil inputs / keysarray", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Empty photo embedding string from parser", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Modified photo embedding string is empty, not requesting a photos query embedding", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Modified photo embedding string is nil, not requesting a photos query embedding", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Failed to get embedding string from U2 parser", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Text embedding string is empty (%@), not requesting a text query embedding");
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Text embedding string is nil (%@), not requesting a text query embedding");
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Did not request any query embedding", v2, v3, v4, v5);
}

uint64_t QP::QueryParserEngine::embeddingString(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 8);
  v5 = 134218240;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Unsafe intent for context '%lu', avoid embedding search", &v5, 0x16u);
  if (parserLogger(void)::token == -1)
  {
    return 1;
  }

  dispatch_once(&parserLogger(void)::token, &__block_literal_global_15);
  return 0;
}

void std::construct_at[abi:ne200100]<QP::U2Parser,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::shared_ptr<QP::Lexer> &,QP::U2Parser*>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v1);
  }
}

uint64_t QP::Formatter::Formatter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return MEMORY[0x1C695B850](v1, 0x60C40FA586727);
}

void QPSpotlightKnowledgeContextUpdateResources(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "safety: unable to load config %@", &v3, 0xCu);
}

void QPSpotlightKnowledgeContextUpdateResources(int *a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_1C6584000, log, OS_LOG_TYPE_ERROR, "safety: unsupported major version: %d != %d", v4, 0xEu);
}

void QPSpotlightKnowledgeContextUpdateResources()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_1C6584000, v0, v1, "safety: unable to load data map", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_1C6584000, v0, v1, "safety: missing resource", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_1C6584000, v0, v1, "safety: missing config", v2, v3, v4, v5);
}

void ___ZL42QPSpotlightKnowledgeContextUpdateResourcesP26_SpotlightKnowledgeContexthU13block_pointerFvP9__CFErrorE_block_invoke_cold_3(os_log_t log, float a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&dword_1C6584000, log, OS_LOG_TYPE_ERROR, "unable to load lexicon cache in %.1fms", &v2, 0xCu);
}

void QP::isSupportedQULanguage()
{
  dispatch_once(&QP::isSupportedQULanguage(NSLocale *)::onceToken, &__block_literal_global_20);
}

{
  dispatch_once(&u2ParserLogger(void)::token, &__block_literal_global_559);
}

void QP::U2Parser::U2Parser(std::__shared_weak_count **a1, std::__shared_weak_count **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }

  if (*(a3 + 79) < 0)
  {
    operator delete(*(a3 + 56));
  }
}

void QP::U2Parser::lexemeForArgMediaTypeWithRange(uint64_t **a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v3 = 138412546;
  v4 = a2;
  v5 = 2080;
  v6 = a1;
  _os_log_debug_impl(&dword_1C6584000, log, OS_LOG_TYPE_DEBUG, "Found matching Media lexeme for %@ with type %s", &v3, 0x16u);
}

void QP::U2Parser::parseInternal()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_1C6584000, v0, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] Starting U2 parse", v1, 0xCu);
}

{
  dispatch_once(&QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken, &__block_literal_global_598);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] ECR request for all visual identifiers failed: %@");
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Invalid U2 output", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_1();
  *v0 = 134217984;
  *v1 = v2;
  _os_log_debug_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] Skipping token that was part of a previous token group", v3, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  *v0 = 134217984;
  *v1 = v2;
  _os_log_debug_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] Successfully grounded person", v3, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  *v0 = 134217984;
  *v1 = v2;
  _os_log_error_impl(&dword_1C6584000, v4, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Unable to parse: unable to find range for ARG_TIME group", v3, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Unable to parse: token not found in user query", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Empty U2 output", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v0, v1, "[QPNLU][qid=%ld] Unable to parse: no locale set", v2, v3, v4, v5);
}

void QP::U2Parser::parseInternal(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, a2, a3, "[QPNLU][qid=%ld] U2 parsing timed out", a5, a6, a7, a8, v8, DWORD2(v8));
}

void QP::U2Parser::parseInternal(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a1;
  v4 = 1024;
  v5 = 25;
  _os_log_fault_impl(&dword_1C6584000, a2, OS_LOG_TYPE_FAULT, "[QPNLU][qid=%ld] [Recurring Failure] U2 parsing timed out %d times", &v2, 0x12u);
}

void QP::createEmbeddingString(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, a2, a3, "[QPNLU][qid=%ld] no noun present in query (%@) avoiding embedding string", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void QP::createEmbeddingString(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, a2, a3, "[QPNLU][qid=%ld] embedding search disabled , part of control", a5, a6, a7, a8, v8, DWORD2(v8));
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFCalendarGetMaximumRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit)
{
  v2 = MEMORY[0x1EEDB6B78](calendar, unit);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x1EEDB6B88](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x1EEDB7A68](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}