void ParseDebugArgs(const void **a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v5)
  {
    v7 = (a2 + 40);
    if ((a2 + 40) != a1)
    {
      if (*(a2 + 63) < 0)
      {
        if (v4 >= 0)
        {
          v9 = a1;
        }

        else
        {
          v9 = *a1;
        }

        v10 = a1;
        std::string::__assign_no_alias<false>(v7, v9, v5);
      }

      else
      {
        if ((v4 & 0x80000000) == 0)
        {
          v8 = *a1;
          *(a2 + 56) = a1[2];
          *v7 = v8;
          goto LABEL_15;
        }

        v10 = a1;
        std::string::__assign_no_alias<true>(v7, *a1, a1[1]);
      }

      a1 = v10;
    }

LABEL_15:
    __p = 0;
    v45 = 0;
    v46 = 0;
    BBUStringToArgv(a1, &__p);
    *MEMORY[0x1E69E98F0] = 1;
    v11 = MEMORY[0x1E69E98E0];
    *MEMORY[0x1E69E9900] = 1;
    while (1)
    {
      v12 = __p;
      switch(getopt_long(((v45 - __p) >> 3) - 1, __p, "dmfl:tnp:iuseb:o:", &ParseDebugArgs(std::string &,UpdaterDebugArgs &,BOOL)::long_options, 0))
      {
        case -1:
          if (v12)
          {
            operator delete(v12);
          }

          return;
        case 98:
          if (!a3)
          {
            continue;
          }

          v13 = *v11;
          v14 = strlen(*v11);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_91;
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v32 = 25;
            }

            else
            {
              v32 = (v14 | 7) + 1;
            }

            v16 = operator new(v32);
            v41 = v15;
            v42 = v32 | 0x8000000000000000;
            v40 = v16;
LABEL_64:
            memmove(v16, v13, v15);
            v16[v15] = 0;
            v17 = SHIBYTE(v42);
            if ((SHIBYTE(v42) & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_65;
          }

          HIBYTE(v42) = v14;
          v16 = &v40;
          if (v14)
          {
            goto LABEL_64;
          }

          LOBYTE(v40) = 0;
          v17 = SHIBYTE(v42);
          if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
          {
LABEL_65:
            v18 = v40;
            v19 = v41;
            if (strncasecmp("ROM", v40, v41))
            {
              goto LABEL_66;
            }

            *(a2 + 64) = 0;
LABEL_86:
            operator delete(v18);
          }

          else
          {
LABEL_23:
            v18 = &v40;
            v19 = v17;
            if (!strncasecmp("ROM", &v40, v17))
            {
              *(a2 + 64) = 0;
            }

            else
            {
LABEL_66:
              if (!strncasecmp("PL", v18, v19))
              {
                v33 = 1;
              }

              else
              {
                v33 = 2;
              }

              *(a2 + 64) = v33;
              if ((v17 & 0x80000000) != 0)
              {
                v18 = v40;
                goto LABEL_86;
              }
            }
          }

          continue;
        case 100:
          *(a2 + 35) = 1;
          continue;
        case 101:
          *(a2 + 37) = 1;
          continue;
        case 102:
          if (a3)
          {
            *(a2 + 8) = 1;
          }

          continue;
        case 105:
          if (a3)
          {
            *(a2 + 32) = 1;
          }

          continue;
        case 108:
          *(a2 + 4) = atoi(*v11);
          continue;
        case 109:
          *(a2 + 36) = 1;
          continue;
        case 110:
          if (a3)
          {
            *(a2 + 9) = 1;
          }

          continue;
        case 111:
          if (!a3)
          {
            continue;
          }

          v24 = *v11;
          v25 = strlen(*v11);
          if (v25 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_91:
            std::string::__throw_length_error[abi:ne200100]();
          }

          v26 = v25;
          if (v25 >= 0x17)
          {
            if ((v25 | 7) == 0x17)
            {
              v34 = 25;
            }

            else
            {
              v34 = (v25 | 7) + 1;
            }

            v27 = operator new(v34);
            v38 = v26;
            v39 = v34 | 0x8000000000000000;
            v37 = v27;
LABEL_75:
            memmove(v27, v24, v26);
            v27[v26] = 0;
            v28 = SHIBYTE(v39);
            if ((SHIBYTE(v39) & 0x8000000000000000) != 0)
            {
              goto LABEL_76;
            }

LABEL_48:
            v18 = &v37;
            v29 = v28;
            if (strncasecmp("UART", &v37, v28))
            {
              goto LABEL_77;
            }

            *(a2 + 65) = 0;
          }

          else
          {
            HIBYTE(v39) = v25;
            v27 = &v37;
            if (v25)
            {
              goto LABEL_75;
            }

            LOBYTE(v37) = 0;
            v28 = SHIBYTE(v39);
            if ((SHIBYTE(v39) & 0x8000000000000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_76:
            v18 = v37;
            v29 = v38;
            if (!strncasecmp("UART", v37, v38))
            {
              *(a2 + 65) = 0;
              goto LABEL_86;
            }

LABEL_77:
            if (!strncasecmp("PCIE", v18, v29))
            {
              v35 = 1;
            }

            else
            {
              v35 = 2;
            }

            *(a2 + 65) = v35;
            if ((v28 & 0x80000000) != 0)
            {
              v18 = v37;
              goto LABEL_86;
            }
          }

          continue;
        case 112:
          if (!a3)
          {
            continue;
          }

          v20 = *v11;
          v21 = strlen(*v11);
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v22 = v21;
          if (v21 >= 0x17)
          {
            if ((v21 | 7) == 0x17)
            {
              v30 = 25;
            }

            else
            {
              v30 = (v21 | 7) + 1;
            }

            p_dst_1 = operator new(v30);
            __dst_1.__r_.__value_.__l.__size_ = v22;
            __dst_1.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
            __dst_1.__r_.__value_.__r.__words[0] = p_dst_1;
          }

          else
          {
            *(&__dst_1.__r_.__value_.__s + 23) = v21;
            p_dst_1 = &__dst_1;
            if (!v21)
            {
              goto LABEL_57;
            }
          }

          memmove(p_dst_1, v20, v22);
LABEL_57:
          p_dst_1->__r_.__value_.__s.__data_[v22] = 0;
          v31 = std::stol(&__dst_1, 0, 10);
          if (SHIBYTE(__dst_1.__r_.__value_.__r.__words[2]) < 0)
          {
            v36 = v31;
            operator delete(__dst_1.__r_.__value_.__l.__data_);
            v31 = v36;
            if ((v36 & 0x8000000000000000) == 0)
            {
LABEL_83:
              *(a2 + 16) = v31;
              *(a2 + 24) = 1;
            }
          }

          else if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_83;
          }

          break;
        case 115:
          if (a3)
          {
            *(a2 + 34) = 1;
          }

          continue;
        case 116:
          if (a3)
          {
            *a2 = 1;
          }

          continue;
        case 117:
          if (a3)
          {
            *(a2 + 33) = 1;
          }

          continue;
        default:
          continue;
      }
    }
  }
}

void sub_1E5342DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    v18 = a1;
    operator delete(__p);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *ParseUpdaterDebugArgs(const __CFDictionary *result, UpdaterDebugArgs *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = CFDictionaryGetValue(result, @"Options");
    if (result)
    {
      v3 = result;
      v12[0] = 0xAAAAAAAAAAAAAAAALL;
      v12[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v12, result);
      Bool = ctu::cf::map_adapter::getBool(v12, @"RestoreInternal");
      value = 0;
      if (!CFDictionaryGetValueIfPresent(v3, @"DebugArgs", &value))
      {
        return MEMORY[0x1E69265E0](v12);
      }

      v5 = CFGetTypeID(value);
      if (v5 != CFStringGetTypeID())
      {
        return MEMORY[0x1E69265E0](v12);
      }

      memset(__dst, 170, sizeof(__dst));
      memset(__b, 170, sizeof(__b));
      CFStringGetCString(value, __b, 1024, 0x8000100u);
      v6 = strlen(__b);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
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
        __dst[1] = v7;
        __dst[2] = (v9 | 0x8000000000000000);
        __dst[0] = v8;
      }

      else
      {
        HIBYTE(__dst[2]) = v6;
        v8 = __dst;
        if (!v6)
        {
LABEL_14:
          *(v7 + v8) = 0;
          ParseDebugArgs(__dst, a2, Bool);
          if (SHIBYTE(__dst[2]) < 0)
          {
            operator delete(__dst[0]);
          }

          return MEMORY[0x1E69265E0](v12);
        }
      }

      memcpy(v8, __b, v7);
      goto LABEL_14;
    }
  }

  return result;
}

void sub_1E5342F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    MEMORY[0x1E69265E0](&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E69265E0](&a17, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t UpdaterDebugArgs::print(UpdaterDebugArgs *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = *this;
  v4 = *(this + 1);
  v5 = *(this + 8);
  v6 = *(this + 9);
  v7 = *(this + 24);
  if (v7 == 1)
  {
    v8 = LogInstance;
    std::to_string(&v20, *(this + 2));
    LogInstance = v8;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v20;
    }

    else
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v9 = "(none)";
  }

  v10 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: No Timeout: %d, Log Level: %u, Force Success on Failure: %d, Bypass NVM Sync: %d, Ping Attempt Count Override: %s\n", "BBUpdaterCommon", "print", v3, v4, v5, v6, v9);
  if (v7 && SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v11 = ACFULogging::getLogInstance(v10);
  v12 = ACFULogging::handleMessage(v11, 3, "%s::%s: Allow Restore without Setting IMEISV: %d, Force Fuse: %d, Fusing Ignore Sec-Boot Status: %d, Demote Prod: %d, Demote Prod (NP): %d, Enable Transport Logs: %d\n", "BBUpdaterCommon", "print", *(this + 32), *(this + 33), *(this + 34), *(this + 35), *(this + 36), *(this + 37));
  v13 = ACFULogging::getLogInstance(v12);
  v14 = this + 40;
  if (*(this + 63) < 0)
  {
    v14 = *v14;
  }

  v15 = "Boot Logger Transport Unknown";
  if (!*(this + 65))
  {
    v15 = "Boot Logger Transport UART";
  }

  if (*(this + 65) == 1)
  {
    v16 = "Boot Logger Transport PCIE";
  }

  else
  {
    v16 = v15;
  }

  v17 = "Boot stage Unknown";
  if (!*(this + 64))
  {
    v17 = "Boot Logger ROM";
  }

  if (*(this + 64) == 1)
  {
    v18 = "Boot Logger PL";
  }

  else
  {
    v18 = v17;
  }

  return ACFULogging::handleMessage(v13, 3, "%s::%s: %s\n%s\nDebug args: %s\n", "BBUpdaterCommon", "print", v18, v16, v14);
}

void sub_1E534316C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    if (a23 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

DIR *BBUpdaterCommon::BBUReadDirectory(const char *a1, uint64_t *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v9 = 25;
          }

          else
          {
            v9 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v9);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v9 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            goto LABEL_15;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
LABEL_15:
        v8[d_namlen] = 0;
        v10 = operator new(0x28uLL);
        v11 = v10;
        *v10 = 0;
        *(v10 + 1) = 0;
        v12 = __dst[23];
        if ((__dst[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external((v10 + 16), *__dst, *&__dst[8]);
        }

        else
        {
          *(v10 + 1) = *__dst;
          *(v10 + 4) = *&__dst[16];
        }

        v13 = *a2;
        *v11 = *a2;
        v11[1] = a2;
        *(v13 + 8) = v11;
        *a2 = v11;
        ++a2[2];
        if (v12 < 0)
        {
          operator delete(*__dst);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_1E5343304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void *___ZN15BBUpdaterCommon15BBUMGCopyAnswerEPK10__CFString_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer = result;
  }

  return result;
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke()
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
LABEL_8:
      v2 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_8;
    }
  }

  v1 = v0(@"RestoreOSBuild", 0);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFBooleanGetTypeID())
  {
    BBUpdaterCommon::inRestoreOS(void)::restoreOS = CFBooleanGetValue(v2) != 0;
  }

  else
  {
    CFRelease(v2);
    v2 = 0;
  }

LABEL_9:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(25, 0, "BBUCommon", &str_9_6, "inRestoreOS: %d\n", BBUpdaterCommon::inRestoreOS(void)::restoreOS);
  }

LABEL_13:
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1E53434D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke_2()
{
  BBUpdaterCommon::inRestoreOS(void)::recoveryOS = os_variant_is_recovery();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(25, 0, "BBUCommon", &str_9_6, "InRecoveryOS: %d\n", BBUpdaterCommon::inRestoreOS(void)::recoveryOS);
  }
}

void ___ZN15BBUpdaterCommon7getECIDEv_block_invoke()
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return;
    }

LABEL_3:
    v1 = v0(@"UniqueChipID", 0);
    if (!v1)
    {
      return;
    }

    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 != CFNumberGetTypeID())
    {
      goto LABEL_9;
    }

    CFNumberGetValue(v2, kCFNumberSInt64Type, &BBUpdaterCommon::getECID(void)::ecid);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
LABEL_7:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(25, 0, "BBUCommon", &str_9_6, "ECID: 0x%llx\n", BBUpdaterCommon::getECID(void)::ecid);
        }
      }
    }

LABEL_9:
    CFRelease(v2);
    return;
  }

  dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
  v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_3;
  }
}

void sub_1E53436F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN15BBUpdaterCommon14getEUICCChipIDEv_block_invoke()
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return;
    }
  }

  v1 = v0(@"EUICCChipID", 0);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v2, kCFNumberSInt64Type, &BBUpdaterCommon::getEUICCChipID(void)::euiccChipID);
    }

    CFRelease(v2);
  }
}

void sub_1E53437C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

ctu::cf *BBUpdaterCommon::BBUReadNVRAM@<X0>(const void *a1@<X1>, ctu::cf **a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED9497B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9497B0))
  {
    _MergedGlobals_9 = 0;
    __cxa_atexit(ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef, &_MergedGlobals_9, &dword_1E5234000);
    __cxa_guard_release(&qword_1ED9497B0);
  }

  if (qword_1ED9497B8 == -1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_4;
    }

LABEL_15:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v3 = &unk_1ED949000;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  dispatch_once(&qword_1ED9497B8, &__block_literal_global_31);
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v3 = &unk_1ED949000;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(__p, v3[245], a1);
    v4 = v7 >= 0 ? __p : __p[0];
    _BBULog(25, 0, "BBUCommon", &str_9_6, "NVRAM: %s\n", v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_11:
  result = v3[245];
  *a2 = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_1E5343960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN15BBUpdaterCommon12BBUReadNVRAMEv_block_invoke()
{
  mainPort = -1431655766;
  if (IOMasterPort(*MEMORY[0x1E69E99F8], &mainPort))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUCommon", &str_9_6, "Condition <<%s>> failed %s %s/%d\n", "KERN_SUCCESS == kr", &str_9_6, &str_9_6, 320);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
      {
        return;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(25, 0, "BBUCommon", &str_9_6, "Could not get master port %d\n");
    }

    return;
  }

  v0 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    properties = 0;
    v6 = &_MergedGlobals_9;
    v2 = IORegistryEntryCreateCFProperties(v0, &properties, *MEMORY[0x1E695E480], 0);
    v3 = *v6;
    if (properties)
    {
      *v6 = properties;
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v6 = 0;
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    CFRelease(v3);
LABEL_21:
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = _MergedGlobals_9 == 0;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUCommon", &str_9_6, "Condition <<%s>> failed %s %s/%d\n", "KERN_SUCCESS == kr && nvramInfo", &str_9_6, &str_9_6, 326);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
LABEL_30:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(25, 0, "BBUCommon", &str_9_6, "Could not load NVRAM? %d\n", v2);
        }
      }
    }

LABEL_32:
    IOObjectRelease(v1);
    return;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUCommon", &str_9_6, "Condition <<%s>> failed %s %s/%d\n", "nvramRef", &str_9_6, &str_9_6, 323);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(25, 0, "BBUCommon", &str_9_6, "Could not find NVRAM via IOKit\n");
  }
}

void sub_1E5343CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(va);
  _Unwind_Resume(a1);
}

BOOL BBUpdaterCommon::isNVRAMKeyPresent(BBUpdaterCommon *this, const __CFString *a2)
{
  theDict = 0xAAAAAAAAAAAAAAAALL;
  BBUpdaterCommon::BBUReadNVRAM(a2, &theDict);
  v4 = theDict;
  if (theDict)
  {
    v5 = CFDictionaryContainsKey(theDict, this) != 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_3;
    }

LABEL_16:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_4;
  }

  v5 = 0;
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(__p, this, v3);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = "No :-(";
    if (v5)
    {
      v7 = "Yes :-)";
    }

    _BBULog(25, 0, "BBUCommon", &str_9_6, "NVRAM '%s' exists? %s\n", v6, v7);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_12:
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void sub_1E5343E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUCreateCFError(CFErrorRef *a1, uint64_t a2, unsigned int a3, const void *a4)
{
  if (!a1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return 0;
      }
    }

    if (gBBULogVerbosity <= 5)
    {
      return 0;
    }

    v12 = "error";
    v13 = 393;
    goto LABEL_20;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = ctu::cf::convert_copy();
    if (v9)
    {
      v10 = *MEMORY[0x1E695E620];
      if (*MEMORY[0x1E695E620])
      {
        CFRetain(v10);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (a4)
      {
        v11 = *MEMORY[0x1E695E670];
        if (*MEMORY[0x1E695E670])
        {
          CFRetain(v11);
        }

        CFRetain(a4);
        if (v11)
        {
          CFDictionaryAddValue(Mutable, v11, a4);
        }

        CFRelease(a4);
        if (v11)
        {
          CFRelease(v11);
        }
      }

      *a1 = CFErrorCreate(v7, @"BBUpdater", a3, Mutable);
      goto LABEL_26;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_24:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUCommon", &str_9_6, "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUCommon.cpp", 395, "ctu::cf::convert_copy( description, errorMsg)");
        }
      }
    }

LABEL_26:
    CFRelease(Mutable);
    return v9;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return 0;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    v12 = "ctu::cf::create( userInfo, 2)";
    v13 = 394;
LABEL_20:
    _BBULog(1, 6, "BBUCommon", &str_9_6, "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUCommon.cpp", v13, v12);
  }

  return 0;
}

void sub_1E53441D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v14 = va_arg(va3, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va3);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_1E5344228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

const char *BBUpdaterCommon::redactedString(const char *this, const char *a2)
{
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = this;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    this = v2;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_3;
    }
  }

  v3 = this;
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  this = v3;
LABEL_3:
  if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
  {
    return "<< SNUM >>";
  }

  return this;
}

uint64_t BBUICE16Communication::freeTransportSync(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    return 1;
  }

  if (v2 == a2)
  {
    v4 = *(a1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN21BBUICE16Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
    block[3] = &__block_descriptor_tmp_12;
    block[4] = a1;
    v5 = a2;
    v6 = a1;
    dispatch_sync(v4, block);
    v3 = TelephonyUtilTransportFree();
    v7 = *(v6 + 72);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN21BBUICE16Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_8_1;
    v12 = v3;
    v11[4] = v6;
    v11[5] = v5;
    dispatch_sync(v7, v11);
    return v3;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v3 = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return v3;
    }
  }

  else
  {
    v9 = a1;
    v10 = a2;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a1 = v9;
    a2 = v10;
    v3 = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return v3;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "call with %p different from fTransportCreated(%p)\n", a2, *(a1 + 80));
    return 0;
  }

  return v3;
}

uint64_t ___ZN21BBUICE16Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 60) = 0;
  if (*(result + 48) == 1)
  {
    *(v1 + 80) = 0;
    return result;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    v2 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v2;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(2, 0, "BBUICE16Communication", "", "fail to free transport: %p\n", *(result + 40));
  }

  return result;
}

uint64_t BBUICE16Communication::createTransport(uint64_t a1, const void *a2, int a3, double a4, uint64_t a5, int a6)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v11;
  v34 = v11;
  v31 = v11;
  v32 = v11;
  v30 = v11;
  TelephonyBasebandPCITransportInitParameters();
  if (*(a1 + 80))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_4:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(2, 0, "BBUICE16Communication", "", "Need to free transport before creating again");
        }
      }
    }

    (*(*a1 + 40))(a1, *(a1 + 80));
    *(a1 + 80) = 0;
  }

  v12 = *(a1 + 72);
  LODWORD(v32) = v32 | 1;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 0x40000000;
  v29[2] = ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke;
  v29[3] = &__block_descriptor_tmp_11_1;
  v29[4] = a2;
  *(&v30 + 1) = v12;
  *&v31 = v29;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating transport:%p stage:%d interface:%d %f ms\n", a2, a3, a6, a4);
  }

LABEL_11:
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v13 = 7;
      goto LABEL_21;
    }

    if (a3 != 8 && a3 != 16)
    {
LABEL_45:
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
        {
          goto LABEL_49;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(2, 0, "BBUICE16Communication", "", "Unsupported stage: %d\n", a3);
      }

LABEL_49:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/ICE/BBUICE16Communication.cpp", 0x6Eu, "Assertion failure(false && Unsupported BBU stage.)");
    }

LABEL_19:
    v13 = 8;
LABEL_21:
    LODWORD(v30) = v13;
    v14 = 10000;
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    goto LABEL_19;
  }

  if (a3 != 2)
  {
    goto LABEL_45;
  }

  v13 = 6;
  LODWORD(v30) = 6;
  v14 = 5000;
LABEL_22:
  DWORD2(v31) = v14;
  *(a1 + 88) = v13;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating with timeout set to %u ms\n", DWORD2(v31));
  }

LABEL_26:
  v15 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2;
  block[3] = &__block_descriptor_tmp_19_0;
  block[6] = a1;
  block[7] = a2;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  v23 = v30;
  v24 = v31;
  block[4] = &v36;
  block[5] = &v40;
  dispatch_sync(v15, block);
  v16 = v41;
  if (v30 != 8 || *(v41 + 6))
  {
    goto LABEL_36;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
LABEL_30:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(2, 0, "BBUICE16Communication", "", " Initializing KTL options struct, opening ARI channel\n");
      }
    }
  }

  IceAriGetContext();
  v17 = KTLInitOptions();
  v18 = v37;
  *(v37 + 24) = v17;
  if (v17)
  {
    IceAriGetContext();
    LOBYTE(v17) = KTLOpenChannel();
    v18 = v37;
  }

  *(v18 + 24) = v17;
  IceAriSetContextValid(1);
  v16 = v41;
  if ((v37[3] & 1) == 0)
  {
    *(v41 + 6) = 11;
  }

LABEL_36:
  v19 = *(v16 + 6);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  return v19;
}

void sub_1E5344AE8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "transport %p, status: %d\n", v3, a2);
  }

LABEL_5:
  if (a2 != 1)
  {
    return;
  }

  Controller = TelephonyBasebandCreateController();
  v5 = TelephonyBasebandResetModem();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v5;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v5 = v7;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
LABEL_8:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v6 = "failure";
        if (v5)
        {
          v6 = "success";
        }

        _BBULog(2, 0, "BBUICE16Communication", "", "Resetting modem: %s\n", v6);
      }
    }
  }

  if (Controller)
  {
    CFRelease(Controller);
  }
}

void sub_1E5344CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v2 + 80) = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = TelephonyBasebandPCITransportCreate();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v3 = "success";
    }

    else
    {
      v3 = "failure";
    }

    _BBULog(2, 0, "BBUICE16Communication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v3);
  }

LABEL_8:
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (!*(v2 + 80))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/ICE/BBUICE16Communication.cpp", 0x80u, "Assertion failure(nullptr != fTransportCreated && Telephony util transport error.)");
    }

    v4 = 0;
  }

  else
  {
    BBUICE16Communication::freeTransportSync(v2, *(a1 + 56));
    v4 = 3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

void IceAriSetContextValid(char a1)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (!qword_1ED9441D8)
  {
    v3 = operator new(0x28uLL);
    LOBYTE(v3->__on_zero_shared_weak) = 0;
    v2 = operator new(0x20uLL);
    v2->__vftable = &unk_1F5F01938;
    v2->__shared_owners_ = 0;
    v2->__shared_weak_owners_ = 0;
    v2[1].__vftable = v3;
    v5 = off_1ED9441E0;
    qword_1ED9441D8 = v3;
    off_1ED9441E0 = v2;
    if (!v5)
    {
      goto LABEL_7;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v3 = qword_1ED9441D8;
  v2 = off_1ED9441E0;
  if (off_1ED9441E0)
  {
LABEL_7:
    v4 = 0;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  LOBYTE(v3->__on_zero_shared_weak) = a1;
  if ((v4 & 1) == 0 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1E5344FA0(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Communication::getBasebandState(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *(a1 + 88) - 6;
  if (v3 > 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = dword_1E53941A0[v3];
  }

  *a3 = v4;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  else
  {
    v6 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v6;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "returning state: %d\n", *a3);
  }

  return 0;
}

uint64_t BBUICE16Communication::freeTransport(uint64_t a1, const void *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 1;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "request to free transport: %p\n", a2);
  }

LABEL_5:
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (!qword_1ED9441D8)
  {
    v5 = operator new(0x28uLL);
    LOBYTE(v5->__on_zero_shared_weak) = 0;
    v4 = operator new(0x20uLL);
    v4->__vftable = &unk_1F5F01938;
    v4->__shared_owners_ = 0;
    v4->__shared_weak_owners_ = 0;
    v4[1].__vftable = v5;
    v7 = off_1ED9441E0;
    qword_1ED9441D8 = v5;
    off_1ED9441E0 = v4;
    if (!v7)
    {
      goto LABEL_11;
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  v5 = qword_1ED9441D8;
  v4 = off_1ED9441E0;
  if (off_1ED9441E0)
  {
LABEL_11:
    v6 = 0;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v6 = 1;
LABEL_12:
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  on_zero_shared_weak_low = LOBYTE(v5->__on_zero_shared_weak);
  if ((v6 & 1) == 0 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (!on_zero_shared_weak_low)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (on_zero_shared_weak_low)
  {
LABEL_15:
    IceAriGetContext();
    KTLCloseChannel();
    IceAriSetContextValid(0);
  }

LABEL_16:
  v9 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUICE16Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &__block_descriptor_tmp_23_2;
  block[4] = &v13;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v9, block);
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1E534532C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  operator delete(v16);
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN21BBUICE16Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(uint64_t a1)
{
  result = BBUICE16Communication::freeTransportSync(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void BBUICE16Communication::~BBUICE16Communication(BBUICE16Communication *this)
{
  *this = &unk_1F5F05120;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F04A78;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  *this = &unk_1F5F05120;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F04A78;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void *BBUICE16Communication::getIPCLogBuffer@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  BBULogIOABP::BBULogIOABP(v2);
  *a1 = v2 + *(*v2 - 88);
  result = operator new(0x20uLL);
  *result = &unk_1F5F02860;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  a1[1] = result;
  return result;
}

uint64_t __cxx_global_var_init_36()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void *BBUICE18HashData::BBUICE18HashData(void *a1, unsigned int a2, char *__s)
{
  *a1 = &unk_1F5F05170;
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
      v10 = operator new(0x30uLL);
      v11 = *(__s + 5);
      *v10 = *(__s + 4);
      v10[1] = v11;
      v10[2] = *(__s + 6);
      v26 = __p;
      v12 = std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, __p, &std::piecewise_construct, &v26);
      v13 = v12[7];
      v14 = v12[9];
      if (v14 - v13 >= 0x30)
      {
        v19 = v12[8];
        v20 = v19 - v13;
        if ((v19 - v13) > 0x2F)
        {
          v21 = *v10;
          v22 = v10[2];
          *(v13 + 1) = v10[1];
          *(v13 + 2) = v22;
          *v13 = v21;
          v12[8] = v13 + 6;
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

          memmove(v19, v10 + v20, 48 - v20);
          v12[8] = (v19 + 48 - v20);
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
        if (2 * v14 <= 0x30)
        {
          v15 = 48;
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
        *(v17 + 2) = v10[2];
        v12[8] = v17 + 6;
        operator delete(v10);
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      operator delete(__p[0]);
LABEL_4:
      __s += 112;
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

void BBUICE18HashData::~BBUICE18HashData(char **this)
{
  *this = &unk_1F5F05170;
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy((this + 1), this[2]);
}

{
  *this = &unk_1F5F05170;
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy((this + 1), this[2]);

  operator delete(this);
}

BOOL BBUICE18HashData::compare(BBUICE18HashData *this, BBUFeedback *a2, const BBUHashData *lpsrc)
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

void sub_1E5345B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::string const,std::vector<unsigned char>>::~pair(va);
  _Unwind_Resume(a1);
}

void BBUICE18HashData::showHashes(BBUICE18HashData *this, BBUFeedback *a2)
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

void sub_1E5345D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string const,std::vector<unsigned char>>::~pair(&a11);
  _Unwind_Resume(a1);
}

uint64_t BBUICE18HashData::getFileHash(uint64_t a1, const void **a2)
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

void BBUELFHeader::BBUELFHeader(BBUELFHeader *this, BBUDataSource *a2, uint64_t a3)
{
  v49[2] = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0xEu, "Assertion failure(fDataSource)");
  }

  v43 = 1179403647;
  v42 = 0;
  v49[0] = 0;
  v49[1] = 0;
  if ((*(*a2 + 16))(a2, v49, 16, &v42, a3))
  {
    v28 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v28, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x20u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy ELF header identity from data source.)");
  }

  if (v42 != 16)
  {
    v29 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v29, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x21u, "Assertion failure(( amountRead == sizeof( e_ident)) && Copied data size mismatch: Failed to copy ELF header identity from data source.)");
  }

  if (LODWORD(v49[0]) != v43)
  {
    v30 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v30, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x23u, "Assertion failure(::memcmp( e_ident, kIdentMagic, sizeof( kIdentMagic)) == 0)");
  }

  if (BYTE4(v49[0]) - 1 >= 2)
  {
    v31 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v31, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x24u, "Assertion failure(( e_ident[EI_CLASS] == kELFClass32 || e_ident[EI_CLASS] == kELFClass64) && ELF header identity (architecture) mismatch.)");
  }

  if (BYTE5(v49[0]) != 1)
  {
    v32 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v32, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x25u, "Assertion failure(( e_ident[EI_DATA] == kELFData2LSB) && ELF header identity (endianness) mismatch.)");
  }

  if (BYTE4(v49[0]) == 1)
  {
    *(this + 2) = 1;
    LODWORD(v44) = 0;
    if ((*(**this + 16))(*this, this + 12, 52, &v44, a3))
    {
      v33 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v33, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x3Au, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy ELF32 header from data source.)");
    }

    if (v44 != 52)
    {
      v35 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v35, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x3Bu, "Assertion failure(( amountRead == sizeof( Header32)) && Copied data size mismatch: Failed to copy ELF32 header from data source.)");
    }

    v5 = *(this + 10);
    if (!v5)
    {
LABEL_47:
      if (*(this + 11))
      {
        v48 = 0;
        *&v46 = 0;
        v44 = 0u;
        v45 = 0u;
        if ((*(**this + 16))(*this, &v44, 40, &v48))
        {
          v39 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v39, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x65u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from section header table.)");
        }

        if (v48 != 40)
        {
          v22 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v22, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x66u, "Assertion failure(( amountRead == sizeof( SectionHeaderTable32)) && Copied data size mismatch: Failed to copy data from section header table.)");
        }
      }

      return;
    }

    if (*(this + 27) <= 0x1Fu)
    {
      v37 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v37, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x42u, "Assertion failure(( sizeof( ProgramHeaderTable32) <= fHeader32.e_phentsize) && Program header table size exceeds program header table entry size.)");
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
      {
LABEL_14:
        if (gBBULogVerbosity >= 7)
        {
          _BBULog(16, 7, "BBUELFHeader", "", "Program header entries %u\n", *(this + 28));
        }
      }
    }

    v6 = *(this + 28);
    v7 = 32 * v6;
    v8 = operator new[](32 * v6);
    if (v6)
    {
      v9 = v8;
      bzero(v8, v7);
      v10 = 0;
      v11 = 0;
      *(this + 8) = v9;
      while (1)
      {
        LODWORD(v44) = 0;
        if ((*(**this + 16))(*this, *(this + 8) + v10, 32, &v44, v5))
        {
          v25 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v25, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x50u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from program header table.)");
        }

        if (v44 != 32)
        {
          v23 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v23, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x51u, "Assertion failure(amountRead == sizeof( ProgramHeaderTable32) && Copied data size mismatch: Failed to copy data from program header table.)");
        }

        v12 = *(this + 27);
        v13 = *(this + 8);
        if (gBBULogMaskGet(void)::once == -1)
        {
          if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
          {
            goto LABEL_23;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
          {
LABEL_23:
            if (gBBULogVerbosity >= 7)
            {
              _BBULog(16, 7, "BBUELFHeader", "", "\t%u - Type: %u, Offset %u, VAddr %u, PAddr %u FileSize %u, MemSize %u, Flags %u\n", v11, *(v13 + v10), *(v13 + v10 + 4), *(v13 + v10 + 8), *(v13 + v10 + 12), *(v13 + v10 + 16), *(v13 + v10 + 20), *(v13 + v10 + 24));
            }
          }
        }

        v5 = (v5 + v12);
        ++v11;
        v10 += 32;
        if (v11 >= *(this + 28))
        {
          goto LABEL_47;
        }
      }
    }

    *(this + 8) = v8;
    goto LABEL_47;
  }

  *(this + 2) = 2;
  LODWORD(v44) = 0;
  if ((*(**this + 16))(*this, this + 72, 64, &v44, a3))
  {
    v34 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v34, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x73u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy ELF64 header from data source.)");
  }

  if (v44 != 64)
  {
    v36 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v36, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x74u, "Assertion failure(( amountRead == sizeof( Header64)) && Copied data size mismatch: Failed to copy ELF64 header from data source.)");
  }

  v14 = *(this + 13);
  if (!v14)
  {
    goto LABEL_52;
  }

  if (*(this + 63) <= 0x37u)
  {
    v38 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v38, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x7Bu, "Assertion failure(( sizeof( ProgramHeaderTable64) <= fHeader64.e_phentsize) && Program header table size exceeds program header table entry size.)");
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
    {
      goto LABEL_33;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
    {
LABEL_33:
      if (gBBULogVerbosity >= 7)
      {
        _BBULog(16, 7, "BBUELFHeader", "", "Program header entries %u\n", *(this + 64));
      }
    }
  }

  v15 = *(this + 64);
  v16 = operator new[](56 * v15);
  if (v15)
  {
    v17 = v16;
    bzero(v16, 56 * ((56 * v15 - 56) / 0x38uLL) + 56);
    v18 = 0;
    v19 = 0;
    *(this + 17) = v17;
    while (1)
    {
      LODWORD(v44) = 0;
      if ((*(**this + 16))(*this, *(this + 17) + v18, 56, &v44, v14))
      {
        v26 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v26, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x89u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from program header table.)");
      }

      if (v44 != 56)
      {
        v24 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v24, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x8Au, "Assertion failure(amountRead == sizeof( ProgramHeaderTable64) && Copied data size mismatch: Failed to copy data from program header table.)");
      }

      v20 = *(this + 63);
      v21 = *(this + 17);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
        {
          goto LABEL_42;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
        {
LABEL_42:
          if (gBBULogVerbosity >= 7)
          {
            _BBULog(16, 7, "BBUELFHeader", "", "\t%u - Type: %u, Offset %u, VAddr %u, PAddr %u FileSize %u, MemSize %u, Flags %u\n", v19, *(v21 + v18), *(v21 + v18 + 8), *(v21 + v18 + 16), *(v21 + v18 + 24), *(v21 + v18 + 32), *(v21 + v18 + 40), *(v21 + v18 + 4));
          }
        }
      }

      v14 += v20;
      ++v19;
      v18 += 56;
      if (v19 >= *(this + 64))
      {
        goto LABEL_52;
      }
    }
  }

  *(this + 17) = v16;
LABEL_52:
  if (*(this + 14))
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    if ((*(**this + 16))(*this, &v44, 64, &v48))
    {
      v40 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v40, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x9Eu, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from section header table.)");
    }

    if (v48 != 64)
    {
      v41 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v41, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x9Fu, "Assertion failure(( amountRead == sizeof( SectionHeaderTable64)) && Copied data size mismatch: Failed to copy data from section header table.)");
    }
  }
}

unint64_t b64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_17;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5];
      *v10 = Base64[v9 >> 2];
      v10[1] = Base64[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      v10[2] = Base64[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      v10[3] = Base64[v7 & 0x3F];
      v5 = result;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_9;
        }

        goto LABEL_6;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_9:
    if (a2 == 1)
    {
      v11 = 0;
      v12 = result + 4;
      if (result + 4 > a4)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v11 = a1[1];
    v12 = result + 4;
    if (result + 4 <= a4)
    {
LABEL_13:
      v13 = *a1;
      v14 = (v11 >> 4) & 0xFFFFFFCF | (16 * (v13 & 3));
      v15 = Base64[v13 >> 2];
      v16 = &a3[result];
      *v16 = v15;
      v16[1] = Base64[v14];
      v17 = 61;
      if (a2 != 1)
      {
        v17 = Base64[4 * (v11 & 0xF)];
      }

      a3[result | 2] = v17;
      v16[3] = 61;
      result = v12;
      if (v12 >= a4)
      {
        goto LABEL_17;
      }

LABEL_16:
      a3[result] = 0;
      return result;
    }
  }

  else
  {
LABEL_6:
    if (result < a4)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  a3[a4 - 1] = 0;
  *a3 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t BBUICE18Programmer::BBUICE18Programmer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = BBUICEProgrammer::BBUICEProgrammer(a1, a2, a3, a4);
  *v5 = &unk_1F5F04688;
  *(v5 + 81) = 0;
  *(v5 + 111) = 0;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  pthread_mutex_init((v5 + 120), 0);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 279) = 3;
  strcpy((a1 + 256), "EBL");
  *(a1 + 280) = xmmword_1E5393C80;
  *(a1 + 308) = 0;
  *(a1 + 300) = 0;
  *(a1 + 296) = 257;
  *a1 = &unk_1F5F051C8;
  *(a1 + 316) = 0;
  *(a1 + 324) = 0;
  *(a1 + 351) = 0;
  *(a1 + 328) = 0;
  *(a1 + 375) = 3;
  *(a1 + 352) = 4997701;
  *(a1 + 376) = xmmword_1E53945D0;
  return a1;
}

void sub_1E5346DF4(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  BBUProgrammer::~BBUProgrammer(v1);
  _Unwind_Resume(a1);
}

void BBUICE18Programmer::~BBUICE18Programmer(void **this)
{
  *this = &unk_1F5F051C8;
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
    if ((*(this + 351) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 351) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[41]);
  v2 = this;

LABEL_5:
  BBUICE16Programmer::~BBUICE16Programmer(v2);
}

{
  *this = &unk_1F5F051C8;
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
    if ((*(this + 351) & 0x80000000) == 0)
    {
LABEL_3:
      BBUICE16Programmer::~BBUICE16Programmer(this);

      goto LABEL_5;
    }
  }

  else if ((*(this + 351) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[41]);
  BBUICE16Programmer::~BBUICE16Programmer(this);

LABEL_5:
  operator delete(v2);
}

uint64_t BBUICE18Programmer::saveMRCData(BBUFeedback **this, unsigned __int8 *a2, CFIndex length)
{
  v4 = CFDataCreateWithBytesNoCopy(0, a2, length, *MEMORY[0x1E695E498]);
  if (v4)
  {
    v5 = v4;
    v6 = operator new(0x18uLL);
    v6[4] = 0;
    *v6 = &unk_1F5F04B00;
    *(v6 + 1) = v5;
    CFRetain(v5);
    BBUICE16UpdateSource::getMRCFilePath(__p);
    v7 = (*(*v6 + 48))(v6, __p, 1);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    CFRelease(v5);
    (*(*v6 + 8))(v6);
    return v7;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_7:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 64, "dataref");
      }
    }
  }

  BBUFeedback::handleComment(this[1], "Failed creating CFDataRef");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v9 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(__p);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
    v9 = off_1ED944120;
  }

  v12[0] = v9;
  v12[1] = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "Failed creating CFDataRef");
  BBUError::addError(v9, __p, 19);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v12);
  return 19;
}

void BBUICE18Programmer::MRCResultString(int a1@<W1>, char *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        a2[23] = 18;
        strcpy(a2, "FastbootTuningFail");
        return;
      }

      goto LABEL_8;
    }

    a2[23] = 17;
    strcpy(a2, "InitialTuningFail");
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        a2[23] = 16;
        strcpy(a2, "FastbootTuningOK");
        return;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "unknown");
      return;
    }

    a2[23] = 15;
    strcpy(a2, "InitialTuningOK");
  }
}

uint64_t BBUICE18Programmer::mrcTrainInit(BBUFeedback **this)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  if (KTLPSIFormatEnhancedCommand())
  {
    BBUFeedback::handleComment(this[1], "Sending PSI enhanced command 'Start MRC Training' in mrcTrainInit ");
    if (KTLPSISendEnhancedCommand())
    {
      BBUFeedback::handleComment(this[1], "Waiting for PSI command response");
      if (KTLPSIReadMrcResponse())
      {
        BBUFeedback::handleComment(this[1], "psiResp.responseCode = %d", LOWORD(__b[1]));
        BBUFeedback::handleComment(this[1], "psiResp.param = %d", __b[0]);
        v2 = this[1];
        v3 = __b[2];
        (*(*this + 38))(__p, this, __b[2]);
        if (v12 >= 0)
        {
          v4 = __p;
        }

        else
        {
          v4 = __p[0];
        }

        BBUFeedback::handleComment(v2, "psiResp.result = 0x%X (%s)", v3, v4);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        if (LOWORD(__b[1]) == 5)
        {
          if ((__b[0] - 2049) > 0xFFFFFBFE)
          {
            if (!__b[2])
            {
              v5 = (*(*this + 35))(this, &__b[3]);
              if (!v5)
              {
                BBUFeedback::handleComment(this[1], "saved MRC data");
                return 0;
              }

              if (gBBULogMaskGet(void)::once == -1)
              {
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                {
LABEL_79:
                  if (gBBULogVerbosity >= 6)
                  {
                    _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 165, "ret == kBBUReturnSuccess");
                  }
                }
              }

              BBUFeedback::handleComment(this[1], "Failed saving MRC data");
              pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
              v10 = off_1ED944120;
              if (!off_1ED944120)
              {
                BBUError::create_default_global(__p);
                std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
                std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
                v10 = off_1ED944120;
              }

              v13 = v10;
              v14 = *(&off_1ED944120 + 1);
              if (*(&off_1ED944120 + 1))
              {
                atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
              std::string::basic_string[abi:ne200100]<0>(__p, "MRC data not accepted");
              BBUError::addError(v10, __p, v5);
              if (v12 < 0)
              {
                operator delete(__p[0]);
              }

              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v13);
              return v5;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
                goto LABEL_67;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
LABEL_67:
                if (gBBULogVerbosity >= 6)
                {
                  _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 158, "psiResp.result == KTLRPSIEnhancedRspMrcResultInitialTuningOK");
                }
              }
            }

            BBUFeedback::handleComment(this[1], "Data Not accepted");
            pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
            v9 = off_1ED944120;
            if (!off_1ED944120)
            {
              BBUError::create_default_global(__p);
              std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
              v9 = off_1ED944120;
            }

            v13 = v9;
            v14 = *(&off_1ED944120 + 1);
            if (*(&off_1ED944120 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
            std::string::basic_string[abi:ne200100]<0>(__p, "MRC data not accepted");
LABEL_74:
            BBUError::addError(v9, __p, 12);
            if (v12 < 0)
            {
              operator delete(__p[0]);
            }

            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v13);
            return 12;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_58;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_58:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 152, "psiResp.param >= MRC_SINGLE_FREQ_DATA_LENGTH && psiResp.param <= MRC_MAX_DATA_LENGTH");
              }
            }
          }

          BBUFeedback::handleComment(this[1], "Invalid MRC Data Length received from BB");
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v9 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(__p);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
            v9 = off_1ED944120;
          }

          v13 = v9;
          v14 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          std::string::basic_string[abi:ne200100]<0>(__p, "Invalid MRC Data Length received from BB");
          goto LABEL_74;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_49:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 145, "psiResp.responseCode == KTLRPSIEnhancedRspRunMRCTraining");
            }
          }
        }

        BBUFeedback::handleComment(this[1], "MRC training RspId invalid");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v9 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(__p);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
          v9 = off_1ED944120;
        }

        v13 = v9;
        v14 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(__p, "MRC training RspId invalid");
        goto LABEL_74;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_37:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 135, "success");
          }
        }
      }

      BBUFeedback::handleComment(this[1], "Failed reading PSI command response");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v8 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(__p);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
        v8 = off_1ED944120;
      }

      v13 = v8;
      v14 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      std::string::basic_string[abi:ne200100]<0>(__p, "Failed reading PSI command response");
LABEL_44:
      BBUError::addError(v8, __p, 3);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v13);
      return 3;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_28:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 121, "success");
        }
      }
    }

    BBUFeedback::handleComment(this[1], "Failed sending MRC training start in mrcTrainInit");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v8 = off_1ED944120;
    if (!off_1ED944120)
    {
      BBUError::create_default_global(__p);
      std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
      v8 = off_1ED944120;
    }

    v13 = v8;
    v14 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed sending MRC training start in mrcTrainInit");
    goto LABEL_44;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_17:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 112, "success");
      }
    }
  }

  BBUFeedback::handleComment(this[1], "Failed creating MRC training start command");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v7 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(__p);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
    v7 = off_1ED944120;
  }

  v13 = v7;
  v14 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "Failed creating MRC training start command");
  BBUError::addError(v7, __p, 19);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v13);
  return 19;
}

uint64_t BBUICE18Programmer::readMRCData(BBUFeedback **this, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  BBUICE16UpdateSource::getMRCFileName(__p);
  if (v22 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __dst[1] = v10;
    v24 = v12 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_12;
  }

  HIBYTE(v24) = v9;
  v11 = __dst;
  if (v9)
  {
LABEL_12:
    memmove(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  v25 = __dst;
  v13 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 48, __dst, &std::piecewise_construct, &v25)[5];
  if (v13)
  {
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = 0;
  if (SHIBYTE(v24) < 0)
  {
LABEL_15:
    operator delete(__dst[0]);
  }

LABEL_16:
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_24:
    BBUFeedback::handleComment(this[1], "Can't find mrcImage");
    return 1;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_18:
  v15 = v14[2];
  if ((*(*v15 + 32))(v15))
  {
    if ((*(*v15 + 32))(v15) > a3)
    {
      v16 = this[1];
      v17 = (*(*v15 + 32))(v15);
      BBUFeedback::handleComment(v16, "Buffer too small (%zu) for file (%u)", a3, v17);
      return 104;
    }

    v19 = (*(*v15 + 32))(v15);
    (*(*v15 + 24))(v15, a2, v19, 0);
  }

  v20 = (*(*v15 + 32))(v15);
  result = 0;
  *a4 = v20;
  return result;
}

void sub_1E53481C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  _Unwind_Resume(exception_object);
}

uint64_t BBUICE18Programmer::handleHashResponseSha384(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v25 = 0;
  BBUFeedback::handleComment(*(a1 + 8), "handleHashResponse length = %u", a3);
  if (a2 && v7)
  {
    v10 = KTLParsePSIICEHashResponseSha384();
    BBUFeedback::handleComment(*(a1 + 8), "Failed parsing hash response");
    v11 = 12;
    v12 = v25;
    if (v10)
    {
      v22 = a4;
      BBUFeedback::handleComment(*(a1 + 8), "Received hash response, %d entries", *(v25 + 1));
      v13 = operator new(0x20uLL);
      BBUICE18HashData::BBUICE18HashData(v13, *(v25 + 1), v25 + 8);
      v14 = v25;
      if (*(v25 + 1))
      {
        v15 = 0;
        v16 = 8;
        do
        {
          v17 = strlen(&v14[v16]);
          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v18 = v17;
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

            p_dst = operator new(v20);
            *(&__dst + 1) = v18;
            v24 = v20 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v24) = v17;
            p_dst = &__dst;
            if (!v17)
            {
              goto LABEL_18;
            }
          }

          memmove(p_dst, &v14[v16], v18);
LABEL_18:
          *(p_dst + v18) = 0;
          std::vector<std::string>::push_back[abi:ne200100](a1 + 232, &__dst);
          if (SHIBYTE(v24) < 0)
          {
            operator delete(__dst);
          }

          ++v15;
          v14 = v25;
          v16 += 112;
        }

        while (v15 < *(v25 + 1));
      }

      if (v22 && a5)
      {
        (*(*v13 + 24))(v13, *(a1 + 8));
        v11 = 12;
        if (((*(*v13 + 16))(v13, *(a1 + 8), a5) & 1) == 0)
        {
          BBUFeedback::handleComment(*(a1 + 8), "root manifest hash data mismatches baseband hash response");
          v11 = 33;
        }
      }

      else
      {
        v11 = 12;
      }

      (*(*v13 + 8))(v13);
      v12 = v25;
    }

    if (v12)
    {
      free(v12);
    }
  }

  else
  {
    BBUFeedback::handleComment(*(a1 + 8), "Bad arguments:  packet = %p\n", a2);
    return 2;
  }

  return v11;
}

uint64_t BBUICE18Programmer::doesMRCDataExist(BBUFeedback **this)
{
  BBUICE16UpdateSource::getMRCFileName(__p);
  if (v11 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = strlen(v2);
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

    v5 = operator new(v6);
    __dst[1] = v4;
    v13 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_12;
  }

  HIBYTE(v13) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_12:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  v14 = __dst;
  v7 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 48, __dst, &std::piecewise_construct, &v14)[5];
  if (v7)
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = 0;
  if (SHIBYTE(v13) < 0)
  {
LABEL_15:
    operator delete(__dst[0]);
  }

LABEL_16:
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_23:
    BBUFeedback::handleComment(this[1], "No MRC image in programmer list");
    return 0;
  }

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_18:
  if ((*(*v8[2] + 32))(v8[2]) - 1 < 0x800)
  {
    return 1;
  }

  BBUFeedback::handleComment(this[1], "MRC data size %lu invalid, ignoring existing data");
  return 0;
}

void sub_1E53486CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  _Unwind_Resume(exception_object);
}

uint64_t BBUICE18Programmer::mrcFastboot(BBUICE18Programmer *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v47 = *MEMORY[0x1E69E9840];
  memset(v46, 170, sizeof(v46));
  v32 = 0;
  v31 = 0;
  v2 = (*(*v1 + 34))(v1, &v46[517], 2048, &v32);
  if (!v2)
  {
    if (v32 < 0x801)
    {
      if (KTLPSIFormatEnhancedCommandMrcData())
      {
        BBUFeedback::handleComment(v1[1], "Sending PSI enhanced command 'Start MRC Training'");
        v3 = KTLPSISendMrcTrainingCommand();
        if (gBBULogMaskGet(void)::once != -1)
        {
          v24 = v3;
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v3 = v24;
        }

        v4 = *gBBULogMaskGet(void)::sBBULogMask;
        if ((v3 & 1) == 0)
        {
          if ((v4 & 2) != 0 && gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 356, "success");
          }

          BBUFeedback::handleComment(v1[1], "Failed sending MRC training start in mrcFastboot, bytesSent = %u", v31);
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v25 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(__p);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
            v25 = off_1ED944120;
          }

          block = v25;
          v41 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          std::string::basic_string[abi:ne200100]<0>(__p, "Failed sending MRC training start in Fastboot");
          goto LABEL_101;
        }

        if ((v4 & 0x200) != 0 && gBBULogVerbosity >= 1)
        {
          _BBULog(9, 1, "BBUProgrammer", "", "Waiting for PSI command response\n");
        }

        if (KTLPSIReadMrcResponse())
        {
          BBUFeedback::handleComment(v1[1], "psiResp.responseCode = %d", LOWORD(v46[1]));
          BBUFeedback::handleComment(v1[1], "psiResp.param = %d", v46[0]);
          v5 = v1[1];
          v6 = v46[2];
          (*(*v1 + 38))(__p, v1, v46[2]);
          if (SHIBYTE(v34) >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          BBUFeedback::handleComment(v5, "psiResp.result = 0x%X (%s)", v6, v7);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }

          if (LOWORD(v46[1]) == 5)
          {
            v8 = v1[1];
            if (!v46[2])
            {
              BBUFeedback::handleComment(v8, "Saving new training data");
              v2 = (*(*v1 + 35))(v1, &v46[3], v46[0]);
              v9 = v1[1];
              if (v2)
              {
                BBUFeedback::handleComment(v9, "failed saving data");
              }

              else
              {
                BBUFeedback::handleComment(v9, "Saved data");
              }

              return v2;
            }

            if (v46[2] == 1)
            {
              BBUFeedback::handleComment(v8, "Data accepted");
              BBUICE16UpdateSource::getMRCFilePath(__p);
              if (bbufs::chownToWireless(__p, -1))
              {
                v2 = 0;
              }

              else
              {
                v2 = 35;
              }

              if (SHIBYTE(v34) < 0)
              {
                operator delete(__p[0]);
              }

              return v2;
            }

            BBUFeedback::handleComment(v8, "Error: Data Not accepted, also, BB didn't send new data");
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
              std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(__p, v11);
              v15 = *__p;
              __p[0] = 0;
              __p[1] = 0;
              v16 = *(&off_1ED944120 + 1);
              off_1ED944120 = v15;
              if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v16->__on_zero_shared)(v16);
                std::__shared_weak_count::__release_weak(v16);
              }

              v17 = __p[1];
              if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v17->__on_zero_shared)(v17);
                std::__shared_weak_count::__release_weak(v17);
              }

              v10 = off_1ED944120;
            }

            v18 = *(&off_1ED944120 + 1);
            v29 = v10;
            v30 = *(&off_1ED944120 + 1);
            if (*(&off_1ED944120 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
            v27 = operator new(0x38uLL);
            v28 = xmmword_1E53945E0;
            strcpy(v27, "Error: Data Not accepted, also, BB didn't send new data");
            __p[0] = MEMORY[0x1E69E9820];
            __p[1] = 0x40000000;
            v34 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
            v35 = &__block_descriptor_tmp_8;
            v36 = v10;
            v37 = &v27;
            v38 = 12;
            v39 = __p;
            block = MEMORY[0x1E69E9820];
            v41 = 0x40000000;
            v42 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
            v43 = &__block_descriptor_tmp_13_0;
            v44 = v10;
            v45 = &v39;
            v19 = *(v10 + 16);
            if (*(v10 + 24))
            {
              dispatch_async_and_wait(v19, &block);
              if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_43;
              }
            }

            else
            {
              dispatch_sync(v19, &block);
              if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
LABEL_43:
                if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v18->__on_zero_shared)(v18);
                  std::__shared_weak_count::__release_weak(v18);
                }

                (*(*v1 + 35))(v1, &v46[3], 0);
                return 12;
              }
            }

            operator delete(v27);
            goto LABEL_43;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_106:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 378, "psiResp.responseCode == KTLRPSIEnhancedRspRunMRCTraining");
              }
            }
          }

          BBUFeedback::handleComment(v1[1], "MRC training RspId invalid");
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v26 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(__p);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
            v26 = off_1ED944120;
          }

          block = v26;
          v41 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          std::string::basic_string[abi:ne200100]<0>(__p, "MRC training RspId invalid");
          BBUError::addError(v26, __p, 12);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }

          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
          return 12;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_94:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 369, "success");
            }
          }
        }

        BBUFeedback::handleComment(v1[1], "Failed reading MRC training response");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v25 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(__p);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
          v25 = off_1ED944120;
        }

        block = v25;
        v41 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(__p, "Failed reading MRC training response");
LABEL_101:
        BBUError::addError(v25, __p, 3);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }

        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
        return 3;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_75:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 344, "success");
          }
        }
      }

      BBUFeedback::handleComment(v1[1], "Failed formatting MRC training command");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v23 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(__p);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
        v23 = off_1ED944120;
      }

      block = v23;
      v41 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      std::string::basic_string[abi:ne200100]<0>(__p, "Failed formatting MRC training command");
      BBUError::addError(v23, __p, 19);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
      return 19;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_64:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 336, "mrcReadLength <= MRC_MAX_DATA_LENGTH");
        }
      }
    }

    BBUFeedback::handleComment(v1[1], "MRC data too large");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v22 = off_1ED944120;
    if (!off_1ED944120)
    {
      BBUError::create_default_global(__p);
      std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
      v22 = off_1ED944120;
    }

    block = v22;
    v41 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    std::string::basic_string[abi:ne200100]<0>(__p, "MRC data too large");
    BBUError::addError(v22, __p, 104);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
    return 104;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_53:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 330, "ret == kBBUReturnSuccess");
      }
    }
  }

  BBUFeedback::handleComment(v1[1], "Failed reading MRC data from file");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v21 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(__p);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
    v21 = off_1ED944120;
  }

  block = v21;
  v41 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "Failed reading MRC data from file");
  BBUError::addError(v21, __p, v2);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
  return v2;
}

uint64_t BBUICE18Programmer::program(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v70 = -1431655766;
  pthread_mutex_lock((a1 + 120));
  *(a1 + 320) = a11;
  v16 = *(a1 + 184);
  if (BBUProgrammer::addItemsFromList(a1, a6))
  {
    BBUFeedback::handleComment(*(a1 + 8), "Error: loading programmer items!");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v17 = off_1ED944120;
    if (!off_1ED944120)
    {
      v18 = operator new(0x38uLL);
      v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v20 = dispatch_queue_create("BBUError", v19);
      *v18 = 0;
      v18[1] = 0;
      v18[2] = v20;
      if (v20)
      {
        v21 = v20;
        dispatch_retain(v20);
        v18[3] = 0;
        dispatch_release(v21);
      }

      else
      {
        v18[3] = 0;
      }

      v18[4] = 0;
      v18[5] = 0;
      v18[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v71, v18);
      v32 = *&v71.__r_.__value_.__l.__data_;
      *&v71.__r_.__value_.__l.__data_ = 0uLL;
      v33 = *(&off_1ED944120 + 1);
      off_1ED944120 = v32;
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      size = v71.__r_.__value_.__l.__size_;
      if (v71.__r_.__value_.__l.__size_ && !atomic_fetch_add((v71.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v17 = off_1ED944120;
    }

    v35 = *(&off_1ED944120 + 1);
    v68 = v17;
    v69 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x28uLL);
    v67 = xmmword_1E5390C30;
    strcpy(__p, "Error: loading programmer items!");
    v71.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v71.__r_.__value_.__l.__size_ = 0x40000000;
    v71.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v72 = &__block_descriptor_tmp_8;
    v73 = v17;
    p_p = &__p;
    v75 = 66;
    v76 = &v71;
    block = MEMORY[0x1E69E9820];
    v78 = 0x40000000;
    v79 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v80 = &__block_descriptor_tmp_13_0;
    v81 = v17;
    v82 = &v76;
    v36 = *(v17 + 16);
    if (*(v17 + 24))
    {
      dispatch_async_and_wait(v36, &block);
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_sync(v36, &block);
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
LABEL_26:
        if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v35->__on_zero_shared)(v35);
          std::__shared_weak_count::__release_weak(v35);
        }

        v37 = 66;
        goto LABEL_82;
      }
    }

    operator delete(__p);
    goto LABEL_26;
  }

  if (BBUICE16Programmer::addItemsToHashmap(a1))
  {
    BBUFeedback::handleComment(*(a1 + 8), "Error: Generating Hashmap of items!");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v22 = off_1ED944120;
    if (!off_1ED944120)
    {
      v23 = operator new(0x38uLL);
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v25 = dispatch_queue_create("BBUError", v24);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      if (v25)
      {
        v26 = v25;
        dispatch_retain(v25);
        v23[3] = 0;
        dispatch_release(v26);
      }

      else
      {
        v23[3] = 0;
      }

      v23[4] = 0;
      v23[5] = 0;
      v23[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v71, v23);
      v40 = *&v71.__r_.__value_.__l.__data_;
      *&v71.__r_.__value_.__l.__data_ = 0uLL;
      v41 = *(&off_1ED944120 + 1);
      off_1ED944120 = v40;
      if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v41->__on_zero_shared)(v41);
        std::__shared_weak_count::__release_weak(v41);
      }

      v42 = v71.__r_.__value_.__l.__size_;
      if (v71.__r_.__value_.__l.__size_ && !atomic_fetch_add((v71.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v42->__on_zero_shared)(v42);
        std::__shared_weak_count::__release_weak(v42);
      }

      v22 = off_1ED944120;
    }

    v43 = *(&off_1ED944120 + 1);
    v68 = v22;
    v69 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x28uLL);
    v67 = xmmword_1E538EBC0;
    strcpy(__p, "Error: Generating Hashmap of items!");
    v71.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v71.__r_.__value_.__l.__size_ = 0x40000000;
    v71.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v72 = &__block_descriptor_tmp_8;
    v73 = v22;
    p_p = &__p;
    v75 = 1;
    v76 = &v71;
    block = MEMORY[0x1E69E9820];
    v78 = 0x40000000;
    v79 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v80 = &__block_descriptor_tmp_13_0;
    v81 = v22;
    v82 = &v76;
    v44 = *(v22 + 16);
    if (*(v22 + 24))
    {
      dispatch_async_and_wait(v44, &block);
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_sync(v44, &block);
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
LABEL_59:
        if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v37 = 1;
        goto LABEL_82;
      }
    }

    operator delete(__p);
    goto LABEL_59;
  }

  if (a11 == 2)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Booted for coredump, not programming firmware");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v27 = off_1ED944120;
    if (!off_1ED944120)
    {
      v28 = operator new(0x38uLL);
      v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v30 = dispatch_queue_create("BBUError", v29);
      *v28 = 0;
      v28[1] = 0;
      v28[2] = v30;
      if (v30)
      {
        v31 = v30;
        dispatch_retain(v30);
        v28[3] = 0;
        dispatch_release(v31);
      }

      else
      {
        v28[3] = 0;
      }

      v28[4] = 0;
      v28[5] = 0;
      v28[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v71, v28);
      v45 = *&v71.__r_.__value_.__l.__data_;
      *&v71.__r_.__value_.__l.__data_ = 0uLL;
      v46 = *(&off_1ED944120 + 1);
      off_1ED944120 = v45;
      if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v46->__on_zero_shared)(v46);
        std::__shared_weak_count::__release_weak(v46);
      }

      v47 = v71.__r_.__value_.__l.__size_;
      if (v71.__r_.__value_.__l.__size_ && !atomic_fetch_add((v71.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
      }

      v27 = off_1ED944120;
    }

    v48 = *(&off_1ED944120 + 1);
    v68 = v27;
    v69 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x30uLL);
    v67 = xmmword_1E5393C90;
    strcpy(__p, "Booted for coredump, not programming firmware");
    v71.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v71.__r_.__value_.__l.__size_ = 0x40000000;
    v71.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v72 = &__block_descriptor_tmp_8;
    v73 = v27;
    p_p = &__p;
    v75 = 28;
    v76 = &v71;
    block = MEMORY[0x1E69E9820];
    v78 = 0x40000000;
    v79 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v80 = &__block_descriptor_tmp_13_0;
    v81 = v27;
    v82 = &v76;
    v49 = *(v27 + 16);
    if (*(v27 + 24))
    {
      dispatch_async_and_wait(v49, &block);
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
LABEL_78:
        if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        goto LABEL_81;
      }
    }

    else
    {
      dispatch_sync(v49, &block);
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }
    }

    operator delete(__p);
    goto LABEL_78;
  }

  if (a4)
  {
    v37 = (*(*a1 + 224))(a1, a2, v16, a5, 1, a10);
    goto LABEL_82;
  }

  v37 = BBUICE16Programmer::readPSIRunningMode(a1, &v70);
  if (!v37)
  {
    v37 = (*(*a1 + 296))(a1);
    if (v37)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed training, failing program");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v38 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(&v71);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v71);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v71);
        v38 = off_1ED944120;
      }

      __p = v38;
      *&v67 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v39 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed training");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v71, ", failing program", v39);
LABEL_41:
      BBUError::addError(v38, &v71, v37);
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(block);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&__p);
      goto LABEL_82;
    }

    switch(v70)
    {
      case 462:
        BBUFeedback::handleComment(*(a1 + 8), "Running secure mode");
        v37 = (*(*a1 + 176))(a1, a2, v16, 0, 0, a10);
        if (v37)
        {
          BBUFeedback::handleComment(*(a1 + 8), "Failed executing secure mode, failing program\n");
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v38 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(&v71);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v71);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v71);
            v38 = off_1ED944120;
          }

          __p = v38;
          *&v67 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v55 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed executing secure mode");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v71, ", failing program\n", v55);
          goto LABEL_41;
        }

        v70 = 56577;
        break;
      case 56577:
        break;
      case 52480:
        BBUFeedback::handleComment(*(a1 + 8), "Coredump detected, not programming firmware");
LABEL_81:
        v37 = 28;
        goto LABEL_82;
      default:
        BBUFeedback::handleComment(*(a1 + 8), "PSI is not running enhanced mode, unsupported firmware\n");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v56 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(&v71);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v71);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v71);
          v56 = off_1ED944120;
        }

        block = v56;
        v78 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(&v71, "PSI is not running enhanced mode, unsupported firmware\n");
        BBUError::addError(v56, &v71, 9);
        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
        v37 = 9;
        goto LABEL_82;
    }

    v57 = (a1 + 352);
    if (!std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::find<std::string>((a1 + 192), (a1 + 352)))
    {
      v60 = *(a1 + 8);
      v61 = "EBL (%s) not found in item list!";
      if ((*(a1 + 375) & 0x80000000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    v71.__r_.__value_.__r.__words[0] = a1 + 352;
    v58 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), (a1 + 352), &std::piecewise_construct, &v71)[5];
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 0x217u, "Assertion failure(eblItem && Error: loading EBL item!)");
    }

    if (*(v59 + 6))
    {
      v60 = *(a1 + 8);
      v61 = "EBL (%s) exists, but is of invalid type!";
      if ((*(a1 + 375) & 0x80000000) == 0)
      {
LABEL_114:
        BBUFeedback::handleComment(v60, v61, v57);
        v37 = 15;
        goto LABEL_82;
      }

LABEL_113:
      v57 = *v57;
      goto LABEL_114;
    }

    v37 = BBUICE16Programmer::sendEBL(a1, *(v59 + 2));
    if (v37)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed sending EBL!");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v38 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(&v71);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v71);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v71);
        v38 = off_1ED944120;
      }

      __p = v38;
      *&v67 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v62 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed sending EBL");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v71, "!", v62);
      goto LABEL_41;
    }

    pthread_mutex_unlock((a1 + 120));
    v37 = (*(*a1 + 144))(a1);
    if (v37)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed image download!");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v63 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(&v71);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v71);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v71);
        v63 = off_1ED944120;
      }

      __p = v63;
      *&v67 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v64 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed image download");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v71, "!", v64);
      BBUError::addError(v63, &v71, v37);
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(block);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&__p);
    }

    pthread_mutex_lock((a1 + 120));
  }

LABEL_82:
  if (a6)
  {
    if (a6[2])
    {
      v50 = a6[1];
      v51 = *(*a6 + 8);
      v52 = *v50;
      *(v52 + 8) = v51;
      *v51 = v52;
      a6[2] = 0;
      if (v50 != a6)
      {
        do
        {
          v53 = v50[1];
          operator delete(v50);
          v50 = v53;
        }

        while (v53 != a6);
      }
    }

    operator delete(a6);
  }

  pthread_mutex_unlock((a1 + 120));
  return v37;
}

void sub_1E534A48C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  pthread_mutex_unlock((v1 + 120));
  _Unwind_Resume(a1);
}

uint64_t BBUICE18Programmer::finishSecurePSIMode(BBUFeedback **a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, _BYTE *a6)
{
  v31 = 0;
  if (a5)
  {
    BBUFeedback::handleComment(a1[1], "Resuming Secure Mode");
  }

  if (a2)
  {
    v11 = (*(*a2 + 24))(a2);
    if (v11 > a3)
    {
      BBUFeedback::handleComment(a1[1], "root manifest size larger than protocol specification %u, size = %u bytes", a3, v11);
      return 12;
    }
  }

  else
  {
    v11 = a3;
  }

  v13 = v11;
  if (v11)
  {
    v14 = operator new(v11);
    bzero(v14, v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = operator new(0x30uLL);
  v29 = (v15 + 48);
  v30 = v15 + 48;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  md = v15;
  if (!a2)
  {
    BBUFeedback::handleComment(a1[1], "No root manifest present");
    bzero(v14, v13);
    v17 = v13 + 1024;
    v25 = a6;
    if (v13 != -1024)
    {
      v16 = 1;
      v12 = 3;
      goto LABEL_18;
    }

LABEL_22:
    v18 = 0;
    v19 = -1022;
    goto LABEL_23;
  }

  LODWORD(__p[0]) = 0;
  v12 = (*(*a2 + 16))(a2, v14, v13, __p, 0);
  v16 = v12 == 0;
  if (v12)
  {
    BBUFeedback::handleComment(a1[1], "failed copying root manifest to buffer");
  }

  if (LODWORD(__p[0]) != v13)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 0x264u, "Assertion failure(copied == rootManifestSize && failed copying root manifest to buffer)");
  }

  v17 = v13 + 1024;
  if (v13 != -1024)
  {
    v25 = a6;
LABEL_18:
    v18 = operator new(v17);
    bzero(v18, v17);
    if (!v16)
    {
      goto LABEL_35;
    }

    v19 = v13 + 2;
LABEL_23:
    *v18 = v13;
    memcpy(v18 + 1, v14, v13);
    CC_SHA384(v14, v13, md);
    BBUFeedback::handleComment(a1[1], "packetSize = %u; kBufferSize = %u; rootManifestSize = %u", v19, v17, v13);
    v20 = KTLRawSendData();
    v21 = a1[1];
    if (v20)
    {
      ctu::hex();
      if (v27 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      BBUFeedback::handleComment(v21, "Sent Manifest with length %u Hash %s", v13, v22);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (KTLRawReceiveData())
      {
        v12 = (*(*a1 + 36))(a1, v18, v31, a2, a4);
        if (v12)
        {
          BBUFeedback::handleComment(a1[1], "failed handling hash response");
        }

        else
        {
          *v25 = 1;
          LOWORD(__p[0]) = 3777;
          if (KTLRawSendData())
          {
            BBUFeedback::handleComment(a1[1], "finished secure mode");
            v12 = 0;
          }

          else
          {
            BBUFeedback::handleComment(a1[1], "failed sending mode end packet");
            v12 = 11;
          }
        }

        goto LABEL_35;
      }

      BBUFeedback::handleComment(a1[1], "failed reading hash results");
    }

    else
    {
      BBUFeedback::handleComment(v21, "failed sending root manifest data");
    }

    v12 = 3;
LABEL_35:
    operator delete(v18);
    goto LABEL_36;
  }

  if (!v12)
  {
    v25 = a6;
    v17 = 0;
    goto LABEL_22;
  }

LABEL_36:
  if (md)
  {
    v29 = md;
    operator delete(md);
  }

  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void sub_1E534AA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21)
{
  operator delete(v22);
  if (__p)
  {
    operator delete(__p);
    if (!v21)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

uint64_t BBUICE18Programmer::handleMRCTrainingSequence(BBUFeedback **this)
{
  result = MEMORY[0x1E6925FA0]();
  if (result)
  {
    v3 = (*(*this + 32))(this);
    v4 = this[1];
    if (v3)
    {
      BBUFeedback::handleComment(v4, "MRC data exists - fastbooting with existing data");
      v5 = *(*this + 31);
      v6 = this;
    }

    else
    {
      BBUFeedback::handleComment(v4, "MRC data doesn't exist or is invalid size - training fresh data");
      v5 = *(*this + 33);
      v6 = this;
    }

    return v5(v6);
  }

  return result;
}

uint64_t BBUICE18Programmer::gatherPersonalizationParameters(BBUICE18Programmer *this, BOOL a2, char a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  v39 = 0;
  v38 = 0;
  v6 = *(this + 1);
  if ((a3 & 1) == 0)
  {
    BBUFeedback::handleComment(v6, "Not in restore mode - skipping gathering Personalization parameters...");
    return 0;
  }

  BBUFeedback::handleBeginPhase(v6, "Gathering Personalization parameters...");
  if (!BBUICE16Programmer::readPSIRunningMode(this, &v39))
  {
    v8 = v39;
    if (v39 != 462)
    {
      v9 = *(this + 1);
      v10 = PSIModeDescription();
      BBUFeedback::handleComment(v9, "Unexpected running mode 0x%x (%s), cannot gather personalization params\n", v8, v10);
    }
  }

  v11 = (*(*this + 296))(this);
  if (!v11)
  {
    v11 = (*(*this + 232))(this, &v38);
    if (!v11)
    {
      v14 = v38;
      v15 = operator new(0x10uLL);
      *v15 = &unk_1F5F06660;
      v15[1] = 0;
      v16 = *MEMORY[0x1E695E480];
      v15[1] = CFDataCreate(*MEMORY[0x1E695E480], v14 + 20, 20);
      v17 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(*(v38 + 1));
      v18 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v38 + 8, 0x60);
      v19 = v38;
      v20 = operator new(0x10uLL);
      *v20 = &unk_1F5F06780;
      v20[1] = 0;
      v20[1] = CFDataCreate(v16, v19 + 40, 32);
      v21 = *(v38 + 1);
      *(this + 46) = v21 - 2;
      BBUFeedback::handleComment(*(this + 1), "Max root packet size from PSI: %u", v21);
      free(v38);
      v22 = *(a5 + 1);
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      *(a5 + 1) = v15;
      v23 = *(a5 + 2);
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      *(a5 + 2) = v17;
      (*(*a5 + 16))(a5, v18);
      (*(*a5 + 24))(a5, v20);
      if (!v18 || !v17)
      {
        goto LABEL_27;
      }

      v24 = *(this + 1);
      (*(*v18 + 24))(__p, v18);
      if (v37 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
      {
        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
        {
          goto LABEL_22;
        }
      }

      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_22:
      v26 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
      v27 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
      v28 = (*(*v17 + 24))(v17);
      if ((v26 | v27))
      {
        v29 = v25;
      }

      else
      {
        v29 = "<< SNUM >>";
      }

      BBUFeedback::handleComment(v24, "   SNUM: 0x%s / CHIPID: 0x%08x", v29, v28);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_27:
      v30 = *(this + 1);
      (*(*v15 + 24))(__p, v15);
      if (v37 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      BBUFeedback::handleComment(v30, "   NONCE: %s", v31);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v32 = *(this + 1);
      (*(*v20 + 24))(__p, v20);
      if (v37 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = __p[0];
      }

      BBUFeedback::handleComment(v32, "   PUBLIC_KEY_HASH: %s", v33);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v34 = *(this + 1);
      v35 = (*(**(a5 + 3) + 24))(*(a5 + 3));
      BBUFeedback::handleComment(v34, "   CertID: %u", v35);
      v12 = 0;
      goto LABEL_8;
    }
  }

  v12 = v11;
LABEL_8:
  (*(**(this + 1) + 16))(*(this + 1), v12);
  return v12;
}

void sub_1E534B0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_37()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

unint64_t *fopen_mem_func(uint64_t a1, const char *a2, char a3)
{
  result = malloc(0x20uLL);
  if (result)
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v6 = result;
    v7 = result + 1;
    if (sscanf(a2, "%lx+%lx", &v8, result + 1) == 2)
    {
      result = v6;
      *v6 = v8;
      if ((a3 & 8) != 0)
      {
        v6[2] = 0;
      }

      else
      {
        v6[2] = *v7;
      }

      v6[3] = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t fread_mem_func(int a1, void *a2, void *__dst, size_t a4)
{
  v5 = a2[3];
  if (a2[1] - v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2[1] - v5;
  }

  memcpy(__dst, (*a2 + v5), v6);
  a2[3] += v6;
  return v6;
}

size_t fwrite_mem_func(int a1, void *a2, void *__src, size_t a4)
{
  v5 = a2[3];
  if (a2[1] - v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2[1] - v5;
  }

  memcpy((*a2 + v5), __src, v6);
  v7 = a2[2];
  v8 = a2[3] + v6;
  a2[3] = v8;
  if (v8 > v7)
  {
    a2[2] = v8;
  }

  return v6;
}

uint64_t fseek_mem_func(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v4 = 3;
    }

    else
    {
      if (a4 != 2)
      {
        return -1;
      }

      v4 = 2;
    }

    a3 += a2[v4];
  }

  if (a3 > a2[1])
  {
    return 1;
  }

  v6 = a2[2];
  if (a3 > v6)
  {
    v7 = a2;
    v8 = a3;
    bzero((*a2 + v6), a3 - v6);
    a2 = v7;
    a3 = v8;
  }

  result = 0;
  a2[3] = a3;
  return result;
}

unint64_t *(**fill_memory_filefunc(unint64_t *(**result)(uint64_t a1, const char *a2, char a3)))(uint64_t a1, const char *a2, char a3)
{
  *result = fopen_mem_func;
  result[1] = fread_mem_func;
  result[2] = fwrite_mem_func;
  result[3] = ftell_mem_func;
  result[4] = fseek_mem_func;
  result[5] = fclose_mem_func;
  result[6] = ferror_mem_func;
  result[7] = 0;
  return result;
}

void Timestamp::Timestamp(Timestamp *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v11 = 0uLL;
  if ((gettimeofday(&v11, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v9 = __error();
  v10 = strerror(*v9);
  *buf = 136315138;
  v13 = v10;
  _os_log_error_impl(&dword_1E5234000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v11;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[7] = v8;
  v39[8] = v8;
  v39[5] = v8;
  v39[6] = v8;
  v39[3] = v8;
  v39[4] = v8;
  v39[1] = v8;
  v39[2] = v8;
  v38 = v8;
  v39[0] = v8;
  *__p = v8;
  v37 = v8;
  v34 = v8;
  v35 = v8;
  v32 = v8;
  v33 = v8;
  v31 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v31);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v10;
  do
  {
    if (*(v9 + 32) >= a2)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < a2));
  }

  while (v9);
  if (v12 != v10 && *(v12 + 32) <= a2)
  {
    v14 = *(v12 + 40);
    v13 = *(v12 + 48);
    if ((a3 & 0x11) != 0)
    {
LABEL_9:
      v29.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v30 = v14;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v29.tm_mon = v15;
      *&v29.tm_isdst = v15;
      *&v29.tm_sec = v15;
      localtime_r(&v30, &v29);
      v44 = 0u;
      v45 = 0u;
      *__s = 0u;
      v43 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v16 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v16 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v16, &v29);
      v17 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, __s, v17);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "-", 1);
        v18 = v32;
        v19 = &v32 + *(v32 - 24);
        if (*(v19 + 36) == -1)
        {
          std::ios_base::getloc((&v32 + *(v32 - 24)));
          v20 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
          (v20->__vftable[2].~facet_0)(v20, 32);
          std::locale::~locale(&v41);
          v18 = v32;
        }

        *(v19 + 36) = 48;
        *(&v33 + *(v18 - 24) + 8) = 3;
        MEMORY[0x1E69270D0](&v32, (v13 / 1000));
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_9;
    }
  }

  MEMORY[0x1E69270F0](&v32, v14);
  if ((a3 & 4) != 0)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_22;
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, ".", 1);
    v13 = (v13 / 1000);
  }

  MEMORY[0x1E69270D0](v21, v13);
LABEL_22:
  if ((BYTE8(v38) & 0x10) != 0)
  {
    v23 = v38;
    if (v38 < *(&v35 + 1))
    {
      *&v38 = *(&v35 + 1);
      v23 = *(&v35 + 1);
    }

    v24 = v35;
    v22 = v23 - v35;
    if ((v23 - v35) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((BYTE8(v38) & 8) == 0)
    {
      v22 = 0;
      a4[23] = 0;
      goto LABEL_36;
    }

    v24 = *(&v33 + 1);
    v22 = *(&v34 + 1) - *(&v33 + 1);
    if (*(&v34 + 1) - *(&v33 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_40:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v26 = operator new(v25);
    *(a4 + 1) = v22;
    *(a4 + 2) = v25 | 0x8000000000000000;
    *a4 = v26;
    a4 = v26;
    goto LABEL_35;
  }

  a4[23] = v22;
  if (v22)
  {
LABEL_35:
    memmove(a4, v24, v22);
  }

LABEL_36:
  a4[v22] = 0;
  *&v31 = *MEMORY[0x1E69E54D8];
  v27 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v32 = v27;
  *(&v32 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v32 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E69273B0](v39);
}

void sub_1E534BA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69273B0](&a33);
  _Unwind_Resume(a1);
}

void *___Z14gBBULogMaskGetv_block_invoke()
{
  result = operator new(8uLL);
  *result = sLogInternalMask;
  gBBULogMaskGet(void)::sBBULogMask = result;
  return result;
}

uint64_t _BBULogv(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5, va_list a6)
{
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_16);
  }

  v12 = qword_1ED9497C8;
  pthread_mutex_lock(qword_1ED9497C8);
  if (qword_1ED9497D8 == -1)
  {
    v13 = 0x1ECFD4000uLL;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    v13 = 0x1ECFD4000;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  if (((*(v13 + 2616) >> a1) & 1) == 0)
  {
    return pthread_mutex_unlock(v12);
  }

LABEL_6:
  vsnprintf(byte_1ED9497F0, 0x400uLL, a5, a6);
  v58.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v58.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v58, 0);
  v57 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56[7] = v14;
  v56[8] = v14;
  v56[5] = v14;
  v56[6] = v14;
  v56[3] = v14;
  v56[4] = v14;
  v56[1] = v14;
  v56[2] = v14;
  v56[0] = v14;
  v54 = v14;
  v55 = v14;
  v52 = v14;
  *__p = v14;
  v50 = v14;
  v51 = v14;
  v49 = v14;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v49);
  v15 = MEMORY[0x1E69270E0](&v49, LODWORD(v58.tv_sec));
  LOBYTE(__dst[0].__locale_) = 46;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, __dst, 1);
  v17 = v16;
  v18 = *v16;
  *(v16 + *(*v16 - 24) + 24) = 3;
  v19 = v16 + *(v18 - 24);
  if (*(v19 + 36) == -1)
  {
    std::ios_base::getloc((v16 + *(v18 - 24)));
    v20 = std::locale::use_facet(__dst, MEMORY[0x1E69E5318]);
    v21 = (v20->__vftable[2].~facet_0)(v20, 32);
    std::locale::~locale(__dst);
    *(v19 + 36) = v21;
  }

  *(v19 + 36) = 48;
  v22 = MEMORY[0x1E69270E0](v17, v58.tv_usec / 0x3E8uLL);
  *(v22 + *(*v22 - 24) + 24) = 1;
  LOBYTE(__dst[0].__locale_) = 91;
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, __dst, 1);
  v24 = MEMORY[0x1E69270E0](v23, a1);
  LOBYTE(__dst[0].__locale_) = 46;
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, __dst, 1);
  v26 = MEMORY[0x1E69270E0](v25, a2);
  LOBYTE(__dst[0].__locale_) = 93;
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, __dst, 1);
  v28 = strlen(a3);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, a3, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "::", 2);
  v31 = strlen(a4);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, a4, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
  v34 = strlen(byte_1ED9497F0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, byte_1ED9497F0, v34);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v55) & 0x10) != 0)
  {
    v37 = v55;
    if (v55 < *(&v52 + 1))
    {
      *&v55 = *(&v52 + 1);
      v37 = *(&v52 + 1);
    }

    v38 = v52;
    v35 = v37 - v52;
    if ((v37 - v52) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((BYTE8(v55) & 8) == 0)
    {
      v35 = 0;
      HIBYTE(__dst[2].__locale_) = 0;
      v36 = __dst;
      goto LABEL_22;
    }

    v38 = *(&v50 + 1);
    v35 = *(&v51 + 1) - *(&v50 + 1);
    if (*(&v51 + 1) - *(&v50 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_38:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v39 = 25;
    }

    else
    {
      v39 = (v35 | 7) + 1;
    }

    v36 = operator new(v39);
    __dst[1].__locale_ = v35;
    __dst[2].__locale_ = (v39 | 0x8000000000000000);
    __dst[0].__locale_ = v36;
    goto LABEL_21;
  }

  HIBYTE(__dst[2].__locale_) = v35;
  v36 = __dst;
  if (v35)
  {
LABEL_21:
    memmove(v36, v38, v35);
  }

LABEL_22:
  *(v36 + v35) = 0;
  if (qword_1ED9497D8 == -1)
  {
    if (*qword_1ED9497D0)
    {
LABEL_24:
      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        locale = __dst;
      }

      else
      {
        locale = __dst[0].__locale_;
      }

      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        locale_high = HIBYTE(__dst[2].__locale_);
      }

      else
      {
        locale_high = __dst[1].__locale_;
      }

      (*(**qword_1ED9497D0 + 24))(*qword_1ED9497D0, locale, locale_high);
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    if (*qword_1ED9497D0)
    {
      goto LABEL_24;
    }
  }

  if ((*(v13 + 2616) >> a1))
  {
    if (gBBULogSinkFunc)
    {
      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        v42 = __dst;
      }

      else
      {
        v42 = __dst[0].__locale_;
      }

      gBBULogSinkFunc(gBBULogSinkContext, (1 << a1), v42);
    }

    else
    {
      Stream = _BBULogGetStream(a1);
      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        v44 = __dst;
      }

      else
      {
        v44 = __dst[0].__locale_;
      }

      fputs(v44, Stream);
      fflush(Stream);
      v45 = MEMORY[0x1E69E9858];
      if (Stream != *MEMORY[0x1E69E9858])
      {
        if (SHIBYTE(__dst[2].__locale_) >= 0)
        {
          v46 = __dst;
        }

        else
        {
          v46 = __dst[0].__locale_;
        }

        fputs(v46, *MEMORY[0x1E69E9858]);
        fflush(*v45);
      }
    }
  }

  if (SHIBYTE(__dst[2].__locale_) < 0)
  {
    operator delete(__dst[0].__locale_);
  }

  *&v49 = *MEMORY[0x1E69E54E8];
  *(&v49 + *(v49 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v49 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v49 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v50);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v56);
  return pthread_mutex_unlock(v12);
}

void sub_1E534C0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  pthread_mutex_unlock(v16);
  _Unwind_Resume(a1);
}

uint64_t _BBULogGetStream(int a1)
{
  if (a1 > 8)
  {
    if (a1 > 13)
    {
      if (a1 == 14)
      {
        if (qword_1ED9497E8 != -1)
        {
          dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
        }

        v1 = 56;
        goto LABEL_31;
      }

      if (a1 == 17)
      {
        if (qword_1ED9497E8 != -1)
        {
          dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
        }

        v1 = 16;
        goto LABEL_31;
      }
    }

    else if (a1 == 9 || a1 == 13)
    {
      if (qword_1ED9497E8 != -1)
      {
        dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
      }

      v1 = 48;
      goto LABEL_31;
    }

LABEL_28:
    if (qword_1ED9497E8 != -1)
    {
      dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
    }

    v1 = 8;
    goto LABEL_31;
  }

  if ((a1 - 5) < 3)
  {
    if (qword_1ED9497E8 != -1)
    {
      dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
    }

    v1 = 40;
    goto LABEL_31;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1ED9497E8 != -1)
      {
        dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
      }

      v1 = 32;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (qword_1ED9497E8 != -1)
  {
    dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
  }

  v1 = 24;
LABEL_31:
  v2 = *(qword_1ED9497E0 + v1);
  if (v2)
  {
    return v2;
  }

  else
  {
    return *MEMORY[0x1E69E9858];
  }
}

uint64_t _BBULogPlain(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_16);
  }

  v10 = qword_1ED9497C8;
  pthread_mutex_lock(qword_1ED9497C8);
  if (qword_1ED9497D8 == -1)
  {
    v11 = 0x1ECFD4000uLL;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    v11 = 0x1ECFD4000;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  if (((*(v11 + 2616) >> a1) & 1) == 0)
  {
    return pthread_mutex_unlock(v10);
  }

LABEL_6:
  va_copy(v37, va);
  vsnprintf(byte_1ED9497F0, 0x400uLL, a2, va);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[7] = v12;
  v35[8] = v12;
  v35[5] = v12;
  v35[6] = v12;
  v35[3] = v12;
  v35[4] = v12;
  v35[1] = v12;
  v35[2] = v12;
  v35[0] = v12;
  v33 = v12;
  v34 = v12;
  v31 = v12;
  *__p = v12;
  v29 = v12;
  v30 = v12;
  v28 = v12;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  if (a1 == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "!!! ", 4);
  }

  v13 = strlen(byte_1ED9497F0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, byte_1ED9497F0, v13);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v34) & 0x10) != 0)
  {
    v16 = v34;
    if (v34 < *(&v31 + 1))
    {
      *&v34 = *(&v31 + 1);
      v16 = *(&v31 + 1);
    }

    v17 = v31;
    v14 = v16 - v31;
    if ((v16 - v31) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((BYTE8(v34) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_22;
    }

    v17 = *(&v29 + 1);
    v14 = *(&v30 + 1) - *(&v29 + 1);
    if (*(&v30 + 1) - *(&v29 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_38:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_21:
    memmove(v15, v17, v14);
  }

LABEL_22:
  *(v15 + v14) = 0;
  if (qword_1ED9497D8 == -1)
  {
    if (*qword_1ED9497D0)
    {
LABEL_24:
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v19 = __dst;
      }

      else
      {
        v19 = __dst[0];
      }

      if (SHIBYTE(__dst[2]) >= 0)
      {
        v20 = HIBYTE(__dst[2]);
      }

      else
      {
        v20 = __dst[1];
      }

      (*(**qword_1ED9497D0 + 24))(*qword_1ED9497D0, v19, v20);
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    if (*qword_1ED9497D0)
    {
      goto LABEL_24;
    }
  }

  if ((*(v11 + 2616) >> a1))
  {
    if (gBBULogSinkFunc)
    {
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v21 = __dst;
      }

      else
      {
        v21 = __dst[0];
      }

      gBBULogSinkFunc(gBBULogSinkContext, (1 << a1), v21);
    }

    else
    {
      Stream = _BBULogGetStream(a1);
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v23 = __dst;
      }

      else
      {
        v23 = __dst[0];
      }

      fputs(v23, Stream);
      fflush(Stream);
      v24 = MEMORY[0x1E69E9858];
      if (Stream != *MEMORY[0x1E69E9858])
      {
        if (SHIBYTE(__dst[2]) >= 0)
        {
          v25 = __dst;
        }

        else
        {
          v25 = __dst[0];
        }

        fputs(v25, *MEMORY[0x1E69E9858]);
        fflush(*v24);
      }
    }
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v28 = *MEMORY[0x1E69E54E8];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v28 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v28 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v29);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v35);
  return pthread_mutex_unlock(v10);
}

void sub_1E534C7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  pthread_mutex_unlock(v16);
  _Unwind_Resume(a1);
}

void BBUFDRLogHandler(int a1, const char *a2)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return;
    }
  }

  else
  {
    v2 = a2;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a2 = v2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBULog", "", "Dump: %s\n", a2);
  }
}

void BBURemoteFSPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v17 = v6;
  *__str = v6;
  v15 = v6;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x80) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x80) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(23, "%u.%03u: %s: %s", v7, v8, v9, v10, v11, v12, v13.tv_sec, v13.tv_usec / 0x3E8uLL, a1, __str);
  }
}

uint64_t BBULogRegisterDelegates(capabilities::radio *a1, uint64_t a2)
{
  v3 = a1;
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
LABEL_3:
      if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
LABEL_13:
    v6 = TelephonyUtilDebugRegisterDelegate();
    sDelegate = BBURemoteFSPrintDelegate;
    v4 = capabilities::radio::vendor(v6);
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_4:
  if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
  {
    goto LABEL_13;
  }

  v4 = capabilities::radio::vendor(a1);
  if (v4 != 2)
  {
LABEL_6:
    if (v4 != 1)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 9, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogging.cpp", 0x2DEu, "Invalid vendor for log delegate registration");
    }

    result = ETLDebugRegisterDelegate();
    if (v3)
    {

      return MEMORY[0x1EEE61F30](a2);
    }

    return result;
  }

LABEL_14:
  result = KTLDebugRegisterDelegate();
  if (v3)
  {

    return KTLDebugSetFlags();
  }

  return result;
}

uint64_t ___ZL8gLockGetv_block_invoke()
{
  v0 = operator new(0x40uLL);
  result = pthread_mutex_init(v0, 0);
  qword_1ED9497C8 = v0;
  return result;
}

void *___ZL13sLogBufferGetv_block_invoke()
{
  result = operator new(0x10uLL);
  *result = 0;
  result[1] = 0;
  qword_1ED9497D0 = result;
  return result;
}

FILE *___ZL14gLogStreamsGetv_block_invoke()
{
  v0 = operator new(0x48uLL);
  v1 = MEMORY[0x1E69E9858];
  v2 = *MEMORY[0x1E69E9858];
  *v0 = *MEMORY[0x1E69E9858];
  v0[1] = v2;
  v0[2] = v2;
  v0[6] = v2;
  v0[7] = v2;
  v0[5] = v2;
  result = fopen("/dev/null", "w");
  v0[8] = result;
  v4 = *MEMORY[0x1E69E9848];
  v0[3] = *v1;
  v0[4] = v4;
  qword_1ED9497E0 = v0;
  return result;
}

void BBULogTelephonyUtilPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v17 = v6;
  *__str = v6;
  v15 = v6;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x40) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x40) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(6, "%u.%03u: %s: %s", v7, v8, v9, v10, v11, v12, v13.tv_sec, v13.tv_usec / 0x3E8uLL, a1, __str);
  }
}

void BBULogTelephonyUtilPrintBinaryDelegate(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(6, v5, a3, a4);
}

void BBULogPrintBinaryDelegate(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  __p = 0;
  v45 = 0;
  v46 = 0;
  if (a4 < 0x801)
  {
    v6 = a4;
  }

  else
  {
    HIBYTE(v46) = 9;
    LOBYTE(v45) = 41;
    __p = *"(snipped)";
    v6 = 2048;
  }

  v38 = v6;
  v43.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v43.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v43, 0);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v13 = v38;
  v14 = 1 << a1;
  if ((*gBBULogMaskGet(void)::sBBULogMask & (1 << a1)) == 0 || gBBULogVerbosity < 0 || (_BBULogPlain(a1, "%u.%03u: %s: %u%s\n", v7, v8, v9, v10, v11, v12, v43.tv_sec, v43.tv_usec / 0x3E8uLL, a2, a4, &__p), v13 = v38, gBBULogMaskGet(void)::once == -1))
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & v14) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v13 = v38;
    if ((*gBBULogMaskGet(void)::sBBULogMask & v14) == 0)
    {
      goto LABEL_38;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0 && v13)
  {
    v15 = 0;
    v16 = 0;
    v17 = a3;
    v18 = v13;
    while (1)
    {
      v19 = 0;
      v41 = v18 - 16;
      v42 = v15;
      if (v18 >= 0x10)
      {
        v18 = 16;
      }

      if (v18 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18;
      }

      v21 = (54 - 3 * v20);
      v40 = (v20 & 0x10) + v21;
      v22 = v13 - 16 * v15;
      if (v22 >= 0x10)
      {
        v23 = 16;
      }

      else
      {
        v23 = v13 - 16 * v15;
      }

      if (v23 <= 1)
      {
        v23 = 1;
      }

      v39 = v23;
      memset(v47, 0, sizeof(v47));
      v24 = v13 - v16;
      if (v13 - v16 >= 0x10)
      {
        v24 = 16;
      }

      if (v24 <= 1)
      {
        v24 = 1;
      }

      v25 = v17;
      do
      {
        v26 = *v25++;
        v27 = v47 + v19;
        *v27 = a0123456789abcd[v26 >> 4];
        v27[1] = a0123456789abcd[v26 & 0xF];
        v19 += 3;
        v27[2] = 32;
      }

      while (3 * v20 != v19);
      memset(v47 + v19, 32, 3 * (17 - v24));
      if (v22 < 0x10)
      {
        break;
      }

      v28 = v39 & 0x10;
      v29 = v40 + v19 - 3;
      v30 = *&a3[v16];
      v31.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v31.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v32.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
      v32.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
      v33 = vcgtq_u8(v32, vaddq_s8(v30, v31));
      v32.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v32.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      *(&v46 + v21 + v19 + 5) = vbslq_s8(v33, v30, v32);
      if (v39 != v28)
      {
        goto LABEL_33;
      }

      v34 = v40 + v19 - 4;
LABEL_37:
      *(v47 + v29) = 13;
      *(v47 + (((v34 << 32) + 0x200000000) >> 32)) = 10;
      *(v47 + (((v34 << 32) + 0x300000000) >> 32)) = 0;
      _BBULog(a1, 0, "BBULog", "", "%c%04zx  %s", 32, v16, v47);
      v16 += 16;
      v18 = v41;
      v15 = v42 + 1;
      v17 += 16;
      v13 = v38;
      if (v16 >= v38)
      {
        goto LABEL_38;
      }
    }

    v28 = 0;
    v29 = v21 + v19 - 3;
    do
    {
LABEL_33:
      v35 = v17[v28];
      if ((v35 - 32) >= 0x5F)
      {
        LOBYTE(v35) = 46;
      }

      *(v47 + v29++) = v35;
      ++v28;
    }

    while (v20 != v28);
    v34 = v29 - 1;
    goto LABEL_37;
  }

LABEL_38:
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E534D1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBULogETLPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v17 = v6;
  *__str = v6;
  v15 = v6;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x80) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x80) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(7, "%u.%03u: %s: %s", v7, v8, v9, v10, v11, v12, v13.tv_sec, v13.tv_usec / 0x3E8uLL, a1, __str);
  }
}

void BBULogETLPrintBinaryDelegate(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(7, v5, a3, a4);
}

void BBULogKTLPrintBinaryDelegate(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(8, v5, a3, a4);
}

void *ReverseProxyGetSettings@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3002000000;
  v18[3] = __Block_byref_object_copy__2;
  v18[4] = __Block_byref_object_dispose__2;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_1F5F05418;
  v19[0] = v4;
  std::mutex::lock((v4 + 24));
  v5 = *(v4 + 34);
  if ((v5 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  *(v4 + 34) = v5 | 2;
  std::mutex::unlock((v4 + 24));
  cf = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a1, *(a1 + 8));
  }

  else
  {
    v16 = *a1;
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v16;
  }

  v19[1] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v20;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v21;
  }

  v6 = *MEMORY[0x1E695E480];
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if (ctu::cf::convert_copy())
  {
    v7 = CFURLCreateWithString(v6, v23, 0);
    CFRelease(v23);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    cf = v7;
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_33:
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_32:
  operator delete(v21.__r_.__value_.__l.__data_);
  cf = v7;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_34:
  operator delete(v16.__r_.__value_.__l.__data_);
LABEL_19:
  v8 = RPRegisterForAvailability();
  if (v8)
  {
    v9 = *(a1 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 8);
    }

    if (!v9 || !cf)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "!url.empty() && urlRef", "", "", 43);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "NULL requestURL?\n");
      goto LABEL_56;
    }

    RPRegistrationResume();
    v22.__r_.__value_.__r.__words[0] = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000;
    v10 = std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v4, &v22);
    RPRegistrationInvalidate();
    if (v10)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "fs == std::future_status::ready", "", "", 48);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "PRP timed out %d\n", v10);
      goto LABEL_56;
    }

    std::__assoc_state<BOOL>::move(v4);
    if (atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v11)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v14 = v11;
      (*(*v4 + 16))(v4);
      if (v14)
      {
LABEL_47:
        v12 = RPCopyProxyDictionary();
        v13 = *a2;
        *a2 = v12;
        if (v13)
        {
          CFRelease(v13);
        }

LABEL_55:
        v4 = 0;
LABEL_56:
        CFRelease(v8);
        goto LABEL_57;
      }
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "future.get()", "", "", 49);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to get PRP\n");
    goto LABEL_55;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "reg", "", "", 42);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to register for proxy\n");
LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4 && !atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v4 + 16))(v4);
  }

  _Block_object_dispose(v18, 8);
  return std::promise<BOOL>::~promise(v19);
}

void sub_1E534DCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a26);
  _Block_object_dispose(&a27, 8);
  std::promise<BOOL>::~promise((v36 + 40));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v35);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z23ReverseProxyGetSettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1, int a2)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Available!\n");
      v4 = *(*(*(a1 + 32) + 8) + 40);
      if (!v4)
      {
        std::__throw_future_error[abi:ne200100](3u);
      }

      std::mutex::lock((v4 + 24));
      if ((*(v4 + 136) & 1) != 0 || (v6.__ptr_ = 0, v5 = *(v4 + 16), std::exception_ptr::~exception_ptr(&v6), v5))
      {
        std::__throw_future_error[abi:ne200100](2u);
      }

      *(v4 + 140) = 1;
      *(v4 + 136) |= 5u;
      std::condition_variable::notify_all((v4 + 88));
      std::mutex::unlock((v4 + 24));
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Aborted? %d\n", a2);
    }
  }
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

void *std::promise<BOOL>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x1E6926F80](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x1E69E5508] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x1E6926F90](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

uint64_t std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(uint64_t a1, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  m = (a1 + 24);
  v14.__m_ = (a1 + 24);
  *&v14.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((a1 + 24));
  v5 = *(a1 + 136);
  if ((v5 & 8) != 0)
  {
    v6 = 2;
    goto LABEL_26;
  }

  if ((v5 & 4) != 0)
  {
    v6 = 0;
    goto LABEL_26;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < *a2)
  {
    if (*a2 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_8;
    }

    v9 = *a2;
    v10.__d_.__rep_ = v9 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v10.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v11.__d_.__rep_)
      {
        v12 = 0;
        goto LABEL_21;
      }

      if (v11.__d_.__rep_ < 1)
      {
        if (v11.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = v10.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_6;
        }
      }

      else if (v11.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_21:
          v7.__d_.__rep_ = v12 + v10.__d_.__rep_;
          goto LABEL_6;
        }

LABEL_5:
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
        std::condition_variable::__do_timed_wait((a1 + 88), &v14, v7);
        std::chrono::steady_clock::now();
        goto LABEL_7;
      }

      v12 = 1000 * v11.__d_.__rep_;
      if (1000 * v11.__d_.__rep_ <= (v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    }

LABEL_7:
    std::chrono::steady_clock::now();
LABEL_8:
    v8 = *(a1 + 136);
    if ((v8 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v8 = *(a1 + 136);
LABEL_24:
  v6 = ((v8 >> 2) & 1) == 0;
  if (v14.__owns_)
  {
    m = v14.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v6;
}

void std::__assoc_state<BOOL>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v5.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v5);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v4, &a1->__exception_);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_1E534E484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void BBULoader::BBULoader(BBULoader *this, BBUFeedback *a2)
{
  *this = &unk_1F5F05460;
  *(this + 1) = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0xEu, "Assertion failure(fFeedback)");
  }
}

double BBULoader::create(BBULoader *this, BBUFeedback *a2)
{
  LoaderType = capabilities::updater::getLoaderType(this);
  if (LoaderType <= 2)
  {
    if (LoaderType == 2)
    {
      v6 = operator new(0x48uLL);
      *v6 = &unk_1F5F05460;
      v6[1] = this;
      if (!this)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0xEu, "Assertion failure(fFeedback)");
      }

      *v6 = &unk_1F5F05980;
      *(v6 + 1) = constinit_0;
      *(v6 + 2) = unk_1E53949A0;
      result = 2.16086526e-293;
      *(v6 + 3) = xmmword_1E53949B0;
      *(v6 + 16) = 0;
      *(v6 + 68) = 0;
    }

    else if (LoaderType < 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    switch(LoaderType)
    {
      case 3:
        v7 = operator new(0x78uLL);
        *v7 = &unk_1F5F05460;
        *(v7 + 1) = this;
        if (!this)
        {
          v9 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v9, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0xEu, "Assertion failure(fFeedback)");
        }

        *(v7 + 1) = constinit_0;
        *(v7 + 2) = unk_1E53949A0;
        *(v7 + 3) = xmmword_1E53949B0;
        *(v7 + 16) = 0;
        v7[68] = 0;
        *v7 = &unk_1F5F01EE8;
        result = 0.0;
        *(v7 + 69) = 0u;
        *(v7 + 85) = 0u;
        *(v7 + 101) = 0u;
        break;
      case 4:
        v5 = operator new(0x48uLL);
        BBUICE16Loader::BBUICE16Loader(v5, this);
        return result;
      case 5:
LABEL_14:
        v8 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v8, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0x2Au, "Assertion failure(false && Unrecognized radio type.)");
    }
  }

  return result;
}

uint64_t *BBULoader::addProgressBarTimes(uint64_t **this, BBUFeedback *a2)
{
  result = capabilities::updater::getLoaderProgressBarTimesType(this);
  switch(result)
  {
    case 0:
      v5 = this + 2;
      v8 = this[2];
      if (v8)
      {
        while (1)
        {
          while (1)
          {
            v6 = v8;
            v9 = *(v8 + 8);
            if (v9 < 2)
            {
              break;
            }

            v8 = *v6;
            v5 = v6;
            if (!*v6)
            {
              goto LABEL_19;
            }
          }

          if (v9 == 1)
          {
            goto LABEL_22;
          }

          v8 = v6[1];
          if (!v8)
          {
LABEL_18:
            v5 = v6 + 1;
            goto LABEL_19;
          }
        }
      }

      goto LABEL_13;
    case 1:
      v5 = this + 2;
      v4 = this[2];
      if (v4)
      {
        while (1)
        {
          while (1)
          {
            v6 = v4;
            v7 = *(v4 + 8);
            if (v7 < 2)
            {
              break;
            }

            v4 = *v6;
            v5 = v6;
            if (!*v6)
            {
              goto LABEL_19;
            }
          }

          if (v7 == 1)
          {
            break;
          }

          v4 = v6[1];
          if (!v4)
          {
            goto LABEL_18;
          }
        }

LABEL_22:
        v6[5] = 0x408F400000000000;
        return result;
      }

LABEL_13:
      v6 = v5;
LABEL_19:
      v10 = operator new(0x30uLL);
      v10[8] = 1;
      *(v10 + 5) = 0;
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 2) = v6;
      *v5 = v10;
      v11 = *this[1];
      if (v11)
      {
        this[1] = v11;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[2], v10);
      this[3] = (this[3] + 1);
      v6 = v10;
      goto LABEL_22;
    case 2:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0x3Eu, "Assertion failure(false && Unrecognized radio type.)");
  }

  return result;
}

BOOL eUICC::Done(const __CFDictionary **a1)
{
  v1 = *a1;
  v8 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  eUICC::Options::Options(v9, &v8);
  v2 = v9[8];
  if (v11 < 0)
  {
    operator delete(__p);
    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v1)
  {
LABEL_7:
    CFRelease(v1);
  }

LABEL_8:
  if (v2)
  {
    return 1;
  }

  pthread_mutex_lock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  if (!qword_1ECFD4A28)
  {
    v5 = operator new(4uLL);
    LODWORD(v5->~__shared_weak_count) = 0;
    v4 = operator new(0x20uLL);
    v4->__vftable = &unk_1F5F054C8;
    v4->__shared_owners_ = 0;
    v4->__shared_weak_owners_ = 0;
    v4[1].__vftable = v5;
    v6 = off_1ECFD4A30;
    qword_1ECFD4A28 = v5;
    off_1ECFD4A30 = v4;
    if (!v6)
    {
      goto LABEL_17;
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v5 = qword_1ECFD4A28;
  v4 = off_1ECFD4A30;
  if (off_1ECFD4A30)
  {
LABEL_17:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  result = LODWORD(v5->~__shared_weak_count) > 7;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v7;
    }
  }

  return result;
}

void sub_1E534EB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t eUICC::UpdateOutput(void *a1, const __CFDictionary **a2, CFMutableDictionaryRef *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v5;
  v33 = v5;
  v31 = v5;
  v6 = *a2;
  v30 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = eUICC::Options::Options(&v31, &v30);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = v31;
  v9 = capabilities::radio::maverick(v7);
  if (v9)
  {
    v10 = operator new(0x138uLL);
    *(v10 + 289) = 0;
    *v10 = &unk_1F5F06980;
    *(v10 + 37) = a1;
    *(v10 + 73) = v8;
    v10[304] = 15;
  }

  else if (capabilities::radio::ice(v9))
  {
    v10 = operator new(0x140uLL);
    eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v10, a1, v8, 0);
  }

  else
  {
    v10 = 0;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v40[10] = v11;
  v39 = v11;
  *v40 = v11;
  v38[9] = v11;
  v38[10] = v11;
  v38[7] = v11;
  v38[8] = v11;
  v38[5] = v11;
  v38[6] = v11;
  v38[3] = v11;
  v38[4] = v11;
  v38[1] = v11;
  v38[2] = v11;
  v37 = v11;
  v38[0] = v11;
  v35 = v11;
  v36 = v11;
  v34 = v11;
  (*(*v10 + 8))(&v34, v10);
  v12 = eUICC::HowToProceed(&v34, &v31);
  if (!v12)
  {
    v13 = 18;
    goto LABEL_44;
  }

  if (v12 == 3)
  {
    v13 = 0;
    goto LABEL_44;
  }

  v14 = CFDataCreate(0, &v34 + 7, 16);
  v29 = v14;
  CFDictionarySetValue(*a3, @"EUICCCSN", v14);
  if (BYTE7(v35))
  {
LABEL_42:
    v13 = 0;
    if (!v14)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v15 = CFDataCreate(0, &v37 + 8, 8);
  v28 = v15;
  CFDictionarySetValue(*a3, @"EUICCMainNonce", v15);
  v16 = CFDataCreate(0, v38, 8);
  v27 = v16;
  CFDictionarySetValue(*a3, @"EUICCGoldNonce", v16);
  valuePtr = 1;
  v17 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  v25[2] = v17;
  CFDictionarySetValue(*a3, @"EUICCTicketVersion", v17);
  v18 = capabilities::updater::EUICCCertIDSizeBytes(v40[19]);
  v19 = CFDataCreate(0, &v39 + 3, v18);
  v25[1] = v19;
  CFDictionarySetValue(*a3, @"EUICCCertIdentifier", v19);
  v20 = v40[19];
  if (v40[19] < 5uLL)
  {
    if (BBUpdaterCommon::getEUICCChipID(void)::sOnce != -1)
    {
      dispatch_once(&BBUpdaterCommon::getEUICCChipID(void)::sOnce, &__block_literal_global_25);
    }

    v20 = BBUpdaterCommon::getEUICCChipID(void)::euiccChipID;
  }

  v25[0] = v20;
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, v25);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(25, 0, "eUICC", "", "eUICC ChipID: 0x%llx\n", v25[0]);
  }

LABEL_23:
  v22 = v25[0];
  if (v25[0])
  {
    CFDictionarySetValue(*a3, @"EUICCChipID", v21);
    v23 = CFDataCreate(0, &v39, 3);
    CFDictionarySetValue(*a3, @"EUICCFirmwareLoaderVersion", v23);
    if (v23)
    {
      CFRelease(v23);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICC", "", "Condition <<%s>> failed %s %s/%d\n", "chipID", "", "", 103);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "EUICC but MG has no ChipID?");
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v22)
  {
    goto LABEL_42;
  }

  v13 = 18;
  if (v14)
  {
LABEL_43:
    CFRelease(v14);
  }

LABEL_44:
  (*(*v10 + 96))(v10);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1E534F0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Run(void *a1, uint64_t a2, const void **a3)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  if (!qword_1ECFD4A28)
  {
    v7 = operator new(4uLL);
    *v7 = 0;
    v6 = operator new(0x20uLL);
    *v6 = &unk_1F5F054C8;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = off_1ECFD4A30;
    qword_1ECFD4A28 = v7;
    off_1ECFD4A30 = v6;
    if (!v8)
    {
      v14 = v7;
      v15 = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v7 = qword_1ECFD4A28;
  v6 = off_1ECFD4A30;
  v14 = qword_1ECFD4A28;
  v15 = off_1ECFD4A30;
  if (off_1ECFD4A30)
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  v9 = *a3;
  cf = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = eUICC::detail::StateMachine::Run(v7, a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  return v10;
}

void sub_1E534F3A4(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E534F3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void eUICC::DumpRecords(const char **a1)
{
  v24[25] = *MEMORY[0x1E69E9840];
  memset(v20, 170, sizeof(v20));
  eUICC::Perso::DumpTransactions(v20);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "dumping %zu records\n", 0xAAAAAAAAAAAAAAABLL * ((v20[1] - v20[0]) >> 4));
  if (ctu::fs::create_directory())
  {
    v2 = v20[0];
    if (v20[1] == v20[0])
    {
      goto LABEL_38;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      memset(__p, 170, sizeof(__p));
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(v24, "%s/Perso-%02d-%s");
      v21 = a1;
      v22 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v23 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v5 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v24, &v21);
      v18 = v4;
      v21 = &v18;
      v22 = boost::io::detail::call_put_head<char,std::char_traits<char>,int const>;
      v23 = boost::io::detail::call_put_last<char,std::char_traits<char>,int const>;
      v6 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v5, &v21);
      v21 = &v2[v3];
      v22 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v23 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v7 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v6, &v21);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v7, __p);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::~basic_format(v24);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "%zu -> %s\n", v4, v8);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = open_dprotected_np(v9, 1793, 4, 0, 420);
      v11 = v10;
      if (v10 < 0)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "eUICC", "", "Condition <<%s>> failed %s %s/%d\n", "destFD >= 0", "", "", 146);
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "Couldn't allocate FD for transaction record during coredump! fd %d path %s\n", v11, v12);
      }

      else
      {
        write(v10, v2[v3 + 3], v2[v3 + 4] - v2[v3 + 3]);
        close(v11);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v11 < 0)
      {
        break;
      }

      ++v4;
      v2 = v20[0];
      v3 += 6;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v20[1] - v20[0]) >> 4));
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 131);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    if (*(a1 + 23) >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "Failed creating directory %s\n", v13);
  }

  v2 = v20[0];
LABEL_38:
  if (v2)
  {
    v14 = v20[1];
    v15 = v2;
    if (v20[1] != v2)
    {
      do
      {
        v16 = *(v14 - 3);
        if (v16)
        {
          *(v14 - 2) = v16;
          operator delete(v16);
        }

        v17 = (v14 - 48);
        if (*(v14 - 25) < 0)
        {
          operator delete(*v17);
        }

        v14 -= 48;
      }

      while (v17 != v2);
      v15 = v20[0];
    }

    v20[1] = v2;
    operator delete(v15);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void ***std::vector<std::pair<std::string,std::vector<unsigned char>>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_pointer<eUICC::detail::StateMachine *,std::shared_ptr<eUICC::detail::StateMachine>::__shared_ptr_default_delete<eUICC::detail::StateMachine,eUICC::detail::StateMachine>,std::allocator<eUICC::detail::StateMachine>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::detail::StateMachine *,std::shared_ptr<eUICC::detail::StateMachine>::__shared_ptr_default_delete<eUICC::detail::StateMachine,eUICC::detail::StateMachine>,std::allocator<eUICC::detail::StateMachine>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::detail::StateMachine *,std::shared_ptr<eUICC::detail::StateMachine>::__shared_ptr_default_delete<eUICC::detail::StateMachine,eUICC::detail::StateMachine>,std::allocator<eUICC::detail::StateMachine>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53946C2)
  {
    if (((v2 & 0x80000001E53946C2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53946C2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53946C2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BBUScratchFile::createWithFile(const char **a1, off_t a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = a1[1];
  }

  if (!v2)
  {
    return 2;
  }

  if (!ctu::fs::file_exists() || (*(a1 + 23) >= 0 ? (v6 = a1) : (v6 = *a1), !remove(v6, v5)))
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = open(v9, 1537, 384);
    if (v10 < 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v7 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v7;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v7 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v7;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v8 = "file not found after creating %s\n";
        goto LABEL_33;
      }

      return v7;
    }

    v11 = v10;
    if (ftruncate(v10, a2))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v7 = 11;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v7 = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_20:
        if (gBBULogVerbosity < 0)
        {
          goto LABEL_23;
        }

        v12 = __error();
        v13 = strerror(*v12);
        v14 = "cannot truncate file %s\n";
        goto LABEL_22;
      }
    }

    else
    {
      v18 = getpwnam("_wireless");
      if (v18)
      {
        if (!fchown(v11, v18->pw_uid, v18->pw_gid))
        {
          v7 = 0;
          goto LABEL_23;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v7 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v7 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v19 = __error();
          v13 = strerror(*v19);
          v14 = "failed changing file owner:  %s";
LABEL_22:
          _BBULog(15, 0, "BBUScratchFile", "", v14, v13);
        }
      }

      else
      {
        _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n");
        if (gBBULogMaskGet(void)::once == -1)
        {
          v7 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v7 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(15, 0, "BBUScratchFile", "", "failed to get uid and gid information for _wireless\n", v20);
        }
      }
    }

LABEL_23:
    if (close(v11))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v7 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v7;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v7 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v7;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v8 = "could not close file %s\n";
        goto LABEL_33;
      }
    }

    return v7;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v7 = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return v7;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v7 = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return v7;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v8 = "cannot remove existing file %s\n";
LABEL_33:
    v15 = __error();
    v16 = strerror(*v15);
    _BBULog(15, 0, "BBUScratchFile", "", v8, v16);
  }

  return v7;
}

void BBUEURInitializer::~BBUEURInitializer(BBUEURInitializer *this)
{
  *this = &unk_1F5F02D68;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F02D68;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 2));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t BBUEURInitializer::prepare(uint64_t a1, uint64_t a2, int a3, int a4)
{
  StageContext = BBUFeedback::getStageContext(*(a1 + 8));
  if (gBBULogMaskGet(void)::once != -1)
  {
    v16 = StageContext;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    StageContext = v16;
  }

  v8 = (gBBULogVerbosity >= 0) & (*gBBULogMaskGet(void)::sBBULogMask >> 4);
  if (StageContext == 8)
  {
    if (v8)
    {
      v9 = (**a1)(a1);
      _BBULog(4, 0, v9, "", "StageContext is Coredump, skipping prepare\n");
    }

    return 0;
  }

  if (v8)
  {
    v10 = (**a1)(a1);
    v11 = BBUStageAsString(a3);
    _BBULog(4, 0, v10, "", "Preparing at %s with reset requested %u\n", v11, a4);
  }

  if (a3 != 2)
  {
    return 0;
  }

  if (*(a1 + 40) == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
LABEL_12:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v12 = (**a1)(a1);
          _BBULog(4, 0, v12, "", "Powering on modem. It is NOOP if BB is already on\n");
        }
      }
    }

    TelephonyBasebandPowerOnModem();
    result = 0;
    *(a1 + 40) = 0;
    return result;
  }

  *(a1 + 40) = 0;
  BBUFeedback::handleComment(*(a1 + 8), "%s: Resetting modem", "prepare");
  if (TelephonyBasebandResetModem())
  {
    return 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v14 = (**a1)(a1);
    v15 = BBUStageAsString(2);
    _BBULog(4, 0, v14, "", "Fail to prepare at %s with reset %u\n", v15, 1);
    return 73;
  }

  return result;
}

uint64_t BBUEURInitializer::finalize(void (***a1)(BBUFeedback **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if ((a4 & 0xFFFFFFFD) != 1 || (result = ((*a1)[30])(a1, a2, a3), !result))
  {
    result = BBUEURInitializer::restoreNVItems(a1, a2, v6);
    if (!result)
    {
      v10 = ((*a1)[25])(a1);

      return BBUEURInitializer::updateIMEISvn(a1, a2, v5, v10);
    }
  }

  return result;
}

uint64_t BBUEURInitializer::restoreNVItems(void (***a1)(BBUFeedback **), uint64_t a2, int a3)
{
  (*a1)[23](a1);
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        BBUFeedback::handleComment(a1[1], "OQC Magic is not supported on MAV basebands");
        return 0;
      }

      return 0;
    }

    BBUFeedback::handleComment(a1[1], "Restoring NV items to FATP defaults");
    if ((ETLMaverickWriteFATPDefaultNVs() & 1) == 0)
    {
      return 3;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return 0;
      }

      BBUFeedback::handleComment(a1[1], "Restoring NV items to Shipping defaults");
      if (ETLMaverickWriteDefaultNVs())
      {
        return 0;
      }

      return 3;
    }

    BBUFeedback::handleComment(a1[1], "Restoring NV items to Factory defaults");
    if (!ETLMaverickWriteFactoryDefaultNVs())
    {
      return 3;
    }
  }

  return 0;
}

uint64_t BBUEURInitializer::updateIMEISvn(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  BBUFeedback::handleComment(*(a1 + 8), "IMEI-SVN Check and Update...");
  if (a3 == -1)
  {
    return 0;
  }

  if (a3 > 0x62)
  {
    return 2;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = (**a1)(a1);
    _BBULog(20, 0, v7, "", "Getting current SVN\n");
  }

LABEL_8:
  if (!ETLMaverickGetIMEISwVersion())
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_15;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v8 = (**a1)(a1);
      _BBULog(20, 0, v8, "", "Trying to set SVN\n");
    }

LABEL_15:
    v9 = ETLMaverickSetIMEISwVersion();
    if (gBBULogMaskGet(void)::once != -1)
    {
      v16 = v9;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v9 = v16;
    }

    v10 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
    if (v9)
    {
      if (v10)
      {
        v11 = (**a1)(a1);
        _BBULog(20, 0, v11, "", "SVN set: %d\n");
      }

      return 0;
    }

    goto LABEL_28;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  if (((gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4)) != 0)
  {
    v12 = (**a1)(a1);
    _BBULog(20, 0, v12, "", "Trying to set new SVN\n");
  }

  v13 = ETLMaverickSetIMEISwVersion();
  if (gBBULogMaskGet(void)::once != -1)
  {
    v17 = v13;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v13 = v17;
  }

  v10 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
  if (v13)
  {
    if (v10)
    {
      v14 = (**a1)(a1);
      _BBULog(20, 0, v14, "", "SVN changed from %d to %d\n");
    }

    return 0;
  }

LABEL_28:
  if (v10)
  {
    v15 = (**a1)(a1);
    _BBULog(20, 0, v15, "", "Could not set SVN\n");
  }

  return 3;
}

uint64_t BBUEURInitializer::crashBaseband(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Reset = TelephonyBasebandGetReset();
  if (capabilities::coredump::supportsGPIOSignalling(Reset))
  {
    TelephonyBasebandSetModemCoredumpGPIO();
    usleep(0xF4240u);
    TelephonyBasebandSetModemCoredumpGPIO();
    BBUFeedback::handleComment(*(a1 + 8), "Coredump GPIO signalled");
    TelephonyBasebandGetReset();
  }

  if (a3)
  {
    BBUFeedback::handleComment(*(a1 + 8), "DIAG crash command sent");
    ETLBBSimulateCrash();
  }

  BBUFeedback::handleComment(*(a1 + 8), "resetting modem");
  TelephonyBasebandResetModem();
  return 0;
}

uint64_t BBUEURInitializer::getVersion(void *a1, uint64_t a2, BBUEUR16FirmwareVersion **a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Initialization/Eureka/BBUEURInitializer.cpp", 0xA0u, "Assertion failure(transport && Telephony util transport error)");
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v16 + 11) = v5;
  v15[14] = v5;
  v16[0] = v5;
  v15[12] = v5;
  v15[13] = v5;
  v15[10] = v5;
  v15[11] = v5;
  v15[8] = v5;
  v15[9] = v5;
  v15[7] = v5;
  v15[5] = v5;
  v15[6] = v5;
  v15[3] = v5;
  v15[4] = v5;
  v15[1] = v5;
  v15[2] = v5;
  v15[0] = v5;
  *a3 = 0;
  (*(*a1 + 200))(a1);
  if (!ETLBBGetVersion())
  {
    return 3;
  }

  v6 = strlen((v15 | 0xB));
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v6 | 7) + 1;
    }

    v8 = operator new(v10);
    __dst[1] = v7;
    v14 = v10 | 0x8000000000000000;
    __dst[0] = v8;
  }

  else
  {
    HIBYTE(v14) = v6;
    v8 = __dst;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  memcpy(v8, (v15 | 0xB), v7);
LABEL_13:
  *(v7 + v8) = 0;
  v11 = BBUFirmwareVersion::createFromVersionString(__dst);
  a1[2] = v11;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
    v11 = a1[2];
  }

  result = 0;
  *a3 = v11;
  return result;
}

void sub_1E5350C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::gatherPersonalizationParameters(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v6;
  v48 = v6;
  v45 = v6;
  v46 = v6;
  v43 = v6;
  v44 = v6;
  *bytes = v6;
  v42 = v6;
  v24 = -1431655766;
  (*(*a1 + 200))(a1);
  if (!ETLMaverickReadPublicKeyHash())
  {
    return 3;
  }

  v7 = v24;
  v8 = operator new(0x10uLL);
  *v8 = &unk_1F5F04C88;
  v8[1] = 0;
  v9 = *MEMORY[0x1E695E480];
  v8[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v7);
  (*(*a3 + 24))(a3, v8);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v10;
  v40 = v10;
  v37 = v10;
  v38 = v10;
  v35 = v10;
  v36 = v10;
  *v33 = v10;
  v34 = v10;
  v23 = -1431655766;
  (*(*a1 + 200))(a1);
  if (!ETLMaverickReadNonce())
  {
    return 3;
  }

  v11 = operator new(0x10uLL);
  v12 = (v23 + 7) >> 3;
  *v11 = &unk_1F5F04B68;
  v11[1] = 0;
  v11[1] = CFDataCreate(v9, v33, v12);
  v13 = a3[1];
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  a3[1] = v11;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v14;
  v32 = v14;
  v29 = v14;
  v30 = v14;
  v27 = v14;
  v28 = v14;
  v25 = v14;
  v26 = v14;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 200))(a1);
  if (!ETLMaverickReadSerialNumberAndChipID())
  {
    return 3;
  }

  v15 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v25, HIDWORD(v22));
  (*(*a3 + 16))(a3, v15);
  v16 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v22);
  v17 = a3[2];
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  a3[2] = v16;
  HIDWORD(v22) = 0;
  (*(*a3 + 32))(a3, &v22 + 4, 0);
  if (HIDWORD(v22) != 3)
  {
    return 0;
  }

  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v18;
  v26 = v18;
  if (ETLMaverickManifestStatusInit())
  {
    v19 = (*(*a1 + 208))(a1, a2, a3, &v25);
    ETLMaverickManifestStatusFree();
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v19 = 19;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        return v19;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v19 = 19;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        return v19;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v21 = (**a1)(a1);
      _BBULog(4, 0, v21, "", "Failed to allocate space for manifest_status\n");
    }
  }

  return v19;
}

uint64_t BBUEURInitializer::overridePersonalizationParameters(BBUFeedback **this, BBUPersonalizationParameters *a2, const __CFDictionary *a3)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  BBUFeedback::handleComment(this[1], "Overriding with preflight information:");
  if (CFDictionaryGetValueIfPresent(a3, @"ChipID", &value))
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v7 = value;
      v8 = operator new(0x10uLL);
      *v8 = &unk_1F5F04BF8;
      v8[1] = v7;
      CFRetain(v7);
      v9 = *(a2 + 2);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(a2 + 2) = v8;
      v10 = this[1];
      v11 = (*(*v8 + 24))(v8);
      v12 = (*(*v8 + 24))(v8);
      BBUFeedback::handleComment(v10, "   ChipID: %u (0x%08x)", v11, v12);
    }
  }

  if (CFDictionaryGetValueIfPresent(a3, @"ChipSerialNo", &value) && (v13 = CFGetTypeID(value), v13 == CFDataGetTypeID()) && ((v14 = value, v15 = operator new(0x10uLL), *v15 = &unk_1F5F04B98, v15[1] = v14, CFRetain(v14), (*(*a2 + 16))(a2, v15), v16 = this[1], (*(*v15 + 24))(__p, v15), v31 >= 0) ? (v17 = __p) : (v17 = __p[0]), BBUFeedback::handleComment(v16, "   ChipSerialNo: %s", v17), v31 < 0))
  {
    operator delete(__p[0]);
    if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
    {
      goto LABEL_20;
    }
  }

  else if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
  {
    goto LABEL_20;
  }

  v18 = CFGetTypeID(value);
  if (v18 == CFDataGetTypeID())
  {
    v19 = value;
    v20 = operator new(0x10uLL);
    *v20 = &unk_1F5F04C88;
    v20[1] = v19;
    CFRetain(v19);
    (*(*a2 + 24))(a2, v20);
    v21 = this[1];
    (*(*v20 + 24))(__p, v20);
    v22 = v31 >= 0 ? __p : __p[0];
    BBUFeedback::handleComment(v21, "   CertHash: %s", v22);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_20:
  if (CFDictionaryGetValueIfPresent(a3, @"Nonce", &value))
  {
    v23 = CFGetTypeID(value);
    if (v23 == CFDataGetTypeID())
    {
      v24 = value;
      v25 = operator new(0x10uLL);
      *v25 = &unk_1F5F04B68;
      v25[1] = v24;
      CFRetain(v24);
      v26 = *(a2 + 1);
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      *(a2 + 1) = v25;
      v27 = this[1];
      (*(*v25 + 24))(__p, v25);
      if (v31 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      BBUFeedback::handleComment(v27, "   Nonce: %s", v28);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return 0;
}

void sub_1E5351538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::gatherProvisioningParameters(BBUFeedback **a1, capabilities::euicc *a2, uint64_t a3)
{
  result = (*(*a1 + 33))(a1);
  if (!result)
  {
    result = (*(*a1 + 31))(a1, a2, a3);
    if (!result)
    {
      result = (*(*a1 + 32))(a1, a2, a3);
      if (!result)
      {
        if (eUICC::getEID(a2, a3, a1[1]) == 126)
        {
          return 126;
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

uint64_t BBUEURInitializer::getProvisioningStatus(BBUFeedback **a1, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v10;
  v18[1] = v10;
  *a4 = 1;
  v19 = 0;
  if (ETLMaverickManifestStatusInit())
  {
    if ((*(*a1 + 26))(a1, a2, a3, v18))
    {
      v11 = 0;
      HIDWORD(v19) = 4;
      *a5 = 0;
LABEL_22:
      ETLMaverickManifestStatusFree();
      return v11;
    }

    if (!ETLProvisionParseStatus())
    {
      v11 = 3;
      goto LABEL_22;
    }

    v13 = HIDWORD(v19);
    LOBYTE(v19) = HIDWORD(v19) == 1;
    if (SHIDWORD(v19) > 1)
    {
      if (HIDWORD(v19) == 2)
      {
        goto LABEL_17;
      }

      if (HIDWORD(v19) == 3)
      {
        *a5 = 0;
LABEL_19:
        v14 = WORD4(v18[0]);
        if (WORD4(v18[0]))
        {
          v15 = a1[1];
          StateAsString = ETLProvisionGetStateAsString();
          BBUFeedback::handleComment(v15, "Provision manifest status:%u => state %s(%u), mismatched %u", v14, StateAsString, HIDWORD(v19), v19);
        }

        v11 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (!HIDWORD(v19))
      {
LABEL_17:
        *a5 = v13 != 2;
        BBUFeedback::handleComment(a1[1], "mature");
        goto LABEL_19;
      }

      if (HIDWORD(v19) == 1)
      {
        *a4 = 0;
        goto LABEL_17;
      }
    }

    *a5 = 0;
    BBUFeedback::handleComment(a1[1], "bringup");
    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v11 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return v11;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v11 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return v11;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**a1)(a1);
    _BBULog(4, 0, v12, "", "Failed to allocate space for manifest_status\n");
  }

  return v11;
}

uint64_t BBUEURInitializer::gatherManifestInfo(void (***a1)(BBUFeedback **), uint64_t a2, void *a3, uint64_t a4)
{
  BBUFeedback::handleComment(a1[1], "Getting manifest information from BB");
  (*a1)[25](a1);
  if (!ETLMaverickGetManifestStatus())
  {
    BBUFeedback::handleComment(a1[1], "Failed getting manifest status");
    return 3;
  }

  v7 = *(a4 + 8) - 4;
  if (v7 > 0x3C)
  {
    goto LABEL_9;
  }

  if (((1 << (*(a4 + 8) - 4)) & 0x3000004) != 0)
  {
    v8 = 2;
  }

  else
  {
    if (((1 << (*(a4 + 8) - 4)) & 0x801) != 0)
    {
      v8 = 1;
      goto LABEL_12;
    }

    v8 = 0;
    if (v7 != 60)
    {
LABEL_9:
      if (*(a4 + 8))
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }
    }
  }

LABEL_12:
  v10 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(v8);
  v11 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(*(a4 + 8));
  v32 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(*(a4 + 12));
  v33 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(*(a4 + 10));
  BBUFeedback::handleComment(a1[1], "Manifest status: \n\t\t\t  provision_status   : %u\n \t\t\t  fatp_cal_status    : %u\n \t\t\t  calibration_status : %u", *(a4 + 8), *(a4 + 10), *(a4 + 12));
  DigestType = capabilities::updater::getDigestType(v12);
  if (DigestType == 2)
  {
    v14 = 48;
  }

  else
  {
    v14 = 0;
  }

  v15 = DigestType - 1;
  if (DigestType == 1)
  {
    v16 = 32;
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    goto LABEL_57;
  }

  v17 = DigestType;
  memset(__p, 170, sizeof(__p));
  ctu::hex(__p, *(a4 + 16), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  skey_hash    [0x%02x]: %s", 0, v18);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v15 > 1)
    {
      goto LABEL_38;
    }
  }

  else if (v15 > 1)
  {
    goto LABEL_38;
  }

  memset(__p, 170, sizeof(__p));
  ctu::hex(__p, (*(a4 + 16) + 16), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  skey_hash    [0x%02x]: %s", 16, v19);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v17 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v17 != 2)
  {
    goto LABEL_38;
  }

  memset(__p, 170, sizeof(__p));
  ctu::hex(__p, (*(a4 + 16) + 32), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  skey_hash    [0x%02x]: %s", 32, v20);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_38:
  memset(__p, 170, sizeof(__p));
  ctu::hex(__p, *(a4 + 24), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  ckey_hash    [0x%02x]: %s", 0, v21);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v15 > 1)
    {
      goto LABEL_57;
    }
  }

  else if (v15 > 1)
  {
    goto LABEL_57;
  }

  memset(__p, 170, sizeof(__p));
  ctu::hex(__p, (*(a4 + 24) + 16), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  ckey_hash    [0x%02x]: %s", 16, v22);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v17 != 2)
    {
      goto LABEL_57;
    }

LABEL_52:
    memset(__p, 170, sizeof(__p));
    ctu::hex(__p, (*(a4 + 24) + 32), 0x10);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    BBUFeedback::handleComment(a1[1], "  ckey_hash    [0x%02x]: %s", 32, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_57;
  }

  operator delete(__p[0]);
  if (v17 == 2)
  {
    goto LABEL_52;
  }

LABEL_57:
  v24 = a3[6];
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  a3[6] = v10;
  v25 = a3[8];
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  a3[8] = v11;
  v26 = a3[9];
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  a3[9] = v32;
  v27 = a3[10];
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  a3[10] = v33;
  v28 = *(a4 + 8);
  if (v28 <= 0xF && ((1 << v28) & 0x8011) != 0)
  {
    v29 = *(a4 + 16);
    v30 = operator new(0x10uLL);
    *v30 = &unk_1F5F04C58;
    v30[1] = 0;
    v30[1] = CFDataCreate(*MEMORY[0x1E695E480], v29, v16);
    v31 = a3[7];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    result = 0;
    a3[7] = v30;
  }

  else
  {
    BBUFeedback::handleComment(a1[1], "BB has no provisioning manifest");
    return 0;
  }

  return result;
}