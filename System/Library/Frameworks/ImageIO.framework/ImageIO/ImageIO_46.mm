void sub_1861184E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TXMPMeta<std::string>::~TXMPMeta(va);
  _Unwind_Resume(a1);
}

void ExportPhotoData()
{
  __assert_rtn("ExportPhotoData", "ReconcileLegacy.cpp", 172, "psir != 0");
}

{
  __assert_rtn("ExportPhotoData", "ReconcileLegacy.cpp", 160, "exif != 0");
}

{
  __assert_rtn("ExportPhotoData", "ReconcileLegacy.cpp", 113, "(destFormat == kXMP_JPEGFile) || (destFormat == kXMP_TIFFFile) || (destFormat == kXMP_PhotoshopFile)");
}

BOOL AdobeXMPCore_Int::ErrorNotifierWrapperImpl_v1::Notify(uint64_t a1, void *a2)
{
  v5 = 0;
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8), *a2, &v5);
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  return !v3;
}

void *AdobeXMPCore_Int::CreateErrorNotifierWrapperImpl(void *result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

void AdobeXMPCore_Int::SharedMutexImpl::~SharedMutexImpl(AdobeXMPCore_Int::SharedMutexImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 8), off_1EF4DFD00);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 8), off_1EF4DFD00);

  JUMPOUT(0x186602850);
}

void sub_18611879C(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::SharedMutexImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SharedMutexImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::SharedMutexImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SharedMutexImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *AdobeXMPCore_Int::INameSpacePrefixMap_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x634E5350724D6170)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v6 = a3;
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634E5350724D6170, v6, exception);
      }

      return (this + *(*this - 48));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634E5350724D6170, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::INameSpacePrefixMap_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a4;
  *a1 = 0;
  v12 = (a2 + (a5 >> 1));
  if (a5)
  {
    v11 = *(*v12 + a4);
  }

  return (v11)(v12, a8, a9, a10, a11, a6, a7);
}

uint64_t AdobeXMPCore_Int::INameSpacePrefixMap_I::remove(AdobeXMPCore_Int::INameSpacePrefixMap_I *this, int a2, const char *a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v5 = this + *(*this - 48);
  v6 = AdobeXMPCore::INameSpacePrefixMap_v1::RemovePrefix;
  if (*(v5 + 3) == a2)
  {
    v6 = AdobeXMPCore::INameSpacePrefixMap_v1::RemoveNameSpace;
  }

  return AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(a5, v5, 0, v6, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INameSpacePrefixMap_I.cpp", 60, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::INameSpacePrefixMap_I::isPresent(AdobeXMPCore_Int::INameSpacePrefixMap_I *this, int a2, const char *a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v5 = this + *(*this - 48);
  v6 = AdobeXMPCore::INameSpacePrefixMap_v1::IsPrefixPresent;
  if (*(v5 + 3) == a2)
  {
    v6 = AdobeXMPCore::INameSpacePrefixMap_v1::IsNameSpacePresent;
  }

  return AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(a5, v5, 0, v6, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INameSpacePrefixMap_I.cpp", 68, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INameSpacePrefixMap_v1,unsigned int,BOOL,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::INameSpacePrefixMap_I::get(AdobeXMPCore_Int::INameSpacePrefixMap_I *this, int a2, const char *a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v6 = this + *(*this - 48);
  if (*(v6 + 3) == a2)
  {
    v7 = AdobeXMPCore::INameSpacePrefixMap_v1::GetPrefix;
  }

  else
  {
    v7 = AdobeXMPCore::INameSpacePrefixMap_v1::GetNameSpace;
  }

  return AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,char const*,unsigned long long>(a5, v6, v7, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INameSpacePrefixMap_I.cpp", 76, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_186119438(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18611941CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCore::INameSpacePrefixMap_v1*,AdobeXMPCore::INameSpacePrefixMap_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E5350724D6170, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_1861197A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18611978CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

double PerfUtils::GetElapsedSeconds(PerfUtils *this, uint64_t a2)
{
  if (dword_1EA8DBFAC)
  {
    v4 = *&PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sConversionFactor;
  }

  else
  {
    mach_timebase_info(&PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sTimebaseInfo);
    LODWORD(v6) = PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sTimebaseInfo;
    LODWORD(v5) = dword_1EA8DBFAC;
    v4 = v5 / v6 / 1000000000.0;
    PerfUtils::GetElapsedSeconds(unsigned long long,unsigned long long)::sConversionFactor = *&v4;
  }

  return v4 * (a2 - this);
}

double MD5Init(MD5_CTX *a1)
{
  *a1->count = 0;
  result = -3.59869635e230;
  *a1->state = xmmword_186228710;
  return result;
}

void *MD5Update(MD5_CTX *a1, unsigned __int8 *__src, unsigned int a3)
{
  v6 = (a1->count[0] >> 3) & 0x3F;
  *a1->count += __PAIR64__(a3 >> 29, 8 * a3);
  v7 = 64 - v6;
  if (64 - v6 <= a3)
  {
    memcpy(&a1->buffer[v6], __src, (64 - v6));
    MD5Transform(a1->state, a1->buffer);
    v9 = v6 ^ 0x7F;
    if ((v6 ^ 0x7F) >= a3)
    {
      v8 = 0;
    }

    else
    {
      do
      {
        MD5Transform(a1->state, &__src[v9 - 63]);
        v9 += 64;
      }

      while (v9 < a3);
      v8 = 0;
      v7 = v9 - 63;
    }
  }

  else
  {
    v7 = 0;
    v8 = v6;
  }

  return memcpy(&a1->buffer[v8], &__src[v7], a3 - v7);
}

int8x16_t MD5Transform(unsigned int *a1, const char *a2)
{
  v95 = vld4q_s8(a2);
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = vmovl_u8(*v95.val[0].i8);
  v6 = vmovl_u16(*v5.i8);
  v7 = vmovl_high_u8(v95.val[0]);
  v8 = vmovl_high_u8(v95.val[1]);
  v9 = vmovl_u8(*v95.val[1].i8);
  v10 = vorrq_s8(vshll_high_n_u16(v8, 8uLL), vmovl_high_u16(v7));
  v11 = vorrq_s8(vshll_n_u16(*v8.i8, 8uLL), vmovl_u16(*v7.i8));
  v12 = vorrq_s8(vshll_high_n_u16(v9, 8uLL), vmovl_high_u16(v5));
  v13 = vorrq_s8(vshll_n_u16(*v9.i8, 8uLL), v6);
  _Q3 = vmovl_u8(*v95.val[2].i8);
  _Q4 = vmovl_high_u8(v95.val[2]);
  __asm { SHLL2           V5.4S, V4.8H, #0x10 }

  v21 = vshll_n_s16(*_Q4.i8, 0x10uLL);
  __asm { SHLL2           V4.4S, V3.8H, #0x10 }

  v23 = vorrq_s8(v13, vshll_n_s16(*_Q3.i8, 0x10uLL));
  v24 = vorrq_s8(v11, v21);
  v25 = vmovl_high_u8(v95.val[3]);
  v26 = vmovl_u8(*v95.val[3].i8);
  v27 = vorrq_s8(v23, vshlq_n_s32(vmovl_u16(*v26.i8), 0x18uLL));
  HIDWORD(v28) = *a1 + (v3 & ~v2 | v4 & v2) + v27.i32[0] - 680876936;
  LODWORD(v28) = HIDWORD(v28);
  v29 = (v28 >> 25) + v2;
  HIDWORD(v28) = v3 + v27.i32[1] - 389564586 + (v29 & v2 | v4 & ~v29);
  LODWORD(v28) = HIDWORD(v28);
  v30 = (v28 >> 20) + v29;
  HIDWORD(v28) = v4 + v27.i32[2] + 606105819 + (v30 & v29 | v2 & ~v30);
  LODWORD(v28) = HIDWORD(v28);
  v31 = vorrq_s8(vorrq_s8(v12, _Q4), vshlq_n_s32(vmovl_high_u16(v26), 0x18uLL));
  v32 = (v28 >> 15) + v30;
  HIDWORD(v28) = v2 + v27.i32[3] - 1044525330 + (v32 & v30 | v29 & ~v32);
  LODWORD(v28) = HIDWORD(v28);
  v33 = (v28 >> 10) + v32;
  HIDWORD(v28) = v31.i32[0] + v29 - 176418897 + (v33 & v32 | v30 & ~v33);
  LODWORD(v28) = HIDWORD(v28);
  v34 = (v28 >> 25) + v33;
  HIDWORD(v28) = v31.i32[1] + v30 + 1200080426 + (v34 & v33 | v32 & ~v34);
  LODWORD(v28) = HIDWORD(v28);
  v35 = (v28 >> 20) + v34;
  HIDWORD(v28) = v31.i32[2] + v32 - 1473231341 + (v35 & v34 | v33 & ~v35);
  LODWORD(v28) = HIDWORD(v28);
  v36 = vorrq_s8(v24, vshlq_n_s32(vmovl_u16(*v25.i8), 0x18uLL));
  v37 = (v28 >> 15) + v35;
  HIDWORD(v28) = v31.i32[3] + v33 - 45705983 + (v37 & v35 | v34 & ~v37);
  LODWORD(v28) = HIDWORD(v28);
  v38 = (v28 >> 10) + v37;
  HIDWORD(v28) = v36.i32[0] + v34 + 1770035416 + (v38 & v37 | v35 & ~v38);
  LODWORD(v28) = HIDWORD(v28);
  v39 = (v28 >> 25) + v38;
  HIDWORD(v28) = v36.i32[1] + v35 - 1958414417 + (v39 & v38 | v37 & ~v39);
  LODWORD(v28) = HIDWORD(v28);
  v40 = (v28 >> 20) + v39;
  HIDWORD(v28) = v36.i32[2] + v37 - 42063 + (v40 & v39 | v38 & ~v40);
  LODWORD(v28) = HIDWORD(v28);
  result = vorrq_s8(vorrq_s8(v10, _Q5), vshlq_n_s32(vmovl_high_u16(v25), 0x18uLL));
  v42 = (v28 >> 15) + v40;
  HIDWORD(v28) = v36.i32[3] + v38 - 1990404162 + (v42 & v40 | v39 & ~v42);
  LODWORD(v28) = HIDWORD(v28);
  v43 = (v28 >> 10) + v42;
  HIDWORD(v28) = result.i32[0] + v39 + 1804603682 + (v43 & v42 | v40 & ~v43);
  LODWORD(v28) = HIDWORD(v28);
  v44 = (v28 >> 25) + v43;
  HIDWORD(v28) = result.i32[1] + v40 - 40341101 + (v44 & v43 | v42 & ~v44);
  LODWORD(v28) = HIDWORD(v28);
  v45 = (v28 >> 20) + v44;
  HIDWORD(v28) = result.i32[2] + v42 - 1502002290 + (v45 & v44 | v43 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v46 = (v28 >> 15) + v45;
  HIDWORD(v28) = result.i32[3] + v43 + 1236535329 + (v46 & v45 | v44 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v47 = (v28 >> 10) + v46;
  HIDWORD(v28) = v27.i32[1] + v44 - 165796510 + (v47 & v45 | v46 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v48 = (v28 >> 27) + v47;
  HIDWORD(v28) = v31.i32[2] + v45 - 1069501632 + (v48 & v46 | v47 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v49 = (v28 >> 23) + v48;
  HIDWORD(v28) = v36.i32[3] + v46 + 643717713 + (v49 & v47 | v48 & ~v47);
  LODWORD(v28) = HIDWORD(v28);
  v50 = (v28 >> 18) + v49;
  HIDWORD(v28) = v27.i32[0] + v47 - 373897302 + (v50 & v48 | v49 & ~v48);
  LODWORD(v28) = HIDWORD(v28);
  v51 = (v28 >> 12) + v50;
  HIDWORD(v28) = v31.i32[1] + v48 - 701558691 + (v51 & v49 | v50 & ~v49);
  LODWORD(v28) = HIDWORD(v28);
  v52 = (v28 >> 27) + v51;
  HIDWORD(v28) = v36.i32[2] + v49 + 38016083 + (v52 & v50 | v51 & ~v50);
  LODWORD(v28) = HIDWORD(v28);
  v53 = (v28 >> 23) + v52;
  HIDWORD(v28) = result.i32[3] + v50 - 660478335 + (v53 & v51 | v52 & ~v51);
  LODWORD(v28) = HIDWORD(v28);
  v54 = (v28 >> 18) + v53;
  HIDWORD(v28) = v31.i32[0] + v51 - 405537848 + (v54 & v52 | v53 & ~v52);
  LODWORD(v28) = HIDWORD(v28);
  v55 = (v28 >> 12) + v54;
  HIDWORD(v28) = v36.i32[1] + v52 + 568446438 + (v55 & v53 | v54 & ~v53);
  LODWORD(v28) = HIDWORD(v28);
  v56 = (v28 >> 27) + v55;
  HIDWORD(v28) = result.i32[2] + v53 - 1019803690 + (v56 & v54 | v55 & ~v54);
  LODWORD(v28) = HIDWORD(v28);
  v57 = (v28 >> 23) + v56;
  HIDWORD(v28) = v27.i32[3] + v54 - 187363961 + (v57 & v55 | v56 & ~v55);
  LODWORD(v28) = HIDWORD(v28);
  v58 = (v28 >> 18) + v57;
  HIDWORD(v28) = v36.i32[0] + v55 + 1163531501 + (v58 & v56 | v57 & ~v56);
  LODWORD(v28) = HIDWORD(v28);
  v59 = (v28 >> 12) + v58;
  HIDWORD(v28) = result.i32[1] + v56 - 1444681467 + (v59 & v57 | v58 & ~v57);
  LODWORD(v28) = HIDWORD(v28);
  v60 = (v28 >> 27) + v59;
  HIDWORD(v28) = v27.i32[2] + v57 - 51403784 + (v60 & v58 | v59 & ~v58);
  LODWORD(v28) = HIDWORD(v28);
  v61 = (v28 >> 23) + v60;
  HIDWORD(v28) = v31.i32[3] + v58 + 1735328473 + (v61 & v59 | v60 & ~v59);
  LODWORD(v28) = HIDWORD(v28);
  v62 = (v28 >> 18) + v61;
  HIDWORD(v28) = result.i32[0] + v59 - 1926607734 + (v62 & v60 | v61 & ~v60);
  LODWORD(v28) = HIDWORD(v28);
  v63 = (v28 >> 12) + v62;
  HIDWORD(v28) = v31.i32[1] + v60 - 378558 + (v63 ^ v62 ^ v61);
  LODWORD(v28) = HIDWORD(v28);
  v64 = (v28 >> 28) + v63;
  HIDWORD(v28) = v36.i32[0] + v61 - 2022574463 + (v63 ^ v62 ^ v64);
  LODWORD(v28) = HIDWORD(v28);
  v65 = (v28 >> 21) + v64;
  HIDWORD(v28) = v36.i32[3] + v62 + 1839030562 + (v64 ^ v63 ^ v65);
  LODWORD(v28) = HIDWORD(v28);
  v66 = (v28 >> 16) + v65;
  HIDWORD(v28) = result.i32[2] + v63 - 35309556 + (v65 ^ v64 ^ v66);
  LODWORD(v28) = HIDWORD(v28);
  v67 = (v28 >> 9) + v66;
  HIDWORD(v28) = v27.i32[1] + v64 - 1530992060 + (v66 ^ v65 ^ v67);
  LODWORD(v28) = HIDWORD(v28);
  v68 = (v28 >> 28) + v67;
  HIDWORD(v28) = v31.i32[0] + v65 + 1272893353 + (v67 ^ v66 ^ v68);
  LODWORD(v28) = HIDWORD(v28);
  v69 = (v28 >> 21) + v68;
  HIDWORD(v28) = v31.i32[3] + v66 - 155497632 + (v68 ^ v67 ^ v69);
  LODWORD(v28) = HIDWORD(v28);
  v70 = (v28 >> 16) + v69;
  HIDWORD(v28) = v36.i32[2] + v67 - 1094730640 + (v69 ^ v68 ^ v70);
  LODWORD(v28) = HIDWORD(v28);
  v71 = (v28 >> 9) + v70;
  HIDWORD(v28) = result.i32[1] + v68 + 681279174 + (v70 ^ v69 ^ v71);
  LODWORD(v28) = HIDWORD(v28);
  v72 = (v28 >> 28) + v71;
  HIDWORD(v28) = v27.i32[0] + v69 - 358537222 + (v71 ^ v70 ^ v72);
  LODWORD(v28) = HIDWORD(v28);
  v73 = (v28 >> 21) + v72;
  HIDWORD(v28) = v27.i32[3] + v70 - 722521979 + (v72 ^ v71 ^ v73);
  LODWORD(v28) = HIDWORD(v28);
  v74 = (v28 >> 16) + v73;
  HIDWORD(v28) = v31.i32[2] + v71 + 76029189 + (v73 ^ v72 ^ v74);
  LODWORD(v28) = HIDWORD(v28);
  v75 = (v28 >> 9) + v74;
  HIDWORD(v28) = v36.i32[1] + v72 - 640364487 + (v74 ^ v73 ^ v75);
  LODWORD(v28) = HIDWORD(v28);
  v76 = (v28 >> 28) + v75;
  HIDWORD(v28) = result.i32[0] + v73 - 421815835 + (v75 ^ v74 ^ v76);
  LODWORD(v28) = HIDWORD(v28);
  v77 = (v28 >> 21) + v76;
  HIDWORD(v28) = result.i32[3] + v74 + 530742520 + (v76 ^ v75 ^ v77);
  LODWORD(v28) = HIDWORD(v28);
  v78 = (v28 >> 16) + v77;
  HIDWORD(v28) = v27.i32[2] + v75 - 995338651 + (v77 ^ v76 ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v79 = (v28 >> 9) + v78;
  HIDWORD(v28) = v27.i32[0] + v76 - 198630844 + ((v79 | ~v77) ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v80 = (v28 >> 26) + v79;
  HIDWORD(v28) = v31.i32[3] + v77 + 1126891415 + ((v80 | ~v78) ^ v79);
  LODWORD(v28) = HIDWORD(v28);
  v81 = (v28 >> 22) + v80;
  HIDWORD(v28) = result.i32[2] + v78 - 1416354905 + ((v81 | ~v79) ^ v80);
  LODWORD(v28) = HIDWORD(v28);
  v82 = (v28 >> 17) + v81;
  HIDWORD(v28) = v31.i32[1] + v79 - 57434055 + ((v82 | ~v80) ^ v81);
  LODWORD(v28) = HIDWORD(v28);
  v83 = (v28 >> 11) + v82;
  HIDWORD(v28) = result.i32[0] + v80 + 1700485571 + ((v83 | ~v81) ^ v82);
  LODWORD(v28) = HIDWORD(v28);
  v84 = (v28 >> 26) + v83;
  HIDWORD(v28) = v27.i32[3] + v81 - 1894986606 + ((v84 | ~v82) ^ v83);
  LODWORD(v28) = HIDWORD(v28);
  v85 = (v28 >> 22) + v84;
  HIDWORD(v28) = v36.i32[2] + v82 - 1051523 + ((v85 | ~v83) ^ v84);
  LODWORD(v28) = HIDWORD(v28);
  v86 = (v28 >> 17) + v85;
  HIDWORD(v28) = v27.i32[1] + v83 - 2054922799 + ((v86 | ~v84) ^ v85);
  LODWORD(v28) = HIDWORD(v28);
  v87 = (v28 >> 11) + v86;
  HIDWORD(v28) = v36.i32[0] + v84 + 1873313359 + ((v87 | ~v85) ^ v86);
  LODWORD(v28) = HIDWORD(v28);
  v88 = (v28 >> 26) + v87;
  HIDWORD(v28) = result.i32[3] + v85 - 30611744 + ((v88 | ~v86) ^ v87);
  LODWORD(v28) = HIDWORD(v28);
  v89 = (v28 >> 22) + v88;
  HIDWORD(v28) = v31.i32[2] + v86 - 1560198380 + ((v89 | ~v87) ^ v88);
  LODWORD(v28) = HIDWORD(v28);
  v90 = (v28 >> 17) + v89;
  HIDWORD(v28) = result.i32[1] + v87 + 1309151649 + ((v90 | ~v88) ^ v89);
  LODWORD(v28) = HIDWORD(v28);
  v91 = (v28 >> 11) + v90;
  HIDWORD(v28) = v31.i32[0] + v88 - 145523070 + ((v91 | ~v89) ^ v90);
  LODWORD(v28) = HIDWORD(v28);
  v92 = (v28 >> 26) + v91;
  HIDWORD(v28) = v36.i32[3] + v89 - 1120210379 + ((v92 | ~v90) ^ v91);
  LODWORD(v28) = HIDWORD(v28);
  v93 = (v28 >> 22) + v92;
  HIDWORD(v28) = v27.i32[2] + v90 + 718787259 + ((v93 | ~v91) ^ v92);
  LODWORD(v28) = HIDWORD(v28);
  v94 = (v28 >> 17) + v93;
  HIDWORD(v28) = v36.i32[1] + v91 - 343485551 + ((v94 | ~v92) ^ v93);
  LODWORD(v28) = HIDWORD(v28);
  *a1 += v92;
  a1[1] = v94 + v2 + (v28 >> 11);
  a1[2] = v94 + v4;
  a1[3] = v93 + v3;
  return result;
}

double MD5Final(unsigned __int8 *a1, MD5_CTX *a2)
{
  v4 = 0;
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  do
  {
    *(v11 + v4 * 4) = a2->count[v4];
    ++v4;
  }

  while (v4 != 2);
  v5 = (a2->count[0] >> 3) & 0x3F;
  if (v5 >= 0x38)
  {
    v6 = 120;
  }

  else
  {
    v6 = 56;
  }

  MD5Update(a2, PADDING, v6 - v5);
  MD5Update(a2, v11, 8u);
  v7 = 0;
  v8 = a1 + 1;
  do
  {
    v9 = &a2->state[v7];
    *(v8 - 1) = *v9;
    v8[1] = *(v9 + 1);
    v8[2] = *(v9 + 3);
    ++v7;
    v8 += 4;
  }

  while (v7 != 4);
  *&a2->buffer[56] = 0;
  result = 0.0;
  *&a2->buffer[24] = 0u;
  *&a2->buffer[40] = 0u;
  *a2->count = 0u;
  *&a2->buffer[8] = 0u;
  *a2->state = 0u;
  return result;
}

void AdobeXMPCore_Int::SimpleNodeImpl::SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, const char *a3, AdobeXMPCore_Int *a4, const char *a5, const char *a6)
{
  *(this + 21) = &unk_1EF4E23D8;
  *this = &unk_1EF4E1C10;
  *(this + 4) = off_1EF4E1E80;
  *(this + unk_1EF4E1BC8) = &unk_1EF4E1EE0;
  *(this + 18) = &unk_1EF4E2EA0;
  *(this + 5) = &unk_1EF4E26A0;
  *this = &unk_1EF4E2B10;
  *(this + 4) = off_1EF4E2D30;
  *(this + 21) = &unk_1EF4E2E18;
  *(this + unk_1EF4E2478 + 40) = &unk_1EF4E2D90;
  *(this + *(*(this + 5) - 560) + 40) = &unk_1EF4E2E18;
  *this = &unk_1EF4E1108;
  *(this + unk_1EF4E10C8) = off_1EF4E1388;
  *(this + *(*this - 72)) = &unk_1EF4E1958;
  *(this + *(*this - 640)) = &unk_1EF4E1638;
  *(this + *(*this - 648)) = &unk_1EF4E18D0;
  *(this + *(*this - 656)) = &unk_1EF4E1958;
  *(this + 18) = off_1EF4E3AC8;
  *(this + 19) = 0;
  *this = off_1EF4E3B28;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 20) = 0;
  *(this + 21) = off_1EF4E3BB0;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((this + 40), off_1EF4E0DE8, a2, a3, a4, a5);
}

void sub_18611AB3C(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl(v3, off_1EF4E0DE8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF4E0E50);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4E0E38);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NodeImpl::~NodeImpl(AdobeXMPCore_Int::NodeImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 664)) = a2[1];
  *(this + *(*this - 544)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 72)) = a2[5];
  *(this + *(*this - 552)) = a2[6];
  *(this + *(*this - 560)) = a2[7];
  *(this + *(*this - 672)) = a2[8];
  *(this + *(*this - 680)) = a2[9];
  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

void AdobeXMPCore_Int::SimpleNodeImpl::GetValue(AdobeXMPCore_Int::SimpleNodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 704) + 8, 0);
  v4 = *(this + 2);
  *a2 = *(this + 1);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void AdobeXMPCore_Int::SimpleNodeImpl::SetValue(AdobeXMPCore_Int::SimpleNodeImpl *this, const char *a2)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 704) + 8, 1);
  (*(**(this + 1) + 56))(&v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  (*(*(this + *(*this - 688)) + 560))(this + *(*this - 688));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void sub_18611B04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::IsURIType(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 704) + 8, 0);
  v2 = *(this + 24);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::SetURIType(AdobeXMPCore_Int::SimpleNodeImpl *this, char a2)
{
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 704) + 8, 1);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  *(this + 24) = a2;
  return (*(*(this + *(*this - 688)) + 560))(this + *(*this - 688));
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::HasContent(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  v1 = this;
  memset(v3, 0, sizeof(v3));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v3, this + *(*this - 704) + 8, 0);
  LODWORD(v1) = (*(**(v1 + 1) + 184))(*(v1 + 1));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v3);
  return v1 ^ 1;
}

void sub_18611B220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::SimpleNodeImpl::ClearContents(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 704) + 8, 1);
  (*(**(this + 1) + 200))(*(this + 1));
  (*(*(this + *(*this - 688)) + 560))(this + *(*this - 688));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18611B314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::SimpleNodeImpl::CloneContents@<X0>(AdobeXMPCore_Int::SimpleNodeImpl *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a2 || (result = (*(**(this + 1) + 184))(*(this + 1)), !result) || !a3 && a4)
  {
    v10 = *this;
    v11 = *(this + *(*this - 688) + 16);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      v10 = *this;
    }

    v12 = *(this + *(v10 - 688) + 32);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 2);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::ISimpleNode_I::CreateSimpleNode();
  }

  *a5 = 0;
  a5[1] = 0;
  return result;
}

void sub_18611B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(AdobeXMPCore_Int::ThreadSafeImpl *this)
{
}

{

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((v2 + 40), off_1EF4E0DE8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 168), off_1EF4E0E50);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 144), off_1EF4E0E38);
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this)
{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(void *a1)
{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::SimpleNodeImpl::~SimpleNodeImpl(AdobeXMPCore_Int::SimpleNodeImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 680)) = a2[1];
  *(this + *(*this - 632)) = a2[2];
  *(this + *(*this - 544)) = a2[3];
  *(this + *(*this - 56)) = a2[4];
  *(this + *(*this - 64)) = a2[5];
  *(this + *(*this - 72)) = a2[6];
  *(this + *(*this - 640)) = a2[7];
  *(this + *(*this - 648)) = a2[8];
  *(this + *(*this - 656)) = a2[9];
  *(this + *(*this - 688)) = a2[10];
  *(this + *(*this - 696)) = a2[11];
  *(this + *(*this - 704)) = a2[12];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void sub_18611C0E0(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 688) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::SimpleNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SimpleNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::SimpleNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SimpleNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 688) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::SimpleNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SimpleNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *AdobeXMPCore_Int::UTF8StringImpl::append@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, const char *a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X8>)
{
  if (a2 && a3)
  {
    v6 = (this + 24);
    if (a3 == -1)
    {
      std::string::append(v6, a2);
    }

    else
    {
      std::string::append(v6, a2, a3);
    }
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a4);
}

void *AdobeXMPCore_Int::UTF8StringImpl::append@<X0>(std::string *this@<X0>, void *a2@<X1>, unint64_t a3@<X2>, std::string::size_type a4@<X3>, void *a5@<X8>)
{
  v13 = a3;
  if (a4 && *a2)
  {
    v9 = AdobeXMPCore_Int::ValidateSrcPosParameter(a2, &v13);
    v10 = (*(**a2 + 192))();
    if (v9 - v13 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v9 - v13;
    }

    std::string::append(this + 1, (v10 + v13), v11);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a5);
}

unint64_t AdobeXMPCore_Int::ValidateSrcPosParameter(void *a1, unint64_t *a2)
{
  result = (*(**a1 + 208))(*a1);
  v6 = result;
  if (*a2 > result)
  {
    v4 = 0;
    v5 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_18611C5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::UTF8StringImpl::assign@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = a3;
  if (a4 && *a2)
  {
    v9 = AdobeXMPCore_Int::ValidateSrcPosParameter(a2, &v13);
    v10 = (*(**a2 + 192))();
    if (v9 - v13 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v9 - v13;
    }

    MEMORY[0x186602530](a1 + 24, v10 + v13, v11);
  }

  else if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(a1, a5);
}

void *AdobeXMPCore_Int::UTF8StringImpl::insert@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, const char *a2@<X2>, std::string::size_type a3@<X1>, std::string::size_type a4@<X3>, void *a5@<X8>)
{
  __pos = a3;
  if (a2 && a4)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
    v9 = (this + 24);
    if (a4 == -1)
    {
      std::string::insert(v9, __pos, a2);
    }

    else
    {
      std::string::insert(v9, __pos, a2, a4);
    }
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a5);
}

unint64_t AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(AdobeXMPCore_Int::UTF8StringImpl *this, unint64_t *a2)
{
  result = (*(*this + 208))(this);
  v6 = result;
  if (*a2 > result)
  {
    v4 = 0;
    v5 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_18611C97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::UTF8StringImpl::insert@<X0>(std::string *this@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, std::string::size_type a5@<X4>, void *a6@<X8>)
{
  v15 = a4;
  v16 = a2;
  if (a5 && *a3)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &v16);
    v10 = AdobeXMPCore_Int::ValidateSrcPosParameter(a3, &v15);
    v11 = v16;
    v12 = (*(**a3 + 192))();
    if (v10 - v15 >= a5)
    {
      v13 = a5;
    }

    else
    {
      v13 = v10 - v15;
    }

    std::string::insert(this + 1, v11, (v12 + v15), v13);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a6);
}

void *AdobeXMPCore_Int::UTF8StringImpl::erase@<X0>(std::string *this@<X0>, std::string::size_type a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X8>)
{
  __pos = a2;
  if (a3)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
    std::string::erase(this + 1, __pos, a3);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a4);
}

void AdobeXMPCore_Int::UTF8StringImpl::resize(std::string *this, std::string::size_type a2)
{
  v4[0] = a2;
  if (a2 >= 0x7FFFFFFFFFFFFFF7)
  {
    v2 = 0;
    v3 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  std::string::resize(this + 1, a2, 0);
}

void *AdobeXMPCore_Int::UTF8StringImpl::replace@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, const char *a2@<X3>, std::string::size_type a3@<X1>, std::string::size_type a4@<X2>, std::string::size_type a5@<X4>, void *a6@<X8>)
{
  __pos = a3;
  if (a4 && a2 && a5)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
    v11 = (this + 24);
    if (a5 == -1)
    {
      std::string::replace(v11, __pos, a4, a2);
    }

    else
    {
      std::string::replace(v11, __pos, a4, a2, a5);
    }
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a6);
}

void *AdobeXMPCore_Int::UTF8StringImpl::replace@<X0>(std::string *this@<X0>, unint64_t a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, std::string::size_type a6@<X5>, void *a7@<X8>)
{
  v17 = a5;
  v18 = a2;
  if (a6 && a3 && *a4)
  {
    AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &v18);
    v12 = AdobeXMPCore_Int::ValidateSrcPosParameter(a4, &v17);
    v13 = v18;
    v14 = (*(**a4 + 192))();
    if (v12 - v17 >= a6)
    {
      v15 = a6;
    }

    else
    {
      v15 = v12 - v17;
    }

    std::string::replace(this + 1, v13, a3, (v14 + v17), v15);
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a7);
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::copy(std::string *this, char *a2, std::string::size_type a3, std::string::size_type a4)
{
  result = 0;
  __pos = a4;
  if (a2)
  {
    if (a3)
    {
      AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos);
      return std::string::copy(this + 1, a2, a3, __pos);
    }
  }

  return result;
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::find(const std::string *this, const char *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (a2 && a4)
  {
    return std::string::find(this + 1, a2, a3, a4);
  }

  else
  {
    return -1;
  }
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::find(const std::string *a1, void *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (!*a2)
  {
    return -1;
  }

  v8 = (*(**a2 + 208))(*a2);
  if (!a4 || !v8)
  {
    return -1;
  }

  v9 = (*(**a2 + 192))();

  return std::string::find(a1 + 1, v9, a3, a4);
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::rfind(const std::string *this, const char *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (a2 && a4)
  {
    return std::string::rfind(this + 1, a2, a3, a4);
  }

  else
  {
    return -1;
  }
}

std::string::size_type AdobeXMPCore_Int::UTF8StringImpl::rfind(const std::string *a1, void *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (!*a2)
  {
    return -1;
  }

  v8 = (*(**a2 + 208))(*a2);
  if (!a4 || !v8)
  {
    return -1;
  }

  v9 = (*(**a2 + 192))();

  return std::string::rfind(a1 + 1, v9, a3, a4);
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::compare(std::string *this, std::string::size_type a2, std::string::size_type a3, const char *a4, size_t a5)
{
  __pos1 = a2;
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, &__pos1);
  v9 = this + 1;
  if (a5 == -1)
  {
    return std::string::compare(v9, __pos1, a3, a4);
  }

  v10 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
  if ((v10 & 0x8000000000000000) != 0)
  {
    size = this[1].__r_.__value_.__l.__size_;
    v11 = size >= __pos1;
    v12 = size - __pos1;
    if (!v11)
    {
LABEL_26:
      std::string::__throw_out_of_range[abi:fe200100]();
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }

    v9 = v9->__r_.__value_.__r.__words[0];
  }

  else
  {
    v11 = v10 >= __pos1;
    v12 = v10 - __pos1;
    if (!v11)
    {
      goto LABEL_26;
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }
  }

  if (v12 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v12;
  }

  if (v12 < a5)
  {
    v16 = -1;
  }

  else
  {
    v16 = v12 > a5;
  }

  LODWORD(result) = memcmp(v9 + __pos1, a4, v15);
  if (result)
  {
    return result;
  }

  else
  {
    return v16;
  }
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::compare(uint64_t a1, unint64_t a2, size_t a3, void *a4, unint64_t a5, size_t a6)
{
  v20 = a5;
  v21 = a2;
  if (!*a4)
  {
    return 0xFFFFFFFFLL;
  }

  AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(a1, &v21);
  AdobeXMPCore_Int::ValidateSrcPosParameter(a4, &v20);
  v10 = (a1 + 24);
  v11 = v21;
  v12 = (*(**a4 + 192))();
  v13 = *(a1 + 47);
  if ((v13 & 0x8000000000000000) != 0)
  {
    if (a6 == -1 || (v17 = *(a1 + 32), v14 = v17 >= v11, v15 = v17 - v11, !v14))
    {
LABEL_26:
      std::string::__throw_out_of_range[abi:fe200100]();
    }

    if (v15 >= a3)
    {
      v15 = a3;
    }

    v10 = *v10;
  }

  else
  {
    if (a6 == -1)
    {
      goto LABEL_26;
    }

    v14 = v13 >= v11;
    v15 = v13 - v11;
    if (!v14)
    {
      goto LABEL_26;
    }

    if (v15 >= a3)
    {
      v15 = a3;
    }
  }

  if (v15 >= a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = v15;
  }

  if (v15 < a6)
  {
    v19 = -1;
  }

  else
  {
    v19 = v15 > a6;
  }

  LODWORD(result) = memcmp(v10 + v11, (v12 + v20), v18);
  if (result)
  {
    return result;
  }

  else
  {
    return v19;
  }
}

void AdobeXMPCore_Int::UTF8StringImpl::substr(AdobeXMPCore_Int::UTF8StringImpl *this, unint64_t a2)
{
  v4[0] = a2;
  AdobeXMPCore_Int::UTF8StringImpl::ValidatePosParameter(this, v4);
  (*(*this + 192))(this);
  (*(*this + 208))(this);
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_18611D430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __cxa_begin_catch(a1);
  a11 = 0;
  a12 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

BOOL AdobeXMPCore_Int::UTF8StringImpl::empty(AdobeXMPCore_Int::UTF8StringImpl *this)
{
  v1 = *(this + 47);
  if (v1 < 0)
  {
    v1 = *(this + 4);
  }

  return v1 == 0;
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::clear(uint64_t this)
{
  if (*(this + 47) < 0)
  {
    **(this + 24) = 0;
    *(this + 32) = 0;
  }

  else
  {
    *(this + 24) = 0;
    *(this + 47) = 0;
  }

  return this;
}

void virtual thunk toAdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl(AdobeXMPCore_Int::UTF8StringImpl *this)
{
  v2 = (v1 + 56);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4E4150);
}

{
  AdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl((this + *(*this - 24)));
}

void sub_18611D6DC(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v2 + *(*v2 - 448) + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::UTF8StringImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::UTF8StringImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::UTF8StringImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::UTF8StringImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_2_19(uint64_t a1@<X8>)
{
  *v1 = a1;
  *v4 = v1 + 1;
  *v2 = v3 + 8;
  v1[1] = *(v3 + 8);
}

void AdobeXMPCore_Int::UTF8StringImpl::resize()
{
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_0_39(v1);
  (*(v3 + 120))(v2, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/UTF8StringImpl.cpp", 112);
  v4 = OUTLINED_FUNCTION_0_39(*v0);
  (*(v5 + 112))(v4, "failed to allocate required memory", -1);
  v6 = *v0;
  if (*v0)
  {
    v6 = (v6 + *(*v6 - 304));
  }

  OUTLINED_FUNCTION_2_19(v6);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void AdobeXMPCore_Int::UTF8StringImpl::substr()
{
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_0_39(v1);
  (*(v3 + 120))(v2, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/UTF8StringImpl.cpp", 203);
  v4 = OUTLINED_FUNCTION_0_39(*v0);
  (*(v5 + 112))(v4, "failed to allocate required memory", -1);
  v6 = *v0;
  if (*v0)
  {
    v6 = (v6 + *(*v6 - 304));
  }

  OUTLINED_FUNCTION_2_19(v6);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void AdobeXMPCore_Int::DOMSerializerImpl::DOMSerializerImpl(AdobeXMPCore_Int::DOMSerializerImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 344)) = a2[1];
  *(this + *(*this - 288)) = a2[2];
  *(this + *(*this - 216)) = a2[3];
  *(this + *(*this - 224)) = a2[4];
  *(this + *(*this - 232)) = a2[5];
  *(this + *(*this - 296)) = a2[6];
  *(this + *(*this - 304)) = a2[7];
  *(this + *(*this - 352)) = a2[8];
  *(this + *(*this - 360)) = a2[9];
  AdobeXMPCore_Int::ISharedMutex::CreateSharedMutex();
}

uint64_t AdobeXMPCore_Int::DOMSerializerImpl::GetMutex@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::DOMSerializerImpl::GetMutex@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this + *(*this - 280);
  v4 = *(v2 + 1);
  v3 = *(v2 + 2);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AdobeXMPCore_Int::DOMSerializerImpl::Clone(AdobeXMPCore_Int::DOMSerializerImpl *this)
{
  v3 = (*(*this + 288))(this);
  if (v3)
  {
    memset(v15, 0, sizeof(v15));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v15, this + 8, 0);
    v4 = *this;
    v5 = (*this - 352);
    v6 = *v3;
    v3[*(v6 - 352) + 48] = *(this + *v5 + 48);
    v3[*(v6 - 352) + 49] = *(this + *v5 + 49);
    if (*(this + *v5 + 32))
    {
      operator new();
    }

    if (*(this + *(v4 - 352) + 40))
    {
      operator new();
    }

    v7 = this + *(v4 - 352);
    v8 = *(v7 + 1);
    v9 = v7 + 16;
    if (v8 != v7 + 16)
    {
      do
      {
        v10 = *(*v3 - 352);
        v16 = v8 + 32;
        v11 = std::__tree<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v3[v10 + 8], v8 + 4, &std::piecewise_construct, &v16);
        *(v11 + 10) = *(v8 + 10);
        v11[6] = *(v8 + 6);
        v12 = *(v8 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v8 + 2);
            v14 = *v13 == v8;
            v8 = v13;
          }

          while (!v14);
        }

        v8 = v13;
      }

      while (v13 != v9);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v15);
  }

  AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::DOMSerializerImpl>(v3, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/DOMSerializerImpl.cpp", 46, 1, v15);
}

void sub_18611E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x186602850](v3, 0x1020C4062D53EE8);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::DOMSerializerImpl>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1 || !a4)
  {
    (**&a1[*(*a1 - 360)])(&a1[*(*a1 - 360)], a2, a3, a4);

    std::shared_ptr<AdobeXMPCore_Int::DOMSerializerImpl>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::DOMSerializerImpl,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(a5, a1, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18611E224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_18611E430(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 360) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMSerializerImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMSerializerImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 360) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::DOMSerializerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::DOMSerializerImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_18611E624(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *std::string::basic_string[abi:fe200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void *AdobeXMPCore_Int::ICoreObjectFactory_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x6E4F626A46616374)
  {
    if (a3 != 1)
    {
      v5 = a3;
      exception = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6E4F626A46616374, v5, exception);
    }

    v4 = -64;
    return (this + *(*this + v4));
  }

  if (a2 == 0x634F626A46616374)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v9 = a3;
        v10 = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634F626A46616374, v9, v10);
      }

      v4 = -216;
      return (this + *(*this + v4));
    }
  }

  else
  {
    if (a4)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634F626A46616374, a2, v8);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ICoreObjectFactory_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CompositeNodeImpl::GetNodeTypeAtPath(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  (*(*a1 + 512))(&v3);
  if (v3)
  {
    v1 = (*(*v3 + 40))(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  return v1;
}

void sub_18611EC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CompositeNodeImpl::GetNodeAtPath(char *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    (**&a1[*(*a1 - 744)])(&a1[*(*a1 - 744)]);
    std::shared_ptr<AdobeXMPCore_Int::CompositeNodeImpl>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::CompositeNodeImpl,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,0>(&v4, a1, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_18611F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a24);
  }

  v30 = *(v28 - 104);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (*v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CompositeNodeImpl::InsertNodeAtPath()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18611FB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CompositeNodeImpl::ReplaceNodeAtPath()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18611FCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CompositeNodeImpl::RemoveNodeAtPath(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  (*(*a1 + 512))(a1);
  if (!*a2)
  {
    return;
  }

  v3 = (*(**a2 + 280))(*a2);
  v4 = (*(*v3 + 528))(v3);
  v5 = (*(*v4 + 280))(v4);
  if ((*(**a2 + 168))())
  {
    (*(*(v5 + *(*v5 - 544)) + 240))(&v22);
    v6 = (*(*v22 + 688))(v22);
    (*(**a2 + 88))(&v20);
    (*(**a2 + 72))(&v18);
    (*(*v6 + 744))(&v23, v6, &v20, &v18);
    v7 = v23;
    v23 = 0uLL;
    v8 = a2[1];
    *a2 = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v8);
      if (*(&v23 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
      }
    }

    v9 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    goto LABEL_19;
  }

  if ((*(**a2 + 160))())
  {
    v23 = 0uLL;
    (*(*(v5 + *(*v5 - 544)) + 248))(&v23);
    v10 = v23;
    v11 = (*(**a2 + 176))();
    (*(*v10 + 680))(&v22, v10, v11);
    v12 = v22;
    v22 = 0uLL;
    v13 = a2[1];
    *a2 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v22 + 1));
      }
    }

    v14 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      goto LABEL_22;
    }

    return;
  }

  (*(*(v5 + *(*v5 - 544)) + 240))(&v23);
  v15 = (*(*v23 + 688))(v23);
  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
  }

  (*(**a2 + 88))(&v22);
  (*(**a2 + 72))(&v20);
  (*(*v15 + 744))(&v23, v15, &v22, &v20);
  v16 = v23;
  v23 = 0uLL;
  v17 = a2[1];
  *a2 = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    v9 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v21);
  }

  v14 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }
}

void sub_1861201C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::CompositeNodeImpl::CheckSuitabilityToBeUsedAsChildNode(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = 0;
    v4 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if ((*(**a2 + 48))(*a2))
  {
    v3 = 0;
    v4 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return 1;
}

void sub_18612056C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::INode_I::GetSimpleQualifier(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  (*(*a1 + 512))(&v3);
  if (v3)
  {
    (*(*v3 + 232))(v3);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }
}

void sub_186120634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCommon::IUTF8String_v1::compare(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 208))(a1);
  v5 = (*(**a2 + 208))();
  v6 = *(*a1 + 168);

  return v6(a1, 0, v4, a2, 0, v5);
}

void sub_18612078C(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 744) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::CompositeNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CompositeNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CompositeNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CompositeNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 744) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CompositeNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CompositeNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t Host_IO::Writable(Host_IO *this, const char *a2)
{
  v2 = a2;
  memset(&v11, 0, sizeof(v11));
  if (stat(this, &v11))
  {
    if (!v2)
    {
      return 1;
    }

    memset(&v11, 0, 24);
    std::string::basic_string[abi:fe200100]<0>(&v11, this);
    v5 = std::string::rfind(&v11, 47, 0xFFFFFFFFFFFFFFFFLL);
    if (v5 == -1)
    {
      MEMORY[0x186602520](&v11, ".");
    }

    else
    {
      if (v5)
      {
        std::string::basic_string(&v10, &v11, 0, v5, &v12);
      }

      else
      {
        std::string::basic_string(&v10, &v11, 0, 1uLL, &v12);
      }

      if (SHIBYTE(v11.st_gid) < 0)
      {
        operator delete(*&v11.st_dev);
      }

      *&v11.st_dev = *&v10.__r_.__value_.__l.__data_;
      *&v11.st_uid = *(&v10.__r_.__value_.__l + 2);
    }

    if ((v11.st_gid & 0x80000000) == 0)
    {
      v8 = &v11;
    }

    else
    {
      v8 = *&v11.st_dev;
    }

    v7 = Host_IO::Writable(v8, 1);
  }

  else
  {
    if (Host_IO::GetFileMode(this, v4) - 1 > 1)
    {
      return 0;
    }

    std::string::basic_string[abi:fe200100]<0>(&v11, this);
    if ((v11.st_gid & 0x80000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = *&v11.st_dev;
    }

    v7 = access(v6, 2) == 0;
  }

  if (SHIBYTE(v11.st_gid) < 0)
  {
    operator delete(*&v11.st_dev);
  }

  return v7;
}

void sub_186120A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Host_IO::GetFileMode(Host_IO *this, const char *a2)
{
  memset(&v6, 0, sizeof(v6));
  if (stat(this, &v6))
  {
    return 0;
  }

  else
  {
    v3 = v6.st_mode & 0xF000;
    if (v3 == 0x4000)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    if (v3 == 0x8000)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }
}

BOOL Host_IO::Create(Host_IO *this, const char *a2)
{
  memset(&v9, 0, sizeof(v9));
  v4 = stat(this, &v9);
  if (!v4)
  {
    if (Host_IO::GetFileMode(this, v3) == 1)
    {
      return v4 != 0;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v8 = "Host_IO::Create, path exists but is not a file";
LABEL_8:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  v5 = open(this, 2562, 420);
  if (v5 == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v8 = "Host_IO::Create, cannot create file";
    goto LABEL_8;
  }

  close(v5);
  return v4 != 0;
}

uint64_t Host_IO::GetModifyDate(const char *a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  if (stat(a1, &v7))
  {
    return 0;
  }

  v5 = v7.st_mode & 0xF000;
  if (v5 != 0x8000 && v5 != 0x4000)
  {
    return 0;
  }

  v3 = 1;
  if (a2)
  {
    memset(&v8, 0, sizeof(v8));
    gmtime_r(&v7.st_mtimespec.tv_sec, &v8);
    *a2 = vrev64_s32(vadd_s32(*&v8.tm_mon, 0x76C00000001));
    *(a2 + 24) = 1;
    v6 = vrev64q_s32(*&v8.tm_sec);
    *(a2 + 8) = vextq_s8(v6, v6, 8uLL);
    *(a2 + 36) = 0;
    *(a2 + 25) = 257;
    *(a2 + 27) = 0;
    *(a2 + 35) = 0;
  }

  return v3;
}

uint64_t *Host_IO::CreateTemp@<X0>(std::string *__return_ptr a1@<X8>, Host_IO *this@<X0>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  ConjureDerivedPath(this, a1);
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!a1->__r_.__value_.__l.__size_)
    {
      goto LABEL_12;
    }

    v3 = a1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v3 = a1;
    if (!*(&a1->__r_.__value_.__s + 23))
    {
LABEL_12:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      exception[1] = "Host_IO::CreateTemp, cannot create temp file path";
      *(exception + 16) = 0;
    }
  }

  memset(&v8, 0, sizeof(v8));
  if (!stat(v3, &v8))
  {
    __assert_rtn("CreateTemp", "Host_IO-POSIX.cpp", 194, "! Host_IO::Exists(tempPath.c_str())");
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__r_.__value_.__r.__words[0];
  }

  return Host_IO::Create(v5, v4);
}

void sub_186120DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double ConjureDerivedPath@<D0>(char *__s@<X0>, std::string *a2@<X8>)
{
  memset(&v11, 0, sizeof(v11));
  std::string::basic_string[abi:fe200100]<0>(&v11, __s);
  std::string::append(&v11, "._nn_");
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v11;
  }

  else
  {
    v4 = v11.__r_.__value_.__r.__words[0];
  }

  v5 = v4 + strlen(__s);
  v6 = 48;
  while (2)
  {
    *(v5 + 2) = v6;
    v7 = 48;
    do
    {
      *(v5 + 3) = v7;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v11;
      }

      else
      {
        v8 = v11.__r_.__value_.__r.__words[0];
      }

      memset(&v12, 0, sizeof(v12));
      if (stat(v8, &v12))
      {
        result = *&v11.__r_.__value_.__l.__data_;
        *a2 = v11;
        return result;
      }

      v9 = v7++ > 0x38;
    }

    while (!v9);
    v9 = v6++ > 0x38;
    if (!v9)
    {
      continue;
    }

    break;
  }

  std::string::basic_string[abi:fe200100]<0>(a2, "");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return result;
}

void sub_186120ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Host_IO::Open(Host_IO *this, const char *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = open(this, 0, 432);
  }

  else
  {
    v3 = open(this, 2, 432);
  }

  v4 = v3;
  if (v3 == -1)
  {
    v5 = *__error();
    if (v5 == 2)
    {
      return v4;
    }

    if (v5 == 13)
    {
LABEL_12:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 112;
      v8 = "Host_IO::Open, file permission error";
      goto LABEL_15;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v8 = "Host_IO::Open, other failure";
LABEL_15:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  if (v2)
  {
    return v4;
  }

  memset(&v9, 0, sizeof(v9));
  if (fstat(v3, &v9) == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v8 = "Host_IO::Open, fstat failed.";
    goto LABEL_15;
  }

  if ((v9.st_mode & 0x80) == 0)
  {
    goto LABEL_12;
  }

  return v4;
}

uint64_t Host_IO::Close(uint64_t this)
{
  if (this != -1)
  {
    this = close(this);
    if (this)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      exception[1] = "Host_IO::Close, close failure";
      *(exception + 16) = 0;
    }
  }

  return this;
}

void Host_IO::SwapData(std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2, const char *a3)
{
  memset(&v12, 0, sizeof(v12));
  ConjureDerivedPath(this, &v12);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v12.__r_.__value_.__s + 23))
    {
      v5 = &v12;
      goto LABEL_6;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Cannot create temp file path";
    *(exception + 16) = 0;
  }

  if (!v12.__r_.__value_.__l.__size_)
  {
    goto LABEL_17;
  }

  v5 = v12.__r_.__value_.__r.__words[0];
LABEL_6:
  memset(&v13, 0, sizeof(v13));
  if (!stat(v5, &v13))
  {
    __assert_rtn("SwapData", "Host_IO-POSIX.cpp", 257, "! Host_IO::Exists(thirdPath.c_str())");
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  Host_IO::Rename(this, v7, v6);
  Host_IO::Rename(a2, this, v8);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  Host_IO::Rename(v10, a2, v9);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_18612118C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const std::__fs::filesystem::path *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  Host_IO::Rename(v15, v16, v17);
  if (a15 >= 0)
  {
    v19 = &a10;
  }

  else
  {
    v19 = a10;
  }

  Host_IO::Rename(v19, v15, v18);
  __cxa_rethrow();
}

void sub_1861211C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_end_catch();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1861211CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const std::__fs::filesystem::path *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  if (a15 >= 0)
  {
    v17 = &a10;
  }

  else
  {
    v17 = a10;
  }

  Host_IO::Rename(v17, v15, v16);
  __cxa_rethrow();
}

void sub_1861211F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_end_catch();
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void Host_IO::Rename(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2, const char *a3)
{
  memset(&v9, 0, sizeof(v9));
  if (!stat(a2, &v9))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v8 = "Host_IO::Rename, new path exists";
    goto LABEL_6;
  }

  rename(this, a2, v5);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v8 = "Host_IO::Rename, rename failure";
LABEL_6:
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

uint64_t Host_IO::Delete(Host_IO *this, const char *a2)
{
  result = Host_IO::GetFileMode(this, a2);
  if (result > 1)
  {
    if (result == 2)
    {
      result = rmdir(this);
      if (!result)
      {
        return result;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v5 = "Host_IO::Delete, rmdir failure";
    }

    else
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v5 = "Host_IO::Delete, can't delete 'other' file";
    }

LABEL_10:
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  if (result)
  {
    result = unlink(this);
    if (result)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v5 = "Host_IO::Delete, unlink failure";
      goto LABEL_10;
    }
  }

  return result;
}

off_t Host_IO::Seek(int a1, off_t a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v5 = "Host_IO::Seek, Invalid seek mode";
    goto LABEL_6;
  }

  result = lseek(a1, a2, a3);
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v5 = "Host_IO::Seek, lseek failure";
LABEL_6:
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return result;
}

ssize_t Host_IO::Read(Host_IO *this, void *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v5 = "Host_IO::Read, request too large";
    goto LABEL_6;
  }

  result = read(this, a2, a3);
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 114;
    v5 = "Host_IO::Read, read failure";
LABEL_6:
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return result;
}

ssize_t Host_IO::Write(Host_IO *this, const void *a2, size_t __nbyte)
{
  if ((__nbyte & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v6 = "Host_IO::Write, request too large";
    goto LABEL_8;
  }

  v3 = __nbyte;
  result = write(this, a2, __nbyte);
  if (result != v3)
  {
    v7 = *__error();
    exception = __cxa_allocate_exception(0x18uLL);
    if (v7 == 28)
    {
      *exception = 113;
      v6 = "Host_IO::Write, disk full";
    }

    else
    {
      *exception = 115;
      v6 = "Host_IO::Write, write failure";
    }

LABEL_8:
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return result;
}

off_t Host_IO::Length(Host_IO *this)
{
  v1 = this;
  v2 = lseek(this, 0, 1);
  v3 = lseek(v1, 0, 2);
  if (v2 == -1 || v3 == -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    exception[1] = "Host_IO::Length, lseek failure";
    *(exception + 16) = 0;
  }

  v5 = v3;
  lseek(v1, v2, 0);
  return v5;
}

uint64_t Host_IO::SetEOF(Host_IO *this, off_t a2)
{
  result = ftruncate(this, a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    exception[1] = "Host_IO::SetEOF, ftruncate failure";
    *(exception + 16) = 0;
  }

  return result;
}

void *AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x63436D704E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v8 = a3;
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63436D704E6F6465, v8, exception);
      }

      return (this + *(*this - 688));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::INode_I::GetInterfacePointerInternal((this + *(*this - 696)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63436D704E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointer(AdobeXMPCore_Int::ICompositeNode_I *this, uint64_t a2, uint64_t a3)
{
  return AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ICompositeNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::ICompositeNode_I::getInterfacePointer(AdobeXMPCore_Int::ICompositeNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::ICompositeNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::ICompositeNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::getNodeTypeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, const AdobeXMPCore::IPath_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::IPath_v1::MakeShared(&v9, a2, a2);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::ICompositeNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a3, this + v5, 0, AdobeXMPCore::ICompositeNode_v1::GetNodeTypeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 57, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_186121A48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::ICompositeNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return (a4)(v8, a8, a3);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::getNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, const AdobeXMPCore::IPath_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::IPath_v1::MakeShared(&v9, a2, a2);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a3, this + v5, AdobeXMPCore::ICompositeNode_v1::GetNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 64, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_186121C9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_186121E50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186121E34);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::ICompositeNode_I::appendNode(AdobeXMPCore_Int::ICompositeNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::INode_v1::MakeShared(&v6, a2, a2);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::ICompositeNode_v1::AppendNode, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 69, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

void sub_186122098(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

void AdobeXMPCore_Int::ICompositeNode_I::insertNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCore::IPath_v1 *a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 688);
  AdobeXMPCore::INode_v1::MakeShared(&v10, a2, a2);
  AdobeXMPCore::IPath_v1::MakeShared(&v12, a3, v8);
  v9 = v12;
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a4, this + v7, AdobeXMPCore::ICompositeNode_v1::InsertNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 74, &v10, &v9);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v9 + 1));
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }
}

void sub_1861222F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ICompositeNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::replaceNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCore::IPath_v1 *a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 688);
  AdobeXMPCore::INode_v1::MakeShared(&v12, a2, a2);
  AdobeXMPCore::IPath_v1::MakeShared(&v14, a3, v8);
  v11 = v14;
  v9 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a4, this + v7, AdobeXMPCore::ICompositeNode_v1::ReplaceNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 79, &v12, &v11);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v11 + 1));
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  return v9;
}

void sub_18612257C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_186122720(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186122704);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::ICompositeNode_I::removeNodeAtPath(AdobeXMPCore_Int::ICompositeNode_I *this, const AdobeXMPCore::IPath_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 688);
  AdobeXMPCore::IPath_v1::MakeShared(&v9, a2, a2);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::IPath_v1 const> const&>(a3, this + v5, AdobeXMPCore::ICompositeNode_v1::RemoveNodeAtPath, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ICompositeNode_I.cpp", 84, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_1861229A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ICompositeNode_v1,AdobeXMPCore::INodeIterator_v1 *,AdobeXMPCore::INodeIterator_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E6F6465497420, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186122BD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186122BBCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t UTF8_to_UTF16Nat(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 < 0)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v21 = 0;
            v19 = 0;
            v20 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, &v21, &v20);
            v17 = v20;
            if (!v20)
            {
              goto LABEL_22;
            }

            result = v21;
            if (HIWORD(v21))
            {
              result = CodePoint_to_UTF16Nat_Surrogate(v21, a3, v11, &v19);
              v18 = v19;
              if (!v19)
              {
                goto LABEL_22;
              }

              v17 = v20;
            }

            else
            {
              *a3 = v21;
              v18 = 1;
            }

            v13 += v17;
            v11 -= v18;
            a3 += v18;
            v10 -= v17;
            if (!v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_22:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int8 *UTF8_to_UTF32Nat(unsigned __int8 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0x80000000) != 0)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v19 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, a3, &v19);
            if (!v19)
            {
              v11 = v17;
              goto LABEL_25;
            }

            v10 -= v19;
            v13 += v19;
            v11 = v17 - 1;
            ++a3;
            if (v10)
            {
              v18 = v17 == 1;
            }

            else
            {
              v18 = 1;
            }

            --v17;
            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t UTF16Nat_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a4;
  v11 = a2;
  if (a2)
  {
    v10 = a4;
    v11 = a2;
    if (a4)
    {
      v13 = result;
      v11 = a2;
      v10 = a4;
      do
      {
        v14 = 0;
        if (v11 >= v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 > 0x7F)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v10 -= v14;
        v11 -= v14;
        if (v11 && v10)
        {
          do
          {
            v20 = 0;
            result = *v13;
            if (result < 0x80 || (result & 0xF800) == 55296)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v10, &v20);
            if (!v20)
            {
              goto LABEL_28;
            }

            v10 -= v20;
            ++v13;
            a3 += v20;
            if (!--v11)
            {
              break;
            }
          }

          while (v10);
        }

        for (; v11 && v10; v11 -= v20)
        {
          v19 = 0;
          v20 = 0;
          v18 = 0;
          if (*v13 - 57344 <= 0xFFFFF7FF)
          {
            break;
          }

          result = CodePoint_from_UTF16Nat_Surrogate(v13, v11, &v19, &v20);
          if (!v20)
          {
            goto LABEL_28;
          }

          result = CodePoint_to_UTF8_Multi(v19, a3, v10, &v18);
          if (!v18)
          {
            goto LABEL_28;
          }

          v13 += v20;
          v10 -= v18;
          a3 += v18;
        }
      }

      while (v11 && v10);
    }
  }

LABEL_28:
  *a5 = a2 - v11;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Nat_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (*v13 <= 0x7Fu)
        {
          *a3++ = *v13++;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v16 = 0;
            result = *v13;
            if (result <= 0x7F)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v11, &v16);
            if (!v16)
            {
              goto LABEL_18;
            }

            v11 -= v16;
            ++v13;
            a3 += v16;
            if (!--v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_18:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t CodePoint_to_UTF16Nat(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    v5 = 0;
LABEL_10:
    *a4 = v5;
    return result;
  }

  if (result >> 11 <= 0x1A)
  {
LABEL_9:
    *a2 = result;
    v5 = 1;
    goto LABEL_10;
  }

  if (!WORD1(result))
  {
    if (result >> 13 <= 6)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Bad UTF-32 - surrogate code point";
      *(exception + 16) = 0;
    }

    goto LABEL_9;
  }

  return CodePoint_to_UTF16Nat_Surrogate(result, a2, a3, a4);
}

uint64_t CodePoint_to_UTF16Swp(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    v5 = 0;
LABEL_10:
    *a4 = v5;
    return result;
  }

  if (result >> 11 <= 0x1A)
  {
LABEL_9:
    *a2 = bswap32(result) >> 16;
    v5 = 1;
    goto LABEL_10;
  }

  if (!WORD1(result))
  {
    if (result >> 13 <= 6)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Bad UTF-32 - surrogate code point";
      *(exception + 16) = 0;
    }

    goto LABEL_9;
  }

  return CodePoint_to_UTF16Swp_Surrogate(result, a2, a3, a4);
}

unsigned __int16 *CodePoint_from_UTF16Nat(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if (a2)
  {
    v4 = *result;
    if ((v4 & 0xF800) == 0xD800)
    {
      return CodePoint_from_UTF16Nat_Surrogate(result, a2, a3, a4);
    }

    *a3 = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  return result;
}

unsigned __int16 *CodePoint_from_UTF16Swp(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if (a2)
  {
    v4 = bswap32(*result);
    if (v4 >> 27 == 27)
    {
      return CodePoint_from_UTF16Swp_Surrogate(result, a2, a3, a4);
    }

    *a3 = HIWORD(v4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  return result;
}

uint64_t UTF8_to_UTF16Swp(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 < 0)
          {
            break;
          }

          *a3++ = v16 << 8;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v21 = 0;
            v19 = 0;
            v20 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, &v21, &v20);
            v17 = v20;
            if (!v20)
            {
              goto LABEL_22;
            }

            result = v21;
            if (HIWORD(v21))
            {
              result = CodePoint_to_UTF16Swp_Surrogate(v21, a3, v11, &v19);
              v18 = v19;
              if (!v19)
              {
                goto LABEL_22;
              }

              v17 = v20;
            }

            else
            {
              *a3 = bswap32(v21) >> 16;
              v18 = 1;
            }

            v13 += v17;
            v11 -= v18;
            a3 += v18;
            v10 -= v17;
            if (!v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_22:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int8 *UTF8_to_UTF32Swp(unsigned __int8 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if (v16 < 0)
          {
            break;
          }

          *a3++ = v16 << 24;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v21 = 0;
            v20 = 0;
            if ((*v13 & 0x80000000) == 0)
            {
              break;
            }

            result = CodePoint_from_UTF8_Multi(v13, v10, &v20, &v21);
            v18 = v21;
            if (!v21)
            {
              v11 = v17;
              goto LABEL_25;
            }

            *a3++ = bswap32(v20);
            v10 -= v18;
            v13 += v18;
            v11 = v17 - 1;
            if (v10)
            {
              v19 = v17 == 1;
            }

            else
            {
              v19 = 1;
            }

            --v17;
            if (v19)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t UTF16Swp_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a4;
  v11 = a2;
  if (a2)
  {
    v10 = a4;
    v11 = a2;
    if (a4)
    {
      v13 = result;
      v11 = a2;
      v10 = a4;
      do
      {
        v14 = 0;
        if (v11 >= v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        while (1)
        {
          v16 = bswap32(*v13) >> 16;
          if (v16 > 0x7F)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v10 -= v14;
        v11 -= v14;
        if (v11 && v10)
        {
          do
          {
            v20 = 0;
            result = bswap32(*v13) >> 16;
            if (result < 0x80 || (result & 0xF800) == 55296)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v10, &v20);
            if (!v20)
            {
              goto LABEL_28;
            }

            v10 -= v20;
            ++v13;
            a3 += v20;
            if (!--v11)
            {
              break;
            }
          }

          while (v10);
        }

        for (; v11 && v10; v11 -= v20)
        {
          v19 = 0;
          v20 = 0;
          v18 = 0;
          if ((((*v13 << 8) + 0x2000) >> 11) <= 0x1Eu)
          {
            break;
          }

          result = CodePoint_from_UTF16Swp_Surrogate(v13, v11, &v19, &v20);
          if (!v20)
          {
            goto LABEL_28;
          }

          result = CodePoint_to_UTF8_Multi(v19, a3, v10, &v18);
          if (!v18)
          {
            goto LABEL_28;
          }

          v13 += v20;
          v10 -= v18;
          a3 += v18;
        }
      }

      while (v11 && v10);
    }
  }

LABEL_28:
  *a5 = a2 - v11;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Swp_to_UTF8(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = bswap32(*v13);
          if (v16 > 0x7F)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v17 = 0;
            result = bswap32(*v13);
            if (result <= 0x7F)
            {
              break;
            }

            result = CodePoint_to_UTF8_Multi(result, a3, v11, &v17);
            if (!v17)
            {
              goto LABEL_18;
            }

            v11 -= v17;
            ++v13;
            a3 += v17;
            if (!--v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_18:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Nat_to_UTF32Nat(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0xF800) == 0xD800)
          {
            break;
          }

          *a3++ = v16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v19 = 0;
            if (*v13 - 57344 <= 0xFFFFF7FF)
            {
              break;
            }

            result = CodePoint_from_UTF16Nat_Surrogate(v13, v10, a3, &v19);
            if (!v19)
            {
              v11 = v17;
              goto LABEL_25;
            }

            v10 -= v19;
            v13 += v19;
            v11 = v17 - 1;
            ++a3;
            if (v10)
            {
              v18 = v17 == 1;
            }

            else
            {
              v18 = 1;
            }

            --v17;
            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Nat_to_UTF32Swp(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0xF800) == 0xD800)
          {
            break;
          }

          *a3++ = bswap32(v16);
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v21 = 0;
            v20 = 0;
            if (*v13 - 57344 <= 0xFFFFF7FF)
            {
              break;
            }

            result = CodePoint_from_UTF16Nat_Surrogate(v13, v10, &v20, &v21);
            v18 = v21;
            if (!v21)
            {
              v11 = v17;
              goto LABEL_25;
            }

            *a3++ = bswap32(v20);
            v10 -= v18;
            v13 += v18;
            v11 = v17 - 1;
            if (v10)
            {
              v19 = v17 == 1;
            }

            else
            {
              v19 = 1;
            }

            --v17;
            if (v19)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Swp_to_UTF32Nat(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = bswap32(*v13);
          if (v16 >> 27 == 27)
          {
            break;
          }

          *a3++ = HIWORD(v16);
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v17 = v11 - v14;
        v10 -= v14;
        if (v10 && v17)
        {
          while (1)
          {
            v19 = 0;
            if ((((*v13 << 8) + 0x2000) >> 11) <= 0x1Eu)
            {
              break;
            }

            result = CodePoint_from_UTF16Swp_Surrogate(v13, v10, a3, &v19);
            if (!v19)
            {
              v11 = v17;
              goto LABEL_25;
            }

            v10 -= v19;
            v13 += v19;
            v11 = v17 - 1;
            ++a3;
            if (v10)
            {
              v18 = v17 == 1;
            }

            else
            {
              v18 = 1;
            }

            --v17;
            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = v17;
LABEL_21:
        ;
      }

      while (v10 && v11);
    }
  }

LABEL_25:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

unsigned __int16 *UTF16Swp_to_UTF32Swp(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = a2;
  v11 = a4;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    if (a4)
    {
      v13 = result;
      v11 = a4;
      v10 = a2;
      do
      {
        v14 = 0;
        if (v10 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        while (1)
        {
          v16 = *v13;
          if ((v16 & 0xF8) == 0xD8)
          {
            break;
          }

          *a3++ = v16 << 16;
          ++v13;
          if (v15 == ++v14)
          {
            v14 = v15;
            break;
          }
        }

        v11 -= v14;
        v10 -= v14;
        if (v10 && v11)
        {
          do
          {
            v19 = 0;
            v18 = 0;
            if ((((*v13 << 8) + 0x2000) >> 11) <= 0x1Eu)
            {
              break;
            }

            result = CodePoint_from_UTF16Swp_Surrogate(v13, v10, &v18, &v19);
            v17 = v19;
            if (!v19)
            {
              goto LABEL_18;
            }

            *a3++ = bswap32(v18);
            v13 += v17;
            --v11;
            v10 -= v17;
            if (!v10)
            {
              break;
            }
          }

          while (v11);
        }
      }

      while (v10 && v11);
    }
  }

LABEL_18:
  *a5 = a2 - v10;
  *a6 = a4 - v11;
  return result;
}

uint64_t UTF32Nat_to_UTF16Nat(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v9 = a2;
  v10 = a4;
  if (a2)
  {
    v9 = a2;
    v10 = a4;
    if (a4)
    {
      v12 = result;
      v10 = a4;
      v9 = a2;
      do
      {
        v13 = 0;
        if (v9 >= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v9;
        }

        while (!HIWORD(*v12))
        {
          *a3++ = *v12++;
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v15 = v9 - v13;
        if (v9 == v13 || v10 == v13)
        {
          v9 -= v13;
          v10 -= v13;
          if (!v15)
          {
            break;
          }
        }

        else
        {
          v16 = -v9;
          while (1)
          {
            v20 = 0;
            result = *v12;
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Nat_Surrogate(result, a3, v10 - v13, &v20);
            if (!v20)
            {
              v10 -= v13;
              v9 = -(v13 + v16);
              goto LABEL_25;
            }

            ++v12;
            a3 += 2;
            v10 -= 2;
            v17 = v16 + 1;
            if (~v13 != v16)
            {
              ++v16;
              if (v10 != v13)
              {
                continue;
              }
            }

            v10 -= v13;
            v18 = v13 + v17;
            goto LABEL_21;
          }

          v10 -= v13;
          v18 = v13 + v16;
LABEL_21:
          v9 = -v18;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v10);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Nat_to_UTF16Swp(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v9 = a2;
  v10 = a4;
  if (a2)
  {
    v9 = a2;
    v10 = a4;
    if (a4)
    {
      v12 = result;
      v10 = a4;
      v9 = a2;
      do
      {
        v13 = 0;
        if (v9 >= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v9;
        }

        while (!HIWORD(*v12))
        {
          *a3++ = bswap32(*v12++) >> 16;
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v15 = v9 - v13;
        if (v9 == v13 || v10 == v13)
        {
          v9 -= v13;
          v10 -= v13;
          if (!v15)
          {
            break;
          }
        }

        else
        {
          v16 = -v9;
          while (1)
          {
            v20 = 0;
            result = *v12;
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Swp_Surrogate(result, a3, v10 - v13, &v20);
            if (!v20)
            {
              v10 -= v13;
              v9 = -(v13 + v16);
              goto LABEL_25;
            }

            ++v12;
            a3 += 2;
            v10 -= 2;
            v17 = v16 + 1;
            if (~v13 != v16)
            {
              ++v16;
              if (v10 != v13)
              {
                continue;
              }
            }

            v10 -= v13;
            v18 = v13 + v17;
            goto LABEL_21;
          }

          v10 -= v13;
          v18 = v13 + v16;
LABEL_21:
          v9 = -v18;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v10);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Swp_to_UTF16Nat(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v9 = a2;
  v10 = a4;
  if (a2)
  {
    v9 = a2;
    v10 = a4;
    if (a4)
    {
      v12 = result;
      v10 = a4;
      v9 = a2;
      do
      {
        v13 = 0;
        if (v9 >= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v9;
        }

        while (1)
        {
          v15 = bswap32(*v12);
          if (HIWORD(v15))
          {
            break;
          }

          *a3++ = v15;
          ++v12;
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v16 = v9 - v13;
        if (v9 == v13 || v10 == v13)
        {
          v9 -= v13;
          v10 -= v13;
          if (!v16)
          {
            break;
          }
        }

        else
        {
          v17 = -v9;
          while (1)
          {
            v21 = 0;
            result = bswap32(*v12);
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Nat_Surrogate(result, a3, v10 - v13, &v21);
            if (!v21)
            {
              v10 -= v13;
              v9 = -(v13 + v17);
              goto LABEL_25;
            }

            ++v12;
            a3 += 2;
            v10 -= 2;
            v18 = v17 + 1;
            if (~v13 != v17)
            {
              ++v17;
              if (v10 != v13)
              {
                continue;
              }
            }

            v10 -= v13;
            v19 = v13 + v18;
            goto LABEL_21;
          }

          v10 -= v13;
          v19 = v13 + v17;
LABEL_21:
          v9 = -v19;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v10);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v10;
  return result;
}

uint64_t UTF32Swp_to_UTF16Swp(uint64_t result, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v8 = a4;
  v9 = a2;
  if (a2)
  {
    v8 = a4;
    v9 = a2;
    if (a4)
    {
      v11 = result;
      v12 = swap32to16Offset;
      v9 = a2;
      v8 = a4;
      do
      {
        v13 = 0;
        if (v9 >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = v9;
        }

        while (!(bswap32(*v11) >> 16))
        {
          *a3++ = *(v11++ + v12);
          if (v14 == ++v13)
          {
            v13 = v14;
            break;
          }
        }

        v15 = v9 - v13;
        if (v9 == v13 || v8 == v13)
        {
          v8 -= v13;
          v9 -= v13;
          if (!v15)
          {
            break;
          }
        }

        else
        {
          v16 = -v9;
          while (1)
          {
            v21 = 0;
            result = bswap32(*v11);
            if (!WORD1(result))
            {
              break;
            }

            result = CodePoint_to_UTF16Swp_Surrogate(result, a3, v8 - v13, &v21);
            if (!v21)
            {
              v9 = -(v13 + v16);
              v8 -= v13;
              goto LABEL_25;
            }

            ++v11;
            a3 += 2;
            v8 -= 2;
            v17 = v16 + 1;
            if (~v13 != v16)
            {
              ++v16;
              if (v8 != v13)
              {
                continue;
              }
            }

            v18 = v13 + v17;
            goto LABEL_21;
          }

          v18 = v13 + v16;
LABEL_21:
          v9 = -v18;
          v8 -= v13;
          if (!v9)
          {
            break;
          }
        }
      }

      while (v8);
    }
  }

LABEL_25:
  *a5 = a2 - v9;
  *a6 = a4 - v8;
  return result;
}

void ToUTF16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v20 = *MEMORY[0x1E69E9840];
  v13 = &UTF8_to_UTF16LE;
  if (v14)
  {
    v13 = &UTF8_to_UTF16BE;
  }

  v15 = *v13;
  std::string::erase(v7, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::reserve(v8, 2 * v10);
  if (v10)
  {
    bzero(__s, 0x4000uLL);
    v17 = 0;
    v18 = 0;
    do
    {
      v15(v12, v10, __s, 0x2000, &v18, &v17);
      if (!v17)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 205;
        exception[1] = "Incomplete Unicode at end of string";
        *(exception + 16) = 0;
      }

      std::string::append(v8, __s, 2 * v17);
      v12 += v18;
      v10 -= v18;
    }

    while (v10);
  }
}

void ToUTF32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v20 = *MEMORY[0x1E69E9840];
  v13 = &UTF8_to_UTF32LE;
  if (v14)
  {
    v13 = &UTF8_to_UTF32BE;
  }

  v15 = *v13;
  std::string::erase(v7, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::reserve(v8, 4 * v10);
  if (v10)
  {
    bzero(__s, 0x4000uLL);
    v17 = 0;
    v18 = 0;
    do
    {
      v15(v12, v10, __s, 4096, &v18, &v17);
      if (!v17)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 205;
        exception[1] = "Incomplete Unicode at end of string";
        *(exception + 16) = 0;
      }

      std::string::append(v8, __s, 4 * v17);
      v12 += v18;
      v10 -= v18;
    }

    while (v10);
  }
}

void FromUTF16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v20 = *MEMORY[0x1E69E9840];
  v13 = &UTF16LE_to_UTF8;
  if (v14)
  {
    v13 = &UTF16BE_to_UTF8;
  }

  v15 = *v13;
  std::string::erase(v7, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::reserve(v8, 2 * v10);
  if (v10)
  {
    bzero(__s, 0x4000uLL);
    __n = 0;
    v18 = 0;
    do
    {
      v15(v12, v10, __s, 0x4000, &v18, &__n);
      if (!__n)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 205;
        exception[1] = "Incomplete Unicode at end of string";
        *(exception + 16) = 0;
      }

      std::string::append(v8, __s, __n);
      v12 += 2 * v18;
      v10 -= v18;
    }

    while (v10);
  }
}

uint64_t CodePoint_to_UTF8_Multi(uint64_t result, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  if (result >= 0x110000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v10 = "Bad UTF-32 - out of range";
    goto LABEL_16;
  }

  if ((result & 0x1FF800) == 0xD800)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v10 = "Bad UTF-32 - surrogate code point";
LABEL_16:
    exception[1] = v10;
    *(exception + 16) = 0;
  }

  v4 = 0;
  if (result)
  {
    v5 = result;
    do
    {
      ++v4;
      v6 = v5 >= 0x3F;
      v7 = v5 == 63;
      v5 >>= 6;
    }

    while (!v7 && v6);
  }

  if (result >> (6 * v4 - 6) > (0x80u >> v4) - 1)
  {
    ++v4;
  }

  if (v4 <= a3)
  {
    v8 = v4 - 1;
    if (v4 != 1)
    {
      do
      {
        a2[v8] = result & 0x3F | 0x80;
        result = result >> 6;
        --v8;
      }

      while (v8);
    }

    *a2 = result | (-1 << (8 - v4));
  }

  else
  {
    v4 = 0;
  }

  *a4 = v4;
  return result;
}

unsigned __int8 *CodePoint_from_UTF8(unsigned __int8 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v4 = *result;
  if ((v4 & 0x80000000) == 0)
  {
    *a3 = v4;
    v5 = 1;
LABEL_5:
    *a4 = v5;
    return result;
  }

  return CodePoint_from_UTF8_Multi(result, a2, a3, a4);
}

_BYTE *CodePoint_from_UTF8_Multi(_BYTE *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  v4 = 0;
  LOBYTE(v5) = *result;
  do
  {
    ++v4;
    v5 = 2 * (v5 & 0x7F);
  }

  while (v5 > 0x7F);
  if (v4 - 5 < 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v11 = "Invalid UTF-8 sequence length";
    goto LABEL_16;
  }

  if (v4 <= a2)
  {
    v6 = *result & ~(-1 << (7 - v4));
    v7 = 1;
    do
    {
      v8 = result[v7];
      if ((v8 & 0xC0) != 0x80)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 4;
        v11 = "Invalid UTF-8 data byte";
        goto LABEL_16;
      }

      v9 = v6 << 6;
      v6 = (v6 << 6) | v8 & 0x3F;
      ++v7;
    }

    while (v4 != v7);
    if (v9 >> 11 < 0x1B)
    {
      goto LABEL_13;
    }

    if (v9 >> 13 <= 6)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v11 = "Bad UTF-8 - surrogate code point";
    }

    else
    {
      if (v9 < 0x110000)
      {
LABEL_13:
        *a3 = v6;
        goto LABEL_14;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v11 = "Bad UTF-8 - out of range";
    }

LABEL_16:
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  v4 = 0;
LABEL_14:
  *a4 = v4;
  return result;
}

uint64_t CodePoint_to_UTF16Nat_Surrogate(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (result >= 0x110000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Bad UTF-32 - out of range";
    *(exception + 16) = 0;
  }

  if (a3 >= 2)
  {
    *a2 = ((result + 16711680) >> 10) | 0xD800;
    a2[1] = result & 0x3FF | 0xDC00;
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a4 = v4;
  return result;
}

unsigned __int16 *CodePoint_from_UTF16Nat_Surrogate(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  v4 = *result;
  if (v4 >> 10 >= 0x37)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - leading low surrogate";
    goto LABEL_9;
  }

  if (a2 >= 2)
  {
    v6 = result[1];
    if ((v6 - 57344) > 0xFFFFFBFF)
    {
      *a3 = (v6 & 0x3FF | ((v4 & 0x3FF) << 10)) + 0x10000;
      v5 = 2;
      goto LABEL_6;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - missing low surrogate";
LABEL_9:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  v5 = 0;
LABEL_6:
  *a4 = v5;
  return result;
}

uint64_t CodePoint_to_UTF16Swp_Surrogate(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t *a4)
{
  if (result >= 0x110000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Bad UTF-32 - out of range";
    *(exception + 16) = 0;
  }

  if (a3 >= 2)
  {
    *a2 = bswap32(((result + 16711680) >> 10) | 0xD800) >> 16;
    a2[1] = __rev16(result & 0x3FF | 0xDC00);
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a4 = v4;
  return result;
}

unsigned __int16 *CodePoint_from_UTF16Swp_Surrogate(unsigned __int16 *result, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  v4 = bswap32(*result);
  if (v4 >> 26 >= 0x37)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - leading low surrogate";
    goto LABEL_9;
  }

  if (a2 >= 2)
  {
    v6 = bswap32(result[1]) >> 16;
    if (((v6 + 0x2000) >> 10) > 0x3Eu)
    {
      *a3 = (v6 & 0x3FF | ((HIWORD(v4) & 0x3FF) << 10)) + 0x10000;
      v5 = 2;
      goto LABEL_6;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v8 = "Bad UTF-16 - missing low surrogate";
LABEL_9:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  v5 = 0;
LABEL_6:
  *a4 = v5;
  return result;
}

uint64_t WXMPMeta_RegisterNamespace_1(XMPMeta *a1, char *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), unsigned int *a5)
{
  *a5 = 0;
  if (!a1 || !*a1)
  {
    v9 = "Empty namespace URI";
    goto LABEL_10;
  }

  if (!a2 || !*a2)
  {
    v9 = "Empty suggested prefix";
LABEL_10:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 101;
    exception[1] = v9;
    *(exception + 16) = 0;
  }

  memset(v11, 0, sizeof(v11));
  result = XMPMeta::RegisterNamespace(a1, a2, &v11[4], v11, a5);
  a5[8] = result;
  if (a3)
  {
    return a4(a3, *&v11[4], *v11);
  }

  return result;
}

void sub_186124DB4(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }
    }

    else
    {
      *(v2 + 32) = 14;
      v8 = "Caught unknown exception";
    }

    *v2 = v8;
  }

  __cxa_end_catch();
  JUMPOUT(0x186124D60);
}

void WXMPMeta_GetProperty_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, void), uint64_t a7)
{
  v22 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a7 = 0;
  if (!a2 || !*a2)
  {
    v17 = "Empty schema namespace URI";
    v18 = 101;
    goto LABEL_15;
  }

  if (!a3 || !*a3)
  {
    v17 = "Empty property name";
    v18 = 102;
LABEL_15:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v18;
    exception[1] = v17;
    *(exception + 16) = 0;
  }

  v20 = 0;
  v21 = 0;
  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = &v20;
  }

  v15 = (*(*a1 + 16))(a1, a2, a3, &v21, &v20 + 4, v14);
  v16 = v15 ^ 1;
  *(a7 + 32) = v15;
  if (!a4)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    a6(a4, v21, HIDWORD(v20));
  }

  XMP_AutoLock::~XMP_AutoLock(&v22);
}

void sub_186124F98(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186124F30);
}

void sub_18612504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetArrayItem_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void), uint64_t a8)
{
  v24 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v19 = "Empty schema namespace URI";
    v20 = 101;
    goto LABEL_15;
  }

  if (!a3 || !*a3)
  {
    v19 = "Empty array name";
    v20 = 102;
LABEL_15:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v20;
    exception[1] = v19;
    *(exception + 16) = 0;
  }

  v22 = 0;
  v23 = 0;
  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v16 = &v22;
  }

  v17 = (*(*a1 + 24))(a1, a2, a3, a4, &v23, &v22 + 4, v16);
  v18 = v17 ^ 1;
  *(a8 + 32) = v17;
  if (!a5)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    a7(a5, v23, HIDWORD(v22));
  }

  XMP_AutoLock::~XMP_AutoLock(&v24);
}

void sub_1861251AC(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186125144);
}

void sub_186125260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SetProperty_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  (*(*a1 + 48))(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_AppendArrayItem_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v17 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a7 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty array name";
    v15 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  (*(*a1 + 64))(a1, a2, a3, a4, a5, a6);
  XMP_AutoLock::~XMP_AutoLock(&v17);
}

void WXMPMeta_SetStructField_1(uint64_t a1, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7, void *a8)
{
  v19 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v16 = "Empty schema namespace URI";
LABEL_13:
    v17 = 101;
    goto LABEL_16;
  }

  if (!a3 || !*a3)
  {
    v16 = "Empty struct name";
LABEL_15:
    v17 = 102;
LABEL_16:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[1] = v16;
    *(exception + 16) = 0;
  }

  if (!a4 || !*a4)
  {
    v16 = "Empty field namespace URI";
    goto LABEL_13;
  }

  if (!a5 || !*a5)
  {
    v16 = "Empty field name";
    goto LABEL_15;
  }

  XMPMeta::SetStructField(a1, a2, a3, a4, a5, a6, a7);
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void WXMPMeta_SetQualifier_1(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v19 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v16 = "Empty schema namespace URI";
LABEL_13:
    v17 = 101;
    goto LABEL_16;
  }

  if (!a3 || !*a3)
  {
    v16 = "Empty property name";
LABEL_15:
    v17 = 102;
LABEL_16:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[1] = v16;
    *(exception + 16) = 0;
  }

  if (!a4 || !*a4)
  {
    v16 = "Empty qualifier namespace URI";
    goto LABEL_13;
  }

  if (!a5 || !*a5)
  {
    v16 = "Empty qualifier name";
    goto LABEL_15;
  }

  (*(*a1 + 72))(a1, a2, a3, a4, a5, a6, a7);
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void WXMPMeta_DeleteProperty_1(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a4 = 0;
  if (!a2 || !*a2)
  {
    v8 = "Empty schema namespace URI";
    v9 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v8 = "Empty property name";
    v9 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v9;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  (*(*a1 + 80))(a1, a2, a3);
  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void WXMPMeta_DoesPropertyExist_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a4 = 0;
  if (!a2 || !*a2)
  {
    v8 = "Empty schema namespace URI";
    v9 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v8 = "Empty property name";
    v9 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v9;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  *(a4 + 32) = (*(*a1 + 112))(a1, a2, a3);
  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_186125CB4(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186125C54);
}

void sub_186125D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetLocalizedText_1(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void (*a9)(uint64_t, uint64_t, void), uint64_t a10)
{
  v28 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a10 = 0;
  if (!a2 || !*a2)
  {
    v21 = "Empty schema namespace URI";
    v22 = 101;
    goto LABEL_21;
  }

  if (!a3 || !*a3)
  {
    v21 = "Empty array name";
    v22 = 102;
    goto LABEL_21;
  }

  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = "";
  }

  if (!a5 || !*a5)
  {
    v21 = "Empty specific language";
    v22 = 4;
LABEL_21:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v22;
    exception[1] = v21;
    *(exception + 16) = 0;
  }

  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v19 = &v24;
  if (a8)
  {
    v19 = a8;
  }

  v20 = (*(*a1 + 120))(a1, a2, a3, v18, a5, &v27, &v26, &v25, &v24 + 4, v19);
  *(a10 + 32) = v20;
  if (v20)
  {
    if (a6)
    {
      a9(a6, v27, v26);
    }

    if (a7)
    {
      a9(a7, v25, HIDWORD(v24));
    }
  }

  XMP_AutoLock::~XMP_AutoLock(&v28);
}

void sub_186125F24(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186125EA8);
}

void sub_186125FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SetLocalizedText_1(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, const char *a6, uint64_t a7, void *a8)
{
  v21 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a8 = 0;
  if (!a2 || !*a2)
  {
    v18 = "Empty schema namespace URI";
    v19 = 101;
    goto LABEL_17;
  }

  if (!a3 || !*a3)
  {
    v18 = "Empty array name";
    v19 = 102;
    goto LABEL_17;
  }

  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = "";
  }

  if (!a5 || !*a5)
  {
    v18 = "Empty specific language";
    v19 = 4;
LABEL_17:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v19;
    exception[1] = v18;
    *(exception + 16) = 0;
  }

  if (a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = "";
  }

  (*(*a1 + 128))(a1, a2, a3, v16, a5, v17, a7);
  XMP_AutoLock::~XMP_AutoLock(&v21);
}

void WXMPMeta_GetProperty_Bool_1(uint64_t a1, const char *a2, const char *a3, BOOL *a4, unsigned int *a5, uint64_t a6)
{
  v19 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_13;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty property name";
    v15 = 102;
LABEL_13:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  v18 = 0;
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = &v18;
  }

  v17 = 0;
  Property_Bool = XMPMeta::GetProperty_Bool(a1, a2, a3, &v17, v12);
  if (a4)
  {
    *a4 = v17;
  }

  *(a6 + 32) = Property_Bool;
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void sub_1861262FC(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186126298);
}

void sub_1861263B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetProperty_Int_1(uint64_t a1, const char *a2, const char *a3, int *a4, unsigned int *a5, uint64_t a6)
{
  v18 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_14;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty property name";
    v15 = 102;
LABEL_14:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  v17 = 0;
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = &v17 + 1;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = &v17;
  }

  *(a6 + 32) = XMPMeta::GetProperty_Int(a1, a2, a3, v12, v13);
  XMP_AutoLock::~XMP_AutoLock(&v18);
}

void sub_1861264C0(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x18612645CLL);
}

void sub_186126574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_GetProperty_Date_1(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4, int *a5, uint64_t a6)
{
  v18 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v14 = "Empty schema namespace URI";
    v15 = 101;
    goto LABEL_16;
  }

  if (!a3 || !*a3)
  {
    v14 = "Empty property name";
    v15 = 102;
LABEL_16:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v15;
    exception[1] = v14;
    *(exception + 16) = 0;
  }

  if ((atomic_load_explicit(_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    WXMPMeta_GetProperty_Date_1_cold_1();
  }

  v17 = 0;
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = &unk_1ED56A1D0;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = &v17;
  }

  *(a6 + 32) = XMPMeta::GetProperty_Date(a1, a2, a3, v12, v13);
  XMP_AutoLock::~XMP_AutoLock(&v18);
}

void sub_1861266A0(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186126634);
}

void sub_186126754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SetProperty_Bool_1(uint64_t a1, const char *a2, const char *a3, int a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Bool(a1, a2, a3, a4 != 0, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_SetProperty_Int_1(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Int(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_SetProperty_Int64_1(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Int64(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_SetProperty_Float_1(uint64_t a1, const char *a2, const char *a3, uint64_t a4, void *a5, double a6)
{
  v16 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  if (!a2 || !*a2)
  {
    v13 = "Empty schema namespace URI";
    v14 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v13 = "Empty property name";
    v14 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v14;
    exception[1] = v13;
    *(exception + 16) = 0;
  }

  v12.n128_f64[0] = a6;
  XMPMeta::SetProperty_Float(a1, a2, a3, v12, a4);
  XMP_AutoLock::~XMP_AutoLock(&v16);
}

void WXMPMeta_SetProperty_Date_1(uint64_t a1, _BYTE *a2, _BYTE *a3, __int128 *a4, uint64_t a5, void *a6)
{
  v15 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  if (!a2 || !*a2)
  {
    v12 = "Empty schema namespace URI";
    v13 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v12 = "Empty property name";
    v13 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v13;
    exception[1] = v12;
    *(exception + 16) = 0;
  }

  XMPMeta::SetProperty_Date(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v15);
}

void WXMPMeta_Clone_1(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1 + 16;
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a3 = 0;
  if (sUseNewCoreAPIs)
  {
    operator new();
  }

  operator new();
}

void sub_1861270D4(void *a1, int a2)
{
  MEMORY[0x186602850](v3, 0x10B3C4030275F38);
  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v6;
    v7 = *(v6 + 1);
    if (!v7)
    {
      v7 = "";
    }

    *v2 = v7;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v8 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v9 = (*(*v8 + 16))(v8);
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }

      *v2 = v10;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186127090);
}

void sub_18612723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_CountArrayItems_1(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a4 = 0;
  if (!a2 || !*a2)
  {
    v8 = "Empty schema namespace URI";
    v9 = 101;
    goto LABEL_8;
  }

  if (!a3 || !*a3)
  {
    v8 = "Empty array name";
    v9 = 102;
LABEL_8:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v9;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  *(a4 + 32) = (*(*a1 + 184))(a1, a2, a3);
  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_186127340(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }

      *v2 = v8;
      __cxa_end_catch();
    }

    else
    {
      *(v2 + 32) = 14;
      *v2 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x1861272E0);
}

void sub_1861273F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_SerializeToBuffer_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, void (*a8)(uint64_t, void *, uint64_t), void *a9)
{
  v24 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  *a9 = 0;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = "";
  }

  if (a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = "";
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  (*(*a1 + 208))(a1, &__p, a3, a4, v17, v18, a7);
  if (a2)
  {
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v23 >= 0)
    {
      v20 = HIBYTE(v23);
    }

    else
    {
      v20 = v22;
    }

    a8(a2, p_p, v20);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  XMP_AutoLock::~XMP_AutoLock(&v24);
}

void sub_186127528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    *(v14 + 32) = *v18;
    v19 = v18[1];
    if (!v19)
    {
      v19 = v15;
    }

    *v14 = v19;
    *(v14 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v14 + 32) = 13;
      v21 = (*(*v20 + 16))(v20);
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v15;
      }

      *v14 = v22;
      __cxa_end_catch();
    }

    else
    {
      *(v14 + 32) = 14;
      *v14 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x186127500);
}

void sub_1861275E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPMeta_Initialize_1_cold_1(void *a1, uint64_t a2)
{
  v3 = __cxa_begin_catch(a1);
  *(a2 + 32) = *v3;
  v4 = *(v3 + 1);
  if (!v4)
  {
    v4 = "";
  }

  *a2 = v4;
  *(a2 + 8) = "XMP";

  __cxa_end_catch();
}

void WXMPMeta_GetProperty_Date_1_cold_1()
{
  if (__cxa_guard_acquire(_MergedGlobals_7))
  {
    qword_1ED56A1F0 = 0;
    unk_1ED56A1E0 = 0u;
    unk_1ED56A1D0 = 0u;

    __cxa_guard_release(_MergedGlobals_7);
  }
}

void AdobeXMPCore_Int::NodeImpl::NodeImpl(AdobeXMPCore_Int::NodeImpl *this, const char *a2, AdobeXMPCore_Int::IUTF8String_I *a3, const char *a4, AdobeXMPCore_Int *a5, const char *a6)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 664)) = *(a2 + 1);
  *(this + *(*this - 544)) = *(a2 + 2);
  *(this + *(*this - 56)) = *(a2 + 3);
  *(this + *(*this - 64)) = *(a2 + 4);
  *(this + *(*this - 72)) = *(a2 + 5);
  *(this + *(*this - 552)) = *(a2 + 6);
  *(this + *(*this - 560)) = *(a2 + 7);
  *(this + *(*this - 672)) = *(a2 + 8);
  *(this + *(*this - 680)) = *(a2 + 9);
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_186127A44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *AdobeXMPCore_Int::VerifyNameSpace(_BYTE *this, const char *a2)
{
  v4 = a2;
  if (!this || !a2 || a2 == -1 && !*this)
  {
    v2 = 0;
    v3 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return this;
}

void sub_186127D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

const char *AdobeXMPCore_Int::VerifyName(const char *this, const char *a2)
{
  v2 = this;
  if (!this || !a2)
  {
    goto LABEL_67;
  }

  if (a2 != -1)
  {
    goto LABEL_6;
  }

  if (!*this)
  {
LABEL_67:
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  this = strlen(this);
  a2 = this;
LABEL_6:
  if (a2 == 2)
  {
    return this;
  }

  v3 = *v2;
  if (v3 == 91)
  {
    v4 = v2 + 1;
    if (v2[1] == 93)
    {
      return this;
    }

    if (a2 >= 1)
    {
      v5 = &a2[v2];
      v6 = 91;
      goto LABEL_14;
    }

LABEL_68:
    exception = __cxa_allocate_exception(0x18uLL);
    v15 = "Empty XML name";
LABEL_69:
    *exception = 102;
    exception[1] = v15;
    *(exception + 16) = 0;
  }

  if (a2 <= 0)
  {
    goto LABEL_68;
  }

  v5 = &a2[v2];
  if ((v3 & 0x80) == 0)
  {
    v4 = v2 + 1;
    v6 = *v2;
    if ((v3 - 97) < 0x1A)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (v3 == 95 || (v6 - 65) < 0x1A)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

  v17 = 0;
  v16 = 0;
  this = CodePoint_from_UTF8(v2, 4uLL, &v17, &v16);
  v4 = &v2[v16];
  if (v17 - 192 >= 0x17 && v17 - 216 >= 0x1F && v17 - 248 >= 0x208 && v17 - 880 >= 0xE && v17 - 895 >= 0x1C81 && (v17 & 0xFFFFFFFE) != 0x200C && v17 - 8304 >= 0x120 && v17 - 11264 >= 0x3F0 && v17 - 12289 >= 0xA7FF && v17 - 63744 >= 0x4D0 && v17 - 65008 >= 0x20E && (v17 - 0x10000) >> 17 > 6)
  {
LABEL_52:
    exception = __cxa_allocate_exception(0x18uLL);
    v15 = "Bad XML name";
    goto LABEL_69;
  }

LABEL_16:
  while (v4 < v5)
  {
    if (*v4 < 0)
    {
      v17 = 0;
      v16 = 0;
      this = CodePoint_from_UTF8(v4, 4uLL, &v17, &v16);
      v4 += v16;
      if (v17 - 192 >= 0x17 && v17 - 216 >= 0x1F)
      {
        v13 = v17 - 248 >= 0x208 && v17 - 880 >= 0xE;
        if (v13 && v17 - 895 >= 0x1C81 && (v17 & 0xFFFFFFFE) != 0x200C && v17 - 8304 >= 0x120 && v17 - 11264 >= 0x3F0 && v17 - 12289 >= 0xA7FF && v17 - 63744 >= 0x4D0 && v17 - 768 >= 0x70 && v17 - 65008 >= 0x20E && v17 - 0x10000 >= 0xE0000 && v17 - 8255 >= 2 && v17 != 183)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v7 = *v4++;
      if ((v7 - 97) >= 0x1A && v7 != 95 && (v7 - 65) >= 0x1A)
      {
        v9 = v7 - 48;
        v10 = v7 - 45;
        if (v9 >= 0xA && v10 >= 2)
        {
          goto LABEL_52;
        }
      }
    }
  }

  return this;
}

void sub_1861282C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1861282E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char *a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  a11 = 0;
  a12 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186128490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  __cxa_end_catch();
  JUMPOUT(0x1861284B8);
}

void AdobeXMPCore_Int::NodeImpl::ChangeParent(AdobeXMPCore_Int::NodeImpl *this, AdobeXMPCore::INode_v1 *a2)
{
  memset(v13, 0, sizeof(v13));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v13, this + *(*this - 680) + 8, 1);
  v4 = *(this + 7);
  if (!v4)
  {
    v8 = atomic_load(this + 11);
    if (v8 >= 2)
    {
      v9 = *(this + 6);
      if (v9)
      {
        v10 = (*(*v9 + 280))(v9);
        (*(*v10 + 576))(v10);
      }

      if (!a2)
      {
        goto LABEL_14;
      }

      v11 = (*(*a2 + 280))(a2);
      (*(*v11 + 560))(v11);
LABEL_13:
      v12 = (*(*a2 + 280))(a2);
      (*(*v12 + 560))(v12);
      goto LABEL_14;
    }

LABEL_12:
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v4 == a2)
  {
    goto LABEL_16;
  }

  v5 = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = atomic_load(this + 11);
  if (v6 >= 2)
  {
    v7 = *(*(**(this + 6) + 280))(*(this + 6));
    (*(v7 + 576))();
    goto LABEL_12;
  }

LABEL_14:
  *(this + 6) = a2;
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 0);
  if (!*(this + 6))
  {
    *(this + 96) = 0;
    *(this + 5) = 0;
  }

LABEL_16:
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v13);
}

void sub_18612871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(AdobeXMPCore_Int::NodeImpl *this, char a2)
{
  v3 = *(this + 7);
  if (a2)
  {
    if (v3)
    {
      v4 = atomic_load((this + *(*this - 672) + 8));
      if (v4 <= 2)
      {
        v5 = *(this + 8);
        *(this + 7) = 0;
        *(this + 8) = 0;
        if (v5)
        {

          std::__shared_weak_count::__release_shared[abi:fe200100](v5);
        }
      }
    }
  }

  else if (!v3)
  {
    v6 = atomic_load((this + *(*this - 672) + 8));
    if (v6 >= 2)
    {
      v7 = *(this + 6);
      if (v7)
      {
        AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore::INode_v1>(v7, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/NodeImpl.cpp", 346, 1, &v8);
      }
    }
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::GetRawParentPointer(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 680) + 8, 0);
  v2 = *(this + 6);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

void AdobeXMPCore_Int::NodeImpl::GetParent(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 680) + 8, 0);
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *v4;
    if (*(this + 96) == 1)
    {
      v6 = (*(v5 + 280))(v4);
      v4 = (*(*v6 + 528))(v6);
      v5 = *v4;
    }

    (**&v4[*(v5 - 56)])(&v4[*(v5 - 56)]);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a2, v4, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void sub_186128A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore::INode_v1>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1 || !a4)
  {
    (**&a1[*(*a1 - 56)])(&a1[*(*a1 - 56)], a2, a3, a4);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a5, a1, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186128BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::SetName(AdobeXMPCore_Int::NodeImpl *this, AdobeXMPCore_Int *a2, char *a3)
{
  AdobeXMPCore_Int::VerifyName(a2, a3);
  v3 = 0;
  v4 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_186129184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
  }

  v23 = *(v20 - 40);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::GetName(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  if ((*(*this + 160))(this))
  {
    v4 = *(**(this + 6) + 72);

    v4();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, this + *(*this - 680) + 8, 0);
    v5 = *(this + 4);
    *a2 = *(this + 3);
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
  }
}

void AdobeXMPCore_Int::NodeImpl::SetNameSpace(AdobeXMPCore_Int::NodeImpl *this, AdobeXMPCore_Int *a2, char *a3)
{
  AdobeXMPCore_Int::VerifyNameSpace(a2, a3);
  v3 = 0;
  v4 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_1861298B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
  }

  v23 = *(v20 - 40);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::GetNameSpace(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  if ((*(*this + 160))(this))
  {
    v4 = *(**(this + 6) + 88);

    v4();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, this + *(*this - 680) + 8, 0);
    v5 = *(this + 2);
    *a2 = *(this + 1);
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
  }
}

void AdobeXMPCore_Int::NodeImpl::GetPath(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  for (i = this + *(*this - 544); i; i = (*(*v4 + 528))(v4))
  {
    v4 = (*(*i + 280))(i);
    v5 = v19;
    if (v19 >= v20)
    {
      v7 = (v19 - __p) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v8 = (v20 - __p) >> 2;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<AdobeXMPCore::INode_v1 const*>>(&__p, v9);
      }

      v10 = (8 * v7);
      *v10 = i;
      v6 = 8 * v7 + 8;
      v11 = v10 - (v19 - __p);
      memcpy(v11, __p, v19 - __p);
      v12 = __p;
      __p = v11;
      v19 = v6;
      v20 = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v19 = i;
      v6 = (v5 + 8);
    }

    v19 = v6;
  }

  v13 = v19 - 8;
  if (__p != v19 && v13 > __p)
  {
    v15 = __p + 8;
    do
    {
      v16 = *(v15 - 1);
      *(v15 - 1) = *v13;
      *v13 = v16;
      v13 -= 8;
      v17 = v15 >= v13;
      v15 += 8;
    }

    while (!v17);
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore::IPath_v1::CreatePath();
}

void sub_186129EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_objecta, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NodeImpl::GetQualifier(AdobeXMPCore_Int::NodeImpl *this@<X0>, const char *a2@<X1>, const char *a3@<X3>, uint64_t a4@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  memset(v12, 0, sizeof(v12));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v12, this + *(*this - 680) + 8, 0);
  if (*(this + 9))
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
    (*(**(this + 9) + 648))(*(this + 9), a2, a4, a3, a5);
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
  }
}

void AdobeXMPCore_Int::NodeImpl::GetQualifier(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, a1 + *(*a1 - 680) + 8, 0);
  if (*(a1 + 72))
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
    v4 = *(*(**(a1 + 72) + 688))(*(a1 + 72));
    (*(v4 + 736))();
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::InsertQualifier(AdobeXMPCore_Int::NodeImpl *a1, uint64_t a2)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(a1);
  (*(**(a1 + 9) + 656))(*(a1 + 9), a2);
  v4 = *(*(*(**a2 + 280))() + 552);

  return v4();
}

void AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(AdobeXMPCore_Int::NodeImpl *this)
{
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
  if (!*(this + 9))
  {
    AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::ReplaceQualifier@<X0>(AdobeXMPCore_Int::NodeImpl *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(a1);
  *a3 = 0;
  a3[1] = 0;
  (*(**(a1 + 9) + 664))();
  v6 = *(*(**a2 + 280))();
  return (*(v6 + 552))();
}

void sub_18612A4A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::NodeImpl::RemoveQualifier(AdobeXMPCore_Int::NodeImpl *this, const char *a2, unint64_t a3, const char *a4)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(this);
  v5 = *(**(this + 9) + 672);

  return v5();
}

uint64_t virtual thunk toAdobeXMPCore_Int::NodeImpl::RemoveQualifier(AdobeXMPCore_Int::NodeImpl *this, const char *a2, unint64_t a3, const char *a4)
{
  v4 = (this + *(*this - 192));
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(v4);
  v5 = *(**(v4 + 9) + 672);

  return v5();
}

uint64_t AdobeXMPCore_Int::NodeImpl::RemoveQualifier(AdobeXMPCore_Int::NodeImpl *a1, uint64_t a2, uint64_t a3)
{
  AdobeXMPCore_Int::NodeImpl::CreateQualifierNode(a1);
  v6 = (*(**(a1 + 9) + 688))(*(a1 + 9));
  v7 = *(*v6 - 808);
  v8 = *(*(v6 + v7) + 520);
  v9 = v6 + v7;

  return v8(v9, a2, a3);
}

BOOL AdobeXMPCore_Int::NodeImpl::IsArrayItem(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 680) + 8, 0);
  v2 = *(this + 5) != 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::NodeImpl::HasQualifiers(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 680) + 8, 0);
  v2 = *(this + 9);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 9) + *(**(this + 9) - 688);
  return (*(*v3 + 560))(v3) != 0;
}

uint64_t AdobeXMPCore_Int::NodeImpl::IsEmpty(AdobeXMPCore_Int::NodeImpl *this)
{
  if ((*(*(this + *(*this - 544)) + 192))(this + *(*this - 544)))
  {
    return 0;
  }

  else
  {
    return (*(*this + 184))(this) ^ 1;
  }
}

void AdobeXMPCore_Int::NodeImpl::AcknowledgeChanges(AdobeXMPCore_Int::NodeImpl *this)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v6, this + *(*this - 680) + 8, 0);
  v2 = atomic_load(this + 11);
  if (v2 >= 2)
  {
    v3 = *(this + 6);
    if (v3)
    {
      v4 = (*(*v3 + 280))(v3);
      (*(*v4 + 576))(v4);
    }
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v6);
  (*(*this + 624))(this);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v6, this + *(*this - 680) + 8, 0);
  v5 = *(this + 9);
  if (v5)
  {
    (*(*&v5[*(*v5 - 544)] + 216))(&v5[*(*v5 - 544)]);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v6);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v6, this + *(*this - 680) + 8, 1);
  atomic_store(0, this + 11);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v6);
}

void sub_18612AB30(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::NodeImpl::Clear(uint64_t this, int a2, int a3)
{
  v4 = this;
  if (a3)
  {
    v5 = *(this + 72);
    if (v5)
    {
      this = (*(*&v5[*(*v5 - 544)] + 224))(&v5[*(*v5 - 544)], 1, 1);
    }
  }

  if (a2)
  {
    (*(*v4 + 608))(v4);
    v6 = *(*v4 + 560);

    return v6(v4);
  }

  return this;
}

void AdobeXMPCore_Int::NodeImpl::Clone(AdobeXMPCore_Int::NodeImpl *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(v18, 0, sizeof(v18));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v18, this + *(*this - 680) + 8, 0);
  v8 = *(this + 9);
  if (v8)
  {
    v9 = (*(*&v8[*(*v8 - 688)] + 560))(&v8[*(*v8 - 688)]);
    v17 = 0uLL;
    if (v9)
    {
      v15 = 0;
      v16 = 0;
      (*(*(*(this + 9) + *(**(this + 9) - 544)) + 264))(&v15, *(this + 9) + *(**(this + 9) - 544), a2, a3);
      if (v15 && ((*(*v15 + 240))(&v14), v17 = v14, v14))
      {
        v10 = (*(*(v14 + *(*v14 - 688)) + 560))(v14 + *(*v14 - 688));
      }

      else
      {
        v10 = 0;
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v16);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v17 = 0uLL;
  }

  *a4 = 0;
  a4[1] = 0;
  (*(*this + 616))(this, a2, a3, v10);
  if (*a4)
  {
    v11 = (*(**a4 + 280))(*a4);
    v12 = (*(**a4 + 168))();
    (*(*v11 + 552))(v11, v12);
    if (*a4)
    {
      if (v17 && v10)
      {
        v13 = (*(**a4 + 280))(*a4);
        (*(*v13 + 584))(v13, &v17);
      }
    }
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v17 + 1));
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v18);
}

void sub_18612AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NodeImpl::SetQualifiers(void *a1, uint64_t *a2)
{
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, a1 + *(*a1 - 680) + 8, 1);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[10];
  a1[9] = v5;
  a1[10] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::QualifiersCount(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 680) + 8, 0);
  v2 = *(this + 9);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 9) + *(**(this + 9) - 688);
  return (*(*v3 + 560))(v3);
}

void AdobeXMPCore_Int::NodeImpl::QualifiersIterator(AdobeXMPCore_Int::NodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 680) + 8, 0);
  if (*(this + 9))
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
    (*(*(*(this + 9) + *(**(this + 9) - 688)) + 552))(*(this + 9) + *(**(this + 9) - 688));
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  }
}

uint64_t AdobeXMPCore_Int::NodeImpl::GetParentNodeType(AdobeXMPCore_Int::NodeImpl *this)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::NodeImpl::GetParentNodeType(AdobeXMPCore_Int::NodeImpl *this)
{
  result = *(this + *(*this - 88) + 48);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t AdobeXMPCore_Int::NodeImpl::GetQualifierNodeType(AdobeXMPCore_Int::NodeImpl *this, const char *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  memset(v12, 0, sizeof(v12));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v12, this + *(*this - 680) + 8, 0);
  v10 = *(this + 9);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
  if (v10)
  {
    return (*(**(this + 9) + 640))(*(this + 9), a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

atomic_ullong *AdobeXMPCore_Int::NodeImpl::UnRegisterChange(atomic_ullong *this)
{
  v2 = this + 11;
  if (atomic_load(this + 11))
  {
    atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!atomic_load(v2))
  {
    this = this[6];
    if (this)
    {
      v5 = *(*(*(*this + 280))(this) + 576);

      return v5();
    }
  }

  return this;
}

void AdobeXMPCore_Int::NodeImpl::Acquire(AdobeXMPCore_Int::NodeImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::Acquire(this + *(*this - 672));
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 0);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18612B574(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::NodeImpl::Release(AdobeXMPCore_Int::NodeImpl *this)
{
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 1);
  AdobeXMPCore_Int::SharedObjectImpl::Release((this + *(*this - 672)));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18612B63C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::NodeImpl::AcquireInternal(AdobeXMPCore_Int::NodeImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::AcquireInternal(this + *(*this - 672));
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 680) + 8, 1);
  AdobeXMPCore_Int::NodeImpl::updateParentSharedPointer(this, 0);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void sub_18612B704(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

atomic_ullong *AdobeXMPCore_Int::NodeImpl::RegisterChange(atomic_ullong *this)
{
  atomic_fetch_add(this + 11, 1uLL);
  v1 = atomic_load(this + 11);
  if (v1 == 1)
  {
    this = (*(*this + 528))(this);
    if (this)
    {
      v2 = *(*(*(*this + 280))(this) + 560);

      return v2();
    }
  }

  return this;
}

uint64_t *AdobeXMPCore::INode_v1::MakeShared@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, AdobeXMPCore::INode_v1 *a3@<X1>)
{
  if (this)
  {
    v4 = this;
    (**(this + *(*this - 56)))(this + *(*this - 56), a3);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a1, v4, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a1 = 0;
  a1[1] = 0;
  return this;
}

void sub_18612B984(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore::INode_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INode_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::INode_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INode_v1>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::INode_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::INode_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<AdobeXMPCore::INode_v1 const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t **Common::HandlerRegistry::removeHandler(uint64_t ***this, unsigned int a2)
{
  v4 = *this;
  v5 = v4[1];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v4 + 1;
  do
  {
    v7 = *(v5 + 8);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = v5[v9];
  }

  while (v5);
  if (v6 != v4 + 1 && *(v6 + 8) <= a2)
  {
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(v4, v6);
    operator delete(v6);
    result = Common::HandlerRegistry::getHandlerInfo(this, a2);
    if (result)
    {
      Common::HandlerRegistry::removeHandler();
    }
  }

  else
  {
LABEL_9:
    v10 = this[1];
    v13 = v10[1];
    v11 = v10 + 1;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 8);
      v8 = v15 >= a2;
      v16 = v15 < a2;
      if (v8)
      {
        v14 = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
    if (v14 != v11 && *(v14 + 8) <= a2)
    {
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(this[1], v14);
      operator delete(v14);
      result = Common::HandlerRegistry::getHandlerInfo(this, a2);
      if (result)
      {
        Common::HandlerRegistry::removeHandler();
      }
    }

    else
    {
LABEL_17:
      result = this[2];
      v18 = result[1];
      if (v18)
      {
        v19 = (result + 1);
        do
        {
          v20 = *(v18 + 8);
          v8 = v20 >= a2;
          v21 = v20 < a2;
          if (v8)
          {
            v19 = v18;
          }

          v18 = v18[v21];
        }

        while (v18);
        if (v19 != (result + 1) && *(v19 + 8) <= a2)
        {
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(result, v19);
          operator delete(v19);
          result = Common::HandlerRegistry::getHandlerInfo(this, a2);
          if (result)
          {
            Common::HandlerRegistry::removeHandler();
          }
        }
      }
    }
  }

  return result;
}

uint64_t Common::HandlerRegistry::getFileFormat(uint64_t a1, const void ***a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4)
  {
    v5 = 1346651680;
    v7 = *a2;
    v8 = &kFileExtMap;
    do
    {
      v9 = strlen(*v8);
      v10 = v9;
      if ((v2 & 0x80) != 0)
      {
        if (v9 == v3)
        {
          v11 = v7;
          if (v3 == -1)
          {
            std::string::__throw_out_of_range[abi:fe200100]();
          }

LABEL_11:
          if (!memcmp(v11, *v8, v10))
          {
            return v5;
          }
        }
      }

      else
      {
        v11 = a2;
        if (v10 == v2)
        {
          goto LABEL_11;
        }
      }

      v5 = *(v8 + 6);
      v8 += 2;
    }

    while (v5);
  }

  return 538976288;
}

uint64_t Common::HandlerRegistry::pickDefaultHandler(void *a1, unsigned int FileFormat, const void ***a3)
{
  if (FileFormat == 538976288)
  {
    FileFormat = Common::HandlerRegistry::getFileFormat(a1, a3);
    if (FileFormat == 538976288)
    {
      return 0;
    }
  }

  v4 = a1[1];
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (v7)
  {
    v8 = v5;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= FileFormat;
      v11 = v9 < FileFormat;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 != v5 && FileFormat >= *(v8 + 32))
    {
      return v8 + 40;
    }
  }

  v12 = a1[2];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (v15)
  {
    v8 = v13;
    do
    {
      v16 = *(v14 + 32);
      v10 = v16 >= FileFormat;
      v17 = v16 < FileFormat;
      if (v10)
      {
        v8 = v14;
      }

      v14 = *(v14 + 8 * v17);
    }

    while (v14);
    if (v8 != v13 && FileFormat >= *(v8 + 32))
    {
      return v8 + 40;
    }
  }

  v18 = *(*a1 + 8);
  if (!v18)
  {
    return 0;
  }

  v19 = *a1 + 8;
  do
  {
    v20 = *(v18 + 32);
    v10 = v20 >= FileFormat;
    v21 = v20 < FileFormat;
    if (v10)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v21);
  }

  while (v18);
  if (v19 == *a1 + 8)
  {
    return 0;
  }

  v22 = *(v19 + 32);
  v23 = v19 + 40;
  if (FileFormat >= v22)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t (**Common::HandlerRegistry::selectSmartHandler(Common::HandlerRegistry *this, XMPFiles *a2, Host_IO *a3, uint64_t a4, int a5))(uint64_t, Host_IO *, uint64_t, XMPFiles *)
{
  memset(&v43, 0, sizeof(v43));
  memset(&v42, 0, sizeof(v42));
  memset(&__p, 0, sizeof(__p));
  memset(v40, 0, sizeof(v40));
  if ((a5 & 8) != 0)
  {
    v12 = Common::HandlerRegistry::pickDefaultHandler(this, a4, v40);
    goto LABEL_73;
  }

  if ((*(a2 + 391) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 47))
    {
LABEL_4:
      FileMode = Host_IO::GetFileMode(a3, a2);
      if ((FileMode & 0xFE) == 2)
      {
        goto LABEL_72;
      }

      MEMORY[0x186602520](&v43, a3);
      XIO::SplitLeafName(&v43, &v42);
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v42.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_72;
      }

      if (FileMode == 1)
      {
        XIO::SplitFileExtension(&v42, &__p, 1);
      }

      goto LABEL_13;
    }
  }

  else if (*(a2 + 391))
  {
    goto LABEL_4;
  }

  if (!*(a2 + 29))
  {
    v38 = "session->ioRef != 0";
    v39 = 591;
    goto LABEL_85;
  }

LABEL_13:
  *(a2 + 56) = 538976288;
  *(a2 + 60) = a5;
  if (a4 == 538976288)
  {
    goto LABEL_32;
  }

  v13 = Common::HandlerRegistry::pickDefaultHandler(this, a4, v40);
  v14 = a5;
  if (v13)
  {
    v12 = v13;
    v15 = *(a2 + 29);
    if (!v15)
    {
      if (*(v13 + 5))
      {
        v15 = 0;
      }

      else
      {
        v15 = XMPFiles_IO::New_XMPFiles_IO(a3, ((a5 & 2) == 0), a2 + 296);
        *(a2 + 29) = v15;
        if (!v15)
        {
          goto LABEL_72;
        }
      }
    }

    *(a2 + 56) = a4;
    v16 = *(v12 + 1);
    if ((v16 & 0x1000) != 0)
    {
      v14 = (a5 & 0x10) != 0 ? 0 : a5;
    }

    else
    {
      v17 = *(a2 + 391);
      if (v17 < 0)
      {
        v17 = *(a2 + 47);
      }

      if ((v16 & 0x900) == 0 || (v14 = a5, v17))
      {
        v18 = v12[1](a4, a3, v15, a2);
        v14 = a5;
        if (v18)
        {
          goto LABEL_73;
        }
      }
    }

    if (*(a2 + 32))
    {
      v38 = "foundHandler || (session->tempPtr == 0)";
      v39 = 668;
LABEL_85:
      __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", v39, v38);
    }
  }

  if ((v14 & 0x10) != 0)
  {
LABEL_72:
    v12 = 0;
    goto LABEL_73;
  }

LABEL_32:
  if ((*(a2 + 391) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 47))
    {
      goto LABEL_46;
    }

LABEL_36:
    v19 = Common::HandlerRegistry::pickDefaultHandler(this, 0x20202020u, &__p);
    if (v19)
    {
      v12 = v19;
      v23 = *(a2 + 29);
      v24 = *(v19 + 4);
      if (v23)
      {
        if ((v24 & 0x100) != 0)
        {
          (*(*v23 + 72))(*(a2 + 29));
          v23 = 0;
          *(a2 + 29) = 0;
        }
      }

      else if ((v24 & 0x100) != 0)
      {
        v23 = 0;
      }

      else
      {
        v23 = XMPFiles_IO::New_XMPFiles_IO(a3, ((a5 & 2) == 0), a2 + 296);
        *(a2 + 29) = v23;
        if (!v23)
        {
          goto LABEL_72;
        }
      }

      v25 = *v12;
      *(a2 + 56) = v25;
      if ((v12[1])(v25, a3, v23, a2, v20, v21, v22))
      {
        goto LABEL_73;
      }

      if (*(a2 + 32))
      {
        __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", 771, "foundHandler || (session->tempPtr == 0)");
      }
    }

    goto LABEL_46;
  }

  if (*(a2 + 391))
  {
    goto LABEL_36;
  }

LABEL_46:
  if (!*(a2 + 29))
  {
    v26 = XMPFiles_IO::New_XMPFiles_IO(a3, ((a5 & 2) == 0), a2 + 296);
    *(a2 + 29) = v26;
    if (!v26)
    {
      goto LABEL_72;
    }
  }

  v27 = *(this + 1);
  v28 = *v27;
  if (*v27 == v27 + 1)
  {
LABEL_57:
    v32 = *(a2 + 391);
    if (v32 < 0)
    {
      v32 = *(a2 + 47);
    }

    if (!v32)
    {
      goto LABEL_72;
    }

    v33 = *(a2 + 29);
    if (v33)
    {
      (*(*v33 + 72))(v33);
    }

    *(a2 + 29) = 0;
    v34 = *(this + 2);
    v28 = *v34;
    if (*v34 == v34 + 1)
    {
      goto LABEL_72;
    }

    while (1)
    {
      *(a2 + 56) = 538976288;
      if ((v28[6])(*(v28 + 10), a3, *(a2 + 29), a2))
      {
        break;
      }

      if (*(a2 + 32))
      {
        __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", 811, "foundHandler || (session->tempPtr == 0)");
      }

      v35 = v28[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v28[2];
          v31 = *v36 == v28;
          v28 = v36;
        }

        while (!v31);
      }

      v12 = 0;
      v28 = v36;
      if (v36 == (*(this + 2) + 8))
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    while (1)
    {
      *(a2 + 56) = 538976288;
      if ((v28[6])(*(v28 + 10), a3, *(a2 + 29), a2))
      {
        break;
      }

      if (*(a2 + 32))
      {
        __assert_rtn("selectSmartHandler", "HandlerRegistry.cpp", 793, "foundHandler || (session->tempPtr == 0)");
      }

      v29 = v28[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v28[2];
          v31 = *v30 == v28;
          v28 = v30;
        }

        while (!v31);
      }

      v28 = v30;
      if (v30 == (*(this + 1) + 8))
      {
        goto LABEL_57;
      }
    }
  }

  v12 = (v28 + 5);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_18612C350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void Common::HandlerRegistry::registerNormalHandler()
{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 247, "! (flags & kXMPFiles_HandlerOwnsFile)");
}

{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 248, "! (flags & kXMPFiles_FolderBasedFormat)");
}

{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 249, "(flags & kXMPFiles_CanInjectXMP) ? (flags & kXMPFiles_CanExpand) : 1");
}

{
  __assert_rtn("registerNormalHandler", "HandlerRegistry.cpp", 245, "format != kXMP_UnknownFile");
}

void Common::HandlerRegistry::removeHandler()
{
  __assert_rtn("removeHandler", "HandlerRegistry.cpp", 362, "! this->getFormatInfo(format)");
}

{
  __assert_rtn("removeHandler", "HandlerRegistry.cpp", 369, "! this->getFormatInfo(format)");
}

{
  __assert_rtn("removeHandler", "HandlerRegistry.cpp", 376, "! this->getFormatInfo(format)");
}

unint64_t PNG_Support::OpenPNG(uint64_t a1, uint64_t a2)
{
  v7 = (*(*a1 + 16))(a1, 8, 0);
  if (v7 != 8)
  {
    return 0;
  }

  v6 = 0;
  v5 = 0;
    ;
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 72) - *(a2 + 64)) >> 3);
}

BOOL PNG_Support::ReadChunk(uint64_t a1, void (****a2)(void), void *a3, _DWORD *a4, uint64_t *a5)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v10 = *a5;
  v32[0] = 0;
  v11 = (**a1)(a1, v32, 8, 0);
  if (v11 == 8)
  {
    v12 = *a5;
    v13 = HIDWORD(v32[0]);
    v14 = bswap32(v32[0]);
    *a4 = v14;
    *a3 = bswap32(v13);
    v15 = v12 + v14 + 12;
    *a5 = v15;
    if (v15 > (*(*a1 + 24))(a1))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 213;
      exception[1] = "Invalid PNG chunk length";
      *(exception + 16) = 0;
    }

    *v30 = v10;
    *&v30[8] = 0;
    *&v30[24] = 0;
    v29 = &unk_1EF4DF7C8;
    *&v30[8] = *a4;
    *&v30[16] = *a3;
    if (*&v30[16] == 1767135348)
    {
      PNG_Support::CheckiTXtChunkHeader(a1, a2, &v29);
    }

    v16 = a2[9];
    v17 = a2[10];
    if (v16 >= v17)
    {
      v20 = a2[8];
      v21 = 0xCCCCCCCCCCCCCCCDLL * (v16 - v20);
      v22 = v21 + 1;
      if (v21 + 1 > 0x666666666666666)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v23 = 0xCCCCCCCCCCCCCCCDLL * (v17 - v20);
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v22;
      }

      v31[4] = a2 + 8;
      if (v24)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<PNG_Support::ChunkData>>((a2 + 8), v24);
      }

      v25 = 40 * v21;
      v31[0] = 0;
      v31[1] = v25;
      v31[3] = 0;
      *v25 = &unk_1EF4DF7C8;
      v26 = *v30;
      *(v25 + 17) = *&v30[9];
      *(v25 + 8) = v26;
      v31[2] = 40 * v21 + 40;
      std::vector<PNG_Support::ChunkData>::__swap_out_circular_buffer(a2 + 8, v31);
      v19 = a2[9];
      std::__split_buffer<PNG_Support::ChunkData>::~__split_buffer(v31);
    }

    else
    {
      *v16 = &unk_1EF4DF7C8;
      v18 = *v30;
      *(v16 + 17) = *&v30[9];
      *(v16 + 1) = v18;
      v19 = v16 + 5;
    }

    a2[9] = v19;
    (*(*a1 + 16))(a1, *a5, 0);
  }

  return v11 == 8;
}

void sub_18612C878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a2)
  {
    std::__split_buffer<PNG_Support::ChunkData>::~__split_buffer(va);
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18612C8B4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18612C8BCLL);
  }

  __clang_call_terminate(a1);
}

__n128 PNG_Support::CheckiTXtChunkHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 16) >= 0x17u)
  {
    v6 = a3 + 8;
    (*(*a1 + 16))(a1, *(a3 + 8) + 8, 0);
    v10 = 0;
    v11[0] = 0;
    *(v11 + 6) = 0;
    if ((**a1)(a1, &v10, 22, 0) == 22 && v10 == 0x2E6D6F633A4C4D58 && v11[0] == 0x6D782E65626F6461 && *(v11 + 6) == 7368056)
    {
      *(a2 + 8) = *(a3 + 8) + 30;
      *(a2 + 16) = *(a3 + 16) - 22;
      result = *v6;
      *(a2 + 41) = *(v6 + 9);
      *(a2 + 32) = result;
      *(a3 + 32) = 1;
    }
  }

  return result;
}

void sub_18612CA2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18612C9C4);
  }

  _Unwind_Resume(a1);
}

BOOL PNG_Support::FindAndReadXMPChunk(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = (*(*a1 + 24))(a1);
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (v6 >= 16)
  {
    if ((*(*a1 + 16))(a1, 8, 0) != -1)
    {
      operator new[]();
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 213;
    exception[1] = "seek failed";
    *(exception + 16) = 0;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  return v7 != 0;
}

void sub_18612CCF0(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    __cxa_rethrow();
  }

  __cxa_rethrow();
}

uint64_t PNG_Support::ExtractXMPPacket(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 < 0x17)
  {
    return 0;
  }

  memset(&__str, 0, sizeof(__str));
  if (a2 <= a4)
  {
    MEMORY[0x186602530](&__str, a3, a2);
  }

  else
  {
    if (a2 + a5 + 8 + 4 > (*(*a1 + 24))(a1))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 213;
      exception[1] = "Invalid PNG chunk length";
      *(exception + 16) = 0;
    }

    MEMORY[0x186602530](&__str, a3, a4);
    *a7 = a5 + 30;
    memset(&__p, 0, sizeof(__p));
    std::string::reserve(&__p, a2 - a4);
    std::string::assign(&__p, a2 - a4, 32);
    (*(*a1 + 16))(a1, a5 + 8 + a4, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    (**a1)(a1, p_p, a2 - a4, 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v16, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(&__p.__r_.__value_.__r.__words[1] + 6) = 7368056;
  *&__p.__r_.__value_.__l.__data_ = *"XML:com.adobe.xmp";
  HIWORD(__p.__r_.__value_.__r.__words[2]) = 5632;
  v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
    if (__str.__r_.__value_.__l.__size_ >= 0x16)
    {
      v19 = 22;
    }

    else
    {
      v19 = __str.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) >= 0x16)
    {
      v19 = 22;
    }

    else
    {
      v19 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    p_str = &__str;
  }

  v21 = memcmp(p_str, &__p, v19);
  v22 = v19 > 0x15 && v21 == 0;
  v7 = v22;
  if (v22)
  {
    if (*(a6 + 23) < 0)
    {
      **a6 = 0;
      *(a6 + 8) = 0;
    }

    else
    {
      *a6 = 0;
      *(a6 + 23) = 0;
    }

    std::string::basic_string(&__p, &__str, 0x16uLL, 0xFFFFFFFFFFFFFFFFLL, &v27);
    if (*(a6 + 23) < 0)
    {
      operator delete(*a6);
    }

    *a6 = __p;
    v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v18 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_18612D044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18612D1E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D1B8);
}

uint64_t PNG_Support::CalculateCRC(PNG_Support *this, unsigned __int8 *a2)
{
  if ((CRC::crc_table_computed & 1) == 0)
  {
    for (i = 0; i != 256; ++i)
    {
      v3 = 8;
      v4 = i;
      do
      {
        if (v4)
        {
          v4 = (v4 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v4 >>= 1;
        }

        --v3;
      }

      while (v3);
      CRC::crc_table[i] = v4;
    }

    CRC::crc_table_computed = 1;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  v6 = 0xFFFFFFFFLL;
  do
  {
    v7 = *this;
    this = (this + 1);
    v6 = CRC::crc_table[(v7 ^ v6)] ^ (v6 >> 8);
    --v5;
  }

  while (v5);
  return v6 ^ 0xFFFFFFFF;
}

uint64_t PNG_Support::CopyChunk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 16))(a1, *(a3 + 8), 0);
  XIO::Copy(a1, a2, (*(a3 + 16) + 12), 0, 0, v6, v7);
  return 1;
}

void sub_18612D300(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D2F0);
}

void sub_18612D478(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D450);
}

uint64_t PNG_Support::WriteBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1)
  {
    if (a4)
    {
      (*(*a1 + 16))(a1, *a2, 0);
      (*(*a1 + 8))(a1, a4, a3);
      return 1;
    }
  }

  return result;
}

void sub_18612D548(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18612D538);
}

void (***std::vector<PNG_Support::ChunkData>::__swap_out_circular_buffer(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 8 * (v6 - result);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_1EF4DF7C8;
      v12 = *(v10 + 1);
      *(v11 + 17) = *(v10 + 17);
      *(v11 + 1) = v12;
      v10 += 5;
      v11 += 5;
      v9 += 40;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 5;
      (*v15)();
      v13 += 5;
      result = v14;
    }

    while (v14 != v6);
  }

  a2[1] = v8;
  v16 = *a1;
  *a1 = v8;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<PNG_Support::ChunkData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__split_buffer<PNG_Support::ChunkData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *AdobeXMPCore_Int::StructureNodeImpl::StructureNodeImpl(void *this, const char *a2, unint64_t a3, const char *a4)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 864)) = *(a2 + 1);
  *(this + *(*this - 792)) = *(a2 + 2);
  *(this + *(*this - 688)) = *(a2 + 3);
  *(this + *(*this - 544)) = *(a2 + 4);
  *(this + *(*this - 56)) = *(a2 + 5);
  *(this + *(*this - 64)) = *(a2 + 6);
  *(this + *(*this - 72)) = *(a2 + 7);
  *(this + *(*this - 800)) = *(a2 + 8);
  *(this + *(*this - 808)) = *(a2 + 9);
  *(this + *(*this - 816)) = *(a2 + 10);
  *(this + *(*this - 824)) = *(a2 + 11);
  *(this + *(*this - 872)) = *(a2 + 12);
  *(this + *(*this - 880)) = *(a2 + 13);
  *(this + *(*this - 888)) = *(a2 + 14);
  *(this + *(*this - 896)) = *(a2 + 15);
  this[3] = 0;
  this[2] = 0;
  this[1] = this + 2;
  return this;
}

void AdobeXMPCore_Int::StructureNodeImpl::StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3, AdobeXMPCore_Int *a4, const char *a5)
{
  *(this + 22) = &unk_1EF4E86C0;
  *this = &unk_1EF4E7EE8;
  *(this + 4) = off_1EF4E8190;
  *(this + unk_1EF4E7EA0) = &unk_1EF4E81F0;
  *this = &unk_1EF4E78A0;
  *(this + unk_1EF4E7860) = off_1EF4E7BA8;
  *(this + *(*this - 72)) = &unk_1EF4E7C08;
  *(this + 19) = &unk_1EF4EA258;
  *(this + 6) = &unk_1EF4E9A58;
  *this = &unk_1EF4E9EC8;
  *(this + 4) = off_1EF4EA0E8;
  *(this + 22) = &unk_1EF4EA1D0;
  *(this + unk_1EF4E9830 + 48) = &unk_1EF4EA148;
  *(this + *(*(this + 6) - 560) + 48) = &unk_1EF4EA1D0;
  *(this + 5) = &unk_1EF4E89D0;
  *this = &unk_1EF4E8F08;
  *(this + 4) = off_1EF4E91B0;
  *(this + 22) = &unk_1EF4E9780;
  *(this + unk_1EF4E8718 + 40) = &unk_1EF4E9460;
  *(this + *(*(this + 5) - 704) + 40) = &unk_1EF4E96F8;
  *(this + *(*(this + 5) - 712) + 40) = &unk_1EF4E9780;
  *this = &unk_1EF4E66E8;
  *(this + unk_1EF4E66B0) = &unk_1EF4E66E8;
  *(this + *(*this - 64)) = off_1EF4E6A10;
  *(this + *(*this - 72)) = &unk_1EF4E7548;
  *(this + *(*this - 800)) = &unk_1EF4E6D08;
  *(this + *(*this - 808)) = &unk_1EF4E7228;
  *(this + *(*this - 816)) = &unk_1EF4E74C0;
  *(this + *(*this - 824)) = &unk_1EF4E7548;
  *(this + 19) = off_1EF4EBFE8;
  *(this + 20) = 0;
  *this = off_1EF4EC048;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 21) = 0;
  *(this + 22) = off_1EF4EC0D0;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((this + 48), off_1EF4E6310, a2, a3, a4, a5);
}

void sub_18612E290(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF4E6378);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4E6360);
  _Unwind_Resume(a1);
}

uint64_t *AdobeXMPCore_Int::CompositeNodeImpl::CompositeNodeImpl(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 736)) = a2[1];
  *(this + *(*this - 688)) = a2[2];
  *(this + *(*this - 544)) = a2[3];
  *(this + *(*this - 56)) = a2[4];
  *(this + *(*this - 64)) = a2[5];
  *(this + *(*this - 72)) = a2[6];
  *(this + *(*this - 696)) = a2[7];
  *(this + *(*this - 704)) = a2[8];
  *(this + *(*this - 712)) = a2[9];
  *(this + *(*this - 744)) = a2[10];
  *(this + *(*this - 752)) = a2[11];
  *(this + *(*this - 760)) = a2[12];
  return this;
}

void AdobeXMPCore_Int::StructureNodeImpl::GetNode(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if ((*(**a2 + 208))() && (*(**a3 + 208))())
  {
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = a3[1];
    v15 = *a3;
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v12, 0, sizeof(v12));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v12, a1 + *(*a1 - 896) + 8, 0);
    v10 = std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>((a1 + 1), &v13);
    if (a1 + 2 != v10)
    {
      v11 = v10[8];
      (**&v11[*(*v11 - 56)])(&v11[*(*v11 - 56)]);
      std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a4, v11, AdobeXMPCommon::ISharedObject::Release, 0);
    }

    *a4 = 0;
    a4[1] = 0;
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v12);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_18612E850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(AdobeXMPCore_Int::StructureNodeImpl::QualifiedName *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void AdobeXMPCore_Int::StructureNodeImpl::GetNode(AdobeXMPCore_Int::StructureNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3, const char *a4)
{
  v4 = 0;
  v5 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_18612E9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::StructureNodeImpl::RemoveNode(uint64_t **a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*(**a2 + 208))() && (*(**a3 + 208))())
  {
    v8 = a2[1];
    v15 = *a2;
    v16 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = a3[1];
    v17 = *a3;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v14, 0, sizeof(v14));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v14, a1 + *(*a1 - 112) + 8, 1);
    v10 = std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>((a1 + 1), &v15);
    if (a1 + 2 == v10)
    {
      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      v12 = v10[8];
      v11 = v10[9];
      *a4 = v12;
      a4[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::erase(a1 + 1, v10);
      v13 = (*(*v12 + 280))(v12);
      (*(*v13 + 504))(v13, 0);
    }

    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v14);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v18);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v16);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_18612EBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, uint64_t *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(va1);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::RemoveNode(AdobeXMPCore_Int::StructureNodeImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3, const char *a4)
{
  v4 = 0;
  v5 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_18612ED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::StructureNodeImpl::GetChildNodeType(AdobeXMPCore_Int::StructureNodeImpl *this, const char *a2, unint64_t a3, const char *a4)
{
  (*(*(this + *(*this - 792)) + 648))(&v7);
  v4 = v8;
  if (!v7)
  {
    v5 = 0;
    if (!v8)
    {
      return v5;
    }

    goto LABEL_3;
  }

  v5 = (*(*v7 + 40))(v7);
  if (v4)
  {
LABEL_3:
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  return v5;
}

void sub_18612EE30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::StructureNodeImpl::InsertNode(void *a1, uint64_t *a2)
{
  v4 = a1 + *(*a1 - 872);
  v5 = a2[1];
  *&v12 = *a2;
  *(&v12 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 656))(v4, &v12);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  if (v6)
  {
    v12 = 0u;
    v13 = 0u;
    (*(**a2 + 88))(&v9);
    (*(**a2 + 72))(&v11);
    v12 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v11 + 1));
      }
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v9 + 1));
    }

    v9 = 0uLL;
    v10 = 0;
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v9, a1 + *(*a1 - 896) + 8, 1);
    if (a1 + 2 == std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>((a1 + 1), &v12))
    {
      v7 = *a2;
      v8 = (*a2 + *(**a2 - 56));
      (**v8)(v8);
      std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(&v11, v7, AdobeXMPCommon::ISharedObject::Release, 0);
    }

    v11 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }
}