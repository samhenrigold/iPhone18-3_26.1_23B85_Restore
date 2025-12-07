uint64_t *sub_2EBAA4(uint64_t *a1)
{
  v29 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        v28 = v3;
        sub_4B4770(v49, *a1);
        sub_B0484(&v30, v49);
        sub_65310(v49);
        v5 = v31;
        if (v31 != &v30)
        {
          while (1)
          {
            v7 = v5[2];
            v6 = v5[3];
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v8 = v7[36];
            v9 = (*(*v4 + 120))(v4);
            sub_24FF44(v49, v8, v9);
            v10 = sub_5544(18);
            v11 = sub_5544(29);
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
                goto LABEL_13;
              }
            }

            if ((v13 & v14) == 0)
            {
              v10 = v11;
            }

LABEL_13:
            v15 = *v10;
            if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v4 + 128))(v38, v4);
              if (v39 >= 0)
              {
                v16 = v38;
              }

              else
              {
                v16 = v38[0];
              }

              v17 = v7[36];
              v18 = "unknown";
              if (v17 <= 7)
              {
                v18 = off_6BD200[v17];
              }

              sub_53E8(v36, v18);
              if (v37 >= 0)
              {
                v19 = v36;
              }

              else
              {
                v19 = v36[0];
              }

              sub_2500F8(v32, v49);
              if (SHIBYTE(v33) < 0)
              {
                sub_54A0(__p, v32[0], v32[1]);
              }

              else
              {
                *__p = *v32;
                v35 = v33;
              }

              v20 = __p;
              if (v35 < 0)
              {
                v20 = __p[0];
              }

              *buf = 136316162;
              *&buf[4] = "Device_Bluetooth_Aspen.cpp";
              v41 = 1024;
              v42 = 939;
              v43 = 2080;
              v44 = v16;
              v45 = 2080;
              v46 = v19;
              v47 = 2080;
              v48 = v20;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s and port type %s, changed name to %s", buf, 0x30u);
              if (SHIBYTE(v35) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v33) < 0)
              {
                operator delete(v32[0]);
              }

              if (v37 < 0)
              {
                operator delete(v36[0]);
              }

              if (v39 < 0)
              {
                operator delete(v38[0]);
              }
            }

            (*(*v7 + 128))(v7, v49);
            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53);
            }

            if (v52 < 0)
            {
              break;
            }

            if (v6)
            {
              goto LABEL_42;
            }

LABEL_43:
            v5 = v5[1];
            if (v5 == &v30)
            {
              goto LABEL_60;
            }
          }

          operator delete(*v49);
          if (!v6)
          {
            goto LABEL_43;
          }

LABEL_42:
          sub_1A8C0(v6);
          goto LABEL_43;
        }

LABEL_60:
        sub_87980(&v30);
        v3 = v28;
        goto LABEL_58;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v21 = sub_5544(18);
  v22 = sub_5544(29);
  v23 = 0;
  *v49 = 0x100000002;
  v24 = *(v21 + 8);
  while (1)
  {
    v25 = *&v49[v23];
    if (((v24 & v25) != 0) != ((*(v22 + 8) & v25) != 0))
    {
      break;
    }

    v23 += 4;
    if (v23 == 8)
    {
      goto LABEL_54;
    }
  }

  if ((v24 & v25) == 0)
  {
    v21 = v22;
  }

LABEL_54:
  v26 = *v21;
  if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 136315394;
    *&v49[4] = "Device_Bluetooth_Aspen.cpp";
    v50 = 1024;
    v51 = 333;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", v49, 0x12u);
  }

  if (v3)
  {
LABEL_58:
    sub_1A8C0(v3);
  }

  return sub_2EE0C8(&v29);
}

void sub_2EBF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void ***__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, __int128 buf, __int128 a44, int a45, __int16 a46, __int16 a47, int a48)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_65310((v48 - 192));
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a2 == 3)
  {
    v51 = __cxa_begin_catch(exception_object);
    v52 = sub_5544(14);
    v53 = *v52;
    if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v51[2]);
      p_p = __p;
      if (a42 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a44) = 2080;
      *(&a44 + 4) = p_p;
      WORD6(a44) = 2080;
      *(&a44 + 14) = "";
      a47 = 1024;
      a48 = 98;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a42 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2EBEDCLL);
  }

  v55 = __cxa_begin_catch(exception_object);
  if (a2 == 2)
  {
    v56 = v55;
    v57 = sub_5544(14);
    v58 = *v57;
    if (!*v57 || !os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v59 = (*(*v56 + 16))(v56);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a44) = 2080;
    *(&a44 + 4) = v59;
    WORD6(a44) = 2080;
    *(&a44 + 14) = "";
    a47 = 1024;
    a48 = 98;
    v60 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v61 = v58;
    v62 = 44;
  }

  else
  {
    v63 = sub_5544(14);
    v64 = *v63;
    if (!*v63 || !os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a44) = 2080;
    *(&a44 + 4) = "";
    WORD6(a44) = 1024;
    *(&a44 + 14) = 98;
    v60 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v61 = v64;
    v62 = 34;
  }

  _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, v60, &buf, v62);
  goto LABEL_19;
}

uint64_t *sub_2EC2BC(uint64_t *a1)
{
  v26 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (v4)
      {
        strcpy(buf, "mtslbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v6 = sub_59410(v4, buf, 0, 0);
        if (v6 || (v5 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v6;
        }

        v7 = sub_5544(18);
        v8 = sub_5544(29);
        v9 = 0;
        v10 = HIDWORD(v6);
        *buf = 0x100000002;
        v11 = *(v7 + 8);
        while (1)
        {
          v12 = *&buf[v9];
          if (((v11 & v12) != 0) != ((*(v8 + 8) & v12) != 0))
          {
            break;
          }

          v9 += 4;
          if (v9 == 8)
          {
            goto LABEL_25;
          }
        }

        if ((v11 & v12) == 0)
        {
          v7 = v8;
        }

LABEL_25:
        v20 = *v7;
        if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(__p, v4);
          v21 = v31 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          v33 = 1024;
          v34 = 919;
          v35 = 1024;
          v36 = v10;
          v37 = 2080;
          v38 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio listen mode changed to %u for bluetooth audio device with UID %s", buf, 0x22u);
          if (v31 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_4B4770(__p, v4);
        sub_B0484(&v27, __p);
        sub_65310(__p);
        for (i = v28; i != &v27; i = i[1])
        {
          v23 = i[2];
          v24 = i[3];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = 1819505773;
          sub_1F2E44(__p, &v29, 1);
          (*(*v23 + 416))(v23, __p);
          sub_4E0BC(__p);
          if (v24)
          {
            sub_1A8C0(v24);
          }
        }

        sub_87980(&v27);
LABEL_21:
        sub_1A8C0(v3);
        return sub_2EE0C8(&v26);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v13 = sub_5544(18);
  v14 = sub_5544(29);
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
      goto LABEL_17;
    }
  }

  if ((v16 & v17) == 0)
  {
    v13 = v14;
  }

LABEL_17:
  v18 = *v13;
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v33 = 1024;
    v34 = 333;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_21;
  }

  return sub_2EE0C8(&v26);
}

void sub_2EC698(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 buf, __int128 a25, int a26, __int16 a27, __int16 a28, int a29)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_65310(&a21);
  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (a2 == 3)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v32[2]);
      p_p = __p;
      if (a16 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a25) = 2080;
      *(&a25 + 4) = p_p;
      WORD6(a25) = 2080;
      *(&a25 + 14) = "";
      a28 = 1024;
      a29 = 98;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a16 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2EC480);
  }

  v36 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v37 = v36;
    v38 = sub_5544(14);
    v39 = *v38;
    if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v40 = (*(*v37 + 16))(v37);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a25) = 2080;
    *(&a25 + 4) = v40;
    WORD6(a25) = 2080;
    *(&a25 + 14) = "";
    a28 = 1024;
    a29 = 98;
    v41 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v42 = v39;
    v43 = 44;
  }

  else
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (!*v44 || !os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a25) = 2080;
    *(&a25 + 4) = "";
    WORD6(a25) = 1024;
    *(&a25 + 14) = 98;
    v41 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v42 = v45;
    v43 = 34;
  }

  _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, v41, &buf, v43);
  goto LABEL_19;
}

uint64_t sub_2EC9A0(AudioObjectID a1)
{
  buf.mSelector = 0;
  v2 = sub_1235F4(@"fakevehicle", @"com.apple.audio.virtualaudio", &buf);
  if (buf.mSelector)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = sub_5544(18);
    v5 = sub_5544(29);
    v6 = 0;
    *&buf.mSelector = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *(&buf.mSelector + v6);
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_17;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_17:
    v18 = sub_5544(24);
    v19 = 0;
    *&buf.mSelector = 0x100000002;
    v20 = *(v4 + 8);
    while (1)
    {
      v21 = *(&buf.mSelector + v19);
      if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
      {
        break;
      }

      v19 += 4;
      if (v19 == 8)
      {
        goto LABEL_23;
      }
    }

    if ((v20 & v21) == 0)
    {
      v4 = v18;
    }

LABEL_23:
    v22 = 1701869160;
    v23 = *v4;
    if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v47 = 1024;
      v48 = 188;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default fakevehicle is set. Pretending that this BT device is a car kit.", &buf, 0x12u);
    }
  }

  else
  {
    v44 = 0;
    v45 = a1;
    strcpy(&buf, "vdsubolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v9 = sub_542F0(&v45, &buf, 4, &v44);
    *(&v12 + 1) = v10;
    *&v12 = v9;
    v11 = v12 >> 32;
    if ((v11 & 0x100000000) != 0 && v11)
    {
      v13 = sub_5544(18);
      v14 = sub_5544(29);
      v15 = 0;
      *&buf.mSelector = 0x100000002;
      v16 = *(v13 + 8);
      while (1)
      {
        v17 = *(&buf.mSelector + v15);
        if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
        {
          break;
        }

        v15 += 4;
        if (v15 == 8)
        {
          goto LABEL_41;
        }
      }

      if ((v16 & v17) == 0)
      {
        v13 = v14;
      }

LABEL_41:
      v37 = sub_5544(24);
      v38 = 0;
      *&buf.mSelector = 0x100000002;
      v39 = *(v13 + 8);
      while (1)
      {
        v40 = *(&buf.mSelector + v38);
        if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
        {
          break;
        }

        v38 += 4;
        if (v38 == 8)
        {
          goto LABEL_53;
        }
      }

      if ((v39 & v40) == 0)
      {
        v13 = v37;
      }

LABEL_53:
      v42 = *v13;
      if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v47 = 1024;
        v48 = 199;
        v49 = 1024;
        v50 = v11;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d User specified BT Category is %u", &buf, 0x18u);
      }
    }

    else
    {
      v44 = 0;
      v45 = a1;
      strcpy(&buf, "tacdbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      v24 = sub_542F0(&v45, &buf, 4, &v44);
      *(&v27 + 1) = v25;
      *&v27 = v24;
      v26 = v27 >> 32;
      if ((v26 & 0x100000000) != 0)
      {
        LODWORD(v11) = v26;
      }

      else
      {
        LODWORD(v11) = 0;
      }

      v28 = sub_5544(18);
      v29 = sub_5544(29);
      v30 = 0;
      *&buf.mSelector = 0x100000002;
      v31 = *(v28 + 8);
      while (1)
      {
        v32 = *(&buf.mSelector + v30);
        if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
        {
          break;
        }

        v30 += 4;
        if (v30 == 8)
        {
          goto LABEL_35;
        }
      }

      if ((v31 & v32) == 0)
      {
        v28 = v29;
      }

LABEL_35:
      v33 = sub_5544(24);
      v34 = 0;
      *&buf.mSelector = 0x100000002;
      v35 = *(v28 + 8);
      while (1)
      {
        v36 = *(&buf.mSelector + v34);
        if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
        {
          break;
        }

        v34 += 4;
        if (v34 == 8)
        {
          goto LABEL_47;
        }
      }

      if ((v35 & v36) == 0)
      {
        v28 = v33;
      }

LABEL_47:
      v41 = *v28;
      if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v47 = 1024;
        v48 = 206;
        v49 = 1024;
        v50 = v11;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Firmware defined BT Category is %u", &buf, 0x18u);
      }
    }

    return sub_28B670(v11);
  }

  return v22;
}

uint64_t *sub_2ECE18(uint64_t a1)
{
  v33 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        strcpy(buf, "caobbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v6 = sub_59410(v4, buf, 0, 0);
        if (v6 || (v5 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v6;
        }

        if ((sub_231C4() & 1) != 0 || sub_23238("VA_HandleOwnershipEvent", 0x17uLL) != &qword_709F00)
        {
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          v7 = os_signpost_id_generate(qword_6F6848);
          if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
          {
            qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
            __cxa_guard_release(&qword_6F6850);
          }

          if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v15 = qword_6F6848;
            if (os_signpost_enabled(qword_6F6848))
            {
              *buf = 67109120;
              *&buf[4] = v6 == 0x100000000;
              _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VA_HandleOwnershipEvent", "Begin updating port routability, ownership = %d", buf, 8u);
            }
          }
        }

        else
        {
          v7 = 0;
        }

        v39 = v7;
        v16 = sub_5544(43);
        if (*(v16 + 8))
        {
          v17 = *v16;
          if (*v16)
          {
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "SignpostUtilities.h";
              *&buf[12] = 1024;
              *&buf[14] = 90;
              *&buf[18] = 2080;
              *&buf[20] = "kOwnershipChange";
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
            }
          }
        }

        if (v6 == 0x100000000)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        atomic_store(v18, v4 + 154);
        v19 = sub_5544(18);
        v20 = sub_5544(29);
        v21 = 0;
        *buf = 0x100000002;
        v22 = *(v19 + 8);
        while (1)
        {
          v23 = *&buf[v21];
          if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
          {
            break;
          }

          v21 += 4;
          if (v21 == 8)
          {
            goto LABEL_40;
          }
        }

        if ((v22 & v23) == 0)
        {
          v19 = v20;
        }

LABEL_40:
        v24 = *v19;
        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(&__p, v4);
          v25 = "false";
          if (v6 == 0x100000000)
          {
            v25 = "true";
          }

          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          *&buf[12] = 1024;
          *buf = 136315906;
          *&buf[14] = 878;
          if (v38 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *&buf[18] = 2080;
          *&buf[20] = v25;
          *&buf[28] = 2080;
          v43 = p_p;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio connection ownership changed to %s for bluetooth audio device with UID %s", buf, 0x26u);
          if (v38 < 0)
          {
            operator delete(__p);
          }
        }

        memset(buf, 0, 24);
        strcpy(&buf[24], "cwdv");
        BYTE2(v43) = 0;
        v44 = 3;
        v46[0] = 0;
        v46[1] = 0;
        v45 = v46;
        v49 = 0;
        v50 = 0;
        v48 = 0;
        v47 = 44731050;
        sub_161C7C(&__p, v4, buf);
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v48);
        }

        sub_477A0(v46[0]);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        if (v6 == 0x100000000)
        {
          v35[0] = 0;
          v35[1] = 0;
          v34 = v35;
          *buf = 1886418288;
          sub_80C2C(&buf[8], &__p);
          sub_1165C0(&v34, *buf, buf);
          sub_65310(&buf[8]);
          v27 = sub_809C0();
          sub_11ABFC(v27, &v34, 0, 0);
          sub_D169C(v35[0]);
        }

        else
        {
          v28 = sub_809C0();
          sub_258778(v28, &__p, 1919184754);
        }

        for (i = v37; i != &__p; i = *(i + 8))
        {
          v30 = *(i + 24);
          v40[0] = *(i + 16);
          v40[1] = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_25704(&v34, v40, "", 895);
          v31 = v34;
          v41 = 1869832547;
          sub_1F2E44(buf, &v41, 1);
          (*(*v31 + 416))(v31, buf);
          sub_4E0BC(buf);
          if (v35[0])
          {
            sub_1A8C0(v35[0]);
          }

          if (v30)
          {
            std::__shared_weak_count::__release_weak(v30);
          }
        }

        kdebug_trace();
        sub_65310(&__p);
        sub_2ED8CC(&v39);
LABEL_20:
        sub_1A8C0(v3);
        return sub_2EE0C8(&v33);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = sub_5544(18);
  v9 = sub_5544(29);
  v10 = 0;
  *buf = 0x100000002;
  v11 = *(v8 + 8);
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
      goto LABEL_16;
    }
  }

  if ((v11 & v12) == 0)
  {
    v8 = v9;
  }

LABEL_16:
  v13 = *v8;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_20;
  }

  return sub_2EE0C8(&v33);
}

void sub_2ED524(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, os_signpost_id_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 buf, __int128 a25, int a26, __int16 a27, __int16 a28, int a29)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2ED8CC(&a20);
  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (a2 == 3)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v32[2]);
      p_p = __p;
      if (a19 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a25) = 2080;
      *(&a25 + 4) = p_p;
      WORD6(a25) = 2080;
      *(&a25 + 14) = "";
      a28 = 1024;
      a29 = 98;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2ECFB0);
  }

  v36 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v37 = v36;
    v38 = sub_5544(14);
    v39 = *v38;
    if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v40 = (*(*v37 + 16))(v37);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a25) = 2080;
    *(&a25 + 4) = v40;
    WORD6(a25) = 2080;
    *(&a25 + 14) = "";
    a28 = 1024;
    a29 = 98;
    v41 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v42 = v39;
    v43 = 44;
  }

  else
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (!*v44 || !os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a25) = 2080;
    *(&a25 + 4) = "";
    WORD6(a25) = 1024;
    *(&a25 + 14) = 98;
    v41 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v42 = v45;
    v43 = 34;
  }

  _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, v41, &buf, v43);
  goto LABEL_19;
}

os_signpost_id_t *sub_2ED8CC(os_signpost_id_t *a1)
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
        v10 = 90;
        v11 = 2080;
        v12 = "kOwnershipChange";
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
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_HandleOwnershipEvent", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2EDA5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t *sub_2EDA68(uint64_t *a1)
{
  v22 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (v4)
      {
        v5 = sub_5544(18);
        v6 = sub_5544(29);
        v7 = 0;
        *buf = 0x100000002;
        v8 = *(v5 + 8);
        while (1)
        {
          v9 = *&buf[v7];
          if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
          {
            break;
          }

          v7 += 4;
          if (v7 == 8)
          {
            goto LABEL_23;
          }
        }

        if ((v8 & v9) == 0)
        {
          v5 = v6;
        }

LABEL_23:
        v17 = *v5;
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(__p, v4);
          v18 = v27 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          v29 = 1024;
          v30 = 856;
          v31 = 2080;
          v32 = v18;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio connection failed for bluetooth audio device with UID %s", buf, 0x1Cu);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_4B4770(__p, v4);
        sub_B0484(&v23, __p);
        sub_65310(__p);
        for (i = v24; i != &v23; i = i[1])
        {
          v20 = i[2];
          v21 = i[3];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = 1935762278;
          sub_1F2E44(__p, &v25, 1);
          (*(*v20 + 416))(v20, __p);
          sub_4E0BC(__p);
          if (v21)
          {
            sub_1A8C0(v21);
          }
        }

        sub_87980(&v23);
LABEL_19:
        sub_1A8C0(v3);
        return sub_2EE0C8(&v22);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = sub_5544(18);
  v11 = sub_5544(29);
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
      goto LABEL_15;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

LABEL_15:
  v15 = *v10;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v29 = 1024;
    v30 = 333;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_19;
  }

  return sub_2EE0C8(&v22);
}

void sub_2EDDC0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 buf, __int128 a25, int a26, __int16 a27, __int16 a28, int a29)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_65310(&a21);
  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (a2 == 3)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v32[2]);
      p_p = __p;
      if (a16 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a25) = 2080;
      *(&a25 + 4) = p_p;
      WORD6(a25) = 2080;
      *(&a25 + 14) = "";
      a28 = 1024;
      a29 = 98;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a16 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2EDBF0);
  }

  v36 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v37 = v36;
    v38 = sub_5544(14);
    v39 = *v38;
    if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v40 = (*(*v37 + 16))(v37);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a25) = 2080;
    *(&a25 + 4) = v40;
    WORD6(a25) = 2080;
    *(&a25 + 14) = "";
    a28 = 1024;
    a29 = 98;
    v41 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v42 = v39;
    v43 = 44;
  }

  else
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (!*v44 || !os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a25) = 2080;
    *(&a25 + 4) = "";
    WORD6(a25) = 1024;
    *(&a25 + 14) = 98;
    v41 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v42 = v45;
    v43 = 34;
  }

  _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, v41, &buf, v43);
  goto LABEL_19;
}

uint64_t *sub_2EE0C8(uint64_t *a1)
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

uint64_t *sub_2EE11C(uint64_t *a1)
{
  v23 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (v4)
      {
        strcpy(buf, "edeibolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v6 = sub_59410(v4, buf, 0, 0);
        if (v6 || (v5 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v6;
        }

        v7 = sub_5544(18);
        v8 = sub_5544(29);
        v9 = 0;
        *buf = 0x100000002;
        v10 = *(v7 + 8);
        while (1)
        {
          v11 = *&buf[v9];
          if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
          {
            break;
          }

          v9 += 4;
          if (v9 == 8)
          {
            goto LABEL_22;
          }
        }

        if ((v10 & v11) == 0)
        {
          v7 = v8;
        }

LABEL_22:
        v18 = *v7;
        if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 128))(__p, v4);
          v19 = "en";
          if (!v6)
          {
            v19 = "dis";
          }

          *&buf[4] = "Device_Bluetooth_Aspen.cpp";
          *buf = 136315906;
          v27 = 1024;
          if (v25 >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          v28 = 845;
          v29 = 2080;
          v30 = v19;
          v31 = 2080;
          v32 = v20;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Headset detection %sabled for Bluetooth device with UID %s", buf, 0x26u);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_2E8ED0(*(v4 + 80), *(v4 + 88));
      }
    }
  }

  else
  {
    v3 = 0;
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
      goto LABEL_17;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_17:
  v17 = *v12;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v27 = 1024;
    v28 = 333;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    sub_1A8C0(v3);
  }

  return sub_2EE0C8(&v23);
}

void sub_2EE450(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 buf, __int128 a21, int a22, __int16 a23, __int16 a24, int a25)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (v25)
  {
    sub_1A8C0(v25);
  }

  if (a2 == 3)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v28[2]);
      p_p = __p;
      if (a16 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a21) = 2080;
      *(&a21 + 4) = p_p;
      WORD6(a21) = 2080;
      *(&a21 + 14) = "";
      a24 = 1024;
      a25 = 98;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a16 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2EE3CCLL);
  }

  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v33 = v32;
    v34 = sub_5544(14);
    v35 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v36 = (*(*v33 + 16))(v33);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a21) = 2080;
    *(&a21 + 4) = v36;
    WORD6(a21) = 2080;
    *(&a21 + 14) = "";
    a24 = 1024;
    a25 = 98;
    v37 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v38 = v35;
    v39 = 44;
  }

  else
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a21) = 2080;
    *(&a21 + 4) = "";
    WORD6(a21) = 1024;
    *(&a21 + 14) = 98;
    v37 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v38 = v41;
    v39 = 34;
  }

  _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v37, &buf, v39);
  goto LABEL_19;
}

uint64_t sub_2EE700(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_46980((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v4 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 56) = *(a2 + 56);
  sub_44E44((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  if (*(a2 + 119) < 0)
  {
    sub_54A0((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
  }

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_2EE7BC(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 72));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2EE7FC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    sub_477A0(*(v1 + 72));
    v2 = *(v1 + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_2EE878(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_477A0(*(a1 + 72));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t *sub_2EE8D0(uint64_t a1)
{
  v14[0] = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        if (*(a1 + 120))
        {
          v5 = 1919842148;
        }

        else
        {
          v5 = 1919971701;
        }

        v6 = sub_809C0();
        sub_161C7C(v15, v4, a1 + 16);
        sub_258778(v6, v15, v5);
        sub_65310(v15);
LABEL_19:
        sub_1A8C0(v3);
        return sub_2EE7FC(v14);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = sub_5544(18);
  v8 = sub_5544(29);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_15;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_15:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v17 = 1024;
    v18 = 333;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_19;
  }

  return sub_2EE7FC(v14);
}

void sub_2EEA84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 buf, __int128 a21, int a22, __int16 a23, __int16 a24, int a25)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_65310(&a17);
  sub_1A8C0(v25);
  if (a2 == 3)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v28[2]);
      p_p = __p;
      if (a16 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a21) = 2080;
      *(&a21 + 4) = p_p;
      WORD6(a21) = 2080;
      *(&a21 + 14) = "";
      a24 = 1024;
      a25 = 98;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a16 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x2EEA48);
  }

  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v33 = v32;
    v34 = sub_5544(14);
    v35 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v36 = (*(*v33 + 16))(v33);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a21) = 2080;
    *(&a21 + 4) = v36;
    WORD6(a21) = 2080;
    *(&a21 + 14) = "";
    a24 = 1024;
    a25 = 98;
    v37 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v38 = v35;
    v39 = 44;
  }

  else
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a21) = 2080;
    *(&a21 + 4) = "";
    WORD6(a21) = 1024;
    *(&a21 + 14) = 98;
    v37 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v38 = v41;
    v39 = 34;
  }

  _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v37, &buf, v39);
  goto LABEL_17;
}

unsigned __int8 *sub_2EED4C(unint64_t a1)
{
  for (i = 0; i != 19; ++i)
  {
    sub_2EEDE8(a1, dword_5192B0[i]);
  }

  sub_314648(a1);
  v3 = *(a1 + 268);
  v4 = +[PersonalAudioListener sharedInstance];
  [v4 removeListener:v3];

  return sub_4B08A4(a1);
}

uint64_t sub_2EEDE8(unint64_t a1, AudioObjectPropertySelector a2)
{
  v5.mSelector = a2;
  *&v5.mScope = 1735159650;
  sub_4E890();
  v3 = (*(*a1 + 120))(a1);
  return sub_74D2C(v3, &v5, sub_2EA114, a1);
}

void sub_2EEE68(void *a1, int *a2, UInt32 a3, const void *a4, UInt32 a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v65 = sub_5544(14);
    if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
    {
      v74 = *a2;
      v75 = a2[2];
      sub_22CE0(__p, &v74);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v67 = sub_5544(14);
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      v74 = *a2;
      v75 = a2[2];
      sub_22CE0(__p, &v74);
    }

    v68 = __cxa_allocate_exception(0x10uLL);
    *v68 = &off_6DDDD0;
    v68[2] = 561211770;
  }

  if (!a6)
  {
    v69 = sub_5544(14);
    if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
    {
      v74 = *a2;
      v75 = a2[2];
      sub_22CE0(__p, &v74);
    }

    v70 = __cxa_allocate_exception(0x10uLL);
    *v70 = &off_6DDDD0;
    v70[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v71 = sub_5544(14);
    if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
    {
      v74 = *a2;
      v75 = a2[2];
      sub_22CE0(__p, &v74);
    }

    v72 = __cxa_allocate_exception(0x10uLL);
    *v72 = &off_6DDDD0;
    v72[2] = 1852797029;
  }

  v12 = *a2;
  if (*a2 == 1651797100)
  {
    v21 = *a6;
    v22 = sub_5544(18);
    v23 = sub_5544(29);
    v24 = 0;
    *&buf.mSelector = 0x100000002;
    v25 = *(v22 + 8);
    while (1)
    {
      v26 = *(&buf.mSelector + v24);
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        goto LABEL_54;
      }
    }

    if ((v25 & v26) == 0)
    {
      v22 = v23;
    }

LABEL_54:
    v47 = *v22;
    if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      (*(*a1 + 128))(__p, a1);
      v48 = v78 >= 0 ? __p : __p[0];
      buf.mSelector = 136315906;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v82 = 1024;
      v83 = 743;
      v84 = 2080;
      v85 = v48;
      v86 = 1024;
      LODWORD(v87) = v21;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: setting low latency mode to %u", &buf, 0x22u);
      if (v78 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_2EFE4C(&buf, a2);
    sub_FDAC4(a1, &buf, a3, a4, a5, a6);
  }

  else if (v12 == 1936745838)
  {
    v15 = *a6;
    v16 = sub_5544(18);
    v17 = sub_5544(29);
    v18 = 0;
    *&buf.mSelector = 0x100000002;
    v19 = *(v16 + 8);
    while (1)
    {
      v20 = *(&buf.mSelector + v18);
      if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
      {
        break;
      }

      v18 += 4;
      if (v18 == 8)
      {
        goto LABEL_35;
      }
    }

    if ((v19 & v20) == 0)
    {
      v16 = v17;
    }

LABEL_35:
    v35 = *v16;
    if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      (*(*a1 + 128))(__p, a1);
      v36 = v78 >= 0 ? __p : __p[0];
      buf.mSelector = 136315906;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v82 = 1024;
      v83 = 750;
      v84 = 2080;
      v85 = v36;
      v86 = 1024;
      *&v87 = v15;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: setting spatial A2DP mode to %u", &buf, 0x22u);
      if (v78 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v73[0] = v15;
    v79 = 0;
    v80 = 4;
    strcpy(&buf, "papsbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    if ((*(*a1 + 16))(a1, &buf))
    {
      strcpy(&buf, "papsbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      (*(*a1 + 40))(a1, &buf, 0, 0, &v80, &v79);
      if (v79)
      {
        v37 = sub_5544(18);
        v38 = sub_5544(29);
        v39 = 0;
        *&buf.mSelector = 0x100000002;
        v40 = *(v37 + 8);
        while (1)
        {
          v41 = *(&buf.mSelector + v39);
          if (((v40 & v41) != 0) != ((*(v38 + 8) & v41) != 0))
          {
            break;
          }

          v39 += 4;
          if (v39 == 8)
          {
            goto LABEL_91;
          }
        }

        if ((v40 & v41) == 0)
        {
          v37 = v38;
        }

LABEL_91:
        v59 = *v37;
        if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 128))(__p, a1);
          v60 = v78;
          v61 = __p[0];
          sub_22170(&v74, 1936745838);
          v62 = __p;
          if (v60 < 0)
          {
            v62 = v61;
          }

          if (v76 >= 0)
          {
            v63 = &v74;
          }

          else
          {
            v63 = v74;
          }

          buf.mSelector = 136316162;
          *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
          v82 = 1024;
          v83 = 991;
          v84 = 2080;
          v85 = v62;
          v86 = 2080;
          v87 = v63;
          v88 = 1024;
          v89 = v15;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: setting %s to %u", &buf, 0x2Cu);
          if (v76 < 0)
          {
            operator delete(v74);
          }

          if (v78 < 0)
          {
            operator delete(__p[0]);
          }
        }

        strcpy(&buf, "nepsbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        sub_FDAC4(a1, &buf, 0, 0, v80, v73);
        v64 = a1[11];
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 16), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v64 + 16), 1uLL, memory_order_relaxed);
        }

        sub_68E60();
        operator new();
      }
    }

    v42 = sub_5544(18);
    v43 = sub_5544(29);
    v44 = 0;
    *&buf.mSelector = 0x100000002;
    v45 = *(v42 + 8);
    while (1)
    {
      v46 = *(&buf.mSelector + v44);
      if (((v45 & v46) != 0) != ((*(v43 + 8) & v46) != 0))
      {
        break;
      }

      v44 += 4;
      if (v44 == 8)
      {
        goto LABEL_78;
      }
    }

    if ((v45 & v46) == 0)
    {
      v42 = v43;
    }

LABEL_78:
    v54 = *v42;
    if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      (*(*a1 + 128))(__p, a1);
      v55 = v78;
      v56 = __p[0];
      sub_22170(&v74, 1936745838);
      v57 = __p;
      if (v55 < 0)
      {
        v57 = v56;
      }

      if (v76 >= 0)
      {
        v58 = &v74;
      }

      else
      {
        v58 = v74;
      }

      buf.mSelector = 136316162;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v82 = 1024;
      v83 = 998;
      v84 = 2080;
      v85 = v57;
      v86 = 2080;
      v87 = v58;
      v88 = 1024;
      v89 = v15;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: could not set %s to %u because spatial audio is not supported", &buf, 0x2Cu);
      if (v76 < 0)
      {
        operator delete(v74);
      }

      if (v78 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (v12 == 1869832547)
  {
    v13 = *a6;
    if ((sub_231C4() & 1) != 0 || sub_23238("VA_SetOwnership", 0xFuLL) != &qword_709F00)
    {
      if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
      {
        qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
        __cxa_guard_release(&qword_6F6850);
      }

      v14 = os_signpost_id_generate(qword_6F6848);
      if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
      {
        qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
        __cxa_guard_release(&qword_6F6850);
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = qword_6F6848;
        if (os_signpost_enabled(qword_6F6848))
        {
          buf.mSelector = 67109120;
          buf.mScope = v13;
          _os_signpost_emit_with_name_impl(&dword_0, v32, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VA_SetOwnership", "Setting kVirtualAudioPortPropertyOwnsSharedAudioConnection to %d", &buf, 8u);
        }
      }
    }

    else
    {
      v14 = 0;
    }

    __p[0] = v14;
    v33 = sub_5544(43);
    if (*(v33 + 8))
    {
      v34 = *v33;
      if (*v33)
      {
        if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "SignpostUtilities.h";
          v82 = 1024;
          v83 = 84;
          v84 = 2080;
          v85 = "kOwnsSharedConnection";
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &buf, 0x1Cu);
        }
      }
    }

    sub_2EFE4C(&buf, a2);
    sub_FDAC4(a1, &buf, a3, a4, a5, a6);
    sub_2EFFB4(__p);
  }

  else
  {
    sub_2EFE4C(v73, a2);
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
        goto LABEL_64;
      }
    }

    if ((v30 & v31) == 0)
    {
      v27 = v28;
    }

LABEL_64:
    v49 = *v27;
    if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 128))(__p, a1);
      v50 = v78;
      v51 = __p[0];
      sub_22170(&v74, LODWORD(v73[0]));
      v52 = __p;
      if (v50 < 0)
      {
        v52 = v51;
      }

      if (v76 >= 0)
      {
        v53 = &v74;
      }

      else
      {
        v53 = v74;
      }

      buf.mSelector = 136315906;
      *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
      v82 = 1024;
      v83 = 756;
      v84 = 2080;
      v85 = v52;
      v86 = 2080;
      v87 = v53;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s: Setting Bluetooth property %s.", &buf, 0x26u);
      if (v76 < 0)
      {
        operator delete(v74);
      }

      if (v78 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_2EFE4C(&buf, a2);
    sub_FDAC4(a1, &buf, a3, a4, a5, a6);
  }
}

void sub_2EFDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2EFE4C(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 1718772583)
  {
    if (v2 <= 1935762277)
    {
      if (v2 == 1718772584)
      {
        v3 = 0x676C6F6266726368;
        goto LABEL_24;
      }

      if (v2 == 1869832547)
      {
        v3 = 0x676C6F62626F6163;
        goto LABEL_24;
      }
    }

    else
    {
      switch(v2)
      {
        case 1935762278:
          v3 = 0x676C6F6262616366;
          goto LABEL_24;
        case 1936745838:
          v3 = 0x676C6F627370656ELL;
          goto LABEL_24;
        case 1952609377:
          v3 = 0x676C6F6261746274;
          goto LABEL_24;
      }
    }
  }

  else if (v2 <= 1668051826)
  {
    if (v2 == 1651797100)
    {
      v3 = 0x676C6F626C6F6C61;
      goto LABEL_24;
    }

    if (v2 == 1651798131)
    {
      v3 = 0x676C6F6270726973;
      goto LABEL_24;
    }
  }

  else
  {
    switch(v2)
    {
      case 1668051827:
        v3 = 0x676C6F62636C7373;
        goto LABEL_24;
      case 1685025637:
        v3 = 0x676C6F62646F7365;
        goto LABEL_24;
      case 1685026403:
        v3 = 0x676C6F62646F7663;
LABEL_24:
        *result = v3;
        *(result + 8) = 0;
        return result;
    }
  }

  *result = *a2;
  *(result + 8) = a2[2];
  return result;
}

os_signpost_id_t *sub_2EFFB4(os_signpost_id_t *a1)
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
        v10 = 84;
        v11 = 2080;
        v12 = "kOwnsSharedConnection";
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
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_SetOwnership", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2F0144(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t *sub_2F0150(uint64_t *a1)
{
  v26 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        sub_4B4770(__p, *a1);
        sub_B0484(&v27, __p);
        sub_65310(__p);
        v5 = v28;
        if (v28 != &v27)
        {
          while (1)
          {
            v7 = v5[2];
            v6 = v5[3];
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            strcpy(buf, "nepsbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            v9 = sub_59410(v4, buf, 0, 0);
            if (v9)
            {
              goto LABEL_39;
            }

            if ((v8 & 1) == 0)
            {
              break;
            }

            v10 = sub_5544(18);
            v11 = sub_5544(29);
            v12 = 0;
            v13 = HIDWORD(v9);
            *buf = 0x100000002;
            v14 = *(v10 + 8);
            while (1)
            {
              v15 = *&buf[v12];
              if (((v14 & v15) != 0) != ((*(v11 + 8) & v15) != 0))
              {
                break;
              }

              v12 += 4;
              if (v12 == 8)
              {
                goto LABEL_15;
              }
            }

            if ((v14 & v15) == 0)
            {
              v10 = v11;
            }

LABEL_15:
            v16 = *v10;
            if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v4 + 128))(__p, v4);
              v17 = __p;
              if (v31 < 0)
              {
                v17 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = "Device_Bluetooth_Aspen.cpp";
              v33 = 1024;
              v34 = 958;
              v35 = 1024;
              v36 = v13;
              v37 = 2080;
              v38 = v17;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d BluetoothSpatialAudioEnabled changed to %d for BT device UID %s ", buf, 0x22u);
              if (v31 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v29 = 1936745838;
            sub_1F2E44(__p, &v29, 1);
            (*(*v7 + 416))(v7, __p);
            sub_4E0BC(__p);
            if (v6)
            {
              sub_1A8C0(v6);
            }

            v5 = v5[1];
            if (v5 == &v27)
            {
              goto LABEL_24;
            }
          }

          LODWORD(v9) = 0;
LABEL_39:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v9;
        }

LABEL_24:
        sub_87980(&v27);
        goto LABEL_35;
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
  *buf = 0x100000002;
  v21 = *(v18 + 8);
  while (1)
  {
    v22 = *&buf[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_32;
    }
  }

  if ((v21 & v22) == 0)
  {
    v18 = v19;
  }

LABEL_32:
  v23 = *v18;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v33 = 1024;
    v34 = 333;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth device expired, not calling async device function.", buf, 0x12u);
  }

LABEL_35:
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return sub_2EE0C8(&v26);
}

void sub_2F054C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 buf, __int128 a29, int a30, __int16 a31, __int16 a32, int a33)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_65310(&a25);
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a2 == 3)
  {
    v35 = __cxa_begin_catch(a1);
    v36 = sub_5544(14);
    v37 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v35[2]);
      p_p = __p;
      if (a20 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a29) = 2080;
      *(&a29 + 4) = p_p;
      WORD6(a29) = 2080;
      *(&a29 + 14) = "";
      a32 = 1024;
      a33 = 98;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a20 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2F04B8);
  }

  v39 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v40 = v39;
    v41 = sub_5544(14);
    v42 = *v41;
    if (!*v41 || !os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v43 = (*(*v40 + 16))(v40);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a29) = 2080;
    *(&a29 + 4) = v43;
    WORD6(a29) = 2080;
    *(&a29 + 14) = "";
    a32 = 1024;
    a33 = 98;
    v44 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v45 = v42;
    v46 = 44;
  }

  else
  {
    v47 = sub_5544(14);
    v48 = *v47;
    if (!*v47 || !os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a29) = 2080;
    *(&a29 + 4) = "";
    WORD6(a29) = 1024;
    *(&a29 + 14) = 98;
    v44 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v45 = v48;
    v46 = 34;
  }

  _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, v44, &buf, v46);
  goto LABEL_19;
}

void sub_2F0868(uint64_t a1, uint64_t a2, UInt32 a3, const void *a4, UInt32 *a5, int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v34 = *(a2 + 8);
      sub_22CE0(v37, &__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v34 = *(a2 + 8);
      sub_22CE0(v37, &__p);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  if (!a6)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v34 = *(a2 + 8);
      sub_22CE0(v37, &__p);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = &off_6DDDD0;
    v32[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1819046767)
  {
    if (v12 <= 1651796338)
    {
      if (v12 == 1650551140)
      {
        v13 = *(a1 + 620);
        goto LABEL_32;
      }

      if (v12 == 1651796336)
      {
        v13 = *(a1 + 588);
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v12 == 1651796339)
    {
      v13 = *(a1 + 592);
      goto LABEL_32;
    }

    if (v12 != 1651798131)
    {
      if (v12 == 1767989616)
      {
        v13 = *(a1 + 584);
LABEL_32:
        *a6 = v13;
        return;
      }

      goto LABEL_33;
    }

    sub_2EFE4C(buf, a2);
    (*(*a1 + 40))(a1, buf, 0, 0, a5, a6);
    v14 = sub_2E9F94(*a6);
    goto LABEL_27;
  }

  if (v12 > 1937208175)
  {
    if (v12 == 1937208176)
    {
      v16 = (*(*a1 + 376))(a1);
      if ((v16 & 0x100000000) != 0)
      {
        v13 = v16;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_32;
    }

    if (v12 != 1970496630)
    {
      if (v12 != 2004054901)
      {
        goto LABEL_33;
      }

LABEL_18:
      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      goto LABEL_19;
    }

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
    v14 = sub_28B670(*a6);
LABEL_27:
    *a6 = v14;
    return;
  }

  switch(v12)
  {
    case 1819046768:
      goto LABEL_18;
    case 1869832547:
      v15 = atomic_load((a1 + 616));
      v13 = v15 == 1;
      goto LABEL_32;
    case 1935762278:
      sub_2EFE4C(buf, a2);
      (*(*a1 + 40))(a1, buf, 0, 0, a5, a6);
LABEL_19:
      v13 = *a6 != 0;
      goto LABEL_32;
  }

LABEL_33:
  sub_2EFE4C(&v36, a2);
  v17 = sub_5544(18);
  v18 = sub_5544(29);
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
      goto LABEL_39;
    }
  }

  if ((v20 & v21) == 0)
  {
    v17 = v18;
  }

LABEL_39:
  v22 = *v17;
  if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 128))(v37, a1);
    v23 = v38;
    v24 = v37[0];
    sub_22170(&__p, v36.mSelector);
    v25 = v37;
    if (v23 < 0)
    {
      v25 = v24;
    }

    if (v35 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v40 = 1024;
    v41 = 713;
    v42 = 2080;
    v43 = v25;
    v44 = 2080;
    v45[0] = p_p;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: Getting Bluetooth property %s.", buf, 0x26u);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  sub_5C0D8(a1, &v36, a3, a4, a5, a6);
}

void sub_2F1044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2F1068(uint64_t a1, int *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *a2;
      v16 = a2[2];
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_23:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a2;
      v16 = a2[2];
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_23;
  }

  v8 = *a2;
  result = 4;
  if (*a2 > 1767989615)
  {
    if (v8 > 1937208175)
    {
      if (v8 == 1937208176)
      {
        return result;
      }

      v10 = 1986947428;
    }

    else
    {
      if (v8 == 1767989616)
      {
        return result;
      }

      v10 = 1869832547;
    }

    goto LABEL_12;
  }

  if (v8 != 1650551140 && v8 != 1651796336)
  {
    v10 = 1651796339;
LABEL_12:
    if (v8 != v10)
    {
      sub_2EFE4C(&buf, a2);
      return sub_5BD20(a1, &buf, a3, a4);
    }
  }

  return result;
}

BOOL sub_2F13C0(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 <= 1767989615)
  {
    if (v3 != 1650551140 && v3 != 1651796336 && v3 != 1651796339)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v3 == 1986947428)
  {
    return 0;
  }

  if (v3 != 1869832547)
  {
    if (v3 != 1767989616)
    {
LABEL_14:
      sub_2EFE4C(&v7, a2);
      return sub_BE734(a1, &v7);
    }

    return 0;
  }

  return 1;
}

unint64_t sub_2F147C(uint64_t a1, int *a2)
{
  v4 = *a2;
  LOBYTE(v5) = 1;
  if (*a2 <= 1767989615)
  {
    if (v4 == 1650551140)
    {
      return v5 & 1;
    }

    if (v4 == 1651796336 || v4 == 1651796339)
    {
      LOBYTE(v5) = *(a1 + 600);
      return v5 & 1;
    }

    goto LABEL_15;
  }

  if (v4 <= 1937208175)
  {
    if (v4 == 1767989616)
    {
      return v5 & 1;
    }

    if (v4 == 1869832547)
    {
      v6 = atomic_load((a1 + 616));
      v7 = v6 == 0;
LABEL_36:
      LOBYTE(v5) = !v7;
      return v5 & 1;
    }

LABEL_15:
    sub_2EFE4C(v24, a2);
    v9 = sub_5544(18);
    v10 = sub_5544(29);
    v11 = 0;
    *&buf.mSelector = 0x100000002;
    v12 = *(v9 + 8);
    while (1)
    {
      v13 = *(&buf.mSelector + v11);
      if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
      {
        break;
      }

      v11 += 4;
      if (v11 == 8)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }
    }

    if ((v12 & v13) == 0)
    {
      v9 = v10;
    }

    if (*(v9 + 8))
    {
LABEL_24:
      v14 = *v9;
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 128))(v22, a1);
        v15 = v23;
        v16 = v22[0];
        sub_22170(__p, v24[0]);
        v17 = v22;
        if (v15 < 0)
        {
          v17 = v16;
        }

        if (v21 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "Device_Bluetooth_Aspen.cpp";
        v26 = 1024;
        v27 = 589;
        v28 = 2080;
        v29 = v17;
        v30 = 2080;
        v31 = v18;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bluetooth audio device with UID %s: Checking if it has Bluetooth property %s.", &buf, 0x26u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }
    }

LABEL_35:
    sub_2EFE4C(&buf, a2);
    sub_4DFC0(a1);
    v7 = AudioObjectHasProperty(*(a1 + 268), &buf) == 0;
    goto LABEL_36;
  }

  if (v4 == 1937208176)
  {
    v5 = ((*(*a1 + 376))(a1) >> 32) & 1;
    return v5 & 1;
  }

  if (v4 != 1986947428)
  {
    goto LABEL_15;
  }

  return v5 & 1;
}

void sub_2F1768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2F1794(uint64_t a1, uint64_t *a2)
{
  ioDataSize = 4;
  LODWORD(outData) = 0;
  *&inAddress.mSelector = 0x676C6F6262647470;
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v3 = sub_5544(18);
    v4 = sub_5544(29);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_8:
    v8 = *v3;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Device_Bluetooth_Aspen.cpp";
      v23 = 1024;
      v24 = 152;
      v25 = 1024;
      v26 = PropertyData;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d getting bluetooth audio device type", buf, 0x18u);
    }
  }

  v9 = outData;
  if (outData == 1953853033)
  {
    operator new();
  }

  v10 = sub_5544(18);
  v11 = sub_5544(29);
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
      goto LABEL_19;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

LABEL_19:
  v15 = *v10;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_22170(&inAddress, v9);
    if (v21 >= 0)
    {
      p_inAddress = &inAddress;
    }

    else
    {
      p_inAddress = *&inAddress.mSelector;
    }

    *buf = 136315906;
    *&buf[4] = "Device_Bluetooth_Aspen.cpp";
    v23 = 1024;
    v24 = 361;
    v25 = 1024;
    v26 = v9;
    v27 = 2080;
    v28 = p_inAddress;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown bluetooth audio device type %u ('%s')", buf, 0x22u);
    if (v21 < 0)
    {
      operator delete(*&inAddress.mSelector);
    }
  }

  return 0;
}

void sub_2F2790(_Unwind_Exception *a1)
{
  sub_2F2A64(v2);
  sub_4B2820(v1);
  operator delete();
}

std::string *sub_2F2860(std::string *a1, const std::string *a2)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size < 8 || (v3 >= 0 ? (v6 = a2) : (v6 = a2->__r_.__value_.__r.__words[0]), sub_2F29F8(v6, size, size - 8, 0xFFFFFFFFFFFFFFFFLL, "-btaudio", 8uLL)))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "Device_Bluetooth_Aspen.cpp";
      v14 = 1024;
      v15 = 374;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): invalid UID", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "invalid UID");
  }

  v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2->__r_.__value_.__l.__size_;
  }

  return std::string::basic_string(a1, a2, 0, v7 - 8, &v12);
}

uint64_t sub_2F29F8(uint64_t a1, unint64_t a2, unint64_t a3, size_t a4, void *__s2, size_t a6)
{
  if (a2 < a3)
  {
    sub_DE7DC("string_view::substr");
  }

  if (a2 - a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2 - a3;
  }

  if (a6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a6;
  }

  LODWORD(result) = memcmp((a1 + a3), __s2, v8);
  if (v7 < a6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v7 == a6)
  {
    v10 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_2F2A64(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (*(a1 + 40) == 1)
    {
      caulk::semaphore::~semaphore((a1 + 24));
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      sub_1A8C0(v2);
    }

    return a1;
  }

  return result;
}

void sub_2F2AC8(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2F2B1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C0D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2F2B90(void *a1)
{
  *a1 = off_6C0AF8;
  sub_140514(a1 + 67);
  sub_2F2A64((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_2F2BF4(uint64_t a1)
{
  (*(**(a1 + 24) + 272))(*(a1 + 24), 0);
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2F2CB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
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
      a21 = 124;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x2F2C54);
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
    a21 = 124;
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
    *(&a17 + 14) = 124;
    v31 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v32 = v35;
    v33 = 34;
  }

  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v31, &buf, v33);
  goto LABEL_17;
}

uint64_t sub_2F2F40(uint64_t result, int a2)
{
  if (*(result + 24))
  {
    v2 = result;
    if (a2)
    {
      v3 = *(result + 32);
      v4 = sub_5544(26);
      v5 = *v4;
      if (v3 == 1)
      {
        if (v5 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, 1886545251);
          if (v13 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136315650;
          v15 = "EnableANCMonitorIODelegate.cpp";
          v16 = 1024;
          v17 = 105;
          v18 = 2080;
          v19 = v6;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Stopping ANCMonitor aggregate.", buf, 0x1Cu);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return (*(**(v2 + 24) + 272))(*(v2 + 24), 0);
      }

      else
      {
        if (v5 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, 1886613611);
          v11 = v13 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v15 = "EnableANCMonitorIODelegate.cpp";
          v16 = 1024;
          v17 = 113;
          v18 = 2080;
          v19 = v11;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Starting ANCMonitor aggregate.", buf, 0x1Cu);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return (*(**(v2 + 24) + 256))(*(v2 + 24), 0);
      }
    }

    else
    {
      sub_EBA7C();
      v7 = *(v2 + 8);
      v8 = *(v2 + 16);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
      }

      if (!caulk::g_realtime_safe_resource)
      {
        __break(1u);
      }

      v9 = *(v2 + 36);
      v10 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x38uLL, 8uLL);
      *(v10 + 16) = 0;
      *(v10 + 24) = v7;
      *(v10 + 32) = v8;
      *(v10 + 40) = v9;
      *v10 = off_6C0E10;
      *(v10 + 8) = 0;

      return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v10);
    }
  }

  return result;
}

caulk::concurrent::message **sub_2F321C(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_2F3264(a1);
  return sub_2F3D78(&v2);
}

void sub_2F3250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2F3D78(va);
  _Unwind_Resume(a1);
}

void sub_2F3264(uint64_t a1)
{
  v2 = *(a1 + 40);
  *&v25.mSelector = 0x676C6F62676F696ELL;
  v25.mElement = 0;
  v3 = sub_5544(14);
  if ((*(v3 + 8) & 1) != 0 && *v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v32[0] = v25;
    sub_22CE0(&v42, &v32[0].mSelector);
  }

  buf = v25;
  if (AudioObjectHasProperty(v2, &buf))
  {
    memset(v42.__m_.__opaque, 0, sizeof(v42.__m_.__opaque));
    v42.__m_.__sig = 850045863;
    memset(v41.__cv_.__opaque, 0, sizeof(v41.__cv_.__opaque));
    v41.__cv_.__sig = 1018212795;
    v33 = 0;
    sub_745E8(v32, v2, &v25, &v41, &v42, &v33);
    v28 = v2;
    v29 = v25;
    v30 = 0;
    v31 = 0;
    if (sub_2F3EC0(&v28))
    {
      for (i = 2000; ; i += (std::chrono::system_clock::now().__d_.__rep_ - v6.__d_.__rep_) / -1000)
      {
        v5 = sub_2F3EC0(&v28);
        if (HIDWORD(v5))
        {
          goto LABEL_50;
        }

        if (!v5)
        {
          v17 = sub_5544(14);
          if ((*(v17 + 8) & 1) != 0 && *v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            v26 = v25;
            sub_22CE0(__p, &v26.mSelector);
          }

          goto LABEL_46;
        }

        if (i <= 0)
        {
          v18 = sub_5544(14);
          if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            v26 = v25;
            sub_22CE0(__p, &v26.mSelector);
          }

LABEL_50:
          sub_73C20(&v32[0].mSelector);
          std::condition_variable::~condition_variable(&v41);
          std::mutex::~mutex(&v42);
          goto LABEL_51;
        }

        v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v7 = sub_5544(14);
        if (*(v7 + 8))
        {
          v8 = *v7;
          if (*v7)
          {
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
            {
              buf.mSelector = 136315906;
              *&buf.mScope = "HALPropertySynchronizer.h";
              v35 = 1024;
              v36 = 354;
              v37 = 2080;
              v38 = "with timeout";
              v39 = 1024;
              LODWORD(v40) = v2;
              _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
            }
          }
        }

        sub_27A4();
        __p[0] = sub_2E6B08();
        *&buf.mSelector = &v42;
        LOBYTE(buf.mElement) = 1;
        std::mutex::lock(&v42);
        v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
        while ((v33 & 1) == 0 && v9.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
        {
          v10.__d_.__rep_ = v9.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
          if (v10.__d_.__rep_ >= 1)
          {
            std::chrono::steady_clock::now();
            v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            if (v11.__d_.__rep_)
            {
              if (v11.__d_.__rep_ < 1)
              {
                if (v11.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                {
                  goto LABEL_26;
                }

                v12 = 0x8000000000000000;
              }

              else
              {
                if (v11.__d_.__rep_ > 0x20C49BA5E353F7)
                {
                  v12 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_27;
                }

LABEL_26:
                v12 = 1000 * v11.__d_.__rep_;
LABEL_27:
                if (v12 > (v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
                  std::condition_variable::__do_timed_wait(&v41, &buf, v13);
                  std::chrono::steady_clock::now();
                  goto LABEL_31;
                }
              }
            }

            else
            {
              v12 = 0;
            }

            v13.__d_.__rep_ = v12 + v10.__d_.__rep_;
            goto LABEL_30;
          }

LABEL_31:
          if (std::chrono::steady_clock::now().__d_.__rep_ >= v9.__d_.__rep_)
          {
            break;
          }
        }

        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
      }
    }

    v15 = sub_5544(14);
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v35 = 1024;
          v36 = 322;
          v37 = 1024;
          LODWORD(v38) = v2;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
        }
      }
    }

LABEL_46:
    sub_73C20(&v32[0].mSelector);
    std::condition_variable::~condition_variable(&v41);
    std::mutex::~mutex(&v42);
  }

  else
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v32[0] = v25;
      sub_22CE0(&v42, &v32[0].mSelector);
    }

LABEL_51:
    v19 = sub_5544(26);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "EnableANCMonitorIODelegate.cpp";
      v35 = 1024;
      v36 = 90;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Timed out waiting for kAudioDevicePropertyDeviceIsRunning property on monitored aggregate device.", &buf, 0x12u);
    }
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = std::__shared_weak_count::lock(v21);
    if (v22)
    {
      v23 = v22;
      v24 = *(a1 + 24);
      if (v24)
      {
        sub_2F2F40(v24, 1);
      }

      sub_1A8C0(v23);
    }
  }
}

void sub_2F3A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 buf, __int128 a32, int a33, __int16 a34, __int16 a35, int a36)
{
  if (a2)
  {
    sub_73C20(&a25);
    std::condition_variable::~condition_variable((v36 - 216));
    std::mutex::~mutex((v36 - 168));
    if (a2 == 3)
    {
      v39 = __cxa_begin_catch(exception_object);
      v40 = sub_5544(14);
      v41 = *v40;
      if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        sub_22170((v36 - 216), v39[2]);
        v42 = *(v36 - 216);
        if (*(v36 - 193) >= 0)
        {
          v42 = v36 - 216;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a32) = 2080;
        *(&a32 + 4) = v42;
        WORD6(a32) = 2080;
        *(&a32 + 14) = "";
        a35 = 1024;
        a36 = 91;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (*(v36 - 193) < 0)
        {
          operator delete(*(v36 - 216));
        }
      }
    }

    else
    {
      v43 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        v44 = v43;
        v45 = sub_5544(14);
        v46 = *v45;
        if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
        {
          v47 = (*(*v44 + 16))(v44);
          LODWORD(buf) = 136316162;
          *(&buf + 4) = "StandardUtilities.h";
          WORD6(buf) = 1024;
          *(&buf + 14) = 665;
          WORD1(a32) = 2080;
          *(&a32 + 4) = v47;
          WORD6(a32) = 2080;
          *(&a32 + 14) = "";
          a35 = 1024;
          a36 = 91;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).", &buf, 0x2Cu);
        }
      }

      else
      {
        v48 = sub_5544(14);
        v49 = *v48;
        if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 136315906;
          *(&buf + 4) = "StandardUtilities.h";
          WORD6(buf) = 1024;
          *(&buf + 14) = 670;
          WORD1(a32) = 2080;
          *(&a32 + 4) = "";
          WORD6(a32) = 1024;
          *(&a32 + 14) = 91;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).", &buf, 0x22u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2F39C4);
  }

  _Unwind_Resume(exception_object);
}

caulk::concurrent::message **sub_2F3D78(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C0E38;
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

void sub_2F3DF4(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2F3E64(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

unint64_t sub_2F3EC0(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_A2458(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p, &v9);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_2F406C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F408C(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2F40FC(caulk::concurrent::message *this)
{
  *this = off_6C0E38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t sub_2F4158(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = result;
    v2 = *(result + 32);
    v3 = sub_5544(26);
    v4 = *v3;
    if (v2)
    {
      if (v4 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, 1886545251);
        if (v8 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v10 = "EnableANCMonitorIODelegate.cpp";
        v11 = 1024;
        v12 = 69;
        v13 = 2080;
        v14 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Starting ANCMonitor aggregate.", buf, 0x1Cu);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return (*(**(v1 + 24) + 256))(*(v1 + 24), 0);
    }

    else
    {
      if (v4 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, 1886613611);
        v6 = v8 >= 0 ? __p : __p[0];
        *buf = 136315650;
        v10 = "EnableANCMonitorIODelegate.cpp";
        v11 = 1024;
        v12 = 61;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d HandleIODidStart for port %s. Stopping ANCMonitor aggregate.", buf, 0x1Cu);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return (*(**(v1 + 24) + 272))(*(v1 + 24), 0);
    }
  }

  return result;
}

void sub_2F437C(uint64_t a1)
{
  sub_2F43B4(a1);

  operator delete();
}

uint64_t sub_2F43B4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = sub_5544(26);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "EnableANCMonitorIODelegate.cpp";
      v9 = 1024;
      v10 = 49;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AggregateDevice_ANCMonitor should have been destroyed in EnableANCMonitorIODelegate::Teardown().This may lead to unexpected ANC behaviour due to asynchronous device destruction.", &v7, 0x12u);
    }

    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_2F44BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2F44CC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void **a6, uint64_t a7, uint64_t a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &off_6C0DB8;
  operator new();
}

void sub_2F5F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, void *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, const void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37)
  {
    sub_1A8C0(a37);
  }

  v47 = *(v45 - 168);
  if (v47)
  {
    sub_1A8C0(v47);
  }

  sub_478050(&__p, a2, a3, a4, a5, a6, a7, a8);
  sub_452F0(&a26);
  (*(*v44 + 8))(v44);
  sub_477A0(a18);
  a17 = &a20;
  sub_F5714(&a17);
  v48 = *(v43 + 16);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2F632C(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_2F6394(void *result, uint64_t a2, double a3, double a4, double a5)
{
  if (a3 <= 0.0 || a4 <= 0.0)
  {
    *result = 0;
    result[1] = 0;
    result[3] = 0;
    result[4] = 0;
    result[2] = 0x3FF0000000000000;
  }

  else
  {
    v7 = a2;
    v8 = a4 * 0.34657359;
    if (a3 <= 3.11017673)
    {
      v9 = a3;
    }

    else
    {
      v9 = 3.11017673;
    }

    v10 = v8 * v9;
    v11 = sin(v9);
    v12 = sinh(v10 / v11);

    sub_2F645C(result, v7, v9, 1.0 / (v12 + v12), a5);
  }
}

void sub_2F645C(uint64_t a1, int a2, long double a3, double a4, double a5)
{
  v10 = cos(a3);
  if (a2 <= 5)
  {
    v26 = a5 * 0.05;
    if (a2 <= 2)
    {
      v14 = __exp10(v26);
      v37 = sin(a3) / (a4 + a4);
      if (a2 == 1)
      {
        v29 = (1.0 - v10) * 0.5;
        v28 = v29 + v29;
        v19 = v37 + 1.0;
        v38 = -2.0;
      }

      else
      {
        v29 = (v10 + 1.0) * 0.5;
        v38 = -2.0;
        v28 = v29 * -2.0;
        v19 = v37 + 1.0;
      }

      v20 = v10 * v38;
      v21 = 1.0 - v37;
      v23 = v29;
      goto LABEL_26;
    }

    if (a2 == 3)
    {
      v14 = __exp10(v26);
      v23 = sin(a3) / (a4 + a4);
      v29 = -v23;
      v19 = v23 + 1.0;
      v20 = v10 * -2.0;
      v21 = 1.0 - v23;
      v28 = 0.0;
    }

    else
    {
      if (a2 == 4)
      {
        v14 = __exp10(v26);
        v27 = sin(a3) / (a4 + a4);
        v28 = v10 * -2.0;
        v29 = 1.0;
        v19 = v27 + 1.0;
        v21 = 1.0 - v27;
        v23 = 1.0;
LABEL_25:
        v20 = v28;
        goto LABEL_26;
      }

      v14 = __exp10(v26);
      v46 = sin(a3) / (a4 + a4);
      v29 = v46 + 1.0;
      v28 = v10 * -2.0;
      v23 = 1.0 - v46;
      v21 = 1.0 - v46;
      v20 = v10 * -2.0;
      v19 = v46 + 1.0;
    }

LABEL_26:
    v49 = 1.0 / v19;
    *a1 = v20 * v49;
    *(a1 + 8) = v49 * v21;
    *(a1 + 16) = v14 * v49 * v23;
    *(a1 + 24) = v14 * v49 * v28;
    v36 = v14 * v49 * v29;
    goto LABEL_27;
  }

  if (a2 <= 8)
  {
    if (a2 != 6)
    {
      v11 = sin(a3) / (a4 + a4);
      v12 = __exp10(a5 * 0.5 * 0.05);
      v13 = sqrt(v12);
      v14 = 1.0;
      v15 = v11 * (v13 + v13);
      v16 = v10 * (v12 + -1.0);
      v17 = v10 * (v12 + 1.0);
      if (a2 == 7)
      {
        v18 = v12 + 1.0 + v16;
        v19 = v18 + v15;
        v20 = (v12 + -1.0 + v17) * -2.0;
        v21 = v18 - v15;
        v22 = v12 + 1.0 - v16;
        v23 = v12 * (v22 + v15);
        v24 = v12 + v12;
        v25 = v12 + -1.0 - v17;
      }

      else
      {
        v47 = v12 + 1.0 - v16;
        v19 = v47 + v15;
        v20 = v12 + -1.0 - v17 + v12 + -1.0 - v17;
        v21 = v47 - v15;
        v22 = v12 + 1.0 + v16;
        v23 = v12 * (v22 + v15);
        v24 = v12 * -2.0;
        v25 = v12 + -1.0 + v17;
      }

      v28 = v24 * v25;
      v29 = v12 * (v22 - v15);
      goto LABEL_26;
    }

    v39 = __exp10(a5 * 0.5 * 0.05);
    v40 = sin(a3) / (a4 / v39 + a4 / v39);
    v41 = v39 * v40;
    goto LABEL_24;
  }

  if (a2 == 9)
  {
    v42 = a5 * 0.5;
    v43 = __exp10(a5 * 0.5 * 0.25 * 0.05);
    v44 = __exp10(v42 * 0.75 * 0.05);
    v45 = (1.0 - v44 * v10 - sqrt((1.0 - v10 * v10) * -(v44 * v44) + (v44 + v44) * (1.0 - v10))) / (1.0 - v44);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *a1 = v45 * -2.0;
    *(a1 + 8) = v45 * v45;
    *(a1 + 16) = v43 * (v45 * -2.0 + 1.0 + v45 * v45);
    return;
  }

  if (a2 != 10)
  {
    v39 = __exp10(a5 * 0.5 * 0.05);
    v40 = sin(a3) / (a4 + a4);
    v41 = v40 * v39;
LABEL_24:
    v48 = v40 / v39;
    v14 = 1.0;
    v19 = v48 + 1.0;
    v28 = v10 * -2.0;
    v21 = 1.0 - v48;
    v23 = v41 + 1.0;
    v29 = 1.0 - v41;
    goto LABEL_25;
  }

  v30 = __exp10(a5 * 0.05);
  v31 = tan(a3 / (a4 + a4));
  v32 = (1.0 - v31 * (4.0 / (v30 + 1.0))) * 0.5 / (v31 * (4.0 / (v30 + 1.0)) + 1.0);
  v33 = (v30 + -1.0 + v30 + -1.0) * ((0.5 - v32) * 0.5);
  v34 = v10 * (v32 + 0.5) * -2.0;
  v35 = v32 + v32;
  *a1 = v34;
  *(a1 + 8) = v35;
  *(a1 + 16) = v33 + 1.0;
  *(a1 + 24) = v34;
  v36 = v35 - v33;
LABEL_27:
  *(a1 + 32) = v36;
}

void sub_2F6900(uint64_t result, int *a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, __int128 *a7)
{
  v8 = *a2;
  if (*a2 == 1936092532)
  {
    if (a6 == 40)
    {
      v12 = a7[1];
      v26 = *a7;
      v27 = v12;
      v28 = *(a7 + 4);
      if (sub_2F6EBC(result, &v26))
      {
        v13 = *(result + 32);
        *buf = *(result + 16);
        *&buf[16] = v13;
        v30 = *(result + 48);
        sub_2F6FB8((result + 80), buf, &v26);
        sub_2F70DC(result, &v26);
        return;
      }

      v24 = sub_5544(14);
      v22 = *v24;
      if (!*v24 || !os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 760;
      v23 = "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): given format is not supported for kAudioStreamPropertyVirtualFormat";
      goto LABEL_38;
    }

    v17 = sub_5544(14);
    v15 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 754;
      v16 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyVirtualFormat";
LABEL_27:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
    }

LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v20 = 561211770;
    goto LABEL_40;
  }

  if (v8 != 1885762592)
  {
    if (v8 != 1853059700)
    {
      return;
    }

    if (a6 == 8)
    {
      v9 = *a7;
      if (*a7 == 0.0 || sub_D7C0C(result, *a7))
      {

        sub_2F6D8C(result, v9);
        return;
      }

      v25 = sub_5544(14);
      v22 = *v25;
      if (!*v25 || !os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 746;
      v23 = "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): given sample rate is not supported for kAudioDevicePropertyNominalSampleRate";
      goto LABEL_38;
    }

    v18 = sub_5544(14);
    v15 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_FormatList.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 740;
      v16 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyNominalSampleRate";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (a6 != 40)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    *&buf[4] = "HP_FormatList.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 770;
    v16 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyPhysicalFormat";
    goto LABEL_27;
  }

  v10 = a7[1];
  v26 = *a7;
  v27 = v10;
  v28 = *(a7 + 4);
  if ((sub_2F6EBC(result, &v26) & 1) == 0)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315394;
    *&buf[4] = "HP_FormatList.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 776;
    v23 = "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): given format is not supported for kAudioStreamPropertyPhysicalFormat";
LABEL_38:
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x12u);
LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v20 = 560226676;
LABEL_40:
    exception[2] = v20;
  }

  sub_2F6FB8((result + 56), (result + 16), &v26);
  if ((*(**(result + 8) + 192))(*(result + 8), &v26))
  {
    v11 = v27;
    *(result + 16) = v26;
    *(result + 32) = v11;
    *(result + 48) = v28;
  }
}

uint64_t sub_2F6D8C(uint64_t a1, double a2)
{
  result = sub_D7C0C(a1, a2);
  if (result)
  {
    v5 = *(a1 + 56);
    v6 = (a1 + 16);
    v7 = *(a1 + 32);
    *v13 = *(a1 + 16);
    *&v13[16] = v7;
    *&v13[32] = *(a1 + 48);
    *v13 = a2;
    if ((sub_2F72D0(v5, *(a1 + 64), v13) & 1) == 0 && *&v13[8] == 1819304813)
    {
      v9 = *(a1 + 32);
      *v13 = *v6;
      *&v13[16] = v9;
      v10 = *(a1 + 48);
      *&v13[24] = 0;
      *&v13[32] = v10;
      *v13 = a2;
      *&v13[16] = 0;
      sub_2F6FB8((a1 + 56), (a1 + 16), v13);
      v8.n128_u64[0] = *v13;
      if (*v13 != a2)
      {
        v11 = *(a1 + 32);
        *v13 = *v6;
        *&v13[16] = v11;
        *&v13[36] = HIDWORD(*(a1 + 48));
        *v13 = a2;
        memset(&v13[12], 0, 24);
        sub_2F6FB8((a1 + 56), (a1 + 16), v13);
      }
    }

    result = (*(**(a1 + 8) + 192))(*(a1 + 8), v13, v8);
    if (result)
    {
      v12 = *&v13[16];
      *v6 = *v13;
      *(a1 + 32) = v12;
      *(a1 + 48) = *&v13[32];
    }
  }

  return result;
}

uint64_t sub_2F6EBC(uint64_t a1, uint64_t a2)
{
  if (*a2 == 0.0 || (result = sub_D7C0C(a1, *a2), result))
  {
    v5 = *(a2 + 8);
    if (!v5 || (v12 = 0, v10 = 0u, v11 = 0u, DWORD2(v10) = v5, result = sub_2F72D0(*(a1 + 56), *(a1 + 64), &v10), result))
    {
      v6 = *(a2 + 28);
      if (v6)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        HIDWORD(v11) = v6;
        result = sub_2F72D0(*(a1 + 56), *(a1 + 64), &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = 1;
      }

      if (*(a2 + 8) == 1819304813)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        v7 = *(a2 + 16);
        v8[0] = *a2;
        v8[1] = v7;
        v9 = *(a2 + 32);
        DWORD2(v10) = DWORD2(v8[0]);
        HIDWORD(v10) = sub_20B3A8(v8, 0);
        LODWORD(v12) = v9;
        return sub_2F72D0(*(a1 + 56), *(a1 + 64), &v10);
      }
    }
  }

  return result;
}

void sub_2F6FB8(__int128 **a1, double *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v6;
  v20 = *(a3 + 32);
  *&v19[0] = 0;
  v7 = *a3;
  v8 = *a1;
  while (v8 != a1[1])
  {
    v9 = sub_5FB04(v19, v8);
    v10 = v9;
    if (v9)
    {
      if (v7 == 0.0)
      {
        v7 = *a2;
      }

      for (i = *(v8 + 5); i != *(v8 + 6); i += 2)
      {
        if (*i <= v7 && i[1] >= v7)
        {
          v16 = *v8;
          v15 = v8[1];
          *(a3 + 32) = *(v8 + 4);
          *a3 = v16;
          *(a3 + 16) = v15;
          *a3 = v7;
          goto LABEL_16;
        }
      }

      v13 = *v8;
      v14 = v8[1];
      *(a3 + 32) = *(v8 + 4);
      *a3 = v13;
      *(a3 + 16) = v14;
      *a3 = sub_23527C(**(v8 + 5), *(*(v8 + 5) + 8));
    }

    else
    {
      v8 += 4;
    }

LABEL_16:
    if (v10)
    {
      return;
    }
  }

  v17 = **a1;
  v18 = (*a1)[1];
  *(a3 + 32) = *(*a1 + 4);
  *a3 = v17;
  *(a3 + 16) = v18;
  *a3 = sub_23527C(**(*a1 + 5), *(*(*a1 + 5) + 8));
}

double sub_2F70DC(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v9 = *a2;
  v10 = v3;
  v11 = *(a2 + 4);
  if (DWORD2(v9) == 1819304813 && (~HIDWORD(v9) & 9) == 0)
  {
    LODWORD(v11) = 32;
    *buf = v9;
    *&buf[28] = HIDWORD(v10);
    HIDWORD(v13) = HIDWORD(v11);
    *&buf[12] = xmmword_5171F0;
    LODWORD(v13) = 0;
    sub_2F6FB8((a1 + 56), (a1 + 16), buf);
    if (*&buf[8] != 1819304813 || *buf != *&v9 || *&buf[28] != HIDWORD(v10))
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_FormatList.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 242;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): no reasonable format could be found", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 1852797029;
    }

    v9 = *buf;
    v10 = *&buf[16];
    v11 = v13;
  }

  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v9))
  {
    result = *&v9;
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 32) = v5;
    *(a1 + 48) = v11;
  }

  return result;
}

uint64_t sub_2F72D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  __s1[0] = *a3;
  __s1[1] = v5;
  v21 = *(a3 + 32);
  *&__s1[0] = 0;
  v6 = *a3;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (!memcmp(__s1, v18, 0x24uLL))
  {
    if (v6 == 0.0)
    {
LABEL_28:
      v7 = 1;
    }

    else if (a1 == a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v13 = *(a1 + 40);
        while (v13 != *(a1 + 48))
        {
          v14 = *v13;
          v15 = v13[1];
          v13 += 2;
          if (v14 <= v6 && v15 >= v6)
          {
            v7 = 1;
            break;
          }
        }

        a1 += 64;
      }

      while (a1 != a2);
    }
  }

  else
  {
    v7 = 0;
    do
    {
      if (a1 == a2)
      {
        break;
      }

      v8 = sub_5FB04(__s1, a1);
      if (v8)
      {
        if (v6 == 0.0)
        {
          goto LABEL_28;
        }

        v9 = *(a1 + 40);
        while (v9 != *(a1 + 48))
        {
          v10 = *v9;
          v11 = v9[1];
          v9 += 2;
          if (v10 <= v6 && v11 >= v6)
          {
            v7 = 1;
            break;
          }
        }
      }

      else
      {
        a1 += 64;
      }
    }

    while (!v8);
  }

  return v7 & 1;
}

__n128 sub_2F73EC(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  n128_f64 = a1;
  while (1)
  {
    a1 = n128_f64;
    v13 = (a2 - n128_f64) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u64[0] = v9->n128_u64[0];
        if (v9->n128_f64[0] >= *n128_f64)
        {
          return result;
        }

LABEL_106:
        v119 = *n128_f64;
        *n128_f64 = *v9;
        result = v119;
LABEL_107:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v56 = (n128_f64 + 2);
      v58 = n128_f64[2];
      v59 = (n128_f64 + 4);
      v60 = n128_f64[4];
      if (v58 >= *n128_f64)
      {
        if (v60 < v58)
        {
          result = *v56;
          *v56 = *v59;
          *v59 = result;
          if (n128_f64[2] < *n128_f64)
          {
            v122 = *n128_f64;
            *n128_f64 = *v56;
            result.n128_u64[1] = v122.n128_u64[1];
            *v56 = v122;
          }
        }
      }

      else
      {
        if (v60 < v58)
        {
          v120 = *n128_f64;
          *n128_f64 = *v59;
          result = v120;
          goto LABEL_176;
        }

        v124 = *n128_f64;
        *n128_f64 = *v56;
        *v56 = v124;
        if (v60 < n128_f64[2])
        {
          result = *v56;
          *v56 = *v59;
LABEL_176:
          *v59 = result;
        }
      }

      result.n128_u64[0] = v9->n128_u64[0];
      if (v9->n128_f64[0] >= v59->n128_f64[0])
      {
        return result;
      }

      result = *v59;
      *v59 = *v9;
      *v9 = result;
      result.n128_u64[0] = v59->n128_u64[0];
      if (v59->n128_f64[0] >= v56->n128_f64[0])
      {
        return result;
      }

      result = *v56;
      *v56 = *v59;
      *v59 = result;
LABEL_180:
      result.n128_f64[0] = n128_f64[2];
      if (result.n128_f64[0] < *n128_f64)
      {
        v125 = *n128_f64;
        *n128_f64 = *v56;
        result = v125;
        *v56 = v125;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_2F7F08(n128_f64, n128_f64 + 1, n128_f64 + 4, n128_f64 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v61 = (n128_f64 + 2);
      v63 = n128_f64 == a2 || v61 == a2;
      if (a4)
      {
        if (!v63)
        {
          v64 = 0;
          v65 = n128_f64;
          do
          {
            v66 = v61;
            result.n128_u64[0] = v65[1].n128_u64[0];
            if (result.n128_f64[0] < v65->n128_f64[0])
            {
              v67 = v65[1].n128_u64[1];
              v68 = v64;
              while (1)
              {
                *(n128_f64 + v68 + 16) = *(n128_f64 + v68);
                if (!v68)
                {
                  break;
                }

                v69 = *(n128_f64 + v68 - 16);
                v68 -= 16;
                if (result.n128_f64[0] >= v69)
                {
                  v70 = (n128_f64 + v68 + 16);
                  goto LABEL_126;
                }
              }

              v70 = n128_f64;
LABEL_126:
              *v70 = result.n128_f64[0];
              *(v70 + 1) = v67;
            }

            v61 = v66 + 1;
            v64 += 16;
            v65 = v66;
          }

          while (&v66[1] != a2);
        }
      }

      else if (!v63)
      {
        do
        {
          v97 = v61;
          result.n128_u64[0] = a1[1].n128_u64[0];
          if (result.n128_f64[0] < a1->n128_f64[0])
          {
            v98 = a1[1].n128_u64[1];
            v99 = v61;
            do
            {
              *v99 = v99[-1];
              v100 = v99[-2].n128_f64[0];
              --v99;
            }

            while (result.n128_f64[0] < v100);
            v99->n128_u64[0] = result.n128_u64[0];
            v99->n128_u64[1] = v98;
          }

          ++v61;
          a1 = v97;
        }

        while (&v97[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (n128_f64 != a2)
      {
        v71 = (v13 - 2) >> 1;
        v72 = v71;
        do
        {
          v73 = v72;
          if (v71 >= v72)
          {
            v74 = (2 * v72) | 1;
            v75 = &n128_f64[2 * v74];
            if (2 * v73 + 2 < v13 && *v75 < v75[2])
            {
              v75 += 2;
              v74 = 2 * v73 + 2;
            }

            v76 = &n128_f64[2 * v73];
            v77 = *v76;
            if (*v75 >= *v76)
            {
              v78 = *(v76 + 1);
              do
              {
                v79 = v76;
                v76 = v75;
                *v79 = *v75;
                if (v71 < v74)
                {
                  break;
                }

                v80 = 2 * v74;
                v74 = (2 * v74) | 1;
                v75 = &n128_f64[2 * v74];
                v81 = v80 + 2;
                if (v81 < v13 && *v75 < v75[2])
                {
                  v75 += 2;
                  v74 = v81;
                }
              }

              while (*v75 >= v77);
              *v76 = v77;
              *(v76 + 1) = v78;
            }
          }

          v72 = v73 - 1;
        }

        while (v73);
        do
        {
          v82 = 0;
          v121 = *n128_f64;
          v83 = n128_f64;
          do
          {
            v84 = v83;
            v85 = &v83[v82];
            v83 = v85 + 1;
            v86 = 2 * v82;
            v82 = (2 * v82) | 1;
            v87 = v86 + 2;
            if (v87 < v13)
            {
              v89 = v85[2].n128_f64[0];
              v88 = v85 + 2;
              if (v88[-1].n128_f64[0] < v89)
              {
                v83 = v88;
                v82 = v87;
              }
            }

            *v84 = *v83;
          }

          while (v82 <= ((v13 - 2) >> 1));
          if (v83 == --a2)
          {
            result = v121;
            *v83 = v121;
          }

          else
          {
            *v83 = *a2;
            result = v121;
            *a2 = v121;
            v90 = (v83 - n128_f64 + 16) >> 4;
            v91 = v90 < 2;
            v92 = v90 - 2;
            if (!v91)
            {
              v93 = v92 >> 1;
              v94 = &n128_f64[2 * v93];
              result.n128_u64[0] = v83->n128_u64[0];
              if (v94->n128_f64[0] < v83->n128_f64[0])
              {
                v95 = v83->n128_u64[1];
                do
                {
                  v96 = v83;
                  v83 = v94;
                  *v96 = *v94;
                  if (!v93)
                  {
                    break;
                  }

                  v93 = (v93 - 1) >> 1;
                  v94 = &n128_f64[2 * v93];
                }

                while (v94->n128_f64[0] < result.n128_f64[0]);
                v83->n128_u64[0] = result.n128_u64[0];
                v83->n128_u64[1] = v95;
              }
            }
          }

          v91 = v13-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v14 = &n128_f64[2 * (v13 >> 1)];
    v15 = v14;
    v16 = v9->n128_f64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *n128_f64)
      {
        if (v16 < v17)
        {
          v103 = *v14;
          *v14 = *v9;
          *v9 = v103;
          if (*v14 < *n128_f64)
          {
            v104 = *n128_f64;
            *n128_f64 = *v14;
            *v14 = v104;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v101 = *n128_f64;
          *n128_f64 = *v9;
          goto LABEL_26;
        }

        v107 = *n128_f64;
        *n128_f64 = *v14;
        *v14 = v107;
        if (v9->n128_f64[0] < *v14)
        {
          v101 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v101;
        }
      }

      v19 = (n128_f64 + 2);
      v20 = (v14 - 2);
      v21 = *(v14 - 2);
      v22 = v10->n128_f64[0];
      if (v21 >= n128_f64[2])
      {
        if (v22 < v21)
        {
          v108 = *v20;
          *v20 = *v10;
          *v10 = v108;
          if (v20->n128_f64[0] < v19->n128_f64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_f64[0] < v20->n128_f64[0])
        {
          v110 = *v20;
          *v20 = *v10;
          v23 = v110;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (n128_f64 + 4);
      v28 = v14[2];
      v27 = (v14 + 2);
      v29 = v28;
      v30 = v11->n128_f64[0];
      if (v28 >= n128_f64[4])
      {
        if (v30 < v29)
        {
          v111 = *v27;
          *v27 = *v11;
          *v11 = v111;
          if (v27->n128_f64[0] < v26->n128_f64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_f64[0] < v27->n128_f64[0])
        {
          v112 = *v27;
          *v27 = *v11;
          v31 = v112;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = v27->n128_f64[0];
      if (*v15 >= v20->n128_f64[0])
      {
        if (v35 < v34)
        {
          v114 = *v15;
          *v15 = *v27;
          *v27 = v114;
          if (*v15 < v20->n128_f64[0])
          {
            v115 = *v20;
            *v20 = *v15;
            *v15 = v115;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v113 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v116 = *v20;
        *v20 = *v15;
        *v15 = v116;
        if (v27->n128_f64[0] < *v15)
        {
          v113 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v113;
        }
      }

      v117 = *n128_f64;
      *n128_f64 = *v15;
      *v15 = v117;
      goto LABEL_58;
    }

    v18 = *n128_f64;
    if (*n128_f64 >= *v14)
    {
      if (v16 < v18)
      {
        v105 = *n128_f64;
        *n128_f64 = *v9;
        *v9 = v105;
        if (*n128_f64 < *v14)
        {
          v106 = *v14;
          *v14 = *n128_f64;
          *n128_f64 = v106;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v109 = *v14;
      *v14 = *n128_f64;
      *n128_f64 = v109;
      if (v9->n128_f64[0] >= *n128_f64)
      {
        goto LABEL_58;
      }

      v102 = *n128_f64;
      *n128_f64 = *v9;
    }

    else
    {
      v102 = *v14;
      *v14 = *v9;
    }

    *v9 = v102;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(n128_f64 - 2) < *n128_f64)
    {
      result = *n128_f64;
      v36 = n128_f64;
      do
      {
        v37 = v36;
        v38 = v36[1].n128_f64[0];
        ++v36;
      }

      while (v38 < result.n128_f64[0]);
      v39 = a2;
      if (v37 == n128_f64)
      {
        v39 = a2;
        do
        {
          if (v36 >= v39)
          {
            break;
          }

          v41 = v39[-1].n128_f64[0];
          --v39;
        }

        while (v41 >= result.n128_f64[0]);
      }

      else
      {
        do
        {
          v40 = v39[-1].n128_f64[0];
          --v39;
        }

        while (v40 >= result.n128_f64[0]);
      }

      if (v36 < v39)
      {
        v42 = v36;
        v43 = v39;
        do
        {
          v44 = *v42;
          *v42 = *v43;
          *v43 = v44;
          do
          {
            v37 = v42;
            v45 = v42[1].n128_f64[0];
            ++v42;
          }

          while (v45 < result.n128_f64[0]);
          do
          {
            v46 = v43[-1].n128_f64[0];
            --v43;
          }

          while (v46 >= result.n128_f64[0]);
        }

        while (v42 < v43);
      }

      if (v37 != n128_f64)
      {
        *n128_f64 = *v37;
      }

      *v37 = result;
      if (v36 < v39)
      {
        goto LABEL_79;
      }

      v47 = sub_2F808C(n128_f64, v37, result);
      n128_f64 = v37[1].n128_f64;
      if (sub_2F808C(&v37[1], a2, v48))
      {
        a2 = v37;
        if (!v47)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v47)
      {
LABEL_79:
        result = sub_2F73EC(a1->n128_f64, v37, a3, a4 & 1, result);
        a4 = 0;
        n128_f64 = v37[1].n128_f64;
      }
    }

    else
    {
      result = *n128_f64;
      if (*n128_f64 >= v9->n128_f64[0])
      {
        v50 = (n128_f64 + 2);
        do
        {
          n128_f64 = v50;
          if (v50 >= a2)
          {
            break;
          }

          v50 += 16;
        }

        while (result.n128_f64[0] >= *n128_f64);
      }

      else
      {
        do
        {
          v49 = n128_f64[2];
          n128_f64 += 2;
        }

        while (result.n128_f64[0] >= v49);
      }

      v51 = a2;
      if (n128_f64 < a2)
      {
        v51 = a2;
        do
        {
          v52 = v51[-1].n128_f64[0];
          --v51;
        }

        while (result.n128_f64[0] < v52);
      }

      while (n128_f64 < v51)
      {
        v118 = *n128_f64;
        *n128_f64 = *v51;
        *v51 = v118;
        do
        {
          v53 = n128_f64[2];
          n128_f64 += 2;
        }

        while (result.n128_f64[0] >= v53);
        do
        {
          v54 = v51[-1].n128_f64[0];
          --v51;
        }

        while (result.n128_f64[0] < v54);
      }

      v55 = n128_f64 - 2;
      if (n128_f64 - 2 != a1)
      {
        *a1 = *v55;
      }

      a4 = 0;
      *v55 = result;
    }
  }

  v56 = (n128_f64 + 2);
  result.n128_f64[0] = n128_f64[2];
  v57 = v9->n128_f64[0];
  if (result.n128_f64[0] >= *n128_f64)
  {
    if (v57 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v56;
    *v56 = *v9;
    *v9 = result;
    goto LABEL_180;
  }

  if (v57 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v123 = *n128_f64;
  *n128_f64 = *v56;
  result.n128_u64[1] = v123.n128_u64[1];
  *v56 = v123;
  result.n128_u64[0] = v9->n128_u64[0];
  if (v9->n128_f64[0] < n128_f64[2])
  {
    result = *v56;
    *v56 = *v9;
    goto LABEL_107;
  }

  return result;
}

__n128 sub_2F7F08(__n128 *a1, __n128 *a2, double *a3, _OWORD *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = *a3;
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_f64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_f64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = *a4;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f64[0] = *a3;
      if (*a3 < a2->n128_f64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_2F808C(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = *&v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_f64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      sub_2F7F08(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_f64[0] >= v18->n128_f64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_f64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_f64[0];
    if (v30->n128_f64[0] < v11->n128_f64[0])
    {
      v34 = v30->n128_u64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      *(v37 + 8) = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_2F8408(uint64_t a1)
{
  *a1 = off_6C0E60;
  v2 = (a1 + 56);
  v4 = (a1 + 80);
  sub_140948(&v4);
  v4 = v2;
  sub_140948(&v4);
  return a1;
}

uint64_t sub_2F8470(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  v10 = *(a1 + 8);
  v11 = a2[2];
  v12 = sub_B46B0(v10, a2[1], v11);
  if (*a2 == 1853059700)
  {
    if (!v11)
    {
      if (a5 != 8)
      {
        v34 = sub_5544(14);
        v35 = *v34;
        if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "HP_FormatList.cpp";
          v40 = 1024;
          v41 = 1588;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 561211770;
      }

      v18 = 0;
      v19 = *a6;
LABEL_14:
      while (2)
      {
        v20 = v18;
        if (v18)
        {
          v21 = 35;
        }

        else
        {
          v21 = 38;
        }

        if (v18)
        {
          v22 = 36;
        }

        else
        {
          v22 = 39;
        }

        v23 = v10[v22] - v10[v21];
        if ((v23 & 0x7FFFFFFF8) == 0)
        {
          v18 = 1;
          if ((v20 & 1) == 0)
          {
            continue;
          }

          goto LABEL_38;
        }

        break;
      }

      v24 = 0;
      v25 = (v23 >> 3);
      v37 = v25;
      while (1)
      {
        v26 = *(*(a1 + 8) + v21 * 8);
        if (v24 < (*(*(a1 + 8) + v21 * 8 + 8) - v26) >> 3)
        {
          v27 = *(v26 + 8 * v24);
          if (v27)
          {
            if (sub_D7C0C(*(v27 + 104), v19))
            {
              return sub_2F6D8C(*(v27 + 104), v19);
            }

            v25 = v37;
          }
        }

        if (++v24 >= v25)
        {
          if ((v20 & 1) == 0)
          {
            v10 = *(a1 + 8);
            v18 = 1;
            goto LABEL_14;
          }

LABEL_38:
          v31 = sub_5544(14);
          v32 = *v31;
          if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v39 = "HP_FormatList.cpp";
            v40 = 1024;
            v41 = 1618;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): no stream supports the given sample rate", buf, 0x12u);
          }

          v33 = __cxa_allocate_exception(0x10uLL);
          *v33 = &off_6DDDD0;
          v33[2] = 560226676;
        }
      }
    }

    if (!v12)
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "HP_FormatList.cpp";
          v40 = 1024;
          v41 = 1622;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
        }
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      *v15 = &off_6DDDD0;
      v15[2] = 2003332927;
    }
  }

  else if (!v12)
  {
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "HP_FormatList.cpp";
      v40 = 1024;
      v41 = 1630;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 2003332927;
  }

  v16 = *(*v12 + 80);

  return v16();
}

void sub_2F89A8(uint64_t a1, uint64_t *a2)
{
  a2[1] = *a2;
  v59 = 0uLL;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v4 = *(a1 + 8);
  v5 = v4[36] - v4[35];
  v6 = v5 & 0x7FFFFFFF8;
  v7 = (v5 & 0x7FFFFFFF8) == 0;
  if (*(a1 + 16))
  {
    if (v6)
    {
      v8 = 0;
      v9 = 0;
      v10 = (v5 >> 3);
      v11 = 1;
      do
      {
        v12 = *(*(a1 + 8) + 280);
        if (v8 >= (*(*(a1 + 8) + 288) - v12) >> 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v12 + 8 * v8);
        }

        v57 = v9;
        v14 = sub_D75A8(*(v13 + 104));
        v17 = v9;
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            sub_D7B08(*(v13 + 104), i, &v59);
            if (v11)
            {
              v55 = v59;
              sub_D7724(&v56, &v55, v59, v20);
            }

            else
            {
              sub_2F8D84(v59.n128_u64, a2, &v56, v19);
            }
          }

          v17 = v56;
          v9 = v57;
        }

        sub_D79C4(a2, v17, v9, (v9 - v17) >> 4, v15, v16);
        v11 = 0;
        ++v8;
        v9 = v17;
      }

      while (v8 != v10);
      v4 = *(a1 + 8);
    }

    v21 = v4[39] - v4[38];
    if ((v21 & 0x7FFFFFFF8) == 0)
    {
      v33 = v56;
      if (!v56)
      {
        return;
      }

      goto LABEL_52;
    }

    v22 = 0;
    v23 = (v21 >> 3);
    do
    {
      v24 = *(*(a1 + 8) + 304);
      if (v22 >= (*(*(a1 + 8) + 312) - v24) >> 3)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v24 + 8 * v22);
      }

      v26 = v56;
      v57 = v56;
      v27 = sub_D75A8(*(v25 + 104));
      if (v27)
      {
        for (j = 0; j != v27; ++j)
        {
          sub_D7B08(*(v25 + 104), j, &v59);
          if (v7)
          {
            v55 = v59;
            sub_D7724(&v56, &v55, v59, v32);
          }

          else
          {
            sub_2F8D84(v59.n128_u64, a2, &v56, v31);
          }
        }

        v33 = v56;
        v26 = v57;
      }

      else
      {
        v33 = v26;
      }

      sub_D79C4(a2, v33, v26, (v26 - v33) >> 4, v28, v29);
      v7 = 0;
      ++v22;
    }

    while (v22 != v23);
  }

  else
  {
    if (v6)
    {
      v34 = 0;
      v33 = 0;
      v35 = (v5 >> 3);
      do
      {
        v36 = *(*(a1 + 8) + 280);
        if (v34 >= (*(*(a1 + 8) + 288) - v36) >> 3)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(v36 + 8 * v34);
        }

        v38 = sub_D75A8(*(v37 + 104));
        if (v38)
        {
          for (k = 0; k != v38; ++k)
          {
            v57 = v33;
            sub_D7B08(*(v37 + 104), k, &v59);
            sub_D77F8(&v59, a2, &v56, v40, v41);
            v33 = v56;
            sub_D79C4(a2, v56, v57, (v57 - v56) >> 4, v42, v43);
          }
        }

        ++v34;
      }

      while (v34 != v35);
      v4 = *(a1 + 8);
    }

    else
    {
      v33 = 0;
    }

    v44 = v4[39] - v4[38];
    if ((v44 & 0x7FFFFFFF8) != 0)
    {
      v45 = 0;
      v46 = (v44 >> 3);
      do
      {
        v47 = *(*(a1 + 8) + 304);
        if (v45 >= (*(*(a1 + 8) + 312) - v47) >> 3)
        {
          v48 = 0;
        }

        else
        {
          v48 = *(v47 + 8 * v45);
        }

        v49 = sub_D75A8(*(v48 + 104));
        if (v49)
        {
          for (m = 0; m != v49; ++m)
          {
            v57 = v33;
            sub_D7B08(*(v48 + 104), m, &v59);
            sub_D77F8(&v59, a2, &v56, v51, v52);
            v33 = v56;
            sub_D79C4(a2, v56, v57, (v57 - v56) >> 4, v53, v54);
          }
        }

        ++v45;
      }

      while (v45 != v46);
    }
  }

  if (!v33)
  {
    return;
  }

LABEL_52:

  operator delete(v33);
}

void sub_2F8D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F8D84(unint64_t *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      a4.n128_u64[0] = a1[1];
      v9.n128_u64[0] = *v5;
      if (a4.n128_f64[0] >= *v5)
      {
        v10 = *(v5 + 8);
        if (*a1 <= v10)
        {
          if (*a1 >= v9.n128_f64[0])
          {
            v9.n128_u64[0] = *a1;
          }

          if (v10 < a4.n128_f64[0])
          {
            a4.n128_u64[0] = *(v5 + 8);
          }

          v9.n128_u64[1] = a4.n128_u64[0];
          v11 = v9;
          sub_D7724(a3, &v11, a4, v9);
          v4 = a2[1];
        }
      }

      v5 += 16;
    }

    while (v5 != v4);
  }
}

uint64_t sub_2F8E1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = *a2;
  v9 = a2 + 4;
  v8 = *(a2 + 1);
  v22 = *(v9 + 1);
  v10 = sub_B46B0(*(a1 + 8), v8, v22);
  if (*a2 == 1853059700)
  {
    return 8;
  }

  if (*a2 != 1853059619)
  {
    if (!v10)
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_FormatList.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1507;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003332927;
    }

    HIDWORD(v21) = 1735159650;
    v11 = v22;
    if (v22)
    {
      v11 = v22 - v10[23] + 1;
    }

    goto LABEL_7;
  }

  if (v22)
  {
    if (!v10)
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_FormatList.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1499;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = &off_6DDDD0;
      v20[2] = 2003332927;
    }

    HIDWORD(v21) = 1735159650;
    v11 = v22 - v10[23] + 1;
LABEL_7:
    v22 = v11;
    return (*(*v10 + 64))(v10, &v21, a3, a4);
  }

  memset(buf, 0, sizeof(buf));
  sub_2F89A8(a1, buf);
  v13 = *buf;
  v14 = *&buf[8];
  if (*buf)
  {
    operator delete(*buf);
  }

  return (v14 - v13) & 0xFFFFFFF0;
}

void sub_2F9134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2F9154(uint64_t a1, uint64_t *a2)
{
  v11 = *a2;
  v4 = a2 + 4;
  v3 = *(a2 + 1);
  v12 = *(v4 + 1);
  v5 = sub_B46B0(*(a1 + 8), v3, v12);
  if (*a2 == 1853059700)
  {
    return 1;
  }

  if (*a2 == 1853059619)
  {
    return 0;
  }

  if (!v5)
  {
    v8 = *sub_5544(14);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "HP_FormatList.cpp";
        v15 = 1024;
        v16 = 1468;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  HIDWORD(v11) = 1735159650;
  v7 = v12;
  if (v12)
  {
    v7 = v12 - v5[23] + 1;
  }

  v12 = v7;
  return (*(*v5 + 56))(v5, &v11);
}

void sub_2F9300(uint64_t a1, char *__src, _OWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      sub_189A00();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    if (v14)
    {
      sub_1E6364(v14);
    }

    v16 = (16 * v15);
    v17 = 16 * v15;
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 >> 3;
        }

        sub_1E6364(v18);
      }

      v16 = (v16 - (((v12 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v17 = v16;
    }

    *v16 = *a3;
    v19 = v17 + 16;
    memcpy((v17 + 16), __src, *(a1 + 8) - __src);
    v20 = *a1;
    v24 = (v19 + *(a1 + 8) - __src);
    *(a1 + 8) = __src;
    v21 = (__src - v20);
    v22 = v16 - (__src - v20);
    memcpy(v22, v20, v21);
    v23 = *a1;
    *a1 = v22;
    *(a1 + 8) = v24;
    if (v23)
    {

      operator delete(v23);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 16;
  }

  else
  {
    v8 = __src + 16;
    if (v6 < 0x10)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 16;
      *v6 = *(v6 - 1);
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 16, __src, v6 - v8);
    }

    *__src = *a3;
  }
}

void sub_2F951C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F9534(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2F957C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(*a2 + 24);
  sub_25704(&v28, (v6 + 32), "", 55);
  v7 = v28;
  v8 = *(v28 + 200);
  if (v8)
  {
    v9 = *(v28 + 144);
    v10 = *(v28 + 192);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v11 = std::__shared_weak_count::lock(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v11)
    {
      if (v10)
      {
        sub_2FBAF8(v10, 1, *(a2 + 12), *(a2 + 184), *(v6 + 72), a3);
        (*(*v10 + 248))(&v26, v10, 1, v9);
        (*(*v10 + 256))(&v25, v10, 1, v9);
        if (v27 && v27->__shared_owners_ != -1)
        {
          v12 = (*(*v10 + 240))(v10, v9);
          v23 = 0x6F7574706D757465;
          v24 = v12;
          if ((*(*v10 + 16))(v10, &v23))
          {
            buf = 0;
            (*(*v10 + 48))(v10, &v23, 0, 0, 4, &buf);
          }

          v38[0] = v7;
          v38[1] = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(v29 + 2, 1uLL, memory_order_relaxed);
          }

          sub_CF934(v40, v38, 1);
          operator new();
        }

        v13 = sub_5544(14);
        v14 = *v13;
        if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          buf = 136315394;
          buf_4 = "RoutingHandler_Playback_Unk.cpp";
          v32 = 1024;
          v33 = 70;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate mute control.", &buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unable to locate mute control.");
      }
    }
  }

  v16 = sub_5544(14);
  v17 = *v16;
  if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    (*(*v7 + 144))(v40, v7);
    v18 = SHIBYTE(v41);
    v19 = *v40;
    sub_22170(v38, v7[36]);
    v20 = v40;
    if (v18 < 0)
    {
      v20 = v19;
    }

    if (v39 >= 0)
    {
      v21 = v38;
    }

    else
    {
      v21 = v38[0];
    }

    buf = 136315906;
    buf_4 = "RoutingHandler_Playback_Unk.cpp";
    v32 = 1024;
    v33 = 63;
    v34 = 2080;
    v35 = v20;
    v36 = 2080;
    v37 = v21;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [ioDevice.get() is NULL]: could not get device for port \\%s\\ (type: '%s').", &buf, 0x26u);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(*v40);
    }
  }

  v22 = __cxa_allocate_exception(0x10uLL);
  *v22 = &off_6DDDD0;
  v22[2] = 2003329396;
}

void sub_2F9E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, char a37)
{
  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (v37)
  {
    sub_1A8C0(v37);
  }

  if (a35)
  {
    sub_1A8C0(a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FA158(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_2FA17C(uint64_t a1, uint64_t a2)
{
  if ((sub_5BA08(a2) & 1) != 0 && (v7 = sub_59580(a2)) != 0 && (v6 = 0, !sub_5C060(a2)))
  {
    v5 = v6;
    sub_6A9B8(&v4, &v5);
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_2FA254(uint64_t a1, float *a2, float *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v22 = *(a4 + 16);
      v7 = v22;
      *__p = *a4;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      v8 = *v6;
      v9 = HIBYTE(v7);
      v10 = v9;
      if (v9 >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = __p[1];
      }

      sub_B0848(&v24, (v11 + 2));
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v24;
      }

      else
      {
        v12 = v24.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        if (v10 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        memmove(v12, v13, v11);
      }

      strcpy(&v11[v12], ", ");
      std::to_string(&v23, v8);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v23;
      }

      else
      {
        v14 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v24, v14, size);
      v17 = v16->__r_.__value_.__r.__words[0];
      v25[0] = v16->__r_.__value_.__l.__size_;
      *(v25 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
      v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v19 = v25[0];
      *a4 = v17;
      *(a4 + 8) = v19;
      *(a4 + 15) = *(v25 + 7);
      *(a4 + 23) = v18;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  *a1 = *a4;
  *(a1 + 16) = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
}

void sub_2FA428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FA470(uint64_t a1)
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

uint64_t sub_2FA4B0(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a1 = off_6C0F48;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 1937204590;
  *(a1 + 28) = a3;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  v7 = a2[1];
  if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0 || (v9 = *a2, sub_1A8C0(v8), !v9))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "RoutingHandlerAction_BluetoothSoftwareVolume.h";
      v16 = 1024;
      v17 = 28;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return a1;
}

void sub_2FA624(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2FA650(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(20);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(v29, a1);
    v6 = v30;
    v7 = v29[0];
    sub_22170(__p, a2);
    v8 = v29;
    if (v6 < 0)
    {
      v8 = v7;
    }

    if (v28 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
    v32 = 1024;
    v33 = 77;
    v34 = 2080;
    v35 = v8;
    v36 = 2080;
    v37 = *&v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CheckCodecInputGainDefaultForCall input port: %s output port: %s", buf, 0x26u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (a1 == 1886216809 && a2 == 1886545251)
  {
    v10 = &byte_6E83C0;
    if (byte_6E83C8)
    {
      goto LABEL_54;
    }

    byte_6E83C8 = 1;
    *buf = 0;
    v11 = sub_286A88(@"HandsetUplinkGain", buf);
    v12 = *buf;
    if (!v11)
    {
      v12 = 0.0;
    }

    byte_6E83C0 = v11;
    dword_6E83C4 = LODWORD(v12);
    if (!v11)
    {
      goto LABEL_54;
    }

    v13 = *sub_5544(14);
    v14 = v13;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 719;
      v34 = 2080;
      v35 = "HandsetUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83C4;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

LABEL_53:

LABEL_54:
    v21 = *v10;
    v22 = *(v10 + 1) << 32;
    return v22 | v21;
  }

  if (a1 == 1886216809 && a2 == 1886613611 || a1 == 1886216809 && a2 == 1885892727)
  {
    v10 = &byte_6E83CC;
    if (byte_6E83D4)
    {
      goto LABEL_54;
    }

    byte_6E83D4 = 1;
    *buf = 0;
    v15 = sub_286A88(@"SpeakerphoneUplinkGain", buf);
    v16 = *buf;
    if (!v15)
    {
      v16 = 0.0;
    }

    byte_6E83CC = v15;
    dword_6E83D0 = LODWORD(v16);
    if (!v15)
    {
      goto LABEL_54;
    }

    v17 = *sub_5544(14);
    v14 = v17;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 735;
      v34 = 2080;
      v35 = "SpeakerphoneUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83D0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

    goto LABEL_53;
  }

  if (a1 == 1886222185 && a2 == 1885892727)
  {
    v10 = &byte_6E83D8;
    if (byte_6E83E0)
    {
      goto LABEL_54;
    }

    byte_6E83E0 = 1;
    *buf = 0;
    v18 = sub_286A88(@"HeadsetUplinkGain", buf);
    v19 = *buf;
    if (!v18)
    {
      v19 = 0.0;
    }

    byte_6E83D8 = v18;
    dword_6E83DC = LODWORD(v19);
    if (!v18)
    {
      goto LABEL_54;
    }

    v20 = *sub_5544(14);
    v14 = v20;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 751;
      v34 = 2080;
      v35 = "HeadsetUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83DC;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

    goto LABEL_53;
  }

  v21 = 0;
  v22 = 0x4479C00000000000;
  if (a1 == 1886680169 && a2 == 1886680175)
  {
    v10 = &byte_6E83E4;
    if (byte_6E83EC)
    {
      goto LABEL_54;
    }

    byte_6E83EC = 1;
    *buf = 0;
    v23 = sub_286A88(@"TTYUplinkGain", buf);
    v24 = *buf;
    if (!v23)
    {
      v24 = 0.0;
    }

    byte_6E83E4 = v23;
    dword_6E83E8 = LODWORD(v24);
    if (!v23)
    {
      goto LABEL_54;
    }

    v25 = *sub_5544(14);
    v14 = v25;
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 767;
      v34 = 2080;
      v35 = "TTYUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83E8;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

    goto LABEL_53;
  }

  return v22 | v21;
}

void sub_2FAC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FAC4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_3FC1B4(a3 + 8, a2);
  if (v5 & 0x100) != 0 && (v5)
  {
    (*(*a1 + 144))(&v13, a1);
    v6 = v13;
    for (i = v14; v6 != i; v6 += 16)
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v12[0] = *v6;
      v12[1] = &v8->__vftable;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v10 = std::__shared_weak_count::lock(v8);
        if (v10)
        {
          v11 = v10;
          if (v9)
          {
            if ((*(*v9 + 19))(v9))
            {
              operator new();
            }
          }

          sub_1A8C0(v11);
        }

        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v12[0] = &v13;
    sub_202B60(v12);
  }
}

void sub_2FAE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char a16)
{
  if (v18)
  {
    sub_1A8C0(v18);
  }

  sub_1A8C0(v17);
  std::__shared_weak_count::__release_weak(v16);
  a14 = &a16;
  sub_202B60(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_2FAEE0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 1;
  if (a4 != 1633759844 && a4 != 1634231920 && a4 != 1635085420)
  {
    sub_3FBFD8(&v8, a1 + 8, a2);
    if (v10 == 1)
    {
      if (v8 != v9)
      {
        v6 = v8;
        while (*v6 != a3)
        {
          if (++v6 == v9)
          {
            v6 = v9;
            break;
          }
        }

        v4 = v6 == v9;
      }

      if (v8)
      {
        v9 = v8;
        operator delete(v8);
      }
    }
  }

  return v4;
}

BOOL sub_2FAFA0(uint64_t a1)
{
  result = 1;
  if (a1 > 1919776354)
  {
    if (a1 > 1987077986)
    {
      if (a1 > 1987208038)
      {
        if (a1 > 1987212136)
        {
          if (a1 == 2003133027)
          {
            return 0;
          }

          v6 = 29545;
        }

        else
        {
          if (a1 == 1987208039)
          {
            return 0;
          }

          v6 = 28525;
        }

        v3 = v6 | 0x76720000;
        goto LABEL_49;
      }

      if (a1 > 1987081832)
      {
        if (a1 == 1987081833)
        {
          return 0;
        }

        v4 = 30319;
      }

      else
      {
        if (a1 == 1987077987)
        {
          return 0;
        }

        v4 = 29293;
      }

      v3 = v4 | 0x76700000;
      goto LABEL_49;
    }

    if (a1 <= 1937007471)
    {
      if (a1 == 1919776355)
      {
        return 0;
      }

      if (a1 == 1936745328)
      {
        return result;
      }

      v3 = 1936747374;
    }

    else
    {
      if (a1 > 1986556787)
      {
        if (a1 != 1986556788)
        {
          v3 = 1986884455;
          goto LABEL_49;
        }

        return 0;
      }

      if (a1 == 1937007472)
      {
        return result;
      }

      v3 = 1986098036;
    }
  }

  else if (a1 <= 1768778863)
  {
    if (a1 > 1735222131)
    {
      if (a1 > 1768057202)
      {
        if (a1 != 1768057203)
        {
          v7 = 25702;
LABEL_38:
          v5 = v7 | 0x696D0000;
          goto LABEL_44;
        }
      }

      else if (a1 != 1735222132)
      {
        v5 = 1751212899;
        goto LABEL_44;
      }

      return 0;
    }

    if (a1 == 1701013792 || a1 == 1701013869)
    {
      return 0;
    }

    v3 = 1701017120;
  }

  else
  {
    if (a1 <= 1835229548)
    {
      if (a1 <= 1768781410)
      {
        if (a1 == 1768778864)
        {
          return result;
        }

        v3 = 1768779619;
        goto LABEL_49;
      }

      if (a1 != 1768781411)
      {
        v7 = 30322;
        goto LABEL_38;
      }

      return 0;
    }

    if (a1 > 1836281203)
    {
      if (a1 == 1836281204)
      {
        return result;
      }

      v5 = 1918990112;
LABEL_44:
      if (a1 == v5)
      {
        return result;
      }

      goto LABEL_52;
    }

    if (a1 == 1835229549)
    {
      return result;
    }

    v3 = 1836021360;
  }

LABEL_49:
  if (a1 == v3)
  {
    return 0;
  }

LABEL_52:
  v8 = sub_5544(14);
  v9 = *v8;
  if (!*v8)
  {
    return 0;
  }

  result = os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_22170(__p, a1);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315650;
    v14 = "RoutingHandlerUtilities_Aspen.cpp";
    v15 = 1024;
    v16 = 1074;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unhandled mode '%s' in switch statement", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2FB328(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_C4A80(a1, a2, a3, a4, a5, 1);
  if (*a1 == a1[1])
  {
    v6 = sub_5544(21);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "RoutingHandlerUtilities_Aspen.cpp";
        v10 = 1024;
        v11 = 1091;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to locate a set of sub-ports.", &v8, 0x12u);
      }
    }
  }
}

void sub_2FB400(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FB41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a6;
  if (*(a2 + 144) != 1886216809 || *(a2 + 96) == *(a2 + 104))
  {
    v20 = 0;
  }

  else
  {
    sub_2883D8(buf);
    v14 = *buf;
    v15 = *&buf[8];
    if (*buf)
    {
      operator delete(*buf);
    }

    if (v14 != v15)
    {
      v16 = sub_4DE428(a2);
      v17 = sub_5544(21);
      if (*(v17 + 8))
      {
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&__p, v16);
            v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 284;
            *&buf[18] = 2080;
            *&buf[20] = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using system defaults override: %s.", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

LABEL_42:
      *buf = v16;
      sub_1E54B0(a1, buf, 1);
      goto LABEL_54;
    }

    v20 = 1;
  }

  sub_8BD14(&__p, *(a2 + 80), *(a2 + 88));
  size = __p.__r_.__value_.__l.__size_;
  *buf = *&__p.__r_.__value_.__l.__data_;
  if (__p.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
    v22 = sub_C4FD4(a3, buf);
    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v22 = sub_C4FD4(a3, buf);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_1A8C0(__p.__r_.__value_.__l.__size_);
  }

  if (a3 + 8 != v22 && *(v22 + 48) != *(v22 + 56))
  {
    v23 = sub_5544(21);
    if (*(v23 + 8))
    {
      v24 = *v23;
      if (*v23)
      {
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          sub_10898C(&__p, *(v22 + 48), *(v22 + 56));
          v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 298;
          *&buf[18] = 2080;
          *&buf[20] = v25;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using client-specified sub-ports: %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_46980(a1, *(v22 + 48), *(v22 + 56), (*(v22 + 56) - *(v22 + 48)) >> 2);
    goto LABEL_54;
  }

  if (v20)
  {
    if (sub_3FC368(a4, v8))
    {
      v26 = sub_8703C();
      if ((*(*v26 + 192))(v26) <= 1)
      {
        v16 = sub_4DE7FC(a2);
        v27 = sub_5544(21);
        v28 = *v27;
        if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&__p, v16);
          v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = v29;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resolved sub-port set inquiry using internal sub-port override: %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_42;
      }
    }
  }

  *buf = a7;
  *&buf[4] = v8;
  *&buf[8] = *sub_C53D8();
  *&buf[24] = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  sub_C5058(&__p, a5, buf);
  v30 = *&__p.__r_.__value_.__l.__data_;
  if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (!v30)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v31 = sub_5544(21);
  if (*(v31 + 8))
  {
    v32 = *v31;
    if (*v31)
    {
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        sub_10898C(&v43, v30, *(&v30 + 1));
        v33 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v43 : v43.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 332;
        *&buf[18] = 2080;
        *&buf[20] = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using the connection's ModeMap: %s.", buf, 0x1Cu);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_46980(a1, v30, *(&v30 + 1), (*(&v30 + 1) - v30) >> 2);
  if (v30)
  {
LABEL_53:
    operator delete(v30);
  }

LABEL_54:
  if (*a1 == *(a1 + 8))
  {
    v34 = *(a2 + 200);
    if (v34)
    {
      v35 = *(a2 + 192);
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v36 = std::__shared_weak_count::lock(v34);
      std::__shared_weak_count::__release_weak(v34);
      if (v36)
      {
        if (v35)
        {
          (*(*v35 + 280))(buf, v35, *(a2 + 144));
          v37 = *a1;
          if (*a1)
          {
            *(a1 + 8) = v37;
            operator delete(v37);
          }

          v38 = *buf;
          *a1 = *buf;
          v39 = *&buf[8];
          *(a1 + 8) = *&buf[8];
          if (v38 != v39)
          {
            v40 = sub_5544(21);
            if (*(v40 + 8))
            {
              v41 = *v40;
              if (*v40)
              {
                if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
                {
                  sub_24C060(&__p, *a1, *(a1 + 8));
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315650;
                  *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1139;
                  *&buf[18] = 2080;
                  *&buf[20] = p_p;
                  _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using the device's default sub-port lookup mechanism: %s.", buf, 0x1Cu);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }
            }
          }
        }

        sub_1A8C0(v36);
      }
    }
  }
}

void sub_2FBAA8(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_2FBAF8(void *result, int a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  if ((a4 & 1) == 0)
  {
    v8 = result;
    *buf = a2;
    *&buf[4] = a3;
    v20 = *sub_C53D8();
    LODWORD(v21) = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    result = sub_C8588(a5, buf);
    if (v9)
    {
      if (result)
      {
        v10 = *result;
        v11 = result[1];
        if (*result != v11)
        {
          do
          {
            if (((*(*v8 + 16))(v8, v10) & 1) == 0)
            {
              v12 = sub_5544(20);
              if (*v12)
              {
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*v8 + 128))(v18, v8);
                  sub_22CE0(__p, v10);
                }
              }
            }

            if (*(v10 + 80) != 1 || (v13 = *(v10 + 72), v14 = (*(*v8 + 120))(v8), result = (**v13)(v13, v14), result))
            {
              __p[0] = *(v10 + 64);
              v16 = *(v10 + 65);
              *buf = v8;
              *&v20 = v10;
              *(&v20 + 1) = __p;
              v21 = &v16;
              v22 = a6;
              v23 = v8;
              v24 = v10;
              v25 = __p;
              v26 = &v16;
              v27 = a6;
              v28 = v8;
              v29 = v10;
              v30 = __p;
              v31 = &v16;
              v32 = a6;
              v33 = v10;
              v15 = *(v10 + 56);
              if (v15 == -1)
              {
                sub_20B4EC();
              }

              v18[0] = buf;
              result = (off_6C0F70[v15])(v18, v10 + 16);
            }

            v10 += 88;
          }

          while (v10 != v11);
        }
      }
    }
  }

  return result;
}

void sub_2FBDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FBE08(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FBF34(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC060(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC18C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC2B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC3E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC510(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

uint64_t sub_2FC63C(uint64_t *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v23 = *a2;
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = **(v2 + 96);
  v7 = **(v2 + 104);
  v8 = sub_5544(20);
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_22CE0(v26, &v5->mSelector);
  }

  outData = 0.0;
  ioDataSize = 8;
  v9 = (*(*v4 + 120))(v4);
  result = AudioObjectGetPropertyData(v9, v5, 0, 0, &ioDataSize, &outData);
  v11 = result;
  if (result)
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v11;
  }

  if (ioDataSize != 8)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v22, "Property %s for device %s failed returned size %u (expected %lu).");
  }

  if (outData != v3)
  {
    v12 = sub_5544(20);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    if (v6)
    {
      operator new();
    }

    v13 = *v4;
    if (v7)
    {
      v14 = (*(v13 + 120))(v4);
      result = sub_2FCD9C(v14, v5, &v23);
      v15 = result;
      if (result)
      {
        v16 = sub_5544(14);
        v17 = *v16;
        if (*v16)
        {
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315394;
            *&buf[1] = "RoutingHandlerUtilities_Aspen.cpp";
            v28 = 1024;
            v29 = 368;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
          }
        }

        v18 = __cxa_allocate_exception(0x10uLL);
        *v18 = &off_6DDDD0;
        v18[2] = v15;
      }
    }

    else
    {
      return (*(v13 + 48))(v4, v5, 0, 0, 8, &v23);
    }
  }

  return result;
}

void sub_2FCD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FCD9C(AudioObjectID a1, uint64_t a2, double *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v52.__cv_.__sig = *a2;
    *v52.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v53, &v52);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v53.__m_.__opaque, 0, sizeof(v53.__m_.__opaque));
    v53.__m_.__sig = 850045863;
    memset(v52.__cv_.__opaque, 0, sizeof(v52.__cv_.__opaque));
    v52.__cv_.__sig = 1018212795;
    v44 = 0;
    sub_745E8(v43, a1, a2, &v52, &v53, &v44);
    v38 = a1;
    v39 = *a2;
    v40 = *(a2 + 8);
    v41 = 0;
    v42 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v13 = sub_5544(14);
      v10 = 1852797029;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v35 = *a2;
        v36 = *(a2 + 8);
        sub_22CE0(__p, &v35);
      }

      goto LABEL_67;
    }

    v7 = COERCE_DOUBLE(sub_2FD8D8(&v38));
    if (!v8 && *a3 == v7)
    {
      v14 = sub_5544(14);
      if ((*(v14 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v15 = *v14;
      if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v46 = 1024;
      v47 = 294;
      v48 = 1024;
      LODWORD(v49) = a1;
      goto LABEL_61;
    }

    v9 = sub_5544(14);
    if ((*(v9 + 8) & 1) != 0 && *v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v35 = *a2;
      v36 = *(a2 + 8);
      sub_22CE0(__p, &v35);
    }

    buf = *a2;
    v10 = AudioObjectSetPropertyData(a1, &buf, 0, 0, 8u, a3);
    if (v10)
    {
      v11 = sub_5544(14);
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v10);
        v33 = *a2;
        v34 = *(a2 + 8);
        sub_22CE0(&v35, &v33);
      }

      goto LABEL_67;
    }

    v16 = COERCE_DOUBLE(sub_2FD8D8(&v38));
    if (!v17 && *a3 == v16)
    {
      v29 = sub_5544(14);
      if ((*(v29 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v15 = *v29;
      if (!*v29 || !os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v46 = 1024;
      v47 = 322;
      v48 = 1024;
      LODWORD(v49) = a1;
LABEL_61:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v10 = 0;
LABEL_67:
      sub_73C20(v43);
      std::condition_variable::~condition_variable(&v52);
      std::mutex::~mutex(&v53);
      return v10;
    }

    v18 = 2000;
LABEL_29:
    v19 = COERCE_DOUBLE(sub_2FD8D8(&v38));
    v10 = v20;
    if (v20)
    {
      goto LABEL_67;
    }

    if (*a3 == v19)
    {
      v30 = sub_5544(14);
      if ((*(v30 + 8) & 1) != 0 && *v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
      {
        v35 = *a2;
        v36 = *(a2 + 8);
        sub_22CE0(__p, &v35);
      }

      goto LABEL_66;
    }

    if (v18 <= 0)
    {
      v32 = sub_5544(14);
      v10 = 2003329396;
      if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
      {
        v35 = *a2;
        v36 = *(a2 + 8);
        sub_22CE0(__p, &v35);
      }

      goto LABEL_67;
    }

    v21.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v22 = sub_5544(14);
    if (*(v22 + 8))
    {
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v46 = 1024;
          v47 = 354;
          v48 = 2080;
          v49 = "with timeout";
          v50 = 1024;
          v51 = a1;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v53;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v53);
    v24.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v44 & 1) != 0 || v24.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_53:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v18 += (std::chrono::system_clock::now().__d_.__rep_ - v21.__d_.__rep_) / -1000;
        goto LABEL_29;
      }

      v25.__d_.__rep_ = v24.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v25.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_52:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v24.__d_.__rep_)
      {
        goto LABEL_53;
      }
    }

    std::chrono::steady_clock::now();
    v26.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v26.__d_.__rep_)
    {
      v27 = 0;
      goto LABEL_50;
    }

    if (v26.__d_.__rep_ < 1)
    {
      if (v26.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v27 = 0x8000000000000000;
        goto LABEL_50;
      }
    }

    else if (v26.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_48;
    }

    v27 = 1000 * v26.__d_.__rep_;
LABEL_48:
    if (v27 > (v25.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v28.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_51:
      std::condition_variable::__do_timed_wait(&v52, &buf, v28);
      std::chrono::steady_clock::now();
      goto LABEL_52;
    }

LABEL_50:
    v28.__d_.__rep_ = v27 + v25.__d_.__rep_;
    goto LABEL_51;
  }

  v12 = sub_5544(14);
  v10 = 2003332927;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    v52.__cv_.__sig = *a2;
    *v52.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v53, &v52);
  }

  return v10;
}

void sub_2FD82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::condition_variable *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_73C20(&a23);
  std::condition_variable::~condition_variable(&a38);
  std::mutex::~mutex((v38 - 184));
  _Unwind_Resume(a1);
}

uint64_t sub_2FD8D8(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  sub_1FE35C(&v10, a1, &buf, v2, *(a1 + 24));
  v3 = v10;
  if (v10)
  {
    v4 = sub_5544(14);
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v9, v3);
        v6 = *v1;
        v7 = *(v1 + 2);
        sub_22CE0(&__p, &v6);
      }
    }
  }

  if (v12)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void sub_2FDA84(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FDAA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FCD9C(v4, a1 + 16, (a1 + 40));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 109;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FDC5C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FCD9C(v4, a1 + 16, (a1 + 32));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 95;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FDE2C(uint64_t *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v23 = *a2;
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = **(v2 + 56);
  v7 = **(v2 + 64);
  v8 = sub_5544(20);
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_22CE0(v26, &v5->mSelector);
  }

  ioDataSize = 4;
  outData = 0.0;
  v9 = (*(*v4 + 120))(v4);
  result = AudioObjectGetPropertyData(v9, v5, 0, 0, &ioDataSize, &outData);
  v11 = result;
  if (result)
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v11;
  }

  if (ioDataSize != 4)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v22, "Property %s for device %s failed returned size %u (expected %lu).");
  }

  if (outData != v3)
  {
    v12 = sub_5544(20);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    if (v6)
    {
      operator new();
    }

    v13 = *v4;
    if (v7)
    {
      v14 = (*(v13 + 120))(v4);
      result = sub_2FE588(v14, v5, &v23);
      v15 = result;
      if (result)
      {
        v16 = sub_5544(14);
        v17 = *v16;
        if (*v16)
        {
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315394;
            *&buf[1] = "RoutingHandlerUtilities_Aspen.cpp";
            v28 = 1024;
            v29 = 368;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
          }
        }

        v18 = __cxa_allocate_exception(0x10uLL);
        *v18 = &off_6DDDD0;
        v18[2] = v15;
      }
    }

    else
    {
      return (*(v13 + 48))(v4, v5, 0, 0, 4, &v23);
    }
  }

  return result;
}

void sub_2FE514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FE588(AudioObjectID a1, uint64_t a2, float *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50, &v49);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v50.__m_.__opaque, 0, sizeof(v50.__m_.__opaque));
    v50.__m_.__sig = 850045863;
    memset(v49.__cv_.__opaque, 0, sizeof(v49.__cv_.__opaque));
    v49.__cv_.__sig = 1018212795;
    v41 = 0;
    sub_745E8(v40, a1, a2, &v49, &v50, &v41);
    v35 = a1;
    v36 = *a2;
    v37 = *(a2 + 8);
    v38 = 0;
    v39 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v12 = sub_5544(14);
      v11 = 1852797029;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p, &v32);
      }

      goto LABEL_67;
    }

    v7 = sub_2FF0CC(&v35);
    if (!HIDWORD(v7) && *a3 == *&v7)
    {
      v8 = sub_5544(14);
      if ((*(v8 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v8;
      if (!*v8 || !os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 294;
      v45 = 1024;
      LODWORD(v46) = a1;
LABEL_33:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v11 = 0;
LABEL_67:
      sub_73C20(v40);
      std::condition_variable::~condition_variable(&v49);
      std::mutex::~mutex(&v50);
      return v11;
    }

    v13 = sub_5544(14);
    if ((*(v13 + 8) & 1) != 0 && *v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      v32 = *a2;
      v33 = *(a2 + 8);
      sub_22CE0(__p, &v32);
    }

    buf = *a2;
    v11 = AudioObjectSetPropertyData(a1, &buf, 0, 0, 4u, a3);
    if (v11)
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v11);
        v30 = *a2;
        v31 = *(a2 + 8);
        sub_22CE0(&v32, &v30);
      }

      goto LABEL_67;
    }

    v15 = sub_2FF0CC(&v35);
    if (!HIDWORD(v15) && *a3 == *&v15)
    {
      v16 = sub_5544(14);
      if ((*(v16 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v16;
      if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 322;
      v45 = 1024;
      LODWORD(v46) = a1;
      goto LABEL_33;
    }

    v17 = 2000;
LABEL_35:
    v18 = sub_2FF0CC(&v35);
    v11 = HIDWORD(v18);
    if (HIDWORD(v18))
    {
      goto LABEL_67;
    }

    if (*a3 == *&v18)
    {
      v27 = sub_5544(14);
      if ((*(v27 + 8) & 1) != 0 && *v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p, &v32);
      }

      goto LABEL_66;
    }

    if (v17 <= 0)
    {
      v29 = sub_5544(14);
      v11 = 2003329396;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p, &v32);
      }

      goto LABEL_67;
    }

    v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v20 = sub_5544(14);
    if (*(v20 + 8))
    {
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v43 = 1024;
          v44 = 354;
          v45 = 2080;
          v46 = "with timeout";
          v47 = 1024;
          v48 = a1;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v50;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v50);
    v22.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v41 & 1) != 0 || v22.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_59:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v17 += (std::chrono::system_clock::now().__d_.__rep_ - v19.__d_.__rep_) / -1000;
        goto LABEL_35;
      }

      v23.__d_.__rep_ = v22.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v23.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_58:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v22.__d_.__rep_)
      {
        goto LABEL_59;
      }
    }

    std::chrono::steady_clock::now();
    v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v24.__d_.__rep_)
    {
      v25 = 0;
      goto LABEL_56;
    }

    if (v24.__d_.__rep_ < 1)
    {
      if (v24.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v25 = 0x8000000000000000;
        goto LABEL_56;
      }
    }

    else if (v24.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v25 = 1000 * v24.__d_.__rep_;
LABEL_54:
    if (v25 > (v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v26.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_57:
      std::condition_variable::__do_timed_wait(&v49, &buf, v26);
      std::chrono::steady_clock::now();
      goto LABEL_58;
    }

LABEL_56:
    v26.__d_.__rep_ = v25 + v23.__d_.__rep_;
    goto LABEL_57;
  }

  v10 = sub_5544(14);
  v11 = 2003332927;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50, &v49);
  }

  return v11;
}

void sub_2FF020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::condition_variable *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_73C20(&a23);
  std::condition_variable::~condition_variable(&a38);
  std::mutex::~mutex((v38 - 184));
  _Unwind_Resume(a1);
}

unint64_t sub_2FF0CC(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_2CAA28(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p, &v9);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_2FF278(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FF298(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FE588(v4, a1 + 16, (a1 + 32));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 109;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FF450(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FE588(v4, a1 + 16, (a1 + 28));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 95;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FF620(uint64_t ***a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v23 = *a2;
  v4 = *v2;
  v5 = v2[1];
  v6 = *v2[2];
  v7 = *v2[3];
  v8 = sub_5544(20);
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_22CE0(v26, &v5->mSelector);
  }

  ioDataSize = 4;
  outData = 0;
  v9 = (*(*v4 + 120))(v4);
  result = AudioObjectGetPropertyData(v9, v5, 0, 0, &ioDataSize, &outData);
  v11 = result;
  if (result)
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v11;
  }

  if (ioDataSize != 4)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v22, "Property %s for device %s failed returned size %u (expected %lu).");
  }

  if (outData != v3)
  {
    v12 = sub_5544(20);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_22CE0(v26, &v5->mSelector);
    }

    if (v6)
    {
      operator new();
    }

    v13 = *v4;
    if (v7)
    {
      v14 = (*(v13 + 120))(v4);
      result = sub_2FFD74(v14, v5, &v23);
      v15 = result;
      if (result)
      {
        v16 = sub_5544(14);
        v17 = *v16;
        if (*v16)
        {
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315394;
            *&buf[1] = "RoutingHandlerUtilities_Aspen.cpp";
            v28 = 1024;
            v29 = 368;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
          }
        }

        v18 = __cxa_allocate_exception(0x10uLL);
        *v18 = &off_6DDDD0;
        v18[2] = v15;
      }
    }

    else
    {
      return (*(v13 + 48))(v4, v5, 0, 0, 4, &v23);
    }
  }

  return result;
}

void sub_2FFD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FFD74(AudioObjectID a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50, &v49);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v50.__m_.__opaque, 0, sizeof(v50.__m_.__opaque));
    v50.__m_.__sig = 850045863;
    memset(v49.__cv_.__opaque, 0, sizeof(v49.__cv_.__opaque));
    v49.__cv_.__sig = 1018212795;
    v41 = 0;
    sub_745E8(v40, a1, a2, &v49, &v50, &v41);
    v35 = a1;
    v36 = *a2;
    v37 = *(a2 + 8);
    v38 = 0;
    v39 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v12 = sub_5544(14);
      v11 = 1852797029;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p, &v32);
      }

      goto LABEL_67;
    }

    v7 = sub_3008A4(&v35);
    if (!HIDWORD(v7) && *a3 == v7)
    {
      v8 = sub_5544(14);
      if ((*(v8 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v8;
      if (!*v8 || !os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 294;
      v45 = 1024;
      LODWORD(v46) = a1;
LABEL_13:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v11 = 0;
LABEL_67:
      sub_73C20(v40);
      std::condition_variable::~condition_variable(&v49);
      std::mutex::~mutex(&v50);
      return v11;
    }

    v13 = sub_5544(14);
    if ((*(v13 + 8) & 1) != 0 && *v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      v32 = *a2;
      v33 = *(a2 + 8);
      sub_22CE0(__p, &v32);
    }

    buf = *a2;
    v11 = AudioObjectSetPropertyData(a1, &buf, 0, 0, 4u, a3);
    if (v11)
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v11);
        v30 = *a2;
        v31 = *(a2 + 8);
        sub_22CE0(&v32, &v30);
      }

      goto LABEL_67;
    }

    v15 = sub_3008A4(&v35);
    if (!HIDWORD(v15) && *a3 == v15)
    {
      v16 = sub_5544(14);
      if ((*(v16 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v16;
      if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 322;
      v45 = 1024;
      LODWORD(v46) = a1;
      goto LABEL_13;
    }

    v17 = 2000;
LABEL_35:
    v18 = sub_3008A4(&v35);
    v11 = HIDWORD(v18);
    if (HIDWORD(v18))
    {
      goto LABEL_67;
    }

    if (*a3 == v18)
    {
      v27 = sub_5544(14);
      if ((*(v27 + 8) & 1) != 0 && *v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p, &v32);
      }

      goto LABEL_66;
    }

    if (v17 <= 0)
    {
      v29 = sub_5544(14);
      v11 = 2003329396;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p, &v32);
      }

      goto LABEL_67;
    }

    v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v20 = sub_5544(14);
    if (*(v20 + 8))
    {
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v43 = 1024;
          v44 = 354;
          v45 = 2080;
          v46 = "with timeout";
          v47 = 1024;
          v48 = a1;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v50;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v50);
    v22.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v41 & 1) != 0 || v22.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_59:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v17 += (std::chrono::system_clock::now().__d_.__rep_ - v19.__d_.__rep_) / -1000;
        goto LABEL_35;
      }

      v23.__d_.__rep_ = v22.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v23.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_58:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v22.__d_.__rep_)
      {
        goto LABEL_59;
      }
    }

    std::chrono::steady_clock::now();
    v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v24.__d_.__rep_)
    {
      v25 = 0;
      goto LABEL_56;
    }

    if (v24.__d_.__rep_ < 1)
    {
      if (v24.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v25 = 0x8000000000000000;
        goto LABEL_56;
      }
    }

    else if (v24.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v25 = 1000 * v24.__d_.__rep_;
LABEL_54:
    if (v25 > (v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v26.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_57:
      std::condition_variable::__do_timed_wait(&v49, &buf, v26);
      std::chrono::steady_clock::now();
      goto LABEL_58;
    }

LABEL_56:
    v26.__d_.__rep_ = v25 + v23.__d_.__rep_;
    goto LABEL_57;
  }

  v10 = sub_5544(14);
  v11 = 2003332927;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50, &v49);
  }

  return v11;
}