uint64_t BBUZipFile::containsFile(uint64_t a1, void *a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 96);
  if (!v4)
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  while (1)
  {
    v7 = *(v4 + 55);
    if (v7 >= 0)
    {
      v8 = (v4 + 4);
    }

    else
    {
      v8 = v4[4];
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 55);
    }

    else
    {
      v9 = v4[5];
    }

    if (v9 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    v11 = memcmp(a2, v8, v10);
    if (v11)
    {
      if (v11 < 0)
      {
        goto LABEL_7;
      }
    }

    else if (v6 < v9)
    {
      goto LABEL_7;
    }

    v12 = memcmp(v8, a2, v10);
    if (!v12)
    {
      if (v9 >= v6)
      {
        break;
      }

      goto LABEL_6;
    }

    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

LABEL_6:
    ++v4;
LABEL_7:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_24;
    }
  }

  v13 = 1;
LABEL_25:
  pthread_mutex_unlock(a1);
  return v13;
}

uint64_t BBUZipFile::getFileSize(pthread_mutex_t *a1, const void **a2)
{
  pthread_mutex_lock(a1);
  v4 = std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::find<std::string>(&a1[1].__opaque[16], a2);
  if (&a1[1].__opaque[24] == v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x124u, "Assertion failure(i != fFileMap.end())");
  }

  v5 = v4[22];
  pthread_mutex_unlock(a1);
  return v5;
}

uint64_t BBUZipFile::copyDataFromFile(uint64_t a1, const char **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  v45 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(a1);
  v10 = std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::find<std::string>(a1 + 88, a2);
  if ((a1 + 96) == v10)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x124u, "Assertion failure(i != fFileMap.end())");
  }

  v11 = v10;
  v12 = (a1 + 112);
  v13 = *(a1 + 135);
  if (v13 >= 0)
  {
    v14 = *(a1 + 135);
  }

  else
  {
    v14 = *(a1 + 120);
  }

  v15 = *(a2 + 23);
  v16 = v15;
  if (v15 < 0)
  {
    v15 = a2[1];
  }

  if (v14 == v15)
  {
    v17 = v13 >= 0 ? (a1 + 112) : *v12;
    v18 = v16 >= 0 ? a2 : *a2;
    if (!memcmp(v17, v18, v14))
    {
      v29 = *(a1 + 136);
      if (v29 <= a5)
      {
        goto LABEL_71;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_56;
        }
      }

      if (gBBULogVerbosity >= 1)
      {
        if (*(a2 + 23) >= 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        _BBULog(15, 1, "BBUZipFile", &str_4_4, "Reset offset for %u, current %u, file %s\n", a5, *(a1 + 136), v30);
      }

LABEL_56:
      *(a1 + 136) = 0;
      v31 = *(a1 + 64);
      if (!v31)
      {
        goto LABEL_65;
      }

      v32 = *(v31 + 288);
      if (!v32)
      {
        goto LABEL_65;
      }

      if (*(v32 + 184) || *(v32 + 280))
      {
        v33 = 1;
        v34 = *v32;
        if (!*v32)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v33 = *(v32 + 160) == *(v32 + 168);
        v34 = *v32;
        if (!*v32)
        {
LABEL_62:
          *v32 = 0;
          if (*(v32 + 128))
          {
            inflateEnd((v32 + 8));
          }

          free(v32);
          *(v31 + 288) = 0;
          if (v33)
          {
            goto LABEL_69;
          }

LABEL_65:
          v35 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v35, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x9Eu, "Assertion failure(ret == (0))");
          goto LABEL_95;
        }
      }

      free(v34);
      goto LABEL_62;
    }
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v19 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v19 = *v12;
    }

    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    _BBULog(15, 0, "BBUZipFile", &str_4_4, "Switch from file %s to %s\n", v19, v20);
  }

LABEL_24:
  if ((*(a1 + 135) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 135))
    {
      goto LABEL_37;
    }

LABEL_28:
    v21 = *(a1 + 64);
    if (!v21)
    {
      goto LABEL_90;
    }

    v22 = *(v21 + 288);
    if (!v22)
    {
      goto LABEL_90;
    }

    if (*(v22 + 184) || *(v22 + 280))
    {
      v23 = 1;
      v24 = *v22;
      if (!*v22)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = *(v22 + 160) == *(v22 + 168);
      v24 = *v22;
      if (!*v22)
      {
LABEL_34:
        *v22 = 0;
        if (*(v22 + 128))
        {
          inflateEnd((v22 + 8));
        }

        free(v22);
        *(v21 + 288) = 0;
        if (v23)
        {
          goto LABEL_37;
        }

LABEL_90:
        v35 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v35, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xAFu, "Assertion failure(ret == (0))");
        goto LABEL_95;
      }
    }

    free(v24);
    goto LABEL_34;
  }

  if (*(a1 + 120))
  {
    goto LABEL_28;
  }

LABEL_37:
  if (v12 != a2)
  {
    v25 = *(a2 + 23);
    if (*(a1 + 135) < 0)
    {
      if (v25 >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      if (v25 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = a2[1];
      }

      std::string::__assign_no_alias<false>((a1 + 112), v27, v28);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 112), *a2, a2[1]);
    }

    else
    {
      v26 = *a2;
      *(a1 + 128) = a2[2];
      *v12 = v26;
    }
  }

  *(a1 + 136) = 0;
  v36 = *(a1 + 64);
  if (!v36 || (v36[6] = vextq_s8(*(v11 + 13), *(v11 + 13), 8uLL), CurrentFileInfoInternal = unzlocal_GetCurrentFileInfoInternal(v36, v36 + 9, &v36[17].i64[1], 0, 0, 0, 0, 0, 0), v36[7].i64[0] = CurrentFileInfoInternal == 0, CurrentFileInfoInternal))
  {
    v42 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v42, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xB7u, "Assertion failure(ret == (0))");
  }

LABEL_69:
  if (unzOpenCurrentFile3(*(a1 + 64), 0, 0, 0, 0))
  {
    v35 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v35, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xBDu, "Assertion failure(ret == (0))");
LABEL_95:
  }

  v29 = *(a1 + 136);
LABEL_71:
  v38 = a5 - v29;
  if (a5 < v29)
  {
    v35 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v35, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xC0u, "Assertion failure(fCurrentFileOffset <= offset)");
    goto LABEL_95;
  }

  memset(__b, 170, sizeof(__b));
  for (; v38; v38 -= v39)
  {
    if (v38 >= 0x400)
    {
      v39 = 1024;
    }

    else
    {
      v39 = v38;
    }

    if (unzReadCurrentFile(*(a1 + 64), __b, v39) != v39)
    {
      v41 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v41, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xCBu, "Assertion failure(err == chunk)");
    }
  }

  *(a1 + 136) = a5;
  if (unzReadCurrentFile(*(a1 + 64), a3, v6) != v6)
  {
    v35 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v35, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xD3u, "Assertion failure(ret == static_cast<SInt32>( amount))");
    goto LABEL_95;
  }

  *(a1 + 136) += v6;
  pthread_mutex_unlock(a1);
  return 0;
}

void sub_1E52DD12C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  pthread_mutex_unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUZipFile::copyEntireFile(pthread_mutex_t *a1, const char **a2, __CFData **a3)
{
  if (!BBUZipFile::containsFile(a1, a2))
  {
    return 15;
  }

  FileSize = BBUZipFile::getFileSize(a1, a2);
  Mutable = CFDataCreateMutable(0, FileSize);
  if (!Mutable)
  {
    return 19;
  }

  v8 = Mutable;
  CFDataSetLength(Mutable, FileSize);
  MutableBytePtr = CFDataGetMutableBytePtr(v8);
  BBUZipFile::copyDataFromFile(a1, a2, MutableBytePtr, FileSize, 0);
  *a3 = v8;
  CFRetain(v8);
  CFRelease(v8);
  return 0;
}

uint64_t BBUZipFile::saveDataToFile(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 144);
  if (v3)
  {
    CFDataGetBytePtr(v3);
    Length = CFDataGetLength(*(a1 + 144));
    v6 = *(a2 + 23) >= 0 ? a2 : *a2;
    v7 = open(v6, 1537, 420);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v7;
      v35 = -1431655766;
      v9 = TelephonyUtilWriteToCompletion();
      if (!v9)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          v15 = 0;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v15 = 0;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_57;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          if (*(a2 + 23) >= 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = *a2;
          }

          _BBULog(15, 0, "BBUZipFile", &str_4_4, "Wrote %u bytes to %s\n", v35, v16);
          v15 = 0;
        }

        goto LABEL_57;
      }

      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v10 = off_1ED944120;
      if (!off_1ED944120)
      {
        v11 = operator new(0x38uLL);
        v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
        v13 = dispatch_queue_create("BBUError", v12);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = v13;
        if (v13)
        {
          v14 = v13;
          dispatch_retain(v13);
          v11[3] = 0;
          dispatch_release(v14);
        }

        else
        {
          v11[3] = 0;
        }

        v11[4] = 0;
        v11[5] = 0;
        v11[6] = 0;
        std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&__strerrbuf, v11);
        v17 = __strerrbuf;
        __strerrbuf = 0uLL;
        v18 = *(&off_1ED944120 + 1);
        off_1ED944120 = v17;
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v19 = *(&__strerrbuf + 1);
        if (*(&__strerrbuf + 1) && !atomic_fetch_add((*(&__strerrbuf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v10 = off_1ED944120;
      }

      v20 = *(&off_1ED944120 + 1);
      v33 = v10;
      v34 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      __strerrbuf = 0u;
      v39 = 0u;
      if (strerror_r(v9, &__strerrbuf, 0x80uLL))
      {
        snprintf(&__strerrbuf, 0x80uLL, "unknown error %d", v9);
      }

      v21 = strlen(&__strerrbuf);
      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v21;
      if (v21 >= 0x17)
      {
        if ((v21 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v21 | 7) + 1;
        }

        p_dst = operator new(v24);
        __dst.__r_.__value_.__l.__size_ = v22;
        __dst.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v21;
        p_dst = &__dst;
        if (!v21)
        {
LABEL_39:
          p_dst->__r_.__value_.__s.__data_[v22] = 0;
          v25 = std::string::insert(&__dst, 0, "Failed to write file: ", 0x16uLL);
          v26 = *&v25->__r_.__value_.__l.__data_;
          v32 = v25->__r_.__value_.__r.__words[2];
          *__p = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          *&__strerrbuf = MEMORY[0x1E69E9820];
          *(&__strerrbuf + 1) = 0x40000000;
          *&v39 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
          *(&v39 + 1) = &__block_descriptor_tmp_8;
          *&v40 = v10;
          *(&v40 + 1) = __p;
          LODWORD(v41) = 35;
          p_strerrbuf = &__strerrbuf;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          block[3] = &__block_descriptor_tmp_13_0;
          block[4] = v10;
          block[5] = &p_strerrbuf;
          v27 = *(v10 + 16);
          if (*(v10 + 24))
          {
            dispatch_async_and_wait(v27, block);
            if ((SHIBYTE(v32) & 0x80000000) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            dispatch_sync(v27, block);
            if ((SHIBYTE(v32) & 0x80000000) == 0)
            {
LABEL_42:
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
                if (!v20)
                {
                  goto LABEL_50;
                }
              }

              else if (!v20)
              {
                goto LABEL_50;
              }

              if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v20->__on_zero_shared)(v20);
                std::__shared_weak_count::__release_weak(v20);
              }

LABEL_50:
              if (gBBULogMaskGet(void)::once == -1)
              {
                v15 = 35;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
                {
                  goto LABEL_52;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                v15 = 35;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
                {
LABEL_52:
                  if ((gBBULogVerbosity & 0x80000000) == 0)
                  {
                    if (*(a2 + 23) >= 0)
                    {
                      v28 = a2;
                    }

                    else
                    {
                      v28 = *a2;
                    }

                    _BBULog(15, 0, "BBUZipFile", &str_4_4, "Failed writing %u bytes to %s - wrote only %u\n", Length, v28, v35);
                  }
                }
              }

LABEL_57:
              close(v8);
              return v15;
            }
          }

          operator delete(__p[0]);
          goto LABEL_42;
        }
      }

      memcpy(p_dst, &__strerrbuf, v22);
      goto LABEL_39;
    }
  }

  return 35;
}

void BBUZipDataSource::~BBUZipDataSource(void **this)
{
  *this = &unk_1F5F02918;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_1F5F02918;
  if (*(this + 47) < 0)
  {
    v2 = this;
    operator delete(this[3]);
    this = v2;
  }

  operator delete(this);
}

uint64_t BBUZipDataSource::init(uint64_t a1, void *a2, int a3)
{
  v5 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 47) < 0)
  {
    v7 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v7;
    }

    std::string::__assign_no_alias<false>((a1 + 24), a2, v8);
LABEL_10:
    if ((BBUZipFile::containsFile(*(a1 + 8), v5) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 24), *a2, a2[1]);
    if ((BBUZipFile::containsFile(*(a1 + 8), v5) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    FileSize = BBUZipFile::getFileSize(*(a1 + 8), v5);
    result = 0;
    *(a1 + 16) = FileSize;
    *(a1 + 48) = a3;
    return result;
  }

  v6 = *a2;
  *(a1 + 40) = a2[2];
  *v5 = v6;
  if (BBUZipFile::containsFile(*(a1 + 8), v5))
  {
    goto LABEL_11;
  }

LABEL_14:
  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v11 = (*(*a1 + 56))(a1);
    if (*(a1 + 47) < 0)
    {
      v5 = *v5;
    }

    _BBULog(15, 0, v11, &str_4_4, "File %s does not exist\n", v5);
    return 35;
  }

  return result;
}

uint64_t BBUZipDataSource::copyData(BBUZipDataSource *this, unsigned __int8 *a2, uint64_t a3, unsigned int *a4, unsigned int a5)
{
  v6 = a3;
  BBUZipFile::copyDataFromFile(*(this + 1), this + 3, a2, a3, a5);
  *a4 = v6;
  return 0;
}

void *BBUZipDataSource::getNameAsString@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 47);
  if (v3 >= 0)
  {
    v4 = *(this + 47);
  }

  else
  {
    v4 = this[4];
  }

  v5 = v4 + 4;
  if (v4 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = this;
  if (v5 < 0x17)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 23) = v5;
    v9 = (a2 + 4);
    *a2 = 544237914;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v5 | 7) + 1;
    }

    v8 = operator new(v7);
    *(a2 + 8) = v5;
    *(a2 + 16) = v7 | 0x8000000000000000;
    *a2 = v8;
    *v8 = 544237914;
    v9 = v8 + 1;
  }

  if (v3 >= 0)
  {
    v10 = v6 + 3;
  }

  else
  {
    v10 = v6[3];
  }

  this = memmove(v9, v10, v4);
LABEL_15:
  *(v9 + v4) = 0;
  return this;
}

uint64_t *BBUZipFile::getFileList@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = this[11];
  v3 = this + 12;
  if (v2 != this + 12)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      this = operator new(0x28uLL);
      *this = 0;
      this[1] = 0;
      if (*(v2 + 55) < 0)
      {
        v8 = this;
        std::string::__init_copy_ctor_external((this + 2), *(v2 + 32), *(v2 + 40));
        v6 = *a1;
        v5 = a1[2];
        this = v8;
      }

      else
      {
        v7 = *(v2 + 32);
        this[4] = *(v2 + 48);
        *(this + 1) = v7;
      }

      *this = v6;
      this[1] = a1;
      v6[1] = this;
      *a1 = this;
      a1[2] = ++v5;
      v9 = *(v2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 16);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v6 = this;
      v2 = v10;
    }

    while (v10 != v3);
  }

  return this;
}

void sub_1E52DDCF4(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::list<std::string>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 103) < 0)
    {
      operator delete(*(a2 + 80));
      if ((*(a2 + 79) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 56));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_5:
      v4 = a2;

LABEL_7:
      operator delete(v4);
      return;
    }

LABEL_11:
    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_7;
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,BBUZipFile::FileInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BBUZipFile::FileInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) != 1)
    {
LABEL_6:
      operator delete(v2);
      return a1;
    }

    if (*(v2 + 103) < 0)
    {
      operator delete(*(v2 + 80));
      if ((*(v2 + 79) & 0x80000000) == 0)
      {
LABEL_5:
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_10:
        operator delete(*(v2 + 32));
        goto LABEL_6;
      }
    }

    else if ((*(v2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(v2 + 56));
    if ((*(v2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = (v6 >= v10 ? v10 : v6);
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return v7;
    }

    return v2;
  }

  else
  {
    if (v6 < v15)
    {
      return v2;
    }

    return v7;
  }
}

uint64_t __cxx_global_var_init_16()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t DaleFirmware_Boot::create@<X0>(uint64_t a1@<X0>, ACFUFirmware **a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x158uLL);
  v5 = v4;
  LOBYTE(v12[0]) = 0;
  v6 = *(a1 + 24);
  if (v6 == 1)
  {
    *v12 = *a1;
    v13 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    LOBYTE(__p) = 0;
    v7 = *(a1 + 56);
    if (v7 != 1)
    {
LABEL_3:
      LOBYTE(v16) = 0;
      v8 = *(a1 + 88);
      if (v8 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    LOBYTE(__p) = 0;
    v7 = *(a1 + 56);
    if (v7 != 1)
    {
      goto LABEL_3;
    }
  }

  __p = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  LOBYTE(v16) = 0;
  v8 = *(a1 + 88);
  if (v8 == 1)
  {
LABEL_4:
    v16 = *(a1 + 64);
    v17 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
  }

LABEL_5:
  ACFUFirmware::ACFUFirmware(v4);
  *(v5 + 29) = 0;
  *(v5 + 216) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *v5 = &unk_1F5F02980;
  *(v5 + 240) = 0;
  *(v5 + 264) = 0;
  if (v6)
  {
    *(v5 + 15) = *v12;
    *(v5 + 32) = v13;
    HIBYTE(v13) = 0;
    v12[0] = 0;
    *(v5 + 264) = 1;
    *(v5 + 272) = 0;
    *(v5 + 296) = 0;
    if (!v7)
    {
LABEL_7:
      *(v5 + 304) = 0;
      *(v5 + 328) = 0;
      if (!v8)
      {
        goto LABEL_8;
      }

LABEL_15:
      *(v5 + 19) = v16;
      *(v5 + 40) = v17;
      *(v5 + 328) = 1;
      *(v5 + 42) = 0;
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    *(v5 + 272) = 0;
    *(v5 + 296) = 0;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  *(v5 + 17) = __p;
  *(v5 + 36) = v15;
  HIBYTE(v15) = 0;
  *&__p = 0;
  *(v5 + 296) = 1;
  *(v5 + 304) = 0;
  *(v5 + 328) = 0;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_8:
  *(v5 + 42) = 0;
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

LABEL_18:
  if (v6 && SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  result = (*(*v5 + 104))(v5);
  if (result)
  {
    *a2 = v5;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init firmware object\n", "DaleFirmware_Boot", "create");
    v11 = *(*v5 + 56);

    return v11(v5);
  }

  return result;
}

void sub_1E52DE2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DaleFirmwareParams::~DaleFirmwareParams(va);
  operator delete(v6);
  *v5 = 0;
  _Unwind_Resume(a1);
}

void sub_1E52DE2DC(_Unwind_Exception *a1)
{
  (*(*v2 + 56))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleFirmware_Boot::init(DaleFirmware_Boot *this)
{
  if (*(this + 264) == 1)
  {
    if (*(this + 263) < 0)
    {
      std::string::__init_copy_ctor_external(&v54, *(this + 30), *(this + 31));
    }

    else
    {
      v54 = *(this + 10);
    }
  }

  else
  {
    capabilities::radio::personalizedFirmwarePath(&v54, this);
  }

  DaleFirmware::setPath_Firmware(this, &v54);
  if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(this + 296) == 1)
    {
      goto LABEL_8;
    }

LABEL_11:
    v53.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
    *&v53.__r_.__value_.__r.__words[1] = xmmword_1E5392800;
    strcpy(v53.__r_.__value_.__l.__data_, "/var/wireless/baseband_data/bbfs/");
    goto LABEL_13;
  }

  operator delete(v54.__r_.__value_.__l.__data_);
  if (*(this + 296) != 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(this + 295) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(this + 34), *(this + 35));
  }

  else
  {
    v53 = *(this + 272);
  }

LABEL_13:
  DaleFirmware::setPath_Dynamic(this, &v53);
  if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(this + 328) == 1)
    {
      goto LABEL_15;
    }

LABEL_18:
    v52.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
    *&v52.__r_.__value_.__r.__words[1] = xmmword_1E5390FE0;
    strcpy(v52.__r_.__value_.__l.__data_, "/var/wireless/baseband_data/");
    goto LABEL_20;
  }

  operator delete(v53.__r_.__value_.__l.__data_);
  if (*(this + 328) != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(this + 327) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(this + 38), *(this + 39));
  }

  else
  {
    v52 = *(this + 304);
  }

LABEL_20:
  DaleFirmware::setPath_Fdr(this, &v52);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
    v3 = this + 88;
    LogInstance = ACFULogging::getLogInstance(v7);
    v5 = *(this + 111);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_22:
      if (v5)
      {
        v6 = v3;
      }

      else
      {
        v6 = "empty";
      }

      goto LABEL_29;
    }
  }

  else
  {
    v3 = this + 88;
    LogInstance = ACFULogging::getLogInstance(v2);
    v5 = *(this + 111);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*(this + 12))
  {
    v6 = *(this + 11);
  }

  else
  {
    v6 = "empty";
  }

LABEL_29:
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: verifying firmware path... (%s)\n", "DaleFirmware_Boot", "verifyDefaultPath_Firmware", v6);
  is_directory = ctu::fs::file_exists();
  if (!is_directory)
  {
    v37 = "%s::%s: firmware directory does not exist (%s)\n";
LABEL_94:
    v38 = ACFULogging::getLogInstance(is_directory);
    if (*(this + 111) >= 0)
    {
      v39 = v3;
    }

    else
    {
      v39 = *(this + 11);
    }

    v40 = ACFULogging::handleMessage(v38, 2, v37, "DaleFirmware_Boot", "verifyDefaultPath_Firmware", v39);
    v41 = ACFULogging::getLogInstance(v40);
    ACFULogging::handleMessage(v41, 2, "%s::%s: failed to verify firmware path\n");
    return 0;
  }

  is_directory = ctu::fs::is_directory();
  if ((is_directory & 1) == 0)
  {
    v37 = "%s::%s: firmware path is not a directory (%s)\n";
    goto LABEL_94;
  }

  v9 = ACFULogging::getLogInstance(is_directory);
  if (*(this + 135) < 0)
  {
    if (*(this + 15))
    {
      v10 = *(this + 14);
    }

    else
    {
      v10 = "empty";
    }
  }

  else if (*(this + 135))
  {
    v10 = this + 112;
  }

  else
  {
    v10 = "empty";
  }

  v11 = ACFULogging::handleMessage(v9, 0, "%s::%s: verifying dynamic image path... (%s)\n", "DaleFirmware_Boot", "verifyDefaultPath_Dynamic", v10);
  if (*(this + 135) >= 0)
  {
    v12 = *(this + 135);
  }

  else
  {
    v12 = *(this + 15);
  }

  if (!v12)
  {
    v42 = ACFULogging::getLogInstance(v11);
    v16 = ACFULogging::handleMessage(v42, 2, "%s::%s: error: empty dynamic image path\n");
    goto LABEL_103;
  }

  v13 = ctu::fs::file_exists();
  if (v13)
  {
    updated = ctu::fs::is_directory();
    if ((updated & 1) == 0)
    {
      v15 = ACFULogging::getLogInstance(updated);
      v16 = ACFULogging::handleMessage(v15, 2, "%s::%s: dynamic image path is not a directory (%s)\n");
LABEL_103:
      v47 = ACFULogging::getLogInstance(v16);
      ACFULogging::handleMessage(v47, 2, "%s::%s: failed to verify dynamic image path\n");
      return 0;
    }
  }

  else
  {
    v17 = ACFULogging::getLogInstance(v13);
    if (*(this + 135) >= 0)
    {
      v18 = this + 112;
    }

    else
    {
      v18 = *(this + 14);
    }

    ACFULogging::handleMessage(v17, 3, "%s::%s: dynamic directory does not exist, creating (%s)...\n", "DaleFirmware_Boot", "verifyDefaultPath_Dynamic", v18);
    directory = ctu::fs::create_directory();
    if ((directory & 1) == 0)
    {
      v44 = ACFULogging::getLogInstance(directory);
      v16 = ACFULogging::handleMessage(v44, 2, "%s::%s: failed to create a directory at dynamic image path (%s)\n");
      goto LABEL_103;
    }

    v56 = 0;
    UidGid = support::fs::getUidGid(1, &v56 + 1, &v56);
    if ((UidGid & 1) == 0)
    {
      v45 = ACFULogging::getLogInstance(UidGid);
      v16 = ACFULogging::handleMessage(v45, 2, "%s::%s: failed to get uid/gid for wireless\n");
      goto LABEL_103;
    }

    if (*(this + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, *(this + 14), *(this + 15));
    }

    else
    {
      v55 = *(this + 112);
    }

    updated = support::fs::updateOwner(&v55, HIDWORD(v56), v56);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = updated;
      operator delete(v55.__r_.__value_.__l.__data_);
      updated = v21;
    }

    if ((updated & 1) == 0)
    {
      v46 = ACFULogging::getLogInstance(updated);
      v16 = ACFULogging::handleMessage(v46, 2, "%s::%s: failed to chown for wireless (%s)\n");
      goto LABEL_103;
    }
  }

  v22 = ACFULogging::getLogInstance(updated);
  if (*(this + 159) < 0)
  {
    if (*(this + 18))
    {
      v23 = *(this + 17);
    }

    else
    {
      v23 = "empty";
    }
  }

  else if (*(this + 159))
  {
    v23 = this + 136;
  }

  else
  {
    v23 = "empty";
  }

  v24 = ACFULogging::handleMessage(v22, 0, "%s::%s: verifying fdr image path... (%s)\n", "DaleFirmware_Boot", "verifyDefaultPath_Fdr", v23);
  if (*(this + 159) >= 0)
  {
    v25 = *(this + 159);
  }

  else
  {
    v25 = *(this + 18);
  }

  if (!v25)
  {
    v43 = ACFULogging::getLogInstance(v24);
    v29 = ACFULogging::handleMessage(v43, 2, "%s::%s: error: empty fdr image path\n");
    goto LABEL_107;
  }

  v26 = ctu::fs::file_exists();
  if (v26)
  {
    v27 = ctu::fs::is_directory();
    if ((v27 & 1) == 0)
    {
      v28 = ACFULogging::getLogInstance(v27);
      v29 = ACFULogging::handleMessage(v28, 2, "%s::%s: fdr image path is not a directory (%s)\n");
LABEL_107:
      v51 = ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage(v51, 2, "%s::%s: failed to verify fdr image path\n");
      return 0;
    }
  }

  else
  {
    v30 = ACFULogging::getLogInstance(v26);
    if (*(this + 159) >= 0)
    {
      v31 = this + 136;
    }

    else
    {
      v31 = *(this + 17);
    }

    ACFULogging::handleMessage(v30, 3, "%s::%s: fdr directory does not exist, creating (%s)...\n", "DaleFirmware_Boot", "verifyDefaultPath_Fdr", v31);
    v32 = ctu::fs::create_directory();
    if ((v32 & 1) == 0)
    {
      v48 = ACFULogging::getLogInstance(v32);
      v29 = ACFULogging::handleMessage(v48, 2, "%s::%s: failed to create a directory at fdr image path (%s)\n");
      goto LABEL_107;
    }

    v56 = 0;
    v33 = support::fs::getUidGid(1, &v56 + 1, &v56);
    if ((v33 & 1) == 0)
    {
      v49 = ACFULogging::getLogInstance(v33);
      v29 = ACFULogging::handleMessage(v49, 2, "%s::%s: failed to get uid/gid for wireless\n");
      goto LABEL_107;
    }

    if (*(this + 159) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, *(this + 17), *(this + 18));
    }

    else
    {
      v55 = *(this + 136);
    }

    v34 = support::fs::updateOwner(&v55, HIDWORD(v56), v56);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      v35 = v34;
      operator delete(v55.__r_.__value_.__l.__data_);
      v34 = v35;
    }

    if ((v34 & 1) == 0)
    {
      v50 = ACFULogging::getLogInstance(v34);
      v29 = ACFULogging::handleMessage(v50, 2, "%s::%s: failed to chown for wireless (%s)\n");
      goto LABEL_107;
    }
  }

  result = DaleFirmware::createImage_Loader(this);
  if (result)
  {
    result = (*(*this + 96))(this);
    if (result)
    {
      result = DaleFirmware::createImage_BBTicket(this);
      if (result)
      {
        result = DaleFirmware::createImage_BBCfgHashTable(this);
        if (result)
        {
          result = DaleFirmware::createImage_BBCfgSegment(this);
          if (result)
          {
            result = DaleFirmware::createImage_ModemBundle(this);
            if (result)
            {
              result = DaleFirmware::createImage_Calibration(this);
              if (result)
              {
                result = DaleFirmware::createImage_DynamicNVRAM(this);
                if (result)
                {
                  result = DaleFirmware::createImage_ProvisioningManifest(this);
                  if (result)
                  {
                    return DaleFirmware::createImage_SystemBundle(this);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1E52DEAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  _Unwind_Resume(exception_object);
}

BOOL DaleFirmware_Boot::createImage_DDR(DaleFirmware_Boot *this)
{
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(this + 14), *(this + 15));
  }

  else
  {
    v7 = *(this + 112);
  }

  v2 = DaleImage_DDR::create(&v7, &v8);
  v3 = v8;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    v4 = *(this + 42);
    *(this + 42) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    return v3 != 0;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create ddr image\n", "DaleFirmware_Boot", "createImage_DDR");
    return 0;
  }
}

void sub_1E52DEC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DaleFirmware_Boot::~DaleFirmware_Boot(DaleFirmware_Boot *this)
{
  *this = &unk_1F5F02980;
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 328) == 1 && *(this + 327) < 0)
  {
    operator delete(*(this + 38));
    if (*(this + 296) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(this + 296) != 1)
  {
    goto LABEL_9;
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

LABEL_9:
  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(*(this + 30));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  DaleFirmware::~DaleFirmware(v3);
}

{
  *this = &unk_1F5F02980;
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 328) == 1 && *(this + 327) < 0)
  {
    operator delete(*(this + 38));
    if (*(this + 296) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(this + 296) != 1)
  {
    goto LABEL_9;
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

LABEL_9:
  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(*(this + 30));
    DaleFirmware::~DaleFirmware(this);
  }

  else
  {
    DaleFirmware::~DaleFirmware(this);
  }

  operator delete(v3);
}

void DaleFirmwareParams::~DaleFirmwareParams(void **this)
{
  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    v2 = this;
    operator delete(this[8]);
    this = v2;
    if (*(v2 + 56) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 56) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 55) < 0)
  {
    v1 = this;
    operator delete(this[4]);
    this = v1;
  }

LABEL_7:
  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void DaleFirmware::~DaleFirmware(DaleFirmware *this)
{
  *this = &unk_1F5F049E8;
  v2 = *(this + 29);
  *(this + 29) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 26);
  *(this + 26) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 25);
  *(this + 25) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 24);
  *(this + 24) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 23);
  *(this + 23) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 22);
  *(this + 22) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 21);
  *(this + 21) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 20);
  *(this + 20) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
    if ((*(this + 135) & 0x80000000) == 0)
    {
LABEL_23:
      if ((*(this + 111) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }
  }

  else if ((*(this + 135) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(*(this + 14));
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_24:
    v12 = this;

    goto __ZN12ACFUFirmwareD2Ev;
  }

LABEL_29:
  operator delete(*(this + 11));
  v12 = this;

{
  DaleFirmware::~DaleFirmware(this);

  operator delete(v1);
}

uint64_t BBUEURCommunication::setTransportCreationTimeout(BBUEURCommunication *this, double a2)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
LABEL_7:
      *(this + 2) = a2;
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_7;
  }

  _BBULog(2, 0, "BBUEURCommunication", "", "Transport timeout set to %f from %f\n", a2, *(this + 2));
  v4 = gBBULogMaskGet(void)::once;
  *(this + 2) = a2;
  if (v4 != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

LABEL_8:
  if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEURCommunication", "", "Boot-up transport timeout set to %f from %f\n", a2, *(this + 3));
  }

  *(this + 3) = a2;
  return 0;
}

uint64_t BBUEURCommunication::freeTransport(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    close(v3);
    *(a1 + 56) = -1;
  }

  return TelephonyUtilTransportFree();
}

uint64_t BBUEUR4Programmer::EUR4Item::EUR4Item(uint64_t a1, int a2, void *lpsrc)
{
  *(a1 + 8) = a2;
  *a1 = &unk_1F5F02A80;
  *(a1 + 16) = 0;
  if (a2 > 16387)
  {
    if ((a2 - 16388) >= 3)
    {
      goto LABEL_18;
    }

    if (!lpsrc)
    {
      goto LABEL_16;
    }
  }

  else
  {
    switch(a2)
    {
      case 16385:
        if (!lpsrc)
        {
          goto LABEL_16;
        }

        break;
      case 16386:
        if (!lpsrc)
        {
          goto LABEL_16;
        }

        break;
      case 16387:
        if (lpsrc)
        {
          break;
        }

LABEL_16:
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR4Programmer.cpp", 0x3Eu, "Assertion failure(fImage && BBU Programmer item creation failed.)");
        goto LABEL_17;
      default:
LABEL_18:
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR4Programmer.cpp", 0x3Bu, "Assertion failure(false && Unrecognized BBU Programmer item type.)");
LABEL_17:
    }
  }

  *(a1 + 16) = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  return a1;
}

uint64_t BBUEUR4Programmer::gatherPersonalizationParameters(unsigned int (***this)(BBUFeedback **, int *), uint64_t a2, char a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  if (a3)
  {
    v34 = -1431655766;
    BBUFeedback::handleBeginPhase(this[1], "Gathering Personalization parameters...");
    if ((*this)[23](this, &v34))
    {
      Nonce_nl = 48;
    }

    else if (v34 == 2)
    {
      Nonce_nl = 28;
    }

    else if (v34 == 256)
    {
      v11 = operator new(0x40uLL);
      Nonce_nl = BBUEUR4Programmer::handleMaverickGetNonce_nl(this, a2, v11);
      if (!Nonce_nl)
      {
        v12 = operator new(0x10uLL);
        *v12 = &unk_1F5F04B68;
        v12[1] = 0;
        v13 = *MEMORY[0x1E695E480];
        v12[1] = CFDataCreate(*MEMORY[0x1E695E480], v11 + 4, 20);
        v14 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(*(v11 + 7));
        v15 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber((v11 + 24), 0x20);
        v16 = operator new(0x10uLL);
        *v16 = &unk_1F5F04C88;
        v16[1] = 0;
        v16[1] = CFDataCreate(v13, v11 + 32, 32);
        *a4 = *v11;
        operator delete(v11);
        v17 = a5;
        v18 = *(a5 + 1);
        if (v18)
        {
          (*(*v18 + 8))(*(a5 + 1));
          v17 = a5;
        }

        *(v17 + 1) = v12;
        v19 = *(v17 + 2);
        if (v19)
        {
          (*(*v19 + 8))(*(v17 + 2));
          v17 = a5;
        }

        *(v17 + 2) = v14;
        (*(*v17 + 16))(v17, v15);
        (*(*v17 + 24))(v17, v16);
        if (v15 && v14)
        {
          v20 = this[1];
          (*(*v15 + 24))(__p, v15);
          v22 = v33 >= 0 ? __p : __p[0];
          v23 = BBUpdaterCommon::redactedString(v22, v21);
          v24 = (*(*v14 + 24))(v14);
          BBUFeedback::handleComment(v20, "   SNUM: 0x%s / CHIPID: 0x%08x", v23, v24);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v25 = this[1];
        (*(*v12 + 24))(__p, v12);
        if (v33 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        BBUFeedback::handleComment(v25, "   NONCE: %s", v26);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        v27 = this[1];
        (*(*v16 + 24))(__p, v16);
        if (v33 >= 0)
        {
          v28 = __p;
        }

        else
        {
          v28 = __p[0];
        }

        BBUFeedback::handleComment(v27, "   PUBLIC_KEY_HASH: %s", v28);
        v29 = a5;
        if (v33 < 0)
        {
          operator delete(__p[0]);
          v29 = a5;
        }

        v30 = this[1];
        v31 = (*(**(v29 + 3) + 24))(*(v29 + 3));
        BBUFeedback::handleComment(v30, "   CertID: %u", v31);
        Nonce_nl = 0;
      }
    }

    else
    {
      Nonce_nl = 12;
    }

    (*(*this[1] + 2))(this[1], Nonce_nl);
  }

  else
  {
    BBUFeedback::handleComment(this[1], "Not in restore mode - skipping gathering Personalization parameters...");
    return 0;
  }

  return Nonce_nl;
}

void sub_1E52DF920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR4Programmer::handleMaverickGetNonce_nl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = operator new[](0x400uLL);
  BBUFeedback::handleComment(*(a1 + 8), "Starting Maverick Protocol (%s)", "handleMaverickGetNonce_nl");
  if (ETLSAHCommandReceive() && ETLSAHCommandParseMaverickEraseQuery())
  {
    BBUFeedback::handleComment(*(a1 + 8), "Setting HSIC cookie? %d", *(a1 + 64));
    if (v3)
    {
      *(a1 + 4300) = 1;
    }

    if (ETLSAHCommandCreateMaverickEraseResponse())
    {
      BBUFeedback::handleComment(*(a1 + 8), "Sending Erase Response: Length %u Type %u  Erase EFS %u", v5[1], *v5, v3);
      ETLSAHCommandSend();
    }
  }

  v6 = 3;
  if (ETLSAHCommandReceive())
  {
    BBUFeedback::handleComment(*(a1 + 8), "Checking Manifest Request: Length %u Type %u", v5[1], *v5);
    if (ETLSAHCommandParseMaverickRootManifestQuery())
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  operator delete[](v5);
  return v6;
}

uint64_t BBUEUR4Programmer::sendImage_nl(BBUFeedback **a1, void *lpsrc, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = -1431655766;
  if (!lpsrc)
  {
    v15 = 0;
    (*(*MEMORY[0x10] + 16))(MEMORY[0x10]);
    if (a5)
    {
      goto LABEL_3;
    }

    while (1)
    {
LABEL_9:
      result = (*(*a1 + 23))(a1, &v31);
      if (result)
      {
        return result;
      }

      if (v31 == 256)
      {
        break;
      }

      if (v31 == 2)
      {
        return 28;
      }

      v18 = v15[2] - 16385;
      if (v18 <= 5)
      {
        v19 = a1[1];
        if (*(v19 + 44) == 1)
        {
          *(v19 + 10) = dword_1E53928A8[v18];
        }
      }

      result = (*(*a1 + 22))(a1, *(v15 + 2), v18 < 6);
      if (v18 <= 5)
      {
        v20 = result;
        BBUFeedback::endProgressBarItem(a1[1]);
        result = v20;
      }

      v21 = 1;
      if (result)
      {
        return result;
      }

LABEL_36:
      result = BBUEUR2Programmer::disconnectForImage_nl(a1);
      if (result)
      {
        v24 = 1;
      }

      else
      {
        v24 = v21;
      }

      if (v24 == 1)
      {
        return result;
      }
    }

    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32[2] = v22;
    v32[3] = v22;
    v32[0] = v22;
    v32[1] = v22;
    result = BBUEUR4Programmer::handleMaverickGetNonce_nl(a1, a7, v32);
    if (result)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      v25 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v25;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
      {
LABEL_22:
        if (gBBULogVerbosity < 0)
        {
          goto LABEL_35;
        }

        v23 = result;
        _BBULog(5, 0, "BBUProgrammer", "", "failed getting nonce\n");
LABEL_34:
        result = v23;
      }

LABEL_35:
      v21 = 0;
      if (result)
      {
        return result;
      }

      goto LABEL_36;
    }

    result = (*(*a1 + 24))(a1, a3, LODWORD(v32[0]), a6, a7, 0, a8);
    if (result)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v26 = result;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = v26;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_35;
        }
      }

      if (gBBULogVerbosity < 0)
      {
        goto LABEL_35;
      }

      v23 = result;
      _BBULog(1, 0, "BBUProgrammer", "", "failed handling sahara send hashes command\n");
      goto LABEL_34;
    }

    result = (*(*a1 + 25))(a1);
    if (!result)
    {
      goto LABEL_35;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v27 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v27;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_35;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      goto LABEL_35;
    }

    v23 = result;
    _BBULog(1, 0, "BBUProgrammer", "", "failed handling maverick end\n");
    goto LABEL_34;
  }

  (*(**(v15 + 2) + 16))(*(v15 + 2));
  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  result = (*(*a1 + 24))(a1, a3, a4, a6, a7, 1, a8);
  if (result)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    else
    {
      v29 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v29;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v17 = "failed handling sahara send hashes command\n";
LABEL_52:
      v28 = result;
      _BBULog(5, 0, "BBUProgrammer", "", v17);
      return v28;
    }
  }

  else
  {
    result = (*(*a1 + 25))(a1);
    if (result)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          return result;
        }
      }

      else
      {
        v30 = result;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = v30;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          return result;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v17 = "failed handling maverick end\n";
        goto LABEL_52;
      }
    }

    else
    {

      return BBUEUR2Programmer::disconnectForImage_nl(a1);
    }
  }

  return result;
}

uint64_t support::parsers::getCoredumpCrashReport(const void **a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = xpc_null_create();
  v184 = a3;
  v8 = xpc_null_create();
  v207 = 0uLL;
  v208 = 0;
  memset(v206, 170, 24);
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = v10 + 1;
  if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    memset(&v196, 0, 24);
    v13 = &v196;
    HIBYTE(v196.st_gid) = v10 + 1;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    v196.st_ino = v10 + 1;
    *&v196.st_uid = v12 | 0x8000000000000000;
    *&v196.st_dev = v13;
  }

  if (v9 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  memmove(v13, v14, v10);
LABEL_15:
  *&v13[v10] = 47;
  st_gid_high = SHIBYTE(v196.st_gid);
  if ((SHIBYTE(v196.st_gid) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v196.st_gid) - 12) < 0xB)
    {
      v16 = SHIBYTE(v196.st_gid) + 11;
      v17 = &v196;
      v18 = 22;
LABEL_21:
      v19 = 2 * v18;
      if (v16 > 2 * v18)
      {
        v19 = v16;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      if (v19 >= 0x17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 23;
      }

      v22 = v18 == 22;
      goto LABEL_30;
    }

    v27 = &v196;
LABEL_37:
    v28 = v27 + st_gid_high;
    *v28 = *"report.json";
    *(v28 + 7) = 1852797802;
    v29 = st_gid_high + 11;
    if (SHIBYTE(v196.st_gid) < 0)
    {
      v196.st_ino = st_gid_high + 11;
    }

    else
    {
      HIBYTE(v196.st_gid) = v29 & 0x7F;
    }

    v26 = v27 + v29;
    goto LABEL_41;
  }

  st_gid_high = v196.st_ino;
  v18 = (*&v196.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - v196.st_ino >= 0xB)
  {
    v27 = *&v196.st_dev;
    goto LABEL_37;
  }

  v16 = v196.st_ino + 11;
  if (0x7FFFFFFFFFFFFFF7 - (*&v196.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v196.st_ino + 11 - v18)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = *&v196.st_dev;
  if (v18 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v22 = 0;
  v21 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v23 = operator new(v21);
  v24 = v23;
  if (st_gid_high)
  {
    memmove(v23, v17, st_gid_high);
  }

  v25 = &v24[st_gid_high];
  *v25 = *"report.json";
  *(v25 + 7) = 1852797802;
  if (!v22)
  {
    operator delete(v17);
  }

  v196.st_ino = v16;
  *&v196.st_uid = v21 | 0x8000000000000000;
  *&v196.st_dev = v24;
  v26 = &v24[v16];
LABEL_41:
  *v26 = 0;
  v206[0] = *&v196.st_dev;
  *&v206[1] = *&v196.st_uid;
  v30 = *&v196.st_dev;
  v31 = SHIBYTE(v196.st_gid);
  v32.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v32.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v196.st_blksize = v32;
  *v196.st_qspare = v32;
  v196.st_birthtimespec = v32;
  *&v196.st_size = v32;
  v196.st_mtimespec = v32;
  v196.st_ctimespec = v32;
  *&v196.st_uid = v32;
  v196.st_atimespec = v32;
  *&v196.st_dev = v32;
  if (v31 >= 0)
  {
    v33 = v206;
  }

  else
  {
    v33 = v30;
  }

  v34 = stat(v33, &v196);
  if (v34)
  {
    v179 = *qword_1ED948E98;
    if (os_log_type_enabled(*qword_1ED948E98, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v196.st_dev) = 0;
      _os_log_error_impl(&dword_1E5234000, v179, OS_LOG_TYPE_ERROR, "error: file not found", &v196, 2u);
      v178 = 0;
      xdict = v7;
      v49 = v8;
      if (SBYTE7(v206[1]) < 0)
      {
        goto LABEL_400;
      }

      goto LABEL_401;
    }

LABEL_399:
    v178 = 0;
    xdict = v7;
    v49 = v8;
    if ((SBYTE7(v206[1]) & 0x80000000) == 0)
    {
      goto LABEL_401;
    }

    goto LABEL_400;
  }

  memset(&v196, 0, 24);
  File = support::fs::loadFile(v206, &v196);
  v36 = File;
  if (File)
  {
    v37 = *&v196.st_dev;
    v38 = v196.st_ino - *&v196.st_dev;
    if (v196.st_ino - *&v196.st_dev > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v38 >= 0x17)
    {
      if ((v38 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v38 | 7) + 1;
      }

      v39 = operator new(v47);
      *(&__dst[0] + 1) = v38;
      *&__dst[1] = v47 | 0x8000000000000000;
      *&__dst[0] = v39;
    }

    else
    {
      BYTE7(__dst[1]) = LOBYTE(v196.st_ino) - LOBYTE(v196.st_dev);
      v39 = __dst;
      if (v196.st_ino == *&v196.st_dev)
      {
        *(__dst + v38) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_50:
          *a2 = __dst[0];
          *(a2 + 16) = *&__dst[1];
          goto LABEL_51;
        }

LABEL_62:
        operator delete(*a2);
        goto LABEL_50;
      }
    }

    memmove(v39, v37, v38);
    *(v39 + v38) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_62;
  }

  v181 = *qword_1ED948E98;
  if (os_log_type_enabled(*qword_1ED948E98, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_error_impl(&dword_1E5234000, v181, OS_LOG_TYPE_ERROR, "error: failed to load file", __dst, 2u);
  }

LABEL_51:
  if (*&v196.st_dev)
  {
    v196.st_ino = *&v196.st_dev;
    operator delete(*&v196.st_dev);
  }

  if (!v36)
  {
    goto LABEL_399;
  }

  util::createDictFromJSONFile(v206, &v196);
  xdict = *&v196.st_dev;
  *&v196.st_dev = xpc_null_create();
  xpc_release(v7);
  xpc_release(*&v196.st_dev);
  v40 = MEMORY[0x1E6927F20]();
  if (v40 == MEMORY[0x1E69E9E80])
  {
    v41 = xpc_null_create();
    v42 = xpc_null_create();
    v205 = 0xAAAAAAAAAAAAAAAALL;
    v43.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v43.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v203 = v43;
    v204 = v43;
    v201 = v43;
    v202 = v43;
    v199 = v43;
    v200 = v43;
    v197 = v43;
    v198 = v43;
    *&v196.st_blksize = v43;
    *v196.st_qspare = v43;
    v196.st_birthtimespec = v43;
    *&v196.st_size = v43;
    v196.st_mtimespec = v43;
    v196.st_ctimespec = v43;
    *&v196.st_uid = v43;
    v196.st_atimespec = v43;
    *&v196.st_dev = v43;
    object = v41;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v196);
    memset(__p, 0, 24);
    memset(v194, 0, 24);
    value = xpc_dictionary_get_value(xdict, "crash_details");
    v45 = value;
    v46 = MEMORY[0x1E69E9E50];
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v45 = xpc_null_create();
      if (!v45)
      {
        xarray = xpc_null_create();
        v45 = 0;
        goto LABEL_69;
      }
    }

    if (MEMORY[0x1E6927F20](v45) == v46)
    {
      xpc_retain(v45);
      xarray = v45;
    }

    else
    {
      xarray = xpc_null_create();
    }

LABEL_69:
    xpc_release(v45);
    v48 = xpc_null_create();
    xpc_release(v42);
    xpc_release(v48);
    if (MEMORY[0x1E6927F20](xarray) != v46 || MEMORY[0x1E6927F20](xarray) != v46 || !xpc_array_get_count(xarray))
    {
      v49 = v8;
      goto LABEL_72;
    }

    xpc::array::object_proxy::operator xpc::dict(__dst, xarray, 0);
    v49 = *&__dst[0];
    v55 = xpc_null_create();
    *&__dst[0] = v55;
    xpc_release(v8);
    xpc_release(v55);
    v56 = xarray;
    if (xarray)
    {
      xpc_retain(xarray);
    }

    else
    {
      v56 = xpc_null_create();
      if (!v56)
      {
        v56 = xpc_null_create();
        v155 = 0;
LABEL_326:
        xpc_release(v155);
        v156 = xarray;
        if (xarray)
        {
          xpc_retain(xarray);
        }

        else
        {
          v156 = xpc_null_create();
        }

        if (MEMORY[0x1E6927F20](xarray) == v46)
        {
          count = xpc_array_get_count(xarray);
          if (v156)
          {
            goto LABEL_331;
          }
        }

        else
        {
          count = 0;
          if (v156)
          {
LABEL_331:
            xpc_retain(v156);
            v158 = v156;
            goto LABEL_334;
          }
        }

        v158 = xpc_null_create();
LABEL_334:
        xpc_release(v156);
        if (count || v56 != v158)
        {
          v159 = 0;
          if (v56 == v158)
          {
            while (1)
            {
              *&__dst[0] = 0xAAAAAAAAAAAAAAAALL;
              xpc::array::object_proxy::operator xpc::dict(__dst, v56, v159);
              v160 = *&__dst[0];
              v161 = xpc_dictionary_get_value(*&__dst[0], "crash_in_crash");
              v162 = v161;
              if (v161)
              {
                xpc_retain(v161);
              }

              else
              {
                v162 = xpc_null_create();
              }

              v163 = xpc_string_create("0");
              if (!v163)
              {
                v163 = xpc_null_create();
              }

              v164 = xpc_equal(v162, v163);
              xpc_release(v163);
              xpc_release(v162);
              if (v164)
              {
                break;
              }

              xpc_release(v160);
              if (count == ++v159)
              {
                goto LABEL_396;
              }
            }
          }

          else
          {
            while (1)
            {
              *&__dst[0] = 0xAAAAAAAAAAAAAAAALL;
              xpc::array::object_proxy::operator xpc::dict(__dst, v56, v159);
              v160 = *&__dst[0];
              v165 = xpc_dictionary_get_value(*&__dst[0], "crash_in_crash");
              v166 = v165;
              if (v165)
              {
                xpc_retain(v165);
              }

              else
              {
                v166 = xpc_null_create();
              }

              v167 = xpc_string_create("0");
              if (!v167)
              {
                v167 = xpc_null_create();
              }

              v168 = xpc_equal(v166, v167);
              xpc_release(v167);
              xpc_release(v166);
              if (v168)
              {
                break;
              }

              xpc_release(v160);
              ++v159;
            }
          }

          if (v160)
          {
            xpc_retain(v160);
            v169 = v160;
          }

          else
          {
            v169 = xpc_null_create();
          }

          xpc_release(v49);
          xpc_release(v160);
          v49 = v169;
        }

LABEL_396:
        xpc_release(v158);
        xpc_release(v56);
LABEL_72:
        v50 = MEMORY[0x1E6927F20](v49);
        v51 = v50;
        if (v50 != MEMORY[0x1E69E9E80])
        {
          v183 = *qword_1ED948E98;
          if (os_log_type_enabled(*qword_1ED948E98, OS_LOG_TYPE_INFO))
          {
            LOWORD(__dst[0]) = 0;
            _os_log_impl(&dword_1E5234000, v183, OS_LOG_TYPE_INFO, "unexpected coredump format, skip parsing coredump report any further", __dst, 2u);
          }

          v54 = object;
          if (SHIBYTE(v194[2]) < 0)
          {
            goto LABEL_224;
          }

          goto LABEL_217;
        }

        v52 = xpc_dictionary_get_value(xdict, "title");
        v53 = v52;
        if (v52)
        {
          xpc_retain(v52);
        }

        else
        {
          v53 = xpc_null_create();
          if (!v53)
          {
            v54 = xpc_null_create();
            v53 = 0;
            goto LABEL_83;
          }
        }

        if (MEMORY[0x1E6927F20](v53) == MEMORY[0x1E69E9E80])
        {
          xpc_retain(v53);
          v54 = v53;
        }

        else
        {
          v54 = xpc_null_create();
        }

LABEL_83:
        xpc_release(v53);
        v57 = xpc_null_create();
        xpc_release(object);
        xpc_release(v57);
        v58 = MEMORY[0x1E6927F20](v54);
        if (v58 != MEMORY[0x1E69E9E80])
        {
          HIBYTE(v193[2]) = 7;
          strcpy(v193, "unknown");
          if ((SHIBYTE(v208) & 0x80000000) == 0)
          {
            goto LABEL_91;
          }

          goto LABEL_85;
        }

        v59 = xpc_dictionary_get_value(v54, "name");
        v192 = v59;
        if (v59)
        {
          xpc_retain(v59);
        }

        else
        {
          v192 = xpc_null_create();
        }

        memset(__dst, 0, 24);
        xpc::dyn_cast_or_default();
        if (SBYTE7(__dst[1]) < 0)
        {
          operator delete(*&__dst[0]);
          if ((SHIBYTE(v208) & 0x80000000) == 0)
          {
LABEL_91:
            v207 = *v193;
            v208 = v193[2];
            HIBYTE(v193[2]) = 0;
            LOBYTE(v193[0]) = 0;
            if (v58 == MEMORY[0x1E69E9E80])
            {
              xpc_release(v192);
            }

            v60 = xpc_dictionary_get_value(v49, "log_data");
            v193[0] = v60;
            if (v60)
            {
              xpc_retain(v60);
            }

            else
            {
              v193[0] = xpc_null_create();
            }

            xpc::dyn_cast_or_default();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = __dst[0];
            __p[2] = *&__dst[1];
            BYTE7(__dst[1]) = 0;
            LOBYTE(__dst[0]) = 0;
            xpc_release(v193[0]);
            v61 = HIBYTE(__p[2]);
            if (SHIBYTE(__p[2]) < 0)
            {
              v61 = __p[1];
            }

            v62 = MEMORY[0x1E69E5158];
            if (!v61)
            {
LABEL_132:
              v76 = xpc_dictionary_get_value(v49, "ucs_crash_id");
              v193[0] = v76;
              if (v76)
              {
                xpc_retain(v76);
              }

              else
              {
                v193[0] = xpc_null_create();
              }

              xpc::dyn_cast_or_default();
              if (SHIBYTE(v194[2]) < 0)
              {
                operator delete(v194[0]);
              }

              *v194 = __dst[0];
              v194[2] = *&__dst[1];
              BYTE7(__dst[1]) = 0;
              LOBYTE(__dst[0]) = 0;
              xpc_release(v193[0]);
              v77 = HIBYTE(v194[2]);
              if (SHIBYTE(v194[2]) < 0)
              {
                v77 = v194[1];
              }

              if (!v77)
              {
                goto LABEL_192;
              }

              if ((v196.st_gen & 0x10) != 0)
              {
                tv_nsec = *&v196.st_blksize;
                if (*&v196.st_blksize < v196.st_ctimespec.tv_nsec)
                {
                  *&v196.st_blksize = v196.st_ctimespec.tv_nsec;
                  tv_nsec = v196.st_ctimespec.tv_nsec;
                }

                tv_sec = v196.st_ctimespec.tv_sec;
                v78 = tv_nsec - v196.st_ctimespec.tv_sec;
                if ((tv_nsec - v196.st_ctimespec.tv_sec) > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_227;
                }
              }

              else
              {
                if ((v196.st_gen & 8) == 0)
                {
                  v78 = 0;
                  BYTE7(__dst[1]) = 0;
                  v79 = __dst;
                  goto LABEL_154;
                }

                tv_sec = v196.st_atimespec.tv_nsec;
                v78 = v196.st_mtimespec.tv_nsec - v196.st_atimespec.tv_nsec;
                if (v196.st_mtimespec.tv_nsec - v196.st_atimespec.tv_nsec > 0x7FFFFFFFFFFFFFF7uLL)
                {
LABEL_227:
                  std::string::__throw_length_error[abi:ne200100]();
                }
              }

              if (v78 >= 0x17)
              {
                if ((v78 | 7) == 0x17)
                {
                  v82 = 25;
                }

                else
                {
                  v82 = (v78 | 7) + 1;
                }

                v79 = operator new(v82);
                *(&__dst[0] + 1) = v78;
                *&__dst[1] = v82 | 0x8000000000000000;
                *&__dst[0] = v79;
              }

              else
              {
                BYTE7(__dst[1]) = v78;
                v79 = __dst;
                if (!v78)
                {
LABEL_154:
                  *(v79 + v78) = 0;
                  if (SBYTE7(__dst[1]) < 0)
                  {
                    v83 = *(&__dst[0] + 1);
                    operator delete(*&__dst[0]);
                    if (!v83)
                    {
                      goto LABEL_159;
                    }
                  }

                  else if (!BYTE7(__dst[1]))
                  {
LABEL_159:
                    v84 = SHIBYTE(v194[2]);
                    v85 = v194;
                    if (SHIBYTE(v194[2]) < 0)
                    {
                      v85 = v194[0];
                    }

                    if (SHIBYTE(v194[2]) < 0)
                    {
                      v84 = v194[1];
                    }

                    v193[0] = v85;
                    v193[1] = v84;
                    first_not_of = ctu::llvm::StringRef::find_first_not_of();
                    if (first_not_of >= v193[1])
                    {
                      v87 = v193[1];
                    }

                    else
                    {
                      v87 = first_not_of;
                    }

                    if (*v62 >= (v193[1] - v87))
                    {
                      v88 = (v193[1] - v87);
                    }

                    else
                    {
                      v88 = *v62;
                    }

                    *&__dst[0] = v193[0] + v87;
                    *(&__dst[0] + 1) = v88;
                    last_not_of = ctu::llvm::StringRef::find_last_not_of();
                    v90 = __dst[0];
                    if ((last_not_of + 1) < *(&__dst[0] + 1))
                    {
                      v91 = last_not_of + 1;
                    }

                    else
                    {
                      v91 = *(&__dst[0] + 1);
                    }

                    v92 = *(&__dst[0] + 1) - v88 + v91;
                    *(&__dst[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *&__dst[1] = 0xAAAAAAAAAAAAAAAALL;
                    if (v92 >= *(&v90 + 1))
                    {
                      v93 = *(&v90 + 1);
                    }

                    else
                    {
                      v93 = v92;
                    }

                    *&__dst[0] = 0xAAAAAAAAAAAAAAAALL;
                    if (v93 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    if (v93 >= 0x17)
                    {
                      if ((v93 | 7) == 0x17)
                      {
                        v95 = 25;
                      }

                      else
                      {
                        v95 = (v93 | 7) + 1;
                      }

                      v94 = operator new(v95);
                      *(&__dst[0] + 1) = v93;
                      *&__dst[1] = v95 | 0x8000000000000000;
                      *&__dst[0] = v94;
                    }

                    else
                    {
                      BYTE7(__dst[1]) = v93;
                      v94 = __dst;
                      if (!v93)
                      {
                        goto LABEL_184;
                      }
                    }

                    memmove(v94, v90, v93);
LABEL_184:
                    *(v94 + v93) = 0;
                    HIBYTE(v193[2]) = 2;
                    strcpy(v193, "c:");
                    v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v196.st_uid, v193, 2);
                    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
                    {
                      v97 = __dst;
                    }

                    else
                    {
                      v97 = *&__dst[0];
                    }

                    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
                    {
                      v98 = BYTE7(__dst[1]);
                    }

                    else
                    {
                      v98 = *(&__dst[0] + 1);
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, v97, v98);
                    if ((SHIBYTE(v193[2]) & 0x80000000) == 0)
                    {
                      if ((SBYTE7(__dst[1]) & 0x80000000) == 0)
                      {
                        goto LABEL_192;
                      }

LABEL_197:
                      operator delete(*&__dst[0]);
                      st_gen = v196.st_gen;
                      if ((v196.st_gen & 0x10) == 0)
                      {
                        goto LABEL_193;
                      }

                      goto LABEL_198;
                    }

                    operator delete(v193[0]);
                    if (SBYTE7(__dst[1]) < 0)
                    {
                      goto LABEL_197;
                    }

LABEL_192:
                    st_gen = v196.st_gen;
                    if ((v196.st_gen & 0x10) == 0)
                    {
LABEL_193:
                      if ((st_gen & 8) == 0)
                      {
                        v100 = 0;
                        BYTE7(__dst[1]) = 0;
                        v101 = __dst;
                        goto LABEL_210;
                      }

                      p_tv_nsec = &v196.st_atimespec.tv_nsec;
                      v103 = v196.st_mtimespec.tv_nsec;
LABEL_201:
                      v104 = p_tv_nsec->tv_sec;
                      v100 = v103 - p_tv_nsec->tv_sec;
                      if (v100 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      if (v100 >= 0x17)
                      {
                        if ((v100 | 7) == 0x17)
                        {
                          v105 = 25;
                        }

                        else
                        {
                          v105 = (v100 | 7) + 1;
                        }

                        v101 = operator new(v105);
                        *(&__dst[0] + 1) = v100;
                        *&__dst[1] = v105 | 0x8000000000000000;
                        *&__dst[0] = v101;
                      }

                      else
                      {
                        BYTE7(__dst[1]) = v103 - LOBYTE(p_tv_nsec->tv_sec);
                        v101 = __dst;
                        if (!v100)
                        {
                          goto LABEL_210;
                        }
                      }

                      memmove(v101, v104, v100);
LABEL_210:
                      *(v101 + v100) = 0;
                      if ((SBYTE7(__dst[1]) & 0x80u) == 0)
                      {
                        v106 = __dst;
                      }

                      else
                      {
                        v106 = *&__dst[0];
                      }

                      v107 = xpc_string_create(v106);
                      if (!v107)
                      {
                        v107 = xpc_null_create();
                      }

                      xpc_dictionary_set_value(v49, "log_data", v107);
                      v108 = xpc_null_create();
                      xpc_release(v107);
                      xpc_release(v108);
                      if ((SBYTE7(__dst[1]) & 0x80000000) == 0)
                      {
                        if ((SHIBYTE(v194[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_217;
                        }

LABEL_224:
                        operator delete(v194[0]);
                        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_218;
                        }

                        goto LABEL_225;
                      }

                      operator delete(*&__dst[0]);
                      if (SHIBYTE(v194[2]) < 0)
                      {
                        goto LABEL_224;
                      }

LABEL_217:
                      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_218;
                      }

LABEL_225:
                      operator delete(__p[0]);
LABEL_218:
                      *&v196.st_dev = *MEMORY[0x1E69E54D8];
                      v109 = *&v196.st_dev;
                      v110 = *(MEMORY[0x1E69E54D8] + 72);
                      v111 = *(MEMORY[0x1E69E54D8] + 64);
                      *(&v196.st_dev + *(*&v196.st_dev - 24)) = v111;
                      v112 = v110;
                      *&v196.st_uid = v110;
                      *&v196.st_rdev = MEMORY[0x1E69E5548] + 16;
                      if (SHIBYTE(v196.st_blocks) < 0)
                      {
                        operator delete(v196.st_birthtimespec.tv_nsec);
                      }

                      *&v196.st_rdev = MEMORY[0x1E69E5538] + 16;
                      std::locale::~locale(&v196.st_atimespec);
                      std::iostream::~basic_iostream();
                      MEMORY[0x1E69273B0](v196.st_qspare);
                      xpc_release(xarray);
                      xpc_release(v54);
                      if (v51 != MEMORY[0x1E69E9E80])
                      {
                        goto LABEL_386;
                      }

                      memset(__dst, 170, 24);
                      v113 = xpc_dictionary_get_value(v49, "host_taskname");
                      *&v196.st_dev = v113;
                      if (v113)
                      {
                        xpc_retain(v113);
                      }

                      else
                      {
                        *&v196.st_dev = xpc_null_create();
                      }

                      xpc::dyn_cast_or_default();
                      xpc_release(*&v196.st_dev);
                      memset(__p, 170, 24);
                      v114 = xpc_dictionary_get_value(v49, "host_filename");
                      *&v196.st_dev = v114;
                      if (v114)
                      {
                        xpc_retain(v114);
                      }

                      else
                      {
                        *&v196.st_dev = xpc_null_create();
                      }

                      xpc::dyn_cast_or_default();
                      xpc_release(*&v196.st_dev);
                      memset(v194, 170, 24);
                      v115 = xpc_dictionary_get_value(v49, "host_line");
                      *&v196.st_dev = v115;
                      if (v115)
                      {
                        xpc_retain(v115);
                      }

                      else
                      {
                        *&v196.st_dev = xpc_null_create();
                      }

                      xpc::dyn_cast_or_default();
                      xpc_release(*&v196.st_dev);
                      memset(v193, 170, sizeof(v193));
                      v116 = xpc_dictionary_get_value(v49, "subsystem");
                      *&v196.st_dev = v116;
                      if (v116)
                      {
                        xpc_retain(v116);
                      }

                      else
                      {
                        *&v196.st_dev = xpc_null_create();
                      }

                      xpc::dyn_cast_or_default();
                      xpc_release(*&v196.st_dev);
                      memset(v191, 170, sizeof(v191));
                      v117 = xpc_dictionary_get_value(v49, "log_data");
                      *&v196.st_dev = v117;
                      if (v117)
                      {
                        xpc_retain(v117);
                      }

                      else
                      {
                        *&v196.st_dev = xpc_null_create();
                      }

                      xpc::dyn_cast_or_default();
                      xpc_release(*&v196.st_dev);
                      v205 = 0xAAAAAAAAAAAAAAAALL;
                      v118.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                      v118.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                      v203 = v118;
                      v204 = v118;
                      v201 = v118;
                      v202 = v118;
                      v199 = v118;
                      v200 = v118;
                      v197 = v118;
                      v198 = v118;
                      *&v196.st_blksize = v118;
                      *v196.st_qspare = v118;
                      v196.st_birthtimespec = v118;
                      *&v196.st_size = v118;
                      v196.st_mtimespec = v118;
                      v196.st_ctimespec = v118;
                      *&v196.st_uid = v118;
                      v196.st_atimespec = v118;
                      *&v196.st_dev = v118;
                      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v196);
                      v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v196.st_uid, "TASK=", 5);
                      if ((SBYTE7(__dst[1]) & 0x80u) == 0)
                      {
                        v120 = __dst;
                      }

                      else
                      {
                        v120 = *&__dst[0];
                      }

                      if ((SBYTE7(__dst[1]) & 0x80u) == 0)
                      {
                        v121 = BYTE7(__dst[1]);
                      }

                      else
                      {
                        v121 = *(&__dst[0] + 1);
                      }

                      v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v120, v121);
                      v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "@", 1);
                      if (SHIBYTE(__p[2]) >= 0)
                      {
                        v124 = __p;
                      }

                      else
                      {
                        v124 = __p[0];
                      }

                      if (SHIBYTE(__p[2]) >= 0)
                      {
                        v125 = HIBYTE(__p[2]);
                      }

                      else
                      {
                        v125 = __p[1];
                      }

                      v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, v124, v125);
                      v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, ":", 1);
                      if (SHIBYTE(v194[2]) >= 0)
                      {
                        v128 = v194;
                      }

                      else
                      {
                        v128 = v194[0];
                      }

                      if (SHIBYTE(v194[2]) >= 0)
                      {
                        v129 = HIBYTE(v194[2]);
                      }

                      else
                      {
                        v129 = v194[1];
                      }

                      v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, v128, v129);
                      v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, ",CPU=", 5);
                      if (SHIBYTE(v193[2]) >= 0)
                      {
                        v132 = v193;
                      }

                      else
                      {
                        v132 = v193[0];
                      }

                      if (SHIBYTE(v193[2]) >= 0)
                      {
                        v133 = HIBYTE(v193[2]);
                      }

                      else
                      {
                        v133 = v193[1];
                      }

                      v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, v132, v133);
                      v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, ",LOG=", 5);
                      if (SHIBYTE(v191[2]) >= 0)
                      {
                        v136 = v191;
                      }

                      else
                      {
                        v136 = v191[0];
                      }

                      if (SHIBYTE(v191[2]) >= 0)
                      {
                        v137 = HIBYTE(v191[2]);
                      }

                      else
                      {
                        v137 = v191[1];
                      }

                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, v136, v137);
                      if ((v196.st_gen & 0x10) != 0)
                      {
                        v140 = *&v196.st_blksize;
                        if (*&v196.st_blksize < v196.st_ctimespec.tv_nsec)
                        {
                          *&v196.st_blksize = v196.st_ctimespec.tv_nsec;
                          v140 = v196.st_ctimespec.tv_nsec;
                        }

                        v141 = v196.st_ctimespec.tv_sec;
                        v138 = v140 - v196.st_ctimespec.tv_sec;
                        if ((v140 - v196.st_ctimespec.tv_sec) > 0x7FFFFFFFFFFFFFF7)
                        {
                          goto LABEL_306;
                        }
                      }

                      else
                      {
                        if ((v196.st_gen & 8) == 0)
                        {
                          v138 = 0;
                          HIBYTE(v190) = 0;
                          v139 = &v189;
                          goto LABEL_285;
                        }

                        v141 = v196.st_atimespec.tv_nsec;
                        v138 = v196.st_mtimespec.tv_nsec - v196.st_atimespec.tv_nsec;
                        if (v196.st_mtimespec.tv_nsec - v196.st_atimespec.tv_nsec > 0x7FFFFFFFFFFFFFF7uLL)
                        {
LABEL_306:
                          std::string::__throw_length_error[abi:ne200100]();
                        }
                      }

                      if (v138 >= 0x17)
                      {
                        if ((v138 | 7) == 0x17)
                        {
                          v142 = 25;
                        }

                        else
                        {
                          v142 = (v138 | 7) + 1;
                        }

                        v139 = operator new(v142);
                        *(&v189 + 1) = v138;
                        v190 = v142 | 0x8000000000000000;
                        *&v189 = v139;
                      }

                      else
                      {
                        HIBYTE(v190) = v138;
                        v139 = &v189;
                        if (!v138)
                        {
LABEL_285:
                          *(v139 + v138) = 0;
                          if (*(v184 + 23) < 0)
                          {
                            operator delete(*v184);
                          }

                          *v184 = v189;
                          *(v184 + 16) = v190;
                          if (a4)
                          {
                            if (SHIBYTE(v191[2]) >= 0)
                            {
                              v143 = v191;
                            }

                            else
                            {
                              v143 = v191[0];
                            }

                            if (SHIBYTE(v191[2]) >= 0)
                            {
                              v144 = SHIBYTE(v191[2]);
                            }

                            else
                            {
                              v144 = v191[1];
                            }

                            if (v144 > 9)
                            {
                              v145 = v143 + v144;
                              v146 = v144;
                              v147 = v143;
                              do
                              {
                                v148 = memchr(v147, 54, v146 - 9);
                                if (!v148)
                                {
                                  break;
                                }

                                if (*v148 == 0x4646304344303036 && *(v148 + 4) == 17733)
                                {
                                  if (v148 != v145 && v148 - v143 != -1)
                                  {
LABEL_356:
                                    v170 = 3;
                                    goto LABEL_378;
                                  }

                                  break;
                                }

                                v147 = (v148 + 1);
                                v146 = v145 - v147;
                              }

                              while (v145 - v147 >= 10);
                              if (v144 >= 27)
                              {
                                v150 = v143;
                                do
                                {
                                  v151 = memchr(v150, 65, v144 - 26);
                                  if (!v151)
                                  {
                                    break;
                                  }

                                  if (*v151 == 0x6563726F66205041 && *(v151 + 1) == 0x756465726F632064 && *(v151 + 2) == 0x532061697620706DLL && *(v151 + 19) == 0x494D505320616976)
                                  {
                                    if (v151 == v145 || v151 - v143 == -1)
                                    {
                                      break;
                                    }

                                    goto LABEL_356;
                                  }

                                  v150 = (v151 + 1);
                                  v144 = v145 - v150;
                                }

                                while (v145 - v150 >= 27);
                              }
                            }

                            v171 = HIBYTE(v208);
                            if (SHIBYTE(v208) >= 0)
                            {
                              v172 = &v207;
                            }

                            else
                            {
                              v172 = v207;
                            }

                            if (SHIBYTE(v208) < 0)
                            {
                              v171 = *(&v207 + 1);
                            }

                            v173 = v172 + v171;
                            if (v171 >= 9)
                            {
                              v175 = v172;
                              do
                              {
                                v174 = memchr(v175, 101, v171 - 8);
                                if (!v174)
                                {
                                  break;
                                }

                                if (*v174 == 0x636E656772656D65 && v174[8] == 121)
                                {
                                  goto LABEL_372;
                                }

                                v175 = (v174 + 1);
                                v171 = v173 - v175;
                              }

                              while (v173 - v175 > 8);
                              v174 = v173;
                            }

                            else
                            {
                              v174 = v172 + v171;
                            }

LABEL_372:
                            if (v174 - v172 == -1 || v174 == v173)
                            {
                              v170 = 2;
                            }

                            else
                            {
                              v170 = 1;
                            }

LABEL_378:
                            *a4 = v170;
                          }

                          *&v196.st_dev = v109;
                          *(&v196.st_dev + *(v109 - 24)) = v111;
                          *&v196.st_uid = v112;
                          *&v196.st_rdev = MEMORY[0x1E69E5548] + 16;
                          if (SHIBYTE(v196.st_blocks) < 0)
                          {
                            operator delete(v196.st_birthtimespec.tv_nsec);
                          }

                          *&v196.st_rdev = MEMORY[0x1E69E5538] + 16;
                          std::locale::~locale(&v196.st_atimespec);
                          std::iostream::~basic_iostream();
                          MEMORY[0x1E69273B0](v196.st_qspare);
                          if (SHIBYTE(v191[2]) < 0)
                          {
                            operator delete(v191[0]);
                            if ((SHIBYTE(v193[2]) & 0x80000000) == 0)
                            {
LABEL_383:
                              if ((SHIBYTE(v194[2]) & 0x80000000) == 0)
                              {
                                goto LABEL_384;
                              }

                              goto LABEL_390;
                            }
                          }

                          else if ((SHIBYTE(v193[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_383;
                          }

                          operator delete(v193[0]);
                          if ((SHIBYTE(v194[2]) & 0x80000000) == 0)
                          {
LABEL_384:
                            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_385;
                            }

LABEL_391:
                            operator delete(__p[0]);
                            if (SBYTE7(__dst[1]) < 0)
                            {
                              goto LABEL_392;
                            }

LABEL_386:
                            v178 = 1;
                            if ((SBYTE7(v206[1]) & 0x80000000) == 0)
                            {
                              goto LABEL_401;
                            }

                            goto LABEL_400;
                          }

LABEL_390:
                          operator delete(v194[0]);
                          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                          {
LABEL_385:
                            if ((SBYTE7(__dst[1]) & 0x80000000) == 0)
                            {
                              goto LABEL_386;
                            }

LABEL_392:
                            operator delete(*&__dst[0]);
                            v178 = 1;
                            if ((SBYTE7(v206[1]) & 0x80000000) == 0)
                            {
                              goto LABEL_401;
                            }

                            goto LABEL_400;
                          }

                          goto LABEL_391;
                        }
                      }

                      memmove(v139, v141, v138);
                      goto LABEL_285;
                    }

LABEL_198:
                    v103 = *&v196.st_blksize;
                    if (*&v196.st_blksize < v196.st_ctimespec.tv_nsec)
                    {
                      *&v196.st_blksize = v196.st_ctimespec.tv_nsec;
                      v103 = v196.st_ctimespec.tv_nsec;
                    }

                    p_tv_nsec = &v196.st_ctimespec;
                    goto LABEL_201;
                  }

                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v196.st_uid, ", ", 2);
                  goto LABEL_159;
                }
              }

              memmove(v79, tv_sec, v78);
              goto LABEL_154;
            }

            v63 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v63 = __p[0];
            }

            v193[0] = v63;
            v193[1] = v61;
            v64 = ctu::llvm::StringRef::find_first_not_of();
            if (v64 >= v193[1])
            {
              v65 = v193[1];
            }

            else
            {
              v65 = v64;
            }

            if (*v62 >= (v193[1] - v65))
            {
              v66 = (v193[1] - v65);
            }

            else
            {
              v66 = *v62;
            }

            *&__dst[0] = v193[0] + v65;
            *(&__dst[0] + 1) = v66;
            v67 = ctu::llvm::StringRef::find_last_not_of();
            v68 = __dst[0];
            if ((v67 + 1) < *(&__dst[0] + 1))
            {
              v69 = v67 + 1;
            }

            else
            {
              v69 = *(&__dst[0] + 1);
            }

            v70 = *(&__dst[0] + 1) - v66 + v69;
            *(&__dst[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&__dst[1] = 0xAAAAAAAAAAAAAAAALL;
            if (v70 >= *(&v68 + 1))
            {
              v71 = *(&v68 + 1);
            }

            else
            {
              v71 = v70;
            }

            *&__dst[0] = 0xAAAAAAAAAAAAAAAALL;
            if (v71 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v71 >= 0x17)
            {
              if ((v71 | 7) == 0x17)
              {
                v73 = 25;
              }

              else
              {
                v73 = (v71 | 7) + 1;
              }

              v72 = operator new(v73);
              *(&__dst[0] + 1) = v71;
              *&__dst[1] = v73 | 0x8000000000000000;
              *&__dst[0] = v72;
            }

            else
            {
              BYTE7(__dst[1]) = v71;
              v72 = __dst;
              if (!v71)
              {
LABEL_124:
                *(v72 + v71) = 0;
                if ((SBYTE7(__dst[1]) & 0x80u) == 0)
                {
                  v74 = __dst;
                }

                else
                {
                  v74 = *&__dst[0];
                }

                if ((SBYTE7(__dst[1]) & 0x80u) == 0)
                {
                  v75 = BYTE7(__dst[1]);
                }

                else
                {
                  v75 = *(&__dst[0] + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v196.st_uid, v74, v75);
                if (SBYTE7(__dst[1]) < 0)
                {
                  operator delete(*&__dst[0]);
                }

                goto LABEL_132;
              }
            }

            memmove(v72, v68, v71);
            goto LABEL_124;
          }
        }

        else if ((SHIBYTE(v208) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

LABEL_85:
        operator delete(v207);
        goto LABEL_91;
      }
    }

    xpc_retain(v56);
    v155 = v56;
    goto LABEL_326;
  }

  v182 = *qword_1ED948E98;
  if (os_log_type_enabled(*qword_1ED948E98, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v196.st_dev) = 0;
    _os_log_error_impl(&dword_1E5234000, v182, OS_LOG_TYPE_ERROR, "error: failed to convert json object to xpc dictionary", &v196, 2u);
    v178 = 0;
    v49 = v8;
    if (SBYTE7(v206[1]) < 0)
    {
      goto LABEL_400;
    }
  }

  else
  {
    v178 = 0;
    v49 = v8;
    if (SBYTE7(v206[1]) < 0)
    {
LABEL_400:
      operator delete(*&v206[0]);
    }
  }

LABEL_401:
  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207);
  }

  xpc_release(v49);
  xpc_release(xdict);
  return v178;
}

void sub_1E52E1A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t object, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, xpc_object_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, xpc_object_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a45);
  xpc_release(object);
  xpc_release(a11);
  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  xpc_release(v50);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void anonymous namespace::getLogClient(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v2, "com.apple.telephony.basebandservices.support");
    std::string::basic_string[abi:ne200100]<0>(&__p, "coredump");
    support::log::client::client(qword_1ED948E68, &v2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2.__r_.__value_.__l.__data_);
    }

    __cxa_guard_release(&_MergedGlobals_2);
  }
}

void sub_1E52E1FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&_MergedGlobals_2);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  __cxa_guard_abort(&_MergedGlobals_2);
  _Unwind_Resume(a1);
}

void xpc::array::object_proxy::operator xpc::dict(void *a1, xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    *a1 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1E6927F20](v5) != MEMORY[0x1E69E9E80])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a1 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](a1 + 128);
  return a1;
}

uint64_t __cxx_global_var_init_17()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t INTStateMachineStart(uint64_t a1)
{
  if (*(a1 + 368) == 1)
  {
    _BBUFSDebugPrint("INTStateMachineStart", "BBUFSServer already running\n");
  }

  else
  {
    _BBUFSDebugPrint("INTStateMachineStart", "BBUFSServer started successfully\n");
    *(a1 + 368) = 1;
  }

  return 1;
}

uint64_t INTStateMachineStop(uint64_t a1)
{
  if (*(a1 + 368))
  {
    _BBUFSDebugPrint("INTStateMachineStop", "BBUFSServer stopped successfully\n");
    *(a1 + 368) = 0;
  }

  else
  {
    _BBUFSDebugPrint("INTStateMachineStop", "BBUFSServer not running\n");
  }

  return 1;
}

uint64_t INTStateMachinePerformSnapshot(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 368) & 1) == 0)
  {
    _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "BBUFSServer failed to perform snapshot: server not running\n");
    return 0;
  }

  memset(&v69, 0, sizeof(v69));
  v2 = 1;
  while (2)
  {
    while (2)
    {
      v3 = *(a1 + 376);
      v4 = "Unknown";
      if (v3 == 1)
      {
        v4 = "TransferFile";
      }

      v5 = v3 == 0;
      v6 = "Snapshot";
      if (!v5)
      {
        v6 = v4;
      }

      _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "---------------------%s---------------------\n", v6);
      v7 = *(a1 + 376);
      if (v7 == 1)
      {
        v92 = 0;
        v93 = &v92;
        v94 = 0x2020000000;
        v95 = 0;
        v70[0] = 0;
        v70[1] = v70;
        *&v71 = 0x3812000000;
        *(&v71 + 1) = __Block_byref_object_copy__0;
        *&v72 = __Block_byref_object_dispose__0;
        *(&v72 + 1) = "";
        v73[0] = 0xAAAAAAAAAAAAAAAALL;
        v73[0] = dispatch_semaphore_create(0);
        *&v76 = 0;
        *(&v76 + 1) = &v76;
        *&v77 = 0x3812000000;
        *(&v77 + 1) = __Block_byref_object_copy__0;
        *&v78 = __Block_byref_object_dispose__0;
        *(&v78 + 1) = "";
        object = 0xAAAAAAAAAAAAAAAALL;
        object = dispatch_semaphore_create(0);
        v90 = 0xAAAAAAAAAAAAAAAALL;
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
        __dst.__r_.__value_.__r.__words[0] = dispatch_queue_create("BBUFSServer", v8);
        v89[0] = 0;
        v89[1] = 0;
        HSFilerReadSession::create();
        v9 = v89[1];
        if (v89[1] && !atomic_fetch_add(&v89[1]->__r_.__value_.__l.__size_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
          v10 = __dst.__r_.__value_.__r.__words[0];
          if (!__dst.__r_.__value_.__r.__words[0])
          {
LABEL_12:
            if (v90)
            {
              v11 = (*(*v90 + 16))(v90);
              _BBUFSDebugPrint("sCreateFilerSession", "BBUFSServer successfully created filer read session with ID (%llu)\n", v11);
              *(a1 + 384) = (*(*v90 + 16))(v90);
            }

            else
            {
              _BBUFSDebugPrint("sCreateFilerSession", "BBUFSServer failed to create filer read session\n");
            }

            if (!v90)
            {
              v12 = 0;
              goto LABEL_44;
            }

            memset(v89, 170, sizeof(v89));
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__dst, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = v69;
            }

            std::vector<std::string>::vector[abi:ne200100](v89, &__dst, 1uLL);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            v13 = v90;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3254779904;
            aBlock[2] = ___ZL13sTransferFileP16_BBUFSServer_tagRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
            aBlock[3] = &__block_descriptor_48_e8_32r40r_e11_v20__0Q8i16l;
            aBlock[4] = &v92;
            aBlock[5] = v70;
            v88 = _Block_copy(aBlock);
            v14 = (**v13)(v13, v89, &v88, 10);
            *(v93 + 24) = v14;
            if (v88)
            {
              _Block_release(v88);
              if (v93[3])
              {
LABEL_26:
                v15 = v70[1];
                v16 = dispatch_time(0, 10005000000000);
                v17 = dispatch_semaphore_wait(v15[6], v16);
                v18 = "BBUFSServer timeout waiting for filer read session (%llu) start\n";
                if (!v17)
                {
                  v18 = "BBUFSServer failed to start filer read session (%llu)\n";
                  if (v93[3])
                  {
                    v19 = strlen((a1 + 104));
                    if (v19 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v20 = v19;
                    if (v19 >= 0x17)
                    {
                      if ((v19 | 7) == 0x17)
                      {
                        v44 = 25;
                      }

                      else
                      {
                        v44 = (v19 | 7) + 1;
                      }

                      p_dst = operator new(v44);
                      __dst.__r_.__value_.__l.__size_ = v20;
                      __dst.__r_.__value_.__r.__words[2] = v44 | 0x8000000000000000;
                      __dst.__r_.__value_.__r.__words[0] = p_dst;
                    }

                    else
                    {
                      *(&__dst.__r_.__value_.__s + 23) = v19;
                      p_dst = &__dst;
                      if (!v19)
                      {
                        goto LABEL_87;
                      }
                    }

                    memcpy(p_dst, (a1 + 104), v20);
LABEL_87:
                    *(p_dst + v20) = 0;
                    BackupDir = bbufs::createBackupDir(&__dst);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v49 = BackupDir;
                      operator delete(__dst.__r_.__value_.__l.__data_);
                      if (v49)
                      {
LABEL_89:
                        v46 = strlen((a1 + 104));
                        if (v46 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v47 = v46;
                        if (v46 >= 0x17)
                        {
                          if ((v46 | 7) == 0x17)
                          {
                            v50 = 25;
                          }

                          else
                          {
                            v50 = (v46 | 7) + 1;
                          }

                          v48 = operator new(v50);
                          __dst.__r_.__value_.__l.__size_ = v47;
                          __dst.__r_.__value_.__r.__words[2] = v50 | 0x8000000000000000;
                          __dst.__r_.__value_.__r.__words[0] = v48;
                        }

                        else
                        {
                          *(&__dst.__r_.__value_.__s + 23) = v46;
                          v48 = &__dst;
                          if (!v46)
                          {
LABEL_100:
                            v48[v47] = 0;
                            s4ccToFileName(&v86, &v69);
                            v51 = bbufs::backupFile(&__dst, &v86);
                            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v86.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
LABEL_102:
                                v52 = "BBUFSServer failed to backup file (%s)\n";
                                if ((v51 & 1) == 0)
                                {
                                  goto LABEL_126;
                                }

                                goto LABEL_106;
                              }
                            }

                            else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_102;
                            }

                            operator delete(__dst.__r_.__value_.__l.__data_);
                            v52 = "BBUFSServer failed to backup file (%s)\n";
                            if ((v51 & 1) == 0)
                            {
                              goto LABEL_126;
                            }

LABEL_106:
                            std::string::basic_string[abi:ne200100]<0>(&__dst, (a1 + 104));
                            s4ccToFileName(&v86, &v69);
                            File = bbufs::createFile(&__dst, &v86);
                            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v86.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
LABEL_108:
                                v52 = "BBUFSServer failed to create file (%s) and/or set owner\n";
                                if (File)
                                {
                                  goto LABEL_109;
                                }

                                goto LABEL_126;
                              }
                            }

                            else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_108;
                            }

                            operator delete(__dst.__r_.__value_.__l.__data_);
                            v52 = "BBUFSServer failed to create file (%s) and/or set owner\n";
                            if (File)
                            {
LABEL_109:
                              memset(&__dst, 170, sizeof(__dst));
                              s4ccToFileName(&v86, &v69);
                              ctu::path_join<char (&)[256],std::string>(&__dst, (a1 + 104), &v86);
                              if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v86.__r_.__value_.__l.__data_);
                              }

                              v54 = &v69;
                              if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v54 = v69.__r_.__value_.__r.__words[0];
                              }

                              v55 = &__dst;
                              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v55 = __dst.__r_.__value_.__r.__words[0];
                              }

                              _BBUFSDebugPrint("sTransferFile", "BBUFSServer transferring file (%s) to path (%s)\n", v54, v55);
                              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                              {
                                std::string::__init_copy_ctor_external(&v86, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                              }

                              else
                              {
                                v86 = __dst;
                              }

                              v84[0] = MEMORY[0x1E69E9820];
                              v84[1] = 3254779904;
                              v84[2] = ___ZL13sTransferFileP16_BBUFSServer_tagRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke_62;
                              v84[3] = &__block_descriptor_48_e8_32r40r_e16_v28__0Q8i16r_v20l;
                              v84[4] = &v92;
                              v84[5] = &v76;
                              v85 = _Block_copy(v84);
                              *(v93 + 24) = HSFilerReadSession::readWithFile();
                              if (v85)
                              {
                                _Block_release(v85);
                              }

                              if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v86.__r_.__value_.__l.__data_);
                              }

                              if ((v93[3] & 1) == 0)
                              {
                                v61 = &v69;
                                if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v61 = v69.__r_.__value_.__r.__words[0];
                                }

                                _BBUFSDebugPrint("sTransferFile", "BBUFSServer failed to read file (%s)\n", v61);
                                std::string::basic_string[abi:ne200100]<0>(v82, (a1 + 104));
                                s4ccToFileName(&v81, &v69);
                                bbufs::restoreBackupFile(v82, &v81);
                                if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v81.__r_.__value_.__l.__data_);
                                }

                                if (v83 < 0)
                                {
                                  operator delete(v82[0]);
                                }

                                v12 = 0;
                                goto LABEL_166;
                              }

                              v58 = *(&v76 + 1);
                              v59 = dispatch_time(0, 10005000000000);
                              if (dispatch_semaphore_wait(*(v58 + 48), v59))
                              {
                                v60 = &v69;
                                if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v60 = v69.__r_.__value_.__r.__words[0];
                                }

                                _BBUFSDebugPrint("sTransferFile", "BBUFSServer timeout waiting for file (%s) transfer to complete\n", v60);
                                *(v93 + 24) = 0;
                              }

                              else if ((v93[3] & 1) == 0)
                              {
                                v62 = &v69;
                                if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v62 = v69.__r_.__value_.__r.__words[0];
                                }

                                _BBUFSDebugPrint("sTransferFile", "BBUFSServer failed to transfer file (%s)\n", v62);
                              }

                              v63 = v70[1];
                              v64 = dispatch_time(0, 10005000000000);
                              if (dispatch_semaphore_wait(v63[6], v64))
                              {
                                _BBUFSDebugPrint("sTransferFile", "BBUFSServer timeout waiting for filer read session (%llu) to end\n", *(a1 + 384));
                                *(v93 + 24) = 0;
LABEL_152:
                                std::string::basic_string[abi:ne200100]<0>(v82, (a1 + 104));
                                s4ccToFileName(&v81, &v69);
                                bbufs::restoreBackupFile(v82, &v81);
                                if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v81.__r_.__value_.__l.__data_);
                                }

                                if (v83 < 0)
                                {
                                  operator delete(v82[0]);
                                }

                                goto LABEL_165;
                              }

                              if ((v93[3] & 1) == 0)
                              {
                                _BBUFSDebugPrint("sTransferFile", "BBUFSServer filer read session (%llu) end failed\n", *(a1 + 384));
                                if ((v93[3] & 1) == 0)
                                {
                                  goto LABEL_152;
                                }
                              }

                              std::string::basic_string[abi:ne200100]<0>(v82, (a1 + 104));
                              s4ccToFileName(&v81, &v69);
                              v65 = bbufs::clearBackupFile(v82, &v81);
                              if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v81.__r_.__value_.__l.__data_);
                                if ((v83 & 0x80000000) == 0)
                                {
LABEL_160:
                                  if (v65)
                                  {
                                    goto LABEL_165;
                                  }

                                  goto LABEL_164;
                                }
                              }

                              else if ((v83 & 0x80000000) == 0)
                              {
                                goto LABEL_160;
                              }

                              operator delete(v82[0]);
                              if (v65)
                              {
LABEL_165:
                                v12 = *(v93 + 24);
LABEL_166:
                                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                }

                                goto LABEL_36;
                              }

LABEL_164:
                              _BBUFSDebugPrint("sTransferFile", "BBUFSServer failed to clear file backup\n");
                              *(v93 + 24) = 0;
                              goto LABEL_165;
                            }

LABEL_126:
                            v57 = &v69;
                            if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v57 = v69.__r_.__value_.__r.__words[0];
                            }

                            _BBUFSDebugPrint("sTransferFile", v52, v57);
                            goto LABEL_35;
                          }
                        }

                        memcpy(v48, (a1 + 104), v47);
                        goto LABEL_100;
                      }
                    }

                    else if (BackupDir)
                    {
                      goto LABEL_89;
                    }

                    _BBUFSDebugPrint("sTransferFile", "BBUFSServer failed to create backup directory\n");
LABEL_35:
                    v12 = 0;
LABEL_36:
                    v22 = v89[0];
                    if (v89[0])
                    {
                      v23 = v89[1];
                      v24 = v89[0];
                      if (v89[1] != v89[0])
                      {
                        do
                        {
                          v25 = SHIBYTE(v23[-1].__r_.__value_.__r.__words[2]);
                          --v23;
                          if (v25 < 0)
                          {
                            operator delete(v23->__r_.__value_.__l.__data_);
                          }
                        }

                        while (v23 != v22);
                        v24 = v89[0];
                      }

                      v89[1] = v22;
                      operator delete(v24);
                    }

LABEL_44:
                    v26 = v91;
                    if (v91 && !atomic_fetch_add((v91 + 8), 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v26->__on_zero_shared)(v26);
                      std::__shared_weak_count::__release_weak(v26);
                      _Block_object_dispose(&v76, 8);
                      v27 = object;
                      if (!object)
                      {
                        goto LABEL_48;
                      }
                    }

                    else
                    {
                      _Block_object_dispose(&v76, 8);
                      v27 = object;
                      if (!object)
                      {
LABEL_48:
                        _Block_object_dispose(v70, 8);
                        if (v73[0])
                        {
                          dispatch_release(v73[0]);
                        }

                        _Block_object_dispose(&v92, 8);
                        *(a1 + 384) = 0;
                        if (v12)
                        {
                          *(a1 + 376) = 0;
                          continue;
                        }

                        _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "BBUFSServer failed to perform snapshot: sTransferFile failed\n");
                        goto LABEL_187;
                      }
                    }

                    dispatch_release(v27);
                    goto LABEL_48;
                  }
                }

LABEL_34:
                _BBUFSDebugPrint("sTransferFile", v18, *(a1 + 384));
                goto LABEL_35;
              }
            }

            else if (v14)
            {
              goto LABEL_26;
            }

            v18 = "BBUFSServer failed to queue filer read session (%llu)\n";
            goto LABEL_34;
          }
        }

        else
        {
          v10 = __dst.__r_.__value_.__r.__words[0];
          if (!__dst.__r_.__value_.__r.__words[0])
          {
            goto LABEL_12;
          }
        }

        dispatch_release(v10);
        goto LABEL_12;
      }

      break;
    }

    if (v7)
    {
      _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "BBUFSServer failed to perform snapshot: unrecognized INT state. This should never happen\n");
LABEL_187:
      result = 0;
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_188;
      }

      return result;
    }

    if (v2 > 0x10)
    {
      break;
    }

    while ((*(a1 + 380) & v2) == 0)
    {
LABEL_57:
      v28 = v2 >= 9;
      v2 *= 2;
      if (v28)
      {
        goto LABEL_171;
      }
    }

    std::string::__assign_external(&v69, off_1E876E638[__clz(__rbit32(v2))]);
    aBlock[0] = 0xAAAAAAAAAAAAAAAALL;
    support::transport::ARI::create("BBUFSServer", 0x2710, 1, 0, aBlock);
    v29 = aBlock[0];
    if (!aBlock[0])
    {
      _BBUFSDebugPrint("sSnapshot", "Failed to create ARI transport\n");
LABEL_174:
      if (v2 <= 3)
      {
        if (v2 == 1)
        {
          v67 = "bbst";
          goto LABEL_186;
        }

        if (v2 == 2)
        {
          v67 = "bbdy";
          goto LABEL_186;
        }
      }

      else
      {
        switch(v2)
        {
          case 4u:
            v67 = "bbcl";
            goto LABEL_186;
          case 8u:
            v67 = "bbpc";
            goto LABEL_186;
          case 0x10u:
            v67 = "bbpv";
LABEL_186:
            _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "BBUFSServer failed to perform snapshot: sSnapshot(%s) failed\n", v67);
            goto LABEL_187;
        }
      }

      v67 = 0;
      goto LABEL_186;
    }

    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v30;
    v78 = v30;
    v76 = v30;
    object = 0xAAAAAAAAAAAAAAAALL;
    v80 = 0xAAAAAAAAFFFFFFFFLL;
    nvm::ARICommandDriver::ARICommandDriver();
    v75 = 0xAAAAAAAAAAAAAAAALL;
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v73 = v31;
    *__p = v31;
    v71 = v31;
    v72 = v31;
    *v70 = v31;
    AriSdk::ARI_IBINvmSnapshotReq_SDK::ARI_IBINvmSnapshotReq_SDK(v70);
    v84[0] = 0;
    v32 = operator new(4uLL);
    *v32 = v2;
    v33 = __p[0];
    __p[0] = v32;
    if (v33)
    {
      operator delete(v33);
    }

    v34 = *(a1 + 393);
    v35 = operator new(4uLL);
    *v35 = v34;
    v36 = __p[1];
    __p[1] = v35;
    if (v36)
    {
      operator delete(v36);
    }

    v37 = operator new(4uLL);
    *v37 = *(a1 + 392);
    v38 = v75;
    v75 = v37;
    if (v38)
    {
      operator delete(v38);
    }

    v39 = nvm::ARICommandDriver::NVMSnapshot();
    v40 = v84[0];
    if (!v84[0])
    {
      v39 = 0;
    }

    if (v39)
    {
      if (!**(v84[0] + 64))
      {
        v41 = (**(v84[0] + 72) & v2) != 0;
        v42 = 1;
        goto LABEL_75;
      }

      _BBUFSDebugPrint("sSnapshot", "Failed NVMSnapshot ARI cmd: result %d\n", **(v84[0] + 64));
    }

    else
    {
      _BBUFSDebugPrint("sSnapshot", "Failed NVMSnapshot ARI cmd\n");
    }

    v41 = 0;
    v42 = 0;
    v40 = v84[0];
    if (v84[0])
    {
LABEL_75:
      (*(*v40 + 16))(v40);
    }

    MEMORY[0x1E6926A50](v70);
    nvm::ARICommandDriver::~ARICommandDriver(&v76);
    (*(*v29 + 8))(v29);
    if ((v42 & 1) == 0)
    {
      goto LABEL_174;
    }

    if (!v41)
    {
      s4ccToFileName(v70, &v69);
      v43 = v70;
      if (SBYTE7(v71) < 0)
      {
        v43 = v70[0];
      }

      _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "Device has no pending updates for file %s\n", v43);
      if (SBYTE7(v71) < 0)
      {
        operator delete(v70[0]);
      }

      goto LABEL_57;
    }

    *(a1 + 376) = 1;
    *(a1 + 394) = 1;
    s4ccToFileName(v70, &v69);
    v56 = v70;
    if (SBYTE7(v71) < 0)
    {
      v56 = v70[0];
    }

    _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "Device has pending updates for file %s\n", v56);
    if (SBYTE7(v71) < 0)
    {
      operator delete(v70[0]);
    }

    v28 = v2 >= 9;
    v2 *= 2;
    if (!v28)
    {
      continue;
    }

    break;
  }

LABEL_171:
  _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "Device has no (further) updates\n");
  _BBUFSDebugPrint("INTStateMachinePerformSnapshot", "BBUFSServer performed snapshot successfully\n");
  result = 1;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_188:
    v68 = result;
    operator delete(v69.__r_.__value_.__l.__data_);
    return v68;
  }

  return result;
}

void sub_1E52E3288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, dispatch_object_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (*(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 232));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v52 - 208);
  _Block_object_dispose(&a32, 8);
  if (a38)
  {
    dispatch_release(a38);
    _Block_object_dispose(&a20, 8);
    v54 = object;
    if (!object)
    {
LABEL_10:
      _Block_object_dispose((v52 - 192), 8);
      if (a19 < 0)
      {
        operator delete(a14);
      }

      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a20, 8);
    v54 = object;
    if (!object)
    {
      goto LABEL_10;
    }
  }

  dispatch_release(v54);
  goto LABEL_10;
}

void s4ccToFileName(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 == 4)
    {
      v5 = *a2;
      if (*a2 <= 1953718881)
      {
        v6 = v5 == 1668309602 || v5 == 1818452578;
        v7 = a2;
        if (v6)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v8 = v5 == 1953718882 || v5 == 2036621922;
      v7 = a2;
      if (!v8)
      {
LABEL_22:
        if (*v7 != 1987076706)
        {
          goto LABEL_23;
        }

LABEL_24:
        GetBasebandFDR4ccToFileNameMap(v11);
        v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v11, a2, a2);
        if ((*(v9 + 79) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

LABEL_26:
        std::string::__init_copy_ctor_external(a1, v9[7], v9[8]);
        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_23:
    *&a1->__r_.__value_.__l.__data_ = 0uLL;
    a1->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  if (*(a2 + 8) != 4)
  {
    goto LABEL_23;
  }

  v7 = *a2;
  if (**a2 != 1953718882 && *v7 != 2036621922)
  {
    if (*v7 == 1818452578 || *v7 == 1668309602)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_20:
  GetBasebandNVM4ccToFileNameMap(v11);
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v11, a2, a2);
  if (*(v9 + 79) < 0)
  {
    goto LABEL_26;
  }

LABEL_25:
  v10 = *(v9 + 7);
  a1->__r_.__value_.__r.__words[2] = v9[9];
  *&a1->__r_.__value_.__l.__data_ = v10;
LABEL_27:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v11, v11[1]);
}

uint64_t INTStateMachineSetConfig(uint64_t a1, const char *a2, int a3)
{
  if (!a2)
  {
    _BBUFSDebugPrint("INTStateMachineSetConfig", "BBUFSServer failed to set config: NULL configName param\n");
    return 0;
  }

  if (!strcasecmp("ForceSync", a2))
  {
    *(a1 + 392) = a3 != 0;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Set forceSync config to %s\n");
  }

  else if (!strcasecmp("ShutdownSync", a2))
  {
    *(a1 + 393) = a3 != 0;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Set shutdownSync config to %s\n");
  }

  else if (!strcasecmp("ARICtxId", a2))
  {
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Set ARI context ID to %d\n");
  }

  else if (!strcasecmp("SyncStatic", a2))
  {
    *(a1 + 380) = 1;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Requested to sync static\n");
  }

  else if (!strcasecmp("SyncDynamic", a2))
  {
    *(a1 + 380) = 2;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Requested to sync dynamic\n");
  }

  else if (!strcasecmp("SyncCalibration", a2))
  {
    *(a1 + 380) = 4;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Requested to sync calibration\n");
  }

  else if (!strcasecmp("SyncFATPCalibration", a2))
  {
    *(a1 + 380) = 8;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Requested to sync FATP-calibration\n");
  }

  else if (!strcasecmp("SyncStaticDynamicCalibration", a2))
  {
    *(a1 + 380) = 7;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Requested to sync static + dynamic + calibration\n");
  }

  else
  {
    if (strcasecmp("SyncStaticDynamic", a2))
    {
      _BBUFSDebugPrint("INTStateMachineSetConfig", "BBUFSServer failed to set config, unrecognized config name '%s'\n");
      return 0;
    }

    *(a1 + 380) = 3;
    _BBUFSDebugPrint("INTStateMachineSetConfig", "Requested to sync static + dynamic\n");
  }

  return 1;
}

BOOL INTStateMachineSetConfigDefaults(uint64_t a1)
{
  if (MEMORY[0x1EEE987B0])
  {
    *(a1 + 392) = 0;
    *(a1 + 380) = 3;
    *(a1 + 394) = 0;
    *(a1 + 384) = 0;
  }

  else
  {
    _BBUFSDebugPrint("INTStateMachineSetConfigDefaults", "HSFilerDynamic library is not available for INT case. It should always be\n", v1, v2);
  }

  return MEMORY[0x1EEE987B0] != 0;
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t ***a1, const void **a2, uint64_t a3)
{
  v6 = (a1 + 1);
  v5 = a1[1];
  if (v5)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    while (1)
    {
      v10 = v5;
      v13 = v5[4];
      v11 = v5 + 4;
      v12 = v13;
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v14 >= 0)
      {
        v16 = *(v11 + 23);
      }

      else
      {
        v16 = v11[1];
      }

      if (v16 >= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      v18 = memcmp(v8, v15, v17);
      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v19 = memcmp(v15, v8, v17);
        if (v19)
        {
          if ((v19 & 0x80000000) == 0)
          {
            return v10;
          }
        }

        else if (v16 >= v9)
        {
          return v10;
        }

        v5 = v10[1];
        if (!v5)
        {
          v6 = v10 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v9 >= v16)
        {
          goto LABEL_22;
        }

LABEL_8:
        v5 = *v10;
        v6 = v10;
        if (!*v10)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v10 = (a1 + 1);
LABEL_29:
  v20 = operator new(0x50uLL);
  v21 = v20;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v20 + 32), *a3, *(a3 + 8));
  }

  else
  {
    *(v20 + 2) = *a3;
    *(v20 + 6) = *(a3 + 16);
  }

  v21[7] = 0;
  v21[8] = 0;
  v21[9] = 0;
  *v21 = 0;
  v21[1] = 0;
  v21[2] = v10;
  *v6 = v21;
  v22 = **a1;
  if (v22)
  {
    *a1 = v22;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v21);
  a1[2] = (a1[2] + 1);
  return v21;
}

void sub_1E52E3B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    dispatch_release(v1);
  }
}

intptr_t ___ZL13sTransferFileP16_BBUFSServer_tagRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = hsfiler::support::to_string();
  _BBUFSDebugPrint("sTransferFile_block_invoke", "BBUFSServer filer read session (%llu) status: %s\n", a2, v6);
  *(*(*(a1 + 32) + 8) + 24) = v3 >= 0;
  v7 = *(*(*(a1 + 40) + 8) + 48);

  return dispatch_semaphore_signal(v7);
}

uint64_t ctu::path_join<char (&)[256],std::string>(void *a1, char *__s, uint64_t a3)
{
  memset(a1, 170, 24);
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    a1[1] = v6;
    a1[2] = v8 | 0x8000000000000000;
    *a1 = v7;
  }

  else
  {
    *(a1 + 23) = v5;
    v7 = a1;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  memcpy(v7, __s, v6);
LABEL_10:
  *(v7 + v6) = 0;
  return ctu::path_join_impl();
}

void sub_1E52E3CC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

intptr_t ___ZL13sTransferFileP16_BBUFSServer_tagRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (*(a4 + 23) >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = *a4;
  }

  v8 = hsfiler::support::to_string();
  _BBUFSDebugPrint("sTransferFile_block_invoke", "BBUFSServer filer read session (%llu) file (%s) transfer status: %s\n", a2, v7, v8);
  *(*(*(a1 + 32) + 8) + 24) = v4 >= 0;
  v9 = *(*(*(a1 + 40) + 8) + 48);

  return dispatch_semaphore_signal(v9);
}

uint64_t __cxx_global_var_init_18()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUEURProvisioner::BBUEURProvisioner(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 16) = a3;
  *(a1 + 20) = 1;
  *a1 = &unk_1F5F02B70;
  *(a1 + 8) = a2;
  v4 = capabilities::updater::provisioningCommandTimeout(a1);
  if (v4 >= 0x100000000)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUEURProvisioner.cpp", 0x10u, "Assertion failure(capabilities::updater::provisioningCommandTimeout().count() <= std::numeric_limits<UInt32>::max() && capabilities::updater::provisioningCommandTimeout().count() exceeds maximum allowable value)");
  }

  *(a1 + 24) = capabilities::updater::provisioningCommandTimeout(v4);
  return a1;
}

uint64_t BBUEURProvisioner::determineSupport(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Determining support");
  (*(*a1 + 64))(a1);
  Status = ETLProvisionGetStatus();
  *(a1 + 16) = Status;
  if (Status)
  {
    v2 = 0;
  }

  else
  {
    v2 = 70;
  }

  (*(**(a1 + 8) + 24))(*(a1 + 8), v2);
  if (!Status)
  {
    return v2;
  }

  v6 = *(a1 + 16);
  v7 = "???";
  if (v6 == 1)
  {
    v7 = "Mature";
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = "Unknown";
  }

  BBUFeedback::handleComment(*(a1 + 8), "Determined support as %s", v8);
  return v2;
}

uint64_t BBUEURProvisioner::handleBeginMature(BBUFeedback **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  cf = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 56, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUEURProvisioner.cpp", 0x4Fu, "Assertion failure(d.get() && Unable to extract public key to start mature provisioning.)");
  }

  CFRetain(v4);
  v44 = -1431655766;
  Length = CFDataGetLength(v4);
  v7 = operator new[](Length);
  v66.length = CFDataGetLength(v4);
  v66.location = 0;
  CFDataGetBytes(v4, v66, v7);
  v42 = v7;
  if (capabilities::radio::mav25Plus(v8))
  {
    v64 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v62 = v9;
    v63 = v9;
    v60 = v9;
    v61 = v9;
    v58 = v9;
    v59 = v9;
    v56 = v9;
    v57 = v9;
    v54 = v9;
    v55 = v9;
    v52 = v9;
    v53 = v9;
    v50 = v9;
    v51 = v9;
    __sz = v9;
    v49 = v9;
    v47 = v9;
    (*(*a1 + 8))(a1);
    v10 = ETLProvisionStart64Bit();
    operator delete[](v7);
    if (v10)
    {
      memset(v41, 170, sizeof(v41));
      if (!ETLCDMAMakeMEID() || !ETLCDMAIsValidMEID())
      {
LABEL_40:
        v29 = operator new(0x10uLL);
        v30 = DWORD1(__sz);
        v29[2] = DWORD1(__sz);
        v31 = operator new[](v30);
        *v29 = v31;
        memcpy(v31, &__sz + 8, v30);
        v32 = *(a3 + 32);
        if (v32)
        {
          goto LABEL_41;
        }

LABEL_51:
        v21 = 0;
        *(a3 + 32) = v29;
        v22 = cf;
        if (!cf)
        {
          return v21;
        }

LABEL_52:
        CFRelease(v22);
        return v21;
      }

      memset(__b, 170, sizeof(__b));
      ETLCDMAMakeStringFromMEID();
      v11 = operator new(0x18uLL);
      v12 = strlen(__b);
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v12 | 7) + 1;
        }

        p_dst = operator new(v23);
        *(&__dst + 1) = v13;
        v40 = v23 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v40) = v12;
        p_dst = &__dst;
        if (!v12)
        {
LABEL_24:
          *(p_dst + v13) = 0;
          if (SHIBYTE(v40) < 0)
          {
            v27 = __dst;
            std::string::__init_copy_ctor_external(v11, __dst, *(&__dst + 1));
            operator delete(v27);
            v24 = *(a3 + 16);
            if (!v24)
            {
LABEL_39:
              *(a3 + 16) = v11;
              goto LABEL_40;
            }
          }

          else
          {
            *&v11->__r_.__value_.__l.__data_ = __dst;
            v11->__r_.__value_.__r.__words[2] = v40;
            v24 = *(a3 + 16);
            if (!v24)
            {
              goto LABEL_39;
            }
          }

          if (*(v24 + 23) < 0)
          {
            v28 = v24;
            operator delete(*v24);
            v24 = v28;
          }

          operator delete(v24);
          goto LABEL_39;
        }
      }

      memcpy(p_dst, __b, v13);
      goto LABEL_24;
    }

LABEL_17:
    BBUFeedback::handleComment(a1[1], "Failed to retrieve mature provisioning parameters");
    v21 = 3;
    v22 = cf;
    if (!cf)
    {
      return v21;
    }

    goto LABEL_52;
  }

  LODWORD(v64) = -1431655766;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v15;
  v63 = v15;
  v60 = v15;
  v61 = v15;
  v58 = v15;
  v59 = v15;
  v56 = v15;
  v57 = v15;
  v54 = v15;
  v55 = v15;
  v52 = v15;
  v53 = v15;
  v50 = v15;
  v51 = v15;
  __sz = v15;
  v49 = v15;
  v47 = v15;
  (*(*a1 + 8))(a1);
  v16 = ETLProvisionStart();
  operator delete[](v7);
  if (!v16)
  {
    goto LABEL_17;
  }

  memset(v41, 170, sizeof(v41));
  if (ETLCDMAMakeMEID() && ETLCDMAIsValidMEID())
  {
    memset(__b, 170, sizeof(__b));
    ETLCDMAMakeStringFromMEID();
    v17 = operator new(0x18uLL);
    v18 = strlen(__b);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v18 | 7) + 1;
      }

      v20 = operator new(v25);
      *(&__dst + 1) = v19;
      v40 = v25 | 0x8000000000000000;
      *&__dst = v20;
    }

    else
    {
      HIBYTE(v40) = v18;
      v20 = &__dst;
      if (!v18)
      {
LABEL_32:
        *(v20 + v19) = 0;
        if (SHIBYTE(v40) < 0)
        {
          v33 = __dst;
          std::string::__init_copy_ctor_external(v17, __dst, *(&__dst + 1));
          operator delete(v33);
          v26 = *(a3 + 16);
          if (!v26)
          {
LABEL_49:
            *(a3 + 16) = v17;
            goto LABEL_50;
          }
        }

        else
        {
          *&v17->__r_.__value_.__l.__data_ = __dst;
          v17->__r_.__value_.__r.__words[2] = v40;
          v26 = *(a3 + 16);
          if (!v26)
          {
            goto LABEL_49;
          }
        }

        if (*(v26 + 23) < 0)
        {
          v34 = v26;
          operator delete(*v26);
          v26 = v34;
        }

        operator delete(v26);
        goto LABEL_49;
      }
    }

    memcpy(v20, __b, v19);
    goto LABEL_32;
  }

LABEL_50:
  v29 = operator new(0x10uLL);
  v35 = __sz;
  v29[2] = __sz;
  v36 = operator new[](v35);
  *v29 = v36;
  memcpy(v36, &__sz + 4, v35);
  v32 = *(a3 + 32);
  if (!v32)
  {
    goto LABEL_51;
  }

LABEL_41:
  if (*v32)
  {
    operator delete(*v32);
  }

  operator delete(v32);
  v21 = 0;
  *(a3 + 32) = v29;
  v22 = cf;
  if (cf)
  {
    goto LABEL_52;
  }

  return v21;
}

void sub_1E52E451C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16)
{
  operator delete(v17);
  operator delete(v16);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a16);
  _Unwind_Resume(a1);
}

uint64_t BBUEURProvisioner::handleFinishMature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 56, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUEURProvisioner.cpp", 0xA3u, "Assertion failure(d.get() && Unable to extract public key to finish mature provisioning.)");
  }

  CFRetain(v3);
  Length = CFDataGetLength(v3);
  v5 = operator new[](Length);
  v10.length = CFDataGetLength(v3);
  v10.location = 0;
  CFDataGetBytes(v3, v10, v5);
  (*(*a1 + 64))(a1);
  v6 = ETLProvisionFinish();
  operator delete[](v5);
  CFRelease(v3);
  if (v6)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

void sub_1E52E46F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E52E4708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void sub_1E52E4728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E52E4740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E52E4754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void BBUEUR10LoaderVersion::~BBUEUR10LoaderVersion(void **this)
{
  *this = &unk_1F5F04878;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5F04878;
  if (*(this + 39) < 0)
  {
    v2 = this;
    operator delete(this[2]);
    this = v2;
  }

  operator delete(this);
}

void BBUEUR10LoaderVersion::getAsString(BBUEUR10LoaderVersion *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *a2 = *(this + 16);
  }
}

uint64_t BBUEUR10LoaderVersion::parseVersionString(uint64_t a1, void ***a2)
{
  v3 = a1 + 16;
  if (v3 == a2)
  {
    goto LABEL_5;
  }

  if (*(a1 + 39) < 0)
  {
    v6 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v7 = v6;
    }

    std::string::__assign_no_alias<false>(v3, a2, v7);
    *(a1 + 8) = 2;
    return 0;
  }

  else
  {
    if ((*(a2 + 23) & 0x80) == 0)
    {
      v4 = *a2;
      *(v3 + 16) = a2[2];
      *v3 = v4;
LABEL_5:
      *(a1 + 8) = 2;
      return 0;
    }

    std::string::__assign_no_alias<true>(v3, *a2, a2[1]);
    *(a1 + 8) = 2;
    return 0;
  }
}

BOOL BBUEUR10LoaderVersion::isNewerThan(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v8, (a1 + 16));
  MEMORY[0x1E6927040](v8, &v14 + 4);
  v8[0] = *MEMORY[0x1E69E54E0];
  v3 = v8[0];
  v4 = *(MEMORY[0x1E69E54E0] + 24);
  *(v8 + *(v8[0] - 24)) = v4;
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::istream::~istream();
  MEMORY[0x1E69273B0](v13);
  (*(*a2 + 16))(v6, a2);
  std::istringstream::basic_istringstream[abi:ne200100](v8, v6);
  MEMORY[0x1E6927040](v8, &v14);
  v8[0] = v3;
  *(v8 + *(v3 - 24)) = v4;
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::istream::~istream();
  MEMORY[0x1E69273B0](v13);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return SHIDWORD(v14) > v14;
}

void sub_1E52E4B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::istringstream::~istringstream(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E52E4BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x1E69E5568] + 64;
  *(a1 + 120) = MEMORY[0x1E69E5568] + 64;
  v5 = a1 + 16;
  v6 = *(MEMORY[0x1E69E54E0] + 16);
  v7 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 16));
  v9 = MEMORY[0x1E69E5568] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *a1 = v9;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69272B0](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 8;
  if ((a1 + 80) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__assign_no_alias<true>((a1 + 80), *a2, *(a2 + 1));
    }

    else
    {
      v10 = *a2;
      *(a1 + 96) = *(a2 + 2);
      *(a1 + 80) = v10;
    }
  }

  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x1E69E5568] + 64;
  *(a1 + 120) = MEMORY[0x1E69E5568] + 64;
  v5 = a1 + 16;
  v6 = *(MEMORY[0x1E69E54E0] + 16);
  v7 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 16));
  v9 = MEMORY[0x1E69E5568] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *a1 = v9;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69272B0](a1 + 24);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  v10 = *a2;
  *(a1 + 96) = *(a2 + 2);
  *(a1 + 80) = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 8;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1E69273B0](a1 + 120);
  return a1;
}

void sub_1E52E50EC(_Unwind_Exception *a1)
{
  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  *(v2 + 16) = v3;
  std::locale::~locale((v2 + 24));
  std::istream::~istream();
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

BOOL BBUEUR10LoaderVersion::isEqualTo(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v8, (a1 + 16));
  MEMORY[0x1E6927040](v8, &v14 + 4);
  v8[0] = *MEMORY[0x1E69E54E0];
  v3 = v8[0];
  v4 = *(MEMORY[0x1E69E54E0] + 24);
  *(v8 + *(v8[0] - 24)) = v4;
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::istream::~istream();
  MEMORY[0x1E69273B0](v13);
  (*(*a2 + 16))(v6, a2);
  std::istringstream::basic_istringstream[abi:ne200100](v8, v6);
  MEMORY[0x1E6927040](v8, &v14);
  v8[0] = v3;
  *(v8 + *(v3 - 24)) = v4;
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::istream::~istream();
  MEMORY[0x1E69273B0](v13);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return HIDWORD(v14) == v14;
}

void sub_1E52E53A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::istringstream::~istringstream(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E52E53D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

void BBUError::BBUError(BBUError *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("BBUError", v2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 3) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
}

void BBUError::getCFError(BBUError *this, __CFError **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUError.cpp", 0x11u, "Assertion failure(error)");
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN8BBUError10getCFErrorEPP9__CFError_block_invoke;
  v5[3] = &__block_descriptor_tmp_6;
  v5[4] = this;
  v5[5] = a2;
  v6 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = this;
  block[5] = &v6;
  v3 = this + 16;
  v2 = *(this + 2);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN8BBUError10getCFErrorEPP9__CFError_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *(a1 + 40);
    do
    {
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
      }

      else
      {
        v7 = *v2;
        __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
        *&__p.__r_.__value_.__l.__data_ = v7;
      }

      BBUpdaterCommon::BBUCreateCFError(v6, &__p, *(v2 + 6), v5);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 = *(a1 + 40);
      v5 = *v6;
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_1E52E5660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUError::getErrorCode(BBUError *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = ___ZN8BBUError12getErrorCodeEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_4_1;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = this;
  block[5] = &v10;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN8BBUError12getErrorCodeEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  if (v3 != v2)
  {
    *(*(*(result + 32) + 8) + 24) = *(v2 - 8);
  }

  return result;
}

void BBUError::getErrorString(std::string *__return_ptr a1@<X8>, BBUError *this@<X0>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = ___ZN8BBUError14getErrorStringEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_7_0;
  v7[4] = &v8;
  v7[5] = this;
  v16 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = this;
  block[5] = &v16;
  v4 = this + 16;
  v3 = *(this + 2);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
    v5 = v9;
    if ((*(v9 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(v5 + 5);
      a1->__r_.__value_.__r.__words[2] = v5[7];
      *&a1->__r_.__value_.__l.__data_ = v6;
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_sync(v3, block);
    v5 = v9;
    if ((*(v9 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(a1, v5[5], v5[6]);
LABEL_6:
  _Block_object_dispose(&v8, 8);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52E5914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  _Block_object_dispose(&a16, 8);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ***___ZN8BBUError14getErrorStringEv_block_invoke(void ***result)
{
  v1 = result[5];
  v3 = v1[4];
  v2 = v1[5];
  if (v3 != v2)
  {
    v4 = (v2 - 4);
    v5 = result[4][1];
    result = (v5 + 40);
    if (v5 + 40 != (v2 - 4))
    {
      v6 = v5[63];
      v7 = *(v2 - 9);
      if (v6 < 0)
      {
        v10 = *(v2 - 4);
        v9 = *(v2 - 3);
        if (v7 >= 0)
        {
          v11 = v4;
        }

        else
        {
          v11 = v10;
        }

        if (v7 >= 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = v9;
        }

        return std::string::__assign_no_alias<false>(result, v11, v12);
      }

      else if ((v7 & 0x80) != 0)
      {
        return std::string::__assign_no_alias<true>(result, *(v2 - 4), *(v2 - 3));
      }

      else
      {
        v8 = *v4;
        result[2] = *(v2 - 2);
        *result = v8;
      }
    }
  }

  return result;
}

void BBUError::addError(uint64_t a1, uint64_t a2, int a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v5[3] = &__block_descriptor_tmp_8;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3;
  v7 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = a1;
  block[5] = &v7;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
    v5 = *(a1 + 48);
    v20 = v5;
    v6 = v3[5];
    v7 = v3[6];
    if (v6 < v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *v2;
    __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&__p.__r_.__value_.__l.__data_ = v4;
    v5 = *(a1 + 48);
    v20 = v5;
    v6 = v3[5];
    v7 = v3[6];
    if (v6 < v7)
    {
LABEL_3:
      v8 = *&__p.__r_.__value_.__l.__data_;
      *(v6 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v6 = v8;
      *(v6 + 24) = v20;
      v9 = (v6 + 32);
LABEL_18:
      v3[5] = v9;
      return;
    }
  }

  v10 = v3[4];
  v11 = v6 - v10;
  v12 = (v6 - v10) >> 5;
  v13 = v12 + 1;
  if ((v12 + 1) >> 59)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v14 = v7 - v10;
  if (v14 >> 4 > v13)
  {
    v13 = v14 >> 4;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFE0)
  {
    v15 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (v15 >> 59)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = operator new(32 * v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = &v16[32 * v12];
  *v17 = __p;
  memset(&__p, 0, sizeof(__p));
  *(v17 + 6) = v5;
  v9 = v17 + 32;
  memcpy(v16, v10, v11);
  v3[4] = v16;
  v3[5] = v9;
  v3[6] = &v16[32 * v15];
  if (!v10)
  {
    goto LABEL_18;
  }

  operator delete(v10);
  v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v3[5] = v9;
  if (v18 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E52E5C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8BBUError11clearErrorsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  *(v1 + 40) = v2;
}

void BBUEUR16FirmwareVersion::BBUEUR16FirmwareVersion(BBUEUR16FirmwareVersion *this)
{
  v2 = BBUEUR16FirmwareVersion::kFirmwarePrefix;
  v3 = strlen(BBUEUR16FirmwareVersion::kFirmwarePrefix);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
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

    p_dst = operator new(v6);
    *(&__dst + 1) = v4;
    v9 = v6 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v9) = v3;
  p_dst = &__dst;
  if (v3)
  {
LABEL_9:
    memmove(p_dst, v2, v4);
  }

  *(p_dst + v4) = 0;
  *this = &unk_1F5F02020;
  *(this + 5) = -1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (SHIBYTE(v9) < 0)
  {
    v7 = __dst;
    std::string::__init_copy_ctor_external(this + 3, __dst, *(&__dst + 1));
    *(this + 4) = 0;
    *(this + 1) = 0;
    operator delete(v7);
  }

  else
  {
    *(this + 72) = __dst;
    *(this + 11) = v9;
    *(this + 1) = 0;
    *(this + 4) = 0;
  }

  *this = &unk_1F5F02CA0;
}

void sub_1E52E5DF4(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v2);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v3);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void BBUEUR16FirmwareVersion::~BBUEUR16FirmwareVersion(void **this)
{
  *this = &unk_1F5F02020;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[3]);
      return;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if (*(this + 47) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_1F5F02020;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this;

    goto LABEL_6;
  }

LABEL_9:
  operator delete(this[3]);
  v2 = this;

LABEL_6:
  operator delete(v2);
}

unint64_t BBUEUR16FirmwareVersion::getFirmwarePrefix@<X0>(void *a1@<X8>)
{
  v2 = BBUEUR16FirmwareVersion::kFirmwarePrefix;
  result = strlen(BBUEUR16FirmwareVersion::kFirmwarePrefix);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (result | 7) + 1;
    }

    v6 = operator new(v5);
    a1[1] = v4;
    a1[2] = v5 | 0x8000000000000000;
    *a1 = v6;
    a1 = v6;
  }

  else
  {
    *(a1 + 23) = result;
    if (!result)
    {
      *a1 = 0;
      return result;
    }
  }

  result = memmove(a1, v2, v4);
  *(a1 + v4) = 0;
  return result;
}

void *BBUICE16HashData::BBUICE16HashData(void *a1, unsigned int a2, char *__s)
{
  *a1 = &unk_1F5F02D10;
  a1[2] = 0;
  a1[1] = a1 + 2;
  v3 = (a1 + 1);
  a1[3] = 0;
  if (a2)
  {
    v5 = a2;
    while (1)
    {
      memset(__p, 170, sizeof(__p));
      v6 = strlen(__s);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        break;
      }

      HIBYTE(__p[2]) = v6;
      v8 = __p;
      if (v6)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7[v8] = 0;
      v10 = operator new(0x20uLL);
      v11 = *(__s + 5);
      *v10 = *(__s + 4);
      v10[1] = v11;
      v25 = __p;
      v12 = std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, __p, &std::piecewise_construct, &v25);
      v13 = v12[7];
      v14 = v12[9];
      if (v14 - v13 >= 0x20)
      {
        v19 = v12[8];
        v20 = v19 - v13;
        if ((v19 - v13) > 0x1F)
        {
          v21 = v10[1];
          *v13 = *v10;
          *(v13 + 1) = v21;
          v12[8] = v13 + 4;
          operator delete(v10);
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v19 != v13)
          {
            memmove(v13, v10, v19 - v13);
            v19 = v12[8];
          }

          memmove(v19, v10 + v20, 32 - v20);
          v12[8] = (v19 + 32 - v20);
          operator delete(v10);
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if (v13)
        {
          v12[8] = v13;
          operator delete(v13);
          v14 = 0;
          v12[7] = 0;
          v12[8] = 0;
          v12[9] = 0;
        }

        v15 = 2 * v14;
        if (2 * v14 <= 0x20)
        {
          v15 = 32;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        v17 = operator new(v16);
        v12[7] = v17;
        v12[8] = v17;
        v12[9] = (v17 + v16);
        v18 = v10[1];
        *v17 = *v10;
        *(v17 + 1) = v18;
        v12[8] = v17 + 4;
        operator delete(v10);
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      operator delete(__p[0]);
LABEL_4:
      __s += 96;
      if (!--v5)
      {
        return a1;
      }
    }

    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __p[1] = v7;
    __p[2] = (v9 | 0x8000000000000000);
    __p[0] = v8;
LABEL_13:
    memcpy(v8, __s, v7);
    goto LABEL_14;
  }

  return a1;
}

void BBUICE16HashData::~BBUICE16HashData(char **this)
{
  *this = &unk_1F5F02D10;
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy((this + 1), this[2]);
}

{
  *this = &unk_1F5F02D10;
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy((this + 1), this[2]);

  operator delete(this);
}

BOOL BBUICE16HashData::compare(BBUICE16HashData *this, BBUFeedback *a2, const BBUHashData *lpsrc)
{
  if (!lpsrc)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 1);
    v8 = this + 16;
    if (v7 == (this + 16))
    {
      return v6;
    }

LABEL_7:
    while (1)
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v19[16] = v9;
      v20 = v9;
      *v19 = v9;
      std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100](v19, v7 + 2);
      v10 = *&v19[24];
      v11 = (*(*v5 + 40))(v5, v19);
      if (!v11)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_18;
      }

      if (v19[23] >= 0)
      {
        v12 = v19;
      }

      else
      {
        v12 = *v19;
      }

      v6 = BBUHashData::compareHash(this, a2, v10, v11, v12);
      v13 = *&v19[24];
      if (*&v19[24])
      {
        goto LABEL_19;
      }

LABEL_20:
      if ((v19[23] & 0x80000000) != 0)
      {
        operator delete(*v19);
        v15 = *(v7 + 1);
        if (v15)
        {
          do
          {
LABEL_24:
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
          goto LABEL_6;
        }
      }

      else
      {
        v15 = *(v7 + 1);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      do
      {
        v16 = *(v7 + 2);
        v17 = *v16 == v7;
        v7 = v16;
      }

      while (!v17);
LABEL_6:
      v7 = v16;
      if (v16 == v8)
      {
        return v6;
      }
    }

    if (v19[23] >= 0)
    {
      v14 = v19;
    }

    else
    {
      v14 = *v19;
    }

    BBUFeedback::handleComment(a2, "Hash missing in BBFW: %s", v14);
LABEL_18:
    v6 = 0;
    v13 = *&v19[24];
    if (!*&v19[24])
    {
      goto LABEL_20;
    }

LABEL_19:
    *&v20 = v13;
    operator delete(v13);
    goto LABEL_20;
  }

  v6 = v5 != 0;
  v7 = *(this + 1);
  v8 = this + 16;
  if (v7 != (this + 16))
  {
    goto LABEL_7;
  }

  return v6;
}

void sub_1E52E659C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::string const,std::vector<unsigned char>>::~pair(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    v6 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v6;
    if (v9 == v6)
    {
      return this;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    v6 = *(a2 + 3);
    v5 = *(a2 + 4);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      return this;
    }
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v10 = operator new(v7);
  this[1].__r_.__value_.__r.__words[0] = v10;
  this[1].__r_.__value_.__l.__size_ = v10;
  v11 = v10 + v7;
  this[1].__r_.__value_.__r.__words[2] = v10 + v7;
  memcpy(v10, v6, v7);
  this[1].__r_.__value_.__l.__size_ = v11;
  return this;
}

void sub_1E52E6678(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::vector<unsigned char>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void BBUICE16HashData::showHashes(BBUICE16HashData *this, BBUFeedback *a2)
{
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != (this + 16))
  {
    while (1)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v13[16] = v6;
      v14 = v6;
      *v13 = v6;
      std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100](v13, v2 + 2);
      v7 = v13[23] >= 0 ? v13 : *v13;
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      (*(*this + 32))(this);
      ctu::assign();
      v8 = v16 >= 0 ? v15 : v15[0];
      BBUFeedback::handleComment(a2, "\t %s:  %s", v7, v8);
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v15[0]);
      v9 = *&v13[24];
      if (*&v13[24])
      {
        goto LABEL_12;
      }

LABEL_13:
      if ((v13[23] & 0x80000000) != 0)
      {
        operator delete(*v13);
        v10 = *(v2 + 1);
        if (v10)
        {
          do
          {
LABEL_19:
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
          goto LABEL_3;
        }
      }

      else
      {
        v10 = *(v2 + 1);
        if (v10)
        {
          goto LABEL_19;
        }
      }

      do
      {
        v11 = *(v2 + 2);
        v12 = *v11 == v2;
        v2 = v11;
      }

      while (!v12);
LABEL_3:
      v2 = v11;
      if (v11 == v3)
      {
        return;
      }
    }

    v9 = *&v13[24];
    if (!*&v13[24])
    {
      goto LABEL_13;
    }

LABEL_12:
    *&v14 = v9;
    operator delete(v9);
    goto LABEL_13;
  }
}

void sub_1E52E6890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string const,std::vector<unsigned char>>::~pair(&a11);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16HashData::getFileHash(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::find<std::string>(a1 + 8, a2);
  if ((a1 + 16) == v3)
  {
    return 0;
  }

  else
  {
    return v3[7];
  }
}

void std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<unsigned char>>,std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *> *,long>>(uint64_t ***a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  if (!a1[2])
  {
    goto LABEL_77;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = (a1 + 1);
  v7[2] = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = v6[1] ? v6[1] : v6;
  v43 = v9;
  if (!v9)
  {
    goto LABEL_77;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v40 = *(v10 + 1);
        if (!v40)
        {
          break;
        }

        do
        {
          v10 = v40;
          v40 = *v40;
        }

        while (v40);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v42 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, v9);
    if (v10)
    {
      goto LABEL_74;
    }

    goto LABEL_77;
  }

  v13 = a2;
  do
  {
    if (v9 != v13)
    {
      v14 = *(v13 + 55);
      if (*(v9 + 55) < 0)
      {
        if (v14 >= 0)
        {
          v16 = v13 + 4;
        }

        else
        {
          v16 = v13[4];
        }

        if (v14 >= 0)
        {
          v17 = *(v13 + 55);
        }

        else
        {
          v17 = v13[5];
        }

        std::string::__assign_no_alias<false>(v9 + 4, v16, v17);
      }

      else if ((*(v13 + 55) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v9 + 4, v13[4], v13[5]);
      }

      else
      {
        v15 = *(v13 + 2);
        v9[6] = v13[6];
        *(v9 + 2) = v15;
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v9 + 7, v13[7], v13[8], v13[8] - v13[7]);
      v9 = v43;
    }

    v18 = *v8;
    v19 = (a1 + 1);
    v20 = (a1 + 1);
    if (*v8)
    {
      v21 = *(v9 + 55);
      if (v21 >= 0)
      {
        v22 = v9 + 4;
      }

      else
      {
        v22 = v9[4];
      }

      if (v21 >= 0)
      {
        v23 = *(v9 + 55);
      }

      else
      {
        v23 = v9[5];
      }

      while (1)
      {
        v19 = v18;
        v26 = v18[4];
        v24 = v18 + 4;
        v25 = v26;
        v27 = *(v24 + 23);
        if (v27 >= 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = v25;
        }

        if (v27 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = v24[1];
        }

        if (v29 >= v23)
        {
          v30 = v23;
        }

        else
        {
          v30 = v29;
        }

        v31 = memcmp(v22, v28, v30);
        if (v31)
        {
          if (v31 < 0)
          {
            goto LABEL_35;
          }

LABEL_49:
          v18 = v19[1];
          if (!v18)
          {
            v20 = v19 + 1;
            break;
          }
        }

        else
        {
          if (v23 >= v29)
          {
            goto LABEL_49;
          }

LABEL_35:
          v18 = *v19;
          v20 = v19;
          if (!*v19)
          {
            break;
          }
        }
      }
    }

    *v9 = 0;
    v9[1] = 0;
    v9[2] = v19;
    *v20 = v9;
    v32 = **a1;
    if (v32)
    {
      *a1 = v32;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
    a1[2] = (a1[2] + 1);
    v9 = v42;
    v43 = v42;
    if (v42)
    {
      v10 = *(v42 + 2);
      if (v10)
      {
        v33 = *v10;
        if (*v10 == v42)
        {
          *v10 = 0;
          while (1)
          {
            v36 = *(v10 + 1);
            if (!v36)
            {
              break;
            }

            do
            {
              v10 = v36;
              v36 = *v36;
            }

            while (v36);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v33; v33 = *(v10 + 1))
          {
            do
            {
              v10 = v33;
              v33 = *v33;
            }

            while (v33);
          }
        }
      }

      v42 = v10;
      v34 = v13[1];
      if (!v34)
      {
        do
        {
LABEL_64:
          v4 = v13[2];
          v35 = *v4 == v13;
          v13 = v4;
        }

        while (!v35);
        goto LABEL_66;
      }
    }

    else
    {
      v10 = 0;
      v34 = v13[1];
      if (!v34)
      {
        goto LABEL_64;
      }
    }

    do
    {
      v4 = v34;
      v34 = *v34;
    }

    while (v34);
LABEL_66:
    if (!v9)
    {
      break;
    }

    v13 = v4;
  }

  while (v4 != a3);
  v12 = a1;
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, v9);
  if (v10)
  {
LABEL_74:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(v12, v10);
  }

LABEL_77:
  if (v4 != a3)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_multi<std::pair<std::string const,std::vector<unsigned char>> const&>(a1, v4 + 2);
      v38 = v4[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v4[2];
          v35 = *v39 == v4;
          v4 = v39;
        }

        while (!v35);
      }

      v4 = v39;
    }

    while (v39 != a3);
  }
}

void sub_1E52E6C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(*a1, v2);
  }

  return a1;
}

char *std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_multi<std::pair<std::string const,std::vector<unsigned char>> const&>(uint64_t ***a1, __int128 *a2)
{
  v4 = operator new(0x50uLL);
  v5 = std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100]((v4 + 32), a2);
  v7 = (a1 + 1);
  v6 = a1[1];
  if (!v6)
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = v7;
    *v7 = v4;
    v21 = **a1;
    if (v21)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v8 = v4[55];
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = *(v4 + 4);
  }

  if (v8 >= 0)
  {
    v10 = v4[55];
  }

  else
  {
    v10 = *(v4 + 5);
  }

  do
  {
    while (1)
    {
      v12 = v6;
      v15 = v6[4];
      v13 = v6 + 4;
      v14 = v15;
      v16 = *(v13 + 23);
      v17 = v16 >= 0 ? v13 : v14;
      v18 = v16 >= 0 ? *(v13 + 23) : v13[1];
      v19 = v18 >= v10 ? v10 : v18;
      v20 = memcmp(v9, v17, v19);
      if (v20)
      {
        break;
      }

      if (v10 >= v18)
      {
        goto LABEL_22;
      }

LABEL_8:
      v6 = *v12;
      v11 = v12;
      if (!*v12)
      {
        goto LABEL_24;
      }
    }

    if (v20 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v6 = v12[1];
  }

  while (v6);
  v11 = v12 + 1;
LABEL_24:
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v12;
  *v11 = v4;
  v21 = **a1;
  if (v21)
  {
LABEL_25:
    *a1 = v21;
  }

LABEL_26:
  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v4);
  a1[2] = (a1[2] + 1);
  return v4;
}

void sub_1E52E6E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t createETLStructures(uint64_t *a1, void **a2, _DWORD *a3)
{
  if (!a1 || !a2)
  {
    _BBUFSDebugPrint("createETLStructures", "bad arguments header = %p, ringBuffer = %p\n", a2, a1);
    return 0;
  }

  v6 = malloc(0x8000uLL);
  *a2 = v6;
  if (!v6)
  {
    _BBUFSDebugPrint("createETLStructures", "failed allocating memory for header\n");
    v11 = *a2;
    if (!*a2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a3)
  {
    *a3 = 0x8000;
  }

  v7 = malloc(0x1000uLL);
  if (!v7)
  {
    _BBUFSDebugPrint("createETLStructures", "failed allocating memory for scratch buffer\n");
    v11 = *a2;
    if (!*a2)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v11);
    *a2 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = malloc(0x18uLL);
  *a1 = v9;
  if (v9)
  {
    if (TelephonyUtilRingBufferInitialize())
    {
      return 1;
    }

    _BBUFSDebugPrint("createETLStructures", "failed initializing ring buffer\n");
  }

  else
  {
    _BBUFSDebugPrint("createETLStructures", "failed allocating TelephonyUtilRingBuffer\n");
  }

  free(v8);
  v11 = *a2;
  if (*a2)
  {
    goto LABEL_19;
  }

LABEL_20:
  result = *a1;
  if (*a1)
  {
    free(result);
    result = 0;
    *a1 = 0;
  }

  return result;
}

void *BBUInitializer::create(BBUInitializer *this, BBUFeedback *a2)
{
  InitializerVersion = capabilities::updater::getInitializerVersion(this);
  if (InitializerVersion <= 1)
  {
    if (InitializerVersion != 1)
    {
      if (InitializerVersion)
      {
        return v2;
      }

      goto LABEL_12;
    }

    v9 = operator new(0x1E0uLL);
    *v9 = &unk_1F5F02D68;
    v9[1] = this;
    v9[2] = 0;
    *(v9 + 24) = 0;
    *(v9 + 28) = 0;
    *(v9 + 32) = 0;
    *(v9 + 9) = 0;
    *(v9 + 40) = 1;
    v9[6] = 0;
    v10 = capabilities::updater::pingAttemptCount(v9);
    v9[57] = v10;
    v11 = capabilities::updater::NVRestoreTimeout(v10);
    *(v9 + 116) = v11;
    v12 = capabilities::updater::personalizationCommandTimeout(v11);
    *(v9 + 117) = v12;
    *(v9 + 118) = capabilities::updater::pingTimeout(v12);
    *v9 = &unk_1F5F05518;
    return v9;
  }

  else
  {
    if (InitializerVersion != 2)
    {
      if (InitializerVersion == 3)
      {
        v2 = operator new(0x1E0uLL);
        *v2 = &unk_1F5F02D68;
        v2[1] = this;
        v2[2] = 0;
        *(v2 + 24) = 0;
        *(v2 + 28) = 0;
        *(v2 + 32) = 0;
        *(v2 + 9) = 0;
        *(v2 + 40) = 1;
        v2[6] = 0;
        v5 = capabilities::updater::pingAttemptCount(v2);
        v2[57] = v5;
        v6 = capabilities::updater::NVRestoreTimeout(v5);
        *(v2 + 116) = v6;
        v7 = capabilities::updater::personalizationCommandTimeout(v6);
        *(v2 + 117) = v7;
        *(v2 + 118) = capabilities::updater::pingTimeout(v7);
        *v2 = &unk_1F5F06360;
        return v2;
      }

      if (InitializerVersion != 4)
      {
        return v2;
      }

LABEL_12:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Initialization/Common/BBUInitializer.cpp", 0x3Du, "Assertion failure(false && Invalid radio type!)");
    }

    v13 = operator new(0x1E0uLL);
    *v13 = &unk_1F5F02D68;
    v13[1] = this;
    v13[2] = 0;
    *(v13 + 24) = 0;
    *(v13 + 28) = 0;
    *(v13 + 32) = 0;
    *(v13 + 9) = 0;
    *(v13 + 40) = 1;
    v13[6] = 0;
    v14 = capabilities::updater::pingAttemptCount(v13);
    v13[57] = v14;
    v15 = capabilities::updater::NVRestoreTimeout(v14);
    *(v13 + 116) = v15;
    v16 = capabilities::updater::personalizationCommandTimeout(v15);
    *(v13 + 117) = v16;
    *(v13 + 118) = capabilities::updater::pingTimeout(v16);
    *v13 = &unk_1F5EFF030;
    return v13;
  }
}

uint64_t BBUInitializer::pingBlocking(BBUFeedback **a1, uint64_t a2)
{
  v4 = (*(*a1 + 14))(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = v4 - 1;
  while (1)
  {
    v7 = (*(*a1 + 27))(a1, a2, v5);
    if (!v7)
    {
      break;
    }

    BBUFeedback::handleComment(a1[1], "Ping failed, %u tries left", v6);
    v5 = (v5 + 1);
    if (--v6 == -1)
    {
      return v7;
    }
  }

  BBUFeedback::handleComment(a1[1], "Ping success");
  return v7;
}

uint64_t BBUInitializer::powercycle(uint64_t a1, uint64_t a2)
{
  result = TelephonyBasebandPowercycleModem();
  if (result)
  {

    return TelephonyBasebandPowerOnModem();
  }

  return result;
}

uint64_t BBUInitializer::getPingAttempts(BBUInitializer *this)
{
  if (*(this + 28) == 1)
  {
    return *(this + 6);
  }

  else
  {
    return (*(*this + 272))();
  }
}

uint64_t BBUInitializer::setPingAttempts(BBUInitializer *this, int a2)
{
  if ((*(*this + 272))(this) != a2)
  {
    v4 = *(this + 1);
    v5 = (*(*this + 272))(this);
    BBUFeedback::handleComment(v4, "Ping attempts set to %u from %u", a2, v5);
  }

  *(this + 6) = a2;
  *(this + 28) = 1;
  return 0;
}

void BBUInitializer::setBootMode(uint64_t a1, unsigned int a2)
{
  *(a1 + 36) = a2;
  v2 = *(a1 + 8);
  if (a2 > 2)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = off_1E876E6E0[a2];
  }

  BBUFeedback::handleComment(v2, "Requested boot mode:  %s", v3);
}

void BBUInitializer::setResetDelayMilliseconds(BBUInitializer *this, int a2)
{
  if ((*(*this + 168))(this) != a2)
  {
    v4 = *(this + 1);
    v5 = (*(*this + 168))(this);
    BBUFeedback::handleComment(v4, "Setting reset delay to %u from %u", a2, v5);
    *(this + 115) = a2;
  }
}

uint64_t DaleFirmware_Coredump::create@<X0>(uint64_t a1@<X0>, ACFUFirmware **a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x158uLL);
  v5 = v4;
  LOBYTE(v12[0]) = 0;
  v6 = *(a1 + 24);
  if (v6 == 1)
  {
    *v12 = *a1;
    v13 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    LOBYTE(__p) = 0;
    v7 = *(a1 + 56);
    if (v7 != 1)
    {
LABEL_3:
      LOBYTE(v16) = 0;
      v8 = *(a1 + 88);
      if (v8 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    LOBYTE(__p) = 0;
    v7 = *(a1 + 56);
    if (v7 != 1)
    {
      goto LABEL_3;
    }
  }

  __p = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  LOBYTE(v16) = 0;
  v8 = *(a1 + 88);
  if (v8 == 1)
  {
LABEL_4:
    v16 = *(a1 + 64);
    v17 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
  }

LABEL_5:
  ACFUFirmware::ACFUFirmware(v4);
  *(v5 + 29) = 0;
  *(v5 + 216) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *v5 = &unk_1F5F02EA0;
  *(v5 + 240) = 0;
  *(v5 + 264) = 0;
  if (v6)
  {
    *(v5 + 15) = *v12;
    *(v5 + 32) = v13;
    HIBYTE(v13) = 0;
    v12[0] = 0;
    *(v5 + 264) = 1;
    *(v5 + 272) = 0;
    *(v5 + 296) = 0;
    if (!v7)
    {
LABEL_7:
      *(v5 + 304) = 0;
      *(v5 + 328) = 0;
      if (!v8)
      {
        goto LABEL_8;
      }

LABEL_15:
      *(v5 + 19) = v16;
      *(v5 + 40) = v17;
      *(v5 + 328) = 1;
      *(v5 + 42) = 0;
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    *(v5 + 272) = 0;
    *(v5 + 296) = 0;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  *(v5 + 17) = __p;
  *(v5 + 36) = v15;
  HIBYTE(v15) = 0;
  *&__p = 0;
  *(v5 + 296) = 1;
  *(v5 + 304) = 0;
  *(v5 + 328) = 0;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_8:
  *(v5 + 42) = 0;
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

LABEL_18:
  if (v6 && SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  result = (*(*v5 + 104))(v5);
  if (result)
  {
    *a2 = v5;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init firmware object\n", "DaleFirmware_Coredump", "create");
    v11 = *(*v5 + 56);

    return v11(v5);
  }

  return result;
}

void sub_1E52E7888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DaleFirmwareParams::~DaleFirmwareParams(va);
  operator delete(v6);
  *v5 = 0;
  _Unwind_Resume(a1);
}

void sub_1E52E78B0(_Unwind_Exception *a1)
{
  (*(*v2 + 56))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleFirmware_Coredump::init(DaleFirmware_Coredump *this)
{
  if (*(this + 264) == 1)
  {
    if (*(this + 263) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *(this + 30), *(this + 31));
    }

    else
    {
      v17 = *(this + 10);
    }
  }

  else
  {
    capabilities::radio::personalizedFirmwarePath(&v17, this);
  }

  DaleFirmware::setPath_Firmware(this, &v17);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(this + 296) == 1)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
    *&v16.__r_.__value_.__r.__words[1] = xmmword_1E5392800;
    strcpy(v16.__r_.__value_.__l.__data_, "/var/wireless/baseband_data/bbfs/");
    goto LABEL_13;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if (*(this + 296) != 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(this + 295) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(this + 34), *(this + 35));
  }

  else
  {
    v16 = *(this + 272);
  }

LABEL_13:
  DaleFirmware::setPath_Dynamic(this, &v16);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(this + 328) == 1)
    {
      goto LABEL_15;
    }

LABEL_18:
    v15.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
    *&v15.__r_.__value_.__r.__words[1] = xmmword_1E5390FE0;
    strcpy(v15.__r_.__value_.__l.__data_, "/var/wireless/baseband_data/");
    goto LABEL_20;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (*(this + 328) != 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(this + 327) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(this + 38), *(this + 39));
  }

  else
  {
    v15 = *(this + 304);
  }

LABEL_20:
  DaleFirmware::setPath_Fdr(this, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
    v3 = this + 88;
    LogInstance = ACFULogging::getLogInstance(v7);
    v5 = *(this + 111);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_22:
      if (v5)
      {
        v6 = v3;
      }

      else
      {
        v6 = "empty";
      }

      goto LABEL_29;
    }
  }

  else
  {
    v3 = this + 88;
    LogInstance = ACFULogging::getLogInstance(v2);
    v5 = *(this + 111);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*(this + 12))
  {
    v6 = *(this + 11);
  }

  else
  {
    v6 = "empty";
  }

LABEL_29:
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: verifying firmware path... (%s)\n", "DaleFirmware_Coredump", "verifyDefaultPath_Firmware", v6);
  is_directory = ctu::fs::file_exists();
  if (is_directory)
  {
    is_directory = ctu::fs::is_directory();
    if (is_directory)
    {
      result = DaleFirmware::createImage_Loader(this);
      if (result)
      {
        result = (*(*this + 96))(this);
        if (result)
        {
          result = DaleFirmware::createImage_BBTicket(this);
          if (result)
          {
            return DaleFirmware::createImage_SystemBundle(this);
          }
        }
      }

      return result;
    }

    v10 = "%s::%s: firmware path is not a directory (%s)\n";
  }

  else
  {
    v10 = "%s::%s: firmware directory does not exist (%s)\n";
  }

  v11 = ACFULogging::getLogInstance(is_directory);
  if (*(this + 111) >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = *(this + 11);
  }

  v13 = ACFULogging::handleMessage(v11, 2, v10, "DaleFirmware_Coredump", "verifyDefaultPath_Firmware", v12);
  v14 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v14, 2, "%s::%s: failed to verify firmware path\n", "DaleFirmware_Coredump", "init");
  return 0;
}

void sub_1E52E7C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL DaleFirmware_Coredump::createImage_DDR(DaleFirmware_Coredump *this)
{
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(this + 14), *(this + 15));
  }

  else
  {
    v7 = *(this + 112);
  }

  v2 = DaleImage_DDR::create(&v7, &v8);
  v3 = v8;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    v4 = *(this + 42);
    *(this + 42) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    return v3 != 0;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create ddr image\n", "DaleFirmware_Coredump", "createImage_DDR");
    return 0;
  }
}

void sub_1E52E7D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DaleFirmware_Coredump::~DaleFirmware_Coredump(DaleFirmware_Coredump *this)
{
  *this = &unk_1F5F02EA0;
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 328) == 1 && *(this + 327) < 0)
  {
    operator delete(*(this + 38));
    if (*(this + 296) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(this + 296) != 1)
  {
    goto LABEL_9;
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

LABEL_9:
  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(*(this + 30));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  DaleFirmware::~DaleFirmware(v3);
}

{
  *this = &unk_1F5F02EA0;
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 328) == 1 && *(this + 327) < 0)
  {
    operator delete(*(this + 38));
    if (*(this + 296) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(this + 296) != 1)
  {
    goto LABEL_9;
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

LABEL_9:
  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(*(this + 30));
    DaleFirmware::~DaleFirmware(this);
  }

  else
  {
    DaleFirmware::~DaleFirmware(this);
  }

  operator delete(v3);
}

uint64_t eUICC::logEUICCData(int *a1, uint64_t a2, unint64_t a3)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v4 = *(a1 + 5);
  v5 = *a1;
  ctu::hex(v26, (a1 + 7), 0x10);
  if (v27 >= 0)
  {
    v6 = v26;
  }

  else
  {
    v6 = v26[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "status 0x%x sw1_sw2 0x%x eid 0x%s op_mode 0x%hhx\n", v5, v4, v6, *(a1 + 23));
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v7 = v26;
  ctu::hex(v26, (a1 + 6), 0x20);
  if (v27 < 0)
  {
    v7 = v26[0];
  }

  ctu::hex(v24, (a1 + 14), 8);
  v8 = v25;
  v9 = v24[0];
  ctu::hex(__p, (a1 + 16), 8);
  v10 = v24;
  if (v8 < 0)
  {
    v10 = v9;
  }

  if (v23 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "current_fw_version %s main_fw_nonce 0x%s gold_fw_nonce 0x%s\n", v7, v10, v11);
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_19:
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_45:
      operator delete(v26[0]);
      if (gBBULogMaskGet(void)::once == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v24[0]);
  if (v27 < 0)
  {
    goto LABEL_45;
  }

LABEL_20:
  if (gBBULogMaskGet(void)::once == -1)
  {
    goto LABEL_21;
  }

LABEL_46:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
LABEL_21:
  ctu::hex(v26, (a1 + 18), 0x10);
  v12 = v27;
  v13 = v26[0];
  ctu::hex(v24, (a1 + 147), 0x10);
  if (v12 >= 0)
  {
    v14 = v26;
  }

  else
  {
    v14 = v13;
  }

  if (v25 >= 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "main_fw_pcf_mac 0x%s gold_fw_pcf_mac 0x%s pcf_version 0x%x\n", v14, v15, *(a1 + 111));
  if ((v25 & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_48:
    operator delete(v26[0]);
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_49;
  }

  operator delete(v24[0]);
  if (v27 < 0)
  {
    goto LABEL_48;
  }

LABEL_29:
  if (gBBULogMaskGet(void)::once == -1)
  {
    goto LABEL_30;
  }

LABEL_49:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
LABEL_30:
  ctu::hex(v26, (a1 + 60), 3);
  v16 = v27;
  v17 = v26[0];
  ctu::hex(v24, (a1 + 243), 0x20);
  if (v16 >= 0)
  {
    v18 = v26;
  }

  else
  {
    v18 = v17;
  }

  if (v25 >= 0)
  {
    v19 = v24;
  }

  else
  {
    v19 = v24[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "loader_version 0x%s key_id 0x%s perso %d\n", v18, v19, *(a1 + 4));
  if ((v25 & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_51:
    operator delete(v26[0]);
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  operator delete(v24[0]);
  if (v27 < 0)
  {
    goto LABEL_51;
  }

LABEL_38:
  if (gBBULogMaskGet(void)::once == -1)
  {
    goto LABEL_39;
  }

LABEL_52:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
LABEL_39:
  if (*(a1 + 278))
  {
    v20 = "Yes";
  }

  else
  {
    v20 = "No";
  }

  return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "chip_id 0x%x stream_apdu_max_apdus 0x%x isAbsentOk: %s\n", *(a1 + 275), *(a1 + 276), v20);
}

void sub_1E52E8384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if (*(v25 - 49) < 0)
    {
LABEL_6:
      operator delete(*(v25 - 72));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v25 - 49) < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(exception_object);
}

void BBUEUR10Programmer::~BBUEUR10Programmer(BBUEUR10Programmer *this)
{
  *this = &unk_1F5F044E0;
  if (*(this + 4327) < 0)
  {
    operator delete(*(this + 538));
  }

  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));

  BBUProgrammer::~BBUProgrammer(this);
}

{
  *this = &unk_1F5F044E0;
  if (*(this + 4327) < 0)
  {
    operator delete(*(this + 538));
  }

  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));

  BBUProgrammer::~BBUProgrammer(this);
}

{
  *this = &unk_1F5F044E0;
  if (*(this + 4327) < 0)
  {
    operator delete(*(this + 538));
  }

  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));
  BBUProgrammer::~BBUProgrammer(this);

  operator delete(v2);
}

uint64_t *BBUEUR20Programmer::addProgressBarTimes(uint64_t *this, BBUFeedback *a2)
{
  v2 = this;
  v4 = this + 2;
  v3 = this[2];
  v5 = this + 2;
  v6 = this + 2;
  if (v3)
  {
    v7 = this[2];
    while (1)
    {
      while (1)
      {
        v6 = v7;
        v8 = *(v7 + 32);
        if (v8 < 2)
        {
          break;
        }

        v7 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v8 == 1)
      {
        break;
      }

      v7 = v6[1];
      if (!v7)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = v6;
    v6 = operator new(0x30uLL);
    *(v6 + 8) = 1;
    v6[5] = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v9;
    *v5 = v6;
    v10 = *v2[1];
    if (v10)
    {
      v2[1] = v10;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v6);
    v3 = v2[2];
    ++v2[3];
  }

  v6[5] = 0x408F400000000000;
  v11 = v4;
  v12 = v4;
  if (v3)
  {
    while (1)
    {
      while (1)
      {
        v12 = v3;
        v13 = *(v3 + 32);
        if (v13 < 13)
        {
          break;
        }

        v3 = *v12;
        v11 = v12;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if (v13 == 12)
      {
        break;
      }

      v3 = v12[1];
      if (!v3)
      {
        v11 = v12 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v14 = v12;
    v12 = operator new(0x30uLL);
    *(v12 + 8) = 12;
    v12[5] = 0;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v14;
    *v11 = v12;
    v15 = *v2[1];
    if (v15)
    {
      v2[1] = v15;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v12);
    ++v2[3];
  }

  v12[5] = 0x4103880000000000;
  v16 = *v4;
  v17 = v4;
  v18 = v4;
  if (*v4)
  {
    v19 = *v4;
    while (1)
    {
      while (1)
      {
        v18 = v19;
        v20 = *(v19 + 32);
        if (v20 < 10)
        {
          break;
        }

        v19 = *v18;
        v17 = v18;
        if (!*v18)
        {
          goto LABEL_28;
        }
      }

      if (v20 == 9)
      {
        break;
      }

      v19 = v18[1];
      if (!v19)
      {
        v17 = v18 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v21 = v18;
    v18 = operator new(0x30uLL);
    *(v18 + 8) = 9;
    v18[5] = 0;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v21;
    *v17 = v18;
    v22 = *v2[1];
    if (v22)
    {
      v2[1] = v22;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v18);
    v16 = v2[2];
    ++v2[3];
  }

  v18[5] = 0x40B3880000000000;
  v23 = v4;
  v24 = v4;
  if (v16)
  {
    while (1)
    {
      while (1)
      {
        v24 = v16;
        v25 = *(v16 + 32);
        if (v25 < 14)
        {
          break;
        }

        v16 = *v24;
        v23 = v24;
        if (!*v24)
        {
          goto LABEL_38;
        }
      }

      if (v25 == 13)
      {
        break;
      }

      v16 = v24[1];
      if (!v16)
      {
        v23 = v24 + 1;
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v26 = v24;
    v24 = operator new(0x30uLL);
    *(v24 + 8) = 13;
    v24[5] = 0;
    *v24 = 0;
    v24[1] = 0;
    v24[2] = v26;
    *v23 = v24;
    v27 = *v2[1];
    if (v27)
    {
      v2[1] = v27;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v24);
    ++v2[3];
  }

  v24[5] = 0x409F400000000000;
  v28 = *v4;
  v29 = v4;
  v30 = v4;
  if (*v4)
  {
    v31 = *v4;
    while (1)
    {
      while (1)
      {
        v30 = v31;
        v32 = *(v31 + 32);
        if (v32 < 29)
        {
          break;
        }

        v31 = *v30;
        v29 = v30;
        if (!*v30)
        {
          goto LABEL_48;
        }
      }

      if (v32 == 28)
      {
        break;
      }

      v31 = v30[1];
      if (!v31)
      {
        v29 = v30 + 1;
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    v33 = v30;
    v30 = operator new(0x30uLL);
    *(v30 + 8) = 28;
    v30[5] = 0;
    *v30 = 0;
    v30[1] = 0;
    v30[2] = v33;
    *v29 = v30;
    v34 = *v2[1];
    if (v34)
    {
      v2[1] = v34;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v30);
    v28 = v2[2];
    ++v2[3];
  }

  v30[5] = 0x40A7700000000000;
  v35 = v4;
  v36 = v4;
  if (v28)
  {
    while (1)
    {
      while (1)
      {
        v36 = v28;
        v37 = *(v28 + 32);
        if (v37 < 28)
        {
          break;
        }

        v28 = *v36;
        v35 = v36;
        if (!*v36)
        {
          goto LABEL_58;
        }
      }

      if (v37 == 27)
      {
        break;
      }

      v28 = v36[1];
      if (!v28)
      {
        v35 = v36 + 1;
        goto LABEL_58;
      }
    }
  }

  else
  {
LABEL_58:
    v38 = v36;
    v36 = operator new(0x30uLL);
    *(v36 + 8) = 27;
    v36[5] = 0;
    *v36 = 0;
    v36[1] = 0;
    v36[2] = v38;
    *v35 = v36;
    v39 = *v2[1];
    if (v39)
    {
      v2[1] = v39;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v36);
    ++v2[3];
  }

  v36[5] = 0x4071D00000000000;
  v40 = *v4;
  v41 = v4;
  v42 = v4;
  if (*v4)
  {
    v43 = *v4;
    while (1)
    {
      while (1)
      {
        v42 = v43;
        v44 = *(v43 + 32);
        if (v44 < 23)
        {
          break;
        }

        v43 = *v42;
        v41 = v42;
        if (!*v42)
        {
          goto LABEL_68;
        }
      }

      if (v44 == 22)
      {
        break;
      }

      v43 = v42[1];
      if (!v43)
      {
        v41 = v42 + 1;
        goto LABEL_68;
      }
    }
  }

  else
  {
LABEL_68:
    v45 = v42;
    v42 = operator new(0x30uLL);
    *(v42 + 8) = 22;
    v42[5] = 0;
    *v42 = 0;
    v42[1] = 0;
    v42[2] = v45;
    *v41 = v42;
    v46 = *v2[1];
    if (v46)
    {
      v2[1] = v46;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v42);
    v40 = v2[2];
    ++v2[3];
  }

  v42[5] = 0x4072200000000000;
  v47 = v4;
  v48 = v4;
  if (v40)
  {
    while (1)
    {
      while (1)
      {
        v48 = v40;
        v49 = *(v40 + 32);
        if (v49 < 11)
        {
          break;
        }

        v40 = *v48;
        v47 = v48;
        if (!*v48)
        {
          goto LABEL_78;
        }
      }

      if (v49 == 10)
      {
        break;
      }

      v40 = v48[1];
      if (!v40)
      {
        v47 = v48 + 1;
        goto LABEL_78;
      }
    }
  }

  else
  {
LABEL_78:
    v50 = v48;
    v48 = operator new(0x30uLL);
    *(v48 + 8) = 10;
    v48[5] = 0;
    *v48 = 0;
    v48[1] = 0;
    v48[2] = v50;
    *v47 = v48;
    v51 = *v2[1];
    if (v51)
    {
      v2[1] = v51;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v48);
    ++v2[3];
  }

  v48[5] = 0x406F400000000000;
  v52 = *v4;
  v53 = v4;
  v54 = v4;
  if (*v4)
  {
    v55 = *v4;
    while (1)
    {
      while (1)
      {
        v54 = v55;
        v56 = *(v55 + 32);
        if (v56 < 27)
        {
          break;
        }

        v55 = *v54;
        v53 = v54;
        if (!*v54)
        {
          goto LABEL_88;
        }
      }

      if (v56 == 26)
      {
        break;
      }

      v55 = v54[1];
      if (!v55)
      {
        v53 = v54 + 1;
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v57 = v54;
    v54 = operator new(0x30uLL);
    *(v54 + 8) = 26;
    v54[5] = 0;
    *v54 = 0;
    v54[1] = 0;
    v54[2] = v57;
    *v53 = v54;
    v58 = *v2[1];
    if (v58)
    {
      v2[1] = v58;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v54);
    v52 = v2[2];
    ++v2[3];
  }

  v54[5] = 0x4062C00000000000;
  v59 = v4;
  v60 = v4;
  if (v52)
  {
    while (1)
    {
      while (1)
      {
        v60 = v52;
        v61 = *(v52 + 32);
        if (v61 < 25)
        {
          break;
        }

        v52 = *v60;
        v59 = v60;
        if (!*v60)
        {
          goto LABEL_98;
        }
      }

      if (v61 == 24)
      {
        break;
      }

      v52 = v60[1];
      if (!v52)
      {
        v59 = v60 + 1;
        goto LABEL_98;
      }
    }
  }

  else
  {
LABEL_98:
    v62 = v60;
    v60 = operator new(0x30uLL);
    *(v60 + 8) = 24;
    v60[5] = 0;
    *v60 = 0;
    v60[1] = 0;
    v60[2] = v62;
    *v59 = v60;
    v63 = *v2[1];
    if (v63)
    {
      v2[1] = v63;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v60);
    ++v2[3];
  }

  v60[5] = 0x4051800000000000;
  v64 = *v4;
  v65 = v4;
  v66 = v4;
  if (*v4)
  {
    v67 = *v4;
    while (1)
    {
      while (1)
      {
        v66 = v67;
        v68 = *(v67 + 32);
        if (v68 < 30)
        {
          break;
        }

        v67 = *v66;
        v65 = v66;
        if (!*v66)
        {
          goto LABEL_108;
        }
      }

      if (v68 == 29)
      {
        break;
      }

      v67 = v66[1];
      if (!v67)
      {
        v65 = v66 + 1;
        goto LABEL_108;
      }
    }
  }

  else
  {
LABEL_108:
    v69 = v66;
    v66 = operator new(0x30uLL);
    *(v66 + 8) = 29;
    v66[5] = 0;
    *v66 = 0;
    v66[1] = 0;
    v66[2] = v69;
    *v65 = v66;
    v70 = *v2[1];
    if (v70)
    {
      v2[1] = v70;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v66);
    v64 = v2[2];
    ++v2[3];
  }

  v66[5] = 0x4039000000000000;
  v71 = v4;
  v72 = v4;
  if (v64)
  {
    while (1)
    {
      while (1)
      {
        v72 = v64;
        v73 = *(v64 + 32);
        if (v73 < 31)
        {
          break;
        }

        v64 = *v72;
        v71 = v72;
        if (!*v72)
        {
          goto LABEL_118;
        }
      }

      if (v73 == 30)
      {
        break;
      }

      v64 = v72[1];
      if (!v64)
      {
        v71 = v72 + 1;
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    v74 = v72;
    v72 = operator new(0x30uLL);
    *(v72 + 8) = 30;
    v72[5] = 0;
    *v72 = 0;
    v72[1] = 0;
    v72[2] = v74;
    *v71 = v72;
    v75 = *v2[1];
    if (v75)
    {
      v2[1] = v75;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v72);
    ++v2[3];
  }

  v72[5] = 0x4039000000000000;
  v76 = *v4;
  v77 = v4;
  v78 = v4;
  if (*v4)
  {
    v79 = *v4;
    while (1)
    {
      while (1)
      {
        v78 = v79;
        v80 = *(v79 + 32);
        if (v80 < 24)
        {
          break;
        }

        v79 = *v78;
        v77 = v78;
        if (!*v78)
        {
          goto LABEL_128;
        }
      }

      if (v80 == 23)
      {
        break;
      }

      v79 = v78[1];
      if (!v79)
      {
        v77 = v78 + 1;
        goto LABEL_128;
      }
    }
  }

  else
  {
LABEL_128:
    v81 = v78;
    v78 = operator new(0x30uLL);
    *(v78 + 8) = 23;
    v78[5] = 0;
    *v78 = 0;
    v78[1] = 0;
    v78[2] = v81;
    *v77 = v78;
    v82 = *v2[1];
    if (v82)
    {
      v2[1] = v82;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v78);
    v76 = v2[2];
    ++v2[3];
  }

  v78[5] = 0x4039000000000000;
  v83 = v4;
  v84 = v4;
  if (v76)
  {
    while (1)
    {
      while (1)
      {
        v84 = v76;
        v85 = *(v76 + 32);
        if (v85 < 26)
        {
          break;
        }

        v76 = *v84;
        v83 = v84;
        if (!*v84)
        {
          goto LABEL_138;
        }
      }

      if (v85 == 25)
      {
        break;
      }

      v76 = v84[1];
      if (!v76)
      {
        v83 = v84 + 1;
        goto LABEL_138;
      }
    }
  }

  else
  {
LABEL_138:
    v86 = v84;
    v84 = operator new(0x30uLL);
    *(v84 + 8) = 25;
    v84[5] = 0;
    *v84 = 0;
    v84[1] = 0;
    v84[2] = v86;
    *v83 = v84;
    v87 = *v2[1];
    if (v87)
    {
      v2[1] = v87;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v84);
    ++v2[3];
  }

  v84[5] = 0x4039000000000000;
  v88 = *v4;
  v89 = v4;
  v90 = v4;
  if (*v4)
  {
    v91 = *v4;
    while (1)
    {
      while (1)
      {
        v90 = v91;
        v92 = *(v91 + 32);
        if (v92 < 32)
        {
          break;
        }

        v91 = *v90;
        v89 = v90;
        if (!*v90)
        {
          goto LABEL_148;
        }
      }

      if (v92 == 31)
      {
        break;
      }

      v91 = v90[1];
      if (!v91)
      {
        v89 = v90 + 1;
        goto LABEL_148;
      }
    }
  }

  else
  {
LABEL_148:
    v93 = v90;
    v90 = operator new(0x30uLL);
    *(v90 + 8) = 31;
    v90[5] = 0;
    *v90 = 0;
    v90[1] = 0;
    v90[2] = v93;
    *v89 = v90;
    v94 = *v2[1];
    if (v94)
    {
      v2[1] = v94;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v90);
    v88 = v2[2];
    ++v2[3];
  }

  v90[5] = 0x4039000000000000;
  v95 = v4;
  v96 = v4;
  if (v88)
  {
    while (1)
    {
      while (1)
      {
        v96 = v88;
        v97 = *(v88 + 32);
        if (v97 < 33)
        {
          break;
        }

        v88 = *v96;
        v95 = v96;
        if (!*v96)
        {
          goto LABEL_158;
        }
      }

      if (v97 == 32)
      {
        break;
      }

      v88 = v96[1];
      if (!v88)
      {
        v95 = v96 + 1;
        goto LABEL_158;
      }
    }
  }

  else
  {
LABEL_158:
    v98 = v96;
    v96 = operator new(0x30uLL);
    *(v96 + 8) = 32;
    v96[5] = 0;
    *v96 = 0;
    v96[1] = 0;
    v96[2] = v98;
    *v95 = v96;
    v99 = *v2[1];
    if (v99)
    {
      v2[1] = v99;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v96);
    ++v2[3];
  }

  v96[5] = 0x4039000000000000;
  v100 = *v4;
  v101 = v4;
  v102 = v4;
  if (*v4)
  {
    v103 = *v4;
    while (1)
    {
      while (1)
      {
        v102 = v103;
        v104 = *(v103 + 32);
        if (v104 < 34)
        {
          break;
        }

        v103 = *v102;
        v101 = v102;
        if (!*v102)
        {
          goto LABEL_168;
        }
      }

      if (v104 == 33)
      {
        break;
      }

      v103 = v102[1];
      if (!v103)
      {
        v101 = v102 + 1;
        goto LABEL_168;
      }
    }
  }

  else
  {
LABEL_168:
    v105 = v102;
    v102 = operator new(0x30uLL);
    *(v102 + 8) = 33;
    v102[5] = 0;
    *v102 = 0;
    v102[1] = 0;
    v102[2] = v105;
    *v101 = v102;
    v106 = *v2[1];
    if (v106)
    {
      v2[1] = v106;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v102);
    v100 = v2[2];
    ++v2[3];
  }

  v102[5] = 0x4039000000000000;
  v107 = v4;
  v108 = v4;
  if (v100)
  {
    while (1)
    {
      while (1)
      {
        v108 = v100;
        v109 = *(v100 + 32);
        if (v109 < 16)
        {
          break;
        }

        v100 = *v108;
        v107 = v108;
        if (!*v108)
        {
          goto LABEL_178;
        }
      }

      if (v109 == 15)
      {
        break;
      }

      v100 = v108[1];
      if (!v100)
      {
        v107 = v108 + 1;
        goto LABEL_178;
      }
    }
  }

  else
  {
LABEL_178:
    v110 = v108;
    v108 = operator new(0x30uLL);
    *(v108 + 8) = 15;
    v108[5] = 0;
    *v108 = 0;
    v108[1] = 0;
    v108[2] = v110;
    *v107 = v108;
    v111 = *v2[1];
    if (v111)
    {
      v2[1] = v111;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v108);
    ++v2[3];
  }

  v108[5] = 0x3FF0000000000000;
  v112 = *v4;
  v113 = v4;
  v114 = v4;
  if (*v4)
  {
    v115 = *v4;
    while (1)
    {
      while (1)
      {
        v114 = v115;
        v116 = *(v115 + 32);
        if (v116 < 17)
        {
          break;
        }

        v115 = *v114;
        v113 = v114;
        if (!*v114)
        {
          goto LABEL_188;
        }
      }

      if (v116 == 16)
      {
        break;
      }

      v115 = v114[1];
      if (!v115)
      {
        v113 = v114 + 1;
        goto LABEL_188;
      }
    }
  }

  else
  {
LABEL_188:
    v117 = v114;
    v114 = operator new(0x30uLL);
    *(v114 + 8) = 16;
    v114[5] = 0;
    *v114 = 0;
    v114[1] = 0;
    v114[2] = v117;
    *v113 = v114;
    v118 = *v2[1];
    if (v118)
    {
      v2[1] = v118;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v114);
    v112 = v2[2];
    ++v2[3];
  }

  v114[5] = 0x3FF0000000000000;
  v119 = v4;
  v120 = v4;
  if (v112)
  {
    while (1)
    {
      while (1)
      {
        v120 = v112;
        v121 = *(v112 + 32);
        if (v121 < 18)
        {
          break;
        }

        v112 = *v120;
        v119 = v120;
        if (!*v120)
        {
          goto LABEL_198;
        }
      }

      if (v121 == 17)
      {
        break;
      }

      v112 = v120[1];
      if (!v112)
      {
        v119 = v120 + 1;
        goto LABEL_198;
      }
    }
  }

  else
  {
LABEL_198:
    v122 = v120;
    v120 = operator new(0x30uLL);
    *(v120 + 8) = 17;
    v120[5] = 0;
    *v120 = 0;
    v120[1] = 0;
    v120[2] = v122;
    *v119 = v120;
    v123 = *v2[1];
    if (v123)
    {
      v2[1] = v123;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v120);
    ++v2[3];
  }

  v120[5] = 0x3FF0000000000000;
  v124 = *v4;
  v125 = v4;
  v126 = v4;
  if (*v4)
  {
    v127 = *v4;
    while (1)
    {
      while (1)
      {
        v126 = v127;
        v128 = *(v127 + 32);
        if (v128 < 19)
        {
          break;
        }

        v127 = *v126;
        v125 = v126;
        if (!*v126)
        {
          goto LABEL_208;
        }
      }

      if (v128 == 18)
      {
        break;
      }

      v127 = v126[1];
      if (!v127)
      {
        v125 = v126 + 1;
        goto LABEL_208;
      }
    }
  }

  else
  {
LABEL_208:
    v129 = v126;
    v126 = operator new(0x30uLL);
    *(v126 + 8) = 18;
    v126[5] = 0;
    *v126 = 0;
    v126[1] = 0;
    v126[2] = v129;
    *v125 = v126;
    v130 = *v2[1];
    if (v130)
    {
      v2[1] = v130;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v126);
    v124 = v2[2];
    ++v2[3];
  }

  v126[5] = 0x3FF0000000000000;
  v131 = v4;
  v132 = v4;
  if (v124)
  {
    while (1)
    {
      while (1)
      {
        v132 = v124;
        v133 = *(v124 + 32);
        if (v133 < 20)
        {
          break;
        }

        v124 = *v132;
        v131 = v132;
        if (!*v132)
        {
          goto LABEL_218;
        }
      }

      if (v133 == 19)
      {
        break;
      }

      v124 = v132[1];
      if (!v124)
      {
        v131 = v132 + 1;
        goto LABEL_218;
      }
    }
  }

  else
  {
LABEL_218:
    v134 = v132;
    v132 = operator new(0x30uLL);
    *(v132 + 8) = 19;
    v132[5] = 0;
    *v132 = 0;
    v132[1] = 0;
    v132[2] = v134;
    *v131 = v132;
    v135 = *v2[1];
    if (v135)
    {
      v2[1] = v135;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v132);
    ++v2[3];
  }

  v132[5] = 0x3FF0000000000000;
  v136 = *v4;
  v137 = v4;
  if (*v4)
  {
    while (1)
    {
      while (1)
      {
        v137 = v136;
        v138 = *(v136 + 32);
        if (v138 < 21)
        {
          break;
        }

        v136 = *v137;
        v4 = v137;
        if (!*v137)
        {
          goto LABEL_228;
        }
      }

      if (v138 == 20)
      {
        break;
      }

      v136 = v137[1];
      if (!v136)
      {
        v4 = v137 + 1;
        goto LABEL_228;
      }
    }
  }

  else
  {
LABEL_228:
    v139 = v137;
    v137 = operator new(0x30uLL);
    *(v137 + 8) = 20;
    v137[5] = 0;
    *v137 = 0;
    v137[1] = 0;
    v137[2] = v139;
    *v4 = v137;
    v140 = *v2[1];
    if (v140)
    {
      v2[1] = v140;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[2], v137);
    ++v2[3];
  }

  v137[5] = 0x3FF0000000000000;
  return this;
}