void sub_3B0DE4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3B1078(const __CFDictionary **a1)
{
  v2 = off_6CD9D0;
  v3 = 112;
  do
  {
    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    result = sub_47D0C(*a1, *v2);
    if (result)
    {
      v6 = sub_5544(14);
      v7 = sub_468EC(1, *v6, *(v6 + 8));
      v8 = v7;
      if (v7)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = v2[1];
          v11 = 136315906;
          v12 = "VirtualAudio_PlugIn.mm";
          v13 = 1024;
          v14 = 1179;
          v15 = 2080;
          v16 = "kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForRouteConfiguration";
          v17 = 2080;
          v18 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", &v11, 0x26u);
        }
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      *v10 = &off_6DDDD0;
      v10[2] = 1852797029;
    }

    v2 += 2;
    v3 -= 16;
  }

  while (v3);
  return result;
}

uint64_t sub_3B123C(uint64_t a1)
{
  v3 = 1886614639;
  v5 = 0;
  v4 = 0uLL;
  sub_4625C(&v4, &v3, &v4, 1uLL);
  *a1 = v4;
  *(a1 + 16) = v5;
  strcpy((a1 + 24), "cwdv");
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 72) = 44739242;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void *sub_3B12E4(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

uint64_t sub_3B131C(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "voice assistant input source");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_3B13BC(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3B13F0(uint64_t a1, uint64_t a2)
{
  sub_88CE8(a1, "voice assistant input source UUID");
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
    v6 = *(a2 + 8);
  }

  v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  *(a1 + 8) = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_3B149C(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

BOOL sub_3B14D0(uint64_t a1, const __CFDictionary **a2)
{
  v4 = off_6CD950;
  v5 = 128;
  do
  {
    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    if (sub_47D0C(*a2, *v4))
    {
      v114 = sub_5544(14);
      v115 = sub_468EC(1, *v114, *(v114 + 8));
      v116 = v115;
      if (v115 && os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        v117 = v4[1];
        *v162 = 136315906;
        v163 = "VirtualAudio_PlugIn.mm";
        v164 = 1024;
        v165 = 1179;
        v166 = 2080;
        v167 = "kVirtualAudioPlugInPropertyRouteConfigurationIsDisruptive";
        v168 = 2080;
        v169 = v117;
        _os_log_impl(&dword_0, v116, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", v162, 0x26u);
      }

      v118 = __cxa_allocate_exception(0x10uLL);
      *v118 = &off_6DDDD0;
      v118[2] = 1852797029;
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  v6 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
  if (!v6)
  {
    v109 = sub_5544(14);
    v110 = sub_468EC(1, *v109, *(v109 + 8));
    v111 = v110;
    if (v110 && os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      *v162 = 136315394;
      v163 = "VirtualAudio_PlugIn.mm";
      v164 = 1024;
      v165 = 5244;
      _os_log_impl(&dword_0, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [defaultDevice is NULL]: No default VAD could be found!", v162, 0x12u);
    }

    v112 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v112, "No default VAD could be found!");
  }

  v7 = sub_9F278(v6, 1);
  sub_44E44(&v150, v7);
  sub_38188(v162, a1, a2, 0, 1);
  v8 = v170;
  v9 = &unk_517000;
  if (v170 <= 1684108898)
  {
    if (v170 <= 1668047727)
    {
      if (v170 <= 1651794543)
      {
        if (v170 == 845504882 || v170 == 1635087471)
        {
          goto LABEL_52;
        }

        v12 = 1635213689;
        goto LABEL_42;
      }

      if (v170 == 1651794544 || v170 == 1651795060)
      {
LABEL_47:
        v13 = sub_5544(2);
        v14 = sub_5544(35);
        v15 = 0;
        *buf = 0x100000002;
        v16 = *(v13 + 8);
        while (1)
        {
          v17 = *&buf[v15];
          if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
          {
            break;
          }

          v15 += 4;
          if (v15 == 8)
          {
            if ((v16 & 1) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_65;
          }
        }

        if ((v16 & v17) == 0)
        {
          v13 = v14;
        }

        if (*(v13 + 8))
        {
LABEL_65:
          v22 = *v13;
          if (v22)
          {
            v23 = v22;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(&__p, v170);
              v24 = SHIBYTE(v148) >= 0 ? &__p : __p;
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 5373;
              *&buf[18] = 2080;
              *&buf[20] = v24;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d The initiation context trigger value: %s would be disruptive", buf, 0x1Cu);
              if (SHIBYTE(v148) < 0)
              {
                operator delete(__p);
              }
            }
          }
        }

LABEL_73:
        v25 = 1;
        goto LABEL_250;
      }

      v11 = 25204;
    }

    else if (v170 <= 1668050282)
    {
      if (v170 == 1668047728)
      {
        goto LABEL_47;
      }

      if (v170 == 1668047974)
      {
        goto LABEL_52;
      }

      v11 = 26735;
    }

    else
    {
      if (v170 > 1668051823)
      {
        if (v170 == 1668051824)
        {
          goto LABEL_47;
        }

        v10 = 1668314723;
        goto LABEL_46;
      }

      if (v170 == 1668050283)
      {
        goto LABEL_47;
      }

      v11 = 29545;
    }

    v10 = v11 | 0x636C0000;
    goto LABEL_46;
  }

  if (v170 > 1852796516)
  {
    if (v170 > 1969840751)
    {
      if (v170 > 1987012962)
      {
        if (v170 == 1987012963)
        {
          goto LABEL_52;
        }

        v10 = 2003329648;
      }

      else
      {
        if (v170 == 1969840752)
        {
          goto LABEL_52;
        }

        v10 = 1986357346;
      }

      goto LABEL_46;
    }

    if (v170 == 1852796517 || v170 == 1886352244)
    {
      goto LABEL_52;
    }

    v12 = 1918986611;
LABEL_42:
    if (v170 != v12)
    {
      goto LABEL_288;
    }

    goto LABEL_52;
  }

  if (v170 <= 1752132964)
  {
    if (v170 == 1684108899)
    {
      goto LABEL_47;
    }

    if (v170 == 1684628340)
    {
      goto LABEL_52;
    }

    v10 = 1751414371;
LABEL_46:
    if (v170 == v10)
    {
      goto LABEL_47;
    }

LABEL_288:
    v130 = sub_5544(14);
    v131 = *v130;
    if (*v130 && os_log_type_enabled(*v130, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v8);
      v132 = SHIBYTE(v148) >= 0 ? &__p : __p;
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4884;
      *&buf[18] = 2080;
      *&buf[20] = v132;
      _os_log_impl(&dword_0, v131, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported trigger %s.", buf, 0x1Cu);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(__p);
      }
    }

    v133 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v133, "Unsupported trigger %s.");
  }

  if (v170 > 1768764004)
  {
    if (v170 == 1768764005)
    {
      goto LABEL_52;
    }

    v12 = 1768780647;
    goto LABEL_42;
  }

  if (v170 != 1752132965)
  {
    v10 = 1752396914;
    goto LABEL_46;
  }

LABEL_52:
  if (v172[24])
  {
    v18 = v172;
  }

  else
  {
    v18 = &qword_6F5A00;
  }

  sub_75848(v149, v18);
  sub_269208(&__p, *(a1 + 112), v162, &qword_6F5A00, 0, v171);
  if (__p)
  {
    if (__p == 2)
    {
      v123 = sub_5544(14);
      v122 = 1852793716;
      v124 = sub_468EC(1, *v123, *(v123 + 8));
      v121 = v124;
      if (!v124 || !os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_286;
      }

      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 5261;
      v125 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyRouteConfigurationIsDisruptive.)";
    }

    else
    {
      if (__p == 1)
      {
        v119 = sub_5544(14);
        v120 = sub_468EC(1, *v119, *(v119 + 8));
        v121 = v120;
        v122 = 1852797556;
        if (v120 && os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 5261;
          _os_log_impl(&dword_0, v121, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyRouteConfigurationIsDisruptive.)", buf, 0x12u);
          v122 = 1852797556;
        }

LABEL_286:

        v128 = __cxa_allocate_exception(0x10uLL);
        *v128 = &off_6DDDD0;
        v128[2] = v122;
      }

      v126 = sub_5544(14);
      v122 = 2003329396;
      v127 = sub_468EC(1, *v126, *(v126 + 8));
      v121 = v127;
      if (!v127 || !os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_286;
      }

      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 5261;
      v125 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyRouteConfigurationIsDisruptive.)";
    }

    _os_log_impl(&dword_0, v121, OS_LOG_TYPE_ERROR, v125, buf, 0x12u);
    goto LABEL_286;
  }

  v144 = 0;
  v145 = 0;
  v143 = &v144;
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  v19 = *(a1 + 144);
  v20 = *(a1 + 152);
  if (v19 == v20)
  {
    v21 = 0;
    v141 = 0;
    v142 = 0;
  }

  else
  {
    do
    {
      if (((*(**v19 + 128))() & 1) == 0)
      {
        v152.__r_.__value_.__r.__words[0] = *(*v19 + 384);
        sub_147938(buf, v152.__r_.__value_.__l.__data_, HIDWORD(v152.__r_.__value_.__r.__words[0]), &v152);
      }

      v19 += 8;
    }

    while (v19 != v20);
    v21 = *&buf[8];
    v140 = *buf;
    v141 = *&buf[8];
    v142 = *&buf[16];
    if (*&buf[16])
    {
      *(*&buf[8] + 16) = &v141;
      *buf = &buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      v21 = 0;
      goto LABEL_76;
    }
  }

  v140 = &v141;
LABEL_76:
  sub_477A0(v21);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  v27 = v147;
  v26 = v148;
  if (v147 == v148)
  {
    v31 = 0;
    v138 = 0;
    v139 = 0;
LABEL_89:
    v137 = &v138;
    goto LABEL_90;
  }

  v28 = &buf[8];
  do
  {
    v29 = *sub_144AA4(buf, v28, &v152, &v135, *v27, HIDWORD(*v27));
    if (!v29)
    {
      operator new();
    }

    v30 = *(v29 + 8);
    if (v30)
    {
      do
      {
        v28 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v28 = *(v29 + 16);
        v54 = *v28 == v29;
        v29 = v28;
      }

      while (!v54);
    }

    v27 += 7;
  }

  while (v27 != v26);
  v31 = *&buf[8];
  v137 = *buf;
  v138 = *&buf[8];
  v139 = *&buf[16];
  if (!*&buf[16])
  {
    goto LABEL_89;
  }

  *(*&buf[8] + 16) = &v138;
  *buf = &buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  v31 = 0;
LABEL_90:
  sub_477A0(v31);
  v32 = &v135;
  v136[0] = 0;
  v136[1] = 0;
  v135 = v136;
  v33 = v140;
  v34 = v137;
  v152.__r_.__value_.__r.__words[0] = &v135;
  v152.__r_.__value_.__l.__size_ = v136;
  if (v140 == &v141)
  {
    size = v136;
LABEL_116:
    sub_3B3138(buf, v34, &v138, v32, size);
    v9 = &unk_517000;
  }

  else
  {
    while (v34 != &v138)
    {
      v35 = *(v33 + 7);
      v36 = *(v33 + 8);
      v37 = v34[7];
      v38 = v34[8];
      v39 = v36 < v38;
      if (v35 != v37)
      {
        v39 = v35 < v37;
      }

      if (v39)
      {
        sub_3AA604(&v152, v33 + 7);
        v40 = v33[1];
        if (v40)
        {
          do
          {
            v33 = v40;
            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          do
          {
            v41 = v33;
            v33 = v33[2];
          }

          while (*v33 != v41);
        }
      }

      else
      {
        v42 = v38 < v36;
        if (v35 != v37)
        {
          v42 = v37 < v35;
        }

        if (v42)
        {
          sub_3AA604(&v152, v34 + 7);
        }

        else
        {
          v43 = v33[1];
          v44 = v33;
          if (v43)
          {
            do
            {
              v33 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v33 = v44[2];
              v54 = *v33 == v44;
              v44 = v33;
            }

            while (!v54);
          }
        }

        v45 = *(v34 + 1);
        if (v45)
        {
          do
          {
            v34 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v34;
            v34 = *(v34 + 2);
          }

          while (*v34 != v46);
        }
      }

      if (v33 == &v141)
      {
        size = v152.__r_.__value_.__l.__size_;
        v32 = v152.__r_.__value_.__r.__words[0];
        goto LABEL_116;
      }
    }

    sub_3B3138(buf, v33, &v141, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
    v9 = &unk_517000;
  }

  v48 = sub_5544(2);
  if (*(v48 + 8))
  {
    v49 = *v48;
    if (v49)
    {
      v50 = v49;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        sub_238844(&v152, v135, v136);
        v51 = (v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v152 : v152.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5325;
        *&buf[18] = 2080;
        *&buf[20] = v51;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Differing Devices : %s", buf, 0x1Cu);
        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v52 = v135;
  if (v135 != v136)
  {
    do
    {
      v53 = *(v52 + 7);
      if (v53 > 1987276896)
      {
        if (v53 > 1987277416)
        {
          if (v53 != 1987277417)
          {
            if ((v53 - 1987279212) <= 7 && ((1 << (v53 - 108)) & 0xC1) != 0 || v53 == 1987738234)
            {
              goto LABEL_248;
            }

LABEL_239:
            v96 = *sub_5544(14);
            v97 = v96;
            if (v96)
            {
              v98 = v96;
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                sub_22170(&v152, *(v52 + 7));
                v99 = (v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v152 : v152.__r_.__value_.__r.__words[0];
                *buf = 136315650;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 5320;
                *&buf[18] = 2080;
                *&buf[20] = v99;
                _os_log_impl(&dword_0, v98, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid Virtual Audio Device Type %s", buf, 0x1Cu);
                if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v152.__r_.__value_.__l.__data_);
                }
              }
            }

LABEL_248:
            v25 = 1;
            goto LABEL_249;
          }
        }

        else
        {
          v54 = v53 == 1987276897 || v53 == 1987276900;
          if (!v54)
          {
            goto LABEL_239;
          }
        }
      }

      else if (v53 > 1986552182)
      {
        if (v53 != 1986552183 && v53 != 1986818404 && v53 != 1987011684)
        {
          goto LABEL_239;
        }
      }

      else if (v53 != 1986224492)
      {
        if (v53 == 1986291046 || v53 == 1986291305)
        {
          goto LABEL_248;
        }

        goto LABEL_239;
      }

      v57 = v52[1];
      if (v57)
      {
        do
        {
          v58 = v57;
          v57 = *v57;
        }

        while (v57);
      }

      else
      {
        do
        {
          v58 = v52[2];
          v54 = *v58 == v52;
          v52 = v58;
        }

        while (!v54);
      }

      v52 = v58;
    }

    while (v58 != v136);
  }

  v59 = v147;
  if (v147 != v148)
  {
    while (v59[1] || *v59 != 1986291046)
    {
      v59 += 14;
      if (v59 == v148)
      {
        goto LABEL_159;
      }
    }
  }

  if (v59 == v148)
  {
LABEL_159:
    v61 = sub_5544(14);
    v62 = sub_468EC(1, *v61, *(v61 + 8));
    v63 = v62;
    if (v62 && os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 5338;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No Default vad found", buf, 0x12u);
    }

    v64 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v64, "No Default vad found");
  }

  sub_87840(&v152, (v59 + 2), "", 5342);
  for (i = v152.__r_.__value_.__l.__size_; i != &v152; i = i->__r_.__value_.__l.__size_)
  {
    v66 = i->__r_.__value_.__r.__words[2];
    if ((*(v66 + 184) & 1) == 0)
    {
      memset(buf, 0, 24);
      strcpy(&buf[24], "cwdv");
      v154 = 0;
      v157[0] = 0;
      v157[1] = 0;
      v156 = v157;
      v160 = 0;
      v161 = 0;
      v159 = 0;
      v155 = 3;
      v158 = 44731050;
      v134 = sub_9DE4C(*(a1 + 128), v66, buf);
      sub_75788(&v143, v134, &v134);
      if (SHIBYTE(v161) < 0)
      {
        operator delete(v159);
      }

      sub_477A0(v157[0]);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }
  }

  sub_87980(&v152);
  v67 = sub_5544(2);
  v68 = sub_5544(35);
  v69 = 0;
  v9 = &unk_517000;
  *buf = 0x100000002;
  v70 = *(v67 + 8);
  while (1)
  {
    v71 = *&buf[v69];
    if (((v70 & v71) != 0) != ((*(v68 + 8) & v71) != 0))
    {
      break;
    }

    v69 += 4;
    if (v69 == 8)
    {
      if ((v70 & 1) == 0)
      {
        goto LABEL_187;
      }

      goto LABEL_179;
    }
  }

  if ((v70 & v71) == 0)
  {
    v67 = v68;
  }

  if (*(v67 + 8))
  {
LABEL_179:
    v72 = *v67;
    if (v72)
    {
      v73 = v72;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        sub_1DE4C8(&v152, v150, v151);
        v74 = (v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v152 : v152.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5353;
        *&buf[18] = 2080;
        *&buf[20] = v74;
        _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEBUG, "%25s:%-5d The current route configuration's default device has the following ouputs: %s", buf, 0x1Cu);
        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }
      }
    }
  }

LABEL_187:
  v75 = sub_5544(2);
  v76 = sub_5544(35);
  v77 = 0;
  *buf = 0x100000002;
  v78 = *(v75 + 8);
  while (1)
  {
    v79 = *&buf[v77];
    if (((v78 & v79) != 0) != ((*(v76 + 8) & v79) != 0))
    {
      break;
    }

    v77 += 4;
    if (v77 == 8)
    {
      if ((v78 & 1) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_195;
    }
  }

  if ((v78 & v79) == 0)
  {
    v75 = v76;
  }

  if (*(v75 + 8))
  {
LABEL_195:
    v80 = *v75;
    if (v80)
    {
      v81 = v80;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        sub_1DE4C8(&v152, v143, &v144);
        v82 = (v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v152 : v152.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5354;
        *&buf[18] = 2080;
        *&buf[20] = v82;
        _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEBUG, "%25s:%-5d The proposed route configuration's default device has the following ouputs: %s", buf, 0x1Cu);
        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }
      }
    }
  }

LABEL_203:
  v25 = 1;
  if (v145 == 1 && v151[1] == (&dword_0 + 1))
  {
    v83 = v150;
    if (v150 != v151)
    {
      v84 = v143;
      while (*(v83 + 7) == *(v84 + 7))
      {
        v85 = v83[1];
        v86 = v83;
        if (v85)
        {
          do
          {
            v83 = v85;
            v85 = *v85;
          }

          while (v85);
        }

        else
        {
          do
          {
            v83 = v86[2];
            v54 = *v83 == v86;
            v86 = v83;
          }

          while (!v54);
        }

        v87 = v84[1];
        if (v87)
        {
          do
          {
            v88 = v87;
            v87 = *v87;
          }

          while (v87);
        }

        else
        {
          do
          {
            v88 = v84[2];
            v54 = *v88 == v84;
            v84 = v88;
          }

          while (!v54);
        }

        v84 = v88;
        if (v83 == v151)
        {
          goto LABEL_219;
        }
      }

      goto LABEL_248;
    }

LABEL_219:
    LODWORD(v152.__r_.__value_.__l.__data_) = *(v143 + 7);
    strcpy(buf, "pytpbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v89 = sub_542F0(&v152, buf, 0, 0);
    v91 = v89;
    if (v89 || (v90 & 1) == 0)
    {
      v129 = __cxa_allocate_exception(0x10uLL);
      *v129 = &off_6DDDD0;
      v129[2] = v91;
    }

    v25 = v89 != 0x7068707700000000 && v89 != 0x7073706B00000000;
  }

LABEL_249:
  sub_477A0(v136[0]);
  sub_477A0(v138);
  sub_477A0(v141);
  sub_477A0(v144);
  *buf = &v147;
  sub_847A8(buf);
  sub_76304(v149);
LABEL_250:
  v100 = sub_5544(2);
  v101 = sub_5544(35);
  v102 = 0;
  *buf = v9[233];
  v103 = *(v100 + 8);
  while (1)
  {
    v104 = *&buf[v102];
    if (((v103 & v104) != 0) != ((*(v101 + 8) & v104) != 0))
    {
      break;
    }

    v102 += 4;
    if (v102 == 8)
    {
      if ((v103 & 1) == 0)
      {
        goto LABEL_264;
      }

      goto LABEL_258;
    }
  }

  if ((v103 & v104) == 0)
  {
    v100 = v101;
  }

  if (*(v100 + 8))
  {
LABEL_258:
    v105 = *v100;
    if (v105)
    {
      v106 = v105;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
      {
        v107 = "not be";
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *buf = 136315650;
        if (v25)
        {
          v107 = "be";
        }

        *&buf[12] = 1024;
        *&buf[14] = 5377;
        *&buf[18] = 2080;
        *&buf[20] = v107;
        _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEBUG, "%25s:%-5d The proposed route configuration would %s disruptive", buf, 0x1Cu);
      }
    }
  }

LABEL_264:
  sub_4AE8C(v162);
  sub_477A0(v151[0]);
  return v25;
}

void sub_3B2AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void **a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  sub_477A0(a13);
  sub_477A0(a16);
  sub_477A0(a19);
  sub_477A0(a22);
  a21 = &a25;
  sub_847A8(&a21);
  sub_76304(&a28);
  sub_4AE8C(va);
  sub_477A0(*(v51 + 8));
  _Unwind_Resume(a1);
}

void *sub_3B2C2C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    while (*(a1 + 7) != 1667850851)
    {
      v2 = a1[1];
      if (v2)
      {
        do
        {
          v3 = v2;
          v2 = *v2;
        }

        while (v2);
      }

      else
      {
        do
        {
          v3 = a1[2];
          v4 = *v3 == a1;
          a1 = v3;
        }

        while (!v4);
      }

      a1 = v3;
      if (v3 == a2)
      {
        return a2;
      }
    }

    return a1;
  }

  return a2;
}

void *sub_3B2C90(void *a1, void *a2)
{
  if (a1 != a2)
  {
    while (*(a1 + 7) != 1667854445)
    {
      v2 = a1[1];
      if (v2)
      {
        do
        {
          v3 = v2;
          v2 = *v2;
        }

        while (v2);
      }

      else
      {
        do
        {
          v3 = a1[2];
          v4 = *v3 == a1;
          a1 = v3;
        }

        while (!v4);
      }

      a1 = v3;
      if (v3 == a2)
      {
        return a2;
      }
    }

    return a1;
  }

  return a2;
}

std::string *sub_3B2CF4(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      std::to_string(&v9, *(a2 + 16));
      v7 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
      v8 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v9.__r_.__value_.__r.__words[2]) : v9.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      a2 = *(a2 + 8);
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_3B2DD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B2DF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3B2DDCLL);
}

CFArrayRef sub_3B2E0C(uint64_t a1)
{
  sub_4788C(&__p, *(a1 + 8));
  v2 = *(a1 + 8);
  v3 = __p;
  if (v2)
  {
    v4 = *a1;
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      *v3++ = v6;
      v5 -= 8;
    }

    while (v5);
    v3 = __p;
  }

  v7 = sub_47904(v3, v10);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v7;
}

void sub_3B2E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B2EA4(uint64_t a1, CFTypeRef cf)
{
  v3 = CFCopyDescription(cf);
  sub_1267C(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_3B2EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3B2F0C(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = *a2;
  if (v3 > v4 >> 2)
  {
    v7 = sub_5544(14);
    v8 = sub_468EC(1, *v7, *(v7 + 8));
    v9 = v8;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "StandardUtilities.h";
      v17 = 1024;
      v18 = 187;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): provided list exceeds the size of the provided array.", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "provided list exceeds the size of the provided array.");
  }

  if (!v4)
  {
    v11 = sub_5544(14);
    v12 = sub_468EC(1, *v11, *(v11 + 8));
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "StandardUtilities.h";
      v17 = 1024;
      v18 = 188;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): ioDataSize is 0.", &v15, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "ioDataSize is 0.");
  }

  v5 = *(result + 8);
  if (v5 != result)
  {
    v6 = 0;
    do
    {
      *(a3 + 4 * v6++) = *(v5 + 16);
      v5 = *(v5 + 8);
    }

    while (v5 != result);
  }

  *a2 = 4 * v3;
  return result;
}

double sub_3B3138(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a4;
  *(&v12 + 1) = a5;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_3AA604(&v12, v7 + 7);
      v8 = *(v7 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v7 + 2);
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != a3);
  }

  *a1 = a3;
  result = *&v12;
  *(a1 + 8) = v12;
  return result;
}

__n128 sub_3B31CC(__n128 *a1, const __CFArray *a2, __n128 *a3)
{
  sub_281670(&v7, a2);
  if (v9 == 1)
  {
    a1->n128_u64[0] = 0;
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    v5 = v7;
    sub_46980(a1, v7, v8, (v8 - v7) >> 2);
    if (v5)
    {

      operator delete(v5);
    }
  }

  else
  {
    result = *a3;
    *a1 = *a3;
    a1[1].n128_u64[0] = a3[1].n128_u64[0];
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
  }

  return result;
}

void sub_3B3270(std::string *a1, const __CFArray *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  __p = 0uLL;
  v11 = 0;
  sub_3B31CC(&v12, a2, &__p);
  if (__p.n128_u64[0])
  {
    operator delete(__p.n128_u64[0]);
  }

  v3 = v12;
  if (v12.n128_u64[0] != v12.n128_u64[1])
  {
    v4 = v12.n128_u64[0];
    do
    {
      v13 = *v4;
      __p.n128_u64[0] = 0x676C6F6270747970;
      __p.n128_u32[2] = 0;
      v5 = sub_542F0(&v13, &__p, 0, 0);
      *(&v8 + 1) = v6;
      *&v8 = v5;
      v7 = v8 >> 32;
      if ((v7 & 0x100000000) == 0)
      {
        LODWORD(v7) = 0;
      }

      *v4++ = v7;
    }

    while (v4 != v3.n128_u64[1]);
  }

  sub_1D9C0C(a1, v3.n128_u64[0], v3.n128_u64[1]);
  if (v3.n128_u64[0])
  {
    operator delete(v3.n128_u64[0]);
  }
}

uint64_t sub_3B3394(const __CFDictionary *a1, char *__s)
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
  if (Value)
  {
    v7 = sub_11DA8(Value);
    v8 = HIBYTE(v7);
  }

  else
  {
    v8 = 0;
    LOBYTE(v7) = 0;
  }

  return v7 | (v8 << 8);
}

uint64_t sub_3B34B0()
{
  if (MGGetBoolAnswer())
  {
    v0 = 1;
  }

  else
  {
    if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
    {
      byte_709638 = MGGetBoolAnswer();
      __cxa_guard_release(&qword_709640);
    }

    v0 = byte_709638;
  }

  return v0 & 1;
}

void sub_3B3548(uint64_t a1)
{
  sub_3B3580(a1);

  operator delete();
}

uint64_t sub_3B3580(uint64_t a1)
{
  *a1 = off_6CD8B8;
  sub_1659B0(a1);
  v11 = (a1 + 576);
  sub_3B3724(&v11);
  v2 = *(a1 + 568);
  *(a1 + 568) = 0;

  sub_3A09E8((a1 + 544), 0);
  if (*(a1 + 536) == 1)
  {
    v3 = *(a1 + 512);
    if (v3)
    {
      *(a1 + 520) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 504);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 488);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v11 = (a1 + 448);
  sub_847A8(&v11);
  sub_477A0(*(a1 + 416));
  sub_477A0(*(a1 + 392));
  v6 = *(a1 + 360);
  if (v6)
  {
    *(a1 + 368) = v6;
    operator delete(v6);
  }

  std::mutex::~mutex((a1 + 296));
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  sub_3B37A4((a1 + 216));
  sub_477A0(*(a1 + 184));
  v7 = *(a1 + 144);
  if (v7)
  {
    *(a1 + 152) = v7;
    operator delete(v7);
  }

  sub_3A0070((a1 + 136), 0);
  v8 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  sub_3A00EC((a1 + 112), 0);

  return sub_40B120(a1);
}

void sub_3B3724(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        sub_1873C8(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_3B37A4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 16) == 1)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        CFRelease(v2);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t New_VirtualAudio_PlugIn(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xF8u, 0xBBu, 0x1Cu, 0x28u, 0xBAu, 0xE8u, 0x11u, 0xD6u, 0x9Cu, 0x31u, 0, 3u, 0x93u, 0x15u, 0xCDu, 0x46u);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

id *sub_3B3DC8(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

_BYTE *sub_3B3E00(int *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    v22 = sub_5544(14);
    v23 = sub_468EC(1, *v22, *(v22 + 8));
    v24 = v23;
    if (v23)
    {
      v25 = v23;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_4E5634(&__str, a3);
        v26 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        v41 = 1024;
        v42 = 5429;
        v43 = 2080;
        v44 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Listener updated about %s, instead of time sync device creation!", buf, 0x1Cu);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Listener updated about %s, instead of time sync device creation!");
  }

  if (*a1 != 1986291046 && *a1 != 1986817911)
  {
    v28 = sub_5544(14);
    v29 = sub_468EC(1, *v28, *(v28 + 8));
    v30 = v29;
    if (v29)
    {
      v31 = v29;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__str, *a1);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        v41 = 1024;
        v42 = 5430;
        v43 = 2080;
        v44 = p_str;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Listener updated about time sync device creation, but virtual audio device type is %s instead of Default or Low-Latency", buf, 0x1Cu);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }

    v33 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v33, "Listener updated about time sync device creation, but virtual audio device type is %s instead of Default or Low-Latency");
  }

  sub_27A4();
  v34 = (*(qword_6E94F8 + 16))(&qword_6E94F8);
  v7 = sub_758D4(*a1, a1[1], *(a4 + 144), *(a4 + 152));
  if (v7)
  {
    v8 = v7;
    sub_27A4();
    v35 = (*(qword_6E94F8 + 16))(&qword_6E94F8);
    v9 = *(v8 + 872);
    v10 = (v9 + 276);
    *buf = *(v9 + 276);
    sub_106FA0(&__str, buf);
    if (v39)
    {
      v11 = sub_5544(17);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "AggregateDevice.cpp";
        v41 = 1024;
        v42 = 811;
        v43 = 2080;
        v44 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Clock to TimeSync %s", buf, 0x1Cu);
      }

      v14 = sub_5544(17);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "AggregateDevice.cpp";
        v41 = 1024;
        v42 = 1042;
        v43 = 2080;
        v44 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d gPTP clock is %s", buf, 0x1Cu);
      }

      std::string::operator=((v9 + 488), &__str);
      if ((*(*v9 + 480))(v9))
      {
        atomic_store(1u, (v9 + 485));
      }

      else
      {
        atomic_store(0, (v9 + 485));
        buf[0] = 0;
        v45 = 0;
        sub_32235C(v9, buf);
      }
    }

    else
    {
      v17 = sub_5544(17);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        v36 = *v10;
        sub_68108(&__p, &v36);
        v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "AggregateDevice.cpp";
        v41 = 1024;
        v42 = 807;
        v43 = 2080;
        v44 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d TimeSync clock is not valid for device %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v39 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_210C50(&v35);
  }

  return sub_210C50(&v34);
}

float sub_3B4424(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_27A4();
  v31 = (*(qword_6E94F8 + 16))();
  v8 = a1[27];
  if (*v8 == 1 && (*(v8 + 24) ? (v9 = a3 == 1650814258) : (v9 = 0), v9 ? (v10 = a4 == 0) : (v10 = 0), v10))
  {
    v29 = *(v8 + 40);
  }

  else
  {
    v11 = a1[18];
    if (a1[19] == v11)
    {
      goto LABEL_23;
    }

    v12 = 0;
    v13 = 0;
LABEL_11:
    v14 = 0;
    v15 = *(v11 + 8 * v12);
    while (1)
    {
      v16 = v14;
      v17 = sub_9F278(v15, v14 & 1);
      v20 = *(v17 + 8);
      v18 = v17 + 8;
      v19 = v20;
      if (v20)
      {
        v21 = v18;
        do
        {
          v22 = *(v19 + 28);
          v23 = v22 >= a2;
          v24 = v22 < a2;
          if (v23)
          {
            v21 = v19;
          }

          v19 = *(v19 + 8 * v24);
        }

        while (v19);
        if (v21 != v18 && *(v21 + 28) <= a2 && (*(**(v15 + 872) + 368))(*(v15 + 872), a3, a4, 0))
        {
          break;
        }
      }

      v14 = 1;
      if (v16)
      {
        v11 = a1[18];
        v12 = ++v13;
        if (v13 >= ((a1[19] - v11) >> 3))
        {
LABEL_23:
          v25 = sub_5544(14);
          v26 = sub_468EC(1, *v25, *(v25 + 8));
          v27 = v26;
          if (v26)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v33 = "VirtualAudio_PlugIn.mm";
              v34 = 1024;
              v35 = 1777;
              v36 = 1024;
              v37 = a2;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Unable to locate a VirtualAudio_Device that uses VirtualAudioPortID %u.", buf, 0x18u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = 1852797029;
        }

        goto LABEL_11;
      }
    }

    v29 = (*(**(v15 + 872) + 376))(*(v15 + 872), a3, a4, 0);
  }

  sub_210C50(&v31);
  return v29;
}

uint64_t sub_3B4724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_23C400(*(v3 + 120), *(a1 + 16));
  v14 = 0x696D646600000000;
  v15 = 0;
  v16 = 0;
  v17 = v18;
  v18[0] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[1] = 0;
  v18[2] = v19;
  v19[2] = v20;
  v20[0] = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20[1] = 0;
  v20[2] = v21;
  v21[2] = v22;
  memset(v22, 0, sizeof(v22));
  v24 = 0;
  v23 = 0;
  v25 = 1668248944;
  v26 = 1852796517;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v30 = 0x756E64656175746FLL;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  v37 = 0u;
  v38 = 0u;
  v39 = 1065353216;
  v40 = 0u;
  v41 = 0u;
  v42 = 1065353216;
  v43 = 0;
  v44 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 256;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v51 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v4 = *(v3 + 112);
  sub_AEEB4(v6, *(v3 + 120));
  sub_BE918(&v9, v4, &v14, &v7, v6);
  sub_76304(v6);
  sub_D169C(v8[0]);
  *a2 = v9;
  sub_20309C(a2 + 8, &v10);
  *(a2 + 64) = v13;
  *(a2 + 80) = 0;
  *(a2 + 896) = 0;
  if (v12 == 1)
  {
    sub_175F78(v11);
  }

  return sub_4AF90(&v14);
}

void sub_3B48D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  if (v23 == 1)
  {
    sub_175F78(va);
  }

  sub_4AF90(va1);
  _Unwind_Resume(a1);
}

__n128 sub_3B4928(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CDE40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_BYTE *sub_3B49C4(CFArrayRef *a1, uint64_t a2)
{
  sub_27A4();
  v6 = (*(qword_6E94F8 + 16))();
  sub_AEEB4(v5, *(a2 + 120));
  sub_AF140(a1, a2, v5);
  sub_76304(v5);
  return sub_210C50(&v6);
}

void sub_3B4A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_76304(&a9);
  sub_210C50((v9 - 17));
  _Unwind_Resume(a1);
}

uint64_t sub_3B4A7C(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (a2[1] - *a2 != 48 || *(v2 + 1) - *v2 < 0x208uLL || *(v2 + 4) - *(v2 + 3) < 0x308uLL)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = *(v8 + 72);
        v10 = *(a1 + 88);
        v11 = *(a1 + 84) + 1;
        *(a1 + 84) = v11;
        v12 = (*(a1 + 68) / *(a1 + 64)) * (v11 - v10);
        if (v12 >= *(a1 + 72))
        {
          *(a1 + 88) = v11;
          *(a1 + 80) = 0;
        }

        else if (v12 >= *(a1 + 76) && (*(a1 + 80) & 1) == 0)
        {
          *(a1 + 80) = 1;
          v13 = *(a1 + 40);
          if (!v13 || (v14 = *(a1 + 32), (v15 = std::__shared_weak_count::lock(v13)) == 0))
          {
            sub_175EA0();
          }

          v16 = v15;
          p_shared_weak_owners = &v15->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v15);
          block[0] = _NSConcreteStackBlock;
          block[1] = 1174405120;
          block[2] = sub_3B4D98;
          block[3] = &unk_6CE3F0;
          block[4] = a1;
          block[5] = v14;
          v38 = v16;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v39 = v8;
          v40 = v7;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(v9, block);
          if (v40)
          {
            sub_1A8C0(v40);
          }

          if (v38)
          {
            std::__shared_weak_count::__release_weak(v38);
          }

          std::__shared_weak_count::__release_weak(v16);
        }
      }

      sub_1A8C0(v7);
    }
  }

  v18 = *(a1 + 144);
  if (*(a1 + 148) == v18)
  {
    return 0;
  }

  v20 = *(a1 + 104) - *(a1 + 96);
  if (!v20 || *(a1 + 128) == *(a1 + 120))
  {
    return 0;
  }

  *(a1 + 148) = v18;
  v21 = v20 >> 3;
  v22 = **a2;
  v23 = *(*a2 + 3);
  if (v21 >= 0x80)
  {
    LODWORD(v21) = 128;
  }

  *(v22 + 4) = 4 * v21;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0u;
  *(v22 + 136) = 0u;
  *(v22 + 152) = 0u;
  *(v22 + 168) = 0u;
  *(v22 + 184) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 232) = 0u;
  *(v22 + 248) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 264) = 0u;
  *(v22 + 280) = 0u;
  *(v22 + 296) = 0u;
  *(v22 + 312) = 0u;
  *(v22 + 328) = 0u;
  *(v22 + 344) = 0u;
  *(v22 + 360) = 0u;
  *(v22 + 376) = 0u;
  *(v22 + 392) = 0u;
  *(v22 + 408) = 0u;
  *(v22 + 424) = 0u;
  *(v22 + 440) = 0u;
  *(v22 + 456) = 0u;
  *(v22 + 472) = 0u;
  *(v22 + 488) = 0u;
  *(v22 + 504) = 0u;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v21;
  }

  v24 = 8;
  v25 = *(a1 + 96);
  do
  {
    v26 = *v25++;
    v27 = v26;
    *(v22 + v24) = v27;
    v24 += 4;
    --v21;
  }

  while (v21);
  v28 = *(a1 + 144);
  *v23 = v28;
  *v22 = v28;
  v30 = *(a1 + 120);
  v29 = *(a1 + 128);
  if (((v29 - v30) >> 3) >= 0xC0)
  {
    LODWORD(v31) = 192;
  }

  else
  {
    v31 = (v29 - v30) >> 3;
  }

  v23[1] = 4 * v31;
  v32 = (v23 + 2);
  bzero(v23 + 2, 0x300uLL);
  if (v29 == v30)
  {
    return 1296;
  }

  v33 = *(a1 + 120);
  if (v31 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v31;
  }

  result = 1296;
  do
  {
    v35 = *v33++;
    v36 = v35;
    *v32++ = v36;
    --v34;
  }

  while (v34);
  return result;
}

void sub_3B4D98(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[5] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      if (*(v2 + 16))
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = a1[7];
        *(v2 + 104) = *(v2 + 96);
        *(v2 + 128) = *(v2 + 120);
        v11 = *(v2 + 84);
        v13 = *(v2 + 64);
        v12 = *(v2 + 68);
        (*(*v10 + 176))(v10, 3508);
        (*(*v10 + 176))(v10, 3520, v2 + 120);
        *(v2 + 144) = (v12 / v13) * v11;
      }

      sub_1A8C0(v8);
    }
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_3B4F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v11 = __cxa_begin_catch(exception_object);
      v12 = sub_5544(26);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v14 = (*(*v11 + 16))(v11);
        LODWORD(a9) = 136315650;
        *(&a9 + 4) = "AncFilterLoggerV2.cpp";
        WORD6(a9) = 1024;
        *(&a9 + 14) = 172;
        WORD1(a10) = 2080;
        *(&a10 + 4) = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception thrown %s.", &a9, 0x1Cu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        v16 = v15;
        v17 = sub_5544(26);
        v18 = *v17;
        if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          if (*(v16 + 23) < 0)
          {
            v16 = *v16;
          }

          LODWORD(a9) = 136315650;
          *(&a9 + 4) = "AncFilterLoggerV2.cpp";
          WORD6(a9) = 1024;
          *(&a9 + 14) = 173;
          WORD1(a10) = 2080;
          *(&a10 + 4) = v16;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception thrown %s.", &a9, 0x1Cu);
        }
      }

      else
      {
        v19 = sub_5544(26);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(a9) = 136315394;
          *(&a9 + 4) = "AncFilterLoggerV2.cpp";
          WORD6(a9) = 1024;
          *(&a9 + 14) = 174;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown.", &a9, 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x3B4EC4);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B514C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_3B519C(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_3B51D0(uint64_t result, float a2)
{
  *(result + 72) = a2;
  *(result + 76) = fmaxf(a2 + -0.1, 0.0);
  return result;
}

uint64_t sub_3B51EC(uint64_t a1, int a2, float a3, float a4)
{
  *(a1 + 64) = a3;
  *(a1 + 68) = a2;
  result = (*(*a1 + 64))(a1, a4);
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_3B5250(uint64_t a1)
{
  if (atomic_exchange_explicit((a1 + 8), 1u, memory_order_acquire))
  {
    v2 = -20;
    while (!__CFADD__(v2++, 1))
    {
      usleep(0x1388u);
      if ((atomic_exchange_explicit((a1 + 8), 1u, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v6 = sub_5544(26);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "AncFilterLoggerV2.cpp";
      v10 = 1024;
      v11 = 130;
      v12 = 2080;
      v13 = "CloseFile";
      v14 = 1024;
      v15 = 100;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed to aquire lock after %u ms", &v8, 0x22u);
    }
  }

  else
  {
LABEL_5:
    v4 = *(a1 + 48);
    if (v4)
    {
      fclose(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      fclose(v5);
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    atomic_store(0, (a1 + 8));
  }
}

BOOL sub_3B5394(void *a1, const char **a2)
{
  v3 = a1[3];
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!a1[2])
  {
    goto LABEL_14;
  }

  v7 = *a2;
  if (a2[1] - *a2 != 48)
  {
    goto LABEL_14;
  }

  v8 = *a2;
  if (v7[23] < 0)
  {
    v8 = *v7;
  }

  v9 = v7 + 24;
  if (v7[47] < 0)
  {
    v9 = *v9;
  }

  if ((!a1[6] || !a1[7]) && (v10 = fopen(v8, "w"), (a1[6] = v10) != 0))
  {
    v11 = fopen(v9, "w");
    a1[7] = v11;
    v12 = v11 != 0;
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

  sub_1A8C0(v6);
  return v12;
}

void sub_3B548C(void *a1)
{
  sub_3B54C4(a1);

  operator delete();
}

void *sub_3B54C4(void *a1)
{
  *a1 = off_6CE398;
  sub_3B5250(a1);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *a1 = off_6CE430;
  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_3B558C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6CE498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3B5600(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == *(a1 + 16))
  {
    return 1;
  }

  do
  {
    result = (*(**v1 + 32))();
    if ((result & 1) == 0)
    {
      break;
    }

    v1 += 16;
  }

  while (v1 != *(a1 + 16));
  return result;
}

uint64_t sub_3B5678(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == *(a1 + 96))
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "MasterMuteControl_HAL_Common.cpp";
      v10 = 1024;
      v11 = 35;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): mute control list is empty", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  do
  {
    v3 = *v1;
    v1 += 2;
    result = (*(*v3 + 24))(v3);
  }

  while (v1 != *(a1 + 96));
  return result;
}

uint64_t sub_3B57D4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == *(a1 + 96))
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "MasterMuteControl_HAL_Common.cpp";
      v10 = 1024;
      v11 = 24;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): mute control list is empty", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  do
  {
    v3 = *v1;
    v1 += 2;
    result = (*(*v3 + 16))(v3);
  }

  while (v1 != *(a1 + 96));
  return result;
}

void sub_3B5928(uint64_t a1)
{
  sub_3B5964((a1 - 80));

  operator delete();
}

uint64_t sub_3B5964(void *a1)
{
  *a1 = &off_6DAF68;
  a1[10] = off_6DAFE0;
  v2 = a1[11];
  if (v2)
  {
    v3 = a1[12];
    v4 = a1[11];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          sub_1A8C0(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[11];
    }

    a1[12] = v2;
    operator delete(v4);
  }

  return sub_13BFA8(a1);
}

uint64_t sub_3B5A20(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == *(a1 + 96))
  {
    return 1;
  }

  do
  {
    result = (*(**v1 + 32))();
    if ((result & 1) == 0)
    {
      break;
    }

    v1 += 16;
  }

  while (v1 != *(a1 + 96));
  return result;
}

void sub_3B5A90(void *a1)
{
  sub_3B5964(a1);

  operator delete();
}

void sub_3B5ACC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "MasterMuteControl_HAL_Common.cpp";
      v23 = 1024;
      v24 = 64;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inSubMuteControl is NULL]: Argument inSubMuteControl is NULL", &v21, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "Argument inSubMuteControl is NULL");
  }

  v4 = a1[12];
  v5 = a1[13];
  if (v4 >= v5)
  {
    v8 = a1[11];
    v9 = (v4 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_189A00();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      sub_6ACD8();
    }

    v13 = (16 * v9);
    v14 = a2[1];
    *v13 = v2;
    v13[1] = v14;
    *a2 = 0;
    a2[1] = 0;
    v7 = 16 * v9 + 16;
    v15 = a1[11];
    v16 = a1[12] - v15;
    v17 = 16 * v9 - v16;
    memcpy(v13 - v16, v15, v16);
    a1[11] = v17;
    a1[12] = v7;
    a1[13] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = v2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = (v4 + 2);
  }

  a1[12] = v7;
}

void sub_3B5CD8()
{
  *v30 = 0x696D6932696D6931;
  sub_1E54B0(__p, v30, 2);
  sub_1F68D0(&qword_6F5B20, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_46980(&v21, qword_6F5B80, qword_6F5B88[0], (qword_6F5B88[0] - qword_6F5B80) >> 2);
  *v30 = 1768778033;
  sub_1E54B0(&v8, v30, 1);
  qmemcpy(v30, "ivpvovpvcgpvcvmrgcrvgsmv", sizeof(v30));
  memset(v7, 0, sizeof(v7));
  sub_4625C(v7, v30, v31, 6uLL);
  qmemcpy(v30, " wargcrvgsmv", 12);
  memset(v6, 0, sizeof(v6));
  sub_4625C(v6, v30, &v30[12], 3uLL);
  *v30 = 0x766D736776726367;
  memset(v5, 0, sizeof(v5));
  sub_4625C(v5, v30, &v30[8], 2uLL);
  sub_1E5534(v30, 1953460273, &v8, 1869442665, -1, v7);
  sub_1E5534(v16, 1650811245, &v21, 1935827812, 1, v6);
  sub_1E5534(v11, 1650811245, &v21, 1668441188, 0, v6);
  sub_1E5534(&v25, 1634495520, &qword_6F5B80, 1852796517, -1, v5);
  if ((atomic_load_explicit(&qword_6F5C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5C20))
  {
    sub_1E560C(v24, v30);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    sub_1E56A8(&v2, v24, &v25, 1uLL);
  }

  if ((atomic_load_explicit(&qword_6F5C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5C60))
  {
    sub_1E560C(v24, v16);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    sub_1E56A8(&v2, v24, &v25, 1uLL);
  }

  if ((atomic_load_explicit(&qword_6F5CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5CA0))
  {
    sub_1E560C(v24, v11);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    sub_1E56A8(&v2, v24, &v25, 1uLL);
  }

  if ((atomic_load_explicit(&qword_6F5CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5CE0))
  {
    sub_1E560C(v24, &v25);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    sub_1E56A8(&v2, v24, &v25, 1uLL);
  }

  v24[0] = &unk_6F5BE8;
  sub_1E5A9C(&unk_6F5B28, v24);
  v24[0] = &unk_6F5C28;
  sub_1E5A9C(&unk_6F5B28, v24);
  v24[0] = &unk_6F5C68;
  sub_1E5A9C(&unk_6F5B28, v24);
  v24[0] = &unk_6F5CA8;
  sub_1E5A9C(&unk_6F5B28, v24);
  qword_6F5B40 = &unk_6F5BE8;
  v0 = v21;
  sub_16B928(&qword_6F5B88[2], v21, v22, (v22 - v21) >> 2);
  sub_16B928(&qword_6F5BB0, *&v30[8], *&v30[16], (*&v30[16] - *&v30[8]) >> 2);
  sub_16B928(qword_6F5BC8, qword_6F5BB0, unk_6F5BB8, (unk_6F5BB8 - qword_6F5BB0) >> 2);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (*&v30[8])
  {
    *&v30[16] = *&v30[8];
    operator delete(*&v30[8]);
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }

  if (v6[0])
  {
    operator delete(v6[0]);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v0)
  {
    operator delete(v0);
  }

  memset(v24, 0, 24);
  sub_46980(v24, qword_6F5B80, qword_6F5B88[0], (qword_6F5B88[0] - qword_6F5B80) >> 2);
  *v30 = 0x726D76637670766FLL;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  sub_4625C(&v21, v30, &v30[8], 2uLL);
  sub_1E5534(v30, 1650811245, v24, 1935827812, 1, &v21);
  sub_1E5534(v16, 1650811245, v24, 1668441188, 0, &v21);
  sub_1E5534(v11, 1634495520, &qword_6F5B80, 1852796517, -1, &v21);
  if ((atomic_load_explicit(&qword_6F5D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5D20))
  {
    sub_1E560C(&v25, v30);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_1E56A8(&v8, &v25, v30, 1uLL);
  }

  if ((atomic_load_explicit(&qword_6F5D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5D60))
  {
    sub_1E560C(&v25, v16);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_1E56A8(&v8, &v25, v30, 1uLL);
  }

  if ((atomic_load_explicit(&qword_6F5DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5DA0))
  {
    sub_1E560C(&v25, v11);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_1E56A8(&v8, &v25, v30, 1uLL);
  }

  v25 = &unk_6F5CE8;
  sub_1E5A9C(&unk_6F5B48, &v25);
  v25 = &unk_6F5D28;
  sub_1E5A9C(&unk_6F5B48, &v25);
  v25 = &unk_6F5D68;
  sub_1E5A9C(&unk_6F5B48, &v25);
  qword_6F5B60 = &unk_6F5D28;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (*&v30[8])
  {
    *&v30[16] = *&v30[8];
    operator delete(*&v30[8]);
  }

  if (v21)
  {
    operator delete(v21);
  }

  if (v24[0])
  {
    operator delete(v24[0]);
  }
}

void sub_3B665C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p)
{
  sub_1E5808(&a21);
  sub_1E588C((v44 - 176));
  __cxa_guard_abort(&qword_6F5DA0);
  sub_1E588C(&a28);
  sub_1E588C(&a36);
  sub_1E588C((v44 - 112));
  if (__p)
  {
    operator delete(__p);
  }

  v46 = *(v44 - 240);
  if (v46)
  {
    operator delete(v46);
  }

  sub_1E5B6C(&qword_6F5B20);
  _Unwind_Resume(a1);
}

void sub_3B691C(uint64_t a1)
{
  v1 = sub_11EDC8(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_5544(23);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v2);
        if (v7 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v9 = "VirtualStream.cpp";
        v10 = 1024;
        v11 = 989;
        v12 = 2080;
        v13 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Received error '%s' when attempting to refresh stream formats", buf, 0x1Cu);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

std::string *sub_3B6A28(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    sub_1243E4(&__p, a2);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_3B6B04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B6B28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3B6B10);
}

uint64_t *sub_3B6B40(uint64_t *result, double a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result == v2)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (*v3 != 0.0)
    {
      if (*v3 < a2)
      {
        break;
      }

      goto LABEL_9;
    }

    if (*(v3 + 40) >= a2 && *(v3 + 48) <= a2)
    {
      break;
    }

LABEL_9:
    v3 += 56;
    if (v3 == v2)
    {
      return result;
    }
  }

  if (v3 != v2)
  {
    v5 = v3 + 56;
    if (v3 + 56 != v2)
    {
      while (1)
      {
        if (*v5 == 0.0)
        {
          if (*(v5 + 40) >= a2 && *(v5 + 48) <= a2)
          {
            goto LABEL_20;
          }
        }

        else if (*v5 < a2)
        {
          goto LABEL_20;
        }

        v7 = *v5;
        v8 = *(v5 + 16);
        v9 = *(v5 + 32);
        *(v3 + 48) = *(v5 + 48);
        *(v3 + 16) = v8;
        *(v3 + 32) = v9;
        *v3 = v7;
        v3 += 56;
LABEL_20:
        v5 += 56;
        if (v5 == v2)
        {
          v2 = result[1];
          break;
        }
      }
    }
  }

LABEL_24:
  if (v3 != v2)
  {
    result[1] = v3;
  }

  return result;
}

void sub_3B6C40(std::string *a1, uint64_t a2)
{
  memset(&v16, 0, sizeof(v16));
  if (*a2)
  {
    std::string::append(&v16, "cull AC-3", 9uLL);
    if ((*(a2 + 24) & 1) == 0)
    {
LABEL_11:
      v4 = 1;
      goto LABEL_12;
    }

    std::string::append(&v16, "; ", 2uLL);
LABEL_10:
    std::string::append(&v16, "cull non-48k AC-3", 0x11uLL);
    goto LABEL_11;
  }

  if ((*(a2 + 1) & 1) == 0 && (*(a2 + 2) & 1) == 0 && (*(a2 + 3) & 1) == 0 && (*(a2 + 4) & 1) == 0 && (*(a2 + 24) & 1) == 0)
  {
    *(&v16.__r_.__value_.__s + 23) = 9;
    strcpy(&v16, "cull none");
    goto LABEL_58;
  }

  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  v4 = 0;
LABEL_12:
  v5 = *(a2 + 8);
  if (v5 == 3)
  {
    if (v4)
    {
      std::string::append(&v16, "; ", 2uLL);
    }

    v6 = "cull Atmos";
    v7 = 10;
  }

  else
  {
    if (v5 == 2)
    {
      if (v4)
      {
        std::string::append(&v16, "; ", 2uLL);
      }

      v6 = "cull non MAT 2.x Atmos";
    }

    else
    {
      if (v5 != 1)
      {
        if ((*(a2 + 1) & 1) == 0)
        {
          goto LABEL_43;
        }

        if (!v4)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v4)
      {
        std::string::append(&v16, "; ", 2uLL);
      }

      v6 = "cull non MAT 2.0 Atmos";
    }

    v7 = 22;
  }

  std::string::append(&v16, v6, v7);
  if (*(a2 + 1))
  {
LABEL_26:
    std::string::append(&v16, "; ", 2uLL);
LABEL_27:
    std::string::append(&v16, "cull multi-channel LPCM", 0x17uLL);
    if (!*(a2 + 3) || (*(a2 + 4) & 1) == 0)
    {
      std::string::append(&v16, ", except ", 9uLL);
      if (*(a2 + 3))
      {
        v8 = "8-channel";
        v9 = 9;
      }

      else
      {
        if (*(a2 + 4))
        {
          v8 = "6-channel";
        }

        else
        {
          v8 = "6- and 8-channel";
        }

        if (*(a2 + 4))
        {
          v9 = 9;
        }

        else
        {
          v9 = 16;
        }
      }

      std::string::append(&v16, v8, v9);
    }
  }

  v4 = 1;
LABEL_43:
  if (*(a2 + 2) == 1)
  {
    if (v4)
    {
      std::string::append(&v16, "; ", 2uLL);
    }

    std::string::append(&v16, "cull stereo and mono LPCM", 0x19uLL);
    if ((*(a2 + 57) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if ((*(a2 + 57) & 1) == 0)
    {
      goto LABEL_53;
    }

    if (!v4)
    {
      goto LABEL_51;
    }
  }

  std::string::append(&v16, "; ", 2uLL);
LABEL_51:
  std::string::append(&v16, "is on parrot device", 0x13uLL);
LABEL_52:
  v4 = 1;
LABEL_53:
  if (*(a2 + 56) == 1)
  {
    if (v4)
    {
      std::string::append(&v16, "; ", 2uLL);
    }

    std::string::append(&v16, "in call like route", 0x12uLL);
  }

  else if ((v4 & 1) == 0)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VirtualStream.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 2009;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: unexpected empty string for MultiChannelCullingPolicy", __p, 0x12u);
      }
    }
  }

LABEL_58:
  sub_53E8(a1, "pref:");
  sub_22170(__p, *(a2 + 32));
  if ((v18 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = *__p;
  }

  if ((v18 & 0x80u) == 0)
  {
    v11 = v18;
  }

  else
  {
    v11 = *&__p[8];
  }

  std::string::append(a1, v10, v11);
  if (v18 < 0)
  {
    operator delete(*__p);
  }

  std::string::append(a1, "; policy:", 9uLL);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v16;
  }

  else
  {
    v12 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v12, size);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_3B7060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B70B8(unsigned __int8 a1, _DWORD *a2)
{
  v2 = a1 & (a2[2] == 1819304813);
  if (a2[3])
  {
    v2 = 0;
  }

  if (a2[7] < 3u)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 == 1)
  {
    v5 = sub_5544(23);
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1243E4(&__p, a2);
      }
    }
  }

  return v3;
}

uint64_t sub_3B71F4(uint64_t a1, double *a2, int a3)
{
  if (a3 != 1936092532)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualStream.cpp";
      v9 = 1024;
      v10 = 939;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  return sub_3B732C(a1, a2, 1);
}

uint64_t sub_3B732C(uint64_t a1, double *a2, int a3)
{
  v6 = a1 + 656;
  v35.__r_.__value_.__r.__words[0] = a1 + 656;
  v35.__r_.__value_.__s.__data_[8] = 1;
  sub_26C0(a1 + 656);
  v7 = sub_5F90C(*(a1 + 248), *(a1 + 256), a2, *(a1 + 224), *(a1 + 232), v36);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2003329396;
    if (*(a1 + 616) == 1)
    {
      v9 = sub_5544(23);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 96);
        *buf = 136315906;
        *&buf[4] = "VirtualStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1492;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to translate client format to physical format for virtual stream %p of aggregate device %p.", buf, 0x26u);
      }

      v12 = sub_5544(23);
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        sub_618A4(__p, a2);
      }

      v13 = sub_5544(23);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1494;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d - Cached formats:", buf, 0x12u);
      }

      if (*(a1 + 232) != *(a1 + 224))
      {
        v33 = a3;
        v34 = a2;
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = sub_5544(23);
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            sub_1243E4(__p, *(a1 + 248) + 56 * v15);
          }

          v18 = sub_5544(23);
          if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            sub_1243E4(__p, *(a1 + 224) + 56 * v15);
          }

          v15 = ++v16;
        }

        while (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 232) - *(a1 + 224)) >> 3) > v16);
        a2 = v34;
        v8 = 2003329396;
        a3 = v33;
      }
    }
  }

  sub_3174(v6);
  if (v7)
  {
    if (a3)
    {
      sub_5EE3C(buf, (a1 + 80), "", 960);
      v19 = *buf;
      v20 = *(a1 + 152);
      if (v20 && ((*(*v20 + 192))(v20) & 1) != 0)
      {
        v21 = 1936092532;
      }

      else
      {
        v21 = 1885762592;
      }

      v26 = (*(*v19 + 160))(v19, v36, v21);
    }

    else
    {
      sub_5EE3C(buf, (a1 + 80), "", 962);
      v23 = *buf;
      v24 = *(a1 + 152);
      if (v24 && ((*(*v24 + 192))(v24) & 1) != 0)
      {
        v25 = 1936092532;
      }

      else
      {
        v25 = 1885762592;
      }

      v26 = (*(*v23 + 144))(v23, v36, v25);
    }

    v8 = v26;
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v8)
    {
      v27 = sub_5544(23);
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v8);
        sub_618A4(&v35, v36);
      }
    }

    else
    {
      *buf = v36[0];
      *&buf[16] = v36[1];
      *&buf[32] = v37;
      if (DWORD2(v36[0]) == 1819304813 && (buf[12] & 0x40) == 0)
      {
        *&buf[12] = 9;
        *&buf[16] = 4 * *&buf[28];
        *&buf[20] = 1;
        *&buf[24] = 4 * *&buf[28];
        *&buf[32] = 32;
      }

      v28 = sub_5544(23);
      if ((*(v28 + 8) & 1) != 0 && *v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
      {
        sub_618A4(&v35, a2);
      }

      v8 = sub_11EB3C(a1, buf, a2);
      if (v8)
      {
        v29 = sub_5544(23);
        v30 = *v29;
        if (*v29)
        {
          if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
          {
            sub_22170(&v35, v8);
            v31 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
            *__p = 136315650;
            *&__p[4] = "VirtualStream.cpp";
            v39 = 1024;
            v40 = 979;
            v41 = 2080;
            v42 = v31;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' configuring the DSP chain", __p, 0x1Cu);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }

  else
  {
    v22 = sub_5544(23);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v8);
      sub_618A4(&v35, a2);
    }
  }

  return v8;
}

void sub_3B7C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B7CDC(uint64_t a1, double *a2, int a3)
{
  if (a3 != 1936092532)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualStream.cpp";
      v9 = 1024;
      v10 = 926;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  return sub_3B732C(a1, a2, 0);
}

uint64_t sub_3B7E1C(uint64_t a1, void **a2, int a3)
{
  v6 = a1 + 656;
  sub_26C0(a1 + 656);
  if (a3 != 1936092513)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "VirtualStream.cpp";
      v13 = 1024;
      v14 = 782;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  sub_1733EC(a1, a2);
  sub_3174(v6);
  return 0;
}

void sub_3B7F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_2185D4(&a9);
  _Unwind_Resume(a1);
}

std::string *sub_3B7FA4(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    sub_1243E4(&__p, a2);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_3B8080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B80A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3B808CLL);
}

void sub_3B80BC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6)
{
  if (sub_A8C74(a1, a2, a3, a4) > a5)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315394;
      *&v24[4] = "VirtualStream.cpp";
      *&v24[12] = 1024;
      *&v24[14] = 729;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): data size too small for specified property", v24, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 > 1936092514)
  {
    if (v12 == 1936092515)
    {
      *(a1 + 617) = *a6 != 0;
      return;
    }

    v13 = 1936092532;
  }

  else
  {
    if (v12 == 1718641517)
    {
      *(a1 + 944) = *a6 != 0;
      return;
    }

    v13 = 1885762592;
  }

  if (v12 == v13)
  {
    v14 = sub_3B732C(a1, a6, 0);
    if (*(a1 + 616) == 1)
    {
      if (v14)
      {
        v15 = v14;
        v16 = sub_5544(14);
        v17 = *v16;
        if (*v16)
        {
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            *v24 = 136315394;
            *&v24[4] = "VirtualStream.cpp";
            *&v24[12] = 1024;
            *&v24[14] = 739;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: error setting current stream format", v24, 0x12u);
          }
        }

        v18 = __cxa_allocate_exception(0x10uLL);
        *v18 = &off_6DDDD0;
        v18[2] = v15;
      }
    }

    else if (v14)
    {
      v19 = v14;
      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = &off_6DDDD0;
      v20[2] = v19;
    }
  }

  else
  {
    sub_5EE3C(v24, (a1 + 80), "", 755);
    (*(**v24 + 48))(*v24, a2, a3, a4, a5, a6);
    if (*&v24[8])
    {
      sub_1A8C0(*&v24[8]);
    }
  }
}

void sub_3B83F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B8418(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = 1;
  if (*a2 <= 1885762656)
  {
    if (v3 > 1718641516)
    {
      if (v3 == 1718641517)
      {
        return v4;
      }

      if (v3 != 1751938147)
      {
        v6 = 1885762592;
LABEL_12:
        if (v3 == v6)
        {
          return v4;
        }

        goto LABEL_17;
      }

      return 0;
    }

    if (v3 == 1684829283 || v3 == 1685025633)
    {
      return 0;
    }
  }

  else
  {
    if (v3 <= 1936092531)
    {
      if (v3 != 1885762657 && v3 != 1936092513)
      {
        v6 = 1936092515;
        goto LABEL_12;
      }

      return 0;
    }

    if (v3 == 1936092532)
    {
      return v4;
    }

    if (v3 == 1936487523 || v3 == 1936482676)
    {
      return 0;
    }
  }

LABEL_17:
  sub_5EE3C(&v9, (a1 + 80), "", 530);
  v4 = (*(*v9 + 24))(v9, a2);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v4;
}

void sub_3B8584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B859C(void *a1)
{
  sub_13AA8C(a1);

  operator delete();
}

void sub_3B85D8(uint64_t a1)
{
  v1 = *(a1 + 152);
  v2 = atomic_load((*(v1 + 360) + 16));
  if (v2)
  {
    sub_EB670(*(v1 + 360));
  }

  v3 = *(v1 + 1184);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = v4[1];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = *v4;
          if (*v4)
          {
            v9 = v4[2];
            if (v9)
            {
              v10 = 2;
              goto LABEL_13;
            }

            v9 = v4[3];
            if (v9)
            {
              v10 = 3;
LABEL_13:
              (*(*v9 + 32))(v9, v8);
              while (++v10 != 4)
              {
                v9 = v4[v10];
                if (v9)
                {
                  goto LABEL_13;
                }
              }
            }
          }

          sub_1A8C0(v7);
        }
      }
    }
  }
}

BOOL sub_3B86DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a4 + 1);
  v12[0] = *a4;
  v12[1] = v6;
  v13 = a4[4];
  v14 = *a4;
  v15 = v14;
  result = sub_169084(v16, a2, a3, v12);
  v8 = v17;
  v9 = v18;
  v21 = v17;
  v22 = v18;
  v10 = v19;
  v11 = v20;
  if (v20 > *a4)
  {
    v11 = *a4;
  }

  if (v19 < *a4)
  {
    v10 = v11;
  }

  *a1 = v10;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  return result;
}

void sub_3B87C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B87E0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_3B8A94(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_3B8C30(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_3B8D24(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3B8DE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3B8EAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

std::string *sub_3B9240@<X0>(const void *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  v3 = (*(*a1 + 120))(a1);
  std::to_string(&v49, v3);
  v4 = std::string::insert(&v49, 0, "id: ", 4uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v50, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v52 = v6->__r_.__value_.__r.__words[2];
  __p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v52 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v52 >= 0)
  {
    v9 = HIBYTE(v52);
  }

  else
  {
    v9 = *(&__p + 1);
  }

  std::string::append(a2, p_p, v9);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  snprintf(&__str, 0x13uLL, "%p", a1);
  sub_53E8(&v49, &__str);
  v10 = std::string::insert(&v49, 0, "addr: ", 6uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v50, "; ", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v52 = v12->__r_.__value_.__r.__words[2];
  __p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v52 >= 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if (v52 >= 0)
  {
    v15 = HIBYTE(v52);
  }

  else
  {
    v15 = *(&__p + 1);
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 128))(&v49, a1);
  v16 = std::string::insert(&v49, 0, "uid: ", 6uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v50, "; ", 3uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v52 = v18->__r_.__value_.__r.__words[2];
  __p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v52 >= 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if (v52 >= 0)
  {
    v21 = HIBYTE(v52);
  }

  else
  {
    v21 = *(&__p + 1);
  }

  std::string::append(a2, v20, v21);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v22 = 0;
  *(&v44.__r_.__value_.__s + 23) = 2;
  strcpy(&v44, "{ ");
  do
  {
    v23 = v22;
    v24 = (*(*a1 + 88))(a1, v22 & 1);
    if (v24)
    {
      v25 = 0;
      if (v23)
      {
        v26 = "o/";
      }

      else
      {
        v26 = "i/";
      }

      do
      {
        v27 = (*(*a1 + 96))(a1, v23 & 1, v25);
        std::to_string(&__str, v27[20]);
        v28 = std::string::insert(&__str, 0, v26, 2uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v49.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v49.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v49, "/", 1uLL);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        snprintf(__s, 0x13uLL, "%p", v27);
        sub_53E8(v47, __s);
        if ((v48 & 0x80u) == 0)
        {
          v32 = v47;
        }

        else
        {
          v32 = v47[0];
        }

        if ((v48 & 0x80u) == 0)
        {
          v33 = v48;
        }

        else
        {
          v33 = v47[1];
        }

        v34 = std::string::append(&v50, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v52 = v34->__r_.__value_.__r.__words[2];
        __p = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v52 >= 0)
        {
          v36 = &__p;
        }

        else
        {
          v36 = __p;
        }

        if (v52 >= 0)
        {
          v37 = HIBYTE(v52);
        }

        else
        {
          v37 = *(&__p + 1);
        }

        std::string::append(&v44, v36, v37);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }

        if (v48 < 0)
        {
          operator delete(v47[0]);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v25 = (v25 + 1);
        if ((v23 & (v25 >= v24)) == 0)
        {
          std::string::append(&v44, ", ", 2uLL);
        }
      }

      while (v24 != v25);
    }

    v22 = 1;
  }

  while ((v23 & 1) == 0);
  std::string::append(&v44, " }", 2uLL);
  v38 = std::string::insert(&v44, 0, "streams: ", 9uLL);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v46 = v38->__r_.__value_.__r.__words[2];
  *v45 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v40 = v45;
  }

  else
  {
    v40 = v45[0];
  }

  if (v46 >= 0)
  {
    v41 = HIBYTE(v46);
  }

  else
  {
    v41 = v45[1];
  }

  std::string::append(a2, v40, v41);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " ]", 2uLL);
}

void sub_3B9828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B9970(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (!*v12 || !os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v21 = 136315394;
    v22 = "HP_HardwarePlugInInterface.cpp";
    v23 = 1024;
    v24 = 463;
    v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcIDWithClockedProc: no plug-in";
LABEL_17:
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, &v21, 0x12u);
    goto LABEL_18;
  }

  if (!a3)
  {
    v15 = sub_5544(14);
    v13 = *v15;
    if (!*v15 || !os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v21 = 136315394;
    v22 = "HP_HardwarePlugInInterface.cpp";
    v23 = 1024;
    v24 = 464;
    v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inProc is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcIDWithClockedProc: no IOProc to add";
    goto LABEL_17;
  }

  if (!a5)
  {
    v16 = sub_5544(14);
    v13 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 465;
      v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outIOProcID is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcIDWithClockedProc: nowhere to put the return value";
      goto LABEL_17;
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v9 = sub_3D90(a2);
  if (!v9 || (v10 = v9[3], v10 != 1633773415) && v10 != 1633969526)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 470;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcIDWithClockedProc: no device with given ID", &v21, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 560227702;
  }

  *a5 = (*(*v9 + 304))(v9, a3, a4);
  return 0;
}

void sub_3B9C88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3B9A24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3B9CE8(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 430;
      v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcIDWithBlock: no plug-in";
LABEL_14:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, &v21, 0x12u);
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a5)
  {
    v20 = sub_5544(14);
    v13 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 431;
      v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): HP_HardwarePlugIn_DeviceCreateIOProcIDWithBlock: no IOBlock to add";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    v15 = sub_5544(14);
    v13 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 432;
      v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outIOProcID is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcIDWithBlock: nowhere to put the return value";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_2820();
  v9 = sub_3D90(a3);
  if (!v9 || (v10 = v9[3], v10 != 1633773415) && v10 != 1633969526)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 437;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcIDWithBlock: no device with given ID", &v21, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = &off_6DDDD0;
    v19[2] = 560227702;
  }

  *a2 = (*(*v9 + 312))(v9, a4, a5);
  return 0;
}

void sub_3BA000(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3B9D9CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BA060(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HP_HardwarePlugInInterface.cpp";
      v17 = 1024;
      v18 = 503;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceDestroyIOProcID: no plug-in", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v5 = sub_3D90(a2);
  if (!v5 || ((v6 = v5[3], v6 != 1633773415) ? (v7 = v6 == 1633969526) : (v7 = 1), !v7))
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "HP_HardwarePlugInInterface.cpp";
        v17 = 1024;
        v18 = 507;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceAddIOProc: no device with given ID", &v15, 0x12u);
      }
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = &off_6DDDD0;
    v14[2] = 560227702;
  }

  (*(*v5 + 320))(v5, a3);
  return 0;
}

void sub_3BA29C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BA0F4);
  }

  _Unwind_Resume(a1);
}

__n128 sub_3BA2EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CE9D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 sub_3BA39C(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CE988;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 sub_3BA44C(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CE940;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_3BA4F8(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v5 = *sub_5544(14);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "HP_HardwarePlugInInterface.cpp";
        v13 = 1024;
        v14 = 203;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_ObjectShow: no plug-in", &v11, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v3 = sub_3D90(a2);
  if (!v3)
  {
    v8 = *sub_5544(14);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "HP_HardwarePlugInInterface.cpp";
        v13 = 1024;
        v14 = 207;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theObject is NULL]: HP_HardwarePlugIn_ObjectShow: no object with given ID", &v11, 0x12u);
      }
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = &off_6DDDD0;
    v10[2] = 560947818;
  }

  return (*(*v3 + 16))(v3);
}

void sub_3BA6FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BA558);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BA728(uint64_t a1)
{
  if (!a1)
  {
    v2 = *sub_5544(14);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "HP_HardwarePlugInInterface.cpp";
        v7 = 1024;
        v8 = 149;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_Initialize: no plug-in", &v5, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  (*(*(a1 - 80) + 120))();
  return 0;
}

void sub_3BA864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BA778);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BA8A8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 810;
      v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceGetNearestStartTime: no plug-in";
LABEL_13:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v12, &v18, 0x12u);
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a3)
  {
    v13 = sub_5544(14);
    v11 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 811;
      v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [ioRequestedStartTime is NULL]: HP_HardwarePlugIn_DeviceGetNearestStartTime: no time stamp";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_2820();
  v7 = sub_3D90(a2);
  if (!v7 || (v8 = v7[3], v8 != 1633773415) && v8 != 1633969526)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 815;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceGetNearestStartTime: no device with given ID", &v18, 0x12u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = &off_6DDDD0;
    v17[2] = 560227702;
  }

  (*(*v7 + 640))(v7, a3, a4);
  return 0;
}

void sub_3BAB58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BA950);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BABAC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v35 = 1024;
      *v36 = 629;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceStartAtTime: no plug-in", buf, 0x12u);
    }

    v27 = 1852797029;
LABEL_40:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v27;
  }

  sub_2820();
  v9 = sub_3D90(a2);
  v10 = v9;
  if (!v9 || ((v11 = *(v9 + 3), v11 != 1633773415) ? (v12 = v11 == 1633969526) : (v12 = 1), !v12))
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29)
    {
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_HardwarePlugInInterface.cpp";
        v35 = 1024;
        *v36 = 633;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceStartAtTime: no device with given ID", buf, 0x12u);
      }
    }

    v27 = 560227702;
    goto LABEL_40;
  }

  (*(*v9 + 112))(__p, v9);
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_StartIOProc", 0xEuLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v13 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        v15 = __p;
        if (v33 < 0)
        {
          v15 = __p[0];
        }

        *buf = 134218242;
        *&buf[4] = a3;
        v35 = 2080;
        *v36 = v15;
        _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VA_StartIOProc", "Start IOProc %p on VAD '%s'", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  sub_4D27C(&v31, v13);
  v16 = sub_5544(5);
  v17 = sub_5544(32);
  v18 = 0;
  *buf = 0x100000002;
  v19 = *(v16 + 8);
  while (1)
  {
    v20 = *&buf[v18];
    if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
    {
      break;
    }

    v18 += 4;
    if (v18 == 8)
    {
      goto LABEL_24;
    }
  }

  if ((v19 & v20) == 0)
  {
    v16 = v17;
  }

LABEL_24:
  v21 = *v16;
  if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = __p;
    if (v33 < 0)
    {
      v22 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "HP_HardwarePlugInInterface.cpp";
    v35 = 1024;
    *v36 = 638;
    *&v36[4] = 2048;
    *&v36[6] = a3;
    v37 = 2080;
    v38 = v22;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client request to start IO proc ID %p on VAD: '%s'.", buf, 0x26u);
  }

  v23 = *v10;
  if (a3 && a4)
  {
    (*(v23 + 376))(v10, a3, a4, a5);
  }

  else
  {
    (*(v23 + 360))(v10, a3);
  }

  sub_6A684(&v31);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_3BB090(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, __int128 buf, __int16 a14, __int16 a15, __int128 a16)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v17 = sub_5544(5);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315906;
        *(&buf + 4) = "HP_HardwarePlugInInterface.cpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 653;
        a15 = 2048;
        WORD2(a16) = 2080;
        *(&a16 + 6) = "unknown";
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to start IO proc ID %p on VAD: '%s'.", &buf, 0x26u);
      }
    }

    else
    {
      v19 = sub_5544(5);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315906;
        *(&buf + 4) = "HP_HardwarePlugInInterface.cpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        a15 = 2048;
        WORD2(a16) = 2080;
        *(&a16 + 6) = "unknown";
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to start IO proc ID %p on VAD: '%s'.", &buf, 0x26u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x3BAEB0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BB408(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v25 = 1024;
      v26 = 1027;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_StreamSetProperty: no plug-in", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v13 = sub_3D90(a2);
  v14 = v13;
  if (!v13 || v13[3] != 1634956402)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v25 = 1024;
      v26 = 1031;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theStream is NULL]: HP_HardwarePlugIn_StreamSetProperty: no device with given ID", buf, 0x12u);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    *v22 = &off_6DDDD0;
    v22[2] = 560947818;
  }

  *buf = v13;
  v15 = (*(*v13 + 24))(v13);
  buf[8] = v15;
  v23[0] = a5;
  v23[1] = 1735159650;
  v23[2] = a4;
  (*(*v14 + 80))(v14, v23, 0, 0, a6, a7, a3);
  if (v15)
  {
    (*(*v14 + 32))(v14);
  }

  return 0;
}

void sub_3BB6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_3BB6FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    sub_422418(va);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BB530);
  }

  JUMPOUT(0x3BB6ECLL);
}

uint64_t sub_3BB788(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v25 = 1024;
      v26 = 993;
      v17 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_StreamGetProperty: no plug-in";
LABEL_14:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x12u);
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a5)
  {
    v18 = sub_5544(14);
    v16 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v25 = 1024;
      v26 = 994;
      v17 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [ioPropertyDataSize is NULL]: HP_HardwarePlugIn_StreamGetProperty: no data size";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_2820();
  v11 = sub_3D90(a2);
  v12 = v11;
  if (!v11 || v11[3] != 1634956402)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v25 = 1024;
      v26 = 998;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theStream is NULL]: HP_HardwarePlugIn_StreamGetProperty: no device with given ID", buf, 0x12u);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    *v22 = &off_6DDDD0;
    v22[2] = 560947818;
  }

  *buf = v11;
  v13 = (*(*v11 + 24))(v11);
  buf[8] = v13;
  v23[0] = a4;
  v23[1] = 1735159650;
  v23[2] = a3;
  (*(*v12 + 72))(v12, v23, 0, 0, a5, a6);
  if (v13)
  {
    (*(*v12 + 32))(v12);
  }

  return 0;
}

void sub_3BBAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_3BBACC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    sub_422418(va);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BB8A8);
  }

  JUMPOUT(0x3BBABCLL);
}

uint64_t sub_3BBB60(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, _BYTE *a6)
{
  if (!a1)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "HP_HardwarePlugInInterface.cpp";
      v29 = 1024;
      v30 = 952;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_StreamGetPropertyInfo: no plug-in", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v11 = sub_3D90(a2);
  v12 = v11;
  if (!v11 || v11[3] != 1634956402)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "HP_HardwarePlugInInterface.cpp";
      v29 = 1024;
      v30 = 956;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theStream is NULL]: HP_HardwarePlugIn_StreamGetPropertyInfo: no device with given ID", buf, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 560947818;
  }

  v25 = v11;
  v13 = (*(*v11 + 24))(v11);
  v26 = v13;
  v24[0] = a4;
  v24[1] = 1735159650;
  v24[2] = a3;
  if (((*(*v12 + 48))(v12, v24) & 1) == 0)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "HP_HardwarePlugInInterface.cpp";
      v29 = 1024;
      v30 = 964;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): HP_HardwarePlugIn_StreamGetPropertyInfo: no such property", buf, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = 2003332927;
  }

  if (a5)
  {
    *a5 = (*(*v12 + 64))(v12, v24, 0, 0);
  }

  if (a6)
  {
    *a6 = (*(*v12 + 56))(v12, v24);
  }

  if (v13)
  {
    (*(*v12 + 32))(v12);
  }

  return 0;
}

void sub_3BBF50(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_3BBF68(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a2)
  {
    sub_422418(va);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BBCE0);
  }

  JUMPOUT(0x3BBF58);
}

uint64_t sub_3BBFF0(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v30 = 1024;
      v31 = 916;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceSetProperty: no plug-in", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v15 = sub_3D90(a2);
  v16 = v15;
  if (!v15 || ((v17 = v15[3], v17 != 1633773415) ? (v18 = v17 == 1633969526) : (v18 = 1), !v18))
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25)
    {
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_HardwarePlugInInterface.cpp";
        v30 = 1024;
        v31 = 920;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceSetProperty: no device with given ID", buf, 0x12u);
      }
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 560947818;
  }

  *buf = v15;
  v19 = (*(*v15 + 24))(v15);
  buf[8] = v19;
  if (a5)
  {
    v20 = 1768845428;
  }

  else
  {
    v20 = 1869968496;
  }

  v28[0] = a6;
  v28[1] = v20;
  v28[2] = a4;
  (*(*v16 + 80))(v16, v28, 0, 0, a7, a8, a3);
  if (v19)
  {
    (*(*v16 + 32))(v16);
  }

  return 0;
}

void sub_3BC2EC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_3BC304(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BC138);
  }

  JUMPOUT(0x3BC2F4);
}

uint64_t sub_3BC390(uint64_t a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v29 = 1024;
      v30 = 881;
      v21 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceGetProperty: no plug-in";
LABEL_18:
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
    }

LABEL_19:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a6)
  {
    v22 = sub_5544(14);
    v20 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v29 = 1024;
      v30 = 882;
      v21 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [ioPropertyDataSize is NULL]: HP_HardwarePlugIn_DeviceGetProperty: no data size";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  sub_2820();
  v13 = sub_3D90(a2);
  v14 = v13;
  if (!v13 || (v15 = v13[3], v15 != 1633773415) && v15 != 1633969526)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v29 = 1024;
      v30 = 886;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceGetProperty: no device with given ID", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 560947818;
  }

  *buf = v13;
  v16 = (*(*v13 + 24))(v13);
  buf[8] = v16;
  if (a4)
  {
    v17 = 1768845428;
  }

  else
  {
    v17 = 1869968496;
  }

  v27[0] = a5;
  v27[1] = v17;
  v27[2] = a3;
  (*(*v14 + 72))(v14, v27, 0, 0, a6, a7);
  if (v16)
  {
    (*(*v14 + 32))(v14);
  }

  return 0;
}

void sub_3BC6E8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_3BC700(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BC4D8);
  }

  JUMPOUT(0x3BC6F0);
}

uint64_t sub_3BC794(uint64_t a1, unsigned int a2, int a3, int a4, int a5, _DWORD *a6, _BYTE *a7)
{
  if (!a1)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "HP_HardwarePlugInInterface.cpp";
      v34 = 1024;
      v35 = 839;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceGetPropertyInfo: no plug-in", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v13 = sub_3D90(a2);
  v14 = v13;
  if (!v13 || ((v15 = v13[3], v15 != 1633773415) ? (v16 = v15 == 1633969526) : (v16 = 1), !v16))
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "HP_HardwarePlugInInterface.cpp";
        v34 = 1024;
        v35 = 843;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceGetPropertyInfo: no device with given ID", buf, 0x12u);
      }
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    *v25 = &off_6DDDD0;
    v25[2] = 560947818;
  }

  v30 = v13;
  v17 = (*(*v13 + 24))(v13);
  v31 = v17;
  if (a4)
  {
    v18 = 1768845428;
  }

  else
  {
    v18 = 1869968496;
  }

  v29[0] = a5;
  v29[1] = v18;
  v29[2] = a3;
  if (((*(*v14 + 48))(v14, v29) & 1) == 0)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "HP_HardwarePlugInInterface.cpp";
      v34 = 1024;
      v35 = 852;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): HP_HardwarePlugIn_DeviceGetPropertyInfo: no such property", buf, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = &off_6DDDD0;
    v28[2] = 2003332927;
  }

  if (a6)
  {
    *a6 = (*(*v14 + 64))(v14, v29, 0, 0);
  }

  if (a7)
  {
    *a7 = (*(*v14 + 56))(v14, v29);
  }

  if (v17)
  {
    (*(*v14 + 32))(v14);
  }

  return 0;
}

void sub_3BCBAC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_3BCBC4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a2)
  {
    sub_422418(va);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BC938);
  }

  JUMPOUT(0x3BCBB4);
}

uint64_t sub_3BCC4C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (!*v10 || !os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v19 = 136315394;
    v20 = "HP_HardwarePlugInInterface.cpp";
    v21 = 1024;
    v22 = 778;
    v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceTranslateTime: no plug-in";
LABEL_17:
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v12, &v19, 0x12u);
    goto LABEL_18;
  }

  if (!a3)
  {
    v13 = sub_5544(14);
    v11 = *v13;
    if (!*v13 || !os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v19 = 136315394;
    v20 = "HP_HardwarePlugInInterface.cpp";
    v21 = 1024;
    v22 = 779;
    v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inTime is NULL]: HP_HardwarePlugIn_DeviceTranslateTime: no input time stamp";
    goto LABEL_17;
  }

  if (!a4)
  {
    v14 = sub_5544(14);
    v11 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HP_HardwarePlugInInterface.cpp";
      v21 = 1024;
      v22 = 780;
      v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outTime is NULL]: HP_HardwarePlugIn_DeviceTranslateTime: no place for the return data";
      goto LABEL_17;
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v7 = sub_3D90(a2);
  if (!v7 || (v8 = v7[3], v8 != 1633773415) && v8 != 1633969526)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HP_HardwarePlugInInterface.cpp";
      v21 = 1024;
      v22 = 784;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceTranslateTime: no device with given ID", &v19, 0x12u);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 560227702;
  }

  (*(*v7 + 632))(v7, a3, a4);
  return 0;
}

void sub_3BCF5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BCCF8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BCFB8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HP_HardwarePlugInInterface.cpp";
      v18 = 1024;
      v19 = 744;
      v10 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceGetCurrentTime: no plug-in";
LABEL_13:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, v10, &v16, 0x12u);
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a3)
  {
    v11 = sub_5544(14);
    v9 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HP_HardwarePlugInInterface.cpp";
      v18 = 1024;
      v19 = 745;
      v10 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outTime is NULL]: HP_HardwarePlugIn_DeviceGetCurrentTime: no place for the return data";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_2820();
  v5 = sub_3D90(a2);
  if (!v5 || (v6 = v5[3], v6 != 1633773415) && v6 != 1633969526)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HP_HardwarePlugInInterface.cpp";
      v18 = 1024;
      v19 = 749;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceGetCurrentTime: no device with given ID", &v16, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = 560227702;
  }

  (*(*v5 + 624))(v5, a3);
  return 0;
}

void sub_3BD258(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BD054);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BD2AC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (!*v10 || !os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v19 = 136315394;
    v20 = "HP_HardwarePlugInInterface.cpp";
    v21 = 1024;
    v22 = 713;
    v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceRead: no plug-in";
LABEL_17:
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v12, &v19, 0x12u);
    goto LABEL_18;
  }

  if (!a3)
  {
    v13 = sub_5544(14);
    v11 = *v13;
    if (!*v13 || !os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v19 = 136315394;
    v20 = "HP_HardwarePlugInInterface.cpp";
    v21 = 1024;
    v22 = 714;
    v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inStartTime is NULL]: HP_HardwarePlugIn_DeviceRead: no start time";
    goto LABEL_17;
  }

  if (!a4)
  {
    v14 = sub_5544(14);
    v11 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HP_HardwarePlugInInterface.cpp";
      v21 = 1024;
      v22 = 715;
      v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outData is NULL]: HP_HardwarePlugIn_DeviceRead: no place for the data";
      goto LABEL_17;
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v7 = sub_3D90(a2);
  if (!v7 || (v8 = v7[3], v8 != 1633773415) && v8 != 1633969526)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HP_HardwarePlugInInterface.cpp";
      v21 = 1024;
      v22 = 719;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceRead: no device with given ID", &v19, 0x12u);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 560227702;
  }

  (*(*v7 + 552))(v7, a3, a4);
  return 0;
}

void sub_3BD5BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BD358);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BD618(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HP_HardwarePlugInInterface.cpp";
      v18 = 1024;
      v19 = 560;
      v10 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceRemoveIOProc: no plug-in";
LABEL_13:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, v10, &v16, 0x12u);
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a3)
  {
    v11 = sub_5544(14);
    v9 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HP_HardwarePlugInInterface.cpp";
      v18 = 1024;
      v19 = 561;
      v10 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inProc is NULL]: HP_HardwarePlugIn_DeviceRemoveIOProc: no IOProc to remove";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_2820();
  v5 = sub_3D90(a2);
  if (!v5 || (v6 = v5[3], v6 != 1633773415) && v6 != 1633969526)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HP_HardwarePlugInInterface.cpp";
      v18 = 1024;
      v19 = 565;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceRemoveIOProc: no device with given ID", &v16, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = 560227702;
  }

  (*(*v5 + 344))(v5, a3);
  return 0;
}

void sub_3BD8B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BD6B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BD90C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 531;
      v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceAddIOProc: no plug-in";
LABEL_13:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v12, &v18, 0x12u);
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a3)
  {
    v13 = sub_5544(14);
    v11 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 532;
      v12 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inProc is NULL]: HP_HardwarePlugIn_DeviceAddIOProc: no IOProc to add";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_2820();
  v7 = sub_3D90(a2);
  if (!v7 || (v8 = v7[3], v8 != 1633773415) && v8 != 1633969526)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 536;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceAddIOProc: no device with given ID", &v18, 0x12u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = &off_6DDDD0;
    v17[2] = 560227702;
  }

  (*(*v7 + 328))(v7, a3, a4);
  return 0;
}

void sub_3BDBBC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BD9B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BDC10(uint64_t a1)
{
  if (!a1)
  {
    v2 = *sub_5544(14);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "HP_HardwarePlugInInterface.cpp";
        v7 = 1024;
        v8 = 176;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_Teardown: no plug-in", &v5, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  (*(*(a1 - 80) + 128))();
  return 0;
}

void sub_3BDD4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BDC60);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BDD90(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = 1852797029;
  v3 = sub_5544(14);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "HP_HardwarePlugInInterface.cpp";
    v7 = 1024;
    v8 = 135;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d HP_HardwarePlugIn_Initialize: no plug-in", &v5, 0x12u);
  }

  return v1;
}

uint64_t sub_3BDE64(uint64_t a1)
{
  if (!a1)
  {
    v2 = *sub_5544(14);
    if (v2)
    {
      log = v2;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v6 = "HP_HardwarePlugInInterface.cpp";
        v7 = 1024;
        v8 = 62;
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_Release: no plug-in", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  return (*(*(a1 - 80) + 144))();
}

void sub_3BDF90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BDEACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BDFB8(uint64_t a1)
{
  if (!a1)
  {
    v2 = *sub_5544(14);
    if (v2)
    {
      log = v2;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v6 = "HP_HardwarePlugInInterface.cpp";
        v7 = 1024;
        v8 = 40;
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_AddRef: no plug-in", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  return (*(*(a1 - 80) + 136))();
}

void sub_3BE0E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3BE000);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3BE10C(uint64_t a1, CFUUIDBytes a2, void *a3)
{
  if (!a1)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *cf2 = 136315394;
      *&cf2[4] = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 86;
      v16 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_QueryInterface: no plug-in";
LABEL_19:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v16, cf2, 0x12u);
    }

LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a3)
  {
    v17 = sub_5544(14);
    v15 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *cf2 = 136315394;
      *&cf2[4] = "HP_HardwarePlugInInterface.cpp";
      v20 = 1024;
      v21 = 87;
      v16 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outInterface is NULL]: HP_HardwarePlugIn_QueryInterface: no place to store the return value";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  *a3 = 0;
  *cf2 = CFUUIDCreateFromUUIDBytes(0, a2);
  cf2[8] = 1;
  v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x40u, 0x67u, 0x8Cu, 0x4Bu, 0x3Fu, 0, 0x41u, 0xF7u, 0xB1u, 0xD4u, 0xCAu, 0xF9u, 0xCEu, 0xBu, 0xB4u, 0xCFu);
  if (CFEqual(v5, *cf2) || (v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x47u, 2u, 0x31u, 0x57u, 0xCu, 0x55u, 0x44u, 0xAAu, 0x89u, 0x96u, 0xB8u, 0x1Fu, 0x69u, 0xAEu, 0x87u, 0x6Eu), CFEqual(v6, *cf2)) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xE9u, 0x6Cu, 0x3Eu, 0x92u, 0xE7u, 0x45u, 0x4Cu, 0xB7u, 0xBAu, 0x91u, 0xB3u, 0x3Cu, 0x68u, 0xF2u, 0xF0u, 0x26u), CFEqual(v7, *cf2)) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x38u, 0xD7u, 0x8Au, 0x18u, 0x77u, 0xA5u, 0x11u, 0xD8u, 0xB8u, 0xB8u, 0, 0xAu, 0x95u, 0x88u, 0x78u, 0x7Eu), CFEqual(v8, *cf2)) || (v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x5Du, 0x80u, 0xCBu, 0x6Cu, 0x48u, 0x4Fu, 0x11u, 0xD7u, 0x85u, 0x71u, 0, 0xAu, 0x95u, 0x77u, 0x12u, 0x82u), CFEqual(v9, *cf2)) || (v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xFAu, 0xFCu, 0xAFu, 0xC3u, 0xBAu, 0xE8u, 0x11u, 0xD6u, 0xB4u, 0xA8u, 0, 3u, 0x93u, 0x15u, 0xCDu, 0x46u), CFEqual(v10, *cf2)) || (v11 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v11, *cf2)))
  {
    (*(*(a1 - 80) + 136))();
    v12 = 0;
    *a3 = a1;
  }

  else
  {
    v12 = 2147483652;
  }

  sub_3BE580(cf2);
  return v12;
}

void sub_3BE500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x3BE3A8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3BE580(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  return a1;
}

BOOL sub_3BE5C4(uint64_t *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *a1;
  if (v6)
  {
    (*(*v6 + 304))(&v20, v6);
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
    v8 = v7 < 2;
    v22 = &v20;
    sub_11C50(&v22);
    if (caulk::product::get_device_class(v9) == 4)
    {
      v20 = 0x676C6F6269616170;
      LODWORD(v21) = 0;
      v10 = sub_59410(v6, &v20, 0, 0);
      *(&v12 + 1) = v11;
      *&v12 = v10;
      v13 = (v12 >> 32) & 0x1FFFFFFFFLL;
      v20 = 0x676C6F6264636174;
      LODWORD(v21) = 0;
      v14 = sub_59410(v6, &v20, 0, 0);
      *(&v12 + 1) = v15;
      *&v12 = v14;
      v16 = (v12 >> 32) & 0x1FFFFFFFFLL;
      v8 = (v13 != 0x100000001 || v16 != 0x100000001) && v7 < 2;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_1A8C0(v5);
  return v8;
}

uint64_t sub_3BE72C(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_3BE7C4(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3BE888(void *a1)
{
  v1 = a1[1];
  if (v1 == a1)
  {
    return 0;
  }

  while (1)
  {
    v3 = v1[3];
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = std::__shared_weak_count::lock(v3);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = v4;
    v6 = v1[2];
    if (v6)
    {
      v16 = 0x676C6F626D74622BLL;
      v17 = 0;
      v7 = sub_59410(v6, &v16, 0, 0);
      *(&v10 + 1) = v8;
      *&v10 = v7;
      v9 = v10 >> 32;
      v16 = 0x676C6F626D74632BLL;
      v17 = 0;
      v11 = sub_59410(v6, &v16, 0, 0);
      if ((v9 & 0x100000000) != 0)
      {
        if (v9)
        {
          break;
        }
      }

      *(&v14 + 1) = v12;
      *&v14 = v11;
      v13 = v14 >> 32;
      if ((v13 & 0x100000000) != 0)
      {
        if (v13)
        {
          break;
        }
      }
    }

    sub_1A8C0(v5);
LABEL_10:
    v1 = v1[1];
    if (v1 == a1)
    {
      return 0;
    }
  }

  sub_1A8C0(v5);
  return 1;
}

void sub_3BE980(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v2 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  *(a1 + 104) = 0;
  *(a1 + 76) = (v2 > 0xFFu) & v2;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  if ((*(a1 + 4) & 1) == 0)
  {
    *(a1 + 4) = 1;
  }

  *a1 = 1953460273;
  *(a1 + 84) = 257;
  *(a1 + 72) = 0x101010101010101;
  *(a1 + 88) = 256;
  *(a1 + 304) = -1047527424;
  *(a1 + 308) = 1;
  *(a1 + 340) = 1103101952;
  *(a1 + 344) = 1;
  *(a1 + 364) = 0;
  *(a1 + 368) = 1;
  *(a1 + 372) = 0;
  *(a1 + 376) = 1;
  *(a1 + 356) = 0;
  *(a1 + 360) = 1;
  *(a1 + 420) = 1090519040;
  *(a1 + 424) = 1;
  *(a1 + 380) = -1040187392;
  *(a1 + 384) = 1;
  *(a1 + 430) = 257;
  *(a1 + 312) = 0;
  *(a1 + 316) = 1;
  *(a1 + 320) = 257;
  *(a1 + 428) = 257;
  *(a1 + 121) = 1;
  sub_53E8(v3, "");
  sub_30F188(__dst);
  sub_53E8(&v15, off_6E4C30);
  sub_53E8(&v14, "AU");
  sub_53E8(&v13, "VAD");
  sub_1E15A0(v5, v3, __dst, &v15, &v14, &v13);
  sub_1E1830(a1 + 432, v5);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  if ((*(a1 + 708) & 1) == 0)
  {
    *(a1 + 708) = 1;
  }

  *(a1 + 704) = 8;
  if (sub_45168())
  {
    sub_3C0044(v3);
  }

  sub_3C0044(v3);
}

void sub_3BFC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  sub_1E208C(&STACK[0x2A0]);
  if (*(v53 - 137) < 0)
  {
    operator delete(*(v53 - 160));
  }

  sub_1E0258(&a52);
  sub_1E0188(&a11);
  sub_1E0000(v52);
  _Unwind_Resume(a1);
}

void sub_3C0044(uint64_t a1)
{
  v4 = 3;
  memset(v3, 0, sizeof(v3));
  sub_4625C(v3, &v4, &v5, 1uLL);
  v6 = 0x400000003;
  memset(__p, 0, sizeof(__p));
  sub_4625C(__p, &v6, v7, 2uLL);
  sub_4A51DC(a1);
}

void sub_3C0DDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_3C124C(uint64_t a1, char *a2)
{
  v4 = sub_53E8(a1, "speaker_general");
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  sub_53E8(v4 + 6, a2);
  sub_53E8((a1 + 72), "speaker_general");
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1668049011;
  v6 = 0x6473706700000001;
  v7 = 1869768046;
  memset(__p, 0, sizeof(__p));
  sub_4625C(__p, &v6, &v8, 3uLL);
  memset(v5, 0, sizeof(v5));
  sub_2DDE10(v5, __p, &v10);
}

void sub_3C14CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3C1600(void *a1, void *a2)
{
  v4 = sub_1DC1CC(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_1DC61C(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t sub_3C16FC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 30);
  sub_1E2E00((a1 + 128));
  *(a1 + 128) = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v9 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 19);
  *(a2 + 19) = v9;
  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 168) = v10;
    operator delete(v10);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  v11 = a1 + 192;
  sub_1E0334(*(a1 + 192));
  *(a1 + 184) = *(a2 + 23);
  v13 = *(a2 + 24);
  v14 = *(a2 + 25);
  v12 = a2 + 12;
  *(a1 + 192) = v13;
  *(a1 + 200) = v14;
  if (v14)
  {
    *(v13 + 16) = v11;
    *(a2 + 23) = v12;
    *v12 = 0;
    *(a2 + 25) = 0;
  }

  else
  {
    *(a1 + 184) = v11;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    *(a1 + 216) = v15;
    operator delete(v15);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  *(a1 + 208) = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  if (*(a1 + 240) == *(a2 + 240))
  {
    if (*(a1 + 240))
    {
      *(a1 + 232) = *(a2 + 58);
      *(a1 + 236) = *(a2 + 59);
    }
  }

  else if (*(a1 + 240))
  {
    *(a1 + 240) = 0;
  }

  else
  {
    *(a1 + 232) = *(a2 + 29);
    *(a1 + 240) = 1;
  }

  sub_2B3338(a1 + 248, a2 + 31);
  *(a1 + 288) = *(a2 + 288);
  v16 = *(a1 + 296);
  *(a1 + 296) = *(a2 + 37);
  *(a2 + 37) = v16;
  return a1;
}

uint64_t sub_3C1934(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1684434036;
  *(a1 + 128) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v3 = xmmword_5C76D0;
  v4 = 2;
  sub_123D6C(a1 + 248, &v3, 3);
  *(a1 + 296) = 0;
  return a1;
}

void sub_3C1A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v3 + 216) = v7;
    operator delete(v7);
  }

  sub_1E0334(*(v3 + 192));
  v8 = *(v3 + 160);
  if (v8)
  {
    *(v3 + 168) = v8;
    operator delete(v8);
  }

  sub_4BA7C((v3 + 152));
  sub_1E0388(va);
  if (*(v3 + 119) < 0)
  {
    operator delete(*(v3 + 96));
  }

  if (*(v3 + 95) < 0)
  {
    operator delete(*(v3 + 72));
  }

  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *sub_3C1AB0(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

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

    sub_45E90(a1, v10);
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v15 = *v5++;
      *result = v15;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    if (v11 != result)
    {
      v13 = (a2 + v12);
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
      v5 = v13;
    }

    while (v5 != a3)
    {
      v16 = *v5++;
      *v11 = v16;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

BOOL sub_3C1BB0(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1DC1CC(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  result = sub_1DC61C(v12 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_3C1F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1E208C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3C1F58(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_3C220C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_3C23A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_3C249C(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3C2560(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3C2624(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_3C29C0(uint64_t a1, uint64_t a2)
{
  inData = *(a1 + 32);
  strcpy(&buf, "mpgdtpni");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  v4 = sub_2CAA28(&inData, &buf, 4u, &unk_5A3F24);
  *(&v7 + 1) = v5;
  *&v7 = v4;
  v6 = v7 >> 32;
  if ((v6 & 0x100000000) != 0)
  {
    *(a1 + 8) = 1;
    if ((*(a1 + 40) & 1) == 0)
    {
      *(a1 + 36) = v6;
      *(a1 + 40) = BYTE4(v6);
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(a1 + 16);
        if (!v11)
        {
LABEL_27:
          sub_1A8C0(v10);
          return;
        }

        if ((a2 & 0x100000000) != 0)
        {
          if (a2 != 1)
          {
            goto LABEL_9;
          }
        }

        else if ((*(v11 + 799) & 1) == 0)
        {
LABEL_9:
          if ((*(a1 + 40) & 1) == 0)
          {
            sub_1EC054();
          }

          v12 = 0;
          v13 = *(a1 + 36);
          goto LABEL_13;
        }

        v12 = 1;
        v13 = -200.0;
LABEL_13:
        inData = v13;
        v14 = sub_5544(25);
        v15 = *v14;
        if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          buf.mSelector = 136315906;
          *&buf.mScope = "VIOffloadIODelegate.cpp";
          v25 = 1024;
          v26 = 53;
          v27 = 2048;
          v28 = v13;
          v29 = 1024;
          v30 = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Changing input ambient gain to %f dB for deviceID %u", &buf, 0x22u);
        }

        v17 = *(a1 + 32);
        strcpy(&buf, "mpgdtpni");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        v18 = AudioObjectSetPropertyData(v17, &buf, 4u, &unk_5A3F24, 4u, &inData);
        if (v18)
        {
          v19 = sub_5544(25);
          v20 = *v19;
          if (*v19)
          {
            if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
            {
              buf.mSelector = 136315650;
              *&buf.mScope = "VIOffloadIODelegate.cpp";
              v25 = 1024;
              v26 = 62;
              v27 = 1024;
              LODWORD(v28) = v18;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Error while setting the ambient gain parameter: %d", &buf, 0x18u);
            }
          }
        }

        else
        {
          *(a1 + 9) = v12;
          if (*(v11 + 799) == 1)
          {
            v21 = sub_5544(25);
            v22 = *v21;
            if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
            {
              buf.mSelector = 136315394;
              *&buf.mScope = "VIOffloadIODelegate.cpp";
              v25 = 1024;
              v26 = 71;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling voice isolation on input in VA, using offloaded DSP in HAL", &buf, 0x12u);
            }

            if (*(v11 + 800) == 1 && *(v11 + 799))
            {
              *(v11 + 799) = 0;
              sub_2CC390(v11, 1);
            }
          }
        }

        goto LABEL_27;
      }
    }
  }
}

void sub_3C2CEC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_3C2D3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_3C2D6C(int a1, unsigned int a2, int *a3)
{
  if (a1 == 1 && a2)
  {
    v17 = v8;
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v3;
    v22 = v4;
    v10 = a2;
    do
    {
      v12 = *a3;
      a3 += 3;
      v11 = v12;
      if (v12 == 1886221684)
      {
        *&inAddress.mSelector = 0x676C6F62706D7574;
        inAddress.mElement = 0;
        ioDataSize = 4;
        outData = 1;
        AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &outData);
        byte_6E4A45 = outData != 0;
      }

      else if (v11 == 1937010031)
      {
        *&inAddress.mSelector = 0x676C6F6273746D6FLL;
        inAddress.mElement = 0;
        ioDataSize = 4;
        outData = 1;
        AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &outData);
      }

      else if (v11 == 1970496882)
      {
        *&inAddress.mSelector = 0x676C6F6275736572;
        inAddress.mElement = 0;
        ioDataSize = 4;
        outData = 1;
        AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &outData);
        byte_6E4A44 = outData != 0;
      }

      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t sub_3C2EE0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = (*(**(a1 + 48) + 48))(*(a1 + 48), a2, &v4);
  if (!result)
  {
    return (*(**(a1 + 48) + 40))(*(a1 + 48), v4);
  }

  return result;
}

uint64_t sub_3C2F68(uint64_t a1, unsigned int a2)
{
  sub_E933C();
  (*(qword_6EB0E0 + 40))(&v9);
  if (v9)
  {
    v4 = (*(*v9 + 16))(v9);
    if (!v4)
    {
      v5 = *(a1 + 48);
      v7 = v9;
      v8 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v4 = (*(*v5 + 32))(v5, &v7, a2);
      if (v8)
      {
        sub_1A8C0(v8);
      }
    }
  }

  else
  {
    v4 = 1063351615;
  }

  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v4;
}

void sub_3C3084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C3194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = 0;
  result = (*(*a2 + 40))(a2, a3, a6, &v9, a4, a5);
  if (a7)
  {
    *a7 = v9;
  }

  return result;
}

void sub_3C320C(uint64_t a1, void *a2)
{
  a2[1] = *a2;
  sub_E933C();
  v22 = 0;
  (*(qword_6EB0E0 + 16))(&qword_6EB0E0, &v22);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v22)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      if (!(*(qword_6EB0E0 + 32))(&qword_6EB0E0, v3, &v19))
      {
        v5 = HIDWORD(v19);
        v6 = v20;
        v8 = a2[1];
        v7 = a2[2];
        if (v8 >= v7)
        {
          v10 = *a2;
          v11 = v8 - *a2;
          v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2) + 1;
          if (v12 > 0x1555555555555555)
          {
            sub_189A00();
          }

          v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 2);
          if (2 * v13 > v12)
          {
            v12 = 2 * v13;
          }

          if (v13 >= 0xAAAAAAAAAAAAAAALL)
          {
            v14 = 0x1555555555555555;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            sub_1E6598(v14);
          }

          v15 = (4 * (v11 >> 2));
          *v15 = v19;
          v15[1] = v5;
          v15[2] = v6;
          v9 = v15 + 3;
          v16 = v15 - v11;
          memcpy(v15 - v11, v10, v11);
          v17 = *a2;
          *a2 = v16;
          a2[1] = v9;
          a2[2] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v8 = v19;
          v8[1] = v5;
          v9 = v8 + 3;
          v8[2] = v6;
        }

        a2[1] = v9;
      }

      v3 = v4;
    }

    while (v22 > v4++);
  }
}

void sub_3C33D0(void *a1)
{
  sub_37EB84(a1);

  operator delete();
}

void *sub_3C340C(void *result, unsigned int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[4] - result[3]) >> 3) > a2)
  {
    v2 = result;
    v3 = a2;
    result = AUPBUnregisterAU();
    v5 = v2[3];
    v4 = v2[4];
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) > v3)
    {
      v6 = v5 + 24 * v3;
      v7 = v4 - (v6 + 24);
      if (v4 != v6 + 24)
      {
        result = memmove(v6, (v6 + 24), v4 - (v6 + 24));
      }

      v2[4] = v6 + v7;
    }
  }

  return result;
}

void sub_3C34B0(uint64_t a1)
{
  sub_13AB3C(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_3C34FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6CEE88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3C3570(unsigned int a1)
{
  sub_26C0(&unk_6FCDC8);
  v2 = sub_23B090(&xmmword_6FCEE8, a1);
  if (v2)
  {
    atomic_store(0, (v2[3] + 312));
  }

  sub_3174(&unk_6FCDC8);
}

__n128 sub_3C35D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CEEC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_3C366C(uint64_t a1, double a2)
{
  if (sub_2993E8())
  {
    v4 = *(a1 + 880);

    return sub_2995BC(v4);
  }

  else
  {

    sub_D4AA4(a1, a2);
  }

  return result;
}

uint64_t sub_3C36DC(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886743662 && a2 != 1885629550)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_Baseband_Voice_Aspen.cpp";
      v15 = 1024;
      v16 = 164;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_Baseband_Voice_Aspen.cpp";
        v15 = 1024;
        v16 = 165;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_3C38BC(void ***a1)
{
  sub_4ADCC0(a1);
  v20 = 0x707472756D646473;
  v21 = 0;
  if (((*a1)[2])(a1, &v20))
  {
    LODWORD(__dst[0]) = 1634742884;
    ((*a1)[6])(a1, &v20, 0, 0, 4, __dst);
  }

  v18 = 0x676C6F6263737263;
  v19 = 0;
  if (((*a1)[2])(a1, &v18))
  {
    LODWORD(__dst[0]) = 1650602615;
    ((*a1)[6])(a1, &v18, 0, 0, 4, __dst);
  }

  sub_53E8(buf, "Baseband Downlink");
  if ((buf[23] & 0x80000000) != 0)
  {
    sub_54A0(__dst, *buf, *&buf[8]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    *__dst = *buf;
    v14 = *&buf[16];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
  }

  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(v22, __dst);
    v4 = v23;
    v5 = *v22;
    ((*a1)[16])(__p, a1);
    v6 = v22;
    if (v4 < 0)
    {
      v6 = v5;
    }

    if (v12 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 134;
    *&buf[18] = 2080;
    *&buf[20] = v6;
    v25 = 2080;
    v26 = v7;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a baseband downlink port with name %s and UID %s", buf, 0x26u);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(*v22);
    }
  }

  v8 = a1[11];
  v10[0] = a1[10];
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
  }

  memset(buf, 0, 24);
  ((*a1)[16])(v22, a1);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_227C30(v9, &qword_6F7280, v10, buf, __dst, v22, __p, "");
}

void sub_3C3F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(v28 - 144);
  sub_1E19A0(&a28);
  _Unwind_Resume(a1);
}

void sub_3C4120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C413C(uint64_t **a1, double a2)
{
  if (((*a1)[13])(a1) == a2)
  {
    v4 = sub_5544(13);
    v5 = sub_5544(40);
    v6 = 0;
    *v35 = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&v35[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_13:
    v16 = *v4;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v35 = 136315650;
      *&v35[4] = "Device_Baseband_Voice_Aspen.cpp";
      v36 = 1024;
      v37 = 87;
      v38 = 2048;
      v39 = a2;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Current sample rate %f is same as target rate to set to, nothing to do here!", v35, 0x1Cu);
    }

    return 0;
  }

  v9 = sub_4AF738(a1, a2);
  if (!v9)
  {
    v17 = a1[110];
    std::mutex::lock((v17 + 1));
    v18 = v17[9];
    std::mutex::unlock((v17 + 1));
    if ((v18 & 0x100000000) != 0)
    {
      v19 = sub_5544(18);
      v20 = sub_5544(13);
      v21 = 0;
      *v35 = 0x100000002;
      v22 = *(v19 + 8);
      while (1)
      {
        v23 = *&v35[v21];
        if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
        {
          break;
        }

        v21 += 4;
        if (v21 == 8)
        {
          goto LABEL_34;
        }
      }

      if ((v22 & v23) == 0)
      {
        v19 = v20;
      }

LABEL_34:
      v29 = sub_5544(40);
      v30 = 0;
      *v35 = 0x100000002;
      v31 = *(v19 + 8);
      while (1)
      {
        v32 = *&v35[v30];
        if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
        {
          break;
        }

        v30 += 4;
        if (v30 == 8)
        {
          goto LABEL_41;
        }
      }

      if ((v31 & v32) == 0)
      {
        v19 = v29;
      }

      v31 = *(v19 + 8);
LABEL_41:
      if (v31)
      {
        v33 = *v19;
        if (v33)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *v35 = 136315650;
            *&v35[4] = "Device_Baseband_Voice_Aspen.cpp";
            v36 = 1024;
            v37 = 99;
            v38 = 2048;
            v39 = a2;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully set baseband hardware sample rate to %f", v35, 0x1Cu);
          }
        }
      }

      sub_2996BC(a1[110], a2);
    }

    return 0;
  }

  v10 = v9;
  v11 = sub_5544(18);
  v12 = sub_5544(13);
  v13 = 0;
  *v35 = 0x100000002;
  v14 = *(v11 + 8);
  while (1)
  {
    v15 = *&v35[v13];
    if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_23;
    }
  }

  if ((v14 & v15) == 0)
  {
    v11 = v12;
  }

LABEL_23:
  v24 = sub_5544(40);
  v25 = 0;
  *v35 = 0x100000002;
  v26 = *(v11 + 8);
  while (1)
  {
    v27 = *&v35[v25];
    if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
    {
      break;
    }

    v25 += 4;
    if (v25 == 8)
    {
      goto LABEL_29;
    }
  }

  if ((v26 & v27) == 0)
  {
    v11 = v24;
  }

LABEL_29:
  v28 = *v11;
  if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v35 = 136315650;
    *&v35[4] = "Device_Baseband_Voice_Aspen.cpp";
    v36 = 1024;
    v37 = 94;
    v38 = 1024;
    LODWORD(v39) = v10;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Error from SetSampleRateSynchronously: %d", v35, 0x18u);
  }

  return v10;
}

BOOL sub_3C453C(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  if (sub_3C4760(a2))
  {
    *buf = *&a2->mSelector;
    *&buf[8] = a2->mElement;
    result = sub_6FE08(a1 + 536, buf);
    if (result)
    {
      v18 = *&a2->mSelector;
      mElement = a2->mElement;
      *buf = *&a2->mSelector;
      *&buf[8] = a2->mElement;
      *&v22[2] = a3;
      v23 = a4;
      sub_185D3C((a1 + 536), &v18, buf);
      v9 = qword_6F72E0;
      v10 = qword_6F72E8;
      while (v9 != v10)
      {
        if (sub_6FE08(a1 + 536, v9))
        {
          return 1;
        }

        v9 += 12;
      }

      v11 = *(a1 + 880);
      v12 = sub_5544(13);
      v13 = sub_5544(40);
      v14 = 0;
      *buf = 0x100000002;
      v15 = *(v12 + 8);
      while (1)
      {
        v16 = *&buf[v14];
        if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
        {
          break;
        }

        v14 += 4;
        if (v14 == 8)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_18;
        }
      }

      if ((v15 & v16) == 0)
      {
        v12 = v13;
      }

      if (*(v12 + 8))
      {
LABEL_18:
        v17 = *v12;
        if (v17)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "CoreTelephonyInterface.cpp";
            v21 = 1024;
            *v22 = 698;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unregistering Telephony callback", buf, 0x12u);
          }
        }
      }

LABEL_21:
      sub_299364(v11 + 96);
      return 1;
    }
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_3C4760(_DWORD *a1)
{
  v1 = qword_6F72E0;
  if (qword_6F72E0 == qword_6F72E8)
  {
    return 0;
  }

  while (a1[1] != v1[1] || *a1 != *v1 || a1[2] != v1[2])
  {
    v1 += 3;
    if (v1 == qword_6F72E8)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_3C47BC(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (sub_3C4760(a2))
  {
    v8 = qword_6F72E0;
    for (i = qword_6F72E8; v8 != i; v8 += 12)
    {
      if (sub_6FE08(a1 + 536, v8))
      {
        break;
      }
    }

    v11 = *&a2->mSelector;
    v15 = a4;
    *buf = v11;
    mElement = a2->mElement;
    v12 = *&a2->mSelector;
    LODWORD(v13) = a2->mElement;
    v14 = a3;
    sub_17C118((a1 + 536), buf, &v12);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_3C4A74(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3C4AA0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = sub_5544(18);
  v5 = sub_5544(13);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = sub_5544(40);
  v10 = 0;
  *buf = 0x100000002;
  v11 = *(v4 + 8);
  while (1)
  {
    v12 = *&buf[v10];
    if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
    {
      break;
    }

    v10 += 4;
    if (v10 == 8)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }
  }

  if ((v11 & v12) == 0)
  {
    v4 = v9;
  }

  if (*(v4 + 8))
  {
LABEL_15:
    v13 = *v4;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (v2 >= 3)
      {
        v15 = sub_5544(14);
        v16 = *v15;
        if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CoreTelephonyInterface.h";
          v26 = 1024;
          v27 = 94;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid TelephonyValueChangeType", buf, 0x12u);
        }

        v14 = "Invalid TelephonyValueChangeType";
      }

      else
      {
        v14 = (&off_6DDDE8)[v2];
      }

      sub_53E8(__p, v14);
      if (v24 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
      v26 = 1024;
      v27 = 461;
      v28 = 2080;
      v29 = v17;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Handling Telephony callback for %s", buf, 0x1Cu);
      if (v24 < 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_28:
  if (v2 >= 3)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
      v26 = 1024;
      v27 = 394;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unsupported telephony value change type", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unsupported telephony value change type");
  }

  *__p = dword_5A3F28[v2];
  *&__p[4] = 1735159650;
  result = sub_6FE08(v3 + 536, __p);
  if (result)
  {
    v19 = *(v3 + 88);
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
    }

    *buf = *__p;
    *&buf[8] = *&__p[8];
    sub_68E60();
    operator new();
  }

  return result;
}

uint64_t *sub_3C4E8C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3C4EE0(uint64_t a1)
{
  v6[0] = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*a1)
      {
        sub_6FF5C(*a1 + 536, (a1 + 16));
      }

      sub_1A8C0(v4);
    }
  }

  return sub_3C4E8C(v6);
}

void sub_3C4F78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1A8C0(v21);
  if (a2 == 3)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v24[2]);
      p_p = __p;
      if (a15 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a17) = 2080;
      *(&a17 + 4) = p_p;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 98;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x3C4F40);
  }

  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v29 = v28;
    v30 = sub_5544(14);
    v31 = *v30;
    if (!*v30 || !os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v32 = (*(*v29 + 16))(v29);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v32;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 98;
    v33 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v34 = v31;
    v35 = 44;
  }

  else
  {
    v36 = sub_5544(14);
    v37 = *v36;
    if (!*v36 || !os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a17) = 2080;
    *(&a17 + 4) = "";
    WORD6(a17) = 1024;
    *(&a17 + 14) = 98;
    v33 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v34 = v37;
    v35 = 34;
  }

  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, v33, &buf, v35);
  goto LABEL_17;
}

uint64_t sub_3C521C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6CF0F8;
  a2[1] = v2;
  return result;
}

void sub_3C52B0(uint64_t **a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, float *a6)
{
  if ((((*a1)[2])(a1) & 1) == 0)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v37);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v33 = 2003332927;
LABEL_60:
    exception[2] = v33;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v34 = sub_5544(14);
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v37);
    }

    goto LABEL_55;
  }

  if (!a6)
  {
    v35 = sub_5544(14);
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v37);
    }

LABEL_55:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v33 = 561211770;
    goto LABEL_60;
  }

  if ((((*a1)[3])(a1, a2) & 1) == 0)
  {
    v36 = sub_5544(14);
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v37);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v33 = 1852797029;
    goto LABEL_60;
  }

  if (a2->mSelector == 1668576114)
  {
    if (a5 != 8)
    {
      v29 = sub_5544(14);
      v30 = *v29;
      if (*v29)
      {
        if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 348;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid data passed with kVirtualAudioPlugInPropertyConfirmVocoderSampleRate property", buf, 0x12u);
        }
      }
    }

    v16 = *a6;
    v17 = sub_5544(18);
    v18 = sub_5544(13);
    v19 = 0;
    *buf = 0x100000002;
    v20 = *(v17 + 8);
    while (1)
    {
      v21 = *&buf[v19];
      if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
      {
        break;
      }

      v19 += 4;
      if (v19 == 8)
      {
        goto LABEL_26;
      }
    }

    if ((v20 & v21) == 0)
    {
      v17 = v18;
    }

LABEL_26:
    v22 = sub_5544(40);
    v23 = 0;
    *buf = 0x100000002;
    v24 = *(v17 + 8);
    while (1)
    {
      v25 = *&buf[v23];
      if (((v24 & v25) != 0) != ((*(v22 + 8) & v25) != 0))
      {
        break;
      }

      v23 += 4;
      if (v23 == 8)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    if ((v24 & v25) == 0)
    {
      v17 = v22;
    }

    if (*(v17 + 8))
    {
LABEL_34:
      v26 = *v17;
      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 351;
        *&buf[18] = 2048;
        *&buf[20] = v16;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Confirming Telephony Hardware Sample Rate %f", buf, 0x1Cu);
      }
    }

LABEL_37:
    sub_2996BC(a1[110], v16);
  }

  else if (a2->mSelector == 1953790309)
  {
    if (a5 != 4)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27)
      {
        if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 336;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid data passed with kBasebandVoiceAudioDevicePropertyTTYEnabled property", buf, 0x12u);
        }
      }
    }

    v12 = *a6;
    if (*a6 || sub_29A5F4(*a1[110]))
    {
      v13 = sub_5544(18);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = "disabled";
        *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
        *buf = 136315650;
        if (v12)
        {
          v15 = "enabled";
        }

        *&buf[12] = 1024;
        *&buf[14] = 340;
        *&buf[18] = 2080;
        *&buf[20] = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting TTY %s on Device_Baseband_Voice_Aspen's Core Telephony Interface", buf, 0x1Cu);
      }

      __p = *a1[110];
      v40 = v12 != 0;
      LODWORD(v37) = 0;
      *buf = __p;
      *&buf[8] = &v37;
      *&buf[16] = &__p;
      sub_2983E8(buf);
    }
  }

  else
  {

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
  }
}

void sub_3C5AD4(uint64_t *a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v33 = sub_5544(14);
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      v49 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v49);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v35 = sub_5544(14);
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      v49 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v49);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    *v36 = &off_6DDDD0;
    v36[2] = 561211770;
  }

  if (!a6)
  {
    v37 = sub_5544(14);
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      v49 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v49);
    }

    v38 = __cxa_allocate_exception(0x10uLL);
    *v38 = &off_6DDDD0;
    v38[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1953790308)
  {
    if (mSelector == 1853059619)
    {
      v25 = *a5;
      if (v25 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v45 = sub_5544(14);
        if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
        {
          v49 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(__p, &v49);
        }

        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = &off_6DDDD0;
        v46[2] = 561211770;
      }

      v26 = a1[110];
      std::mutex::lock((v26 + 8));
      v27 = *(v26 + 72);
      std::mutex::unlock((v26 + 8));
      if ((v27 & 0x100000000) != 0)
      {
        v28 = sub_2994BC(a1[110]);
        *a6 = v28;
        *(a6 + 8) = v28;
        return;
      }

      goto LABEL_25;
    }

    if (mSelector != 1953002354)
    {
LABEL_25:

      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      return;
    }

    v21 = *a5;
    if (v21 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v47 = sub_5544(14);
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v49 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p, &v49);
      }

      v48 = __cxa_allocate_exception(0x10uLL);
      *v48 = &off_6DDDD0;
      v48[2] = 561211770;
    }

    v22 = sub_2995BC(a1[110]);
LABEL_22:
    *a6 = v22;
    return;
  }

  if (mSelector == 1953790309)
  {
    v23 = *a5;
    if (v23 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v41 = sub_5544(14);
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        v49 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p, &v49);
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      *v42 = &off_6DDDD0;
      v42[2] = 561211770;
    }

    *a6 = sub_29A5F4(*a1[110]);
    return;
  }

  if (mSelector == 1986225266)
  {
    v24 = *a5;
    if (v24 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v43 = sub_5544(14);
      if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
      {
        v49 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p, &v49);
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = &off_6DDDD0;
      v44[2] = 561211770;
    }

    v22 = sub_2994BC(a1[110]);
    goto LABEL_22;
  }

  if (mSelector != 1986225268)
  {
    goto LABEL_25;
  }

  v13 = *a5;
  if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
  {
    v39 = sub_5544(14);
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      v49 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v49);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = 561211770;
  }

  v14 = a1[110];
  std::mutex::lock((v14 + 8));
  v15 = *(v14 + 72);
  std::mutex::unlock((v14 + 8));
  if ((v15 & 0x100000000) == 0)
  {
    v16 = sub_5544(1);
    v17 = sub_5544(13);
    v18 = 0;
    *buf = 0x100000002;
    v19 = *(v16 + 8);
    while (1)
    {
      v20 = *&buf[v18];
      if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
      {
        break;
      }

      v18 += 4;
      if (v18 == 8)
      {
        goto LABEL_31;
      }
    }

    if ((v19 & v20) == 0)
    {
      v16 = v17;
    }

LABEL_31:
    v29 = sub_5544(40);
    v30 = 0;
    *buf = 0x100000002;
    v31 = *(v16 + 8);
    while (1)
    {
      v32 = *&buf[v30];
      if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
      {
        break;
      }

      v30 += 4;
      if (v30 == 8)
      {
        goto LABEL_37;
      }
    }

    if ((v31 & v32) == 0)
    {
      v16 = v29;
    }

LABEL_37:
    v15 = *v16;
    if (v15)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
        v53 = 1024;
        v54 = 283;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d No Vocoder Format ID", buf, 0x12u);
      }

      LODWORD(v15) = 0;
    }
  }

  *a6 = v15;
}

void sub_3C6908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C693C(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_25:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_25;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1953790308)
  {
    result = 4;
    if (mSelector == 1953790309 || mSelector == 1986225268)
    {
      return result;
    }

    v9 = 1986225266;
  }

  else
  {
    if (mSelector == 1668576114)
    {
      return 8;
    }

    if (mSelector == 1853059619)
    {
      return 16;
    }

    v9 = 1953002354;
  }

  if (mSelector == v9)
  {
    return 8;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

void sub_3C6CB0(void *a1)
{
  *a1 = off_6CEF08;
  sub_13A300((a1 + 67));
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_3C6D1C(void *a1)
{
  *a1 = off_6CEF08;
  sub_13A300((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_3C6D74(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v4 = off_6CEF08;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0u;
  *(v4 + 856) = 0u;
  *(v4 + 872) = 0;
  sub_165D0C(v4 + 536);
  sub_105304();
  *(a1 + 880) = &qword_6E8910;
  return a1;
}

void sub_3C6E18(_Unwind_Exception *a1)
{
  sub_13A300(v2);
  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3C6E3C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_3C70F0(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_3C728C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_3C7380(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3C7444(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3C7508(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_3C789C()
{
  if ((atomic_load_explicit(&qword_6F7CE8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6F7CE8))
    {
      v1 = 30;
      v0[0] = xmmword_5A4040;
      v0[1] = unk_5A4050;
      qword_6F7CD8 = 0;
      unk_6F7CE0 = 0;
      qword_6F7CD0 = 0;
      sub_248E7C(&qword_6F7CD0, v0, &v2, 9uLL);
      __cxa_guard_release(&qword_6F7CE8);
    }
  }
}

void sub_3C7970()
{
  if ((atomic_load_explicit(&qword_6F7D08, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6F7D08))
    {
      v1 = 0xE00000014;
      v0[0] = xmmword_5A4064;
      v0[1] = unk_5A4074;
      qword_6F7CF8 = 0;
      unk_6F7D00 = 0;
      qword_6F7CF0 = 0;
      sub_248E7C(&qword_6F7CF0, v0, &v2, 0xAuLL);
      __cxa_guard_release(&qword_6F7D08);
    }
  }
}