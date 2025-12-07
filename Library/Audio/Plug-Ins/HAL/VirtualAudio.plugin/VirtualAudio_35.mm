void sub_2C9A58(unint64_t a1)
{
  sub_13ABB0(a1);

  operator delete();
}

uint64_t sub_2C9A90(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return sub_DD7C4(a1 + 16);
}

uint64_t *sub_2C9AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_F320C(a2, *(a1 + 1240), *(a1 + 1248), (*(a1 + 1248) - *(a1 + 1240)) >> 4);
}

void sub_2C9AF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 1232) = (*(*a2 + 120))(a2);
  *(a1 + 1236) = 1;
  if (*(a1 + 1216))
  {
    v4 = *(a1 + 1208);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 1208) = 0;
    v6 = *(a1 + 1200);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*(a1 + 1192) + 8 * i) = 0;
      }
    }

    *(a1 + 1216) = 0;
  }

  sub_F5768((a1 + 1240));
  if (_os_feature_enabled_impl())
  {
    LODWORD(v50) = 1651074168;
    if ((*(a1 + 1236) & 1) == 0)
    {
      goto LABEL_62;
    }

    LODWORD(v38) = *(a1 + 1232);
    __dst[0] = 0x696E70746467686DLL;
    LODWORD(__dst[1]) = 0;
    v8 = sub_542F0(&v38, __dst, 4, &v50);
    *(&v11 + 1) = v9;
    *&v11 = v8;
    v10 = v11 >> 32;
    v12 = (v10 & 0x100000000) == 0 || v10 == 0;
    v13 = v12;
    if (!v12)
    {
      LODWORD(__dst[0]) = 1651074168;
      sub_2CA130((a1 + 1192), 0x62696478u, __dst);
    }

    strcpy(v42, "cwdv");
    v43 = 3;
    __dst[0] = 0;
    __dst[1] = 0;
    v41 = 0;
    v42[8] = 0;
    v45[0] = 0;
    v45[1] = 0;
    v44 = v45;
    v48 = 0;
    v49 = 0;
    __p = 0;
    v46 = 44739210;
    (*(*a2 + 512))(&v38, a2, __dst);
    v14 = v39;
    if (v39 != &v38)
    {
      while (1)
      {
        sub_88A00(&v50, v14 + 2, "", 1091);
        v15 = v50;
        if ((*(*v50 + 208))(v50))
        {
          v16 = ((*(*v15 + 200))(v15) >> 32) & 1;
        }

        else
        {
          LOBYTE(v16) = 0;
        }

        if (v51)
        {
          sub_1A8C0(v51);
        }

        if (v16)
        {
          break;
        }

        v14 = v14[1];
        if (v14 == &v38)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 == &v38)
    {
LABEL_32:
      v20 = 0.0;
      v19 = 1;
    }

    else
    {
      sub_88A00(&v50, v14 + 2, "", 1096);
      v17 = (*(*v50 + 200))(v50);
      v18 = *&v17;
      if ((v17 & 0x100000000) == 0)
      {
        sub_1EC054();
      }

      if (v51)
      {
        sub_1A8C0(v51);
      }

      v19 = 0;
      v20 = v18;
    }

    sub_65310(&v38);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v45[0]);
    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }

    if (((v13 | v19) & 1) == 0)
    {
      (*(*a1 + 72))(a1, 1685287015, 1651074168, 1, v20);
    }

    v21 = 0;
    for (j = 0; j != 6; ++j)
    {
      while (1)
      {
        v23 = dword_519278[j];
        v37 = v23;
        LODWORD(v50) = v23;
        if ((*(a1 + 1236) & 1) == 0)
        {
          goto LABEL_62;
        }

        LODWORD(v38) = *(a1 + 1232);
        __dst[0] = 0x696E70746467686DLL;
        LODWORD(__dst[1]) = 0;
        v24 = sub_542F0(&v38, __dst, 4, &v50);
        *(&v27 + 1) = v25;
        *&v27 = v24;
        v26 = v27 >> 32;
        if ((v26 & 0x100000000) == 0 || !v26)
        {
          break;
        }

        sub_266144((a1 + 1192), v23, &v37);
        ++j;
        v21 = 1;
        if (j == 6)
        {
          goto LABEL_48;
        }
      }
    }

    if (v21)
    {
LABEL_48:
      if (*(a1 + 735) < 0)
      {
        sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
      }

      else
      {
        *__dst = *(a1 + 712);
        v41 = *(a1 + 728);
      }

      v28 = *(a1 + 16);
      v36[0] = *(a1 + 8);
      v36[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 16), 1uLL, memory_order_relaxed);
      }

      sub_37D2FC(&v50, __dst, v36);
    }

    LODWORD(v50) = 1832018808;
    if ((*(a1 + 1236) & 1) == 0)
    {
LABEL_62:
      sub_1EC054();
    }

    LODWORD(v38) = *(a1 + 1232);
    __dst[0] = 0x696E70746467686DLL;
    LODWORD(__dst[1]) = 0;
    v29 = sub_542F0(&v38, __dst, 4, &v50);
    *(&v32 + 1) = v30;
    *&v32 = v29;
    v31 = v32 >> 32;
    if ((v31 & 0x100000000) != 0 && v31)
    {
      LODWORD(__dst[0]) = 1832018808;
      sub_2CA130((a1 + 1192), 0x6D326378u, __dst);
      sub_8BD14(&v50, *(a1 + 8), *(a1 + 16));
      sub_2C3F24(&v38, &v50);
    }

    v33 = *(a1 + 1240);
    v34 = *(a1 + 1248);
    while (v33 != v34)
    {
      v35 = *v33;
      v33 += 2;
      (*(*v35 + 16))(v35);
    }
  }
}

void sub_2CA08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_65310(&a13);
  sub_46934(&__p);
  _Unwind_Resume(a1);
}

void sub_2CA130(void *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

uint64_t sub_2CA350(uint64_t a1, unsigned int a2, unsigned int a3, float a4)
{
  inData = a4;
  v5 = sub_8BE08(a2, a3);
  if (*(a1 + 1236) != 1 || HIDWORD(v5) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 1200);
  if (!v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v7 <= v5)
    {
      v9 = v5 % v7;
    }
  }

  else
  {
    v9 = (v7 - 1) & v5;
  }

  v10 = *(*(a1 + 1192) + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (!v11)
  {
    return 0;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= v7)
      {
        v12 %= v7;
      }
    }

    else
    {
      v12 &= v7 - 1;
    }

    if (v12 != v9)
    {
      return 0;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (*(v11 + 4) != v5)
  {
    goto LABEL_20;
  }

  inQualifierData = v5;
  v14 = *(a1 + 1232);
  *&inAddress.mSelector = 0x696E70746467706DLL;
  inAddress.mElement = 0;
  v15 = AudioObjectSetPropertyData(v14, &inAddress, 4u, &inQualifierData, 4u, &inData);
  v16 = *sub_5544(25);
  v17 = v16;
  if (v15)
  {
    if (v16)
    {
      v18 = v16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, inQualifierData);
        if (v26 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        inAddress.mSelector = 136316162;
        *&inAddress.mScope = "DSPChain.mm";
        v30 = 1024;
        v31 = 4048;
        v32 = 2080;
        v33 = v19;
        v34 = 2048;
        v35 = inData;
        v36 = 1024;
        v37 = v15;
        v20 = "%25s:%-5d Error while setting parameter %s to %f: %d";
        v21 = v18;
        v22 = OS_LOG_TYPE_ERROR;
        goto LABEL_36;
      }

      goto LABEL_38;
    }
  }

  else if (v16)
  {
    v23 = v16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, inQualifierData);
      if (v26 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      inAddress.mSelector = 136316162;
      *&inAddress.mScope = "DSPChain.mm";
      v30 = 1024;
      v31 = 4053;
      v32 = 2080;
      v33 = v24;
      v34 = 2048;
      v35 = inData;
      v36 = 1024;
      v37 = 0;
      v20 = "%25s:%-5d Success setting parameter %s to %f: %d";
      v21 = v23;
      v22 = OS_LOG_TYPE_INFO;
LABEL_36:
      _os_log_impl(&dword_0, v21, v22, v20, &inAddress, 0x2Cu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_38:
  }

  return v15;
}

uint64_t sub_2CA674(uint64_t a1, unsigned int a2, unsigned int a3, float *a4, uint64_t a5)
{
  v8 = sub_8BE08(a2, a3);
  v31 = v8;
  v32 = BYTE4(v8);
  if (*(a1 + 1236) != 1 || HIDWORD(v8) == 0)
  {
    return 2003332927;
  }

  LODWORD(v29[0]) = *(a1 + 1232);
  strcpy(&buf, "mpgdtpni");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  v11 = sub_2CAA28(v29, &buf, 4u, &v31);
  v13 = v11;
  if (v11 || (v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v13;
  }

  *a4 = *(&v11 + 1);
  v14 = *sub_5544(25);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      sub_22170(v29, 2003332927);
      if (v30 >= 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = v29[0];
      }

      if ((v32 & 1) == 0)
      {
        sub_1EC054();
      }

      sub_22170(v27, v31);
      v18 = v28;
      v19 = v27[0];
      sub_22170(__p, a5);
      v20 = v27;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if (v26 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      v22 = *a4;
      buf.mSelector = 136316418;
      *&buf.mScope = "DSPChain.mm";
      v34 = 1024;
      v35 = 4018;
      v36 = 2080;
      v37 = v17;
      v38 = 2080;
      v39 = v20;
      v40 = 2080;
      v41 = v21;
      v42 = 2048;
      v43 = v22;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Get DSP parameter(%s) %s (%s) = %f", &buf, 0x3Au);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }
  }

  return 0;
}

void sub_2CA900(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, __int128 buf, __int16 a23, __int16 a24, int a25)
{
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = sub_5544(25);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    v33 = v32;
    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v34 = v30[2];
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "DSPChain.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 4023;
      a24 = 1024;
      a25 = v34;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception: %d.", &buf, 0x18u);
    }

    __cxa_end_catch();
    JUMPOUT(0x2CA874);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2CAA28(AudioObjectID *a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (AudioObjectHasProperty(*a1, a2))
  {
    ioDataSize[0] = 2003329396;
    *&ioDataSize[1] = 0;
    PropertyData = 2003329396;
    v9 = 0;
    ioDataSize[0] = sub_543D0(*a1, a2, a3, a4);
    if (ioDataSize[0])
    {
      outData[0] = 0;
      PropertyData = AudioObjectGetPropertyData(*a1, a2, a3, a4, ioDataSize, outData);
      if (PropertyData)
      {
        v9 = 0;
      }

      else
      {
        v9 = outData[0];
      }
    }
  }

  else
  {
    v9 = 0;
    PropertyData = 2003332927;
  }

  return PropertyData | (v9 << 32);
}

void sub_2CAB64(unint64_t a1)
{
  *a1 = off_6BFFA8;
  v2 = (a1 + 1240);
  sub_F5714(&v2);
  sub_DDE50(a1 + 1192);
  sub_13ABB0(a1);

  operator delete();
}

unint64_t sub_2CABE8(unint64_t a1)
{
  *a1 = off_6BFFA8;
  v3 = (a1 + 1240);
  sub_F5714(&v3);
  sub_DDE50(a1 + 1192);

  return sub_13ABB0(a1);
}

uint64_t sub_2CAC5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CAC8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2CACCC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CACFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2CAD3C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CAD6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2CADAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2CADDC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2CAE18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C02A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2CAE8C(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2CAED4(uint64_t a1)
{
  if (*(a1 + 496) != 4096)
  {
    v2 = a1 + 48;
    *v12 = a1 + 48;
    v3 = 1;
    v12[8] = 1;
    sub_47BD8(a1 + 48);
    v4 = *(a1 + 32) - *(a1 + 24);
    if (v4)
    {
      v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
      v6 = 1;
      v7 = 8;
      do
      {
        v8 = (*(**(*(a1 + 24) + v7) + 144))(*(*(a1 + 24) + v7), 4096);
        v3 = v8 == 0;
        if (v8)
        {
          v9 = 1;
        }

        else
        {
          v9 = v6 >= v5;
        }

        ++v6;
        v7 += 24;
      }

      while (!v9);
    }

    sub_47C90(v2);
    if (v3)
    {
      *(a1 + 496) = 4096;
    }

    else
    {
      v10 = *sub_5544(14);
      v11 = v10;
      if (v10)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v12 = 136315394;
          *&v12[4] = "DSPChain.mm";
          v13 = 1024;
          v14 = 1966;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", v12, 0x12u);
        }
      }
    }
  }
}

caulk::concurrent::message **sub_2CB088(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = a1;
  v5[0] = v1;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_2CB114(v5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_2CB7D0(&v4);
}

void sub_2CB0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_2CB7D0(va);
  _Unwind_Resume(a1);
}

void sub_2CB114(float *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = atomic_load((v5 + 65));
        if (v6)
        {
          v7 = a1[4];
          v8 = *(v5 + 136);
          v9 = fabsf(v7);
          v10 = fabsf(v8);
          if (v9 < v10)
          {
            v9 = v10;
          }

          if (v9 < 1.0)
          {
            v9 = 1.0;
          }

          if (vabds_f32(v7, v8) > fabsf(v9 * 0.00000011921))
          {
            v11 = *(a1 + 3);
            if (v7 >= 11.0)
            {
              v12 = *sub_5544(42);
              v13 = v12;
              if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v21 = "DSPChain.mm";
                v22 = 1024;
                v23 = 355;
                v24 = 2048;
                v25 = 11.0;
                v26 = 2048;
                v27 = v7;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPGraphParameterUpdater::UpdateAULoudnessNormalizerParameters() - auln output gain above threshold %.2fdB. Gain is %.2f.", buf, 0x26u);
              }
            }

            *&valuePtr = v7;
            cf = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            if (!cf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }

            sub_88CE8(&v28, "DRCOutputGain");
            CFRetain(cf);
            v29 = cf;
            v18[0] = &v28;
            v18[1] = 1;
            valuePtr = sub_69CE8(v18);
            sub_23E2D8(valuePtr, 1073741838, 18);
            if (valuePtr)
            {
              CFRelease(valuePtr);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            CFRelease(cf);
            if (*(v5 + 112) <= v11)
            {
              v14 = *sub_5544(42);
              v15 = v14;
              if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v21 = "DSPChain.mm";
                v22 = 1024;
                v23 = 365;
                v24 = 2048;
                v25 = v7;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPGraphParameterUpdater::UpdateAULoudnessNormalizerParameters() - auln output gain is %.2f.", buf, 0x1Cu);
              }

              *(v5 + 112) = v11 + 1000000000;
            }

            *(v5 + 136) = v7;
          }
        }
      }

      sub_1A8C0(v4);
    }
  }
}

caulk::concurrent::message **sub_2CB7D0(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C0128;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x40uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2CB84C(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CB8BC(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2CB918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = *(a1 + 24);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  sub_2CB114(v2);
  if (v1)
  {

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2CB994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CB9AC(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CBA1C(caulk::concurrent::message *this)
{
  *this = off_6C0128;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

caulk::concurrent::message **sub_2CBA78(caulk::concurrent::message *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = a1;
  v5[0] = v1;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5[2] = *(a1 + 5);
  sub_2CBAFC(v5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_2CC0F0(&v4);
}

void sub_2CBADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_2CC0F0(&a9);
  _Unwind_Resume(a1);
}

void sub_2CBAFC(float *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = atomic_load((v5 + 64));
        if (v6)
        {
          v8 = a1[4];
          v7 = a1[5];
          if (*(v5 + 132) != 1 || *(v5 + 128) != v8 || *(v5 + 124) != 1)
          {
            goto LABEL_13;
          }

          v9 = *(v5 + 120);
          v10 = fabsf(v7);
          v11 = fabsf(v9);
          if (v10 < v11)
          {
            v10 = v11;
          }

          if (v10 < 1.0)
          {
            v10 = 1.0;
          }

          if (vabds_f32(v7, v9) > fabsf(v10 * 0.00000011921))
          {
LABEL_13:
            v12 = *(v5 + 80);
            if (v12)
            {
              v13 = std::__shared_weak_count::lock(v12);
              if (v13)
              {
                v14 = v13;
                v15 = *(v5 + 72);
                if (v15)
                {
                  v16 = *(v15 + 1056);
                  if (v16)
                  {
                    v17 = *(v15 + 1048);
                    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_1A8C0(v16);
                    v18 = std::__shared_weak_count::lock(v16);
                    std::__shared_weak_count::__release_weak(v16);
                    if (v18)
                    {
                      if (v17 && (*(*v17 + 280))(v17))
                      {
                        (*(*v17 + 272))(v17, v8 > 0.0, v7);
                        if (v8 <= 0.0)
                        {
                          v19 = *sub_5544(42);
                          v20 = v19;
                          if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136315394;
                            v22 = "DSPChain.mm";
                            v23 = 1024;
                            v24 = 333;
                            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d DSPGraphParameterUpdater::Reset() - resetting last slider position and ramp status.", buf, 0x12u);
                          }

                          if (*(v5 + 124) == 1)
                          {
                            *(v5 + 124) = 0;
                          }

                          if (*(v5 + 132) == 1)
                          {
                            *(v5 + 132) = 0;
                          }
                        }

                        else
                        {
                          *(v5 + 128) = v8;
                          *(v5 + 132) = 1;
                          *(v5 + 120) = v7;
                          *(v5 + 124) = 1;
                        }
                      }

                      sub_1A8C0(v18);
                    }
                  }
                }

                sub_1A8C0(v14);
              }
            }
          }
        }
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_2CC0D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

caulk::concurrent::message **sub_2CC0F0(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C00D8;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x38uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2CC16C(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CC1DC(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2CC238(void *a1)
{
  v1 = a1[4];
  v2[0] = a1[3];
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v2[2] = a1[5];
  sub_2CBAFC(v2);
  if (v1)
  {

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2CC2AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CC2C4(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2CC334(caulk::concurrent::message *this)
{
  *this = off_6C00D8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2CC390(uint64_t a1, int a2)
{
  if (*(a1 + 1160))
  {
    v4 = *sub_5544(25);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 735) < 0)
        {
          sub_54A0(__p, *(a1 + 712), *(a1 + 720));
        }

        else
        {
          *__p = *(a1 + 712);
          v22 = *(a1 + 728);
        }

        v7 = __p;
        v8 = *(a1 + 799);
        if (v22 < 0)
        {
          v7 = __p[0];
        }

        *buf = 136316162;
        v24 = "DSPChain.mm";
        if (a2)
        {
          v9 = "yes";
        }

        else
        {
          v9 = "no";
        }

        v25 = 1024;
        v26 = 2589;
        v27 = 2080;
        v28 = v7;
        v29 = 1024;
        LODWORD(v30[0]) = v8;
        WORD2(v30[0]) = 2080;
        *(v30 + 6) = v9;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Log Voice isolation state %d, while IO running? %s", buf, 0x2Cu);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v10 = *(a1 + 1160);
    v11 = *(a1 + 799);
    v12 = atomic_load((v10 + 16));
    if ((v12 ^ v11))
    {
      if (*(a1 + 799) && (*(v10 + 104) & 1) == 0)
      {
        (*(**v10 + 16))();
        *(v10 + 104) = 1;
      }

      v13 = *sub_5544(25);
      v14 = v13;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "Disabling";
        if (v11)
        {
          v15 = "Enabling";
        }

        v24 = "DSPChain.mm";
        v25 = 1024;
        v26 = 427;
        v16 = "thread-safe";
        *buf = 136315906;
        v28 = v15;
        v27 = 2080;
        if (!a2)
        {
          v16 = "instantly";
        }

        v29 = 2080;
        v30[0] = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s voice isolation %s", buf, 0x26u);
      }

      std::mutex::lock((v10 + 24));
      atomic_store(v11, (v10 + 16));
      if (a2)
      {
        v17 = caulk::mach::semaphore::timed_wait_or_error((v10 + 96), *(v10 + 88));
        std::mutex::unlock((v10 + 24));
        if ((v17 & 0x100000000) == 0)
        {
          v18 = *sub_5544(25);
          v19 = v18;
          if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = "off";
            v24 = "DSPChain.mm";
            *buf = 136315650;
            if (v11)
            {
              v20 = "on";
            }

            v25 = 1024;
            v26 = 435;
            v27 = 2080;
            v28 = v20;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Timed out attempting to tell IO thread about VI state (%s)", buf, 0x1Cu);
          }
        }

        if (v11)
        {
          return;
        }
      }

      else
      {
        atomic_store(v11, (v10 + 17));
        std::mutex::unlock((v10 + 24));
        if (v11)
        {
          return;
        }
      }

      if (*(v10 + 104) == 1)
      {
        (*(**v10 + 24))();
        *(v10 + 104) = 0;
      }
    }
  }
}

void *sub_2CC760(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t *sub_2CC7A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_6C03F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return sub_135DFC(a2 + 3, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
}

void sub_2CC81C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CC8C4(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2CC8E4(void *a1)
{
  *a1 = off_6C03F8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_2CC960(void *a1)
{
  *a1 = off_6C03F8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_2CC9BC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_2CCA68(void *a1)
{
  *a1 = off_6C0440;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2CCAD4(void *a1)
{
  *a1 = off_6C0440;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_2CCB20(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  sub_DD7C4(a1);
  v4 = *(a2 + 80);
  if (v4 != -1)
  {
    v6 = a1;
    (off_6C0140[v4])(&v6, a2);
    *(a1 + 80) = v4;
  }

  return a1;
}

uint64_t **sub_2CCBC8(uint64_t ***a1, uint64_t a2)
{
  v3 = *a1;
  sub_44E44(*a1, a2);
  sub_2726F4(v3 + 3, a2 + 24);
  result = sub_2726F4(v3 + 6, a2 + 48);
  *(v3 + 36) = *(a2 + 72);
  return result;
}

void sub_2CCC14(_Unwind_Exception *a1)
{
  sub_98A08(*(v1 + 32));
  sub_477A0(*(v1 + 8));
  _Unwind_Resume(a1);
}

_BYTE *sub_2CCC38(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (a2 + 40);
  v5 = *a1;
  **a1 = *a2;
  sub_80534(v3 + 8, (a2 + 8));
  result = sub_80534(v5 + 40, v4);
  *(v3 + 36) = *(a2 + 72);
  return result;
}

void sub_2CCC94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2CCCCC(uint64_t a1, int a2)
{
  result = (*(*a1 + 80))(a1);
  if (result)
  {
    v12 = a2 ^ 1;
    v5 = *sub_5544(25);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 735) < 0)
        {
          sub_54A0(__p, *(a1 + 712), *(a1 + 720));
        }

        else
        {
          *__p = *(a1 + 712);
          v11 = *(a1 + 728);
        }

        v8 = "Deactivating";
        if (a2)
        {
          v8 = "Activating";
        }

        v14 = "DSPChain.mm";
        v15 = 1024;
        v16 = 3825;
        v9 = __p;
        *buf = 136315906;
        if (v11 < 0)
        {
          v9 = __p[0];
        }

        v17 = 2080;
        v18 = v8;
        v19 = 2080;
        v20 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s processing block for graph %s", buf, 0x26u);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    return (*(*a1 + 128))(a1, 1685287015, 1852797026, &v12, 4, 0, 0, 0);
  }

  return result;
}

void sub_2CCEC4()
{
  v0 = sub_5544(6);
  v1 = *v0;
  if (*v0 && os_log_type_enabled(*v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "SingletonFactory_Aspen.cpp";
    v12 = 1024;
    v13 = 42;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Beginning instantiation of singletons.", buf, 0x12u);
  }

  v2 = sub_5544(10);
  v3 = sub_5544(6);
  v4 = 0;
  *buf = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&buf[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_10:
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "SystemSettingsManager_Aspen.cpp";
    v12 = 1024;
    v13 = 1111;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to create SystemSettingsManager.", buf, 0x12u);
  }

  if (!qword_6ECB88)
  {
    operator new();
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SystemSettingsManager_Aspen.cpp";
      v12 = 1024;
      v13 = 1113;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): sSystemSettingsManager is not NULL!", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "sSystemSettingsManager is not NULL!");
}

void sub_2CFD8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_255768(&STACK[0x388]);
    sub_4E0BC(v20);
    sub_4BC698(v19);
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2D0E3C(uint64_t a1)
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

void sub_2D0EBC(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = dlerror();
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
LABEL_5:
    v2 = v1;
    off_6EB710 = dlsym(v1, "AudioDataAnalysisManagerCreate");
    off_6EB718 = dlsym(v2, "AudioDataAnalysisManagerDispose");
    qword_6EB720 = dlsym(v2, "AudioDataAnalysisManagerReset");
    off_6EB728 = dlsym(v2, "AudioDataAnalysisManagerUpdateReportingSessions");
    qword_6EB730 = dlsym(v2, "AudioDataAnalysisManagerCreateNodePCM");
    off_6EB738 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeSPL");
    qword_6EB740 = dlsym(v2, "AudioDataAnalysisManagerRemoveNode");
    off_6EB748 = dlsym(v2, "AudioDataAnalysisManagerInitialize");
    qword_6EB750 = dlsym(v2, "AudioDataAnalysisManagerIsSessionInitialized");
    qword_6EB758 = dlsym(v2, "AudioDataAnalysisManagerProcessAudio");
    off_6EB760 = dlsym(v2, "AudioDataAnalysisManagerProcessSPL");
    qword_6EB768 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    qword_6EB770 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    off_6EB778 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeMicLevel");
    qword_6EB780 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSPL");
    qword_6EB788 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSoundClass");
    off_6EB790 = dlsym(v2, "AudioDataAnalysisManagerProcessMicLevel");
    off_6EB798 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceInfo");
    off_6EB7A0 = dlsym(v2, "AudioDataAnalysisManagerRegisterDeviceInfo");
    off_6EB7A8 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceConnectionState");
    off_6EB7B0 = dlsym(v2, "AudioDataAnalysisManagerStartServices");
    off_6EB7B8 = dlsym(v2, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    qword_6EB7C0 = dlsym(v2, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = dlerror();
    v4 = 136315138;
    v5 = v3;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }
}

void sub_2D1204(uint64_t a1, uint64_t a2)
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
  v3 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 76) = (v3 > 0xFFu) & v3;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
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
  *(a1 + 80) = 257;
  *(a1 + 72) = 16843009;
  *(a1 + 76) = 257;
  *(a1 + 82) = 16843009;
  if ((*(a1 + 20) & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = 4;
  *(a1 + 90) = 257;
  *__p = xmmword_517160;
  sub_1DFEA0((a1 + 96), __p, &v5);
  *(a1 + 404) = 1077936128;
  *(a1 + 408) = 1;
  *(a1 + 322) = 257;
  if ((*(a1 + 948) & 1) == 0)
  {
    *(a1 + 948) = 1;
  }

  *(a1 + 944) = 2;
  if (sub_45168())
  {
    sub_2D189C(__p);
  }

  sub_2D7894(__p);
}

void sub_2D1804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_1E0000(v39);
  _Unwind_Resume(a1);
}

void sub_2D189C(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_46AC8C();
  sub_2DE844(v1, "speaker_general");
}

void sub_2D4EF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2D7894(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_46AC8C();
  sub_2DD97C(v1, "speaker_general");
}

void sub_2DAF88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2DD97C(uint64_t a1, char *a2)
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
  *(a1 + 120) = 1668051824;
  v11 = 1936746861;
  v12 = 0;
  v5[6] = 0;
  v6 = 0x6473706700000001;
  v7 = 1869768046;
  memset(__p, 0, sizeof(__p));
  sub_4625C(__p, &v6, &v8, 3uLL);
  memset(v5, 0, 24);
  sub_2DDE10(v5, __p, &v10);
}

void sub_2DDC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void *sub_2DDDBC(void *a1, char *a2, __int128 *a3)
{
  v5 = sub_53E8(a1, a2);
  sub_1E2150(v5 + 24, a3);
  return a1;
}

void sub_2DDDF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2DDF1C(uint64_t a1, uint64_t *a2)
{
  sub_88CE8(a1, "IODelegates");
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_282724(&v16, v4);
  v6 = *a2;
  for (i = a2[1]; v6 != i; v6 += 24)
  {
    memset(__p, 0, sizeof(__p));
    sub_46980(__p, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
    v7 = v17;
    if (v17 >= v18)
    {
      v9 = (v17 - v16) >> 3;
      if ((v9 + 1) >> 61)
      {
        sub_189A00();
      }

      v10 = (v18 - v16) >> 2;
      if (v10 <= v9 + 1)
      {
        v10 = v9 + 1;
      }

      if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      v22 = &v16;
      if (v11)
      {
        sub_1DB8DC(v11);
      }

      v12 = (8 * v9);
      v19[0] = 0;
      v19[1] = v12;
      v20 = v12;
      v21 = 0;
      *v12 = sub_AFB90(__p);
      v20 = v12 + 1;
      sub_2827A4(&v16, v19);
      v8 = v17;
      sub_282854(v19);
    }

    else
    {
      *v7 = sub_AFB90(__p);
      v8 = v7 + 1;
    }

    v17 = v8;
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  v13 = sub_2DE7A8(&v16);
  v19[0] = &v16;
  sub_282684(v19);
  *(a1 + 8) = v13;
  return a1;
}

void sub_2DE0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a13;
  sub_282684(&__p);
  sub_1D5FE0(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE104(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = sub_53E8(a1, a2);
  v6 = *a3;
  v5[5] = *(a3 + 2);
  *(v5 + 3) = v6;
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v7 = *(a3 + 24);
  v5[8] = *(a3 + 5);
  *(v5 + 3) = v7;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 3) = 0;
  v8 = a3[3];
  v5[11] = *(a3 + 8);
  *(v5 + 9) = v8;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 6) = 0;
  v9 = *(a3 + 72);
  v5[14] = *(a3 + 11);
  *(v5 + 6) = v9;
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  v10 = a3[6];
  v5[17] = *(a3 + 14);
  *(v5 + 15) = v10;
  *(a3 + 12) = 0;
  *(a3 + 13) = 0;
  *(a3 + 14) = 0;
  *(v5 + 36) = *(a3 + 30);
  v5[20] = 0;
  v5[21] = 0;
  v5[19] = 0;
  *(v5 + 19) = a3[8];
  v11 = *(a3 + 19);
  v5[21] = *(a3 + 18);
  *(a3 + 17) = 0;
  *(a3 + 18) = 0;
  *(a3 + 16) = 0;
  v5[22] = v11;
  *(a3 + 19) = 0;
  v5[23] = 0;
  v5[24] = 0;
  v5[25] = 0;
  *(v5 + 23) = a3[10];
  v5[25] = *(a3 + 22);
  *(a3 + 21) = 0;
  *(a3 + 22) = 0;
  *(a3 + 20) = 0;
  v5[26] = *(a3 + 23);
  v12 = a3 + 12;
  v13 = *(a3 + 24);
  v5[27] = v13;
  v14 = v5 + 27;
  v15 = *(a3 + 25);
  v5[28] = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a3 + 23) = v12;
    *v12 = 0;
    *(a3 + 25) = 0;
  }

  else
  {
    *(a1 + 208) = v14;
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = a3[13];
  *(a1 + 248) = *(a3 + 28);
  *(a3 + 26) = 0;
  *(a3 + 27) = 0;
  *(a3 + 28) = 0;
  v16 = *(a3 + 29);
  *(a1 + 264) = *(a3 + 60);
  *(a1 + 256) = v16;
  sub_450F8(a1 + 272, a3 + 31);
  *(a1 + 312) = *(a3 + 288);
  *(a1 + 320) = *(a3 + 37);
  *(a3 + 37) = 0;
  return a1;
}

CFStringRef *sub_2DE280(CFStringRef *a1, char *a2)
{
  v4 = sub_88CE8(a1, "ConfigName");
  sub_88CE8(v4 + 1, a2);
  return a1;
}

uint64_t sub_2DE2D4(uint64_t a1, char *a2, int *a3)
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

void sub_2DE36C(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE3A0(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "BeamIndex");
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

void sub_2DE440(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE474(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "DataSourceOrder");
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

void sub_2DE514(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE548(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "BeamIndex");
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

void sub_2DE5E8(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2DE6CC(uint64_t a1, const void ***a2)
{
  sub_88CE8(a1, "DeviceSpecificProperties");
  *(a1 + 8) = sub_2DE7A8(a2);
  return a1;
}

uint64_t sub_2DE720(uint64_t a1, unsigned int **a2)
{
  sub_88CE8(a1, "ChannelSelectorMap");
  *(a1 + 8) = sub_AFB90(a2);
  return a1;
}

uint64_t sub_2DE774(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFArrayRef sub_2DE7A8(const void ***a1)
{
  sub_4788C(&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  v6 = sub_47904(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_2DE828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2DE844(uint64_t a1, char *a2)
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
  v11 = 1936746861;
  v12 = 0;
  v5[6] = 0;
  v6 = 0x6473706700000001;
  v7 = 1869768046;
  memset(__p, 0, sizeof(__p));
  sub_4625C(__p, &v6, &v8, 3uLL);
  memset(v5, 0, 24);
  sub_2DDE10(v5, __p, &v10);
}

void sub_2DEAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

uint64_t sub_2DED2C(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6C0620;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_2DEDC4(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_2DEE0C(a1);
  return sub_2DF198(&v2);
}

void sub_2DEDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2DF198(va);
  _Unwind_Resume(a1);
}

void sub_2DEE0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        sub_2DF2E0(v2);
      }

      sub_1A8C0(v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2DEEA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
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
    v26 = sub_468EC(1, *v25, *(v25 + 8));
    if (v26)
    {
      v27 = v26;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
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
        a21 = 192;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a15 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_17;
    }

LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    v31 = sub_5544(14);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    if (!v32)
    {
      goto LABEL_18;
    }

    v27 = v32;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = (*(*v30 + 16))(v30);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a17) = 2080;
      *(&a17 + 4) = v33;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 192;
      v34 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v35 = v27;
      v36 = 44;
LABEL_16:
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, v34, &buf, v36);
    }
  }

  else
  {
    v37 = sub_5544(14);
    v38 = sub_468EC(1, *v37, *(v37 + 8));
    if (!v38)
    {
      goto LABEL_18;
    }

    v27 = v38;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a17) = 2080;
      *(&a17 + 4) = "";
      WORD6(a17) = 1024;
      *(&a17 + 14) = 192;
      v34 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v35 = v27;
      v36 = 34;
      goto LABEL_16;
    }
  }

LABEL_17:

LABEL_19:
  __cxa_end_catch();
  JUMPOUT(0x2DEE70);
}

caulk::concurrent::message **sub_2DF198(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C0648;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2DF214(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2DF284(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2DF2E0(uint64_t a1)
{
  sub_2DF438(&v12);
  v2 = v12;
  std::mutex::lock(v12);
  v3 = *v2[1].__m_.__opaque;
  if (v3)
  {
    opaque = v2[1].__m_.__opaque;
    v5 = *v2[1].__m_.__opaque;
    do
    {
      v6 = sub_6F834(v5 + 4, (a1 + 24));
      if ((v6 & 0x80u) == 0)
      {
        opaque = v5;
      }

      v5 = *&v5[(v6 >> 4) & 8];
    }

    while (v5);
    if (opaque != v2[1].__m_.__opaque && (sub_6F834((a1 + 24), opaque + 4) & 0x80) == 0)
    {
      v7 = *(opaque + 1);
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
        v9 = opaque;
        do
        {
          v8 = *(v9 + 2);
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (v2[1].__m_.__sig == opaque)
      {
        v2[1].__m_.__sig = v8;
      }

      --*&v2[1].__m_.__opaque[8];
      sub_75234(v3, opaque);
      sub_ED13C((opaque + 32));
      operator delete(opaque);
    }
  }

  std::mutex::unlock(v2);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_2DF420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2DF438(void *a1)
{
  if (!qword_6E9318 || (v2 = std::__shared_weak_count::lock(qword_6E9318)) == 0 || !qword_6E9310)
  {
    operator new();
  }

  *a1 = qword_6E9310;
  a1[1] = v2;
}

void sub_2DF630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 3)
  {
    v22 = __cxa_begin_catch(exception_object);
    v23 = sub_5544(14);
    v24 = sub_468EC(1, *v23, *(v23 + 8));
    v25 = v24;
    if (v24)
    {
      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v22[2]);
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
        a21 = 105;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a15 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_17;
    }

LABEL_18:

    __cxa_end_catch();
    JUMPOUT(0x2DF520);
  }

  v27 = __cxa_begin_catch(exception_object);
  if (a2 == 2)
  {
    v28 = v27;
    v29 = sub_5544(14);
    v30 = sub_468EC(1, *v29, *(v29 + 8));
    v25 = v30;
    if (!v30)
    {
      goto LABEL_18;
    }

    v25 = v30;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v31 = (*(*v28 + 16))(v28);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a17) = 2080;
      *(&a17 + 4) = v31;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 105;
      v32 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v33 = v25;
      v34 = 44;
LABEL_16:
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, v32, &buf, v34);
    }
  }

  else
  {
    v35 = sub_5544(14);
    v36 = sub_468EC(1, *v35, *(v35 + 8));
    v25 = v36;
    if (!v36)
    {
      goto LABEL_18;
    }

    v25 = v36;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a17) = 2080;
      *(&a17 + 4) = "";
      WORD6(a17) = 1024;
      *(&a17 + 14) = 105;
      v32 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v33 = v25;
      v34 = 34;
      goto LABEL_16;
    }
  }

LABEL_17:

  goto LABEL_18;
}

void sub_2DFC10()
{
  sub_2DF438(&v12);
  v0 = v12;
  atomic_store(FigCaptureMicrophoneInterferenceMitigationIsRequired() != 0, &v12[1].__m_.__opaque[16]);
  v1 = *sub_5544(25);
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = atomic_load(&v0[1].__m_.__opaque[16]);
    *&buf[4] = "HighFPSCameraCoexMitigationIODelegate.mm";
    *buf = 136315650;
    if (v3)
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }

    *&buf[12] = 1024;
    *&buf[14] = 42;
    *&buf[18] = 2080;
    *&buf[20] = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d The high FPS camera coex mitigation requirement was set to %s", buf, 0x1Cu);
  }

  std::mutex::lock(v0);
  sig = v0[1].__m_.__sig;
  if (sig != v0[1].__m_.__opaque)
  {
    do
    {
      if (sig[55] < 0)
      {
        sub_54A0(buf, *(sig + 4), *(sig + 5));
      }

      else
      {
        *buf = *(sig + 2);
        *&buf[16] = *(sig + 6);
      }

      v6 = *(sig + 8);
      *&buf[24] = *(sig + 7);
      v15 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (v15)
        {
          v7 = std::__shared_weak_count::lock(v15);
          if (v7)
          {
            if (*&buf[24])
            {
              v8 = atomic_load(&v0[1].__m_.__opaque[16]);
              sub_2E0128(*&buf[24], v8 & 1);
            }

            sub_1A8C0(v7);
          }

          if (v15)
          {
            std::__shared_weak_count::__release_weak(v15);
          }
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v9 = *(sig + 1);
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
          v10 = *(sig + 2);
          v11 = *v10 == sig;
          sig = v10;
        }

        while (!v11);
      }

      sig = v10;
    }

    while (v10 != v0[1].__m_.__opaque);
  }

  std::mutex::unlock(v0);
  if (v13)
  {
    sub_1A8C0(v13);
  }
}

void sub_2DFE28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 buf, __int128 a19, int a20, __int16 a21, __int16 a22, int a23)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = sub_5544(14);
    v26 = sub_468EC(1, *v25, *(v25 + 8));
    v27 = v26;
    if (v26)
    {
      v27 = v26;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v24[2]);
        p_p = __p;
        if (a17 >= 0)
        {
          p_p = &__p;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a19) = 2080;
        *(&a19 + 4) = p_p;
        WORD6(a19) = 2080;
        *(&a19 + 14) = "";
        a22 = 1024;
        a23 = 37;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a17 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_17;
    }

LABEL_18:

    __cxa_end_catch();
    JUMPOUT(0x2DFC5CLL);
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    v31 = sub_5544(14);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    v27 = v32;
    if (!v32)
    {
      goto LABEL_18;
    }

    v27 = v32;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = (*(*v30 + 16))(v30);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a19) = 2080;
      *(&a19 + 4) = v33;
      WORD6(a19) = 2080;
      *(&a19 + 14) = "";
      a22 = 1024;
      a23 = 37;
      v34 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v35 = v27;
      v36 = 44;
LABEL_16:
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, v34, &buf, v36);
    }
  }

  else
  {
    v37 = sub_5544(14);
    v38 = sub_468EC(1, *v37, *(v37 + 8));
    v27 = v38;
    if (!v38)
    {
      goto LABEL_18;
    }

    v27 = v38;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a19) = 2080;
      *(&a19 + 4) = "";
      WORD6(a19) = 1024;
      *(&a19 + 14) = 37;
      v34 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v35 = v27;
      v36 = 34;
      goto LABEL_16;
    }
  }

LABEL_17:

  goto LABEL_18;
}

void sub_2E0128(uint64_t a1, char a2)
{
  sub_8BEE4();
  v4 = v3 = qword_709F20;
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = v4;
  operator new();
}

uint64_t *sub_2E01E0(uint64_t *a1)
{
  v12 = a1;
  v1 = a1[1];
  if (v1)
  {
    v2 = *a1;
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = *(a1 + 16);
    v4 = std::__shared_weak_count::lock(v1);
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        v6 = *sub_5544(25);
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            if (*(v2 + 47) < 0)
            {
              sub_54A0(__p, *(v2 + 24), *(v2 + 32));
            }

            else
            {
              *__p = *(v2 + 24);
              v14 = *(v2 + 40);
            }

            v9 = __p;
            if (v14 < 0)
            {
              v9 = __p[0];
            }

            v16 = "HighFPSCameraCoexMitigationIODelegate.mm";
            v17 = 1024;
            v18 = 212;
            v10 = "true";
            *buf = 136315906;
            if (!v3)
            {
              v10 = "false";
            }

            v19 = 2080;
            v20 = v9;
            v21 = 2080;
            v22 = v10;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Handling high FPS camera coex IO delegate for chain %s. Mitigating? %s", buf, 0x26u);
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        sub_92E50(v2 + 48, v3);
      }

      sub_1A8C0(v5);
    }

    std::__shared_weak_count::__release_weak(v1);
  }

  return sub_92750(&v12);
}

void sub_2E0390(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, __int128 buf, __int128 a19, int a20, __int16 a21, __int16 a22, int a23)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1A8C0(v23);
  if (a2 == 3)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = sub_5544(14);
    v29 = sub_468EC(1, *v28, *(v28 + 8));
    if (v29)
    {
      v30 = v29;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v27[2]);
        p_p = __p;
        if (a16 >= 0)
        {
          p_p = &__p;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a19) = 2080;
        *(&a19 + 4) = p_p;
        WORD6(a19) = 2080;
        *(&a19 + 14) = "";
        a22 = 1024;
        a23 = 215;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a16 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_17;
    }

LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v33 = v32;
    v34 = sub_5544(14);
    v35 = sub_468EC(1, *v34, *(v34 + 8));
    if (!v35)
    {
      goto LABEL_18;
    }

    v30 = v35;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = (*(*v33 + 16))(v33);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a19) = 2080;
      *(&a19 + 4) = v36;
      WORD6(a19) = 2080;
      *(&a19 + 14) = "";
      a22 = 1024;
      a23 = 215;
      v37 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v38 = v30;
      v39 = 44;
LABEL_16:
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v37, &buf, v39);
    }
  }

  else
  {
    v40 = sub_5544(14);
    v41 = sub_468EC(1, *v40, *(v40 + 8));
    if (!v41)
    {
      goto LABEL_18;
    }

    v30 = v41;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a19) = 2080;
      *(&a19 + 4) = "";
      WORD6(a19) = 1024;
      *(&a19 + 14) = 215;
      v37 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v38 = v30;
      v39 = 34;
      goto LABEL_16;
    }
  }

LABEL_17:

LABEL_19:
  __cxa_end_catch();
  JUMPOUT(0x2E034CLL);
}

void sub_2E06B4(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, (a1 + 24), kFigCaptureNotification_MicrophoneInterferenceMitigationRequiredChanged, 0);
  v3 = *sub_5544(25);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "HighFPSCameraCoexMitigationIODelegate.mm";
    v7 = 1024;
    v8 = 122;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Central high FPS camera coex mitigation handler is destroyed", &v5, 0x12u);
  }

  sub_20D854(*(a1 + 96));
  std::mutex::~mutex((a1 + 24));
}

void sub_2E07B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2E07BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C05B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2E0830(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2E08A0(caulk::concurrent::message *this)
{
  *this = off_6C0648;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2E08FC(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  operator new();
}

uint64_t *sub_2E09AC(void *a1)
{
  v34 = a1;
  v1 = a1[1];
  if (v1)
  {
    v2 = *a1;
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (!v3)
    {
LABEL_28:
      std::__shared_weak_count::__release_weak(v1);
      return sub_8BE90(&v34);
    }

    v4 = v3;
    if (!v2)
    {
LABEL_27:
      sub_1A8C0(v4);
      goto LABEL_28;
    }

    v6 = *(v2 + 8);
    v5 = *(v2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2DF438(&v35);
    if (v5)
    {
      v33 = v35;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v5);
      if (v7 && v6)
      {
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            if (*(v6 + 47) < 0)
            {
              sub_54A0(__p, *(v6 + 24), *(v6 + 32));
            }

            else
            {
              *__p = *(v6 + 24);
              v38 = *(v6 + 40);
            }

            v15 = __p;
            if (v38 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136315650;
            v42 = "HighFPSCameraCoexMitigationIODelegate.mm";
            v43 = 1024;
            v44 = 60;
            v45 = 2080;
            v46 = v15;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Adding high FPS camera coex mitigation IO delegate %s", buf, 0x1Cu);
            if (SHIBYTE(v38) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        std::mutex::lock(v33);
        opaque = v33[1].__m_.__opaque;
        v17 = *v33[1].__m_.__opaque;
        v32 = v33 + 1;
        if (v17)
        {
          v18 = v33[1].__m_.__opaque;
          do
          {
            v19 = sub_6F834(v17 + 4, (v2 + 24));
            if ((v19 & 0x80u) == 0)
            {
              v18 = v17;
            }

            v17 = *(v17 + ((v19 >> 4) & 8));
          }

          while (v17);
          if (opaque != v18)
          {
            if ((sub_6F834((v2 + 24), v18 + 4) & 0x80) == 0)
            {
              atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v20 = v18[8];
              v18[7] = v6;
              v18[8] = v5;
              if (v20)
              {
                std::__shared_weak_count::__release_weak(v20);
              }

              goto LABEL_65;
            }

            if ((sub_6F834((v2 + 24), v18 + 4) & 0x80) == 0)
            {
              if ((sub_6F834(v18 + 4, (v2 + 24)) & 0x80) == 0)
              {
                v39 = v18;
                v40 = v18;
                goto LABEL_63;
              }

              v26 = v18[1];
              if (v26)
              {
                v27 = v18[1];
                do
                {
                  v28 = v27;
                  v27 = *v27;
                }

                while (v27);
              }

              else
              {
                v29 = v18;
                do
                {
                  v28 = v29[2];
                  v24 = *v28 == v29;
                  v29 = v28;
                }

                while (!v24);
              }

              if (v28 == opaque || (v30 = v18[1], v31 = sub_6F834((v2 + 24), v28 + 4), v26 = v30, v31 < 0))
              {
                if (v26)
                {
                  v40 = v28;
                  v18 = v28;
                }

                else
                {
                  v40 = v18++;
                }

                goto LABEL_62;
              }

LABEL_58:
              v18 = sub_6F86C(v32, &v40, (v2 + 24));
LABEL_62:
              v18 = *v18;
LABEL_63:
              if (!v18)
              {
                operator new();
              }

LABEL_65:
              std::mutex::unlock(v33);
              v25 = atomic_load(&v33[1].__m_.__opaque[16]);
              sub_2E0128(v6, v25 & 1);
            }
          }

          v17 = *v18;
        }

        else
        {
          v18 = v33[1].__m_.__opaque;
        }

        v21 = v18;
        if (v32->__m_.__sig == v18)
        {
          goto LABEL_59;
        }

        if (v17)
        {
          v22 = v17;
          do
          {
            v21 = v22;
            v22 = v22[1];
          }

          while (v22);
        }

        else
        {
          v23 = v18;
          do
          {
            v21 = v23[2];
            v24 = *v21 == v23;
            v23 = v21;
          }

          while (v24);
        }

        if ((sub_6F834(v21 + 4, (v2 + 24)) & 0x80) != 0)
        {
LABEL_59:
          if (v17)
          {
            v40 = v21;
            v18 = v21 + 1;
          }

          else
          {
            v40 = v18;
          }

          goto LABEL_62;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = *sub_5544(25);
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 47) >= 0)
      {
        v13 = (v2 + 24);
      }

      else
      {
        v13 = *(v2 + 24);
      }

      *buf = 136315650;
      v42 = "HighFPSCameraCoexMitigationIODelegate.mm";
      v43 = 1024;
      v44 = 75;
      v45 = 2080;
      v46 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add high FPS camera coex mitigation IO delegate for chain %s to central callback handler", buf, 0x1Cu);
    }

    if (v7)
    {
      sub_1A8C0(v7);
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    else if (!v5)
    {
LABEL_23:
      if (v36)
      {
        sub_1A8C0(v36);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      goto LABEL_27;
    }

    std::__shared_weak_count::__release_weak(v5);
    goto LABEL_23;
  }

  return sub_8BE90(&v34);
}

void sub_2E0EEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, uint64_t a13, void **__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 buf, __int128 a27, int a28, __int16 a29, __int16 a30, int a31)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_92704(&a20);
  std::mutex::unlock(a12);
  sub_1A8C0(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (a15)
  {
    sub_1A8C0(a15);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  sub_1A8C0(v31);
  if (a2 == 3)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = sub_5544(14);
    v38 = sub_468EC(1, *v37, *(v37 + 8));
    if (v38)
    {
      v39 = v38;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v36[2]);
        p_p = __p;
        if (a19 >= 0)
        {
          p_p = &__p;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a27) = 2080;
        *(&a27 + 4) = p_p;
        WORD6(a27) = 2080;
        *(&a27 + 14) = "";
        a30 = 1024;
        a31 = 169;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a19 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_23;
    }

LABEL_24:
    v39 = 0;
    goto LABEL_25;
  }

  v41 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v42 = v41;
    v43 = sub_5544(14);
    v44 = sub_468EC(1, *v43, *(v43 + 8));
    if (!v44)
    {
      goto LABEL_24;
    }

    v39 = v44;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v45 = (*(*v42 + 16))(v42);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a27) = 2080;
      *(&a27 + 4) = v45;
      WORD6(a27) = 2080;
      *(&a27 + 14) = "";
      a30 = 1024;
      a31 = 169;
      v46 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v47 = v39;
      v48 = 44;
LABEL_22:
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, v46, &buf, v48);
    }
  }

  else
  {
    v49 = sub_5544(14);
    v50 = sub_468EC(1, *v49, *(v49 + 8));
    if (!v50)
    {
      goto LABEL_24;
    }

    v39 = v50;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a27) = 2080;
      *(&a27 + 4) = "";
      WORD6(a27) = 1024;
      *(&a27 + 14) = 169;
      v46 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v47 = v39;
      v48 = 34;
      goto LABEL_22;
    }
  }

LABEL_23:

LABEL_25:
  __cxa_end_catch();
  JUMPOUT(0x2E0B6CLL);
}

void sub_2E1290(uint64_t a1)
{
  sub_2E12C8(a1);

  operator delete();
}

uint64_t sub_2E12C8(uint64_t a1)
{
  v2 = sub_5544(25);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 47) < 0)
        {
          sub_54A0(__p, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *__p = *(a1 + 24);
          v10 = *(a1 + 40);
        }

        v5 = __p;
        if (v10 < 0)
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v12 = "HighFPSCameraCoexMitigationIODelegate.mm";
        v13 = 1024;
        v14 = 198;
        v15 = 2080;
        v16 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying high FPS camera coex IO delegate for chain %s", buf, 0x1Cu);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_2DF2E0(a1);
  v6 = *(a1 + 88);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  sub_133B84(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_2E1438(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2E1454(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C05E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2E14C8(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1[2])
    {
      v4 = sub_5544(7);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v21 = "HALDeviceManager.cpp";
          v22 = 1024;
          v23 = 115;
          v24 = 2080;
          v25 = a2;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s", buf, 0x1Cu);
        }
      }
    }
  }

  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      v9 = *(v7 + 7);
      sub_2E1720(__p, *(v7 + 7));
      v10 = sub_5544(7);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
      {
        v12 = __p;
        if (v18 < 0)
        {
          v12 = __p[0];
        }

        v13 = "NULL";
        if (v19)
        {
          v13 = v12;
        }

        *buf = 136315906;
        v21 = "HALDeviceManager.cpp";
        v22 = 1024;
        v23 = 123;
        v24 = 2048;
        v25 = v9;
        v26 = 2080;
        v27 = v13;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d AudioObjectID: %lu, UID = %s", buf, 0x26u);
      }

      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      v7 = v15;
    }

    while (v15 != v6);
  }
}

void sub_2E1720(uint64_t a1, AudioObjectID a2)
{
  LODWORD(__p) = a2;
  strcpy(buf, " diubolg");
  buf[9] = 0;
  *&buf[10] = 0;
  sub_12794C(&v15, &__p, buf, 0, 0);
  if (!v15)
  {
    v7 = sub_5544(7);
    if ((*(v7 + 8) & 1) == 0 || !*v7)
    {
LABEL_22:
      sub_48540(buf, v16[1]);
      *a1 = *buf;
      *(a1 + 16) = *&buf[16];
      *(a1 + 24) = 1;
      goto LABEL_23;
    }

    sub_8AA24(v12, "<unknown>");
    v22 = a2;
    __p = 0x676C6F626C6E616DLL;
    LODWORD(v19) = 0;
    sub_12794C(buf, &v22, &__p, 0, 0);
    LOBYTE(__p) = 0;
    v20 = 0;
    if (buf[24] & 1) != 0 && (v8 = *&buf[16], *&buf[16] = 0, __p = &off_6DACD8, v19 = v8, v20 = 1, sub_8AAAC(&buf[8]), (v20))
    {
      v9 = v19;
      v19 = 0;
      v13 = &off_6DACD8;
      v14 = v9;
    }

    else
    {
      sub_224064(&v13, v12[1]);
      v13 = &off_6DACD8;
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_8AAAC(&__p);
LABEL_17:
    sub_8AAAC(v12);
    v10 = sub_5544(7);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "HALDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 105;
          *&buf[18] = 2048;
          *&buf[20] = a2;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioObjectID %lu is kAudioObjectPropertyName %@.", buf, 0x26u);
        }
      }
    }

    sub_8AAAC(&v13);
    goto LABEL_22;
  }

  v4 = sub_5544(7);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    sub_28CBA0(&__p, v15);
    v6 = v21 >= 0 ? &__p : __p;
    *buf = 136315906;
    *&buf[4] = "HALDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 94;
    *&buf[18] = 2048;
    *&buf[20] = a2;
    v24 = 2080;
    v25 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to read device UID for device %lu; device may have already been removed (status = %s)", buf, 0x26u);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_23:
  if (v17 == 1)
  {
    sub_8AAAC(v16);
  }
}

void sub_2E1A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_8AAAC(&a11);
  if (a16 == 1)
  {
    sub_8AAAC(&a14);
  }

  _Unwind_Resume(a1);
}

void sub_2E1AA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_5544(7);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "HALDeviceManager.cpp";
    v7 = 1024;
    v8 = 453;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error Occured handling a Device Update", &v5, 0x12u);
  }

  sub_2E14C8((v2 + 208), "Cached Devices");
  sub_2E14C8(a1[1], "Fetched Devices");
}

uint64_t **sub_2E1B94(void *a1, void *a2, uint64_t **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1C4454(a3, *(v5 + 7));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_2E1C14(void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2E1CA0(uint64_t a1, void *a2)
{
  v4 = std::runtime_error::runtime_error(a1, "DeviceUpdate failed");
  v4->__vftable = off_6C06B8;
  HIBYTE(v4[2].__vftable) = 19;
  strcpy(&v4[1], "DeviceUpdate failed");
  sub_44E44(&v4[2].__imp_, a2);
  sub_63250(&v15);
  v5 = *(a1 + 40);
  if (v5 != (a1 + 48))
  {
    do
    {
      sub_22564(&v15, " ", 1);
      std::ostream::operator<<();
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != (a1 + 48));
  }

  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      HIBYTE(v14) = 0;
      goto LABEL_21;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v10 - locale;
  if (v9)
  {
    memmove(&v13, locale, v9);
  }

LABEL_21:
  *(&v13 + v9) = 0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_2E1F8C(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 48));
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_2E1FE0(uint64_t a1)
{
  *a1 = off_6C06B8;
  sub_477A0(*(a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_2E2048(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2E2064(uint64_t a1)
{
  *a1 = off_6C06B8;
  sub_477A0(*(a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_2E20E0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t sub_2E211C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

NSObject *sub_2E2164()
{
  qword_709648 = dispatch_queue_create("HALDeviceManager Device Update Queue", 0);
  std::__shared_mutex_base::__shared_mutex_base(&stru_709650);
  qword_7096F8 = &qword_7096F8;
  qword_709700 = &qword_7096F8;
  qword_709708 = 0;
  dword_709710 = 1;
  qword_709728 = 0;
  qword_709720 = 0;
  qword_709718 = &qword_709720;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = sub_5544(7);
    v6 = sub_5544(6);
    v7 = 0;
    *block = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&block[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v10 = *v5;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *block = 136315394;
      *&block[4] = "DeviceManager.cpp";
      *&block[12] = 1024;
      *&block[14] = 90;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to create DeviceManager.", block, 0x12u);
    }

    if (!qword_6E71D8)
    {
      operator new();
    }

    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "DeviceManager.cpp";
      *&block[12] = 1024;
      *&block[14] = 92;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): sDeviceManager is not NULL!", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sDeviceManager is not NULL!");
  }

  v14 = &qword_709648;
  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = sub_2E2158;
  v16 = &unk_6C06D0;
  v17 = &v14;
  dispatch_sync(qword_709648, block);
  sub_4E890();
  result = sub_73838(1u, &qword_6E9368, sub_EEDB0, &qword_709648);
  v1 = result;
  if (result)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        *block = 136315394;
        *&block[4] = "HALDeviceManager.cpp";
        *&block[12] = 1024;
        *&block[14] = 164;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to add device listener", block, 0x12u);
      }
    }

    v4 = __cxa_allocate_exception(0x10uLL);
    *v4 = &off_6DDDD0;
    v4[2] = v1;
  }

  return result;
}

void sub_2E2644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_477A0(qword_709720);
  sub_87980(&qword_7096F8);
  sub_2164F0(&stru_709650);
  if (qword_709648)
  {
    dispatch_release(qword_709648);
  }

  _Unwind_Resume(a1);
}

void sub_2E2704(uint64_t *a1)
{
  sub_EF8C0(*a1);

  operator delete();
}

void sub_2E2774(uint64_t *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (_os_feature_enabled_impl())
  {
    __p[0] = &stru_709650;
    LOBYTE(__p[1]) = 1;
    std::__shared_mutex_base::lock_shared(&stru_709650);
    if (qword_709700 != &qword_7096F8)
    {
      v2 = *(qword_709700 + 24);
      if (v2)
      {
        atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    std::__shared_mutex_base::unlock_shared(&stru_709650);
  }

  else
  {
    v3 = sub_2450DC();
    v9[0] = off_6C0700;
    v9[1] = a1;
    v10 = v9;
    sub_47BD8(v3);
    for (i = *(v3 + 304); i != (v3 + 296); i = i[1])
    {
      v5 = i[2];
      if (v5)
      {
        (*(*v5 + 128))(__p);
        v6 = i[3];
        v7[0] = i[2];
        v7[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          (*(*v10 + 48))(v10, v7);
          operator new();
        }

        sub_46A74();
      }
    }

    sub_47C90(v3);
    sub_98A08(0);
    sub_2E2B18(v9);
  }
}

void sub_2E2A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E2B18(uint64_t a1)
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

void sub_2E2B98(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_849B8(*(a1 + 8), v3);
}

void sub_2E2BF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E2C10(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C0700;
  a2[1] = v2;
  return result;
}

void *sub_2E2CA4(uint64_t **a1, void ***a2, uint64_t a3)
{
  result = sub_6F86C(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_2E2D88(uint64_t a1, const void **a2, int a3, uint64_t a4, _DWORD *a5)
{
  std::mutex::lock((a1 + 344));
  if (!*a2)
  {
    v16 = sub_5544(14);
    v17 = sub_468EC(1, *v16, *(v16 + 8));
    v18 = v17;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "CPMSInterface.mm";
      *&__p[12] = 1024;
      *&__p[14] = 191;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Initialized dictionary from CPMS is null!", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Initialized dictionary from CPMS is null!");
    goto LABEL_16;
  }

  sub_2E308C(__p, *a2);
  v10 = a4 + 8;
  sub_98A08(*(a4 + 8));
  v11 = *&__p[8];
  *a4 = *__p;
  *(a4 + 8) = v11;
  v12 = *&__p[16];
  *(a4 + 16) = *&__p[16];
  if (v12)
  {
    *(v11 + 16) = v10;
    *__p = &__p[8];
    *&__p[8] = 0;
    *&__p[16] = 0;
    v11 = 0;
  }

  else
  {
    *a4 = v10;
  }

  sub_98A08(v11);
  v13 = *(a1 + 248);
  v14 = *(a1 + 256);
  if (v13 != v14)
  {
    while (*v13)
    {
      sub_125D8(v19, *v13);
      *__p = *v19;
      *&__p[16] = v20;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v23 = 100000;
      if (!*sub_6F86C(a4, &v21, __p))
      {
        operator new();
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (++v13 == v14)
      {
        goto LABEL_14;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
  }

LABEL_14:
  *a5 = a3;
  std::mutex::unlock((a1 + 344));
}

void sub_2E3028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v22);
  std::mutex::unlock((v21 + 344));
  _Unwind_Resume(a1);
}

void sub_2E308C(void *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  Count = CFDictionaryGetCount(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  sub_4788C(keys, Count);
  sub_4788C(values, Count);
  CFDictionaryGetKeysAndValues(a2, keys[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      sub_125D8(v9, keys[0][i]);
      v7 = sub_6FCD8(values[0][i]);
      *__p = *v9;
      v12 = v10;
      v9[1] = 0;
      v10 = 0;
      v9[0] = 0;
      v13 = v7;
      if (!*sub_6F86C(a1, &v16, __p))
      {
        operator new();
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }
}

const void **sub_2E3304(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_2E3338(uint64_t a1, CFTypeRef cf)
{
  v3 = CFCopyDescription(cf);
  sub_1267C(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_2E338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

void *sub_2E33A0(uint64_t **a1, void ***a2, __int128 **a3)
{
  v3 = *sub_6F86C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_2E3494(uint64_t a1, CFTypeRef *a2)
{
  sub_10FD4(cf, *a2);
  v3 = sub_5544(17);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = CFCopyDescription(cf[0]);
        cf[1] = v6;
        sub_1267C(__p, v6);
        if (v6)
        {
          CFRelease(v6);
        }

        v7 = __p;
        if (v35 < 0)
        {
          v7 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "CPMSInterface.mm";
        v38 = 1024;
        v39 = 293;
        v40 = 2080;
        v41 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Haptics -- In Reference Dictionary: %s", buf, 0x1Cu);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (!sub_310658())
  {
    if (sub_71704())
    {
      sub_2E3B28(a1);
    }

LABEL_30:
    v22 = sub_5544(14);
    v23 = sub_468EC(1, *v22, *(v22 + 8));
    v24 = v23;
    if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CPMSInterface.mm";
      v38 = 1024;
      v39 = 306;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): inData did not match AEA values!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "inData did not match AEA values!");
    goto LABEL_36;
  }

  *buf = a1 + 296;
  v8 = sub_2E33A0((a1 + 96), (a1 + 296), buf);
  if (!cf[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_36:
    goto LABEL_37;
  }

  v9 = v8[7];
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_72578(cf[0], qword_6E9398);
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Could not find item");
    goto LABEL_36;
  }

  v13 = sub_6FCD8(v12);
  v14 = v13;
  v15 = v13 - v10;
  if (v13 < v10 || v13 > v11)
  {
    v28 = sub_5544(14);
    v29 = sub_468EC(1, *v28, *(v28 + 8));
    v30 = v29;
    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CPMSInterface.mm";
      v38 = 1024;
      v39 = 244;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SInt32 inRefernceValue is outside of the supported range!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "SInt32 inRefernceValue is outside of the supported range!");
    goto LABEL_36;
  }

  v16 = *sub_5544(17);
  v17 = v16;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CPMSInterface.mm";
    v38 = 1024;
    v39 = 245;
    v40 = 1024;
    LODWORD(v41) = v14;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Switch Haptics -- In Battery Referenced Value: %u ", buf, 0x18u);
  }

  if (v11 == v10)
  {
    v31 = sub_5544(14);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    v33 = v32;
    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CPMSInterface.mm";
      v38 = 1024;
      v39 = 254;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v26 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
LABEL_37:
    __cxa_throw(exception, v27, v26);
  }

  v18 = ((*(*(a1 + 120) + 4) - **(a1 + 120)) * v15 / (v11 - v10) + **(a1 + 120));
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = *sub_5544(17);
  v20 = v19;
  if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CPMSInterface.mm";
    v38 = 1024;
    v39 = 307;
    v40 = 1024;
    LODWORD(v41) = v18;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Haptics -- Out Nominal Value: %u", buf, 0x18u);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v18;
}

void sub_2E3AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  sub_4BA7C(&a13);
  _Unwind_Resume(a1);
}

void sub_2E3D24(uint64_t a1, const __CFString *a2)
{
  sub_125D8(__p, a2);
  *buf = __p;
  v3 = sub_2E33A0((a1 + 96), __p, buf);
  v5 = v3[7];
  v4 = v3[8];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if (!((v6 >> 2) >> 62))
    {
      sub_1D7C28(v6 >> 2);
    }

    sub_189A00();
  }

  v7 = sub_5544(14);
  v8 = sub_468EC(1, *v7, *(v7 + 8));
  v9 = v8;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = __p;
    if (v13 < 0)
    {
      v10 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "CPMSInterface.mm";
    v15 = 1024;
    v16 = 467;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CPMS reference budget for timescale '%s' via Embedded Device Tree is Null!", buf, 0x1Cu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "CPMS reference budget for timescale '%s' via Embedded Device Tree is Null!");
}

void sub_2E4030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1F0870(0, v16);
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2E40A0(void *a1, int a2, int a3)
{
  v6 = a1[16];
  v7 = a1[17];
  if (v6 >= v7)
  {
    v9 = a1[15];
    v10 = v6 - v9;
    v11 = (v6 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      goto LABEL_29;
    }

    if ((v7 - v9) >> 1 > v12)
    {
      v12 = (v7 - v9) >> 1;
    }

    if (v7 - v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      sub_1D7C28(v13);
    }

    v14 = (v6 - v9) >> 2;
    v15 = (4 * v11);
    v7 = 0;
    v16 = (4 * v11 - 4 * v14);
    *v15 = a2;
    v8 = (v15 + 1);
    memcpy(v16, v9, v10);
    v17 = a1[15];
    a1[15] = v16;
    a1[16] = v8;
    a1[17] = 0;
    if (v17)
    {
      operator delete(v17);
      v7 = a1[17];
    }
  }

  else
  {
    *v6 = a2;
    v8 = v6 + 4;
  }

  a1[16] = v8;
  if (v8 < v7)
  {
    *v8 = a3;
    v18 = v8 + 4;
    goto LABEL_25;
  }

  v19 = a1[15];
  v20 = v8 - v19;
  v21 = (v8 - v19) >> 2;
  v22 = v21 + 1;
  if ((v21 + 1) >> 62)
  {
LABEL_29:
    sub_189A00();
  }

  if ((v7 - v19) >> 1 > v22)
  {
    v22 = (v7 - v19) >> 1;
  }

  if (v7 - v19 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v23 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    sub_1D7C28(v23);
  }

  v24 = (v8 - v19) >> 2;
  v25 = (4 * v21);
  v26 = (4 * v21 - 4 * v24);
  *v25 = a3;
  v18 = v25 + 1;
  memcpy(v26, v19, v20);
  v27 = a1[15];
  a1[15] = v26;
  a1[16] = v18;
  a1[17] = 0;
  if (v27)
  {
    operator delete(v27);
  }

LABEL_25:
  a1[16] = v18;
  v28 = *sub_5544(17);
  v29 = v28;
  if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = a1[15];
    v31 = *v30;
    LODWORD(v30) = v30[1];
    v32 = 136315906;
    v33 = "CPMSInterface.mm";
    v34 = 1024;
    v35 = 317;
    v36 = 1024;
    v37 = v31;
    v38 = 1024;
    v39 = v30;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS -- Nominal Budget returned from AEA: min '%u' ; max '%u'", &v32, 0x1Eu);
  }
}

void sub_2E42E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 295) < 0)
  {
    sub_54A0(__p, *(a1 + 272), *(a1 + 280));
  }

  else
  {
    *__p = *(a1 + 272);
    v7 = *(a1 + 288);
  }

  v8 = a2;
  sub_2E43E0((a1 + 168), __p, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 319) < 0)
  {
    sub_54A0(__p, *(a1 + 296), *(a1 + 304));
  }

  else
  {
    *__p = *(a1 + 296);
    v7 = *(a1 + 312);
  }

  v8 = a3;
  sub_2E43E0((a1 + 168), __p, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  sub_2E3B28(a1);
}

void sub_2E43C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2E43E0(uint64_t **a1, void ***a2, uint64_t a3)
{
  result = sub_6F86C(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

const __CFArray *sub_2E44C4(CFArrayRef *a1, unsigned int a2, void *a3)
{
  result = *a1;
  if (result)
  {
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, a2);
      *a3 = ValueAtIndex;
      return (ValueAtIndex != 0);
    }
  }

  return result;
}

uint64_t sub_2E4528(CFArrayRef *a1, unsigned int a2, void *a3)
{
  cf = 0;
  v4 = sub_2E44C4(a1, a2, &cf);
  result = 0;
  if (v4)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFTypeID sub_2E45AC(CFArrayRef *a1, unsigned int a2, void *a3)
{
  cf = 0;
  result = sub_2E44C4(a1, a2, &cf);
  if (result)
  {
    v5 = cf;
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      result = CFNumberGetTypeID();
      if (v6 == result)
      {

        return CFNumberGetValue(v5, kCFNumberFloat32Type, a3);
      }
    }
  }

  return result;
}

uint64_t sub_2E463C(CFArrayRef *a1, unsigned int a2, void *a3)
{
  cf = 0;
  v4 = sub_2E44C4(a1, a2, &cf);
  result = 0;
  if (v4)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2E46B4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

NSObject *sub_2E46F4(uint64_t a1, unsigned int **a2)
{
  v16 = (*(*a1 + 120))(a1);
  __p.__r_.__value_.__r.__words[0] = 0x696E707473736323;
  LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
  sub_127F10(buf, &v16, &__p, 0, 0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v3 = *&v19[4];
  v4 = *&v19[12];
  v5 = sub_5544(27);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    sub_10898C(&__p, v3, v4);
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *v19 = "Device_HapticDebug_Aspen.cpp";
    *&v19[8] = 1024;
    *&v19[10] = 162;
    *&v19[14] = 2080;
    *&v19[16] = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Valid haptic debug datasources: %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_17:
    v12 = (&dword_0 + 1);
  }

  else
  {
    v10 = *a2;
    while (v3 != v4)
    {
      v11 = v3;
      while (*v11 != *v10)
      {
        if (++v11 == v4)
        {
          v9 = v10;
          goto LABEL_19;
        }
      }

      if (++v10 == v8)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v13 = sub_5544(18);
    v12 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, *v9);
        v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *v19 = "Device_HapticDebug_Aspen.cpp";
        *&v19[8] = 1024;
        *&v19[10] = 174;
        *&v19[14] = 2080;
        *&v19[16] = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Haptic input source %s is not supported", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v12 = 0;
    }
  }

  if (v3)
  {
    operator delete(v3);
  }

  return v12;
}

void sub_2E4978(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E4998(uint64_t a1)
{
  v2 = qword_7001B8;
  if (qword_7001B8)
  {
    v6[1] = qword_7001C0;
    if (qword_7001C0)
    {
      atomic_fetch_add_explicit((qword_7001C0 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = *(a1 + 80);
    v4 = *(a1 + 88);
    v5[0] = v3;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    sub_469CFC(v2, v5);
  }

  sub_46613C(v6);
}

void sub_2E4A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E4A70(unsigned int **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_5544(27);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 16))(&__p, a1);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v75 = "Device_HapticDebug_Aspen.cpp";
    v76 = 1024;
    v77 = 127;
    v78 = 2080;
    v79 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device is %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((byte_6E84A8 & 1) == 0)
  {
    sub_1123D0(&__p, @"TDMDebugInputs", 0);
    if (__p.__r_.__value_.__s.__data_[0] == 1)
    {
      std::string::operator=(byte_6E84B8, &__p.__r_.__value_.__r.__words[1]);
      v7 = byte_6E84B8[23];
      if (byte_6E84B8[23] < 0)
      {
        v7 = *&byte_6E84B8[8];
      }

      byte_6E84B0 = v7 != 0;
      if (v7)
      {
        goto LABEL_13;
      }

      v58 = sub_5544(14);
      v59 = sub_468EC(1, *v58, *(v58 + 8));
      v60 = v59;
      if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v75 = "RunTimeDefaults.mm";
        v76 = 1024;
        v77 = 1689;
        v78 = 2080;
        v79 = "TDMDebugInputs";
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: An invalid string was retrieved for defaults key %s", buf, 0x1Cu);
      }

      if (byte_6E84B0)
      {
LABEL_13:
        v8 = *sub_5544(14);
        v9 = v8;
        if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (byte_6E84B8[23] >= 0)
          {
            v10 = byte_6E84B8;
          }

          else
          {
            v10 = *byte_6E84B8;
          }

          *buf = 136315906;
          v75 = "RunTimeDefaults.mm";
          v76 = 1024;
          v77 = 1691;
          v78 = 2080;
          v79 = "TDMDebugInputs";
          v80 = 2080;
          v81 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined as %s", buf, 0x26u);
        }
      }

      byte_6E84A8 = 1;
    }

    if (v72 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }
  }

  v11 = byte_6E84B0;
  v69 = byte_6E84B0;
  if (byte_6E84B8[23] < 0)
  {
    sub_54A0(&v70, *byte_6E84B8, *&byte_6E84B8[8]);
    v11 = v69;
    if (v69)
    {
      goto LABEL_25;
    }

LABEL_52:
    LOBYTE(v64[0]) = 0;
    v66 = 0;
    goto LABEL_53;
  }

  v70 = *byte_6E84B8;
  if (!byte_6E84B0)
  {
    goto LABEL_52;
  }

LABEL_25:
  v12 = sub_5544(27);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
  {
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v70;
    }

    else
    {
      v14 = v70.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v75 = "HapticDebugCapturesPolicy.cpp";
    v76 = 1024;
    v77 = 76;
    v78 = 2080;
    v79 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d haptic input string read from defaults is %s", buf, 0x1Cu);
  }

  v15 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  size = v70.__r_.__value_.__l.__size_;
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v70.__r_.__value_.__l.__size_;
  }

  if (v17 <= 3)
  {
    v61 = sub_5544(14);
    v62 = *v61;
    if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v75 = "HapticDebugCapturesPolicy.cpp";
      v76 = 1024;
      v77 = 77;
      _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v67 = 0uLL;
  v68 = 0;
  v18 = v70.__r_.__value_.__r.__words[0];
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v70;
  }

  else
  {
    v19 = v70.__r_.__value_.__r.__words[0];
  }

  v20 = v19;
  while (1)
  {
    v21 = v20->__r_.__value_.__s.__data_[0];
    if (v21 != 44 && v21 != 32)
    {
      break;
    }

    v20 = (v20 + 1);
    if (!--v17)
    {
      goto LABEL_42;
    }
  }

  v40 = v20 - v19;
  if (v20 - v19 != -1)
  {
    v41 = 0;
    do
    {
      if (v41 == 8)
      {
        break;
      }

      v42 = v40 + 1;
      if ((v15 & 0x80u) != 0)
      {
        v15 = size;
      }

      else
      {
        v18 = &v70;
      }

      if (v15 <= v42)
      {
        goto LABEL_96;
      }

      v43 = (v18 + v42);
      v44 = ~v40 + v15;
      while (1)
      {
        v45 = v43->__r_.__value_.__s.__data_[0];
        if (v45 == 32 || v45 == 44)
        {
          break;
        }

        v43 = (v43 + 1);
        if (!--v44)
        {
          goto LABEL_96;
        }
      }

      if (v43 == (v18 + v15) || (v46 = v43 - v18, v47 = v46, v46 == -1))
      {
LABEL_96:
        v46 = -1;
        v47 = v15;
      }

      v48 = v47 - v40;
      if (v47 - v40 == 4)
      {
        *buf = bswap32(*(&v19->__r_.__value_.__l.__data_ + v40));
        sub_AFD28(&v67, buf);
      }

      else
      {
        v49 = sub_5544(14);
        v50 = *v49;
        if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_INFO))
        {
          std::string::basic_string(&__p, &v70, v40, v48, &v73);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          v75 = "StandardUtilities.cpp";
          v76 = 1024;
          v77 = 604;
          v78 = 2080;
          v79 = p_p;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "%25s:%-5d Skipping... 4cc code is not of size 4 : %s", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v15 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      size = v70.__r_.__value_.__l.__size_;
      v18 = v70.__r_.__value_.__r.__words[0];
      v52 = (v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v70 : v70.__r_.__value_.__r.__words[0];
      v53 = (v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v70.__r_.__value_.__r.__words[2]) : v70.__r_.__value_.__l.__size_;
      v54 = v53 > v46;
      v55 = v53 - v46;
      if (!v54)
      {
        break;
      }

      ++v41;
      v56 = (v52 + v46);
      while (1)
      {
        v57 = v56->__r_.__value_.__s.__data_[0];
        if (v57 != 44 && v57 != 32)
        {
          break;
        }

        v56 = (v56 + 1);
        if (!--v55)
        {
          goto LABEL_42;
        }
      }

      v40 = v56 - v52;
    }

    while (v56 - v52 != -1);
  }

LABEL_42:
  v22 = sub_5544(14);
  if (*(v22 + 8))
  {
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
      {
        sub_24C060(&__p, v67, *(&v67 + 1));
        v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v75 = "StandardUtilities.cpp";
        v76 = 1024;
        v77 = 614;
        v78 = 2080;
        v79 = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d FCC in Vector: %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *v64 = v67;
  v65 = v68;
  v66 = 1;
LABEL_53:
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    v11 = v66;
  }

  if (v11)
  {
    v25 = v64;
  }

  else
  {
    v25 = a1 + 67;
  }

  v26 = (*(*a1 + 56))(a1, 0);
  v27 = v26;
  if (v11)
  {
    v28 = &v64[1];
  }

  else
  {
    v28 = a1 + 68;
  }

  v29 = *v28 - *v25;
  if (v29 == v26)
  {
    v30 = (*(*a1 + 63))(a1, v25);
    v31 = *v28;
    v32 = *v25;
    if (v30)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      sub_46980(a2, v32, v31, (v31 - v32) >> 2);
      goto LABEL_78;
    }

    v29 = (v31 - v32) >> 2;
  }

  v33 = v27;
  if (v29 != v27)
  {
    v34 = sub_5544(27);
    v35 = *v34;
    if (*v34)
    {
      if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        v36 = *v28 - *v25;
        *buf = 136315906;
        v75 = "Device_HapticDebug_Aspen.cpp";
        v76 = 1024;
        v77 = 134;
        v78 = 2048;
        v79 = v36;
        v80 = 2048;
        v81 = v33;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d # of haptic debug inputs (%lu) does not equal %zu", buf, 0x26u);
      }
    }
  }

  if (((*(*a1 + 63))(a1, v25) & 1) == 0)
  {
    v37 = sub_5544(27);
    v38 = *v37;
    if (*v37)
    {
      if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
      {
        sub_10898C(&__p, *v25, *v28);
        v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v75 = "Device_HapticDebug_Aspen.cpp";
        v76 = 1024;
        v77 = 135;
        v78 = 2080;
        v79 = v39;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported input in list %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_78:
  if (v66 == 1)
  {
    if (v64[0])
    {
      v64[1] = v64[0];
      operator delete(v64[0]);
    }
  }
}

void sub_2E548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E5534(uint64_t a1, unsigned int a2)
{
  if (a2 != 1751409257)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_HapticDebug_Aspen.cpp";
      v14 = 1024;
      v15 = 193;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_HapticDebug_Aspen.cpp";
      v14 = 1024;
      v15 = 194;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_2E5708(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  (*(*a1 + 496))(a1);
  sub_15DD68(__dst);
}

void sub_2E58F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E5AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_2E5B00(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a2;
  v5 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v5 = off_6C07D8;
  v6 = sub_4ACD0C(v5, 0);
  v7 = (a1 + 536);
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  strcpy(inAddress, "crsstpni");
  inAddress[9] = 0;
  *&inAddress[10] = 0;
  if (AudioObjectHasProperty(v3, inAddress))
  {
    v8 = v6;
    global_queue = dispatch_get_global_queue(0, 0);
    v10 = global_queue;
    if (global_queue)
    {
      dispatch_retain(global_queue);
    }

    v11 = dispatch_semaphore_create(0);
    std::to_string(&v63, v6);
    v12 = std::string::insert(&v63, 0, "hdds", 4uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v64, ".dat", 4uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_2A33C8(inAddress);
    size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v65.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_1E1A58(buf, inAddress);
      sub_1E1A58(&v67.__pn_, &v65);
      sub_1E1AC0(&__p, buf, &v67);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_54A0(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __dst = __p;
      }

      if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__pn_.__r_.__value_.__l.__data_);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((inAddress[23] & 0x80000000) != 0)
      {
        operator delete(*inAddress);
      }
    }

    else
    {
      __dst = *inAddress;
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
    }

    v18 = open(p_dst, 0);
    if ((v18 & 0x80000000) == 0)
    {
      *inAddress = 0;
      *&inAddress[8] = inAddress;
      *&inAddress[16] = 0x4002000000;
      *&inAddress[24] = sub_2E6660;
      *&inAddress[32] = sub_2E6684;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      __p.__pn_.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
      __p.__pn_.__r_.__value_.__l.__size_ = 1174405120;
      __p.__pn_.__r_.__value_.__r.__words[2] = sub_2E669C;
      v60 = &unk_6C0A08;
      v61 = inAddress;
      object = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      dispatch_read(v18, 0xFFFFFFFFFFFFFFFFLL, v10, &__p);
      v19 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v11, v19);
      close(v18);
      v21 = *(*&inAddress[8] + 40);
      v20 = *(*&inAddress[8] + 48);
      v22 = v20 - v21;
      v23 = *(a1 + 552);
      v24 = *(a1 + 536);
      if (v23 - v24 < (v20 - v21))
      {
        v25 = v22 >> 2;
        if (v24)
        {
          *(a1 + 544) = v24;
          operator delete(v24);
          v23 = 0;
          v26 = (a1 + 536);
          *(a1 + 536) = 0;
          *(a1 + 544) = 0;
          *(a1 + 552) = 0;
        }

        else
        {
          v26 = (a1 + 536);
        }

        if (!(v25 >> 62))
        {
          v33 = v23 >> 1;
          if (v23 >> 1 <= v25)
          {
            v33 = v22 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          sub_469FC(v26, v34);
        }

        sub_189A00();
      }

      v58 = v8;
      v27 = v11;
      v28 = v10;
      v29 = *(a1 + 544);
      v30 = v29 - v24;
      if (v29 - v24 >= v22)
      {
        if (v20 != v21)
        {
          memmove(v24, v21, v20 - v21);
        }

        *(a1 + 544) = &v24[v22];
        v10 = v28;
        v11 = v27;
        v8 = v58;
        v7 = (a1 + 536);
      }

      else
      {
        if (v29 != v24)
        {
          memmove(v24, v21, v29 - v24);
          v29 = *(a1 + 544);
        }

        v7 = (a1 + 536);
        v31 = &v21[v30];
        v32 = v20 - &v21[v30];
        if (v32)
        {
          memmove(v29, v31, v32);
        }

        *(a1 + 544) = &v29[v32];
        v10 = v28;
        v11 = v27;
        v8 = v58;
      }

      v35 = sub_5544(27);
      v36 = *v35;
      if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
      {
        sub_24C060(&v67.__pn_, *(a1 + 536), *(a1 + 544));
        v37 = (v67.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v67 : v67.__pn_.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "Device_HapticDebug_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 80;
        *&buf[18] = 2048;
        *&buf[20] = v8;
        v69 = 2080;
        v70 = v37;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Haptic debug (read) -- channels: %zu, default datasources: %s", buf, 0x26u);
        if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__pn_.__r_.__value_.__l.__data_);
        }
      }

      if (object)
      {
        dispatch_release(object);
      }

      _Block_object_dispose(inAddress, 8);
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }
    }

    if (v8 != (*(a1 + 544) - *(a1 + 536)) >> 2)
    {
      LODWORD(v65.__r_.__value_.__l.__data_) = v3;
      v67.__pn_.__r_.__value_.__r.__words[0] = 0x696E707473737263;
      LODWORD(v67.__pn_.__r_.__value_.__r.__words[1]) = 0;
      sub_127F10(inAddress, &v65, &v67, 0, 0);
      v38 = *inAddress;
      if (*inAddress || (inAddress[32] & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = v38;
      }

      memset(buf, 0, 24);
      v39 = *&inAddress[8];
      sub_46980(buf, *&inAddress[8], *&inAddress[16], (*&inAddress[16] - *&inAddress[8]) >> 2);
      if (v39)
      {
        operator delete(v39);
      }

      v40 = *v7;
      if (*v7)
      {
        *(a1 + 544) = v40;
        operator delete(v40);
      }

      *v7 = *buf;
      *(a1 + 552) = *&buf[16];
      v41 = sub_5544(27);
      v42 = *v41;
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(a1 + 544);
        v44 = *(a1 + 536);
        sub_24C060(buf, v44, v43);
        v45 = buf[23] >= 0 ? buf : *buf;
        *inAddress = 136315906;
        *&inAddress[4] = "Device_HapticDebug_Aspen.cpp";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 87;
        *&inAddress[18] = 2048;
        *&inAddress[20] = v43 - v44;
        *&inAddress[28] = 2080;
        *&inAddress[30] = v45;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Haptic debug (write) -- channels: %zu, driver datasources: %s", inAddress, 0x26u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &__dst;
      }

      else
      {
        v46 = __dst.__pn_.__r_.__value_.__r.__words[0];
      }

      v47 = open(v46, 1537, 504);
      if ((v47 & 0x80000000) == 0)
      {
        v48 = dispatch_data_create(*(a1 + 536), *(a1 + 544) - *(a1 + 536), v10, 0);
        *inAddress = _NSConcreteStackBlock;
        *&inAddress[8] = 1174405120;
        *&inAddress[16] = sub_2E672C;
        *&inAddress[24] = &unk_6C0A38;
        *&inAddress[32] = v11;
        if (v11)
        {
          dispatch_retain(v11);
        }

        dispatch_write(v47, v48, v10, inAddress);
        v49 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v11, v49);
        dispatch_release(v48);
        close(v47);
        if (*&inAddress[32])
        {
          dispatch_release(*&inAddress[32]);
        }
      }
    }

    if (v8 != (*(a1 + 544) - *(a1 + 536)) >> 2)
    {
      v54 = sub_5544(14);
      v55 = *v54;
      if (*v54)
      {
        if (os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
        {
          v56 = (*(a1 + 544) - *(a1 + 536)) >> 2;
          *buf = 136315906;
          *&buf[4] = "Device_HapticDebug_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 106;
          *&buf[18] = 2048;
          *&buf[20] = v8;
          v69 = 2048;
          v70 = v56;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Number of data sources %zu does not match number of channels %zu.", buf, 0x26u);
        }
      }
    }

    v50 = sub_5544(27);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
    {
      sub_24C060(&v67.__pn_, *(a1 + 536), *(a1 + 544));
      v52 = (v67.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v67 : v67.__pn_.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "Device_HapticDebug_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 107;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      v69 = 2080;
      v70 = v52;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Haptic debug -- channels: %zu, default datasources: %s", buf, 0x26u);
      if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__pn_.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    if (v10)
    {
      dispatch_release(v10);
    }
  }

  return a1;
}

void sub_2E64A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (v59)
  {
    dispatch_release(v59);
  }

  if (v61)
  {
    dispatch_release(v61);
  }

  v63 = *v60;
  if (*v60)
  {
    *(v58 + 544) = v63;
    operator delete(v63);
  }

  sub_4B2820(v58);
  _Unwind_Resume(a1);
}

void sub_2E6648(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x2E6640);
}

__n128 sub_2E6660(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2E6684(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

intptr_t sub_2E669C(uint64_t a1, dispatch_data_t data, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_2E685C;
  v5[3] = &unk_6C09E0;
  v5[4] = *(a1 + 32);
  v6 = a3;
  dispatch_data_apply(data, v5);
  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_2E672C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = sub_5544(27);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = "Device_HapticDebug_Aspen.cpp";
        v10 = 1024;
        v11 = 96;
        v12 = 1024;
        v13 = a3;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error (write): %d", &v8, 0x18u);
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2E680C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_2E681C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void sub_2E6834(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_2E6844(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

uint64_t sub_2E685C(uint64_t a1, int a2, int a3, char *__src, uint64_t a5)
{
  sub_16B928((*(*(a1 + 32) + 8) + 40), __src, &__src[a5 & 0xFFFFFFFFFFFFFFFCLL], a5 >> 2);
  if (*(a1 + 40))
  {
    v6 = sub_5544(27);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v10 = 136315650;
        v11 = "Device_HapticDebug_Aspen.cpp";
        v12 = 1024;
        v13 = 70;
        v14 = 1024;
        v15 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error (read): %d", &v10, 0x18u);
      }
    }
  }

  return 1;
}

void sub_2E6954(uint64_t a1)
{
  sub_2E698C(a1);

  operator delete();
}

uint64_t sub_2E698C(uint64_t a1)
{
  *a1 = off_6C0A78;
  std::condition_variable::~condition_variable((a1 + 272));
  std::mutex::~mutex((a1 + 200));
  if (*(a1 + 184))
  {
    v2 = *(a1 + 176);
    v3 = *(*(a1 + 168) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 184) = 0;
    if (v2 != (a1 + 168))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 168));
    }
  }

  std::mutex::~mutex((a1 + 104));

  return sub_42A4D8(a1);
}

double sub_2E6A40()
{
  strcpy(&qword_6E9500, "Global Routing Mutex");
  byte_6E9517 = 20;
  qword_6E9518 = 850045863;
  result = 0.0;
  unk_6E9520 = 0u;
  unk_6E9530 = 0u;
  unk_6E9540 = 0u;
  unk_6E9550 = 0u;
  qword_6E94F8 = off_6C0A78;
  qword_6E9560 = 850045863;
  xmmword_6E9568 = 0u;
  unk_6E9578 = 0u;
  xmmword_6E9588 = 0u;
  qword_6E9598 = 0;
  qword_6E95A0 = &qword_6E95A0;
  qword_6E95A8 = &qword_6E95A0;
  qword_6E95B0 = 0;
  dword_6E95B8 = 0;
  qword_6E95C0 = 850045863;
  unk_6E95F1 = 0u;
  xmmword_6E95D8 = 0u;
  unk_6E95E8 = 0u;
  xmmword_6E95C8 = 0u;
  qword_6E9608 = 1018212795;
  xmmword_6E9610 = 0u;
  unk_6E9620 = 0u;
  qword_6E9630 = 0;
  return result;
}

BOOL sub_2E6B08()
{
  v0 = atomic_load(&qword_6E9558);
  v1 = pthread_self();
  if (v0 == v1)
  {
    std::mutex::lock(&qword_6E9560);
    ++dword_6E95B8;
    std::mutex::unlock(&qword_6E9560);
    std::mutex::lock(&qword_6E95C0);
    byte_6E9600 = 0;
    std::mutex::unlock(&qword_6E95C0);
    sub_42A318(&qword_6E94F8);
  }

  return v0 == v1;
}

uint64_t sub_2E6B94(uint64_t a1)
{
  v1 = atomic_load(&qword_6E9558);
  if (v1 == pthread_self())
  {
    std::mutex::lock(&qword_6E9560);
    operator new();
  }

  return 0;
}

void sub_2E6C70(uint64_t a1, uint64_t a2)
{
  sub_310AF4();
  v8 = 1;
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v12 = 0;
  v2 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  v12[4] = (v2 > 0xFFu) & v2;
  v12[5] = 1;
  *&v12[6] = 0;
  v13 = 0;
  v14 = 16777473;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  v17 = 0;
  v18 = 0;
  v19 = -1044381696;
  v20 = 1;
  v21 = -1044381696;
  v22 = 1;
  v23 = 0;
  v24 = 1;
  v25 = -1056964608;
  v26 = 1;
  v27 = -1033371648;
  v28 = 1;
  v29 = 0;
  v30 = 1;
  v31 = -1033371648;
  v32 = 1;
  v33 = 0;
  v34 = 1;
  v35 = -1044381696;
  v36 = 1;
  v37 = 0;
  v38 = 1;
  v39 = -1033371648;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v43 = -1033371648;
  v44 = 1;
  v45 = -1055916032;
  v46 = 1;
  v47 = -1033371648;
  v48 = 1;
  v49 = 0;
  v50 = 1;
  v51 = -1055916032;
  v52 = 1;
  v53 = -1033371648;
  v54 = 1;
  v55 = -1055916032;
  v56 = 1;
  v57 = -1033371648;
  v58 = 1;
  v59 = 0;
  v60 = 1;
  v61 = -1055916032;
  v62 = 1;
  v63 = -1043333120;
  v64 = 1;
  v65 = 0x40000000;
  v66 = 1;
  v67 = 16777472;
  v68 = 0;
  v69 = 1;
  v70 = 0;
  v71 = 1;
  v72 = 1103626240;
  v73 = 1;
  v74 = 0;
  v75 = 1;
  v76 = 1094713344;
  v77 = 1;
  v78 = 1094713344;
  v79 = 1;
  v80 = 1094713344;
  v81 = 1;
  v82 = -1061158912;
  v83 = 1;
  v84 = 1107296256;
  v85 = 1;
  v86 = 1107296256;
  v87 = 1;
  v88 = 1092616192;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 0;
  v93 = 1;
  v94 = 16777472;
  v95[0] = 0;
  v95[72] = 0;
  v95[80] = 0;
  v95[120] = 0;
  v95[128] = 0;
  v95[200] = 0;
  v95[208] = 0;
  v95[248] = 0;
  LOBYTE(v96) = 0;
  v97 = 0;
  LOBYTE(v98) = 0;
  v99 = 0;
  LOBYTE(v100) = 0;
  v101 = 0;
  LOBYTE(v102) = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  LOBYTE(v106) = 0;
  v107 = 0;
  LOBYTE(v108) = 0;
  v109 = 0;
  LOBYTE(v110) = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  LOBYTE(v114) = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 1;
  v129 = 0;
  v130 = 0;
  LOBYTE(v131) = 0;
  v132 = 0;
  LOBYTE(v133) = 0;
  v134 = 0;
  LOBYTE(v135) = 0;
  v136 = 0;
  LOBYTE(v137) = 0;
  v138 = 0;
  v139 = 0;
  LOBYTE(v140) = 0;
  v141 = 0;
  LOBYTE(v142) = 0;
  v143 = 0;
  LOBYTE(v144) = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  LOBYTE(v150) = 0;
  v151 = 0;
  LOBYTE(v152) = 0;
  v153 = 0;
  LOBYTE(v154) = 0;
  v155 = 0;
  LOBYTE(v156) = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  LOBYTE(__p) = 0;
  v164 = 0;
  v165.__r_.__value_.__s.__data_[0] = 0;
  v166 = 0;
  v167.__r_.__value_.__s.__data_[0] = 0;
  v168 = 0;
  v169.__r_.__value_.__s.__data_[0] = 0;
  v170 = 0;
  v171 = 256;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v4 = 1;
  v3 = 1953460273;
  v6 = 1;
  v5 = 2;
  v7 = 5;
  LODWORD(__src) = 3;
  sub_1F8148(v9, &__src, &__src + 4, 1uLL);
  *&__src = 0x400000003;
  sub_1F8148(&v10[1], &__src, &__src + 8, 2uLL);
  *&v12[12] = 257;
  *v12 = 0x101010101010101;
  v14 = 16843008;
  v63 = -1047527424;
  v64 = 1;
  v72 = 1103101952;
  v73 = 1;
  v78 = 0;
  v79 = 1;
  v80 = 0;
  v81 = 1;
  v76 = 0;
  v77 = 1;
  v92 = 1090519040;
  v93 = 1;
  v82 = -1040187392;
  v83 = 1;
  v65 = 0;
  v66 = 1;
  LOWORD(v67) = 257;
  v94 = 16843009;
  if ((v97 & 1) == 0)
  {
    v97 = 1;
  }

  v96 = 1836282987;
  if ((v99 & 1) == 0)
  {
    v99 = 1;
  }

  v98 = 2;
  if ((v101 & 1) == 0)
  {
    v101 = 1;
  }

  v100 = 8;
  if ((v103 & 1) == 0)
  {
    v103 = 1;
  }

  v102 = 16;
  v106 = 13;
  v107 = 1;
  v108 = 13;
  v109 = 1;
  v110 = 13;
  v111 = 1;
  v114 = 13;
  v115 = 1;
  v131 = 19;
  v132 = 1;
  v133 = 3;
  v134 = 1;
  v135 = 12;
  v136 = 1;
  v137 = 19;
  v138 = 1;
  v150 = 6;
  v151 = 1;
  v152 = 19;
  v153 = 1;
  v154 = 10;
  v155 = 1;
  v156 = 5;
  v157 = 1;
  v139 = 257;
  if ((v141 & 1) == 0)
  {
    v141 = 1;
  }

  v140 = 5;
  if ((v145 & 1) == 0)
  {
    v145 = 1;
  }

  v144 = 8;
  if ((v143 & 1) == 0)
  {
    v143 = 1;
  }

  v142 = 2;
  sub_30F70C(&__src, 100);
  if (v164 == 1)
  {
    if (SHIBYTE(v163) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v163 = v180;
  }

  else
  {
    __p = __src;
    v163 = v180;
    v164 = 1;
  }

  sub_1F826C(&v165, "_top_mic_general");
  sub_1F826C(&v167, "_top_mic_measurement");
  sub_1F826C(&v169, "_top_mic_hearing_accessibility");
  LOBYTE(v17) = 1;
  sub_47DB04(&v3);
  sub_1E0054(v95);
  sub_477A0(v16[0]);
  if (v10[1])
  {
    *&v11 = v10[1];
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

const __CFDictionary *sub_2E7334(const __CFDictionary *result, const void *a2, void *a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v4, kCFNumberSInt32Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *sub_2E73A0(const __CFDictionary *result, const void *a2, const __CFDictionary **a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFArrayGetTypeID())
      {
        *a3 = v4;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2E7400(CFDictionaryRef *a1, void *key, uint64_t a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  if (*a1)
  {
    Value = CFDictionaryGetValue(*a1, key);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFArrayGetTypeID())
      {
        if (*(a3 + 8))
        {
          if (*a3)
          {
            CFRelease(*a3);
            v9 = *(a3 + 8);
            *a3 = v7;
            *(a3 + 9) = 0;
            if ((v9 & 1) == 0)
            {
              return;
            }
          }

          else
          {
            *a3 = v7;
            *(a3 + 9) = 0;
          }

          CFRetain(v7);
        }

        else
        {
          *a3 = v7;
          *(a3 + 9) = 0;
        }
      }
    }
  }
}

uint64_t sub_2E74D8(uint64_t a1, const void *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v7 = v5;
  v8 = 1;
  if (*(a1 + 9) == 1 && v5 && *a1)
  {
    CFDictionarySetValue(*a1, a2, v5);
  }

  return sub_A07C4(&v7);
}

void sub_2E7550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A07C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2E756C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_load((v3 + 8));
  }

  v4 = sub_2E75C0(a1, a2);
  if (!v4)
  {
    return 1;
  }

  CFRunLoopSourceSignal(v4);
  CFRunLoopWakeUp(*(a1 + 8));
  return 0;
}

uint64_t sub_2E75C0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_load((v3 + 8));
  }

  v4 = (a1 + 24);
  v5 = (*(*(a1 + 24) + 16))(a1 + 24);
  for (i = v4[19]; ; i = *(i + 8))
  {
    if (i == v4 + 18)
    {
      v7 = 0;
      if (!v5)
      {
        return v7;
      }

      goto LABEL_10;
    }

    if (*(i + 24) == a2)
    {
      break;
    }
  }

  v7 = *(i + 16);
  if (!v5)
  {
    return v7;
  }

LABEL_10:
  (*(*v4 + 24))(v4);
  return v7;
}

BOOL sub_2E7684(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_load((v4 + 8));
  }

  v5 = sub_2E75C0(a1, a2);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = (*(*(a1 + 24) + 16))(a1 + 24);
  v8 = *(a1 + 176);
  if (v8 == (a1 + 168))
  {
LABEL_7:
    if (v7)
    {
LABEL_11:
      (*(*(a1 + 24) + 24))(a1 + 24);
    }
  }

  else
  {
    while (1)
    {
      v9 = v8[1];
      if (*(v8 + 6) == a2)
      {
        break;
      }

      v8 = v8[1];
      if (v9 == (a1 + 168))
      {
        goto LABEL_7;
      }
    }

    v11 = *v8;
    *(v11 + 8) = v9;
    *v9 = v11;
    --*(a1 + 184);
    operator delete(v8);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  CFRunLoopRemoveSource(*(a1 + 8), v6, kCFRunLoopDefaultMode);
  CFRunLoopWakeUp(*(a1 + 8));
  CFRelease(v6);
  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12)
  {
    result = os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v14 = 136315650;
    v15 = "RunLoopThread.cpp";
    v16 = 1024;
    v17 = 168;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removed outSourceID %u", &v14, 0x18u);
  }

  return 0;
}

void sub_2E7864(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_2E7870(void *a1, const void *(__cdecl *a2)(const void *), void (__cdecl *a3)(const void *), uint64_t a4)
{
  v8 = a1[2];
  if (v8)
  {
    atomic_load((v8 + 8));
  }

  if (!a2)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.version) = 136315394;
      *(&buf.version + 4) = "RunLoopThread.cpp";
      WORD2(buf.info) = 1024;
      *(&buf.info + 6) = 118;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [callback is NULL]: callback is NULL.", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "callback is NULL.");
  }

  if (!a3)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.version) = 136315394;
        *(&buf.version + 4) = "RunLoopThread.cpp";
        WORD2(buf.info) = 1024;
        *(&buf.info + 6) = 119;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d clientData is NULL. This may be dangerous / an error.", &buf, 0x12u);
      }
    }
  }

  v9 = sub_5544(14);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.version) = 136315906;
    *(&buf.version + 4) = "RunLoopThread.cpp";
    WORD2(buf.info) = 1024;
    *(&buf.info + 6) = 123;
    WORD1(buf.retain) = 2048;
    *(&buf.retain + 4) = a2;
    WORD2(buf.release) = 2048;
    *(&buf.release + 6) = a3;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to create source from callback %p / clientData %p.", &buf, 0x26u);
  }

  buf.version = 0;
  buf.info = a3;
  memset(&buf.retain, 0, 56);
  buf.perform = a2;
  v11 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &buf);
  if (v11)
  {
    v12 = (*(*a1 + 16))(a1, v11, a4);
    CFRelease(v11);
  }

  else
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "RunLoopThread.cpp";
      v23 = 1024;
      v24 = 127;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d CFRunLoopSourceCreate() failed.", &v21, 0x12u);
    }

    return 1;
  }

  return v12;
}

void sub_2E7B94(uint64_t a1, void *a2, int *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_load((v6 + 8));
  }

  if (a2)
  {
    v7 = a1 + 24;
    v8 = (*(*(a1 + 24) + 16))(a1 + 24);
    v9 = *(a1 + 160);
    if (v9 == -1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    atomic_fetch_add_explicit((a1 + 160), v10, memory_order_relaxed);
    if (v8)
    {
      (*(*v7 + 24))(a1 + 24);
    }

    *a3 = v9;
    CFRetain(a2);
    *v14 = a1 + 24;
    v14[8] = (*(*v7 + 16))(a1 + 24);
    operator new();
  }

  v11 = sub_5544(14);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    *v14 = 136315394;
    *&v14[4] = "RunLoopThread.cpp";
    v15 = 1024;
    v16 = 94;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [source is NULL]: source is NULL.", v14, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_257CB4(exception, "source is NULL.");
}

void sub_2E7E84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E7EC4(uint64_t a1)
{
  sub_2E7EFC(a1);

  operator delete();
}

uint64_t sub_2E7EFC(uint64_t a1)
{
  *a1 = off_6C0AB0;
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_load((v2 + 8));
  }

  v3 = a1 + 24;
  v4 = (*(*(a1 + 24) + 16))(a1 + 24);
  while (1)
  {
    v5 = *(a1 + 176);
    if (v5 == a1 + 168)
    {
      break;
    }

    (*(*a1 + 32))(a1, *(v5 + 24));
  }

  if (atomic_load((*(a1 + 16) + 8)))
  {
    CFRunLoopStop(*(a1 + 8));
    if ((*(*v3 + 64))(a1 + 24, 500000000))
    {
      v7 = sub_5544(14);
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315650;
          v11 = "RunLoopThread.cpp";
          v12 = 1024;
          v13 = 79;
          v14 = 1024;
          v15 = 500;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Thread stop timeout timed out after %u milliseconds", &v10, 0x18u);
        }
      }
    }
  }

  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v3 + 24))(a1 + 24);
  }

  sub_4E0BC((a1 + 168));
  sub_4BC698(a1 + 24);
  return a1;
}

void sub_2E8104(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2E8120(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v28 = a1 + 24;
  v4 = (*(v2 + 16))(a1 + 24);
  v29 = v4;
  Current = CFRunLoopGetCurrent();
  *(a1 + 8) = Current;
  if (!Current)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *policy_info = 136315394;
        *&policy_info[4] = "RunLoopThread.cpp";
        v31 = 1024;
        v32 = 249;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d CFRunLoopGetCurrent() failed.", policy_info, 0x12u);
      }
    }
  }

  sub_4BC0D8(a1 + 24);
  if (*(a1 + 196) != 1)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 16);
  *(v6 + 104) = *(a1 + 192);
  *(v6 + 121) = 0;
  if (!atomic_load((v6 + 8)))
  {
    goto LABEL_9;
  }

  v8 = atomic_load((v6 + 8));
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = *(v6 + 104);
  if (*(v6 + 122) == 1)
  {
    *policy_info = 0;
    v10 = pthread_mach_thread_np(v8);
    v11 = thread_policy_set(v10, 1u, policy_info, 1u);
    if (v11)
    {
LABEL_31:
      v26 = CAVerboseAbort("CAPThread::SetPriority: failed to set the fixed-priority policy, Error: 0x%X", v11);
      if (v27)
      {
        sub_1CC130(v26);
      }

      _Unwind_Resume(v26);
    }
  }

  v12 = pthread_self();
  *policy_info = v9 - sub_4218A4(v12);
  v13 = pthread_mach_thread_np(v8);
  v14 = thread_policy_set(v13, 3u, policy_info, 1u);
  if (v14)
  {
    v11 = CAVerboseAbort("CAPThread::SetPriority: failed to set the precedence policy, Error: 0x%X", v14);
    goto LABEL_31;
  }

LABEL_9:
  if (v4)
  {
    (*(*v3 + 24))(a1 + 24);
  }

  if (!Current)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *policy_info = 136315394;
      *&policy_info[4] = "RunLoopThread.cpp";
      v31 = 1024;
      v32 = 226;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PrepareRunLoop() failed.", policy_info, 0x12u);
    }

    goto LABEL_25;
  }

  LODWORD(v28) = 0;
  if ((*(*a1 + 24))(a1, sub_2E85A8, a1, &v28))
  {
LABEL_25:
    v18 = -1;
    goto LABEL_26;
  }

  CFRunLoopRun();
  v15 = sub_5544(14);
  v16 = *v15;
  if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    *policy_info = 136315394;
    *&policy_info[4] = "RunLoopThread.cpp";
    v31 = 1024;
    v32 = 217;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d CFRunLoopRun() returned", policy_info, 0x12u);
  }

  *policy_info = a1 + 24;
  v17 = (*(*v3 + 16))(a1 + 24);
  policy_info[8] = v17;
  (*(*v3 + 80))(a1 + 24);
  if (v17)
  {
    (*(*v3 + 24))(a1 + 24);
  }

  v18 = 0;
LABEL_26:
  v23 = sub_5544(14);
  v24 = *v23;
  if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
  {
    *policy_info = 136315906;
    *&policy_info[4] = "RunLoopThread.cpp";
    v31 = 1024;
    v32 = 230;
    v33 = 2048;
    v34 = a1;
    v35 = 2048;
    v36 = a1 + 16;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Thread with RunLoopThread owner %p (CAPThread %p) exited.", policy_info, 0x26u);
  }

  return v18;
}

void sub_2E85A8()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315394;
      v3 = "RunLoopThread.cpp";
      v4 = 1024;
      v5 = 29;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Shim callback was executed! It should not be possible to get here.", &v2, 0x12u);
    }
  }
}

uint64_t sub_2E86D0(uint64_t a1)
{
  v2 = sub_8703C();
  result = (*(*v2 + 336))(v2);
  if (result)
  {
    sub_8703C();
    operator new();
  }

  if (a1)
  {
    operator delete();
  }

  return result;
}

void sub_2E87F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v22[2]);
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
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x2E87A8);
  }

  v26 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v27 = v26;
    v28 = sub_5544(14);
    v29 = *v28;
    if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v30 = (*(*v27 + 16))(v27);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v30;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 98;
    v31 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v32 = v29;
    v33 = 44;
  }

  else
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
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
    v31 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v32 = v35;
    v33 = 34;
  }

  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v31, &buf, v33);
  goto LABEL_17;
}

void sub_2E8AA8(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  v2 = xmmword_5172C0;
  v3 = 1735159650;
  memset(__p, 0, sizeof(__p));
  sub_2C8104(__p, &v2, &v4, 2uLL);
}

void sub_2E8BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_4C70(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2E8C00(void *a1, uint64_t a2)
{
  v23.mSelector = a2;
  *&v23.mScope = 1735159650;
  if ((*(*a1 + 16))(a1, &v23))
  {
    sub_4E890();
    v4 = (*(*a1 + 120))(a1);
    v5 = sub_73838(v4, &v23, sub_2EA114, a1);
    if (v5)
    {
      v6 = sub_5544(18);
      v7 = sub_5544(29);
      v8 = 0;
      *buf = 0x100000002;
      v9 = *(v6 + 8);
      while (1)
      {
        v10 = *&buf[v8];
        if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
        {
          break;
        }

        v8 += 4;
        if (v8 == 8)
        {
          goto LABEL_9;
        }
      }

      if ((v9 & v10) == 0)
      {
        v6 = v7;
      }

LABEL_9:
      v11 = *v6;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v21;
        sub_22170(v21, v5);
        if (v22 < 0)
        {
          v12 = v21[0];
        }

        sub_22170(v19, a2);
        v13 = v20;
        v14 = v19[0];
        (*(*a1 + 128))(__p, a1);
        v15 = v19;
        if (v13 < 0)
        {
          v15 = v14;
        }

        if (v18 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        *buf = 136316418;
        *&buf[4] = "Device_Bluetooth_Aspen.cpp";
        v25 = 1024;
        v26 = 1017;
        v27 = 1024;
        v28 = v5;
        v29 = 2080;
        v30 = v12;
        v31 = 2080;
        v32 = v15;
        v33 = 2080;
        v34 = v16;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') adding property %s listener to bluetooth device with UID %s", buf, 0x36u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }
    }
  }
}

void sub_2E8E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E8ED0(uint64_t a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_68E60();
  operator new();
}

void sub_2E8F7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2E8FD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C0D70;
  a2[1] = v2;
  return result;
}

uint64_t *sub_2E9068(uint64_t a1)
{
  v44 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        if ((sub_231C4() & 1) != 0 || sub_23238("VA_HandleInEarStatusEvent", 0x19uLL) != &qword_709F00)
        {
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          v5 = os_signpost_id_generate(qword_6F6848);
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v13 = qword_6F6848;
            if (os_signpost_enabled(qword_6F6848))
            {
              v14 = sub_2E9A08(*(v4 + 268));
              if (HIDWORD(v14) == 1)
              {
                v16 = 1;
              }

              else
              {
                v16 = 2;
              }

              if (v14 == 1)
              {
                v17 = 1;
              }

              else
              {
                v17 = v16;
              }

              if ((v15 & 0xFF00000000) != 0)
              {
                v18 = v17;
              }

              else
              {
                v18 = -1;
              }

              if (v14 == -1)
              {
                v18 = -1;
              }

              *buf = 67109120;
              *&buf[4] = v18;
              _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VA_HandleInEarStatusEvent", "Updating InEarStatus for BT ports because headset status is %d", buf, 8u);
            }
          }
        }

        else
        {
          v5 = 0;
        }

        v52 = v5;
        v19 = sub_5544(43);
        if (*(v19 + 8))
        {
          v20 = *v19;
          if (*v19)
          {
            if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "SignpostUtilities.h";
              *&buf[12] = 1024;
              *&buf[14] = 87;
              *&buf[18] = 2080;
              *&buf[20] = "kInEarStatusEvent";
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
            }
          }
        }

        v21 = *(v4 + 588);
        v22 = *(v4 + 592);
        v23 = *(v4 + 596);
        v24 = *(v4 + 600);
        v25 = sub_2E9A08(*(v4 + 268));
        v27 = v25;
        v28 = v26;
        if (!*(a1 + 16) || v21 != v25 || __PAIR64__(v23, v22) != __PAIR64__(v26, HIDWORD(v25)) || v24 != BYTE4(v26))
        {
          *(v4 + 588) = v25;
          *(v4 + 596) = v26;
          v43 = HIDWORD(v26);
          *(v4 + 600) = BYTE4(v26);
          v29 = sub_5544(18);
          v30 = sub_5544(29);
          v31 = 0;
          *buf = 0x100000002;
          v32 = *(v29 + 8);
          while (1)
          {
            v33 = *&buf[v31];
            if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
            {
              break;
            }

            v31 += 4;
            if (v31 == 8)
            {
              goto LABEL_50;
            }
          }

          if ((v32 & v33) == 0)
          {
            v29 = v30;
          }

LABEL_50:
          v34 = *v29;
          if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v24;
            v42 = v23;
            (*(*v4 + 128))(&v45, v4);
            v35 = SHIBYTE(v48);
            v36 = v45;
            sub_24FB08(&__p, v4 + 588);
            v37 = &v45;
            if (v35 < 0)
            {
              v37 = v36;
            }

            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            *&buf[4] = "Device_Bluetooth_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 809;
            *&buf[18] = 2080;
            *&buf[20] = v37;
            *&buf[28] = 2080;
            v55 = p_p;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device with UID %s: headset status %s", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            LOBYTE(v24) = v41;
            v23 = v42;
            if (SHIBYTE(v48) < 0)
            {
              operator delete(v45);
            }
          }

          memset(buf, 0, 24);
          strcpy(&buf[24], "cwdv");
          BYTE2(v55) = 0;
          v56 = 3;
          v58[0] = 0;
          v58[1] = 0;
          v57 = v58;
          v61 = 0;
          v62 = 0;
          v60 = 0;
          v59 = 44731050;
          sub_161C7C(&__p, v4, buf);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v60);
          }

          sub_477A0(v58[0]);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          size = __p.__r_.__value_.__l.__size_;
          v45 = __PAIR64__(v22, v21);
          v46 = v23;
          v47 = v24;
          v48 = v27;
          v49 = v28;
          for (i = v43; size != &__p; size = size->__r_.__value_.__l.__size_)
          {
            sub_25704(v53, &size->__r_.__value_.__r.__words[2], "", 814);
            v40 = v53[1];
            (*(*v53[0] + 512))(v53[0], &v45, &v48);
            if (v40)
            {
              sub_1A8C0(v40);
            }
          }

          sub_65310(&__p);
        }

        sub_2E9C7C(&v52);
LABEL_18:
        sub_1A8C0(v3);
        return sub_8B144(&v44);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = sub_5544(18);
  v7 = sub_5544(29);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_14;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_14:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_18;
  }

  return sub_8B144(&v44);
}

void sub_2E96C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, os_signpost_id_t a26, uint64_t a27, uint64_t a28, __int128 buf, __int128 a30, int a31, __int16 a32, __int16 a33, int a34)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2E9C7C(&a26);
  if (v34)
  {
    sub_1A8C0(v34);
  }

  if (a2 == 3)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = sub_5544(14);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&a20, v37[2]);
      v40 = a20;
      if (a25 >= 0)
      {
        v40 = &a20;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a30) = 2080;
      *(&a30 + 4) = v40;
      WORD6(a30) = 2080;
      *(&a30 + 14) = "";
      a33 = 1024;
      a34 = 98;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a25 < 0)
      {
        operator delete(a20);
      }
    }

LABEL_21:
    __cxa_end_catch();
    JUMPOUT(0x2E91C8);
  }

  v41 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v42 = v41;
    v43 = sub_5544(14);
    v44 = *v43;
    if (!*v43 || !os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v45 = (*(*v42 + 16))(v42);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a30) = 2080;
    *(&a30 + 4) = v45;
    WORD6(a30) = 2080;
    *(&a30 + 14) = "";
    a33 = 1024;
    a34 = 98;
    v46 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v47 = v44;
    v48 = 44;
  }

  else
  {
    v49 = sub_5544(14);
    v50 = *v49;
    if (!*v49 || !os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a30) = 2080;
    *(&a30 + 4) = "";
    WORD6(a30) = 1024;
    *(&a30 + 14) = 98;
    v46 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v47 = v50;
    v48 = 34;
  }

  _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, v46, &buf, v48);
  goto LABEL_21;
}

unint64_t sub_2E9A08(AudioObjectID a1)
{
  *&inAddress.mSelector = 0x676C6F6269656465;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    return -1;
  }

  *&inAddress.mSelector = 0x676C6F6269657362;
  inAddress.mElement = 0;
  if (AudioObjectHasProperty(a1, &inAddress))
  {
    inQualifierData = 0x300000003;
    *&inAddress.mSelector = 0x676C6F6269657362;
    inAddress.mElement = 0;
    if (AudioObjectHasProperty(a1, &inAddress) && (ioDataSize = sub_543D0(a1, &inAddress, 8u, &inQualifierData)) != 0)
    {
      PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 8u, &inQualifierData, &ioDataSize, &outData);
      v4 = PropertyData;
      if (PropertyData)
      {
        v5 = 0;
      }

      else
      {
        v3.i64[0] = outData;
        v4.i8[12] = 1;
        v15 = vextq_s8(v4, v3, 0xCuLL);
        v15.i32[0] = 0;
        v15.i32[3] = v4.i32[3];
        v5 = v15.i64[1];
        v4.i64[0] = v15.i64[0];
      }

      v7 = HIDWORD(v4.i64[0]);
    }

    else
    {
      v5 = 0;
      LODWORD(v7) = 0;
    }

    inAddress.mSelector = v7;
    *&inAddress.mScope = v5;
    v11 = *&inAddress.mSelector & (v5 << 31 >> 63);
    v14 = HIDWORD(v11);
  }

  else
  {
    LODWORD(inQualifierData) = 3;
    LODWORD(outData) = a1;
    *&inAddress.mSelector = 0x676C6F6269657370;
    inAddress.mElement = 0;
    v8 = sub_542F0(&outData, &inAddress, 4, &inQualifierData);
    *(&v10 + 1) = v9;
    *&v10 = v8;
    LODWORD(inQualifierData) = 3;
    LODWORD(outData) = a1;
    v11 = (v10 >> 32) & (((v10 >> 32) << 31) >> 63);
    *&inAddress.mSelector = 0x676C6F6269657373;
    inAddress.mElement = 0;
    v12 = sub_542F0(&outData, &inAddress, 4, &inQualifierData);
    *(&v10 + 1) = v13;
    *&v10 = v12;
    v14 = (v10 >> 32) & (((v10 >> 32) << 31) >> 63);
  }

  LODWORD(inQualifierData) = 3;
  LODWORD(outData) = a1;
  *&inAddress.mSelector = 0x676C6F6270726973;
  inAddress.mElement = 0;
  v16 = sub_542F0(&outData, &inAddress, 4, &inQualifierData);
  *(&v19 + 1) = v17;
  *&v19 = v16;
  v18 = v19 >> 32;
  LODWORD(inQualifierData) = 0;
  LODWORD(outData) = a1;
  if ((v18 & 0x100000000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  *&inAddress.mSelector = 0x676C6F6269656465;
  inAddress.mElement = 0;
  sub_542F0(&outData, &inAddress, 4, &inQualifierData);
  v21 = sub_2E9E18(v11);
  v22 = sub_2E9E18(v14);
  sub_2E9F94(v20);
  return v21 | (v22 << 32);
}

os_signpost_id_t *sub_2E9C7C(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 87;
        v11 = 2080;
        v12 = "kInEarStatusEvent";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_HandleInEarStatusEvent", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2E9E0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_2E9E18(unsigned int a1)
{
  if (a1 >= 4)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, 1768256354);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315906;
      v10 = "Device_Bluetooth_Aspen.cpp";
      v11 = 1024;
      v12 = 271;
      v13 = 1024;
      v14 = a1;
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unknown value (%u) for Bluetooth property (%s)", buf, 0x22u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unknown value (%u) for Bluetooth property (%s)");
  }

  return dword_5192FC[a1];
}

uint64_t sub_2E9F94(int a1)
{
  if ((a1 - 1) >= 3)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, 1886546291);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315906;
      v10 = "Device_Bluetooth_Aspen.cpp";
      v11 = 1024;
      v12 = 289;
      v13 = 1024;
      v14 = a1;
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unknown value (%u) for Bluetooth property (%s)", buf, 0x22u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unknown value (%u) for Bluetooth property (%s)");
  }

  return dword_51930C[a1 - 1];
}

uint64_t sub_2EA114(AudioObjectID a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    while (1)
    {
      v8 = sub_5544(18);
      v9 = sub_5544(29);
      v10 = 0;
      *&buf.mSelector = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *(&buf.mSelector + v10);
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_9;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_9:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v63, *(a3 + 12 * v6));
        v14 = v64;
        v15 = v63[0];
        (*(*a4 + 128))(__p, a4);
        v16 = v63;
        if (v14 < 0)
        {
          v16 = v15;
        }

        v17 = __p;
        if (v62 < 0)
        {
          v17 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v66 = 1024;
        v67 = 1038;
        v68 = 2080;
        v69 = v16;
        v70 = 2080;
        v71 = v17;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received notification (%s) from bluetooth audio device with UID %s", &buf, 0x26u);
        if (v62 < 0)
        {
          operator delete(__p[0]);
        }

        if (v64 < 0)
        {
          operator delete(v63[0]);
        }
      }

      v18 = (a3 + 12 * v6);
      v19 = *v18;
      if (*v18 > 1768256353)
      {
        break;
      }

      if (v19 <= 1668506478)
      {
        if (v19 <= 1650551923)
        {
          if (v19 == 1633773925)
          {
            goto LABEL_66;
          }

          if (v19 == 1650549606)
          {
            v32 = *(a4 + 11);
            if (v32)
            {
              atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);
            }

            sub_68E60();
            operator new();
          }
        }

        else
        {
          switch(v19)
          {
            case 1650551924:
              goto LABEL_66;
            case 1651466595:
              v33 = *(a4 + 11);
              if (v33)
              {
                atomic_fetch_add_explicit((v33 + 16), 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit((v33 + 16), 1uLL, memory_order_relaxed);
              }

              sub_68E60();
              operator new();
            case 1668051827:
              goto LABEL_66;
          }
        }

        goto LABEL_84;
      }

      if (v19 > 1752327776)
      {
        if (v19 == 1752327777 || v19 == 1752462195)
        {
          goto LABEL_66;
        }

        if (v19 == 1768252517)
        {
          v25 = *(a4 + 11);
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
          }

          sub_68E60();
          operator new();
        }

        goto LABEL_84;
      }

      switch(v19)
      {
        case 1668506479:
          sub_2EABD8(a4, 1);
          break;
        case 1685283695:
          sub_2EABD8(a4, 0);
          break;
        case 1718772584:
          v20 = dispatch_time(0, 0);
          v21 = sub_68E60();
          dispatch_after(v20, v21, &stru_6C0D08);
          break;
        default:
          goto LABEL_84;
      }

LABEL_116:
      if (++v6 == v7)
      {
        return 0;
      }
    }

    if (v19 <= 1886546290)
    {
      if (v19 <= 1768256370)
      {
        if (v19 == 1768256354)
        {
LABEL_71:
          sub_2E8ED0(*(a4 + 10), *(a4 + 11));
        }

        if (v19 == 1768256368)
        {
LABEL_69:
          strcpy(&buf, "bseibolg");
          BYTE1(buf.mElement) = 0;
          HIWORD(buf.mElement) = 0;
          if (!AudioObjectHasProperty(a1, &buf))
          {
            sub_2E8ED0(*(a4 + 10), *(a4 + 11));
          }

          goto LABEL_116;
        }
      }

      else
      {
        switch(v19)
        {
          case 1768256371:
            goto LABEL_69;
          case 1819173229:
            v34 = *(a4 + 11);
            if (v34)
            {
              atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
            }

            sub_68E60();
            operator new();
          case 1819505773:
            v23 = *(a4 + 11);
            if (v23)
            {
              atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
            }

            sub_68E60();
            operator new();
        }
      }
    }

    else
    {
      if (v19 > 1936747875)
      {
        if (v19 == 1936747876)
        {
          goto LABEL_66;
        }

        if (v19 == 1936747877)
        {
          v35 = sub_5544(18);
          v36 = sub_5544(29);
          v37 = 0;
          *&buf.mSelector = 0x100000002;
          v38 = *(v35 + 8);
          while (1)
          {
            v39 = *(&buf.mSelector + v37);
            if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
            {
              break;
            }

            v37 += 4;
            if (v37 == 8)
            {
              goto LABEL_90;
            }
          }

          if ((v38 & v39) == 0)
          {
            v35 = v36;
          }

LABEL_90:
          v45 = *v35;
          if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            buf.mSelector = 136315394;
            *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
            v66 = 1024;
            v67 = 1091;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling PME update from buds", &buf, 0x12u);
          }

          sub_2EB214(*(a4 + 10), *(a4 + 11), *v18);
        }

        if (v19 != 1970496630)
        {
          goto LABEL_84;
        }

        v26 = (*(*a4 + 120))(a4);
        atomic_store(sub_2EC9A0(v26), a4 + 133);
        v27 = sub_5544(18);
        v28 = sub_5544(29);
        v29 = 0;
        *&buf.mSelector = 0x100000002;
        v30 = *(v27 + 8);
        while (1)
        {
          v31 = *(&buf.mSelector + v29);
          if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
          {
            break;
          }

          v29 += 4;
          if (v29 == 8)
          {
            goto LABEL_105;
          }
        }

        if ((v30 & v31) == 0)
        {
          v27 = v28;
        }

LABEL_105:
        v53 = *v27;
        if (!v53 || !os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_116;
        }

        v54 = atomic_load(a4 + 133);
        sub_22170(v63, v54);
        v55 = v64;
        v56 = v63[0];
        (*(*a4 + 128))(__p, a4);
        v57 = v63;
        if (v55 < 0)
        {
          v57 = v56;
        }

        v58 = __p;
        if (v62 < 0)
        {
          v58 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v66 = 1024;
        v67 = 907;
        v68 = 2080;
        v69 = v57;
        v70 = 2080;
        v71 = v58;
        v51 = v53;
        v52 = "%25s:%-5d Device category changed to '%s' for bluetooth audio device with UID %s";
LABEL_112:
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, v52, &buf, 0x26u);
        if (v62 < 0)
        {
          operator delete(__p[0]);
        }

        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        goto LABEL_116;
      }

      if (v19 == 1886546291)
      {
        goto LABEL_71;
      }

      if (v19 == 1936745318 || v19 == 1936746611)
      {
LABEL_66:
        sub_2EB214(*(a4 + 10), *(a4 + 11), v19);
      }
    }

LABEL_84:
    v40 = sub_5544(18);
    v41 = sub_5544(29);
    v42 = 0;
    *&buf.mSelector = 0x100000002;
    v43 = *(v40 + 8);
    while (1)
    {
      v44 = *(&buf.mSelector + v42);
      if (((v43 & v44) != 0) != ((*(v41 + 8) & v44) != 0))
      {
        break;
      }

      v42 += 4;
      if (v42 == 8)
      {
        goto LABEL_96;
      }
    }

    if ((v43 & v44) == 0)
    {
      v40 = v41;
    }

LABEL_96:
    v46 = *v40;
    if (!v46 || !os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_116;
    }

    sub_22170(v63, *v18);
    v47 = v64;
    v48 = v63[0];
    (*(*a4 + 128))(__p, a4);
    v49 = v63;
    if (v47 < 0)
    {
      v49 = v48;
    }

    v50 = __p;
    if (v62 < 0)
    {
      v50 = __p[0];
    }

    buf.mSelector = 136315906;
    *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
    v66 = 1024;
    v67 = 1098;
    v68 = 2080;
    v69 = v49;
    v70 = 2080;
    v71 = v50;
    v51 = v46;
    v52 = "%25s:%-5d Unhandled notification (%s) from bluetooth audio device with UID %s";
    goto LABEL_112;
  }

  return 0;
}

void sub_2EAB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2EABD8(uint64_t a1, int a2)
{
  v4 = sub_5544(18);
  v5 = sub_5544(29);
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
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a2 ? "take" : "relinquish";
    sub_23148(&__p, (a1 + 8));
    v11 = v44[0] >= 0 ? &__p : __p;
    *buf = 136315906;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 767;
    *&buf[18] = 2080;
    *&buf[20] = v10;
    v53 = 2080;
    v54 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth initiated %s request on physical device %s.", buf, 0x26u);
    if (SHIBYTE(v44[0]) < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0x70687062706D6274;
  memset(buf, 0, 24);
  sub_4625C(buf, &__p, &v43, 2uLL);
  *v32 = *buf;
  v33 = *&buf[16];
  strcpy(&v34, "cwdv");
  v35 = 0;
  v36 = 3;
  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  v39 = 44739242;
  v41 = 0;
  v40 = 0uLL;
  if (!a2 || !sub_28A198())
  {
    goto LABEL_31;
  }

  sub_34AAA8(&__p, v32);
  if (!v44[0])
  {
    sub_65310(&__p);
    goto LABEL_31;
  }

  v12 = sub_5544(18);
  v13 = sub_5544(29);
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
      goto LABEL_27;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_27:
  v17 = *v12;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 777;
    *&buf[18] = 2080;
    *&buf[20] = "take";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring Bluetooth initiated %s request.", buf, 0x1Cu);
  }

  v18 = v44[0];
  sub_65310(&__p);
  if (!v18)
  {
LABEL_31:
    v20 = *(a1 + 80);
    v19 = *(a1 + 88);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_46980(&v21, v32[0], v32[1], (v32[1] - v32[0]) >> 2);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    sub_44E44(&v27, &v37);
    v28 = v39;
    if (SHIBYTE(v41) < 0)
    {
      sub_54A0(v29, v40, *(&v40 + 1));
    }

    else
    {
      *v29 = v40;
      v30 = v41;
    }

    v31 = a2;
    __p = v20;
    v43 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v44, 0, 24);
    sub_46980(v44, v21, v22, (v22 - v21) >> 2);
    v44[3] = v24;
    v45 = v25;
    v46 = v26;
    sub_44E44(&v47, &v27);
    v48 = v28;
    if (SHIBYTE(v30) < 0)
    {
      sub_54A0(&v49, v29[0], v29[1]);
    }

    else
    {
      v49 = *v29;
      v50 = v30;
    }

    v51 = v31;
    sub_68E60();
    sub_2EE700(buf, &__p);
    operator new();
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  sub_477A0(v38[0]);
  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }
}

void sub_2EB148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_65310(&a37);
  sub_46934(&a23);
  _Unwind_Resume(a1);
}

void sub_2EB214(uint64_t a1, std::__shared_weak_count *a2, int a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_68E60();
  operator new();
}

void sub_2EB2C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2EB2E0(id a1)
{
  v1 = sub_8703C();
  if ((*(*v1 + 336))(v1))
  {
    sub_8703C();
    operator new();
  }
}

uint64_t *sub_2EB3C8(uint64_t a1)
{
  v26[0] = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        v25 = v3;
        sub_4B4770(buf, *a1);
        sub_B0484(&v27, buf);
        sub_65310(buf);
        for (i = v28; i != &v27; i = i[1])
        {
          v7 = i[2];
          v6 = i[3];
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v8 = sub_5544(18);
          v9 = sub_5544(29);
          v10 = 0;
          *__p = 0x100000002;
          v11 = *(v8 + 8);
          while (1)
          {
            v12 = *&__p[v10];
            if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
            {
              break;
            }

            v10 += 4;
            if (v10 == 8)
            {
              goto LABEL_13;
            }
          }

          if ((v11 & v12) == 0)
          {
            v8 = v9;
          }

LABEL_13:
          v13 = *v8;
          if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(v29, *(a1 + 16));
            v14 = v30;
            v15 = v29[0];
            (*(*v4 + 128))(__p, v4);
            v16 = v29;
            if (v14 < 0)
            {
              v16 = v15;
            }

            if (v34 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = *__p;
            }

            *buf = 136315906;
            v36 = "Device_Bluetooth_Aspen.cpp";
            v37 = 1024;
            v38 = 974;
            v39 = 2080;
            v40 = v16;
            v41 = 2080;
            v42 = v17;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth property %s has changed for BT device UID %s", buf, 0x26u);
            if (v34 < 0)
            {
              operator delete(*__p);
            }

            if (v30 < 0)
            {
              operator delete(v29[0]);
            }
          }

          LODWORD(v29[0]) = *(a1 + 16);
          sub_1F2E44(buf, v29, 1);
          (*(*v7 + 416))(v7, buf);
          sub_4E0BC(buf);
          if (v6)
          {
            sub_1A8C0(v6);
          }
        }

        sub_87980(&v27);
        v3 = v25;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v18 = sub_5544(18);
  v19 = sub_5544(29);
  v20 = 0;
  *__p = 0x100000002;
  v21 = *(v18 + 8);
  while (1)
  {
    v22 = *&__p[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_35;
    }
  }

  if ((v21 & v22) == 0)
  {
    v18 = v19;
  }

LABEL_35:
  v23 = *v18;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "Device_Bluetooth_Aspen.cpp";
    v32 = 1024;
    v33 = 333;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", __p, 0x12u);
  }

LABEL_38:
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return sub_8B144(v26);
}

void sub_2EB778(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void **__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, __int128 buf, __int128 a27, int a28, __int16 a29, __int16 a30, int a31, uint64_t a32)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_65310(&a32);
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a2 == 3)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v34[2]);
      p_p = __p;
      if (a19 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a27) = 2080;
      *(&a27 + 4) = p_p;
      WORD6(a27) = 2080;
      *(&a27 + 14) = "";
      a30 = 1024;
      a31 = 98;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2EB730);
  }

  v38 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v39 = v38;
    v40 = sub_5544(14);
    v41 = *v40;
    if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v42 = (*(*v39 + 16))(v39);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a27) = 2080;
    *(&a27 + 4) = v42;
    WORD6(a27) = 2080;
    *(&a27 + 14) = "";
    a30 = 1024;
    a31 = 98;
    v43 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v44 = v41;
    v45 = 44;
  }

  else
  {
    v46 = sub_5544(14);
    v47 = *v46;
    if (!*v46 || !os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a27) = 2080;
    *(&a27 + 4) = "";
    WORD6(a27) = 1024;
    *(&a27 + 14) = 98;
    v43 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v44 = v47;
    v45 = 34;
  }

  _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, v43, &buf, v45);
  goto LABEL_19;
}