void sub_1E52B4FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, const void *a36, void *__p, uint64_t a38, uint64_t a39, const void *a40)
{
  v42 = *(v40 - 144);
  if (v42)
  {
    *(v40 - 136) = v42;
    operator delete(v42);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a36);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a40);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v40 - 168);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v40 - 152));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::FinalizePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0;
  v18 = operator new(0x20uLL);
  v19 = xmmword_1E5390FF0;
  strcpy(v18, "FinalizePersoDeviceRequest.bin");
  __p = 0;
  v16 = 0;
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
    v17 = &v9[v8];
    memcpy(v9, v7, v8);
    v16 = v10;
  }

  v11 = *(a1 + 40);
  if (v11 >= *(a1 + 48))
  {
    v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v18, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v18, &__p);
    v12 = v11 + 2;
    *(a1 + 40) = v11 + 2;
  }

  *(a1 + 40) = v12;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  v13 = (*(**a3 + 72))(*a3, a2);
  if (v13)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 347);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete FinalizePerso command\n");
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "FinalizePersoDevice %d\n", v13);
  return v13;
}

void sub_1E52B53CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetNonceServer(uint64_t a1, uint64_t a2, void *(***a3)(_OWORD *__return_ptr, void))
{
  v52 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v45 = 0uLL;
  v43 = 0;
  cf = 0;
  __p = 0;
  v42 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v49[10] = v5;
  v48[15] = v5;
  *v49 = v5;
  v48[13] = v5;
  v48[14] = v5;
  v48[11] = v5;
  v48[12] = v5;
  v48[9] = v5;
  v48[10] = v5;
  v48[7] = v5;
  v48[8] = v5;
  v48[5] = v5;
  v48[6] = v5;
  v48[3] = v5;
  v48[4] = v5;
  v48[1] = v5;
  v48[2] = v5;
  v48[0] = v5;
  v6 = (**a3)(v48, a3);
  v7 = capabilities::updater::EUICCVinylSuccessStatus(v6);
  if (LODWORD(v48[0]) == v7)
  {
    *&keys = @"Command";
    *(&keys + 1) = @"HardwareType";
    if (v49[23])
    {
      v8 = @"2";
    }

    else
    {
      v8 = @"0";
    }

    values[0] = @"GetNonce";
    values[1] = v8;
    v9 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 2, &__p);
    if (v9)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 379);
      goto LABEL_12;
    }

    v38 = 0;
    v39 = operator new(0x20uLL);
    v40 = xmmword_1E5391A60;
    strcpy(v39, "GetNonceServerRequest.plist");
    v36 = 0;
    v37 = 0;
    v13 = __p;
    v14 = v42 - __p;
    if (v42 != __p)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v36 = operator new(v42 - __p);
      v38 = v36 + v14;
      memcpy(v36, v13, v14);
      v37 = v36 + v14;
    }

    v15 = *(a1 + 40);
    if (v15 >= *(a1 + 48))
    {
      v16 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v39, &v36);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v39, &v36);
      v16 = v15 + 2;
      *(a1 + 40) = v15 + 2;
    }

    *(a1 + 40) = v16;
    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    eUICC::Perso::PersoImplementation::PostDataSync(&keys, a1, &__p);
    v45 = keys;
    v17 = keys;
    if (keys)
    {
      v34 = operator new(0x20uLL);
      v35 = xmmword_1E5390FE0;
      strcpy(v34, "GetNonceServerResponse.plist");
      (*(*v17 + 40))(&v33, v17);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v34, &v33);
      if (v33)
      {
        CFRelease(v33);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }

      (*(*v17 + 40))(&v32, v17);
      v9 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v32, &v46);
      if (v32)
      {
        CFRelease(v32);
      }

      if (v9)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 388);
        goto LABEL_12;
      }

      Value = CFDictionaryGetValue(v46, @"SessionId");
      v19 = Value;
      if (Value)
      {
        v20 = CFGetTypeID(Value);
        if (v20 == CFStringGetTypeID())
        {
          CFRetain(v19);
        }

        else
        {
          v19 = 0;
        }
      }

      v21 = *(a1 + 16);
      *(a1 + 16) = v19;
      if (v21)
      {
        CFRelease(v21);
        v19 = *(a1 + 16);
      }

      if (v19 && CFStringGetLength(v19))
      {
        v22 = v46;
        v23 = CFDictionaryGetValue(v46, @"DATA");
        ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, v23);
        if (cf)
        {
          keys = 0uLL;
          v51 = 0;
          ctu::cf::assign();
          v24 = keys;
          v25 = v51;
          v26 = *a2;
          if (*a2)
          {
            *(a2 + 8) = v26;
            v31 = v24;
            operator delete(v26);
            v24 = v31;
            *a2 = 0;
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
          }

          v9 = 0;
          *a2 = v24;
          *(a2 + 16) = v25;
          goto LABEL_12;
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 394);
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        ctu::cf::show(&keys, v22, v29);
        if (v51 >= 0)
        {
          p_keys = &keys;
        }

        else
        {
          p_keys = keys;
        }

        _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", p_keys);
      }

      else
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0", "", "", 392);
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        ctu::cf::show(&keys, v46, v27);
        if (v51 >= 0)
        {
          v28 = &keys;
        }

        else
        {
          v28 = keys;
        }

        _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n", v28);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(keys);
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 385);
    }

    v9 = 53;
    goto LABEL_12;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "hwType.Valid()", "", "", 365);
  v9 = 18;
LABEL_12:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetNonceServer %d\n", v9);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *(&v45 + 1);
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v46;
    if (!v46)
    {
      return v9;
    }

    goto LABEL_21;
  }

  v11 = v46;
  if (v46)
  {
LABEL_21:
    CFRelease(v11);
  }

  return v9;
}

void sub_1E52B5C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, uint64_t a38, const void *a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, const void *a45)
{
  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a40);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a45);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::CreateValidationBlob(unint64_t *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    dispatch_once(&BBUpdaterCommon::getECID(void)::sOnce, &__block_literal_global_18);
  }

  v40 = BBUpdaterCommon::getECID(void)::ecid;
  v38 = 17433507;
  v39 = 4;
  v41[0] = 0;
  v41[2] = 512;
  *&v42[8] = 0u;
  v41[1] = 12;
  *v42 = xmmword_1E5391A80;
  *&v42[16] = 512;
  v37[0] = v41;
  v37[1] = 0xAAAAAAAAAAAA0002;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v2;
  v36 = v2;
  v33 = v2;
  v34 = v2;
  v31 = v2;
  v32 = v2;
  v29 = v2;
  v30 = v2;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = a1[1] - *a1;
  v6[0] = *a1;
  v6[1] = v3;
  memset(v7, 170, sizeof(v7));
  v4 = DERDecodeItem(v6, v7);
  if (v4)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 454);
  }

  else
  {
    v4 = DEREncodeItemIntoVector(0xCuLL, 6uLL, "kNonce", &v17);
    if (v4)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 458);
    }

    else
    {
      *&v33 = v17;
      *(&v33 + 1) = v18 - v17;
      v34 = *&v7[1];
      v4 = DEREncodeSequenceIntoVector(0x2000000000000010, &v33, v37, &v23);
      if (v4)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 464);
      }

      else
      {
        v4 = DEREncodeItemIntoVector(0xCuLL, 0x11uLL, "kDeviceIdentifier", &v26);
        if (v4)
        {
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 468);
        }

        else
        {
          v4 = DEREncodeItemIntoVector(4uLL, 8uLL, &v40, &v20);
          if (v4)
          {
            if (gBBULogMaskGet(void)::once != -1)
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            }

            _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 470);
          }

          else
          {
            *&v35 = v26;
            *(&v35 + 1) = v27 - v26;
            *&v36 = v20;
            *(&v36 + 1) = v21 - v20;
            v4 = DEREncodeSequenceIntoVector(0x2000000000000010, &v35, v37, &v14);
            if (v4)
            {
              if (gBBULogMaskGet(void)::once != -1)
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              }

              _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 476);
            }

            else
            {
              *&v31 = v14;
              *(&v31 + 1) = v15 - v14;
              *&v32 = v23;
              *(&v32 + 1) = v24 - v23;
              v4 = DEREncodeSequenceIntoVector(0x2000000000000010, &v31, v37, &v11);
              if (v4)
              {
                if (gBBULogMaskGet(void)::once != -1)
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                }

                _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 485);
              }

              else
              {
                v4 = DEREncodeItemIntoVector(0xA000000000000005, v12 - v11, v11, &__p);
                if (v4)
                {
                  if (gBBULogMaskGet(void)::once != -1)
                  {
                    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  }

                  _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 488);
                }

                else
                {
                  *&v29 = &v38;
                  *(&v29 + 1) = 5;
                  *&v30 = __p;
                  *(&v30 + 1) = v9 - __p;
                  v4 = DEREncodeSequenceIntoVector(0x2000000000000010, &v29, v37, a1);
                  if (v4)
                  {
                    if (gBBULogMaskGet(void)::once != -1)
                    {
                      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                    }

                    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 496);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "CreateValidationBlob DR %d\n", v4);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v4)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

void sub_1E52B6408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
    v38 = a21;
    if (!a21)
    {
LABEL_3:
      v39 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v38 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v38);
  v39 = a24;
  if (!a24)
  {
LABEL_4:
    v40 = a27;
    if (!a27)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v39);
  v40 = a27;
  if (!a27)
  {
LABEL_5:
    v41 = a30;
    if (!a30)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v40);
  v41 = a30;
  if (!a30)
  {
LABEL_6:
    v42 = a33;
    if (!a33)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v41);
  v42 = a33;
  if (!a33)
  {
LABEL_7:
    v43 = a36;
    if (!a36)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v42);
  v43 = a36;
  if (!a36)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(v43);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::ValidatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0;
  v18 = operator new(0x20uLL);
  v19 = xmmword_1E5390FF0;
  strcpy(v18, "ValidatePersoDeviceRequest.bin");
  __p = 0;
  v16 = 0;
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
    v17 = &v9[v8];
    memcpy(v9, v7, v8);
    v16 = v10;
  }

  v11 = *(a1 + 40);
  if (v11 >= *(a1 + 48))
  {
    v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v18, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v18, &__p);
    v12 = v11 + 2;
    *(a1 + 40) = v11 + 2;
  }

  *(a1 + 40) = v12;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  v13 = (*(**a3 + 80))(*a3, a2, a2);
  if (v13)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 509);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete ValidatePerso command\n");
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ValidatePersoDevice %d\n", v13);
  return v13;
}

void sub_1E52B6700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::SendReceiptServer(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    v8 = 0;
    v7 = 0;
    cf = 0;
    keys = 0;
    v38 = 0;
    v39 = 0;
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
    cf = 0;
    v9 = operator new(v6);
    v10 = &v9[v6];
    keys = v9;
    v39 = &v9[v6];
    memcpy(v9, v7, v6);
    v38 = v10;
  }

  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    cf = values[0];
  }

  if (keys)
  {
    v38 = keys;
    operator delete(keys);
  }

  v11 = cf;
  v30 = cf;
  cf = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  keys = @"Command";
  v38 = @"DATA";
  v39 = @"SessionId";
  values[0] = @"SendReceipt";
  values[1] = v11;
  values[2] = *(a1 + 16);
  v12 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 3, &v31);
  if (v12)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 528);
    v13 = 0;
    if (gBBULogMaskGet(void)::once != -1)
    {
LABEL_43:
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }
  }

  else
  {
    v27 = 0;
    v28 = operator new(0x20uLL);
    v29 = xmmword_1E5390FF0;
    strcpy(v28, "SendReceiptServerRequest.plist");
    __p = 0;
    v26 = 0;
    v14 = v31;
    v15 = v32 - v31;
    if (v32 != v31)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      __p = operator new(v32 - v31);
      v27 = __p + v15;
      memcpy(__p, v14, v15);
      v26 = __p + v15;
    }

    v16 = *(a1 + 40);
    if (v16 >= *(a1 + 48))
    {
      v17 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v28, &__p);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v28, &__p);
      v17 = v16 + 2;
      *(a1 + 40) = v16 + 2;
    }

    *(a1 + 40) = v17;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    eUICC::Perso::PersoImplementation::PostDataSync(&cf, a1, &v31);
    v18 = cf;
    v13 = v24;
    v34 = cf;
    v35 = v24;
    if (cf)
    {
      v21 = operator new(0x20uLL);
      v22 = xmmword_1E5391A90;
      strcpy(v21, "SendReceiptServerResponse.plist");
      (*(*v18 + 40))(&v20, v18);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v21, &v20);
      if (v20)
      {
        CFRelease(v20);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21);
      }

      v12 = 0;
      *(a2 + 8) = *a2;
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 533);
      v12 = 53;
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_43;
      }
    }
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "SendReceiptServer %d\n", v12);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return v12;
}

void sub_1E52B6C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E52B6D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (!a27)
  {
    JUMPOUT(0x1E52B6CF8);
  }

  JUMPOUT(0x1E52B6CF0);
}

uint64_t eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(const void **keys, const void **values, CFIndex numValues, uint64_t a4)
{
  v22 = 0;
  v23 = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, numValues, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21 = v5;
  if (v5)
  {
    error = 0;
    v19 = &v23;
    v6 = CFPropertyListCreateData(v4, v5, kCFPropertyListXMLFormat_v1_0, 0, &error);
    v22 = v6;
    v7 = *v19;
    if (error)
    {
      *v19 = error;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v19 = 0;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    CFRelease(v7);
LABEL_12:
    if (v6)
    {
      if (ctu::cf::assign())
      {
        v8 = 0;
        goto LABEL_35;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 594);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to assign output data\n");
LABEL_34:
      v8 = 11;
LABEL_35:
      CFRelease(v5);
      if (v6)
      {
        CFRelease(v6);
      }

      goto LABEL_37;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "outData", "", "", 592);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(&error, 1, v9, v5);
    v10 = v20;
    v11 = error;
    ctu::cf::show(__p, 1, v12, v23);
    p_error = &error;
    if (v10 < 0)
    {
      p_error = v11;
    }

    if (v17 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to serialize dictionary %s error %s\n", p_error, v14);
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(error);
    goto LABEL_34;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "inDict", "", "", 590);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create dictionary\n");
  v8 = 11;
LABEL_37:
  if (v23)
  {
    CFRelease(v23);
  }

  return v8;
}

void sub_1E52B70F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v25 - 72));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v25 - 64));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v25 - 56));
  _Unwind_Resume(a1);
}

void *eUICC::Perso::PersoImplementation::PostDataSync(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 3) = 850045863;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_1F5F008D8;
  v32 = v6;
  v33 = v6;
  std::mutex::lock((v6 + 24));
  v7 = *(v6 + 34);
  if ((v7 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  *(v6 + 34) = v7 | 2;
  std::mutex::unlock((v6 + 24));
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0;
  v29 = 0;
  v27 = &v28;
  cf[1] = 0;
  cf[2] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v27, v28);
  (*(*v30 + 8))(v30, *a2);
  v8 = v30;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v32, &v27);
  (*(*v8 + 16))(v8, v27);
  if (v27)
  {
    _Block_release(v27);
  }

  (*(*v30 + 96))(v30, 60.0);
  v9 = v30;
  v10 = a2[1];
  cf[0] = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  (*(*v9 + 88))(v9, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  (*(*v30 + 56))(v30, a3);
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  (*(*v30 + 40))(v30, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v32;
  v32 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v11, &v23);
  if (v11 && !atomic_fetch_add(v11 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v11 + 16))(v11);
  }

  if ((*(*v23 + 16))(v23) == 1 && (*(*v23 + 24))(v23) == 200)
  {
    *a1 = v23;
    goto LABEL_29;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v12 = (*(*v23 + 16))(v23);
  v13 = (*(*v23 + 24))(v23);
  v14 = (*(*v23 + 32))(v23);
  (*(*v23 + 72))(&v22);
  ctu::cf::show(&v27, v22, v15);
  if (v29 >= 0)
  {
    v16 = &v27;
  }

  else
  {
    v16 = v27;
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "result %d code %d raw_error %ld error %s\n", v12, v13, v14, v16);
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    v17 = v22;
    if (!v22)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(v27);
  v17 = v22;
  if (v22)
  {
LABEL_25:
    CFRelease(v17);
  }

LABEL_26:
  *a1 = 0;
  *(a1 + 8) = 0;
  v18 = *(&v23 + 1);
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_29:
  v19 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = v32;
  if (v32 && !atomic_fetch_add(v32 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v20 + 16))(v20);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v33);
}

void sub_1E52B7740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v30 - 80);
  v32 = *(v30 - 64);
  if (v32)
  {
    if (!atomic_fetch_add(v32 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v32 + 16))(v32);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v30 - 56));
  _Unwind_Resume(a1);
}

void eUICC::Perso::PersoImplementation::logTransactionCFData(uint64_t a1, __int128 *a2, CFDataRef *a3)
{
  if (*a3)
  {
    BytePtr = CFDataGetBytePtr(*a3);
    Length = CFDataGetLength(*a3);
    v14 = 0;
    v15 = 0;
    __p = 0;
    if (Length)
    {
      if (Length < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v8 = Length;
      v9 = operator new(Length);
      v10 = &v9[v8];
      __p = v9;
      v15 = &v9[v8];
      memcpy(v9, BytePtr, v8);
      v14 = v10;
    }

    v11 = *(a1 + 40);
    if (v11 >= *(a1 + 48))
    {
      v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, &__p);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), a2, &__p);
      v12 = v11 + 2;
      *(a1 + 40) = v11 + 2;
    }

    *(a1 + 40) = v12;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }
}

void sub_1E52B798C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(const __CFData **a1, const void **a2)
{
  v26 = 0;
  v27 = 0;
  v3 = *a1;
  if (!*a1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "inData", "", "", 607);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create data\n");
    goto LABEL_28;
  }

  v5 = *MEMORY[0x1E695E480];
  error = 0;
  v24 = &v27;
  v6 = CFPropertyListCreateWithData(v5, v3, 0, 0, &error);
  v26 = v6;
  v7 = *v24;
  if (error)
  {
    *v24 = error;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v24 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v7);
LABEL_12:
  if (!v6)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "outPlist", "", "", 609);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(&error, 1, v11, *a1);
    v12 = v25;
    v13 = error;
    ctu::cf::show(__p, v27, v14);
    p_error = &error;
    if (v12 < 0)
    {
      p_error = v13;
    }

    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to deserialize dictionary %s error %s\n", p_error, v16);
    if (v22 < 0)
    {
      operator delete(__p[0]);
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    else if ((v25 & 0x80000000) == 0)
    {
LABEL_28:
      v17 = 11;
      goto LABEL_43;
    }

    operator delete(error);
    goto LABEL_28;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFDictionaryGetTypeID())
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()", "", "", 610);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(&error, v6, v18);
    if (v25 >= 0)
    {
      v19 = &error;
    }

    else
    {
      v19 = error;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Deserialized plist data is not a dictionary: %s\n", v19);
    if (v25 < 0)
    {
      operator delete(error);
    }

    v17 = 11;
    goto LABEL_42;
  }

  v9 = CFGetTypeID(v6);
  if (v9 == CFDictionaryGetTypeID())
  {
    CFRetain(v6);
    v10 = *a2;
    *a2 = v6;
    if (!v10)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v10 = *a2;
  *a2 = 0;
  if (v10)
  {
LABEL_40:
    CFRelease(v10);
  }

LABEL_41:
  v17 = 0;
LABEL_42:
  CFRelease(v6);
LABEL_43:
  if (v27)
  {
    CFRelease(v27);
  }

  return v17;
}

void sub_1E52B7D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v24 - 40));
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

void sub_1E52B7E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v15 - 48));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_1E52B7E40(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v1 - 48));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v1 - 40));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(const void **a1, CFTypeRef cf)
{
  if (!cf)
  {
LABEL_4:
    v5 = *a1;
    *a1 = cf;
    if (!v5)
    {
      return a1;
    }

    goto LABEL_7;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFDataGetTypeID())
  {
    CFRetain(cf);
    goto LABEL_4;
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
LABEL_7:
    CFRelease(v5);
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    eUICC::Perso::PersoImplementation::~PersoImplementation(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391B3ALL)
  {
    if (((v2 & 0x80000001E5391B3ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391B3ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391B3ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void eUICC::Perso::PersoImplementation::~PersoImplementation(eUICC::Perso::PersoImplementation *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
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
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  v7 = *(this + 2);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    CFRelease(v8);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

eUICC::Perso::PersoImplementation **std::unique_ptr<eUICC::Perso::PersoImplementation>::~unique_ptr[abi:ne200100](eUICC::Perso::PersoImplementation **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    eUICC::Perso::PersoImplementation::~PersoImplementation(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::reset(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t __cxx_global_var_init_9()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_94()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUEURELFImage::~BBUEURELFImage(BBUEURELFImage *this)
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

uint64_t BBUEURELFImage::getWritePayloadData(BBUEURELFImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*this + 32))(this) <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 77, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/ELF/BBUEURELFImage.cpp", 0x16u, "Assertion failure(( offset < getWritePayloadLength()) && Error: Chunk size is not sufficient to write payload data of the ELF image.)");
    goto LABEL_8;
  }

  v10 = -1431655766;
  result = (*(**(this + 1) + 16))(*(this + 1), a2, a3, &v10, *(this + 6) + a4);
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 78, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/ELF/BBUEURELFImage.cpp", 0x19u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy from ELF image!)");
    goto LABEL_8;
  }

  if (v10 != a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 78, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/ELF/BBUEURELFImage.cpp", 0x1Au, "Assertion failure(( amountCopied == amount) && Copied data size mismatch: Failed to copy from ELF image!)");
LABEL_8:
  }

  return result;
}

uint64_t BBUFSServerParametersInit(_OWORD *a1, char *__s1, uint64_t a3)
{
  if (a1 && __s1)
  {
    a1[21] = 0u;
    a1[22] = 0u;
    a1[19] = 0u;
    a1[20] = 0u;
    a1[17] = 0u;
    a1[18] = 0u;
    a1[15] = 0u;
    a1[16] = 0u;
    a1[13] = 0u;
    a1[14] = 0u;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    v5 = strnlen(__s1, 0x100uLL);
    v6 = TelephonyUtilStrlcpy();
    v7 = v6 + 1;
    v8 = v6 != v5 || v7 >= 0x101;
    result = !v8;
    if (v8)
    {
      v10 = result;
      _BBUFSDebugPrint("BBUFSServerParametersInit", "required path length = %zu, copied = %zu, max length = %zu\n", v5 + 1, v7, 0x100uLL);
      result = v10;
    }

    *(a1 + 45) = a3;
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerParametersInit", "invalid parameters specified: parameters = %p, destination = %s\n", a1, __s1);
    return 0;
  }

  return result;
}

uint64_t BBUFSServerPrepare(bbufs *a1, const char *a2)
{
  if (a1)
  {
    if (bbufs::prepareDestination(a1, a2))
    {
      return 1;
    }

    else
    {
      _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
      return 0;
    }
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    return 0;
  }
}

uint64_t BBUFSServerCreate(void *a1, uint64_t (**a2)(const char *, const char *, char *))
{
  if (!a1)
  {
    v12 = 0;
    _BBUFSDebugPrint("BBUFSServerCreate", "bad parameters for file server creation\n");
    return v12;
  }

  a1[50] = 0;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v4 = memcpy(a1, a2, 0x170uLL);
  v5 = ICEStateMachineSetConfigDefaults;
  v6 = ICEStateMachineSetConfig;
  v7 = ICEStateMachineSnapshotInProgress;
  v8 = ICEStateMachinePerformSnapshot;
  v9 = ICEStateMachineStop;
  v10 = ICEStateMachineStart;
  v11 = capabilities::radio::vendor(v4);
  if (v11 == 3)
  {
    v5 = INTStateMachineSetConfigDefaults;
    v6 = INTStateMachineSetConfig;
    v7 = INTStateMachineSnapshotInProgress;
    v8 = INTStateMachinePerformSnapshot;
    v9 = INTStateMachineStop;
    v10 = INTStateMachineStart;
    goto LABEL_8;
  }

  if (v11 == 2)
  {
LABEL_8:
    sBBUFSServerStart = v10;
    sBBUFSServerStop = v9;
    sBBUFSServerFlush = v8;
    sBBUFSServerFlushInProgress = v7;
    sBBUFSServerSetConfig = v6;
    sBBUFSServerSetConfigDefaults = v5;
LABEL_10:
    if ((v5)(a1))
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    _BBUFSDebugPrint("BBUFSServerCreate", "BBUFSServer create failed\n");
    return v12;
  }

  if (v11 != 1)
  {
    _BBUFSDebugPrint("BBUFSServerCreate", "invalid state machine type %u\n", v11);
    v5 = sBBUFSServerSetConfigDefaults;
    if (!sBBUFSServerSetConfigDefaults)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  sBBUFSServerStart = EURStateMachineStart;
  sBBUFSServerStop = EURStateMachineStop;
  sBBUFSServerFlush = EURStateMachinePerformFlush;
  sBBUFSServerFlushInProgress = EURStateMachineFlushInProgress;
  sBBUFSServerSetConfig = EURStateMachineSetConfig;
  sBBUFSServerSetConfigDefaults = 0;
LABEL_11:
  if (*a2)
  {
    sDelegate = *a2;
  }

  v12 = 1;
  _BBUFSDebugPrint("BBUFSServerCreate", "BBUFSServer created successfully\n");
  return v12;
}

BOOL BBUFSServerRelease(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 360))
    {
      _BBUFSDebugPrint("BBUFSServerRelease", "BBUFSServer releasing registry\n");
      v2 = *(a1 + 360);
      if (v2)
      {
        v3 = v2[1];
        if (v3)
        {
          std::__shared_weak_count::__release_weak(v3);
        }

        operator delete(v2);
      }

      *(a1 + 360) = 0;
    }

    sBBUFSServerStart = 0;
    sBBUFSServerStop = 0;
    sBBUFSServerFlush = 0;
    sBBUFSServerFlushInProgress = 0;
    sBBUFSServerSetConfig = 0;
    v4 = "BBUFSServer destroyed\n";
    sBBUFSServerSetConfigDefaults = 0;
  }

  else
  {
    v4 = "trying to release invalid file server\n";
  }

  _BBUFSDebugPrint("BBUFSServerRelease", v4);
  return a1 != 0;
}

uint64_t BBUFSServerStart(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sBBUFSServerStart;
  if (!sBBUFSServerStart)
  {
    _BBUFSDebugPrint("BBUFSServerStart", "sBBUFSServerStart function not initialized\n", v1, v2);
    return 0;
  }

  return v3();
}

uint64_t BBUFSServerFlush(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sBBUFSServerFlush;
  if (!sBBUFSServerFlush)
  {
    _BBUFSDebugPrint("BBUFSServerFlush", "sBBUFSServerFlush function not initialized\n", v1, v2);
    return 0;
  }

  return v3();
}

uint64_t BBUFSServerFlushInProgress(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sBBUFSServerFlushInProgress;
  if (!sBBUFSServerFlushInProgress)
  {
    _BBUFSDebugPrint("BBUFSServerFlushInProgress", "sBBUFSServerFlushInProgress function not initialized\n", v1, v2);
    return 0;
  }

  return v3();
}

uint64_t BBUFSServerSetConfig(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sBBUFSServerSetConfig;
  if (!sBBUFSServerSetConfig)
  {
    _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n", v1, v2);
    return 0;
  }

  return v3();
}

uint64_t BBUFSServerSetConfigDefaults(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sBBUFSServerSetConfigDefaults;
  if (!sBBUFSServerSetConfigDefaults)
  {
    _BBUFSDebugPrint("BBUFSServerSetConfigDefaults", "sBBUFSServerSetConfigDefaults function not initialized\n", v1, v2);
    return 0;
  }

  return v3();
}

uint64_t BBUFSServerStop(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sBBUFSServerStop;
  if (!sBBUFSServerStop)
  {
    _BBUFSDebugPrint("BBUFSServerStop", "sBBUFSServerStop function not initialized\n", v1, v2);
    return 0;
  }

  return v3();
}

uint64_t BBUEUR10HashData::compare(BBUEUR10HashData *this, BBUFeedback *a2, const BBUHashData *lpsrc)
{
  v4 = this;
  if (!lpsrc)
  {
    v5 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v5 = this;
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 8, this + 8, "SBL1");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 40, v5 + 40, "RPM");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 264, v5 + 264, "ACDB");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 72, v5 + 72, "APPS");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 104, v5 + 104, "DSP3");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 136, v5 + 136, "MBA");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 168, v5 + 168, "QDSP6SW");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 200, v5 + 200, "TZ");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 232, v5 + 232, "WDT");
  v6 = this;
LABEL_14:
  v7 = capabilities::updater::supportsBbcfgImage(this) ^ 1;
  if ((v7 & 1) != 0 || !v6)
  {
    return v7 & v6;
  }

  return BBUHashData::compareHash(v4, a2, v4 + 296, v5 + 296, "BBCFG");
}

void BBUEUR10HashData::showHashes(BBUEUR10HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "SBL1_HASH", &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "RPM_HASH", p_p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "APPS_HASH", v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "DSP3_HASH", v6);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "MBA_HASH", v7);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "QDSP6SW_HASH", v8);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "TZ_HASH", v9);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "WDT_HASH", v10);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "ACDB_HASH", v11);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "BBCFG_HASH", v12);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52B9410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _BBUException::constructCommon(uint64_t a1, int a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *this, char *a6)
{
  memset(&v62, 170, sizeof(v62));
  ctu::LogMessageBuffer::vCreateWithFormat(&v60, this, a6, a3);
  v10 = MEMORY[0x1E69264F0](&v60);
  v11 = *v10;
  v62.__r_.__value_.__r.__words[2] = *(v10 + 16);
  *&v62.__r_.__value_.__l.__data_ = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  MEMORY[0x1E6926520](&v60);
  *(&v55.__r_.__value_.__s + 23) = 1;
  LOWORD(v55.__r_.__value_.__l.__data_) = 32;
  v12 = BBUReturnAsString::BBUReturnStrings[a2];
  v13 = strlen(v12);
  v14 = std::string::append(&v55, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v17 = &v56;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) == 22)
    {
      v18 = 22;
      v19 = 23;
LABEL_7:
      v21 = 2 * v18;
      if (v19 > 2 * v18)
      {
        v21 = v19;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v20 = v22;
      }

      else
      {
        v20 = 23;
      }

      v23 = v18 == 22;
      goto LABEL_16;
    }

LABEL_22:
    v17->__r_.__value_.__s.__data_[size] = 64;
    v27 = size + 1;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      v56.__r_.__value_.__l.__size_ = v27;
    }

    else
    {
      *(&v56.__r_.__value_.__s + 23) = v27 & 0x7F;
    }

    v26 = v17 + v27;
    goto LABEL_26;
  }

  size = v56.__r_.__value_.__l.__size_;
  v19 = v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v18 = (v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 != v56.__r_.__value_.__l.__size_)
  {
    v17 = v56.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

  v20 = 0x7FFFFFFFFFFFFFF7;
  if (v19 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v56.__r_.__value_.__r.__words[0];
  if (v18 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_7;
  }

  v23 = 0;
LABEL_16:
  v24 = operator new(v20);
  v25 = v24;
  if (v18)
  {
    memmove(v24, v17, v18);
  }

  *(v25 + v18) = 64;
  if (!v23)
  {
    operator delete(v17);
  }

  v56.__r_.__value_.__l.__size_ = v19;
  v56.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
  v56.__r_.__value_.__r.__words[0] = v25;
  v26 = (v25 + v19);
LABEL_26:
  *v26 = 0;
  v57 = v56;
  memset(&v56, 0, sizeof(v56));
  strlen(a3);
  ctu::basename();
  if ((v54 & 0x80u) == 0)
  {
    v28 = v53;
  }

  else
  {
    v28 = v53[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v29 = v54;
  }

  else
  {
    v29 = v53[1];
  }

  v30 = std::string::append(&v57, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_p = &__p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      v34 = 22;
      v35 = 23;
LABEL_38:
      v37 = 2 * v34;
      if (v35 > 2 * v34)
      {
        v37 = v35;
      }

      if ((v37 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v37 | 7) + 1;
      }

      if (v37 >= 0x17)
      {
        v36 = v38;
      }

      else
      {
        v36 = 23;
      }

      v39 = v34 == 22;
      goto LABEL_47;
    }

LABEL_53:
    p_p->__r_.__value_.__s.__data_[v32] = 58;
    v43 = v32 + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v43;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v43 & 0x7F;
    }

    v42 = p_p + v43;
    goto LABEL_57;
  }

  v32 = __p.__r_.__value_.__l.__size_;
  v35 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v34 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v34 != __p.__r_.__value_.__l.__size_)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    goto LABEL_53;
  }

  v36 = 0x7FFFFFFFFFFFFFF7;
  if (v35 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if (v34 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_38;
  }

  v39 = 0;
LABEL_47:
  v40 = operator new(v36);
  v41 = v40;
  if (v34)
  {
    memmove(v40, p_p, v34);
  }

  *(v41 + v34) = 58;
  if (!v39)
  {
    operator delete(p_p);
  }

  __p.__r_.__value_.__l.__size_ = v35;
  __p.__r_.__value_.__r.__words[2] = v36 | 0x8000000000000000;
  __p.__r_.__value_.__r.__words[0] = v41;
  v42 = (v41 + v35);
LABEL_57:
  *v42 = 0;
  v59 = __p;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v52, a4);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v52;
  }

  else
  {
    v44 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v52.__r_.__value_.__l.__size_;
  }

  v46 = std::string::append(&v59, v44, v45);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v61 = v46->__r_.__value_.__r.__words[2];
  v60 = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (v61 >= 0)
  {
    v48 = &v60;
  }

  else
  {
    v48 = v60;
  }

  if (v61 >= 0)
  {
    v49 = HIBYTE(v61);
  }

  else
  {
    v49 = *(&v60 + 1);
  }

  std::string::append(&v62, v48, v49);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_71:
      if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_84;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_72:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_85;
  }

LABEL_84:
  operator delete(v59.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_73:
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_86;
  }

LABEL_85:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v54 & 0x80000000) == 0)
  {
LABEL_74:
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(v53[0]);
  if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_75:
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_88:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_89;
  }

LABEL_87:
  operator delete(v57.__r_.__value_.__l.__data_);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_88;
  }

LABEL_76:
  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_89:
  operator delete(v55.__r_.__value_.__l.__data_);
LABEL_77:
  *(a1 + 8) = 0u;
  v50 = a1 + 8;
  *(v50 + 480) = 0u;
  *(v50 + 496) = 0u;
  *(v50 + 448) = 0u;
  *(v50 + 464) = 0u;
  *(v50 + 416) = 0u;
  *(v50 + 432) = 0u;
  *(v50 + 384) = 0u;
  *(v50 + 400) = 0u;
  *(v50 + 352) = 0u;
  *(v50 + 368) = 0u;
  *(v50 + 320) = 0u;
  *(v50 + 336) = 0u;
  *(v50 + 288) = 0u;
  *(v50 + 304) = 0u;
  *(v50 + 256) = 0u;
  *(v50 + 272) = 0u;
  *(v50 + 224) = 0u;
  *(v50 + 240) = 0u;
  *(v50 + 192) = 0u;
  *(v50 + 208) = 0u;
  *(v50 + 160) = 0u;
  *(v50 + 176) = 0u;
  *(v50 + 128) = 0u;
  *(v50 + 144) = 0u;
  *(v50 + 96) = 0u;
  *(v50 + 112) = 0u;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  v51 = &v62;
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v51 = v62.__r_.__value_.__r.__words[0];
  }

  *(v50 + 16) = 0uLL;
  snprintf(v50, 0x200uLL, "%s\n", v51);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }
}

void sub_1E52B9988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a47 < 0)
  {
    operator delete(a42);
    if (a21 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a40 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_3;
  }

  if ((a40 & 0x80000000) == 0)
  {
LABEL_4:
    if (a33 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a35);
  if (a33 < 0)
  {
LABEL_5:
    operator delete(a28);
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v54 - 105) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if (*(v54 - 105) < 0)
  {
LABEL_7:
    operator delete(*(v54 - 128));
    _Unwind_Resume(a1);
  }

LABEL_13:
  _Unwind_Resume(a1);
}

void sub_1E52B9AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x1E52B9A10);
  }

  JUMPOUT(0x1E52B9A74);
}

void sub_1E52B9ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x1E52B9A7CLL);
  }

  JUMPOUT(0x1E52B9A20);
}

void sub_1E52B9ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x1E52B9A94);
  }

  JUMPOUT(0x1E52B9A38);
}

uint64_t _BBUException::_BBUException(uint64_t a1, int a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *a5, ...)
{
  va_start(va, a5);
  *a1 = &unk_1F5F01570;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, va);
  return a1;
}

void _BBUException::~_BBUException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void support::fs::SyncFile::create(uint64_t a1@<X0>, int a2@<W1>, size_t a3@<X2>, void *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((a3 & (a3 - 1)) != 0)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v12;
    v25 = v12;
    *&v22[16] = v12;
    v23 = v12;
    *v22 = v12;
    v21.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
    *&v21.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
    strcpy(v21.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
    *(&__p.__r_.__value_.__s + 23) = 8;
    strcpy(&__p, "syncfile");
    support::log::client::client(v22, &v21, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        v13 = *v24;
        if (!os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v21.__r_.__value_.__l.__data_);
    v13 = *v24;
    if (!os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      *a4 = 0;
      a4[1] = 0;
      *v22 = &unk_1F5EFEF10;
      v14 = v25;
      if (!v25)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_17:
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = a3;
    _os_log_error_impl(&dword_1E5234000, v13, OS_LOG_TYPE_ERROR, "error: buffer size provided (%lu) must be a power of two", &buf, 0xCu);
    *a4 = 0;
    a4[1] = 0;
    *v22 = &unk_1F5EFEF10;
    v14 = v25;
    if (!v25)
    {
      return;
    }

LABEL_11:
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    return;
  }

  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_4;
    }

LABEL_14:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = operator new(0x2F8uLL);
  v9 = dispatch_queue_create("SyncFile", 0);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v9;
  if (v9)
  {
    v10 = v9;
    dispatch_retain(v9);
    *(v8 + 4) = 0;
    dispatch_release(v10);
    *v8 = &unk_1F5F015B0;
    v11 = (v8 + 40);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
LABEL_6:
      *&v11->__r_.__value_.__l.__data_ = *a1;
      v11->__r_.__value_.__r.__words[2] = *(a1 + 16);
      goto LABEL_21;
    }
  }

  else
  {
    *(v8 + 4) = 0;
    *v8 = &unk_1F5F015B0;
    v11 = (v8 + 40);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(v11, *a1, *(a1 + 8));
LABEL_21:
  *(v8 + 68) = 0;
  *(v8 + 9) = 0;
  *(v8 + 8) = &unk_1F5F01768;
  *(v8 + 62) = &unk_1F5F01790;
  std::ios_base::init((v8 + 496), v8 + 88);
  *(v8 + 79) = 0;
  *(v8 + 160) = -1;
  MEMORY[0x1E6926FC0](v8 + 88);
  *(v8 + 162) = a2;
  *(v8 + 82) = 0;
  *(v8 + 84) = 0;
  *(v8 + 83) = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v15 = operator new(a3);
    *(v8 + 82) = v15;
    v16 = &v15[a3];
    *(v8 + 84) = &v15[a3];
    bzero(v15, a3);
    *(v8 + 83) = v16;
  }

  *v22 = operator new(0x30uLL);
  *&v22[8] = xmmword_1E538EAF0;
  strcpy(*v22, "com.apple.telephony.basebandservices.support");
  *(&buf.__r_.__value_.__s + 23) = 8;
  strcpy(&buf, "syncfile");
  support::log::client::client(v8 + 85, v22, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v22[23] & 0x80000000) == 0)
    {
LABEL_26:
      if (*(v8 + 83) == *(v8 + 82))
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v22[23] & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(*v22);
  if (*(v8 + 83) != *(v8 + 82))
  {
LABEL_30:
    (*(*(v8 + 11) + 24))(v8 + 88);
  }

LABEL_31:
  *a4 = v8;
  v17 = operator new(0x20uLL);
  v17->__shared_owners_ = 0;
  p_shared_owners = &v17->__shared_owners_;
  v17->__vftable = &unk_1F5F01818;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v8;
  a4[1] = v17;
  v19 = *(v8 + 2);
  if (v19)
  {
    if (v19->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v17;
    std::__shared_weak_count::__release_weak(v19);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v17;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v17->__on_zero_shared)(v17);

  std::__shared_weak_count::__release_weak(v17);
}

void sub_1E52BA1E8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1E52BA2ACLL);
}

void sub_1E52BA1F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      v36 = *v35;
      if (!*v35)
      {
LABEL_5:
        JUMPOUT(0x1E52BA284);
      }

LABEL_4:
      *(v33 + 664) = v36;
      operator delete(v36);
      goto LABEL_5;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  v36 = *v35;
  if (!*v35)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

void sub_1E52BA254()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 664) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E52BA284);
}

void sub_1E52BA264(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v4);
  if (v1[63] < 0)
  {
    operator delete(*v3);
  }

  ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1E52BA2B4()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 664) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E52BA284);
}

void sub_1E52BA2C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    JUMPOUT(0x1E52BA2A8);
  }

  JUMPOUT(0x1E52BA2ACLL);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x1E6926FD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v2);
  return a1;
}

void ___ZN7support2fs8SyncFile4openEv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = **(v1 + 728);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (v1 + 40);
    if (*(v1 + 63) < 0)
    {
      v3 = *v3;
    }

    v8 = 136315138;
    v9 = v3;
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "Opening file '%s'", &v8, 0xCu);
  }

  if (*(v1 + 208))
  {
    v4 = **(v1 + 728);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (v1 + 40);
      if (*(v1 + 63) < 0)
      {
        v5 = *v5;
      }

      v8 = 136315138;
      v9 = v5;
      _os_log_impl(&dword_1E5234000, v4, OS_LOG_TYPE_INFO, "Skipped open, file '%s' is already open", &v8, 0xCu);
    }
  }

  else
  {
    v6 = std::filebuf::open();
    v7 = (v1 + 64 + *(*(v1 + 64) - 24));
    if (v6)
    {
      std::ios_base::clear(v7, 0);
    }

    else
    {
      std::ios_base::clear(v7, v7->__rdstate_ | 4);
    }
  }
}

void support::fs::SyncFile::close_sync(support::fs::SyncFile *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "Closing file '%s'", &v7, 0xCu);
  }

  if (*(this + 26))
  {
    support::fs::SyncFile::flush_sync(this);
    if (!std::filebuf::close())
    {
      v4 = (this + *(*(this + 8) - 24) + 64);
      std::ios_base::clear(v4, v4->__rdstate_ | 4);
    }
  }

  else
  {
    v5 = **(this + 91);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_INFO, "Skipped close, file '%s' is not open", &v7, 0xCu);
    }
  }
}

void support::fs::SyncFile::flush_sync(support::fs::SyncFile *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "Flushing file '%s'", &v6, 0xCu);
  }

  if (*(this + 26))
  {
    std::ostream::flush();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (this + 40);
      if (*(this + 63) < 0)
      {
        v5 = *v5;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&dword_1E5234000, v4, OS_LOG_TYPE_INFO, "Skipped flush, file '%s' is not open", &v6, 0xCu);
    }
  }
}

uint64_t support::fs::SyncFile::isOpen(support::fs::SyncFile *this)
{
  v4 = this;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNKS3_6isOpenEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_19;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_21_0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_20;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void support::fs::SyncFile::~SyncFile(void **this)
{
  *this = &unk_1F5F015B0;
  support::fs::SyncFile::close_sync(this);
  this[85] = &unk_1F5EFEF10;
  v2 = this[93];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[82];
  if (v3)
  {
    this[83] = v3;
    operator delete(v3);
  }

  MEMORY[0x1E6926FD0](this + 11);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](this + 62);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  support::fs::SyncFile::~SyncFile(this);

  operator delete(v1);
}

void support::fs::SyncFile::flush(support::fs::SyncFile *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t support::fs::SyncFile::write(support::fs::SyncFile *this, const void *a2, uint64_t a3)
{
  v6[0] = this;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v7[3] = &__block_descriptor_tmp_22;
  v7[4] = this + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v15 = -86;
    block = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_21_0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = -86;
    block = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_20;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15 & 1;
}

uint64_t std::fstream::~fstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[8];
  a1[2] = a2[9];
  MEMORY[0x1E6926FD0](a1 + 3);

  return std::iostream::~basic_iostream();
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x1E6926FD0](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E69273B0);
}

{
  v1 = a1 - 2;
  v2 = a1 + 52;
  MEMORY[0x1E6926FD0](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v2);

  operator delete(v1);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6926FD0](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E69273B0);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6926FD0](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v1 + 54);

  operator delete(v1);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v2 = a1 + 54;
  MEMORY[0x1E6926FD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v2);

  operator delete(a1);
}

void std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile*)#1}::operator() const(support::fs::SyncFile*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void __copy_helper_block_e8_32b40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32b40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  _Block_object_dispose(v2, 7);
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void *std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  support::fs::SyncFile::flush_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_1E52BB688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    std::ostream::write();
  }

  else
  {
    v4 = **(v2 + 728);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v6 = *v6;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_error_impl(&dword_1E5234000, v4, OS_LOG_TYPE_ERROR, "error: Failed to write, file '%s' is not open", &v7, 0xCu);
    }
  }

  return v3 != 0;
}

void sub_1E52BB784(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __cxx_global_var_init_10()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

eUICC::eUICCVinylICEValve *eUICC::eUICCVinylICEValve::eUICCVinylICEValve(eUICC::eUICCVinylICEValve *this, void *a2, int a3, char a4)
{
  *(this + 289) = 0;
  *(this + 304) = 0;
  *this = &unk_1F5F01898;
  *(this + 39) = 0;
  *(this + 37) = a2;
  v5 = a3 != 1;
  if (a3 == 255)
  {
    v5 = 255;
  }

  *(this + 73) = v5;
  *(this + 290) = a4;
  IceAriGetContext();
  v6 = operator new(0x40uLL);
  eUICC::VinylCommandDriver::VinylCommandDriver();
  v7 = *(this + 39);
  *(this + 39) = v6;
  if (v7)
  {
    eUICC::VinylCommandDriver::~VinylCommandDriver(v7);
    operator delete(v8);
  }

  *(this + 304) = 15;
  return this;
}

void sub_1E52BB878(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unique_ptr<eUICC::VinylCommandDriver>::~unique_ptr[abi:ne200100]((v1 + 312));
  _Unwind_Resume(a1);
}

std::__shared_weak_count_vtbl *IceAriGetContext(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (!qword_1ED9441D8)
  {
    v0 = operator new(0x28uLL);
    LOBYTE(v0->__on_zero_shared_weak) = 0;
    v1 = operator new(0x20uLL);
    v1->__vftable = &unk_1F5F01938;
    v1->__shared_owners_ = 0;
    v1->__shared_weak_owners_ = 0;
    v1[1].__vftable = v0;
    v3 = off_1ED9441E0;
    qword_1ED9441D8 = v0;
    off_1ED9441E0 = v1;
    if (!v3)
    {
      goto LABEL_7;
    }

    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v0 = qword_1ED9441D8;
  v1 = off_1ED9441E0;
  if (off_1ED9441E0)
  {
LABEL_7:
    v2 = 0;
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v2 = 1;
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if ((v2 & 1) != 0 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v0;
  }

  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  return v0;
}

void sub_1E52BB9F8(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  _Unwind_Resume(a1);
}

void *eUICC::eUICCVinylICEValve::GetVinylType@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 287) = 1;
  return memcpy(a2, this + 8, 0x11AuLL);
}

uint64_t eUICC::eUICCVinylICEValve::GetData@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[3] = v4;
  *__p = v4;
  v41[1] = v4;
  v41[2] = v4;
  v41[0] = v4;
  AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(v41);
  v5 = (this + 8);
  if (*(this + 289) == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylData cache is valid. Using cached data!\n");
    eUICC::logEUICCData(this + 2, v6, v7);
    goto LABEL_5;
  }

  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *v5 = 0u;
  *(this + 274) = 0u;
  v9 = operator new(4uLL);
  *v9 = *(this + 73);
  v10 = __p[0];
  __p[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(1uLL);
  *v11 = 0;
  v12 = __p[1];
  __p[1] = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[2] = v13;
  v44[3] = v13;
  v44[0] = v13;
  v44[1] = v13;
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v44);
  v43 = 0;
  v14 = operator new(4uLL);
  *v14 = *(this + 73);
  v15 = v45;
  v45 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = 0;
  while (1)
  {
    if ((eUICC::VinylCommandDriver::GetVinylType() & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get slot info from BB\n");
LABEL_30:
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "ret", "", "", 373);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to get data from UIM\n");
LABEL_40:
      LOBYTE(v21) = 0;
      goto LABEL_41;
    }

    v17 = v43;
    v18 = **(v43 + 128);
    if (v18)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!(GET_RSP_FIELD(rsp, sim_error_cause_t28) & sim_error_cause_mask)", "", "", 360);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x, sim_error_cause 0x%x\n", **(v43 + 72), **(v43 + 128));
      goto LABEL_40;
    }

    v19 = **(v43 + 72);
    if (v19 != 1 && v19 != 254 && v19 != 4)
    {
      break;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... sim_state 0x%x (retryCount: %d, retryLimit: %d)\n", **(v43 + 72), v16, 7);
    if (v43)
    {
      (*(*v43 + 16))(v43);
    }

    v43 = 0;
    __ns.__rep_ = 2000000000;
    std::this_thread::sleep_for (&__ns);
    if (++v16 == 7)
    {
      goto LABEL_30;
    }
  }

  if (v18 == 2)
  {
    LOBYTE(v21) = 1;
    goto LABEL_42;
  }

  v35 = *(v43 + 136);
  if (v35)
  {
    v21 = (*v35 & 3) == 0;
  }

  else
  {
    v21 = 1;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v36 = **(v43 + 72);
    v37 = *(v43 + 136);
    v38 = **(v43 + 128);
    if (v37)
    {
      goto LABEL_73;
    }

LABEL_75:
    v39 = 57005;
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v36 = **(v43 + 72);
    v37 = *(v43 + 136);
    v38 = **(v43 + 128);
    if (!v37)
    {
      goto LABEL_75;
    }

LABEL_73:
    v39 = *v37;
  }

  v40 = "No";
  if (v21)
  {
    v40 = "Yes";
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x sim_error_cause: 0x%x sim_ext_capabilities 0x%x isAbsentOk: %s\n", v36, v38, v39, v40);
LABEL_41:
  v17 = v43;
  if (!v43)
  {
    goto LABEL_43;
  }

LABEL_42:
  (*(*v17 + 16))(v17);
LABEL_43:
  MEMORY[0x1E6926C10](v44);
  *(this + 286) = v21;
  *(this + 288) = 0;
  if (v21)
  {
    goto LABEL_65;
  }

  if ((eUICC::VinylCommandDriver::GetData() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Invalid GetData response from the BB\n");
LABEL_65:
    *v5 = 255;
    goto LABEL_5;
  }

  *(this + 2) = *MEMORY[0x48];
  v24 = MEMORY[0x60];
  *(this + 13) = *MEMORY[0x58];
  if (v24 == MEMORY[0x68])
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  *(this + 15) = *v25;
  v26 = MEMORY[0x80];
  *(this + 31) = *MEMORY[0x78];
  if (v26 == MEMORY[0x88])
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  v28 = v27[1];
  *(this + 2) = *v27;
  *(this + 3) = v28;
  *(this + 8) = *MEMORY[0x98];
  *(this + 9) = *MEMORY[0xB0];
  v29 = MEMORY[0xC8];
  if (MEMORY[0xC8] == MEMORY[0xD0])
  {
    v29 = 0;
  }

  *(this + 5) = *v29;
  v30 = MEMORY[0x128];
  if (MEMORY[0x128] == MEMORY[0x130])
  {
    v30 = 0;
  }

  *(this + 155) = *v30;
  v31 = MEMORY[0x1C0];
  if (MEMORY[0x1C0] == MEMORY[0x1C8])
  {
    v31 = 0;
  }

  v32 = v31[1];
  *(this + 251) = *v31;
  *(this + 267) = v32;
  *(this + 115) = *MEMORY[0x188];
  v33 = MEMORY[0x1A8];
  if (MEMORY[0x1A8] == MEMORY[0x1B0])
  {
    v33 = 0;
  }

  v34 = *(v33 + 2);
  *(this + 124) = *v33;
  *(this + 250) = v34;
  *(this + 12) = *MEMORY[0x50];
  *(this + 283) = *MEMORY[0x1E8];
  *(this + 289) = 1;
  eUICC::logEUICCData(this + 2, v22, v23);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "result  0x%x \n", *MEMORY[0x48]);
LABEL_5:
  memcpy(a2, this + 8, 0x11AuLL);
  return MEMORY[0x1E6926AB0](v41);
}

uint64_t eUICC::eUICCVinylICEValve::SetCardMode(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[3] = v2;
  *__p = v2;
  v9[1] = v2;
  v9[2] = v2;
  v9[0] = v2;
  AriSdk::ARI_IBIVinylSwitchModeReq_SDK::ARI_IBIVinylSwitchModeReq_SDK(v9);
  v3 = operator new(4uLL);
  *v3 = *(a1 + 292);
  v4 = __p[0];
  __p[0] = v3;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = operator new(1uLL);
  *v5 = 0;
  v6 = __p[1];
  __p[1] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  if (eUICC::VinylCommandDriver::SwitchCardMode())
  {
    v7 = 0;
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to SwitchCardMode\n");
    v7 = 18;
  }

  MEMORY[0x1E6926B70](v9);
  return v7;
}

uint64_t eUICC::eUICCVinylICEValve::InstallTicket(_DWORD *a1, CFDataRef *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v4;
  v24 = v4;
  v21[3] = v4;
  *__p = v4;
  v21[1] = v4;
  v21[2] = v4;
  v21[0] = v4;
  AriSdk::ARI_IBIVinylInstallVadReq_SDK::ARI_IBIVinylInstallVadReq_SDK(v21);
  if (!*a2)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "installTicket", "", "", 146);
    goto LABEL_24;
  }

  (*(*a1 + 8))(__src, a1);
  v5 = memcpy(a1 + 2, __src, 0x11AuLL);
  if (a1[2] == capabilities::updater::EUICCVinylSuccessStatus(v5))
  {
    if (*(a1 + 31))
    {
      v6 = (*(*a1 + 16))(a1, 0, 0);
      if (v6)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 159);
        goto LABEL_25;
      }
    }

    v7 = operator new(4uLL);
    *v7 = a1[73];
    v8 = __p[0];
    __p[0] = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(2uLL);
    *v9 = 1;
    v10 = __p[1];
    __p[1] = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = operator new(2uLL);
    *v11 = 0;
    v12 = v23[0];
    v23[0] = v11;
    if (v12)
    {
      operator delete(v12);
    }

    BytePtr = CFDataGetBytePtr(*a2);
    Length = CFDataGetLength(*a2);
    if (Length >= 0xE01)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Ticket provided is larger than spec. [ %lu (lenth) > %lu (spec max) ] \n", Length, 3584);
LABEL_24:
      v6 = 2;
      goto LABEL_25;
    }

    v16 = operator new(2uLL);
    *v16 = Length;
    v17 = v23[1];
    v23[1] = v16;
    if (v17)
    {
      operator delete(v17);
    }

    if (Length)
    {
      v18 = operator new(Length);
      memcpy(v18, BytePtr, Length);
      v19 = operator new(Length);
      v20 = &v19[Length];
      *&__src[0] = v19;
      *&__src[1] = &v19[Length];
      memcpy(v19, v18, Length);
      *(&__src[0] + 1) = v20;
    }

    else
    {
      v18 = 0;
      memset(__src, 0, 24);
    }

    AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v24, __src);
    if (*&__src[0])
    {
      *(&__src[0] + 1) = *&__src[0];
      operator delete(*&__src[0]);
    }

    if (eUICC::VinylCommandDriver::InstallVad())
    {
      if (*MEMORY[0x48])
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "InstallTicket result 0x%x sw1_sw2 0x%hx\n", *MEMORY[0x48], *MEMORY[0x50]);
        v6 = 16;
        if (!v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v6 = 0;
        if (!v18)
        {
          goto LABEL_25;
        }
      }

LABEL_46:
      operator delete(v18);
      goto LABEL_25;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 184);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "InstallTicket failed to get desired response\n");
    v6 = 11;
    if (v18)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()", "", "", 153);
    v6 = 18;
  }

LABEL_25:
  MEMORY[0x1E6926B50](v21);
  return v6;
}

void sub_1E52BC8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (v31)
  {
    operator delete(v31);
    MEMORY[0x1E6926B50](&a15);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E6926B50](&a15);
  _Unwind_Resume(a1);
}

Ari *AriSdk::TlvArray<unsigned char,3584ul>::operator=(Ari *a1, __int128 *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0xE01uLL)
  {
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v10;
      operator delete(v10);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v14, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v7);
        v12 = v15 >= 0 ? v14 : v14[0];
        v13 = *(a2 + 1) - *a2;
        *__p = 136316418;
        *&__p[4] = "ari";
        v17 = 2080;
        v18 = v12;
        v19 = 1024;
        v20 = 360;
        v21 = 2048;
        v22 = a1;
        v23 = 2048;
        v24 = v13;
        v25 = 2048;
        v26 = 3584;
        _os_log_error_impl(&dword_1E5234000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v7);
      if (v19 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v8, v9, 360, a1, *(a2 + 1) - *a2, 3584);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  return a1;
}

void sub_1E52BCB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::StreamFirmware(_DWORD *a1, uint64_t a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v65 = 0;
  memset(v64, 170, sizeof(v64));
  (*(**a2 + 24))(v64);
  v3 = v64[1];
  v4 = v64[0];
  (*(*a1 + 8))(v68, a1);
  v5 = memcpy(a1 + 2, v68, 0x11AuLL);
  if (a1[2] != capabilities::updater::EUICCVinylSuccessStatus(v5))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()", "", "", 214);
    v8 = 18;
    v9 = v65;
    if (v65)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if (*(a1 + 31) == 1)
  {
    v7 = 18;
  }

  else
  {
    v8 = (*(*a1 + 16))(a1, 0, 0);
    if (v8)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 220);
      goto LABEL_81;
    }

    v7 = 0;
  }

  v10 = (v3 - v4) >> 5;
  v11 = *(a1 + 304);
  v61 = v10;
  if (v10 % v11)
  {
    v12 = v10 / v11 + 1;
  }

  else
  {
    v12 = v10 / v11;
  }

  if (!v12)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "apduSetCount", "", "", 224);
    v8 = 15;
    v9 = v65;
    if (v65)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v58 = v7;
  v62 = 0;
  v63 = 0;
  v13 = 0;
  v57 = &v68[6] + 1;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 136316418;
  v56 = v6;
  v59 = v12;
  while (1)
  {
    v68[6] = v14;
    v68[7] = v14;
    v68[5] = v14;
    v68[3] = v14;
    v68[4] = v14;
    v68[1] = v14;
    v68[2] = v14;
    v68[0] = v14;
    v15 = AriSdk::ARI_IBIVinylInstallFwReq_SDK::ARI_IBIVinylInstallFwReq_SDK(v68);
    v60 = &v56;
    v16 = *(a1 + 304);
    if (v61 - v13 * v16 >= v16)
    {
      v17 = *(a1 + 304);
    }

    else
    {
      v17 = v61 - v13 * v16;
    }

    MEMORY[0x1EEE9AC00](v15);
    v19 = &v56 - v18;
    bzero(&v56 - v18, v20);
    v21 = operator new(4uLL);
    *v21 = a1[73];
    v22 = *&v68[4];
    *&v68[4] = v21;
    if (v22)
    {
      operator delete(v22);
    }

    v23 = v19;
    if (v17)
    {
      break;
    }

LABEL_31:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v31 = v59;
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v13, v59, v17);
    v32 = operator new(2uLL);
    *v32 = v31;
    v33 = *(&v68[4] + 1);
    *(&v68[4] + 1) = v32;
    if (v33)
    {
      operator delete(v33);
    }

    v34 = operator new(2uLL);
    *v34 = v13;
    v35 = *&v68[5];
    *&v68[5] = v34;
    if (v35)
    {
      operator delete(v35);
    }

    v36 = operator new(2uLL);
    v37 = v23 - v19;
    *v36 = v23 - v19;
    v38 = *&v68[6];
    *&v68[6] = v36;
    if (v38)
    {
      operator delete(v38);
    }

    if (v37 >= 0xF5B)
    {
      LogLevels = Ari::GetLogLevels(v36);
      if ((LogLevels & 8) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v66, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v47);
          v54 = v66;
          if (v67 < 0)
          {
            v54 = v66[0];
          }

          *buf = v56;
          *&buf[4] = "ari";
          v70 = 2080;
          v71 = v54;
          v72 = 1024;
          v73 = 385;
          v74 = 2048;
          v75 = v57;
          v76 = 2048;
          v77 = v37;
          v78 = 2048;
          v79 = 3930;
          _os_log_error_impl(&dword_1E5234000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", buf, 0x3Au);
          if (v67 < 0)
          {
            operator delete(v66[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v47);
        v49 = buf;
        if (v72 < 0)
        {
          v49 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v48, v49, 385, v57, v37, 3930);
        if (SHIBYTE(v72) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      v39 = *(&v68[7] + 1);
      v40 = *(&v68[6] + 1);
      if (*(&v68[7] + 1) - *(&v68[6] + 1) < v37)
      {
        if (*(&v68[6] + 1))
        {
          *&v68[7] = *(&v68[6] + 1);
          operator delete(*(&v68[6] + 1));
          v39 = 0;
          v41 = v57;
          *v57 = 0;
          v41[1] = 0;
          v41[2] = 0;
        }

        v42 = 2 * v39;
        if (2 * v39 <= v37)
        {
          v42 = v23 - v19;
        }

        if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v43 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        v44 = operator new(v43);
        v40 = v44;
        *(&v68[6] + 1) = v44;
        *(&v68[7] + 1) = &v44[v43];
        if (v23 != v19)
        {
          memcpy(v44, v19, v23 - v19);
        }

LABEL_64:
        *&v68[7] = &v40[v37];
        goto LABEL_65;
      }

      v50 = *&v68[7];
      v51 = *&v68[7] - *(&v68[6] + 1);
      if (*&v68[7] - *(&v68[6] + 1) >= v37)
      {
        v31 = v59;
        if (v23 != v19)
        {
          memmove(*(&v68[6] + 1), v19, v23 - v19);
        }

        goto LABEL_64;
      }

      if (*&v68[7] != *(&v68[6] + 1))
      {
        memmove(*(&v68[6] + 1), v19, *&v68[7] - *(&v68[6] + 1));
        v50 = *&v68[7];
      }

      if (v23 != &v19[v51])
      {
        memmove(v50, &v19[v51], v23 - &v19[v51]);
      }

      *&v68[7] = &v50[v23 - &v19[v51]];
      v31 = v59;
    }

LABEL_65:
    v52 = operator new(1uLL);
    *v52 = v17;
    v53 = *(&v68[5] + 1);
    *(&v68[5] + 1) = v52;
    if (v53)
    {
      operator delete(v53);
    }

    if ((eUICC::VinylCommandDriver::StreamFW() & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 266);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "StreamFirmware failed\n", v56);
      v8 = 11;
      goto LABEL_80;
    }

    if (**(v65 + 72))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3)", "", "", 268);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed StreamAPDU set %d/%zu, status %d sw1_sw2 0x%x \n", v13, v31, **(v65 + 72), **(v65 + 80));
      v8 = 16;
      goto LABEL_80;
    }

    (*(*v65 + 16))(v65);
    v65 = 0;
    MEMORY[0x1E6926B10](v68);
    v8 = 0;
    ++v13;
    --v62;
    v63 += 32;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (v31 <= v13)
    {
      goto LABEL_81;
    }
  }

  if (v61 + v62 * v16 >= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = v61 + v62 * v16;
  }

  v25 = (v64[0] + v63 * *(a1 + 304) + 24);
  v23 = v19;
  while (1)
  {
    v26 = *(v25 - 2);
    if (v26 > 5 || *v25 >= 0x100)
    {
      break;
    }

    v27 = &v23[v26 + *v25];
    *v23 = v26;
    memcpy(v23 + 1, *(v25 - 3), *(v25 - 2));
    v23[*(v25 - 2) + 1] = *v25;
    v28 = *(v25 - 1);
    v29 = &v23[*(v25 - 2)];
    v30 = *v25;
    v25 += 4;
    memcpy(v29 + 2, v28, v30);
    v23 = v27 + 2;
    if (!--v24)
    {
      goto LABEL_31;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v8 = v58;
  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "f.header.length <= 5 && f.data.length <= 255", "", "", 248);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Firmware APDU not within expected bounds : received (header - 5 : %zu data- 255 : %zu\n", *(v25 - 2), *v25);
LABEL_80:
  MEMORY[0x1E6926B10](v68);
LABEL_81:
  v9 = v65;
  if (v65)
  {
LABEL_82:
    (*(*v9 + 16))(v9);
  }

LABEL_83:
  v65 = 0;
  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  return v8;
}

void sub_1E52BD64C(_Unwind_Exception *a1)
{
  MEMORY[0x1E6926B10](v1 + 128);
  v3 = *(v1 + 72);
  if (!v3)
  {
    _Unwind_Resume(a1);
  }

  *(v1 + 80) = v3;
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::DeleteProfile(eUICC::eUICCVinylICEValve *this, unsigned int a2)
{
  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v36 = v4;
  *__dst = v4;
  *__p = v4;
  *v35 = v4;
  v33[2] = v4;
  v33[3] = v4;
  v33[0] = v4;
  v33[1] = v4;
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v33);
  v32 = 0;
  v29 = 0xBFD00602820434BFLL;
  v30 = 42075188;
  v31 = -10234;
  v5 = operator new(4uLL);
  *v5 = *(this + 73);
  v6 = __p[0];
  __p[0] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = operator new(4uLL);
  *v7 = 16;
  v8 = __p[1];
  __p[1] = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = operator new(4uLL);
  *v9 = 1;
  v10 = v35[0];
  v35[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(2uLL);
  *v11 = 1;
  v12 = v35[1];
  v35[1] = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(2uLL);
  *v13 = 0;
  v14 = v36[0];
  v36[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = 7;
  v16 = v36[1];
  v36[1] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = (&v29 + 8 * a2 - a2);
  v18 = v38;
  v19 = __dst[0];
  if (v38 - __dst[0] >= 7)
  {
    v24 = __dst[1];
    v25 = __dst[1] - __dst[0];
    if ((__dst[1] - __dst[0]) > 6)
    {
      *__dst[0] = *v17;
      *(v19 + 3) = *(v17 + 3);
      v23 = v19 + 7;
    }

    else
    {
      if (__dst[1] != __dst[0])
      {
        memcpy(__dst[0], v17, __dst[1] - __dst[0]);
        v24 = __dst[1];
      }

      memcpy(v24, v17 + v25, 7 - v25);
      v23 = &v24[7 - v25];
    }
  }

  else
  {
    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
      v18 = 0;
      __dst[0] = 0;
      __dst[1] = 0;
      v38 = 0;
    }

    v20 = 2 * v18;
    if (2 * v18 <= 7)
    {
      v20 = 7;
    }

    if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    v22 = operator new(v21);
    v38 = v22 + v21;
    *v22 = *v17;
    *(v22 + 3) = *(v17 + 3);
    v23 = v22 + 7;
    __dst[0] = v22;
  }

  __dst[1] = v23;
  if (eUICC::VinylCommandDriver::DeleteProfile())
  {
    v26 = v32;
    if (**(v32 + 80))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t4)", "", "", 302);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to DeleteProfile status %d SW1_SW2 0x%x\n", **(v32 + 80), **(v32 + 88));
      v27 = 18;
      v26 = v32;
      if (!v32)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_40:
    (*(*v26 + 16))(v26);
    goto LABEL_41;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 301);
  v27 = 11;
  v26 = v32;
  if (v32)
  {
    goto LABEL_40;
  }

LABEL_41:
  MEMORY[0x1E6926A30](v33);
  return v27;
}

uint64_t eUICC::eUICCVinylICEValve::StoreData(uint64_t a1, char **a2, uint64_t a3, _WORD *a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v71 = v8;
  *__dst = v8;
  *__p = v8;
  *v70 = v8;
  v68[2] = v8;
  v68[3] = v8;
  v68[0] = v8;
  v68[1] = v8;
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v68);
  v9 = operator new(4uLL);
  *v9 = *(a1 + 292);
  v10 = __p[0];
  __p[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(4uLL);
  *v11 = 5;
  v12 = __p[1];
  __p[1] = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(4uLL);
  *v13 = 1;
  v14 = v70[0];
  v70[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = 1;
  v16 = v70[1];
  v70[1] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = operator new(2uLL);
  *v17 = 0;
  v18 = v71[0];
  v71[0] = v17;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *a2;
  v20 = a2[1];
  v21 = operator new(2uLL);
  v22 = v20 - v19;
  *v21 = v20 - v19;
  v23 = v71[1];
  v71[1] = v21;
  if (v23)
  {
    operator delete(v23);
    v19 = *a2;
    v20 = a2[1];
    v22 = v20 - *a2;
  }

  if (v22 < 0xE01)
  {
    v24 = v73;
    v25 = __dst[0];
    if (v73 - __dst[0] < v22)
    {
      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
        v24 = 0;
        __dst[0] = 0;
        __dst[1] = 0;
        v73 = 0;
      }

      v26 = 2 * v24;
      if (2 * v24 <= v22)
      {
        v26 = v22;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      v28 = operator new(v27);
      __dst[0] = v28;
      __dst[1] = v28;
      v73 = &v28[v27];
      v29 = v20 - v19;
      if (v20 == v19)
      {
        v30 = v28;
      }

      else
      {
        if (v29 < 0x20)
        {
          goto LABEL_49;
        }

        if ((v28 - v19) < 0x20)
        {
          goto LABEL_49;
        }

        v30 = &v28[v29 & 0xFFFFFFFFFFFFFFE0];
        v47 = v28 + 16;
        v48 = (v19 + 16);
        v49 = v29 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 32;
        }

        while (v49);
        v19 += v29 & 0xFFFFFFFFFFFFFFE0;
        v28 += v29 & 0xFFFFFFFFFFFFFFE0;
        if (v29 != (v29 & 0xFFFFFFFFFFFFFFE0))
        {
LABEL_49:
          v30 = v28;
          do
          {
            v51 = *v19++;
            *v30++ = v51;
          }

          while (v19 != v20);
        }
      }

      goto LABEL_55;
    }

    v36 = __dst[1];
    v37 = __dst[1] - __dst[0];
    if (__dst[1] - __dst[0] >= v22)
    {
      if (v20 != v19)
      {
        v46 = __dst[0];
        memmove(__dst[0], v19, v22);
        v25 = v46;
      }

      v30 = &v25[v22];
      goto LABEL_55;
    }

    v38 = &v19[v37];
    if (__dst[1] != __dst[0])
    {
      memmove(__dst[0], v19, v37);
      v36 = __dst[1];
    }

    v39 = v36;
    v40 = v20 - v38;
    if (v20 != v38)
    {
      v41 = v38;
      if (v40 < 0x20)
      {
        v39 = v36;
      }

      else
      {
        v39 = v36;
        if ((v36 - v38) >= 0x20)
        {
          v41 = &v38[v40 & 0xFFFFFFFFFFFFFFE0];
          v39 = &v36[v40 & 0xFFFFFFFFFFFFFFE0];
          v42 = v36 + 16;
          v43 = (v38 + 16);
          v44 = v40 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v45 = *v43;
            *(v42 - 1) = *(v43 - 1);
            *v42 = v45;
            v42 += 2;
            v43 += 2;
            v44 -= 32;
          }

          while (v44);
          if (v40 == (v40 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_54;
          }
        }
      }

      do
      {
        v52 = *v41++;
        *v39++ = v52;
      }

      while (v41 != v20);
    }

LABEL_54:
    v30 = v39;
LABEL_55:
    __dst[1] = v30;
    goto LABEL_56;
  }

  LogLevels = Ari::GetLogLevels(v21);
  if ((LogLevels & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v74, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v33);
      v67 = v75 >= 0 ? v74 : v74[0];
      *buf = 136316418;
      *&buf[4] = "ari";
      v77 = 2080;
      v78 = v67;
      v79 = 1024;
      v80 = 385;
      v81 = 2048;
      v82 = __dst;
      v83 = 2048;
      v84 = v22;
      v85 = 2048;
      v86 = 3584;
      _os_log_error_impl(&dword_1E5234000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", buf, 0x3Au);
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v33);
    if (v79 >= 0)
    {
      v35 = buf;
    }

    else
    {
      v35 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v34, v35, 385, __dst, v22, 3584);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_56:
  if (eUICC::VinylCommandDriver::DeleteProfile())
  {
    if (*MEMORY[0x50])
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t4)", "", "", 328);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to store data status %d SW1_SW2 0x%x\n", *MEMORY[0x50], *MEMORY[0x58]);
      v53 = 18;
    }

    else
    {
      v54 = MEMORY[0x78];
      v55 = *MEMORY[0x70];
      v56 = *(a3 + 16);
      v57 = *a3;
      if (v56 - *a3 >= v55)
      {
        v62 = *(a3 + 8);
        v63 = v62 - v57;
        v64 = v55 - (v62 - v57);
        if (v55 <= v62 - v57)
        {
          if (*MEMORY[0x70])
          {
            v65 = *a3;
            memmove(v57, MEMORY[0x78], *MEMORY[0x70]);
            v57 = v65;
          }

          v61 = &v57[v55];
        }

        else
        {
          if (v62 != v57)
          {
            memmove(v57, MEMORY[0x78], v62 - v57);
            v62 = *(a3 + 8);
          }

          memmove(v62, &v54[v63], v64);
          v61 = &v62[v64];
        }
      }

      else
      {
        if (v57)
        {
          *(a3 + 8) = v57;
          operator delete(v57);
          v56 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v58 = 2 * v56;
        if (2 * v56 <= v55)
        {
          v58 = v55;
        }

        if (v56 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v59 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v58;
        }

        v60 = operator new(v59);
        *a3 = v60;
        *(a3 + 8) = v60;
        *(a3 + 16) = &v60[v59];
        memmove(v60, v54, v55);
        v61 = &v60[v55];
      }

      *(a3 + 8) = v61;
      v53 = 0;
      *a4 = *MEMORY[0x58];
      (*(MEMORY[0] + 16))(0);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 327);
    v53 = 11;
  }

  MEMORY[0x1E6926A30](v68);
  return v53;
}

void sub_1E52BE200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6926A30](va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::InitPerso(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v43 = v6;
  v44 = v6;
  v41[3] = v6;
  *__p = v6;
  v41[1] = v6;
  v41[2] = v6;
  v41[0] = v6;
  AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(v41);
  v40 = 0;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = (v7 - *a2);
  if (v9 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v8, 3584);
    goto LABEL_24;
  }

  v10 = operator new(4uLL);
  *v10 = *(a1 + 292);
  v11 = __p[0];
  __p[0] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = __p[1];
  __p[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(1uLL);
  *v14 = 0;
  v15 = v43[0];
  v43[0] = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v8;
  v17 = v43[1];
  v43[1] = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v39 = 0;
  v38 = 0uLL;
  if (v9)
  {
    v19 = operator new(v9);
    v20 = &v19[v9];
    *&v38 = v19;
    v39 = &v19[v9];
    memcpy(v19, v18, v9);
    *(&v38 + 1) = v20;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v44, &v38);
  if (v38)
  {
    operator delete(v38);
  }

  if ((eUICC::VinylCommandDriver::InitPerso() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 411);
    v21 = 11;
    v22 = v40;
    if (v40)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!**(v40 + 72))
  {
    v24 = *(v40 + 88);
    v25 = *v24;
    if (*v24)
    {
      v26 = *(v40 + 96);
      v27 = *(a3 + 16);
      v28 = *a3;
      if (v27 - *a3 >= v25)
      {
        v32 = *(a3 + 8);
        v33 = v32 - v28;
        if (v32 - v28 < v25)
        {
          v34 = &v26[v25];
          v35 = &v26[v33];
          if (v32 != v28)
          {
            memmove(v28, v26, v33);
            v32 = *(a3 + 8);
          }

          v36 = v34 - v35;
          memmove(v32, v35, v36);
          v21 = 0;
          v37 = &v32[v36];
LABEL_47:
          *(a3 + 8) = v37;
          v22 = v40;
          if (!v40)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v31 = *a3;
      }

      else
      {
        if (v28)
        {
          *(a3 + 8) = v28;
          operator delete(v28);
          v27 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v29 = 2 * v27;
        if (2 * v27 <= v25)
        {
          v29 = v25;
        }

        if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        v28 = operator new(v30);
        v31 = v28;
        *a3 = v28;
        *(a3 + 8) = v28;
        *(a3 + 16) = &v28[v30];
      }

      memmove(v28, v26, v25);
      v21 = 0;
      v37 = &v31[v25];
      goto LABEL_47;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)", "", "", 412);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InitPerso status %d SW1_SW2 0x%x rsp_len %u\n", **(v40 + 72), **(v40 + 80), **(v40 + 88));
LABEL_24:
  v21 = 18;
  v22 = v40;
  if (v40)
  {
LABEL_25:
    (*(*v22 + 16))(v22);
  }

LABEL_26:
  MEMORY[0x1E6926AD0](v41);
  return v21;
}

void sub_1E52BE688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x1E6926AD0](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::AuthPerso(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v43 = v6;
  v44 = v6;
  v41[3] = v6;
  *__p = v6;
  v41[1] = v6;
  v41[2] = v6;
  v41[0] = v6;
  AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(v41);
  v40 = 0;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = (v7 - *a2);
  if (v9 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v8, 3584);
    goto LABEL_24;
  }

  v10 = operator new(4uLL);
  *v10 = *(a1 + 292);
  v11 = __p[0];
  __p[0] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = __p[1];
  __p[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(1uLL);
  *v14 = 0;
  v15 = v43[0];
  v43[0] = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v8;
  v17 = v43[1];
  v43[1] = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v39 = 0;
  v38 = 0uLL;
  if (v9)
  {
    v19 = operator new(v9);
    v20 = &v19[v9];
    *&v38 = v19;
    v39 = &v19[v9];
    memcpy(v19, v18, v9);
    *(&v38 + 1) = v20;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v44, &v38);
  if (v38)
  {
    operator delete(v38);
  }

  if ((eUICC::VinylCommandDriver::AuthPerso() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 443);
    v21 = 11;
    v22 = v40;
    if (v40)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!**(v40 + 72))
  {
    v24 = *(v40 + 88);
    v25 = *v24;
    if (*v24)
    {
      v26 = *(v40 + 96);
      v27 = *(a3 + 16);
      v28 = *a3;
      if (v27 - *a3 >= v25)
      {
        v32 = *(a3 + 8);
        v33 = v32 - v28;
        if (v32 - v28 < v25)
        {
          v34 = &v26[v25];
          v35 = &v26[v33];
          if (v32 != v28)
          {
            memmove(v28, v26, v33);
            v32 = *(a3 + 8);
          }

          v36 = v34 - v35;
          memmove(v32, v35, v36);
          v21 = 0;
          v37 = &v32[v36];
LABEL_47:
          *(a3 + 8) = v37;
          v22 = v40;
          if (!v40)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v31 = *a3;
      }

      else
      {
        if (v28)
        {
          *(a3 + 8) = v28;
          operator delete(v28);
          v27 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v29 = 2 * v27;
        if (2 * v27 <= v25)
        {
          v29 = v25;
        }

        if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        v28 = operator new(v30);
        v31 = v28;
        *a3 = v28;
        *(a3 + 8) = v28;
        *(a3 + 16) = &v28[v30];
      }

      memmove(v28, v26, v25);
      v21 = 0;
      v37 = &v31[v25];
      goto LABEL_47;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)", "", "", 444);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", **(v40 + 72), **(v40 + 80), **(v40 + 88));
LABEL_24:
  v21 = 18;
  v22 = v40;
  if (v40)
  {
LABEL_25:
    (*(*v22 + 16))(v22);
  }

LABEL_26:
  MEMORY[0x1E6926A90](v41);
  return v21;
}

void sub_1E52BEB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x1E6926A90](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::FinalizePerso(uint64_t a1, void *a2)
{
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v27 = v4;
  v28 = v4;
  v25[3] = v4;
  *__p = v4;
  v25[1] = v4;
  v25[2] = v4;
  v25[0] = v4;
  AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(v25);
  v24 = 0;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = (v5 - *a2);
  if (v7 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v6, 3584);
    goto LABEL_24;
  }

  v8 = operator new(4uLL);
  *v8 = *(a1 + 292);
  v9 = __p[0];
  __p[0] = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(1uLL);
  *v10 = 0;
  v11 = __p[1];
  __p[1] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = v27[0];
  v27[0] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = v6;
  v15 = v27[1];
  v27[1] = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *a2;
  v23 = 0;
  v22 = 0uLL;
  if (v7)
  {
    v17 = operator new(v7);
    v18 = &v17[v7];
    *&v22 = v17;
    v23 = &v17[v7];
    memcpy(v17, v16, v7);
    *(&v22 + 1) = v18;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v28, &v22);
  if (v22)
  {
    operator delete(v22);
  }

  if (eUICC::VinylCommandDriver::FinalizePerso())
  {
    v19 = v24;
    if (**(v24 + 72))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3)", "", "", 476);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to FinalizePerso status %d SW1_SW2 0x%x\n", **(v24 + 72), **(v24 + 80));
LABEL_24:
      v20 = 18;
      v19 = v24;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v20 = 0;
LABEL_31:
    (*(*v19 + 16))(v19);
    goto LABEL_32;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 475);
  v20 = 11;
  v19 = v24;
  if (v24)
  {
    goto LABEL_31;
  }

LABEL_32:
  MEMORY[0x1E6926B90](v25);
  return v20;
}

void sub_1E52BEE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x1E6926B90](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ValidatePerso(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v43 = v6;
  v44 = v6;
  v41[3] = v6;
  *__p = v6;
  v41[1] = v6;
  v41[2] = v6;
  v41[0] = v6;
  AriSdk::ARI_IBIVinylValidatePsoReq_SDK::ARI_IBIVinylValidatePsoReq_SDK(v41);
  v40 = 0;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = (v7 - *a2);
  if (v9 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v8, 3584);
    goto LABEL_24;
  }

  v10 = operator new(4uLL);
  *v10 = *(a1 + 292);
  v11 = __p[0];
  __p[0] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 1;
  v13 = __p[1];
  __p[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = 0;
  v15 = v43[0];
  v43[0] = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v8;
  v17 = v43[1];
  v43[1] = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v39 = 0;
  v38 = 0uLL;
  if (v9)
  {
    v19 = operator new(v9);
    v20 = &v19[v9];
    *&v38 = v19;
    v39 = &v19[v9];
    memcpy(v19, v18, v9);
    *(&v38 + 1) = v20;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v44, &v38);
  if (v38)
  {
    operator delete(v38);
  }

  if ((eUICC::VinylCommandDriver::ValidatePerso() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 507);
    v21 = 11;
    v22 = v40;
    if (v40)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!**(v40 + 72))
  {
    v24 = *(v40 + 88);
    v25 = *v24;
    if (*v24)
    {
      v26 = *(v40 + 96);
      v27 = *(a3 + 16);
      v28 = *a3;
      if (v27 - *a3 >= v25)
      {
        v32 = *(a3 + 8);
        v33 = v32 - v28;
        if (v32 - v28 < v25)
        {
          v34 = &v26[v25];
          v35 = &v26[v33];
          if (v32 != v28)
          {
            memmove(v28, v26, v33);
            v32 = *(a3 + 8);
          }

          v36 = v34 - v35;
          memmove(v32, v35, v36);
          v21 = 0;
          v37 = &v32[v36];
LABEL_47:
          *(a3 + 8) = v37;
          v22 = v40;
          if (!v40)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v31 = *a3;
      }

      else
      {
        if (v28)
        {
          *(a3 + 8) = v28;
          operator delete(v28);
          v27 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v29 = 2 * v27;
        if (2 * v27 <= v25)
        {
          v29 = v25;
        }

        if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        v28 = operator new(v30);
        v31 = v28;
        *a3 = v28;
        *(a3 + 8) = v28;
        *(a3 + 16) = &v28[v30];
      }

      memmove(v28, v26, v25);
      v21 = 0;
      v37 = &v31[v25];
      goto LABEL_47;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)", "", "", 508);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", **(v40 + 72), **(v40 + 80), **(v40 + 88));
LABEL_24:
  v21 = 18;
  v22 = v40;
  if (v40)
  {
LABEL_25:
    (*(*v22 + 16))(v22);
  }

LABEL_26:
  MEMORY[0x1E6926BB0](v41);
  return v21;
}

void sub_1E52BF2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x1E6926BB0](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void eUICC::eUICCVinylICEValve::~eUICCVinylICEValve(eUICC::eUICCVinylICEValve *this)
{
  *this = &unk_1F5F01898;
  v1 = *(this + 39);
  *(this + 39) = 0;
  if (v1)
  {
    eUICC::VinylCommandDriver::~VinylCommandDriver(v1);
    operator delete(v2);
  }
}

{
  *this = &unk_1F5F01898;
  v1 = *(this + 39);
  *(this + 39) = 0;
  if (v1)
  {
    v2 = this;
    eUICC::VinylCommandDriver::~VinylCommandDriver(v1);
    operator delete(v3);
    this = v2;
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391E65)
  {
    if (((v2 & 0x80000001E5391E65 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391E65))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391E65 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

eUICC::VinylCommandDriver **std::unique_ptr<eUICC::VinylCommandDriver>::~unique_ptr[abi:ne200100](eUICC::VinylCommandDriver **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    eUICC::VinylCommandDriver::~VinylCommandDriver(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

char *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v6;
    if (2 * v6 <= a4)
    {
      v10 = a4;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = operator new(v11);
    v12 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v11];
    v13 = a3 - a2;
    if (v13)
    {
      result = memcpy(result, a2, v13);
    }

LABEL_17:
    a1[1] = &v12[v13];
    return result;
  }

  v12 = a1[1];
  v14 = v12 - result;
  if (v12 - result < a4)
  {
    v15 = &a2[v14];
    if (v12 != result)
    {
      result = memmove(result, a2, v14);
      v12 = a1[1];
    }

    v13 = a3 - v15;
    if (v13)
    {
      result = memmove(v12, v15, v13);
    }

    goto LABEL_17;
  }

  v16 = a3 - a2;
  if (v16)
  {
    v17 = result;
    memmove(result, a2, v16);
    result = v17;
  }

  a1[1] = &result[v16];
  return result;
}

uint64_t __cxx_global_var_init_11()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t support::cf::createNum64Num32FromData(const __CFData *a1, CFNumberRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      if (Length - 9 <= 0xFFFFFFFFFFFFFFF7)
      {
        LogInstance = ACFULogging::getLogInstance(Length);
        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Data length %lu is not within range\n");
      }

      else
      {
        if (Length < 5)
        {
          valuePtr = 0;
          memcpy(&valuePtr, BytePtr, Length);
          v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
          v9 = *a2;
          *a2 = v6;
          if (v9)
          {
            CFRelease(v9);
            v6 = *a2;
          }

          if (v6)
          {
            return 1;
          }
        }

        else
        {
          __dst = 0;
          memcpy(&__dst, BytePtr, Length);
          v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &__dst);
          v7 = *a2;
          *a2 = v6;
          if (v7)
          {
            CFRelease(v7);
            v6 = *a2;
          }

          if (v6)
          {
            return 1;
          }
        }

        v13 = ACFULogging::getLogInstance(v6);
        ACFULogging::handleMessage(v13, 2, "%s::%s: Data allocation error during convesion\n");
      }
    }

    else
    {
      v11 = ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage(v11, 2, "%s::%s: NULL value param\n");
    }
  }

  else
  {
    v10 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v10, 2, "%s::%s: NULL data param\n");
  }

  return 0;
}

uint64_t support::cf::createByteSwappedData(CFDataRef theData, CFDataRef *a2)
{
  if (a2)
  {
    v2 = theData;
    if (theData)
    {
      theData = CFDataGetLength(theData);
      if (theData)
      {
        v4 = theData;
        v5 = malloc(theData);
        v14.location = 0;
        v14.length = v4;
        CFDataGetBytes(v2, v14, v5);
        v6 = v4 + v5 - 1;
        if (v6 > v5)
        {
          v7 = v5 + 1;
          do
          {
            v8 = *(v7 - 1);
            *(v7 - 1) = *v6;
            *v6-- = v8;
          }

          while (v7++ < v6);
        }

        theData = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, v4, *MEMORY[0x1E695E488]);
        v10 = *a2;
        *a2 = theData;
        if (v10)
        {
          CFRelease(v10);
          theData = *a2;
        }

        if (theData)
        {
          return 1;
        }

        v12 = "%s::%s: Baseband ECID data conversion failed\n";
      }

      else
      {
        v12 = "%s::%s: Zero sized input data\n";
      }
    }

    else
    {
      v12 = "%s::%s: NULL input param\n";
    }
  }

  else
  {
    v12 = "%s::%s: NULL output param\n";
  }

  LogInstance = ACFULogging::getLogInstance(theData);
  ACFULogging::handleMessage(LogInstance, 2, v12, "BasebandUpdaterUtility", "createByteSwappedData");
  return 0;
}

uint64_t support::cf::createNum32FromString(support::cf *this, const __CFString *a2, const __CFNumber **a3)
{
  v3 = 0;
  valuePtr = 0;
  memset(&__p, 0, sizeof(__p));
  if (this && a2)
  {
    if ((ctu::cf::assign() & 1) == 0)
    {
      v3 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v3;
      }

      goto LABEL_8;
    }

    valuePtr = std::stoi(&__p, 0, 10);
    a2->isa = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v3 = 1;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_8:
  operator delete(__p.__r_.__value_.__l.__data_);
  return v3;
}

uint64_t support::cf::copyDataFromHexString(support::cf *this, const __CFString *a2, const __CFData **a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: NULL hexStr param\n");
    return 0;
  }

  if (!a2)
  {
    v9 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v9, 2, "%s::%s: NULL outData param\n");
    return 0;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v4;
  v43 = v4;
  v40 = v4;
  v41 = v4;
  v38 = v4;
  v39 = v4;
  v36 = v4;
  v37 = v4;
  v34 = v4;
  v35 = v4;
  v32 = v4;
  v33 = v4;
  v30 = v4;
  v31 = v4;
  v28 = v4;
  v29 = v4;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v22 = v4;
  v23 = v4;
  v20 = v4;
  v21 = v4;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  v14 = v4;
  v15 = v4;
  *buffer = v4;
  v13 = v4;
  CString = CFStringGetCString(this, buffer, 512, 0x8000100u);
  if (!CString)
  {
    v10 = ACFULogging::getLogInstance(CString);
    ACFULogging::handleMessage(v10, 2, "%s::%s: CString conversion failure\n");
    return 0;
  }

  v6 = AMSupportCopyDataFromAsciiEncodedHex();
  a2->isa = v6;
  if (!v6)
  {
    v11 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v11, 2, "%s::%s: CFDataCopy failure\n");
    return 0;
  }

  return 1;
}

uint64_t BBUPersonalizedConsoleFeedback::writeToStreamInternal(BBUPersonalizedConsoleFeedback *this, const char *__format, va_list a3)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[14] = v6;
  v8[15] = v6;
  v8[12] = v6;
  v8[13] = v6;
  v8[10] = v6;
  v8[11] = v6;
  v8[8] = v6;
  v8[9] = v6;
  v8[6] = v6;
  v8[7] = v6;
  v8[4] = v6;
  v8[5] = v6;
  v8[2] = v6;
  v8[3] = v6;
  v8[0] = v6;
  v8[1] = v6;
  if (gBBULogSinkFunc)
  {
    vsnprintf(v8, 0x100uLL, __format, a3);
    gBBULogSinkFunc(gBBULogSinkContext, 3, v8);
  }

  else
  {
    vprintf(__format, a3);
  }

  return (*(*this + 112))(this, __format, a3);
}

void BBUPersonalizedConsoleFeedback::~BBUPersonalizedConsoleFeedback(BBUPersonalizedConsoleFeedback *this)
{
  BBUConsoleFeedback::~BBUConsoleFeedback(this);

  operator delete(v1);
}

unint64_t DEREncodeItemIntoVector(unint64_t a1, unint64_t a2, const void *a3, unint64_t *a4)
{
  v8 = DERLengthOfItem(a1, a2);
  v35 = v8;
  v10 = *a4;
  v9 = a4[1];
  v11 = v9 - *a4;
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 < v11)
    {
      a4[1] = v10 + v8;
    }
  }

  else
  {
    v13 = a4[2];
    if (v13 - v9 >= v12)
    {
      v19 = v9 + v12;
      bzero(a4[1], v12);
      a4[1] = v19;
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      v14 = v13 - v10;
      v15 = 2 * (v13 - v10);
      if (v15 <= v8)
      {
        v15 = v8;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v8;
      v18 = operator new(v16);
      bzero(&v18[v11], v12);
      memcpy(v18, v10, v11);
      *a4 = v18;
      a4[1] = &v18[v17];
      a4[2] = &v18[v16];
      if (v10)
      {
        operator delete(v10);
      }
    }
  }

  result = DEREncodeItem(a1, a2, a3, *a4, &v35);
  if (result)
  {
    v21 = *a4;
LABEL_16:
    a4[1] = v21;
    return result;
  }

  v22 = v35;
  v24 = *a4;
  v23 = a4[1];
  v25 = v23 - *a4;
  v26 = v35 - v25;
  if (v35 > v25)
  {
    v27 = a4[2];
    if (v27 - v23 >= v26)
    {
      v33 = v23 + v26;
      v34 = result;
      bzero(a4[1], v26);
      result = v34;
      a4[1] = v33;
      return result;
    }

    if ((v35 & 0x8000000000000000) == 0)
    {
      v28 = result;
      v29 = v27 - v24;
      v30 = 2 * (v27 - v24);
      if (v30 <= v35)
      {
        v30 = v35;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      v32 = operator new(v31);
      bzero(&v32[v25], v26);
      memcpy(v32, v24, v25);
      *a4 = v32;
      a4[1] = &v32[v22];
      a4[2] = &v32[v31];
      result = v28;
      if (v24)
      {
        operator delete(v24);
        return v28;
      }

      return result;
    }

LABEL_31:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (v35 < v25)
  {
    v21 = v24 + v35;
    goto LABEL_16;
  }

  return result;
}

uint64_t DEREncodeSequenceIntoVector(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = DERLengthOfEncodedSequence(a1, a2, *(a3 + 8), *a3);
  v35 = v8;
  v10 = *a4;
  v9 = a4[1];
  v11 = v9 - *a4;
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 < v11)
    {
      a4[1] = v10 + v8;
    }
  }

  else
  {
    v13 = a4[2];
    if (v13 - v9 >= v12)
    {
      v19 = v9 + v12;
      bzero(a4[1], v12);
      a4[1] = v19;
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      v14 = v13 - v10;
      v15 = 2 * (v13 - v10);
      if (v15 <= v8)
      {
        v15 = v8;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v8;
      v18 = operator new(v16);
      bzero(&v18[v11], v12);
      memcpy(v18, v10, v11);
      *a4 = v18;
      a4[1] = &v18[v17];
      a4[2] = &v18[v16];
      if (v10)
      {
        operator delete(v10);
      }
    }
  }

  result = DEREncodeSequence(a1, a2, *(a3 + 8), *a3, *a4, &v35);
  if (result)
  {
    v21 = *a4;
LABEL_16:
    a4[1] = v21;
    return result;
  }

  v22 = v35;
  v24 = *a4;
  v23 = a4[1];
  v25 = v23 - *a4;
  v26 = v35 - v25;
  if (v35 > v25)
  {
    v27 = a4[2];
    if (v27 - v23 >= v26)
    {
      v33 = v23 + v26;
      v34 = result;
      bzero(a4[1], v26);
      result = v34;
      a4[1] = v33;
      return result;
    }

    if ((v35 & 0x8000000000000000) == 0)
    {
      v28 = result;
      v29 = v27 - v24;
      v30 = 2 * (v27 - v24);
      if (v30 <= v35)
      {
        v30 = v35;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      v32 = operator new(v31);
      bzero(&v32[v25], v26);
      memcpy(v32, v24, v25);
      *a4 = v32;
      a4[1] = &v32[v22];
      a4[2] = &v32[v31];
      result = v28;
      if (v24)
      {
        operator delete(v24);
        return v28;
      }

      return result;
    }

LABEL_31:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (v35 < v25)
  {
    v21 = v24 + v35;
    goto LABEL_16;
  }

  return result;
}

uint64_t DERDecodeBBTicket(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v10, 170, sizeof(v10));
  v13[6] = xmmword_1E5391F50;
  v13[7] = unk_1E5391F60;
  v13[8] = xmmword_1E5391F70;
  v13[2] = xmmword_1E5391F10;
  v13[3] = unk_1E5391F20;
  v13[4] = xmmword_1E5391F30;
  v13[5] = unk_1E5391F40;
  v13[0] = __const__Z17DERDecodeBBTicketPhjP11DERBbTicket_DERBbTicketItemSpecs;
  v13[1] = unk_1E5391F00;
  v11[6] = xmmword_1E5391FE0;
  v11[7] = unk_1E5391FF0;
  v11[8] = xmmword_1E5392000;
  v11[9] = unk_1E5392010;
  v11[2] = xmmword_1E5391FA0;
  v11[3] = unk_1E5391FB0;
  v11[4] = xmmword_1E5391FC0;
  v11[5] = unk_1E5391FD0;
  v11[0] = __const__Z17DERDecodeBBTicketPhjP11DERBbTicket_DERBbTicketItemSpecs_MAV;
  v11[1] = unk_1E5391F90;
  v12 = 1;
  v9[0] = a1;
  v9[1] = a2;
  result = DERDecodeItem(v9, v10);
  if (!result)
  {
    if (v10[0] != 0x2000000000000010)
    {
      return 2;
    }

    if (capabilities::radio::maverick(result))
    {
      result = DERParseSequenceContent(&v10[1], 7u, v11, a3, 0);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERParseSequenceContent(&v10[1], 6u, v13, a3, 0);
      if (result)
      {
        return result;
      }
    }

    v5 = *(a3 + 16);
    v6 = *v5;
    v7 = *(v5 + 4);
    v8 = v6 == 0x43DCE48862A0806 && v7 == 771;
    result = 3;
    if (v8)
    {
      if (*(a3 + 24) == 10)
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t *getPtImageVersion@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *result@<X0>, uint64_t a3@<X1>)
{
  memset(a1, 170, 24);
  *(a1 + 23) = 0;
  *a1 = 0;
  if (!result || !a3)
  {
    return result;
  }

  memset(v10, 170, sizeof(v10));
  v11[0] = result + 6;
  v11[1] = a3 - 48;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if (*gBBULogMaskGet(void)::sBBULogMask)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if (*gBBULogMaskGet(void)::sBBULogMask)
    {
LABEL_5:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(0, 6, "BBUDerHelpers", "", "Parsing der encoded file to get the version \n");
      }
    }
  }

  result = DERDecodeItem(v11, v10);
  if (result || v10[0] != 0x2000000000000010)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v6 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v6;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      return result;
    }

    v5 = v10[0];
    v4 = "Decode sequence failure with der return: %d, decode tag: %x\n";
    return _BBULog(0, 6, "BBUDerHelpers", "", v4, result, v5);
  }

  v9 = *&v10[1];
  result = DERDecodeItem(&v9, v10);
  if (result || LODWORD(v10[0]))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    v7 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v7;
    if (*gBBULogMaskGet(void)::sBBULogMask)
    {
LABEL_13:
      if (gBBULogVerbosity <= 5)
      {
        return result;
      }

      v4 = "Decode 1st tag failure with der return: %d, decoded tag: %llu\n";
      goto LABEL_15;
    }
  }

  else
  {
    *&v9 = v10[1] + v10[2];
    *(&v9 + 1) -= v10[2];
    result = DERDecodeItem(&v9, v10);
    if (!result && LODWORD(v10[0]) == 1)
    {
      return std::string::basic_string[abi:ne200100](a1, v10[1], v10[2]);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v8 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v8;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      v4 = "Decode 2nd tag failure with der return: %d, decoded tag: %llu\n";
LABEL_15:
      v5 = LODWORD(v10[0]);
      return _BBULog(0, 6, "BBUDerHelpers", "", v4, result, v5);
    }
  }

  return result;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__len | 7) + 1;
    }

    v7 = a2;
    v8 = operator new(v6);
    a2 = v7;
    v5 = v8;
    v4[1] = __len;
    v4[2] = v6 | 0x8000000000000000;
    *v4 = v8;
  }

  else
  {
    __dst[23] = __len;
    v5 = __dst;
    if (!__len)
    {
      *__dst = 0;
      return __dst;
    }
  }

  memmove(v5, a2, __len);
  v5[__len] = 0;
  return v4;
}

const char *BBUBootModeAsString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_1E876E038[a1];
  }
}

const char *BBUNVRestoreSettingAsString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Invalid";
  }

  else
  {
    return off_1E876E050[a1];
  }
}

uint64_t EURStateMachineStart(uint64_t a1)
{
  *(a1 + 376) = 0;
  *(a1 + 368) = 1;
  return 1;
}

uint64_t EURStateMachineStop(uint64_t a1)
{
  *(a1 + 368) = 0;
  _BBUFSDebugPrint("EURStateMachineStop", "aborting pending reads\n");
  v2 = *(a1 + 24);
  if (v2)
  {
    v2(a1 + 8);
  }

  return 1;
}

uint64_t EURStateMachinePerformFlush(uint64_t a1)
{
  v2 = 0x1ECFD4000uLL;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v3 = *(a1 + 376);
        v4 = "Unknown";
        if (v3 <= 2)
        {
          v4 = off_1E876E0A8[v3];
        }

        _BBUFSDebugPrint("EURStateMachinePerformFlush", "---------------------%s---------------------\n", v4);
        v5 = *(a1 + 376);
        if (v5)
        {
          break;
        }

        v30 = 0;
        LODWORD(v32) = 0;
        *&v33 = 0;
        v10 = createETLStructures(&v33, &v30, &v32);
        v11 = "failed creating ETL header and ring buffer structures\n";
        if (v10)
        {
          while (1)
          {
            _BBUFSDebugPrint("sListen", "waiting for hello with timeout of %u sec\n", *(v2 + 3752) / 0x3E8u);
            if (!ETLSAHCommandReceive())
            {
              v11 = "failed receiving hello packet\n";
              goto LABEL_18;
            }

            if (*v30 != 8)
            {
              break;
            }

            _BBUFSDebugPrint("sListen", "received reset response (dropping)\n");
          }

          *&v14 = 0xAAAAAAAAAAAAAAAALL;
          *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v31[0] = v14;
          v31[1] = v14;
          v15 = ETLSAHCommandParseHello();
          v16 = "failed parsing hello packet\n";
          if (v15 && (_BBUFSDebugPrint("sPrintHelloParameters", "version number:  %u\n", LODWORD(v31[0])), _BBUFSDebugPrint("sPrintHelloParameters", "version compatible:  %u\n", DWORD1(v31[0])), _BBUFSDebugPrint("sPrintHelloParameters", "command packet Length:  %u\n", DWORD2(v31[0])), v17 = ETLSAHModeAsString(), _BBUFSDebugPrint("sPrintHelloParameters", "mode:  %s\n", v17), HelloResponse = ETLSAHCommandCreateHelloResponse(), v16 = "Failed to create hello response\n", HelloResponse) && (v19 = ETLSAHCommandSend(), v16 = "failed to respond to hello packet\n", (v19 & 1) != 0))
          {
            v12 = 1;
          }

          else
          {
            _BBUFSDebugPrint("sListen", v16);
            v12 = 0;
          }
        }

        else
        {
LABEL_18:
          _BBUFSDebugPrint("sListen", v11);
          v12 = 0;
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v31[0] = v13;
          v31[1] = v13;
        }

        v20 = v33;
        if (v30 | v33)
        {
          if (v30)
          {
            free(v30);
            v30 = 0;
            v20 = v33;
          }

          if (v20)
          {
            if (*v20)
            {
              free(*v20);
              v20 = v33;
            }

            free(v20);
          }
        }

        if (!v12)
        {
          goto LABEL_66;
        }

        *(a1 + 376) = 1;
      }

      if (v5 != 1)
      {
        break;
      }

      v29 = 0;
      v28 = 0;
      v27 = 0;
      v6 = createETLStructures(&v27, &v29, &v28);
      v7 = "failed creating ETL header and ring buffer structures\n";
      if (v6 && (v8 = ETLSAHGetDebugRecordCount(), v7 = "failed receiving debug table location\n", (v8 & 1) != 0))
      {
        v9 = 1;
      }

      else
      {
        _BBUFSDebugPrint("sGetRecords", v7);
        v9 = 0;
      }

      _BBUFSDebugPrint("sGetRecords", "%i records requested\n", 0);
      v21 = v27;
      if (v29 | v27)
      {
        if (v29)
        {
          free(v29);
          v29 = 0;
          v21 = v27;
        }

        if (v21)
        {
          if (*v21)
          {
            free(*v21);
            v21 = v27;
          }

          free(v21);
        }
      }

      if (!v9)
      {
        goto LABEL_66;
      }

      *(a1 + 376) = 2;
      v2 = 0x1ECFD4000;
    }

    if (v5 == 2)
    {
      break;
    }

    _BBUFSDebugPrint("EURStateMachinePerformFlush", "unknown state\n");
  }

  *&v31[0] = 0;
  LODWORD(v33) = 0;
  v30 = 0;
  if (!createETLStructures(&v30, v31, &v33))
  {
    _BBUFSDebugPrint("sCompleteTransfer", "failed creating ETL header and ring buffer structures\n");
    goto LABEL_51;
  }

  if (!ETLSAHCommandCreateReset())
  {
    _BBUFSDebugPrint("sCompleteTransfer", "failed to create reset command\n");
    goto LABEL_51;
  }

  if ((ETLSAHCommandSend() & 1) == 0)
  {
    _BBUFSDebugPrint("sCompleteTransfer", "failed sending reset command\n");
LABEL_51:
    *(a1 + 376) = 0;
    v22 = *&v31[0];
    v24 = v30;
    if (!(*&v31[0] | v30))
    {
      goto LABEL_66;
    }

    goto LABEL_52;
  }

  *(a1 + 376) = 0;
  if (ETLSAHCommandReceive())
  {
    v22 = *&v31[0];
    if (**&v31[0] == 8)
    {
      v23 = 1;
      goto LABEL_54;
    }

    _BBUFSDebugPrint("sCompleteTransfer", "expect reset response but receive type %d\n");
  }

  else
  {
    _BBUFSDebugPrint("sCompleteTransfer", "failed to receive reset response\n");
  }

  v22 = *&v31[0];
  v24 = v30;
  if (*&v31[0] | v30)
  {
LABEL_52:
    if (v22)
    {
      v23 = 0;
LABEL_54:
      free(v22);
      *&v31[0] = 0;
      v24 = v30;
      if (!v30)
      {
        if (!v23)
        {
          goto LABEL_66;
        }

LABEL_62:
        *(a1 + 376) = 0;
        v25 = 1;
        return v25 & 1 | ((*(a1 + 368) & 1) == 0);
      }

LABEL_59:
      if (*v24)
      {
        free(*v24);
        v24 = v30;
      }

      free(v24);
      if ((v23 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (v24)
    {
      LOBYTE(v23) = 0;
      goto LABEL_59;
    }
  }

LABEL_66:
  v25 = 0;
  return v25 & 1 | ((*(a1 + 368) & 1) == 0);
}

void sub_1E52C17F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v33 - 169) < 0)
  {
    operator delete(v32[18]);
  }

  if (*(v33 - 137) < 0)
  {
    operator delete(v32[22]);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(v32[26]);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EURStateMachineSetConfig(uint64_t a1, char *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v4 = a3;
    if (!strcasecmp("HelloWaitTimeoutSec", a2))
    {
      if (v4 < 1)
      {
        if (v4)
        {
          _BBUFSDebugPrint("EURStateMachineSetConfig", "failed to set config '%s', invalid config value '%d'\n", a2, v4);
          return 0;
        }

        else
        {
          gHelloWaitTimeoutMilliSec = -1;
          _BBUFSDebugPrint("EURStateMachineSetConfig", "Set config '%s' to 'infinite'\n", a2);
          return 1;
        }
      }

      else
      {
        gHelloWaitTimeoutMilliSec = 1000 * v4;
        _BBUFSDebugPrint("EURStateMachineSetConfig", "Set config '%s' to '%d' millisec\n", a2, 1000 * v4);
        return 1;
      }
    }

    else
    {
      _BBUFSDebugPrint("EURStateMachineSetConfig", "failed to set config, unrecognized config name '%s'\n", a2);
      return 0;
    }
  }

  else
  {
    _BBUFSDebugPrint("EURStateMachineSetConfig", "failed to set config as one of the args is NULL\n", a3);
    return 0;
  }
}

void BBUEUREFSImage::BBUEUREFSImage(BBUEUREFSImage *this, BBUDataSource *a2, uint64_t a3, uint64_t a4)
{
  BBUEURMIImage::BBUEURMIImage(this, a2, a4);
  *v6 = &unk_1F5F01A48;
  v6[8] = 0;
  v7 = (v6 + 8);
  v6[9] = 0;
  v6[10] = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[7] = v8;
  v24[8] = v8;
  v24[5] = v8;
  v24[6] = v8;
  v24[3] = v8;
  v24[4] = v8;
  v24[1] = v8;
  v24[2] = v8;
  v24[0] = v8;
  v22 = v8;
  v23 = v8;
  v20 = v8;
  *__p = v8;
  v18 = v8;
  v19 = v8;
  v17 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "EFS", 3);
  MEMORY[0x1E69270E0](v9, a3);
  if ((BYTE8(v23) & 0x10) != 0)
  {
    v12 = v23;
    if (v23 < *(&v20 + 1))
    {
      *&v23 = *(&v20 + 1);
      v12 = *(&v20 + 1);
    }

    v13 = v20;
    v10 = v12 - v20;
    if ((v12 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v16) = 0;
      p_dst = &__dst;
      goto LABEL_15;
    }

    v13 = *(&v18 + 1);
    v10 = *(&v19 + 1) - *(&v18 + 1);
    if (*(&v19 + 1) - *(&v18 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v10;
    v16 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v16) = v10;
  p_dst = &__dst;
  if (v10)
  {
LABEL_14:
    memmove(p_dst, v13, v10);
  }

LABEL_15:
  *(p_dst + v10) = 0;
  if (*(this + 87) < 0)
  {
    operator delete(*v7);
  }

  *v7 = __dst;
  v7[2] = v16;
  *&v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v18);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v24);
}

void sub_1E52C1D20(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 + 87) < 0)
  {
    operator delete(*v14);
    *v13 = &unk_1F5F04F58;
    v16 = *(v13 + 8);
    if (!v16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v13 = &unk_1F5F04F58;
    v16 = *(v13 + 8);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

void BBUEUREFSImage::~BBUEUREFSImage(void **this)
{
  *this = &unk_1F5F01A48;
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
  *this = &unk_1F5F01A48;
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

uint64_t BBUEUREFSImage::getName(BBUEUREFSImage *this)
{
  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

void BBUFeedback::BBUFeedback(BBUFeedback *this, const void *a2)
{
  *this = &unk_1F5F01AC0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 6) = 0;
  *(this + 7) = a2;
  *(this + 8) = 0;
  BBUProfiler::BBUProfiler((this + 80));
  v3 = operator new(8uLL);
  v4 = operator new(0x1000uLL);
  *v3 = v4;
  *v4 = 0;
  *(this + 17) = v3;
  *(this + 18) = v3;
  *(this + 19) = v3 + 1;
  *(this + 20) = v3 + 1;
  *(this + 21) = 0;
  *(this + 22) = 1;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  *(this + 9) = LocalCenter;
  CFRetain(LocalCenter);
  v6 = CFGetAllocator(*(this + 7));
  *(this + 8) = CFDictionaryCreateMutable(v6, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0;
  v7 = CFGetAllocator(*(this + 7));
  v8 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(*(this + 8), @"percentage", v8);
  CFRelease(v8);
}

void sub_1E52C2058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  __cxa_end_catch();
  operator delete(__p);
  BBUProfiler::~BBUProfiler((v10 + 80));
  std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(v9, *v11);
  _Unwind_Resume(a1);
}

void BBUFeedback::~BBUFeedback(CFTypeRef *this)
{
  *this = &unk_1F5F01AC0;
  CFRelease(this[9]);
  CFRelease(this[8]);
  std::deque<BBUpdaterCommon::StageContext>::~deque[abi:ne200100]((this + 17));
  v2 = this[12];
  v3 = this[13];
  if (v3 == v2)
  {
    v3 = this[12];
    this[16] = 0;
    v10 = 0;
  }

  else
  {
    v4 = this[15];
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
    v8 = *(v2 + (((this[16] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((this[16] + v4) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = this[12];
      v3 = this[13];
    }

    this[16] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = this[13];
        v2 = (this[12] + 8);
        this[12] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_17:
    this[15] = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = this[12];
    v13 = this[13];
    if (v13 != v14)
    {
      this[13] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  v15 = this[11];
  if (v15)
  {
    operator delete(v15);
  }

  v16 = this[10];
  if (v16)
  {
    CFRelease(v16);
  }

  std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy((this + 1), this[2]);
}

void BBUFeedback::updateProgressBarItem(BBUFeedback *this, double a2)
{
  if (*(this + 44) == 1)
  {
    v18 = v5;
    v19 = v4;
    v20 = v2;
    v21 = v3;
    v9 = (this + 16);
    v8 = *(this + 2);
    v10 = *(this + 10);
    if (v8)
    {
      while (1)
      {
        while (1)
        {
          v11 = v8;
          v12 = *(v8 + 32);
          if (v10 >= v12)
          {
            break;
          }

          v8 = *v11;
          v9 = v11;
          if (!*v11)
          {
            goto LABEL_9;
          }
        }

        if (v12 >= v10)
        {
          break;
        }

        v8 = *(v11 + 1);
        if (!v8)
        {
          v9 = v11 + 8;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v11 = this + 16;
LABEL_9:
      v13 = v11;
      v11 = operator new(0x30uLL);
      *(v11 + 8) = v10;
      *(v11 + 5) = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = v13;
      *v9 = v11;
      v14 = **(this + 1);
      if (v14)
      {
        *(this + 1) = v14;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 2), v11);
      ++*(this + 3);
    }

    valuePtr = ((*(this + 6) + *(v11 + 5) * a2 / *(this + 4)) * 100.0);
    v15 = CFGetAllocator(*(this + 7));
    v16 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(this + 8), @"percentage", v16);
    CFRelease(v16);
    CFNotificationCenterPostNotification(*(this + 9), @"BBUpdateProgress", *(this + 7), *(this + 8), 0);
  }
}

void BBUFeedback::endProgressBarItem(BBUFeedback *this)
{
  if (*(this + 44) == 1)
  {
    v15 = v1;
    v16 = v2;
    v5 = (this + 16);
    v4 = *(this + 2);
    v6 = *(this + 10);
    if (v4)
    {
      while (1)
      {
        while (1)
        {
          v7 = v4;
          v8 = *(v4 + 32);
          if (v6 >= v8)
          {
            break;
          }

          v4 = *v7;
          v5 = v7;
          if (!*v7)
          {
            goto LABEL_9;
          }
        }

        if (v8 >= v6)
        {
          break;
        }

        v4 = *(v7 + 1);
        if (!v4)
        {
          v5 = v7 + 8;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v7 = this + 16;
LABEL_9:
      v9 = v7;
      v7 = operator new(0x30uLL);
      *(v7 + 8) = v6;
      *(v7 + 5) = 0;
      *v7 = 0;
      *(v7 + 1) = 0;
      *(v7 + 2) = v9;
      *v5 = v7;
      v10 = **(this + 1);
      if (v10)
      {
        *(this + 1) = v10;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 2), v7);
      ++*(this + 3);
    }

    v11 = *(this + 6) + *(v7 + 5) / *(this + 4);
    *(this + 6) = v11;
    valuePtr = (v11 * 100.0);
    v12 = CFGetAllocator(*(this + 7));
    v13 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(this + 8), @"percentage", v13);
    CFRelease(v13);
    CFNotificationCenterPostNotification(*(this + 9), @"BBUpdateProgress", *(this + 7), *(this + 8), 0);
  }
}

void BBUFeedback::handleBeginQuickStep(BBUFeedback *this, const char *a2, ...)
{
  va_start(va, a2);
  v12 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  va_copy(v10, va);
  vsnprintf(__b, 0x400uLL, a2, va);
  v4 = strlen(__b);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v9 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(v9) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, __b, v5);
  }

  *(v5 + v6) = 0;
  (*(*this + 56))(this, __dst);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E52C2694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUFeedback::handleBeginPhase(BBUFeedback *this, const char *a2, ...)
{
  va_start(va, a2);
  v12 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  va_copy(v10, va);
  vsnprintf(__b, 0x400uLL, a2, va);
  v4 = strlen(__b);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v9 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(v9) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, __b, v5);
  }

  *(v5 + v6) = 0;
  (*(*this + 64))(this, __dst);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E52C2800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUFeedback::handleComment(BBUFeedback *this, const char *a2, ...)
{
  va_start(va, a2);
  v12 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  va_copy(v10, va);
  vsnprintf(__b, 0x400uLL, a2, va);
  v4 = strlen(__b);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v9 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(v9) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, __b, v5);
  }

  *(v5 + v6) = 0;
  (*(*this + 72))(this, __dst);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E52C296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUFeedback::exitStageContext(BBUFeedback *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUFeedback.cpp", 0xC9u, "Assertion failure(!fStageContext.empty())");
    goto LABEL_16;
  }

  v3 = *(*(*(this + 18) + (((v1 + *(this + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v1 + *(this + 21) - 1) & 0x3FF)) - 1;
  if (v3 > 7)
  {
    v4 = "StageContext::None";
  }

  else
  {
    v4 = off_1E876E0C0[v3];
  }

  BBUFeedback::handleComment(this, "exiting %s", v4);
  v6 = *(this + 18);
  v5 = *(this + 19);
  v7 = ((v5 - v6) << 7) - 1;
  v9 = *(this + 21);
  v8 = *(this + 22);
  if (v5 == v6)
  {
    v7 = 0;
  }

  v10 = v8 - 1;
  *(this + 22) = v8 - 1;
  if ((v7 - (v8 + v9) + 1) >= 0x800)
  {
    operator delete(*(v5 - 8));
    *(this + 19) -= 8;
    v10 = *(this + 22);
  }

  if (!v10)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUFeedback.cpp", 0xCEu, "Assertion failure(!fStageContext.empty())");
LABEL_16:
  }

  v11 = *(*(*(this + 18) + (((v10 + *(this + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + *(this + 21) - 1) & 0x3FF)) - 1;
  if (v11 > 7)
  {
    v12 = "StageContext::None";
  }

  else
  {
    v12 = off_1E876E0C0[v11];
  }

  BBUFeedback::handleComment(this, "now in %s", v12);
}

uint64_t BBUFeedback::getStageContext(BBUFeedback *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUFeedback.cpp", 0xD4u, "Assertion failure(!fStageContext.empty())");
  }

  return *(*(*(this + 18) + (((v1 + *(this + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v1 + *(this + 21) - 1) & 0x3FF));
}

void BBUProfiler::~BBUProfiler(BBUProfiler *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v3 == v2)
  {
    *(this + 6) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(this + 5);
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
    v8 = *(v2 + (((*(this + 6) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 6) + v4) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(this + 2);
      v3 = *(this + 3);
    }

    *(this + 6) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 3);
        v2 = (*(this + 2) + 8);
        *(this + 2) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_17:
    *(this + 5) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(this + 2);
    v13 = *(this + 3);
    if (v13 != v14)
    {
      *(this + 3) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = *(this + 1);
  if (v15)
  {
    operator delete(v15);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void std::__split_buffer<BBUpdaterCommon::StageContext *>::emplace_back<BBUpdaterCommon::StageContext *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    a1[2] = &v8[v9];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] += 8;
}

uint64_t std::deque<BBUpdaterCommon::StageContext>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x400;
  v4 = v2 - 1024;
  if (v3)
  {
    *(a1 + 32) = v4;
    v5 = *(a1 + 8);
    v8 = *v5;
    v6 = v5 + 1;
    v7 = v8;
LABEL_4:
    v66 = v7;
    *(a1 + 8) = v6;
    std::__split_buffer<BBUpdaterCommon::StageContext *>::emplace_back<BBUpdaterCommon::StageContext *&>(a1, &v66);
    return;
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = v10 - v12;
  v14 = &v9[-*a1];
  if (v10 - v12 < v14)
  {
    v15 = operator new(0x1000uLL);
    if (v9 != v10)
    {
      *v10 = v15;
      *(a1 + 16) += 8;
      return;
    }

    if (v12 != v11)
    {
      v26 = v12;
LABEL_61:
      *(v26 - 1) = v15;
      v6 = *(a1 + 8);
      *(a1 + 8) = v6 - 1;
      v7 = *(v6 - 1);
      goto LABEL_4;
    }

    v49 = (v9 - v12) >> 2;
    if (v10 == v12)
    {
      v49 = 1;
    }

    if (!(v49 >> 61))
    {
      v50 = v15;
      v51 = (v49 + 3) >> 2;
      v52 = 8 * v49;
      v53 = operator new(8 * v49);
      v26 = &v53[8 * v51];
      v54 = v26;
      v15 = v50;
      if (v10 != v12)
      {
        v54 = &v26[v13];
        v55 = v10 - v12 - 8;
        v56 = &v53[8 * v51];
        v57 = v12;
        if (v55 < 0x38)
        {
          goto LABEL_67;
        }

        v58 = &v53[8 * v51];
        v56 = v58;
        v57 = v12;
        if ((v58 - v12) < 0x20)
        {
          goto LABEL_67;
        }

        v59 = (v55 >> 3) + 1;
        v60 = 8 * (v59 & 0x3FFFFFFFFFFFFFFCLL);
        v56 = &v26[v60];
        v57 = &v12[v60];
        v61 = (v12 + 16);
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
LABEL_67:
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

      *a1 = v53;
      *(a1 + 8) = v26;
      *(a1 + 16) = v54;
      *(a1 + 24) = &v53[v52];
      if (v12)
      {
        operator delete(v11);
        v15 = v50;
        v26 = *(a1 + 8);
      }

      goto LABEL_61;
    }

LABEL_63:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = v14 >> 2;
  if (v9 == v11)
  {
    v16 = 1;
  }

  if (v16 >> 61)
  {
    goto LABEL_63;
  }

  v17 = 8 * v16;
  v18 = operator new(8 * v16);
  v19 = operator new(0x1000uLL);
  v20 = v19;
  v21 = &v18[v13];
  v22 = &v18[v17];
  if (v13 != v17)
  {
    goto LABEL_14;
  }

  if (v13 < 1)
  {
    if (v10 == v12)
    {
      v27 = 1;
    }

    else
    {
      v27 = v13 >> 2;
    }

    if (v27 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = operator new(8 * v27);
    v22 = &v21[8 * v27];
    operator delete(v18);
    v28 = *(a1 + 8);
    v10 = *(a1 + 16);
    v18 = v21;
    *v21 = v20;
    v23 = v21 + 8;
    if (v10 == v28)
    {
      goto LABEL_15;
    }

LABEL_31:
    while (v21 != v18)
    {
      v29 = v21;
LABEL_30:
      v30 = *(v10 - 1);
      v10 -= 8;
      *(v29 - 1) = v30;
      v24 = v29 - 8;
      v21 = v24;
      if (v10 == *(a1 + 8))
      {
        goto LABEL_16;
      }
    }

    if (v23 < v22)
    {
      v29 = &v18[8 * ((((v22 - v23) >> 3) + 1 + ((((v22 - v23) >> 3) + 1) >> 63)) >> 1)];
      v32 = v23 - v18;
      v31 = v23 == v18;
      v23 += 8 * ((((v22 - v23) >> 3) + 1 + ((((v22 - v23) >> 3) + 1) >> 63)) >> 1);
      if (!v31)
      {
        memmove(v29, v21, v32);
      }

      goto LABEL_30;
    }

    if (v22 == v18)
    {
      v33 = 1;
    }

    else
    {
      v33 = (v22 - v18) >> 2;
    }

    if (v33 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v34 = operator new(8 * v33);
    v35 = v34;
    v36 = (v33 + 3) >> 2;
    v29 = &v34[8 * v36];
    v37 = v23 - v18;
    v31 = v23 == v18;
    v23 = v29;
    if (!v31)
    {
      v23 = &v29[v37];
      v38 = v37 - 8;
      if (v38 >= 0x18 && (v39 = 8 * v36, (&v34[8 * v36] - v21) >= 0x20))
      {
        v43 = (v38 >> 3) + 1;
        v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
        v40 = &v29[v44];
        v41 = &v21[v44];
        v45 = (v21 + 16);
        v46 = &v34[v39 + 16];
        v47 = v43 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v48 = *v45;
          *(v46 - 1) = *(v45 - 1);
          *v46 = v48;
          v45 += 2;
          v46 += 32;
          v47 -= 4;
        }

        while (v47);
        if (v43 == (v43 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v40 = &v34[8 * v36];
        v41 = v21;
      }

      do
      {
        v42 = *v41;
        v41 += 8;
        *v40 = v42;
        v40 += 8;
      }

      while (v40 != v23);
    }

LABEL_44:
    v22 = &v34[8 * v33];
    operator delete(v18);
    v18 = v35;
    goto LABEL_30;
  }

  v21 -= ((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_14:
  *v21 = v19;
  v23 = v21 + 8;
  if (v10 != v12)
  {
    goto LABEL_31;
  }

LABEL_15:
  v24 = v21;
LABEL_16:
  v25 = *a1;
  *a1 = v18;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23;
  *(a1 + 24) = v22;
  if (v25)
  {

    operator delete(v25);
  }
}

void sub_1E52C345C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *BBUCommunication::create(capabilities::updater *a1)
{
  CommunicationType = capabilities::updater::getCommunicationType(a1);
  if (CommunicationType <= 1)
  {
    if (CommunicationType == 1)
    {
      v4 = operator new(0x60uLL);
      *v4 = &unk_1F5F02A18;
      *(v4 + 1) = a1;
      __asm { FMOV            V0.2D, #5.0 }

      *(v4 + 1) = _Q0;
      strcpy(v4 + 32, "/dev/cu.debug");
      *(v4 + 55) = 13;
      *(v4 + 14) = -1;
      *(v4 + 3) = *(v4 + 3) + (capabilities::updater::bootupTimeMaxValue(v4) / 1000);
      *v4 = &unk_1F5F028B0;
LABEL_6:
      *(v4 + 8) = dispatch_queue_create("com.apple.BBUCommunication", 0);
      *(v4 + 9) = dispatch_queue_create("com.apple.BBUStatuscallback", 0);
      *(v4 + 10) = 0;
      *(v4 + 22) = 35;
      return v4;
    }

    if (CommunicationType)
    {
      return v1;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Common/BBUCommunication.cpp", 0x1Bu, "Assertion failure(false && Unrecognized radio type.)");
  }

  if (CommunicationType == 2)
  {
    v4 = operator new(0x60uLL);
    *v4 = &unk_1F5F04A78;
    *(v4 + 1) = a1;
    __asm { FMOV            V0.2D, #5.0 }

    *(v4 + 1) = _Q0;
    strcpy(v4 + 32, "/dev/cu.debug");
    *(v4 + 55) = 13;
    *(v4 + 14) = -1;
    *(v4 + 3) = *(v4 + 3) + (capabilities::updater::bootupTimeMaxValue(v4) / 1000);
    *v4 = &unk_1F5F05120;
    *(v4 + 60) = 0;
    goto LABEL_6;
  }

  if (CommunicationType == 3)
  {
    goto LABEL_10;
  }

  return v1;
}

void sub_1E52C36CC(_Unwind_Exception *a1)
{
  if (v1[55] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      *(v6 + 8) = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(v6 + 8);
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = *(v14 + 8);
      v17 = *v16;
      *(v14 + 8) = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = *(v14 + 16);
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      *(v14 + 16) = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_65:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = *(v14 + 16);
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    *(v14 + 16) = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
    goto LABEL_70;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v26 = *v25;
  v7[1] = *v25;
  if (v26)
  {
    *(v26 + 16) = v7;
  }

  v27 = v7[2];
  v25[2] = v27;
  v27[*v27 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_70:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = *(v34 + 16);
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  *(v34 + 16) = v35;
  return result;
}