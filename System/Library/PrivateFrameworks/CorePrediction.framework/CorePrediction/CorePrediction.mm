double *CPMLOnlineSvm::ConditionalUpdate(double *this, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = this[20];
    v4 = *(this + 45);
    v5 = *(this + 39);
    v6 = *(v5 + 8 * a3) - fmin(v3 * *(v4 + 8 * a3), 0.0);
    if (v6 > 0.0)
    {
      v7 = fmax(v3 * *(v4 + 8 * a2), 0.0) - *(v5 + 8 * a2);
      if (v7 > 0.0)
      {
        v8 = *(*(this + 48) + 8 * a2) - *(*(this + 48) + 8 * a3);
        if (v8 > this[21])
        {
          return CPMLOnlineSvm::Update(this, a2, a3, v7, v6, v8);
        }
      }
    }
  }

  return this;
}

void *CPMLOnlineSvm::Update(void *this, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = this[54];
  v7 = v6[a2];
  v8 = this[13];
  if (v8 <= v7)
  {
    CPMLOnlineSvm::Update();
  }

  v9 = this[14];
  if (v9 <= v7)
  {
    CPMLOnlineSvm::Update();
  }

  v10 = v6[a3];
  if (v8 <= v10)
  {
    CPMLOnlineSvm::Update();
  }

  if (v9 <= v10)
  {
    CPMLOnlineSvm::Update();
  }

  v11 = this[12];
  v12 = this[15];
  v13 = this[16];
  v14 = v12 * v7;
  v15 = v13 * v7;
  v16 = v10 * v12;
  v17 = v10 * v13;
  v18 = a6 / (*(v11 + 8 * v14 + 8 * v15) + *(v11 + 8 * v16 + 8 * v17) + *(v11 + 8 * v14 + 8 * v17) * -2.0);
  if (a5 < a4)
  {
    a4 = a5;
  }

  v19 = this[39];
  if (a4 >= v18)
  {
    a4 = v18;
  }

  *(v19 + 8 * a2) = *(v19 + 8 * a2) + a4;
  *(v19 + 8 * a3) = *(v19 + 8 * a3) - a4;
  v20 = this[48];
  v21 = this[49] - v20;
  if (v21)
  {
    v22 = v21 >> 3;
    if (v22 <= 1)
    {
      v22 = 1;
    }

    do
    {
      v24 = *v6++;
      v23 = v24;
      if (v8 <= v24)
      {
        CPMLOnlineSvm::Update();
      }

      *v20 = *v20 - (*(v11 + 8 * v23 * v12 + 8 * v15) - *(v11 + 8 * v23 * v12 + 8 * v17)) * a4;
      ++v20;
      --v22;
    }

    while (v22);
  }

  v25 = this[52];
  v26 = this[53];
  if (v25 != v26)
  {
    v27 = this[42];
    v28 = *(v27 + 16 * a2);
    v29 = *(v27 + 16 * a3);
    do
    {
      v30 = *v28++;
      v31 = v30;
      v32 = *v29++;
      *v25 = *v25 + a4 * (v31 - v32);
      ++v25;
    }

    while (v25 != v26);
  }

  return this;
}

uint64_t CPMLOnlineSvm::ChooseArgminJ(CPMLOnlineSvm *this)
{
  v1 = *(this + 43) - *(this + 42);
  if (!v1)
  {
    v5 = 1.79769313e308;
    goto LABEL_12;
  }

  v2 = 0;
  v3 = v1 >> 4;
  if ((v1 >> 4) <= 1)
  {
    v3 = 1;
  }

  v4 = -1.0;
  v5 = 1.79769313e308;
  do
  {
    if (*(*(this + 39) + 8 * v2) > fmin(*(this + 20) * *(*(this + 45) + 8 * v2), 0.0) && *(*(this + 48) + 8 * v2) < v5)
    {
      v4 = v2;
      v5 = *(*(this + 48) + 8 * v2);
    }

    ++v2;
  }

  while (v3 != v2);
  if (v4 == -1.0)
  {
LABEL_12:
    printf("current_min = %lf\n", v5);
    printf("# of sv = %lu\n", (*(this + 43) - *(this + 42)) >> 4);
    exit(1);
  }

  return v4;
}

uint64_t CPMLOnlineSvm::ChooseArgmaxI(CPMLOnlineSvm *this)
{
  v1 = *(this + 43) - *(this + 42);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = v1 >> 4;
  if ((v1 >> 4) <= 1)
  {
    v3 = 1;
  }

  v4 = -1.0;
  v5 = -1.79769313e308;
  do
  {
    if (*(*(this + 39) + 8 * v2) < fmax(*(this + 20) * *(*(this + 45) + 8 * v2), 0.0) && *(*(this + 48) + 8 * v2) > v5)
    {
      v4 = v2;
      v5 = *(*(this + 48) + 8 * v2);
    }

    ++v2;
  }

  while (v3 != v2);
  if (v4 == -1.0)
  {
LABEL_11:
    CPMLOnlineSvm::ChooseArgmaxI();
  }

  return v4;
}

double *CPMLOnlineSvm::Process(CPMLOnlineSvm *a1, double **a2, double a3, double a4, double a5)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = *(a1 + 52);
    v10 = 0.0;
    do
    {
      v11 = *v7++;
      v12 = v11;
      v13 = *v9++;
      v10 = v10 + v12 * v13;
    }

    while (v7 != v8);
  }

  if (!((*(a1 + 33) - *(a1 + 32)) >> 14))
  {
    v14 = *(a1 + 39);
    v15 = *(a1 + 40) - v14;
    if (v15)
    {
      v16 = v15 >> 3;
      v17 = *(a1 + 54);
      v18 = *(a1 + 57) + 1;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v10 = 0.0;
      do
      {
        v20 = *v17++;
        v19 = v20;
        if (*(a1 + 13) <= v20)
        {
          CPMLOnlineSvm::Update();
        }

        if (*(a1 + 14) <= v18)
        {
          CPMLOnlineSvm::Update();
        }

        v21 = *v14++;
        v10 = v10 + v21 * *(*(a1 + 12) + 8 * *(a1 + 15) * v19 + 8 * *(a1 + 16) * v18);
        --v16;
      }

      while (v16);
    }

    else
    {
      v10 = 0.0;
    }
  }

  v22 = a3 - v10;
  std::valarray<double>::valarray(&__p, a2);
  CPMLOnlineSvm::AddNewSv(a1, a3, 0.0, v22, &__p);
  if (__p)
  {
    if (v27 != __p)
    {
      v27 += (__p - v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
    __p = 0;
    v27 = 0;
  }

  if (a3 == 1.0)
  {
    v23 = ((*(a1 + 43) - *(a1 + 42)) >> 4) - 1;
    v24 = CPMLOnlineSvm::ChooseArgminJ(a1);
  }

  else
  {
    v23 = CPMLOnlineSvm::ChooseArgmaxI(a1);
    v24 = ((*(a1 + 43) - *(a1 + 42)) >> 4) - 1;
  }

  return CPMLOnlineSvm::ConditionalUpdate(a1, v23, v24);
}

void sub_2472D43B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMLOnlineSvm::AddNewSv(void *a1, double a2, double a3, double a4, uint64_t **a5)
{
  v22 = a3;
  v23 = a2;
  v21 = a4;
  std::vector<std::valarray<double>>::push_back[abi:ne200100](a1 + 42, a5);
  std::vector<double>::push_back[abi:ne200100](a1 + 45, &v23);
  std::vector<double>::push_back[abi:ne200100](a1 + 39, &v22);
  std::vector<double>::push_back[abi:ne200100](a1 + 48, &v21);
  v6 = a1[56];
  v7 = a1[57] + 1;
  a1[57] = v7;
  v8 = a1[55];
  if (v8 >= v6)
  {
    v10 = a1[54];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v14 = v6 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
    v16 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>((a1 + 54), v16);
    }

    v17 = (v8 - v10) >> 3;
    v18 = (8 * v12);
    v19 = (8 * v12 - 8 * v17);
    *v18 = v7;
    v9 = v18 + 1;
    memcpy(v19, v10, v11);
    v20 = a1[54];
    a1[54] = v19;
    a1[55] = v9;
    a1[56] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v8 = v7;
    v9 = v8 + 1;
  }

  a1[55] = v9;
}

uint64_t std::valarray<double>::~valarray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void CPMLOnlineSvm::Train(CPMLOnlineSvm *this)
{
  CPMLOnlineSvm::Init(this);

  CPMLOnlineSvm::OnlineIteration(this, v2, v3, v4);
}

void CPMLOnlineSvm::Init(CPMLOnlineSvm *this)
{
  v2 = (*(this + 33) - *(this + 32)) >> 4;
  CoreMatrix::Matrix<double>::Resize(this + 12, v2 * v2);
  *(this + 13) = v2;
  *(this + 14) = v2;
  v3 = *(this + 36);
  v4 = v3 == 1;
  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = 1;
  }

  *(this + 15) = v5;
  *(this + 16) = v6;
  v7 = *(this + 32);
  v8 = *(this + 33);
  if (v8 != v7)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v8 - v7) >> 4;
      v12 = v9;
      for (i = v10; v11 > i; v12 += 16)
      {
        if (*(this + 28))
        {
          v14 = CPMLOnlineSvm::SparseKernel(this, (*(this + 35) + 16 * v10), (*(this + 35) + v12));
          v15 = *(this + 13);
          if (v15 <= v10)
          {
            CPMLOnlineSvm::Update();
          }

          v16 = *(this + 14);
          if (v16 <= i)
          {
            CPMLOnlineSvm::Update();
          }

          v17 = *(this + 12);
          v18 = *(this + 15);
          v19 = *(this + 16);
          *(v17 + 8 * v18 * v10 + 8 * v19 * i) = v14;
          if (v15 <= i)
          {
            CPMLOnlineSvm::Update();
          }

          if (v16 <= v10)
          {
            CPMLOnlineSvm::Update();
          }
        }

        else
        {
          v14 = CPMLOnlineSvm::DenseKernel(this, &v7[2 * v10], (v7 + v12));
          v20 = *(this + 13);
          if (v20 <= v10)
          {
            CPMLOnlineSvm::Update();
          }

          v21 = *(this + 14);
          if (v21 <= i)
          {
            CPMLOnlineSvm::Update();
          }

          v17 = *(this + 12);
          v18 = *(this + 15);
          v19 = *(this + 16);
          *(v17 + 8 * v18 * v10 + 8 * v19 * i) = v14;
          if (v20 <= i)
          {
            CPMLOnlineSvm::Update();
          }

          if (v21 <= v10)
          {
            CPMLOnlineSvm::Update();
          }
        }

        *(v17 + 8 * v18 * i++ + 8 * v19 * v10) = v14;
        v7 = *(this + 32);
        v8 = *(this + 33);
        v11 = (v8 - v7) >> 4;
      }

      ++v10;
      v9 += 16;
    }

    while (v11 > v10);
  }

  v22 = **(this + 29);
  std::valarray<double>::valarray(&__p, v7);
  CPMLOnlineSvm::AddNewSv(this, v22, 0.0, v22, &__p);
  if (__p)
  {
    if (v52 != __p)
    {
      v52 += (__p - v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
    __p = 0;
    v52 = 0;
  }

  if (*(*(this + 29) + 4) == v22)
  {
    v23 = 0;
    v24 = 16;
    do
    {
      std::valarray<double>::valarray(&v49, (*(this + 32) + v24));
      v25 = *(*(this + 29) + 4 * v23 + 4);
      CPMLOnlineSvm::AddNewSv(this, v25, 0.0, v25, &v49);
      if (v49)
      {
        if (v50 != v49)
        {
          v50 += (v49 - v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(v49);
        v49 = 0;
        v50 = 0;
      }

      v26 = *(*(this + 29) + 4 * v23++ + 8);
      v24 += 16;
    }

    while (v26 == v22);
    v27 = (v23 + 2);
    v28 = v23 + 1;
  }

  else
  {
    v28 = 1;
    v27 = 2;
  }

  std::valarray<double>::valarray(&v47, (*(this + 32) + 16 * v28));
  v29 = *(*(this + 29) + 4 * v28);
  CPMLOnlineSvm::AddNewSv(this, v29, 0.0, v29, &v47);
  if (v47)
  {
    if (v48 != v47)
    {
      v48 += (v47 - v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v47);
    v47 = 0;
    v48 = 0;
  }

  v30 = *(this + 42);
  v31 = (*(this + 43) - v30) >> 4;
  if (*(this + 43) == v30)
  {
    *(this + 58) = v27;
  }

  else
  {
    v32 = 0;
    v33 = *(this + 39);
    v34 = *(this + 52);
    v35 = *(this + 53);
    if (v31 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = (*(this + 43) - v30) >> 4;
    }

    do
    {
      if (v34 != v35)
      {
        v37 = *(v30 + 16 * v32);
        v38 = v34;
        do
        {
          v39 = *v37++;
          *v38 = *v38 + v39 * *(v33 + 8 * v32);
          ++v38;
        }

        while (v38 != v35);
      }

      ++v32;
    }

    while (v32 != v36);
    v40 = 0;
    *(this + 58) = v27;
    v41 = (v36 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = vdupq_n_s64(v36 - 1);
    v43 = xmmword_247321D00;
    v44 = (*(this + 54) + 8);
    v45 = vdupq_n_s64(2uLL);
    do
    {
      v46 = vmovn_s64(vcgeq_u64(v42, v43));
      if (v46.i8[0])
      {
        *(v44 - 1) = v40;
      }

      if (v46.i8[4])
      {
        *v44 = v40 + 1;
      }

      v40 += 2;
      v43 = vaddq_s64(v43, v45);
      v44 += 2;
    }

    while (v41 != v40);
  }

  *(this + 57) = v31 - 1;
}

void sub_2472D4988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _BYTE *__p, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    if (a10 != __p)
    {
      *(v14 + 8) = &a10[(__p - a10 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMLOnlineSvm::OnlineIteration(CPMLOnlineSvm *this, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(this + 58);
  v6 = *(this + 32);
  v7 = MEMORY[0x277D85E08];
  if (v5 < (*(this + 33) - v6) >> 4)
  {
    v8 = 16 * v5;
    v9 = MEMORY[0x277D82678];
    do
    {
      if (500 * (v5 / 0x1F4) == v5)
      {
        v10 = MEMORY[0x24C19F870](v9, v5, a2, a3, a4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "... ", 4);
        fflush(*v7);
        v6 = *(this + 32);
      }

      CPMLOnlineSvm::Process(this, (v6 + v8), *(*(this + 29) + 4 * v5), a3.n128_f64[0], a4.n128_f64[0]);
      a2.n128_f64[0] = CPMLOnlineSvm::Reprocess(this);
      ++v5;
      v6 = *(this + 32);
      v8 += 16;
    }

    while (v5 < (*(this + 33) - v6) >> 4);
  }

  if (*(this + 45) >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x277D82678];
    do
    {
      if (*(this + 51) <= *(this + 21))
      {
        break;
      }

      if (1000 * (v11 / 0x3E8) == v11)
      {
        v13 = MEMORY[0x24C19F850](v12, v11);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " (", 2);
        v15 = MEMORY[0x24C19F870](v14, (*(this + 43) - *(this + 42)) >> 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ")... ", 5);
        fflush(*v7);
      }

      CPMLOnlineSvm::Reprocess(this);
      v11 = (v11 + 1);
    }

    while (v11 < *(this + 45));
  }
}

uint64_t std::vector<std::valarray<double>>::push_back[abi:ne200100](uint64_t *a1, uint64_t **a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::valarray<double>>::__emplace_back_slow_path<std::valarray<double> const&>(a1, a2);
  }

  else
  {
    std::valarray<double>::valarray(a1[1], a2);
    result = v3 + 16;
    a1[1] = v3 + 16;
  }

  a1[1] = result;
  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
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
      std::vector<double>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
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
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

double CPMLOnlineSvm::Reprocess(double **this)
{
  v2 = CPMLOnlineSvm::ChooseArgmaxI(this);
  v3 = CPMLOnlineSvm::ChooseArgminJ(this);
  CPMLOnlineSvm::ConditionalUpdate(this, v2, v3);
  v4 = CPMLOnlineSvm::ChooseArgmaxI(this);
  v5 = CPMLOnlineSvm::ChooseArgminJ(this);
  v6 = this[43] - this[42];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v6 >> 4;
    do
    {
      v10 = this[39];
      if (v10[v7] == 0.0)
      {
        if ((v11 = this[45][v7], v11 == 1.0) && this[48][v7] <= this[48][v5] || v11 != 1.0 && this[48][v7] >= this[48][v4])
        {
          v12 = this[42];
          v13 = this[52];
          v14 = this[53];
          if (v13 != v14)
          {
            v15 = *&v12[2 * v7];
            do
            {
              v16 = *v15++;
              *v13 = *v13 - v10[v7] * v16;
              ++v13;
            }

            while (v13 != v14);
          }

          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::valarray<double> *,std::valarray<double> *,std::valarray<double> *>(&v42, &v12[2 * v7 + 2], this[43], &v12[2 * v7]);
          v18 = v17;
          v19 = this[43];
          if (v19 != v17)
          {
            do
            {
              v19 -= 2;
              std::allocator<std::valarray<double>>::destroy[abi:ne200100]((this + 42), v19);
            }

            while (v19 != v18);
          }

          this[43] = v18;
          v20 = this[45];
          v21 = this[46];
          v22 = &v20[v7];
          v23 = (v21 - (v22 + 1));
          if (v21 != v22 + 1)
          {
            memmove(&v20[v7], v22 + 1, v21 - (v22 + 1));
          }

          v24 = v7;
          this[46] = &v23[v22];
          v25 = this[39];
          v26 = this[40];
          v27 = &v25[v24];
          v28 = &v25[v24 + 1];
          v29 = v26 - v28;
          if (v26 != v28)
          {
            memmove(&v25[v24], v28, v26 - v28);
          }

          this[40] = (v27 + v29);
          v30 = this[48];
          v31 = this[49];
          v32 = &v30[v24];
          v33 = &v30[v24 + 1];
          v34 = v31 - v33;
          if (v31 != v33)
          {
            memmove(&v30[v24], v33, v31 - v33);
          }

          this[49] = (v32 + v34);
          v35 = this[54];
          v36 = this[55];
          v37 = &v35[v24];
          v38 = &v35[v24 + 1];
          v39 = v36 - v38;
          if (v36 != v38)
          {
            memmove(&v35[v24], v38, v36 - v38);
          }

          this[55] = (v37 + v39);
          v4 -= v4 > v8;
          v5 -= v5 > v8;
          --v9;
          --v8;
        }
      }

      v7 = ++v8;
    }

    while (v9 > v8);
  }

  v40 = this[48];
  *(this + 38) = (v40[v4] + v40[v5]) * 0.5;
  result = v40[v4] - v40[v5];
  *(this + 51) = result;
  return result;
}

double CPMLOnlineSvm::SparseKernel(uint64_t a1, char **a2, char **a3)
{
  v4 = *(a1 + 152);
  if (v4 == 2)
  {

    return CPMLOnlineSvm::RbfSparseKernel(a1, a2, a3);
  }

  else if (v4 == 1)
  {
    v6 = *(a1 + 192);
    v7 = CPMLOnlineSvm::LinearSparseKernel(a1, a2, a3);
    v8 = *(a1 + 208);
    v9 = *(a1 + 200) + v6 * v7;

    return pow(v9, v8);
  }

  else
  {
    if (v4)
    {
      v10 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82670], "Only three kernels are supported now: linear, poly, and rbf.");
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v10);
      exit(1);
    }

    return CPMLOnlineSvm::LinearSparseKernel(a1, a2, a3);
  }
}

double CPMLOnlineSvm::DenseKernel(uint64_t a1, double **a2, double **a3)
{
  v3 = *(a1 + 152);
  if (v3 == 2)
  {

    return CPMLOnlineSvm::RbfDenseKernel(a1, a2, a3);
  }

  else if (v3 == 1)
  {

    return CPMLOnlineSvm::PolyDenseKernel(a1, a2, a3);
  }

  else
  {
    if (v3)
    {
      v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82670], "Only three kernels are supported now: linear, poly, and rbf.");
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v11);
      exit(1);
    }

    v4 = *a2;
    v5 = a2[1];
    if (*a2 == v5)
    {
      return 0.0;
    }

    else
    {
      v6 = *a3;
      result = 0.0;
      do
      {
        v8 = *v4++;
        v9 = v8;
        v10 = *v6++;
        result = result + v9 * v10;
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

uint64_t CPMLOnlineSvm::Evaluate(uint64_t a1, double **a2)
{
  v2 = *(a1 + 304);
  v3 = *(a1 + 336);
  v4 = *(a1 + 344);
  if (v4 != v3)
  {
    for (i = 0; i < (v4 - v3) >> 4; ++i)
    {
      v8 = *(a1 + 152);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v25 = *(*(a1 + 312) + 8 * i);
          v2 = v2 + v25 * CPMLOnlineSvm::RbfDenseKernel(a1, a2, v3 + 16 * i);
          v3 = *(a1 + 336);
          v4 = *(a1 + 344);
        }

        else if (v8 == 3)
        {
          v11 = *a2;
          v12 = a2[1];
          if (*a2 == v12)
          {
            v14 = 0.0;
          }

          else
          {
            v13 = *(v3 + 16 * i);
            v14 = 0.0;
            do
            {
              v15 = *v11++;
              v16 = v15;
              v17 = *v13++;
              v14 = v14 + v16 * v17;
            }

            while (v11 != v12);
          }

          v9 = *(*(a1 + 312) + 8 * i);
          v10 = tanh(*(a1 + 200) + *(a1 + 192) * v14);
          goto LABEL_20;
        }
      }

      else
      {
        if (!v8)
        {
          v18 = *a2;
          v19 = a2[1];
          if (*a2 == v19)
          {
            v21 = 0.0;
          }

          else
          {
            v20 = *(v3 + 16 * i);
            v21 = 0.0;
            do
            {
              v22 = *v18++;
              v23 = v22;
              v24 = *v20++;
              v21 = v21 + v23 * v24;
            }

            while (v18 != v19);
          }

          v2 = v2 + *(*(a1 + 312) + 8 * i) * v21;
          continue;
        }

        if (v8 == 1)
        {
          v9 = *(*(a1 + 312) + 8 * i);
          v10 = CPMLOnlineSvm::PolyDenseKernel(a1, a2, (v3 + 16 * i));
LABEL_20:
          v2 = v2 + v9 * v10;
        }
      }
    }
  }

  if (v2 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double CPMLOnlineSvm::LinearDenseKernel(uint64_t a1, double **a2, double **a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0.0;
  }

  v5 = *a3;
  result = 0.0;
  do
  {
    v7 = *v3++;
    v8 = v7;
    v9 = *v5++;
    result = result + v8 * v9;
  }

  while (v3 != v4);
  return result;
}

double CPMLOnlineSvm::RbfDenseKernel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  std::__val_expr<std::_BinaryOp<std::minus<double>,std::valarray<double>,std::valarray<double>>>::operator std::valarray<double>(v14, &v12);
  v4 = v12;
  v5 = v13;
  v6 = v12 - v13;
  if (v12 == v13)
  {
    v10 = exp(*(a1 + 184) * -0.0);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0.0;
    v8 = v12;
    do
    {
      v9 = *v8++;
      v7 = v7 + v9 * v9;
    }

    while (v8 != v13);
    v10 = exp(-(*(a1 + 184) * v7));
    if (v4)
    {
      v13 = (v5 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8));
LABEL_7:
      operator delete(v4);
    }
  }

  return v10;
}

long double CPMLOnlineSvm::PolyDenseKernel(double *a1, double **a2, double **a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v6 = 0.0;
  }

  else
  {
    v5 = *a3;
    v6 = 0.0;
    do
    {
      v7 = *v3++;
      v8 = v7;
      v9 = *v5++;
      v6 = v6 + v8 * v9;
    }

    while (v3 != v4);
  }

  v10 = a1[25] + a1[24] * v6;
  v11 = a1[26];
  if (v11 == 2.0)
  {
    return v10 * v10;
  }

  if (v11 == 3.0)
  {
    return v10 * (v10 * v10);
  }

  return pow(v10, v11);
}

long double CPMLOnlineSvm::SigmoidDenseKernel(uint64_t a1, double **a2, double **a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v6 = 0.0;
  }

  else
  {
    v5 = *a3;
    v6 = 0.0;
    do
    {
      v7 = *v3++;
      v8 = v7;
      v9 = *v5++;
      v6 = v6 + v8 * v9;
    }

    while (v3 != v4);
  }

  return tanh(*(a1 + 200) + *(a1 + 192) * v6);
}

uint64_t CPMLOnlineSvm::serialize(CPMLOnlineSvm *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  v3 = strlen(this + 8);
  (*(*v2 + 56))(v2, this + 8, "version", v3, 0);
  v4 = *(this + 42);
  v5 = (v4[1] - *v4) >> 3;
  v10 = (*(this + 43) - v4) >> 4;
  v11 = v5;
  (*(**(this + 11) + 16))(*(this + 11), &v11, "num_feature", 1, 0);
  (*(**(this + 11) + 16))(*(this + 11), &v10, "num_sv", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), this + 304, "bias_", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 39), "alphas_", v10, 0);
  if (v10)
  {
    for (i = 0; i < v10; ++i)
    {
      sprintf(v12, "support_vectors_%d", i);
      if (v11)
      {
        v7 = 0;
        for (j = 0; j < v11; ++j)
        {
          (*(**(this + 11) + 48))(*(this + 11), *(*(this + 42) + 16 * i) + v7, v12, 1, 0);
          v7 += 8;
        }
      }
    }
  }

  return 0;
}

uint64_t CPMLOnlineSvm::Serialize(uint64_t a1, uint64_t *a2)
{
  v35[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v33, a2, 16);
  if ((v34[*(v33 - 24) + 24] & 5) != 0)
  {
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "cannot open output file", 23);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v31);
    exit(1);
  }

  v3 = MEMORY[0x24C19F870](&v33, (*(*(a1 + 336) + 8) - **(a1 + 336)) >> 3);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v5 = MEMORY[0x24C19F870](&v33, (*(a1 + 344) - *(a1 + 336)) >> 4);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v7 = MEMORY[0x24C19F840](&v33, *(a1 + 304));
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v9 = MEMORY[0x24C19F850](&v33, *(a1 + 152));
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v11 = *(a1 + 152);
  switch(v11)
  {
    case 1:
      v15 = MEMORY[0x24C19F840](&v33, *(a1 + 192));
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v32);
      std::ostream::put();
      std::ostream::flush();
      v17 = MEMORY[0x24C19F840](&v33, *(a1 + 200));
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v32);
      std::ostream::put();
      std::ostream::flush();
      v14 = 208;
      break;
    case 2:
      v14 = 184;
      break;
    case 3:
      v12 = MEMORY[0x24C19F840](&v33, *(a1 + 192));
      std::ios_base::getloc((v12 + *(*v12 - 24)));
      v13 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
      (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v32);
      std::ostream::put();
      std::ostream::flush();
      v14 = 200;
      break;
    default:
      goto LABEL_9;
  }

  v19 = MEMORY[0x24C19F840](&v33, *(a1 + v14));
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
LABEL_9:
  MEMORY[0x24C19F840](&v33, **(a1 + 312));
  if (*(a1 + 320) - *(a1 + 312) >= 9uLL)
  {
    v21 = 1;
    do
    {
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, " ", 1);
      MEMORY[0x24C19F840](v22, *(*(a1 + 312) + 8 * v21++));
    }

    while (v21 < (*(a1 + 320) - *(a1 + 312)) >> 3);
  }

  v23 = *(a1 + 336);
  if (*(a1 + 344) != v23)
  {
    v24 = 0;
    v25 = MEMORY[0x277D82680];
    do
    {
      std::ios_base::getloc(&v34[*(v33 - 24) - 8]);
      v26 = std::locale::use_facet(&v32, v25);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v32);
      std::ostream::put();
      std::ostream::flush();
      v27 = v23 + 16 * v24;
      MEMORY[0x24C19F840](&v33, **v27);
      if (*(v27 + 8) - *v27 >= 9uLL)
      {
        v28 = 1;
        do
        {
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, " ", 1);
          MEMORY[0x24C19F840](v29, *(*v27 + 8 * v28++));
        }

        while (v28 < (*(v27 + 8) - *v27) >> 3);
      }

      ++v24;
      v23 = *(a1 + 336);
    }

    while (v24 < (*(a1 + 344) - v23) >> 4);
  }

  v33 = *MEMORY[0x277D82810];
  *&v34[*(v33 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C19F790](v34);
  std::ostream::~ostream();
  return MEMORY[0x24C19F8D0](v35);
}

void sub_2472D5DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a10);
  std::ofstream::~ofstream(&a11, MEMORY[0x277D82810]);
  MEMORY[0x24C19F8D0](&a63);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x24C19F780](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2472D5FBC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C19F8D0](v1);
  _Unwind_Resume(a1);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t CPMLOnlineSvm::PrintParam(CPMLOnlineSvm *this)
{
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "kernel = ", 9);
  v3 = MEMORY[0x24C19F850](v2, *(this + 38));
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "param_C = ", 10);
  v6 = MEMORY[0x24C19F840](v5, *(this + 20));
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "tolerance = ", 12);
  v9 = MEMORY[0x24C19F840](v8, *(this + 21));
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "num_online_reprocess = ", 23);
  v12 = MEMORY[0x24C19F850](v11, *(this + 44));
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "num_final_reprocess = ", 22);
  v15 = MEMORY[0x24C19F850](v14, *(this + 45));
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "rbf_gamma = ", 12);
  v18 = MEMORY[0x24C19F840](v17, *(this + 23));
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "prod_slope = ", 13);
  v21 = MEMORY[0x24C19F840](v20, *(this + 24));
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "prod_intercept = ", 17);
  v24 = MEMORY[0x24C19F840](v23, *(this + 25));
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "poly_degree = ", 14);
  v27 = MEMORY[0x24C19F840](v26, *(this + 26));
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "num_features = ", 15);
  v30 = MEMORY[0x24C19F870](v29, *(this + 27));
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "num_compact_features = ", 23);
  v33 = MEMORY[0x24C19F870](v32, *(this + 28));
  std::ios_base::getloc((v33 + *(*v33 - 24)));
  v34 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t CPMLOnlineSvm::Deserialize(uint64_t a1, uint64_t *a2)
{
  v18[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v16, a2, 8);
  if ((v17[*(v16[0] - 24) + 16] & 5) != 0)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "cannot open input file", 22);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v10);
    exit(1);
  }

  v14 = 0;
  v15 = 0;
  MEMORY[0x24C19F7D0](v16, &v15);
  MEMORY[0x24C19F7D0](v16, &v14);
  MEMORY[0x24C19F7B0](v16, a1 + 304);
  v13 = 0;
  MEMORY[0x24C19F7C0](v16, &v13);
  v3 = v13;
  *(a1 + 152) = v13;
  switch(v3)
  {
    case 1:
      MEMORY[0x24C19F7B0](v16, a1 + 192);
      MEMORY[0x24C19F7B0](v16, a1 + 200);
      v4 = 208;
      break;
    case 2:
      v4 = 184;
      break;
    case 3:
      MEMORY[0x24C19F7B0](v16, a1 + 192);
      v4 = 200;
      break;
    default:
      goto LABEL_9;
  }

  MEMORY[0x24C19F7B0](v16, a1 + v4);
LABEL_9:
  std::vector<double>::resize((a1 + 312), v14);
  v5 = *(a1 + 312);
  if (*(a1 + 320) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      MEMORY[0x24C19F7B0](v16, v5 + v6);
      ++v7;
      v5 = *(a1 + 312);
      v6 += 8;
    }

    while (v7 < (*(a1 + 320) - v5) >> 3);
  }

  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      __p = 0;
      v12 = 0;
      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::valarray<double>>::push_back[abi:ne200100]((a1 + 336), &__p);
      if (__p)
      {
        if (v12 != __p)
        {
          v12 += (__p - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(__p);
      }
    }
  }

  v16[0] = *MEMORY[0x277D82808];
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C19F790](v17);
  std::istream::~istream();
  return MEMORY[0x24C19F8D0](v18);
}

void sub_2472D6AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a14, MEMORY[0x277D82808]);
  MEMORY[0x24C19F8D0](&a65);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, int a3)
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
  MEMORY[0x24C19F780](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2472D6D0C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C19F8D0](v1);
  _Unwind_Resume(a1);
}

void std::vector<double>::resize(void *result, unint64_t a2)
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
    std::vector<double>::__append(result, a2 - v2);
  }
}

uint64_t std::__val_expr<std::_BinaryOp<std::minus<double>,std::valarray<double>,std::valarray<double>>>::operator std::valarray<double>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = **(a1 + 8);
  v3 = *(*(a1 + 8) + 8);
  result = v3 - v2;
  if (v3 != v2)
  {
    if (!((result >> 3) >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

uint64_t CPMLOnlineSvm::LinearSparseKernel(uint64_t a1, char **a2, char **a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  do
  {
LABEL_2:
    if (v4 == a2[1] || v5 == v6)
    {
      break;
    }

    v7 = *v4;
    while (1)
    {
      v8 = *v5;
      if (v7 < v8)
      {
        ++v4;
        goto LABEL_2;
      }

      if (v7 <= v8)
      {
        break;
      }

      if (++v5 == v6)
      {
        return v3;
      }
    }

    ++v3;
    v9 = *++v4;
    ++v5;
  }

  while (v9);
  return v3;
}

long double CPMLOnlineSvm::PolySparseKernel(uint64_t a1, char **a2, char **a3)
{
  v4 = *(a1 + 192);
  v5 = CPMLOnlineSvm::LinearSparseKernel(a1, a2, a3);
  v6 = *(a1 + 208);
  v7 = *(a1 + 200) + v4 * v5;

  return pow(v7, v6);
}

long double CPMLOnlineSvm::RbfSparseKernel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  v5 = v3 + v4 - *a2 - *a3 + 2;
  v6 = (v3 - 1);
  do
  {
    v7 = *v6--;
    --v5;
  }

  while (!v7);
  v8 = (v4 - 1);
  do
  {
    v9 = *v8--;
    --v5;
  }

  while (!v9);
  v10 = -(*(a1 + 184) * (v5 - 2 * CPMLOnlineSvm::LinearSparseKernel(a1, a2, a3)));

  return exp(v10);
}

long double CPMLOnlineSvm::SigmoidSparseKernel(uint64_t a1, char **a2, char **a3)
{
  v3 = *(a1 + 200) + *(a1 + 192) * CPMLOnlineSvm::LinearSparseKernel(a1, a2, a3);

  return tanh(v3);
}

void CPMLOnlineSvm::CompressPredictors(CPMLOnlineSvm *this, int a2)
{
  v4 = *(this + 32);
  v6 = *v4;
  v5 = v4[1];
  std::vector<std::valarray<char>>::__base_destruct_at_end[abi:ne200100](this + 280, *(this + 35));
  if (*(this + 33) != *(this + 32))
  {
    v7 = 0;
    if (((v5 - v6) >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = (v5 - v6) >> 3;
    }

    do
    {
      __p = 0;
      v15 = 0;
      if (a2)
      {
        operator new();
      }

      if (v5 != v6)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          if (*(*(*(this + 32) + 16 * v7) + 8 * v9) != 0.0 && v10 < 0)
          {
            *(__p + v10++) = v9;
          }

          ++v9;
        }

        while (v8 != v9);
      }

      v12 = *(this + 36);
      if (v12 >= *(this + 37))
      {
        v13 = std::vector<std::valarray<char>>::__emplace_back_slow_path<std::valarray<char> const&>(this + 35, &__p);
      }

      else
      {
        std::valarray<char>::valarray(*(this + 36), &__p);
        v13 = v12 + 16;
        *(this + 36) = v12 + 16;
      }

      *(this + 36) = v13;
      if (__p)
      {
        if (v15 != __p)
        {
          v15 = __p;
        }

        operator delete(__p);
      }

      ++v7;
    }

    while (v7 < (*(this + 33) - *(this + 32)) >> 4);
  }
}

void sub_2472D70F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMLOnlineSvm::~CPMLOnlineSvm(CPMLOnlineSvm *this)
{
  CPMLOnlineSvm::~CPMLOnlineSvm(this);

  JUMPOUT(0x24C19F910);
}

{
  *this = &unk_2859279D8;
  v2 = *(this + 63);
  if (v2)
  {
    v3 = *(this + 64);
    if (v3 != v2)
    {
      *(this + 64) = &v3[(v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *(this + 63) = 0;
    *(this + 64) = 0;
  }

  v4 = *(this + 61);
  if (v4)
  {
    v5 = *(this + 62);
    if (v5 != v4)
    {
      *(this + 62) = &v5[(v4 - v5 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v4);
    *(this + 61) = 0;
    *(this + 62) = 0;
  }

  v6 = *(this + 59);
  if (v6)
  {
    v7 = *(this + 60);
    if (v7 != v6)
    {
      *(this + 60) = &v7[(v6 - v7 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v6);
    *(this + 59) = 0;
    *(this + 60) = 0;
  }

  v8 = *(this + 54);
  if (v8)
  {
    *(this + 55) = v8;
    operator delete(v8);
  }

  v9 = *(this + 52);
  if (v9)
  {
    v10 = *(this + 53);
    if (v10 != v9)
    {
      *(this + 53) = &v10[(v9 - v10 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v9);
    *(this + 52) = 0;
    *(this + 53) = 0;
  }

  v11 = *(this + 48);
  if (v11)
  {
    *(this + 49) = v11;
    operator delete(v11);
  }

  v12 = *(this + 45);
  if (v12)
  {
    *(this + 46) = v12;
    operator delete(v12);
  }

  v16 = (this + 336);
  std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v13 = *(this + 39);
  if (v13)
  {
    *(this + 40) = v13;
    operator delete(v13);
  }

  v16 = (this + 280);
  std::vector<std::valarray<char>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 256);
  std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v14 = *(this + 29);
  if (v14)
  {
    *(this + 30) = v14;
    operator delete(v14);
  }

  if (*(this + 17))
  {
    v15 = *(this + 12);
    if (v15)
    {
      MEMORY[0x24C19F8F0](v15, 0x1000C8000313F17);
    }
  }

  CPModelClose(this);
}

uint64_t CPMLOnlineSvm::eval(uint64_t a1, CPMLFeatureVector *this)
{
  RealVector = CPMLFeatureVector::getRealVector(this);
  v5 = (RealVector[1] - *RealVector) >> 3;
  __p = 0;
  v10 = 0;
  if (v5 != 1)
  {
    if (!((v5 - 1) >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = CPMLOnlineSvm::Evaluate(a1, &__p);
  v7 = 0.0;
  if (v6 != -1)
  {
    v7 = 1.0;
  }

  CPMLFeatureVector::setYHat(this, v7);
  if (__p)
  {
    if (v10 != __p)
    {
      v10 += (__p - v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  return 0;
}

void sub_2472D7270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLOnlineSvm::train(CPMLOnlineSvm *this)
{
  CPMLOnlineSvm::Init(this);
  CPMLOnlineSvm::OnlineIteration(this, v2, v3, v4);
  return 0;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x24C19F790](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x24C19F790](a1 + 2);

  return std::istream::~istream();
}

void std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 16;
        std::allocator<std::valarray<double>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::valarray<double>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 8);
    if (v4 != v2)
    {
      *(a2 + 8) = &v4[(v2 - v4 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void std::vector<std::valarray<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::valarray<char>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *CoreMatrix::Matrix<double>::Resize(void *result, unint64_t a2)
{
  v2 = result[5];
  if (v2 < a2)
  {
    if (v2)
    {
      if (*result)
      {
        MEMORY[0x24C19F8F0]();
      }
    }

    operator new[]();
  }

  result[5] = a2;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E9EBC8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C19F810](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C19F820](v13);
  return a1;
}

void sub_2472D7A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C19F820](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2472D7A40);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2472D7C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::valarray<char>>::__emplace_back_slow_path<std::valarray<char> const&>(uint64_t *a1, char **a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<char>>>(a1, v7);
  }

  v16 = 0;
  v17 = 16 * v2;
  std::valarray<char>::valarray((16 * v2), a2);
  v18 = (16 * v2 + 16);
  v8 = a1[1];
  v9 = (16 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::valarray<char>>,std::valarray<char>*>(a1, *a1, v8, v9, v10, v11);
  v12 = *a1;
  *a1 = v9;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::valarray<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_2472D7DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::valarray<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::valarray<char>::valarray(void *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  if (a2[1] != *a2)
  {
    operator new();
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<char>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::valarray<char>>,std::valarray<char>*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
    }

    while (v6 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::valarray<char>>,std::valarray<char>*,std::valarray<char>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::valarray<char>>,std::valarray<char>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::valarray<char>>,std::valarray<char>*,std::valarray<char>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        if (*(v4 + 8) != v5)
        {
          *(v4 + 8) = v5;
        }

        operator delete(v5);
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      v4 += 16;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::valarray<char>>,std::valarray<char>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::valarray<char>>,std::reverse_iterator<std::valarray<char>*>,std::reverse_iterator<std::valarray<char>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::valarray<char>>,std::reverse_iterator<std::valarray<char>*>,std::reverse_iterator<std::valarray<char>*>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v8 = *(v6 - 2);
      v6 -= 2;
      v7 = v8;
      if (v8)
      {
        if (v6[1] != v7)
        {
          *(a3 - 1) = v7;
        }

        operator delete(v7);
        *v6 = 0;
        v6[1] = 0;
      }

      a3 = v6;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::valarray<char>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::valarray<char>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::valarray<char>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    v5 = *(a1 + 16);
    do
    {
      v7 = *(v5 - 2);
      v5 -= 2;
      v6 = v7;
      *(a1 + 16) = v5;
      if (v7)
      {
        if (v5[1] != v6)
        {
          *(v2 - 1) = v6;
        }

        operator delete(v6);
        *v5 = 0;
        v5[1] = 0;
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<std::valarray<double>>::__emplace_back_slow_path<std::valarray<double> const&>(uint64_t *a1, uint64_t **a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<double>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  std::valarray<double>::valarray((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = a1[1];
  v9 = (16 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::valarray<double>>,std::valarray<double>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::valarray<double>>::~__split_buffer(&v14);
  return v13;
}

void sub_2472D81CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::valarray<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::valarray<double>>,std::valarray<double>*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4++ = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 16;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<std::valarray<double>>::destroy[abi:ne200100](a1, v5);
      v5 += 16;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::valarray<double>>,std::valarray<double>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::valarray<double>>,std::valarray<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::valarray<double>>,std::valarray<double>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::valarray<double>>,std::valarray<double>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 16;
      std::allocator<std::valarray<double>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::valarray<double>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::valarray<double>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::valarray<double>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 16;
    std::allocator<std::valarray<double>>::destroy[abi:ne200100](v4, i - 16);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<double>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
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

uint64_t *std::valarray<double>::valarray(uint64_t *a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return a1;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::valarray<double> *,std::valarray<double> *,std::valarray<double> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *a4;
      if (*a4)
      {
        v8 = *(a4 + 8);
        if (v8 != v7)
        {
          *(a4 + 8) = &v8[(v7 - v8 + 7) & 0xFFFFFFFFFFFFFFF8];
        }

        operator delete(v7);
        *a4 = 0;
        *(a4 + 8) = 0;
      }

      *a4 = *v5;
      a4 += 16;
      *v5 = 0;
      *(v5 + 8) = 0;
      v5 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::valarray<char>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = *(a1 + 8);
    do
    {
      v7 = *(v5 - 2);
      v5 -= 2;
      v6 = v7;
      if (v7)
      {
        if (v5[1] != v6)
        {
          *(v4 - 1) = v6;
        }

        operator delete(v6);
        *v5 = 0;
        v5[1] = 0;
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

double CPMLLINEARSVMClassifier::establishParam(CPMLLINEARSVMClassifier *this, CPMLTunableData *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a2 || CPMLTunableData::getNumberOfItems(a2) < 1)
  {
    *(this + 40) = 1;
    *(this + 168) = xmmword_247321D20;
    *(this + 46) = 0;
    *(this + 56) = 0;
    *(this + 24) = 0;
    *(this + 25) = 0;
    result = 0.1;
    *(this + 13) = xmmword_247321D30;
LABEL_72:
    v20 = *(this + 40);
    if (v20 <= 0xD && ((0x38FFu >> v20) & 1) != 0)
    {
      result = dbl_247321D60[v20];
      *(this + 21) = result;
    }

    return result;
  }

  CPMLTunableData::tDataGetString(a2, "solver_type", v21, 0x18uLL);
  if (*v21 == 1599222348 && *&v21[4] == 21068)
  {
    *(this + 40) = 0;
    goto LABEL_69;
  }

  if (*v21 != 0x4F4C324C5F52324CLL || *&v21[8] != 0x445F4356535F5353 || *&v21[11] != 0x4C4155445F435653)
  {
    if (*v21 == 0x4F4C324C5F52324CLL && *&v21[6] == 0x4356535F53534F4CLL)
    {
      v18 = 2;
      goto LABEL_68;
    }

    if (*v21 == 0x4F4C314C5F52324CLL && *&v21[8] == 0x445F4356535F5353 && *&v21[11] == 0x4C4155445F435653)
    {
      v18 = 3;
      goto LABEL_68;
    }

    if (*v21 == 0x53435F4D5653434DLL)
    {
      v18 = 4;
      goto LABEL_68;
    }

    if (*v21 == 0x4F4C324C5F52314CLL && *&v21[6] == 0x4356535F53534F4CLL)
    {
      v18 = 5;
      goto LABEL_68;
    }

    if (*v21 == 1599222092 && *&v21[4] == 21068)
    {
      v18 = 6;
      goto LABEL_68;
    }

    if (*v21 == 0x445F524C5F52324CLL && *&v21[3] == 0x4C4155445F524C5FLL)
    {
      v18 = 7;
      goto LABEL_68;
    }

    if (*v21 == 0x4F4C324C5F52324CLL && *&v21[6] == 0x5256535F53534F4CLL)
    {
      v18 = 11;
      goto LABEL_68;
    }

    if (*v21 == 0x4F4C324C5F52324CLL && *&v21[8] == 0x445F5256535F5353 && *&v21[11] == 0x4C4155445F525653)
    {
      v18 = 12;
      goto LABEL_68;
    }

    if (*v21 == 0x4F4C314C5F52324CLL && *&v21[8] == 0x445F5256535F5353 && *&v21[11] == 0x4C4155445F525653)
    {
      v18 = 13;
      goto LABEL_68;
    }
  }

  v18 = 1;
LABEL_68:
  *(this + 40) = v18;
LABEL_69:
  CPMLTunableData::tDataGetDouble(a2, "C", this + 22);
  CPMLTunableData::tDataGetDouble(a2, "eps", this + 21);
  CPMLTunableData::tDataGetDouble(a2, "p", this + 26);
  if (CPMLTunableData::tDataGetDouble(a2, "bias", this + 27) == -1)
  {
    *(this + 27) = 0xBFF0000000000000;
  }

  CPMLTunableData::tDataGetInt(a2, "cross_validation", this + 56);
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  result = *(this + 21);
  if (result == INFINITY)
  {
    goto LABEL_72;
  }

  return result;
}

void CPMLLINEARSVMClassifier::CPMLLINEARSVMClassifier(CPMLLINEARSVMClassifier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v7 = &unk_285927448;
  strcpy((v7 + 8), "1.96");
  var0 = a2->var0;
  v9 = *(a2->var0 + 30);
  v11 = *(a2->var0 + 32);
  v10 = *(a2->var0 + 33);
  *(v7 + 96) = *(a2->var0 + 31);
  *(v7 + 104) = v10;
  v12 = *(var0 + 4) - *(var0 + 3);
  v13 = *var0;
  v14 = ((*(var0 + 1) - *var0) >> 2);
  *(v7 + 128) = v14;
  *(v7 + 136) = v13;
  *(v7 + 272) = 0;
  v15 = v12 >> 3;
  *(v7 + 112) = v9;
  *(v7 + 120) = v15;
  LODWORD(var0) = *(*(var0 + 9) + 4 * v11);
  v16 = var0 == 0;
  if (var0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = 120;
  if (v16)
  {
    v18 = 128;
  }

  *(v7 + v18) = v17 - 1;
  CPMLLINEARSVMClassifier::establishParam(v7, a4);
  v19 = *(this + 14);
  *(this + 58) = v19;
  *(this + 30) = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
  *(this + 31) = malloc_type_calloc(*(this + 58), 8uLL, 0x2004093837F09uLL);
  *(this + 32) = *(this + 27);
  CPMLCDB::getIterator(a2, 0, 0, 0);
}

void CPMLLINEARSVMClassifier::CPMLLINEARSVMClassifier(CPMLLINEARSVMClassifier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_285927448;
  *(v5 + 272) = 0;
  (*(a2->var0 + 13))(a2, v5 + 8, "version", 5, 0);
  (*(a2->var0 + 10))(a2, this + 112, "totalRows", 1, 0);
  (*(a2->var0 + 10))(a2, this + 96, "featureVectorSpace", 1, 0);
  (*(a2->var0 + 10))(a2, this + 104, "resultCardinality", 1, 0);
  (*(a2->var0 + 10))(a2, this + 120, "continousFeatureCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 128, "discreteFeatureCount", 1, 0);
  v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x10900405E350820uLL);
  *(this + 33) = v6;
  (*(**(this + 11) + 64))(*(this + 11), v6 + 56, "model_nr_class", 1, 0);
  (*(**(this + 11) + 64))(*(this + 11), *(this + 33) + 60, "model_nr_feature", 1, 0);
  *(*(this + 33) + 64) = malloc_type_calloc(*(*(this + 33) + 60) * *(*(this + 33) + 56), 8uLL, 0x100004000313F17uLL);
  (*(**(this + 11) + 96))(*(this + 11));
  *(*(this + 33) + 72) = malloc_type_calloc(*(*(this + 33) + 56), 4uLL, 0x100004052888210uLL);
  (*(**(this + 11) + 64))(*(this + 11));
  (*(**(this + 11) + 96))(*(this + 11), this + 216, "bias", 1, 0);
}

void CPMLLINEARSVMClassifier::CPMLLINEARSVMClassifier(CPMLLINEARSVMClassifier *this, CPMLTunableData *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, 0, a3);
  *v4 = &unk_285927448;
  *(v4 + 264) = a2;
  *(v4 + 272) = 1;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 104) = SLODWORD(a2[2].var1);
}

void CPMLLINEARSVMClassifier::~CPMLLINEARSVMClassifier(CPMLLINEARSVMClassifier *this)
{
  *this = &unk_285927448;
  v2 = *(this + 30);
  if (v2)
  {
    free(v2);
  }

  *(this + 30) = 0;
  v3 = *(this + 31);
  if (v3)
  {
    free(v3);
  }

  *(this + 31) = 0;
  if (*(this + 33) && (*(this + 272) & 1) == 0)
  {
    free_and_destroy_model(this + 33);
  }

  *(this + 33) = 0;

  CPModelClose(this);
}

{
  CPMLLINEARSVMClassifier::~CPMLLINEARSVMClassifier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLLINEARSVMClassifier::serialize(CPMLLINEARSVMClassifier *this)
{
  v2 = *(this + 11);
  v3 = strlen(this + 8);
  (*(*v2 + 56))(v2, this + 8, "version", v3, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 112, "totalRows", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 96, "featureVectorSpace", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "resultCardinality", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 120, "continousFeatureCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 128, "discreteFeatureCount", 1, 0);
  (*(**(this + 11) + 16))(*(this + 11), *(this + 33) + 56, "model_nr_class", 1, 0);
  (*(**(this + 11) + 16))(*(this + 11), *(this + 33) + 60, "model_nr_feature", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(*(this + 33) + 64), "model_w", *(*(this + 33) + 60) * *(*(this + 33) + 56), 0);
  (*(**(this + 11) + 16))(*(this + 11), *(*(this + 33) + 72), "model_label", *(*(this + 33) + 56), 0);
  (*(**(this + 11) + 48))(*(this + 11), this + 216, "bias", 1, 0);
  return 0;
}

uint64_t CPMLLINEARSVMClassifier::train(CPMLLINEARSVMClassifier *this)
{
  v2 = check_parameter(this + 232, this + 20);
  if (v2)
  {
    fprintf(*MEMORY[0x277D85DF8], "ERROR: %s\n", v2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = train(this + 29, this + 10);
    result = 0;
    *(this + 33) = v4;
  }

  return result;
}

uint64_t CPMLLINEARSVMClassifier::eval(uint64_t a1, CPMLFeatureVector *this)
{
  IntVector = CPMLFeatureVector::getIntVector(this);
  RealVector = CPMLFeatureVector::getRealVector(this);
  v6 = malloc_type_calloc(((IntVector[1] - *IntVector) >> 2) + RealVector[1] - *RealVector + 2, 0x10uLL, 0x1000040F7F8B94BuLL);
  v7 = v6;
  v8 = *IntVector;
  v9 = IntVector[1] - *IntVector;
  v10 = v9 >> 2;
  if ((v9 >> 2) < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (v9 >> 2) & 0x7FFFFFFF;
    do
    {
      v15 = *(v8 + 4 * v11++);
      if (v15)
      {
        v16 = &v6[16 * v12];
        *v16 = v11;
        v16[1] = v15;
        ++v12;
        v13 = v11;
      }
    }

    while (v11 != v14);
  }

  v17 = *RealVector;
  v18 = RealVector[1] - *RealVector;
  if ((v18 >> 3) >= 1)
  {
    v19 = v10 + 1;
    v20 = (v18 >> 3) & 0x7FFFFFFF;
    do
    {
      v21 = *v17;
      if (*v17 != 0.0)
      {
        v22 = &v6[16 * v12];
        *v22 = v19;
        v22[1] = v21;
        ++v12;
        v13 = v19;
      }

      ++v17;
      ++v19;
      --v20;
    }

    while (v20);
  }

  v23 = *(a1 + 216);
  if (v23 >= 0.0)
  {
    v24 = &v6[16 * v12];
    *v24 = v13;
    v24[1] = v23;
    ++v12;
  }

  v25 = 16 * v12;
  v26 = &v6[v25];
  *v26 = -1;
  v26[1] = nan("");
  v27 = malloc_type_realloc(v7, v25 + 16, 0x1000040F7F8B94BuLL);
  v28 = predict(*(a1 + 264), v27);
  v29 = 1.0;
  if (v28 == -1.0)
  {
    v29 = 0.0;
  }

  if (*(a1 + 104) == 2)
  {
    v28 = v29;
  }

  CPMLFeatureVector::setYHat(this, v28);
  free(v27);
  return 0;
}

void sub_2472D984C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x24C19F910](v3, v1);
  _Unwind_Resume(a1);
}

void CPMLLIBSVMAnalysisHandler::CPMLLIBSVMAnalysisHandler(CPMLLIBSVMAnalysisHandler *this, CPMLAlgorithm *a2)
{
  CPMLAnalysisHandler::CPMLAnalysisHandler(this);
  *v3 = &unk_285927240;
  v3[1] = a2;
}

CPMLLIBSVMAnalysisHandler *CPMLDestroyLIBSVMAnalysis(CPMLLIBSVMAnalysisHandler *result)
{
  if (result)
  {
    CPMLLIBSVMAnalysisHandler::~CPMLLIBSVMAnalysisHandler(result);

    JUMPOUT(0x24C19F910);
  }

  return result;
}

void CPMLLIBSVMAnalysisHandler::~CPMLLIBSVMAnalysisHandler(CPMLLIBSVMAnalysisHandler *this)
{
  *this = &unk_285927240;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CPModelClose(this);
}

void CPMLlinearSVM::l2r_lr_fun::l2r_lr_fun(void *a1, int *a2, uint64_t a3)
{
  *a1 = &unk_285926D50;
  a1[4] = a2;
  operator new[]();
}

void CPMLlinearSVM::l2r_lr_fun::~l2r_lr_fun(CPMLlinearSVM::l2r_lr_fun *this)
{
  *this = &unk_285926D50;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x24C19F8F0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x24C19F8F0](v3, 0x1000C8000313F17);
  }
}

{
  CPMLlinearSVM::l2r_lr_fun::~l2r_lr_fun(this);

  JUMPOUT(0x24C19F910);
}

double CPMLlinearSVM::l2r_lr_fun::fun(CPMLlinearSVM::l2r_lr_fun *this, double *a2)
{
  v4 = *(this + 4);
  v5 = *(v4 + 1);
  v6 = *v4;
  v7 = (*(*this + 24))(this);
  CPMLlinearSVM::l2r_lr_fun::Xv(this, a2, *(this + 2));
  if (v7 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v8 = v7;
    v9 = 0.0;
    do
    {
      v10 = *a2++;
      v9 = v9 + v10 * v10;
      --v8;
    }

    while (v8);
    v11 = v9 * 0.5;
  }

  if (v6 >= 1)
  {
    v14 = this + 8;
    v12 = *(this + 1);
    v13 = *(v14 + 1);
    do
    {
      v15 = *v5 * *v13;
      v16 = *v12;
      if (v15 >= 0.0)
      {
        v19 = exp(-v15);
        v18 = log(v19 + 1.0);
      }

      else
      {
        v17 = exp(*v5 * *v13);
        v18 = log(v17 + 1.0) - v15;
      }

      v11 = v11 + v16 * v18;
      ++v12;
      ++v13;
      ++v5;
      --v6;
    }

    while (v6);
  }

  return v11;
}

uint64_t CPMLlinearSVM::l2r_lr_fun::Xv(uint64_t this, double *a2, double *a3)
{
  v3 = *(this + 32);
  v4 = *v3;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 2);
    do
    {
      v7 = *(v6 + 8 * v5);
      a3[v5] = 0.0;
      v8 = *v7;
      if (*v7 != -1)
      {
        v9 = (v7 + 4);
        v10 = 0.0;
        do
        {
          v10 = v10 + a2[v8 - 1] * *(v9 - 1);
          a3[v5] = v10;
          v11 = *v9;
          v9 += 2;
          v8 = v11;
        }

        while (v11 != -1);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return this;
}

void CPMLlinearSVM::l2r_lr_fun::grad(CPMLlinearSVM::l2r_lr_fun *this, double *a2, double *a3)
{
  v6 = *(this + 4);
  v7 = *(v6 + 1);
  v8 = *v6;
  v9 = (*(*this + 24))(this);
  v10 = *(this + 2);
  if (v8 >= 1)
  {
    v11 = *(this + 3);
    v12 = *(this + 1);
    v13 = *(this + 2);
    do
    {
      v14 = 1.0 / (exp(-(*v7 * *v13)) + 1.0);
      *v13 = v14;
      *v11++ = v14 * (1.0 - v14);
      v15 = *v12++;
      v16 = v15 * (*v13 + -1.0);
      v17 = *v7++;
      *v13++ = v17 * v16;
      --v8;
    }

    while (v8);
  }

  CPMLlinearSVM::l2r_lr_fun::XTv(this, v10, a3);
  if (v9 >= 1)
  {
    v18 = v9;
    do
    {
      v19 = *a2++;
      *a3 = v19 + *a3;
      ++a3;
      --v18;
    }

    while (v18);
  }
}

void CPMLlinearSVM::l2r_lr_fun::XTv(CPMLlinearSVM::l2r_lr_fun *this, double *a2, double *a3)
{
  v6 = **(this + 4);
  v7 = (*(*this + 24))(this);
  v8 = *(*(this + 4) + 16);
  if (v7 >= 1)
  {
    bzero(a3, 8 * v7);
  }

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v10 = *(v8 + 8 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        v12 = (v10 + 4);
        do
        {
          a3[v11 - 1] = a3[v11 - 1] + a2[i] * *(v12 - 1);
          v13 = *v12;
          v12 += 2;
          v11 = v13;
        }

        while (v13 != -1);
      }
    }
  }
}

void CPMLlinearSVM::l2r_l2_svc_fun::l2r_l2_svc_fun(void *a1, int *a2, uint64_t a3)
{
  *a1 = &unk_285926D10;
  a1[6] = a2;
  operator new[]();
}

void CPMLlinearSVM::l2r_l2_svc_fun::~l2r_l2_svc_fun(CPMLlinearSVM::l2r_l2_svc_fun *this)
{
  *this = &unk_285926D10;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x24C19F8F0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x24C19F8F0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x24C19F8F0](v4, 0x1000C8052888210);
  }
}

{
  CPMLlinearSVM::l2r_l2_svc_fun::~l2r_l2_svc_fun(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLlinearSVM::l2r_l2_svc_fun::fun(CPMLlinearSVM::l2r_l2_svc_fun *this, double *a2)
{
  v4 = *(this + 6);
  v5 = *(v4 + 1);
  v6 = *v4;
  v7 = (*(*this + 24))(this);
  result = CPMLlinearSVM::l2r_l2_svc_fun::Xv(this, a2, *(this + 2));
  if (v7 < 1)
  {
    v12 = 0.0;
  }

  else
  {
    v9 = v7;
    v10 = 0.0;
    do
    {
      v11 = *a2++;
      v10 = v10 + v11 * v11;
      --v9;
    }

    while (v9);
    v12 = v10 * 0.5;
  }

  if (v6 >= 1)
  {
    v13 = 0;
    v14 = *(this + 2);
    do
    {
      v15 = *(v5 + v13) * *(v14 + v13);
      *(v14 + v13) = v15;
      v16 = 1.0 - v15;
      if (v16 > 0.0)
      {
        v12 = v12 + v16 * *(*(this + 1) + v13) * v16;
      }

      v13 += 8;
    }

    while (8 * v6 != v13);
  }

  return result;
}

uint64_t CPMLlinearSVM::l2r_l2_svc_fun::Xv(uint64_t this, double *a2, double *a3)
{
  v3 = *(this + 48);
  v4 = *v3;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 2);
    do
    {
      v7 = *(v6 + 8 * v5);
      a3[v5] = 0.0;
      v8 = *v7;
      if (*v7 != -1)
      {
        v9 = (v7 + 4);
        v10 = 0.0;
        do
        {
          v10 = v10 + a2[v8 - 1] * *(v9 - 1);
          a3[v5] = v10;
          v11 = *v9;
          v9 += 2;
          v8 = v11;
        }

        while (v11 != -1);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return this;
}

void CPMLlinearSVM::l2r_l2_svc_fun::grad(CPMLlinearSVM::l2r_l2_svc_fun *this, double *a2, double *a3)
{
  v6 = *(this + 6);
  v7 = *(v6 + 1);
  v8 = *v6;
  v9 = (*(*this + 24))(this);
  *(this + 10) = 0;
  v10 = *(this + 2);
  if (v8 >= 1)
  {
    v11 = 0;
    for (i = 0; i != v8; ++i)
    {
      v13 = v10[i];
      if (v13 < 1.0)
      {
        v10[v11] = (v13 + -1.0) * (*(*(this + 1) + 8 * i) * *(v7 + 8 * i));
        *(*(this + 4) + 4 * v11) = i;
        v11 = *(this + 10) + 1;
        *(this + 10) = v11;
      }
    }
  }

  CPMLlinearSVM::l2r_l2_svc_fun::subXTv(this, v10, a3);
  if (v9 >= 1)
  {
    v14 = v9;
    do
    {
      v15 = *a2++;
      *a3 = v15 + *a3 * 2.0;
      ++a3;
      --v14;
    }

    while (v14);
  }
}

void CPMLlinearSVM::l2r_l2_svc_fun::subXTv(CPMLlinearSVM::l2r_l2_svc_fun *this, double *a2, double *a3)
{
  v6 = (*(*this + 24))(this);
  v7 = *(*(this + 6) + 16);
  if (v6 >= 1)
  {
    bzero(a3, 8 * v6);
  }

  v8 = *(this + 10);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(this + 4);
    do
    {
      v11 = *(v7 + 8 * *(v10 + 4 * v9));
      v12 = *v11;
      if (*v11 != -1)
      {
        v13 = (v11 + 4);
        do
        {
          a3[v12 - 1] = a3[v12 - 1] + a2[v9] * *(v13 - 1);
          v14 = *v13;
          v13 += 2;
          v12 = v14;
        }

        while (v14 != -1);
      }

      ++v9;
    }

    while (v9 != v8);
  }
}

uint64_t CPMLlinearSVM::l2r_l2_svc_fun::subXv(uint64_t this, double *a2, double *a3)
{
  v3 = *(this + 40);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(*(this + 48) + 16);
    v6 = *(this + 32);
    do
    {
      v7 = *(v5 + 8 * *(v6 + 4 * v4));
      a3[v4] = 0.0;
      v8 = *v7;
      if (*v7 != -1)
      {
        v9 = (v7 + 4);
        v10 = 0.0;
        do
        {
          v10 = v10 + a2[v8 - 1] * *(v9 - 1);
          a3[v4] = v10;
          v11 = *v9;
          v9 += 2;
          v8 = v11;
        }

        while (v11 != -1);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return this;
}

uint64_t CPMLlinearSVM::l2r_l2_svr_fun::fun(CPMLlinearSVM::l2r_l2_svr_fun *this, double *a2)
{
  v4 = *(this + 6);
  v5 = *(v4 + 1);
  v6 = *v4;
  v7 = (*(*this + 24))(this);
  result = CPMLlinearSVM::l2r_l2_svc_fun::Xv(this, a2, *(this + 2));
  if (v7 < 1)
  {
    v12 = 0.0;
  }

  else
  {
    v9 = v7;
    v10 = 0.0;
    do
    {
      v11 = *a2++;
      v10 = v10 + v11 * v11;
      --v9;
    }

    while (v9);
    v12 = v10 * 0.5;
  }

  if (v6 >= 1)
  {
    v13 = 0;
    v14 = *(this + 7);
    while (1)
    {
      v15 = *(*(this + 2) + v13) - *(v5 + v13);
      if (v15 < -v14)
      {
        break;
      }

      if (v15 > v14)
      {
        v16 = *(*(this + 1) + v13);
        v17 = v15 - v14;
        goto LABEL_12;
      }

LABEL_13:
      v13 += 8;
      if (8 * v6 == v13)
      {
        return result;
      }
    }

    v16 = *(*(this + 1) + v13);
    v17 = v15 + v14;
LABEL_12:
    v12 = v12 + v17 * v16 * v17;
    goto LABEL_13;
  }

  return result;
}

void CPMLlinearSVM::l2r_l2_svr_fun::grad(CPMLlinearSVM::l2r_l2_svr_fun *this, double *a2, double *a3)
{
  v6 = *(this + 6);
  v7 = *(v6 + 1);
  v8 = *v6;
  v9 = (*(*this + 24))(this);
  *(this + 10) = 0;
  v10 = *(this + 2);
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v10[v12] - *(v7 + 8 * v12);
      v14 = *(this + 7);
      if (v13 < -v14)
      {
        break;
      }

      if (v13 > v14)
      {
        v15 = *(*(this + 1) + 8 * v12);
        v16 = v13 - v14;
        goto LABEL_7;
      }

LABEL_8:
      if (v8 == ++v12)
      {
        goto LABEL_9;
      }
    }

    v15 = *(*(this + 1) + 8 * v12);
    v16 = v13 + v14;
LABEL_7:
    v10[v11] = v16 * v15;
    *(*(this + 4) + 4 * v11) = v12;
    v11 = *(this + 10) + 1;
    *(this + 10) = v11;
    goto LABEL_8;
  }

LABEL_9:
  CPMLlinearSVM::l2r_l2_svc_fun::subXTv(this, v10, a3);
  if (v9 >= 1)
  {
    v17 = v9;
    do
    {
      v18 = *a2++;
      *a3 = v18 + *a3 * 2.0;
      ++a3;
      --v17;
    }

    while (v17);
  }
}

void CPMLlinearSVM::Solver_MCSVM_CS::Solver_MCSVM_CS(uint64_t a1, int32x2_t *a2, int a3, uint64_t a4, int a5, double a6)
{
  *(a1 + 24) = vrev64_s32(*a2);
  *(a1 + 40) = a6;
  *(a1 + 32) = a3;
  *(a1 + 36) = a5;
  *(a1 + 48) = a2;
  operator new[]();
}

void CPMLlinearSVM::Solver_MCSVM_CS::~Solver_MCSVM_CS(CPMLlinearSVM::Solver_MCSVM_CS *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x24C19F8F0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x24C19F8F0](v3, 0x1000C8000313F17);
  }
}

uint64_t CPMLlinearSVM::compare_double(CPMLlinearSVM *this, double *a2, const void *a3)
{
  if (*this > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this < *a2;
  }
}

BOOL CPMLlinearSVM::Solver_MCSVM_CS::be_shrunk(CPMLlinearSVM::Solver_MCSVM_CS *this, int a2, int a3, int a4, double a5, double a6)
{
  v6 = 0.0;
  if (a3 == a4)
  {
    v6 = *(*(this + 1) + 8 * *(*(*(this + 6) + 8) + 8 * a2));
  }

  return v6 == a5 && *(*(this + 2) + 8 * a3) < a6;
}

uint64_t info(const char *a1, ...)
{
  va_start(va, a1);
  v3 = *MEMORY[0x277D85DE8];
  vsprintf(v2, a1, va);
  return liblinear_print_string(v2);
}

{
  va_start(va, a1);
  v3 = *MEMORY[0x277D85DE8];
  vsprintf(v2, a1, va);
  return svm_print_string(v2);
}

_DWORD *train(double *a1, __int128 *a2)
{
  v3 = a1;
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = malloc_type_malloc(0x58uLL, 0x10900405E350820uLL);
  v7 = v6;
  v6[15] = v4 - (v3[3] >= 0.0);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(v6 + 6) = *(a2 + 6);
  *(v6 + 1) = v9;
  *(v6 + 2) = v10;
  *v6 = v8;
  *(v6 + 10) = v3[3];
  if ((*v6 - 11) > 2)
  {
    v114 = v4;
    v110 = v5;
    v112 = v6;
    v106 = v4;
    v107 = v5;
    v109 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    v15 = *v3;
    v16 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v17 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v18 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
    if (v15 < 1)
    {
      v116 = v17;
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 16;
      do
      {
        v22 = *(*(v3 + 1) + 8 * v19);
        if (v20 < 1)
        {
          LODWORD(v23) = 0;
        }

        else
        {
          v23 = 0;
          while (v16[v23] != v22)
          {
            if (v20 == ++v23)
            {
              v18[v19] = v20;
              goto LABEL_13;
            }
          }

          ++v17->i32[v23];
        }

        v18[v19] = v23;
        if (v23 == v20)
        {
LABEL_13:
          if (v20 == v21)
          {
            v24 = 2 * v21;
            v115 = v20;
            v25 = v3;
            v26 = a2;
            v27 = v17;
            v28 = 4 * v24;
            v29 = v24;
            v16 = malloc_type_realloc(v16, v28, 0x100004052888210uLL);
            v30 = v27;
            a2 = v26;
            v3 = v25;
            v20 = v115;
            v31 = malloc_type_realloc(v30, v28, 0x100004052888210uLL);
            v21 = v29;
            v17 = v31;
          }

          v16[v20] = v22;
          v17->i32[v20++] = 1;
        }

        ++v19;
      }

      while (v19 != v15);
      v116 = v17;
      if (v20 == 2)
      {
        if (*v16 == -1 && v16[1] == 1)
        {
          *v16 = 0xFFFFFFFF00000001;
          *v17 = vrev64_s32(*v17);
          v32 = v18;
          v33 = v15;
          do
          {
            *v32 = *v32 == 0;
            ++v32;
            --v33;
          }

          while (v33);
        }

        v20 = 2;
      }
    }

    v34 = malloc_type_malloc(4 * v20, 0x100004052888210uLL);
    v35 = v34;
    *v34 = 0;
    if (v20 > 1)
    {
      v36 = 0;
      v37 = v20 - 1;
      v38 = v34 + 1;
      v39 = v116;
      do
      {
        v40 = v39->i32[0];
        v39 = (v39 + 4);
        v36 += v40;
        *v38++ = v36;
        --v37;
      }

      while (v37);
    }

    if (v15 >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        v109[v34[v18[i]]++] = i;
      }
    }

    *v34 = 0;
    if (v20 > 1)
    {
      v42 = 0;
      v43 = v20 - 1;
      v44 = v34 + 1;
      v45 = v116;
      do
      {
        v46 = v45->i32[0];
        v45 = (v45 + 4);
        v42 += v46;
        *v44++ = v42;
        --v43;
      }

      while (v43);
    }

    free(v18);
    v112[14] = v20;
    v47 = malloc_type_malloc(4 * v20, 0x100004052888210uLL);
    *(v112 + 9) = v47;
    v48 = 8 * v20;
    if (v20 <= 0)
    {
      v52 = malloc_type_malloc(v48, 0x100004000313F17uLL);
    }

    else
    {
      v49 = v20;
      v50 = v16;
      do
      {
        v51 = *v50++;
        *v47++ = v51;
        --v49;
      }

      while (v49);
      v52 = malloc_type_malloc(v48, 0x100004000313F17uLL);
      v53 = *(a2 + 2);
      v54 = (v20 + 1) & 0xFFFFFFFE;
      v55 = vdupq_n_s64(v20 - 1);
      v56 = v52 + 1;
      v57 = xmmword_247321D00;
      v58 = vdupq_n_s64(2uLL);
      do
      {
        v59 = vmovn_s64(vcgeq_u64(v55, v57));
        if (v59.i8[0])
        {
          *(v56 - 1) = v53;
        }

        if (v59.i8[4])
        {
          *v56 = v53;
        }

        v57 = vaddq_s64(v57, v58);
        v56 += 2;
        v54 -= 2;
      }

      while (v54);
    }

    v60 = *(a2 + 6);
    if (v60 >= 1)
    {
      v61 = 0;
      v62 = MEMORY[0x277D85DF8];
      do
      {
        if (v20 < 1)
        {
          LODWORD(v63) = 0;
        }

        else
        {
          v63 = 0;
          while (*(*(a2 + 4) + 4 * v61) != v16[v63])
          {
            if (v20 == ++v63)
            {
              goto LABEL_53;
            }
          }
        }

        if (v63 == v20)
        {
LABEL_53:
          fprintf(*v62, "WARNING: class label %d specified in weight is not found\n", *(*(a2 + 4) + 4 * v61));
          v60 = *(a2 + 6);
        }

        else
        {
          *&v52[v63] = *(*(a2 + 5) + 8 * v61) * *&v52[v63];
        }

        ++v61;
      }

      while (v61 < v60);
    }

    v113 = v52;
    v64 = 8 * v107;
    v65 = malloc_type_malloc(8 * v107, 0x2004093837F09uLL);
    v66 = v65;
    if (v110 >= 1)
    {
      v67 = v110;
      v68 = v109;
      v69 = v65;
      do
      {
        v70 = *v68++;
        *v69 = *(*(v3 + 2) + 8 * v70);
        v69 += 8;
        --v67;
      }

      while (v67);
    }

    v117[0] = v110;
    v117[1] = v114;
    v119 = malloc_type_malloc(v64, 0x2004093837F09uLL);
    v118 = malloc_type_malloc(v64, 0x100004000313F17uLL);
    if (v110 >= 1)
    {
      v71 = 0;
      do
      {
        *&v119[v71] = *&v66[v71];
        v71 += 8;
      }

      while (8 * v110 != v71);
    }

    v108 = v66;
    v7 = v112;
    v72 = v116;
    if (*a2 == 4)
    {
      *(v112 + 8) = malloc_type_malloc(8 * v20 * v114, 0x100004000313F17uLL);
      if (v20 > 0)
      {
        v73 = 0;
        v74 = v118;
        do
        {
          v75 = v116->i32[v73];
          if (v75 >= 1)
          {
            v76 = 0;
            v77 = v35[v73];
            v78 = v73;
            v79 = v75 + v77;
            if (v79 <= v77 + 1)
            {
              v79 = v77 + 1;
            }

            v80 = v79 - v77;
            v81 = (v79 - v77 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v82 = vdupq_n_s64(v80 - 1);
            v83 = &v74[8 * v77];
            do
            {
              v84 = vmovn_s64(vcgeq_u64(v82, vorrq_s8(vdupq_n_s64(v76), xmmword_247321D00)));
              if (v84.i8[0])
              {
                *&v83[8 * v76] = v78;
              }

              if (v84.i8[4])
              {
                *&v83[8 * v76 + 8] = v78;
              }

              v76 += 2;
            }

            while (v81 != v76);
          }

          ++v73;
        }

        while (v73 != v20);
      }

      operator new[]();
    }

    if (v20 == 2)
    {
      v85 = malloc_type_malloc(8 * v106, 0x100004000313F17uLL);
      *(v112 + 8) = v85;
      v89 = v116->i32[0] + *v35;
      if (v89 < 1)
      {
        v89 = 0;
      }

      else
      {
        memset_pattern16(v118, &unk_247321E30, 8 * (v89 - 1) + 8);
      }

      if (v89 < v110)
      {
        memset_pattern16(&v118[8 * v89], &unk_247321E40, 8 * (v110 + ~v89) + 8);
      }

      v104 = v52;
      v86.n128_u64[0] = *v52;
      v87.n128_u64[0] = v52[1];
      train_one(v117, a2, v85, v86, v87, v88);
    }

    else
    {
      *(v112 + 8) = malloc_type_malloc(8 * v20 * v114, 0x100004000313F17uLL);
      v90 = malloc_type_malloc(8 * v106, 0x100004000313F17uLL);
      if (v20 >= 1)
      {
        v94 = 0;
        v95 = 0;
        v111 = v20;
        v96 = 8 * v20;
        do
        {
          v97 = v35[v95];
          v98 = v116->i32[v95];
          if (v97 < 1)
          {
            v99 = 0;
          }

          else
          {
            memset_pattern16(v118, &unk_247321E40, 8 * v97);
            v99 = v97;
          }

          if (v99 < v98 + v97)
          {
            memset_pattern16(&v118[8 * v99], &unk_247321E30, 8 * (~v99 + v98 + v97) + 8);
            v99 = v98 + v97;
          }

          if (v99 < v117[0])
          {
            memset_pattern16(&v118[8 * v99], &unk_247321E40, 8 * (v117[0] + ~v99) + 8);
          }

          v91.n128_u64[0] = v113[v95];
          v92.n128_u64[0] = *(a2 + 2);
          train_one(v117, a2, v90, v91, v92, v93);
          if (v114 >= 1)
          {
            v100 = (*(v112 + 8) + v94);
            v101 = v114;
            v102 = v90;
            do
            {
              v103 = *v102++;
              *v100 = v103;
              v100 = (v100 + v96);
              --v101;
            }

            while (v101);
          }

          ++v95;
          v94 += 8;
        }

        while (v95 != v111);
      }

      free(v90);
      v7 = v112;
      v104 = v113;
      v72 = v116;
    }

    free(v108);
    free(v16);
    free(v35);
    free(v72);
    free(v109);
    free(v119);
    free(v118);
    free(v104);
  }

  else
  {
    v11 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    v7[14] = 2;
    *(v7 + 8) = v11;
    *(v7 + 9) = 0;
    v12.n128_u64[0] = 0;
    v13.n128_u64[0] = 0;
    train_one(v3, a2, v11, v12, v13, v14);
  }

  return v7;
}

void sub_2472DBFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  CPMLlinearSVM::Solver_MCSVM_CS::~Solver_MCSVM_CS(va);
  _Unwind_Resume(a1);
}

size_t train_one(unsigned int *a1, uint64_t a2, double *a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = a5.n128_u64[0];
  v7 = a4.n128_u64[0];
  v26[7] = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  if (*a1 >= 1)
  {
    v10 = 0;
    v11 = *(a1 + 1);
    v12 = *a1;
    do
    {
      v13 = *v11++;
      if (v13 > 0.0)
      {
        ++v10;
      }

      --v12;
    }

    while (v12);
  }

  v14 = *a2;
  if (*a2 > 5)
  {
    if (v14 > 10)
    {
      switch(v14)
      {
        case 11:
          operator new[]();
        case 12:
          v15 = a3;
          v16 = a2;
          v17 = 12;
          break;
        case 13:
          v15 = a3;
          v16 = a2;
          v17 = 13;
          break;
        default:
          goto LABEL_35;
      }

      solve_l2r_l1l2_svr(a1, v15, v16, v17);
    }

    if (v14 == 6)
    {
      v25 = 0;
      transpose(a1, &v25, v26);
    }

    if (v14 == 7)
    {
      operator new[]();
    }
  }

  else
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        operator new[]();
      }

      if (v14 != 3)
      {
        if (v14 == 5)
        {
          v25 = 0;
          transpose(a1, &v25, v26);
        }

        goto LABEL_35;
      }

      v18 = a3;
      v19 = v9;
      v20 = *&v7;
      v21 = *&v6;
      v22 = 3;
LABEL_28:

      solve_l2r_l1l2_svc(a1, v18, v22, v19, v20, v21);
    }

    if (!v14)
    {
      operator new[]();
    }

    if (v14 == 1)
    {
      v18 = a3;
      v19 = v9;
      v20 = *&v7;
      v21 = *&v6;
      v22 = 1;
      goto LABEL_28;
    }
  }

LABEL_35:
  v23 = *MEMORY[0x277D85DF8];

  return fwrite("ERROR: unknown solver_type\n", 0x1BuLL, 1uLL, v23);
}

void cross_validation(unsigned int *a1, __int128 *a2, int a3, uint64_t a4)
{
  v8 = *a1;
  v9 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  if (v8 < a3)
  {
    fwrite("WARNING: # folds > # data. Will use # folds = # data instead (i.e., leave-one-out cross validation)\n", 0x64uLL, 1uLL, *MEMORY[0x277D85DF8]);
    a3 = v8;
  }

  v10 = (a3 + 1);
  v51 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = vdupq_n_s64(v8 - 1);
    v13 = xmmword_247321E10;
    v14 = xmmword_247321D00;
    v15 = v9 + 2;
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v15 - 2) = v11;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v15 - 1) = v11 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v15 = v11 + 2;
        v15[1] = v11 + 3;
      }

      v11 += 4;
      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v15 += 4;
    }

    while (((v8 + 3) & 0xFFFFFFFC) != v11);
    v18 = 0;
    v19 = v8;
    do
    {
      v20 = v18 + rand() % v19;
      v21 = v9[v18];
      v9[v18] = v9[v20];
      v9[v20] = v21;
      ++v18;
      --v19;
    }

    while (v19);
  }

  if ((a3 & 0x80000000) == 0)
  {
    v22 = a2;
    v23 = vdupq_n_s64(v10 - 1);
    v24 = (v10 + 3) & 0x1FFFFFFFCLL;
    v25 = vdupq_n_s32(v8);
    v26 = xmmword_247321E10;
    v27 = xmmword_247321D00;
    v28 = v51 + 2;
    v29 = xmmword_247321E20;
    v30.i64[0] = 0x400000004;
    v30.i64[1] = 0x400000004;
    v31 = vdupq_n_s64(4uLL);
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v23, v27));
      v33 = vmulq_s32(v25, v29);
      if (vuzp1_s16(v32, *v23.i8).u8[0])
      {
        *(v28 - 2) = v33.i32[0] / a3;
      }

      if (vuzp1_s16(v32, *&v23).i8[2])
      {
        *(v28 - 1) = v33.i32[1] / a3;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
      {
        *v28 = v33.i32[2] / a3;
        v28[1] = v33.i32[3] / a3;
      }

      v26 = vaddq_s64(v26, v31);
      v27 = vaddq_s64(v27, v31);
      v29 = vaddq_s32(v29, v30);
      v28 += 4;
      v24 -= 4;
    }

    while (v24);
    v34 = 0;
    v50 = a3;
    do
    {
      v35 = v51[v34++];
      v36 = v51[v34];
      v55 = *(a1 + 3);
      v37 = a1[1];
      LODWORD(v52) = v35 - v36 + v8;
      HIDWORD(v52) = v37;
      v54 = malloc_type_malloc(8 * SLODWORD(v52), 0x2004093837F09uLL);
      v53 = malloc_type_malloc(8 * SLODWORD(v52), 0x100004000313F17uLL);
      if (v35 < 1)
      {
        v40 = 0;
      }

      else
      {
        for (i = 0; i != v35; ++i)
        {
          v39 = v9[i];
          *(v54 + i) = *(*(a1 + 2) + 8 * v39);
          *(v53 + i) = *(*(a1 + 1) + 8 * v39);
        }

        v40 = v35;
      }

      if (v36 < v8)
      {
        v41 = v8 - v36;
        v42 = 8 * v40;
        v43 = &v9[v36];
        do
        {
          v44 = *v43++;
          *(v54 + v42) = *(*(a1 + 2) + 8 * v44);
          *(v53 + v42) = *(*(a1 + 1) + 8 * v44);
          v42 += 8;
          --v41;
        }

        while (v41);
      }

      v45 = train(&v52, v22);
      if (v35 < v36)
      {
        v46 = &v9[v35];
        v47 = v36 - v35;
        do
        {
          v48 = predict(v45, *(*(a1 + 2) + 8 * *v46));
          v49 = *v46++;
          *(a4 + 8 * v49) = v48;
          --v47;
        }

        while (v47);
      }

      if (v45)
      {
        free_model_content(v45);
        free(v45);
      }

      free(v54);
      free(v53);
    }

    while (v34 != v50);
  }

  free(v51);
  free(v9);
}

double predict(uint64_t a1, _DWORD *a2)
{
  v4 = malloc_type_malloc(8 * *(a1 + 56), 0x100004000313F17uLL);
  v5 = predict_values(a1, a2, v4);
  free(v4);
  return v5;
}

void free_and_destroy_model(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    free_model_content(*a1);

    free(v1);
  }
}

double predict_values_vn(uint64_t a1, double *a2, double *a3, int a4)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  if (v5 == 2)
  {
    v6 = v4 - 8;
    v7 = v4 - 8 * v5;
    if (*a1 == 4)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = 0;
    if (*a1 != 4)
    {
      v7 = v6;
    }

    goto LABEL_10;
  }

  v7 = v4 - 8 * v5;
  if (v5 < 8)
  {
    v9 = 0;
    v8 = *(a1 + 56);
LABEL_10:
    v10 = a3;
    goto LABEL_21;
  }

  v9 = v5 & 0x7FFFFFF8;
  v11 = 8;
  v10 = a3;
  do
  {
    if (a4 >= 2)
    {
      v18 = 0uLL;
      v19 = 2;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v14 = a2;
      v26 = 0uLL;
      do
      {
        v27 = *v14;
        v28 = v14[1];
        v29 = *(v14 + 4);
        v30 = v14[3];
        v14 += 4;
        v31 = (v7 + 8 * v27 * v5);
        v32 = (v7 + 8 * v29 * v5);
        v18 = vmlaq_n_f64(v18, *v31, v28);
        v20 = vmlaq_n_f64(v20, v31[1], v28);
        v21 = vmlaq_n_f64(v21, *v32, v30);
        v22 = vmlaq_n_f64(v22, v32[1], v30);
        v23 = vmlaq_n_f64(v23, v31[2], v28);
        v24 = vmlaq_n_f64(v24, v31[3], v28);
        v25 = vmlaq_n_f64(v25, v32[2], v30);
        v26 = vmlaq_n_f64(v26, v32[3], v30);
        v19 += 2;
      }

      while (v19 <= a4);
      v13 = vaddq_f64(v21, v18);
      v15 = vaddq_f64(v22, v20);
      v16 = vaddq_f64(v25, v23);
      v12 = a4 & 0xFFFFFFFE;
      v17 = vaddq_f64(v26, v24);
    }

    else
    {
      v12 = 0;
      v13 = 0uLL;
      v14 = a2;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
    }

    if (v12 < a4)
    {
      v33 = v14[1];
      v34 = (v7 + 8 * *v14 * v5);
      v13 = vmlaq_n_f64(v13, *v34, v33);
      v15 = vmlaq_n_f64(v15, v34[1], v33);
      v16 = vmlaq_n_f64(v16, v34[2], v33);
      v17 = vmlaq_n_f64(v17, v34[3], v33);
    }

    *v10 = v13;
    *(v10 + 1) = v15;
    *(v10 + 2) = v16;
    *(v10 + 3) = v17;
    v10 += 8;
    v7 += 64;
    v11 += 8;
  }

  while (v11 <= v5);
  v8 = v5;
LABEL_21:
  v35 = v9 | 6;
  if ((v9 | 6) <= v8)
  {
    do
    {
      v9 = v35;
      if (a4 >= 2)
      {
        v41 = 0uLL;
        v42 = 2;
        v43 = 0uLL;
        v44 = 0uLL;
        v45 = 0uLL;
        v46 = 0uLL;
        v38 = a2;
        v47 = 0uLL;
        do
        {
          v48 = *v38;
          v49 = v38[1];
          v50 = *(v38 + 4);
          v51 = v38[3];
          v38 += 4;
          v52 = (v7 + 8 * v48 * v8);
          v53 = (v7 + 8 * v50 * v8);
          v41 = vmlaq_n_f64(v41, *v52, v49);
          v43 = vmlaq_n_f64(v43, v52[1], v49);
          v44 = vmlaq_n_f64(v44, *v53, v51);
          v45 = vmlaq_n_f64(v45, v53[1], v51);
          v46 = vmlaq_n_f64(v46, v52[2], v49);
          v47 = vmlaq_n_f64(v47, v53[2], v51);
          v42 += 2;
        }

        while (v42 <= a4);
        v37 = vaddq_f64(v44, v41);
        v39 = vaddq_f64(v45, v43);
        v40 = vaddq_f64(v47, v46);
        v36 = a4 & 0xFFFFFFFE;
      }

      else
      {
        v36 = 0;
        v37 = 0uLL;
        v38 = a2;
        v39 = 0uLL;
        v40 = 0uLL;
      }

      if (v36 < a4)
      {
        v54 = v38[1];
        v55 = (v7 + 8 * *v38 * v8);
        v37 = vmlaq_n_f64(v37, *v55, v54);
        v39 = vmlaq_n_f64(v39, v55[1], v54);
        v40 = vmlaq_n_f64(v40, v55[2], v54);
      }

      *v10 = v37;
      *(v10 + 1) = v39;
      *(v10 + 2) = v40;
      v10 += 6;
      v7 += 48;
      v35 = v9 + 6;
    }

    while (v9 + 6 <= v8);
  }

  for (i = v9 + 4; v9 + 4 <= v8; i = v9 + 4)
  {
    v9 = i;
    if (a4 >= 2)
    {
      v61 = 0uLL;
      v62 = 2;
      v63 = 0uLL;
      v64 = 0uLL;
      v59 = a2;
      v65 = 0uLL;
      do
      {
        v66 = v59[1];
        v67 = *v59;
        v68 = v59[3];
        v69 = *(v59 + 4);
        v59 += 4;
        v70 = (v7 + 8 * v67 * v8);
        v71 = (v7 + 8 * v69 * v8);
        v61 = vmlaq_n_f64(v61, *v70, v66);
        v63 = vmlaq_n_f64(v63, v70[1], v66);
        v64 = vmlaq_n_f64(v64, *v71, v68);
        v65 = vmlaq_n_f64(v65, v71[1], v68);
        v62 += 2;
      }

      while (v62 <= a4);
      v58 = vaddq_f64(v64, v61);
      v60 = vaddq_f64(v65, v63);
      v57 = a4 & 0xFFFFFFFE;
    }

    else
    {
      v57 = 0;
      v58 = 0uLL;
      v59 = a2;
      v60 = 0uLL;
    }

    if (v57 < a4)
    {
      v72 = v59[1];
      v73 = (v7 + 8 * *v59 * v8);
      v58 = vmlaq_n_f64(v58, *v73, v72);
      v60 = vmlaq_n_f64(v60, v73[1], v72);
    }

    *v10 = v58;
    *(v10 + 1) = v60;
    v10 += 4;
    v7 += 32;
  }

  for (j = v9 + 2; v9 + 2 <= v8; j = v9 + 2)
  {
    v9 = j;
    if (a4 >= 4)
    {
      v79 = 0uLL;
      v80 = 4;
      v81 = 0uLL;
      v82 = 0uLL;
      v77 = a2;
      v83 = 0uLL;
      do
      {
        v84 = v77[1];
        v85 = *v77;
        v86 = v77[3];
        v87 = *(v77 + 4);
        v88 = v77[5];
        v89 = *(v77 + 8);
        v90 = v77[7];
        v91 = *(v77 + 12);
        v77 += 8;
        v79 = vmlaq_n_f64(v79, *(v7 + 8 * v85 * v8), v84);
        v81 = vmlaq_n_f64(v81, *(v7 + 8 * v87 * v8), v86);
        v83 = vmlaq_n_f64(v83, *(v7 + 8 * v89 * v8), v88);
        v82 = vmlaq_n_f64(v82, *(v7 + 8 * v91 * v8), v90);
        v80 += 4;
      }

      while (v80 <= a4);
      v76 = vaddq_f64(v83, v79);
      v78 = vaddq_f64(v82, v81);
      v75 = a4 & 0xFFFFFFFC;
    }

    else
    {
      v75 = 0;
      v76 = 0uLL;
      v77 = a2;
      v78 = 0uLL;
    }

    if ((v75 | 2) <= a4)
    {
      do
      {
        v93 = v77[1];
        v94 = *v77;
        v95 = v77[3];
        v96 = *(v77 + 4);
        v77 += 4;
        v76 = vmlaq_n_f64(v76, *(v7 + 8 * v94 * v8), v93);
        v78 = vmlaq_n_f64(v78, *(v7 + 8 * v96 * v8), v95);
        v92 = v75 + 2;
        v97 = v75 + 4;
        v75 += 2;
      }

      while (v97 <= a4);
    }

    else
    {
      v92 = v75;
    }

    v98 = vaddq_f64(v78, v76);
    if (v92 < a4)
    {
      v98 = vmlaq_n_f64(v98, *(v7 + 8 * *v77 * v8), v77[1]);
    }

    *v10 = v98;
    v10 += 2;
    v7 += 16;
  }

  if (v9 < v8)
  {
    if (a4 >= 2)
    {
      v99 = a4 & 0x7FFFFFFE;
      v101 = 0.0;
      v102 = 2;
      v103 = 0.0;
      do
      {
        v104 = *a2;
        v105 = a2[1];
        v106 = *(a2 + 4);
        v107 = a2[3];
        a2 += 4;
        v103 = v103 + *(v7 + 8 * v104 * v8) * v105;
        v101 = v101 + *(v7 + 8 * v106 * v8) * v107;
        v102 += 2;
      }

      while (v102 <= a4);
      v100 = v103 + v101;
    }

    else
    {
      v99 = 0;
      v100 = 0.0;
    }

    if (v99 < a4)
    {
      v100 = v100 + *(v7 + 8 * *a2 * v8) * a2[1];
    }

    *v10 = v100;
  }

  if (v5 == 2)
  {
    result = *a3;
    if ((*a1 - 11) < 3)
    {
      return result;
    }

    v109 = (*(a1 + 72) + 4 * (result <= 0.0));
  }

  else
  {
    if (v5 < 2)
    {
      v112 = 0;
    }

    else
    {
      v110 = 0;
      for (k = 1; k != v5; ++k)
      {
        if (a3[k] > a3[v110])
        {
          v110 = k;
        }
      }

      v112 = v110;
    }

    v109 = (*(a1 + 72) + 4 * v112);
  }

  return *v109;
}

double predict_values(uint64_t a1, _DWORD *a2, double *a3)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 56);
  if (v4 == 2)
  {
    v5 = 0;
    if (*a1 == 4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_7;
  }

  if (v4 < 8)
  {
    v5 = 0;
    v6 = *(a1 + 56);
LABEL_7:
    v7 = a3;
    goto LABEL_16;
  }

  v5 = v4 & 0x7FFFFFF8;
  v8 = 8;
  v7 = a3;
  do
  {
    v9 = *a2;
    if (*a2 == -1)
    {
      v14 = 0uLL;
      v13 = 0uLL;
      v12 = 0uLL;
      v10 = 0uLL;
    }

    else
    {
      v10 = 0uLL;
      v11 = (a2 + 4);
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = *(v11 - 1);
        v16 = (v3 + 8 * (v9 - 1) * v4);
        v10 = vmlaq_n_f64(v10, *v16, v15);
        v12 = vmlaq_n_f64(v12, v16[1], v15);
        v14 = vmlaq_n_f64(v14, v16[2], v15);
        v13 = vmlaq_n_f64(v13, v16[3], v15);
        v17 = *v11;
        v11 += 2;
        v9 = v17;
      }

      while (v17 != -1);
    }

    *v7 = v10;
    *(v7 + 1) = v12;
    *(v7 + 2) = v14;
    *(v7 + 3) = v13;
    v7 += 8;
    v3 += 64;
    v8 += 8;
  }

  while (v8 <= v4);
  v6 = v4;
LABEL_16:
  v18 = v5 | 4;
  if ((v5 | 4) <= v6)
  {
    do
    {
      v5 = v18;
      v19 = *a2;
      if (*a2 == -1)
      {
        v22 = 0uLL;
        v20 = 0uLL;
      }

      else
      {
        v20 = 0uLL;
        v21 = (a2 + 4);
        v22 = 0uLL;
        do
        {
          v23 = *(v21 - 1);
          v24 = (v3 + 8 * (v19 - 1) * v6);
          v20 = vmlaq_n_f64(v20, *v24, v23);
          v22 = vmlaq_n_f64(v22, v24[1], v23);
          v25 = *v21;
          v21 += 2;
          v19 = v25;
        }

        while (v25 != -1);
      }

      *v7 = v20;
      *(v7 + 1) = v22;
      v7 += 4;
      v3 += 32;
      v18 = v5 + 4;
    }

    while (v5 + 4 <= v6);
  }

  for (i = v5 + 2; v5 + 2 <= v6; i = v5 + 2)
  {
    v5 = i;
    v27 = *a2;
    v28 = 0uLL;
    if (*a2 != -1)
    {
      v29 = (a2 + 4);
      do
      {
        v28 = vmlaq_n_f64(v28, *(v3 + 8 * (v27 - 1) * v6), *(v29 - 1));
        v30 = *v29;
        v29 += 2;
        v27 = v30;
      }

      while (v30 != -1);
    }

    *v7 = v28;
    v7 += 2;
    v3 += 16;
  }

  if (v5 < v6)
  {
    v31 = *a2;
    if (*a2 == -1)
    {
      v33 = 0.0;
    }

    else
    {
      v32 = (a2 + 4);
      v33 = 0.0;
      do
      {
        v33 = v33 + *(v3 + 8 * (v31 - 1) * v6) * *(v32 - 1);
        v34 = *v32;
        v32 += 2;
        v31 = v34;
      }

      while (v34 != -1);
    }

    *v7 = v33;
  }

  if (v4 == 2)
  {
    result = *a3;
    if ((*a1 - 11) < 3)
    {
      return result;
    }

    v36 = (*(a1 + 72) + 4 * (result <= 0.0));
  }

  else
  {
    if (v4 < 2)
    {
      v39 = 0;
    }

    else
    {
      v37 = 0;
      for (j = 1; j != v4; ++j)
      {
        if (a3[j] > a3[v37])
        {
          v37 = j;
        }
      }

      v39 = v37;
    }

    v36 = (*(a1 + 72) + 4 * v39);
  }

  return *v36;
}

double predict_vn(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x28223BE20](a1);
  return predict_values_vn(v1, v3, (v6 - ((v2 + 15) & 0xFFFFFFFF0)), v4);
}

double predict_probability(_DWORD *a1, _DWORD *a2, double *a3)
{
  if (*a1 > 7u || ((1 << *a1) & 0xC1) == 0)
  {
    return 0.0;
  }

  v4 = a3;
  v5 = a1[14];
  if (v5 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = predict_values(a1, a2, a3);
  if (v6 >= 1)
  {
    v8 = v4;
    do
    {
      *v8 = 1.0 / (exp(-*v8) + 1.0);
      ++v8;
      --v6;
    }

    while (v6);
  }

  if (v5 == 2)
  {
    v4[1] = 1.0 - *v4;
  }

  else if (v5 >= 1)
  {
    v9 = 0.0;
    v10 = v5;
    v11 = v4;
    do
    {
      v12 = *v11++;
      v9 = v9 + v12;
      --v10;
    }

    while (v10);
    do
    {
      *v4 = *v4 / v9;
      ++v4;
      --v5;
    }

    while (v5);
  }

  return v7;
}

BOOL check_probability_model(_DWORD *a1)
{
  if (*a1)
  {
    v1 = *a1 == 7;
  }

  else
  {
    v1 = 1;
  }

  return v1 || *a1 == 6;
}

uint64_t save_model(const char *a1, double *a2)
{
  v3 = *(a2 + 15);
  if (a2[10] < 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = fopen(a1, "w");
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = setlocale(0, 0);
  v18 = strdup(v7);
  setlocale(0, "C");
  v8 = *(a2 + 14);
  v9 = *a2;
  if (v9 != 4 && v8 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  fprintf(v6, "solver_type %s\n", solver_type_table[v9]);
  fprintf(v6, "nr_class %d\n", *(a2 + 14));
  if (*(a2 + 9))
  {
    fwrite("label", 5uLL, 1uLL, v6);
    if (*(a2 + 14) >= 1)
    {
      v12 = 0;
      do
      {
        fprintf(v6, " %d", *(*(a2 + 9) + 4 * v12++));
      }

      while (v12 < *(a2 + 14));
    }

    fputc(10, v6);
  }

  fprintf(v6, "nr_feature %d\n", v3);
  fprintf(v6, "bias %.16g\n", a2[10]);
  fwrite("w\n", 2uLL, 1uLL, v6);
  if (v4 >= 1)
  {
    v13 = 0;
    for (i = 0; i != v4; ++i)
    {
      if (v11 >= 1)
      {
        v15 = v11;
        v16 = v13;
        do
        {
          fprintf(v6, "%.16g ", *(*(a2 + 8) + v16));
          v16 += 8;
          --v15;
        }

        while (v15);
      }

      fputc(10, v6);
      v13 += 8 * v11;
    }
  }

  setlocale(0, v18);
  free(v18);
  if (ferror(v6))
  {
    return 0xFFFFFFFFLL;
  }

  if (fclose(v6))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

FILE *load_model(const char *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  result = fopen(a1, "r");
  if (result)
  {
    v2 = result;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v3 = malloc_type_malloc(0x58uLL, 0x10900405E350820uLL);
    *(v3 + 9) = 0;
    v4 = setlocale(0, 0);
    v19 = strdup(v4);
    setlocale(0, "C");
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              fscanf(v2, "%80s", __s2);
              if (*__s2 != 0x745F7265766C6F73 || *&__s2[8] != 6647929)
              {
                break;
              }

              fscanf(v2, "%80s", __s2);
              v11 = 0;
              while (strcmp(solver_type_table[v11], __s2))
              {
                if (++v11 == 14)
                {
                  fwrite("unknown solver type.\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
                  goto LABEL_31;
                }
              }

              *v3 = v11;
            }

            if (*__s2 ^ 0x7373616C635F726ELL | __s2[8])
            {
              break;
            }

            fscanf(v2, "%d", &v21);
            v3[14] = v21;
          }

          if (*__s2 != 0x75746165665F726ELL || *&__s2[3] != 0x65727574616566)
          {
            break;
          }

          fscanf(v2, "%d", &v22);
          v3[15] = v22;
        }

        if (*__s2 ^ 0x73616962 | __s2[4])
        {
          break;
        }

        fscanf(v2, "%lf", &v20);
        *(v3 + 10) = v20;
      }

      if (*__s2 == 119)
      {
        break;
      }

      if (*__s2 != 1700946284 || *&__s2[4] != 108)
      {
        fprintf(*MEMORY[0x277D85DF8], "unknown text in model file: [%s]\n", __s2);
LABEL_31:
        setlocale(0, v19);
        free(*(v3 + 9));
        free(v3);
        free(v19);
        return 0;
      }

      v8 = v3[14];
      v9 = 4 * v8;
      *(v3 + 9) = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
      if (v8 >= 1)
      {
        v10 = 0;
        do
        {
          fscanf(v2, "%d", *(v3 + 9) + v10);
          v10 += 4;
        }

        while (v9 != v10);
      }
    }

    v12 = v3[15];
    v22 = v12;
    if (*(v3 + 10) < 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    v14 = v21;
    if (v21 == 2 && *v3 != 4)
    {
      v14 = 1;
    }

    *(v3 + 8) = malloc_type_malloc(8 * v14 * v13, 0x100004000313F17uLL);
    if (v13 >= 1)
    {
      v15 = 0;
      for (i = 0; i != v13; ++i)
      {
        if (v14 >= 1)
        {
          v17 = v14;
          v18 = v15;
          do
          {
            fscanf(v2, "%lf ", *(v3 + 8) + v18);
            v18 += 8;
            --v17;
          }

          while (v17);
        }

        fscanf(v2, "\n");
        v15 += 8 * v14;
      }
    }

    setlocale(0, v19);
    free(v19);
    if (ferror(v2))
    {
      return 0;
    }

    if (fclose(v2))
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t get_labels(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2 && *(result + 56) >= 1)
  {
    v3 = 0;
    do
    {
      *(a2 + 4 * v3) = *(v2 + 4 * v3);
      ++v3;
    }

    while (v3 < *(result + 56));
  }

  return result;
}

double get_decfun_coef(uint64_t a1, int a2, int a3)
{
  result = 0.0;
  if (*(a1 + 60) >= a2)
  {
    v4 = a2 - 1;
    if (a2 >= 1)
    {
      v5 = *(a1 + 64);
      if ((*a1 - 11) < 3)
      {
        return *(v5 + 8 * v4);
      }

      if ((a3 & 0x80000000) == 0)
      {
        v6 = *(a1 + 56);
        if (v6 > a3)
        {
          if (v6 != 2 || *a1 == 4)
          {
            v4 = a3 + v6 * v4;
            return *(v5 + 8 * v4);
          }

          result = *(v5 + 8 * v4);
          if (a3)
          {
            return -result;
          }
        }
      }
    }
  }

  return result;
}

double get_decfun_bias(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  result = 0.0;
  if (v2 > 0.0)
  {
    v4 = *(a1 + 60);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = *(a1 + 64);
      if ((*a1 - 11) >= 3)
      {
        if (a2 < 0)
        {
          return v2 * result;
        }

        v6 = *(a1 + 56);
        if (v6 <= a2)
        {
          return v2 * result;
        }

        if (v6 == 2 && *a1 != 4)
        {
          result = *(v5 + 8 * v4);
          if (a2)
          {
            result = -result;
          }

          return v2 * result;
        }

        v4 = a2 + v6 * v4;
      }

      result = *(v5 + 8 * v4);
    }

    return v2 * result;
  }

  return result;
}

void free_model_content(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    free(v3);
  }
}

void destroy_param(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    free(v3);
  }
}

const char *check_parameter(uint64_t a1, double *a2)
{
  if (a2[1] <= 0.0)
  {
    return "eps <= 0";
  }

  if (a2[2] <= 0.0)
  {
    return "C <= 0";
  }

  if (a2[6] < 0.0)
  {
    return "p < 0";
  }

  v3 = *a2;
  if (v3 > 0xD)
  {
    return "unknown solver type";
  }

  else
  {
    return qword_278E9EC50[v3];
  }
}

uint64_t (*set_print_string_function(uint64_t (*result)(const char *)))(const char *)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = print_string_stdout;
  }

  liblinear_print_string = v1;
  return result;
}

uint64_t print_string_stdout(const char *a1)
{
  v1 = MEMORY[0x277D85E08];
  fputs(a1, *MEMORY[0x277D85E08]);
  v2 = *v1;

  return fflush(v2);
}

{
  v1 = MEMORY[0x277D85E08];
  fputs(a1, *MEMORY[0x277D85E08]);
  v2 = *v1;

  return fflush(v2);
}

void CPMLlinearSVM::l2r_l2_svr_fun::~l2r_l2_svr_fun(CPMLlinearSVM::l2r_l2_svr_fun *this)
{
  CPMLlinearSVM::l2r_l2_svc_fun::~l2r_l2_svc_fun(this);

  JUMPOUT(0x24C19F910);
}

void CPMLSerialization::CPMLSerialization(CPMLSerialization *this, sqlite3 *a2)
{
  this->var0 = &unk_2859277B8;
  this->var1 = 1;
  *&this->var2 = 0xFFFFFFFFLL;
  this->var4 = 0;
  this->var5 = a2;
}

void CPMLSerialization::~CPMLSerialization(CPMLSerialization *this)
{
  this->var0 = &unk_2859277B8;
  var4 = this->var4;
  if (var4)
  {
    var3 = this->var3;
    if (var3 >= 1)
    {
      v4 = munmap(var4, var3);
      if ((v4 & 0x80000000) != 0)
      {
        CPMLLog = CPMLLog::getCPMLLog(v4);
        CPMLLog::log(CPMLLog, CPML_LOG_ERR, "~CPMLSerialization", "unmap failed");
      }
    }
  }

  var2 = this->var2;
  if ((var2 & 0x80000000) == 0)
  {
    close(var2);
  }
}

{
  CPMLSerialization::~CPMLSerialization(this);

  JUMPOUT(0x24C19F910);
}

void *CPMLLog::getCPMLLog(CPMLLog *this)
{
  {
    CPMLLog::CPMLLog(&CPMLLog::getCPMLLog(void)::instance);
    __cxa_atexit(CPMLLog::~CPMLLog, &CPMLLog::getCPMLLog(void)::instance, &dword_2472D3000);
  }

  return &CPMLLog::getCPMLLog(void)::instance;
}

uint64_t CPMLSerialization::cp_write(CPMLSerialization *this, int *a2, const char *a3, unint64_t a4, const char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_write(CPMLSerialization *this, unsigned int *a2, const char *a3, unint64_t a4, const char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_write(CPMLSerialization *this, unint64_t *a2, const char *a3, unint64_t a4, const char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_write(CPMLSerialization *this, float *a2, const char *a3, unint64_t a4, const char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_write(CPMLSerialization *this, double *a2, const char *a3, unint64_t a4, const char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_write(CPMLSerialization *this, char *a2, const char *a3, unint64_t a4, const char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_read(CPMLSerialization *this, int *a2, const char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_read(CPMLSerialization *this, unsigned int *a2, const char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_read(CPMLSerialization *this, unint64_t *a2, const char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_read(CPMLSerialization *this, float *a2, const char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_read(CPMLSerialization *this, double *a2, const char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_read(CPMLSerialization *this, char *a2, const char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_doSerialization(CPMLSerialization *this)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_doSerialization", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::reset(CPMLSerialization *this)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "reset", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_query_uint64_t(CPMLSerialization *this, unint64_t *a2, unint64_t a3, char *a4, char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_query_uint64_t", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_query_double(CPMLSerialization *this, double *a2, unint64_t a3, char *a4, char *a5)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_query_double", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_update_int(CPMLSerialization *this, int a2, char *a3, char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_update_int", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_update_uint64_t(CPMLSerialization *this, unint64_t a2, char *a3, char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_update_uint64_t", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_update_double(CPMLSerialization *this, double a2, char *a3, char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_update_double", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_singleQuery_string(CPMLSerialization *this, char *a2, unint64_t a3, char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_singleQuery_string", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_singleQuery_uint64_t(CPMLSerialization *this, unint64_t *a2, char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_singleQuery_uint64_t", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_multiQuery_int(CPMLSerialization *this, int *a2, unint64_t a3, const char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_multiQuery_int", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_multiQuery_uint64_t(CPMLSerialization *this, unint64_t *a2, unint64_t a3, const char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_multiQuery_uint64_t", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_multiQuery_double(CPMLSerialization *this, double *a2, unint64_t a3, const char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_multiQuery_double", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

uint64_t CPMLSerialization::cp_singleQuery_double(CPMLSerialization *this, double *a2, char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_singleQuery_double", "unimplemented function.");
  return 0xFFFFFFFFLL;
}

pthread_mutex_t *CPMLSerialization::cp_createTable(CPMLSerialization *this, char *a2, char *a3)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  v4 = CPML_LOG_ERR;

  return CPMLLog::log(CPMLLog, v4, "cp_createTable", "unimplemented function.");
}

pthread_mutex_t *CPMLSerialization::cp_insertIntoTable(CPMLSerialization *this, char *a2, char *a3, char *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  v5 = CPML_LOG_ERR;

  return CPMLLog::log(CPMLLog, v5, "cp_insertIntoTable", "unimplemented function.");
}

uint64_t CPMLSerialization::cp_saveCache(CPMLSerialization *this, char *a2, void *__buf, int a4)
{
  var2 = this->var2;
  if (var2 == -1)
  {
    var2 = open(a2, 513, 448);
    this->var2 = var2;
  }

  v8 = write(var2, __buf, a4);
  if (v8 == a4)
  {
    return 0;
  }

  CPMLLog = CPMLLog::getCPMLLog(v8);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_saveCache", "cache saved incorrectly.\n");
  close(this->var2);
  result = 0xFFFFFFFFLL;
  this->var2 = -1;
  return result;
}

uint64_t CPMLSerialization::cp_loadCache(CPMLSerialization *this, char *a2, void **a3, int a4)
{
  var2 = this->var2;
  if (var2 != -1 || (result = open(a2, 2, 0), var2 = result, this->var2 = result, result != -1))
  {
    v9 = mmap(0, a4, 1, 2, var2, 0);
    *a3 = v9;
    if (v9 == -1)
    {
      close(this->var2);
      result = 0xFFFFFFFFLL;
      this->var2 = -1;
    }

    else
    {
      v10 = v9;
      result = 0;
      this->var3 = a4;
      this->var4 = v10;
    }
  }

  return result;
}

id CPMLTrainDataWith(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
  if (v5)
  {
    v8 = 0;
    v9 = 100;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:&v9 error:&v8];

LABEL_5:
    v5 = CPMLTrainDataWithDict(v3, v6);

    goto LABEL_7;
  }

  NSLog(&cfstr_SPlistIncorrec.isa, "CPMLTrainDataWith");
LABEL_7:

  return v5;
}

CPMLModel *CPMLTrainDataWithDict(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[CPMLTrainer alloc] init:v4 withModelDBPath:0 withPropertyList:v3];

  [v5 train:0];
  v6 = objc_alloc_init(CPMLModel);
  v7 = [v3 objectForKey:@"modelFilenameAndPath"];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 bundleIdentifier];

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/tmp/_MODEL_%@", v9];
  }

  v10 = [[CPMLModelEvaluate alloc] initWithModel:v7 withPropertyList:v3];
  [(CPMLModel *)v6 setCpModelEvaluate:v10];

  return v6;
}

id CPMLTrainDataFrom(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[CPMLDB alloc] initWithDBName:v4 withPlistPath:v3 withWriteOptions:3];

  v6 = CPMLTrainDataWith(v5, v3);

  return v6;
}

id CPMLTrainDataFromDict(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[CPMLDB alloc] initWithDBName:v4 withConfiguration:v3 withWriteOptions:3];

  v6 = CPMLTrainDataWithDict(v5, v3);

  return v6;
}

void CPMLTrainAndSaveDataWith(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
    if (!v8)
    {
      NSLog(&cfstr_SPlistIncorrec.isa, "CPMLTrainAndSaveDataWith");
      goto LABEL_7;
    }

    v9 = v8;
    v11 = 0;
    v12 = 100;
    v10 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:&v12 error:&v11];
  }

  else
  {
    v10 = 0;
  }

  CPMLTrainAndSaveDataWithDict(v5, v10, v7);

LABEL_7:
}

void CPMLTrainAndSaveDataWithDict(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [[CPMLTrainer alloc] init:v7 withModelDBPath:v5 withPropertyList:v6];

  if (v8)
  {
    [v8 train:1];
  }

  else
  {
    NSLog(&cfstr_CannotTrainand.isa);
  }
}

void CPMLTrainAndSaveDataFrom(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [[CPMLDB alloc] initWithDBName:v7 withPlistPath:v6 withWriteOptions:1];

  CPMLTrainAndSaveDataWith(v8, v6, v5);
}

void CPMLTrainAndSaveDataFromDict(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [[CPMLDB alloc] initWithDBName:v7 withConfiguration:v6 withWriteOptions:1];

  CPMLTrainAndSaveDataWithDict(v8, v6, v5);
}

void *CPMLTrainOBJDataWith(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [[v3 alloc] initWithCString:a2 encoding:4];
  v6 = CPMLTrainDataWith(v4, v5);

  return v6;
}

void *CPMLTrainOBJDataFrom(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 encoding:4];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
  v5 = CPMLTrainDataFrom(v3, v4);

  return v5;
}

void CPMLTrainAndSaveOBJDataWith(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1;
  v8 = [[v5 alloc] initWithCString:a2 encoding:4];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a3 encoding:4];
  CPMLTrainAndSaveDataWith(v6, v8, v7);
}

void CPMLTrainAndSaveOBJDataFrom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 encoding:4];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a3 encoding:4];
  CPMLTrainAndSaveDataFrom(v7, v5, v6);
}

void CPMLLog::CPMLLog(CPMLLog *this)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  v2 = pthread_mutexattr_init(this + 4);
  v3 = MEMORY[0x277D85DF8];
  if (v2)
  {
    fprintf(*MEMORY[0x277D85DF8], "pthread_mutexattr_init fail %d\n", v2);
  }

  v4 = pthread_mutexattr_settype(this + 4, 2);
  if (v4)
  {
    fprintf(*v3, "pthread_mutexattr_settype fail %d\n", v4);
  }

  v5 = pthread_mutex_init(this, this + 4);
  if (v5)
  {
    fprintf(*v3, "pthread_mutex_init fail %d\n", v5);
  }
}

void CPMLLog::~CPMLLog(pthread_mutexattr_t *this)
{
  v2 = pthread_mutexattr_destroy(this + 4);
  v3 = MEMORY[0x277D85DF8];
  if (v2)
  {
    fprintf(*MEMORY[0x277D85DF8], "pthread_mutexattr_destroy fail %d\n", v2);
  }

  v4 = pthread_mutex_destroy(this);
  if (v4)
  {
    fprintf(*v3, "pthread_mutex_destroy fail %d\n", v4);
  }
}

pthread_mutex_t *CPMLLog::log(pthread_mutex_t *this, int a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  v6 = this;
  v8 = *MEMORY[0x277D85DE8];
  if (a2 < 4 || *&this[1].__opaque[8])
  {
    pthread_mutex_lock(this);
    vsnprintf(__str, 0x200uLL, a4, va);
    if (v6[1].__opaque[8])
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: %s", a3, __str);
    }

    return pthread_mutex_unlock(v6);
  }

  return this;
}

void CPMLNaiveBayesSuggestions::predict_sorted(uint64_t a1, unsigned int ***a2, uint64_t *a3, int a4, void *a5)
{
  v10 = *a2;
  if (*(a1 + 72) >= (-1431655765 * ((a2[1] - v10) >> 3)))
  {

    CPMLNaiveBayes::predict_sorted(a1, a2, a3, a4, a5);
  }

  else
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
    CPMLNaiveBayes::sort_candidates(a1, v10, &__p);
    std::vector<int>::vector[abi:ne200100](&__src, *(a1 + 72));
    v28 = a5;
    std::vector<std::vector<int>>::vector[abi:ne200100](v29, *(a1 + 72));
    if (*(a1 + 72) >= 1)
    {
      v12 = 0;
      v13 = v31;
      v14 = 8;
      do
      {
        if (v13 >= v32)
        {
          v15 = __src;
          v16 = v13 - __src;
          v17 = (v13 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v19 = v32 - __src;
          if ((v32 - __src) >> 1 > v18)
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v20);
          }

          v21 = v17;
          v22 = (4 * v17);
          v23 = &v22[-v21];
          *v22 = *(__p + v14);
          v13 = (v22 + 1);
          memcpy(v23, v15, v16);
          v24 = __src;
          __src = v23;
          v31 = v13;
          v32 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v13 = *(__p + v14);
          v13 += 4;
        }

        v31 = v13;
        ++v12;
        v14 += 16;
      }

      while (v12 < *(a1 + 72));
    }

    std::vector<std::vector<int>>::push_back[abi:ne200100](v29, &__src);
    v25 = *a2;
    if (0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2) >= 2)
    {
      v26 = 1;
      v27 = 24;
      do
      {
        std::vector<std::vector<int>>::push_back[abi:ne200100](v29, (v25 + v27));
        ++v26;
        v25 = *a2;
        v27 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2) > v26);
    }

    CPMLNaiveBayes::predict_sorted(a1, v29, a3, a4, v28);
    v36 = v29;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v36);
    if (__src)
    {
      v31 = __src;
      operator delete(__src);
    }

    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }
}

void sub_2472E1C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2472E1D38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::vector<int>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
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

uint64_t *std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(char **a1, const void **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((24 * v2), *a2, a2[1], (a2[1] - *a2) >> 2);
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
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_2472E213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2472E21B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

_DWORD *CPRTgrowTree(unsigned int a1, unsigned int a2, unsigned int a3, double (*a4)(double *, double *, unsigned int, unsigned int, unsigned int *, double *, unsigned int *, double), uint64_t a5, unsigned int a6, double *a7, double *a8, unsigned int a9)
{
  v17 = malloc_type_malloc(0x40uLL, 0x10800407B512463uLL);
  v17[4] = a6;
  v17[5] = a5;
  v68 = a8;
  v69 = v17;
  v17[7] = a9;
  if (a6)
  {
    v18 = 8 * a6;
    v19 = 0.0;
    do
    {
      v20 = *a8++;
      v19 = v19 + v20;
      v18 -= 8;
    }

    while (v18);
  }

  else
  {
    v19 = 0.0;
  }

  v21 = v17;
  *(v17 + 7) = v19 / a6;
  *v17 = 2;
  v17[8] = 0;
  v17[6] = 0;
  *(v17 + 5) = 0;
  *(v17 + 6) = 0;
  v22 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *(v69 + 1) = v22;
  *v22 = 0;
  *(*(v69 + 1) + 8) = 0;
  if (a3)
  {
    if (v69[4] > a2 && v69[7] < a1)
    {
      v63 = a1;
      v62 = a2;
      *v64 = a3;
      v70 = a6;
      v71 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
      v23 = 8 * a3;
      v24 = malloc_type_malloc(v23, 0x100004000313F17uLL);
      v61 = a3;
      v25 = 4 * a3;
      v26 = malloc_type_malloc(v25, 0x100004052888210uLL);
      v27 = malloc_type_malloc(v25, 0x100004052888210uLL);
      v28 = a4;
      v29 = a5;
      v30 = 0;
      v66 = v27;
      v67 = v26;
      v31 = v26;
      do
      {
        v71[v30 / 8] = v28(a7, v68, v70, v29, v31++, &v24[v30 / 8], v27, *(v69 + 7));
        v30 += 8;
        v27 += 4;
      }

      while (v23 != v30);
      v65 = v24;
      v32 = 0;
      v33 = 0;
      v34 = v71;
      v35 = *v71;
      do
      {
        if (v35 < v71[v32])
        {
          v33 = v32;
          v35 = v71[v32];
        }

        ++v32;
      }

      while (*v64 != v32);
      v36 = v66[v33];
      v69[6] = v36;
      v69[8] = v67[v33];
      *(v69 + 5) = v24[v33];
      *(v69 + 6) = v71[v33];
      if (v36)
      {
        v37 = malloc_type_calloc((v36 * v29), 8uLL, 0x100004000313F17uLL);
        v38 = malloc_type_calloc((v70 - v69[6]) * v29, 8uLL, 0x100004000313F17uLL);
        v39 = malloc_type_calloc(v69[6], 8uLL, 0x100004000313F17uLL);
        v40 = malloc_type_calloc(v70 - v69[6], 8uLL, 0x100004000313F17uLL);
        v41 = v69[4];
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = *(v69 + 5);
          v46 = &a7[(v41 * v69[8])];
          v47 = v69[5];
          do
          {
            if (v46[v42] >= v45)
            {
              if (v47)
              {
                v52 = v41 - v69[6];
                v53 = v42;
                v54 = v43;
                v55 = v47;
                do
                {
                  v38[v54] = a7[v53];
                  v54 += v52;
                  v53 += v41;
                  --v55;
                }

                while (v55);
              }

              v40[v43++] = v68[v42];
            }

            else
            {
              if (v47)
              {
                v48 = v69[6];
                v49 = v42;
                v50 = v44;
                v51 = v47;
                do
                {
                  v37[v50] = a7[v49];
                  v50 += v48;
                  v49 += v41;
                  --v51;
                }

                while (v51);
              }

              v39[v44++] = v68[v42];
            }

            ++v42;
          }

          while (v42 != v41);
        }

        v56 = v40;
        v57 = v69[6];
        if (v57)
        {
          **(v69 + 1) = CPRTgrowTree(v63, v62, v64[0], v28, v29, v57, v37, v39, a9 + 1);
          v58 = v69[6];
        }

        else
        {
          v58 = 0;
        }

        if (v70 != v58)
        {
          *(*(v69 + 1) + 8) = CPRTgrowTree(v63, v62, v61, v28, v29, v70 - v58, v38, v56, a9 + 1);
        }

        free(v37);
        free(v38);
        free(v39);
        free(v56);
        v34 = v71;
        v24 = v65;
      }

      free(v66);
      free(v67);
      free(v24);
      free(v34);
      return v69;
    }
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(v22);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPRTgrowTree", "nSplits should not be zero.");
  }

  return v21;
}

uint64_t CPRTcostTargetSD(double *a1, double *a2, unsigned int a3, uint32_t __upper_bound, unsigned int *a5, double *a6, unsigned int *a7, double a8)
{
  v15 = arc4random_uniform(__upper_bound);
  v16 = &a1[v15 * a3];
  if (a3 > 1)
  {
    v19 = v16 + 1;
    v20 = *v16;
    v21 = 8 * a3 - 8;
    v22 = v21;
    v23 = *v16;
    v24 = v16 + 1;
    v25 = v16;
    v26 = v16 + 1;
    do
    {
      v27 = *v26++;
      v28 = v27;
      if (v27 < v23)
      {
        v23 = v28;
        v25 = v24;
      }

      v24 = v26;
      v22 -= 8;
    }

    while (v22);
    v18 = *v25;
    v29 = v16;
    v30 = v16 + 1;
    do
    {
      v31 = *v30++;
      v32 = v31;
      if (v20 < v31)
      {
        v20 = v32;
        v29 = v19;
      }

      v19 = v30;
      v21 -= 8;
    }

    while (v21);
    v17 = *v29;
  }

  else
  {
    v17 = *v16;
    v18 = *v16;
  }

  v33 = v17 - v18;
  result = arc4random_uniform(0x7FFFFFFFu);
  v35 = v18 + v33 * result / 2147483650.0;
  *a5 = v15;
  *a6 = v35;
  if (a3)
  {
    v36 = 0;
    v37 = 0;
    v38 = a3;
    v39 = 0.0;
    v40 = a3;
    v41 = a2;
    v42 = v16;
    v43 = 0.0;
    do
    {
      v44 = *v42++;
      v45 = v44;
      v46 = *v41++;
      v47 = v45 < v35;
      v48 = v43 + v46;
      v49 = v39 + v46;
      if (v47)
      {
        ++v37;
      }

      else
      {
        ++v36;
      }

      if (v47)
      {
        v43 = v48;
      }

      else
      {
        v39 = v49;
      }

      --v40;
    }

    while (v40);
    v50 = v39 / v36;
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = v43 / v37;
    do
    {
      v55 = *a2++;
      v56 = v55;
      v53 = v53 + (v55 - a8) * (v55 - a8);
      v57 = *v16++;
      v58 = v51 + (v56 - v50) * (v56 - v50);
      v59 = v52 + (v56 - v54) * (v56 - v54);
      if (v57 >= v35)
      {
        v51 = v58;
      }

      else
      {
        v52 = v59;
      }

      --v38;
    }

    while (v38);
  }

  else
  {
    v37 = 0;
  }

  *a7 = v37;
  return result;
}

double *CPRTpredictRegressTree(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
  v9 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  v10 = v9;
  if (a3)
  {
    v11 = 0;
    do
    {
      v12 = a1;
      v13 = a4;
      v14 = v11;
      v15 = v10;
      if (a4)
      {
        do
        {
          *v15 = *(a2 + 8 * v14);
          v15 = (v15 + 8);
          v14 += a3;
          --v13;
        }

        while (v13);
        v12 = a1;
      }

      while (1)
      {
        v16 = v12;
        v17 = *(v12 + 8);
        v12 = *v17;
        if (!*v17 && !v17[1])
        {
LABEL_12:
          v19 = *(v16 + 56);
          goto LABEL_14;
        }

        v18 = *(v16 + 32);
        if (v18 >= a4)
        {
          break;
        }

        if (*(v10 + v18) > *(v16 + 40))
        {
          v12 = v17[1];
        }

        if (!v12)
        {
          goto LABEL_12;
        }
      }

      CPMLLog = CPMLLog::getCPMLLog(v9);
      v9 = CPMLLog::log(CPMLLog, CPML_LOG_ERR, "predictTreeOnePoint", "Incorrect attribute. corrupted tree\n");
      v19 = -1.0;
LABEL_14:
      v8[v11++] = v19;
    }

    while (v11 != a3);
  }

  free(v10);
  return v8;
}

void CPRTdestroyTree(void *a1)
{
  v2 = a1[1];
  if (*v2)
  {
    CPRTdestroyTree(*v2);
    v2 = a1[1];
  }

  if (v2[1])
  {
    CPRTdestroyTree(v2[1]);
    v2 = a1[1];
  }

  free(v2);

  free(a1);
}

pthread_mutex_t *CPRTprintTree(CPMLLog *a1)
{
  CPMLLog = CPMLLog::getCPMLLog(a1);
  v3 = CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "CPRTprintTree", "** Level :%d **\n", *(a1 + 7));
  v4 = CPMLLog::getCPMLLog(v3);
  v5 = CPMLLog::log(v4, CPML_LOG_DEBUG, "CPRTprintTree", "N :%d\n", *(a1 + 4));
  v6 = CPMLLog::getCPMLLog(v5);
  v7 = CPMLLog::log(v6, CPML_LOG_DEBUG, "CPRTprintTree", "M :%d\n", *(a1 + 5));
  v8 = CPMLLog::getCPMLLog(v7);
  v9 = CPMLLog::log(v8, CPML_LOG_DEBUG, "CPRTprintTree", "Mean Target :%f\n", *(a1 + 7));
  v10 = *(a1 + 1);
  if (*v10 || v10[1])
  {
    v11 = CPMLLog::getCPMLLog(v9);
    v12 = CPMLLog::log(v11, CPML_LOG_DEBUG, "CPRTprintTree", "Children :%d\n", *a1);
    v13 = CPMLLog::getCPMLLog(v12);
    v14 = CPMLLog::log(v13, CPML_LOG_DEBUG, "CPRTprintTree", "Split Attribute :%d\n", *(a1 + 8));
    v15 = CPMLLog::getCPMLLog(v14);
    v16 = CPMLLog::log(v15, CPML_LOG_DEBUG, "CPRTprintTree", "Split Threshold :%f\n", *(a1 + 5));
    v17 = CPMLLog::getCPMLLog(v16);
    v9 = CPMLLog::log(v17, CPML_LOG_DEBUG, "CPRTprintTree", "Split Cost :%f\n", *(a1 + 6));
  }

  v18 = CPMLLog::getCPMLLog(v9);
  result = CPMLLog::log(v18, CPML_LOG_DEBUG, "CPRTprintTree", "********\n");
  if (*a1)
  {
    v20 = 0;
    do
    {
      result = *(*(a1 + 1) + 8 * v20);
      if (!result)
      {
        break;
      }

      result = CPRTprintTree(result);
      ++v20;
    }

    while (v20 < *a1);
  }

  return result;
}

void sub_2472E2D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2472E34DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  MEMORY[0x24C19F910](v16, 0x10A1C405A95AE37, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void sub_2472E4208(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  MEMORY[0x24C19F910](v10, 0x10B1C4066637EEELL, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void CPMLOnlineSvm::CPMLOnlineSvm(CPMLOnlineSvm *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_2859279D8;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 1;
  *(v5 + 152) = 2;
  *(v5 + 160) = xmmword_247321F70;
  *(v5 + 176) = 0x186A000000001;
  *(v5 + 184) = xmmword_247321F80;
  *(v5 + 200) = xmmword_247321F90;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 296) = 0;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 344) = 0u;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 392) = 0u;
  *(v5 + 448) = 0;
  *(v5 + 416) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 472) = 0u;
  *(v5 + 488) = 0u;
  *(v5 + 504) = 0u;
  strcpy((v5 + 8), "1.0.0");
  CPMLCDB::getIterator(a2, 0, 0, 0);
}

void sub_2472E4778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void *a15, void **a16, void *__p, uint64_t a18)
{
  std::valarray<double>::~valarray((v18 + 63));
  std::valarray<double>::~valarray((v18 + 61));
  std::valarray<double>::~valarray(a11);
  v20 = v18[54];
  if (v20)
  {
    v18[55] = v20;
    operator delete(v20);
  }

  std::valarray<double>::~valarray((v18 + 52));
  v21 = v18[48];
  if (v21)
  {
    v18[49] = v21;
    operator delete(v21);
  }

  v22 = v18[45];
  if (v22)
  {
    v18[46] = v22;
    operator delete(v22);
  }

  __p = v18 + 42;
  std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v23 = *a12;
  if (*a12)
  {
    v18[40] = v23;
    operator delete(v23);
  }

  __p = v18 + 35;
  std::vector<std::valarray<char>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = a15;
  std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v24 = *a16;
  if (*a16)
  {
    v18[30] = v24;
    operator delete(v24);
  }

  if (v18[17])
  {
    if (*a10)
    {
      MEMORY[0x24C19F8F0](*a10, 0x1000C8000313F17);
    }
  }

  CPModelClose(v18);
  _Unwind_Resume(a1);
}

void std::valarray<double>::resize(uint64_t a1, unint64_t a2, double a3)
{
  v5 = *a1;
  if (v5)
  {
    v6 = *(a1 + 8);
    if (v6 != v5)
    {
      *(a1 + 8) = &v6[(v5 - v6 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v5);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

CPMLLibSVM::Cache *CPMLLibSVM::Cache::Cache(CPMLLibSVM::Cache *this, int a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  v4 = malloc_type_calloc(a2, 0x20uLL, 0x10A004007F91357uLL);
  v5 = *this;
  v6 = (*(this + 1) >> 2) - 8 * (v5 & 0x7FFFFFFFFFFFFFFLL);
  v7 = v6 <= 2 * v5;
  v8 = 2 * v5;
  if (v7)
  {
    v6 = v8;
  }

  *(this + 1) = v6;
  *(this + 2) = v4;
  *(this + 3) = this + 24;
  *(this + 4) = this + 24;
  return this;
}

void CPMLLibSVM::Cache::~Cache(CPMLLibSVM::Cache *this)
{
  v2 = this + 24;
  for (i = *(this + 4); i != v2; i = *(i + 8))
  {
    free(*(i + 16));
  }

  free(*(this + 2));
}

void CPMLLibSVM::Cache::lru_delete(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *(v3 + 8) = v2;
  *v2 = v3;
}

uint64_t CPMLLibSVM::Cache::lru_insert(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  result = a1 + 24;
  *a2 = v3;
  a2[1] = result;
  *(v3 + 8) = a2;
  *a2[1] = a2;
  return result;
}

uint64_t CPMLLibSVM::Cache::get_data(CPMLLibSVM::Cache *this, int a2, float **a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(this + 2) + 32 * a2;
  v8 = *(v7 + 24);
  if (v8)
  {
    v10 = *v7;
    v9 = *(v7 + 8);
    *(v10 + 8) = v9;
    *v9 = v10;
  }

  v11 = (a4 - v8);
  if (a4 <= v8)
  {
    v16 = *(v7 + 16);
  }

  else
  {
    if (*(this + 1) < v11)
    {
      do
      {
        v12 = *(this + 4);
        v14 = *v12;
        v13 = v12[1];
        *(v14 + 8) = v13;
        *v13 = v14;
        free(v12[2]);
        v15 = *(this + 1) + *(v12 + 6);
        *(this + 1) = v15;
        v12[2] = 0;
        *(v12 + 6) = 0;
      }

      while (v15 < v11);
    }

    v16 = malloc_type_realloc(*(v7 + 16), 4 * v4, 0x100004052888210uLL);
    *(v7 + 16) = v16;
    *(this + 1) -= v11;
    v17 = *(v7 + 24);
    *(v7 + 24) = v4;
    v4 = v17;
  }

  v18 = *(this + 3);
  *v7 = v18;
  *(v7 + 8) = this + 24;
  *(v18 + 8) = v7;
  **(v7 + 8) = v7;
  *a3 = v16;
  return v4;
}

void CPMLLibSVM::Cache::swap_index(CPMLLibSVM::Cache *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v4 = *(this + 2);
    v5 = (v4 + 32 * a2);
    if (*(v5 + 6))
    {
      v7 = *v5;
      v6 = v5[1];
      *(v7 + 8) = v6;
      *v6 = v7;
    }

    v8 = (v4 + 32 * a3);
    if (*(v8 + 6))
    {
      v10 = *v8;
      v9 = v8[1];
      *(v10 + 8) = v9;
      *v9 = v10;
    }

    v11 = v5[2];
    v5[2] = v8[2];
    v8[2] = v11;
    v12 = *(this + 2);
    v13 = v12 + 32 * a2;
    v14 = v12 + 32 * a3;
    v15 = *(v13 + 24);
    *(v13 + 24) = *(v14 + 24);
    *(v14 + 24) = v15;
    if (*(v13 + 24))
    {
      v16 = *(this + 3);
      *v13 = v16;
      *(v13 + 8) = this + 24;
      *(v16 + 8) = v13;
      **(v13 + 8) = v13;
    }

    if (v15)
    {
      v17 = *(this + 3);
      *v14 = v17;
      *(v14 + 8) = this + 24;
      *(v17 + 8) = v14;
      **(v14 + 8) = v14;
    }

    if (a2 >= a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = a2;
    }

    if (a2 <= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a2;
    }

    v20 = this + 24;
    v21 = *(this + 4);
    if (v21 != this + 24)
    {
      do
      {
        v22 = *(v21 + 6);
        if (v22 > v18)
        {
          if (v22 <= v19)
          {
            v26 = *v21;
            v25 = *(v21 + 1);
            *(v26 + 8) = v25;
            *v25 = v26;
            free(*(v21 + 2));
            *(this + 1) += *(v21 + 6);
            *(v21 + 2) = 0;
            *(v21 + 6) = 0;
          }

          else
          {
            v23 = *(v21 + 2);
            v24 = *(v23 + 4 * v18);
            *(v23 + 4 * v18) = *(v23 + 4 * v19);
            *(v23 + 4 * v19) = v24;
          }
        }

        v21 = *(v21 + 1);
      }

      while (v21 != v20);
    }
  }
}

void CPMLLibSVM::Kernel::Kernel(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  *a1 = &unk_285926E00;
  v4 = *(a4 + 4);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a4 + 16);
  v5 = CPMLLibSVM::Kernel::kernel_linear;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_12;
      }

      v5 = CPMLLibSVM::Kernel::kernel_poly;
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v5 = CPMLLibSVM::Kernel::kernel_rbf;
        break;
      case 3:
        v5 = CPMLLibSVM::Kernel::kernel_sigmoid;
        break;
      case 4:
        v5 = CPMLLibSVM::Kernel::kernel_precomputed;
        break;
      default:
        goto LABEL_12;
    }
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
LABEL_12:
  operator new[]();
}

double CPMLLibSVM::Kernel::kernel_linear(CPMLLibSVM::Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  v5 = *v4;
  if (*v4 == -1)
  {
    return 0.0;
  }

  v6 = *(v3 + 8 * a3);
  result = 0.0;
  do
  {
    v8 = *v6;
    if (*v6 == -1)
    {
      break;
    }

    if (v5 == v8)
    {
      result = result + v4[1] * v6[1];
      v4 += 2;
      v6 += 2;
    }

    else if (v5 > v8)
    {
      v6 += 2;
    }

    else
    {
      v4 += 2;
    }

    v5 = *v4;
  }

  while (*v4 != -1);
  return result;
}

double CPMLLibSVM::Kernel::kernel_poly(CPMLLibSVM::Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  v5 = *v4;
  if (*v4 == -1)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = *(v3 + 8 * a3);
    v7 = 0.0;
    do
    {
      v8 = *v6;
      if (*v6 == -1)
      {
        break;
      }

      if (v5 == v8)
      {
        v7 = v7 + v4[1] * v6[1];
        v4 += 2;
        v6 += 2;
      }

      else if (v5 > v8)
      {
        v6 += 2;
      }

      else
      {
        v4 += 2;
      }

      v5 = *v4;
    }

    while (*v4 != -1);
  }

  v9 = *(this + 11);
  if (v9 < 1)
  {
    return 1.0;
  }

  v10 = *(this + 7) + *(this + 6) * v7;
  result = 1.0;
  do
  {
    if (v9)
    {
      result = result * v10;
    }

    v10 = v10 * v10;
    v12 = v9 > 1;
    v9 = v9 >> 1;
  }

  while (v12);
  return result;
}

long double CPMLLibSVM::Kernel::kernel_rbf(CPMLLibSVM::Kernel *this, int a2, int a3)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  v5 = *(v3 + 8 * a2);
  v6 = *(v3 + 8 * a3);
  v7 = *(v4 + 8 * a2);
  v8 = *v7;
  if (*v7 == -1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = *(v4 + 8 * a3);
    v10 = 0.0;
    do
    {
      v11 = *v9;
      if (*v9 == -1)
      {
        break;
      }

      if (v8 == v11)
      {
        v10 = v10 + v7[1] * v9[1];
        v7 += 2;
        v9 += 2;
      }

      else if (v8 > v11)
      {
        v9 += 2;
      }

      else
      {
        v7 += 2;
      }

      v8 = *v7;
    }

    while (*v7 != -1);
  }

  return exp(-(*(this + 6) * (v5 + v6 + v10 * -2.0)));
}

long double CPMLLibSVM::Kernel::kernel_sigmoid(CPMLLibSVM::Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  v5 = *v4;
  if (*v4 == -1)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = *(v3 + 8 * a3);
    v7 = 0.0;
    do
    {
      v8 = *v6;
      if (*v6 == -1)
      {
        break;
      }

      if (v5 == v8)
      {
        v7 = v7 + v4[1] * v6[1];
        v4 += 2;
        v6 += 2;
      }

      else if (v5 > v8)
      {
        v6 += 2;
      }

      else
      {
        v4 += 2;
      }

      v5 = *v4;
    }

    while (*v4 != -1);
  }

  return tanh(*(this + 7) + *(this + 6) * v7);
}

double *CPMLLibSVM::Kernel::dot(double *result, double *a2)
{
  v2 = *result;
  v3 = 0.0;
  while (v2 != -1)
  {
    v4 = *a2;
    if (*a2 == -1)
    {
      break;
    }

    if (v2 == v4)
    {
      v3 = v3 + result[1] * a2[1];
      result += 2;
      a2 += 2;
    }

    else if (v2 > v4)
    {
      a2 += 2;
    }

    else
    {
      result += 2;
    }

    v2 = *result;
  }

  return result;
}

void CPMLLibSVM::Kernel::~Kernel(CPMLLibSVM::Kernel *this)
{
  *this = &unk_285926E00;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x24C19F8F0](v2, 0x60C8044C4A2DFLL);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x24C19F8F0](v3, 0x1000C8000313F17);
  }
}

long double CPMLLibSVM::Kernel::k_function(double *a1, double *a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  result = 0.0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = *a1;
      v13 = 0.0;
      while (v12 != -1)
      {
        v14 = *a2;
        if (*a2 == -1)
        {
          break;
        }

        if (v12 == v14)
        {
          v13 = v13 + a1[1] * a2[1];
          a1 += 2;
          a2 += 2;
        }

        else if (v12 > v14)
        {
          a2 += 2;
        }

        else
        {
          a1 += 2;
        }

        v12 = *a1;
      }

      return tanh(*(a3 + 24) + *(a3 + 16) * v13);
    }

    else if (v3 == 4)
    {
      return a1[2 * a2[1] + 1];
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      while (1)
      {
        v5 = *a1;
        if (*a1 == -1)
        {
          break;
        }

        v6 = *a2;
        if (*a2 == -1)
        {
          break;
        }

        if (v5 == v6)
        {
          result = result + a1[1] * a2[1];
          a1 += 2;
          a2 += 2;
        }

        else if (v5 > v6)
        {
          a2 += 2;
        }

        else
        {
          a1 += 2;
        }
      }

      v9 = *(a3 + 8);
      if (v9 < 1)
      {
        return 1.0;
      }

      else
      {
        v10 = *(a3 + 24) + *(a3 + 16) * result;
        result = 1.0;
        do
        {
          if (v9)
          {
            result = result * v10;
          }

          v10 = v10 * v10;
          v11 = v9 >= 2;
          v9 = v9 >> 1;
        }

        while (v11);
      }
    }
  }

  else
  {
    while (1)
    {
      v8 = *a1;
      if (*a1 == -1)
      {
        break;
      }

      v7 = *a2;
      if (*a2 == -1)
      {
        break;
      }

      if (v8 == v7)
      {
        result = result + a1[1] * a2[1];
        a1 += 2;
        a2 += 2;
      }

      else if (v8 > v7)
      {
        a2 += 2;
      }

      else
      {
        a1 += 2;
      }
    }
  }

  return result;
}

void CPMLLibSVM::Kernel::k_function_rbf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t a27, unint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31, unint64_t a32)
{
  v32 = *(a2 + 108);
  v33 = v32;
  if (libsvm_cpu_count < v32)
  {
    v32 = libsvm_cpu_count;
  }

  v34 = v32;
  a29 = 0;
  a30 = &a29;
  a31 = 0x2000000000;
  a32 = v33 / v32;
  a25 = 0;
  a26 = &a25;
  a27 = 0x2000000000;
  a28 = v33 % v32;
  var10[0] = MEMORY[0x277D85DD0];
  var10[1] = 0x40000000;
  var10[2] = ___ZN10CPMLLibSVM6Kernel14k_function_rbfEPK8svm_nodePK9svm_modelPd_block_invoke;
  var10[3] = &unk_278E9ECF0;
  if (v32 == 1)
  {
    ___ZN10CPMLLibSVM6Kernel14k_function_rbfEPK8svm_nodePK9svm_modelPd_block_invoke(var10, 0);
  }

  else
  {
    v35 = qos_class_self();
    global_queue = dispatch_get_global_queue(v35, 0);
    dispatch_apply(v34, global_queue, var10);
  }

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
}

void sub_2472E5488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN10CPMLLibSVM6Kernel14k_function_rbfEPK8svm_nodePK9svm_modelPd_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = a2 - v3;
  if (a2 < v3)
  {
    v4 = 0;
  }

  v5 = (v2 + 1) * a2 - v4;
  if (v3 <= a2)
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = v2 + 1;
  }

  v7 = v6 + v5;
  if (v5 + 8 > (v6 + v5))
  {
    v8 = (v2 + 1) * a2 - v4;
    goto LABEL_30;
  }

  v9 = (*(a1 + 48) + 8 * v5);
  v10 = 0uLL;
  v11 = vdupq_n_s64(0x7FF0000000000000uLL);
  v12 = vdupq_n_s64(0xC086232BDD7ABCD4);
  v13 = vdupq_n_s64(0x40671547652B82FDuLL);
  v14 = vdupq_n_s64(0xBF762E4000000000);
  v15 = vdupq_n_s64(0xBE47F7D1CF79ABCALL);
  v16 = vdupq_n_s64(0x3F8111116E99AC77uLL);
  v17 = vdupq_n_s64(0x3FA55555CA407CCBuLL);
  v18 = vdupq_n_s64(0x3FC55555555553F0uLL);
  v19 = vdupq_n_s64(0x3FDFFFFFFFFFFE1FuLL);
  v20 = vdupq_n_s64(0x7FuLL);
  v21 = vdupq_n_s64(0xFFF0000000000000);
  __asm { FMOV            V20.2D, #1.0 }

  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  do
  {
    v30 = 0;
    v31 = *(a1 + 56);
    v32 = *(a1 + 128);
    v33 = *v32;
    v8 = v5 + 8;
    v34 = v5;
    do
    {
      v35 = *(v31 + 8 * v34);
      v36 = 0.0;
      if (v33 != -1)
      {
        v37 = v33;
        v38 = v32;
        while (1)
        {
          v39 = *v35;
          if (*v35 == -1)
          {
            goto LABEL_22;
          }

          if (v37 == v39)
          {
            v40 = v38[1] - v35[1];
            v36 = v36 + v40 * v40;
            v38 += 2;
          }

          else
          {
            if (v37 <= v39)
            {
              v36 = v36 + v38[1] * v38[1];
              v38 += 2;
              goto LABEL_19;
            }

            v36 = v36 + v35[1] * v35[1];
          }

          v35 += 2;
LABEL_19:
          v37 = *v38;
          if (*v38 == -1)
          {
            goto LABEL_25;
          }
        }
      }

      v38 = v32;
LABEL_22:
      if (*v38 != -1)
      {
        v41 = v38 + 2;
        do
        {
          v36 = v36 + *(v41 - 1) * *(v41 - 1);
          v42 = *v41;
          v41 += 2;
        }

        while (v42 != -1);
      }

LABEL_25:
      if (*v35 != -1)
      {
        v43 = v35 + 2;
        do
        {
          v36 = v36 + *(v43 - 1) * *(v43 - 1);
          v44 = *v43;
          v43 += 2;
        }

        while (v44 != -1);
      }

      v90 = v10;
      v91 = v27;
      v92 = v28;
      v93 = v29;
      v90.f64[v30 & 7] = v36;
      v28 = v92;
      v29 = v93;
      ++v30;
      ++v34;
      v10 = v90;
      v27 = v91;
    }

    while (v30 != 8);
    v45 = vmulq_f64(v90, *(a1 + 64));
    v46 = vmulq_f64(v91, *(a1 + 80));
    v47 = vmulq_f64(v92, *(a1 + 96));
    v48 = vmulq_f64(v93, *(a1 + 112));
    v49 = vbicq_s8(v48, vceqzq_s64(vandq_s8(v48, v11)));
    v50 = vbicq_s8(v47, vceqzq_s64(vandq_s8(v47, v11)));
    v51 = vmaxq_f64(vbicq_s8(v45, vceqzq_s64(vandq_s8(v45, v11))), v12);
    v52 = vmaxq_f64(vbicq_s8(v46, vceqzq_s64(vandq_s8(v46, v11))), v12);
    v53 = vmaxq_f64(v50, v12);
    v54 = vmaxq_f64(v49, v12);
    v55 = vrndmq_f64(vmulq_f64(v51, v13));
    v56 = vrndmq_f64(vmulq_f64(v52, v13));
    v57 = vrndmq_f64(vmulq_f64(v53, v13));
    v58 = vrndmq_f64(vmulq_f64(v54, v13));
    v59 = vmlaq_f64(vmlaq_f64(v51, v14, v55), v15, v55);
    v60 = vmlaq_f64(vmlaq_f64(v52, v14, v56), v15, v56);
    v61 = vmlaq_f64(vmlaq_f64(v53, v14, v57), v15, v57);
    v62 = vmlaq_f64(vmlaq_f64(v54, v14, v58), v15, v58);
    v63 = vcvtq_s64_f64(v55);
    v64 = vcvtq_s64_f64(v56);
    v65 = vcvtq_s64_f64(v57);
    v66 = vcvtq_s64_f64(v58);
    v67 = vandq_s8(v66, v20);
    v68 = vandq_s8(v65, v20);
    v69 = vandq_s8(v64, v20);
    v70 = vandq_s8(v63, v20);
    *&v67.f64[0] = _ZZL5vexp8Dv8_dE9exp2table[*&v67.f64[0]];
    *&v67.f64[1] = _ZZL5vexp8Dv8_dE9exp2table[*&v67.f64[1]];
    *&v71.f64[0] = _ZZL5vexp8Dv8_dE9exp2table[v68.i64[0]];
    *&v71.f64[1] = _ZZL5vexp8Dv8_dE9exp2table[v68.i64[1]];
    *&v72.f64[0] = _ZZL5vexp8Dv8_dE9exp2table[v69.i64[0]];
    *&v72.f64[1] = _ZZL5vexp8Dv8_dE9exp2table[v69.i64[1]];
    *&v73.f64[0] = _ZZL5vexp8Dv8_dE9exp2table[v70.i64[0]];
    *&v73.f64[1] = _ZZL5vexp8Dv8_dE9exp2table[v70.i64[1]];
    *v9 = vmulq_f64(vmlaq_f64(v73, v73, vmulq_f64(v59, vmlaq_f64(_Q20, vmlaq_f64(v19, vmlaq_f64(v18, vmlaq_f64(v17, v16, v59), v59), v59), v59))), vaddq_s64(vandq_s8(vshlq_n_s64(v63, 0x2DuLL), v21), _Q20));
    v9[1] = vmulq_f64(vmlaq_f64(v72, v72, vmulq_f64(v60, vmlaq_f64(_Q20, vmlaq_f64(v19, vmlaq_f64(v18, vmlaq_f64(v17, v16, v60), v60), v60), v60))), vaddq_s64(vandq_s8(vshlq_n_s64(v64, 0x2DuLL), v21), _Q20));
    v9[2] = vmulq_f64(vmlaq_f64(v71, v71, vmulq_f64(v61, vmlaq_f64(_Q20, vmlaq_f64(v19, vmlaq_f64(v18, vmlaq_f64(v17, v16, v61), v61), v61), v61))), vaddq_s64(vandq_s8(vshlq_n_s64(v65, 0x2DuLL), v21), _Q20));
    v9[3] = vmulq_f64(vmlaq_f64(v67, v67, vmulq_f64(v62, vmlaq_f64(_Q20, vmlaq_f64(v19, vmlaq_f64(v18, vmlaq_f64(v17, v16, v62), v62), v62), v62))), vaddq_s64(vandq_s8(vshlq_n_s64(v66, 0x2DuLL), v21), _Q20));
    v9 += 4;
    v74 = v5 + 16;
    v5 += 8;
  }

  while (v74 <= v7);
LABEL_30:
  if (v8 < v7)
  {
    v75 = *(a1 + 128);
    v76 = *(a1 + 136);
    v77 = *v75;
    v79 = *(a1 + 48);
    v78 = *(a1 + 56);
    while (1)
    {
      v80 = *(v78 + 8 * v8);
      v81 = 0.0;
      if (v77 != -1)
      {
        break;
      }

      v83 = v75;
LABEL_44:
      if (*v83 != -1)
      {
        v86 = v83 + 2;
        do
        {
          v81 = v81 + *(v86 - 1) * *(v86 - 1);
          v87 = *v86;
          v86 += 2;
        }

        while (v87 != -1);
      }

LABEL_47:
      if (*v80 != -1)
      {
        v88 = v80 + 2;
        do
        {
          v81 = v81 + *(v88 - 1) * *(v88 - 1);
          v89 = *v88;
          v88 += 2;
        }

        while (v89 != -1);
      }

      *(v79 + 8 * v8++) = exp(-(*(v76 + 16) * v81));
      if (v8 >= v7)
      {
        return;
      }
    }

    v82 = v77;
    v83 = v75;
    while (2)
    {
      v84 = *v80;
      if (*v80 == -1)
      {
        goto LABEL_44;
      }

      if (v82 == v84)
      {
        v85 = v83[1] - v80[1];
        v81 = v81 + v85 * v85;
        v83 += 2;
        goto LABEL_39;
      }

      if (v82 <= v84)
      {
        v81 = v81 + v83[1] * v83[1];
        v83 += 2;
      }

      else
      {
        v81 = v81 + v80[1] * v80[1];
LABEL_39:
        v80 += 2;
      }

      v82 = *v83;
      if (*v83 == -1)
      {
        goto LABEL_47;
      }

      continue;
    }
  }
}

double CPMLLibSVM::Solver::swap_index(CPMLLibSVM::Solver *this, int a2, int a3)
{
  (*(**(this + 6) + 16))(*(this + 6));
  v6 = *(this + 2);
  v7 = *(v6 + a2);
  *(v6 + a2) = *(v6 + a3);
  *(v6 + a3) = v7;
  v8 = *(this + 3);
  v9 = *(this + 4);
  v10 = *(v8 + 8 * a2);
  *(v8 + 8 * a2) = *(v8 + 8 * a3);
  *(v8 + 8 * a3) = v10;
  LOBYTE(v8) = *(v9 + a2);
  *(v9 + a2) = *(v9 + a3);
  *(v9 + a3) = v8;
  v11 = *(this + 5);
  v12 = *(v11 + 8 * a2);
  *(v11 + 8 * a2) = *(v11 + 8 * a3);
  *(v11 + 8 * a3) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  v15 = *(v13 + 8 * a2);
  *(v13 + 8 * a2) = *(v13 + 8 * a3);
  *(v13 + 8 * a3) = v15;
  LODWORD(v13) = *(v14 + 4 * a2);
  *(v14 + 4 * a2) = *(v14 + 4 * a3);
  *(v14 + 4 * a3) = v13;
  v16 = *(this + 13);
  result = *(v16 + 8 * a2);
  *(v16 + 8 * a2) = *(v16 + 8 * a3);
  *(v16 + 8 * a3) = result;
  return result;
}

uint64_t CPMLLibSVM::Solver::reconstruct_gradient(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 112);
  if (v1 != v2)
  {
    v3 = this;
    if (v1 < v2)
    {
      v4 = (*(this + 104) + 8 * v1);
      v5 = (*(this + 88) + 8 * v1);
      v6 = (*(this + 24) + 8 * v1);
      v7 = v2 - v1;
      do
      {
        v8 = *v4++;
        v9 = v8;
        v10 = *v5++;
        *v6++ = v9 + v10;
        --v7;
      }

      while (v7);
    }

    if (v1 < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *(this + 32);
      v13 = v1;
      do
      {
        v14 = *v12++;
        if (v14 == 2)
        {
          ++v11;
        }

        --v13;
      }

      while (v13);
    }

    if (v1 > 2 * v11)
    {
      this = info("\nWARNING: using -h 0 may be faster\n");
      v2 = *(v3 + 112);
      v1 = *(v3 + 8);
    }

    if (v2 * v11 <= 2 * v1 * (v2 - v1))
    {
      if (v1 >= 1)
      {
        v19 = 0;
        do
        {
          if (*(*(v3 + 32) + v19) == 2)
          {
            this = (***(v3 + 48))(*(v3 + 48), v19);
            LODWORD(v1) = *(v3 + 8);
            v20 = *(v3 + 112);
            if (v1 < v20)
            {
              v21 = *(*(v3 + 40) + 8 * v19);
              v22 = (this + 4 * v1);
              v23 = (*(v3 + 24) + 8 * v1);
              v24 = v20 - v1;
              do
              {
                v25 = *v22++;
                *v23 = *v23 + v21 * v25;
                ++v23;
                --v24;
              }

              while (v24);
            }
          }

          ++v19;
        }

        while (v19 < v1);
      }
    }

    else if (v2 > v1)
    {
      v15 = v1;
      v16 = v1;
      do
      {
        this = (***(v3 + 48))(*(v3 + 48), v15, v16);
        v16 = *(v3 + 8);
        if (v16 >= 1)
        {
          v17 = 0;
          v18 = *(v3 + 32);
          do
          {
            if (*(v18 + v17) == 2)
            {
              *(*(v3 + 24) + 8 * v15) = *(*(v3 + 24) + 8 * v15) + *(*(v3 + 40) + 8 * v17) * *(this + 4 * v17);
            }

            ++v17;
          }

          while (v16 != v17);
        }

        ++v15;
      }

      while (v15 < *(v3 + 112));
    }
  }

  return this;
}

void CPMLLibSVM::Solver::Solve(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, void *a6, uint64_t a7, int a8, double a9, double a10, double a11)
{
  *(a1 + 112) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = (*(*a3 + 8))(a3);
  operator new[]();
}

uint64_t CPMLLibSVM::Solver::select_working_set(CPMLLibSVM::Solver *this, int *a2, int *a3)
{
  v6 = *(this + 2);
  if (v6 < 1)
  {
    LODWORD(v8) = -1;
    v9 = -INFINITY;
    v12 = -1;
    v13 = -INFINITY;
    goto LABEL_35;
  }

  v7 = 0;
  v8 = 0xFFFFFFFFLL;
  v9 = -INFINITY;
  do
  {
    if (*(*(this + 2) + v7) == 1)
    {
      if (*(*(this + 4) + v7) != 1)
      {
        v10 = -*(*(this + 3) + 8 * v7);
        if (v9 <= v10)
        {
          goto LABEL_9;
        }
      }
    }

    else if (*(*(this + 4) + v7))
    {
      v10 = *(*(this + 3) + 8 * v7);
      if (v10 >= v9)
      {
LABEL_9:
        v8 = v7;
        v9 = v10;
      }
    }

    ++v7;
  }

  while (v6 != v7);
  if (v8 == -1)
  {
    v11 = 0;
    LODWORD(v8) = -1;
  }

  else
  {
    v11 = (***(this + 6))(*(this + 6), v8);
    LODWORD(v6) = *(this + 2);
  }

  if (v6 >= 1)
  {
    v14 = 0;
    v15 = *(this + 2);
    v12 = -1;
    v16 = INFINITY;
    v13 = -INFINITY;
    while (1)
    {
      if (*(v15 + v14) == 1)
      {
        if (!*(*(this + 4) + v14))
        {
          goto LABEL_32;
        }

        v17 = *(this + 3);
        v18 = *(v17 + 8 * v14);
        v19 = v9 + v18;
        if (v18 >= v13)
        {
          v13 = *(v17 + 8 * v14);
        }

        if (v19 <= 0.0)
        {
          goto LABEL_32;
        }

        v20 = *(*(this + 7) + 8 * v8) + *(*(this + 7) + 8 * v14);
        v21 = *(v11 + 4 * v14);
        v22 = *(v15 + v8) * -2.0;
      }

      else
      {
        if (*(*(this + 4) + v14) == 1)
        {
          goto LABEL_32;
        }

        v23 = *(*(this + 3) + 8 * v14);
        v19 = v9 - v23;
        v24 = -v23;
        if (v13 <= v24)
        {
          v13 = v24;
        }

        if (v19 <= 0.0)
        {
          goto LABEL_32;
        }

        v20 = *(*(this + 7) + 8 * v8) + *(*(this + 7) + 8 * v14);
        v22 = *(v15 + v8) + *(v15 + v8);
        v21 = *(v11 + 4 * v14);
      }

      v25 = v20 + v22 * v21;
      v26 = -(v19 * v19);
      if (v25 <= 0.0)
      {
        v25 = 1.0e-12;
      }

      v27 = v26 / v25;
      if (v27 <= v16)
      {
        v16 = v27;
        v12 = v14;
      }

LABEL_32:
      if (v6 == ++v14)
      {
        goto LABEL_35;
      }
    }
  }

  v12 = -1;
  v13 = -INFINITY;
LABEL_35:
  if (v9 + v13 < *(this + 8))
  {
    return 1;
  }

  result = 0;
  *a2 = v8;
  *a3 = v12;
  return result;
}

BOOL CPMLLibSVM::Solver::be_shrunk(CPMLLibSVM::Solver *this, int a2, double a3, double a4)
{
  if (*(*(this + 4) + a2))
  {
    if (*(*(this + 4) + a2) != 1)
    {
      return 0;
    }

    v4 = -*(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) == 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) != 1)
    {
LABEL_4:
      v5 = v4 <= a3;
      return !v5;
    }
  }

  v5 = v4 <= a4;
  return !v5;
}

void CPMLLibSVM::Solver::do_shrinking(CPMLLibSVM::Solver *this)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    v8 = -INFINITY;
    v6 = -INFINITY;
  }

  else
  {
    v4 = *(this + 3);
    v3 = *(this + 4);
    v5 = *(this + 2);
    v6 = -INFINITY;
    v7 = *(this + 2);
    v8 = -INFINITY;
    do
    {
      v10 = *v5++;
      v9 = v10;
      v12 = *v3++;
      v11 = v12;
      v13 = *v4;
      if (v9 == 1)
      {
        if (v11 == 1)
        {
          goto LABEL_8;
        }

        if (v8 <= -v13)
        {
          v8 = -v13;
        }

        if (v11)
        {
LABEL_8:
          if (v13 >= v6)
          {
            v6 = *v4;
          }
        }
      }

      else
      {
        if (v11 == 1)
        {
          goto LABEL_15;
        }

        if (v6 <= -v13)
        {
          v6 = -v13;
        }

        if (v11)
        {
LABEL_15:
          if (v13 >= v8)
          {
            v8 = *v4;
          }
        }
      }

      ++v4;
      --v7;
    }

    while (v7);
  }

  if ((*(this + 116) & 1) == 0 && v8 + v6 <= *(this + 8) * 10.0)
  {
    *(this + 116) = 1;
    CPMLLibSVM::Solver::reconstruct_gradient(this);
    *(this + 2) = *(this + 28);
    info("*");
    v2 = *(this + 2);
  }

  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      if (CPMLLibSVM::Solver::be_shrunk(this, i, v8, v6))
      {
        while (1)
        {
          *(this + 2) = --v2;
          if (v2 <= i)
          {
            break;
          }

          if (!CPMLLibSVM::Solver::be_shrunk(this, v2, v8, v6))
          {
            CPMLLibSVM::Solver::swap_index(this, i, v2);
            v2 = *(this + 2);
            break;
          }
        }
      }
    }
  }
}

double CPMLLibSVM::Solver::calculate_rho(CPMLLibSVM::Solver *this)
{
  v1 = *(this + 2);
  if (v1 < 1)
  {
    v7 = INFINITY;
    v8 = -INFINITY;
  }

  else
  {
    v2 = 0;
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(this + 4);
    v6 = 0.0;
    v7 = INFINITY;
    v8 = -INFINITY;
    do
    {
      v10 = *v3++;
      v9 = v10;
      v11 = v10;
      v12 = *v4++;
      v13 = v12 * v11;
      LODWORD(v12) = *v5++;
      v14 = LODWORD(v12);
      if (v8 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      if (v7 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v7;
      }

      if (v9 == 1)
      {
        v15 = v8;
      }

      else
      {
        v16 = v7;
      }

      v17 = v6 + v13;
      if (v8 <= v13)
      {
        v18 = v13;
      }

      else
      {
        v18 = v8;
      }

      if (v7 < v13)
      {
        v13 = v7;
      }

      if (v9 == 255)
      {
        v18 = v8;
      }

      else
      {
        v13 = v7;
      }

      if (v14 == 1)
      {
        v19 = v2;
      }

      else
      {
        v19 = v2 + 1;
      }

      if (v14 == 1)
      {
        v7 = v13;
        v8 = v18;
        v20 = v6;
      }

      else
      {
        v20 = v17;
      }

      if (v14)
      {
        v2 = v19;
      }

      else
      {
        v7 = v16;
        v8 = v15;
      }

      if (v14)
      {
        v6 = v20;
      }

      --v1;
    }

    while (v1);
    if (v2 > 0)
    {
      return v6 / v2;
    }
  }

  return (v7 + v8) * 0.5;
}

uint64_t CPMLLibSVM::Solver_NU::select_working_set(CPMLLibSVM::Solver_NU *this, int *a2, int *a3)
{
  v6 = *(this + 2);
  if (v6 < 1)
  {
    LODWORD(v8) = -1;
    v9 = -INFINITY;
    v10 = -INFINITY;
    LODWORD(v11) = -1;
    v13 = -1;
    v14 = -INFINITY;
    v15 = -INFINITY;
  }

  else
  {
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    v9 = -INFINITY;
    v10 = -INFINITY;
    v11 = 0xFFFFFFFFLL;
    do
    {
      if (*(*(this + 2) + v7) == 1)
      {
        if (*(*(this + 4) + v7) != 1 && v9 <= -*(*(this + 3) + 8 * v7))
        {
          v8 = v7;
          v9 = -*(*(this + 3) + 8 * v7);
        }
      }

      else if (*(*(this + 4) + v7) && *(*(this + 3) + 8 * v7) >= v10)
      {
        v11 = v7;
        v10 = *(*(this + 3) + 8 * v7);
      }

      ++v7;
    }

    while (v6 != v7);
    if (v8 == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = (***(this + 6))(*(this + 6), v8);
      v6 = *(this + 2);
    }

    if (v11 == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = (***(this + 6))(*(this + 6), v11, v6);
      LODWORD(v6) = *(this + 2);
    }

    if (v6 >= 1)
    {
      v17 = 0;
      v13 = -1;
      v18 = INFINITY;
      v15 = -INFINITY;
      v14 = -INFINITY;
      while (1)
      {
        if (*(*(this + 2) + v17) == 1)
        {
          if (!*(*(this + 4) + v17))
          {
            goto LABEL_34;
          }

          v19 = *(this + 3);
          v20 = *(v19 + 8 * v17);
          v21 = v9 + v20;
          if (v20 >= v15)
          {
            v15 = *(v19 + 8 * v17);
          }

          v22 = v8;
          v23 = v12;
          if (v21 <= 0.0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (*(*(this + 4) + v17) == 1)
          {
            goto LABEL_34;
          }

          v24 = *(*(this + 3) + 8 * v17);
          v21 = v10 - v24;
          v25 = -v24;
          if (v14 <= v25)
          {
            v14 = v25;
          }

          v22 = v11;
          v23 = v16;
          if (v21 <= 0.0)
          {
            goto LABEL_34;
          }
        }

        v26 = *(*(this + 7) + 8 * v22) + *(*(this + 7) + 8 * v17) - (*(v23 + 4 * v17) + *(v23 + 4 * v17));
        v27 = -(v21 * v21);
        if (v26 <= 0.0)
        {
          v26 = 1.0e-12;
        }

        v28 = v27 / v26;
        if (v28 <= v18)
        {
          v13 = v17;
          v18 = v28;
        }

LABEL_34:
        if (v6 == ++v17)
        {
          goto LABEL_37;
        }
      }
    }

    v13 = -1;
    v14 = -INFINITY;
    v15 = -INFINITY;
  }

LABEL_37:
  v29 = v9 + v15;
  v30 = v10 + v14;
  if (v29 > v30)
  {
    v30 = v29;
  }

  if (v30 < *(this + 8))
  {
    return 1;
  }

  result = 0;
  if (*(*(this + 2) + v13) == 1)
  {
    v32 = v8;
  }

  else
  {
    v32 = v11;
  }

  *a2 = v32;
  *a3 = v13;
  return result;
}

BOOL CPMLLibSVM::Solver_NU::be_shrunk(CPMLLibSVM::Solver_NU *this, int a2, double a3, double a4, double a5, double a6)
{
  if (*(*(this + 4) + a2))
  {
    if (*(*(this + 4) + a2) != 1)
    {
      return 0;
    }

    v6 = -*(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) == 1)
    {
      v7 = v6 <= a3;
    }

    else
    {
      v7 = v6 <= a6;
    }
  }

  else
  {
    v8 = *(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) == 1)
    {
      v7 = v8 <= a4;
    }

    else
    {
      v7 = v8 <= a5;
    }
  }

  return !v7;
}

void CPMLLibSVM::Solver_NU::do_shrinking(CPMLLibSVM::Solver_NU *this)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    v7 = -INFINITY;
    v6 = -INFINITY;
    v5 = -INFINITY;
    v4 = -INFINITY;
  }

  else
  {
    v3 = 0;
    v4 = -INFINITY;
    v5 = -INFINITY;
    v6 = -INFINITY;
    v7 = -INFINITY;
    do
    {
      v8 = *(*(this + 2) + v3);
      if (*(*(this + 4) + v3) == 1)
      {
        goto LABEL_10;
      }

      v9 = -*(*(this + 3) + 8 * v3);
      if (v8 == 1)
      {
        if (v7 < v9)
        {
          v7 = -*(*(this + 3) + 8 * v3);
        }
      }

      else if (v4 < v9)
      {
        v4 = -*(*(this + 3) + 8 * v3);
      }

      if (*(*(this + 4) + v3))
      {
LABEL_10:
        v10 = *(*(this + 3) + 8 * v3);
        if (v8 == 1)
        {
          if (v10 > v6)
          {
            v6 = *(*(this + 3) + 8 * v3);
          }
        }

        else if (v10 > v5)
        {
          v5 = *(*(this + 3) + 8 * v3);
        }
      }

      ++v3;
    }

    while (v2 != v3);
  }

  if ((*(this + 116) & 1) == 0)
  {
    v11 = v7 + v6;
    if (v7 + v6 <= v5 + v4)
    {
      v11 = v5 + v4;
    }

    if (v11 <= *(this + 8) * 10.0)
    {
      *(this + 116) = 1;
      CPMLLibSVM::Solver::reconstruct_gradient(this);
      LODWORD(v2) = *(this + 28);
      *(this + 2) = v2;
    }
  }

  if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      if (CPMLLibSVM::Solver_NU::be_shrunk(this, v12, v7, v6, v5, v4))
      {
        while (1)
        {
          LODWORD(v2) = v2 - 1;
          *(this + 2) = v2;
          if (v2 <= v12)
          {
            break;
          }

          if (!CPMLLibSVM::Solver_NU::be_shrunk(this, v2, v7, v6, v5, v4))
          {
            CPMLLibSVM::Solver::swap_index(this, v12, v2);
            LODWORD(v2) = *(this + 2);
            break;
          }
        }
      }

      ++v12;
    }

    while (v12 < v2);
  }
}

double CPMLLibSVM::Solver_NU::calculate_rho(CPMLLibSVM::Solver_NU *this)
{
  v1 = *(this + 2);
  if (v1 < 1)
  {
    v3 = 0;
    v5 = 0.0;
    v6 = INFINITY;
    v7 = -INFINITY;
    v9 = -INFINITY;
    v10 = INFINITY;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    v6 = INFINITY;
    v7 = -INFINITY;
    v8 = 0.0;
    v9 = -INFINITY;
    v10 = INFINITY;
    do
    {
      v11 = *(*(this + 4) + v2);
      if (*(*(this + 2) + v2) == 1)
      {
        if (*(*(this + 4) + v2))
        {
          if (v11 == 1)
          {
            if (v9 <= *(*(this + 3) + 8 * v2))
            {
              v9 = *(*(this + 3) + 8 * v2);
            }
          }

          else
          {
            ++v4;
            v8 = v8 + *(*(this + 3) + 8 * v2);
          }
        }

        else if (v10 >= *(*(this + 3) + 8 * v2))
        {
          v10 = *(*(this + 3) + 8 * v2);
        }
      }

      else if (*(*(this + 4) + v2))
      {
        if (v11 == 1)
        {
          if (v7 <= *(*(this + 3) + 8 * v2))
          {
            v7 = *(*(this + 3) + 8 * v2);
          }
        }

        else
        {
          ++v3;
          v5 = v5 + *(*(this + 3) + 8 * v2);
        }
      }

      else if (v6 >= *(*(this + 3) + 8 * v2))
      {
        v6 = *(*(this + 3) + 8 * v2);
      }

      ++v2;
    }

    while (v1 != v2);
    if (v4 > 0)
    {
      v12 = v8 / v4;
      goto LABEL_27;
    }
  }

  v12 = (v10 + v9) * 0.5;
LABEL_27:
  if (v3 < 1)
  {
    v13 = (v6 + v7) * 0.5;
  }

  else
  {
    v13 = v5 / v3;
  }

  *(*(this + 15) + 32) = (v12 + v13) * 0.5;
  return (v12 - v13) * 0.5;
}

char *svm_train(int *a1, __int128 *a2)
{
  v4 = malloc_type_malloc(0xB8uLL, 0x109004003BC950CuLL);
  v5 = v4;
  v6 = *a2;
  v7 = a2[2];
  *(v4 + 1) = a2[1];
  *(v4 + 2) = v7;
  *v4 = v6;
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  *(v4 + 12) = *(a2 + 12);
  *(v4 + 4) = v9;
  *(v4 + 5) = v10;
  *(v4 + 3) = v8;
  *(v4 + 44) = 0;
  if ((*a2 - 2) <= 2)
  {
    v11 = v4;
    *(v4 + 17) = 0;
    v12 = (v4 + 136);
    *(v4 + 26) = 2;
    *(v4 + 18) = 0;
    *(v4 + 20) = 0;
    *(v4 + 21) = 0;
    *(v4 + 15) = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    if (*(a2 + 25) && (*a2 - 3) <= 1)
    {
      *v12 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      v13 = malloc_type_malloc(8 * *a1, 0x100004000313F17uLL);
      v311 = *(a2 + 12);
      v14 = a2[4];
      v310 = a2[5];
      v15 = a2[1];
      v305 = *a2;
      v306 = v15;
      v16 = a2[2];
      v308 = a2[3];
      *v309 = v14;
      v307 = v16;
      HIDWORD(v311) = 0;
      svm_cross_validation(a1, &v305, 5, v13);
      v17 = *a1;
      if (v17 < 1)
      {
        v24 = 0;
        v26 = 0.0;
      }

      else
      {
        v18 = *(a1 + 1);
        v19 = 0.0;
        v20 = *a1;
        v21 = v13;
        do
        {
          v22 = *v18++;
          v23 = *v21;
          *v21 = v22 - *v21;
          ++v21;
          v19 = v19 + vabdd_f64(v22, v23);
          --v20;
        }

        while (v20);
        v24 = 0;
        v25 = sqrt(v19 / v17 * (v19 / v17 + v19 / v17)) * 5.0;
        v26 = 0.0;
        v27 = v17;
        v28 = v13;
        do
        {
          v29 = *v28++;
          v30 = fabs(v29);
          if (v30 > v25)
          {
            ++v24;
          }

          else
          {
            v26 = v26 + v30;
          }

          --v27;
        }

        while (v27);
      }

      v249 = v26 / (v17 - v24);
      info("Prob. model for test data: target value = predicted value + z,\nz: Laplace distribution e^(-|z|/sigma)/(2sigma),sigma= %g\n", v249);
      free(v13);
      **v12 = v249;
    }

    v250 = svm_train_one(a1, a2, 0.0, 0.0);
    v252 = v251;
    v253 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    *(v11 + 16) = v253;
    *v253 = v252;
    v254 = *a1;
    if (v254 < 1)
    {
      v255 = 0;
    }

    else
    {
      v255 = 0;
      v256 = v250;
      do
      {
        v257 = *v256++;
        v258 = v257 < 0.0;
        if (v257 > 0.0)
        {
          v258 = 1;
        }

        v255 += v258;
        --v254;
      }

      while (v254);
    }

    *(v11 + 27) = v255;
    *(v11 + 14) = malloc_type_malloc(8 * v255, 0x2004093837F09uLL);
    v248 = v11;
    **(v11 + 15) = malloc_type_malloc(8 * v255, 0x100004000313F17uLL);
    *(v11 + 19) = malloc_type_malloc(4 * v255, 0x100004052888210uLL);
    v259 = *a1;
    if (*a1 >= 1)
    {
      v260 = 0;
      v261 = 0;
      do
      {
        v262 = v250[v260];
        if (v262 < 0.0 || v262 > 0.0)
        {
          *(*(v11 + 14) + 8 * v261) = *(*(a1 + 2) + 8 * v260);
          *(**(v11 + 15) + 8 * v261) = v262;
          *(*(v11 + 19) + 4 * v261++) = ++v260;
          v259 = *a1;
        }

        else
        {
          ++v260;
        }
      }

      while (v260 < v259);
    }

    free(v250);
    return v248;
  }

  v281 = a2;
  v31 = *a1;
  v304 = 0;
  v302 = 0;
  v303 = 0;
  v301 = 0;
  size = v31;
  v267 = malloc_type_malloc(4 * v31, 0x100004052888210uLL);
  svm_group_classes(a1, &v304, &v303, &v302, &v301, v267);
  v32 = v304;
  if (v304 == 1)
  {
    info("WARNING: training data in only one class. See README for details.\n");
  }

  v271 = v32;
  v280 = malloc_type_malloc(8 * size, 0x2004093837F09uLL);
  if (size >= 1)
  {
    v33 = size;
    v34 = v267;
    v35 = v280;
    do
    {
      v36 = *v34++;
      *v35++ = *(*(a1 + 2) + 8 * v36);
      --v33;
    }

    while (v33);
  }

  v37 = malloc_type_malloc(8 * v32, 0x100004000313F17uLL);
  v38 = v37;
  v266 = v32 - 1;
  if (v32 >= 1)
  {
    v39 = *(a2 + 6);
    v40 = (v32 + 1) & 0xFFFFFFFE;
    v41 = vdupq_n_s64(v32 - 1);
    v42 = xmmword_247321D00;
    v43 = v37 + 8;
    v44 = vdupq_n_s64(2uLL);
    do
    {
      v45 = vmovn_s64(vcgeq_u64(v41, v42));
      if (v45.i8[0])
      {
        *(v43 - 1) = v39;
      }

      if (v45.i8[4])
      {
        *v43 = v39;
      }

      v42 = vaddq_s64(v42, v44);
      v43 += 2;
      v40 -= 2;
    }

    while (v40);
  }

  v269 = v5;
  v46 = *(a2 + 14);
  if (v46 >= 1)
  {
    v47 = 0;
    v48 = v303;
    v49 = MEMORY[0x277D85DF8];
    do
    {
      if (v32 < 1)
      {
        LODWORD(v50) = 0;
      }

      else
      {
        v50 = 0;
        while (*(*(v281 + 8) + 4 * v47) != v48[v50])
        {
          if (v32 == ++v50)
          {
            goto LABEL_34;
          }
        }
      }

      if (v50 == v32)
      {
LABEL_34:
        fprintf(*v49, "WARNING: class label %d specified in weight is not found\n", *(*(v281 + 8) + 4 * v47));
        v46 = *(v281 + 14);
      }

      else
      {
        v38[v50] = *(*(v281 + 9) + 8 * v47) * v38[v50];
      }

      ++v47;
    }

    while (v47 < v46);
  }

  v51 = malloc_type_malloc(size, 0x100004077774924uLL);
  v52 = v51;
  if (size >= 1)
  {
    bzero(v51, size);
  }

  v279 = v52;
  v268 = v266 * v32;
  v283 = malloc_type_malloc(16 * ((v266 * v32) / 2), 0x1080040FC6463CFuLL);
  v265 = (v266 * v32 + ((v266 * v32) >> 31)) >> 1;
  v53 = 8 * v265;
  v264 = 8 * v265;
  if (*(v281 + 25))
  {
    v290 = malloc_type_malloc(v53, 0x100004000313F17uLL);
    v54 = malloc_type_malloc(v53, 0x100004000313F17uLL);
  }

  else
  {
    v54 = 0;
    v290 = 0;
  }

  v55 = v32;
  v274 = v38;
  v289 = v54;
  if (v32 < 1)
  {
    goto LABEL_165;
  }

  v56 = 0;
  LODWORD(v57) = 0;
  v276 = v301;
  v277 = v302;
  v58 = -1.0;
  v59 = 1;
  v278 = v32;
  do
  {
    v60 = v56 + 1;
    if (v56 + 1 >= v55)
    {
      goto LABEL_164;
    }

    v272 = v56 + 1;
    v273 = v59;
    v57 = v57;
    v275 = v56;
    do
    {
      v284 = v277[v56];
      v285 = v277[v59];
      v61 = v276->i32[v56];
      v287 = v59;
      v62 = v276->u32[v59];
      v298 = v62 + v61;
      v300 = malloc_type_malloc(8 * (v62 + v61), 0x2004093837F09uLL);
      v299 = malloc_type_malloc(8 * v298, 0x100004000313F17uLL);
      if (v61 >= 1)
      {
        for (i = 0; i != v61; ++i)
        {
          *(v300 + i * 8) = v280[v284 + i];
          *(v299 + i * 8) = 0x3FF0000000000000;
        }
      }

      v286 = v62;
      v97 = v62 < 1;
      v64 = v281;
      if (!v97)
      {
        v65 = 8 * v61;
        v66 = v286;
        v67 = &v280[v285];
        do
        {
          v68 = *v67++;
          *(v300 + v65) = v68;
          *(v299 + v65) = 0xBFF0000000000000;
          v65 += 8;
          --v66;
        }

        while (v66);
      }

      v282 = v61;
      if (!*(v281 + 25))
      {
        goto LABEL_150;
      }

      v291 = v57;
      v69 = v38[v56];
      v70 = v38[v287];
      v71 = malloc_type_malloc(4 * v298, 0x100004052888210uLL);
      v72 = malloc_type_malloc(8 * v298, 0x100004000313F17uLL);
      if (v298 >= 1)
      {
        for (j = 0; j < v298; ++j)
        {
          v71[j] = j;
        }

        if (v298 >= 1)
        {
          v74 = 0;
          for (k = 0; k < v298; ++k)
          {
            v76 = k + rand() % (v74 + v298);
            v77 = v71[k];
            v71[k] = v71[v76];
            v71[v76] = v77;
            --v74;
          }
        }
      }

      v78 = 0;
      do
      {
        v79 = v298 * v78;
        v80 = (v298 * v78++ / 5);
        v81 = v298 * v78 / 5;
        v312 = v80 - v81 + v298;
        v314 = malloc_type_malloc(8 * v312, 0x2004093837F09uLL);
        v82 = malloc_type_malloc(8 * v312, 0x100004000313F17uLL);
        v313 = v82;
        if (v79 < 5)
        {
          LODWORD(v85) = 0;
        }

        else
        {
          v83 = 0;
          do
          {
            v84 = v71[v83];
            v314[v83] = *(v300 + v84);
            v82 = v313;
            v313[v83++] = *(v299 + v84);
          }

          while (v80 != v83);
          LODWORD(v85) = v79 / 5;
        }

        if (v81 >= v298)
        {
          if (!v85)
          {
            v91 = 0;
            v90 = 0;
            goto LABEL_75;
          }
        }

        else
        {
          v86 = &v71[v81];
          v87 = v85;
          v88 = v298 - v81;
          do
          {
            v89 = *v86++;
            v314[v87] = *(v300 + v89);
            v82 = v313;
            v313[v87++] = *(v299 + v89);
            LODWORD(v85) = v85 + 1;
            --v88;
          }

          while (v88);
        }

        v90 = 0;
        v91 = 0;
        v85 = v85;
        do
        {
          v92 = *v82++;
          if (v92 <= 0.0)
          {
            ++v90;
          }

          else
          {
            ++v91;
          }

          --v85;
        }

        while (v85);
LABEL_75:
        if (v91 | v90)
        {
          if (v91 >= 1 && v90 == 0)
          {
            if (v80 < v81)
            {
              v107 = &v71[v80];
              v108 = v81 - v80;
              do
              {
                v109 = *v107++;
                v72[v109] = 1.0;
                --v108;
              }

              while (v108);
            }
          }

          else
          {
            if (v91)
            {
              v97 = 1;
            }

            else
            {
              v97 = v90 < 1;
            }

            if (v97)
            {
              v311 = *(v281 + 12);
              v98 = v281[4];
              v310 = v281[5];
              v99 = v281[1];
              v305 = *v281;
              v306 = v99;
              v100 = v281[2];
              HIDWORD(v308) = HIDWORD(v281[3]);
              *v309 = v98;
              v307 = v100;
              HIDWORD(v311) = 0;
              *&v308 = 0x3FF0000000000000;
              DWORD2(v308) = 2;
              v309[0] = malloc_type_malloc(8uLL, 0x100004052888210uLL);
              v101 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
              v309[1] = v101;
              *v309[0] = 0xFFFFFFFF00000001;
              *v101 = v69;
              v101[1] = v70;
              v102 = svm_train(&v312, &v305);
              v103 = v102;
              if (v80 >= v81)
              {
                if (v102)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                v104 = &v71[v80];
                v105 = v81 - v80;
                do
                {
                  svm_predict_values(v103, *(v300 + *v104), &v72[*v104]);
                  v106 = *v104++;
                  v72[v106] = v72[v106] * *v103[20];
                  --v105;
                }

                while (v105);
LABEL_103:
                svm_free_model_content(v103);
                free(v103);
              }

              free(v309[0]);
              free(v309[1]);
              goto LABEL_105;
            }

            if (v80 < v81)
            {
              v110 = &v71[v80];
              v111 = v81 - v80;
              do
              {
                v112 = *v110++;
                v72[v112] = -1.0;
                --v111;
              }

              while (v111);
            }
          }
        }

        else if (v80 < v81)
        {
          v93 = &v71[v80];
          v94 = v81 - v80;
          do
          {
            v95 = *v93++;
            v72[v95] = 0.0;
            --v94;
          }

          while (v94);
        }

LABEL_105:
        free(v314);
        free(v313);
      }

      while (v78 != 5);
      v113 = v298;
      v114 = v299;
      v115 = 0.0;
      v116 = 0.0;
      v117 = 0.0;
      v288 = v298;
      if (v298 >= 1)
      {
        v118 = v299;
        v119 = v298;
        do
        {
          v120 = *v118++;
          if (v120 > 0.0)
          {
            v117 = v117 + 1.0;
          }

          else
          {
            v116 = v116 + 1.0;
          }

          --v119;
        }

        while (v119);
      }

      v121 = malloc_type_malloc(8 * v298, 0x100004000313F17uLL);
      v290[v291] = 0;
      v122 = log((v116 + 1.0) / (v117 + 1.0));
      v54[v291] = v122;
      if (v113 < 1)
      {
        v131 = v122;
      }

      else
      {
        v123 = (v117 + 1.0) / (v117 + 2.0);
        v115 = 0.0;
        v124 = v121;
        v125 = v72;
        v126 = v113;
        v127 = 1.0 / (v116 + 2.0);
        do
        {
          v128 = *v114++;
          if (v128 <= 0.0)
          {
            v129 = v127;
          }

          else
          {
            v129 = v123;
          }

          *v124++ = v129;
          v130 = *v125++;
          v131 = v289[v291];
          v132 = v131 + v130 * *&v290[v291];
          v133 = -v132;
          if (v132 >= 0.0)
          {
            v134 = v129;
          }

          else
          {
            v133 = v132;
            v134 = v129 + v58;
          }

          v135 = exp(v133);
          v115 = v115 + log(v135 + 1.0) + v134 * v132;
          --v126;
        }

        while (v126);
      }

      v136 = 0;
      v54 = v289;
      v64 = v281;
      v137 = 1.0;
      v138 = v131;
      while (1)
      {
        v296 = v115;
        v297 = v138;
        if (v288 < 1)
        {
          v145 = 0.0;
          v147 = 1.0e-12;
          v146 = 1.0e-12;
          v144 = 0.0;
          v140 = 0.0;
        }

        else
        {
          v139 = *&v290[v291];
          v140 = 0.0;
          v141 = v72;
          v142 = v121;
          v143 = v113;
          v144 = 0.0;
          v145 = 0.0;
          v146 = 1.0e-12;
          v147 = 1.0e-12;
          do
          {
            v148 = *v141;
            v149 = v138 + *v141 * v139;
            if (v149 >= 0.0)
            {
              v150 = exp(-v149);
              v152 = 1.0;
              v151 = v150;
            }

            else
            {
              v150 = exp(v149);
              v151 = 1.0;
              v152 = v150;
            }

            v153 = v150 + v137;
            v154 = v151 / v153;
            v155 = v154 * (v152 / v153);
            v146 = v146 + v148 * v148 * v155;
            v147 = v147 + v155;
            v156 = *v142++;
            v145 = v145 + v148 * v155;
            v144 = v144 + v148 * (v156 - v154);
            v140 = v140 + v156 - v154;
            ++v141;
            --v143;
            v138 = v297;
          }

          while (v143);
        }

        if (fabs(v144) < 0.00001 && fabs(v140) < 0.00001)
        {
          break;
        }

        v157 = v146 * v147 - v145 * v145;
        v294 = -(v146 * v140 + -v145 * v144) / v157;
        v295 = -(v147 * v144 - v145 * v140) / v157;
        v292 = *&v290[v291];
        v293 = v140 * v294 + v144 * v295;
        v158 = 1.0;
        while (1)
        {
          v159 = v292 + v158 * v295;
          v160 = v138 + v158 * v294;
          v161 = 0.0;
          if (v113 >= 1)
          {
            v162 = v72;
            v163 = v121;
            v164 = v113;
            do
            {
              v165 = *v162++;
              v166 = v165;
              v167 = *v163++;
              v168 = v167;
              v169 = v160 + v166 * v159;
              v170 = -v169;
              v171 = v167 + -1.0;
              if (v169 >= 0.0)
              {
                v172 = v168;
              }

              else
              {
                v170 = v169;
                v172 = v171;
              }

              v173 = exp(v170);
              v161 = v161 + log(v173 + 1.0) + v172 * v169;
              --v164;
            }

            while (v164);
          }

          if (v161 < v296 + v158 * 0.0001 * v293)
          {
            break;
          }

          v158 = v158 * 0.5;
          v138 = v297;
          if (v158 < 1.0e-10)
          {
            v115 = v296;
            goto LABEL_145;
          }
        }

        *&v290[v291] = v159;
        v289[v291] = v160;
        v138 = v160;
        v115 = v161;
LABEL_145:
        v137 = 1.0;
        if (v158 < 1.0e-10)
        {
          info("Line search fails in two-class probability estimates\n");
          break;
        }

        if (++v136 == 100)
        {
          info("Reaching maximal iterations in two-class probability estimates\n");
          break;
        }
      }

      free(v121);
      free(v72);
      free(v71);
      v38 = v274;
      v56 = v275;
      v57 = v291;
      v58 = -1.0;
LABEL_150:
      v174 = svm_train_one(&v298, v64, v38[v56], v38[v287]);
      v175 = &v283[16 * v57];
      *v175 = v174;
      v175[1] = v176;
      v177 = v286;
      if (v282 >= 1)
      {
        v178 = &v279[v284];
        v179 = v282;
        v180 = v174;
        do
        {
          if ((*v178 & 1) == 0 && *v180 != 0.0)
          {
            *v178 = 1;
          }

          ++v178;
          ++v180;
          --v179;
        }

        while (v179);
      }

      if (v286 >= 1)
      {
        v181 = &v279[v285];
        v182 = &v174[v282];
        do
        {
          if ((*v181 & 1) == 0 && *v182 != 0.0)
          {
            *v181 = 1;
          }

          ++v182;
          ++v181;
          --v177;
        }

        while (v177);
      }

      free(v300);
      free(v299);
      ++v57;
      v59 = v287 + 1;
      v32 = v278;
    }

    while (v287 + 1 != v278);
    v55 = v271;
    v60 = v272;
    v59 = v273;
LABEL_164:
    ++v59;
    v56 = v60;
  }

  while (v60 != v32);
LABEL_165:
  *(v269 + 26) = v32;
  v183 = 4 * v55;
  v184 = malloc_type_malloc(4 * v55, 0x100004052888210uLL);
  *(v269 + 20) = v184;
  if (v32 >= 1)
  {
    v185 = v303;
    v186 = v32;
    do
    {
      v187 = *v185++;
      *v184++ = v187;
      --v186;
    }

    while (v186);
  }

  v188 = malloc_type_malloc(v264, 0x100004000313F17uLL);
  *(v269 + 16) = v188;
  if (v268 > 1)
  {
    v189 = (v283 + 8);
    v190 = v265;
    do
    {
      v191 = *v189;
      v189 += 2;
      *v188++ = v191;
      --v190;
    }

    while (v190);
  }

  if (*(v281 + 25))
  {
    *(v269 + 17) = malloc_type_malloc(v264, 0x100004000313F17uLL);
    v192 = malloc_type_malloc(v264, 0x100004000313F17uLL);
    *(v269 + 18) = v192;
    if (v268 > 1)
    {
      v193 = *(v269 + 17);
      v194 = v265;
      v195 = v290;
      do
      {
        v196 = *v195++;
        *v193++ = v196;
        v197 = *v54++;
        *v192++ = v197;
        --v194;
      }

      while (v194);
    }
  }

  else
  {
    *(v269 + 17) = 0;
    *(v269 + 18) = 0;
  }

  v198 = malloc_type_malloc(v183, 0x100004052888210uLL);
  v199 = malloc_type_malloc(v183, 0x100004052888210uLL);
  *(v269 + 21) = v199;
  if (v32 < 1)
  {
    v201 = 0;
  }

  else
  {
    v200 = 0;
    v201 = 0;
    v202 = v301;
    v203 = v302;
    do
    {
      v204 = v202->u32[v200];
      if (v204 < 1)
      {
        v205 = 0;
      }

      else
      {
        v205 = 0;
        v206 = &v279[v203[v200]];
        do
        {
          v207 = *v206++;
          v201 += v207;
          v205 += v207;
          --v204;
        }

        while (v204);
      }

      v199[v200] = v205;
      v198[v200++] = v205;
    }

    while (v200 != v32);
  }

  info("Total nSV = %d\n", v201);
  *(v269 + 27) = v201;
  v208 = 8 * v201;
  *(v269 + 14) = malloc_type_malloc(v208, 0x2004093837F09uLL);
  v209 = malloc_type_malloc(4 * v201, 0x100004052888210uLL);
  v210 = v279;
  *(v269 + 19) = v209;
  v211 = size;
  if (size >= 1)
  {
    v212 = 0;
    v213 = v280;
    v214 = v267;
    do
    {
      v215 = *v210++;
      if (v215 == 1)
      {
        *(*(v269 + 14) + 8 * v212) = *v213;
        *(*(v269 + 19) + 4 * v212++) = *v214 + 1;
      }

      ++v214;
      ++v213;
      --v211;
    }

    while (v211);
  }

  v216 = malloc_type_malloc(v183, 0x100004052888210uLL);
  v217 = v216;
  *v216 = 0;
  if (v32 <= 1)
  {
    *(v269 + 15) = malloc_type_malloc(8 * v266, 0x80040B8603338uLL);
    v225 = v269 + 120;
    v222 = v265;
  }

  else
  {
    v218 = 0;
    v219 = v216 + 1;
    v220 = v32 - 1;
    v221 = v198;
    v222 = v265;
    do
    {
      v223 = *v221++;
      v218 += v223;
      *v219++ = v218;
      --v220;
    }

    while (v220);
    v224 = 0;
    *(v269 + 15) = malloc_type_malloc(8 * v266, 0x80040B8603338uLL);
    v225 = v269 + 120;
    do
    {
      *(*v225 + v224) = malloc_type_malloc(v208, 0x100004000313F17uLL);
      v224 += 8;
    }

    while (8 * v266 != v224);
  }

  v227 = v301;
  v226 = v302;
  if (v32 >= 1)
  {
    v228 = 0;
    LODWORD(v229) = 0;
    v230 = 1;
    do
    {
      v231 = v228 + 1;
      if (v228 + 1 < v271)
      {
        v232 = v227->u32[v228];
        v233 = v217[v228];
        v234 = v227->i32[v228];
        v229 = v229;
        v235 = &v279[v226[v228]];
        v236 = v230;
        do
        {
          v237 = v226[v236];
          v238 = v227->u32[v236];
          v239 = &v283[16 * v229];
          if (v234 >= 1)
          {
            v240 = 0;
            v241 = v233;
            do
            {
              if (v235[v240] == 1)
              {
                *(*(*v225 + 8 * v236 - 8) + 8 * v241++) = *(*v239 + 8 * v240);
              }

              ++v240;
            }

            while (v232 != v240);
          }

          if (v238 >= 1)
          {
            v242 = v217[v236];
            v243 = &v279[v237];
            v244 = 8 * v232;
            do
            {
              v245 = *v243++;
              if (v245 == 1)
              {
                *(*(*v225 + 8 * v228) + 8 * v242++) = *(*v239 + v244);
              }

              v244 += 8;
              --v238;
            }

            while (v238);
          }

          ++v229;
          ++v236;
        }

        while (v236 != v32);
      }

      ++v230;
      ++v228;
    }

    while (v231 != v32);
  }

  free(v303);
  free(v290);
  free(v289);
  free(v227);
  free(v267);
  free(v226);
  free(v280);
  free(v274);
  free(v279);
  if (v268 > 1)
  {
    v246 = v283;
    do
    {
      v247 = *v246;
      v246 += 2;
      free(v247);
      --v222;
    }

    while (v222);
  }

  free(v283);
  free(v198);
  free(v217);
  return v269;
}