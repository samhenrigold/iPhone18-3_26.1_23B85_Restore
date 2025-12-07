void sub_29AA61948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    sub_29A4DDB04(v10 + 8, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA6197C(uint64_t a1, const void **a2, void *a3, int a4)
{
  if (a3[1] == *a3)
  {
    return 0;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_29A0BE2C8(&v46, *a2, a2[1], (a2[1] - *a2) >> 2);
  sub_29A0A171C(a2, ((a3[1] - *a3) >> 2) * a4);
  v7 = *a3;
  v8 = a3[1] - *a3;
  if (!v8)
  {
    v12 = 0;
LABEL_46:
    a3[1] = v7;
    goto LABEL_47;
  }

  v9 = v8 >> 2;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *v7 * a4;
  v12 = 1;
  if ((v11 & 0x80000000) == 0)
  {
    v13 = v46;
    v14 = (v47 - v46) >> 2;
    if (v14 >= v11 + a4)
    {
      v15 = 0;
      v16 = *a2;
      while (1)
      {
        if (a4)
        {
          v17 = &v13[4 * v11];
          v18 = a4;
          v19 = v16;
          do
          {
            v20 = *v17;
            v17 += 4;
            *v19++ = v20;
            --v18;
          }

          while (v18);
        }

        if (++v15 == v10)
        {
          break;
        }

        v11 = v7[v15] * a4;
        if ((v11 & 0x80000000) == 0)
        {
          v16 += 4 * a4;
          if (v14 >= v11 + a4)
          {
            continue;
          }
        }

        v12 = v9 > v15;
        goto LABEL_16;
      }

      v12 = v9 > v15;
      goto LABEL_46;
    }
  }

LABEL_16:
  v21 = sub_29AABB028();
  std::to_string(&v39, v11);
  v22 = std::string::insert(&v39, 0, "preprocessVertexAttribute: Index out of bound idxInOriginalData: ");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v40, ", componentsPerVector: ");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v38, a4);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v38;
  }

  else
  {
    v26 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v41, v26, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v42, ", originalData size: ");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v37, (v47 - v46) >> 2);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v37;
  }

  else
  {
    v32 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v37.__r_.__value_.__l.__size_;
  }

  v34 = std::string::append(&v43, v32, v33);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v45 = v34->__r_.__value_.__r.__words[2];
  v44 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v21, &v44);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_47:
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v12)
  {
    return 212;
  }

  return 0;
}

void sub_29AA61C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v49 = *(v47 - 88);
  if (v49)
  {
    *(v47 - 80) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA61D64(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v4 = a4;
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  *__p = 0u;
  v82 = 0u;
  v83 = 1.0;
  v79[0] = 0;
  v79[1] = 0;
  v80 = 0;
  v74 = a4;
  sub_29A011440(&__s2, a4 + 1);
  v8 = v6 - v7;
  sub_29A0A171C(a3, (v8 >> 2));
  sub_29A0A6994(v79, (a2[1] - *a2) >> 2);
  if ((v8 >> 2) >= 1)
  {
    v9 = 0;
    v72 = 0;
    v75 = 0;
    v68 = (v8 >> 2) & 0x7FFFFFFF;
    v69 = a3;
    v70 = v4;
    do
    {
      v10 = __s2;
      if (v4)
      {
        v11 = (*a2 + 4 * v72);
        v72 += v4;
        v12 = v74;
        v13 = __s2;
        do
        {
          v14 = *v11++;
          *v13++ = v14;
          --v12;
        }

        while (v12);
      }

      v10[v74] = *(*(a1 + 56) + 4 * v9);
      v15 = v78;
      v76 = v9;
      v16 = 0;
      if (v10 != v78)
      {
        v17 = v10;
        do
        {
          v18 = *v17++;
          v16 ^= (v16 << 6) + 2654435769u + (v16 >> 2) + v18;
        }

        while (v17 != v78);
      }

      v19 = __p[1];
      if (__p[1])
      {
        v20 = vcnt_s8(__p[1]);
        v20.i16[0] = vaddlv_u8(v20);
        v21 = v20.u32[0];
        if (v20.u32[0] > 1uLL)
        {
          v22 = v16;
          if (v16 >= __p[1])
          {
            v22 = v16 % __p[1];
          }
        }

        else
        {
          v22 = (__p[1] - 1) & v16;
        }

        v23 = *(__p[0] + v22);
        if (v23)
        {
          v24 = *v23;
          if (*v23)
          {
            v73 = __p[1] - 1;
            v25 = v78 - v10;
            do
            {
              v26 = v24[1];
              if (v26 == v16)
              {
                v27 = v24[2];
                if (v24[3] - v27 == v25 && !memcmp(v27, v10, v15 - v10))
                {
                  v60 = v76;
                  *(*v69 + 4 * v76) = *(v24 + 10);
                  v4 = v70;
                  goto LABEL_108;
                }
              }

              else
              {
                if (v21 > 1)
                {
                  if (v26 >= v19)
                  {
                    v26 %= v19;
                  }
                }

                else
                {
                  v26 &= v73;
                }

                if (v26 != v22)
                {
                  break;
                }
              }

              v24 = *v24;
            }

            while (v24);
          }
        }
      }

      if (v10 == v15)
      {
        v28 = 0;
        if (!v19)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v28 = 0;
        v29 = v10;
        do
        {
          v30 = *v29++;
          v28 ^= (v28 << 6) + 2654435769u + (v28 >> 2) + v30;
        }

        while (v29 != v15);
        if (!v19)
        {
          goto LABEL_49;
        }
      }

      v31 = vcnt_s8(v19);
      v31.i16[0] = vaddlv_u8(v31);
      v32 = v31.u32[0];
      if (v31.u32[0] > 1uLL)
      {
        v16 = v28;
        if (v28 >= v19)
        {
          v16 = v28 % v19;
        }
      }

      else
      {
        v16 = v28 & (v19 - 1);
      }

      v33 = *(__p[0] + v16);
      if (v33)
      {
        v34 = *v33;
        if (*v33)
        {
          do
          {
            v35 = v34[1];
            if (v35 == v28)
            {
              v36 = v34[2];
              if (v34[3] - v36 == v15 - v10 && !memcmp(v36, v10, v15 - v10))
              {
                v4 = v70;
                v61 = v69;
                v60 = v76;
                goto LABEL_104;
              }
            }

            else
            {
              if (v32 > 1)
              {
                if (v35 >= v19)
                {
                  v35 %= v19;
                }
              }

              else
              {
                v35 &= v19 - 1;
              }

              if (v35 != v16)
              {
                break;
              }
            }

            v34 = *v34;
          }

          while (v34);
        }
      }

LABEL_49:
      v37 = operator new(0x30uLL);
      v84 = v37;
      v85 = __p;
      v86 = 0;
      *v37 = 0;
      v37[1] = v28;
      v37[3] = 0;
      v37[4] = 0;
      v37[2] = 0;
      sub_29A0BE2C8(v37 + 2, v10, v15, (v15 - v10) >> 2);
      *(v37 + 10) = 0;
      LOBYTE(v86) = 1;
      v38 = (*(&v82 + 1) + 1);
      if (v19 && (v83 * v19) >= v38)
      {
        goto LABEL_95;
      }

      v39 = (v19 & (v19 - 1)) != 0;
      if (v19 < 3)
      {
        v39 = 1;
      }

      v40 = v39 | (2 * v19);
      v41 = vcvtps_u32_f32(v38 / v83);
      if (v40 <= v41)
      {
        prime = v41;
      }

      else
      {
        prime = v40;
      }

      if (*&prime == 1)
      {
        prime = 2;
      }

      else if ((*&prime & (*&prime - 1)) != 0)
      {
        prime = std::__next_prime(*&prime);
      }

      v19 = __p[1];
      if (*&prime > __p[1])
      {
LABEL_61:
        if (*&prime >> 61)
        {
          sub_29A00C8B8();
        }

        v43 = operator new(8 * *&prime);
        v44 = __p[0];
        __p[0] = v43;
        if (v44)
        {
          operator delete(v44);
        }

        v45 = 0;
        __p[1] = prime;
        do
        {
          *(__p[0] + v45++) = 0;
        }

        while (*&prime != v45);
        v46 = v82;
        if (v82)
        {
          v47 = *(v82 + 8);
          v48 = vcnt_s8(prime);
          v48.i16[0] = vaddlv_u8(v48);
          if (v48.u32[0] > 1uLL)
          {
            if (v47 >= *&prime)
            {
              v47 %= *&prime;
            }
          }

          else
          {
            v47 &= *&prime - 1;
          }

          *(__p[0] + v47) = &v82;
          for (i = *v46; i; v47 = v53)
          {
            v53 = i[1];
            if (v48.u32[0] > 1uLL)
            {
              if (v53 >= *&prime)
              {
                v53 %= *&prime;
              }
            }

            else
            {
              v53 &= *&prime - 1;
            }

            if (v53 != v47)
            {
              v54 = __p[0];
              if (!*(__p[0] + v53))
              {
                *(__p[0] + v53) = v46;
                goto LABEL_86;
              }

              *v46 = *i;
              *i = *v54[v53];
              *v54[v53] = i;
              i = v46;
            }

            v53 = v47;
LABEL_86:
            v46 = i;
            i = *i;
          }
        }

        v19 = prime;
        goto LABEL_90;
      }

      if (*&prime < __p[1])
      {
        v49 = vcvtps_u32_f32(*(&v82 + 1) / v83);
        if (__p[1] < 3 || (v50 = vcnt_s8(__p[1]), v50.i16[0] = vaddlv_u8(v50), v50.u32[0] > 1uLL))
        {
          v49 = std::__next_prime(v49);
        }

        else
        {
          v51 = 1 << -__clz(v49 - 1);
          if (v49 >= 2)
          {
            v49 = v51;
          }
        }

        if (*&prime <= v49)
        {
          prime = v49;
        }

        if (*&prime >= v19)
        {
          v19 = __p[1];
        }

        else
        {
          if (prime)
          {
            goto LABEL_61;
          }

          v59 = __p[0];
          __p[0] = 0;
          if (v59)
          {
            operator delete(v59);
          }

          v19 = 0;
          __p[1] = 0;
        }
      }

LABEL_90:
      if ((v19 & (v19 - 1)) != 0)
      {
        if (v28 >= v19)
        {
          v16 = v28 % v19;
        }

        else
        {
          v16 = v28;
        }
      }

      else
      {
        v16 = (v19 - 1) & v28;
      }

LABEL_95:
      v55 = __p[0];
      v56 = *(__p[0] + v16);
      v34 = v84;
      if (v56)
      {
        *v84 = *v56;
        *v56 = v34;
        v4 = v70;
        v61 = v69;
        v60 = v76;
      }

      else
      {
        *v84 = v82;
        *&v82 = v34;
        v55[v16] = &v82;
        v34 = v84;
        v4 = v70;
        v61 = v69;
        v60 = v76;
        if (*v84)
        {
          v57 = *(*v84 + 8);
          if ((v19 & (v19 - 1)) != 0)
          {
            if (v57 >= v19)
            {
              v57 %= v19;
            }
          }

          else
          {
            v57 &= v19 - 1;
          }

          *(__p[0] + v57) = v84;
          v34 = v84;
        }
      }

      ++*(&v82 + 1);
LABEL_104:
      *(v34 + 10) = v75;
      *(*v61 + 4 * v60) = v75;
      if (v4)
      {
        v58 = 0;
        do
        {
          sub_29A00D250(v79, (__s2 + v58));
          v58 += 4;
        }

        while (4 * v74 != v58);
      }

      ++v75;
LABEL_108:
      v9 = v60 + 1;
    }

    while (v9 != v68);
  }

  v62 = *a2;
  v63 = *v79;
  *v79 = *a2;
  *a2 = v63;
  v64 = v80;
  v80 = a2[2];
  a2[2] = v64;
  if (!__s2)
  {
    v65 = v62;
    if (!v62)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v78 = __s2;
  operator delete(__s2);
  v65 = v79[0];
  if (v79[0])
  {
LABEL_121:
    v79[1] = v65;
    operator delete(v65);
  }

LABEL_122:
  sub_29A103F38(__p);
  return 0;
}

void sub_29AA624A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A103F38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA62520(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char *a5, __n128 a6)
{
  v11 = *a5;
  *(a1 + 2) = *a5;
  v12 = a5[1];
  *(a1 + 3) = v12;
  if (v12 == 1)
  {
    if ((v11 & 1) != 0 || sub_29AA5FE18(a1))
    {
      v13 = sub_29AABB028();
      sub_29A008E78(&v155, "encode: when preserving flags, cannot require index unification.");
      sub_29AA5B750(v13, &v155);
      if (SHIBYTE(v156) < 0)
      {
        operator delete(v155.n128_u64[0]);
      }

      return 11;
    }

    v14 = operator new(0xB8uLL);
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    *v14 = &unk_2A2070630;
    *(v14 + 24) = 0u;
    v15 = (v14 + 24);
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 104) = 0u;
    *(v14 + 120) = 0u;
    *(v14 + 136) = 0u;
    *(v14 + 152) = 0u;
    *(v14 + 168) = 0u;
    sub_29A008E78(&v155, "_orderingIndices");
    if (v14[47] < 0)
    {
      operator delete(*v15);
    }

    *v15 = v155;
    *(v14 + 5) = v156;
    sub_29A0A171C(v14 + 6, (*(a1 + 88) - *(a1 + 80)) >> 2);
    v17 = *(v14 + 6);
    v16 = *(v14 + 7);
    v18 = v16 - v17;
    if (v16 != v17)
    {
      v19 = 0;
      v20 = v18 >> 2;
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = vdupq_n_s64(v20 - 1);
      v22 = xmmword_29B433E10;
      v23 = xmmword_29B430070;
      v24 = vdupq_n_s64(4uLL);
      v25 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v26 = (v17 + 8);
      do
      {
        v27 = vmovn_s64(vcgeq_u64(v21, v23));
        if (vuzp1_s16(v27, *v21.i8).u8[0])
        {
          *(v26 - 2) = v19;
        }

        if (vuzp1_s16(v27, *&v21).i8[2])
        {
          *(v26 - 1) = v19 + 1;
        }

        if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v22))).i32[1])
        {
          *v26 = v19 + 2;
          v26[1] = v19 + 3;
        }

        v19 += 4;
        v22 = vaddq_s64(v22, v24);
        v23 = vaddq_s64(v23, v24);
        v26 += 4;
      }

      while (v25 != v19);
    }

    *(v14 + 10) = *(v14 + 9);
    v14[96] = 0;
    MEMORY[0x29C2C1A60](v14 + 136, "int");
    v14[160] = 4;
    *(v14 + 164) = 0x100000001;
    v14[172] = 0;
    if (v14[47] < 0)
    {
      sub_29A008D14(&__dst, *(v14 + 3), *(v14 + 4));
    }

    else
    {
      __dst = *v15;
      v167 = *(v14 + 5);
    }

    v164 = v14 + 24;
    v165 = v14;
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
    sub_29AA63B20(a1, &__dst, &v164, 1);
    if (v165)
    {
      sub_29A014BEC(v165);
    }

    if (SHIBYTE(v167) < 0)
    {
      operator delete(__dst);
    }

    sub_29A014BEC(v14);
  }

  sub_29A116F64(a3);
  v163 = 0;
  if ((*(a1 + 416))(&v163))
  {
    v28 = sub_29AABB028();
    sub_29A008E78(&v155, "encode: GCLBufferListNew");
    sub_29AA5B750(v28, &v155);
    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155.n128_u64[0]);
    }

LABEL_39:
    (*(a1 + 424))(v163);
    return 110;
  }

  v29 = (*(a1 + 88) - *(a1 + 80)) >> 2;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  if ((*(a1 + 360))(v163, "vtxs", 260, v29 / 3, 3, &v162) || ((*(a1 + 464))(v162, *(a1 + 80)), (*(a1 + 360))(v163, "topo", 260, (*(a1 + 40) - *(a1 + 32)) >> 2, 1, &v161)) || ((*(a1 + 464))(v161, *(a1 + 32)), (*(a1 + 360))(v163, "idxs", 260, (*(a1 + 64) - *(a1 + 56)) >> 2, 1, &v160)))
  {
    v30 = sub_29AABB028();
    sub_29A008E78(&v155, "encode: GCLBufferListAppendNew for points");
    goto LABEL_37;
  }

  (*(a1 + 464))(v160, *(a1 + 56));
  v32 = *(a1 + 480);
  v33 = v162;
  v34 = (*(a1 + 352))(v160);
  v32(v33, "idxdby", v34);
  v35 = *(a1 + 152) - *(a1 + 144);
  if (v35)
  {
    if ((*(a1 + 360))(v163, "fgrp", 260, v35 >> 2, 1, &v159))
    {
      v30 = sub_29AABB028();
      sub_29A008E78(&v155, "encode: GCLBufferListAppendNew for facegroup");
LABEL_37:
      sub_29AA5B750(v30, &v155);
      if (SHIBYTE(v156) < 0)
      {
        operator delete(v155.n128_u64[0]);
      }

      goto LABEL_39;
    }

    (*(a1 + 464))(v159, *(a1 + 144));
    (*(a1 + 480))(v159, "attrScopeM", 2);
  }

  v36 = *(a1 + 216);
  v131 = (a1 + 224);
  if (v36 != (a1 + 224))
  {
    do
    {
      sub_29A151A98(&v155, v36 + 2);
      v154 = 0;
      v38 = v157;
      v37 = v158;
      if (v158)
      {
        atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = *(v38 + 136);
      if (SHIBYTE(v156) < 0)
      {
        sub_29A008D14(&v152, v155.n128_u64[0], v155.n128_u64[1]);
      }

      else
      {
        v152 = v155;
        v153 = v156;
      }

      if (v39 > 3)
      {
        if (v39 != 5)
        {
          if (v39 != 4)
          {
LABEL_62:
            v42 = sub_29AABB028();
            sub_29A008E78(&__p, "encode: unsupported attribute scope");
            sub_29AA5B750(v42, &__p);
            if (v151 < 0)
            {
              operator delete(__p);
            }

            (*(a1 + 424))(v163);
            v43 = 0;
            v6 = 15;
            goto LABEL_166;
          }

          LODWORD(__p) = 1;
          v40 = sub_29AA5E118(a1, &__p);
          goto LABEL_59;
        }

        LODWORD(__p) = 1281;
        sub_29AA5E118(a1, &__p);
        if (*(v38 + 56) == *(v38 + 48))
        {
          sub_29AA61D64(a1, (v38 + 24), (v38 + 48), *(v38 + 140));
        }
      }

      else
      {
        if (v39 != 2)
        {
          if (v39 != 3)
          {
            goto LABEL_62;
          }

          LODWORD(__p) = 1281;
          v40 = sub_29AA5E118(a1, &__p);
LABEL_59:
          if (*(v38 + 56) != *(v38 + 48))
          {
            sub_29AA6197C(v40, (v38 + 24), (v38 + 48), *(v38 + 140));
          }

          v41 = 0;
          goto LABEL_122;
        }

        v44 = *(v157 + 140);
        LODWORD(__p) = 2;
        sub_29AA5E118(a1, &__p);
        if (*(v157 + 56) == *(v157 + 48))
        {
          *(v157 + 149) = 0;
          sub_29A011440(&__p, ((*(a1 + 64) - *(a1 + 56)) >> 2) * v44);
          v58 = *(a1 + 32);
          v59 = *(a1 + 40);
          v60 = v59 - v58;
          v62 = *(v157 + 24);
          v61 = (v157 + 24);
          v63 = *(v157 + 32) - v62;
          if (v59 - v58 == v63)
          {
            if (v59 != v58)
            {
              v64 = 0;
              v65 = 0;
              v66 = v60 >> 2;
              v67 = __p;
              if ((v60 >> 2) <= 1)
              {
                v66 = 1;
              }

              do
              {
                v68 = *(v58 + 4 * v64);
                if (v68 >= 1)
                {
                  v69 = &v67[4 * v65];
                  v65 += v68;
                  v70 = *(v62 + 4 * v64);
                  do
                  {
                    *v69 = v70;
                    v69 += 4;
                    --v68;
                  }

                  while (v68);
                }

                ++v64;
              }

              while (v64 != v66);
            }

            if (v61 != &__p)
            {
              sub_29A36CF34(v61, __p, v150, (v150 - __p) >> 2);
            }

            sub_29AA61D64(a1, (v38 + 24), (v38 + 48), *(v38 + 140));
          }

          else
          {
            v93 = sub_29AABB028();
            std::operator+<char>();
            v94 = std::string::append(&v142, "( ");
            v95 = *&v94->__r_.__value_.__l.__data_;
            v143.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
            *&v143.__r_.__value_.__l.__data_ = v95;
            v94->__r_.__value_.__l.__size_ = 0;
            v94->__r_.__value_.__r.__words[2] = 0;
            v94->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v141, (*(a1 + 40) - *(a1 + 32)) >> 2);
            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v96 = &v141;
            }

            else
            {
              v96 = v141.__r_.__value_.__r.__words[0];
            }

            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v141.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v141.__r_.__value_.__l.__size_;
            }

            v98 = std::string::append(&v143, v96, size);
            v99 = *&v98->__r_.__value_.__l.__data_;
            v144.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
            *&v144.__r_.__value_.__l.__data_ = v99;
            v98->__r_.__value_.__l.__size_ = 0;
            v98->__r_.__value_.__r.__words[2] = 0;
            v98->__r_.__value_.__r.__words[0] = 0;
            v100 = std::string::append(&v144, " vs ");
            v101 = *&v100->__r_.__value_.__l.__data_;
            v145.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
            *&v145.__r_.__value_.__l.__data_ = v101;
            v100->__r_.__value_.__l.__size_ = 0;
            v100->__r_.__value_.__r.__words[2] = 0;
            v100->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v140, (*(v157 + 32) - *(v157 + 24)) >> 2);
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = &v140;
            }

            else
            {
              v102 = v140.__r_.__value_.__r.__words[0];
            }

            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v103 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v103 = v140.__r_.__value_.__l.__size_;
            }

            v104 = std::string::append(&v145, v102, v103);
            v105 = *&v104->__r_.__value_.__l.__data_;
            v146.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
            *&v146.__r_.__value_.__l.__data_ = v105;
            v104->__r_.__value_.__l.__size_ = 0;
            v104->__r_.__value_.__r.__words[2] = 0;
            v104->__r_.__value_.__r.__words[0] = 0;
            v106 = std::string::append(&v146, ")");
            v107 = *&v106->__r_.__value_.__l.__data_;
            v148 = v106->__r_.__value_.__r.__words[2];
            *v147 = v107;
            v106->__r_.__value_.__l.__size_ = 0;
            v106->__r_.__value_.__r.__words[2] = 0;
            v106->__r_.__value_.__r.__words[0] = 0;
            sub_29AA5B750(v93, v147);
            if (SHIBYTE(v148) < 0)
            {
              operator delete(v147[0]);
            }

            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v145.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v144.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

            (*(a1 + 424))(v163);
            v6 = 210;
          }

          if (__p)
          {
            v150 = __p;
            operator delete(__p);
          }

          if (v60 != v63)
          {
LABEL_165:
            v43 = 0;
            goto LABEL_166;
          }
        }

        else
        {
          *(v157 + 149) = 1;
          sub_29A011440(&__p, (*(a1 + 64) - *(a1 + 56)) >> 2);
          v45 = *(a1 + 32);
          v46 = *(a1 + 40);
          v47 = v46 - v45;
          v49 = *(v157 + 48);
          v48 = (v157 + 48);
          v50 = *(v157 + 56) - v49;
          if (v46 - v45 == v50)
          {
            if (v46 != v45)
            {
              v51 = 0;
              v52 = 0;
              v53 = v47 >> 2;
              v54 = __p;
              if ((v47 >> 2) <= 1)
              {
                v53 = 1;
              }

              do
              {
                v55 = *(v45 + 4 * v51);
                if (v55 >= 1)
                {
                  v56 = &v54[4 * v52];
                  v52 += v55;
                  v57 = *(v49 + 4 * v51);
                  do
                  {
                    *v56 = v57;
                    v56 += 4;
                    --v55;
                  }

                  while (v55);
                }

                ++v51;
              }

              while (v51 != v53);
            }

            if (v48 != &__p)
            {
              sub_29A36CF34(v48, __p, v150, (v150 - __p) >> 2);
            }
          }

          else
          {
            v71 = sub_29AABB028();
            std::operator+<char>();
            v72 = std::string::append(&v142, "( ");
            v73 = *&v72->__r_.__value_.__l.__data_;
            v143.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
            *&v143.__r_.__value_.__l.__data_ = v73;
            v72->__r_.__value_.__l.__size_ = 0;
            v72->__r_.__value_.__r.__words[2] = 0;
            v72->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v141, (*(a1 + 40) - *(a1 + 32)) >> 2);
            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v74 = &v141;
            }

            else
            {
              v74 = v141.__r_.__value_.__r.__words[0];
            }

            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v75 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v75 = v141.__r_.__value_.__l.__size_;
            }

            v76 = std::string::append(&v143, v74, v75);
            v77 = *&v76->__r_.__value_.__l.__data_;
            v144.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
            *&v144.__r_.__value_.__l.__data_ = v77;
            v76->__r_.__value_.__l.__size_ = 0;
            v76->__r_.__value_.__r.__words[2] = 0;
            v76->__r_.__value_.__r.__words[0] = 0;
            v78 = std::string::append(&v144, " vs ");
            v79 = *&v78->__r_.__value_.__l.__data_;
            v145.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
            *&v145.__r_.__value_.__l.__data_ = v79;
            v78->__r_.__value_.__l.__size_ = 0;
            v78->__r_.__value_.__r.__words[2] = 0;
            v78->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v140, (*(v157 + 56) - *(v157 + 48)) >> 2);
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v80 = &v140;
            }

            else
            {
              v80 = v140.__r_.__value_.__r.__words[0];
            }

            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v81 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v81 = v140.__r_.__value_.__l.__size_;
            }

            v82 = std::string::append(&v145, v80, v81);
            v83 = *&v82->__r_.__value_.__l.__data_;
            v146.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
            *&v146.__r_.__value_.__l.__data_ = v83;
            v82->__r_.__value_.__l.__size_ = 0;
            v82->__r_.__value_.__r.__words[2] = 0;
            v82->__r_.__value_.__r.__words[0] = 0;
            v84 = std::string::append(&v146, ")");
            v85 = *&v84->__r_.__value_.__l.__data_;
            v148 = v84->__r_.__value_.__r.__words[2];
            *v147 = v85;
            v84->__r_.__value_.__l.__size_ = 0;
            v84->__r_.__value_.__r.__words[2] = 0;
            v84->__r_.__value_.__r.__words[0] = 0;
            sub_29AA5B750(v71, v147);
            if (SHIBYTE(v148) < 0)
            {
              operator delete(v147[0]);
            }

            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v145.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v144.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

            (*(a1 + 424))(v163);
            v6 = 211;
          }

          if (__p)
          {
            v150 = __p;
            operator delete(__p);
          }

          if (v47 != v50)
          {
            goto LABEL_165;
          }
        }
      }

      v41 = 1;
LABEL_122:
      if ((*(a1 + 360))(v163, "attr", 260, ((*(v38 + 32) - *(v38 + 24)) >> 2) / *(v38 + 140), *(v38 + 140), &v154))
      {
        v86 = sub_29AABB028();
        std::operator+<char>();
        sub_29AA5B750(v86, &__p);
        if (v151 < 0)
        {
          operator delete(__p);
        }

LABEL_125:
        (*(a1 + 424))(v163);
        v43 = 0;
        v6 = 110;
        goto LABEL_166;
      }

      (*(a1 + 480))(v154, "bitdepth", *(v38 + 104));
      (*(a1 + 480))(v154, "attrScopeM", v41);
      (*(a1 + 464))(v154, *(v38 + 24));
      v87 = (*(a1 + 352))(v154);
      *(v157 + 152) = v87;
      v88 = *(v38 + 56) - *(v38 + 48);
      if (v88)
      {
        v147[0] = 0;
        if ((*(a1 + 360))(v163, "idxs", 260, v88 >> 2, 1, v147))
        {
          v89 = sub_29AABB028();
          std::operator+<char>();
          sub_29AA5B750(v89, &__p);
          if (v151 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_125;
        }

        (*(a1 + 464))(v147[0], *(v38 + 48));
        v90 = *(a1 + 480);
        v91 = v154;
        v92 = (*(a1 + 352))(v147[0]);
        v90(v91, "idxdby", v92);
      }

      v43 = 1;
LABEL_166:
      if (SHIBYTE(v153) < 0)
      {
        operator delete(v152.n128_u64[0]);
      }

      if (v37)
      {
        sub_29A014BEC(v37);
      }

      if (v158)
      {
        sub_29A014BEC(v158);
      }

      if (SHIBYTE(v156) < 0)
      {
        operator delete(v155.n128_u64[0]);
      }

      if (!v43)
      {
        return v6;
      }

      v108 = *(v36 + 1);
      if (v108)
      {
        do
        {
          v109 = v108;
          v108 = *v108;
        }

        while (v108);
      }

      else
      {
        do
        {
          v109 = *(v36 + 2);
          v122 = *v109 == v36;
          v36 = v109;
        }

        while (!v122);
      }

      v36 = v109;
    }

    while (v109 != v131);
  }

  v147[0] = 0;
  if ((*(a1 + 528))(v147))
  {
    v110 = sub_29AABB028();
    sub_29A008E78(&v155, "encode: GCLOptionsNew");
LABEL_192:
    sub_29AA5B750(v110, &v155);
    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155.n128_u64[0]);
    }

    (*(a1 + 536))(v147[0]);
    (*(a1 + 424))(v163);
    return 110;
  }

  if ((*(a1 + 544))(v147[0], "compression-level", a4))
  {
    v110 = sub_29AABB028();
    sub_29A008E78(&v155, "encode: GCLOptionsSet compression level");
    goto LABEL_192;
  }

  if (*(a1 + 4) == 1 && (*(a1 + 544))(v147[0], "genreorder", 1))
  {
    v110 = sub_29AABB028();
    sub_29A008E78(&v155, "encode: GCLOptionsSet reordering info");
    goto LABEL_192;
  }

  v111 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    v111 = *v111;
  }

  if ((*(a1 + 552))(v147[0], "codec", v111))
  {
    v110 = sub_29AABB028();
    sub_29A008E78(&v155, "encode: GCLOptionsSet codec");
    goto LABEL_192;
  }

  __p = sub_29AA63BC8;
  v150 = a2;
  v112 = (*(a1 + 520))(v163, &__p, v147[0]);
  (*(a1 + 536))(v147[0]);
  if (v112)
  {
    v113 = sub_29AABB028();
    sub_29A008E78(&v155, "encode: GCLEncodeMeshFromBufferList");
    sub_29AA5B750(v113, &v155);
    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155.n128_u64[0]);
    }

    (*(a1 + 424))(v163);
    return 110;
  }

  if (*(a1 + 4) == 1)
  {
    v115 = v162;
    v114 = v163;
    sub_29A008E78(v138, "points");
    sub_29AA63BDC(a1, v114, v115, v138, "reorderdby");
    if (v139 < 0)
    {
      operator delete(v138[0]);
    }

    v116 = v163;
    v117 = v160;
    sub_29A008E78(v136, "faceVertexCounts");
    sub_29AA63BDC(a1, v116, v117, v136, "reorderdby");
    if (v137 < 0)
    {
      operator delete(v136[0]);
    }

    v118 = v163;
    v119 = v160;
    sub_29A008E78(v134, "faceVertexIndices");
    sub_29AA63BDC(a1, v118, v119, v134, "permutedby");
    if (v135 < 0)
    {
      operator delete(v134[0]);
    }

    v120 = *(a1 + 216);
    if (v120 != v131)
    {
      do
      {
        sub_29A151A98(&v155, v120 + 2);
        v121 = *(v157 + 136);
        v122 = v121 == 5 || v121 == 2;
        if (v122)
        {
          v123 = v163;
          v124 = (*(a1 + 400))(v163, *(v157 + 152));
          if (SHIBYTE(v156) < 0)
          {
            sub_29A008D14(v132, v155.n128_u64[0], v155.n128_u64[1]);
          }

          else
          {
            *v132 = v155;
            v133 = v156;
          }

          sub_29AA63BDC(a1, v123, v124, v132, "reorderdby");
          if (SHIBYTE(v133) < 0)
          {
            operator delete(v132[0]);
          }
        }

        sub_29A14DC3C(&v155);
        v125 = *(v120 + 1);
        if (v125)
        {
          do
          {
            v126 = v125;
            v125 = *v125;
          }

          while (v125);
        }

        else
        {
          do
          {
            v126 = *(v120 + 2);
            v122 = *v126 == v120;
            v120 = v126;
          }

          while (!v122);
        }

        v120 = v126;
      }

      while (v126 != v131);
    }
  }

  sub_29A008E78(&v155, "points");
  sub_29AA63D10(a3, &v155);
  if (SHIBYTE(v156) < 0)
  {
    operator delete(v155.n128_u64[0]);
  }

  sub_29A008E78(&v155, "faceVertexCounts");
  sub_29AA63D10(a3, &v155);
  if (SHIBYTE(v156) < 0)
  {
    operator delete(v155.n128_u64[0]);
  }

  sub_29A008E78(&v155, "faceVertexIndices");
  v127 = sub_29AA63D10(a3, &v155);
  if (SHIBYTE(v156) < 0)
  {
    operator delete(v155.n128_u64[0]);
  }

  v128 = *(a1 + 216);
  if (v128 != v131)
  {
    do
    {
      sub_29A151A98(&v155, v128 + 2);
      sub_29AA5E3E0(a3, &v155);
      sub_29AA5E3E0((a1 + 240), &v155);
      if (a1 + 264 != sub_29AA7D66C(*(a1 + 272), a1 + 264, &v155))
      {
        sub_29A911628(":indices", &v155, &v152);
        sub_29AA63D10(a3, &v152);
        if (SHIBYTE(v153) < 0)
        {
          operator delete(v152.n128_u64[0]);
        }
      }

      if (sub_29A0F2648((v157 + 112), "half") || sub_29A0F2648((v157 + 112), "point3h") || sub_29A0F2648((v157 + 112), "normal3h") || sub_29A0F2648((v157 + 112), "vector3h") || sub_29A0F2648((v157 + 112), "color3h") || sub_29A0F2648((v157 + 112), "color4h") || sub_29A0F2648((v157 + 112), "texCoord2h") || sub_29A0F2648((v157 + 112), "texCoord3h"))
      {
        v152.n128_u32[0] = 2;
        sub_29AA5E118(a1, &v152);
      }

      sub_29A14DC3C(&v155);
      v129 = *(v128 + 1);
      if (v129)
      {
        do
        {
          v130 = v129;
          v129 = *v129;
        }

        while (v129);
      }

      else
      {
        do
        {
          v130 = *(v128 + 2);
          v122 = *v130 == v128;
          v128 = v130;
        }

        while (!v122);
      }

      v128 = v130;
    }

    while (v130 != v131);
  }

  (*(a1 + 424))(v163, v127);
  return 0;
}

void sub_29AA638AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA63B20(uint64_t a1, const void **a2, uint64_t *a3, char a4)
{
  if ((a4 & 1) == 0 && a1 + 224 != sub_29A01BCCC(a1 + 216, a2))
  {
    return 0;
  }

  v13 = a2;
  v8 = sub_29AA7B448((a1 + 216), a2, &unk_29B4D6118, &v13, &v12);
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v8[8];
  v8[7] = v10;
  v8[8] = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return 1;
}

uint64_t sub_29AA63BDC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v18 = 0;
  (*(a1 + 440))(a3, a5, &v18);
  v8 = (*(a1 + 400))(a2, v18);
  v9 = (*(a1 + 432))();
  v20 = a4;
  v10 = sub_29AA7E0B4((a1 + 288), a4, &unk_29B4D6118, &v20, &v19);
  sub_29A0A171C(v10 + 7, v9);
  v11 = (*(a1 + 328))(v8);
  v12 = (*(a1 + 496))(v8);
  v13 = (*(a1 + 336))(v8);
  if (v9)
  {
    v14 = 0;
    v15 = 4 * (v12 / v13);
    do
    {
      v16 = *v11;
      v20 = a4;
      *(sub_29AA7E0B4((a1 + 288), a4, &unk_29B4D6118, &v20, &v19)[7] + 4 * v14++) = v16;
      v11 = (v11 + v15);
    }

    while (v9 != v14);
  }

  return 1;
}

__n128 sub_29AA63D10(__n128 **a1, __n128 *a2)
{
  v4 = operator new(0x28uLL);
  result = *a2;
  v4[1] = *a2;
  v4[2].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v6 = *a1;
  v4->n128_u64[0] = *a1;
  v4->n128_u64[1] = a1;
  *(v6 + 8) = v4;
  *a1 = v4;
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_29AA63D70(uint64_t a1, uint64_t a2)
{
  v188[0] = 0;
  v188[1] = 0;
  v191[0] = 0;
  v191[1] = 0;
  v189 = 0;
  v190 = v191;
  v192[1] = 0;
  v193 = 0;
  v192[0] = 0;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v4 = sub_29AAB9854(a2, v188);
  if (v4)
  {
    goto LABEL_17;
  }

  v5 = *(a2 + 176);
  if (!v5)
  {
    v8 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: empty buffer");
    sub_29AA5B750(v8, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_16;
  }

  v6 = *(a2 + 184) & ~(*(a2 + 184) >> 63);
  v187 = 0;
  if ((*(a1 + 560))(v5, v6, &v187))
  {
    v7 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: unable to get GCLSource from data");
    sub_29AA5B750(v7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(a1 + 576))(v187);
    goto LABEL_16;
  }

  (*(a1 + 568))(v187, "verify-integrity", 1);
  (*(a1 + 568))(v187, "user-allocates", 0);
  v186 = 0;
  if ((*(a1 + 384))(v187, &v186))
  {
    v9 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: unable to get GCLBufferList from GCLSource");
LABEL_13:
    sub_29AA5B750(v9, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(a1 + 576))(v187);
    (*(a1 + 424))(v186);
    goto LABEL_16;
  }

  if ((*(a1 + 512))(v187, v186))
  {
    v9 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: unable to decode mesh data from GCLSource");
    goto LABEL_13;
  }

  v11.n128_f64[0] = (*(a1 + 576))(v187);
  *(a1 + 104) = sub_29AA65224(v192, v11);
  *(a1 + 108) = v194;
  if ((a1 + 112) != &v195)
  {
    sub_29A36CF34((a1 + 112), v195, *(&v195 + 1), (*(&v195 + 1) - v195) >> 2);
  }

  v185 = 0;
  v12 = (*(a1 + 392))(v186, "vtxs");
  if ((*(a1 + 440))(v12, "bitdepth", &v185))
  {
    v13 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: Unable to read points quantization parameters");
    sub_29AA5B750(v13, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_31:
    (*(a1 + 424))(v186);
LABEL_16:
    v4 = 100;
    goto LABEL_17;
  }

  *(a1 + 136) = v185;
  v14 = (*(a1 + 432))(v12);
  v15 = (*(a1 + 504))(v12);
  v163 = (a1 + 80);
  sub_29A0A171C((a1 + 80), v15 * v14);
  v16 = *(a1 + 80);
  v17 = (*(a1 + 328))(v12);
  v18 = (*(a1 + 432))(v12);
  v19 = (*(a1 + 504))(v12);
  memcpy(v16, v17, 4 * v18 * v19);
  v184 = 0;
  if ((*(a1 + 440))(v12, "idxdby", &v184))
  {
    v20 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: Unable to retrieve face vertex indices");
    sub_29AA5B750(v20, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_31;
  }

  v21 = (*(a1 + 392))(v186, "topo");
  v22 = (*(a1 + 432))();
  v23 = (*(a1 + 504))(v21);
  sub_29A0A171C((a1 + 32), v23 * v22);
  v24 = *(a1 + 32);
  v25 = (*(a1 + 328))(v21);
  v26 = (*(a1 + 432))(v21);
  v27 = (*(a1 + 504))(v21);
  memcpy(v24, v25, 4 * v26 * v27);
  v28 = (*(a1 + 400))(v186, v184);
  v29 = (*(a1 + 432))();
  v30 = (*(a1 + 504))(v28);
  sub_29A0A171C((a1 + 56), v30 * v29);
  v31 = *(a1 + 56);
  v32 = (*(a1 + 328))(v28);
  v33 = (*(a1 + 432))(v28);
  v34 = (*(a1 + 504))(v28);
  memcpy(v31, v32, 4 * v33 * v34);
  if ((a1 + 192) != (&v199 + 8))
  {
    sub_29A095E3C(a1 + 192, *(&v199 + 1), v200, 0xAAAAAAAAAAAAAAABLL * ((v200 - *(&v199 + 1)) >> 3));
  }

  if ((a1 + 168) != &v198)
  {
    sub_29AA7D708((a1 + 168), v198, *(&v198 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v198 + 1) - v198) >> 3));
  }

  v35 = (*(a1 + 392))(v186, "fgrp");
  v4 = v35;
  if (v35)
  {
    v36 = (*(a1 + 432))(v35);
    sub_29A0A171C((a1 + 144), v36);
    v37 = *(a1 + 144);
    v38 = (*(a1 + 328))(v4);
    v39 = (*(a1 + 432))(v4);
    memcpy(v37, v38, 4 * v39);
  }

  v40 = v190;
  v41 = (*(a1 + 368))(v186);
  v42 = (*(a1 + 376))(v186);
  v164 = v42;
  while (v41 != v42)
  {
    v43 = (*(a1 + 344))(v41);
    v44 = (*(a1 + 456))();
    sub_29A008E78(&v181, v44);
    if (SHIBYTE(v183) < 0)
    {
      if (v182 != 4)
      {
        goto LABEL_146;
      }

      v45 = v181;
    }

    else
    {
      if (HIBYTE(v183) != 4)
      {
        goto LABEL_146;
      }

      v45 = &v181;
    }

    if (*v45 != 1920234593)
    {
LABEL_146:
      v133 = 1;
      goto LABEL_147;
    }

    v46 = operator new(0xB8uLL);
    *(v46 + 1) = 0;
    *(v46 + 2) = 0;
    *v46 = &unk_2A2070630;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 0u;
    *(v46 + 56) = 0u;
    *(v46 + 72) = 0u;
    *(v46 + 88) = 0u;
    *(v46 + 104) = 0u;
    *(v46 + 120) = 0u;
    *(v46 + 136) = 0u;
    *(v46 + 152) = 0u;
    *(v46 + 168) = 0u;
    sub_29AA7AC00(&__p, (v40 + 7));
    v165 = (v46 + 24);
    std::string::operator=(v46 + 1, &__p);
    std::string::operator=((v46 + 136), &v173);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v171, v174);
    v46[160] = sub_29AA5DDD4(&v171, v47);
    if ((v171 & 7) != 0)
    {
      atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(v46 + 42) = v174[6];
    v46[172] = v175;
    v46[96] = sub_29AA65224(v176, v48);
    *(v46 + 25) = v177;
    sub_29A36CF34(v46 + 13, v178, v179, (v179 - v178) >> 2);
    v49 = (*(a1 + 504))(v43);
    *(v46 + 41) = v49;
    if (v49)
    {
      (*(a1 + 440))(v43, "bitdepth", &v185);
      *(v46 + 32) = v185;
      v50 = (*(a1 + 432))(v43);
      v51 = (*(a1 + 504))(v43);
      sub_29A0A171C(v46 + 6, v51 * v50);
      v52 = *(v46 + 6);
      v53 = (*(a1 + 328))(v43);
      v54 = (*(a1 + 432))(v43);
      v55 = (*(a1 + 504))(v43);
      memcpy(v52, v53, 4 * v54 * v55);
      if ((*(a1 + 440))(v43, "idxdby", &v185))
      {
        sub_29A0A171C(v46 + 9, 0);
      }

      else
      {
        v58 = (*(a1 + 400))(v186, v185);
        v59 = (*(a1 + 432))();
        v60 = (*(a1 + 504))(v58);
        sub_29A0A171C(v46 + 9, v60 * v59);
        v61 = *(v46 + 9);
        v62 = (*(a1 + 328))(v58);
        v63 = (*(a1 + 432))(v58);
        v64 = (*(a1 + 504))(v58);
        memcpy(v61, v62, 4 * v63 * v64);
      }

      v65 = v46[160];
      if ((v65 - 3) <= 1)
      {
        if (v180 != 1)
        {
          goto LABEL_138;
        }

        v170 = 0uLL;
        v169 = &v170;
        v66 = *(v46 + 41);
        if (*(v46 + 7) == *(v46 + 6))
        {
          LODWORD(v71) = 0;
        }

        else
        {
          v67 = 0;
          do
          {
            sub_29A011440(&v166, v66);
            if (*(v46 + 41) >= 1)
            {
              v68 = 0;
              v69 = v166;
              v70 = *(v46 + 6) + 4 * v67;
              do
              {
                v69[v68] = *(v70 + 4 * v68);
                ++v68;
              }

              while (v68 < *(v46 + 41));
            }

            sub_29AA7DBE4(&v169, &v166, &v166);
            if (v166)
            {
              v167 = v166;
              operator delete(v166);
            }

            v66 = *(v46 + 41);
            v67 += v66;
            v71 = (*(v46 + 7) - *(v46 + 6)) >> 2;
          }

          while (v71 > v67);
        }

        sub_29A0A171C(v46 + 9, v71 / v66);
        v72 = *(v46 + 6);
        if (*(v46 + 7) != v72)
        {
          v73 = 0;
          v74 = *(v46 + 41);
          do
          {
            sub_29A011440(&v166, v74);
            if (*(v46 + 41) >= 1)
            {
              v75 = 0;
              v76 = v166;
              v77 = *(v46 + 6) + 4 * v73;
              do
              {
                v76[v75] = *(v77 + 4 * v75);
                ++v75;
              }

              while (v75 < *(v46 + 41));
            }

            v78 = sub_29AA7DE78(&v169, &v166);
            v79 = v169;
            if (v78 == v169)
            {
              v80 = 0;
            }

            else
            {
              v80 = 0;
              do
              {
                v81 = v79[1];
                if (v81)
                {
                  do
                  {
                    v82 = v81;
                    v81 = *v81;
                  }

                  while (v81);
                }

                else
                {
                  do
                  {
                    v82 = v79[2];
                    v83 = *v82 == v79;
                    v79 = v82;
                  }

                  while (!v83);
                }

                ++v80;
                v79 = v82;
              }

              while (v82 != v78);
            }

            *(*(v46 + 9) + 4 * (v73 / *(v46 + 41))) = v80;
            if (v166)
            {
              v167 = v166;
              operator delete(v166);
            }

            v74 = *(v46 + 41);
            v73 += v74;
            v72 = *(v46 + 6);
          }

          while (v73 < ((*(v46 + 7) - v72) >> 2));
        }

        *(v46 + 7) = v72;
        v84 = v169;
        if (v169 != &v170)
        {
          do
          {
            v166 = 0;
            v167 = 0;
            v168 = 0;
            sub_29A0BE2C8(&v166, *(v84 + 4), *(v84 + 5), (*(v84 + 5) - *(v84 + 4)) >> 2);
            v86 = v166;
            v85 = v167;
            if (v166 != v167)
            {
              do
              {
                sub_29A00D250(v46 + 6, v86++);
              }

              while (v86 != v85);
              v86 = v166;
            }

            if (v86)
            {
              v167 = v86;
              operator delete(v86);
            }

            v87 = *(v84 + 1);
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
                v88 = *(v84 + 2);
                v83 = *v88 == v84;
                v84 = v88;
              }

              while (!v83);
            }

            v84 = v88;
          }

          while (v88 != &v170);
        }

        sub_29AA7DB80(&v169, v170);
        v65 = v46[160];
      }

      if (v65 == 5)
      {
        if (v180)
        {
          goto LABEL_138;
        }

        sub_29A011440(&v169, ((*(v46 + 10) - *(v46 + 9)) >> 2) * *(v46 + 41));
        v89 = *(v46 + 9);
        v90 = *(v46 + 10);
        v91 = v169;
        v92 = v90 - v89;
        if (v90 != v89)
        {
          v93 = 0;
          v94 = 0;
          v95 = v92 >> 2;
          if (v95 <= 1)
          {
            v95 = 1;
          }

          LODWORD(v96) = *(v46 + 41);
          do
          {
            if (v96 >= 1)
            {
              v97 = 0;
              v98 = *(v46 + 6);
              do
              {
                v91[v94 + v97] = *(v98 + 4 * *(v89 + 4 * v93) * v96 + 4 * v97);
                ++v97;
                v96 = *(v46 + 41);
              }

              while (v97 < v96);
            }

            ++v93;
            v94 += v96;
          }

          while (v93 != v95);
        }

        *(v46 + 10) = v89;
        v99 = *(v46 + 6);
        *(v46 + 6) = v91;
        v100 = *(v46 + 8);
        v101 = v170;
        v169 = v99;
        *(&v170 + 1) = v100;
        *(v46 + 56) = v101;
        if (v99)
        {
          *&v170 = v99;
          operator delete(v99);
        }

        v65 = v46[160];
      }

      if (v65 != 2)
      {
        goto LABEL_138;
      }

      if (v180 == 1)
      {
        sub_29A011440(&v169, (*(a1 + 40) - *(a1 + 32)) >> 2);
        v102 = *(a1 + 32);
        v103 = *(a1 + 40);
        v104 = v103 - v102;
        v42 = v164;
        if (v103 == v102)
        {
LABEL_125:
          sub_29A36CF34(v46 + 9, v169, v170, (v170 - v169) >> 2);
          goto LABEL_136;
        }

        v105 = 0;
        v106 = 0;
        v107 = v104 >> 2;
        v108 = v169;
        if (v107 <= 1)
        {
          v107 = 1;
        }

        while (1)
        {
          v109 = *(v102 + 4 * v105);
          if (v109 <= 0)
          {
            v136 = sub_29AABB028();
            sub_29A008E78(&v166, "decode: Unable to decode uniform attribute (faceVertexCount value <= 0)");
            sub_29AA5B750(v136, &v166);
            if (SHIBYTE(v168) < 0)
            {
              operator delete(v166);
            }

            goto LABEL_166;
          }

          v110 = *(v46 + 9);
          v111 = *(v110 + 4 * v106);
          v112 = v109 - 1;
          if (v109 != 1)
          {
            break;
          }

LABEL_124:
          v106 += v109;
          v108[v105++] = v111;
          if (v105 == v107)
          {
            goto LABEL_125;
          }
        }

        v113 = (v110 + 4 * v106 + 4);
        while (1)
        {
          v114 = *v113++;
          if (v111 != v114)
          {
            break;
          }

          if (!--v112)
          {
            goto LABEL_124;
          }
        }

        v134 = sub_29AABB028();
        sub_29A008E78(&v166, "decode: Uniform values differ for corners of a face");
        sub_29AA5B750(v134, &v166);
        if (SHIBYTE(v168) < 0)
        {
          operator delete(v166);
        }
      }

      else
      {
        sub_29A011440(&v169, (*(a1 + 40) - *(a1 + 32)) >> 2);
        v115 = *(a1 + 32);
        v116 = *(a1 + 40);
        v117 = v116 - v115;
        v42 = v164;
        if (v116 == v115)
        {
LABEL_135:
          sub_29A36CF34(v46 + 6, v169, v170, (v170 - v169) >> 2);
          *(v46 + 10) = *(v46 + 9);
LABEL_136:
          if (v169)
          {
            *&v170 = v169;
            operator delete(v169);
          }

LABEL_138:
          v169 = v46 + 24;
          v129 = sub_29AA7B448((a1 + 216), v165, &unk_29B4D6118, &v169, &v166);
          atomic_fetch_add_explicit(v46 + 1, 1uLL, memory_order_relaxed);
          v130 = v129[8];
          v129[7] = v165;
          v129[8] = v46;
          if (v130)
          {
            sub_29A014BEC(v130);
          }

          v131 = v40[1];
          v42 = v164;
          if (v131)
          {
            do
            {
              v40 = v131;
              v131 = *v131;
            }

            while (v131);
          }

          else
          {
            do
            {
              v132 = v40;
              v40 = v40[2];
            }

            while (*v40 != v132);
          }

          v57 = 1;
          goto LABEL_145;
        }

        v118 = 0;
        v119 = 0;
        v120 = v117 >> 2;
        v121 = v169;
        if (v120 <= 1)
        {
          v120 = 1;
        }

        while (1)
        {
          v122 = *(v115 + 4 * v118);
          if (v122 <= 0)
          {
            v137 = sub_29AABB028();
            sub_29A008E78(&v166, "decode: Unable to decode uniform attribute (faceVertexCount value <= 0)");
            sub_29AA5B750(v137, &v166);
            if (SHIBYTE(v168) < 0)
            {
              operator delete(v166);
            }

LABEL_166:
            (*(a1 + 424))(v186);
            v4 = 210;
            v42 = v164;
            goto LABEL_158;
          }

          v123 = *(v46 + 9);
          v124 = *(v46 + 6);
          v125 = *(v124 + 4 * *(v123 + 4 * v119));
          v126 = v122 - 1;
          if (v122 != 1)
          {
            break;
          }

LABEL_134:
          v119 += v122;
          v121[v118++] = v125;
          if (v118 == v120)
          {
            goto LABEL_135;
          }
        }

        v127 = (v123 + 4 * v119 + 4);
        while (1)
        {
          v128 = *v127++;
          if (v125 != *(v124 + 4 * v128))
          {
            break;
          }

          if (!--v126)
          {
            goto LABEL_134;
          }
        }

        v135 = sub_29AABB028();
        sub_29A008E78(&v166, "decode: Uniform values differ for corners of a face");
        sub_29AA5B750(v135, &v166);
        if (SHIBYTE(v168) < 0)
        {
          operator delete(v166);
        }
      }

      (*(a1 + 424))(v186);
      v4 = 216;
LABEL_158:
      if (v169)
      {
        *&v170 = v169;
        operator delete(v169);
      }

      v57 = 0;
    }

    else
    {
      v56 = sub_29AABB028();
      sub_29A008E78(&v169, "decode: components per vector cannot be 0");
      sub_29AA5B750(v56, &v169);
      if (SHIBYTE(v170) < 0)
      {
        operator delete(v169);
      }

      (*(a1 + 424))(v186);
      v57 = 0;
      v4 = 150;
      v42 = v164;
    }

LABEL_145:
    sub_29AA654EC(&__p);
    sub_29A014BEC(v46);
    if (v57)
    {
      goto LABEL_146;
    }

    v133 = 0;
LABEL_147:
    if (SHIBYTE(v183) < 0)
    {
      operator delete(v181);
    }

    if (!v133)
    {
      goto LABEL_17;
    }

    v41 = (*(a1 + 408))(v41);
  }

  *a1 = 1;
  sub_29A008E78(&__p, "_orderingIndices");
  v138 = sub_29A01BCCC(a1 + 216, &__p.__r_.__value_.__l.__data_);
  v139 = (a1 + 224);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v139 == v138)
  {
    goto LABEL_216;
  }

  memset(&__p, 0, sizeof(__p));
  sub_29A008E78(&v181, "_orderingIndices");
  v140 = sub_29AA65560(a1 + 216, &v181);
  if (&__p != &(*v140)[1])
  {
    v140 = sub_29A36CF34(&__p.__r_.__value_.__l.__data_, (*v140)[1].__r_.__value_.__l.__data_, (*v140)[1].__r_.__value_.__l.__size_, ((*v140)[1].__r_.__value_.__l.__size_ - (*v140)[1].__r_.__value_.__r.__words[0]) >> 2);
  }

  if (SHIBYTE(v183) < 0)
  {
    operator delete(v181);
  }

  v181 = 0;
  v182 = 0;
  v183 = 0;
  if (&v181 != v163)
  {
    v140 = sub_29A36CF34(&v181, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 2);
  }

  v142 = sub_29AA655A0(v141, v140, &v181, v163, 3u, &__p);
  if (v142)
  {
    (*(a1 + 424))(v186);
    v143 = 0;
    v4 = v142;
  }

  else
  {
    v144 = *(a1 + 56);
    v145 = *(a1 + 64) - v144;
    if (v145)
    {
      v146 = v145 >> 2;
      v147 = __p.__r_.__value_.__r.__words[0];
      v148 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
      if (v146 <= 1)
      {
        v146 = 1;
      }

      while (1)
      {
        v149 = *v144;
        if ((v149 & 0x80000000) != 0 || v148 <= v149)
        {
          break;
        }

        *v144++ = *(v147 + 4 * v149);
        if (!--v146)
        {
          goto LABEL_184;
        }
      }

      v162 = sub_29AABB028();
      sub_29A008E78(&v169, "decode: Cannot reorder faceVertexIndices, out of range");
      sub_29AA5B750(v162, &v169);
      if (SHIBYTE(v170) < 0)
      {
        operator delete(v169);
      }

      (*(a1 + 424))(v186);
      v143 = 0;
      v4 = 12;
    }

    else
    {
LABEL_184:
      v150 = *(a1 + 216);
      if (v150 == v139)
      {
LABEL_196:
        v169 = 0;
        v170 = 0uLL;
        sub_29A0BE2C8(&v169, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
        v157 = v169;
        if (v170 != v169)
        {
          v158 = (v170 - v169) >> 2;
          v159 = __p.__r_.__value_.__r.__words[0];
          if (v158 <= 1)
          {
            v158 = 1;
          }

          do
          {
            v160 = *v157++;
            *(v159 + 4 * v160) = v160;
            --v158;
          }

          while (v158);
        }

        sub_29A008E78(&v166, "_orderingIndices");
        v201 = &v166;
        v161 = (*(sub_29AA7CEF0((a1 + 216), &v166, &unk_29B4D6118, &v201) + 7) + 24);
        if (v161 != &__p)
        {
          sub_29A36CF34(&v161->__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
        }

        if (SHIBYTE(v168) < 0)
        {
          operator delete(v166);
        }

        if (v169)
        {
          *&v170 = v169;
          operator delete(v169);
        }

        v143 = 1;
      }

      else
      {
        while (1)
        {
          v151 = sub_29AA5E35C(v150 + 4, "_orderingIndices");
          if (v151)
          {
            v153 = v150[7];
            if (*(v153 + 136) == 4)
            {
              if (&v181 != (v153 + 24))
              {
                v151 = sub_29A36CF34(&v181, *(v153 + 24), *(v153 + 32), (*(v153 + 32) - *(v153 + 24)) >> 2);
                v153 = v150[7];
              }

              v154 = sub_29AA655A0(v152, v151, &v181, (v153 + 24), *(v153 + 140), &__p);
              if (v154)
              {
                break;
              }
            }
          }

          v155 = v150[1];
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
              v156 = v150[2];
              v83 = *v156 == v150;
              v150 = v156;
            }

            while (!v83);
          }

          v150 = v156;
          if (v156 == v139)
          {
            goto LABEL_196;
          }
        }

        (*(a1 + 424))(v186);
        v143 = 0;
        v4 = v154;
      }
    }
  }

  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v143)
  {
LABEL_216:
    (*(a1 + 424))(v186);
    v4 = 0;
  }

LABEL_17:
  __p.__r_.__value_.__r.__words[0] = &v199 + 8;
  sub_29A012C90(&__p);
  __p.__r_.__value_.__r.__words[0] = &v198;
  sub_29AA7B3C4(&__p);
  if (*(&v196 + 1))
  {
    *&v197 = *(&v196 + 1);
    operator delete(*(&v196 + 1));
  }

  if (v195)
  {
    *(&v195 + 1) = v195;
    operator delete(v195);
  }

  if (SHIBYTE(v193) < 0)
  {
    operator delete(v192[0]);
  }

  sub_29AA7AD68(&v190, v191[0]);
  if (SHIBYTE(v189) < 0)
  {
    operator delete(v188[0]);
  }

  return v4;
}

void sub_29AA65048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  sub_29AA658F4(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA65224(uint64_t *a1, __n128 a2)
{
  v2 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 7 && **a1 == 1718185589 && *(*a1 + 3) == 1836216166)
    {
      return 1;
    }

    if (a1[1] == 17)
    {
      v6 = **a1 == 0x2079726174696E75 && *(*a1 + 8) == 0x6F74636576206433;
      if (v6 && *(*a1 + 16) == 114)
      {
        return 2;
      }
    }

    v8 = a1[1];
    if (v8 == 23)
    {
LABEL_44:
      if (**a1 == 0x2079726174696E75 && *(*a1 + 8) == 0x6576697469736F70 && *(*a1 + 15) == 0x7468676965772065)
      {
        return 4;
      }

      goto LABEL_61;
    }

    if (v8 != 9)
    {
LABEL_58:
      if (v8 != 4)
      {
        goto LABEL_61;
      }

      v3 = *a1;
      goto LABEL_60;
    }

    v3 = *a1;
LABEL_38:
    v12 = *v3;
    v13 = *(v3 + 8);
    if (v12 == 0x677220726F6C6F63 && v13 == 98)
    {
      return 3;
    }

    v8 = a1[1];
    if ((v2 & 0x80) != 0 && v8 == 23)
    {
      goto LABEL_44;
    }

    if ((v2 & 0x80) == 0)
    {
      v3 = a1;
      if (v2 != 4)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v3 = a1;
  if (*(a1 + 23) > 8u)
  {
    if (v2 != 9)
    {
      if (v2 != 17 || (*a1 == 0x2079726174696E75 ? (v9 = a1[1] == 0x6F74636576206433) : (v9 = 0), v9 ? (v10 = *(a1 + 16) == 114) : (v10 = 0), !v10))
      {
LABEL_61:
        v17 = sub_29AABB028();
        std::operator+<char>();
        v18 = std::string::append(&v20, ", using default NONE");
        v19 = *&v18->__r_.__value_.__l.__data_;
        v22 = v18->__r_.__value_.__r.__words[2];
        *__p = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5D514(v17, __p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      return 2;
    }

    goto LABEL_38;
  }

  if (v2 != 4)
  {
    if (v2 != 7)
    {
      goto LABEL_61;
    }

    if (*a1 != 1718185589 || *(a1 + 3) != 1836216166)
    {
      goto LABEL_61;
    }

    return 1;
  }

LABEL_60:
  if (*v3 != 1701736302)
  {
    goto LABEL_61;
  }

  return 0;
}

void sub_29AA654D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA654EC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA65560(uint64_t a1, const void **a2)
{
  v2 = *sub_29A00B0D0(a1, &v4, a2);
  if (!v2)
  {
    sub_29A0F26E4("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t sub_29AA655A0(__n128 a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int a5, uint64_t *a6)
{
  if (a5 < 1 || (v9 = (a3[1] - *a3) >> 2, v9 % a5) || v9 / a5 != (a6[1] - *a6) >> 2)
  {
    v24 = sub_29AABB028();
    std::to_string(&v41, a5);
    v25 = std::string::insert(&v41, 0, "reorderData: Size issue, componentsPerVector: ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v42, ", inputData size: ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, (a3[1] - *a3) >> 2);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v40;
    }

    else
    {
      v29 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v43, v29, size);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v44, ", orderInfo size: ");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v39, (a6[1] - *a6) >> 2);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v39;
    }

    else
    {
      v35 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = v39.__r_.__value_.__l.__size_;
    }

    v37 = std::string::append(&v45, v35, v36);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v47 = v37->__r_.__value_.__r.__words[2];
    v46 = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v24, &v46);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
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

    return 12;
  }

  else
  {
    sub_29A0A171C(a4, v9);
    v11 = *a3;
    v12 = a3[1];
    v13 = v12 - *a3;
    if (v12 != *a3)
    {
      v14 = 0;
      v15 = v13 >> 2;
      v16 = *a6;
      v17 = *a4;
      do
      {
        v18 = (v17 + 4 * (*(v16 + 4 * (v14 / a5)) * a5));
        v19 = (v11 + 4 * v14);
        v20 = v14 << 32;
        v21 = a5;
        do
        {
          v22 = *v19++;
          *v18++ = v22;
          v20 += 0x100000000;
          v14 = (v14 + 1);
          --v21;
        }

        while (v21);
      }

      while (v15 > v20 >> 32);
    }

    return 0;
  }
}

void sub_29AA65848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA658F4(uint64_t a1)
{
  v5 = (a1 + 152);
  sub_29A012C90(&v5);
  v5 = (a1 + 128);
  sub_29AA7B3C4(&v5);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_29AA7AD68(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA6598C(uint64_t a1, uint64_t a2)
{
  sub_29AA7AE5C(v31);
  memset(&v21, 0, sizeof(v21));
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v25 = 0;
  __p = 0uLL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  std::string::operator=(&v21, (a1 + 8));
  sub_29A008E78(__str, off_29F295D08[*(a1 + 104)]);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  __p = *__str;
  v25 = *&__str[16];
  v26 = *(a1 + 108);
  if (&v27 != (a1 + 112))
  {
    sub_29A36CF34(&v27, *(a1 + 112), *(a1 + 120), (*(a1 + 120) - *(a1 + 112)) >> 2);
  }

  if (v30 != (a1 + 168))
  {
    sub_29AA7D708(v30, *(a1 + 168), *(a1 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 3));
  }

  if ((&v30[1] + 8) != (a1 + 192))
  {
    sub_29A095E3C(&v30[1] + 8, *(a1 + 192), *(a1 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 200) - *(a1 + 192)) >> 3));
  }

  for (i = *(a1 + 248); i != a1 + 240; i = *(i + 8))
  {
    if (*(i + 39) < 0)
    {
      sub_29A008D14(__dst, *(i + 16), *(i + 24));
    }

    else
    {
      *__dst = *(i + 16);
      v20 = *(i + 32);
    }

    memset(&v13, 0, sizeof(v13));
    v16 = 0;
    v17 = 0;
    v15 = 0;
    memset(__str, 0, sizeof(__str));
    v9 = 0u;
    memset(&v10, 0, sizeof(v10));
    v33[0] = __dst;
    v5 = sub_29AA7B448((a1 + 216), __dst, &unk_29B4D6118, v33, &v32);
    sub_29AAB7170(v5[7], __str);
    v33[0] = __str;
    v6 = sub_29AA7DF08(&v22, __str, &unk_29B4D6118, v33, &v32);
    std::string::operator=((v6 + 7), __str);
    std::string::operator=((v6 + 10), &__str[24]);
    std::string::operator=((v6 + 13), &v10);
    *(v6 + 32) = v11;
    *(v6 + 132) = v12;
    std::string::operator=((v6 + 17), &v13);
    *(v6 + 40) = v14;
    if (v6 + 7 != __str)
    {
      sub_29A36CF34(v6 + 21, v15, v16, (v16 - v15) >> 2);
    }

    *(v6 + 192) = v18;
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(*&__str[24]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  sub_29AAB9950(v31, &v21);
  sub_29AAB8A10(v31, a2);
  *__str = &v30[1] + 8;
  sub_29A012C90(__str);
  *__str = v30;
  sub_29AA7B3C4(__str);
  if (*(&v28 + 1))
  {
    *&v29 = *(&v28 + 1);
    operator delete(*(&v28 + 1));
  }

  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  sub_29AA7AD68(&v22, v23[0]);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  sub_29AA7AF60(v31);
  return 0;
}

void sub_29AA65D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_29AA658F4(&a35);
  sub_29AA7AF60(&a57);
  _Unwind_Resume(a1);
}

void sub_29AA65D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = sub_29A580660(v5, (a4 + 8), (a4 + 16));
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v4);
}

void sub_29AA67518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = *(v49 - 176);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v49 - 176) = &a49;
  sub_29A8440C8((v49 - 176));
  sub_29AA7B2E8((v49 - 248));
  sub_29A57F434(v49 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA679C4(uint64_t a1, unsigned __int8 **a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::JsParseString(a2, 0, a3, &v88);
  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v88))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v88);
    sub_29A1519B8(&v86, JsObject);
    sub_29A008E78(__p, "v");
    v7 = sub_29A01BCCC(&v86, __p);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (v87 == v7)
    {
      v12 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse subset JSON");
      sub_29AA5B750(v12, __p);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_110;
    }

    sub_29A008E78(__p, "v");
    __dst.__r_.__value_.__r.__words[0] = __p;
    v8 = sub_29AA7ED84(&v86, __p, &unk_29B4D6118, &__dst, &v80);
    v9 = v8[8];
    v84 = v8[7];
    v85 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v84))
    {
      v13 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse subset JSON");
      sub_29AA5B750(v13, __p);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_108;
    }

    String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v84);
    if (*(String + 23) < 0)
    {
      sub_29A008D14(&__dst, *String, *(String + 1));
    }

    else
    {
      v11 = *String;
      __dst.__r_.__value_.__r.__words[2] = *(String + 2);
      *&__dst.__r_.__value_.__l.__data_ = v11;
    }

    v80 = 0;
    v81 = 0;
    v82 = 0;
    sub_29A9EE25C(__p, &__dst, 24);
    v72[0] = 0;
    v72[1] = 0;
    v73 = 0;
    v14 = sub_29A0DE07C(__p, v72, 0x2Eu);
    if ((*(v14 + *(*v14 - 24) + 32) & 5) == 0)
    {
      sub_29A070BA0(&v80);
    }

    if (v81 - v80 == 72)
    {
      v15 = std::stoi(v80, 0, 10);
      v16 = std::stoi(v80 + 1, 0, 10);
      *(a1 + 736) = (v16 << 8) | (std::stoi(v80 + 2, 0, 10) << 16) | v15;
      sub_29A008E78(&v69, "ss");
      v17 = sub_29A01BCCC(&v86, &v69);
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v69);
      }

      if (v87 != v17)
      {
        sub_29A008E78(&v69, "ss");
        v64 = &v69;
        v18 = sub_29AA7ED84(&v86, &v69, &unk_29B4D6118, &v64, &v57);
        v19 = v18[8];
        v67 = v18[7];
        v68 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(v69);
        }

        if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v67))
        {
          v44 = sub_29AABB028();
          sub_29A008E78(&v69, "Cannot parse subset JSON");
          sub_29AA5B750(v44, &v69);
          if (SHIBYTE(v71) < 0)
          {
            operator delete(v69);
          }

          v5 = 213;
          goto LABEL_100;
        }

        JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v67);
        v69 = 0;
        v70 = 0;
        v71 = 0;
        sub_29A151C2C(&v69, *JsArray, JsArray[1], (JsArray[1] - *JsArray) >> 4);
        v21 = v69;
        v22 = v70;
        if (v69 == v70)
        {
LABEL_44:
          sub_29A008E78(&v64, "fg2ss");
          v26 = sub_29A01BCCC(&v86, &v64);
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          if (v87 != v26)
          {
            sub_29A008E78(&v64, "fg2ss");
            v57 = &v64;
            v27 = sub_29AA7ED84(&v86, &v64, &unk_29B4D6118, &v57, &v54);
            v28 = v27[8];
            v62 = v27[7];
            v63 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v66) < 0)
            {
              operator delete(v64);
            }

            if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v62))
            {
              v29 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v62);
              v64 = 0;
              v65 = 0;
              v66 = 0;
              sub_29A151C2C(&v64, *v29, v29[1], (v29[1] - *v29) >> 4);
              v30 = v64;
              v31 = v65;
              if (v64 == v65)
              {
LABEL_76:
                v5 = 0;
              }

              else
              {
                while (1)
                {
                  v32 = *(v30 + 1);
                  v60 = *v30;
                  v61 = v32;
                  if (v32)
                  {
                    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v60))
                  {
                    break;
                  }

                  v57 = &v57;
                  v58 = &v57;
                  v59 = 0;
                  v33 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v60);
                  v54 = 0;
                  v55 = 0;
                  v56 = 0;
                  sub_29A151C2C(&v54, *v33, v33[1], (v33[1] - *v33) >> 4);
                  v35 = v54;
                  v34 = v55;
                  while (v35 != v34)
                  {
                    v36 = *(v35 + 8);
                    v52 = *v35;
                    v53 = v36;
                    if (v36)
                    {
                      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    IsInt = pxrInternal__aapl__pxrReserved__::JsValue::IsInt(&v52);
                    if (IsInt)
                    {
                      Int = pxrInternal__aapl__pxrReserved__::JsValue::GetInt(&v52);
                      v39 = operator new(0x18uLL);
                      v39[4] = Int;
                      v40 = v57;
                      *v39 = v57;
                      *(v39 + 1) = &v57;
                      v40[1] = v39;
                      v57 = v39;
                      ++v59;
                    }

                    else
                    {
                      v41 = sub_29AABB028();
                      sub_29A008E78(v50, "Cannot parse subset JSON");
                      sub_29AA5B750(v41, v50);
                      if (v51 < 0)
                      {
                        operator delete(v50[0]);
                      }
                    }

                    if (v53)
                    {
                      sub_29A014BEC(v53);
                    }

                    if (!IsInt)
                    {
                      v42 = 0;
                      goto LABEL_72;
                    }

                    v35 += 16;
                  }

                  if (v59)
                  {
                    sub_29AA5E490(a1 + 168, &v57);
                  }

                  v42 = 1;
LABEL_72:
                  v50[0] = &v54;
                  sub_29A0176E4(v50);
                  sub_29A0EB800(&v57);
                  if (v61)
                  {
                    sub_29A014BEC(v61);
                  }

                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_95;
                  }

                  v30 += 16;
                  if (v30 == v31)
                  {
                    goto LABEL_76;
                  }
                }

                v47 = sub_29AABB028();
                sub_29A008E78(&v57, "Cannot parse subset JSON");
                sub_29AA5B750(v47, &v57);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v57);
                }

                if (v61)
                {
                  sub_29A014BEC(v61);
                }

LABEL_95:
                v5 = 213;
              }

              v57 = &v64;
              sub_29A0176E4(&v57);
            }

            else
            {
              v46 = sub_29AABB028();
              sub_29A008E78(&v64, "Cannot parse subset JSON");
              sub_29AA5B750(v46, &v64);
              if (SHIBYTE(v66) < 0)
              {
                operator delete(v64);
              }

              v5 = 213;
            }

            if (v63)
            {
              sub_29A014BEC(v63);
            }

            goto LABEL_99;
          }

          v45 = sub_29AABB028();
          sub_29A008E78(&v64, "Cannot parse subset JSON");
          sub_29AA5B750(v45, &v64);
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }
        }

        else
        {
          while (1)
          {
            v23 = *(v21 + 1);
            v57 = *v21;
            v58 = v23;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            IsString = pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v57);
            if (IsString)
            {
              pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v57);
              sub_29A070BA0(a1 + 192);
            }

            v25 = sub_29AABB028();
            sub_29A008E78(&v64, "Cannot parse subset JSON");
            sub_29AA5B750(v25, &v64);
            if (SHIBYTE(v66) < 0)
            {
              operator delete(v64);
            }

            if (v58)
            {
              sub_29A014BEC(v58);
            }

            if (!IsString)
            {
              break;
            }

            v21 += 16;
            if (v21 == v22)
            {
              goto LABEL_44;
            }
          }
        }

        v5 = 213;
LABEL_99:
        v64 = &v69;
        sub_29A0176E4(&v64);
LABEL_100:
        if (v68)
        {
          sub_29A014BEC(v68);
        }

LABEL_102:
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
        }

        __p[0] = *MEMORY[0x29EDC9528];
        v48 = *(MEMORY[0x29EDC9528] + 72);
        *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
        v75 = v48;
        v76 = MEMORY[0x29EDC9570] + 16;
        if (v78 < 0)
        {
          operator delete(v77[7].__locale_);
        }

        v76 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v77);
        std::iostream::~basic_iostream();
        MEMORY[0x29C2C4390](&v79);
        __p[0] = &v80;
        sub_29A012C90(__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

LABEL_108:
        if (v85)
        {
          sub_29A014BEC(v85);
        }

LABEL_110:
        sub_29A09932C(&v86, v87[0]);
        goto LABEL_111;
      }

      v43 = sub_29AABB028();
      sub_29A008E78(&v69, "Cannot parse subset JSON");
    }

    else
    {
      v43 = sub_29AABB028();
      sub_29A008E78(&v69, "Cannot parse subset JSON");
    }

    sub_29AA5B750(v43, &v69);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v69);
    }

    v5 = 213;
    goto LABEL_102;
  }

  v4 = sub_29AABB028();
  sub_29A008E78(__p, "Cannot parse subset JSON");
  sub_29AA5B750(v4, __p);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 213;
LABEL_111:
  if (v89)
  {
    sub_29A014BEC(v89);
  }

  return v5;
}

void sub_29AA68334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, void **a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  a17 = &a24;
  sub_29A0176E4(&a17);
  if (a23)
  {
    sub_29A014BEC(a23);
  }

  a24 = &a32;
  sub_29A0176E4(&a24);
  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a44);
  a44 = (v49 - 200);
  sub_29A012C90(&a44);
  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  v51 = *(v49 - 136);
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  sub_29A09932C(v49 - 128, *(v49 - 120));
  v52 = *(v49 - 96);
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA68524(uint64_t a1)
{
  *a1 = 514;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken((a1 + 8), "");
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((a1 + 96));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken((a1 + 104), "");
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 1;
  *(a1 + 140) = 0;
  return a1;
}

uint64_t sub_29AA685E0(unsigned __int16 *a1)
{
  v96[4] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F20))
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v13)
    {
      v13 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(__p, "BOOL");
    v57 = *(v13 + 56);
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v14)
    {
      v14 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v58, "uchar");
    v58[3] = *(v14 + 57);
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v15)
    {
      v15 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v59, "int");
    v59[3] = *(v15 + 58);
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v16)
    {
      v16 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v60, "uint");
    v60[3] = *(v16 + 60);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v17)
    {
      v17 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v61, "half");
    v61[3] = *(v17 + 63);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v18)
    {
      v18 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v62, "float");
    v62[3] = *(v18 + 64);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v19)
    {
      v19 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v63, "double");
    v63[3] = *(v19 + 65);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v20)
    {
      v20 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v64, "int2");
    v64[3] = *(v20 + 70);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v21)
    {
      v21 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v65, "int3");
    v65[3] = *(v21 + 71);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v22)
    {
      v22 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v66, "int4");
    v66[3] = *(v22 + 72);
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v23)
    {
      v23 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v67, "half2");
    v67[3] = *(v23 + 73);
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v24)
    {
      v24 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v68, "half3");
    v68[3] = *(v24 + 74);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v25)
    {
      v25 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v69, "half4");
    v69[3] = *(v25 + 75);
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v26)
    {
      v26 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v70, "float2");
    v70[3] = *(v26 + 76);
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v27)
    {
      v27 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v71, "float3");
    v71[3] = *(v27 + 77);
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v28)
    {
      v28 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v72, "float4");
    v72[3] = *(v28 + 78);
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v29)
    {
      v29 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v73, "double2");
    v73[3] = *(v29 + 79);
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v30)
    {
      v30 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v74, "double3");
    v74[3] = *(v30 + 80);
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v31)
    {
      v31 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v75, "double4");
    v75[3] = *(v31 + 81);
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v32)
    {
      v32 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v76, "point3f");
    v76[3] = *(v32 + 83);
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v33)
    {
      v33 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v77, "point3d");
    v77[3] = *(v33 + 84);
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v34)
    {
      v34 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v78, "point3h");
    v78[3] = *(v34 + 82);
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v35)
    {
      v35 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v79, "normal3f");
    v79[3] = *(v35 + 89);
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v36)
    {
      v36 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v80, "normal3d");
    v80[3] = *(v36 + 90);
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v37)
    {
      v37 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v81, "normal3h");
    v81[3] = *(v37 + 88);
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v38)
    {
      v38 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v82, "vector3f");
    v82[3] = *(v38 + 86);
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v39)
    {
      v39 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v83, "vector3d");
    v83[3] = *(v39 + 87);
    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v40)
    {
      v40 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v84, "vector3h");
    v84[3] = *(v40 + 85);
    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v41)
    {
      v41 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v85, "color3f");
    v85[3] = *(v41 + 92);
    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v42)
    {
      v42 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v86, "color3d");
    v86[3] = *(v42 + 93);
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v43)
    {
      v43 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v87, "color3h");
    v87[3] = *(v43 + 91);
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v44)
    {
      v44 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v88, "color4f");
    v88[3] = *(v44 + 95);
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v45)
    {
      v45 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v89, "color4d");
    v89[3] = *(v45 + 96);
    v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v46)
    {
      v46 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v90, "color4h");
    v90[3] = *(v46 + 94);
    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v47)
    {
      v47 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v91, "texCoord2f");
    v91[3] = *(v47 + 105);
    v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v48)
    {
      v48 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v92, "texCoord2d");
    v92[3] = *(v48 + 106);
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v49)
    {
      v49 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v93, "texCoord2h");
    v93[3] = *(v49 + 104);
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v50)
    {
      v50 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v94, "texCoord3f");
    v94[3] = *(v50 + 108);
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v51)
    {
      v51 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v95, "texCoord3d");
    v95[3] = *(v51 + 109);
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v52)
    {
      v52 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v96, "texCoord3h");
    v96[3] = *(v52 + 107);
    sub_29AA7B110(&qword_2A14F8F08, __p, 40);
    v53 = 160;
    do
    {
      if (*(&__p[v53 - 1] - 1) < 0)
      {
        operator delete(__p[v53 - 4]);
      }

      v53 -= 4;
    }

    while (v53 * 8);
    __cxa_atexit(sub_29AA7B0E4, &qword_2A14F8F08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F20);
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) != 7)
    {
      v2 = a1;
      if (*(a1 + 23) != 10)
      {
LABEL_25:
        v10 = sub_29A01BCCC(&qword_2A14F8F08, a1);
        if (v10 != &unk_2A14F8F10)
        {
          return *(v10 + 56);
        }

        v11 = sub_29AABB028();
        std::operator+<char>();
        sub_29AA5B750(v11, __p);
        if (v56 < 0)
        {
          operator delete(__p[0]);
        }

        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v54);
        return v54;
      }

      goto LABEL_13;
    }

    if (*a1 != 1702258279 || *(a1 + 3) != 1714643813)
    {
      goto LABEL_25;
    }

LABEL_30:
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v12)
    {
      v12 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    return *(v12 + 77);
  }

  if (*(a1 + 1) == 7 && **a1 == 1702258279 && *(*a1 + 3) == 1714643813)
  {
    goto LABEL_30;
  }

  if (*(a1 + 1) != 10)
  {
    goto LABEL_25;
  }

  v2 = *a1;
LABEL_13:
  v4 = *v2;
  v5 = v2[4];
  if (v4 != 0x64726F6F63786574 || v5 != 26162)
  {
    goto LABEL_25;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v7)
  {
    v7 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v7 + 105);
}

void sub_29AA691A8(_Unwind_Exception *a1)
{
  v3 = (v1 + 1271);
  v4 = -1280;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A14F8F20);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_29AA69220(uint64_t *a1, uint64_t a2)
{
  result = sub_29AA7E240(a1, 0, 0, a2);
  v4 = *a1;
  *result = *a1;
  result[1] = a1;
  *(v4 + 8) = result;
  *a1 = result;
  ++a1[2];
  return result;
}

void sub_29AA6926C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  while (1)
  {
    v3 = *(a2 + 23);
    if ((v3 & 0x8000000000000000) != 0)
    {
      v3 = *(a2 + 8);
      if (v3 <= 1)
      {
        return;
      }
    }

    else if (v3 <= 1)
    {
      return;
    }

    std::string::basic_string(&v14, a2, v3 - 2, 2uLL, __p);
    sub_29A008E78(__p, "[]");
    v4 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v6 = v13;
    v7 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v6 = __p[1];
    }

    if (size != v6)
    {
      v10 = 0;
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(__p[0]);
      v4 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      goto LABEL_24;
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = memcmp(v8, v9, size) == 0;
    if (v7 < 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v4 < 0)
    {
      break;
    }

    if (!v10)
    {
      return;
    }

LABEL_28:
    v11 = *(a2 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    std::string::basic_string(&v14, a2, 0, v11 - 2, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v14;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (v10)
  {
    goto LABEL_28;
  }
}

void sub_29AA69400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AA69438(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F40))
  {
    sub_29A008E78(__p, "half");
    sub_29A008E78(v7, "half2");
    sub_29A008E78(v8, "half3");
    sub_29A008E78(v9, "half4");
    sub_29A008E78(v10, "point3h");
    sub_29A008E78(v11, "normal3h");
    sub_29A008E78(v12, "vector3h");
    sub_29A008E78(v13, "color3h");
    sub_29A008E78(v14, "color4h");
    sub_29A008E78(v15, "texCoord2h");
    sub_29A008E78(v16, "texCoord3h");
    sub_29A9FDE68(&unk_2A14F8F28, __p, 11);
    v4 = 33;
    do
    {
      if (SHIBYTE(__p[v4 - 1]) < 0)
      {
        operator delete(__p[v4 - 3]);
      }

      v4 -= 3;
    }

    while (v4 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F40);
  }

  sub_29AA6926C(a1, __p);
  v2 = sub_29A01BCCC(&unk_2A14F8F28, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != &unk_2A14F8F30;
}

void sub_29AA69654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 263);
  v19 = -264;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A14F8F40);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_29AA696E4(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F60))
  {
    sub_29A008E78(__p, "float");
    sub_29A008E78(v7, "float2");
    sub_29A008E78(v8, "float3");
    sub_29A008E78(v9, "float4");
    sub_29A008E78(v10, "point3f");
    sub_29A008E78(v11, "normal3f");
    sub_29A008E78(v12, "vector3f");
    sub_29A008E78(v13, "color3f");
    sub_29A008E78(v14, "color4f");
    sub_29A008E78(v15, "texCoord2f");
    sub_29A008E78(v16, "texCoord3f");
    sub_29A9FDE68(&unk_2A14F8F48, __p, 11);
    v4 = 33;
    do
    {
      if (SHIBYTE(__p[v4 - 1]) < 0)
      {
        operator delete(__p[v4 - 3]);
      }

      v4 -= 3;
    }

    while (v4 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F60);
  }

  sub_29AA6926C(a1, __p);
  v2 = sub_29A01BCCC(&unk_2A14F8F48, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != &unk_2A14F8F50;
}

void sub_29AA69900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 263);
  v19 = -264;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A14F8F60);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_29AA69990(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F80))
  {
    sub_29A008E78(__p, "double");
    sub_29A008E78(v7, "double2");
    sub_29A008E78(v8, "double3");
    sub_29A008E78(v9, "double4");
    sub_29A008E78(v10, "point3d");
    sub_29A008E78(v11, "normal3d");
    sub_29A008E78(v12, "vector3d");
    sub_29A008E78(v13, "color3d");
    sub_29A008E78(v14, "color4d");
    sub_29A008E78(v15, "texCoord2d");
    sub_29A008E78(v16, "texCoord3d");
    sub_29A9FDE68(&unk_2A14F8F68, __p, 11);
    v4 = 33;
    do
    {
      if (SHIBYTE(__p[v4 - 1]) < 0)
      {
        operator delete(__p[v4 - 3]);
      }

      v4 -= 3;
    }

    while (v4 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F80);
  }

  sub_29AA6926C(a1, __p);
  v2 = sub_29A01BCCC(&unk_2A14F8F68, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != &unk_2A14F8F70;
}

void sub_29AA69BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 263);
  v19 = -264;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A14F8F80);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA69C3C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

__n128 sub_29AA69CA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 8) = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {
    v5 = (v4 - 16);
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a1 + 80))
    {
      v8 = *(a1 + 80);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 104);
  *(a1 + 104) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 104) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 112) = result;
  return result;
}

void sub_29AA69D84(os_log_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_299FE7000, v2, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }
}

uint64_t sub_29AA69E34(uint64_t a1, int *a2, pxrInternal__aapl__pxrReserved__::UsdAttribute *a3, uint64_t a4)
{
  v8 = (*(a1 + 400))(a4, a2[32]);
  v9 = (*(a1 + 432))();
  v10 = 4 * v9 * (*(a1 + 504))(v8);
  LOBYTE(ScalarType) = 0;
  *&__dst = &ScalarType;
  sub_29A19E2EC(a2 + 2, v10, &__dst);
  sub_29A19E500((a2 + 4));
  v11 = *(a2 + 6);
  v12 = (*(a1 + 328))(v8);
  memcpy(v11, v12, v10);
  v498[0] = 0;
  v13 = (*(a1 + 440))(v8, "idxdby", v498);
  if (!v13)
  {
    v14 = (*(a1 + 400))(a4, v498[0]);
    v15 = (*(a1 + 432))();
    LODWORD(ScalarType) = 0;
    *&__dst = &ScalarType;
    sub_29A19D7EC(a2 + 7, v15, &__dst);
    v16 = (*(a1 + 328))(v14);
    v13 = (*(a1 + 432))(v14);
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v18 = *(v16 + 4 * i);
        sub_29A19DBEC((a2 + 14));
        *(*(a2 + 11) + 4 * i) = v18;
        v13 = (*(a1 + 432))(v14);
      }
    }
  }

  v20 = a2 + 28;
  v19 = *(a2 + 112);
  v21 = a2 + 14;
  if (v19 != (*(a2 + 7) != 0))
  {
    if (v19)
    {
      sub_29AA6C238(v13, a2);
    }

    else
    {
      v22 = sub_29AA6C05C(a2);
      if (v22)
      {
        return v22;
      }
    }
  }

  ScalarType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType((a2 + 24));
  CPPTypeName = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetCPPTypeName(&ScalarType);
  if (*(CPPTypeName + 23) < 0)
  {
    sub_29A008D14(&__dst, *CPPTypeName, *(CPPTypeName + 8));
  }

  else
  {
    v24 = *CPPTypeName;
    v497 = *(CPPTypeName + 16);
    __dst = v24;
  }

  v25 = HIBYTE(v497);
  if (v497 < 0)
  {
    if (*(&__dst + 1) != 6)
    {
      goto LABEL_21;
    }

    v26 = __dst;
  }

  else
  {
    if (HIBYTE(v497) != 6)
    {
LABEL_23:
      if (v25 != 5)
      {
        goto LABEL_47;
      }

      p_dst = &__dst;
      goto LABEL_27;
    }

    v26 = &__dst;
  }

  v27 = *v26;
  v28 = *(v26 + 2);
  if (v27 == 1632134727 && v28 == 26220)
  {
    LODWORD(v484) = *a2;
    v256 = *(a2 + 1);
    v485 = v256;
    if ((v256 & 7) != 0 && (atomic_fetch_add_explicit((v256 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v485 &= 0xFFFFFFFFFFFFFFF8;
    }

    v257 = *(a2 + 2);
    v486 = *(a2 + 1);
    v487 = v257;
    v258 = *(a2 + 6);
    v488 = v258;
    if (v258)
    {
      v259 = (v258 - 16);
      if (*(&v487 + 1))
      {
        v259 = *(&v487 + 1);
      }

      atomic_fetch_add_explicit(v259, 1uLL, memory_order_relaxed);
    }

    v260 = *(a2 + 18);
    v489 = *v21;
    v490 = v260;
    v261 = *(a2 + 11);
    v491 = v261;
    if (v261)
    {
      v262 = (v261 - 16);
      if (*(&v490 + 1))
      {
        v262 = *(&v490 + 1);
      }

      atomic_fetch_add_explicit(v262, 1uLL, memory_order_relaxed);
    }

    v263 = *(a2 + 13);
    v492 = *(a2 + 12);
    v493 = v263;
    if ((v263 & 7) != 0 && (atomic_fetch_add_explicit((v263 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v493 &= 0xFFFFFFFFFFFFFFF8;
    }

    v494[0] = *v20;
    *(v494 + 13) = *(a2 + 125);
    sub_29AA6C57C(&v484, a3);
  }

LABEL_21:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v25 = HIBYTE(v497);
    goto LABEL_23;
  }

  if (*(&__dst + 1) != 5)
  {
    goto LABEL_47;
  }

  p_dst = __dst;
LABEL_27:
  v31 = *p_dst;
  v32 = *(p_dst + 4);
  if (v31 == 1634692198 && v32 == 116)
  {
    LODWORD(v473) = *a2;
    v34 = *(a2 + 1);
    v474 = v34;
    if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v474 &= 0xFFFFFFFFFFFFFFF8;
    }

    v35 = *(a2 + 2);
    v475 = *(a2 + 1);
    v476 = v35;
    v36 = *(a2 + 6);
    v477 = v36;
    if (v36)
    {
      v37 = (v36 - 16);
      if (*(&v476 + 1))
      {
        v37 = *(&v476 + 1);
      }

      atomic_fetch_add_explicit(v37, 1uLL, memory_order_relaxed);
    }

    v38 = *(a2 + 18);
    v478 = *v21;
    v479 = v38;
    v39 = *(a2 + 11);
    v480 = v39;
    if (v39)
    {
      v40 = (v39 - 16);
      if (*(&v479 + 1))
      {
        v40 = *(&v479 + 1);
      }

      atomic_fetch_add_explicit(v40, 1uLL, memory_order_relaxed);
    }

    v41 = *(a2 + 13);
    v481 = *(a2 + 12);
    v482 = v41;
    if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v482 &= 0xFFFFFFFFFFFFFFF8;
    }

    v483[0] = *v20;
    *(v483 + 13) = *(a2 + 125);
    sub_29AA6C9DC(&v473, a3);
  }

LABEL_47:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 6)
    {
      goto LABEL_72;
    }

    v43 = __dst;
  }

  else
  {
    v42 = HIBYTE(v497);
    if (HIBYTE(v497) != 6)
    {
LABEL_74:
      if (v42 != 7)
      {
        goto LABEL_98;
      }

      v55 = &__dst;
      goto LABEL_78;
    }

    v43 = &__dst;
  }

  v44 = *v43;
  v45 = *(v43 + 2);
  if (v44 == 1651863396 && v45 == 25964)
  {
    LODWORD(v462) = *a2;
    v47 = *(a2 + 1);
    v463 = v47;
    if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v463 &= 0xFFFFFFFFFFFFFFF8;
    }

    v48 = *(a2 + 2);
    v464 = *(a2 + 1);
    v465 = v48;
    v49 = *(a2 + 6);
    v466 = v49;
    if (v49)
    {
      v50 = (v49 - 16);
      if (*(&v465 + 1))
      {
        v50 = *(&v465 + 1);
      }

      atomic_fetch_add_explicit(v50, 1uLL, memory_order_relaxed);
    }

    v51 = *(a2 + 18);
    v467 = *v21;
    v468 = v51;
    v52 = *(a2 + 11);
    v469 = v52;
    if (v52)
    {
      v53 = (v52 - 16);
      if (*(&v468 + 1))
      {
        v53 = *(&v468 + 1);
      }

      atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
    }

    v54 = *(a2 + 13);
    v470 = *(a2 + 12);
    v471 = v54;
    if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v471 &= 0xFFFFFFFFFFFFFFF8;
    }

    v472[0] = *v20;
    *(v472 + 13) = *(a2 + 125);
    sub_29AA6CDB0(&v462, a3);
  }

LABEL_72:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v42 = HIBYTE(v497);
    goto LABEL_74;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_98;
  }

  v55 = __dst;
LABEL_78:
  v56 = *v55;
  v57 = *(v55 + 3);
  if (v56 == 1700161095 && v57 == 1748132709)
  {
    LODWORD(v451) = *a2;
    v59 = *(a2 + 1);
    v452 = v59;
    if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v452 &= 0xFFFFFFFFFFFFFFF8;
    }

    v60 = *(a2 + 2);
    v453 = *(a2 + 1);
    v454 = v60;
    v61 = *(a2 + 6);
    v455 = v61;
    if (v61)
    {
      v62 = (v61 - 16);
      if (*(&v454 + 1))
      {
        v62 = *(&v454 + 1);
      }

      atomic_fetch_add_explicit(v62, 1uLL, memory_order_relaxed);
    }

    v63 = *(a2 + 18);
    v456 = *v21;
    v457 = v63;
    v64 = *(a2 + 11);
    v458 = v64;
    if (v64)
    {
      v65 = (v64 - 16);
      if (*(&v457 + 1))
      {
        v65 = *(&v457 + 1);
      }

      atomic_fetch_add_explicit(v65, 1uLL, memory_order_relaxed);
    }

    v66 = *(a2 + 13);
    v459 = *(a2 + 12);
    v460 = v66;
    if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v460 &= 0xFFFFFFFFFFFFFFF8;
    }

    v461[0] = *v20;
    *(v461 + 13) = *(a2 + 125);
    sub_29AA6D188(&v451, a3);
  }

LABEL_98:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_123;
    }

    v68 = __dst;
  }

  else
  {
    v67 = HIBYTE(v497);
    if (HIBYTE(v497) != 7)
    {
LABEL_125:
      if (v67 != 7)
      {
        goto LABEL_149;
      }

      v80 = &__dst;
      goto LABEL_129;
    }

    v68 = &__dst;
  }

  v69 = *v68;
  v70 = *(v68 + 3);
  if (v69 == 1700161095 && v70 == 1748198245)
  {
    LODWORD(v440) = *a2;
    v72 = *(a2 + 1);
    v441 = v72;
    if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v441 &= 0xFFFFFFFFFFFFFFF8;
    }

    v73 = *(a2 + 2);
    v442 = *(a2 + 1);
    v443 = v73;
    v74 = *(a2 + 6);
    v444 = v74;
    if (v74)
    {
      v75 = (v74 - 16);
      if (*(&v443 + 1))
      {
        v75 = *(&v443 + 1);
      }

      atomic_fetch_add_explicit(v75, 1uLL, memory_order_relaxed);
    }

    v76 = *(a2 + 18);
    v445 = *v21;
    v446 = v76;
    v77 = *(a2 + 11);
    v447 = v77;
    if (v77)
    {
      v78 = (v77 - 16);
      if (*(&v446 + 1))
      {
        v78 = *(&v446 + 1);
      }

      atomic_fetch_add_explicit(v78, 1uLL, memory_order_relaxed);
    }

    v79 = *(a2 + 13);
    v448 = *(a2 + 12);
    v449 = v79;
    if ((v79 & 7) != 0 && (atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v449 &= 0xFFFFFFFFFFFFFFF8;
    }

    v450[0] = *v20;
    *(v450 + 13) = *(a2 + 125);
    sub_29AA6D63C(&v440, a3);
  }

LABEL_123:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v67 = HIBYTE(v497);
    goto LABEL_125;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_149;
  }

  v80 = __dst;
LABEL_129:
  v81 = *v80;
  v82 = *(v80 + 3);
  if (v81 == 1700161095 && v82 == 1748263781)
  {
    LODWORD(v429) = *a2;
    v84 = *(a2 + 1);
    v430 = v84;
    if ((v84 & 7) != 0 && (atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v430 &= 0xFFFFFFFFFFFFFFF8;
    }

    v85 = *(a2 + 2);
    v431 = *(a2 + 1);
    v432 = v85;
    v86 = *(a2 + 6);
    v433 = v86;
    if (v86)
    {
      v87 = (v86 - 16);
      if (*(&v432 + 1))
      {
        v87 = *(&v432 + 1);
      }

      atomic_fetch_add_explicit(v87, 1uLL, memory_order_relaxed);
    }

    v88 = *(a2 + 18);
    v434 = *v21;
    v435 = v88;
    v89 = *(a2 + 11);
    v436 = v89;
    if (v89)
    {
      v90 = (v89 - 16);
      if (*(&v435 + 1))
      {
        v90 = *(&v435 + 1);
      }

      atomic_fetch_add_explicit(v90, 1uLL, memory_order_relaxed);
    }

    v91 = *(a2 + 13);
    v437 = *(a2 + 12);
    v438 = v91;
    if ((v91 & 7) != 0 && (atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v438 &= 0xFFFFFFFFFFFFFFF8;
    }

    v439[0] = *v20;
    *(v439 + 13) = *(a2 + 125);
    sub_29AA6DAF0(&v429, a3);
  }

LABEL_149:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_174;
    }

    v93 = __dst;
  }

  else
  {
    v92 = HIBYTE(v497);
    if (HIBYTE(v497) != 7)
    {
LABEL_176:
      if (v92 != 7)
      {
        goto LABEL_200;
      }

      v105 = &__dst;
      goto LABEL_180;
    }

    v93 = &__dst;
  }

  v94 = *v93;
  v95 = *(v93 + 3);
  if (v94 == 1700161095 && v95 == 1714578277)
  {
    LODWORD(v418) = *a2;
    v97 = *(a2 + 1);
    v419 = v97;
    if ((v97 & 7) != 0 && (atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v419 &= 0xFFFFFFFFFFFFFFF8;
    }

    v98 = *(a2 + 2);
    v420 = *(a2 + 1);
    v421 = v98;
    v99 = *(a2 + 6);
    v422 = v99;
    if (v99)
    {
      v100 = (v99 - 16);
      if (*(&v421 + 1))
      {
        v100 = *(&v421 + 1);
      }

      atomic_fetch_add_explicit(v100, 1uLL, memory_order_relaxed);
    }

    v101 = *(a2 + 18);
    v423 = *v21;
    v424 = v101;
    v102 = *(a2 + 11);
    v425 = v102;
    if (v102)
    {
      v103 = (v102 - 16);
      if (*(&v424 + 1))
      {
        v103 = *(&v424 + 1);
      }

      atomic_fetch_add_explicit(v103, 1uLL, memory_order_relaxed);
    }

    v104 = *(a2 + 13);
    v426 = *(a2 + 12);
    v427 = v104;
    if ((v104 & 7) != 0 && (atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v427 &= 0xFFFFFFFFFFFFFFF8;
    }

    v428[0] = *v20;
    *(v428 + 13) = *(a2 + 125);
    sub_29AA6DFA4(&v418, a3);
  }

LABEL_174:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v92 = HIBYTE(v497);
    goto LABEL_176;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_200;
  }

  v105 = __dst;
LABEL_180:
  v106 = *v105;
  v107 = *(v105 + 3);
  if (v106 == 1700161095 && v107 == 1714643813)
  {
    LODWORD(v407) = *a2;
    v109 = *(a2 + 1);
    v408 = v109;
    if ((v109 & 7) != 0 && (atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v408 &= 0xFFFFFFFFFFFFFFF8;
    }

    v110 = *(a2 + 2);
    v409 = *(a2 + 1);
    v410 = v110;
    v111 = *(a2 + 6);
    v411 = v111;
    if (v111)
    {
      v112 = (v111 - 16);
      if (*(&v410 + 1))
      {
        v112 = *(&v410 + 1);
      }

      atomic_fetch_add_explicit(v112, 1uLL, memory_order_relaxed);
    }

    v113 = *(a2 + 18);
    v412 = *v21;
    v413 = v113;
    v114 = *(a2 + 11);
    v414 = v114;
    if (v114)
    {
      v115 = (v114 - 16);
      if (*(&v413 + 1))
      {
        v115 = *(&v413 + 1);
      }

      atomic_fetch_add_explicit(v115, 1uLL, memory_order_relaxed);
    }

    v116 = *(a2 + 13);
    v415 = *(a2 + 12);
    v416 = v116;
    if ((v116 & 7) != 0 && (atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v416 &= 0xFFFFFFFFFFFFFFF8;
    }

    v417[0] = *v20;
    *(v417 + 13) = *(a2 + 125);
    sub_29AA6E3C4(&v407, a3);
  }

LABEL_200:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_225;
    }

    v118 = __dst;
  }

  else
  {
    v117 = HIBYTE(v497);
    if (HIBYTE(v497) != 7)
    {
LABEL_227:
      if (v117 != 7)
      {
        goto LABEL_251;
      }

      v130 = &__dst;
      goto LABEL_231;
    }

    v118 = &__dst;
  }

  v119 = *v118;
  v120 = *(v118 + 3);
  if (v119 == 1700161095 && v120 == 1714709349)
  {
    LODWORD(v396) = *a2;
    v122 = *(a2 + 1);
    v397 = v122;
    if ((v122 & 7) != 0 && (atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v397 &= 0xFFFFFFFFFFFFFFF8;
    }

    v123 = *(a2 + 2);
    v398 = *(a2 + 1);
    v399 = v123;
    v124 = *(a2 + 6);
    v400 = v124;
    if (v124)
    {
      v125 = (v124 - 16);
      if (*(&v399 + 1))
      {
        v125 = *(&v399 + 1);
      }

      atomic_fetch_add_explicit(v125, 1uLL, memory_order_relaxed);
    }

    v126 = *(a2 + 18);
    v401 = *v21;
    v402 = v126;
    v127 = *(a2 + 11);
    v403 = v127;
    if (v127)
    {
      v128 = (v127 - 16);
      if (*(&v402 + 1))
      {
        v128 = *(&v402 + 1);
      }

      atomic_fetch_add_explicit(v128, 1uLL, memory_order_relaxed);
    }

    v129 = *(a2 + 13);
    v404 = *(a2 + 12);
    v405 = v129;
    if ((v129 & 7) != 0 && (atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v405 &= 0xFFFFFFFFFFFFFFF8;
    }

    v406[0] = *v20;
    *(v406 + 13) = *(a2 + 125);
    sub_29AA6E7E4(&v396, a3);
  }

LABEL_225:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v117 = HIBYTE(v497);
    goto LABEL_227;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_251;
  }

  v130 = __dst;
LABEL_231:
  v131 = *v130;
  v132 = *(v130 + 3);
  if (v131 == 1700161095 && v132 == 1681023845)
  {
    LODWORD(v385) = *a2;
    v134 = *(a2 + 1);
    v386 = v134;
    if ((v134 & 7) != 0 && (atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v386 &= 0xFFFFFFFFFFFFFFF8;
    }

    v135 = *(a2 + 2);
    v387 = *(a2 + 1);
    v388 = v135;
    v136 = *(a2 + 6);
    v389 = v136;
    if (v136)
    {
      v137 = (v136 - 16);
      if (*(&v388 + 1))
      {
        v137 = *(&v388 + 1);
      }

      atomic_fetch_add_explicit(v137, 1uLL, memory_order_relaxed);
    }

    v138 = *(a2 + 18);
    v390 = *v21;
    v391 = v138;
    v139 = *(a2 + 11);
    v392 = v139;
    if (v139)
    {
      v140 = (v139 - 16);
      if (*(&v391 + 1))
      {
        v140 = *(&v391 + 1);
      }

      atomic_fetch_add_explicit(v140, 1uLL, memory_order_relaxed);
    }

    v141 = *(a2 + 13);
    v393 = *(a2 + 12);
    v394 = v141;
    if ((v141 & 7) != 0 && (atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v394 &= 0xFFFFFFFFFFFFFFF8;
    }

    v395[0] = *v20;
    *(v395 + 13) = *(a2 + 125);
    sub_29AA6EC04(&v385, a3);
  }

LABEL_251:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_276;
    }

    v143 = __dst;
  }

  else
  {
    v142 = HIBYTE(v497);
    if (HIBYTE(v497) != 7)
    {
LABEL_278:
      if (v142 != 7)
      {
        goto LABEL_302;
      }

      v155 = &__dst;
      goto LABEL_282;
    }

    v143 = &__dst;
  }

  v144 = *v143;
  v145 = *(v143 + 3);
  if (v144 == 1700161095 && v145 == 1681089381)
  {
    LODWORD(v374) = *a2;
    v147 = *(a2 + 1);
    v375 = v147;
    if ((v147 & 7) != 0 && (atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v375 &= 0xFFFFFFFFFFFFFFF8;
    }

    v148 = *(a2 + 2);
    v376 = *(a2 + 1);
    v377 = v148;
    v149 = *(a2 + 6);
    v378 = v149;
    if (v149)
    {
      v150 = (v149 - 16);
      if (*(&v377 + 1))
      {
        v150 = *(&v377 + 1);
      }

      atomic_fetch_add_explicit(v150, 1uLL, memory_order_relaxed);
    }

    v151 = *(a2 + 18);
    v379 = *v21;
    v380 = v151;
    v152 = *(a2 + 11);
    v381 = v152;
    if (v152)
    {
      v153 = (v152 - 16);
      if (*(&v380 + 1))
      {
        v153 = *(&v380 + 1);
      }

      atomic_fetch_add_explicit(v153, 1uLL, memory_order_relaxed);
    }

    v154 = *(a2 + 13);
    v382 = *(a2 + 12);
    v383 = v154;
    if ((v154 & 7) != 0 && (atomic_fetch_add_explicit((v154 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v383 &= 0xFFFFFFFFFFFFFFF8;
    }

    v384[0] = *v20;
    *(v384 + 13) = *(a2 + 125);
    sub_29AA6F028(&v374, a3);
  }

LABEL_276:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v142 = HIBYTE(v497);
    goto LABEL_278;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_302;
  }

  v155 = __dst;
LABEL_282:
  v156 = *v155;
  v157 = *(v155 + 3);
  if (v156 == 1700161095 && v157 == 1681154917)
  {
    LODWORD(v363) = *a2;
    v159 = *(a2 + 1);
    v364 = v159;
    if ((v159 & 7) != 0 && (atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v364 &= 0xFFFFFFFFFFFFFFF8;
    }

    v160 = *(a2 + 2);
    v365 = *(a2 + 1);
    v366 = v160;
    v161 = *(a2 + 6);
    v367 = v161;
    if (v161)
    {
      v162 = (v161 - 16);
      if (*(&v366 + 1))
      {
        v162 = *(&v366 + 1);
      }

      atomic_fetch_add_explicit(v162, 1uLL, memory_order_relaxed);
    }

    v163 = *(a2 + 18);
    v368 = *v21;
    v369 = v163;
    v164 = *(a2 + 11);
    v370 = v164;
    if (v164)
    {
      v165 = (v164 - 16);
      if (*(&v369 + 1))
      {
        v165 = *(&v369 + 1);
      }

      atomic_fetch_add_explicit(v165, 1uLL, memory_order_relaxed);
    }

    v166 = *(a2 + 13);
    v371 = *(a2 + 12);
    v372 = v166;
    if ((v166 & 7) != 0 && (atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v372 &= 0xFFFFFFFFFFFFFFF8;
    }

    v373[0] = *v20;
    *(v373 + 13) = *(a2 + 125);
    sub_29AA6F44C(&v363, a3);
  }

LABEL_302:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 4)
    {
      goto LABEL_323;
    }

    v168 = __dst;
  }

  else
  {
    v167 = HIBYTE(v497);
    if (HIBYTE(v497) != 4)
    {
LABEL_325:
      if (v167 != 3)
      {
        goto LABEL_349;
      }

      v177 = &__dst;
      goto LABEL_329;
    }

    v168 = &__dst;
  }

  if (*v168 == 1819242338)
  {
    LODWORD(v352) = *a2;
    v169 = *(a2 + 1);
    v353 = v169;
    if ((v169 & 7) != 0 && (atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v353 &= 0xFFFFFFFFFFFFFFF8;
    }

    v170 = *(a2 + 2);
    v354 = *(a2 + 1);
    v355 = v170;
    v171 = *(a2 + 6);
    v356 = v171;
    if (v171)
    {
      v172 = (v171 - 16);
      if (*(&v355 + 1))
      {
        v172 = *(&v355 + 1);
      }

      atomic_fetch_add_explicit(v172, 1uLL, memory_order_relaxed);
    }

    v173 = *(a2 + 18);
    v357 = *v21;
    v358 = v173;
    v174 = *(a2 + 11);
    v359 = v174;
    if (v174)
    {
      v175 = (v174 - 16);
      if (*(&v358 + 1))
      {
        v175 = *(&v358 + 1);
      }

      atomic_fetch_add_explicit(v175, 1uLL, memory_order_relaxed);
    }

    v176 = *(a2 + 13);
    v360 = *(a2 + 12);
    v361 = v176;
    if ((v176 & 7) != 0 && (atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v361 &= 0xFFFFFFFFFFFFFFF8;
    }

    v362[0] = *v20;
    *(v362 + 13) = *(a2 + 125);
    sub_29AA6F870(&v352, a3);
  }

LABEL_323:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v167 = HIBYTE(v497);
    goto LABEL_325;
  }

  if (*(&__dst + 1) != 3)
  {
    goto LABEL_349;
  }

  v177 = __dst;
LABEL_329:
  v178 = *v177;
  v179 = *(v177 + 2);
  if (v178 == 28265 && v179 == 116)
  {
    LODWORD(v341) = *a2;
    v181 = *(a2 + 1);
    v342 = v181;
    if ((v181 & 7) != 0 && (atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v342 &= 0xFFFFFFFFFFFFFFF8;
    }

    v182 = *(a2 + 2);
    v343 = *(a2 + 1);
    v344 = v182;
    v183 = *(a2 + 6);
    v345 = v183;
    if (v183)
    {
      v184 = (v183 - 16);
      if (*(&v344 + 1))
      {
        v184 = *(&v344 + 1);
      }

      atomic_fetch_add_explicit(v184, 1uLL, memory_order_relaxed);
    }

    v185 = *(a2 + 18);
    v346 = *v21;
    v347 = v185;
    v186 = *(a2 + 11);
    v348 = v186;
    if (v186)
    {
      v187 = (v186 - 16);
      if (*(&v347 + 1))
      {
        v187 = *(&v347 + 1);
      }

      atomic_fetch_add_explicit(v187, 1uLL, memory_order_relaxed);
    }

    v188 = *(a2 + 13);
    v349 = *(a2 + 12);
    v350 = v188;
    if ((v188 & 7) != 0 && (atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v350 &= 0xFFFFFFFFFFFFFFF8;
    }

    v351[0] = *v20;
    *(v351 + 13) = *(a2 + 125);
    sub_29AA6FC50(&v341, a3);
  }

LABEL_349:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_374;
    }

    v190 = __dst;
  }

  else
  {
    v189 = HIBYTE(v497);
    if (HIBYTE(v497) != 7)
    {
LABEL_376:
      if (v189 != 12)
      {
        goto LABEL_400;
      }

      v202 = &__dst;
      goto LABEL_380;
    }

    v190 = &__dst;
  }

  v191 = *v190;
  v192 = *(v190 + 3);
  if (v191 == 1953393013 && v192 == 1952397428)
  {
    LODWORD(v330) = *a2;
    v194 = *(a2 + 1);
    v331 = v194;
    if ((v194 & 7) != 0 && (atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v331 &= 0xFFFFFFFFFFFFFFF8;
    }

    v195 = *(a2 + 2);
    v332 = *(a2 + 1);
    v333 = v195;
    v196 = *(a2 + 6);
    v334 = v196;
    if (v196)
    {
      v197 = (v196 - 16);
      if (*(&v333 + 1))
      {
        v197 = *(&v333 + 1);
      }

      atomic_fetch_add_explicit(v197, 1uLL, memory_order_relaxed);
    }

    v198 = *(a2 + 18);
    v335 = *v21;
    v336 = v198;
    v199 = *(a2 + 11);
    v337 = v199;
    if (v199)
    {
      v200 = (v199 - 16);
      if (*(&v336 + 1))
      {
        v200 = *(&v336 + 1);
      }

      atomic_fetch_add_explicit(v200, 1uLL, memory_order_relaxed);
    }

    v201 = *(a2 + 13);
    v338 = *(a2 + 12);
    v339 = v201;
    if ((v201 & 7) != 0 && (atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v339 &= 0xFFFFFFFFFFFFFFF8;
    }

    v340[0] = *v20;
    *(v340 + 13) = *(a2 + 125);
    sub_29AA70024(&v330, a3);
  }

LABEL_374:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v189 = HIBYTE(v497);
    goto LABEL_376;
  }

  if (*(&__dst + 1) != 12)
  {
    goto LABEL_400;
  }

  v202 = __dst;
LABEL_380:
  v203 = *v202;
  v204 = *(v202 + 2);
  if (v203 == 0x64656E6769736E75 && v204 == 1953392928)
  {
    LODWORD(v319) = *a2;
    v206 = *(a2 + 1);
    v320 = v206;
    if ((v206 & 7) != 0 && (atomic_fetch_add_explicit((v206 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v320 &= 0xFFFFFFFFFFFFFFF8;
    }

    v207 = *(a2 + 2);
    v321 = *(a2 + 1);
    v322 = v207;
    v208 = *(a2 + 6);
    v323 = v208;
    if (v208)
    {
      v209 = (v208 - 16);
      if (*(&v322 + 1))
      {
        v209 = *(&v322 + 1);
      }

      atomic_fetch_add_explicit(v209, 1uLL, memory_order_relaxed);
    }

    v210 = *(a2 + 18);
    v324 = *v21;
    v325 = v210;
    v211 = *(a2 + 11);
    v326 = v211;
    if (v211)
    {
      v212 = (v211 - 16);
      if (*(&v325 + 1))
      {
        v212 = *(&v325 + 1);
      }

      atomic_fetch_add_explicit(v212, 1uLL, memory_order_relaxed);
    }

    v213 = *(a2 + 13);
    v327 = *(a2 + 12);
    v328 = v213;
    if ((v213 & 7) != 0 && (atomic_fetch_add_explicit((v213 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v328 &= 0xFFFFFFFFFFFFFFF8;
    }

    v329[0] = *v20;
    *(v329 + 13) = *(a2 + 125);
    sub_29AA703F8(&v319, a3);
  }

LABEL_400:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 13)
    {
      goto LABEL_425;
    }

    v215 = __dst;
  }

  else
  {
    v214 = HIBYTE(v497);
    if (HIBYTE(v497) != 13)
    {
LABEL_427:
      if (v214 != 7)
      {
        goto LABEL_451;
      }

      v227 = &__dst;
      goto LABEL_431;
    }

    v215 = &__dst;
  }

  v216 = *v215;
  v217 = *(v215 + 5);
  if (v216 == 0x64656E6769736E75 && v217 == 0x726168632064656ELL)
  {
    LODWORD(v308) = *a2;
    v219 = *(a2 + 1);
    v309 = v219;
    if ((v219 & 7) != 0 && (atomic_fetch_add_explicit((v219 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v309 &= 0xFFFFFFFFFFFFFFF8;
    }

    v220 = *(a2 + 2);
    v310 = *(a2 + 1);
    v311 = v220;
    v221 = *(a2 + 6);
    v312 = v221;
    if (v221)
    {
      v222 = (v221 - 16);
      if (*(&v311 + 1))
      {
        v222 = *(&v311 + 1);
      }

      atomic_fetch_add_explicit(v222, 1uLL, memory_order_relaxed);
    }

    v223 = *(a2 + 18);
    v313 = *v21;
    v314 = v223;
    v224 = *(a2 + 11);
    v315 = v224;
    if (v224)
    {
      v225 = (v224 - 16);
      if (*(&v314 + 1))
      {
        v225 = *(&v314 + 1);
      }

      atomic_fetch_add_explicit(v225, 1uLL, memory_order_relaxed);
    }

    v226 = *(a2 + 13);
    v316 = *(a2 + 12);
    v317 = v226;
    if ((v226 & 7) != 0 && (atomic_fetch_add_explicit((v226 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v317 &= 0xFFFFFFFFFFFFFFF8;
    }

    v318[0] = *v20;
    *(v318 + 13) = *(a2 + 125);
    sub_29AA70024(&v308, a3);
  }

LABEL_425:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v214 = HIBYTE(v497);
    goto LABEL_427;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_451;
  }

  v227 = __dst;
LABEL_431:
  v228 = *v227;
  v229 = *(v227 + 3);
  if (v228 == 1700161095 && v229 == 1764909925)
  {
    LODWORD(v297) = *a2;
    v231 = *(a2 + 1);
    v298 = v231;
    if ((v231 & 7) != 0 && (atomic_fetch_add_explicit((v231 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v298 &= 0xFFFFFFFFFFFFFFF8;
    }

    v232 = *(a2 + 2);
    v299 = *(a2 + 1);
    v300 = v232;
    v233 = *(a2 + 6);
    v301 = v233;
    if (v233)
    {
      v234 = (v233 - 16);
      if (*(&v300 + 1))
      {
        v234 = *(&v300 + 1);
      }

      atomic_fetch_add_explicit(v234, 1uLL, memory_order_relaxed);
    }

    v235 = *(a2 + 18);
    v302 = *v21;
    v303 = v235;
    v236 = *(a2 + 11);
    v304 = v236;
    if (v236)
    {
      v237 = (v236 - 16);
      if (*(&v303 + 1))
      {
        v237 = *(&v303 + 1);
      }

      atomic_fetch_add_explicit(v237, 1uLL, memory_order_relaxed);
    }

    v238 = *(a2 + 13);
    v305 = *(a2 + 12);
    v306 = v238;
    if ((v238 & 7) != 0 && (atomic_fetch_add_explicit((v238 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v306 &= 0xFFFFFFFFFFFFFFF8;
    }

    v307[0] = *v20;
    *(v307 + 13) = *(a2 + 125);
    sub_29AA707CC(&v297, a3);
  }

LABEL_451:
  if (SHIBYTE(v497) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_476;
    }

    v240 = __dst;
  }

  else
  {
    v239 = HIBYTE(v497);
    if (HIBYTE(v497) != 7)
    {
      goto LABEL_478;
    }

    v240 = &__dst;
  }

  v241 = *v240;
  v242 = *(v240 + 3);
  if (v241 == 1700161095 && v242 == 1764975461)
  {
    LODWORD(v286) = *a2;
    v244 = *(a2 + 1);
    v287 = v244;
    if ((v244 & 7) != 0 && (atomic_fetch_add_explicit((v244 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v287 &= 0xFFFFFFFFFFFFFFF8;
    }

    v245 = *(a2 + 2);
    v288 = *(a2 + 1);
    v289 = v245;
    v246 = *(a2 + 6);
    v290 = v246;
    if (v246)
    {
      v247 = (v246 - 16);
      if (*(&v289 + 1))
      {
        v247 = *(&v289 + 1);
      }

      atomic_fetch_add_explicit(v247, 1uLL, memory_order_relaxed);
    }

    v248 = *(a2 + 18);
    v291 = *v21;
    v292 = v248;
    v249 = *(a2 + 11);
    v293 = v249;
    if (v249)
    {
      v250 = (v249 - 16);
      if (*(&v292 + 1))
      {
        v250 = *(&v292 + 1);
      }

      atomic_fetch_add_explicit(v250, 1uLL, memory_order_relaxed);
    }

    v251 = *(a2 + 13);
    v294 = *(a2 + 12);
    v295 = v251;
    if ((v251 & 7) != 0 && (atomic_fetch_add_explicit((v251 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v295 &= 0xFFFFFFFFFFFFFFF8;
    }

    v296[0] = *v20;
    *(v296 + 13) = *(a2 + 125);
    sub_29AA70BEC(&v286, a3);
  }

LABEL_476:
  if ((SHIBYTE(v497) & 0x80000000) == 0)
  {
    v239 = HIBYTE(v497);
LABEL_478:
    if (v239 == 7)
    {
      v252 = &__dst;
      goto LABEL_482;
    }

    goto LABEL_486;
  }

  if (*(&__dst + 1) == 7)
  {
    v252 = __dst;
LABEL_482:
    v253 = *v252;
    v254 = *(v252 + 3);
    if (v253 == 1700161095 && v254 == 1765040997)
    {
      LODWORD(v275) = *a2;
      v264 = *(a2 + 1);
      v276 = v264;
      if ((v264 & 7) != 0)
      {
        v265 = (v264 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v265, 2u, memory_order_relaxed) & 1) == 0)
        {
          v276 = v265;
        }
      }

      v266 = *(a2 + 2);
      v277 = *(a2 + 1);
      v278 = v266;
      v267 = *(a2 + 6);
      v279 = v267;
      if (v267)
      {
        v268 = (v267 - 16);
        if (*(&v278 + 1))
        {
          v268 = *(&v278 + 1);
        }

        atomic_fetch_add_explicit(v268, 1uLL, memory_order_relaxed);
      }

      v269 = *(a2 + 18);
      v280 = *v21;
      v281 = v269;
      v270 = *(a2 + 11);
      v282 = v270;
      if (v270)
      {
        v271 = (v270 - 16);
        if (*(&v281 + 1))
        {
          v271 = *(&v281 + 1);
        }

        atomic_fetch_add_explicit(v271, 1uLL, memory_order_relaxed);
      }

      v272 = *(a2 + 13);
      v283 = *(a2 + 12);
      v284 = v272;
      if ((v272 & 7) != 0)
      {
        v273 = (v272 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v273, 2u, memory_order_relaxed) & 1) == 0)
        {
          v284 = v273;
        }
      }

      v285[0] = *v20;
      *(v285 + 13) = *(a2 + 125);
      sub_29AA7100C(&v275, a3);
    }
  }

LABEL_486:
  v22 = 150;
  if (SHIBYTE(v497) < 0)
  {
    operator delete(__dst);
  }

  return v22;
}

uint64_t sub_29AA6C05C(uint64_t a1)
{
  v2 = *(a1 + 116);
  if (v2 >= 2)
  {
    v3 = 4 * v2;
    goto LABEL_10;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, (a1 + 96));
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v15, (a1 + 96)), !v15.n128_u64[0]))
  {
    v3 = 4;
LABEL_10:
    v5 = *(a1 + 56);
    v14 = 0;
    *__p = 0u;
    v13 = 0u;
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        sub_29A19DBEC(a1 + 56);
        v7 = v3 * *(*(a1 + 88) + 4 * v6);
        if ((v7 + v3) > *(a1 + 16))
        {
          break;
        }

        sub_29A19E500(a1 + 16);
        v8 = (*(a1 + 48) + v7);
        v9 = v3;
        do
        {
          sub_29AA7E390(__p, v8++);
          --v9;
        }

        while (v9);
        if (++v6 == v5)
        {
          goto LABEL_16;
        }
      }

      v10 = sub_29AABB028();
      sub_29A008E78(&v15, "decode: attribute value index out of range");
      sub_29AA5B750(v10, &v15);
      if (v16 < 0)
      {
        operator delete(v15.n128_u64[0]);
      }
    }

    else
    {
LABEL_16:
      sub_29A4AB3CC((a1 + 16), __p);
      sub_29A19D79C((a1 + 56));
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, (a1 + 96));
  v3 = 4 * __p[0];
  if (4 * __p[0])
  {
    goto LABEL_10;
  }

  v4 = sub_29AABB028();
  sub_29A008E78(__p, "decode: Component size must be positive");
  sub_29AA5B750(v4, __p);
  if (SBYTE7(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return 213;
}

uint64_t sub_29AA6C238(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 116);
  if (v3 >= 2)
  {
    v4 = 4 * v3;
    goto LABEL_10;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, (a2 + 96));
  if (!v29 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, (v2 + 96)), !v26[0].n128_u64[0]))
  {
    v4 = 4;
LABEL_10:
    v7 = (v2 + 16);
    v8 = *(v2 + 16) / v4;
    v26[0].n128_u32[0] = 0;
    __p[0] = v26;
    sub_29A19D7EC((v2 + 56), v8, __p);
    *__p = 0u;
    v29 = 0u;
    v30 = 1065353216;
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_29A011440(v25, v4 >> 2);
    sub_29AA6C4E4(v26, *(v2 + 16));
    sub_29A19E500(v2 + 16);
    if (v8 >= 1)
    {
      v9 = 0;
      LODWORD(v10) = 0;
      v11 = 0;
      v12 = *(v2 + 48);
      if (v4 >> 2 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v4 >> 2;
      }

      v14 = v8 & 0x7FFFFFFF;
      v24 = (v2 + 16);
      do
      {
        v15 = v25[0];
        v10 = v10;
        v16 = v13;
        do
        {
          v17 = *(v12 + 4 * v10++);
          *v15++ = v17;
          --v16;
        }

        while (v16);
        v18 = sub_29AA61390(__p, v25);
        if (v18)
        {
          v19 = *(v18 + 10);
          sub_29A19DBEC(v7 + 40);
          *(*(v2 + 88) + 4 * v9) = v19;
        }

        else
        {
          v31 = v25;
          *(sub_29AA7E438(__p, v25, &unk_29B4D6118, &v31) + 10) = v11;
          sub_29A19DBEC(v7 + 40);
          v20 = v11 + 1;
          v21 = v2;
          *(*(v2 + 88) + 4 * v9) = v11;
          v22 = v25[0];
          v23 = v4;
          do
          {
            sub_29AA7E390(v26, v22++);
            --v4;
          }

          while (v4);
          v11 = v20;
          v4 = v23;
          v2 = v21;
          v7 = v24;
        }

        ++v9;
      }

      while (v9 < v14);
    }

    sub_29A4AB3CC(v7, v26);
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, (v2 + 96));
  v4 = 4 * __p[0];
  if (4 * __p[0])
  {
    goto LABEL_10;
  }

  v5 = sub_29AABB028();
  sub_29A008E78(__p, "decode: Component size must be positive");
  sub_29AA5B750(v5, __p);
  if (SBYTE7(v29) < 0)
  {
    operator delete(__p[0]);
  }

  return 213;
}

void sub_29AA6C498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void *sub_29AA6C4E4(void *result, unint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    if (result[3])
    {
      v3 = result;
    }

    else
    {
      v3 = (v2 - 8);
    }

    if (*v3 < a2)
    {
      v4 = *result;
      v5 = sub_29A19E470(result, a2);
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          *(v5 + i) = *(v2 + i);
        }
      }

LABEL_12:
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }
  }

  else if (a2)
  {
    sub_29A19E470(result, a2);
    goto LABEL_12;
  }

  return result;
}

void sub_29AA6C57C(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v30, a1 + 12);
  if ((v30[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v30[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((v30[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v30, a1 + 12);
  if (v31)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v29, a1 + 12);
    if (v29.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v30, a1 + 12);
      if (v30[0] != 1)
      {
        v6 = sub_29AABB028();
        v7 = v6;
        if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
        }

        if (*(v8 + 23) < 0)
        {
          sub_29A008D14(&v29, *v8, v8[1]);
        }

        else
        {
          v20 = *v8;
          v29.__r_.__value_.__r.__words[2] = v8[2];
          *&v29.__r_.__value_.__l.__data_ = v20;
        }

        v21 = std::string::insert(&v29, 0, "decode: unable to write data for ");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v31 = v21->__r_.__value_.__r.__words[2];
        *v30 = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v7, v30);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30[0]);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(__dst, v32, *(&v32 + 1));
  }

  else
  {
    *__dst = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(__dst))
  {
    v5 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v5 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(__p, v32, *(&v32 + 1));
      }

      else
      {
        *__p = v32;
        v24 = v33;
      }

      v5 = sub_29AA69990(__p);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
    if (v5)
    {
LABEL_30:
      sub_29A19E500((a1 + 2));
      v9 = a1[2];
      if (v9 >= 4)
      {
        v10 = a1[6];
        v11 = v9 >> 2;
        do
        {
          v12 = *v10;
          if (*v10 == 0.0)
          {
            v13 = v12 >> 16;
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v12 >> 23])
          {
            v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v12 >> 23] + (((v12 & 0x7FFFFF) + ((v12 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v13) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v12);
          }

          LOWORD(v30[0]) = v13;
          sub_29AA7E788(v34, v30);
          ++v10;
          --v11;
        }

        while (v11);
      }

      goto LABEL_48;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  sub_29A19E500((a1 + 2));
  v14 = a1[2];
  if (v14 >= 4)
  {
    v15 = a1[6];
    v16 = v14 >> 2;
    do
    {
      v17 = *v15++;
      v18 = COERCE_UNSIGNED_INT(v17);
      if (v17)
      {
        if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v18 >> 23])
        {
          v19 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v18 >> 23] + (((v18 & 0x7FFFFF) + ((v18 >> 13) & 1) + 4095) >> 13);
        }

        else
        {
          LOWORD(v19) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v18);
        }
      }

      else
      {
        v19 = v18 >> 16;
      }

      LOWORD(v30[0]) = v19;
      sub_29AA7E788(v34, v30);
      --v16;
    }

    while (v16);
  }

LABEL_48:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>();
}

void sub_29AA6C90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 97) < 0)
  {
    operator delete(*(v37 - 120));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29AA6C9DC(void *a1, uint64_t a2)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v26, a1 + 12);
  if ((v26[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v26[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v28);
  if ((v26[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v25, a1 + 12);
    if (v25.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
      if (v26[0] != 1)
      {
        v6 = sub_29AABB028();
        v7 = v6;
        if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
        }

        if (*(v8 + 23) < 0)
        {
          sub_29A008D14(&v25, *v8, v8[1]);
        }

        else
        {
          v16 = *v8;
          v25.__r_.__value_.__r.__words[2] = v8[2];
          *&v25.__r_.__value_.__l.__data_ = v16;
        }

        v17 = std::string::insert(&v25, 0, "decode: unable to write data for ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v27 = v17->__r_.__value_.__r.__words[2];
        *v26 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v7, v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_29A008D14(__dst, v28, *(&v28 + 1));
  }

  else
  {
    *__dst = v28;
    v24 = v29;
  }

  if (sub_29AA696E4(__dst))
  {
    v5 = 1;
  }

  else
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_29A008D14(v21, v28, *(&v28 + 1));
    }

    else
    {
      *v21 = v28;
      v22 = v29;
    }

    if (sub_29AA69438(v21))
    {
      v5 = 1;
    }

    else
    {
      if (SHIBYTE(v29) < 0)
      {
        sub_29A008D14(__p, v28, *(&v28 + 1));
      }

      else
      {
        *__p = v28;
        v20 = v29;
      }

      v5 = sub_29AA69990(__p);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
    if (v5)
    {
LABEL_30:
      sub_29A19E500((a1 + 2));
      v9 = a1[2];
      if (v9 >= 4)
      {
        v10 = a1[6];
        v11 = v9 >> 2;
        do
        {
          LODWORD(v26[0]) = *v10;
          sub_29A85289C(v30, v26);
          ++v10;
          --v11;
        }

        while (v11);
      }

      goto LABEL_38;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  sub_29A19E500((a1 + 2));
  v12 = a1[2];
  if (v12 >= 4)
  {
    v13 = a1[6];
    v14 = v12 >> 2;
    do
    {
      v15 = *v13++;
      *v26 = v15;
      sub_29A85289C(v30, v26);
      --v14;
    }

    while (v14);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void sub_29AA6CCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AA6CDB0(void *a1, uint64_t a2)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v26, a1 + 12);
  if ((v26[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v26[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v28);
  if ((v26[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v25, a1 + 12);
    if (v25.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
      if (v26[0] != 1)
      {
        v6 = sub_29AABB028();
        v7 = v6;
        if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
        }

        if (*(v8 + 23) < 0)
        {
          sub_29A008D14(&v25, *v8, v8[1]);
        }

        else
        {
          v16 = *v8;
          v25.__r_.__value_.__r.__words[2] = v8[2];
          *&v25.__r_.__value_.__l.__data_ = v16;
        }

        v17 = std::string::insert(&v25, 0, "decode: unable to write data for ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v27 = v17->__r_.__value_.__r.__words[2];
        *v26 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v7, v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_29A008D14(__dst, v28, *(&v28 + 1));
  }

  else
  {
    *__dst = v28;
    v24 = v29;
  }

  if (sub_29AA696E4(__dst))
  {
    v5 = 1;
  }

  else
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_29A008D14(v21, v28, *(&v28 + 1));
    }

    else
    {
      *v21 = v28;
      v22 = v29;
    }

    if (sub_29AA69438(v21))
    {
      v5 = 1;
    }

    else
    {
      if (SHIBYTE(v29) < 0)
      {
        sub_29A008D14(__p, v28, *(&v28 + 1));
      }

      else
      {
        *__p = v28;
        v20 = v29;
      }

      v5 = sub_29AA69990(__p);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
    if (v5)
    {
LABEL_30:
      sub_29A19E500((a1 + 2));
      v9 = a1[2];
      if (v9 >= 4)
      {
        v10 = a1[6];
        v11 = v9 >> 2;
        do
        {
          *v26 = *v10;
          sub_29AA7E830(v30, v26);
          ++v10;
          --v11;
        }

        while (v11);
      }

      goto LABEL_38;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  sub_29A19E500((a1 + 2));
  v12 = a1[2];
  if (v12 >= 4)
  {
    v13 = a1[6];
    v14 = v12 >> 2;
    do
    {
      v15 = *v13++;
      *v26 = v15;
      sub_29AA7E830(v30, v26);
      --v14;
    }

    while (v14);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
}

void sub_29AA6D0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AA6D188(void *a1, uint64_t a2)
{
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v37);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v36 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v36 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_29A008D14(v32, v37, *(&v37 + 1));
  }

  else
  {
    *v32 = v37;
    v33 = v38;
  }

  if (sub_29AA696E4(v32))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v38) < 0)
    {
      sub_29A008D14(v30, v37, *(&v37 + 1));
    }

    else
    {
      *v30 = v37;
      v31 = v38;
    }

    if (sub_29AA69438(v30))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v38) < 0)
      {
        sub_29A008D14(v28, v37, *(&v37 + 1));
      }

      else
      {
        *v28 = v37;
        v29 = v38;
      }

      v12 = sub_29AA69990(v28);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            v18 = *(v15 + 4 * v14 + 4 * v17);
            if (v18 == 0.0)
            {
              v19 = HIWORD(LODWORD(v18));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23])
            {
              v19 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23] + (((LODWORD(v18) & 0x7FFFFF) + ((LODWORD(v18) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v19) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v18));
            }

            *(__p + v17) = v19;
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA7E8D8(v39, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_63;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v20 = a1[2];
  if (v20 >= 4)
  {
    v21 = 0;
    v22 = a1[6];
    v23 = v20 >> 2;
    do
    {
      v24 = 0;
      do
      {
        v25 = *(v22 + 4 * v21 + 4 * v24);
        v26 = COERCE_UNSIGNED_INT(v25);
        if (v25)
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v26 >> 23])
          {
            v27 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v26 >> 23] + (((v26 & 0x7FFFFF) + ((v26 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v27) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v26);
          }
        }

        else
        {
          v27 = v26 >> 16;
        }

        *(__p + v24) = v27;
        v24 = v24 + 1;
      }

      while (v5 != v24);
      sub_29AA7E8D8(v39, __p);
      v21 += v5;
    }

    while (v23 > v21);
  }

LABEL_63:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
}

void sub_29AA6D564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29AA6D63C(void *a1, uint64_t a2)
{
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v37);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v36 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v36 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_29A008D14(v32, v37, *(&v37 + 1));
  }

  else
  {
    *v32 = v37;
    v33 = v38;
  }

  if (sub_29AA696E4(v32))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v38) < 0)
    {
      sub_29A008D14(v30, v37, *(&v37 + 1));
    }

    else
    {
      *v30 = v37;
      v31 = v38;
    }

    if (sub_29AA69438(v30))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v38) < 0)
      {
        sub_29A008D14(v28, v37, *(&v37 + 1));
      }

      else
      {
        *v28 = v37;
        v29 = v38;
      }

      v12 = sub_29AA69990(v28);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            v18 = *(v15 + 4 * v14 + 4 * v17);
            if (v18 == 0.0)
            {
              v19 = HIWORD(LODWORD(v18));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23])
            {
              v19 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23] + (((LODWORD(v18) & 0x7FFFFF) + ((LODWORD(v18) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v19) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v18));
            }

            *(__p + v17) = v19;
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29A8F3EC0(v39, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_63;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v20 = a1[2];
  if (v20 >= 4)
  {
    v21 = 0;
    v22 = a1[6];
    v23 = v20 >> 2;
    do
    {
      v24 = 0;
      do
      {
        v25 = *(v22 + 4 * v21 + 4 * v24);
        v26 = COERCE_UNSIGNED_INT(v25);
        if (v25)
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v26 >> 23])
          {
            v27 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v26 >> 23] + (((v26 & 0x7FFFFF) + ((v26 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v27) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v26);
          }
        }

        else
        {
          v27 = v26 >> 16;
        }

        *(__p + v24) = v27;
        v24 = v24 + 1;
      }

      while (v5 != v24);
      sub_29A8F3EC0(v39, __p);
      v21 += v5;
    }

    while (v23 > v21);
  }

LABEL_63:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
}

void sub_29AA6DA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29AA6DAF0(void *a1, uint64_t a2)
{
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v37);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v36 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v36 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_29A008D14(v32, v37, *(&v37 + 1));
  }

  else
  {
    *v32 = v37;
    v33 = v38;
  }

  if (sub_29AA696E4(v32))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v38) < 0)
    {
      sub_29A008D14(v30, v37, *(&v37 + 1));
    }

    else
    {
      *v30 = v37;
      v31 = v38;
    }

    if (sub_29AA69438(v30))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v38) < 0)
      {
        sub_29A008D14(v28, v37, *(&v37 + 1));
      }

      else
      {
        *v28 = v37;
        v29 = v38;
      }

      v12 = sub_29AA69990(v28);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            v18 = *(v15 + 4 * v14 + 4 * v17);
            if (v18 == 0.0)
            {
              v19 = HIWORD(LODWORD(v18));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23])
            {
              v19 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23] + (((LODWORD(v18) & 0x7FFFFF) + ((LODWORD(v18) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v19) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v18));
            }

            *(__p + v17) = v19;
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA7E980(v39, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_63;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v20 = a1[2];
  if (v20 >= 4)
  {
    v21 = 0;
    v22 = a1[6];
    v23 = v20 >> 2;
    do
    {
      v24 = 0;
      do
      {
        v25 = *(v22 + 4 * v21 + 4 * v24);
        v26 = COERCE_UNSIGNED_INT(v25);
        if (v25)
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v26 >> 23])
          {
            v27 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v26 >> 23] + (((v26 & 0x7FFFFF) + ((v26 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v27) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v26);
          }
        }

        else
        {
          v27 = v26 >> 16;
        }

        *(__p + v24) = v27;
        v24 = v24 + 1;
      }

      while (v5 != v24);
      sub_29AA7E980(v39, __p);
      v21 += v5;
    }

    while (v23 > v21);
  }

LABEL_63:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
}

void sub_29AA6DECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29AA6DFA4(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *(__p + v17) = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA27424(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *(__p + v22) = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29AA27424(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
}

void sub_29AA6E2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29AA6E3C4(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *(__p + v17) = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29A8F3D60(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *(__p + v22) = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29A8F3D60(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void sub_29AA6E714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AA6E7E4(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *(__p + v17) = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA7EA28(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *(__p + v22) = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29AA7EA28(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
}

void sub_29AA6EB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AA6EC04(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *&__p[v17] = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29A8B06A0(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *&__p[v22] = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29A8B06A0(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
}

void sub_29AA6EF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29AA6F028(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *&__p[v17] = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA7EAD0(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *&__p[v22] = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29AA7EAD0(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
}

void sub_29AA6F37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AA6F44C(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v24 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v24 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v29, v32, *(&v32 + 1));
  }

  else
  {
    *v29 = v32;
    v30 = v33;
  }

  if (sub_29AA696E4(v29))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v27, v32, *(&v32 + 1));
    }

    else
    {
      *v27 = v32;
      v28 = v33;
    }

    if (sub_29AA69438(v27))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v25, v32, *(&v32 + 1));
      }

      else
      {
        *v25 = v32;
        v26 = v33;
      }

      v12 = sub_29AA69990(v25);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *&__p[v17] = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA7EB88(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *&__p[v22] = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29AA7EB88(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
}

void sub_29AA6F7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v39 - 113) < 0)
  {
    operator delete(*(v39 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AA6F870(void *a1, uint64_t a2)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v26, a1 + 12);
  if ((v26[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v26[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v28);
  if ((v26[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v25, a1 + 12);
    if (v25.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
      if (v26[0] != 1)
      {
        v6 = sub_29AABB028();
        v7 = v6;
        if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
        }

        if (*(v8 + 23) < 0)
        {
          sub_29A008D14(&v25, *v8, v8[1]);
        }

        else
        {
          v16 = *v8;
          v25.__r_.__value_.__r.__words[2] = v8[2];
          *&v25.__r_.__value_.__l.__data_ = v16;
        }

        v17 = std::string::insert(&v25, 0, "decode: unable to write data for ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v27 = v17->__r_.__value_.__r.__words[2];
        *v26 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v7, v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_29A008D14(__dst, v28, *(&v28 + 1));
  }

  else
  {
    *__dst = v28;
    v24 = v29;
  }

  if (sub_29AA696E4(__dst))
  {
    v5 = 1;
  }

  else
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_29A008D14(v21, v28, *(&v28 + 1));
    }

    else
    {
      *v21 = v28;
      v22 = v29;
    }

    if (sub_29AA69438(v21))
    {
      v5 = 1;
    }

    else
    {
      if (SHIBYTE(v29) < 0)
      {
        sub_29A008D14(__p, v28, *(&v28 + 1));
      }

      else
      {
        *__p = v28;
        v20 = v29;
      }

      v5 = sub_29AA69990(__p);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
    if (v5)
    {
LABEL_30:
      sub_29A19E500((a1 + 2));
      v9 = a1[2];
      if (v9 >= 4)
      {
        v10 = a1[6];
        v11 = v9 >> 2;
        do
        {
          LOBYTE(v26[0]) = *v10 != 0.0;
          sub_29A2CB240(v30, v26);
          ++v10;
          --v11;
        }

        while (v11);
      }

      goto LABEL_38;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  sub_29A19E500((a1 + 2));
  v12 = a1[2];
  if (v12 >= 4)
  {
    v13 = a1[6];
    v14 = v12 >> 2;
    do
    {
      v15 = *v13++;
      LOBYTE(v26[0]) = v15 != 0;
      sub_29A2CB240(v30, v26);
      --v14;
    }

    while (v14);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void sub_29AA6FB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29AA6FC50(void *a1, uint64_t a2)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v26, a1 + 12);
  if ((v26[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v26[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v28);
  if ((v26[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v25, a1 + 12);
    if (v25.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
      if (v26[0] != 1)
      {
        v6 = sub_29AABB028();
        v7 = v6;
        if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
        }

        if (*(v8 + 23) < 0)
        {
          sub_29A008D14(&v25, *v8, v8[1]);
        }

        else
        {
          v16 = *v8;
          v25.__r_.__value_.__r.__words[2] = v8[2];
          *&v25.__r_.__value_.__l.__data_ = v16;
        }

        v17 = std::string::insert(&v25, 0, "decode: unable to write data for ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v27 = v17->__r_.__value_.__r.__words[2];
        *v26 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v7, v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_29A008D14(__dst, v28, *(&v28 + 1));
  }

  else
  {
    *__dst = v28;
    v24 = v29;
  }

  if (sub_29AA696E4(__dst))
  {
    v5 = 1;
  }

  else
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_29A008D14(v21, v28, *(&v28 + 1));
    }

    else
    {
      *v21 = v28;
      v22 = v29;
    }

    if (sub_29AA69438(v21))
    {
      v5 = 1;
    }

    else
    {
      if (SHIBYTE(v29) < 0)
      {
        sub_29A008D14(__p, v28, *(&v28 + 1));
      }

      else
      {
        *__p = v28;
        v20 = v29;
      }

      v5 = sub_29AA69990(__p);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
    if (v5)
    {
LABEL_30:
      sub_29A19E500((a1 + 2));
      v9 = a1[2];
      if (v9 >= 4)
      {
        v10 = a1[6];
        v11 = v9 >> 2;
        do
        {
          LODWORD(v26[0]) = *v10;
          sub_29A7ACA64(v30, v26);
          ++v10;
          --v11;
        }

        while (v11);
      }

      goto LABEL_38;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  sub_29A19E500((a1 + 2));
  v12 = a1[2];
  if (v12 >= 4)
  {
    v13 = a1[6];
    v14 = v12 >> 2;
    do
    {
      v15 = *v13++;
      LODWORD(v26[0]) = v15;
      sub_29A7ACA64(v30, v26);
      --v14;
    }

    while (v14);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}