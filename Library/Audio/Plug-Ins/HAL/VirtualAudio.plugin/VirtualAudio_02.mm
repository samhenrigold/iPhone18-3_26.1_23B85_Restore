void sub_3694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_847FC(&a23);
  sub_210C50(&a40);
  _Unwind_Resume(a1);
}

BOOL sub_37E90(const __CFDictionary **a1)
{
  v2 = off_6CDA40;
  v3 = 32;
  do
  {
    if (!*a1)
    {
LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    if (!sub_47D0C(*a1, *v2))
    {
      v7 = sub_5544(14);
      v8 = sub_468EC(1, *v7, *(v7 + 8));
      v9 = v8;
      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v2[1];
        v18 = 136315906;
        v19 = "VirtualAudio_PlugIn.mm";
        v20 = 1024;
        v21 = 1175;
        v22 = 2080;
        v23 = "kVirtualAudioPlugInPropertyRouteConfigurationSupportsPortType";
        v24 = 2080;
        v25 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s requires that RouteConfiguration dictionary has %s.", &v18, 0x26u);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      *v11 = &off_6DDDD0;
      v11[2] = 1852797029;
    }

    v2 += 2;
    v3 -= 16;
  }

  while (v3);
  v4 = off_6CDA60;
  v5 = 224;
  do
  {
    if (!*a1)
    {
      goto LABEL_15;
    }

    result = sub_47D0C(*a1, *v4);
    if (result)
    {
      v13 = sub_5544(14);
      v14 = sub_468EC(1, *v13, *(v13 + 8));
      v15 = v14;
      if (v14)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = v4[1];
          v18 = 136315906;
          v19 = "VirtualAudio_PlugIn.mm";
          v20 = 1024;
          v21 = 1179;
          v22 = 2080;
          v23 = "kVirtualAudioPlugInPropertyRouteConfigurationSupportsPortType";
          v24 = 2080;
          v25 = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", &v18, 0x26u);
        }
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      *v17 = &off_6DDDD0;
      v17[2] = 1852797029;
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  return result;
}

void sub_38188(unsigned int *a1, uint64_t a2, const __CFDictionary **a3, char a4, int a5)
{
  if (!*a3)
  {
    v919 = sub_5544(14);
    v920 = sub_468EC(1, *v919, *(v919 + 8));
    v921 = v920;
    if (v920 && os_log_type_enabled(v920, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2796;
      _os_log_impl(&dword_0, v921, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v1048 = a1 + 94;
  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_5544(2);
    v7 = sub_5544(35);
    v8 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v9 = v6[1];
    do
    {
      v10 = *(&buf[0].__r_.__value_.__l.__data_ + v8);
      if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
      {
        if ((v9 & v10) == 0)
        {
          v6 = v7;
        }

        if ((v6[1] & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

      v8 += 4;
    }

    while (v8 != 8);
    if ((v9 & 1) == 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v11 = *v6;
LABEL_13:
    v5 = v11 != 0;
  }

  v1051 = v5;
  v12 = sub_5544(2);
  v13 = sub_5544(35);
  v14 = 0;
  buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
  v15 = *(v12 + 8);
  while (1)
  {
    v16 = *(&buf[0].__r_.__value_.__l.__data_ + v14);
    if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
    {
      break;
    }

    v14 += 4;
    if (v14 == 8)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

  if (*(v12 + 8))
  {
LABEL_22:
    v17 = *v12;
    if (v17)
    {
      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_B1190(__p, *a3);
        v19 = __p[23] >= 0 ? __p : *__p;
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2801;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d inRouteChangeDictionary: %s.", buf, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

LABEL_30:
  v1046 = sub_43458(a3, *(*(a2 + 112) + 144), *(*(a2 + 112) + 408));
  v1035 = sub_3A64A0(a3);
  if (!*a3)
  {
    v923 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v923);
  }

  v20 = sub_43354(*a3, "expanse session");
  if (v20 && (v21 = sub_113A0(v20), (v21 & 0x100000000) != 0))
  {
    v22 = v21;
    if (v1051)
    {
      v23 = sub_5544(2);
      v24 = sub_5544(35);
      v25 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v26 = *(v23 + 8);
      while (1)
      {
        v27 = *(&buf[0].__r_.__value_.__l.__data_ + v25);
        if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
        {
          break;
        }

        v25 += 4;
        if (v25 == 8)
        {
          goto LABEL_41;
        }
      }

      if ((v26 & v27) == 0)
      {
        v23 = v24;
      }

LABEL_41:
      v28 = *v23;
      v29 = v28;
      if (v28)
      {
        v30 = v28;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2815;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2048;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v22;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Colistening: %lu", buf, 0x1Cu);
        }
      }
    }

    v1040 = v22 != 0;
  }

  else
  {
    v1040 = 0;
  }

  if (!a5 || (v1046 & 1) != 0)
  {
    goto LABEL_52;
  }

  v31 = !v1040;
  if (!*(a2 + 472))
  {
    v31 = 1;
  }

  if (v31)
  {
    v39 = 0;
    v1038 = 0;
    v1039 = 0;
    v41 = 0;
    v37 = 0;
    v36 = 0;
  }

  else
  {
LABEL_52:
    v32 = *sub_5544(2);
    v33 = v32;
    if (v32)
    {
      v34 = v32;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_D086C(__p, (a2 + 472));
        v35 = __p[23] >= 0 ? __p : *__p;
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2825;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v35;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using cached colistening state %s", buf, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    v36 = *(a2 + 472);
    v37 = *(a2 + 476);
    v39 = *(a2 + 480);
    v38 = *(a2 + 488);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v41 = *(a2 + 496);
    v40 = *(a2 + 504);
    v1038 = v40;
    v1039 = v38;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v42 = *(a2 + 224);
  v43 = *(a2 + 216);
  v44 = *v43;
  buf[0].__r_.__value_.__s.__data_[0] = 0;
  buf[0].__r_.__value_.__s.__data_[8] = 0;
  v45 = *(v43 + 16);
  if (v45 == 1)
  {
    v1055 = v42;
    sub_98A64(buf, v43[1]);
    v42 = v1055;
    buf[0].__r_.__value_.__s.__data_[8] = 1;
  }

  *a1 = v42;
  *(a1 + 6) = 0u;
  v1030 = a1 + 6;
  *(a1 + 2) = a1 + 6;
  v1043 = (a1 + 4);
  *(a1 + 3) = 0u;
  *(a1 + 5) = a1 + 12;
  v1049 = (a1 + 10);
  *(a1 + 18) = 0u;
  *(a1 + 8) = a1 + 18;
  *(a1 + 6) = 0u;
  v1036 = a1 + 24;
  *(a1 + 11) = a1 + 24;
  v1044 = (a1 + 22);
  *(a1 + 30) = 0u;
  v1032 = a1 + 30;
  *(a1 + 14) = a1 + 30;
  v1047 = (a1 + 28);
  *(a1 + 34) = 0u;
  v1029 = a1 + 34;
  *(a1 + 156) = 0;
  *(a1 + 152) = 0;
  a1[40] = 1668248944;
  v1028 = 1852797029;
  *(a1 + 11) = 0u;
  v1034 = (a1 + 44);
  a1[42] = 1852796517;
  *(a1 + 24) = 0;
  *(a1 + 13) = 0u;
  *(a1 + 25) = 0x756E64656175746FLL;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 46) = 0;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  a1[72] = 1065353216;
  *(a1 + 74) = 0u;
  *(a1 + 78) = 0u;
  a1[82] = 1065353216;
  a1[92] = 1065353216;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  a1[96] = 0;
  *(a1 + 228) = 0;
  *(a1 + 27) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 464) = v44;
  *(a1 + 30) = 0u;
  *(a1 + 59) = a1 + 120;
  *(a1 + 126) = 0u;
  v1033 = a1 + 126;
  *(a1 + 62) = a1 + 126;
  *(a1 + 33) = 0u;
  v1054 = a1 + 52;
  v1056 = a1 + 132;
  *(a1 + 65) = a1 + 132;
  *(a1 + 138) = 0u;
  v1052 = a1 + 138;
  *(a1 + 68) = a1 + 138;
  *(a1 + 36) = 0u;
  *(a1 + 71) = a1 + 144;
  *(a1 + 150) = 0u;
  *(a1 + 74) = a1 + 150;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  if (v45)
  {
    sub_98A64(a1 + 77, buf[0].__r_.__value_.__l.__data_);
    *(a1 + 624) = 1;
  }

  *(a1 + 660) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 684) = 0;
  *(a1 + 86) = 0;
  *(a1 + 79) = 0;
  *(a1 + 81) = 0;
  *(a1 + 80) = 0;
  *(a1 + 656) = 0;
  a1[174] = v36;
  *(a1 + 700) = v37;
  *(a1 + 88) = v39;
  *(a1 + 89) = v1039;
  if (v1039)
  {
    atomic_fetch_add_explicit(&v1039->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 90) = v41;
  *(a1 + 91) = v1038;
  if (v1038)
  {
    atomic_fetch_add_explicit(&v1038->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 736) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 792) = 0;
  *(a1 + 400) = 0;
  v1048[108] = 0;
  v1048[107] = 0;
  if (buf[0].__r_.__value_.__s.__data_[8] == 1 && buf[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(buf[0].__r_.__value_.__l.__data_);
  }

  *(a1 + 384) = v1046;
  if (!*a3)
  {
    v924 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v924, "Could not construct");
  }

  if (sub_47EF0(*a3, "enabled sub-ports"))
  {
    v46 = sub_5544(2);
    v47 = sub_5544(35);
    v48 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v49 = *(v46 + 8);
    while (1)
    {
      v50 = *(&buf[0].__r_.__value_.__l.__data_ + v48);
      if (((v49 & v50) != 0) != ((*(v47 + 8) & v50) != 0))
      {
        break;
      }

      v48 += 4;
      if (v48 == 8)
      {
        goto LABEL_84;
      }
    }

    if ((v49 & v50) == 0)
    {
      v46 = v47;
    }

LABEL_84:
    v51 = *v46;
    v52 = v51;
    if (v51)
    {
      v53 = v51;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2841;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationEnabledSubPortsKey is no longer supported. Please use kVirtualAudioPlugInRouteConfigurationPreferredSubPortsKey", buf, 0x12u);
      }
    }
  }

  if (!*a3)
  {
    v925 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v925, "Could not construct");
  }

  sub_438C8(buf, *a3, "preferred sub-ports");
  if (buf[0].__r_.__value_.__s.__data_[8] == 1 && (v54 = buf[0].__r_.__value_.__r.__words[0]) != 0)
  {
    CFRetain(buf[0].__r_.__value_.__l.__data_);
    theDict = v54;
    CFRelease(v54);
  }

  else
  {
    theDict = 0;
  }

  if (!*a3)
  {
    v926 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v926, "Could not construct");
  }

  v55 = sub_47FE0(*a3, "mode");
  if (v55)
  {
    v55 = sub_43A54(v55);
  }

  if ((v55 & 0x100000000) != 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  if (theDict)
  {
    if (v56 > 1936749156)
    {
      if (v56 != 1936749157)
      {
        v57 = 1937007472;
LABEL_106:
        if (v56 != v57)
        {
          if (v1051 && CFDictionaryGetCount(theDict))
          {
            v58 = sub_5544(2);
            v59 = sub_5544(35);
            v60 = 0;
            buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
            v61 = *(v58 + 8);
            while (1)
            {
              v62 = *(&buf[0].__r_.__value_.__l.__data_ + v60);
              if (((v61 & v62) != 0) != ((*(v59 + 8) & v62) != 0))
              {
                break;
              }

              v60 += 4;
              if (v60 == 8)
              {
                goto LABEL_115;
              }
            }

            if ((v61 & v62) == 0)
            {
              v58 = v59;
            }

LABEL_115:
            v63 = *v58;
            v64 = v63;
            if (v63)
            {
              v65 = v63;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2854;
                _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Preferred Sub-Ports:", buf, 0x12u);
              }
            }
          }

          sub_E2B64(buf, theDict);
          sub_E2B64(__p, theDict);
          *&__p[8] = (*&__p[24] - *&__p[16]) >> 3;
          while (1)
          {
            if (buf[0].__r_.__value_.__r.__words[0] && buf[0].__r_.__value_.__l.__size_ != (buf[1].__r_.__value_.__r.__words[0] - buf[0].__r_.__value_.__r.__words[2]) >> 3)
            {
              v66 = *__p;
            }

            else
            {
              v66 = *__p;
              if (!*__p || *&__p[8] == (*&__p[24] - *&__p[16]) >> 3)
              {
LABEL_159:
                if (v1077)
                {
                  v1078 = v1077;
                  operator delete(v1077);
                }

                if (*&__p[16])
                {
                  *&__p[24] = *&__p[16];
                  operator delete(*&__p[16]);
                }

                if (buf[1].__r_.__value_.__r.__words[2])
                {
                  v1081 = buf[1].__r_.__value_.__r.__words[2];
                  operator delete(buf[1].__r_.__value_.__r.__words[2]);
                }

                if (buf[0].__r_.__value_.__r.__words[2])
                {
                  buf[1].__r_.__value_.__r.__words[0] = buf[0].__r_.__value_.__r.__words[2];
                  operator delete(buf[0].__r_.__value_.__r.__words[2]);
                }

                goto LABEL_167;
              }
            }

            if (*&buf[0].__r_.__value_.__l.__data_ == __PAIR128__(*&__p[8], v66))
            {
              goto LABEL_159;
            }

            sub_E2CE8(&cf, buf);
            if (!cf.__r_.__value_.__r.__words[0] || (v67 = CFGetTypeID(cf.__r_.__value_.__l.__data_), v67 != CFNumberGetTypeID()))
            {
              v859 = sub_5544(14);
              v860 = sub_468EC(1, *v859, *(v859 + 8));
              v861 = v860;
              if (v860)
              {
                v862 = v860;
                if (os_log_type_enabled(v862, OS_LOG_TYPE_ERROR))
                {
                  sub_3A6698(&theArray, &cf);
                  v863 = sub_4A8F8(*theArray.__r_.__value_.__l.__data_);
                  LODWORD(v1075[0].__r_.__value_.__l.__data_) = 136315650;
                  *(v1075[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                  WORD2(v1075[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&v1075[0].__r_.__value_.__r.__words[1] + 6) = 2861;
                  WORD1(v1075[0].__r_.__value_.__r.__words[2]) = 2048;
                  *(&v1075[0].__r_.__value_.__r.__words[2] + 4) = v863;
                  _os_log_impl(&dword_0, v862, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Unknown type (%lu) used as key in preferred sub-ports dictionary (expected NumberRef).", v1075, 0x1Cu);
                }
              }

              v864 = __cxa_allocate_exception(0x10uLL);
              *v864 = &off_6DDDD0;
              v864[2] = 1852797029;
            }

            if (!cf.__r_.__value_.__l.__size_)
            {
              v897 = sub_5544(14);
              v1028 = 2003329396;
              v898 = sub_468EC(1, *v897, *(v897 + 8));
              v899 = v898;
              if (v898 && os_log_type_enabled(v898, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v1075[0].__r_.__value_.__l.__data_) = 136315394;
                *(v1075[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v1075[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v1075[0].__r_.__value_.__r.__words[1] + 6) = 2864;
                v900 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Dictionary claimed to have a key, but failed to retrieve it.";
                v901 = v899;
                v902 = 18;
                goto LABEL_1724;
              }

LABEL_1725:

              v906 = __cxa_allocate_exception(0x10uLL);
              *v906 = &off_6DDDD0;
              v906[2] = v1028;
            }

            v68 = CFGetTypeID(cf.__r_.__value_.__l.__size_);
            if (v68 != CFArrayGetTypeID())
            {
              v903 = sub_5544(14);
              v904 = sub_468EC(1, *v903, *(v903 + 8));
              v899 = v904;
              if (v904 && os_log_type_enabled(v904, OS_LOG_TYPE_ERROR))
              {
                v905 = sub_3A6704(cf.__r_.__value_.__l.__size_);
                LODWORD(v1075[0].__r_.__value_.__l.__data_) = 136315650;
                *(v1075[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v1075[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v1075[0].__r_.__value_.__r.__words[1] + 6) = 2867;
                WORD1(v1075[0].__r_.__value_.__r.__words[2]) = 2048;
                *(&v1075[0].__r_.__value_.__r.__words[2] + 4) = v905;
                v900 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Unknown type (%lu) used as key in preferred sub-ports dictionary (expected ArrayRef).";
                v901 = v899;
                v902 = 28;
LABEL_1724:
                _os_log_impl(&dword_0, v901, OS_LOG_TYPE_ERROR, v900, v1075, v902);
              }

              goto LABEL_1725;
            }

            if (!cf.__r_.__value_.__r.__words[0])
            {
              v896 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v896, "Could not construct");
            }

            v69 = sub_4A8F8(cf.__r_.__value_.__l.__data_);
            v1071.__r_.__value_.__r.__words[0] = sub_9E618(*(a2 + 128), v69);
            if (!v1071.__r_.__value_.__r.__words[0])
            {
              v700 = sub_5544(14);
              v701 = sub_468EC(1, *v700, *(v700 + 8));
              v702 = v701;
              if (v701 && os_log_type_enabled(v701, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v1075[0].__r_.__value_.__l.__data_) = 136315650;
                *(v1075[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v1075[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v1075[0].__r_.__value_.__r.__words[1] + 6) = 2872;
                WORD1(v1075[0].__r_.__value_.__r.__words[2]) = 2048;
                *(&v1075[0].__r_.__value_.__r.__words[2] + 4) = v69;
                _os_log_impl(&dword_0, v702, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [port is NULL]: Requested port ID (%lu) to enable does not exist.", v1075, 0x1Cu);
              }

              v703 = __cxa_allocate_exception(0x10uLL);
              *v703 = &off_6DDDD0;
              v703[2] = 1852797029;
            }

            if (v1051)
            {
              v70 = sub_5544(2);
              v71 = sub_5544(35);
              v72 = 0;
              v1075[0].__r_.__value_.__r.__words[0] = 0x100000002;
              v73 = *(v70 + 8);
              while (1)
              {
                v74 = *(&v1075[0].__r_.__value_.__l.__data_ + v72);
                if (((v73 & v74) != 0) != ((*(v71 + 8) & v74) != 0))
                {
                  break;
                }

                v72 += 4;
                if (v72 == 8)
                {
                  goto LABEL_141;
                }
              }

              if ((v73 & v74) == 0)
              {
                v70 = v71;
              }

LABEL_141:
              v75 = *v70;
              v76 = v75;
              if (v75)
              {
                v77 = v75;
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                {
                  size = cf.__r_.__value_.__l.__size_;
                  (*(*v1071.__r_.__value_.__l.__data_ + 112))(&theArray);
                  p_theArray = &theArray;
                  if ((theArray.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_theArray = theArray.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(v1075[0].__r_.__value_.__l.__data_) = 136315906;
                  *(v1075[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                  WORD2(v1075[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&v1075[0].__r_.__value_.__r.__words[1] + 6) = 2875;
                  WORD1(v1075[0].__r_.__value_.__r.__words[2]) = 2112;
                  *(&v1075[0].__r_.__value_.__r.__words[2] + 4) = size;
                  WORD2(v1075[1].__r_.__value_.__r.__words[0]) = 2080;
                  *(v1075[1].__r_.__value_.__r.__words + 6) = p_theArray;
                  _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d     - VirtualAudioSubPortIDs %@ on Port %s.", v1075, 0x26u);
                  if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(theArray.__r_.__value_.__l.__data_);
                  }
                }
              }
            }

            sub_6A9B8(&theArray, &cf.__r_.__value_.__l.__size_);
            if (!theArray.__r_.__value_.__r.__words[0])
            {
              v913 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v913, "Could not construct");
            }

            if (!CFArrayGetCount(theArray.__r_.__value_.__l.__data_))
            {
              v907 = sub_5544(14);
              v908 = sub_468EC(1, *v907, *(v907 + 8));
              v909 = v908;
              if (v908)
              {
                v910 = v908;
                if (os_log_type_enabled(v910, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v1075[0].__r_.__value_.__l.__data_) = 136315394;
                  *(v1075[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                  WORD2(v1075[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&v1075[0].__r_.__value_.__r.__words[1] + 6) = 2878;
                  _os_log_impl(&dword_0, v910, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Preferred sub-port IDs array is empty.", v1075, 0x12u);
                }
              }

              v911 = __cxa_allocate_exception(0x10uLL);
              *v911 = &off_6DDDD0;
              v911[2] = 2003329396;
            }

            if (!theArray.__r_.__value_.__r.__words[0])
            {
              v912 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v912, "Could not construct");
            }

            v80 = sub_233EB4(theArray.__r_.__value_.__l.__data_, 0);
            v1075[0].__r_.__value_.__r.__words[0] = &v1071;
            v81 = sub_3A6724((a1 + 118), v1071.__r_.__value_.__r.__words[0], v1075);
            *(v81 + 48) = 0;
            *(v81 + 10) = v80;
            *(v81 + 11) = 0;
            if (theArray.__r_.__value_.__r.__words[0])
            {
              CFRelease(theArray.__r_.__value_.__l.__data_);
            }

            if (cf.__r_.__value_.__l.__size_)
            {
              CFRelease(cf.__r_.__value_.__l.__size_);
            }

            if (cf.__r_.__value_.__r.__words[0])
            {
              CFRelease(cf.__r_.__value_.__l.__data_);
            }

            ++buf[0].__r_.__value_.__l.__size_;
          }
        }

        goto LABEL_175;
      }
    }

    else if (v56 != 1835229549)
    {
      v57 = 1936745328;
      goto LABEL_106;
    }

    goto LABEL_175;
  }

LABEL_167:
  if (v56 > 1937007471)
  {
    if (v56 == 1937007472 || v56 == 2003133037)
    {
      goto LABEL_175;
    }

    v82 = 2003133027;
  }

  else
  {
    if (v56 == 1835229549 || v56 == 1936745328)
    {
      goto LABEL_175;
    }

    v82 = 1936749157;
  }

  if (v56 == v82)
  {
LABEL_175:
    sub_BCBE0(a2);
  }

  if (!*a3)
  {
    v927 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v927, "Could not construct");
  }

  v83 = sub_11094(*a3, "sub-port preferences");
  if (!v83 || (v84 = v83, TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v84)))
  {
    __p[0] = 0;
    __p[24] = 0;
    goto LABEL_197;
  }

  Count = CFArrayGetCount(v84);
  memset(v1075, 0, 24);
  sub_BDC9C(v1075, Count);
  if (Count < 1)
  {
LABEL_195:
    *__p = v1075[0];
    memset(v1075, 0, 24);
    __p[24] = 1;
  }

  else
  {
    v87 = 0;
    v88 = __p[24];
    v89 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v84, v87);
      v91 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        break;
      }

      CFRetain(ValueAtIndex);
      v92 = CFGetTypeID(v91);
      if (v92 != CFDictionaryGetTypeID())
      {
        CFRelease(v91);
        break;
      }

      v93 = v1075[0].__r_.__value_.__l.__size_;
      if (v1075[0].__r_.__value_.__l.__size_ >= v1075[0].__r_.__value_.__r.__words[2])
      {
        v95 = (v1075[0].__r_.__value_.__l.__size_ - v1075[0].__r_.__value_.__r.__words[0]) >> 3;
        if ((v95 + 1) >> 61)
        {
          __p[24] = v88;
          sub_189A00();
        }

        v96 = (v1075[0].__r_.__value_.__r.__words[2] - v1075[0].__r_.__value_.__r.__words[0]) >> 2;
        if (v96 <= v95 + 1)
        {
          v96 = v95 + 1;
        }

        if (v1075[0].__r_.__value_.__r.__words[2] - v1075[0].__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v97 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v97 = v96;
        }

        buf[1].__r_.__value_.__l.__size_ = v1075;
        if (v97)
        {
          sub_1DB8DC(v97);
        }

        buf[0].__r_.__value_.__r.__words[0] = 0;
        buf[0].__r_.__value_.__l.__size_ = 8 * v95;
        buf[1].__r_.__value_.__r.__words[0] = 0;
        *buf[0].__r_.__value_.__l.__size_ = v91;
        buf[0].__r_.__value_.__r.__words[2] = 8 * v95 + 8;
        sub_76010(v1075, buf);
        v94 = v1075[0].__r_.__value_.__l.__size_;
        sub_760C0(buf);
      }

      else
      {
        *v1075[0].__r_.__value_.__l.__size_ = v91;
        v94 = v93 + 8;
      }

      v1075[0].__r_.__value_.__l.__size_ = v94;
      if (v89 == ++v87)
      {
        goto LABEL_195;
      }
    }

    __p[24] = 0;
    __p[0] = 0;
  }

  buf[0].__r_.__value_.__r.__words[0] = v1075;
  sub_761AC(buf);
  if ((__p[24] & 1) == 0)
  {
    goto LABEL_197;
  }

  v343 = *&__p[8];
  v344 = *__p;
  if (*__p == *&__p[8])
  {
    if (v1051)
    {
      v346 = sub_5544(2);
      v347 = sub_5544(35);
      v348 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v349 = *(v346 + 8);
      while (1)
      {
        v350 = *(&buf[0].__r_.__value_.__l.__data_ + v348);
        if (((v349 & v350) != 0) != ((*(v347 + 8) & v350) != 0))
        {
          break;
        }

        v348 += 4;
        if (v348 == 8)
        {
          goto LABEL_1214;
        }
      }

      if ((v349 & v350) == 0)
      {
        v346 = v347;
      }

LABEL_1214:
      v650 = *v346;
      v651 = v650;
      if (v650)
      {
        v652 = v650;
        if (os_log_type_enabled(v652, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2897;
          _os_log_impl(&dword_0, v652, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Clearing all sub-port preferences:", buf, 0x12u);
        }
      }
    }

    sub_BCBE0(a2);
    goto LABEL_197;
  }

  if (v56 > 1937007471)
  {
    if (v56 == 1937007472 || v56 == 2003133027)
    {
      goto LABEL_197;
    }

    v345 = 2003133037;
  }

  else
  {
    if (v56 == 1835229549 || v56 == 1936745328)
    {
      goto LABEL_197;
    }

    v345 = 1936749157;
  }

  if (v56 == v345)
  {
    goto LABEL_197;
  }

  *&v1075[0].__r_.__value_.__r.__words[1] = 0uLL;
  v1075[0].__r_.__value_.__r.__words[0] = &v1075[0].__r_.__value_.__l.__size_;
  do
  {
    v351 = sub_5544(2);
    v352 = *v351;
    if (*v351 && os_log_type_enabled(*v351, OS_LOG_TYPE_DEBUG))
    {
      v353 = *v344;
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__r_.__value_.__r.__words + 4) = "PortTypes.cpp";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 44;
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v353;
      _os_log_impl(&dword_0, v352, OS_LOG_TYPE_DEBUG, "%25s:%-5d Parsing sub port preference entry: %@", buf, 0x1Cu);
    }

    if (!*v344)
    {
      v985 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v985, "Could not construct");
    }

    v354 = sub_35D9C0(*v344, "port id");
    if (!v354)
    {
      v986 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v986, "Could not find item");
    }

    LODWORD(cf.__r_.__value_.__l.__data_) = sub_4A8F8(v354);
    if (!*v344)
    {
      v987 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v987, "Could not construct");
    }

    v355 = sub_2238C8(*v344, "sub-port id");
    if (!v355)
    {
      v988 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v988, "Could not find item");
    }

    LODWORD(v1071.__r_.__value_.__l.__data_) = sub_4A8F8(v355);
    if (!*v344)
    {
      v989 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v989, "Could not construct");
    }

    v356 = sub_379E24(*v344, "polar pattern");
    if (v356)
    {
      v357 = sub_113A0(v356);
    }

    else
    {
      v357 = 0;
    }

    v358 = v1075[0].__r_.__value_.__l.__size_;
    if (!v1075[0].__r_.__value_.__l.__size_)
    {
      goto LABEL_666;
    }

    p_size = &v1075[0].__r_.__value_.__l.__size_;
    do
    {
      v360 = v358;
      v361 = p_size;
      v362 = *(v358 + 32);
      if (v362 >= LODWORD(cf.__r_.__value_.__l.__data_))
      {
        p_size = v358;
      }

      v358 = *(v358 + 8 * (v362 < LODWORD(cf.__r_.__value_.__l.__data_)));
    }

    while (v358);
    if (p_size == &v1075[0].__r_.__value_.__r.__words[1])
    {
      goto LABEL_666;
    }

    if (v362 < LODWORD(cf.__r_.__value_.__l.__data_))
    {
      v360 = v361;
    }

    if (LODWORD(cf.__r_.__value_.__l.__data_) >= *(v360 + 32))
    {
      if ((v357 & 0x100000000) != 0)
      {
        goto LABEL_670;
      }

      *(p_size + 10) = v1071.__r_.__value_.__l.__data_;
    }

    else
    {
LABEL_666:
      LODWORD(buf[0].__r_.__value_.__l.__data_) = v1071.__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[2] = 0;
      buf[1].__r_.__value_.__r.__words[0] = 0;
      buf[0].__r_.__value_.__l.__size_ = &buf[0].__r_.__value_.__r.__words[2];
      theArray.__r_.__value_.__r.__words[0] = &cf;
      v363 = sub_379BFC(v1075, cf.__r_.__value_.__l.__data_, &theArray);
      v365 = v363 + 7;
      v364 = v363[7];
      *(v363 + 10) = buf[0].__r_.__value_.__l.__data_;
      sub_477A0(v364);
      v366 = buf[0].__r_.__value_.__r.__words[2];
      v363[6] = buf[0].__r_.__value_.__l.__size_;
      v363[7] = v366;
      data = buf[1].__r_.__value_.__l.__data_;
      v363[8] = buf[1].__r_.__value_.__l.__data_;
      if (data)
      {
        v366[2] = v365;
        buf[0].__r_.__value_.__l.__size_ = &buf[0].__r_.__value_.__r.__words[2];
        buf[0].__r_.__value_.__r.__words[2] = 0;
        buf[1].__r_.__value_.__r.__words[0] = 0;
        v366 = 0;
      }

      else
      {
        v363[6] = v365;
      }

      sub_477A0(v366);
      if ((v357 & 0x100000000) != 0)
      {
LABEL_670:
        buf[0].__r_.__value_.__r.__words[0] = &cf;
        v368 = sub_379BFC(v1075, cf.__r_.__value_.__l.__data_, buf);
        buf[0].__r_.__value_.__r.__words[0] = &v1071;
        *(sub_379CF0(v368 + 6, v1071.__r_.__value_.__l.__data_, buf) + 8) = v357;
      }
    }

    ++v344;
  }

  while (v344 != v343);
  v653 = v1075[0].__r_.__value_.__r.__words[0];
  if (v1075[0].__r_.__value_.__l.__data_ != &v1075[0].__r_.__value_.__r.__words[1])
  {
    do
    {
      v654 = *(v653 + 56);
      v655 = *(v653 + 40);
      if (v654)
      {
        v656 = v653 + 56;
        do
        {
          v657 = *(v654 + 28);
          v626 = v657 >= v655;
          v658 = v657 < v655;
          if (v626)
          {
            v656 = v654;
          }

          v654 = *(v654 + 8 * v658);
        }

        while (v654);
        if (v656 == v653 + 56 || v655 < *(v656 + 28))
        {
          v659 = 0;
          v660 = 0;
          LODWORD(v654) = 0;
        }

        else
        {
          LODWORD(v654) = *(v656 + 32) & 0xFFFFFF00;
          v660 = *(v656 + 32);
          v659 = 0x100000000;
        }
      }

      else
      {
        v659 = 0;
        v660 = 0;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = *(v653 + 40);
      *(buf[0].__r_.__value_.__r.__words + 4) = v659 | v654 | v660;
      v661 = v655;
      theArray.__r_.__value_.__r.__words[0] = buf[0].__r_.__value_.__r.__words[0];
      LODWORD(theArray.__r_.__value_.__r.__words[1]) = HIDWORD(v659);
      v662 = sub_9E618(*(a2 + 128), *(v653 + 32));
      cf.__r_.__value_.__r.__words[0] = v662;
      if (!v662)
      {
        v992 = sub_5544(14);
        v993 = sub_468EC(1, *v992, *(v992 + 8));
        v994 = v993;
        if (v993)
        {
          v995 = v993;
          if (os_log_type_enabled(v995, OS_LOG_TYPE_ERROR))
          {
            v996 = *(v653 + 32);
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2910;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v996;
            _os_log_impl(&dword_0, v995, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Requested port ID (%u) to enable does not exist.", buf, 0x18u);
          }
        }

        v997 = __cxa_allocate_exception(0x10uLL);
        *v997 = &off_6DDDD0;
        v997[2] = 1852797029;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = v661;
      v663 = theArray.__r_.__value_.__s.__data_[8];
      *(buf[0].__r_.__value_.__r.__words + 4) = *(theArray.__r_.__value_.__r.__words + 4);
      v664 = buf[0].__r_.__value_.__r.__words[0];
      buf[0].__r_.__value_.__r.__words[0] = &cf;
      v665 = sub_3A6724((a1 + 118), v662, buf);
      v665[5] = v664;
      *(v665 + 48) = v663;
      v666 = *(v653 + 8);
      if (v666)
      {
        do
        {
          v667 = v666;
          v666 = v666->__r_.__value_.__r.__words[0];
        }

        while (v666);
      }

      else
      {
        do
        {
          v667 = *(v653 + 16);
          v145 = v667->__r_.__value_.__r.__words[0] == v653;
          v653 = v667;
        }

        while (!v145);
      }

      v653 = v667;
    }

    while (v667 != &v1075[0].__r_.__value_.__r.__words[1]);
  }

  sub_379DD0(v1075[0].__r_.__value_.__l.__size_);
LABEL_197:
  if (__p[24] == 1)
  {
    buf[0].__r_.__value_.__r.__words[0] = __p;
    sub_761AC(buf);
  }

  if (!*a3)
  {
    v928 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v928, "Could not construct");
  }

  sub_438C8(__p, *a3, "active data sources");
  v98 = *__p;
  if ((__p[8] & v1051) == 1 && *__p)
  {
    v99 = sub_5544(2);
    v100 = sub_5544(35);
    v101 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v102 = *(v99 + 8);
    while (1)
    {
      v103 = *(&buf[0].__r_.__value_.__l.__data_ + v101);
      if (((v102 & v103) != 0) != ((*(v100 + 8) & v103) != 0))
      {
        break;
      }

      v101 += 4;
      if (v101 == 8)
      {
        goto LABEL_211;
      }
    }

    if ((v102 & v103) == 0)
    {
      v99 = v100;
    }

LABEL_211:
    v104 = *v99;
    v105 = v104;
    if (v104)
    {
      v106 = v104;
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2921;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "active data sources";
        _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s is no longer supported.  It will be ignored.", buf, 0x1Cu);
      }
    }

LABEL_216:
    CFRelease(v98);
  }

  else if (__p[8] && *__p)
  {
    goto LABEL_216;
  }

  if (!*a3)
  {
    v929 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v929, "Could not construct");
  }

  sub_480F4(&theArray, *a3, "routable ports");
  if (theArray.__r_.__value_.__s.__data_[8] == 1)
  {
    v1045 = theArray.__r_.__value_.__r.__words[0];
    if (theArray.__r_.__value_.__r.__words[0])
    {
      if (v1051)
      {
        v107 = sub_5544(2);
        v108 = sub_5544(35);
        v109 = 0;
        buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
        v110 = *(v107 + 8);
        while (1)
        {
          v111 = *(&buf[0].__r_.__value_.__l.__data_ + v109);
          if (((v110 & v111) != 0) != ((*(v108 + 8) & v111) != 0))
          {
            break;
          }

          v109 += 4;
          if (v109 == 8)
          {
            goto LABEL_227;
          }
        }

        if ((v110 & v111) == 0)
        {
          v107 = v108;
        }

LABEL_227:
        v112 = *v107;
        v113 = v112;
        if (v112)
        {
          v114 = v112;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2930;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v1045;
            _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Routable Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v115 = CFArrayGetCount(v1045);
      v1042 = CFArrayGetCount(v1045);
      if (v115)
      {
        v116 = 0;
        v1031 = (a1 + 108);
        v1027 = v115;
        do
        {
          if (v116 == v1042)
          {
            break;
          }

          sub_A3B9C(&cf, v1045, v116);
          v117 = cf.__r_.__value_.__r.__words[0];
          if (!cf.__r_.__value_.__r.__words[0])
          {
            v894 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v894, "Could not construct");
          }

          v118 = sub_113A0(cf.__r_.__value_.__l.__data_);
          if ((v118 & 0x100000000) == 0)
          {
            v889 = sub_5544(14);
            v890 = sub_468EC(1, *v889, *(v889 + 8));
            v891 = v890;
            if (v890)
            {
              v892 = v890;
              if (os_log_type_enabled(v892, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2939;
                _os_log_impl(&dword_0, v892, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationRoutablePortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v893 = __cxa_allocate_exception(0x10uLL);
            *v893 = &off_6DDDD0;
            v893[2] = 1852797029;
          }

          v119 = v118;
          sub_2820();
          v120 = sub_3D90(v119);
          v1071.__r_.__value_.__r.__words[0] = v120;
          if (!v120)
          {
            v694 = sub_5544(14);
            v695 = sub_468EC(1, *v694, *(v694 + 8));
            v696 = v695;
            if (v695)
            {
              v697 = v695;
              if (os_log_type_enabled(v697, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2942;
                _os_log_impl(&dword_0, v697, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
              }
            }

            v698 = __cxa_allocate_exception(0x10uLL);
            *v698 = &off_6DDDD0;
            v698[2] = 560947818;
          }

          if (!*a3)
          {
            v895 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v895, "Could not construct");
          }

          v121 = sub_43950(*a3, "add fallback device");
          if (v121 && (sub_113A0(v121) & 0x1FFFFFFFFLL) == 0x100000001)
          {
            v122 = *(a1 + 455);
            if ((v122 & 0x80u) != 0)
            {
              v122 = *(a1 + 55);
            }

            if (v122)
            {
              v123 = *(v120 + 96);
              if (v123)
              {
                v124 = *(v120 + 88);
                atomic_fetch_add_explicit(&v123->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v125 = std::__shared_weak_count::lock(v123);
                if (v125)
                {
                  v126 = v124;
                }

                else
                {
                  v126 = 0;
                }
              }

              else
              {
                v125 = 0;
                v126 = 0;
              }

              if (*(v126 + 303) < 0)
              {
                sub_54A0(buf, *(v126 + 280), *(v126 + 288));
              }

              else
              {
                buf[0] = *(v126 + 280);
              }

              v131 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
              v132 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
              v133 = buf[0].__r_.__value_.__r.__words[0];
              if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v134 = buf;
              }

              else
              {
                v134 = buf[0].__r_.__value_.__r.__words[0];
              }

              if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v131 = buf[0].__r_.__value_.__l.__size_;
              }

              v135 = *(a1 + 455);
              if (v135 >= 0)
              {
                v136 = a1 + 108;
              }

              else
              {
                v136 = *(a1 + 54);
              }

              if (v135 >= 0)
              {
                v137 = *(a1 + 455);
              }

              else
              {
                v137 = *(a1 + 55);
              }

              if (v137)
              {
                v1026 = v125;
                v138 = v134 + v131;
                if (v131 >= v137)
                {
                  v1024 = buf[0].__r_.__value_.__r.__words[0];
                  v1025 = v123;
                  v141 = *v136;
                  v142 = v134;
                  do
                  {
                    v143 = v131 - v137;
                    if (v143 == -1)
                    {
                      break;
                    }

                    v144 = memchr(v142, v141, v143 + 1);
                    if (!v144)
                    {
                      break;
                    }

                    v139 = v144;
                    if (!memcmp(v144, v136, v137))
                    {
                      goto LABEL_277;
                    }

                    v142 = (v139 + 1);
                    v131 = v138 - (v139 + 1);
                  }

                  while (v131 >= v137);
                  v139 = v138;
LABEL_277:
                  v133 = v1024;
                  v123 = v1025;
                }

                else
                {
                  v139 = v134 + v131;
                }

                v145 = v139 == v138 || v139 - v134 == -1;
                v140 = v145;
                v125 = v1026;
              }

              else
              {
                v140 = 0;
              }

              v115 = v1027;
              if (v132 < 0)
              {
                operator delete(v133);
              }

              if (v125)
              {
                sub_1A8C0(v125);
              }

              if (v123)
              {
                std::__shared_weak_count::__release_weak(v123);
              }

              if (v140)
              {
                v962 = sub_5544(14);
                v963 = sub_468EC(1, *v962, *(v962 + 8));
                v964 = v963;
                if (v963)
                {
                  v965 = v963;
                  if (os_log_type_enabled(v965, OS_LOG_TYPE_ERROR))
                  {
                    v966 = *(a1 + 455);
                    v967 = *(a1 + 54);
                    v969 = *(v120 + 88);
                    v968 = *(v120 + 96);
                    atomic_fetch_add_explicit(&v968->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v970 = std::__shared_weak_count::lock(v968);
                    sub_23148(__p, v969 + 2);
                    v971 = a1 + 108;
                    if (v966 < 0)
                    {
                      v971 = v967;
                    }

                    if (__p[23] >= 0)
                    {
                      v972 = __p;
                    }

                    else
                    {
                      v972 = *__p;
                    }

                    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                    *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2960;
                    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                    *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v971;
                    WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
                    *(buf[1].__r_.__value_.__r.__words + 6) = v972;
                    _os_log_impl(&dword_0, v965, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Setting fallback device but routable ports don't have consistent UID. Saved fallback UID %s does not  match this port UID %s", buf, 0x26u);
                    if ((__p[23] & 0x80000000) != 0)
                    {
                      operator delete(*__p);
                    }

                    sub_1A8C0(v970);
                    std::__shared_weak_count::__release_weak(v968);
                  }
                }

                v973 = __cxa_allocate_exception(0x10uLL);
                *v973 = &off_6DDDD0;
                v973[2] = 1852797029;
              }
            }

            else
            {
              v127 = *(v120 + 96);
              if (v127)
              {
                v128 = *(v120 + 88);
                atomic_fetch_add_explicit(&v127->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v129 = std::__shared_weak_count::lock(v127);
                if (v129)
                {
                  v130 = v128;
                }

                else
                {
                  v130 = 0;
                }
              }

              else
              {
                v129 = 0;
                v130 = 0;
              }

              if (*(v130 + 303) < 0)
              {
                sub_54A0(__p, *(v130 + 280), *(v130 + 288));
              }

              else
              {
                v146 = v130 + 280;
                *__p = *v146;
                *&__p[16] = *(v146 + 16);
              }

              sub_34DE34(buf, __p);
              if (*(a1 + 455) < 0)
              {
                operator delete(*v1031);
              }

              *v1031 = *&buf[0].__r_.__value_.__l.__data_;
              *(a1 + 56) = *(&buf[0].__r_.__value_.__l + 2);
              *(&buf[0].__r_.__value_.__s + 23) = 0;
              buf[0].__r_.__value_.__s.__data_[0] = 0;
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              if (v129)
              {
                sub_1A8C0(v129);
              }

              if (v127)
              {
                std::__shared_weak_count::__release_weak(v127);
              }
            }
          }

          v147 = *(a1 + 455);
          if ((v147 & 0x80u) != 0)
          {
            v147 = *(a1 + 55);
          }

          if (v147)
          {
            sub_114B44((a1 + 136), v120, &v1071);
            v1065 = 0;
            __dst = 0;
            v1067 = 0;
            v148 = *(a1 + 68);
            if (v148 != v1052)
            {
              do
              {
                v149 = *(v148 + 4);
                sub_22CB9C(__p, v149, 1735159650, 2);
                v150 = *sub_5544(2);
                v151 = v150;
                if (v150)
                {
                  v152 = v150;
                  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*v149 + 112))(v1075, v149);
                    v153 = v1075;
                    if ((v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v153 = v1075[0].__r_.__value_.__r.__words[0];
                    }

                    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                    *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 910;
                    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                    *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v153;
                    WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2048;
                    *(buf[1].__r_.__value_.__r.__words + 6) = (*&__p[8] - *__p) >> 2;
                    _os_log_impl(&dword_0, v152, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Siblings for port %s : %zd", buf, 0x26u);
                    if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v1075[0].__r_.__value_.__l.__data_);
                    }
                  }
                }

                v154 = *__p;
                sub_3A67EC(&v1065, __dst, *__p, *&__p[8], (*&__p[8] - *__p) >> 2);
                if (v154)
                {
                  operator delete(v154);
                }

                v155 = *(v148 + 1);
                if (v155)
                {
                  do
                  {
                    v156 = v155;
                    v155 = *v155;
                  }

                  while (v155);
                }

                else
                {
                  do
                  {
                    v156 = *(v148 + 2);
                    v145 = *v156 == v148;
                    v148 = v156;
                  }

                  while (!v145);
                }

                v148 = v156;
              }

              while (v156 != v1052);
              v158 = v1065;
              v157 = __dst;
              v159 = v1065;
              if (v1065 != __dst)
              {
                do
                {
                  v160 = *v159;
                  sub_2820();
                  v161 = sub_3D90(v160);
                  v1075[0].__r_.__value_.__r.__words[0] = v161;
                  if (!v161)
                  {
                    v668 = sub_5544(14);
                    v669 = sub_468EC(1, *v668, *(v668 + 8));
                    v670 = v669;
                    if (v669 && os_log_type_enabled(v669, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
                      *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 918;
                      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
                      HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v160;
                      _os_log_impl(&dword_0, v670, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID (%u)", buf, 0x18u);
                    }

                    v671 = __cxa_allocate_exception(0x10uLL);
                    *v671 = &off_6DDDD0;
                    v671[2] = 560947818;
                  }

                  v162 = *sub_5544(2);
                  v163 = v162;
                  if (v162)
                  {
                    v164 = v162;
                    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*v161 + 112))(__p, v161);
                      v165 = __p;
                      if (__p[23] < 0)
                      {
                        v165 = *__p;
                      }

                      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
                      *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 919;
                      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v165;
                      _os_log_impl(&dword_0, v164, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Added %s to port list", buf, 0x1Cu);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }
                    }
                  }

                  sub_114B44((a1 + 136), v161, v1075);
                  ++v159;
                }

                while (v159 != v157);
              }

              if (v158)
              {
                __dst = v158;
                operator delete(v158);
              }
            }
          }

          else
          {
            sub_114B44((a1 + 124), v120, &v1071);
          }

          CFRelease(v117);
          ++v116;
        }

        while (v116 != v115);
      }

      if (v1046)
      {
        if (*(a2 + 472))
        {
          sub_3A6A58(v1064, a1 + 62);
          if (v1064[0])
          {
            v1064[1] = v1064[0];
            operator delete(v1064[0]);
          }
        }
      }

      if (theArray.__r_.__value_.__r.__words[0])
      {
        CFRelease(theArray.__r_.__value_.__l.__data_);
      }
    }
  }

  if (!*a3)
  {
    v930 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v930, "Could not construct");
  }

  sub_4A1E0(__p, *a3, "unroutable ports");
  if (__p[8] == 1)
  {
    v166 = *__p;
    if (*__p)
    {
      if (v1051)
      {
        v167 = sub_5544(2);
        v168 = sub_5544(35);
        v169 = 0;
        buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
        v170 = *(v167 + 8);
        while (1)
        {
          v171 = *(&buf[0].__r_.__value_.__l.__data_ + v169);
          if (((v170 & v171) != 0) != ((*(v168 + 8) & v171) != 0))
          {
            break;
          }

          v169 += 4;
          if (v169 == 8)
          {
            goto LABEL_354;
          }
        }

        if ((v170 & v171) == 0)
        {
          v167 = v168;
        }

LABEL_354:
        v172 = *v167;
        v173 = v172;
        if (v172)
        {
          v174 = v172;
          if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2989;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v166;
            _os_log_impl(&dword_0, v174, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Unroutable Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v175 = CFArrayGetCount(v166);
      v176 = CFArrayGetCount(v166);
      if (v175)
      {
        v177 = v176;
        for (i = 0; i != v175; ++i)
        {
          if (v177 == i)
          {
            break;
          }

          sub_A3B9C(v1075, v166, i);
          v179 = v1075[0].__r_.__value_.__r.__words[0];
          if (!v1075[0].__r_.__value_.__r.__words[0])
          {
            v870 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v870, "Could not construct");
          }

          v180 = sub_113A0(v1075[0].__r_.__value_.__l.__data_);
          if ((v180 & 0x100000000) == 0)
          {
            v865 = sub_5544(14);
            v866 = sub_468EC(1, *v865, *(v865 + 8));
            v867 = v866;
            if (v866)
            {
              v868 = v866;
              if (os_log_type_enabled(v868, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2998;
                _os_log_impl(&dword_0, v868, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v869 = __cxa_allocate_exception(0x10uLL);
            *v869 = &off_6DDDD0;
            v869[2] = 1852797029;
          }

          v181 = v180;
          sub_2820();
          v182 = sub_3D90(v181);
          theArray.__r_.__value_.__r.__words[0] = v182;
          if (!v182)
          {
            v689 = sub_5544(14);
            v690 = sub_468EC(1, *v689, *(v689 + 8));
            v691 = v690;
            if (v690)
            {
              v692 = v690;
              if (os_log_type_enabled(v692, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3001;
                _os_log_impl(&dword_0, v692, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
              }
            }

            v693 = __cxa_allocate_exception(0x10uLL);
            *v693 = &off_6DDDD0;
            v693[2] = 560947818;
          }

          sub_114B44((a1 + 130), v182, &theArray);
          CFRelease(v179);
        }
      }

      if (!*a3)
      {
        v990 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v990, "Could not construct");
      }

      if (sub_47E08(*a3))
      {
        sub_3A6A58(buf, a1 + 65);
        if (*(a1 + 760) == 1)
        {
          v183 = *(a1 + 92);
          if (v183)
          {
            *(a1 + 93) = v183;
            operator delete(v183);
          }

          *(a1 + 184) = buf[0];
        }

        else
        {
          *(a1 + 184) = buf[0];
          *(a1 + 760) = 1;
        }
      }

      if (*__p)
      {
        CFRelease(*__p);
      }
    }
  }

  v184 = *a3;
  if (!*a3)
  {
    v931 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v931, "Could not construct");
  }

  v185 = CFStringCreateWithBytes(0, "voice processing configuration", 30, 0x8000100u, 0);
  buf[0].__r_.__value_.__r.__words[0] = v185;
  if (!v185)
  {
    v932 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v932, "Could not construct");
  }

  Value = CFDictionaryGetValue(v184, v185);
  if (buf[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(buf[0].__r_.__value_.__l.__data_);
  }

  if (!Value)
  {
    goto LABEL_387;
  }

  CFRetain(Value);
  v187 = CFGetTypeID(Value);
  if (v187 != CFDictionaryGetTypeID())
  {
    CFRelease(Value);
LABEL_387:
    __p[0] = 0;
    __p[8] = 0;
    goto LABEL_388;
  }

  *__p = Value;
  __p[8] = 1;
  sub_BDD1C((a1 + 154), Value, 1u);
  *(a1 + 464) = CFDictionaryGetCount(Value) != 0;
  if (v1051)
  {
    v188 = sub_5544(2);
    v189 = sub_5544(35);
    v190 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v191 = *(v188 + 8);
    while (1)
    {
      v192 = *(&buf[0].__r_.__value_.__l.__data_ + v190);
      if (((v191 & v192) != 0) != ((*(v189 + 8) & v192) != 0))
      {
        break;
      }

      v190 += 4;
      if (v190 == 8)
      {
        goto LABEL_507;
      }
    }

    if ((v191 & v192) == 0)
    {
      v188 = v189;
    }

LABEL_507:
    v268 = *v188;
    v269 = v268;
    if (v268)
    {
      v270 = v268;
      if (os_log_type_enabled(v270, OS_LOG_TYPE_DEBUG))
      {
        v271 = "false";
        v272 = *(a1 + 464);
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        if (v272)
        {
          v271 = "true";
        }

        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3022;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v271;
        _os_log_impl(&dword_0, v270, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Voice Processing Enabled: %s.", buf, 0x1Cu);
      }
    }

    v273 = sub_5544(2);
    v274 = sub_5544(35);
    v275 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v276 = *(v273 + 8);
    while (1)
    {
      v277 = *(&buf[0].__r_.__value_.__l.__data_ + v275);
      if (((v276 & v277) != 0) != ((*(v274 + 8) & v277) != 0))
      {
        break;
      }

      v275 += 4;
      if (v275 == 8)
      {
        goto LABEL_519;
      }
    }

    if ((v276 & v277) == 0)
    {
      v273 = v274;
    }

LABEL_519:
    v278 = *v273;
    v279 = v278;
    if (v278)
    {
      v280 = v278;
      if (os_log_type_enabled(v280, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3025;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = Value;
        _os_log_impl(&dword_0, v280, OS_LOG_TYPE_DEBUG, "%25s:%-5d - VP configuration data: %@.", buf, 0x1Cu);
      }
    }
  }

LABEL_388:
  if (__p[8] == 1 && *__p)
  {
    CFRelease(*__p);
  }

  sub_53E8(buf, "screen dark policy enabled");
  v193 = sub_4A268(a3, buf);
  a1[38] = v193;
  *(a1 + 156) = BYTE4(v193);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v1051 && *(a1 + 156) == 1)
  {
    v194 = sub_5544(2);
    v195 = sub_5544(35);
    v196 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v197 = *(v194 + 8);
    while (1)
    {
      v198 = *(&buf[0].__r_.__value_.__l.__data_ + v196);
      if (((v197 & v198) != 0) != ((*(v195 + 8) & v198) != 0))
      {
        break;
      }

      v196 += 4;
      if (v196 == 8)
      {
        goto LABEL_401;
      }
    }

    if ((v197 & v198) == 0)
    {
      v194 = v195;
    }

LABEL_401:
    v199 = *v194;
    v200 = v199;
    if (v199)
    {
      v201 = v199;
      if (os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG))
      {
        if ((a1[39] & 1) == 0)
        {
          sub_1EC054();
        }

        v202 = "false";
        v203 = a1[38];
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        if (v203 == 1)
        {
          v202 = "true";
        }

        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3033;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v202;
        _os_log_impl(&dword_0, v201, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Screen dark policy enabled: %s.", buf, 0x1Cu);
      }
    }
  }

  if (!*a3)
  {
    v933 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v933, "Could not construct");
  }

  sub_4A5E0(&v1068, *a3, "device hints");
  if (v1069 == 1)
  {
    v204 = v1068;
    if (v1068)
    {
      CFRetain(v1068);
      v205 = 0;
      v206 = 0;
      v1063[0] = v204;
      buf[0].__r_.__value_.__s.__data_[0] = 0;
      while (v206 < CFArrayGetCount(v204))
      {
        if (CFArrayGetCount(v204) <= v206 || (v207 = CFArrayGetValueAtIndex(v204, v206), (v208 = v207) == 0))
        {
          LOBYTE(v1081) = v205;
          goto LABEL_1664;
        }

        CFRetain(v207);
        v209 = CFGetTypeID(v208);
        if (v209 != CFDataGetTypeID())
        {
          LOBYTE(v1081) = v205;
          CFRelease(v208);
LABEL_1664:
          v1075[0].__r_.__value_.__s.__data_[0] = 0;
          v1075[0].__r_.__value_.__s.__data_[8] = 0;
          v842 = sub_5544(14);
          v843 = sub_468EC(1, *v842, *(v842 + 8));
          v844 = v843;
          if (v843)
          {
            v845 = v843;
            if (os_log_type_enabled(v845, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 3052;
              _os_log_impl(&dword_0, v845, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationDeviceHintsKey does not contain CFDataRefs.", __p, 0x12u);
            }
          }

          v846 = __cxa_allocate_exception(0x10uLL);
          *v846 = &off_6DDDD0;
          v846[2] = 1852797029;
        }

        v1075[0].__r_.__value_.__r.__words[0] = v208;
        v1075[0].__r_.__value_.__s.__data_[8] = 1;
        BytePtr = CFDataGetBytePtr(v208);
        v211 = BytePtr;
        if (!BytePtr)
        {
          LOBYTE(v1081) = v205;
          v672 = sub_5544(14);
          v673 = sub_468EC(1, *v672, *(v672 + 8));
          v674 = v673;
          if (v673)
          {
            v675 = v673;
            if (os_log_type_enabled(v675, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315650;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 3056;
              *&__p[18] = 2048;
              *&__p[20] = v206;
              _os_log_impl(&dword_0, v675, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [deviceHint is NULL]: The CFDataRef specified at index %lu by kVirtualAudioPlugInRouteConfigurationDeviceHintsKey is NULL.", __p, 0x1Cu);
            }
          }

          v676 = __cxa_allocate_exception(0x10uLL);
          *v676 = &off_6DDDD0;
          v676[2] = 1852797029;
        }

        if (*(BytePtr + 1) == 1651861092)
        {
          if (v205)
          {
            v212 = *sub_5544(2);
            v213 = v212;
            if (v212)
            {
              v214 = v212;
              if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
              {
                *__p = 136315394;
                *&__p[4] = "VirtualAudio_PlugIn.mm";
                *&__p[12] = 1024;
                *&__p[14] = 3061;
                _os_log_impl(&dword_0, v214, OS_LOG_TYPE_INFO, "%25s:%-5d Buffer Duration hint being set a second time, discarding previously set value", __p, 0x12u);
              }
            }
          }

          else
          {
            v205 = 1;
          }

          *&buf[0].__r_.__value_.__l.__data_ = *v211;
          *&buf[0].__r_.__value_.__r.__words[2] = *(v211 + 1);
          *&buf[1].__r_.__value_.__r.__words[1] = *(v211 + 2);
        }

        else
        {
          sub_BDDA0((a1 + 158), BytePtr);
        }

        CFRelease(v208);
        ++v206;
      }

      LOBYTE(v1081) = v205;
      if (v205)
      {
        sub_BDDA0((a1 + 158), buf);
      }

      sub_53E8(&v1079, "{ ");
      v215 = *(a1 + 79);
      if (*(a1 + 80) != v215)
      {
        v216 = v215[1];
        v217 = *(v215 + 1);
        sub_22170(&cf, *v215);
        v218 = std::string::insert(&cf, 0, "[ ", 2uLL);
        v219 = *&v218->__r_.__value_.__l.__data_;
        theArray.__r_.__value_.__r.__words[2] = v218->__r_.__value_.__r.__words[2];
        *&theArray.__r_.__value_.__l.__data_ = v219;
        v218->__r_.__value_.__l.__size_ = 0;
        v218->__r_.__value_.__r.__words[2] = 0;
        v218->__r_.__value_.__r.__words[0] = 0;
        v220 = std::string::append(&theArray, ": ", 2uLL);
        v221 = *&v220->__r_.__value_.__l.__data_;
        v1075[0].__r_.__value_.__r.__words[2] = v220->__r_.__value_.__r.__words[2];
        *&v1075[0].__r_.__value_.__l.__data_ = v221;
        v220->__r_.__value_.__l.__size_ = 0;
        v220->__r_.__value_.__r.__words[2] = 0;
        v220->__r_.__value_.__r.__words[0] = 0;
        LODWORD(v1058) = v216;
        *(&v1058 + 4) = v217;
        sub_22CE0(&v1071, &v1058);
      }

      std::string::append(&v1079, " }", 2uLL);
      v222 = sub_5544(2);
      v223 = sub_5544(35);
      v224 = 0;
      *__p = 0x100000002;
      v225 = *(v222 + 8);
      while (1)
      {
        v226 = *&__p[v224];
        if (((v225 & v226) != 0) != ((*(v223 + 8) & v226) != 0))
        {
          break;
        }

        v224 += 4;
        if (v224 == 8)
        {
          goto LABEL_439;
        }
      }

      if ((v225 & v226) == 0)
      {
        v222 = v223;
      }

LABEL_439:
      v227 = *v222;
      v228 = v227;
      if (v227)
      {
        v229 = v227;
        if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
        {
          v230 = &v1079;
          if ((v1079.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v230 = v1079.__r_.__value_.__r.__words[0];
          }

          *__p = 136315650;
          *&__p[4] = "VirtualAudio_PlugIn.mm";
          *&__p[12] = 1024;
          *&__p[14] = 3074;
          *&__p[18] = 2080;
          *&__p[20] = v230;
          _os_log_impl(&dword_0, v229, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Device Hints: %s.", __p, 0x1Cu);
        }
      }

      if (SHIBYTE(v1079.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1079.__r_.__value_.__l.__data_);
      }

      CFRelease(v204);
      CFRelease(v204);
    }
  }

  if (!*a3)
  {
    v934 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v934, "Could not construct");
  }

  sub_4A1E0(__p, *a3, "disallowed ports");
  if (__p[8] == 1)
  {
    v231 = *__p;
    if (*__p)
    {
      if (v1051)
      {
        v232 = sub_5544(2);
        v233 = sub_5544(35);
        v234 = 0;
        buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
        v235 = *(v232 + 8);
        while (1)
        {
          v236 = *(&buf[0].__r_.__value_.__l.__data_ + v234);
          if (((v235 & v236) != 0) != ((*(v233 + 8) & v236) != 0))
          {
            break;
          }

          v234 += 4;
          if (v234 == 8)
          {
            goto LABEL_458;
          }
        }

        if ((v235 & v236) == 0)
        {
          v232 = v233;
        }

LABEL_458:
        v237 = *v232;
        v238 = v237;
        if (v237)
        {
          v239 = v237;
          if (os_log_type_enabled(v239, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3083;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v231;
            _os_log_impl(&dword_0, v239, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Disallowed Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      sub_27A4();
      theArray.__r_.__value_.__s.__data_[0] = (*(qword_6E94F8 + 16))();
      v240 = CFArrayGetCount(v231);
      v241 = CFArrayGetCount(v231);
      if (v240)
      {
        v242 = v241;
        for (j = 0; j != v240; ++j)
        {
          if (v242 == j)
          {
            break;
          }

          sub_A3B9C(v1075, v231, j);
          v244 = v1075[0].__r_.__value_.__r.__words[0];
          if (!v1075[0].__r_.__value_.__r.__words[0])
          {
            v852 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v852, "Could not construct");
          }

          v245 = sub_113A0(v1075[0].__r_.__value_.__l.__data_);
          if ((v245 & 0x100000000) == 0)
          {
            v847 = sub_5544(14);
            v848 = sub_468EC(1, *v847, *(v847 + 8));
            v849 = v848;
            if (v848)
            {
              v850 = v848;
              if (os_log_type_enabled(v850, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3094;
                _os_log_impl(&dword_0, v850, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationDisallowedPortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v851 = __cxa_allocate_exception(0x10uLL);
            *v851 = &off_6DDDD0;
            v851[2] = 1852797029;
          }

          v246 = v245;
          sub_2820();
          v247 = sub_3D90(v246);
          if (!v247)
          {
            v677 = sub_5544(14);
            v678 = sub_468EC(1, *v677, *(v677 + 8));
            v679 = v678;
            if (v678)
            {
              v680 = v678;
              if (os_log_type_enabled(v680, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3097;
                _os_log_impl(&dword_0, v680, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
              }
            }

            v681 = __cxa_allocate_exception(0x10uLL);
            *v681 = &off_6DDDD0;
            v681[2] = 560947818;
          }

          v248 = *(v247 + 96);
          if (v248 && (v249 = *(v247 + 88), atomic_fetch_add_explicit(&v248->__shared_weak_owners_, 1uLL, memory_order_relaxed), (v250 = std::__shared_weak_count::lock(v248)) != 0))
          {
            atomic_fetch_add_explicit(&v250->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            buf[0].__r_.__value_.__r.__words[0] = v249;
            buf[0].__r_.__value_.__l.__size_ = v250;
            sub_1A8C0(v250);
          }

          else
          {
            *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
          }

          sub_CB814(v1049, buf, buf);
          if (buf[0].__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_weak(buf[0].__r_.__value_.__l.__size_);
          }

          if (v248)
          {
            std::__shared_weak_count::__release_weak(v248);
          }

          CFRelease(v244);
        }
      }

      sub_210C50(&theArray);
      CFRelease(v231);
    }
  }

  sub_53E8(buf, "ignore ringer switch");
  v251 = sub_4A268(a3, buf);
  *v1048 = v251;
  *(v1048 + 4) = BYTE4(v251);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v1051 && *(a1 + 380) == 1)
  {
    v252 = sub_5544(2);
    v253 = sub_5544(35);
    v254 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v255 = *(v252 + 8);
    while (1)
    {
      v256 = *(&buf[0].__r_.__value_.__l.__data_ + v254);
      if (((v255 & v256) != 0) != ((*(v253 + 8) & v256) != 0))
      {
        break;
      }

      v254 += 4;
      if (v254 == 8)
      {
        goto LABEL_489;
      }
    }

    if ((v255 & v256) == 0)
    {
      v252 = v253;
    }

LABEL_489:
    v257 = *v252;
    v258 = v257;
    if (v257)
    {
      v259 = v257;
      if (os_log_type_enabled(v259, OS_LOG_TYPE_DEBUG))
      {
        if ((a1[95] & 1) == 0)
        {
          sub_1EC054();
        }

        v260 = "false";
        v261 = *v1048;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        if (v261 == 1)
        {
          v260 = "true";
        }

        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3109;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v260;
        _os_log_impl(&dword_0, v259, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Ignoring silent mode: %s.", buf, 0x1Cu);
      }
    }
  }

  if (!*a3)
  {
    v935 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v935, "Could not construct");
  }

  sub_4A1E0(__p, *a3, "aggregated ports");
  if (__p[8] == 1)
  {
    v262 = *__p;
    if (*__p)
    {
      if (v1051)
      {
        v263 = sub_5544(2);
        v264 = sub_5544(35);
        v265 = 0;
        buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
        v266 = *(v263 + 8);
        while (1)
        {
          v267 = *(&buf[0].__r_.__value_.__l.__data_ + v265);
          if (((v266 & v267) != 0) != ((*(v264 + 8) & v267) != 0))
          {
            break;
          }

          v265 += 4;
          if (v265 == 8)
          {
            goto LABEL_526;
          }
        }

        if ((v266 & v267) == 0)
        {
          v263 = v264;
        }

LABEL_526:
        v281 = *v263;
        v282 = v281;
        if (v281)
        {
          v283 = v281;
          if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3117;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v262;
            _os_log_impl(&dword_0, v283, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Aggregated Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v284 = CFArrayGetCount(v262);
      v285 = CFArrayGetCount(v262);
      if (v284)
      {
        v286 = v285;
        for (k = 0; k != v284; ++k)
        {
          if (v286 == k)
          {
            break;
          }

          sub_A3B9C(v1075, v262, k);
          v288 = v1075[0].__r_.__value_.__r.__words[0];
          if (!v1075[0].__r_.__value_.__r.__words[0])
          {
            v876 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v876, "Could not construct");
          }

          v289 = sub_113A0(v1075[0].__r_.__value_.__l.__data_);
          LODWORD(theArray.__r_.__value_.__l.__data_) = v289;
          theArray.__r_.__value_.__s.__data_[4] = BYTE4(v289);
          if ((v289 & 0x100000000) == 0)
          {
            v871 = sub_5544(14);
            v872 = sub_468EC(1, *v871, *(v871 + 8));
            v873 = v872;
            if (v872)
            {
              v874 = v872;
              if (os_log_type_enabled(v874, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3126;
                _os_log_impl(&dword_0, v874, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationAggregatedPortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v875 = __cxa_allocate_exception(0x10uLL);
            *v875 = &off_6DDDD0;
            v875[2] = 1852797029;
          }

          sub_75788((a1 + 142), v289, &theArray);
          CFRelease(v288);
        }
      }

      if (*__p)
      {
        CFRelease(*__p);
      }
    }
  }

  if (!*a3)
  {
    v936 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v936, "Could not construct");
  }

  sub_4A76C(__p, *a3, "deaggregated ports");
  if (__p[8] == 1)
  {
    v290 = *__p;
    if (*__p)
    {
      if (v1051)
      {
        v291 = sub_5544(2);
        v292 = sub_5544(35);
        v293 = 0;
        buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
        v294 = *(v291 + 8);
        while (1)
        {
          v295 = *(&buf[0].__r_.__value_.__l.__data_ + v293);
          if (((v294 & v295) != 0) != ((*(v292 + 8) & v295) != 0))
          {
            break;
          }

          v293 += 4;
          if (v293 == 8)
          {
            goto LABEL_549;
          }
        }

        if ((v294 & v295) == 0)
        {
          v291 = v292;
        }

LABEL_549:
        v296 = *v291;
        v297 = v296;
        if (v296)
        {
          v298 = v296;
          if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3138;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v290;
            _os_log_impl(&dword_0, v298, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Deaggregated Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v299 = CFArrayGetCount(v290);
      v300 = CFArrayGetCount(v290);
      if (v299)
      {
        v301 = v300;
        for (m = 0; m != v299; ++m)
        {
          if (v301 == m)
          {
            break;
          }

          sub_A3B9C(v1075, v290, m);
          v303 = v1075[0].__r_.__value_.__r.__words[0];
          if (!v1075[0].__r_.__value_.__r.__words[0])
          {
            v882 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v882, "Could not construct");
          }

          v304 = sub_113A0(v1075[0].__r_.__value_.__l.__data_);
          LODWORD(theArray.__r_.__value_.__l.__data_) = v304;
          theArray.__r_.__value_.__s.__data_[4] = BYTE4(v304);
          if ((v304 & 0x100000000) == 0)
          {
            v877 = sub_5544(14);
            v878 = sub_468EC(1, *v877, *(v877 + 8));
            v879 = v878;
            if (v878)
            {
              v880 = v878;
              if (os_log_type_enabled(v880, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3147;
                _os_log_impl(&dword_0, v880, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationDeaggregatedPortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v881 = __cxa_allocate_exception(0x10uLL);
            *v881 = &off_6DDDD0;
            v881[2] = 1852797029;
          }

          sub_75788((a1 + 148), v304, &theArray);
          CFRelease(v303);
        }
      }

      if (*__p)
      {
        CFRelease(*__p);
      }
    }
  }

  if (!*a3)
  {
    v937 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v937, "Could not construct");
  }

  LODWORD(v305) = *a1;
  if (sub_43D7C(*a3, "category"))
  {
    if (*a3)
    {
      v306 = sub_4A7F4(*a3, "category");
      if (v306)
      {
        v305 = sub_4A8F8(v306);
        if (v1051)
        {
          v307 = sub_5544(2);
          v308 = sub_5544(35);
          v309 = 0;
          buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
          v310 = *(v307 + 8);
          while (1)
          {
            v311 = *(&buf[0].__r_.__value_.__l.__data_ + v309);
            if (((v310 & v311) != 0) != ((*(v308 + 8) & v311) != 0))
            {
              break;
            }

            v309 += 4;
            if (v309 == 8)
            {
              goto LABEL_573;
            }
          }

          if ((v310 & v311) == 0)
          {
            v307 = v308;
          }

LABEL_573:
          v312 = *v307;
          v313 = v312;
          if (v312)
          {
            v314 = v312;
            if (os_log_type_enabled(v314, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__p, v305);
              v315 = __p[23] >= 0 ? __p : *__p;
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3162;
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
              *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v315;
              _os_log_impl(&dword_0, v314, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Category: %s.", buf, 0x1Cu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }
          }
        }

        goto LABEL_582;
      }

      v974 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v974, "Could not find item");
    }

    else
    {
      v974 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v974, "Could not construct");
    }
  }

LABEL_582:
  v316 = *a3;
  if (!*a3)
  {
    v938 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v938, "Could not construct");
  }

  LODWORD(v317) = a1[1];
  v318 = CFStringCreateWithBytes(0, "mode", 4, 0x8000100u, 0);
  buf[0].__r_.__value_.__r.__words[0] = v318;
  if (!v318)
  {
    v939 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v939, "Could not construct");
  }

  v319 = CFDictionaryContainsKey(v316, v318);
  if (buf[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(buf[0].__r_.__value_.__l.__data_);
  }

  if (v319)
  {
    if (*a3)
    {
      v320 = sub_47FE0(*a3, "mode");
      if (v320)
      {
        v317 = sub_4A8F8(v320);
        if (v1051)
        {
          v321 = sub_5544(2);
          v322 = sub_5544(35);
          v323 = 0;
          buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
          v324 = *(v321 + 8);
          while (1)
          {
            v325 = *(&buf[0].__r_.__value_.__l.__data_ + v323);
            if (((v324 & v325) != 0) != ((*(v322 + 8) & v325) != 0))
            {
              break;
            }

            v323 += 4;
            if (v323 == 8)
            {
              goto LABEL_596;
            }
          }

          if ((v324 & v325) == 0)
          {
            v321 = v322;
          }

LABEL_596:
          v326 = *v321;
          v327 = v326;
          if (v326)
          {
            v328 = v326;
            if (os_log_type_enabled(v328, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__p, v317);
              v329 = __p[23] >= 0 ? __p : *__p;
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3171;
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
              *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v329;
              _os_log_impl(&dword_0, v328, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Mode: %s.", buf, 0x1Cu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }
          }
        }

        goto LABEL_605;
      }

      v960 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v960, "Could not find item");
    }

    else
    {
      v960 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v960, "Could not construct");
    }
  }

LABEL_605:
  if (!*a3)
  {
    v940 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v940, "Could not construct");
  }

  v330 = sub_4A994(*a3, "aggregate device clock device");
  if (v330)
  {
    v331 = v330;
    CFRetain(v330);
    v332 = CFGetTypeID(v331);
    if (v332 == CFStringGetTypeID())
    {
      *__p = v331;
      __p[8] = 1;
      if (v1051)
      {
        v333 = sub_5544(2);
        v334 = sub_5544(35);
        v335 = 0;
        buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
        v336 = *(v333 + 8);
        while (1)
        {
          v337 = *(&buf[0].__r_.__value_.__l.__data_ + v335);
          if (((v336 & v337) != 0) != ((*(v334 + 8) & v337) != 0))
          {
            break;
          }

          v335 += 4;
          if (v335 == 8)
          {
            goto LABEL_616;
          }
        }

        if ((v336 & v337) == 0)
        {
          v333 = v334;
        }

LABEL_616:
        v338 = *v333;
        v339 = v338;
        if (v338)
        {
          v340 = v338;
          if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3180;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v331;
            _os_log_impl(&dword_0, v340, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Aggregate Clock Device: %@", buf, 0x1Cu);
          }
        }
      }

      sub_125D8(buf, v331);
      v341 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      v342 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v341 = buf[0].__r_.__value_.__l.__size_;
      }

      if (v341)
      {
        if (*(a1 + 416) == 1)
        {
          std::string::operator=((a1 + 98), buf);
        }

        else
        {
          if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
          {
            sub_54A0(a1 + 392, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
          }

          else
          {
            *(a1 + 98) = buf[0];
          }

          *(a1 + 416) = 1;
        }

        v342 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      }

      if (v342 < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    CFRelease(v331);
  }

  if ((a1[104] & 1) == 0 && v317 == 1768057203)
  {
    sub_53E8(buf, "NetworkUplinkClock_UID");
    if (*(a1 + 416) == 1)
    {
      if (*(a1 + 415) < 0)
      {
        operator delete(*(a1 + 49));
      }

      *(a1 + 98) = buf[0];
    }

    else
    {
      *(a1 + 98) = buf[0];
      *(a1 + 416) = 1;
    }
  }

  if (!*a3)
  {
    v941 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v941, "Could not construct");
  }

  v369 = sub_11094(*a3, "optional output mode");
  if (v369 && (v370 = sub_113A0(v369), (v370 & 0x100000000) != 0))
  {
    v373 = v370;
    if (v1051)
    {
      v374 = sub_5544(2);
      v375 = sub_5544(35);
      v376 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v377 = *(v374 + 8);
      while (1)
      {
        v378 = *(&buf[0].__r_.__value_.__l.__data_ + v376);
        if (((v377 & v378) != 0) != ((*(v375 + 8) & v378) != 0))
        {
          break;
        }

        v376 += 4;
        if (v376 == 8)
        {
          goto LABEL_702;
        }
      }

      if ((v377 & v378) == 0)
      {
        v374 = v375;
      }

LABEL_702:
      v379 = *v374;
      v380 = v379;
      if (v379)
      {
        v381 = v379;
        if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(__p, v373);
          v382 = __p[23] >= 0 ? __p : *__p;
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 2780;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v382;
          _os_log_impl(&dword_0, v381, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Optional Output Mode: %s", buf, 0x1Cu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }
    }

    v372 = v373 & 0xFFFFFF00;
    v371 = 0x100000000;
  }

  else if (v1040)
  {
    v371 = 0x100000000;
    v372 = 1768776704;
    LOBYTE(v373) = 102;
  }

  else
  {
    v371 = 0;
    LOBYTE(v373) = 0;
    v372 = 0;
  }

  v1063[0] = __PAIR64__(v317, v305);
  v1063[1] = v372 | v373 | v371;
  if (!*a3)
  {
    v942 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v942, "Could not construct");
  }

  sub_4AA98(buf, *a3);
  if (buf[0].__r_.__value_.__s.__data_[8] != 1 || (v383 = buf[0].__r_.__value_.__r.__words[0]) == 0)
  {
    v1062 = 0;
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 1852796517;
    buf[0].__r_.__value_.__l.__size_ = 0;
    *&buf[0].__r_.__value_.__r.__words[2] = 0u;
    buf[1].__r_.__value_.__l.__size_ = 0x756E64656175746FLL;
    goto LABEL_722;
  }

  CFRetain(buf[0].__r_.__value_.__l.__data_);
  v1062 = v383;
  CFRelease(v383);
  v384 = sub_10A424(v1063, &v1062);
  v385 = 1635087471;
  if (v384 != 1635087471)
  {
    sub_10984C(__p, v383, v384);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = v384;
    if ((__p[23] & 0x80000000) != 0)
    {
      sub_54A0(&buf[0].__r_.__value_.__s.__data_[8], *__p, *&__p[8]);
      buf[1].__r_.__value_.__l.__size_ = 0x756E64656175746FLL;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      *&buf[0].__r_.__value_.__r.__words[1] = *__p;
      buf[1].__r_.__value_.__r.__words[0] = *&__p[16];
      buf[1].__r_.__value_.__l.__size_ = 0x756E64656175746FLL;
    }

    if (!sub_10A958(v384))
    {
      goto LABEL_722;
    }

    v402 = v1062;
    if (v1062)
    {
      v403 = 1970168933;
      if (CFDictionaryGetCount(v1062))
      {
        v404 = sub_148DA8(v402, "activation call direction");
        if (v404)
        {
          v404 = sub_113A0(v404);
        }

        if ((v404 & 0x100000000) != 0)
        {
          v403 = v404;
        }

        else
        {
          v403 = 1970168933;
        }
      }

      HIDWORD(buf[1].__r_.__value_.__r.__words[1]) = v403;
      if (!CFDictionaryGetCount(v402))
      {
        goto LABEL_761;
      }

      v405 = CFStringCreateWithBytes(0, "activation accessibility preference", 35, 0x8000100u, 0);
      *__p = v405;
      if (!v405)
      {
        v1019 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v1019, "Could not construct");
      }

      v406 = CFDictionaryGetValue(v402, v405);
      if (*__p)
      {
        CFRelease(*__p);
      }

      if (v406)
      {
        v407 = sub_113A0(v406);
        if ((v407 & 0x100000000) != 0)
        {
          v385 = v407;
LABEL_761:
          LODWORD(buf[1].__r_.__value_.__r.__words[1]) = v385;
          goto LABEL_722;
        }
      }

      v1022 = sub_5544(14);
      v1023 = *v1022;
      if (*v1022 && os_log_type_enabled(*v1022, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VirtualAudio_Utilities.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 520;
        _os_log_impl(&dword_0, v1023, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Route activation description does not contain accessibility preference", __p, 0x12u);
      }

      v1013 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v1013, "Route activation description does not contain accessibility preference");
    }

    else
    {
      v1011 = sub_5544(14);
      v1012 = *v1011;
      if (*v1011 && os_log_type_enabled(*v1011, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VirtualAudio_Utilities.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 528;
        _os_log_impl(&dword_0, v1012, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
      }

      v1013 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v1013, "Precondition failure.");
    }
  }

  v386 = a2;
  v387 = *(a2 + 240);
  if (v387 == 1852796517)
  {
    v388 = sub_5544(2);
    v389 = sub_5544(35);
    v390 = 0;
    *__p = 0x100000002;
    v391 = *(v388 + 8);
    while (1)
    {
      v392 = *&__p[v390];
      if (((v391 & v392) != 0) != ((*(v389 + 8) & v392) != 0))
      {
        break;
      }

      v390 += 4;
      if (v390 == 8)
      {
        goto LABEL_785;
      }
    }

    if ((v391 & v392) == 0)
    {
      v388 = v389;
    }

LABEL_785:
    v419 = *v388;
    v420 = v419;
    if (v419)
    {
      v421 = v419;
      if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v1075, 1635087471);
        v422 = (v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1075 : v1075[0].__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "VirtualAudio_PlugIn.mm";
        *&__p[12] = 1024;
        *&__p[14] = 3660;
        *&__p[18] = 2080;
        *&__p[20] = v422;
        _os_log_impl(&dword_0, v421, OS_LOG_TYPE_ERROR, "%25s:%-5d Current trigger is '%s', but previous trigger is unknown", __p, 0x1Cu);
        if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1075[0].__r_.__value_.__l.__data_);
        }
      }
    }

    v386 = a2;
    v387 = *(a2 + 240);
  }

  LODWORD(buf[0].__r_.__value_.__l.__data_) = v387;
  if (*(v386 + 271) < 0)
  {
    sub_54A0(&buf[0].__r_.__value_.__s.__data_[8], *(v386 + 248), *(v386 + 256));
  }

  else
  {
    *&buf[0].__r_.__value_.__r.__words[1] = *(v386 + 248);
    buf[1].__r_.__value_.__r.__words[0] = *(v386 + 264);
  }

  buf[1].__r_.__value_.__l.__size_ = *(a2 + 272);
LABEL_722:
  a1[42] = buf[0].__r_.__value_.__l.__data_;
  if (*(a1 + 199) < 0)
  {
    operator delete(*v1034);
  }

  *v1034 = *&buf[0].__r_.__value_.__r.__words[1];
  *(a1 + 12) = *&buf[1].__r_.__value_.__l.__data_;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v393 = *a3;
    if (!*a3)
    {
      v975 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v975, "Could not construct");
    }

    buf[0].__r_.__value_.__r.__words[0] = 0;
    sub_4AB28(v1075, v393, "persistent route", buf);
    if (buf[0].__r_.__value_.__r.__words[0])
    {
      CFRelease(buf[0].__r_.__value_.__l.__data_);
    }

    v394 = v1075[0].__r_.__value_.__r.__words[0];
    if (v1075[0].__r_.__value_.__r.__words[0])
    {
      sub_23ECB0(buf, v1075);
      sub_12790(v1054);
      *(a1 + 52) = buf[0];
      memset(buf, 0, 24);
      sub_12790((a1 + 58));
      *(a1 + 58) = buf[1];
      memset(&buf[1], 0, sizeof(std::string));
      sub_23BD00((a1 + 64), &v1081);
      sub_23BD00((a1 + 74), &v1086);
      sub_23BD00((a1 + 84), &v1089);
      sub_4B0A0(v1090);
      v395 = v1089;
      v1089 = 0;
      if (v395)
      {
        operator delete(v395);
      }

      sub_4B0A0(v1088);
      v396 = v1086;
      v1086 = 0;
      if (v396)
      {
        operator delete(v396);
      }

      sub_4B0A0(v1083);
      v397 = v1081;
      v1081 = 0;
      if (v397)
      {
        operator delete(v397);
      }

      *__p = &buf[1];
      sub_11C50(__p);
      *__p = buf;
      sub_11C50(__p);
      if (!*a3)
      {
        v991 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v991, "Could not construct");
      }

      if (CFDictionaryGetCount(*a3) == 1)
      {
        sub_7FF98(buf, (*(a2 + 112) + 240));
        v398 = *(a1 + 26);
        v399 = *(a1 + 27);
        v400 = buf[0].__r_.__value_.__r.__words[0];
        if (v399 - v398 != buf[0].__r_.__value_.__l.__size_ - buf[0].__r_.__value_.__r.__words[0])
        {
          goto LABEL_767;
        }

        while (v398 != v399)
        {
          v401 = sub_1DC61C(v398, v400);
          if (!v401)
          {
            goto LABEL_768;
          }

          v398 += 24;
          v400 += 3;
        }

        v408 = *(a1 + 29);
        v409 = *(a1 + 30);
        v410 = buf[1].__r_.__value_.__l.__data_;
        if (v409 - v408 == buf[1].__r_.__value_.__l.__size_ - buf[1].__r_.__value_.__r.__words[0])
        {
          if (v408 == v409)
          {
            LOBYTE(v401) = 1;
          }

          else
          {
            do
            {
              v401 = sub_1DC61C(v408, v410);
              if (!v401)
              {
                break;
              }

              v408 += 24;
              v410 += 24;
            }

            while (v408 != v409);
          }
        }

        else
        {
LABEL_767:
          LOBYTE(v401) = 0;
        }

LABEL_768:
        *(a1 + 424) = v401;
        sub_4B0A0(v1090);
        v411 = v1089;
        v1089 = 0;
        if (v411)
        {
          operator delete(v411);
        }

        sub_4B0A0(v1088);
        v412 = v1086;
        v1086 = 0;
        if (v412)
        {
          operator delete(v412);
        }

        sub_4B0A0(v1083);
        v413 = v1081;
        v1081 = 0;
        if (v413)
        {
          operator delete(v413);
        }

        *__p = &buf[1];
        sub_11C50(__p);
        *__p = buf;
        sub_11C50(__p);
      }

      else
      {
        *(a1 + 424) = 0;
      }

      if (v1051 && (*(a1 + 35) || *(a1 + 40) || *(a1 + 45)))
      {
        v414 = sub_5544(2);
        v415 = sub_5544(35);
        v416 = 0;
        buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
        v417 = *(v414 + 8);
        while (1)
        {
          v418 = *(&buf[0].__r_.__value_.__l.__data_ + v416);
          if (((v417 & v418) != 0) != ((*(v415 + 8) & v418) != 0))
          {
            break;
          }

          v416 += 4;
          if (v416 == 8)
          {
            goto LABEL_800;
          }
        }

        if ((v417 & v418) == 0)
        {
          v414 = v415;
        }

LABEL_800:
        v423 = *v414;
        v424 = v423;
        if (v423)
        {
          v425 = v423;
          if (os_log_type_enabled(v425, OS_LOG_TYPE_DEFAULT))
          {
            sub_2AB344(__p, v1054);
            v426 = __p[23] >= 0 ? __p : *__p;
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3223;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v426;
            _os_log_impl(&dword_0, v425, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Persistent route info: %s.", buf, 0x1Cu);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }
      }

      CFRelease(v394);
    }
  }

  if (!*a3)
  {
    v943 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v943, "Could not construct");
  }

  v427 = (v1048 + 107);
  v428 = sub_11094(*a3, "echo cancelled input");
  if (v428)
  {
    v428 = sub_113A0(v428);
  }

  if ((v428 & 0x100000000) != 0)
  {
    v429 = v428;
  }

  else
  {
    v429 = 0;
  }

  *v427 = v429;
  if (v1051)
  {
    v430 = sub_5544(2);
    v431 = sub_5544(35);
    v432 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v433 = *(v430 + 8);
    while (1)
    {
      v434 = *(&buf[0].__r_.__value_.__l.__data_ + v432);
      if (((v433 & v434) != 0) != ((*(v431 + 8) & v434) != 0))
      {
        break;
      }

      v432 += 4;
      if (v432 == 8)
      {
        goto LABEL_823;
      }
    }

    if ((v433 & v434) == 0)
    {
      v430 = v431;
    }

LABEL_823:
    v435 = *v430;
    v436 = v435;
    if (v435)
    {
      v437 = v435;
      if (os_log_type_enabled(v437, OS_LOG_TYPE_DEFAULT))
      {
        v438 = *v427;
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3231;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v438;
        _os_log_impl(&dword_0, v437, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Echo cancelled input: %u", buf, 0x18u);
      }
    }
  }

  v440 = *(a1 + 624) == 1 && (v439 = *(a1 + 77)) != 0 && CFDictionaryGetCount(v439) != 0;
  sub_43E6C(__p, v1063, v440, *v427);
  *a1 = *__p;
  if (v1044 != &__p[16])
  {
    sub_4ABC8(v1044, *&__p[16], &__p[24]);
  }

  if (!*a3)
  {
    v944 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v944, "Could not construct");
  }

  sub_4A1E0(&theArray, *a3, "overridden ports");
  v441 = theArray.__r_.__value_.__r.__words[0];
  if (theArray.__r_.__value_.__r.__words[0])
  {
    v442 = theArray.__r_.__value_.__s.__data_[8];
  }

  else
  {
    v442 = 0;
  }

  if (v442 != 1)
  {
    if (*a3)
    {
      if (CFDictionaryGetCount(*a3) != 1)
      {
        goto LABEL_886;
      }

      v448 = *a3;
      if (*a3)
      {
        v449 = CFStringCreateWithBytes(0, "voice processing configuration", 30, 0x8000100u, 0);
        buf[0].__r_.__value_.__r.__words[0] = v449;
        if (!v449)
        {
          v998 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v998, "Could not construct");
        }

        v450 = CFDictionaryContainsKey(v448, v449);
        if (buf[0].__r_.__value_.__r.__words[0])
        {
          CFRelease(buf[0].__r_.__value_.__l.__data_);
        }

        if (v450 && !sub_3A70B4(a1))
        {
          v451 = *(a2 + 112);
          v1075[0].__r_.__value_.__r.__words[0] = v1075;
          v1075[0].__r_.__value_.__l.__size_ = v1075;
          v1075[0].__r_.__value_.__r.__words[2] = 0;
          sub_1CA268(buf, v451, v1075);
          sub_4B0F4(*(a1 + 3));
          v452 = buf[0].__r_.__value_.__l.__size_;
          *(a1 + 2) = buf[0].__r_.__value_.__r.__words[0];
          *(a1 + 3) = v452;
          v453 = buf[0].__r_.__value_.__r.__words[2];
          *(a1 + 4) = *(&buf[0].__r_.__value_.__l + 2);
          if (v453)
          {
            v452[2] = v1030;
            buf[0].__r_.__value_.__r.__words[0] = &buf[0].__r_.__value_.__l.__size_;
            *&buf[0].__r_.__value_.__r.__words[1] = 0uLL;
            v452 = 0;
          }

          else
          {
            *v1043 = v1030;
          }

          sub_4B0F4(v452);
          sub_65310(v1075);
        }

        goto LABEL_886;
      }

      v979 = __cxa_allocate_exception(0x10uLL);
      v980 = &std::runtime_error::~runtime_error;
      std::runtime_error::runtime_error(v979, "Could not construct");
    }

    else
    {
      v976 = sub_5544(14);
      v977 = sub_468EC(1, *v976, *(v976 + 8));
      v978 = v977;
      if (v977 && os_log_type_enabled(v977, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 944;
        _os_log_impl(&dword_0, v978, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v979 = __cxa_allocate_exception(0x10uLL);
      v980 = &std::logic_error::~logic_error;
      std::logic_error::logic_error(v979, "Precondition failure.");
    }

    __cxa_throw(v979, v981, v980);
  }

  if (v1051)
  {
    v443 = sub_5544(2);
    v444 = sub_5544(35);
    v445 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v446 = *(v443 + 8);
    while (1)
    {
      v447 = *(&buf[0].__r_.__value_.__l.__data_ + v445);
      if (((v446 & v447) != 0) != ((*(v444 + 8) & v447) != 0))
      {
        break;
      }

      v445 += 4;
      if (v445 == 8)
      {
        goto LABEL_856;
      }
    }

    if ((v446 & v447) == 0)
    {
      v443 = v444;
    }

LABEL_856:
    v454 = *v443;
    v455 = v454;
    if (v454)
    {
      v456 = v454;
      if (os_log_type_enabled(v456, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3247;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v441;
        _os_log_impl(&dword_0, v456, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Overridden Ports: %@.", buf, 0x1Cu);
      }
    }
  }

  sub_27A4();
  cf.__r_.__value_.__s.__data_[0] = (*(qword_6E94F8 + 16))();
  v457 = CFArrayGetCount(v441);
  v458 = CFArrayGetCount(v441);
  if (v457)
  {
    v459 = v458;
    for (n = 0; n != v457; ++n)
    {
      if (n == v459)
      {
        break;
      }

      sub_A3B9C(v1075, v441, n);
      v461 = v1075[0].__r_.__value_.__r.__words[0];
      if (!v1075[0].__r_.__value_.__r.__words[0])
      {
        v858 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v858, "Could not construct");
      }

      v462 = sub_113A0(v1075[0].__r_.__value_.__l.__data_);
      if ((v462 & 0x100000000) == 0)
      {
        v853 = sub_5544(14);
        v854 = sub_468EC(1, *v853, *(v853 + 8));
        v855 = v854;
        if (v854)
        {
          v856 = v854;
          if (os_log_type_enabled(v856, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3258;
            _os_log_impl(&dword_0, v856, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
          }
        }

        v857 = __cxa_allocate_exception(0x10uLL);
        *v857 = &off_6DDDD0;
        v857[2] = 1852797029;
      }

      v463 = v462;
      sub_2820();
      v464 = sub_3D90(v463);
      v465 = v464;
      if (!v464)
      {
        v682 = sub_5544(14);
        v683 = sub_468EC(1, *v682, *(v682 + 8));
        v684 = v683;
        if (v683)
        {
          v685 = v683;
          if (os_log_type_enabled(v685, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3261;
            _os_log_impl(&dword_0, v685, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
          }
        }

        v686 = __cxa_allocate_exception(0x10uLL);
        *v686 = &off_6DDDD0;
        v686[2] = 560947818;
      }

      v466 = *(a1 + 65);
      if (v466 != v1056)
      {
        while (*(v466 + 4) != v464)
        {
          v467 = *(v466 + 1);
          if (v467)
          {
            do
            {
              v468 = v467;
              v467 = *v467;
            }

            while (v467);
          }

          else
          {
            do
            {
              v468 = *(v466 + 2);
              v145 = *v468 == v466;
              v466 = v468;
            }

            while (!v145);
          }

          v466 = v468;
          if (v468 == v1056)
          {
            goto LABEL_877;
          }
        }

        if (v466 != v1056)
        {
          v914 = sub_5544(14);
          v915 = sub_468EC(1, *v914, *(v914 + 8));
          v916 = v915;
          if (v915)
          {
            v917 = v915;
            if (os_log_type_enabled(v917, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3266;
              _os_log_impl(&dword_0, v917, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Invalid use of route configuration! Cannot override to a port that is set as unroutable!", buf, 0x12u);
            }
          }

          v918 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v918, "Invalid use of route configuration! Cannot override to a port that is set as unroutable!");
        }
      }

LABEL_877:
      if (!sub_3A70B4(a1))
      {
        v469 = *(v465 + 96);
        buf[0].__r_.__value_.__r.__words[0] = *(v465 + 88);
        buf[0].__r_.__value_.__l.__size_ = v469;
        if (v469)
        {
          atomic_fetch_add_explicit(&v469->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_842C0(v1043, buf, buf);
        if (v469)
        {
          std::__shared_weak_count::__release_weak(v469);
        }
      }

      CFRelease(v461);
    }
  }

  sub_210C50(&cf);
  CFRelease(v441);
LABEL_886:
  if (!*a3)
  {
    v945 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v945, "Could not construct");
  }

  if (sub_3A7260(*a3))
  {
    if (!*a3)
    {
      v982 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v982, "Could not construct");
    }

    v470 = sub_11094(*a3, "user preferred input");
    if (v470)
    {
      v471 = v470;
      CFRetain(v470);
      v472 = CFGetTypeID(v471);
      if (v472 == CFNumberGetTypeID())
      {
        v1075[0].__r_.__value_.__r.__words[0] = v471;
        v1075[0].__r_.__value_.__s.__data_[8] = 1;
        if (v1051)
        {
          v473 = sub_5544(2);
          v474 = sub_5544(35);
          v475 = 0;
          buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
          v476 = *(v473 + 8);
          while (1)
          {
            v477 = *(&buf[0].__r_.__value_.__l.__data_ + v475);
            if (((v476 & v477) != 0) != ((*(v474 + 8) & v477) != 0))
            {
              break;
            }

            v475 += 4;
            if (v475 == 8)
            {
              goto LABEL_911;
            }
          }

          if ((v476 & v477) == 0)
          {
            v473 = v474;
          }

LABEL_911:
          v486 = *v473;
          v487 = v486;
          if (v486)
          {
            v488 = v486;
            if (os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3289;
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
              *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v471;
              _os_log_impl(&dword_0, v488, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - User Preferred Ports: %@", buf, 0x1Cu);
            }
          }
        }

        v489 = sub_113A0(v471);
        if ((v489 & 0x100000000) == 0)
        {
          v1000 = sub_5544(14);
          v1001 = sub_468EC(1, *v1000, *(v1000 + 8));
          v1002 = v1001;
          if (v1001)
          {
            v1003 = v1001;
            if (os_log_type_enabled(v1003, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3293;
              _os_log_impl(&dword_0, v1003, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Invalid port ID in  kVirtualAudioPlugInRouteConfigurationUserPreferredPortKey", buf, 0x12u);
            }
          }

          v1004 = __cxa_allocate_exception(0x10uLL);
          *v1004 = &off_6DDDD0;
          v1004[2] = 1852797029;
        }

        v490 = v489;
        sub_2820();
        v491 = sub_3D90(v490);
        v492 = v491;
        if (!v491)
        {
          v832 = sub_5544(14);
          v833 = sub_468EC(1, *v832, *(v832 + 8));
          v834 = v833;
          if (v833)
          {
            v835 = v833;
            if (os_log_type_enabled(v835, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3297;
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
              HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v490;
              _os_log_impl(&dword_0, v835, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [vaPort is NULL]: No virtual audio port object with the specified ID: %u", buf, 0x18u);
            }
          }

          v836 = __cxa_allocate_exception(0x10uLL);
          *v836 = &off_6DDDD0;
          v836[2] = 560947818;
        }

        v493 = *(a1 + 65);
        if (v493 != v1056)
        {
          while (*(v493 + 4) != v491)
          {
            v494 = *(v493 + 1);
            if (v494)
            {
              do
              {
                v495 = v494;
                v494 = *v494;
              }

              while (v494);
            }

            else
            {
              do
              {
                v495 = *(v493 + 2);
                v145 = *v495 == v493;
                v493 = v495;
              }

              while (!v145);
            }

            v493 = v495;
            if (v495 == v1056)
            {
              goto LABEL_928;
            }
          }

          if (v493 != v1056)
          {
            v1014 = sub_5544(14);
            v1015 = sub_468EC(1, *v1014, *(v1014 + 8));
            v1016 = v1015;
            if (v1015)
            {
              v1017 = v1015;
              if (os_log_type_enabled(v1017, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3300;
                WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
                HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v490;
                _os_log_impl(&dword_0, v1017, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Invalid use of route configuration. Cannot override to a port (%u) that is set as unroutable", buf, 0x18u);
              }
            }

            v1018 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v1018, "Invalid use of route configuration. Cannot override to a port (%u) that is set as unroutable");
          }
        }

LABEL_928:
        v496 = *(v491 + 96);
        if (v496)
        {
          v497 = *(v491 + 88);
          atomic_fetch_add_explicit(&v496->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v498 = std::__shared_weak_count::lock(v496);
          std::__shared_weak_count::__release_weak(v496);
          if (v498)
          {
            if (v497 && (*(v497 + 184) & 1) != 0 && !sub_3A70B4(a1))
            {
              v499 = *(v492 + 88);
              v500 = *(v492 + 96);
              if (v500)
              {
                atomic_fetch_add_explicit(&v500->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v500->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v501 = *(a1 + 18);
              *(a1 + 17) = v499;
              *(a1 + 18) = v500;
              if (v501)
              {
                std::__shared_weak_count::__release_weak(v501);
              }

              if (v500)
              {
                std::__shared_weak_count::__release_weak(v500);
              }
            }

            sub_1A8C0(v498);
          }
        }

        goto LABEL_940;
      }

      CFRelease(v471);
    }

    v1075[0].__r_.__value_.__s.__data_[0] = 0;
    v1075[0].__r_.__value_.__s.__data_[8] = 0;
    if (v1051)
    {
      v478 = sub_5544(2);
      v479 = sub_5544(35);
      v480 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v481 = *(v478 + 8);
      while (1)
      {
        v482 = *(&buf[0].__r_.__value_.__l.__data_ + v480);
        if (((v481 & v482) != 0) != ((*(v479 + 8) & v482) != 0))
        {
          break;
        }

        v480 += 4;
        if (v480 == 8)
        {
          goto LABEL_904;
        }
      }

      if ((v481 & v482) == 0)
      {
        v478 = v479;
      }

LABEL_904:
      v483 = *v478;
      v484 = v483;
      if (v483)
      {
        v485 = v483;
        if (os_log_type_enabled(v485, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3311;
          _os_log_impl(&dword_0, v485, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Clearing User Preferred Ports.", buf, 0x12u);
        }
      }
    }

LABEL_940:
    *(a1 + 457) = v1035;
    if (v1075[0].__r_.__value_.__s.__data_[8] == 1 && v1075[0].__r_.__value_.__r.__words[0])
    {
      CFRelease(v1075[0].__r_.__value_.__l.__data_);
    }
  }

  v502 = (a1 + 174);
  if (v1040 && !*(a2 + 472))
  {
    sub_36DEB0((a1 + 174));
  }

  if (*v502)
  {
    *(a1 + 386) = 1;
    *(a1 + 387) = *(a1 + 700);
    if (*(a1 + 89))
    {
      sub_26AF78(v1049, a1 + 88, a1 + 88);
      v503 = *(a1 + 91);
      if (v503)
      {
        v504 = std::__shared_weak_count::lock(v503);
        if (v504)
        {
          v505 = v504;
          v506 = *(a1 + 90);
          if (v506)
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = *(v506 + 144);
            sub_75788(v1047, buf[0].__r_.__value_.__l.__data_, buf);
          }

          sub_1A8C0(v505);
        }
      }
    }

    if (*v502)
    {
      v507 = *sub_5544(2);
      v508 = v507;
      if (v507)
      {
        v509 = v507;
        if (os_log_type_enabled(v509, OS_LOG_TYPE_DEFAULT))
        {
          sub_D086C(v1075, v502);
          v510 = (v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1075 : v1075[0].__r_.__value_.__r.__words[0];
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3336;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v510;
          _os_log_impl(&dword_0, v509, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Colistening state: %s", buf, 0x1Cu);
          if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1075[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  if (!((a5 == 0) | (v1046 | v1035) & 1))
  {
    if (!*a3)
    {
      v983 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v983, "Could not construct");
    }

    v516 = sub_4A0DC(*a3, "studio mic input");
    if (v516)
    {
      v516 = sub_113A0(v516);
    }

    v517 = a1 + 114;
    *(a1 + 456) = BYTE4(v516) & (v516 != 0);
    if (v1051)
    {
      goto LABEL_981;
    }

    goto LABEL_996;
  }

  if (!v1051)
  {
    v518 = a1;
    v517 = a1 + 114;
    *(a1 + 456) = *(a2 + 560) != 0;
    a1[202] = (*(*(a2 + 112) + 472) & 0x1FFFFFFFFLL) == 0x172666172;
    goto LABEL_1007;
  }

  v511 = sub_5544(2);
  v512 = sub_5544(35);
  v513 = 0;
  buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
  v514 = *(v511 + 8);
  while (1)
  {
    v515 = *(&buf[0].__r_.__value_.__l.__data_ + v513);
    if (((v514 & v515) != 0) != ((*(v512 + 8) & v515) != 0))
    {
      break;
    }

    v513 += 4;
    if (v513 == 8)
    {
      goto LABEL_977;
    }
  }

  if ((v514 & v515) == 0)
  {
    v511 = v512;
  }

LABEL_977:
  v519 = *v511;
  v520 = v519;
  if (v519 && os_log_type_enabled(v519, OS_LOG_TYPE_DEFAULT))
  {
    v521 = *(a2 + 560);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
    *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3344;
    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v521;
    _os_log_impl(&dword_0, v520, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using cached studio mic input preference: %u", buf, 0x18u);
  }

  v517 = a1 + 114;
  *(a1 + 456) = *(a2 + 560) != 0;
LABEL_981:
  v522 = sub_5544(2);
  v523 = sub_5544(35);
  v524 = 0;
  buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
  v525 = *(v522 + 8);
  while (1)
  {
    v526 = *(&buf[0].__r_.__value_.__l.__data_ + v524);
    if (((v525 & v526) != 0) != ((*(v523 + 8) & v526) != 0))
    {
      break;
    }

    v524 += 4;
    if (v524 == 8)
    {
      goto LABEL_987;
    }
  }

  if ((v525 & v526) == 0)
  {
    v522 = v523;
  }

LABEL_987:
  v527 = *v522;
  v528 = v527;
  if (v527)
  {
    v529 = v527;
    if (os_log_type_enabled(v529, OS_LOG_TYPE_DEFAULT))
    {
      v530 = *v517;
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3353;
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v530;
      _os_log_impl(&dword_0, v529, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Prefer studio mic input: %u", buf, 0x18u);
    }
  }

  if (!((a5 == 0) | (v1046 | v1035) & 1))
  {
LABEL_996:
    if (!*a3)
    {
      v984 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v984, "Could not construct");
    }

    v538 = sub_43354(*a3, "far field input");
    if (v538)
    {
      v538 = sub_113A0(v538);
    }

    v532 = BYTE4(v538) & (v538 != 0);
    goto LABEL_1000;
  }

  v531 = *(*(a2 + 112) + 472) & 0x1FFFFFFFFLL;
  v532 = v531 == 0x172666172;
  v533 = sub_5544(2);
  v534 = sub_5544(35);
  v535 = 0;
  buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
  v536 = *(v533 + 8);
  while (1)
  {
    v537 = *(&buf[0].__r_.__value_.__l.__data_ + v535);
    if (((v536 & v537) != 0) != ((*(v534 + 8) & v537) != 0))
    {
      break;
    }

    v535 += 4;
    if (v535 == 8)
    {
      goto LABEL_1074;
    }
  }

  if ((v536 & v537) == 0)
  {
    v533 = v534;
  }

LABEL_1074:
  v571 = *v533;
  v572 = v571;
  if (v571 && os_log_type_enabled(v571, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
    *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3364;
    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v531 == 0x172666172;
    _os_log_impl(&dword_0, v572, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using cached far field preference: %u", buf, 0x18u);
  }

LABEL_1000:
  a1[202] = v532;
  if (v1051)
  {
    v539 = *sub_5544(2);
    v540 = v539;
    if (v539)
    {
      v541 = v539;
      if (os_log_type_enabled(v541, OS_LOG_TYPE_DEFAULT))
      {
        v542 = a1[202];
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3371;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v542;
        _os_log_impl(&dword_0, v541, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enable Far-Field Input on route: %u", buf, 0x18u);
      }
    }
  }

  v518 = a1;
LABEL_1007:
  v543 = (v1048 + 76);
  if (*(v518 + 624) == 1)
  {
    v544 = *(a1 + 77);
    if (v544)
    {
      if (CFDictionaryGetCount(v544))
      {
        if ((a1[156] & 1) == 0)
        {
          sub_1EC054();
        }

        v545 = *(a1 + 77);
        if (!v545)
        {
          v999 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v999, "Could not construct");
        }

        v546 = sub_4A994(v545, "vp client stereo chat enabled");
        if (v546)
        {
          v547 = sub_11DA8(v546);
          if (v547 >= 0x100u && (v547 & 1) != 0)
          {
            v548 = 1936090368;
            goto LABEL_1021;
          }
        }
      }
    }
  }

  if (_os_feature_enabled_impl() && (*v517 & 1) != 0)
  {
    v548 = 1920167168;
    v549 = 105;
    goto LABEL_1022;
  }

  if (a1[202])
  {
    v548 = 1919312128;
LABEL_1021:
    v549 = 114;
LABEL_1022:
    LOBYTE(v550) = 1;
LABEL_1023:
    *(v1048 + 308) = v550;
    *v543 = v548 | v549;
    if (v1051 && (v550 & 1) != 0)
    {
      v551 = sub_5544(2);
      v552 = sub_5544(35);
      v553 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v554 = *(v551 + 8);
      while (1)
      {
        v555 = *(&buf[0].__r_.__value_.__l.__data_ + v553);
        if (((v554 & v555) != 0) != ((*(v552 + 8) & v555) != 0))
        {
          break;
        }

        v553 += 4;
        if (v553 == 8)
        {
          goto LABEL_1038;
        }
      }

      if ((v554 & v555) == 0)
      {
        v551 = v552;
      }

LABEL_1038:
      v562 = *v551;
      v563 = v562;
      if (v562)
      {
        v564 = v562;
        if (os_log_type_enabled(v564, OS_LOG_TYPE_DEFAULT))
        {
          if ((a1[171] & 1) == 0)
          {
            sub_1EC054();
          }

          sub_22170(v1075, *v543);
          if ((v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v565 = v1075;
          }

          else
          {
            v565 = v1075[0].__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3411;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v565;
          _os_log_impl(&dword_0, v564, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device activation reason override: %s.", buf, 0x1Cu);
          if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1075[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  else
  {
    if (*(a1 + 457) != 1)
    {
      LOBYTE(v550) = 0;
      v549 = 0;
      v548 = 0;
      goto LABEL_1023;
    }

    v556 = *(*(a2 + 112) + 472);
    v550 = HIDWORD(v556);
    if (v1051)
    {
      v557 = sub_5544(2);
      v558 = sub_5544(35);
      v559 = 0;
      v548 = v556 & 0xFFFFFF00;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v560 = *(v557 + 8);
      while (1)
      {
        v561 = *(&buf[0].__r_.__value_.__l.__data_ + v559);
        if (((v560 & v561) != 0) != ((*(v558 + 8) & v561) != 0))
        {
          break;
        }

        v559 += 4;
        if (v559 == 8)
        {
          goto LABEL_1204;
        }
      }

      if ((v560 & v561) == 0)
      {
        v557 = v558;
      }

LABEL_1204:
      v646 = *v557;
      v647 = v646;
      if (v646)
      {
        v648 = v646;
        if (os_log_type_enabled(v648, OS_LOG_TYPE_DEFAULT))
        {
          if ((v556 & 0x100000000) != 0)
          {
            sub_22170(v1075, v556);
            if ((v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v649 = v1075;
            }

            else
            {
              v649 = v1075[0].__r_.__value_.__r.__words[0];
            }

            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3402;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v649;
            _os_log_impl(&dword_0, v648, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using routing manager's cached device activation reason: %s ", buf, 0x1Cu);
            if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v1075[0].__r_.__value_.__l.__data_);
            }
          }

          else
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3402;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "none";
            _os_log_impl(&dword_0, v648, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using routing manager's cached device activation reason: %s ", buf, 0x1Cu);
          }
        }
      }

      v549 = v556;
      goto LABEL_1023;
    }

    *v543 = v556;
    *(v1048 + 308) = BYTE4(v556);
  }

  if (!*a3)
  {
    v946 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v946, "Could not construct");
  }

  v566 = sub_4A994(*a3, "multichannel mode preferences");
  if (v566)
  {
    v567 = v566;
    CFRetain(v566);
    v568 = CFGetTypeID(v567);
    if (v568 == CFArrayGetTypeID())
    {
      v569 = *(a1 + 86);
      *(a1 + 86) = v567;
      CFRetain(v567);
      if (v569)
      {
        CFRelease(v569);
      }
    }

    CFRelease(v567);
  }

  if (!v1062)
  {
    goto LABEL_1079;
  }

  v570 = a1[42];
  if (!sub_C2448(v570))
  {
    if (v570 != 1768764005)
    {
      if (v570 == 1768780647)
      {
        goto LABEL_1064;
      }

      if (sub_10A958(v570))
      {
        sub_3A7418(a2, a1);
      }

      else if (v570 != 1852796517)
      {
        v837 = sub_5544(14);
        v838 = sub_468EC(1, *v837, *(v837 + 8));
        v839 = v838;
        if (v838)
        {
          v840 = v838;
          if (os_log_type_enabled(v840, OS_LOG_TYPE_ERROR))
          {
            sub_22170(v1075, a1[42]);
            v841 = (v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1075 : v1075[0].__r_.__value_.__r.__words[0];
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 4103;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v841;
            _os_log_impl(&dword_0, v840, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid route activation trigger - %s", buf, 0x1Cu);
            if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v1075[0].__r_.__value_.__l.__data_);
            }
          }
        }
      }

      goto LABEL_1079;
    }

LABEL_1067:
    sub_1C4454(v1044, 0x70726563u);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 1886613611;
    sub_75788(v1044, 0x7073706Bu, buf);
    goto LABEL_1079;
  }

  if (v570 == 1651795060 || v570 == 1751414371)
  {
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 1885892706;
    sub_75788(v1044, 0x70687062u, buf);
    v570 = a1[42];
LABEL_1066:
    if (v570 != 845504882)
    {
      goto LABEL_1064;
    }

    goto LABEL_1067;
  }

  if (v570 != 1752396914)
  {
    goto LABEL_1066;
  }

  if (a1[1] == 1987208039)
  {
    a1[1] = 1986556788;
  }

LABEL_1064:
  LODWORD(buf[0].__r_.__value_.__l.__data_) = 1886545251;
  sub_75788(v1044, 0x70726563u, buf);
LABEL_1079:
  if (!*a3)
  {
    v947 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v947, "Could not construct");
  }

  v573 = sub_4ADC8(*a3, "default to speaker");
  if (v573 >= 0x100u)
  {
    if (*a1 == 1668509810 || *a1 == 1668309362)
    {
      if (v573)
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 1886545251;
        sub_75788(v1044, 0x70726563u, buf);
      }
    }

    else
    {
      v574 = sub_5544(2);
      v575 = sub_5544(35);
      v576 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v577 = *(v574 + 8);
      while (1)
      {
        v578 = *(&buf[0].__r_.__value_.__l.__data_ + v576);
        if (((v577 & v578) != 0) != ((*(v575 + 8) & v578) != 0))
        {
          break;
        }

        v576 += 4;
        if (v576 == 8)
        {
          goto LABEL_1091;
        }
      }

      if ((v577 & v578) == 0)
      {
        v574 = v575;
      }

LABEL_1091:
      v579 = *v574;
      v580 = v579;
      if (v579)
      {
        v581 = v579;
        if (os_log_type_enabled(v581, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3444;
          _os_log_impl(&dword_0, v581, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationDefaultToSpeakerKey used with wrong category", buf, 0x12u);
        }
      }
    }
  }

  if (!*a3)
  {
    v948 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v948, "Could not construct");
  }

  v582 = sub_4A960(*a3, "disallow hfp");
  if (v582 >= 0x100u)
  {
    v583 = *a1;
    if (*a1 == 1668309362 || v583 == 1668509810 || v583 == 1668441443)
    {
      if (v582)
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 1886216820;
        sub_75788(v1044, 0x706D6274u, buf);
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 1885892706;
        sub_75788(v1044, 0x70687062u, buf);
      }
    }

    else
    {
      v584 = sub_5544(2);
      v585 = sub_5544(35);
      v586 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v587 = *(v584 + 8);
      while (1)
      {
        v588 = *(&buf[0].__r_.__value_.__l.__data_ + v586);
        if (((v587 & v588) != 0) != ((*(v585 + 8) & v588) != 0))
        {
          break;
        }

        v586 += 4;
        if (v586 == 8)
        {
          goto LABEL_1109;
        }
      }

      if ((v587 & v588) == 0)
      {
        v584 = v585;
      }

LABEL_1109:
      v589 = *v584;
      v590 = v589;
      if (v589)
      {
        v591 = v589;
        if (os_log_type_enabled(v591, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3463;
          _os_log_impl(&dword_0, v591, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationDisallowHFPKey used with wrong category", buf, 0x12u);
        }
      }
    }
  }

  sub_53E8(buf, "decoupled input/output");
  v592 = sub_4A268(a3, buf);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (HIDWORD(v592))
  {
    if (!v592)
    {
LABEL_1142:
      v593 = 1668248944;
      goto LABEL_1143;
    }

    v595 = *a1;
    v594 = a1[1];
    if (v595 != 1667330668 && v595 != 1668309362)
    {
      v1005 = sub_5544(14);
      v1006 = sub_468EC(1, *v1005, *(v1005 + 8));
      v1007 = v1006;
      if (v1006)
      {
        v1008 = v1006;
        if (os_log_type_enabled(v1008, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v1075, v595);
          v1009 = (v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1075 : v1075[0].__r_.__value_.__r.__words[0];
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3479;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v1009;
          _os_log_impl(&dword_0, v1008, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInRouteConfigurationDecoupledInputOutputKey can only be true when category is kVirtualAudioPlugInRoutingCategoryPlayAndRecord  or kVirtualAudioPlugInRoutingCategoryEARCLoopback; currently requested category is %s.", buf, 0x1Cu);
          if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1075[0].__r_.__value_.__l.__data_);
          }
        }
      }

      v1010 = __cxa_allocate_exception(0x10uLL);
      *v1010 = &off_6DDDD0;
      v1010[2] = 1852797029;
    }

    if (v594 <= 1987077986)
    {
      if (v594 != 1768057203)
      {
        v596 = 1919776355;
LABEL_1129:
        v593 = 1684366192;
        if (v594 != v596)
        {
LABEL_1143:
          a1[40] = v593;
          goto LABEL_1144;
        }
      }
    }

    else if (v594 != 1987077987 && v594 != 1987081839)
    {
      v596 = 1987081833;
      goto LABEL_1129;
    }

    if (v1051)
    {
      v597 = sub_5544(2);
      v598 = sub_5544(35);
      v599 = 0;
      buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
      v600 = *(v597 + 8);
      while (1)
      {
        v601 = *(&buf[0].__r_.__value_.__l.__data_ + v599);
        if (((v600 & v601) != 0) != ((*(v598 + 8) & v601) != 0))
        {
          break;
        }

        v599 += 4;
        if (v599 == 8)
        {
          goto LABEL_1137;
        }
      }

      if ((v600 & v601) == 0)
      {
        v597 = v598;
      }

LABEL_1137:
      v602 = *v597;
      v603 = v602;
      if (v602)
      {
        v604 = v602;
        if (os_log_type_enabled(v604, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3486;
          _os_log_impl(&dword_0, v604, OS_LOG_TYPE_DEBUG, "%25s:%-5d Overriding unsupported StreamCouplingPolicy::DecoupleInputOutput to StreamCouplingPolicy::CoupleInputOutput.", buf, 0x12u);
        }
      }
    }

    goto LABEL_1142;
  }

  if (*a1 == 1668309362)
  {
    v593 = 1684366192;
    if (a1[1] == 1768778864)
    {
      goto LABEL_1143;
    }
  }

LABEL_1144:
  if (!*a3)
  {
    v949 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v949, "Could not construct");
  }

  sub_4A76C(&v1060, *a3, "allowed port types");
  if (v1061 != 1)
  {
    goto LABEL_1332;
  }

  v605 = v1060;
  if (!v1060)
  {
    goto LABEL_1332;
  }

  if (v1051)
  {
    v606 = sub_5544(2);
    v607 = sub_5544(35);
    v608 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v609 = *(v606 + 8);
    while (1)
    {
      v610 = *(&buf[0].__r_.__value_.__l.__data_ + v608);
      if (((v609 & v610) != 0) != ((*(v607 + 8) & v610) != 0))
      {
        break;
      }

      v608 += 4;
      if (v608 == 8)
      {
        goto LABEL_1154;
      }
    }

    if ((v609 & v610) == 0)
    {
      v606 = v607;
    }

LABEL_1154:
    v611 = *v606;
    v612 = v611;
    if (v611)
    {
      v613 = v611;
      if (os_log_type_enabled(v613, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3505;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2112;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v605;
        _os_log_impl(&dword_0, v613, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Allowed Port Types: %@.", buf, 0x1Cu);
      }
    }
  }

  v614 = CFArrayGetCount(v605);
  v615 = CFArrayGetCount(v605);
  if (v614)
  {
    v616 = v615;
    for (ii = 0; ii != v614; ++ii)
    {
      if (v616 == ii)
      {
        break;
      }

      sub_A3B9C(v1075, v605, ii);
      v618 = v1075[0].__r_.__value_.__r.__words[0];
      if (!v1075[0].__r_.__value_.__r.__words[0])
      {
        v888 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v888, "Could not construct");
      }

      v619 = sub_113A0(v1075[0].__r_.__value_.__l.__data_);
      LODWORD(theArray.__r_.__value_.__l.__data_) = v619;
      theArray.__r_.__value_.__s.__data_[4] = BYTE4(v619);
      if ((v619 & 0x100000000) == 0)
      {
        v883 = sub_5544(14);
        v884 = sub_468EC(1, *v883, *(v883 + 8));
        v885 = v884;
        if (v884)
        {
          v886 = v884;
          if (os_log_type_enabled(v886, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3514;
            _os_log_impl(&dword_0, v886, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationAllowedPortTypesKey does not contain VirtualAudioPortType.", buf, 0x12u);
          }
        }

        v887 = __cxa_allocate_exception(0x10uLL);
        *v887 = &off_6DDDD0;
        v887[2] = 1852797029;
      }

      sub_75788(v1047, v619, &theArray);
      CFRelease(v618);
    }
  }

  v620 = *(a2 + 112);
  *(&v1058 + 1) = 0;
  v1059 = 0;
  *&v1058 = &v1058 + 8;
  if (!*(a1 + 16))
  {
    goto LABEL_1326;
  }

  v621 = 1885892706;
  v622 = a1 + 30;
  v623 = *v1032;
  if (!*v1032)
  {
    goto LABEL_1174;
  }

  v624 = a1 + 30;
  do
  {
    v625 = v623[7];
    v626 = v625 >= 0x70687042;
    v627 = v625 < 0x70687042;
    if (v626)
    {
      v624 = v623;
    }

    v623 = *&v623[2 * v627];
  }

  while (v623);
  v622 = a1 + 30;
  if (v624 == v1032 || v624[7] > 0x70687042)
  {
LABEL_1174:
    v624 = v622;
  }

  v628 = a1 + 24;
  v629 = *v1036;
  if (!*v1036)
  {
LABEL_1190:
    v634 = v628;
    goto LABEL_1191;
  }

  v630 = a1 + 24;
  v631 = *v1036;
  do
  {
    v632 = v631[7];
    v626 = v632 >= 0x70687062;
    v633 = v632 < 0x70687062;
    if (v626)
    {
      v630 = v631;
    }

    v631 = *&v631[2 * v633];
  }

  while (v631);
  if (v630 != v1036 && v630[7] < 0x70687063)
  {
    goto LABEL_1326;
  }

  v634 = a1 + 24;
  do
  {
    v635 = v629[7];
    v626 = v635 >= 0x706D6274;
    v636 = v635 < 0x706D6274;
    if (v626)
    {
      v634 = v629;
    }

    v629 = *&v629[2 * v636];
  }

  while (v629);
  v628 = a1 + 24;
  if (v634 == v1036 || v634[7] > 0x706D6274)
  {
    goto LABEL_1190;
  }

LABEL_1191:
  if (v624 == v1032 || v634 != v1036)
  {
    goto LABEL_1326;
  }

  v637 = *a1;
  v638 = *(a1 + 1);
  *&buf[0].__r_.__value_.__r.__words[1] = 0uLL;
  buf[0].__r_.__value_.__r.__words[0] = &buf[0].__r_.__value_.__l.__size_;
  *&v1075[0].__r_.__value_.__r.__words[1] = 0uLL;
  v1075[0].__r_.__value_.__r.__words[0] = &v1075[0].__r_.__value_.__l.__size_;
  v639 = sub_45324(*v620, v637, v638, 1885892706, buf, v1075, *(a1 + 386), *(a1 + 456));
  sub_477A0(v1075[0].__r_.__value_.__l.__size_);
  sub_477A0(buf[0].__r_.__value_.__l.__size_);
  v640 = 1885892674;
  if (!v639)
  {
LABEL_1297:
    v621 = 1885892674;
    v640 = 1885892706;
    goto LABEL_1298;
  }

  v641 = *(a1 + 18);
  if (!v641)
  {
    goto LABEL_1298;
  }

  v642 = std::__shared_weak_count::lock(v641);
  if (!v642)
  {
    goto LABEL_1298;
  }

  if (!*v1029)
  {
    sub_1A8C0(v642);
    goto LABEL_1298;
  }

  v643 = *(*v1029 + 144);
  sub_1A8C0(v642);
  if (v643 == 1886216820)
  {
    goto LABEL_1298;
  }

  v644 = *a1;
  if (*a1 <= 1668313714)
  {
    if (v644 != 1668301427 && v644 != 1668309362)
    {
      v645 = 29250;
      goto LABEL_1267;
    }

    goto LABEL_1268;
  }

  if (v644 == 1668703084 || v644 == 1668576377)
  {
    goto LABEL_1295;
  }

  v645 = 29299;
LABEL_1267:
  if (v644 != (v645 | 0x63700000))
  {
LABEL_1296:
    v1075[0].__r_.__value_.__r.__words[0] = v643 | 0x7068704200000000;
    sub_4BA00(buf, v1075, 2);
    v705 = sub_2729B4(*v620, a1, buf);
    sub_477A0(buf[0].__r_.__value_.__l.__size_);
    if ((v705 & 1) == 0)
    {
      v826 = sub_5544(8);
      v827 = *v826;
      if (*v826 && os_log_type_enabled(*v826, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v1075, v643);
        v828 = SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]);
        v829 = v1075[0].__r_.__value_.__r.__words[0];
        sub_22170(&theArray, 1885892674);
        v830 = v1075;
        if (v828 < 0)
        {
          v830 = v829;
        }

        if ((theArray.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v831 = &theArray;
        }

        else
        {
          v831 = theArray.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
        *(buf[0].__r_.__value_.__r.__words + 4) = "RoutingManager.cpp";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 4997;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v830;
        WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
        *(buf[1].__r_.__value_.__r.__words + 6) = v831;
        _os_log_impl(&dword_0, v827, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preferring HFP port because no route exists for (%s/%s)", buf, 0x26u);
        if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(theArray.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1075[0].__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_1298;
    }

    goto LABEL_1297;
  }

LABEL_1268:
  v687 = a1[1];
  if (v687 > 1919776354)
  {
    if (v687 > 1987081832)
    {
      if (v687 == 1987081839)
      {
        goto LABEL_1295;
      }

      v699 = 30313;
    }

    else
    {
      if (v687 == 1919776355)
      {
        goto LABEL_1295;
      }

      v699 = 26467;
    }

    v688 = v699 | 0x76700000;
LABEL_1294:
    if (v687 == v688)
    {
      goto LABEL_1295;
    }

    goto LABEL_1296;
  }

  if (v687 > 1768779618)
  {
    if (v687 == 1768779619)
    {
      goto LABEL_1295;
    }

    v688 = 1768781411;
    goto LABEL_1294;
  }

  if (v687 != 1735222132)
  {
    v688 = 1768057203;
    goto LABEL_1294;
  }

LABEL_1295:
  v1075[0].__r_.__value_.__r.__words[0] = v643 | 0x7068706200000000;
  sub_4BA00(buf, v1075, 2);
  v704 = sub_2729B4(*v620, a1, buf);
  sub_477A0(buf[0].__r_.__value_.__l.__size_);
  if ((v704 & 1) == 0)
  {
    goto LABEL_1296;
  }

LABEL_1298:
  v706 = sub_809C0();
  LODWORD(cf.__r_.__value_.__l.__data_) = v640;
  memset(v1075, 0, 24);
  sub_4625C(v1075, &cf, cf.__r_.__value_.__r.__words + 1, 1uLL);
  buf[0] = v1075[0];
  strcpy(&buf[1], "cwdv");
  buf[1].__r_.__value_.__s.__data_[8] = 0;
  LODWORD(buf[1].__r_.__value_.__r.__words[2]) = 3;
  v1083 = 0;
  v1082 = 0;
  v1081 = &v1082;
  v1084 = 44739242;
  v1087 = 0;
  v1085 = 0;
  v1086 = 0;
  v1075[0].__r_.__value_.__r.__words[0] = off_6BC4E0;
  v1075[1].__r_.__value_.__r.__words[0] = v1075;
  sub_2574C4(&theArray, v706, buf, v1075);
  v707 = a1 + 12;
  sub_85148(v1075);
  if (SHIBYTE(v1087) < 0)
  {
    operator delete(v1085);
  }

  sub_477A0(v1082);
  if (buf[0].__r_.__value_.__r.__words[0])
  {
    buf[0].__r_.__value_.__l.__size_ = buf[0].__r_.__value_.__r.__words[0];
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  sub_76388(v1075, &theArray);
  for (jj = v1075[0].__r_.__value_.__l.__size_; jj != v1075; jj = jj->__r_.__value_.__l.__size_)
  {
    sub_11319C(&cf, jj->__r_.__value_.__r.__words[2]);
    if (cf.__r_.__value_.__r.__words[2])
    {
      *&v1071.__r_.__value_.__r.__words[1] = 0uLL;
      v1071.__r_.__value_.__r.__words[0] = &v1071.__r_.__value_.__l.__size_;
      v709 = *v1049;
      v1079.__r_.__value_.__r.__words[0] = cf.__r_.__value_.__l.__size_;
      v1068 = v709;
      buf[0].__r_.__value_.__r.__words[0] = &v1071;
      buf[0].__r_.__value_.__l.__size_ = &v1071.__r_.__value_.__l.__size_;
      v1074 = 0;
      if (v709 == v707)
      {
        goto LABEL_1308;
      }

      do
      {
        v710 = v1079.__r_.__value_.__r.__words[0];
        v1079.__r_.__value_.__r.__words[0] = sub_142090(v1079.__r_.__value_.__l.__data_, &cf, v709 + 4);
        sub_272BFC(v1079.__r_.__value_.__r.__words[0] == v710, &v1079, &v1068, buf, &v1074);
        if (v1079.__r_.__value_.__l.__data_ == &cf)
        {
          break;
        }

        v711 = v1068;
        v1068 = sub_272CA4(v1068, v707, (v1079.__r_.__value_.__r.__words[0] + 16));
        sub_272BFC(v1068 == v711, &v1079, &v1068, buf, &v1074);
        v709 = v1068;
      }

      while (v1068 != v707);
      if (!v1071.__r_.__value_.__r.__words[2])
      {
LABEL_1308:
        v712 = sub_5544(8);
        v713 = *v712;
        if (*v712 && os_log_type_enabled(*v712, OS_LOG_TYPE_DEFAULT))
        {
          sub_23148(&v1079, (jj->__r_.__value_.__r.__words[2] + 8));
          v714 = SHIBYTE(v1079.__r_.__value_.__r.__words[2]);
          v715 = v1079.__r_.__value_.__r.__words[0];
          sub_22170(&v1068, v621);
          v716 = &v1079;
          if (v714 < 0)
          {
            v716 = v715;
          }

          v717 = &v1068;
          if (v1070 < 0)
          {
            v717 = v1068;
          }

          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
          *(buf[0].__r_.__value_.__r.__words + 4) = "RoutingManager.cpp";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 5027;
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v716;
          WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
          *(buf[1].__r_.__value_.__r.__words + 6) = v717;
          _os_log_impl(&dword_0, v713, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disallowing port (%s) as %s is preferred for this route configuration", buf, 0x26u);
          if (v1070 < 0)
          {
            operator delete(v1068);
          }

          if (SHIBYTE(v1079.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1079.__r_.__value_.__l.__data_);
          }
        }

        v718 = jj[1].__r_.__value_.__r.__words[0];
        buf[0].__r_.__value_.__r.__words[0] = jj->__r_.__value_.__r.__words[2];
        buf[0].__r_.__value_.__l.__size_ = v718;
        if (v718)
        {
          atomic_fetch_add_explicit((v718 + 16), 1uLL, memory_order_relaxed);
        }

        sub_CB814(&v1058, buf, buf);
        v707 = a1 + 12;
        if (buf[0].__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_weak(buf[0].__r_.__value_.__l.__size_);
        }
      }

      sub_4B0F4(v1071.__r_.__value_.__l.__size_);
    }

    sub_65310(&cf);
  }

  sub_87980(v1075);
  sub_65310(&theArray);
  if (v1059)
  {
    v615 = sub_7FE64(v1049, v1058, &v1058 + 1);
  }

LABEL_1326:
  if (a1[40] == 1684366192)
  {
    v719 = *a1;
    *&buf[0].__r_.__value_.__r.__words[1] = 0uLL;
    buf[0].__r_.__value_.__r.__words[0] = &buf[0].__r_.__value_.__l.__size_;
    if (caulk::product::get_device_class(v615) == 6 && v719 == 0x696D646663706172)
    {
      LODWORD(v1075[0].__r_.__value_.__l.__data_) = 1885892674;
      sub_75788(buf, 0x70687042u, v1075);
    }

    sub_47714(v1047, buf[0].__r_.__value_.__l.__data_, &buf[0].__r_.__value_.__l.__size_);
    sub_477A0(buf[0].__r_.__value_.__l.__size_);
  }

  sub_4B0F4(*(&v1058 + 1));
  CFRelease(v605);
LABEL_1332:
  sub_53E8(buf, "disable speaker vad");
  v720 = sub_4A268(a3, buf);
  v1048[70] = v720;
  *(v1048 + 284) = BYTE4(v720);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  v721 = *a3;
  if (!*a3)
  {
    v950 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v950, "Could not construct");
  }

  v722 = CFStringCreateWithBytes(0, "create speaker vad", 18, 0x8000100u, 0);
  buf[0].__r_.__value_.__r.__words[0] = v722;
  if (!v722)
  {
    v951 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v951, "Could not construct");
  }

  v723 = CFDictionaryContainsKey(v721, v722);
  if (buf[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(buf[0].__r_.__value_.__l.__data_);
  }

  if (v723)
  {
    v724 = sub_5544(2);
    v725 = sub_5544(35);
    v726 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v727 = *(v724 + 8);
    while (1)
    {
      v728 = *(&buf[0].__r_.__value_.__l.__data_ + v726);
      if (((v727 & v728) != 0) != ((*(v725 + 8) & v728) != 0))
      {
        break;
      }

      v726 += 4;
      if (v726 == 8)
      {
        goto LABEL_1345;
      }
    }

    if ((v727 & v728) == 0)
    {
      v724 = v725;
    }

LABEL_1345:
    v729 = *v724;
    v730 = v729;
    if (v729)
    {
      v731 = v729;
      if (os_log_type_enabled(v731, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3545;
        _os_log_impl(&dword_0, v731, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationCreateSpeakerAlertVADKey is no longer supported. Please use kVirtualAudioPlugInRouteConfigurationDisableSpeakerAlertVADKey to explicitly disable the default-created speaker alert VAD.", buf, 0x12u);
      }
    }
  }

  v732 = *a3;
  if (!*a3)
  {
    v952 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v952, "Could not construct");
  }

  v733 = CFStringCreateWithBytes(0, "session routing information", 27, 0x8000100u, 0);
  buf[0].__r_.__value_.__r.__words[0] = v733;
  if (!v733)
  {
    v953 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v953, "Could not construct");
  }

  v734 = CFDictionaryContainsKey(v732, v733);
  if (buf[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(buf[0].__r_.__value_.__l.__data_);
  }

  if (v734)
  {
    sub_A3240(buf, a3);
    v735 = (a1 + 192);
    if (*(a1 + 792) == 1)
    {
      if (v735 != buf)
      {
        v736 = buf[0].__r_.__value_.__l.__size_;
        v737 = *(a1 + 97);
        if (buf[0].__r_.__value_.__l.__size_ != buf && v737 != v735)
        {
          do
          {
            sub_233C40(&v737->__r_.__value_.__r.__words[2], &v736->__r_.__value_.__r.__words[2]);
            v736 = v736->__r_.__value_.__l.__size_;
            v737 = v737->__r_.__value_.__l.__size_;
          }

          while (v736 != buf && v737 != v735);
        }

        if (v737 == v735)
        {
          if (v736 != buf)
          {
            sub_A4DBC(0, &v736->__r_.__value_.__r.__words[2]);
          }
        }

        else
        {
          v739 = *(*(a1 + 96) + 8);
          v740 = v737->__r_.__value_.__r.__words[0];
          *(v740 + 8) = v739;
          *v739 = v740;
          do
          {
            v741 = v737->__r_.__value_.__l.__size_;
            --*(a1 + 98);
            sub_A5114(&v737->__r_.__value_.__r.__words[2]);
            operator delete(v737);
            v737 = v741;
          }

          while (v741 != v735);
        }
      }
    }

    else
    {
      sub_75848(a1 + 96, buf);
      *(a1 + 792) = 1;
    }

    sub_76304(buf);
    if (!*a3)
    {
      v961 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v961, "Could not construct");
    }

    if (CFDictionaryGetCount(*a3) == 1)
    {
LABEL_1371:
      v742 = 1;
      goto LABEL_1402;
    }

    if ((a1[198] & 1) == 0)
    {
      sub_1EC054();
    }

    v743 = *(a1 + 97);
    if (v743 != v735)
    {
      while (2)
      {
        sub_A4E68(buf, &v743->__r_.__value_.__r.__words[2]);
        sub_A4E28(v1075, buf);
        if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v1075[0].__r_.__value_.__l.__size_ != 21 || (*v1075[0].__r_.__value_.__l.__data_ == 0x6C7070612E6D6F63 ? (v746 = *(v1075[0].__r_.__value_.__r.__words[0] + 8) == 0x656C69626F6D2E65) : (v746 = 0), v746 ? (v747 = *(v1075[0].__r_.__value_.__r.__words[0] + 13) == 0x6369676F6C656C69) : (v747 = 0), !v747))
          {
            operator delete(v1075[0].__r_.__value_.__l.__data_);
            goto LABEL_1394;
          }
        }

        else if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) != 21 || (v1075[0].__r_.__value_.__r.__words[0] == 0x6C7070612E6D6F63 ? (v744 = v1075[0].__r_.__value_.__l.__size_ == 0x656C69626F6D2E65) : (v744 = 0), v744 ? (v745 = *(&v1075[0].__r_.__value_.__r.__words[1] + 5) == 0x6369676F6C656C69) : (v745 = 0), !v745))
        {
LABEL_1394:
          sub_A5114(buf);
LABEL_1395:
          v743 = v743->__r_.__value_.__l.__size_;
          if (v743 == v735)
          {
            goto LABEL_1401;
          }

          continue;
        }

        break;
      }

      v748 = _os_feature_enabled_impl();
      if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1075[0].__r_.__value_.__l.__data_);
      }

      sub_A5114(buf);
      if (v748)
      {
        goto LABEL_1371;
      }

      goto LABEL_1395;
    }

LABEL_1401:
    v742 = 0;
LABEL_1402:
    *(a1 + 385) = v742;
  }

  if (!*a3)
  {
    v954 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v954, "Could not construct");
  }

  v749 = sub_1129C(*a3, "is longform media");
  if (v749)
  {
    v750 = sub_11DA8(v749);
    if (v750 >= 0x100u)
    {
      *(a1 + 400) = v750;
    }
  }

  v751 = *a1;
  if (!v751)
  {
    v955 = sub_5544(14);
    v956 = sub_468EC(1, *v955, *(v955 + 8));
    v957 = v956;
    if (v956 && os_log_type_enabled(v956, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 1229;
      _os_log_impl(&dword_0, v957, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_1778;
  }

  v752 = a1[1];
  if (v752 <= 1918990111)
  {
    if (v752 > 1768779618)
    {
      if (v752 > 1835230309)
      {
        if (v752 <= 1835361381)
        {
          if (v752 == 1835230310)
          {
            goto LABEL_1509;
          }

          if (v752 != 1835232630)
          {
            goto LABEL_1630;
          }
        }

        else
        {
          if (v752 == 1835361382)
          {
            goto LABEL_1509;
          }

          if (v752 != 1836021360)
          {
            if (v752 == 1836281204)
            {
              goto LABEL_1509;
            }

            goto LABEL_1630;
          }
        }

        goto LABEL_1460;
      }

      if (v752 <= 1768781425)
      {
        if (v752 == 1768779619)
        {
          goto LABEL_1480;
        }

        v753 = 1768781411;
LABEL_1443:
        if (v752 == v753)
        {
          if (v751 > 1668313665)
          {
            if (v751 != 1668313666 && v751 != 1668313715)
            {
              v757 = 1668703092;
              goto LABEL_1486;
            }

            goto LABEL_1509;
          }

          goto LABEL_1481;
        }

        goto LABEL_1630;
      }

      if (v752 != 1768781426)
      {
        v758 = 1835229549;
        goto LABEL_1479;
      }

      goto LABEL_1536;
    }

    if (v752 > 1735222131)
    {
      if (v752 <= 1768057202)
      {
        if (v752 == 1735222132)
        {
          goto LABEL_1480;
        }

        v758 = 1751212899;
        goto LABEL_1479;
      }

      if (v752 == 1768057203)
      {
        goto LABEL_1480;
      }

      if (v752 == 1768776806)
      {
        goto LABEL_1509;
      }

      v754 = 1768778864;
LABEL_1469:
      if (v752 != v754)
      {
        goto LABEL_1630;
      }

LABEL_1536:
      if (v751 > 1668313714)
      {
        if (v751 != 1668313715 && v751 != 1668440898)
        {
          v757 = 1668441443;
          goto LABEL_1486;
        }

        goto LABEL_1509;
      }

      if (v751 == 1668301427 || v751 == 1668309362)
      {
        goto LABEL_1509;
      }

      v759 = 29250;
      goto LABEL_1485;
    }

    if (v752 > 1701013791)
    {
      if (v752 != 1701013792)
      {
        v758 = 1701013869;
        goto LABEL_1479;
      }

      goto LABEL_1536;
    }

    if (v752 == 1650811758)
    {
      if (v751 != 1667591521)
      {
        v757 = 1667591533;
        goto LABEL_1486;
      }

      goto LABEL_1509;
    }

    if (v752 == 1685089378)
    {
      v757 = 1668117868;
      goto LABEL_1486;
    }

    if (v752)
    {
      goto LABEL_1630;
    }

    v1020 = sub_5544(14);
    v1021 = sub_468EC(1, *v1020, *(v1020 + 8));
    v957 = v1021;
    if (v1021 && os_log_type_enabled(v1021, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 1230;
      _os_log_impl(&dword_0, v957, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_1778:

    v958 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v958, "Precondition failure.");
  }

  if (v752 <= 1986556787)
  {
    if (v752 > 1936747373)
    {
      if (v752 > 1936749156)
      {
        if (v752 == 1936749157 || v752 == 1937007472)
        {
          goto LABEL_1480;
        }

        v755 = 1986098036;
LABEL_1473:
        if (v752 == v755)
        {
          goto LABEL_1474;
        }

        goto LABEL_1630;
      }

      if (v752 != 1936747374)
      {
        v756 = 1936748652;
        goto LABEL_1458;
      }

LABEL_1460:
      if (v751 == 1668441443 || v751 == 1668440898)
      {
        goto LABEL_1487;
      }

      goto LABEL_1509;
    }

    if (v752 > 1936683885)
    {
      if (v752 == 1936683886)
      {
        v757 = 1667329133;
        goto LABEL_1486;
      }

      v758 = 1936745328;
    }

    else
    {
      if (v752 == 1918990112)
      {
        goto LABEL_1509;
      }

      v758 = 1919776355;
    }

LABEL_1479:
    if (v752 == v758)
    {
      goto LABEL_1480;
    }

    goto LABEL_1630;
  }

  if (v752 <= 1987081838)
  {
    if (v752 > 1987077986)
    {
      if (v752 != 1987077987)
      {
        if (v752 != 1987080813)
        {
          v753 = 1987081833;
          goto LABEL_1443;
        }

LABEL_1459:
        v757 = 1668505974;
LABEL_1486:
        if (v751 != v757)
        {
LABEL_1487:
          v760 = sub_5544(2);
          v761 = sub_5544(35);
          v762 = 0;
          buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
          v763 = *(v760 + 8);
          while (1)
          {
            v764 = *(&buf[0].__r_.__value_.__l.__data_ + v762);
            if (((v763 & v764) != 0) != ((*(v761 + 8) & v764) != 0))
            {
              break;
            }

            v762 += 4;
            if (v762 == 8)
            {
              if ((v763 & 1) == 0)
              {
                goto LABEL_1509;
              }

              goto LABEL_1495;
            }
          }

          if ((v763 & v764) == 0)
          {
            v760 = v761;
          }

          if ((*(v760 + 8) & 1) == 0)
          {
            goto LABEL_1509;
          }

LABEL_1495:
          v765 = *v760;
          if (!v765)
          {
            goto LABEL_1509;
          }

          v766 = v765;
          if (os_log_type_enabled(v766, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v1075, v752);
            v767 = SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]);
            v768 = v1075[0].__r_.__value_.__r.__words[0];
            sub_22170(&theArray, v751);
            v769 = v1075;
            if (v767 < 0)
            {
              v769 = v768;
            }

            if ((theArray.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v770 = &theArray;
            }

            else
            {
              v770 = theArray.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
            *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 1309;
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v769;
            WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2080;
            *(buf[1].__r_.__value_.__r.__words + 6) = v770;
            _os_log_impl(&dword_0, v766, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mode '%s' is not allowed with category '%s'", buf, 0x26u);
            if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theArray.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v1075[0].__r_.__value_.__l.__data_);
            }
          }

          v771 = v766;
LABEL_1507:

          goto LABEL_1508;
        }

        goto LABEL_1509;
      }

LABEL_1480:
      if (v751 > 1668313665)
      {
        if (v751 == 1668313666)
        {
          goto LABEL_1509;
        }

        v759 = 29299;
      }

      else
      {
LABEL_1481:
        if (v751 == 1668301427)
        {
          goto LABEL_1509;
        }

        v759 = 24946;
      }

LABEL_1485:
      v757 = v759 | 0x63700000;
      goto LABEL_1486;
    }

    if (v752 != 1986556788)
    {
      v754 = 1986884455;
      goto LABEL_1469;
    }

LABEL_1474:
    v757 = 1668509810;
    goto LABEL_1486;
  }

  if (v752 <= 1987211116)
  {
    if (v752 == 1987081839)
    {
      goto LABEL_1480;
    }

    v755 = 1987208039;
    goto LABEL_1473;
  }

  if (v752 == 1987211117)
  {
    goto LABEL_1474;
  }

  if (v752 == 2003133027)
  {
    goto LABEL_1459;
  }

  v756 = 2003133037;
LABEL_1458:
  if (v752 == v756)
  {
    goto LABEL_1459;
  }

LABEL_1630:
  v824 = *sub_5544(14);
  v771 = v824;
  if (v824)
  {
    v766 = v824;
    if (os_log_type_enabled(v766, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v1075, v752);
      v825 = (v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1075 : v1075[0].__r_.__value_.__r.__words[0];
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 1304;
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v825;
      _os_log_impl(&dword_0, v766, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unhandled VirtualAudioPlugInMode '%s'", buf, 0x1Cu);
      if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1075[0].__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_1507;
  }

LABEL_1508:

LABEL_1509:
  if (!*a3)
  {
    v959 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v959, "Could not construct");
  }

  sub_4ADFC(v1075, *a3);
  if (v1075[0].__r_.__value_.__s.__data_[8] == 1)
  {
    v772 = v1075[0].__r_.__value_.__r.__words[0];
    if (v1075[0].__r_.__value_.__r.__words[0])
    {
      v773 = *sub_5544(2);
      v774 = v773;
      if (v773)
      {
        v775 = v773;
        if (os_log_type_enabled(v775, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
          *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
          WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3575;
          _os_log_impl(&dword_0, v775, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parsing camera parameters ", buf, 0x12u);
        }
      }

      v776 = a1 + 166;
      if (*(a1 + 672) == 1)
      {
        v777 = *v776;
        *v776 = v772;
        CFRetain(v772);
        if (v777)
        {
          CFRelease(v777);
        }
      }

      else
      {
        sub_98A64(v776, v772);
        *(a1 + 672) = 1;
      }

      CFRelease(v772);
    }
  }

  if (*(a1 + 684) == 1 && a1[170] == 1920167273)
  {
    v778 = *v1036;
    if (*v1036)
    {
      v779 = a1 + 24;
      do
      {
        v780 = v778[7];
        v626 = v780 >= 0x706D6274;
        v781 = v780 < 0x706D6274;
        if (v626)
        {
          v779 = v778;
        }

        v778 = *&v778[2 * v781];
      }

      while (v778);
      if (v779 != v1036 && v779[7] < 0x706D6275)
      {
        if (v1051)
        {
          v782 = sub_5544(2);
          v783 = sub_5544(35);
          v784 = 0;
          buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
          v785 = *(v782 + 8);
          while (1)
          {
            v786 = *(&buf[0].__r_.__value_.__l.__data_ + v784);
            if (((v785 & v786) != 0) != ((*(v783 + 8) & v786) != 0))
            {
              break;
            }

            v784 += 4;
            if (v784 == 8)
            {
              goto LABEL_1548;
            }
          }

          if ((v785 & v786) == 0)
          {
            v782 = v783;
          }

LABEL_1548:
          v787 = *v782;
          v788 = v787;
          if (v787)
          {
            v789 = v787;
            if (os_log_type_enabled(v789, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
              *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
              WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
              *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3584;
              _os_log_impl(&dword_0, v789, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing HFP port types from disallowed ports for studio mic input preference.", buf, 0x12u);
            }
          }
        }

        sub_1C4454(v1044, 0x706D6274u);
        sub_1C4454(v1044, 0x70687062u);
        v790 = *(a1 + 18);
        if (v790)
        {
          v791 = std::__shared_weak_count::lock(v790);
          if (v791)
          {
            v792 = v791;
            v793 = *v1029;
            if (*v1029)
            {
              if ((*(*v793 + 160))(*v1029))
              {
                LOWORD(buf[0].__r_.__value_.__l.__data_) = 256;
                if (sub_34D04C(v793, buf))
                {
                  sub_1A8C0(v792);
                  goto LABEL_1604;
                }
              }
            }

            sub_1A8C0(v792);
          }
        }

        if ((v1046 & 1) == 0)
        {
          v794 = *(a1 + 62);
          if (v794 != v1033)
          {
            do
            {
              v795 = *(v794 + 4);
              v796 = *(v795 + 96);
              if (v796)
              {
                v797 = *(v795 + 88);
                atomic_fetch_add_explicit(&v796->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v798 = std::__shared_weak_count::lock(v796);
                std::__shared_weak_count::__release_weak(v796);
                if (v798)
                {
                  if (v797)
                  {
                    LOWORD(buf[0].__r_.__value_.__l.__data_) = 256;
                    v799 = sub_34D04C(v797, buf);
                    sub_1A8C0(v798);
                    if (v799)
                    {
                      goto LABEL_1604;
                    }
                  }

                  else
                  {
                    sub_1A8C0(v798);
                  }
                }
              }

              v800 = *(v794 + 1);
              if (v800)
              {
                do
                {
                  v801 = v800;
                  v800 = *v800;
                }

                while (v800);
              }

              else
              {
                do
                {
                  v801 = *(v794 + 2);
                  v145 = *v801 == v794;
                  v794 = v801;
                }

                while (!v145);
              }

              v794 = v801;
            }

            while (v801 != v1033);
          }
        }

        if (!v1035 || *(a1 + 18))
        {
          goto LABEL_1587;
        }

        v802 = sub_809C0();
        v1079.__r_.__value_.__r.__words[0] = 0x70687062706D6274;
        memset(&v1071, 0, sizeof(v1071));
        sub_4625C(&v1071, &v1079, &v1079.__r_.__value_.__r.__words[1], 2uLL);
        buf[0] = v1071;
        memset(&v1071, 0, sizeof(v1071));
        strcpy(&buf[1], "cwdv");
        buf[1].__r_.__value_.__s.__data_[8] = 0;
        LODWORD(buf[1].__r_.__value_.__r.__words[2]) = 3;
        v1083 = 0;
        v1082 = 0;
        v1081 = &v1082;
        v1084 = 44739242;
        v1087 = 0;
        v1085 = 0;
        v1086 = 0;
        v1075[0].__r_.__value_.__r.__words[0] = off_6CDD68;
        v1075[1].__r_.__value_.__r.__words[0] = v1075;
        sub_256FB0(&cf, v802, buf, v1075);
        sub_B0484(&theArray, &cf);
        v803 = theArray.__r_.__value_.__l.__size_;
        if (theArray.__r_.__value_.__l.__size_ == &theArray)
        {
LABEL_1580:
          v805 = 1;
        }

        else
        {
          while (1)
          {
            if ((*(*v803->__r_.__value_.__r.__words[2] + 160))(v803->__r_.__value_.__r.__words[2]))
            {
              v804 = v803->__r_.__value_.__r.__words[2];
              LOWORD(v1068) = 256;
              if (sub_34D04C(v804, &v1068))
              {
                break;
              }
            }

            v803 = v803->__r_.__value_.__l.__size_;
            if (v803 == &theArray)
            {
              goto LABEL_1580;
            }
          }

          v805 = 0;
        }

        sub_87980(&theArray);
        sub_65310(&cf);
        sub_85148(v1075);
        if (SHIBYTE(v1087) < 0)
        {
          operator delete(v1085);
        }

        sub_477A0(v1082);
        if (buf[0].__r_.__value_.__r.__words[0])
        {
          buf[0].__r_.__value_.__l.__size_ = buf[0].__r_.__value_.__r.__words[0];
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }

        if (v805)
        {
LABEL_1587:
          if (v1051)
          {
            v806 = sub_5544(2);
            v807 = sub_5544(35);
            v808 = 0;
            buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
            v809 = *(v806 + 8);
            while (1)
            {
              v810 = *(&buf[0].__r_.__value_.__l.__data_ + v808);
              if (((v809 & v810) != 0) != ((*(v807 + 8) & v810) != 0))
              {
                break;
              }

              v808 += 4;
              if (v808 == 8)
              {
                goto LABEL_1594;
              }
            }

            if ((v809 & v810) == 0)
            {
              v806 = v807;
            }

LABEL_1594:
            v811 = *v806;
            v812 = v811;
            if (v811)
            {
              v813 = v811;
              if (os_log_type_enabled(v813, OS_LOG_TYPE_DEFAULT))
              {
                sub_22170(v1075, 1920167288);
                v814 = (v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1075 : v1075[0].__r_.__value_.__r.__words[0];
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
                *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3631;
                WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v814;
                _os_log_impl(&dword_0, v813, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No routable HFP port in dictionary, setting activation reason to %s.", buf, 0x1Cu);
                if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v1075[0].__r_.__value_.__l.__data_);
                }
              }
            }
          }

          a1[170] = 1920167288;
          *(a1 + 684) = 1;
        }
      }
    }
  }

LABEL_1604:
  if (v1051)
  {
    v815 = sub_5544(2);
    v816 = sub_5544(35);
    v817 = 0;
    buf[0].__r_.__value_.__r.__words[0] = 0x100000002;
    v818 = *(v815 + 8);
    while (1)
    {
      v819 = *(&buf[0].__r_.__value_.__l.__data_ + v817);
      if (((v818 & v819) != 0) != ((*(v816 + 8) & v819) != 0))
      {
        break;
      }

      v817 += 4;
      if (v817 == 8)
      {
        goto LABEL_1611;
      }
    }

    if ((v818 & v819) == 0)
    {
      v815 = v816;
    }

LABEL_1611:
    v820 = *v815;
    v821 = v820;
    if (v820)
    {
      v822 = v820;
      if (os_log_type_enabled(v822, OS_LOG_TYPE_DEBUG))
      {
        sub_BCD50(v1075, a1);
        v823 = (v1075[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1075 : v1075[0].__r_.__value_.__r.__words[0];
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 3639;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v823;
        _os_log_impl(&dword_0, v822, OS_LOG_TYPE_DEBUG, "%25s:%-5d outConfiguration.mRouteConfiguration: %s.", buf, 0x1Cu);
        if (SHIBYTE(v1075[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1075[0].__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_477A0(*&__p[24]);
  if (v1062)
  {
    CFRelease(v1062);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v1038)
  {
    std::__shared_weak_count::__release_weak(v1038);
  }

  if (v1039)
  {
    std::__shared_weak_count::__release_weak(v1039);
  }
}

void sub_42428(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_42448()
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    JUMPOUT(0x428CCLL);
  }

  JUMPOUT(0x432A4);
}

void sub_42470(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_424A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_424C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_85148(&STACK[0x230]);
  sub_46934(&STACK[0x2C0]);
  sub_4B0F4(a53);
  JUMPOUT(0x43298);
}

void sub_424DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, CFTypeRef cf, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_4B0F4(a53);
  sub_247B70(&a55);
  sub_477A0(STACK[0x278]);
  sub_4BA7C(&a57);
  if (cf)
  {
    CFRelease(cf);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_424F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_4257C()
{
  if (v0)
  {
    sub_1A8C0(v0);
    if (v1)
    {
      goto LABEL_5;
    }
  }

  else if (v1)
  {
LABEL_5:
    std::__shared_weak_count::__release_weak(v1);
  }

  sub_1D5FE0(&v2);
  sub_247B70(&v3);
  JUMPOUT(0x43310);
}

void sub_42588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  sub_3A7074(&STACK[0x260]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_425C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_477A0(STACK[0x2C8]);
  sub_4B0F4(a53);
  JUMPOUT(0x43298);
}

void sub_425E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_425EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_425F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42610()
{
  __cxa_free_exception(v0);
  sub_4BA7C(&v1);
  JUMPOUT(0x432A4);
}

void sub_42658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  sub_4B0F4(a65);
  sub_65310(&a66);
  sub_87980(&STACK[0x230]);
  JUMPOUT(0x431DCLL);
}

void sub_4267C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42684(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4268C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42694(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4269C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_426A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_426AC()
{
  if (v0)
  {
    sub_1A8C0(v0);
  }

  if (!v1)
  {
    sub_1D5FE0(&v2);
    sub_247B70(&v3);
    JUMPOUT(0x43310);
  }

  JUMPOUT(0x4293CLL);
}

void sub_42734(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4273C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  __cxa_free_exception(v58);
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  sub_46228(&a58);
  JUMPOUT(0x4330CLL);
}

void sub_427A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_427FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42804(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4280C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42818(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42820(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42828(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42830(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4284C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4285C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42870(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42878(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42888(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42894(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_428F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42908()
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
    if (v0)
    {
      goto LABEL_3;
    }
  }

  else if (v0)
  {
LABEL_3:
    sub_1A8C0(v0);
    if (!v1)
    {
      goto LABEL_8;
    }

LABEL_7:
    std::__shared_weak_count::__release_weak(v1);
LABEL_8:
    JUMPOUT(0x43300);
  }

  if (!v1)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_42944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23EA34(&a65);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23EA34(&a65);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  JUMPOUT(0x43310);
}

void sub_4298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_379DD0(STACK[0x238]);
  if (LOBYTE(STACK[0x278]) == 1)
  {
    STACK[0x230] = &STACK[0x260];
    sub_761AC(&STACK[0x230]);
  }

  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_429D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42A50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42A58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42A60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_1DB0E0(&STACK[0x2C0]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42AEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42AF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42B14(void *a1, int a2)
{
  if (a2)
  {
    sub_1DB0E0(&STACK[0x2C0]);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x39CC8);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __cxa_free_exception(v51);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x2C8])
  {
    std::__shared_weak_count::__release_weak(STACK[0x2C8]);
  }

  sub_4B0F4(a65);
  sub_65310(&a66);
  sub_87980(&STACK[0x230]);
  JUMPOUT(0x431DCLL);
}

void sub_42BD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42BDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42BE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42BF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42BF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C08(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42C70(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      sub_A5114((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x43348);
}

void sub_42CA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42CC0()
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  sub_A5114(&STACK[0x2C0]);
  JUMPOUT(0x4329CLL);
}

void sub_42CF8()
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  JUMPOUT(0x4329CLL);
}

void sub_42D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_452F0(&STACK[0x2C0]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D68(void *a1, int a2)
{
  if (a2)
  {
    sub_452F0(&STACK[0x2C0]);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x39CC8);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D7C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x42D84);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_3A6658(&STACK[0x260]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v65);
  sub_23EA34(&a65);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  JUMPOUT(0x43310);
}

void sub_42E00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42E18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42E28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42E34()
{
  __cxa_free_exception(v0);
  sub_1D5FE0(&v1);
  sub_247B70(&v2);
  JUMPOUT(0x43310);
}

void sub_42E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42EC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42ED4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42EDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42EE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42EF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_46228(&STACK[0x210]);
  sub_23EA34(&a65);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  JUMPOUT(0x43310);
}

void sub_42F18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42F20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42F2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42F38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  sub_1D5FE0(&STACK[0x230]);
  sub_210C50(&a65);
  JUMPOUT(0x43294);
}

void sub_42F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v65);
  sub_1D5FE0(&STACK[0x230]);
  sub_210C50(&a65);
  JUMPOUT(0x43294);
}

void sub_42F8C(void *a1, int a2)
{
  if (a2)
  {
    LOBYTE(STACK[0x278]) = v2;
    sub_1CC130(a1);
  }

  JUMPOUT(0x43348);
}

void sub_42F98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42FAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42FCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42FD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_42FEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_43014()
{
  LOBYTE(STACK[0x2F0]) = v0;
  sub_2B50D0(&STACK[0x230]);
  JUMPOUT(0x432D8);
}

void sub_43020(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_43028(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_43038(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_43040()
{
  if (STACK[0x2C8])
  {
    std::__shared_weak_count::__release_weak(STACK[0x2C8]);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x432B4);
}

void sub_43078()
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    JUMPOUT(0x4312CLL);
  }

  JUMPOUT(0x43130);
}

void sub_430EC()
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  JUMPOUT(0x432D8);
}

void sub_430F4()
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  JUMPOUT(0x432D8);
}

void sub_430FC()
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  JUMPOUT(0x43120);
}

void sub_43144()
{
  if (v1)
  {
    operator delete(v1);
  }

  sub_1D5FE0(&v2);
  sub_247B70(&v3);
  JUMPOUT(0x43310);
}

void sub_4315C(void *a1, int a2)
{
  if (a2)
  {
    LOBYTE(STACK[0x2F0]) = v2;
    sub_1CC130(a1);
  }

  JUMPOUT(0x43348);
}

void sub_431A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (STACK[0x260])
  {
    operator delete(STACK[0x260]);
  }

  if (a63)
  {
    operator delete(a63);
  }

  JUMPOUT(0x43300);
}

void sub_43264()
{
  sub_1D5FE0(&v0);
  sub_247B70(&v1);
  JUMPOUT(0x43310);
}

void sub_432B0()
{
  sub_1D5FE0(&STACK[0x230]);
  sub_210C50(&STACK[0x210]);
  JUMPOUT(0x432C4);
}

const void *sub_43354(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_43408(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x433B8);
}

CFIndex sub_43458(const __CFDictionary **a1, int a2, int a3)
{
  v4 = *a1;
  if (!v4)
  {
    v21 = sub_5544(14);
    v22 = sub_468EC(1, *v21, *(v21 + 8));
    v23 = v22;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "VirtualAudio_PlugIn.mm";
      v32 = 1024;
      v33 = 811;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", cf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  result = CFDictionaryGetCount(v4);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (!sub_47E08(*a1))
  {
    goto LABEL_8;
  }

  v9 = *a1;
  if (!*a1)
  {
LABEL_34:
    v20 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v20);
  }

  v10 = CFStringCreateWithBytes(0, "unroutable ports", 16, 0x8000100u, 0);
  *cf = v10;
  if (!v10)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
  }

  v11 = CFDictionaryContainsKey(v9, v10);
  CFRelease(*cf);
  if (!v11)
  {
    v26 = sub_5544(14);
    v27 = sub_468EC(1, *v26, *(v26 + 8));
    v28 = v27;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "VirtualAudio_PlugIn.mm";
      v32 = 1024;
      v33 = 821;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey required.", cf, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey required.");
  }

LABEL_8:
  v12 = 0;
  v13 = 0;
  do
  {
    if (!*a1)
    {
      goto LABEL_34;
    }

    v13 += sub_47D0C(*a1, off_6CDC08[v12++]);
  }

  while (v12 != 5);
  if (v8 != v13)
  {
    return 0;
  }

  sub_53E8(cf, "decoupled input/output");
  v14 = sub_4A268(a1, cf);
  if (v34 < 0)
  {
    operator delete(*cf);
  }

  if (!*a1)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v30);
  }

  if (v14)
  {
    v15 = 1684366192;
  }

  else
  {
    v15 = 1668248944;
  }

  if (HIDWORD(v14))
  {
    v16 = v15 == a2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  v18 = sub_43354(*a1, "expanse session");
  if (v18)
  {
    v18 = sub_113A0(v18);
  }

  if ((v18 & 0x100000000) == 0 || v18 == a3)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_438C8(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = sub_43950(a2, __s);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

const void *sub_43950(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_43A04(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x439B4);
}

uint64_t sub_43A54(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_517100);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_517110), xmmword_517120);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

BOOL sub_43D7C(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_43E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

void sub_43E6C(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  v4 = *a2;
  if (!v4)
  {
    v64 = sub_5544(14);
    v65 = *v64;
    if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 861;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = a2[1];
  if (!v6)
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 862;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v69 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v69, "Precondition failure.");
  }

  if (v4 == 1668706147)
  {
    v70 = sub_5544(14);
    v71 = *v70;
    if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 864;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): kVirtualAudioPlugInRoutingCategoryVoiceChat is obsolete. Please use kVirtualAudioPlugInRoutingCategoryPlayAndRecord + kVirtualAudioPlugInMode_VoiceChat.", buf, 0x12u);
    }

    v72 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v72, "kVirtualAudioPlugInRoutingCategoryVoiceChat is obsolete. Please use kVirtualAudioPlugInRoutingCategoryPlayAndRecord + kVirtualAudioPlugInMode_VoiceChat.");
  }

  v74[0] = 0;
  v74[1] = 0;
  v73 = v74;
  if (v4 <= 1668313714)
  {
    if (v4 == 1668301427)
    {
      if (v6 != 1751212899)
      {
        *buf = 1886216820;
        sub_75788(&v73, 0x706D6274u, buf);
        *buf = 1885892706;
        sub_75788(&v73, 0x70687062u, buf);
      }

      *buf = 1886545251;
      sub_75788(&v73, 0x70726563u, buf);
      v25 = sub_5544(2);
      v26 = sub_5544(35);
      v27 = 0;
      *buf = 0x100000002;
      v28 = *(v25 + 8);
      while (1)
      {
        v29 = *&buf[v27];
        if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
        {
          break;
        }

        v27 += 4;
        if (v27 == 8)
        {
          if ((v28 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_66;
        }
      }

      if ((v28 & v29) == 0)
      {
        v25 = v26;
      }

      if ((*(v25 + 8) & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_66:
      v31 = *v25;
      if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 899;
        v32 = "%25s:%-5d kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeakerNoBT is now obsolete.";
LABEL_69:
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, v32, buf, 0x12u);
      }

      goto LABEL_70;
    }

    if (v4 == 1668313666)
    {
      if (v6 != 1751212899)
      {
        *buf = 1886216820;
        sub_75788(&v73, 0x706D6274u, buf);
        *buf = 1885892706;
        sub_75788(&v73, 0x70687062u, buf);
      }

      v10 = sub_5544(2);
      v11 = sub_5544(35);
      v12 = 0;
      *buf = 0x100000002;
      v13 = *(v10 + 8);
      while (1)
      {
        v14 = *&buf[v12];
        if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
        {
          break;
        }

        v12 += 4;
        if (v12 == 8)
        {
          if ((v13 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_60;
        }
      }

      if ((v13 & v14) == 0)
      {
        v10 = v11;
      }

      if ((*(v10 + 8) & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_60:
      v31 = *v10;
      if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 881;
        v32 = "%25s:%-5d kVirtualAudioPlugInRoutingCategoryPlayAndRecordNoBT is now obsolete.";
        goto LABEL_69;
      }

      goto LABEL_70;
    }
  }

  else
  {
    switch(v4)
    {
      case 0x63707273:
        *buf = 1886545251;
        sub_75788(&v73, 0x70726563u, buf);
        v15 = sub_5544(2);
        v16 = sub_5544(35);
        v17 = 0;
        *buf = 0x100000002;
        v18 = *(v15 + 8);
        while (1)
        {
          v19 = *&buf[v17];
          if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
          {
            break;
          }

          v17 += 4;
          if (v17 == 8)
          {
            if ((v18 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_39;
          }
        }

        if ((v18 & v19) == 0)
        {
          v15 = v16;
        }

        if ((*(v15 + 8) & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_39:
        v31 = *v15;
        if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 887;
          v32 = "%25s:%-5d kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeaker is now obsolete.";
          goto LABEL_69;
        }

        goto LABEL_70;
      case 0x63726342:
        *buf = 1886216820;
        sub_75788(&v73, 0x706D6274u, buf);
        v20 = sub_5544(2);
        v21 = sub_5544(35);
        v22 = 0;
        *buf = 0x100000002;
        v23 = *(v20 + 8);
        while (1)
        {
          v24 = *&buf[v22];
          if (((v23 & v24) != 0) != ((*(v21 + 8) & v24) != 0))
          {
            break;
          }

          v22 += 4;
          if (v22 == 8)
          {
            goto LABEL_45;
          }
        }

        if ((v23 & v24) == 0)
        {
          v20 = v21;
        }

        v23 = *(v20 + 8);
LABEL_45:
        v4 = 1668441443;
        v30 = 1668441443;
        if (v23)
        {
          v33 = *v20;
          if (v33)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_Utilities.cpp";
              v78 = 1024;
              v79 = 905;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d kVirtualAudioPlugInRoutingCategoryRecordNoBT is now obsolete.", buf, 0x12u);
            }
          }
        }

        goto LABEL_49;
      case 0x63766374:
        v6 = 1768781411;
        v4 = 1668309362;
LABEL_76:
        _os_feature_enabled_impl();
        goto LABEL_77;
    }
  }

  if (v4 == 1668309362)
  {
LABEL_70:
    if (v6 == 1987208039 || (v4 = 1668309362, v6 == 1986098036))
    {
      if (_os_feature_enabled_impl())
      {
        v6 = 1987208039;
      }

      else
      {
        v6 = v6;
      }

      v4 = 1668509810;
    }

    goto LABEL_76;
  }

  v30 = v4;
LABEL_49:
  v34 = _os_feature_enabled_impl() ^ 1;
  if (v30 != 1668117868)
  {
    LOBYTE(v34) = 1;
  }

  if ((v34 & 1) == 0)
  {
    v4 = 1668114797;
    if (v6 != 1685089378)
    {
      if ((atomic_load_explicit(&qword_6E8630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8630))
      {
        word_6E8628 = sub_28B2C0();
        __cxa_guard_release(&qword_6E8630);
      }

      if ((word_6E8628 & 0x100) == 0 || (word_6E8628 & 1) == 0)
      {
        v4 = 1668117868;
      }
    }
  }

LABEL_77:
  if (a3)
  {
    if (v6 > 1919776354)
    {
      if (v6 > 1987081832)
      {
        if (v6 == 1987081833)
        {
          goto LABEL_115;
        }

        v41 = 30319;
      }

      else
      {
        if (v6 == 1919776355)
        {
          goto LABEL_115;
        }

        v41 = 26467;
      }

      v35 = v41 | 0x76700000;
    }

    else
    {
      if (v6 > 1768779618)
      {
        if (v6 == 1768779619)
        {
LABEL_114:
          v6 = 1987081839;
          goto LABEL_115;
        }

        if (v6 == 1768781411)
        {
          v6 = 1987081833;
          goto LABEL_115;
        }

LABEL_103:
        if (!sub_31135C())
        {
          goto LABEL_139;
        }

        v44 = *a2;
        if (*a2 > 1668313665)
        {
          if (v44 != 1668313715)
          {
            v45 = 29250;
LABEL_110:
            if (v44 == (v45 | 0x63700000))
            {
              goto LABEL_111;
            }

LABEL_139:
            if ((sub_31135C() & 1) == 0)
            {
              v56 = sub_5544(2);
              v57 = *v56;
              if (*v56)
              {
                if (os_log_type_enabled(*v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "VirtualAudio_Utilities.cpp";
                  v78 = 1024;
                  v79 = 948;
                  _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Not a VP vX device, so using the original behavior", buf, 0x12u);
                }
              }
            }

            v58 = *a2;
            if (*a2 > 1668313665)
            {
              if (v58 == 1668313666)
              {
                goto LABEL_115;
              }

              v59 = 29299;
            }

            else
            {
              if (v58 == 1668301427)
              {
                goto LABEL_115;
              }

              v59 = 24946;
            }

            if (v58 != (v59 | 0x63700000))
            {
              v60 = sub_5544(2);
              v37 = *v60;
              if (*v60)
              {
                if (os_log_type_enabled(*v60, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "VirtualAudio_Utilities.cpp";
                  v78 = 1024;
                  v79 = 950;
                  v38 = "%25s:%-5d Not in a play & record category, so using the original behavior";
                  goto LABEL_88;
                }
              }
            }

            goto LABEL_115;
          }
        }

        else if (v44 != 1668301427)
        {
          v45 = 24946;
          goto LABEL_110;
        }

LABEL_111:
        v46 = sub_5544(2);
        v47 = *v46;
        if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 942;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Is VP vX device, so we will turn this non chat mode into voice chat for now.", buf, 0x12u);
        }

        goto LABEL_114;
      }

      if (v6 == 1735222132)
      {
        v6 = 1987077987;
        goto LABEL_115;
      }

      v35 = 1768057203;
    }

    if (v6 == v35)
    {
      goto LABEL_115;
    }

    goto LABEL_103;
  }

  if (v6 == 1936749157)
  {
    v42 = sub_5544(2);
    v6 = 1937007472;
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 964;
      v38 = "%25s:%-5d Converting SpatialRecording to StereoCapture";
      v39 = v43;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_95;
    }
  }

  else if (v6 == 1919776355)
  {
    v36 = sub_5544(2);
    v6 = 1768779619;
    if (*(v36 + 8))
    {
      v37 = *v36;
      if (*v36)
      {
        if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 960;
          v38 = "%25s:%-5d Converting RemoteVoiceChat mode to VoiceChat mode since the VP is not (yet) in use";
LABEL_88:
          v39 = v37;
          v40 = OS_LOG_TYPE_DEBUG;
LABEL_95:
          _os_log_impl(&dword_0, v39, v40, v38, buf, 0x12u);
        }
      }
    }
  }

LABEL_115:
  if (a4 && sub_DB94C())
  {
    v48 = v4 | (v6 << 32);
    v76[0] = v48;
    v76[1] = 0;
    if (v4 == 1668309362 && v6 == 1768776806 || v4 == 1668114797 && v6 == 1685089378)
    {
      HIDWORD(v76[0]) = 1701013869;
      v48 = v76[0];
    }

    else
    {
      v53 = sub_5544(21);
      v54 = *v53;
      if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
      {
        sub_879F8(&__p, v76);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 183;
        v80 = 2080;
        v81 = p_p;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d Incorrect category/mode (%s). Echo Cancelled Input supported only for PlayAndRecord/Default routes", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v6 = HIDWORD(v48);
    LODWORD(v4) = v48;
  }

  if (v4 > 1668313714)
  {
    if (v4 == 1668313715)
    {
      v62 = sub_5544(14);
      v50 = *v62;
      if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 979;
        v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeaker is illegal here.";
        goto LABEL_161;
      }
    }

    else if (v4 == 1668440898)
    {
      v63 = sub_5544(14);
      v50 = *v63;
      if (*v63)
      {
        if (os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 983;
          v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryRecordNoBT is illegal here.";
          goto LABEL_161;
        }
      }
    }
  }

  else if (v4 == 1668313666)
  {
    v61 = sub_5544(14);
    v50 = *v61;
    if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 977;
      v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryPlayAndRecordNoBT is illegal here.";
      goto LABEL_161;
    }
  }

  else if (v4 == 1668301427)
  {
    v49 = sub_5544(14);
    v50 = *v49;
    if (*v49)
    {
      if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 981;
        v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeakerNoBT is illegal here.";
LABEL_161:
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, v51, buf, 0x12u);
      }
    }
  }

  v52 = *(a2 + 1);
  *a1 = v4;
  *(a1 + 4) = v6;
  *(a1 + 8) = v52;
  sub_44E44((a1 + 16), &v73);
  sub_477A0(v74[0]);
}