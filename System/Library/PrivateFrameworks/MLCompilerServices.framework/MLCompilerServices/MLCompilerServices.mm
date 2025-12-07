uint64_t mlc_services_model_create_bundled(const char *a1)
{
  v58[2] = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  if (v2 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_2563894A4();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v57 = v2;
  if (v2)
  {
    memcpy(__dst, a1, v2);
  }

  *(__dst + v3) = 0;
  sub_256392EC8(__dst, &v55);
  if (v57 < 0)
  {
    operator delete(__dst[0]);
    v4 = v55;
    if (v55)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = v55;
    if (v55)
    {
LABEL_9:
      v54 = 0uLL;
      __p = 0;
      v5 = *(v4 + 16);
      if (v5 < 6 || ((v6 = *(v4 + 8), *v6 == 1852727854) ? (v7 = *(v6 + 4) == 8307) : (v7 = 0), !v7))
      {
        v8 = strlen(a1);
        if (v8 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2563894A4();
        }

        v9 = v8;
        if (v8 >= 0x17)
        {
          operator new();
        }

        v57 = v8;
        if (v8)
        {
          memcpy(__dst, a1, v8);
        }

        *(__dst + v9) = 0;
        v12 = sub_25638F170(__dst);
        v11 = v12;
        if (v57 < 0)
        {
          operator delete(__dst[0]);
          if (!v11)
          {
            goto LABEL_28;
          }
        }

        else if (!v12)
        {
LABEL_28:
          v13 = strlen(a1);
          if (v13 <= 0x7FFFFFFFFFFFFFF7)
          {
            v14 = v13;
            if (v13 < 0x17)
            {
              v57 = v13;
              if (v13)
              {
                memcpy(__dst, a1, v13);
              }

              *(__dst + v14) = 0;
              sub_25638D6B0(&v55, __dst);
            }

            operator new();
          }

          sub_2563894A4();
        }

        goto LABEL_121;
      }

      sub_256389308(&__p, (v6 + 6), v5 - 6);
      v15 = strlen(a1);
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_2563894A4();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        operator new();
      }

      v50 = v15;
      if (v15)
      {
        memcpy(v49, a1, v15);
      }

      *(v49 + v16) = 0;
      v17 = v50;
      if (v50 >= 0)
      {
        v18 = v49;
      }

      else
      {
        v18 = v49[0];
      }

      if (v50 < 0)
      {
        v17 = v49[1];
      }

      v19 = v17;
      do
      {
        if (!v19)
        {
          goto LABEL_57;
        }

        v20 = (v19--)[v18 - 1];
      }

      while (v20 != 47);
      if (v19 == -1)
      {
LABEL_57:
        *(&v51.__r_.__value_.__s + 23) = 0;
        v22 = &v51;
        goto LABEL_61;
      }

      if (v17 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_2563894A4();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      *(&v51.__r_.__value_.__s + 23) = v21;
      if (v21)
      {
        memmove(&v51, v18, v21);
      }

      v22 = (&v51 + v21);
LABEL_61:
      v22->__r_.__value_.__s.__data_[0] = 0;
      v23 = std::string::append(&v51, "/", 1uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v26 = __p;
      v25 = v54;
      if (v54 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v54 >= 0)
      {
        v28 = HIBYTE(v54);
      }

      else
      {
        v28 = v54;
      }

      if (!v28)
      {
        goto LABEL_76;
      }

      v29 = 0;
      while ((p_p[v29] & 0xFD) == 0x20)
      {
        if (v28 == ++v29)
        {
          goto LABEL_76;
        }
      }

      if (v29 == -1)
      {
LABEL_76:
        v57 = 0;
        v30 = __dst;
LABEL_77:
        *v30 = 0;
        v31 = v57;
        if ((v57 & 0x80u) == 0)
        {
          v32 = __dst;
        }

        else
        {
          v32 = __dst[0];
        }

        if ((v57 & 0x80u) != 0)
        {
          v31 = __dst[1];
        }

        v33 = (v31 - 1);
        do
        {
          if (v33 == -1)
          {
            goto LABEL_86;
          }

          v34 = (v33--)[v32] & 0xFD;
        }

        while (v34 == 32);
        if (v33 == -2)
        {
LABEL_86:
          v48 = 0;
          v35 = v47;
          goto LABEL_97;
        }

        v36 = (v33 + 2);
        if (v31 >= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v31;
        }

        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2563894A4();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v48 = v37;
        if (v31)
        {
          memmove(v47, v32, v37);
        }

        v35 = (v47 + v37);
LABEL_97:
        *v35 = 0;
        if (v57 < 0)
        {
          operator delete(__dst[0]);
        }

        if ((v48 & 0x80u) == 0)
        {
          v38 = v47;
        }

        else
        {
          v38 = v47[0];
        }

        if ((v48 & 0x80u) == 0)
        {
          v39 = v48;
        }

        else
        {
          v39 = v47[1];
        }

        v40 = std::string::append(&v52, v38, v39);
        v41 = v40->__r_.__value_.__r.__words[0];
        v58[0] = v40->__r_.__value_.__l.__size_;
        *(v58 + 7) = *(&v40->__r_.__value_.__r.__words[1] + 7);
        v42 = HIBYTE(v40->__r_.__value_.__r.__words[2]);
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p);
        }

        __p = v41;
        *&v54 = v58[0];
        *(&v54 + 7) = *(v58 + 7);
        HIBYTE(v54) = v42;
        if (v48 < 0)
        {
          operator delete(v47[0]);
          if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_109:
            if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_115;
          }
        }

        else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_109;
        }

        operator delete(v52.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_110:
          if ((v50 & 0x80000000) == 0)
          {
LABEL_111:
            sub_256392EC8(&__p, __dst);
            if (__dst[0])
            {
              sub_25638960C(__dst);
            }

            v43 = os_log_create("com.apple.mlcompiler.service", "Execution");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_25639A788(&v54 + 15, &__p, v43);
            }

            v11 = 0;
            v44 = __dst[0];
            __dst[0] = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }

LABEL_121:
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_123;
          }

LABEL_116:
          operator delete(v49[0]);
          goto LABEL_111;
        }

LABEL_115:
        operator delete(v51.__r_.__value_.__l.__data_);
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_116;
      }

      if ((HIBYTE(v54) & 0x80) != 0)
      {
        if (v54 >= v29)
        {
          goto LABEL_127;
        }
      }

      else if (v29 <= HIBYTE(v54))
      {
        v26 = &__p;
        v25 = HIBYTE(v54);
LABEL_127:
        if (v25 - v29 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2563894A4();
        }

        if (v25 - v29 >= 0x17)
        {
          operator new();
        }

        v57 = v25 - v29;
        if (v25 != v29)
        {
          memmove(__dst, &v26[v29], v25 - v29);
        }

        v30 = (__dst + v25 - v29);
        goto LABEL_77;
      }

      sub_25638954C();
    }
  }

  v10 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_25639A814(a1, v10);
  }

  v11 = 0;
LABEL_123:
  v45 = v55;
  v55 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  return v11;
}

void sub_256388638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41)
{
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a33 < 0)
  {
    operator delete(__p);
    if (a27 < 0)
    {
LABEL_7:
      operator delete(a22);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_10:
      operator delete(a16);
LABEL_11:
      if (a40 < 0)
      {
        operator delete(a35);
      }

      if (a41)
      {
        (*(*a41 + 8))(a41);
        _Unwind_Resume(a1);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (a27 < 0)
  {
    goto LABEL_7;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t mlc_services_model_bind_raw_ports(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if ((!a2 || a3) && (!a5 || a6))
    {
      v6 = (*(*result + 16))(result);
      v7 = os_log_create("com.apple.mlcompiler.service", "Execution");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "mlc_services_model_bind_raw_ports";
        v10 = 1024;
        v11 = v6;
        _os_log_impl(&dword_256385000, v7, OS_LOG_TYPE_DEFAULT, "%s() -> %{BOOL}d", &v8, 0x12u);
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlc_services_model_bind_ports(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if ((!a2 || a3) && (!a4 || a5))
    {
      v5 = (*(*result + 24))(result);
      v6 = os_log_create("com.apple.mlcompiler.service", "Execution");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 136315394;
        v8 = "mlc_services_model_bind_ports";
        v9 = 1024;
        v10 = v5;
        _os_log_impl(&dword_256385000, v6, OS_LOG_TYPE_INFO, "%s() -> %{BOOL}d", &v7, 0x12u);
      }

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlc_services_model_load(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v1 = (*(*a1 + 32))(a1);
  v2 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "mlc_services_model_load";
    v6 = 1024;
    v7 = v1;
    _os_log_impl(&dword_256385000, v2, OS_LOG_TYPE_DEFAULT, "%s() -> %{BOOL}d", &v4, 0x12u);
  }

  return v1;
}

uint64_t mlc_services_model_get_tensor_shape(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v1 = (*(*a1 + 40))(a1);
  v2 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "mlc_services_model_get_tensor_shape";
    v6 = 1024;
    v7 = v1;
    _os_log_impl(&dword_256385000, v2, OS_LOG_TYPE_INFO, "%s() -> %{BOOL}d", &v4, 0x12u);
  }

  return v1;
}

uint64_t mlc_services_model_set_tensor_shape(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v1 = (*(*a1 + 48))(a1);
  v2 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "mlc_services_model_set_tensor_shape";
    v6 = 1024;
    v7 = v1;
    _os_log_impl(&dword_256385000, v2, OS_LOG_TYPE_INFO, "%s() -> %{BOOL}d", &v4, 0x12u);
  }

  return v1;
}

uint64_t mlc_services_model_reshape(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v1 = (*(*a1 + 56))(a1);
  v2 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "mlc_services_model_reshape";
    v6 = 1024;
    v7 = v1;
    _os_log_impl(&dword_256385000, v2, OS_LOG_TYPE_INFO, "%s() -> %{BOOL}d", &v4, 0x12u);
  }

  return v1;
}

uint64_t mlc_services_model_exec_sync(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t mlc_services_model_teardown(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v2 = (*(*a1 + 64))();
  (*(*a1 + 8))(a1);
  v3 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "mlc_services_model_teardown";
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_256385000, v3, OS_LOG_TYPE_DEFAULT, "%s() -> %{BOOL}d", &v5, 0x12u);
  }

  return v2;
}

uint64_t sub_256388EB0()
{
  v0 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_256385000, v0, OS_LOG_TYPE_DEFAULT, "TODO: Not yet implemented", v2, 2u);
  }

  return 0;
}

uint64_t sub_256388F24()
{
  v0 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_256385000, v0, OS_LOG_TYPE_DEFAULT, "TODO: Not yet implemented", v2, 2u);
  }

  return 0;
}

uint64_t sub_256388F98()
{
  v0 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_256385000, v0, OS_LOG_TYPE_DEFAULT, "TODO: Not yet implemented", v2, 2u);
  }

  return 0;
}

uint64_t sub_25638900C(uint64_t a1, unint64_t a2, IOSurfaceRef *a3, unint64_t a4, IOSurfaceRef *a5)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2563895F4();
  }

  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_2563895F4();
  }

  return (*(*a1 + 16))(a1, 0, 0, 0, 0, 0, 0);
}

void sub_25638922C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
    if (a12)
    {
LABEL_6:
      operator delete(a12);
      _Unwind_Resume(a1);
    }
  }

  else if (a12)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t mlc_services_model_create_cached()
{
  v0 = os_log_create("com.apple.mlcompiler.service", "Execution");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_25639A88C(v0);
  }

  return 0;
}

void ***sub_256389308(void ***__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_2563894A4();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void sub_2563894BC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_256389518(exception, a1);
  __cxa_throw(exception, &unk_286856060, MEMORY[0x277D825F0]);
}

std::logic_error *sub_256389518(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_256389564(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2563895C0(exception, a1);
  __cxa_throw(exception, &unk_286856078, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2563895C0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

BOOL sub_256389700(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  *(a1 + 16) = *(v2 + 8);
  *(a1 + 24) = v3;
  v4 = BNNSGraphContextMake();
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  if (v4)
  {
    BNNSGraphContextSetArgumentType();
    *(a1 + 72) = BNNSGraphGetInputCount();
    OutputCount = BNNSGraphGetOutputCount();
    v7 = *(a1 + 232);
    *(a1 + 80) = OutputCount;
    v8 = *(a1 + 72);
    v9 = *(a1 + 240);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 3);
    if (v8 <= v10)
    {
      if (v8 < v10)
      {
        v12 = (v7 + 24 * v8);
        while (v9 != v12)
        {
          v13 = *(v9 - 1);
          v9 -= 3;
          if (v13 < 0)
          {
            operator delete(*v9);
          }
        }

        *(a1 + 240) = v12;
      }
    }

    else
    {
      sub_25638ABFC(a1 + 232, v8 - v10);
    }

    v14 = *(a1 + 80);
    v15 = *(a1 + 256);
    v16 = *(a1 + 264);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
    if (v14 <= v17)
    {
      if (v14 < v17)
      {
        v18 = (v15 + 24 * v14);
        while (v16 != v18)
        {
          v19 = *(v16 - 1);
          v16 -= 3;
          if (v19 < 0)
          {
            operator delete(*v16);
          }
        }

        *(a1 + 264) = v18;
      }
    }

    else
    {
      sub_25638ABFC(a1 + 256, v14 - v17);
    }

    v20 = *(a1 + 88);
    v21 = *(a1 + 72);
    v22 = v21 + *(a1 + 80);
    v23 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 96) - v20) >> 4);
    if (v22 <= v23)
    {
      if (v22 < v23)
      {
        *(a1 + 96) = v20 + 176 * v22;
      }
    }

    else
    {
      sub_25638ADDC(a1 + 88, v22 - v23);
      v21 = *(a1 + 72);
      v22 = v21 + *(a1 + 80);
    }

    v24 = *(a1 + 112);
    v25 = (*(a1 + 120) - v24) >> 4;
    if (v22 <= v25)
    {
      if (v22 < v25)
      {
        *(a1 + 120) = v24 + 16 * v22;
      }
    }

    else
    {
      sub_25638AF94(a1 + 112, v22 - v25);
      v21 = *(a1 + 72);
    }

    if (v21)
    {
      if (!(v21 >> 61))
      {
        operator new();
      }

      sub_2563895F4();
    }

    v26 = *(a1 + 80);
    if (v26)
    {
      if (!(v26 >> 61))
      {
        operator new();
      }

      sub_2563895F4();
    }

    v83 = v4;
    BNNSGraphGetInputNames_v2();
    BNNSGraphGetOutputNames_v2();
    v84 = (a1 + 232);
    if (*(a1 + 80))
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = *(8 * v30);
        v32 = strlen(v31);
        if (v32 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2563894A4();
        }

        v33 = v32;
        if (v32 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v86) = v32;
        if (v32)
        {
          memmove(&__dst, v31, v32);
        }

        *(&__dst + v33) = 0;
        v34 = *(a1 + 256) + v29;
        if (*(v34 + 23) < 0)
        {
          operator delete(*v34);
        }

        *v34 = __dst;
        *(v34 + 16) = v86;
        *&__dst = *(a1 + 256) + v29;
        sub_25638D130((a1 + 208), __dst, &unk_25639C39E, &__dst)[7] = v30;
        v35 = *(a1 + 88) + v28;
        BNNSGraphContextGetTensorDescriptor_v2();
        v36 = (*(a1 + 112) + v27);
        *v36 = v35;
        v36[1] = 0;
        ++v30;
        v29 += 24;
        v28 += 176;
        v27 += 16;
      }

      while (v30 < *(a1 + 80));
    }

    if (*(a1 + 72))
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = *(a1 + 80);
        v40 = *(8 * v38);
        v41 = strlen(v40);
        if (v41 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2563894A4();
        }

        v42 = v41;
        if (v41 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v86) = v41;
        if (v41)
        {
          memmove(&__dst, v40, v41);
        }

        *(&__dst + v42) = 0;
        v43 = *v84 + v37;
        if (*(v43 + 23) < 0)
        {
          operator delete(*v43);
        }

        *v43 = __dst;
        *(v43 + 16) = v86;
        *&__dst = *v84 + v37;
        sub_25638D130((a1 + 208), __dst, &unk_25639C39E, &__dst)[7] = v38 + v39;
        v44 = *(a1 + 88) + 176 * (v38 + v39);
        BNNSGraphContextGetTensorDescriptor_v2();
        v45 = (*(a1 + 112) + 16 * (v38 + v39));
        *v45 = v44;
        v45[1] = 0;
        ++v38;
        v37 += 24;
      }

      while (v38 < *(a1 + 72));
    }

    v46 = *(a1 + 232);
    v47 = *(a1 + 240);
    v48 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v47 - v46));
    if (v47 == v46)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    sub_25638B0E8(v46, v47, &__dst, v49, 1);
    v50 = *(a1 + 256);
    v51 = *(a1 + 264);
    v52 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v51 - v50));
    if (v51 == v50)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    sub_25638B0E8(v50, v51, &__dst, v53, 1);
    v55 = (a1 + 136);
    v54 = *(a1 + 136);
    v56 = *(a1 + 72) + *(a1 + 80);
    v57 = (*(a1 + 144) - v54) >> 4;
    if (v56 <= v57)
    {
      if (v56 < v57)
      {
        *(a1 + 144) = v54 + 16 * v56;
      }
    }

    else
    {
      sub_25638CE24(a1 + 136, v56 - v57);
      v56 = *(a1 + 72) + *(a1 + 80);
    }

    v58 = *(a1 + 160);
    v59 = (a1 + 160);
    v60 = (*(a1 + 168) - v58) >> 6;
    if (v56 <= v60)
    {
      if (v56 < v60)
      {
        *(a1 + 168) = v58 + (v56 << 6);
      }
    }

    else
    {
      sub_25638CF78(a1 + 160, v56 - v60);
      v56 = *(a1 + 72) + *(a1 + 80);
    }

    v61 = *(a1 + 184);
    v62 = (*(a1 + 192) - v61) >> 6;
    if (v56 <= v62)
    {
      if (v56 < v62)
      {
        *(a1 + 192) = v61 + (v56 << 6);
      }
    }

    else
    {
      sub_25638CF78(a1 + 184, v56 - v62);
    }

    v63 = *(a1 + 88);
    if (*(a1 + 96) != v63)
    {
      v64 = 0;
      v65 = -16;
      v66 = -8;
      do
      {
        v67 = v55;
        v68 = (*v55 + 16 * v64);
        *v68 = 8;
        v69 = *(v63 + 176 * v64 + 8);
        v70 = *v59;
        if (v69)
        {
          v71 = (v70 + (v64 << 6));
          *v71 = v69;
          v72 = *(v63 + 176 * v64 + 16);
          if (v72)
          {
            v71[1] = v72;
            v73 = *(v63 + 176 * v64 + 24);
            if (v73)
            {
              v71[2] = v73;
              v74 = *(v63 + 176 * v64 + 32);
              if (v74)
              {
                v71[3] = v74;
                v75 = *(v63 + 176 * v64 + 40);
                if (v75)
                {
                  v71[4] = v75;
                  v76 = *(v63 + 176 * v64 + 48);
                  if (v76)
                  {
                    v71[5] = v76;
                    v77 = *(v63 + 176 * v64 + 56);
                    if (v77)
                    {
                      v71[6] = v77;
                      v78 = *(v63 + 176 * v64 + 64);
                      if (v78)
                      {
                        v71[7] = v78;
                        v79 = 8;
                        goto LABEL_95;
                      }

                      v79 = 7;
                    }

                    else
                    {
                      v79 = 6;
                    }
                  }

                  else
                  {
                    v79 = 5;
                  }
                }

                else
                {
                  v79 = 4;
                }
              }

              else
              {
                v79 = 3;
              }
            }

            else
            {
              v79 = 2;
            }
          }

          else
          {
            v79 = 1;
          }

          *v68 = v79;
        }

        else
        {
          v79 = 0;
          *v68 = 0;
        }

LABEL_95:
        v68[1] = v70 + (v64 << 6);
        v80 = *(a1 + 184);
        v81 = sub_256389FF8(*(v63 + 176 * v64 + 144));
        if (v79)
        {
          for (*(v80 + (v64 << 6) + 8 * (v79 - 1)) = v81; v79 != 1; --v79)
          {
            v81 *= *(v70 + v66 + 8 * v79);
            *(v80 + v65 + 8 * v79) = v81;
          }
        }

        ++v64;
        v63 = *(a1 + 88);
        v65 += 64;
        v66 += 64;
        v55 = v67;
        v59 = (a1 + 160);
      }

      while (v64 < 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 96) - v63) >> 4));
    }

    v4 = v83;
  }

  else
  {
    v11 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_25639A910(v11);
    }
  }

  return v4 != 0;
}

void sub_256389F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_256389FF8(int a1)
{
  if (a1 <= 131103)
  {
    if (a1 <= 98319)
    {
      if (a1 != 65552)
      {
        if (a1 == 65568)
        {
          return 4;
        }

        goto LABEL_15;
      }
    }

    else if (a1 != 98320)
    {
      if (a1 == 131080)
      {
        return 1;
      }

      if (a1 != 131088)
      {
        goto LABEL_15;
      }
    }

    return 2;
  }

  v1 = 8;
  if (a1 <= 262159)
  {
    if (a1 != 131104)
    {
      if (a1 != 131136)
      {
        if (a1 != 262152)
        {
          goto LABEL_15;
        }

        return 1;
      }

      return v1;
    }

    return 4;
  }

  switch(a1)
  {
    case 262160:
      return 2;
    case 262208:
      return v1;
    case 262176:
      return 4;
  }

LABEL_15:
  v2 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_25639A954(v2);
  }

  return 0;
}

void sub_25638A15C(uint64_t a1)
{
  *a1 = &unk_2868560A0;
  v2 = *(a1 + 256);
  if (v2)
  {
    v3 = *(a1 + 264);
    v4 = *(a1 + 256);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 256);
    }

    *(a1 + 264) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 232);
  if (v6)
  {
    v7 = *(a1 + 240);
    v8 = *(a1 + 232);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 232);
    }

    *(a1 + 240) = v6;
    operator delete(v8);
  }

  sub_25638D0CC(a1 + 208, *(a1 + 216));
  v10 = *(a1 + 184);
  if (v10)
  {
    *(a1 + 192) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 160);
  if (v11)
  {
    *(a1 + 168) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 136);
  if (v12)
  {
    *(a1 + 144) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    *(a1 + 120) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    *(a1 + 96) = v14;
    operator delete(v14);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v15 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  nullsub_1();
}

void sub_25638A2E4(uint64_t a1)
{
  sub_25638A15C(a1);

  JUMPOUT(0x259C617A0);
}

BOOL sub_25638A31C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a3;
  v9 = a2;
  if (!a6 && !a3 && !(a5 | a2))
  {
    return 1;
  }

  if (a1[9] != a2 || a1[10] != a5)
  {
    return 0;
  }

  if (a5)
  {
    v12 = 0;
    do
    {
      v13 = *v6;
      if (!*v6)
      {
        return 0;
      }

      v17 = &a1[32][v12];
      a1[11][22 * sub_25638D130(a1 + 26, v17, &unk_25639C39E, &v17)[7] + 17] = v13;
      ++v6;
      v12 += 3;
    }

    while (--v7);
  }

  if (!v9)
  {
    return 1;
  }

  v14 = 0;
  do
  {
    v15 = *v8;
    v11 = *v8 != 0;
    if (!*v8)
    {
      break;
    }

    v17 = &a1[29][v14];
    a1[11][22 * sub_25638D130(a1 + 26, v17, &unk_25639C39E, &v17)[7] + 17] = v15;
    ++v8;
    v14 += 3;
    --v9;
  }

  while (v9);
  return v11;
}

BOOL sub_25638A478(void *a1, char *__s, unint64_t a3, void *a4, void *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2563894A4();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v24 = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  *(&__dst + v11) = 0;
  v12 = sub_25638D580((a1 + 26), &__dst);
  if (v24 < 0)
  {
    v13 = v12;
    operator delete(__dst);
    v12 = v13;
  }

  if (a1 + 27 == v12)
  {
    v21 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
    result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_25639AA00();
      return 0;
    }
  }

  else if (a3 >= 9)
  {
    v22 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_25639A998();
      return 0;
    }
  }

  else
  {
    if (a3)
    {
      v14 = v12[7];
      v15 = a1[23];
      v16 = *(a1[17] + 16 * v14 + 8);
      *a4 = *v16;
      if (a3 != 1)
      {
        a4[1] = v16[1];
        if (a3 != 2)
        {
          a4[2] = v16[2];
          if (a3 != 3)
          {
            a4[3] = v16[3];
            if (a3 != 4)
            {
              a4[4] = v16[4];
              if (a3 != 5)
              {
                a4[5] = v16[5];
                if (a3 != 6)
                {
                  a4[6] = v16[6];
                  if (a3 != 7)
                  {
                    a4[7] = v16[7];
                  }
                }
              }
            }
          }
        }
      }

      v17 = 8 * a3;
      v18 = (v15 + (v14 << 6));
      do
      {
        v19 = *v18++;
        *a5++ = v19;
        v17 -= 8;
      }

      while (v17);
    }

    return 1;
  }

  return result;
}

void sub_25638A6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_25638A6C4(void *a1, char *__s, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2563894A4();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v44 = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  *(&__dst + v11) = 0;
  v12 = sub_25638D580((a1 + 26), &__dst);
  if (v44 < 0)
  {
    v13 = v12;
    operator delete(__dst);
    v12 = v13;
  }

  if (a1 + 27 == v12)
  {
    v16 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_25639AAD0();
    return 0;
  }

  if (a3 >= 9)
  {
    v14 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_25639A998();
    return 0;
  }

  v17 = v12[7];
  v18 = a1[11];
  v19 = v18 + 176 * v17;
  v20 = (a1[17] + 16 * v17);
  v21 = a1[23];
  if (a3)
  {
    v22 = 8 * a3;
    *(v19 + 8) = *a4;
    if (a3 != 1)
    {
      *(v19 + 16) = a4[1];
      if (a3 != 2)
      {
        *(v19 + 24) = a4[2];
        if (a3 != 3)
        {
          *(v19 + 32) = a4[3];
          if (a3 != 4)
          {
            *(v19 + 40) = a4[4];
            if (a3 != 5)
            {
              *(v19 + 48) = a4[5];
              if (a3 != 6)
              {
                *(v19 + 56) = a4[6];
                if (a3 != 7)
                {
                  *(v19 + 64) = a4[7];
                }
              }
            }
          }
        }
      }
    }

    v23 = v20[1];
    do
    {
      v24 = *a4++;
      *v23++ = v24;
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *v20;
  v26 = a1[20];
  v27 = sub_256389FF8(*(v19 + 144));
  if (v25)
  {
    for (*(v21 + (v17 << 6) + 8 * (v25 - 1)) = v27; v25 != 1; --v25)
    {
      v27 *= *((v17 << 6) + v26 - 8 + 8 * v25);
      *((v17 << 6) + v21 - 16 + 8 * v25) = v27;
    }
  }

  if (!a3)
  {
    return 1;
  }

  v28 = (a1[23] + (v17 << 6));
  v29 = (v19 + 72);
  v30 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v31 = v28;
  if (v30 < 3)
  {
    goto LABEL_45;
  }

  v32 = v30 + 1;
  v33 = v32 & 0x3FFFFFFFFFFFFFFCLL;
  v29 = (v29 + v33 * 8);
  v31 = &v28[v33];
  v34 = (v28 + 2);
  v35 = (v18 + 176 * v17 + 88);
  v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v37 = *v34;
    *(v35 - 1) = *(v34 - 1);
    *v35 = v37;
    v34 += 2;
    v35 += 2;
    v36 -= 4;
  }

  while (v36);
  if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
  {
LABEL_45:
    do
    {
      v38 = *v31++;
      *v29++ = v38;
    }

    while (v31 != &v28[a3]);
  }

  while (1)
  {
    v40 = *v28++;
    v39 = v40;
    v41 = *a5++;
    if (v39 != v41)
    {
      break;
    }

    if (!--a3)
    {
      return 1;
    }
  }

  v42 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
  result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_25639AA68();
    return 0;
  }

  return result;
}

void sub_25638AA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_25638AA30(void *a1)
{
  v2 = BNNSGraphContextSetDynamicShapes_v2();
  if (v2 < 0)
  {
    v10 = os_log_create("com.apple.mlcompiler.service", "ExecutionBNNSGraph");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_256385000, v10, OS_LOG_TYPE_INFO, "BNNSGraph: Couldn't set dynamic shapes", v12, 2u);
    }
  }

  else if (a1[10])
  {
    v3 = 0;
    v4 = -16;
    v5 = -8;
    do
    {
      v6 = *(a1[17] + 16 * v3);
      v7 = a1[23];
      v8 = a1[20];
      v9 = sub_256389FF8(*(a1[11] + 176 * v3 + 144));
      if (v6)
      {
        for (*(v7 + (v3 << 6) + 8 * (v6 - 1)) = v9; v6 != 1; --v6)
        {
          v9 *= *(v8 + v5 + 8 * v6);
          *(v7 + v4 + 8 * v6) = v9;
        }
      }

      ++v3;
      v4 += 64;
      v5 += 64;
    }

    while (v3 < a1[10]);
  }

  return v2 >= 0;
}

void sub_25638ABFC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2563895F4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_25638ADA8();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_25638ADA8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_286856108, MEMORY[0x277D82620]);
}

void sub_25638ADDC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x2E8BA2E8BA2E8BA3 * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 176 * ((176 * a2 - 176) / 0xB0) + 176;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 4) + a2;
    if (v6 > 0x1745D1745D1745DLL)
    {
      sub_2563895F4();
    }

    v7 = 0x2E8BA2E8BA2E8BA3 * ((v3 - v5) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xBA2E8BA2E8BA2ELL)
    {
      v8 = 0x1745D1745D1745DLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }

      sub_25638ADA8();
    }

    v10 = (16 * ((v4 - *a1) >> 4));
    v11 = 176 * ((176 * a2 - 176) / 0xB0) + 176;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_25638AF94(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_2563895F4();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_25638ADA8();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

__n128 sub_25638B0E8(const void **a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
    v14 = v13 - 2;
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_25638B5AC(v9, v9 + 3, a2 - 3);
        return result;
      case 4uLL:

        result.n128_u64[0] = sub_25638B7F8(v9, v9 + 3, v9 + 6, a2 - 3).n128_u64[0];
        return result;
      case 5uLL:

        result.n128_u64[0] = sub_25638B994(v9, (v9 + 3), v9 + 3, v9 + 9, a2 - 3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        sub_25638BBAC(v9, a2);
      }

      else
      {

        sub_25638BD78(v9, a2);
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {
        v44 = (v14 >> 1) + 1;
        v45 = &v9[3 * (v14 >> 1)];
        do
        {
          sub_25638C7C4(v9, a3, 0xAAAAAAAAAAAAAAABLL * (a2 - v9), v45);
          v45 -= 3;
          --v44;
        }

        while (v44);

        sub_25638CA88(v9, a2, a3);
      }

      return result;
    }

    v15 = v13 >> 1;
    v16 = &v9[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      sub_25638B5AC(v16, v9, a2 - 3);
      if (a5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_25638B5AC(v9, v16, a2 - 3);
      v17 = v9 + 3;
      v18 = 3 * v15;
      v19 = &a1[3 * v15 - 3];
      sub_25638B5AC(a1 + 3, v19, a2 - 6);
      sub_25638B5AC(a1 + 6, &v17[v18], a2 - 9);
      sub_25638B5AC(v19, v16, &v17[v18]);
      v49 = a1[2];
      v47 = *a1;
      v20 = *v16;
      a1[2] = v16[2];
      *a1 = v20;
      v16[2] = v49;
      *v16 = v47;
      if (a5)
      {
        goto LABEL_35;
      }
    }

    v21 = *(a1 - 1);
    if (v21 >= 0)
    {
      v22 = a1 - 3;
    }

    else
    {
      v22 = *(a1 - 3);
    }

    if (v21 >= 0)
    {
      v23 = *(a1 - 1);
    }

    else
    {
      v23 = *(a1 - 2);
    }

    v24 = *(a1 + 23);
    if (v24 >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    if (v24 >= 0)
    {
      v26 = *(a1 + 23);
    }

    else
    {
      v26 = a1[1];
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v22, v25, v27);
    if (v28)
    {
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (v23 >= v26)
    {
LABEL_39:
      v9 = sub_25638BEE8(a1, a2);
      goto LABEL_40;
    }

LABEL_35:
    v29 = sub_25638C1DC(a1, a2);
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }

    v31 = sub_25638C4AC(a1, v29);
    v9 = (v29 + 24);
    if (sub_25638C4AC((v29 + 24), a2))
    {
      a4 = -v11;
      a2 = v29;
      if (v31)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v31)
    {
LABEL_38:
      result.n128_u64[0] = sub_25638B0E8(a1, v29, a3, -v11, a5 & 1).n128_u64[0];
      v9 = (v29 + 24);
LABEL_40:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return result;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v35 = *(a2 - 3);
  v34 = a2 - 3;
  v33 = v35;
  v36 = *(v34 + 23);
  if (v36 >= 0)
  {
    v37 = v34;
  }

  else
  {
    v37 = v33;
  }

  if (v36 >= 0)
  {
    v38 = *(v34 + 23);
  }

  else
  {
    v38 = v34[1];
  }

  v39 = *(v9 + 23);
  if (v39 >= 0)
  {
    v40 = v9;
  }

  else
  {
    v40 = *v9;
  }

  if (v39 >= 0)
  {
    v41 = *(v9 + 23);
  }

  else
  {
    v41 = v9[1];
  }

  if (v41 >= v38)
  {
    v42 = v38;
  }

  else
  {
    v42 = v41;
  }

  v43 = memcmp(v37, v40, v42);
  if (v43)
  {
    if ((v43 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v38 >= v41)
  {
    return result;
  }

  v50 = v9[2];
  v48 = *v9;
  v46 = *v34;
  v9[2] = v34[2];
  *v9 = v46;
  result = v48;
  *v34 = v48;
  v34[2] = v50;
  return result;
}

uint64_t sub_25638B5AC(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    if (v8 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v8;
    }

    v24 = memcmp(v21, v7, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
LABEL_42:
        v25 = a1[2];
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        a1[2] = v27;
        *a2 = v26;
        a2[2] = v25;
        v28 = *(a3 + 23);
        if (v28 >= 0)
        {
          v29 = a3;
        }

        else
        {
          v29 = *a3;
        }

        if (v28 >= 0)
        {
          v30 = *(a3 + 23);
        }

        else
        {
          v30 = a3[1];
        }

        v31 = *(a2 + 23);
        if (v31 >= 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        if (v31 >= 0)
        {
          v33 = *(a2 + 23);
        }

        else
        {
          v33 = a2[1];
        }

        if (v33 >= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v33;
        }

        v35 = memcmp(v29, v32, v34);
        if (v35)
        {
          if ((v35 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v30 >= v33)
        {
          return 1;
        }

        v47 = a2[2];
        v48 = *a2;
        v50 = a3[2];
        *a2 = *a3;
        a2[2] = v50;
LABEL_83:
        *a3 = v48;
        a3[2] = v47;
        return 1;
      }
    }

    else if (v22 >= v8)
    {
      goto LABEL_42;
    }

    v47 = a1[2];
    v48 = *a1;
    v49 = a3[2];
    *a1 = *a3;
    a1[2] = v49;
    goto LABEL_83;
  }

  if (v8 < v11)
  {
    goto LABEL_31;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v16 >= v8)
  {
    return 0;
  }

  v36 = a2[2];
  v37 = *a2;
  v38 = a3[2];
  *a2 = *a3;
  a2[2] = v38;
  *a3 = v37;
  a3[2] = v36;
  v39 = *(a2 + 23);
  if (v39 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = *a2;
  }

  if (v39 >= 0)
  {
    v41 = *(a2 + 23);
  }

  else
  {
    v41 = a2[1];
  }

  v42 = *(a1 + 23);
  if (v42 >= 0)
  {
    v43 = a1;
  }

  else
  {
    v43 = *a1;
  }

  if (v42 >= 0)
  {
    v44 = *(a1 + 23);
  }

  else
  {
    v44 = a1[1];
  }

  if (v44 >= v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = memcmp(v40, v43, v45);
  if (v46)
  {
    if (v46 < 0)
    {
      goto LABEL_85;
    }
  }

  else if (v41 < v44)
  {
LABEL_85:
    v51 = a1[2];
    v52 = *a1;
    v53 = a2[2];
    *a1 = *a2;
    a1[2] = v53;
    *a2 = v52;
    a2[2] = v51;
  }

  return 1;
}

__n128 sub_25638B7F8(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  sub_25638B5AC(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = a3[1];
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 >= v13)
  {
    return result;
  }

  v17 = a3[2];
  v18 = *a3;
  v19 = a4[2];
  *a3 = *a4;
  a3[2] = v19;
  *a4 = v18;
  a4[2] = v17;
  v20 = *(a3 + 23);
  if (v20 >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (v20 >= 0)
  {
    v22 = *(a3 + 23);
  }

  else
  {
    v22 = a3[1];
  }

  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = a2[1];
  }

  if (v25 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  v27 = memcmp(v21, v24, v26);
  if (v27)
  {
    if ((v27 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v25)
  {
    return result;
  }

  v28 = a2[2];
  v29 = *a2;
  v30 = a3[2];
  *a2 = *a3;
  a2[2] = v30;
  *a3 = v29;
  a3[2] = v28;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 23);
  }

  else
  {
    v33 = a2[1];
  }

  v34 = *(a1 + 23);
  if (v34 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  if (v36 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = v36;
  }

  v38 = memcmp(v32, v35, v37);
  if (v38)
  {
    if ((v38 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v33 >= v36)
  {
    return result;
  }

  v39 = *(a1 + 16);
  result = *a1;
  v40 = a2[2];
  *a1 = *a2;
  *(a1 + 16) = v40;
  *a2 = result;
  a2[2] = v39;
  return result;
}

__n128 sub_25638B994(const void **a1, __int128 *a2, __int128 *a3, const void **a4, const void **a5)
{
  sub_25638B7F8(a1, a2, a3, a4);
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

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = a4[1];
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
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v15)
  {
    return result;
  }

  v19 = a4[2];
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  a4[2] = v21;
  *a5 = v20;
  a5[2] = v19;
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = a4[1];
  }

  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 1);
  }

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v23, v26, v28);
  if (v29)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v24 >= v27)
  {
    return result;
  }

  v30 = *(a3 + 2);
  v31 = *a3;
  v32 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v32;
  *a4 = v31;
  a4[2] = v30;
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 1);
  }

  v36 = *(a2 + 23);
  if (v36 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 1);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v35 >= v38)
  {
    return result;
  }

  v41 = *(a2 + 2);
  v42 = *a2;
  v43 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v43;
  *a3 = v42;
  *(a3 + 2) = v41;
  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 1);
  }

  v47 = *(a1 + 23);
  if (v47 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = a1[1];
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v45, v48, v50);
  if (v51)
  {
    if ((v51 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v46 >= v49)
  {
    return result;
  }

  v52 = a1[2];
  result = *a1;
  v53 = *(a2 + 2);
  *a1 = *a2;
  a1[2] = v53;
  *a2 = result;
  *(a2 + 2) = v52;
  return result;
}

const void **sub_25638BBAC(const void **result, const void **a2)
{
  if (result != a2)
  {
    v32 = v2;
    v33 = v3;
    v4 = a2;
    v5 = result;
    v6 = result + 3;
    if (result + 3 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v11 = v8;
        v8 = v6;
        v12 = *(v11 + 47);
        if (v12 >= 0)
        {
          v13 = v6;
        }

        else
        {
          v13 = v11[3];
        }

        if (v12 >= 0)
        {
          v14 = *(v11 + 47);
        }

        else
        {
          v14 = v11[4];
        }

        v15 = *(v11 + 23);
        if (v15 >= 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = *v11;
        }

        if (v15 >= 0)
        {
          v17 = *(v11 + 23);
        }

        else
        {
          v17 = v11[1];
        }

        if (v17 >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = v17;
        }

        result = memcmp(v13, v16, v18);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_7;
          }
        }

        else if (v14 >= v17)
        {
          goto LABEL_7;
        }

        v31 = v8[2];
        v19 = v31;
        v30 = *v8;
        *v8 = 0;
        v8[1] = 0;
        v20 = HIBYTE(v19);
        if (v20 >= 0)
        {
          v21 = &v30;
        }

        else
        {
          v21 = v30;
        }

        if (v20 >= 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = *(&v30 + 1);
        }

        v8[2] = v11[2];
        *v8 = *v11;
        *(v11 + 23) = 0;
        *v11 = 0;
        v9 = v5;
        if (v11 == v5)
        {
          goto LABEL_6;
        }

        v23 = v7;
        while (1)
        {
          v24 = v5 + v23;
          v25 = *(v5 + v23 - 1);
          v26 = v25 >= 0 ? v5 + v23 - 24 : *(v5 + v23 - 24);
          v27 = v25 >= 0 ? *(v5 + v23 - 1) : *(v5 + v23 - 16);
          v28 = (v27 >= v22 ? v22 : v27);
          result = memcmp(v21, v26, v28);
          if (!result)
          {
            break;
          }

          if ((result & 0x80000000) == 0)
          {
            v9 = (v5 + v23);
            goto LABEL_5;
          }

LABEL_36:
          v11 -= 3;
          *v24 = *(v5 + v23 - 24);
          *(v24 + 2) = *(v5 + v23 - 8);
          *(v5 + v23 - 1) = 0;
          *(v24 - 24) = 0;
          v23 -= 24;
          if (!v23)
          {
            v9 = v5;
            goto LABEL_5;
          }
        }

        if (v22 < v27)
        {
          goto LABEL_36;
        }

        v9 = v11;
LABEL_5:
        v4 = a2;
LABEL_6:
        v10 = v30;
        v9[2] = v31;
        *v9 = v10;
LABEL_7:
        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != v4);
    }
  }

  return result;
}

const void **sub_25638BD78(const void **result, const void **a2)
{
  if (result != a2)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    for (i = result + 3; v5 + 3 != a2; i = v5 + 3)
    {
      v7 = v5;
      v5 = i;
      v8 = *(v7 + 47);
      if (v8 >= 0)
      {
        v9 = i;
      }

      else
      {
        v9 = v7[3];
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 47);
      }

      else
      {
        v10 = v7[4];
      }

      v11 = *(v7 + 23);
      if (v11 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = *v7;
      }

      if (v11 >= 0)
      {
        v13 = *(v7 + 23);
      }

      else
      {
        v13 = v7[1];
      }

      if (v13 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v13;
      }

      result = memcmp(v9, v12, v14);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else if (v10 < v13)
      {
LABEL_25:
        v25 = v5[2];
        v15 = v25;
        v24 = *v5;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v16 = HIBYTE(v15);
        if ((v16 & 0x80u) == 0)
        {
          v17 = &v24;
        }

        else
        {
          v17 = v24;
        }

        if ((v16 & 0x80u) == 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(&v24 + 1);
        }

        for (j = v5; ; j -= 3)
        {
          *j = *(j - 3);
          j[2] = *(j - 1);
          *(j - 1) = 0;
          *(j - 24) = 0;
          v20 = *(j - 25);
          if (v20 >= 0)
          {
            v21 = j - 6;
          }

          else
          {
            v21 = *(j - 6);
          }

          if (v20 >= 0)
          {
            v22 = *(j - 25);
          }

          else
          {
            v22 = *(j - 5);
          }

          if (v22 >= v18)
          {
            v23 = v18;
          }

          else
          {
            v23 = v22;
          }

          result = memcmp(v17, v21, v23);
          if (result)
          {
            if ((result & 0x80000000) == 0)
            {
LABEL_4:
              *(j - 3) = v24;
              *(j - 1) = v25;
              break;
            }
          }

          else if (v18 >= v22)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}

const void **sub_25638BEE8(const void **a1, const void **a2)
{
  v2 = a2;
  v54 = a1[2];
  v4 = v54;
  v53 = *a1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = HIBYTE(v4);
  if ((v5 & 0x80u) == 0)
  {
    v6 = &v53;
  }

  else
  {
    v6 = v53;
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(&v53 + 1);
  }

  v8 = *(a2 - 3);
  v9 = *(a2 - 1);
  v10 = *(a2 - 2);
  if ((v9 & 0x80u) == 0)
  {
    v11 = a2 - 3;
  }

  else
  {
    v11 = *(a2 - 3);
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = memcmp(v6, v11, v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v7 >= v12)
  {
LABEL_18:
    for (i = a1 + 3; i < v2; i += 3)
    {
      v16 = *(i + 23);
      if (v16 >= 0)
      {
        v17 = i;
      }

      else
      {
        v17 = *i;
      }

      if (v16 >= 0)
      {
        v18 = *(i + 23);
      }

      else
      {
        v18 = i[1];
      }

      if (v18 >= v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = v18;
      }

      v20 = memcmp(v6, v17, v19);
      if (v20)
      {
        if (v20 < 0)
        {
          goto LABEL_48;
        }
      }

      else if (v7 < v18)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_48;
  }

  v21 = a1 + 3;
  do
  {
    while (1)
    {
      i = v21;
      v22 = *(v21 + 23);
      v23 = v22 >= 0 ? i : *i;
      v24 = v22 >= 0 ? v22 : i[1];
      v25 = v24 >= v7 ? v7 : v24;
      v26 = memcmp(v6, v23, v25);
      v21 = i + 3;
      if (v26)
      {
        break;
      }

      if (v7 < v24)
      {
        goto LABEL_48;
      }
    }
  }

  while ((v26 & 0x80000000) == 0);
LABEL_48:
  if (i < v2)
  {
    for (v2 -= 3; ; v10 = v2[1])
    {
      if ((v9 & 0x80u) == 0)
      {
        v28 = v2;
      }

      else
      {
        v28 = v8;
      }

      if ((v9 & 0x80u) == 0)
      {
        v29 = v9;
      }

      else
      {
        v29 = v10;
      }

      if (v29 >= v7)
      {
        v30 = v7;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v6, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v7 >= v29)
      {
        break;
      }

      v27 = *(v2 - 3);
      v2 -= 3;
      v8 = v27;
      v9 = *(v2 + 23);
    }
  }

  while (i < v2)
  {
    v32 = *i;
    v56 = i[2];
    v55 = v32;
    v33 = *v2;
    i[2] = v2[2];
    *i = v33;
    v34 = v55;
    v2[2] = v56;
    *v2 = v34;
    if (SHIBYTE(v54) >= 0)
    {
      v35 = &v53;
    }

    else
    {
      v35 = v53;
    }

    if (SHIBYTE(v54) >= 0)
    {
      v36 = HIBYTE(v54);
    }

    else
    {
      v36 = *(&v53 + 1);
    }

    v37 = i + 3;
    do
    {
      while (1)
      {
        i = v37;
        v38 = *(v37 + 23);
        v39 = v38 >= 0 ? i : *i;
        v40 = v38 >= 0 ? v38 : i[1];
        v41 = v40 >= v36 ? v36 : v40;
        v42 = memcmp(v35, v39, v41);
        v37 = i + 3;
        if (v42)
        {
          break;
        }

        if (v36 < v40)
        {
          goto LABEL_85;
        }
      }
    }

    while ((v42 & 0x80000000) == 0);
LABEL_85:
    v43 = v2 - 3;
    do
    {
      while (1)
      {
        v2 = v43;
        v44 = *(v43 + 23);
        v45 = v44 >= 0 ? v2 : *v2;
        v46 = v44 >= 0 ? v44 : v2[1];
        v47 = v46 >= v36 ? v36 : v46;
        v48 = memcmp(v35, v45, v47);
        v43 = v2 - 3;
        if (v48)
        {
          break;
        }

        if (v36 >= v46)
        {
          goto LABEL_65;
        }
      }
    }

    while (v48 < 0);
LABEL_65:
    ;
  }

  v49 = (i - 3);
  if (i - 3 == a1)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*v49);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v50 = *v49;
    a1[2] = *(i - 1);
    *a1 = v50;
    *(i - 1) = 0;
    *(i - 24) = 0;
  }

  v51 = v53;
  *(i - 1) = v54;
  *v49 = v51;
  return i;
}

char *sub_25638C1DC(__int128 *a1, unint64_t a2)
{
  v4 = 0;
  v52 = *(a1 + 2);
  v51 = *a1;
  v5 = HIBYTE(v52);
  v6 = *(&v51 + 1);
  v7 = v52 < 0;
  if (v52 >= 0)
  {
    v8 = &v51;
  }

  else
  {
    v8 = v51;
  }

  *(a1 + 8) = 0uLL;
  *a1 = 0;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  while (1)
  {
    v10 = *(a1 + v4 + 47);
    v11 = v10 >= 0 ? (a1 + v4 + 24) : *(a1 + v4 + 24);
    v12 = v10 >= 0 ? *(a1 + v4 + 47) : *(a1 + v4 + 32);
    v13 = v9 >= v12 ? v12 : v9;
    v14 = memcmp(v11, v8, v13);
    if (v14)
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_20;
    }

LABEL_8:
    v4 += 24;
  }

  if (v14 < 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  v15 = a1 + v4 + 24;
  if (v4)
  {
    v16 = a2 - 24;
    do
    {
      while (1)
      {
        a2 = v16;
        v17 = *(v16 + 23);
        v18 = (v17 & 0x80u) == 0 ? a2 : *a2;
        v19 = (v17 & 0x80u) == 0 ? v17 : *(a2 + 8);
        v20 = v9 >= v19 ? v19 : v9;
        v21 = memcmp(v18, v8, v20);
        v16 = a2 - 24;
        if (v21)
        {
          break;
        }

        if (v19 < v9)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v21 & 0x80000000) == 0);
  }

  else
  {
    do
    {
      if (v15 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 24;
        v41 = *(a2 + 23);
        v42 = v41 >= 0 ? a2 : *a2;
        v43 = v41 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v44 = v9 >= v43 ? v43 : v9;
        v45 = memcmp(v42, v8, v44);
        if (v45)
        {
          break;
        }

        if (v43 < v9 || v15 >= a2)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v45 & 0x80000000) == 0);
  }

LABEL_34:
  if (v15 >= a2)
  {
    v22 = v15;
  }

  else
  {
    v22 = v15;
    v23 = a2;
    do
    {
      v24 = *v22;
      v54 = *(v22 + 2);
      v53 = v24;
      v25 = *v23;
      *(v22 + 2) = *(v23 + 16);
      *v22 = v25;
      v26 = v53;
      *(v23 + 16) = v54;
      *v23 = v26;
      if (v52 >= 0)
      {
        v27 = &v51;
      }

      else
      {
        v27 = v51;
      }

      if (v52 >= 0)
      {
        v28 = HIBYTE(v52);
      }

      else
      {
        v28 = *(&v51 + 1);
      }

      v29 = v22 + 24;
      do
      {
        while (1)
        {
          v22 = v29;
          v30 = v29[23];
          v31 = (v30 & 0x80u) == 0 ? v22 : *v22;
          v32 = (v30 & 0x80u) == 0 ? v30 : *(v22 + 1);
          v33 = v28 >= v32 ? v32 : v28;
          v34 = memcmp(v31, v27, v33);
          v29 = v22 + 24;
          if (v34)
          {
            break;
          }

          if (v32 >= v28)
          {
            goto LABEL_56;
          }
        }
      }

      while (v34 < 0);
LABEL_56:
      v35 = v23 - 24;
      do
      {
        while (1)
        {
          v23 = v35;
          v36 = *(v35 + 23);
          v37 = (v36 & 0x80u) == 0 ? v23 : *v23;
          v38 = (v36 & 0x80u) == 0 ? v36 : *(v23 + 8);
          v39 = v28 >= v38 ? v38 : v28;
          v40 = memcmp(v37, v27, v39);
          v35 = v23 - 24;
          if (v40)
          {
            break;
          }

          if (v38 < v28)
          {
            goto LABEL_36;
          }
        }
      }

      while ((v40 & 0x80000000) == 0);
LABEL_36:
      ;
    }

    while (v22 < v23);
  }

  v47 = (v22 - 24);
  if (v22 - 24 == a1)
  {
    if (*(v22 - 1) < 0)
    {
      operator delete(*v47);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v48 = *v47;
    *(a1 + 2) = *(v22 - 1);
    *a1 = v48;
    *(v22 - 1) = 0;
    *(v22 - 24) = 0;
  }

  v49 = v51;
  *(v22 - 1) = v52;
  *v47 = v49;
  return v22 - 24;
}

BOOL sub_25638C4AC(__int128 *a1, const void **a2)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_25638B5AC(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        sub_25638B7F8(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        sub_25638B994(a1, (a1 + 24), a1 + 3, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = a2 - 3;
      if (v5 >= 0)
      {
        v7 = a2 - 3;
      }

      else
      {
        v7 = *(a2 - 3);
      }

      if (v5 >= 0)
      {
        v8 = *(a2 - 1);
      }

      else
      {
        v8 = *(a2 - 2);
      }

      v9 = *(a1 + 23);
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v9 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 1);
      }

      if (v11 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = v11;
      }

      v13 = memcmp(v7, v10, v12);
      if (v13)
      {
        if ((v13 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v8 >= v11)
      {
        return 1;
      }

      v35 = *(a1 + 2);
      v36 = *a1;
      v37 = v6[2];
      *a1 = *v6;
      *(a1 + 2) = v37;
      *v6 = v36;
      v6[2] = v35;
      return 1;
    }
  }

  v14 = (a1 + 3);
  sub_25638B5AC(a1, a1 + 3, a1 + 6);
  v15 = a1 + 9;
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (2)
  {
    v19 = *(v15 + 23);
    if (v19 >= 0)
    {
      v20 = v15;
    }

    else
    {
      v20 = *v15;
    }

    if (v19 >= 0)
    {
      v21 = *(v15 + 23);
    }

    else
    {
      v21 = v15[1];
    }

    v22 = *(v14 + 23);
    if (v22 >= 0)
    {
      v23 = v14;
    }

    else
    {
      v23 = *v14;
    }

    if (v22 >= 0)
    {
      v24 = *(v14 + 23);
    }

    else
    {
      v24 = *(v14 + 8);
    }

    if (v24 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    v26 = memcmp(v20, v23, v25);
    if (v26)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v21 >= v24)
    {
      goto LABEL_32;
    }

    v39 = *v15;
    v40 = v15[2];
    *v15 = 0;
    v15[1] = 0;
    v15[2] = *(v14 + 16);
    *v15 = *v14;
    *(v14 + 23) = 0;
    *v14 = 0;
    v27 = v16;
    while (1)
    {
      if (SHIBYTE(v40) >= 0)
      {
        v28 = &v39;
      }

      else
      {
        v28 = v39;
      }

      if (SHIBYTE(v40) >= 0)
      {
        v29 = HIBYTE(v40);
      }

      else
      {
        v29 = *(&v39 + 1);
      }

      v30 = *(a1 + v27 + 47);
      if (v30 >= 0)
      {
        v31 = a1 + v27 + 24;
      }

      else
      {
        v31 = *(a1 + v27 + 24);
      }

      if (v30 >= 0)
      {
        v32 = *(a1 + v27 + 47);
      }

      else
      {
        v32 = *(a1 + v27 + 32);
      }

      if (v32 >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = v32;
      }

      v34 = memcmp(v28, v31, v33);
      if (!v34)
      {
        if (v29 >= v32)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if ((v34 & 0x80000000) == 0)
      {
        break;
      }

LABEL_54:
      v14 -= 24;
      *(a1 + v27 + 48) = *(a1 + v27 + 24);
      *(a1 + v27 + 64) = *(a1 + v27 + 40);
      *(a1 + v27 + 47) = 0;
      *(a1 + v27 + 24) = 0;
      v27 -= 24;
      if (v27 == -48)
      {
        v14 = a1;
        goto LABEL_31;
      }
    }

    v14 = a1 + v27 + 48;
LABEL_31:
    v18 = v39;
    *(v14 + 16) = v40;
    *v14 = v18;
    if (++v17 != 8)
    {
LABEL_32:
      v14 = v15;
      v16 += 24;
      v15 += 3;
      if (v15 == a2)
      {
        return 1;
      }

      continue;
    }

    return v15 + 3 == a2;
  }
}

__n128 sub_25638C7C4(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v58 = v4;
  v59 = v5;
  if (((a3 - 2) >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v54 = (a3 - 2) >> 1;
  v8 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
  v9 = a1 + 24 * v8;
  v10 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
  if (v10 >= a3)
  {
    goto LABEL_21;
  }

  v11 = a4;
  v12 = (v9 + 24);
  v13 = *(v9 + 23);
  if (v13 >= 0)
  {
    v14 = (a1 + 24 * v8);
  }

  else
  {
    v14 = *v9;
  }

  if (v13 >= 0)
  {
    v15 = *(v9 + 23);
  }

  else
  {
    v15 = *(v9 + 8);
  }

  v16 = *(v9 + 47);
  if (v16 >= 0)
  {
    v17 = (v9 + 24);
  }

  else
  {
    v17 = *(v9 + 24);
  }

  if (v16 >= 0)
  {
    v18 = *(v9 + 47);
  }

  else
  {
    v18 = *(v9 + 32);
  }

  if (v18 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v20 = memcmp(v14, v17, v19);
  if (v20)
  {
    a4 = v11;
    if (v20 < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  a4 = v11;
  if (v15 >= v18)
  {
LABEL_21:
    v12 = (a1 + 24 * v8);
    v10 = v8;
  }

LABEL_22:
  v21 = *(v12 + 23);
  if (v21 >= 0)
  {
    v22 = v12;
  }

  else
  {
    v22 = *v12;
  }

  if (v21 >= 0)
  {
    v23 = *(v12 + 23);
  }

  else
  {
    v23 = v12[1];
  }

  v24 = *(a4 + 23);
  v25 = a4;
  if (v24 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  if (v24 >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = a4[1];
  }

  if (v27 >= v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v22, v26, v28);
  if (v29)
  {
    v31 = v25;
    v32 = v54;
    if (v29 < 0)
    {
      return result;
    }
  }

  else
  {
    v31 = v25;
    v32 = v54;
    if (v23 < v27)
    {
      return result;
    }
  }

  v56 = *v31;
  v57 = v31[1].n128_u64[0];
  v31->n128_u64[1] = 0;
  v31[1].n128_u64[0] = 0;
  v31->n128_u64[0] = 0;
  v33 = v12[2];
  *v31 = *v12;
  v31[1].n128_u64[0] = v33;
  *(v12 + 23) = 0;
  *v12 = 0;
  if (v32 >= v10)
  {
    v35 = &v56;
    if (SHIBYTE(v57) < 0)
    {
      v35 = v56.n128_u64[0];
    }

    __s2 = v35;
    if (SHIBYTE(v57) >= 0)
    {
      v36 = HIBYTE(v57);
    }

    else
    {
      v36 = v56.n128_u64[1];
    }

    while (1)
    {
      v38 = (2 * v10) | 1;
      v39 = a1 + 24 * v38;
      v10 = 2 * v10 + 2;
      if (v10 >= a3)
      {
        goto LABEL_70;
      }

      v34 = (v39 + 24);
      v40 = *(v39 + 23);
      v41 = v40 >= 0 ? (a1 + 24 * v38) : *v39;
      v42 = v40 >= 0 ? *(v39 + 23) : *(v39 + 8);
      v43 = *(v39 + 47);
      v44 = v43 >= 0 ? (v39 + 24) : *(v39 + 24);
      v45 = v43 >= 0 ? *(v39 + 47) : *(v39 + 32);
      v46 = v45 >= v42 ? v42 : v45;
      v47 = memcmp(v41, v44, v46);
      if (v47)
      {
        break;
      }

      v53 = v42 >= v45;
      v32 = v54;
      if (v53)
      {
        goto LABEL_70;
      }

LABEL_71:
      v48 = *(v34 + 23);
      if (v48 >= 0)
      {
        v49 = v34;
      }

      else
      {
        v49 = *v34;
      }

      if (v48 >= 0)
      {
        v50 = *(v34 + 23);
      }

      else
      {
        v50 = v34[1];
      }

      if (v36 >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = v36;
      }

      v52 = memcmp(v49, __s2, v51);
      if (v52)
      {
        if (v52 < 0)
        {
          goto LABEL_42;
        }
      }

      else if (v50 < v36)
      {
        goto LABEL_42;
      }

      v37 = *v34;
      v12[2] = v34[2];
      *v12 = v37;
      *(v34 + 23) = 0;
      *v34 = 0;
      v12 = v34;
      if (v32 < v10)
      {
        goto LABEL_43;
      }
    }

    v32 = v54;
    if (v47 < 0)
    {
      goto LABEL_71;
    }

LABEL_70:
    v34 = (a1 + 24 * v38);
    v10 = v38;
    goto LABEL_71;
  }

LABEL_42:
  v34 = v12;
LABEL_43:
  result = v56;
  v34[2] = v57;
  *v34 = result;
  return result;
}

void sub_25638CA88(uint64_t *result, _OWORD *a2, uint64_t a3)
{
  if (a2 - result >= 25)
  {
    v3 = a2;
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3);
    do
    {
      v7 = 0;
      v8 = result;
      v27 = *result;
      v29 = v3;
      *v30 = result[1];
      *&v30[7] = *(result + 15);
      v28 = *(result + 23);
      result[1] = 0;
      result[2] = 0;
      *result = 0;
      do
      {
        v10 = v8;
        v11 = v8 + 24 * v7;
        v8 = v11 + 24;
        v12 = 2 * v7;
        v7 = (2 * v7) | 1;
        v13 = v12 + 2;
        if (v12 + 2 < v4)
        {
          v16 = *(v11 + 48);
          v15 = v11 + 48;
          v14 = v16;
          v17 = *(v15 - 1);
          if (v17 >= 0)
          {
            v18 = v8;
          }

          else
          {
            v18 = *(v15 - 24);
          }

          if (v17 >= 0)
          {
            v19 = *(v15 - 1);
          }

          else
          {
            v19 = *(v15 - 16);
          }

          v20 = *(v15 + 23);
          if (v20 >= 0)
          {
            v21 = v15;
          }

          else
          {
            v21 = v14;
          }

          if (v20 >= 0)
          {
            v22 = *(v15 + 23);
          }

          else
          {
            v22 = *(v15 + 8);
          }

          if (v22 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v22;
          }

          v24 = memcmp(v18, v21, v23);
          if (v24)
          {
            if (v24 < 0)
            {
              goto LABEL_7;
            }
          }

          else if (v19 < v22)
          {
LABEL_7:
            v8 = v15;
            v7 = v13;
          }
        }

        v9 = *v8;
        *(v10 + 16) = *(v8 + 16);
        *v10 = v9;
        *(v8 + 23) = 0;
        *v8 = 0;
      }

      while (v7 <= ((v4 - 2) >> 1));
      v3 = (v3 - 24);
      if (v8 == (v29 - 24))
      {
        *v8 = v27;
        *(v8 + 8) = *v30;
        *(v8 + 15) = *&v30[7];
        *(v8 + 23) = v28;
      }

      else
      {
        v5 = *v3;
        *(v8 + 16) = *(v29 - 1);
        *v8 = v5;
        *(v29 - 3) = v27;
        *(v29 - 2) = *v30;
        *(v29 - 9) = *&v30[7];
        *(v29 - 1) = v28;
        sub_25638CC98(result, v8 + 24, a3, 0xAAAAAAAAAAAAAAABLL * ((v8 + 24 - result) >> 3));
      }
    }

    while (v4-- > 2);
  }
}

__n128 sub_25638CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 24 * (v4 >> 1));
    v8 = (a2 - 24);
    v9 = v7[1].n128_i8[7];
    if (v9 >= 0)
    {
      v10 = (a1 + 24 * (v4 >> 1));
    }

    else
    {
      v10 = v7->n128_u64[0];
    }

    if (v9 >= 0)
    {
      v11 = v7[1].n128_u8[7];
    }

    else
    {
      v11 = v7->n128_u64[1];
    }

    v12 = *(a2 - 1);
    if (v12 >= 0)
    {
      v13 = (a2 - 24);
    }

    else
    {
      v13 = *(a2 - 24);
    }

    if (v12 >= 0)
    {
      v14 = v8[1].n128_u8[7];
    }

    else
    {
      v14 = v8->n128_u64[1];
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = memcmp(v10, v13, v15);
    if (v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v11 >= v14)
    {
      return result;
    }

    v32 = v8[1].n128_u64[0];
    v18 = v32;
    v31 = *v8;
    v8->n128_u64[1] = 0;
    v8[1].n128_u64[0] = 0;
    v8->n128_u64[0] = 0;
    v19 = HIBYTE(v18);
    if ((v19 & 0x80u) == 0)
    {
      v20 = &v31;
    }

    else
    {
      v20 = v31.n128_u64[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v31.n128_u64[1];
    }

    v22 = *v7;
    v8[1].n128_u64[0] = v7[1].n128_u64[0];
    *v8 = v22;
    v7[1].n128_u8[7] = 0;
    v7->n128_u8[0] = 0;
    if (v4 >= 2)
    {
      while (1)
      {
        v24 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v25 = (a1 + 24 * v6);
        v26 = v25[1].n128_i8[7];
        if (v26 >= 0)
        {
          v27 = (a1 + 24 * v6);
        }

        else
        {
          v27 = v25->n128_u64[0];
        }

        if (v26 >= 0)
        {
          v28 = v25[1].n128_u8[7];
        }

        else
        {
          v28 = v25->n128_u64[1];
        }

        if (v21 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v21;
        }

        v30 = memcmp(v27, v20, v29);
        if (v30)
        {
          if ((v30 & 0x80000000) == 0)
          {
            break;
          }
        }

        else if (v28 >= v21)
        {
          break;
        }

        v23 = *v25;
        v7[1].n128_u64[0] = v25[1].n128_u64[0];
        *v7 = v23;
        v25[1].n128_u8[7] = 0;
        v25->n128_u8[0] = 0;
        v7 = (a1 + 24 * v6);
        if (v24 <= 1)
        {
          goto LABEL_43;
        }
      }
    }

    v25 = v7;
LABEL_43:
    result = v31;
    v25[1].n128_u64[0] = v32;
    *v25 = result;
  }

  return result;
}

void sub_25638CE24(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_2563895F4();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_25638ADA8();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_25638CF78(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 6)
  {
    if (a2)
    {
      v10 = a2 << 6;
      bzero(*(a1 + 8), a2 << 6);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 6) + a2;
    if (v7 >> 58)
    {
      sub_2563895F4();
    }

    v8 = v3 - v5;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 58))
      {
        operator new();
      }

      sub_25638ADA8();
    }

    v11 = (v6 >> 6 << 6);
    v12 = a2 << 6;
    bzero(v11, a2 << 6);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_25638D0CC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_25638D0CC(a1, *a2);
    sub_25638D0CC(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t *sub_25638D130(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_27:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      v13 = v12 >= 0 ? v9 : v10;
      v14 = v12 >= 0 ? *(v9 + 23) : v9[1];
      v15 = (v14 >= v7 ? v7 : v14);
      v16 = memcmp(v6, v13, v15);
      if (v16)
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_22;
      }

LABEL_8:
      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_27;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v17 = memcmp(v13, v6, v15);
    if (v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
        return v8;
      }

      goto LABEL_26;
    }

    if (v14 >= v7)
    {
      return v8;
    }

LABEL_26:
    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_27;
    }
  }
}

void sub_25638D2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_25638D518(va);
  _Unwind_Resume(a1);
}

void *sub_25638D2E0(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2563894A4();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t *sub_25638D37C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = *(v2 + 8);
            v11 = *v10;
            *(v2 + 8) = *v10;
            v12 = v2;
            if (v11)
            {
              *(v11 + 16) = v2;
              v3 = *(v2 + 16);
              v12 = *v3;
            }

            *(v10 + 16) = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            *(v2 + 16) = v10;
            v3 = *(v10 + 16);
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            *(v2 + 16) = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_25638D518(void *a1)
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

uint64_t *sub_25638D580(uint64_t a1, const void **a2)
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
  if (!v17)
  {
    if (v6 >= v15)
    {
      return v7;
    }

    return v2;
  }

  if (v17 < 0)
  {
    return v2;
  }

  return v7;
}

void sub_25638D688(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_25638D6B0(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_2563894A4();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&__p, v2, v3);
  }

  __p.__r_.__value_.__s.__data_[v4] = 0;
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = size;
  do
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = p_p->__r_.__value_.__s.__data_[--v7];
  }

  while (v8 != 47);
  if (v7 == -1)
  {
LABEL_26:
    v20 = 0;
    v10 = __dst;
  }

  else
  {
    if (size >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = size;
    }

    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2563894A4();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v20 = v9;
    if (v9)
    {
      memmove(__dst, p_p, v9);
    }

    v10 = __dst + v9;
  }

  *v10 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = getenv("__UNOWUD_RT");
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = "";
  }

  v13 = strlen(v12);
  if (v13 <= 0x7FFFFFFFFFFFFFF7)
  {
    v14 = v13;
    if (v13 < 0x17)
    {
      *(&__p.__r_.__value_.__s + 23) = v13;
      if (v13)
      {
        memmove(&__p, v12, v13);
      }

      __p.__r_.__value_.__s.__data_[v14] = 0;
      std::string::append(&__p, " --load-constant-path=", 0x16uLL);
      if ((v20 & 0x80u) == 0)
      {
        v15 = __dst;
      }

      else
      {
        v15 = __dst[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v16 = v20;
      }

      else
      {
        v16 = __dst[1];
      }

      std::string::append(&__p, v15, v16);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p.__r_.__value_.__r.__words[0];
      }

      setenv("__UNOWUD_RT", v17, 1);
      operator new();
    }

    operator new();
  }

  sub_2563894A4();
}

void sub_25638DA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 + 8);
  *(v20 + 8) = 0;
  if (v22)
  {
    sub_25639A750(v22);
  }

  sub_25639AB38();
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25638DAA8(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = mlc_binary_create();
  *(a1 + 40) = v2;
  if (!v2)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  mlc_binary_error();
  v3 = 1;
  sub_25638DC5C((a1 + 16), &__p);
  v4 = std::string::append(&__p, ".dylib", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12 = v4->__r_.__value_.__r.__words[2];
  *buf = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mlc_binary_set_kernel_dylib();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }

  return v3;
}

void sub_25638DC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_25638DC5C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 23);
  v5 = result[1];
  if ((v4 & 0x80u) == 0)
  {
    v6 = *(result + 23);
  }

  else
  {
    v6 = result[1];
  }

  if (!v6 || ((v7 = *result, (v4 & 0x80u) == 0) ? (v8 = result) : (v8 = *result), (result = memchr(v8, 58, v6), v9 = (result - v8), result) ? (v10 = v9 + 1 == 0) : (v10 = 1), v10))
  {
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = v9 + 2;
    if ((v4 & 0x80) == 0)
    {
      if (v11 < v4)
      {
        v12 = v9 + 3;
        if ((v9 + 3) > v4)
        {
LABEL_32:
          sub_25638954C();
        }

        goto LABEL_22;
      }

LABEL_14:
      *a2 = *v2;
      a2[2] = v2[2];
      return result;
    }

    if (v5 > v11)
    {
      v12 = v9 + 3;
      if (v5 < (v9 + 3))
      {
        goto LABEL_32;
      }

      v4 = v5;
      v2 = v7;
LABEL_22:
      v13 = v4 - v12;
      if (v4 - v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2563894A4();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      *(a2 + 23) = v13;
      if (v4 != v12)
      {
        result = memmove(a2, &v12[v2], v4 - v12);
      }

      *(a2 + v13) = 0;
      return result;
    }
  }

  v14 = *v2;

  return sub_25638D2E0(a2, v14, v5);
}

void sub_25638DDE0(uint64_t a1)
{
  *a1 = &unk_286856130;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  nullsub_1();
}

void sub_25638DE70(uint64_t a1)
{
  *a1 = &unk_286856130;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  nullsub_1();

  JUMPOUT(0x259C617A0);
}

uint64_t sub_25638DF14(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = mlc_binary_n_inputs();
  v15 = mlc_binary_n_outputs();
  v23 = a1;
  v30[0] = &unk_2868561A8;
  v30[1] = MEMORY[0x277D25068];
  v31 = v30;
  v28[0] = &unk_2868561F0;
  v28[1] = MEMORY[0x277D25078];
  v29 = v28;
  if (v14 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v14;
  }

  sub_25638E29C(&v23, v30, v28, a3, a4, v16);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
  }

  else if (v29)
  {
    (*(*v29 + 40))(v29);
  }

  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    (*(*v31 + 40))(v31);
  }

  v26[0] = &unk_2868561A8;
  v26[1] = MEMORY[0x277D25070];
  v27 = v26;
  v24[0] = &unk_2868561F0;
  v24[1] = MEMORY[0x277D25078];
  v25 = v24;
  if (v15 >= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = v15;
  }

  sub_25638E29C(&v23, v26, v24, a6, a7, v17);
  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
  }

  else if (v25)
  {
    (*(*v25 + 40))(v25, v18, v19);
  }

  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27, v18, v19);
  }

  v21 = v14 == a2 && v15 == a5;
  a1[50] = v21;
  a1[48] = 0;
  return sub_25638E670(a1);
}

void sub_25638E26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_25638E570(va);
  sub_25638E5F0(va1);
  _Unwind_Resume(a1);
}

void sub_25638E29C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  if (a6)
  {
    for (i = 0; i != a6; ++i)
    {
      __p[0] = *(v6 + 40);
      *&__dst = i;
      v12 = *(a2 + 24);
      if (!v12)
      {
        sub_25638EE18();
      }

      (*(*v12 + 48))(v12, __p, &__dst);
      v13 = mlc_tensor_name();
      v14 = strlen(v13);
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2563894A4();
      }

      v15 = v14;
      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v29) = v14;
      if (v14)
      {
        memmove(&__dst, v13, v14);
      }

      *(&__dst + v15) = 0;
      *__p = __dst;
      v31 = v29;
      v32 = i;
      sub_25638EE64(&v33, __p, __p);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v16 = 0;
    v17 = v33;
    do
    {
      v18 = *(v17 + 14);
      __p[0] = *(v6 + 40);
      *&__dst = v18;
      v19 = *(a2 + 24);
      if (!v19 || (v20 = (*(*v19 + 48))(v19, __p, &__dst), v21 = *(a4 + 8 * v16), v22 = *(a5 + 8 * v16), __p[0] = v20, *&__dst = v21, v35 = v22, (v23 = *(a3 + 24)) == 0))
      {
        sub_25638EE18();
      }

      (*(*v23 + 48))(v23, __p, &__dst, &v35);
      mlc_tensor_event();
      mlc_event_record();
      v24 = v17[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v17[2];
          v26 = *v25 == v17;
          v17 = v25;
        }

        while (!v26);
      }

      ++v16;
      v17 = v25;
    }

    while (v16 != a6);
  }

  sub_25638D0CC(&v33, v34[0]);
}

uint64_t sub_25638E570(uint64_t a1)
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

uint64_t sub_25638E5F0(uint64_t a1)
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

uint64_t sub_25638E670(_BYTE *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((a1[48] & 1) != 0 || a1[49] != 1 || a1[50] != 1)
  {
    return 1;
  }

  mlc_binary_validate();
  mlc_binary_error();
  result = 1;
  a1[48] = 1;
  return result;
}

uint64_t sub_25638E7AC(_BYTE *a1)
{
  mlc_binary_load_sync();
  mlc_binary_error();
  a1[49] = 1;
  return sub_25638E670(a1);
}

BOOL sub_25638E8B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!sub_25638EA6C(a1, a2))
  {
    v13 = os_log_create("com.apple.mlcompiler.service", "ExecutionInProcess");
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v19 = 136315138;
    v20 = a2;
    v15 = "No tensor named '%s' in the inputs or outputs of the binary";
    v16 = v13;
    v17 = 12;
LABEL_13:
    _os_log_impl(&dword_256385000, v16, OS_LOG_TYPE_DEFAULT, v15, &v19, v17);
    return 0;
  }

  if (mlc_tensor_rank() != a3)
  {
    v18 = os_log_create("com.apple.mlcompiler.service", "ExecutionInProcess");
    result = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v19 = 136315394;
    v20 = a2;
    v21 = 2048;
    v22 = a3;
    v15 = "Tensor '%s' is not rank %zu";
    v16 = v18;
    v17 = 22;
    goto LABEL_13;
  }

  if (a3)
  {
    v9 = 0;
    do
    {
      *(a4 + 8 * v9) = mlc_tensor_dimension();
      v11 = mlc_tensor_stride();
      v12 = mlc_tensor_type();
      if (v12 <= 0xC)
      {
        v10 = qword_25639C3F8[v12];
      }

      else
      {
        v10 = 0;
      }

      *(a5 + 8 * v9++) = v10 * v11;
    }

    while (a3 != v9);
  }

  return 1;
}

uint64_t sub_25638EA6C(uint64_t a1, const char *a2)
{
  v3 = mlc_binary_n_inputs();
  v4 = mlc_binary_n_outputs();
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      v6 = mlc_binary_input();
      v7 = mlc_tensor_name();
      v8 = strlen(v7);
      if (!strncmp(a2, v7, v8))
      {
        break;
      }

      if (v3 == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v4)
    {
      v9 = 0;
      while (1)
      {
        v6 = mlc_binary_output();
        v10 = mlc_tensor_name();
        v11 = strlen(v10);
        if (!strncmp(a2, v10, v11))
        {
          break;
        }

        if (v4 == ++v9)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_25638EB50(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!sub_25638EA6C(a1, a2))
  {
    v13 = os_log_create("com.apple.mlcompiler.service", "ExecutionInProcess");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = a2;
      v14 = "No tensor named '%s' in the inputs or outputs of the binary";
LABEL_17:
      v15 = v13;
      v16 = 12;
LABEL_18:
      _os_log_impl(&dword_256385000, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    }

    return 0;
  }

  if (mlc_tensor_rank() != a3)
  {
    v13 = os_log_create("com.apple.mlcompiler.service", "ExecutionInProcess");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = a2;
      v14 = "Cannot change rank of tensor '%s'";
      goto LABEL_17;
    }

    return 0;
  }

  a1[48] = 0;
  if (a3)
  {
    v9 = 0;
    while (1)
    {
      mlc_tensor_set_dimension();
      v10 = mlc_tensor_type();
      v11 = v10 > 0xC ? 0 : qword_25639C3F8[v10];
      if ((*(a5 + 8 * v9) & (v11 - 1)) != 0)
      {
        break;
      }

      mlc_tensor_set_stride();
      if (a3 == ++v9)
      {
        goto LABEL_10;
      }
    }

    v17 = os_log_create("com.apple.mlcompiler.service", "ExecutionInProcess");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v18 = *(a5 + 8 * v9);
    v19 = 134218496;
    v20 = v18;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v18 % v11;
    v14 = "Strides must be in multiples of the element size (stride %lld mod element size %lld == %lld)";
    v15 = v17;
    v16 = 32;
    goto LABEL_18;
  }

LABEL_10:

  return sub_25638E670(a1);
}

uint64_t sub_25638EDDC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    mlc_binary_destroy();
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  return 1;
}

void sub_25638EE18()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, &unk_286856180, MEMORY[0x277D82660]);
}

uint64_t *sub_25638EE64(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_27:
    operator new();
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

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      v12 = v11 >= 0 ? v8 : v9;
      v13 = v11 >= 0 ? *(v8 + 23) : v8[1];
      v14 = (v13 >= v6 ? v6 : v13);
      v15 = memcmp(v5, v12, v14);
      if (v15)
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_22;
      }

LABEL_8:
      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_27;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v16 = memcmp(v12, v5, v14);
    if (v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        return v7;
      }

      goto LABEL_26;
    }

    if (v13 >= v6)
    {
      return v7;
    }

LABEL_26:
    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_27;
    }
  }
}

void sub_25638F000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_25638D518(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25638F084(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868561A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_25638F130(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868561F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_25638F170(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = 4;
  strcpy(__p, "main");
  v1 = sub_256393D38(v6, a1, __p);
  if ((v5 & 0x80000000) == 0)
  {
    if (!v1)
    {
      goto LABEL_6;
    }

LABEL_5:
    operator new();
  }

  v2 = v1;
  operator delete(__p[0]);
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_256394220(v6);
  return 0;
}

void sub_25638F2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_256394220(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_25638F328(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  *(a1 + 80) = 0;
  v7 = a5 + a2;
  if (!(a5 + a2))
  {
    *(a1 + 82) = 1;
LABEL_14:
    result = 1;
    if (*(a1 + 81) == 1)
    {
      *(a1 + 80) = 1;
    }

    return result;
  }

  if (a2)
  {
    v11 = a3;
  }

  else
  {
    v11 = a6;
  }

  v12 = (*(a1 + 56))(*(a1 + 24), 0, *v11, a4);
  result = 0;
  if (!v12)
  {
    v14 = &a6[-a2 + 1];
    v15 = a3 + 1;
    v16 = 1;
    while (v7 != v16)
    {
      if (v16 >= a2)
      {
        v17 = v14;
      }

      else
      {
        v17 = v15;
      }

      v18 = (*(a1 + 56))(*(a1 + 24), v16++, *v17);
      ++v14;
      ++v15;
      if (v18)
      {
        return v16 - 1 >= v7;
      }
    }

    v19 = *(a1 + 80);
    result = 1;
    *(a1 + 82) = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_25638F430(uint64_t a1)
{
  sub_256394150(a1 + 16);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x259C61780](v2, 0x1000C8077774924);
  }

  *(a1 + 80) = 0;
  *(a1 + 82) = 0;
  return 1;
}

void sub_25638F484(void *a1)
{
  *a1 = &unk_286856238;
  sub_256394220((a1 + 2));
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x259C61780](v2, 0x1000C8077774924);
  }

  nullsub_1();
}

void sub_25638F4F8(void *a1)
{
  *a1 = &unk_286856238;
  sub_256394220((a1 + 2));
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x259C61780](v2, 0x1000C8077774924);
  }

  nullsub_1();

  JUMPOUT(0x259C617A0);
}

char *mlc_services_compile(unsigned int a1, uint64_t a2)
{
  memset(&v24, 0, sizeof(v24));
  if (a1 >= 2)
  {
    v2 = a1 - 1;
    v3 = (a2 + 8);
    do
    {
      v4 = *v3;
      v5 = strlen(*v3);
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2563894A4();
      }

      v6 = v5;
      if (v5 >= 0x17)
      {
        operator new();
      }

      v21 = v5;
      if (v5)
      {
        memmove(&__dst, v4, v5);
      }

      *(&__dst + v6) = 0;
      if ((v21 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if ((v21 & 0x80u) == 0)
      {
        v8 = v21;
      }

      else
      {
        v8 = v20;
      }

      std::string::append(&v24, p_dst, v8);
      if (v21 < 0)
      {
        operator delete(__dst);
      }

      std::string::append(&v24, " ", 1uLL);
      ++v3;
      --v2;
    }

    while (v2);
  }

  sub_256395AD4(&__dst);
  sub_25639846C(&__dst, &v24);
  v26 = 10;
  strcpy(key, "bnns-graph");
  v9 = sub_2563982FC(&__dst, key);
  if (v26 < 0)
  {
    v11 = v9;
    operator delete(*key);
    if (v11)
    {
      goto LABEL_20;
    }

LABEL_22:
    memset(v18, 0, sizeof(v18));
    *key = v18;
    key[8] = 0;
    if (a1)
    {
      if ((a1 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_2563895F4();
    }

    operator new();
  }

  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_20:
  v10 = sub_2563905A8(&__dst);
  __dst = &unk_2868562B8;
  sub_25638D0CC(v23, v23[1]);
  v12 = v22;
  if (v22)
  {
    do
    {
      v13 = *v12;
      v14 = *(v12 + 16);
      if (v14 != -1)
      {
        (off_2868562D8[v14])(key, v12 + 5);
      }

      *(v12 + 16) = -1;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = v20;
  v20 = 0;
  if (v15)
  {
    operator delete(v15);
  }

  nullsub_1();
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_25638FBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34)
{
  sub_25639005C((v34 - 128));
  sub_256390478(&a14);
  if (a31 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

const char *mlc_services_compile_to_cache()
{
  v0 = os_log_create("com.apple.mlcompiler.service", "Compilation");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_25639AB6C(v0);
  }

  return "function no longer supported";
}

void sub_25638FD70(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2563895F4();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_25638ADA8();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

_BYTE *sub_25638FECC(uint64_t a1, const char **a2, const char **a3, _BYTE *a4)
{
  v4 = a4;
  v11 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = strlen(*v6);
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2563894A4();
      }

      v9 = v8;
      if (v8 >= 0x17)
      {
        operator new();
      }

      v4[23] = v8;
      if (v8)
      {
        memmove(v4, v7, v8);
      }

      v4[v9] = 0;
      ++v6;
      v4 = v11 + 24;
      v11 += 24;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t sub_25638FFFC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_25639005C(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

xpc_object_t sub_2563900E4(uint64_t a1, void *a2)
{
  empty = xpc_dictionary_create_empty();
  v17 = empty;
  v5 = xpc_array_create_empty();
  v16 = v5;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2563895F4();
  }

  sub_25639033C(v5, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v12 = 2;
  strcpy(key, "fc");
  v7 = xpc_uint64_create(a1);
  v9[0] = v7;
  xpc_dictionary_set_value(empty, key, v7);
  if (v7)
  {
    xpc_release(v7);
  }

  v10 = 4;
  strcpy(v9, "args");
  xpc_dictionary_set_value(empty, v9, v5);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_10:
      v17 = 0;
      if (!v5)
      {
        return empty;
      }

      goto LABEL_14;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*key);
  v17 = 0;
  if (v5)
  {
LABEL_14:
    xpc_release(v5);
  }

  return empty;
}

void sub_256390260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_256390308((v23 - 64));
  sub_2563902D4((v23 - 56));
  _Unwind_Resume(a1);
}

void **sub_2563902D4(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    xpc_release(v2);
  }

  return a1;
}

void **sub_256390308(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    xpc_release(v2);
  }

  return a1;
}

void sub_25639033C(void *a1, const char ***a2)
{
  empty = xpc_array_create_empty();
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    v7 = xpc_string_create(*v5);
    xpc_array_append_value(empty, v7);
    if (v7)
    {
      xpc_release(v7);
    }

    ++v5;
  }

  xpc_array_append_value(a1, empty);
  if (empty)
  {
    xpc_release(empty);
  }
}

void ***sub_256390404(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_256390478(uint64_t a1)
{
  *a1 = &unk_2868562B8;
  sub_25638D0CC(a1 + 48, *(a1 + 56));
  sub_2563904DC(a1 + 8);

  nullsub_1();
}

uint64_t sub_2563904DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 16);
      if (v4 != -1)
      {
        (off_2868562D8[v4])(&v7, v2 + 5);
      }

      *(v2 + 16) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_256390594(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

char *sub_2563905A8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = BNNSGraphCompileOptionsMakeDefault();
  v8[1] = v2;
  v7 = v8;
  v10 = 9;
  strcpy(__p, "n-threads");
  v3 = sub_2563983AC(a1, __p);
  if (v10 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  if (v3 == 1)
  {
LABEL_6:
    BNNSGraphCompileOptionsSetTargetSingleThread();
    operator new();
  }

  v5 = strdup("When using --bnns-graph, --n-threads must be either 0 (automatic) or 1");
  BNNSGraphCompileOptionsDestroy();
  return v5;
}

void sub_25639152C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_256391E94(&a67, &off_286856368);
  MEMORY[0x259C61750](a10);
  if (a2 == 2)
  {
    v69 = __cxa_begin_catch(a1);
    v70 = (*(*v69 + 16))(v69);
    strdup(v70);
    __cxa_end_catch();
    JUMPOUT(0x2563912FCLL);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_256393878(&STACK[0x390]);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  sub_256391C68(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_256391854(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x277D82828] + 16);
  v5 = *(MEMORY[0x277D82828] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C61700](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_2563925EC(v3);
  return a1;
}

void sub_2563919FC(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x259C61750](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_256391A40(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x259C61750](a1 + 112);
  return a1;
}

void sub_256391B60(const std::__fs::filesystem::path *a1@<X0>, const std::__fs::filesystem::path *a2@<X1>, std::__fs::filesystem::path *a3@<X8>)
{
  std::__fs::filesystem::__weakly_canonical(&v6, a1, 0);
  std::__fs::filesystem::__weakly_canonical(&__p, a2, 0);
  std::__fs::filesystem::path::lexically_relative(a3, &v6, &__p);
  if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }
}

void sub_256391BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t *sub_256391C30(uint64_t *a1)
{
  v2 = sub_256391E94(a1, &off_286856368);
  MEMORY[0x259C61750](v2 + 432);
  return a1;
}

void *sub_256391C9C(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_2563894A4();
  }

  *(__dst + 23) = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **sub_256391D6C(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    sub_2563894A4();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

uint64_t sub_256391E94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[8];
  a1[2] = a2[9];
  MEMORY[0x259C615B0](a1 + 3);

  return std::iostream::~basic_iostream();
}

void sub_256391F90(void *a1)
{
  *(a1 - 2) = &unk_286856308;
  a1[52] = &unk_286856358;
  *a1 = &unk_286856330;
  MEMORY[0x259C615B0](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x259C61750);
}

void sub_256392034(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_286856308;
  v1[54] = &unk_286856358;
  v1[2] = &unk_286856330;
  MEMORY[0x259C615B0](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x259C61750);
}

void sub_2563920F4(void *a1)
{
  *a1 = &unk_286856308;
  v1 = a1 + 54;
  a1[54] = &unk_286856358;
  a1[2] = &unk_286856330;
  MEMORY[0x259C615B0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x259C61750](v1);

  JUMPOUT(0x259C617A0);
}

void sub_2563921B8(void *a1)
{
  *(a1 - 2) = &unk_286856308;
  v1 = a1 + 52;
  a1[52] = &unk_286856358;
  *a1 = &unk_286856330;
  MEMORY[0x259C615B0](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x259C61750](v1);

  JUMPOUT(0x259C617A0);
}

void sub_256392274(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_286856308;
  v1[54] = &unk_286856358;
  v1[2] = &unk_286856330;
  MEMORY[0x259C615B0](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x259C61750](v1 + 54);

  JUMPOUT(0x259C617A0);
}

std::string *sub_25639234C(std::string *this, std::string *a2, std::string *a3)
{
  v4 = a3 - a2;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v5 = v9 >> 63;
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    LODWORD(v5) = 0;
    v6 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v8 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) > a2)
  {
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_33;
    }

    if (v4 > 0x16)
    {
      operator new();
    }

    v17 = a3 - a2;
    if (a3 != a2)
    {
      memcpy(__dst, a2, v4);
    }

    *(__dst + v4) = 0;
    if ((v17 & 0x80u) == 0)
    {
      v13 = __dst;
    }

    else
    {
      v13 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = __dst[1];
    }

    std::string::append(this, v13, v14);
    if (v17 < 0)
    {
      operator delete(__dst[0]);
    }

    return this;
  }

LABEL_12:
  if (v6 - size < v4)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 >= v4 + size - v6)
    {
      operator new();
    }

LABEL_33:
    sub_2563894A4();
  }

  v10 = this;
  if (v5)
  {
    v10 = this->__r_.__value_.__r.__words[0];
  }

  v11 = v10 + size;
  if (a3 != a2)
  {
    memmove(v10 + size, a2, v4);
  }

  v11[v4] = 0;
  v12 = v4 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v12;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v12 & 0x7F;
  }

  return this;
}

void sub_2563925D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2563925EC(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *sub_256392734(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C61610](v14, a1);
  if (v14[0] == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = v6[1].__fmtflags_;
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((fmtflags & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_2563928E0(rdbuf, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C61620](v14);
  return a1;
}

void sub_256392878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C61620](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x256392858);
}

uint64_t sub_2563928E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2563894A4();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_256392AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_256392ADC(void *a1, _BYTE *a2, _BYTE *a3, std::string::value_type __c, std::string::value_type a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  for (; a2 != a3; ++a2)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  result = sub_256392734(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = result;
    operator delete(v15.__r_.__value_.__l.__data_);
    return v14;
  }

  return result;
}

void sub_256392BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *mlc_services_validate(uint64_t a1, const __CFDictionary *a2)
{
  sub_25639A38C(&v6, a2, a1);
  if (v6)
  {
    return sub_25639A500(v6);
  }

  if (BYTE8(v7))
  {
    v8 = v6;
    v9 = v7;
    return sub_25639A62C(&v8);
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v5 = off_27F832E58;
    v14 = off_27F832E58;
    if (!off_27F832E58)
    {
      *&v8 = MEMORY[0x277D85DD0];
      *(&v8 + 1) = 0x40000000;
      *&v9 = sub_256392D0C;
      *(&v9 + 1) = &unk_279836918;
      v10 = &v11;
      sub_256392D0C(&v8);
      v5 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v5)
    {
      sub_25639ABF0();
    }

    return v5(a1, a2);
  }
}

void *sub_256392D0C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_27F832E60)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 0x40000000;
    v6[3] = sub_256392E54;
    v6[4] = &unk_279836950;
    v6[5] = v6;
    v7 = xmmword_279836938;
    v8 = 0;
    qword_27F832E60 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_27F832E60;
    if (qword_27F832E60)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_27F832E60;
LABEL_5:
  result = dlsym(v2, "mlc_model_validate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27F832E58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_256392E54(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27F832E60 = result;
  return result;
}

FILE *sub_256392EC8@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = fopen(a1, "r");
  if (result)
  {
    v4 = result;
    fseek(result, 0, 2);
    MEMORY[0x259C61990](v4);
    fseek(v4, 0, 0);
    fileno(v4);
    operator new();
  }

  *a2 = 0;
  return result;
}

void sub_256392FDC(_Unwind_Exception *a1)
{
  MEMORY[0x259C617A0](v2, 0x1081C40CC6EE3FDLL);
  fclose(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_256393010(uint64_t a1)
{
  *a1 = &unk_2868564E0;
  munmap(*(a1 + 8), *(a1 + 16));
  return a1;
}

void sub_256393060(uint64_t a1)
{
  *a1 = &unk_2868564E0;
  munmap(*(a1 + 8), *(a1 + 16));

  JUMPOUT(0x259C617A0);
}

void sub_2563930D0(const char *a1)
{
  v2 = a1[23];
  v3 = *(a1 + 1);
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  do
  {
    if (!v5)
    {
      break;
    }

    v6 = a1[--v5];
  }

  while (v6 != 88);
  strdup(a1);
  operator new();
}

void sub_2563932A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_256393CCC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_256393300(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x259C615B0](a1 + 1);

  return std::ostream::~ostream();
}

void sub_2563933C8(uint64_t a1, const char *a2, char a3)
{
  *(a1 + 496) = 0;
  *a1 = &unk_2868565D8;
  *(a1 + 448) = &unk_286856600;
  std::ios_base::init((a1 + 448), (a1 + 8));
  *(a1 + 584) = 0;
  *(a1 + 592) = -1;
  *a1 = off_286856588;
  *(a1 + 448) = off_2868565B0;
  MEMORY[0x259C615A0](a1 + 8);
  *a1 = &unk_286856508;
  *(a1 + 448) = &unk_286856530;
  sub_2563930D0(a2);
}

void sub_256393608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 439) < 0)
  {
    operator delete(*v17);
  }

  sub_256393300(v16, &off_286856548);
  MEMORY[0x259C61750](v15);
  _Unwind_Resume(a1);
}

uint64_t sub_256393680(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[5];
  if ((*(a1 + 440) & 1) == 0)
  {
    std::__fs::filesystem::__status((a1 + 416), 0);
    if (v11)
    {
      if (v11 != 255 && !std::__fs::filesystem::__remove((a1 + 416), 0))
      {
        v5 = sub_256392734(MEMORY[0x277D82670], "MLC temp file: error deleting '", 31);
        v6 = v5;
        v7 = *(a1 + 439);
        if ((v7 & 0x80u) == 0)
        {
          v8 = (a1 + 416);
        }

        else
        {
          v8 = *(a1 + 416);
        }

        if ((v7 & 0x80u) != 0)
        {
          v7 = *(a1 + 424);
        }

        sub_256392ADC(v5, v8, &v8[v7], 34, 92);
        sub_256392734(v6, "'\n", 2);
      }
    }
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v9 = a2[1];
  *a1 = v9;
  *(a1 + *(v9 - 24)) = a2[4];
  MEMORY[0x259C615B0](a1 + 8);
  return std::ostream::~ostream();
}

uint64_t sub_256393878(uint64_t a1)
{
  v2 = sub_256393680(a1, &off_286856540);
  MEMORY[0x259C61750](v2 + 448);
  return a1;
}

void sub_2563938B0(void *a1)
{
  sub_256393680(a1 + *(*a1 - 24), &off_286856540);

  JUMPOUT(0x259C61750);
}

void sub_2563938FC(uint64_t a1)
{
  v1 = sub_256393680(a1, &off_286856540);
  MEMORY[0x259C61750](v1 + 448);

  JUMPOUT(0x259C617A0);
}

void sub_256393954(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_256393680(v1, &off_286856540);
  MEMORY[0x259C61750](v1 + 448);

  JUMPOUT(0x259C617A0);
}

char *sub_2563939C4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[439] < 0)
  {
    return sub_25638D2E0(a2, *(result + 52), *(result + 53));
  }

  *a2 = *(result + 26);
  *(a2 + 16) = *(result + 54);
  return result;
}

void *sub_2563939EC(void *a1)
{
  *a1 = MEMORY[0x277D82860] + 24;
  v2 = a1 + 52;
  a1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x259C615B0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x259C61750](v2);
  return a1;
}

void sub_256393A70(void *a1)
{
  *a1 = MEMORY[0x277D82860] + 24;
  v1 = a1 + 52;
  a1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x259C615B0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x259C61750](v1);

  JUMPOUT(0x259C617A0);
}

void sub_256393B14(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = MEMORY[0x277D82860] + 24;
  v1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x259C615B0](v1 + 1);
  std::ostream::~ostream();

  JUMPOUT(0x259C61750);
}

void sub_256393BB4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = MEMORY[0x277D82860] + 24;
  v1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x259C615B0](v1 + 1);
  std::ostream::~ostream();
  MEMORY[0x259C61750](v1 + 52);

  JUMPOUT(0x259C617A0);
}

void sub_256393C70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C617A0);
}

uint64_t sub_256393CCC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_256393D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = dlopen(v5, 262);
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    dlclose(v7);
    v6 = *a1;
  }

  if (v6)
  {
    HIBYTE(v15[2]) = 6;
    strcpy(v15, "init_2");
    sub_256394224(a3, v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *(a1 + 24) = dlsym(*a1, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(v15[0]);
LABEL_12:
    HIBYTE(v15[2]) = 10;
    strcpy(v15, "teardown_2");
    sub_256394224(a3, v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p.__r_.__value_.__r.__words[0];
    }

    *(a1 + 32) = dlsym(*a1, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(v15[0]);
LABEL_17:
    HIBYTE(v15[2]) = 16;
    strcpy(v15, "get_network_size");
    sub_256394224(a3, v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p.__r_.__value_.__r.__words[0];
    }

    *(a1 + 16) = dlsym(*a1, v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v15[0]);
LABEL_22:
    HIBYTE(v15[2]) = 10;
    strcpy(v15, "set_tensor");
    sub_256394224(a3, v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    *(a1 + 40) = dlsym(*a1, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v15[0]);
LABEL_27:
    HIBYTE(v15[2]) = 6;
    strcpy(v15, "tensor");
    sub_256394224(a3, v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p.__r_.__value_.__r.__words[0];
    }

    *(a1 + 48) = dlsym(*a1, v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    operator delete(v15[0]);
LABEL_32:
    HIBYTE(v15[2]) = 12;
    strcpy(v15, "execute_sync");
    sub_256394224(a3, v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    *(a1 + 56) = dlsym(*a1, v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        return v6 != 0;
      }
    }

    else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      return v6 != 0;
    }

    operator delete(v15[0]);
  }

  return v6 != 0;
}

void sub_25639409C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

BOOL sub_256394114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a1 + 24))(a2, a3);
  *(a1 + 8) = v4;
  return v4 != 0;
}

void *sub_256394150(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    if (*(a1 + 8))
    {
      (*(a1 + 32))(*(a1 + 8));
      result = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      *a1 = 0;
    }

    return dlclose(result);
  }

  return result;
}

uint64_t sub_2563941A8(uint64_t a1)
{
  v2 = *a1;
  if (!v2)
  {
    goto LABEL_4;
  }

  if (*(a1 + 8))
  {
    (*(a1 + 32))(*(a1 + 8));
    v2 = *a1;
    *a1 = 0;
    *(a1 + 8) = 0;
    if (!v2)
    {
LABEL_4:
      *a1 = 0;
      return a1;
    }
  }

  else
  {
    *a1 = 0;
  }

  dlclose(v2);
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    dlclose(v3);
  }

  return a1;
}

void sub_256394224(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  *(&v16.__r_.__value_.__s + 23) = 14;
  strcpy(&v16, "nano_espresso_");
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = std::string::append(&v16, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v17, "_", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v18, v13, v14);
  *a3 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(v16.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }
}

void sub_256394354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_2563943C8()
{
  MEMORY[0x28223BE20]();
  v459 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F832E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F832E80))
  {
    v16 = "--I";
    v17 = 2;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 2;
    v22 = "Add directory to include search path for generated code";
    v23 = "--alloc";
    v24 = 1;
    v25 = 1;
    v26 = 1;
    v27 = "Allocator pattern to use";
    v28 = "--aml-match";
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = "Enable the AML pattern matching pass.Currently only work for apple-asc targets.";
    v33 = "--api";
    v34 = 2;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 2;
    v39 = "Model name used in generated functions and types";
    v40 = "--asan";
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = "Enable Address Sanitizer";
    v45 = "--async-baking";
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = "Make bake() run in a dispatch queue";
    v50 = "--binary";
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = "Build an E5 backend binary";
    v55 = "--bin-debug";
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = "Spit out binary_t debugging information";
    v60 = "--bnns-filters";
    v61 = 0;
    v62 = 1;
    v63 = 0;
    v64 = "enable the use of individual BNNS filters";
    v65 = "--bnns-graph";
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = "forward the entire MIL graph to MIL2BNNS";
    v70 = "--bnns-graph-bnns-ir";
    v71 = 2;
    sub_256395570(v72, "");
    v73 = "Set a custom output location for compiled BNNS IR";
    v74 = "--bnns-graph-downconvert";
    v75 = 2;
    sub_256395570(v76, "");
    v77 = "Set BNNS downconversion mode ('bf16_all', 'bf16_ops', 'fp16_all', 'fp16_ops', or 'none')";
    v78 = "--bnns-graph-generate-debug-info";
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = "Include debug info in the BNNS IR";
    v83 = "--bnns-graph-inject-custom-data";
    v84 = 2;
    sub_256395570(v85, "");
    v86 = "Attaches custom user annotations into the BNNS IR.";
    v87 = "--bnns-graph-opt-pref";
    v88 = 2;
    sub_256395570(v89, "");
    v90 = "Set BNNS optimization preference ('ir-size' or 'perf')";
    v91 = "--bnns-graph-validate-mil";
    v92 = 0;
    v93 = 1;
    v94 = 0;
    v95 = "Set whether BNNS should validate the MIL file";
    v96 = "--bnns-match";
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = "Enable the BNNS pattern matching pass";
    v101 = "--c-identifiers";
    v102 = 0;
    v103 = 1;
    v104 = 0;
    v105 = "Force tensor names to be valid C idents";
    v106 = "--code-section";
    v107 = 2;
    v109 = 0u;
    v108 = 0;
    v110 = 2;
    v111 = "Use the given section for code. Ex.: __ETEXT,__text,regular,pure_instructions";
    v112 = "--compute-at-overrides";
    v113 = 2;
    v114 = 0u;
    v115 = 0;
    v117 = "Force LoopKit compute_at for certain tensors (check source)";
    v116 = 2;
    v118 = "--compute-at-overrides-allow-unknown";
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = "Allow unknown tensor names in --compute-at-overrides";
    v123 = "--constant-buffer-threshold";
    v124 = 1;
    v125 = 32;
    v126 = 1;
    v127 = "Threshold in element count under which constant_t's are lowered as LoopKit::Buffer's";
    v128 = "--constant-folding";
    v129 = 0;
    v130 = 1;
    v131 = 0;
    v132 = "Enable constant folding";
    v133 = "--constant-folding-jit-allowed";
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v137 = "Allow jitting of LoopKit kernels during constant-folding";
    v138 = "--check-precompiled-kernels";
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = "Compare results from precompiled kernels with jited ones.";
    v143 = "--const-section";
    v144 = 2;
    v145 = 0u;
    v146 = 0;
    v147 = 2;
    v148 = "Use the given section for constants. Ex.: __ECONST,__const";
    v149 = "--data-section";
    v150 = 2;
    v152 = 0;
    v151 = 0u;
    v153 = 2;
    v154 = "Use the given section for data. Ex.: __EDATA,__data";
    v155 = "--debug";
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = "Generate code to improve debugging experience";
    v160 = "--deadline";
    v161 = 1;
    v162 = 0x4000000000000;
    v163 = 1;
    v164 = "Time limit in seconds for compilation";
    v165 = "--debug-constant";
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = "debugging for constant values";
    v170 = "--debug-loopkit";
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = "Enable debugging for LoopKit-related code";
    v175 = "--disable-precompiled-kernels";
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v179 = "Option to disable precompiled kernels and only enabled for Nano mode.";
    v180 = "--dump-allocation";
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = "Dump a CSV representation of the result of allocation to stdout";
    v185 = "--dump-graphviz";
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v189 = "Dump the IR as a graphviz graph before and after every pass.";
    v190 = "--dump-liveness";
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v194 = "Dump a CSV representation of the result of liveness analysis to stdout";
    v195 = "--dump-yaml-before";
    v196 = 2;
    sub_256395630(&v14, "");
    v197 = v14;
    v198 = v15;
    v15 = 0;
    v14 = 0uLL;
    v199 = 2;
    v200 = "Dump the IR as structured YAML before the given pass.";
    v201 = "--dump-yaml-after";
    v202 = 2;
    sub_256395630(v12, "");
    v203 = *v12;
    v204 = v13;
    v12[1] = 0;
    v13 = 0;
    v12[0] = 0;
    v205 = 2;
    v206 = "Dump the IR as structured YAML after the given pass. Use 'frontend' to dump before any compile passes have run.";
    v207 = "--dump-yaml-to";
    v208 = 2;
    sub_256395630(v11, "-");
    v209 = *v11;
    v210 = v11[2];
    memset(v11, 0, sizeof(v11));
    v211 = 2;
    v212 = "If --dump-yaml-after is given, dump the yaml to the specified file. Defaults to stdout.";
    v213 = "--dump-cg";
    v214 = 0;
    v215 = 0;
    v216 = 0;
    v217 = "Dump codegen's output to stdout";
    v218 = "--dump-op-names";
    v219 = 0;
    v220 = 0;
    v221 = 0;
    v222 = "Dump all operation names to stdout";
    v223 = "--dump-record-layouts";
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = "Dump clang's representation of the data struct";
    v228 = "--dylib";
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v232 = "Build a dynamic library";
    v233 = "--enable-external-constants";
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v237 = "Enables use of external weight files";
    v238 = "--enable-external-kernels";
    v239 = 0;
    v240 = 0;
    v241 = 0;
    v242 = "Enable external kernels mode for binary_t codegen";
    v243 = "--enable-external-outputs";
    v244 = 0;
    v245 = 0;
    v246 = 0;
    v247 = "Enables use of external output buffers. This can have negative performance implications.";
    v248 = "--enforce-opt-names-exist";
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v252 = "Enforce that operations named in opt_config actually exist.";
    v253 = "--fusion";
    v254 = 0;
    v255 = 1;
    v256 = 0;
    v257 = "Enable the fusion pass";
    v258 = "--fuse-all";
    v259 = 0;
    v260 = 0;
    v261 = 0;
    v262 = "Pretend EVERYTHING is fusable";
    v263 = "--fuse-single";
    v264 = 0;
    v265 = 0;
    v266 = 0;
    v267 = "Max 1 op per fusion";
    v268 = "--header";
    v269 = 2;
    v270 = 0u;
    v271 = 0;
    v272 = 2;
    v273 = "Path to generated header. Not required when generating a binary";
    v274 = "--lk-bsa";
    v275 = 0;
    v276 = 1;
    v277 = 0;
    v278 = "Use LoopKit's BucketStackAllocations";
    v279 = "--lk-buffers";
    v280 = 0;
    v281 = 0;
    v282 = 0;
    v283 = "Enable/Disable using LoopKit buffers";
    v284 = "--lk-malloc";
    v285 = 0;
    v286 = 0;
    v287 = 0;
    v288 = "Allow LoopKit to call 'malloc'.";
    v289 = "--lk-object";
    v290 = 0;
    v291 = 1;
    v292 = 0;
    v293 = "Output LoopKit generated code as object.";
    v294 = "--lk-partition";
    v295 = 0;
    v296 = 1;
    v297 = 0;
    v298 = "Partition loops in LoopKit";
    v299 = "--lk-profiling";
    v300 = 0;
    v301 = 0;
    v302 = 0;
    v303 = "Enable LoopKit's profiling mode";
    v304 = "--lk-runtime";
    v305 = 0;
    v306 = 0;
    v307 = 0;
    v308 = "Enable/disable the LoopKit runtime";
    v309 = "--lk-scratch";
    v310 = 0;
    v311 = 1;
    v312 = 0;
    v313 = "Utilize scratch buffers in LK";
    v314 = "--lk-scratch-metakernel";
    v315 = 0;
    v316 = 0;
    v317 = 0;
    v318 = "Use metakernels to access scratchbuffer sizes";
    v319 = "--lk-apply-bounds";
    v320 = 0;
    v321 = 1;
    v322 = 0;
    v323 = "Set bounds on input and output params to LK kernels";
    v324 = "--lk-werror";
    v325 = 0;
    v326 = 1;
    v327 = 0;
    v328 = "Treat LoopKit runtime assertion failures as errors";
    v329 = "--llvm-ir";
    v330 = 0;
    v331 = 0;
    v332 = 0;
    v333 = "Outputs LLVM IR files to /tmp or the directory specified with --save-temps";
    v334 = "--llvm-unroll";
    v335 = 0;
    v336 = 0;
    v337 = 0;
    v338 = "Unroll loops at the LLVM level (ignore LK)";
    v339 = "--llvm-vectorize";
    v340 = 0;
    v341 = 0;
    v342 = 0;
    v343 = "Vectorize at the LLVM level (ignore LK)";
    v344 = "--mem-limit";
    v345 = 1;
    v346 = -1;
    v347 = 1;
    v348 = "Memory limit for graph. -1 to disable.";
    v349 = "--memory";
    v350 = 2;
    sub_256395630(v9, "static");
    v351 = *v9;
    v352 = v10;
    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    v353 = 2;
    v354 = "method to allocate memory";
    v355 = "--min-alignment";
    v356 = 1;
    v357 = 32;
    v358 = 1;
    v359 = "Minimum alignment for a tensor";
    v360 = "--model-path";
    v361 = 2;
    sub_256395630(v8, "");
    v362 = *v8;
    v363 = v8[2];
    memset(v8, 0, sizeof(v8));
    v365 = "MIL file path, used during MIL parsing";
    v364 = 2;
    v366 = "--n-threads";
    v367 = 1;
    v368 = 0;
    v369 = 1;
    v370 = "Limit runtime execution to N threads (0 means automatic)";
    v371 = "--nanck";
    v372 = 0;
    v373 = 0;
    v374 = 0;
    v375 = "Add NaN checking ops";
    v376 = "--opt_config";
    v377 = 2;
    v379 = 0;
    v378 = 0u;
    v380 = 2;
    v381 = "Optimization configuration file";
    v382 = "--output";
    v383 = 2;
    v384 = 0u;
    v385 = 0;
    v386 = 2;
    v387 = "Path to generated library or binary file";
    v388 = "--print";
    v389 = 0;
    v390 = 0;
    v391 = 0;
    v392 = "Add print ops to debug tensor values";
    v393 = "--reachability";
    v394 = 0;
    v395 = 0;
    v396 = 0;
    v397 = "Debug tensor/op reachability calculation";
    v398 = "--rtcg";
    v399 = 0;
    v400 = 0;
    v401 = 0;
    v402 = "Enable RTCG code generator";
    v403 = "--save-temps";
    v404 = 2;
    sub_256395630(v6, "");
    v405 = *v6;
    v406 = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    v407 = 2;
    v408 = "Save temporaries to this directory";
    v409 = "--skip-opt-pass";
    v410 = 2;
    sub_256395630(v4, "");
    v411 = *v4;
    v412 = v5;
    v4[1] = 0;
    v5 = 0;
    v4[0] = 0;
    v413 = 2;
    v414 = "Skip the listed (comma-separated) optimization passes. Available values: 'alloc', 'constant-folding'";
    v415 = "--sdk";
    v416 = 2;
    v417 = 0;
    v419 = 0;
    v418 = 0;
    v421 = "Use the tools from the given SDK";
    v420 = 2;
    v422 = "--static";
    v423 = 0;
    v424 = 0;
    v425 = 0;
    v426 = "Build a static library";
    v427 = "--strength-reduction";
    v428 = 0;
    v429 = 1;
    v430 = 0;
    v431 = "Enable strength reduction";
    v432 = "--target";
    v433 = 2;
    sub_256395630(__p, "arm64e-apple-macosx:apple-m1");
    v434 = *__p;
    v435 = __p[2];
    memset(__p, 0, sizeof(__p));
    v436 = 2;
    v437 = "The super triple string (target triple and mcpu separated by ':').";
    v438 = "--use-bnns";
    v439 = 0;
    v440 = 0;
    v441 = 0;
    v442 = "Enable BNNS or AccelerateML as a backend.";
    v443 = "--verbose";
    v444 = 0;
    v445 = 0;
    v446 = 0;
    v447 = "Print intermediate tools output information";
    v448 = "--version";
    v449 = 0;
    v450 = 0;
    v451 = 0;
    v452 = "Print version information and exit";
    v453 = "--use-fixed-point";
    v454 = 2;
    v456 = 0;
    v455 = 0u;
    v457 = 2;
    v458 = "Quantize float-point model to use fixed-point arithmetics. (Supported values: 'i32_16')";
    sub_256396578(&qword_27F832E68, &v16, 0x55uLL);
    v1 = &v453;
    v2 = -4760;
    do
    {
      v1 = (sub_2563956E8(v1) - 56);
      v2 += 56;
    }

    while (v2);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v5) & 0x80000000) == 0)
      {
LABEL_8:
        if ((SHIBYTE(v7) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

    else if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(v4[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v8[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(v6[0]);
    if ((SHIBYTE(v8[2]) & 0x80000000) == 0)
    {
LABEL_10:
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    operator delete(v8[0]);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v11[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete(v9[0]);
    if ((SHIBYTE(v11[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v13) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

LABEL_20:
    operator delete(v11[0]);
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_14:
        __cxa_atexit(sub_256395744, &qword_27F832E68, &dword_256385000);
        __cxa_guard_release(&qword_27F832E80);
        return &qword_27F832E68;
      }

LABEL_22:
      operator delete(v14);
      goto LABEL_14;
    }

LABEL_21:
    operator delete(v12[0]);
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  return &qword_27F832E68;
}

void sub_2563953C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  v59 = -4760;
  v60 = v57;
  do
  {
    v60 = sub_2563956E8(v60) - 56;
    v59 += 56;
  }

  while (v59);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_7:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a21);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a27);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a39);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a56 & 0x80000000) == 0)
    {
LABEL_20:
      __cxa_guard_abort(&qword_27F832E80);
      _Unwind_Resume(a1);
    }

LABEL_19:
    operator delete(a51);
    goto LABEL_20;
  }

LABEL_18:
  operator delete(a45);
  if ((a56 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

_DWORD *sub_256395570(_DWORD *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2563894A4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  a1[6] = 2;
  return a1;
}

void *sub_256395630(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2563894A4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t sub_2563956E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_286856678[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void **sub_256395744(void **a1)
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
        v5 = *(v3 - 4);
        if (v5 != -1)
        {
          (off_286856678[v5])(&v7, v3 - 10);
        }

        *(v3 - 4) = -1;
        v3 -= 14;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2563957EC(uint64_t a1)
{
  *(a1 + 8) = 0u;
  v1 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_286856658;
  sub_2563943C8();
  v2 = qword_27F832E70;
  if (qword_27F832E68 != qword_27F832E70)
  {
    v3 = qword_27F832E68 + 16;
    do
    {
      v4 = v3 - 16;
      v5 = *(v3 - 16);
      v6 = strlen(v5);
      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_2563894A4();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      v19 = v6;
      if (v6)
      {
        memmove(&__dst, v5, v6);
      }

      *(&__dst + v7) = 0;
      p_dst = &__dst;
      v8 = sub_256396BA8(v1, &__dst, &unk_25639C39E, &p_dst);
      v9 = *(v8 + 16);
      v10 = *(v3 + 24);
      if (v9 == -1)
      {
        if (v10 != -1)
        {
LABEL_14:
          p_dst = (v8 + 5);
          (off_2868566A8[v10])(&p_dst);
        }
      }

      else
      {
        if (v10 != -1)
        {
          goto LABEL_14;
        }

        v11 = v8;
        (off_286856678[v9])(&p_dst, v8 + 5);
        *(v11 + 16) = -1;
      }

      if (v19 < 0)
      {
        operator delete(__dst);
      }

      v3 += 56;
    }

    while (v4 + 56 != v2);
  }

  v12 = getenv("__UNOWUD");
  if (v12)
  {
    v13 = v12;
    v14 = strlen(v12);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2563894A4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v19 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    *(&__dst + v15) = 0;
    sub_25639846C(a1, &__dst);
    if (v19 < 0)
    {
      operator delete(__dst);
    }
  }

  return a1;
}