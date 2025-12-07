void sub_2599C3BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,MIL::Fp16>(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char **a4@<X2>, char **a5@<X3>, char **a6@<X4>, unint64_t a7@<X5>, int a8@<W6>, int a9@<W7>, float **a10, char a11, char a12, uint64_t a13)
{
  v79 = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = (a4[1] - *a4) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a6[1] - *a6) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a5;
  v20 = (a5[1] - *a5) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a6;
  v22 = (a6[1] - *a6) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<MIL::Fp16>::resize(a1, a7);
  v59 = **a4;
  v60 = *(*a4 + 1);
  v74 = *(*a4 + 4);
  v69 = *(*a5 + 1);
  v70 = **a5;
  v68 = *(*a5 + 2);
  v23 = **a6;
  v61 = *(*a6 + 1);
  v62 = *(*a4 + 2);
  v63 = *(*a6 + 2);
  v64 = *(*a6 + 3);
  v24 = *(*a6 + 4);
  v25 = ldexp(1.0, a8);
  v26 = exp2(-(a9 + a8));
  memset(&__src, 0, sizeof(__src));
  v66 = v24;
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v76 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v76);
    *v32.i32 = v31 * v28;
    v77 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v77, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v76 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v76);
      *&v77 = v57 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v77);
      ++v29;
    }
  }

  v75 = a5;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v58 = v23;
    while (!v61)
    {
LABEL_57:
      if (++v33 == v58)
      {
        goto LABEL_58;
      }
    }

    v35 = 0;
    while (!v63)
    {
LABEL_56:
      if (++v35 == v61)
      {
        goto LABEL_57;
      }
    }

    v36 = 0;
    while (!v64)
    {
LABEL_55:
      if (++v36 == v63)
      {
        goto LABEL_56;
      }
    }

    v37 = 0;
    while (!v66)
    {
LABEL_54:
      if (++v37 == v64)
      {
        goto LABEL_55;
      }
    }

    v38 = 0;
    while (1)
    {
      if (v74)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        do
        {
          if (!a11 || (v43 = a12, v39 != *(v75[1] - 2)))
          {
          }

          if (!v40 && a8 >= -20)
          {
            v44 = llroundf((v42 * v43) * v34) + v41;
            if (v44 <= 0x7FFFFFFF)
            {
              if (v44 >= 0xFFFFFFFF80000000)
              {
                v41 = v44;
              }

              else
              {
                v41 = -8388608;
              }

              v40 = 2 * (v44 < 0xFFFFFFFF80000000);
            }

            else
            {
              v40 = 1;
              v41 = 2139095040;
            }
          }

          ++v39;
        }

        while (v74 != v39);
        v45 = *&__src.__begin_[v38];
        if (v40)
        {
          v46 = INFINITY;
          if (v40 == 2)
          {
            v46 = -INFINITY;
          }

          goto LABEL_50;
        }

        if (v41)
        {
          v46 = v41;
LABEL_50:
          *&v77 = 0.0;
          v48 = frexp(v46, &v77);
          v49 = ldexp(v48, 11);
          v47 = ldexp(round(v49), v77 - 11);
          goto LABEL_51;
        }
      }

      else
      {
        v45 = *&__src.__begin_[v38];
      }

      v47 = 0.0;
LABEL_51:
      v50 = v45 * v47;
      v51 = 0.0;
      if (v50 != 0.0)
      {
        *&v77 = 0.0;
        v52 = frexp(v50, &v77);
        v53 = ldexp(v52, 11);
        v51 = ldexp(round(v53), v77 - 11);
      }

      v54 = std::function<float ()(float)>::operator()(a13, v51);
      v56 = MIL::Fp16::FromFloat(v54, v55);
      if (v38 == v66)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_58:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }
}

void sub_2599C4238(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char **a4@<X2>, char **a5@<X3>, char **a6@<X4>, size_t a7@<X5>, int a8@<W6>, int a9@<W7>, float **a10, char a11, char a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = (a4[1] - *a4) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a6[1] - *a6) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a5;
  v20 = (a5[1] - *a5) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a6;
  v22 = (a6[1] - *a6) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a7)
  {
    std::vector<unsigned char>::__append(a1, a7);
  }

  v59 = **a4;
  v60 = *(*a4 + 1);
  v74 = *(*a4 + 4);
  v69 = *(*a5 + 1);
  v70 = **a5;
  v68 = *(*a5 + 2);
  v23 = **a6;
  v61 = *(*a6 + 1);
  v62 = *(*a6 + 2);
  v24 = *(*a6 + 4);
  v63 = *(*a6 + 3);
  v64 = *(*a4 + 2);
  v25 = ldexp(1.0, a8);
  v26 = exp2(-(a9 + a8));
  memset(&__src, 0, sizeof(__src));
  v66 = v24;
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    v78 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v78, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&v78 = v57 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v78);
      ++v29;
    }
  }

  v76 = a5;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v58 = v23;
    while (!v61)
    {
LABEL_66:
      if (++v33 == v58)
      {
        goto LABEL_67;
      }
    }

    v35 = 0;
    while (!v62)
    {
LABEL_65:
      if (++v35 == v61)
      {
        goto LABEL_66;
      }
    }

    v36 = 0;
    while (!v63)
    {
LABEL_64:
      if (++v36 == v62)
      {
        goto LABEL_65;
      }
    }

    v75 = 0;
    while (!v66)
    {
LABEL_63:
      if (++v75 == v63)
      {
        goto LABEL_64;
      }
    }

    v37 = 0;
    while (1)
    {
      if (v74)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = a1;
          if (!a11 || (v43 = a12, v38 != *(v76[1] - 2)))
          {
          }

          if (!v39 && a8 >= -20)
          {
            v44 = llroundf((v42 * v43) * v34) + v40;
            if (v44 <= 0x7FFFFFFF)
            {
              if (v44 >= 0xFFFFFFFF80000000)
              {
                v40 = v44;
              }

              else
              {
                v40 = -8388608;
              }

              v39 = 2 * (v44 < 0xFFFFFFFF80000000);
            }

            else
            {
              v39 = 1;
              v40 = 2139095040;
            }
          }

          a1 = v41;
          ++v38;
        }

        while (v74 != v38);
        v45 = *&__src.__begin_[v37];
        if (v39)
        {
          v46 = INFINITY;
          if (v39 == 2)
          {
            v46 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v40)
        {
          v46 = v40;
LABEL_52:
          *&v78 = 0.0;
          v48 = frexp(v46, &v78);
          v49 = ldexp(v48, 11);
          v47 = ldexp(round(v49), v78 - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v45 = *&__src.__begin_[v37];
      }

      v47 = 0.0;
LABEL_53:
      v50 = v45 * v47;
      v51 = 0.0;
      if (v50 != 0.0)
      {
        *&v78 = 0.0;
        v52 = frexp(v50, &v78);
        v53 = ldexp(v52, 11);
        v51 = ldexp(round(v53), v78 - 11);
      }

      std::function<float ()(float)>::operator()(a13, v51);
      if (v54 == INFINITY)
      {
        LOBYTE(v55) = -1;
      }

      else if (v54 == -INFINITY)
      {
        LOBYTE(v55) = 0;
      }

      else
      {
        v56 = llroundf(v54);
        if (v56 >= 255)
        {
          v56 = 255;
        }

        v55 = v56 & ~(v56 >> 31);
      }

      if (v37 == v66)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_67:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }
}

void sub_2599C48F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,signed char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char **a4@<X2>, char **a5@<X3>, char **a6@<X4>, size_t a7@<X5>, int a8@<W6>, int a9@<W7>, float **a10, char a11, char a12, uint64_t a13)
{
  v79 = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = (a4[1] - *a4) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a6[1] - *a6) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a5;
  v20 = (a5[1] - *a5) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a6;
  v22 = (a6[1] - *a6) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a7)
  {
    std::vector<unsigned char>::__append(a1, a7);
  }

  v62 = *(*a4 + 2);
  v63 = *(*a4 + 1);
  v73 = *(*a4 + 4);
  v67 = *(*a5 + 1);
  v68 = **a5;
  v66 = *(*a5 + 2);
  v23 = **a6;
  v58 = **a4;
  v59 = *(*a6 + 1);
  v60 = *(*a6 + 2);
  v61 = *(*a6 + 3);
  v24 = *(*a6 + 4);
  v25 = ldexp(1.0, a8);
  v26 = exp2(-(a9 + a8));
  memset(&__src, 0, sizeof(__src));
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v76 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v76);
    *v32.i32 = v31 * v28;
    v77 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v77, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v76 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v76);
      *&v77 = v56 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v77);
      ++v29;
    }
  }

  v75 = a5;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v57 = v23;
    while (!v59)
    {
LABEL_68:
      if (++v33 == v57)
      {
        goto LABEL_69;
      }
    }

    v35 = 0;
    while (!v60)
    {
LABEL_67:
      if (++v35 == v59)
      {
        goto LABEL_68;
      }
    }

    v36 = 0;
    while (!v61)
    {
LABEL_66:
      if (++v36 == v60)
      {
        goto LABEL_67;
      }
    }

    v74 = 0;
    while (!v24)
    {
LABEL_65:
      if (++v74 == v61)
      {
        goto LABEL_66;
      }
    }

    v70 = 0;
    while (1)
    {
      if (v73)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        do
        {
          v40 = a1;
          if (!a11 || (v42 = a12, v37 != *(v75[1] - 2)))
          {
          }

          if (!v38 && a8 >= -20)
          {
            v43 = llroundf((v41 * v42) * v34) + v39;
            if (v43 <= 0x7FFFFFFF)
            {
              if (v43 >= 0xFFFFFFFF80000000)
              {
                v39 = v43;
              }

              else
              {
                v39 = -8388608;
              }

              v38 = 2 * (v43 < 0xFFFFFFFF80000000);
            }

            else
            {
              v38 = 1;
              v39 = 2139095040;
            }
          }

          a1 = v40;
          ++v37;
        }

        while (v73 != v37);
        v44 = *&__src.__begin_[v70];
        if (v38)
        {
          v45 = INFINITY;
          if (v38 == 2)
          {
            v45 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v39)
        {
          v45 = v39;
LABEL_52:
          *&v77 = 0.0;
          v47 = frexp(v45, &v77);
          v48 = ldexp(v47, 11);
          v46 = ldexp(round(v48), v77 - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v44 = *&__src.__begin_[v70];
      }

      v46 = 0.0;
LABEL_53:
      v49 = v44 * v46;
      v50 = 0.0;
      if (v49 != 0.0)
      {
        *&v77 = 0.0;
        v51 = frexp(v49, &v77);
        v52 = ldexp(v51, 11);
        v50 = ldexp(round(v52), v77 - 11);
      }

      std::function<float ()(float)>::operator()(a13, v50);
      if (v53 == INFINITY)
      {
        v54 = 127;
      }

      else if (v53 == -INFINITY)
      {
        v54 = 0x80;
      }

      else
      {
        v55 = llroundf(v53);
        if (v55 >= 127)
        {
          v55 = 127;
        }

        if (v55 <= -128)
        {
          v54 = 0x80;
        }

        else
        {
          v54 = v55;
        }
      }

      if (v70 == v24)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_69:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }
}

void sub_2599C4FBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,MIL::Fp16>(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char **a4@<X2>, char **a5@<X3>, char **a6@<X4>, unint64_t a7@<X5>, int a8@<W6>, int a9@<W7>, float **a10, char a11, char a12, uint64_t a13)
{
  v82 = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = (a4[1] - *a4) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a6[1] - *a6) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a5;
  v21 = (a5[1] - *a5) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a6;
  v23 = (a6[1] - *a6) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<MIL::Fp16>::resize(a1, a7);
  v60 = **a4;
  v61 = *(*a4 + 1);
  v63 = *(*a4 + 2);
  v77 = *(*a4 + 4);
  v73 = *(*a5 + 1);
  v74 = **a5;
  v72 = *(*a5 + 2);
  v24 = **a6;
  v62 = *(*a6 + 1);
  v64 = *(*a6 + 2);
  v65 = *(*a6 + 3);
  v25 = *(*a6 + 4);
  v26 = exp2(-(a9 + a8));
  memset(&__src, 0, sizeof(__src));
  v67 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v79 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v79);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v67, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v79 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v79);
      *&__e = v58 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  v78 = a5;
  if (v24)
  {
    v33 = 0;
    v69 = -a8;
    v68 = 1 << ~a8;
    v70 = a8;
    v59 = v24;
    while (!v62)
    {
LABEL_59:
      if (++v33 == v59)
      {
        goto LABEL_60;
      }
    }

    v34 = 0;
    while (!v64)
    {
LABEL_58:
      if (++v34 == v62)
      {
        goto LABEL_59;
      }
    }

    v35 = 0;
    while (!v65)
    {
LABEL_57:
      if (++v35 == v64)
      {
        goto LABEL_58;
      }
    }

    v36 = 0;
    while (!v67)
    {
LABEL_56:
      if (++v36 == v65)
      {
        goto LABEL_57;
      }
    }

    v37 = 0;
    while (1)
    {
      if (v77)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          if (!a11 || (v42 = a12, v38 != *(v78[1] - 2)))
          {
          }

          if (!v39)
          {
            v43 = v42 * v41;
            if (v70)
            {
              v44 = (v43 + v68) >> v69;
              v43 <<= v70;
              if (v70 < 1)
              {
                v43 = v44;
              }
            }

            v45 = v40 + v43;
            if (v45 <= 0x7FFFFFFF)
            {
              if (v45 >= 0xFFFFFFFF80000000)
              {
                v40 = v45;
              }

              else
              {
                v40 = -8388608;
              }

              v39 = 2 * (v45 < 0xFFFFFFFF80000000);
            }

            else
            {
              v39 = 1;
              v40 = 2139095040;
            }
          }

          ++v38;
        }

        while (v77 != v38);
        v46 = *&__src.__begin_[v37];
        if (v39)
        {
          v47 = INFINITY;
          if (v39 == 2)
          {
            v47 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v40)
        {
          v47 = v40;
LABEL_52:
          *&__e = 0.0;
          v49 = frexp(v47, &__e);
          v50 = ldexp(v49, 11);
          v48 = ldexp(round(v50), __e - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v46 = *&__src.__begin_[v37];
      }

      v48 = 0.0;
LABEL_53:
      v51 = v46 * v48;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        *&__e = 0.0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      v55 = std::function<float ()(float)>::operator()(a13, v52);
      v57 = MIL::Fp16::FromFloat(v55, v56);
      if (v37 == v67)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_60:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }
}

void sub_2599C5638(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,unsigned char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char **a4@<X2>, char **a5@<X3>, char **a6@<X4>, size_t a7@<X5>, int a8@<W6>, int a9@<W7>, float **a10, char a11, char a12, uint64_t a13)
{
  v79 = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = (a4[1] - *a4) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a6[1] - *a6) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a5;
  v21 = (a5[1] - *a5) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a6;
  v23 = (a6[1] - *a6) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a7)
  {
    std::vector<unsigned char>::__append(a1, a7);
  }

  v61 = *(*a4 + 1);
  v62 = **a4;
  v60 = *(*a4 + 2);
  v73 = *(*a4 + 4);
  v75 = a5;
  v67 = *(*a5 + 1);
  v68 = **a5;
  v66 = *(*a5 + 2);
  v24 = **a6;
  v57 = *(*a6 + 1);
  v58 = *(*a6 + 2);
  v59 = *(*a6 + 3);
  v25 = *(*a6 + 4);
  v26 = exp2(-(a9 + a8));
  memset(&__src, 0, sizeof(__src));
  v64 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v76 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v76);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v64, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v76 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v76);
      *&__e = v55 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v24)
  {
    v69 = 0;
    v56 = v24;
    while (!v57)
    {
LABEL_68:
      if (++v69 == v56)
      {
        goto LABEL_69;
      }
    }

    v33 = 0;
    while (!v58)
    {
LABEL_67:
      if (++v33 == v57)
      {
        goto LABEL_68;
      }
    }

    v34 = 0;
    while (!v59)
    {
LABEL_66:
      if (++v34 == v58)
      {
        goto LABEL_67;
      }
    }

    v74 = 0;
    while (!v64)
    {
LABEL_65:
      if (++v74 == v59)
      {
        goto LABEL_66;
      }
    }

    v70 = 0;
    while (1)
    {
      if (v73)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        do
        {
          if (!a11 || (v39 = a12, v35 != *(v75[1] - 2)))
          {
          }

          if (!v36)
          {
            v40 = v39 * v38;
            if (a8)
            {
              v41 = (v40 + (1 << ~a8)) >> -a8;
              v40 <<= a8;
              if (a8 < 1)
              {
                v40 = v41;
              }
            }

            v42 = v37 + v40;
            if (v42 <= 0x7FFFFFFF)
            {
              if (v42 >= 0xFFFFFFFF80000000)
              {
                v37 = v42;
              }

              else
              {
                v37 = -8388608;
              }

              v36 = 2 * (v42 < 0xFFFFFFFF80000000);
            }

            else
            {
              v36 = 1;
              v37 = 2139095040;
            }
          }

          ++v35;
        }

        while (v73 != v35);
        v43 = *&__src.__begin_[v70];
        if (v36)
        {
          v44 = INFINITY;
          if (v36 == 2)
          {
            v44 = -INFINITY;
          }

          goto LABEL_54;
        }

        if (v37)
        {
          v44 = v37;
LABEL_54:
          *&__e = 0.0;
          v46 = frexp(v44, &__e);
          v47 = ldexp(v46, 11);
          v45 = ldexp(round(v47), __e - 11);
          goto LABEL_55;
        }
      }

      else
      {
        v43 = *&__src.__begin_[v70];
      }

      v45 = 0.0;
LABEL_55:
      v48 = v43 * v45;
      v49 = 0.0;
      if (v48 != 0.0)
      {
        *&__e = 0.0;
        v50 = frexp(v48, &__e);
        v51 = ldexp(v50, 11);
        v49 = ldexp(round(v51), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v49);
      if (v52 == INFINITY)
      {
        LOBYTE(v53) = -1;
      }

      else if (v52 == -INFINITY)
      {
        LOBYTE(v53) = 0;
      }

      else
      {
        v54 = llroundf(v52);
        if (v54 >= 255)
        {
          v54 = 255;
        }

        v53 = v54 & ~(v54 >> 31);
      }

      if (v70 == v64)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_69:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }
}

void sub_2599C5D04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char **a4@<X2>, char **a5@<X3>, char **a6@<X4>, size_t a7@<X5>, int a8@<W6>, int a9@<W7>, float **a10, char a11, char a12, uint64_t a13)
{
  v79 = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = (a4[1] - *a4) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a6[1] - *a6) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a5;
  v21 = (a5[1] - *a5) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a6;
  v23 = (a6[1] - *a6) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a6, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a7)
  {
    std::vector<unsigned char>::__append(a1, a7);
  }

  v61 = *(*a4 + 1);
  v62 = **a4;
  v60 = *(*a4 + 2);
  v73 = *(*a4 + 4);
  v75 = a5;
  v67 = *(*a5 + 1);
  v68 = **a5;
  v66 = *(*a5 + 2);
  v24 = **a6;
  v57 = *(*a6 + 1);
  v58 = *(*a6 + 2);
  v59 = *(*a6 + 3);
  v25 = *(*a6 + 4);
  v26 = exp2(-(a9 + a8));
  memset(&__src, 0, sizeof(__src));
  v64 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v76 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v76);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v64, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v76 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v76);
      *&__e = v55 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v24)
  {
    v69 = 0;
    v56 = v24;
    while (!v57)
    {
LABEL_70:
      if (++v69 == v56)
      {
        goto LABEL_71;
      }
    }

    v33 = 0;
    while (!v58)
    {
LABEL_69:
      if (++v33 == v57)
      {
        goto LABEL_70;
      }
    }

    v34 = 0;
    while (!v59)
    {
LABEL_68:
      if (++v34 == v58)
      {
        goto LABEL_69;
      }
    }

    v74 = 0;
    while (!v64)
    {
LABEL_67:
      if (++v74 == v59)
      {
        goto LABEL_68;
      }
    }

    v70 = 0;
    while (1)
    {
      if (v73)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        do
        {
          if (!a11 || (v39 = a12, v35 != *(v75[1] - 2)))
          {
          }

          if (!v36)
          {
            v40 = v39 * v38;
            if (a8)
            {
              v41 = (v40 + (1 << ~a8)) >> -a8;
              v40 <<= a8;
              if (a8 < 1)
              {
                v40 = v41;
              }
            }

            v42 = v37 + v40;
            if (v42 <= 0x7FFFFFFF)
            {
              if (v42 >= 0xFFFFFFFF80000000)
              {
                v37 = v42;
              }

              else
              {
                v37 = -8388608;
              }

              v36 = 2 * (v42 < 0xFFFFFFFF80000000);
            }

            else
            {
              v36 = 1;
              v37 = 2139095040;
            }
          }

          ++v35;
        }

        while (v73 != v35);
        v43 = *&__src.__begin_[v70];
        if (v36)
        {
          v44 = INFINITY;
          if (v36 == 2)
          {
            v44 = -INFINITY;
          }

          goto LABEL_54;
        }

        if (v37)
        {
          v44 = v37;
LABEL_54:
          *&__e = 0.0;
          v46 = frexp(v44, &__e);
          v47 = ldexp(v46, 11);
          v45 = ldexp(round(v47), __e - 11);
          goto LABEL_55;
        }
      }

      else
      {
        v43 = *&__src.__begin_[v70];
      }

      v45 = 0.0;
LABEL_55:
      v48 = v43 * v45;
      v49 = 0.0;
      if (v48 != 0.0)
      {
        *&__e = 0.0;
        v50 = frexp(v48, &__e);
        v51 = ldexp(v50, 11);
        v49 = ldexp(round(v51), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v49);
      if (v52 == INFINITY)
      {
        v53 = 127;
      }

      else if (v52 == -INFINITY)
      {
        v53 = 0x80;
      }

      else
      {
        v54 = llroundf(v52);
        if (v54 >= 127)
        {
          v54 = 127;
        }

        if (v54 <= -128)
        {
          v53 = 0x80;
        }

        else
        {
          v53 = v54;
        }
      }

      if (v70 == v64)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_71:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }
}

void sub_2599C63D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599C6494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ANEMachineIR::Interpreter::anonymous namespace::GetRank5TensorIndex(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1[1] - *a1 != 40)
  {
  }

  return a6 + (a5 + (a4 + *(*a1 + 16) * a3 + *(*a1 + 8) * a2 * *(*a1 + 16)) * *(*a1 + 24)) * *(*a1 + 32);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16>()
{
  __assert_rtn("ComputeValue", "NeBatchMatmulCpu.cpp", 65, "o_shape.size() >= 3 && o_shape.size() <= 5");
}

{
  __assert_rtn("ComputeValue", "NeBatchMatmulCpu.cpp", 64, "y_shape.size() >= 3 && y_shape.size() <= 5");
}

{
  __assert_rtn("ComputeValue", "NeBatchMatmulCpu.cpp", 63, "x_shape.size() >= 3 && x_shape.size() <= 5");
}

void MilTranslator::MilTranslator::~MilTranslator(MilTranslator::MilTranslator *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *MilTranslator::MilTranslator::MilTranslator(void *result, void *a2, uint64_t a3, void *a4)
{
  v4 = a2[1];
  *result = *a2;
  result[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = a3;
  v5 = a4[1];
  result[3] = *a4;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MilTranslator::MilTranslator::Compile(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  (*(**a1 + 48))(&v27);
  Function = MIL::IRProgram::GetFunction();
  v24 = v27;
  v25 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  v22 = *a1;
  v23 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MilTranslator::OpTranslator::OpTranslator(v26, &v24, &v22, a4, a1[2], a3, 1);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  MilTranslator::OpTranslator::Translate(v26, Function, a5);
  if (!*a5)
  {
    if (*(a5 + 31) < 0)
    {
      operator delete(*(a5 + 8));
    }

    MilTranslator::OpTranslator::GetBlockBuilder(v26, &v20);
    v12 = a1[3];
    v18 = v20;
    v19 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MilTranslator::Passes::PassManager::Run(v12, &v18, a5);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (!*a5)
    {
      if (*(a5 + 31) < 0)
      {
        operator delete(*(a5 + 8));
      }

      v13 = (*(*Function + 128))(Function);
      std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](v17, v13);
      v14 = (*(*Function + 40))(Function);
      v15 = (*(*v14 + 88))(v14);
      memset(v16, 0, sizeof(v16));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v16, *v15, v15[1], 0xAAAAAAAAAAAAAAABLL * ((v15[1] - *v15) >> 3));
      MilTranslator::OpTranslator::ConstructProgram(v26, a2, v17, v16, a5);
      if (!*a5)
      {
        if (*(a5 + 31) < 0)
        {
          operator delete(*(a5 + 8));
        }

        *a5 = 0;
        std::string::basic_string[abi:ne200100]<0>((a5 + 8), &unk_259A4D977);
      }

      v29 = v16;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v17, v17[1]);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  MilTranslator::OpTranslator::~OpTranslator(v26);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_2599C68B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, char *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, std::__shared_weak_count *);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  *(v10 - 72) = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v10 - 72));
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(va, v15);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  MilTranslator::OpTranslator::~OpTranslator(va1);
  v12 = *(v10 - 80);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void sub_2599C69E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MilTranslator::RegisterDefaultOptimizationPasses(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2599C6BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = *v18;
  *v18 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  MilTranslator::MilTranslator::~MilTranslator(&a17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void MilTranslator::TranslateProgram(uint64_t a1)
{
  MIL::MILContext::Make(&v11, a1);
  if (v11)
  {
    operator new();
  }

  v7 = register_aneflow_opsets(0, v6);
  MIL::ParserOptions::Make(&v11, v7);
  v8 = v11;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a1, *(a1 + 8));
  }

  else
  {
    v10 = *a1;
  }

  (*(*v8 + 48))(v8, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  (*(*v11 + 64))(v11, 1);
  MIL::Text::ParseProgramFromFile();
  if (v9)
  {
    operator new();
  }

  MilTranslator::TranslateProgram();
}

void sub_2599C6EB4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a14)
  {
    (*(*a14 + 8))(a14, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::CheckSupportedOps()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Not implemented.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Not implemented.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,MIL::IRValueType const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,MIL::IRValueType const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(void *a1, void *a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__construct_node<std::pair<std::string const,MIL::IRValueType const*> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(void *a1, void *a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a2 + 4, a5))
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
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, v15 + 4))
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

  if (std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_2599C73F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
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

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
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
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

MilTranslator::Passes::FuseConvScale *MilTranslator::Passes::FuseConvScale::FuseConvScale(MilTranslator::Passes::FuseConvScale *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FuseConvScale");
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  MilTranslator::Passes::Pass::Pass(this, __p, v3);
  *this = &unk_286AB1E58;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_286AB28A0;
  return this;
}

void sub_2599C7880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MilTranslator::Passes::Pass::Pass(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_286AB1EB8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  std::unordered_set<std::string>::unordered_set(a1 + 32, a3);
  return a1;
}

void sub_2599C792C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::Passes::PatternPass::Apply(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  while (1)
  {
    v6 = a2[1];
    v10 = *a2;
    v11 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 24))(v12, a1, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12[0] == v12[1])
    {
      v13 = v12;
      std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v13);
      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      return;
    }

    v7 = a2[1];
    v8 = *a2;
    v9 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 32))(a1, &v8, v12);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (*a3)
    {
      break;
    }

    if (*(a3 + 31) < 0)
    {
      operator delete(*(a3 + 8));
    }

    v13 = v12;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  v13 = v12;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_2599C7AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a16 = &a13;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

void std::__shared_ptr_emplace<MilTranslator::Passes::PassManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286AB1EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

void MilTranslator::Passes::PassManager::~PassManager(MilTranslator::Passes::PassManager *this)
{
  *this = &unk_286AB1F30;
  v1 = (this + 8);
  std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_286AB1F30;
  v2 = (this + 8);
  std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x259CA9760](this, 0xA1C4030951706);
}

void std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::clear[abi:ne200100](void *result)
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
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__shared_ptr_pointer<MIL::MILContext  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::IRProgram  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::Validators::ValidateBaseActivation(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v50, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 96))(v5);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v53, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50);
  }

  v7 = (*(*a1 + 176))(a1);
  if (*(v7 + 8) == *v7)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v7);
  v9 = MIL::IRValueType::AsTensorType(Type);
  v10 = (*(*v9 + 96))(v9);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v50, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  if (v51 - v50 != v54 - v53)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v24 = LocationPtr[1];
    v48 = *LocationPtr;
    v49 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v46, "Activation input and output must have same rank.");
    MEMORY[0x259CA8EE0](a2, &v48, 319, v46);
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    v25 = v49;
    if (!v49)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v54 != v53)
  {
    v11 = 0;
    if (((v54 - v53) >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v54 - v53) >> 3;
    }

    while (1)
    {
      if (v11 >= (v54 - v53) >> 3)
      {
        goto LABEL_51;
      }

      if (!(*(*v53[v11] + 16))(v53[v11]))
      {
        break;
      }

      if (v11 >= (v51 - v50) >> 3)
      {
LABEL_51:
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      if (!(*(**(v50 + v11) + 16))(*(v50 + v11)))
      {
        break;
      }

      if (v11 >= (v51 - v50) >> 3)
      {
        goto LABEL_51;
      }

      v13 = MIL::IRDimension::AsConstant(*(v50 + v11));
      v14 = (*(*v13 + 48))(v13);
      if (v11 >= (v54 - v53) >> 3)
      {
        goto LABEL_51;
      }

      v15 = v14;
      v16 = MIL::IRDimension::AsConstant(v53[v11]);
      if (v15 != (*(*v16 + 48))(v16))
      {
        v30 = MIL::IRObject::GetLocationPtr(a1);
        v31 = v30[1];
        v40 = *v30;
        v41 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v38, "Activation input and output must have same shape.");
        MEMORY[0x259CA8EE0](a2, &v40, 319, v38);
        if (v39 < 0)
        {
          operator delete(v38[0]);
        }

        v25 = v41;
        if (v41)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (v12 == ++v11)
      {
        goto LABEL_17;
      }
    }

    v26 = MIL::IRObject::GetLocationPtr(a1);
    v27 = v26[1];
    v44 = *v26;
    v45 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "Activation input and output must have known shape.");
    MEMORY[0x259CA8EE0](a2, &v44, 319, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v25 = v45;
    if (v45)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v17 = MIL::IROperation::GetParameterType();
  v18 = MIL::IRValueType::AsTensorType(v17);
  v19 = (*(*v18 + 88))(v18);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  v20 = (*(*a1 + 176))(a1);
  if (*(v20 + 8) == *v20)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = MIL::IRNamedValueType::GetType(**v20);
  v22 = MIL::IRValueType::AsTensorType(v21);
  if (v19 == (*(*v22 + 88))(v22))
  {
    MIL::ValidationResult::ValidationResult(a2);
    goto LABEL_28;
  }

  v28 = MIL::IRObject::GetLocationPtr(a1);
  v29 = v28[1];
  v34 = *v28;
  v35 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "Activation inputs and outputs must have same data type.");
  MEMORY[0x259CA8EE0](a2, &v34, 304, v32);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v25 = v35;
  if (v35)
  {
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

LABEL_28:
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

void sub_2599C8430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  v41 = *(v39 - 96);
  if (v41)
  {
    *(v39 - 88) = v41;
    operator delete(v41);
  }

  v42 = *(v39 - 72);
  if (v42)
  {
    *(v39 - 64) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Validators::ValidateLinear@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  ANEMachineIR::Validators::ValidateBaseActivation(a1, v5);
  if (MIL::ValidationResult::IsGood(v5))
  {
    MIL::ValidationResult::ValidationResult(a2);
  }

  else
  {
    v3 = v7;
    *(a2 + 8) = v6;
    v6 = 0uLL;
    *(a2 + 24) = v3;
    *(a2 + 40) = v8;
    v7 = 0uLL;
    v8 = 0;
    *a2 = MEMORY[0x277D24E58] + 16;
    *(a2 + 48) = v9;
  }

  return MEMORY[0x259CA8F00](v5);
}

uint64_t ANEMachineIR::Validators::ValidateLrelu@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  ANEMachineIR::Validators::ValidateBaseActivation(a1, v24);
  if ((MIL::ValidationResult::IsGood(v24) & 1) == 0)
  {
    *(a2 + 8) = v25;
    v25 = 0uLL;
    *(a2 + 24) = v26;
    *(a2 + 40) = v27;
    v26 = 0uLL;
    v27 = 0;
    *a2 = MEMORY[0x277D24E58] + 16;
    *(a2 + 48) = v28;
    return MEMORY[0x259CA8F00](v24);
  }

  v23 = 1.0;
  v22 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(a1, &v22, &v23, a2);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    if (v22 != 1 || v23 == 1.0)
    {
      v15 = 0.3;
      v14 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
      MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(a1, &v14, &v15, a2);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (MIL::ValidationResult::IsGood(a2))
      {
        MEMORY[0x259CA8F00](a2);
        if (v14 != 1 || v15 > 0.0 && v15 < 1.0)
        {
          MIL::ValidationResult::ValidationResult(a2);
          return MEMORY[0x259CA8F00](v24);
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(a1);
        v9 = LocationPtr[1];
        v12 = *LocationPtr;
        v13 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v10, "Alpha is out of range (0 < alpha < 1).");
        MEMORY[0x259CA8EE0](a2, &v12, 319, v10);
        if (v11 < 0)
        {
          operator delete(v10[0]);
        }

        v6 = v13;
        if (v13)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v4 = MIL::IRObject::GetLocationPtr(a1);
      v5 = v4[1];
      v18 = *v4;
      v19 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v16, "Scale must be 1, otherwise convert scale into post_scale and alpha. This restriction is an arbitrary behavior of pyANE compiler");
      MEMORY[0x259CA8EE0](a2, &v18, 319, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v6 = v19;
      if (v19)
      {
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  return MEMORY[0x259CA8F00](v24);
}

void sub_2599C8848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MEMORY[0x259CA8F00](v31 - 72);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(MIL::IRObject *a1@<X0>, _BYTE *a3@<X2>, _DWORD *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    *a3 = 0;
    goto LABEL_25;
  }

  if ((*(*ParameterValue + 40))(ParameterValue))
  {
    v10 = MEMORY[0x259CA9400]();
    if (v10)
    {
      *a4 = *v10;
      *a3 = 1;
LABEL_25:

      MIL::ValidationResult::ValidationResult(a5);
      return;
    }
  }

  *a3 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v12 = LocationPtr[1];
  v28 = *LocationPtr;
  v29 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v13 = std::string::append(&v23, " in operation ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = (*(*a1 + 56))(a1);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  v19 = std::string::append(&v24, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v25, ".");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v27 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a5, &v28, 304, __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }
}

void sub_2599C8B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v37 = *(v35 - 56);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Validators::ValidateNePiecewiseV2@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  ANEMachineIR::Validators::ValidateBaseActivation(a1, v109);
  if ((MIL::ValidationResult::IsGood(v109) & 1) == 0)
  {
    v39 = v111;
    *(a2 + 8) = v110;
    v110 = 0uLL;
    *(a2 + 24) = v39;
    *(a2 + 40) = v112;
    v111 = 0uLL;
    v112 = 0;
    *a2 = MEMORY[0x277D24E58] + 16;
    *(a2 + 48) = v113;
    return MEMORY[0x259CA8F00](v109);
  }

  v4 = std::string::basic_string[abi:ne200100]<0>(&v107, "x_sat_left");
  v5 = MIL::Fp16::FromFloat(v4, 0.0);
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue))
    {
      v7 = MEMORY[0x259CA93C0]();
      if (v7)
      {
        v5 = *v7;
      }
    }
  }

  v108 = v5;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(&v107, "x_sat_right");
  v9 = MIL::Fp16::FromFloat(v8, 0.0);
  v10 = MIL::IROperation::TryGetParameterValue();
  if (v10)
  {
    if ((*(*v10 + 40))(v10))
    {
      v11 = MEMORY[0x259CA93C0]();
      if (v11)
      {
        v9 = *v11;
      }
    }
  }

  v106 = v9;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&v107, "y_sat_left");
  v13 = MIL::Fp16::FromFloat(v12, 0.0);
  v14 = MIL::IROperation::TryGetParameterValue();
  if (v14)
  {
    if ((*(*v14 + 40))(v14))
    {
      v15 = MEMORY[0x259CA93C0]();
      if (v15)
      {
        v13 = *v15;
      }
    }
  }

  v105 = v13;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v16 = std::string::basic_string[abi:ne200100]<0>(&v107, "y_sat_right");
  v17 = MIL::Fp16::FromFloat(v16, 0.0);
  v18 = MIL::IROperation::TryGetParameterValue();
  if (v18)
  {
    if ((*(*v18 + 40))(v18))
    {
      v19 = MEMORY[0x259CA93C0]();
      if (v19)
      {
        v17 = *v19;
      }
    }
  }

  v104 = v17;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v20 = std::string::basic_string[abi:ne200100]<0>(&v107, "slope_left");
  v21 = MIL::Fp16::FromFloat(v20, 0.0);
  v22 = MIL::IROperation::TryGetParameterValue();
  if (v22)
  {
    if ((*(*v22 + 40))(v22))
    {
      v23 = MEMORY[0x259CA93C0]();
      if (v23)
      {
        v21 = *v23;
      }
    }
  }

  v103 = v21;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v24 = std::string::basic_string[abi:ne200100]<0>(&v107, "slope_right");
  v25 = MIL::Fp16::FromFloat(v24, 0.0);
  v26 = MIL::IROperation::TryGetParameterValue();
  if (v26)
  {
    if ((*(*v26 + 40))(v26))
    {
      v27 = MEMORY[0x259CA93C0]();
      if (v27)
      {
        v25 = *v27;
      }
    }
  }

  v102 = v25;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v28 = std::string::basic_string[abi:ne200100]<0>(&v107, "intercept_left");
  v29 = MIL::Fp16::FromFloat(v28, 0.0);
  v30 = MIL::IROperation::TryGetParameterValue();
  if (v30)
  {
    if ((*(*v30 + 40))(v30))
    {
      v31 = MEMORY[0x259CA93C0]();
      if (v31)
      {
        v29 = *v31;
      }
    }
  }

  v101 = v29;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v32 = std::string::basic_string[abi:ne200100]<0>(&v107, "intercept_right");
  v33 = MIL::Fp16::FromFloat(v32, 0.0);
  v34 = MIL::IROperation::TryGetParameterValue();
  if (v34)
  {
    if ((*(*v34 + 40))(v34))
    {
      v35 = MEMORY[0x259CA93C0]();
      if (v35)
      {
        v33 = *v35;
      }
    }
  }

  v100 = v33;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v107, "in_abs");
  v36 = MIL::IROperation::TryGetParameterValue();
  if (v36 && (*(*v36 + 40))(v36) && (v37 = MEMORY[0x259CA93F0]()) != 0)
  {
    v38 = *v37;
  }

  else
  {
    v38 = 0;
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v98, "lut_mode");
  std::string::basic_string[abi:ne200100]<0>(&v97, "sqrt");
  v40 = MIL::IROperation::TryGetParameterValue();
  if (v40 && (*(*v40 + 40))(v40) && (v41 = MEMORY[0x259CA93D0]()) != 0)
  {
    if (*(v41 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v107, *v41, *(v41 + 8));
    }

    else
    {
      v42 = *v41;
      v107.__r_.__value_.__r.__words[2] = *(v41 + 16);
      *&v107.__r_.__value_.__l.__data_ = v42;
    }
  }

  else
  {
    v107 = v97;
    memset(&v97, 0, sizeof(v97));
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  MIL::Fp16::GetFloat(&v108);
  v44 = v43;
  MIL::Fp16::GetFloat(&v106);
  if (v44 >= v45)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v51 = LocationPtr[1];
    v95 = *LocationPtr;
    v96 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v93, "x_sat_left should be smaller than x_sat_right");
    MEMORY[0x259CA8EE0](a2, &v95, 319, v93);
    if (v94 < 0)
    {
      operator delete(v93[0]);
    }

    v49 = v96;
    if (!v96)
    {
      goto LABEL_82;
    }

LABEL_81:
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    goto LABEL_82;
  }

  MIL::Fp16::GetFloat(&v108);
  MIL::Fp16::GetFloat(&v106);
  MIL::Fp16::GetFloat(&v105);
  MIL::Fp16::GetFloat(&v104);
  MIL::Fp16::GetFloat(&v103);
  MIL::Fp16::GetFloat(&v103);
  if (fabsf(v46) == INFINITY)
  {
    v47 = MIL::IRObject::GetLocationPtr(a1);
    v48 = v47[1];
    v91 = *v47;
    v92 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "slope_left should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v91, 319, __p);
    if (v90 < 0)
    {
      operator delete(__p[0]);
    }

    v49 = v92;
    if (!v92)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  MIL::Fp16::GetFloat(&v102);
  MIL::Fp16::GetFloat(&v102);
  if (fabsf(v53) == INFINITY)
  {
    v54 = MIL::IRObject::GetLocationPtr(a1);
    v55 = v54[1];
    v87 = *v54;
    v88 = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v85, "slope_right should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v87, 319, v85);
    if (v86 < 0)
    {
      operator delete(v85[0]);
    }

    v49 = v88;
    if (!v88)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  MIL::Fp16::GetFloat(&v101);
  MIL::Fp16::GetFloat(&v101);
  if (fabsf(v56) == INFINITY)
  {
    v57 = MIL::IRObject::GetLocationPtr(a1);
    v58 = v57[1];
    v83 = *v57;
    v84 = v58;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v81, "intercept_left should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v83, 319, v81);
    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    v49 = v84;
    if (!v84)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  MIL::Fp16::GetFloat(&v100);
  MIL::Fp16::GetFloat(&v100);
  if (fabsf(v59) == INFINITY)
  {
    v60 = MIL::IRObject::GetLocationPtr(a1);
    v61 = v60[1];
    v79 = *v60;
    v80 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v77, "intercept_right should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v79, 319, v77);
    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v49 = v80;
    if (!v80)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v62 = !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "frac") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "int");
  v63 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "inv") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "log2") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "sqr") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "sqrt") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "rsqrt");
  if (((v62 | v38) & 1) == 0)
  {
    v67 = MIL::IRObject::GetLocationPtr(a1);
    v68 = v67[1];
    v75 = *v67;
    v76 = v68;
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v73, "If lut_mode is FRAC or INT then in_abs must be True.");
    MEMORY[0x259CA8EE0](a2, &v75, 319, v73);
    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    v49 = v76;
    if (!v76)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v63)
  {
    MIL::Fp16::GetFloat(&v108);
    if (v64 < 0.0)
    {
      v65 = MIL::IRObject::GetLocationPtr(a1);
      v66 = v65[1];
      v71 = *v65;
      v72 = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v69, "If lut_mode is INV, LOG2, SQR, SQRT, RSQRT, then x_sat_left should be non-negative");
      MEMORY[0x259CA8EE0](a2, &v71, 319, v69);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }

      v49 = v72;
      if (!v72)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }
  }

  MIL::ValidationResult::ValidationResult(a2);
LABEL_82:
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x259CA8F00](v109);
}

void sub_2599C9718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, std::__shared_weak_count *a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  MEMORY[0x259CA8F00](v47 - 120);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ParseNePoolParamValues(ANEMachineIR::Validators *this@<X0>, const MIL::IROperation *a2@<X1>, const MIL::IRTensorValueType *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  ANEMachineIR::Utils::GetStaticTensorShape(&v40, a2, a2);
  v8 = v40;
  v7 = v41;
  std::string::basic_string[abi:ne200100]<0>(__p, "kernel_sizes");
  v9 = v7 - v8;
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(a4))
  {
    MEMORY[0x259CA8F00](a4);
    std::string::basic_string[abi:ne200100]<0>(__p, "strides");
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    if (MIL::ValidationResult::IsGood(a4))
    {
      MEMORY[0x259CA8F00](a4);
      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      ParameterValue = MIL::IROperation::TryGetParameterValue();
      v11 = ParameterValue;
      if (v39 < 0)
      {
        operator delete(__p[0]);
        if (!v11)
        {
LABEL_15:
          std::string::basic_string[abi:ne200100]<0>(__p, "post_right_shift");
          v12 = MIL::IROperation::TryGetParameterValue();
          if (v12 && (*(*v12 + 40))(v12) && (v13 = MEMORY[0x259CA93E0]()) != 0)
          {
            v14 = *v13;
          }

          else
          {
            v14 = 0;
          }

          *(a3 + 36) = v14 | 0x100;
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }

          v15 = std::string::basic_string[abi:ne200100]<0>(__p, "post_scale");
          v16 = MIL::Fp16::FromFloat(v15, 1.0);
          v17 = MIL::IROperation::TryGetParameterValue();
          if (v17)
          {
            if ((*(*v17 + 40))(v17))
            {
              v18 = MEMORY[0x259CA93C0]();
              if (v18)
              {
                v16 = *v18;
              }
            }
          }

          if ((*(a3 + 76) & 1) == 0)
          {
            *(a3 + 76) = 1;
          }

          *(a3 + 37) = v16;
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }

          v19 = (*(*this + 56))(this);
          v20 = *(v19 + 23);
          if (v20 < 0)
          {
            if (*(v19 + 8) != 11)
            {
              goto LABEL_39;
            }

            v19 = *v19;
          }

          else if (v20 != 11)
          {
            goto LABEL_39;
          }

          if (*v19 == 0x705F6776615F656ELL && *(v19 + 3) == 0x6C6F6F705F677661)
          {
            v22 = std::string::basic_string[abi:ne200100]<0>(__p, "bias");
            v23 = MIL::Fp16::FromFloat(v22, 0.0);
            v24 = MIL::IROperation::TryGetParameterValue();
            if (v24)
            {
              if ((*(*v24 + 40))(v24))
              {
                v25 = MEMORY[0x259CA93C0]();
                if (v25)
                {
                  v23 = *v25;
                }
              }
            }

            if ((*(a3 + 80) & 1) == 0)
            {
              *(a3 + 80) = 1;
            }

            *(a3 + 39) = v23;
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "acc_left_shift");
            v26 = MIL::IROperation::TryGetParameterValue();
            if (v26 && (*(*v26 + 40))(v26) && (v27 = MEMORY[0x259CA93E0]()) != 0)
            {
              v28 = *v27;
            }

            else
            {
              v28 = 0;
            }

            *(a3 + 41) = v28 | 0x100;
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "acc_bias_shift");
            v29 = MIL::IROperation::TryGetParameterValue();
            if (v29 && (*(*v29 + 40))(v29) && (v30 = MEMORY[0x259CA93E0]()) != 0)
            {
              v31 = *v30;
            }

            else
            {
              v31 = 0;
            }

            *(a3 + 42) = v31 | 0x100;
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "include_pads");
            v32 = MIL::IROperation::TryGetParameterValue();
            if (v32 && (*(*v32 + 40))(v32) && (v33 = MEMORY[0x259CA93F0]()) != 0)
            {
              v34 = *v33;
            }

            else
            {
              v34 = 0;
            }

            *(a3 + 43) = v34 & 1 | 0x100;
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "pre_relu");
            v35 = MIL::IROperation::TryGetParameterValue();
            if (v35 && (*(*v35 + 40))(v35) && (v36 = MEMORY[0x259CA93F0]()) != 0)
            {
              v37 = *v36;
            }

            else
            {
              v37 = 0;
            }

            *(a3 + 44) = v37 & 1 | 0x100;
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_85;
          }

LABEL_39:
          if (*(a3 + 80) == 1)
          {
            *(a3 + 80) = 0;
          }

          if (*(a3 + 83) == 1)
          {
            *(a3 + 83) = 0;
          }

          if (*(a3 + 85) == 1)
          {
            *(a3 + 85) = 0;
          }

          if (*(a3 + 87) == 1)
          {
            *(a3 + 87) = 0;
          }

          if (*(a3 + 89) == 1)
          {
            *(a3 + 89) = 0;
          }

LABEL_85:
          MIL::ValidationResult::ValidationResult(a4);
          goto LABEL_86;
        }
      }

      else if (!ParameterValue)
      {
        goto LABEL_15;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }

      if (MIL::ValidationResult::IsGood(a4))
      {
        MEMORY[0x259CA8F00](a4);
        goto LABEL_15;
      }
    }
  }

LABEL_86:
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_2599C9F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GetParamValuesOfInt32Vector(MIL::IRObject *a1@<X0>, unint64_t a3@<X2>, void *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  ParameterType = MIL::IROperation::GetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  v11 = (*(*v10 + 96))(v10);
  if (v11[1] == *v11)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = (*(***v11 + 16))();
  if (!v12)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v29 = LocationPtr[1];
    v60 = *LocationPtr;
    v61 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v30 = std::string::append(&v57, "'  must have static shape.");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v59 = v30->__r_.__value_.__r.__words[2];
    v58 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a5, &v60, 302, &v58);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    v32 = v61;
    if (!v61)
    {
      return;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    return;
  }

  v13 = v12;
  if ((*(*v12 + 48))(v12) == a3)
  {
    ParameterValue = MIL::IROperation::GetParameterValue();
    MIL::IRValue::AsTensor(ParameterValue);
    v57.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<int>();
    v57.__r_.__value_.__l.__size_ = v15;
    a4[1] = *a4;
    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v57, v16);
        v19 = a4[1];
        v18 = a4[2];
        if (v19 >= v18)
        {
          v21 = *a4;
          v22 = v19 - *a4;
          v23 = (v22 >> 2) + 1;
          if (v23 >> 62)
          {
            std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
          }

          v24 = v18 - v21;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v25);
          }

          v26 = (4 * (v22 >> 2));
          *v26 = *v17;
          v20 = v26 + 1;
          memcpy(0, v21, v22);
          v27 = *a4;
          *a4 = 0;
          a4[1] = v20;
          a4[2] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v19 = *v17;
          v20 = v19 + 1;
        }

        a4[1] = v20;
        ++v16;
      }

      while (v16 < v57.__r_.__value_.__l.__size_);
    }

    MIL::ValidationResult::ValidationResult(a5);
    return;
  }

  v33 = MIL::IRObject::GetLocationPtr(a1);
  v34 = v33[1];
  v55 = *v33;
  v56 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v35 = std::string::append(&v50, "' must have length of ");
  v36 = *&v35->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v49, a3);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v49;
  }

  else
  {
    v37 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v51, v37, size);
  v40 = *&v39->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v52, ", got ");
  v42 = *&v41->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = (*(*v13 + 48))(v13);
  std::to_string(&v48, v43);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v48;
  }

  else
  {
    v44 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v48.__r_.__value_.__l.__size_;
  }

  v46 = std::string::append(&v57, v44, v45);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v54 = v46->__r_.__value_.__r.__words[2];
  __p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a5, &v55, 319, &__p);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v32 = v56;
  if (v56)
  {
    goto LABEL_27;
  }
}

void sub_2599CA464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ParsePePoolParamValues(ANEMachineIR::Utils *this@<X1>, MIL::IRObject *a2@<X0>, uint64_t a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  ANEMachineIR::Utils::GetStaticTensorShape(&v27, this, this);
  v8 = v27;
  v7 = v28;
  std::string::basic_string[abi:ne200100]<0>(__p, "kernel_sizes");
  v9 = ((v7 - v8) >> 3) - 2;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(a4))
  {
    MEMORY[0x259CA8F00](a4);
    std::string::basic_string[abi:ne200100]<0>(__p, "strides");
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (MIL::ValidationResult::IsGood(a4))
    {
      MEMORY[0x259CA8F00](a4);
      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      ParameterValue = MIL::IROperation::TryGetParameterValue();
      v11 = ParameterValue;
      if (v26 < 0)
      {
        operator delete(__p[0]);
        if (!v11)
        {
LABEL_15:
          v12 = std::string::basic_string[abi:ne200100]<0>(__p, "post_scale");
          v13 = MIL::Fp16::FromFloat(v12, 1.0);
          v14 = MIL::IROperation::TryGetParameterValue();
          if (v14)
          {
            if ((*(*v14 + 40))(v14))
            {
              v15 = MEMORY[0x259CA93C0]();
              if (v15)
              {
                v13 = *v15;
              }
            }
          }

          if ((*(a3 + 74) & 1) == 0)
          {
            *(a3 + 74) = 1;
          }

          *(a3 + 72) = v13;
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          v16 = (*(*a2 + 56))(a2);
          v17 = *(v16 + 23);
          if (v17 < 0)
          {
            if (*(v16 + 8) != 11)
            {
              goto LABEL_32;
            }

            v16 = *v16;
          }

          else if (v17 != 11)
          {
            goto LABEL_32;
          }

          if (*v16 == 0x705F6776615F6570 && *(v16 + 3) == 0x6C6F6F705F677661)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "include_pads");
            v19 = MIL::IROperation::TryGetParameterValue();
            if (v19 && (*(*v19 + 40))(v19) && (v20 = MEMORY[0x259CA93F0]()) != 0)
            {
              v21 = *v20;
            }

            else
            {
              v21 = 0;
            }

            *(a3 + 76) = v21 & 1 | 0x100;
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "pre_relu");
            v22 = MIL::IROperation::TryGetParameterValue();
            if (v22 && (*(*v22 + 40))(v22) && (v23 = MEMORY[0x259CA93F0]()) != 0)
            {
              v24 = *v23;
            }

            else
            {
              v24 = 0;
            }

            *(a3 + 78) = v24 & 1 | 0x100;
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_50;
          }

LABEL_32:
          if (*(a3 + 77) == 1)
          {
            *(a3 + 77) = 0;
          }

          if (*(a3 + 79) == 1)
          {
            *(a3 + 79) = 0;
          }

LABEL_50:
          MIL::ValidationResult::ValidationResult(a4);
          goto LABEL_51;
        }
      }

      else if (!ParameterValue)
      {
        goto LABEL_15;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (MIL::ValidationResult::IsGood(a4))
      {
        MEMORY[0x259CA8F00](a4);
        goto LABEL_15;
      }
    }
  }

LABEL_51:
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_2599CA920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::InferOutputShape(uint64_t *a1@<X0>, int **a2@<X1>, int **a3@<X2>, char **a4@<X3>, char **a5@<X4>, uint64_t **a6@<X5>, MIL::ValidationResult *a7@<X8>)
{
  v10 = (a5[1] - *a5) >> 3;
  v11 = v10 - 2;
  a6[1] = *a6;
  std::vector<unsigned long long>::reserve(a6, v10);
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v12 = a4[1];
  if (*a4 == v12)
  {
    if (v10 != 2)
    {
      v13 = 0;
      if (2 * v11 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2 * v11;
      }

      do
      {
        if (v13 >= v183)
        {
          v15 = v181;
          v16 = v13 - v181;
          v17 = (v13 - v181) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
          }

          v19 = v183 - v181;
          if ((v183 - v181) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v181, v20);
          }

          v21 = v17;
          v22 = (4 * v17);
          v23 = &v22[-v21];
          *v22 = 0;
          v13 = (v22 + 1);
          memcpy(v23, v15, v16);
          v24 = v181;
          v181 = v23;
          v182 = v13;
          v183 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v13 = 0;
          v13 += 4;
        }

        v182 = v13;
        --v14;
      }

      while (v14);
    }
  }

  else if (&v181 != a4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v181, *a4, v12, (v12 - *a4) >> 2);
  }

  v25 = *a5;
  v26 = a5[1] - *a5;
  if (!v26)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v26 >> 3;
  v28 = *v25;
  if (v10 == 5)
  {
    if (v27 <= 1)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v29 = *(v25 + 1);
  }

  else
  {
    v29 = 1;
    if (v11 < 2)
    {
      v32 = 0;
      v31 = 1;
      v30 = a3;
      goto LABEL_29;
    }
  }

  v30 = a3;
  if (v27 <= v10 - 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = *&v25[8 * v10 - 24];
  v32 = 1;
LABEL_29:
  if (v27 <= v11)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v10 - 1;
  if (v27 <= v10 - 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = *&v25[8 * v11];
  v35 = *&v25[8 * v33];
  v36 = *a2;
  v37 = a2[1];
  v38 = v37 - *a2;
  if (v38 != v33)
  {
    if (v10 == 5)
    {
      if (v37 == v36)
      {
        goto LABEL_196;
      }

      v39 = *v36;
      if (!v32)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = 1;
      if (!v32)
      {
LABEL_38:
        v40 = 1;
        goto LABEL_51;
      }
    }

    if (v38 <= v10 - 4)
    {
      goto LABEL_196;
    }

    v40 = v36[v10 - 4];
LABEL_51:
    v48 = v10 - 3;
    if (v38 <= v10 - 3)
    {
      goto LABEL_196;
    }

    v42 = v36[v48];
    if (v10 == 5)
    {
      if (v30[1] == *v30)
      {
        goto LABEL_196;
      }

      v44 = **v30;
      if ((v32 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v44 = 1;
      if ((v32 & 1) == 0)
      {
LABEL_55:
        v49 = *v30;
        v50 = v30[1] - *v30;
        v47 = 1;
LABEL_59:
        if (v50 > v48)
        {
          v51 = &v49[v48];
          v43 = 1;
          goto LABEL_66;
        }

LABEL_196:
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }
    }

    v49 = *v30;
    v50 = v30[1] - *v30;
    if (v50 <= v10 - 4)
    {
      goto LABEL_196;
    }

    v47 = v49[v10 - 4];
    goto LABEL_59;
  }

  if (v10 == 5)
  {
    v39 = *v36;
    if (!v32)
    {
LABEL_34:
      v40 = 1;
      goto LABEL_42;
    }
  }

  else
  {
    v39 = 1;
    if (!v32)
    {
      goto LABEL_34;
    }
  }

  if (v33 <= v10 - 4)
  {
    goto LABEL_196;
  }

  v40 = v36[v10 - 4];
LABEL_42:
  v41 = v10 - 3;
  if (v33 <= v10 - 3 || v33 <= v11)
  {
    goto LABEL_196;
  }

  v42 = v36[v41];
  v43 = v36[v11];
  if (v10 == 5)
  {
    if (!(v30[1] - *v30))
    {
      goto LABEL_196;
    }

    v44 = **v30;
    if ((v32 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v44 = 1;
    if ((v32 & 1) == 0)
    {
LABEL_47:
      v45 = *v30;
      v46 = v30[1] - *v30;
      v47 = 1;
      goto LABEL_64;
    }
  }

  v45 = *v30;
  v46 = v30[1] - *v30;
  if (v46 <= v10 - 4)
  {
    goto LABEL_196;
  }

  v47 = v45[v10 - 4];
LABEL_64:
  if (v46 <= v41)
  {
    goto LABEL_196;
  }

  v51 = &v45[v41];
LABEL_66:
  v52 = *v51;
  if (v11 == 3)
  {
    if ((v182 - v181) <= 4)
    {
      goto LABEL_198;
    }

    v53 = *v181;
    v54 = *(v181 + 1);
    if ((v32 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
    if ((v32 & 1) == 0)
    {
LABEL_69:
      v55 = 0;
      v56 = 0;
      v57 = v181;
      v58 = 2 * v11;
      v59 = (v182 - v181) >> 2;
      goto LABEL_74;
    }
  }

  v58 = 2 * v11;
  v60 = 2 * v11 - 4;
  v57 = v181;
  v59 = (v182 - v181) >> 2;
  if (v59 <= v60 || v59 <= v58 - 3)
  {
LABEL_198:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v55 = *&v181[4 * v60];
  v56 = *&v181[4 * v58 - 12];
LABEL_74:
  v61 = v58 - 2;
  if (v59 <= v58 - 2)
  {
    goto LABEL_198;
  }

  v62 = v58 - 1;
  if (v59 <= v62)
  {
    goto LABEL_198;
  }

  v153 = v35;
  v63 = *&v57[4 * v61];
  v64 = *&v57[4 * v62];
  v66 = a6[1];
  v65 = a6[2];
  if (v66 >= v65)
  {
    v151 = v32;
    v147 = v31;
    v149 = v40;
    v68 = *a6;
    v69 = v66 - *a6;
    v70 = (v69 >> 3) + 1;
    if (v70 >> 61)
    {
      goto LABEL_199;
    }

    v71 = v65 - v68;
    if (v71 >> 2 > v70)
    {
      v70 = v71 >> 2;
    }

    v72 = v71 >= 0x7FFFFFFFFFFFFFF8;
    v73 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v72)
    {
      v73 = v70;
    }

    v140 = v39;
    v138 = v44;
    v139 = v47;
    v143 = v55;
    v145 = v63;
    v157 = v64;
    v141 = v56;
    v137 = v53;
    if (v73)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v73);
    }

    v74 = (8 * (v69 >> 3));
    *v74 = v28;
    v67 = v74 + 1;
    memcpy(0, v68, v69);
    v75 = *a6;
    *a6 = 0;
    a6[1] = v67;
    a6[2] = 0;
    if (v75)
    {
      operator delete(v75);
    }

    v31 = v147;
    v40 = v149;
    v32 = v151;
    v39 = v140;
    v44 = v138;
    v47 = v139;
    v55 = v143;
    v63 = v145;
    v64 = v157;
    v56 = v141;
    v53 = v137;
  }

  else
  {
    *v66 = v28;
    v67 = v66 + 1;
  }

  a6[1] = v67;
  if (v11 == 3)
  {
    v76 = (v29 - v39 + v44 + v53 + v54) / v44;
    if (v76 <= 0)
    {
      v78 = a1[1];
      v179 = *a1;
      v180 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v175, v76);
      v79 = std::string::insert(&v175, 0, "Inferred zero or negative output size ");
      v80 = *&v79->__r_.__value_.__l.__data_;
      v176.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v176.__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      v81 = std::string::append(&v176, " on depth.");
      v82 = *&v81->__r_.__value_.__l.__data_;
      v178 = v81->__r_.__value_.__r.__words[2];
      v177 = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x259CA8EE0](a7, &v179, 319, &v177);
      if (SHIBYTE(v178) < 0)
      {
        operator delete(v177);
      }

      if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v176.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v175.__r_.__value_.__l.__data_);
      }

      v83 = v180;
      if (!v180)
      {
        goto LABEL_193;
      }

LABEL_192:
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      goto LABEL_193;
    }

    v77 = a6[2];
    if (v67 >= v77)
    {
      v152 = v32;
      v148 = v31;
      v150 = v40;
      v84 = *a6;
      v85 = v67 - *a6;
      v86 = (v85 >> 3) + 1;
      if (v86 >> 61)
      {
        goto LABEL_199;
      }

      v87 = v77 - v84;
      if (v87 >> 2 > v86)
      {
        v86 = v87 >> 2;
      }

      v72 = v87 >= 0x7FFFFFFFFFFFFFF8;
      v88 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v72)
      {
        v88 = v86;
      }

      v144 = v55;
      v146 = v63;
      v158 = v64;
      v142 = v56;
      if (v88)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v88);
      }

      v89 = v47;
      v90 = (8 * (v85 >> 3));
      *v90 = v76;
      v67 = v90 + 1;
      memcpy(0, v84, v85);
      v91 = *a6;
      *a6 = 0;
      a6[1] = v67;
      a6[2] = 0;
      if (v91)
      {
        operator delete(v91);
      }

      v31 = v148;
      v40 = v150;
      v32 = v152;
      v47 = v89;
      v55 = v144;
      v63 = v146;
      v64 = v158;
      v56 = v142;
    }

    else
    {
      *v67++ = v76;
    }

    a6[1] = v67;
  }

  if (!v32)
  {
    goto LABEL_138;
  }

  v92 = (v31 - v40 + v47 + v55 + v56) / v47;
  if (v92 <= 0)
  {
    v94 = a1[1];
    v173 = *a1;
    v174 = v94;
    if (v94)
    {
      atomic_fetch_add_explicit((v94 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v175, (v31 - v40 + v47 + v55 + v56) / v47);
    v95 = std::string::insert(&v175, 0, "Inferred zero or negative output size ");
    v96 = *&v95->__r_.__value_.__l.__data_;
    v176.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
    *&v176.__r_.__value_.__l.__data_ = v96;
    v95->__r_.__value_.__l.__size_ = 0;
    v95->__r_.__value_.__r.__words[2] = 0;
    v95->__r_.__value_.__r.__words[0] = 0;
    v97 = std::string::append(&v176, " on height.");
    v98 = *&v97->__r_.__value_.__l.__data_;
    v172 = v97->__r_.__value_.__r.__words[2];
    *__p = v98;
    v97->__r_.__value_.__l.__size_ = 0;
    v97->__r_.__value_.__r.__words[2] = 0;
    v97->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a7, &v173, 319, __p);
    if (SHIBYTE(v172) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v176.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    v83 = v174;
    if (!v174)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  v93 = a6[2];
  if (v67 >= v93)
  {
    v99 = *a6;
    v100 = v67 - *a6;
    v101 = (v100 >> 3) + 1;
    if (v101 >> 61)
    {
      goto LABEL_199;
    }

    v102 = v93 - v99;
    if (v102 >> 2 > v101)
    {
      v101 = v102 >> 2;
    }

    v72 = v102 >= 0x7FFFFFFFFFFFFFF8;
    v103 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v72)
    {
      v103 = v101;
    }

    v159 = v64;
    if (v103)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v103);
    }

    v104 = v63;
    v105 = (8 * (v100 >> 3));
    *v105 = v92;
    v67 = v105 + 1;
    memcpy(0, v99, v100);
    v106 = *a6;
    *a6 = 0;
    a6[1] = v67;
    a6[2] = 0;
    if (v106)
    {
      operator delete(v106);
    }

    v63 = v104;
    v64 = v159;
  }

  else
  {
    *v67++ = v92;
  }

  a6[1] = v67;
LABEL_138:
  v107 = (v34 - v42 + v52 + v63 + v64) / v52;
  if (v107 <= 0)
  {
    v110 = a1[1];
    v169 = *a1;
    v170 = v110;
    if (v110)
    {
      atomic_fetch_add_explicit((v110 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v175, (v34 - v42 + v52 + v63 + v64) / v52);
    v111 = std::string::insert(&v175, 0, "Inferred zero or negative output size ");
    v112 = *&v111->__r_.__value_.__l.__data_;
    v176.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
    *&v176.__r_.__value_.__l.__data_ = v112;
    v111->__r_.__value_.__l.__size_ = 0;
    v111->__r_.__value_.__r.__words[2] = 0;
    v111->__r_.__value_.__r.__words[0] = 0;
    v113 = std::string::append(&v176, " on width.");
    v114 = *&v113->__r_.__value_.__l.__data_;
    v168 = v113->__r_.__value_.__r.__words[2];
    *v167 = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a7, &v169, 319, v167);
    if (SHIBYTE(v168) < 0)
    {
      operator delete(v167[0]);
    }

    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v176.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    v83 = v170;
    if (!v170)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  v108 = a6[2];
  if (v67 >= v108)
  {
    v115 = *a6;
    v116 = v67 - *a6;
    v117 = (v116 >> 3) + 1;
    if (v117 >> 61)
    {
      goto LABEL_199;
    }

    if ((v108 - v115) >> 2 > v117)
    {
      v117 = (v108 - v115) >> 2;
    }

    if ((v108 - v115) >= 0x7FFFFFFFFFFFFFF8)
    {
      v117 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v117)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v117);
    }

    v118 = (8 * (v116 >> 3));
    v108 = 0;
    *v118 = v107;
    v109 = v118 + 1;
    memcpy(0, v115, v116);
    v119 = *a6;
    *a6 = 0;
    a6[1] = v109;
    a6[2] = 0;
    if (v119)
    {
      operator delete(v119);
      v108 = a6[2];
    }
  }

  else
  {
    *v67 = v107;
    v109 = v67 + 1;
  }

  a6[1] = v109;
  v120 = v153 / v43;
  if (v109 < v108)
  {
    *v109 = v120;
    v121 = v109 + 1;
    goto LABEL_171;
  }

  v122 = *a6;
  v123 = v109 - *a6;
  v124 = (v123 >> 3) + 1;
  if (v124 >> 61)
  {
LABEL_199:
    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  if ((v108 - v122) >> 2 > v124)
  {
    v124 = (v108 - v122) >> 2;
  }

  if ((v108 - v122) >= 0x7FFFFFFFFFFFFFF8)
  {
    v124 = 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v124)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v124);
  }

  v125 = (8 * (v123 >> 3));
  *v125 = v120;
  v121 = (v125 + 1);
  memcpy(0, v122, v123);
  v126 = *a6;
  *a6 = 0;
  a6[1] = v121;
  a6[2] = 0;
  if (v126)
  {
    operator delete(v126);
  }

LABEL_171:
  a6[1] = v121;
  v127 = v121 - *a6;
  if (v127 == a5[1] - *a5)
  {
    MIL::ValidationResult::ValidationResult(a7);
    goto LABEL_193;
  }

  v128 = a1[1];
  v165 = *a1;
  v166 = v128;
  if (v128)
  {
    atomic_fetch_add_explicit((v128 + 8), 1uLL, memory_order_relaxed);
    v127 = a6[1] - *a6;
  }

  std::to_string(&v162, v127 >> 3);
  v129 = std::string::insert(&v162, 0, "Output rank ");
  v130 = *&v129->__r_.__value_.__l.__data_;
  v175.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
  *&v175.__r_.__value_.__l.__data_ = v130;
  v129->__r_.__value_.__l.__size_ = 0;
  v129->__r_.__value_.__r.__words[2] = 0;
  v129->__r_.__value_.__r.__words[0] = 0;
  v131 = std::string::append(&v175, " does not match rank of input tensor of shape ");
  v132 = *&v131->__r_.__value_.__l.__data_;
  v176.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
  *&v176.__r_.__value_.__l.__data_ = v132;
  v131->__r_.__value_.__l.__size_ = 0;
  v131->__r_.__value_.__r.__words[2] = 0;
  v131->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v161, (a5[1] - *a5) >> 3);
  if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v133 = &v161;
  }

  else
  {
    v133 = v161.__r_.__value_.__r.__words[0];
  }

  if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v161.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v161.__r_.__value_.__l.__size_;
  }

  v135 = std::string::append(&v176, v133, size);
  v136 = *&v135->__r_.__value_.__l.__data_;
  v164 = v135->__r_.__value_.__r.__words[2];
  *v163 = v136;
  v135->__r_.__value_.__l.__size_ = 0;
  v135->__r_.__value_.__r.__words[2] = 0;
  v135->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a7, &v165, 313, v163);
  if (SHIBYTE(v164) < 0)
  {
    operator delete(v163[0]);
  }

  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v161.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  v83 = v166;
  if (v166)
  {
    goto LABEL_192;
  }

LABEL_193:
  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }
}

void sub_2599CB69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (*(v62 - 201) < 0)
  {
    operator delete(*(v62 - 224));
  }

  v64 = *(v62 - 232);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = *(v62 - 112);
  if (v65)
  {
    *(v62 - 104) = v65;
    operator delete(v65);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNePool(uint64_t *a1@<X0>, uint64_t **a2@<X1>, ANEMachineIR::Utils *a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v12 = a1[1];
  v114 = *a1;
  v115 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v131, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v114, a3, &v131, a2, v116);
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (MIL::ValidationResult::IsGood(v116))
  {
    MEMORY[0x259CA8F00](v116);
    v13 = (*(*a3 + 96))(a3);
    v14 = (v13[1] - *v13) >> 3;
    v15 = (*(*a3 + 88))(a3);
    v16 = v14 - 1;
    v17 = *a5;
    v18 = *(a5 + 8);
    if (v14 - 1 == (v18 - *a5) >> 2)
    {
      v20 = *(a5 + 24);
      v19 = *(a5 + 32);
      if (v16 == v19 - v20)
      {
        v21 = v14 - 2;
        if (v16 <= v14 - 2)
        {
          goto LABEL_183;
        }

        v22 = v17[v21];
        v23 = v20[v21];
        if (v22 == v23)
        {
          if (v14 == 5)
          {
            if (v19 == v20)
            {
              goto LABEL_183;
            }

            v24 = *v20 == 2 ? 16 : 8;
            if (v18 == v17)
            {
              goto LABEL_183;
            }

            if (*v17 > v24)
            {
              v25 = a1[1];
              v127.__r_.__value_.__r.__words[0] = *a1;
              v127.__r_.__value_.__l.__size_ = v25;
              if (v25)
              {
                atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
              }

              std::to_string(&v129, v24);
              v26 = std::string::insert(&v129, 0, "Expect kernel_sizes of depth in range [1, ");
              v27 = *&v26->__r_.__value_.__l.__data_;
              v130.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
              *&v130.__r_.__value_.__l.__data_ = v27;
              v26->__r_.__value_.__l.__size_ = 0;
              v26->__r_.__value_.__r.__words[2] = 0;
              v26->__r_.__value_.__r.__words[0] = 0;
              v28 = std::string::append(&v130, "], got ");
              v29 = *&v28->__r_.__value_.__l.__data_;
              v131.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
              *&v131.__r_.__value_.__l.__data_ = v29;
              v28->__r_.__value_.__l.__size_ = 0;
              v28->__r_.__value_.__r.__words[2] = 0;
              v28->__r_.__value_.__r.__words[0] = 0;
              if (*(a5 + 8) == *a5)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              std::to_string(&v128, **a5);
              if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v30 = &v128;
              }

              else
              {
                v30 = v128.__r_.__value_.__r.__words[0];
              }

              if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v128.__r_.__value_.__l.__size_;
              }

              goto LABEL_170;
            }
          }

          else if (v16 < 3)
          {
LABEL_152:
            v98 = v14 - 3;
            if (v15 == 4)
            {
              if (v16 > v98)
              {
                v99 = v20[v98] == 2;
                v100 = 8;
                v101 = 16;
LABEL_157:
                if (v99)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = v100;
                }

                if (v17[v98] <= v102)
                {
                  MIL::ValidationResult::ValidationResult(a6);
LABEL_85:
                  if (MIL::ValidationResult::IsGood(a6))
                  {
                    MEMORY[0x259CA8F00](a6);
                    ANEMachineIR::Utils::GetStaticTensorShape(v116, a3, v67);
                    ANEMachineIR::Utils::GetStaticTensorShape(&v131.__r_.__value_.__l.__data_, a4, v68);
                    if (MIL::ValidationResult::IsGood(a6))
                    {
                      v69 = MEMORY[0x259CA8F00](a6);
                      MIL::ValidationResult::ValidationResult(v69);
                    }

                    if (v131.__r_.__value_.__r.__words[0])
                    {
                      v131.__r_.__value_.__l.__size_ = v131.__r_.__value_.__r.__words[0];
                      operator delete(v131.__r_.__value_.__l.__data_);
                    }

                    if (v116[0])
                    {
                      v116[1] = v116[0];
                      operator delete(v116[0]);
                    }
                  }

                  return;
                }

                v103 = a1[1];
                v127.__r_.__value_.__r.__words[0] = *a1;
                v127.__r_.__value_.__l.__size_ = v103;
                if (v103)
                {
                  atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
                }

                std::to_string(&v129, v102);
                v104 = std::string::insert(&v129, 0, "Expect kernel_sizes of width in range [1, ");
                v105 = *&v104->__r_.__value_.__l.__data_;
                v130.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
                *&v130.__r_.__value_.__l.__data_ = v105;
                v104->__r_.__value_.__l.__size_ = 0;
                v104->__r_.__value_.__r.__words[2] = 0;
                v104->__r_.__value_.__r.__words[0] = 0;
                v106 = std::string::append(&v130, "], got ");
                v107 = *&v106->__r_.__value_.__l.__data_;
                v131.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
                *&v131.__r_.__value_.__l.__data_ = v107;
                v106->__r_.__value_.__l.__size_ = 0;
                v106->__r_.__value_.__r.__words[2] = 0;
                v106->__r_.__value_.__r.__words[0] = 0;
                if (v98 >= (*(a5 + 8) - *a5) >> 2)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                std::to_string(&v128, *(*a5 + 4 * v98));
                if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v30 = &v128;
                }

                else
                {
                  v30 = v128.__r_.__value_.__r.__words[0];
                }

                if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v128.__r_.__value_.__l.__size_;
                }

                goto LABEL_170;
              }
            }

            else if (v16 > v98)
            {
              v99 = v20[v98] == 2;
              v100 = 16;
              v101 = 32;
              goto LABEL_157;
            }

LABEL_183:
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v91 = v14 - 4;
          if (v16 <= v14 - 4)
          {
            goto LABEL_183;
          }

          if (v20[v91] == 2)
          {
            v92 = 32;
          }

          else
          {
            v92 = 16;
          }

          if (v17[v91] > v92)
          {
            v93 = a1[1];
            v127.__r_.__value_.__r.__words[0] = *a1;
            v127.__r_.__value_.__l.__size_ = v93;
            if (v93)
            {
              atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
            }

            std::to_string(&v129, v92);
            v94 = std::string::insert(&v129, 0, "Expect kernel_sizes of height in range [1, ");
            v95 = *&v94->__r_.__value_.__l.__data_;
            v130.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
            *&v130.__r_.__value_.__l.__data_ = v95;
            v94->__r_.__value_.__l.__size_ = 0;
            v94->__r_.__value_.__r.__words[2] = 0;
            v94->__r_.__value_.__r.__words[0] = 0;
            v96 = std::string::append(&v130, "], got ");
            v97 = *&v96->__r_.__value_.__l.__data_;
            v131.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
            *&v131.__r_.__value_.__l.__data_ = v97;
            v96->__r_.__value_.__l.__size_ = 0;
            v96->__r_.__value_.__r.__words[2] = 0;
            v96->__r_.__value_.__r.__words[0] = 0;
            if (v91 >= (*(a5 + 8) - *a5) >> 2)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            std::to_string(&v128, *(*a5 + 4 * v91));
            if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v128;
            }

            else
            {
              v30 = v128.__r_.__value_.__r.__words[0];
            }

            if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v128.__r_.__value_.__l.__size_;
            }

LABEL_170:
            v108 = std::string::append(&v131, v30, size);
            v109 = *&v108->__r_.__value_.__l.__data_;
            v117 = v108->__r_.__value_.__r.__words[2];
            *v116 = v109;
            v108->__r_.__value_.__l.__size_ = 0;
            v108->__r_.__value_.__r.__words[2] = 0;
            v108->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v127, 319, v116);
            if (SHIBYTE(v117) < 0)
            {
              operator delete(v116[0]);
            }

            if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v128.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v131.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v130.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v129.__r_.__value_.__l.__data_);
            }

            v66 = v127.__r_.__value_.__l.__size_;
            if (!v127.__r_.__value_.__l.__size_)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          }

          goto LABEL_152;
        }

        v70 = a1[1];
        v123 = *a1;
        v124 = v70;
        if (v70)
        {
          atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v125, "kernel_sizes");
        v71 = std::string::insert(&v125, 0, "Expect same channel dimension for '");
        v72 = *&v71->__r_.__value_.__l.__data_;
        v126.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
        *&v126.__r_.__value_.__l.__data_ = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        v73 = std::string::append(&v126, "' and '");
        v74 = *&v73->__r_.__value_.__l.__data_;
        v127.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
        *&v127.__r_.__value_.__l.__data_ = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v120, "strides");
        if ((v122 & 0x80u) == 0)
        {
          v75 = &v120;
        }

        else
        {
          v75 = v120;
        }

        if ((v122 & 0x80u) == 0)
        {
          v76 = v122;
        }

        else
        {
          v76 = v121;
        }

        v77 = std::string::append(&v127, v75, v76);
        v78 = *&v77->__r_.__value_.__l.__data_;
        v128.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
        *&v128.__r_.__value_.__l.__data_ = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = std::string::append(&v128, "' got ");
        v80 = *&v79->__r_.__value_.__l.__data_;
        v129.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
        *&v129.__r_.__value_.__l.__data_ = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v119, v22);
        if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = &v119;
        }

        else
        {
          v81 = v119.__r_.__value_.__r.__words[0];
        }

        if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v82 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v82 = v119.__r_.__value_.__l.__size_;
        }

        v83 = std::string::append(&v129, v81, v82);
        v84 = *&v83->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        v85 = std::string::append(&v130, " vs. ");
        v86 = *&v85->__r_.__value_.__l.__data_;
        v131.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
        *&v131.__r_.__value_.__l.__data_ = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v118, v23);
        if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = &v118;
        }

        else
        {
          v87 = v118.__r_.__value_.__r.__words[0];
        }

        if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v88 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v88 = v118.__r_.__value_.__l.__size_;
        }

        v89 = std::string::append(&v131, v87, v88);
        v90 = *&v89->__r_.__value_.__l.__data_;
        v117 = v89->__r_.__value_.__r.__words[2];
        *v116 = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x259CA8EE0](a6, &v123, 319, v116);
        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116[0]);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        if (v122 < 0)
        {
          operator delete(v120);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        v66 = v124;
        if (!v124)
        {
          goto LABEL_85;
        }

LABEL_84:
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        goto LABEL_85;
      }

      v52 = a1[1];
      v120 = *a1;
      v121 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
      }

      v53 = std::string::basic_string[abi:ne200100]<0>(&v127, "strides");
      v54 = std::string::insert(v53, 0, "Expect '");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v128.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v128.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v128, "' to be array of size ");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v129.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v129.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v126, v14 - 1);
      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v126;
      }

      else
      {
        v58 = v126.__r_.__value_.__r.__words[0];
      }

      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v126.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v129, v58, v59);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v130.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v130.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v130, ", got ");
      v63 = *&v62->__r_.__value_.__l.__data_;
      v131.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v131.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v125, (*(a5 + 32) - *(a5 + 24)) >> 2);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v125;
      }

      else
      {
        v50 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v125.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v38 = a1[1];
      v120 = *a1;
      v121 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v39 = std::string::basic_string[abi:ne200100]<0>(&v127, "kernel_sizes");
      v40 = std::string::insert(v39, 0, "Expect '");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v128.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v128.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v128, "' to be array of size ");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v129.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v129.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v126, v14 - 1);
      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v126;
      }

      else
      {
        v44 = v126.__r_.__value_.__r.__words[0];
      }

      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v126.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v129, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      v130.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v130.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&v130, ", got ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v131.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v131.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v125, (*(a5 + 8) - *a5) >> 2);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v125;
      }

      else
      {
        v50 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v125.__r_.__value_.__l.__size_;
      }
    }

    v64 = std::string::append(&v131, v50, v51);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v117 = v64->__r_.__value_.__r.__words[2];
    *v116 = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a6, &v120, 319, v116);
    if (SHIBYTE(v117) < 0)
    {
      operator delete(v116[0]);
    }

    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v129.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v66 = v121;
    if (!v121)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v32 = a1[1];
  v112 = *a1;
  v113 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = std::string::basic_string[abi:ne200100]<0>(&v130, "x");
  v34 = std::string::insert(v33, 0, "Input '");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v131.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v131.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v131, "' violates size constraints");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v111 = v36->__r_.__value_.__r.__words[2];
  *__p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a6, &v112, 319, __p);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (v113)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v113);
  }

  MEMORY[0x259CA8F00](v116);
}

void sub_2599CC4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 185) < 0)
  {
    operator delete(*(v62 - 208));
  }

  if (*(v62 - 89) < 0)
  {
    operator delete(*(v62 - 112));
  }

  if (*(v62 - 121) < 0)
  {
    operator delete(*(v62 - 144));
  }

  if (*(v62 - 153) < 0)
  {
    operator delete(*(v62 - 176));
  }

  v64 = *(v62 - 232);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateOutputShape(uint64_t *a1@<X0>, int **a2@<X1>, int **a3@<X2>, char **a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, MIL::ValidationResult *a7@<X8>)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  ANEMachineIR::Validators::InferOutputShape(a1, a2, a3, a4, a5, &v30, a7);
  if (MIL::ValidationResult::IsGood(a7))
  {
    MEMORY[0x259CA8F00](a7);
    if (v31 - v30 == *(a6 + 8) - *a6 && !memcmp(v30, *a6, v31 - v30))
    {
      MIL::ValidationResult::ValidationResult(a7);
    }

    else
    {
      ANEMachineIR::Utils::ShapeString(a6);
      ANEMachineIR::Utils::ShapeString(&v30);
      v10 = a1[1];
      v24 = *a1;
      v25 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v11 = std::string::append(&v19, " does not match inferred shape ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((v27 & 0x80u) == 0)
      {
        v13 = v26;
      }

      else
      {
        v13 = v26[0];
      }

      if ((v27 & 0x80u) == 0)
      {
        v14 = v27;
      }

      else
      {
        v14 = v26[1];
      }

      v15 = std::string::append(&v20, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v21, ".");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v23 = v17->__r_.__value_.__r.__words[2];
      *__p = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x259CA8EE0](a7, &v24, 313, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }
    }
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_2599CCA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  v39 = *(v37 - 56);
  if (v39)
  {
    *(v37 - 48) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidatePePool(uint64_t a1@<X0>, uint64_t **a2@<X1>, ANEMachineIR::Utils *a3@<X2>, ANEMachineIR::Utils *a4@<X3>, int **a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v193 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 8);
  v181 = *a1;
  v182 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v189, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v181, a3, &v189, a2, __p);
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
  }

  if (v182)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v182);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    v172 = a1;
    MEMORY[0x259CA8F00](__p);
    v13 = (*(*a3 + 96))(a3);
    v14 = v13[1] - *v13;
    v15 = (v14 >> 3) - 2;
    if (v15 == a5[1] - *a5)
    {
      if (v15 == a5[4] - a5[3])
      {
        v16 = 0;
        v192.__r_.__value_.__r.__words[0] = "kernel_sizes";
        v192.__r_.__value_.__l.__size_ = "strides";
        while (1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, *(&v192.__r_.__value_.__l.__data_ + v16));
          v17 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          if (v14 != 40)
          {
            goto LABEL_24;
          }

          if ((*(&__p[0].__r_.__value_.__s + 23) & 0x80) != 0)
          {
            if (__p[0].__r_.__value_.__l.__size_ != 12)
            {
              goto LABEL_21;
            }

            v18 = __p[0].__r_.__value_.__r.__words[0];
          }

          else
          {
            if (HIBYTE(__p[0].__r_.__value_.__r.__words[2]) != 12)
            {
              goto LABEL_21;
            }

            v18 = __p;
          }

          v19 = v18->__r_.__value_.__r.__words[0];
          v20 = v18->__r_.__value_.__r.__words[1];
          if (v19 != 0x735F6C656E72656BLL || v20 != 1936030313)
          {
LABEL_21:
            v22 = a5[3];
            v23 = a5[4];
            goto LABEL_22;
          }

          v22 = *a5;
          v23 = a5[1];
LABEL_22:
          if (v23 == v22)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v24 = *v22;
          if (*v22 != 1)
          {
            v58 = *(a1 + 8);
            v184.__r_.__value_.__r.__words[0] = *a1;
            v184.__r_.__value_.__l.__size_ = v58;
            if (v58)
            {
              atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
              v17 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
            }

            v33 = a6;
            if (v17 < 0)
            {
              std::string::__init_copy_ctor_external(&v186, __p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__l.__size_);
            }

            else
            {
              v186 = __p[0];
            }

            v59 = std::string::insert(&v186, 0, "PE does not support '");
            v60 = *&v59->__r_.__value_.__l.__data_;
            v187.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
            *&v187.__r_.__value_.__l.__data_ = v60;
            v59->__r_.__value_.__l.__size_ = 0;
            v59->__r_.__value_.__r.__words[2] = 0;
            v59->__r_.__value_.__r.__words[0] = 0;
            v61 = std::string::append(&v187, "' in depth dimension, got: ");
            v62 = *&v61->__r_.__value_.__l.__data_;
            v188.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
            *&v188.__r_.__value_.__l.__data_ = v62;
            v61->__r_.__value_.__l.__size_ = 0;
            v61->__r_.__value_.__r.__words[2] = 0;
            v61->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v185, v24);
            if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v63 = &v185;
            }

            else
            {
              v63 = v185.__r_.__value_.__r.__words[0];
            }

            if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v185.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v185.__r_.__value_.__l.__size_;
            }

            v65 = std::string::append(&v188, v63, size);
            v66 = *&v65->__r_.__value_.__l.__data_;
            v189.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
            *&v189.__r_.__value_.__l.__data_ = v66;
            v65->__r_.__value_.__l.__size_ = 0;
            v65->__r_.__value_.__r.__words[2] = 0;
            v65->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v184, 319, &v189);
            if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v189.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v185.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v188.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v187.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v186.__r_.__value_.__l.__data_);
            }

            if (v184.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v184.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            goto LABEL_116;
          }

LABEL_24:
          if ((*(&__p[0].__r_.__value_.__s + 23) & 0x80) != 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v16 += 8;
          if (v16 == 16)
          {
            memset(__p, 0, 24);
            if (v14 >> 3 == 5)
            {
              operator new();
            }

            if (v15 <= 1)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(__p, 1uLL);
            }

            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(__p, 1uLL);
          }
        }
      }

      v45 = *(a1 + 8);
      v175 = *a1;
      v176 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v185, "strides");
      v33 = a6;
      v46 = std::string::insert(&v185, 0, "Expect '");
      v47 = *&v46->__r_.__value_.__l.__data_;
      v186.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v186.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&v186, "' to be array of size ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v187.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v187.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v192, (v14 >> 3) - 2);
      if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v192;
      }

      else
      {
        v50 = v192.__r_.__value_.__r.__words[0];
      }

      if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v192.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v192.__r_.__value_.__l.__size_;
      }

      v52 = std::string::append(&v187, v50, v51);
      v53 = *&v52->__r_.__value_.__l.__data_;
      v188.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
      *&v188.__r_.__value_.__l.__data_ = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      v54 = std::string::append(&v188, ", got ");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v189.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v189.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v184, a5[4] - a5[3]);
      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v184;
      }

      else
      {
        v43 = v184.__r_.__value_.__r.__words[0];
      }

      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v184.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v31 = *(a1 + 8);
      v175 = *a1;
      v176 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v185, "kernel_sizes");
      v32 = std::string::insert(&v185, 0, "Expect '");
      v33 = a6;
      v34 = *&v32->__r_.__value_.__l.__data_;
      v186.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v186.__r_.__value_.__l.__data_ = v34;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v186, "' to be array of size ");
      v36 = *&v35->__r_.__value_.__l.__data_;
      v187.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v187.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v192, (v14 >> 3) - 2);
      if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v192;
      }

      else
      {
        v37 = v192.__r_.__value_.__r.__words[0];
      }

      if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v192.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v192.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v187, v37, v38);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v188.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v188.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v188, ", got ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v189.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v189.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v184, a5[1] - *a5);
      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v184;
      }

      else
      {
        v43 = v184.__r_.__value_.__r.__words[0];
      }

      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v184.__r_.__value_.__l.__size_;
      }
    }

    v56 = std::string::append(&v189, v43, v44);
    v57 = *&v56->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](v33, &v175, 319, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v184.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v192.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v187.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v185.__r_.__value_.__l.__data_);
    }

    if (v176)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v176);
    }

LABEL_116:
    if (MIL::ValidationResult::IsGood(v33))
    {
      MEMORY[0x259CA8F00](v33);
      ANEMachineIR::Utils::GetStaticTensorShape(&v175, a3, v67);
      ANEMachineIR::Utils::GetStaticTensorShape(&v173, a4, v68);
      v70 = a5[6];
      v69 = a5[7];
      if (v70 == v69)
      {
        goto LABEL_219;
      }

      if (v69 - v70 == 24 && (*v70 || v70[1]))
      {
        v71 = v172[1];
        v190 = *v172;
        v191 = v71;
        if (v71)
        {
          atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v185, "custom_pads");
        v72 = std::string::insert(&v185, 0, "PE does not support '");
        v73 = *&v72->__r_.__value_.__l.__data_;
        v186.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v186.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v186, "' in depth dimension, got ");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v187.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&v187.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        v76 = a5[6];
        if (a5[7] == v76)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        std::to_string(&v192, *v76);
        if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &v192;
        }

        else
        {
          v77 = v192.__r_.__value_.__r.__words[0];
        }

        if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = HIBYTE(v192.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v78 = v192.__r_.__value_.__l.__size_;
        }

        v79 = std::string::append(&v187, v77, v78);
        v80 = *&v79->__r_.__value_.__l.__data_;
        v188.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
        *&v188.__r_.__value_.__l.__data_ = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        v81 = std::string::append(&v188, ", ");
        v82 = *&v81->__r_.__value_.__l.__data_;
        v189.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&v189.__r_.__value_.__l.__data_ = v82;
        v81->__r_.__value_.__l.__size_ = 0;
        v81->__r_.__value_.__r.__words[2] = 0;
        v81->__r_.__value_.__r.__words[0] = 0;
        v83 = a5[6];
        if ((a5[7] - v83) <= 4)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        std::to_string(&v184, v83[1]);
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &v184;
        }

        else
        {
          v84 = v184.__r_.__value_.__r.__words[0];
        }

        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = v184.__r_.__value_.__l.__size_;
        }

        goto LABEL_137;
      }

      v89 = (v176 - v175) >> 3;
      v90 = v89 - 2;
      v91 = v69 - v70;
      if (v89 == 5)
      {
        v92 = v173;
        v93 = (v174 - v173) >> 3;
        if (v93 <= 1)
        {
          goto LABEL_262;
        }

        v94 = (v175 + 24);
        shared_weak_owners = v176[-2].__shared_weak_owners_;
        v96 = *(v173 + 1) - 1;
      }

      else
      {
        if (v90 < 2)
        {
          if (v90 < (v174 - v173) >> 3)
          {
            v120 = 2 * v90 - 2;
            if (v91 <= v120 || v89 - 3 >= a5[1] - *a5)
            {
              goto LABEL_261;
            }

            v98 = 0;
            v118 = 0;
            v96 = 0;
            v104 = 0;
            v97 = 0;
            v102 = *(v175 + v90);
            v106 = v70[v120];
            v103 = *(v173 + v90);
            v113 = (*a5)[v89 - 3];
            v114 = a5[3];
            v117 = a5[4] - v114;
            v116 = 1;
            v112 = 1;
            shared_weak_owners = 1;
            v105 = 1;
            v109 = 1;
            v119 = 1;
            goto LABEL_184;
          }

LABEL_262:
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        if (v89 < 3)
        {
          goto LABEL_262;
        }

        v96 = 0;
        v94 = (v175 + 8 * v90);
        v92 = v173;
        v93 = (v174 - v173) >> 3;
        shared_weak_owners = 1;
      }

      v97 = v89 - 3;
      if (v93 > v89 - 3 && v93 > v90)
      {
        if (v89 == 5)
        {
          v98 = *v70;
        }

        else
        {
          v98 = 0;
        }

        v99 = 2 * v90 - 4;
        if (v91 <= v99)
        {
          goto LABEL_261;
        }

        v100 = 2 * v90 - 2;
        if (v91 <= v100)
        {
          goto LABEL_261;
        }

        v101 = v92[v97];
        v102 = *v94;
        v103 = v92[v90];
        v104 = v70[v99];
        v105 = v176[-1].__vftable;
        v106 = v70[v100];
        v108 = *a5;
        v107 = a5[1];
        if (v89 == 5)
        {
          if (v107 == v108)
          {
            goto LABEL_261;
          }

          v109 = *v108;
        }

        else
        {
          v109 = 1;
        }

        v110 = v89 - 4;
        v111 = v107 - v108;
        if (v111 <= v89 - 4 || v111 <= v97)
        {
          goto LABEL_261;
        }

        v112 = v108[v110];
        v113 = v108[v97];
        v114 = a5[3];
        v115 = a5[4];
        if (v89 == 5)
        {
          if (v115 == v114)
          {
            goto LABEL_261;
          }

          v116 = *v114;
        }

        else
        {
          v116 = 1;
        }

        v117 = v115 - v114;
        if (v117 <= v110)
        {
LABEL_261:
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v118 = v101 - 1;
        v119 = v114[v110];
LABEL_184:
        if (v117 > v97)
        {
          if (v106 >= v113 || (v121 = v112 > v104, v122 = v112 - v104, !v121) || (v121 = v109 > v98, v123 = v109 - v98, !v121))
          {
            v138 = v172[1];
            v187.__r_.__value_.__r.__words[0] = *v172;
            v187.__r_.__value_.__l.__size_ = v138;
            if (v138)
            {
              atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
            }

            v139 = std::string::basic_string[abi:ne200100]<0>(&v188, "custom_pads");
            v140 = std::string::insert(v139, 0, "PE pool value of ");
            v141 = *&v140->__r_.__value_.__l.__data_;
            v189.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
            *&v189.__r_.__value_.__l.__data_ = v141;
            v140->__r_.__value_.__l.__size_ = 0;
            v140->__r_.__value_.__r.__words[2] = 0;
            v140->__r_.__value_.__r.__words[0] = 0;
            v142 = std::string::append(&v189, " exceed limits, must in range [0, K] where K is the kernel_size at that dimension");
            v143 = *&v142->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v143;
            v142->__r_.__value_.__l.__size_ = 0;
            v142->__r_.__value_.__r.__words[2] = 0;
            v142->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v187, 319, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v189.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v188.__r_.__value_.__l.__data_);
            }

            v88 = v187.__r_.__value_.__l.__size_;
            if (!v187.__r_.__value_.__l.__size_)
            {
              goto LABEL_217;
            }

LABEL_216:
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
LABEL_217:
            if (!MIL::ValidationResult::IsGood(a6))
            {
LABEL_221:
              if (v173)
              {
                v174 = v173;
                operator delete(v173);
              }

              if (v175)
              {
                v176 = v175;
                operator delete(v175);
              }

              return;
            }

            MEMORY[0x259CA8F00](a6);
LABEL_219:
            if (MIL::ValidationResult::IsGood(a6))
            {
              v144 = MEMORY[0x259CA8F00](a6);
              MIL::ValidationResult::ValidationResult(v144);
            }

            goto LABEL_221;
          }

          v124 = v114[v97];
          if (v176 - v175 == 40)
          {
            v125 = v96 * v116 - v98;
            v126 = v123 + v96 * v116;
            if (shared_weak_owners <= v125 || shared_weak_owners > v126)
            {
              v127 = v172[1];
              v190 = *v172;
              v191 = v127;
              if (v127)
              {
                atomic_fetch_add_explicit((v127 + 8), 1uLL, memory_order_relaxed);
              }

              std::to_string(&v185, v125);
              v128 = std::string::insert(&v185, 0, "Input dimension depth exceed limits, expect [");
              v129 = *&v128->__r_.__value_.__l.__data_;
              v186.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
              *&v186.__r_.__value_.__l.__data_ = v129;
              v128->__r_.__value_.__l.__size_ = 0;
              v128->__r_.__value_.__r.__words[2] = 0;
              v128->__r_.__value_.__r.__words[0] = 0;
              v130 = std::string::append(&v186, ", ");
              v131 = *&v130->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v131;
              v130->__r_.__value_.__l.__size_ = 0;
              v130->__r_.__value_.__r.__words[2] = 0;
              v130->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v192, v126);
              if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = &v192;
              }

              else
              {
                v132 = v192.__r_.__value_.__r.__words[0];
              }

              if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v133 = HIBYTE(v192.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v133 = v192.__r_.__value_.__l.__size_;
              }

              v134 = std::string::append(&v187, v132, v133);
              v135 = *&v134->__r_.__value_.__l.__data_;
              v188.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
              *&v188.__r_.__value_.__l.__data_ = v135;
              v134->__r_.__value_.__l.__size_ = 0;
              v134->__r_.__value_.__r.__words[2] = 0;
              v134->__r_.__value_.__r.__words[0] = 0;
              v136 = std::string::append(&v188, "), got ");
              v137 = *&v136->__r_.__value_.__l.__data_;
              v189.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
              *&v189.__r_.__value_.__l.__data_ = v137;
              v136->__r_.__value_.__l.__size_ = 0;
              v136->__r_.__value_.__r.__words[2] = 0;
              v136->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v184, shared_weak_owners);
              if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v84 = &v184;
              }

              else
              {
                v84 = v184.__r_.__value_.__r.__words[0];
              }

              if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v85 = v184.__r_.__value_.__l.__size_;
              }

              goto LABEL_137;
            }
          }

          else if (v89 < 4)
          {
            goto LABEL_229;
          }

          v145 = v119 * v118 - v104;
          v146 = v119 * v118 + v122;
          if (v105 <= v145 || v105 > v146)
          {
            v150 = v172[1];
            v190 = *v172;
            v191 = v150;
            if (v150)
            {
              atomic_fetch_add_explicit((v150 + 8), 1uLL, memory_order_relaxed);
            }

            std::to_string(&v185, v145);
            v151 = std::string::insert(&v185, 0, "Input dimension height exceed limits, expect [");
            v152 = *&v151->__r_.__value_.__l.__data_;
            v186.__r_.__value_.__r.__words[2] = v151->__r_.__value_.__r.__words[2];
            *&v186.__r_.__value_.__l.__data_ = v152;
            v151->__r_.__value_.__l.__size_ = 0;
            v151->__r_.__value_.__r.__words[2] = 0;
            v151->__r_.__value_.__r.__words[0] = 0;
            v153 = std::string::append(&v186, ", ");
            v154 = *&v153->__r_.__value_.__l.__data_;
            v187.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
            *&v187.__r_.__value_.__l.__data_ = v154;
            v153->__r_.__value_.__l.__size_ = 0;
            v153->__r_.__value_.__r.__words[2] = 0;
            v153->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v192, v146);
            if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v155 = &v192;
            }

            else
            {
              v155 = v192.__r_.__value_.__r.__words[0];
            }

            if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v156 = HIBYTE(v192.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v156 = v192.__r_.__value_.__l.__size_;
            }

            v157 = std::string::append(&v187, v155, v156);
            v158 = *&v157->__r_.__value_.__l.__data_;
            v188.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
            *&v188.__r_.__value_.__l.__data_ = v158;
            v157->__r_.__value_.__l.__size_ = 0;
            v157->__r_.__value_.__r.__words[2] = 0;
            v157->__r_.__value_.__r.__words[0] = 0;
            v159 = std::string::append(&v188, "), got ");
            v160 = *&v159->__r_.__value_.__l.__data_;
            v189.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
            *&v189.__r_.__value_.__l.__data_ = v160;
            v159->__r_.__value_.__l.__size_ = 0;
            v159->__r_.__value_.__r.__words[2] = 0;
            v159->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v184, v105);
            if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = &v184;
            }

            else
            {
              v84 = v184.__r_.__value_.__r.__words[0];
            }

            if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v85 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v85 = v184.__r_.__value_.__l.__size_;
            }

LABEL_137:
            v86 = std::string::append(&v189, v84, v85);
            v87 = *&v86->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v87;
            v86->__r_.__value_.__l.__size_ = 0;
            v86->__r_.__value_.__r.__words[2] = 0;
            v86->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v190, 319, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v184.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v189.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v188.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v192.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v187.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v186.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v185.__r_.__value_.__l.__data_);
            }

            v88 = v191;
            if (!v191)
            {
              goto LABEL_217;
            }

            goto LABEL_216;
          }

LABEL_229:
          v147 = (v103 - 1) * v124;
          v148 = v147 - v106;
          v149 = v147 + v113 - v106;
          if (v102 > v148 && v102 <= v149)
          {
            MIL::ValidationResult::ValidationResult(a6);
            goto LABEL_217;
          }

          v161 = v172[1];
          v190 = *v172;
          v191 = v161;
          if (v161)
          {
            atomic_fetch_add_explicit((v161 + 8), 1uLL, memory_order_relaxed);
          }

          std::to_string(&v185, v148);
          v162 = std::string::insert(&v185, 0, "Input dimension width exceed limits, expect [");
          v163 = *&v162->__r_.__value_.__l.__data_;
          v186.__r_.__value_.__r.__words[2] = v162->__r_.__value_.__r.__words[2];
          *&v186.__r_.__value_.__l.__data_ = v163;
          v162->__r_.__value_.__l.__size_ = 0;
          v162->__r_.__value_.__r.__words[2] = 0;
          v162->__r_.__value_.__r.__words[0] = 0;
          v164 = std::string::append(&v186, ", ");
          v165 = *&v164->__r_.__value_.__l.__data_;
          v187.__r_.__value_.__r.__words[2] = v164->__r_.__value_.__r.__words[2];
          *&v187.__r_.__value_.__l.__data_ = v165;
          v164->__r_.__value_.__l.__size_ = 0;
          v164->__r_.__value_.__r.__words[2] = 0;
          v164->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v192, v149);
          if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v166 = &v192;
          }

          else
          {
            v166 = v192.__r_.__value_.__r.__words[0];
          }

          if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v167 = HIBYTE(v192.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v167 = v192.__r_.__value_.__l.__size_;
          }

          v168 = std::string::append(&v187, v166, v167);
          v169 = *&v168->__r_.__value_.__l.__data_;
          v188.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
          *&v188.__r_.__value_.__l.__data_ = v169;
          v168->__r_.__value_.__l.__size_ = 0;
          v168->__r_.__value_.__r.__words[2] = 0;
          v168->__r_.__value_.__r.__words[0] = 0;
          v170 = std::string::append(&v188, "), got ");
          v171 = *&v170->__r_.__value_.__l.__data_;
          v189.__r_.__value_.__r.__words[2] = v170->__r_.__value_.__r.__words[2];
          *&v189.__r_.__value_.__l.__data_ = v171;
          v170->__r_.__value_.__l.__size_ = 0;
          v170->__r_.__value_.__r.__words[2] = 0;
          v170->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v184, v102);
          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &v184;
          }

          else
          {
            v84 = v184.__r_.__value_.__r.__words[0];
          }

          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v85 = v184.__r_.__value_.__l.__size_;
          }

          goto LABEL_137;
        }

        goto LABEL_261;
      }

      goto LABEL_262;
    }
  }

  else
  {
    v25 = *(a1 + 8);
    v179 = *a1;
    v180 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = std::string::basic_string[abi:ne200100]<0>(&v188, "x");
    v27 = std::string::insert(v26, 0, "Input '");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v189.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v189.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v189, "' violates size constraints");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v178 = v29->__r_.__value_.__r.__words[2];
    *v177 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a6, &v179, 319, v177);
    if (SHIBYTE(v178) < 0)
    {
      operator delete(v177[0]);
    }

    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (v180)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v180);
    }

    MEMORY[0x259CA8F00](__p);
  }
}

void sub_2599CE190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
  }

  if (*(v58 - 169) < 0)
  {
    operator delete(*(v58 - 192));
  }

  if (*(v58 - 97) < 0)
  {
    operator delete(*(v58 - 120));
  }

  if (*(v58 - 201) < 0)
  {
    operator delete(*(v58 - 224));
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  v60 = *(v58 - 128);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNePool(ANEMachineIR::Validators *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*a1 + 176))(a1);
  if (*(v6 + 8) == *v6)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v6);
  v8 = MIL::IRValueType::AsTensorType(Type);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v18 = 0;
  ANEMachineIR::Validators::ParseNePoolParamValues(a1, v5, __p, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v10 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidateNePool(LocationPtr, v10, v5, v8, __p, a2);
  }

  if (*v14)
  {
    *&v14[8] = *v14;
    operator delete(*v14);
  }

  if (*(&v12 + 1))
  {
    *&v13 = *(&v12 + 1);
    operator delete(*(&v12 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void ANEMachineIR::Validators::ValidatePePool(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*a1 + 176))(a1);
  if (*(v6 + 8) == *v6)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v6);
  v8 = MIL::IRValueType::AsTensorType(Type);
  v15 = 0;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  ANEMachineIR::Validators::ParsePePoolParamValues(v5, a1, __p, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v10 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidatePePool(LocationPtr, v10, v5, v8, __p, a2);
  }

  if (*v14)
  {
    *&v14[8] = *v14;
    operator delete(*v14);
  }

  if (*(&v12 + 1))
  {
    *&v13 = *(&v12 + 1);
    operator delete(*(&v12 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void ANEMachineIR::H2022::BaseNeMatmul::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  operator new();
}

void sub_2599CEFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, char a31, char a32)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a19, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a29, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeBatchMatmul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599D100C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x450], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMatmul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599D3480(_Unwind_Exception *a1)
{
  v4 = *(v2 - 200);
  *(v2 - 200) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x380], 0);
  _Unwind_Resume(a1);
}

void MilTranslator::OpTranslator::TranslateReshape(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v97, "x");
  v6 = (*(*a2 + 120))(a2, &v97, 0);
  v7 = v6;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
    if (v7)
    {
LABEL_3:
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      v9 = LocationPtr[1];
      v95 = *LocationPtr;
      v96 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v93, "x");
      ParameterType = MIL::IROperation::GetParameterType();
      v11 = MIL::IRValueType::AsTensorType(ParameterType);
      std::string::basic_string[abi:ne200100]<0>(v89, "x");
      std::string::basic_string[abi:ne200100]<0>(__p, "reshape");
      ANEMachineIR::Validators::ValidateLiveTensorSize(&v95, v11, v89, __p, &v97);
      if (v88 < 0)
      {
        operator delete(__p[0]);
      }

      if (v90 < 0)
      {
        operator delete(v89[0]);
      }

      if (v94 < 0)
      {
        operator delete(v93[0]);
      }

      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      if ((MIL::ValidationResult::IsGood(&v97) & 1) == 0)
      {
        *a3 = 11;
        Message = MIL::MILResult::GetMessage(&v97);
        if (*(Message + 23) < 0)
        {
          std::string::__init_copy_ctor_external((a3 + 8), *Message, *(Message + 8));
        }

        else
        {
          v46 = *Message;
          *(a3 + 24) = *(Message + 16);
          *(a3 + 8) = v46;
        }

        goto LABEL_113;
      }

      v12 = MIL::IRObject::GetLocationPtr(a2);
      v13 = v12[1];
      v91 = *v12;
      v92 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OutputType = MIL::IROperation::GetOutputType(a2);
      v15 = MIL::IRValueType::AsTensorType(OutputType);
      std::string::basic_string[abi:ne200100]<0>(v89, "output");
      std::string::basic_string[abi:ne200100]<0>(__p, "reshape");
      ANEMachineIR::Validators::ValidateLiveTensorSize(&v91, v15, v89, __p, v93);
      if (v88 < 0)
      {
        operator delete(__p[0]);
      }

      if (v90 < 0)
      {
        operator delete(v89[0]);
      }

      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }

      if (MIL::ValidationResult::IsGood(v93))
      {
        std::string::basic_string[abi:ne200100]<0>(v89, "x");
        v16 = MIL::IROperation::GetParameterType();
        v17 = MIL::IRValueType::AsTensorType(v16);
        v18 = (*(*v17 + 88))(v17);
        v19 = MIL::IROperation::GetOutputType(a2);
        v20 = MIL::IRValueType::AsTensorType(v19);
        v21 = (*(*v20 + 88))(v20);
        if (v90 < 0)
        {
          operator delete(v89[0]);
        }

        if (v18 == v21)
        {
          v22 = MIL::IROperation::GetOutputType(a2);
          v23 = MIL::IRValueType::AsTensorType(v22);
          v24 = (*(*v23 + 88))(v23);
          v25 = "Unsupported dtype for reshape.";
          if (v24 <= 0xE && ((1 << v24) & 0x4210) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v89, "x");
            v26 = MIL::IROperation::GetParameterType();
            v27 = MIL::IRValueType::AsTensorType(v26);
            v28 = (*(*v27 + 96))(v27);
            v29 = (v28[1] - *v28) >> 3;
            if (v90 < 0)
            {
              operator delete(v89[0]);
            }

            MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, v7, v29, v89);
            v30 = MIL::IROperation::GetOutputType(a2);
            v31 = MIL::IRValueType::AsTensorType(v30);
            v32 = (*(*v31 + 96))(v31);
            v34 = *v32;
            v33 = v32[1];
            (*(*a2 + 200))(&v85, a2);
            if (v86 == v85)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v35 = (v33 - v34) >> 3;
            MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, v85, v35, __p);
            v84[0] = &v85;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v84);
            MilTranslator::OpTranslator::GetTransposeOpParamPerm(v89, v29, &v85);
            MilTranslator::OpTranslator::GetTransposeOpParamPerm(__p, v35, v84);
            std::string::basic_string[abi:ne200100]<0>(v81, "x");
            v36 = MIL::IROperation::GetParameterType();
            v37 = MIL::IRValueType::AsTensorType(v36);
            ANEMachineIR::Utils::GetStaticTensorShape(v83, v37, v38);
            if (v82 < 0)
            {
              operator delete(v81[0]);
            }

            v39 = MIL::IROperation::GetOutputType(a2);
            v40 = MIL::IRValueType::AsTensorType(v39);
            ANEMachineIR::Utils::GetStaticTensorShape(v81, v40, v41);
            MilTranslator::OpTranslator::InferTransposedShape(v83, &v85, v80);
            MilTranslator::OpTranslator::InferTransposedShape(v81, v84, &v78);
            (*(*a2 + 200))(&v74, a2);
            if (v75 == v74)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            if (*(v74 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v77, *v74, *(v74 + 1));
            }

            else
            {
              v42 = *v74;
              v77.__r_.__value_.__r.__words[2] = *(v74 + 2);
              *&v77.__r_.__value_.__l.__data_ = v42;
            }

            v71 = &v74;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v71);
            if (MilTranslator::OpTranslator::IsTransposeRequired(v84))
            {
              std::string::append(&v77, "_channel_last");
            }

            v49 = MIL::IROperation::GetOutputType(a2);
            v50 = MIL::IRValueType::AsTensorType(v49);
            (*(*v50 + 88))(v50);
            v74 = 0;
            v75 = 0;
            v76 = 0;
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v78, v79, (v79 - v78) >> 3);
            MIL::IRTensorValueType::Make();
            if (v74)
            {
              v75 = v74;
              operator delete(v74);
            }

            if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v73, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
            }

            else
            {
              v73 = v77;
            }

            MIL::IRNamedValueType::Make();
            if (v74)
            {
              operator new();
            }

            v74 = 0;
            std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v74);
            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v73.__r_.__value_.__l.__data_);
            }

            v71 = 0;
            v72 = 0;
            if (MilTranslator::OpTranslator::IsTransposeRequired(v84))
            {
              (*(*a2 + 200))(&v74, a2);
              if (v75 == v74)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              if (*(v74 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v69, *v74, *(v74 + 1));
              }

              else
              {
                v51 = *v74;
                v69.__r_.__value_.__r.__words[2] = *(v74 + 2);
                *&v69.__r_.__value_.__l.__data_ = v51;
              }

              v53 = MIL::IROperation::GetOutputType(a2);
              MIL::IRValueType::AsTensorType(v53);
              MIL::IRNamedValueType::Make();
              std::shared_ptr<MIL::IRNamedValueType>::operator=[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(&v71, &v70);
              std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v70);
              if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v69.__r_.__value_.__l.__data_);
              }

              v98 = &v74;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v98);
            }

            else
            {
              v52 = v72;
              v71 = 0;
              v72 = 0;
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }
            }

            Function = MIL::IRProgram::GetFunction();
            v55 = (*(*Function + 128))(Function);
            if (!std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__count_unique<std::string>(v55, v7))
            {
              std::string::basic_string[abi:ne200100]<0>(&v74, "x");
              v56 = MIL::IROperation::GetParameterType();
              v57 = MIL::IRValueType::AsTensorType(v56);
              MilTranslator::OpTranslator::EnsureTransposeProducesChannelFirst(this, v7, v57);
              if (SHIBYTE(v76) < 0)
              {
                operator delete(v74);
              }
            }

            std::string::basic_string[abi:ne200100]<0>(&v67, "reshape");
            MilTranslator::OpTranslator::AddOperation(this);
            if (v68 < 0)
            {
              operator delete(v67);
            }

            std::string::basic_string[abi:ne200100]<0>(&v64, "x");
            if (*(v7 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v63, *v7, *(v7 + 8));
            }

            else
            {
              v58 = *v7;
              v63.__r_.__value_.__r.__words[2] = *(v7 + 16);
              *&v63.__r_.__value_.__l.__data_ = v58;
            }

            MIL::Builder::OperationBuilder::AddInput();
            if (v66)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v63.__r_.__value_.__l.__data_);
            }

            if (v65 < 0)
            {
              operator delete(v64);
            }

            Name = MIL::IRNamedValueType::GetName(v71);
            if (*(Name + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v61, *Name, *(Name + 8));
            }

            else
            {
              v60 = *Name;
              v61.__r_.__value_.__r.__words[2] = *(Name + 16);
              *&v61.__r_.__value_.__l.__data_ = v60;
            }

            MIL::IRNamedValueType::GetType(v71);
            MIL::Builder::OperationBuilder::AddOutput();
            if (v62)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v62);
            }

            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }

            *a3 = 0;
            std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            }

            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v72);
            }

            if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v77.__r_.__value_.__l.__data_);
            }

            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            if (v80[0])
            {
              v80[1] = v80[0];
              operator delete(v80[0]);
            }

            if (v81[0])
            {
              v81[1] = v81[0];
              operator delete(v81[0]);
            }

            if (v83[0])
            {
              v83[1] = v83[0];
              operator delete(v83[0]);
            }

            if (v84[0])
            {
              v84[1] = v84[0];
              operator delete(v84[0]);
            }

            if (v85)
            {
              v86 = v85;
              operator delete(v85);
            }

            if (v88 < 0)
            {
              operator delete(__p[0]);
            }

            if (v90 < 0)
            {
              operator delete(v89[0]);
            }

            goto LABEL_112;
          }
        }

        else
        {
          v25 = "Input and output dtypes must match for reshape.";
        }

        *a3 = 11;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), v25);
      }

      else
      {
        *a3 = 11;
        v47 = MIL::MILResult::GetMessage(v93);
        if (*(v47 + 23) < 0)
        {
          std::string::__init_copy_ctor_external((a3 + 8), *v47, *(v47 + 8));
        }

        else
        {
          v48 = *v47;
          *(a3 + 24) = *(v47 + 16);
          *(a3 + 8) = v48;
        }
      }

LABEL_112:
      MEMORY[0x259CA8F00](v93);
LABEL_113:
      MEMORY[0x259CA8F00](&v97);
      return;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  *a3 = 4;
  (*(*a2 + 56))(a2);
  std::operator+<char>();
  v43 = std::string::append(&v97, "' does not handle immediate values");
  v44 = *&v43->__r_.__value_.__l.__data_;
  *(a3 + 24) = *(&v43->__r_.__value_.__l + 2);
  *(a3 + 8) = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }
}

void sub_2599D47CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *a36, uint64_t a37, uint64_t a38, void *a39, std::__shared_weak_count *a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  if (a57)
  {
    operator delete(a57);
  }

  if (a60)
  {
    operator delete(a60);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (*(v67 - 225) < 0)
  {
    operator delete(*(v67 - 248));
  }

  MEMORY[0x259CA8F00](v67 - 200, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x259CA8F00](v67 - 128);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRNamedValueType>::operator=[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRNamedValueType>::shared_ptr[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t *std::shared_ptr<MIL::IRNamedValueType>::shared_ptr[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void ANEMachineIR::Validators::ParsePeReduceParamValues(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (ANEMachineIR::Utils::TryGetStaticTensorShape(a3, &v32))
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "reduction");
    std::string::basic_string[abi:ne200100]<0>(&v24, "mean");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v9 = MEMORY[0x259CA93D0]()) != 0)
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *v9, *(v9 + 8));
      }

      else
      {
        v10 = *v9;
        v27.__r_.__value_.__r.__words[2] = *(v9 + 16);
        *&v27.__r_.__value_.__l.__data_ = v10;
      }
    }

    else
    {
      v27 = v24;
      memset(&v24, 0, sizeof(v24));
    }

    if (*(a4 + 24) == 1)
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v27;
      *(&v27.__r_.__value_.__s + 23) = 0;
      v27.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *a4 = v27;
      memset(&v27, 0, sizeof(v27));
      *(a4 + 24) = 1;
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v27, "reduction_scale");
    v12 = MIL::IROperation::TryGetParameterValue();
    v13 = 1.0;
    if (v12)
    {
      if ((*(*v12 + 40))(v12))
      {
        v14 = MEMORY[0x259CA9400]();
        if (v14)
        {
          v13 = *v14;
        }
      }
    }

    *(a4 + 64) = v13;
    *(a4 + 68) = 1;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v27, "reduction_epsilon");
    v15 = MIL::IROperation::TryGetParameterValue();
    v16 = 0;
    if (v15)
    {
      if ((*(*v15 + 40))(v15))
      {
        v17 = MEMORY[0x259CA9400]();
        if (v17)
        {
          v16 = *v17;
        }
      }
    }

    *(a4 + 72) = v16;
    *(a4 + 76) = 1;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v18 = (v33 - v32) >> 3;
    switch(v18)
    {
      case 3:
        std::string::basic_string[abi:ne200100]<0>(v25, "reduction_axes");
        LOBYTE(v19) = 1;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v21, &v19, &v19 + 1, 1);
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v21, &v27);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a4 + 32, &v27);
        break;
      case 4:
        std::string::basic_string[abi:ne200100]<0>(v25, "reduction_axes");
        v19 = 513;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v21, &v19, &v20, 2);
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v21, &v27);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a4 + 32, &v27);
        break;
      case 5:
        std::string::basic_string[abi:ne200100]<0>(v25, "reduction_axes");
        v19 = 513;
        v20 = 3;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v21, &v19, &v21, 3);
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v21, &v27);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a4 + 32, &v27);
        break;
      default:
        std::string::basic_string[abi:ne200100]<0>(v25, "reduction_axes");
        v21 = 0;
        v22 = 0;
        v23 = 0;
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v21, &v27);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a4 + 32, &v27);
        break;
    }

    if (v27.__r_.__value_.__r.__words[0])
    {
      v27.__r_.__value_.__l.__size_ = v27.__r_.__value_.__r.__words[0];
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    MIL::ValidationResult::ValidationResult(a5);
  }

  else
  {
    v11 = a1[1];
    v30 = *a1;
    v31 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "inputs must have static shape.");
    MEMORY[0x259CA8EE0](a5, &v30, 309, __p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_2599D5170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  v39 = *(v37 + 16);
  if (v39)
  {
    *(v37 + 24) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue) && (v7 = MEMORY[0x259CA93E0]()) != 0)
    {
      LOBYTE(Data) = *v7;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(a4, &Data, &Data + 1, 1);
    }

    else
    {
      v8 = MIL::IROperation::GetParameterValue();
      v9 = MIL::IRValue::AsTensor(v8);
      v10 = (*(*v9 + 32))(v9);
      ANEMachineIR::Utils::GetStaticTensorShape(&Data, v10, v11);
      if (v29 == Data)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *Data;
      v29 = Data;
      operator delete(Data);
      Data = MIL::IRTensorValue::GetDataView<signed char>();
      v29 = v13;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      std::vector<unsigned char>::reserve(a4, v12);
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v15 = MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](&Data, i);
          v17 = a4[1];
          v16 = a4[2];
          if (v17 >= v16)
          {
            v19 = *a4;
            v20 = &v17[-*a4];
            v21 = (v20 + 1);
            if ((v20 + 1) < 0)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            v22 = v16 - v19;
            if (2 * v22 > v21)
            {
              v21 = 2 * v22;
            }

            if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v23 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              operator new();
            }

            v24 = &v17[-*a4];
            *v20 = *v15;
            v18 = (v20 + 1);
            memcpy(0, v19, v24);
            *a4 = 0;
            a4[1] = (v20 + 1);
            a4[2] = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v17 = *v15;
            v18 = (v17 + 1);
          }

          a4[1] = v18;
        }
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v25 = *a3;
    v26 = *(a3 + 8);
    v27 = v26 - *a3;

    std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a4, v25, v26, v27);
  }
}

void sub_2599D54D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidatePeReduce(uint64_t *a1@<X0>, ANEMachineIR::Utils *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, MIL::ValidationResult *a5@<X8>)
{
  v10 = (*(*a2 + 96))(a2);
  if (v10[1] - *v10 <= 0x10uLL)
  {
    v11 = a1[1];
    v125 = *a1;
    v126 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input rank must be >= 3");
    MEMORY[0x259CA8EE0](a5, &v125, 319, __p);
    if (v124 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = v126;
    if (!v126)
    {
      return;
    }

    goto LABEL_114;
  }

  if (*(a4 + 56) != 1)
  {
    goto LABEL_95;
  }

  v13 = (*(*a2 + 96))(a2);
  v14 = v13[1] - *v13;
  ANEMachineIR::Utils::GetStaticTensorShape(&v121, a2, v15);
  v16 = *(a4 + 40);
  v17 = *(a4 + 32);
  v18 = v16 - v17;
  if (v16 == v17)
  {
    goto LABEL_69;
  }

  v19 = 0;
  if (v18 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v16 - v17;
  }

  v21 = 1;
  v22 = 1;
LABEL_14:
  v23 = v19;
  do
  {
    v19 = v23 + 1;
    if (v18 > v23 + 1)
    {
      v24 = v17[v23];
      v25 = v21;
      while (v24 != v17[v25])
      {
        if (v18 <= ++v25)
        {
          goto LABEL_19;
        }
      }

      v22 = 0;
      ++v21;
      goto LABEL_14;
    }

LABEL_19:
    ++v21;
    v23 = v19;
  }

  while (v19 != v20);
  if ((v22 & 1) == 0)
  {
    v36 = a1[1];
    *&v134 = *a1;
    *(&v134 + 1) = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v138, "PE reduce: duplicated axes not allowed.");
    MEMORY[0x259CA8EE0](a5, &v134, 319, &v138);
    goto LABEL_87;
  }

  LOBYTE(v18) = 0;
  v26 = 0;
  v27 = v122 - v121;
  do
  {
    v28 = *v17;
    if (v14 == 32)
    {
      if (v28 == 3)
      {
        if (v27 < 0x19)
        {
          goto LABEL_241;
        }

        v29 = *(v121 + 3);
      }

      else if (v28 == 1)
      {
        if (v27 < 9)
        {
          goto LABEL_241;
        }

        v29 = *(v121 + 1);
      }

      else
      {
        if (*v17)
        {
          goto LABEL_40;
        }

        if (v122 == v121)
        {
          goto LABEL_241;
        }

        v29 = *v121;
      }

      if (v29 == 1)
      {
LABEL_40:
        LOBYTE(v30) = 0;
        goto LABEL_52;
      }

      LOBYTE(v30) = 0;
      ++v26;
    }

    else
    {
      if (v14 != 40)
      {
        goto LABEL_40;
      }

      LOBYTE(v30) = 1;
      if (*v17 > 1u)
      {
        if (v28 == 2)
        {
          if (v27 < 0x11)
          {
            goto LABEL_241;
          }

          v30 = *(v121 + 2);
        }

        else
        {
          if (v28 != 4)
          {
            goto LABEL_52;
          }

          if (v27 < 0x21)
          {
            goto LABEL_241;
          }

          v30 = *(v121 + 4);
        }
      }

      else if (*v17)
      {
        if (v27 < 9)
        {
          goto LABEL_241;
        }

        v30 = *(v121 + 1);
      }

      else
      {
        if (v122 == v121)
        {
          goto LABEL_241;
        }

        v30 = *v121;
      }

      if (v30 != 1)
      {
        ++v26;
        LOBYTE(v30) = 1;
      }
    }

LABEL_52:
    v32 = v14 == 24 && v28 == 1;
    if (v14 == 32 && v28 == 2)
    {
      v32 = 1;
    }

    LOBYTE(v18) = v32 | v30 & (v28 == 3) | v18;
    ++v17;
  }

  while (v17 != v16);
  if (v26 >= 3)
  {
    v34 = a1[1];
    *&v134 = *a1;
    *(&v134 + 1) = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v138, "PE reduce: for N/D/H/C dims, reduce up to 2 dims is allowed.");
    MEMORY[0x259CA8EE0](a5, &v134, 319, &v138);
    goto LABEL_87;
  }

LABEL_69:
  if (v14 == 24 && (v18 & 1) == 0)
  {
    if ((v122 - v121) >= 9)
    {
      v35 = *(v121 + 1);
      goto LABEL_82;
    }

LABEL_241:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v14 != 32) | v18 & 1)
  {
    if (!((v14 != 40) | v18 & 1))
    {
      if ((v122 - v121) <= 0x18)
      {
        goto LABEL_241;
      }

      v35 = *(v121 + 3);
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if ((v122 - v121) < 0x11)
  {
    goto LABEL_241;
  }

  v35 = *(v121 + 2);
LABEL_82:
  if (v35 == 1)
  {
LABEL_83:
    MIL::ValidationResult::ValidationResult(a5);
    goto LABEL_91;
  }

  v37 = a1[1];
  *&v134 = *a1;
  *(&v134 + 1) = v37;
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v138, "PE reduce: for W dim, if its input dim size is not 1, it should be reduced (W should appear in reduction_axis).");
  MEMORY[0x259CA8EE0](a5, &v134, 319, &v138);
LABEL_87:
  if (v140 < 0)
  {
    operator delete(v138);
  }

  if (*(&v134 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v134 + 1));
  }

LABEL_91:
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  if (!MIL::ValidationResult::IsGood(a5))
  {
    return;
  }

  MEMORY[0x259CA8F00](a5);
LABEL_95:
  if (*(a4 + 24) == 1)
  {
    v38 = *(a4 + 23);
    if (v38 < 0)
    {
      if (*(a4 + 8) != 4)
      {
        goto LABEL_102;
      }

      v39 = *a4;
    }

    else
    {
      v39 = a4;
      if (v38 != 4)
      {
LABEL_102:
        v40 = a1[1];
        v119 = *a1;
        v120 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v117, "Only mean reduction is supported at the moment.");
        MEMORY[0x259CA8EE0](a5, &v119, 319, v117);
        if (v118 < 0)
        {
          operator delete(v117[0]);
        }

        v12 = v120;
        if (!v120)
        {
          return;
        }

LABEL_114:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        return;
      }
    }

    if (*v39 != 1851876717)
    {
      goto LABEL_102;
    }
  }

  if (*(a4 + 104) != 1)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    if (ANEMachineIR::Utils::TryGetStaticTensorShape(a2, &v110))
    {
      v103 = 0;
      v104 = 0;
      v105 = 0;
      if (ANEMachineIR::Utils::TryGetStaticTensorShape(a3, &v103))
      {
        __src = 0;
        v128 = 0;
        v129 = 0;
        v43 = v110;
        v42 = v111;
        v44 = v111 - v110;
        v45 = (v111 - v110) >> 3;
        v47 = *(a4 + 32);
        v46 = *(a4 + 40);
        std::vector<unsigned long long>::reserve(&__src, v45);
        std::vector<BOOL>::vector(&v138, v45);
        if (v42 != v43)
        {
          v48 = 0;
          v49 = v138;
          if (v45 <= 1)
          {
            v50 = 1;
          }

          else
          {
            v50 = v45;
          }

          do
          {
            if (v139 <= v48)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            *&v49[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v48);
            ++v48;
          }

          while (v50 != v48);
        }

        if (v46 == v47)
        {
          if (v45 >= 3)
          {
            if (v139 <= 1)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v58 = v138;
            v59 = *v138;
            *v138 |= 2uLL;
            if (v44 != 24)
            {
              if (v139 <= 2)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              *v58 = v59 | 6;
              if (v44 == 40)
              {
                if (v139 <= 3)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                *v58 = v59 | 0xE;
              }
            }
          }
        }

        else
        {
          v51 = v46 - v47;
          v52 = *(a4 + 32);
          v53 = *(a4 + 40) - v52;
          v54 = v138;
          if ((v46 - v47) <= 1)
          {
            v51 = 1;
          }

          do
          {
            if (!v53)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v55 = *v52;
            if (v139 <= v55)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            *&v54[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
            ++v52;
            --v53;
            --v51;
          }

          while (v51);
        }

        v128 = __src;
        std::vector<unsigned long long>::reserve(&__src, v45);
        if (v42 != v43)
        {
          v60 = 0;
          if (v45 <= 1)
          {
            v45 = 1;
          }

          while (1)
          {
            if (v139 <= v60)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            if ((*&v138[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v60))
            {
              v61 = v128;
              if (v128 >= v129)
              {
                v64 = __src;
                v65 = v128 - __src;
                v66 = (v128 - __src) >> 3;
                v67 = v66 + 1;
                if ((v66 + 1) >> 61)
                {
                  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
                }

                v68 = v129 - __src;
                if ((v129 - __src) >> 2 > v67)
                {
                  v67 = v68 >> 2;
                }

                if (v68 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v69 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v69 = v67;
                }

                if (v69)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v69);
                }

                v74 = (8 * v66);
                v75 = 0;
                *v74 = 1;
                v62 = (v74 + 1);
LABEL_178:
                memcpy(v75, v64, v65);
                v77 = __src;
                __src = v75;
                v128 = v62;
                v129 = 0;
                if (v77)
                {
                  operator delete(v77);
                }

                goto LABEL_180;
              }

              *v128 = 1;
              v62 = v61 + 8;
            }

            else
            {
              if (v60 >= (v111 - v110) >> 3)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v63 = v128;
              if (v128 >= v129)
              {
                v64 = __src;
                v65 = v128 - __src;
                v70 = (v128 - __src) >> 3;
                v71 = v70 + 1;
                if ((v70 + 1) >> 61)
                {
                  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
                }

                v72 = v129 - __src;
                if ((v129 - __src) >> 2 > v71)
                {
                  v71 = v72 >> 2;
                }

                if (v72 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v73 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v73 = v71;
                }

                if (v73)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v73);
                }

                v76 = (8 * v70);
                v75 = &v76[-((v128 - __src) >> 3)];
                *v76 = *(v110 + v60);
                v62 = (v76 + 1);
                goto LABEL_178;
              }

              *v128 = *(v110 + v60);
              v62 = v63 + 8;
            }

LABEL_180:
            v128 = v62;
            if (v45 == ++v60)
            {
              goto LABEL_183;
            }
          }
        }

        v62 = v128;
LABEL_183:
        v78 = __src;
        v79 = v62 - __src;
        if (v62 - __src == v111 - v110)
        {
          MIL::ValidationResult::ValidationResult(a5);
        }

        else
        {
          v80 = a1[1];
          v136 = *a1;
          v137 = v80;
          if (v80)
          {
            atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
            v79 = v128 - v78;
          }

          std::to_string(&v131, v79 >> 3);
          v81 = std::string::insert(&v131, 0, "Output rank ");
          v82 = *&v81->__r_.__value_.__l.__data_;
          v132.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
          *&v132.__r_.__value_.__l.__data_ = v82;
          v81->__r_.__value_.__l.__size_ = 0;
          v81->__r_.__value_.__r.__words[2] = 0;
          v81->__r_.__value_.__r.__words[0] = 0;
          v83 = std::string::append(&v132, " does not match rank of input tensor of shape ");
          v84 = *&v83->__r_.__value_.__l.__data_;
          v133.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
          *&v133.__r_.__value_.__l.__data_ = v84;
          v83->__r_.__value_.__l.__size_ = 0;
          v83->__r_.__value_.__r.__words[2] = 0;
          v83->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v130, (v111 - v110) >> 3);
          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = &v130;
          }

          else
          {
            v85 = v130.__r_.__value_.__r.__words[0];
          }

          if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v130.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v130.__r_.__value_.__l.__size_;
          }

          v87 = std::string::append(&v133, v85, size);
          v88 = *&v87->__r_.__value_.__l.__data_;
          v135 = v87->__r_.__value_.__r.__words[2];
          v134 = v88;
          v87->__r_.__value_.__l.__size_ = 0;
          v87->__r_.__value_.__r.__words[2] = 0;
          v87->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a5, &v136, 313, &v134);
          if (SHIBYTE(v135) < 0)
          {
            operator delete(v134);
          }

          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v131.__r_.__value_.__l.__data_);
          }

          if (v137)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v137);
          }
        }

        if (v138)
        {
          operator delete(v138);
        }

        if (MIL::ValidationResult::IsGood(a5))
        {
          MEMORY[0x259CA8F00](a5);
          if (v128 - __src == v104 - v103 && !memcmp(__src, v103, v128 - __src))
          {
            MIL::ValidationResult::ValidationResult(a5);
          }

          else
          {
            ANEMachineIR::Utils::ShapeString(&v103);
            ANEMachineIR::Utils::ShapeString(&__src);
            v89 = a1[1];
            v136 = *a1;
            v137 = v89;
            if (v89)
            {
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::operator+<char>();
            v90 = std::string::append(&v130, " does not match inferred shape ");
            v91 = *&v90->__r_.__value_.__l.__data_;
            v131.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
            *&v131.__r_.__value_.__l.__data_ = v91;
            v90->__r_.__value_.__l.__size_ = 0;
            v90->__r_.__value_.__r.__words[2] = 0;
            v90->__r_.__value_.__r.__words[0] = 0;
            if (v135 >= 0)
            {
              v92 = &v134;
            }

            else
            {
              v92 = v134;
            }

            if (v135 >= 0)
            {
              v93 = HIBYTE(v135);
            }

            else
            {
              v93 = *(&v134 + 1);
            }

            v94 = std::string::append(&v131, v92, v93);
            v95 = *&v94->__r_.__value_.__l.__data_;
            v132.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
            *&v132.__r_.__value_.__l.__data_ = v95;
            v94->__r_.__value_.__l.__size_ = 0;
            v94->__r_.__value_.__r.__words[2] = 0;
            v94->__r_.__value_.__r.__words[0] = 0;
            v96 = std::string::append(&v132, ".");
            v97 = *&v96->__r_.__value_.__l.__data_;
            v133.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
            *&v133.__r_.__value_.__l.__data_ = v97;
            v96->__r_.__value_.__l.__size_ = 0;
            v96->__r_.__value_.__r.__words[2] = 0;
            v96->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a5, &v136, 313, &v133);
            if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v133.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v131.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v130.__r_.__value_.__l.__data_);
            }

            if (v137)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v137);
            }

            if (SHIBYTE(v135) < 0)
            {
              operator delete(v134);
            }

            if (v140 < 0)
            {
              operator delete(v138);
            }
          }
        }

        if (__src)
        {
          v128 = __src;
          operator delete(__src);
        }

        if (MIL::ValidationResult::IsGood(a5))
        {
          v98 = MEMORY[0x259CA8F00](a5);
          MIL::ValidationResult::ValidationResult(v98);
        }
      }

      else
      {
        v57 = a1[1];
        v101 = *a1;
        v102 = v57;
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v99, "outputs must have static shape.");
        MEMORY[0x259CA8EE0](a5, &v101, 313, v99);
        if (v100 < 0)
        {
          operator delete(v99[0]);
        }

        if (v102)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v102);
        }
      }

      if (v103)
      {
        v104 = v103;
        operator delete(v103);
      }
    }

    else
    {
      v56 = a1[1];
      v108 = *a1;
      v109 = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v106, "inputs must have static shape.");
      MEMORY[0x259CA8EE0](a5, &v108, 309, v106);
      if (v107 < 0)
      {
        operator delete(v106[0]);
      }

      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v109);
      }
    }

    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    return;
  }

  v41 = a1[1];
  v115 = *a1;
  v116 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v113, "reduction_post_processing is not supported at the moment.");
  MEMORY[0x259CA8EE0](a5, &v115, 319, v113);
  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  v12 = v116;
  if (v116)
  {
    goto LABEL_114;
  }
}