uint64_t sub_298C3BBE4(uint64_t *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  LOWORD(v12) = 3;
  __p[0] = 1;
  sub_298B89CC0(v2, "Version", 7uLL);
  sub_298B891F0(v2, &v12);
  --*(v2 + 8);
  if (v12 == 8)
  {
    sub_298B8A314(__p);
    v4 = *a1;
    v5 = *v3;
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v12 == 7)
  {
    sub_298B8A370(__p);
    goto LABEL_8;
  }

  if (v12 != 6 || (v14 & 0x80000000) == 0)
  {
LABEL_8:
    v4 = *a1;
    v5 = *v3;
    if (v5 != 2)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = "LZFSE";
    v6 = 5;
    goto LABEL_17;
  }

  operator delete(__p[0]);
  v4 = *a1;
  v5 = *v3;
  if (v5 == 2)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v5 == 1)
  {
    v6 = 7;
  }

  else
  {
    v6 = 3;
  }

  if (v5 == 1)
  {
    v7 = "LZ4_RAW";
  }

  else
  {
    v7 = "LZ4";
  }

LABEL_17:
  sub_298BBB6E0(&v12, v7, v6);
  sub_298B89CC0(v4, "CompressionType", 0xFuLL);
  sub_298B891F0(v4, &v12);
  --*(v4 + 8);
  if (v12 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v12 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v12 == 6 && v14 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *a1;
  sub_298B89CC0(v8, "Chunks", 6uLL);
  sub_298B89A80(v8);
  v9 = *(v3 + 1);
  for (i = *(v3 + 2); v9 != i; v9 += 32)
  {
    v12 = v8;
    __p[0] = v9;
    sub_298B89BA0(v8);
    sub_298C3B968(&v12);
    sub_298B89C2C(v8);
  }

  result = sub_298B89B0C(v8);
  --*(v8 + 8);
  return result;
}

void sub_298C3BE18(void *a2@<X8>)
{
  sub_298C3BEA0(v3);
  sub_298C3C758(v3, a2);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(v5[3]);
  }

  sub_298BCE714(v5, v5[1]);
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_298C3BEA0(uint64_t a1@<X8>)
{
  *(a1 + 23) = 9;
  strcpy(a1, "<unknown>");
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 56) = 0;
  v2 = a1 + 56;
  *(a1 + 80) = 0;
  MEMORY[0x29C294300](a1, "libhwtrace @ tag libhwtrace-133.40.7");
  *(a1 + 24) = 458781;
  *(a1 + 28) = 1;
  sub_298C3C038(&__p);
  sub_298C3D4A8((a1 + 32), &__p);
  sub_298BCE714(&__p, __p.__r_.__value_.__l.__size_);
  v3 = sub_298C3C108(0);
  if (v3 >= 0x100u)
  {
    v5 = sub_298C3C108(0);
    v6 = "LZ4";
    v7 = 3;
    if (v5 == 1)
    {
      v7 = 7;
      v6 = "LZ4_RAW";
    }

    if (v5 == 2)
    {
      v8 = 5;
    }

    else
    {
      v8 = v7;
    }

    if (v5 == 2)
    {
      v9 = "LZFSE";
    }

    else
    {
      v9 = v6;
    }

    std::string::__init(&v10, v9, v8);
    __p = v10;
    memset(&v10, 0, sizeof(v10));
    v4 = 1;
  }

  else
  {
    v4 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
  }

  v12 = v4;
  sub_298C3D0DC(v2, &__p);
  if (v12 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3 >= 0x100u && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_298C3C038(uint64_t **a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::string::__init(&v2, "LZ4", 3uLL);
  sub_298C3D328(a1, &v2.__r_.__value_.__l.__data_, &v2);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }

  std::string::__init(&v2, "LZ4_RAW", 7uLL);
  sub_298C3D328(a1, &v2.__r_.__value_.__l.__data_, &v2);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }

  std::string::__init(&v2, "LZFSE", 5uLL);
  sub_298C3D328(a1, &v2.__r_.__value_.__l.__data_, &v2);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_298C3C108(char a1)
{
  if ((a1 & 1) == 0)
  {
    v8 = sub_298B21768(0, 0, "compressed-decoding");
    v5 = 0;
    v6 = 0;
    if (!v8)
    {
      return v5 | (v6 << 8);
    }
  }

  sub_298B2184C(v9);
  v1 = v10;
  v2 = v9[0];
  if (v10 >= 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = v9[0];
  }

  if (v10 >= 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = v9[1];
  }

  switch(v4)
  {
    case 7:
      if (!memcmp("LZ4_RAW", v3, 7uLL))
      {
        v5 = 1;
        goto LABEL_13;
      }

      break;
    case 5:
      if (!memcmp("LZFSE", v3, 5uLL))
      {
        v5 = 2;
        goto LABEL_13;
      }

      break;
    case 3:
      memcmp("LZ4", v3, 3uLL);
      break;
  }

  v5 = 0;
LABEL_13:
  if (v1 < 0)
  {
    operator delete(v2);
  }

  v6 = 1;
  return v5 | (v6 << 8);
}

uint64_t sub_298C3C1EC(uint64_t a1)
{
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    sub_298BCE714(a1 + 32, *(a1 + 40));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    sub_298BCE714(a1 + 32, *(a1 + 40));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*a1);
  return a1;
}

void sub_298C3C26C(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v30[17] = 0;
  v30[18] = a2;
  v30[19] = 2;
  v30[16] = 0;
  v28 = v30;
  v29 = 0x1000000001;
  v30[0] = 0;
  sub_298B89BA0(&v28);
  if (*(a1 + 23) < 0)
  {
    sub_298AFE11C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v23 = *(a1 + 16);
  }

  LOWORD(v31) = 6;
  if (v23 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v23 >= 0)
  {
    v4 = SHIBYTE(v23);
  }

  else
  {
    v4 = __p[1];
  }

  if (!sub_298B88E98(v3, v4, 0))
  {
    if (v23 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v23 >= 0)
    {
      v19 = SHIBYTE(v23);
    }

    else
    {
      v19 = __p[1];
    }

    sub_298B88F28(v18, v19, &v26);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v26;
    v23 = v27;
  }

  v32 = *__p;
  v33 = v23;
  __p[1] = 0;
  v23 = 0;
  __p[0] = 0;
  sub_298B89CC0(&v28, "lib_ver", 7uLL);
  sub_298B891F0(&v28, &v31);
  LODWORD(v29) = v29 - 1;
  sub_298B8802C(&v31);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 24);
  LOWORD(v31) = 3;
  *&v32 = v5;
  sub_298B89CC0(&v28, "api_ver", 7uLL);
  sub_298B891F0(&v28, &v31);
  LODWORD(v29) = v29 - 1;
  sub_298B8802C(&v31);
  v6 = *(a1 + 26);
  LOWORD(v31) = 3;
  *&v32 = v6;
  sub_298B89CC0(&v28, "format_maj_ver", 0xEuLL);
  sub_298B891F0(&v28, &v31);
  LODWORD(v29) = v29 - 1;
  sub_298B8802C(&v31);
  v7 = *(a1 + 28);
  LOWORD(v31) = 3;
  *&v32 = v7;
  sub_298B89CC0(&v28, "format_min_ver", 0xEuLL);
  sub_298B891F0(&v28, &v31);
  LODWORD(v29) = v29 - 1;
  sub_298B8802C(&v31);
  sub_298B89CC0(&v28, "compression_algs", 0x10uLL);
  sub_298B89A80(&v28);
  v8 = *(a1 + 32);
  if (v8 != (a1 + 40))
  {
    do
    {
      if (*(v8 + 55) < 0)
      {
        sub_298AFE11C(v24, v8[4], v8[5]);
      }

      else
      {
        *v24 = *(v8 + 2);
        v25 = v8[6];
      }

      LOWORD(v31) = 6;
      if (v25 >= 0)
      {
        v9 = v24;
      }

      else
      {
        v9 = v24[0];
      }

      if (v25 >= 0)
      {
        v10 = SHIBYTE(v25);
      }

      else
      {
        v10 = v24[1];
      }

      if (!sub_298B88E98(v9, v10, 0))
      {
        if (v25 >= 0)
        {
          v14 = v24;
        }

        else
        {
          v14 = v24[0];
        }

        if (v25 >= 0)
        {
          v15 = SHIBYTE(v25);
        }

        else
        {
          v15 = v24[1];
        }

        sub_298B88F28(v14, v15, &v26);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24[0]);
        }

        *v24 = v26;
        v25 = v27;
      }

      v32 = *v24;
      v33 = v25;
      v24[1] = 0;
      v25 = 0;
      v24[0] = 0;
      sub_298B891F0(&v28, &v31);
      sub_298B8802C(&v31);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
        v11 = v8[1];
        if (v11)
        {
          do
          {
LABEL_30:
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
          goto LABEL_15;
        }
      }

      else
      {
        v11 = v8[1];
        if (v11)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v12 = v8[2];
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (!v13);
LABEL_15:
      v8 = v12;
    }

    while (v12 != (a1 + 40));
  }

  sub_298B89B0C(&v28);
  LODWORD(v29) = v29 - 1;
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      sub_298AFE11C(v24, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      *v24 = *(a1 + 56);
      v25 = *(a1 + 72);
    }

    LOWORD(v31) = 6;
    if (v25 >= 0)
    {
      v16 = v24;
    }

    else
    {
      v16 = v24[0];
    }

    if (v25 >= 0)
    {
      v17 = SHIBYTE(v25);
    }

    else
    {
      v17 = v24[1];
    }

    if (!sub_298B88E98(v16, v17, 0))
    {
      if (v25 >= 0)
      {
        v20 = v24;
      }

      else
      {
        v20 = v24[0];
      }

      if (v25 >= 0)
      {
        v21 = SHIBYTE(v25);
      }

      else
      {
        v21 = v24[1];
      }

      sub_298B88F28(v20, v21, &v26);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
      }

      *v24 = v26;
      v25 = v27;
    }

    v32 = *v24;
    v33 = v25;
    v24[1] = 0;
    v25 = 0;
    v24[0] = 0;
    sub_298B89CC0(&v28, "default_compression_alg", 0x17uLL);
    sub_298B891F0(&v28, &v31);
    LODWORD(v29) = v29 - 1;
    sub_298B8802C(&v31);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  sub_298B89C2C(&v28);
  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t sub_298C3C758@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 0;
  v11 = a2;
  v10 = 0;
  v3 = &unk_2A1F1E040;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_298C3C26C(a1, &v3);
  return sub_298B9AE14(&v3);
}

void ***sub_298C3C7C8@<X0>(std::string::size_type a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void ***a4@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  sub_298B8806C(a2, a3, &v26);
  if (v27[24])
  {
    v6 = v26;
    v26 = 0;
    *a4 = v6;
    if (v6)
    {
      return sub_298C30640(&v26);
    }

    v7 = 0;
  }

  else
  {
    *a4 = 0;
    if (v26 == 7)
    {
      v7 = v27;
    }

    else
    {
      v7 = 0;
    }
  }

  sub_298B87AE0(v7, "lib_ver", 7, &__s);
  if (__s.__r_.__value_.__s.__data_[16] == 1)
  {
    size = __s.__r_.__value_.__l.__size_;
    v8 = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v10 >= 0)
    {
      size = *(a1 + 23);
    }

    else
    {
      size = *(a1 + 8);
    }
  }

  MEMORY[0x29C294310](a1, v8, size);
  v11 = sub_298B878FC(v7, "api_ver", 7);
  if ((v12 & 1) == 0)
  {
    v11 = *(a1 + 24);
  }

  *(a1 + 24) = v11;
  v13 = sub_298B878FC(v7, "format_maj_ver", 14);
  if ((v14 & 1) == 0)
  {
    v13 = *(a1 + 26);
  }

  *(a1 + 26) = v13;
  v15 = sub_298B878FC(v7, "format_min_ver", 14);
  if ((v16 & 1) == 0)
  {
    v15 = *(a1 + 28);
  }

  *(a1 + 28) = v15;
  v17 = sub_298B87C7C(v7, "compression_algs", 16);
  if (v17)
  {
    v19 = *v17;
    v20 = *(v17 + 8);
    while (v19 != v20)
    {
      v21 = *v19;
      if (v21 == 6)
      {
        v22 = *(v19 + 31);
        if ((v22 & 0x8000000000000000) == 0)
        {
          v23 = (v19 + 4);
LABEL_37:
          std::string::__init(&__s, v23, v22);
          goto LABEL_38;
        }
      }

      else if (v21 != 5)
      {
        goto LABEL_40;
      }

      v23 = *(v19 + 1);
      if (v23)
      {
        v22 = *(v19 + 2);
        goto LABEL_37;
      }

      memset(&__s, 0, sizeof(__s));
LABEL_38:
      sub_298C3D328((a1 + 32), &__s.__r_.__value_.__l.__data_, &__s);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_40:
      v19 += 16;
    }
  }

  sub_298B87AE0(v7, "default_compression_alg", 23, &__s);
  if (__s.__r_.__value_.__s.__data_[16] == 1)
  {
    if (__s.__r_.__value_.__r.__words[0])
    {
      std::string::__init(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
    }

    sub_298C3CA24((a1 + 56), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *a4 = 0;
  return sub_298C30640(&v26);
}

std::string *sub_298C3CA24(std::string *result, const std::string *a2)
{
  if (result[1].__r_.__value_.__s.__data_[0] == 1)
  {
    v2 = result;
    std::string::operator=(result, a2);
    return v2;
  }

  else if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    sub_298AFE11C(result, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    result = v4;
    v4[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v3 = *&a2->__r_.__value_.__l.__data_;
    result->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    *&result->__r_.__value_.__l.__data_ = v3;
    result[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

uint64_t sub_298C3CAAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v16 = 9;
  strcpy(&v15, "<unknown>");
  v17 = -1;
  v18 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v21 = 0;
  v22 = 0;
  sub_298C3C7C8(&v15, a1, a2, &v14);
  v4 = v14;
  if (v14)
  {
    v5 = sub_298B00584(a3, "Failed to parse version info from producer: ");
    v12 = v4;
    sub_298B851B0(&v12, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v8 = sub_298B9BCEC(v5, p_p, size);
    sub_298B00584(v8, "\n");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v9 = 0;
  }

  else
  {
    sub_298C3D194(v11, &v15);
    v9 = sub_298C3CC04(v11, a3);
    sub_298C3C1EC(v11);
  }

  sub_298C3C1EC(&v15);
  return v9;
}

uint64_t sub_298C3CC04(uint64_t a1, uint64_t a2)
{
  sub_298C3BEA0(v16);
  v15[0] = a2;
  v15[1] = a1;
  v15[2] = v16;
  if (*(a1 + 26) == v18)
  {
    if (*(a1 + 28) <= v19)
    {
      if (*(a1 + 80) != 1)
      {
LABEL_16:
        v7 = 1;
        if (v24 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      for (i = v21; i; i = *i)
      {
        if (!sub_298C3D2BC((a1 + 56), i + 4))
        {
          if (!sub_298C3D2BC(i + 4, (a1 + 56)))
          {
            goto LABEL_16;
          }

          i += 8;
        }
      }

      v9 = *(a2 + 32);
      if ((*(a2 + 24) - v9) > 0x13)
      {
        *(v9 + 16) = 544433523;
        *v9 = *"Trace producer uses ";
        *(a2 + 32) += 20;
      }

      else
      {
        sub_298B9BCEC(a2, "Trace producer uses ", 0x14uLL);
      }

      v10 = *(a1 + 79);
      if (v10 >= 0)
      {
        v11 = (a1 + 56);
      }

      else
      {
        v11 = *(a1 + 56);
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 79);
      }

      else
      {
        v12 = *(a1 + 64);
      }

      sub_298B9BCEC(a2, v11, v12);
      v13 = *(a2 + 32);
      if (*(a2 + 24) - v13 > 0x23uLL)
      {
        qmemcpy(v13, ", but consumer does not support it.\n", 36);
        v4 = (*(a2 + 32) + 36);
        *(a2 + 32) = v4;
      }

      else
      {
        sub_298B9BCEC(a2, ", but consumer does not support it.\n", 0x24uLL);
        v4 = *(a2 + 32);
      }

      v5 = *(a2 + 24);
    }

    else
    {
      sub_298C3CEF0(v15);
      v5 = *(a2 + 24);
      v4 = *(a2 + 32);
    }

    v6 = v5 - v4;
  }

  else
  {
    sub_298C3CEF0(v15);
    v4 = *(a2 + 32);
    v6 = *(a2 + 24) - v4;
    if (v18 > *(a1 + 26))
    {
      if (v6 > 0x5B)
      {
        v7 = 0;
        qmemcpy(v4, "Suggestion: Upgrade the OS installation on the target device where the trace was collected.\n", 92);
        *(a2 + 32) += 92;
        if (v24 != 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_298B9BCEC(a2, "Suggestion: Upgrade the OS installation on the target device where the trace was collected.\n", 0x5CuLL);
        v7 = 0;
        if (v24 != 1)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_36;
    }
  }

  if (v6 > 0x37)
  {
    v7 = 0;
    qmemcpy(v4, "Suggestion: Upgrade the developer tools on this device.\n", 56);
    *(a2 + 32) += 56;
    if (v24 != 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_298B9BCEC(a2, "Suggestion: Upgrade the developer tools on this device.\n", 0x38uLL);
    v7 = 0;
    if (v24 != 1)
    {
      goto LABEL_38;
    }
  }

LABEL_36:
  if (v23 < 0)
  {
    operator delete(__p);
  }

LABEL_38:
  sub_298BCE714(&v20, v21);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return v7;
}

uint64_t sub_298C3CEF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (*(*a1 + 24) - v3 > 0x19uLL)
  {
    qmemcpy(v3, "Trace producer has format ", 26);
    v2[4] += 26;
  }

  else
  {
    sub_298B9BCEC(*a1, "Trace producer has format ", 0x1AuLL);
  }

  sub_298B8FC48(v2, *(a1[1] + 26), 0, 0, 0);
  v4 = v2[4];
  if (v2[3] == v4)
  {
    sub_298B9BCEC(v2, ".", 1uLL);
  }

  else
  {
    *v4 = 46;
    ++v2[4];
  }

  sub_298B8FC48(v2, *(a1[1] + 28), 0, 0, 0);
  v5 = v2[4];
  if (v2[3] - v5 > 0x19uLL)
  {
    qmemcpy(v5, ", but consumer has format ", 26);
    v2[4] += 26;
  }

  else
  {
    sub_298B9BCEC(v2, ", but consumer has format ", 0x1AuLL);
  }

  sub_298B8FC48(v2, *(a1[2] + 26), 0, 0, 0);
  v6 = v2[4];
  if (v2[3] == v6)
  {
    sub_298B9BCEC(v2, ".", 1uLL);
  }

  else
  {
    *v6 = 46;
    ++v2[4];
  }

  result = sub_298B8FC48(v2, *(a1[2] + 28), 0, 0, 0);
  v8 = v2[4];
  if (v2[3] - v8 > 1uLL)
  {
    *v8 = 2606;
    v2[4] += 2;
  }

  else
  {

    return sub_298B9BCEC(v2, ".\n", 2uLL);
  }

  return result;
}

__n128 sub_298C3D0DC(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        v2 = a1;
        v3 = a2;
        operator delete(*a1);
        a2 = v3;
        a1 = v2;
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      v5 = a1;
      operator delete(*a1);
      a1 = v5;
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_298C3D194(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  v5 = *(a2 + 6);
  v6 = *(a2 + 14);
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 28) = v6;
  *(a1 + 24) = v5;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  if (v7 != (a2 + 40))
  {
    do
    {
      sub_298BCD5B0((a1 + 32), (a1 + 40), v7 + 4, (v7 + 2));
      v10 = *(v7 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v7 + 2);
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != (a2 + 40));
  }

  *(a1 + 56) = 0;
  v8 = (a1 + 56);
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      sub_298AFE11C(v8, *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v9 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *v8 = v9;
    }

    *(a1 + 80) = 1;
  }

  return a1;
}

BOOL sub_298C3D2BC(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

uint64_t **sub_298C3D328(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_28:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
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
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_28;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_28;
    }
  }
}

void sub_298C3D4A8(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_298BCE714(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_298C3D748(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5)
{
  if (a4 == 3 && (*a3 == *"???" ? (v6 = *(a3 + 2) == asc_298EAE9A9[2]) : (v6 = 0), v6))
  {
    dyld_for_each_installed_shared_cache();
    if (*(a1 + 128))
    {
      return;
    }
  }

  else
  {
    dyld_shared_cache_for_file();
    if (*(a1 + 128))
    {
      return;
    }
  }

  std::mutex::lock((a1 + 16));
  *(a1 + 8) = 1;
  std::condition_variable::notify_one((a1 + 80));
  std::mutex::unlock((a1 + 16));
  m = (a1 + 144);
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 144));
  if (*(a1 + 137))
  {
LABEL_13:
    std::mutex::unlock(m);
    return;
  }

  do
  {
    std::condition_variable::wait((a1 + 208), &__lk);
  }

  while (*(a1 + 137) != 1);
  if (__lk.__owns_)
  {
    m = __lk.__m_;
    goto LABEL_13;
  }
}

void sub_298C3D890(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    dyld_shared_cache_unpin_mapping();
  }

  std::mutex::lock((a1 + 144));
  *(a1 + 137) = 1;
  std::condition_variable::notify_one((a1 + 208));
  std::mutex::unlock((a1 + 144));
  std::thread::join(a1);
  v2 = *(a1 + 272);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::condition_variable::~condition_variable((a1 + 208));
  std::mutex::~mutex((a1 + 144));
  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));

  std::thread::~thread(a1);
}

uint64_t sub_298C3D948(uint64_t a1, const unsigned __int8 *a2)
{
  v39[2] = *MEMORY[0x29EDCA608];
  v39[0] = 0;
  v39[1] = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2000000000;
  v37[3] = v39;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v21 = MEMORY[0x29EDCA5F8];
  v22 = 1107296256;
  v23 = sub_298C3DC48;
  v24 = &unk_2A1F1FAC8;
  v25 = &v33;
  v26 = v37;
  v27 = &v29;
  v28 = a2;
  dyld_shared_cache_for_each_image();
  if ((v34[3] & 1) == 0)
  {
    std::generic_category();
    v9[0] = "Dyld.cpp";
    v9[2] = ":";
    v10 = 771;
    v8 = 2;
    strcpy(v7, "94");
    v11[0] = v9;
    v11[2] = v7;
    v12 = 1026;
    v13[0] = v11;
    v13[2] = ": ";
    v14 = 770;
    v15[0] = v13;
    v15[2] = "No match for UUID ";
    v16 = 770;
    v5[1] = 0;
    v5[2] = 0;
    v5[0] = a2;
    sub_298B1FB90(v5, __p);
    v17[0] = v15;
    v17[2] = __p;
    v18 = 1026;
    v19[0] = v17;
    v19[2] = " in shared cache";
    v20 = 770;
    sub_298B996A4(v19, &v38);
    operator new();
  }

  v3 = v30[3];
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);
  return v3;
}

uint64_t sub_298C3DC48(uint64_t result, uint64_t a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v3 = result;
    result = dyld_image_copy_uuid();
    if (result)
    {
      result = uuid_compare(*(v3 + 56), *(*(*(v3 + 40) + 8) + 24));
      *(*(*(v3 + 32) + 8) + 24) = result == 0;
    }

    if (*(*(*(v3 + 32) + 8) + 24) == 1)
    {
      result = sub_298C3DCE4(a2);
      *(*(*(v3 + 48) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t sub_298C3DCE4(uint64_t a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 1107296256;
  v20 = sub_298C3F11C;
  v21 = &unk_2A1F1FB88;
  v23 = &v29;
  v24 = a1;
  v22 = &v25;
  dyld_image_for_each_segment_info();
  if ((v26[3] & 1) == 0)
  {
    std::generic_category();
    v6[0] = "Dyld.cpp";
    v6[2] = ":";
    v7 = 771;
    v5 = 2;
    strcpy(__p, "71");
    v8[0] = v6;
    v8[2] = __p;
    v9 = 1026;
    v10[0] = v8;
    v10[2] = ": ";
    v11 = 770;
    *&v12 = v10;
    *&v13 = "No r-x segments in image ";
    LOWORD(v14) = 770;
    installname = dyld_image_get_installname();
    if (*installname)
    {
      *&v15 = &v12;
      *&v16 = installname;
      LOWORD(v17) = 770;
    }

    else
    {
      v15 = v12;
      v16 = v13;
      v17 = v14;
    }

    sub_298B996A4(&v15, &v33);
    operator new();
  }

  v1 = v30[3];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v1;
}

void sub_298C3DF68(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x4002000000;
  v34 = sub_298C3E178;
  v35 = sub_298C3E19C;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4002000000;
  v26 = sub_298C3E1B4;
  v27 = sub_298C3E1D8;
  __p = 0;
  v29 = 0;
  v30 = 0;
  dyld_shared_cache_for_each_image();
  v6 = v32[5];
  v7 = v32[6];
  v8 = 126 - 2 * __clz(v7 - v6);
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_298C3F430(v6, v7, v9, 1, v5);
  v11 = v32;
  v12 = v32[5];
  v13 = v32[6];
  if ((v13 - v12) >= 0x11)
  {
    v14 = 2;
    v15 = 1;
    do
    {
      if (*(v12 + 16 * v15) - (*(v12 + 16 * (v14 - 2) + 8) + *(v12 + 16 * (v14 - 2))) >= 0x1000uLL)
      {
        a2(a3, v10);
        v11 = v32;
      }

      v15 = v14;
      v12 = v11[5];
      v13 = v11[6];
      ++v14;
    }

    while (v15 < (v13 - v12) >> 4);
  }

  v16 = *(v13 - 8) + *(v13 - 16);
  v17 = v24[5];
  v18 = v24[6];
  v19 = -1;
  while (v17 != v18)
  {
    v21 = *v17++;
    v20 = v21;
    if (v21 >= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v20;
    }

    if (v20 > v16)
    {
      v19 = v22;
    }
  }

  (a2)(a3, v16, v19, v10);
  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v31, 8);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

__n128 sub_298C3E178(void *a1, uint64_t a2)
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

void sub_298C3E19C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 sub_298C3E1B4(void *a1, uint64_t a2)
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

void sub_298C3E1D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_298C3E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a3;
  if (a5 == 5)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = v5[6];
    v7 = v5[7];
    if (v6 >= v7)
    {
      v9 = v5[5];
      v10 = v6 - v9;
      v11 = v10 >> 4;
      v12 = (v10 >> 4) + 1;
      if (v12 >> 60)
      {
        sub_298ADDDA0();
      }

      v13 = v7 - v9;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 60))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v15 = (16 * v11);
      *v15 = a3;
      v15[1] = a4;
      v8 = 16 * v11 + 16;
      memcpy(0, v9, v10);
      v5[5] = 0;
      v5[6] = v8;
      v5[7] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v6 = a3;
      *(v6 + 1) = a4;
      v8 = (v6 + 16);
    }

    v5[6] = v8;
  }

  else
  {
    sub_298AFB228(*(*(a1 + 32) + 8) + 40, &v16);
  }
}

void sub_298C3E3BC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void sub_298C3E40C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t sub_298C3E450(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  installname = dyld_image_get_installname();
  v5 = installname;
  if (installname)
  {
    v6 = strlen(installname);
    v12 = 0;
    v13 = 0;
    result = dyld_image_copy_uuid();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = 0;
    v12 = 0;
    v13 = 0;
    result = dyld_image_copy_uuid();
    if (!result)
    {
      return result;
    }
  }

  v8 = sub_298C3DCE4(a2);
  v11[1] = 0;
  v11[2] = 0;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11[0] = &v12;
  return v10(v9, v5, v6, v11, v8);
}

void sub_298C3E534(_BYTE *a2@<X1>, size_t a3@<X2>, void *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x4802000000;
  v48 = sub_298C3EBD0;
  v49 = sub_298C3EC0C;
  LOBYTE(v50) = 0;
  v52 = 0;
  v38 = MEMORY[0x29EDCA5F8];
  v39 = 1107296256;
  v40 = sub_298C3EC2C;
  v41 = &unk_2A1F1FB58;
  v44 = a5;
  v42 = &v45;
  v43 = a4;
  dyld_shared_cache_for_each_file();
  if ((v46[8] & 1) == 0)
  {
    std::generic_category();
    v25[0] = "Dyld.cpp";
    v26 = ":";
    v27 = 771;
    v24 = 3;
    LODWORD(v23[0]) = 3225393;
    v28[0] = v25;
    p_p = v23;
    v30 = 1026;
    v31[0] = v28;
    v32 = ": ";
    v34 = 770;
    *v35 = v31;
    v36 = "Did not find dyld shared cache files";
    v37 = 770;
    sub_298B996A4(v35, v53);
    operator new();
  }

  v11 = a4[4];
  if (a4[3] - v11 > 0x21uLL)
  {
    qmemcpy(v11, "Extracting dyld shared cache into ", 34);
    v13 = a4[3];
    v12 = (a4[4] + 34);
    a4[4] = v12;
    if (a3 <= v13 - v12)
    {
LABEL_4:
      if (a3)
      {
        memcpy(v12, a2, a3);
        v12 = (a4[4] + a3);
        a4[4] = v12;
      }

      if (a4[3] - v12 <= 0x1EuLL)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_298B9BCEC(a4, "Extracting dyld shared cache into ", 0x22uLL);
    v12 = a4[4];
    if (a3 <= a4[3] - v12)
    {
      goto LABEL_4;
    }
  }

  sub_298B9BCEC(a4, a2, a3);
  v12 = a4[4];
  if (a4[3] - v12 <= 0x1EuLL)
  {
LABEL_7:
    sub_298B9BCEC(a4, " (this might take a minute)...\n", 0x1FuLL);
    goto LABEL_12;
  }

LABEL_11:
  qmemcpy(v12, " (this might take a minute)...\n", 31);
  a4[4] += 31;
LABEL_12:
  v31[0] = "/usr/local/bin/dyld_shared_cache_util -extract ";
  v32 = a2;
  v33 = a3;
  v34 = 1283;
  *v35 = v31;
  v36 = " ";
  v37 = 770;
  v54.__r_.__value_.__r.__words[0] = v35;
  v54.__r_.__value_.__r.__words[2] = (v46 + 5);
  v56 = 1026;
  sub_298B996A4(&v54, v23);
  v14 = a4[4];
  if (!a5)
  {
    goto LABEL_24;
  }

  if ((a4[3] - v14) > 8)
  {
    *(v14 + 8) = 32;
    *v14 = *"Running: ";
    a4[4] += 9;
  }

  else
  {
    sub_298B9BCEC(a4, "Running: ", 9uLL);
  }

  if (v24 >= 0)
  {
    v15 = v23;
  }

  else
  {
    v15 = v23[0];
  }

  if (v24 >= 0)
  {
    v16 = v24;
  }

  else
  {
    v16 = v23[1];
  }

  sub_298B9BCEC(a4, v15, v16);
  v17 = a4[4];
  if (a4[3] != v17)
  {
    *v17 = 10;
    v14 = a4[4] + 1;
    a4[4] = v14;
LABEL_24:
    v18 = a4[2];
    if (v14 == v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  sub_298B9BCEC(a4, "\n", 1uLL);
  v18 = a4[2];
  if (a4[4] != v18)
  {
LABEL_25:
    a4[4] = v18;
    sub_298B9BB84(a4);
  }

LABEL_26:
  if (v24 >= 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v23[0];
  }

  *v35 = 0;
  sub_298BC0EB0(v19, v35, &v54);
  if (v55 == 1 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (*v35)
  {
    std::generic_category();
    v25[0] = "Dyld.cpp";
    v26 = ":";
    v27 = 771;
    v22 = 3;
    LODWORD(__p) = 3291185;
    v28[0] = v25;
    p_p = &__p;
    v30 = 1026;
    v31[0] = v28;
    v32 = ": ";
    v34 = 770;
    *v35 = v31;
    v36 = "Dyld shared cache extraction failed";
    v37 = 770;
    sub_298B996A4(v35, v53);
    operator new();
  }

  v20 = a4[4];
  if ((a4[3] - v20) > 5)
  {
    *(v20 + 4) = 2593;
    *v20 = 1701736260;
    a4[4] += 6;
  }

  else
  {
    sub_298B9BCEC(a4, "Done!\n", 6uLL);
  }

  *a6 = 0;
  if (v24 < 0)
  {
    operator delete(v23[0]);
    _Block_object_dispose(&v45, 8);
    if (v52 != 1)
    {
      return;
    }
  }

  else
  {
    _Block_object_dispose(&v45, 8);
    if (v52 != 1)
    {
      return;
    }
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }
}

__n128 sub_298C3EBD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    result = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = result;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  return result;
}

void sub_298C3EC0C(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_298C3EC2C(uint64_t a1, char *__s)
{
  if (*(*(*(a1 + 32) + 8) + 64))
  {
    goto LABEL_9;
  }

  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v4;
  if (v4)
  {
    memcpy(&v12, __s, v4);
  }

  *(&v12 + v5) = 0;
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 64) == 1)
  {
    if (*(v6 + 63) < 0)
    {
      operator delete(*(v6 + 40));
    }

    *(v6 + 40) = v12;
    *(v6 + 56) = v13;
LABEL_9:
    if (*(a1 + 48) != 1)
    {
      return;
    }

    goto LABEL_10;
  }

  *(v6 + 40) = v12;
  *(v6 + 56) = v13;
  *(v6 + 64) = 1;
  if (*(a1 + 48) != 1)
  {
    return;
  }

LABEL_10:
  v7 = *(a1 + 40);
  v8 = *(v7 + 32);
  if ((*(v7 + 24) - v8) > 0x12)
  {
    *(v8 + 15) = 540697964;
    *v8 = *"Shared cache file: ";
    v9 = (*(v7 + 32) + 19);
    *(v7 + 32) = v9;
    if (!__s)
    {
      goto LABEL_20;
    }

LABEL_14:
    v10 = strlen(__s);
    v11 = v10;
    if (v10 <= *(v7 + 24) - v9)
    {
      if (v10)
      {
        memcpy(v9, __s, v10);
        v9 = (*(v7 + 32) + v11);
        *(v7 + 32) = v9;
      }
    }

    else
    {
      sub_298B9BCEC(v7, __s, v10);
      v9 = *(v7 + 32);
    }

    goto LABEL_20;
  }

  sub_298B9BCEC(v7, "Shared cache file: ", 0x13uLL);
  v9 = *(v7 + 32);
  if (__s)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (*(v7 + 24) == v9)
  {

    sub_298B9BCEC(v7, "\n", 1uLL);
  }

  else
  {
    *v9 = 10;
    ++*(v7 + 32);
  }
}

void sub_298C3EE80(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if ((*(v3 + 137) & 1) == 0)
  {
    v5 = (a1 + 40);
    *uu2 = 0;
    v20 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v18[3] = uu2;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v6 = *(a1 + 48);
    if (v6 == 1)
    {
      __lk.__m_ = MEMORY[0x29EDCA5F8];
      *&__lk.__owns_ = 1107296256;
      v9 = sub_298C3F314;
      v10 = &unk_2A1F1FBB8;
      v11 = &v14;
      v12 = v18;
      v13 = a1 + 40;
      dyld_shared_cache_for_each_image();
      v2 = *(v15 + 24);
    }

    else if (!v6)
    {
      dyld_shared_cache_copy_uuid();
      v2 = uuid_compare(*v5, uu2) == 0;
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(v18, 8);
    if (v2)
    {
      *(v3 + 128) = a2;
      *(v3 + 136) = 0;
      dyld_shared_cache_for_each_image();
      std::mutex::lock((v3 + 16));
      *(v3 + 8) = 1;
      std::condition_variable::notify_one((v3 + 80));
      std::mutex::unlock((v3 + 16));
      m = (v3 + 144);
      __lk.__m_ = (v3 + 144);
      __lk.__owns_ = 1;
      std::mutex::lock((v3 + 144));
      if (*(v3 + 137))
      {
LABEL_11:
        std::mutex::unlock(m);
        return;
      }

      do
      {
        std::condition_variable::wait((v3 + 208), &__lk);
      }

      while (*(v3 + 137) != 1);
      if (__lk.__owns_)
      {
        m = __lk.__m_;
        goto LABEL_11;
      }
    }
  }
}

const unsigned __int8 *sub_298C3F090(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *src = 0;
  v6 = 0;
  result = dyld_image_copy_uuid();
  if (result)
  {
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, src);
    return sub_298C2B3C8((v2 + 256), dst, dst);
  }

  return result;
}

uint64_t sub_298C3F11C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 5)
  {
    if (*(*(*(result + 32) + 8) + 24) == 1)
    {
      v28[8] = v10;
      v28[9] = v9;
      v28[10] = v8;
      v28[11] = v7;
      v28[12] = v6;
      v28[13] = v5;
      v28[14] = v11;
      v28[15] = v12;
      std::generic_category();
      v16[0] = "Dyld.cpp";
      v16[2] = ":";
      v17 = 771;
      v15 = 2;
      strcpy(__p, "63");
      v18[0] = v16;
      v18[2] = __p;
      v19 = 1026;
      v20[0] = v18;
      v20[2] = ": ";
      v21 = 770;
      *&v22 = v20;
      *&v23 = "Multiple r-x segments in image ";
      LOWORD(v24) = 770;
      installname = dyld_image_get_installname();
      if (*installname)
      {
        *&v25 = &v22;
        *&v26 = installname;
        LOWORD(v27) = 770;
      }

      else
      {
        v25 = v22;
        v26 = v23;
        v27 = v24;
      }

      sub_298B996A4(&v25, v28);
      operator new();
    }

    *(*(*(result + 40) + 8) + 24) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_298C3F314(uint64_t result, uint64_t a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    result = dyld_image_copy_uuid();
    if (result)
    {
      result = uuid_compare(**(v2 + 48), *(*(*(v2 + 40) + 8) + 24));
      *(*(*(v2 + 32) + 8) + 24) = result == 0;
    }
  }

  return result;
}

uint64_t sub_298C3F388(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    v8 = MEMORY[0x29C2943C0]();
    MEMORY[0x29C2945F0](v8, 0x20C4093837F09);
  }

  MEMORY[0x29C2945F0](a1, 0x10F0C4075285802);
  return 0;
}

__n128 sub_298C3F430(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v60 = v12 + 1;
        v61 = v12[1].n128_u64[0];
        v63 = a2[-1].n128_u64[0];
        v58 = a2 - 1;
        v62 = v63;
        if (v61 < v12->n128_u64[0])
        {
          if (v62 >= v61)
          {
            v135 = *v12;
            *v12 = *v60;
            result = v135;
            *v60 = v135;
            if (v58->n128_u64[0] < v12[1].n128_u64[0])
            {
              result = *v60;
              *v60 = *v58;
              *v58 = result;
            }

            return result;
          }

LABEL_109:
          v131 = *v12;
          *v12 = *v58;
          result = v131;
          *v58 = v131;
          return result;
        }

        if (v62 >= v61)
        {
          return result;
        }

        result = *v60;
        *v60 = *v58;
        *v58 = result;
LABEL_190:
        if (v12[1].n128_u64[0] < v12->n128_u64[0])
        {
          v137 = *v12;
          *v12 = *v60;
          result = v137;
          *v60 = v137;
        }

        return result;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {

          result.n128_u64[0] = sub_298C3FFAC(v12, v12 + 1, v12[2].n128_u64, v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
          return result;
        }

        goto LABEL_9;
      }

      v60 = v12 + 1;
      v64 = v12[1].n128_u64[0];
      v65 = v12 + 2;
      v66 = v12[2].n128_u64[0];
      if (v64 >= v12->n128_u64[0])
      {
        if (v66 < v64)
        {
          result = *v60;
          *v60 = *v65;
          *v65 = result;
          if (v12[1].n128_u64[0] < v12->n128_u64[0])
          {
            v134 = *v12;
            *v12 = *v60;
            result = v134;
            *v60 = v134;
          }
        }

        goto LABEL_187;
      }

      if (v66 >= v64)
      {
        v136 = *v12;
        *v12 = *v60;
        result = v136;
        *v60 = v136;
        if (v66 >= v12[1].n128_u64[0])
        {
          goto LABEL_187;
        }

        result = *v60;
        *v60 = *v65;
      }

      else
      {
        v132 = *v12;
        *v12 = *v65;
        result = v132;
      }

      *v65 = result;
LABEL_187:
      if (v9->n128_u64[0] >= v65->n128_u64[0])
      {
        return result;
      }

      result = *v65;
      *v65 = *v9;
      *v9 = result;
      if (v65->n128_u64[0] >= v60->n128_u64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *v65;
      *v65 = result;
      goto LABEL_190;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v59 = a2[-1].n128_u64[0];
      v58 = a2 - 1;
      if (v59 >= v12->n128_u64[0])
      {
        return result;
      }

      goto LABEL_109;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v67 = v12 + 1;
      v69 = v12 == a2 || v67 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v69)
        {
          do
          {
            v107 = v67;
            v108 = a1[1].n128_u64[0];
            if (v108 < a1->n128_u64[0])
            {
              v109 = a1[1].n128_u64[1];
              v110 = v107;
              do
              {
                result = v110[-1];
                *v110 = result;
                v111 = v110[-2].n128_u64[0];
                --v110;
              }

              while (v108 < v111);
              v110->n128_u64[0] = v108;
              v110->n128_u64[1] = v109;
            }

            v67 = v107 + 1;
            a1 = v107;
          }

          while (&v107[1] != a2);
        }

        return result;
      }

      if (v69)
      {
        return result;
      }

      v70 = 0;
      v71 = v12;
      while (1)
      {
        v73 = v67;
        v74 = v71[1].n128_u64[0];
        if (v74 < v71->n128_u64[0])
        {
          v75 = v71[1].n128_u64[1];
          v76 = v70;
          do
          {
            result = *(v12 + v76);
            *(v12 + v76 + 16) = result;
            if (!v76)
            {
              v72 = v12;
              goto LABEL_123;
            }

            v77 = *(v12[-1].n128_u64 + v76);
            v76 -= 16;
          }

          while (v74 < v77);
          v72 = (v12 + v76 + 16);
LABEL_123:
          v72->n128_u64[0] = v74;
          v72->n128_u64[1] = v75;
        }

        v67 = v73 + 1;
        v70 += 16;
        v71 = v73;
        if (&v73[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 < 0x81)
    {
      v18 = v12->n128_u64[0];
      if (v12->n128_u64[0] < v14->n128_u64[0])
      {
        if (v16 >= v18)
        {
          v120 = *v14;
          *v14 = *v12;
          result = v120;
          *v12 = v120;
          if (v9->n128_u64[0] >= v12->n128_u64[0])
          {
            goto LABEL_37;
          }

          v113 = *v12;
          *v12 = *v9;
        }

        else
        {
          v113 = *v14;
          *v14 = *v9;
        }

        result = v113;
        *v9 = v113;
LABEL_37:
        --a3;
        v19 = v12->n128_u64[0];
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v116 = *v12;
      *v12 = *v9;
      result = v116;
      *v9 = v116;
      if (v12->n128_u64[0] >= v14->n128_u64[0])
      {
        goto LABEL_37;
      }

      v117 = *v14;
      *v14 = *v12;
      result = v117;
      *v12 = v117;
      --a3;
      v19 = v12->n128_u64[0];
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v12[-1].n128_u64[0] < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u64[0])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          n128_u64 += 16;
        }

        while (v19 >= v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v50 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v19 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v130 = *v12;
        *v12 = *v52;
        result = v130;
        *v52 = v130;
        do
        {
          v55 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v19 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v56);
      }

      v57 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v19;
      v12[-1].n128_u64[1] = v54;
    }

    else
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v114 = *v14;
          *v14 = *v9;
          *v9 = v114;
          if (v14->n128_u64[0] < v12->n128_u64[0])
          {
            v115 = *v12;
            *v12 = *v14;
            *v14 = v115;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v118 = *v12;
          *v12 = *v14;
          *v14 = v118;
          if (v9->n128_u64[0] >= v14->n128_u64[0])
          {
            goto LABEL_28;
          }

          v112 = *v14;
          *v14 = *v9;
        }

        else
        {
          v112 = *v12;
          *v12 = *v9;
        }

        *v9 = v112;
      }

LABEL_28:
      v20 = v12 + 1;
      v21 = v14 - 1;
      v22 = v14[-1].n128_u64[0];
      v23 = v10->n128_u64[0];
      if (v22 >= v12[1].n128_u64[0])
      {
        if (v23 < v22)
        {
          v119 = *v21;
          *v21 = *v10;
          *v10 = v119;
          if (v21->n128_u64[0] < v20->n128_u64[0])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v26 = *v20;
          *v20 = *v21;
          *v21 = v26;
          if (v10->n128_u64[0] >= v21->n128_u64[0])
          {
            goto LABEL_42;
          }

          v121 = *v21;
          *v21 = *v10;
          v24 = v121;
        }

        else
        {
          v24 = *v20;
          *v20 = *v10;
        }

        *v10 = v24;
      }

LABEL_42:
      v27 = v12 + 2;
      v30 = v14[1].n128_u64[0];
      v28 = v14 + 1;
      v29 = v30;
      v31 = v11->n128_u64[0];
      if (v30 >= v12[2].n128_u64[0])
      {
        if (v31 < v29)
        {
          v122 = *v28;
          *v28 = *v11;
          *v11 = v122;
          if (v28->n128_u64[0] < v27->n128_u64[0])
          {
            v33 = *v27;
            *v27 = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v31 >= v29)
        {
          v34 = *v27;
          *v27 = *v28;
          *v28 = v34;
          if (v11->n128_u64[0] >= v28->n128_u64[0])
          {
            goto LABEL_51;
          }

          v123 = *v28;
          *v28 = *v11;
          v32 = v123;
        }

        else
        {
          v32 = *v27;
          *v27 = *v11;
        }

        *v11 = v32;
      }

LABEL_51:
      v35 = v15->n128_u64[0];
      v36 = v28->n128_u64[0];
      if (v15->n128_u64[0] >= v21->n128_u64[0])
      {
        if (v36 < v35)
        {
          v125 = *v15;
          *v15 = *v28;
          *v28 = v125;
          if (v15->n128_u64[0] < v21->n128_u64[0])
          {
            v126 = *v21;
            *v21 = *v15;
            *v15 = v126;
          }
        }
      }

      else
      {
        if (v36 >= v35)
        {
          v127 = *v21;
          *v21 = *v15;
          *v15 = v127;
          if (v28->n128_u64[0] >= v15->n128_u64[0])
          {
            goto LABEL_60;
          }

          v124 = *v15;
          *v15 = *v28;
        }

        else
        {
          v124 = *v21;
          *v21 = *v28;
        }

        *v28 = v124;
      }

LABEL_60:
      v128 = *v12;
      *v12 = *v15;
      result = v128;
      *v15 = v128;
      --a3;
      v19 = v12->n128_u64[0];
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v37 = 0;
      v38 = v12->n128_u64[1];
      do
      {
        v39 = v12[++v37].n128_u64[0];
      }

      while (v39 < v19);
      v40 = &v12[v37];
      v41 = a2;
      if (v37 == 1)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v19);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v19);
      }

      v12 = (v12 + v37 * 16);
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v129 = *v12;
          *v12 = *v44;
          result = v129;
          *v44 = v129;
          do
          {
            v45 = v12[1].n128_u64[0];
            ++v12;
          }

          while (v45 < v19);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v19);
        }

        while (v12 < v44);
      }

      v47 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      v12[-1].n128_u64[0] = v19;
      v12[-1].n128_u64[1] = v38;
      if (v40 < v41)
      {
LABEL_81:
        result = sub_298C3F430(a1, v12 - 1, a3, a4 & 1, result);
        a4 = 0;
      }

      else
      {
        v48 = sub_298C40130(a1, v12 - 1, result);
        if (sub_298C40130(v12, a2, v49))
        {
          a2 = v12 - 1;
          if (v48)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v48)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return result;
  }

  v78 = (v13 - 2) >> 1;
  v79 = v78;
  while (2)
  {
    if (v78 >= v79)
    {
      v81 = (2 * (v79 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v82 = &v12[v81];
      if (2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v85 = &v12[v79];
        v86 = v85->n128_u64[0];
        if (v82->n128_u64[0] >= v85->n128_u64[0])
        {
LABEL_143:
          v87 = v85->n128_u64[1];
          while (1)
          {
            v90 = v85;
            v85 = v82;
            *v90 = *v82;
            if (v78 < v81)
            {
              break;
            }

            v91 = (2 * (v81 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v82 = &v12[v91];
            v81 = 2 * v81 + 2;
            if (v81 < v13)
            {
              v88 = v82->n128_u64[0];
              v89 = v82[1].n128_u64[0];
              if (v82->n128_u64[0] <= v89)
              {
                v88 = v82[1].n128_u64[0];
              }

              if (v82->n128_u64[0] >= v89)
              {
                v81 = v91;
              }

              else
              {
                ++v82;
              }

              if (v88 < v86)
              {
                break;
              }
            }

            else
            {
              v81 = v91;
              if (v82->n128_u64[0] < v86)
              {
                break;
              }
            }
          }

          v85->n128_u64[0] = v86;
          v85->n128_u64[1] = v87;
        }
      }

      else
      {
        v83 = v82[1].n128_u64[0];
        v84 = v82->n128_u64[0] >= v83;
        if (v82->n128_u64[0] > v83)
        {
          v83 = v82->n128_u64[0];
        }

        if (!v84)
        {
          ++v82;
          v81 = 2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v85 = &v12[v79];
        v86 = v85->n128_u64[0];
        if (v83 >= v85->n128_u64[0])
        {
          goto LABEL_143;
        }
      }
    }

    v80 = v79-- <= 0;
    if (!v80)
    {
      continue;
    }

    break;
  }

  do
  {
    v92 = 0;
    v133 = *v12;
    v93 = (v13 - 2) >> 1;
    v94 = v12;
    do
    {
      while (1)
      {
        v98 = &v94[v92];
        v97 = v98 + 1;
        v99 = (2 * v92) | 1;
        v92 = 2 * v92 + 2;
        if (v92 < v13)
        {
          break;
        }

        v92 = v99;
        *v94 = *v97;
        v94 = v98 + 1;
        if (v99 > v93)
        {
          goto LABEL_163;
        }
      }

      v96 = v98[2].n128_u64[0];
      v95 = v98 + 2;
      if (v95[-1].n128_u64[0] >= v96)
      {
        v92 = v99;
      }

      else
      {
        v97 = v95;
      }

      *v94 = *v97;
      v94 = v97;
    }

    while (v92 <= v93);
LABEL_163:
    if (v97 == --a2)
    {
      result = v133;
      *v97 = v133;
    }

    else
    {
      *v97 = *a2;
      result = v133;
      *a2 = v133;
      v100 = (v97 - v12 + 16) >> 4;
      v80 = v100 < 2;
      v101 = v100 - 2;
      if (!v80)
      {
        v102 = v101 >> 1;
        v103 = &v12[v102];
        v104 = v97->n128_u64[0];
        if (v103->n128_u64[0] < v97->n128_u64[0])
        {
          v105 = v97->n128_u64[1];
          do
          {
            v106 = v97;
            v97 = v103;
            result = *v103;
            *v106 = *v103;
            if (!v102)
            {
              break;
            }

            v102 = (v102 - 1) >> 1;
            v103 = &v12[v102];
          }

          while (v103->n128_u64[0] < v104);
          v97->n128_u64[0] = v104;
          v97->n128_u64[1] = v105;
        }
      }
    }

    v80 = v13-- <= 2;
  }

  while (!v80);
  return result;
}

__n128 sub_298C3FFAC(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
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
    if (*a3 < a2->n128_u64[0])
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
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
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

BOOL sub_298C40130(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v4->n128_u64[0] < *(a1 + 16))
          {
            v30 = *v7;
            *v7 = *v4;
            *v4 = v30;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v4;
      *v4 = v24;
LABEL_49:
      if (*(a1 + 16) < *a1)
      {
        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_298C3FFAC(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u64[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }

      goto LABEL_46;
    }

    if (v20 >= v18)
    {
      v40 = *a1;
      *a1 = *v7;
      *v7 = v40;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_46;
      }

      v23 = *v7;
      *v7 = *v19;
    }

    else
    {
      v23 = *a1;
      *a1 = *v19;
    }

    *v19 = v23;
LABEL_46:
    if (v21->n128_u64[0] >= v19->n128_u64[0])
    {
      return 1;
    }

    v41 = *v19;
    *v19 = *v21;
    *v21 = v41;
    if (v19->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v42 = *v7;
    *v7 = *v19;
    *v19 = v42;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v11 = *a1;
    *a1 = *v4;
    *v4 = v11;
    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u64[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_32:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (v32->n128_u64[0] < v12->n128_u64[0])
    {
      break;
    }

LABEL_41:
    v12 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }

  v36 = v32->n128_u64[1];
  v37 = v33;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v35;
      *(a1 + 8) = v36;
      if (++v34 != 8)
      {
        goto LABEL_41;
      }

      return &v32[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v35 < v38);
  v39 = a1 + v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v36;
  if (++v34 != 8)
  {
    goto LABEL_41;
  }

  return &v32[1] == a2;
}

void sub_298C404B4(uint64_t a1@<X8>)
{
  AssertionID = 0;
  if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.libhwtrace.active-trace", &AssertionID))
  {
    std::generic_category();
    v4[0] = "Kernel.cpp";
    v4[2] = ":";
    v5 = 771;
    v3 = 2;
    strcpy(__p, "42");
    v6[0] = v4;
    v6[2] = __p;
    v7 = 1026;
    v8[0] = v6;
    v8[2] = ": ";
    v9 = 770;
    v10[0] = v8;
    v10[2] = "IOPMAssertionCreateWithName failed";
    v11 = 770;
    sub_298B996A4(v10, &v13);
    operator new();
  }

  *(a1 + 8) &= ~1u;
  *a1 = AssertionID;
}

void sub_298C406A4(int a1@<W0>, void *a2@<X8>)
{
  v13 = a1;
  if (sysctlbyname("kern.suspend_cluster_powerdown", 0, 0, &v13, 4uLL))
  {
    std::generic_category();
    v5[0] = "Kernel.cpp";
    v5[2] = ":";
    v6 = 771;
    v4 = 2;
    strcpy(__p, "51");
    v7[0] = v5;
    v7[2] = __p;
    v8 = 1026;
    v9[0] = v7;
    v9[2] = ": ";
    v10 = 770;
    v11[0] = v9;
    v11[2] = "kern.suspend_cluster_powerdown failed";
    v12 = 770;
    sub_298B996A4(v11, &v14);
    operator new();
  }

  *a2 = 0;
}

void sub_298C40868(uint64_t **a1)
{
  v1 = &unk_29EEB6500;
  v2 = 208;
  do
  {
    while (1)
    {
      v4 = *(v1 - 1);
      v3 = *v1;
      if (v4)
      {
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_37;
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        *(&v14.__r_.__value_.__s + 23) = *v1;
        if (v3)
        {
          memmove(&v14, v4, v3);
        }

        v14.__r_.__value_.__s.__data_[v3] = 0;
      }

      else
      {
        memset(&v14, 0, sizeof(v14));
      }

      v5 = std::string::insert(&v14, 0, "machdep.cpu.sysreg_");
      v6 = v5->__r_.__value_.__r.__words[2];
      *__p = *&v5->__r_.__value_.__l.__data_;
      v16 = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v12 = 8;
      v13 = 0;
      v7 = v16 >= 0 ? __p : __p[0];
      if (sysctlbyname(v7, &v13, &v12, 0, 0))
      {
        v8 = 0;
        v13 = 0;
        if (!v4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v8 = v13;
        if (!v4)
        {
LABEL_23:
          memset(&v14, 0, sizeof(v14));
          goto LABEL_18;
        }
      }

      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_37:
        sub_298ADDDA0();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      *(&v14.__r_.__value_.__s + 23) = v3;
      if (v3)
      {
        memmove(&v14, v4, v3);
      }

      v14.__r_.__value_.__s.__data_[v3] = 0;
LABEL_18:
      v17 = &v14;
      sub_298C2F984(a1, &v14.__r_.__value_.__l.__data_, &unk_298CF78C8, &v17)[7] = v8;
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (SHIBYTE(v16) < 0)
      {
        goto LABEL_25;
      }

LABEL_20:
      v1 += 2;
      v2 -= 16;
      if (!v2)
      {
        goto LABEL_32;
      }
    }

    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    operator delete(__p[0]);
    v1 += 2;
    v2 -= 16;
  }

  while (v2);
LABEL_32:
  HIBYTE(v16) = 8;
  strcpy(__p, "VBAR_EL1");
  v14.__r_.__value_.__r.__words[0] = __p;
  v9 = sub_298C2F984(a1, __p, &unk_298CF78C8, &v14)[7];
  *(&v14.__r_.__value_.__s + 23) = 8;
  strcpy(&v14, "VBAR_EL2");
  v17 = &v14;
  sub_298C2F984(a1, &v14.__r_.__value_.__l.__data_, &unk_298CF78C8, &v17)[7] = v9;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if (SHIBYTE(v16) < 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_39:
    operator delete(__p[0]);
  }

LABEL_34:
  HIBYTE(v16) = 8;
  strcpy(__p, "VBAR_GL1");
  v14.__r_.__value_.__r.__words[0] = __p;
  v10 = sub_298C2F984(a1, __p, &unk_298CF78C8, &v14)[7];
  *(&v14.__r_.__value_.__s + 23) = 8;
  strcpy(&v14, "VBAR_GL2");
  v17 = &v14;
  sub_298C2F984(a1, &v14.__r_.__value_.__l.__data_, &unk_298CF78C8, &v17)[7] = v10;
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(__p[0]);
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_41;
  }
}

void sub_298C40C18(uint64_t a1@<X8>)
{
  *&v45[23] = *MEMORY[0x29EDCA608];
  v42 = 8;
  v43 = 0;
  v2 = kas_info();
  if (v2)
  {
    v3 = v2;
    std::generic_category();
    v4 = 0;
    v17[0] = "Kernel.cpp";
    v17[2] = ":";
    v18 = 771;
    v16 = 2;
    strcpy(__p, "81");
    v19[0] = v17;
    v19[2] = __p;
    v20 = 1026;
    v21[0] = v19;
    v21[2] = ": ";
    v22 = 770;
    v23[0] = v21;
    v23[2] = "Expected<uint64_t> llvm::applehwtrace::getXnuTextSlide()";
    v24 = 770;
    v25[0] = v23;
    v25[2] = ": ";
    v26 = 770;
    v27[0] = v25;
    v27[2] = "kernel slide recovery failed";
    v28 = 770;
    v29[0] = v27;
    v29[2] = " (err=";
    v5 = v3;
    v30 = 770;
    v6 = v45;
    do
    {
      *--v6 = a0123456789abcd_1[v5 & 0xF];
      ++v4;
      v7 = v5 >= 0x10;
      v5 >>= 4;
    }

    while (v7);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v4 > 0x16)
    {
      operator new();
    }

    v14 = v4;
    if (v4)
    {
      memcpy(&__dst, v6, v4);
    }

    *(&__dst + v4) = 0;
    v31[0] = v29;
    v31[2] = &__dst;
    v32 = 1026;
    *&v33 = v31;
    *&v34 = ") ";
    LOWORD(v35) = 770;
    if (mach_error_string(v3))
    {
      v9 = mach_error_string(v3);
      if (*v9)
      {
LABEL_13:
        *&v36 = &v33;
        *&v37 = v9;
        LOWORD(v38) = 770;
        v10 = 2;
        v11 = &v36;
LABEL_14:
        v39[0] = v11;
        v39[1] = v8;
        v39[2] = "\n";
        v12 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v9 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v36 = v33;
    v37 = v34;
    v38 = v35;
    v10 = v35;
    if (v35)
    {
      if (v35 != 1)
      {
        v8 = *(&v36 + 1);
        v11 = &v36;
        if (BYTE1(v38) == 1)
        {
          v11 = v36;
        }

        else
        {
          v10 = 2;
        }

        goto LABEL_14;
      }

      v39[0] = "\n";
      v12 = 1;
      v10 = 3;
    }

    else
    {
      v12 = 1;
    }

LABEL_15:
    v40 = v10;
    v41 = v12;
    sub_298B996A4(v39, &v44);
    operator new();
  }

  *(a1 + 8) &= ~1u;
  *a1 = v43;
}

void sub_298C41068(UInt8 *buffer, CFIndex bufLen)
{
  v36 = *MEMORY[0x29EDCA608];
  if (CFURLCreateFromFileSystemRepresentation(0, buffer, bufLen, 0))
  {
    if (AMSupportCreateDataFromFileURL())
    {
      std::generic_category();
      v15[0] = "Kernel.cpp";
      v16 = ":";
      v17 = 771;
      v25 = 3;
      LODWORD(__p[0]) = 3749169;
      v18[0] = v15;
      v19 = __p;
      v20 = 1026;
      *v21 = v18;
      v22 = ": ";
      v23 = 770;
      __dst = v21;
      v27 = "invalid AMSupport data for path: ";
      v29 = 770;
      dst_buffer = &__dst;
      *(&__n + 1) = buffer;
      v32 = bufLen;
      v33 = 1282;
      sub_298B996A4(&dst_buffer, v12);
      operator new();
    }

    CFDataGetBytePtr(0);
    CFDataGetLength(0);
    if (Img4DecodeInitPayload())
    {
      CFDataGetBytePtr(0);
      CFDataGetLength(0);
      if (Img4DecodeInit())
      {
        v12[0] = "Kernel.cpp";
        v13 = ":";
        v14 = 771;
        std::generic_category();
        v11 = 3;
        v10[0] = 3224625;
        v15[0] = v12;
        v16 = v10;
        v17 = 1026;
        v18[0] = v15;
        v19 = ": ";
        v20 = 770;
        *v21 = v18;
        v22 = "payload format neither im4p nor img4: ";
        v23 = 770;
        __dst = v21;
        v27 = buffer;
        v28 = bufLen;
        v29 = 1282;
        sub_298B996A4(&__dst, __p);
        operator new();
      }
    }

    v5 = 0;
    v6 = v34;
    v7 = v35;
    v8 = 4 * v35;
    dst_buffer = &v32;
    __n = xmmword_298D1B6C0;
    while (1)
    {
      if (v5 != v8)
      {
        if (v5 <= v8)
        {
          if (*(&__n + 1) < v8)
          {
            sub_298B90C08(&dst_buffer, &v32, v8, 1);
            v5 = __n;
          }

          if (v8 != v5)
          {
            bzero(&dst_buffer[v5], v8 - v5);
          }
        }

        *&__n = v8;
        v5 = v8;
      }

      v9 = compression_decode_buffer(dst_buffer, v5, v6, v7, 0, COMPRESSION_LZFSE);
      if (!v9)
      {
        std::generic_category();
        v12[0] = "Kernel.cpp";
        v13 = ":";
        v14 = 771;
        v11 = 3;
        v10[0] = 3618609;
        v15[0] = v12;
        v16 = v10;
        v17 = 1026;
        v18[0] = v15;
        v19 = ": ";
        v20 = 770;
        *v21 = v18;
        v22 = "error when decompressing kernelcache";
        v23 = 770;
        sub_298B996A4(v21, __p);
        operator new();
      }

      v5 = __n;
      v8 *= 2;
      if (v9 < __n)
      {
        operator new();
      }
    }
  }

  std::generic_category();
  v15[0] = "Kernel.cpp";
  v16 = ":";
  v17 = 771;
  v25 = 3;
  LODWORD(__p[0]) = 3355953;
  v18[0] = v15;
  v19 = __p;
  v20 = 1026;
  *v21 = v18;
  v22 = ": ";
  v23 = 770;
  __dst = v21;
  v27 = "invalid URL to input path: ";
  v29 = 770;
  dst_buffer = &__dst;
  *(&__n + 1) = buffer;
  v32 = bufLen;
  v33 = 1282;
  sub_298B996A4(&dst_buffer, v12);
  operator new();
}

void sub_298C4198C(uint64_t a1, const char **a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  v6 = *a2;
  if (v6)
  {
    uuid_copy(dst, v6);
    v9 = *(a3 + 8);
    v7 = a3 + 8;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    uuid_parse(a2[1], dst);
    v10 = *(a3 + 8);
    v7 = a3 + 8;
    v8 = v10;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = v7;
  do
  {
    v12 = uuid_compare((v8 + 32), dst);
    if (v12 >= 0)
    {
      v11 = v8;
    }

    v8 = *(v8 + ((v12 >> 28) & 8));
  }

  while (v8);
  if (v11 != v7 && (uuid_compare(dst, (v11 + 32)) & 0x80000000) == 0)
  {
    if (*(v11 + 71) < 0)
    {
      sub_298AFE11C(a1, *(v11 + 48), *(v11 + 56));
    }

    else
    {
      v17 = *(v11 + 48);
      *(a1 + 16) = *(v11 + 64);
      *a1 = v17;
    }

    *(a1 + 24) = 1;
    return;
  }

LABEL_13:
  sub_298B1EF68(dst);
  if ((v27 & 1) != 0 && (v13 = *dst, *dst = 0, v13))
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    (*(*v13 + 8))(v13);
  }

  else
  {
    v18 = *a2;
    v19 = a2[2];
    sub_298B1FA0C(dst, &v18, 2, __p);
    v20 = 260;
    *&v18 = __p;
    if (sub_298BAB3F0(&v18, 0))
    {
      *a1 = 0;
      v14 = SHIBYTE(v22);
      *(a1 + 24) = 0;
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a1 = *__p;
      *(a1 + 16) = v22;
      *(a1 + 24) = 1;
    }
  }

  if (v27)
  {
    v15 = *dst;
    *dst = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  else
  {
    if (v26 != -1)
    {
      HIDWORD(v19) = 2;
      v18 = 0uLL;
      if (fcntl(v26, 8, &v18) == -1)
      {
        __error();
      }
    }

    v16 = v25;
    v25 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (v24 < 0)
    {
      operator delete(*dst);
    }
  }
}

void sub_298C41C14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v109 = *MEMORY[0x29EDCA608];
  v42[0] = a2;
  v42[1] = a3;
  v93 = 0u;
  v94 = 0u;
  *__s = 0u;
  v92 = 0u;
  v41 = 64;
  if (sysctlbyname("kern.filesetuuid", __s, &v41, 0, 0))
  {
    a4[8] &= ~1u;
    *a4 = 0;
    return;
  }

  v39[0] = 0;
  v39[1] = __s;
  v40 = strlen(__s);
  v38[0] = v39;
  v38[1] = v42;
  *&v59 = 0;
  *(&v59 + 1) = __s;
  *&v60 = v40;
  sub_298C4198C(v35, &v59, a1);
  if (v37 != 1)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v41 = 512;
    if (sysctlbyname("kern.bootobjectspath", &v59, &v41, 0, 0))
    {
      std::generic_category();
      v56 = "Kernel.cpp";
      v57 = ":";
      v58 = 771;
      HIBYTE(v47) = 3;
      LODWORD(__p) = 3289395;
      v95[0] = &v56;
      p_p = &__p;
      LOWORD(v98) = 1026;
      v43 = v95;
      *&v44 = ": ";
      LOWORD(v45) = 770;
      v100 = &v43;
      *(&v101 + 1) = "kern.bootobjectspath failed";
      LOWORD(v103) = 770;
      sub_298B996A4(&v100, v53);
      operator new();
    }

    *(&v33 + 1) = 0;
    v34 = 0;
    *&v33 = v35;
    *v106 = "/private/preboot";
    v108 = 259;
    v8 = 1;
    BYTE1(v103) = 1;
    if (v59)
    {
      v100 = &v59;
      v8 = 3;
    }

    LOBYTE(v103) = v8;
    v43 = "System/Library/Caches";
    LOWORD(v45) = 259;
    LOWORD(v98) = 257;
    sub_298BA8944(&v33, 0, v106, &v100, &v43, v95);
    *(&v31 + 1) = 0;
    v32 = 0;
    *&v31 = &v33;
    v108 = 261;
    *v106 = v33;
    v100 = "com.apple.kernelcaches/kernelcache";
    LOWORD(v103) = 259;
    LOWORD(v45) = 257;
    LOWORD(v98) = 257;
    sub_298BA8944(&v31, 0, v106, &v100, &v43, v95);
    v108 = 261;
    *v106 = v31;
    if (sub_298BAB3F0(v106, 0))
    {
      std::generic_category();
      v53[0] = "Kernel.cpp";
      v54 = ":";
      v55 = 771;
      v52 = 3;
      LODWORD(v50) = 3289651;
      v56 = v53;
      v57 = &v50;
      v58 = 1026;
      v95[0] = &v56;
      p_p = ": ";
      LOWORD(v98) = 770;
      v43 = v95;
      v44 = v31;
      LOWORD(v45) = 1282;
      v100 = &v43;
      *(&v101 + 1) = " does not exist";
      LOWORD(v103) = 770;
      sub_298B996A4(&v100, &__p);
      operator new();
    }

    v9 = strlen(__s);
    v10 = v31;
    sub_298B1EF68(v95);
    if (v99)
    {
      v11 = v95[0];
      v95[0] = 0;
      if (v11)
      {
        a4[8] |= 1u;
        *a4 = v11;
        v27 = v31;
        if (v31 == &v33)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }
    }

    *v106 = 0;
    *&v106[8] = __s;
    *&v106[16] = v9;
    sub_298B1FA0C(v95, v106, 0, &__p);
    if (v47 >= 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if (v47 >= 0)
    {
      v13 = SHIBYTE(v47);
    }

    else
    {
      v13 = *(&__p + 1);
    }

    *v106 = 257;
    v106[2] = 1;
    if (v12)
    {
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_298ADDDA0();
      }

      v14 = v9;
      if (v13 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v107) = v13;
      if (v13)
      {
        memmove(&v106[8], v12, v13);
      }

      v106[v13 + 8] = 0;
    }

    else
    {
      v14 = v9;
      *&v106[8] = 0;
      *&v106[16] = 0;
      v107 = 0;
    }

    LOWORD(v100) = *v106;
    BYTE2(v100) = v106[2];
    v101 = *&v106[8];
    v102 = v107;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    sub_298AFF468(&v100, v53);
    if (!v53[0])
    {
      v102 = 0;
      v101 = 0uLL;
      v16 = v105;
      v105 = 0;
      v53[0] = v16;
      sub_298C39D18();
    }

    v51 |= 1u;
    v50 = v53[0];
    v15 = v105;
    v105 = 0;
    if (v15)
    {
      (*(*v15 + 16))(v15);
    }

    if (SHIBYTE(v102) < 0)
    {
      operator delete(v101);
      v17 = v50;
      if (v51)
      {
LABEL_37:
        v49 = v17;
        sub_298AE72FC(&v49, v53);
        if (v49)
        {
          (*(*v49 + 8))(v49);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v17 = v50;
      if (v51)
      {
        goto LABEL_37;
      }
    }

    v53[0] = 0;
    v53[1] = __s;
    v54 = v14;
    sub_298C4454C(&v48, v17[2], v17[3], v12, v13, v53, "kc", 2uLL, "boot kernel collection", 0x16uLL);
    if (v48)
    {
      v49 = v48;
      sub_298AE72FC(&v49, v53);
      if (v49)
      {
        (*(*v49 + 8))(v49);
      }

      v18 = v17[1];
      v17[1] = 0;
      if (v18)
      {
        v19 = *(v18 + 40);
        *(v18 + 40) = 0;
        if (v19)
        {
          MEMORY[0x29C2945C0](v19, 0x1000C8077774924);
        }

        MEMORY[0x29C2945F0](v18, 0x1070C4001F9CED1);
      }

      v20 = *v17;
      *v17 = 0;
      if (v20)
      {
        (*(*v20 + 16))(v20);
      }

      MEMORY[0x29C2945F0](v17, 0x1070C401CED0764);
LABEL_50:
      sub_298C41068(v10, *(&v10 + 1));
    }

    v21 = v17[1];
    v17[1] = 0;
    if (v21)
    {
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;
      if (v22)
      {
        MEMORY[0x29C2945C0](v22, 0x1000C8077774924);
      }

      MEMORY[0x29C2945F0](v21, 0x1070C4001F9CED1);
    }

    v23 = *v17;
    *v17 = 0;
    if (v23)
    {
      (*(*v23 + 16))(v23);
    }

    MEMORY[0x29C2945F0](v17, 0x1070C401CED0764);
    LOBYTE(v107) = 0;
    *v106 = __p;
    *&v106[16] = v47;
    if (v99)
    {
      v24 = v95[0];
      v95[0] = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
        v25 = *v106;
        goto LABEL_70;
      }
    }

    else
    {
      if (v98 != -1)
      {
        HIDWORD(v101) = 2;
        v100 = 0;
        *&v101 = 0;
        if (fcntl(v98, 8, &v100) == -1)
        {
          __error();
        }
      }

      v26 = v97;
      v97 = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      if (SHIBYTE(p_p) < 0)
      {
        operator delete(v95[0]);
        v25 = *v106;
LABEL_70:
        if (v106[23] >= 0)
        {
          v28 = v106;
        }

        else
        {
          v28 = v25;
        }

        if (v106[23] >= 0)
        {
          v29 = v106[23];
        }

        else
        {
          v29 = *&v106[8];
        }

        sub_298C42C94(a4, v38, v28, v29);
        if (v107)
        {
          v30 = *v106;
          *v106 = 0;
          if (v30)
          {
            (*(*v30 + 8))(v30);
            v27 = v31;
            if (v31 == &v33)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }
        }

        else if ((v106[23] & 0x80000000) != 0)
        {
          operator delete(*v106);
          v27 = v31;
          if (v31 == &v33)
          {
LABEL_83:
            if (v33 != v35)
            {
              free(v33);
            }

            goto LABEL_85;
          }

LABEL_82:
          free(v27);
          goto LABEL_83;
        }

        v27 = v31;
        if (v31 == &v33)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }
    }

    v25 = *v106;
    goto LABEL_70;
  }

  if (v36 >= 0)
  {
    v6 = v35;
  }

  else
  {
    v6 = v35[0];
  }

  if (v36 >= 0)
  {
    v7 = v36;
  }

  else
  {
    v7 = v35[1];
  }

  sub_298C42C94(a4, v38, v6, v7);
LABEL_85:
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35[0]);
  }
}

void sub_298C42C94(uint64_t a1, __int128 **a2, _BYTE *a3, size_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v21 = 257;
  v22 = 1;
  if (a3)
  {
    if (a4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v25) = a4;
    if (a4)
    {
      memmove(&__p, a3, a4);
    }

    *(&__p + a4) = 0;
  }

  else
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_298AFF468(&v21, &v29);
  if (!v29)
  {
    v24 = 0;
    v25 = 0;
    __p = 0;
    v9 = v28;
    v28 = 0;
    *&v29 = v9;
    sub_298C39D18();
  }

  v32 |= 1u;
  v31 = v29;
  v8 = v28;
  v28 = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
    v10 = v31;
    if (v32)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = v31;
    if (v32)
    {
LABEL_13:
      *(a1 + 8) |= 1u;
      *a1 = v10;
      return;
    }
  }

  v18 = *(*a2 + 2);
  v29 = **a2;
  v30 = v18;
  sub_298C4454C(&v20, v10[2], v10[3], a3, a4, &v29, "kc", 2uLL, "boot kernel collection", 0x16uLL);
  v11 = v20;
  if (v20)
  {
    *(a1 + 8) |= 1u;
    *a1 = v11;
    v12 = v10[1];
    v10[1] = 0;
    if (!v12)
    {
      goto LABEL_22;
    }

LABEL_19:
    v16 = *(v12 + 40);
    *(v12 + 40) = 0;
    if (v16)
    {
      MEMORY[0x29C2945C0](v16, 0x1000C8077774924);
    }

    MEMORY[0x29C2945F0](v12, 0x1070C4001F9CED1);
    goto LABEL_22;
  }

  v13 = a2[1];
  v19 = *(*a2 + 2);
  v15 = *v13;
  v14 = *(v13 + 1);
  v29 = **a2;
  v30 = v19;
  v15(v14, a3, a4, &v29);
  *(a1 + 8) &= ~1u;
  *a1 = 1;
  v12 = v10[1];
  v10[1] = 0;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_22:
  v17 = *v10;
  *v10 = 0;
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  MEMORY[0x29C2945F0](v10, 0x1070C401CED0764);
}

void sub_298C43004(uint64_t a1@<X8>)
{
  v77 = *MEMORY[0x29EDCA608];
  v73 = 0;
  v70 = 0uLL;
  v71 = 0;
  v72 = 4;
  if (sysctlbyname("kern.static_if_abi", &v73, &v72, 0, 0))
  {
    std::generic_category();
    v56[0] = "Kernel.cpp";
    p_p = ":";
    v58 = 771;
    HIBYTE(v51) = 3;
    LODWORD(v50[0]) = 3421235;
    *&v59 = v56;
    *&v60 = v50;
    LOWORD(v61) = 1026;
    *&v62 = &v59;
    *&v63 = ": ";
    LOWORD(v64) = 770;
    v65[0] = &v62;
    *&v66 = "kern.static_if_abi sysctl failed";
    v67 = 770;
    sub_298B996A4(v65, v53);
    operator new();
  }

  v2 = v73;
  if (v73 != 1)
  {
    std::generic_category();
    v53[0] = "Kernel.cpp";
    v54 = ":";
    v55 = 771;
    HIBYTE(v48) = 3;
    LODWORD(v47[0]) = 3617843;
    v56[0] = v53;
    p_p = v47;
    v58 = 1026;
    *&v59 = v56;
    *&v60 = ": ";
    LOWORD(v61) = 770;
    *&v62 = &v59;
    *&v63 = "kern.static_if_abi unsupported: ";
    LOWORD(v64) = 770;
    if (v2)
    {
      v6 = 20;
      do
      {
        *(&v74[3] + v6--) = (v2 % 0xA) | 0x30;
        v7 = v2 > 9;
        v2 /= 0xAuLL;
      }

      while (v7);
      v8 = v6 + 1;
      v9 = 20 - v6;
      if ((20 - v6) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v76 = 48;
      v8 = 20;
      v9 = 1;
    }

    if (v9 <= 0x16)
    {
      HIBYTE(v45) = v9;
      if (v8 != 21)
      {
        memcpy(__dst, &v74[3] + v8, v9);
      }

      *(__dst + v9) = 0;
      v65[0] = &v62;
      *&v66 = __dst;
      v67 = 1026;
      sub_298B996A4(v65, v50);
      operator new();
    }

    operator new();
  }

  if (sysctlbyname("kern.static_if_modified_keys", 0, &v72, 0, 0))
  {
    if (*__error())
    {
      std::generic_category();
      v35[0] = "Kernel.cpp";
      v36 = ":";
      v37 = 771;
      v34 = 3;
      v33[0] = 3290419;
      v38[0] = v35;
      v39 = v33;
      v40 = 1026;
      v41[0] = v38;
      v42 = ": ";
      v43 = 770;
      __dst[0] = v41;
      v45 = "Expected<std::vector<uint64_t>> llvm::applehwtrace::getXnuRootStaticIfEntryOffsets()";
      v46 = 770;
      v47[0] = __dst;
      v48 = ": ";
      v49 = 770;
      v50[0] = v47;
      v51 = "kern.static_if_modified_keys sizing failed";
      v52 = 770;
      v53[0] = v50;
      v54 = " (err=";
      v55 = 770;
      v3 = *__error();
      if (v3)
      {
        v4 = 16;
        do
        {
          *(&v74[3] + v4--) = a0123456789abcd_1[v3 & 0xF];
          v12 = v3 >= 0x10;
          v3 >>= 4;
        }

        while (v12);
        v5 = v4 + 1;
      }

      else
      {
        v75 = 48;
        v5 = 16;
      }

      v17 = 17 - v5;
      if ((17 - v5) <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v17 > 0x16)
        {
          operator new();
        }

        v32 = 17 - v5;
        if (v5 != 17)
        {
          memcpy(&__p, &v74[3] + v5, 17 - v5);
        }

        *(&__p + v17) = 0;
        v56[0] = v53;
        p_p = &__p;
        v58 = 1026;
        *&v59 = v56;
        *&v60 = ") ";
        LOWORD(v61) = 770;
        v18 = __error();
        if (mach_error_string(*v18))
        {
          v20 = __error();
          v21 = mach_error_string(*v20);
          if (*v21)
          {
LABEL_43:
            *&v62 = &v59;
            *&v63 = v21;
LABEL_61:
            LOWORD(v64) = 770;
            v22 = 2;
            v27 = &v62;
LABEL_62:
            v65[0] = v27;
            v65[1] = v19;
            *&v66 = "\n";
            LOBYTE(v67) = v22;
            HIBYTE(v67) = 3;
            goto LABEL_63;
          }
        }

        else
        {
          v21 = "unknown error";
          if (aUnknownError[0])
          {
            goto LABEL_43;
          }
        }

        v62 = v59;
        v63 = v60;
        v64 = v61;
        v22 = v61;
        if (v61 != 1)
        {
          if (!v61)
          {
LABEL_47:
            v67 = 256;
            goto LABEL_63;
          }

LABEL_69:
          v19 = *(&v62 + 1);
          v27 = &v62;
          if (BYTE1(v64) == 1)
          {
            v27 = v62;
          }

          else
          {
            v22 = 2;
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      goto LABEL_73;
    }
  }

  else
  {
    v10 = v70;
    v11 = (*(&v70 + 1) - v70) >> 3;
    v12 = v72 >> 3 >= v11;
    v13 = (v72 >> 3) - v11;
    if (v13 != 0 && v12)
    {
      sub_298C360E8(&v70, v13);
      v10 = v70;
    }

    else if (!v12)
    {
      *(&v70 + 1) = v70 + 8 * (v72 >> 3);
    }

    if (!sysctlbyname("kern.static_if_modified_keys", v10, &v72, 0, 0))
    {
      *(a1 + 24) &= ~1u;
      *a1 = v70;
      *(a1 + 16) = v71;
      return;
    }

    if (*__error())
    {
      std::generic_category();
      v35[0] = "Kernel.cpp";
      v36 = ":";
      v37 = 771;
      v34 = 3;
      v33[0] = 3159603;
      v38[0] = v35;
      v39 = v33;
      v40 = 1026;
      v41[0] = v38;
      v42 = ": ";
      v43 = 770;
      __dst[0] = v41;
      v45 = "Expected<std::vector<uint64_t>> llvm::applehwtrace::getXnuRootStaticIfEntryOffsets()";
      v46 = 770;
      v47[0] = __dst;
      v48 = ": ";
      v49 = 770;
      v50[0] = v47;
      v51 = "kern.static_if_modified_keys retrieval failed";
      v52 = 770;
      v53[0] = v50;
      v54 = " (err=";
      v55 = 770;
      v14 = *__error();
      if (v14)
      {
        v15 = 16;
        do
        {
          *(&v74[3] + v15--) = a0123456789abcd_1[v14 & 0xF];
          v12 = v14 >= 0x10;
          v14 >>= 4;
        }

        while (v12);
        v16 = v15 + 1;
      }

      else
      {
        v75 = 48;
        v16 = 16;
      }

      v23 = 17 - v16;
      if ((17 - v16) <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v23 > 0x16)
        {
          operator new();
        }

        v32 = 17 - v16;
        if (v16 != 17)
        {
          memcpy(&__p, &v74[3] + v16, 17 - v16);
        }

        *(&__p + v23) = 0;
        v56[0] = v53;
        p_p = &__p;
        v58 = 1026;
        *&v59 = v56;
        *&v60 = ") ";
        LOWORD(v61) = 770;
        v24 = __error();
        if (mach_error_string(*v24))
        {
          v25 = __error();
          v26 = mach_error_string(*v25);
        }

        else
        {
          v26 = "unknown error";
        }

        if (*v26)
        {
          *&v62 = &v59;
          *&v63 = v26;
          goto LABEL_61;
        }

        v62 = v59;
        v63 = v60;
        v64 = v61;
        v22 = v61;
        if (v61 != 1)
        {
          if (!v61)
          {
            goto LABEL_47;
          }

          goto LABEL_69;
        }

LABEL_72:
        v65[0] = "\n";
        v66 = v30;
        v67 = 259;
        v68 = v28;
        v69 = v29;
LABEL_63:
        sub_298B996A4(v65, v74);
        operator new();
      }

LABEL_73:
      sub_298ADDDA0();
    }
  }

  *(a1 + 24) |= 1u;
  *a1 = 0;
  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }
}

void sub_298C43B54(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, void, const char *, size_t, void **, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v85 = *MEMORY[0x29EDCA608];
  v73 = a2;
  kas_info();
  v72 = a2;
  v76 = 8;
  kas_info();
  v9 = v73;
  v45 = a2;
  *values = xmmword_29EEB65C8;
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = MEMORY[0x29EDB9000];
  v12 = CFArrayCreate(*MEMORY[0x29EDB8ED8], values, 2, MEMORY[0x29EDB9000]);
  *v83 = xmmword_29EEB65D8;
  v13 = CFArrayCreate(v10, v83, 2, v11);
  theDict = OSKextCopyLoadedKextInfo();
  if (!theDict)
  {
    std::generic_category();
    v62[0] = "Kernel.cpp";
    p_p = ":";
    v64 = 771;
    v56 = 3;
    strcpy(__s, "440");
    v65[0] = v62;
    v66 = __s;
    v67 = 1026;
    v68[0] = v65;
    v69 = ": ";
    v71 = 770;
    v79 = v68;
    v81 = "Could not find sptm/txm ASLR details (OSKextCopyLoadedKextInfo failed)";
    v82 = 770;
    sub_298B996A4(&v79, v58);
    operator new();
  }

  v38 = a3;
  v39 = a4;
  v40 = v13;
  v41 = v12;
  v14 = 0;
  v15 = values;
  v16 = 1;
  v17 = theDict;
  do
  {
    v18 = v16;
    v19 = *(&qword_298CF7888 + v14);
    value = 0;
    if (!CFDictionaryGetValueIfPresent(v17, *v15, &value))
    {
      goto LABEL_4;
    }

    v76 = 0;
    if (!CFDictionaryGetValueIfPresent(value, @"OSBundleTextUUID", &v76) || (BytePtr = CFDataGetBytePtr(v76)) == 0)
    {
      std::generic_category();
      v58[0] = "Kernel.cpp";
      v59 = ":";
      v60 = 771;
      v36 = 3;
      v75 = 3;
      LODWORD(v74[0]) = 3421492;
      v62[0] = v58;
      p_p = v74;
      v64 = 1026;
      v65[0] = v62;
      v66 = ": ";
      v67 = 770;
      if (v18)
      {
        v36 = 4;
      }

      v37 = "txm";
      if (v18)
      {
        v37 = "sptm";
      }

      v68[0] = v65;
      v69 = v37;
      v70 = v36;
      v71 = 1282;
      v79 = v68;
      v80 = v36;
      v81 = " is present but its UUID is unavailable";
      v82 = 770;
      sub_298B996A4(&v79, __s);
      operator new();
    }

    v21 = BytePtr;
    v76 = BytePtr;
    v77 = 0;
    v78 = 0;
    sub_298C4198C(__s, &v76, a1);
    if (v57 == 1)
    {
      if (v56 < 0)
      {
        CStringPtr = *__s;
        if (!*__s)
        {
          goto LABEL_30;
        }
      }

      else
      {
        CStringPtr = __s;
      }
    }

    else
    {
      v76 = 0;
      if (!CFDictionaryGetValueIfPresent(value, @"OSBundleExecutablePath", &v76) || (CStringPtr = CFStringGetCStringPtr(v76, 0x8000100u)) == 0)
      {
LABEL_30:
        std::generic_category();
        v58[0] = "Kernel.cpp";
        v59 = ":";
        v60 = 771;
        v28 = 3;
        v54 = 3;
        LODWORD(__p) = 3552820;
        v62[0] = v58;
        p_p = &__p;
        v64 = 1026;
        v65[0] = v62;
        v66 = ": ";
        v67 = 770;
        v29 = "txm";
        if (v18)
        {
          v29 = "sptm";
          v28 = 4;
        }

        v68[0] = v65;
        v69 = v29;
        v70 = v28;
        v71 = 1282;
        v79 = v68;
        v82 = 770;
        sub_298B996A4(&v79, v74);
        operator new();
      }
    }

    v23 = strlen(CStringPtr);
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    if (v18)
    {
      v25 = 4;
    }

    else
    {
      v25 = 3;
    }

    if (v18)
    {
      v26 = "sptm";
    }

    else
    {
      v26 = "txm";
    }

    v46 = 257;
    v47 = 1;
    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    v42 = v19;
    if (v23 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v49) = v23;
    memmove(v48, CStringPtr, v23);
    *(v48 + v24) = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    sub_298AFF468(&v46, &v76);
    if (!v76)
    {
      v48[1] = 0;
      v49 = 0;
      v48[0] = 0;
      v30 = v52;
      v52 = 0;
      v76 = v30;
      sub_298C39D18();
    }

    LOBYTE(v80) = v80 | 1;
    v79 = v76;
    v27 = v52;
    v52 = 0;
    if (v27)
    {
      (*(*v27 + 16))(v27);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[0]);
      if (v80)
      {
LABEL_37:
        v31 = 0;
        *a5 = v79;
        v17 = theDict;
        if (v57 != 1)
        {
          goto LABEL_3;
        }

LABEL_49:
        if (v56 < 0)
        {
          operator delete(*__s);
        }

        goto LABEL_3;
      }
    }

    else if (v80)
    {
      goto LABEL_37;
    }

    *a5 = 0;
    v32 = v79;
    v76 = v21;
    v77 = 0;
    v78 = 0;
    sub_298C4454C(a5, v79[2], v79[3], CStringPtr, v24, &v76, "image", 5uLL, v26, v25);
    v31 = *a5 == 0;
    if (!*a5)
    {
      v77 = 0;
      v78 = 0;
      v76 = v21;
      v38(v39, v42, CStringPtr, v24, &v76, v9);
    }

    v33 = v32[1];
    v32[1] = 0;
    v17 = theDict;
    if (v33)
    {
      v34 = *(v33 + 40);
      *(v33 + 40) = 0;
      if (v34)
      {
        MEMORY[0x29C2945C0](v34, 0x1000C8077774924);
      }

      MEMORY[0x29C2945F0](v33, 0x1070C4001F9CED1);
    }

    v35 = *v32;
    *v32 = 0;
    if (v35)
    {
      (*(*v35 + 16))(v35);
    }

    MEMORY[0x29C2945F0](v32, 0x1070C401CED0764);
    if (v57 == 1)
    {
      goto LABEL_49;
    }

LABEL_3:
    if (!v31)
    {
      goto LABEL_59;
    }

LABEL_4:
    v16 = 0;
    v15 = &values[1];
    v9 = v45;
    v14 = 1;
  }

  while ((v18 & 1) != 0);
  *a5 = 0;
LABEL_59:
  CFRelease(v17);
  CFRelease(v40);
  CFRelease(v41);
}

void sub_298C4454C(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4, size_t a5, const unsigned __int8 **a6, _BYTE *a7, size_t a8, _BYTE *a9, size_t a10)
{
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = 32;
    if (a3 < 0x20)
    {
      v17 = a3;
    }

    v18 = a3 - v17;
    v19 = (a2 + v17);
    while (*v19 != 27)
    {
      v20 = v19[1];
      if (v18 < v20)
      {
        v20 = v18;
      }

      v18 -= v20;
      v19 = (v19 + v20);
      if (!--v16)
      {
        goto LABEL_12;
      }
    }

    v45 = 0uLL;
    v16 = (v19 + 2);
  }

  else
  {
    v16 = 0;
  }

LABEL_12:
  v54 = v16;
  v55 = v45;
  if (!sub_298BDC880(a6, &v54))
  {
    memset(v53, 0, sizeof(v53));
    DWORD2(v45) = 0;
    v49 = 0;
    v50 = 0;
    v51 = 1;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    *&v45 = &unk_2A1F1E040;
    v52 = v53;
    sub_298ADDDB0(&v45);
    if ((v47 - v48) > 3)
    {
      *v48 = 543516756;
      v21 = v48 + 1;
      v48 = v21;
      if (a10 <= v47 - v21)
      {
LABEL_16:
        if (a10)
        {
          memcpy(v21, a9, a10);
          v21 = (v48 + a10);
          v48 = (v48 + a10);
        }

        if ((v47 - v21) <= 0x1E)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_298B9BCEC(&v45, "The ", 4uLL);
      v21 = v48;
      if (a10 <= v47 - v48)
      {
        goto LABEL_16;
      }
    }

    sub_298B9BCEC(&v45, a9, a10);
    v21 = v48;
    if ((v47 - v48) <= 0x1E)
    {
LABEL_19:
      sub_298B9BCEC(&v45, " we were able to find has UUID ", 0x1FuLL);
      goto LABEL_23;
    }

LABEL_22:
    qmemcpy(v21, " we were able to find has UUID ", 31);
    v48 = (v48 + 31);
LABEL_23:
    sub_298B1FB90(&v54, v42);
    if (SHIBYTE(v43) >= 0)
    {
      v22 = v42;
    }

    else
    {
      v22 = v42[0];
    }

    if (SHIBYTE(v43) >= 0)
    {
      v23 = HIBYTE(v43);
    }

    else
    {
      v23 = v42[1];
    }

    sub_298B9BCEC(&v45, v22, v23);
    if ((v47 - v48) > 1)
    {
      *v48 = 10272;
      v24 = v48 + 2;
      v48 = v24;
      if (a5 <= v47 - v24)
      {
LABEL_31:
        if (a5)
        {
          memcpy(v24, a4, a5);
          v24 = v48 + a5;
          v48 = (v48 + a5);
        }

        if ((v47 - v24) <= 2)
        {
LABEL_34:
          sub_298B9BCEC(&v45, "), ", 3uLL);
          v25 = v48;
          if ((v47 - v48) > 0x1F)
          {
LABEL_35:
            qmemcpy(v25, "but we need the one with UUID = ", 32);
            v48 += 8;
            goto LABEL_40;
          }

LABEL_39:
          sub_298B9BCEC(&v45, "but we need the one with UUID = ", 0x20uLL);
LABEL_40:
          sub_298B1FB90(a6, __p);
          if (SHIBYTE(v40) >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          if (SHIBYTE(v40) >= 0)
          {
            v27 = HIBYTE(v40);
          }

          else
          {
            v27 = __p[1];
          }

          sub_298B9BCEC(&v45, v26, v27);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v43) & 0x80000000) == 0)
            {
LABEL_48:
              v28 = v48;
              if ((v47 - v48) <= 0x1C)
              {
                goto LABEL_49;
              }

              goto LABEL_65;
            }
          }

          else if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          operator delete(v42[0]);
          v28 = v48;
          if ((v47 - v48) <= 0x1C)
          {
LABEL_49:
            sub_298B9BCEC(&v45, ": if you're running a custom ", 0x1DuLL);
            v29 = v48;
            if (a8 <= v47 - v48)
            {
              goto LABEL_50;
            }

            goto LABEL_66;
          }

LABEL_65:
          qmemcpy(v28, ": if you're running a custom ", 29);
          v29 = (v48 + 29);
          v48 = v29;
          if (a8 <= v47 - v29)
          {
LABEL_50:
            if (a8)
            {
              memcpy(v29, a7, a8);
              v29 = (v48 + a8);
              v48 = (v48 + a8);
            }

            if ((v47 - v29) <= 9)
            {
LABEL_53:
              sub_298B9BCEC(&v45, ", include ", 0xAuLL);
              v30 = v48;
              if ((v47 - v48) > 1)
              {
                goto LABEL_54;
              }

              goto LABEL_68;
            }

LABEL_67:
            v29[4] = 8293;
            *v29 = *", include ";
            v30 = v48 + 5;
            v48 = v30;
            if ((v47 - v30) > 1)
            {
LABEL_54:
              *v30 = 11616;
              v31 = (v48 + 2);
              v48 = v31;
              if (a8 <= v47 - v31)
              {
                goto LABEL_55;
              }

              goto LABEL_69;
            }

LABEL_68:
            v31 = v48;
            if (a8 <= v47 - v48)
            {
LABEL_55:
              if (a8)
              {
                memcpy(v31, a7, a8);
                v31 = (v48 + a8);
                v48 = (v48 + a8);
              }

              if ((v47 - v31) <= 0xD)
              {
LABEL_58:
                sub_298B9BCEC(&v45, "=path/to/your/", 0xEuLL);
                v32 = v48;
                if (a8 <= v47 - v48)
                {
                  goto LABEL_59;
                }

                goto LABEL_71;
              }

LABEL_70:
              qmemcpy(v31, "=path/to/your/", 14);
              v32 = v48 + 14;
              v48 = v32;
              if (a8 <= v47 - v32)
              {
LABEL_59:
                if (a8)
                {
                  memcpy(v32, a7, a8);
                  v32 = v48 + a8;
                  v48 = (v48 + a8);
                }

                if ((v47 - v32) <= 0x74)
                {
                  goto LABEL_62;
                }

                goto LABEL_72;
              }

LABEL_71:
              sub_298B9BCEC(&v45, a7, a8);
              v32 = v48;
              if ((v47 - v48) <= 0x74)
              {
LABEL_62:
                goto LABEL_73;
              }

LABEL_72:
              v48 = v32 + 117;
LABEL_73:
              sub_298B9AE14(&v45);
              std::generic_category();
              v35[0] = "Kernel.cpp";
              v35[2] = ":";
              v36 = 771;
              v34 = 3;
              LODWORD(v33) = 3224113;
              v37[0] = v35;
              v37[2] = &v33;
              v38 = 1026;
              __p[0] = v37;
              v40 = ": ";
              v41 = 770;
              v42[0] = __p;
              v43 = v53;
              v44 = 1026;
              sub_298B996A4(v42, &v56);
              operator new();
            }

LABEL_69:
            sub_298B9BCEC(&v45, a7, a8);
            v31 = v48;
            if ((v47 - v48) <= 0xD)
            {
              goto LABEL_58;
            }

            goto LABEL_70;
          }

LABEL_66:
          sub_298B9BCEC(&v45, a7, a8);
          v29 = v48;
          if ((v47 - v48) <= 9)
          {
            goto LABEL_53;
          }

          goto LABEL_67;
        }

LABEL_38:
        v24[2] = 32;
        *v24 = 11305;
        v25 = v48 + 3;
        v48 = v25;
        if ((v47 - v25) > 0x1F)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      }
    }

    else
    {
      sub_298B9BCEC(&v45, " (", 2uLL);
      v24 = v48;
      if (a5 <= v47 - v48)
      {
        goto LABEL_31;
      }
    }

    sub_298B9BCEC(&v45, a4, a5);
    v24 = v48;
    if ((v47 - v48) <= 2)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  *a1 = 0;
}

uint64_t sub_298C44D74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FBF8;
  a2[1] = v2;
  return result;
}

void *sub_298C44DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = **(a1 + 8);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  result = *(a2 + 32);
  if (v5 > *(a2 + 24) - result)
  {
    result = sub_298B9BCEC(a2, v6, v5);
LABEL_3:
    *a3 = 0;
    return result;
  }

  if (!v5)
  {
    goto LABEL_3;
  }

  v9 = *(v4 + 24);
  result = memcpy(result, v6, v5);
  *(a2 + 32) += v9;
  *a3 = 0;
  return result;
}

void sub_298C44E28(uint64_t a1, uint64_t a2)
{
  if (ktrace_file_open())
  {

    sub_298C45008();
  }

  v5 = std::generic_category();
  v25 = "Ktrace.cpp";
  v26 = 259;
  v23 = ":";
  v24 = 259;
  sub_298ADC860(&v25, &v23, v27);
  sub_298AFB090(0x36uLL, 0, __p);
  v22 = 260;
  v21 = __p;
  sub_298ADC860(v27, &v21, v28);
  v18 = ": ";
  v19 = 259;
  sub_298ADC860(v28, &v18, v29);
  v16 = "Couldn't open ktrace file for reading at ";
  v17 = 259;
  sub_298ADC860(v29, &v16, v30);
  v15 = 261;
  v14[0] = a1;
  v14[1] = a2;
  sub_298ADC860(v30, v14, v31);
  v12 = ": ";
  v13 = 259;
  sub_298ADC860(v31, &v12, v32);
  v6 = __error();
  v7 = strerror(*v6);
  v8 = 1;
  v11 = 1;
  if (*v7)
  {
    v9 = v7;
    v8 = 3;
  }

  v10 = v8;
  sub_298ADC860(v32, &v9, v33);
  sub_298ADDCA4(45, v5, v33);
}

uint64_t sub_298C453C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_298C453D8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_298C45408(void *a1, size_t a2)
{
  v53 = *MEMORY[0x29EDCA608];
  if (ktrace_chunk_tag() == 65546)
  {
    v4 = ktrace_chunk_version_major();
    if (v4)
    {
      v20 = *(a1[4] + 8);
      v43 = *(v20 + 40);
      *(v20 + 40) = 0;
      v21 = v4;
      v22 = std::generic_category();
      v39[0] = "Ktrace.cpp";
      v40 = 259;
      v37[0] = ":";
      v38 = 259;
      sub_298ADC860(v39, v37, v41);
      sub_298AFB090(0x52uLL, 0, v34);
      v36 = 260;
      v35[0] = v34;
      sub_298ADC860(v41, v35, v42);
      v32[0] = ": ";
      v33 = 259;
      sub_298ADC860(v42, v32, v49);
      v30[0] = "HWTrace chunk has unknown version ";
      v31 = 259;
      sub_298ADC860(v49, v30, &v50);
      sub_298AFB090(v21, 0, v27);
      v29 = 260;
      __p[0] = v27;
      sub_298ADC860(&v50, __p, &v44);
      sub_298ADDCA4(45, v22, &v44);
    }

    v5 = ktrace_chunk_copy_data();
    if (v5)
    {
      *(*(a1[4] + 8) + 40) = 0;
      v23 = v5;
      v24 = std::generic_category();
      v39[0] = "Ktrace.cpp";
      v40 = 259;
      v37[0] = ":";
      v38 = 259;
      sub_298ADC860(v39, v37, v41);
      sub_298AFB090(0x5EuLL, 0, v34);
      v36 = 260;
      v35[0] = v34;
      sub_298ADC860(v41, v35, v42);
      v32[0] = ": ";
      v33 = 259;
      sub_298ADC860(v42, v32, v49);
      v30[0] = "ktrace_chunk_copy_data failed with: ";
      v31 = 259;
      sub_298ADC860(v49, v30, &v50);
      v25 = strerror(v23);
      v26 = 1;
      HIBYTE(v29) = 1;
      if (*v25)
      {
        __p[0] = v25;
        v26 = 3;
      }

      LOBYTE(v29) = v26;
      sub_298ADC860(&v50, __p, &v44);
      sub_298ADDCA4(45, v24, &v44);
    }

    v6 = a1[6];
    v7 = 0x4000;
    do
    {
      v8 = v7;
      if (!v7)
      {
        break;
      }

      --v7;
    }

    while (!v6[v8 - 1]);
    LOBYTE(v44) = 0;
    LOBYTE(v45) = 0;
    v46 = v6;
    v47 = v6;
    v48 = &v6[v8];
    LOWORD(v49[0]) = 0;
    if (v8)
    {
      v9 = 0;
      while ((v6[v9] & 0x80000000) == 0)
      {
        if (v8 == ++v9)
        {
          goto LABEL_11;
        }
      }

      v50 = v6;
      if (!sub_298B84A30(&v50, &v6[v8]))
      {
        v47 = v50;
        sub_298B8B6E4(&v44, "Invalid UTF-8 sequence");
      }
    }

LABEL_11:
    if (sub_298B881B4(&v44, v49) && sub_298B88D94(&v44))
    {
      v52 = 0;
      sub_298B87D1C(&v50, v49);
    }

    else
    {
      v10 = v44;
      v44 = 0;
      v52 = -1;
      v50 = v10;
    }

    sub_298B88E18(v49);
    if (v45 == 1 && v44)
    {
      (*(v44->i64[0] + 8))(v44);
    }

    if (v52)
    {
      v11 = v50;
      v50 = 0;
      if (v11)
      {
        *(*(a1[4] + 8) + 40) = 0;
        v12 = std::generic_category();
        v39[0] = "Ktrace.cpp";
        v40 = 259;
        v37[0] = ":";
        v38 = 259;
        sub_298ADC860(v39, v37, v41);
        sub_298AFB090(0x6AuLL, 0, __p);
        v36 = 260;
        v35[0] = __p;
        sub_298ADC860(v41, v35, v42);
        v32[0] = ": ";
        v33 = 259;
        sub_298ADC860(v42, v32, v49);
        v30[0] = "HWTrace subchunk contains unparseable json";
        v31 = 259;
        sub_298ADC860(v49, v30, &v44);
        sub_298ADDCA4(45, v12, &v44);
      }

      v13 = 0;
    }

    else if (v50 == 7)
    {
      v13 = &v51;
    }

    else
    {
      v13 = 0;
    }

    sub_298B87AE0(v13, "Key", 3, &v44);
    if (v46 == 1)
    {
      v14 = *(*(a1[5] + 8) + 24);
      v15 = v44;
      v16 = v45;
      v17 = sub_298BA724C(v44, v45);
      (*sub_298C47978((v14 + 48), v15, v16, v17))[1] = a2;
    }

    if (v52)
    {
      v18 = v50;
      v50 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    else
    {
      sub_298B8802C(&v50);
    }
  }

  return 1;
}

void sub_298C45B54(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

uint64_t sub_298C45BA4(uint64_t a1)
{
  v2 = sub_298C45C88(a1 + 72);
  v4 = *(a1 + 72) + 24 * *(a1 + 88);
  if (v4 != v2)
  {
    v5 = v2;
    v6 = v3;
    do
    {
      ktrace_chunk_unmap_data();
      do
      {
        v5 += 3;
      }

      while (v5 != v6 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v5 != v4);
  }

  if (*(a1 + 40))
  {
    ktrace_file_close();
  }

  MEMORY[0x29C2945E0](*(a1 + 72), 8);
  sub_298C478FC(a1 + 48);
  *a1 = &unk_2A1F1F810;
  v8 = (a1 + 8);
  sub_298C471A8(&v8);
  return a1;
}

void *sub_298C45C88(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[3 * v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 24 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      result += 3;
      v6 -= 24;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

void sub_298C45CD8(uint64_t a1)
{
  sub_298C45BA4(a1);

  JUMPOUT(0x29C2945F0);
}

BOOL sub_298C45D10(uint64_t a1, int8x16_t *a2, const char **a3)
{
  if (*(a1 + 48) + 8 * *(a1 + 56) != sub_298C45DAC(a1 + 48, a2, a3))
  {
    return 1;
  }

  v10 = 261;
  v9[0] = a2;
  v9[1] = a3;
  v5 = sub_298BA9D1C(v9, 0);
  result = 0;
  if (v5)
  {
    v8 = 261;
    v7[0] = a2;
    v7[1] = a3;
    return sub_298BAB3F0(v7, 0) == 0;
  }

  return result;
}

uint64_t sub_298C45DAC(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = sub_298BA724C(a2, a3);
  v7 = sub_298B965F8(a1, a2, a3, v6);
  if (v7 == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = v7;
  }

  return *a1 + 8 * v8;
}

void sub_298C45E18(uint64_t a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_298BA724C(a2, a3);
  v11 = *(a1 + 56);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11 - 1;
  v13 = (v11 - 1) & v10;
  v14 = *(a1 + 48);
  v15 = v14 + 8 * v11 + 8;
  if (a3)
  {
    for (i = 1; ; ++i)
    {
      v17 = *(v14 + 8 * v13);
      if (!v17)
      {
        break;
      }

      if (v17 != -8 && *(v15 + 4 * v13) == v10 && a3 == *v17)
      {
        v44 = v10;
        v45 = v13;
        v42 = v15;
        v43 = i;
        v22 = memcmp(a2, v17 + *(a1 + 68), a3);
        i = v43;
        v15 = v42;
        v23 = v22;
        v10 = v44;
        v13 = v45;
        if (!v23)
        {
          goto LABEL_20;
        }
      }

      v13 = (v13 + i) & v12;
    }

    goto LABEL_5;
  }

  for (j = 1; ; ++j)
  {
    v21 = *(v14 + 8 * v13);
    if (!v21)
    {
      goto LABEL_5;
    }

    if (v21 != -8 && *(v15 + 4 * v13) == v10 && !*v21)
    {
      break;
    }

    v13 = (v13 + j) & v12;
  }

  v45 = v13;
LABEL_20:
  if (v45 != -1 && v45 != v11)
  {
    v24 = *(*(v14 + 8 * v45) + 8);
    v46 = v24;
    v25 = ktrace_chunk_size();
    if (!a4)
    {
      sub_298C4667C(&v68, &v46);
    }

    v26 = v25;
    v29 = *(a1 + 72);
    v28 = a1 + 72;
    v27 = v29;
    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = v30 - 1;
      v32 = v31 & ((v24 >> 4) ^ (v24 >> 9));
      v33 = (v27 + 24 * v32);
      v34 = *v33;
      if (v24 == *v33)
      {
        goto LABEL_25;
      }

      v37 = 0;
      v38 = 1;
      while (v34 != -4096)
      {
        if (v37)
        {
          v40 = 0;
        }

        else
        {
          v40 = v34 == -8192;
        }

        if (v40)
        {
          v37 = v33;
        }

        v41 = v32 + v38++;
        v32 = v41 & v31;
        v33 = (v27 + 24 * v32);
        v34 = *v33;
        if (v24 == *v33)
        {
          goto LABEL_25;
        }
      }

      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = v33;
      }
    }

    else
    {
      v39 = 0;
    }

    v33 = sub_298C47AF4(v28, &v46, v39);
    v33[1] = 0;
    v33[2] = 0;
    *v33 = v24;
LABEL_25:
    if (v33[2] != v26)
    {
      v35 = ktrace_chunk_map_data();
      if (!v35)
      {
        v36 = std::generic_category();
        v61[0] = "Ktrace.cpp";
        v62 = 259;
        v59[0] = ":";
        v60 = 259;
        sub_298ADC860(v61, v59, v63);
        sub_298AFB090(0x9DuLL, 0, __p);
        v58 = 260;
        v57[0] = __p;
        sub_298ADC860(v63, v57, v64);
        v54[0] = ": ";
        v55 = 259;
        sub_298ADC860(v64, v54, v65);
        v52[0] = "Key ";
        v53 = 259;
        sub_298ADC860(v65, v52, v66);
        v51 = 261;
        v49 = a2;
        v50 = a3;
        sub_298ADC860(v66, &v49, v67);
        v47[0] = "Failed to map ktrace chunk!";
        v48 = 259;
        sub_298ADC860(v67, v47, &v68);
        sub_298ADDCA4(45, v36, &v68);
      }

      v33[1] = v35;
      v33[2] = v26;
    }

    operator new();
  }

LABEL_5:
  LOWORD(v71) = 261;
  v68 = a2;
  *&v69 = a3;
  if (!sub_298BA9D1C(&v68, 0))
  {
    v19 = std::generic_category();
    v61[0] = "Ktrace.cpp";
    v62 = 259;
    v59[0] = ":";
    v60 = 259;
    sub_298ADC860(v61, v59, v63);
    sub_298AFB090(0x91uLL, 0, __p);
    v58 = 260;
    v57[0] = __p;
    sub_298ADC860(v63, v57, v64);
    v54[0] = ": ";
    v55 = 259;
    sub_298ADC860(v64, v54, v65);
    v52[0] = "Key ";
    v53 = 259;
    sub_298ADC860(v65, v52, v66);
    v51 = 261;
    v49 = a2;
    v50 = a3;
    sub_298ADC860(v66, &v49, v67);
    v47[0] = " is not present in the manifest: local filesystem fallback disabled due to relpath";
    v48 = 259;
    sub_298ADC860(v67, v47, &v68);
    sub_298ADDCA4(45, v19, &v68);
  }

  sub_298C46484(&v68, a2, a3, a4);
  *(a5 + 56) &= ~1u;
  *a5 = v68;
  *(a5 + 2) = BYTE2(v68);
  v18 = v72;
  *(a5 + 24) = v70;
  *(a5 + 8) = v69;
  v69 = 0uLL;
  *(a5 + 32) = v71;
  v70 = 0;
  v72 = 0;
  *(a5 + 48) = v18;
  sub_298BDC2AC(&v68);
}

char *sub_298C46484(char *result, const void *a2, size_t __len, char a4)
{
  v4 = result;
  *result = a4;
  *(result + 1) = 257;
  v5 = result + 8;
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    result[31] = __len;
    if (__len)
    {
      result = memmove(v5, a2, __len);
    }

    v5[__len] = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = 0;
  }

  else
  {
    *v5 = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 4) = 0;
    *(result + 5) = 0;
    *(result + 6) = 0;
  }

  return result;
}

double sub_298C46564(uint64_t a1, const void *a2, size_t __len, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v9) = __len;
    if (__len)
    {
      memmove(&v8, a2, __len);
    }

    *(&v8 + __len) = 0;
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  *(a1 + 56) &= ~1u;
  *a1 = 256;
  *(a1 + 2) = 1;
  result = *&v8;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  return result;
}

void sub_298C466C8(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v67[20] = *MEMORY[0x29EDCA608];
  appended = ktrace_file_append_start();
  if (appended)
  {
    v10 = *(a1 + 32);
    DWORD2(v51) = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0uLL;
    v50 = 0;
    *&v51 = &unk_2A1F1FCC8;
    v57 = v10;
    v58 = appended;
    v59 = 0;
    v60 = 0;
    v48 = 0;
    v49 = 0;
    DWORD2(v41) = 0;
    v44 = 0;
    v45 = 0;
    v46 = 1;
    v43 = 0;
    v42 = 0uLL;
    *&v41 = &unk_2A1F1E040;
    v47 = &v48;
    sub_298ADDDB0(&v41);
    v67[17] = 0;
    v67[18] = &v41;
    v67[19] = 0;
    v67[16] = 0;
    v67[0] = 0;
    v65 = v67;
    v66 = 0x1000000001;
    sub_298B89BA0(&v65);
    sub_298BBB6E0(v62, a2, a3);
    sub_298B89CC0(&v65, "Key", 3uLL);
    sub_298B891F0(&v65, v62);
    LODWORD(v66) = v66 - 1;
    sub_298B8802C(v62);
    sub_298B89C2C(&v65);
    v11 = a3;
    v12 = a2;
    if (v65 != v67)
    {
      free(v65);
    }

    sub_298B9AE14(&v41);
    if (v50 >= 0)
    {
      v13 = &v48;
    }

    else
    {
      v13 = v48;
    }

    if (v50 >= 0)
    {
      v14 = HIBYTE(v50);
    }

    else
    {
      v14 = v49;
    }

    sub_298B9BCEC(&v51, v13, v14);
    v15 = v59;
    if (v59 > 0x4000)
    {
      v16 = 0;
      v25[0] = "Ktrace.cpp";
      v25[2] = ":";
      v26 = 771;
      v24 = 3;
      LODWORD(v23) = 3289906;
      v27[0] = v25;
      v27[2] = &v23;
      v28 = 1026;
      __p[0] = v27;
      v30 = ": ";
      v31 = 770;
      v32[0] = __p;
      v32[2] = "ktrace chunk header for ";
      v33 = 770;
      v34[0] = v32;
      v35 = v12;
      v36 = v11;
      v37 = 1282;
      v38[0] = v34;
      v39 = " is too big @ ";
      v40 = 770;
      v17 = v67 + 5;
      do
      {
        *--v17 = (v15 % 0xA) | 0x30;
        ++v16;
        v18 = v15 > 9;
        v15 /= 0xAuLL;
      }

      while (v18);
      std::generic_category();
      if (v16 < 0x7FFFFFFFFFFFFFF8)
      {
        if (v16 <= 0x16)
        {
          v22 = v16;
          if (v16)
          {
            memcpy(&__dst, v17, v16);
          }

          *(&__dst + v16) = 0;
          v62[0] = v38;
          p_dst = &__dst;
          v64 = 1026;
          *&v41 = v62;
          *&v42 = " bytes";
          LOWORD(v43) = 770;
          sub_298B996A4(&v41, &v61);
          operator new();
        }

        operator new();
      }

      sub_298ADDDA0();
    }

    if (v59 != 0x4000)
    {
      operator new[]();
    }

    getpagesize();
    if (v53 != v52)
    {
      v53 = v52;
      sub_298B9BB84(&v51);
    }

    operator new[]();
  }

  std::generic_category();
  v34[0] = "Ktrace.cpp";
  v35 = ":";
  v37 = 771;
  HIBYTE(v30) = 3;
  LODWORD(__p[0]) = 3618098;
  v38[0] = v34;
  v39 = __p;
  v40 = 1026;
  v62[0] = v38;
  p_dst = ": ";
  v64 = 770;
  *&v41 = v62;
  *&v42 = "could not append chunk to ktrace file: ";
  LOWORD(v43) = 770;
  v19 = __error();
  v20 = strerror(*v19);
  if (*v20)
  {
    *&v51 = &v41;
    *&v52 = v20;
    LOWORD(v53) = 770;
  }

  else
  {
    v51 = v41;
    v52 = v42;
    v53 = v43;
  }

  sub_298B996A4(&v51, v32);
  operator new();
}

void sub_298C471A8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298C471FC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_298C471FC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 16))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_298C47270(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(*(a1 + 88));
    a1 = v3;
    v1 = vars8;
  }

  return sub_298B9AE14(a1);
}

void sub_298C472D4(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_298B9AE14(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298C47348(void *a1, uint64_t a2, unint64_t a3)
{
  *&v68[19] = *MEMORY[0x29EDCA608];
  if (!a1[11])
  {
    while (1)
    {
      if (!a3)
      {
        return;
      }

      v5 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
      if (ktrace_file_append_data())
      {
        break;
      }

      a3 -= v5;
      a1[10] += v5;
    }

    std::generic_category();
    v6 = 0;
    v39[0] = "Ktrace.cpp";
    v39[2] = ":";
    v40 = 771;
    v38 = 3;
    LODWORD(__p) = 3485746;
    v41[0] = v39;
    v41[2] = &__p;
    v42 = 1026;
    v43[0] = v41;
    v43[2] = ": ";
    v44 = 770;
    v45[0] = v43;
    v45[2] = "appending ";
    v7 = v68;
    v46 = 770;
    do
    {
      *--v7 = (v5 % 0xA) | 0x30;
      ++v6;
      v8 = v5 > 9;
      v5 /= 0xAuLL;
    }

    while (v8);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_62;
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v36 = v6;
    if (v6)
    {
      memcpy(&__dst, v7, v6);
    }

    *(&__dst + v6) = 0;
    v9 = v46;
    if (v46 == 1)
    {
      p_dst = &__dst;
      v47 = &__dst;
      v50 = 260;
      v13 = 4;
      v14 = v48;
    }

    else
    {
      if (!v46)
      {
        v50 = 256;
        v54 = 0;
        v55 = 1;
        v10 = a1[10];
        if (!v10)
        {
LABEL_21:
          v67 = 48;
          v11 = 20;
          goto LABEL_30;
        }

LABEL_27:
        v16 = 20;
        do
        {
          *(&v66[3] + v16--) = (v10 % 0xA) | 0x30;
          v8 = v10 > 9;
          v10 /= 0xAuLL;
        }

        while (v8);
        v11 = v16 + 1;
LABEL_30:
        v17 = 21 - v11;
        if ((21 - v11) <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v17 > 0x16)
          {
            operator new();
          }

          v34 = 21 - v11;
          if (v11 != 21)
          {
            memcpy(&v33, &v66[3] + v11, 21 - v11);
          }

          *(&v33 + v17) = 0;
          v18 = v54;
          if (v54 == 1)
          {
            v22 = &v33;
            v56 = &v33;
            v59 = 260;
            v20 = 4;
            v23 = v57;
            v19 = v32;
          }

          else
          {
            v19 = v32;
            if (!v54)
            {
              v20 = 0;
              v59 = 256;
              v21 = 1;
              goto LABEL_44;
            }

            v22 = &v56;
            v24 = v51;
            v20 = 2;
            if (v55 != 1)
            {
              v18 = 2;
              v24 = &v51;
            }

            v56 = v24;
            v57 = v52;
            v58 = &v33;
            LOBYTE(v59) = v18;
            v23 = 4;
            HIBYTE(v59) = 4;
          }

          *&v60 = v22;
          *(&v60 + 1) = v23;
          v21 = 3;
          *&v61 = " to ktrace chunk failed: ";
LABEL_44:
          LOBYTE(v62) = v20;
          BYTE1(v62) = v21;
          v25 = __error();
          v26 = strerror(*v25);
          v27 = *v26;
          if (*v26)
          {
            v19 = v26;
          }

          v28 = v62;
          if (v62 == 1)
          {
            *&v63 = v19;
            if (v27)
            {
              v29 = 3;
            }

            else
            {
              v29 = 1;
            }

            LOBYTE(v65) = v29;
            v30 = 1;
          }

          else
          {
            if (!v62)
            {
              LOWORD(v65) = 256;
              goto LABEL_60;
            }

            if (!*v26)
            {
              v63 = v60;
              v64 = v61;
              v65 = v62;
LABEL_60:
              sub_298B996A4(&v63, v66);
              operator new();
            }

            if (BYTE1(v62) != 1)
            {
              v28 = 2;
            }

            v31 = &v60;
            if (BYTE1(v62) == 1)
            {
              v31 = v60;
            }

            *&v63 = v31;
            *(&v63 + 1) = *(&v60 + 1);
            *&v64 = v26;
            LOBYTE(v65) = v28;
            v30 = 3;
          }

          BYTE1(v65) = v30;
          goto LABEL_60;
        }

LABEL_62:
        sub_298ADDDA0();
      }

      p_dst = &v47;
      v15 = v45[0];
      v13 = 2;
      if (HIBYTE(v46) != 1)
      {
        v9 = 2;
        v15 = v45;
      }

      v47 = v15;
      v48 = v45[1];
      v49 = &__dst;
      LOBYTE(v50) = v9;
      v14 = 4;
      HIBYTE(v50) = 4;
    }

    v51 = p_dst;
    v52 = v14;
    v53 = " bytes at Pos=";
    v54 = v13;
    v55 = 3;
    v10 = a1[10];
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

uint64_t sub_298C478FC(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        v6 = *(*a1 + v4);
        if (v6 != -8 && v6 != 0)
        {
          MEMORY[0x29C2945E0]();
        }

        v4 += 8;
      }

      while (v5 != v4);
    }
  }

  free(*a1);
  return a1;
}

size_t **sub_298C47978(_DWORD *a1, void *a2, size_t a3, uint64_t a4)
{
  v7 = sub_298B96440(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --a1[4];
  }

  else if (v9)
  {
    while (v9 == -8 || !v9)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = (v12 + 2);
  if (a3)
  {
    memcpy(v12 + 2, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  v13[1] = 0;
  *i = v13;
  ++a1[3];
    ;
  }

  return i;
}

uint64_t sub_298C47A68(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 24 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *sub_298C47AF4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298C47BB4(a1, v5);
  sub_298C47A68(*v8, *(v8 + 4), *v7, &v9);
  a1 = v8;
  v4 = *(v8 + 2);
  a3 = v9;
LABEL_3:
  *(a1 + 2) = v4 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

void *sub_298C47BB4(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298C47CE4(a1, v4, &v4[3 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = 24 * v10 - 24;
    v13 = vdupq_n_s64(v12 / 0x18);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_298D1A120)));
      if (v14.i8[0])
      {
        *result = -4096;
      }

      if (v14.i8[4])
      {
        result[3] = -4096;
      }

      v11 += 2;
      result += 6;
    }

    while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

uint64_t sub_298C47CE4(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v7 = *result;
LABEL_6:
      v10 = &v4[3 * v3];
      do
      {
        *v7 = -4096;
        v7 += 3;
      }

      while (v7 != v10);
      goto LABEL_8;
    }

    v6 = v5 / 0x18 + 1;
    v7 = &v4[3 * (v6 & 0x1FFFFFFFFFFFFFFELL)];
    v8 = *result;
    v9 = v6 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = -4096;
      v8[3] = -4096;
      v8 += 6;
      v9 -= 2;
    }

    while (v9);
    if (v6 != (v6 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  while (a2 != a3)
  {
    v11 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v12 = *(result + 16) - 1;
      v13 = v12 & ((v11 >> 4) ^ (v11 >> 9));
      v14 = *result + 24 * v13;
      v15 = *v14;
      if (v11 != *v14)
      {
        v16 = 0;
        v17 = 1;
        while (v15 != -4096)
        {
          if (v16)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 == -8192;
          }

          if (v18)
          {
            v16 = v14;
          }

          v19 = v13 + v17++;
          v13 = v19 & v12;
          v14 = *result + 24 * (v19 & v12);
          v15 = *v14;
          if (v11 == *v14)
          {
            goto LABEL_11;
          }
        }

        if (v16)
        {
          v14 = v16;
        }
      }

LABEL_11:
      *v14 = v11;
      *(v14 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}

void sub_298C47E34()
{
  v19[8] = *MEMORY[0x29EDCA608];
  stackshot_config_create();
  stackshot_config_set_flags();
  v2 = stackshot_capture_with_config();
  if (v2)
  {
    v3 = v2;
    std::generic_category();
    v7[0] = "Stackshot.cpp";
    v8 = ":";
    v9 = 771;
    v6 = 2;
    strcpy(__p, "46");
    v10[0] = v7;
    v11 = __p;
    v12 = 1026;
    *&v13 = v10;
    *&v14 = ": ";
    LOWORD(v15) = 770;
    v4 = strerror(v3);
    if (*v4)
    {
      *&v16 = &v13;
      *&v17 = v4;
      LOWORD(v18) = 770;
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = v15;
    }
  }

  else
  {
    if (stackshot_config_get_stackshot_buffer())
    {
      stackshot_config_get_stackshot_size();
      operator new();
    }

    std::generic_category();
    v7[0] = "Stackshot.cpp";
    v8 = ":";
    v9 = 771;
    v6 = 2;
    strcpy(__p, "51");
    v10[0] = v7;
    v11 = __p;
    v12 = 1026;
    *&v13 = v10;
    *&v14 = ": ";
    LOWORD(v15) = 770;
    *&v16 = &v13;
    *&v17 = "stackshot_config_get_stackshot_buffer failed";
    LOWORD(v18) = 770;
  }

  sub_298B996A4(&v16, v19);
  operator new();
}

void sub_298C48218(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = 0;
  sub_298C39D18();
}

void sub_298C4835C(unint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, void *)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v203 = *MEMORY[0x29EDCA608];
  memset(v197, 0, 44);
  LOBYTE(__p) = 0;
  v196 = 0;
  LOBYTE(v190) = 0;
  v193 = 0;
  v188 = 0;
  v187 = 0;
  v189 = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 + 16;
  if (v9 > v8)
  {
    goto LABEL_214;
  }

  v149 = 0;
  do
  {
    v13 = *(v7 + 4);
    if (v9 + v13 > v8)
    {
      break;
    }

    v14 = *v7;
    if (*v7 == -242132755)
    {
      break;
    }

    v15 = v14 & 0xFFFFFFF0;
    if ((v14 & 0xFFFFFFF0) == 0x20)
    {
      v16 = 17;
    }

    else
    {
      v16 = *v7;
    }

    if (v16 > 2309)
    {
      if (v16 == 2312)
      {
        if (v13 == 32 && (*(v7 + 8) & 0x8F) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v16 == 2310 && v13 == 112 && (*(v7 + 8) & 0x8F) == 0)
      {
LABEL_3:
        a2(a3, v149, *(v7 + 16));
        goto LABEL_4;
      }
    }

    else if (v16 == 17 || v16 == 19)
    {
      goto LABEL_16;
    }

    v19 = *(v7 + 8) & 0xF;
    v20 = v13 >= v19;
    v21 = v13 - v19;
    if (!v20)
    {
      v21 = 0;
    }

    if (v16 > 2309)
    {
      if (v16 > 2384)
      {
        if (v16 == 2385)
        {
          if ((v196 & 1) == 0)
          {
            std::generic_category();
            v176 = "Stackshot.cpp";
            v178 = ":";
            v179 = 771;
            HIBYTE(v169) = 3;
            LODWORD(v167) = 3616819;
            v180[0] = &v176;
            v181 = &v167;
            v182 = 1026;
            v199[0] = v180;
            v200 = ": ";
            v201 = 770;
            v107 = "unattached STACKSHOT_KCTYPE_EXCLAVE_ADDRESSSPACE_NAME";
            goto LABEL_317;
          }

          v20 = v13 >= (*(v7 + 8) & 0xFu);
          v44 = v13 - (*(v7 + 8) & 0xF);
          if (v20)
          {
            v45 = v44;
          }

          else
          {
            v45 = 0;
          }

          if (strnlen((v7 + 16), v45) >= v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v7 + 16;
          }

          MEMORY[0x29C294300](&__p, v46);
        }

        else if (v16 == 2387)
        {
          if ((v193 & 1) == 0)
          {
            std::generic_category();
            v176 = "Stackshot.cpp";
            v178 = ":";
            v179 = 771;
            HIBYTE(v169) = 3;
            LODWORD(v167) = 3617075;
            v180[0] = &v176;
            v181 = &v167;
            v182 = 1026;
            v199[0] = v180;
            v200 = ": ";
            v201 = 770;
            v107 = "unattached STACKSHOT_KCTYPE_EXCLAVE_TEXTLAYOUT_INFO";
            goto LABEL_317;
          }

          v190 = *(v7 + 16);
        }

        goto LABEL_4;
      }

      if (v16 == 2310)
      {
        goto LABEL_3;
      }

      if (v16 != 2384)
      {
        goto LABEL_4;
      }

      if ((v196 & 1) == 0)
      {
        std::generic_category();
        v176 = "Stackshot.cpp";
        v178 = ":";
        v179 = 771;
        HIBYTE(v169) = 3;
        LODWORD(v167) = 3356466;
        v180[0] = &v176;
        v181 = &v167;
        v182 = 1026;
        v199[0] = v180;
        v200 = ": ";
        v201 = 770;
        v107 = "unattached STACKSHOT_KCTYPE_EXCLAVE_ADDRESSSPACE_INFO";
        goto LABEL_317;
      }

      if (v21 <= 0x27)
      {
        std::generic_category();
        v176 = "Stackshot.cpp";
        v178 = ":";
        v179 = 771;
        HIBYTE(v169) = 3;
        LODWORD(v167) = 3684146;
        v180[0] = &v176;
        v181 = &v167;
        v182 = 1026;
        v199[0] = v180;
        v200 = ": ";
        v201 = 770;
        v107 = "stackshot uses old STACKSHOT_KCTYPE_EXCLAVE_ADDRESSSPACE_INFO format";
        goto LABEL_317;
      }

      v22 = *(v7 + 48);
      *(&v195[0] + 1) = *(v7 + 16);
      *&v195[1] = v22;
      DWORD2(v195[1]) = v22;
      v195[2] = *(v7 + 32);
      if (v189)
      {
        v23 = (v189 - 1) & (37 * v22);
        v24 = (v187 + 16 * v23);
        v25 = *v24;
        if (*v24 == v22)
        {
LABEL_110:
          if (*(v24 + 1))
          {
            std::generic_category();
            v159[0] = "Stackshot.cpp";
            v159[2] = ":";
            v160 = 771;
            v158 = 3;
            LODWORD(v157) = 3619122;
            v161[0] = v159;
            v161[2] = &v157;
            v162 = 1026;
            v163[0] = v161;
            v163[2] = ": ";
            v164 = 770;
            v165[0] = v163;
            v165[2] = "Metadata error: low 32-bits of ASRoot for asid=";
            v166 = 770;
            v108 = *(v7 + 16);
            if (v108)
            {
              v109 = 20;
              do
              {
                v202.__r_.__value_.__s.__data_[v109--] = (v108 % 0xA) | 0x30;
                v110 = v108 > 9;
                v108 /= 0xAuLL;
              }

              while (v110);
              v111 = v109 + 1;
            }

            else
            {
              v202.__r_.__value_.__s.__data_[20] = 48;
              v111 = 20;
            }

            v112 = 21 - v111;
            if ((21 - v111) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_320;
            }

            if (v112 > 0x16)
            {
              operator new();
            }

            v156 = 21 - v111;
            if (v111 != 21)
            {
              memcpy(&__dst, &v202 + v111, 21 - v111);
            }

            *(&__dst + v112) = 0;
            v113 = v166;
            if (v166 == 1)
            {
              p_dst = &__dst;
              v167 = &__dst;
              v170 = 260;
              v114 = 4;
              v117 = v168;
            }

            else
            {
              if (!v166)
              {
                v114 = 0;
                v170 = 256;
                v115 = 1;
                goto LABEL_261;
              }

              v118 = v165[0];
              v114 = 2;
              if (HIBYTE(v166) != 1)
              {
                v113 = 2;
                v118 = v165;
              }

              v167 = v118;
              v168 = v165[1];
              v117 = &__dst;
              v169 = &__dst;
              LOBYTE(v170) = v113;
              HIBYTE(v170) = 4;
              p_dst = &v167;
            }

            v171 = p_dst;
            v172 = v117;
            v173 = " (";
            v115 = 3;
LABEL_261:
            v174 = v114;
            v175 = v115;
            v119 = *(v7 + 48);
            *(&v202.__r_.__value_.__s + 23) = 2;
            strcpy(&v202, "0x");
            if (v119)
            {
              v120 = 16;
              do
              {
                *(v199 + v120--) = a0123456789abcd_1[v119 & 0xF] | 0x20;
                v20 = v119 >= 0x10;
                v119 >>= 4;
              }

              while (v20);
              v121 = v120 + 1;
            }

            else
            {
              LOBYTE(v200) = 48;
              v121 = 16;
            }

            v122 = 17 - v121;
            if ((17 - v121) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_320;
            }

            if (v122 > 0x16)
            {
              operator new();
            }

            HIBYTE(v185) = 17 - v121;
            if (v121 != 17)
            {
              memcpy(&v183, v199 + v121, 17 - v121);
            }

            *(&v183 + v122) = 0;
            if (SHIBYTE(v185) >= 0)
            {
              v123 = &v183;
            }

            else
            {
              v123 = v183;
            }

            if (SHIBYTE(v185) >= 0)
            {
              v124 = HIBYTE(v185);
            }

            else
            {
              v124 = v184;
            }

            v125 = std::string::append(&v202, v123, v124);
            v126 = v125->__r_.__value_.__r.__words[2];
            *v153 = *&v125->__r_.__value_.__l.__data_;
            v154 = v126;
            v125->__r_.__value_.__l.__size_ = 0;
            v125->__r_.__value_.__r.__words[2] = 0;
            v125->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v185) < 0)
            {
              operator delete(v183);
              if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_288;
              }

LABEL_280:
              LODWORD(v127) = v174;
              if (v174 != 1)
              {
                goto LABEL_281;
              }

LABEL_289:
              v127 = v153;
              v176 = v153;
              v179 = 260;
              v130 = 4;
              v131 = v177;
            }

            else
            {
              if ((SHIBYTE(v202.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_280;
              }

LABEL_288:
              operator delete(v202.__r_.__value_.__l.__data_);
              LODWORD(v127) = v174;
              if (v174 == 1)
              {
                goto LABEL_289;
              }

LABEL_281:
              if (!v127)
              {
                v179 = 256;
                v182 = 256;
                v128 = 1;
LABEL_291:
                LOBYTE(v201) = v127;
                HIBYTE(v201) = v128;
                v133 = *(v24 + 1);
                if (v133)
                {
                  v134 = 20;
                  do
                  {
                    v202.__r_.__value_.__s.__data_[v134--] = (v133 % 0xA) | 0x30;
                    v110 = v133 > 9;
                    v133 /= 0xAuLL;
                  }

                  while (v110);
                  v135 = v134 + 1;
                }

                else
                {
                  v202.__r_.__value_.__s.__data_[20] = 48;
                  v135 = 20;
                }

                v136 = 21 - v135;
                if ((21 - v135) <= 0x7FFFFFFFFFFFFFF7)
                {
                  if (v136 <= 0x16)
                  {
                    v152 = 21 - v135;
                    if (v135 != 21)
                    {
                      memcpy(&v151, &v202 + v135, 21 - v135);
                    }

                    *(&v151 + v136) = 0;
                    v137 = v201;
                    if (v201)
                    {
                      if (v201 == 1)
                      {
                        v183 = &v151;
                        v138 = 1;
                        v137 = 4;
                      }

                      else
                      {
                        if (HIBYTE(v201) != 1)
                        {
                          v137 = 2;
                        }

                        v139 = v199;
                        if (HIBYTE(v201) == 1)
                        {
                          v139 = v199[0];
                        }

                        v183 = v139;
                        v184 = v199[1];
                        v185 = &v151;
                        v138 = 4;
                      }
                    }

                    else
                    {
                      v138 = 1;
                    }

                    LOBYTE(v186) = v137;
                    HIBYTE(v186) = v138;
                    sub_298B996A4(&v183, &v198);
                    operator new();
                  }

                  operator new();
                }

LABEL_320:
                sub_298ADDDA0();
              }

              v129 = v171;
              v130 = 2;
              if (v175 != 1)
              {
                LOBYTE(v127) = 2;
                v129 = &v171;
              }

              v176 = v129;
              v177 = v172;
              v131 = v153;
              v178 = v153;
              LOBYTE(v179) = v127;
              HIBYTE(v179) = 4;
              v127 = &v176;
            }

            v180[0] = v127;
            v180[1] = v131;
            v181 = ") ";
            LOBYTE(v182) = v130;
            v128 = 3;
            HIBYTE(v182) = 3;
            LOBYTE(v127) = 2;
            v199[0] = v180;
            v200 = "collides with the truncated ASRoot for asid=";
            goto LABEL_291;
          }

          *(v24 + 1) = *(v7 + 16);
          goto LABEL_4;
        }

        v26 = 0;
        v27 = 1;
        while (v25 != -1)
        {
          if (v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = v25 == -2;
          }

          if (v28)
          {
            v26 = v24;
          }

          v29 = v23 + v27++;
          v23 = v29 & (v189 - 1);
          v24 = (v187 + 16 * v23);
          v25 = *v24;
          if (*v24 == v22)
          {
            goto LABEL_110;
          }
        }

        if (v26)
        {
          v24 = v26;
        }

        if (4 * v188 + 4 >= 3 * v189)
        {
          goto LABEL_179;
        }

        if (v189 + ~v188 - HIDWORD(v188) > v189 >> 3)
        {
LABEL_107:
          LODWORD(v188) = v188 + 1;
          if (*v24 != -1)
          {
            --HIDWORD(v188);
          }

          *v24 = DWORD2(v195[1]);
          *(v24 + 1) = 0;
          goto LABEL_110;
        }

        v146 = a4;
        v148 = a5;
        v86 = a6;
        sub_298C49F0C(&v187, v189);
        if (v189)
        {
          v93 = (37 * DWORD2(v195[1])) & (v189 - 1);
          v24 = (v187 + 16 * v93);
          v94 = *v24;
          if (DWORD2(v195[1]) != *v24)
          {
            v89 = 0;
            v95 = 1;
            while (v94 != -1)
            {
              if (v89)
              {
                v96 = 0;
              }

              else
              {
                v96 = v94 == -2;
              }

              if (v96)
              {
                v89 = v24;
              }

              v97 = v93 + v95++;
              v93 = v97 & (v189 - 1);
              v24 = (v187 + 16 * v93);
              v94 = *v24;
              a6 = v86;
              a4 = v146;
              a5 = v148;
              if (DWORD2(v195[1]) == *v24)
              {
                goto LABEL_107;
              }
            }

LABEL_209:
            if (v89)
            {
              v24 = v89;
            }
          }

          goto LABEL_208;
        }
      }

      else
      {
LABEL_179:
        v146 = a4;
        v148 = a5;
        v86 = a6;
        sub_298C49F0C(&v187, 2 * v189);
        if (v189)
        {
          v87 = (37 * DWORD2(v195[1])) & (v189 - 1);
          v24 = (v187 + 16 * v87);
          v88 = *v24;
          if (DWORD2(v195[1]) != *v24)
          {
            v89 = 0;
            v90 = 1;
            while (v88 != -1)
            {
              if (v89)
              {
                v91 = 0;
              }

              else
              {
                v91 = v88 == -2;
              }

              if (v91)
              {
                v89 = v24;
              }

              v92 = v87 + v90++;
              v87 = v92 & (v189 - 1);
              v24 = (v187 + 16 * v87);
              v88 = *v24;
              a6 = v86;
              a4 = v146;
              a5 = v148;
              if (DWORD2(v195[1]) == *v24)
              {
                goto LABEL_107;
              }
            }

            goto LABEL_209;
          }

LABEL_208:
          a6 = v86;
          a4 = v146;
          a5 = v148;
          goto LABEL_107;
        }
      }

      v24 = 0;
      goto LABEL_208;
    }

LABEL_16:
    if (v16 <= 19)
    {
      if (v16 == 17)
      {
        v30 = *(v7 + 8);
        if (v14 != 17 && (v30 & 0xFFFFFFFF00000000) == 0x95400000000)
        {
          if (v30)
          {
            v31 = *v7 & 0xF;
            v32 = v13 - v31;
            if ((v13 - v31) / v30 == 24)
            {
              if (v15 != 32 || v13 < v31 || v32 < v30 || v32 != 24 * v30)
              {
                std::generic_category();
                v176 = "Stackshot.cpp";
                v178 = ":";
                v179 = 771;
                HIBYTE(v169) = 3;
                v132 = 3355443;
                goto LABEL_313;
              }

              if ((v193 & 1) == 0)
              {
                std::generic_category();
                v176 = "Stackshot.cpp";
                v178 = ":";
                v179 = 771;
                HIBYTE(v169) = 3;
                v140 = 3683123;
                goto LABEL_316;
              }

              v141 = a3;
              if (0x8F9C18F9C18F9C19 * (v192 - v191) < v30)
              {
                operator new();
              }

              v33 = 24 * v30;
              v34 = v7 + 16;
              v35 = *(&v191 + 1);
              do
              {
                while (1)
                {
                  *&v202.__r_.__value_.__l.__data_ = v34;
                  v202.__r_.__value_.__r.__words[2] = 0;
                  v36 = (2 * *(v34 + 16));
                  v183 = v36;
                  LOBYTE(v199[0]) = 10;
                  if (v35 < v192)
                  {
                    break;
                  }

                  v35 = sub_298C4A108(&v191, &v202, &v183, v199);
                  *(&v191 + 1) = v35;
                  v34 += 24;
                  v33 -= 24;
                  if (!v33)
                  {
                    goto LABEL_75;
                  }
                }

                *(v35 + 16) = v36;
                *(v35 + 24) = 10;
                *(v35 + 25) = xmmword_298D1B1F0;
                uuid_copy(v35, v34);
                v35 += 41;
                *(&v191 + 1) = v35;
                v34 += 24;
                v33 -= 24;
              }

              while (v33);
LABEL_75:
              v30 = *(v7 + 8);
              a3 = v141;
            }
          }
        }

        if (HIDWORD(v30) == 2388 && *v7 != 17)
        {
          if (v30)
          {
            v37 = *(v7 + 4);
            v38 = v37 - (*v7 & 0xF);
            if (v38 / v30 == 32)
            {
              if (v38 < v30 || (*v7 & 0xFu) > v37 || (*v7 & 0xFFFFFFF0) != 0x20 || v9 + v37 > v8 || v38 != 32 * v30)
              {
                std::generic_category();
                v176 = "Stackshot.cpp";
                v178 = ":";
                v179 = 771;
                HIBYTE(v169) = 3;
                v132 = 3159603;
LABEL_313:
                LODWORD(v167) = v132;
                v180[0] = &v176;
                v181 = &v167;
                v182 = 1026;
                v199[0] = v180;
                v200 = ": ";
                v201 = 770;
                v107 = "invalid stackshot array";
                goto LABEL_317;
              }

              if ((v193 & 1) == 0)
              {
                std::generic_category();
                v176 = "Stackshot.cpp";
                v178 = ":";
                v179 = 771;
                HIBYTE(v169) = 3;
                v140 = 3487283;
LABEL_316:
                LODWORD(v167) = v140;
                v180[0] = &v176;
                v181 = &v167;
                v182 = 1026;
                v199[0] = v180;
                v200 = ": ";
                v201 = 770;
                v107 = "unattached STACKSHOT_KCTYPE_EXCLAVE_TEXTLAYOUT_SEGMENTS";
LABEL_317:
                v183 = v199;
                v185 = v107;
                v186 = 770;
                sub_298B996A4(&v183, &v171);
                operator new();
              }

              v142 = a3;
              v144 = a4;
              if (0x8F9C18F9C18F9C19 * (v192 - v191) < v30)
              {
                operator new();
              }

              v39 = 32 * v30;
              v40 = *(&v191 + 1);
              v41 = (v7 + 40);
              do
              {
                while (1)
                {
                  *&v202.__r_.__value_.__l.__data_ = (v41 - 24);
                  v202.__r_.__value_.__r.__words[2] = 0;
                  v47 = (2 * *v41);
                  v183 = v47;
                  LOBYTE(v199[0]) = 10;
                  if (v40 < v192)
                  {
                    break;
                  }

                  v40 = sub_298C4A108(&v191, &v202, &v183, v199);
                  *(&v191 + 1) = v40;
                  v41 += 32;
                  v39 -= 32;
                  if (!v39)
                  {
                    goto LABEL_104;
                  }
                }

                *(v40 + 16) = v47;
                *(v40 + 24) = 10;
                *(v40 + 25) = xmmword_298D1B1F0;
                uuid_copy(v40, v41 - 24);
                v40 += 41;
                *(&v191 + 1) = v40;
                v41 += 32;
                v39 -= 32;
              }

              while (v39);
LABEL_104:
              a4 = v144;
              a3 = v142;
            }
          }
        }
      }

      else if (v16 == 19)
      {
        if (v13 < 4 || v14 != 19)
        {
          std::generic_category();
          v176 = "Stackshot.cpp";
          v178 = ":";
          v179 = 771;
          HIBYTE(v169) = 3;
          LODWORD(v167) = 3224626;
          v180[0] = &v176;
          v181 = &v167;
          v182 = 1026;
          v199[0] = v180;
          v200 = ": ";
          v201 = 770;
          v107 = "invalid stackshot container";
          goto LABEL_317;
        }

        v18 = *(v7 + 16);
        if (v18 == 2386)
        {
          v190 = 0;
          if (v193 == 1)
          {
            if (v191)
            {
              operator delete(v191);
            }

            v191 = 0uLL;
            v192 = 0;
          }

          else
          {
            v191 = 0uLL;
            v192 = 0;
            v193 = 1;
          }
        }

        else if (v18 == 2383)
        {
          if (v196 == 1)
          {
            if (SBYTE7(v195[0]) < 0)
            {
              operator delete(__p);
            }

            memset(v195, 0, sizeof(v195));
            __p = 0u;
          }

          else
          {
            memset(v195, 0, sizeof(v195));
            __p = 0u;
            v196 = 1;
          }
        }
      }

      goto LABEL_4;
    }

    if (v16 != 20)
    {
      if (v16 == 2309)
      {
        v149 = *(v7 + 100);
      }

      goto LABEL_4;
    }

    if (v196 != 1)
    {
      goto LABEL_159;
    }

    v147 = a5;
    v42 = v197[1];
    if (v197[1] >= v197[2])
    {
      v143 = a6;
      v145 = a4;
      v48 = v197[0];
      v49 = (v197[1] - v197[0]) >> 6;
      v50 = v49 + 1;
      if ((v49 + 1) >> 58)
      {
        sub_298ADDDA0();
      }

      v43 = a3;
      v51 = v197[2] - v197[0];
      if ((v197[2] - v197[0]) >> 5 > v50)
      {
        v50 = v51 >> 5;
      }

      if (v51 >= 0x7FFFFFFFFFFFFFC0)
      {
        v52 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = v50;
      }

      if (v52)
      {
        if (!(v52 >> 58))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v66 = v49 << 6;
      if (SBYTE7(v195[0]) < 0)
      {
        sub_298AFE11C(v66, __p, *(&__p + 1));
        v42 = v197[1];
        v48 = v197[0];
        v49 = (v197[1] - v197[0]) >> 6;
      }

      else
      {
        *v66 = __p;
        *((v49 << 6) + 0x10) = *&v195[0];
      }

      *(v66 + 24) = *(v195 + 8);
      *(v66 + 40) = *(&v195[1] + 8);
      *(v66 + 56) = *(&v195[2] + 1);
      v67 = v66 - (v49 << 6);
      if (v48 != v42)
      {
        v68 = v48;
        v69 = v67;
        do
        {
          v70 = *v68;
          *(v69 + 16) = *(v68 + 2);
          *v69 = v70;
          *(v68 + 1) = 0;
          *(v68 + 2) = 0;
          *v68 = 0;
          v71 = *(v68 + 24);
          v72 = *(v68 + 40);
          *(v69 + 56) = *(v68 + 7);
          *(v69 + 40) = v72;
          *(v69 + 24) = v71;
          v68 += 4;
          v69 += 64;
        }

        while (v68 != v42);
        do
        {
          if (*(v48 + 23) < 0)
          {
            operator delete(*v48);
          }

          v48 += 4;
        }

        while (v48 != v42);
        v48 = v197[0];
      }

      v197[0] = v67;
      v197[1] = v66 + 64;
      v197[2] = 0;
      a5 = v147;
      if (v48)
      {
        operator delete(v48);
      }

      a6 = v143;
      a4 = v145;
      v197[1] = v66 + 64;
      v57 = v197[5];
      if (!LODWORD(v197[5]))
      {
LABEL_153:
        v73 = 0;
        a3 = v43;
        goto LABEL_154;
      }
    }

    else
    {
      v43 = a3;
      if (SBYTE7(v195[0]) < 0)
      {
        sub_298AFE11C(v197[1], __p, *(&__p + 1));
      }

      else
      {
        v53 = __p;
        *(v197[1] + 16) = *&v195[0];
        *v42 = v53;
      }

      v54 = *(v195 + 8);
      v55 = *(&v195[1] + 8);
      *(v42 + 56) = *(&v195[2] + 1);
      *(v42 + 40) = v55;
      *(v42 + 24) = v54;
      v56 = v42 + 64;
      a5 = v147;
      v197[1] = v56;
      v57 = v197[5];
      if (!LODWORD(v197[5]))
      {
        goto LABEL_153;
      }
    }

    v58 = v57 - 1;
    v59 = (37 * LODWORD(v195[2])) & v58;
    v60 = (v197[3] + 40 * v59);
    v61 = *v60;
    a3 = v43;
    if (*&v195[2] == *v60)
    {
      goto LABEL_155;
    }

    v62 = 0;
    v63 = 1;
    while (v61 != -1)
    {
      if (v62)
      {
        v64 = 0;
      }

      else
      {
        v64 = v61 == -2;
      }

      if (v64)
      {
        v62 = v60;
      }

      v65 = v59 + v63++;
      v59 = v65 & v58;
      v60 = (v197[3] + 40 * v59);
      v61 = *v60;
      if (*&v195[2] == *v60)
      {
        goto LABEL_155;
      }
    }

    if (v62)
    {
      v73 = v62;
    }

    else
    {
      v73 = v60;
    }

LABEL_154:
    v74 = sub_298C4A2CC(&v197[3], &v195[2], v73);
    *v74 = *&v195[2];
    *(v74 + 3) = 0u;
    *(v74 + 1) = 0u;
LABEL_155:
    if (v196 == 1)
    {
      if (SBYTE7(v195[0]) < 0)
      {
        operator delete(__p);
      }

      v196 = 0;
    }

LABEL_159:
    if (v193 == 1)
    {
      v75 = a3;
      v76 = v190;
      if (LODWORD(v197[5]))
      {
        v77 = (37 * v190) & (LODWORD(v197[5]) - 1);
        v78 = (v197[3] + 40 * v77);
        v79 = *v78;
        if (v190 != *v78)
        {
          v80 = 0;
          v81 = 1;
          while (v79 != -1)
          {
            if (v80)
            {
              v82 = 0;
            }

            else
            {
              v82 = v79 == -2;
            }

            if (v82)
            {
              v80 = v78;
            }

            v83 = v77 + v81++;
            v77 = v83 & (LODWORD(v197[5]) - 1);
            v78 = (v197[3] + 40 * v77);
            v79 = *v78;
            if (v190 == *v78)
            {
              goto LABEL_173;
            }
          }

          if (v80)
          {
            v84 = v80;
          }

          else
          {
            v84 = v78;
          }

LABEL_172:
          v78 = sub_298C4A2CC(&v197[3], &v190, v84);
          *v78 = v76;
          *(v78 + 1) = 0u;
          *(v78 + 3) = 0u;
        }

LABEL_173:
        v78[1] = v76;
        v85 = v78[2];
        if (v85)
        {
          v78[3] = v85;
          operator delete(v85);
        }

        *(v78 + 1) = v191;
        v78[4] = v192;
        v193 = 0;
        v192 = 0;
        v191 = 0uLL;
        a3 = v75;
        goto LABEL_4;
      }

      v84 = 0;
      goto LABEL_172;
    }

LABEL_4:
    v7 = v9 + *(v7 + 4);
    v9 = v7 + 16;
  }

  while (v7 + 16 <= v8);
  if (v197[0] != v197[1])
  {
    a4(a5, v197);
  }

LABEL_214:
  *a6 = 0;
  MEMORY[0x29C2945E0](v187, 8);
  if (v193 == 1 && v191)
  {
    operator delete(v191);
  }

  if (v196 == 1 && SBYTE7(v195[0]) < 0)
  {
    operator delete(__p);
    v98 = LODWORD(v197[5]);
    v99 = v197[3];
    if (LODWORD(v197[5]))
    {
      goto LABEL_220;
    }
  }

  else
  {
    v98 = LODWORD(v197[5]);
    v99 = v197[3];
    if (LODWORD(v197[5]))
    {
LABEL_220:
      v100 = 40 * v98;
      v101 = (v99 + 24);
      do
      {
        if (*(v101 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v102 = *(v101 - 1);
          if (v102)
          {
            *v101 = v102;
            operator delete(v102);
          }
        }

        v101 += 5;
        v100 -= 40;
      }

      while (v100);
      v99 = v197[3];
    }
  }

  MEMORY[0x29C2945E0](v99, 8);
  v103 = v197[0];
  if (v197[0])
  {
    v104 = v197[1];
    v105 = v197[0];
    if (v197[1] != v197[0])
    {
      do
      {
        v106 = *(v104 - 41);
        v104 -= 8;
        if (v106 < 0)
        {
          operator delete(*v104);
        }
      }

      while (v104 != v103);
      v105 = v197[0];
    }

    v197[1] = v103;
    operator delete(v105);
  }
}

uint64_t sub_298C49CD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FD40;
  a2[1] = v2;
  return result;
}

uint64_t sub_298C49D04(uint64_t a1)
{
  stackshot_config_dealloc_buffer();
  v2 = *(a1 + 8);

  return MEMORY[0x2A1C764C0](v2);
}

uint64_t sub_298C49D40@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 24);
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(result + 24);
  }

  v6 = *(result + 16) + v5;
  v7 = v4 - v5;
  *(a4 + 16) &= ~1u;
  if (v7 >= a3)
  {
    v7 = a3;
  }

  *a4 = v6;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_298C49D70(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(a1 + 56);
    if (v3 == a1 + 32)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = sub_298AE761C();
    return sub_298C49E30(v5);
  }
}

uint64_t sub_298C49E30(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(a1 + 56);
    if (v3 == a1 + 32)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x29C2945F0);
  }

  v4 = sub_298AE761C();
  return sub_298C49F04(v4);
}

_DWORD *sub_298C49F0C(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -1;
        *v13 = -1;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 4;
        }

        while (v10 != &result[4 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFD)
        {
          v25 = (37 * v24) & v16;
          v23 = &result[4 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[4 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 1) = *(v17 + 1);
          *(a1 + 2) = ++v15;
        }

        v17 += 4;
      }

      while (v17 != &v4[4 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v18 = *(a1 + 4);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 4;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 4) = -1;
      *v20 = -1;
      v20 += 8;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[4 * v18];
      do
      {
        *v10 = -1;
        v10 += 4;
      }

      while (v10 != v22);
    }
  }

  return result;
}

unint64_t sub_298C4A108(void **a1, uint64_t a2, void *a3, char *a4)
{
  v4 = 0x8F9C18F9C18F9C19 * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x63E7063E7063E70)
  {
    sub_298ADDDA0();
  }

  if (0x1F3831F3831F3832 * (a1[2] - *a1) > v5)
  {
    v5 = 0x1F3831F3831F3832 * (a1[2] - *a1);
  }

  if (0x8F9C18F9C18F9C19 * (a1[2] - *a1) >= 0x31F3831F3831F38)
  {
    v8 = 0x63E7063E7063E70;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (v8 <= 0x63E7063E7063E70)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v9 = a1[1] - *a1;
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *a4;
  *(v9 + 16) = *a3;
  *(v9 + 24) = v12;
  *(v9 + 25) = xmmword_298D1B1F0;
  if (v11)
  {
    uuid_copy((41 * v4), v11);
  }

  else
  {
    uuid_parse(v10, (41 * v4));
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = v9 - (v14 - *a1);
  v16 = v9 + 41;
  if (v14 != *a1)
  {
    v17 = 0;
    v18 = 41 * v4 - (v14 - *a1);
    do
    {
      v19 = v18 + v17;
      v20 = *&v13[v17 + 16];
      *(v19 + 24) = v13[v17 + 24];
      v21 = *&v13[v17 + 25];
      *(v19 + 16) = v20;
      *(v19 + 25) = v21;
      uuid_copy((v18 + v17), &v13[v17]);
      v17 += 41;
    }

    while (&v13[v17] != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v16;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v16;
}

void *sub_298C4A2CC(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 4);
  if (4 * v3 + 4 >= 3 * v4)
  {
    v7 = a1;
    sub_298C4A46C(a1, 2 * v4);
    v9 = *a2;
    v10 = *(v7 + 4) - 1;
    v11 = (37 * *a2) & v10;
    a3 = (*v7 + 40 * v11);
    v12 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == -2;
      }

      if (v15)
      {
        v13 = a3;
      }

      v16 = v11 + v14++;
      v11 = v16 & v10;
      a3 = (*v7 + 40 * v11);
      v12 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v4 + ~v3 - *(a1 + 3) > v4 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a1;
    sub_298C4A46C(a1, *(a1 + 4));
    v9 = *a2;
    v18 = *(v7 + 4) - 1;
    v19 = (37 * *a2) & v18;
    a3 = (*v7 + 40 * v19);
    v20 = *a3;
    if (*a2 == *a3)
    {
LABEL_17:
      a1 = v7;
      ++*(v7 + 2);
      if (v9 == -1)
      {
        return a3;
      }

      goto LABEL_4;
    }

    v13 = 0;
    v21 = 1;
    while (v20 != -1)
    {
      if (v13)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 == -2;
      }

      if (v22)
      {
        v13 = a3;
      }

      v23 = v19 + v21++;
      v19 = v23 & v18;
      a3 = (*v7 + 40 * v19);
      v20 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v13)
  {
    a3 = v13;
  }

  a1 = v7;
LABEL_3:
  v5 = *a3;
  ++*(a1 + 2);
  if (v5 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

  return a3;
}

void *sub_298C4A46C(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 40 * v10 - 40;
    if (v11 >= 0x28)
    {
      v16 = v11 / 0x28 + 1;
      v12 = &result[5 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -1;
        v17[5] = -1;
        v17 += 10;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if (*v20 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v27 = *(a1 + 4) - 1;
              v28 = v27 & (37 * v26);
              v25 = (*a1 + 40 * v28);
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -1)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -2;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = (*a1 + 40 * (v33 & v27));
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = v26;
              v25[1] = v20[1];
              v25[2] = 0;
              v25[3] = 0;
              v25[4] = 0;
              *(v25 + 1) = *(v20 + 1);
              v25[4] = v20[4];
              v20[2] = 0;
              v20[3] = 0;
              v20[4] = 0;
              ++*(a1 + 2);
            }

            v20 += 5;
          }

          while (v20 != &v4[5 * v3]);
        }

        JUMPOUT(0x29C2945E0);
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[5 * v10];
    do
    {
      *v12 = -1;
      v12 += 5;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  a1[1] = 0;
  v13 = *(a1 + 4);
  if (v13)
  {
    v14 = 40 * v13 - 40;
    if (v14 < 0x28)
    {
      v15 = result;
LABEL_21:
      v24 = &result[5 * v13];
      do
      {
        *v15 = -1;
        v15 += 5;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x28 + 1;
    v15 = &result[5 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -1;
      v22[5] = -1;
      v22 += 10;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t sub_298C4A6E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *a1 = a5;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 56) = dispatch_queue_create("com.apple.hwtrace.monitor", v9);
  v10 = (*(a3 + 128) < 6u) & (0x32u >> *(a3 + 128));
  if (a4)
  {
    LOBYTE(v10) = 0;
  }

  *(a1 + 81) = v10;
  if (!a5)
  {
    return a1;
  }

  v11 = sub_298B9CDFC();
  v12 = v11;
  v13 = v11[4];
  if (v11[3] - v13 > 0x20uLL)
  {
    qmemcpy(v13, "Monitor: ReplaceExistingEvents = ", 33);
    v11[4] += 33;
  }

  else
  {
    sub_298B9BCEC(v11, "Monitor: ReplaceExistingEvents = ", 0x21uLL);
  }

  sub_298B8FC48(v12, *(a1 + 81), 0, 0, 0);
  v14 = v12[4];
  if (v12[3] != v14)
  {
    *v14 = 10;
    ++v12[4];
    return a1;
  }

  sub_298B9BCEC(v12, "\n", 1uLL);
  return a1;
}