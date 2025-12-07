void sub_18F67F780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 161) < 0)
  {
    operator delete(*(v36 - 184));
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::parse_format_id(const void **a1, const std::string *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a1 + 23;
  v5 = a1 + 1;
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v24 = 0;
  v7 = std::string::basic_string(v26, a2, 0, v6, &v23);
  v8 = v26[23];
  if (v26[23] >= 0)
  {
    v9 = v26[23];
  }

  else
  {
    v9 = *&v26[8];
  }

  v10 = *v4;
  v11 = v10;
  if (v10 < 0)
  {
    v10 = *v5;
  }

  if (v9 != v10 || (v26[23] >= 0 ? (v12 = v26) : (v12 = *v26), v11 >= 0 ? (v13 = a1) : (v13 = *a1), v7 = memcmp(v12, v13, v9), v7))
  {
    v14 = 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    operator delete(*v26);
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_35:
    v19 = v24 & 0xFFFFFF00;
    v18 = v24;
    v20 = 0x100000000;
    return v20 | v19 | v18;
  }

  std::string::basic_string(&v23, a2, v6, 0xFFFFFFFFFFFFFFFFLL, &v25);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v23;
  }

  else
  {
    v21 = v23.__r_.__value_.__r.__words[0];
  }

  v7 = sscanf(v21, "%08x", &v24);
  v14 = v7 != 1;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if ((v26[23] & 0x80) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_19:
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    *v26 = 136315906;
    *&v26[4] = "AudioMetadataSerializer.cpp";
    *&v26[12] = 1024;
    *&v26[14] = 2133;
    *&v26[18] = 2080;
    *&v26[20] = v16;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Format ID '%s' does not match expected pattern '%sxxxxyyyy'", v26, 0x26u);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  return v20 | v19 | v18;
}

void sub_18F67FA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t anonymous namespace::parse_track_format_id(const void **a1, const std::string *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a1 + 23;
  v5 = a1 + 1;
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v24 = 0;
  v23 = 0;
  v7 = std::string::basic_string(v26, a2, 0, v6, &v22);
  v8 = v26[23];
  if (v26[23] >= 0)
  {
    v9 = v26[23];
  }

  else
  {
    v9 = *&v26[8];
  }

  v10 = *v4;
  v11 = v10;
  if (v10 < 0)
  {
    v10 = *v5;
  }

  if (v9 != v10 || (v26[23] >= 0 ? (v12 = v26) : (v12 = *v26), v11 >= 0 ? (v13 = a1) : (v13 = *a1), v7 = memcmp(v12, v13, v9), v7))
  {
    v14 = 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    operator delete(*v26);
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_35:
    v19 = v24 & 0xFFFFFF00 | (v23 << 32);
    v18 = v24;
    return v19 | v18;
  }

  std::string::basic_string(&v22, a2, v6, 0xFFFFFFFFFFFFFFFFLL, &v25);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v22;
  }

  else
  {
    v20 = v22.__r_.__value_.__r.__words[0];
  }

  v7 = sscanf(v20, "%08x_%02hhx", &v24, &v23);
  v14 = v7 != 2;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if ((v26[23] & 0x80) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_19:
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    *v26 = 136315906;
    *&v26[4] = "AudioMetadataSerializer.cpp";
    *&v26[12] = 1024;
    *&v26[14] = 2148;
    *&v26[18] = 2080;
    *&v26[20] = v16;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Format ID '%s' does not match expected pattern '%sxxxxyyyy_zz'", v26, 0x26u);
  }

  v18 = 0;
  v19 = 0;
  return v19 | v18;
}

void sub_18F67FC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<std::tuple<unsigned int,unsigned char>,anonymous namespace::ElementRef<AudioMetadataTrackFormat>>::operator[](uint64_t **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_20:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  while (1)
  {
    v5 = v2;
    v6 = *(v2 + 8);
    if (v3 != v6)
    {
      break;
    }

    v7 = *(v5 + 36);
    if (v4 < v7)
    {
LABEL_13:
      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = v7 == v4;
      if (v7 >= v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v9 = 0;
      }

      if ((v9 & 0x80) == 0)
      {
        return v5 + 5;
      }

LABEL_19:
      v2 = v5[1];
      if (!v2)
      {
        goto LABEL_20;
      }
    }
  }

  if (v3 < v6)
  {
    goto LABEL_13;
  }

  if (v6 >= v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v10 < 0)
  {
    goto LABEL_19;
  }

  return v5 + 5;
}

uint64_t *std::map<unsigned int,anonymous namespace::ElementRef<AudioMetadataTrackUID>>::operator[](uint64_t **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 8);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

BOOL anonymous namespace::encode_var_uint(unint64_t this, uint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  do
  {
    v17 = this & 0x7F;
    std::deque<unsigned char>::push_back(v18, &v17);
    v8 = this > 0x7F;
    this >>= 7;
  }

  while (v8);
  v9 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    while (1)
    {
      v10 = v9 - 1;
      v11 = *(*(*(&v18[0] + 1) + (((v19 + v10) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v19 + v10) & 0xFFF));
      *(&v19 + 1) = v10;
      std::deque<unsigned char>::__maybe_remove_back_spare[abi:ne200100](v18);
      v12 = *a3;
      v13 = *a3 + 1;
      v14 = v13 <= a4;
      if (v13 > a4)
      {
        break;
      }

      v9 = *(&v19 + 1);
      v15 = v11 | 0x80;
      if (!*(&v19 + 1))
      {
        v15 = v11;
      }

      *a3 = v13;
      *(a2 + v12) = v15;
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v14 = 1;
  }

  std::deque<unsigned char>::~deque[abi:ne200100](v18);
  return v14;
}

void sub_18F67FF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::deque<unsigned char>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::encode_string(const char *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = strlen(a1);
    for (; v4; --v4)
    {
      v5 = *v3++;
      v6 = v5;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, &v6);
    }
  }

  else
  {
  }
}

void anonymous namespace::encode_content_ids(__int16 **a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    v6 = *v5++;
    v8 = HIBYTE(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v8);
    v7 = v6;
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  }
}

void std::vector<unsigned short>::push_back[abi:ne200100](uint64_t a1, unsigned __int16 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void anonymous namespace::encode_loudness_metadata(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) << 6;
  v11 = v4;
  if (*(a1 + 16) != 0.0)
  {
    v4 |= 0x20u;
    v11 = v4;
  }

  if (*(a1 + 20) != 0.0)
  {
    v4 += 16;
    v11 = v4;
  }

  if (*(a1 + 24) != 0.0)
  {
    v4 += 8;
    v11 = v4;
  }

  if (*(a1 + 28) != 0.0)
  {
    v4 += 4;
    v11 = v4;
  }

  if (*(a1 + 32) != 0.0)
  {
    v4 += 2;
    v11 = v4;
  }

  if (*(a1 + 36) != 0.0)
  {
    v11 = v4 + 1;
  }

  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v11);
  v5 = *(a1 + 16);
  if (v5 != 0.0)
  {
  }

  v6 = *(a1 + 20);
  if (v6 != 0.0)
  {
  }

  v7 = *(a1 + 24);
  if (v7 != 0.0)
  {
  }

  v8 = *(a1 + 28);
  if (v8 != 0.0)
  {
  }

  v9 = *(a1 + 32);
  if (v9 != 0.0)
  {
  }

  v10 = *(a1 + 36);
  if (v10 != 0.0)
  {
  }
}

void anonymous namespace::encode_float_32(uint64_t a1, float a2)
{
  v7 = HIBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v7);
  v6 = BYTE2(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v6);
  v5 = BYTE1(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v5);
  v4 = LOBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v4);
}

void anonymous namespace::encode_float_64(uint64_t a1, double a2)
{
  v11 = HIBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v11);
  v10 = BYTE6(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v10);
  v9 = BYTE5(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v9);
  v8 = BYTE4(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v8);
  v7 = BYTE3(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v7);
  v6 = BYTE2(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v6);
  v5 = BYTE1(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v5);
  v4 = LOBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v4);
}

BOOL anonymous namespace::encode_bytes(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  v8 = *(a1 + 8) - *a1;
  if (result)
  {
    v10 = *a3 + v8;
    if (v10 <= a4)
    {
      v11 = *(a1 + 8);
      if (v11 != *a1)
      {
        memmove((a2 + *a3), *a1, v11 - *a1);
        v10 = *a3 + v8;
      }

      *a3 = v10;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void anonymous namespace::encode_format_ids(int **a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    v6 = *v5++;
    v10 = HIBYTE(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v10);
    v9 = BYTE2(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v9);
    v8 = BYTE1(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v8);
    v7 = v6;
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  }
}

void anonymous namespace::encode_string(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = *(v3 + 1);
  if (v3[23] >= 0)
  {
    v6 = v3[23];
  }

  else
  {
    v3 = *v3;
    v6 = v5;
  }

  for (; v6; --v6)
  {
    v7 = *v3++;
    v8 = v7;
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v8);
  }
}

void anonymous namespace::encode_format_id(int a1, uint64_t a2)
{
  v7 = HIBYTE(a1);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  v6 = BYTE2(a1);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v6);
  v5 = BYTE1(a1);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v5);
  v4 = a1;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v4);
}

uint64_t anonymous namespace::encode_track_uids(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, unint64_t *a5)
{
  v5 = *(a1 + 120);
  v6 = (a1 + 128);
  result = 1;
  v35 = v6;
  if (v5 != v6)
  {
    while (1)
    {
      if (a2 == 2)
      {
        v11 = *a4;
        v12 = *a4 + 1;
        if (v12 > a5)
        {
          return 0;
        }

        v13 = *(v5 + 40) << 6;
        *a4 = v12;
        *(a3 + v11) = v13;
      }

      if (!result)
      {
        return result;
      }

      if (*(v5 + 40) == 2)
      {
        {
          return 0;
        }
      }

      else
      {
        v14 = v5[6];
        memset(v37, 0, sizeof(v37));
        LOBYTE(v41) = 0;
        v42 = 0;
        v15 = *(v14 + 12);
        if (v15 && *v15)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "AT_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v14 + 12));
          v18 = v17 != 0;
          if (v17)
          {
            v41 = v16;
            v42 = 1;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v14 + 20);
        if (v19 && *v19)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "AC_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v14 + 20));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }

          v21 = HIDWORD(v20) != 0;
        }

        else
        {
          LODWORD(v20) = 0;
          v21 = 0;
        }

        v22 = *(v14 + 28);
        if (v22 && *v22)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "AP_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v14 + 28));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }

          v24 = HIDWORD(v23) != 0;
        }

        else
        {
          LODWORD(v23) = 0;
          v24 = 0;
        }

        __p.__r_.__value_.__s.__data_[0] = 0;
        if (*(v14 + 8) == 0.0)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0x80;
          __p.__r_.__value_.__s.__data_[0] = 0x80;
        }

        v26 = *(v14 + 36);
        if (v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = v18;
        }

        if (((v24 || v21) | v27) == 1)
        {
          if (v26)
          {
            v25 |= 0x40u;
          }

          if (v18)
          {
            v25 |= 0x20u;
          }

          if (v21)
          {
            v25 |= 0x10u;
          }

          if (v24)
          {
            v25 += 8;
          }

          __p.__r_.__value_.__s.__data_[0] = v25;
        }

        std::vector<unsigned char>::push_back[abi:ne200100](v37, &__p);
        v28 = *(v14 + 8);
        if (v28 != 0.0)
        {
        }

        v29 = *(v14 + 36);
        if (v29)
        {
        }

        if (v18)
        {
          v30 = v41;
          LOBYTE(v39[0]) = BYTE3(v41);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          LOBYTE(v39[0]) = BYTE2(v30);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          LOBYTE(v39[0]) = BYTE1(v30);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          LOBYTE(v39[0]) = v30;
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, &v41 + 4);
        }

        if (v21)
        {
        }

        if (v24)
        {
        }

        if (v37[0])
        {
          operator delete(v37[0]);
        }

        if (!v31)
        {
          return 0;
        }
      }

      v32 = v5[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v5[2];
          v34 = *v33 == v5;
          v5 = v33;
        }

        while (!v34);
      }

      v5 = v33;
      if (v33 == v35)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_18F680B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_pack_formats(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, unint64_t *a5)
{
  v5 = *(a1 + 144);
  v6 = (a1 + 152);
  if (v5 == (a1 + 152))
  {
    return 1;
  }

  v10 = a2;
  v48 = (a1 + 152);
  while (1)
  {
    if (v10 == 2)
    {
      v11 = *a4;
      v12 = *a4 + 1;
      if (v12 > a5)
      {
        return 0;
      }

      v13 = *(v5 + 40) << 6;
      *a4 = v12;
      *(a3 + v11) = v13;
    }

    if (!result)
    {
      return result;
    }

    if (*(v5 + 40) == 2)
    {
      {
        return 0;
      }

      goto LABEL_107;
    }

    v15 = v5[6];
    memset(v50, 0, sizeof(v50));
    LOBYTE(v59[0]) = 32 * v61;
    std::vector<unsigned char>::push_back[abi:ne200100](v50, v59);
    if (!v61)
    {
    }

    memset(v59, 0, sizeof(v59));
    if (*(v15 + 28))
    {
      v16 = 0;
      while (1)
      {
        v17 = *(*(v15 + 32) + 8 * v16);
        std::string::basic_string[abi:ne200100]<0>(v57, "AC_");
        std::string::basic_string[abi:ne200100]<0>(&__p, *v17);
        LODWORD(v55.__r_.__value_.__l.__data_) = v18;
        v19 = HIDWORD(v18);
        v55.__r_.__value_.__s.__data_[4] = BYTE4(v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v58) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v57[0]);
        if (v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        if (++v16 >= *(v15 + 28))
        {
          goto LABEL_22;
        }
      }

      if (!v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      std::vector<unsigned int>::push_back[abi:ne200100](v59, &v55);
      goto LABEL_21;
    }

LABEL_22:
    v57[0] = 0;
    v57[1] = 0;
    v58 = 0;
    if (*(v15 + 40))
    {
      v20 = 0;
      while (1)
      {
        v21 = *(*(v15 + 44) + 8 * v20);
        std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v55, *v21);
        LODWORD(v51.__r_.__value_.__l.__data_) = v22;
        v23 = HIDWORD(v22);
        v51.__r_.__value_.__s.__data_[4] = BYTE4(v22);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        if (v23)
        {
          goto LABEL_30;
        }

LABEL_31:
        if (++v20 >= *(v15 + 40))
        {
          goto LABEL_32;
        }
      }

      if (!v23)
      {
        goto LABEL_31;
      }

LABEL_30:
      std::vector<unsigned int>::push_back[abi:ne200100](v57, &v51);
      goto LABEL_31;
    }

LABEL_32:
    v24 = *(v15 + 96);
    if (v24 >= 0xA)
    {
      LOBYTE(v24) = 10;
    }

    v25 = (8 * v24) | ((*(v15 + 52) != 0.0) << 7);
    v54 = v25;
    if (v61 != 2)
    {
      if (v61 != 4)
      {
LABEL_60:
        std::vector<unsigned char>::push_back[abi:ne200100](v50, &v54);
        v10 = a2;
        v6 = v48;
        goto LABEL_96;
      }

      v26 = *(v15 + 60);
      switch(v26)
      {
        case 3:
          v25 |= 6u;
          break;
        case 2:
          v25 |= 4u;
          break;
        case 1:
          v25 |= 2u;
          break;
        default:
          goto LABEL_58;
      }

      v54 = v25;
LABEL_58:
      if (*(v15 + 61) == 1)
      {
        v54 = v25 + 1;
      }

      goto LABEL_60;
    }

    v27 = *(v15 + 80);
    if (v27 && *v27)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&v55, *v27);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v47 = HIDWORD(v28) != 0;
    }

    else
    {
      LODWORD(v28) = 0;
      v47 = 0;
    }

    v29 = *(v15 + 88);
    v46 = v28;
    if (!v29)
    {
      goto LABEL_62;
    }

    if (!*v29)
    {
      LODWORD(v29) = 0;
LABEL_62:
      v30 = 0;
      goto LABEL_63;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&v55, *v29);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v30 = HIDWORD(v29) != 0;
LABEL_63:
    if (v47 || v30)
    {
      v31 = v25 | 4;
      if (!v47)
      {
        v31 = v25;
      }

      if (v30)
      {
        v31 |= 2u;
      }

      v54 = v31;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v50, &v54);
    v45 = v29;
    memset(&__p, 0, sizeof(__p));
    if (*(v15 + 56))
    {
      v32 = 0;
      while (1)
      {
        v33 = *(*(v15 + 60) + 8 * v32);
        std::string::basic_string[abi:ne200100]<0>(&v55, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v51, *v33);
        v52 = v34;
        v35 = HIDWORD(v34);
        v53 = BYTE4(v34);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v55.__r_.__value_.__l.__data_);
        if (v35)
        {
          goto LABEL_77;
        }

LABEL_78:
        if (++v32 >= *(v15 + 56))
        {
          goto LABEL_79;
        }
      }

      if (!v35)
      {
        goto LABEL_78;
      }

LABEL_77:
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
      goto LABEL_78;
    }

LABEL_79:
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    if (*(v15 + 68))
    {
      v36 = 0;
      while (1)
      {
        v37 = *(*(v15 + 72) + 8 * v36);
        std::string::basic_string[abi:ne200100]<0>(&v55, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v51, *v37);
        v52 = v38;
        v39 = HIDWORD(v38);
        v53 = BYTE4(v38);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v55.__r_.__value_.__l.__data_);
        if (v39)
        {
          goto LABEL_87;
        }

LABEL_88:
        if (++v36 >= *(v15 + 68))
        {
          goto LABEL_89;
        }
      }

      if (!v39)
      {
        goto LABEL_88;
      }

LABEL_87:
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
      goto LABEL_88;
    }

LABEL_89:
    if (v47)
    {
    }

    if (v30)
    {
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = a2;
    v6 = v48;
LABEL_96:
    v40 = *(v15 + 52);
    if (v40 != 0.0)
    {
    }

    if (v57[0])
    {
      operator delete(v57[0]);
    }

    if (v59[0])
    {
      operator delete(v59[0]);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (v50[0])
    {
      operator delete(v50[0]);
    }

    if (!v41)
    {
      return 0;
    }

LABEL_107:
    v42 = v5[1];
    if (v42)
    {
      do
      {
        v43 = v42;
        v42 = *v42;
      }

      while (v42);
    }

    else
    {
      do
      {
        v43 = v5[2];
        v44 = *v43 == v5;
        v5 = v43;
      }

      while (!v44);
    }

    v5 = v43;
    if (v43 == v6)
    {
      return 1;
    }
  }
}

void sub_18F6811F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a37)
  {
    operator delete(a37);
  }

  v44 = *(v42 - 144);
  if (v44)
  {
    operator delete(v44);
  }

  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_channel_formats(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, unint64_t *a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 168);
  v9 = (a1 + 176);
  if (v8 == (a1 + 176))
  {
    return 1;
  }

  v13 = a5;
  v14 = *&a4;
  v15 = a3;
  v76 = (a1 + 176);
  while (1)
  {
    if (a2 == 2)
    {
      v17 = **&v14;
      v18 = **&v14 + 1;
      if (v18 > v13)
      {
        return 0;
      }

      v19 = *(v8 + 40) << 6;
      **&v14 = v18;
      *(v15 + v17) = v19;
    }

    if (!result)
    {
      return result;
    }

    if (*(v8 + 40) == 2)
    {
      break;
    }

    v21 = v8[6];
    v22 = *(v8 + 8);
    v23 = *(v8 + 7);
    v81 = 0;
    v82 = 0;
    __src = 0;
    __p.__r_.__value_.__s.__data_[0] = 32 * v91;
    std::vector<unsigned char>::push_back[abi:ne200100](&__src, &__p);
    if (!v91)
    {
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    do
    {
      while (1)
      {
        v29 = v24;
        v30 = v21 + 36 + 8 * v24;
        v31 = *(v30 + 4);
        if (v31 != 2)
        {
          break;
        }

        v28 = *v30;
        v24 = 1;
        v26 = 1;
        if (v29)
        {
          if (v25)
          {
            v33 = 0x80;
          }

          else
          {
            v33 = 0;
          }

LABEL_27:
          v33 |= 0x40u;
          v32 = 1;
          goto LABEL_28;
        }
      }

      if (v31 == 1)
      {
        LODWORD(v27) = *v30;
        v25 = 1;
      }

      v24 = 1;
    }

    while (!v29);
    v32 = 0;
    if (v25)
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 0;
    }

    if (v26)
    {
      goto LABEL_27;
    }

LABEL_28:
    v89 = v33;
    std::vector<unsigned char>::push_back[abi:ne200100](&__src, &v89);
    if (v25)
    {
    }

    if (v32)
    {
    }

    v86 = 0;
    v87 = 0;
    v88 = 0;
    if (!*(v21 + 24))
    {
      v55 = 0;
      goto LABEL_71;
    }

    v34 = 0;
    do
    {
      v35 = *(*(v21 + 28) + 8 * v34);
      std::string::basic_string[abi:ne200100]<0>(&__p, *v35);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v37 = 0.0;
      if (*(v35 + 8) == 1)
      {
        v37 = *(v35 + 12);
      }

      v38 = *(v35 + 20);
      if (v38 == 1)
      {
        v27 = *(v35 + 24);
      }

      else
      {
        *&v27 &= 0xFFFFFFFFFFFFFF00;
      }

      v39 = v23 + v37;
      if (*(v35 + 20))
      {
        v40 = v39 + v27;
      }

      else
      {
        v40 = 0.0;
      }

      v41 = v34 + 1;
      v42 = *(v21 + 24);
      if (v34 + 1 >= v42)
      {
        v45 = 0;
        *&v14 &= 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        v43 = *(*(v21 + 28) + 8 * v34 + 8);
        v44 = 0.0;
        if (*(v43 + 8) == 1)
        {
          v44 = *(v43 + 12);
        }

        if (*(v43 + 20) == 1)
        {
          v14 = v23 + v44 + *(v43 + 24);
          v45 = 1;
        }

        else
        {
          v14 = 0.0;
          v45 = 0;
        }
      }

      {
        if (v85 == 1)
        {
          v46 = v87;
          if (v87 < v88)
          {
            *v87 = 0;
            v46[1] = 0;
            v46[2] = 0;
            std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v46, v83, v84, v84 - v83);
            v87 = v46 + 3;
            goto LABEL_65;
          }

          v47 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
          v48 = v47 + 1;
          if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v88 - v86) >> 3) > v48)
          {
            v48 = 0x5555555555555556 * ((v88 - v86) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v88 - v86) >> 3) >= 0x555555555555555)
          {
            v49 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v49 = v48;
          }

          v94 = &v86;
          if (v49)
          {
            std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](v49);
          }

          v50 = (8 * ((v87 - v86) >> 3));
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = v50;
          __p.__r_.__value_.__r.__words[2] = v50;
          v93 = 0;
          *v50 = 0;
          v50[1] = 0;
          v50[2] = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((24 * v47), v83, v84, v84 - v83);
          v51 = __p.__r_.__value_.__r.__words[2] + 24;
          v52 = (__p.__r_.__value_.__l.__size_ - (v87 - v86));
          memcpy(v52, v86, v87 - v86);
          v53 = v86;
          v54 = v88;
          v86 = v52;
          v87 = v51;
          v88 = v93;
          __p.__r_.__value_.__r.__words[2] = v53;
          v93 = v54;
          __p.__r_.__value_.__r.__words[0] = v53;
          __p.__r_.__value_.__l.__size_ = v53;
          std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(&__p);
          v87 = v51;
          if (v85)
          {
LABEL_65:
            if (v83)
            {
              operator delete(v83);
            }
          }
        }

        v42 = *(v21 + 24);
      }

      ++v34;
    }

    while (v41 < v42);
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
LABEL_71:
    v56 = v86;
    v57 = v87;
    while (v56 != v57)
    {
      v59 = *v56;
      v58 = v56[1];
      v60 = &v58[-*v56];
      if (v60 >= 1)
      {
        v61 = v81;
        if (v82 - v81 >= v60)
        {
          while (v59 != v58)
          {
            v65 = *v59++;
            *v61++ = v65;
          }

          v81 = v61;
        }

        else
        {
          v62 = v81 - __src + v60;
          if (v62 < 0)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v63 = v82 - __src;
          if (2 * (v82 - __src) > v62)
          {
            v62 = 2 * v63;
          }

          if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v64 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            operator new();
          }

          v66 = v81 - __src;
          v67 = v81 - __src + v60;
          v68 = (v81 - __src);
          do
          {
            v69 = *v59++;
            *v68++ = v69;
            --v60;
          }

          while (v60);
          v70 = __src;
          v71 = (v66 + __src - v61);
          memcpy(v71, __src, v61 - __src);
          __src = v71;
          v81 = v67;
          v82 = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }
      }

      v56 += 3;
    }

    __p.__r_.__value_.__r.__words[0] = &v86;
    std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v15 = a3;
    v14 = *&a4;
    v13 = a5;
    v9 = v76;
    if (__src)
    {
      operator delete(__src);
    }

    if (!v72)
    {
      return 0;
    }

LABEL_96:
    v73 = v8[1];
    if (v73)
    {
      do
      {
        v74 = v73;
        v73 = *v73;
      }

      while (v73);
    }

    else
    {
      do
      {
        v74 = v8[2];
        v75 = *v74 == v8;
        v8 = v74;
      }

      while (!v75);
    }

    v8 = v74;
    if (v74 == v9)
    {
      return 1;
    }
  }

  {
    goto LABEL_96;
  }

  return 0;
}

void sub_18F681994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_block_formats_stand_alone(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  v4 = *(a1 + 192);
  v5 = (a1 + 200);
  if (v4 == (a1 + 200))
  {
    return 1;
  }

  while (1)
  {
    v9 = *a3;
    v10 = *a3 + 1;
    if (v10 > a4)
    {
      break;
    }

    v11 = *(v4 + 40) << 6;
    *a3 = v10;
    *(a2 + v9) = v11;
    v12 = *a3;
    v13 = *a3 + 1;
    if (v13 > a4)
    {
      break;
    }

    *a3 = v13;
    *(a2 + v12) = 0x80;
    v14 = *a3;
    if (*a3 + 8 >= a4)
    {
      break;
    }

    v15 = *(v4 + 35);
    *a3 = v14 + 1;
    *(a2 + v14) = v15;
    v16 = *(v4 + 17);
    v17 = (*a3)++;
    *(a2 + v17) = v16;
    v18 = *(v4 + 8) >> 8;
    v19 = (*a3)++;
    *(a2 + v19) = v18;
    LOBYTE(v18) = *(v4 + 8);
    v20 = (*a3)++;
    *(a2 + v20) = v18;
    LOBYTE(v18) = *(v4 + 39);
    v21 = (*a3)++;
    *(a2 + v21) = v18;
    LOBYTE(v18) = *(v4 + 19);
    v22 = (*a3)++;
    *(a2 + v22) = v18;
    v23 = *(v4 + 9) >> 8;
    v24 = (*a3)++;
    *(a2 + v24) = v23;
    LOBYTE(v23) = *(v4 + 9);
    v25 = (*a3)++;
    *(a2 + v25) = v23;
    if (*(v4 + 40) == 2)
    {
      {
        return 0;
      }
    }

    else
    {
      if (v31 == 1)
      {
        {
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          return 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    v26 = v4[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v4[2];
        v28 = *v27 == v4;
        v4 = v27;
      }

      while (!v28);
    }

    v4 = v27;
    if (v27 == v5)
    {
      return 1;
    }
  }

  return 0;
}

void sub_18F681C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int>,anonymous namespace::BlockFormatRef>,std::__map_value_compare<std::tuple<unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int>,anonymous namespace::BlockFormatRef>,std::less<std::tuple<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int>,anonymous namespace::BlockFormatRef>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void anonymous namespace::PacketBuilder::~PacketBuilder(_anonymous_namespace_::PacketBuilder *this)
{
}

double anonymous namespace::encode_block_format(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ((a3 & 0x100000000) != 0)
  {
  }

  if (a5)
  {
    buf[0] = 32 * a4;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  v8 = 16 * *(a2 + 157);
  v41 = v8;
  v9 = *(a2 + 32);
  if (*(a2 + 156))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 1.0;
  }

  if (!v10 || (LODWORD(v11) = 0, *(a2 + 156) == 1) && v9 != 0.0)
  {
    v8 |= 8u;
    v41 = v8;
    LODWORD(v11) = 1;
  }

  if (*(a2 + 158) == 1)
  {
    v8 += 4;
    v41 = v8;
  }

  if (*(a2 + 41) == 1)
  {
    v41 = v8 + 1;
    if (*(a2 + 40) == 1)
    {
      v41 = v8 + 3;
    }
  }

  std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
  if (v11)
  {
    buf[0] = *(a2 + 156) << 7;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  if (*(a2 + 41) == 1)
  {
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v19 = 16 * *(a2 + 121);
      v41 = v19;
      if (*(a2 + 120) == 1)
      {
        v19 |= 8u;
        v41 = v19;
      }

      if (*(a2 + 56) == 1)
      {
        v19 += 4;
        v41 = v19;
      }

      if (*(a2 + 72) == 1)
      {
        v19 += 2;
        v41 = v19;
      }

      if (*(a2 + 76) != 0.0)
      {
        v41 = v19 + 1;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
      if (*(a2 + 84))
      {
        v20 = 0x80;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      if (*(a2 + 96) == 1)
      {
        v41 = v20 | 0x40;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
      if (*(a2 + 72) == 1)
      {
      }

      v21 = *(a2 + 76);
      if (v21 != 0.0)
      {
      }

      if (*(a2 + 84) == 1)
      {
      }

      if (*(a2 + 96) == 1)
      {
      }

      if (*(a2 + 104) == 1)
      {
        buf[0] = -64;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      else
      {
        buf[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      if (*(a2 + 116))
      {
        v33 = 0;
        do
        {
          v34 = *(*(a2 + 108) + 8 * v33);
          v35 = *(v34 + 12);
          if (*(v34 + 32) == 1)
          {
            v36 = 24;
          }

          else
          {
            v36 = 16;
          }

          ++v33;
        }

        while (v33 < *(a2 + 116));
      }

      goto LABEL_143;
    }

    if (a4 != 4)
    {
LABEL_143:
      if (*(a2 + 8) == 1)
      {
        buf[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      if (*(a2 + 20) == 1)
      {
        buf[0] = 1;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      result = *v42;
      *a1 = *v42;
      *(a1 + 16) = v43;
      *(a1 + 24) = 1;
      return result;
    }

    if (*(a2 + 96))
    {
      v14 = 0x80;
    }

    else
    {
      v14 = 0;
    }

    v41 = v14;
    v15 = *(a2 + 98);
    switch(v15)
    {
      case 3:
        v14 |= 0x60u;
        break;
      case 2:
        v14 |= 0x40u;
        break;
      case 1:
        v14 |= 0x20u;
        break;
      default:
        goto LABEL_133;
    }

    v41 = v14;
LABEL_133:
    if (*(a2 + 52) == 1)
    {
      v14 += 16;
      v41 = v14;
    }

    if (*(a2 + 53) == 1)
    {
      v14 += 8;
      v41 = v14;
    }

    if (*(a2 + 54) == 1)
    {
      v14 += 4;
      v41 = v14;
    }

    if (*(a2 + 92) != 0.0)
    {
      v41 = v14 + 2;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    v18 = *(a2 + 92);
    if (v18 == 0.0)
    {
      goto LABEL_143;
    }

LABEL_142:
    goto LABEL_143;
  }

  if (a4 == 1)
  {
    v16 = 16 * *(a2 + 108);
    v41 = v16;
    if (*(a2 + 52) == 1)
    {
      v16 |= 0xAu;
      v41 = v16;
    }

    if (*(a2 + 53) == 1)
    {
      v41 = v16 + 5;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    if (*(a2 + 52))
    {
      v17 = 0x80;
    }

    else
    {
      v17 = 0;
    }

    v41 = v17;
    if (*(a2 + 53) == 1)
    {
      v41 = v17 | 0x40;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    if (*(a2 + 52) == 1)
    {
    }

    if (*(a2 + 53) == 1)
    {
    }

    if (*(a2 + 52) == 1)
    {
    }

    if (*(a2 + 53) == 1)
    {
    }

    if (*(a2 + 52) == 1)
    {
    }

    if (*(a2 + 53) != 1)
    {
      goto LABEL_143;
    }

    v18 = *(a2 + 80);
    goto LABEL_142;
  }

  if (a4 != 2)
  {
    goto LABEL_143;
  }

  v12 = *(a2 + 44);
  if (!v12 || !*v12)
  {
    goto LABEL_32;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "AC_");
  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(*buf);
  }

  if (HIDWORD(v13))
  {
    buf[0] = 0x80;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  else
  {
LABEL_32:
    buf[0] = 0;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  if (*(a2 + 56) == 1)
  {
    buf[0] = -64;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  else
  {
    buf[0] = 0;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  if (!*(a2 + 60))
  {
    goto LABEL_143;
  }

  v22 = 0;
  while (1)
  {
    v23 = *(*(a2 + 64) + 8 * v22);
    v24 = *(v23 + 12);
    if (v24)
    {
      v25 = 64;
    }

    else
    {
      v25 = (*(v23 + 44) << 7) | 0x20;
    }

    v26 = *(v23 + 28);
    if (v26)
    {
      v27 = 16;
    }

    else
    {
      v27 = 8;
    }

    v28 = v27 + v25;
    v29 = *(v23 + 20);
    if (v29)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    v41 = v30 + v28;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    if (v24)
    {
    }

    else
    {
    }

    if (v26)
    {
    }

    else
    {
    }

    if (v29)
    {
    }

    else
    {
    }

    v11 = v11 & 0xFFFFFF00;
    v32 = *(v23 + 36);
    if (v32 && *v32)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "AC_");
      std::string::basic_string[abi:ne200100]<0>(&__p, **(v23 + 36));
      v11 = v31;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v47 < 0)
      {
        operator delete(*buf);
      }
    }

    if ((v11 & 0x100000000) == 0)
    {
      break;
    }

    ++v22;
    if (!*(a2 + 60))
    {
      goto LABEL_143;
    }
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AudioMetadataSerializer.cpp";
    v45 = 1024;
    v46 = 387;
    _os_log_impl(&dword_18F5DF000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d Encountered Matrix block format with missing coefficient input channel", buf, 0x12u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v42[0])
  {
    operator delete(v42[0]);
  }

  return result;
}

void sub_18F682638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_var_uint(unint64_t a1, uint64_t a2)
{
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  do
  {
    v7 = a1 & 0x7F;
    std::deque<unsigned char>::push_back(v8, &v7);
    v4 = a1 > 0x7F;
    a1 >>= 7;
  }

  while (v4);
  while (*(&v9 + 1))
  {
    v5 = *(*(*(&v8[0] + 1) + (((v9 + *(&v9 + 1) - 1) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v9 + *(&v9 + 1) - 1) & 0xFFF));
    v7 = v5;
    --*(&v9 + 1);
    std::deque<unsigned char>::__maybe_remove_back_spare[abi:ne200100](v8);
    if (*(&v9 + 1))
    {
      v7 = v5 | 0x80;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  }

  return std::deque<unsigned char>::~deque[abi:ne200100](v8);
}

void sub_18F68278C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::deque<unsigned char>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::log(_anonymous_namespace_ *this)
{
  v1 = &unk_1EAD30000;
  {
    v1 = &unk_1EAD30000;
    if (v3)
    {
      v1 = &unk_1EAD30000;
    }
  }

  return v1[407];
}

void std::deque<unsigned char>::push_back(unint64_t *a1, _BYTE *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 9) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x1000)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::allocator<unsigned char *>::allocate_at_least[abi:ne200100](v12);
    }

    a1[4] = v7 - 4096;
    v13 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<unsigned char *>::emplace_back<unsigned char *&>(a1, &v13);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  *(*(v5 + ((v8 >> 9) & 0x7FFFFFFFFFFFF8)) + (v8 & 0xFFF)) = *a2;
  ++a1[5];
}

void sub_18F682CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::deque<unsigned char>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((v1 - v2) << 9) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0x2000)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<unsigned char>::~deque[abi:ne200100](uint64_t a1)
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
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
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

void std::__split_buffer<unsigned char *>::emplace_back<unsigned char *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<unsigned char *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::allocator<unsigned char *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t anonymous namespace::encode_format_element_id(char a1, int a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a4 + 1;
  if (v6 > a5)
  {
    return 0;
  }

  *a4 = v6;
  *(a3 + v5) = 16 * a1;
  v7 = *a4;
  if (*a4 + 4 >= a5)
  {
    return 0;
  }

  *a4 = v7 + 1;
  *(a3 + v7) = HIBYTE(a2);
  v8 = (*a4)++;
  *(a3 + v8) = BYTE2(a2);
  v9 = (*a4)++;
  *(a3 + v9) = BYTE1(a2);
  v10 = (*a4)++;
  *(a3 + v10) = a2;
  return 1;
}

std::string *anonymous namespace::determine_channel_type(std::string *this, const std::string::value_type *a2, std::string::value_type *a3)
{
  v4 = this;
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    this = std::string::__assign_external(this, a2);
  }

  if (*a3)
  {
    v4[1].__r_.__value_.__s.__data_[0] = *a3;
  }

  v5 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
LABEL_13:
      v8 = v4[1].__r_.__value_.__s.__data_[0];
      goto LABEL_14;
    }

    v6 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = v4;
    if (v5 != 4)
    {
      goto LABEL_13;
    }
  }

  data = v6->__r_.__value_.__l.__data_;
  v8 = v4[1].__r_.__value_.__s.__data_[0];
  if (data == 825241648 && v8 == 1)
  {
    v9 = 1;
    goto LABEL_47;
  }

LABEL_14:
  if ((v5 & 0x80) != 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_46;
    }

    v10 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v10 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }
  }

  if (LODWORD(v10->__r_.__value_.__l.__data_) == 842018864 && v8 == 2)
  {
    v9 = 2;
    goto LABEL_47;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_46;
    }

    v11 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v11 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }
  }

  if (LODWORD(v11->__r_.__value_.__l.__data_) == 858796080 && v8 == 3)
  {
    v9 = 3;
    goto LABEL_47;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_46;
    }

    v12 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }
  }

  if (LODWORD(v12->__r_.__value_.__l.__data_) == 875573296 && v8 == 4)
  {
    v9 = 4;
    goto LABEL_47;
  }

  if ((v5 & 0x80) == 0)
  {
    v13 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v4->__r_.__value_.__l.__size_ != 4)
  {
LABEL_46:
    v9 = 0;
    goto LABEL_47;
  }

  v13 = v4->__r_.__value_.__r.__words[0];
LABEL_43:
  if (LODWORD(v13->__r_.__value_.__l.__data_) != 892350512 || v8 != 5)
  {
    goto LABEL_46;
  }

  v9 = 5;
LABEL_47:
  v4[1].__r_.__value_.__s.__data_[1] = v9;
  return this;
}

void sub_18F6831D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::parse_block_format_id(int a1, const std::string *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v4 = std::string::basic_string(v24, a2, 0, 3uLL, &v20);
  if ((v24[23] & 0x80000000) != 0)
  {
    if (*&v24[8] != 3 || (**v24 == 16961 ? (v6 = *(*v24 + 2) == 95) : (v6 = 0), !v6))
    {
      operator delete(*v24);
LABEL_25:
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        v10 = 0;
        v9 = 0;
        v11 = 0;
        return v11 | v9 | v10;
      }

      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = a2->__r_.__value_.__r.__words[0];
      }

      *v24 = 136315650;
      *&v24[4] = "AudioMetadataSerializer.cpp";
      *&v24[12] = 1024;
      *&v24[14] = 2100;
      *&v24[18] = 2080;
      *&v24[20] = v13;
      v14 = "%25s:%-5d Block format ID '%s' does not match expected pattern 'AB_xxxxyyyy_zz'";
      v15 = v12;
      v16 = 28;
LABEL_30:
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v14, v24, v16);
      goto LABEL_31;
    }
  }

  else
  {
    if (v24[23] != 3)
    {
      goto LABEL_25;
    }

    if (*v24 != 16961 || v24[2] != 95)
    {
      goto LABEL_25;
    }
  }

  std::string::basic_string(&v20, a2, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v23);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v20;
  }

  else
  {
    v7 = v20.__r_.__value_.__r.__words[0];
  }

  v4 = sscanf(v7, "%08x_%08x", &v22, &v21);
  v8 = v4;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if ((v24[23] & 0x80000000) != 0)
  {
    operator delete(*v24);
  }

  if (v8 != 2)
  {
    goto LABEL_25;
  }

  if (v22 != a1)
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = a2->__r_.__value_.__r.__words[0];
    }

    *v24 = 136315906;
    *&v24[4] = "AudioMetadataSerializer.cpp";
    *&v24[12] = 1024;
    *&v24[14] = 2105;
    *&v24[18] = 2080;
    *&v24[20] = v19;
    v25 = 1024;
    v26 = a1;
    v14 = "%25s:%-5d Block format ID '%s' does not match containing channel format ID 'AC_%08x'";
    v15 = v18;
    v16 = 34;
    goto LABEL_30;
  }

  v9 = v21 & 0xFFFFFF00;
  v10 = v21;
  v11 = 0x100000000;
  return v11 | v9 | v10;
}

void sub_18F68346C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F6835D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void anonymous namespace::gather_elements_from_pack_format(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a2 + 28);
  if (v8)
  {
    v9 = 0;
    v10 = (a1 + 176);
    while (1)
    {
      v11 = *(a2 + 32);
      if (**(v11 + 8 * v9))
      {
        break;
      }

LABEL_32:
      if (++v9 >= v8)
      {
        goto LABEL_33;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, "AC_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v11 + 8 * v9));
    v13 = v12;
    LODWORD(v97.__r_.__value_.__l.__data_) = v12;
    v14 = HIDWORD(v12);
    v97.__r_.__value_.__s.__data_[4] = BYTE4(v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
      if (!v14)
      {
LABEL_31:
        v8 = *(a2 + 28);
        goto LABEL_32;
      }
    }

    else if (!v14)
    {
      goto LABEL_31;
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, **(v11 + 8 * v9));
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v100.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_18;
      }

      v15 = v100.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_18;
      }

      v15 = &v100;
    }

    if (v15->__r_.__value_.__s.__data_[7] == 48)
    {
      v16 = 0;
      if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_18:
    v17 = *v10;
    if (!*v10)
    {
      goto LABEL_26;
    }

    v18 = (a1 + 176);
    do
    {
      v19 = *(v17 + 32);
      v20 = v19 >= v13;
      v21 = v19 < v13;
      if (v20)
      {
        v18 = v17;
      }

      v17 = *(v17 + 8 * v21);
    }

    while (v17);
    if (v18 == v10 || *(v18 + 8) > v13)
    {
LABEL_26:
      v18 = (a1 + 176);
    }

    v16 = v18 == v10;
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_28:
    operator delete(v100.__r_.__value_.__l.__data_);
LABEL_29:
    if (v16)
    {
      v22 = *(v11 + 8 * v9);
      v23 = *a4;
      *v24 = a3;
      v24[1] = v22;
      v24[2] = v23;
    }

    goto LABEL_31;
  }

LABEL_33:
  v25 = *(a2 + 40);
  if (v25)
  {
    v26 = 0;
    v27 = (a1 + 152);
    while (1)
    {
      v28 = *(a2 + 44);
      if (**(v28 + 8 * v26))
      {
        break;
      }

LABEL_64:
      if (++v26 >= v25)
      {
        goto LABEL_65;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v28 + 8 * v26));
    v30 = v29;
    LODWORD(v97.__r_.__value_.__l.__data_) = v29;
    v31 = HIDWORD(v29);
    v97.__r_.__value_.__s.__data_[4] = BYTE4(v29);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
      if (!v31)
      {
LABEL_63:
        v25 = *(a2 + 40);
        goto LABEL_64;
      }
    }

    else if (!v31)
    {
      goto LABEL_63;
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, **(v28 + 8 * v26));
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v100.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_50;
      }

      v32 = v100.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_50;
      }

      v32 = &v100;
    }

    if (v32->__r_.__value_.__s.__data_[7] == 48)
    {
      v33 = 0;
      if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_50:
    v34 = *v27;
    if (!*v27)
    {
      goto LABEL_58;
    }

    v35 = (a1 + 152);
    do
    {
      v36 = *(v34 + 32);
      v20 = v36 >= v30;
      v37 = v36 < v30;
      if (v20)
      {
        v35 = v34;
      }

      v34 = *(v34 + 8 * v37);
    }

    while (v34);
    if (v35 == v27 || *(v35 + 8) > v30)
    {
LABEL_58:
      v35 = (a1 + 152);
    }

    v33 = v35 == v27;
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_60:
    operator delete(v100.__r_.__value_.__l.__data_);
LABEL_61:
    if (v33)
    {
      v38 = *(v28 + 8 * v26);
      v39 = *a4;
      *v40 = a3;
      v40[1] = v38;
      v40[2] = v39;
    }

    goto LABEL_63;
  }

LABEL_65:
  if (v101 == 2)
  {
    v41 = *(a2 + 56);
    if (v41)
    {
      v42 = 0;
      v43 = (a1 + 152);
      do
      {
        v44 = *(*(a2 + 60) + 8 * v42);
        if (!v44 || !*v44)
        {
          goto LABEL_99;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v97, *v44);
        v46 = v45;
        v98 = v45;
        v47 = HIDWORD(v45);
        v99 = BYTE4(v45);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v47)
          {
            goto LABEL_98;
          }
        }

        else if (!v47)
        {
          goto LABEL_98;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, *v44);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ < 8)
          {
            goto LABEL_84;
          }

          p_p = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
          {
            goto LABEL_84;
          }

          p_p = &__p;
        }

        if (p_p->__r_.__value_.__s.__data_[7] != 48)
        {
LABEL_84:
          v50 = *v43;
          if (!*v43)
          {
            goto LABEL_92;
          }

          v51 = (a1 + 152);
          do
          {
            v52 = *(v50 + 32);
            v20 = v52 >= v46;
            v53 = v52 < v46;
            if (v20)
            {
              v51 = v50;
            }

            v50 = *(v50 + 8 * v53);
          }

          while (v50);
          if (v51 == v43 || *(v51 + 8) > v46)
          {
LABEL_92:
            v51 = (a1 + 152);
          }

          v49 = v51 == v43;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_94:
            if (!v49)
            {
              goto LABEL_98;
            }

LABEL_97:
            v54 = *a4;
            *v55 = a3;
            v55[1] = v44;
            v55[2] = v54;
            goto LABEL_98;
          }

          goto LABEL_96;
        }

        v49 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

LABEL_96:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v49)
        {
          goto LABEL_97;
        }

LABEL_98:
        v41 = *(a2 + 56);
LABEL_99:
        ++v42;
      }

      while (v42 < v41);
    }

    v56 = *(a2 + 68);
    if (v56)
    {
      v57 = 0;
      v58 = (a1 + 152);
      do
      {
        v59 = *(*(a2 + 72) + 8 * v57);
        if (!v59 || !*v59)
        {
          goto LABEL_133;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v97, *v59);
        v61 = v60;
        v98 = v60;
        v62 = HIDWORD(v60);
        v99 = BYTE4(v60);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v62)
          {
            goto LABEL_132;
          }
        }

        else if (!v62)
        {
          goto LABEL_132;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, *v59);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ < 8)
          {
            goto LABEL_118;
          }

          v63 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
          {
            goto LABEL_118;
          }

          v63 = &__p;
        }

        if (v63->__r_.__value_.__s.__data_[7] != 48)
        {
LABEL_118:
          v65 = *v58;
          if (!*v58)
          {
            goto LABEL_126;
          }

          v66 = (a1 + 152);
          do
          {
            v67 = *(v65 + 32);
            v20 = v67 >= v61;
            v68 = v67 < v61;
            if (v20)
            {
              v66 = v65;
            }

            v65 = *(v65 + 8 * v68);
          }

          while (v65);
          if (v66 == v58 || *(v66 + 8) > v61)
          {
LABEL_126:
            v66 = (a1 + 152);
          }

          v64 = v66 == v58;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_128:
            if (!v64)
            {
              goto LABEL_132;
            }

LABEL_131:
            v69 = *a4;
            *v70 = a3;
            v70[1] = v59;
            v70[2] = v69;
            goto LABEL_132;
          }

          goto LABEL_130;
        }

        v64 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_128;
        }

LABEL_130:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v64)
        {
          goto LABEL_131;
        }

LABEL_132:
        v56 = *(a2 + 68);
LABEL_133:
        ++v57;
      }

      while (v57 < v56);
    }

    v71 = *(a2 + 80);
    if (!v71 || !*v71)
    {
      goto LABEL_164;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&v97, *v71);
    v73 = v72;
    v98 = v72;
    v74 = HIDWORD(v72);
    v99 = BYTE4(v72);
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v74)
      {
        goto LABEL_164;
      }
    }

    else if (!v74)
    {
      goto LABEL_164;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, *v71);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_149;
      }

      v75 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_149;
      }

      v75 = &__p;
    }

    if (v75->__r_.__value_.__s.__data_[7] == 48)
    {
      v76 = 0;
LABEL_159:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v76)
        {
          goto LABEL_164;
        }

        goto LABEL_163;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v76)
      {
LABEL_163:
        v82 = *a4;
        *v83 = a3;
        v83[1] = v71;
        v83[2] = v82;
      }

LABEL_164:
      v84 = *(a2 + 88);
      if (!v84 || !*v84)
      {
        goto LABEL_194;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&v97, *v84);
      v86 = v85;
      v98 = v85;
      v87 = HIDWORD(v85);
      v99 = BYTE4(v85);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v87)
        {
          goto LABEL_194;
        }
      }

      else if (!v87)
      {
        goto LABEL_194;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, *v84);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__p.__r_.__value_.__l.__size_ < 8)
        {
          goto LABEL_179;
        }

        v88 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
        {
          goto LABEL_179;
        }

        v88 = &__p;
      }

      if (v88->__r_.__value_.__s.__data_[7] == 48)
      {
        v89 = 0;
        goto LABEL_189;
      }

LABEL_179:
      v90 = a1 + 152;
      v91 = *(a1 + 152);
      if (!v91)
      {
        goto LABEL_187;
      }

      v92 = a1 + 152;
      do
      {
        v93 = *(v91 + 32);
        v20 = v93 >= v86;
        v94 = v93 < v86;
        if (v20)
        {
          v92 = v91;
        }

        v91 = *(v91 + 8 * v94);
      }

      while (v91);
      if (v92 == v90 || *(v92 + 32) > v86)
      {
LABEL_187:
        v92 = a1 + 152;
      }

      v89 = v92 == v90;
LABEL_189:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v89)
        {
          goto LABEL_194;
        }
      }

      else if (!v89)
      {
        goto LABEL_194;
      }

      v95 = *a4;
      *v96 = a3;
      v96[1] = v84;
      v96[2] = v95;
      goto LABEL_194;
    }

LABEL_149:
    v77 = a1 + 152;
    v78 = *(a1 + 152);
    if (!v78)
    {
      goto LABEL_157;
    }

    v79 = a1 + 152;
    do
    {
      v80 = *(v78 + 32);
      v20 = v80 >= v73;
      v81 = v80 < v73;
      if (v20)
      {
        v79 = v78;
      }

      v78 = *(v78 + 8 * v81);
    }

    while (v78);
    if (v79 == v77 || *(v79 + 32) > v73)
    {
LABEL_157:
      v79 = a1 + 152;
    }

    v76 = v79 == v77;
    goto LABEL_159;
  }

LABEL_194:
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }
}

void sub_18F683FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void sub_18F6850F0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void DecoderConfigDescr::DecoderConfigDescr(DecoderConfigDescr *this)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 24) = 0;
  MP4AudioProgramConfig::Clear((this + 88));
  *(this + 1192) = 0u;
  *(this + 1208) = 0u;
  DecoderConfigDescr::cleanup(this);
}

void MP4AudioESDS::SetDecoderConfigDescriptor(uint64_t a1, __int128 *a2)
{
  if ((a1 + 296) != a2)
  {
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 324) = *(a2 + 28);
    *(a1 + 296) = v5;
    *(a1 + 312) = v6;
    *(a1 + 340) = *(a2 + 11);
    v7 = *(a2 + 6);
    *(a1 + 352) = *(a2 + 14);
    *(a1 + 344) = v7;
    *(a1 + 356) = *(a2 + 15);
    v8 = a2[4];
    *(a1 + 376) = *(a2 + 10);
    *(a1 + 360) = v8;
    *(a1 + 384) = *(a2 + 11);
    *(a1 + 392) = *(a2 + 24);
    memcpy((a1 + 396), a2 + 100, 0x440uLL);
    v9 = *(a2 + 149);
    v10 = *(a2 + 150);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1488) = v9;
    v11 = *(a1 + 1496);
    *(a1 + 1496) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = *(a2 + 151);
    v13 = *(a2 + 152);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1504) = v12;
    v14 = *(a1 + 1512);
    *(a1 + 1512) = v13;
    if (v14)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void MP4AudioESDS::~MP4AudioESDS(MP4AudioESDS *this)
{
  v2 = *(this + 189);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 187);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void DecoderConfigDescr::~DecoderConfigDescr(DecoderConfigDescr *this)
{
  v2 = *(this + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 150);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void MP4AudioProgramConfig::Clear(MP4AudioProgramConfig *this)
{
  *this = 0;
  bzero(this + 8, 4uLL);
  bzero(this + 12, 0x84uLL);
  bzero(this + 144, 0x84uLL);
  bzero(this + 276, 0x84uLL);
  bzero(this + 408, 0x84uLL);
  bzero(this + 540, 0x84uLL);
  bzero(this + 672, 0x84uLL);
  bzero(this + 804, 0xCuLL);
  bzero(this + 816, 0xCuLL);
  bzero(this + 828, 0xCuLL);
  *(this + 210) = 0;

  bzero(this + 844, 0x100uLL);
}

void DecoderConfigDescr::cleanup(DecoderConfigDescr *this)
{
  v2 = this + 1192;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  bzero(this + 88, 0x44CuLL);
  v3 = *(this + 150);
  *v2 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 152);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

unint64_t caulk::numeric::exceptional_cast<unsigned int,unsigned long>(unint64_t result)
{
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
  }

  return result;
}

void *std::__list_imp<ID3FrameInfo>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(int a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 == 1667392371)
  {
    result = 1902207331;
    if (a1 > 1634754914)
    {
      if (a1 <= 1700998450)
      {
        if (a1 == 1634754915)
        {
          return (result + 3840);
        }

        if (a1 == 1700997939)
        {
          return 1902324531;
        }
      }

      else
      {
        switch(a1)
        {
          case 1700998451:
            return 1902469939;
          case 1718378851:
            return 1902537827;
          case 1970495843:
            return 1903522657;
        }
      }
    }

    else if (a1 <= 1633772399)
    {
      if (a1 == 1633772320)
      {
        return result;
      }

      if (a1 == 1633772392)
      {
        return (result + 517);
      }
    }

    else
    {
      switch(a1)
      {
        case 1633772400:
          return (result + 525);
        case 1633889587:
          return (result + 464);
        case 1634492771:
          return 1902928227;
      }
    }

    v8 = CADefaultLog();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    CAX4CCString::CAX4CCString(v9, a1);
    *buf = 136315650;
    v11 = "AudioFormatEncryptedFormatTranslator.h";
    v12 = 1024;
    v13 = 222;
    v14 = 2080;
    v15 = v9;
    v5 = "%25s:%-5d Unknown format ID: %s";
    goto LABEL_62;
  }

  if (a2 != 2053467747)
  {
    if (a2 != 1885695587)
    {
      v4 = CADefaultLog();
      result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136315394;
      v11 = "AudioFormatEncryptedFormatTranslator.h";
      v12 = 1024;
      v13 = 229;
      v5 = "%25s:%-5d Invalid encryption flavor";
      v6 = v4;
      v7 = 18;
      goto LABEL_63;
    }

    result = 1885430115;
    if (a1 <= 1634754914)
    {
      if (a1 <= 1633772399)
      {
        if (a1 == 1633772320)
        {
          return result;
        }

        if (a1 != 1633772392)
        {
          goto LABEL_56;
        }

        return (result + 517);
      }

      if (a1 != 1633772400)
      {
        if (a1 != 1633889587)
        {
LABEL_56:
          v8 = CADefaultLog();
          result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          CAX4CCString::CAX4CCString(v9, a1);
          *buf = 136315650;
          v11 = "AudioFormatEncryptedFormatTranslator.h";
          v12 = 1024;
          v13 = 191;
          v14 = 2080;
          v15 = v9;
          v5 = "%25s:%-5d Unknown format ID: %s";
          goto LABEL_62;
        }

        return (result + 464);
      }

      return (result + 525);
    }

    if (a1 > 1700998450)
    {
      if (a1 == 1700998451)
      {
        return 1885692723;
      }

      if (a1 == 1970495843)
      {
        return 1886745441;
      }

      goto LABEL_56;
    }

    if (a1 != 1634754915)
    {
      if (a1 == 1700997939)
      {
        return 1885547315;
      }

      goto LABEL_56;
    }

    return (result + 3840);
  }

  result = 2053202275;
  if (a1 <= 1633889586)
  {
    switch(a1)
    {
      case 1633772320:
        return result;
      case 1633772392:
        return (result + 517);
      case 1633772400:
        return (result + 525);
    }
  }

  else if (a1 > 1700997938)
  {
    if (a1 == 1700997939)
    {
      return 2053319475;
    }

    if (a1 == 1700998451)
    {
      return 2053464883;
    }
  }

  else
  {
    if (a1 == 1633889587)
    {
      return (result + 464);
    }

    if (a1 == 1634492771)
    {
      return 2053923171;
    }
  }

  v8 = CADefaultLog();
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  CAX4CCString::CAX4CCString(v9, a1);
  *buf = 136315650;
  v11 = "AudioFormatEncryptedFormatTranslator.h";
  v12 = 1024;
  v13 = 204;
  v14 = 2080;
  v15 = v9;
  v5 = "%25s:%-5d Unknown format ID: %s";
LABEL_62:
  v6 = v8;
  v7 = 28;
LABEL_63:
  _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
  return 0;
}

void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x1E69E9830];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

uint64_t IPCAUClient::RemoteAUServer::ServerPortDied(IPCAUClient::RemoteAUServer *this)
{
  v12 = *MEMORY[0x1E69E9840];
  CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "IPCAUClient.cpp";
    v8 = 1024;
    v9 = 400;
    v10 = 2048;
    v11 = this;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", &v6, 0x1Cu);
  }

LABEL_7:
  v4 = *(this + 22);
  v3 = *(this + 23);
  while (v4 != v3)
  {
    RemoteAUPropertyListeners::Notify(*(*v4 + 104), *(*v4 + 112), *(*v4 + 72), 101, 0, 0);
    v4 += 8;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t CADeprecated::TSingleton<IPCAUClient>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<IPCAUClient>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<IPCAUClient>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<IPCAUClient>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<IPCAUClient>::sInstance;
}

void RemoteAUPropertyListeners::Notify(RemoteAUPropertyListeners *this, OpaqueAudioComponentInstance *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != this)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - this) >> 3);
    if (v6 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<RemoteAUPropertyListeners::AUPropertyListener>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

void sub_18F6862B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<RemoteAUPropertyListeners::AUPropertyListener>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_18F686794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object)
{
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&object);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a11);
  v21 = *v19;
  if (*v19)
  {
    *(v15 + 264) = v21;
    operator delete(v21);
  }

  CADeprecated::XBasicMIGServer::~XBasicMIGServer(v17);
  MEMORY[0x193ADE240](v15 + 8);
  MEMORY[0x193ADF220](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::TSingleton<AURegistrationServerConnection>::instance()
{
  if (atomic_load_explicit(CADeprecated::TSingleton<AURegistrationServerConnection>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(CADeprecated::TSingleton<AURegistrationServerConnection>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AURegistrationServerConnection>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AURegistrationServerConnection>::sInstance;
}

uint64_t IPCAUClient::ConnectToRegistrationServer(atomic_uint *volatile *this)
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  MainBundle = CFBundleGetMainBundle();
  v3 = MainBundle;
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v3, *MEMORY[0x1E695E120]);
    v19 = ValueForInfoDictionaryKey;
    if (Identifier)
    {
      if (ValueForInfoDictionaryKey)
      {
        CASerializer::CASerializer(&theData, 0);
        operator<<();
        operator<<();
        v5 = *(CADeprecated::TSingleton<AURegistrationServerConnection>::instance() + 48);
        explicit = atomic_load_explicit(this[24], memory_order_acquire);
        Length = theData;
        if (theData)
        {
          BytePtr = CFDataGetBytePtr(theData);
          Length = theData;
          if (theData)
          {
            Length = CFDataGetLength(theData);
          }
        }

        else
        {
          BytePtr = 0;
        }

        memset(reply_port, 0, 32);
        reply_port[5] = 2;
        reply_port[6] = explicit;
        reply_port[8] = 1245184;
        v23 = BytePtr;
        v24 = 16777472;
        v25 = Length;
        v26 = *MEMORY[0x1E69E99E0];
        v27 = Length;
        v11 = mig_get_reply_port();
        reply_port[1] = v5;
        reply_port[2] = v11;
        *buf = -2147478253;
        *&reply_port[3] = 0x15F9600000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(buf);
          v12 = reply_port[2];
        }

        else
        {
          v12 = v11;
        }

        v13 = mach_msg(buf, 275, 0x44u, 0x2Cu, v12, gMediaServerTimeout, 0);
        v14 = v13;
        if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(reply_port[2]);
        }

        else
        {
          if (!v13)
          {
            if (reply_port[4] == 71)
            {
              v15 = -308;
            }

            else if (reply_port[4] == 90106)
            {
              v15 = -300;
              if ((*buf & 0x80000000) == 0 && reply_port[0] == 36 && !reply_port[1])
              {
                v15 = reply_port[7];
                if (!reply_port[7])
                {
                  goto LABEL_41;
                }
              }
            }

            else
            {
              v15 = -301;
            }

LABEL_44:
            mach_msg_destroy(buf);
            v14 = v15;
LABEL_45:
            if (kInterAppAudioScope)
            {
              v16 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v16 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *reply_port = "IPCAUClient.cpp";
              LOWORD(reply_port[2]) = 1024;
              *(&reply_port[2] + 2) = 139;
              HIWORD(reply_port[3]) = 1024;
              reply_port[4] = v14;
              _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d IPCAUClient: can't connect to server (%d)", buf, 0x18u);
            }

            goto LABEL_51;
          }

          mig_dealloc_reply_port(reply_port[2]);
        }

        v15 = 268435460;
        if (v14 == 268435460)
        {
          if ((*buf & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port[2]);
          }

          goto LABEL_44;
        }

        if (v14)
        {
          goto LABEL_45;
        }

LABEL_41:
        IPCAUClient::RefreshRemoteAUList(this);
LABEL_51:
        MEMORY[0x193ADE2A0](&theData);
        return os_unfair_recursive_lock_unlock();
      }

      if (kInterAppAudioScope)
      {
        v9 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
          return os_unfair_recursive_lock_unlock();
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *reply_port = "IPCAUClient.cpp";
        LOWORD(reply_port[2]) = 1024;
        *(&reply_port[2] + 2) = 129;
        v10 = "%25s:%-5d IPCAUClient: bundle display name is nil";
        goto LABEL_14;
      }

      return os_unfair_recursive_lock_unlock();
    }
  }

  else
  {
    v19 = 0;
    Identifier = 0;
  }

  if (kInterAppAudioScope)
  {
    v9 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return os_unfair_recursive_lock_unlock();
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *reply_port = "IPCAUClient.cpp";
    LOWORD(reply_port[2]) = 1024;
    *(&reply_port[2] + 2) = 125;
    v10 = "%25s:%-5d IPCAUClient: main bundle ID is nil";
LABEL_14:
    _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
  }

  return os_unfair_recursive_lock_unlock();
}

void AudioToolboxSoftLink::instance(AudioToolboxSoftLink *this)
{
  {
    if (v1)
    {
      AudioToolboxSoftLink::AudioToolboxSoftLink(v1);
    }
  }
}

void CADeprecated::XBasicMIGServer::~XBasicMIGServer(CADeprecated::XBasicMIGServer *this)
{
  *this = &unk_1F0336D90;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  CADeprecated::XBasicMIGServer::~XBasicMIGServer(this);

  JUMPOUT(0x193ADF220);
}

uint64_t IPCAUClient::InterruptionListener(uint64_t this, void *a2, unsigned int a3, _DWORD *a4, const void *a5)
{
  if (*a4 == 1)
  {
    v5 = this;
    os_unfair_recursive_lock_lock_with_options();
    v6 = *(v5 + 232);
    if (v6 != (v5 + 240))
    {
      do
      {
        v7 = v6[5];
        if (*(v7 + 84) == 1)
        {
          IPCAUClient::AUInstance::Uninitialize(v7);
        }

        v8 = v6[1];
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
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != (v5 + 240));
    }

    return os_unfair_recursive_lock_unlock();
  }

  return this;
}

void IPCAUClient::AUInstance::Uninitialize(IPCAUClient::AUInstance *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 84) == 1)
  {
    *(this + 84) = 0;
    *(this + 49) = 0;
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *(this + 6));
    *(this + 6) = 0;
    v2 = *(this + 2);
    if (*(v2 + 48))
    {
      v11 = 0;
      IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v9, v2, &v11);
      if (v11)
      {
LABEL_16:
        IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v9);
        return;
      }

      if (v10)
      {
        v3 = 0x7FFFFFFF;
      }

      else
      {
        v3 = 10000;
      }

      v4 = IPCAUClient_Uninitialize(*(*(this + 2) + 48), v3, *(this + 20));
      v5 = v4;
      if (v4 == 268435459 || v4 == -308)
      {
        if (kInterAppAudioScope)
        {
          v6 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v13 = "IPCAUClient.cpp";
          v14 = 1024;
          v15 = 433;
          v16 = 1024;
          v17 = v5;
          v18 = 1024;
          v19 = -66749;
          _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
        }
      }

LABEL_15:
      v7 = *(this + 2);
      v8 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
      IPCAURegClient_SetProcessWakeState(*(v8 + 48), *(v7 + 52), 3, buf);
      goto LABEL_16;
    }
  }
}

void sub_18F68704C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va);
  _Unwind_Resume(a1);
}

uint64_t *IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  *a1 = a2;
  CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  v5 = *a1;
  *(a1 + 8) = 0;
  v6 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  v9 = 0;
  v7 = IPCAURegClient_SetProcessWakeState(*(v6 + 48), *(v5 + 52), 0, &v9);
  *(a1 + 8) = v9 != 0;
  *a3 = v7;
  os_unfair_recursive_lock_unlock();
  return a1;
}

void IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(IPCAUClient::RemoteAUServer::TransientWaker *this)
{
  CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  v2 = *this;
  v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  IPCAURegClient_SetProcessWakeState(*(v3 + 48), *(v2 + 52), 1, &v4);
  os_unfair_recursive_lock_unlock();
}

void AudioToolboxSoftLink::AudioToolboxSoftLink(AudioToolboxSoftLink *this)
{
  AudioToolboxSoftLink::instance(void)::global = 0;
  off_1EAD2D910 = 0;
  v1 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 1);
  if (!v1)
  {
    __assert_rtn("AudioToolboxSoftLink", "AudioToolboxSoftLink.h", 27, "lib != nullptr");
  }

  v2 = v1;
  AudioToolboxSoftLink::instance(void)::global = dlsym(v1, "AudioSessionAddInterruptionListenerOnPrimarySession");
  if (!AudioToolboxSoftLink::instance(void)::global || (off_1EAD2D910 = dlsym(v2, "AudioSessionCheckActive")) == 0)
  {
    __assert_rtn("init", "DLSymbol.h", 23, "mImpl != nullptr");
  }
}

uint64_t IPCAUClient::RefreshRemoteAUList(IPCAUClient *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = 268435460;
  os_unfair_recursive_lock_lock_with_options();
  v2 = 5;
  do
  {
    v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    v4 = MEMORY[0x1EEE9AC50];
    v5 = *(v3 + 48);
    memset(&msg[4] + 4, 0, 28);
    memset(msg + 4, 0, 32);
    reply_port = mig_get_reply_port();
    msg[1] = __PAIR64__(reply_port, v5);
    LODWORD(msg[0]) = 5395;
    msg[2] = 0x15F9700000000;
    if (v4)
    {
      voucher_mach_msg_set(msg);
      v7 = HIDWORD(msg[1]);
    }

    else
    {
      v7 = reply_port;
    }

    v8 = mach_msg(msg, 275, 0x18u, 0x40u, v7, gMediaServerTimeout, 0);
    v9 = v8;
    if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(HIDWORD(msg[1]));
      goto LABEL_20;
    }

    if (!v8)
    {
      if (HIDWORD(msg[2]) == 71)
      {
        v9 = -308;
      }

      else if (HIDWORD(msg[2]) == 90107)
      {
        if ((msg[0] & 0x80000000) != 0)
        {
          v9 = -300;
          if (LODWORD(msg[3]) != 1 || *(msg + 4) != 56 || HIBYTE(msg[4]) != 1)
          {
            goto LABEL_29;
          }

          v11 = LODWORD(msg[5]);
          if (LODWORD(msg[5]) == HIDWORD(msg[6]))
          {
            v13 = *(&msg[3] + 4);
            goto LABEL_35;
          }
        }

        else if (HIDWORD(msg[0]) == 36 && LODWORD(msg[4]))
        {
          if (LODWORD(msg[1]))
          {
            v9 = -300;
          }

          else
          {
            v9 = msg[4];
          }

          goto LABEL_29;
        }

        v9 = -300;
      }

      else
      {
        v9 = -301;
      }

LABEL_29:
      mach_msg_destroy(msg);
      goto LABEL_30;
    }

    mig_dealloc_reply_port(HIDWORD(msg[1]));
LABEL_20:
    if (v9 == 268435460)
    {
      if ((msg[0] & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], HIDWORD(msg[1]));
      }

      mach_msg_destroy(msg);
      goto LABEL_45;
    }

LABEL_30:
    if (v9 != 268435459)
    {
      v1 = v9;
      if (v9)
      {
        goto LABEL_45;
      }

      v13 = 0;
      v11 = 0;
LABEL_35:
      CADeserializer::CADeserializer(msg, v13);
      __p = 0;
      v24 = 0;
      v25 = 0;
      v22 = &unk_1F03257B0;
      LODWORD(v21[0]) = 0;
      CADeserializer::Read(msg, v21);
      if (LODWORD(v21[0]) > ((v25 - __p) >> 3))
      {
        std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](LODWORD(v21[0]));
      }

      if (LODWORD(v21[0]))
      {
        LODWORD(v29) = 0;
        cf.__begin_ = 0;
        v26.__begin_ = 0;
        LODWORD(v27) = 0;
        CADeserializer::Read(msg, &v29);
        operator>>();
        CADeserializer::Read(msg, &buf);
        CADeserializer::Read(msg, &buf.__begin_ + 4);
        CADeserializer::Read(msg, &buf.__end_);
        CADeserializer::Read(msg, &buf.__end_ + 4);
        CADeserializer::Read(msg, &buf.__cap_);
        operator>>();
        CADeserializer::Read(msg, &v27);
        operator new();
      }

      mig_deallocate(v13, v11);
      if (kInterAppAudioScope)
      {
        v14 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_54:
          GlobalComponentPluginMgr(v21);
          v16 = v21[1];
          memset(&cf, 0, 24);
          cf.mSorted = 1;
          v17 = __p;
          v18 = v24;
          if (__p != v24)
          {
            do
            {
              v19 = *(*v17 + 8);
              if (v19 != getpid())
              {
                applesauce::CF::StringRef::from_get(&v29, *(*v17 + 16));
                applesauce::CF::StringRef::from_get(&v27, *(*v17 + 48));
                operator new();
              }

              v17 += 8;
            }

            while (v17 != v18);
          }

          AudioComponentVector::subtract(&buf, &cf, &v16->__m_.__opaque[40]);
          AudioComponentVector::subtract(&v26, &v16->__m_.__opaque[40], &cf);
          AudioComponentMgr_Base::addAndRemoveComponents(v16, &buf, v26.__begin_, v26.__end_);
          if (&v16->__m_.__opaque[40] != &cf)
          {
            std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&v16->__m_.__opaque[40], cf.__begin_, cf.__end_, (cf.__end_ - cf.__begin_) >> 4);
          }

          v16[1].__m_.__opaque[0] = cf.mSorted;
          v29 = &v26;
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v29);
          v26.__begin_ = &buf;
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v26);
          buf.__begin_ = &cf;
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&buf);
          if (v21[0])
          {
            std::recursive_mutex::unlock(v21[0]);
          }

          dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_486);
          OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(&v22);
          MEMORY[0x193ADE3E0](msg);
          return os_unfair_recursive_lock_unlock();
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__begin_) = 136315650;
        *(&buf.__begin_ + 4) = "IPCAUClient.cpp";
        WORD2(buf.__end_) = 1024;
        *(&buf.__end_ + 6) = 175;
        WORD1(buf.__cap_) = 1024;
        HIDWORD(buf.__cap_) = (v24 - __p) >> 3;
        _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetched %d remote AU's", &buf, 0x18u);
      }

      goto LABEL_54;
    }

    sleep(1u);
    v12 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    AURegistrationServerConnection::Connect(v12);
    --v2;
  }

  while (v2);
  v1 = 268435459;
LABEL_45:
  if (kInterAppAudioScope)
  {
    v15 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return os_unfair_recursive_lock_unlock();
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(msg[0]) = 136315650;
    *(msg + 4) = "IPCAUClient.cpp";
    WORD2(msg[1]) = 1024;
    *(&msg[1] + 6) = 165;
    WORD1(msg[2]) = 1024;
    HIDWORD(msg[2]) = v1;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d IPCAUClient: error fetching list (%d)", msg, 0x18u);
  }

  return os_unfair_recursive_lock_unlock();
}

void sub_18F687B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::recursive_mutex *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a17 = (v30 - 160);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = &a23;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a11)
  {
    std::recursive_mutex::unlock(a11);
  }

  OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(&a13);
  MEMORY[0x193ADE3E0](&a30);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void *OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_1F03257B0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void ___ZN11IPCAUClient19RefreshRemoteAUListEv_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.coreaudio.AudioComponentRegistrationsChanged", 0, 0, 1u);
}

void OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<IPCAUClient::IPCAUClient(void)::$_0,std::allocator<IPCAUClient::IPCAUClient(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0325830;
  a2[1] = v2;
  return result;
}

void sub_18F688054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  MEMORY[0x193ADE1B0](v9 + 192, a2, a3, a4, a5, a6, a7, a8);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&object);
  CADeprecated::XRemoteMachServer::~XRemoteMachServer(v9);
  MEMORY[0x193ADF220](v9, v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<CADeprecated::XMachReceivePort>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0325778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void IPCAUClient::RemoteAUServer::~RemoteAUServer(IPCAUClient::RemoteAUServer *this)
{
  IPCAUClient::RemoteAUServer::~RemoteAUServer(this);

  JUMPOUT(0x193ADF220);
}

{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0325710;
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "IPCAUClient.cpp";
    v8 = 1024;
    v9 = 392;
    v10 = 2048;
    v11 = this;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d destruct %p", &v6, 0x1Cu);
  }

LABEL_7:
  v3 = *(this + 21);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  CADeprecated::XRemoteMachServer::~XRemoteMachServer(this);
}

void sub_18F6882D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void IPCAUClient::AUInstance::~AUInstance(IPCAUClient::AUInstance *this)
{
  IPCAUClient::AUInstance::~AUInstance(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325748;
  v2 = *(this + 55);
  if (v2)
  {
    _Block_release(v2);
  }

  *(this + 35) = &unk_1F0336E90;
  v7 = (this + 344);
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v7);
  SharableMemoryBlock::~SharableMemoryBlock(this + 35);
  while (1)
  {
    v3 = *(this + 16);
    if (!v3)
    {
      break;
    }

    *(this + 16) = *v3;
    MEMORY[0x193ADF220]();
  }

  while (1)
  {
    v4 = *(this + 17);
    if (!v4)
    {
      break;
    }

    *(this + 17) = *v4;
    MEMORY[0x193ADF220]();
  }

  while (1)
  {
    v5 = *(this + 18);
    if (!v5)
    {
      break;
    }

    *(this + 18) = *v5;
    MEMORY[0x193ADF220]();
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(i))
    {
      i -= 56;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void SharableMemoryBlock::~SharableMemoryBlock(xpc_object_t *this)
{
  *this = (MEMORY[0x1E69E5068] + 16);
  (*(MEMORY[0x1E69E5068] + 32))();
  xpc_release(this[6]);
  this[6] = 0;
}

void std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {

    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v3);
  }
}

void std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    MEMORY[0x193ADF1F0](v2, 0x1000C8077774924);
  }

  operator delete(__p);
}

void IPCAUSharedMemoryBase::Free(IPCAUSharedMemoryBase *this)
{
  SharableMemoryBlock::Free(this);
  if ((*(this + 92) & 1) == 0)
  {
    v3 = *(this + 8);
    for (i = *(this + 9); i != v3; std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(i))
    {
      i -= 56;
    }

    *(this + 9) = v3;
  }
}

void IPCAUSharedMemoryBase::~IPCAUSharedMemoryBase(xpc_object_t *this)
{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);

  SharableMemoryBlock::~SharableMemoryBlock(this);
}

OSStatus AudioOutputUnitPublish(const AudioComponentDescription *inDesc, CFStringRef inName, UInt32 inVersion, AudioUnit inOutputUnit)
{
  v5 = *&inVersion;
  SystemAUsSoftLink::instance(inDesc);
  v8 = off_1ED7463F0;

  return v8(inDesc, inName, v5, inOutputUnit);
}

void CADeprecated::CAGuard::Locker::~Locker(CADeprecated::CAGuard::Locker *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))();
  }
}

IPCAUClient::RemoteAUServer *IPCAUClient::RemoteAUServer::RemoteAUServer(IPCAUClient::RemoteAUServer *this, uint64_t a2, int a3, const __CFString *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = CADeprecated::XRemoteMachServer::XRemoteMachServer(this, "RemoteAUServer", 0);
  *(v6 + 168) = 0u;
  v7 = (v6 + 168);
  *v6 = &unk_1F0325710;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 212) = 0u;
  if (kInterAppAudioScope)
  {
    v8 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 0;
    *&object[4] = 0;
    v9 = MEMORY[0x1E69E9A60];
    MEMORY[0x193ADFB80](*MEMORY[0x1E69E9A60], a2, 0, &object[4]);
    MEMORY[0x193ADFB80](*v9, a2, 1, &object[8]);
    MEMORY[0x193ADFB80](*v9, a2, 2, &v14 + 4);
    MEMORY[0x193ADFB80](*v9, a2, 4, &v14);
    v15[0] = 0;
    snprintf(v15, 0x80uLL, "port 0x%x: %d send, %d rcv, %d sendonce, %d dead name refs", a2, *&object[4], *&object[8], HIDWORD(v14), v14);
    *buf = 136316162;
    v17 = "IPCAUClient.cpp";
    v18 = 1024;
    v19 = 384;
    v20 = 2048;
    v21 = this;
    v22 = 1024;
    v23 = a2;
    v24 = 2080;
    v25 = v15;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p new host port 0x%x %s", buf, 0x2Cu);
  }

LABEL_7:
  CADeprecated::XRemoteMachServer::SetServerPort(this);
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  *object = v11;
  CADeprecated::XMachPortDeathListener::SetDeathNotificationDispatchQueue();
  if (*object)
  {
    dispatch_release(*object);
  }

  if (*v7)
  {
    CFRetain(*v7);
  }

  return this;
}

void sub_18F688A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  v16 = *(v14 + 25);
  if (v16)
  {
    *(v14 + 26) = v16;
    operator delete(v16);
  }

  v17 = *(v14 + 22);
  if (v17)
  {
    *(v14 + 23) = v17;
    operator delete(v17);
  }

  CADeprecated::XRemoteMachServer::~XRemoteMachServer(v14);
  _Unwind_Resume(a1);
}

uint64_t IPCAUClient::AUInstance::CloseMethod(IPCAUClient::AUInstance *this, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v4 = *(v3 + 16);
  v5 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  IPCAURegClient_SetProcessWakeState(*(v5 + 48), *(v4 + 52), 3, buf);
  if (!kInterAppAudioScope)
  {
    v6 = MEMORY[0x1E69E9C10];
LABEL_5:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v3 + 72);
      *buf = 136316162;
      *&buf[4] = "IPCAUClient.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 500;
      *&buf[18] = 2048;
      *&buf[20] = this;
      *&buf[28] = 2048;
      *&buf[30] = v3;
      *&buf[38] = 2048;
      *&buf[40] = v7;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d self %p This %p instance %p", buf, 0x30u);
    }

    goto LABEL_7;
  }

  v6 = *kInterAppAudioScope;
  if (*kInterAppAudioScope)
  {
    goto LABEL_5;
  }

LABEL_7:
  v8 = CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  v9 = v8[30];
  if (v9)
  {
    v10 = *(v3 + 72);
    v11 = v8 + 30;
    v12 = v8[30];
    do
    {
      v13 = v12[4];
      v14 = v13 >= v10;
      v15 = v13 < v10;
      if (v14)
      {
        v11 = v12;
      }

      v12 = v12[v15];
    }

    while (v12);
    if (v11 != v8 + 30 && v10 >= v11[4])
    {
      v16 = v11[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        v18 = v11;
        do
        {
          v17 = v18[2];
          v19 = *v17 == v18;
          v18 = v17;
        }

        while (!v19);
      }

      if (v8[29] == v11)
      {
        v8[29] = v17;
      }

      --v8[31];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v11);
      operator delete(v11);
    }
  }

  v20 = *(v3 + 16);
  v22 = *(v20 + 176);
  v21 = *(v20 + 184);
  while (v22 != v21)
  {
    if (*v22 == v3)
    {
      v23 = v21 - (v22 + 8);
      if (v21 != v22 + 8)
      {
        memmove(v22, v22 + 8, v21 - (v22 + 8));
      }

      *(v20 + 184) = &v22[v23];
      break;
    }

    v22 += 8;
  }

  os_unfair_recursive_lock_unlock();
  v55 = 0;
  IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v53, *(v3 + 16), &v55);
  v24 = v55;
  v25 = MEMORY[0x1E69E99E0];
  if (v55)
  {
    goto LABEL_32;
  }

  v42 = *(*(v3 + 16) + 48);
  if (v54)
  {
    v43 = 0x7FFFFFFF;
  }

  else
  {
    v43 = 10000;
  }

  v44 = *(v3 + 80);
  memset(&buf[4], 0, 40);
  *&buf[24] = *MEMORY[0x1E69E99E0];
  *&buf[32] = v44;
  reply_port = mig_get_reply_port();
  *&buf[8] = v42;
  *&buf[12] = reply_port;
  *buf = 5395;
  *&buf[16] = 0x1605900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(buf);
    v46 = *&buf[12];
  }

  else
  {
    v46 = reply_port;
  }

  v50 = mach_msg(buf, 275, 0x24u, 0x2Cu, v46, v43, 0);
  v51 = v50;
  if ((v50 - 268435458) <= 0xE && ((1 << (v50 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&buf[12]);
  }

  else
  {
    if (!v50)
    {
      if (*&buf[20] == 71)
      {
        v51 = 4294966988;
      }

      else if (*&buf[20] == 90301)
      {
        v51 = 4294966996;
        if ((*buf & 0x80000000) == 0 && *&buf[4] == 36 && !*&buf[8])
        {
          v51 = *&buf[32];
          if (!*&buf[32])
          {
            v24 = 0;
            goto LABEL_32;
          }
        }
      }

      else
      {
        v51 = 4294966995;
      }

      goto LABEL_81;
    }

    mig_dealloc_reply_port(*&buf[12]);
  }

  if (v51 != 268435460)
  {
    goto LABEL_82;
  }

  if ((*buf & 0x1F00) == 0x1100)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *&buf[12]);
  }

  v51 = 268435460;
LABEL_81:
  mach_msg_destroy(buf);
LABEL_82:
  if (v51 != 268435459 && v51 != -308)
  {
    v24 = v51;
    goto LABEL_32;
  }

  v24 = 4294900547;
  if (kInterAppAudioScope)
  {
    v52 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v52 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 433;
    *&buf[18] = 1024;
    *&buf[20] = v51;
    *&buf[24] = 1024;
    *&buf[26] = -66749;
    _os_log_impl(&dword_18F5DF000, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
  }

LABEL_32:
  sleep(1u);
  v26 = CADeprecated::TSingleton<IPCAUClient>::instance();
  v27 = *(v26 + 264) - *(v26 + 256);
  if ((v27 >> 3) >= 1)
  {
    v28 = (v27 >> 3) & 0x7FFFFFFF;
    v29 = v28 + 1;
    v30 = 8 * v28;
    v31 = -8 * v28;
    do
    {
      v32 = *(v26 + 256);
      v33 = *(v32 + v30 - 8);
      if (v33[22] == v33[23] && v33[25] == v33[26])
      {
        v34 = (v32 + v30);
        v35 = v32 + v30 - 8;
        v36 = *(v26 + 264);
        v37 = &v36[-v32];
        v38 = &v37[v31];
        if (v34 != v36)
        {
          memmove(v35, v34, &v37[v31]);
        }

        *(v26 + 264) = &v38[v35];
        (*(*v33 + 8))(v33);
      }

      --v29;
      v30 -= 8;
      v31 += 8;
    }

    while (v29 > 1);
  }

  v39 = *(CADeprecated::TSingleton<AURegistrationServerConnection>::instance() + 48);
  *&buf[24] = *v25;
  *&buf[32] = *(v3 + 56);
  v40 = mig_get_reply_port();
  *buf = 5395;
  *&buf[8] = v39;
  *&buf[12] = v40;
  *&buf[16] = 0x15F9A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(buf);
    v41 = *&buf[12];
  }

  else
  {
    v41 = v40;
  }

  v47 = mach_msg(buf, 275, 0x30u, 0x2Cu, v41, gMediaServerTimeout, 0);
  v48 = v47;
  if ((v47 - 268435458) <= 0xE && ((1 << (v47 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&buf[12]);
    goto LABEL_59;
  }

  if (v47)
  {
    mig_dealloc_reply_port(*&buf[12]);
LABEL_59:
    if (v48 == 268435460)
    {
      if ((*buf & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], *&buf[12]);
      }

      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (*&buf[20] != 90110 || (*buf & 0x80000000) != 0 || *&buf[4] != 36 || *&buf[8] || *&buf[32])
  {
LABEL_62:
    mach_msg_destroy(buf);
  }

LABEL_63:
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v53);
  return v24;
}

uint64_t IPCAUClient::AUInstance::OpenMethod(IPCAUClient::AUInstance *this, const UInt8 *a2, OpaqueAudioComponentInstance *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = 4294900547;
  v4 = *(this + 4);
  if (*(*(v4 + 16) + 48))
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v8 = MainBundle;
      v49 = 0;
      IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v47, *(v4 + 16), &v49);
      v9 = v49;
      if (v49)
      {
LABEL_84:
        IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v47);
        return v9;
      }

      theData[1] = CFBundleGetIdentifier(v8);
      CASerializer::CASerializer(theData, 0);
      operator<<();
      v10 = *(*(v4 + 16) + 48);
      if (v48)
      {
        v11 = 0x7FFFFFFF;
      }

      else
      {
        v11 = 10000;
      }

      explicit = atomic_load_explicit(*(CADeprecated::TSingleton<IPCAUClient>::instance() + 192), memory_order_acquire);
      v13 = *(v4 + 8);
      v44 = *(v4 + 28);
      v45 = *(v4 + 44);
      Length = theData[0];
      if (theData[0])
      {
        BytePtr = CFDataGetBytePtr(theData[0]);
        Length = theData[0];
        if (theData[0])
        {
          Length = CFDataGetLength(theData[0]);
        }
      }

      else
      {
        BytePtr = 0;
      }

      v17 = *(v4 + 56);
      memset(reply_port, 0, 32);
      *&reply_port[20] = 2;
      *&reply_port[24] = explicit;
      *&reply_port[32] = 1245184;
      v52 = BytePtr;
      LODWORD(v53) = 16777472;
      HIDWORD(v53) = Length;
      v54 = *MEMORY[0x1E69E99E0];
      v56 = v44;
      v55 = v13;
      v57 = v45;
      v58 = Length;
      v59 = v17;
      v18 = mig_get_reply_port();
      *&reply_port[4] = v10;
      *&reply_port[8] = v18;
      *buf = -2147478253;
      *&reply_port[12] = 0x1605800000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(buf);
        v19 = *&reply_port[8];
      }

      else
      {
        v19 = v18;
      }

      v20 = mach_msg(buf, 275, 0x6Cu, 0x30u, v19, v11, 0);
      v21 = v20;
      if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(*&reply_port[8]);
        goto LABEL_37;
      }

      if (v20)
      {
        mig_dealloc_reply_port(*&reply_port[8]);
LABEL_37:
        if (v21 == 268435460)
        {
          if ((*buf & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
          }

          mach_msg_destroy(buf);
          v3 = 268435460;
          goto LABEL_55;
        }

LABEL_46:
        if (v21 == 268435459 || v21 == -308)
        {
          if (kInterAppAudioScope)
          {
            v23 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
LABEL_83:
              MEMORY[0x193ADE2A0](theData);
              v9 = v3;
              goto LABEL_84;
            }
          }

          else
          {
            v23 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *reply_port = "IPCAUClient.cpp";
            *&reply_port[8] = 1024;
            *&reply_port[10] = 433;
            *&reply_port[14] = 1024;
            *&reply_port[16] = v21;
            *&reply_port[20] = 1024;
            *&reply_port[22] = -66749;
            _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
          }
        }

        else
        {
          v3 = v21;
        }

LABEL_55:
        if (kInterAppAudioScope)
        {
          v24 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *reply_port = "IPCAUClient.cpp";
          *&reply_port[8] = 1024;
          *&reply_port[10] = 487;
          *&reply_port[14] = 2048;
          *&reply_port[16] = this;
          *&reply_port[24] = 2048;
          *&reply_port[26] = v4;
          *&reply_port[34] = 2048;
          v52 = a2;
          LOWORD(v53) = 1024;
          *(&v53 + 2) = v3;
          _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d self %p This %p instance %p err %d", buf, 0x36u);
        }

LABEL_61:
        if (!v3)
        {
          *(v4 + 72) = a2;
          v25 = CADeprecated::TSingleton<IPCAUClient>::instance();
          os_unfair_recursive_lock_lock_with_options();
          v26 = *(v4 + 72);
          v27 = *(v25 + 240);
          if (!v27)
          {
LABEL_68:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v28 = v27;
              v29 = v27[4];
              if (v26 >= v29)
              {
                break;
              }

              v27 = *v28;
              if (!*v28)
              {
                goto LABEL_68;
              }
            }

            if (v29 >= v26)
            {
              break;
            }

            v27 = v28[1];
            if (!v27)
            {
              goto LABEL_68;
            }
          }

          v30 = *(v4 + 16);
          v32 = v30[23];
          v31 = v30[24];
          if (v32 >= v31)
          {
            v34 = v30[22];
            v35 = v32 - v34;
            v36 = (v32 - v34) >> 3;
            v37 = v36 + 1;
            if ((v36 + 1) >> 61)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v38 = v31 - v34;
            if (v38 >> 2 > v37)
            {
              v37 = v38 >> 2;
            }

            if (v38 >= 0x7FFFFFFFFFFFFFF8)
            {
              v39 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v37;
            }

            if (v39)
            {
              if (!(v39 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v40 = (v32 - v34) >> 3;
            v41 = (8 * v36);
            v42 = (8 * v36 - 8 * v40);
            *v41 = v4;
            v33 = v41 + 1;
            memcpy(v42, v34, v35);
            v30[22] = v42;
            v30[23] = v33;
            v30[24] = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v32 = v4;
            v33 = v32 + 8;
          }

          v30[23] = v33;
          os_unfair_recursive_lock_unlock();
          v3 = 0;
        }

        goto LABEL_83;
      }

      if (*&reply_port[16] == 71)
      {
        v21 = 4294966988;
      }

      else if (*&reply_port[16] == 90300)
      {
        if ((*buf & 0x80000000) == 0)
        {
          if (*reply_port == 40)
          {
            if (!*&reply_port[4])
            {
              v21 = *&reply_port[28];
              if (!*&reply_port[28])
              {
                v3 = 0;
                *(v4 + 80) = *&reply_port[32];
                goto LABEL_55;
              }

              goto LABEL_45;
            }
          }

          else if (*reply_port == 36)
          {
            if (*&reply_port[4])
            {
              v22 = 1;
            }

            else
            {
              v22 = *&reply_port[28] == 0;
            }

            if (v22)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = *&reply_port[28];
            }

            goto LABEL_45;
          }
        }

        v21 = 4294966996;
      }

      else
      {
        v21 = 4294966995;
      }

LABEL_45:
      mach_msg_destroy(buf);
      goto LABEL_46;
    }

    if (kInterAppAudioScope)
    {
      v16 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        return 4294967246;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *reply_port = "IPCAUClient.cpp";
      *&reply_port[8] = 1024;
      *&reply_port[10] = 474;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d IPCAUClient: main bundle is nil", buf, 0x12u);
    }

    return 4294967246;
  }

  return v3;
}

void sub_18F6897B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  os_unfair_recursive_lock_unlock();
  MEMORY[0x193ADE2A0](va);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va1);
  _Unwind_Resume(a1);
}

uint64_t IPCAUSharedMemory::RecomputeHeaderSize(uint64_t this, int a2)
{
  v2 = 4 * a2 + 2275;
  if (!a2)
  {
    v2 = 2279;
  }

  *(this + 56) = (v2 + *(this + 96)) & 0xFFFFFFF0;
  return this;
}

void IPCAUSharedMemory::~IPCAUSharedMemory(xpc_object_t *this)
{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);

  SharableMemoryBlock::~SharableMemoryBlock(this);
}

uint64_t (*IPCAUClient::AUInstance::LookupMethod(IPCAUClient::AUInstance *this))(void *)
{
  if ((this - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return off_1F0325888[(this - 1)];
  }
}

uint64_t IPCAU_Process(IPCAUClient::AUInstance **a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, AudioBufferList *a5)
{
  if (a2 && a3 && a5)
  {
    return IPCAUClient::AUInstance::RenderOrProcess(a1[4], 1, a2, a3, 0, a4, a5);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t IPCAUClient::AUInstance::RenderOrProcess(IPCAUClient::AUInstance *this, char a2, unsigned int *a3, const AudioTimeStamp *a4, uint64_t a5, uint64_t a6, AudioBufferList *a7)
{
  v95 = *MEMORY[0x1E69E9840];
  if (*(this + 84) == 1)
  {
    if (!*(this + 49))
    {
      *(this + 49) = pthread_self();
    }

    os_unfair_recursive_lock_lock_with_options();
    i = 0;
    v14 = IPCAUSharedMemoryBase::mutableAudioBufferList((this + 280), *(this + 23), a6);
    if (!v14)
    {
      goto LABEL_77;
    }

    v15 = v14;
    if (a7->mNumberBuffers != *v14)
    {
      v18 = 4294967246;
      goto LABEL_78;
    }

    v16 = *(this + 38);
    if (!v16)
    {
LABEL_33:
      if (a2)
      {
        v18 = 4294967292;
LABEL_79:
        os_unfair_recursive_lock_unlock();
        return v18;
      }

      if (*(this + 152) == 1)
      {
        v27 = this + 128;
        while (1)
        {
          v28 = *(this + 17);
          if (!v28)
          {
            break;
          }

          v29 = *(this + 17);
          atomic_compare_exchange_strong(this + 17, &v29, 0);
          if (v29 == v28)
          {
            v30 = 0;
            do
            {
              v31 = v30;
              v30 = v28;
              v28 = *v28;
              *v30 = v31;
            }

            while (v28);
            while (1)
            {
              v32 = v31;
              v33 = *(v30 + 8);
              if (v33)
              {
                if (v33 == 2)
                {
                  v37 = *v27;
                  if (*v27)
                  {
                    do
                    {
                      v38 = *v37;
                      do
                      {
                        v39 = *(this + 18);
                        *v37 = v39;
                        v40 = v39;
                        atomic_compare_exchange_strong(this + 18, &v40, v37);
                      }

                      while (v40 != v39);
                      v37 = v38;
                    }

                    while (v38);
                  }

                  do
                  {
                    v41 = *(this + 18);
                    *v30 = v41;
                    v42 = v41;
                    atomic_compare_exchange_strong(this + 18, &v42, v30);
                  }

                  while (v42 != v41);
                }

                else if (v33 == 1)
                {
                  v34 = *v27;
                  if (*v27)
                  {
                    v35 = (this + 128);
                    while (1)
                    {
                      v36 = v34;
                      if (v34[2] == *(v30 + 16) && v34[3] == *(v30 + 24))
                      {
                        break;
                      }

                      v34 = *v34;
                      v35 = v36;
                      if (!*v36)
                      {
                        goto LABEL_67;
                      }
                    }

                    *v35 = *v34;
                    do
                    {
                      v47 = *(this + 18);
                      *v36 = v47;
                      v48 = v47;
                      atomic_compare_exchange_strong(this + 18, &v48, v36);
                    }

                    while (v48 != v47);
                  }

                  do
                  {
LABEL_67:
                    v49 = *(this + 18);
                    *v30 = v49;
                    v50 = v49;
                    atomic_compare_exchange_strong(this + 18, &v50, v30);
                  }

                  while (v50 != v49);
                }
              }

              else
              {
                v43 = *v27;
                v44 = (this + 128);
                if (*v27)
                {
                  while (1)
                  {
                    v44 = v43;
                    if (v43[2] == *(v30 + 16) && v43[3] == *(v30 + 24))
                    {
                      break;
                    }

                    v43 = *v43;
                    if (!*v44)
                    {
                      goto LABEL_62;
                    }
                  }

                  do
                  {
                    v45 = *(this + 18);
                    *v30 = v45;
                    v46 = v45;
                    atomic_compare_exchange_strong(this + 18, &v46, v30);
                  }

                  while (v46 != v45);
                }

                else
                {
LABEL_62:
                  *v44 = v30;
                  *v30 = 0;
                }
              }

              if (!v32)
              {
                goto LABEL_69;
              }

              v31 = *v32;
              v30 = v32;
            }
          }
        }

LABEL_69:
        for (i = *a3 | 4; ; (*(v27 + 2))(*(v27 + 3), &i, a4, a5, a6, a7))
        {
          v27 = *v27;
          if (!v27)
          {
            break;
          }
        }
      }

      if (!*(this + 23))
      {
        goto LABEL_84;
      }

      if (!*(this + 40))
      {
        v18 = 4294956420;
        goto LABEL_78;
      }

      v51 = IPCAUSharedMemoryBase::mutableAudioBufferList((this + 280), 0, a6);
      if (v51)
      {
        if (*(this + 40) == 2)
        {
          v52 = (*(this + 21))(*(this + 22), a3, a4, 0, a6, v51);
        }

        else
        {
          v52 = AudioUnitRender(*(this + 23), a3, a4, *(this + 48), a6, v51);
        }

        v18 = v52;
        if (v52)
        {
          goto LABEL_78;
        }

LABEL_84:
        if (*(this + 153))
        {
          v54 = 0;
          v55 = 0;
        }

        else
        {
          v56 = pthread_self();
          ScheduledPriority = CADeprecated::CAPThread::GetScheduledPriority(v56, v57);
          v54 = ScheduledPriority;
          auoop::gWorkgroupManager(ScheduledPriority);
          v55 = *auoop::tlsWorkgroupPort();
          *(this + 153) = 1;
        }

        v59 = *(this + 6);
        v60 = *(this + 20);
        mSampleTime = a4->mSampleTime;
        mHostTime = a4->mHostTime;
        mRateScalar = a4->mRateScalar;
        v64 = a4->mFlags & 7;
        memset(&msg[4], 0, 32);
        *&msg[24] = 1;
        *&msg[28] = v55;
        v83 = 1245184;
        v84 = *MEMORY[0x1E69E99E0];
        v65 = *a3;
        v85 = v60;
        v86 = v65;
        v87 = mSampleTime;
        v88 = mHostTime;
        v89 = mRateScalar;
        v90 = v64;
        v91 = 0;
        v92 = a5;
        v93 = a6;
        v94 = v54;
        reply_port = mig_get_reply_port();
        *&msg[8] = v59;
        *&msg[12] = reply_port;
        *msg = -2147478253;
        *&msg[16] = 0x1606600000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(msg);
          v67 = *&msg[12];
        }

        else
        {
          v67 = reply_port;
        }

        v68 = mach_msg(msg, 275, 0x64u, 0x30u, v67, gMediaServerTimeout, 0);
        v69 = v68;
        if ((v68 - 268435458) <= 0xE && ((1 << (v68 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(*&msg[12]);
          goto LABEL_106;
        }

        if (v68)
        {
          mig_dealloc_reply_port(*&msg[12]);
LABEL_106:
          v18 = 268435460;
          if (v69 == 268435460)
          {
            if ((*msg & 0x1F00) == 0x1100)
            {
              mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
            }

            mach_msg_destroy(msg);
            goto LABEL_78;
          }

          goto LABEL_115;
        }

        if (*&msg[20] == 71)
        {
          v69 = 4294966988;
        }

        else if (*&msg[20] == 90314)
        {
          if ((*msg & 0x80000000) == 0)
          {
            if (*&msg[4] == 40)
            {
              if (!*&msg[8])
              {
                v69 = *&msg[32];
                if (!*&msg[32])
                {
                  *a3 = v83;
                  goto LABEL_127;
                }

                goto LABEL_114;
              }
            }

            else if (*&msg[4] == 36)
            {
              if (*&msg[8])
              {
                v70 = 1;
              }

              else
              {
                v70 = *&msg[32] == 0;
              }

              if (v70)
              {
                v69 = 4294966996;
              }

              else
              {
                v69 = *&msg[32];
              }

              goto LABEL_114;
            }
          }

          v69 = 4294966996;
        }

        else
        {
          v69 = 4294966995;
        }

LABEL_114:
        mach_msg_destroy(msg);
LABEL_115:
        if (v69 == 268435459)
        {
          goto LABEL_118;
        }

        if (v69)
        {
          if (v69 != -308)
          {
            v18 = v69;
            goto LABEL_78;
          }

LABEL_118:
          v18 = 4294900547;
          if (kInterAppAudioScope)
          {
            v71 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v71 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *msg = 136315906;
            *&msg[4] = "IPCAUClient.cpp";
            *&msg[12] = 1024;
            *&msg[14] = 433;
            *&msg[18] = 1024;
            *&msg[20] = v69;
            *&msg[24] = 1024;
            *&msg[26] = -66749;
            _os_log_impl(&dword_18F5DF000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
          }

          goto LABEL_78;
        }

LABEL_127:
        if (*(this + 152) == 1)
        {
          i = *a3 | 8;
          for (j = this + 128; ; (*(j + 2))(*(j + 3), &i, a4, a5, a6, v15))
          {
            j = *j;
            if (!j)
            {
              break;
            }
          }
        }

        v73 = *v15;
        if (v73)
        {
          v74 = 0;
          p_mData = &a7->mBuffers[0].mData;
          v76 = (v15 + 4);
          do
          {
            v77 = *(v76 - 1);
            *(p_mData - 1) = v77;
            v78 = *v76;
            if (*p_mData)
            {
              memcpy(*p_mData, v78, v77);
              v73 = *v15;
            }

            else
            {
              *p_mData = v78;
            }

            v18 = 0;
            ++v74;
            p_mData += 2;
            v76 += 2;
          }

          while (v74 < v73);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_78;
      }

LABEL_77:
      v18 = 4294956421;
      goto LABEL_78;
    }

    v17 = v16 + *(this + 94);
    if (*(v17 + 2176))
    {
      v18 = 4294900549;
LABEL_78:
      **(this + 38) = 0;
      goto LABEL_79;
    }

    v19 = v17 + 2048;
    *(v17 + 2120) = 0;
    v20 = *(this + 51);
    if (v20 && !v20(*(this + 50), v17 + 2104, v17 + 2112))
    {
      *(v19 + 72) |= 0x100u;
    }

    v21 = *(this + 52);
    if (v21 && !v21(*(this + 50), v19 + 76, v19 + 80, v19 + 84, v19 + 88))
    {
      *(v19 + 72) |= 0x200u;
    }

    msg[0] = 0;
    v80 = 0;
    v79 = 0;
    v22 = *(this + 54);
    if (v22 && !v22(*(this + 50), msg, &v80 + 1, &v80, v19 + 96, &v79, v19 + 104, v19 + 112))
    {
      v26 = *(v19 + 72);
      v25 = v26 | 0x400;
      *(v19 + 72) = v26 | 0x400;
      if (msg[0])
      {
        v25 = v26 | 0x402;
        *(v19 + 72) = v26 | 0x402;
      }

      if (!HIBYTE(v80))
      {
        goto LABEL_28;
      }

      v25 |= 4u;
    }

    else
    {
      v23 = *(this + 53);
      if (!v23 || v23(*(this + 50), msg, &v80, v19 + 96, &v79, v19 + 104, v19 + 112))
      {
LABEL_32:
        *(v19 + 120) = mach_absolute_time();
        goto LABEL_33;
      }

      v24 = *(v19 + 72);
      v25 = v24 | 0x400;
      *(v19 + 72) = v24 | 0x400;
      if (!msg[0])
      {
LABEL_28:
        if (v80)
        {
          v25 |= 1u;
          *(v19 + 72) = v25;
        }

        if (v79)
        {
          *(v19 + 72) = v25 | 8;
        }

        goto LABEL_32;
      }

      v25 = v24 | 0x402;
    }

    *(v19 + 72) = v25;
    goto LABEL_28;
  }

  return 4294956429;
}

void *IPCAUSharedMemoryBase::mutableAudioBufferList(IPCAUSharedMemoryBase *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((*(this + 9) - v3) >> 3) <= a2)
  {
    return 0;
  }

  v5 = v3 + 56 * a2;
  v6 = *(this + 22);
  if (v6 >= a3)
  {
    v6 = a3;
  }

  v7 = v6 * *(v5 + 24);
  v8 = *(v5 + 40);
  v9 = v8[4];
  if (v9)
  {
    v10 = v9 >= v7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v8 + 6;
    v12 = v8[6];
    if (v12)
    {
      v13 = 0;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = v8 + 21;
      do
      {
        v16 = vdupq_n_s64(v13);
        v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_18F9016C0)));
        if (vuzp1_s16(v17, *v14.i8).u8[0])
        {
          *(v15 - 12) = v7;
        }

        if (vuzp1_s16(v17, *&v14).i8[2])
        {
          *(v15 - 8) = v7;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_18F9016B0)))).i32[1])
        {
          *(v15 - 4) = v7;
          *v15 = v7;
        }

        v13 += 4;
        v15 += 16;
      }

      while (((v12 + 3) & 0x1FFFFFFFCLL) != v13);
    }

    v18 = (*(v3 + 56 * a2 + 48) + 24);

    return memcpy(v18, v11, (16 * v12) | 8);
  }

  else
  {
    v19 = CAAssertRtn();
    return IPCAU_RemovePropertyListenerWithUserData(v19, v20, v21, v22);
  }
}

uint64_t IPCAUClient::AUInstance::RemovePropertyListener(IPCAUClient::AUInstance *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4, int a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*(*(this + 2) + 48))
  {
    return 4294900547;
  }

  v8 = *(this + 13);
  v7 = *(this + 14);
  if (v8 != v7)
  {
    v9 = *(this + 13);
    while (*v9 != a2 || *(v9 + 8) != a3 || a5 && *(v9 + 16) != a4)
    {
      v9 += 24;
      if (v9 == v7)
      {
        goto LABEL_14;
      }
    }

    v11 = v7 - (v9 + 24);
    if (v7 != v9 + 24)
    {
      memmove(v9, (v9 + 24), v7 - (v9 + 24));
      v8 = *(this + 13);
    }

    v7 = v9 + v11;
    *(this + 14) = v9 + v11;
  }

LABEL_14:
  if (v8 == v7)
  {
    v14 = 1;
  }

  else
  {
    v12 = v8 + 24;
    do
    {
      v13 = *(v12 - 24);
      v15 = v13 == a2;
      v14 = v13 != a2;
      v15 = v15 || v12 == v7;
      v12 += 24;
    }

    while (!v15);
  }

  v10 = 0;
  if ((a2 & 0xFFFFFFFE) != 0x64 && v14)
  {
    v28 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v26, *(this + 2), &v28);
    v10 = v28;
    if (v28)
    {
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v26);
      return v10;
    }

    v16 = *(*(this + 2) + 48);
    if (v27)
    {
      v17 = 0x7FFFFFFF;
    }

    else
    {
      v17 = 10000;
    }

    v18 = *(this + 20);
    v30 = 0;
    memset(&msg[4], 0, 32);
    *&msg[24] = *MEMORY[0x1E69E99E0];
    *&msg[32] = v18;
    LODWORD(v30) = a2;
    reply_port = mig_get_reply_port();
    *&msg[8] = v16;
    *&msg[12] = reply_port;
    *msg = 5395;
    *&msg[16] = 0x1606100000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v20 = *&msg[12];
    }

    else
    {
      v20 = reply_port;
    }

    v21 = mach_msg(msg, 275, 0x28u, 0x2Cu, v20, v17, 0);
    v22 = v21;
    if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else
    {
      if (!v21)
      {
        if (*&msg[20] == 71)
        {
          v23 = -308;
        }

        else if (*&msg[20] == 90309)
        {
          v23 = -300;
          if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
          {
            v23 = *&msg[32];
            if (!*&msg[32])
            {
              goto LABEL_59;
            }
          }
        }

        else
        {
          v23 = -301;
        }

        goto LABEL_50;
      }

      mig_dealloc_reply_port(*&msg[12]);
    }

    v23 = 268435460;
    if (v22 != 268435460)
    {
LABEL_51:
      if (v22 != 268435459 && v22 != -308)
      {
        goto LABEL_59;
      }

      if (kInterAppAudioScope)
      {
        v24 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_59:
          IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v26);
          return 0;
        }
      }

      else
      {
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *msg = 136315906;
        *&msg[4] = "IPCAUClient.cpp";
        *&msg[12] = 1024;
        *&msg[14] = 433;
        *&msg[18] = 1024;
        *&msg[20] = v22;
        *&msg[24] = 1024;
        *&msg[26] = -66749;
        _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
      }

      goto LABEL_59;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_50:
    mach_msg_destroy(msg);
    v22 = v23;
    goto LABEL_51;
  }

  return v10;
}

uint64_t IPCAU_RemoveRenderNotify(void *a1, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a3)
{
  v5 = a1[4];
  TThreadSafeList<IPCAUClient::RenderCallback>::AllocNode(v5 + 128);
  *(v6 + 8) = 1;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  do
  {
    v7 = *(v5 + 136);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong((v5 + 136), &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

void TThreadSafeList<IPCAUClient::RenderCallback>::AllocNode(uint64_t a1)
{
  do
  {
    v1 = *(a1 + 16);
    if (!v1)
    {
      operator new();
    }

    v2 = *(a1 + 16);
    atomic_compare_exchange_strong((a1 + 16), &v2, 0);
  }

  while (v2 != v1);
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
    do
    {
      v6 = *(a1 + 16);
      *v5 = v6;
      v7 = v6;
      atomic_compare_exchange_strong((a1 + 16), &v7, v3);
    }

    while (v7 != v6);
  }
}

uint64_t IPCAU_AddRenderNotify(void *a1, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a3)
{
  v5 = a1[4];
  *(v5 + 152) = 1;
  TThreadSafeList<IPCAUClient::RenderCallback>::AllocNode(v5 + 128);
  *(v6 + 8) = 0;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  do
  {
    v7 = *(v5 + 136);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong((v5 + 136), &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

uint64_t IPCAU_Render(IPCAUClient::AUInstance **a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  if (a2 && a3 && a6)
  {
    return IPCAUClient::AUInstance::RenderOrProcess(a1[4], 0, a2, a3, a4, a5, a6);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t IPCAU_AddPropertyListener(void *a1, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = 4294900547;
  v5 = a1[4];
  if (*(*(v5 + 16) + 48))
  {
    v7 = *(v5 + 104);
    v8 = *(v5 + 112);
    if (v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      v9 = v7 + 24;
      do
      {
        v10 = *(v9 - 24);
        v11 = v10 != a2;
        v12 = v10 == a2 || v9 == v8;
        v9 += 24;
      }

      while (!v12);
    }

    v13 = *(v5 + 120);
    if (v8 >= v13)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v7) >> 3);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<RemoteAUPropertyListeners::AUPropertyListener>::allocate_at_least[abi:ne200100](v18);
      }

      v19 = 24 * v15;
      *v19 = a2;
      *(v19 + 8) = a3;
      *(v19 + 16) = a4;
      v14 = 24 * v15 + 24;
      v20 = *(v5 + 104);
      v21 = *(v5 + 112) - v20;
      v22 = v19 - v21;
      memcpy((v19 - v21), v20, v21);
      v23 = *(v5 + 104);
      *(v5 + 104) = v22;
      *(v5 + 112) = v14;
      *(v5 + 120) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v8 = a2;
      v14 = v8 + 24;
      *(v8 + 8) = a3;
      *(v8 + 16) = a4;
    }

    *(v5 + 112) = v14;
    v24 = !v11;
    if ((a2 & 0xFFFFFFFE) == 0x64)
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }

    v38 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v36, *(v5 + 16), &v38);
    v25 = v38;
    if (v38)
    {
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v36);
      return v25;
    }

    v26 = *(*(v5 + 16) + 48);
    if (v37)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v27 = 10000;
    }

    v28 = *(v5 + 80);
    v40 = 0;
    memset(&msg[4], 0, 32);
    *&msg[24] = *MEMORY[0x1E69E99E0];
    *&msg[32] = v28;
    LODWORD(v40) = a2;
    reply_port = mig_get_reply_port();
    *&msg[8] = v26;
    *&msg[12] = reply_port;
    *msg = 5395;
    *&msg[16] = 0x1606000000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v30 = *&msg[12];
    }

    else
    {
      v30 = reply_port;
    }

    v31 = mach_msg(msg, 275, 0x28u, 0x2Cu, v30, v27, 0);
    v32 = v31;
    if ((v31 - 268435458) <= 0xE && ((1 << (v31 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else
    {
      if (!v31)
      {
        if (*&msg[20] == 71)
        {
          v33 = -308;
        }

        else if (*&msg[20] == 90308)
        {
          v33 = -300;
          if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
          {
            v33 = *&msg[32];
            if (!*&msg[32])
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          v33 = -301;
        }

        goto LABEL_51;
      }

      mig_dealloc_reply_port(*&msg[12]);
    }

    v33 = 268435460;
    if (v32 != 268435460)
    {
LABEL_52:
      if (v32 != 268435459 && v32 != -308)
      {
        goto LABEL_60;
      }

      if (kInterAppAudioScope)
      {
        v34 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_60:
          IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v36);
          return 0;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *msg = 136315906;
        *&msg[4] = "IPCAUClient.cpp";
        *&msg[12] = 1024;
        *&msg[14] = 433;
        *&msg[18] = 1024;
        *&msg[20] = v32;
        *&msg[24] = 1024;
        *&msg[26] = -66749;
        _os_log_impl(&dword_18F5DF000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
      }

      goto LABEL_60;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_51:
    mach_msg_destroy(msg);
    v32 = v33;
    goto LABEL_52;
  }

  return v4;
}

uint64_t IPCAU_Reset(void *a1, int a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  if (kInterAppAudioScope)
  {
    v6 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "IPCAUClient.cpp";
    *reply_port = 1024;
    *&reply_port[2] = 1001;
    *&reply_port[6] = 2048;
    *&reply_port[8] = v5;
    _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", buf, 0x1Cu);
  }

LABEL_7:
  v7 = 4294900547;
  v8 = *(v5 + 16);
  if (*(v8 + 48))
  {
    v22 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v20, v8, &v22);
    v9 = v22;
    if (v22)
    {
LABEL_45:
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v20);
      return v9;
    }

    v10 = *(*(v5 + 16) + 48);
    if (v21)
    {
      v11 = 0x7FFFFFFF;
    }

    else
    {
      v11 = 10000;
    }

    v12 = *(v5 + 80);
    *&reply_port[12] = *MEMORY[0x1E69E99E0];
    v25 = v12;
    v26 = a2;
    v27 = a3;
    v13 = mig_get_reply_port();
    *buf = 5395;
    *&buf[8] = v10;
    *reply_port = v13;
    *&reply_port[4] = 0x1605C00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(buf);
      v14 = *reply_port;
    }

    else
    {
      v14 = v13;
    }

    v15 = mach_msg(buf, 275, 0x2Cu, 0x2Cu, v14, v11, 0);
    v16 = v15;
    if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*reply_port);
    }

    else
    {
      if (!v15)
      {
        if (*&reply_port[8] == 71)
        {
          v17 = 4294966988;
        }

        else if (*&reply_port[8] == 90304)
        {
          v17 = 4294966996;
          if ((*buf & 0x80000000) == 0 && *&buf[4] == 36 && !*&buf[8])
          {
            v17 = v25;
            if (!v25)
            {
              v7 = 0;
              goto LABEL_42;
            }
          }
        }

        else
        {
          v17 = 4294966995;
        }

        goto LABEL_32;
      }

      mig_dealloc_reply_port(*reply_port);
    }

    v17 = 268435460;
    if (v16 != 268435460)
    {
      goto LABEL_33;
    }

    if ((*buf & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *reply_port);
    }

LABEL_32:
    mach_msg_destroy(buf);
    v16 = v17;
LABEL_33:
    if (v16 == 268435459 || v16 == -308)
    {
      if (kInterAppAudioScope)
      {
        v18 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "IPCAUClient.cpp";
        *reply_port = 1024;
        *&reply_port[2] = 433;
        *&reply_port[6] = 1024;
        *&reply_port[8] = v16;
        *&reply_port[12] = 1024;
        *&reply_port[14] = -66749;
        _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
      }

      goto LABEL_42;
    }

    v7 = v16;
LABEL_42:
    if (*(v5 + 84) == 1)
    {
      os_unfair_recursive_lock_lock_with_options();
      **(v5 + 304) = 0;
      os_unfair_recursive_lock_unlock();
    }

    v9 = v7;
    goto LABEL_45;
  }

  return v7;
}

uint64_t IPCAU_SetParameter(void *a1, mach_msg_size_t a2, int a3, int a4, float a5, mach_port_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = 4294900547;
  v8 = a1[4];
  v9 = *(v8 + 16);
  if (*(v9 + 48))
  {
    v14 = *(v8 + 392);
    if (!v14)
    {
      goto LABEL_5;
    }

    if (v14 != pthread_self())
    {
      v9 = *(v8 + 16);
LABEL_5:
      v27 = 0;
      IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v25, v9, &v27);
      v15 = v27;
      if (!v27)
      {
        v16 = *(*(v8 + 16) + 48);
        if (v26)
        {
          v17 = 0x7FFFFFFF;
        }

        else
        {
          v17 = 10000;
        }

        v18 = *(v8 + 80);
        v29 = *MEMORY[0x1E69E99E0];
        v30 = v18;
        v31 = a2;
        v32 = a3;
        v33 = a4;
        v34 = a5;
        v35 = a6;
        reply_port = mig_get_reply_port();
        *&msg.msgh_bits = 5395;
        msg.msgh_remote_port = v16;
        msg.msgh_local_port = reply_port;
        *&msg.msgh_voucher_port = 0x1606400000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(&msg);
          msgh_local_port = msg.msgh_local_port;
        }

        else
        {
          msgh_local_port = reply_port;
        }

        v21 = mach_msg(&msg, 275, 0x38u, 0x2Cu, msgh_local_port, v17, 0);
        v15 = v21;
        if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
          v22 = 268435460;
          if (v15 != 268435460)
          {
LABEL_31:
            if (v15 != 268435459 && v15 != -308)
            {
              goto LABEL_40;
            }

            if (kInterAppAudioScope)
            {
              v23 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
LABEL_39:
                v15 = 4294900547;
                goto LABEL_40;
              }
            }

            else
            {
              v23 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              msg.msgh_bits = 136315906;
              *&msg.msgh_size = "IPCAUClient.cpp";
              LOWORD(msg.msgh_local_port) = 1024;
              *(&msg.msgh_local_port + 2) = 433;
              HIWORD(msg.msgh_voucher_port) = 1024;
              msg.msgh_id = v15;
              LOWORD(v29) = 1024;
              *(&v29 + 2) = -66749;
              _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &msg, 0x1Eu);
            }

            goto LABEL_39;
          }

          if ((msg.msgh_bits & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
          }

LABEL_30:
          mach_msg_destroy(&msg);
          v15 = v22;
          goto LABEL_31;
        }

        if (v21)
        {
          mig_dealloc_reply_port(msg.msgh_local_port);
          goto LABEL_25;
        }

        if (msg.msgh_id == 71)
        {
          v22 = 4294966988;
          goto LABEL_30;
        }

        if (msg.msgh_id != 90312)
        {
          v22 = 4294966995;
          goto LABEL_30;
        }

        v22 = 4294966996;
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        if (msg.msgh_size != 36)
        {
          goto LABEL_30;
        }

        if (msg.msgh_remote_port)
        {
          goto LABEL_30;
        }

        v22 = v30;
        if (v30)
        {
          goto LABEL_30;
        }

        v15 = 0;
      }

LABEL_40:
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v25);
      return v15;
    }

    LOBYTE(msg.msgh_bits) = 2;
    BYTE1(msg.msgh_bits) = a3;
    HIWORD(msg.msgh_bits) = a4;
    msg.msgh_size = a2;
    *&msg.msgh_remote_port = a5;
    msg.msgh_local_port = a6;
    return IPCAUClient::AUInstance::ControlMessage(v8, &msg, 0x10uLL, 0, 0);
  }

  return v7;
}

uint64_t IPCAUClient::AUInstance::ControlMessage(IPCAUClient::AUInstance *this, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(this + 84) == 1)
  {
    os_unfair_recursive_lock_lock_with_options();
    v10 = *(this + 38);
    v11 = 2044;
    if (v10)
    {
      v11 = 2044 - *v10;
    }

    if (v11 >= a5 + a3)
    {
      goto LABEL_31;
    }

    v12 = *(this + 6);
    v13 = *(this + 20);
    *&reply_port[16] = 0u;
    v26 = 0;
    *reply_port = 0u;
    *&reply_port[20] = *MEMORY[0x1E69E99E0];
    *&reply_port[28] = v13;
    v14 = mig_get_reply_port();
    *&reply_port[4] = v12;
    *&reply_port[8] = v14;
    v24 = 5395;
    *&reply_port[12] = 0x1606700000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v24);
      v15 = *&reply_port[8];
    }

    else
    {
      v15 = v14;
    }

    v17 = mach_msg(&v24, 275, 0x24u, 0x2Cu, v15, gMediaServerTimeout, 0);
    v16 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&reply_port[8]);
    }

    else
    {
      if (!v17)
      {
        if (*&reply_port[16] == 71)
        {
          v18 = 4294966988;
        }

        else if (*&reply_port[16] == 90315)
        {
          v18 = 4294966996;
          if ((v24 & 0x80000000) == 0 && *reply_port == 36 && !*&reply_port[4])
          {
            v18 = *&reply_port[28];
            if (!*&reply_port[28])
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          v18 = 4294966995;
        }

        goto LABEL_26;
      }

      mig_dealloc_reply_port(*&reply_port[8]);
    }

    v18 = 268435460;
    if (v16 != 268435460)
    {
LABEL_27:
      if (v16 != -308 && v16 != 268435459)
      {
        if (!v16)
        {
LABEL_30:
          v10 = *(this + 38);
LABEL_31:
          if (v10)
          {
            v19 = *v10;
          }

          else
          {
            v19 = 0;
          }

          if (v10)
          {
            v21 = v10 + 1;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21 + v19;
          memcpy(v22, a2, a3);
          if (a4)
          {
            memcpy(&v22[a3], a4, a5);
          }

          v16 = 0;
          **(this + 38) = v19 + a5 + a3;
        }

LABEL_47:
        os_unfair_recursive_lock_unlock();
        return v16;
      }

      if (kInterAppAudioScope)
      {
        v20 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_46:
          v16 = 4294900547;
          goto LABEL_47;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315906;
        *reply_port = "IPCAUClient.cpp";
        *&reply_port[8] = 1024;
        *&reply_port[10] = 433;
        *&reply_port[14] = 1024;
        *&reply_port[16] = v16;
        *&reply_port[20] = 1024;
        *&reply_port[22] = -66749;
        _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &v24, 0x1Eu);
      }

      goto LABEL_46;
    }

    if ((v24 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
    }

LABEL_26:
    mach_msg_destroy(&v24);
    v16 = v18;
    goto LABEL_27;
  }

  return 4294956429;
}

uint64_t IPCAU_GetParameter(void *a1, int a2, int a3, int a4, float *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return 4294967246;
  }

  v6 = 4294900547;
  v7 = a1[4];
  v8 = *(v7 + 16);
  if (*(v8 + 48))
  {
    v24 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v22, v8, &v24);
    v12 = v24;
    if (v24)
    {
LABEL_4:
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v22);
      return v12;
    }

    v14 = *(*(v7 + 16) + 48);
    if (v23)
    {
      v15 = 0x7FFFFFFF;
    }

    else
    {
      v15 = 10000;
    }

    v16 = *(v7 + 80);
    v26 = *MEMORY[0x1E69E99E0];
    v27 = v16;
    v28 = a2;
    v29 = a3;
    v30 = a4;
    reply_port = mig_get_reply_port();
    *&msg.msgh_bits = 5395;
    msg.msgh_remote_port = v14;
    msg.msgh_local_port = reply_port;
    *&msg.msgh_voucher_port = 0x1606300000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v19 = mach_msg(&msg, 275, 0x30u, 0x30u, msgh_local_port, v15, 0);
    v12 = v19;
    if ((v19 - 268435458) <= 0xE && ((1 << (v19 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
      goto LABEL_29;
    }

    if (v19)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
LABEL_29:
      if (v12 == 268435460)
      {
        if ((msg.msgh_bits & 0x1F00) == 0x1100)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
        }

        mach_msg_destroy(&msg);
        v12 = 268435460;
        goto LABEL_4;
      }

LABEL_38:
      if (v12 != 268435459 && v12 != -308)
      {
        goto LABEL_4;
      }

      if (kInterAppAudioScope)
      {
        v21 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_46:
          v12 = 4294900547;
          goto LABEL_4;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        msg.msgh_bits = 136315906;
        *&msg.msgh_size = "IPCAUClient.cpp";
        LOWORD(msg.msgh_local_port) = 1024;
        *(&msg.msgh_local_port + 2) = 433;
        HIWORD(msg.msgh_voucher_port) = 1024;
        msg.msgh_id = v12;
        LOWORD(v26) = 1024;
        *(&v26 + 2) = -66749;
        _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &msg, 0x1Eu);
      }

      goto LABEL_46;
    }

    if (msg.msgh_id == 71)
    {
      v12 = 4294966988;
    }

    else if (msg.msgh_id == 90311)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v12 = v27;
            if (!v27)
            {
              *a5 = v28;
              goto LABEL_4;
            }

            goto LABEL_37;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v20 = 1;
          }

          else
          {
            v20 = v27 == 0;
          }

          if (v20)
          {
            v12 = 4294966996;
          }

          else
          {
            v12 = v27;
          }

          goto LABEL_37;
        }
      }

      v12 = 4294966996;
    }

    else
    {
      v12 = 4294966995;
    }

LABEL_37:
    mach_msg_destroy(&msg);
    goto LABEL_38;
  }

  return v6;
}

uint64_t IPCAU_SetProperty(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const AudioStreamBasicDescription *__src, size_t __n)
{
  v6 = __n;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v37 = *MEMORY[0x1E69E9840];
  v11 = a1[4];
  if (kInterAppAudioScope)
  {
    v12 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    AUPropertyValueFormatter::AUPropertyValueFormatter(outData, v10, v9, v8, __src, v6);
    *buf = 136315906;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1128;
    *&buf[18] = 2048;
    *&buf[20] = v11;
    *&buf[28] = 2080;
    *&buf[30] = outData[0];
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> %p: %s", buf, 0x26u);
    if (outData[0])
    {
      free(outData[0]);
    }
  }

LABEL_8:
  v36 = 0;
  *outData = 0u;
  v35 = 0u;
  v13 = *(v11 + 16);
  if (!*(v13 + 48))
  {
    Property = 4294900547;
    goto LABEL_50;
  }

  v32 = 0;
  if (v10 > 26)
  {
    if (v10 == 27)
    {
      if (*(v11 + 84))
      {
        goto LABEL_35;
      }

      if (v6 < 0x28)
      {
        goto LABEL_37;
      }

      memcpy((v11 + 400), __src, v6);
    }

    else
    {
      if (v10 != 100)
      {
        goto LABEL_29;
      }

      if (v6 != 8)
      {
        goto LABEL_37;
      }

      v20 = *(v11 + 440);
      if (v20)
      {
        _Block_release(v20);
      }

      mSampleRate = __src->mSampleRate;
      *(v11 + 440) = __src->mSampleRate;
      if (mSampleRate != 0.0)
      {
        Property = 0;
        *(v11 + 440) = _Block_copy(*&mSampleRate);
        goto LABEL_50;
      }
    }

    Property = 0;
    goto LABEL_50;
  }

  if (v10 != 1)
  {
    if (v10 == 23)
    {
      if ((*(v11 + 84) & 1) == 0)
      {
        if (v6 >= 0x10)
        {
          if (!v8)
          {
            IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v30, v13, &v32);
            Property = v32;
            if (!v32)
            {
              v15 = *(*(v11 + 16) + 48);
              v16 = v31 ? 0x7FFFFFFF : 10000;
              v17 = *(v11 + 80);
              v18 = *&__src->mSampleRate != 0;
              *buf = *outData;
              *&buf[16] = v35;
              *&buf[32] = v36;
              v19 = IPCAUClient_ConnectInput(v15, v16, v17, v18, buf);
              Property = SanitizeResult(v19);
              if (!Property)
              {
                *(v11 + 160) = 2 * (*&__src->mSampleRate != 0);
                *(v11 + 168) = *&__src->mSampleRate;
              }
            }

            goto LABEL_49;
          }

LABEL_33:
          Property = 4294956419;
          goto LABEL_50;
        }

LABEL_37:
        Property = 4294956445;
        goto LABEL_50;
      }

LABEL_35:
      Property = 4294956447;
      goto LABEL_50;
    }

LABEL_29:
    PropertyMarshaller::PropertyMarshaller(buf, 0, 0);
  }

  if (*(v11 + 84))
  {
    goto LABEL_35;
  }

  if (v6 < 0x10)
  {
    goto LABEL_37;
  }

  if (v8)
  {
    goto LABEL_33;
  }

  v22 = *&__src->mSampleRate;
  if (*&__src->mSampleRate)
  {
    *buf = 40;
    Property = AudioUnitGetProperty(v22, 8u, 2u, __src->mFormatID, outData, buf);
    v32 = Property;
    if (Property)
    {
      goto LABEL_50;
    }

    v13 = *(v11 + 16);
  }

  IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v30, v13, &v32);
  Property = v32;
  if (!v32)
  {
    v23 = *(*(v11 + 16) + 48);
    v24 = v31 ? 0x7FFFFFFF : 10000;
    v25 = *(v11 + 80);
    v26 = *&__src->mSampleRate != 0;
    *buf = *outData;
    *&buf[16] = v35;
    *&buf[32] = v36;
    v27 = IPCAUClient_ConnectInput(v23, v24, v25, v26, buf);
    Property = SanitizeResult(v27);
    if (!Property)
    {
      *(v11 + 160) = *&__src->mSampleRate != 0;
      *(v11 + 184) = *&__src->mSampleRate;
    }
  }

LABEL_49:
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v30);
LABEL_50:
  if (kInterAppAudioScope)
  {
    v28 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return Property;
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    CAX4CCString::CAX4CCString(outData, Property);
    *buf = 136315906;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1130;
    *&buf[18] = 2048;
    *&buf[20] = v11;
    *&buf[28] = 2080;
    *&buf[30] = outData;
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d <- %p (%s)", buf, 0x26u);
  }

  return Property;
}

void sub_18F68BED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va);
  PropertyMarshaller::~PropertyMarshaller(va1);
  _Unwind_Resume(a1);
}

void AUPropertyValueFormatter::AUPropertyValueFormatter(AUPropertyValueFormatter *this, int a2, unsigned int a3, int a4, const AudioStreamBasicDescription *a5, int a6)
{
  *this = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v12 = funopen(&v16, 0, CAMemoryStream::Write, 0, 0);
  v13 = v12;
  v16 = v12;
  if (a3 > 7)
  {
    fprintf(v12, "scope %d", a3);
  }

  else
  {
    fputs(gScopeNames[a3], v12);
  }

  fprintf(v13, ", el %d: ", a4);
  if (a2 == 8)
  {
    CAFormatter::CAFormatter(&v15, a5);
    fprintf(v13, "stream format: %s", v15);
    if (v15)
    {
      free(v15);
    }
  }

  else
  {
    fprintf(v13, "prop %d, %d bytes @ %p", a2, a6, a5);
  }

  v14 = CAMemoryStream::cstr(&v16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  *this = v14;
  fclose(v16);
  free(v17);
}

void sub_18F68C05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, FILE *a13, void *a14)
{
  fclose(a13);
  free(a14);
  if (*v14)
  {
    free(*v14);
  }

  _Unwind_Resume(a1);
}

uint64_t SanitizeResult(uint64_t a1)
{
  v1 = a1;
  v13 = *MEMORY[0x1E69E9840];
  if (a1 != 268435459 && a1 != -308)
  {
    return a1;
  }

  v2 = 4294900547;
  if (kInterAppAudioScope)
  {
    v3 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return v2;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315906;
    v6 = "IPCAUClient.cpp";
    v7 = 1024;
    v8 = 433;
    v9 = 1024;
    v10 = v1;
    v11 = 1024;
    v12 = -66749;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &v5, 0x1Eu);
  }

  return v2;
}

void AudioUnitPropertyMarshaller::~AudioUnitPropertyMarshaller(AudioUnitPropertyMarshaller *this)
{
  PropertyMarshaller::~PropertyMarshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t IPCAU_GetProperty(void *a1, uint64_t a2, unsigned int a3, int a4, CFURLRef *a5, unsigned int *a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v49 = a5;
  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IPCAUClient.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1079;
      v51 = 2080;
      *v52 = "AudioUnitGetProperty: null size pointer";
      v20 = MEMORY[0x1E69E9C10];
LABEL_16:
      _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_debug_string: %s", buf, 0x1Cu);
    }

    return 4294967246;
  }

  v10 = a2;
  if (a5)
  {
    v11 = *a6;
    if (*a6)
    {
      v12 = a1[4];
      v48 = 0;
      if (a2 == 102)
      {
        v13 = CFUUIDCreateFromUUIDBytes(0, *(v12 + 56));
        if (v13)
        {
          v14 = v13;
          v15 = CFUUIDCreateString(0, v13);
          if (v15)
          {
            v16 = v15;
            v17 = CFStringCreateWithFormat(0, 0, @"com-apple-audiounit:%@/%c", v15, 78);
            if (v17)
            {
              v18 = v17;
              v19 = CFURLCreateWithString(0, v17, 0);
              CFRelease(v18);
            }

            else
            {
              v19 = 0;
            }

            CFRelease(v16);
          }

          else
          {
            v19 = 0;
          }

          CFRelease(v14);
        }

        else
        {
          v19 = 0;
        }

        *a5 = v19;
        if (v19)
        {
          v22 = 0;
        }

        else
        {
          v22 = 4294967246;
        }

LABEL_41:
        if (kInterAppAudioScope)
        {
          v31 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            return v22;
          }
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          AUPropertyValueFormatter::AUPropertyValueFormatter(&v46, v10, a3, a4, v49, *a6);
          v32 = v46;
          CAX4CCString::CAX4CCString(v59, v22);
          *buf = 136316162;
          *&buf[4] = "IPCAUClient.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1121;
          v51 = 2048;
          *v52 = v12;
          *&v52[8] = 2080;
          *&v52[10] = v32;
          *&v52[18] = 2080;
          v53 = v59;
          _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d <- %p %s (%s)", buf, 0x30u);
          if (v46)
          {
            free(v46);
          }
        }

        return v22;
      }

      v22 = 4294900547;
      v23 = *(v12 + 16);
      if (*(v23 + 48))
      {
        buf[16] = 1;
        *buf = &unk_1F0325878;
        *&buf[8] = 256;
        *&v52[4] = &v55;
        *&v52[12] = &v56;
        v53 = &v57;
        v54 = &v58;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        if (kInterAppAudioScope)
        {
          v24 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v59[0] = 136315650;
          *&v59[1] = "IPCAUClient.cpp";
          LOWORD(v59[3]) = 1024;
          *(&v59[3] + 2) = 1108;
          HIWORD(v59[4]) = 2048;
          *&v59[5] = v12;
          _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> %p", v59, 0x1Cu);
          v23 = *(v12 + 16);
        }

LABEL_28:
        IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v46, v23, &v48);
        v25 = v48;
        if (v48)
        {
          IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v46);
          MIGVariableLengthRefs::~MIGVariableLengthRefs(buf);
          return v25;
        }

        v26 = *(*(v12 + 16) + 48);
        if (v47)
        {
          v27 = 0x7FFFFFFF;
        }

        else
        {
          v27 = 10000;
        }

        v28 = *(v12 + 80);
        __dst = *&v52[4];
        v43 = *&v52[12];
        v44 = v53;
        v45 = v54;
        memset(__n, 0, sizeof(__n));
        v60 = 0u;
        memset(&v59[1], 0, 32);
        *&v59[6] = *MEMORY[0x1E69E99E0];
        v59[8] = v28;
        *&v60 = __PAIR64__(a3, v10);
        *(&v60 + 1) = __PAIR64__(v11, a4);
        reply_port = mig_get_reply_port();
        v59[3] = reply_port;
        v59[0] = 5395;
        v59[2] = v26;
        *&v59[4] = 0x1605E00000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(v59);
          v30 = v59[3];
        }

        else
        {
          v30 = reply_port;
        }

        v33 = mach_msg(v59, 275, 0x34u, 0x144u, v30, v27, 0);
        v34 = v33;
        if ((v33 - 268435458) <= 0xE && ((1 << (v33 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(v59[3]);
        }

        else
        {
          if (!v33)
          {
            if (v59[5] == 71)
            {
              v34 = 4294966988;
            }

            else if (v59[5] == 90306)
            {
              if ((v59[0] & 0x80000000) != 0)
              {
                v34 = 4294966996;
                if (v59[6] == 1 && (v59[1] - 60) <= 0x100 && !v59[2] && BYTE3(v60) == 1 && LODWORD(__n[0]) <= 0x100 && (v59[1] - 60) >= LODWORD(__n[0]))
                {
                  v35 = (LODWORD(__n[0]) + 3) & 0xFFFFFFFC;
                  if (v59[1] == v35 + 60)
                  {
                    v36 = v59 + v35;
                    if (DWORD1(v60) == *(v36 + 14))
                    {
                      v37 = v36 - 256;
                      v38 = __n[0];
                      memcpy(__dst, __n + 4, LODWORD(__n[0]));
                      v34 = 0;
                      *v43 = v38;
                      *v44 = *&v59[7];
                      *v45 = *(v37 + 78);
                      goto LABEL_84;
                    }
                  }
                }
              }

              else if (v59[1] == 36)
              {
                v34 = 4294966996;
                if (v59[8])
                {
                  if (v59[2])
                  {
                    v34 = 4294966996;
                  }

                  else
                  {
                    v34 = v59[8];
                  }
                }
              }

              else
              {
                v34 = 4294966996;
              }
            }

            else
            {
              v34 = 4294966995;
            }

            mach_msg_destroy(v59);
LABEL_79:
            if (v34 == 268435459 || v34 == -308)
            {
              if (kInterAppAudioScope)
              {
                v39 = *kInterAppAudioScope;
                if (!*kInterAppAudioScope)
                {
LABEL_94:
                  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v46);
                  MIGVariableLengthRefs::~MIGVariableLengthRefs(buf);
                  goto LABEL_41;
                }
              }

              else
              {
                v39 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v59[0] = 136315906;
                *&v59[1] = "IPCAUClient.cpp";
                LOWORD(v59[3]) = 1024;
                *(&v59[3] + 2) = 433;
                HIWORD(v59[4]) = 1024;
                v59[5] = v34;
                LOWORD(v59[6]) = 1024;
                *(&v59[6] + 2) = -66749;
                _os_log_impl(&dword_18F5DF000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", v59, 0x1Eu);
              }

              goto LABEL_94;
            }

LABEL_84:
            v22 = v34;
            if (!v34)
            {
              if (*v53)
              {
                v40 = *v53;
              }

              else
              {
                v40 = *&v52[4];
              }

              v41 = &v54;
              if (!*v53)
              {
                v41 = &v52[12];
              }

              PropertyMarshaller::PropertyMarshaller(v59, v40, **v41);
            }

            goto LABEL_94;
          }

          mig_dealloc_reply_port(v59[3]);
        }

        if (v34 == 268435460)
        {
          if ((v59[0] & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], v59[3]);
          }

          mach_msg_destroy(v59);
          v34 = 268435460;
          goto LABEL_84;
        }

        goto LABEL_79;
      }

      return v22;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IPCAUClient.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1086;
      v51 = 2080;
      *v52 = "AudioUnitGetProperty: zero size on entry";
      v20 = MEMORY[0x1E69E9C10];
      goto LABEL_16;
    }

    return 4294967246;
  }

  return IPCAU_GetPropertyInfo(a1, a2, a3, a4, a6, 0);
}

void sub_18F68CA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  PropertyMarshaller::~PropertyMarshaller(va);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&a15);
  MIGVariableLengthRefs::~MIGVariableLengthRefs(&a19);
  _Unwind_Resume(a1);
}

uint64_t IPCAU_GetPropertyInfo(void *a1, int a2, unsigned int a3, int a4, unsigned int *a5, unsigned __int8 *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (a2 <= 26)
  {
    v11 = 0;
    v12 = 1;
    v13 = 16;
    if (a2 != 1 && a2 != 23)
    {
      goto LABEL_9;
    }

LABEL_13:
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a2 == 102)
  {
    v11 = 0;
    v12 = 0;
    v13 = 8;
    goto LABEL_13;
  }

  if (a2 == 27)
  {
    v11 = 0;
    v12 = 1;
    v13 = 40;
    if (!a5)
    {
      goto LABEL_15;
    }

LABEL_14:
    *a5 = v13;
    goto LABEL_15;
  }

LABEL_9:
  v11 = 4294900547;
  v14 = a1[4];
  v15 = *(v14 + 16);
  if (!*(v15 + 48))
  {
    return v11;
  }

  IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v27, v15, &v29);
  v16 = v29;
  if (v29)
  {
    IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v27);
    return v16;
  }

  v18 = *(*(v14 + 16) + 48);
  if (v28)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = 10000;
  }

  v20 = *(v14 + 80);
  v31 = 0u;
  memset(&msg[4], 0, 32);
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = v20;
  *&v31 = __PAIR64__(a3, a2);
  DWORD2(v31) = a4;
  reply_port = mig_get_reply_port();
  *&msg[8] = v18;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1605D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v22 = *&msg[12];
  }

  else
  {
    v22 = reply_port;
  }

  v23 = mach_msg(msg, 275, 0x30u, 0x34u, v22, v19, 0);
  v24 = v23;
  if ((v23 - 268435458) <= 0xE && ((1 << (v23 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_40;
  }

  if (!v23)
  {
    if (*&msg[20] == 71)
    {
      v24 = 4294966988;
    }

    else if (*&msg[20] == 90305)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 44)
        {
          if (!*&msg[8])
          {
            v24 = *&msg[32];
            if (!*&msg[32])
            {
              v13 = v31;
              v12 = BYTE4(v31);
              goto LABEL_59;
            }

            goto LABEL_48;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v25 = 1;
          }

          else
          {
            v25 = *&msg[32] == 0;
          }

          if (v25)
          {
            v24 = 4294966996;
          }

          else
          {
            v24 = *&msg[32];
          }

          goto LABEL_48;
        }
      }

      v24 = 4294966996;
    }

    else
    {
      v24 = 4294966995;
    }

LABEL_48:
    mach_msg_destroy(msg);
    goto LABEL_49;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_40:
  if (v24 != 268435460)
  {
LABEL_49:
    if (v24 != 268435459 && v24 != -308)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_59;
    }

    if (kInterAppAudioScope)
    {
      v26 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_58:
        v13 = 0;
        v12 = 0;
        v24 = 4294900547;
        goto LABEL_59;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *msg = 136315906;
      *&msg[4] = "IPCAUClient.cpp";
      *&msg[12] = 1024;
      *&msg[14] = 433;
      *&msg[18] = 1024;
      *&msg[20] = v24;
      *&msg[24] = 1024;
      *&msg[26] = -66749;
      _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
    }

    goto LABEL_58;
  }

  if ((*msg & 0x1F00) == 0x1100)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
  }

  mach_msg_destroy(msg);
  v13 = 0;
  v12 = 0;
  v24 = 268435460;
LABEL_59:
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v27);
  v11 = v24;
  if (a5)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a6)
  {
    *a6 = v12;
  }

  return v11;
}

void MIGVariableLengthRefs::~MIGVariableLengthRefs(MIGVariableLengthRefs *this)
{
  *this = &unk_1F0336F70;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      if (*v2)
      {
        MEMORY[0x193AE09A0](*MEMORY[0x1E69E9A60], *v2, **(this + 6));
        **(this + 5) = 0;
        **(this + 6) = 0;
      }
    }
  }
}

{
  MIGVariableLengthRefs::~MIGVariableLengthRefs(this);

  JUMPOUT(0x193ADF220);
}

void MIGVariableLengthVars2<unsigned char [256]>::~MIGVariableLengthVars2(MIGVariableLengthRefs *a1)
{
  MIGVariableLengthRefs::~MIGVariableLengthRefs(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t IPCAU_Uninitialize(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "IPCAUClient.cpp";
    v6 = 1024;
    v7 = 993;
    v8 = 2048;
    v9 = v1;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", &v4, 0x1Cu);
  }

LABEL_7:
  IPCAUClient::AUInstance::Uninitialize(v1);
  return 0;
}

uint64_t IPCAU_Initialize(_BOOL8 a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  a1 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (a1)
  {
    *buf = 136315650;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 986;
    *&buf[18] = 2048;
    v21 = v1;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", buf, 0x1Cu);
  }

LABEL_7:
  v18 = 0.0;
  AudioToolboxSoftLink::instance(a1);
  inited = off_1EAD2D910(&v18);
  if (!inited)
  {
    if (*(v1 + 84))
    {
      return 0;
    }

    else
    {
      v17 = 0;
      v4 = *(v1 + 16);
      if (*(v4 + 48))
      {
        v5 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
        inited = IPCAURegClient_SetProcessWakeState(*(v5 + 48), *(v4 + 52), 2, buf);
        v19 = inited;
        if (!inited)
        {
          v16[0] = &v19;
          v16[1] = v1;
          v6 = *(v1 + 440) != 0;
          IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v14, *(v1 + 16), &v19);
          inited = v19;
          if (!v19)
          {
            *buf = &unk_1F03257D0;
            *&buf[8] = 0;
            *&buf[16] = 0;
            LOBYTE(v21) = 1;
            if (v15)
            {
              v7 = 0x7FFFFFFF;
            }

            else
            {
              v7 = 10000;
            }

            v8 = IPCAUClient_Initialize(*(*(v1 + 16) + 48), v7, *(v1 + 80), v6, (v1 + 88), (v1 + 92), (v1 + 96), (v1 + 200), &v17, &buf[16], (v1 + 24));
            inited = SanitizeResult(v8);
            v19 = inited;
            if (!inited)
            {
              v13[0] = &v19;
              v13[1] = v1;
              v13[2] = &v14;
              if (v17)
              {
                v9 = (v1 + 200);
                v10 = v17;
                while (*v9 == v18)
                {
                  v9 += 5;
                  if (!--v10)
                  {
                    goto LABEL_21;
                  }
                }

                inited = 4294900550;
              }

              else
              {
LABEL_21:
                inited = IPCAUSharedMemoryBase::InitClient(v1 + 280, (v1 + 200), v17, *(v1 + 88), buf);
                v19 = inited;
                if (!inited)
                {
                  os_unfair_recursive_lock_lock_with_options();
                  v11 = *(v1 + 304);
                  *v11 = 0;
                  *(v11 + *(v1 + 376) + 2176) = 0;
                  os_unfair_recursive_lock_unlock();
                  *(v1 + 84) = 1;
                  *(v1 + 153) = 0;
                  *(v1 + 392) = 0;
                  inited = v19;
                }
              }

              applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v13);
            }

            SharableMemoryBlock::MachClientToken::~MachClientToken(buf);
          }

          IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v14);
          applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v16);
        }
      }

      else
      {
        return 4294900547;
      }
    }
  }

  return inited;
}

void sub_18F68D35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va);
  SharableMemoryBlock::MachClientToken::~MachClientToken((v9 - 96));
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va1);
  applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va2);
  _Unwind_Resume(a1);
}

uint64_t IPCAUSharedMemoryBase::InitClient(uint64_t a1, const AudioStreamBasicDescription *a2, uint64_t a3, int a4, uint64_t a5)
{
  *(a5 + 12) = IPCAUSharedMemoryBase::InitPhase1(a1, a2, a3, a4);
  *(a1 + 92) = 1;
  inited = SharableMemoryBlock::InitClient();
  *(a1 + 92) = 0;
  if (inited)
  {
    v8 = *(a1 + 64);
    for (i = *(a1 + 72); i != v8; std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(i))
    {
      i -= 56;
    }

    *(a1 + 72) = v8;
  }

  else
  {
    IPCAUSharedMemoryBase::InitPhase2(a1);
  }

  return inited;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t a1)
{
  if (**a1)
  {
    if (*(*(a1 + 16) + 8))
    {
      v2 = 0x7FFFFFFF;
    }

    else
    {
      v2 = 10000;
    }

    IPCAUClient_Uninitialize(*(*(*(a1 + 8) + 16) + 48), v2, *(*(a1 + 8) + 80));
  }

  return a1;
}

void SharableMemoryBlock::MachClientToken::~MachClientToken(SharableMemoryBlock::MachClientToken *this)
{
  *this = &unk_1F03257D0;
  if (*(this + 20) == 1)
  {
    SharableMemoryBlock::MachClientToken::Reset(this);
  }
}

{
  SharableMemoryBlock::MachClientToken::~MachClientToken(this);

  JUMPOUT(0x193ADF220);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t a1)
{
  if (**a1)
  {
    v2 = *(*(a1 + 8) + 16);
    v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    IPCAURegClient_SetProcessWakeState(*(v3 + 48), *(v2 + 52), 3, &v5);
  }

  return a1;
}

uint64_t IPCAUSharedMemoryBase::InitPhase1(IPCAUSharedMemoryBase *this, const AudioStreamBasicDescription *a2, uint64_t a3, int a4)
{
  v5 = a3;
  (*(*this + 24))(this, a3);
  *(this + 22) = a4;
  v8 = *(this + 8);
  v9 = *(this + 9);
  v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 3);
  v11 = v5 - v10;
  if (v5 <= v10)
  {
    if (v5 < v10)
    {
      v16 = v8 + 56 * v5;
      while (v9 != v16)
      {
        v9 -= 56;
        std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(v9);
      }

      *(this + 9) = v16;
    }
  }

  else
  {
    v12 = *(this + 10);
    if (0x6DB6DB6DB6DB6DB7 * ((v12 - v9) >> 3) < v11)
    {
      v13 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v5)
      {
        v14 = v5;
      }

      if (v13 >= 0x249249249249249)
      {
        v15 = 0x492492492492492;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 9), 56 * ((56 * v11 - 56) / 0x38) + 56);
    *(this + 9) = v9 + 56 * ((56 * v11 - 56) / 0x38) + 56;
  }

  result = *(this + 14);
  if (v5)
  {
    v18 = 0;
    do
    {
      v19 = *(this + 8) + v18;
      v21 = *&a2->mSampleRate;
      v20 = *&a2->mBytesPerPacket;
      *(v19 + 32) = *&a2->mBitsPerChannel;
      *v19 = v21;
      *(v19 + 16) = v20;
      if ((*(v19 + 12) & 0x20) != 0)
      {
        v22 = *(v19 + 28);
      }

      else
      {
        v22 = 1;
      }

      result += ((*(this + 22) * *(v19 + 24) + 15) & 0xFFFFFFF0) * v22;
      v18 += 56;
      ++a2;
    }

    while (56 * v5 != v18);
  }

  return result;
}