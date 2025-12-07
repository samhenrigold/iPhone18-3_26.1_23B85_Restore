void sub_1E52A7330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  __cxa_free_exception(v46);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

void BBUEUR20UpdateSource::initSecFile(BBUEUR20UpdateSource *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = (*(*this + 64))(this);
  if (v2)
  {
    if ((*(this + 408) & 1) == 0)
    {
      v3 = v2;
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v4 = (**this)(this);
        _BBULog(3, 0, v4, "", "Detected it is unfused and there is fusing source. So, fetching sec.elf from fusing source.\n");
      }

LABEL_7:
      v49 = 0u;
      v50 = 0u;
      *v48 = 0u;
      BBUDataSource::generateHash(v3, v48, 1);
      v5 = operator new(0x30uLL);
      v45 = v5;
      v6 = v49;
      *v5 = *v48;
      v5[1] = v6;
      v5[2] = v50;
      v46 = v5 + 3;
      v47 = v5 + 3;
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_15;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v7 = (**this)(this);
        ctu::hex();
        v8 = v44 >= 0 ? __p : __p[0];
        _BBULog(3, 0, v7, "", "Fusing Source SHA-384: %s\n", v8);
        if (v44 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_15:
      v9 = (*(*v3 + 24))(v3);
      v10 = v9;
      v11 = operator new[](v9);
      v42 = -1431655766;
      if ((*(*v3 + 16))(v3, v11, v9, &v42, 0))
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 122, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x247u, "Failed to copy data from fusing source");
      }

      else
      {
        if (v42 == v9)
        {
          v12 = *MEMORY[0x1E695E480];
          v13 = CFDataCreate(*MEMORY[0x1E695E480], v11, v10);
          if (!v13)
          {
            v37 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v37, 121, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x24Bu, "Failed to create CFDataRef from the buffer");
          }

          format = kCFPropertyListXMLFormat_v1_0;
          v14 = CFPropertyListCreateWithData(v12, v13, 2uLL, &format, 0);
          v15 = v14;
          if (!v14)
          {
            v38 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x250u, "Failed to create fusing dictionary from plist");
          }

          Value = CFDictionaryGetValue(v14, @"Instructions");
          v17 = Value;
          if (Value)
          {
            v18 = CFGetTypeID(Value);
            if (v18 == CFArrayGetTypeID())
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
              v20 = ValueAtIndex;
              if (ValueAtIndex)
              {
                v21 = CFGetTypeID(ValueAtIndex);
                if (v21 == CFDataGetTypeID())
                {
                  v22 = operator new(0x18uLL);
                  v22[4] = 0;
                  *v22 = &unk_1F5F04B00;
                  *(v22 + 1) = v20;
                  CFRetain(v20);
                  v49 = 0u;
                  v50 = 0u;
                  *v48 = 0u;
                  BBUDataSource::generateHash(v22, v48, 1);
                  v23 = operator new(0x30uLL);
                  v24 = v49;
                  *v23 = *v48;
                  v23[1] = v24;
                  v23[2] = v50;
                  if (v45)
                  {
                    v46 = v45;
                    operator delete(v45);
                  }

                  v45 = v23;
                  v46 = v23 + 3;
                  v47 = v23 + 3;
                  if (gBBULogMaskGet(void)::once == -1)
                  {
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                    {
LABEL_27:
                      if ((gBBULogVerbosity & 0x80000000) == 0)
                      {
                        v25 = (**this)(this);
                        ctu::hex();
                        v26 = v44 >= 0 ? __p : __p[0];
                        _BBULog(3, 0, v25, "", "sec.elf SHA-384: %s\n", v26);
                        if (v44 < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }
                    }
                  }

                  else
                  {
                    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  CFRelease(v15);
                  CFRelease(v13);
                  operator delete[](v11);
                  if (v45)
                  {
                    v46 = v45;
                    operator delete(v45);
                  }

                  goto LABEL_49;
                }

                v40 = __cxa_allocate_exception(0x210uLL);
                _BBUException::_BBUException(v40, 124, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x25Bu, "Failed to get sec.elf in CFDataRef type");
              }

              else
              {
                v40 = __cxa_allocate_exception(0x210uLL);
                _BBUException::_BBUException(v40, 124, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x25Au, "Failed to get sec.elf in Instructions array");
              }
            }

            v39 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v39, 123, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x254u, "Failed to get Instructions as CFArrayRef type");
          }

          else
          {
            v39 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v39, 123, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x253u, "Failed to get Instructions in fusingprogram.plist");
          }
        }

        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 122, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x248u, "Failed due to copied size (%d) and original length (%d) is different.", v42, v9);
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_39;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v27 = (**this)(this);
      _BBULog(3, 1, v27, "", "Fusing source is not found.\n");
    }
  }

LABEL_39:
  BYTE7(v49) = 7;
  strcpy(v48, "sec.elf");
  v28 = BBUEURUpdateSource::containsFile(this, v48);
  if (SBYTE7(v49) < 0)
  {
    v29 = v28;
    operator delete(v48[0]);
    if (!v29)
    {
      goto LABEL_54;
    }
  }

  else if (!v28)
  {
    goto LABEL_54;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_47;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v30 = (**this)(this);
    _BBULog(3, 1, v30, "", "Detected it is fused or fusing source is not found. Use the dummy sec.elf\n");
  }

LABEL_47:
  BYTE7(v49) = 7;
  strcpy(v48, "sec.elf");
  DataSource = BBUEURUpdateSource::createDataSource(this, v48, 0);
  v22 = DataSource;
  if (SBYTE7(v49) < 0)
  {
    operator delete(v48[0]);
    if (v22)
    {
      goto LABEL_49;
    }
  }

  else if (DataSource)
  {
LABEL_49:
    v32 = operator new(0x20uLL);
    *v32 = &unk_1F5F014B0;
    v32[1] = v22;
    v32[2] = 0;
    *(v32 + 6) = 0;
    v33 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v33, v22, 0);
    v32[2] = v33;
    *v32 = &unk_1F5F01300;
    *(this + 50) = v32;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v34 = (**this)(this);
      _BBULog(3, 0, v34, "", "Loaded SEC\n");
    }

    return;
  }

LABEL_54:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v35 = (**this)(this);
    _BBULog(3, 0, v35, "", "File not present: %s\n", "sec.elf");
  }
}

void sub_1E52A8298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR20UpdateSource::eraseBasebandFilesystem(BBUEUR20UpdateSource *this)
{
  memset(&v63, 170, sizeof(v63));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    *&__dst = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  v54[0] = v2;
  v54[1] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v2, &v63);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v61[0] = v7;
  v59 = v7;
  v60 = v7;
  v57 = v7;
  *__p = v7;
  v55 = v7;
  v56 = v7;
  *v54 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](v54);
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v63;
  }

  else
  {
    v8 = v63.__r_.__value_.__r.__words[0];
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v63.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v8, size);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "efs", 3);
  v12 = MEMORY[0x1E69270E0](v11, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".bin", 4);
  v13 = &v57;
  v14 = *(this + 1);
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v17 = v60;
    v18 = &v57;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v17 = *(&v57 + 1);
      v18 = &v57;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v15 = 0;
      HIBYTE(v53) = 0;
      p_dst = &__dst;
      goto LABEL_32;
    }

    v17 = *(&v56 + 1);
    v18 = &v55 + 1;
  }

  v19 = *v18;
  v15 = v17 - *v18;
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    p_dst = operator new(v20);
    *(&__dst + 1) = v15;
    v53 = v20 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_31;
  }

  HIBYTE(v53) = v17 - *v18;
  p_dst = &__dst;
  if (v15)
  {
LABEL_31:
    memmove(p_dst, v19, v15);
  }

LABEL_32:
  *(p_dst + v15) = 0;
  v21 = &__dst;
  if (v53 < 0)
  {
    v21 = __dst;
  }

  BBUFeedback::handleComment(v14, "generating empty file for %s with size %u", v21, 0x100000);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__dst);
    v22 = BYTE8(v60);
    if ((BYTE8(v60) & 0x10) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    v25 = v60;
    v26 = &v57;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v25 = *(&v57 + 1);
      v26 = &v57;
    }

    goto LABEL_42;
  }

  v22 = BYTE8(v60);
  if ((BYTE8(v60) & 0x10) != 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if ((v22 & 8) == 0)
  {
    v23 = 0;
    HIBYTE(v53) = 0;
    v24 = &__dst;
    goto LABEL_51;
  }

  v25 = *(&v56 + 1);
  v26 = &v55 + 1;
LABEL_42:
  v27 = *v26;
  v23 = v25 - *v26;
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v23 | 7) + 1;
    }

    v24 = operator new(v28);
    *(&__dst + 1) = v23;
    v53 = v28 | 0x8000000000000000;
    *&__dst = v24;
    goto LABEL_50;
  }

  HIBYTE(v53) = v25 - *v26;
  v24 = &__dst;
  if (v23)
  {
LABEL_50:
    memmove(v24, v27, v23);
  }

LABEL_51:
  *(v24 + v23) = 0;
  v29 = BBUScratchFile::createWithFile(&__dst, 0x100000);
  v30 = v29;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__dst);
    if (v30)
    {
      goto LABEL_53;
    }
  }

  else if (v29)
  {
LABEL_53:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v31 = (**this)(this);
      _BBULog(3, 0, v31, "", "Failed generating empty EFS file %u\n", 1);
    }

    goto LABEL_83;
  }

  if ((BYTE8(v60) & 0x10) != 0)
  {
    v34 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v34 = *(&v57 + 1);
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v32 = 0;
      HIBYTE(v53) = 0;
      v33 = &__dst;
      goto LABEL_73;
    }

    v34 = *(&v56 + 1);
    v13 = &v55 + 1;
  }

  v35 = *v13;
  v32 = v34 - *v13;
  if (v32 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v32 | 7) + 1;
    }

    v33 = operator new(v36);
    *(&__dst + 1) = v32;
    v53 = v36 | 0x8000000000000000;
    *&__dst = v33;
  }

  else
  {
    HIBYTE(v53) = v34 - *v13;
    v33 = &__dst;
    if (!v32)
    {
      goto LABEL_73;
    }
  }

  memmove(v33, v35, v32);
LABEL_73:
  *(v33 + v32) = 0;
  v37 = operator new(0x30uLL);
  *v37 = &unk_1F5F00F28;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  if (BBUFileDataSource::init(v37, &__dst, 0))
  {
    (*(*v37 + 8))(v37);
    v37 = 0;
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(__dst);
  }

  v38 = **(this + 29);
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = operator new(0x58uLL);
  BBUEUREFSImage::BBUEUREFSImage(v39, v37, 1, 0);
  **(this + 29) = v39;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_83;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v40 = (**this)(this);
    _BBULog(3, 0, v40, "", "Loaded EFS%u\n", 1);
  }

LABEL_83:
  v41 = *(MEMORY[0x1E69E54E8] + 24);
  v54[0] = *MEMORY[0x1E69E54E8];
  *(v54 + *(v54[0] - 3)) = v41;
  v54[1] = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  v54[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  if (v30)
  {
    goto LABEL_114;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v42 = off_1ED944170;
  if (!off_1ED944170)
  {
    v43 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v43);
    v64 = v43;
    v44 = operator new(0x20uLL);
    *v44 = &unk_1F5F05A00;
    v44[1] = 0;
    v44[2] = 0;
    v44[3] = v43;
    v45 = off_1ED944178;
    off_1ED944170 = v43;
    off_1ED944178 = v44;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    v42 = off_1ED944170;
  }

  v46 = off_1ED944178;
  *&__dst = v42;
  *(&__dst + 1) = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v42, v54);
  if ((SBYTE7(v55) & 0x80u) == 0)
  {
    v48 = v54;
  }

  else
  {
    v48 = v54[0];
  }

  if (!v48)
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    goto LABEL_102;
  }

  if ((bbufs::prepareDestination(v48, v47) & 1) == 0)
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
LABEL_102:
    v49 = 0;
    if (SBYTE7(v55) < 0)
    {
      goto LABEL_105;
    }

    goto LABEL_103;
  }

  v49 = 1;
  if (SBYTE7(v55) < 0)
  {
LABEL_105:
    operator delete(v54[0]);
    if (!v46)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_103:
  if (!v46)
  {
LABEL_107:
    if (v49)
    {
LABEL_108:
      v30 = 0;
      goto LABEL_114;
    }

    goto LABEL_110;
  }

LABEL_106:
  if (atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_107;
  }

  (v46->__on_zero_shared)(v46);
  std::__shared_weak_count::__release_weak(v46);
  if (v49)
  {
    goto LABEL_108;
  }

LABEL_110:
  if (gBBULogMaskGet(void)::once == -1)
  {
    v30 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_114;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v30 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_114;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v50 = (**this)(this);
    _BBULog(3, 0, v50, "", "failed preparing filesystem after erase\n");
  }

LABEL_114:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  return v30;
}

void sub_1E52A8D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v23 - 104));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  _Unwind_Resume(a1);
}

char *BBUEUR20UpdateSource::copyHashData(BBUEUR20UpdateSource *this, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src[1] = v3;
    __src[2] = v3;
    __src[0] = v3;
    v24[1] = v3;
    v24[2] = v3;
    v23[2] = v3;
    v24[0] = v3;
    v23[0] = v3;
    v23[1] = v3;
    v22[1] = v3;
    v22[2] = v3;
    v22[0] = v3;
    v4 = *(this + 21);
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 89, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2B3u, "Assertion failure(fSBLImage && Failed loading SBL image for creating hash.)");
    }

    (*(*v4 + 56))(v4, __src, 1);
    v5 = *(this + 32);
    if (!v5)
    {
      v19 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v19, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2B6u, "Assertion failure(fAcdbImage && Failed loading ACDB image for creating hash.)");
    }

    (*(*v5 + 56))(v5, v24, 1);
    v6 = *(this + 33);
    if (!v6)
    {
      v20 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v20, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2B9u, "Assertion failure(fBbcfgImage && Failed loading BBCFG image for creating hash.)");
    }

    (*(*v6 + 56))(v6, v23, 1);
    v7 = *(this + 39);
    if (!v7)
    {
      v21 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v21, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2BCu, "Assertion failure(fOEMMiscImage && Failed loading OEMMisc image for creating hash.)");
    }

    (*(*v7 + 56))(v7, v22, 1);
    v8 = operator new(0xC8uLL);
    *v8 = &unk_1F5F00F90;
    v9 = off_1F5F00FB0(v8);
    memcpy(v8 + 8, __src, v9);
    v10 = (*(*v8 + 32))(v8);
    memcpy(v8 + 56, v24, v10);
    v11 = (*(*v8 + 32))(v8);
    memcpy(v8 + 104, v23, v11);
    v12 = (*(*v8 + 32))(v8);
    memcpy(v8 + 152, v22, v12);
  }

  else
  {
    v8 = operator new(0xC8uLL);
    *v8 = &unk_1F5F00F90;
    v13 = off_1F5F00FB0(v8);
    bzero(v8 + 8, v13);
    v14 = (*(*v8 + 32))(v8);
    bzero(v8 + 56, v14);
    v15 = (*(*v8 + 32))(v8);
    bzero(v8 + 104, v15);
    v16 = (*(*v8 + 32))(v8);
    bzero(v8 + 152, v16);
  }

  return v8;
}

uint64_t BBUEUR20UpdateSource::getProgrammerSource(BBUEUR20UpdateSource *this, int a2)
{
  if (a2)
  {
    v2 = *(this + 21);
    if (v2)
    {
      return (*(*v2 + 64))();
    }
  }

  else
  {
    v2 = *(this + 20);
    if (v2)
    {
      return (*(*v2 + 64))();
    }
  }

  return 0;
}

uint64_t *BBUEUR20UpdateSource::getItems(BBUEUR20UpdateSource *this)
{
  v2 = operator new(0x18uLL);
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  v3 = *(this + 21);
  SBLType = BBUEURUpdateSource::getSBLType(this);
  if (v3)
  {
    v5 = BBUProgrammer::Item::createFromImage(SBLType, v3);
    v6 = operator new(0x18uLL);
    v6[1] = v2;
    v6[2] = v5;
    v7 = *v2;
    *v6 = *v2;
    *(v7 + 8) = v6;
    *v2 = v6;
    ++v2[2];
  }

  v8 = *(this + 34);
  APDPType = BBUEURUpdateSource::getAPDPType(this);
  if (v8)
  {
    v10 = BBUProgrammer::Item::createFromImage(APDPType, v8);
    v11 = operator new(0x18uLL);
    v11[1] = v2;
    v11[2] = v10;
    v12 = *v2;
    *v11 = *v2;
    *(v12 + 8) = v11;
    *v2 = v11;
    ++v2[2];
  }

  v13 = *(this + 35);
  DEVCFGType = BBUEURUpdateSource::getDEVCFGType(this);
  if (v13)
  {
    v15 = BBUProgrammer::Item::createFromImage(DEVCFGType, v13);
    v16 = operator new(0x18uLL);
    v16[1] = v2;
    v16[2] = v15;
    v17 = *v2;
    *v16 = *v2;
    *(v17 + 8) = v16;
    *v2 = v16;
    ++v2[2];
  }

  v18 = *(this + 50);
  SECType = BBUEURUpdateSource::getSECType(this);
  if (v18)
  {
    v20 = BBUProgrammer::Item::createFromImage(SECType, v18);
    v21 = operator new(0x18uLL);
    v21[1] = v2;
    v21[2] = v20;
    v22 = *v2;
    *v21 = *v2;
    *(v22 + 8) = v21;
    *v2 = v21;
    ++v2[2];
  }

  v23 = *(this + 36);
  HYPType = BBUEURUpdateSource::getHYPType(this);
  if (v23)
  {
    v25 = BBUProgrammer::Item::createFromImage(HYPType, v23);
    v26 = operator new(0x18uLL);
    v26[1] = v2;
    v26[2] = v25;
    v27 = *v2;
    *v26 = *v2;
    *(v27 + 8) = v26;
    *v2 = v26;
    ++v2[2];
  }

  v28 = *(this + 37);
  AOPType = BBUEURUpdateSource::getAOPType(this);
  if (v28)
  {
    v30 = BBUProgrammer::Item::createFromImage(AOPType, v28);
    v31 = operator new(0x18uLL);
    v31[1] = v2;
    v31[2] = v30;
    v32 = *v2;
    *v31 = *v2;
    *(v32 + 8) = v31;
    *v2 = v31;
    ++v2[2];
  }

  v33 = *(this + 26);
  APPSType = BBUEURUpdateSource::getAPPSType(this);
  if (v33)
  {
    v35 = BBUProgrammer::Item::createFromImage(APPSType, v33);
    v36 = operator new(0x18uLL);
    v36[1] = v2;
    v36[2] = v35;
    v37 = *v2;
    *v36 = *v2;
    *(v37 + 8) = v36;
    *v2 = v36;
    ++v2[2];
  }

  v38 = *(this + 27);
  QDSP6SWType = BBUEURUpdateSource::getQDSP6SWType(this);
  if (v38)
  {
    v40 = BBUProgrammer::Item::createFromImage(QDSP6SWType, v38);
    v41 = operator new(0x18uLL);
    v41[1] = v2;
    v41[2] = v40;
    v42 = *v2;
    *v41 = *v2;
    *(v42 + 8) = v41;
    *v2 = v41;
    ++v2[2];
  }

  v43 = *(this + 28);
  TZType = BBUEURUpdateSource::getTZType(this);
  if (v43)
  {
    v45 = BBUProgrammer::Item::createFromImage(TZType, v43);
    v46 = operator new(0x18uLL);
    v46[1] = v2;
    v46[2] = v45;
    v47 = *v2;
    *v46 = *v2;
    *(v47 + 8) = v46;
    *v2 = v46;
    ++v2[2];
  }

  v48 = **(this + 29);
  EFS1Type = BBUEURUpdateSource::getEFS1Type(this);
  if (v48)
  {
    v50 = BBUProgrammer::Item::createFromImage(EFS1Type, v48);
    v51 = operator new(0x18uLL);
    v51[1] = v2;
    v51[2] = v50;
    v52 = *v2;
    *v51 = *v2;
    *(v52 + 8) = v51;
    *v2 = v51;
    ++v2[2];
  }

  v53 = *(*(this + 29) + 8);
  EFS2Type = BBUEURUpdateSource::getEFS2Type(this);
  if (v53)
  {
    v55 = BBUProgrammer::Item::createFromImage(EFS2Type, v53);
    v56 = operator new(0x18uLL);
    v56[1] = v2;
    v56[2] = v55;
    v57 = *v2;
    *v56 = *v2;
    *(v57 + 8) = v56;
    *v2 = v56;
    ++v2[2];
  }

  v58 = *(*(this + 29) + 16);
  EFS3Type = BBUEURUpdateSource::getEFS3Type(this);
  if (v58)
  {
    v60 = BBUProgrammer::Item::createFromImage(EFS3Type, v58);
    v61 = operator new(0x18uLL);
    v61[1] = v2;
    v61[2] = v60;
    v62 = *v2;
    *v61 = *v2;
    *(v62 + 8) = v61;
    *v2 = v61;
    ++v2[2];
  }

  v63 = *(this + 32);
  ACDBType = BBUEURUpdateSource::getACDBType(this);
  if (v63)
  {
    v65 = BBUProgrammer::Item::createFromImage(ACDBType, v63);
    v66 = operator new(0x18uLL);
    v66[1] = v2;
    v66[2] = v65;
    v67 = *v2;
    *v66 = *v2;
    *(v67 + 8) = v66;
    *v2 = v66;
    ++v2[2];
  }

  v68 = *(this + 5);
  CalType = BBUEURUpdateSource::getCalType(this);
  if (v68)
  {
    v70 = BBUProgrammer::Item::createFromImage(CalType, v68);
    v71 = operator new(0x18uLL);
    v71[1] = v2;
    v71[2] = v70;
    v72 = *v2;
    *v71 = *v2;
    *(v72 + 8) = v71;
    *v2 = v71;
    ++v2[2];
  }

  v73 = *(this + 6);
  ProvType = BBUEURUpdateSource::getProvType(this);
  if (v73)
  {
    v75 = BBUProgrammer::Item::createFromImage(ProvType, v73);
    v76 = operator new(0x18uLL);
    v76[1] = v2;
    v76[2] = v75;
    v77 = *v2;
    *v76 = *v2;
    *(v77 + 8) = v76;
    *v2 = v76;
    ++v2[2];
  }

  v78 = *(this + 7);
  PacType = BBUEURUpdateSource::getPacType(this);
  if (v78)
  {
    v80 = BBUProgrammer::Item::createFromImage(PacType, v78);
    v81 = operator new(0x18uLL);
    v81[1] = v2;
    v81[2] = v80;
    v82 = *v2;
    *v81 = *v2;
    *(v82 + 8) = v81;
    *v2 = v81;
    ++v2[2];
  }

  v83 = *(this + 33);
  BBCFGType = BBUEURUpdateSource::getBBCFGType(this);
  if (v83)
  {
    v85 = BBUProgrammer::Item::createFromImage(BBCFGType, v83);
    v86 = operator new(0x18uLL);
    v86[1] = v2;
    v86[2] = v85;
    v87 = *v2;
    *v86 = *v2;
    *(v87 + 8) = v86;
    *v2 = v86;
    ++v2[2];
  }

  v88 = *(this + 38);
  MDMDDRType = BBUEURUpdateSource::getMDMDDRType(this);
  if (v88)
  {
    v90 = BBUProgrammer::Item::createFromImage(MDMDDRType, v88);
    v91 = operator new(0x18uLL);
    v91[1] = v2;
    v91[2] = v90;
    v92 = *v2;
    *v91 = *v2;
    *(v92 + 8) = v91;
    *v2 = v91;
    ++v2[2];
  }

  v93 = *(this + 39);
  OEMMiscType = BBUEURUpdateSource::getOEMMiscType(this);
  if (v93)
  {
    v95 = BBUProgrammer::Item::createFromImage(OEMMiscType, v93);
    v96 = operator new(0x18uLL);
    v96[1] = v2;
    v96[2] = v95;
    v97 = *v2;
    *v96 = *v2;
    *(v97 + 8) = v96;
    *v2 = v96;
    ++v2[2];
  }

  v98 = *(this + 40);
  QTIMiscType = BBUEURUpdateSource::getQTIMiscType(this);
  if (v98)
  {
    v100 = BBUProgrammer::Item::createFromImage(QTIMiscType, v98);
    QTIMiscType = operator new(0x18uLL);
    *(QTIMiscType + 1) = v2;
    *(QTIMiscType + 2) = v100;
    v101 = *v2;
    *QTIMiscType = *v2;
    *(v101 + 8) = QTIMiscType;
    *v2 = QTIMiscType;
    ++v2[2];
  }

  XblCfgType = capabilities::updater::supportsXblCfgImage(QTIMiscType);
  if (XblCfgType)
  {
    v103 = *(this + 41);
    XblCfgType = BBUEURUpdateSource::getXblCfgType(this);
    if (v103)
    {
      v104 = BBUProgrammer::Item::createFromImage(XblCfgType, v103);
      XblCfgType = operator new(0x18uLL);
      *(XblCfgType + 1) = v2;
      *(XblCfgType + 2) = v104;
      v105 = *v2;
      *XblCfgType = *v2;
      *(v105 + 8) = XblCfgType;
      *v2 = XblCfgType;
      ++v2[2];
    }
  }

  UEFIType = capabilities::updater::supportsUEFIImage(XblCfgType);
  if (UEFIType)
  {
    v107 = *(this + 42);
    UEFIType = BBUEURUpdateSource::getUEFIType(this);
    if (v107)
    {
      v108 = BBUProgrammer::Item::createFromImage(UEFIType, v107);
      UEFIType = operator new(0x18uLL);
      *(UEFIType + 1) = v2;
      *(UEFIType + 2) = v108;
      v109 = *v2;
      *UEFIType = *v2;
      *(v109 + 8) = UEFIType;
      *v2 = UEFIType;
      ++v2[2];
    }
  }

  if (capabilities::updater::supportsXblSupportImage(UEFIType))
  {
    v110 = *(this + 43);
    XblSupportType = BBUEURUpdateSource::getXblSupportType(this);
    if (v110)
    {
      v112 = BBUProgrammer::Item::createFromImage(XblSupportType, v110);
      v113 = operator new(0x18uLL);
      v113[1] = v2;
      v113[2] = v112;
      v114 = *v2;
      *v113 = *v2;
      *(v114 + 8) = v113;
      *v2 = v113;
      ++v2[2];
    }
  }

  return v2;
}

uint64_t BBUEUR20UpdateSource::validateBootupItems(BBUEUR20UpdateSource *this)
{
  v2 = *(this + 21);
  if (!v2 || (v3 = (*(*v2 + 64))(v2)) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v7 = "SBL image missing\n";
    goto LABEL_31;
  }

  if (*(this + 34))
  {
    if (*(this + 35))
    {
      if (*(this + 50))
      {
        if (*(this + 36))
        {
          if (*(this + 37))
          {
            if (*(this + 26))
            {
              if (*(this + 27))
              {
                if (*(this + 28))
                {
                  if (**(this + 29))
                  {
                    if (*(this + 32))
                    {
                      if (*(this + 39))
                      {
                        if (*(this + 40))
                        {
                          if (*(this + 33))
                          {
                            v4 = capabilities::updater::supportsXblCfgImage(v3);
                            if (!v4 || *(this + 41))
                            {
                              v5 = capabilities::updater::supportsUEFIImage(v4);
                              if (!v5 || *(this + 42))
                              {
                                result = capabilities::updater::supportsXblSupportImage(v5);
                                if (!result)
                                {
                                  return result;
                                }

                                if (*(this + 43))
                                {
                                  return 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = "Baseband FW isn't complete. You are missing some images!\n";
LABEL_31:
    v8 = (**this)(this);
    _BBULog(1, 0, v8, "", v7);
    return 35;
  }

  return result;
}

uint64_t BBUEUR20UpdateSource::validateCoredumpItems(BBUEUR20UpdateSource *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    return 35;
  }

  v3 = (*(*v2 + 64))(v2);
  if (!v3 || !*(this + 34) || !*(this + 39))
  {
    return 35;
  }

  result = capabilities::updater::supportsXblCfgImage(v3);
  if (!result)
  {
    return result;
  }

  if (!*(this + 41))
  {
    return 35;
  }

  return 0;
}

capabilities::updater *BBUEUR20UpdateSource::saveImages(BBUEUR20UpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x34Au, "Assertion failure(fZipFile && Firmware data source error!)");
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v2 = (**this)(this);
  v3 = _BBULog(19, 0xFFFFFFFFLL, v2, "", "BBUEUR20UpdateSource::saveImages\n");
  memset(v34, 170, sizeof(v34));
  capabilities::radio::personalizedFirmwarePath(v34, v3);
  v4 = HIBYTE(v34[2]);
  if (SHIBYTE(v34[2]) < 0)
  {
    v4 = v34[1];
  }

  if (!v4)
  {
    v30 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v30, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x34Fu, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)");
  }

  result = BBUEURUpdateSource::saveImages(this);
  if (!result)
  {
    v33 = 15;
    strcpy(__p, "restoresbl1.mbn");
    result = BBUEURUpdateSource::saveFile(this, __p, v34);
    if (v33 < 0)
    {
      v6 = result;
      operator delete(*__p);
      result = v6;
      if (v6)
      {
        goto LABEL_76;
      }
    }

    else if (result)
    {
      goto LABEL_76;
    }

    v33 = 8;
    strcpy(__p, "sbl1.mbn");
    result = BBUEURUpdateSource::saveFile(this, __p, v34);
    if (v33 < 0)
    {
      v7 = result;
      operator delete(*__p);
      result = v7;
      if (v7)
      {
        goto LABEL_76;
      }
    }

    else if (result)
    {
      goto LABEL_76;
    }

    v33 = 8;
    strcpy(__p, "acdb.mbn");
    result = BBUEURUpdateSource::saveFile(this, __p, v34);
    if (v33 < 0)
    {
      v8 = result;
      operator delete(*__p);
      result = v8;
    }

    if (!result)
    {
      v33 = 7;
      strcpy(__p, "aop.mbn");
      result = BBUEURUpdateSource::saveFile(this, __p, v34);
      if (v33 < 0)
      {
        v9 = result;
        operator delete(*__p);
        result = v9;
      }

      if (!result)
      {
        v33 = 8;
        strcpy(__p, "apdp.mbn");
        result = BBUEURUpdateSource::saveFile(this, __p, v34);
        if (v33 < 0)
        {
          v10 = result;
          operator delete(*__p);
          result = v10;
        }

        if (!result)
        {
          v33 = 8;
          strcpy(__p, "apps.mbn");
          result = BBUEURUpdateSource::saveFile(this, __p, v34);
          if (v33 < 0)
          {
            v11 = result;
            operator delete(*__p);
            result = v11;
          }

          if (!result)
          {
            v33 = 10;
            strcpy(__p, "devcfg.mbn");
            result = BBUEURUpdateSource::saveFile(this, __p, v34);
            if (v33 < 0)
            {
              v12 = result;
              operator delete(*__p);
              result = v12;
            }

            if (!result)
            {
              v33 = 7;
              strcpy(__p, "hyp.mbn");
              result = BBUEURUpdateSource::saveFile(this, __p, v34);
              if (v33 < 0)
              {
                v13 = result;
                operator delete(*__p);
                result = v13;
              }

              if (!result)
              {
                v33 = 11;
                strcpy(__p, "qdsp6sw.mbn");
                result = BBUEURUpdateSource::saveFile(this, __p, v34);
                if (v33 < 0)
                {
                  v14 = result;
                  operator delete(*__p);
                  result = v14;
                }

                if (!result)
                {
                  v33 = 7;
                  strcpy(__p, "sec.elf");
                  v15 = BBUEURUpdateSource::saveFile(this, __p, v34);
                  if (v33 < 0)
                  {
                    operator delete(*__p);
                  }

                  result = v15;
                  if (!v15)
                  {
                    v33 = 6;
                    strcpy(__p, "tz.mbn");
                    v16 = BBUEURUpdateSource::saveFile(this, __p, v34);
                    if (v33 < 0)
                    {
                      operator delete(*__p);
                    }

                    result = v16;
                    if (!v16)
                    {
                      v33 = 15;
                      strcpy(__p, "multi_image.mbn");
                      v17 = BBUEURUpdateSource::saveFile(this, __p, v34);
                      if (v33 < 0)
                      {
                        operator delete(*__p);
                      }

                      result = v17;
                      if (!v17)
                      {
                        v33 = 19;
                        strcpy(__p, "multi_image_qti.mbn");
                        v18 = BBUEURUpdateSource::saveFile(this, __p, v34);
                        if (v33 < 0)
                        {
                          operator delete(*__p);
                        }

                        result = v18;
                        if (!v18)
                        {
                          v33 = 9;
                          strcpy(__p, "bbcfg.mbn");
                          v19 = BBUEURUpdateSource::saveFile(this, __p, v34);
                          if (v33 < 0)
                          {
                            operator delete(*__p);
                          }

                          result = v19;
                          if (!v19)
                          {
                            if ((capabilities::updater::supportsXblCfgImage(v19) & 1) == 0)
                            {
                              v20 = *(this + 8);
                              v33 = 11;
                              strcpy(__p, "xbl_cfg.elf");
                              result = BBUZipFile::containsFile(v20, __p);
                              if (!result)
                              {
                                goto LABEL_80;
                              }
                            }

                            v33 = 11;
                            strcpy(__p, "xbl_cfg.elf");
                            v21 = BBUEURUpdateSource::saveFile(this, __p, v34);
                            if (v33 < 0)
                            {
                              operator delete(*__p);
                            }

                            result = v21;
                            if (!v21)
                            {
LABEL_80:
                              if ((capabilities::updater::supportsUEFIImage(result) & 1) == 0)
                              {
                                v22 = *(this + 8);
                                v33 = 8;
                                strcpy(__p, "uefi.elf");
                                result = BBUZipFile::containsFile(v22, __p);
                                if (!result)
                                {
                                  goto LABEL_81;
                                }
                              }

                              v33 = 8;
                              strcpy(__p, "uefi.elf");
                              v23 = BBUEURUpdateSource::saveFile(this, __p, v34);
                              if (v33 < 0)
                              {
                                operator delete(*__p);
                              }

                              result = v23;
                              if (!v23)
                              {
LABEL_81:
                                if ((capabilities::updater::supportsXblSupportImage(result) & 1) == 0)
                                {
                                  v24 = *(this + 8);
                                  v33 = 15;
                                  strcpy(__p, "xbl_support.elf");
                                  if (!BBUZipFile::containsFile(v24, __p))
                                  {
                                    goto LABEL_67;
                                  }
                                }

                                v33 = 15;
                                strcpy(__p, "xbl_support.elf");
                                v25 = BBUEURUpdateSource::saveFile(this, __p, v34);
                                if (v33 < 0)
                                {
                                  operator delete(*__p);
                                }

                                result = v25;
                                if (!v25)
                                {
LABEL_67:
                                  v26 = *(this + 8);
                                  (*(*this + 56))(__p, this);
                                  v27 = BBUZipFile::containsFile(v26, __p);
                                  if (v33 < 0)
                                  {
                                    operator delete(*__p);
                                  }

                                  if (v27)
                                  {
                                    (*(*this + 56))(__p, this);
                                    v28 = BBUEURUpdateSource::saveFile(this, __p, v34);
                                    if (v33 < 0)
                                    {
                                      operator delete(*__p);
                                    }

                                    result = v28;
                                  }

                                  else
                                  {
                                    result = 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_76:
  if (SHIBYTE(v34[2]) < 0)
  {
    v31 = result;
    operator delete(v34[0]);
    return v31;
  }

  return result;
}

void sub_1E52AA550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR20UpdateSource::getImageIDFromImageName(const void **a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  if (v1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v2;
  }

  v5 = memcmp(v3, "CAL", v4);
  if (v2 == 3 && v5 == 0)
  {
    return 1128352768;
  }

  if (v2 >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v2;
  }

  v8 = memcmp(v3, "PROV", v7);
  if (v2 == 4 && v8 == 0)
  {
    return 1347571542;
  }

  v10 = memcmp(v3, "PAC", v4);
  if (v2 == 3 && !v10)
  {
    return 1346454272;
  }

  v12 = memcmp(v3, "ACT", v4);
  if (v2 != 3 || v12)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x3CCu, "Assertion failure(false && Unrecognized BBUEUR Remote Data fileName.)");
  }

  return 1094931456;
}

void std::__shared_ptr_pointer<BBUZipFile *,std::shared_ptr<BBUZipFile>::__shared_ptr_default_delete<BBUZipFile,BBUZipFile>,std::allocator<BBUZipFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBUZipFile *,std::shared_ptr<BBUZipFile>::__shared_ptr_default_delete<BBUZipFile,BBUZipFile>,std::allocator<BBUZipFile>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    BBUZipFile::~BBUZipFile(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<BBUZipFile *,std::shared_ptr<BBUZipFile>::__shared_ptr_default_delete<BBUZipFile,BBUZipFile>,std::allocator<BBUZipFile>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391952)
  {
    if (((v2 & 0x80000001E5391952 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391952))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391952 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

BBUZipFile **std::unique_ptr<BBUZipFile>::~unique_ptr[abi:ne200100](BBUZipFile **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    BBUZipFile::~BBUZipFile(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

const void **ctu::cf::CFSharedRef<__CFWriteStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BBUEURSBLImage::~BBUEURSBLImage(void **this)
{
  *this = &unk_1F5F01210;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_1F5F04F58;
  v2 = this[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_1F5F01210;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_1F5F04F58;
  v2 = this[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(this);
}

uint64_t BBUEURSBLImage::getName(BBUEURSBLImage *this)
{
  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

void BBUEURMDMDDRImage::~BBUEURMDMDDRImage(BBUEURMDMDDRImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEURSecImage::~BBUEURSecImage(BBUEURSecImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void ctu::cf::_Applier_InsertMapDefault<std::string,__CFData const*,std::insert_iterator<std::map<std::string,__CFData const*>>>(uint64_t a1, const void *a2, uint64_t ***a3)
{
  *v12 = 0u;
  v13 = 0u;
  if (!ctu::cf::assign())
  {
    goto LABEL_14;
  }

  if (a2)
  {
    v5 = CFGetTypeID(a2);
    if (v5 == CFDataGetTypeID())
    {
      *(&v13 + 1) = a2;
    }
  }

  if (SBYTE7(v13) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v12[0], v12[1]);
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v12;
    __p.__r_.__value_.__r.__words[2] = v13;
  }

  v11 = *(&v13 + 1);
  v6 = std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,__CFData const*>>(*a3, a3[1], &__p.__r_.__value_.__l.__data_, &__p);
  a3[1] = v6;
  v7 = v6[1];
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    do
    {
      v8 = v6[2];
      v9 = *v8 == v6;
      v6 = v8;
    }

    while (!v9);
  }

  a3[1] = v8;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SBYTE7(v13) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v12[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SBYTE7(v13) < 0)
  {
    goto LABEL_17;
  }
}

void sub_1E52AAEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,__CFData const*>>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__find_equal<std::string>(a1, a2, &v14, &v13, a3);
  if (*v6)
  {
    return *v6;
  }

  v8 = v6;
  v9 = operator new(0x40uLL);
  v10 = v9;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 32), *a4, *(a4 + 8));
  }

  else
  {
    *(v9 + 2) = *a4;
    *(v9 + 6) = *(a4 + 16);
  }

  v10[7] = *(a4 + 24);
  v11 = v14;
  *v10 = 0;
  v10[1] = 0;
  v10[2] = v11;
  *v8 = v10;
  v12 = **a1;
  if (v12)
  {
    *a1 = v12;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v10);
  a1[2] = (a1[2] + 1);
  return v10;
}

void sub_1E52AAFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = (v33 + 1);
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = a4 + 4;
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = *(v51 + 32);
        v53 = v51 + 32;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = *(v53 + 8);
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = (v52 + 1);
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::unique_ptr<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::manager_global>::~PthreadMutexGuardPolicy, &stru_1ED944238, &dword_1E5234000);
  }

  return result;
}

void BBUConsoleFeedback::~BBUConsoleFeedback(BBUConsoleFeedback *this)
{
  *this = &unk_1F5F01370;
  v2 = *(this + 36);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(this + 25);
    v4 = *(this + 26);
    if (v4 != v3)
    {
      goto LABEL_4;
    }

LABEL_30:
    v4 = v3;
    *(this + 29) = 0;
    v12 = 0;
    goto LABEL_15;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = *(this + 25);
  v4 = *(this + 26);
  if (v4 == v3)
  {
    goto LABEL_30;
  }

LABEL_4:
  v5 = *(this + 28);
  v6 = &v3[v5 / 0xAA];
  v7 = *v6;
  v8 = *v6 + 24 * (v5 % 0xAA);
  v9 = v3[(*(this + 29) + v5) / 0xAA] + 24 * ((*(this + 29) + v5) % 0xAA);
  if (v8 == v9)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v8 + 23) < 0)
    {
      v10 = *v8;
      v8 += 24;
      operator delete(v10);
      v7 = *v6;
      if (v8 - *v6 != 4080)
      {
        continue;
      }
    }

    else
    {
      v8 += 24;
      if (v8 - v7 != 4080)
      {
        continue;
      }
    }

    v11 = v6[1];
    ++v6;
    v7 = v11;
    v8 = v11;
  }

  while (v8 != v9);
  v3 = *(this + 25);
  v4 = *(this + 26);
LABEL_13:
  *(this + 29) = 0;
  v12 = v4 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = *(this + 26);
      v3 = (*(this + 25) + 8);
      *(this + 25) = v3;
      v12 = v4 - v3;
    }

    while (v12 > 2);
  }

LABEL_15:
  if (v12 == 1)
  {
    v13 = 85;
LABEL_19:
    *(this + 28) = v13;
  }

  else if (v12 == 2)
  {
    v13 = 170;
    goto LABEL_19;
  }

  if (v3 != v4)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v4);
    v16 = *(this + 25);
    v15 = *(this + 26);
    if (v15 != v16)
    {
      *(this + 26) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v17 = *(this + 24);
  if (v17)
  {
    operator delete(v17);
  }

  BBUFeedback::~BBUFeedback(this);
}

{
  BBUConsoleFeedback::~BBUConsoleFeedback(this);

  operator delete(v1);
}

void BBUConsoleFeedback::addBracketedReturn(uint64_t a1, int a2)
{
  *(&v19.__r_.__value_.__s + 23) = 1;
  LOWORD(v19.__r_.__value_.__l.__data_) = 40;
  v3 = BBUReturnAsString::BBUReturnStrings[a2];
  v4 = strlen(v3);
  v5 = std::string::append(&v19, v3, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21 = v5->__r_.__value_.__r.__words[2];
  v20 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = SHIBYTE(v21);
  if ((SHIBYTE(v21) & 0x8000000000000000) == 0)
  {
    v8 = &v20;
    if (SHIBYTE(v21) == 22)
    {
      v9 = 22;
      v10 = 23;
LABEL_7:
      v12 = 2 * v9;
      if (v10 > 2 * v9)
      {
        v12 = v10;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v11 = v13;
      }

      else
      {
        v11 = 23;
      }

      v14 = v9 == 22;
      goto LABEL_16;
    }

LABEL_22:
    *(v8 + v7) = 41;
    v18 = v7 + 1;
    if (SHIBYTE(v21) < 0)
    {
      *(&v20 + 1) = v18;
    }

    else
    {
      HIBYTE(v21) = v18 & 0x7F;
    }

    v17 = v8 + v18;
    goto LABEL_26;
  }

  v7 = *(&v20 + 1);
  v10 = v21 & 0x7FFFFFFFFFFFFFFFLL;
  v9 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v9 != *(&v20 + 1))
  {
    v8 = v20;
    goto LABEL_22;
  }

  v11 = 0x7FFFFFFFFFFFFFF7;
  if (v10 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v20;
  if (v9 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_16:
  v15 = operator new(v11);
  v16 = v15;
  if (v9)
  {
    memmove(v15, v8, v9);
  }

  v16[v9] = 41;
  if (!v14)
  {
    operator delete(v8);
  }

  *(&v20 + 1) = v10;
  v21 = v11 | 0x8000000000000000;
  *&v20 = v16;
  v17 = &v16[v10];
LABEL_26:
  *v17 = 0;
  *a1 = v20;
  *(a1 + 16) = v21;
  v21 = 0;
  v20 = 0uLL;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1E52AB87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p)
{
  if (v16 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t BBUConsoleFeedback::writeToStreamInternal(BBUConsoleFeedback *this, const char *a2, va_list a3)
{
  v6 = MEMORY[0x1E69E9858];
  vfprintf(*MEMORY[0x1E69E9858], a2, a3);
  (*(*this + 112))(this, a2, a3);
  v7 = *v6;

  return fflush(v7);
}

void BBUConsoleFeedback::registerLogBuffer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 288);
  *(a1 + 280) = v3;
  *(a1 + 288) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t BBUConsoleFeedback::writeToBuffInternal(uint64_t this, const char *a2, va_list a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 280))
  {
    v5 = this;
    bzero(__str, 0x401uLL);
    this = vsnprintf(__str, 0x400uLL, a2, a3);
    if (this >= 1)
    {
      if (this >= 0x400)
      {
        __str[1023] = 10;
        LODWORD(this) = 1024;
      }

      return (*(**(v5 + 280) + 24))(*(v5 + 280), __str, this);
    }
  }

  return this;
}

void BBUConsoleFeedback::handleBeginPhaseInternal(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x4Eu, "Assertion failure(!fQuickStepInProgress)");
    goto LABEL_90;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x4Fu, "Assertion failure(!fLongStepInProgress)");
LABEL_90:
  }

  memset(__b, 170, sizeof(__b));
  v3 = *(a1 + 232);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __b[1] = v3;
    __b[2] = (v6 | 0x8000000000000000);
    __b[0] = v5;
    goto LABEL_11;
  }

  HIBYTE(__b[2]) = *(a1 + 232);
  v5 = __b;
  if (v3)
  {
LABEL_11:
    memset(v5, 9, v3);
  }

  *(v5 + v3) = 0;
  v8 = *(a1 + 200);
  v7 = *(a1 + 208);
  v9 = v7 - v8;
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 170 * ((v7 - v8) >> 3) - 1;
  }

  v11 = *(a1 + 224);
  if (v10 == *(a1 + 232) + v11)
  {
    v12 = v11 >= 0xAA;
    v13 = v11 - 170;
    if (v12)
    {
      *(a1 + 224) = v13;
      v73 = *v8;
      *(a1 + 200) = v8 + 8;
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((a1 + 192), &v73);
LABEL_74:
      v8 = *(a1 + 200);
      v7 = *(a1 + 208);
      goto LABEL_75;
    }

    v14 = *(a1 + 216);
    v15 = *(a1 + 192);
    if (v9 < (v14 - v15))
    {
      v16 = operator new(0xFF0uLL);
      if (v14 != v7)
      {
        *v7 = v16;
        *(a1 + 208) = v7 + 8;
        goto LABEL_74;
      }

      if (v8 != v15)
      {
        v27 = v8;
LABEL_73:
        *(v27 - 1) = v16;
        v73 = v16;
        *(a1 + 200) = v27;
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((a1 + 192), &v73);
        goto LABEL_74;
      }

      if (v7 == v8)
      {
        v50 = 1;
      }

      else
      {
        v50 = (v14 - v8) >> 2;
      }

      if (!(v50 >> 61))
      {
        v51 = v16;
        v52 = operator new(8 * v50);
        v16 = v51;
        v53 = (v50 + 3) >> 2;
        v27 = &v52[8 * v53];
        v54 = v27;
        if (v7 != v8)
        {
          v54 = &v27[v9];
          v55 = v7 - v8 - 8;
          v56 = &v52[8 * v53];
          v57 = v8;
          if (v55 < 0x38)
          {
            goto LABEL_97;
          }

          v58 = &v52[8 * v53];
          v56 = v58;
          v57 = v8;
          if ((v58 - v8) < 0x20)
          {
            goto LABEL_97;
          }

          v59 = (v55 >> 3) + 1;
          v60 = 8 * (v59 & 0x3FFFFFFFFFFFFFFCLL);
          v56 = &v27[v60];
          v57 = &v8[v60];
          v61 = (v8 + 16);
          v62 = v58 + 16;
          v63 = v59 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v64 = *v61;
            *(v62 - 1) = *(v61 - 1);
            *v62 = v64;
            v61 += 2;
            v62 += 2;
            v63 -= 4;
          }

          while (v63);
          if (v59 != (v59 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_97:
            do
            {
              v65 = *v57;
              v57 += 8;
              *v56 = v65;
              v56 += 8;
            }

            while (v56 != v54);
          }
        }

        *(a1 + 192) = v52;
        *(a1 + 200) = v27;
        *(a1 + 208) = v54;
        *(a1 + 216) = &v52[8 * v50];
        if (v8)
        {
          operator delete(v15);
          v16 = v51;
          v27 = *(a1 + 200);
        }

        goto LABEL_73;
      }

LABEL_93:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (v14 - v15) >> 2;
    if (v14 == v15)
    {
      v17 = 1;
    }

    if (v17 >> 61)
    {
      goto LABEL_93;
    }

    v18 = 8 * v17;
    v19 = operator new(8 * v17);
    v20 = operator new(0xFF0uLL);
    v21 = v20;
    v22 = &v19[v9];
    v23 = &v19[v18];
    if (v9 != v18)
    {
      goto LABEL_28;
    }

    if (v9 >= 1)
    {
      v22 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_28:
      *v22 = v20;
      v24 = v22 + 8;
      if (v7 != v8)
      {
        goto LABEL_42;
      }

LABEL_29:
      v25 = v22;
LABEL_30:
      v26 = *(a1 + 192);
      *(a1 + 192) = v19;
      *(a1 + 200) = v25;
      *(a1 + 208) = v24;
      *(a1 + 216) = v23;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_74;
    }

    if (v7 == v8)
    {
      v28 = 1;
    }

    else
    {
      v28 = v9 >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = operator new(8 * v28);
    v23 = &v22[8 * v28];
    operator delete(v19);
    v29 = *(a1 + 200);
    v7 = *(a1 + 208);
    v19 = v22;
    *v22 = v21;
    v24 = v22 + 8;
    if (v7 == v29)
    {
      goto LABEL_29;
    }

LABEL_42:
    while (v22 != v19)
    {
      v30 = v22;
LABEL_41:
      v31 = *(v7 - 1);
      v7 -= 8;
      *(v30 - 1) = v31;
      v25 = v30 - 8;
      v22 = v25;
      if (v7 == *(a1 + 200))
      {
        goto LABEL_30;
      }
    }

    if (v24 < v23)
    {
      v30 = &v19[8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1)];
      v33 = v24 - v19;
      v32 = v24 == v19;
      v24 += 8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1);
      if (!v32)
      {
        memmove(v30, v22, v33);
      }

      goto LABEL_41;
    }

    if (v23 == v19)
    {
      v34 = 1;
    }

    else
    {
      v34 = (v23 - v19) >> 2;
    }

    if (v34 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v35 = operator new(8 * v34);
    v36 = v35;
    v37 = (v34 + 3) >> 2;
    v30 = &v35[8 * v37];
    v38 = v24 - v19;
    v32 = v24 == v19;
    v24 = v30;
    if (!v32)
    {
      v24 = &v30[v38];
      v39 = v38 - 8;
      if (v39 >= 0x18 && (v40 = 8 * v37, (&v35[8 * v37] - v22) >= 0x20))
      {
        v44 = (v39 >> 3) + 1;
        v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
        v41 = &v30[v45];
        v42 = &v22[v45];
        v46 = (v22 + 16);
        v47 = &v35[v40 + 16];
        v48 = v44 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v49 = *v46;
          *(v47 - 1) = *(v46 - 1);
          *v47 = v49;
          v46 += 2;
          v47 += 32;
          v48 -= 4;
        }

        while (v48);
        if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v41 = &v35[8 * v37];
        v42 = v22;
      }

      do
      {
        v43 = *v42;
        v42 += 8;
        *v41 = v43;
        v41 += 8;
      }

      while (v41 != v24);
    }

LABEL_55:
    v23 = &v35[8 * v34];
    operator delete(v19);
    v19 = v36;
    goto LABEL_41;
  }

LABEL_75:
  if (v7 == v8)
  {
    v67 = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v66 = *(a1 + 232) + *(a1 + 224);
    v67 = (*&v8[8 * (v66 / 0xAA)] + 24 * (v66 % 0xAA));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_77:
      v68 = *a2;
      v67->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v67->__r_.__value_.__l.__data_ = v68;
      goto LABEL_80;
    }
  }

  std::string::__init_copy_ctor_external(v67, *a2, *(a2 + 1));
LABEL_80:
  ++*(a1 + 232);
  BBUProfiler::startStage((a1 + 80), a2);
  v69 = __b;
  if (SHIBYTE(__b[2]) < 0)
  {
    v69 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v70 = a2;
  }

  else
  {
    v70 = *a2;
  }

  BBUConsoleFeedback::writeToStream(a1, "%sBEGIN: %s\n", v69, v70);
  if (SHIBYTE(__b[2]) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1E52AC0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  operator delete(v17);
  operator delete(v16);
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void BBUConsoleFeedback::handleEndPhase(uint64_t a1, int a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x5Au, "Assertion failure(!fQuickStepInProgress)");
    goto LABEL_41;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x5Bu, "Assertion failure(!fLongStepInProgress)");
    goto LABEL_41;
  }

  v3 = *(a1 + 232);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x5Du, "Assertion failure(fPhases.size())");
LABEL_41:
  }

  memset(&v29, 170, sizeof(v29));
  v5 = *(a1 + 224);
  v6 = v3 - 1;
  v7 = v5 + v3 - 1;
  v8 = *(a1 + 200);
  v9 = v7 / 0xAA;
  v10 = *(v8 + 8 * (v7 / 0xAA));
  v11 = v7 % 0xAA;
  v12 = (v10 + 24 * v11);
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    v13 = *v12;
    v29.__r_.__value_.__r.__words[2] = *(v12 + 2);
    *&v29.__r_.__value_.__l.__data_ = v13;
    v14 = *(v8 + 8 * v9) + 24 * v11;
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(&v29, *v12, *(v12 + 1));
  v5 = *(a1 + 224);
  v3 = *(a1 + 232);
  v8 = *(a1 + 200);
  v6 = v3 - 1;
  v14 = *(v8 + 8 * ((v3 - 1 + v5) / 0xAAuLL)) + 24 * ((v3 - 1 + v5) % 0xAAuLL);
  if (*(v14 + 23) < 0)
  {
LABEL_6:
    operator delete(*v14);
    v8 = *(a1 + 200);
    v5 = *(a1 + 224);
    v3 = *(a1 + 232);
    v6 = v3 - 1;
  }

LABEL_7:
  v15 = *(a1 + 208);
  *(a1 + 232) = v6;
  if (v15 == v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = 170 * ((v15 - v8) >> 3) - 1;
  }

  if ((v16 - (v5 + v3) + 1) >= 0x154)
  {
    operator delete(*(v15 - 8));
    *(a1 + 208) -= 8;
  }

  BBUProfiler::endStage((a1 + 80));
  memset(__b, 170, sizeof(__b));
  v17 = *(a1 + 232);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v17 | 7) + 1;
    }

    v18 = operator new(v20);
    __b[1] = v17;
    __b[2] = (v20 | 0x8000000000000000);
    __b[0] = v18;
  }

  else
  {
    HIBYTE(__b[2]) = *(a1 + 232);
    v18 = __b;
    if (!v17)
    {
      LOBYTE(__b[0]) = 0;
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
      if (a2)
      {
        goto LABEL_16;
      }

LABEL_24:
      v19 = __p;
      goto LABEL_25;
    }
  }

  memset(v18, 9, v17);
  *(v18 + v17) = 0;
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_16:
  BBUConsoleFeedback::addBracketedReturn(&v24, a2);
  *__p = v24;
  v27 = v25;
  v19 = __p;
  if (v25 < 0)
  {
    v19 = v24;
  }

LABEL_25:
  v21 = __b;
  if (SHIBYTE(__b[2]) < 0)
  {
    v21 = __b[0];
  }

  v22 = &v29;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v29.__r_.__value_.__r.__words[0];
  }

  BBUConsoleFeedback::writeToStream(a1, "%sEND%s: %s\n", v21, v19, v22);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__b[2]) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_37:
      operator delete(v29.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__b[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__b[0]);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }
}

void sub_1E52AC50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((*(v26 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v26 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v26 - 80));
  _Unwind_Resume(exception_object);
}

void BBUConsoleFeedback::handleBeginQuickStepInternal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x70u, "Assertion failure(!fQuickStepInProgress)");
    goto LABEL_22;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x71u, "Assertion failure(!fLongStepInProgress)");
LABEL_22:
  }

  BBUProfiler::startStage((a1 + 80), a2);
  v4 = *(a1 + 232);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v5 = operator new(v6);
    __b[1] = v4;
    v11 = v6 | 0x8000000000000000;
    __b[0] = v5;
    goto LABEL_11;
  }

  HIBYTE(v11) = *(a1 + 232);
  v5 = __b;
  if (v4)
  {
LABEL_11:
    memset(v5, 9, v4);
  }

  *(v5 + v4) = 0;
  v7 = __b;
  if (v11 < 0)
  {
    v7 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  BBUConsoleFeedback::writeToStream(a1, "%s%s...\n", v7, v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__b[0]);
  }

  *(a1 + 240) = 1;
}

void sub_1E52AC740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUConsoleFeedback::handleEndQuickStep(BBUConsoleFeedback *this, int a2)
{
  if ((*(this + 240) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x7Bu, "Assertion failure(fQuickStepInProgress)");
    goto LABEL_33;
  }

  if (*(this + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x7Cu, "Assertion failure(!fLongStepInProgress)");
LABEL_33:
  }

  memset(&v14, 0, sizeof(v14));
  if (a2 != 14 && a2)
  {
    *(&v14.__r_.__value_.__s + 23) = 6;
    qmemcpy(&v14, "FAILED", 6);
    BBUConsoleFeedback::addBracketedReturn(&__p, a2);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v13 >= 0)
    {
      v4 = HIBYTE(v13);
    }

    else
    {
      v4 = v12;
    }

    std::string::append(&v14, p_p, v4);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(&v14.__r_.__value_.__s + 23) = 2;
    LOWORD(v14.__r_.__value_.__l.__data_) = 19279;
  }

  v5 = *(this + 29);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v5 | 7) + 1;
    }

    v6 = operator new(v7);
    v12 = v5;
    v13 = v7 | 0x8000000000000000;
    __p = v6;
    goto LABEL_22;
  }

  HIBYTE(v13) = *(this + 29);
  v6 = &__p;
  if (v5)
  {
LABEL_22:
    memset(v6, 9, v5);
  }

  *(v6 + v5) = 0;
  v8 = &__p;
  if (v13 < 0)
  {
    v8 = __p;
  }

  v9 = &v14;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v14.__r_.__value_.__r.__words[0];
  }

  BBUConsoleFeedback::writeToStream(this, "%s%s\n", v8, v9);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  BBUProfiler::endStage((this + 80));
  *(this + 240) = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1E52AC97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

uint64_t BBUConsoleFeedback::handleBeginLongStep(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x93u, "Assertion failure(!fQuickStepInProgress)");
    goto LABEL_25;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x94u, "Assertion failure(!fLongStepInProgress)");
LABEL_25:
  }

  if (*(a1 + 184))
  {
    v8 = 10;
  }

  else
  {
    v8 = 32;
  }

  BBUProfiler::startStage((a1 + 80), a2);
  v9 = *(a1 + 232);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v9 | 7) + 1;
    }

    v10 = operator new(v11);
    __b[1] = v9;
    v17 = v11 | 0x8000000000000000;
    __b[0] = v10;
    goto LABEL_14;
  }

  HIBYTE(v17) = *(a1 + 232);
  v10 = __b;
  if (v9)
  {
LABEL_14:
    memset(v10, 9, v9);
  }

  *(v10 + v9) = 0;
  v12 = __b;
  if (v17 < 0)
  {
    v12 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  BBUConsoleFeedback::writeToStream(a1, "%s%s...%c", v12, v13, v8);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__b[0]);
  }

  *(a1 + 241) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 248) = a3;
  *(a1 + 256) = a4;
  return (*(*a1 + 40))(a1);
}

void sub_1E52ACC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUConsoleFeedback::handleLongStepProgress(BBUConsoleFeedback *this, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(this + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB2u, "Assertion failure(!fQuickStepInProgress)");
    goto LABEL_32;
  }

  if ((*(this + 241) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB3u, "Assertion failure(fLongStepInProgress)");
    goto LABEL_32;
  }

  v2 = *(this + 31);
  v3 = a2 - v2;
  if (a2 < v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB5u, "Assertion failure(current >= fLongStepStart)");
    goto LABEL_32;
  }

  v4 = *(this + 32);
  if (v4 < a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB6u, "Assertion failure(current <= fLongStepEnd)");
LABEL_32:
  }

  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  if (*(this + 46))
  {
    HIBYTE(v20) = 1;
    LOWORD(__p[0]) = 9;
    HIBYTE(v18) = 1;
    LOBYTE(v17[0]) = 10;
  }

  else
  {
    v5 = *(this + 34);
    if (v5)
    {
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v6 = a2;
      v7 = this;
      if (v5 >= 0x17)
      {
        if ((v5 | 7) == 0x17)
        {
          v9 = 25;
        }

        else
        {
          v9 = (v5 | 7) + 1;
        }

        p_b = operator new(v9);
        *(&__b + 1) = v5;
        *&v22 = v9 | 0x8000000000000000;
        *&__b = p_b;
      }

      else
      {
        BYTE7(v22) = *(this + 34);
        p_b = &__b;
      }

      memset(p_b, 8, v5);
      *(p_b + v5) = 0;
      *__p = __b;
      v20 = v22;
      this = v7;
      LODWORD(a2) = v6;
    }
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v10;
  v28 = v10;
  v26 = v10;
  v24 = v10;
  v25 = v10;
  v22 = v10;
  v23 = v10;
  __b = v10;
  v11 = 100 * v3 / (v4 - v2);
  if (v11 == *(this + 33))
  {
    goto LABEL_23;
  }

  *(this + 33) = v11;
  v12 = this;
  v13 = snprintf(&__b, 0x80uLL, "0x%x of 0x%x (%u percent)", a2, v4, 100 * v3 / (v4 - v2));
  v14 = v13 >= 0x80 ? 128 : v13;
  *(v12 + 34) = v14;
  v15 = __p;
  if (v20 < 0)
  {
    v15 = __p[0];
  }

  BBUConsoleFeedback::writeToStream(v12, "%s%s%s", v15, &__b, v17);
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
LABEL_23:
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_24;
  }

  operator delete(v17[0]);
  if (SHIBYTE(v20) < 0)
  {
LABEL_24:
    operator delete(__p[0]);
  }
}

void sub_1E52ACF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUConsoleFeedback::handleEndLongStep(BBUConsoleFeedback *a1, int a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xE1u, "Assertion failure(!fQuickStepInProgress)");
    goto LABEL_10;
  }

  if ((*(a1 + 241) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xE2u, "Assertion failure(fLongStepInProgress)");
LABEL_10:
  }

  if (!a2)
  {
    (*(*a1 + 40))(a1, *(a1 + 32));
  }

  BBUProfiler::endStage((a1 + 80));
  *(a1 + 241) = 0;

  return BBUConsoleFeedback::writeToStream(a1, "\n");
}

void BBUConsoleFeedback::handleCommentInternal(BBUConsoleFeedback *this, uint64_t a2)
{
  v2 = *(this + 29);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    if ((v2 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v2 | 7) + 1;
    }

    v5 = operator new(v6);
    __b[1] = v2;
    v10 = v6 | 0x8000000000000000;
    __b[0] = v5;
    goto LABEL_9;
  }

  HIBYTE(v10) = *(this + 29);
  v5 = __b;
  if (v2)
  {
LABEL_9:
    memset(v5, 9, v2);
  }

  *(v5 + v2) = 0;
  v7 = __b;
  if (v10 < 0)
  {
    v7 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  BBUConsoleFeedback::writeToStream(this, "%s%s\n", v7, v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1E52AD200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUConsoleFeedback::handleLongStepCommentInternal(BBUConsoleFeedback *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return BBUConsoleFeedback::writeToStream(a1, "\n%s\n", v2);
}

void GetBasebandTatsuTagToFileNameMap(uint64_t ***a1@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = @"Cellular1,LLB";
  v5 = 4;
  strcpy(v4, "illb");
  v6 = @"Cellular1,iBSS";
  v8 = 4;
  strcpy(v7, "ibss");
  v9 = @"Cellular1,PMUFW";
  v11 = 4;
  strcpy(v10, "apmu");
  v12 = @"Cellular1,PMUFW2";
  v14 = 4;
  strcpy(v13, "pmfw");
  v15 = @"Cellular1,iBootData";
  v17 = 4;
  strcpy(v16, "ibdt");
  v18 = @"Cellular1,RTKitOS";
  v20 = 4;
  strcpy(v19, "rkos");
  v21 = @"Cellular1,CdpAscDl";
  v23 = 4;
  strcpy(v22, "cdpd");
  v24 = @"Cellular1,CdpAscUl";
  v26 = 4;
  strcpy(v25, "cdpu");
  v27 = @"Cellular1,CdpHost";
  v29 = 4;
  strcpy(v28, "cdph");
  v30 = @"Cellular1,L1CL1S";
  v32 = 4;
  strcpy(v31, "l1cs");
  v33 = @"Cellular1,ProvisioningFirmware";
  v35 = 4;
  a1[1] = 0;
  v2 = a1 + 1;
  strcpy(v34, "prfw");
  v36 = @"Cellular1,Recipe";
  v38 = 4;
  strcpy(__p, "rcpi");
  a1[2] = 0;
  *a1 = (a1 + 1);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, a1 + 1, &v3, &v3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v6, &v6);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v9, &v9);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v12, &v12);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v15, &v15);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v18, &v18);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v21, &v21);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v24, &v24);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v27, &v27);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v30, &v30);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v33, &v33);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v36, &v36);
  if (v38 < 0)
  {
    operator delete(__p[0]);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v34[0]);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v31[0]);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v28[0]);
  if ((v26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v25[0]);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22[0]);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v19[0]);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v16[0]);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v13[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v10[0]);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(v4[0]);
    return;
  }

LABEL_24:
  operator delete(v7[0]);
  if (v5 < 0)
  {
    goto LABEL_25;
  }
}

void sub_1E52AD670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v73, *(v73 + 8));
  if (a73 < 0)
  {
    operator delete(__p);
    if ((a71 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a69 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a71 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a70);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a67 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a68);
  if ((a67 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a66);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a16 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
LABEL_13:
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a11);
  _Unwind_Resume(a1);
}

void GetBasebandNVM4ccToFileNameMap(void *a1@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(a1, 170, 24);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[11],0>(v2, kBasebandNVMStaticFile, "static.nvm");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[12],0>(&v6, kBasebandNVMDynamicFile, "dynamic.nvm");
  std::map<std::string,std::string>::map[abi:ne200100](a1, v2, 2);
  if (v9 < 0)
  {
    operator delete(__p);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v2[0]);
    return;
  }

LABEL_8:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_9;
  }
}

void sub_1E52AD8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string,std::string>::~pair(v3 + 48);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1E52AD8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void **std::map<std::string,std::string>::map[abi:ne200100](void **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v7 = std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__find_equal<std::string>(a1, v4, &v15, &v14, a2);
      if (!*v7)
      {
        memset(v13, 170, sizeof(v13));
        v8 = v7;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>(a1, a2, v13);
        v9 = v15;
        v10 = v13[0];
        *v13[0] = 0;
        v10[1] = 0;
        v10[2] = v9;
        *v8 = v10;
        v11 = **a1;
        if (v11)
        {
          *a1 = v11;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v10);
        a1[2] = (a1[2] + 1);
      }

      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void GetBasebandFDR4ccToFileNameMap(void *a1@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(a1, 170, 24);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(v2, kBasebandCalibrationFile, "calib.nvm");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(&v6, kBasebandFATPCalibrationFile, "bbpac.der");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[9],0>(&v10, kBasebandProvisioningFile, "prov.nvm");
  std::map<std::string,std::string>::map[abi:ne200100](a1, v2, 3);
  if (v13 < 0)
  {
    operator delete(__p);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v8);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v6);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v2[0]);
    return;
  }

LABEL_12:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_13;
  }
}

void sub_1E52ADB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string,std::string>::~pair(v3);
  std::pair<std::string,std::string>::~pair(v4);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1E52ADB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v10 -= 48;
    std::pair<std::string,std::string>::~pair(v10);
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[11],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52ADCE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[12],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52ADE28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52ADF6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[9],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52AE0B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t ***a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v14, &v13, a3);
  if (*v6)
  {
    return *v6;
  }

  v8 = v6;
  v9 = operator new(0x40uLL);
  v10 = v9;
  *(v9 + 4) = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 40), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    *(v9 + 40) = *(a4 + 8);
    *(v9 + 7) = *(a4 + 24);
  }

  v11 = v14;
  *v10 = 0;
  v10[1] = 0;
  v10[2] = v11;
  *v8 = v10;
  v12 = **a1;
  if (v12)
  {
    *a1 = v12;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v10);
  a1[2] = (a1[2] + 1);
  return v10;
}

void sub_1E52AE1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void *std::unique_ptr<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 56), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 56) = *(a2 + 24);
    *(v7 + 9) = *(a2 + 40);
  }

  *(a3 + 16) = 1;
}

void sub_1E52AE4A0(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
    std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void DaleController_Loader::create(std::once_flag::_State_type **a1@<X8>)
{
  *a1 = 0;
  v2 = operator new(0x20uLL);
  *v2 = &unk_1F5F01428;
  v2[1] = 0;
  v2[2] = 0;
  v3 = v2 + 2;
  v2[3] = 0;
  v6 = v2;
  if (atomic_load_explicit(v2 + 2, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(v3, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_Loader::init(void)::$_0 &&>>);
  }

  if (v2[1])
  {
    *a1 = v2;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init loader object\n", "DaleController_Loader", "create");
    v5 = *(*v2 + 8);

    v5(v2);
  }
}

void sub_1E52AE778(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleController_Loader::init(DaleController_Loader *this)
{
  v2 = (this + 16);
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_Loader::init(void)::$_0 &&>>);
  }

  return *(this + 8);
}

uint64_t DaleController_Loader::setDeviceConfig(DaleController_Loader *this)
{
  v32 = 0;
  v33 = 0;
  v31.tv_sec = 0;
  *&v31.tv_usec = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending device config...\n", "DaleController_Loader", "setDeviceConfig");
  time(&v33);
  v3 = gettimeofday(&v31, &v32);
  v4 = ACFULogging::getLogInstance(v3);
  v5 = ACFULogging::handleMessage(v4, 3, "%s::%s: host_utc_time: %ld\n\n", "DaleController_Loader", "setDeviceConfig", v33);
  v6 = ACFULogging::getLogInstance(v5);
  v7 = v32;
  v8 = HIDWORD(v32);
  v9 = ACFULogging::handleMessage(v6, 3, "%s::%s: tz_minutes_west: %d, tz_dsttime: %d\n", "DaleController_Loader", "setDeviceConfig", v32, HIDWORD(v32));
  v30 = 0;
  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 3, "%s::%s: >>send PL_CMD_SEND_DEVCFG\n", "DaleController_Loader", "setDeviceConfig");
  v11 = *(this + 3);
  LOBYTE(v24) = 116;
  v12 = support::transport::airship::write(*(v11 + 8), &v24, 1uLL);
  if (v12)
  {
    v13 = support::transport::airship::read(*(*(this + 3) + 8), &v30, 1uLL);
    if (v13)
    {
      if (v30 == 116)
      {
        v29 = 0;
        v28 = 0;
        v26 = v7;
        v27 = v8;
        v24 = 36;
        v25 = v33;
        v14 = support::transport::airship::write(*(*(this + 3) + 8), &v24, 0x24uLL);
        if (v14)
        {
          v24 = 0;
          v15 = ACFULogging::getLogInstance(v14);
          ACFULogging::handleMessage(v15, 3, "%s::%s: <<rcv device config status\n", "DaleController_Loader", "setDeviceConfig");
          v16 = support::transport::airship::read(*(*(this + 3) + 8), &v24, 4uLL);
          if (v16)
          {
            if (!v24)
            {
              return 1;
            }

            v23 = ACFULogging::getLogInstance(v16);
            ACFULogging::handleMessage(v23, 2, "%s::%s: send device config status error (0x%x)\n");
          }

          else
          {
            v22 = ACFULogging::getLogInstance(v16);
            ACFULogging::handleMessage(v22, 2, "%s::%s: failed to read device config status\n");
          }
        }

        else
        {
          v21 = ACFULogging::getLogInstance(v14);
          ACFULogging::handleMessage(v21, 2, "%s::%s: failed to write dev-cfg\n");
        }
      }

      else
      {
        v20 = ACFULogging::getLogInstance(v13);
        ACFULogging::handleMessage(v20, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_SEND_DEVCFG\n");
      }
    }

    else
    {
      v19 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v19, 2, "%s::%s: failed to read ACK for PL_CMD_SEND_DEVCFG\n");
    }
  }

  else
  {
    v18 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v18, 2, "%s::%s: failed to write PL_CMD_SEND_DEVCFG\n");
  }

  return 0;
}

ACFULogging *DaleController_Loader::getBootMode(ACFULogging *a1, _BYTE *a2, _BYTE *a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v7 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: getting boot mode...\n", "DaleController_Loader", "getBootMode");
  v23 = 0;
  v8 = ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage(v8, 3, "%s::%s: >>send PL_CMD_RECV_BOOT_MODE\n", "DaleController_Loader", "getBootMode");
  v9 = *(a1 + 3);
  v24 = 115;
  v10 = support::transport::airship::write(*(v9 + 8), &v24, 1uLL);
  if ((v10 & 1) == 0)
  {
    v18 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v18, 2, "%s::%s: failed to write PL_CMD_RECV_BOOT_MODE\n");
    return 0;
  }

  v11 = support::transport::airship::read(*(*(a1 + 3) + 8), &v23, 1uLL);
  if ((v11 & 1) == 0)
  {
    v19 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v19, 2, "%s::%s: failed to read ACK for START_FLB_LOAD_BL_CODE\n");
    return 0;
  }

  if (v23 != 115)
  {
    v20 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v20, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_RECV_BOOT_MODE\n");
    return 0;
  }

  v22 = 0;
  v12 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v12, 3, "%s::%s: <<rcv boot-mode value\n", "DaleController_Loader", "getBootMode");
  v13 = support::transport::airship::read(*(*(a1 + 3) + 8), &v22, 1uLL);
  v14 = v13;
  if (v13)
  {
    v15 = v22;
    *a3 = (v22 >> 3) & 7;
    *a2 = 0xFFFFFFFFFF020100 >> (8 * (v15 & 7u));
    v16 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v16, 4, "%s::%s: value: 0x%x, boot-mode-value: %u (%s), crash-reason: (%hhu) %s\n", "DaleController_Loader", "getBootMode");
  }

  else
  {
    v21 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v21, 2, "%s::%s: failed to read value for boot mode\n");
  }

  return v14;
}

uint64_t DaleController_Loader::getCrashReason(ACFULogging *a1, char **a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: getting crash reason...\n", "DaleController_Loader", "getCrashReason");
  LOBYTE(v40) = 0;
  v6 = ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage(v6, 3, "%s::%s: >>send PL_CMD_RECV_EXCEPTION_REASON\n", "DaleController_Loader", "getCrashReason");
  v7 = *(a1 + 3);
  LOBYTE(__p) = 121;
  v8 = support::transport::airship::write(*(v7 + 8), &__p, 1uLL);
  if ((v8 & 1) == 0)
  {
    v34 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v34, 2, "%s::%s: failed to write PL_CMD_RECV_EXCEPTION_REASON\n");
    return 0;
  }

  v9 = support::transport::airship::read(*(*(a1 + 3) + 8), &v40, 1uLL);
  if ((v9 & 1) == 0)
  {
    v35 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v35, 2, "%s::%s: failed to read ACK for PL_CMD_RECV_EXCEPTION_REASON\n");
    return 0;
  }

  if (v40 != 121)
  {
    v36 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v36, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_RECV_EXCEPTION_REASON\n");
    return 0;
  }

  LODWORD(v40) = 0;
  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 3, "%s::%s: <<rcv crash reason size\n", "DaleController_Loader", "getCrashReason");
  v11 = support::transport::airship::read(*(*(a1 + 3) + 8), &v40, 4uLL);
  if ((v11 & 1) == 0)
  {
    v37 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v37, 2, "%s::%s: failed to read crash reason size\n");
    return 0;
  }

  v12 = v40;
  v13 = ACFULogging::getLogInstance(v11);
  if (!v12)
  {
    ACFULogging::handleMessage(v13, 2, "%s::%s: invalid crash reason size\n");
    return 0;
  }

  v14 = ACFULogging::handleMessage(v13, 4, "%s::%s: crash rason size: %u\n", "DaleController_Loader", "getCrashReason", v40);
  v15 = ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage(v15, 3, "%s::%s: <<rcv crash reason data\n", "DaleController_Loader", "getCrashReason");
  v16 = v40;
  v18 = *a2;
  v17 = a2[1];
  v19 = v17 - *a2;
  v20 = v40 - v19;
  if (v40 <= v19)
  {
    if (v40 < v19)
    {
      a2[1] = &v18[v40];
    }
  }

  else
  {
    v21 = a2[2];
    if (v21 - v17 >= v20)
    {
      v26 = &v17[v20];
      bzero(v17, v40 - v19);
      a2[1] = v26;
    }

    else
    {
      v22 = v21 - v18;
      v23 = 2 * v22;
      if (2 * v22 <= v40)
      {
        v23 = v40;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      v25 = operator new(v24);
      bzero(&v25[v19], v20);
      memcpy(v25, v18, v19);
      *a2 = v25;
      a2[1] = &v25[v16];
      a2[2] = &v25[v24];
      if (v18)
      {
        operator delete(v18);
      }
    }
  }

  v27 = support::transport::airship::read(*(*(a1 + 3) + 8), *a2, v40);
  v28 = v27;
  v29 = ACFULogging::getLogInstance(v27);
  if ((v28 & 1) == 0)
  {
    ACFULogging::handleMessage(v29, 2, "%s::%s: failed to read crash reason data\n");
    return 0;
  }

  v30 = operator new(0x30uLL);
  strcpy(v30, "DaleController_Loader::getCrashReason");
  __p = v30;
  v39 = xmmword_1E53919F0;
  v31 = ACFULogging::handleMessageBinary();
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  v32 = ACFULogging::getLogInstance(v31);
  ACFULogging::handleMessage(v32, 3, "%s::%s: successfully finished getting crash reason\n", "DaleController_Loader", "getCrashReason");
  return 1;
}

void sub_1E52AEFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaleController_Loader::verifyFastBootStatus(DaleController_Loader *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: verifying fastboot status...\n", "DaleController_Loader", "verifyFastBootStatus");
  v18 = 0;
  v4 = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(v4, 3, "%s::%s: >>send PL_CMD_RECV_FASTBOOT_STATUS\n", "DaleController_Loader", "verifyFastBootStatus");
  v5 = *(this + 3);
  v19 = -111;
  v6 = support::transport::airship::write(*(v5 + 8), &v19, 1uLL);
  if (v6)
  {
    v7 = support::transport::airship::read(*(*(this + 3) + 8), &v18, 1uLL);
    if (v7)
    {
      if (v18 == 145)
      {
        v17 = 0;
        v8 = ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage(v8, 3, "%s::%s: <<rcv fast-boot status\n", "DaleController_Loader", "verifyFastBootStatus");
        v9 = support::transport::airship::read(*(*(this + 3) + 8), &v17, 4uLL);
        if (v9)
        {
          if (!v17)
          {
            v10 = ACFULogging::getLogInstance(v9);
            ACFULogging::handleMessage(v10, 3, "%s::%s: successfully verified fastboot status\n", "DaleController_Loader", "verifyFastBootStatus");
            return 1;
          }

          v16 = ACFULogging::getLogInstance(v9);
          ACFULogging::handleMessage(v16, 2, "%s::%s: verify fast-boot status error (0x%x)\n");
        }

        else
        {
          v15 = ACFULogging::getLogInstance(v9);
          ACFULogging::handleMessage(v15, 2, "%s::%s: failed to read fast-boot status\n");
        }
      }

      else
      {
        v14 = ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage(v14, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_RECV_FASTBOOT_STATUS\n");
      }
    }

    else
    {
      v13 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v13, 2, "%s::%s: failed to read ACK for PL_CMD_RECV_FASTBOOT_STATUS\n");
    }
  }

  else
  {
    v12 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v12, 2, "%s::%s: failed to write PL_CMD_RECV_FASTBOOT_STATUS\n");
  }

  return 0;
}

BOOL DaleController_Loader::processDDR(DaleTransport_BootLoader **this, DaleImage *a2, int a3)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v7 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: processing ddr image...\n", "DaleController_Loader", "processDDR");
  if (a2)
  {
    LOBYTE(__sz) = 0;
    v8 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v8, 3, "%s::%s: >>send PL_CMD_SEND_DDR\n", "DaleController_Loader", "processDDR");
    v9 = this[3];
    LOBYTE(v59) = 126;
    v10 = support::transport::airship::write(*(v9 + 1), &v59, 1uLL);
    if (v10)
    {
      v11 = support::transport::airship::read(*(this[3] + 1), &__sz, 1uLL);
      if (v11)
      {
        if (__sz == 126)
        {
          Size = DaleImage::getSize(a2);
          v13 = ACFULogging::getLogInstance(Size);
          ACFULogging::handleMessage(v13, 3, "%s::%s: >>send ddr image size: %zu\n", "DaleController_Loader", "processDDR", Size);
          v14 = this[3];
          v59 = Size;
          v15 = support::transport::airship::write(*(v14 + 1), &v59, 4uLL);
          if (v15)
          {
            if (!Size || (v16 = ACFULogging::getLogInstance(v15), ACFULogging::handleMessage(v16, 3, "%s::%s: >>send ddr image data\n", "DaleController_Loader", "processDDR"), v15 = DaleTransport_BootLoader::write(this[3], a2), (v15 & 1) != 0))
            {
              v59 = 0;
              v17 = ACFULogging::getLogInstance(v15);
              ACFULogging::handleMessage(v17, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "processDDR");
              v18 = support::transport::airship::read(*(this[3] + 1), &v59, 4uLL);
              if (v18)
              {
                if (!v59)
                {
                  goto LABEL_28;
                }

                v19 = ACFULogging::getLogInstance(v18);
                v20 = ACFULogging::handleMessage(v19, 0, "%s::%s: verify ddr data status: 0x%x\n", "DaleController_Loader", "processDDR", v59);
                v21 = ACFULogging::getLogInstance(v20);
                if (Size)
                {
                  v22 = ACFULogging::handleMessage(v21, 0, "%s::%s: baseband rejected stored ddr data, receiving new ddr data from baseband...\n");
                }

                else
                {
                  v22 = ACFULogging::handleMessage(v21, 0, "%s::%s: no stored ddr data, receiving new ddr data from baseband...\n");
                }

                __sz_7 = 0;
                v23 = ACFULogging::getLogInstance(v22);
                ACFULogging::handleMessage(v23, 3, "%s::%s: >>send PL_CMD_RECV_DDR\n", "DaleController_Loader", "processDDR");
                v24 = this[3];
                LOBYTE(__sz) = 127;
                v25 = support::transport::airship::write(*(v24 + 1), &__sz, 1uLL);
                if (v25)
                {
                  v26 = support::transport::airship::read(*(this[3] + 1), &__sz_7, 1uLL);
                  if (v26)
                  {
                    if (__sz_7 == 127)
                    {
                      __sz = 0;
                      v27 = ACFULogging::getLogInstance(v26);
                      ACFULogging::handleMessage(v27, 3, "%s::%s: <<rcv new ddr data size\n", "DaleController_Loader", "processDDR");
                      v28 = support::transport::airship::read(*(this[3] + 1), &__sz, 4uLL);
                      if (v28)
                      {
                        if ((__sz - 1048577) >> 20 == 4095)
                        {
                          v29 = ACFULogging::getLogInstance(v28);
                          v30 = ACFULogging::handleMessage(v29, 4, "%s::%s: new ddr data size: %u\n", "DaleController_Loader", "processDDR", __sz);
                          v31 = ACFULogging::getLogInstance(v30);
                          ACFULogging::handleMessage(v31, 3, "%s::%s: <<rcv new ddr data\n", "DaleController_Loader", "processDDR");
                          v32 = __sz;
                          if (__sz)
                          {
                            v33 = operator new(__sz);
                            v34 = &v33[v32];
                            bzero(v33, v32);
                            v35 = v33;
                          }

                          else
                          {
                            v35 = 0;
                            v34 = 0;
                          }

                          v36 = support::transport::airship::read(*(this[3] + 1), v35, v32);
                          if (v36)
                          {
                            if (!a3)
                            {
                              goto LABEL_25;
                            }

                            if (v37)
                            {
                              v38 = DaleImage_DDR::saveNewDataToFile(v37, v35, v34 - v35);
                              if (v38)
                              {
LABEL_25:
                                v39 = 0;
                                v40 = 1;
                                if (!v35)
                                {
                                  goto LABEL_27;
                                }

                                goto LABEL_26;
                              }

                              v56 = ACFULogging::getLogInstance(v38);
                              ACFULogging::handleMessage(v56, 2, "%s::%s: failed to save new ddr data to file\n");
                            }

                            else
                            {
                              v55 = ACFULogging::getLogInstance(0);
                              ACFULogging::handleMessage(v55, 2, "%s::%s: failed to cast ddr image\n");
                            }
                          }

                          else
                          {
                            v54 = ACFULogging::getLogInstance(v36);
                            ACFULogging::handleMessage(v54, 2, "%s::%s: failed to read new ddr data\n", "DaleController_Loader", "processDDR");
                          }

                          v40 = 0;
                          v39 = 4;
                          if (!v35)
                          {
LABEL_27:
                            if ((v40 & 1) == 0)
                            {
                              return v39 == 0;
                            }

LABEL_28:
                            v39 = 0;
                            return v39 == 0;
                          }

LABEL_26:
                          operator delete(v35);
                          goto LABEL_27;
                        }

                        v53 = ACFULogging::getLogInstance(v28);
                        ACFULogging::handleMessage(v53, 2, "%s::%s: invalid new ddr data size (%u)\n", "DaleController_Loader", "processDDR", __sz);
                      }

                      else
                      {
                        v52 = ACFULogging::getLogInstance(v28);
                        ACFULogging::handleMessage(v52, 2, "%s::%s: failed to read new ddr data size\n", "DaleController_Loader", "processDDR");
                      }
                    }

                    else
                    {
                      v51 = ACFULogging::getLogInstance(v26);
                      ACFULogging::handleMessage(v51, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_RECV_DDR\n");
                    }
                  }

                  else
                  {
                    v50 = ACFULogging::getLogInstance(v26);
                    ACFULogging::handleMessage(v50, 2, "%s::%s: failed to read ACK for PL_CMD_RECV_DDR\n");
                  }
                }

                else
                {
                  v49 = ACFULogging::getLogInstance(v25);
                  ACFULogging::handleMessage(v49, 2, "%s::%s: failed to write PL_CMD_RECV_DDR\n");
                }
              }

              else
              {
                v47 = ACFULogging::getLogInstance(v18);
                ACFULogging::handleMessage(v47, 2, "%s::%s: failed to read status (ddr data verify)\n");
              }

              v39 = 4;
              return v39 == 0;
            }

            v48 = ACFULogging::getLogInstance(v15);
            ACFULogging::handleMessage(v48, 2, "%s::%s: failed to write ddr image\n");
          }

          else
          {
            v46 = ACFULogging::getLogInstance(v15);
            ACFULogging::handleMessage(v46, 2, "%s::%s: failed to send ddr image size\n");
          }
        }

        else
        {
          v45 = ACFULogging::getLogInstance(v11);
          ACFULogging::handleMessage(v45, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_SEND_DDR\n");
        }
      }

      else
      {
        v44 = ACFULogging::getLogInstance(v11);
        ACFULogging::handleMessage(v44, 2, "%s::%s: failed to read ACK for PL_CMD_SEND_DDR\n");
      }
    }

    else
    {
      v43 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v43, 2, "%s::%s: failed to write PL_CMD_SEND_DDR\n");
    }
  }

  else
  {
    v42 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v42, 2, "%s::%s: invalid ddr image\n");
  }

  return 0;
}

void sub_1E52AF6C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaleController_Loader::sendImage_Calibration(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending calibration image...\n", "DaleController_Loader", "sendImage_Calibration");
  if (!a2)
  {
    v19 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v19, 2, "%s::%s: invalid calibration image\n");
    return 0;
  }

  v28 = 0;
  v6 = ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage(v6, 3, "%s::%s: >>send PL_CMD_SEND_CAL_IMG\n", "DaleController_Loader", "sendImage_Calibration");
  v7 = this[3];
  v29 = 112;
  v8 = support::transport::airship::write(*(v7 + 1), &v29, 1uLL);
  if ((v8 & 1) == 0)
  {
    v20 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v20, 2, "%s::%s: failed to write PL_CMD_SEND_CAL_IMG\n");
    return 0;
  }

  v9 = support::transport::airship::read(*(this[3] + 1), &v28, 1uLL);
  if ((v9 & 1) == 0)
  {
    v21 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v21, 2, "%s::%s: failed to read ACK for PL_CMD_SEND_CAL_IMG\n");
    return 0;
  }

  if (v28 != 112)
  {
    v22 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v22, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_SEND_CAL_IMG\n");
    return 0;
  }

  Size = DaleImage::getSize(a2);
  v11 = ACFULogging::getLogInstance(Size);
  ACFULogging::handleMessage(v11, 3, "%s::%s: >>send calibration image size (%zu)\n", "DaleController_Loader", "sendImage_Calibration", Size);
  v12 = this[3];
  v30 = Size;
  v13 = support::transport::airship::write(*(v12 + 1), &v30, 4uLL);
  if ((v13 & 1) == 0)
  {
    v23 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v23, 2, "%s::%s: failed to send cal image size\n");
    return 0;
  }

  if (Size)
  {
    v14 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v14, 3, "%s::%s: >>send calibration image payload\n", "DaleController_Loader", "sendImage_Calibration");
    v13 = DaleTransport_BootLoader::write(this[3], a2);
    if ((v13 & 1) == 0)
    {
      v26 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v26, 2, "%s::%s: failed to write calibration image\n");
      return 0;
    }
  }

  v27 = 0;
  v15 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v15, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "sendImage_Calibration");
  v16 = support::transport::airship::read(*(this[3] + 1), &v27, 4uLL);
  if ((v16 & 1) == 0)
  {
    v24 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to read status after sending calibration image\n");
    return 0;
  }

  if (v27)
  {
    v25 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v25, 2, "%s::%s: send calibration image status error (0x%x)\n");
    return 0;
  }

  v17 = ACFULogging::getLogInstance(v16);
  if (Size)
  {
    ACFULogging::handleMessage(v17, 3, "%s::%s: successfully sent calibration image\n");
  }

  else
  {
    ACFULogging::handleMessage(v17, 0, "%s::%s: skip sending calibration image\n");
  }

  return 1;
}

uint64_t DaleController_Loader::sendImage_ProvisioningManifest(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending provisioning manifest image...\n", "DaleController_Loader", "sendImage_ProvisioningManifest");
  if (a2)
  {
    Size = DaleImage::getSize(a2);
    if (!Size)
    {
      v24 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v24, 0, "%s::%s: missing provisioning manifest image - this is always allowed\n", "DaleController_Loader", "sendImage_ProvisioningManifest");
      return 1;
    }

    v31 = 0;
    v7 = ACFULogging::getLogInstance(Size);
    ACFULogging::handleMessage(v7, 3, "%s::%s: >>send DALE_CMD_SEND_PROVISIONING_MANIFEST\n", "DaleController_Loader", "sendImage_ProvisioningManifest");
    v8 = this[3];
    v32 = -93;
    v9 = support::transport::airship::write(*(v8 + 1), &v32, 1uLL);
    if (v9)
    {
      v10 = support::transport::airship::read(*(this[3] + 1), &v31, 1uLL);
      if (v10)
      {
        if (v31 == 163)
        {
          v11 = DaleImage::getSize(a2);
          v12 = ACFULogging::getLogInstance(v11);
          ACFULogging::handleMessage(v12, 3, "%s::%s: >>send provisioning manifest image size (%zu)\n", "DaleController_Loader", "sendImage_ProvisioningManifest", v11);
          v13 = this[3];
          v33 = v11;
          v14 = support::transport::airship::write(*(v13 + 1), &v33, 4uLL);
          LOBYTE(v11) = v14;
          v15 = ACFULogging::getLogInstance(v14);
          if (v11)
          {
            ACFULogging::handleMessage(v15, 3, "%s::%s: >>send provisioning manifest payload\n", "DaleController_Loader", "sendImage_ProvisioningManifest");
            v16 = DaleTransport_BootLoader::write(this[3], a2);
            if (v16)
            {
              v30 = 0;
              v17 = ACFULogging::getLogInstance(v16);
              ACFULogging::handleMessage(v17, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "sendImage_ProvisioningManifest");
              v18 = support::transport::airship::read(*(this[3] + 1), &v30, 4uLL);
              v19 = v18;
              v20 = ACFULogging::getLogInstance(v18);
              if (v19)
              {
                v21 = ACFULogging::handleMessage(v20, 3, "%s::%s: received status: %d\n", "DaleController_Loader", "sendImage_ProvisioningManifest", v30);
                if (!v30)
                {
                  return 1;
                }

                v29 = ACFULogging::getLogInstance(v21);
                ACFULogging::handleMessage(v29, 2, "%s::%s: invalid provisioning manifest status after pushing provisioning manifest (0x%x)\n");
              }

              else
              {
                ACFULogging::handleMessage(v20, 2, "%s::%s: failed to read status after sending provisioning manifest\n");
              }
            }

            else
            {
              v28 = ACFULogging::getLogInstance(v16);
              ACFULogging::handleMessage(v28, 2, "%s::%s: failed to write provisioning manifest\n");
            }
          }

          else
          {
            ACFULogging::handleMessage(v15, 2, "%s::%s: failed to send provisioning manifest size\n");
          }
        }

        else
        {
          v27 = ACFULogging::getLogInstance(v10);
          ACFULogging::handleMessage(v27, 2, "%s::%s: invalid ACK (0x%x) for DALE_CMD_SEND_PROVISIONING_MANIFEST\n");
        }
      }

      else
      {
        v26 = ACFULogging::getLogInstance(v10);
        ACFULogging::handleMessage(v26, 2, "%s::%s: failed to read ACK for DALE_CMD_SEND_PROVISIONING_MANIFEST\n");
      }
    }

    else
    {
      v25 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v25, 2, "%s::%s: failed to write DALE_CMD_SEND_PROVISIONING_MANIFEST\n");
    }
  }

  else
  {
    v23 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v23, 2, "%s::%s: invalid provisioning manifest image\n");
  }

  return 0;
}

uint64_t DaleController_Loader::sendImage_BBCfgHashTable(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending bbcfg hash-table image...\n", "DaleController_Loader", "sendImage_BBCfgHashTable");
  if (a2)
  {
    v28 = 0;
    v6 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v6, 3, "%s::%s: >>send DALE_PL_CMD_SEND_BBCFG_HASH_TABLE\n", "DaleController_Loader", "sendImage_BBCfgHashTable");
    v7 = this[3];
    v29 = -95;
    v8 = support::transport::airship::write(*(v7 + 1), &v29, 1uLL);
    if (v8)
    {
      v9 = support::transport::airship::read(*(this[3] + 1), &v28, 1uLL);
      if (v9)
      {
        if (v28 == 161)
        {
          Size = DaleImage::getSize(a2);
          v11 = ACFULogging::getLogInstance(Size);
          if (Size)
          {
            ACFULogging::handleMessage(v11, 3, "%s::%s: >>send bbcfg hash-table data size: %zu\n", "DaleController_Loader", "sendImage_BBCfgHashTable", Size);
            v12 = this[3];
            v30 = Size;
            v13 = support::transport::airship::write(*(v12 + 1), &v30, 4uLL);
            v14 = v13;
            v15 = ACFULogging::getLogInstance(v13);
            if (v14)
            {
              ACFULogging::handleMessage(v15, 3, "%s::%s: >>send bbcfg hash-table\n", "DaleController_Loader", "sendImage_BBCfgHashTable");
              v16 = DaleTransport_BootLoader::write(this[3], a2);
              if (v16)
              {
                v27 = 0;
                v17 = ACFULogging::getLogInstance(v16);
                ACFULogging::handleMessage(v17, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "sendImage_BBCfgHashTable");
                v18 = support::transport::airship::read(*(this[3] + 1), &v27, 4uLL);
                if (v18)
                {
                  if (!v27)
                  {
                    return 1;
                  }

                  v26 = ACFULogging::getLogInstance(v18);
                  ACFULogging::handleMessage(v26, 2, "%s::%s: send bbcfg hash-table status error (0x%x)\n");
                }

                else
                {
                  v25 = ACFULogging::getLogInstance(v18);
                  ACFULogging::handleMessage(v25, 2, "%s::%s: failed to read status after sending bbcfg hash-table\n");
                }
              }

              else
              {
                v24 = ACFULogging::getLogInstance(v16);
                ACFULogging::handleMessage(v24, 2, "%s::%s: failed to send bbcfg hash-table data\n");
              }
            }

            else
            {
              ACFULogging::handleMessage(v15, 2, "%s::%s: failed to send bbcfg hash-table data size\n");
            }
          }

          else
          {
            ACFULogging::handleMessage(v11, 2, "%s::%s: invalid bbcfg hash-table data size\n");
          }
        }

        else
        {
          v23 = ACFULogging::getLogInstance(v9);
          ACFULogging::handleMessage(v23, 2, "%s::%s: invalid ACK for DALE_PL_CMD_SEND_BBCFG_HASH_TABLE\n");
        }
      }

      else
      {
        v22 = ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage(v22, 2, "%s::%s: failed to read ACK for DALE_PL_CMD_SEND_BBCFG_HASH_TABLE\n");
      }
    }

    else
    {
      v21 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v21, 2, "%s::%s: failed to write DALE_PL_CMD_SEND_BBCFG_HASH_TABLE\n");
    }
  }

  else
  {
    v20 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v20, 2, "%s::%s: invalid bbcfg hash-table image\n");
  }

  return 0;
}

uint64_t DaleController_Loader::sendImage_BBCfgSegment(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending bbcfg segment image...\n", "DaleController_Loader", "sendImage_BBCfgSegment");
  if (a2)
  {
    v28 = 0;
    v6 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v6, 3, "%s::%s: >>send DALE_PL_CMD_SEND_BBCFG_SEGMENT\n", "DaleController_Loader", "sendImage_BBCfgSegment");
    v7 = this[3];
    v29 = -94;
    v8 = support::transport::airship::write(*(v7 + 1), &v29, 1uLL);
    if (v8)
    {
      v9 = support::transport::airship::read(*(this[3] + 1), &v28, 1uLL);
      if (v9)
      {
        if (v28 == 162)
        {
          Size = DaleImage::getSize(a2);
          v11 = ACFULogging::getLogInstance(Size);
          if (Size)
          {
            ACFULogging::handleMessage(v11, 3, "%s::%s: >>send bbcfg segment size: %zu\n", "DaleController_Loader", "sendImage_BBCfgSegment", Size);
            v12 = this[3];
            v30 = Size;
            v13 = support::transport::airship::write(*(v12 + 1), &v30, 4uLL);
            v14 = v13;
            v15 = ACFULogging::getLogInstance(v13);
            if (v14)
            {
              ACFULogging::handleMessage(v15, 3, "%s::%s: >>send bbcfg segment\n", "DaleController_Loader", "sendImage_BBCfgSegment");
              v16 = DaleTransport_BootLoader::write(this[3], a2);
              if (v16)
              {
                v27 = 0;
                v17 = ACFULogging::getLogInstance(v16);
                ACFULogging::handleMessage(v17, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "sendImage_BBCfgSegment");
                v18 = support::transport::airship::read(*(this[3] + 1), &v27, 4uLL);
                if (v18)
                {
                  if (!v27)
                  {
                    return 1;
                  }

                  v26 = ACFULogging::getLogInstance(v18);
                  ACFULogging::handleMessage(v26, 2, "%s::%s: send bbcfg segment status error (0x%x)\n");
                }

                else
                {
                  v25 = ACFULogging::getLogInstance(v18);
                  ACFULogging::handleMessage(v25, 2, "%s::%s: failed to read status after sending bbcfg segment\n");
                }
              }

              else
              {
                v24 = ACFULogging::getLogInstance(v16);
                ACFULogging::handleMessage(v24, 2, "%s::%s: failed to send bbcfg segment data\n");
              }
            }

            else
            {
              ACFULogging::handleMessage(v15, 2, "%s::%s: failed to send bbcfg segment size\n");
            }
          }

          else
          {
            ACFULogging::handleMessage(v11, 2, "%s::%s: invalid bbcfg segment data size\n");
          }
        }

        else
        {
          v23 = ACFULogging::getLogInstance(v9);
          ACFULogging::handleMessage(v23, 2, "%s::%s: invalid ACK for DALE_PL_CMD_SEND_BBCFG_SEGMENT\n");
        }
      }

      else
      {
        v22 = ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage(v22, 2, "%s::%s: failed to read ACK for DALE_PL_CMD_SEND_BBCFG_SEGMENT\n");
      }
    }

    else
    {
      v21 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v21, 2, "%s::%s: failed to write DALE_PL_CMD_SEND_BBCFG_SEGMENT\n");
    }
  }

  else
  {
    v20 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v20, 2, "%s::%s: invalid bbcfg segment image\n");
  }

  return 0;
}

uint64_t DaleController_Loader::sendImage_Bundle(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending bundle image...\n", "DaleController_Loader", "sendImage_Bundle");
  v6 = ACFULogging::getLogInstance(v5);
  if (!a2)
  {
    ACFULogging::handleMessage(v6, 2, "%s::%s: invalid bundle image\n");
    return 0;
  }

  v7 = *(a2 + 2);
  if (v7 > 0xA)
  {
    v8 = "???";
  }

  else
  {
    v8 = off_1E876DF20[v7];
  }

  v9 = ACFULogging::handleMessage(v6, 0, "%s::%s: type: '%s'\n", "DaleController_Loader", "sendImage_Bundle", v8);
  v32 = 0;
  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 3, "%s::%s: >>send PL_CMD_SEND_BUNDLE_IMG\n", "DaleController_Loader", "sendImage_Bundle");
  v11 = this[3];
  v33 = 114;
  v12 = support::transport::airship::write(*(v11 + 1), &v33, 1uLL);
  if ((v12 & 1) == 0)
  {
    v25 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v25, 2, "%s::%s: failed to write PL_CMD_SEND_BUNDLE_IMG\n");
    return 0;
  }

  v13 = support::transport::airship::read(*(this[3] + 1), &v32, 1uLL);
  if ((v13 & 1) == 0)
  {
    v26 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to read ACK for PL_CMD_SEND_BUNDLE_IMG\n");
    return 0;
  }

  if (v32 != 114)
  {
    v27 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v27, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_SEND_BUNDLE_IMG\n");
    return 0;
  }

  Size = DaleImage::getSize(a2);
  v15 = ACFULogging::getLogInstance(Size);
  if (!Size)
  {
    ACFULogging::handleMessage(v15, 2, "%s::%s: invalid bundle image size\n");
    return 0;
  }

  v16 = ACFULogging::handleMessage(v15, 4, "%s::%s: image size: %zu\n", "DaleController_Loader", "sendImage_Bundle", Size);
  v17 = ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage(v17, 3, "%s::%s: >>send bundle image\n", "DaleController_Loader", "sendImage_Bundle");
  v18 = DaleTransport_BootLoader::write(this[3], a2);
  if (!v18)
  {
    v28 = ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage(v28, 2, "%s::%s: failed to write bundle image\n");
    return 0;
  }

  v31 = 0;
  v19 = ACFULogging::getLogInstance(v18);
  ACFULogging::handleMessage(v19, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "sendImage_Bundle");
  v20 = support::transport::airship::read(*(this[3] + 1), &v31, 4uLL);
  if ((v20 & 1) == 0)
  {
    v29 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v29, 2, "%s::%s: failed to read status after sending bundle image\n");
    return 0;
  }

  if (v31)
  {
    v30 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v30, 2, "%s::%s: send bundle image status error (0x%x)\n");
    return 0;
  }

  v21 = ACFULogging::getLogInstance(v20);
  v22 = *(a2 + 2);
  if (v22 > 0xA)
  {
    v23 = "???";
  }

  else
  {
    v23 = off_1E876DF20[v22];
  }

  ACFULogging::handleMessage(v21, 3, "%s::%s: successfully sent '%s' image\n", "DaleController_Loader", "sendImage_Bundle", v23);
  return 1;
}

uint64_t DaleController_Loader::sendImage_Nvram(DaleTransport_BootLoader **this, const DaleImage *a2, int a3)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v7 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending nvram image...\n", "DaleController_Loader", "sendImage_Nvram");
  v8 = ACFULogging::getLogInstance(v7);
  if (!a2)
  {
    ACFULogging::handleMessage(v8, 2, "%s::%s: invalid nvram image\n");
    return 0;
  }

  v9 = ACFULogging::handleMessage(v8, 0, "%s::%s: index: %u\n", "DaleController_Loader", "sendImage_Nvram", a3);
  v34 = 0;
  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 3, "%s::%s: >>send PL_CMD_SEND_DYNAMIC_IMG\n", "DaleController_Loader", "sendImage_Nvram");
  v11 = this[3];
  v35 = 113;
  v12 = support::transport::airship::write(*(v11 + 1), &v35, 1uLL);
  if ((v12 & 1) == 0)
  {
    v26 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to write PL_CMD_SEND_DYNAMIC_IMG\n");
    return 0;
  }

  v13 = support::transport::airship::read(*(this[3] + 1), &v34, 1uLL);
  if ((v13 & 1) == 0)
  {
    v27 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v27, 2, "%s::%s: failed to read ACK for PL_CMD_SEND_DYNAMIC_IMG\n");
    return 0;
  }

  if (v34 != 113)
  {
    v28 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v28, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_SEND_DYNAMIC_IMG\n");
    return 0;
  }

  Size = DaleImage::getSize(a2);
  v15 = ACFULogging::getLogInstance(Size);
  ACFULogging::handleMessage(v15, 3, "%s::%s: >>send nvram size: %zu\n", "DaleController_Loader", "sendImage_Nvram", Size);
  v16 = this[3];
  v36 = Size;
  v17 = support::transport::airship::write(*(v16 + 1), &v36, 4uLL);
  if ((v17 & 1) == 0)
  {
    v29 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v29, 2, "%s::%s: failed to send nvram image size\n");
    return 0;
  }

  v18 = ACFULogging::getLogInstance(v17);
  if (Size)
  {
    ACFULogging::handleMessage(v18, 3, "%s::%s: >>send nvram data\n", "DaleController_Loader", "sendImage_Nvram");
    v19 = DaleTransport_BootLoader::write(this[3], a2);
    if ((v19 & 1) == 0)
    {
      v20 = ACFULogging::getLogInstance(v19);
      ACFULogging::handleMessage(v20, 2, "%s::%s: failed to write nvram image\n");
      return 0;
    }
  }

  else
  {
    ACFULogging::handleMessage(v18, 3, "%s::%s: >>send nvram index\n", "DaleController_Loader", "sendImage_Nvram");
    v21 = this[3];
    v37 = a3;
    v19 = support::transport::airship::write(*(v21 + 1), &v37, 4uLL);
    if ((v19 & 1) == 0)
    {
      v32 = ACFULogging::getLogInstance(v19);
      ACFULogging::handleMessage(v32, 2, "%s::%s: failed to send nvram image index\n");
      return 0;
    }
  }

  v33 = 0;
  v22 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v22, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "sendImage_Nvram");
  v23 = support::transport::airship::read(*(this[3] + 1), &v33, 4uLL);
  if ((v23 & 1) == 0)
  {
    v30 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v30, 2, "%s::%s: failed to read status\n");
    return 0;
  }

  if (v33)
  {
    v31 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v31, 2, "%s::%s: send nvram image status error (0x%x)\n");
    return 0;
  }

  v24 = ACFULogging::getLogInstance(v23);
  if (Size)
  {
    ACFULogging::handleMessage(v24, 3, "%s::%s: successfully sent nvram image (index: %u)\n");
  }

  else
  {
    ACFULogging::handleMessage(v24, 0, "%s::%s: skip sending nvram image (index: %u)\n");
  }

  return 1;
}

uint64_t DaleController_Loader::sendImage_BBTicket(DaleTransport_BootLoader **this, const DaleImage *a2, int a3)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v7 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: sending bbticket image...\n", "DaleController_Loader", "sendImage_BBTicket");
  if (!a2)
  {
    v36 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v36, 0, "%s::%s: invalid bbticket image\n");
    return 0;
  }

  Size = DaleImage::getSize(a2);
  if (Size)
  {
    LOBYTE(__p) = 0;
    v9 = ACFULogging::getLogInstance(Size);
    ACFULogging::handleMessage(v9, 3, "%s::%s: >>send PL_CMD_SEND_ROOT_MANIFEST\n", "DaleController_Loader", "sendImage_BBTicket");
    v10 = this[3];
    LOBYTE(v46[0]) = -92;
    v11 = support::transport::airship::write(*(v10 + 1), v46, 1uLL);
    if ((v11 & 1) == 0)
    {
      v38 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v38, 2, "%s::%s: failed to write PL_CMD_SEND_ROOT_MANIFEST\n");
      return 0;
    }

    v12 = support::transport::airship::read(*(this[3] + 1), &__p, 1uLL);
    if ((v12 & 1) == 0)
    {
      v39 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v39, 2, "%s::%s: failed to read ACK for PL_CMD_SEND_ROOT_MANIFEST\n");
      return 0;
    }

    if (__p != 164)
    {
      v40 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v40, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_SEND_ROOT_MANIFEST\n");
      return 0;
    }

    v13 = DaleImage::getSize(a2);
    v14 = ACFULogging::getLogInstance(v13);
    if (!v13)
    {
      ACFULogging::handleMessage(v14, 2, "%s::%s: invalid bbticket size\n");
      return 0;
    }

    ACFULogging::handleMessage(v14, 3, "%s::%s: >>send bbticket size: %zu\n", "DaleController_Loader", "sendImage_BBTicket", v13);
    v15 = this[3];
    LODWORD(v46[0]) = v13;
    v16 = support::transport::airship::write(*(v15 + 1), v46, 4uLL);
    v17 = v16;
    v18 = ACFULogging::getLogInstance(v16);
    if ((v17 & 1) == 0)
    {
      ACFULogging::handleMessage(v18, 2, "%s::%s: failed to send bbticket size\n");
      return 0;
    }

    ACFULogging::handleMessage(v18, 3, "%s::%s: >>send bbticket\n", "DaleController_Loader", "sendImage_BBTicket");
    v19 = DaleTransport_BootLoader::write(this[3], a2);
    if (!v19)
    {
      v41 = ACFULogging::getLogInstance(v19);
      ACFULogging::handleMessage(v41, 2, "%s::%s: failed to write bbticket\n");
      return 0;
    }

    v47[0] = 0;
    v20 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v20, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "sendImage_BBTicket");
    v21 = support::transport::airship::read(*(this[3] + 1), v47, 8uLL);
    v22 = v21;
    v23 = ACFULogging::getLogInstance(v21);
    if ((v22 & 1) == 0)
    {
      ACFULogging::handleMessage(v23, 2, "%s::%s: failed to read status after sending bbticket\n");
      return 0;
    }

    v24 = ACFULogging::handleMessage(v23, 3, "%s::%s: received status: 0x%016llx\n", "DaleController_Loader", "sendImage_BBTicket", v47[0]);
    v25 = v47[0];
    if (LODWORD(v47[0]))
    {
      v42 = ACFULogging::getLogInstance(v24);
      ACFULogging::handleMessage(v42, 2, "%s::%s: invalid bbticket status after pushing bbticket (0x%x)\n");
      return 0;
    }

    if (a3)
    {
      memset(v46, 0, sizeof(v46));
      v26 = ACFULogging::getLogInstance(v24);
      v27 = ACFULogging::handleMessage(v26, 3, "%s::%s: <<rcv hash response size: %u\n", "DaleController_Loader", "sendImage_BBTicket", HIDWORD(v25));
      if (v25 == 0x14000000000 || v25 == 0x19000000000)
      {
        v28 = support::transport::airship::read(*(this[3] + 1), v46, HIDWORD(v25));
        if (v28)
        {
          v29 = v25 / 0x5000000000;
          v30 = v46;
          do
          {
            v31 = ACFULogging::getLogInstance(v28);
            v32 = ACFULogging::handleMessage(v31, 3, "%s::%s: %s hash:\n", "DaleController_Loader", "sendImage_BBTicket", v30);
            ACFULogging::getLogInstance(v32);
            v33 = operator new(0x30uLL);
            strcpy(v33, "DaleController_Loader::sendImage_BBTicket");
            __p = v33;
            v45 = xmmword_1E5391A00;
            v28 = ACFULogging::handleMessageBinary();
            if (SHIBYTE(v45) < 0)
            {
              operator delete(__p);
            }

            v30 += 80;
            --v29;
          }

          while (v29);
          return 1;
        }

        v43 = ACFULogging::getLogInstance(v28);
        ACFULogging::handleMessage(v43, 2, "%s::%s: failed to read the hash response\n");
      }

      else
      {
        v34 = ACFULogging::getLogInstance(v27);
        ACFULogging::handleMessage(v34, 2, "%s::%s: unexpected hash response size; expected: %zu OR %zu, received: %u\n");
      }

      return 0;
    }
  }

  else
  {
    v37 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v37, 0, "%s::%s: missing bbticket image - this is allowed for now\n", "DaleController_Loader", "sendImage_BBTicket");
  }

  return 1;
}

void sub_1E52B0A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t DaleController_Loader::getBasebandCapabilites(ACFULogging *a1)
{
  v82 = *MEMORY[0x1E69E9840];
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: getting baseband capabilities...\n", "DaleController_Loader", "getBasebandCapabilites");
  v80.__r_.__value_.__s.__data_[0] = 0;
  v4 = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(v4, 3, "%s::%s: >>send DALE_PL_CMD_RECV_BB_CAPABILITES\n", "DaleController_Loader", "getBasebandCapabilites");
  v5 = *(a1 + 3);
  v81[0] = -96;
  v6 = support::transport::airship::write(*(v5 + 8), v81, 1uLL);
  if ((v6 & 1) == 0)
  {
    v66 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v66, 2, "%s::%s: failed to write DALE_PL_CMD_RECV_BB_CAPABILITES\n", "DaleController_Loader", "getBasebandCapabilites");
LABEL_127:
    v64 = 0;
    v62 = 0;
    v63 = 43520;
    return v64 | ((v62 | v63) << 16);
  }

  v7 = support::transport::airship::read(*(*(a1 + 3) + 8), &v80, 1uLL);
  if ((v7 & 1) == 0)
  {
    v67 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v67, 2, "%s::%s: failed to read ACK for DALE_PL_CMD_RECV_BB_CAPABILITES\n", "DaleController_Loader", "getBasebandCapabilites");
    goto LABEL_127;
  }

  if (v80.__r_.__value_.__s.__data_[0] != 160)
  {
    v68 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v68, 2, "%s::%s: invalid ACK (0x%x) for DALE_PL_CMD_RECV_BB_CAPABILITES\n", "DaleController_Loader", "getBasebandCapabilites", v80.__r_.__value_.__s.__data_[0]);
    goto LABEL_127;
  }

  *v81 = 0;
  *&v81[2] = 0;
  v8 = ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage(v8, 3, "%s::%s: >>send baseband capabilities request (shippingSettings=0x%x, controlFlag=0x%llx)\n", "DaleController_Loader", "getBasebandCapabilites", *v81, *&v81[2]);
  v9 = support::transport::airship::write(*(*(a1 + 3) + 8), v81, 0xAuLL);
  if ((v9 & 1) == 0)
  {
    v69 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v69, 2, "%s::%s: failed to send the baseband capabilities request\n", "DaleController_Loader", "getBasebandCapabilites");
    goto LABEL_127;
  }

  memset(v81, 0, sizeof(v81));
  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 3, "%s::%s: <<rcv baseband capabilities\n", "DaleController_Loader", "getBasebandCapabilites");
  v11 = support::transport::airship::read(*(*(a1 + 3) + 8), v81, 0x86uLL);
  v12 = v11;
  v13 = ACFULogging::getLogInstance(v11);
  v14 = v13;
  if ((v12 & 1) == 0)
  {
    ACFULogging::handleMessage(v13, 2, "%s::%s: failed to read baseband capabilities response\n", "DaleController_Loader", "getBasebandCapabilites");
    goto LABEL_127;
  }

  v15 = *v81;
  v16 = *&v81[2];
  v17 = *&v81[4];
  v18 = strnlen(&v81[6], 0x80uLL);
  v19 = ACFULogging::handleMessage(v14, 0, "%s::%s: baseband capabilities:\n\t- status:           0x%x\n\t- coredump enabled: 0x%x\n\t- bbcfg index:      0x%x\n\t- firmware version: %.*s\n\n", "DaleController_Loader", "getBasebandCapabilites", v15, v16, v17, v18, &v81[6]);
  if (*v81)
  {
    v70 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v70, 2, "%s::%s: get baseband capabilities status error (0x%x)\n", "DaleController_Loader", "getBasebandCapabilites", *v81);
    goto LABEL_127;
  }

  v20 = *&v81[2];
  v21 = *&v81[4];
  memset(&__dst, 170, sizeof(__dst));
  v22 = strnlen(&v81[6], 0x80uLL);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    p_dst = operator new(v25);
    __dst.__r_.__value_.__l.__size_ = v23;
    __dst.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_15;
  }

  *(&__dst.__r_.__value_.__s + 23) = v22;
  p_dst = &__dst;
  if (v22)
  {
LABEL_15:
    memcpy(p_dst, &v81[6], v23);
  }

  p_dst->__r_.__value_.__s.__data_[v23] = 0;
  memset(&v80, 0, sizeof(v80));
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v26 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&__p);
    v27 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v28 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v27;
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v26 = off_1ECFD4E60;
  }

  v74 = v26;
  *&v75 = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  v72 = xmmword_1E5391A10;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1E5391A10;
  strcpy(__p.__r_.__value_.__l.__data_, "Baseband firmware version");
  qmemcpy(v71, "firmware versionBaseband firmwar", sizeof(v71));
  os_unfair_lock_lock(v26 + 10);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&key, p_p);
  v31 = (**&v26->_os_unfair_lock_opaque)(v26, key);
  if (v31)
  {
    ctu::cf::assign();
    CFRelease(v31);
  }

  MEMORY[0x1E6926590](&key);
  os_unfair_lock_unlock(v26 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v75 && !atomic_fetch_add((v75 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v75 + 16))(v75);
    std::__shared_weak_count::__release_weak(v75);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = __dst.__r_.__value_.__l.__size_;
  }

  v34 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  v35 = SHIBYTE(v80.__r_.__value_.__r.__words[2]);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v80.__r_.__value_.__l.__size_;
  }

  if (v33 != v34)
  {
    v38 = 1;
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    if (!v38)
    {
      goto LABEL_113;
    }

    goto LABEL_54;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__dst;
  }

  else
  {
    v36 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v80;
  }

  else
  {
    v37 = v80.__r_.__value_.__r.__words[0];
  }

  v32 = memcmp(v36, v37, v33);
  v38 = v32 != 0;
  if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_53:
  operator delete(v80.__r_.__value_.__l.__data_);
  if (!v38)
  {
    goto LABEL_113;
  }

LABEL_54:
  v39 = ACFULogging::getLogInstance(v32);
  v40 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v40 = __dst.__r_.__value_.__r.__words[0];
  }

  ACFULogging::handleMessage(v39, 0, "%s::%s: firmware version changed detected since last boot, new firmware version: %s\n", "DaleController_Loader", "getBasebandCapabilites", v40);
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v41 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&v80);
    v42 = *&v80.__r_.__value_.__l.__data_;
    *&v80.__r_.__value_.__l.__data_ = 0uLL;
    v43 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v42;
    if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
    }

    v44 = v80.__r_.__value_.__l.__size_;
    if (v80.__r_.__value_.__l.__size_ && !atomic_fetch_add((v80.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }

    v41 = off_1ECFD4E60;
  }

  key = v41;
  v77 = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v45 = operator new(0x20uLL);
  v74 = v45;
  v75 = v72;
  *v45 = v71[1];
  *(v45 + 9) = v71[0];
  *(v45 + 25) = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v73 = __dst;
  }

  os_unfair_lock_lock((v41 + 40));
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v73;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v80 = __p;
  }

  if (v75 >= 0)
  {
    v46 = &v74;
  }

  else
  {
    v46 = v74;
  }

  v47 = ctu::cf::plist_adapter::set<std::string>(v41, &v80, v46, 1);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_80:
      os_unfair_lock_unlock((v41 + 40));
      if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_86;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_80;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock((v41 + 40));
  if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_81:
    if ((SHIBYTE(v75) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_87:
    operator delete(v74);
    v49 = v77;
    if (!v77)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_86:
  operator delete(v73.__r_.__value_.__l.__data_);
  if (SHIBYTE(v75) < 0)
  {
    goto LABEL_87;
  }

LABEL_82:
  v49 = v77;
  if (!v77)
  {
LABEL_89:
    if (v47)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_88:
  if (atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_89;
  }

  (v49->__on_zero_shared)(v49);
  std::__shared_weak_count::__release_weak(v49);
  if ((v47 & 1) == 0)
  {
LABEL_90:
    v50 = ACFULogging::getLogInstance(v48);
    ACFULogging::handleMessage(v50, 2, "%s::%s: failed to set key %s in plist\n", "DaleController_Loader", "getBasebandCapabilites", "Baseband firmware version");
  }

LABEL_91:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v51 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&v80);
    v52 = *&v80.__r_.__value_.__l.__data_;
    *&v80.__r_.__value_.__l.__data_ = 0uLL;
    v53 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v52;
    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v53->__on_zero_shared)(v53);
      std::__shared_weak_count::__release_weak(v53);
    }

    v54 = v80.__r_.__value_.__l.__size_;
    if (v80.__r_.__value_.__l.__size_ && !atomic_fetch_add((v80.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    v51 = off_1ECFD4E60;
  }

  __p.__r_.__value_.__r.__words[0] = v51;
  __p.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v80.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
  *&v80.__r_.__value_.__r.__words[1] = xmmword_1E5391A20;
  strcpy(v80.__r_.__value_.__l.__data_, "Firmware version changed since last commcenter launch");
  os_unfair_lock_lock((v51 + 40));
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = &v80;
  }

  else
  {
    v55 = v80.__r_.__value_.__r.__words[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&key, v55);
  v56 = *MEMORY[0x1E695E4D0];
  v74 = v56;
  if (v56)
  {
    v57 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(key, v56, *(v51 + 8), *(v51 + 16), *MEMORY[0x1E695E8B0]);
    v58 = CFPreferencesSynchronize(*(v51 + 8), *(v51 + 16), v57) != 0;
    CFRelease(v56);
    MEMORY[0x1E6926590](&key);
    os_unfair_lock_unlock((v51 + 40));
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_106;
    }

LABEL_109:
    operator delete(v80.__r_.__value_.__l.__data_);
    v60 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_111;
    }

LABEL_110:
    if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
      if (v58)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v58 = 0;
  MEMORY[0x1E6926590](&key);
  os_unfair_lock_unlock((v51 + 40));
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_109;
  }

LABEL_106:
  v60 = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_110;
  }

LABEL_111:
  if (!v58)
  {
LABEL_112:
    v61 = ACFULogging::getLogInstance(v59);
    ACFULogging::handleMessage(v61, 2, "%s::%s: failed to set key %s in plist\n", "DaleController_Loader", "getBasebandCapabilites", "Firmware version changed since last commcenter launch");
  }

LABEL_113:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v62 = v20 != 0;
  v63 = (v21 << 16) | 0xAA00;
  v64 = 1;
  return v64 | ((v62 | v63) << 16);
}

void sub_1E52B1590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a40 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void DaleController_Loader::getBoardParameters(DaleController_Loader *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = operator new(0x110uLL);
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6->__vftable = &unk_1F5EFFBC8;
  v7 = operator new(0x20uLL);
  *(&v88 + 1) = v7 + 2;
  *&v89 = v7 + 2;
  *v7 = xmmword_1E876DEC8;
  v7[1] = off_1E876DED8;
  *&v88 = v7;
  DaleCommon::DalePersonalizationParams::DalePersonalizationParams(&v6[1].__vftable, &v88);
  operator delete(v7);
  v83 = &v6[1].__vftable;
  v84 = v6;
  *v82 = 0;
  *v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  *bytes = 0;
  v86 = 0;
  v87 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

  LOBYTE(v77) = 0;
  LogInstance = ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: >>send PL_CMD_RECV_NONCE\n", "DaleController_Loader", "getBoardParameters");
  v10 = *(this + 3);
  LOBYTE(__p) = 119;
  v11 = support::transport::airship::write(*(v10 + 8), &__p, 1uLL);
  if ((v11 & 1) == 0)
  {
    v68 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v68, 2, "%s::%s: failed to write PL_CMD_RECV_NONCE\n");
    goto LABEL_65;
  }

  v12 = support::transport::airship::read(*(*(this + 3) + 8), &v77, 1uLL);
  if ((v12 & 1) == 0)
  {
    v69 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v69, 2, "%s::%s: failed to read ACK for PL_CMD_RECV_NONCE\n");
    goto LABEL_65;
  }

  if (v77 != 119)
  {
    v70 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v70, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_RECV_NONCE\n", "DaleController_Loader", "getBoardParameters", v77);
    goto LABEL_65;
  }

  v77 = 0;
  v13 = support::transport::airship::read(*(*(this + 3) + 8), &v77, 4uLL);
  if ((v13 & 1) == 0)
  {
    v71 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v71, 2, "%s::%s: failed to read nonce size\n");
    goto LABEL_65;
  }

  if (v77 != 20)
  {
    v72 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v72, 2, "%s::%s: invalid nonce size; expected: %u, received: %u\n", "DaleController_Loader", "getBoardParameters", 20, v77);
    goto LABEL_65;
  }

  v14 = support::transport::airship::read(*(*(this + 3) + 8), bytes, 0x14uLL);
  if ((v14 & 1) == 0)
  {
    v73 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v73, 2, "%s::%s: failed to read nonce\n");
LABEL_65:
    v83 = 0;
    v84 = 0;
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v49 = 3000;
    v50 = v83;
    v51 = v84;
    if (v84)
    {
      goto LABEL_33;
    }

LABEL_68:
    *a3 = v50;
    *(a3 + 8) = 0;
    *(a3 + 16) = v49;
    goto LABEL_69;
  }

  v15 = ACFULogging::getLogInstance(v14);
  v16 = ACFULogging::handleMessage(v15, 3, "%s::%s: nonce: \n", "DaleController_Loader", "getBoardParameters");
  ACFULogging::getLogInstance(v16);
  v17 = operator new(0x30uLL);
  strcpy(v17, "DaleController_Loader::getBoardParameters");
  __p = v17;
  v81 = xmmword_1E5391A00;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p);
  }

  v18 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 20);
  v6[3].__shared_owners_ = v18;
  LOBYTE(v6[3].__shared_weak_owners_) = v18 != 0;
  LODWORD(__p) = 0;
  v19 = ACFULogging::getLogInstance(v18);
  ACFULogging::handleMessage(v19, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "getBoardParameters");
  v8 = support::transport::airship::read(*(*(this + 3) + 8), &__p, 4uLL);
  if ((v8 & 1) == 0)
  {
    v74 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v74, 2, "%s::%s: failed to read status after reading nonce\n", "DaleController_Loader", "getBoardParameters");
    goto LABEL_65;
  }

  if (__p)
  {
    v75 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v75, 2, "%s::%s: read nonce status error (0x%x)\n", "DaleController_Loader", "getBoardParameters", __p);
    goto LABEL_65;
  }

LABEL_12:
  LOBYTE(v77) = 0;
  v20 = ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage(v20, 3, "%s::%s: >>send PL_CMD_RECV_HW_INFO\n", "DaleController_Loader", "getBoardParameters");
  v21 = *(this + 3);
  LOBYTE(__p) = 118;
  v22 = support::transport::airship::write(*(v21 + 8), &__p, 1uLL);
  if ((v22 & 1) == 0)
  {
    v52 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v52, 2, "%s::%s: failed to write PL_CMD_RECV_HW_INFO\n");
    goto LABEL_65;
  }

  v23 = support::transport::airship::read(*(*(this + 3) + 8), &v77, 1uLL);
  if ((v23 & 1) == 0)
  {
    v53 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v53, 2, "%s::%s: failed to read ACK for PL_CMD_RECV_HW_INFO\n");
    goto LABEL_65;
  }

  if (v77 != 118)
  {
    v54 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v54, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_RECV_HW_INFO\n", "DaleController_Loader", "getBoardParameters", v77);
    goto LABEL_65;
  }

  v79 = 0;
  v77 = 0;
  v78 = 0;
  v24 = support::transport::airship::read(*(*(this + 3) + 8), &v79, 4uLL);
  if ((v24 & 1) == 0)
  {
    v55 = ACFULogging::getLogInstance(v24);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to read hw info size\n");
    goto LABEL_65;
  }

  if (v79 != 12)
  {
    v56 = ACFULogging::getLogInstance(v24);
    ACFULogging::handleMessage(v56, 2, "%s::%s: invalid hw info size\n");
    goto LABEL_65;
  }

  v25 = support::transport::airship::read(*(*(this + 3) + 8), &v77, 0xCuLL);
  if ((v25 & 1) == 0)
  {
    v57 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v57, 2, "%s::%s: failed to read hw info\n");
    goto LABEL_65;
  }

  v26 = ACFULogging::getLogInstance(v25);
  v27 = ACFULogging::handleMessage(v26, 3, "%s::%s: hw info bytes: \n", "DaleController_Loader", "getBoardParameters");
  ACFULogging::getLogInstance(v27);
  v28 = operator new(0x30uLL);
  strcpy(v28, "DaleController_Loader::getBoardParameters");
  __p = v28;
  v81 = xmmword_1E5391A00;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p);
  }

  v29.i32[0] = v77;
  v30 = vrev64_s16(*&vmovl_u8(v29));
  *v82 = vuzp1_s8(v30, v30).u32[0];
  v31 = *MEMORY[0x1E695E480];
  v32 = CFDataCreate(*MEMORY[0x1E695E480], v82, 4);
  v6[1].__shared_owners_ = v32;
  LOBYTE(v6[1].__shared_weak_owners_) = v32 != 0;
  *v91 = v78;
  v33 = CFDataCreate(v31, v91, 8);
  v6[2].__shared_weak_owners_ = v33;
  LOBYTE(v6[3].__vftable) = v33 != 0;
  LODWORD(__p) = 0;
  v34 = ACFULogging::getLogInstance(v33);
  ACFULogging::handleMessage(v34, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "getBoardParameters");
  v35 = support::transport::airship::read(*(*(this + 3) + 8), &__p, 4uLL);
  if ((v35 & 1) == 0)
  {
    v58 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v58, 2, "%s::%s: failed to read status after reading hw info\n", "DaleController_Loader", "getBoardParameters");
    goto LABEL_65;
  }

  if (__p)
  {
    v59 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v59, 2, "%s::%s: read hwinfo status error (0x%x)\n", "DaleController_Loader", "getBoardParameters", __p);
    goto LABEL_65;
  }

  LOBYTE(v77) = 0;
  v36 = ACFULogging::getLogInstance(v35);
  ACFULogging::handleMessage(v36, 3, "%s::%s: >>send PL_CMD_RECV_READ_PUBK_HASH\n", "DaleController_Loader", "getBoardParameters");
  v37 = *(this + 3);
  LOBYTE(__p) = 117;
  v38 = support::transport::airship::write(*(v37 + 8), &__p, 1uLL);
  if ((v38 & 1) == 0)
  {
    v60 = ACFULogging::getLogInstance(v38);
    ACFULogging::handleMessage(v60, 2, "%s::%s: failed to write PL_CMD_RECV_READ_PUBK_HASH\n");
    goto LABEL_65;
  }

  v39 = support::transport::airship::read(*(*(this + 3) + 8), &v77, 1uLL);
  if ((v39 & 1) == 0)
  {
    v61 = ACFULogging::getLogInstance(v39);
    ACFULogging::handleMessage(v61, 2, "%s::%s: failed to read ACK for PL_CMD_RECV_READ_PUBK_HASH\n");
    goto LABEL_65;
  }

  if (v77 != 117)
  {
    v62 = ACFULogging::getLogInstance(v39);
    ACFULogging::handleMessage(v62, 2, "%s::%s: invalid ACK (0x%x) for PL_CMD_RECV_READ_PUBK_HASH\n", "DaleController_Loader", "getBoardParameters", v77);
    goto LABEL_65;
  }

  v77 = 0;
  v40 = support::transport::airship::read(*(*(this + 3) + 8), &v77, 4uLL);
  if ((v40 & 1) == 0)
  {
    v63 = ACFULogging::getLogInstance(v40);
    ACFULogging::handleMessage(v63, 2, "%s::%s: failed to read pkhash size\n");
    goto LABEL_65;
  }

  if (v77 != 48)
  {
    v64 = ACFULogging::getLogInstance(v40);
    ACFULogging::handleMessage(v64, 2, "%s::%s: invalid pkhash size; expected: %u, received: %u\n", "DaleController_Loader", "getBoardParameters", 48, v77);
    goto LABEL_65;
  }

  v41 = support::transport::airship::read(*(*(this + 3) + 8), &v88, 0x30uLL);
  if ((v41 & 1) == 0)
  {
    v65 = ACFULogging::getLogInstance(v41);
    ACFULogging::handleMessage(v65, 2, "%s::%s: failed to read pkhash\n");
    goto LABEL_65;
  }

  v42 = ACFULogging::getLogInstance(v41);
  v43 = ACFULogging::handleMessage(v42, 3, "%s::%s: pkhash bytes:\n", "DaleController_Loader", "getBoardParameters");
  ACFULogging::getLogInstance(v43);
  v44 = operator new(0x30uLL);
  strcpy(v44, "DaleController_Loader::getBoardParameters");
  __p = v44;
  v81 = xmmword_1E5391A00;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p);
  }

  LODWORD(__p) = bswap32(v88);
  v45 = CFDataCreate(v31, &__p, 4);
  v6[9].__shared_weak_owners_ = v45;
  LOBYTE(v6[10].__vftable) = v45 != 0;
  LODWORD(__p) = 0;
  v46 = ACFULogging::getLogInstance(v45);
  ACFULogging::handleMessage(v46, 3, "%s::%s: <<rcv status\n", "DaleController_Loader", "getBoardParameters");
  v47 = support::transport::airship::read(*(*(this + 3) + 8), &__p, 4uLL);
  if ((v47 & 1) == 0)
  {
    v66 = ACFULogging::getLogInstance(v47);
    ACFULogging::handleMessage(v66, 2, "%s::%s: failed to read status after reading pkhash\n", "DaleController_Loader", "getBoardParameters");
    goto LABEL_65;
  }

  if (__p)
  {
    v67 = ACFULogging::getLogInstance(v47);
    ACFULogging::handleMessage(v67, 2, "%s::%s: read pkhash status error (0x%x)\n", "DaleController_Loader", "getBoardParameters", __p);
    goto LABEL_65;
  }

  v48 = ACFULogging::getLogInstance(v47);
  ACFULogging::handleMessage(v48, 0, "%s::%s: successfully retrieved board parameters in loader\n", "DaleController_Loader", "getBoardParameters");
  DaleCommon::DalePersonalizationParams::logParameters(&v6[1]);
  v49 = 0;
  v50 = v83;
  v51 = v84;
  if (!v84)
  {
    goto LABEL_68;
  }

LABEL_33:
  atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v50;
  *(a3 + 8) = v51;
  atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 16) = v49;
  if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

LABEL_69:
  v76 = v84;
  if (v84)
  {
    if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v76->__on_zero_shared)(v76);
      std::__shared_weak_count::__release_weak(v76);
    }
  }
}

void sub_1E52B2140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void DaleController_Loader::~DaleController_Loader(DaleController_Loader *this)
{
  *this = &unk_1F5F01428;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = v1[1];
    v1[1] = 0;
    if (v2)
    {
      support::transport::airship::~airship(v2);
      operator delete(v3);
    }

    operator delete(v1);
  }
}

{
  *this = &unk_1F5F01428;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = this;
    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v1);
    this = v2;
  }

  operator delete(this);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_Loader::init(void)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  DaleTransport_BootLoader::create(2, &__p);
  v3 = __p;
  __p = 0;
  v4 = *(v1 + 24);
  *(v1 + 24) = v3;
  if (v4)
  {
    v5 = v4[1];
    v4[1] = 0;
    if (v5)
    {
      support::transport::airship::~airship(v5);
      operator delete(v6);
    }

    operator delete(v4);
    v7 = __p;
    __p = 0;
    if (v7)
    {
      v8 = v7[1];
      v7[1] = 0;
      if (v8)
      {
        support::transport::airship::~airship(v8);
        operator delete(v9);
      }

      operator delete(v7);
    }

    v3 = *(v1 + 24);
  }

  if (!v3)
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create transport\n", "DaleController_Loader", "operator()");
  }

  *(v1 + 8) = v3 != 0;
}

uint64_t ctu::cf::plist_adapter::set<std::string>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v9, a3);
  v7 = ctu::cf::plist_adapter::set<std::string>(a1, &v10, v9, v4);
  MEMORY[0x1E6926590](&v9);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v7;
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_282()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t eUICC::Perso::Perform(uint64_t a1, uint64_t a2, void *a3)
{
  v109 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  if (!qword_1ED9440D0)
  {
    v7 = operator new(0x38uLL);
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 0;
    cf[0].__r_.__value_.__r.__words[0] = v7;
    v6 = operator new(0x20uLL);
    v6->__vftable = &unk_1F5F01460;
    v6->__shared_owners_ = 0;
    v6->__shared_weak_owners_ = 0;
    v6[1].__vftable = v7;
    v8 = off_1ED9440D8;
    qword_1ED9440D0 = v7;
    off_1ED9440D8 = v6;
    if (!v8)
    {
      v85 = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v7 = qword_1ED9440D0;
  v6 = off_1ED9440D8;
  v85 = off_1ED9440D8;
  if (off_1ED9440D8)
  {
LABEL_8:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v86[0] = 0;
  v86[1] = 0;
  v87 = 0;
  if (!*a3)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v20 = 112;
    v21 = "vinylValve";
    goto LABEL_38;
  }

  *(v7 + 3) = a1;
  v9 = dispatch_queue_create("PersoImpl", 0);
  v10 = *v7;
  *v7 = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a1 + 39);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 24);
  }

  if (!v11)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v20 = 117;
    v21 = "!performOptions.alderHostname.empty()";
    goto LABEL_38;
  }

  ReverseProxyGetSettings(a1 + 16, &cf[0].__r_.__value_.__l.__data_);
  v12 = (v7 + 8);
  if (v7 + 8 != cf)
  {
    v13 = *v12;
    v14 = cf[0].__r_.__value_.__r.__words[0];
    *v12 = cf[0].__r_.__value_.__r.__words[0];
    cf[0].__r_.__value_.__r.__words[0] = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

    CFRelease(v13);
  }

  if (cf[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(cf[0].__r_.__value_.__l.__data_);
  }

  v14 = *v12;
LABEL_21:
  if (!v14)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v20 = 119;
    v21 = "this->reverseProxySettings";
LABEL_38:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v21, "", "", v20);
    v22 = 10;
    goto LABEL_91;
  }

  if (*(*(v7 + 3) + 40) != 1)
  {
    goto LABEL_59;
  }

  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    dispatch_once(&BBUpdaterCommon::getECID(void)::sOnce, &__block_literal_global_18);
  }

  v95.__r_.__value_.__r.__words[0] = BBUpdaterCommon::getECID(void)::ecid;
  v106 = 0uLL;
  values = 0;
  __p = 0;
  v99 = 0;
  v100 = 0;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&cf[11].__r_.__value_.__s.__data_[2] = v15;
  *&cf[10].__r_.__value_.__l.__data_ = v15;
  *&cf[10].__r_.__value_.__r.__words[2] = v15;
  *&cf[8].__r_.__value_.__r.__words[2] = v15;
  *&cf[9].__r_.__value_.__r.__words[1] = v15;
  *&cf[7].__r_.__value_.__r.__words[1] = v15;
  *&cf[8].__r_.__value_.__l.__data_ = v15;
  *&cf[6].__r_.__value_.__l.__data_ = v15;
  *&cf[6].__r_.__value_.__r.__words[2] = v15;
  *&cf[4].__r_.__value_.__r.__words[2] = v15;
  *&cf[5].__r_.__value_.__r.__words[1] = v15;
  *&cf[3].__r_.__value_.__r.__words[1] = v15;
  *&cf[4].__r_.__value_.__l.__data_ = v15;
  *&cf[2].__r_.__value_.__l.__data_ = v15;
  *&cf[2].__r_.__value_.__r.__words[2] = v15;
  *&cf[0].__r_.__value_.__r.__words[2] = v15;
  *&cf[1].__r_.__value_.__r.__words[1] = v15;
  *&cf[0].__r_.__value_.__l.__data_ = v15;
  v16 = (*(**a3 + 8))(cf);
  v17 = capabilities::updater::EUICCVinylSuccessStatus(v16);
  if (LODWORD(cf[0].__r_.__value_.__l.__data_) != v17)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v23 = 183;
    goto LABEL_42;
  }

  if (cf[0].__r_.__value_.__s.__data_[4])
  {
    goto LABEL_27;
  }

  if (DEREncodeItemIntoVector(4uLL, 8uLL, &v95, &values))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v24 = 189;
LABEL_51:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == derRet", "", "", v24);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n");
    goto LABEL_54;
  }

  if (DEREncodeItemIntoVector(0x2000000000000010uLL, v106 - values, values, &__p))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v24 = 191;
    goto LABEL_51;
  }

  if ((*(**a3 + 56))(*a3, &__p, v86))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 195);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n");
    goto LABEL_54;
  }

  (*(**a3 + 16))(*a3, 0, 1);
  __src[0].__r_.__value_.__r.__words[0] = 10000000000;
  std::this_thread::sleep_for (__src);
  (*(**a3 + 8))(__src);
  v69 = memcpy(cf, __src, 0x11AuLL);
  v70 = capabilities::updater::EUICCVinylSuccessStatus(v69);
  if (LODWORD(cf[0].__r_.__value_.__l.__data_) != v70)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v23 = 203;
LABEL_42:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "cardData.Valid()", "", "", v23);
    goto LABEL_54;
  }

  if (!cf[0].__r_.__value_.__s.__data_[4])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "cardData.contents.perso", "", "", 204);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Still persod after force?\n");
LABEL_54:
    v18 = 0;
    v19 = __p;
    if (!__p)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_27:
  v18 = 1;
  v19 = __p;
  if (__p)
  {
LABEL_55:
    v99 = v19;
    operator delete(v19);
  }

LABEL_56:
  if (values)
  {
    *&v106 = values;
    operator delete(values);
  }

  if ((v18 & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v27 = 122;
    v28 = "kBBUReturnSuccess == ret";
    goto LABEL_90;
  }

LABEL_59:
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    dispatch_once(&BBUpdaterCommon::getECID(void)::sOnce, &__block_literal_global_18);
  }

  v90 = BBUpdaterCommon::getECID(void)::ecid;
  *&v102 = 0;
  memset(cf, 0, 24);
  memset(__src, 0, 24);
  if (DEREncodeItemIntoVector(4uLL, 8uLL, &v90, cf))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v25 = 222;
LABEL_69:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == derRet", "", "", v25);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n");
    v26 = 10;
    goto LABEL_72;
  }

  if (DEREncodeItemIntoVector(0x2000000000000010uLL, cf[0].__r_.__value_.__l.__size_ - cf[0].__r_.__value_.__r.__words[0], cf[0].__r_.__value_.__l.__data_, __src))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v25 = 224;
    goto LABEL_69;
  }

  values = operator new(0x19uLL);
  v106 = xmmword_1E538EBD0;
  strcpy(values, "InitPersoDeviceBlob.bin");
  v99 = 0;
  v100 = 0;
  __p = 0;
  v38 = __src[0].__r_.__value_.__r.__words[0];
  v39 = __src[0].__r_.__value_.__l.__size_ - __src[0].__r_.__value_.__r.__words[0];
  if (__src[0].__r_.__value_.__l.__size_ != __src[0].__r_.__value_.__r.__words[0])
  {
    if ((v39 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(__src[0].__r_.__value_.__l.__size_ - __src[0].__r_.__value_.__r.__words[0]);
    v99 = __p;
    v40 = __p + v39;
    v100 = __p + v39;
    memcpy(__p, v38, v39);
    v99 = v40;
  }

  v41 = *(v7 + 5);
  if (v41 >= *(v7 + 6))
  {
    v42 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>((v7 + 32), &values, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(v7 + 32, *(v7 + 5), &values, &__p);
    v42 = v41 + 2;
    *(v7 + 5) = v41 + 2;
  }

  *(v7 + 5) = v42;
  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(values);
  }

  v26 = (*(**a3 + 56))(*a3, __src, v86);
  if (v26)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 230);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n");
  }

  else
  {
    v53 = operator new(0x20uLL);
    v94 = 0;
    v95.__r_.__value_.__r.__words[0] = v53;
    *&v95.__r_.__value_.__r.__words[1] = xmmword_1E5391A60;
    strcpy(v53, "InitPersoDeviceResponse.bin");
    v92 = 0;
    v93 = 0;
    v54 = v86[0];
    v55 = v86[1] - v86[0];
    if (v86[1] != v86[0])
    {
      if ((v55 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v56 = operator new(v86[1] - v86[0]);
      v57 = &v56[v55];
      v92 = v56;
      v94 = &v56[v55];
      memcpy(v56, v54, v55);
      v93 = v57;
    }

    v58 = *(v7 + 5);
    if (v58 >= *(v7 + 6))
    {
      v59 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>((v7 + 32), &v95, &v92);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(v7 + 32, *(v7 + 5), &v95, &v92);
      v59 = v58 + 2;
      *(v7 + 5) = v58 + 2;
    }

    *(v7 + 5) = v59;
    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    v26 = 0;
  }

LABEL_72:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoDevice %d\n", v26);
  if (__src[0].__r_.__value_.__r.__words[0])
  {
    __src[0].__r_.__value_.__l.__size_ = __src[0].__r_.__value_.__r.__words[0];
    operator delete(__src[0].__r_.__value_.__l.__data_);
  }

  if (cf[0].__r_.__value_.__r.__words[0])
  {
    cf[0].__r_.__value_.__l.__size_ = cf[0].__r_.__value_.__r.__words[0];
    operator delete(cf[0].__r_.__value_.__l.__data_);
  }

  if (v26 || (v29 = v86[0], v86[0] == v86[1]))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v27 = 126;
    goto LABEL_82;
  }

  v103 = 0;
  v102 = 0uLL;
  v100 = 0;
  v101 = 0;
  __p = 0;
  v99 = 0;
  v30 = v86[1] - v86[0];
  if (v86[1] - v86[0] < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v31 = operator new(v86[1] - v86[0]);
  memcpy(v31, v29, v30);
  values = 0;
  memset(cf, 0, 24);
  v32 = operator new(v30);
  v33 = v32 + v30;
  cf[0].__r_.__value_.__r.__words[0] = v32;
  cf[0].__r_.__value_.__r.__words[2] = v32 + v30;
  memcpy(v32, v31, v30);
  cf[0].__r_.__value_.__l.__size_ = v33;
  __src[0].__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v34 = __src[0].__r_.__value_.__r.__words[0];
    values = __src[0].__r_.__value_.__r.__words[0];
  }

  else
  {
    v34 = 0;
  }

  if (cf[0].__r_.__value_.__r.__words[0])
  {
    cf[0].__r_.__value_.__l.__size_ = cf[0].__r_.__value_.__r.__words[0];
    operator delete(cf[0].__r_.__value_.__l.__data_);
  }

  v97 = v34;
  operator delete(v31);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, *a2, *(a2 + 8));
  }

  else
  {
    v95 = *a2;
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__src, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    __src[0] = v95;
  }

  v92 = 0;
  if (SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(cf, __src[0].__r_.__value_.__l.__data_, __src[0].__r_.__value_.__l.__size_);
  }

  else
  {
    cf[0] = __src[0];
  }

  values = 0;
  if (ctu::cf::convert_copy())
  {
    v43 = values;
  }

  else
  {
    v43 = 0;
  }

  if ((SHIBYTE(cf[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v96 = v43;
    if ((SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_125;
    }

LABEL_158:
    operator delete(__src[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

  operator delete(cf[0].__r_.__value_.__l.__data_);
  v96 = v43;
  if (SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_158;
  }

LABEL_125:
  if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_126;
  }

LABEL_159:
  operator delete(v95.__r_.__value_.__l.__data_);
LABEL_126:
  *&v44 = 0xAAAAAAAAAAAAAAAALL;
  *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&cf[11].__r_.__value_.__s.__data_[2] = v44;
  *&cf[10].__r_.__value_.__l.__data_ = v44;
  *&cf[10].__r_.__value_.__r.__words[2] = v44;
  *&cf[8].__r_.__value_.__r.__words[2] = v44;
  *&cf[9].__r_.__value_.__r.__words[1] = v44;
  *&cf[7].__r_.__value_.__r.__words[1] = v44;
  *&cf[8].__r_.__value_.__l.__data_ = v44;
  *&cf[6].__r_.__value_.__l.__data_ = v44;
  *&cf[6].__r_.__value_.__r.__words[2] = v44;
  *&cf[4].__r_.__value_.__r.__words[2] = v44;
  *&cf[5].__r_.__value_.__r.__words[1] = v44;
  *&cf[3].__r_.__value_.__r.__words[1] = v44;
  *&cf[4].__r_.__value_.__l.__data_ = v44;
  *&cf[2].__r_.__value_.__l.__data_ = v44;
  *&cf[2].__r_.__value_.__r.__words[2] = v44;
  *&cf[0].__r_.__value_.__r.__words[2] = v44;
  *&cf[1].__r_.__value_.__r.__words[1] = v44;
  *&cf[0].__r_.__value_.__l.__data_ = v44;
  v45 = (***a3)(cf);
  v46 = capabilities::updater::EUICCVinylSuccessStatus(v45);
  if (LODWORD(cf[0].__r_.__value_.__l.__data_) != v46)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v49 = 251;
    v50 = "hwType.Valid()";
    goto LABEL_136;
  }

  __src[0].__r_.__value_.__r.__words[0] = @"Command";
  __src[0].__r_.__value_.__l.__size_ = @"DATA";
  __src[0].__r_.__value_.__r.__words[2] = @"FirmwareLoaderVersion";
  __src[1].__r_.__value_.__r.__words[0] = @"HardwareType";
  values = @"StartSession";
  *&v106 = v34;
  v47 = @"2";
  if (!cf[11].__r_.__value_.__s.__data_[15])
  {
    v47 = @"0";
  }

  *(&v106 + 1) = v43;
  v107 = v47;
  v48 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&__src[0].__r_.__value_.__l.__data_, &values, 4, &__p);
  if (v48)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 265);
    goto LABEL_137;
  }

  values = operator new(0x20uLL);
  v106 = xmmword_1E5390FE0;
  strcpy(values, "InitPersoServerRequest.plist");
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v60 = __p;
  v61 = v99 - __p;
  if (v99 != __p)
  {
    if ((v61 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v92 = operator new(v99 - __p);
    v93 = v92;
    v62 = v92 + v61;
    v94 = v92 + v61;
    memcpy(v92, v60, v61);
    v93 = v62;
  }

  v63 = *(v7 + 5);
  if (v63 >= *(v7 + 6))
  {
    v64 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>((v7 + 32), &values, &v92);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(v7 + 32, *(v7 + 5), &values, &v92);
    v64 = v63 + 2;
    *(v7 + 5) = v63 + 2;
  }

  *(v7 + 5) = v64;
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(values);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(__src, v7, &__p);
  v102 = *&__src[0].__r_.__value_.__l.__data_;
  v65 = __src[0].__r_.__value_.__r.__words[0];
  if (!__src[0].__r_.__value_.__r.__words[0])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 271);
    goto LABEL_222;
  }

  v90 = operator new(0x20uLL);
  v91 = xmmword_1E538EBE0;
  strcpy(v90, "InitPersoServerResponse.plist");
  (*(*v65 + 40))(&v89, v65);
  eUICC::Perso::PersoImplementation::logTransactionCFData(v7, &v90, &v89);
  if (v89)
  {
    CFRelease(v89);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }

  (*(*v65 + 40))(&v88, v65);
  v48 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v88, &v103);
  if (v88)
  {
    CFRelease(v88);
  }

  if (v48)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 275);
    goto LABEL_137;
  }

  if (!v103)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v49 = 276;
    v50 = "respDict";
LABEL_136:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v50, "", "", v49);
    v48 = 18;
    goto LABEL_137;
  }

  Value = CFDictionaryGetValue(v103, @"SessionId");
  v67 = Value;
  if (Value)
  {
    v68 = CFGetTypeID(Value);
    if (v68 == CFStringGetTypeID())
    {
      CFRetain(v67);
    }

    else
    {
      v67 = 0;
    }
  }

  v71 = *(v7 + 2);
  *(v7 + 2) = v67;
  if (v71)
  {
    CFRelease(v71);
    v67 = *(v7 + 2);
  }

  if (!v67 || !CFStringGetLength(v67))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0", "", "", 280);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(__src, v103, v76);
    if ((__src[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = __src;
    }

    else
    {
      v77 = __src[0].__r_.__value_.__r.__words[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n", v77);
    goto LABEL_262;
  }

  v72 = v103;
  v73 = CFDictionaryGetValue(v103, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&v101, v73);
  if (!v101)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 283);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(__src, v72, v78);
    if ((__src[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = __src;
    }

    else
    {
      v79 = __src[0].__r_.__value_.__r.__words[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", v79);
LABEL_262:
    if (SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src[0].__r_.__value_.__l.__data_);
    }

LABEL_222:
    v48 = 53;
    goto LABEL_137;
  }

  memset(__src, 0, 24);
  ctu::cf::assign();
  v74 = *&__src[0].__r_.__value_.__l.__data_;
  v75 = __src[0].__r_.__value_.__r.__words[2];
  if (v86[0])
  {
    v86[1] = v86[0];
    v84 = *&__src[0].__r_.__value_.__l.__data_;
    operator delete(v86[0]);
    v74 = v84;
  }

  v48 = 0;
  *v86 = v74;
  v87 = v75;
LABEL_137:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoServer %d\n", v48);
  if (v96)
  {
    CFRelease(v96);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  v51 = *(&v102 + 1);
  if (*(&v102 + 1) && !atomic_fetch_add((*(&v102 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v48 || v86[0] == v86[1])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v52 = 129;
    goto LABEL_156;
  }

  if (eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(v7, v86, a3) || v86[0] == v86[1])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v27 = 132;
LABEL_82:
    v28 = "kBBUReturnSuccess == ret && !dataBuffer.empty()";
LABEL_90:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v28, "", "", v27);
    v22 = 18;
    goto LABEL_91;
  }

  if (eUICC::Perso::PersoImplementation::GetWrapKeyServer(v7, v86) || v86[0] == v86[1])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v52 = 135;
    goto LABEL_156;
  }

  v22 = eUICC::Perso::PersoImplementation::FinalizePersoDevice(v7, v86, a3);
  if (v22)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 138);
    goto LABEL_91;
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::reset(v7 + 2);
  if (eUICC::Perso::PersoImplementation::GetNonceServer(v7, v86, *a3) || v86[0] == v86[1])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v52 = 143;
    goto LABEL_156;
  }

  if (eUICC::Perso::PersoImplementation::CreateValidationBlob(v86) || v86[0] == v86[1])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v52 = 146;
    goto LABEL_156;
  }

  if (eUICC::Perso::PersoImplementation::ValidatePersoDevice(v7, v86, a3) || v86[0] == v86[1])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v52 = 149;
LABEL_156:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret && !dataBuffer.empty()", "", "", v52);
    v22 = 53;
    goto LABEL_91;
  }

  v22 = eUICC::Perso::PersoImplementation::SendReceiptServer(v7, v86);
  if (v22)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 152);
  }

  else
  {
    v80 = *(v7 + 4);
    v81 = *(v7 + 5);
    if (v81 != v80)
    {
      do
      {
        v82 = *(v81 - 3);
        if (v82)
        {
          *(v81 - 2) = v82;
          operator delete(v82);
        }

        v83 = v81 - 6;
        if (*(v81 - 25) < 0)
        {
          operator delete(*v83);
        }

        v81 -= 6;
      }

      while (v83 != v80);
    }

    v22 = 0;
    *(v7 + 5) = v80;
  }

LABEL_91:
  v35 = *(v7 + 2);
  *(v7 + 2) = 0;
  if (v35)
  {
    CFRelease(v35);
  }

  *(v7 + 3) = 0;
  v36 = *v7;
  *v7 = 0;
  if (v36)
  {
    dispatch_release(v36);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ret %d records %zu\n", v22, 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 5) - *(v7 + 4)) >> 4));
  if (v86[0])
  {
    v86[1] = v86[0];
    operator delete(v86[0]);
  }

  if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v85->__on_zero_shared)(v85);
    std::__shared_weak_count::__release_weak(v85);
  }

  return v22;
}

void sub_1E52B3F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, const void *a34, void *a35, uint64_t a36, uint64_t a37, const void *a38, __int16 a39, uint64_t a40, uint64_t a41, const void *a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a33);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a34);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a38);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a39);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a42);
  if (!a17)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  a18 = a17;
  operator delete(a17);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void eUICC::Perso::DumpTransactions(std::string **a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  if (!qword_1ED9440D0)
  {
    v3 = operator new(0x38uLL);
    v3->__on_zero_shared_weak = 0;
    v3[1].~__shared_weak_count = 0;
    v3[1].~__shared_weak_count_0 = 0;
    v3->~__shared_weak_count_0 = 0;
    v3->__on_zero_shared = 0;
    v3->~__shared_weak_count = 0;
    v2 = operator new(0x20uLL);
    v2->__vftable = &unk_1F5F01460;
    v2->__shared_owners_ = 0;
    v2->__shared_weak_owners_ = 0;
    v2[1].__vftable = v3;
    v4 = off_1ED9440D8;
    qword_1ED9440D0 = v3;
    off_1ED9440D8 = v2;
    if (!v4)
    {
      v9 = v2;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  v3 = qword_1ED9440D0;
  v2 = off_1ED9440D8;
  v9 = off_1ED9440D8;
  if (off_1ED9440D8)
  {
LABEL_8:
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  on_zero_shared_weak = v3->__on_zero_shared_weak;
  v5 = v3[1].~__shared_weak_count;
  v7 = v5 - on_zero_shared_weak;
  if (v5 != on_zero_shared_weak)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 4) >= 0x555555555555556)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v5 - on_zero_shared_weak);
    *a1 = v8;
    a1[1] = v8;
    a1[2] = (v8 + v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, on_zero_shared_weak, v5, v8);
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1E52B44F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<eUICC::Perso::PersoImplementation>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E52B4524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11)
{
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1E52B4548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11)
{
  std::__exception_guard_exceptions<std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = operator new(0x28uLL);
  v30 = xmmword_1E5391A70;
  strcpy(v29, "AuthenticatePersoDeviceRequest.bin");
  v27 = 0;
  v28 = 0;
  __p = 0;
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = v6 - *a2;
  if (v6 != *a2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v6 - *a2);
    v10 = &v9[v8];
    __p = v9;
    v28 = &v9[v8];
    memcpy(v9, v7, v8);
    v27 = v10;
  }

  v11 = *(a1 + 40);
  if (v11 >= *(a1 + 48))
  {
    v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v29, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v29, &__p);
    v12 = v11 + 2;
    *(a1 + 40) = v11 + 2;
  }

  *(a1 + 40) = v12;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v13 = (*(**a3 + 64))(*a3, a2, a2);
  if (v13)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 298);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete AuthPerso command\n");
  }

  else
  {
    v23 = 0;
    v24 = operator new(0x28uLL);
    v25 = xmmword_1E538EBC0;
    strcpy(v24, "AuthenticatePersoDeviceResponse.bin");
    v21 = 0;
    v22 = 0;
    v14 = *a2;
    v15 = *(a2 + 8) - *a2;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v21 = v16;
      v23 = &v16[v15];
      memcpy(v16, v14, v15);
      v22 = v17;
    }

    v18 = *(a1 + 40);
    if (v18 >= *(a1 + 48))
    {
      v19 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v24, &v21);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v24, &v21);
      v19 = v18 + 2;
      *(a1 + 40) = v18 + 2;
    }

    *(a1 + 40) = v19;
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "AuthenticatePersoDevice %d\n", v13);
  return v13;
}

void sub_1E52B4888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetWrapKeyServer(uint64_t a1, uint64_t a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v45 = 0uLL;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    v8 = 0;
    v7 = 0;
    v48 = 0;
    values[0] = 0;
    v47 = 0uLL;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - *a2);
    memcpy(v7, v5, v6);
    v8 = operator new(v6);
    memcpy(v8, v7, v6);
    values[0] = 0;
    v9 = operator new(v6);
    v10 = &v9[v6];
    *&v47 = v9;
    v48 = &v9[v6];
    memcpy(v9, v7, v6);
    *(&v47 + 1) = v10;
  }

  keys[0] = 0;
  if (ctu::cf::convert_copy())
  {
    values[0] = keys[0];
  }

  if (v47)
  {
    *(&v47 + 1) = v47;
    operator delete(v47);
  }

  v11 = values[0];
  v40 = values[0];
  values[0] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  keys[0] = @"Command";
  keys[1] = @"DATA";
  keys[2] = @"SessionId";
  values[0] = @"GetWrapKey";
  values[1] = v11;
  values[2] = *(a1 + 16);
  DictionaryFromPlistData = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, values, 3, &v41);
  if (DictionaryFromPlistData)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 320);
    v13 = 0;
    v14 = 0;
    goto LABEL_56;
  }

  v37 = 0;
  v38 = operator new(0x20uLL);
  v39 = xmmword_1E538EBE0;
  strcpy(v38, "GetWrapKeyServerRequest.plist");
  __p = 0;
  v36 = 0;
  v15 = v41;
  v16 = v42 - v41;
  if (v42 != v41)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v42 - v41);
    v37 = __p + v16;
    memcpy(__p, v15, v16);
    v36 = __p + v16;
  }

  v17 = *(a1 + 40);
  if (v17 >= *(a1 + 48))
  {
    v18 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v38, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v38, &__p);
    v18 = v17 + 2;
    *(a1 + 40) = v17 + 2;
  }

  *(a1 + 40) = v18;
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(&v47, a1, &v41);
  v13 = *(&v47 + 1);
  v19 = v47;
  v45 = v47;
  if (!v47)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 325);
    goto LABEL_55;
  }

  v33 = operator new(0x20uLL);
  v34 = xmmword_1E5390FF0;
  strcpy(v33, "GetWrapKeyServerResponse.plist");
  (*(*v19 + 40))(&cf, v19);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v33, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  (*(*v19 + 40))(&v31, v19);
  DictionaryFromPlistData = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v31, &v46);
  if (v31)
  {
    CFRelease(v31);
  }

  if (DictionaryFromPlistData)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 328);
    v14 = 0;
    goto LABEL_56;
  }

  v20 = v46;
  Value = CFDictionaryGetValue(v46, @"DATA");
  v14 = Value;
  if (!Value || (v22 = CFGetTypeID(Value), v22 != CFDataGetTypeID()))
  {
    v44 = 0;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 332);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(&v47, v20, v26);
    if (SHIBYTE(v48) >= 0)
    {
      v27 = &v47;
    }

    else
    {
      v27 = v47;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", v27);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

LABEL_55:
    v14 = 0;
    DictionaryFromPlistData = 53;
    goto LABEL_56;
  }

  CFRetain(v14);
  v44 = v14;
  v47 = 0uLL;
  v48 = 0;
  ctu::cf::assign();
  v23 = v47;
  v24 = v48;
  v25 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v25;
    v30 = v23;
    operator delete(v25);
    v23 = v30;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  DictionaryFromPlistData = 0;
  *a2 = v23;
  *(a2 + 16) = v24;
LABEL_56:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetWrapKeyServer %d\n", DictionaryFromPlistData);
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v28 = v46;
    if (!v46)
    {
      return DictionaryFromPlistData;
    }

    goto LABEL_65;
  }

  v28 = v46;
  if (v46)
  {
LABEL_65:
    CFRelease(v28);
  }

  return DictionaryFromPlistData;
}