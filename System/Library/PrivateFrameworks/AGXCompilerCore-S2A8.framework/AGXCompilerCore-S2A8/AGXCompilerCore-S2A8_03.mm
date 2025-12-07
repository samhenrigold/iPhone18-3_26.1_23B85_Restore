uint64_t sub_23C4D92F8(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t sub_23C4D938C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
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

  *(a1 + 16) = v8;
  result = MEMORY[0x23EED4160](32 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 32);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_23C5324B0)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    v18 = (32 * v3);
    if (v3)
    {
      v19 = 32 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v32 = 0;
          sub_23C4D92F8(*a1, *(a1 + 16), v21, &v32);
          v22 = v32;
          *v32 = *v20;
          v23 = *(v20 + 8);
          v22[3] = *(v20 + 3);
          *(v22 + 1) = v23;
          ++*(a1 + 8);
        }

        v20 = (v20 + 32);
        v19 -= 32;
      }

      while (v19);
    }

    return llvm::deallocate_buffer(v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = v24 + 0x7FFFFFFFFFFFFFFLL;
      v27 = v26 & 0x7FFFFFFFFFFFFFFLL;
      v28 = (v26 & 0x7FFFFFFFFFFFFFFLL) - (v26 & 1) + 2;
      v29 = vdupq_n_s64(v27);
      v30 = (result + 32);
      do
      {
        v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_23C5324B0)));
        if (v31.i8[0])
        {
          *(v30 - 4) = -4096;
        }

        if (v31.i8[4])
        {
          *v30 = -4096;
        }

        v25 += 2;
        v30 += 8;
      }

      while (v28 != v25);
    }
  }

  return result;
}

uint64_t sub_23C4D9594(uint64_t result, unint64_t a2, void *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_23C4D9654(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_23C4A6968(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *sub_23C4D96AC(void *result, unint64_t a2)
{
  if (*(a2 + 16) <= 0x1Bu)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  v20 = v2;
  if (v2)
  {
    v3 = result;
    v5 = result + 4;
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_13;
    }

    v6 = result + 4;
    do
    {
      v7 = v4[4];
      v8 = v7 >= v2;
      v9 = v7 < v2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v6 == v5 || v2 < v6[4])
    {
LABEL_13:
      v11 = result[1];
      v10 = result[2];
      if (v11 >= v10)
      {
        v13 = (v11 - *result) >> 3;
        if ((v13 + 1) >> 61)
        {
          sub_23C496CE8();
        }

        v14 = v10 - *result;
        v15 = v14 >> 2;
        if (v14 >> 2 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_23C4D97E0(v16);
        }

        *(8 * v13) = v2;
        v12 = 8 * v13 + 8;
        v17 = v3[1] - *v3;
        v18 = (8 * v13 - v17);
        memcpy(v18, *v3, v17);
        v19 = *v3;
        *v3 = v18;
        v3[1] = v12;
        v3[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v11 = v2;
        v12 = (v11 + 1);
      }

      v3[1] = v12;
      return sub_23C4D9594((v5 - 1), v2, &v20);
    }
  }

  return result;
}

void sub_23C4D97E0(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_23C496CE8();
}

unint64_t sub_23C4D9834(uint64_t a1)
{
  if (qword_27E1F70B8 != -1)
  {
    dispatch_once(&qword_27E1F70B8, &unk_284F16130);
  }

  return (*algn_27E1F70B4 + dword_27E1F70B0 * a1 - 1) / *algn_27E1F70B4;
}

uint64_t sub_23C4D98B0(uint64_t a1, unsigned int *a2)
{
  v4 = (a1 + *(*a1 - 24));
  *a2 = *(v4[43] + 840);
  result = (*(*v4 + 64))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[43] + 840);
  }

  v6 = *(a1 + 2732);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 400);
    v10 = *(*(v8 + 344) + 840);
    v11 = *(v9 + 416);
    v12 = v11 - 1;
    v13 = *(v9 + 408);
    do
    {
      v14 = (v12 + v7) >> 1;
      if (*(v13 + 4 * v14) < v6)
      {
        v12 = v14 - 1;
      }

      else
      {
        v7 = v14 + 1;
      }
    }

    while (v7 <= v12);
    v15 = v10 / v11 * v12;
    if (v15 >= *a2)
    {
      v15 = *a2;
    }

    *a2 = v15;
    return 1;
  }

  return result;
}

uint64_t sub_23C4D99D8(uint64_t a1)
{
  if (!sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128)))
  {
    return 0;
  }

  v38 = sub_23C503B2C(a1);
  if (*(a1 + 2792))
  {
    v2 = a1 + *(*a1 - 24);
    *(v2 + 774) = 1;
    v3 = *(v2 + 744);
    v4 = *(v2 + 736) - *(v2 + 752);
    sub_23C4B0A04((v2 + 704), 4, 0);
    sub_23C4B2DFC((v2 + 704), 6, **(a1 + 2784));
    sub_23C4B03D4(v2 + 704, v4 + v3);
    sub_23C4B1830(1uLL);
  }

  v6 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744A, 0);
  v7 = a1 + *(*a1 - 24);
  *(v7 + 774) = 1;
  v8 = *(v7 + 744);
  v9 = *(v7 + 736) - *(v7 + 752);
  sub_23C4B5F88((v7 + 704), v6);
  sub_23C4B2DFC((v7 + 704), 6, *(a1 + 8));
  sub_23C4B2DFC((v7 + 704), 8, *(a1 + 9));
  sub_23C4B2DFC((v7 + 704), 10, *(a1 + 2728));
  sub_23C4B0A04((v7 + 704), 12, *(a1 + 2732));
  v10 = sub_23C4B03D4(v7 + 704, v9 + v8);
  v11 = a1 + *(*a1 - 24);
  *(v11 + 774) = 1;
  v12 = *(v11 + 744);
  v13 = *(v11 + 736) - *(v11 + 752);
  sub_23C4B5F88((v11 + 704), v38);
  sub_23C4C6A98((v11 + 704), v10);
  v14 = a1 + *(*a1 - 24);
  v15 = sub_23C4B03D4(v11 + 704, v13 + v12);
  sub_23C4B1AD8(v14 + 704, v15);
  v16 = (a1 + *(*a1 - 24));
  v17 = (v16[23].__r_.__value_.__l.__size_ + *(v16[23].__r_.__value_.__l.__size_ - *v16[23].__r_.__value_.__l.__size_ + 4));
  v18 = (v17 + *v17);
  v19 = (v18 - *v18);
  if (*(v18 + v19[4] + *(v18 + v19[4])) <= 0x20)
  {
    if (*v19 < 0x3Du)
    {
      return 1;
    }

    v20 = v19[30];
    if (!v20)
    {
      return 1;
    }

    v21 = *(v18 + v20);
    v22 = *(v16[14].__r_.__value_.__l.__size_ + 820);
    if (v21 <= v22)
    {
      return 1;
    }

    std::to_string(&v40, v21);
    v23 = std::string::insert(&v40, 0, "Threadgroup memory size (");
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v41, ") ");
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v42, "exceeds the maximum threadgroup memory allowed (");
    v28 = v27->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v39, v22);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v39;
    }

    else
    {
      v29 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v43, v29, size);
    v32 = v31->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v44, ")");
    v34 = v33->__r_.__value_.__r.__words[2];
    v45 = *&v33->__r_.__value_.__l.__data_;
    v46 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    if (v46 >= 0)
    {
      v35 = &v45;
    }

    else
    {
      v35 = v45;
    }

    if (v46 >= 0)
    {
      v36 = HIBYTE(v46);
    }

    else
    {
      v36 = *(&v45 + 1);
    }

    std::string::append(v16 + 17, v35, v36);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_23C4D9EFC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 2720);
  sub_23C49F8D0(v36, "AGCComputeStateAGP");
  sub_23C49F8D0(v34, "mutableBuffers");
  v4 = *v3;
  sub_23C4B0E40(&v38);
  v5 = sub_23C4AA520(&v38.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v38.__r_.__value_.__r + *(v38.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v38.__r_.__value_.__r + *(v38.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v5, v4);
  std::stringbuf::str();
  sub_23C4B733C(v52, v34, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v38.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v38.__r_.__value_.__r.__words + *(v38.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v38.__r_.__value_.__r.__words[2] = v6;
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  MEMORY[0x23EED5050](&v42);
  sub_23C49F8D0(v32, "maxTotalThreadsPerThreadgroup");
  sub_23C4B7004(&v52[1], v32, *(v3 + 2));
  sub_23C49F8D0(v30, "wgSizeMultipleOfSIMDWidth");
  sub_23C4B7004(&v52[2], v30, *(v3 + 3) & 1);
  sub_23C49F8D0(v28, "genCompilerStatistics");
  sub_23C4B7004(&v52[3], v28, (*(v3 + 3) >> 1) & 1);
  sub_23C49F8D0(v26, "genTelemetryStatistics");
  sub_23C4B7004(&v52[4], v26, (*(v3 + 3) >> 2) & 1);
  sub_23C49F8D0(v24, "disableTextureRWBoundsCheck");
  sub_23C4B7004(&v52[5], v24, (*(v3 + 3) >> 4) & 1);
  sub_23C49F8D0(v22, "debugInstrumentationEnabled");
  sub_23C4B7004(&v52[6], v22, (*(v3 + 3) >> 5) & 1);
  sub_23C49F8D0(v20, "unused");
  sub_23C4B7004(&v52[7], v20, *(v3 + 3) >> 6);
  if (SHIBYTE(v37) < 0)
  {
    sub_23C49F988(&__dst, v36[0], v36[1]);
  }

  else
  {
    __dst = *v36;
    v50 = v37;
  }

  sub_23C4B7B84(&__p, &__dst, 0);
  sub_23C49F8D0(v44, "{");
  sub_23C4B7B84(&v46, v44, 0);
  if ((v48 & 0x80u) == 0)
  {
    v7 = &v46;
  }

  else
  {
    v7 = v46;
  }

  if ((v48 & 0x80u) == 0)
  {
    v8 = v48;
  }

  else
  {
    v8 = v47;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v48 < 0)
  {
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst);
  }

  for (i = 0; i != 8; ++i)
  {
    v12 = &v52[i];
    if (SHIBYTE(v52[i].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&__p, v12->__r_.__value_.__l.__data_, v12->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *v12;
    }

    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v43, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v43 = __p;
    }

    sub_23C4B7B84(&v46, &v43, 1);
    if ((v48 & 0x80u) == 0)
    {
      v14 = &v46;
    }

    else
    {
      v14 = v46;
    }

    if ((v48 & 0x80u) == 0)
    {
      v15 = v48;
    }

    else
    {
      v15 = v47;
    }

    std::string::append(&v38, v14, v15);
    if (v48 < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
      if ((v13 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v46, "}");
  sub_23C4B7B84(&__p, &v46, 0);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v38;
  }

  else
  {
    v16 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  v18 = std::string::insert(&__p, 0, v16, size);
  *a2 = *v18;
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  for (j = 0; j != -192; j -= 24)
  {
    if (SHIBYTE(v52[j / 0x18 + 7].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52[j / 0x18 + 7].__r_.__value_.__l.__data_);
    }
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_23C4DA548(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F16398);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DA5B8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[7];
  v5 = a1[394];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 392));
  }

  v7 = a1[391];
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 389));
  }

  v9 = a1[388];
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 386));
  }

  for (i = 0; i != -9; i -= 3)
  {
    v11 = a1[i + 385];
    if (v11 != -8192 && v11 != -4096 && v11 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[i + 383]);
    }
  }

  v13 = a1[376];
  if (v13 != -8192 && v13 != -4096 && v13 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 374));
  }

  v15 = a1[373];
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 371));
  }

  v16 = a1[370];
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 368));
  }

  v17 = a1[367];
  if (v17 != -8192 && v17 != -4096 && v17)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 365));
  }

  v18 = a1[364];
  if (v18 != -8192 && v18 != -4096 && v18)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 362));
  }

  for (j = 0; j != -9; j -= 3)
  {
    v20 = a1[j + 361];
    if (v20 != -8192 && v20 != -4096 && v20 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[j + 359]);
    }
  }

  v22 = a1[348];
  if (v22 != a1 + 350)
  {
    free(v22);
  }

  v23 = a1[347];
  if (v23 != -8192 && v23 != -4096 && v23)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 345));
  }

  v24 = a2[1];
  *a1 = v24;
  *(a1 + *(v24 - 24)) = a2[6];
  v25 = a1[344];
  if (v25 != -8192 && v25 != -4096 && v25)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 342));
  }

  for (k = 0; k != -36; k -= 3)
  {
    v27 = a1[k + 339];
    if (v27 != -8192 && v27 != -4096 && v27 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[k + 337]);
    }
  }

  return sub_23C4FF150(a1, a2 + 3);
}

uint64_t *sub_23C4DA8F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1[344])
  {
    v8 = llvm::PointerType::get();
    v9 = (*(**(*(a1 + *(*a1 - 24) + 344) + 792) + 288))();
    v47[0] = "agc.stagein_buffer_pointer.";
    v47[2] = v9;
    v48 = 2051;
    v10 = (*(**(*(a1 + *(*a1 - 24) + 344) + 792) + 288))();
    v11 = sub_23C4ED494(a1, v8, v47, v10, 0x18u, 5u);
    sub_23C4D56F8((a1 + 342), v11);
  }

  llvm::FixedVectorType::get();
  v12 = llvm::UndefValue::get();
  v13 = (a1 + *(*a1 - 24));
  v14 = a1[344];
  v48 = 257;
  v15 = sub_23C497C88(v13 + 1, **(*v14 + 16), v14, 0, v47);
  if (a3 == 22)
  {
    if (*a2 != 0x676174732E726961 || a2[1] != 0x6972675F6E695F65 || *(a2 + 14) != 0x657A69735F646972)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 24)
    {
      return 0;
    }

    v16 = *a2 == 0x676174732E726961 && a2[1] == 0x6972675F6E695F65;
    if (!v16 || a2[2] != 0x6E696769726F5F64)
    {
      return 0;
    }
  }

  v21 = a1 + *(*a1 - 24);
  v22 = llvm::ConstantInt::get();
  v48 = 257;
  v23 = sub_23C49AEB8(v21, v15, v22, v47);
  v24 = (a1 + *(*a1 - 24));
  v48 = 257;
  v25 = sub_23C497C88(v24 + 1, **(*v23 + 16), v23, 0, v47);
  v26 = a1 + *(*a1 - 24);
  v48 = 257;
  v27 = llvm::ConstantInt::get();
  v28 = sub_23C505AA8((v26 + 8), v12, v25, v27, v47);
  v29 = a1 + *(*a1 - 24);
  v30 = llvm::ConstantInt::get();
  v48 = 257;
  v31 = sub_23C49AEB8(v29, v15, v30, v47);
  v32 = (a1 + *(*a1 - 24));
  v48 = 257;
  v33 = sub_23C497C88(v32 + 1, **(*v31 + 16), v31, 0, v47);
  v34 = a1 + *(*a1 - 24);
  v48 = 257;
  v35 = llvm::ConstantInt::get();
  v36 = sub_23C505AA8((v34 + 8), v28, v33, v35, v47);
  v37 = a1 + *(*a1 - 24);
  v38 = llvm::ConstantInt::get();
  v48 = 257;
  v39 = sub_23C49AEB8(v37, v15, v38, v47);
  v40 = (a1 + *(*a1 - 24));
  v48 = 257;
  v41 = sub_23C497C88(v40 + 1, **(*v39 + 16), v39, 0, v47);
  v42 = a1 + *(*a1 - 24);
  v48 = 257;
  v43 = llvm::ConstantInt::get();
  v44 = sub_23C505AA8((v42 + 8), v36, v41, v43, v47);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    v45 = *(a4 + 32);
  }

  else
  {
    v45 = 1;
  }

  v46 = sub_23C505670(a1 + *(*a1 - 24), v44, v45, 1);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    a4 = **(a4 + 16);
  }

  return sub_23C505300((a1 + *(*a1 - 24)), v46, a4);
}

uint64_t sub_23C4DAFFC(void *a1)
{
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t sub_23C4DB060(void *a1)
{
  v2 = a1[20];
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(a1[20]);
    v6 = a1[20];
    v5 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(a1[20]);
    }

    v2 = v6;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v7 = *(v2 + 88) + 40 * *(v2 + 96);
  while (v5 != v7)
  {
    if (*(v5 + 1))
    {
      v8 = *(v4 + 40);
      v9 = v8 ? v8 - 24 : 0;
      sub_23C4DB1C0(a1 + *(*a1 - 24), v9, a1[5]);
      v10 = *(v5 + 8);
      v11 = *(a1[9] + 8 * v10);
      if ((sub_23C52EDE4(a1, v5, v10, v11) & 1) == 0)
      {
        String = llvm::MDString::getString(*(v11 - 8 * *(v11 + 8) + 8));
        result = (*(*a1 + 344))(a1, String, v13, *v5);
        if (!result)
        {
          return result;
        }

        llvm::Value::replaceAllUsesWith();
      }
    }

    v5 = (v5 + 40);
  }

  return 1;
}

uint64_t sub_23C4DB1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    llvm::DebugLoc::DebugLoc();
    v5 = (a2 + 48);
    if (&v8 == (a2 + 48))
    {
      if (v8)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      if (*v5)
      {
        llvm::MetadataTracking::untrack();
      }

      v6 = v8;
      *v5 = v8;
      if (v6)
      {
        llvm::MetadataTracking::retrack();
        v8 = 0;
      }
    }
  }

  return sub_23C4C30FC(a1 + 8, a2);
}

uint64_t sub_23C4DB268(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2732);
  v3 = *(*(a1 + 2720) + 8);
  v4 = (a1 + *(*a1 - 24));
  if (v3)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v2 != 0)
  {
    std::to_string(&v37, v2);
    v14 = std::string::insert(&v37, 0, ": Kernel specified max total threads per threadgroup (");
    v15 = v14->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v38, ") ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v39, "must match compute pipeline specified max total threads per threadgroup (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = v3;
LABEL_13:
    std::to_string(&__p, v20);
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

    v23 = std::string::append(&v40, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v41, ")");
    v26 = v25->__r_.__value_.__r.__words[2];
    v42 = *&v25->__r_.__value_.__l.__data_;
    v43 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (v43 >= 0)
    {
      v27 = &v42;
    }

    else
    {
      v27 = v42;
    }

    if (v43 >= 0)
    {
      v28 = HIBYTE(v43);
    }

    else
    {
      v28 = *(&v42 + 1);
    }

    std::string::append(v4 + 17, v27, v28);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  v7 = *(v4[14].__r_.__value_.__l.__size_ + 824);
  if (!v2)
  {
    v2 = *(*(a1 + 2720) + 8);
  }

  if (v2 > v7)
  {
    std::to_string(&v37, v2);
    v8 = std::string::insert(&v37, 0, ": Specified total max threads per threadgroup (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v38, ") ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v39, "exceeds the maximum total threads per threadgroup supported (");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v20 = v7;
    goto LABEL_13;
  }

  *(a1 + 2732) = v2;
  sub_23C4FE97C(a1);
  llvm::Module::getOrInsertNamedMetadata();
  *&v42 = llvm::MDString::get();
  llvm::ConstantInt::get();
  *(&v42 + 1) = llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (*(a1 + 32) >= 2u)
  {
    llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 312), *(a1 + *(*a1 - 24) + 320));
  }

  v30 = *(a1 + *(*a1 - 24) + 320);
  v31 = v30 + 8;
  v32 = *(v30 + 16);
  if (v32 != v30 + 8)
  {
    do
    {
      if (v32)
      {
        v33 = (v32 - 56);
      }

      else
      {
        v33 = 0;
      }

      v34 = *v33;
      if (*v33)
      {
        v35 = *(v34 + 8);
        if ((v35 & 0xFE) == 0x12)
        {
          v35 = *(**(v34 + 16) + 8);
        }

        if ((v35 & 0xFFFFFF00) == 0x300)
        {
          llvm::GlobalObject::setSection();
        }
      }

      v32 = *(v32 + 8);
    }

    while (v32 != v31);
  }

  return 1;
}

uint64_t sub_23C4DB6E0(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F16398) + 3168;

  return sub_23C4B130C(v1);
}

uint64_t sub_23C4DB72C(uint64_t *a1)
{
  v150 = *MEMORY[0x277D85DE8];
  v118 = sub_23C4FDC38(a1);
  if (v118)
  {
    v1 = *(a1[19] + 80);
    if (v1)
    {
      v2 = (v1 - 24);
    }

    else
    {
      v2 = 0;
    }

    if (*(a1 + 2728) == 1)
    {
      *&v131 = llvm::BasicBlock::getFirstInsertionPt(v2);
      sub_23C4FE424(v2, &v131);
      v137 = "kernel_entry";
      v141 = 259;
      llvm::BasicBlock::splitBasicBlock();
      v137 = "early_out_block";
      v141 = 259;
      operator new();
    }

    v3 = a1 + *(*a1 - 24);
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v2);
    sub_23C497720((v3 + 8), v2, FirstInsertionPt);
    v5 = 0;
    v6 = a1 + 353;
    v7 = 1;
    do
    {
      v8 = sub_23C4DD868(a1, *(a1 + *(*a1 - 24) + 192), v5);
      sub_23C4D56F8(v6, v8);
      v7 &= v6[2] != 0;
      ++v5;
      v6 += 3;
    }

    while (v5 != 3);
    if (v7)
    {
      v9 = a1 + *(*a1 - 24);
      v10 = a1[361];
      v11 = sub_23C4DD658(a1, *(v9 + 24), 1u);
      v141 = 257;
      v12 = sub_23C49ADDC((v9 + 8), v10, v11, &v137);
      sub_23C4D56F8((a1 + 362), v12);
      v13 = a1 + *(*a1 - 24);
      v14 = a1[364];
      v15 = a1[358];
      v141 = 257;
      v16 = sub_23C49A474((v13 + 8), v14, v15, &v137);
      sub_23C4D56F8((a1 + 362), v16);
      v17 = a1 + *(*a1 - 24);
      v18 = a1[364];
      v19 = sub_23C4DD658(a1, *(v17 + 24), 0);
      v141 = 257;
      v20 = sub_23C49ADDC((v17 + 8), v18, v19, &v137);
      sub_23C4D56F8((a1 + 362), v20);
      v21 = a1 + *(*a1 - 24);
      v22 = a1[364];
      v23 = a1[355];
      v141 = 257;
      v24 = sub_23C49A474((v21 + 8), v22, v23, &v137);
      sub_23C4D56F8((a1 + 362), v24);
    }

    v25 = *(a1 + *(*a1 - 24) + 320);
    sub_23C504C2C(&v137, *v25);
    v146 = a1;
    v137 = &unk_284F1B798;
    v145[23] = v25;
    if ((atomic_load_explicit(&qword_27E1F72C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F72C8))
    {
      qword_27E1F70C8[0] = "air.get_global_size.i32";
      unk_27E1F70D0 = sub_23C4DD5CC;
      qword_27E1F70D8 = 0;
      dword_27E1F70E0 = 4;
      word_27E1F70E4 = 0;
      qword_27E1F70E8 = "air.get_global_size.i16";
      unk_27E1F70F0 = sub_23C4DD5CC;
      qword_27E1F70F8 = 0;
      dword_27E1F7100 = 4;
      word_27E1F7104 = 0;
      qword_27E1F7108 = "air.get_global_id.i32";
      unk_27E1F7110 = sub_23C4DD4E8;
      qword_27E1F7118 = 0;
      dword_27E1F7120 = 4;
      word_27E1F7124 = 0;
      qword_27E1F7128 = "air.get_global_id.i16";
      unk_27E1F7130 = sub_23C4DD4E8;
      qword_27E1F7138 = 0;
      dword_27E1F7140 = 4;
      word_27E1F7144 = 0;
      qword_27E1F7148 = "air.get_local_size.i32";
      unk_27E1F7150 = sub_23C4DD864;
      qword_27E1F7158 = 0;
      dword_27E1F7160 = 4;
      word_27E1F7164 = 0;
      qword_27E1F7168 = "air.get_local_size.i16";
      unk_27E1F7170 = sub_23C4DD864;
      qword_27E1F7178 = 0;
      dword_27E1F7180 = 4;
      word_27E1F7184 = 0;
      qword_27E1F7188 = "air.get_local_id.i32";
      unk_27E1F7190 = sub_23C4DD808;
      qword_27E1F7198 = 0;
      dword_27E1F71A0 = 4;
      word_27E1F71A4 = 0;
      qword_27E1F71A8 = "air.get_local_id.i16";
      unk_27E1F71B0 = sub_23C4DD808;
      qword_27E1F71B8 = 0;
      dword_27E1F71C0 = 4;
      word_27E1F71C4 = 0;
      qword_27E1F71C8 = "air.get_local_linear_id.i32";
      unk_27E1F71D0 = sub_23C4DD7B4;
      qword_27E1F71D8 = 0;
      dword_27E1F71E0 = 2;
      word_27E1F71E4 = 0;
      qword_27E1F71E8 = "air.get_local_linear_id.i16";
      unk_27E1F71F0 = sub_23C4DD7B4;
      qword_27E1F71F8 = 0;
      dword_27E1F7200 = 2;
      word_27E1F7204 = 0;
      qword_27E1F7208 = "air.get_global_linear_id.i32";
      unk_27E1F7210 = sub_23C4DD390;
      qword_27E1F7218 = 0;
      dword_27E1F7220 = 2;
      word_27E1F7224 = 0;
      qword_27E1F7228 = "air.get_global_linear_id.i16";
      unk_27E1F7230 = sub_23C4DD390;
      qword_27E1F7238 = 0;
      dword_27E1F7240 = 2;
      word_27E1F7244 = 0;
      qword_27E1F7248 = "air.get_num_groups.i32";
      unk_27E1F7250 = sub_23C4DD174;
      qword_27E1F7258 = 0;
      dword_27E1F7260 = 4;
      word_27E1F7264 = 0;
      qword_27E1F7268 = "air.get_num_groups.i16";
      unk_27E1F7270 = sub_23C4DD174;
      qword_27E1F7278 = 0;
      dword_27E1F7280 = 4;
      word_27E1F7284 = 0;
      qword_27E1F7288 = "air.get_group_id.i32";
      unk_27E1F7290 = sub_23C4DCF90;
      qword_27E1F7298 = 0;
      dword_27E1F72A0 = 4;
      word_27E1F72A4 = 0;
      qword_27E1F72A8 = "air.get_group_id.i16";
      unk_27E1F72B0 = sub_23C4DCF90;
      qword_27E1F72B8 = 0;
      dword_27E1F72C0 = 4;
      word_27E1F72C4 = 0;
      __cxa_guard_release(&qword_27E1F72C8);
    }

    for (i = 0; i != 16; ++i)
    {
      v27 = &qword_27E1F70C8[4 * i];
      if (*v27)
      {
        strlen(*v27);
      }

      Function = llvm::Module::getFunction();
      if (Function)
      {
        v29 = *(v27 + 6);
        v122 = Function;
        if (v29 == 9)
        {
          v32 = *(Function + 8);
          while (v32)
          {
            v33 = *(v32 + 24);
            v32 = *(v32 + 8);
            v34 = v27[1];
            v35 = v27[2];
            v36 = (v146 + (v35 >> 1));
            if (v35)
            {
              v34 = *(*v36 + v34);
            }

            v34(v36, v33);
          }
        }

        else if (v29 == 8)
        {
          v30 = v27[1];
          if (v30)
          {
            v31 = strlen(v27[1]);
            *&v147[0] = &v147[1] + 8;
            *(v147 + 8) = xmmword_23C532530;
            sub_23C4B01BC(v147, v30, &v30[v31]);
          }

          else
          {
            *&v147[1] = 64;
            v147[0] = &v147[1] + 8;
          }

          sub_23C4B01BC(v147, ".", "");
          if (*&v147[1] < *(&v147[0] + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          llvm::Module::getOrInsertFunction();
          llvm::Value::replaceAllUsesWith();
          if (*&v147[0] != (&v147[1] + 8))
          {
            free(*&v147[0]);
          }
        }

        else
        {
          v120 = i;
          v37 = **(*(Function + 24) + 16);
          v38 = ((*(v37 + 8) & 0xFE) == 18) & *(v27 + 29);
          if (v38 == 1)
          {
            v39 = *(v37 + 32);
          }

          else
          {
            v39 = 1;
          }

          v126 = v39;
          v119 = v143;
          v40 = *(Function + 8);
          if (v40)
          {
            v125 = v27;
            while (1)
            {
              v41 = *(v40 + 24);
              v124 = *(v40 + 8);
              FastMathFlags = sub_23C497EEC(v41);
              if (FastMathFlags)
              {
                FastMathFlags = llvm::Instruction::getFastMathFlags(v41);
              }

              v143 = FastMathFlags;
              sub_23C4C30FC(&v138, v41);
              v43 = llvm::UndefValue::get();
              if (v126)
              {
                break;
              }

LABEL_101:
              if (*v41 != v145[1])
              {
                llvm::Value::replaceAllUsesWith();
              }

              llvm::Instruction::eraseFromParent(v41);
              v40 = v124;
              if (!v124)
              {
                goto LABEL_104;
              }
            }

            v44 = 0;
            while (2)
            {
              v149 = 0;
              v148 = 0u;
              memset(v147, 0, sizeof(v147));
              v45 = sub_23C4B88A0(v41) - v41 + 32 * (*(v41 + 20) & 0x7FFFFFF);
              if ((v45 & 0x1FFFFFFFE0) != 0)
              {
                v46 = (v45 >> 5);
                v47 = v147;
                v48 = v41;
                do
                {
                  v49 = (v48 - 32 * (*(v41 + 20) & 0x7FFFFFF));
                  v50 = *v49;
                  *v47 = *v49;
                  if (v38 && (*(*v50 + 8) & 0xFE) == 0x12)
                  {
                    v136 = 257;
                    v51 = llvm::ConstantInt::get();
                    *v47 = sub_23C5057E8(&v138, v50, v51, &PrimitiveSizeInBits);
                  }

                  ++v47;
                  v48 += 32;
                  --v46;
                }

                while (v46);
              }

              if (*(v125 + 28))
              {
                v52 = **&v147[0];
                if ((*(**&v147[0] + 8) & 0xFE) == 0x12)
                {
                  v52 = **(v52 + 2);
                }

                PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v52);
                LODWORD(v135) = v53;
                if (llvm::TypeSize::operator unsigned long long() == 32)
                {
                  v54 = 0;
                }

                else
                {
                  v55 = v145[3];
                  if ((*(**&v147[0] + 8) & 0xFE) == 0x12)
                  {
                    v55 = llvm::FixedVectorType::get();
                  }

                  if ((v45 & 0x1FFFFFFFE0) != 0)
                  {
                    v56 = (v45 >> 5);
                    v57 = v147;
                    do
                    {
                      v58 = *v57;
                      if (*(**v57 + 8) != 15)
                      {
                        v136 = 257;
                        *v57 = sub_23C4B284C(&v138, v58, v55, &PrimitiveSizeInBits);
                      }

                      v57 = (v57 + 8);
                      --v56;
                    }

                    while (v56);
                  }

                  v54 = 1;
                }
              }

              else
              {
                v54 = 0;
              }

              v59 = v146 + *(*v146 - 24);
              v131 = v142;
              llvm::IRBuilderBase::getCurrentDebugLocation(&v132, &v138);
              v133 = v143;
              sub_23C49769C(&v131, (v59 + 8));
              if (v132)
              {
                llvm::MetadataTracking::untrack();
              }

              v60 = 0;
              v61 = *(v125 + 6);
              if (v61 > 3)
              {
                if (v61 <= 5)
                {
                  if (v61 == 4)
                  {
                    v77 = (*&v147[0] + 24);
                    if (*(*&v147[0] + 32) >= 0x41u)
                    {
                      v77 = *v77;
                    }

                    v65 = *v77;
                    v62 = v125[1];
                    v78 = v125[2];
                    v64 = *v41;
                    v66 = (v146 + (v78 >> 1));
                    if (v78)
                    {
                      v62 = *(*v66 + v62);
                    }
                  }

                  else
                  {
                    v62 = v125[1];
                    v63 = v125[2];
                    v65 = *(&v147[0] + 1);
                    v64 = *&v147[0];
                    v66 = (v146 + (v63 >> 1));
                    if (v63)
                    {
                      v62 = *(*v66 + v62);
                    }
                  }

                  v84 = v62(v66, v64, v65);
                  goto LABEL_90;
                }

                if (v61 == 6)
                {
                  v71 = v125[1];
                  v79 = v125[2];
                  v81 = *(&v147[0] + 1);
                  v80 = *&v147[0];
                  v82 = *&v147[1];
                  v73 = (v146 + (v79 >> 1));
                  if (v79)
                  {
                    v84 = (*(*v73 + v71))(v73, *&v147[0], *(&v147[0] + 1), *&v147[1]);
                    goto LABEL_90;
                  }

                  goto LABEL_89;
                }

                if (v61 == 7)
                {
                  v71 = v125[1];
                  v72 = v125[2];
                  v73 = (v146 + (v72 >> 1));
                  if (v72)
                  {
                    v71 = *(*v73 + v71);
                  }

                  v80 = v147;
                  v81 = &unk_23C53F34D;
                  v82 = 0;
LABEL_89:
                  v84 = v71(v73, v80, v81, v82);
                  goto LABEL_90;
                }

LABEL_91:
                v85 = v146 + *(*v146 - 24);
                v128 = *(v85 + 56);
                llvm::IRBuilderBase::getCurrentDebugLocation(&v129, (v85 + 8));
                v130 = *(v85 + 26);
                sub_23C49769C(&v128, &v138);
                if (v129)
                {
                  llvm::MetadataTracking::untrack();
                }

                if (v54)
                {
                  v86 = *v41;
                  if (v38 && (*(v86 + 8) & 0xFE) == 0x12)
                  {
                    v86 = **(v86 + 16);
                  }

                  v136 = 257;
                  v60 = sub_23C49FEB4(&v138, v60, v86, &PrimitiveSizeInBits);
                }

                if (v38)
                {
                  v136 = 257;
                  v87 = llvm::ConstantInt::get();
                  v60 = sub_23C505AA8(&v138, v43, v60, v87, &PrimitiveSizeInBits);
                }

                ++v44;
                v43 = v60;
                if (v44 == v126)
                {
                  goto LABEL_101;
                }

                continue;
              }

              break;
            }

            switch(v61)
            {
              case 1:
                v74 = v125[1];
                v75 = v125[2];
                v76 = (v146 + (v75 >> 1));
                if (v75)
                {
                  v74 = *(*v76 + v74);
                }

                v84 = v74(v76);
LABEL_90:
                v60 = v84;
                goto LABEL_91;
              case 2:
                v67 = v125[1];
                v83 = v125[2];
                v69 = *v41;
                v70 = (v146 + (v83 >> 1));
                if ((v83 & 1) == 0)
                {
                  goto LABEL_80;
                }

                break;
              case 3:
                v67 = v125[1];
                v68 = v125[2];
                v69 = *&v147[0];
                v70 = (v146 + (v68 >> 1));
                if ((v68 & 1) == 0)
                {
LABEL_80:
                  v84 = v67(v70, v69);
                  goto LABEL_90;
                }

                break;
              default:
                goto LABEL_91;
            }

            v67 = *(*v70 + v67);
            goto LABEL_80;
          }

LABEL_104:
          v143 = v119;
          i = v120;
        }

        llvm::Function::eraseFromParent(v122);
      }
    }

    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v145);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v144);
    if (v138 != &v140)
    {
      free(v138);
    }

    v88 = llvm::Module::getFunction();
    if (v88)
    {
      v89 = v88;
      if (!a1[370])
      {
        v137 = "agc.barrier_target_count";
        v141 = 259;
        v90 = sub_23C4DCE88(a1, &v137, *(a1 + *(*a1 - 24) + 192), 42, 4u);
        sub_23C4D56F8((a1 + 368), v90);
      }

      if (!a1[373])
      {
        v91 = llvm::User::operator new(0x58);
        v137 = "agc.barrier_counter";
        v141 = 259;
        llvm::GlobalVariable::GlobalVariable();
        llvm::GlobalObject::setSection();
        llvm::GlobalObject::setAlignment();
        sub_23C4D56F8((a1 + 371), v91);
      }

      v92 = *(v89 + 8);
      if (v92)
      {
        v93 = 0;
        v127 = a1 + 43;
        v123 = a1 + 1;
        do
        {
          v94 = *(v92 + 24);
          v95 = *(v94 - 4 * (*(v94 + 5) & 0x7FFFFFF));
          v96 = (v95 + 24);
          if (*(v95 + 32) >= 0x41u)
          {
            v96 = *v96;
          }

          v92 = *(v92 + 8);
          v97 = *v96;
          v137 = &v139;
          v138 = 0x400000000;
          v98 = llvm::PointerType::get();
          sub_23C49B500(&v137, v98);
          v99 = llvm::PointerType::get();
          sub_23C49B500(&v137, v99);
          sub_23C49B500(&v137, *(a1 + *(*a1 - 24) + 192));
          v100 = *(a1 + *(*a1 - 24) + 344);
          if (*(v100 + 880))
          {
            v101 = (v97 & 1) == 0;
          }

          else
          {
            v101 = 1;
          }

          if (v101)
          {
            v103 = (v100 + 872);
          }

          else
          {
            v102 = llvm::PointerType::get();
            sub_23C49B500(&v137, v102);
            v103 = (*(v127 + *(*a1 - 24)) + 880);
          }

          v104 = *v103;
          llvm::FunctionType::get();
          if (v104)
          {
            strlen(v104);
          }

          llvm::Module::getOrInsertFunction();
          v106 = v105;
          if (v137 != &v139)
          {
            free(v137);
          }

          sub_23C4C30FC(v123 + *(*a1 - 24), v94);
          v137 = &v139;
          v138 = 0x400000000;
          sub_23C49B500(&v137, a1[373]);
          sub_23C49B500(&v137, a1[370]);
          v107 = llvm::ConstantInt::get();
          sub_23C49B500(&v137, v107);
          v108 = *a1;
          v109 = *(v127 + *(*a1 - 24));
          v110 = *(v109 + 1636);
          if (*(v109 + 880) && (v97 & 1) != 0)
          {
            if (!a1[376])
            {
              *&v147[0] = "agc.mem_fence_addr";
              LOWORD(v148) = 259;
              v111 = llvm::PointerType::get();
              v112 = sub_23C4DCE88(a1, v147, v111, 44, 8u);
              sub_23C4D56F8((a1 + 374), v112);
              v108 = *a1;
            }

            v113 = *(v108 - 24);
            v114 = a1[376];
            LOWORD(v148) = 257;
            v115 = sub_23C497C88((v123 + v113), **(*v114 + 16), v114, 0, v147);
            sub_23C49B500(&v137, v115);
            v108 = *a1;
          }

          v116 = *(v108 - 24);
          LOWORD(v148) = 257;
          sub_23C497A7C((v123 + v116), *(v106 + 24), v106, v137, v138, v147);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v94);
          if (v137 != &v139)
          {
            free(v137);
          }

          v93 += v110 ^ 1;
        }

        while (v92);
      }
    }
  }

  return v118;
}

llvm::ValueAsMetadata *sub_23C4DCE88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = a4;
  v7 = llvm::User::operator new(0x58);
  v8 = llvm::GlobalVariable::GlobalVariable();
  *(v8 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  sub_23C506A1C(a1 + *(*a1 - 24), v7, v5, 0);
  return v7;
}

uint64_t sub_23C4DCF90(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = &a1[3 * a3];
  v6 = (v5 + 377);
  if (!v5[379])
  {
    v8 = 1;
    v9 = llvm::User::operator new(0x58);
    v10 = off_278BBFA50[a3];
    if (*v10)
    {
      v20 = off_278BBFA50[a3];
      v8 = 3;
    }

    v19[0] = "agx.group_id_";
    LOBYTE(v21) = 3;
    HIBYTE(v21) = v8;
    v11 = 1;
    llvm::GlobalVariable::GlobalVariable();
    if (*v10)
    {
      v20 = v10;
      v11 = 3;
    }

    v19[0] = "cl_group_id_";
    LOBYTE(v21) = 3;
    HIBYTE(v21) = v11;
    llvm::Twine::str(&__p, v19);
    llvm::GlobalObject::setSection();
    if (v17 < 0)
    {
      operator delete(__p);
    }

    llvm::GlobalObject::setAlignment();
    sub_23C4D56F8(v6, v9);
  }

  v12 = (a1 + *(*a1 - 24));
  v13 = *(v6 + 2);
  v21 = 257;
  v14 = sub_23C497C88(v12 + 1, **(*v13 + 16), v13, 0, v19);
  v18 = 257;
  return sub_23C49ACF8((v12 + 1), 38, v14, a2, &__p);
}

uint64_t sub_23C4DD174(void *a1, uint64_t a2, unsigned int a3)
{
  if (!a1[347])
  {
    v5 = llvm::PointerType::get();
    v6 = *(*(a1 + *(*a1 - 24) + 344) + 792);
    v7 = (*(*v6 + 232))(v6);
    v21[0] = "agc.indirect_wg_count_buffer_pointer.";
    v21[2] = v7;
    v22 = 2051;
    v8 = *(*(a1 + *(*a1 - 24) + 344) + 792);
    v9 = (*(*v8 + 232))(v8);
    v10 = sub_23C4ED494(a1, v5, v21, v9, 0xCu, 5u);
    sub_23C4D56F8((a1 + 345), v10);
  }

  v11 = (a1 + *(*a1 - 24));
  v12 = a1[347];
  v22 = 257;
  v13 = sub_23C497C88(v11 + 1, **(*v12 + 16), v12, 0, v21);
  v14 = a1 + *(*a1 - 24);
  v15 = llvm::ConstantInt::get();
  v22 = 257;
  v16 = sub_23C49AEB8(v14, v13, v15, v21);
  v17 = (a1 + *(*a1 - 24));
  v22 = 257;
  v18 = sub_23C497C88(v17 + 1, **(*v16 + 16), v16, 0, v21);
  v20[16] = 257;
  return sub_23C49ACF8((v17 + 1), 38, v18, a2, v20);
}

uint64_t sub_23C4DD390(void *a1, uint64_t a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = sub_23C4DD4E8(a1, a2, 2);
  v6 = sub_23C4DD5CC(a1, a2, 1);
  v18 = 257;
  v7 = sub_23C49ADDC((v4 + 8), v5, v6, v17);
  v8 = a1 + *(*a1 - 24);
  v9 = sub_23C4DD4E8(a1, a2, 1);
  v18 = 257;
  v10 = sub_23C49A474((v8 + 8), v7, v9, v17);
  v11 = a1 + *(*a1 - 24);
  v12 = sub_23C4DD5CC(a1, a2, 0);
  v18 = 257;
  v13 = sub_23C49ADDC((v11 + 8), v10, v12, v17);
  v14 = a1 + *(*a1 - 24);
  v15 = sub_23C4DD4E8(a1, a2, 0);
  v18 = 257;
  return sub_23C49A474((v14 + 8), v13, v15, v17);
}

uint64_t sub_23C4DD4E8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1 + *(*a1 - 24);
  v7 = sub_23C4DD658(a1, a2, a3);
  v8 = sub_23C4DCF90(a1, a2, v3);
  v15 = 257;
  v9 = sub_23C49ADDC((v6 + 8), v7, v8, v14);
  v10 = a1 + *(*a1 - 24);
  v11 = a1[3 * v3 + 355];
  v15 = 257;
  v12 = sub_23C49ACF8((v10 + 8), 38, v11, a2, v14);
  v15 = 257;
  return sub_23C49A474((v10 + 8), v9, v12, v14);
}

uint64_t sub_23C4DD5CC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1 + *(*a1 - 24);
  v7 = sub_23C4DD658(a1, a2, a3);
  v8 = sub_23C4DD174(a1, a2, v3);
  v11 = 257;
  return sub_23C49ADDC((v6 + 8), v7, v8, v10);
}

uint64_t sub_23C4DD658(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = &a1[3 * a3];
  v6 = (v5 + 322);
  if (!v5[324])
  {
    *&v14 = "local_size";
    *&v13 = "agc.";
    LOWORD(v15) = 771;
    v7 = off_278BBF9F8[a3];
    if (*v7)
    {
      *&v16 = &v13;
      *&v17 = v7;
      LOWORD(v18) = 770;
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = v15;
    }

    v8 = sub_23C4DCE88(a1, &v16, *(a1 + *(*a1 - 24) + 192), dword_23C532B88[a3 + 6], 4u);
    sub_23C4D56F8(v6, v8);
  }

  v9 = (a1 + *(*a1 - 24));
  v10 = *(v6 + 2);
  LOWORD(v18) = 257;
  v11 = sub_23C497C88(v9 + 1, **(*v10 + 16), v10, 0, &v16);
  LOWORD(v15) = 257;
  return sub_23C49ACF8((v9 + 1), 38, v11, a2, &v13);
}

uint64_t sub_23C4DD7B4(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = a1[364];
  v6 = 257;
  return sub_23C49ACF8((v2 + 8), 38, v3, a2, v5);
}

uint64_t sub_23C4DD808(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1 + *(*a1 - 24);
  v4 = a1[3 * a3 + 355];
  v7 = 257;
  return sub_23C49ACF8((v3 + 8), 38, v4, a2, v6);
}

uint64_t sub_23C4DD868(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 4 * a3 + 2808);
  if (v3 == -1)
  {
    return 0;
  }

  v7 = *(a1 + 152);
  if (*(v7 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 152));
  }

  if (v3)
  {
    v8 = *(v7 + 88) + 40 * (v3 - 1) + 40;
  }

  else
  {
    v8 = *(v7 + 88);
  }

  if (a3)
  {
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 232);
    v19 = 257;
    v11 = sub_23C49ACF8(v9 + 8, 49, v8, v10, v18);
    v12 = a1 + *(*a1 - 24);
    v19 = 257;
    v13 = llvm::ConstantInt::get();
    v14 = sub_23C5057E8(v12 + 8, v11, v13, v18);
    v15 = a1 + *(*a1 - 24);
    v19 = 257;
    v8 = sub_23C49ACF8(v15 + 8, 39, v14, a2, v18);
  }

  v17 = a1 + *(*a1 - 24);
  v19 = 257;
  return sub_23C49ACF8(v17 + 8, 38, v8, a2, v18);
}

uint64_t sub_23C4DD9EC(uint64_t *a1, int a2)
{
  if (a2 == 2)
  {
    v3 = a1[394];
    if (!v3)
    {
      v4 = a1 + 394;
      v9[0] = "agc.local_xdim_mul_and_shift";
      v10 = 259;
      v5 = sub_23C4DCE88(a1, v9, *(a1 + *(*a1 - 24) + 232), 47, 4u);
      v6 = a1 + 392;
      goto LABEL_9;
    }
  }

  else if (a2 == 1)
  {
    v3 = a1[391];
    if (!v3)
    {
      v4 = a1 + 391;
      v9[0] = "agc.local_slice_mul_and_shift";
      v10 = 259;
      v5 = sub_23C4DCE88(a1, v9, *(a1 + *(*a1 - 24) + 232), 46, 4u);
      v6 = a1 + 389;
LABEL_9:
      sub_23C4D56F8(v6, v5);
      v3 = *v4;
    }
  }

  else
  {
    v3 = a1[388];
    if (!v3)
    {
      v4 = a1 + 388;
      v9[0] = "agc.local_slice_and_linear_size";
      v10 = 259;
      v5 = sub_23C4DCE88(a1, v9, *(a1 + *(*a1 - 24) + 192), 45, 4u);
      v6 = a1 + 386;
      goto LABEL_9;
    }
  }

  v7 = (a1 + *(*a1 - 24));
  v10 = 257;
  return sub_23C497C88(v7 + 1, **(*v3 + 16), v3, 0, v9);
}

uint64_t sub_23C4DDB78(void *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, uint64_t *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a1 + *(*a1 - 24);
  v42 = 257;
  v11 = llvm::ConstantInt::get();
  v12 = sub_23C5057E8((v10 + 8), a4, v11, v41);
  v13 = a1 + *(*a1 - 24);
  v42 = 257;
  v14 = llvm::ConstantInt::get();
  v15 = sub_23C5057E8((v13 + 8), a4, v14, v41);
  v16 = (a1 + *(*a1 - 24));
  v17 = v16[43];
  v18 = *(v17 + 936);
  if (v18)
  {
    v19 = strlen(*(v17 + 936));
    v20 = sub_23C49B858(v16, v18, v19, v16[23], v16[23], v16[23], v16[23]);
    v43[0] = a2;
    v43[1] = v12;
    v43[2] = a2;
    v21 = (a1 + *(*a1 - 24));
    v42 = 257;
    v22 = sub_23C497A7C(v21 + 1, *(v20 + 24), v20, v43, 3, v41);
  }

  else
  {
    v23 = v16[24];
    v42 = 257;
    v24 = sub_23C49ACF8((v16 + 1), 39, v12, v23, v41);
    v44 = 257;
    v25 = sub_23C49ADDC((v16 + 1), a2, v24, v43);
    v26 = a1 + *(*a1 - 24);
    v42 = 257;
    v27 = sub_23C49A474((v26 + 8), v25, a2, v41);
    v28 = a1 + *(*a1 - 24);
    v29 = *(v28 + 29);
    v42 = 257;
    v30 = sub_23C49ACF8((v28 + 8), 49, v27, v29, v41);
    v31 = a1 + *(*a1 - 24);
    v42 = 257;
    v32 = llvm::ConstantInt::get();
    v22 = sub_23C5057E8((v31 + 8), v30, v32, v41);
  }

  v33 = a1 + *(*a1 - 24);
  v42 = 257;
  v34 = sub_23C49B560((v33 + 8), v22, v15, v41);
  v35 = *a2;
  v44 = 257;
  v36 = sub_23C49ACF8((v33 + 8), 39, v34, v35, v43);
  if (a5)
  {
    *a5 = v36;
  }

  v37 = a1 + *(*a1 - 24);
  v42 = 257;
  v38 = sub_23C49ADDC((v37 + 8), v36, a3, v41);
  v39 = a1 + *(*a1 - 24);
  v42 = 257;
  return sub_23C4BF7D4((v39 + 8), a2, v38, v41);
}

llvm::ValueHandleBase *sub_23C4DDEAC(llvm::ValueHandleBase *this, void *a2)
{
  v2 = *(this + 2);
  v3 = a2[2];
  if (v2 != v3)
  {
    v5 = this;
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      this = llvm::ValueHandleBase::RemoveFromUseList(this);
      v3 = a2[2];
    }

    *(v5 + 2) = v3;
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      v8 = (*a2 & 0xFFFFFFFFFFFFFFF8);

      return llvm::ValueHandleBase::AddToExistingUseList(v5, v8);
    }
  }

  return this;
}

uint64_t sub_23C4DDF40(uint64_t *a1)
{
  if (*(a1 + 698))
  {
    operator new();
  }

  return llvm::FunctionType::get();
}

uint64_t sub_23C4DE07C(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v4 = *(a1 + 160);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v3 != v5)
  {
    while (1)
    {
      v6 = *(*(a1 + 72) + 8 * *(v3 + 32));
      if (!v6 || !*(v3 + 8))
      {
        goto LABEL_38;
      }

      String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8));
      if (v8 == 34)
      {
        break;
      }

      if (v8 != 31)
      {
        if (v8 != 27)
        {
          goto LABEL_38;
        }

        v9 = *String == 0x657268742E726961 && String[1] == 0x7469736F705F6461;
        v10 = v9 && String[2] == 0x675F6E695F6E6F69;
        if (!v10 || *(String + 19) != 0x646972675F6E695FLL)
        {
          goto LABEL_38;
        }

LABEL_37:
        if ((*(*v3 + 8) & 0xFE) == 0x12)
        {
          goto LABEL_71;
        }

        goto LABEL_38;
      }

      if (*String == 0x657268742E726961 && String[1] == 0x7865646E695F6461 && String[2] == 0x657268745F6E695FLL && *(String + 23) == 0x70756F7267646165)
      {
LABEL_71:
        *(a1 + 3160) = 1;
        goto LABEL_39;
      }

LABEL_38:
      v3 += 40;
      if (v3 == v5)
      {
        goto LABEL_39;
      }
    }

    if (memcmp(String, "air.thread_position_in_threadgroup", 0x22uLL))
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_39:
  v15 = sub_23C4DB268(a1);
  if (v15)
  {
    LOBYTE(v16) = 1;
    if (*(a1 + 2728))
    {
LABEL_58:
      *(a1 + 2808) = -1;
      *(a1 + 2816) = -1;
LABEL_59:
      sub_23C4A72DC(a1 + 2784, 0);
      *(a1 + 2808) = 0;
    }

    else
    {
      v17 = 0;
      v16 = 0;
      do
      {
        strlen(off_278BBFA10[v17]);
        Function = llvm::Module::getFunction();
        if (Function)
        {
          if (!*(Function + 96))
          {
            goto LABEL_57;
          }

          v19 = *(Function + 8);
          if (v19)
          {
            while (1)
            {
              v20 = *(*(v19 + 24) - 32 * (*(*(v19 + 24) + 20) & 0x7FFFFFF));
              if (!v20 || *(v20 + 16) != 16)
              {
                break;
              }

              v22 = (v20 + 24);
              if (*(v20 + 32) >= 0x41u)
              {
                v22 = *v22;
              }

              v16 |= 1 << *v22;
              v19 = *(v19 + 8);
              if (!v19)
              {
                goto LABEL_53;
              }
            }

LABEL_57:
            LOBYTE(v16) = 7;
            goto LABEL_58;
          }
        }

LABEL_53:
        if (v17 > 6)
        {
          break;
        }

        ++v17;
      }

      while (v16 != 7);
      *(a1 + 2808) = -1;
      *(a1 + 2816) = -1;
      if (v16)
      {
        goto LABEL_59;
      }
    }

    if ((v16 & 6) != 0)
    {
      sub_23C4A72DC(a1 + 2784, 3);
      if ((v16 & 2) != 0)
      {
        *(a1 + 2812) = *(a1 + 2792) - 1;
      }

      if ((v16 & 4) != 0)
      {
        *(a1 + 2816) = *(a1 + 2792) - 1;
      }
    }

    llvm::Module::getOrInsertNamedMetadata();
    if (MGGetBoolAnswer())
    {
      v23 = sub_23C4A2690("AGC_DISABLE_ATOMIC_OPTIMIZATIONS");
      if (v23)
      {
        if (*v23 != 48)
        {
          atoi(v23);
        }
      }
    }

    llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  return v15;
}

void sub_23C4DE4B4(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F16398);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DE50C(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F16398);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

void sub_23C4DE544(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F16628);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DE5B4(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F16628) + 3168;

  return sub_23C4B130C(v1);
}

uint64_t *sub_23C4DE600(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3 == 22)
  {
    if (*a2 != 0x676174732E726961 || a2[1] != 0x6972675F6E695F65 || *(a2 + 14) != 0x657A69735F646972)
    {
      return 0;
    }

    v8 = 73;
    v9 = "agc.stage_in_grid_size";
  }

  else
  {
    if (a3 != 24)
    {
      return 0;
    }

    v6 = *a2 == 0x676174732E726961 && a2[1] == 0x6972675F6E695F65;
    if (!v6 || a2[2] != 0x6E696769726F5F64)
    {
      return 0;
    }

    v8 = 72;
    v9 = "agc.stage_in_grid_origin";
  }

  v13 = *(a4 + 8) & 0xFE;
  v21 = 261;
  v20[0] = v9;
  v20[1] = a3;
  v14 = llvm::FixedVectorType::get();
  v15 = sub_23C4DCE88(a1, v20, v14, v8, 4u);
  v16 = (a1 + *(*a1 - 24));
  v21 = 257;
  v17 = sub_23C497C88(v16 + 1, **(*v15 + 16), v15, 0, v20);
  if (v13 == 18)
  {
    v18 = *(v4 + 32);
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_23C505670(a1 + *(*a1 - 24), v17, v18, 1);
  if (v13 == 18)
  {
    v4 = **(v4 + 16);
  }

  return sub_23C505300((a1 + *(*a1 - 24)), v19, v4);
}

void sub_23C4DE7F4(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F16628);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DE84C(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F16628);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

void sub_23C4DE898(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F16920;
  v4[400] = &unk_284F16AF0;
  sub_23C4DE94C((v4 + 396), a2, a3, a4);
  sub_23C4DA5B8(v4, &off_284F16B60);
  sub_23C4B130C((v4 + 400));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DE94C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 33));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void sub_23C4DE9C8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F168C0);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DEA38(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F168C0) + 3168;

  return sub_23C4B130C(v1);
}

void sub_23C4DEA8C(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F168C0);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DEAE4(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F168C0);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

uint64_t sub_23C4DEB1C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F16920;
  v4[400] = &unk_284F16AF0;
  sub_23C4DE94C((v4 + 396), a2, a3, a4);
  sub_23C4DA5B8(v4, &off_284F16B60);

  return sub_23C4B130C((v4 + 400));
}

uint64_t sub_23C4DEBC4(void *a1)
{
  sub_23C503E5C(a1, a1 + 396);

  return sub_23C4DB060(a1);
}

void sub_23C4DEC00(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F16920;
  v5 = a1 + 400;
  a1[400] = &unk_284F16AF0;
  sub_23C4DE94C((a1 + 396), a2, a3, a4);
  sub_23C4DA5B8(a1, &off_284F16B60);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DECA0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F16920;
  v5 = a1 + 400;
  a1[400] = &unk_284F16AF0;
  sub_23C4DE94C((a1 + 396), a2, a3, a4);
  sub_23C4DA5B8(a1, &off_284F16B60);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C4DED2C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F16BC8;
  v4[400] = &unk_284F16D98;
  sub_23C4DE94C((v4 + 396), a2, a3, a4);
  sub_23C4DA5B8(v4, &off_284F16E08);
  sub_23C4B130C((v4 + 400));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DEDE0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F16BC8;
  v4[400] = &unk_284F16D98;
  sub_23C4DE94C((v4 + 396), a2, a3, a4);
  sub_23C4DA5B8(v4, &off_284F16E08);

  return sub_23C4B130C((v4 + 400));
}

uint64_t sub_23C4DEE88(void *a1)
{
  sub_23C503E5C(a1, a1 + 396);

  return sub_23C4DB060(a1);
}

void sub_23C4DEEC4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F16BC8;
  v5 = a1 + 400;
  a1[400] = &unk_284F16D98;
  sub_23C4DE94C((a1 + 396), a2, a3, a4);
  sub_23C4DA5B8(a1, &off_284F16E08);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DEF64(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F16BC8;
  v5 = a1 + 400;
  a1[400] = &unk_284F16D98;
  sub_23C4DE94C((a1 + 396), a2, a3, a4);
  sub_23C4DA5B8(a1, &off_284F16E08);
  sub_23C4B130C(v5);
  return a1;
}

uint64_t sub_23C4DEFE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23C52DD68(a1, a2 + 1, a3, "air.kernel", &unk_27E1F70C0, 0);
  v8 = 0;
  v9 = *a2;
  *v7 = *a2;
  *(a1 + *(v9 - 24)) = a2[5];
  do
  {
    *(a1 + v8 + 2432) = 4;
    *(a1 + v8 + 2440) = 0uLL;
    v8 += 24;
  }

  while (v8 != 288);
  *(a1 + 2720) = a4;
  *(a1 + 2728) = (*(a4 + 12) & 1) == 0;
  *(a1 + 2736) = 4;
  *(a1 + 2744) = 0u;
  sub_23C52FD10(a1, (*(a4 + 12) >> 1) & 1, (*(a4 + 12) >> 2) & 1);
  *(a1 + 14) = (*(a4 + 12) & 0x20) != 0;
  *(a1 + 2272) = *a4;
  v10 = *(a1 + *(*a1 - 24) + 320);
  *v21 = "air.kernel";
  v22 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v10, v21);
  if (NamedMetadata && (Operand = llvm::NamedMDNode::getOperand(NamedMetadata), v13 = *(Operand + 8), v13 >= 4))
  {
    v14 = Operand;
    v15 = 3;
    while (1)
    {
      v16 = *(v14 - 8 * v13 + 8 * v15);
      v17 = *v16;
      if (v17 <= 0x22 && ((0x7FFFFFFF0uLL >> v17) & 1) != 0)
      {
        v21[0] = 0;
        if (*(v16 + 2))
        {
          break;
        }
      }

LABEL_12:
      if (++v15 >= v13)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      v20 = 0;
      if (sub_23C506AF0("air.max_work_group_size", v16, v21, &v20))
      {
        break;
      }

      if (++v21[0] >= *(v16 + 2))
      {
        v13 = *(v14 + 8);
        goto LABEL_12;
      }
    }

    v18 = v20;
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  *(a1 + 2732) = v18;
  *(a1 + 15) = (*(a4 + 12) & 0x10) != 0;
  return a1;
}

double sub_23C4DF230(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C4DEFE4(a1, a2 + 1, a3, a4);
  v6 = 0;
  v7 = *a2;
  *v5 = *a2;
  *(v5 + *(v7 - 24)) = a2[7];
  *(v5 + 2760) = 4;
  *(v5 + 2768) = 0u;
  *(v5 + 2784) = v5 + 2800;
  *(v5 + 2792) = 0x200000000;
  do
  {
    v8 = v5 + v6;
    *(v8 + 2824) = 4;
    *(v8 + 2832) = 0uLL;
    v6 += 24;
  }

  while (v6 != 72);
  v9 = 0;
  *(v5 + 2904) = 0u;
  *(v5 + 2952) = 0u;
  *(v5 + 3000) = 0u;
  *(v5 + 2896) = 4;
  *(v5 + 2920) = 4;
  *(v5 + 2928) = 0u;
  *(v5 + 2944) = 4;
  *(v5 + 2968) = 4;
  *(v5 + 2976) = 0u;
  *(v5 + 2992) = 4;
  do
  {
    v10 = v5 + v9;
    *(v10 + 3016) = 4;
    *(v10 + 3024) = 0uLL;
    v9 += 24;
  }

  while (v9 != 72);
  *(v5 + 3088) = 4;
  result = 0.0;
  *(v5 + 3096) = 0u;
  *(v5 + 3112) = 4;
  *(v5 + 3120) = 0u;
  *(v5 + 3136) = 4;
  *(v5 + 3160) = 0;
  *(v5 + 3144) = 0u;
  return result;
}

uint64_t *sub_23C4DF3A0(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x23EED4160](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = a3;
  *(v11 + 24) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void sub_23C4DF4A4(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F170B0);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DF514(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F170B0) + 3168;

  return sub_23C4B130C(v1);
}

void sub_23C4DF56C(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F170B0);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DF5C4(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F170B0);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

void sub_23C4DF608(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  sub_23C4DA5B8(v1, &off_284F17358);
  sub_23C4B130C((v1 + 396));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4DF678(void *a1)
{
  v1 = sub_23C4DA5B8((a1 + *(*a1 - 32)), &off_284F17358) + 3168;

  return sub_23C4B130C(v1);
}

void sub_23C4DF6D0(uint64_t *a1)
{
  v1 = sub_23C4DA5B8(a1, &off_284F17358);
  sub_23C4B130C(v1 + 3168);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4DF728(uint64_t *a1)
{
  v2 = sub_23C4DA5B8(a1, &off_284F17358);
  sub_23C4B130C(v2 + 3168);
  return a1;
}

uint64_t sub_23C4DF77C(uint64_t a1)
{
  v344 = *MEMORY[0x277D85DE8];
  if (*(a1 + 29) != 1)
  {
    return 0;
  }

  v1 = a1;
  v309 = MGGetBoolAnswer() && (v2 = sub_23C4A2690("AGC_DEBUG_LLVM_IR")) != 0 && *v2 != 48 && atoi(v2) != 0;
  v3 = *(v1 + *(*v1 - 24) + 320);
  *&__str = "air.shaderSource";
  LOWORD(v336) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v3, &__str);
  if (NamedMetadata)
  {
    v5 = NamedMetadata;
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
    v8 = *(*v1 - 24);
    if (String)
    {
      v9 = String;
      v10 = (v1 + v8);
      v11 = (*(*(v1 + v8) + 24))(v1 + v8);
      if (sub_23C4B00BC(v11))
      {
        v12 = (*(*v10 + 24))(v10);
        snprintf(&__str, 0x80uLL, "%s shader %u (shader source)", v12, v10[174]);
        v13 = (*(*v10 + 24))(v10);
        v14 = strcmp(v13, "compute");
        if (v14 && (v14 = strcmp(v13, "compute-program"), v14))
        {
          v15 = "Graphics";
        }

        else
        {
          v15 = "Compute";
        }

        sub_23C4AA240(v14, "------ Start %s %s -------\n", v15, &__str);
        sub_23C4AA240(v17, "%s\n", v9);
        sub_23C4AA240(v18, "------ End %s %s -------\n", v15, &__str);
      }
    }

    llvm::NamedMDNode::eraseFromParent(v5);
  }

  sub_23C4B20A8(v1 + *(*v1 - 24), "generic");
  v19 = (*(*(v1 + *(*v1 - 24)) + 24))(v1 + *(*v1 - 24));
  sub_23C4AA240(v19, "------ Compilation flags for %s shader %u ------", v19, *(v1 + *(*v1 - 24) + 696));
  v20 = *(v1 + *(*v1 - 24) + 104);
  sub_23C4AA240(v21, "Object fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", (v20 >> 1) & 1, (v20 >> 2) & 1, (v20 >> 3) & 1, (v20 >> 4) & 1, v20 == -1);
  v22 = *(*(v1 + *(*v1 - 24) + 344) + 104);
  sub_23C4AA240(v23, "Target fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", (v22 >> 1) & 1, (v22 >> 2) & 1, (v22 >> 3) & 1, (v22 >> 4) & 1, v22 == -1);
  sub_23C4AA240(v24, "Codegen fast-math options: { finite-math=%d, unsafe-fp-math=%d, less_pecise_fmad=%d}", *(v1 + 26), *(v1 + 25), *(v1 + 28));
  v25 = (*(*(v1 + *(*v1 - 24)) + 24))(v1 + *(*v1 - 24));
  sub_23C4AA240(v25, "------ End compilation flags for %s shader %u ------", v25, *(v1 + *(*v1 - 24) + 696));
  v26 = (*(*(v1 + *(*v1 - 24)) + 24))(v1 + *(*v1 - 24));
  sub_23C4AA240(v26, "------ Start compilation key description for %s shader %u  ------", v26, *(v1 + *(*v1 - 24) + 696));
  v27 = (*(*(v1 + *(*v1 - 24)) + 72))(&__str);
  if (SHIBYTE(v334) >= 0)
  {
    sub_23C4AA240(v27, &__str);
  }

  else
  {
    sub_23C4AA240(v27, __str);
  }

  if (SHIBYTE(v334) < 0)
  {
    operator delete(__str);
  }

  v28 = (*(*(v1 + *(*v1 - 24)) + 24))(v1 + *(*v1 - 24));
  sub_23C4AA240(v28, "------ End compilation key description for %s shader %u  ------", v28, *(v1 + *(*v1 - 24) + 696));
  GlobalVariable = llvm::Module::getGlobalVariable();
  v30 = v309;
  if (GlobalVariable)
  {
    GlobalVariable = llvm::GlobalVariable::eraseFromParent(GlobalVariable);
  }

  v316 = v1;
  if (*(v1 + 37) == 1)
  {
    v31 = *(v1 + *(*v1 - 24) + 320);
    v32 = *(v31 + 32);
    v310 = v31 + 24;
    if (v32 == v31 + 24)
    {
      v33 = 0;
    }

    else
    {
      v33 = 0;
      do
      {
        v312 = v32;
        if (v32)
        {
          v34 = (v32 - 56);
        }

        else
        {
          v34 = 0;
        }

        GlobalVariable = llvm::GlobalValue::isDeclaration(v34);
        if ((GlobalVariable & 1) == 0)
        {
          v307 = v33;
          *&__str = &v334;
          *(&__str + 1) = 0x1000000000;
          v35 = *(v34 + 10);
          if (v35)
          {
            v36 = v35 - 24;
          }

          else
          {
            v36 = 0;
          }

          v37 = v36 + 40;
          v38 = *(v36 + 48);
          if (v38 == v36 + 40)
          {
            v30 = v309;
            v33 = v307;
          }

          else
          {
            do
            {
              if (v38)
              {
                v39 = v38 - 24;
              }

              else
              {
                v39 = 0;
              }

              if (v38 && *(v39 + 16) == 59)
              {
                GlobalVariable = sub_23C49B500(&__str, v38 - 24);
              }

              v38 = *(v38 + 8);
            }

            while (v38 != v37);
            if (DWORD2(__str))
            {
              v40 = *__str;
              v330 = v332;
              v332[0] = v40;
              v331 = 0x400000001;
              v328 = 0;
              v329[0] = 0;
              v327 = &v328;
              operator new();
            }

            v33 = v307;
            v30 = v309;
            if (__str != &v334)
            {
              free(__str);
            }
          }
        }

        v32 = *(v312 + 8);
      }

      while (v32 != v310);
    }

    sub_23C4AA240(GlobalVariable, "RemoveAndForwardAllocaStores: removed %u instructions", v33);
    if (!v30)
    {
      sub_23C4E31E8(v1);
      (*(*v1 + 40))(v1);
      goto LABEL_55;
    }

    sub_23C4B20A8(v1 + *(*v1 - 24), "after RemoveAndForwardAllocaStores");
  }

  sub_23C4E31E8(v1);
  (*(*v1 + 40))(v1);
  if (v30)
  {
    sub_23C4B20A8(v1 + *(*v1 - 24), "after simplifyGenericIR");
  }

LABEL_55:
  v41 = (*(*v1 + 48))(v1);
  v42 = v41;
  if (v30)
  {
    sub_23C4B20A8(v1 + *(*v1 - 24), "after initCompile");
    if (!v42)
    {
LABEL_57:
      if (!v30)
      {
        goto LABEL_58;
      }

      goto LABEL_126;
    }
  }

  else if (!v41)
  {
    goto LABEL_57;
  }

  v42 = (*(*v1 + 104))(v1);
  if (!v30)
  {
LABEL_58:
    if (!v42)
    {
      goto LABEL_59;
    }

    goto LABEL_127;
  }

LABEL_126:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after setupShaderInputs");
  if (!v42)
  {
LABEL_59:
    if (!v30)
    {
      goto LABEL_60;
    }

    goto LABEL_128;
  }

LABEL_127:
  v42 = sub_23C4E3C14(v1);
  if (!v30)
  {
LABEL_60:
    if (!v42)
    {
      goto LABEL_61;
    }

    goto LABEL_129;
  }

LABEL_128:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after setupArgumentBuffers");
  if (!v42)
  {
LABEL_61:
    if (!v30)
    {
      goto LABEL_62;
    }

    goto LABEL_130;
  }

LABEL_129:
  v42 = (*(*v1 + 96))(v1);
  if (!v30)
  {
LABEL_62:
    if (!v42)
    {
      goto LABEL_63;
    }

    goto LABEL_131;
  }

LABEL_130:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after setupShaderWrapper");
  if (!v42)
  {
LABEL_63:
    if (!v30)
    {
      goto LABEL_64;
    }

    goto LABEL_132;
  }

LABEL_131:
  v42 = (*(*v1 + 112))(v1);
  if (!v30)
  {
LABEL_64:
    if (!v42)
    {
      goto LABEL_65;
    }

    goto LABEL_133;
  }

LABEL_132:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after setupShaderOutputs");
  if (!v42)
  {
LABEL_65:
    if (!v30)
    {
      goto LABEL_66;
    }

    goto LABEL_138;
  }

LABEL_133:
  v74 = *(*(v1 + 152) + 72);
  v75 = *(*(v1 + 152) + 80);
  if (v74 != v75)
  {
    do
    {
      v76 = *v74;
      llvm::MergeBlockIntoPredecessor();
      v74 = v76;
    }

    while (v76 != v75);
  }

  llvm::legacy::PassManager::run(*(*(v1 + *(*v1 - 24) + 400) + 328), *(v1 + *(*v1 - 24) + 320));
  llvm::NamedMDNode::eraseFromParent(*(v1 + 48));
  if ((*(*(v1 + *(*v1 - 24)) + 48))(v1 + *(*v1 - 24)))
  {
    llvm::Function::getSubprogram(*(v1 + 160));
    llvm::Function::setSubprogram();
  }

  llvm::Function::eraseFromParent(*(v1 + 160));
  *(v1 + 160) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v30 = v309;
  if (!v309)
  {
LABEL_66:
    if (!v42)
    {
      goto LABEL_67;
    }

    goto LABEL_139;
  }

LABEL_138:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after cleanupShaderIR");
  if (!v42)
  {
LABEL_67:
    if (!v30)
    {
      goto LABEL_68;
    }

    goto LABEL_140;
  }

LABEL_139:
  v42 = (*(*v1 + 120))(v1);
  if (!v30)
  {
LABEL_68:
    if (!v42)
    {
      goto LABEL_69;
    }

    goto LABEL_141;
  }

LABEL_140:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after setupImageBlocks");
  if (!v42)
  {
LABEL_69:
    if (!v30)
    {
      goto LABEL_70;
    }

    goto LABEL_142;
  }

LABEL_141:
  (*(*v1 + 128))(v1);
  if (!v30)
  {
LABEL_70:
    if (!v42)
    {
      goto LABEL_71;
    }

    goto LABEL_143;
  }

LABEL_142:
  sub_23C4B20A8(v1 + *(*v1 - 24), "After setupIndirectSamplers");
  if (!v42)
  {
LABEL_71:
    if (!v30)
    {
      goto LABEL_72;
    }

LABEL_144:
    sub_23C4B20A8(v1 + *(*v1 - 24), "After allocateTexturesAndSamplers");
    if (v42)
    {
      goto LABEL_73;
    }

LABEL_145:
    v77 = 0;
    goto LABEL_438;
  }

LABEL_143:
  v42 = sub_23C4E63A0(v1);
  if (v30)
  {
    goto LABEL_144;
  }

LABEL_72:
  if (!v42)
  {
    goto LABEL_145;
  }

LABEL_73:
  sub_23C4B8970();
  sub_23C4E8E90();
  sub_23C4E8F14();
  sub_23C4E8F98();
  sub_23C4E901C();
  v330 = v332;
  v331 = 0x800000000;
  sub_23C4E90A0(v1, &v330);
  v327 = v329;
  v328 = 0x800000000;
  v324 = v326;
  v325 = 0x800000000;
  if (!v331)
  {
    goto LABEL_158;
  }

  v43 = v330;
  v320 = (v330 + 8 * v331);
  do
  {
    v44 = *v43;
    v341.__r_.__value_.__r.__words[0] = 0;
    sub_23C4E9178(v44, &v341);
    v45 = *(v1 + 816);
    v46 = *(v1 + 824);
    if (v45 >= v46)
    {
      v49 = *(v1 + 808);
      v50 = v45 - v49;
      v51 = (v45 - v49) >> 3;
      v52 = v51 + 1;
      if ((v51 + 1) >> 61)
      {
        sub_23C496CE8();
      }

      v53 = v46 - v49;
      if (v53 >> 2 > v52)
      {
        v52 = v53 >> 2;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFF8)
      {
        v54 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        if (!(v54 >> 61))
        {
          operator new();
        }

        sub_23C496CE8();
      }

      v55 = (v45 - v49) >> 3;
      v56 = (8 * v51);
      v47 = v341.__r_.__value_.__r.__words[0];
      v57 = (8 * v51 - 8 * v55);
      *v56 = v341.__r_.__value_.__r.__words[0];
      v48 = v56 + 1;
      memcpy(v57, v49, v50);
      *(v1 + 808) = v57;
      *(v1 + 816) = v48;
      *(v1 + 824) = 0;
      if (v49)
      {
        operator delete(v49);
      }
    }

    else
    {
      v47 = v341.__r_.__value_.__r.__words[0];
      *v45 = v341.__r_.__value_.__r.__words[0];
      v48 = v45 + 8;
    }

    *(v1 + 816) = v48;
    sub_23C4B8970();
    sub_23C4E901C();
    *&__str = &v334;
    *(&__str + 1) = 0x2000000000;
    sub_23C49B500(&__str, v44);
    v58 = DWORD2(__str);
    if (!DWORD2(__str))
    {
LABEL_111:
      v67 = 0;
      goto LABEL_113;
    }

    while (1)
    {
      v59 = *(__str + 8 * v58-- - 8);
      DWORD2(__str) = v58;
      v60 = *(v59 + 8);
      if (v60)
      {
        break;
      }

LABEL_110:
      if (!v58)
      {
        goto LABEL_111;
      }
    }

    while (1)
    {
      v61 = *(v60 + 24);
      v62 = *(v61 + 16);
      if (v62 <= 0x1B)
      {
        if (v62 != 5 || *(v61 + 18) != 49)
        {
          goto LABEL_112;
        }

        goto LABEL_96;
      }

      if (v62 == 84)
      {
        break;
      }

      if (v62 != 77)
      {
        goto LABEL_112;
      }

LABEL_96:
      sub_23C49B500(&__str, v61);
LABEL_97:
      v60 = *(v60 + 8);
      if (!v60)
      {
        v58 = DWORD2(__str);
        goto LABEL_110;
      }
    }

    v63 = *(v61 - 32);
    if (v63 && !*(v63 + 16) && *(v63 + 24) == *(v61 + 72))
    {
      llvm::Value::getName(v63);
      Key = llvm::StringMapImpl::FindKey();
      if (Key != -1 && Key != dword_27E1F7458)
      {
        goto LABEL_97;
      }

      v65 = llvm::StringMapImpl::FindKey();
      v66 = v65 == -1 || v65 == dword_27E1F7400;
      if (!v66)
      {
        goto LABEL_97;
      }
    }

LABEL_112:
    v67 = 1;
LABEL_113:
    if (__str != &v334)
    {
      free(__str);
    }

    if (v67)
    {
      if ((*(*v1 + 288))(v1))
      {
        v323.__r_.__value_.__r.__words[0] = v47;
        v68 = *(v1 + 792);
        v69 = *(v1 + 784);
        sub_23C4E9244(v1 + 784, &v323);
        if (v328 >= HIDWORD(v328))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v327 + v328) = ((v68 - v69) >> 3) | 0x100000000;
        LODWORD(v328) = v328 + 1;
        v70 = llvm::ConstantInt::get();
        if (v325 >= HIDWORD(v325))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v324 + v325) = v70;
        LODWORD(v325) = v325 + 1;
        v71 = v1 + *(*v1 - 24);
        v72 = llvm::ConstantInt::get();
        v73 = *v44;
        LOWORD(v336) = 257;
        sub_23C49ACF8(v71 + 8, 48, v72, v73, &__str);
        llvm::Value::replaceAllUsesWith();
        goto LABEL_120;
      }

      v82 = (v1 + *(*v1 - 24));
      v83 = "Indirect samplers are not supported";
LABEL_288:
      std::string::append(v82 + 17, v83);
LABEL_289:
      v77 = 0;
      goto LABEL_432;
    }

LABEL_120:
    ++v43;
  }

  while (v43 != v320);
  if (v328)
  {
    v78 = 1;
    v79 = llvm::User::operator new(0x58);
    llvm::ArrayType::get(*(v1 + 1744), v328);
    v80 = *(v1 + 1736);
    v81 = "_indirect";
    if (*v80)
    {
      v334 = "_indirect";
      v78 = 3;
      v81 = v80;
    }

    *&__str = v81;
    LOBYTE(v336) = 3;
    BYTE1(v336) = v78;
    llvm::GlobalVariable::GlobalVariable();
    if (*(v1 + 1752))
    {
      strlen(*(v1 + 1752));
    }

    llvm::GlobalObject::setSection();
    *&__str = &v334;
    *(&__str + 1) = 0x2000000000;
    v84 = llvm::ValueAsMetadata::get();
    sub_23C49B500(&__str, v84);
    llvm::ConstantInt::get();
    v85 = llvm::ValueAsMetadata::get();
    if (v328)
    {
      v86 = v85;
      v87 = v327;
      v88 = 8 * v328;
      do
      {
        *&v341.__r_.__value_.__l.__data_ = v86;
        v87 += 8;
        llvm::ConstantInt::get();
        v341.__r_.__value_.__l.__size_ = llvm::ValueAsMetadata::get();
        Impl = llvm::MDTuple::getImpl();
        sub_23C49B500(&__str, Impl);
        v88 -= 8;
      }

      while (v88);
    }

    v90 = *(v1 + *(*v1 - 24) + 328);
    v91 = llvm::MDTuple::getImpl();
    sub_23C49B500(v90, v91);
    sub_23C4D56F8((v1 + 1712), v79);
    if (__str != &v334)
    {
      free(__str);
    }

    llvm::ArrayType::get(*(v1 + *(*v1 - 24) + 200), v328);
    v92 = llvm::User::operator new(0x58);
    llvm::ArrayType::get(*(v1 + *(*v1 - 24) + 200), v328);
    *&__str = "agc.constant_sampler_unique_id";
    LOWORD(v336) = 259;
    llvm::GlobalVariable::GlobalVariable();
    *(v92 + 80) |= 1u;
    llvm::ConstantArray::get();
    llvm::GlobalVariable::setInitializer();
    sub_23C4D56F8((v1 + 1824), v92);
  }

LABEL_158:
  sub_23C4F0968();
  v93 = *v1;
  v94 = *(v1 + *(*v1 - 24) + 320);
  v95 = *(v94 + 32);
  v96 = v94 + 24;
  if (v95 == v94 + 24)
  {
    goto LABEL_204;
  }

  v317 = v94 + 24;
  v97 = &qword_27E1F6A20[188];
  while (2)
  {
    v98 = *(v95 + 8);
    if (v95)
    {
      v99 = (v95 - 56);
    }

    else
    {
      v99 = 0;
    }

    llvm::Value::getName(v99);
    v100 = llvm::StringMapImpl::FindKey();
    if (v100 != -1 && v100 != *(v97 + 246))
    {
      sub_23C4B8970();
      sub_23C4E8E90();
      sub_23C4E8F98();
      sub_23C4E901C();
      v321 = (v95 - 56);
      if (*(*(v1 + *(*v1 - 24) + 344) + 1678) == 1)
      {
        llvm::ConstantInt::get();
        llvm::ConstantExpr::getIntToPtr();
      }

      else
      {
        llvm::Constant::getNullValue(**(*(v95 - 32) + 16), v101);
      }

      v102 = *(v95 - 48);
      if (!v102)
      {
        goto LABEL_201;
      }

      while (1)
      {
        v103 = *(v102 + 24);
        v102 = *(v102 + 8);
        v104 = *(v103 + 1);
        if (!v104)
        {
          goto LABEL_200;
        }

        do
        {
          v105 = *(v104 + 24);
          v104 = *(v104 + 8);
          if (v105)
          {
            if (*(v105 + 16) == 84)
            {
              v106 = *(v105 - 32);
              if (v106)
              {
                if (!*(v106 + 16) && *(v106 + 24) == *(v105 + 72))
                {
                  llvm::Value::getName(*(v105 - 32));
                  v107 = llvm::StringMapImpl::FindKey();
                  v108 = v107;
                  if (v107 == -1)
                  {
                    v108 = dword_27E1F7458;
                  }

                  v109 = qword_27E1F7450 + 8 * v108;
                  llvm::Value::getName(v106);
                  v110 = llvm::StringMapImpl::FindKey();
                  v112 = v110 != -1 && v110 != dword_27E1F7360;
                  if (v109 != qword_27E1F7450 + 8 * dword_27E1F7458 || v112)
                  {
                    llvm::UndefValue::get();
                    goto LABEL_191;
                  }

                  llvm::Value::getName(v106);
                  v114 = llvm::StringMapImpl::FindKey();
                  if (v114 != -1 && v114 != dword_27E1F7400)
                  {
                    llvm::Constant::getNullValue(*v105, v115);
LABEL_191:
                    v1 = v316;
LABEL_192:
                    llvm::Value::replaceAllUsesWith();
                    llvm::Instruction::eraseFromParent(v105);
                    continue;
                  }

                  llvm::Value::getName(v106);
                  v116 = llvm::StringMapImpl::FindKey();
                  v1 = v316;
                  if (v116 != -1 && v116 != dword_27E1F73B0)
                  {
                    llvm::ConstantInt::get();
                    goto LABEL_192;
                  }
                }
              }
            }
          }
        }

        while (v104);
        if (*(v103 + 1))
        {
          llvm::Value::replaceAllUsesWith();
        }

LABEL_200:
        llvm::Instruction::eraseFromParent(v103);
        if (!v102)
        {
LABEL_201:
          llvm::Function::eraseFromParent(v321);
          v96 = v317;
          v97 = qword_27E1F6A20 + 1504;
          break;
        }
      }
    }

    v95 = v98;
    if (v98 != v96)
    {
      continue;
    }

    break;
  }

  v93 = *v1;
LABEL_204:
  v117 = *(v1 + *(v93 - 24) + 320);
  v118 = *(v117 + 32);
  v119 = v117 + 24;
  if (v118 != v117 + 24)
  {
    v315 = 0;
    v120 = (v1 + 8);
    v322 = (v1 + 8);
    v314 = v117 + 24;
    while (1)
    {
      v121 = *(v118 + 8);
      if (v118)
      {
        v122 = (v118 - 56);
      }

      else
      {
        v122 = 0;
      }

      llvm::Value::getName(v122);
      v123 = llvm::StringMapImpl::FindKey();
      if (v123 != -1 && v123 != dword_27E1F7458)
      {
        if (!sub_23C4E9344(v1, v118 - 56, (*(qword_27E1F7450 + 8 * v123) + 8)))
        {
          goto LABEL_289;
        }

LABEL_242:
        if (!*(v118 - 48))
        {
          goto LABEL_281;
        }

        goto LABEL_258;
      }

      llvm::Value::getName((v118 - 56));
      v125 = llvm::StringMapImpl::FindKey();
      if (v125 != -1 && v125 != dword_27E1F7360)
      {
        break;
      }

      llvm::Value::getName((v118 - 56));
      v156 = llvm::StringMapImpl::FindKey();
      if (v156 == -1 || v156 == dword_27E1F7400)
      {
        llvm::Value::getName((v118 - 56));
        v167 = llvm::StringMapImpl::FindKey();
        if (v167 == -1 || v167 == dword_27E1F7388)
        {
          llvm::Value::getName((v118 - 56));
          v177 = llvm::StringMapImpl::FindKey();
          if (v177 == -1 || v177 == dword_27E1F73B0)
          {
            goto LABEL_282;
          }

          v178 = *(v118 - 48);
          if (!v178)
          {
            goto LABEL_281;
          }

          do
          {
            v179 = *(v178 + 24);
            v178 = *(v178 + 8);
            v180 = *(v179 - 4 * (*(v179 + 5) & 0x7FFFFFF));
            if (v180[16] - 11 > 1)
            {
              sub_23C4C30FC(v120 + *(*v1 - 24), v179);
              v181 = sub_23C4ED304(v1, v180);
              v182 = *(*v1 - 24);
              LOWORD(v336) = 257;
              NullValue = llvm::Constant::getNullValue(*v181, v183);
              v185 = (v120 + v182);
              v1 = v316;
              sub_23C497D84(v185, 32, v181, NullValue, &__str);
            }

            else
            {
              llvm::UndefValue::get();
            }

            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v179);
          }

          while (v178);
          goto LABEL_242;
        }

        v168 = *(v118 - 48);
        if (v168)
        {
          while (2)
          {
            v169 = *(v168 + 24);
            v168 = *(v168 + 8);
            v170 = *(v169 - 4 * (*(v169 + 5) & 0x7FFFFFF));
            if (v170[16] - 11 <= 1)
            {
              llvm::UndefValue::get();
              goto LABEL_270;
            }

            if (((*(*v1 + 272))(v1) & 1) != 0 || *(llvm::Value::stripPointerCasts(v170) + 16) <= 0x14u)
            {
              sub_23C4C30FC(v120 + *(*v1 - 24), v169);
              v171 = v1 + *(*v1 - 24);
              v172 = *(v171 + 344);
              v173 = *(v172 + 904);
              if (v173)
              {
                v174 = strlen(*(v172 + 904));
              }

              else
              {
                v174 = 0;
              }

              v175 = sub_23C4A0414(v171, v173, v174, *(v171 + 144));
              v176 = *(*v1 - 24);
              LOWORD(v336) = 257;
              sub_23C497A7C((v120 + v176), **(*v175 + 16), v175, 0, 0, &__str);
LABEL_270:
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v169);
            }

            if (!v168)
            {
              goto LABEL_242;
            }

            continue;
          }
        }

LABEL_281:
        llvm::Function::eraseFromParent((v118 - 56));
        goto LABEL_282;
      }

      *&__str = llvm::Value::getName((v118 - 56));
      *(&__str + 1) = v157;
      v158 = llvm::StringRef::find();
      v159 = *(v118 - 48);
      if (!v159)
      {
        goto LABEL_281;
      }

      v160 = v158;
      do
      {
        v161 = *(v159 + 24);
        v159 = *(v159 + 8);
        v162 = *(v161 - 4 * (*(v161 + 5) & 0x7FFFFFF));
        if (v162[16] - 11 > 1)
        {
          sub_23C4C30FC(v120 + *(*v1 - 24), v161);
          if (v160 == -1)
          {
            v163 = *(*v1 - 24);
            v164 = sub_23C4EC4B4(v316, v162, 9);
            LOWORD(v336) = 257;
            v165 = (v120 + v163);
            v1 = v316;
            sub_23C497C88(v165, **(*v164 + 16), v164, 0, &__str);
          }

          else
          {
            *&__str = 0;
            if (sub_23C4E9178(v162, &__str))
            {
              llvm::ConstantInt::get();
            }

            else
            {
              sub_23C4EE264(v1, v162, 2);
            }
          }
        }

        else
        {
          llvm::UndefValue::get();
        }

        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v161);
      }

      while (v159);
      v166 = *(v118 - 48);
LABEL_257:
      if (!v166)
      {
        goto LABEL_281;
      }

LABEL_258:
      v315 = 1;
LABEL_282:
      v118 = v121;
      if (v121 == v119)
      {
        v93 = *v1;
        if (v315)
        {
          if ((*(v93 + 272))(v1))
          {
            v83 = "Could not statically determine the target of a texture write";
          }

          else
          {
            v83 = "Could not resolve texture/sampler references";
          }

          v82 = (v1 + *(*v1 - 24));
          goto LABEL_288;
        }

        goto LABEL_290;
      }
    }

    v126 = *(v118 - 48);
    if (!v126)
    {
      goto LABEL_281;
    }

    v127 = *(qword_27E1F7358 + 8 * v125);
    v318 = v121;
    while (1)
    {
      v128 = *(v126 + 24);
      v126 = *(v126 + 8);
      v129 = *(v128 - 4 * (*(v128 + 5) & 0x7FFFFFF));
      if (v129[16] - 11 > 1)
      {
        if (((*(*v1 + 272))(v1) & 1) == 0 && *(llvm::Value::stripPointerCasts(v129) + 16) > 0x14u)
        {
          goto LABEL_221;
        }

        sub_23C4C30FC(v120 + *(*v1 - 24), v128);
        v130 = *(v127 + 12);
        if (v130 <= 2)
        {
          if (v130 < 3)
          {
            if (v130 || (*(v127 + 16) & 1) == 0)
            {
              v136 = *(*v1 - 24);
              v137 = sub_23C4EC4B4(v1, v129, 2);
              LOWORD(v336) = 257;
              v138 = sub_23C497C88((v120 + v136), **(*v137 + 16), v137, 0, &__str);
              v139 = v1 + *(*v1 - 24);
              LOWORD(v336) = 257;
              v140 = llvm::ConstantInt::get();
              v131 = sub_23C5057E8(v139 + 8, v138, v140, &__str);
            }

            else
            {
              v131 = sub_23C4EEE44(v1, v129);
            }

            v141 = v131;
            v142 = sub_23C4B88A0(v128);
            v143 = (v128 - 32 * (*(v128 + 5) & 0x7FFFFFF));
            if (((v142 - v143) & 0x1FFFFFFFE0) == 0x40)
            {
              v144 = sub_23C506198(v1 + *(*v1 - 24), v143[4], 0);
              v145 = *(*v1 - 24);
              LOWORD(v336) = 257;
              v146 = sub_23C49B560(v322 + v145, v141, v144, &__str);
              v147 = llvm::ConstantInt::get();
              llvm::ConstantInt::get();
              v148 = *(*v1 - 24);
              LOWORD(v336) = 257;
              sub_23C497D84((v322 + v148), 32, v146, v147, &__str);
              LOWORD(v336) = 257;
              v120 = v322;
              llvm::IRBuilderBase::CreateSelect();
            }

            v121 = v318;
          }

          goto LABEL_220;
        }

        switch(v130)
        {
          case 3:
            v149 = *(*v1 - 24);
            v150 = sub_23C4EC4B4(v1, v129, 2);
            LOWORD(v336) = 257;
            v151 = sub_23C497C88((v322 + v149), **(*v150 + 16), v150, 0, &__str);
            v152 = v1 + *(*v1 - 24);
            LOWORD(v336) = 257;
            v120 = v322;
            v153 = llvm::ConstantInt::get();
            sub_23C5057E8(v152 + 8, v151, v153, &__str);
            break;
          case 4:
            v132 = *(*v1 - 24);
            v133 = v1;
            v134 = v129;
            v135 = 5;
            goto LABEL_240;
          case 5:
            v132 = *(*v1 - 24);
            v133 = v1;
            v134 = v129;
            v135 = 6;
LABEL_240:
            v154 = sub_23C4EC4B4(v133, v134, v135);
            LOWORD(v336) = 257;
            sub_23C497C88((v120 + v132), **(*v154 + 16), v154, 0, &__str);
            break;
        }
      }

      else
      {
        llvm::UndefValue::get();
      }

LABEL_220:
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v128);
LABEL_221:
      if (!v126)
      {
        v166 = *(v118 - 48);
        v119 = v314;
        goto LABEL_257;
      }
    }
  }

LABEL_290:
  v186 = v1 + *(v93 - 24);
  v187 = *(v186 + 400);
  v188 = *(v186 + 320);
  sub_23C4AEAD4(v187);
  llvm::legacy::PassManager::run(*(v187 + 344), v188);
  v189 = *(v1 + 760);
  v190 = (v1 + 768);
  if (v189 != (v1 + 768))
  {
    do
    {
      v191 = v189[6];
      if (v191)
      {
        if (*(v191 + 8))
        {
          v341.__r_.__value_.__r.__words[0] = llvm::Value::getName(v189[6]);
          v341.__r_.__value_.__l.__size_ = v192;
          v193 = sub_23C4AE5DC(&__str, &v341);
          if (SHIBYTE(v334) >= 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str;
          }

          sub_23C4AA240(v193, "%s: image or sample GV %s still has references: \n", "void AGCLLVMUserObject::cleanupSamplerGlobalVariables()", p_str);
          if (SHIBYTE(v334) < 0)
          {
            operator delete(__str);
          }

          v195 = *(v191 + 8);
          if (v195)
          {
            v196 = MEMORY[0x277D821F8] + 16;
            do
            {
              memset(&v341, 0, sizeof(v341));
              DWORD2(__str) = 0;
              v337 = 0;
              v338 = 0;
              v339 = 1;
              v335 = 0;
              v336 = 0;
              v334 = 0;
              *&__str = v196;
              v340 = &v341;
              sub_23C4AE584(&__str);
              v197 = llvm::Value::print(*(v195 + 24), &__str);
              v198 = v340;
              if (SHIBYTE(v340->__r_.__value_.__r.__words[2]) < 0)
              {
                v198 = v340->__r_.__value_.__r.__words[0];
              }

              sub_23C4AA240(v197, "\t%s\n", v198);
              llvm::raw_ostream::~raw_ostream(&__str);
              if (SHIBYTE(v341.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v341.__r_.__value_.__l.__data_);
              }

              v195 = *(v195 + 8);
            }

            while (v195);
          }
        }

        else
        {
          llvm::GlobalVariable::eraseFromParent(v189[6]);
        }
      }

      v199 = v189[1];
      if (v199)
      {
        do
        {
          v200 = v199;
          v199 = *v199;
        }

        while (v199);
      }

      else
      {
        do
        {
          v200 = v189[2];
          v66 = *v200 == v189;
          v189 = v200;
        }

        while (!v66);
      }

      v189 = v200;
    }

    while (v200 != v190);
  }

  v1 = v316;
  sub_23C4ED864(*(v316 + 768));
  *(v316 + 760) = v190;
  *(v316 + 768) = 0u;
  v201 = *(v316 + 704);
  if (v201 || *(v316 + 708))
  {
    v202 = (v316 + 696);
    v203 = *(v316 + 712);
    if (v203 <= 4 * v201 || v203 < 0x41)
    {
      *(&__str + 1) = 2;
      v334 = 0;
      v335 = -4096;
      v336 = 0;
      *&__str = &unk_284F1B7D8;
      *&v341.__r_.__value_.__r.__words[1] = 2uLL;
      v342 = -8192;
      v343 = 0;
      v341.__r_.__value_.__r.__words[0] = &unk_284F1B7D8;
      if (v203)
      {
        v208 = *v202;
        v209 = 48 * v203;
        v210 = (v208 + 32);
        do
        {
          sub_23C4DDEAC((v210 - 3), &__str + 1);
          *v210 = v336;
          v210 += 6;
          v209 -= 48;
        }

        while (v209);
        v211 = v342;
        *(v316 + 704) = 0;
        if (v211 != -8192 && v211 != -4096 && v211 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v341.__r_.__value_.__r.__words[1]);
        }
      }

      else
      {
        *(v316 + 704) = 0;
      }

      if (v335 != -8192 && v335 != -4096 && v335)
      {
        llvm::ValueHandleBase::RemoveFromUseList((&__str + 8));
      }
    }

    else
    {
      sub_23C4EE154((v316 + 696));
      v204 = 1 << (33 - __clz(v201 - 1));
      if (v204 <= 64)
      {
        v204 = 64;
      }

      if (v201)
      {
        v205 = v204;
      }

      else
      {
        v205 = 0;
      }

      if (v205 != *(v316 + 712))
      {
        llvm::deallocate_buffer(*v202, (48 * v203));
        if (!v205)
        {
          *v202 = 0;
          *(v316 + 704) = 0;
          *(v316 + 712) = 0;
          goto LABEL_341;
        }

        v206 = (4 * v205 / 3u + 1) | ((4 * v205 / 3u + 1) >> 1);
        v207 = v206 | (v206 >> 2) | ((v206 | (v206 >> 2)) >> 4);
        LODWORD(v207) = (((v207 | (v207 >> 8)) >> 16) | v207 | (v207 >> 8)) + 1;
        *(v316 + 712) = v207;
        *(v316 + 696) = MEMORY[0x23EED4160](48 * v207, 8);
      }

      sub_23C4EDF58((v316 + 696));
    }
  }

LABEL_341:
  sub_23C4ED8D0(v316 + 720);
  if (*(v316 + 784) != *(v316 + 792))
  {
    v213 = *v316;
    v214 = *(v316 + *(*v316 - 24) + 320);
    v215 = v214 + 8;
    v216 = *(v214 + 16);
    if (v216 == v214 + 8)
    {
      v219 = 0;
      v218 = 0;
      v217 = 0;
      v1 = v316;
    }

    else
    {
      v217 = 0;
      v218 = 0;
      v219 = 0;
      do
      {
        if (v216)
        {
          v220 = v216 - 56;
        }

        else
        {
          v220 = 0;
        }

        if (*(v220 + 8))
        {
          if ((*(v220 + 34) & 0x40) != 0 && (v221 = llvm::GlobalObject::getSectionImpl(v220), v222 == 11) && (*v221 == 0x74735F6567616D69 ? (v223 = *(v221 + 3) == 0x65746174735F6567) : (v223 = 0), v223))
          {
            if (*(*v220 + 8) == 17)
            {
              v217 = (v217 + *(*v220 + 32));
            }

            else
            {
              v217 = (v217 + 1);
            }
          }

          else if ((*(v220 + 34) & 0x40) != 0 && (v224 = llvm::GlobalObject::getSectionImpl(v220), v225 == 13) && (*v224 == 0x5F72656C706D6173 ? (v226 = *(v224 + 5) == 0x65746174735F7265) : (v226 = 0), v226))
          {
            ++v218;
          }

          else if ((*(v220 + 34) & 0x40) != 0)
          {
            SectionImpl = llvm::GlobalObject::getSectionImpl(v220);
            if (v228 == 15)
            {
              v229 = bswap64(*SectionImpl);
              v230 = 0x636F6E7374616E74;
              if (v229 == 0x636F6E7374616E74 && (v229 = bswap64(*(SectionImpl + 7)), v230 = 0x745F647269766572, v229 == 0x745F647269766572))
              {
                v231 = 0;
              }

              else
              {
                v231 = v229 < v230 ? -1 : 1;
              }

              if (!v231)
              {
                ++v219;
              }
            }
          }
        }

        v216 = *(v216 + 8);
      }

      while (v216 != v215);
      v1 = v316;
      v213 = *v316;
    }

    v232 = *(v1 + *(v213 - 24) + 344);
    if (((*(*v232 + 344))(v232, v217, (v218 + v219)) & 1) == 0)
    {
      std::to_string(&v323, v218 + v219 + v217);
      v300 = std::string::insert(&v323, 0, "Total number of textures and samplers (");
      v301 = v300->__r_.__value_.__r.__words[2];
      *&v341.__r_.__value_.__l.__data_ = *&v300->__r_.__value_.__l.__data_;
      v341.__r_.__value_.__r.__words[2] = v301;
      v300->__r_.__value_.__l.__size_ = 0;
      v300->__r_.__value_.__r.__words[2] = 0;
      v300->__r_.__value_.__r.__words[0] = 0;
      v302 = std::string::append(&v341, ") exceeds GPU allowance.");
      v303 = v302->__r_.__value_.__r.__words[2];
      __str = *&v302->__r_.__value_.__l.__data_;
      v334 = v303;
      v302->__r_.__value_.__l.__size_ = 0;
      v302->__r_.__value_.__r.__words[2] = 0;
      v302->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v334) >= 0)
      {
        v304 = &__str;
      }

      else
      {
        v304 = __str;
      }

      if (SHIBYTE(v334) >= 0)
      {
        v305 = HIBYTE(v334);
      }

      else
      {
        v305 = *(&__str + 1);
      }

      std::string::append((v1 + *(*v1 - 24) + 408), v304, v305);
      if (SHIBYTE(v334) < 0)
      {
        operator delete(__str);
      }

      if (SHIBYTE(v341.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v341.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v323.__r_.__value_.__l.__data_);
      }

      goto LABEL_289;
    }
  }

  if (((*(*v1 + 280))(v1) & 1) == 0)
  {
    v233 = *(v1 + *(*v1 - 24) + 320);
    v234 = *(v233 + 32);
    v308 = v233 + 24;
    if (v234 != v233 + 24)
    {
      v306 = v1 + 344;
      v235 = v1 + 8;
      do
      {
        v311 = *(v234 + 8);
        if (v234)
        {
          v236 = (v234 - 56);
        }

        else
        {
          v236 = 0;
        }

        v237 = *(v306 + *(*v1 - 24));
        Name = llvm::Value::getName(v236);
        if ((*(*v237 + 544))(v237, Name, v239))
        {
          v240 = *(v234 - 48);
          if (v240)
          {
            do
            {
              v241 = 0;
              v242 = *(v240 + 24);
              v243 = *(v240 + 8);
              *&__str = &v334;
              *(&__str + 1) = 0x1000000000;
              v313 = v243;
              while (1)
              {
                v244 = sub_23C4B88A0(v242);
                v245 = v242 - 32 * (*(v242 + 20) & 0x7FFFFFF);
                if (v241 >= ((v244 - v245) >> 5))
                {
                  v253 = 0;
                  LODWORD(v241) = 0;
                  goto LABEL_406;
                }

                v246 = *(v245 + 32 * v241);
                sub_23C49B500(&__str, v246);
                v247 = *(v246 + 16);
                do
                {
                  if (v247 != 77)
                  {
                    break;
                  }

                  v246 = *(v246 - 32);
                  v247 = *(v246 + 16);
                }

                while (v246);
                if (v247 == 84)
                {
                  v248 = *(v246 - 32);
                  if (v248)
                  {
                    if (!*(v248 + 16) && *(v248 + 24) == *(v246 + 72))
                    {
                      v249 = llvm::Value::getName(v248);
                      if (v250 == 21)
                      {
                        v251 = *v249 == 0x7867612E6D766C6CLL && v249[1] == 0x657275747865742ELL;
                        if (v251 && *(v249 + 13) == 0x6574617453657275)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                ++v241;
              }

              v253 = *(v246 - 32 * (*(v246 + 20) & 0x7FFFFFF) + 32);
LABEL_406:
              v254 = (v241 + 1);
              for (i = v242 + 32 * v254; ; i += 32)
              {
                v256 = sub_23C4B88A0(v242);
                v257 = *(v242 + 20) & 0x7FFFFFF;
                if (v254 >= ((v256 - (v242 + 32 * -v257)) >> 5))
                {
                  break;
                }

                sub_23C49B500(&__str, *(i - 32 * v257));
                LODWORD(v254) = v254 + 1;
              }

              if (v253 && *(v253 + 16) >= 0x15u)
              {
                v258 = *(v242 + 40);
                v341.__r_.__value_.__r.__words[0] = "indirect.switch.end";
                LOWORD(v343) = 259;
                v319 = llvm::BasicBlock::splitBasicBlock();
                v259 = *(v258 + 40);
                if (v259 == v258 + 40)
                {
                  v262 = 0;
                }

                else
                {
                  v260 = (v259 - 24);
                  if (v259)
                  {
                    v261 = v259 - 24;
                  }

                  else
                  {
                    v261 = 0;
                  }

                  if (*(v261 + 16) - 29 >= 0xB)
                  {
                    v262 = 0;
                  }

                  else
                  {
                    v262 = v260;
                  }
                }

                llvm::Instruction::eraseFromParent(v262);
                v263 = v316 + *(*v316 - 24);
                *(v263 + 56) = v258;
                *(v263 + 64) = v258 + 40;
                v264 = v316 + *(*v316 - 24);
                v265 = *(v264 + 184);
                LOWORD(v343) = 257;
                v266 = sub_23C49ACF8(v264 + 8, 38, v253, v265, &v341);
                v267 = *(v316 + 2284);
                v268 = v235 + *(*v316 - 24);
                v269 = llvm::User::operator new(0x40);
                v270 = MEMORY[0x23EED3BF0](v269, v266, v319, v267, 0);
                LOWORD(v343) = 257;
                (*(**(v268 + 80) + 16))(*(v268 + 80), v270, &v341, *(v268 + 48), *(v268 + 56));
                v271 = *(v268 + 8);
                if (v271)
                {
                  v272 = *v268;
                  v273 = v272 + 16 * v271;
                  do
                  {
                    llvm::Instruction::setMetadata();
                    v272 += 16;
                  }

                  while (v272 != v273);
                }

                if (v267)
                {
                  llvm::ConstantInt::get();
                  v341.__r_.__value_.__r.__words[0] = "indirect.switch.case";
                  LOWORD(v343) = 259;
                  operator new();
                }

                llvm::Value::replaceAllUsesWith();
                llvm::Instruction::eraseFromParent(v242);
              }

              v240 = v313;
              if (__str != &v334)
              {
                free(__str);
              }
            }

            while (v313);
          }
        }

        v234 = v311;
        v1 = v316;
      }

      while (v311 != v308);
    }
  }

  v77 = 1;
LABEL_432:
  if (v324 != v326)
  {
    free(v324);
  }

  if (v327 != v329)
  {
    free(v327);
  }

  if (v330 != v332)
  {
    free(v330);
  }

LABEL_438:
  if (v309)
  {
    sub_23C4B20A8(v1 + *(*v1 - 24), "after replaceTexturesAndSamplers");
    sub_23C4E8844(v1);
    sub_23C4B20A8(v1 + *(*v1 - 24), "after simplifyTrigIdentities");
  }

  else
  {
    sub_23C4E8844(v1);
  }

  v274 = *(*(*(v1 + *(*v1 - 24) + 344) + 784) + 43);
  if ((v77 & v274) == 1)
  {
    v275 = (*(*v1 + 184))(v1);
  }

  else
  {
    v275 = v77 & (v274 ^ 1);
  }

  v276 = v309;
  if ((*(v1 + 10) & 1) != 0 || !MGGetBoolAnswer())
  {
    goto LABEL_455;
  }

  v277 = sub_23C4A2690("AGC_ENABLE_F16_FASTMATH_BUILTINS");
  if (v277 && *v277 != 48)
  {
    if (atoi(v277))
    {
      if (v275)
      {
        v275 = (*(*v1 + 144))(v1);
      }

      if (v309)
      {
        sub_23C4B20A8(v1 + *(*v1 - 24), "after replace f16 builtins");
        goto LABEL_453;
      }
    }

LABEL_455:
    if (!v275)
    {
      goto LABEL_457;
    }

LABEL_456:
    v275 = (*(*v1 + 176))(v1, 0);
    goto LABEL_457;
  }

LABEL_453:
  if (v275)
  {
    goto LABEL_456;
  }

  v275 = 0;
LABEL_457:
  if (MGGetBoolAnswer() && (v278 = sub_23C4A2690("AGC_ENABLE_PRECISE_MATH")) != 0 && *v278 != 48 && atoi(v278))
  {
    v279 = *(*(*(v1 + *(*v1 - 24) + 344) + 784) + 32);
    v280 = (v279 == 0) & v275;
    if (v279 && ((v275 ^ 1) & 1) == 0)
    {
      v280 = (*(*v1 + 176))(v1, 1);
    }
  }

  else
  {
    v280 = v275;
  }

  if (v309)
  {
    sub_23C4B20A8(v1 + *(*v1 - 24), "after linking runtime");
  }

  if (!v280)
  {
    v16 = 0;
    if (!v309)
    {
      goto LABEL_472;
    }

    goto LABEL_471;
  }

  v16 = (*(*v1 + 136))(v1);
  if (v309)
  {
LABEL_471:
    sub_23C4B20A8(v1 + *(*v1 - 24), "after replaceBuiltins");
  }

LABEL_472:
  if (v16)
  {
    v16 = (*(*v1 + 192))(v1);
    if (!v309)
    {
LABEL_474:
      if (!v16)
      {
        goto LABEL_475;
      }

      goto LABEL_480;
    }
  }

  else if (!v309)
  {
    goto LABEL_474;
  }

  sub_23C4B20A8(v1 + *(*v1 - 24), "after promoteGlobalConstants");
  if (!v16)
  {
LABEL_475:
    if (!v309)
    {
      goto LABEL_476;
    }

    goto LABEL_481;
  }

LABEL_480:
  v16 = (*(*v1 + 152))(v1);
  if (!v309)
  {
LABEL_476:
    if (!v16)
    {
      goto LABEL_500;
    }

    goto LABEL_482;
  }

LABEL_481:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after improveDMAPromotionOpportunity");
  if (!v16)
  {
    goto LABEL_500;
  }

LABEL_482:
  v281 = *(v1 + 152);
  *(v281 + 18) = *(v281 + 18) & 0xC00F | (16 * (*(*v1 + 88))(v1));
  v276 = v309;
  inserted = llvm::Module::getOrInsertNamedMetadata();
  if (inserted)
  {
    v283 = inserted;
    NumOperands = llvm::NamedMDNode::getNumOperands(inserted);
    v285 = NumOperands;
    *&__str = &v334;
    *(&__str + 1) = 0x400000000;
    if (NumOperands)
    {
      v286 = (NumOperands - 1) + 1;
    }

    else
    {
      v286 = 0;
    }

    if (v286 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v287 = 0;
    if (NumOperands)
    {
      v288 = 0;
      v289 = __str;
      do
      {
        *(v289 + 8 * v288++) = llvm::NamedMDNode::getOperand(v283);
      }

      while (v285 != v288);
      v287 = DWORD2(__str);
      v276 = v309;
    }

    DWORD2(__str) = v287 + v286;
    v1 = v316;
    llvm::Module::eraseNamedMetadata(*(v316 + *(*v316 - 24) + 320), v283);
    llvm::Module::getOrInsertNamedMetadata();
    v290 = __str;
    if (DWORD2(__str))
    {
      v291 = 8 * DWORD2(__str);
      do
      {
        if (*&(*v290)[-8 * *(*v290 + 2)])
        {
          llvm::NamedMDNode::addOperand();
        }

        ++v290;
        v291 -= 8;
      }

      while (v291);
      v290 = __str;
      v276 = v309;
    }

    if (v290 != &v334)
    {
      free(v290);
    }
  }

LABEL_500:
  if (v276)
  {
    sub_23C4B20A8(v1 + *(*v1 - 24), "after prunePRIDsOfDeletedGlobals");
    if (!v16)
    {
LABEL_502:
      if (!v276)
      {
        goto LABEL_503;
      }

      goto LABEL_534;
    }
  }

  else if (!v16)
  {
    goto LABEL_502;
  }

  sub_23C4B22E0(v1 + *(*v1 - 24), *(v1 + 152));
  if (!v276)
  {
LABEL_503:
    if (!v16)
    {
      goto LABEL_504;
    }

    goto LABEL_535;
  }

LABEL_534:
  sub_23C4B20A8(v1 + *(*v1 - 24), "after finalizeDriverBindings");
  if (!v16)
  {
LABEL_504:
    if (!v276)
    {
      goto LABEL_506;
    }

    goto LABEL_505;
  }

LABEL_535:
  v16 = (*(*v1 + 160))(v1);
  if (v276)
  {
LABEL_505:
    sub_23C4B20A8(v1 + *(*v1 - 24), "after markInvariantOutputs");
  }

LABEL_506:
  if (MGGetBoolAnswer())
  {
    v292 = sub_23C4A2690("AGX_FORCE_LATE_INLINING");
    if (v292)
    {
      if (*v292 != 48 && atoi(v292))
      {
        if (v16)
        {
          *(v1 + 32) = 0;
          v293 = *(v1 + *(*v1 - 24) + 320);
          v294 = *(v293 + 32);
          v295 = v293 + 24;
          if (v294 != v293 + 24)
          {
            do
            {
              v296 = *(v294 + 8);
              if (v294)
              {
                v297 = (v294 - 56);
              }

              else
              {
                v297 = 0;
              }

              if ((llvm::GlobalValue::isDeclaration(v297) & 1) == 0)
              {
                ++*(v316 + 32);
                if (v294 - 56 != *(v316 + 152))
                {
                  llvm::Function::addFnAttr();
                  *(v294 - 24) = *(v294 - 24) & 0xFFFFBFC0 | 0x4007;
                }
              }

              v294 = v296;
            }

            while (v296 != v295);
            v1 = v316;
            if (*(v316 + 32) > 1u)
            {
              llvm::legacy::PassManager::run(*(*(v316 + *(*v316 - 24) + 400) + 304), *(v316 + *(*v316 - 24) + 320));
            }
          }
        }

        if (v309)
        {
          sub_23C4B20A8(v1 + *(*v1 - 24), "after inlineFunctionsLate");
        }
      }
    }
  }

  if (v16)
  {
    if (!(*(*v1 + 168))(v1))
    {
      goto LABEL_537;
    }

    v298 = 1;
    if ((*(*(v1 + *(*v1 - 24)) + 32))(v1 + *(*v1 - 24)) != 2)
    {
      if ((*(*(v1 + *(*v1 - 24)) + 32))(v1 + *(*v1 - 24)) == 16)
      {
        v298 = 1;
      }

      else
      {
        v298 = 2;
      }
    }

    if (sub_23C4AF8FC(*(v1 + *(*v1 - 24) + 400), (v1 + *(*v1 - 24)), *(v1 + *(*v1 - 24) + 320), *(v1 + 25), v298, *(v1 + 36)) && (*(*(v1 + *(*v1 - 24)) + 80))(v1 + *(*v1 - 24)))
    {
      sub_23C4C420C(v1 + *(*v1 - 24));
      v16 = 1;
    }

    else
    {
LABEL_537:
      v16 = 0;
    }
  }

  *(v1 + *(*v1 - 24) + 360) = mach_absolute_time() - *(v1 + *(*v1 - 24) + 352);
  return v16;
}

void sub_23C4E31E8(uint64_t a1)
{
  v1 = a1;
  v99[8] = *MEMORY[0x277D85DE8];
  v2 = a1 + *(*a1 - 24);
  if (*(*(v2 + 344) + 1674) != 1 || (*(a1 + 37) & 1) != 0)
  {
    v3 = 0;
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v17 = *(v2 + 320);
  v18 = (v17 + 168);
  v19 = *(v17 + 191);
  if (v19 < 0)
  {
    if (*(v17 + 176) != 20)
    {
      goto LABEL_82;
    }

    v18 = *v18;
  }

  else if (v19 != 20)
  {
    goto LABEL_82;
  }

  v31 = *v18;
  v32 = v18[1];
  v33 = *(v18 + 4);
  if (v31 == 0x535F786574726556 && v32 == 0x6F72505F65746174 && v33 == 1835102823)
  {
    v3 = 0;
    v79 = "Disabling non-inlined functions for ES1 vertex shader";
LABEL_197:
    sub_23C4AA240(a1, v79);
    goto LABEL_4;
  }

LABEL_82:
  v36 = *(a1 + 160);
  if (*(v36 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v37 = *(v36 + 88);
    if (*(v36 + 18))
    {
      llvm::Function::BuildLazyArguments(v36);
      v38 = *(v36 + 88);
      goto LABEL_183;
    }
  }

  else
  {
    v37 = *(v36 + 88);
  }

  v38 = v37;
LABEL_183:
  v78 = v38 + 40 * *(v36 + 96);
  if (v37 == v78)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v79 = "Disabling non-inlined functions due to use of indirect argument buffer";
    do
    {
      if (*(v37 + 8))
      {
        v80 = *(v1[9] + 8 * *(v37 + 32));
        a1 = sub_23C4A57A0(*(v80 - 8 * *(v80 + 8) + 8), "air.indirect_buffer");
        if (a1)
        {
          goto LABEL_197;
        }

        if (sub_23C4A57A0(*(v80 - 8 * *(v80 + 8) + 8), "air.texture"))
        {
          LOBYTE(v97) = 0;
          LOBYTE(v94) = 0;
          v81 = sub_23C506E20(v80, &v87, &v82, &v97, &v94, v92, v92);
          if (v81 && v97 == 1 && v94 == 1)
          {
            sub_23C4AA240(v81, "Inlining all texture functions due to the use of a RW texture");
            v3 = 1;
          }
        }
      }

      v37 += 40;
    }

    while (v37 != v78);
  }

  v4 = 1;
LABEL_5:
  *(v1 + 8) = 0;
  v5 = *(v1 + *(*v1 - 24) + 320);
  v6 = *(v5 + 32);
  v7 = v5 + 24;
  if (v6 != v5 + 24)
  {
    while (1)
    {
      v8 = *(v6 + 8);
      v9 = v6 ? (v6 - 56) : 0;
      llvm::Function::removeFnAttr();
      if (!llvm::GlobalValue::isDeclaration(v9))
      {
        break;
      }

      if (!*(v6 - 48))
      {
        goto LABEL_16;
      }

LABEL_23:
      v6 = v8;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    v10 = v1[20];
    if ((v6 - 56) == v10)
    {
      v11 = *(v10 + 8);
      *(v10 + 8) = v11 & 0xFFFFFFF0;
      if ((v11 & 0x30) != 0 && (llvm::GlobalValue::hasExternalWeakLinkage(v10) & 1) == 0)
      {
        *(v10 + 8) |= 0x4000u;
      }

      if ((v4 & 1) == 0)
      {
        *(v1[20] + 112) = 0;
      }

      ++*(v1 + 8);
      goto LABEL_23;
    }

    if (*(v6 - 48))
    {
      ++*(v1 + 8);
      *(v6 - 24) = *(v6 - 24) & 0xFFFFBFC0 | 0x4007;
      if ((v4 & 1) == 0)
      {
        llvm::Function::addFnAttr();
      }

      goto LABEL_23;
    }

LABEL_16:
    llvm::Function::eraseFromParent((v6 - 56));
    goto LABEL_23;
  }

LABEL_24:
  if ((v4 & 1) == 0)
  {
    return;
  }

  v12 = 0;
  v97 = v99;
  v98 = 0x800000000;
  v87 = v91;
  v88 = v91;
  v89 = 16;
  v90 = 0;
  do
  {
    if (off_278BBFE50[v12])
    {
      strlen(off_278BBFE50[v12]);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v14 = Function;
      if (*(Function + 8))
      {
        sub_23C49B500(&v97, Function);
        sub_23C4FB9F8(&v82, &v87, v14);
      }
    }

    ++v12;
  }

  while (v12 != 2);
  sub_23C4B8970();
  if (dword_27E1F7458)
  {
    for (i = qword_27E1F7450; ; ++i)
    {
      v16 = !*i || *i == -8;
      if (!v16)
      {
        break;
      }
    }
  }

  else
  {
    i = qword_27E1F7450;
  }

  v20 = qword_27E1F7450 + 8 * dword_27E1F7458;
  if (i != v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = *i;
    do
    {
      v24 = llvm::Module::getFunction();
      if (v24)
      {
        v25 = v24;
        if (*(v24 + 8))
        {
          if (*(v23 + 31))
          {
            v22 = *(*(*(v24 + 24) + 16) + 8 * *(v23 + 31) + 8);
          }

          v26 = *(v23 + 8);
          if (v26 == 3 || v26 == 8 || (v3 & 1) != 0)
          {
            sub_23C49B500(&v97, v24);
            sub_23C4FB9F8(&v82, &v87, v25);
            v26 = *(v23 + 8);
          }

          if ((v26 | 4) == 5 && (*(*v1 + 248))(v1))
          {
            sub_23C49B500(&v97, v25);
            sub_23C4FB9F8(&v82, &v87, v25);
            v21 = 1;
          }
        }
      }

      do
      {
        v27 = i[1];
        ++i;
        v23 = v27;
        if (v27)
        {
          v28 = v23 == -8;
        }

        else
        {
          v28 = 1;
        }
      }

      while (v28);
    }

    while (i != v20);
    if ((v3 & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_65;
  }

  v22 = 0;
  v21 = 0;
  if (v3)
  {
LABEL_65:
    sub_23C4E8E90();
    if (dword_27E1F7360)
    {
        ;
      }
    }

    else
    {
      j = qword_27E1F7358;
    }

    v39 = qword_27E1F7358 + 8 * dword_27E1F7360;
    while (j != v39)
    {
      v40 = llvm::Module::getFunction();
      if (v40)
      {
        v41 = v40;
        if (*(v40 + 8))
        {
          sub_23C49B500(&v97, v40);
          sub_23C4FB9F8(&v82, &v87, v41);
        }
      }

      do
      {
        v43 = j[1];
        ++j;
        v42 = v43;
        if (v43)
        {
          v44 = v42 == -8;
        }

        else
        {
          v44 = 1;
        }
      }

      while (v44);
    }
  }

LABEL_96:
  if (((v22 != 0) & v21) == 1)
  {
    v45 = *(v1 + *(*v1 - 24) + 320);
    v46 = *(v45 + 32);
    v47 = (v45 + 24);
    if (v46 != (v45 + 24))
    {
      while (1)
      {
        v48 = v46[1];
        v49 = v46 ? (v46 - 7) : 0;
        if (v49 != v1[20])
        {
          break;
        }

LABEL_113:
        v46 = v48;
        if (v48 == v47)
        {
          goto LABEL_114;
        }
      }

      if (*(v46 - 19))
      {
        llvm::Function::BuildLazyArguments((v46 - 7));
        v50 = v46[4];
        if (*(v46 - 19))
        {
          llvm::Function::BuildLazyArguments((v46 - 7));
          v51 = v46[4];
LABEL_107:
          v52 = &v51[5 * v46[5]];
          while (v50 != v52)
          {
            if (*v50 == v22 && v50[1])
            {
              sub_23C49B500(&v97, v49);
              llvm::Function::addFnAttr();
              goto LABEL_113;
            }

            v50 += 5;
          }

          goto LABEL_113;
        }
      }

      else
      {
        v50 = v46[4];
      }

      v51 = v50;
      goto LABEL_107;
    }
  }

LABEL_114:
  v53 = v98;
  while (v53)
  {
    v54 = v97[--v53];
    LODWORD(v98) = v53;
    v55 = *(v54 + 8);
    if (v55)
    {
      do
      {
        v56 = *(*(*(v55 + 24) + 40) + 56);
        if (v56 != v1[20])
        {
          sub_23C4FB9F8(&v82, &v87, *(*(*(v55 + 24) + 40) + 56));
          if (v84 == 1)
          {
            llvm::Function::addFnAttr();
            sub_23C49B500(&v97, v56);
          }
        }

        v55 = *(v55 + 8);
      }

      while (v55);
      v53 = v98;
    }
  }

  v94 = v96;
  v95 = 0x800000000;
  sub_23C4E90A0(v1, &v94);
  v57 = v94;
  v82 = v86;
  v83 = v86;
  v84 = 16;
  v85 = 0;
  if (!v95)
  {
    goto LABEL_161;
  }

  v58 = 8 * v95;
  do
  {
    v59 = *v57++;
    sub_23C4FB9F8(v92, &v82, v59);
    v58 -= 8;
  }

  while (v58);
  v60 = v95;
  if (!v95)
  {
    goto LABEL_161;
  }

  do
  {
    v61 = *(v94 + --v60);
    LODWORD(v95) = v60;
    v62 = *(v61 + 8);
    if (!v62)
    {
      continue;
    }

    do
    {
      v63 = *(v62 + 24);
      v64 = *(v63 + 16);
      if (v63)
      {
        v65 = v64 >= 0x1C;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v67 = v64 - 28;
      }

      else
      {
        if (v63)
        {
          v66 = v64 == 5;
        }

        else
        {
          v66 = 0;
        }

        if (!v66)
        {
LABEL_141:
          if (!v63 || v64 != 84)
          {
            goto LABEL_158;
          }

          v68 = *(v63 - 32);
          if (!v68 || *(v68 + 16) || *(v68 + 24) != *(v63 + 72))
          {
            v68 = 0;
          }

          llvm::Function::addFnAttr();
          if (*(v68 + 18))
          {
            llvm::Function::BuildLazyArguments(v68);
            v69 = *(v68 + 88);
            if (*(v68 + 18))
            {
              llvm::Function::BuildLazyArguments(v68);
              v70 = *(v68 + 88);
LABEL_152:
              v71 = &v70[10 * *(v68 + 96)];
              while (v69 != v71)
              {
                if (*(v63 - 32 * (*(v63 + 20) & 0x7FFFFFF) + 32 * v69[8]) == v61)
                {
                  sub_23C4FB9F8(v92, &v82, v69);
                  if (v93 == 1)
                  {
                    sub_23C49B500(&v94, v69);
                  }
                }

                v69 += 10;
              }

              goto LABEL_158;
            }
          }

          else
          {
            v69 = *(v68 + 88);
          }

          v70 = v69;
          goto LABEL_152;
        }

        v67 = *(v63 + 18);
      }

      if (v67 != 49)
      {
        goto LABEL_141;
      }

      sub_23C4FB9F8(v92, &v82, *(v62 + 24));
      if (v93 == 1)
      {
        sub_23C49B500(&v94, v63);
      }

LABEL_158:
      v62 = *(v62 + 8);
    }

    while (v62);
    v60 = v95;
  }

  while (v60);
LABEL_161:
  if (MGGetBoolAnswer())
  {
    v72 = sub_23C4A2690("AGX_STRESS_NO_INLINING");
    if (v72)
    {
      if (*v72 != 48 && atoi(v72))
      {
        v73 = *(v1 + *(*v1 - 24) + 320);
        v74 = *(v73 + 32);
        v75 = v73 + 24;
        while (v74 != v75)
        {
          v76 = (v74 - 56);
          v16 = v74 == 0;
          v74 = *(v74 + 8);
          if (v16)
          {
            v77 = 0;
          }

          else
          {
            v77 = v76;
          }

          if ((llvm::GlobalValue::isDeclaration(v77) & 1) == 0 && (llvm::Function::hasFnAttribute() & 1) == 0)
          {
            llvm::Function::addFnAttr();
          }
        }
      }
    }
  }

  if (v83 != v82)
  {
    free(v83);
  }

  if (v94 != v96)
  {
    free(v94);
  }

  if (v88 != v87)
  {
    free(v88);
  }

  if (v97 != v99)
  {
    free(v97);
  }
}

uint64_t sub_23C4E3C14(uint64_t a1)
{
  v305 = *MEMORY[0x277D85DE8];
  (*(**(a1 + *(*a1 - 24) + 344) + 504))(v299);
  *__p = *&v299[8];
  v282 = v300;
  v2 = (a1 + *(*a1 - 24));
  if (v299[0] == 1)
  {
    std::string::append(v2 + 17, "Total number of indirect argument buffer resources exceeded for");
    if (v282 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if (v282 >= 0)
    {
      v4 = HIBYTE(v282);
    }

    else
    {
      v4 = __p[1];
    }

    std::string::append((a1 + *(*a1 - 24) + 408), v3, v4);
LABEL_9:
    v5 = 0;
    goto LABEL_366;
  }

  if (*(v2[14].__r_.__value_.__l.__size_ + 1678) == 1)
  {
    v6 = *(a1 + 2160);
    if (v6)
    {
      v7 = *(a1 + 2152);
      v8 = 8 * v6;
      while (1)
      {
        v9 = *v7;
        if (*(*v7 + 1) == 1 && *(v9 + 2) == 1)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      std::to_string(v291, *(v9 + 40));
      v260 = std::string::insert(v291, 0, "buffer(");
      v261 = v260->__r_.__value_.__r.__words[2];
      *&v296.__r_.__value_.__l.__data_ = *&v260->__r_.__value_.__l.__data_;
      v296.__r_.__value_.__r.__words[2] = v261;
      v260->__r_.__value_.__l.__size_ = 0;
      v260->__r_.__value_.__r.__words[2] = 0;
      v260->__r_.__value_.__r.__words[0] = 0;
      v262 = std::string::append(&v296, "): Argument buffer participates in modification as well as resource use");
      v263 = v262->__r_.__value_.__r.__words[2];
      *v299 = *&v262->__r_.__value_.__l.__data_;
      *&v299[16] = v263;
      v262->__r_.__value_.__l.__size_ = 0;
      v262->__r_.__value_.__r.__words[2] = 0;
      v262->__r_.__value_.__r.__words[0] = 0;
      if (v299[23] >= 0)
      {
        v264 = v299;
      }

      else
      {
        v264 = *v299;
      }

      if (v299[23] >= 0)
      {
        v265 = v299[23];
      }

      else
      {
        v265 = *&v299[8];
      }

      std::string::append((a1 + *(*a1 - 24) + 408), v264, v265);
      if ((v299[23] & 0x80000000) != 0)
      {
        operator delete(*v299);
      }

      if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v296.__r_.__value_.__l.__data_);
      }

      if ((v291[23] & 0x80000000) != 0)
      {
        operator delete(*v291);
      }

      goto LABEL_9;
    }
  }

LABEL_16:
  if (*(a1 + 2216))
  {
    v10 = a1 + 8;
    v270 = a1 + 344;
    do
    {
      v11 = *(a1 + 2208);
      v12 = *(a1 + 2224);
      v13 = v11 + 48 * v12;
      if (v12)
      {
        v14 = 48 * v12;
        while ((*(v11 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v11 += 48;
          v14 -= 48;
          if (!v14)
          {
            v11 = v13;
            break;
          }
        }
      }

      v15 = *(v11 + 24);
      v16 = *(v11 + 40);
      sub_23C4FAB6C((a1 + 2208), v11);
      if ((*v16 & 0xFFFFFFFC) != 4)
      {
        goto LABEL_9;
      }

      v17 = *(v15 + 16);
      if (v17 == 62 && v15 != 0)
      {
        v21 = *(a1 + 2192);
        if (!v21)
        {
LABEL_381:
          abort();
        }

        v22 = *(*(v15 - 32 * (*(v15 + 20) & 0x7FFFFFF)) + 32);
        while (1)
        {
          while (1)
          {
            v23 = *(v21 + 8);
            if (v22 >= v23)
            {
              break;
            }

            v21 = *v21;
            if (!v21)
            {
              goto LABEL_381;
            }
          }

          if (v23 >= v22)
          {
            break;
          }

          v21 = v21[1];
          if (!v21)
          {
            goto LABEL_381;
          }
        }

        v24 = v21[5];
        sub_23C4C30FC(v10 + *(*a1 - 24), v15);
        if (*v16 == 7)
        {
          *&v302 = 0;
          sub_23C4A6BF8(*(v24 + 48), v15, &v302, v299);
          v25 = *(v15 + 20) & 0x7FFFFFF;
          v26 = v24;
          v27 = v15;
          v28 = v302;
          *v299 = &v299[16];
          *&v299[8] = 0x800000000;
          sub_23C4FA0E4(v299, &v27[-32 * v25 + 32], v302);
          sub_23C4A74A8(&v296, v16, v299);
          v29 = v28;
          v30 = v27;
          sub_23C4FA0E4(&v296, v29, v27);
          v31 = *(*a1 - 24);
          v32 = *(v26 + 104);
          LOWORD(v292) = 257;
          sub_23C4ED3A0(a1 + v31, v32, v296.__r_.__value_.__l.__data_, LODWORD(v296.__r_.__value_.__r.__words[1]), v291);
          if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
          {
            free(v296.__r_.__value_.__l.__data_);
          }

          if (*v299 != &v299[16])
          {
            free(*v299);
          }

          v33 = "constant_gep";
        }

        else
        {
          *v291 = &v291[16];
          *&v291[8] = 0x400000000;
          v35 = v15 - 32 * (*(v15 + 20) & 0x7FFFFFF);
          *v299 = &v299[16];
          *&v299[8] = 0x800000000;
          sub_23C4FA0E4(v299, (v35 + 32), v15);
          v36 = *v16;
          v278 = v24;
          v273 = v15;
          if (*v16 == 6)
          {
            v69 = *(v270 + *(*a1 - 24));
            v293.__r_.__value_.__r.__words[0] = &v293.__r_.__value_.__r.__words[2];
            v293.__r_.__value_.__l.__size_ = 0x300000000;
            sub_23C4A72DC(&v293, 0);
            if (*(v69 + 1646) == 1)
            {
              sub_23C4A72DC(&v293, 1);
            }

            sub_23C4A72DC(&v293, 2);
            v71 = v293.__r_.__value_.__r.__words[0];
            if (LODWORD(v293.__r_.__value_.__r.__words[1]))
            {
              v72 = v293.__r_.__value_.__r.__words[0] + 4 * LODWORD(v293.__r_.__value_.__r.__words[1]);
              do
              {
                v73 = *(*a1 - 24);
                v74 = *(v24 + 104);
                v75 = LODWORD(v71->__r_.__value_.__l.__data_) == 1;
                if (LODWORD(v71->__r_.__value_.__l.__data_) == 2)
                {
                  v75 = 0;
                }

                if (LODWORD(v71->__r_.__value_.__l.__data_))
                {
                  v76 = v75;
                }

                else
                {
                  v76 = 1;
                }

                v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__r.__words[2];
                v296.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v16 + 104))
                {
                  sub_23C4A3D80(&v296, v16 + 96);
                }

                v77 = *(v16 + 184);
                if (v77)
                {
                  v78 = *(v16 + 176);
                  v79 = &v78[2 * v77];
                  do
                  {
                    v80 = *v78;
                    v81 = v78[1];
                    v78 += 2;
                    *(v296.__r_.__value_.__r.__words[0] + 8 * v81) = *(*v299 + 8 * v80);
                  }

                  while (v78 != v79);
                }

                v82 = (v10 + v73);
                llvm::Type::getInt32Ty(v82[8], v70);
                *(v296.__r_.__value_.__r.__words[0] + 8 * LODWORD(v296.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v76)
                {
                  llvm::Type::getInt32Ty(v82[8], v83);
                  *(v296.__r_.__value_.__r.__words[0] + 8 * LODWORD(v296.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  v84 = sub_23C4A7118(v16, v82, v299);
                  sub_23C49B500(&v296, v84);
                  v85 = LODWORD(v296.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v86 = sub_23C4A7118(v16, v82, v299);
                  v85 = LODWORD(v296.__r_.__value_.__r.__words[1]);
                  *(v296.__r_.__value_.__r.__words[0] + 8 * LODWORD(v296.__r_.__value_.__r.__words[1]) - 8) = v86;
                }

                LOWORD(v304) = 257;
                v87 = sub_23C4ED3A0(a1 + v73, v74, v296.__r_.__value_.__l.__data_, v85, &v302);
                sub_23C49B500(v291, v87);
                v10 = a1 + 8;
                if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
                {
                  free(v296.__r_.__value_.__l.__data_);
                }

                v71 = (v71 + 4);
                v24 = v278;
              }

              while (v71 != v72);
              v71 = v293.__r_.__value_.__r.__words[0];
            }

            if (v71 != &v293.__r_.__value_.__r.__words[2])
            {
              free(v71);
            }

            v33 = "sampler_gep";
          }

          else if (v36 == 5)
          {
            v37 = *(v270 + *(*a1 - 24));
            v293.__r_.__value_.__r.__words[0] = &v293.__r_.__value_.__r.__words[2];
            v293.__r_.__value_.__l.__size_ = 0x400000000;
            sub_23C4A72DC(&v293, 0);
            if (*(v37 + 1645) == 1)
            {
              sub_23C4A72DC(&v293, 1);
            }

            sub_23C4A72DC(&v293, 2);
            sub_23C4A72DC(&v293, 3);
            v39 = v293.__r_.__value_.__r.__words[0];
            if (LODWORD(v293.__r_.__value_.__r.__words[1]))
            {
              v40 = v293.__r_.__value_.__r.__words[0] + 4 * LODWORD(v293.__r_.__value_.__r.__words[1]);
              do
              {
                v41 = *(*a1 - 24);
                v42 = *(v24 + 104);
                v43 = LODWORD(v39->__r_.__value_.__l.__data_) == 1;
                if (!LODWORD(v39->__r_.__value_.__l.__data_))
                {
                  v43 = 1;
                }

                v44 = SLODWORD(v39->__r_.__value_.__l.__data_) <= 1 && v43;
                v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__r.__words[2];
                v296.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v16 + 104))
                {
                  sub_23C4A3D80(&v296, v16 + 96);
                }

                v45 = *(v16 + 184);
                if (v45)
                {
                  v46 = *(v16 + 176);
                  v47 = &v46[2 * v45];
                  do
                  {
                    v48 = *v46;
                    v49 = v46[1];
                    v46 += 2;
                    *(v296.__r_.__value_.__r.__words[0] + 8 * v49) = *(*v299 + 8 * v48);
                  }

                  while (v46 != v47);
                }

                v50 = (v10 + v41);
                llvm::Type::getInt32Ty(v50[8], v38);
                *(v296.__r_.__value_.__r.__words[0] + 8 * LODWORD(v296.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v44)
                {
                  llvm::Type::getInt32Ty(v50[8], v51);
                  *(v296.__r_.__value_.__r.__words[0] + 8 * LODWORD(v296.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  v52 = sub_23C4A7118(v16, v50, v299);
                  sub_23C49B500(&v296, v52);
                  v53 = LODWORD(v296.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v54 = sub_23C4A7118(v16, v50, v299);
                  v53 = LODWORD(v296.__r_.__value_.__r.__words[1]);
                  *(v296.__r_.__value_.__r.__words[0] + 8 * LODWORD(v296.__r_.__value_.__r.__words[1]) - 8) = v54;
                }

                LOWORD(v304) = 257;
                v55 = sub_23C4ED3A0(a1 + v41, v42, v296.__r_.__value_.__l.__data_, v53, &v302);
                sub_23C49B500(v291, v55);
                v10 = a1 + 8;
                if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
                {
                  free(v296.__r_.__value_.__l.__data_);
                }

                v39 = (v39 + 4);
                v24 = v278;
              }

              while (v39 != v40);
              v39 = v293.__r_.__value_.__r.__words[0];
            }

            if (v39 != &v293.__r_.__value_.__r.__words[2])
            {
              free(v39);
            }

            v33 = "texture_gep";
          }

          else
          {
            if (v36 == 4)
            {
              v88 = v16;
            }

            else
            {
              v88 = 0;
            }

            v89 = a1 + *(*a1 - 24);
            v90 = *(v24 + 104);
            sub_23C4A7234(&v296, v88, (v89 + 8), v299);
            LOWORD(v304) = 257;
            v91 = sub_23C4ED3A0(v89, v90, v296.__r_.__value_.__l.__data_, LODWORD(v296.__r_.__value_.__r.__words[1]), &v302);
            sub_23C49B500(v291, v91);
            if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
            {
              free(v296.__r_.__value_.__l.__data_);
            }

            v33 = "buffer_gep";
          }

          v92 = a1 + *(*a1 - 24);
          v93 = *(v278 + 104);
          *&v302 = *(**v291 - 32 * (*(**v291 + 20) & 0x7FFFFFF) + 32);
          *(&v302 + 1) = llvm::ConstantInt::get();
          *&v303 = llvm::ConstantInt::get();
          v298 = 257;
          v94 = sub_23C4ED3A0(v92, v93, &v302, 3, &v296);
          v95 = llvm::ConstantInt::get();
          sub_23C49B500(v291, v94);
          sub_23C49B500(v291, v95);
          v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__r.__words[2];
          v296.__r_.__value_.__l.__size_ = 0x400000000;
          if (*&v291[8])
          {
            v96 = *v291;
            v97 = 8 * *&v291[8];
            do
            {
              v98 = *v96++;
              sub_23C49B500(&v296, *v98);
              v97 -= 8;
            }

            while (v97);
          }

          v99 = llvm::StructType::get();
          v100 = llvm::UndefValue::get();
          LODWORD(v293.__r_.__value_.__l.__data_) = 0;
          if (*&v291[8])
          {
            v101 = 0;
            do
            {
              v102 = *(*a1 - 24);
              v103 = *(*v291 + 8 * v101);
              LOWORD(v304) = 257;
              v100 = sub_23C49A744((v10 + v102), v100, v103, &v293, 1, &v302);
              v101 = LODWORD(v293.__r_.__value_.__l.__data_) + 1;
              LODWORD(v293.__r_.__value_.__l.__data_) = v101;
            }

            while (*&v291[8] > v101);
          }

          v104 = sub_23C506824(a1 + *(*a1 - 24), v99);
          sub_23C4BA8C0((v10 + *(*a1 - 24)), v100, v104, 0);
          v30 = v273;
          sub_23C4FAF94(a1, v104, *v273);
          if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
          {
            free(v296.__r_.__value_.__l.__data_);
          }

          if (*v299 != &v299[16])
          {
            free(*v299);
          }

          if (*v291 != &v291[16])
          {
            free(*v291);
          }
        }

        v105 = 1;
        BYTE1(v301) = 1;
        if (*v33)
        {
          *v299 = v33;
          v105 = 3;
        }

        LOBYTE(v301) = v105;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v30);
        continue;
      }

      if (v17 != 60 || v15 == 0)
      {
        if (v17 != 61 || v15 == 0)
        {
          goto LABEL_9;
        }

        sub_23C4C30FC(v10 + *(*a1 - 24), v15);
        *v299 = &v299[16];
        *&v299[8] = 0x400000000;
        if (*v16 == 6)
        {
          sub_23C4A733C(&v296, *(a1 + *(*a1 - 24) + 344), *(a1 + *(*a1 - 24) + 336));
          goto LABEL_139;
        }

        if (*v16 == 5)
        {
          sub_23C4A73E4(&v296, *(a1 + *(*a1 - 24) + 344), *(a1 + *(*a1 - 24) + 336));
LABEL_139:
          sub_23C4A3E4C(v299, &v296);
          if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
          {
            free(v296.__r_.__value_.__l.__data_);
          }

          sub_23C4FAC14(a1, v15, v299);
          goto LABEL_143;
        }

        v106 = a1 + *(*a1 - 24);
        v107 = *(v15 - 64);
        v108 = *(v106 + 200);
        v298 = 257;
        v109 = sub_23C49ACF8(v106 + 8, 47, v107, v108, &v296);
        v110 = v15;
        v296.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
        v296.__r_.__value_.__l.__size_ = llvm::PointerType::get();
        v296.__r_.__value_.__r.__words[2] = *(a1 + 192 + *(*a1 - 24));
        llvm::StructType::get();
        v111 = *(v15 - 32);
        v112 = llvm::PointerType::get();
        v113 = sub_23C4FAF94(a1, v111, v112);
        v114 = *(*a1 - 24);
        v298 = 257;
        v115 = sub_23C497C88((v10 + v114), **(*v113 + 16), v113, 0, &v296);
        v116 = *(*a1 - 24);
        *v291 = 0;
        v298 = 257;
        v117 = sub_23C49B32C(v10 + v116, v115, v291, 1, &v296);
        v118 = *(*a1 - 24);
        *v291 = 1;
        v298 = 257;
        v119 = sub_23C49B32C(v10 + v118, v115, v291, 1, &v296);
        v120 = *(*a1 - 24);
        *v291 = 2;
        v298 = 257;
        v121 = sub_23C49B32C(v10 + v120, v115, v291, 1, &v296);
        sub_23C4BA8C0((v10 + *(*a1 - 24)), v109, v117, 0);
        v122 = v121;
        v15 = v110;
        sub_23C4BA8C0((v10 + *(*a1 - 24)), v122, v119, 0);
      }

      else
      {
        sub_23C4C30FC(v10 + *(*a1 - 24), v15);
        *v299 = &v299[16];
        *&v299[8] = 0x400000000;
        if (*v16 == 6)
        {
          sub_23C4A733C(&v296, *(a1 + *(*a1 - 24) + 344), *(a1 + *(*a1 - 24) + 336));
          sub_23C4A3E4C(v299, &v296);
          if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
          {
            free(v296.__r_.__value_.__l.__data_);
          }

          sub_23C4FB034(a1, v15, v299);
          v34 = "sampler_load";
        }

        else if (*v16 == 5)
        {
          sub_23C4A73E4(&v296, *(a1 + *(*a1 - 24) + 344), *(a1 + *(*a1 - 24) + 336));
          sub_23C4A3E4C(v299, &v296);
          if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
          {
            free(v296.__r_.__value_.__l.__data_);
          }

          sub_23C4FB034(a1, v15, v299);
          v34 = "texture_load";
        }

        else
        {
          v56 = v15;
          v57 = *(v15 - 32);
          v296.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
          llvm::StructType::get();
          v58 = llvm::PointerType::get();
          v59 = sub_23C4FAF94(a1, v57, v58);
          v60 = a1 + *(*a1 - 24);
          *v291 = llvm::ConstantInt::get();
          *&v291[8] = llvm::ConstantInt::get();
          v298 = 257;
          v61 = sub_23C4ED3A0(v60, v59, v291, 2, &v296);
          v62 = *(*a1 - 24);
          v298 = 257;
          v63 = sub_23C497C88((v10 + v62), **(*v61 + 16), v61, 0, &v296);
          v64 = *(*a1 - 24);
          v298 = 257;
          v65 = sub_23C497C88((v10 + v64), **(*v63 + 16), v63, 0, &v296);
          v66 = *(*a1 - 24);
          v15 = v56;
          v67 = *v56;
          v298 = 257;
          sub_23C49ACF8(v10 + v66, 48, v65, v67, &v296);
          v34 = "buffer_load";
        }

        v68 = 1;
        HIBYTE(v298) = 1;
        if (*v34)
        {
          v296.__r_.__value_.__r.__words[0] = v34;
          v68 = 3;
        }

        LOBYTE(v298) = v68;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
      }

LABEL_143:
      llvm::Instruction::eraseFromParent(v15);
      if (*v299 != &v299[16])
      {
        free(*v299);
      }
    }

    while (*(a1 + 2216));
  }

  v123 = *(a1 + 2160);
  if (v123)
  {
    v124 = *(a1 + 2152);
    v125 = &v124[v123];
    v126 = a1 + 408;
    v280 = a1 + 8;
    LOBYTE(v5) = 1;
    v268 = v125;
    while (1)
    {
      if (v5)
      {
        v271 = v124;
        v127 = *v124;
        memset(v291, 0, sizeof(v291));
        v292 = 1065353216;
        v302 = 0u;
        v303 = 0u;
        v304 = 1065353216;
        __val = *(v127 + 40);
        v279 = *(*(a1 + 344 + *(*a1 - 24)) + 1678);
        v289[0] = a1;
        v289[1] = v291;
        v289[2] = &__val;
        v128 = *(v127 + 8);
        v129 = v128[1];
        if (v129)
        {
          v276 = v127;
          v277 = *(v127 + 8);
          while (1)
          {
            v130 = *(v129 + 24);
            v129 = *(v129 + 8);
            v287[0] = 4;
            v287[1] = 0;
            v288 = v130;
            if (v130 != -8192 && v130 != -4096 && v130 != 0)
            {
              llvm::ValueHandleBase::AddToUseList(v287);
            }

            if (sub_23C4F9A00(*(a1 + 37), v130, v128))
            {
              sub_23C4C30FC(v280 + *(*a1 - 24), v130);
              v132 = *(*a1 - 24);
              v133 = *(v127 + 104);
              v134 = *v128;
              LOWORD(v301) = 257;
              v135 = sub_23C49ACF8(v280 + v132, 49, v133, v134, v299);
              v136 = (v130 - 64);
              if (*(v130 - 8))
              {
                v137 = *(v130 - 7);
                **(v130 - 6) = v137;
                if (v137)
                {
                  *(v137 + 16) = *(v130 - 6);
                }
              }

              *v136 = v135;
              if (v135)
              {
                v140 = *(v135 + 8);
                v138 = (v135 + 8);
                v139 = v140;
                *(v130 - 7) = v140;
                if (v140)
                {
                  *(v139 + 16) = v130 - 56;
                }

                *(v130 - 6) = v138;
                *v138 = v136;
              }

              v141 = 3;
              goto LABEL_317;
            }

            v142 = v288;
            if (!v288 || *(v288 + 16) != 62)
            {
              break;
            }

            v286 = 0;
            v285 = 0;
            v143 = sub_23C4A6BF8(*(v127 + 48), v288, &v286, &v285);
            v144 = *v143;
            if ((*v143 & 0xFFFFFFFC) != 4)
            {
              if (!v279)
              {
                goto LABEL_316;
              }

              std::to_string(&v293, __val);
              v161 = std::string::insert(&v293, 0, "buffer(");
              v162 = v161->__r_.__value_.__r.__words[2];
              *&v296.__r_.__value_.__l.__data_ = *&v161->__r_.__value_.__l.__data_;
              v296.__r_.__value_.__r.__words[2] = v162;
              v161->__r_.__value_.__l.__size_ = 0;
              v161->__r_.__value_.__r.__words[2] = 0;
              v161->__r_.__value_.__r.__words[0] = 0;
              v163 = std::string::append(&v296, "): Unable to map argument buffer access to resource");
              v164 = v163->__r_.__value_.__r.__words[2];
              *v299 = *&v163->__r_.__value_.__l.__data_;
              *&v299[16] = v164;
              v163->__r_.__value_.__l.__size_ = 0;
              v163->__r_.__value_.__r.__words[2] = 0;
              v163->__r_.__value_.__r.__words[0] = 0;
              if (v299[23] >= 0)
              {
                v165 = v299;
              }

              else
              {
                v165 = *v299;
              }

              if (v299[23] >= 0)
              {
                v166 = v299[23];
              }

              else
              {
                v166 = *&v299[8];
              }

              std::string::append((v126 + *(*a1 - 24)), v165, v166);
              v160 = v299[23];
              v127 = v276;
LABEL_193:
              v128 = v277;
              if (v160 < 0)
              {
                goto LABEL_194;
              }

              goto LABEL_195;
            }

            v145 = v143;
            if (v279 && v285 == 1 && v286 == v142 && sub_23C4F9A5C(a1, v142))
            {
              sub_23C4C30FC(v280 + *(*a1 - 24), v142);
              v127 = v276;
              v146 = *(v276 + 104);
              v147 = *v146;
              if ((*(*v146 + 8) & 0xFE) == 0x12)
              {
                v147 = **(v147 + 16);
              }

              v148 = **(v147 + 16);
              v149 = *(*a1 - 24);
              v150 = *(v142 - 32 * (*(v142 + 20) & 0x7FFFFFF) + 32);
              LOWORD(v301) = 257;
              v151 = sub_23C49AEF0(v280 + v149, v148, v146, v150, v299);
              v152 = *(*a1 - 24);
              v153 = *v142;
              LOWORD(v301) = 257;
              sub_23C49ACF8(v280 + v152, 49, v151, v153, v299);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v142);
LABEL_184:
              v141 = 3;
              v128 = v277;
              goto LABEL_317;
            }

            sub_23C4A6FFC(v145, v142);
            v272 = v167;
            if (v167)
            {
              if (v144 == 7)
              {
LABEL_217:
                if (v279)
                {
                  v174 = v286;
                  v175 = v142 - 32 * (*(v142 + 20) & 0x7FFFFFF);
                  *v299 = &v299[16];
                  *&v299[8] = 0x800000000;
                  sub_23C4FA0E4(v299, (v175 + 32), v286);
                  sub_23C4A74A8(&v296, v145, v299);
                  sub_23C4FA0E4(&v296, v174, v142);
                  sub_23C4C30FC(v280 + *(*a1 - 24), v142);
                  v176 = *(*a1 - 24);
                  v177 = *(v276 + 104);
                  v295 = 257;
                  sub_23C4ED3A0(a1 + v176, v177, v296.__r_.__value_.__l.__data_, LODWORD(v296.__r_.__value_.__r.__words[1]), &v293);
                  llvm::Value::replaceAllUsesWith();
                  llvm::Value::takeName();
                  if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
                  {
                    free(v296.__r_.__value_.__l.__data_);
                  }

                  if (*v299 != &v299[16])
                  {
                    free(*v299);
                  }

                  goto LABEL_345;
                }

                goto LABEL_316;
              }

              if (v144 != 4)
              {
                if (v144 == 5)
                {
                  v168 = v145;
                }

                else
                {
                  v168 = 0;
                }

                if (v144 == 6)
                {
                  v169 = v145;
                }

                else
                {
                  v169 = 0;
                }

                v170 = **(**(*v142 + 16) + 16);
                if ((v279 & 1) != 0 || *v276 == 1)
                {
                  v274 = **(*v142 + 16);
                  if (v168)
                  {
                    v299[9] = *(v168 + 236);
                    v299[8] = *(v168 + 237);
                    v171 = (v168 + 240);
                    if (!*(v168 + 244))
                    {
                      v171 = &unk_23C532CD4;
                    }

                    *&v299[12] = *v171;
                    v300 = v168;
                    v301 = v170;
                    sub_23C4FA168(&v296, *(v168 + 228), __val);
                    data = v296.__r_.__value_.__l.__data_;
                    v173 = *(v168 + 232);
                    *v299 = v296.__r_.__value_.__l.__data_;
                    *&v299[4] = v173;
                    sub_23C4F0AE4((a1 + 840), v296.__r_.__value_.__l.__data_, v299);
                  }

                  else
                  {
                    *&v299[8] = v169;
                    *&v299[16] = v170;
                    sub_23C4FA168(&v296, *(v169 + 228), __val);
                    data = v296.__r_.__value_.__l.__data_;
                    v243 = *(v169 + 232);
                    *v299 = v296.__r_.__value_.__l.__data_;
                    *&v299[4] = v243;
                    sub_23C4FA210((a1 + 864), v296.__r_.__value_.__l.__data_, v299);
                  }

                  sub_23C4C30FC(v280 + *(*a1 - 24), v142);
                  v244 = sub_23C4A6E40(v145, (v280 + *(*a1 - 24)), v142);
                  v245 = v142;
                  if (v279)
                  {
                    v245 = llvm::UndefValue::get();
                  }

                  v283[0] = vadd_s32(vdup_n_s32(data), sub_23C4A6FFC(v145, v142));
                  v246 = 2056;
                  if (!v168)
                  {
                    v246 = 2104;
                  }

                  v247 = (a1 + *(*a1 - 24));
                  v248 = v247[30];
                  v296.__r_.__value_.__r.__words[0] = v247[24];
                  v296.__r_.__value_.__l.__size_ = v248;
                  v296.__r_.__value_.__r.__words[2] = v296.__r_.__value_.__r.__words[0];
                  v297 = *v245;
                  v249 = sub_23C4FA2D8((a1 + v246), v247[40], v274, &v296, 4);
                  v250 = *(*a1 - 24);
                  v293.__r_.__value_.__r.__words[0] = v244;
                  v293.__r_.__value_.__l.__size_ = sub_23C4A6D9C(v283, (v280 + v250));
                  v293.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
                  v294 = v245;
                  LOWORD(v301) = 257;
                  sub_23C497A7C((v280 + v250), *(v249 + 24), v249, &v293, 4, v299);
                  llvm::Value::takeName();
                  v251 = *(v142 + 8);
                  while (v251)
                  {
                    v252 = *(v251 + 24);
                    v251 = *(v251 + 8);
                    if (v252 && *(v252 + 16) == 60)
                    {
                      llvm::Value::replaceAllUsesWith();
                      llvm::Instruction::eraseFromParent(v252);
                    }
                  }

                  goto LABEL_345;
                }

                goto LABEL_316;
              }

LABEL_222:
              if (!v279)
              {
LABEL_316:
                v141 = 3;
                v127 = v276;
                v128 = v277;
                goto LABEL_317;
              }

              v178 = *(v142 + 8);
              if (!v178)
              {
                goto LABEL_345;
              }

              v269 = v142 + 32;
              v179 = 0x9DDFEA08EB382D69 * ((8 * (v145 & 0x1FFFFFFF) + 8) ^ HIDWORD(v145));
              v180 = 0x9DDFEA08EB382D69 * (HIDWORD(v145) ^ (v179 >> 47) ^ v179);
              v266 = 0x9DDFEA08EB382D69 * (v180 ^ (v180 >> 47));
LABEL_225:
              v181 = *(v178 + 24);
              v178 = *(v178 + 8);
              v283[0] = 4;
              v283[1] = 0;
              v284 = v181;
              v182 = v181;
              if (v181 != -8192)
              {
                v183 = v181 == -4096 || v181 == 0;
                v182 = v181;
                if (!v183)
                {
                  llvm::ValueHandleBase::AddToUseList(v283);
                  v182 = v284;
                }
              }

              v184 = *(v182 + 16);
              if (v184 == 61)
              {
                goto LABEL_306;
              }

              if (v184 != 60)
              {
                goto LABEL_304;
              }

              if ((v272 & 1) == 0)
              {
                goto LABEL_256;
              }

              if (llvm::GetElementPtrInst::hasAllConstantIndices(v142))
              {
                v185 = v178;
                v186 = *(v145 + 224);
                v187 = *(v145 + 16);
                if (v187)
                {
                  v188 = *(v145 + 8);
                  v189 = 16 * v187;
                  do
                  {
                    v190 = *(v269 - 32 * (*(v142 + 20) & 0x7FFFFFF) + 32 * *(*v188 + 24));
                    v191 = (v190 + 24);
                    if (*(v190 + 32) >= 0x41u)
                    {
                      v191 = *v191;
                    }

                    v186 = (v186 + *(*v188 + 20) * *v191);
                    v188 += 16;
                    v189 -= 16;
                  }

                  while (v189);
                }

                if (*v276 == 1)
                {
                  (*(*a1 + 216))(a1, v284, v186, __val);
                }

                v192 = *(*(a1 + 160) + 80);
                if (v192)
                {
                  v193 = v192 - 24;
                }

                else
                {
                  v193 = 0;
                }

                v194 = *(v193 + 40);
                if (v194)
                {
                  v195 = v194 - 24;
                }

                else
                {
                  v195 = 0;
                }

                sub_23C4C30FC(v280 + *(*a1 - 24), v195);
                if (v284)
                {
                  sub_23C4F9B04(v289, v186, v145);
                  llvm::Value::replaceAllUsesWith();
                  v178 = v185;
                  goto LABEL_304;
                }

                v182 = 0;
                v178 = v185;
                goto LABEL_306;
              }

              v196 = &unk_23C532CD4;
              if (*(v145 + 268))
              {
                v196 = (v145 + 264);
              }

              if (*v196 == -1)
              {
LABEL_256:
                v199 = v178;
                sub_23C4C30FC(v280 + *(*a1 - 24), v181);
                v200 = v286;
                v201 = (v269 - 32 * (*(v142 + 20) & 0x7FFFFFF));
                *v299 = &v299[16];
                *&v299[8] = 0x800000000;
                sub_23C4FA0E4(v299, v201, v286);
                sub_23C4A7234(&v296, v145, (v280 + *(*a1 - 24)), v299);
                sub_23C4FA0E4(&v296, v200, v142);
                v202 = *(*a1 - 24);
                v203 = *(v276 + 104);
                v295 = 257;
                v204 = sub_23C4ED3A0(a1 + v202, v203, v296.__r_.__value_.__l.__data_, LODWORD(v296.__r_.__value_.__r.__words[1]), &v293);
                v205 = *(*a1 - 24);
                v295 = 257;
                v206 = sub_23C497C88((v280 + v205), **(*v204 + 16), v204, 0, &v293);
                v207 = *(*a1 - 24);
                v208 = *v181;
                v295 = 257;
                sub_23C49ACF8(v280 + v207, 48, v206, v208, &v293);
                llvm::Value::replaceAllUsesWith();
                if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
                {
                  free(v296.__r_.__value_.__l.__data_);
                }

                v178 = v199;
                if (*v299 != &v299[16])
                {
                  free(*v299);
                }

                goto LABEL_304;
              }

              v267 = v178;
              if (*(&v302 + 1))
              {
                v197 = vcnt_s8(*(&v302 + 8));
                v197.i16[0] = vaddlv_u8(v197);
                if (v197.u32[0] > 1uLL)
                {
                  v198 = v266;
                  if (v266 >= *(&v302 + 1))
                  {
                    v198 = v266 % *(&v302 + 1);
                  }
                }

                else
                {
                  v198 = v266 & (*(&v302 + 1) - 1);
                }

                v209 = *(v302 + 8 * v198);
                if (v209)
                {
                  v210 = *v209;
                  if (*v209)
                  {
                    do
                    {
                      v211 = v210[1];
                      if (v211 == v266)
                      {
                        if (v210[2] == v145)
                        {
                          goto LABEL_303;
                        }
                      }

                      else
                      {
                        if (v197.u32[0] > 1uLL)
                        {
                          if (v211 >= *(&v302 + 1))
                          {
                            v211 %= *(&v302 + 1);
                          }
                        }

                        else
                        {
                          v211 &= *(&v302 + 1) - 1;
                        }

                        if (v211 != v198)
                        {
                          break;
                        }
                      }

                      v210 = *v210;
                    }

                    while (v210);
                  }
                }
              }

              v212 = *(*(a1 + 160) + 80);
              if (v212)
              {
                v213 = v212 - 24;
              }

              else
              {
                v213 = 0;
              }

              v214 = *(v213 + 40);
              if (v214)
              {
                v215 = v214 - 24;
              }

              else
              {
                v215 = 0;
              }

              sub_23C4C30FC(v280 + *(*a1 - 24), v215);
              v216 = llvm::ArrayType::get(*(v145 + 256), *(v145 + 232));
              v275 = sub_23C506824(a1 + *(*a1 - 24), v216);
              if (!*(&v302 + 1))
              {
                goto LABEL_296;
              }

              v217 = vcnt_s8(*(&v302 + 8));
              v217.i16[0] = vaddlv_u8(v217);
              if (v217.u32[0] > 1uLL)
              {
                v218 = v266;
                if (v266 >= *(&v302 + 1))
                {
                  v218 = v266 % *(&v302 + 1);
                }
              }

              else
              {
                v218 = v266 & (*(&v302 + 1) - 1);
              }

              v219 = *(v302 + 8 * v218);
              if (!v219 || (v210 = *v219) == 0)
              {
LABEL_296:
                operator new();
              }

              while (1)
              {
                v220 = v210[1];
                if (v220 == v266)
                {
                  if (v210[2] == v145)
                  {
                    if (*(v145 + 232))
                    {
                      v221 = 0;
                      do
                      {
                        v222 = *(v145 + 224);
                        v223 = *(v145 + 16);
                        if (v223)
                        {
                          v224 = *(v145 + 8);
                          v225 = &v224[4 * v223];
                          v226 = v221;
                          do
                          {
                            v227 = v224[2];
                            v228 = v226 / v227;
                            v226 %= v227;
                            v222 = (v222 + *(*v224 + 20) * v228);
                            v224 += 4;
                          }

                          while (v224 != v225);
                        }

                        v229 = a1 + *(*a1 - 24);
                        v296.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                        v296.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
                        LOWORD(v301) = 257;
                        v230 = sub_23C4ED3A0(v229, v275, &v296, 2, v299);
                        v231 = sub_23C4F9B04(v289, v222, v145);
                        sub_23C4BA8C0((v280 + *(*a1 - 24)), v231, v230, 0);
                        ++v221;
                      }

                      while (v221 < *(v145 + 232));
                    }

LABEL_303:
                    sub_23C4C30FC(v280 + *(*a1 - 24), v181);
                    v232 = v210[3];
                    v233 = a1 + *(*a1 - 24);
                    v296.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                    v296.__r_.__value_.__l.__size_ = sub_23C4A6E40(v145, (v280 + *(*a1 - 24)), v142);
                    LOWORD(v301) = 257;
                    v234 = sub_23C4ED3A0(v233, v232, &v296, 2, v299);
                    v235 = *(*a1 - 24);
                    LOWORD(v301) = 257;
                    sub_23C497C88((v280 + v235), **(*v234 + 16), v234, 0, v299);
                    llvm::Value::replaceAllUsesWith();
                    v178 = v267;
LABEL_304:
                    v182 = v284;
                    if (v284)
                    {
                      llvm::Instruction::eraseFromParent(v181);
                      v182 = v284;
                    }

LABEL_306:
                    if (v182 == -8192 || (v182 != -4096 ? (v236 = v182 == 0) : (v236 = 1), v236))
                    {
                      if (!v178)
                      {
                        goto LABEL_345;
                      }

                      goto LABEL_225;
                    }

                    llvm::ValueHandleBase::RemoveFromUseList(v283);
                    if (!v178)
                    {
LABEL_345:
                      v141 = 0;
                      v128 = v277;
                      if (v279)
                      {
                        v126 = a1 + 408;
                        v127 = v276;
                        if (v288)
                        {
                          llvm::Instruction::eraseFromParent(v130);
                          v141 = 0;
                        }

                        goto LABEL_317;
                      }

                      v126 = a1 + 408;
LABEL_349:
                      v127 = v276;
                      goto LABEL_317;
                    }

                    goto LABEL_225;
                  }
                }

                else
                {
                  if (v217.u32[0] > 1uLL)
                  {
                    if (v220 >= *(&v302 + 1))
                    {
                      v220 %= *(&v302 + 1);
                    }
                  }

                  else
                  {
                    v220 &= *(&v302 + 1) - 1;
                  }

                  if (v220 != v218)
                  {
                    goto LABEL_296;
                  }
                }

                v210 = *v210;
                if (!v210)
                {
                  goto LABEL_296;
                }
              }
            }

            if (v144 == 4)
            {
              goto LABEL_222;
            }

            if (v144 == 7)
            {
              goto LABEL_217;
            }

            v128 = v277;
            if (!v279)
            {
              v141 = 3;
              goto LABEL_349;
            }

            std::to_string(&v293, __val);
            v237 = std::string::insert(&v293, 0, "buffer(");
            v238 = v237->__r_.__value_.__r.__words[2];
            *&v296.__r_.__value_.__l.__data_ = *&v237->__r_.__value_.__l.__data_;
            v296.__r_.__value_.__r.__words[2] = v238;
            v237->__r_.__value_.__l.__size_ = 0;
            v237->__r_.__value_.__r.__words[2] = 0;
            v237->__r_.__value_.__r.__words[0] = 0;
            v239 = std::string::append(&v296, "): Argument buffer accessed with non-zero array index");
            v240 = v239->__r_.__value_.__r.__words[2];
            *v299 = *&v239->__r_.__value_.__l.__data_;
            *&v299[16] = v240;
            v239->__r_.__value_.__l.__size_ = 0;
            v239->__r_.__value_.__r.__words[2] = 0;
            v239->__r_.__value_.__r.__words[0] = 0;
            if (v299[23] >= 0)
            {
              v241 = v299;
            }

            else
            {
              v241 = *v299;
            }

            if (v299[23] >= 0)
            {
              v242 = v299[23];
            }

            else
            {
              v242 = *&v299[8];
            }

            std::string::append((v126 + *(*a1 - 24)), v241, v242);
            v127 = v276;
            if ((v299[23] & 0x80000000) != 0)
            {
LABEL_194:
              operator delete(*v299);
            }

LABEL_195:
            if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v296.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v293.__r_.__value_.__l.__data_);
            }

            v141 = 1;
LABEL_317:
            if (v288 != -8192 && v288 != -4096 && v288)
            {
              llvm::ValueHandleBase::RemoveFromUseList(v287);
            }

            if (v141 != 3 && v141)
            {
              v5 = 0;
              goto LABEL_355;
            }

            if (!v129)
            {
              goto LABEL_351;
            }
          }

          if (!v279)
          {
            goto LABEL_184;
          }

          std::to_string(&v293, __val);
          v154 = std::string::insert(&v293, 0, "buffer(");
          v155 = v154->__r_.__value_.__r.__words[2];
          *&v296.__r_.__value_.__l.__data_ = *&v154->__r_.__value_.__l.__data_;
          v296.__r_.__value_.__r.__words[2] = v155;
          v154->__r_.__value_.__l.__size_ = 0;
          v154->__r_.__value_.__r.__words[2] = 0;
          v154->__r_.__value_.__r.__words[0] = 0;
          v156 = std::string::append(&v296, "): Unable to map argument buffer access to resource");
          v157 = v156->__r_.__value_.__r.__words[2];
          *v299 = *&v156->__r_.__value_.__l.__data_;
          *&v299[16] = v157;
          v156->__r_.__value_.__l.__size_ = 0;
          v156->__r_.__value_.__r.__words[2] = 0;
          v156->__r_.__value_.__r.__words[0] = 0;
          if (v299[23] >= 0)
          {
            v158 = v299;
          }

          else
          {
            v158 = *v299;
          }

          if (v299[23] >= 0)
          {
            v159 = v299[23];
          }

          else
          {
            v159 = *&v299[8];
          }

          std::string::append((v126 + *(*a1 - 24)), v158, v159);
          v160 = v299[23];
          goto LABEL_193;
        }

LABEL_351:
        if ((v279 & 1) == 0)
        {
          llvm::Value::replaceAllUsesWith();
        }

        v5 = 1;
LABEL_355:
        v124 = v271;
        v253 = v303;
        if (v303)
        {
          do
          {
            v254 = *v253;
            operator delete(v253);
            v253 = v254;
          }

          while (v254);
        }

        v255 = v302;
        *&v302 = 0;
        v125 = v268;
        if (v255)
        {
          operator delete(v255);
        }

        v256 = *&v291[16];
        if (*&v291[16])
        {
          do
          {
            v257 = *v256;
            operator delete(v256);
            v256 = v257;
          }

          while (v257);
        }

        v258 = *v291;
        *v291 = 0;
        if (v258)
        {
          operator delete(v258);
        }
      }

      else
      {
        v5 = 0;
      }

      if (++v124 == v125)
      {
        goto LABEL_366;
      }
    }
  }

  v5 = 1;
LABEL_366:
  if (SHIBYTE(v282) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

uint64_t sub_23C4E63A0(uint64_t a1)
{
  v201 = *MEMORY[0x277D85DE8];
  sub_23C4B8970();
  sub_23C4E8E90();
  sub_23C4E8F98();
  sub_23C4F0968();
  sub_23C4E901C();
  v154 = v158;
  v155 = v158;
  v156 = 8;
  v157 = 0;
  v3 = MGGetBoolAnswer() && (v2 = sub_23C4A2690("AGX_FORCE_CS_SAMPLERS")) != 0 && *v2 != 48 && atoi(v2) != 0;
  v5 = MGGetBoolAnswer() && (v4 = sub_23C4A2690("AGC_FORCE_BINDLESS")) != 0 && *v4 != 48 && atoi(v4) != 0;
  v7 = MGGetBoolAnswer() && (v6 = sub_23C4A2690("AGC_FORCE_BINDLESS_HEAP")) != 0 && *v6 != 48 && atoi(v6) != 0;
  v8 = *a1;
  v9 = *a1;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1678))
  {
    v10 = 0;
LABEL_20:
    v139 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  v11 = *(a1 + 2160);
  v12 = (*(a1 + 2296) + *(a1 + 2284)) > 0x30 || v11 != 0;
  v13 = v12 || v5 || v7;
  v10 = v11 != 0 || v3;
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v11 == 0 && !v7;
  v139 = 1;
LABEL_21:
  *(a1 + 2385) = v14;
  v15 = *(a1 + *(v9 - 24) + 320);
  v16 = *(v15 + 32);
  v140 = v15 + 24;
  if (v16 == v15 + 24)
  {
    goto LABEL_73;
  }

  v137 = v10;
  v138 = v3;
  v17 = (a1 + 840);
  v18 = (a1 + 848);
  do
  {
    v19 = *(v16 + 8);
    if (v16)
    {
      v20 = (v16 - 56);
    }

    else
    {
      v20 = 0;
    }

    llvm::Value::getName(v20);
    Key = llvm::StringMapImpl::FindKey();
    v22 = Key == -1 || Key == dword_27E1F7458;
    if (v22)
    {
      llvm::Value::getName((v16 - 56));
      v23 = llvm::StringMapImpl::FindKey();
      if (v23 == -1 || v23 == dword_27E1F7360)
      {
        llvm::Value::getName((v16 - 56));
        v24 = llvm::StringMapImpl::FindKey();
        if (v24 == -1 || v24 == dword_27E1F73B0)
        {
          llvm::Value::getName((v16 - 56));
          v25 = llvm::StringMapImpl::FindKey();
          if (v25 == -1)
          {
            goto LABEL_71;
          }

          if (v25 == dword_27E1F7400)
          {
            goto LABEL_71;
          }

          *v183 = llvm::Value::getName((v16 - 56));
          *&v183[8] = v26;
          if (llvm::StringRef::find() != -1)
          {
            goto LABEL_71;
          }
        }
      }

      v30 = 0;
      v29 = 0;
    }

    else
    {
      v27 = *(qword_27E1F7450 + 8 * Key);
      v28 = *(v27 + 20);
      v29 = *(v27 + 30);
      v30 = v28 < 3;
    }

    v31 = *(v16 - 48);
    if (v31)
    {
      v32 = 32 * v29;
      do
      {
        v33 = *(*(v31 + 24) - 32 * (*(*(v31 + 24) + 20) & 0x7FFFFFF) + v32);
        sub_23C4FB9F8(v183, &v154, v33);
        if (v30 && *(*(a1 + 344 + *(*a1 - 24)) + 1647) == 1)
        {
          v34 = llvm::Value::stripPointerCasts(v33);
          if (!v34 || (v35 = v34, *(v34 + 16) != 84))
          {
            std::string::append((a1 + *(*a1 - 24) + 408), "Could not statically determine the target of a texture");
            v53 = 0;
            goto LABEL_264;
          }

          v36 = *(v34 - 32);
          if (!v36 || *(v36 + 16) || *(v36 + 24) != *(v35 + 72) || (llvm::Value::getName(v36), v50 = llvm::StringMapImpl::FindKey(), v50 == -1) || v50 == dword_27E1F73D8)
          {
            v37 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 64);
            v38 = (v37 + 24);
            if (*(v37 + 32) >= 0x41u)
            {
              v38 = *v38;
            }

            v39 = *v18;
            if (!*v18)
            {
              goto LABEL_57;
            }

            v40 = *v38;
            v41 = a1 + 848;
            v42 = *v18;
            do
            {
              v43 = *(v42 + 9) + *(v42 + 8);
              v44 = v43 > v40;
              v45 = v43 <= v40;
              if (v44)
              {
                v41 = v42;
              }

              v42 = v42[v45];
            }

            while (v42);
            if (v41 == v18 || *(v41 + 32) > v40)
            {
LABEL_57:
              v41 = a1 + 848;
            }

            v46 = *(v41 + 48);
            *v183 = *(v41 + 32);
            *&v183[16] = v46;
            *&v183[32] = *(v41 + 64);
            v47 = *(v41 + 8);
            v48 = v41;
            if (v47)
            {
              do
              {
                v49 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v49 = v48[2];
                v22 = *v49 == v48;
                v48 = v49;
              }

              while (!v22);
            }

            if (*v17 == v41)
            {
              *v17 = v49;
            }

            --*(a1 + 856);
            sub_23C4F49F0(v39, v41);
            operator delete(v41);
            *&v183[16] = 1;
            sub_23C4F0AE4((a1 + 840), *v183, v183);
          }
        }

        v31 = *(v31 + 8);
      }

      while (v31);
    }

LABEL_71:
    v16 = v19;
  }

  while (v19 != v140);
  v8 = *a1;
  v3 = v138;
  v10 = v137;
LABEL_73:
  v153 = 1;
  if ((*(v8 + 288))(a1))
  {
    if (v10)
    {
      if (v3)
      {
        v197 = 0uLL;
        v195 = &unk_284F1B880;
        v196 = &v197;
        *v183 = &v183[16];
        *&v183[8] = 0x400000000;
        v166[0] = &unk_284F1C0C0;
        v166[1] = &v195;
        v167 = v166;
        for (i = *(a1 + 2032); i; i = *i)
        {
          sub_23C4F0FC4(v167, i[5]);
        }

        sub_23C4F1014(v166);
        sub_23C4F1094(&v195, v183, a1 + 864);
        sub_23C4F11DC(a1, v183, v52);
        v189 = a1;
        v165 = 0;
        operator new();
      }

      *v183 = &unk_23C53F34D;
      memset(&v183[8], 0, 32);
      v184 = 1065353216;
      if (v153 == 1)
      {
        v148[0] = 0;
        v148[1] = 0;
        v147 = v148;
        sub_23C4F0BAC(&v147, *(a1 + 864), (a1 + 872));
        sub_23C4F0D28(a1, a1 + 2008, v183, &v147);
      }

      v153 = 0;
      sub_23C4F2F50(0);
      *v183 = a1;
      v163[0] = &unk_284F1C1E0;
      v163[1] = &v153;
      v163[2] = v183;
      v164 = v163;
      for (j = *(a1 + 2128); j; j = *j)
      {
        sub_23C4F0FC4(v164, j[5]);
      }

      sub_23C4F1014(v163);
      goto LABEL_155;
    }

    if (v153 == 1)
    {
      v150[0] = 0;
      v150[1] = 0;
      v149 = v150;
      sub_23C4F0BAC(&v149, *(a1 + 864), (a1 + 872));
      sub_23C4F0D28(a1, a1 + 2008, a1 + 2104, &v149);
    }

LABEL_145:
    v153 = 0;
    goto LABEL_155;
  }

  if (v153 != 1)
  {
    goto LABEL_145;
  }

  v152[0] = 0;
  v152[1] = 0;
  v151 = v152;
  sub_23C4F0BAC(&v151, *(a1 + 864), (a1 + 872));
  *v183 = &v183[16];
  *&v183[8] = 0x400000000;
  v188 = 0;
  v187 = 0;
  v186 = &v187;
  v185 = &unk_284F1B880;
  v180 = &unk_284F1BCD0;
  v181 = &v185;
  v182 = &v180;
  for (k = *(a1 + 2032); k; k = *k)
  {
    sub_23C4F0FC4(v182, k[5]);
  }

  sub_23C4F1014(&v180);
  v176 = &unk_284F1BD60;
  v177 = &v185;
  v179 = &v176;
  for (m = *(a1 + 2128); m; m = *m)
  {
    sub_23C4F0FC4(v179, m[5]);
  }

  sub_23C4F1014(&v176);
  v168 = 0u;
  v169 = 0u;
  v170 = 1065353216;
  v56 = v186;
  if (v186 == &v187)
  {
LABEL_135:
    __src = &v168;
    LOBYTE(v159) = 1;
    v195 = &unk_284F1BDF0;
    v196 = &v159;
    *&v197 = &__src;
    *(&v197 + 1) = &v195;
    for (n = *(a1 + 2032); n; n = *n)
    {
      sub_23C4F0FC4(*(&v197 + 1), n[5]);
    }

    sub_23C4F1014(&v195);
    v189 = &unk_284F1BE80;
    p_p_src = &v159;
    p_src = &__src;
    v192 = &v189;
    for (ii = *(a1 + 2128); ii; ii = *ii)
    {
      sub_23C4F0FC4(v192, ii[5]);
    }

    sub_23C4F1014(&v189);
    v93 = v159;
  }

  else
  {
    while (1)
    {
      v57 = v152[0];
      if (!v152[0])
      {
        break;
      }

      v58 = *(v56 + 9);
      v59 = v152;
      do
      {
        v60 = v57;
        v61 = v59;
        v62 = *(v57 + 9) + *(v57 + 8);
        if (v62 > v58)
        {
          v59 = v57;
        }

        v57 = v57[v62 <= v58];
      }

      while (v57);
      if (v59 == v152)
      {
        break;
      }

      if (v62 > v58)
      {
        v63 = (v60 + 4);
      }

      else
      {
        v60 = v61;
        v63 = (v61 + 4);
      }

      if (v58 < *(v60 + 8))
      {
        break;
      }

      v64 = *(v56 + 7);
      if (*(v56 + 8) != v64)
      {
        break;
      }

      v65 = sub_23C4F7ED0(v63, v64);
      v67 = v66;
      v68 = llvm::User::operator new(0x58);
      if ((v65 & 0x80000000) != 0)
      {
        __src = HIWORD(v65) & 0x7FFF;
        v173 = ".";
        v175 = 776;
        v69 = 2;
        v70 = 8;
        v71 = &v189;
        v189 = &__src;
        p_src = v65;
      }

      else
      {
        LODWORD(v189) = v65;
        v69 = 8;
        v70 = 1;
        v71 = v189;
      }

      v193 = v69;
      v194 = v70;
      v195 = "agc.sampler_words";
      *&v197 = v71;
      LOBYTE(v198[0]) = 3;
      BYTE1(v198[0]) = v69;
      llvm::GlobalVariable::GlobalVariable();
      *(v68 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      llvm::GlobalObject::setAlignment();
      sub_23C506A1C(a1 + *(*a1 - 24), v68, 1u, v65);
      if ((*(*a1 + 264))(a1) && *(*(a1 + 344 + *(*a1 - 24)) + 1651) == 1)
      {
        NullValue = llvm::User::operator new(0x58);
        if ((v65 & 0x80000000) != 0)
        {
          __src = HIWORD(v65) & 0x7FFF;
          v173 = ".";
          v175 = 776;
          v73 = 2;
          v74 = 8;
          v75 = &v189;
          v189 = &__src;
          p_src = v65;
        }

        else
        {
          LODWORD(v189) = v65;
          v73 = 8;
          v74 = 1;
          v75 = v189;
        }

        v193 = v73;
        v194 = v74;
        v195 = "agc.es1_sampler_lod_bias";
        *&v197 = v75;
        LOBYTE(v198[0]) = 3;
        BYTE1(v198[0]) = v73;
        llvm::GlobalVariable::GlobalVariable();
        *(NullValue + 80) |= 1u;
        llvm::GlobalObject::setSection();
        sub_23C506A1C(a1 + *(*a1 - 24), NullValue, 0x13u, v65);
      }

      else
      {
        v76 = llvm::PointerType::get();
        NullValue = llvm::Constant::getNullValue(v76, v77);
      }

      v78 = llvm::User::operator new(0x58);
      if ((v65 & 0x80000000) != 0)
      {
        __src = HIWORD(v65) & 0x7FFF;
        v173 = ".";
        v175 = 776;
        v79 = 2;
        v80 = 8;
        v81 = &v189;
        v189 = &__src;
        p_src = v65;
      }

      else
      {
        LODWORD(v189) = v65;
        v79 = 8;
        v80 = 1;
        v81 = v189;
      }

      v193 = v79;
      v194 = v80;
      v195 = "agc.sampler_unique_id";
      *&v197 = v81;
      LOBYTE(v198[0]) = 3;
      BYTE1(v198[0]) = v79;
      llvm::GlobalVariable::GlobalVariable();
      *(v78 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v78, 0x62u, v65);
      if ((*(v67 + 9) & 1) == 0)
      {
        v195 = llvm::PointerType::get();
        v196 = llvm::PointerType::get();
        *&v197 = llvm::PointerType::get();
        llvm::StructType::setBody();
      }

      v195 = v68;
      v196 = NullValue;
      *&v197 = v78;
      llvm::ConstantStruct::get();
      v82 = llvm::User::operator new(0x58);
      if ((v65 & 0x80000000) != 0)
      {
        __src = HIWORD(v65) & 0x7FFF;
        v173 = ".";
        v175 = 776;
        v83 = 2;
        v84 = 8;
        v85 = &v189;
        v189 = &__src;
        p_src = v65;
      }

      else
      {
        LODWORD(v189) = v65;
        v83 = 8;
        v84 = 1;
        v85 = v189;
      }

      v193 = v83;
      v194 = v84;
      v195 = "agc.sampler_state_struct_ptr";
      *&v197 = v85;
      LOBYTE(v198[0]) = 3;
      BYTE1(v198[0]) = v83;
      llvm::GlobalVariable::GlobalVariable();
      *(v82 + 80) |= 1u;
      llvm::GlobalVariable::setInitializer();
      sub_23C4EDC2C(&v195, v82);
      v195 = &unk_284F1B800;
      v198[0] = (a1 + 632);
      v189 = 0;
      v86 = sub_23C4FB49C(*(a1 + 632), *(a1 + 648), *(&v197 + 1), &v189);
      v87 = v189;
      if ((v86 & 1) == 0)
      {
        v87 = sub_23C4F8E6C(a1 + 632, &v195, v189);
        sub_23C4DDEAC((v87 + 8), &v196);
        *(v87 + 32) = v198[0];
        *(v87 + 40) = 0;
      }

      if (*(&v197 + 1) != -8192 && *(&v197 + 1) != -4096 && *(&v197 + 1))
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v196);
      }

      *(v87 + 40) = v65;
      v195 = 4;
      v196 = 0;
      v88 = v82;
      *&v197 = v82;
      if (v82 != -8192)
      {
        v88 = v82;
        if (v82 != -4096)
        {
          v88 = v82;
          if (v82)
          {
            llvm::ValueHandleBase::AddToUseList(&v195);
            v88 = v197;
          }
        }
      }

      sub_23C4EF514((a1 + 760), v88, &v195);
      if (v197 != -8192 && v197 != -4096 && v197)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v195);
      }

      v195 = v56 + 28;
      sub_23C4F6718(&v168, *(v56 + 7), &v195)[3] = v82;
      v89 = v56[1];
      if (v89)
      {
        do
        {
          v90 = v89;
          v89 = *v89;
        }

        while (v89);
      }

      else
      {
        do
        {
          v90 = v56[2];
          v22 = *v90 == v56;
          v56 = v90;
        }

        while (!v22);
      }

      v56 = v90;
      if (v90 == &v187)
      {
        goto LABEL_135;
      }
    }

    v93 = 0;
  }

  sub_23C4F6B10(&v168);
  sub_23C4B1570(v187);
  if (*v183 != &v183[16])
  {
    free(*v183);
  }

  v153 = v93 & 1;
  sub_23C4B1570(v152[0]);
LABEL_155:
  if (((*(*a1 + 272))(a1) & 1) == 0)
  {
    if (v153 == 1)
    {
      v146[0] = 0;
      v146[1] = 0;
      v145 = v146;
      sub_23C4F13BC(&v145, *(a1 + 840), (a1 + 848));
      v153 = sub_23C4F1538(a1, a1 + 1960, a1 + 2056, &v145);
      v97 = v146[0];
      goto LABEL_175;
    }

    goto LABEL_176;
  }

  if (v139)
  {
    if (*(a1 + 2385) == 1)
    {
      if (&v154 != (a1 + 888))
      {
        llvm::SmallPtrSetImplBase::CopyFrom((a1 + 888), &v154);
      }

      v192 = 0;
      p_src = 0;
      p_p_src = &p_src;
      v189 = &unk_284F1B880;
      *v183 = &v183[16];
      *&v183[8] = 0x400000000;
      v195 = &v197;
      v196 = 0x400000000;
      __src = sub_23C49BBA0((a1 + 168), *(*(a1 + *(*a1 - 24) + 344) + 1576));
      LODWORD(v172) = v95;
      LODWORD(v168) = llvm::TypeSize::operator unsigned long long();
      v161[0] = &unk_284F1C660;
      v161[1] = &v189;
      v162 = v161;
      for (jj = *(a1 + 1984); jj; jj = *jj)
      {
        sub_23C4F0FC4(v162, jj[5]);
      }

      sub_23C4F1014(v161);
      sub_23C4F2BF4(&v189, v183, a1 + 840);
      __src = a1;
      v172 = &v168;
      operator new();
    }

    if (v153 == 1)
    {
      if (v155 == v154)
      {
        v100 = (&v156 + 4);
      }

      else
      {
        v100 = &v156;
      }

      v101 = *v100;
      if (v101)
      {
        v102 = 8 * v101;
        v103 = v155;
        while (*v103 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v103 += 8;
          v102 -= 8;
          if (!v102)
          {
            goto LABEL_195;
          }
        }
      }

      else
      {
        v103 = v155;
      }

      v104 = &v155[8 * v101];
      if (v103 != v104)
      {
        v105 = 0;
        v106 = v103;
        while (1)
        {
          v107 = v105++;
          do
          {
            v106 += 8;
            if (v106 == v104)
            {
              goto LABEL_193;
            }
          }

          while (*v106 >= 0xFFFFFFFFFFFFFFFELL);
          if (v106 == v104)
          {
LABEL_193:
            if (v107 < 0x1FFFFFFFFFFFFFFFLL)
            {
              sub_23C4D97E0(v105);
            }

            sub_23C496CE8();
          }
        }
      }

LABEL_195:
      v160 = 0;
      v197 = 0u;
      v195 = &unk_284F1B868;
      v196 = &v197;
      v198[0] = v199;
      v198[1] = 0x800000000;
      v200 = 0;
      llvm::IntEqClasses::grow(v198);
      *v183 = &v195;
      *&v183[8] = &v160;
      *&v168 = &unk_284F1B8E0;
      *(&v168 + 1) = v183;
      *(&v169 + 1) = &v168;
      for (kk = *(a1 + 2080); kk; kk = *kk)
      {
        sub_23C4F0FC4(*(&v169 + 1), kk[5]);
      }

      sub_23C4F1014(&v168);
      v185 = &unk_284F1B970;
      v186 = v183;
      v188 = &v185;
      for (mm = *(a1 + 1984); mm; mm = *mm)
      {
        sub_23C4F0FC4(v188, mm[5]);
      }

      sub_23C4F1014(&v185);
      llvm::IntEqClasses::compress(v198);
      if ((MGGetBoolAnswer() & 1) == 0 || (v110 = sub_23C4A2690("AGC_FORCE_BINDLESS")) == 0 || *v110 == 48 || !atoi(v110))
      {
        if (sub_23C4A2690("AGC_MAX_TEXTURE_REGISTERS"))
        {
          v111 = sub_23C4A2690("AGC_MAX_TEXTURE_REGISTERS");
          if (v111)
          {
            if (*v111 != 48)
            {
              atoi(v111);
            }
          }
        }
      }

      if (v200)
      {
        operator new();
      }

      v112 = v196;
      if (v196 != &v197)
      {
        v113 = v198[0];
        do
        {
          v114 = *(v112 + 7);
          v115 = *(v112 + 8);
          v116 = *(v112 + 9);
          v117 = v113[v116];
          if ((*(12 * v117 + 4) & 1) == 0)
          {
            *(12 * v117 + 4) = 1;
          }

          *(12 * v117) = v116;
          *(12 * v117 + 8) += v115 - v114 + 1;
          v118 = *(v112 + 1);
          if (v118)
          {
            do
            {
              v119 = v118;
              v118 = *v118;
            }

            while (v118);
          }

          else
          {
            do
            {
              v119 = *(v112 + 2);
              v22 = *v119 == v112;
              v112 = v119;
            }

            while (!v22);
          }

          v112 = v119;
        }

        while (v119 != &v197);
      }

      llvm::IntEqClasses::uncompress(v198);
      llvm::IntEqClasses::compress(v198);
      v120 = MGGetBoolAnswer();
      if ((v120 & 1) != 0 && (v120 = sub_23C4A2690("AGC_DEBUG_LLVM_IR")) != 0 && *v120 != 48 && (v120 = atoi(v120), v120))
      {
        sub_23C4AA240(v120, "----- Texture allocations ------\n");
        v121 = 1;
      }

      else
      {
        v121 = 0;
      }

      *v183 = &v183[16];
      *&v183[8] = 0x800000000;
      v122 = v196;
      if (v196 != &v197)
      {
        v123 = (a1 + 848);
        do
        {
          if (*(v198[0] + *(v122 + 9)) == *(v198[0] + 1))
          {
            v124 = *v123;
            v125 = *(v122 + 7);
            if (!*v123)
            {
              goto LABEL_237;
            }

            v126 = a1 + 848;
            do
            {
              v127 = *(v124 + 36) + *(v124 + 32);
              v44 = v127 > v125;
              v128 = v127 <= v125;
              if (v44)
              {
                v126 = v124;
              }

              v124 = *(v124 + 8 * v128);
            }

            while (v124);
            if (v126 == v123 || v125 < *(v126 + 32))
            {
LABEL_237:
              v126 = a1 + 848;
            }

            for (*(v122 + 9) = *&v183[8]; v125 <= *(v122 + 8); ++v125)
            {
              sub_23C4F3374(&v189, v126 + 32, v125);
              v120 = sub_23C4F33F4(v183, &v189);
              v129 = *v183 + 24 * *&v183[8];
              v130 = *v120;
              *(v129 + 16) = *(v120 + 16);
              *v129 = v130;
              ++*&v183[8];
            }

            if (v121)
            {
              sub_23C4AA240(v120, "[%08x - %08x] TS%d - TS%d");
            }
          }

          else if (v121)
          {
            sub_23C4AA240(v120, "[%08x - %08x] bindless");
          }

          v131 = *(v122 + 1);
          if (v131)
          {
            do
            {
              v132 = v131;
              v131 = *v131;
            }

            while (v131);
          }

          else
          {
            do
            {
              v132 = *(v122 + 2);
              v22 = *v132 == v122;
              v122 = v132;
            }

            while (!v22);
          }

          v122 = v132;
        }

        while (v132 != &v197);
      }

      sub_23C4F3268(a1, v183);
      v189 = &v193;
      p_p_src = &v193;
      p_src = 4;
      LODWORD(v192) = 0;
      v180 = &unk_284F1BA00;
      v181 = a1;
      v182 = &v180;
      __src = &unk_284F1B9B8;
      v172 = &v195;
      v173 = &v180;
      v174 = &__src;
      sub_23C4F3474(&v189, &__src);
      sub_23C4F356C(&__src);
      sub_23C4F35EC(&v180);
      if (p_p_src != v189)
      {
        free(p_p_src);
      }

      v192 = 0;
      p_src = 0;
      p_p_src = &p_src;
      v189 = &unk_284F1B880;
      __src = &unk_284F1BA48;
      v172 = &v189;
      v174 = &__src;
      for (nn = *(a1 + 1984); nn; nn = *nn)
      {
        sub_23C4F0FC4(v174, nn[5]);
      }

      sub_23C4F1014(&__src);
      sub_23C4F2BF4(&v189, v183, a1 + 840);
      sub_23C4F2D2C(a1, v183);
      v159 = a1;
      v176 = &unk_284F1BAD8;
      v177 = &v189;
      v178 = &v159;
      v179 = &v176;
      for (i1 = *(a1 + 1984); i1; i1 = *i1)
      {
        sub_23C4F0FC4(v179, i1[5]);
      }

      sub_23C4F1014(&v176);
      sub_23C4B1570(p_src);
      v159 = a1;
      v189 = &unk_284F1BBB0;
      p_p_src = &v159;
      v192 = &v189;
      for (i2 = *(a1 + 2080); i2; i2 = *i2)
      {
        sub_23C4F0FC4(v192, i2[5]);
      }

      sub_23C4F1014(&v189);
      if (*v183 != &v183[16])
      {
        free(*v183);
      }

      v195 = &unk_284F1B868;
      if (v198[0] != v199)
      {
        free(v198[0]);
      }

      sub_23C4B1570(v197);
      v153 = 1;
    }

    goto LABEL_263;
  }

  if (!sub_23C4F2B4C(a1, *(a1 + 1984)) || !sub_23C4F2B4C(a1, *(a1 + 2080)))
  {
    if (v153 == 1)
    {
      v142[0] = 0;
      v142[1] = 0;
      v141 = v142;
      sub_23C4F13BC(&v141, *(a1 + 840), (a1 + 848));
      v197 = 0uLL;
      v195 = &unk_284F1B880;
      v196 = &v197;
      *v183 = &v183[16];
      *&v183[8] = 0x400000000;
      v189 = &unk_284F1C468;
      p_p_src = &v195;
      v192 = &v189;
      for (i3 = *(a1 + 1984); i3; i3 = *i3)
      {
        sub_23C4F0FC4(v192, i3[5]);
      }

      sub_23C4F1014(&v189);
      __src = &unk_284F1C4F8;
      v172 = &v195;
      v174 = &__src;
      for (i4 = *(a1 + 2080); i4; i4 = *i4)
      {
        sub_23C4F0FC4(v174, i4[5]);
      }

      sub_23C4F1014(&__src);
      sub_23C4F2BF4(&v195, v183, &v141);
      sub_23C4F3268(a1, v183);
      sub_23C4F2D2C(a1, v183);
      v180 = a1;
      LOBYTE(v176) = 1;
      operator new();
    }

    goto LABEL_176;
  }

  if (v153 != 1)
  {
LABEL_176:
    v153 = 0;
    goto LABEL_263;
  }

  v144[0] = 0;
  v144[1] = 0;
  v143 = v144;
  sub_23C4F13BC(&v143, *(a1 + 840), (a1 + 848));
  v153 = sub_23C4F1538(a1, a1 + 1960, a1 + 2056, &v143);
  v97 = v144[0];
LABEL_175:
  sub_23C4B1570(v97);
LABEL_263:
  sub_23C4F2EE0((a1 + 1960));
  sub_23C4F2EE0((a1 + 2008));
  sub_23C4F2EE0((a1 + 2056));
  sub_23C4F2EE0((a1 + 2104));
  v53 = v153;
LABEL_264:
  if (v155 != v154)
  {
    free(v155);
  }

  return v53 & 1;
}

void sub_23C4E8844(void *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 40);
  v3 = *(v1 + 43);
  sub_23C504C2C(&v56, *v2);
  v62 = v3;
  v56 = &unk_284F1B828;
  sub_23C504C2C(&v63, *v2);
  v68 = &v56;
  v67[23] = v2;
  v63 = &unk_284F13E08;
  v61 = v2;
  v58[20] = *(v3 + 104);
  if ((atomic_load_explicit(&qword_27E1F6A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6A18))
  {
    qword_27E1F69F8 = 0;
    *&dword_27E1F6A00 = 0;
    qword_27E1F6A08 = 0x2800000000;
    __cxa_atexit(sub_23C4C35C0, &qword_27E1F69F8, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F6A18);
  }

  if (!dword_27E1F6A04)
  {
    v4 = sub_23C4C3164("fast_sin", 8uLL);
    v5 = *sub_23C4C3270((*v4 + 8), "fast_asin", 9uLL);
    *(v5 + 8) = sub_23C4C35B8;
    *(v5 + 16) = 0;
    v6 = sub_23C4C3164("fast_sin", 8uLL);
    v7 = *sub_23C4C3270((*v6 + 8), "fast_acos", 9uLL);
    *(v7 + 8) = sub_23C4C33B0;
    *(v7 + 16) = 0;
    v8 = sub_23C4C3164("fast_sin", 8uLL);
    v9 = *sub_23C4C3270((*v8 + 8), "fast_atan", 9uLL);
    *(v9 + 8) = sub_23C4C351C;
    *(v9 + 16) = 0;
    v10 = sub_23C4C3164("fast_cos", 8uLL);
    v11 = *sub_23C4C3270((*v10 + 8), "fast_asin", 9uLL);
    *(v11 + 8) = sub_23C4C33B0;
    *(v11 + 16) = 0;
    v12 = sub_23C4C3164("fast_cos", 8uLL);
    v13 = *sub_23C4C3270((*v12 + 8), "fast_acos", 9uLL);
    *(v13 + 8) = sub_23C4C35B8;
    *(v13 + 16) = 0;
    v14 = sub_23C4C3164("fast_cos", 8uLL);
    v15 = *sub_23C4C3270((*v14 + 8), "fast_atan", 9uLL);
    *(v15 + 8) = sub_23C4C3480;
    *(v15 + 16) = 0;
    v16 = sub_23C4C3164("fast_tan", 8uLL);
    v17 = *sub_23C4C3270((*v16 + 8), "fast_asin", 9uLL);
    *(v17 + 8) = sub_23C4C3434;
    *(v17 + 16) = 0;
    v18 = sub_23C4C3164("fast_tan", 8uLL);
    v19 = *sub_23C4C3270((*v18 + 8), "fast_acos", 9uLL);
    *(v19 + 8) = sub_23C4C3364;
    *(v19 + 16) = 0;
    v20 = sub_23C4C3164("fast_tan", 8uLL);
    v21 = *sub_23C4C3270((*v20 + 8), "fast_atan", 9uLL);
    *(v21 + 8) = sub_23C4C35B8;
    *(v21 + 16) = 0;
  }

  v22 = v61[4];
  v23 = v61 + 3;
  if (v22 != (v61 + 3))
  {
    do
    {
      if (v22)
      {
        v24 = (v22 - 56);
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v22 + 1);
      Name = llvm::Value::getName(v24);
      v55[0] = 0;
      v55[1] = 0;
      if (sub_23C4C28BC(Name, v27, v55, &v54))
      {
        Key = llvm::StringMapImpl::FindKey();
        v29 = Key == -1 ? dword_27E1F6A00 : Key;
        if (v29 != dword_27E1F6A00)
        {
          v30 = *(v22 - 6);
          if (v30)
          {
            v31 = qword_27E1F69F8;
            do
            {
              while (1)
              {
                v32 = *(v30 + 24);
                v30 = *(v30 + 8);
                if (((sub_23C4B88A0(v32) - (v32 - 32 * (*(v32 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                {
                  sub_23C4C30FC(&v57, v32);
                  v33 = *(v32 - 4 * (*(v32 + 5) & 0x7FFFFFF));
                  if (v33)
                  {
                    if (*(v33 + 16) == 84 && ((sub_23C4B88A0(v33) - (v33 + 32 * -(*(v33 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                    {
                      v34 = *(v33 - 32);
                      if (v34)
                      {
                        if (!*(v34 + 16) && *(v34 + 24) == *(v33 + 72))
                        {
                          v35 = llvm::Value::getName(v34);
                          v53[0] = 0;
                          v53[1] = 0;
                          if (sub_23C4C28BC(v35, v36, v53, &v52))
                          {
                            v37 = *(v31 + 8 * v29);
                            v38 = llvm::StringMapImpl::FindKey();
                            v39 = v38 == -1 ? *(v37 + 16) : v38;
                            v40 = *(v37 + 8) + 8 * v39;
                            if (v40 != *(*(v31 + 8 * v29) + 8) + 8 * *(*(v31 + 8 * v29) + 16))
                            {
                              v47 = v31;
                              sub_23C4AE5DC(__dst, v55);
                              if (v51 >= 0)
                              {
                                v41 = __dst;
                              }

                              else
                              {
                                v41 = __dst[0];
                              }

                              v42 = sub_23C4AE5DC(__p, v53);
                              v43 = __p;
                              if (v49 < 0)
                              {
                                v43 = __p[0];
                              }

                              sub_23C4AA240(v42, "Simplify Identity: %s(%s)", v41, v43);
                              if (v49 < 0)
                              {
                                operator delete(__p[0]);
                              }

                              if (v51 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v44 = *(*v40 + 8);
                              v45 = *(*v40 + 16);
                              v46 = (v68 + (v45 >> 1));
                              v31 = v47;
                              if (v45)
                              {
                                v44 = *(*v46 + v44);
                              }

                              v44(v46, *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF)));
                              llvm::Value::replaceAllUsesWith();
                              llvm::Instruction::eraseFromParent(v32);
                              if (!llvm::Value::getNumUses(v33))
                              {
                                break;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (!v30)
                {
                  goto LABEL_42;
                }
              }

              llvm::Instruction::eraseFromParent(v33);
            }

            while (v30);
          }
        }
      }

LABEL_42:
      v22 = v25;
    }

    while (v25 != v23);
  }

  v56 = &unk_284F1B828;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v67);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v66);
  if (v64 != &v65)
  {
    free(v64);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v60);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v59);
  if (v57 != v58)
  {
    free(v57);
  }
}

void sub_23C4E8E90()
{
  if ((atomic_load_explicit(&qword_27E1F7378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7378))
  {
    qword_27E1F7358 = 0;
    *&dword_27E1F7360 = 0;
    qword_27E1F7368 = 0x1800000000;
    __cxa_atexit(sub_23C4F0A68, &qword_27E1F7358, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7378);
  }
}

void sub_23C4E8F14()
{
  if ((atomic_load_explicit(&qword_27E1F73A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F73A0))
  {
    qword_27E1F7380 = 0;
    *&dword_27E1F7388 = 0;
    qword_27E1F7390 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F7380, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F73A0);
  }
}

void sub_23C4E8F98()
{
  if ((atomic_load_explicit(&qword_27E1F73C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F73C8))
  {
    qword_27E1F73A8 = 0;
    *&dword_27E1F73B0 = 0;
    qword_27E1F73B8 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F73A8, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F73C8);
  }
}

void sub_23C4E901C()
{
  if ((atomic_load_explicit(&qword_27E1F7418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7418))
  {
    qword_27E1F73F8 = 0;
    *&dword_27E1F7400 = 0;
    qword_27E1F7408 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F73F8, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7418);
  }
}

llvm::NamedMDNode *sub_23C4E90A0(void *a1, uint64_t a2)
{
  v3 = *(a1 + *(*a1 - 24) + 320);
  v11 = "air.sampler_states";
  v12 = 259;
  result = llvm::Module::getNamedMetadata(v3, &v11);
  if (result)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      result = llvm::NamedMDNode::getNumOperands(v5);
      if (i >= result)
      {
        break;
      }

      Operand = llvm::NamedMDNode::getOperand(v5);
      v8 = *(Operand - 8 * *(Operand + 8) + 8);
      if (v8)
      {
        if (*v8 - 1 > 1)
        {
          v10 = 0;
        }

        else
        {
          v9 = *(v8 + 16);
          if (*(v9 + 16) == 3)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        sub_23C49B500(a2, v10);
      }
    }
  }

  return result;
}

uint64_t sub_23C4E9178(uint64_t result, unint64_t *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = *(result + 16);
  v3 = v2 - 28;
  if (v2 >= 0x1C)
  {
    goto LABEL_8;
  }

  if (v2 == 5)
  {
LABEL_6:
    v3 = *(result + 18);
LABEL_8:
    while ((v3 & 0xFFFFFFFE) == 0x30)
    {
      v6 = *(result + 20);
      if ((v6 & 0x40000000) != 0)
      {
        v7 = *(result - 8);
      }

      else
      {
        v7 = result - 32 * (v6 & 0x7FFFFFF);
      }

      result = *v7;
      v2 = *(*v7 + 16);
      if (result)
      {
        v8 = v2 >= 0x1C;
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        if (result)
        {
          v9 = v2 == 5;
        }

        else
        {
          v9 = 0;
        }

        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_4;
      }

      v3 = v2 - 28;
    }

    goto LABEL_21;
  }

LABEL_4:
  if (v2 != 16)
  {
LABEL_21:
    if (v2 != 3)
    {
      return 0;
    }

    v10 = *(result - 32);
    if (!v10 || *(v10 + 16) != 16)
    {
      return 0;
    }

    v4 = (v10 + 24);
    v5 = *(v10 + 32);
    goto LABEL_25;
  }

  v4 = (result + 24);
  v5 = *(result + 32);
LABEL_25:
  if (v5 >= 0x41)
  {
    v4 = *v4;
  }

  v11 = *v4;
  if ((v11 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  *a2 = v11;
  return 1;
}

void sub_23C4E9244(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_23C496CE8();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

uint64_t sub_23C4E9344(void *a1, uint64_t a2, int *a3)
{
  v363 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = (a1 + *(*a1 - 24));
  size = v7[14].__r_.__value_.__l.__size_;
  v9 = *a3;
  if ((size[1673] & 1) != 0 || a3[1] != 2)
  {
    if (v9 == 3)
    {
      (*(*size + 288))(size, a1[19]);
      v6 = *a1;
      v9 = *a3;
    }
  }

  else if ((v9 & 0xFFFFFFFE) == 2)
  {
    v10 = "Read or write to cube texture not supported";
    v11 = v7 + 17;
LABEL_15:
    std::string::append(v11, v10);
    return 0;
  }

  if (*(*(a1 + *(v6 - 24) + 344) + 1663) == 1 && v9 == 8)
  {
    v13 = (*(v6 + 304))(a1);
    if (v13)
    {
      if (*(v13 + 35))
      {
        v10 = "Large MRT not supported with image block write";
        v11 = (a1 + *(*a1 - 24) + 408);
        goto LABEL_15;
      }
    }
  }

  v337 = llvm::PointerType::get();
  llvm::StructType::get();
  v15 = *a1;
  v304 = *(a3 + 32);
  if (*(a3 + 32))
  {
    v318 = *(*(a1 + *(v15 - 24) + 344) + 1644);
  }

  else
  {
    v318 = 0;
  }

  v16 = *(v15 - 24);
  v14 = 1;
  if (!*(a2 + 8))
  {
    return v14;
  }

  v297 = *(*(a1 + v16 + 344) + 1661);
  v17 = a1 + 1;
  v302 = a1 + 43;
  v301 = *a3 & 0xFFFFFFFE;
  v308 = *(**(*(a2 + 24) + 16) + 8);
  v18 = *(a2 + 8);
  v313 = a1 + 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v19 = *(v18 + 24);
        v18 = *(v18 + 8);
        sub_23C4C30FC(v17 + *(*a1 - 24), v19);
        v337 = *a3;
        v341 = 0;
        v342 = 0u;
        v343 = 0u;
        memset(v344, 0, 26);
        v348 = 0;
        v347 = 0u;
        v346 = 0u;
        v345 = 0u;
        v350 = 0u;
        memset(v351, 0, 28);
        v352 = 0;
        v353 = 0;
        v355 = 0;
        v354 = 0;
        v356 = 1;
        v357 = 0;
        v20 = a3[3];
        v349 = 4;
        v21 = *(v19 + 5) & 0x7FFFFFF;
        v340 = 0;
        v338 = v20;
        v22 = (v19 - 32 * v21);
        if (*(a3 + 23))
        {
          v23 = *&v22[8 * *(a3 + 23)];
        }

        else
        {
          v23 = 0;
        }

        v24 = *&v22[8 * *(a3 + 22)];
        if (v24 && v24[16] - 11 < 2)
        {
          goto LABEL_29;
        }

        if (!v23)
        {
          break;
        }

        if (*(v23 + 16) - 11 >= 2)
        {
          v336 = 0;
          v319 = v23;
          v25 = sub_23C4E9178(v23, &v336);
          if (!v24)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }

LABEL_29:
        llvm::UndefValue::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v19);
        if (!v18)
        {
          return 1;
        }
      }

      v319 = 0;
      v25 = 0;
      v336 = 0;
      if (!v24)
      {
        goto LABEL_36;
      }

LABEL_34:
      if (*(llvm::Value::stripPointerCasts(v24) + 16) >= 0x15u && !(*(*a1 + 272))(a1))
      {
        goto LABEL_45;
      }

LABEL_36:
      if (v25)
      {
        break;
      }

      v30 = (*(*a1 + 288))(a1);
      if (!v319 || (v30 & 1) != 0 || *(llvm::Value::stripPointerCasts(v319) + 16) <= 0x14u)
      {
        break;
      }

LABEL_45:
      if (!v18)
      {
        return 1;
      }
    }

    if (((v25 | (*(*a1 + 232))(a1) & v318 ^ 1) & 1) == 0)
    {
      break;
    }

    v335 = 0;
    if (v25)
    {
      v27 = v336;
      if (v318)
      {
        v28 = ((v336 >> 16) & 0xF) - 1;
        if (v28 > 7)
        {
          LOWORD(v29) = 0;
        }

        else
        {
          v29 = dword_23C532B04[v28];
        }

        v335 = (32 * ((v336 & 0x6000) != 0)) | (((v336 & 0x6000) == 0x4000) << 6) | (((v336 & 0x1800) == 2048) << 7) | (((v336 & 0x600) == 512) << 8) | v29;
        v27 = v336 & 0xFFFFFFFFFFF0FFFFLL;
      }

      if (v301 == 4 && *(*(v302 + *(*a1 - 24)) + 1646) == 1)
      {
        v27 = v27 & 0xFFFFFFFFFFFF81FFLL | 0xA00;
      }

      v319 = sub_23C4EF198(a1, v27);
    }

    v312 = v18;
    v341 = (*a3 - 9) < 2;
    v317 = v24;
    v314 = v25;
    if (*(a3 + 27))
    {
      v31 = (v19 + 32 * *(a3 + 27) + -32 * (*(v19 + 5) & 0x7FFFFFF));
      v32 = (*v31 + 24);
      if (*(*v31 + 32) >= 0x41u)
      {
        v32 = *v32;
      }

      if (*v32)
      {
        v33 = v31[4];
        if (v33 && *(v33 + 16) <= 0x14u)
        {
          if (llvm::Constant::isZeroValue(v33))
          {
            goto LABEL_72;
          }

          if ((*(*v33 + 8) & 0xFE) == 0x12)
          {
            v34 = *(*v33 + 32);
            llvm::ConstantInt::get();
            Splat = llvm::ConstantDataVector::getSplat();
            if (v34)
            {
              for (i = 0; i != v34; ++i)
              {
                AggregateElement = llvm::Constant::getAggregateElement(v33);
                v38 = AggregateElement;
                v39 = *(AggregateElement + 32);
                if (v39 > 0x40)
                {
                  v40 = **(AggregateElement + 24);
                }

                else
                {
                  v40 = (*(AggregateElement + 24) << -v39) >> -v39;
                }

                if ((v40 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
                {
                  v38 = llvm::ConstantInt::get();
                }

                v41 = a1 + *(*a1 - 24);
                LOWORD(v362) = 257;
                v42 = llvm::ConstantInt::get();
                Splat = sub_23C505AA8((v41 + 8), Splat, v38, v42, &v358);
              }
            }
          }

          else
          {
            v68 = *(v33 + 32);
            if (v68 > 0x40)
            {
              v69 = **(v33 + 24);
            }

            else
            {
              v69 = (*(v33 + 24) << -v68) >> -v68;
            }

            Splat = v33;
            if ((v69 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
            {
              Splat = llvm::ConstantInt::get();
            }
          }
        }

        else
        {
          Splat = v31[4];
        }

        *(&v347 + 1) = Splat;
        v17 = a1 + 1;
        v24 = v317;
        v25 = v314;
      }
    }

LABEL_72:
    if (*(a3 + 31))
    {
      if (v341)
      {
        v43 = llvm::ConstantInt::get();
      }

      else
      {
        v43 = *(v19 + 4 * *(a3 + 31) + -4 * (*(v19 + 5) & 0x7FFFFFF));
      }

      v348 = v43;
    }

    if (v308 == 16)
    {
      if ((v318 & 1) == 0)
      {
        HIBYTE(v340) = 1;
      }

      if (*(a3 + 37))
      {
        v351[1] = *(v19 + 4 * *(a3 + 37) + -4 * (*(v19 + 5) & 0x7FFFFFF));
      }
    }

    v44 = *(a3 + 29);
    if (*(a3 + 29))
    {
      *(&v350 + 1) = *(v19 + 4 * v44 + -4 * (*(v19 + 5) & 0x7FFFFFF));
      v351[0] = *(v19 + 4 * v44 + -4 * (*(v19 + 5) & 0x7FFFFFF) + 4);
      v349 = 2;
      goto LABEL_84;
    }

    if (*(a3 + 28))
    {
      v48 = (v19 + 32 * *(a3 + 28) + -32 * (*(v19 + 5) & 0x7FFFFFF));
      v49 = *v48;
      *&v350 = v48[4];
      v50 = (v49 + 24);
      if (*(v49 + 32) >= 0x41u)
      {
        v50 = *v50;
      }

      v51 = *v50;
      v349 = v51 != 0;
      if (!HIDWORD(v337))
      {
LABEL_311:
        v349 = 3;
        *&v350 = 0;
        goto LABEL_84;
      }

      if (!v51 && ((*(*a1 + 224))(a1) & 1) == 0)
      {
        v349 = 1;
        NullValue = llvm::ConstantFP::get();
        goto LABEL_317;
      }

      if ((*(*a1 + 264))(a1))
      {
        v52 = *a1;
        if (*(*(v302 + *(*a1 - 24)) + 1651) == 1)
        {
          v349 = 0;
          v53 = *(v52 - 24);
          v54 = sub_23C4EE264(a1, v319, 1);
          LOWORD(v362) = 257;
          NullValue = sub_23C497C88((v17 + v53), **(*v54 + 16), v54, 0, &v358);
LABEL_317:
          *&v350 = NullValue;
        }
      }
    }

    else
    {
      v62 = *(a3 + 30);
      if (!*(a3 + 30))
      {
        if (*(a3 + 39))
        {
          v349 = 1;
          NullValue = llvm::ConstantInt::get();
        }

        else
        {
          if (!v341)
          {
            goto LABEL_311;
          }

          v349 = 0;
          NullValue = llvm::Constant::getNullValue(*(a1 + *(*a1 - 24) + 152), v26);
        }

        goto LABEL_317;
      }

      if (HIDWORD(v337))
      {
        v349 = 1;
        v63 = *(v19 + 4 * v62 + -4 * (*(v19 + 5) & 0x7FFFFFF));
      }

      else if (v337 == 3)
      {
        v349 = 1;
        v63 = llvm::ConstantInt::get();
      }

      else
      {
        v63 = 0;
        v349 = 3;
      }

      *&v350 = v63;
      if (v297 && (*a3 == 8 || *a3 == 3))
      {
        v263 = *(*a1 - 24);
        v264 = sub_23C4EC4B4(a1, v24, 7);
        LOWORD(v362) = 257;
        v265 = sub_23C497C88((v17 + v263), **(*v264 + 16), v264, 0, &v358);
        v266 = (a1 + *(*a1 - 24));
        v267 = v350;
        v268 = sub_23C505300(v266, v265, *v350);
        LOWORD(v362) = 257;
        v24 = v317;
        v269 = v267;
        v25 = v314;
        NullValue = sub_23C49A474((v266 + 1), v269, v268, &v358);
        goto LABEL_317;
      }
    }

LABEL_84:
    if (v304)
    {
      v351[2] = sub_23C504E2C(a1 + *(*a1 - 24), *(v19 + 4 * *(a3 + 32) + -4 * (*(v19 + 5) & 0x7FFFFFF)), 1);
    }

    if (*(a3 + 33))
    {
      v352 = *(v19 + 4 * *(a3 + 33) + -4 * (*(v19 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 34))
    {
      v353 = *(v19 + 4 * *(a3 + 34) + -4 * (*(v19 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 35))
    {
      v354 = *(v19 + 4 * *(a3 + 35) + -4 * (*(v19 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 36))
    {
      v45 = *(v19 + 4 * *(a3 + 36) + -4 * (*(v19 + 5) & 0x7FFFFFF));
      v46 = (v45 + 24);
      if (*(v45 + 32) >= 0x41u)
      {
        v46 = *v46;
      }

      v47 = *v46;
      goto LABEL_107;
    }

    if (v301 == 4)
    {
      v47 = 0;
LABEL_107:
      v355 = v47;
    }

    v56 = *a1;
    v309 = *a3;
    if (v319 || *a3 == 8)
    {
      v303 = 0;
      goto LABEL_166;
    }

    __p[0] = 4;
    __p[1] = 0;
    v333 = 0;
    if (!(*(v56 + 232))(a1))
    {
      if (HIDWORD(v337))
      {
        v59 = "agc.nnorm_sampler_wrapper_non_1d";
      }

      else
      {
        v59 = "agc.nnorm_sampler_wrapper_1d";
      }

      GlobalVariable = llvm::Module::getGlobalVariable();
      if (GlobalVariable)
      {
        v61 = GlobalVariable;
      }

      else
      {
        if (HIDWORD(v337))
        {
          v64 = "agc.nnorm_sampler_non_1d";
        }

        else
        {
          v64 = "agc.nnorm_sampler_1d";
        }

        v65 = 1;
        v66 = llvm::User::operator new(0x58);
        BYTE1(v362) = 1;
        if (*v64)
        {
          v358 = v64;
          v67 = 3;
        }

        else
        {
          v67 = 1;
        }

        LOBYTE(v362) = v67;
        llvm::GlobalVariable::GlobalVariable();
        *(v66 + 80) |= 1u;
        v70 = *(*(v302 + *(*a1 - 24)) + 1604);
        v71 = __clz(v70) ^ 0x13F;
        if (v70)
        {
          v72 = v71;
        }

        else
        {
          v72 = 0;
        }

        v296 = v72 | v296 & 0xFFFFFFFFFFFF0000;
        llvm::GlobalObject::setAlignment();
        llvm::GlobalObject::setSection();
        sub_23C506A1C(a1 + *(*a1 - 24), v66, 3u, HIDWORD(v337) != 0);
        v358 = v66;
        llvm::ConstantStruct::get();
        v61 = llvm::User::operator new(0x58);
        BYTE1(v362) = 1;
        if (*v59)
        {
          v358 = v59;
          v65 = 3;
        }

        LOBYTE(v362) = v65;
        llvm::GlobalVariable::GlobalVariable();
        *(v61 + 80) |= 1u;
        llvm::GlobalVariable::setInitializer();
        v358 = 4;
        v359 = 0;
        v73 = v61;
        v360 = v61;
        if (v61 != -8192)
        {
          v73 = v61;
          if (v61 != -4096)
          {
            v73 = v61;
            if (v61)
            {
              llvm::ValueHandleBase::AddToUseList(&v358);
              v73 = v360;
            }
          }
        }

        sub_23C4EF514(a1 + 95, v73, &v358);
        v17 = a1 + 1;
        if (v360 != -8192 && v360 != -4096 && v360)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v358);
        }
      }

      sub_23C4D56F8(__p, v61);
      v25 = v314;
      goto LABEL_155;
    }

    if (*a3 == 3)
    {
      v58 = 0x807BFF0000002049;
      if (!a3[1])
      {
        goto LABEL_153;
      }

LABEL_131:
      v57 = v58 & 0xFFFFFFFFFFFFBFFFLL;
      goto LABEL_154;
    }

    v57 = 0x807BFF0000002049;
    if (*a3 == 2)
    {
      if (*(a3 + 39))
      {
        v58 = 0x807BFF0000002000;
      }

      else
      {
        v58 = ((8 * *(a1 + 10)) | (*(a1 + 10) << 6) | *(a1 + 10)) - 0x7F8400FFFFFFE000;
        if (!a3[1])
        {
LABEL_153:
          v57 = v58 & 0xFFFFFFFFFFFF9FFFLL;
          goto LABEL_154;
        }
      }

      goto LABEL_131;
    }

LABEL_154:
    v74 = sub_23C4EF198(a1, v57);
    sub_23C4D56F8(__p, v74);
LABEL_155:
    v75 = 0;
    v76 = v333;
    if (v333 && *(v333 + 16) == 3)
    {
      if ((*(v333 + 80) & 1) != 0 && (llvm::GlobalValue::isDeclaration(v333) & 1) == 0)
      {
        v75 = *(v76 - 4);
      }

      else
      {
        v75 = 0;
      }
    }

    v303 = v75;
    if (v333 != -8192 && v333 != -4096 && v333)
    {
      llvm::ValueHandleBase::RemoveFromUseList(__p);
    }

    v56 = *a1;
LABEL_166:
    sub_23C4C30FC(v17 + *(v56 - 24), v19);
    v78 = *(v19 + 4 * *(a3 + 26) + -4 * (*(v19 + 5) & 0x7FFFFFF));
    *&v347 = v78;
    if ((a3[1] & 0xFFFFFFFE) == 2)
    {
      v78 = sub_23C50593C(a1 + *(*a1 - 24), v78, 4, v77);
      v306 = 0;
LABEL_198:
      *&v347 = v78;
      goto LABEL_199;
    }

    if (*(a3 + 39))
    {
      v79 = a3[2];
      v80 = 29;
      if (v79 == 1)
      {
        v80 = 30;
      }

      v300 = *(&a1[v80] + *(*a1 - 24));
      v81 = sub_23C4EEE44(a1, v24);
      v298 = llvm::ConstantInt::get();
      v82 = llvm::ConstantInt::get();
      v83 = *(*a1 - 24);
      v84 = v347;
      v299 = v82;
      if (v79 != 1)
      {
        v85 = a1 + v83;
        v86 = *(a1 + v83 + 192);
        if ((*(*v347 + 8) & 0xFE) == 0x12)
        {
          v86 = llvm::FixedVectorType::get();
        }

        if ((*(v86 + 8) & 0xFE) == 0x12)
        {
          v87 = *(**(v86 + 16) + 8);
        }

        else
        {
          v87 = *(v86 + 8);
        }

        LOWORD(v362) = 257;
        if (v87 > 6)
        {
          v88 = sub_23C49ACF8((v85 + 8), 39, v84, v86, &v358);
        }

        else
        {
          v88 = sub_23C4B284C((v85 + 8), v84, v86, &v358);
        }

        v84 = v88;
      }

      *&v347 = v84;
      v89 = *(*a1 - 24);
      LOWORD(v362) = 257;
      v306 = sub_23C497D84((v17 + v89), 36, v84, v81, &v358);
      v90 = *a3;
      if (*a3 == 3)
      {
        v91 = *(v302 + *(*a1 - 24));
        if ((*(*v91 + 520))(v91))
        {
          v92 = *(a1 + *(*a1 - 24) + 56);
          v358 = "skip_texture_buffer_write";
          LOWORD(v362) = 259;
          llvm::BasicBlock::splitBasicBlock();
          v93 = *(v92 + 40);
          if (v93 == v92 + 40)
          {
            v96 = 0;
          }

          else
          {
            v94 = (v93 - 24);
            if (v93)
            {
              v95 = v93 - 24;
            }

            else
            {
              v95 = 0;
            }

            if (*(v95 + 16) - 29 >= 0xB)
            {
              v96 = 0;
            }

            else
            {
              v96 = v94;
            }
          }

          llvm::Instruction::eraseFromParent(v96);
          v358 = "texture_buffer_write";
          LOWORD(v362) = 259;
          operator new();
        }

        v90 = *a3;
      }

      if (v90 == 2)
      {
        v97 = *(v302 + *(*a1 - 24));
        (*(*v97 + 520))(v97);
      }

      llvm::ConstantInt::get();
      LOWORD(v362) = 257;
      *&v347 = llvm::IRBuilderBase::CreateSelect();
      v98 = *(*a1 - 24);
      LOWORD(v362) = 257;
      v99 = sub_23C49A8E0(v17 + v98, v347, v298, &v358);
      v100 = *(*a1 - 24);
      LOWORD(v362) = 257;
      v101 = sub_23C49B560(v17 + v100, v347, v299, &v358);
      v102 = *(*a1 - 24);
      v103 = **(v300 + 16);
      LOWORD(v362) = 257;
      v105 = sub_23C4EF5F0(v17 + v102, v99, v103, &v358, v104);
      v106 = *(*a1 - 24);
      v107 = **(v300 + 16);
      LOWORD(v362) = 257;
      v109 = sub_23C4EF5F0(v17 + v106, v101, v107, &v358, v108);
      v110 = llvm::UndefValue::get();
      v111 = a1 + *(*a1 - 24);
      LOWORD(v362) = 257;
      v112 = llvm::ConstantInt::get();
      v113 = (v111 + 8);
      v17 = a1 + 1;
      v114 = sub_23C505AA8(v113, v110, v105, v112, &v358);
      v115 = a1 + *(*a1 - 24);
      LOWORD(v362) = 257;
      v116 = llvm::ConstantInt::get();
      v78 = sub_23C505AA8((v115 + 8), v114, v109, v116, &v358);
      v24 = v317;
      v25 = v314;
      goto LABEL_198;
    }

    v306 = 0;
LABEL_199:
    v117 = a1 + *(*a1 - 24);
    if (*(*(v117 + 43) + 1689) == 1 && (*(a1 + 15) & 1) == 0)
    {
      v118 = *a3;
      if (*a3 == 3)
      {
        if (a3[2] == 1)
        {
          *&v347 = sub_23C5066D8(v117, v78, 16, 0);
        }

        v119 = llvm::ConstantInt::get();
        if (*(a3 + 31))
        {
          v120 = *(*a1 - 24);
          v121 = sub_23C4EC4B4(a1, *(v19 - 4 * (*(v19 + 5) & 0x7FFFFFF)), 2);
          LOWORD(v362) = 257;
          v122 = sub_23C497C88((v17 + v120), **(*v121 + 16), v121, 0, &v358);
          v123 = a1 + *(*a1 - 24);
          LOWORD(v362) = 257;
          v124 = llvm::ConstantInt::get();
          v125 = sub_23C5057E8((v123 + 8), v122, v124, &v358);
          v126 = *(*a1 - 24);
          v127 = v348;
          v128 = *v348;
          LOWORD(v362) = 257;
          v129 = sub_23C4A6F5C(v17 + v126, v125, v128, &v358);
          v334 = 257;
          v130 = sub_23C497D84((v17 + v126), 34, v127, v129, __p);
          v331 = 257;
          v119 = sub_23C49A98C(v17 + v126, v119, v130, &v330);
        }

        if (*(a3 + 35))
        {
          v131 = *(*a1 - 24);
          v132 = v354;
          v133 = llvm::ConstantInt::get();
          LOWORD(v362) = 257;
          v134 = sub_23C497D84((v17 + v131), 34, v132, v133, &v358);
          v334 = 257;
          sub_23C49A98C(v17 + v131, v119, v134, __p);
        }

        v24 = v317;
        v135 = v347;
        v136 = a1 + *(*a1 - 24);
        if ((*(*v347 + 8) & 0xFE) == 0x12)
        {
          LOWORD(v362) = 257;
          v137 = llvm::ConstantInt::get();
          sub_23C5057E8((v136 + 8), v135, v137, &v358);
          v138 = v347;
          v139 = a1 + *(*a1 - 24);
          llvm::ConstantInt::get();
          LOWORD(v362) = 257;
          Select = llvm::IRBuilderBase::CreateSelect();
          v334 = 257;
          v141 = llvm::ConstantInt::get();
          *&v347 = sub_23C505AA8((v139 + 8), v138, Select, v141, __p);
          v17 = a1 + 1;
          v24 = v317;
        }

        else
        {
          llvm::ConstantInt::get();
          LOWORD(v362) = 257;
          *&v347 = llvm::IRBuilderBase::CreateSelect();
        }

        v118 = *a3;
        v25 = v314;
      }

      if (v118 == 2)
      {
        v142 = llvm::ConstantInt::get();
        if (v350)
        {
          v143 = *(*a1 - 24);
          v144 = sub_23C4EC4B4(a1, v24, 5);
          LOWORD(v362) = 257;
          v145 = sub_23C497C88((v17 + v143), **(*v144 + 16), v144, 0, &v358);
          v146 = *(*a1 - 24);
          v147 = v350;
          v148 = *v350;
          LOWORD(v362) = 257;
          v149 = sub_23C4A6F5C(v17 + v146, v145, v148, &v358);
          v334 = 257;
          v150 = sub_23C497D84((v17 + v146), 34, v147, v149, __p);
          v331 = 257;
          v142 = sub_23C49A98C(v17 + v146, v142, v150, &v330);
        }

        if (*(a3 + 31))
        {
          v151 = *(*a1 - 24);
          v152 = sub_23C4EC4B4(a1, *(v19 - 4 * (*(v19 + 5) & 0x7FFFFFF)), 2);
          LOWORD(v362) = 257;
          v153 = sub_23C497C88((v17 + v151), **(*v152 + 16), v152, 0, &v358);
          v154 = a1 + *(*a1 - 24);
          LOWORD(v362) = 257;
          v155 = llvm::ConstantInt::get();
          v156 = sub_23C5057E8((v154 + 8), v153, v155, &v358);
          v157 = *(*a1 - 24);
          v158 = v348;
          v159 = *v348;
          LOWORD(v362) = 257;
          v160 = sub_23C4A6F5C(v17 + v157, v156, v159, &v358);
          v334 = 257;
          v161 = sub_23C497D84((v17 + v157), 34, v158, v160, __p);
          v331 = 257;
          v142 = sub_23C49A98C(v17 + v157, v142, v161, &v330);
        }

        if (*(a3 + 35))
        {
          v162 = *(*a1 - 24);
          v163 = v354;
          v164 = llvm::ConstantInt::get();
          LOWORD(v362) = 257;
          v165 = sub_23C497D84((v17 + v162), 34, v163, v164, &v358);
          v334 = 257;
          v142 = sub_23C49A98C(v17 + v162, v142, v165, __p);
        }

        if (*(a3 + 33))
        {
          v166 = *(*a1 - 24);
          v167 = sub_23C4EC4B4(a1, v317, 6);
          LOWORD(v362) = 257;
          v168 = sub_23C497C88((v17 + v166), **(*v167 + 16), v167, 0, &v358);
          v169 = *(*a1 - 24);
          v170 = v352;
          v171 = *v352;
          LOWORD(v362) = 257;
          v172 = sub_23C4A6F5C(v17 + v169, v168, v171, &v358);
          v334 = 257;
          v173 = sub_23C497D84((v17 + v169), 34, v170, v172, __p);
          v331 = 257;
          sub_23C49A98C(v17 + v169, v142, v173, &v330);
        }

        v174 = v347;
        v175 = a1 + *(*a1 - 24);
        if ((*(*v347 + 8) & 0xFE) == 0x12)
        {
          LOWORD(v362) = 257;
          v176 = llvm::ConstantInt::get();
          sub_23C5057E8((v175 + 8), v174, v176, &v358);
          v177 = v347;
          v178 = a1 + *(*a1 - 24);
          llvm::ConstantInt::get();
          LOWORD(v362) = 257;
          v179 = llvm::IRBuilderBase::CreateSelect();
          v334 = 257;
          v180 = llvm::ConstantInt::get();
          *&v347 = sub_23C505AA8((v178 + 8), v177, v179, v180, __p);
          v17 = a1 + 1;
          v24 = v317;
        }

        else
        {
          v24 = v317;
          llvm::ConstantInt::get();
          LOWORD(v362) = 257;
          *&v347 = llvm::IRBuilderBase::CreateSelect();
        }

        v25 = v314;
      }
    }

    BYTE1(v340) = (v318 & 1) == 0;
    LOBYTE(v340) = a3[5] & BYTE1(v340);
    *(&v343 + 1) = sub_23C4EC4B4(a1, v24, 2);
    v344[0] = sub_23C4EC4B4(a1, v24, 3);
    if (*a3 == 8 || *a3 == 3)
    {
      *&v342 = sub_23C4EF6D8(a1, v24);
      *&v343 = sub_23C4EC4B4(a1, v24, 1);
      if ((*(*a1 + 280))(a1))
      {
        goto LABEL_231;
      }

      v181 = 4;
      v182 = &v344[1];
    }

    else
    {
      v183 = sub_23C4EF6D8(a1, v24);
      v181 = 0;
      *&v342 = v183;
      v182 = &v342 + 1;
    }

    *v182 = sub_23C4EC4B4(a1, v24, v181);
LABEL_231:
    if (v309 == 8)
    {
      v184 = 32 * *(a3 + 24);
      *&v345 = *(v19 + v184 + -32 * (*(v19 + 5) & 0x7FFFFFF));
      *(&v345 + 1) = *(v19 + v184 + -32 * (*(v19 + 5) & 0x7FFFFFF) + 32);
      *&v346 = *(v19 + v184 + -32 * (*(v19 + 5) & 0x7FFFFFF) + 64);
      *(&v346 + 1) = *(v19 + v184 + -32 * (*(v19 + 5) & 0x7FFFFFF) + 96);
      v339 = a3[4];
      v185 = *(v19 + 4 * *(a3 + 38) + -4 * (*(v19 + 5) & 0x7FFFFFF));
      v186 = (v185 + 24);
      if (*(v185 + 32) >= 0x41u)
      {
        v186 = *v186;
      }

      if (*v186)
      {
        v357 = (*(*a1 + 304))(a1);
      }

      goto LABEL_239;
    }

    v187 = v303;
    if (v303)
    {
      v188 = *(*a1 - 24);
      LODWORD(__p[0]) = 0;
      LOWORD(v362) = 257;
      v189 = v17 + v188;
LABEL_238:
      v344[2] = sub_23C49B32C(v189, v187, __p, 1, &v358);
      goto LABEL_239;
    }

    if (v301 == 4)
    {
      v197 = a1 + *(*a1 - 24);
      if (!(v25 & 1 | ((*(*(v197 + 43) + 1646) & 1) == 0)))
      {
        v243 = *(a1 + 178);
        if (v243)
        {
          v244 = a1[87];
          v245 = ((v319 >> 4) ^ (v319 >> 9)) & (v243 - 1);
          v246 = v244 + 48 * v245;
          v247 = *(v246 + 24);
          if (v319 == v247)
          {
LABEL_293:
            if (v246 != v244 + 48 * v243)
            {
              v248 = *(v246 + 40);
LABEL_344:
              if (v248)
              {
                v288 = v248[16] == 3;
              }

              else
              {
                v288 = 0;
              }

              if (v288 && (v248[80] & 1) != 0 && (llvm::GlobalValue::isDeclaration(v248) & 1) == 0)
              {
                v187 = *(v248 - 4);
              }

              else
              {
                v187 = 0;
              }

              LODWORD(__p[0]) = 0;
              LOWORD(v362) = 257;
              v189 = (v197 + 8);
              goto LABEL_238;
            }
          }

          else
          {
            v274 = 1;
            while (v247 != -4096)
            {
              v275 = v245 + v274++;
              v245 = v275 & (v243 - 1);
              v246 = v244 + 48 * v245;
              v247 = *(v246 + 24);
              if (v319 == v247)
              {
                goto LABEL_293;
              }
            }
          }
        }

        v311 = a1 + *(*a1 - 24);
        v276 = *(sub_23C4EF78C(a1[79], *(a1 + 162), v319) + 40);
        v277 = llvm::User::operator new(0x58);
        v358 = "agc.gather_sampler_words";
        v360 = v276;
        LOWORD(v362) = 2051;
        v278 = llvm::GlobalVariable::GlobalVariable();
        *(v278 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        llvm::GlobalObject::setAlignment();
        sub_23C506A1C(a1 + *(*a1 - 24), v277, 4u, v276);
        v280 = llvm::Constant::getNullValue(*(*(**(*v319 + 16) + 16) + 8), v279);
        v281 = llvm::PointerType::get();
        v283 = llvm::Constant::getNullValue(v281, v282);
        v358 = v277;
        v359 = v280;
        v360 = v283;
        llvm::ConstantStruct::get();
        v248 = llvm::User::operator new(0x58);
        v358 = "agc.gather_sampler_state_struct_ptr";
        v360 = v276;
        LOWORD(v362) = 2051;
        v284 = llvm::GlobalVariable::GlobalVariable();
        *(v284 + 80) |= 1u;
        llvm::GlobalVariable::setInitializer();
        sub_23C4EDC2C(&v358, v319);
        v358 = &unk_284F1B7D8;
        v362 = a1 + 87;
        __p[0] = 0;
        v285 = sub_23C4FB49C(a1[87], *(a1 + 178), v361, __p);
        v286 = __p[0];
        if ((v285 & 1) == 0)
        {
          v286 = sub_23C4EDC90((a1 + 87), &v358, __p[0]);
          sub_23C4DDEAC((v286 + 1), &v359);
          v286[4] = v362;
          v286[5] = 0;
        }

        v17 = a1 + 1;
        v197 = v311;
        if (v361 != -8192 && v361 != -4096 && v361)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v359);
        }

        v286[5] = v248;
        v358 = 4;
        v359 = 0;
        v287 = v248;
        v360 = v248;
        if (v248 != -8192)
        {
          v287 = v248;
          if (v248 != -4096)
          {
            v287 = v248;
            if (v248)
            {
              llvm::ValueHandleBase::AddToUseList(&v358);
              v287 = v360;
            }
          }
        }

        sub_23C4EF514(a1 + 95, v287, &v358);
        v25 = v314;
        if (v360 != -8192 && v360 != -4096 && v360)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v358);
        }

        goto LABEL_344;
      }
    }

    v344[2] = sub_23C4EE264(a1, v319, 0);
    if (v25)
    {
      if (v318)
      {
        goto LABEL_242;
      }

      goto LABEL_256;
    }

    v211 = v319[16];
    if (v211 == 3)
    {
      v212 = (sub_23C4EF78C(a1[79], *(a1 + 162), v319) + 40);
LABEL_300:
      v190 = *v212;
      if (v190 != -1)
      {
        BYTE2(v340) = (*(*a1 + 256))(a1, v190) & 1;
      }

      goto LABEL_240;
    }

    if (v211 <= 0x14)
    {
      PtrToInt = llvm::ConstantExpr::getPtrToInt();
      v252 = (PtrToInt + 24);
      if (*(PtrToInt + 32) >= 0x41u)
      {
        v252 = *v252;
      }

      v212 = (a1[75] + 4 * *v252);
      goto LABEL_300;
    }

LABEL_239:
    v190 = 0xFFFFFFFFLL;
LABEL_240:
    if (v318)
    {
      if (v25)
      {
LABEL_242:
        v191 = &v335;
      }

      else
      {
        LOWORD(v358) = (*(*a1 + 240))(a1, v190);
        v191 = &v358;
      }

      v196 = sub_23C4EF7F0(a1, &v337, v191);
      goto LABEL_258;
    }

    if (v304)
    {
      v192 = v25;
    }

    else
    {
      v192 = 1;
    }

    if ((v192 & 1) == 0 && ((*(*a1 + 240))(a1, v190) & 0x10) != 0)
    {
      v193 = a1 + *(*a1 - 24);
      v194 = *(v193 + 43);
      v327 = *(v193 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v328, (v193 + 8));
      v329 = *(v193 + 26);
      v351[2] = (*(*v194 + 40))(v194, &v327, v351[2], 0);
      if (v328)
      {
        llvm::MetadataTracking::untrack();
      }
    }

LABEL_256:
    v198 = a1 + *(*a1 - 24);
    v199 = *(v198 + 43);
    v324 = *(v198 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v325, (v198 + 8));
    v326 = *(v198 + 26);
    v196 = (*(*v199 + 248))(v199, &v324, &v337);
    v195 = v325;
    if (v325)
    {
      llvm::MetadataTracking::untrack();
    }

LABEL_258:
    if (v196)
    {
      v200 = v196;
      if (v308 == 16)
      {
        v200 = v196;
        if ((v340 & 0x1000000) == 0)
        {
          v201 = a1 + *(*a1 - 24);
          v202 = *(v201 + 43);
          v321 = *(v201 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v322, (v201 + 8));
          v323 = *(v201 + 26);
          v200 = (*(*v202 + 264))(v202, &v321, v196);
          v195 = v322;
          if (v322)
          {
            llvm::MetadataTracking::untrack();
          }
        }
      }

      if (v306)
      {
        v203 = *(v302 + *(*a1 - 24));
        v204 = (*(*v203 + 520))(v203);
      }

      else
      {
        v204 = 0;
      }

      if (a3[1] == 2)
      {
        v205 = *(a1 + 15) ^ 1;
      }

      else
      {
        v205 = 0;
      }

      v206 = *a3;
      if (*a3 == 2 && ((v204 | v205) & 1) != 0)
      {
        v207 = v196;
        if (v308 == 16)
        {
          v208 = *(*a1 - 24);
          LODWORD(__p[0]) = 0;
          LOWORD(v362) = 257;
          v207 = sub_23C49B32C(v313 + v208, v196, __p, 1, &v358);
        }

        v320 = v207;
        v310 = llvm::Constant::getNullValue(*v207, v195);
        if ((*(*v207 + 2) & 0xFE) == 0x12)
        {
          v315 = **(*v207 + 2);
        }

        else
        {
          v315 = *v207;
        }

        v213 = *(*a1 - 24);
        v214 = sub_23C4EC4B4(a1, v317, 2);
        LOWORD(v362) = 257;
        v215 = sub_23C497C88((v313 + v213), **(*v214 + 16), v214, 0, &v358);
        v216 = a1 + *(*a1 - 24);
        LOWORD(v362) = 257;
        v217 = llvm::ConstantInt::get();
        v218 = sub_23C5057E8((v216 + 8), v215, v217, &v358);
        v219 = v218;
        if (v205)
        {
          v220 = v218;
          if (v350)
          {
            v221 = *(*a1 - 24);
            v222 = *v218;
            LOWORD(v362) = 257;
            v223 = sub_23C49ACF8(v313 + v221, 39, v350, v222, &v358);
            v224 = *(*a1 - 24);
            LOWORD(v362) = 257;
            v220 = sub_23C49B560(v313 + v224, v219, v223, &v358);
          }

          v225 = a1 + *(*a1 - 24);
          v226 = v347;
          LOWORD(v362) = 257;
          v227 = llvm::ConstantInt::get();
          v228 = sub_23C5057E8((v225 + 8), v226, v227, &v358);
          v307 = v220;
          v229 = *v220;
          v334 = 257;
          v305 = sub_23C49ACF8((v225 + 8), 39, v228, v229, __p);
          v230 = *(*a1 - 24);
          v231 = sub_23C4EC4B4(a1, v317, 4);
          v232 = **(*v231 + 16);
          v358 = "packedFormatAndAlpha";
          LOWORD(v362) = 259;
          v233 = sub_23C497C88((v313 + v230), v232, v231, 0, &v358);
          v234 = a1 + *(*a1 - 24);
          v235 = llvm::ConstantInt::get();
          v358 = "alpha";
          LOWORD(v362) = 259;
          v236 = sub_23C49B560((v234 + 8), v233, v235, &v358);
          if (*(v315 + 8) <= 6u)
          {
            v237 = *(*a1 - 24);
            LOWORD(v362) = 257;
            v236 = sub_23C49EF94(v313 + v237, v236, v315, &v358);
          }

          v238 = sub_23C505300((a1 + *(*a1 - 24)), v236, v315);
          if ((*(*v320 + 8) & 0xFE) == 0x12)
          {
            v239 = a1 + *(*a1 - 24);
            LOWORD(v362) = 257;
            v240 = llvm::ConstantInt::get();
            sub_23C505AA8((v239 + 8), v310, v238, v240, &v358);
          }

          v253 = *(*a1 - 24);
          LOWORD(v362) = 257;
          v254 = sub_23C497D84((v313 + v253), 35, v305, v307, &v358);
          v255 = v347;
          if ((*(*v347 + 8) & 0xFE) == 0x12)
          {
            v256 = a1 + *(*a1 - 24);
            LOWORD(v362) = 257;
            v316 = v254;
            v257 = llvm::ConstantInt::get();
            v258 = sub_23C5057E8((v256 + 8), v255, v257, &v358);
            v259 = *v219;
            v334 = 257;
            v260 = sub_23C49ACF8((v256 + 8), 39, v258, v259, __p);
            v261 = *(*a1 - 24);
            LOWORD(v362) = 257;
            v262 = sub_23C497D84((v313 + v261), 35, v260, v307, &v358);
            v334 = 257;
            sub_23C49A98C(v313 + v261, v316, v262, __p);
          }

          LOWORD(v362) = 257;
          goto LABEL_319;
        }

        if (v204)
        {
          if (*(v315 + 8) <= 6u)
          {
            v241 = a1 + *(*a1 - 24);
            v242 = *(v241 + 20);
            LOWORD(v362) = 257;
            v219 = sub_23C49ACF8((v241 + 8), 49, v218, v242, &v358);
          }

          v270 = sub_23C505300((a1 + *(*a1 - 24)), v219, v315);
          v271 = a1 + *(*a1 - 24);
          LOWORD(v362) = 257;
          v272 = llvm::ConstantInt::get();
          sub_23C505AA8((v271 + 8), v310, v270, v272, &v358);
          LOWORD(v362) = 257;
LABEL_319:
          v200 = llvm::IRBuilderBase::CreateSelect();
        }

        if (v308 == 16)
        {
          v273 = *(*a1 - 24);
          LODWORD(__p[0]) = 0;
          LOWORD(v362) = 257;
          v17 = a1 + 1;
          sub_23C49A744((v313 + v273), v196, v200, __p, 1, &v358);
        }

        else
        {
          v17 = a1 + 1;
        }
      }

      else if (v206 == 10)
      {
        v249 = a1 + *(*a1 - 24);
        LOWORD(v362) = 257;
        v250 = llvm::ConstantInt::get();
        sub_23C5057E8((v249 + 8), v196, v250, &v358);
        v17 = a1 + 1;
      }

      else
      {
        v17 = a1 + 1;
        if (v206 == 9)
        {
          v209 = a1 + *(*a1 - 24);
          LOWORD(v362) = 257;
          v210 = llvm::ConstantInt::get();
          sub_23C5057E8((v209 + 8), v196, v210, &v358);
        }
      }

      llvm::Value::replaceAllUsesWith();
    }

    llvm::Instruction::eraseFromParent(v19);
    v18 = v312;
    if (!v312)
    {
      return 1;
    }
  }

  v290 = sub_23C49F8D0(&v358, "sample");
  if (*a3 == 1)
  {
    v291 = "sample_compare";
LABEL_360:
    MEMORY[0x23EED4E90](v290, v291);
  }

  else if (*a3 == 5)
  {
    v291 = "gather_compare";
    goto LABEL_360;
  }

  std::operator+<char>();
  v292 = std::string::append(&v330, " must be known at compile time");
  v293 = v292->__r_.__value_.__r.__words[2];
  *__p = *&v292->__r_.__value_.__l.__data_;
  v333 = v293;
  v292->__r_.__value_.__l.__size_ = 0;
  v292->__r_.__value_.__r.__words[2] = 0;
  v292->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v333) >= 0)
  {
    v294 = __p;
  }

  else
  {
    v294 = __p[0];
  }

  if (SHIBYTE(v333) >= 0)
  {
    v295 = HIBYTE(v333);
  }

  else
  {
    v295 = __p[1];
  }

  std::string::append((a1 + *(*a1 - 24) + 408), v294, v295);
  if (SHIBYTE(v333) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v330.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v330.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v360) < 0)
  {
    operator delete(v358);
  }

  return 0;
}