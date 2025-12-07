void sub_245090890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, IOProcBrain *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  IOProcBrain::~IOProcBrain(&a12);

  _Unwind_Resume(a1);
}

uint64_t ADMIO::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=((a1 + 32), a2 + 32);
  if (a1 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
    std::vector<AMCP::Proc_Stream>::__assign_with_size[abi:ne200100]<AMCP::Proc_Stream*,AMCP::Proc_Stream*>((a1 + 112), *(a2 + 112), *(a2 + 120), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 120) - *(a2 + 112)) >> 4));
    std::vector<AudioBufferList>::__assign_with_size[abi:ne200100]<AudioBufferList*,AudioBufferList*>((a1 + 136), *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 3));
    std::vector<AMCP::Proc_Stream>::__assign_with_size[abi:ne200100]<AMCP::Proc_Stream*,AMCP::Proc_Stream*>((a1 + 160), *(a2 + 160), *(a2 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 168) - *(a2 + 160)) >> 4));
    std::vector<AudioBufferList>::__assign_with_size[abi:ne200100]<AudioBufferList*,AudioBufferList*>((a1 + 184), *(a2 + 184), *(a2 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 192) - *(a2 + 184)) >> 3));
  }

  return a1;
}

void *std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_245090DFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void **std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E22920, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void **std::vector<AMCP::Proc_Stream>::__assign_with_size[abi:ne200100]<AMCP::Proc_Stream*,AMCP::Proc_Stream*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x333333333333333)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x199999999999999)
      {
        v11 = 0x333333333333333;
      }

      else
      {
        v11 = v10;
      }

      std::vector<AMCP::Proc_Stream>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 4) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<AMCP::Proc_Stream>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AMCP::Proc_Stream>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AMCP::Proc_Stream>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::vector<AudioBufferList>::__assign_with_size[abi:ne200100]<AudioBufferList*,AudioBufferList*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<AudioBufferList>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<AudioBufferList>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AudioBufferList>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AudioBufferList>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

IOLapseHandler *std::unique_ptr<IOLapseHandler>::reset[abi:ne200100](IOLapseHandler **a1, IOLapseHandler *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IOLapseHandler::~IOLapseHandler(result);

    JUMPOUT(0x245D62DC0);
  }

  return result;
}

void ExADUseCaseFormatForUseCaseFromEDT(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  ExADUseCaseFormatsFromEDT(v7, a3, &v14);
  if (v16)
  {
    v8 = v14;
    v9 = v14;
    if (v14 != v15)
    {
      v9 = v14;
      while (*v9 != a2)
      {
        v9 += 2;
        if (v9 == v15)
        {
          goto LABEL_10;
        }
      }
    }

    if (v9 == v15)
    {
LABEL_10:
      if (a3)
      {
        v12 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA450];
        v18[0] = @"useCaseID not found in EDT table";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        *a3 = [v12 errorWithDomain:@"EDTReadingErrorDomain" code:0 userInfo:v13];
      }

      v11 = 0;
      *a4 = 0;
    }

    else
    {
      v10 = v9[1];
      *a4 = *v9;
      *(a4 + 16) = v10;
      v11 = 1;
    }

    *(a4 + 32) = v11;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 32) = 0;
  }
}

void sub_2450918A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void ExADUseCaseFormatsFromEDT(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 createCFTypeRefForKey:@"use-case-client-format" atPath:@"IODeviceTree:/product/audio" error:a2];
  v7 = v6;
  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 24) = 0;
    goto LABEL_16;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFDataGetTypeID())
  {
    if (a2)
    {
      v12 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"wrong data type, expecting CFData";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a2 = [v12 errorWithDomain:@"EDTReadingErrorDomain" code:3 userInfo:v13];
    }

    CFRelease(v7);
    goto LABEL_10;
  }

  theData = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D62D80](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  Length = CFDataGetLength(theData);
  v11 = Length;
  if (!Length || (Length & 0x1F) != 0)
  {
    if (a2)
    {
      v14 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size error: %ld, expecting a multiple >0 of : %lu", Length, 32];
      v22 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a2 = [v14 errorWithDomain:@"EDTReadingErrorDomain" code:4 userInfo:v16];
    }

    *a3 = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    std::vector<ExADUseCaseFormat>::vector[abi:ne200100](buffer, Length >> 5);
    v25.location = 0;
    v25.length = v11;
    CFDataGetBytes(theData, v25, buffer[0]);
    *a3 = *buffer;
    *(a3 + 16) = v19;
    *(a3 + 24) = 1;
  }

  if (theData)
  {
    CFRelease(theData);
  }

LABEL_16:
}

void sub_245091FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  applesauce::CF::DataRef::~DataRef(va);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::vector<ExADUseCaseFormat>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<ExADUseCaseFormat>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_245092114(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ExADUseCaseFormat>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ExADUseCaseFormat>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ExADUseCaseFormat>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t IsolatedDeviceIOProc(int a1, const AudioTimeStamp *a2, const AudioBufferList *a3, const AudioTimeStamp *a4, AudioBufferList *a5, const AudioTimeStamp *a6, void (***a7)(void, int *))
{
  if (a7)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    (**a7)(a7, &v8);
  }

  return 0;
}

uint64_t StartIOProcAtTime(AudioObjectID a1, OSStatus (__cdecl *a2)(AudioObjectID, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), UInt64 a3)
{
  v4.mSampleTime = 0.0;
  memset(&v4.mRateScalar, 0, 48);
  v4.mHostTime = a3;
  v4.mFlags = 2;
  return AudioDeviceStartAtTime(a1, a2, &v4, 9u);
}

void IOLapseHandler::IOLapseHandler(IOLapseHandler *this, void (*a2)(int, void *), void *a3)
{
  *this = &unk_2857FEC50;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = 0;
}

{
  *this = &unk_2857FEC50;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = 0;
}

void IOLapseHandler::handleLapse(IOLapseHandler *this, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sIsolatedCoreAudioOrchestrationLog(this, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = atomic_load(this + 24);
    v7 = 136315906;
    v8 = "IOLapseHandler.cpp";
    v9 = 1024;
    v10 = 18;
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = v5 & 1;
    _os_log_impl(&dword_24508F000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Handle Lapse - %u and has Started: %d", &v7, 0x1Eu);
  }

  v6 = atomic_load(this + 24);
  if (v6)
  {
    (*(this + 1))(a2, *(this + 2));
  }
}

uint64_t sIsolatedCoreAudioOrchestrationLog(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27EDF8488, memory_order_acquire) & 1) == 0)
  {
    sIsolatedCoreAudioOrchestrationLog();
  }

  return _MergedGlobals;
}

{
  if ((atomic_load_explicit(byte_27EDF8498, memory_order_acquire) & 1) == 0)
  {
    sIsolatedCoreAudioOrchestrationLog();
  }

  return _MergedGlobals_0;
}

void IOLapseHandler::setIOHasStarted(IOLapseHandler *this, uint64_t a2)
{
  v2 = a2;
  v14 = *MEMORY[0x277D85DE8];
  v4 = sIsolatedCoreAudioOrchestrationLog(this, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = atomic_load(this + 24);
    v6 = 136315906;
    v7 = "IOLapseHandler.cpp";
    v8 = 1024;
    v9 = 27;
    v10 = 1024;
    v11 = v5 & 1;
    v12 = 1024;
    v13 = v2;
    _os_log_impl(&dword_24508F000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Set IO Has Started: %d -> %d", &v6, 0x1Eu);
  }

  atomic_store(v2, this + 24);
}

uint64_t std::function<void ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_245092AE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = DSPController;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_245092C34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ADMIOConfiguration::~ADMIOConfiguration(ADMIOConfiguration *this)
{
  begin = this->outputStreamIndicesInIOProc.__begin_;
  if (begin)
  {
    this->outputStreamIndicesInIOProc.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->inputStreamIndicesInIOProc.__begin_;
  if (v3)
  {
    this->inputStreamIndicesInIOProc.__end_ = v3;
    operator delete(v3);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](&this->admCallback);
}

uint64_t std::__function::__value_func<void ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

double ADMIO::timeStamp@<D0>(ADMIO *this@<X0>, _OWORD *a2@<X8>)
{
  if (this)
  {
    v2 = *&this->ioInfo.contextID;
    *a2 = *&this->_vptr$IOProcCallable;
    a2[1] = v2;
    v3 = *this->ioInfo.admCallback.__f_.__buf_.__data;
    v4 = *&this->ioInfo.admCallback.__f_.__buf_.__data[16];
    a2[2] = v3;
    a2[3] = v4;
  }

  else
  {
    *&v3 = 0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v3;
}

void *ADMIO::doIO(void *result, void *a2)
{
  if (result[7])
  {
    v3 = result;
    ADMIO::translateABLsToProc_Stream(result, a2);
    v4 = a2[1];
    if (v4)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[3];
      v19 = v4[2];
      v20 = v7;
      v18 = v6;
    }

    else
    {
      v5 = 0uLL;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }

    v17 = v5;
    v8 = *(v3 + 4);
    v9 = a2[3];
    if (v9)
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v23 = v9[2];
      v24 = v12;
      v22 = v11;
    }

    else
    {
      v10 = 0uLL;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
    }

    v21 = v10;
    v13 = a2[5];
    if (v13)
    {
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[3];
      v27 = v13[2];
      v28 = v16;
      v26 = v15;
    }

    else
    {
      v14 = 0uLL;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }

    v25 = v14;
    v29 = 0;
    return std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()((v3 + 4), v8, &v17, 0xCCCCCCCCCCCCCCCDLL * ((v3[15] - v3[14]) >> 4), v3[14], 0xCCCCCCCCCCCCCCCDLL * ((v3[21] - v3[20]) >> 4), v3[20]);
  }

  return result;
}

unsigned int *ADMIO::translateABLsToProc_Stream(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  if (v5)
  {
    v6 = v5[1];
    v13 = *v5;
    v14 = v6;
    v7 = v5[3];
    v15 = v5[2];
    v16 = v7;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  ADMIO::translateABLsToProc_Stream(v4, &v13, a1 + 8, a1 + 14);
  v8 = a2[4];
  v9 = a2[5];
  if (v9)
  {
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v11 = v9[3];
    v15 = v9[2];
    v16 = v11;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  return ADMIO::translateABLsToProc_Stream(v8, &v13, a1 + 11, a1 + 20);
}

uint64_t std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v12 = a4;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v13, a3, &v12, &v11, &v10, &v9);
}

unsigned int *ADMIO::translateABLsToProc_Stream(unsigned int *result, __int128 *a2, void *a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - *a4) >> 4) != (a3[1] - *a3) >> 3)
  {
    ADMIO::translateABLsToProc_Stream();
  }

  if (v5 != v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v4 + v6;
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[3];
      *(v8 + 32) = a2[2];
      *(v8 + 48) = v11;
      *v8 = v9;
      *(v8 + 16) = v10;
      if (result)
      {
        v12 = *(*a3 + 8 * v7);
        if (v12 < *result)
        {
          *(*(v4 + v6 + 72) + 8) = *&result[4 * v12 + 2];
        }
      }

      else
      {
        v13 = *(v8 + 72);
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
      }

      ++v7;
      v4 = *a4;
      v6 += 80;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 4));
  }

  return result;
}

void ADMIO::configureADMIO(ADMIO *this, const ADMIOConfiguration *a2)
{
  p_ioInfo = &this->ioInfo;
  *&this->ioInfo.contextID = *&a2->contextID;
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(this->ioInfo.admCallback.__f_.__buf_.__data, &a2->admCallback);
  if (p_ioInfo != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&this->ioInfo.inputStreamIndicesInIOProc.__begin_, a2->inputStreamIndicesInIOProc.__begin_, a2->inputStreamIndicesInIOProc.__end_, a2->inputStreamIndicesInIOProc.__end_ - a2->inputStreamIndicesInIOProc.__begin_);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&this->ioInfo.outputStreamIndicesInIOProc.__begin_, a2->outputStreamIndicesInIOProc.__begin_, a2->outputStreamIndicesInIOProc.__end_, a2->outputStreamIndicesInIOProc.__end_ - a2->outputStreamIndicesInIOProc.__begin_);
  }

  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(__p, a2->inputStreamIndicesInIOProc.__end_ - a2->inputStreamIndicesInIOProc.__begin_, this->ioInfo.frameBufferSize);
  begin = this->admInputs.streams.__begin_;
  if (begin)
  {
    this->admInputs.streams.__end_ = begin;
    operator delete(begin);
  }

  *&this->admInputs.streams.__begin_ = *__p;
  this->admInputs.streams.__cap_ = v10;
  __p[1] = 0;
  v10 = 0;
  __p[0] = 0;
  v6 = this->admInputs.abls.__begin_;
  if (v6)
  {
    this->admInputs.abls.__end_ = v6;
    operator delete(v6);
    v6 = __p[0];
  }

  *&this->admInputs.abls.__begin_ = v11;
  this->admInputs.abls.__cap_ = v12;
  v12 = 0;
  v11 = 0uLL;
  if (v6)
  {
    __p[1] = v6;
    operator delete(v6);
  }

  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(__p, a2->outputStreamIndicesInIOProc.__end_ - a2->outputStreamIndicesInIOProc.__begin_, this->ioInfo.frameBufferSize);
  v7 = this->admOutputs.streams.__begin_;
  if (v7)
  {
    this->admOutputs.streams.__end_ = v7;
    operator delete(v7);
  }

  *&this->admOutputs.streams.__begin_ = *__p;
  this->admOutputs.streams.__cap_ = v10;
  __p[1] = 0;
  v10 = 0;
  __p[0] = 0;
  v8 = this->admOutputs.abls.__begin_;
  if (v8)
  {
    this->admOutputs.abls.__end_ = v8;
    operator delete(v8);
    v8 = __p[0];
  }

  *&this->admOutputs.abls.__begin_ = v11;
  this->admOutputs.abls.__cap_ = v12;
  v12 = 0;
  v11 = 0uLL;
  if (v8)
  {
    __p[1] = v8;
    operator delete(v8);
  }
}

ADMIO::ADMStreamsAndABLs *ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(ADMIO::ADMStreamsAndABLs *this, unint64_t a2, int a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v20 = a3;
  v21 = 0;
  v22 = 0;
  std::vector<AMCP::Proc_Stream>::vector[abi:ne200100](&v23, a2, &v16);
  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  *this = v23;
  *(this + 2) = v24;
  v23 = 1uLL;
  v24 = 0;
  std::vector<AudioBufferList>::vector[abi:ne200100](&v16, a2, &v23);
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  v7 = v16;
  *(this + 24) = v16;
  *(this + 5) = v17;
  if (a2)
  {
    v8 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(a2 - 1);
    v10 = v7;
    v11 = xmmword_2450E7190;
    v12 = (*this + 152);
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (v14.i8[0])
      {
        *(v12 - 10) = v10;
      }

      if (v14.i8[4])
      {
        *v12 = v10 + 24;
      }

      v11 = vaddq_s64(v11, v13);
      v12 += 20;
      v10 += 48;
      v8 -= 2;
    }

    while (v8);
  }

  return this;
}

void sub_245093314(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<AMCP::Proc_Stream>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, _OWORD *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<AMCP::Proc_Stream>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2450933C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<AudioBufferList>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<AudioBufferList>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_245093454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *LapseEvents@<X0>(uint64_t *a5@<X8>)
{
  *&var8 = *MEMORY[0x277D85DE8];
  *&v6 = 0x676C6F62676F696ELL;
  DWORD2(v6) = 0;
  v7 = IsolatedDeviceIsRunningEventListener;
  v8 = 0x676C6F6273747064;
  v9 = 0;
  v10 = IsolatedDeviceStoppedAbruptlyEventListener;
  v11 = 0x676C6F626C69766ELL;
  v12 = 0;
  v13 = IsolatedDeviceIsAliveEventListener;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  return std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(a5, &v6, &var8, 3uLL);
}

uint64_t IsolatedDeviceIsRunningEventListener(AudioObjectID a1, unsigned int a2, const AudioObjectPropertyAddress *a3, void (***a4)(void, uint64_t))
{
  v19 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 1;
  *&inAddress.mSelector = *"niogbolg";
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (!PropertyData)
  {
    v7 = sIsolatedCoreAudioOrchestrationLog(PropertyData, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "HALEventListener.cpp";
      v15 = 1024;
      v16 = 45;
      v17 = 1024;
      v18 = outData;
      _os_log_impl(&dword_24508F000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Recevied isRunning notification: %u", buf, 0x18u);
    }

    if (!outData)
    {
      callLapseHandler(a4, v8);
    }
  }

  return 0;
}

uint64_t IsolatedDeviceStoppedAbruptlyEventListener(AudioObjectID a1, unsigned int a2, const AudioObjectPropertyAddress *a3, void (***a4)(void, uint64_t))
{
  v19 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"dptsbolg";
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (!PropertyData)
  {
    v7 = sIsolatedCoreAudioOrchestrationLog(PropertyData, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "HALEventListener.cpp";
      v15 = 1024;
      v16 = 67;
      v17 = 1024;
      v18 = outData;
      _os_log_impl(&dword_24508F000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Recevied Abnormally Stopped notification: %u", buf, 0x18u);
    }

    callLapseHandler(a4, v8);
  }

  return 0;
}

uint64_t IsolatedDeviceIsAliveEventListener(AudioObjectID a1, unsigned int a2, const AudioObjectPropertyAddress *a3, void (***a4)(void, uint64_t))
{
  v19 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"nvilbolg";
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (!PropertyData)
  {
    v7 = sIsolatedCoreAudioOrchestrationLog(PropertyData, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "HALEventListener.cpp";
      v15 = 1024;
      v16 = 87;
      v17 = 1024;
      v18 = outData;
      _os_log_impl(&dword_24508F000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Recevied Device is Alive notification: %u", buf, 0x18u);
    }

    if (!outData)
    {
      callLapseHandler(a4, v8);
    }
  }

  return 0;
}

uint64_t CreateLapseHandlingEventListeners(AudioObjectID a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v37 + 1) = *MEMORY[0x277D85DE8];
  strcpy(buf, "niogbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  *&v31[2] = IsolatedDeviceIsRunningEventListener;
  strcpy(&v31[10], "dptsbolg");
  v31[19] = 0;
  v32 = 0;
  v33 = IsolatedDeviceStoppedAbruptlyEventListener;
  v34 = 0x676C6F626C69766ELL;
  v35 = 0;
  v36 = IsolatedDeviceIsAliveEventListener;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(&v26, buf, &v37, 3uLL);
  v10 = v26;
  v11 = v27;
  if (v26 == v27)
  {
    v13 = 0;
    if (!v26)
    {
      return v13;
    }

    goto LABEL_11;
  }

  do
  {
    v12 = *v10;
    inAddress.mElement = *(v10 + 2);
    *&inAddress.mSelector = v12;
    v13 = AudioObjectAddPropertyListener(a1, &inAddress, *(v10 + 2), a2);
    v15 = sIsolatedCoreAudioOrchestrationLog(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16.i32[0] = bswap32(inAddress.mSelector);
      v17 = vzip1_s8(v16, v16);
      v18.i64[0] = 0x1F0000001FLL;
      v18.i64[1] = 0x1F0000001FLL;
      v19.i64[0] = 0x5F0000005FLL;
      v19.i64[1] = 0x5F0000005FLL;
      v24 = 4;
      v20 = vbsl_s8(vmovn_s32(vcgtq_u32(v19, vsraq_n_s32(v18, vshlq_n_s32(vmovl_u16(v17), 0x18uLL), 0x18uLL))), v17, 0x2E002E002E002ELL);
      LODWORD(__p) = vuzp1_s8(v20, v20).u32[0];
      BYTE4(__p) = 0;
      *buf = 136315906;
      *&buf[4] = "HALEventListener.cpp";
      v30 = 1024;
      *v31 = 113;
      *&v31[4] = 2080;
      *&v31[6] = &__p;
      *&v31[14] = 1024;
      *&v31[16] = v13;
      _os_log_impl(&dword_24508F000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Creating Lapse Handler Event: %s - status: %u", buf, 0x22u);
      if (v24 < 0)
      {
        operator delete(__p);
      }
    }

    v10 += 24;
    if (v13)
    {
      v21 = 1;
    }

    else
    {
      v21 = v10 == v11;
    }
  }

  while (!v21);
  v10 = v26;
  if (v26)
  {
LABEL_11:
    v27 = v10;
    operator delete(v10);
  }

  return v13;
}

uint64_t DestroyLapseHandlingEventListeners(AudioObjectID a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v26 = *MEMORY[0x277D85DE8];
  *&inAddress.mSelector = 0x676C6F62676F696ELL;
  inAddress.mElement = 0;
  v19 = IsolatedDeviceIsRunningEventListener;
  v20 = 0x676C6F6273747064;
  v21 = 0;
  v22 = IsolatedDeviceStoppedAbruptlyEventListener;
  v23 = 0x676C6F626C69766ELL;
  v24 = 0;
  v25 = IsolatedDeviceIsAliveEventListener;
  v16 = 0;
  v17 = 0;
  __p = 0;
  std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(&__p, &inAddress, &v26, 3uLL);
  v9 = __p;
  v10 = v16;
  if (__p == v16)
  {
    v12 = 0;
    if (!__p)
    {
      return v12;
    }

    goto LABEL_8;
  }

  do
  {
    v11 = *v9;
    inAddress.mElement = *(v9 + 2);
    *&inAddress.mSelector = v11;
    v12 = AudioObjectRemovePropertyListener(a1, &inAddress, *(v9 + 2), 0);
    v9 += 24;
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9 == v10;
    }
  }

  while (!v13);
  v9 = __p;
  if (__p)
  {
LABEL_8:
    v16 = v9;
    operator delete(v9);
  }

  return v12;
}

void callLapseHandler(void (***a1)(void, uint64_t), uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sIsolatedCoreAudioOrchestrationLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "HALEventListener.cpp";
    v6 = 1024;
    v7 = 24;
    _os_log_impl(&dword_24508F000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Calling Lapse Handler", &v4, 0x12u);
  }

  if (a1)
  {
    (**a1)(a1, 1);
  }
}

uint64_t *std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2450940F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_245094360(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CoreAudioOrchestration_ADM_Loader;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void IOProcBrain::IOProcBrain(IOProcBrain *this)
{
  this->_vptr$IOProcCallable = &unk_2857FED20;
  this->_vptr$ADMIOConfigurable = &unk_2857FED40;
  this->admIOProc._vptr$IOProcCallable = &unk_2857FEC90;
  this->admIOProc._vptr$ADMIOConfigurable = &unk_2857FECB0;
  *&this->admIOProc.ioInfo.admCallback.__f_.__f_ = 0u;
  *&this->admIOProc.ioInfo.inputStreamIndicesInIOProc.__end_ = 0u;
  *&this->admIOProc.ioInfo.outputStreamIndicesInIOProc.__begin_ = 0u;
  this->admIOProc.ioInfo.outputStreamIndicesInIOProc.__cap_ = 0;
  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(&this->admIOProc.admInputs, 0, 0);
  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(&this->admIOProc.admOutputs, 0, 0);
}

void sub_245094580(_Unwind_Exception *a1)
{
  ADMIO::ADMStreamsAndABLs::~ADMStreamsAndABLs((v1 + 144));
  ADMIOConfiguration::~ADMIOConfiguration((v1 + 48));
  _Unwind_Resume(a1);
}

void IOProcBrain::~IOProcBrain(IOProcBrain *this)
{
  this->_vptr$IOProcCallable = &unk_2857FED20;
  this->_vptr$ADMIOConfigurable = &unk_2857FED40;
  ADMIO::~ADMIO(&this->admIOProc);
}

{
  this->_vptr$IOProcCallable = &unk_2857FED20;
  this->_vptr$ADMIOConfigurable = &unk_2857FED40;
  ADMIO::~ADMIO(&this->admIOProc);
}

void *IOProcBrain::doIO(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *(a2 + 32);
  result = ADMIO::doIO(a1 + 4, v7);
  v6 = a1[2];
  if (v6)
  {
    return v6(*(*(a2 + 24) + 8), **(a2 + 24), a1[3]);
  }

  return result;
}

void *IOProcBrain::doDSPInput(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return ADMIO::doIO((a1 + 32), v4);
}

uint64_t IOProcBrain::doClientIO(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    return v2(*(*(a2 + 24) + 8), **(a2 + 24), *(result + 24));
  }

  return result;
}

uint64_t IOProcBrain::installClientIOProc(IOProcBrain *this, int (*a2)(unint64_t, unint64_t, void *), void *a3)
{
  this->mClientIOProc.mProvidedCallback = a2;
  this->mClientIOProc.mProvidedClientData = a3;
  return 0;
}

uint64_t IOProcBrain::uninstallClientIOProc(IOProcBrain *this)
{
  this->mClientIOProc.mProvidedCallback = 0;
  this->mClientIOProc.mProvidedClientData = 0;
  return 0;
}

void ADMIO::ADMStreamsAndABLs::~ADMStreamsAndABLs(ADMIO::ADMStreamsAndABLs *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void ADMIO::~ADMIO(ADMIO *this)
{
  this->_vptr$IOProcCallable = &unk_2857FEC90;
  this->_vptr$ADMIOConfigurable = &unk_2857FECB0;
  begin = this->admOutputs.abls.__begin_;
  if (begin)
  {
    this->admOutputs.abls.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->admOutputs.streams.__begin_;
  if (v3)
  {
    this->admOutputs.streams.__end_ = v3;
    operator delete(v3);
  }

  v4 = this->admInputs.abls.__begin_;
  if (v4)
  {
    this->admInputs.abls.__end_ = v4;
    operator delete(v4);
  }

  v5 = this->admInputs.streams.__begin_;
  if (v5)
  {
    this->admInputs.streams.__end_ = v5;
    operator delete(v5);
  }

  v6 = this->ioInfo.outputStreamIndicesInIOProc.__begin_;
  if (v6)
  {
    this->ioInfo.outputStreamIndicesInIOProc.__end_ = v6;
    operator delete(v6);
  }

  v7 = this->ioInfo.inputStreamIndicesInIOProc.__begin_;
  if (v7)
  {
    this->ioInfo.inputStreamIndicesInIOProc.__end_ = v7;
    operator delete(v7);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](&this->ioInfo.admCallback);
}

uint64_t GetEntryForPath@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = 0;
  if (a1)
  {
    if (!MEMORY[0x245D62CE0](*MEMORY[0x277D85F18], &v5))
    {
      result = IORegistryEntryFromPath(v5, a1);
      goto LABEL_7;
    }

    printf("%s: Failed to get IOMainPort.\n");
  }

  else
  {
    printf("%s: Invalid argumnents: %p\n");
  }

  result = 0;
LABEL_7:
  *a2 = result;
  return result;
}

void sub_245094ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, io_object_t a10)
{
  RegistryEntry::~RegistryEntry(&a10);

  _Unwind_Resume(a1);
}

void RegistryEntry::~RegistryEntry(io_object_t *this)
{
  v1 = *this;
  if (v1)
  {
    IOObjectRelease(v1);
  }
}

uint64_t sub_245094B9C()
{
  v1 = *v0;
  sub_2450E5EF8();
  MEMORY[0x245D62B90](v1);
  return sub_2450E5F38();
}

uint64_t sub_245094C10(uint64_t a1)
{
  v2 = *v1;
  sub_2450E5EF8();
  MEMORY[0x245D62B90](v2);
  return sub_2450E5F38();
}

unint64_t sub_245094C54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2450953B4(*a1);
  *a2 = result;
  return result;
}

void sub_245094C90(uint64_t result)
{
  v2 = *(v1 + 56);
  v3 = v2 == 3;
  v4 = v2 < 3;
  v5 = v3;
  if (result)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  *(v1 + 56) = v6;
  if ((result & 1) == 0)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_245094CC4();
  }
}

void sub_245094CC4()
{
  swift_beginAccess();
  sub_2450953C4(v0 + 16, &v20);
  if (v21)
  {
    sub_24509551C(&v20, v22);
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v1 = sub_2450E5638();
    __swift_project_value_buffer(v1, qword_27EE0AEC8);

    v2 = sub_2450E5628();
    v3 = sub_2450E59B8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v20 = v5;
      *v4 = 136315394;
      v6 = sub_2450E5E48();
      v8 = sub_2450C0EE8(v6, v7, &v20);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2080;
      v9 = sub_2450E5E48();
      v11 = sub_2450C0EE8(v9, v10, &v20);

      *(v4 + 14) = v11;
      _os_log_impl(&dword_24508F000, v2, v3, "Availability: %s + %s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D63500](v5, -1, -1);
      MEMORY[0x245D63500](v4, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_2450E0A40(*(v0 + 60));
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    sub_24509547C(&v20);
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v12 = sub_2450E5638();
    __swift_project_value_buffer(v12, qword_27EE0AEC8);
    v13 = sub_2450E5628();
    v14 = sub_2450E59A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      *&v20 = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
      v17 = sub_2450E5818();
      v19 = sub_2450C0EE8(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_24508F000, v13, v14, "Tried to notify for %s, but no handler was set", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x245D63500](v16, -1, -1);
      MEMORY[0x245D63500](v15, -1, -1);
    }
  }
}

uint64_t sub_245095020()
{
  sub_24509547C(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for HardwareAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HardwareAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245095208()
{
  result = qword_27EDF67C8;
  if (!qword_27EDF67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF67C8);
  }

  return result;
}

unint64_t sub_245095260()
{
  result = qword_27EDF67D0;
  if (!qword_27EDF67D0)
  {
    type metadata accessor for IsolatedAudio_UseCaseID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF67D0);
  }

  return result;
}

_DWORD *sub_2450952C0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2450952DC()
{
  sub_2450E5EF8();
  sub_2450E5F28();
  return sub_2450E5F38();
}

uint64_t sub_245095350(uint64_t a1)
{
  sub_2450E5EF8();
  sub_2450E5F28();
  return sub_2450E5F38();
}

unint64_t sub_2450953B4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2450953C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67D8, &unk_2450F0830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_24509547C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67D8, &unk_2450F0830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24509551C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

void sub_2450955D8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_245095630(uint64_t a1)
{
  v2 = v1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_24508F000, v5, v6, "Activating connection for: %d", v7, 8u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock;
  [*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock) lock];
  swift_beginAccess();
  sub_2450D63B8(&v10, a1);
  swift_endAccess();
  return [*(v2 + v8) unlock];
}

id sub_2450957A0(uint64_t a1, const char *a2, ...)
{
  v4 = v2;
  v5 = a1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);
  v7 = sub_2450E5628();
  v8 = sub_2450E5988();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5;
    _os_log_impl(&dword_24508F000, v7, v8, a2, v9, 8u);
    MEMORY[0x245D63500](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock;
  [*(v4 + OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock) lock];
  swift_beginAccess();
  sub_2450D3374(v5);
  swift_endAccess();
  return [*(v4 + v10) unlock];
}

void sub_2450958F4()
{

  v1 = *(v0 + OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock);
}

id sub_245095934()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2450959DC()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_2450E5A48();
    type metadata accessor for AudioDeviceInfo();
    sub_24509BD08(&qword_27EDF69B8, type metadata accessor for AudioDeviceInfo, &unk_2450E7960);
    result = sub_2450E5948();
    v5 = v20;
    v4 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      do
      {
        v18 = *(v17 + 24) == *(v1 + 16) && *(v17 + 32) == *(v1 + 24);
        if (v18 || (sub_2450E5E68() & 1) != 0)
        {
          break;
        }

        v7 = v15;
        v8 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_2450E5AB8())
        {
          goto LABEL_23;
        }

        type metadata accessor for AudioDeviceInfo();
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
      }

      while (v19);
    }

LABEL_24:
    sub_24509BD4C(v5);

    return v17;
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
LABEL_23:
        v17 = 0;
        goto LABEL_24;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_245095C0C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_2450E5A48();
    type metadata accessor for AudioDeviceInfo();
    sub_24509BD08(&qword_27EDF69B8, type metadata accessor for AudioDeviceInfo, &unk_2450E7960);
    result = sub_2450E5948();
    v5 = v20;
    v4 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      do
      {
        v18 = *(v17 + 24) == *(v1 + 32) && *(v17 + 32) == *(v1 + 40);
        if (v18 || (sub_2450E5E68() & 1) != 0)
        {
          break;
        }

        v7 = v15;
        v8 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_2450E5AB8())
        {
          goto LABEL_23;
        }

        type metadata accessor for AudioDeviceInfo();
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
      }

      while (v19);
    }

LABEL_24:
    sub_24509BD4C(v5);

    return v17;
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
LABEL_23:
        v17 = 0;
        goto LABEL_24;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245095E3C(__int128 *a1)
{
  v3 = *(v1 + 48);

  sub_245099C18(a1, v3);

  if (sub_2450959DC())
  {
    sub_2450E5F18();

    sub_2450E5838();
  }

  else
  {
    sub_2450E5F18();
  }

  if (!sub_245095C0C())
  {
    return sub_2450E5F18();
  }

  sub_2450E5F18();

  sub_2450E5838();
}

unint64_t sub_245095F54()
{
  v1 = 0x73656369766564;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_245095FB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24509A58C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_245095FF0(uint64_t a1)
{
  v2 = sub_2450998E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24509602C(uint64_t a1)
{
  v2 = sub_2450998E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245096068()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2450960D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF69A0, &qword_2450E7B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450998E8();
  sub_2450E5F58();
  v13 = 0;

  sub_2450E5DC8();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v12 = 1;

    sub_2450E5DC8();

    v11 = *(v3 + 48);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6830, &qword_2450E7AB0);
    sub_24509BC54();
    sub_2450E5E08();
    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_2450962E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6820, &qword_2450E7AA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450998E8();
  sub_2450E5F48();
  if (v2)
  {
  }

  else
  {
    v14 = 0;
    v1[2] = sub_2450E5CC8();
    v1[3] = v8;

    v13 = 1;
    v1[4] = sub_2450E5CC8();
    v1[5] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6830, &qword_2450E7AB0);
    v12 = 2;
    sub_24509993C();
    sub_2450E5D08();
    (*(v5 + 8))(v7, v4);
    v1[6] = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_245096590()
{
  sub_2450E5EF8();
  sub_245095E3C(v1);
  return sub_2450E5F38();
}

uint64_t sub_2450965F8(uint64_t a1)
{
  sub_2450E5EF8();
  sub_245095E3C(v2);
  return sub_2450E5F38();
}

uint64_t sub_245096644()
{
  v1 = *(v0 + 120);
  v8 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_19:
    v2 = sub_2450E5A88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D627F0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v8;
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(v4 + 28))
      {
        sub_2450E5BA8();
        sub_2450E5BC8();
        sub_2450E5BD8();
        sub_2450E5BB8();
      }

      else
      {
      }

      ++v3;
      if (v5 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_17:

  return v6;
}

unint64_t sub_245096794()
{
  sub_2450E5B58();

  v26 = 0xD000000000000012;
  v27 = 0x80000002450F27D0;
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x245D624D0](v1, v2);

  MEMORY[0x245D624D0](2594, 0xE200000000000000);
  strcpy(v25, "...name:");
  WORD1(v25[1]) = 0;
  HIDWORD(v25[1]) = -385875968;
  v3 = v0[5];
  v4 = v0[6];

  MEMORY[0x245D624D0](v3, v4);

  MEMORY[0x245D624D0](2594, 0xE200000000000000);
  MEMORY[0x245D624D0](v25[0], v25[1]);

  sub_2450E5B58();

  strcpy(v25, "...modelUID:");
  HIWORD(v25[1]) = -4864;
  v5 = v0[7];
  v6 = v0[8];

  MEMORY[0x245D624D0](v5, v6);

  MEMORY[0x245D624D0](2594, 0xE200000000000000);
  MEMORY[0x245D624D0](v25[0], v25[1]);

  sub_2450E5B58();
  MEMORY[0x245D624D0](0x6C706D61732E2E2ELL, 0xEE003A6574617265);
  sub_2450E5918();
  MEMORY[0x245D624D0](10, 0xE100000000000000);
  MEMORY[0x245D624D0](0, 0xE000000000000000);

  sub_2450E5B58();

  v25[0] = 0x73206D756E2E2E2ELL;
  v25[1] = 0xEF3A736D61657274;
  if (v0[15] >> 62)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v7 = sub_2450E5E48();
    MEMORY[0x245D624D0](v7);

    MEMORY[0x245D624D0](v25[0], v25[1]);

    v8 = v0[15];
    if (v8 >> 62)
    {
      if (!sub_2450E5A88())
      {
        return v26;
      }
    }

    else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v26;
    }

    MEMORY[0x245D624D0](10, 0xE100000000000000);
    v9 = v0[15];
    v10 = v9 >> 62 ? sub_2450E5A88() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v10)
    {
      break;
    }

    v11 = 0;
    v23 = v9 & 0xFFFFFFFFFFFFFF8;
    v24 = v9 & 0xC000000000000001;
    v22 = v9;
    while (v24)
    {
      v12 = MEMORY[0x245D627F0](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_29;
      }

LABEL_12:
      if (*(v12 + 28))
      {
        v14 = 0x7475706E49;
      }

      else
      {
        v14 = 0x74757074754FLL;
      }

      if (*(v12 + 28))
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      sub_2450E5B58();

      strcpy(v25, "......str[");
      BYTE3(v25[1]) = 0;
      HIDWORD(v25[1]) = -369098752;
      v16 = sub_2450E5E48();
      MEMORY[0x245D624D0](v16);

      MEMORY[0x245D624D0](8285, 0xE200000000000000);
      MEMORY[0x245D624D0](v14, v15);

      MEMORY[0x245D624D0](977553696, 0xE400000000000000);
      v17 = sub_2450E5E48();
      MEMORY[0x245D624D0](v17);

      MEMORY[0x245D624D0](0x6C656E6E61686320, 0xEA00000000003A73);
      v18 = sub_2450E5E48();
      MEMORY[0x245D624D0](v18);

      MEMORY[0x245D624D0](v25[0], v25[1]);

      v19 = v0[15];
      if (v19 >> 62)
      {
        v20 = sub_2450E5A88();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v22;
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_31;
      }

      if (v11 < v20 - 1)
      {
        MEMORY[0x245D624D0](10, 0xE100000000000000);
      }

      ++v11;
      if (v13 == v10)
      {
        goto LABEL_27;
      }
    }

    if (v11 >= *(v23 + 16))
    {
      goto LABEL_30;
    }

    v12 = *(v9 + 8 * v11 + 32);

    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_12;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_2450E5A88();
  }

LABEL_27:

  return v26;
}

unint64_t sub_245096D4C(char a1)
{
  result = 0x4449656369766564;
  switch(a1)
  {
    case 1:
      result = 0x4955656369766564;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x4449556C65646F6DLL;
      break;
    case 4:
      result = 0x6172656C706D6173;
      break;
    case 5:
      result = 0x726F70736E617274;
      break;
    case 6:
      v3 = 9;
      goto LABEL_13;
    case 7:
      v3 = 10;
LABEL_13:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0x736D6165727473;
      break;
    case 11:
      result = 0x7265666675426F69;
      break;
    case 12:
      result = 0x7461447475706E69;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_245096F44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24509A6B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_245096F78(uint64_t a1)
{
  v2 = sub_24509A22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245096FB4(uint64_t a1)
{
  v2 = sub_24509A22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245096FF0()
{

  return MEMORY[0x2821FE8D8](v0, 149, 7);
}

uint64_t sub_245097064(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6988, &qword_2450E7B48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A22C();
  sub_2450E5F58();
  LOBYTE(v13) = 0;
  sub_2450E5E28();
  if (!v2)
  {
    LOBYTE(v13) = 1;

    sub_2450E5DC8();

    LOBYTE(v13) = 2;

    sub_2450E5DC8();

    LOBYTE(v13) = 3;

    sub_2450E5DC8();

    LOBYTE(v13) = 4;
    sub_2450E5DE8();
    LOBYTE(v13) = 5;
    sub_2450E5E28();
    LOBYTE(v13) = 6;
    sub_2450E5DF8();
    LOBYTE(v13) = 7;
    sub_2450E5DF8();
    LOBYTE(v13) = 8;
    sub_2450E5DF8();
    LOBYTE(v13) = 9;
    sub_2450E5DF8();
    v13 = *(v3 + 120);
    BYTE4(v12) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6858, &qword_2450E7AC0);
    sub_24509BBA0();
    sub_2450E5E08();
    LOBYTE(v13) = 11;
    sub_2450E5DF8();
    v10 = *(v3 + 140);
    LOBYTE(v13) = 12;
    BYTE4(v12) = v10;
    sub_2450E5DA8();
    v11 = *(v3 + 148);
    LOBYTE(v13) = 13;
    BYTE4(v12) = v11;
    sub_2450E5DA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_245097464(void *a1)
{
  v3 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6848, &qword_2450E7AB8);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v15 - v6;
  *(v1 + 88) = 0u;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 140) = 1;
  *(v1 + 144) = 0;
  *(v1 + 148) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A22C();
  sub_2450E5F48();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v17) = 0;
    *(v1 + 16) = sub_2450E5D28();
    LOBYTE(v17) = 1;
    *(v1 + 24) = sub_2450E5CC8();
    *(v1 + 32) = v8;

    LOBYTE(v17) = 2;
    *(v1 + 40) = sub_2450E5CC8();
    *(v1 + 48) = v9;

    LOBYTE(v17) = 3;
    *(v1 + 56) = sub_2450E5CC8();
    *(v1 + 64) = v10;

    LOBYTE(v17) = 4;
    sub_2450E5CE8();
    *(v1 + 72) = v11;
    LOBYTE(v17) = 5;
    *(v1 + 80) = sub_2450E5D28();
    LOBYTE(v17) = 6;
    *(v1 + 88) = sub_2450E5CF8();
    LOBYTE(v17) = 7;
    *(v1 + 96) = sub_2450E5CF8();
    LOBYTE(v17) = 8;
    *(v1 + 104) = sub_2450E5CF8();
    LOBYTE(v17) = 9;
    *(v1 + 112) = sub_2450E5CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6858, &qword_2450E7AC0);
    v16 = 10;
    sub_24509A280();
    sub_2450E5D08();
    *(v1 + 120) = v17;

    LOBYTE(v17) = 11;
    *(v1 + 128) = sub_2450E5CF8();
    LOBYTE(v17) = 12;
    v13 = sub_2450E5CA8();
    *(v1 + 136) = v13;
    *(v1 + 140) = BYTE4(v13) & 1;
    LOBYTE(v17) = 13;
    v14 = sub_2450E5CA8();
    (*(v5 + 8))(v7, v15);
    *(v3 + 144) = v14;
    *(v3 + 148) = BYTE4(v14) & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t sub_245097944()
{
  sub_2450E5EF8();

  sub_2450E5838();

  return sub_2450E5F38();
}

uint64_t sub_2450979A4(uint64_t a1)
{

  sub_2450E5838();
}

uint64_t sub_245097A00(uint64_t a1)
{
  sub_2450E5EF8();

  sub_2450E5838();

  return sub_2450E5F38();
}

uint64_t sub_245097A5C(uint64_t *a1, uint64_t a2)
{
  if (*(*a1 + 24) == *(*a2 + 24) && *(*a1 + 32) == *(*a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_2450E5E68();
  }
}

uint64_t sub_245097AAC()
{
  v1 = *v0;
  v2 = 0x79636E6574616CLL;
  v3 = 0x6F69746365726964;
  v4 = 0x46746E6572727563;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44496D6165727473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_245097B5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24509AB54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_245097B90(uint64_t a1)
{
  v2 = sub_24509A334();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245097BCC(uint64_t a1)
{
  v2 = sub_24509A334();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245097C08()
{

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_245097C64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6968, &qword_2450E7B40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A334();
  sub_2450E5F58();
  LOBYTE(v14) = 0;
  sub_2450E5DF8();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_2450E5E28();
    LOBYTE(v14) = *(v3 + 28);
    v19 = 2;
    sub_24509BA98();
    sub_2450E5E08();
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = *(v3 + 56);
    v12 = *(v3 + 64);
    v14 = *(v3 + 32);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = 3;
    sub_24509BA44();
    sub_2450E5E08();
    v14 = *(v3 + 72);
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6890, &qword_2450E7AD0);
    sub_24509BAEC();
    sub_2450E5E08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_245097EBC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6870, &qword_2450E7AC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A334();
  sub_2450E5F48();
  if (v2)
  {
    type metadata accessor for AudioStreamInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14) = 0;
    *(v1 + 16) = sub_2450E5CF8();
    LOBYTE(v14) = 1;
    *(v1 + 24) = sub_2450E5D28();
    v19 = 2;
    sub_24509A388();
    sub_2450E5D08();
    *(v1 + 28) = v14;
    v19 = 3;
    sub_24509A3DC();
    sub_2450E5D08();
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    *(v1 + 32) = v14;
    *(v1 + 40) = v8;
    *(v1 + 48) = v9;
    *(v1 + 56) = v10;
    *(v1 + 64) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6890, &qword_2450E7AD0);
    v19 = 4;
    sub_24509A430();
    sub_2450E5D08();
    (*(v5 + 8))(v7, v4);
    *(v1 + 72) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_2450981E0()
{
  sub_2450E5EF8();
  sub_2450E5F28();
  return sub_2450E5F38();
}

uint64_t sub_245098258(uint64_t a1)
{
  sub_2450E5EF8();
  sub_2450E5F28();
  return sub_2450E5F38();
}

uint64_t sub_2450982B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68F0, &qword_2450E7AF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B33C();
  sub_2450E5F58();
  v10[15] = 0;
  sub_2450E5DF8();
  if (!v2)
  {
    v10[14] = *(v3 + 8);
    v10[13] = 1;
    sub_24509B3E4();
    sub_2450E5E08();
    v10[12] = 2;
    sub_2450E5DE8();
    v10[11] = 3;
    sub_2450E5DD8();
    v10[10] = 4;
    sub_2450E5DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2450984AC()
{
  v1 = *v0;
  v2 = 0x736C656E6E616863;
  v3 = 0x6152656C706D6173;
  v4 = 0x6C7265746E497369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x43506E6F6D6D6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_245098568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24509AD1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_245098590(uint64_t a1)
{
  v2 = sub_24509B33C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450985CC(uint64_t a1)
{
  v2 = sub_24509B33C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_245098608@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24509AEEC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_245098668(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t sub_2450986C0(void *a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68D0, &qword_2450E7AE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B2E8();
  sub_2450E5F58();
  v12 = 0;
  sub_2450E5DE8();
  if (!v3)
  {
    v11 = 1;
    sub_2450E5DE8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_245098848()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_24509886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_245098948(uint64_t a1)
{
  v2 = sub_24509B2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245098984(uint64_t a1)
{
  v2 = sub_24509B2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2450989C0(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_24509B138(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

uint64_t sub_245098A20()
{
  if (*v0)
  {
    return 0x74616D726F66;
  }

  else
  {
    return 0x6152656C706D6173;
  }
}

uint64_t sub_245098A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6152656C706D6173 && a2 == 0xEF65676E61526574;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_245098B50(uint64_t a1)
{
  v2 = sub_24509A4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245098B8C(uint64_t a1)
{
  v2 = sub_24509A4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245098BFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6950, &qword_2450E7B38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A4E4();
  sub_2450E5F58();
  v14 = *(v3 + 16);
  v18 = 0;
  sub_24509B9F0();
  sub_2450E5E08();
  if (!v2)
  {
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = *(v3 + 56);
    v12 = *(v3 + 64);
    *&v14 = *(v3 + 32);
    BYTE8(v14) = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = 1;
    sub_24509BA44();
    sub_2450E5E08();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleRateRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SampleRateRange(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245098E28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_245098E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_245098EE8(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68A8, &qword_2450E7AD8);
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A4E4();
  sub_2450E5F48();
  if (v2)
  {
  }

  else
  {
    v7 = v4;
    v20 = 0;
    sub_24509A538();
    v8 = v15;
    sub_2450E5D08();
    *(v1 + 16) = v16;
    v20 = 1;
    sub_24509A3DC();
    sub_2450E5D08();
    (*(v7 + 8))(v6, v8);
    v10 = BYTE8(v16);
    v11 = v17;
    v12 = v18;
    v13 = v19;
    *(v1 + 32) = v16;
    *(v1 + 40) = v10;
    *(v1 + 48) = v11;
    *(v1 + 56) = v12;
    *(v1 + 64) = v13;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_245099120(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6938, &qword_2450E7B20);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6940, &qword_2450E7B28);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6948, &qword_2450E7B30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B8F4();
  sub_2450E5F58();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24509B948();
    sub_2450E5D58();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24509B99C();
    sub_2450E5D58();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_245099420@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_2450994B4()
{
  if (*v0)
  {
    return 0x7475706E69;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_2450994E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2450995BC(uint64_t a1)
{
  v2 = sub_24509B8F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450995F8(uint64_t a1)
{
  v2 = sub_24509B8F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245099640@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24509967C(uint64_t a1)
{
  v2 = sub_24509B948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450996B8(uint64_t a1)
{
  v2 = sub_24509B948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450996F4(uint64_t a1)
{
  v2 = sub_24509B99C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245099730(uint64_t a1)
{
  v2 = sub_24509B99C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24509976C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24509B438(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_2450997BC()
{
  result = qword_27EDF6800;
  if (!qword_27EDF6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6800);
  }

  return result;
}

unint64_t sub_2450998E8()
{
  result = qword_27EDF6828;
  if (!qword_27EDF6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6828);
  }

  return result;
}

unint64_t sub_24509993C()
{
  result = qword_27EDF6838;
  if (!qword_27EDF6838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6830, &qword_2450E7AB0);
    sub_24509BD08(&qword_27EDF6840, type metadata accessor for AudioDeviceInfo, &unk_2450E79C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6838);
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

unint64_t sub_245099A38@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24509CD94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_245099B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_2450E5A88();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_2450E5AC8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_245099C18(__int128 *a1, uint64_t a2)
{
  sub_2450E5F38();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_2450E5A48();
    type metadata accessor for AudioDeviceInfo();
    sub_24509BD08(&qword_27EDF69B8, type metadata accessor for AudioDeviceInfo, &unk_2450E7960);
    result = sub_2450E5948();
    a2 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_2450E5AB8())
    {
LABEL_19:
      sub_24509BD4C(a2);
      return MEMORY[0x245D62B90](v11);
    }

    type metadata accessor for AudioDeviceInfo();
    swift_dynamicCast();
LABEL_9:
    sub_2450E5EF8();

    sub_2450E5838();

    v13 = sub_2450E5F38();

    v11 ^= v13;
  }

  if (v7)
  {
LABEL_8:
    v7 &= v7 - 1;

    goto LABEL_9;
  }

  v14 = v6;
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_19;
    }

    v7 = *(v4 + 8 * v15);
    ++v14;
    if (v7)
    {
      v6 = v15;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245099E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = v3 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v5 = *(a1 + 48);
    }

    else
    {
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {

      v6 = sub_2450E5AA8();
      goto LABEL_14;
    }

    v8 = v5;
    v9 = v3;
LABEL_13:
    v6 = sub_245099B14(v8, v9);
LABEL_14:
    v10 = v6;

    if ((v10 & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v11 = sub_2450959DC();
    v12 = sub_2450959DC();
    if (v11)
    {
      if (v12)
      {
        if (v11[3] == v12[3] && v11[4] == v12[4])
        {

          goto LABEL_30;
        }

        v19 = sub_2450E5E68();

        if (v19)
        {
LABEL_30:
          v20 = sub_245095C0C();
          v21 = sub_245095C0C();
          if (v20)
          {
            if (v21)
            {
              if (v20[3] == v21[3] && v20[4] == v21[4])
              {

                return 1;
              }

              else
              {
                v32 = sub_2450E5E68();

                return v32 & 1;
              }
            }
          }

          else if (!v21)
          {
            return 1;
          }

          goto LABEL_37;
        }

        return 0;
      }
    }

    else if (!v12)
    {
      goto LABEL_30;
    }

LABEL_37:

    return 0;
  }

  if (v4)
  {
    if (v3 < 0)
    {
      v7 = *(a2 + 48);
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = v7;
    v9 = v2;
    goto LABEL_13;
  }

  if (v2 == v3)
  {
    goto LABEL_15;
  }

  if (*(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v13 = 1 << *(v2 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v2 + 56);
  v33 = (v13 + 63) >> 6;
  v16 = v3 + 56;

  v18 = 0;
  while (v15)
  {
    v22 = __clz(__rbit64(v15));
    v34 = (v15 - 1) & v15;
LABEL_47:
    v25 = *(*(v2 + 48) + 8 * (v22 | (v18 << 6)));
    sub_2450E5EF8();

    sub_2450E5838();

    v26 = sub_2450E5F38();
    v27 = -1 << *(v3 + 32);
    v28 = v26 & ~v27;
    if (((*(v16 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_55:

      return 0;
    }

    v29 = ~v27;
    while (1)
    {
      v30 = *(*(v3 + 48) + 8 * v28);
      v31 = *(v30 + 24) == *(v25 + 24) && *(v30 + 32) == *(v25 + 32);
      if (v31 || (sub_2450E5E68() & 1) != 0)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v16 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v15 = v34;
  }

  v23 = v18;
  while (1)
  {
    v18 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v18 >= v33)
    {

      goto LABEL_15;
    }

    v24 = *(v2 + 56 + 8 * v18);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v34 = (v24 - 1) & v24;
      goto LABEL_47;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24509A22C()
{
  result = qword_27EDF6850;
  if (!qword_27EDF6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6850);
  }

  return result;
}

unint64_t sub_24509A280()
{
  result = qword_27EDF6860;
  if (!qword_27EDF6860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6858, &qword_2450E7AC0);
    sub_24509BD08(&qword_27EDF6868, type metadata accessor for AudioStreamInfo, &unk_2450E78E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6860);
  }

  return result;
}

unint64_t sub_24509A334()
{
  result = qword_27EDF6878;
  if (!qword_27EDF6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6878);
  }

  return result;
}

unint64_t sub_24509A388()
{
  result = qword_27EDF6880;
  if (!qword_27EDF6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6880);
  }

  return result;
}

unint64_t sub_24509A3DC()
{
  result = qword_27EDF6888;
  if (!qword_27EDF6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6888);
  }

  return result;
}

unint64_t sub_24509A430()
{
  result = qword_27EDF6898;
  if (!qword_27EDF6898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6890, &qword_2450E7AD0);
    sub_24509BD08(&qword_27EDF68A0, type metadata accessor for AudioRangedStreamFormatInfo, &unk_2450E7830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6898);
  }

  return result;
}

unint64_t sub_24509A4E4()
{
  result = qword_27EDF68B0;
  if (!qword_27EDF68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68B0);
  }

  return result;
}

unint64_t sub_24509A538()
{
  result = qword_27EDF68B8;
  if (!qword_27EDF68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68B8);
  }

  return result;
}

uint64_t sub_24509A58C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002450F2540 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002450F2560 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_2450E5E68();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24509A6B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4955656369766564 && a2 == 0xE900000000000044 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449556C65646F6DLL && a2 == 0xE800000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6172656C706D6173 && a2 == 0xEA00000000006574 || (sub_2450E5E68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F70736E617274 && a2 == 0xED00006570795474 || (sub_2450E5E68() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002450F25F0 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002450F2610 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002450F2630 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002450F2650 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x736D6165727473 && a2 == 0xE700000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265666675426F69 && a2 == 0xEC000000657A6953 || (sub_2450E5E68() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461447475706E69 && a2 == 0xEF656372756F5361 || (sub_2450E5E68() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002450F26A0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_24509AB54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E6574616CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D6165727473 && a2 == 0xE800000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x46746E6572727563 && a2 == 0xED000074616D726FLL || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002450F2720 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24509AD1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43506E6F6D6D6F63 && a2 == 0xEF74616D726F464DLL || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7265746E497369 && a2 == 0xED00006465766165 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002450F27F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24509AEEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68D8, &qword_2450E7AF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B33C();
  sub_2450E5F48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = 0;
  v9 = sub_2450E5CF8();
  v22 = 1;
  sub_24509B390();
  sub_2450E5D08();
  v10 = v23;
  v21 = 2;
  sub_2450E5CE8();
  v12 = v11;
  v20 = 3;
  v13 = sub_2450E5CD8();
  v17 = v10;
  v18 = v13;
  v19 = 4;
  v14 = sub_2450E5CF8();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9;
  v16 = v18;
  *(a2 + 8) = v17;
  *(a2 + 16) = v12;
  *(a2 + 24) = v16 & 1;
  *(a2 + 32) = v14;
  return result;
}

double sub_24509B138(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68C0, &qword_2450E7AE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B2E8();
  sub_2450E5F48();
  v9[15] = 0;
  sub_2450E5CE8();
  v7 = v6;
  v9[14] = 1;
  sub_2450E5CE8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_24509B2E8()
{
  result = qword_27EDF68C8;
  if (!qword_27EDF68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68C8);
  }

  return result;
}

unint64_t sub_24509B33C()
{
  result = qword_27EDF68E0;
  if (!qword_27EDF68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68E0);
  }

  return result;
}

unint64_t sub_24509B390()
{
  result = qword_27EDF68E8;
  if (!qword_27EDF68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68E8);
  }

  return result;
}

unint64_t sub_24509B3E4()
{
  result = qword_27EDF68F8;
  if (!qword_27EDF68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68F8);
  }

  return result;
}

uint64_t sub_24509B438(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6900, &qword_2450E7B00);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6908, &qword_2450E7B08);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6910, &unk_2450E7B10);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B8F4();
  v11 = v26;
  sub_2450E5F48();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_2450E5D38();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_2450BA264();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_2450E5B88();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730);
    *v19 = &type metadata for AudioStreamDirection;
    sub_2450E5C58();
    sub_2450E5B78();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24509B948();
    sub_2450E5C48();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24509B99C();
    sub_2450E5C48();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v31 & 1;
}

unint64_t sub_24509B8F4()
{
  result = qword_27EDF6918;
  if (!qword_27EDF6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6918);
  }

  return result;
}

unint64_t sub_24509B948()
{
  result = qword_27EDF6928;
  if (!qword_27EDF6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6928);
  }

  return result;
}

unint64_t sub_24509B99C()
{
  result = qword_27EDF6930;
  if (!qword_27EDF6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6930);
  }

  return result;
}

unint64_t sub_24509B9F0()
{
  result = qword_27EDF6958;
  if (!qword_27EDF6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6958);
  }

  return result;
}

unint64_t sub_24509BA44()
{
  result = qword_27EDF6960;
  if (!qword_27EDF6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6960);
  }

  return result;
}

unint64_t sub_24509BA98()
{
  result = qword_27EDF6970;
  if (!qword_27EDF6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6970);
  }

  return result;
}

unint64_t sub_24509BAEC()
{
  result = qword_27EDF6978;
  if (!qword_27EDF6978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6890, &qword_2450E7AD0);
    sub_24509BD08(&qword_27EDF6980, type metadata accessor for AudioRangedStreamFormatInfo, &unk_2450E7808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6978);
  }

  return result;
}

unint64_t sub_24509BBA0()
{
  result = qword_27EDF6990;
  if (!qword_27EDF6990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6858, &qword_2450E7AC0);
    sub_24509BD08(&qword_27EDF6998, type metadata accessor for AudioStreamInfo, &unk_2450E78C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6990);
  }

  return result;
}

unint64_t sub_24509BC54()
{
  result = qword_27EDF69A8;
  if (!qword_27EDF69A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6830, &qword_2450E7AB0);
    sub_24509BD08(&qword_27EDF69B0, type metadata accessor for AudioDeviceInfo, &unk_2450E79A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69A8);
  }

  return result;
}

uint64_t sub_24509BD08(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreAudioOrchestratorClientXPC.SetProperty.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreAudioOrchestratorClientXPC.SetProperty.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s17NegotiateResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17NegotiateResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioDeviceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioDeviceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSystemInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSystemInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonPCMFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonPCMFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24509C454()
{
  result = qword_27EDF69C0;
  if (!qword_27EDF69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69C0);
  }

  return result;
}

unint64_t sub_24509C4AC()
{
  result = qword_27EDF69C8;
  if (!qword_27EDF69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69C8);
  }

  return result;
}

unint64_t sub_24509C504()
{
  result = qword_27EDF69D0;
  if (!qword_27EDF69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69D0);
  }

  return result;
}

unint64_t sub_24509C55C()
{
  result = qword_27EDF69D8;
  if (!qword_27EDF69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69D8);
  }

  return result;
}

unint64_t sub_24509C5B4()
{
  result = qword_27EDF69E0;
  if (!qword_27EDF69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69E0);
  }

  return result;
}

unint64_t sub_24509C60C()
{
  result = qword_27EDF69E8;
  if (!qword_27EDF69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69E8);
  }

  return result;
}

unint64_t sub_24509C664()
{
  result = qword_27EDF69F0;
  if (!qword_27EDF69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69F0);
  }

  return result;
}

unint64_t sub_24509C6BC()
{
  result = qword_27EDF69F8;
  if (!qword_27EDF69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69F8);
  }

  return result;
}

unint64_t sub_24509C714()
{
  result = qword_27EDF6A00;
  if (!qword_27EDF6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A00);
  }

  return result;
}

unint64_t sub_24509C76C()
{
  result = qword_27EDF6A08;
  if (!qword_27EDF6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A08);
  }

  return result;
}

unint64_t sub_24509C7C4()
{
  result = qword_27EDF6A10;
  if (!qword_27EDF6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A10);
  }

  return result;
}

unint64_t sub_24509C81C()
{
  result = qword_27EDF6A18;
  if (!qword_27EDF6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A18);
  }

  return result;
}

unint64_t sub_24509C874()
{
  result = qword_27EDF6A20;
  if (!qword_27EDF6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A20);
  }

  return result;
}

unint64_t sub_24509C8CC()
{
  result = qword_27EDF6A28;
  if (!qword_27EDF6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A28);
  }

  return result;
}

unint64_t sub_24509C924()
{
  result = qword_27EDF6A30;
  if (!qword_27EDF6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A30);
  }

  return result;
}

unint64_t sub_24509C97C()
{
  result = qword_27EDF6A38;
  if (!qword_27EDF6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A38);
  }

  return result;
}

unint64_t sub_24509C9D4()
{
  result = qword_27EDF6A40;
  if (!qword_27EDF6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A40);
  }

  return result;
}

unint64_t sub_24509CA2C()
{
  result = qword_27EDF6A48;
  if (!qword_27EDF6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A48);
  }

  return result;
}

unint64_t sub_24509CA84()
{
  result = qword_27EDF6A50;
  if (!qword_27EDF6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A50);
  }

  return result;
}

unint64_t sub_24509CADC()
{
  result = qword_27EDF6A58;
  if (!qword_27EDF6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A58);
  }

  return result;
}

unint64_t sub_24509CB34()
{
  result = qword_27EDF6A60;
  if (!qword_27EDF6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A60);
  }

  return result;
}

unint64_t sub_24509CB8C()
{
  result = qword_27EDF6A68;
  if (!qword_27EDF6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A68);
  }

  return result;
}

unint64_t sub_24509CBE4()
{
  result = qword_27EDF6A70;
  if (!qword_27EDF6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A70);
  }

  return result;
}

unint64_t sub_24509CC3C()
{
  result = qword_27EDF6A78;
  if (!qword_27EDF6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A78);
  }

  return result;
}

unint64_t sub_24509CC94()
{
  result = qword_27EDF6A80;
  if (!qword_27EDF6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A80);
  }

  return result;
}

unint64_t sub_24509CCEC()
{
  result = qword_27EDF6A88;
  if (!qword_27EDF6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A88);
  }

  return result;
}

unint64_t sub_24509CD40()
{
  result = qword_27EDF6A90;
  if (!qword_27EDF6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A90);
  }

  return result;
}

unint64_t sub_24509CD94(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_24509CDE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2450E5E68();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24509CE60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[1] = a3;
  type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure.CodingKeys(255, a4, a5, a6);
  swift_getWitnessTable();
  v7 = sub_2450E5E38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24509CFD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v6 = sub_2450E5D48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E5F48();
  if (!v4)
  {
    v10 = sub_2450E5CC8();
    (*(v7 + 8))(v9, v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t sub_24509D198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24509CDE4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_24509D1D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24509D170();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24509D208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509D25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509D2B0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24509CFD0(a1, a2[2], a2[3], a2[4]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_24509D310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
  }

  v7 = *v5;
  v8 = v5[1];
  sub_24509E850();
  swift_allocError();
  *v9 = v7;
  v9[1] = v8;
  return swift_willThrow();
}

uint64_t sub_24509D44C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24509D550(char a1)
{
  sub_2450E5EF8();
  MEMORY[0x245D62B90](a1 & 1);
  return sub_2450E5F38();
}

uint64_t sub_24509D598(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_24509D5C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2450E5E68();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24509D638(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for CoreAudioOrchestratorXPC.Response.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v44 = v7;
  v8 = sub_2450E5E38();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - v9;
  v10 = type metadata accessor for CoreAudioOrchestratorXPC.Response.SuccessCodingKeys(255, v4, v5, v6);
  v11 = swift_getWitnessTable();
  v39 = v10;
  v37 = v11;
  v12 = sub_2450E5E38();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v38 = &v35 - v14;
  v40 = *(v4 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 1);
  MEMORY[0x28223BE20](v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v4;
  v46 = v5;
  v52 = v6;
  type metadata accessor for CoreAudioOrchestratorXPC.Response.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v20 = sub_2450E5E38();
  v50 = *(v20 - 8);
  v51 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E5F58();
  (*(v17 + 16))(v19, v49, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v19;
    v24 = v19[1];
    LOBYTE(v53) = 1;
    v25 = v45;
    v26 = v51;
    sub_2450E5D58();
    v53 = v23;
    v54 = v24;
    type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure(0, v55, v46, v52);
    swift_getWitnessTable();
    v27 = v48;
    sub_2450E5E08();
    (*(v47 + 8))(v25, v27);
    (*(v50 + 8))(v22, v26);
  }

  else
  {
    v29 = v40;
    v30 = v36;
    v31 = v55;
    (*(v40 + 32))(v36, v19, v55);
    LOBYTE(v53) = 0;
    v32 = v38;
    v33 = v51;
    sub_2450E5D58();
    v34 = v42;
    sub_2450E5E08();
    (*(v41 + 8))(v32, v34);
    (*(v29 + 8))(v30, v31);
    return (*(v50 + 8))(v22, v33);
  }
}

uint64_t sub_24509DB90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v66 = a5;
  v61 = type metadata accessor for CoreAudioOrchestratorXPC.Response.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v58 = sub_2450E5D48();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v63 = &v50 - v9;
  v10 = type metadata accessor for CoreAudioOrchestratorXPC.Response.SuccessCodingKeys(255, a2, a3, a4);
  v11 = swift_getWitnessTable();
  v60 = v10;
  v59 = v11;
  v55 = sub_2450E5D48();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v67 = &v50 - v12;
  type metadata accessor for CoreAudioOrchestratorXPC.Response.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v13 = sub_2450E5D48();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v65 = a2;
  v69 = a3;
  v56 = a4;
  v16 = type metadata accessor for CoreAudioOrchestratorXPC.Response(0, a2, a3, a4);
  v64 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  v25 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v68 = v15;
  v26 = v72;
  sub_2450E5F48();
  if (!v26)
  {
    v53 = v22;
    v51 = v19;
    v27 = v67;
    v52 = v24;
    v29 = v68;
    v28 = v69;
    v72 = v16;
    v30 = v71;
    *&v73 = sub_2450E5D38();
    sub_2450E58D8();
    swift_getWitnessTable();
    *&v75 = sub_2450E5A08();
    *(&v75 + 1) = v31;
    *&v76 = v32;
    *(&v76 + 1) = v33;
    sub_2450E59F8();
    swift_getWitnessTable();
    sub_2450E5968();
    v34 = v73;
    if (v73 == 2 || (v50 = v75, v73 = v75, v74 = v76, (sub_2450E5978() & 1) == 0))
    {
      v39 = sub_2450E5B88();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730);
      *v41 = v72;
      sub_2450E5C58();
      sub_2450E5B78();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v70 + 8))(v29, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        LOBYTE(v73) = 1;
        sub_2450E5C48();
        v35 = v66;
        v36 = v64;
        type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure(0, v65, v28, v56);
        swift_getWitnessTable();
        v37 = v58;
        v38 = v63;
        sub_2450E5D08();
        (*(v57 + 8))(v38, v37);
        (*(v70 + 8))(v29, v30);
        swift_unknownObjectRelease();
        v45 = *(&v73 + 1);
        v46 = v51;
        *v51 = v73;
        *(v46 + 1) = v45;
      }

      else
      {
        LOBYTE(v73) = 0;
        sub_2450E5C48();
        v35 = v66;
        v36 = v64;
        v46 = v53;
        v43 = v55;
        sub_2450E5D08();
        v44 = v70;
        (*(v54 + 8))(v27, v43);
        (*(v44 + 8))(v29, v71);
        swift_unknownObjectRelease();
      }

      v47 = v72;
      swift_storeEnumTagMultiPayload();
      v48 = *(v36 + 32);
      v49 = v52;
      v48(v52, v46, v47);
      v48(v35, v49, v47);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t sub_24509E404(uint64_t a1)
{
  sub_2450E5EF8();
  sub_24509D528(v3, *v1);
  return sub_2450E5F38();
}

uint64_t sub_24509E464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24509D44C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24509E498@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24509F028();
  *a2 = result;
  return result;
}

uint64_t sub_24509E4CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509E520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509E5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24509D5C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_24509E5E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509E63C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509E690(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509E6E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509E774()
{
  sub_2450E5EF8();
  MEMORY[0x245D62B90](0);
  return sub_2450E5F38();
}

uint64_t sub_24509E7B8(uint64_t a1)
{
  sub_2450E5EF8();
  MEMORY[0x245D62B90](0);
  return sub_2450E5F38();
}

unint64_t sub_24509E850()
{
  result = qword_27EDF6A98[0];
  if (!qword_27EDF6A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDF6A98);
  }

  return result;
}

uint64_t sub_24509E8D0(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure(319, result, a1[3], a1[4]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24509E950(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_24509EA68(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_24509EC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24509EC98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24509ECE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24509ED20()
{
  result = qword_27EDF6BA0[0];
  if (!qword_27EDF6BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDF6BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCConnectionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XPCConnectionError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_24509F04C()
{
  v23 = &type metadata for CoreAudioOrchestrationFeatureFlags;
  v24 = sub_24509F5B4();
  v0 = sub_2450E5618();
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  if ((v0 & 1) == 0)
  {
    v5 = sub_2450CD3F0();
    sub_2450CACC0(v5, &v20);
    sub_2450CD01C(&v20, v22);
    if (v22[0])
    {
      v6 = v24;
      v7 = v23;
      v8 = v22[1];
      v27 = v22[0];
      sub_24509F608(&v27, &qword_27EDF6DB8, &unk_2450E8C40);
      v28 = v8;
      sub_24509F608(&v28, &qword_27EDF6DB8, &unk_2450E8C40);
      v29 = v6;
      sub_24509F608(&v29, &qword_27EDF6DC0, &qword_2450EAD50);
      v30 = v25;
      v31 = v26;
      sub_24509F608(&v30, &qword_27EDF6DC8, &unk_2450E8C50);
      if (v7)
      {
        if (qword_27EDF6748 != -1)
        {
          swift_once();
        }

        v9 = sub_2450E5638();
        __swift_project_value_buffer(v9, qword_27EE0AEC8);
        v10 = sub_2450E5628();
        v11 = sub_2450E59B8();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_24508F000, v10, v11, "ADM Negotiate success", v12, 2u);
          MEMORY[0x245D63500](v12, -1, -1);
        }

        sub_2450CD260(&v20);
        v14 = v13;
        v34 = v20;
        sub_24509F608(&v34, &qword_27EDF6DB0, &qword_2450EBB20);
        v33 = *(&v20 + 1);
        sub_24509F608(&v33, &qword_27EDF6DB0, &qword_2450EBB20);
        v32 = v21;
        sub_24509F608(&v32, &qword_27EDF6DB0, &qword_2450EBB20);
        if ((v14 & 0x100) != 0 || (v14 & 1) == 0)
        {
          v2 = sub_2450E5628();
          v15 = sub_2450E59B8();
          if (os_log_type_enabled(v2, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            v17 = "ADM Adapt failed";
            goto LABEL_24;
          }
        }

        else
        {
          v2 = sub_2450E5628();
          v15 = sub_2450E59B8();
          if (os_log_type_enabled(v2, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            v17 = "ADM Adapt success";
LABEL_24:
            _os_log_impl(&dword_24508F000, v2, v15, v17, v16, 2u);
            MEMORY[0x245D63500](v16, -1, -1);
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      v34 = v20;
      sub_24509F608(&v34, &qword_27EDF6DB0, &qword_2450EBB20);
      v33 = *(&v20 + 1);
      sub_24509F608(&v33, &qword_27EDF6DB0, &qword_2450EBB20);
      v32 = v21;
      v18 = &v32;
    }

    else
    {
      v30 = v20;
      sub_24509F608(&v30, &qword_27EDF6DB0, &qword_2450EBB20);
      v34 = *(&v20 + 1);
      sub_24509F608(&v34, &qword_27EDF6DB0, &qword_2450EBB20);
      v33 = v21;
      v18 = &v33;
    }

    sub_24509F608(v18, &qword_27EDF6DB0, &qword_2450EBB20);
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v19 = sub_2450E5638();
    __swift_project_value_buffer(v19, qword_27EE0AEC8);
    v2 = sub_2450E5628();
    v15 = sub_2450E59B8();
    if (!os_log_type_enabled(v2, v15))
    {
      goto LABEL_25;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "ADM Negotiate failed";
    goto LABEL_24;
  }

  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E59B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "ADM not used, featureflag set: CoreAudioOrchestration_DisableADM", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

LABEL_26:
}

uint64_t sub_24509F558()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_24509F5B4()
{
  result = qword_27EDF6DA8;
  if (!qword_27EDF6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DA8);
  }

  return result;
}

uint64_t sub_24509F608(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24509F68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24509F6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24509F760(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = 0;
  sub_24509FAE0(a2, v38);
  v12 = objc_allocWithZone(type metadata accessor for ClientSharedAudioNSXPCService());
  *&v12[OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_connections] = MEMORY[0x277D84FA0];
  v13 = OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock;
  v14 = objc_allocWithZone(MEMORY[0x277CCAAF8]);
  v15 = a1;
  *&v12[v13] = [v14 init];
  sub_24509FAE0(v38, v37);
  v16 = &v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_entitlementString];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  *&v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_interface] = v15;
  sub_24509FAE0(v37, &v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_interfaceDelegate]);
  v17 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v18 = v15;
  v34 = a3;
  v19 = v6;
  v20 = sub_2450E57C8();
  v21 = [v17 initWithMachServiceName_];

  *&v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_listener] = v21;
  *v16 = a5;
  *(v16 + 1) = a6;

  v36.receiver = v12;
  v36.super_class = type metadata accessor for NSXPCService();
  v22 = objc_msgSendSuper2(&v36, sel_init);
  v23 = OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_listener;
  v24 = *&v22[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_listener];
  v25 = v22;
  [v24 setDelegate_];
  [*&v22[v23] activate];

  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  v26 = *(v19 + 16);
  *(v19 + 16) = v22;

  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v27 = sub_2450E5638();
  __swift_project_value_buffer(v27, qword_27EE0AEC8);

  v28 = sub_2450E5628();
  v29 = sub_2450E5988();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38[0] = v31;
    *v30 = 136315138;
    v32 = sub_2450C0EE8(v34, a4, v38);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_24508F000, v28, v29, "Started listening for %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245D63500](v31, -1, -1);
    MEMORY[0x245D63500](v30, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v19;
}

uint64_t sub_24509FA84()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24509FAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_24509FB3C()
{

  v1 = sub_2450CC460();

  if (!v0)
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v2 = sub_2450E5638();
    __swift_project_value_buffer(v2, qword_27EE0AEC8);
    v3 = sub_2450E5628();
    v4 = sub_2450E5988();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_24508F000, v3, v4, "Launch Received: %d", v5, 8u);
      MEMORY[0x245D63500](v5, -1, -1);
    }
  }
}

id static Stravinsky.GetOrchestrationDelegate()()
{
  if (qword_27EDF6710 != -1)
  {
    swift_once();
  }

  v1 = qword_27EDF6DD0;

  return v1;
}

id Stravinsky.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Stravinsky.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Stravinsky();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Stravinsky.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Stravinsky();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_24509FE08()
{
  result = [objc_allocWithZone(type metadata accessor for CoreAudioOrchestrationDelegate()) init];
  qword_27EDF6DD0 = result;
  return result;
}

id IsolatedCoreAudioClientServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IsolatedCoreAudioClientServer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IsolatedCoreAudioClientServer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IsolatedCoreAudioClientServer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IsolatedCoreAudioClientServer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24509FF94(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E30, &qword_2450E9278);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = v48 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E38, &qword_2450E9280);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = v48 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E40, &qword_2450E9288);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = v48 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E48, &qword_2450E9290);
  v54 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v48 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E50, &qword_2450E9298);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = v48 - v9;
  *&v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E58, &qword_2450E92A0);
  v53 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v11 = v48 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E60, &qword_2450E92A8);
  v48[1] = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48[0] = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E68, &qword_2450E92B0);
  v64 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E70, &qword_2450E92B8);
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = v48 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A2D88();
  v20 = v19;
  sub_2450E5F58();
  v21 = *v2;
  v22 = v2[1];
  v23 = *(v2 + 4);
  v24 = *(v2 + 5);
  v25 = *(v2 + 7);
  v26 = (v25 >> 59) & 6 | (v24 >> 63);
  if (v26 <= 2)
  {
    v31 = v64;
    v32 = v65;
    v34 = v66;
    v33 = v67;
    v68 = v21;
    if (v26)
    {
      if (v26 == 1)
      {
        LOBYTE(v71) = 2;
        sub_2450A307C();
        v35 = v11;
        v36 = v69;
        sub_2450E5D58();
        *&v71 = v68;
        sub_2450A30D0();
        sub_2450E5E08();
        (*(v53 + 8))(v35, v32);
      }

      else
      {
        LOBYTE(v71) = 4;
        v65 = v22;
        sub_2450A2F2C();
        v36 = v69;
        sub_2450E5D58();
        v71 = v68;
        v72 = v65;
        BYTE4(v73) = BYTE4(v23);
        LODWORD(v73) = v23;
        sub_2450A2F80();
        sub_2450E5E08();
        (*(v54 + 8))(v34, v33);
      }

      return (*(v70 + 8))(v20, v36);
    }

    else
    {
      LOBYTE(v71) = 0;
      sub_2450A31CC();
      v43 = v69;
      sub_2450E5D58();
      *&v71 = v68;
      sub_2450A3220();
      sub_2450E5E08();
      (*(v31 + 8))(v15, v13);
      return (*(v70 + 8))(v20, v43);
    }
  }

  else if (v26 > 4)
  {
    v37 = *(v2 + 6);
    v38 = v69;
    if (v26 == 5)
    {
      v39 = v24 & 0x7FFFFFFFFFFFFFFFLL;
      v40 = v25 & 0xCFFFFFFFFFFFFFFFLL;
      LOBYTE(v71) = 7;
      v68 = v21;
      v65 = v22;
      sub_2450A2DDC();
      v41 = v61;
      sub_2450E5D58();
      v71 = v68;
      v72 = v65;
      v73 = v23;
      v74 = v39;
      v75 = v37;
      v76 = v40;
      sub_2450A2AA0();
      v42 = v63;
      sub_2450E5E08();
      (*(v62 + 8))(v41, v42);
    }

    else
    {
      if (v22 | v21 | *(&v21 + 1) | *(&v22 + 1) | v23 | v24 | v37 || v25 != 0x3000000000000000)
      {
        LOBYTE(v71) = 3;
        sub_2450A2FD4();
        v45 = v50;
        sub_2450E5D58();
        sub_2450A3028();
        v46 = v52;
        sub_2450E5E08();
        v47 = &v77;
      }

      else
      {
        LOBYTE(v71) = 1;
        sub_2450A3124();
        v45 = v48[0];
        sub_2450E5D58();
        sub_2450A3178();
        v46 = v49;
        sub_2450E5E08();
        v47 = &v76;
      }

      (*(*(v47 - 32) + 8))(v45, v46);
    }

    return (*(v70 + 8))(v20, v38);
  }

  else
  {
    v65 = v2[1];
    v68 = v21;
    v27 = v69;
    if (v26 == 3)
    {
      LOBYTE(v71) = 5;
      sub_2450A2E84();
      v28 = v55;
      sub_2450E5D58();
      v71 = v68;
      v72 = v65;
      BYTE4(v73) = BYTE4(v23);
      LODWORD(v73) = v23;
      sub_2450A2ED8();
      v29 = v57;
      sub_2450E5E08();
      v30 = &v78;
    }

    else
    {
      LOBYTE(v71) = 6;
      sub_2450A2E30();
      v28 = v58;
      sub_2450E5D58();
      v71 = v68;
      v72 = v65;
      v73 = v23;
      LODWORD(v74) = v24;
      sub_2450A2D34();
      v29 = v60;
      sub_2450E5E08();
      v30 = &v79;
    }

    (*(*(v30 - 32) + 8))(v28, v29);
    return (*(v70 + 8))(v19, v27);
  }
}

uint64_t sub_2450A0A28(uint64_t a1)
{
  v2 = sub_2450A2E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0A64(uint64_t a1)
{
  v2 = sub_2450A2E84();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450A0AA0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x746169746F67656ELL;
    v6 = 0x65706F7250746567;
    if (v1 != 6)
    {
      v6 = 0x65706F7250746573;
    }

    if (v1 != 4)
    {
      v5 = 0x4D44417470616461;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 2)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD00000000000001CLL;
    if (!*v0)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2450A0BB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450A3274(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450A0BEC(uint64_t a1)
{
  v2 = sub_2450A2D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0C28(uint64_t a1)
{
  v2 = sub_2450A2D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0C68(uint64_t a1)
{
  v2 = sub_2450A31CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0CA4(uint64_t a1)
{
  v2 = sub_2450A31CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0CE0(uint64_t a1)
{
  v2 = sub_2450A3124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0D1C(uint64_t a1)
{
  v2 = sub_2450A3124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0D58(uint64_t a1)
{
  v2 = sub_2450A2FD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0D94(uint64_t a1)
{
  v2 = sub_2450A2FD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0DD0(uint64_t a1)
{
  v2 = sub_2450A2E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0E0C(uint64_t a1)
{
  v2 = sub_2450A2E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0E48(uint64_t a1)
{
  v2 = sub_2450A2F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0E84(uint64_t a1)
{
  v2 = sub_2450A2F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0EC0(uint64_t a1)
{
  v2 = sub_2450A307C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0EFC(uint64_t a1)
{
  v2 = sub_2450A307C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A0FB8(uint64_t a1)
{
  v2 = sub_2450A2DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0FF4(uint64_t a1)
{
  v2 = sub_2450A2DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A1030@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2450A3528(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_2450A108C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7178, &qword_2450EA358);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A6878();
  sub_2450E5F58();
  v9[1] = a2;
  type metadata accessor for AggregateDescription();
  sub_2450A698C(&qword_27EDF7188, type metadata accessor for AggregateDescription, &unk_2450EE178);
  sub_2450E5E08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2450A122C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A12B8(uint64_t a1)
{
  v2 = sub_2450A6878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A12F4(uint64_t a1)
{
  v2 = sub_2450A6878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1330@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[5] = 0;
  a1[7] = 0;
}

void *sub_2450A1344@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450A46D0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2450A138C(uint64_t a1)
{
  v2 = sub_2450A6824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A13C8(uint64_t a1)
{
  v2 = sub_2450A6824();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A1404@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3000000000000000;
  return result;
}

uint64_t sub_2450A1460(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7148, &unk_2450EA340);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A67D0();
  sub_2450E5F58();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7158, &qword_2450EC1F0);
  sub_2450A6920(&qword_27EDF7160, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_2450E5E08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2450A15FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002450F2AA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2450E5E68();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2450A1690(uint64_t a1)
{
  v2 = sub_2450A67D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A16CC(uint64_t a1)
{
  v2 = sub_2450A67D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1708@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[5] = 0x8000000000000000;
  a1[7] = 0;
}

void *sub_2450A1720@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450A4878(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2450A1768(uint64_t a1)
{
  v2 = sub_2450A677C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A17A4(uint64_t a1)
{
  v2 = sub_2450A677C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A17E0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x3000000000000000;
  return result;
}

uint64_t sub_2450A1870(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_2450E5F58();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2450A19FC(uint64_t a1)
{
  v2 = sub_2450A6728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A1A38(uint64_t a1)
{
  v2 = sub_2450A6728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1B04(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-1] - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2450E5F58();
  v13 = v7[1];
  v15 = *v7;
  v16[0] = v13;
  *(v16 + 13) = *(v7 + 29);
  sub_2450A66D4();
  sub_2450E5E08();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2450A1C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A1CF0(uint64_t a1)
{
  v2 = sub_2450A6680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A1D2C(uint64_t a1)
{
  v2 = sub_2450A6680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1D70@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 36);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 36) = v7;
  *(a2 + 40) = a1;
  *(a2 + 56) = 0x1000000000000000;
}

double sub_2450A1E30@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_2450A4A20(a1, a2, a3, a4, &v10);
  if (!v6)
  {
    result = *&v10;
    v9 = *v11;
    *a6 = v10;
    *(a6 + 16) = v9;
    *(a6 + 29) = *&v11[13];
  }

  return result;
}

uint64_t sub_2450A1E88(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F80, &qword_2450E9318);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A4D68();
  sub_2450E5F58();
  v8 = v2[1];
  v11 = *v2;
  v12[0] = v8;
  *(v12 + 12) = *(v2 + 28);
  sub_2450A4E10(v2, v10);
  sub_2450A4E48();
  sub_2450E5E08();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2450A2014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A209C(uint64_t a1)
{
  v2 = sub_2450A4D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A20D8(uint64_t a1)
{
  v2 = sub_2450A4D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A2114@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
  *(a1 + 56) = 0x2000000000000000;
}

double sub_2450A2174@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2450A4BC4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 12);
    *(a1 + 28) = *(v7 + 12);
  }

  return result;
}

uint64_t sub_2450A21F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6FA0, &qword_2450E9328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A5158();
  sub_2450E5F58();
  v9 = v3[1];
  v17 = *v3;
  v18[0] = v9;
  *(v18 + 12) = *(v3 + 28);
  v10 = v3[1];
  v14 = *v3;
  v15[0] = v10;
  *(v15 + 12) = *(v3 + 28);
  v13 = 0;
  sub_2450A51DC(&v17, v12);
  sub_2450A4E48();
  sub_2450E5E08();

  if (!v2)
  {
    v16 = v3[3];
    v14 = v3[3];
    v13 = 1;
    sub_2450A5238(&v16, v12);
    sub_2450A2C60();
    sub_2450E5E08();
    sub_2450A5294(v14, *(&v14 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2450A23DC()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x73736572646461;
  }
}

uint64_t sub_2450A2410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2450A24EC(uint64_t a1)
{
  v2 = sub_2450A5158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A2528(uint64_t a1)
{
  v2 = sub_2450A5158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A2564@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v11;
  v5 = v12;
  v6 = DWORD2(v11) | 0x8000000000000000;
  v7 = *(&v12 + 1) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *a1 = v10[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  return sub_2450A2644(v10, &v9);
}

double sub_2450A25C4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2450A4E9C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2450A2690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_2450A26D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_22CoreAudioOrchestration0aB21OrchestratorClientXPCC7RequestO(uint64_t a1)
{
  v1 = (*(a1 + 56) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 40) >> 63);
  }
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

uint64_t sub_2450A2790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 44);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_2450A27E0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = (v4 >> 1) << 32;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450A2844(uint64_t result)
{
  v1 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 40) &= ~0x8000000000000000;
  *(result + 56) = v1;
  return result;
}

uint64_t sub_2450A2860(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    *(result + 44) = a2 << 31;
    *(result + 56) = v2;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x3000000000000000;
  }

  return result;
}

uint64_t sub_2450A28B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2450A2900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2450A2960()
{
  result = qword_27EDF6DD8;
  if (!qword_27EDF6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DD8);
  }

  return result;
}

unint64_t sub_2450A29B4()
{
  result = qword_27EDF6DE0;
  if (!qword_27EDF6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DE0);
  }

  return result;
}

unint64_t sub_2450A2A4C()
{
  result = qword_27EDF6DE8;
  if (!qword_27EDF6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DE8);
  }

  return result;
}

unint64_t sub_2450A2AA0()
{
  result = qword_27EDF6DF0;
  if (!qword_27EDF6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DF0);
  }

  return result;
}

unint64_t sub_2450A2B00()
{
  result = qword_27EDF6DF8;
  if (!qword_27EDF6DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6E00, qword_2450E9200);
    sub_2450A2B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DF8);
  }

  return result;
}

unint64_t sub_2450A2B84()
{
  result = qword_27EDF6E08;
  if (!qword_27EDF6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E08);
  }

  return result;
}

unint64_t sub_2450A2BDC()
{
  result = qword_27EDF6E10;
  if (!qword_27EDF6E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6E00, qword_2450E9200);
    sub_2450A2C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E10);
  }

  return result;
}

unint64_t sub_2450A2C60()
{
  result = qword_27EDF6E18;
  if (!qword_27EDF6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E18);
  }

  return result;
}

unint64_t sub_2450A2CE0()
{
  result = qword_27EDF6E20;
  if (!qword_27EDF6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E20);
  }

  return result;
}

unint64_t sub_2450A2D34()
{
  result = qword_27EDF6E28;
  if (!qword_27EDF6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E28);
  }

  return result;
}

unint64_t sub_2450A2D88()
{
  result = qword_27EDF6E78;
  if (!qword_27EDF6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E78);
  }

  return result;
}

unint64_t sub_2450A2DDC()
{
  result = qword_27EDF6E80;
  if (!qword_27EDF6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E80);
  }

  return result;
}

unint64_t sub_2450A2E30()
{
  result = qword_27EDF6E88;
  if (!qword_27EDF6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E88);
  }

  return result;
}

unint64_t sub_2450A2E84()
{
  result = qword_27EDF6E90;
  if (!qword_27EDF6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E90);
  }

  return result;
}

unint64_t sub_2450A2ED8()
{
  result = qword_27EDF6E98;
  if (!qword_27EDF6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E98);
  }

  return result;
}

unint64_t sub_2450A2F2C()
{
  result = qword_27EDF6EA0;
  if (!qword_27EDF6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EA0);
  }

  return result;
}

unint64_t sub_2450A2F80()
{
  result = qword_27EDF6EA8;
  if (!qword_27EDF6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EA8);
  }

  return result;
}

unint64_t sub_2450A2FD4()
{
  result = qword_27EDF6EB0;
  if (!qword_27EDF6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EB0);
  }

  return result;
}

unint64_t sub_2450A3028()
{
  result = qword_27EDF6EB8;
  if (!qword_27EDF6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EB8);
  }

  return result;
}

unint64_t sub_2450A307C()
{
  result = qword_27EDF6EC0;
  if (!qword_27EDF6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EC0);
  }

  return result;
}

unint64_t sub_2450A30D0()
{
  result = qword_27EDF6EC8;
  if (!qword_27EDF6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EC8);
  }

  return result;
}

unint64_t sub_2450A3124()
{
  result = qword_27EDF6ED0;
  if (!qword_27EDF6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6ED0);
  }

  return result;
}

unint64_t sub_2450A3178()
{
  result = qword_27EDF6ED8;
  if (!qword_27EDF6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6ED8);
  }

  return result;
}

unint64_t sub_2450A31CC()
{
  result = qword_27EDF6EE0;
  if (!qword_27EDF6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EE0);
  }

  return result;
}

unint64_t sub_2450A3220()
{
  result = qword_27EDF6EE8;
  if (!qword_27EDF6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EE8);
  }

  return result;
}

uint64_t sub_2450A3274(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000002450F2A20 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002450F2A40 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002450F2A60 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002450F2A80 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746169746F67656ELL && a2 == 0xEC0000004D444165 || (sub_2450E5E68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D44417470616461 && a2 == 0xE800000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65706F7250746567 && a2 == 0xEB00000000797472 || (sub_2450E5E68() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F7250746573 && a2 == 0xEB00000000797472)
  {

    return 7;
  }

  else
  {
    v5 = sub_2450E5E68();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2450A3528@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6EF0, &qword_2450E92C0);
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v85 = &v59 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6EF8, &qword_2450E92C8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v84 = &v59 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F00, &qword_2450E92D0);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v80 = &v59 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F08, &qword_2450E92D8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v83 = &v59 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F10, &qword_2450E92E0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v82 = &v59 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F18, &qword_2450E92E8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v79 = &v59 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F20, &qword_2450E92F0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F28, &qword_2450E92F8);
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F30, &unk_2450E9300);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v19 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2450A2D88();
  v18 = v86;
  sub_2450E5F48();
  LOBYTE(v19) = v18;
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v87);
  }

  v61 = v13;
  v60 = v11;
  v62 = v10;
  v20 = v82;
  v21 = v83;
  v22 = v84;
  v23 = v85;
  v63 = v15;
  v86 = v14;
  v24 = sub_2450E5D38();
  v25 = (2 * *(v24 + 16)) | 1;
  v96 = v24;
  v97 = v24 + 32;
  v98 = 0;
  v99 = v25;
  v26 = sub_2450BA298();
  if (v26 == 8 || v98 != v99 >> 1)
  {
    v35 = sub_2450E5B88();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730);
    *v37 = &type metadata for CoreAudioOrchestratorClientXPC.Request;
    v38 = v86;
    sub_2450E5C58();
    sub_2450E5B78();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v63 + 8))(v17, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v87);
  }

  if (v26 > 3u)
  {
    v40 = v86;
    v41 = v63;
    if (v26 > 5u)
    {
      if (v26 == 6)
      {
        LOBYTE(v88) = 6;
        sub_2450A2E30();
        sub_2450E5C48();
        sub_2450A2CE0();
        v44 = v76;
        v30 = v22;
        sub_2450E5D08();
        v73 = 0;
        (*(v75 + 8))(v22, v44);
        (*(v41 + 8))(v17, v40);
        swift_unknownObjectRelease();
        v34 = v88;
        v17 = v91;
        v85 = v90;
        v86 = v89;
        LODWORD(v21) = v92;
        LOBYTE(v19) = BYTE4(v92);
        v31 = v93;
        v33 = HIDWORD(v92) >> 8;
        v32 = 0x2000000000000000;
      }

      else
      {
        LOBYTE(v88) = 7;
        sub_2450A2DDC();
        sub_2450E5C48();
        sub_2450A2A4C();
        v52 = v77;
        sub_2450E5D08();
        v73 = 0;
        (*(v78 + 8))(v23, v52);
        (*(v41 + 8))(v17, v40);
        swift_unknownObjectRelease();
        v34 = v88;
        v17 = v91;
        v85 = v90;
        v86 = v89;
        LODWORD(v21) = v92;
        v30 = v94;
        v31 = v93 | 0x8000000000000000;
        v32 = v95 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        v19 = HIDWORD(v92);
        v33 = v92 >> 40;
      }
    }

    else if (v26 == 4)
    {
      LOBYTE(v88) = 4;
      sub_2450A2F2C();
      sub_2450E5C48();
      sub_2450A452C();
      v42 = v72;
      v30 = v21;
      sub_2450E5D08();
      v73 = 0;
      (*(v71 + 8))(v21, v42);
      (*(v41 + 8))(v17, v40);
      swift_unknownObjectRelease();
      v31 = 0;
      v33 = 0;
      v34 = v88;
      v17 = v91;
      v85 = v90;
      v86 = v89;
      LODWORD(v21) = v92;
      LOBYTE(v19) = BYTE4(v92);
      v100 = BYTE4(v92);
      v32 = 0x1000000000000000;
    }

    else
    {
      LOBYTE(v88) = 5;
      sub_2450A2E84();
      v48 = v80;
      sub_2450E5C48();
      sub_2450A44D8();
      v49 = v74;
      v30 = v48;
      sub_2450E5D08();
      v50 = (v73 + 8);
      v73 = 0;
      (*v50)(v48, v49);
      (*(v41 + 8))(v17, v40);
      swift_unknownObjectRelease();
      v33 = 0;
      v34 = v88;
      v17 = v91;
      v85 = v90;
      v86 = v89;
      LODWORD(v21) = v92;
      LOBYTE(v19) = BYTE4(v92);
      v100 = BYTE4(v92);
      v32 = 0x1000000000000000;
      v31 = 0x8000000000000000;
    }
  }

  else if (v26 > 1u)
  {
    if (v26 == 2)
    {
      LOBYTE(v88) = 2;
      sub_2450A307C();
      v43 = v79;
      sub_2450E5C48();
      sub_2450A45D4();
      v53 = v68;
      v30 = v43;
      sub_2450E5D08();
      v73 = 0;
      (*(v67 + 8))(v43, v53);
      (*(v63 + 8))(v17, v86);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0;
      v34 = v88;
      v31 = 0x8000000000000000;
    }

    else
    {
      LOBYTE(v88) = 3;
      sub_2450A2FD4();
      v51 = v86;
      sub_2450E5C48();
      sub_2450A4580();
      v54 = v70;
      sub_2450E5D08();
      v55 = v63;
      v73 = 0;
      (*(v69 + 8))(v20, v54);
      (*(v55 + 8))(v17, v51);
      swift_unknownObjectRelease();
      v85 = 0;
      v86 = 0;
      v17 = 0;
      v31 = 0;
      v30 = 0;
      LODWORD(v21) = 0;
      v33 = 0;
      v32 = 0x3000000000000000;
      v34 = 1;
    }
  }

  else if (v26)
  {
    LOBYTE(v88) = 1;
    sub_2450A3124();
    v45 = v62;
    v46 = v86;
    sub_2450E5C48();
    sub_2450A4628();
    v47 = v66;
    sub_2450E5D08();
    v73 = 0;
    (*(v65 + 8))(v45, v47);
    (*(v63 + 8))(v17, v46);
    swift_unknownObjectRelease();
    v34 = 0;
    v85 = 0;
    v86 = 0;
    v17 = 0;
    v31 = 0;
    v30 = 0;
    LODWORD(v21) = 0;
    v33 = 0;
    v32 = 0x3000000000000000;
  }

  else
  {
    LOBYTE(v88) = 0;
    sub_2450A31CC();
    v27 = v61;
    v28 = v86;
    sub_2450E5C48();
    sub_2450A467C();
    v29 = v60;
    v30 = v27;
    sub_2450E5D08();
    (*(v64 + 8))(v27, v29);
    (*(v63 + 8))(v17, v28);
    swift_unknownObjectRelease();
    v73 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v88;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v87);
  v56 = v81;
  v57 = v85;
  v58 = v86;
  *v81 = v34;
  v56[1] = v58;
  v56[2] = v57;
  v56[3] = v17;
  v56[4] = (v19 << 32) | (v33 << 40) | v21;
  v56[5] = v31;
  v56[6] = v30;
  v56[7] = v32;
  return result;
}

unint64_t sub_2450A44D8()
{
  result = qword_27EDF6F38;
  if (!qword_27EDF6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F38);
  }

  return result;
}

unint64_t sub_2450A452C()
{
  result = qword_27EDF6F40;
  if (!qword_27EDF6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F40);
  }

  return result;
}

unint64_t sub_2450A4580()
{
  result = qword_27EDF6F48;
  if (!qword_27EDF6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F48);
  }

  return result;
}

unint64_t sub_2450A45D4()
{
  result = qword_27EDF6F50;
  if (!qword_27EDF6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F50);
  }

  return result;
}

unint64_t sub_2450A4628()
{
  result = qword_27EDF6F58;
  if (!qword_27EDF6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F58);
  }

  return result;
}

unint64_t sub_2450A467C()
{
  result = qword_27EDF6F60;
  if (!qword_27EDF6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F60);
  }

  return result;
}

void *sub_2450A46D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF71B8, &qword_2450EA378);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A6878();
  sub_2450E5F48();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    type metadata accessor for AggregateDescription();
    sub_2450A698C(&qword_27EDF71C0, type metadata accessor for AggregateDescription, &unk_2450EE1A0);
    sub_2450E5D08();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

void *sub_2450A4878(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF71A8, &qword_2450EA370);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A67D0();
  sub_2450E5F48();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7158, &qword_2450EC1F0);
    sub_2450A6920(&qword_27EDF71B0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_2450E5D08();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

uint64_t sub_2450A4A20@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v23 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  *&v18[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2450E5F48();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v23;
  sub_2450A68CC();
  sub_2450E5D08();
  (*(*&v18[0] + 8))(v11, v9);
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v18[0] = v18[1];
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *v12 = v18[0];
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v15;
  *(v12 + 36) = v16;
  return result;
}

uint64_t sub_2450A4BC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F68, &qword_2450E9310);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A4D68();
  sub_2450E5F48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  sub_2450A4DBC();
  sub_2450E5D08();
  (*(v6 + 8))(v8, v5);
  v14[0] = v14[1];
  v9 = v15;
  v10 = v16;
  v11 = v18;
  v12 = v17;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v14[0];
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11;
  return result;
}

unint64_t sub_2450A4D68()
{
  result = qword_27EDF6F70;
  if (!qword_27EDF6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F70);
  }

  return result;
}

unint64_t sub_2450A4DBC()
{
  result = qword_27EDF6F78;
  if (!qword_27EDF6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F78);
  }

  return result;
}

unint64_t sub_2450A4E48()
{
  result = qword_27EDF6F88;
  if (!qword_27EDF6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F88);
  }

  return result;
}

uint64_t sub_2450A4E9C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F90, &qword_2450E9320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A5158();
  sub_2450E5F48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v26) = 0;
  sub_2450A4DBC();
  sub_2450E5D08();
  v9 = v31;
  v10 = v33;
  v24 = v32;
  v25 = v30;
  v40 = v34;
  v22 = v36;
  v23 = v35;
  v41 = 1;
  sub_2450A2B84();
  sub_2450E5D08();
  (*(v6 + 8))(v8, v5);
  v20 = *(&v39 + 1);
  v21 = v39;
  v12 = v24;
  v11 = v25;
  *&v26 = v25;
  *(&v26 + 1) = v9;
  *&v27 = v24;
  *(&v27 + 1) = v10;
  v13 = v40;
  v14 = v23;
  *&v28 = __PAIR64__(v23, v40);
  v19 = v10;
  LODWORD(v10) = v22;
  DWORD2(v28) = v22;
  v29 = v39;
  sub_2450A2644(&v26, &v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30 = v11;
  v31 = v9;
  v32 = v12;
  v33 = v19;
  v34 = v13;
  v35 = v14;
  v36 = v10;
  v37 = v21;
  v38 = v20;
  result = sub_2450A51AC(&v30);
  v16 = v27;
  *a2 = v26;
  a2[1] = v16;
  v17 = v29;
  a2[2] = v28;
  a2[3] = v17;
  return result;
}

unint64_t sub_2450A5158()
{
  result = qword_27EDF6F98;
  if (!qword_27EDF6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F98);
  }

  return result;
}

uint64_t sub_2450A5294(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for CoreAudioOrchestratorClientXPC.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}