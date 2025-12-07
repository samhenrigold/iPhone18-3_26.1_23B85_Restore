uint64_t sub_232C89D78(uint64_t a1)
{
  sub_232C87548((a1 + 8));
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_232C872C0((a1 + 40));
  v3 = *(a1 + 64);
  if (v3)
  {
    MEMORY[0x238392BE0](v3, 0x1000C8052888210);
    *(a1 + 64) = 0;
  }

  *(a1 + 72) = 0;
  sub_232C87274((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    MEMORY[0x238392BE0](v4, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_232C874FC((a1 + 8));
  return a1;
}

uint64_t sub_232C89E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_284814920;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 245);
  sub_232CB32B4((a1 + 56));
  v5 = *(a2 + 64);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v6 = *v6;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_232C89EF4(a1, v6, v7);
  return a1;
}

void sub_232C89EA8(_Unwind_Exception *a1)
{
  sub_232CB32BC((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_232C89EF4(uint64_t *result, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = result;
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sub_232C8A360(a2, a3, v6, &v5, &v4);
    sub_232CB34D4((v3 + 56), &v4);
    result = sub_232CB32BC(&v4);
    if (!*(v3 + 56))
    {
      operator new();
    }
  }

  return result;
}

void sub_232C8A050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB32BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8A06C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284814920;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_232CB32B4((a1 + 56));
  v4 = *(a2 + 64);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_232C89EF4(a1, v5, v6);
  return a1;
}

void sub_232C8A0F4(_Unwind_Exception *a1)
{
  sub_232CB32BC((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_232C8A144(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  a1[1] = 0;
  *a1 = &unk_284814920;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = 0;
  *(a1 + 48) = 0;
  sub_232CB32B4(a1 + 7);
  v10 = 0;
  sub_232C80728(a3, a4, &v10, &v9);
  sub_232CB34D4(a1 + 7, &v9);
  sub_232CB32BC(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sub_232CB32BC(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sub_232C89EF4(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_232C8A248(_Unwind_Exception *a1)
{
  sub_232CB32BC((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_232C8A2B0(void *a1)
{
  *a1 = &unk_284814920;
  sub_232CB32BC(a1 + 7);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_232C8A328(void *a1)
{
  sub_232C8A2B0(a1);

  JUMPOUT(0x238392C10);
}

uint64_t *sub_232C8A360@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  if (a2 < 5 || (v7 = *a1, a2 <= v7))
  {
    v10 = "Blob for normalization rule is broken.";
    v11 = 38;
  }

  else
  {
    if ((v7 + 1) < a2)
    {
      v8 = a1 + 1;
      *a3 = v8;
      a3[1] = v7;
      *a4 = v7 + v8;
      a4[1] = a2 - v7 - 4;
      return sub_232CB32B4(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sub_232CB3420(a5, 13, v10, v11);
}

void *sub_232C8A3C8@<X0>(size_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a3;
  a5[1] = *a5;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    *a4->__r_.__value_.__l.__data_ = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    if (!a3)
    {
LABEL_11:

      return sub_232CB32B4(a6);
    }
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    *(&a4->__r_.__value_.__s + 23) = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  result = (*(*a1 + 24))(a1);
  if (*a6)
  {
    return result;
  }

  sub_232CB32BC(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v13 = 0;
    while (1)
    {
      sub_232C8ABD0(a1, a2, v8, &v39);
      if (v40 != 1 || *v39 != 32)
      {
        break;
      }

      a2 += v41;
      v13 += v41;
      v8 -= v41;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v37 = a6;
  }

  else
  {
    v37 = a6;
    v13 = 0;
  }

  std::string::reserve(a4, 3 * v8);
  sub_232C8ADC4(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v14 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v13;
        sub_232C8AE64(a5, &v39);
        --v14;
      }

      while (v14);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v13;
      sub_232C8AE64(a5, &v39);
    }
  }

  v15 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sub_232C8ABD0(a1, a2, v8, &v39);
    v17 = v39;
    v16 = v40;
    if (v15)
    {
      if (!v40)
      {
        goto LABEL_40;
      }

      while (*v17 == 32)
      {
        ++v17;
        if (!--v16)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v40)
    {
      v15 = 0;
      goto LABEL_40;
    }

    v18 = 0;
    v38 = v13;
    v19 = v13;
    do
    {
      v20 = (*(**(a1 + 32) + 32))(*(a1 + 32));
      v21 = v17[v18];
      if (v20 && v21 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v22 = 3;
        do
        {
          v45[0] = v19;
          sub_232C8AE64(a5, v45);
          --v22;
        }

        while (v22);
      }

      else
      {
        std::string::push_back(a4, v21);
        v45[0] = v19;
        sub_232C8AE64(a5, v45);
      }

      ++v18;
    }

    while (v18 != v16);
    v15 = v17[v16 - 1] == 32;
    v13 = v38;
LABEL_40:
    v13 += v41;
    a2 += v41;
    v8 -= v41;
    v15 &= (*(**(a1 + 32) + 24))(*(a1 + 32));
  }

  while (v8);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v23 = (*(**(a1 + 32) + 32))(*(a1 + 32));
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v25) = v13;
    if (v23)
    {
      v26 = "▁";
    }

    else
    {
      v26 = " ";
    }

    while (1)
    {
      v27 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v27 & 0x8000000000000000) != 0)
      {
        v28 = a4->__r_.__value_.__r.__words[0];
        size = a4->__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = a4;
        size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      v30 = size >= v24;
      v31 = size - v24;
      if (!v30 || memcmp(v28 + v31, v26, v24))
      {
        break;
      }

      if ((v27 & 0x80000000) != 0)
      {
        v27 = a4->__r_.__value_.__l.__size_;
      }

      if (v27 - v24 < 0)
      {
        LODWORD(v39) = 13;
        v34 = sub_232C83BBC(&v40);
        sub_232C85DAC(v34, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        sub_232C85DAC(&v40, "(", 1);
        MEMORY[0x238392A80](&v40, 186);
        sub_232C85DAC(&v40, ") [", 3);
        sub_232C85DAC(&v40, "(length) >= (0)", 15);
        sub_232C85DAC(&v40, "] ", 2);
        sub_232C809A4(&v39, v37);
        goto LABEL_72;
      }

      v32 = (v27 - v24) & 0x7FFFFFFF;
      v25 = *(*a5 + v32);
      std::string::resize(a4, v32, 0);
      sub_232C8AF44(a5, v32);
    }
  }

  else
  {
    LODWORD(v25) = v13;
  }

  if (*(a1 + 48) == 1 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v33 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v25;
        sub_232C8AE64(a5, &v39);
        --v33;
      }

      while (v33);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v25;
      sub_232C8AE64(a5, &v39);
    }
  }

  v39 = v25;
  sub_232C8AE64(a5, &v39);
  v35 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v35 & 0x8000000000000000) != 0)
  {
    v35 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v35 + 1)
  {
    return sub_232CB32B4(v37);
  }

  LODWORD(v39) = 13;
  v36 = sub_232C83BBC(&v40);
  sub_232C85DAC(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  sub_232C85DAC(&v40, "(", 1);
  MEMORY[0x238392A80](&v40, 198);
  sub_232C85DAC(&v40, ") [", 3);
  sub_232C85DAC(&v40, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  sub_232C85DAC(&v40, "] ", 2);
  sub_232C809A4(&v39, v37);
LABEL_72:
  v40 = *MEMORY[0x277D82828];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v44);
}

void sub_232C8ABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

size_t sub_232C8ABD0@<X0>(size_t result@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[63] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a2;
    v7 = result;
    v8 = *(result + 40);
    if (v8 && (LOBYTE(v27) = 0, result = sub_232C8B038(v8, a2, a3, &v27), v27 == 1))
    {
      v9 = result;
      if (a3 < result)
      {
        v9 = a3;
      }

      *a4 = v6;
      *(a4 + 8) = v9;
      *(a4 + 16) = result;
    }

    else
    {
      v10 = *(v7 + 8);
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = 0;
      v12 = 0;
      v13 = *(v10 + 16);
      v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
      do
      {
        v15 = v6[v11];
        v16 = v14 ^ v15;
        v17 = v13[v16];
        if ((v17 & 0x800000FF) != v15)
        {
          break;
        }

        v14 = v16 ^ (v17 >> 10 << ((v17 >> 6) & 8));
        if ((v17 & 0x100) != 0)
        {
          if (v12 <= 0x1F)
          {
            v18 = &v28[2 * v12 - 1];
            *v18 = v13[v14] & 0x7FFFFFFF;
            v18[1] = v11 + 1;
          }

          ++v12;
        }

        ++v11;
      }

      while (a3 != v11);
      if (!v12)
      {
        goto LABEL_24;
      }

      v19 = 0;
      v20 = 0;
      v21 = v28;
      v22 = v28;
      do
      {
        v24 = *v22;
        v22 += 2;
        v23 = v24;
        if (!v19 || v23 > v19)
        {
          v20 = *(v21 - 2);
          v19 = v23;
        }

        v21 = v22;
        --v12;
      }

      while (v12);
      if (v19)
      {
        v6 = (*(v7 + 16) + v20);
        result = strlen(v6);
      }

      else
      {
LABEL_24:
        v27 = 0;
        v25 = sub_232CB1340(v6, &v6[a3], &v27);
        v26 = v25 != 65533;
        if (v25 == 65533)
        {
          result = 3;
        }

        else
        {
          result = v27;
        }

        if (v27 == 3)
        {
          v26 = 1;
        }

        if (v26)
        {
          LODWORD(v19) = v27;
        }

        else
        {
          LODWORD(v19) = 1;
        }

        if (!v26)
        {
          v6 = &unk_232D006B4;
        }
      }

      *a4 = v6;
      *(a4 + 8) = result;
      *(a4 + 16) = v19;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_232C8ADC4(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_232C868D0(a1, a2);
    }

    sub_232C84C3C();
  }
}

void sub_232C8AE64(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_232C84C3C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_232C868D0(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void sub_232C8AF44(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_232C8B878(result, a2 - v2);
  }
}

void sub_232C8AF74(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  (*(*a1 + 32))(&v2);
  nullsub_1();
  sub_232CB32BC(&v2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_232C8AFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_232CB32BC(&a9);
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_232C8B038(uint64_t a1, _BYTE *a2, uint64_t a3, BOOL *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_33;
  }

  v4 = *(*a1 + 16);
  v5 = (*v4 >> 10 << ((*v4 >> 6) & 8));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a2[v6];
      v9 = v5 ^ v8;
      v10 = v4[v9];
      if ((v10 & 0x800000FF) != v8)
      {
        break;
      }

      v5 = v9 ^ (v10 >> 10 << ((v10 >> 6) & 8));
      if ((v10 & 0x100) != 0)
      {
        if (v7 <= 0x3F)
        {
          v11 = &v23[v7];
          *v11 = v4[v5] & 0x7FFFFFFF;
          *(v11 + 1) = v6 + 1;
        }

        ++v7;
      }

      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    v12 = *a2;
    if (*a2)
    {
      v7 = 0;
      v13 = 1;
      do
      {
        v14 = v5 ^ v12;
        v15 = v4[v14];
        if ((v15 & 0x800000FF) != v12)
        {
          break;
        }

        v5 = v14 ^ (v15 >> 10 << ((v15 >> 6) & 8));
        if ((v15 & 0x100) != 0)
        {
          if (v7 <= 0x3F)
          {
            v16 = &v23[v7];
            *v16 = v4[v5] & 0x7FFFFFFF;
            *(v16 + 1) = v13;
          }

          ++v7;
        }

        v12 = a2[v13++];
      }

      while (v12);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  if (a4)
  {
    *a4 = v7 > 0;
  }

  if (!v7)
  {
LABEL_33:
    v22 = asc_232D0C525[*a2 >> 4];
    if (v22 >= a3)
    {
      return a3;
    }

    else
    {
      return v22;
    }
  }

  if (v7 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v18 = v7 & 0x7FFFFFFF;
  v19 = v23 + 2;
  do
  {
    v21 = *v19;
    v19 += 4;
    v20 = v21;
    if (result <= v21)
    {
      result = v20;
    }

    else
    {
      result = result;
    }

    --v18;
  }

  while (v18);
  return result;
}

void sub_232C8B208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 4uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *v5 = v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    memset(&v13, 0, sizeof(v13));
    std::string::resize(&v13, 4uLL, 0);
    v9 = 4 * v8;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    LODWORD(v10->__r_.__value_.__l.__data_) = v9;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v11, size);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    std::string::append(a2, v7, v9);
    std::string::append(a2, *(a1 + 16), *(a1 + 24));
  }
}

void sub_232C8B300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_232C8B33C(void *a1, void *a2)
{
  *a1 = 0;
  v3 = a2[2];
  if (v3)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_232C8B608(&__p, v3);
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = v19;
      do
      {
        v8 = v5[4];
        if (v7 >= v20)
        {
          v9 = (v7 - __p) >> 3;
          if ((v9 + 1) >> 61)
          {
            sub_232C84C3C();
          }

          v10 = (v20 - __p) >> 2;
          if (v10 <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v11 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            sub_232C87138(&__p, v11);
          }

          v12 = (8 * v9);
          *v12 = v8;
          v7 = (8 * v9 + 8);
          v13 = v12 - (v19 - __p);
          memcpy(v13, __p, v19 - __p);
          v14 = __p;
          __p = v13;
          v19 = v7;
          v20 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v7 = v8;
          v7 += 8;
        }

        v19 = v7;
        v15 = v5[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v5[2];
            v17 = *v16 == v5;
            v5 = v16;
          }

          while (!v17);
        }

        v5 = v16;
      }

      while (v16 != v4);
    }

    operator new();
  }

  return a1;
}

void sub_232C8B5A0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  *v14 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C8B608(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_232C87138(a1, a2);
    }

    sub_232C84C3C();
  }
}

void *sub_232C8B6AC(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    operator new();
  }

  return a1;
}

void sub_232C8B78C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_232C8B9A8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C8B7AC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = 4 * *(v3 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_232C85C94();
    }

    v5 = *(v3 + 16);
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      result = memmove(a2, v5, v4);
    }

    a2 += v4;
  }

  else
  {
    a2[23] = 0;
  }

  *a2 = 0;
  return result;
}

void sub_232C8B878(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_232C84C3C();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_232C868D0(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_232C8B9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 80))
  {
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = &unk_27DDD5398;
  }

  v4 = v3[68];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_232C8BC04();
    }

    if (v4 == 4)
    {
      sub_232C8BC74();
    }
  }

  else
  {
    if (v4 == 1)
    {
      sub_232C8BB24();
    }

    if (v4 == 2)
    {
      sub_232C8BB94();
    }
  }

  result = sub_232CB1330();
  if (result <= 2)
  {
    LOBYTE(v14) = 0;
    v6 = sub_232C85DAC(MEMORY[0x277D82670], "model_factory.cc", 16);
    v7 = sub_232C85DAC(v6, "(", 1);
    v8 = MEMORY[0x238392A80](v7, 43);
    v9 = sub_232C85DAC(v8, ") ", 2);
    v10 = sub_232C85DAC(v9, "LOG(", 4);
    v11 = sub_232C85DAC(v10, "ERROR", 5);
    v12 = sub_232C85DAC(v11, ") ", 2);
    v13 = sub_232C85DAC(v12, "Unknown model_type: ", 20);
    MEMORY[0x238392A80](v13, v3[68]);
    result = sub_232C83EEC(&v14);
  }

  *a2 = 0;
  return result;
}

void sub_232C8BB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C83EEC(va);
  _Unwind_Resume(a1);
}

void *sub_232C8BCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v17[1] = a2;
  v17[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    sub_232C8BEE8();
  }

  if (!v6)
  {
    sub_232C8BE68();
  }

  result = sub_232CB1330();
  if (result <= 2)
  {
    LOBYTE(v17[0]) = 0;
    v8 = sub_232C85DAC(MEMORY[0x277D82670], "model_factory.cc", 16);
    v9 = sub_232C85DAC(v8, "(", 1);
    v10 = MEMORY[0x238392A80](v9, 61);
    v11 = sub_232C85DAC(v10, ") ", 2);
    v12 = sub_232C85DAC(v11, "LOG(", 4);
    v13 = sub_232C85DAC(v12, "ERROR", 5);
    v14 = sub_232C85DAC(v13, ") ", 2);
    v15 = sub_232C85DAC(v14, "Unknown model_type: ", 20);
    v16 = (*(*a1 + 80))(a1);
    MEMORY[0x238392A90](v15, v16);
    result = sub_232C83EEC(v17);
  }

  *a4 = 0;
  return result;
}

void sub_232C8BE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C83EEC(va);
  _Unwind_Resume(a1);
}

void *sub_232C8BF68(void *a1)
{
  *a1 = &unk_284814978;
  v2 = sub_232CA6C5C();
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = v2;
  return a1;
}

void *sub_232C8BFB4(void *a1)
{
  *a1 = &unk_284814978;
  v2 = a1[3];
  if (v2)
  {
    sub_232C9C8DC(v2);
  }

  return a1;
}

void sub_232C8C000(void *a1)
{
  *a1 = &unk_284814978;
  v1 = a1[3];
  if (v1)
  {
    sub_232C9C8DC(v1);
  }

  JUMPOUT(0x238392C10);
}

uint64_t sub_232C8C090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232C9CA28(a2, *(*(a1 + 8) + 56));
  v5 = *(a1 + 8);
  if (*(v5 + 56) >= 1)
  {
    v6 = 0;
    do
    {
      result = sub_232C9BA60(v5 + 48, v6);
      *(*a2 + 8 * v6++) = result;
      v5 = *(a1 + 8);
    }

    while (v6 < *(v5 + 56));
  }

  return result;
}

void sub_232C8C108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C8C130(void *a1)
{
  result = a1[2];
  if (!result)
  {
    sub_232C9CB38();
  }

  return result;
}

void *sub_232C8C198(void *a1)
{
  *a1 = &unk_284814998;
  v2 = a1[2];
  if (v2)
  {
    sub_232C9C8DC(v2);
  }

  return a1;
}

void sub_232C8C1E4(void *a1)
{
  *a1 = &unk_284814998;
  v1 = a1[2];
  if (v1)
  {
    sub_232C9C8DC(v1);
  }

  JUMPOUT(0x238392C10);
}

uint64_t sub_232C8C250(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    sub_232C9CC74();
  }

  return result;
}

void *sub_232C8C2B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return sub_232CC137C(v2, a2);
  }

  else
  {
    return sub_232C8C2D0(a2, "");
  }
}

void *sub_232C8C2D0(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
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

double sub_232C8C388(uint64_t a1)
{
  *a1 = &unk_2848149B8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t sub_232C8C3C8(uint64_t a1)
{
  *a1 = &unk_2848149B8;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

void sub_232C8C52C(uint64_t a1)
{
  sub_232C8C3C8(a1);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232C8C564(uint64_t a1)
{
  v4[19] = *MEMORY[0x277D85DE8];
  sub_232C8C704(v2, a1, 12);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x277D82808];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x2383929B0](v3);
  std::istream::~istream();
  MEMORY[0x238392BA0](v4);
  return 0;
}

void sub_232C8C6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_232C9BC5C(&a10, MEMORY[0x277D82808]);
  MEMORY[0x238392BA0](&a63);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C8C704(uint64_t *a1, uint64_t a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x2383929A0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_232C8C890(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x238392BA0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8C8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_232C8C564(a2))
  {
    sub_232C8CA00();
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, a3);
}

void sub_232C8C9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_232C8CE78(&a9);
  sub_232C8CE78(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C8CA6C@<X0>(uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    sub_232CB0744();
  }

  return sub_232CB3420(a4, 5, "model file path should not be empty.", 0x24uLL);
}

void sub_232C8CE00(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C8CE78(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_232CADC9C(v2);
    MEMORY[0x238392C10](v3, 0x10A1C4047CE62CFLL);
  }

  return a1;
}

uint64_t *sub_232C8CEC0(uint64_t a1)
{
  (*(*a1 + 16))(&v12);
  if (v12.__r_.__value_.__r.__words[0])
  {
    v11 = 1;
    v1 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v2 = sub_232C85DAC(v1, "(", 1);
    v3 = MEMORY[0x238392A80](v2, 239);
    v4 = sub_232C85DAC(v3, ") [", 3);
    v5 = sub_232C85DAC(v4, "_status.ok()", 12);
    v6 = sub_232C85DAC(v5, "] ", 2);
    sub_232CB35E0(&v12, __p);
    if ((v10 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      sub_232C85DAC(v6, v7, v10);
    }

    else
    {
      sub_232C85DAC(v6, v7, __p[1]);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    sub_232C83EEC(&v11);
  }

  return sub_232CB32BC(&v12);
}

void sub_232C8CFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_232C83EEC((v15 - 25));
  sub_232CB32BC((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_232C8D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C8CE78(&a9);
  sub_232C8CE78(&a10);
  _Unwind_Resume(a1);
}

void sub_232C8D33C(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(*a2 + 88);
  if (!v6)
  {
    v6 = &unk_27DDD54E0;
  }

  if (v6[80] == 1)
  {
    if (sub_232CB1330() <= 0)
    {
      LOBYTE(v23) = 0;
      v7 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
      v8 = sub_232C85DAC(v7, "(", 1);
      v9 = MEMORY[0x238392A80](v8, 260);
      v10 = sub_232C85DAC(v9, ") ", 2);
      v11 = sub_232C85DAC(v10, "LOG(", 4);
      v12 = sub_232C85DAC(v11, "INFO", 4);
      v13 = sub_232C85DAC(v12, ") ", 2);
      sub_232C85DAC(v13, "Enable Apple addition for backward compatibility", 48);
      sub_232C83EEC(&v23);
    }

    v5 = *a2;
    *(v5 + 48) = *(*a2 + 48) | 1;
    v14 = *(v5 + 80);
    if (!v14)
    {
      v15 = *(v5 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_232CAED34(v15);
      *(v5 + 80) = v14;
      v5 = *a2;
    }

    *(v14 + 40) |= 0x4000u;
    *(v14 + 245) = 1;
    *(v5 + 48) |= 2u;
    v16 = *(v5 + 88);
    if (!v16)
    {
      v17 = *(v5 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = sub_232CAEE04(v17);
      *(v5 + 88) = v16;
      v5 = *a2;
    }

    *(v16 + 48) |= 0x10u;
    *(v16 + 81) = 1;
  }

  *a2 = 0;
  if (v5)
  {
    v18 = v5 + 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = a1[4];
  a1[4] = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v18 = a1[4];
  }

  sub_232C8B9CC(v18 - 16, &v23);
  v20 = v23;
  v23 = 0;
  v21 = a1[1];
  a1[1] = v20;
  if (v21)
  {
    (*(*v21 + 8))(v21);
    v22 = v23;
    v23 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  sub_232C8DD4C();
}

void sub_232C8DE3C(std::string *__return_ptr a1@<X8>, void *__src@<X0>, size_t __len@<X1>, char *a4@<X2>, void ***a5@<X3>, char *a6@<X4>, void ***a7@<X5>)
{
  sub_232C9C334(&__dst, __src, __len);
  v12 = strlen(a4);
  sub_232C9CDB0(&__p, a4, v12, a5, a6, a7);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a1 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C8DF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C8DF50(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v43[19] = *MEMORY[0x277D85DE8];
  a4[1] = *a4;
  if (a3)
  {
    (*(*a1 + 88))(a1);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      if ((atomic_load_explicit(&qword_27DDD4D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4D78))
      {
        v39[3] = xmmword_2789A7AC8;
        *__p = unk_2789A7AD8;
        v41 = xmmword_2789A7AE8;
        v42 = 3;
        v38 = xmmword_2789A7A88;
        v39[0] = unk_2789A7A98;
        v39[1] = xmmword_2789A7AA8;
        v39[2] = *&off_2789A7AB8;
        sub_232C9EB34(&qword_27DDD4D60, &v38, 5);
        __cxa_atexit(sub_232C98D88, &qword_27DDD4D60, &dword_232B02000);
        __cxa_guard_release(&qword_27DDD4D78);
      }

      sub_232C9BF20(&v36, a2, a3, ":", 1, 0);
      v10 = v36;
      v11 = v37;
      if (v36 == v37)
      {
LABEL_24:
        if (v10)
        {
          v37 = v10;
          operator delete(v10);
        }

        sub_232CB32B4(a5);
      }

      else
      {
        while (1)
        {
          v12 = sub_232C9D354(&qword_27DDD4D60, v10);
          v13 = v12;
          if (v12 == &unk_27DDD4D68)
          {
            break;
          }

          v15 = a4[1];
          v14 = a4[2];
          if (v15 >= v14)
          {
            v17 = *a4;
            v18 = v15 - *a4;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              sub_232C84C3C();
            }

            v21 = v14 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_232C86538(a4, v23);
            }

            *(4 * v19) = *(v12 + 48);
            v16 = 4 * v19 + 4;
            memcpy(0, v17, v18);
            v24 = *a4;
            *a4 = 0;
            a4[1] = v16;
            a4[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = *(v12 + 48);
            v16 = (v15 + 1);
          }

          a4[1] = v16;
          v25 = *(v13 + 48);
          if (v25 == 1)
          {
            v26 = sub_232C80DB4(a1[1]);
            v27 = strlen(v26);
            v28 = (*(*a1 + 504))(a1, v26, v27);
            if ((*(*a1 + 528))(a1, v28))
            {
              LODWORD(v38) = 13;
              sub_232C83BBC(&v38 + 1);
              sub_232C85DAC(&v38 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_232C85DAC(&v38 + 1, "(", 1);
              MEMORY[0x238392A80](&v38 + 8, 1135);
              sub_232C85DAC(&v38 + 1, ") [", 3);
              sub_232C85DAC(&v38 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->bos_piece().data())))", 68);
              sub_232C85DAC(&v38 + 1, "] ", 2);
              v32 = sub_232C80DB4(a1[1]);
              sub_232C85DAC(&v38 + 1, v32, v33);
              sub_232C809A4(&v38, a5);
              goto LABEL_35;
            }

            v25 = *(v13 + 48);
          }

          if (v25 == 2)
          {
            v29 = sub_232C80E38(a1[1]);
            v30 = strlen(v29);
            v31 = (*(*a1 + 504))(a1, v29, v30);
            if ((*(*a1 + 528))(a1, v31))
            {
              LODWORD(v38) = 13;
              sub_232C83BBC(&v38 + 1);
              sub_232C85DAC(&v38 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_232C85DAC(&v38 + 1, "(", 1);
              MEMORY[0x238392A80](&v38 + 8, 1140);
              sub_232C85DAC(&v38 + 1, ") [", 3);
              sub_232C85DAC(&v38 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->eos_piece().data())))", 68);
              sub_232C85DAC(&v38 + 1, "] ", 2);
              v34 = sub_232C80E38(a1[1]);
              sub_232C85DAC(&v38 + 1, v34, v35);
              sub_232C809A4(&v38, a5);
LABEL_35:
              *(&v38 + 1) = *MEMORY[0x277D82828];
              *(&v38 + *(*(&v38 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
              *&v39[0] = MEMORY[0x277D82878] + 16;
              if (SBYTE7(v41) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_37;
            }
          }

          v10 += 2;
          if (v10 == v11)
          {
            v10 = v36;
            goto LABEL_24;
          }
        }

        LODWORD(v38) = 13;
        sub_232C83BBC(&v38 + 1);
        sub_232C85DAC(&v38 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v38 + 1, "(", 1);
        MEMORY[0x238392A80](&v38 + 8, 1129);
        sub_232C85DAC(&v38 + 1, ") [", 3);
        sub_232C85DAC(&v38 + 1, "it != extra_option_map.end()", 28);
        sub_232C85DAC(&v38 + 1, "] ", 2);
        sub_232C85DAC(&v38 + 1, "option ", 8);
        sub_232C85DAC(&v38 + 1, *v10, v10[1]);
        sub_232C85DAC(&v38 + 1, " is not available.", 19);
        sub_232C809A4(&v38, a5);
        *(&v38 + 1) = *MEMORY[0x277D82828];
        *(&v38 + *(*(&v38 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
        *&v39[0] = MEMORY[0x277D82878] + 16;
        if (SBYTE7(v41) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_37:
        *&v39[0] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v39 + 1);
        std::ostream::~ostream();
        MEMORY[0x238392BA0](v43);
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }
      }
    }
  }

  else
  {

    sub_232CB32B4(a5);
  }
}

void *sub_232C8E86C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a1 + 16))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sub_232CB32BC(a2);
        result = (*(**(a1 + 16) + 24))(*(a1 + 16));
        if (!*a2)
        {
          v6 = sub_232CB32BC(a2);

          return sub_232CB32B4(v6);
        }
      }

      return result;
    }

    LODWORD(v9) = 13;
    v8 = sub_232C83BBC(&v10);
    sub_232C85DAC(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 320);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "normalizer_", 11);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C85DAC(&v10, "Normalizer is not initialized.", 30);
    sub_232C809A4(&v9, a2);
  }

  else
  {
    LODWORD(v9) = 13;
    v7 = sub_232C83BBC(&v10);
    sub_232C85DAC(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 319);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "model_", 6);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C85DAC(&v10, "Model is not initialized.", 25);
    sub_232C809A4(&v9, a2);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v14);
}

void sub_232C8EBB4(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*a1 + 88))(a1);
  if (*a3)
  {
    return;
  }

  sub_232CB32BC(a3);
  v6 = a1[4];
  if (!v6 || (v7 = __dynamic_cast(v6, &unk_284814880, &unk_284815860, 16)) == 0)
  {
    LODWORD(v22) = 13;
    v19 = sub_232C83BBC(&v23);
    sub_232C85DAC(v19, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v23, "(", 1);
    MEMORY[0x238392A80](&v23, 331);
    sub_232C85DAC(&v23, ") [", 3);
    sub_232C85DAC(&v23, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
    sub_232C85DAC(&v23, "] ", 2);
    sub_232C85DAC(&v23, "SetVocabulary is not supported when mmap-based model is loaded.", 63);
    sub_232C809A4(&v22, a3);
LABEL_26:
    v23 = *MEMORY[0x277D82828];
    *(&v23 + *(v23 - 3)) = *(MEMORY[0x277D82828] + 24);
    v24 = MEMORY[0x277D82878] + 16;
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    v24 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v25);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](&v27);
    return;
  }

  v8 = v7;
  v9 = &unk_27DDD5398;
  if (v7[10])
  {
    v9 = v7[10];
  }

  if ((v9[68] - 1) >= 2)
  {
    LODWORD(v22) = 13;
    v20 = sub_232C83BBC(&v23);
    sub_232C85DAC(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v23, "(", 1);
    MEMORY[0x238392A80](&v23, 336);
    sub_232C85DAC(&v23, ") [", 3);
    sub_232C85DAC(&v23, "type == TrainerSpec::UNIGRAM || type == TrainerSpec::BPE", 56);
    sub_232C85DAC(&v23, "] ", 2);
    sub_232C85DAC(&v23, "Vocabulary constraint is only enabled in subword units.", 55);
    sub_232C809A4(&v22, a3);
    goto LABEL_26;
  }

  sub_232C9D094(&v22, *a2, a2[1]);
  if (*(v8 + 16) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_232C9BE40((v8 + 7), v10);
      v12 = v11;
      if ((*(v11 + 60) - 2) >= 3)
      {
        v13 = *(v11 + 48) & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(v13 + 23);
        if (v14 < 0)
        {
          v13 = *v13;
          v14 = *((*(v11 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        v21[0] = v13;
        v21[1] = v14;
        if (&v23 == sub_232C9D354(&v22, v21) && ((v15 = *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL, v16 = *(v15 + 23), v16 < 0) ? (v17 = *v15, v16 = *(v15 + 8)) : (v17 = (*(v12 + 48) & 0xFFFFFFFFFFFFFFFELL)), v16 != asc_232D0C525[*v17 >> 4]))
        {
          if (!sub_232CA8C78(5))
          {
LABEL_31:
            __assert_rtn("_internal_set_type", "sentencepiece_model.pb.h", 4686, "::sentencepiece::ModelProto_SentencePiece_Type_IsValid(value)");
          }

          v18 = 5;
        }

        else
        {
          if (!sub_232CA8C78(1))
          {
            goto LABEL_31;
          }

          v18 = 1;
        }

        *(v12 + 40) |= 4u;
        *(v12 + 60) = v18;
      }

      ++v10;
    }

    while (v10 < *(v8 + 16));
  }

  sub_232CB32B4(a3);
  sub_232C86764(&v22, v23);
}

void *sub_232C8F060@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a2)
  {
    sub_232CB32BC(a2);
    v5 = a1[4];
    if (v5 && (v6 = __dynamic_cast(v5, &unk_284814880, &unk_284815860, 16)) != 0)
    {
      v7 = *(v6 + 9);
      if (v7)
      {
        v8 = (v7 + 8);
      }

      else
      {
        v8 = 0;
      }

      v9 = v6[16];
      if (v9)
      {
        v10 = 8 * v9;
        do
        {
          v11 = *v8;
          if (*(*v8 + 60) == 5)
          {
            if (!sub_232CA8C78(1))
            {
              sub_232C9F240();
            }

            *(v11 + 40) |= 4u;
            *(v11 + 60) = 1;
          }

          ++v8;
          v10 -= 8;
        }

        while (v10);
      }

      return sub_232CB32B4(a2);
    }

    else
    {
      LODWORD(v13) = 13;
      v12 = sub_232C83BBC(&v14);
      sub_232C85DAC(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v13);
      sub_232C85DAC(&v14, "(", 1);
      MEMORY[0x238392A80](&v14, 365);
      sub_232C85DAC(&v14, ") [", 3);
      sub_232C85DAC(&v14, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
      sub_232C85DAC(&v14, "] ", 2);
      sub_232C85DAC(&v14, "ResetVocabulary is not supported when mmap-based model is loaded.", 65);
      sub_232C809A4(&v13, a2);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v18);
    }
  }

  return result;
}

void sub_232C8F940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __p = (v10 - 176);
  sub_232C9C22C(&__p);
  __p = (v10 - 152);
  sub_232C9C22C(&__p);
  if (*(v10 - 105) < 0)
  {
    operator delete(*(v10 - 128));
  }

  v12 = *(v10 - 104);
  *(v10 - 104) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_232C8FA34(const char *a1, uint64_t a2, uint64_t a3)
{
  sub_232C9D3E4(v11);
  v5 = strlen(a1);
  v6 = sub_232C85DAC(&v12, a1, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x2383929F0](v11, a3);
    v7 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  }

  v11[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v9;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x238392BA0](&v16);
  return v7;
}

void sub_232C8FC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9D688(va, MEMORY[0x277D82818]);
  MEMORY[0x238392BA0](v3 + 128);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C8FC4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232C9C280(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + v5);
      v9 = *(v4 + v5 + 23);
      if (v9 < 0)
      {
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = v8;
      }

      v11 = (*result + v6);
      *v11 = v10;
      v11[1] = v9;
      ++v7;
      v4 = *a1;
      v6 += 16;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v7);
  }

  return result;
}

uint64_t sub_232C8FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_232CB32BC(a5);
    if (a4)
    {
      sub_232C90010(a4);
      sub_232CA6AF8(&v16, 0);
      (*(*a1 + 232))(a1, a2, a3, &v16);
      if (!*a5)
      {
        sub_232CB32BC(a5);
        if (v21)
        {
          v11 = v21 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v20)
        {
          v12 = *(a4 + 8);
          v13 = 8 * v20;
          do
          {
            v14 = *(*v11 + 48);
            if (v12 >= *(a4 + 16))
            {
              v12 = sub_232C86580(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_232C9D7D8(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
              v12 += 24;
            }

            *(a4 + 8) = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_232CB32B4(a5);
      }

      return sub_232CA6C20(&v16);
    }

    else
    {
      LODWORD(v16) = 13;
      v15 = sub_232C83BBC(&v17);
      sub_232C85DAC(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v16);
      sub_232C85DAC(&v17, "(", 1);
      MEMORY[0x238392A80](&v17, 415);
      sub_232C85DAC(&v17, ") [", 3);
      sub_232C85DAC(&v17, "pieces", 6);
      sub_232C85DAC(&v17, "] ", 2);
      sub_232C85DAC(&v17, "output container is null", 24);
      sub_232C809A4(&v16, a5);
      v17 = *MEMORY[0x277D82828];
      *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
      v18 = MEMORY[0x277D82878] + 16;
      if (v23 < 0)
      {
        operator delete(__p);
      }

      v18 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v19);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v24);
    }
  }

  return result;
}

void sub_232C90010(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_232C90060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_232CB32BC(a5);
    if (a4)
    {
      a4[1] = *a4;
      sub_232CA6AF8(&v24, 0);
      (*(*a1 + 232))(a1, a2, a3, &v24);
      if (!*a5)
      {
        sub_232CB32BC(a5);
        if (v29)
        {
          v11 = v29 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v28)
        {
          v12 = a4[1];
          v13 = 8 * v28;
          do
          {
            v14 = *(*v11 + 64);
            v15 = a4[2];
            if (v12 >= v15)
            {
              v16 = *a4;
              v17 = v12 - *a4;
              v18 = v17 >> 2;
              v19 = (v17 >> 2) + 1;
              if (v19 >> 62)
              {
                sub_232C84C3C();
              }

              v20 = v15 - v16;
              if (v20 >> 1 > v19)
              {
                v19 = v20 >> 1;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v21 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                sub_232C86538(a4, v21);
              }

              *(4 * v18) = v14;
              v12 = (4 * v18 + 4);
              memcpy(0, v16, v17);
              v22 = *a4;
              *a4 = 0;
              a4[1] = v12;
              a4[2] = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              *v12++ = v14;
            }

            a4[1] = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_232CB32B4(a5);
      }

      return sub_232CA6C20(&v24);
    }

    else
    {
      v24 = 13;
      v23 = sub_232C83BBC(&v25);
      sub_232C85DAC(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v25, "(", 1);
      MEMORY[0x238392A80](&v25, 428);
      sub_232C85DAC(&v25, ") [", 3);
      sub_232C85DAC(&v25, "ids", 3);
      sub_232C85DAC(&v25, "] ", 2);
      sub_232C85DAC(&v25, "output container is null", 24);
      sub_232C809A4(&v24, a5);
      v25 = *MEMORY[0x277D82828];
      *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82828] + 24);
      v26 = MEMORY[0x277D82878] + 16;
      if (v31 < 0)
      {
        operator delete(__p);
      }

      v26 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v27);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v32);
    }
  }

  return result;
}

void sub_232C903E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

void sub_232C90414(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_232C8FC4C(a2, __p);
  (*(*a1 + 160))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_232C9049C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C904B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_232CA6AF8(&v10, 0);
      (*(*a1 + 272))(a1, a2, &v10);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_232CB32B4(a4);
      }

      return sub_232CA6C20(&v10);
    }

    else
    {
      LODWORD(v10) = 13;
      v9 = sub_232C83BBC(&v11);
      sub_232C85DAC(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v10);
      sub_232C85DAC(&v11, "(", 1);
      MEMORY[0x238392A80](&v11, 447);
      sub_232C85DAC(&v11, ") [", 3);
      sub_232C85DAC(&v11, "detokenized", 11);
      sub_232C85DAC(&v11, "] ", 2);
      sub_232C85DAC(&v11, "output container is null", 24);
      sub_232C809A4(&v10, a4);
      v11 = *MEMORY[0x277D82828];
      *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
      v12 = MEMORY[0x277D82878] + 16;
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      v12 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v13);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v15);
    }
  }

  return result;
}

uint64_t sub_232C90798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_232CA6AF8(&v10, 0);
      (*(*a1 + 280))(a1, a2, &v10);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_232CB32B4(a4);
      }

      return sub_232CA6C20(&v10);
    }

    else
    {
      LODWORD(v10) = 13;
      v9 = sub_232C83BBC(&v11);
      sub_232C85DAC(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v10);
      sub_232C85DAC(&v11, "(", 1);
      MEMORY[0x238392A80](&v11, 458);
      sub_232C85DAC(&v11, ") [", 3);
      sub_232C85DAC(&v11, "detokenized", 11);
      sub_232C85DAC(&v11, "] ", 2);
      sub_232C85DAC(&v11, "output container is null", 24);
      sub_232C809A4(&v10, a4);
      v11 = *MEMORY[0x277D82828];
      *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
      v12 = MEMORY[0x277D82878] + 16;
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      v12 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v13);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v15);
    }
  }

  return result;
}

uint64_t sub_232C90A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      v13 = *a5;
      v14 = a5[1];
      while (v14 != v13)
      {
        v14 -= 3;
        v31 = v14;
        sub_232C9C22C(&v31);
      }

      a5[1] = v13;
      sub_232CA75C0(&v31, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v31);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v35)
        {
          v15 = (v35 + 8);
        }

        else
        {
          v15 = 0;
        }

        if (LODWORD(v34.__locale_))
        {
          v16 = &v15[SLODWORD(v34.__locale_)];
          do
          {
            v17 = *v15;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v18 = *(v17 + 64);
            if (v18)
            {
              v19 = v18 + 8;
            }

            else
            {
              v19 = 0;
            }

            v20 = *(v17 + 56);
            if (v20)
            {
              v21 = 0;
              v22 = 8 * v20;
              do
              {
                v23 = *(*v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v21 >= v30)
                {
                  v21 = sub_232C86580(&v28, v23);
                }

                else
                {
                  if (*(v23 + 23) < 0)
                  {
                    sub_232C866C0(v21, *v23, *(v23 + 8));
                  }

                  else
                  {
                    v24 = *v23;
                    *(v21 + 16) = *(v23 + 16);
                    *v21 = v24;
                  }

                  v21 += 24;
                }

                v29 = v21;
                v19 += 8;
                v22 -= 8;
              }

              while (v22);
            }

            v25 = a5[1];
            if (v25 >= a5[2])
            {
              v26 = sub_232C9D898(a5, &v28);
            }

            else
            {
              sub_232C9D838(a5, &v28);
              v26 = (v25 + 24);
            }

            a5[1] = v26;
            v39 = &v28;
            sub_232C9C22C(&v39);
            ++v15;
          }

          while (v15 != v16);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA767C(&v31);
    }

    else
    {
      LODWORD(v31) = 13;
      v27 = sub_232C83BBC(&v32);
      sub_232C85DAC(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v32, "(", 1);
      MEMORY[0x238392A80](&v32, 470);
      sub_232C85DAC(&v32, ") [", 3);
      sub_232C85DAC(&v32, "pieces", 6);
      sub_232C85DAC(&v32, "] ", 2);
      sub_232C85DAC(&v32, "output container is null", 24);
      sub_232C809A4(&v31, a6);
      v32 = *MEMORY[0x277D82828];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
      v33 = MEMORY[0x277D82878] + 16;
      if (v37 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v34);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v38);
    }
  }

  return result;
}

void sub_232C90E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C90E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      sub_232C912DC(a5);
      sub_232CA75C0(&v38, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v38);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v42)
        {
          v13 = (v42 + 8);
        }

        else
        {
          v13 = 0;
        }

        if (LODWORD(v41.__locale_))
        {
          v34 = &v13[SLODWORD(v41.__locale_)];
          do
          {
            v14 = *v13;
            __src = 0;
            v36 = 0;
            v37 = 0;
            v15 = *(v14 + 64);
            if (v15)
            {
              v16 = v15 + 8;
            }

            else
            {
              v16 = 0;
            }

            v17 = *(v14 + 56);
            if (v17)
            {
              v18 = 0;
              v19 = 8 * v17;
              do
              {
                v20 = *(*v16 + 64);
                if (v18 >= v37)
                {
                  v21 = __src;
                  v22 = v18 - __src;
                  v23 = (v18 - __src) >> 2;
                  v24 = v23 + 1;
                  if ((v23 + 1) >> 62)
                  {
                    sub_232C84C3C();
                  }

                  v25 = v37 - __src;
                  if ((v37 - __src) >> 1 > v24)
                  {
                    v24 = v25 >> 1;
                  }

                  if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v26 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v26 = v24;
                  }

                  if (v26)
                  {
                    sub_232C86538(&__src, v26);
                  }

                  v27 = (v18 - __src) >> 2;
                  v28 = (4 * v23);
                  v29 = (4 * v23 - 4 * v27);
                  *v28 = v20;
                  v18 = (v28 + 1);
                  memcpy(v29, v21, v22);
                  v30 = __src;
                  __src = v29;
                  v36 = v18;
                  v37 = 0;
                  if (v30)
                  {
                    operator delete(v30);
                  }
                }

                else
                {
                  *v18 = v20;
                  v18 += 4;
                }

                v36 = v18;
                v16 += 8;
                v19 -= 8;
              }

              while (v19);
            }

            v31 = a5[1];
            if (v31 >= a5[2])
            {
              v32 = sub_232C9DCD0(a5, &__src);
            }

            else
            {
              sub_232C9DC7C(a5, &__src);
              v32 = (v31 + 24);
            }

            a5[1] = v32;
            if (__src)
            {
              v36 = __src;
              operator delete(__src);
            }

            ++v13;
          }

          while (v13 != v34);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA767C(&v38);
    }

    else
    {
      v38 = 13;
      v33 = sub_232C83BBC(&v39);
      sub_232C85DAC(v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v39, "(", 1);
      MEMORY[0x238392A80](&v39, 488);
      sub_232C85DAC(&v39, ") [", 3);
      sub_232C85DAC(&v39, "ids", 3);
      sub_232C85DAC(&v39, "] ", 2);
      sub_232C85DAC(&v39, "output container is null", 24);
      sub_232C809A4(&v38, a6);
      v39 = *MEMORY[0x277D82828];
      *(&v39 + *(v39 - 24)) = *(MEMORY[0x277D82828] + 24);
      v40 = MEMORY[0x277D82878] + 16;
      if (v44 < 0)
      {
        operator delete(__p);
      }

      v40 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v41);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v45);
    }
  }

  return result;
}

void sub_232C91294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

void sub_232C912DC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_232C91334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      sub_232C90010(a5);
      sub_232CA6AF8(&v20, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v20, a7);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v25)
        {
          v15 = v25 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v24)
        {
          v16 = *(a5 + 8);
          v17 = 8 * v24;
          do
          {
            v18 = *(*v15 + 48);
            if (v16 >= *(a5 + 16))
            {
              v16 = sub_232C86580(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_232C9D7D8(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
              v16 += 24;
            }

            *(a5 + 8) = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA6C20(&v20);
    }

    else
    {
      LODWORD(v20) = 13;
      v19 = sub_232C83BBC(&v21);
      sub_232C85DAC(v19, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v20);
      sub_232C85DAC(&v21, "(", 1);
      MEMORY[0x238392A80](&v21, 506);
      sub_232C85DAC(&v21, ") [", 3);
      sub_232C85DAC(&v21, "pieces", 6);
      sub_232C85DAC(&v21, "] ", 2);
      sub_232C85DAC(&v21, "output container is null", 24);
      sub_232C809A4(&v20, a6);
      v21 = *MEMORY[0x277D82828];
      *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
      v22 = MEMORY[0x277D82878] + 16;
      if (v27 < 0)
      {
        operator delete(__p);
      }

      v22 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v23);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v28);
    }
  }

  return result;
}

uint64_t sub_232C91678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      a5[1] = *a5;
      sub_232CA6AF8(&v28, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v28, a7);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v33)
        {
          v15 = v33 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v32)
        {
          v16 = a5[1];
          v17 = 8 * v32;
          do
          {
            v18 = *(*v15 + 64);
            v19 = a5[2];
            if (v16 >= v19)
            {
              v20 = *a5;
              v21 = v16 - *a5;
              v22 = v21 >> 2;
              v23 = (v21 >> 2) + 1;
              if (v23 >> 62)
              {
                sub_232C84C3C();
              }

              v24 = v19 - v20;
              if (v24 >> 1 > v23)
              {
                v23 = v24 >> 1;
              }

              if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v25 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                sub_232C86538(a5, v25);
              }

              *(4 * v22) = v18;
              v16 = (4 * v22 + 4);
              memcpy(0, v20, v21);
              v26 = *a5;
              *a5 = 0;
              a5[1] = v16;
              a5[2] = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v16++ = v18;
            }

            a5[1] = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA6C20(&v28);
    }

    else
    {
      v28 = 13;
      v27 = sub_232C83BBC(&v29);
      sub_232C85DAC(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v29, "(", 1);
      MEMORY[0x238392A80](&v29, 520);
      sub_232C85DAC(&v29, ") [", 3);
      sub_232C85DAC(&v29, "ids", 3);
      sub_232C85DAC(&v29, "] ", 2);
      sub_232C85DAC(&v29, "output container is null", 24);
      sub_232C809A4(&v28, a6);
      v29 = *MEMORY[0x277D82828];
      *(&v29 + *(v29 - 24)) = *(MEMORY[0x277D82828] + 24);
      v30 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(__p);
      }

      v30 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v31);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v36);
    }
  }

  return result;
}

void sub_232C91A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C91A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_232CB32BC(a8);
    if (a7)
    {
      v19 = *a7;
      v20 = a7[1];
      while (v20 != v19)
      {
        v20 -= 4;
        v39 = v20;
        sub_232C9C22C(&v39);
      }

      a7[1] = v19;
      sub_232CA75C0(&v39, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v39, a9);
      if (!*a8)
      {
        sub_232CB32BC(a8);
        v21 = *a7;
        v22 = a7[1];
        while (v22 != v21)
        {
          v22 -= 4;
          v36 = v22;
          sub_232C9C22C(&v36);
        }

        a7[1] = v21;
        sub_232C91ED8(a7, SLODWORD(v42.__locale_));
        if (v43)
        {
          v24 = (v43 + 8);
        }

        else
        {
          v24 = 0;
        }

        if (LODWORD(v42.__locale_))
        {
          v25 = &v24[SLODWORD(v42.__locale_)];
          do
          {
            v26 = *v24;
            v36 = 0;
            __dst = 0;
            v38 = 0;
            sub_232C91F74(&v36, *(v26 + 56));
            v27 = *(v26 + 64);
            if (v27)
            {
              v28 = v27 + 8;
            }

            else
            {
              v28 = 0;
            }

            v29 = *(v26 + 56);
            if (v29)
            {
              v30 = __dst;
              v31 = 8 * v29;
              do
              {
                v32 = *(*v28 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v30 >= v38)
                {
                  v30 = sub_232C86580(&v36, v32);
                }

                else
                {
                  if (*(v32 + 23) < 0)
                  {
                    sub_232C866C0(v30, *v32, *(v32 + 8));
                  }

                  else
                  {
                    v33 = *v32;
                    *(v30 + 16) = *(v32 + 16);
                    *v30 = v33;
                  }

                  v30 += 24;
                }

                __dst = v30;
                v28 += 8;
                v31 -= 8;
              }

              while (v31);
            }

            LODWORD(v47[0]) = *(v26 + 80);
            v34 = a7[1];
            if (v34 >= a7[2])
            {
              v35 = sub_232C9E068(a7, &v36, v47);
            }

            else
            {
              sub_232C9DFF4(a7, &v36, v47);
              v35 = (v34 + 32);
            }

            a7[1] = v35;
            v47[0] = &v36;
            sub_232C9C22C(v47);
            ++v24;
          }

          while (v24 != v25);
        }

        sub_232CB32B4(a8);
      }

      return sub_232CA767C(&v39);
    }

    else
    {
      LODWORD(v39) = 13;
      v23 = sub_232C83BBC(&v40);
      sub_232C85DAC(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v40, "(", 1);
      MEMORY[0x238392A80](&v40, 535);
      sub_232C85DAC(&v40, ") [", 3);
      sub_232C85DAC(&v40, "pieces", 6);
      sub_232C85DAC(&v40, "] ", 2);
      sub_232C85DAC(&v40, "output container is null", 24);
      sub_232C809A4(&v39, a8);
      v40 = *MEMORY[0x277D82828];
      *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
      v41 = MEMORY[0x277D82878] + 16;
      if (v45 < 0)
      {
        operator delete(__p);
      }

      v41 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v42);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v46);
    }
  }

  return result;
}

void sub_232C91E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

const void **sub_232C91ED8(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_232C8592C(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

const void **sub_232C91F74(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_232C8644C(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

uint64_t sub_232C92030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_232CB32BC(a8);
    if (a7)
    {
      sub_232C85C3C(a7);
      sub_232CA75C0(&v46, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v46, a9);
      if (!*a8)
      {
        v40 = a8;
        sub_232CB32BC(a8);
        sub_232C85C3C(a7);
        sub_232C924F4(a7, SLODWORD(v49.__locale_));
        if (v50)
        {
          v19 = (v50 + 8);
        }

        else
        {
          v19 = 0;
        }

        if (LODWORD(v49.__locale_))
        {
          v41 = &v19[SLODWORD(v49.__locale_)];
          do
          {
            v20 = *v19;
            __src = 0;
            v44 = 0;
            v45 = 0;
            sub_232C92590(&__src, *(v20 + 56));
            v21 = *(v20 + 64);
            if (v21)
            {
              v22 = v21 + 8;
            }

            else
            {
              v22 = 0;
            }

            v23 = *(v20 + 56);
            if (v23)
            {
              v24 = v44;
              v25 = 8 * v23;
              do
              {
                v26 = *(*v22 + 64);
                if (v24 >= v45)
                {
                  v27 = __src;
                  v28 = v24 - __src;
                  v29 = (v24 - __src) >> 2;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 62)
                  {
                    sub_232C84C3C();
                  }

                  v31 = v45 - __src;
                  if ((v45 - __src) >> 1 > v30)
                  {
                    v30 = v31 >> 1;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  if (v32)
                  {
                    sub_232C86538(&__src, v32);
                  }

                  v33 = v29;
                  v34 = (4 * v29);
                  v35 = &v34[-v33];
                  *v34 = v26;
                  v24 = (v34 + 1);
                  memcpy(v35, v27, v28);
                  v36 = __src;
                  __src = v35;
                  v44 = v24;
                  v45 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  *v24 = v26;
                  v24 += 4;
                }

                v44 = v24;
                v22 += 8;
                v25 -= 8;
              }

              while (v25);
            }

            v42 = *(v20 + 80);
            v37 = a7[1];
            if (v37 >= a7[2])
            {
              v38 = sub_232C9E2D8(a7, &__src, &v42);
            }

            else
            {
              sub_232C9E270(a7, &__src, &v42);
              v38 = (v37 + 32);
            }

            a7[1] = v38;
            if (__src)
            {
              v44 = __src;
              operator delete(__src);
            }

            ++v19;
          }

          while (v19 != v41);
        }

        sub_232CB32B4(v40);
      }

      return sub_232CA767C(&v46);
    }

    else
    {
      v46 = 13;
      v39 = sub_232C83BBC(&v47);
      sub_232C85DAC(v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v47, "(", 1);
      MEMORY[0x238392A80](&v47, 560);
      sub_232C85DAC(&v47, ") [", 3);
      sub_232C85DAC(&v47, "ids", 3);
      sub_232C85DAC(&v47, "] ", 2);
      sub_232C85DAC(&v47, "output container is null", 24);
      sub_232C809A4(&v46, a8);
      v47 = *MEMORY[0x277D82828];
      *(&v47 + *(v47 - 24)) = *(MEMORY[0x277D82828] + 24);
      v48 = MEMORY[0x277D82878] + 16;
      if (v52 < 0)
      {
        operator delete(__p);
      }

      v48 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v49);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v53);
    }
  }

  return result;
}

void sub_232C924A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

const void **sub_232C924F4(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_232C9E190(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

void sub_232C92590(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_232C86538(a1, a2);
    }

    sub_232C84C3C();
  }
}

uint64_t *sub_232C92630@<X0>(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, char ***a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v10 = *a6;
  v91 = a6[1];
  if (*a6 != v91)
  {
    v11 = a5;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v10 + 8);
      if (!v14)
      {
        LODWORD(__p[0]) = 13;
        v79 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v79, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 591);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "!w.empty()", 10);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C85DAC(&__p[1], "Empty piece is not allowed.", 27);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v15 = *v10;
      v16 = *(v10 + 16);
      v93 = ((*a1)[66])(a1, v16);
      if (((*a1)[67])(a1, v16))
      {
        v17 = *(a7 + 64);
        if (v17)
        {
          v18 = *(a7 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(a7 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
LABEL_55:
            *(v20 + 40) |= 1u;
            sub_232C9C334(__p, v15, v14);
            v48 = *(v20 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_232CB44A4((v20 + 48), __p, v48);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v49 = *(v20 + 40);
            *(v20 + 64) = v16;
            v50 = *(*v11 + 8 * v12);
            *(v20 + 68) = v50;
            *(v20 + 40) = v49 | 0x1C;
            goto LABEL_80;
          }

          if (v19 != *(a7 + 60))
          {
LABEL_54:
            *v17 = v19 + 1;
            v20 = sub_232CA7CD4(*(a7 + 48));
            v46 = *(a7 + 56);
            v47 = *(a7 + 64) + 8 * v46;
            *(a7 + 56) = v46 + 1;
            *(v47 + 8) = v20;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a7 + 60);
        }

        sub_232CC74E8((a7 + 48), v19 + 1);
        v17 = *(a7 + 64);
        v19 = *v17;
        goto LABEL_54;
      }

      v21 = *v11;
      v22 = v11[1] - *v11;
      if (v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v80 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v80, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 605);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(begin) < (norm_to_orig.size())", 31);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v23 = v14 + v12;
      if (v14 + v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v81 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v81, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 606);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(end) < (norm_to_orig.size())", 29);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v24 = *(v21 + 8 * v12);
      if (a3 < v24)
      {
        LODWORD(__p[0]) = 13;
        v82 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v82, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 609);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(orig_begin) <= (input.size())", 30);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v25 = *(v21 + 8 * v23);
      if (v25 > a3)
      {
        LODWORD(__p[0]) = 13;
        v83 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v83, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 610);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(orig_end) <= (input.size())", 28);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v26 = v25 - v24;
      if (v25 < v24)
      {
        LODWORD(__p[0]) = 13;
        v84 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v84, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 611);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(orig_begin) <= (orig_end)", 26);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      if (a3 - v24 < v26)
      {
        v26 = a3 - v24;
      }

      __len = v26;
      if (v93)
      {
        if ((*(*a1[1] + 184))(a1[1]))
        {
          while (1)
          {
            v28 = *v15++;
            v27 = v28;
            v29 = *(a7 + 64);
            if (!v29)
            {
              break;
            }

            v30 = *(a7 + 56);
            v31 = *v29;
            if (v30 >= *v29)
            {
              if (v31 == *(a7 + 60))
              {
LABEL_22:
                sub_232CC74E8((a7 + 48), v31 + 1);
                v29 = *(a7 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = sub_232CA7CD4(*(a7 + 48));
              v33 = *(a7 + 56);
              v34 = *(a7 + 64) + 8 * v33;
              *(a7 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              goto LABEL_24;
            }

            *(a7 + 56) = v30 + 1;
            v32 = *&v29[2 * v30 + 2];
LABEL_24:
            sub_232C819C8(&__dst, v27);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            v37 = (*(*a1[1] + 112))(a1[1], p_dst, size);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            *(v32 + 40) |= 1u;
            sub_232C9C334(__p, v38, v39);
            v40 = *(v32 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_232CB44A4((v32 + 48), __p, v40);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = *(v32 + 40);
            *(v32 + 40) = v41 | 4;
            *(v32 + 64) = v37;
            if (v14 == 1)
            {
              *(v32 + 40) = v41 | 6;
              sub_232C9C334(__p, &a2[v24], __len);
              v42 = *(v32 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              sub_232CB44A4((v32 + 56), __p, v42);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(v32 + 40);
              *(v32 + 68) = v24;
              v44 = v43 | 0x18;
              v45 = v25;
            }

            else
            {
              *(v32 + 68) = v24;
              v44 = v41 | 0x1C;
              v45 = v24;
            }

            *(v32 + 40) = v44;
            *(v32 + 72) = v45;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!--v14)
            {
              v12 = v23;
              v11 = a5;
              goto LABEL_81;
            }
          }

          v31 = *(a7 + 60);
          goto LABEL_22;
        }

        if (v13)
        {
          v51 = sub_232C9C948(a7 + 48, *(a7 + 56) - 1);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_134;
          }

          v20 = v51;
          v52 = *(v51 + 48);
          v85 = (v51 + 48);
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v14;
          v62 = v52 & 0xFFFFFFFFFFFFFFFELL;
          memmove(&__dst, v15, v14);
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          v63 = *(v62 + 23);
          if (v63 >= 0)
          {
            v64 = v62;
          }

          else
          {
            v64 = *v62;
          }

          if (v63 >= 0)
          {
            v65 = *(v62 + 23);
          }

          else
          {
            v65 = *(v62 + 8);
          }

          v66 = std::string::insert(&__dst, 0, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97 = v66->__r_.__value_.__r.__words[2];
          *__p = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 1u;
          v68 = *(v20 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_232CB44A4(v85, __p, v68);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_134:
            sub_232C85C94();
          }

          v86 = *(v20 + 56);
          if (__len >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = __len;
          if (__len)
          {
            memmove(&__dst, &a2[v24], __len);
          }

          v11 = a5;
          v69 = v86 & 0xFFFFFFFFFFFFFFFELL;
          __dst.__r_.__value_.__s.__data_[__len] = 0;
          v70 = *((v86 & 0xFFFFFFFFFFFFFFFELL) + 23);
          if (v70 >= 0)
          {
            v71 = (v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            v72 = *(v69 + 23);
          }

          else
          {
            v72 = *(v69 + 8);
          }

          v73 = std::string::insert(&__dst, 0, v71, v72);
          v74 = *&v73->__r_.__value_.__l.__data_;
          v97 = v73->__r_.__value_.__r.__words[2];
          *__p = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 2u;
          v75 = *(v20 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_232CB44A4((v20 + 56), __p, v75);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(v20 + 40) |= 0x10u;
          LODWORD(v50) = v25;
          v12 = v23;
          goto LABEL_80;
        }
      }

      v53 = *(a7 + 64);
      if (!v53)
      {
        break;
      }

      v54 = *(a7 + 56);
      v55 = *v53;
      if (v54 >= *v53)
      {
        if (v55 == *(a7 + 60))
        {
LABEL_69:
          sub_232CC74E8((a7 + 48), v55 + 1);
          v53 = *(a7 + 64);
          v55 = *v53;
        }

        *v53 = v55 + 1;
        v20 = sub_232CA7CD4(*(a7 + 48));
        v56 = *(a7 + 56);
        v57 = *(a7 + 64) + 8 * v56;
        *(a7 + 56) = v56 + 1;
        *(v57 + 8) = v20;
        goto LABEL_71;
      }

      *(a7 + 56) = v54 + 1;
      v20 = *&v53[2 * v54 + 2];
LABEL_71:
      *(v20 + 40) |= 1u;
      sub_232C9C334(__p, v15, v14);
      v58 = *(v20 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB44A4((v20 + 48), __p, v58);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(v20 + 40);
      *(v20 + 64) = v16;
      *(v20 + 40) = v59 | 6;
      sub_232C9C334(__p, &a2[v24], __len);
      v60 = *(v20 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB44A4((v20 + 56), __p, v60);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v61 = *(v20 + 40);
      *(v20 + 68) = v24;
      *(v20 + 40) = v61 | 0x18;
      LODWORD(v50) = v25;
      v12 = v23;
      v11 = a5;
LABEL_80:
      *(v20 + 72) = v50;
      v23 = v12;
LABEL_81:
      v10 += 24;
      v13 = v93;
      if (v10 == v91)
      {
        goto LABEL_116;
      }
    }

    v55 = *(a7 + 60);
    goto LABEL_69;
  }

  v23 = 0;
LABEL_116:
  if (v23 == a4)
  {
    result = sub_232C934E4(a1, a1 + 5, a7, a8);
    if (!*a8)
    {
      sub_232CB32BC(a8);
      *(a7 + 40) |= 1u;
      sub_232C9C334(__p, a2, a3);
      v77 = *(a7 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB44A4((a7 + 72), __p, v77);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      return sub_232CB32B4(a8);
    }

    return result;
  }

  LODWORD(__p[0]) = 13;
  v78 = sub_232C83BBC(&__p[1]);
  sub_232C85DAC(v78, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
  sub_232C85DAC(&__p[1], "(", 1);
  MEMORY[0x238392A80](&__p[1], 662);
  sub_232C85DAC(&__p[1], ") [", 3);
  sub_232C85DAC(&__p[1], "(consumed) == (normalized.size())", 33);
  sub_232C85DAC(&__p[1], "] ", 2);
  sub_232C85DAC(&__p[1], "all normalized characters are not consumed.", 43);
  sub_232C809A4(__p, a8);
LABEL_130:
  __p[1] = *MEMORY[0x277D82828];
  *(&__p[1] + *(__p[1] - 3)) = *(MEMORY[0x277D82828] + 24);
  v97 = MEMORY[0x277D82878] + 16;
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  v97 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v98);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v100);
}

void sub_232C93438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C934E4@<X0>(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return sub_232CB32B4(a4);
  }

  while (1)
  {
    v9 = *v5;
    if (*v5 > 1)
    {
      break;
    }

    if (!v9)
    {
      v19 = *(a3 + 64);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a3 + 56);
      v22 = (v20 + 8 * v21 - 8);
      if (v21)
      {
        v23 = v22 > v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = v20 + 8;
        do
        {
          v25 = *(v24 - 8);
          v26 = *v22;
          if (*v22 != v25)
          {
            v27 = *(v25 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = *(v26 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            if (v27 == v28)
            {
              sub_232CA6858(v25, v26);
            }

            else
            {
              sub_232CC0994(v25, v26);
            }
          }

          v29 = v24 >= --v22;
          v24 += 8;
        }

        while (!v29);
      }

      goto LABEL_63;
    }

    if (v9 != 1)
    {
      return sub_232CB3420(a4, 13, "unknown extra_option type.", 0x1AuLL);
    }

    v10 = *(a3 + 64);
    if (!v10)
    {
      v12 = *(a3 + 60);
      goto LABEL_51;
    }

    v11 = *(a3 + 56);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v12 == *(a3 + 60))
      {
LABEL_51:
        sub_232CC74E8((a3 + 48), v12 + 1);
        v10 = *(a3 + 64);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v42 = sub_232CA7CD4(*(a3 + 48));
      v43 = *(a3 + 56);
      v44 = *(a3 + 64) + 8 * v43;
      v13 = v43 + 1;
      *(a3 + 56) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_53;
    }

    v13 = v11 + 1;
    *(a3 + 56) = v11 + 1;
LABEL_53:
    if (v13 > 1)
    {
      v45 = v13 + 1;
      v46 = 8 * v13 - 8;
      do
      {
        *(*(a3 + 64) + v46) = vextq_s8(*(*(a3 + 64) + v46), *(*(a3 + 64) + v46), 8uLL);
        --v45;
        v46 -= 8;
      }

      while (v45 > 2);
    }

    if (v13 < 1)
    {
      sub_232CB5704(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
      v47 = sub_232CB571C(__p, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v56, &v47->__r_.__value_.__l.__data_);
      sub_232CB5860(__p);
    }

    v48 = *(*(a3 + 64) + 8);
    v49 = sub_232C80DB4(a1[1]);
    v50 = strlen(v49);
    v51 = (*(*a1 + 504))(a1, v49, v50);
    *(v48 + 40) |= 4u;
    *(v48 + 64) = v51;
    v52 = sub_232C80DB4(a1[1]);
    sub_232C80DB4(a1[1]);
    *(v48 + 40) |= 1u;
    sub_232C9C334(__p, v52, v53);
    v54 = *(v48 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_232CB44A4((v48 + 48), __p, v54);
LABEL_61:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

LABEL_63:
    if (++v5 == v6)
    {
      return sub_232CB32B4(a4);
    }
  }

  if (v9 == 2)
  {
    v30 = *(a3 + 64);
    if (v30)
    {
      v31 = *(a3 + 56);
      v32 = *v30;
      if (v31 < *v30)
      {
        *(a3 + 56) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_47:
        v36 = sub_232C80E38(a1[1]);
        v37 = strlen(v36);
        v38 = (*(*a1 + 504))(a1, v36, v37);
        *(v33 + 40) |= 4u;
        *(v33 + 64) = v38;
        v39 = sub_232C80E38(a1[1]);
        sub_232C80E38(a1[1]);
        *(v33 + 40) |= 1u;
        sub_232C9C334(__p, v39, v40);
        v41 = *(v33 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        sub_232CB44A4((v33 + 48), __p, v41);
        goto LABEL_61;
      }

      if (v32 != *(a3 + 60))
      {
LABEL_46:
        *v30 = v32 + 1;
        v33 = sub_232CA7CD4(*(a3 + 48));
        v34 = *(a3 + 56);
        v35 = *(a3 + 64) + 8 * v34;
        *(a3 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a3 + 60);
    }

    sub_232CC74E8((a3 + 48), v32 + 1);
    v30 = *(a3 + 64);
    v32 = *v30;
    goto LABEL_46;
  }

  if (v9 == 3)
  {
    if (*(a3 + 56) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = sub_232C9C948(a3 + 48, v14);
        if ((*(*a1 + 528))(a1, *(v15 + 64)))
        {
          v16 = sub_232C80D30(a1[1]);
          sub_232C80D30(a1[1]);
          *(v15 + 40) |= 1u;
          sub_232C9C334(__p, v16, v17);
          v18 = *(v15 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_232CB44A4((v15 + 48), __p, v18);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        ++v14;
      }

      while (v14 < *(a3 + 56));
    }

    goto LABEL_63;
  }

  return sub_232CB3420(a4, 13, "unknown extra_option type.", 0x1AuLL);
}

void sub_232C93A2C(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (!*a5)
  {
    sub_232CB32BC(a5);
    if (a4)
    {
      sub_232CA6C9C(a4);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v17, &v14);
      if (!*a5)
      {
        sub_232CB32BC(a5);
        (*(*a1[1] + 40))(__p);
        if (v19 >= 0)
        {
          v10 = HIBYTE(v19);
        }

        else
        {
          v10 = v18;
        }

        sub_232C92630(a1, a2, a3, v10, &v14, __p, a4, a5);
        if (!*a5)
        {
          v11 = sub_232CB32BC(a5);
          sub_232CB32B4(v11);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      LODWORD(v17) = 13;
      v12 = sub_232C83BBC(&v18);
      sub_232C85DAC(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v18, "(", 1);
      MEMORY[0x238392A80](&v18, 674);
      sub_232C85DAC(&v18, ") [", 3);
      sub_232C85DAC(&v18, "spt", 3);
      sub_232C85DAC(&v18, "] ", 2);
      sub_232C85DAC(&v18, "output proto is null", 20);
      sub_232C809A4(&v17, a5);
      v18 = *MEMORY[0x277D82828];
      *(&v18 + *(v18 - 24)) = *(MEMORY[0x277D82828] + 24);
      v19 = MEMORY[0x277D82878] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      MEMORY[0x238392BA0](&v22);
    }
  }
}

void sub_232C93D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C93DE0(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (*a5)
  {
    return;
  }

  sub_232CB32BC(a5);
  if (a4)
  {
    sub_232CA76B8(a4);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v26, &v23);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      if ((*(*a1[1] + 88))(a1[1]))
      {
        (*(*a1[1] + 48))(&v21);
        v10 = v21;
        v11 = v22;
        if (v21 != v22)
        {
          while (1)
          {
            v12 = *(a4 + 32);
            if (!v12)
            {
              break;
            }

            v13 = *(a4 + 24);
            v14 = *v12;
            if (v13 >= *v12)
            {
              if (v14 == *(a4 + 28))
              {
LABEL_12:
                sub_232CC74E8((a4 + 16), v14 + 1);
                v12 = *(a4 + 32);
                v14 = *v12;
              }

              *v12 = v14 + 1;
              v15 = sub_232CA7DA4(*(a4 + 16));
              v16 = *(a4 + 24);
              v17 = *(a4 + 32) + 8 * v16;
              *(a4 + 24) = v16 + 1;
              *(v17 + 8) = v15;
              goto LABEL_14;
            }

            *(a4 + 24) = v13 + 1;
            v15 = *&v12[2 * v13 + 2];
LABEL_14:
            v18 = *(v10 + 24);
            *(v15 + 40) |= 2u;
            *(v15 + 80) = v18;
            if (v28 >= 0)
            {
              v19 = HIBYTE(v28);
            }

            else
            {
              v19 = v27;
            }

            sub_232C92630(a1, a2, a3, v19, &v23, v10, v15, a5);
            if (*a5)
            {
              goto LABEL_29;
            }

            sub_232CB32BC(a5);
            v10 += 32;
            if (v10 == v11)
            {
              sub_232CB32B4(a5);
              goto LABEL_29;
            }
          }

          v14 = *(a4 + 28);
          goto LABEL_12;
        }

        LODWORD(v29) = 13;
        sub_232C83BBC(&v30);
        sub_232C85DAC(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v30, "(", 1);
        MEMORY[0x238392A80](&v30, 700);
        sub_232C85DAC(&v30, ") [", 3);
        sub_232C85DAC(&v30, "!nbests.empty()", 15);
        sub_232C85DAC(&v30, "] ", 2);
        sub_232C85DAC(&v30, "NBestEncode returns empty result.", 33);
        sub_232C809A4(&v29, a5);
        v30 = *MEMORY[0x277D82828];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
        v31 = MEMORY[0x277D82878] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x238392BA0](v35);
LABEL_29:
        v29 = &v21;
        sub_232C85BE8(&v29);
      }

      else
      {
        LODWORD(v29) = 13;
        sub_232C83BBC(&v30);
        sub_232C85DAC(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v30, "(", 1);
        MEMORY[0x238392A80](&v30, 696);
        sub_232C85DAC(&v30, ") [", 3);
        sub_232C85DAC(&v30, "model_->IsNBestEncodeAvailable()", 32);
        sub_232C85DAC(&v30, "] ", 2);
        sub_232C85DAC(&v30, "NBestEncode is not available for the current model.", 51);
        sub_232C809A4(&v29, a5);
        v30 = *MEMORY[0x277D82828];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
        v31 = MEMORY[0x277D82878] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x238392BA0](v35);
      }
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    LODWORD(v29) = 13;
    v20 = sub_232C83BBC(&v30);
    sub_232C85DAC(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v30, "(", 1);
    MEMORY[0x238392A80](&v30, 690);
    sub_232C85DAC(&v30, ") [", 3);
    sub_232C85DAC(&v30, "nbest_spt", 9);
    sub_232C85DAC(&v30, "] ", 2);
    sub_232C85DAC(&v30, "output proto is null", 20);
    sub_232C809A4(&v29, a5);
    v30 = *MEMORY[0x277D82828];
    *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
    v31 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v35);
  }
}

void sub_232C94574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_232C85BE8(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_232C94604(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  ((*a1)[11])(a1);
  if (*a6)
  {
    return;
  }

  sub_232CB32BC(a6);
  if (a5)
  {
    sub_232CA6C9C(a5);
    if (a4 < 513)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v33 = 0;
      v34 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v35, &__p);
      if (*a6)
      {
LABEL_5:
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v35);
        }

        return;
      }

      sub_232CB32BC(a6);
      v16 = (*(*a1[1] + 88))(a1[1]);
      if ((a4 & 0x80000000) == 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        if (a4 > 1)
        {
          (*(*a1[1] + 48))(&v30);
          if (v30 == v31)
          {
            LODWORD(v38) = 13;
            sub_232C83BBC(&v39);
            sub_232C85DAC(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_232C85DAC(&v39, "(", 1);
            MEMORY[0x238392A80](&v39, 735);
            sub_232C85DAC(&v39, ") [", 3);
            sub_232C85DAC(&v39, "!nbests.empty()", 15);
            sub_232C85DAC(&v39, "] ", 2);
            sub_232C85DAC(&v39, "NBestEncode returns empty result.", 33);
            sub_232C809A4(&v38, a6);
            sub_232C80A34(&v38);
          }

          else
          {
            LODWORD(v28) = 0;
            sub_232C9E3F4(&v38, (v31 - v30) >> 5, &v28);
            if (v31 != v30)
            {
              v19 = v38;
              if (((v31 - v30) >> 5) <= 1)
              {
                v20 = 1;
              }

              else
              {
                v20 = (v31 - v30) >> 5;
              }

              v21 = (v30 + 24);
              do
              {
                v22 = *v21;
                v21 += 8;
                *v19++ = expf(v22 * a7);
                --v20;
              }

              while (v20);
            }

            v23 = sub_232CB1490();
            sub_232C9E508(&v28, v38, v39);
            v24 = HIBYTE(v37);
            v25 = v36;
            v26 = sub_232C9E870(&v28, v23, &v28);
            if ((v24 & 0x80u) == 0)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            sub_232C92630(a1, a2, a3, v27, &__p, (v30 + 32 * v26), a5, a6);
            if (!*a6)
            {
              sub_232CB32BC(a6);
              if (v28)
              {
                v29 = v28;
                operator delete(v28);
              }

              if (v38)
              {
                v39 = v38;
                operator delete(v38);
              }

              v38 = &v30;
              sub_232C85BE8(&v38);
LABEL_55:
              sub_232CB32B4(a6);
              goto LABEL_5;
            }

            if (v28)
            {
              v29 = v28;
              operator delete(v28);
            }

            if (v38)
            {
              v39 = v38;
              operator delete(v38);
            }
          }

          v38 = &v30;
          sub_232C85BE8(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 40))(&v38);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      else
      {
        if (((*(*a1[1] + 80))(a1[1]) & 1) == 0)
        {
          LODWORD(v38) = 13;
          sub_232C83BBC(&v39);
          sub_232C85DAC(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
          sub_232C85DAC(&v39, "(", 1);
          MEMORY[0x238392A80](&v39, 724);
          sub_232C85DAC(&v39, ") [", 3);
          sub_232C85DAC(&v39, "model_->IsSampleEncodeAvailable()", 33);
          sub_232C85DAC(&v39, "] ", 2);
          sub_232C85DAC(&v39, "SampleEncode is not available for the current model.", 52);
          sub_232C809A4(&v38, a6);
          sub_232C80A34(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 56))(&v38, a7);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      sub_232C92630(a1, a2, a3, v18, &__p, &v38, a5, a6);
      if (*a6)
      {
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        goto LABEL_5;
      }

      sub_232CB32BC(a6);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      goto LABEL_55;
    }

    LODWORD(v38) = 13;
    v15 = sub_232C83BBC(&v39);
    sub_232C85DAC(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v39, "(", 1);
    MEMORY[0x238392A80](&v39, 717);
    sub_232C85DAC(&v39, ") [", 3);
    sub_232C85DAC(&v39, "(nbest_size) <= (512)", 21);
    sub_232C85DAC(&v39, "] ", 2);
    sub_232C85DAC(&v39, "nbest_size must be nbest_size <= 512", 36);
    sub_232C809A4(&v38, a6);
  }

  else
  {
    LODWORD(v38) = 13;
    v14 = sub_232C83BBC(&v39);
    sub_232C85DAC(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v39, "(", 1);
    MEMORY[0x238392A80](&v39, 715);
    sub_232C85DAC(&v39, ") [", 3);
    sub_232C85DAC(&v39, "spt", 3);
    sub_232C85DAC(&v39, "] ", 2);
    sub_232C85DAC(&v39, "output proto is null", 20);
    sub_232C809A4(&v38, a6);
  }

  v39 = *MEMORY[0x277D82828];
  *(&v39 + *(v39 - 3)) = *(MEMORY[0x277D82828] + 24);
  v40 = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  MEMORY[0x238392BA0](&v43);
}

void sub_232C94E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25)
{
  a24 = &a12;
  sub_232C85BE8(&a24);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_232C94F04(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X6>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(*a1[1] + 96))(a1[1]))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v28, &v25);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      (*(*a1[1] + 64))(&v23, a6);
      v12 = v23;
      v13 = v24;
      if (v23 != v24)
      {
        while (1)
        {
          v14 = *(a4 + 32);
          if (!v14)
          {
            break;
          }

          v15 = *(a4 + 24);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a4 + 28))
            {
LABEL_9:
              sub_232CC74E8((a4 + 16), v16 + 1);
              v14 = *(a4 + 32);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = sub_232CA7DA4(*(a4 + 16));
            v18 = *(a4 + 24);
            v19 = *(a4 + 32) + 8 * v18;
            *(a4 + 24) = v18 + 1;
            *(v19 + 8) = v17;
            goto LABEL_11;
          }

          *(a4 + 24) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_11:
          v20 = *(v12 + 24);
          *(v17 + 40) |= 2u;
          *(v17 + 80) = v20;
          if (v30 >= 0)
          {
            v21 = HIBYTE(v30);
          }

          else
          {
            v21 = v29;
          }

          sub_232C92630(a1, a2, a3, v21, &v25, v12, v17, a5);
          if (*a5)
          {
            goto LABEL_23;
          }

          sub_232CB32BC(a5);
          v12 += 32;
          if (v12 == v13)
          {
            sub_232CB32B4(a5);
            goto LABEL_23;
          }
        }

        v16 = *(a4 + 28);
        goto LABEL_9;
      }

      LODWORD(v31) = 13;
      sub_232C83BBC(&v32);
      sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v32, "(", 1);
      MEMORY[0x238392A80](&v32, 762);
      sub_232C85DAC(&v32, ") [", 3);
      sub_232C85DAC(&v32, "!results.empty()", 16);
      sub_232C85DAC(&v32, "] ", 2);
      sub_232C85DAC(&v32, "SampleEncodeAndScore returns empty result.", 42);
      sub_232C809A4(&v31, a5);
      v32 = *MEMORY[0x277D82828];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
      v33 = MEMORY[0x277D82878] + 16;
      if (v36 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x238392BA0](v37);
LABEL_23:
      v31 = &v23;
      sub_232C85BE8(&v31);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    LODWORD(v31) = 13;
    v22 = sub_232C83BBC(&v32);
    sub_232C85DAC(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v32, "(", 1);
    MEMORY[0x238392A80](&v32, 754);
    sub_232C85DAC(&v32, ") [", 3);
    sub_232C85DAC(&v32, "model_->IsSampleEncodeAndScoreAvailable()", 41);
    sub_232C85DAC(&v32, "] ", 2);
    sub_232C85DAC(&v32, "SampleEncodeAndScore is not available for the current model.", 60);
    sub_232C809A4(&v31, a5);
    v32 = *MEMORY[0x277D82828];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
    v33 = MEMORY[0x277D82878] + 16;
    if (v36 < 0)
    {
      operator delete(__p);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v37);
  }
}

void sub_232C954CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_232C85BE8(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_232C95544(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(**(a1 + 8) + 104))(*(a1 + 8)))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a3, &v18, &__p);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      if (v20 >= 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      if (v20 >= 0)
      {
        v13 = HIBYTE(v20);
      }

      else
      {
        v13 = v19;
      }

      *a4 = (*(**(a1 + 8) + 72))(*(a1 + 8), v12, v13, a6);
      sub_232CB32B4(a5);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }
  }

  else
  {
    LODWORD(v18) = 13;
    v14 = sub_232C83BBC(&v19);
    sub_232C85DAC(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v19, "(", 1);
    MEMORY[0x238392A80](&v19, 778);
    sub_232C85DAC(&v19, ") [", 3);
    sub_232C85DAC(&v19, "model_->IsCalculateEntropyAvailable()", 37);
    sub_232C85DAC(&v19, "] ", 2);
    sub_232C85DAC(&v19, "CalculateEntropy is not available for the current model.", 56);
    sub_232C809A4(&v18, a5);
    v19 = *MEMORY[0x277D82828];
    *(&v19 + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
    v20 = MEMORY[0x277D82878] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v21);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](&v23);
  }
}

void sub_232C95838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C95878(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_232C8FC4C(a2, __p);
  (*(*a1 + 272))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_232C95908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C95924(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v67[19] = *MEMORY[0x277D85DE8];
  v57 = a3;
  (*(*a1 + 88))(a4);
  if (*a4)
  {
    return;
  }

  sub_232CB32BC(a4);
  if (!v4)
  {
    LODWORD(__dst.__r_.__value_.__l.__data_) = 13;
    sub_232C83BBC(&__dst.__r_.__value_.__l.__size_);
    sub_232C85DAC(&__dst.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&__dst.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x238392A80](&__dst.__r_.__value_.__r.__words[1], 796);
    sub_232C85DAC(&__dst.__r_.__value_.__l.__size_, ") [", 3);
    sub_232C85DAC(&__dst.__r_.__value_.__l.__size_, "spt", 3);
    sub_232C85DAC(&__dst.__r_.__value_.__l.__size_, "] ", 2);
    sub_232C85DAC(&__dst.__r_.__value_.__l.__size_, "output proto is null", 20);
    sub_232C809A4(&__dst, a4);
    __dst.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__dst.__r_.__value_.__r.__words[1] + *(__dst.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __dst.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v66 < 0)
    {
      operator delete(__p);
    }

    __dst.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v63);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v67);
    return;
  }

  sub_232CA6C9C(v4);
  v8 = a1[4];
  if (v8 && (*(*v8 + 72))(v8))
  {
    v9 = (*(*a1[4] + 24))(a1[4]);
  }

  else
  {
    v9 = &unk_232D0071D;
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = v10[1];
      v14 = v57;
      v15 = *(v57 + 64);
      if (!v15)
      {
        break;
      }

      v16 = *(v57 + 56);
      v17 = *v15;
      if (v16 >= *v15)
      {
        if (v17 == *(v57 + 60))
        {
LABEL_18:
          sub_232CC74E8((v57 + 48), v17 + 1);
          v15 = *(v57 + 64);
          v17 = *v15;
        }

        *v15 = v17 + 1;
        v18 = sub_232CA7CD4(*(v14 + 48));
        v19 = *(v14 + 56);
        v20 = *(v14 + 64) + 8 * v19;
        *(v14 + 56) = v19 + 1;
        *(v20 + 8) = v18;
        goto LABEL_20;
      }

      *(v57 + 56) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
LABEL_20:
      *(v18 + 40) |= 1u;
      v21 = *(v18 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = sub_232CB44C8((v18 + 48), v21);
      MEMORY[0x238392920](v22, v12, v13);
      v23 = (*(*a1 + 504))(a1, v12, v13);
      *(v18 + 40) |= 4u;
      *(v18 + 64) = v23;
      v10 += 2;
      if (v10 == v11)
      {
        v4 = v57;
        goto LABEL_24;
      }
    }

    v17 = *(v57 + 60);
    goto LABEL_18;
  }

LABEL_24:
  sub_232C934E4(a1, a1 + 8, v4, a4);
  if (*a4)
  {
    return;
  }

  sub_232CB32BC(a4);
  *(v4 + 40) |= 1u;
  v24 = *(v4 + 8);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  v55[1] = &v56;
  v56 = sub_232CB44C8((v4 + 72), v24);
  v54[0] = &v57;
  v54[1] = v55;
  v55[0] = &v57;
  memset(&v53, 0, sizeof(v53));
  v25 = *(v4 + 56);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    while (1)
    {
      v30 = sub_232C9BA60(v4 + 48, v28);
      if (!(*(*a1 + 552))(a1, *(v30 + 64)))
      {
        break;
      }

      v28 = (v28 + 1);
LABEL_69:
      v4 = v57;
      v25 = *(v57 + 56);
      if (v28 >= v25)
      {
        goto LABEL_87;
      }
    }

    sub_232C96310(v54, v27, v28, a4);
    if (*a4)
    {
      goto LABEL_93;
    }

    sub_232CB32BC(a4);
    if (v26)
    {
      goto LABEL_36;
    }

    v31 = *(v56 + 23);
    if (v31 < 0)
    {
      v31 = v56[1];
    }

    if (v31)
    {
LABEL_36:
      v29 = 0;
    }

    v32 = *(v30 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v32 + 23);
    if ((v33 & 0x8000000000000000) != 0)
    {
      v34 = *v32;
      v33 = *(v32 + 8);
    }

    else
    {
      v34 = (*(v30 + 48) & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = *(v30 + 64);
    if ((*(*a1 + 536))(a1, v35))
    {
      sub_232C8C2D0(&v51, "");
    }

    else
    {
      if (!(*(*a1 + 528))(a1, v35))
      {
        if (v29 & 1) != 0 && ((v38 = a1[4]) == 0 || (v39 = (*(*v38 + 152))(v38), ((*(*v39 + 16))(v39)) || (v40 = (*(*a1[4] + 152))(a1[4]), (*(*v40 + 24))(v40))))
        {
          if (v33 >= 3)
          {
            v45 = *v34 != 38626 || v34[2] != 129;
            if (!v45)
            {
              v34 += 3;
              v33 -= 3;
            }

            v41 = !v45;
          }

          else
          {
            v41 = 0;
          }

          v46 = a1[4];
          if (v46)
          {
            v47 = (*(*v46 + 152))(v46);
            if ((*(*v47 + 24))(v47))
            {
              v41 = 0;
            }
          }
        }

        else
        {
          v41 = 0;
        }

        __dst.__r_.__value_.__r.__words[0] = &unk_232D007B2;
        __dst.__r_.__value_.__l.__size_ = 3;
        __dst.__r_.__value_.__r.__words[2] = " ";
        v63.__locale_ = 1;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        sub_232C9C618(&v58, &__dst, v64, 1uLL);
        sub_232C9C3E4(&v61, v34, v33, &v58);
        v51 = v61;
        memset(&v61, 0, sizeof(v61));
        v52 = v41;
        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        goto LABEL_60;
      }

      v36 = (*(*a1 + 512))(a1, v35);
      if (v37 == v33 && !memcmp(v36, v34, v33))
      {
        sub_232C8C2D0(&v51, v9);
      }

      else
      {
        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_232C85C94();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v33;
        if (v33)
        {
          memmove(&__dst, v34, v33);
        }

        __dst.__r_.__value_.__s.__data_[v33] = 0;
        v51 = __dst;
      }
    }

    v52 = 0;
LABEL_60:
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v53 = v51;
    v26 = v52;
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v53;
    }

    else
    {
      v42 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    sub_232C968BC(v55, v28, v42, size);
    v28 = (v28 + 1);
    v27 = v28;
    goto LABEL_69;
  }

  v27 = 0;
LABEL_87:
  sub_232C96310(v54, v27, v25, a4);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    v48 = a1[3];
    if (v48)
    {
      (*(*v48 + 40))(&__dst);
      v49 = v56;
      if (*(v56 + 23) < 0)
      {
        operator delete(*v56);
      }

      v50 = *&__dst.__r_.__value_.__l.__data_;
      v49[2] = __dst.__r_.__value_.__r.__words[2];
      *v49 = v50;
    }

    sub_232CB32B4(a4);
  }

LABEL_93:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }
}

void sub_232C962B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C96310(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 >= a3)
  {

    sub_232CB32B4(a4);
  }

  else
  {
    v6 = a2;
    memset(&v37, 0, sizeof(v37));
    v8 = a2;
    do
    {
      v9 = *(sub_232C9BA60(**a1 + 48, v8) + 48);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFELL);
      v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v10 = *v10;
        v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v12 = sub_232C8250C(v10, v11);
      if (v12 < 0)
      {
        v31 = 13;
        sub_232C83BBC(&v32);
        sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v32, "(", 1);
        MEMORY[0x238392A80](&v32, 868);
        sub_232C85DAC(&v32, ") [", 3);
        sub_232C85DAC(&v32, "(0) <= (byte)", 13);
        sub_232C85DAC(&v32, "] ", 2);
        sub_232C809A4(&v31, a4);
        goto LABEL_51;
      }

      std::string::append(&v37, 1uLL, v12);
      ++v8;
    }

    while (a3 != v8);
    v29 = a4;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v37.__r_.__value_.__r.__words[1];
    }

    if (v13 >= 1)
    {
      v14 = 0;
      while (1)
      {
        v30 = 0;
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v37.__r_.__value_.__l.__size_;
        }

        if (size < v14)
        {
          sub_232C9C710("string_view::substr");
        }

        v16 = v14;
        v17 = v37.__r_.__value_.__r.__words[0];
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v37;
        }

        if (sub_232CB1340(v17 + v16, v17 + size, &v30) != 65533)
        {
          break;
        }

        v18 = (v16 + v6);
        if (v30 != 1)
        {
          if (v30 != 3)
          {
            v31 = 13;
            sub_232C83BBC(&v32);
            sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_232C85DAC(&v32, "(", 1);
            MEMORY[0x238392A80](&v32, 887);
            sub_232C85DAC(&v32, ") [", 3);
            sub_232C85DAC(&v32, "(consumed) == (1)", 17);
            sub_232C85DAC(&v32, "] ", 2);
            sub_232C809A4(&v31, v29);
            goto LABEL_51;
          }

          goto LABEL_22;
        }

        sub_232C968BC(*(a1 + 8), (v16 + v6), &unk_232D007AE, 3uLL);
        LODWORD(v21) = v30;
LABEL_41:
        v14 = v16 + v21;
        if (v14 >= v13)
        {
          goto LABEL_48;
        }
      }

      v18 = (v16 + v6);
LABEL_22:
      v19 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v37.__r_.__value_.__l.__size_;
      }

      v20 = v19 - v16;
      if (v19 < v16)
      {
        sub_232C9C710("string_view::substr");
      }

      v21 = v30;
      v22 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v37.__r_.__value_.__r.__words[0];
      }

      if (v20 >= v30)
      {
        v23 = v30;
      }

      else
      {
        v23 = v20;
      }

      if (v30)
      {
        v24 = 0;
        v25 = v22 + v16;
        do
        {
          v26 = v21 - 1;
          if (v24 == v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = "";
          }

          if (v24 == v26)
          {
            v28 = v23;
          }

          else
          {
            v28 = 0;
          }

          sub_232C968BC(*(a1 + 8), v18, v27, v28);
          ++v24;
          v21 = v30;
          v18 = (v18 + 1);
        }

        while (v30 > v24);
      }

      goto LABEL_41;
    }

    v14 = 0;
LABEL_48:
    if (v14 + v6 == a3)
    {
      sub_232CB32B4(v29);
      goto LABEL_54;
    }

    v31 = 13;
    sub_232C83BBC(&v32);
    sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v32, "(", 1);
    MEMORY[0x238392A80](&v32, 905);
    sub_232C85DAC(&v32, ") [", 3);
    sub_232C85DAC(&v32, "(token_index_begin + offset) == (token_index_end)", 49);
    sub_232C85DAC(&v32, "] ", 2);
    sub_232C809A4(&v31, v29);
LABEL_51:
    v32 = *MEMORY[0x277D82828];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
    v33 = MEMORY[0x277D82878] + 16;
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](&v36);
LABEL_54:
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }
}

void sub_232C96854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_232C968BC(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v7 = sub_232C9C948(**a1 + 48, a2);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v8 = v7;
  if (a4 >= 0x17)
  {
    operator new();
  }

  v17 = a4;
  if (a4)
  {
    memmove(&__dst, a3, a4);
  }

  *(&__dst + a4) = 0;
  *(v8 + 40) |= 2u;
  v9 = *(v8 + 8);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_232CB44A4((v8 + 56), &__dst, v9);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  v12 = *(*v10 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  v13 = *(v8 + 40);
  *(v8 + 40) = v13 | 8;
  *(v8 + 68) = v12;
  v14 = *(v11 + 23);
  if (v14 < 0)
  {
    v14 = *(v11 + 8);
  }

  *(v8 + 40) = v13 | 0x18;
  *(v8 + 72) = v14 + a4;
  return std::string::append(v11, a3, a4);
}

void sub_232C96A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C96A28(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = (*(*a1 + 496))(a1);
  sub_232C91F74(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    v13 = v20;
    if (v20 >= v21)
    {
      v14 = sub_232C862B4(&v19, &__p);
    }

    else
    {
      sub_232C861F0(&v19, &__p);
      v14 = v13 + 24;
    }

    v20 = v14;
    ++v10;
  }

  sub_232C96C28(&__p, "Invalid id: ", 0xCuLL, &v18);
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

  sub_232CB3420(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  sub_232C9C22C(&__p);
}

void sub_232C96BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_232C9C22C(&__p);
  _Unwind_Resume(a1);
}

void sub_232C96C28(std::string *__return_ptr a1@<X8>, void *__src@<X0>, size_t __len@<X1>, unsigned int *a4@<X2>)
{
  sub_232C9C334(&__dst, __src, __len);
  sub_232C9E9C0(*a4);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&__dst, v6, v7);
  *a1 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C96CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C96D00(void **a1)
{
  ((*a1)[11])(&v16);
  v2 = v16;
  sub_232CB32BC(&v16);
  if (!v2)
  {
    return (*(*a1[1] + 128))(a1[1]);
  }

  if (sub_232CB1330() <= 2)
  {
    v15 = 0;
    v3 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v4 = sub_232C85DAC(v3, "(", 1);
    v5 = MEMORY[0x238392A80](v4, 961);
    v6 = sub_232C85DAC(v5, ") ", 2);
    v7 = sub_232C85DAC(v6, "LOG(", 4);
    v8 = sub_232C85DAC(v7, "ERROR", 5);
    v9 = sub_232C85DAC(v8, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v10 = sub_232CB35B4(&v16);
    v11 = strlen(v10);
    v12 = sub_232C85DAC(v9, v10, v11);
    v13 = sub_232C85DAC(v12, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v13, 0);
    sub_232CB32BC(&v16);
    sub_232C83EEC(&v15);
  }

  return 0;
}

uint64_t sub_232C96EB0(void **a1, uint64_t a2, uint64_t a3)
{
  ((*a1)[11])(&v20);
  v6 = v20;
  sub_232CB32BC(&v20);
  if (!v6)
  {
    return (*(*a1[1] + 112))(a1[1], a2, a3);
  }

  if (sub_232CB1330() <= 2)
  {
    v19 = 0;
    v7 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v8 = sub_232C85DAC(v7, "(", 1);
    v9 = MEMORY[0x238392A80](v8, 966);
    v10 = sub_232C85DAC(v9, ") ", 2);
    v11 = sub_232C85DAC(v10, "LOG(", 4);
    v12 = sub_232C85DAC(v11, "ERROR", 5);
    v13 = sub_232C85DAC(v12, ") ", 2);
    ((*a1)[11])(&v20, a1);
    v14 = sub_232CB35B4(&v20);
    v15 = strlen(v14);
    v16 = sub_232C85DAC(v13, v14, v15);
    v17 = sub_232C85DAC(v16, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v17, 0);
    sub_232CB32BC(&v20);
    sub_232C83EEC(&v19);
  }

  return 0;
}

const char *sub_232C97078(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 120))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 971);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    sub_232C85DAC(v15, "", 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return "";
}

float sub_232C97248(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v19);
  v4 = v19;
  sub_232CB32BC(&v19);
  if (!v4)
  {
    return (*(*a1[1] + 136))(a1[1], a2);
  }

  v5 = 0.0;
  if (sub_232CB1330() <= 2)
  {
    v18 = 0;
    v6 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = sub_232C85DAC(v6, "(", 1);
    v8 = MEMORY[0x238392A80](v7, 976);
    v9 = sub_232C85DAC(v8, ") ", 2);
    v10 = sub_232C85DAC(v9, "LOG(", 4);
    v11 = sub_232C85DAC(v10, "ERROR", 5);
    v12 = sub_232C85DAC(v11, ") ", 2);
    ((*a1)[11])(&v19, a1);
    v13 = sub_232CB35B4(&v19);
    v14 = strlen(v13);
    v15 = sub_232C85DAC(v12, v13, v14);
    v16 = sub_232C85DAC(v15, "\nReturns default value ", 23);
    MEMORY[0x238392A60](v16, 0.0);
    sub_232CB32BC(&v19);
    sub_232C83EEC(&v18);
  }

  return v5;
}

uint64_t sub_232C97418(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 152))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 981);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C975D8(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 144))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 986);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C97798(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 160))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 991);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A50](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C97958(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 176))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 996);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A50](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C97B18(uint64_t *a1)
{
  v2 = sub_232C80D30(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 528))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97BD8(uint64_t *a1)
{
  v2 = sub_232C80DB4(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97C98(uint64_t *a1)
{
  v2 = sub_232C80E38(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97D58(uint64_t *a1)
{
  v2 = sub_232C80EBC(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97E18@<X0>(void **a1@<X0>, void ***a2@<X3>, uint64_t *a3@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a3)
  {
    sub_232CB32BC(a3);
    if (a2)
    {
      sub_232C90010(a2);
      v7 = *(*a1[1] + 200);

      return v7();
    }

    else
    {
      LODWORD(v9) = 13;
      v8 = sub_232C83BBC(&v10);
      sub_232C85DAC(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
      sub_232C85DAC(&v10, "(", 1);
      MEMORY[0x238392A80](&v10, 1027);
      sub_232C85DAC(&v10, ") [", 3);
      sub_232C85DAC(&v10, "pieces", 6);
      sub_232C85DAC(&v10, "] ", 2);
      sub_232C85DAC(&v10, "output container is null", 24);
      sub_232C809A4(&v9, a3);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v14);
    }
  }

  return result;
}

uint64_t sub_232C980CC@<X0>(void **a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a3)
  {
    sub_232CB32BC(a3);
    if (a2)
    {
      a2[1] = *a2;
      v7 = *(*a1[1] + 208);

      return v7();
    }

    else
    {
      LODWORD(v9) = 13;
      v8 = sub_232C83BBC(&v10);
      sub_232C85DAC(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
      sub_232C85DAC(&v10, "(", 1);
      MEMORY[0x238392A80](&v10, 1033);
      sub_232C85DAC(&v10, ") [", 3);
      sub_232C85DAC(&v10, "ids", 3);
      sub_232C85DAC(&v10, "] ", 2);
      sub_232C85DAC(&v10, "output container is null", 24);
      sub_232C809A4(&v9, a3);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v14);
    }
  }

  return result;
}

uint64_t sub_232C98380@<X0>(void **a1@<X0>, void ***a2@<X2>, uint64_t *a3@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a3)
  {
    sub_232CB32BC(a3);
    if (a2)
    {
      sub_232C90010(a2);
      v7 = *(*a1[1] + 216);

      return v7();
    }

    else
    {
      LODWORD(v9) = 13;
      v8 = sub_232C83BBC(&v10);
      sub_232C85DAC(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
      sub_232C85DAC(&v10, "(", 1);
      MEMORY[0x238392A80](&v10, 1039);
      sub_232C85DAC(&v10, ") [", 3);
      sub_232C85DAC(&v10, "pieces", 6);
      sub_232C85DAC(&v10, "] ", 2);
      sub_232C85DAC(&v10, "output container is null", 24);
      sub_232C809A4(&v9, a3);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v14);
    }
  }

  return result;
}

uint64_t sub_232C9862C@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a3)
  {
    sub_232CB32BC(a3);
    if (a2)
    {
      a2[1] = *a2;
      v7 = *(*a1[1] + 224);

      return v7();
    }

    else
    {
      LODWORD(v9) = 13;
      v8 = sub_232C83BBC(&v10);
      sub_232C85DAC(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
      sub_232C85DAC(&v10, "(", 1);
      MEMORY[0x238392A80](&v10, 1045);
      sub_232C85DAC(&v10, ") [", 3);
      sub_232C85DAC(&v10, "ids", 3);
      sub_232C85DAC(&v10, "] ", 2);
      sub_232C85DAC(&v10, "output container is null", 24);
      sub_232C809A4(&v9, a3);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v14);
    }
  }

  return result;
}

uint64_t sub_232C988D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 16);

    return v2();
  }

  return result;
}

uint64_t sub_232C9894C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 24);

    return v2();
  }

  return result;
}

uint64_t sub_232C989C0@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (*a4)
  {
    return result;
  }

  sub_232CB32BC(a4);
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    result = ((*a1)[11])(a1);
    if (*a4)
    {
      return result;
    }

    sub_232CB32BC(a4);
    if (a3)
    {
      a3[1] = *a3;
      v10 = *(*a1[2] + 32);

      return v10();
    }

    LODWORD(v12) = 13;
    v11 = sub_232C83BBC(&v13);
    sub_232C85DAC(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v12);
    sub_232C85DAC(&v13, "(", 1);
    MEMORY[0x238392A80](&v13, 1062);
    sub_232C85DAC(&v13, ") [", 3);
    sub_232C85DAC(&v13, "norm_to_orig", 12);
    sub_232C85DAC(&v13, "] ", 2);
    sub_232C85DAC(&v13, "output container is null", 24);
    sub_232C809A4(&v12, a4);
  }

  else
  {
    LODWORD(v12) = 13;
    v9 = sub_232C83BBC(&v13);
    sub_232C85DAC(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v12);
    sub_232C85DAC(&v13, "(", 1);
    MEMORY[0x238392A80](&v13, 1061);
    sub_232C85DAC(&v13, ") [", 3);
    sub_232C85DAC(&v13, "normalized", 10);
    sub_232C85DAC(&v13, "] ", 2);
    sub_232C85DAC(&v13, "output container is null", 24);
    sub_232C809A4(&v12, a4);
  }

  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v17);
}

void *sub_232C98DB4@<X0>(_DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = a2;
  v17 = a3;
  if (a3 <= 0x13)
  {
    LODWORD(v10) = 13;
    v7 = sub_232C83BBC(&v11);
    sub_232C85DAC(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v11, "(", 1);
    MEMORY[0x238392A80](&v11, 1230);
    sub_232C85DAC(&v11, ") [", 3);
    sub_232C85DAC(&v11, "(size) >= (sizeof(MMapHeader))", 30);
    sub_232C85DAC(&v11, "] ", 2);
    sub_232C809A4(&v10, a4);
  }

  else if (*a2)
  {
    LODWORD(v10) = 13;
    v6 = sub_232C83BBC(&v11);
    sub_232C85DAC(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v11, "(", 1);
    MEMORY[0x238392A80](&v11, 1233);
    sub_232C85DAC(&v11, ") [", 3);
    sub_232C85DAC(&v11, "header->sentinel == 0", 21);
    sub_232C85DAC(&v11, "] ", 2);
    sub_232C85DAC(&v11, "This file format is not for mmap-based loading.", 47);
    sub_232C809A4(&v10, a4);
  }

  else
  {
    result = sub_232CB1748(&v16, 0x14uLL, a4);
    if (*a4)
    {
      return result;
    }

    sub_232CB32BC(a4);
    if (v17 >= a2[1])
    {
      operator new();
    }

    LODWORD(v10) = 13;
    v9 = sub_232C83BBC(&v11);
    sub_232C85DAC(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v11, "(", 1);
    MEMORY[0x238392A80](&v11, 1238);
    sub_232C85DAC(&v11, ") [", 3);
    sub_232C85DAC(&v11, "(blob.size()) >= (header->model_proto_size)", 43);
    sub_232C85DAC(&v11, "] ", 2);
    sub_232C809A4(&v10, a4);
  }

  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v15);
}

void sub_232C99930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C99A1C(uint64_t a1)
{
  v2 = a1 + 96;
  MEMORY[0x238392920](a1 + 96);
  v3 = *(a1 + 119);
  if (v3 < 0)
  {
    v2 = *(a1 + 96);
    v3 = *(a1 + 104);
  }

  v4 = *(*a1 + 48);

  return v4(a1, v2, v3);
}

void sub_232C99BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C99BE0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  sub_232C9ECDC(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_232C866C0(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    v11 = sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_232C85DAC(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 66);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    sub_232C9EEB4(&__p.__pn_.__r_.__value_.__l.__size_, v13, &v13[v12], 34, 92);
    sub_232C809A4(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v30);
    return;
  }

  sub_232C9ED24(a2, &v32);
  sub_232C9EDEC(a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__pn_.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_232C866C0(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 59);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    sub_232C9EEB4(&__p.__pn_.__r_.__value_.__l.__size_, v18, v18 + size, 34, 92);
    sub_232C809A4(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_232C866C0(&__p, v31.__pn_.__r_.__value_.__l.__data_, v31.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v22 = sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_232C85DAC(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 70);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sub_232CB32B4(a4);
        return;
      }

      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v23 = sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_232C85DAC(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 78);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
  sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 64);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "fd >= 0", 7);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  sub_232C9EEB4(&__p.__pn_.__r_.__value_.__l.__size_, v25, &v25[v24], 34, 92);
  sub_232C809A4(&__p, a4);
  __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
  *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x238392BA0](v30);
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_232C9A554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9A730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9A74C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 136))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9C22C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A7C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 144))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A82C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9A848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 176))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9C7A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A8C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 184))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9C814(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A940@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 192))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9C22C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A9BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 200))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AA20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9AA3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 208))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9C868(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9AAB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C85BE8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9AB34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 152))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AB98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9ABB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AC18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9AC34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AC98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_232C9ACB4(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 224))(&v3);
  v1 = v4;
  sub_232CB32BC(&v3);
  return v1;
}

void sub_232C9AD18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &unk_284814978;
  v12 = 0;
  v13 = 0;
  v11 = sub_232CA6C5C();
  v8 = sub_232C8C130(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  sub_232CC137C(v11, a4);
  sub_232CB32BC(&v9);
  v10 = &unk_284814978;
  if (v13)
  {
    sub_232C9C8DC(v13);
  }
}

void sub_232C9ADF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_232CB32BC(&a10);
  if (a14)
  {
    sub_232C9C8DC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_232C9AE1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, float a5@<S0>, uint64_t a6@<X8>)
{
  v14 = &unk_284814978;
  v16 = 0;
  v17 = 0;
  v15 = sub_232CA6C5C();
  v12 = sub_232C8C130(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a5);
  sub_232CC137C(v15, a6);
  sub_232CB32BC(&v13);
  v14 = &unk_284814978;
  if (v17)
  {
    sub_232C9C8DC(v17);
  }
}

void sub_232C9AF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_232CB32BC(&a10);
  if (a14)
  {
    sub_232C9C8DC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_232C9AF38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12[1] = 0;
  v13 = 0;
  v12[0] = &unk_284814998;
  v10 = sub_232C8C250(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sub_232C8C2B4(v12, a5);
  sub_232CB32BC(&v11);
  v12[0] = &unk_284814998;
  if (v13)
  {
    sub_232C9C8DC(v13);
  }
}

void sub_232C9B010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_232CB32BC(&a9);
  if (a12)
  {
    sub_232C9C8DC(a12);
  }

  _Unwind_Resume(a1);
}

void sub_232C9B03C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  v18[1] = 0;
  v19 = 0;
  v18[0] = &unk_284814998;
  v16 = sub_232C8C250(v18);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v16, a8);
  sub_232C8C2B4(v18, a7);
  sub_232CB32BC(&v17);
  v18[0] = &unk_284814998;
  if (v19)
  {
    sub_232C9C8DC(v19);
  }
}

void sub_232C9B144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_232CB32BC(&a9);
  if (a12)
  {
    sub_232C9C8DC(a12);
  }

  _Unwind_Resume(a1);
}

void sub_232C9B170(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_284814978;
  v10 = 0;
  v11 = 0;
  v9 = sub_232CA6C5C();
  v6 = sub_232C8C130(&v8);
  (*(*a1 + 264))(&v7, a1, a2, v6);
  sub_232CC137C(v9, a3);
  sub_232CB32BC(&v7);
  v8 = &unk_284814978;
  if (v11)
  {
    sub_232C9C8DC(v11);
  }
}

void sub_232C9B240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_232CB32BC(&a10);
  if (a14)
  {
    sub_232C9C8DC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_232C9B26C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_284814978;
  v10 = 0;
  v11 = 0;
  v9 = sub_232CA6C5C();
  v6 = sub_232C8C130(&v8);
  (*(*a1 + 272))(&v7, a1, a2, v6);
  sub_232CC137C(v9, a3);
  sub_232CB32BC(&v7);
  v8 = &unk_284814978;
  if (v11)
  {
    sub_232C9C8DC(v11);
  }
}

void sub_232C9B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_232CB32BC(&a10);
  if (a14)
  {
    sub_232C9C8DC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_232C9B368(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_284814978;
  v10 = 0;
  v11 = 0;
  v9 = sub_232CA6C5C();
  v6 = sub_232C8C130(&v8);
  (*(*a1 + 280))(&v7, a1, a2, v6);
  sub_232CC137C(v9, a3);
  sub_232CB32BC(&v7);
  v8 = &unk_284814978;
  if (v11)
  {
    sub_232C9C8DC(v11);
  }
}

void sub_232C9B438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_232CB32BC(&a10);
  if (a14)
  {
    sub_232C9C8DC(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_232C9B464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = &unk_284814978;
  v8 = sub_232CA6C5C();
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = v8;
  v9 = sub_232C8C130(a4);
  (*(*a1 + 232))(&v11, a1, a2, a3, v9);
  return sub_232CB32BC(&v11);
}

void sub_232C9B51C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_232C9C8DC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9B538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, float a6@<S0>)
{
  *a5 = &unk_284814978;
  v12 = sub_232CA6C5C();
  a5[2] = 0;
  a5[3] = 0;
  a5[1] = v12;
  v13 = sub_232C8C130(a5);
  (*(*a1 + 248))(&v15, a1, a2, a3, a4, v13, a6);
  return sub_232CB32BC(&v15);
}

void sub_232C9B608(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_232C9C8DC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9B624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = 0;
  a5[2] = 0;
  *a5 = &unk_284814998;
  v9 = sub_232C8C250(a5);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v9);
  return sub_232CB32BC(&v11);
}

void sub_232C9B6DC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_232C9C8DC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9B6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  a7[1] = 0;
  a7[2] = 0;
  *a7 = &unk_284814998;
  v15 = sub_232C8C250(a7);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v15, a8);
  return sub_232CB32BC(&v17);
}

void sub_232C9B7E0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_232C9C8DC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9B7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_284814978;
  v6 = sub_232CA6C5C();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_232C8C130(a3);
  (*(*a1 + 264))(&v9, a1, a2, v7);
  return sub_232CB32BC(&v9);
}

void sub_232C9B8AC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_232C9C8DC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9B8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_284814978;
  v6 = sub_232CA6C5C();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_232C8C130(a3);
  (*(*a1 + 272))(&v9, a1, a2, v7);
  return sub_232CB32BC(&v9);
}

void sub_232C9B978(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_232C9C8DC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9B994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_284814978;
  v6 = sub_232CA6C5C();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_232C8C130(a3);
  (*(*a1 + 280))(&v9, a1, a2, v7);
  return sub_232CB32BC(&v9);
}

void sub_232C9BA44(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_232C9C8DC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C9BA60(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232C9BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232C9BB40(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_232C86538(a1, a2);
  }

  sub_232C84C3C();
}

uint64_t sub_232C9BB7C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232C9BC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C9BC5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x2383929B0](a1 + 2);

  return std::istream::~istream();
}

uint64_t sub_232C9BD24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_232C9BE40(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232C9BF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232C9BF20(void *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v9 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 && a3)
  {
    v9 = 0;
    v13 = (a2 + a3);
    while (2)
    {
      v14 = &v9[a2];
      v15 = &v9[a2];
LABEL_5:
      v16 = a5;
      v17 = a4;
      while (*v15 != *v17)
      {
        ++v17;
        if (!--v16)
        {
          if (++v15 != v13)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }
      }

      if (v15 != v13)
      {
        v18 = &v15[-a2];
        if (&v15[-a2] != -1)
        {
          v19 = (v18 - v9);
          v20 = v18 >= v9;
          if (!a6)
          {
            v20 = v18 > v9;
          }

          if (v20)
          {
            v21 = (a3 - v9);
            if (v21 >= v19)
            {
              v21 = v19;
            }

            *&v23 = v14;
            *(&v23 + 1) = v21;
            sub_232C9C064(a1, &v23);
          }

          v9 = v18 + 1;
          if (a3 > (v18 + 1))
          {
            continue;
          }
        }
      }

      break;
    }
  }

LABEL_19:
  if (a3 > v9)
  {
    *&v23 = &v9[a2];
    *(&v23 + 1) = a3 - v9;
    sub_232C9C064(a1, &v23);
  }

  return a1;
}

void sub_232C9C044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9C064(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_232C84C3C();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_232C86FF4(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *sub_232C9C13C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_232C9C1E0(a1, a2);
  }

  return a1;
}

void sub_232C9C1E0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_232C8644C(a1, a2);
  }

  sub_232C84C3C();
}

void sub_232C9C22C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_232C90010(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *sub_232C9C280(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_232C9C2F8(a1, a2);
  }

  return a1;
}

void sub_232C9C2DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9C2F8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_232C86FF4(a1, a2);
  }

  sub_232C84C3C();
}

void *sub_232C9C334(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void sub_232C9C3E4(std::string *__return_ptr a1@<X8>, void *__src@<X0>, size_t __len@<X1>, uint64_t *a4@<X2>)
{
  sub_232C9C334(&__dst, __src, __len);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v7 = *a4;
  v6 = a4[1];
  while (v7 != v6)
  {
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      *a1->__r_.__value_.__l.__data_ = 0;
      a1->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a1->__r_.__value_.__s.__data_[0] = 0;
      *(&a1->__r_.__value_.__s + 23) = 0;
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    sub_232C9C4DC(p_dst, size, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), 1, a1);
    std::string::operator=(&__dst, a1);
    v7 += 32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C9C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_232C9C4DC(std::string::value_type *__s, std::string::size_type __n, char *a3, int64_t a4, const std::string::value_type *a5, std::string::size_type a6, char a7, std::string *this)
{
  if (a4)
  {
    v12 = 0;
    v13 = &__s[__n];
LABEL_3:
    v14 = __n - v12;
    if (__n < v12 || v14 < a4)
    {
LABEL_14:
      v14 = __n - v12;
    }

    else
    {
      v15 = *a3;
      v16 = (__n - v12);
      v17 = &__s[v12];
      do
      {
        v18 = &v16[-a4];
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v15, (v18 + 1));
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, a3, a4))
        {
          if (v20 != v13)
          {
            v21 = v20 - __s;
            if (v20 - __s != -1)
            {
              std::string::append(this, &__s[v12], v21 - v12);
              std::string::append(this, a5, a6);
              v12 = v21 + a4;
              if (a7)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_14;
        }

        v17 = v20 + 1;
        v16 = (v13 - (v20 + 1));
      }

      while (v16 >= a4);
    }

    v22 = &__s[v12];
    v23 = this;
    v24 = v14;
  }

  else
  {
    v23 = this;
    v22 = __s;
    v24 = __n;
  }

  return std::string::append(v23, v22, v24);
}

uint64_t *sub_232C9C618(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_232C9C68C(result, a4);
  }

  return result;
}

void sub_232C9C670(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9C68C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_232C9C6C8(a1, a2);
  }

  sub_232C84C3C();
}

void sub_232C9C6C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_232C849B0();
}

void sub_232C9C710(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_232C9C76C(exception, a1);
  __cxa_throw(exception, off_2789A6E00, MEMORY[0x277D825F8]);
}

std::logic_error *sub_232C9C76C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_232C9C7A0(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_232C9C22C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_232C9C814(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_232C912DC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_232C9C868(void ****a1)
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
        v4 -= 4;
        v6 = v4;
        sub_232C9C22C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_232C9C8DC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_232C9C948(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232C9CA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9CA28(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_232C9CAB4(a1, a2);
  }

  return a1;
}

void sub_232C9CA8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9CAB4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_232C9CAF0(a1, a2);
  }

  sub_232C84C3C();
}

void sub_232C9CAF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_232C849B0();
}

void *sub_232C9CB94(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284814C80;
  sub_232CA6AF8((a1 + 3), 0);
  return a1;
}

void sub_232C9CC14(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284814C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x238392C10);
}

void *sub_232C9CCD0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284814CD0;
  sub_232CA75C0((a1 + 3), 0);
  return a1;
}

void sub_232C9CD50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284814CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x238392C10);
}

void sub_232C9CDB0(std::string *__return_ptr a1@<X8>, void *__src@<X0>, size_t __len@<X1>, void ***a4@<X2>, char *a5@<X3>, void ***a6@<X4>)
{
  sub_232C9C334(&__dst, __src, __len);
  v10 = *(a4 + 23);
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = a4[1];
  }

  sub_232C9CEB4(&__p, v11, v12, a5, a6);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a1 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C9CE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9CEB4(std::string *__return_ptr a1@<X8>, void *__src@<X0>, size_t __len@<X1>, char *a4@<X2>, void ***a5@<X3>)
{
  sub_232C9C334(&__dst, __src, __len);
  v8 = strlen(a4);
  sub_232C9CFA8(&__p, a4, v8, a5);
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

  v11 = std::string::append(&__dst, p_p, size);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C9CF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9CFA8(std::string *__return_ptr a1@<X8>, void *__src@<X0>, size_t __len@<X1>, void ***a4@<X2>)
{
  sub_232C9C334(&__dst, __src, __len);
  v6 = *(a4 + 23);
  if (v6 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = *a4;
  }

  if (v6 >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = a4[1];
  }

  sub_232C9C334(__p, v7, v8);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&__dst, v9, v10);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C9D060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_232C9D094(uint64_t **a1, _OWORD *a2, _OWORD *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_232C9D118(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_232C9D118(uint64_t **a1, void *a2, uint64_t a3, _OWORD *a4)
{
  v4 = *sub_232C9D1B0(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_232C9D1B0(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_232C86C0C(a1, a5, (a2 + 4)))
  {
    if (!sub_232C86C0C(a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_232C86C0C(a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_232C86C0C(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_232C86B18(a1, a3, a5);
}

uint64_t sub_232C9D354(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_232C86C0C(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_232C86C0C(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_232C9D3E4(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_232C83D28((a1 + 3), 24);
  return a1;
}

void sub_232C9D660(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x238392BA0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_232C9D688(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_232C9D7D8(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_232C866C0(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t *sub_232C9D838(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_232C9D9D4(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

void *sub_232C9D898(char **a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_232C84C3C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_232C9DB9C(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_232C9D9D4((24 * v2), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_232C9DBF4(&v14);
  return v8;
}

void sub_232C9D9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9DBF4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9D9D4(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_232C9C1E0(result, a4);
  }

  return result;
}

void sub_232C9DA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_232C9C22C(&a9);
  _Unwind_Resume(a1);
}

char *sub_232C9DA5C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_232C866C0(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_232C9DB1C(v9);
  return v4;
}

uint64_t sub_232C9DB1C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_232C9DB54(a1);
  }

  return a1;
}

void sub_232C9DB54(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_232C9DB9C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_232C849B0();
}

void **sub_232C9DBF4(void **a1)
{
  sub_232C9DC28(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_232C9DC28(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_232C9C22C(&v5);
  }
}

uint64_t *sub_232C9DC7C(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_232C9DE00(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *sub_232C9DCD0(char **a1, const void **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_232C84C3C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_232C9DE7C(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_232C9DE00((24 * v2), *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_232C9DED4(&v14);
  return v8;
}

void sub_232C9DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9DED4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9DE00(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_232C9BB40(result, a4);
  }

  return result;
}

void sub_232C9DE60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9DE7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C9DED4(uint64_t a1)
{
  sub_232C9DF0C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_232C9DF0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void **sub_232C9DF6C(void **a1)
{
  sub_232C9DFA0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_232C9DFA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_232C9C22C(&v5);
  }
}

float sub_232C9DFF4(uint64_t a1, void *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_232C9D9D4(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_232C9E068(char **a1, void *a2, _DWORD *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_232C84C3C();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_232C8592C(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_232C9D9D4(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = a1[1] - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  a1[1] = v11;
  v15 = a1[2];
  a1[2] = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_232C9DF6C(&v17);
  return v11;
}

void sub_232C9E17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9DF6C(va);
  _Unwind_Resume(a1);
}

void sub_232C9E190(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C9E1D8(uint64_t a1)
{
  sub_232C9E210(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_232C9E210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

float sub_232C9E270(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_232C9DE00(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_232C9E2D8(char **a1, uint64_t a2, _DWORD *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_232C84C3C();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_232C9E190(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_232C9DE00(v10, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = a1[1] - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  a1[1] = v11;
  v15 = a1[2];
  a1[2] = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_232C9E1D8(&v17);
  return v11;
}

void sub_232C9E3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C9E1D8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9E3F4(uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_232C9BB40(a1, a2);
  }

  return a1;
}

void sub_232C9E4EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9E508(uint64_t *a1, float *a2, float *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_232C9E670(a1, a2, a3, a3 - a2);
  sub_232C9E564(a1, v4);
  return a1;
}

void sub_232C9E548(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9E564(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v5 = v3 - v2;
    if (v5 < 2)
    {
      *(a1 + 8) = v2;

      sub_232C9E724(a1);
    }

    else
    {
      v6 = 0.0;
      v7 = *a1;
      do
      {
        v8 = *v7++;
        v6 = v6 + v8;
      }

      while (v7 != v3);
      while (v2 < v3)
      {
        *v2 = *v2 / v6;
        ++v2;
      }

      sub_232C9E7F8(&v17, v5 - 1);
      v9 = *a1;
      v10 = *(a1 + 8) - 8;
      v11 = v17;
      if (v10 != *a1)
      {
        v12 = v9 + 1;
        v13 = *v9;
        *v17 = *v9;
        if (v9 + 1 != v10)
        {
          v14 = v11 + 1;
          do
          {
            v15 = *v12++;
            v13 = v13 + v15;
            *v14++ = v13;
          }

          while (v12 != v10);
        }
      }

      *a1 = v11;
      v16 = *(a1 + 16);
      *(a1 + 8) = v18;
      v17 = v9;
      *(&v18 + 1) = v16;
      if (v9)
      {
        *&v18 = v9;
        operator delete(v9);
      }
    }
  }
}