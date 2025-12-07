uint64_t sub_26D51600C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26D516078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26D5160E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D516120()
{
  MEMORY[0x26D6C22B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D516168()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D5161A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D5161D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D516218()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D516250()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D516288(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D5162A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D5162C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t _TTSSystemFocusedPid()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v0 = getAXSpringBoardServerClass_softClass;
  v10 = getAXSpringBoardServerClass_softClass;
  if (!getAXSpringBoardServerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getAXSpringBoardServerClass_block_invoke;
    v6[3] = &unk_279DA53F8;
    v6[4] = &v7;
    __getAXSpringBoardServerClass_block_invoke(v6);
    v0 = v8[3];
  }

  v1 = v0;
  _Block_object_dispose(&v7, 8);
  v2 = [v0 server];
  v3 = [v2 focusedAppPID];
  v4 = [v3 intValue];

  return v4;
}

void sub_26D5163F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXSpringBoardServerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279DA5418;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSpringBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSpringBoardServerClass_block_invoke_cold_1();
  }

  getAXSpringBoardServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_26D51674C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26D516950(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_26D516FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    v31 = AXTTSLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [TTSSiriSynthWrapper initWithVoicePath:v31 language:? dynamicStylePrompt:? censorPlainText:? delegate:? feResourcePath:?];
    }

    v32 = [v28 synthesizer];
    if (v32)
    {
      TTSSynthesizer::~TTSSynthesizer(v32);
      MEMORY[0x26D6C1B10]();
    }

    [v28 setSynthesizer:0];
    __cxa_end_catch();
    JUMPOUT(0x26D516F44);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_26D517264(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TTSSiriSynthWrapper;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_26D517638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 96) = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v26 - 96));
  a22 = &a25;
  std::vector<TTSSynthesizer::SpeakingStyle>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void sub_26D517DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const std::logic_error a9, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](&a23);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    MEMORY[0x26D6C1A90](&a9, exception_ptr);
    __cxa_begin_catch(a1);
    v28 = AXTTSLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __40__TTSSiriSynthWrapper_synthesizeString___block_invoke_cold_1(&a9, v28);
    }

    [*(v23 + 32) setSynthesizing:0];
    v29 = [*(v23 + 32) delegate];
    [v29 siriDidEndSynthesis:*(v23 + 32) successfully:0];

    MEMORY[0x26D6C1AB0](&a9);
    __cxa_end_catch();
    JUMPOUT(0x26D517D70);
  }

  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v24 - 72);
  *(v24 - 72) = &a11;
  std::vector<TTSSynthesizer::Marker>::__destroy_vector::operator()[abi:ne200100]((v24 - 72));
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279DA53E8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::allocator<float>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D518BA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<TTSSynthesizer::SpeakingStyle>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TTSSynthesizer::SpeakingStyle>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TTSSynthesizer::SpeakingStyle>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        *(v3 - 2) = v4;
        operator delete(v4);
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v5 = v3 - 9;
      if (*(v3 - 49) < 0)
      {
        operator delete(*v5);
      }

      v3 -= 9;
    }

    while (v5 != v2);
  }

  a1[1] = v2;
}

void std::vector<TTSSynthesizer::Marker>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void _ZNSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEED0Ev(uint64_t a1)
{

  JUMPOUT(0x26D6C1B10);
}

__n128 _ZNKSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEE7__cloneEPNS0_6__baseIS7_EE(uint64_t a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_287ED5780;
  a2->n128_u64[1] = *(a1 + 8);
  v4 = *(a1 + 32);
  result = *(a1 + 16);
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

void _ZNSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEE18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEEclEOS6_(id *a1, int *a2, __n128 a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 <= 3)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return 0;
      }

      v6 = a1 + 1;
      [a1[1] setSynthesizing:{0, a3.n128_f64[0]}];
      v7 = [*v6 delegate];
      [v7 siriDidEndSynthesis:*v6 successfully:1];
    }

    else
    {
      v7 = [a1[1] delegate];
      [v7 siriDidStartSynthesis:a1[1]];
    }

    return 0;
  }

  if (v5 == 4)
  {
    v55 = a1[2];
    v56 = *v55;
    v57 = v55[1];
    if (v56 == v57)
    {
      return 0;
    }

    v58 = v57 - v56;
    v83[0] = 1;
    v83[2] = 1;
    v83[3] = v57 - v56;
    v84 = v56;
    v59 = objc_alloc(MEMORY[0x277CB83C0]);
    v60 = [a1[1] engineFormat];
    v61 = [v59 initWithPCMFormat:v60 bufferListNoCopy:v83 deallocator:&__block_literal_global_222];

    v62 = objc_alloc(MEMORY[0x277CB83C0]);
    v63 = [a1[1] outputFormat];
    v64 = [v62 initWithPCMFormat:v63 frameCapacity:v58 >> 1];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v86 = 0;
    v65 = [a1[1] bufferConverter];
    v81 = buf;
    v82 = 0;
    __src = MEMORY[0x277D85DD0];
    v77 = 3221225472;
    v78 = ___ZZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_ENK3__0clEN14TTSSynthesizer15CallbackMessageE_block_invoke_2;
    v79 = &unk_279DA5530;
    v66 = v61;
    v80 = v66;
    [v65 convertToBuffer:v64 error:&v82 withInputFromBlock:&__src];
    v67 = v82;

    v68 = [a1[1] delegate];
    [v68 siri:a1[1] didGenerateBuffer:v64];

    v69 = a1[2];
    v70 = *v69;
    v71 = v69[1];
    if ((v71 - *v69))
    {
      v72 = v71 - 1;
      if (v71 - 1 == v70)
      {
LABEL_90:

        _Block_object_dispose(buf, 8);
        return 0;
      }

      if (v71 != v72)
      {
        *v70 = *v72;
      }

      ++v70;
    }

    v69[1] = v70;
    goto LABEL_90;
  }

  if (v5 != 5)
  {
    return 0;
  }

  __src = 0;
  v77 = 0;
  v78 = 0;
  v8 = a1[3];
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    goto LABEL_93;
  }

  v11 = MEMORY[0x277D85DE0];
  v12 = 0x277CCA000uLL;
  a3.n128_u64[0] = 138412546;
  v75 = a3;
  do
  {
    if (*v9 == 1)
    {
      v17 = *(v9 + 55);
      if (v17 >= 0)
      {
        v18 = (v9 + 32);
      }

      else
      {
        v18 = *(v9 + 32);
      }

      if (v17 >= 0)
      {
        v19 = *(v9 + 55);
      }

      else
      {
        v19 = *(v9 + 40);
      }

      if (v19 < 1)
      {
        v23 = 0;
LABEL_25:
        v24 = 1;
        goto LABEL_67;
      }

      v20 = &v18[v19];
      v21 = v18 + 1;
      if (v19 != 1)
      {
        v22 = *v18;
        if (v22 != 48)
        {
LABEL_29:
          if (v22 != 36)
          {
            if ((v22 & 0x80) == 0 && (*(v11 + 4 * v22 + 60) & 0x400) != 0)
            {
              v23 = 0;
              while (1)
              {
                v36 = *v18;
                if ((v36 & 0x80000000) != 0 || (*(v11 + 4 * v36 + 60) & 0x400) == 0)
                {
                  goto LABEL_65;
                }

                v23 = v36 + 10 * v23 - 48;
                ++v18;
                v24 = 1;
                if (v18 >= v20)
                {
                  goto LABEL_66;
                }
              }
            }

            if (v22 == 39 || v22 == 34)
            {
              if (v19 == 1)
              {
LABEL_47:
                v23 = 0;
                goto LABEL_65;
              }

              v23 = 0;
              v37 = v18 + 2;
              while (1)
              {
                v38 = *(v37 - 1);
                if (v22 == v38)
                {
                  break;
                }

                v39 = v38 | (v23 << 8);
                v24 = 1;
                if (v37 < v20)
                {
                  ++v37;
                  v40 = v23 >= 0x10000;
                  v23 = v39;
                  if (!v40)
                  {
                    continue;
                  }
                }

                v23 = v39;
                goto LABEL_66;
              }
            }

            else
            {
              v23 = (v22 << 24) | (v18[1] << 16) | (v18[2] << 8) | v18[3];
            }

LABEL_65:
            v24 = 1;
LABEL_66:
            v12 = 0x277CCA000;
            goto LABEL_67;
          }

LABEL_30:
          if (v21 < v20)
          {
            v23 = 0;
            v25 = &v18[v19] - v21;
            v12 = 0x277CCA000;
            do
            {
              v26 = *v21;
              if ((v26 & 0x80000000) != 0)
              {
                break;
              }

              v27 = *(v11 + 4 * v26 + 60);
              if ((v27 & 0x10000) == 0)
              {
                break;
              }

              v28 = (v27 & 0x1000) != 0 ? -87 : -55;
              v29 = (v27 & 0x400) != 0 ? -48 : v28;
              v23 = v26 + 16 * v23 + v29;
              ++v21;
              --v25;
            }

            while (v25);
            goto LABEL_25;
          }

          goto LABEL_47;
        }

        if (__toupper(*v21) == 88)
        {
          v21 = v18 + 2;
          goto LABEL_30;
        }
      }

      v22 = *v18;
      goto LABEL_29;
    }

    if (*v9)
    {
      goto LABEL_79;
    }

    v13 = *(v9 + 16);
    if (!v13)
    {
      goto LABEL_49;
    }

    v14 = *(v9 + 8) + v13;
    v15 = a1[4];
    v16 = *(v15 + 23);
    if ((v16 & 0x8000000000000000) != 0)
    {
      if (v14 > v15[1])
      {
        goto LABEL_49;
      }

LABEL_52:
      v31 = [MEMORY[0x277D70420] utf16RangeFromUTF8Range:*&v75 chars:? size:?];
      v33 = v32;
      v34 = [a1[1] processedSpeechString];
      v23 = [v34 translateRangeInTransformedString:{v31, v33}];
      v3 = v35;

      v24 = 0;
LABEL_67:
      v41 = *(v9 + 24);
      v42 = v77;
      if (v77 >= v78)
      {
        v44 = __src;
        v45 = v77 - __src;
        v46 = (v77 - __src) >> 4;
        v47 = v46 + 1;
        if ((v46 + 1) >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v48 = v78 - __src;
        if ((v78 - __src) >> 3 > v47)
        {
          v47 = v48 >> 3;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v47 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v47)
        {
          std::allocator<SiriTTSMarker>::allocate_at_least[abi:ne200100](&__src, v47);
        }

        v49 = (v77 - __src) >> 4;
        v50 = 16 * v46;
        *v50 = v24;
        *(v50 + 1) = 0;
        *(v50 + 2) = v3;
        *(v50 + 4) = v23;
        *(v50 + 8) = v41;
        v43 = 16 * v46 + 16;
        v51 = (v50 - 16 * v49);
        memcpy(v51, v44, v45);
        v52 = __src;
        __src = v51;
        v77 = v43;
        v78 = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        *v77 = v24;
        *(v42 + 1) = 0;
        *(v42 + 2) = v3;
        *(v42 + 4) = v23;
        v43 = v42 + 16;
        *(v42 + 8) = v41;
      }

      v77 = v43;
      goto LABEL_79;
    }

    if (v14 <= v16)
    {
      goto LABEL_52;
    }

LABEL_49:
    v30 = AXTTSLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v53 = [*(v12 + 2992) numberWithUnsignedLong:*(v9 + 8)];
      v54 = [*(v12 + 2992) numberWithUnsignedLong:*(v9 + 16)];
      *buf = v75.n128_u32[0];
      *&buf[4] = v53;
      *&buf[12] = 2112;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_26D514000, v30, OS_LOG_TYPE_ERROR, "Siri returned invalid word marker [%@,%@], skipping.", buf, 0x16u);

      v12 = 0x277CCA000;
    }

LABEL_79:
    v9 += 56;
  }

  while (v9 != v10);
  if (__src != v77)
  {
    v73 = [a1[1] delegate];
    [v73 siri:a1[1] didGenerateMarkers:? count:?];
  }

LABEL_93:
  std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](a1[3]);
  if (__src)
  {
    v77 = __src;
    operator delete(__src);
  }

  return 0;
}

void sub_26D51978C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id ___ZZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_ENK3__0clEN14TTSSynthesizer15CallbackMessageE_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

void std::allocator<SiriTTSMarker>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

Swift::UInt32 __swiftcall String.osType()()
{
  v0 = sub_26D52B5C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_26D52B5B0();
  v4 = sub_26D52B5A0();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 != 15)
  {
    v8 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_10;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = __OFSUB__(v9, v10);
      v12 = v9 - v10;
      if (v11)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v12 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (v8)
    {
      if (__OFSUB__(HIDWORD(v4), v4))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (HIDWORD(v4) - v4 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (BYTE6(v6) != 4)
    {
      goto LABEL_10;
    }

    sub_26D519F80(v4, v6);
    sub_26D519D60(v4, v6, v4, v6, &v14);
LABEL_10:
    sub_26D519C84(v4, v6);
  }

  result = v14;
  if (HIDWORD(v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26D519C84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D519C98(a1, a2);
  }

  return a1;
}

uint64_t sub_26D519C98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unsigned __int8 *sub_26D519CEC(unsigned __int8 *result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return result;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_12;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_11:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (v5)
  {
    v9 = *a4;
    do
    {
      v10 = *result++;
      v9 = v10 | (v9 << 8);
      *a4 = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_26D519D60(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v24, 0, 14);
      v16 = v24;
      goto LABEL_19;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    a1 = sub_26D52AFA0();
    v13 = a1;
    if (a1)
    {
      a1 = sub_26D52AFC0();
      if (__OFSUB__(v11, a1))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v13 += v11 - a1;
    }

    if (!__OFSUB__(v12, v11))
    {
LABEL_17:
      sub_26D52AFB0();
      v16 = v13;
LABEL_19:
      sub_26D519CEC(v16, a3, a4, a5);
      return sub_26D519C98(a3, a4);
    }

    __break(1u);
LABEL_13:
    v14 = a1;
    if (a1 > a1 >> 32)
    {
      __break(1u);
      goto LABEL_33;
    }

    v13 = sub_26D52AFA0();
    if (v13)
    {
      v15 = sub_26D52AFC0();
      if (__OFSUB__(v14, v15))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v13 += v14 - v15;
    }

    goto LABEL_17;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  v24[0] = a1;
  LOWORD(v24[1]) = a2;
  BYTE2(v24[1]) = BYTE2(a2);
  BYTE3(v24[1]) = BYTE3(a2);
  BYTE4(v24[1]) = BYTE4(a2);
  v9 = a4 >> 62;
  BYTE5(v24[1]) = BYTE5(a2);
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return sub_26D519C98(a3, a4);
    }

    v19 = *(a3 + 16);
    v18 = *(a3 + 24);
    v20 = __OFSUB__(v18, v19);
    v10 = v18 - v19;
    if (!v20)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
    goto LABEL_28;
  }

  LODWORD(v10) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_36;
  }

  v10 = v10;
LABEL_27:
  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  if (v10)
  {
    v21 = *a5;
    v22 = v24;
    do
    {
      v23 = *v22++;
      v21 = v23 | (v21 << 8);
      --v10;
    }

    while (v10);
    *a5 = v21;
  }

  return sub_26D519C98(a3, a4);
}

void sub_26D519F80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_26D519FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D52B380();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for TTSSiriSynthVoice.Voice(0);

  return MEMORY[0x2821FEBC8](a2, v5, 1);
}

uint64_t sub_26D51A078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);

  return MEMORY[0x2821FEBC8](a3, v4, 0);
}

uint64_t sub_26D51A0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D51A124(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v3 = sub_26D52B3B0();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D52B3F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D52B380();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26D51A0C0(v2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (*v17 == v49 && v17[1] == v50)
    {

      v42 = 1;
    }

    else
    {
      v42 = sub_26D52B810();
    }

    return v42 & 1;
  }

  v48 = v12;
  (*(v12 + 32))(v14, v17, v11);
  sub_26D52B360();
  v18 = sub_26D52B3E0();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v22 = v49;
  v21 = v50;
  if (v18 == v49 && v20 == v50)
  {

    goto LABEL_19;
  }

  v24 = sub_26D52B810();

  if (v24)
  {
LABEL_19:
    (*(v48 + 8))(v14, v11);
    v42 = 1;
    return v42 & 1;
  }

  v47 = v14;
  v25 = sub_26D52B370();
  KeyPath = swift_getKeyPath();
  *(&v45 - 2) = MEMORY[0x28223BE20](KeyPath);
  v27 = swift_getKeyPath();
  v28 = *(v25 + 16);
  if (v28)
  {
    v46 = v11;
    v57 = MEMORY[0x277D84F90];
    sub_26D51D420(0, v28, 0);
    v29 = v57;
    v30 = *(v54 + 16);
    v31 = *(v54 + 80);
    v45 = v25;
    v32 = v25 + ((v31 + 32) & ~v31);
    v51 = *(v54 + 72);
    v52 = v30;
    v54 += 16;
    v33 = (v54 - 8);
    do
    {
      v34 = v53;
      v52(v6, v32, v53);
      v35 = v27;
      swift_getAtKeyPath();
      (*v33)(v6, v34);
      v37 = v55;
      v36 = v56;
      v57 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_26D51D420((v38 > 1), v39 + 1, 1);
        v29 = v57;
      }

      *(v29 + 16) = v39 + 1;
      v40 = v29 + 16 * v39;
      *(v40 + 32) = v37;
      *(v40 + 40) = v36;
      v32 += v51;
      --v28;
      v27 = v35;
    }

    while (v28);

    v22 = v49;
    v21 = v50;
    v11 = v46;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v55 = v22;
  v56 = v21;
  MEMORY[0x28223BE20](v43);
  *(&v45 - 2) = &v55;
  v42 = sub_26D51D54C(sub_26D51D68C, (&v45 - 4), v29);

  (*(v48 + 8))(v47, v11);
  return v42 & 1;
}

void *sub_26D51A6F4@<X0>(void *a2@<X8>)
{
  result = sub_26D52B3A0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_26D51A734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D52B430();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26D51A760()
{
  sub_26D52B2C0();
  if ((LODWORD(v0) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 >= 9.2234e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_26D51A7E8()
{
  v1 = *v0;
  sub_26D52B860();
  MEMORY[0x26D6C18F0](v1);
  return sub_26D52B890();
}

uint64_t sub_26D51A85C(uint64_t a1)
{
  v2 = *v1;
  sub_26D52B860();
  MEMORY[0x26D6C18F0](v2);
  return sub_26D52B890();
}

uint64_t sub_26D51A8A0()
{
  if (*v0)
  {
    return 0x326E6F6973726576;
  }

  else
  {
    return 0x316E6F6973726576;
  }
}

void *sub_26D51A8DC(void *a1, uint64_t a2, int a3)
{
  v182 = a3;
  v196 = a2;
  v198 = a1;
  v188 = sub_26D52B4B0();
  v168 = *(v188 - 8);
  v3 = MEMORY[0x28223BE20](v188);
  v174 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v194 = &v162 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v185 = &v162 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v190 = &v162 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v192 = &v162 - v12;
  MEMORY[0x28223BE20](v11);
  v191 = &v162 - v13;
  v177 = sub_26D52B3F0();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_26D52B030();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D52B350();
  v17 = *(v16 - 8);
  v186 = v16;
  v187 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v166 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v169 = &v162 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v171 = &v162 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v178 = &v162 - v25;
  MEMORY[0x28223BE20](v24);
  v173 = &v162 - v26;
  v197 = sub_26D52B3B0();
  v27 = *(v197 - 8);
  v28 = MEMORY[0x28223BE20](v197);
  v167 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v193 = &v162 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v165 = &v162 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v195 = &v162 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v170 = &v162 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v162 - v39;
  MEMORY[0x28223BE20](v38);
  v172 = &v162 - v41;
  v42 = sub_26D52B380();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502BF0, &qword_26D52C930);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v162 - v47;
  v49 = sub_26D52B180();
  v184 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v162 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  MEMORY[0x28223BE20](v52);
  v54 = &v162 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D51A0C0(v189, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26D52B1D0();
    sub_26D52B1B0();
    sub_26D52B1A0();

    v72 = v184;
    if ((*(v184 + 48))(v48, 1, v49) != 1)
    {
      (*(v72 + 32))(v51, v48, v49);
      sub_26D52B1B0();
      sub_26D52B1C0();

      sub_26D52B1B0();
      v73 = sub_26D52B190();

      (*(v72 + 8))(v51, v49);
      return v73;
    }

    sub_26D51D798(v48, &qword_280502BF0, &qword_26D52C930);
    return 0;
  }

  v164 = v43;
  v55 = *(v43 + 32);
  v163 = v42;
  v55(v45, v54, v42);
  v183 = v45;
  result = sub_26D52B370();
  v57 = result;
  v58 = result[2];
  v59 = v197;
  if (v58)
  {
    v60 = 0;
    v61 = (v27 + 8);
    while (1)
    {
      if (v60 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      (*(v27 + 16))(v40, v57 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v60, v59);
      swift_getKeyPath();
      sub_26D52B3A0();

      if (v201 == v198 && v202 == v196)
      {
        break;
      }

      v62 = sub_26D52B810();

      if (v62)
      {
        goto LABEL_46;
      }

      ++v60;
      v59 = v197;
      result = (*v61)(v40, v197);
      if (v58 == v60)
      {
        goto LABEL_9;
      }
    }

LABEL_46:

    v107 = v172;
    (*(v27 + 32))(v172, v40, v197);
    v108 = sub_26D51DDB0();
    v109 = v186;
    v110 = v187;
    v111 = v173;
    (*(v187 + 16))(v173, v108, v186);
    v112 = sub_26D52B330();
    v113 = sub_26D52B6F0();
    v114 = os_log_type_enabled(v112, v113);
    v115 = v183;
    if (v114)
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v201 = v117;
      *v116 = 136315138;
      *(v116 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v201);
      _os_log_impl(&dword_26D514000, v112, v113, "%s: Got legacy modelID for voiceID. Returning model path directly", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x26D6C2260](v117, -1, -1);
      MEMORY[0x26D6C2260](v116, -1, -1);
    }

    (*(v110 + 8))(v111, v109);
    v118 = v164;
    v119 = v163;
    v120 = v181;
    v121 = v179;
    sub_26D52B390();
    v73 = sub_26D52B020();
    (*(v180 + 8))(v121, v120);
    (*v61)(v107, v197);
    (*(v118 + 8))(v115, v119);
    return v73;
  }

LABEL_9:

  v63 = v175;
  v64 = v183;
  sub_26D52B360();
  v65 = sub_26D52B3E0();
  v67 = v66;
  v176[1](v63, v177);
  v68 = v196;
  if (v65 == v198 && v67 == v196)
  {

    v69 = v186;
    v70 = v187;
    v71 = v178;
    goto LABEL_16;
  }

  v74 = sub_26D52B810();

  v69 = v186;
  v70 = v187;
  v71 = v178;
  if ((v74 & 1) == 0)
  {
    v122 = sub_26D51DDB0();
    v123 = v166;
    (*(v70 + 16))(v166, v122, v69);

    v124 = sub_26D52B330();
    v125 = sub_26D52B6E0();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v201 = v127;
      *v126 = 136315394;
      *(v126 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v201);
      *(v126 + 12) = 2080;
      *(v126 + 14) = sub_26D51CE78(v198, v68, &v201);
      _os_log_impl(&dword_26D514000, v124, v125, "%s: No matching PV found for voiceID %s", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v127, -1, -1);
      MEMORY[0x26D6C2260](v126, -1, -1);
    }

    (*(v70 + 8))(v123, v69);
    (*(v164 + 8))(v64, v163);
    return 0;
  }

LABEL_16:
  v75 = sub_26D51DDB0();
  v76 = *(v70 + 16);
  v175 = v75;
  v177 = v70 + 16;
  v176 = v76;
  (v76)(v71);

  v77 = sub_26D52B330();
  v78 = sub_26D52B6F0();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v201 = v80;
    *v79 = 136315394;
    *(v79 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v201);
    *(v79 + 12) = 2080;
    v81 = v71;
    v82 = v182;
    if (v182)
    {
      v83 = 0x326E6F6973726576;
    }

    else
    {
      v83 = 0x316E6F6973726576;
    }

    v84 = sub_26D51CE78(v83, 0xE800000000000000, &v201);

    *(v79 + 14) = v84;
    _os_log_impl(&dword_26D514000, v77, v78, "%s: Found matching PV for voiceID. looking for model matching preferred flavor: %s", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v80, -1, -1);
    MEMORY[0x26D6C2260](v79, -1, -1);

    v178 = *(v70 + 8);
    (v178)(v81, v69);
  }

  else
  {

    v178 = *(v70 + 8);
    (v178)(v71, v69);
    v82 = v182;
  }

  v85 = v174;
  result = sub_26D52B370();
  v86 = result[2];
  v198 = result;
  v184 = v86;
  if (v82)
  {
    v87 = v197;
    v88 = v188;
    if (v86)
    {
      v89 = 0;
      v170 = v165;
      v90 = (v168 + 8);
      v189 = (v27 + 8);
      while (v89 < result[2])
      {
        (*(v27 + 16))(v193, result + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v89, v87);
        swift_getKeyPath();
        sub_26D52B3A0();

        sub_26D52B480();
        sub_26D51D6E4();
        sub_26D52B640();
        sub_26D52B640();
        if (v201 == v199 && v202 == v200)
        {
          v141 = *v90;
          (*v90)(v85, v88);
          v141(v194, v88);

LABEL_68:

          v142 = *(v27 + 32);
          v143 = v170;
          v144 = v170;
          v145 = v193;
          goto LABEL_71;
        }

        v91 = sub_26D52B810();
        v92 = *v90;
        (*v90)(v85, v88);
        v92(v194, v88);

        if (v91)
        {
          goto LABEL_68;
        }

        ++v89;
        v87 = v197;
        (*v189)(v193, v197);
        v88 = v188;
        result = v198;
        if (v184 == v89)
        {
          goto LABEL_43;
        }
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    goto LABEL_43;
  }

  v93 = v197;
  v94 = v188;
  if (!v86)
  {
LABEL_43:

    v101 = sub_26D52B370();
    if (*(v101 + 16))
    {
      v102 = v167;
      v103 = v197;
      (*(v27 + 16))(v167, v101 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v197);

      v104 = v179;
      sub_26D52B390();
      (*(v27 + 8))(v102, v103);
      v73 = sub_26D52B020();
      v106 = v105;
      (*(v180 + 8))(v104, v181);
    }

    else
    {

      v73 = 0;
      v106 = 0;
    }

    v128 = v182;
    v129 = v171;
    v130 = v186;
    (v176)(v171, v175, v186);

    v131 = sub_26D52B330();
    v132 = sub_26D52B6F0();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v201 = v134;
      *v133 = 136315650;
      *(v133 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v201);
      *(v133 + 12) = 2080;
      if (v128)
      {
        v135 = 0x326E6F6973726576;
      }

      else
      {
        v135 = 0x316E6F6973726576;
      }

      v136 = sub_26D51CE78(v135, 0xE800000000000000, &v201);

      *(v133 + 14) = v136;
      *(v133 + 22) = 2080;
      if (v106)
      {
        v137 = v73;
      }

      else
      {
        v137 = 0x3E6C696E3CLL;
      }

      if (v106)
      {
        v138 = v106;
      }

      else
      {
        v138 = 0xE500000000000000;
      }

      v139 = sub_26D51CE78(v137, v138, &v201);

      *(v133 + 24) = v139;
      _os_log_impl(&dword_26D514000, v131, v132, "%s: Did not find PV matching preferred flavor: %s. Falling back to next best option: %s", v133, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v134, -1, -1);
      MEMORY[0x26D6C2260](v133, -1, -1);

      v140 = v171;
    }

    else
    {

      v140 = v129;
    }

    (v178)(v140, v130);
    (*(v164 + 8))(v183, v163);
    return v73;
  }

  v95 = 0;
  v194 = (v27 + 16);
  v96 = (v168 + 8);
  v189 = (v27 + 8);
  while (v95 < result[2])
  {
    (*(v27 + 16))(v195, result + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v95, v93);
    swift_getKeyPath();
    sub_26D52B3A0();

    sub_26D52B4A0();
    sub_26D51D6E4();
    sub_26D52B640();
    sub_26D52B640();
    if (v201 == v199 && v202 == v200)
    {
      v97 = 1;
    }

    else
    {
      v97 = sub_26D52B810();
    }

    v98 = *v96;
    (*v96)(v192, v94);
    v98(v191, v94);

    if (v97)
    {
      goto LABEL_70;
    }

    swift_getKeyPath();
    sub_26D52B3A0();

    v99 = v185;
    sub_26D52B490();
    sub_26D52B640();
    sub_26D52B640();
    if (v201 == v199 && v202 == v200)
    {
      v98(v99, v94);
      v98(v190, v94);

LABEL_70:

      v142 = *(v27 + 32);
      v143 = v170;
      v144 = v170;
      v145 = v195;
LABEL_71:
      v146 = v197;
      v142(v144, v145, v197);
      v147 = v179;
      sub_26D52B390();
      (*v189)(v143, v146);
      v73 = sub_26D52B020();
      v149 = v148;
      (*(v180 + 8))(v147, v181);
      v150 = v169;
      v151 = v186;
      (v176)(v169, v175, v186);

      v152 = sub_26D52B330();
      v153 = sub_26D52B6F0();

      v154 = os_log_type_enabled(v152, v153);
      v155 = v183;
      if (v154)
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v201 = v157;
        *v156 = 136315650;
        *(v156 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v201);
        *(v156 + 12) = 2080;
        if (v182)
        {
          v158 = 0x326E6F6973726576;
        }

        else
        {
          v158 = 0x316E6F6973726576;
        }

        v159 = sub_26D51CE78(v158, 0xE800000000000000, &v201);

        *(v156 + 14) = v159;
        *(v156 + 22) = 2080;

        v160 = sub_26D51CE78(v73, v149, &v201);

        *(v156 + 24) = v160;
        _os_log_impl(&dword_26D514000, v152, v153, "%s: Found PV matching preferred flavor: %s: %s", v156, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6C2260](v157, -1, -1);
        MEMORY[0x26D6C2260](v156, -1, -1);

        v161 = v169;
      }

      else
      {

        v161 = v150;
      }

      (v178)(v161, v151);
      (*(v164 + 8))(v155, v163);
      return v73;
    }

    v100 = sub_26D52B810();
    v98(v99, v94);
    v98(v190, v94);

    if (v100)
    {
      goto LABEL_70;
    }

    ++v95;
    v93 = v197;
    (*v189)(v195, v197);
    result = v198;
    if (v184 == v95)
    {
      goto LABEL_43;
    }
  }

LABEL_81:
  __break(1u);
  return result;
}

BOOL sub_26D51C1DC()
{
  v1 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D51A0C0(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() == 1;
  sub_26D51D73C(v3);
  return v4;
}

uint64_t sub_26D51C27C()
{
  v0 = sub_26D52B4B0();
  v42 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v46 = &v34 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_26D52B3B0();
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C00, &qword_26D52C968);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_26D52B380();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D51A0C0(v43, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v15;
    v35 = v14;
    (*(v16 + 32))(v18, v21, v15);
    result = sub_26D52B370();
    v23 = result;
    v38 = *(result + 16);
    if (v38)
    {
      v24 = 0;
      v25 = (v42 + 8);
      v36 = (v45 + 8);
      v37 = v9;
      v42 = v10;
      v43 = v45 + 16;
      v40 = v18;
      v41 = v16;
      v39 = result;
      while (v24 < *(v23 + 16))
      {
        (*(v45 + 16))(v47, v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v24, v10);
        swift_getKeyPath();
        sub_26D52B3A0();

        sub_26D52B4A0();
        sub_26D51D6E4();
        sub_26D52B640();
        sub_26D52B640();
        if (v50 == v48 && v51 == v49)
        {
          v26 = 1;
        }

        else
        {
          v26 = sub_26D52B810();
        }

        v27 = *v25;
        (*v25)(v7, v0);
        v27(v9, v0);

        if (v26)
        {
          goto LABEL_17;
        }

        swift_getKeyPath();
        sub_26D52B3A0();

        v28 = v44;
        sub_26D52B490();
        sub_26D52B640();
        sub_26D52B640();
        if (v50 == v48 && v51 == v49)
        {
          v27(v28, v0);
          v27(v46, v0);

LABEL_17:

          (*(v41 + 8))(v40, v34);
          v31 = v45;
          v32 = v35;
          v33 = v42;
          (*(v45 + 32))(v35, v47, v42);
          (*(v31 + 56))(v32, 0, 1, v33);
          sub_26D51D798(v32, &qword_280502C00, &qword_26D52C968);
          return 1;
        }

        v29 = sub_26D52B810();
        v27(v28, v0);
        v27(v46, v0);

        v9 = v37;
        if (v29)
        {
          goto LABEL_17;
        }

        ++v24;
        v10 = v42;
        result = (*v36)(v47, v42);
        v23 = v39;
        v18 = v40;
        v16 = v41;
        if (v38 == v24)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
      (*(v16 + 8))(v18, v34);

      v30 = v35;
      (*(v45 + 56))(v35, 1, 1, v10);
      sub_26D51D798(v30, &qword_280502C00, &qword_26D52C968);
      return 0;
    }
  }

  else
  {
    sub_26D51D73C(v21);
    return 0;
  }

  return result;
}

uint64_t sub_26D51C900()
{
  v1 = sub_26D52B4B0();
  v35 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v41 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v40 = &v30 - v4;
  v5 = sub_26D52B3B0();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C00, &qword_26D52C968);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_26D52B380();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D51A0C0(v0, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v11;
    v34 = v10;
    v32 = v12;
    (*(v12 + 32))(v14, v17, v11);
    v31 = v14;
    result = sub_26D52B370();
    v36 = *(result + 16);
    if (v36)
    {
      v19 = 0;
      v37 = v39 + 16;
      v38 = result;
      v20 = (v35 + 8);
      v21 = (v39 + 8);
      while (v19 < *(result + 16))
      {
        (*(v39 + 16))(v7, result + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v19, v5);
        swift_getKeyPath();
        sub_26D52B3A0();

        sub_26D52B480();
        sub_26D51D6E4();
        sub_26D52B640();
        sub_26D52B640();
        if (v44 == v42 && v45 == v43)
        {
          v27 = *v20;
          (*v20)(v41, v1);
          v27(v40, v1);

LABEL_12:
          (*(v32 + 8))(v31, v33);

          v28 = v39;
          v29 = v34;
          (*(v39 + 32))(v34, v7, v5);
          (*(v28 + 56))(v29, 0, 1, v5);
          sub_26D51D798(v29, &qword_280502C00, &qword_26D52C968);
          return 1;
        }

        v22 = sub_26D52B810();
        v23 = v7;
        v24 = v5;
        v25 = *v20;
        (*v20)(v41, v1);
        v25(v40, v1);
        v5 = v24;
        v7 = v23;

        if (v22)
        {
          goto LABEL_12;
        }

        ++v19;
        (*v21)(v23, v5);
        result = v38;
        if (v36 == v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      (*(v32 + 8))(v31, v33);

      v26 = v34;
      (*(v39 + 56))(v34, 1, 1, v5);
      sub_26D51D798(v26, &qword_280502C00, &qword_26D52C968);
      return 0;
    }
  }

  else
  {
    sub_26D51D73C(v17);
    return 0;
  }

  return result;
}

unint64_t sub_26D51CE78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D51CF44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26D51DC18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26D51CF44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26D51D050(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26D52B7E0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26D51D050(uint64_t a1, unint64_t a2)
{
  v3 = sub_26D51D09C(a1, a2);
  sub_26D51D1CC(&unk_287ED5820);
  return v3;
}

void *sub_26D51D09C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D51D2B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26D52B7E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26D52B610();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D51D2B8(v10, 0);
        result = sub_26D52B7A0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26D51D1CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26D51D32C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D51D2B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502E20, &qword_26D52CAB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26D51D32C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502E20, &qword_26D52CAB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26D51D420(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D51D440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D51D440(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C20, &qword_26D52CAB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D51D54C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26D51D68C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D52B810() & 1;
  }
}

unint64_t sub_26D51D6E4()
{
  result = qword_280502BF8;
  if (!qword_280502BF8)
  {
    sub_26D52B4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502BF8);
  }

  return result;
}

uint64_t sub_26D51D73C(uint64_t a1)
{
  v2 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D51D798(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26D51D7FC()
{
  result = qword_280502C08;
  if (!qword_280502C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502C08);
  }

  return result;
}

uint64_t sub_26D51D898(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D51D8D0(uint64_t a1)
{
  result = type metadata accessor for TTSSiriSynthVoice.Voice(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D51D98C(uint64_t a1)
{
  result = sub_26D52B380();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSSiriSynthVoice.PersonalVoiceFlavor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSSiriSynthVoice.PersonalVoiceFlavor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D51DB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D51DBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D51DC18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D51DCB0()
{
  result = *MEMORY[0x277CE6828];
  if (*MEMORY[0x277CE6828])
  {
    result = sub_26D52B600();
    qword_281225110 = result;
    qword_281225108 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D51DCEC()
{
  v0 = sub_26D52B350();
  __swift_allocate_value_buffer(v0, qword_2812252A8);
  __swift_project_value_buffer(v0, qword_2812252A8);
  if (qword_2812250F8 != -1)
  {
    swift_once();
  }

  return sub_26D52B340();
}

uint64_t sub_26D51DDD4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_26D52B350();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_26D51DE28()
{
  v1 = *v0;
  sub_26D52B860();
  MEMORY[0x26D6C1900](v1);
  return sub_26D52B890();
}

uint64_t sub_26D51DE9C(uint64_t a1)
{
  v2 = *v1;
  sub_26D52B860();
  MEMORY[0x26D6C1900](v2);
  return sub_26D52B890();
}

void *sub_26D51DEE0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for TTSSiriSynthAudioUnit(uint64_t a1)
{
  result = qword_281225170;
  if (!qword_281225170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_26D51DF58@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + qword_2812252D0;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_26D51DFA8()
{
  v1 = v0 + qword_2812252D0;
  swift_beginAccess();
  return *v1;
}

__n128 sub_26D51DFF4(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = (a1 + qword_2812252D0);
  v5 = a3[1];
  v6 = *a3;
  swift_beginAccess();
  result = v5;
  *v3 = v6;
  v3[1] = v5;
  return result;
}

uint64_t sub_26D51E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + qword_2812252D0);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_26D51E0B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

id sub_26D51E21C()
{
  v1 = qword_2812251B0;
  v2 = *(v0 + qword_2812251B0);
  if (v2)
  {
    v3 = *(v0 + qword_2812251B0);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_26D52B470()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TTSSiriSynthAudioUnit.__allocating_init(componentDescription:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v5 = [objc_allocWithZone(v4) initWithComponentDescription:v9 options:a4 error:v11];
  if (v5)
  {
    v6 = v11[0];
  }

  else
  {
    v7 = v11[0];
    sub_26D52AFF0();

    swift_willThrow();
  }

  return v5;
}

char *TTSSiriSynthAudioUnit.init(componentDescription:options:)(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v5 = v4;
  v86 = a4;
  v85 = a3;
  v84 = a2;
  v83 = a1;
  v117 = *MEMORY[0x277D85DE8];
  v110 = sub_26D52B720();
  v103 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v102 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_26D52B710();
  MEMORY[0x28223BE20](v100);
  v101 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D52B4F0();
  MEMORY[0x28223BE20](v8 - 8);
  v99 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = qword_281225120;
  v111 = sub_26D52AB00(0, &qword_281224F78, 0x277CEFD48);
  v10 = sub_26D52B2A0();
  v107 = v11;
  v108 = v10;
  v104 = type metadata accessor for TTSSiriSynthAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = 0x279DA5000uLL;
  v15 = [v13 bundleForClass_];
  v16 = sub_26D52AFD0();
  v105 = v17;
  v106 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C20, &qword_26D52CAB8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26D52CAD0;
  v19 = [v13 bundleForClass_];
  v20 = sub_26D52AFD0();
  v22 = v21;

  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v23 = [v13 bundleForClass_];
  v24 = sub_26D52AFD0();
  v26 = v25;

  *(v18 + 48) = v24;
  *(v18 + 56) = v26;
  v27 = [v13 bundleForClass_];
  sub_26D52AFD0();

  sub_26D52B700();

  sub_26D52B2D0();
  if ((LODWORD(v28) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v28 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v28 < 9.2234e18)
  {
    v113 = v28;
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    sub_26D52B110();
    v108 = qword_281225168;
    v107 = sub_26D52B2B0();
    v29 = [v13 bundleForClass_];
    v106 = sub_26D52AFD0();

    v30 = [v13 bundleForClass_];
    sub_26D52AFD0();

    v31 = MEMORY[0x277D84F90];
    sub_26D52B700();

    v113 = 0;
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    sub_26D52B110();
    v32 = &v5[qword_2812252D0];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    v96 = qword_2812251B0;
    *&v5[qword_2812251B0] = 0;
    v33 = qword_281225198;
    sub_26D52AB00(0, &qword_281224F58, 0x277D85C78);
    v111 = "speechStyleFooter";
    sub_26D52B4D0();
    *&v114 = v31;
    v106 = sub_26D528E80(&unk_281224F60, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502C28, &qword_26D52CB20);
    v107 = sub_26D51F3EC();
    sub_26D52B780();
    v98 = *MEMORY[0x277D85260];
    v34 = v102;
    v103 = *(v103 + 104);
    (v103)(v102);
    v35 = sub_26D52B730();
    v97 = v33;
    *&v5[v33] = v35;
    v95 = qword_2812251A0;
    *&v5[qword_2812251A0] = 0;
    *&v5[qword_281225278] = 0x40E7700000000000;
    *&v5[qword_281225260] = 1;
    *&v5[qword_2812251C8] = 1;
    *&v5[qword_281225290] = 1024;
    v90 = qword_2812251D8;
    *&v5[qword_2812251D8] = 0;
    v91 = qword_281225240;
    *&v5[qword_281225240] = 0;
    v92 = qword_2812251E8;
    *&v5[qword_2812251E8] = 0;
    v93 = qword_281225190;
    *&v5[qword_281225190] = 0;
    v36 = qword_281225138;
    v37 = sub_26D52B0E0();
    v38 = *(*(v37 - 8) + 56);
    v94 = v36;
    v38(&v5[v36], 1, 1, v37);
    v87 = qword_281225200;
    v39 = MEMORY[0x277D84F90];
    *&v5[qword_281225200] = MEMORY[0x277D84F90];
    v89 = qword_281225218;
    *&v5[qword_281225218] = 0;
    *&v5[qword_2812251C0] = 0;
    v88 = qword_281225238;
    *&v5[qword_281225238] = v39;
    v40 = v39;
    *&v5[qword_281225250] = 0;
    v41 = qword_2812251F8;
    v42 = [objc_allocWithZone(MEMORY[0x277CCA928]) init];
    v111 = v41;
    *&v5[v41] = v42;
    v43 = qword_281225270;
    sub_26D52B4E0();
    *&v114 = v40;
    v13 = v43;
    sub_26D52B780();
    (v103)(v34, v98, v110);
    *&v5[v43] = sub_26D52B730();
    v44 = qword_281225288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C38, &qword_26D52CB28);
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *&v5[v44] = v45;
    v14 = qword_281225130;
    v46 = sub_26D52B270();
    (*(*(v46 - 8) + 56))(&v5[v14], 1, 1, v46);
    v47 = &v5[qword_281225208];
    *v47 = 0;
    *(v47 + 1) = 0;
    v47[16] = 1;
    v5[qword_2812251D0] = 0;
    v18 = qword_281225228;
    v48 = sub_26D52B0B0();
    (*(*(v48 - 8) + 56))(&v5[v18], 1, 1, v48);
    v5[qword_2812252A0] = 1;
    v5[qword_281225118] = 2;
    if (qword_2812250F0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_5:
  v49 = sub_26D52B350();
  __swift_project_value_buffer(v49, qword_2812252A8);
  v50 = sub_26D52B330();
  v51 = sub_26D52B6C0();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_26D514000, v50, v51, "### Initializing TTSSiriSynthAudioUnit.", v52, 2u);
    MEMORY[0x26D6C2260](v52, -1, -1);
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CB83A0]) initStandardFormatWithSampleRate:1 channels:48000.0];
  if (!v53)
  {
    *&v114 = sub_26D52AB00(0, &qword_280502C40, 0x277CB83A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C48, &qword_26D52CB30);
    v76 = sub_26D52B5D0();
    v78 = v77;
    sub_26D51F498();
    swift_allocError();
    *v79 = v76;
    *(v79 + 8) = v78;
    *(v79 + 16) = 1;
    swift_willThrow();
LABEL_14:
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
    v68 = *(*(v81 - 8) + 8);
    (v68)(&v5[v109], v81);
    (v68)(&v5[v108], v81);

    sub_26D51D798(&v5[v94], &qword_280502C60, &qword_26D52CB40);

    sub_26D51D798(&v5[v14], &qword_280502C68, &qword_26D52CB48);
    sub_26D51D798(&v5[v18], &qword_280502C70, &qword_26D52CB50);
    swift_deallocPartialClassInstance();
    return v68;
  }

  v54 = v53;
  v55 = objc_allocWithZone(MEMORY[0x277CEFD20]);
  *&v114 = 0;
  v56 = [v55 initWithFormat:v54 error:&v114];
  v57 = v114;
  if (!v56)
  {
    v80 = v114;
    sub_26D52AFF0();

    swift_willThrow();
    goto LABEL_14;
  }

  v58 = v83;
  v59 = HIDWORD(v83);
  v60 = v84;
  v61 = HIDWORD(v84);
  *&v5[qword_281225180] = v56;
  v62 = v56;
  v63 = v57;
  [v62 setMaximumChannelCount_];
  v64 = *&v111[v5];
  v65 = sub_26D52B580();
  [v64 setName_];

  v112.receiver = v5;
  v112.super_class = v104;
  v113 = 0;
  *&v114 = __PAIR64__(v59, v58);
  *(&v114 + 1) = __PAIR64__(v61, v60);
  LODWORD(v115) = v85;
  v66 = objc_msgSendSuper2(&v112, sel_initWithComponentDescription_options_error_, &v114, v86, &v113);
  v67 = v113;
  if (v66)
  {
    v68 = v66;
    v69 = v67;
    [v68 setMaximumFramesToRender_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C78, &qword_26D52CB58);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_26D52CAE0;
    v71 = *&v68[qword_281225180];
    *(v70 + 32) = v71;
    v72 = objc_allocWithZone(MEMORY[0x277CEFD28]);
    sub_26D52AB00(0, &qword_281224F80, 0x277CEFD20);
    v73 = v71;
    v74 = sub_26D52B660();

    v75 = [v72 initWithAudioUnit:v68 busType:2 busses:v74];

    v54 = *&v68[qword_2812251D8];
    *&v68[qword_2812251D8] = v75;
  }

  else
  {
    v68 = v113;
    sub_26D52AFF0();

    swift_willThrow();
  }

  return v68;
}

unint64_t sub_26D51F3EC()
{
  result = qword_281224FA0[0];
  if (!qword_281224FA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280502C28, &qword_26D52CB20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281224FA0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26D51F498()
{
  result = qword_280502C50;
  if (!qword_280502C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502C50);
  }

  return result;
}

uint64_t sub_26D51F56C()
{
  v1 = qword_2812251A0;
  if (*(v0 + qword_2812251A0))
  {
    v2 = *(v0 + qword_2812251A0);
  }

  else
  {
    v3 = v0;
    sub_26D52B420();
    swift_allocObject();
    v2 = sub_26D52B410();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_26D51F5E8()
{
  sub_26D52AB00(0, &unk_281224F48, 0x277CB8498);
  v0 = sub_26D52B660();

  return v0;
}

id sub_26D51F638()
{
  sub_26D52AB00(0, &unk_281224F38, 0x277CCABB0);
  v0 = sub_26D52B760();

  return v0;
}

id sub_26D51F688(uint64_t a1)
{
  result = *(a1 + qword_2812251D8);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void sub_26D51F6A0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v170 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C80, &qword_26D52CB60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v170 - v10);
  v12 = type metadata accessor for TTSSiriSynthVoice(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D527348(a1, a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_26D528BF4(v11, v15);

    sub_26D51A8D4();
    v22 = v21;
    v24 = v23;
    v25 = *(v6 + 16);
    v183 = v2;
    v174 = qword_281225120;
    v186 = v6 + 16;
    v187 = v25;
    v25(v8, &v2[qword_281225120], v5);
    sub_26D52B0F0();
    v26 = *(v6 + 8);
    v181 = v6 + 8;
    v182 = v8;
    v175 = v5;
    v184 = v26;
    v26(v8, v5);
    sub_26D51A760();
    v176 = v15;
    v28 = sub_26D51A8DC(v22, v24, v27 & 1);
    v30 = v29;

    if (v30)
    {
      if (qword_2812250F0 != -1)
      {
        swift_once();
      }

      v31 = sub_26D52B350();
      v32 = __swift_project_value_buffer(v31, qword_2812252A8);

      v185 = v32;
      v33 = sub_26D52B330();
      v34 = sub_26D52B6C0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v189[0] = v36;
        *v35 = 136315650;
        *(v35 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v189);
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_26D51CE78(a1, a2, v189);
        *(v35 + 22) = 2080;
        *(v35 + 24) = sub_26D51CE78(v28, v30, v189);
        _os_log_impl(&dword_26D514000, v33, v34, "%s. Prewarming synth with voiceID=%s path=%s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6C2260](v36, -1, -1);
        MEMORY[0x26D6C2260](v35, -1, -1);
      }

      v37 = v175;
      v38 = v182;
      v39 = (_AXSSpeechSynthesisOptions() & 1) == 0;
      v40 = objc_allocWithZone(TTSSiriSynthWrapper);
      v41 = sub_26D52B580();

      v42 = sub_26D52B580();
      v43 = v183;
      v44 = [v40 initWithVoicePath:v41 language:v42 dynamicStylePrompt:0 censorPlainText:v39 delegate:v183 feResourcePath:0];

      v45 = v43;
      v46 = *&v43[qword_281225240];
      *&v43[qword_281225240] = v44;
      v47 = v44;

      if (v47)
      {
        v173 = v47;
        v48 = [v47 neuralStyles];
        v49 = sub_26D52AB00(0, &qword_280502C88, off_279DA51B0);
        v50 = sub_26D52B670();

        v51 = v184;
        if (v50 >> 62)
        {
          v52 = sub_26D52B7F0();
        }

        else
        {
          v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v52)
        {
          v187(v38, &v43[qword_281225168], v37);
          sub_26D52B100();
          v51(v38, v37);
          sub_26D52B160();
LABEL_58:

          v143 = v176;
          if (sub_26D51C1DC())
          {
            v144 = v45;
            v145 = sub_26D52B330();
            v146 = sub_26D52B6C0();
            if (os_log_type_enabled(v145, v146))
            {
              v147 = v45;
              v148 = swift_slowAlloc();
              v149 = v37;
              v150 = swift_slowAlloc();
              v189[0] = v150;
              *v148 = 136315394;
              *(v148 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v189);
              *(v148 + 12) = 2048;
              v151 = &v147[v174];
              v152 = v182;
              v187(v182, v151, v149);
              sub_26D52B0F0();
              v184(v152, v149);
              *(v148 + 14) = v188;

              _os_log_impl(&dword_26D514000, v145, v146, "%s. PV per-voice setting personalVoiceFlavor=%ld", v148, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v150);
              MEMORY[0x26D6C2260](v150, -1, -1);
              MEMORY[0x26D6C2260](v148, -1, -1);
            }

            else
            {
            }

            v153 = sub_26D51C27C();
            v154 = sub_26D51C900();
            v155 = v154;
            v156 = v153 & v154;
            v157 = v144;
            v158 = sub_26D52B330();
            v159 = sub_26D52B6C0();
            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              LODWORD(v185) = v156;
              v161 = v160;
              v180 = swift_slowAlloc();
              v189[0] = v180;
              *v161 = 136316162;
              *(v161 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v189);
              *(v161 + 12) = 1024;
              *(v161 + 14) = v185 & 1;
              *(v161 + 18) = 1024;
              *(v161 + 20) = v153 & 1;
              *(v161 + 24) = 1024;
              *(v161 + 26) = v155 & 1;
              *(v161 + 30) = 2048;
              v179 = v157;
              v163 = v182;
              v162 = v183;
              v165 = v174;
              v164 = v175;
              v166 = v187;
              v187(v182, &v183[v174], v175);
              LODWORD(v178) = v159;
              sub_26D52B0F0();
              v167 = v165;
              v168 = v184;
              v184(v163, v164);
              *(v161 + 32) = v188;

              _os_log_impl(&dword_26D514000, v158, v178, "%s. Will set PV per-voice personalVoiceFlavor enabled=%{BOOL}d (v1Available=%{BOOL}d v2Available=%{BOOL}d) value=%ld", v161, 0x28u);
              v179 = v158;
              v169 = v180;
              __swift_destroy_boxed_opaque_existential_0(v180);
              MEMORY[0x26D6C2260](v169, -1, -1);
              MEMORY[0x26D6C2260](v161, -1, -1);
            }

            else
            {

              v167 = v174;
              v164 = v175;
              v163 = v182;
              v162 = v183;
              v168 = v184;
              v166 = v187;
            }

            v166(v163, &v162[v167], v164);
            sub_26D52B100();
            v168(v163, v164);
            sub_26D52B160();

            v143 = v176;
          }

          else
          {
            v187(v38, &v45[v174], v37);
            sub_26D52B100();
            v184(v38, v37);
            sub_26D52B160();
          }

          v103 = v143;
          goto LABEL_68;
        }

        v53 = sub_26D52B330();
        v54 = sub_26D52B6C0();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v189[0] = v56;
          *v55 = 136315138;
          *(v55 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v189);
          _os_log_impl(&dword_26D514000, v53, v54, "%s: Avaliable neural styles:", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          v57 = v56;
          v45 = v183;
          MEMORY[0x26D6C2260](v57, -1, -1);
          v58 = v55;
          v51 = v184;
          MEMORY[0x26D6C2260](v58, -1, -1);
        }

        v59 = [v173 neuralStyles];
        v172 = v49;
        v60 = sub_26D52B670();

        if (v60 >> 62)
        {
          v62 = sub_26D52B7F0();
          v63 = v187;
          if (!v62)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v63 = v187;
          if (!v62)
          {
            goto LABEL_40;
          }
        }

        if (v62 < 1)
        {
          __break(1u);
          goto LABEL_70;
        }

        v64 = 0;
        v65 = v60 & 0xC000000000000001;
        *&v61 = 136315650;
        v178 = v61;
        v179 = (v60 & 0xC000000000000001);
        v180 = v62;
        v177 = v60;
        do
        {
          if (v65)
          {
            v87 = MEMORY[0x26D6C1840](v64, v60);
          }

          else
          {
            v87 = *(v60 + 8 * v64 + 32);
          }

          v88 = v87;
          v89 = sub_26D52B330();
          v90 = sub_26D52B6C0();

          if (os_log_type_enabled(v89, v90))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v189[0] = v67;
            *v66 = v178;
            v68 = [v88 name];
            v69 = sub_26D52B590();
            v71 = v70;

            v72 = sub_26D51CE78(v69, v71, v189);

            *(v66 + 4) = v72;
            *(v66 + 12) = 2080;
            v73 = [v88 key];
            v74 = sub_26D52B590();
            v76 = v75;

            v77 = sub_26D51CE78(v74, v76, v189);

            *(v66 + 14) = v77;
            *(v66 + 22) = 2080;
            v78 = [v88 styleVector];
            v79 = sub_26D52AB00(0, &unk_281224F38, 0x277CCABB0);
            v80 = sub_26D52B670();

            v81 = MEMORY[0x26D6C1700](v80, v79);
            v83 = v82;
            v38 = v182;

            v84 = sub_26D51CE78(v81, v83, v189);
            v60 = v177;
            v65 = v179;

            *(v66 + 24) = v84;
            v62 = v180;
            _os_log_impl(&dword_26D514000, v89, v90, "  - name=%s key=%s vactor=%s", v66, 0x20u);
            swift_arrayDestroy();
            v85 = v67;
            v51 = v184;
            MEMORY[0x26D6C2260](v85, -1, -1);
            v86 = v66;
            v45 = v183;
            MEMORY[0x26D6C2260](v86, -1, -1);
          }

          else
          {
          }

          ++v64;
          v63 = v187;
        }

        while (v62 != v64);
LABEL_40:

        v104 = qword_281225168;
        v37 = v175;
        v63(v38, &v45[qword_281225168], v175);
        sub_26D52B100();
        v51(v38, v37);
        sub_26D52B160();

        v63(v38, &v45[v104], v37);
        v180 = sub_26D52B100();
        v51(v38, v37);
        v63(v38, &v45[v104], v37);
        sub_26D52B100();
        v51(v38, v37);
        v105 = sub_26D52B130();

        v106 = [v105 identifier];

        if (!v106)
        {
          sub_26D52B590();
          v106 = sub_26D52B580();
        }

        v179 = v106;
        v63(v38, &v45[v104], v37);
        sub_26D52B100();
        v51(v38, v37);
        v107 = sub_26D52B130();

        v108 = [v107 displayName];

        if (!v108)
        {
          sub_26D52B590();
          v108 = sub_26D52B580();
        }

        *&v178 = v108;
        v63(v38, &v45[v104], v37);
        sub_26D52B100();
        v51(v38, v37);
        v109 = sub_26D52B130();

        v177 = [v109 address];

        v63(v38, &v45[v104], v37);
        sub_26D52B100();
        v51(v38, v37);
        v110 = sub_26D52B130();

        [v110 minValue];
        v112 = v111;

        v63(v38, &v45[v104], v37);
        sub_26D52B100();
        v51(v38, v37);
        v113 = sub_26D52B130();

        [v113 maxValue];
        v115 = v114;

        v63(v38, &v45[v104], v37);
        sub_26D52B100();
        v51(v38, v37);
        v116 = sub_26D52B130();

        v171 = [v116 unit];

        v63(v38, &v45[v104], v37);
        sub_26D52B100();
        v51(v38, v37);
        v117 = sub_26D52B130();

        v170 = [v117 unitName];

        v118 = [v173 neuralStyles];
        v119 = sub_26D52B670();

        if (v119 >> 62)
        {
          v120 = sub_26D52B7F0();
          if (v120)
          {
LABEL_46:
            v189[0] = MEMORY[0x277D84F90];
            sub_26D51D420(0, v120 & ~(v120 >> 63), 0);
            if ((v120 & 0x8000000000000000) == 0)
            {
              v121 = 0;
              v122 = v189[0];
              do
              {
                if ((v119 & 0xC000000000000001) != 0)
                {
                  v123 = MEMORY[0x26D6C1840](v121, v119);
                }

                else
                {
                  v123 = *(v119 + 8 * v121 + 32);
                }

                v124 = v123;
                v125 = [v123 name];
                v126 = sub_26D52B590();
                v128 = v127;

                v189[0] = v122;
                v130 = *(v122 + 16);
                v129 = *(v122 + 24);
                if (v130 >= v129 >> 1)
                {
                  sub_26D51D420((v129 > 1), v130 + 1, 1);
                  v122 = v189[0];
                }

                ++v121;
                *(v122 + 16) = v130 + 1;
                v131 = v122 + 16 * v130;
                *(v131 + 32) = v126;
                *(v131 + 40) = v128;
              }

              while (v120 != v121);

              v37 = v175;
              v38 = v182;
              v45 = v183;
              goto LABEL_57;
            }

LABEL_70:
            __break(1u);
            return;
          }
        }

        else
        {
          v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v120)
          {
            goto LABEL_46;
          }
        }

LABEL_57:
        v132 = objc_opt_self();
        v133 = sub_26D52B660();

        v187(v38, &v45[v104], v37);
        sub_26D52B100();
        v184(v38, v37);
        v134 = sub_26D52B130();

        v135 = [v134 dependentParameters];

        v136 = v132;
        v137 = v179;
        v138 = v178;
        LODWORD(v139) = v112;
        LODWORD(v140) = v115;
        v141 = v170;
        v142 = [v136 createParameterWithIdentifier:v179 name:v178 address:v177 min:v171 max:v170 unit:0 unitName:v139 flags:v140 valueStrings:v133 dependentParameters:v135];

        sub_26D52B140();
        goto LABEL_58;
      }

      v97 = &v43[qword_281225168];
      v98 = v187;
      v187(v38, v97, v37);
      sub_26D52B100();
      v99 = v184;
      v184(v38, v37);
      sub_26D52B160();

      v98(v38, &v45[v174], v37);
      sub_26D52B100();
      v99(v38, v37);
      sub_26D52B160();

      v92 = sub_26D52B330();
      v100 = sub_26D52B6C0();
      if (!os_log_type_enabled(v92, v100))
      {
LABEL_36:

        v103 = v176;
LABEL_68:
        sub_26D528C58(v103);
        return;
      }

      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v189[0] = v102;
      *v101 = 136315138;
      *(v101 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v189);
      _os_log_impl(&dword_26D514000, v92, v100, "%s. Synth was nil. Setting PV flavor per-voice setting enabled = false", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x26D6C2260](v102, -1, -1);
      v96 = v101;
    }

    else
    {
      if (qword_2812250F0 != -1)
      {
        swift_once();
      }

      v91 = sub_26D52B350();
      __swift_project_value_buffer(v91, qword_2812252A8);

      v92 = sub_26D52B330();
      v93 = sub_26D52B6E0();

      if (!os_log_type_enabled(v92, v93))
      {
        goto LABEL_36;
      }

      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v189[0] = v95;
      *v94 = 136315394;
      *(v94 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v189);
      *(v94 + 12) = 2080;
      *(v94 + 14) = sub_26D51CE78(a1, a2, v189);
      _os_log_impl(&dword_26D514000, v92, v93, "%s. Failed: No voice path for voice: %s", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v95, -1, -1);
      v96 = v94;
    }

    MEMORY[0x26D6C2260](v96, -1, -1);
    goto LABEL_36;
  }

  sub_26D51D798(v11, &qword_280502C80, &qword_26D52CB60);
  if (qword_2812250F0 != -1)
  {
    swift_once();
  }

  v16 = sub_26D52B350();
  __swift_project_value_buffer(v16, qword_2812252A8);

  v17 = sub_26D52B330();
  v18 = sub_26D52B6E0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v189[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v189);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_26D51CE78(a1, a2, v189);
    _os_log_impl(&dword_26D514000, v17, v18, "%s. Failed: No voice found for ID : %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v20, -1, -1);
    MEMORY[0x26D6C2260](v19, -1, -1);
  }
}

uint64_t sub_26D520DFC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26D52B590();
  v6 = v5;
  v7 = a1;
  sub_26D51F6A0(v4, v6);
}

uint64_t sub_26D520E64()
{
  v1 = qword_281225118;
  v2 = *(v0 + qword_281225118);
  if (v2 == 2)
  {
    (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
    sub_26D52B5E0();
    v3 = xpc_copy_entitlement_for_token();

    if (v3)
    {
      LOBYTE(v2) = xpc_BOOL_get_value(v3);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void sub_26D520F60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C70, &qword_26D52CB50);
  MEMORY[0x28223BE20](v2 - 8);
  v402 = &v392 - v3;
  v397 = sub_26D52B030();
  v396 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v395 = &v392 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v421 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v423 = &v392 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C80, &qword_26D52CB60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v392 - v8);
  v426 = type metadata accessor for TTSSiriSynthVoice(0);
  v425 = *(v426 - 1);
  MEMORY[0x28223BE20](v426);
  v429 = &v392 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C90, &qword_26D52CB68);
  MEMORY[0x28223BE20](v400);
  v401 = &v392 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C68, &qword_26D52CB48);
  MEMORY[0x28223BE20](v12 - 8);
  v411 = &v392 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C60, &qword_26D52CB40);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v424 = &v392 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v394 = &v392 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v392 - v20;
  MEMORY[0x28223BE20](v19);
  v398 = &v392 - v22;
  v420 = sub_26D52B270();
  v415 = *(v420 - 8);
  MEMORY[0x28223BE20](v420);
  v414 = &v392 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = sub_26D52B2E0();
  v408 = *(v409 - 8);
  MEMORY[0x28223BE20](v409);
  v407 = &v392 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = sub_26D52B290();
  v412 = *(v413 - 8);
  MEMORY[0x28223BE20](v413);
  v418 = &v392 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = sub_26D52B300();
  v417 = *(v419 - 8);
  MEMORY[0x28223BE20](v419);
  v428 = &v392 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = sub_26D52B320();
  v431 = *(v432 - 1);
  MEMORY[0x28223BE20](v432);
  v430 = &v392 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = sub_26D52B0E0();
  v28 = *(v439 - 8);
  v29 = MEMORY[0x28223BE20](v439);
  v393 = &v392 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v399 = &v392 - v32;
  MEMORY[0x28223BE20](v31);
  v433 = &v392 - v33;
  v436 = sub_26D52B170();
  v34 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v435 = &v392 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812250F0 != -1)
  {
    swift_once();
  }

  v36 = sub_26D52B350();
  v37 = __swift_project_value_buffer(v36, qword_2812252A8);
  v38 = a1;
  v39 = sub_26D52B330();
  v40 = sub_26D52B6C0();

  v41 = os_log_type_enabled(v39, v40);
  v438 = v28;
  v422 = v5;
  v440 = v37;
  v427 = v9;
  v416 = v21;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *atoken.val = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
    *(v42 + 12) = 2080;
    v44 = [v38 voice];
    v45 = [v44 identifier];

    v46 = sub_26D52B590();
    v48 = v47;

    v37 = v440;
    v49 = sub_26D51CE78(v46, v48, &atoken);

    *(v42 + 14) = v49;
    _os_log_impl(&dword_26D514000, v39, v40, "%s: Begin with voiceID=%s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v43, -1, -1);
    MEMORY[0x26D6C2260](v42, -1, -1);
  }

  v403 = sub_26D52B200();
  v50 = sub_26D52B1F0();
  v51 = *MEMORY[0x277D70180];
  v52 = *(v34 + 104);
  v53 = v435;
  v54 = v436;
  v406 = v34 + 104;
  v405 = v52;
  v52(v435, v51, v436);
  v55 = [v38 jobIdentifier];
  sub_26D52B590();

  sub_26D52B1E0();

  v56 = *(v34 + 8);
  v410 = v34 + 8;
  v404 = v56;
  v56(v53, v54);
  v57 = qword_2812252A0;
  v58 = v434;
  *(v434 + qword_2812252A0) = 1;
  v59 = [v38 voice];
  LODWORD(v50) = [v59 isPersonalVoice];

  if (v50)
  {
    v60 = sub_26D51E21C();
    v61 = sub_26D52B460();

    if ((v61 & 1) == 0)
    {
      v62 = sub_26D52B330();
      v63 = sub_26D52B6E0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *atoken.val = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v62, v63, "%s: Personal voices cannot be used on devices without a passcode. No speech will be generated", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x26D6C2260](v65, -1, -1);
        MEMORY[0x26D6C2260](v64, -1, -1);
      }

      *(v58 + v57) = 0;
    }

    v66 = *(v58 + qword_2812251B0);
    v67 = sub_26D52B450();

    if (v67)
    {
      v68 = sub_26D52B330();
      v69 = sub_26D52B6E0();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *atoken.val = v71;
        *v70 = 136315138;
        *(v70 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v68, v69, "%s: Personal voices cannot be used on devices that are locked. No speech will be generated", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x26D6C2260](v71, -1, -1);
        MEMORY[0x26D6C2260](v70, -1, -1);
      }

      *(v58 + v57) = 0;
    }

    v72 = v58;
    v73 = sub_26D52B330();
    v74 = sub_26D52B6D0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *atoken.val = v76;
      *v75 = 136315394;
      *(v75 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v75 + 12) = 1024;
      *(v75 + 14) = sub_26D520E64() & 1;

      _os_log_impl(&dword_26D514000, v73, v74, "%s: Has PV entitlement %{BOOL}d", v75, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x26D6C2260](v76, -1, -1);
      MEMORY[0x26D6C2260](v75, -1, -1);
    }

    else
    {
    }

    v77 = [objc_opt_self() sharedInstance];
    v78 = [v77 allowAppUsage];

    if ((v78 & 1) == 0 && (sub_26D520E64() & 1) == 0)
    {
      v79 = sub_26D52B330();
      v80 = sub_26D52B6E0();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *atoken.val = v82;
        *v81 = 136315138;
        *(v81 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v79, v80, "%s: This personal voice does not allow app usage. No speech will be generated", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x26D6C2260](v82, -1, -1);
        MEMORY[0x26D6C2260](v81, -1, -1);
      }

      *(v58 + v57) = 0;
    }

    if ((sub_26D520E64() & 1) == 0)
    {
      v83 = _TTSSystemFocusedPid();
      *atoken.val = (*((*MEMORY[0x277D85000] & *v72) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
      *&atoken.val[2] = v84;
      *&atoken.val[4] = v85;
      *&atoken.val[6] = v86;
      if (v83 != audit_token_to_pid(&atoken))
      {
        v87 = sub_26D52B330();
        v88 = sub_26D52B6E0();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *atoken.val = v90;
          *v89 = 136315138;
          *(v89 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
          _os_log_impl(&dword_26D514000, v87, v88, "%s: Personal voices can only be used while app is foreground", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x26D6C2260](v90, -1, -1);
          MEMORY[0x26D6C2260](v89, -1, -1);
        }

        *(v58 + v57) = 0;
      }
    }

    v91 = v72;
    v37 = sub_26D52B330();
    v92 = sub_26D52B6C0();

    if (os_log_type_enabled(v37, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v445 = v94;
      *v93 = 136315394;
      *(v93 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &v445);
      *(v93 + 12) = 2080;
      *atoken.val = (*((*MEMORY[0x277D85000] & *v91) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
      *&atoken.val[2] = v95;
      *&atoken.val[4] = v96;
      *&atoken.val[6] = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502CA8, &qword_26D52CB70);
      v98 = sub_26D52B5D0();
      v100 = sub_26D51CE78(v98, v99, &v445);

      *(v93 + 14) = v100;
      _os_log_impl(&dword_26D514000, v37, v92, "%s: Speech request is for personal voice. Will check if host is TCC-approved. token=%s", v93, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v94, -1, -1);
      MEMORY[0x26D6C2260](v93, -1, -1);
    }

    if (!*MEMORY[0x277D6C240])
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v101 = *((*MEMORY[0x277D85000] & *v91) + class metadata base offset for TTSSiriSynthAudioUnit + 304);
    v102 = *MEMORY[0x277D6C240];
    *atoken.val = v101();
    *&atoken.val[2] = v103;
    *&atoken.val[4] = v104;
    *&atoken.val[6] = v105;
    v106 = TCCAccessCheckAuditToken();

    v107 = sub_26D52B330();
    if (v106)
    {
      v108 = sub_26D52B6C0();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *atoken.val = v110;
        *v109 = 136315138;
        *(v109 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v107, v108, "%s: Host is TCC-approved for personal voice speech", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x26D6C2260](v110, -1, -1);
        MEMORY[0x26D6C2260](v109, -1, -1);
      }
    }

    else
    {
      v111 = sub_26D52B6E0();
      if (os_log_type_enabled(v107, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *atoken.val = v113;
        *v112 = 136315138;
        *(v112 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v107, v111, "%s: Caller does not have kTCCServiceVoiceBanking access to personal voices. No speech will be generated", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x26D6C2260](v113, -1, -1);
        MEMORY[0x26D6C2260](v112, -1, -1);
      }

      *(v58 + v57) = 0;
    }
  }

  v114 = *(v58 + qword_2812251E8);
  *(v58 + qword_2812251E8) = v38;
  v115 = v38;
  v116 = v58;
  v117 = v115;

  *&v116[qword_281225250] = 0;
  v118 = qword_281225200;
  swift_beginAccess();
  v119 = MEMORY[0x277D84F90];
  *&v116[v118] = MEMORY[0x277D84F90];

  v120 = *&v116[qword_281225270];
  v121 = swift_allocObject();
  *(v121 + 16) = v116;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_26D528CB4;
  *(v122 + 24) = v121;
  v437 = v121;
  v443 = sub_26D528CD4;
  v444 = v122;
  *atoken.val = MEMORY[0x277D85DD0];
  *&atoken.val[2] = 1107296256;
  *&atoken.val[4] = sub_26D524D24;
  *&atoken.val[6] = &block_descriptor;
  v123 = _Block_copy(&atoken);
  v124 = v444;
  v125 = v116;

  dispatch_sync(v120, v123);
  _Block_release(v123);
  LOBYTE(v120) = swift_isEscapingClosureAtFileLocation();

  if (v120)
  {
    __break(1u);
    goto LABEL_158;
  }

  *&v125[qword_2812251C0] = 0;
  v126 = *&v125[qword_281225218];
  *&v125[qword_281225218] = 0;

  if ((v116[v57] & 1) == 0)
  {
    v140 = sub_26D52B330();
    v141 = sub_26D52B6E0();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *atoken.val = v143;
      *v142 = 136315138;
      *(v142 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      v144 = "%s: Voice not allowed to render speech! Will not set up synthesizer. Bailing now";
LABEL_46:
      _os_log_impl(&dword_26D514000, v140, v141, v144, v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v143);
      MEMORY[0x26D6C2260](v143, -1, -1);
      MEMORY[0x26D6C2260](v142, -1, -1);
    }

LABEL_47:

    return;
  }

  v127 = [v117 voice];
  v128 = [v127 primaryLanguages];

  v129 = sub_26D52B670();
  if (!*(v129 + 16))
  {

    v140 = sub_26D52B330();
    v141 = sub_26D52B6E0();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *atoken.val = v143;
      *v142 = 136315138;
      *(v142 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      v144 = "%s: Voice had no primary locale";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v130 = *(v129 + 40);
  swift_bridgeObjectRetain_n();

  v392 = v130;
  sub_26D52B0D0();
  v131 = v431;
  v132 = v430;
  v133 = v432;
  (v431[13].isa)(v430, *MEMORY[0x277CE67A8], v432);
  v134 = sub_26D52B310();
  (v131[1].isa)(v132, v133);
  v135 = 0x279DA5000uLL;
  v434 = v117;
  v136 = [v117 ssmlRepresentation];
  v137 = sub_26D52B590();
  v139 = v138;

  if (v134)
  {
    v411 = v137;
  }

  else
  {
    sub_26D52B2F0();
    v145 = v439;
    v146 = [v434 voice];
    v147 = [v146 primaryLanguages];

    v148 = sub_26D52B670();
    v149 = *(v148 + 16);
    if (v149)
    {
      *atoken.val = v119;
      sub_26D528D14(0, v149, 0);
      v150 = *atoken.val;
      v151 = v148 + 40;
      v152 = v399;
      do
      {

        sub_26D52B0D0();
        *atoken.val = v150;
        v154 = *(v150 + 16);
        v153 = *(v150 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_26D528D14((v153 > 1), v154 + 1, 1);
          v150 = *atoken.val;
        }

        *(v150 + 16) = v154 + 1;
        v155 = v438;
        (*(v438 + 32))(v150 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v438 + 72) * v154, v152, v439);
        v151 += 16;
        --v149;
      }

      while (v149);

      v145 = v439;
      v135 = 0x279DA5000;
    }

    else
    {

      v155 = v438;
    }

    v156 = [v434 voice];
    v157 = [v156 supportedLanguages];

    v158 = sub_26D52B670();
    v159 = *(v158 + 16);

    v160 = v408;
    v161 = MEMORY[0x277D70380];
    if (v159 <= 1)
    {
      v161 = MEMORY[0x277D70388];
    }

    v162 = v407;
    v163 = v409;
    (*(v408 + 104))(v407, *v161, v409);
    sub_26D52B210();
    (*(v160 + 8))(v162, v163);
    v164 = v419;
    *&atoken.val[6] = v419;
    v443 = MEMORY[0x277D70390];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&atoken);
    (*(v417 + 16))(boxed_opaque_existential_1, v428, v164);
    v166 = v414;
    sub_26D52B280();
    __swift_destroy_boxed_opaque_existential_0(&atoken);
    v167 = *(sub_26D52B250() + 16);

    if (v167 == 1)
    {
      v168 = sub_26D52B250();
      v169 = v398;
      sub_26D524D4C(v168, v398);

      if ((*(v155 + 48))(v169, 1, v145) == 1)
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v170 = v433;
      (*(v155 + 8))(v433, v145);

      (*(v155 + 32))(v170, v169, v145);
    }

    else
    {
    }

    v171 = v415;
    v172 = v411;
    v173 = v420;
    (*(v415 + 16))(v411, v166, v420);
    (*(v171 + 56))(v172, 0, 1, v173);
    v174 = qword_281225130;
    swift_beginAccess();
    sub_26D528DC4(v172, &v125[v174], &qword_280502C68, &qword_26D52CB48);
    swift_endAccess();
    v175 = sub_26D52B1F0();
    v176 = v434;
    v177 = [v434 *(v135 + 1880)];
    v178 = v166;
    v179 = sub_26D52B590();
    v181 = v180;

    v182 = sub_26D52B240();
    v183 = v435;
    *v435 = v179;
    v183[1] = v181;
    v183[2] = v182;
    v183[3] = v184;
    v185 = v436;
    v405(v183, *MEMORY[0x277D70190], v436);
    v186 = [v176 jobIdentifier];
    sub_26D52B590();

    sub_26D52B1E0();

    v404(v183, v185);
    v187 = &v125[qword_281225208];
    *v187 = 0;
    *(v187 + 1) = 0;
    v187[16] = 1;
    v411 = sub_26D52B240();
    v139 = v188;
    (*(v171 + 8))(v178, v420);
    (*(v412 + 8))(v418, v413);
    (*(v417 + 8))(v428, v419);
  }

  v189 = qword_281225240;
  v190 = *&v125[qword_281225240];
  v191 = 0x279DA5000uLL;
  if (v190)
  {
    v192 = [v190 ruleSetRunner];
    v193 = swift_allocObject();
    v194 = v434;
    *(v193 + 16) = v434;
    v443 = sub_26D528DBC;
    v444 = v193;
    *atoken.val = MEMORY[0x277D85DD0];
    *&atoken.val[2] = 1107296256;
    *&atoken.val[4] = sub_26D524FCC;
    *&atoken.val[6] = &block_descriptor_9;
    v195 = _Block_copy(&atoken);
    v196 = v194;

    [v192 setMatchLogger_];
    _Block_release(v195);

    if (*&v125[v189])
    {
      v197 = *&v125[qword_281225190];
      if (v197)
      {
        v198 = [v197 identifier];
        v199 = sub_26D52B590();
        v201 = v200;
      }

      else
      {
        v199 = 0;
        v201 = 0;
      }

      v202 = [v196 voice];
      v203 = [v202 identifier];

      v204 = sub_26D52B590();
      v206 = v205;

      if (!v201)
      {

LABEL_79:
        v191 = 0x279DA5000uLL;
        goto LABEL_80;
      }

      if (v199 == v204 && v201 == v206)
      {
      }

      else
      {
        v207 = sub_26D52B810();

        v191 = 0x279DA5000;
        if ((v207 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      v436 = v139;
      v208 = qword_281225138;
      swift_beginAccess();
      v209 = v438;
      v210 = v416;
      (*(v438 + 16))(v416, v433, v439);
      (*(v209 + 56))(v210, 0, 1, v439);
      v211 = *(v400 + 48);
      v212 = &v125[v208];
      v213 = v439;
      v214 = v401;
      sub_26D52AA98(v212, v401, &qword_280502C60, &qword_26D52CB40);
      sub_26D52AA98(v210, v214 + v211, &qword_280502C60, &qword_26D52CB40);
      v215 = v209;
      v216 = v214;
      v217 = *(v215 + 48);
      if (v217(v214, 1, v213) == 1)
      {
        sub_26D51D798(v210, &qword_280502C60, &qword_26D52CB40);
        if (v217(v214 + v211, 1, v213) == 1)
        {

          sub_26D51D798(v214, &qword_280502C60, &qword_26D52CB40);
LABEL_126:
          v273 = v438;
          v124 = v422;
          goto LABEL_127;
        }

        goto LABEL_78;
      }

      v218 = v214;
      v219 = v394;
      sub_26D52AA98(v218, v394, &qword_280502C60, &qword_26D52CB40);
      if (v217(v216 + v211, 1, v213) == 1)
      {
        sub_26D51D798(v416, &qword_280502C60, &qword_26D52CB40);
        (*(v438 + 8))(v219, v213);
LABEL_78:
        sub_26D51D798(v216, &qword_280502C90, &qword_26D52CB68);
        v139 = v436;
        goto LABEL_79;
      }

      v333 = v438;
      v334 = v216 + v211;
      v335 = v393;
      (*(v438 + 32))(v393, v334, v439);
      sub_26D528E80(&qword_280502CA0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      LODWORD(v435) = sub_26D52B570();
      v336 = *(v333 + 8);
      v336(v335, v439);
      sub_26D51D798(v416, &qword_280502C60, &qword_26D52CB40);
      v336(v219, v439);
      sub_26D51D798(v216, &qword_280502C60, &qword_26D52CB40);
      v139 = v436;
      v191 = 0x279DA5000;
      if (v435)
      {

        goto LABEL_126;
      }
    }
  }

LABEL_80:
  v435 = v189;
  v220 = v434;
  v221 = [v434 voice];
  v222 = *&v125[qword_281225190];
  *&v125[qword_281225190] = v221;

  v224 = v438;
  v223 = v439;
  v225 = v424;
  (*(v438 + 16))(v424, v433, v439);
  (*(v224 + 56))(v225, 0, 1, v223);
  v226 = qword_281225138;
  swift_beginAccess();
  sub_26D528DC4(v225, &v125[v226], &qword_280502C60, &qword_26D52CB40);
  swift_endAccess();
  v227 = [v220 voice];
  v228 = [v227 *(v191 + 1768)];

  v229 = sub_26D52B590();
  v231 = v230;

  v232 = v191;
  v233 = v427;
  sub_26D527348(v229, v231, v427);

  if ((v425[6].isa)(v233, 1, v426) == 1)
  {

    sub_26D51D798(v233, &qword_280502C80, &qword_26D52CB60);
    v234 = v220;
    v235 = sub_26D52B330();
    v236 = sub_26D52B6E0();

    if (os_log_type_enabled(v235, v236))
    {
      v237 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      *atoken.val = v238;
      *v237 = 136315394;
      *(v237 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v237 + 12) = 2080;
      v239 = [v234 voice];
      v240 = [v239 identifier];

      v241 = sub_26D52B590();
      v243 = v242;

      v244 = sub_26D51CE78(v241, v243, &atoken);

      *(v237 + 14) = v244;
      _os_log_impl(&dword_26D514000, v235, v236, "%s. Failed: No voice found for ID : %s", v237, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v238, -1, -1);
      MEMORY[0x26D6C2260](v237, -1, -1);
    }

    (*(v224 + 8))(v433, v439);
    goto LABEL_156;
  }

  v436 = v139;
  sub_26D528BF4(v233, v429);
  v245 = [v220 voice];
  v246 = [v245 (v232 + 1656)];

  sub_26D52B590();
  sub_26D51A8D4();
  v431 = v247;
  v249 = v248;
  v250 = qword_281225120;
  v251 = v421;
  v252 = *(v421 + 16);
  v253 = v423;
  v254 = v422;
  v252(v423, &v125[qword_281225120], v422);
  sub_26D52B0F0();
  v255 = *(v251 + 8);
  v255(v253, v254);
  sub_26D51A760();
  LODWORD(v428) = v256;
  v432 = v125;
  v257 = sub_26D52B330();
  LODWORD(v427) = sub_26D52B6C0();
  v258 = os_log_type_enabled(v257, v427);
  v430 = v249;
  if (v258)
  {
    v259 = swift_slowAlloc();
    v426 = swift_slowAlloc();
    *atoken.val = v426;
    *v259 = 136315906;
    *(v259 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
    *(v259 + 12) = 2048;
    v252(v253, &v125[v250], v254);
    v425 = v257;
    sub_26D52B0F0();
    v255(v253, v254);
    *(v259 + 14) = v441;
    *(v259 + 22) = 1024;
    v252(v253, &v125[v250], v254);
    sub_26D52B100();
    v255(v253, v254);
    v260 = sub_26D52B150();
    v261 = v432;

    *(v259 + 24) = v260 & 1;

    *(v259 + 28) = 2080;
    v262 = v428 & 1;
    LOBYTE(v441) = v428 & 1;
    sub_26D528E2C();
    v263 = sub_26D52B800();
    v265 = sub_26D51CE78(v263, v264, &atoken);

    *(v259 + 30) = v265;
    v266 = v425;
    _os_log_impl(&dword_26D514000, v425, v427, "%s. PV per-voice personalVoiceFlavor value=%ld enabled=%{BOOL}d. preferredPersonalVoiceFlavor=%s", v259, 0x26u);
    v267 = v426;
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v267, -1, -1);
    v268 = v259;
    v249 = v430;
    MEMORY[0x26D6C2260](v268, -1, -1);
  }

  else
  {

    v269 = v432;
    v262 = v428 & 1;
  }

  v270 = sub_26D51A8DC(v431, v249, v262);
  v272 = v271;

  v273 = v438;
  v274 = v434;
  v275 = 0x279DA5000uLL;
  v431 = v272;
  if (!v272)
  {

    v290 = v274;
    v291 = sub_26D52B330();
    v292 = sub_26D52B6E0();

    if (os_log_type_enabled(v291, v292))
    {
      v293 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      *atoken.val = v294;
      *v293 = 136315394;
      *(v293 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v293 + 12) = 2080;
      v295 = [v290 voice];
      v296 = [v295 identifier];

      v297 = sub_26D52B590();
      v299 = v298;

      v300 = sub_26D51CE78(v297, v299, &atoken);

      *(v293 + 14) = v300;
      _os_log_impl(&dword_26D514000, v291, v292, "%s. Failed: No voice path for voice: %s", v293, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v294, -1, -1);
      MEMORY[0x26D6C2260](v293, -1, -1);
    }

    goto LABEL_123;
  }

  v428 = v270;
  v276 = [objc_opt_self() sharedInstance];
  v277 = [v274 voice];
  v278 = [v277 identifier];

  if (!v278)
  {
    sub_26D52B590();
    v278 = sub_26D52B580();
  }

  v279 = [v276 resourceWithVoiceId_];

  if (!v279)
  {

    v427 = 0;
    v289 = 0;
    goto LABEL_101;
  }

  v280 = v279;
  v281 = [v280 primaryLanguage];
  if (!v281)
  {
    sub_26D52B590();
    v281 = sub_26D52B580();
  }

  v282 = objc_opt_self();
  v283 = [v280 speechVoice];
  v284 = [v283 voiceType];

  v285 = [v282 effectiveResourceForLanguageCode:v281 andVoiceType:v284];
  if (!v285)
  {

    v427 = 0;
    v289 = 0;
    v275 = 0x279DA5000uLL;
    goto LABEL_101;
  }

  v286 = [v285 searchPathURL];

  v275 = 0x279DA5000;
  if (v286)
  {

    v287 = v395;
    sub_26D52B000();

    v427 = sub_26D52B010();
    v289 = v288;

    (*(v396 + 8))(v287, v397);
LABEL_101:
    v301 = sub_26D52B0C0();
    v303 = v302;
    v304 = [v434 voice];
    v305 = [v304 *(v275 + 1768)];

    if (!v305)
    {
      sub_26D52B590();
      v305 = sub_26D52B580();
    }

    v426 = v279;
    LODWORD(v424) = TTSVoiceIDHasSiriNaturalVoicePrefix();

    v306 = v431;

    v307 = sub_26D52B330();
    v308 = sub_26D52B6F0();

    v309 = os_log_type_enabled(v307, v308);
    v425 = v289;
    if (v309)
    {
      v310 = swift_slowAlloc();
      v420 = swift_slowAlloc();
      *atoken.val = v420;
      *v310 = 136315906;
      *(v310 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v310 + 12) = 2080;
      LODWORD(v419) = v308;
      *(v310 + 14) = sub_26D51CE78(v428, v306, &atoken);
      *(v310 + 22) = 2080;
      *(v310 + 24) = sub_26D51CE78(v301, v303, &atoken);
      *(v310 + 32) = 2080;
      if (v289)
      {
        v311 = v427;
      }

      else
      {
        v311 = 0x3E6C696E3CLL;
      }

      if (v289)
      {
        v312 = v289;
      }

      else
      {
        v312 = 0xE500000000000000;
      }

      v313 = sub_26D51CE78(v311, v312, &atoken);

      *(v310 + 34) = v313;
      _os_log_impl(&dword_26D514000, v307, v419, "%s: Init'ing Siri synth with voice path='%s' language=%s resource path='%s'", v310, 0x2Au);
      v314 = v420;
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v314, -1, -1);
      MEMORY[0x26D6C2260](v310, -1, -1);

      v124 = v422;
      v189 = v435;
      v315 = v432;
    }

    else
    {

      v124 = v422;
      v189 = v435;
      v315 = v432;
    }

    v316 = _AXSSpeechSynthesisOptions();
    v317 = sub_26D52B580();
    v318 = sub_26D52B580();

    if (v424)
    {
      v319 = sub_26D52B580();
    }

    else
    {
      v319 = 0;
    }

    if (v425)
    {
      v320 = sub_26D52B580();
    }

    else
    {
      v320 = 0;
    }

    v273 = v438;
    v321 = [objc_allocWithZone(TTSSiriSynthWrapper) initWithVoicePath:v317 language:v318 dynamicStylePrompt:v319 censorPlainText:(v316 & 1) == 0 delegate:v315 feResourcePath:v320];

    v322 = *&v125[v189];
    *&v125[v189] = v321;

    if (*&v125[v189])
    {

      v323 = [v434 voice];
      v324 = [v323 identifier];

      v325 = sub_26D52B590();
      v327 = v326;

      (*((*MEMORY[0x277D85000] & *v315) + class metadata base offset for TTSSiriSynthAudioUnit + 848))(v325, v327);

      sub_26D528C58(v429);

LABEL_127:
      v337 = v402;
      sub_26D52B0A0();
      v338 = sub_26D52B0B0();
      (*(*(v338 - 8) + 56))(v337, 0, 1, v338);
      v339 = qword_281225228;
      swift_beginAccess();
      sub_26D528DC4(v337, &v125[v339], &qword_280502C70, &qword_26D52CB50);
      swift_endAccess();
      v340 = *&v125[v189];
      v341 = v421;
      v342 = v423;
      if (v340)
      {
        v343 = qword_281225168;
        v344 = *(v421 + 16);
        v344(v423, &v125[qword_281225168], v124);
        v37 = v340;
        sub_26D52B0F0();
        v347 = *(v341 + 8);
        v345 = v341 + 8;
        v346 = v347;
        (v347)(v342, v124);
        if (!*atoken.val)
        {
          v384 = sub_26D52B330();
          v385 = sub_26D52B6F0();
          if (os_log_type_enabled(v384, v385))
          {
            v386 = swift_slowAlloc();
            v387 = swift_slowAlloc();
            *atoken.val = v387;
            *v386 = 136315138;
            *(v386 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
            _os_log_impl(&dword_26D514000, v384, v385, "%s: Not applying a neural style for speaking", v386, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v387);
            MEMORY[0x26D6C2260](v387, -1, -1);
            v388 = v439;
            MEMORY[0x26D6C2260](v386, -1, -1);
          }

          else
          {

            v388 = v439;
          }

          v119 = v438;
          [v37 setCurrentNeuralStyle_];
          goto LABEL_155;
        }

        v432 = v343;
        v434 = v344;
        v344(v342, &v343[v125], v124);
        sub_26D52B0F0();
        v435 = v346;
        (v346)(v342, v124);
        v119 = v438;
        if ((*atoken.val & 0x8000000000000000) != 0)
        {
LABEL_141:
          v421 = v345;
          v375 = v125;
          v376 = sub_26D52B330();
          v377 = sub_26D52B6E0();
          if (os_log_type_enabled(v376, v377))
          {
            v378 = swift_slowAlloc();
            v379 = swift_slowAlloc();
            v431 = v37;
            v380 = v124;
            v381 = v379;
            *atoken.val = v379;
            *v378 = 136315394;
            *(v378 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
            *(v378 + 12) = 2048;
            v382 = v423;
            v434(v423, &v432[v125], v380);
            sub_26D52B0F0();
            v383 = v380;
            v37 = v431;
            (v435)(v382, v383);
            *(v378 + 14) = v441;

            _os_log_impl(&dword_26D514000, v376, v377, "%s: Cannot set neural style. index=%ld out of bounds!", v378, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v381);
            MEMORY[0x26D6C2260](v381, -1, -1);
            MEMORY[0x26D6C2260](v378, -1, -1);
          }

          else
          {
          }

          v388 = v439;
LABEL_155:
          v391 = sub_26D52B580();

          [v37 synthesizeString_];

          (*(v119 + 8))(v433, v388);
          v125[qword_2812251D0] = 1;
LABEL_156:

          return;
        }

        v348 = v423;
        v434(v423, &v432[v125], v124);
        sub_26D52B0F0();
        v57 = v345;
        (v435)(v348, v124);
        v117 = *atoken.val;
        v349 = [v37 neuralStyles];
        v123 = sub_26D52AB00(0, &qword_280502C88, off_279DA51B0);
        v350 = sub_26D52B670();

        if (!(v350 >> 62))
        {
          v351 = *((v350 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_132;
        }

LABEL_158:
        v351 = sub_26D52B7F0();
LABEL_132:

        v345 = v57;
        if (v117 < v351)
        {
          v429 = v123;
          v352 = v125;
          v431 = v37;
          v353 = v37;
          v354 = sub_26D52B330();
          v355 = sub_26D52B6F0();

          v356 = os_log_type_enabled(v354, v355);
          v430 = v353;
          if (!v356)
          {

            v369 = v423;
            v359 = v435;
            v371 = v434;
            goto LABEL_150;
          }

          LODWORD(v428) = v355;
          v440 = v352;
          v357 = v124;
          v124 = swift_slowAlloc();
          v427 = swift_slowAlloc();
          *atoken.val = v427;
          *v124 = 136315650;
          *(v124 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
          *(v124 + 12) = 2080;
          v358 = [v353 neuralStyles];
          v37 = sub_26D52B670();

          v359 = v432;
          v360 = v423;
          v434(v423, &v432[v125], v357);
          sub_26D52B0F0();
          (v435)(v360, v357);
          v361 = v441;
          if ((v37 & 0xC000000000000001) != 0)
          {
            goto LABEL_162;
          }

          if ((v441 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v441 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            for (i = *(v37 + 8 * v441 + 32); ; i = MEMORY[0x26D6C1840](v361, v37))
            {
              v363 = i;

              v364 = [(objc_class *)v363 name];

              v365 = sub_26D52B590();
              v367 = v366;

              v368 = sub_26D51CE78(v365, v367, &atoken);

              *(v124 + 14) = v368;
              *(v124 + 22) = 2048;
              v369 = v423;
              v370 = v422;
              v371 = v434;
              v434(v423, v359 + v125, v422);
              sub_26D52B0F0();
              v359 = v435;
              (v435)(v369, v370);
              v372 = v440;

              *(v124 + 24) = v441;
              _os_log_impl(&dword_26D514000, v354, v428, "%s: Using neural style '%s' (idx=%ld) for speaking", v124, 0x20u);
              v373 = v427;
              swift_arrayDestroy();
              MEMORY[0x26D6C2260](v373, -1, -1);
              v374 = v124;
              v124 = v370;
              MEMORY[0x26D6C2260](v374, -1, -1);

              v119 = v438;
LABEL_150:
              v389 = [v430 neuralStyles];
              v354 = sub_26D52B670();

              v371(v369, &v432[v125], v124);
              sub_26D52B0F0();
              v359(v369, v124);
              v361 = *atoken.val;
              if ((v354 & 0xC000000000000001) != 0)
              {
                break;
              }

              v37 = v431;
              if ((*atoken.val & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else
              {
                v359 = v430;
                if (*atoken.val < *((v354 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v390 = *(v354 + 8 * *atoken.val + 32);
                  goto LABEL_154;
                }
              }

              __break(1u);
LABEL_162:
              ;
            }

            v390 = MEMORY[0x26D6C1840](*atoken.val, v354);
            v37 = v431;
            v359 = v430;
LABEL_154:

            [v359 setCurrentNeuralStyle_];

            v388 = v439;
            goto LABEL_155;
          }

          __break(1u);
          goto LABEL_165;
        }

        goto LABEL_141;
      }

      (*(v273 + 8))(v433, v439);

LABEL_140:

      return;
    }

    v328 = v431;

    v291 = sub_26D52B330();
    v329 = sub_26D52B6E0();

    if (os_log_type_enabled(v291, v329))
    {
      v330 = swift_slowAlloc();
      v331 = swift_slowAlloc();
      *atoken.val = v331;
      *v330 = 136315394;
      *(v330 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v330 + 12) = 2080;
      v332 = sub_26D51CE78(v428, v328, &atoken);

      *(v330 + 14) = v332;
      _os_log_impl(&dword_26D514000, v291, v329, "%s: SiriTTSSynthesizer failed to initialize with voice path %s", v330, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v331, -1, -1);
      MEMORY[0x26D6C2260](v330, -1, -1);
    }

    else
    {
    }

LABEL_123:

    sub_26D528C58(v429);
    (*(v273 + 8))(v433, v439);

    goto LABEL_140;
  }

LABEL_167:
  __break(1u);
}

uint64_t sub_26D524D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D52B790();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_26D5291C8(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_26D52B0E0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_26D524E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v27 = a4;
  v28 = a8;
  v25 = a5;
  v26 = a3;
  v12 = sub_26D52B170();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26D52B200();
  v16 = sub_26D52B1F0();

  v17 = [a7 identifier];
  v18 = sub_26D52B590();
  v20 = v19;

  *v15 = a1;
  v15[1] = a2;
  v21 = v26;
  v15[2] = v25;
  v15[3] = a6;
  v22 = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v18;
  v15[7] = v20;
  (*(v13 + 104))(v15, *MEMORY[0x277D70170], v12);
  v23 = [v28 jobIdentifier];
  sub_26D52B590();

  sub_26D52B1E0();

  return (*(v13 + 8))(v15, v12);
}

void sub_26D524FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = sub_26D52B590();
  v12 = v11;
  v13 = sub_26D52B590();
  v15 = v14;

  v16 = a6;
  v9(v10, v12, a3, a4, v13, v15, v16);
}

void sub_26D5250A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_26D520F60(v4);
}

id sub_26D525110(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_26D52ADDC;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26D5251DC;
  v4[3] = &block_descriptor_60;
  v2 = _Block_copy(v4);

  return v2;
}

uint64_t sub_26D5251DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v14 = *(a1 + 32);
  v15 = _Block_copy(aBlock);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_26D52A6CC;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14(a2, a3, a4, a5, a6, a7, v15, v16);
  sub_26D52A6BC(v15, v16);

  return v17;
}

uint64_t sub_26D5252C8(_DWORD *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v153 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C68, &qword_26D52CB48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v133 - v6;
  v154 = sub_26D52B270();
  v147 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v149 = v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_26D52B320();
  v146 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v152 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D52B520();
  v11 = *(v10 - 1);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v133 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = Strong;
  sub_26D52B530();
  v19 = sub_26D52B540();
  *(v20 + 4) = 0;
  v19(aBlock, 0);
  v21 = sub_26D52B540();
  *v22 = 1;
  v21(aBlock, 0);
  v150 = v16;
  v24 = sub_26D52B550();
  if (!v23)
  {
    v24(aBlock, 0);
    if (qword_2812250F0 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_22;
  }

  v25 = v23;
  v143 = v7;
  v24(aBlock, 0);
  bzero(v25, 4 * a2);
  if ((v18[qword_2812252A0] & 1) == 0)
  {
    if (qword_2812250F0 != -1)
    {
      goto LABEL_97;
    }

    goto LABEL_25;
  }

  sub_26D52B530();
  v26 = sub_26D52B550();
  v28 = v27;
  v26(aBlock, 0);
  v30 = *(v11 + 8);
  v29 = v11 + 8;
  v140 = v30;
  v30(v14, v10);
  if (!v28)
  {
    if (qword_2812250F0 == -1)
    {
LABEL_32:
      v60 = sub_26D52B350();
      __swift_project_value_buffer(v60, qword_2812252A8);
      v61 = sub_26D52B330();
      v62 = sub_26D52B6E0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock[0] = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
        _os_log_impl(&dword_26D514000, v61, v62, "%s: could not get audio buffer to fill", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x26D6C2260](v64, -1, -1);
        MEMORY[0x26D6C2260](v63, -1, -1);
      }

      else
      {
      }

      v106 = v150;
      v107 = v10;
LABEL_81:
      v140(v106, v107);
      return 0xFFFFFFFFLL;
    }

LABEL_105:
    swift_once();
    goto LABEL_32;
  }

  v165 = 0;
  v136 = v29;
  v137 = v10;
  if (a2)
  {
    v11 = qword_281225218;
    v31 = qword_2812251C0;
    v10 = 0x279DA5000;
    while (1)
    {
      while (1)
      {
        v34 = *&v18[v11];
        if (!v34)
        {
          break;
        }

        v35 = v34;
        v36 = *([v35 mutableAudioBufferList] + 2);
        if (!v36)
        {
          if (qword_2812250F0 != -1)
          {
            swift_once();
          }

          v108 = sub_26D52B350();
          __swift_project_value_buffer(v108, qword_2812252A8);
          v109 = sub_26D52B330();
          v110 = sub_26D52B6E0();
          v111 = os_log_type_enabled(v109, v110);
          v112 = v137;
          if (v111)
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            aBlock[0] = v114;
            *v113 = 136315138;
            *(v113 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
            _os_log_impl(&dword_26D514000, v109, v110, "%s: Failed to get source buffer to fill from", v113, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v114);
            MEMORY[0x26D6C2260](v114, -1, -1);
            MEMORY[0x26D6C2260](v113, -1, -1);
          }

          else
          {
          }

          v106 = v150;
          v107 = v112;
          goto LABEL_81;
        }

        v37 = *&v18[v31];
        if (v37 >= [v35 frameLength])
        {

          *&v18[v31] = 0;
          v32 = *&v18[v11];
          *&v18[v11] = 0;
        }

        else
        {
          *(v28 + 4 * v165) = *(v36 + *&v18[v31]);

          if (v165 == -1)
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            swift_once();
LABEL_22:
            v47 = sub_26D52B350();
            __swift_project_value_buffer(v47, qword_2812252A8);
            v48 = sub_26D52B330();
            v49 = sub_26D52B6E0();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              aBlock[0] = v51;
              *v50 = 136315138;
              *(v50 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
              _os_log_impl(&dword_26D514000, v48, v49, "%s: could not get audio buffer to zero", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v51);
              MEMORY[0x26D6C2260](v51, -1, -1);
              MEMORY[0x26D6C2260](v50, -1, -1);
            }

            else
            {
            }

            (*(v11 + 8))(v150, v10);
            return 0xFFFFFFFFLL;
          }

          ++v165;
          v38 = *&v18[v31];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_94;
          }

          *&v18[v31] = v40;
        }

LABEL_8:
        v33 = v165;
        if (v165 >= a2)
        {
          goto LABEL_19;
        }
      }

      v41 = sub_26D526F20();
      v42 = *&v18[v11];
      *&v18[v11] = v41;
      v36 = v41;

      *&v18[v31] = 0;
      if (v41)
      {

        goto LABEL_8;
      }

      *v153 = 128;
      v43 = v165;
      *(v28 + 4 * v165) = 0;
      v44 = __CFADD__(v43, 1);
      v33 = v43 + 1;
      if (v44)
      {
        __break(1u);
LABEL_97:
        swift_once();
LABEL_25:
        v52 = sub_26D52B350();
        __swift_project_value_buffer(v52, qword_2812252A8);
        v53 = sub_26D52B330();
        v54 = sub_26D52B6F0();
        v55 = os_log_type_enabled(v53, v54);
        v56 = v150;
        if (v55)
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          aBlock[0] = v58;
          *v57 = 136315138;
          *(v57 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
          _os_log_impl(&dword_26D514000, v53, v54, "%s: In render block but not allowed to render. Returning immediately with action complete", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x26D6C2260](v58, -1, -1);
          MEMORY[0x26D6C2260](v57, -1, -1);
        }

        *v153 = 128;
        (*(v11 + 8))(v56, v10);
        return 0xFFFFFFFFLL;
      }

      v165 = v33;
      if (v33 >= a2)
      {
LABEL_19:
        v45 = MEMORY[0x277D84F90];
        v163 = 0;
        v164 = MEMORY[0x277D84F90];
        if (!(v33 >> 30))
        {
          v46 = 4 * v33;
          v10 = v137;
          goto LABEL_35;
        }

        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        result = sub_26D52B7F0();
        if (!result)
        {
          goto LABEL_101;
        }

LABEL_63:
        v94 = *&v18[v36[61]];
        if (!v94)
        {
          goto LABEL_101;
        }

        v159 = 10;
        v160 = 0xE100000000000000;
        if (v45 >> 62)
        {
          result = sub_26D52B7F0();
          v95 = result;
        }

        else
        {
          v95 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v153 = v45;
        v154 = v94;
        if (v95)
        {
          if (v95 < 1)
          {
            goto LABEL_108;
          }

          v96 = v45 & 0xC000000000000001;
          v97 = v94;
          v98 = 0;
          do
          {
            if (v96)
            {
              v99 = MEMORY[0x26D6C1840](v98, v45);
            }

            else
            {
              v99 = *(v45 + 8 * v98 + 32);
            }

            v100 = v99;
            ++v98;
            v156 = 0;
            v157 = 0xE000000000000000;
            sub_26D52B7B0();

            v156 = 0x2064726F57202020;
            v157 = 0xE800000000000000;
            v166.location = [v100 textRange];
            v101 = NSStringFromRange(v166);
            v102 = sub_26D52B590();
            v104 = v103;

            MEMORY[0x26D6C1670](v102, v104);

            MEMORY[0x26D6C1670](2113568, 0xE300000000000000);
            v155[0] = [v100 byteSampleOffset] / 2;
            v105 = sub_26D52B800();
            MEMORY[0x26D6C1670](v105);

            MEMORY[0x26D6C1670](10, 0xE100000000000000);
            MEMORY[0x26D6C1670](v156, v157);

            v18 = v148;
            v45 = v153;
          }

          while (v95 != v98);
        }

        else
        {
          v115 = v94;
        }

        if (qword_2812250F0 != -1)
        {
          swift_once();
        }

        v116 = sub_26D52B350();
        __swift_project_value_buffer(v116, qword_2812252A8);
        v118 = v159;
        v117 = v160;
        v119 = v18;

        v120 = sub_26D52B330();
        v121 = sub_26D52B6D0();

        v122 = os_log_type_enabled(v120, v121);
        v10 = v137;
        if (v122)
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v158 = v124;
          *v123 = 136316162;
          *(v123 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, &v158);
          *(v123 + 12) = 2048;
          v125 = *&v119[qword_281225250];
          *(v123 + 14) = v125;
          *(v123 + 22) = 2048;
          result = swift_beginAccess();
          if (__OFADD__(v125, v165))
          {
            goto LABEL_109;
          }

          *(v123 + 24) = v125 + v165;

          *(v123 + 32) = 2048;
          swift_beginAccess();
          *(v123 + 34) = v163;
          *(v123 + 42) = 2080;
          v126 = sub_26D51CE78(v118, v117, &v158);

          *(v123 + 44) = v126;
          _os_log_impl(&dword_26D514000, v120, v121, "%s: Markers for [%ld..<%ld] (%ld remaining): \n%s", v123, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x26D6C2260](v124, -1, -1);
          MEMORY[0x26D6C2260](v123, -1, -1);

          v18 = v148;
        }

        else
        {
        }

        v127 = v154;
        v128 = [v119 speechSynthesisOutputMetadataBlock];
        if (v128)
        {
          v129 = v128;
          sub_26D52AB00(0, &qword_280502E10, 0x277CB8478);
          v130 = sub_26D52B660();
          (v129)[2](v129, v130, v127);

          _Block_release(v129);
        }

        goto LABEL_102;
      }
    }
  }

  v46 = 0;
  v163 = 0;
  v164 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
LABEL_35:
  v65 = sub_26D52B540();
  *(v66 + 4) = v46;
  v65(aBlock, 0);
  v67 = *&v18[qword_281225270];
  v68 = swift_allocObject();
  v68[2] = v18;
  v68[3] = &v165;
  v68[4] = &v164;
  v68[5] = &v163;
  v36 = swift_allocObject();
  v36[2] = sub_26D52A8E4;
  v36[3] = v68;
  v133[2] = v68;
  aBlock[4] = sub_26D52ADEC;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D524D24;
  aBlock[3] = &block_descriptor_92;
  v69 = _Block_copy(aBlock);
  v18 = v18;

  dispatch_sync(v67, v69);
  _Block_release(v69);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  if (v67)
  {
    goto LABEL_99;
  }

  v161 = v45;
  v70 = v164;
  v71 = *(v164 + 16);
  v36 = &unk_281225000;
  v148 = v18;
  v72 = v152;
  if (!v71)
  {
LABEL_61:
    if (v45 >> 62)
    {
      goto LABEL_100;
    }

    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

LABEL_101:

LABEL_102:
    swift_beginAccess();
    v131 = *&v18[qword_281225250];
    if (!__OFADD__(v131, v165))
    {
      *&v18[qword_281225250] = v131 + v165;
      v132 = sub_26D52B4C0();

      v140(v150, v10);

      return v132;
    }

    __break(1u);
    goto LABEL_105;
  }

  v141 = qword_2812251E8;
  v73 = qword_281225130;
  v133[0] = &v18[qword_281225208];
  v142 = qword_281225250;

  v139 = v73;
  swift_beginAccess();
  v145 = *MEMORY[0x277CE67A8];
  v144 = (v146 + 13);
  ++v146;
  v138 = (v147 + 48);
  v135 = (v147 + 32);
  v134 = (v147 + 8);
  v133[1] = v70;
  v10 = (v70 + 36);
  v45 = MEMORY[0x277D84F90];
  v11 = v151;
  while (1)
  {
    if (*(v10 - 1))
    {
      goto LABEL_39;
    }

    v74 = *v10;
    v75 = *(v10 - 1);
    (*v144)(v72, v145, v11);
    v76 = sub_26D52B310();
    (*v146)(v72, v11);
    if ((v76 & 1) == 0)
    {
      break;
    }

    v77 = *&v18[v142];
    if ((v77 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
      goto LABEL_93;
    }

    v78 = [objc_allocWithZone(MEMORY[0x277CB8478]) initWithMarkerType:1 forTextRange:v74 atByteSampleOffset:{v75, 4 * v77}];
    MEMORY[0x26D6C16D0]();
    if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D52B690();
      v18 = v148;
    }

    sub_26D52B6A0();

    v45 = v161;
LABEL_39:
    v10 += 4;
    if (!--v71)
    {

      v10 = v137;
      v36 = &unk_281225000;
      goto LABEL_61;
    }
  }

  v79 = *&v18[v141];
  if (!v79)
  {
    goto LABEL_39;
  }

  v153 = v45;
  v80 = [v79 ssmlRepresentation];
  v147 = sub_26D52B590();

  v81 = v143;
  sub_26D52AA98(&v18[v139], v143, &qword_280502C68, &qword_26D52CB48);
  v82 = v154;
  if ((*v138)(v81, 1, v154) == 1)
  {

    sub_26D51D798(v81, &qword_280502C68, &qword_26D52CB48);
    v45 = v153;
    v11 = v151;
    v72 = v152;
LABEL_49:
    v18 = v148;
    goto LABEL_39;
  }

  v83 = v149;
  (*v135)(v149, v81, v82);
  sub_26D52B240();
  sub_26D52B6B0();
  v85 = v84;

  if (v85 & 1) != 0 || (sub_26D52B260(), (v86))
  {
    (*v134)(v83, v154);

    v18 = v148;
    v45 = v153;
    v11 = v151;
    v72 = v152;
    goto LABEL_39;
  }

  v87 = sub_26D52B620();
  sub_26D52B630();

  v88 = v87;
  v89 = sub_26D52B620();

  v90 = v133[0];
  v11 = v151;
  v72 = v152;
  if ((*(v133[0] + 16) & 1) == 0 && *v133[0] == v88 && *(v133[0] + 8) == v89)
  {
    (*v134)(v149, v154);
    v18 = v148;
    v45 = v153;
    goto LABEL_39;
  }

  *v133[0] = v88;
  *(v90 + 8) = v89;
  *(v90 + 16) = 0;
  v91 = *&v148[v142];
  v92 = v154;
  if ((v91 - 0x2000000000000000) >> 62 == 3)
  {
    v93 = [objc_allocWithZone(MEMORY[0x277CB8478]) initWithMarkerType:1 forTextRange:v88 atByteSampleOffset:{v89, 4 * v91}];
    MEMORY[0x26D6C16D0]();
    if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D52B690();
    }

    sub_26D52B6A0();

    (*v134)(v149, v92);
    v45 = v161;
    goto LABEL_49;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  return result;
}

void sub_26D526904(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_26D528AF0(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_26D526A18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26D528AF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26D526B04()
{
  v1 = v0;
  v2 = sub_26D52B170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D52B200();
  v6 = sub_26D52B1F0();
  (*(v3 + 104))(v5, *MEMORY[0x277D70178], v2);
  v7 = *&v1[qword_2812251E8];
  if (v7)
  {
    v8 = [v7 jobIdentifier];
    sub_26D52B590();
  }

  sub_26D52B1E0();

  (*(v3 + 8))(v5, v2);
  [*&v1[qword_281225240] stopSynthesis];
  v9 = *&v1[qword_281225288];
  os_unfair_lock_lock(v9 + 4);
  v10 = qword_281225200;
  swift_beginAccess();
  *&v1[v10] = MEMORY[0x277D84F90];

  v11 = qword_281225218;
  v12 = *&v1[qword_281225218];
  *&v1[qword_281225218] = 0;

  v13 = *&v1[qword_281225270];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26D52ADD8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_26D52ADEC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D524D24;
  aBlock[3] = &block_descriptor_22;
  v16 = _Block_copy(aBlock);
  v17 = v1;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    *&v17[qword_2812251C0] = 0;
    v19 = *&v1[v11];
    *&v1[v11] = 0;

    [*&v17[qword_2812251F8] broadcast];
    os_unfair_lock_unlock(v9 + 4);
  }

  return result;
}

void sub_26D526E44(void *a1)
{
  v1 = a1;
  sub_26D526B04();
}

void sub_26D526EB4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v6 = a3;
  v7 = a1;
  sub_26D5295D8(v4);
}

uint64_t sub_26D526F20()
{
  v1 = v0;
  v2 = sub_26D52B0B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  v9 = *(v0 + qword_281225288);
  os_unfair_lock_lock(v9 + 4);
  v10 = qword_281225200;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    if (sub_26D52B7F0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_beginAccess();
    sub_26D527170();
    v13 = v12;
    swift_endAccess();
    goto LABEL_6;
  }

  v13 = 0;
LABEL_6:
  os_unfair_lock_unlock(v9 + 4);
  v14 = *(v1 + qword_281225240);
  if (v14)
  {
    v15 = [v14 synthesizing];
    if (!v13)
    {
      if (v15)
      {
        [*(v1 + qword_2812251F8) wait];
        return sub_26D526F20();
      }

LABEL_11:
      if (*(v1 + qword_2812251D0) != 1)
      {
        return 0;
      }

      v16 = *(v1 + qword_2812251F8);
      sub_26D52B070();
      sub_26D52B080();
      v17 = *(v3 + 8);
      v17(v6, v2);
      v18 = sub_26D52B060();
      v17(v8, v2);
      [v16 waitUntilDate_];

      return sub_26D526F20();
    }
  }

  else if (!v13)
  {
    goto LABEL_11;
  }

  return v13;
}

void sub_26D527170()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_26D52B7F0())
  {
    if (sub_26D52B7F0())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x26D6C1840](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_26D52B7F0();
LABEL_13:
      if (v3)
      {
        sub_26D529398(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_26D527250(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_26D529710(v7);
}

void sub_26D5272D4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v9 = a1;
  sub_26D529B30(a4, a5);
}

uint64_t sub_26D527348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTSSiriSynthVoice(0);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D52B580();
  v10 = TTSVoiceIDHasPersonalVoicePrefix();

  if (v10)
  {
    result = sub_26D527D28();
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v14 = 0;
      while (v14 < *(v12 + 16))
      {
        sub_26D52AB48(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v8);
        if (sub_26D51A124(a1, a2))
        {

          sub_26D528BF4(v8, a3);
          return (*(v17 + 56))(a3, 0, 1, v6);
        }

        ++v14;
        result = sub_26D528C58(v8);
        if (v13 == v14)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      return (*(v17 + 56))(a3, 1, 1, v6);
    }
  }

  else
  {

    sub_26D51A078(a1, a2, a3);
    v15 = *(v17 + 56);

    return v15(a3, 0, 1, v6);
  }

  return result;
}

void sub_26D52755C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_26D52B580();
  v4 = [v2 resourceWithVoiceId_];

  if (v4)
  {
    sub_26D52B230();
    v5 = sub_26D52B220();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D52B7F0())
    {
      v8 = 0;
      v9 = qword_281225240;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26D6C1840](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = *(&oslog->isa + v9);
        if (v13)
        {
          v14 = v13;
          [v14 loadRuleset_];
        }

        ++v8;
        if (v12 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    v15 = [v4 primaryLanguage];
    if (!v15)
    {
      sub_26D52B590();
      v15 = sub_26D52B580();
    }

    v16 = objc_opt_self();
    v17 = [v4 speechVoice];
    v18 = [v17 voiceType];

    v19 = [v16 effectiveResourceForLanguageCode:v15 andVoiceType:v18];
    if (v19)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = oslog;
      aBlock[4] = sub_26D529C9C;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26D5279A4;
      aBlock[3] = &block_descriptor_28;
      v21 = _Block_copy(aBlock);
      v22 = oslog;

      [v16 enumerateLoadableResourcesInAsset:v19 usingBlock:v21];
      _Block_release(v21);
    }

    else
    {
      if (qword_2812250F0 != -1)
      {
        swift_once();
      }

      v23 = sub_26D52B350();
      __swift_project_value_buffer(v23, qword_2812252A8);
      v24 = v4;
      osloga = sub_26D52B330();
      v25 = sub_26D52B6C0();

      if (os_log_type_enabled(osloga, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v24;
        *v27 = v4;
        v29 = v24;
        _os_log_impl(&dword_26D514000, osloga, v25, "Could not find voice resource for resource %@", v26, 0xCu);
        sub_26D51D798(v27, &unk_280502CB0, &qword_26D52CB78);
        MEMORY[0x26D6C2260](v27, -1, -1);
        MEMORY[0x26D6C2260](v26, -1, -1);

        v28 = v29;
      }

      else
      {

        v28 = osloga;
      }
    }
  }
}

uint64_t sub_26D5279A4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v20 = sub_26D52B030();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 32);
  v10 = sub_26D52B590();
  v12 = v11;
  v13 = sub_26D52B590();
  v15 = v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_26D52B000();

  v19(v10, v12, v13, v15, sub_26D52A6F8, v17, v9);

  return (*(v7 + 8))(v9, v20);
}

uint64_t sub_26D527B4C(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  v2 = sub_26D52B050();

  return v2;
}

void static TTSSiriSynthAudioUnit.registerAudioUnit()()
{
  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v0 = String.osType()();
    v1 = objc_opt_self();
    type metadata accessor for TTSSiriSynthAudioUnit(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = sub_26D52B580();
    v4[0] = 1635087216;
    v4[1] = v0;
    v5 = 1634758764;
    v6 = 0;
    [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
  }
}

void sub_26D527C64()
{
  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v0 = String.osType()();
    v1 = objc_opt_self();
    type metadata accessor for TTSSiriSynthAudioUnit(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = sub_26D52B580();
    v4[0] = 1635087216;
    v4[1] = v0;
    v5 = 1634758764;
    v6 = 0;
    [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
  }
}

uint64_t sub_26D527D28()
{
  v0 = sub_26D52B510();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (TTSVBHasDeviceBeenUnlockedSinceBoot())
  {
    v4 = dispatch_semaphore_create(0);
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v5 = sub_26D52B350();
    __swift_project_value_buffer(v5, qword_2812252A8);
    v6 = sub_26D52B330();
    v7 = sub_26D52B6F0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26D514000, v6, v7, "Will fetch personal voices from service.", v8, 2u);
      MEMORY[0x26D6C2260](v8, -1, -1);
    }

    v9 = swift_allocObject();
    *(v9 + 16) = MEMORY[0x277D84F90];
    sub_26D51F56C();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;

    v11 = v4;
    sub_26D52B400();

    MEMORY[0x26D6C22B0](v19);
    sub_26D52B500();
    sub_26D52B740();

    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    v12 = *(v9 + 16);
  }

  else
  {
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v13 = sub_26D52B350();
    __swift_project_value_buffer(v13, qword_2812252A8);
    v14 = sub_26D52B330();
    v15 = sub_26D52B6F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26D514000, v14, v15, "Device has not been unlocked yet. Will not fetch personal voices", v16, 2u);
      MEMORY[0x26D6C2260](v16, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_26D528064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v53 = a1;
  v4 = sub_26D52B380();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v8;
  v9 = type metadata accessor for TTSSiriSynthVoice(0);
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D52B3D0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502DF0, &qword_26D52CE38);
  MEMORY[0x28223BE20](v19);
  v21 = (&v50 - v20);
  sub_26D52AA98(v53, &v50 - v20, &qword_280502DF0, &qword_26D52CE38);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v32 = *v21;
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v33 = sub_26D52B350();
    __swift_project_value_buffer(v33, qword_2812252A8);

    v34 = sub_26D52B330();
    v35 = sub_26D52B6F0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = *(v32 + 16);

      _os_log_impl(&dword_26D514000, v34, v35, "Did fetch %ld personal voice(s) from service", v36, 0xCu);
      MEMORY[0x26D6C2260](v36, -1, -1);

      v37 = *(v32 + 16);
      if (v37)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v37 = *(v32 + 16);
      if (v37)
      {
LABEL_10:
        v51 = a2;
        v59[0] = MEMORY[0x277D84F90];
        sub_26D528ED8(0, v37, 0);
        v38 = v59[0];
        v39 = *(v58 + 2);
        v40 = v58[80];
        v50 = v32;
        v41 = v32 + ((v40 + 32) & ~v40);
        v53 = *(v58 + 9);
        v58 += 16;
        v42 = v58 - 8;
        do
        {
          v43 = v55;
          v44 = v57;
          v39(v55, v41, v57);
          v45 = v56;
          v39(v56, v43, v44);
          sub_26D519FD4(v45, v11);
          (*v42)(v43, v44);
          v59[0] = v38;
          v47 = *(v38 + 16);
          v46 = *(v38 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_26D528ED8((v46 > 1), v47 + 1, 1);
            v38 = v59[0];
          }

          *(v38 + 16) = v47 + 1;
          sub_26D528BF4(v11, v38 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47);
          v41 += v53;
          --v37;
        }

        while (v37);

        a2 = v51;
        goto LABEL_18;
      }
    }

    v38 = MEMORY[0x277D84F90];
LABEL_18:
    swift_beginAccess();
    *(a2 + 16) = v38;

    return sub_26D52B750();
  }

  (*(v13 + 32))(v18, v21, v12);
  if (qword_2812250F0 != -1)
  {
    swift_once();
  }

  v22 = sub_26D52B350();
  __swift_project_value_buffer(v22, qword_2812252A8);
  (*(v13 + 16))(v16, v18, v12);
  v23 = sub_26D52B330();
  v24 = sub_26D52B6E0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v58 = v18;
    v26 = v25;
    v27 = swift_slowAlloc();
    v59[0] = v27;
    *v26 = 136315138;
    v28 = sub_26D52B3C0();
    v30 = v29;
    v57 = *(v13 + 8);
    v57(v16, v12);
    v31 = sub_26D51CE78(v28, v30, v59);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_26D514000, v23, v24, "Fetching personal voices failed: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x26D6C2260](v27, -1, -1);
    MEMORY[0x26D6C2260](v26, -1, -1);

    v57(v58, v12);
  }

  else
  {

    v48 = *(v13 + 8);
    v48(v16, v12);
    v48(v18, v12);
  }

  return sub_26D52B750();
}

uint64_t sub_26D528704()
{
  v1 = qword_281225120;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_281225168, v2);

  sub_26D51D798(v0 + qword_281225138, &qword_280502C60, &qword_26D52CB40);

  sub_26D51D798(v0 + qword_281225130, &qword_280502C68, &qword_26D52CB48);
  return sub_26D51D798(v0 + qword_281225228, &qword_280502C70, &qword_26D52CB50);
}

id TTSSiriSynthAudioUnit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSSiriSynthAudioUnit(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D528914(uint64_t a1)
{
  v2 = qword_281225120;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  v4(a1 + qword_281225168, v3);

  sub_26D51D798(a1 + qword_281225138, &qword_280502C60, &qword_26D52CB40);

  sub_26D51D798(a1 + qword_281225130, &qword_280502C68, &qword_26D52CB48);
  return sub_26D51D798(a1 + qword_281225228, &qword_280502C70, &qword_26D52CB50);
}

char *sub_26D528AF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502E08, &qword_26D52CE48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26D528BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D528C58(uint64_t a1)
{
  v2 = type metadata accessor for TTSSiriSynthVoice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_26D528D14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D528F1C(a1, a2, a3, *v3, &qword_280502E18, &qword_26D52CE50, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26D528DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_26D528E2C()
{
  result = qword_280502C98;
  if (!qword_280502C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502C98);
  }

  return result;
}

uint64_t sub_26D528E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_26D528ED8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D528F1C(a1, a2, a3, *v3, &qword_280502DF8, &qword_26D52CE40, type metadata accessor for TTSSiriSynthVoice);
  *v3 = result;
  return result;
}

void *sub_26D528F1C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_26D5290F8(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_26D52B7F0();
    }

    result = sub_26D52B7D0();
    *v2 = result;
  }

  return result;
}

uint64_t sub_26D5291C8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_26D52B0E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_26D529288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_26D52AB00(0, &qword_280502E00, 0x277CB83C0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26D52B7F0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26D52B7F0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_26D529398(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26D52B7F0();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_26D52B7F0();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_26D5290F8(result, 1);

  return sub_26D529288(v5, v3, 0);
}

unint64_t sub_26D529470(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_26D529518(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_26D528AF0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_26D529470(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_26D5295D8(char a1)
{
  v2 = v1;
  *(v2 + qword_2812251D0) = 0;
  [*(v2 + qword_2812251F8) broadcast];
  if ((a1 & 1) == 0)
  {
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v4 = sub_26D52B350();
    __swift_project_value_buffer(v4, qword_2812252A8);
    v5 = sub_26D52B330();
    v6 = sub_26D52B6E0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26D514000, v5, v6, "SiriSSE encountered error during synthesis. Resetting engine.", v7, 2u);
      MEMORY[0x26D6C2260](v7, -1, -1);
    }

    v8 = *(v2 + qword_281225240);
    *(v2 + qword_281225240) = 0;
  }
}

void sub_26D529710(void *a1)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C70, &qword_26D52CB50);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = sub_26D52B0B0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = qword_281225228;
  swift_beginAccess();
  sub_26D52AA98(v2 + v16, v8, &qword_280502C70, &qword_26D52CB50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26D51D798(v8, &qword_280502C70, &qword_26D52CB50);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_26D52B0A0();
    sub_26D52B090();
    v18 = v17;
    v19 = *(v10 + 8);
    v19(v13, v9);
    (*(v10 + 56))(v6, 1, 1, v9);
    swift_beginAccess();
    sub_26D528DC4(v6, v2 + v16, &qword_280502C70, &qword_26D52CB50);
    swift_endAccess();
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v20 = sub_26D52B350();
    __swift_project_value_buffer(v20, qword_2812252A8);
    v21 = sub_26D52B330();
    v22 = sub_26D52B6D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v19;
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v18;
      _os_log_impl(&dword_26D514000, v21, v22, "SiriAUSP first buffer latency %fs", v24, 0xCu);
      v25 = v24;
      v19 = v23;
      MEMORY[0x26D6C2260](v25, -1, -1);
    }

    v19(v15, v9);
  }

  *(v2 + qword_2812251D0) = 0;
  v26 = *(v2 + qword_281225288);
  os_unfair_lock_lock(v26 + 4);
  v27 = qword_281225200;
  swift_beginAccess();
  v28 = v30;
  MEMORY[0x26D6C16D0]();
  if (*((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_26D52B690();
  }

  sub_26D52B6A0();
  swift_endAccess();
  [*(v2 + qword_2812251F8) broadcast];
  os_unfair_lock_unlock(v26 + 4);
}

uint64_t sub_26D529B30(uint64_t a1, uint64_t a2)
{
  v2[qword_2812251D0] = 0;
  v5 = *&v2[qword_281225270];
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26D52A700;
  *(v7 + 24) = v6;
  v12[4] = sub_26D52ADEC;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26D524D24;
  v12[3] = &block_descriptor_82;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D529C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = *(v5 + 16);
  v10 = [objc_allocWithZone(TTSSiriVoiceResource) init];
  if (a3 != 0xD000000000000022 || 0x800000026D52DF10 != a4)
  {
    v19 = v10;
    if ((sub_26D52B810() & 1) == 0)
    {
      if (a3 == 0xD000000000000020 && 0x800000026D52DF40 == a4 || (sub_26D52B810() & 1) != 0)
      {
        v11 = 1;
      }

      else if (a3 == 0xD00000000000001FLL && 0x800000026D52DF70 == a4)
      {
        v11 = 2;
      }

      else if (sub_26D52B810())
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      [v19 setType_];
      v12 = sub_26D52B580();
      [v19 setResourceName_];

      v13 = a5();
      v15 = v14;
      v16 = sub_26D52B040();
      sub_26D519C98(v13, v15);
      [v19 setResourceData_];

      v17 = *(v9 + qword_281225240);
      [v17 loadVoiceResource_];
    }
  }

  return MEMORY[0x2821F9730]();
}

unint64_t sub_26D529E9C()
{
  result = qword_280502CC0;
  if (!qword_280502CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502CC0);
  }

  return result;
}

void sub_26D529F10(uint64_t a1)
{
  sub_26D52A3B8();
  if (v1 <= 0x3F)
  {
    sub_26D52A410(319, &qword_2812250A8, MEMORY[0x277CC9788]);
    if (v2 <= 0x3F)
    {
      sub_26D52A410(319, &qword_2812250A0, MEMORY[0x277D70378]);
      if (v3 <= 0x3F)
      {
        sub_26D52A410(319, &qword_2812250E8, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_26D52A3B8()
{
  if (!qword_2812250B0)
  {
    v0 = sub_26D52B120();
    if (!v1)
    {
      atomic_store(v0, &qword_2812250B0);
    }
  }
}

void sub_26D52A410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26D52B770();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26D52A478(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26D52A4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D52A540(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26D52A594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D52A5F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D52A614(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26D52A660(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D52A680(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_26D52A6BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_26D52A700()
{
  v1 = v0[2];
  if (v1 < 0)
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    v25 = v0[4];
    v2 = qword_281225238;
    if (v1)
    {
      v3 = 0;
      v4 = v0[3];
      v5 = MEMORY[0x277D84F90];
      v23 = v0[2];
      v24 = qword_281225238;
      while (1)
      {
        v7 = v4 + 16 * v3;
        if ((*v7 & 1) == 0)
        {
          v8 = *(v7 + 1);
          v9 = *(v7 + 2);
          v10 = *(v7 + 4);
          v11 = *(v7 + 8);
          v12 = *(v25 + v2);
          v13 = *(v12 + 16);
          if (v13)
          {
            v14 = 0;
            v15 = 0;
            while (1)
            {
              v16 = v12 + v14;
              if ((*(v12 + v14 + 32) & 1) == 0 && v10 == *(v16 + 36) && v9 == *(v16 + 34))
              {
                break;
              }

              ++v15;
              v14 += 16;
              if (v13 == v15)
              {
                goto LABEL_21;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v2 = v24;
            *(v25 + v24) = v12;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v22 = sub_26D5291B4(v12);
              v2 = v24;
              v12 = v22;
            }

            if (v15 >= *(v12 + 16))
            {
              __break(1u);
              goto LABEL_29;
            }

            *(v12 + v14 + 40) = v11;
            *(v25 + v2) = v12;
          }

          else
          {
LABEL_21:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_26D528AF0(0, *(v5 + 2) + 1, 1, v5);
            }

            v20 = *(v5 + 2);
            v19 = *(v5 + 3);
            v2 = v24;
            if (v20 >= v19 >> 1)
            {
              v21 = sub_26D528AF0((v19 > 1), v20 + 1, 1, v5);
              v2 = v24;
              v5 = v21;
            }

            *(v5 + 2) = v20 + 1;
            v6 = &v5[16 * v20];
            v6[32] = 0;
            v6[33] = v8;
            *(v6 + 17) = v9;
            *(v6 + 9) = v10;
            *(v6 + 5) = v11;
          }

          v1 = v23;
        }

        if (++v3 == v1)
        {
          goto LABEL_27;
        }
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_27:
    sub_26D526A18(v5);
  }
}

void sub_26D52A8E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = qword_281225238;
  v5 = *(v2 + qword_281225238);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = *(v5 + 2);
  if (v7)
  {
    while (1)
    {
      v8 = 0;
      v9 = qword_281225250;
LABEL_4:
      v10 = *(v2 + v9);
      v11 = *v1;
      v12 = __OFADD__(v10, v11);
      v13 = v10 + v11;
      if (v12)
      {
        break;
      }

      v14 = 16 * v8;
      v15 = v8;
      while (1)
      {
        v16 = &v5[v14];
        v17 = *&v5[v14 + 40];
        if (v17 >= v13)
        {
          break;
        }

        ++v15;
        v14 += 16;
        if (v15 >= v7)
        {
          if (v7 <= v8 + 1)
          {
            v15 = v8 + 1;
          }

          else
          {
            v15 = v7;
          }

          goto LABEL_17;
        }
      }

      v18 = &v5[16 * v7 + 40];
      while (v15 < --v7)
      {
        v19 = *(v18 - 2);
        v18 -= 16;
        if (v19 < v13)
        {
          v20 = v16[32];
          v21 = &v5[v14];
          v22 = v21[33];
          v23 = *(v21 + 17);
          LODWORD(v21) = *(v21 + 9);
          *(v16 + 2) = *(v18 - 8);
          *(v18 - 8) = v20;
          *(v18 - 7) = v22;
          *(v18 - 3) = v23;
          *(v18 - 1) = v21;
          *v18 = v17;
          v8 = v15 + 1;
          if (v15 + 1 < v7)
          {
            goto LABEL_4;
          }

          ++v15;
          break;
        }
      }

LABEL_17:
      *(v2 + v4) = v5;
      if (v15 < 0)
      {
        __break(1u);
        break;
      }

      if (*(v5 + 2) >= v15)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_20:
      v5 = sub_26D5291B4(v5);
      *(v2 + v4) = v5;
      v7 = *(v5 + 2);
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_21:
  v15 = 0;
  *(v2 + v4) = v5;
LABEL_22:

  sub_26D526904(v24, (v5 + 32), 0, (2 * v15) | 1);
  if (!v15)
  {
LABEL_25:
    *v3 = *(*(v2 + v4) + 16);
    return;
  }

  if (*(*(v2 + v4) + 16) >= v15)
  {
    sub_26D529518(0, v15);
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_26D52AA98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26D52AB00(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26D52AB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D52AC24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D52AC78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D52AC98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_26D52AD74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
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

void operator new()
{
    ;
  }
}