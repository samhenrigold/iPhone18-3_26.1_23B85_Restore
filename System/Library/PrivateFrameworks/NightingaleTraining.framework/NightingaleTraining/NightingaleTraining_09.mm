void Nightingale::phaseFactorProcessor::getjDayStartOfVPhasestojDayRangeStart(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, const void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v10 = 0;
    do
    {
      v11 = Nightingale::phaseFactorProcessor::getjDayStartOfAPhasetojDayRangeStart(a1, a2, a3, *(v6 + v10));
      v12 = 1;
      std::vector<float>::push_back[abi:ne200100](a5, &v11);
      ++v10;
      v6 = *a4;
    }

    while (a4[1] - *a4 > v10);
  }
}

void sub_25C644D98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::phaseFactorProcessor::getjDayEndOfVPhasestojDayRangeEnd(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, const void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v10 = 0;
    do
    {
      v11 = Nightingale::phaseFactorProcessor::getjDayEndOfAPhasetojDayRangeEnd(a1, a2, a3, *(v6 + v10));
      v12 = 1;
      std::vector<float>::push_back[abi:ne200100](a5, &v11);
      ++v10;
      v6 = *a4;
    }

    while (a4[1] - *a4 > v10);
  }
}

void sub_25C644E58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::phaseFactorProcessor::findEndOfReproductiveBfrADate(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v5 == v6 || *(a2 + 24) == *(a2 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v6 - v5;
  v9 = (v6 - v5) >> 2;
  if (v9 < 1)
  {
    v12 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v8 >> 2) & 0x7FFFFFFF;
    while (1)
    {
      if (v9 == v10)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v5[v10] > a4)
      {
        break;
      }

      if (v11 == ++v10)
      {
        LODWORD(v10) = v9;
        break;
      }
    }

    v12 = v10;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v24, v5, &v5[v12], v12);
  v14 = *(a2 + 24);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<Nightingale::PhaseSet>::__init_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::PhaseSet*>,std::__wrap_iter<Nightingale::PhaseSet*>>(&v21, v14, v14 + 8 * v12, v12);
  v15 = std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100]<std::vector<int>&,std::vector<Nightingale::PhaseSet>&,0>(v18, &v24, &v21);
  EndOfAPhaseSet = Nightingale::phaseFactorProcessor::jDayLastEndOfAPhaseSet(v15, v18, a3);
  if (EndOfAPhaseSet < 0)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = EndOfAPhaseSet;
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v13;
}

void sub_25C644FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::pair<std::vector<float>,std::vector<float>>::~pair(&a9);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

unint64_t Nightingale::phaseFactorProcessor::ccMenstCycleLen_handling(uint64_t *a1, void *a2, uint64_t *a3)
{
  EndOfAPhaseSet = Nightingale::phaseFactorProcessor::jDayLastEndOfAPhaseSet(a1, a2, a3);
  v5 = EndOfAPhaseSet;
  v7 = *a1;
  v6 = a1[1];
  log = ha_get_log(EndOfAPhaseSet);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::phaseFactorProcessor::ccMenstCycleLen_handling(v5, log);
  }

  v10 = *a1;
  v9 = a1[1];
  if (*a1 == v9)
  {
    return 0;
  }

  if (v5 == -2)
  {
    v17 = (v9 - v10) >> 3;
    if (v17 >= 2)
    {
      return 2;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    result = (v6 - v7) >> 3;
    if (v5 != -1)
    {
      v12 = v9 - v10;
      v13 = (v9 - v10) >> 3;
      if (v13 >= 1)
      {
        v14 = (result - v13);
        v15 = (v12 >> 3) & 0x7FFFFFFF;
        for (i = (v10 + 4); ; i += 2)
        {
          if (!v13)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          if (*i >= v5)
          {
            break;
          }

          result = (result - 1);
          --v13;
          if (!--v15)
          {
            return v14;
          }
        }
      }
    }
  }

  return result;
}

void Nightingale::phaseFactorProcessor::tagPhaseJDayRange(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v5 = HIDWORD(a2);
  v6 = Nightingale::phaseFactorProcessor::detectPhaseJDayRange(a1, a2, a3);
  v7 = HIDWORD(v6);
  a4[1] = *a4;
  __p = 0;
  v45 = 0;
  v46 = 0;
  if (v6 != -1 || v7 != 0xFFFFFFFF || v5 == 0xFFFFFFFF)
  {
    if (v6 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    if (v5 == 0xFFFFFFFF)
    {
      LODWORD(v7) = ((a3[1] - *a3) >> 2) - 1;
    }

    if (v8 <= v7)
    {
      v9 = v8;
      v37 = v7 + 1;
      do
      {
        v10 = a3[3];
        if (v9 >= (a3[4] - v10) >> 3)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v11 = *(v10 + 8 * v9);
        v42 = 0;
        v43 = v11;
        v40 = 0;
        v41 = 0;
        Nightingale::PhaseSet::phasesOnInPhaseSet2Vec(&v43, &v40);
        v12 = v40;
        v13 = v41;
        if (v41 != v40)
        {
          v14 = 0;
          do
          {
            v15 = v12[v14];
            v39 = v12[v14];
            v16 = __p;
            v17 = v45 - __p;
            if (v45 != __p)
            {
              do
              {
                v18 = &v16[v17 >> 1];
                v20 = *v18;
                v19 = v18 + 1;
                v21 = v17 >> 1;
                v17 += ~(v17 >> 1);
                if (v20 < v15)
                {
                  v16 = v19;
                }

                else
                {
                  v17 = v21;
                }
              }

              while (v17);
            }

            if (v16 == v45 || v15 < *v16)
            {
              v23 = a4[1];
              v22 = a4[2];
              if (v23 >= v22)
              {
                v25 = *a4;
                v26 = &v23[-*a4];
                v27 = (v26 + 1);
                if ((v26 + 1) < 0)
                {
                  std::vector<float>::__throw_length_error[abi:ne200100]();
                }

                v28 = v22 - v25;
                if (2 * v28 > v27)
                {
                  v27 = 2 * v28;
                }

                if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v29 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v29 = v27;
                }

                if (v29)
                {
                  operator new();
                }

                v30 = &v23[-*a4];
                *v26 = v15;
                v24 = v26 + 1;
                memcpy(0, v25, v30);
                *a4 = 0;
                a4[1] = v26 + 1;
                a4[2] = 0;
                if (v25)
                {
                  operator delete(v25);
                }
              }

              else
              {
                *v23 = v15;
                v24 = v23 + 1;
              }

              a4[1] = v24;
              v31 = __p;
              v32 = v45 - __p;
              if (v45 != __p)
              {
                do
                {
                  v33 = &v31[v32 >> 1];
                  v35 = *v33;
                  v34 = v33 + 1;
                  v36 = v32 >> 1;
                  v32 += ~(v32 >> 1);
                  if (v39 < v35)
                  {
                    v32 = v36;
                  }

                  else
                  {
                    v31 = v34;
                  }
                }

                while (v32);
              }

              std::vector<Nightingale::Phase>::insert(&__p, v31, &v39);
              v12 = v40;
              v13 = v41;
            }

            ++v14;
          }

          while (v13 - v12 > v14);
        }

        if (v12)
        {
          v41 = v12;
          operator delete(v12);
        }

        ++v9;
      }

      while (v37 != v9);
      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_25C64537C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<Nightingale::Phase>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v26 = a1;
    if (v13)
    {
      operator new();
    }

    v23 = 0;
    v24 = &__src[-v10];
    v25 = &__src[-v10];
    std::__split_buffer<Nightingale::Phase>::emplace_back<Nightingale::Phase const&>(&v23, a3);
    v14 = v24;
    memcpy(v25, v4, a1[1] - v4);
    v15 = *a1;
    v16 = v24;
    *&v25 = v25 + a1[1] - v4;
    a1[1] = v4;
    v17 = &v16[v15 - v4];
    memcpy(v17, v15, v4 - v15);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v25;
    *&v25 = v18;
    *(&v25 + 1) = v19;
    v23 = v18;
    v24 = v18;
    if (v18)
    {
      operator delete(v18);
    }

    return v14;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 1);
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
      v9 = a1[1];
    }

    v21 = v4 <= a3 && v9 > a3;
    *v4 = a3[v21];
  }

  return v4;
}

void sub_25C645564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::phaseFactorProcessor::suppressFWStEnd(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v16 = 84148994;
  v17 = 1798;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v19, &v16, v18, 6);
  if (*(a2 + 4) != 1 || *(a3 + 4) != 1)
  {
    goto LABEL_11;
  }

  v8 = *a2;
  v9 = *a3;
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&__p, v19, v20, v20 - v19);
  v10 = Nightingale::phaseFactorProcessor::detectPhases(a1, v8 | (v9 << 32), &__p, a4);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    if (*(a2 + 4) == 1)
    {
      *(a2 + 4) = 0;
    }

    if (*(a3 + 4) == 1)
    {
      *(a3 + 4) = 0;
    }

    v11 = 1;
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v11;
}

void sub_25C6456A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *Nightingale::phaseFactorProcessor::getCCVec@<X0>(uint64_t *a1@<X8>)
{
  v2 = 1798;
  v3 = 5;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(a1, &v2, &vars0, 3);
}

uint64_t *Nightingale::phaseFactorProcessor::getAllCycleVec@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0x706050403020100;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(a1, &v2, &v3, 8);
}

uint64_t Nightingale::phaseFactorProcessor::aPhase_contains_phaseTobeDetected(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a2;
  v3 = a3[1];
  if (*a3 == v3)
  {
    return 0;
  }

  v4 = *a3 + 1;
  do
  {
    result = Nightingale::PhaseSet::contains(&v7, *(v4 - 1));
    if (result)
    {
      break;
    }
  }

  while (v4++ != v3);
  return result;
}

unint64_t Nightingale::phaseFactorProcessor::jDayFirstStartLastEndOfAPhaseSet(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v3 = (a2[1] - *a2) >> 2;
  if (v3)
  {
    v6 = -1;
    v7 = v3 - 1;
    if (v3 >= 1)
    {
      v8 = (v3 - 1);
      while (1)
      {
        v9 = a2[3];
        if (v8 >= (a2[4] - v9) >> 3)
        {
          break;
        }

        v28 = *(v9 + 8 * v8);
        v10 = *a3;
        v11 = a3[1];
        while (1)
        {
          if (v10 == v11)
          {
            goto LABEL_12;
          }

          if (Nightingale::PhaseSet::contains(&v28, *v10))
          {
            break;
          }

          ++v10;
        }

        if (v8 >= (a2[1] - *a2) >> 2)
        {
          goto LABEL_51;
        }

        v6 = *(*a2 + 4 * v8);
        v12 = v8-- <= 0;
        if (v12)
        {
          goto LABEL_12;
        }
      }

LABEL_49:
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_12:
    v13 = *a3;
    v14 = a3[1];
    if (v14 == *a3)
    {
LABEL_17:
      if (v3 < 2)
      {
        goto LABEL_36;
      }

      v17 = (v3 - 2);
      while (v14 == v13)
      {
        v14 = v13;
LABEL_29:
        v12 = v17-- <= 0;
        if (v12)
        {
          goto LABEL_36;
        }
      }

      v18 = 0;
      v19 = v17 + 1;
      while (1)
      {
        v20 = a2[3];
        if (v17 >= (a2[4] - v20) >> 3)
        {
          goto LABEL_49;
        }

        if (Nightingale::PhaseSet::contains((v20 + 8 * v17), v13[v18]))
        {
          v21 = a2[3];
          if (v19 >= (a2[4] - v21) >> 3)
          {
            goto LABEL_49;
          }

          if (a3[1] - *a3 <= v18)
          {
LABEL_50:
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          if ((Nightingale::PhaseSet::contains((v21 + 8 * v19), (*a3)[v18]) & 1) == 0)
          {
            break;
          }
        }

        ++v18;
        v13 = *a3;
        v14 = a3[1];
        if (v14 - *a3 <= v18)
        {
          goto LABEL_29;
        }
      }

      if (v19 >= (a2[1] - *a2) >> 2)
      {
LABEL_51:
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v22 = *(*a2 + 4 * v19);
      if (v22 == -1)
      {
LABEL_36:
        v23 = *a3;
        if (a3[1] != *a3)
        {
          v24 = 0;
          v22 = 0xFFFFFFFFLL;
          while (1)
          {
            v25 = a2[3];
            if (a2[4] == v25)
            {
              goto LABEL_49;
            }

            if (Nightingale::PhaseSet::contains(v25, v23[v24]))
            {
              v26 = a2[3];
              if ((a2[4] - v26) <= 8)
              {
                goto LABEL_49;
              }

              if (a3[1] - *a3 <= v24)
              {
                goto LABEL_50;
              }

              if ((Nightingale::PhaseSet::contains((v26 + 8), (*a3)[v24]) & 1) == 0)
              {
                if (a2[1] - *a2 <= 4uLL)
                {
                  goto LABEL_51;
                }

                v22 = *(*a2 + 4);
              }
            }

            ++v24;
            v23 = *a3;
            if (a3[1] - *a3 <= v24)
            {
              return v6 | (v22 << 32);
            }
          }
        }

        v22 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = a2[3];
        if (v7 >= ((a2[4] - v16) >> 3))
        {
          goto LABEL_49;
        }

        if (Nightingale::PhaseSet::contains((v16 + 8 * v7), v13[v15]))
        {
          break;
        }

        ++v15;
        v13 = *a3;
        v14 = a3[1];
        if (v14 - *a3 <= v15)
        {
          goto LABEL_17;
        }
      }

      v22 = 4294967294;
    }
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
    v6 = -1;
  }

  return v6 | (v22 << 32);
}

BOOL Nightingale::phaseFactorProcessor::containContraceptiveCycleFactors(uint64_t a1, unsigned __int8 **a2)
{
  v9 = 84148994;
  v10 = 1798;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v9, v11, 6);
  v3 = a2[1];
  v4 = *a2;
  if (*a2 == v3 || __p == v13)
  {
    v7 = 0;
  }

  else
  {
    v5 = __p;
    do
    {
      v6 = v4;
      while (*v6 != *v5)
      {
        if (++v6 == v3)
        {
          v6 = v3;
          break;
        }
      }

      v7 = v6 != v3;
      if (v6 != v3)
      {
        break;
      }

      ++v5;
    }

    while (v5 != v13);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v7;
}

BOOL Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while (*v3 != a3)
    {
      if (++v3 == v4)
      {
        v3 = a2[1];
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

BOOL Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0;
  }

  v5 = a3[1];
  do
  {
    v6 = *a3;
    if (*a3 != v5)
    {
      v6 = *a3;
      while (*v6 != *v3)
      {
        if (++v6 == v5)
        {
          v6 = a3[1];
          break;
        }
      }
    }

    result = v6 != v5;
    if (v6 != v5)
    {
      break;
    }

    ++v3;
  }

  while (v3 != v4);
  return result;
}

uint64_t *std::vector<Nightingale::PhaseSet>::__init_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::PhaseSet*>,std::__wrap_iter<Nightingale::PhaseSet*>>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C645C44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100]<std::vector<int>&,std::vector<Nightingale::PhaseSet>&,0>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<Nightingale::PhaseSet>::__init_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::PhaseSet*>,std::__wrap_iter<Nightingale::PhaseSet*>>(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  return a1;
}

void sub_25C645CC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<Nightingale::Phase>::emplace_back<Nightingale::Phase const&>(unint64_t *a1, char *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      operator new();
    }

    v7 = (v6 + 1) / -2;
    v8 = &v5[-((v6 + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-((v6 + 1) / 2)], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v5[v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 1);
}

uint64_t Nightingale::ngtProjector::ngtProjector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  *(a1 + 112) = a3;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  Nightingale::coreAnalyticsDayStream_t::coreAnalyticsDayStream_t((a1 + 320));
  *(a1 + 560) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = xmmword_25C67C5D0;
  *(a1 + 664) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = xmmword_25C67C5D0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  return a1;
}

void Nightingale::ngtProjector::~ngtProjector(Nightingale::ngtProjector *this)
{
  Nightingale::structDLIn_hr::~structDLIn_hr((this + 128));
}

{
  Nightingale::structDLIn_hr::~structDLIn_hr((this + 128));
}

void Nightingale::ngtProjector::projector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Nightingale::periodEstimatorAggregation::periodEstimatorAggregation(v71);
  Nightingale::periodEstimatorCalendarWithEnd::periodEstimatorCalendarWithEnd(v70, *(a1 + 112));
  v11 = *(a1 + 96);
  v12 = *(v11 + 8);
  v15 = *(v12 - 96);
  v13 = v12 - 96;
  v14 = v15;
  if (*(v11 + 128) == 1)
  {
    Nightingale::ngtProjector::get1stPeriodProjInPeriodNow(v70, v13, v37);
    LOBYTE(v65) = 0;
    v69 = 0;
    Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(a1, v37, __p, &v65, v14, v55);
    std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a2, v55);
    if (v69 == 1 && v65)
    {
      *(&v65 + 1) = v65;
      operator delete(v65);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }
  }

  Nightingale::ngtProjector::get1stFwCompletePeriodProj(v37, a1, a5);
  v16 = v53;
  *(a1 + 32) = v52;
  *(a1 + 48) = v16;
  *(a1 + 64) = v54[0];
  v17 = v51;
  *a1 = v50;
  *(a1 + 16) = v17;
  *(a1 + 77) = *(v54 + 13);
  vGrad_empty = Nightingale::CGradient::get_vGrad_empty(v45);
  if (vGrad_empty)
  {
    *(a2 + 8) = *a2;
    if (v43 == 1)
    {
      v19 = v44;
      if (v44 <= 1)
      {
        v20 = v42 - v14;
        v21 = v42 - v14 - 5;
        if (v42 - v14 >= 5)
        {
          v28 = v14 - LODWORD(v37[0]);
          if (!BYTE4(v37[0]))
          {
            v28 = 0;
          }

          v26 = v21;
          v25 = v20;
          v29 = v28 + v20;
          if (((v44 != 0) & BYTE4(v37[0])) != 0)
          {
            v24 = v29;
          }

          else
          {
            v24 = 0;
          }

          v23 = 6;
          v22 = 1;
        }

        else
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0.0;
          v26 = 0.0;
          v19 = 3;
        }

        LODWORD(v55[0]) = v14;
        *(v55 + 1) = v26;
        *&v55[1] = 0;
        *(&v55[1] + 1) = v26;
        *&v55[2] = v26;
        BYTE8(v55[2]) = v22;
        v56 = v25;
        v57 = 0;
        v58 = v25;
        v59 = v25;
        v60 = v22;
        v61 = v21;
        v62 = v23;
        v63 = v24;
        v64 = v19;
        if (v22)
        {
          std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a3, v55);
        }
      }
    }
  }

  else
  {
    if (*(*(a1 + 96) + 128))
    {
      v27 = 4;
    }

    else
    {
      v27 = 5;
    }

    memset(v55, 0, sizeof(v55));
    if (!Nightingale::CGradient::get_vGrad_empty(v45))
    {
      Nightingale::ngtProjector::getDerivedPeriodProjs(&v65, a1, v37, v27);
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(v55);
      v55[0] = v65;
      *&v55[1] = v66;
      v66 = 0;
      v65 = 0uLL;
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(&v55[1] + 1);
      *(&v55[1] + 8) = v67;
      *(&v55[2] + 1) = v68;
      v68 = 0;
      v67 = 0uLL;
      v36[0] = &v67;
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](v36);
      v36[0] = &v65;
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](v36);
      Nightingale::ngtProjector::constructSurfacedPeriodProjs(&v65, a1, v37, v55, v14);
      std::vector<Nightingale::ngt_Prediction>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::ngt_Prediction*>,std::__wrap_iter<Nightingale::ngt_Prediction*>>(a2, *(a2 + 8), v65, *(&v65 + 1), 0x4EC4EC4EC4EC4EC5 * ((*(&v65 + 1) - v65) >> 3));
      if (v65)
      {
        *(&v65 + 1) = v65;
        operator delete(v65);
      }
    }

    Nightingale::ngtProjector::getDerivedFwProjs(&v65, v45, &v55[1] + 1);
    Nightingale::ngtProjector::getDerivedFwProjs(v36, v38, v55);
    Nightingale::ngtProjector::constructSurfacedFwProjs(v37, &v65, v36, v14, &v34);
    std::vector<Nightingale::ngt_Prediction>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::ngt_Prediction*>,std::__wrap_iter<Nightingale::ngt_Prediction*>>(a3, *(a3 + 8), v34, v35, 0x4EC4EC4EC4EC4EC5 * ((v35 - v34) >> 3));
    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v36[0])
    {
      v36[1] = v36[0];
      operator delete(v36[0]);
    }

    if (v65)
    {
      *(&v65 + 1) = v65;
      operator delete(v65);
    }

    *&v65 = &v55[1] + 8;
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&v65);
    *&v65 = v55;
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&v65);
  }

  Nightingale::ngtProjector::shrinkLowRangeToRmOverlapFW(vGrad_empty, a2, a3, *(*(a1 + 96) + 128));
  Nightingale::ngtProjector::reproductiveInfiniteHandlingPeriod(a1, a2, *(a1 + 104), v55);
  v30 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v30;
    operator delete(v30);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v55[0];
  *(a2 + 16) = *&v55[1];
  Nightingale::ngtProjector::reproductiveInfiniteHandlingFw(a1, a3, *(a1 + 104), v38, v55);
  v33 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v33;
    operator delete(v33);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  *a3 = v55[0];
  *(a3 + 16) = *&v55[1];
  if (a5)
  {
    Nightingale::ngtProjector::getCaContent(a1, v37, v31, v32, a6);
    if (*a3 == *(a3 + 8))
    {
      *(a6 + 224) = 4;
    }

    if (*a2 == *(a2 + 8))
    {
      *(a6 + 124) = 5;
    }
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  Nightingale::periodEstimatorCalendarWithEnd::~periodEstimatorCalendarWithEnd(v70);
  Nightingale::periodEstimatorAggregation::~periodEstimatorAggregation(v71);
}

void sub_25C646410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__pa, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  Nightingale::firstFwPeriodStartOutStruct::~firstFwPeriodStartOutStruct(va);
  Nightingale::periodEstimatorCalendarWithEnd::~periodEstimatorCalendarWithEnd((v16 - 136));
  Nightingale::periodEstimatorAggregation::~periodEstimatorAggregation((v16 - 97));
  _Unwind_Resume(a1);
}

void Nightingale::ngtProjector::get1stPeriodProjInPeriodNow(Nightingale::periodEstimatorCalendar *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:ne200100]<true,0>(v20);
  if (*(a2 + 60) == 1 && (*(a2 + 52) & 1) != 0)
  {
    Nightingale::CGradient::CGradient(__p);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    Nightingale::periodEstimatorCalendar::getPeriodStartGradient(v8, a1, 0.0, 0.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v8;
    v12 = v9;
    v13[0] = v10[0];
    *(v13 + 9) = *(v10 + 9);
    Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(a2, __p, v8);
    std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:ne200100]<Nightingale::periodEstimationOutStruct&,Nightingale::periodEstimationOutStruct&,0>(a3, __p, v8);
    if (v8[0])
    {
      v8[1] = v8[0];
      operator delete(v8[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }
  }

  else
  {
    *a3 = *v20;
    *(a3 + 16) = v21;
    v20[0] = 0;
    v20[1] = 0;
    *(a3 + 24) = v22[0];
    *(a3 + 33) = *(v22 + 9);
    *(a3 + 56) = *v23;
    *(a3 + 69) = *&v23[13];
    *(a3 + 80) = *v24;
    *(a3 + 96) = v25;
    v24[1] = 0;
    v25 = 0;
    v21 = 0;
    v24[0] = 0;
    v6 = v26[0];
    *(a3 + 113) = *(v26 + 9);
    *(a3 + 104) = v6;
    v7 = *v27;
    *(a3 + 149) = *&v27[13];
    *(a3 + 136) = v7;
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }
}

void sub_25C646674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::~pair(va);
  _Unwind_Resume(a1);
}

float Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 88) = xmmword_25C67C5D0;
  *a6 = a5;
  *(a6 + 8) = Nightingale::ngtProjector::getAMetricFromperiodEstimationOut(a1, a2);
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  *(a6 + 32) = v13;
  *(a6 + 40) = 1;
  AMetricFromperiodEstimationOut = Nightingale::ngtProjector::getAMetricFromperiodEstimationOut(a1, a3);
  *(a6 + 48) = AMetricFromperiodEstimationOut;
  *(a6 + 56) = v15;
  *(a6 + 64) = v16;
  *(a6 + 72) = v17;
  *(a6 + 80) = 1;
  if (*(a2 + 60) == 1)
  {
    LODWORD(AMetricFromperiodEstimationOut) = *(a2 + 56);
    v18 = llroundf(*&AMetricFromperiodEstimationOut);
    *(a6 + 88) = v18;
    if (*(a3 + 68) == 1)
    {
      *&AMetricFromperiodEstimationOut = (*(a3 + 64) - *&AMetricFromperiodEstimationOut) + 1.0;
      *(a6 + 92) = llroundf(*&AMetricFromperiodEstimationOut);
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(a4 + 80) == 1)
  {
    Nightingale::ngtProjector::computeLowRangeMeanStd(a1, a4);
    if ((*(a4 + 80) & 1) == 0)
    {
      goto LABEL_12;
    }

    if (Nightingale::CGradient::get_isNull(a4))
    {
      return *&AMetricFromperiodEstimationOut;
    }

    if ((*(a4 + 80) & 1) == 0)
    {
LABEL_12:
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*(a4 + 60) == 1)
    {
      *&AMetricFromperiodEstimationOut = v18 - roundf(*(a4 + 56));
      *(a6 + 96) = *&AMetricFromperiodEstimationOut;
    }
  }

  return *&AMetricFromperiodEstimationOut;
}

void std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x276276276276276)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_Prediction>>(a1, v15);
    }

    v16 = 104 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    *(v16 + 96) = *(a2 + 12);
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    *(v16 + 48) = v19;
    v11 = 104 * v12 + 104;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[5];
    *(v4 + 96) = *(a2 + 12);
    *(v4 + 64) = v9;
    *(v4 + 80) = v10;
    *(v4 + 48) = v8;
    v11 = v4 + 104;
  }

  *(a1 + 8) = v11;
}

uint64_t std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::~pair(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

double Nightingale::ngtProjector::get1stFwCompletePeriodProj@<D0>(uint64_t *__return_ptr a1@<X8>, Nightingale::ngtProjector *this@<X0>, uint64_t a4@<X2>)
{
  Nightingale::ngtProjector::compute1stFWPeriodStart(this, a4, a1);
  if (!Nightingale::CGradient::get_vGrad_empty((a1 + 25)))
  {
    Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(*(*(this + 12) + 8) - 96, (a1 + 25), &v8);
    v7 = a1[35];
    if (v7)
    {
      a1[36] = v7;
      operator delete(v7);
    }

    *(a1 + 35) = v8;
    a1[37] = v9;
    *(a1 + 19) = v10[0];
    *(a1 + 313) = *(v10 + 9);
    result = v11[0];
    *(a1 + 21) = *v11;
    *(a1 + 349) = *(&v11[1] + 5);
  }

  return result;
}

void Nightingale::ngtProjector::getDerivedPeriodProjs(uint64_t *__return_ptr a1@<X8>, Nightingale::ngtProjector *this@<X0>, Nightingale::firstFwPeriodStartOutStruct *a3@<X1>, int w2_0@<W2>)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v9 = *(a3 + 90);
  if (v9 == 3)
  {
    adjusted = Nightingale::CGradient::get_adjusted((a3 + 200));
  }

  else
  {
    adjusted = 0;
  }

  v11 = (v9 - 1) < 2;
  v12 = v11 | adjusted;
  Nightingale::periodEstimatorAggregation::deriveRestPeriodProjs(&v18, *(this + 14), a3 + 200, *(this + 12), w2_0, 2, (v11 | adjusted) & 1, v11);
  if (a1 + 3 != &v18)
  {
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__assign_with_size[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a1 + 3, v18, v19, 0xCCCCCCCCCCCCCCCDLL * ((v19 - v18) >> 5));
  }

  v16 = 0uLL;
  v17 = 0;
  if (*(a3 + 90) == 3)
  {
    if (&v18 != a1)
    {
      v13 = &v18;
LABEL_10:
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__assign_with_size[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a1, *v13, v13[1], 0xCCCCCCCCCCCCCCCDLL * ((v13[1] - *v13) >> 5));
    }
  }

  else
  {
    Nightingale::periodEstimatorAggregation::deriveRestPeriodProjs(&v14, *(this + 14), a3 + 16, *(this + 12), w2_0, 2, v12 & 1, 0);
    v13 = &v16;
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(&v16);
    v16 = v14;
    v17 = v15;
    v15 = 0;
    v14 = 0uLL;
    v20 = &v14;
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&v20);
    if (&v16 != a1)
    {
      goto LABEL_10;
    }
  }

  *&v14 = &v16;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&v14);
  *&v16 = &v18;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_25C646BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a9 = &a13;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a13 = &a17;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&a13);
  Nightingale::derivedPeriodProjsStruct::~derivedPeriodProjsStruct(v17);
  _Unwind_Resume(a1);
}

void Nightingale::derivedPeriodProjsStruct::~derivedPeriodProjsStruct(void **this)
{
  v2 = this + 3;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void Nightingale::ngtProjector::constructSurfacedPeriodProjs(uint64_t *__return_ptr a1@<X8>, Nightingale::ngtProjector *this@<X0>, Nightingale::firstFwPeriodStartOutStruct *a3@<X1>, Nightingale::derivedPeriodProjsStruct *a4@<X2>, int a5@<W3>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  LOBYTE(v37) = 0;
  v39 = 0;
  std::optional<Nightingale::periodEstimationOutStruct>::operator=[abi:ne200100]<Nightingale::periodEstimationOutStruct&,void>(&v37, a3 + 16);
  v10 = *(this + 12);
  v11 = *(v10 + 96);
  if ((v11 & 0x100000000) != 0)
  {
    *(this + 190) = v11 - *(*(v10 + 8) - 96);
    *(this + 764) = 1;
  }

  Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(this, a3 + 200, a3 + 280, &v37, a5, &v30);
  HIDWORD(v36) = *(a3 + 90);
  std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a1, &v30);
  *(this + 81) = v36;
  v12 = v35;
  *(this + 616) = v34;
  *(this + 632) = v12;
  v13 = v31;
  *(this + 552) = v30;
  *(this + 568) = v13;
  v14 = v33;
  *(this + 584) = v32;
  *(this + 600) = v14;
  Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(this, a3 + 16, a3 + 96, &v37, a5, &v23);
  v15 = v28;
  *(this + 45) = v27;
  *(this + 46) = v15;
  *(this + 94) = v29;
  v16 = v24;
  *(this + 41) = v23;
  *(this + 42) = v16;
  v17 = v26;
  *(this + 43) = v25;
  *(this + 44) = v17;
  if (*(this + 764) == 1)
  {
    *(this + 764) = 0;
  }

  v18 = *(a4 + 3);
  v19 = *(a4 + 4);
  if (v18 != v19)
  {
    v20 = 0;
    do
    {
      v21 = v20;
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 5) <= v20)
      {
        if (v39 == 1)
        {
          if (v37)
          {
            v38 = v37;
            operator delete(v37);
          }

          v39 = 0;
        }
      }

      else
      {
        std::optional<Nightingale::periodEstimationOutStruct>::operator=[abi:ne200100]<Nightingale::periodEstimationOutStruct&,void>(&v37, *a4 + 160 * v20);
      }

      v22 = v18 + 80;
      Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(this, v18, v18 + 80, &v37, a5, &v23);
      v36 = v29;
      v34 = v27;
      v35 = v28;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      v33 = v26;
      HIDWORD(v36) = *(a3 + 90);
      std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a1, &v30);
      v20 = v21 + 1;
      v18 += 160;
    }

    while (v22 + 80 != v19);
  }

  if (v39 == 1)
  {
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }
}

void sub_25C646EAC(_Unwind_Exception *exception_object)
{
  if (*(v2 - 104) == 1)
  {
    v4 = *(v2 - 184);
    if (v4)
    {
      *(v2 - 176) = v4;
      operator delete(v4);
    }
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngtProjector::getDerivedFwProjs(const void **__return_ptr a1@<X8>, Nightingale::CGradient *this@<X2>, uint64_t *a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(this + 76) == 1)
  {
    expectation = *(this + 18);
  }

  else
  {
    v7 = *(this + 36);
    if ((v7 & 0x100000000) != 0)
    {
      *(this + 18) = v7;
      *(this + 76) = 1;
      expectation = *&v7;
    }

    else
    {
      expectation = Nightingale::CGradient::get_expectation(this);
      if ((*(this + 76) & 1) == 0)
      {
        *(this + 76) = 1;
      }

      *(this + 18) = expectation;
    }
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v10 = 0;
    v11 = roundf(expectation);
    do
    {
      if (Nightingale::CGradient::get_isNull(v8))
      {
        goto LABEL_21;
      }

      if (*(v8 + 76) == 1)
      {
        v12 = *(v8 + 72);
      }

      else
      {
        v13 = *(v8 + 36);
        if ((v13 & 0x100000000) != 0)
        {
          *(v8 + 72) = v13;
          *(v8 + 76) = 1;
          v12 = *&v13;
        }

        else
        {
          v12 = Nightingale::CGradient::get_expectation(v8);
          if ((*(v8 + 76) & 1) == 0)
          {
            *(v8 + 76) = 1;
          }

          *(v8 + 72) = v12;
        }
      }

      if (llroundf(v12 + -18.0) < v11)
      {
LABEL_21:
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v16 = llroundf(v12 + -13.0);
        v10 = v16 >> 8;
        v14 = v16;
        v15 = 0x100000000;
      }

      v18 = a1[1];
      v17 = a1[2];
      if (v18 >= v17)
      {
        v20 = (v18 - *a1) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v21 = v17 - *a1;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<float>>>(a1, v23);
        }

        v24 = (8 * v20);
        *v24 = v15 | v14 | (v10 << 8);
        v19 = (8 * v20 + 8);
        v25 = a1[1] - *a1;
        v26 = v24 - v25;
        memcpy(v24 - v25, *a1, v25);
        v27 = *a1;
        *a1 = v26;
        a1[1] = v19;
        a1[2] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v18 = v15 | v14 | (v10 << 8);
        v19 = v18 + 8;
      }

      a1[1] = v19;
      if (*(v8 + 76) == 1)
      {
        v28 = *(v8 + 72);
      }

      else
      {
        v29 = *(v8 + 36);
        if ((v29 & 0x100000000) != 0)
        {
          *(v8 + 72) = v29;
          *(v8 + 76) = 1;
          v28 = *&v29;
        }

        else
        {
          v30 = Nightingale::CGradient::get_expectation(v8);
          if ((*(v8 + 76) & 1) == 0)
          {
            *(v8 + 76) = 1;
          }

          v28 = v30;
          *(v8 + 72) = v28;
        }
      }

      v11 = roundf(v28);
      v8 += 160;
    }

    while (v8 != v9);
  }
}

void sub_25C647168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngtProjector::constructSurfacedFwProjs(uint64_t a1@<X1>, uint64_t **a2@<X2>, void *a3@<X3>, int a4@<W4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  BYTE8(v42) = 0;
  v46 = 0;
  LOBYTE(v47) = 0;
  v51 = 0;
  v52 = xmmword_25C67C5D0;
  if (*(a1 + 188) == 1)
  {
    v17 = *(a1 + 184) - a4;
    v18 = v17 - 5;
    if (v17 >= 5)
    {
      v25 = a4 - *a1;
      if (!*(a1 + 4))
      {
        v25 = 0;
      }

      v24 = *(a1 + 192);
      v23 = v18;
      v22 = v17;
      v26 = v25 + v17;
      if ((*(a1 + 4) & (v24 != 0)) != 0)
      {
        v21 = v26;
      }

      else
      {
        v21 = 0;
      }

      v20 = 6;
      v19 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 3;
    }

    LODWORD(v42) = a4;
    *(&v42 + 1) = v23;
    v43 = 0;
    v44 = v23;
    v45 = v23;
    v46 = v19;
    v47 = v22;
    v48 = 0;
    v49 = v22;
    v50 = v22;
    v51 = v19;
    *&v52 = __PAIR64__(v20, v18);
    *(&v52 + 1) = __PAIR64__(v24, v21);
    if (v19)
    {
      std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a5, &v42);
    }
  }

  v28 = *a2;
  v27 = a2[1];
  if (v28 != v27)
  {
    v29 = 0;
    do
    {
      v30 = v29;
      if (v29 >= ((a3[1] - *a3) >> 3))
      {
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v31 = (*a3 + 8 * v29);
        v32 = *v31;
        v5 = *(v31 + 1) | (v31[3] << 16);
        v33 = v31[4] & 1;
      }

      v34 = 0;
      v35 = *v28;
      *&v6 &= 0xFFFFFFFFFFFFFF00;
      *&v7 &= 0xFFFFFFFFFFFFFF00;
      v36 = 3;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      if ((*v28 & 0x100000000) != 0)
      {
        v40 = v35 - 5;
        if (v35 >= 5)
        {
          v36 = *(a1 + 360);
          v6 = v40;
          v41 = v35 - v32 - (v5 << 8);
          v7 = v35;
          if ((v33 & (v36 != 0)) != 0)
          {
            v34 = v41;
          }

          else
          {
            v34 = 0;
          }

          v39 = 1;
          v37 = 6;
          v38 = v35 - 5;
          v11 = v35;
          v10 = v35;
          v9 = v40;
          v8 = v40;
        }
      }

      LODWORD(v42) = a4;
      *(&v42 + 1) = v6;
      v43 = 0;
      v44 = v8;
      v45 = v9;
      v46 = v39;
      v47 = v7;
      v48 = 0;
      v49 = v10;
      v50 = v11;
      v51 = v39;
      *&v52 = __PAIR64__(v37, v38);
      *(&v52 + 1) = __PAIR64__(v36, v34);
      if (v39)
      {
        std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a5, &v42);
      }

      HIDWORD(v52) = *(a1 + 360);
      v29 = v30 + 1;
      ++v28;
    }

    while (v28 != v27);
  }
}

void sub_25C6473EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngtProjector::shrinkLowRangeToRmOverlapFW(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      v8 = 0;
      v9 = 0x4EC4EC4EC4EC4EC5 * ((v6 - v7) >> 3);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      v10 = (v7 + 92);
      v11 = 0.0;
      do
      {
        if (*(v4 + 40) == 1)
        {
          if (!a4 || v8 >= 1)
          {
            v12 = roundf(v11);
            v13 = v9;
            v14 = v10;
            while (1)
            {
              v15 = *v14 + *(v14 - 1);
              if (v12 <= (v15 - 1) && round(*(v4 + 8)) > (v15 - 1))
              {
                break;
              }

              v14 += 26;
              if (!--v13)
              {
                goto LABEL_20;
              }
            }

            v16 = *(v4 + 88);
            if (v16 != -1 && v16 < v15)
            {
              v18 = v16 - v15 + *(v4 + 92);
              *(v4 + 88) = v15;
              *(v4 + 92) = v18;
            }
          }

LABEL_20:
          v11 = *(v4 + 8);
          ++v8;
        }

        v4 += 104;
      }

      while (v4 != v5);
    }
  }
}

void Nightingale::ngtProjector::reproductiveInfiniteHandlingPeriod(_BOOL8 a1@<X0>, __int128 **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if ((Nightingale::ngtProjector::nullifyAPeriodProj(a1, v4, a3) & 1) == 0)
      {
        std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a4, v4);
      }

      v4 = (v4 + 104);
    }

    while (v4 != v5);
  }
}

void sub_25C647568(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngtProjector::reproductiveInfiniteHandlingFw(_BOOL8 a1@<X0>, __int128 **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      if ((Nightingale::ngtProjector::nullifyAFwProj(a1, v5, a3, a4) & 1) == 0)
      {
        std::vector<Nightingale::ngt_Prediction>::push_back[abi:ne200100](a5, v5);
      }

      v5 = (v5 + 104);
    }

    while (v5 != v6);
  }
}

void sub_25C647604(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::ngtProjector::getCaContent(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 96);
  v6 = *(v5 + 8);
  if (*v5 != v6)
  {
    v7 = result;
    if (*(*(result + 112) + 36) == 1)
    {
      *a5 = *(v5 + 128);
      *(a5 + 120) = *(v6 - 24) != *(v6 - 16);
      Nightingale::ngtProjector::get1stProjMetricsCa(result, result + 656, a5 + 56);
      Nightingale::ngtProjector::get1stProjMetricsCa(v10, v7 + 552, a5 + 8);
      if (*(a2 + 505))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      if (*(a2 + 504))
      {
        v13 = v12;
      }

      else
      {
        v13 = *(a2 + 505);
      }

      *(a5 + 160) = v13;
      v14 = *(a2 + 496);
      *(a5 + 108) = *(a2 + 500);
      *(a5 + 104) = v14;
      v15 = *(a2 + 488);
      *(a5 + 116) = *(a2 + 492);
      *(a5 + 112) = v15;
      v16 = *(a2 + 444);
      v17 = *(a2 + 460);
      *(a5 + 192) = *(a2 + 472);
      *(a5 + 180) = v17;
      *(a5 + 164) = v16;
      v18 = Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(v11, (*(*(v7 + 96) + 8) - 24));
      if (v18)
      {
        v19 = *(v7 + 112);
        if (*(v19 + 36) == 1)
        {
          v20 = *(v19 + 32);
          Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v51);
          Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v50);
          JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(v21, *(v7 + 120));
          if (v23)
          {
            Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(*(v7 + 120), v20 - 13, v20, JDayIdx1stTmp, v23, &v44);
            if (v44 != v45)
            {
              *(a5 + 121) = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) > 1;
            }

            if (__p)
            {
              v49 = __p;
              operator delete(__p);
            }

            if (v46)
            {
              v47 = v46;
              operator delete(v46);
            }

            v52 = &v44;
            std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v52);
          }

          Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v50);
          Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v51);
        }

        if (*(a2 + 192))
        {
          v24 = *(a2 + 384);
          if (v24 == 2)
          {
            v25 = 2;
          }

          else
          {
            v25 = 4;
          }

          if (v24 == 1)
          {
            v26 = 1;
          }

          else
          {
            v26 = v25;
          }
        }

        else
        {
          v26 = ~(*(a2 + 184) >> 30) & 4;
        }

        *(a5 + 224) = v26;
        *v38 = *(a2 + 368);
        *(&v38[2] + 1) = *(a2 + 377);
        v40 = 0;
        v41 = 0;
        v39 = 0;
        v27 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v39, *(a2 + 400), *(a2 + 408), (*(a2 + 408) - *(a2 + 400)) >> 2);
        v42 = *(a2 + 424);
        v43 = *(a2 + 432);
        Nightingale::ngtProjector::surfaceLunaCa(v27, v38, *(a2 + 192), *(a2 + 184), a5);
        v18 = v39;
        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (*(a2 + 392) == 1 && *(a2 + 192))
        {
          v28 = *(a2 + 388);
          if (v28 >= 0xA)
          {
            v29 = 10;
          }

          else
          {
            v29 = *(a2 + 388);
          }

          v30 = v29 >> 1;
          if (v28 < 0)
          {
            v31 = -1;
          }

          else
          {
            v31 = v30;
          }
        }

        else
        {
          v31 = -1;
          *(a5 + 212) = -1;
        }

        *(a5 + 220) = v31;
      }

      CAPeriodPredictionMethod = Nightingale::ngtProjector::getCAPeriodPredictionMethod(v18, a2);
      *(a5 + 124) = CAPeriodPredictionMethod;
      v33 = *(*(v7 + 96) + 8);
      if (*(v33 - 60) == 1)
      {
        v34 = *(v7 + 112);
        if ((*(v34 + 36) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v35 = (v34 + 32);
        v36 = ((roundf(*(v33 - 64)) + -13.0) + *(v33 - 96));
        if (*(a5 + 156))
        {
          v35 = (a5 + 152);
        }

        CABoundedDaysBetweenTodayAndCalFwEnd = Nightingale::ngtProjector::getCABoundedDaysBetweenTodayAndCalFwEnd(CAPeriodPredictionMethod, *v35 - v36);
      }

      else
      {
        CABoundedDaysBetweenTodayAndCalFwEnd = 0xFFFFFFFFLL;
      }

      *(a5 + 128) = CABoundedDaysBetweenTodayAndCalFwEnd;
      result = Nightingale::ngtProjector::getCACurrentCycleFactor(CABoundedDaysBetweenTodayAndCalFwEnd, (v33 - 24));
      *(a5 + 132) = result;
    }
  }

  return result;
}

void sub_25C647944(_Unwind_Exception *a1)
{
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((v1 - 136));
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((v1 - 57));
  _Unwind_Resume(a1);
}

void Nightingale::firstFwPeriodStartOutStruct::~firstFwPeriodStartOutStruct(Nightingale::firstFwPeriodStartOutStruct *this)
{
  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

void Nightingale::ngtProjector::compute1stFWPeriodStart(Nightingale::ngtProjector *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Nightingale::firstFwPeriodStartOutStruct::firstFwPeriodStartOutStruct(a3);
  if (*(*(this + 14) + 36) != 1)
  {
    return;
  }

  v6 = *(this + 12);
  v7 = v6[1];
  if (*v6 == v7)
  {
    return;
  }

  v8 = *(v7 - 96);
  v9 = v6[13];
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v61);
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v60);
  Nightingale::ngtProjector::runLunaAlgorithm(&v47, this, a2);
  LOBYTE(v40) = 0;
  BYTE4(v40) = 0;
  BYTE8(v40) = 0;
  HIDWORD(v40) = 7;
  Nightingale::CGradient::CGradient(__p);
  LOBYTE(v44) = 0;
  BYTE4(v44) = 0;
  BYTE8(v44) = 0;
  BYTE12(v44) = 0;
  v45[0] = 0;
  *&v45[4] = 0xBF80000000000005;
  *&v45[12] = -1;
  *&v45[20] = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *&v45[28] = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v45[44] = _Q0;
  v45[52] = 0;
  v46[0] = 0;
  v46[4] = 0;
  v46[96] = 0;
  if (v49 == 7 || v53 == 5)
  {
    Nightingale::ngtProjector::runHrAlgorithm(&v28, this, a2);
    v40 = v28;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v29;
    v42 = v30;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    v43[0] = v31[0];
    *(v43 + 9) = *(v31 + 9);
    v44 = *v32;
    *v45 = *&v32[16];
    *&v45[8] = *v33;
    *&v45[24] = v34[0];
    *&v46[16] = v34[3];
    *&v46[32] = v35;
    *&v45[40] = v34[1];
    *v46 = v34[2];
    v46[96] = v39;
    *&v46[64] = v37;
    *&v46[80] = v38;
    *&v46[48] = v36;
  }

  Nightingale::fwEstimatorOPK::fwEstimatorOPK(v27);
  v15 = Nightingale::fwEstimatorOPK::getOnGoingjDayFwEndOpk(v27, v8, v9);
  Nightingale::ngtProjector::runCalAlgs(&v28, this);
  Nightingale::ngtProjector::determineFinalFwEnd(this, a3, &v47, &v40, v15 & 0xFFFFFFFFFFLL, &v28, v8);
  Nightingale::ngtProjector::determineFinalPeriod(v16, a3, &v47, &v40, &v28, v8);
  if (a2)
  {
    v17 = *(this + 12);
    if (*(v17 + 108) != 1)
    {
LABEL_18:
      v21 = *&v45[24];
      *(a3 + 444) = *&v45[8];
      *(a3 + 460) = v21;
      *(a3 + 472) = *&v45[36];
      *(a3 + 368) = v54[0];
      *(a3 + 377) = *(v54 + 9);
      if ((a3 + 368) != v54)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 400), __src, v56, (v56 - __src) >> 2);
      }

      *(a3 + 424) = v57;
      *(a3 + 432) = v58;
      *(a3 + 440) = v59;
      v22 = v45[0];
      *(a3 + 504) = BYTE8(v40);
      *(a3 + 505) = v22;
      v23 = v52;
      *(a3 + 506) = v48;
      *(a3 + 507) = v23;
      goto LABEL_21;
    }

    v18 = *(v17 + 104);
    v19 = v18 + 1;
    if ((v47 & 0x100000000) != 0)
    {
      v20 = &v47;
    }

    else
    {
      if (BYTE4(v40) != 1)
      {
LABEL_15:
        if (BYTE4(v28) == 1 && v18 > *(*(v17 + 8) - 96))
        {
          *(a3 + 488) = v28 - v19;
          *(a3 + 492) = 1;
        }

        goto LABEL_18;
      }

      v20 = &v40;
    }

    *(a3 + 496) = *v20 - v19;
    *(a3 + 500) = 1;
    goto LABEL_15;
  }

LABEL_21:
  v24 = *&v46[52];
  *(a3 + 544) = *&v46[36];
  *(a3 + 560) = v24;
  *(a3 + 576) = *&v46[68];
  *(a3 + 589) = *&v46[81];
  v25 = *&v46[20];
  *(a3 + 512) = *&v46[4];
  *(a3 + 528) = v25;
  *a3 = v28;
  if (&v28 == a3)
  {
    *(a3 + 40) = v31[0];
    *(a3 + 49) = *(v31 + 9);
    *(a3 + 72) = *v32;
    *(a3 + 85) = *&v32[13];
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 16), v29[0], v29[1], (v29[1] - v29[0]) >> 2);
    *(a3 + 40) = v31[0];
    *(a3 + 49) = *(v31 + 9);
    *(a3 + 72) = *v32;
    *(a3 + 85) = *&v32[13];
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 96), v33[0], v33[1], (v33[1] - v33[0]) >> 2);
  }

  *(a3 + 120) = *(v34 + 8);
  *(a3 + 129) = *(&v34[1] + 1);
  *(a3 + 152) = *(&v34[2] + 8);
  *(a3 + 165) = *(&v34[3] + 5);
  v26 = v33[0];
  *(a3 + 176) = v35;
  if (v26)
  {
    v33[1] = v26;
    operator delete(v26);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  Nightingale::fwEstimatorOPK::~fwEstimatorOPK(v27);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (__src)
  {
    v56 = __src;
    operator delete(__src);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v60);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v61);
}

void sub_25C647E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  Nightingale::lunaAlgOutStruct::~lunaAlgOutStruct(&STACK[0x210]);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((v46 - 160));
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((v46 - 81));
  Nightingale::firstFwPeriodStartOutStruct::~firstFwPeriodStartOutStruct(v45);
  _Unwind_Resume(a1);
}

void Nightingale::ngtProjector::runLunaAlgorithm(uint64_t *__return_ptr a1@<X8>, Nightingale::ngtProjector *this@<X0>, uint64_t a3@<X1>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 3) = 7;
  v6 = (a1 + 2);
  v7 = Nightingale::CGradient::CGradient((a1 + 2));
  *(a1 + 38) = -1;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x800000005;
  *(a1 + 50) = 0;
  *(a1 + 102) = 0;
  a1[13] = -1;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 42) = 5;
  v8 = *(this + 12);
  if (*(v8 + 84) == 1 && Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(v7, (*(v8 + 8) - 24)))
  {
    Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v45);
    JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(v9, *(this + 15));
    v11 = a1 + 12;
    if (v12)
    {
      v13 = JDayIdx1stTmp;
      v14 = Nightingale::fwEstimatorLuna::fwEstimatorLuna(v44, *(this + 14));
      Nightingale::fwEstimatorLuna::getFwEndLuna(v14, *(this + 12), *(this + 15), *(this + 14), v13, a3, &v32);
      *v11 = v39[0];
      *(a1 + 105) = *(v39 + 9);
      if (v11 != v39)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 16, v40, v41, (v41 - v40) >> 2);
      }

      a1[19] = v42;
      *(a1 + 160) = v43;
      if (v34 == 1 && v38 == 1 && v36 == 1 && v32 != 7)
      {
        Nightingale::periodEstimatorLuna::periodEstimatorLuna(v31, *(this + 14));
        v27 = 6;
        v30 = 0;
        v28 = 0;
        LOBYTE(v29) = 0;
        if (v34 != 1 || v36 != 1 || (v38 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v15 = v35;
        v16 = v37;
        if (v33 > v35)
        {
          v15 = v33;
        }

        if (v33 + 20 < v37)
        {
          v16 = v33 + 20;
        }

        v29 = v33;
        v30 = v34;
        v27 = v32;
        v28 = __PAIR64__(v16, v15);
        Nightingale::periodEstimatorLuna::estimatePeriodLuna(v31, *(this + 15), *(this + 12), *(this + 14), v13, &v27, &__p);
        *a1 = v33;
        *(a1 + 4) = v34;
        *(a1 + 3) = v32;
        if (v26 == 1)
        {
          *(a1 + 26) = -1;
        }

        else
        {
          *(a1 + 8) = v34;
        }

        if (v6 != &__p)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 2, __p, v18, (v18 - __p) >> 2);
        }

        *(a1 + 5) = v19[0];
        *(a1 + 49) = *(v19 + 9);
        *(a1 + 23) = v25;
        *(a1 + 88) = v24;
        if ((Nightingale::CGradient::get_adjusted(&__p) & 1) == 0)
        {
          if (*(a1 + 76) == v21)
          {
            if (*(a1 + 76))
            {
              *(a1 + 18) = v20;
            }
          }

          else if (*(a1 + 76))
          {
            *(a1 + 76) = 0;
          }

          else
          {
            *(a1 + 18) = v20;
            *(a1 + 76) = 1;
          }

          if (*(a1 + 84) == v23)
          {
            if (*(a1 + 84))
            {
              *(a1 + 20) = v22;
            }
          }

          else if (*(a1 + 84))
          {
            *(a1 + 84) = 0;
          }

          else
          {
            *(a1 + 20) = v22;
            *(a1 + 84) = 1;
          }
        }

        if (a3)
        {
          *(a1 + 42) = v25;
        }

        if (__p)
        {
          v18 = __p;
          operator delete(__p);
        }

        Nightingale::periodEstimatorLuna::~periodEstimatorLuna(v31);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      Nightingale::fwEstimatorLuna::~fwEstimatorLuna(v44);
    }

    else
    {
      *v11 = 1;
    }

    Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v45);
  }
}

void sub_25C648274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  Nightingale::periodEstimatorLuna::~periodEstimatorLuna(&a24);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  Nightingale::fwEstimatorLuna::~fwEstimatorLuna((v37 - 200));
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((v37 - 152));
  Nightingale::lunaAlgOutStruct::~lunaAlgOutStruct(v36);
  _Unwind_Resume(a1);
}

void Nightingale::ngtProjector::runHrAlgorithm(uint64_t *__return_ptr a1@<X8>, Nightingale::ngtProjector *this@<X0>, int a3@<W1>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 3) = 7;
  v6 = (a1 + 2);
  v7 = Nightingale::CGradient::CGradient((a1 + 2));
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0xBF80000000000005;
  *(a1 + 100) = -1;
  *(a1 + 108) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a1 + 116) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 132) = _Q0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 240) = 0;
  if (Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(v7, (*(*(this + 12) + 8) - 24)))
  {
    Nightingale::lstmHrFw::lstmHrFw(v33, *(this + 15), *(this + 12), *(this + 14), *(this + 13));
    Nightingale::lstmHrFw::getFWEndHr(v28, v33, a3);
    Nightingale::lstmHrPeriod::lstmHrPeriod(v27, *(this + 15), *(this + 12), *(this + 14), *(this + 13), v28[2]);
    Nightingale::lstmHrPeriod::estimatePeriodStartHr(&__p, v27);
    Nightingale::lstmHrPeriod::getEnsembleTelemetry(v17, v27);
    *a1 = v28[0];
    v13 = BYTE4(v28[0]);
    *(a1 + 4) = BYTE4(v28[0]);
    *(a1 + 8) = v13;
    if (v13)
    {
      *(a1 + 3) = 4;
    }

    if (v6 != &__p)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 2, __p, v20, (v20 - __p) >> 2);
    }

    *(a1 + 5) = v21[0];
    *(a1 + 49) = *(v21 + 9);
    if ((Nightingale::CGradient::get_adjusted(&__p) & 1) == 0)
    {
      *(a1 + 18) = v22;
      *(a1 + 76) = v23;
      *(a1 + 20) = v24;
      *(a1 + 84) = v25;
    }

    v14 = v26;
    *(a1 + 88) = v26;
    if (v14 == 1 && !Nightingale::CGradient::get_vGrad_empty(&__p))
    {
      *(a1 + 23) = 3;
    }

    v15 = v17[3];
    *(a1 + 180) = v17[2];
    *(a1 + 196) = v15;
    *(a1 + 212) = v18[0];
    *(a1 + 225) = *(v18 + 13);
    v16 = v17[1];
    *(a1 + 148) = v17[0];
    *(a1 + 164) = v16;
    if (a3)
    {
      *(a1 + 6) = v29;
      *(a1 + 7) = *v30;
      *(a1 + 124) = *&v30[12];
      *(a1 + 35) = v31;
      *(a1 + 144) = v32;
    }

    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    Nightingale::lstmHrPeriod::~lstmHrPeriod(v27);
    Nightingale::lstmHrFw::~lstmHrFw(v33);
  }
}

void sub_25C648538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  Nightingale::lstmHrPeriod::~lstmHrPeriod(&a32);
  Nightingale::lstmHrFw::~lstmHrFw(&STACK[0x350]);
  v35 = *v33;
  if (*v33)
  {
    *(v32 + 24) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void Nightingale::ngtProjector::runCalAlgs(uint64_t *__return_ptr a1@<X8>, Nightingale::ngtProjector *this@<X0>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  a1[1] = 3;
  Nightingale::CGradient::CGradient((a1 + 2));
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  Nightingale::CGradient::CGradient((a1 + 12));
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  a1[22] = 3;
  v4 = *(this + 12);
  v6 = *v4;
  v5 = v4[1];
  if (v6 != v5 && *(v5 - 52) == 1 && *(v5 - 60) == 1)
  {
    Nightingale::periodEstimatorCalendar::periodEstimatorCalendar(v16, *(this + 14));
    Nightingale::fwEstimatorCalendar::fwEstimatorCalendar(v15);
    Nightingale::periodEstimatorCalendar::predict1stPeriodStartCal(v16, *(*(this + 12) + 8) - 96, *(*(this + 12) + 104), *(*(this + 12) + 96), *(*(this + 12) + 124) | 0x100000000, &v12);
    v7 = a1[2];
    if (v7)
    {
      a1[3] = v7;
      operator delete(v7);
    }

    *(a1 + 1) = v12;
    a1[4] = v13;
    *(a1 + 5) = v14[0];
    *(a1 + 49) = *(v14 + 9);
    *(a1 + 44) = 3;
    if (!Nightingale::CGradient::get_vGrad_empty((a1 + 2)))
    {
      v8 = *(*(*(this + 12) + 8) - 96);
      if (*(a1 + 92) == 1)
      {
        expectation = *(a1 + 22);
      }

      else
      {
        v10 = *(a1 + 52);
        if ((v10 & 0x100000000) != 0)
        {
          *(a1 + 22) = v10;
          expectation = *&v10;
        }

        else
        {
          expectation = Nightingale::CGradient::get_expectation((a1 + 2));
          *(a1 + 22) = expectation;
        }
      }

      *(a1 + 92) = 1;
      v11 = Nightingale::fwEstimatorCalendar::getjDayFwEndCal(v15, v8, (roundf(expectation) + v8));
      *a1 = v11;
      *(a1 + 4) = BYTE4(v11);
      *(a1 + 2) = 3;
    }

    Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(v15);
    Nightingale::periodEstimatorCalendar::~periodEstimatorCalendar(v16);
  }
}

void sub_25C648750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(va);
  Nightingale::periodEstimatorCalendar::~periodEstimatorCalendar((v16 - 64));
  Nightingale::fwPeriodEstimateStruct::~fwPeriodEstimateStruct(v15);
  _Unwind_Resume(a1);
}

void Nightingale::ngtProjector::determineFinalFwEnd(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((a5 & 0x100000000) != 0)
  {
    *(a2 + 184) = a5;
    *(a2 + 188) = BYTE4(a5);
LABEL_4:
    *(a2 + 192) = 0;
    return;
  }

  if (*(*(a1 + 96) + 108) == 1)
  {
    goto LABEL_4;
  }

  if (*(a3 + 4) == 1)
  {
    v8 = *a3;
    *(a2 + 188) = *(a3 + 4);
    *(a2 + 184) = v8;
    *(a2 + 192) = 1;
    *(a2 + 440) = a3[42];
  }

  else if (*(a4 + 4) == 1)
  {
    v10 = *a4;
    *(a2 + 188) = *(a4 + 4);
    *(a2 + 184) = v10;
    *(a2 + 192) = 2;
  }

  else
  {
    if (*(a6 + 4) == 1)
    {
      *(a2 + 184) = *a6;
      *(a2 + 188) = 1;
      *(a2 + 192) = 3;
    }

    if (a4[23] == 3 && ((Nightingale::CGradient::get_isNull((a6 + 16)) & 1) != 0 || (*(a6 + 4) & 1) == 0))
    {
      Nightingale::fwEstimatorCalendar::fwEstimatorCalendar(v15);
      expectation = Nightingale::CGradient::get_expectation((a4 + 4));
      v14 = Nightingale::fwEstimatorCalendar::getjDayFwEndCal(v15, a7, (round(expectation) + a7));
      *(a2 + 184) = v14;
      *(a2 + 188) = BYTE4(v14);
      *(a2 + 192) = 2;
      Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(v15);
    }
  }
}

void sub_25C6488F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(va);
  _Unwind_Resume(a1);
}

void Nightingale::ngtProjector::determineFinalPeriod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  Nightingale::periodEstimatorAggregation::periodEstimatorAggregation(&v22);
  if (Nightingale::periodEstimatorAggregation::period1stProjFromluna(&v22, (a3 + 92)))
  {
    if (a2 + 200 != a3 + 16)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a2 + 200), *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
    }

    v11 = *(a3 + 40);
    *(a2 + 233) = *(a3 + 49);
    *(a2 + 224) = v11;
    *(a2 + 360) = 1;
    v12 = *(a3 + 72);
    *(a2 + 260) = *(a3 + 76);
    *(a2 + 256) = v12;
    v13 = *(a3 + 80);
    *(a2 + 268) = *(a3 + 84);
    *(a2 + 264) = v13;
    expectation = Nightingale::CGradient::get_expectation((a3 + 16));
LABEL_12:
    if ((*(a2 + 276) & 1) == 0)
    {
      *(a2 + 276) = 1;
    }

    v19 = expectation;
    *(a2 + 272) = v19;
    goto LABEL_15;
  }

  if (Nightingale::periodEstimatorAggregation::period1stProjFromHR(&v22, (a4 + 92)))
  {
    if (*(a2 + 188) != 1)
    {
      goto LABEL_9;
    }

    v15 = Nightingale::CGradient::get_expectation((a4 + 16));
    if ((*(a2 + 188) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (round(v15) + a6 - *(a2 + 184) >= 6.0)
    {
LABEL_9:
      if (a2 + 200 != a4 + 16)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a2 + 200), *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 2);
      }

      v16 = *(a4 + 40);
      *(a2 + 233) = *(a4 + 49);
      *(a2 + 224) = v16;
      *(a2 + 360) = 2;
      v17 = *(a4 + 72);
      *(a2 + 260) = *(a4 + 76);
      *(a2 + 256) = v17;
      v18 = *(a4 + 80);
      *(a2 + 268) = *(a4 + 84);
      *(a2 + 264) = v18;
      expectation = Nightingale::CGradient::get_expectation((a4 + 16));
      goto LABEL_12;
    }
  }

  else if ((*(a3 + 88) & 1) == 0 && (*(a4 + 88) & 1) == 0)
  {
    if (a2 + 200 != a5 + 16)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a2 + 200), *(a5 + 16), *(a5 + 24), (*(a5 + 24) - *(a5 + 16)) >> 2);
    }

    v20 = *(a5 + 40);
    *(a2 + 233) = *(a5 + 49);
    *(a2 + 224) = v20;
    v21 = *(a5 + 72);
    *(a2 + 269) = *(a5 + 85);
    *(a2 + 256) = v21;
    *(a2 + 360) = *(a5 + 176);
  }

LABEL_15:
  Nightingale::periodEstimatorAggregation::~periodEstimatorAggregation(&v22);
}

void Nightingale::fwPeriodEstimateStruct::~fwPeriodEstimateStruct(Nightingale::fwPeriodEstimateStruct *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void Nightingale::lunaAlgOutStruct::~lunaAlgOutStruct(Nightingale::lunaAlgOutStruct *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

BOOL Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(uint64_t a1, unsigned __int8 **a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  v2 = Nightingale::phaseFactorProcessor::containContraceptiveCycleFactors(&__p, a2);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return !v2;
}

void sub_25C648BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<Nightingale::periodEstimationOutStruct>::operator=[abi:ne200100]<Nightingale::periodEstimationOutStruct&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    if (a1 != a2)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    }

    v4 = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 24) = v4;
    v5 = *(a2 + 56);
    *(a1 + 69) = *(a2 + 69);
    *(a1 + 56) = v5;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v6 = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 24) = v6;
    v7 = *(a2 + 56);
    *(a1 + 69) = *(a2 + 69);
    *(a1 + 56) = v7;
    *(a1 + 80) = 1;
  }

  return a1;
}

void Nightingale::ngtProjector::offsetFwEnd2NgtPrediction(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  *(a5 + 8) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = xmmword_25C67C5D0;
  if ((a1 & 0x100000000) != 0)
  {
    v5 = a1 - 5;
    if (a1 >= 5)
    {
      *(a5 + 88) = v5;
      *(a5 + 92) = 6;
      *a5 = a4;
      *(a5 + 100) = a3;
      *(a5 + 8) = v5;
      *(a5 + 16) = 0;
      *(a5 + 24) = v5;
      *(a5 + 32) = v5;
      *(a5 + 40) = 1;
      *(a5 + 48) = a1;
      *(a5 + 56) = 0;
      *(a5 + 64) = a1;
      *(a5 + 72) = a1;
      *(a5 + 80) = 1;
      if ((a2 & 0x100000000) != 0)
      {
        if (a3)
        {
          *(a5 + 96) = a1 - a2;
        }
      }
    }
  }
}

double Nightingale::ngtProjector::getAMetricFromperiodEstimationOut(uint64_t a1, Nightingale::CGradient *this)
{
  vGrad_empty = Nightingale::CGradient::get_vGrad_empty(this);
  result = 0.0;
  if (!vGrad_empty)
  {
    Nightingale::ngtProjector::computeLowRangeMeanStd(a1, this);
    result = *(this + 18);
    if (!*(this + 76))
    {
      return 0.0;
    }
  }

  return result;
}

float Nightingale::ngtProjector::computeLowRangeMeanStd(uint64_t a1, Nightingale::CGradient *this)
{
  if (*(this + 76) == 1)
  {
    v4 = *(this + 18);
  }

  else
  {
    v5 = *(this + 36);
    if ((v5 & 0x100000000) != 0)
    {
      *(this + 18) = v5;
      *(this + 76) = 1;
      v4 = *&v5;
    }

    else
    {
      expectation = Nightingale::CGradient::get_expectation(this);
      if ((*(this + 76) & 1) == 0)
      {
        *(this + 76) = 1;
      }

      v4 = expectation;
      *(this + 18) = v4;
    }
  }

  std = Nightingale::CGradient::get_std(this);
  if ((*(this + 44) & 0x100000000) != 0)
  {
    LODWORD(v8) = *(this + 44);
  }

  else
  {
    v8 = std;
  }

  v9 = *(a1 + 760);
  if (*(this + 60) == 1)
  {
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(this + 14);
    goto LABEL_17;
  }

  v10 = v4 + (v8 * -1.28);
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  *(this + 14) = v10;
  *(this + 60) = 1;
  if ((v9 & 0x100000000) != 0)
  {
LABEL_17:
    v11 = v9 + 1;
    if (v10 < v11)
    {
      v10 = v11;
    }

    *(this + 14) = v10;
    *(this + 60) = 1;
  }

LABEL_20:
  if ((*(this + 68) & 1) == 0)
  {
    v12 = v4 + (v8 * 1.28);
    vGrad_len = Nightingale::CGradient::get_vGrad_len(this);
    if (v12 <= vGrad_len)
    {
      vGrad_len = v12;
    }

    *(this + 16) = vGrad_len;
    *(this + 68) = 1;
  }

  return v8;
}

uint64_t Nightingale::ngtProjector::nullifyAFwProj(_BOOL8 a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (Nightingale::ngtProjector::isFinite_aProj(a1, a2))
  {
    if ((Nightingale::CGradient::get_isNull(a4) & 1) != 0 || (Nightingale::CGradient::get_isNull(a4) & 1) == 0 && *(a4 + 76) == 1 && *(a4 + 72) > (*(a2 + 22) + *(a2 + 23) - 1))
    {
      v7 = a2[5];
      v20 = a2[4];
      v21 = v7;
      v22 = *(a2 + 12);
      v8 = a2[1];
      v16 = *a2;
      v17 = v8;
      v9 = a2[3];
      v18 = a2[2];
      v19 = v9;
      v10 = Nightingale::phaseFactorProjector::projected1stFWFailRepro(&v23, &v16, a3);
    }

    else
    {
      v12 = a2[5];
      v20 = a2[4];
      v21 = v12;
      v22 = *(a2 + 12);
      v13 = a2[1];
      v16 = *a2;
      v17 = v13;
      v14 = a2[3];
      v18 = a2[2];
      v19 = v14;
      v10 = Nightingale::phaseFactorProjector::projectedFWFailRepro(&v23, &v16, a3);
    }

    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v11;
}

void sub_25C649010(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::ngtProjector::nullifyAPeriodProj(_BOOL8 a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!Nightingale::ngtProjector::isFinite_aProj(a1, a2))
  {
    return 1;
  }

  v5 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v5;
  v11 = *(a2 + 96);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v8 = Nightingale::phaseFactorProjector::projectedPeriodFailRepro(&v12, v10, a3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v8;
}

void sub_25C6490B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double Nightingale::ngtProjector::get1stProjMetricsCa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40) == 1 && *(a2 + 80) == 1)
  {
    *(a3 + 32) = *(a2 + 88);
    *(a3 + 36) = 1;
    *(a3 + 40) = *(a2 + 92);
    *(a3 + 44) = 1;
    if (*(a2 + 40) == 1)
    {
      result = *(a2 + 8);
      *a3 = result;
      *(a3 + 8) = 1;
    }

    if (*(a2 + 80) == 1)
    {
      result = *(a2 + 48);
      *(a3 + 16) = result;
      *(a3 + 24) = 1;
    }
  }

  return result;
}

uint64_t Nightingale::ngtProjector::getCaFwEndConfirmationMethodLuna(uint64_t a1, int a2, int a3, unint64_t a4)
{
  if (a2 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (a2 == 1)
  {
    v4 = 1;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return ~(a4 >> 30) & 4;
  }
}

void Nightingale::ngtProjector::surfaceLunaCa(uint64_t a1, int *a2, int a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 208) = *(a2 + 4);
  *(a5 + 209) = *(a2 + 5);
  *(a5 + 212) = *(a2 + 1);
  v5 = *(a2 + 4);
  if (*(a2 + 5) - v5 == 12)
  {
    v6 = vcgt_u32(0x2E0000002ELL, *v5);
    *(a5 + 140) = vorn_s8(vand_s8(*v5, v6), v6);
    v7 = v5[1].u32[0];
    if (v7 >= 0x2E)
    {
      v7 = -1;
    }

    *(a5 + 148) = v7;
  }

  if (*(a2 + 24) == 1)
  {
    v8 = a2[5];
    if (v8 >= 0xA)
    {
      v9 = 10;
    }

    else
    {
      v9 = a2[5];
    }

    v10 = v9 >> 1;
    if (v8 < 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = -1;
  }

  *(a5 + 220) = v11;
  v12 = a2[14];
  if (v12 >= 0x2E)
  {
    v12 = -1;
  }

  *(a5 + 136) = v12;
  v13 = a2[15];
  *(a5 + 156) = *(a2 + 64);
  *(a5 + 152) = v13;
  if (a3)
  {
    v14 = a2[4];
    if (v14 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    if (v14 == 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = *a2;
  }

  else
  {
    v16 = ~(a4 >> 30) & 4;
    v17 = *a2;
    if ((a4 & 0x100000000) != 0)
    {
      v17 = 0;
    }
  }

  *(a5 + 224) = v16;
  *(a5 + 228) = v17;
}

uint64_t Nightingale::ngtProjector::getCAtBoundedDaysBetweenFwEndAndNotification(Nightingale::ngtProjector *this, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    v2 = 10;
  }

  else
  {
    v2 = a2;
  }

  v3 = v2 >> 1;
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t Nightingale::ngtProjector::getCAPeriodPredictionMethod(Nightingale::ngtProjector *this, const Nightingale::firstFwPeriodStartOutStruct *a2)
{
  if (Nightingale::CGradient::get_vGrad_empty((a2 + 200)))
  {
    return 5;
  }

  v4 = *(a2 + 90);
  if (v4 == 1)
  {
    v6 = *(a2 + 110);
    if (v6 >= 3)
    {
      return 5;
    }

    return dword_25C67C620[v6];
  }

  else
  {
    if (v4 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 5;
    }

    if (v4 == 3)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t Nightingale::ngtProjector::getCABoundedDaysBetweenTodayAndCalFwEnd(Nightingale::ngtProjector *this, int a2)
{
  if ((a2 - 3) >= 8)
  {
    v2 = 11;
  }

  else
  {
    v2 = a2;
  }

  if (a2 >= 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a2 >= -2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a2 >= -10)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Nightingale::ngtProjector::getCACurrentCycleFactor(uint64_t a1, unsigned __int8 **a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = 1541;
  v11 = 7;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v10, &__p, 3);
  v3 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v15, a2, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v10 = 770;
    v11 = 4;
    v13 = 0;
    v14 = 0;
    __p = 0;
    std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v10, &__p, 3);
    v5 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v15, a2, &__p);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      v4 = 4;
    }

    else
    {
      LOBYTE(v10) = 0;
      v13 = 0;
      v14 = 0;
      __p = 0;
      std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v10, &v10 + 1, 1);
      v6 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v15, a2, &__p);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      v4 = 1;
      if (!v6)
      {
        LOBYTE(v10) = 1;
        v13 = 0;
        v14 = 0;
        __p = 0;
        std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v10, &v10 + 1, 1);
        v7 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v15, a2, &__p);
        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }

        if (v7)
        {
          v4 = 2;
        }

        else
        {
          LOBYTE(v10) = 8;
          v13 = 0;
          v14 = 0;
          __p = 0;
          std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v10, &v10 + 1, 1);
          v8 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v15, a2, &__p);
          if (__p)
          {
            v13 = __p;
            operator delete(__p);
          }

          if (v8)
          {
            v4 = 5;
          }

          else
          {
            v4 = 0;
          }
        }
      }
    }
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v4;
}

void sub_25C649518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::ngtProjector::getCABoundedNumberOfDays(Nightingale::ngtProjector *this, unsigned int a2)
{
  if (a2 >= 0x2E)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

__n128 Nightingale::ngtProjector::getEnsembleTelemetry@<Q0>(Nightingale::ngtProjector *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 3);
  a2[2] = *(this + 2);
  a2[3] = v2;
  v3 = *(this + 5);
  a2[4] = *(this + 4);
  a2[5] = v3;
  result = *this;
  v5 = *(this + 1);
  *a2 = *this;
  a2[1] = v5;
  return result;
}

void *Nightingale::phaseFactorProjector::phaseFactorProjector(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

BOOL Nightingale::ngtProjector::isFinite_aProj(_BOOL8 isFinite_aGrad, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    isFinite_aGrad = Nightingale::ngtProjector::isFinite_aGrad(isFinite_aGrad, (a2 + 8));
    if (!isFinite_aGrad)
    {
      log = ha_get_log(isFinite_aGrad);
      result = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      Nightingale::ngtProjector::isFinite_aProj();
      return 0;
    }
  }

  if (*(a2 + 80) != 1)
  {
    return 1;
  }

  v3 = Nightingale::ngtProjector::isFinite_aGrad(isFinite_aGrad, (a2 + 48));
  if (v3)
  {
    return 1;
  }

  v6 = ha_get_log(v3);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
  if (result)
  {
    Nightingale::ngtProjector::isFinite_aProj();
    return 0;
  }

  return result;
}

uint64_t Nightingale::phaseFactorProjector::projected1stFWFailRepro(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  LODWORD(v11[0]) = 84148994;
  WORD2(v11[0]) = 1798;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v13, v11, v11 + 6, 6);
  v6 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v6;
  v12 = *(a2 + 96);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v9 = Nightingale::phaseFactorProjector::failReproAProjection(a1, v11, &v13, a3);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v9;
}

void sub_25C6496F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::phaseFactorProjector::projectedFWFailRepro(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  LODWORD(v11[0]) = 67305984;
  WORD2(v11[0]) = 1541;
  BYTE6(v11[0]) = 7;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v13, v11, v11 + 7, 7);
  v6 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v6;
  v12 = *(a2 + 96);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v9 = Nightingale::phaseFactorProjector::failReproAProjection(a1, v11, &v13, a3);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v9;
}

void sub_25C6497D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::phaseFactorProjector::~phaseFactorProjector(Nightingale::phaseFactorProjector *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t Nightingale::phaseFactorProjector::projectedPeriodFailRepro(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v5;
  v15 = *(a2 + 96);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  v7 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v7;
  v10 = 0;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v10, &__p, 1);
  v8 = Nightingale::phaseFactorProjector::failReproAProjection(a1, v14, &__p, a3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_25C6498BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL Nightingale::ngtProjector::isFinite_aGrad(uint64_t a1, void *a2)
{
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    log = ha_get_log(a1);
    result = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad();
    return 0;
  }

  if ((a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4 = ha_get_log(a1);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad();
    return 0;
  }

  if ((a2[2] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v5 = ha_get_log(a1);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad();
    return 0;
  }

  if ((a2[3] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = ha_get_log(a1);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad();
    return 0;
  }

  return 1;
}

uint64_t Nightingale::phaseFactorProjector::failReproAProjection(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2[23];
  if (v4 < 1)
  {
    v9 = 1;
  }

  else
  {
    v7 = (a2[22] + *a2);
    v8 = v7 | ((v4 + v7 - 1) << 32);
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&__p, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    v9 = Nightingale::phaseFactorProcessor::detectPhases(a1, v8, &__p, a4);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  return v9 & 1;
}

void sub_25C649AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double Nightingale::coreAnalyticsDayStream_t::coreAnalyticsDayStream_t(Nightingale::coreAnalyticsDayStream_t *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 104) = 0;
  *(this + 108) = 0;
  *(this + 112) = 0;
  *(this + 116) = 0;
  *(this + 60) = 0;
  *(this + 124) = -4294967291;
  *(this + 33) = 0;
  *(this + 17) = -1;
  *(this + 18) = -1;
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 41) = -1082130432;
  *(this + 21) = -1;
  *(this + 22) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(this + 184) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(this + 25) = _Q0;
  *(this + 104) = 0;
  *(this + 210) = 0;
  result = NAN;
  *(this + 212) = xmmword_25C67C5E0;
  *(this + 57) = 9;
  return result;
}

void Nightingale::structDLIn_hr::~structDLIn_hr(Nightingale::structDLIn_hr *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_Prediction>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<Nightingale::ngt_Prediction>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::ngt_Prediction*>,std::__wrap_iter<Nightingale::ngt_Prediction*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 3) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 3);
    if (v12 > 0x276276276276276)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_Prediction>>(a1, v15);
    }

    v41 = 8 * (v13 >> 3);
    v42 = 104 * a5;
    v43 = (v41 + 104 * a5);
    v44 = v41;
    do
    {
      v45 = *v7;
      v46 = *(v7 + 2);
      *(v44 + 16) = *(v7 + 1);
      *(v44 + 32) = v46;
      *v44 = v45;
      v47 = *(v7 + 3);
      v48 = *(v7 + 4);
      v49 = *(v7 + 5);
      *(v44 + 96) = *(v7 + 12);
      *(v44 + 64) = v48;
      *(v44 + 80) = v49;
      *(v44 + 48) = v47;
      v44 += 104;
      v7 += 104;
      v42 -= 104;
    }

    while (v42);
    memcpy(v43, v5, a1[1] - v5);
    v50 = *a1;
    v51 = &v43[a1[1] - v5];
    a1[1] = v5;
    v52 = v5 - v50;
    v53 = (v41 - (v5 - v50));
    memcpy(v53, v50, v52);
    v54 = *a1;
    *a1 = v53;
    a1[1] = v51;
    a1[2] = 0;
    if (v54)
    {
      operator delete(v54);
    }

    return v41;
  }

  v16 = v10 - __dst;
  if (0x4EC4EC4EC4EC4EC5 * ((v10 - __dst) >> 3) >= a5)
  {
    v33 = &__dst[104 * a5];
    v34 = v10 - 104 * a5;
    v35 = a1[1];
    while (v34 < v10)
    {
      v36 = *v34;
      v37 = *(v34 + 32);
      *(v35 + 16) = *(v34 + 16);
      *(v35 + 32) = v37;
      *v35 = v36;
      v38 = *(v34 + 48);
      v39 = *(v34 + 64);
      v40 = *(v34 + 80);
      *(v35 + 96) = *(v34 + 96);
      *(v35 + 64) = v39;
      *(v35 + 80) = v40;
      *(v35 + 48) = v38;
      v34 += 104;
      v35 += 104;
    }

    a1[1] = v35;
    if (v10 != v33)
    {
      memmove(&__dst[104 * a5], __dst, v10 - v33);
    }

    v32 = 104 * a5;
    v30 = v5;
    v31 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(a1[1], &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  a1[1] = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[104 * a5];
    v21 = v10 + v18;
    if (&v19[-104 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -104 * a5];
      do
      {
        v24 = v22 - v7;
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        *(v24 + 16) = *(v23 - v7 + 16);
        *(v24 + 32) = v26;
        *v24 = v25;
        v27 = *(v23 - v7 + 48);
        v28 = *(v23 - v7 + 64);
        v29 = *(v23 - v7 + 80);
        *(v24 + 96) = *(v23 - v7 + 96);
        *(v24 + 64) = v28;
        *(v24 + 80) = v29;
        *(v24 + 48) = v27;
        v23 += 104;
        v22 += 104;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    a1[1] = v21;
    if (v19 != v20)
    {
      memmove(&v5[104 * a5], v5, v19 - v20);
    }

    v30 = v5;
    v31 = v7;
    v32 = v10 - v5;
LABEL_28:
    memmove(v30, v31, v32);
  }

  return v5;
}

Nightingale::firstFwPeriodStartOutStruct *Nightingale::firstFwPeriodStartOutStruct::firstFwPeriodStartOutStruct(Nightingale::firstFwPeriodStartOutStruct *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 1) = 3;
  Nightingale::CGradient::CGradient(this + 16);
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  Nightingale::CGradient::CGradient(this + 96);
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 160) = 0;
  *(this + 164) = 0;
  *(this + 168) = 0;
  *(this + 172) = 0;
  *(this + 22) = 3;
  *(this + 184) = 0;
  *(this + 188) = 0;
  *(this + 24) = 3;
  Nightingale::CGradient::CGradient(this + 200);
  *(this + 256) = 0;
  *(this + 260) = 0;
  *(this + 264) = 0;
  *(this + 268) = 0;
  *(this + 272) = 0;
  *(this + 276) = 0;
  Nightingale::CGradient::CGradient(this + 280);
  *(this + 336) = 0;
  *(this + 340) = 0;
  *(this + 344) = 0;
  *(this + 348) = 0;
  *(this + 352) = 0;
  *(this + 356) = 0;
  *(this + 45) = 3;
  *(this + 92) = 8;
  *(this + 186) = 0;
  *(this + 374) = 0;
  *(this + 47) = -1;
  *(this + 388) = 0;
  *(this + 392) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 50) = 0;
  *(this + 106) = -1;
  *(this + 428) = 0;
  *(this + 432) = 0;
  *(this + 111) = -1082130432;
  *(this + 56) = -1;
  *(this + 57) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(this + 29) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(this + 60) = _Q0;
  *(this + 488) = 0;
  *(this + 492) = 0;
  *(this + 496) = 0;
  *(this + 500) = 0;
  *(this + 126) = 0;
  *(this + 512) = 0;
  *(this + 604) = 0;
  return this;
}

void sub_25C64A0B8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 25);
  if (v3)
  {
    *(v1 + 26) = v3;
    operator delete(v3);
  }

  Nightingale::fwPeriodEstimateStruct::~fwPeriodEstimateStruct(v1);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__assign_with_size[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 5) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 160;
        std::__destroy_at[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *>(&v15, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a1, a2 + v11, a3, a1[1]);
  }
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 160;
        std::__destroy_at[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:ne200100](a4, v6);
      v6 += 160;
      a4 += 20;
      v7 -= 160;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_25C64A37C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 160;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v4);
      v4 -= 160;
      v2 += 160;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v4 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 3) = v4;
  v5 = *(a2 + 56);
  v6 = *(a2 + 69);
  a1[10] = 0;
  *(a1 + 69) = v6;
  *(a1 + 7) = v5;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 10, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  v7 = *(a2 + 104);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 13) = v7;
  v8 = *(a2 + 136);
  *(a1 + 149) = *(a2 + 149);
  *(a1 + 17) = v8;
  return a1;
}

void sub_25C64A444(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a4 + 80;
  do
  {
    if (v4 == v6 - 80)
    {
      v9 = *(v4 + 24);
      *(v6 - 47) = *(v4 + 33);
      *(v6 - 56) = v9;
      v10 = *(v4 + 56);
      *(v6 - 11) = *(v4 + 69);
      *(v6 - 24) = v10;
    }

    else
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v6 - 80), *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 2);
      v7 = *(v4 + 24);
      *(v6 - 47) = *(v4 + 33);
      *(v6 - 56) = v7;
      v8 = *(v4 + 56);
      *(v6 - 11) = *(v4 + 69);
      *(v6 - 24) = v8;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v6, *(v4 + 80), *(v4 + 88), (*(v4 + 88) - *(v4 + 80)) >> 2);
    }

    v11 = *(v4 + 104);
    *(v6 + 33) = *(v4 + 113);
    *(v6 + 24) = v11;
    v12 = *(v4 + 136);
    *(v6 + 69) = *(v4 + 149);
    *(v6 + 56) = v12;
    v4 += 160;
    v6 += 160;
  }

  while (v4 != v5);
  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 160;
        std::__destroy_at[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:ne200100]<true,0>(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v2 = Nightingale::CGradient::CGradient(a1);
  v2[5] = 0u;
  v2 += 5;
  *(v2 - 24) = 0;
  *(v2 - 20) = 0;
  *(a1 + 64) = 0;
  *(v2 - 12) = 0;
  *(v2 - 8) = 0;
  *(v2 - 4) = 0;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  Nightingale::CGradient::CGradient(v2);
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  return a1;
}

void sub_25C64A700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:ne200100]<Nightingale::periodEstimationOutStruct&,Nightingale::periodEstimationOutStruct&,0>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v6 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 3) = v6;
  v7 = *(a2 + 56);
  v8 = *(a2 + 69);
  a1[10] = 0;
  *(a1 + 69) = v8;
  *(a1 + 7) = v7;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 10, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v9 = *(a3 + 24);
  *(a1 + 113) = *(a3 + 33);
  *(a1 + 13) = v9;
  v10 = *(a3 + 56);
  *(a1 + 149) = *(a3 + 69);
  *(a1 + 17) = v10;
  return a1;
}

void sub_25C64A7C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL Nightingale::FwPredictorWrapper_t::init(Nightingale::FwPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if (*(a2 + 191) >= 0)
  {
    v4 = a2 + 168;
  }

  else
  {
    v4 = *(a2 + 21);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v8 = *(a2 + 24);
  v7 = a2 + 192;
  v6 = v8;
  if (v7[23] >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v13 = objc_opt_new();
  v14 = *(this + 3);
  *(this + 3) = v13;

  if (!*(this + 3))
  {
    goto LABEL_16;
  }

  v15 = objc_opt_new();
  v16 = *(this + 2);
  *(this + 2) = v15;

  if (!*(this + 2))
  {
    goto LABEL_16;
  }

  [*(this + 3) setComputeUnits:0];
  v41 = 0;
  v17 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_286E2EA60 dataType:65600 error:&v41];
  v18 = v41;
  v19 = *(this + 1);
  *(this + 1) = v17;

  if (!*(this + 1))
  {
    goto LABEL_18;
  }

  v20 = [fwEnddet_lstm alloc];
  v21 = *(this + 3);
  v40 = v18;
  v22 = [(fwEnddet_lstm *)v20 initWithContentsOfURL:v11 configuration:v21 error:&v40];
  v23 = v40;

  v24 = *(this + 7);
  *(this + 7) = v22;

  if (!v23)
  {
    v26 = objc_opt_new();
    v27 = *(this + 3);
    *(this + 3) = v26;

    if (*(this + 3))
    {
      v28 = objc_opt_new();
      v29 = *(this + 2);
      *(this + 2) = v28;

      if (*(this + 2))
      {
        [*(this + 3) setComputeUnits:0];
        v39 = 0;
        v30 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_286E2EA78 dataType:65600 error:&v39];
        v18 = v39;
        v31 = *this;
        *this = v30;

        if (*this)
        {
          v32 = [fwEnddet_rf alloc];
          v33 = *(this + 3);
          v38 = v18;
          v34 = [(fwEnddet_rf *)v32 initWithContentsOfURL:v12 configuration:v33 error:&v38];
          v35 = v38;

          v36 = *(this + 5);
          *(this + 5) = v34;

          v25 = v35 == 0;
          v18 = v35;
          goto LABEL_17;
        }

LABEL_18:
        v25 = 0;
        goto LABEL_17;
      }
    }

LABEL_16:
    v25 = 0;
    v18 = 0;
    goto LABEL_17;
  }

  v25 = 0;
  v18 = v23;
LABEL_17:

  return v25;
}

id **std::unique_ptr<Nightingale::FwPredictorWrapper_t>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x25F88A130](v2, 0x80C40A284212CLL);
  }

  return a1;
}

uint64_t Nightingale::FwPredictorWrapper_t::predict_fwEndDetRF(void *a1, uint64_t *a2, const void **a3)
{
  std::vector<double>::vector[abi:ne200100](&__p, 0x11uLL);
  v6 = 0;
  v7 = *a2;
  v8 = __p;
  do
  {
    *&v8[v6] = *(v7 + v6);
    v6 += 8;
  }

  while (v6 != 136);
  v9 = v34;
  v10 = [*a1 dataPointer];
  if (v9 != v8)
  {
    memmove(v10, v8, v9 - v8);
  }

  v11 = [[fwEnddet_rfInput alloc] initWithInput:*a1];
  v12 = a1[4];
  a1[4] = v11;

  v13 = [a1[5] model];
  v14 = a1[4];
  v15 = a1[2];
  v32 = 0;
  v16 = [v13 predictionFromFeatures:v14 options:v15 error:&v32];
  v17 = v32;

  v18 = [fwEnddet_rfOutput alloc];
  v19 = [v16 featureValueForName:@"classLabel"];
  v20 = [v19 int64Value];
  v21 = [v16 featureValueForName:@"classProbability"];
  v22 = [v21 dictionaryValue];
  v23 = [(fwEnddet_rfOutput *)v18 initWithClassLabel:v20 classProbability:v22];

  v24 = [(fwEnddet_rfOutput *)v23 classProbability];
  v25 = [v24 objectForKeyedSubscript:&unk_286E2EC28];
  [v25 doubleValue];
  *&v26 = v26;
  v31 = LODWORD(v26);
  std::vector<float>::push_back[abi:ne200100](a3, &v31);

  v27 = [(fwEnddet_rfOutput *)v23 classProbability];
  v28 = [v27 objectForKeyedSubscript:&unk_286E2EBE0];
  [v28 doubleValue];
  *&v29 = v29;
  v31 = LODWORD(v29);
  std::vector<float>::push_back[abi:ne200100](a3, &v31);

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25C64AE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Nightingale::FwPredictorWrapper_t::predict_fwEndFlagDLTmp(uint64_t a1, uint64_t *a2, const void **a3)
{
  std::vector<double>::vector[abi:ne200100](&__p, 0x2DuLL);
  v6 = 0;
  v7 = *a2;
  v8 = __p;
  do
  {
    *&v8[v6] = *(v7 + v6);
    v6 += 8;
  }

  while (v6 != 360);
  v9 = v34;
  v10 = [*(a1 + 8) dataPointer];
  if (v9 != v8)
  {
    memmove(v10, v8, v9 - v8);
  }

  v11 = [[fwEnddet_lstmInput alloc] initWithIn:*(a1 + 8) lstm_1_h_in:0 lstm_1_c_in:0];
  v12 = *(a1 + 48);
  *(a1 + 48) = v11;

  v13 = [*(a1 + 56) model];
  v14 = *(a1 + 48);
  v15 = *(a1 + 16);
  v32 = 0;
  v16 = [v13 predictionFromFeatures:v14 options:v15 error:&v32];
  v17 = v32;

  v18 = [fwEnddet_lstmOutput alloc];
  v19 = [v16 featureValueForName:@"out"];
  v20 = [v19 multiArrayValue];
  v21 = [v16 featureValueForName:@"lstm_1_h_out"];
  v22 = [v21 multiArrayValue];
  v23 = [v16 featureValueForName:@"lstm_1_c_out"];
  v24 = [v23 multiArrayValue];
  v25 = [(fwEnddet_lstmOutput *)v18 initWithOut:v20 lstm_1_h_out:v22 lstm_1_c_out:v24];

  for (i = 0; i != 34; ++i)
  {
    v27 = [(fwEnddet_lstmOutput *)v25 out];
    v28 = [v27 objectAtIndexedSubscript:i];
    [v28 doubleValue];
    *&v29 = v29;
    v31 = LODWORD(v29);
    std::vector<float>::push_back[abi:ne200100](a3, &v31);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25C64B120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL Nightingale::PeriodPredictorWrapper_t::init(Nightingale::PeriodPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  v5 = *(a2 + 18);
  v3 = a2 + 144;
  v4 = v5;
  if (v3[23] >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v9 = objc_opt_new();
  v10 = *(this + 2);
  *(this + 2) = v9;

  if (*(this + 2) && (v11 = objc_opt_new(), v12 = *(this + 1), *(this + 1) = v11, v12, *(this + 1)))
  {
    [*(this + 2) setComputeUnits:0];
    v24 = 0;
    v13 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_286E2EA90 dataType:65600 error:&v24];
    v14 = v24;
    v15 = *this;
    *this = v13;

    if (*this)
    {
      v16 = [period_lstm alloc];
      v17 = *(this + 2);
      v23 = v14;
      v18 = [(period_lstm *)v16 initWithContentsOfURL:v8 configuration:v17 error:&v23];
      v19 = v23;

      v20 = *(this + 4);
      *(this + 4) = v18;

      v21 = v19 == 0;
      v14 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v14 = 0;
  }

  return v21;
}

id **std::unique_ptr<Nightingale::PeriodPredictorWrapper_t>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x25F88A130](v2, 0x80C402FCC0CB6);
  }

  return a1;
}

uint64_t Nightingale::PeriodPredictorWrapper_t::predict_periodRegressorLSTM(void *a1, uint64_t **a2, const void **a3)
{
  std::vector<double>::vector[abi:ne200100](&__p, 0xB4uLL);
  v6 = 0;
  v7 = a2[9];
  v8 = __p;
  v9 = *a2;
  v10 = a2[3];
  v11 = a2[6];
  do
  {
    v12 = *v7++;
    v13 = &v8[v6];
    *v13 = v12;
    v14 = *v9++;
    *(v13 + 1) = v14;
    v15 = *v10++;
    *(v13 + 2) = v15;
    v16 = *v11++;
    *(v13 + 3) = v16;
    v6 += 32;
  }

  while (v6 != 1440);
  v17 = v42;
  v18 = [*a1 dataPointer];
  if (v17 != v8)
  {
    memmove(v18, v8, v17 - v8);
  }

  v19 = [[period_lstmInput alloc] initWithIn:*a1 lstm_1_h_in:0 lstm_1_c_in:0];
  v20 = a1[3];
  a1[3] = v19;

  v21 = [a1[4] model];
  v22 = a1[3];
  v23 = a1[1];
  v40 = 0;
  v24 = [v21 predictionFromFeatures:v22 options:v23 error:&v40];
  v25 = v40;

  v26 = [period_lstmOutput alloc];
  v27 = [v24 featureValueForName:@"out"];
  v28 = [v27 multiArrayValue];
  v29 = [v24 featureValueForName:@"lstm_1_h_out"];
  v30 = [v29 multiArrayValue];
  v31 = [v24 featureValueForName:@"lstm_1_c_out"];
  v32 = [v31 multiArrayValue];
  v33 = [(period_lstmOutput *)v26 initWithOut:v28 lstm_1_h_out:v30 lstm_1_c_out:v32];

  for (i = 0; i != 32; ++i)
  {
    v35 = [(period_lstmOutput *)v33 out];
    v36 = [v35 objectAtIndexedSubscript:i];
    [v36 doubleValue];
    *&v37 = v37;
    v39 = LODWORD(v37);
    std::vector<float>::push_back[abi:ne200100](a3, &v39);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25C64B6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Nightingale::FwPredictorWrapper_t::FwPredictorWrapper_t(Nightingale::FwPredictorWrapper_t *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double Nightingale::PeriodPredictorWrapper_t::PeriodPredictorWrapper_t(Nightingale::PeriodPredictorWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t *std::vector<double>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25C64B828(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::uiLogProcessor::uiLogProcessor(uint64_t a1, uint64_t a2)
{
  v9 = 1798;
  v10 = 5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(a1, &v9, &v11, 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 32) = 0x3F80000040400000;
  if ((a2 & 0x100000000) != 0)
  {
    v6 = *&a2 > 17.0;
    v7 = *&a2 < 45.0;
    v5 = 36.0;
    if (v6 && v7)
    {
      v5 = 16.0;
    }

    v4 = 9.0;
    if (v6 && v7)
    {
      v4 = 4.0;
    }
  }

  else
  {
    v4 = 4.0;
    v5 = 16.0;
  }

  *(a1 + 24) = v5;
  *(a1 + 28) = v4;
  return a1;
}

{
  v9 = 1798;
  v10 = 5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(a1, &v9, &v11, 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 32) = 0x3F80000040400000;
  if ((a2 & 0x100000000) != 0)
  {
    v6 = *&a2 > 17.0;
    v7 = *&a2 < 45.0;
    v5 = 36.0;
    if (v6 && v7)
    {
      v5 = 16.0;
    }

    v4 = 9.0;
    if (v6 && v7)
    {
      v4 = 4.0;
    }
  }

  else
  {
    v4 = 4.0;
    v5 = 16.0;
  }

  *(a1 + 24) = v5;
  *(a1 + 28) = v4;
  return a1;
}

Nightingale::uiLogProcessor *Nightingale::uiLogProcessor::uiLogProcessor(Nightingale::uiLogProcessor *this)
{
  v3 = 1798;
  v4 = 5;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(this, &v3, &v5, 3);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 4) = 0x3F80000040400000;
  return this;
}

{
  v3 = 1798;
  v4 = 5;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(this, &v3, &v5, 3);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 4) = 0x3F80000040400000;
  return this;
}

void Nightingale::uiLogProcessor::~uiLogProcessor(Nightingale::uiLogProcessor *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void Nightingale::uiLogProcessor::guardConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 4) != 1 || *(a2 + 12) != 1)
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 8);
  if (*a2 > v3)
  {
    if (v3)
    {
      goto LABEL_11;
    }

    v4 = (a2 + 28);
    v5 = *(a2 + 28);
    *(a2 + 12) = 0;
    if (v5 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(a2 + 4) = 0;
  *(a2 + 12) = 0;
  if (*(a2 + 28) == 1)
  {
    *(a2 + 28) = 0;
  }

  v4 = (a2 + 20);
  if (*(a2 + 20))
  {
LABEL_10:
    *v4 = 0;
  }

LABEL_11:
  if (*(a2 + 44) != 1 || (*(a3 + 36) == 1 ? (v6 = *(a2 + 40) < *(a3 + 32)) : (v6 = 0), v6))
  {
    v7 = *(a3 + 32);
    *(a2 + 44) = *(a3 + 36);
    *(a2 + 40) = v7;
  }

  if (*(a2 + 36) != 1 || *(a3 + 20) == 1 && *(a2 + 32) < *(a3 + 16))
  {
    v8 = *(a3 + 16);
    *(a2 + 36) = *(a3 + 20);
    *(a2 + 32) = v8;
  }

  if ((*(a2 + 52) & 1) == 0)
  {
    *(a2 + 52) = 1;
    *(a2 + 48) = 1106247680;
  }
}

void Nightingale::uiLogProcessor::periodListToCycleInfo(uint64_t a1, uint64_t *a2, void *a3, unint64_t *a4)
{
  LOBYTE(v12) = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v4 + v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = 1;
      if (a3[1] <= v9)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = (*(*a3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1;
      std::vector<Nightingale::cycleInfo>::push_back[abi:ne200100](a4, &v11);
      ++v9;
      v4 = *a2;
      v8 += 8;
    }

    while (v9 < (a2[1] - *a2) >> 3);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void sub_25C64BDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiLogProcessor::extractPeriods(uint64_t a1, unsigned int **a2, int **a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v11 = *a3;
    v12 = *v7;
    LOBYTE(v34) = (*v7 - a4) >= 10;
    std::vector<BOOL>::push_back(&v38, &v34);
    v13 = a2[1];
    if (v7 == v13)
    {
      LODWORD(v16) = -1;
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
      do
      {
        v15 = *v11++;
        if ((v15 - 1) > 3)
        {
          v16 = v14;
        }

        else
        {
          v16 = *v7;
          v17 = v14 == -1;
          if (v14 == -1)
          {
            LODWORD(v14) = *v7;
          }

          if (v17)
          {
            v12 = *v7;
          }

          if (v16 - v14 >= 3)
          {
            v34 = __PAIR64__(v14, v12);
            std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v35, &v34);
            v13 = a2[1];
            v12 = v16;
          }
        }

        ++v7;
        v14 = v16;
      }

      while (v7 != v13);
    }

    v34 = __PAIR64__(v16, v12);
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v35, &v34);
    Nightingale::uiCycleFactorProcess::suppressPeriodReproductive(&v44, &v35, a5);
    if (v36 == v35)
    {
      std::vector<Nightingale::cycleInfo>::clear[abi:ne200100](a6);
    }

    else
    {
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v41, v35);
      v18 = (v36 - v35) >> 3;
      if (v18 < 2)
      {
        std::vector<std::pair<int,int>>::__assign_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(&v41, v35, v36, v18);
        v31 = 0;
        v32 = 0;
        v33 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v31, v41, v42, v42 - v41);
        v25 = std::vector<BOOL>::vector(v30, &v38);
        Nightingale::uiLogProcessor::periodListToCycleInfo(v25, &v31, v30, a6);
        if (v30[0])
        {
          operator delete(v30[0]);
        }

        v24 = v31;
        if (!v31)
        {
          goto LABEL_41;
        }

        v32 = v31;
      }

      else
      {
        v20 = v35 + 8;
        v19 = *v35;
        if (v35 + 8 != v36)
        {
          while (1)
          {
            v21 = *v20;
            if (*v20 - v19 >= 10)
            {
              break;
            }

            if (((*(v38 + (((v39 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v39 - 1)) & 1) == 0)
            {
              std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v41, v20);
              LOBYTE(v34) = 0;
              std::vector<BOOL>::push_back(&v38, &v34);
              goto LABEL_26;
            }

LABEL_27:
            if (++v20 == v36)
            {
              goto LABEL_28;
            }
          }

          std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v41, v20);
          LOBYTE(v34) = 1;
          std::vector<BOOL>::push_back(&v38, &v34);
LABEL_26:
          v19 = v21;
          goto LABEL_27;
        }

LABEL_28:
        v22 = v41;
        if ((*v38 & 1) == 0 && *v41 - a4 >= 10)
        {
          *v38 |= 1uLL;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v27, v22, v42, v42 - v22);
        v23 = std::vector<BOOL>::vector(__p, &v38);
        Nightingale::uiLogProcessor::periodListToCycleInfo(v23, &v27, __p, a6);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v24 = v27;
        if (!v27)
        {
          goto LABEL_41;
        }

        v28 = v27;
      }

      operator delete(v24);
    }

LABEL_41:
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v38)
    {
      operator delete(v38);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    return;
  }

  std::vector<Nightingale::cycleInfo>::clear[abi:ne200100](a6);
}

void sub_25C64C158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  v29 = *(v26 - 104);
  if (v29)
  {
    *(v26 - 96) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void *Nightingale::uiCycleFactorProcess::uiCycleFactorProcess(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void std::vector<std::pair<int,int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

uint64_t **Nightingale::uiCycleFactorProcess::suppressPeriodReproductive(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v20, *a2, a2[1], a2[1] - *a2);
  v6 = v20;
  if (v21 != v20)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *&v6[8 * v7];
      v16 = 0;
      v18 = 0;
      v19 = 0;
      __p = 0;
      std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v16, &__p, 1);
      v10 = Nightingale::phaseFactorProcessor::detectPhases(a1, v9, &__p, a3);
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      if ((((v10 & 0x100) == 0) & v10) != 0 || (v10 & 0x10000) != 0)
      {
        v11 = a2[1];
        v12 = &(*a2)[v8];
        v13 = v12 + 1;
        if (v12 + 1 != v11)
        {
          do
          {
            v14 = *(v13 + 1);
            *(v13 - 2) = *v13;
            *(v13++ - 1) = v14;
          }

          while (v13 != v11);
          v12 = v13 - 1;
        }

        a2[1] = v12;
      }

      else
      {
        ++v8;
      }

      ++v7;
      v6 = v20;
    }

    while (v7 < (v21 - v20) >> 3);
  }

  if (v6)
  {
    v21 = v6;
    operator delete(v6);
  }

  return a2;
}

void sub_25C64C430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiCycleFactorProcess::~uiCycleFactorProcess(Nightingale::uiCycleFactorProcess *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void Nightingale::uiLogProcessor::addCycleEnd(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v3 <= ++v5)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = v2 + v4;
      *(v6 + 20) = *(v6 + 96) - 1;
      *(v6 + 24) = 1;
      v2 = *a2;
      v3 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
      v4 += 96;
    }

    while (v3 - 1 > v5);
  }
}

void Nightingale::uiLogProcessor::opk2Cycles(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a3[1];
  if (*a3 != v3)
  {
    v5 = *a2;
    v4 = a2[1];
    if (v4 != *a2)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = (v5 + 60 * v6);
        if (v8[3] == 2)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a3) >> 5);
          v10 = v9 - 1;
          if (v9 - 1 > v7)
          {
            v11 = *v8;
            v12 = v7;
            if (v9 <= v7)
            {
              v9 = v7;
            }

            v13 = (*a3 + 96 * v7 + 24);
            v14 = -1;
            while (1)
            {
              if (v9 == v12)
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              v15 = *v13 == 1 && v11 <= *(v13 - 1);
              if (v15 && v11 >= *(v13 - 6))
              {
                break;
              }

              ++v12;
              --v14;
              v13 += 96;
              if (v10 <= v12)
              {
                goto LABEL_19;
              }
            }

            *(v13 - 3) = v11;
            *(v13 - 8) = 1;
            v7 -= v14;
            v5 = *a2;
            v4 = a2[1];
          }

LABEL_19:
          if (0xEEEEEEEEEEEEEEEFLL * ((v4 - v5) >> 2) <= v6)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v16 = *(v5 + 60 * v6);
          v3 = a3[1];
          if (v16 >= *(v3 - 96))
          {
            break;
          }
        }

        if (0xEEEEEEEEEEEEEEEFLL * ((v4 - v5) >> 2) <= ++v6)
        {
          return;
        }
      }

      *(v3 - 84) = v16;
      *(v3 - 80) = 1;
    }
  }
}

uint64_t Nightingale::uiLogProcessor::getJDayLastNoFlowAftLastPeriodStart(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 2);
  if (v3 < 1)
  {
LABEL_7:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v4 = (v3 & 0x7FFFFFFF) + 1;
    v5 = (*a2 + 60 * (v3 & 0x7FFFFFFF) - 60);
    while (1)
    {
      if (v3 <= v4 - 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v5[1] == 5)
      {
        v6 = *v5;
        if (v6 > *(*(a3 + 8) - 96))
        {
          break;
        }
      }

      --v4;
      v5 -= 15;
      if (v4 <= 1)
      {
        goto LABEL_7;
      }
    }

    v7 = 0x100000000;
  }

  return v6 | v7;
}

uint64_t Nightingale::uiLogProcessor::getJDay1stOPKAftLastPeriodStart(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = 0xEEEEEEEEEEEEEEEFLL * (a2[1] - *a2);
  if (v4 < 1)
  {
LABEL_7:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = v4 & 0x7FFFFFFF;
    while (1)
    {
      if (!v4)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v3[3] == 2)
      {
        v6 = *v3;
        if (v6 >= *(*(a3 + 8) - 96))
        {
          break;
        }
      }

      --v4;
      v3 += 15;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v7 = 0x100000000;
  }

  return v6 | v7;
}

uint64_t Nightingale::uiLogProcessor::get_jDayLastOPKPosBfr1stPeriodSt(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (*a3 != v3)
  {
    v4 = 1;
    v5 = *a3;
    while (*v5 != a2)
    {
      v5 += 15;
      ++v4;
      if (v5 == v3)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v4 != 1)
    {
      v7 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a3) >> 2);
      v8 = v4 - 2;
      while (--v4 >= 1)
      {
        if (v8 >= v7)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v9 = v5 - 15;
        v10 = *(v5 - 12);
        v5 -= 15;
        if (v10 == 2)
        {
          return *v9;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void Nightingale::uiLogProcessor::getJDay1stFlow(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 2);
  if (v3 >= 1)
  {
    v4 = v3 & 0x7FFFFFFF;
    for (i = (*a2 + 4); ; i += 15)
    {
      if (!v3)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if ((*i - 1) <= 4)
      {
        break;
      }

      --v3;
      if (!--v4)
      {
        return;
      }
    }

    *(a3 + 8) = *(i - 1);
    *(a3 + 12) = 1;
  }
}

void Nightingale::uiLogProcessor::getJDayLastFlowNoFlow(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 2);
  v5 = v4;
  v6 = *a2 + 60 * v4;
  v7 = v4;
  while (v7 >= 1)
  {
    if (v4 <= --v7)
    {
LABEL_17:
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v8 = (v6 - 60);
    v9 = *(v6 - 56);
    v6 -= 60;
    if (v9 == 5)
    {
      *(a3 + 24) = *v8;
      *(a3 + 28) = 1;
      v3 = *a2;
      v4 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 2);
      v5 = v4;
      break;
    }
  }

  v10 = v3 + 60 * v5;
  v11 = v5;
  while (v11 >= 1)
  {
    if (v4 <= --v11)
    {
      goto LABEL_17;
    }

    v12 = (v10 - 60);
    v13 = *(v10 - 56) - 1;
    v10 -= 60;
    if (v13 <= 4)
    {
      *(a3 + 32) = *v12;
      *(a3 + 36) = 1;
      v3 = *a2;
      v4 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 2);
      v5 = v4;
      break;
    }
  }

  v14 = v3 + 60 * v5;
  while (v5 >= 1)
  {
    if (v4 <= --v5)
    {
      goto LABEL_17;
    }

    v15 = (v14 - 60);
    v16 = *(v14 - 56) - 1;
    v14 -= 60;
    if (v16 <= 3)
    {
      *(a3 + 40) = *v15;
      *(a3 + 44) = 1;
      return;
    }
  }
}

void Nightingale::uiLogProcessor::getJDayFirstOPK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8) - *a2;
  if (v4)
  {
    v5 = 0xEEEEEEEEEEEEEEEFLL * (v4 >> 2);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    while (v3[3] != 2)
    {
      v3 += 15;
      if (!--v5)
      {
        return;
      }
    }

    *(a3 + 48) = *v3;
    *(a3 + 52) = 1;
  }
}

void Nightingale::uiLogProcessor::getJDayUILog(uint64_t a1, unsigned int **a2, void *a3, uint64_t a4)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v7 = std::vector<Nightingale::cycleInfo>::__init_with_size[abi:ne200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(&v21, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 5));
  v8 = v21;
  v9 = v22 - v21;
  if (v22 != v21)
  {
    *(a4 + 80) = *(v22 - 96);
    *(a4 + 84) = 1;
    if (0xAAAAAAAAAAAAAAABLL * (v9 >> 5) >= 2)
    {
      *(a4 + 88) = *(v8 + v9 - 192);
      *(a4 + 92) = 1;
    }
  }

  JDayLastNoFlowAftLastPeriodStart = Nightingale::uiLogProcessor::getJDayLastNoFlowAftLastPeriodStart(v7, a2, &v21);
  JDay1stOPKAftLastPeriodStart = Nightingale::uiLogProcessor::getJDay1stOPKAftLastPeriodStart(JDayLastNoFlowAftLastPeriodStart, a2, &v21);
  Nightingale::uiLogProcessor::getJDay1stFlow(JDay1stOPKAftLastPeriodStart, a2, a4 + 24);
  v13 = *a2;
  v14 = a2[1] - *a2;
  if (v14)
  {
    v15 = 0xEEEEEEEEEEEEEEEFLL * (v14 >> 2);
    if (v15 <= 1)
    {
      v15 = 1;
    }

    while (v13[3] != 2)
    {
      v13 += 15;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    *(a4 + 72) = *v13;
    *(a4 + 76) = 1;
  }

LABEL_11:
  Nightingale::uiLogProcessor::getJDayLastFlowNoFlow(v12, a2, a4 + 24);
  if ((JDayLastNoFlowAftLastPeriodStart & 0x100000000) != 0)
  {
    if ((JDay1stOPKAftLastPeriodStart & 0x100000000) == 0)
    {
      *(a4 + 112) = JDayLastNoFlowAftLastPeriodStart;
      *(a4 + 116) = BYTE4(JDayLastNoFlowAftLastPeriodStart);
      goto LABEL_19;
    }

    v16 = JDay1stOPKAftLastPeriodStart + 9;
    if (JDay1stOPKAftLastPeriodStart + 9 <= JDayLastNoFlowAftLastPeriodStart)
    {
      v16 = JDayLastNoFlowAftLastPeriodStart;
    }
  }

  else
  {
    if ((JDay1stOPKAftLastPeriodStart & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    v16 = JDay1stOPKAftLastPeriodStart + 9;
  }

  *(a4 + 112) = v16;
  *(a4 + 116) = 1;
LABEL_19:
  *(a4 + 96) = JDayLastNoFlowAftLastPeriodStart;
  *(a4 + 100) = BYTE4(JDayLastNoFlowAftLastPeriodStart);
  *(a4 + 104) = JDay1stOPKAftLastPeriodStart;
  *(a4 + 108) = BYTE4(JDay1stOPKAftLastPeriodStart);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  Nightingale::phaseFactorProcessor::getCCVec(__p);
  *(a4 + 120) = Nightingale::phaseFactorProcessor::jDayFirstStartLastEndOfAPhaseSet(&v18, a3, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v18 = &v21;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_25C64CC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char *a13, char *a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  a13 = &a16;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void Nightingale::uiLogProcessor::getInPeriodNow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 8) - 92);
  *(a2 + 128) = 0;
  if (*(a3 + 44) == 1 && (v3 & 0x100000000) != 0)
  {
    v5 = *(a3 + 40);
    if (v5 == v3)
    {
      goto LABEL_6;
    }

    v6 = v3 + 1;
    if (*(a2 + 52) != 1)
    {
      if (v5 != v6)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v5 == v6 && v5 != *(a2 + 48))
    {
LABEL_6:
      *(a2 + 128) = 1;
    }
  }
}

uint64_t Nightingale::uiLogProcessor::getNumPeriodsToKeepUR(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v3 = *(a3 + 8);
  result = -1431655765 * ((v3 - *a3) >> 5);
  if (result && v4 != v3)
  {
    v6 = *(a2 + 24);
    do
    {
      if (*(a2 + 28))
      {
        result = result - (*v4 <= v6);
        if (*v4 > v6)
        {
          break;
        }
      }

      v4 += 24;
    }

    while (v4 != v3);
  }

  return result;
}

unint64_t Nightingale::uiLogProcessor::getWhatShouldBeInSlideCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (HIDWORD(a4) != -2)
  {
    if (HIDWORD(a4) != -1 && v5 >= 1)
    {
      v6 = v5 & 0x7FFFFFFF;
      v7 = (v4 + 8);
      v8 = 1;
      do
      {
        if (!v5)
        {
          goto LABEL_22;
        }

        if (*v7 == 1 && *(v7 - 1) >= SHIDWORD(a4))
        {
          return v8 | (v5 << 32);
        }

        --v5;
        v7 += 96;
        --v6;
      }

      while (v6);
      v5 = 0;
      return v8 | (v5 << 32);
    }

LABEL_11:
    v8 = 1;
    return v8 | (v5 << 32);
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

  if (v5 < 2)
  {
    goto LABEL_18;
  }

  v10 = (v5 - 2);
  if (v5 <= v10)
  {
LABEL_22:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(v4 + 96 * v10) < a4)
  {
LABEL_14:
    v8 = 2;
    v5 = 2;
  }

  else
  {
LABEL_18:
    if (v5 >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v5;
    }

    v8 = 3;
  }

  return v8 | (v5 << 32);
}

void Nightingale::uiLogProcessor::removeOutlier(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  v5 = a1[1];
  v7 = (v5 - v4) >> 2;
  if (v7 > 2)
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v4, v5, v7);
    Nightingale::get_mad(&__p, 1);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    Nightingale::vMedian<double>();
  }

  if (a2 != a1)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a2, v4, v5, v7);
  }
}

void sub_25C64CF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiLogProcessor::genPeriodSlide(void *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, const void **a5@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = -1431655765 * ((a1[1] - *a1) >> 5);
  if (v6)
  {
    if (v6 - a2 >= v6 - a4)
    {
      v14 = 0;
      v13 = 0;
    }

    else
    {
      v9 = v6 - a2;
      v10 = 96 * v6 - 96 * a2;
      v11 = a2 + (a4 << 31 >> 31);
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) <= v9)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v12 = *a1 + v10;
        if (*(v12 + 8) == 1)
        {
          *buf = (*(v12 + 4) - *v12 + 1);
          std::vector<float>::push_back[abi:ne200100](a5, buf);
        }

        ++v9;
        v10 += 96;
        --v11;
      }

      while (v11);
      v14 = *a5;
      v13 = a5[1];
    }

    if ((v13 - v14) > 0x30 && (v13 - v14) << 30 != 0xC00000000)
    {
      v15 = &v14[(((v13 - v14) << 30) - 0xC00000000) >> 30];
      v16 = v13 - v15;
      if (v13 != v15)
      {
        memmove(v14, v15, v13 - v15);
      }

      a5[1] = &v14[v16];
    }

    v17 = *(a3 + 8);
    if (!*(a3 + 12))
    {
      v17 = 5.0;
    }

    *buf = v17;
    std::vector<float>::push_back[abi:ne200100](a5, buf);
    log = ha_get_log(v18);
    v20 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      Nightingale::uiLogProcessor::genPeriodSlide();
    }

    if (a5[1] - *a5 != 4)
    {
      v21 = 0;
      do
      {
        v22 = ha_get_log(v20);
        v20 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          if (v21 >= (a5[1] - *a5) >> 2)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v23 = *(*a5 + v21);
          *buf = 134217984;
          *&buf[4] = v23;
          _os_log_debug_impl(&dword_25C4D8000, v22, OS_LOG_TYPE_DEBUG, "%3.1f, ", buf, 0xCu);
        }

        ++v21;
      }

      while (v21 < ((a5[1] - *a5) >> 2) - 1);
    }

    v24 = ha_get_log(v20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genPeriodSlide(a5 + 1);
    }

    Nightingale::uiLogProcessor::removeOutlier(a5, buf);
    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
    }

    *a5 = *buf;
    a5[2] = v33;
    v26 = ha_get_log(v25);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      Nightingale::uiLogProcessor::genPeriodSlide();
    }

    if (a5[1] - *a5 != 4)
    {
      v28 = 0;
      do
      {
        v29 = ha_get_log(v27);
        v27 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
        if (v27)
        {
          if (v28 >= (a5[1] - *a5) >> 2)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v30 = *(*a5 + v28);
          *buf = 134217984;
          *&buf[4] = v30;
          _os_log_debug_impl(&dword_25C4D8000, v29, OS_LOG_TYPE_DEBUG, "%3.1f, ", buf, 0xCu);
        }

        ++v28;
      }

      while (v28 < ((a5[1] - *a5) >> 2) - 1);
    }

    v31 = ha_get_log(v27);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genPeriodSlide(a5 + 1);
    }
  }
}

void sub_25C64D2FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL Nightingale::uiLogProcessor::vecPhaseContains(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (!v4)
  {
    return 0;
  }

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2[1] - *a2;
  }

  if (*v3 == a3)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v5 == v7)
    {
      break;
    }

    v9 = v3[v7++];
  }

  while (v9 != a3);
  return v4 > v8;
}

void Nightingale::uiLogProcessor::genCycleSlide(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, char a6@<W5>, char **a7@<X8>)
{
  __p[3] = *MEMORY[0x277D85DE8];
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = -1431655765 * ((a2[1] - *a2) >> 5);
  if (!v8)
  {
    return;
  }

  v9 = a6;
  v12 = a3;
  if (a3 == 3)
  {
LABEL_5:
    v15 = v8 - 1;
    if (v8 - HIDWORD(a3) < v8 - 1)
    {
      v16 = v8 - HIDWORD(a3);
      while (1)
      {
        v17 = *a2;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v16)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        memset(__p, 0, 24);
        std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(__p, *(v17 + 96 * v16 + 72), *(v17 + 96 * v16 + 80), *(v17 + 96 * v16 + 80) - *(v17 + 96 * v16 + 72));
        v18 = *a2;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v16)
        {
LABEL_76:
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&v54, *(v18 + 96 * v16 + 72), *(v18 + 96 * v16 + 80), *(v18 + 96 * v16 + 80) - *(v18 + 96 * v16 + 72));
        v19 = v55 - v54;
        if (v55 == v54)
        {
          v24 = 0;
          if (!v54)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v19 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = v55 - v54;
          }

          if (*v54)
          {
            v21 = 0;
            v22 = v20 - 1;
            while (v22 != v21)
            {
              if (!v54[++v21])
              {
                v24 = v19 > v21;
                goto LABEL_22;
              }
            }

            v24 = 0;
          }

          else
          {
            v24 = 1;
          }
        }

LABEL_22:
        v55 = v54;
        operator delete(v54);
LABEL_23:
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v16)
        {
          goto LABEL_76;
        }

        v25 = *a2 + 96 * v16;
        v26 = *(v25 + 24);
        if (((v24 | v26 ^ 1) & 1) == 0)
        {
          if ((v26 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v53 = (*(v25 + 20) - *v25 + 1);
          std::vector<float>::push_back[abi:ne200100](a7, &v53);
        }

        result = __p[0];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v15 == ++v16)
        {
          v14 = *a7;
          v9 = a6;
          goto LABEL_32;
        }
      }
    }

    v14 = 0;
LABEL_32:
    if (v12 != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v14 = 0;
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_5;
  }

LABEL_33:
  a7[1] = v14;
  LODWORD(__p[0]) = 1105199104;
  std::vector<float>::push_back[abi:ne200100](a7, __p);
  v14 = *a7;
LABEL_34:
  v28 = a7 + 1;
  v27 = a7[1];
  if ((v27 - v14) >= 0x31 && (v27 - v14) << 30 != 0xC00000000)
  {
    v29 = &v14[(((v27 - v14) << 30) - 0xC00000000) >> 30];
    v30 = v27 - v29;
    if (v27 != v29)
    {
      result = memmove(v14, v29, v27 - v29);
    }

    *v28 = &v14[v30];
  }

  if (v12 == 1 && *(a4 + 4) == 1)
  {
    *__p = *a4;
    std::vector<float>::push_back[abi:ne200100](a7, __p);
  }

  log = ha_get_log(result);
  v32 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v32)
  {
    Nightingale::uiLogProcessor::genCycleSlide();
  }

  v33 = a7[1];
  if (*a7 == v33)
  {
    v38 = ha_get_log(v32);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genCycleSlide();
    }
  }

  else
  {
    if (v33 - *a7 != 4)
    {
      v34 = 0;
      do
      {
        v35 = ha_get_log(v32);
        v32 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
        if (v32)
        {
          if (v34 >= (a7[1] - *a7) >> 2)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v36 = *&(*a7)[4 * v34];
          LODWORD(__p[0]) = 134217984;
          *(__p + 4) = *&v36;
          _os_log_debug_impl(&dword_25C4D8000, v35, OS_LOG_TYPE_DEBUG, "%3.1f, ", __p, 0xCu);
        }

        ++v34;
      }

      while (v34 < ((a7[1] - *a7) >> 2) - 1);
    }

    v37 = ha_get_log(v32);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genPeriodSlide(a7 + 1);
    }
  }

  v40 = *a7;
  v39 = a7[1];
  Nightingale::uiLogProcessor::removeOutlier(a7, __p);
  v41 = *a7;
  if (*a7)
  {
    *v28 = v41;
    operator delete(v41);
  }

  v42 = __p[0];
  *a7 = __p[0];
  v43 = __p[1];
  *(a7 + 1) = *&__p[1];
  if ((v9 & 1) != 0 && a5)
  {
    *a5 = ((v39 - v40) >> 2) - ((v43 - v42) >> 2);
  }

  v44 = ha_get_log(v41);
  v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
  if (v45)
  {
    Nightingale::uiLogProcessor::genCycleSlide();
  }

  v46 = a7[1];
  if (*a7 == v46)
  {
    v51 = ha_get_log(v45);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genCycleSlide();
    }
  }

  else
  {
    if (v46 - *a7 != 4)
    {
      v47 = 0;
      do
      {
        v48 = ha_get_log(v45);
        v45 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
        if (v45)
        {
          if (v47 >= (a7[1] - *a7) >> 2)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v49 = *&(*a7)[4 * v47];
          LODWORD(__p[0]) = 134217984;
          *(__p + 4) = *&v49;
          _os_log_debug_impl(&dword_25C4D8000, v48, OS_LOG_TYPE_DEBUG, "%3.1f, ", __p, 0xCu);
        }

        ++v47;
      }

      while (v47 < ((a7[1] - *a7) >> 2) - 1);
    }

    v50 = ha_get_log(v45);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genPeriodSlide(a7 + 1);
    }
  }
}

void sub_25C64D904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiLogProcessor::getCenter(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    Nightingale::vMedian<double>();
  }

  Nightingale::vMean<double>();
}

double Nightingale::uiLogProcessor::getVariance(double a1, double a2, uint64_t a3, void *a4)
{
  if (((a4[1] - *a4) >> 2) >= 2)
  {
    Nightingale::vVar<double>();
  }

  return a2;
}

void Nightingale::uiLogProcessor::calSlideMeanStd(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = v8 - v7;
  if (v8 != v7)
  {
    memset(__p, 0, sizeof(__p));
    v11 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, v7, v8, v10 >> 2);
    Nightingale::uiLogProcessor::getCenter(v11, __p, a2);
  }

  *a3 = 0;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v10;
}

void sub_25C64DB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float Nightingale::uiLogProcessor::getACyclePeriodSlideMeanStd(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  Nightingale::uiLogProcessor::calSlideMeanStd(&__p, 1, &v21);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (*(a4 + 36) == v22)
  {
    if (*(a4 + 36))
    {
      v6 = v21;
      *(a4 + 32) = v6;
    }
  }

  else if (*(a4 + 36))
  {
    *(a4 + 36) = 0;
  }

  else
  {
    v7 = v21;
    *(a4 + 32) = v7;
    *(a4 + 36) = 1;
  }

  if (*(a4 + 44) == v24)
  {
    if (*(a4 + 44))
    {
      v8 = v23;
      *(a4 + 40) = v8;
    }
  }

  else if (*(a4 + 44))
  {
    *(a4 + 44) = 0;
  }

  else
  {
    v9 = v23;
    *(a4 + 40) = v9;
    *(a4 + 44) = 1;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v11, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  Nightingale::uiLogProcessor::calSlideMeanStd(&v11, 1, &v14);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (*(a4 + 52) == v15)
  {
    if (*(a4 + 52))
    {
      result = v14;
      *(a4 + 48) = result;
    }
  }

  else if (*(a4 + 52))
  {
    *(a4 + 52) = 0;
  }

  else
  {
    result = v14;
    *(a4 + 48) = result;
    *(a4 + 52) = 1;
  }

  if (*(a4 + 60) == v17)
  {
    if (*(a4 + 60))
    {
      result = v16;
      *(a4 + 56) = result;
    }
  }

  else if (*(a4 + 60))
  {
    *(a4 + 60) = 0;
  }

  else
  {
    result = v16;
    *(a4 + 56) = result;
    *(a4 + 60) = 1;
  }

  return result;
}

void sub_25C64DD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiLogProcessor::getDLStartProcDate(uint64_t a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5)
{
  v5 = *(a3 + 60);
  v6 = *(a3 + 56) - 39;
  if (!*(a3 + 60))
  {
    v6 = 0;
  }

  *a5 = v6;
  *(a5 + 4) = v5;
  v7 = *a4;
  v8 = a4[1];
  v9 = v8 - *a4;
  if (v8 != *a4)
  {
    v10 = 0;
    v11 = 0xEEEEEEEEEEEEEEEFLL * (v9 >> 2);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *v7;
      v7 += 60;
      v12 = v13;
      if (v5)
      {
        if (v12 == v6)
        {
          break;
        }
      }

      if (v11 == ++v10)
      {
        return;
      }
    }

    *(a5 + 8) = v10;
    *(a5 + 12) = 1;
  }
}

void Nightingale::uiLogProcessor::getCyclePeriodMeanStdAllCycles(float *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = a2[1];
  if (v7 != v8)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v12 = std::vector<Nightingale::cycleInfo>::__init_with_size[abi:ne200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(&v54, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 5));
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    if (v14 >= 1)
    {
      v15 = v14 & 0x7FFFFFFF;
      do
      {
        v17 = *a2;
        v16 = a2[1];
        v18 = -1431655765 * ((v16 - *a2) >> 5);
        if (v18 && v17 != v16)
        {
          v19 = *(a3 + 24);
          do
          {
            if (*(a3 + 28))
            {
              v18 -= *v17 <= v19;
              if (*v17 > v19)
              {
                break;
              }
            }

            v17 += 24;
          }

          while (v17 != v16);
        }

        ShouldBeInSlideCC = Nightingale::uiLogProcessor::getWhatShouldBeInSlideCC(v12, v13, &v54, a5);
        Nightingale::uiLogProcessor::genCycleSlide(ShouldBeInSlideCC, &v54, ShouldBeInSlideCC, a3, 0, 0, &v52);
        memset(v49, 0, sizeof(v49));
        std::vector<Nightingale::cycleInfo>::__init_with_size[abi:ne200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(v49, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
        if (v18 >= SHIDWORD(ShouldBeInSlideCC))
        {
          v21 = HIDWORD(ShouldBeInSlideCC);
        }

        else
        {
          v21 = v18;
        }

        Nightingale::uiLogProcessor::genPeriodSlide(v49, v21, a3, a4, &v50);
        *buf = v49;
        std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](buf);
        v47 = 0;
        v48 = 0;
        v46 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v46, v52, v53, (v53 - v52) >> 2);
        __p = 0;
        v44 = 0;
        v45 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v50, v51, (v51 - v50) >> 2);
        Nightingale::uiLogProcessor::getACyclePeriodSlideMeanStd(a1, &v46, &__p, v55 - 96);
        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        v22 = v15 - 1;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v15 - 1 || (v23 = *a2 + 96 * v22, v24 = *(v55 - 64), *(v23 + 36) = *(v55 - 60), *(v23 + 32) = v24, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v22) || (v25 = *a2 + 96 * v22, v26 = *(v55 - 56), *(v25 + 44) = *(v55 - 52), *(v25 + 40) = v26, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v22) || (v27 = *a2 + 96 * v22, v28 = *(v55 - 48), *(v27 + 52) = *(v55 - 44), *(v27 + 48) = v28, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v22))
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v29 = *a2 + 96 * v22;
        v30 = *(v55 - 40);
        *(v29 + 60) = *(v55 - 36);
        *(v29 + 56) = v30;
        v31 = v55;
        v32 = *(v55 - 24);
        if (v32)
        {
          *(v55 - 16) = v32;
          operator delete(v32);
        }

        v55 = v31 - 96;
        log = ha_get_log(v32);
        v34 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        if (v34)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v22)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v35 = *a2 + 96 * v22;
          v36 = -1.0;
          v37 = -1.0;
          if (*(v35 + 36) == 1)
          {
            v37 = *(v35 + 32);
          }

          if (*(v35 + 44) == 1)
          {
            v36 = *(v35 + 40);
          }

          *buf = 134218240;
          *&buf[4] = v37;
          v58 = 2048;
          v59 = v36;
          _os_log_debug_impl(&dword_25C4D8000, log, OS_LOG_TYPE_DEBUG, "\t cycleLenMean: %6.4f, cycleLenVar: %6.4f, ", buf, 0x16u);
        }

        if (v15 != 1)
        {
          v38 = ha_get_log(v34);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v22)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v39 = *a2 + 96 * v22;
            v40 = -1.0;
            v41 = -1.0;
            if (*(v39 + 52) == 1)
            {
              v41 = *(v39 + 48);
            }

            if (*(v39 + 60) == 1)
            {
              v40 = *(v39 + 56);
            }

            *buf = 134218240;
            *&buf[4] = v41;
            v58 = 2048;
            v59 = v40;
            _os_log_debug_impl(&dword_25C4D8000, v38, OS_LOG_TYPE_DEBUG, "periodLenMean: %6.4f, periodLenVar: %6.4f},", buf, 0x16u);
          }
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        v12 = v52;
        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }
      }

      while (v15-- > 1);
    }

    v52 = &v54;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&v52);
  }
}

void Nightingale::uiLogProcessor::getAvgCycleLenForSomeCycleReproductive(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = a4;
    v8 = 0;
    v9 = -a4;
    v19 = a2[1];
    do
    {
      if (Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(&__p, (v4 + 72), 0))
      {
        v10 = -1 - 1431655765 * ((a2[1] - *a2) >> 5);
        if (v8 + v6 >= v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = (v8 + v6);
        }

        if ((*(v4 + 68) & 1) == 0)
        {
          *(v4 + 68) = 1;
        }

        *(v4 + 64) = 0;
        if (((v8 - v6) & ~((v8 - v6) >> 31)) <= v11)
        {
          v12 = 0;
          v13 = 0;
          v14 = v9 & ~(v9 >> 31);
          v15 = 96 * v14;
          do
          {
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v14)
            {
LABEL_25:
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v16 = *a2 + v15;
            if (*(v16 + 24) == 1 && !Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(&__p, (v16 + 72), 0))
            {
              if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v14)
              {
                goto LABEL_25;
              }

              v17 = *a2 + v15;
              if ((*(v17 + 24) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v13 = v13 + *(v17 + 20) - *v17 + 1;
              ++v12;
            }

            v15 += 96;
          }

          while (v14++ < v11);
          v6 = a4;
          v5 = v19;
          if (v12 > 0)
          {
            *(v4 + 64) = v13 / v12;
            *(v4 + 68) = 1;
          }
        }
      }

      ++v8;
      v4 += 96;
      ++v9;
    }

    while (v4 != v5);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_25C64E4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiLogProcessor::hist_process(int **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
  *(a3 + 96) = 0;
  *(a3 + 100) = 0;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  if (*a1 != a1[1])
  {
    Nightingale::uiLogProcessor::process(a1, a2, __p);
    std::vector<Nightingale::cycleInfo>::__vdeallocate(a3);
    *a3 = *__p;
    *(a3 + 16) = v14;
    __p[1] = 0;
    v14 = 0;
    __p[0] = 0;
    *(a3 + 72) = v18;
    *(a3 + 88) = v19;
    *(a3 + 104) = v20[0];
    *(a3 + 113) = *(v20 + 9);
    *(a3 + 24) = v15;
    *(a3 + 40) = v16;
    *(a3 + 56) = v17;
    v21 = __p;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&v21);
    Nightingale::uiLogProcessor::addCycleEnd(v6, a3);
    Nightingale::uiLogProcessor::opk2Cycles(v7, a1, a3);
    v8 = *a1;
    v9 = a1[1] - *a1;
    if (v9)
    {
      v10 = 0xEEEEEEEEEEEEEEEFLL * (v9 >> 2);
      if (v10 <= 1)
      {
        v10 = 1;
      }

      while (v8[3] != 2)
      {
        v8 += 15;
        if (!--v10)
        {
          goto LABEL_9;
        }
      }

      *(a3 + 72) = *v8;
      *(a3 + 76) = 1;
    }

LABEL_9:
    __p[0] = 0;
    __p[1] = 0;
    v14 = 0;
    Nightingale::uiCycleFactorProcess::tagCycleInfoReproductive(__p, a3, a2);
    Nightingale::uiLogProcessor::getAvgCycleLenForSomeCycleReproductive(v11, a3, v12, 6);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void Nightingale::uiLogProcessor::process(int **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v100 = *MEMORY[0x277D85DE8];
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
  *(a3 + 96) = 0;
  *(a3 + 100) = 0;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  __src = 0;
  v96 = 0;
  v97 = 0;
  __p = 0;
  v93 = 0;
  v94 = 0;
  v5 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v7 = *a1;
    while (v7[1] > 5)
    {
      v7 += 15;
      if (v7 == v4)
      {
        v84 = *v5;
        goto LABEL_7;
      }
    }

    v84 = *v7;
LABEL_7:
    if (v5 != v4)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = &v5[v8];
        if ((v5[v8 + 1] - 1) <= 3)
        {
          v12 = v96;
          if (v96 >= v97)
          {
            v14 = __src;
            v15 = v96 - __src;
            v16 = (v96 - __src) >> 2;
            v17 = v16 + 1;
            if ((v16 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v18 = v97 - __src;
            if ((v97 - __src) >> 1 > v17)
            {
              v17 = v18 >> 1;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v19 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v19);
            }

            v20 = (4 * v16);
            v21 = *v11;
            v22 = &v20[-((v96 - __src) >> 2)];
            *v20 = v21;
            v13 = v20 + 1;
            memcpy(v22, v14, v15);
            v23 = __src;
            __src = v22;
            v96 = v13;
            v97 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v96 = *v11;
            v13 = v12 + 1;
          }

          v96 = v13;
          if (0xEEEEEEEEEEEEEEEFLL * (a1[1] - *a1) <= v10)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v24 = &(*a1)[v8];
          v25 = v93;
          if (v93 >= v94)
          {
            v26 = __p;
            v27 = v93 - __p;
            v28 = (v93 - __p) >> 2;
            v29 = v28 + 1;
            if ((v28 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v30 = v94 - __p;
            if ((v94 - __p) >> 1 > v29)
            {
              v29 = v30 >> 1;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v31 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p, v31);
            }

            v32 = (4 * v28);
            v33 = v24[1];
            v34 = &v32[-((v93 - __p) >> 2)];
            *v32 = v33;
            v9 = v32 + 1;
            memcpy(v34, v26, v27);
            v35 = __p;
            __p = v34;
            v93 = v9;
            v94 = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v93 = v24[1];
            v9 = v25 + 1;
          }

          v93 = v9;
          v5 = *a1;
          v4 = a1[1];
        }

        ++v10;
        v8 += 15;
      }

      while (0xEEEEEEEEEEEEEEEFLL * (v4 - v5) > v10);
      if (__src != v96)
      {
        v36 = __p;
        if (__p == v9)
        {
          goto LABEL_102;
        }

        log = ha_get_log(__p);
        v38 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        if (v38)
        {
          Nightingale::uiLogProcessor::process();
        }

        if (__src == v96)
        {
          v41 = ha_get_log(v38);
          v40 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
          if (v40)
          {
            Nightingale::uiLogProcessor::genCycleSlide();
          }
        }

        else
        {
          if (v96 - __src != 4)
          {
            v78 = 0;
            do
            {
              v79 = ha_get_log(v38);
              v38 = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);
              if (v38)
              {
                v80 = *(__src + v78);
                *buf = 67109120;
                v99 = v80;
                _os_log_debug_impl(&dword_25C4D8000, v79, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
              }

              ++v78;
            }

            while (v78 < ((v96 - __src) >> 2) - 1);
          }

          v39 = ha_get_log(v38);
          v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
          if (v40)
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        v42 = ha_get_log(v40);
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
        if (v43)
        {
          Nightingale::uiLogProcessor::process();
        }

        if (__p == v93)
        {
          v45 = ha_get_log(v43);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::genCycleSlide();
          }
        }

        else
        {
          if (v93 - __p != 4)
          {
            v81 = 0;
            do
            {
              v82 = ha_get_log(v43);
              v43 = os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG);
              if (v43)
              {
                v83 = *(__p + v81);
                *buf = 67109120;
                v99 = v83;
                _os_log_debug_impl(&dword_25C4D8000, v82, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
              }

              ++v81;
            }

            while (v81 < ((v93 - __p) >> 2) - 1);
          }

          v44 = ha_get_log(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        v89 = 0;
        v90 = 0;
        v91 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v89, __src, v96, (v96 - __src) >> 2);
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v46 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v86, __p, v93, (v93 - __p) >> 2);
        Nightingale::uiLogProcessor::extractPeriods(v46, &v89, &v86, v84, a2, a3);
        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        v47 = v89;
        if (v89)
        {
          v90 = v89;
          operator delete(v89);
        }

        v48 = ha_get_log(v47);
        v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
        if (v49)
        {
          Nightingale::uiLogProcessor::process();
        }

        v50 = *(a3 + 8);
        if (*a3 == v50)
        {
          v57 = ha_get_log(v49);
          v56 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
          if (v56)
          {
            Nightingale::uiLogProcessor::genCycleSlide();
          }
        }

        else
        {
          if (v50 - *a3 != 96)
          {
            v51 = 0;
            v52 = 0;
            do
            {
              v53 = ha_get_log(v49);
              v49 = os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG);
              if (v49)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5) <= v52)
                {
                  std::vector<int>::__throw_out_of_range[abi:ne200100]();
                }

                v54 = *(*a3 + v51);
                *buf = 67109120;
                v99 = v54;
                _os_log_debug_impl(&dword_25C4D8000, v53, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
              }

              ++v52;
              v51 += 96;
            }

            while (v52 < -1 - 0x5555555555555555 * ((*(a3 + 8) - *a3) >> 5));
          }

          v55 = ha_get_log(v49);
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
          if (v56)
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        v58 = ha_get_log(v56);
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
        if (v59)
        {
          Nightingale::uiLogProcessor::process();
        }

        v60 = *(a3 + 8);
        if (*a3 == v60)
        {
          v68 = ha_get_log(v59);
          v67 = os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG);
          if (v67)
          {
            Nightingale::uiLogProcessor::genCycleSlide();
          }
        }

        else
        {
          if (v60 - *a3 != 96)
          {
            v61 = 0;
            v62 = 0;
            do
            {
              v63 = ha_get_log(v59);
              v59 = os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG);
              if (v59)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5) <= v62)
                {
                  std::vector<int>::__throw_out_of_range[abi:ne200100]();
                }

                v64 = *a3 + v61;
                if (*(v64 + 8) == 1)
                {
                  v65 = *(v64 + 4);
                }

                else
                {
                  v65 = -1;
                }

                *buf = 67109120;
                v99 = v65;
                _os_log_debug_impl(&dword_25C4D8000, v63, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
              }

              ++v62;
              v61 += 96;
            }

            while (v62 < -1 - 0x5555555555555555 * ((*(a3 + 8) - *a3) >> 5));
          }

          v66 = ha_get_log(v59);
          v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
          if (v67)
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        v69 = ha_get_log(v67);
        v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
        if (v70)
        {
          Nightingale::uiLogProcessor::process();
        }

        v71 = *(a3 + 8);
        if (*a3 == v71)
        {
          v77 = ha_get_log(v70);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        else
        {
          if (v71 - *a3 != 96)
          {
            v72 = 0;
            v73 = 28;
            do
            {
              v74 = ha_get_log(v70);
              v70 = os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG);
              if (v70)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5) <= v72)
                {
                  std::vector<int>::__throw_out_of_range[abi:ne200100]();
                }

                v75 = *(*a3 + v73);
                *buf = 67109120;
                v99 = v75;
                _os_log_debug_impl(&dword_25C4D8000, v74, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
              }

              ++v72;
              v73 += 96;
            }

            while (v72 < -1 - 0x5555555555555555 * ((*(a3 + 8) - *a3) >> 5));
          }

          v76 = ha_get_log(v70);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }
      }
    }
  }

  v36 = __p;
LABEL_102:
  if (v36)
  {
    v93 = v36;
    operator delete(v36);
  }

  if (__src)
  {
    v96 = __src;
    operator delete(__src);
  }
}

void sub_25C64F034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void Nightingale::uiCycleFactorProcess::tagCycleInfoReproductive(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a3 != a3[1])
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    v4 = a2[1];
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 5);
    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = (v5 - 1);
        do
        {
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v9)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v11 = (*a2 + v8);
          if (*(v11 + 24) == 1)
          {
            Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *v11 | (v11[5] << 32), a3, &__p);
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v9)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v12 = (*a2 + v8 + 72);
            if (v12 != &__p)
            {
              std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v12, __p, v16, v16 - __p);
            }
          }

          ++v9;
          v8 += 96;
        }

        while (v10 != v9);
        v4 = a2[1];
      }

      Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(v4 - 96) | 0xFFFFFFFF00000000, a3, &__p);
      v13 = (a2[1] - 24);
      v14 = __p;
      if (v13 != &__p)
      {
        std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v13, __p, v16, v16 - __p);
        v14 = __p;
      }

      if (v14)
      {
        v16 = v14;
        operator delete(v14);
      }
    }
  }
}

void sub_25C64F28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiLogProcessor::extractCycles(float *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 28) = 0;
  *(a5 + 32) = 0;
  *(a5 + 36) = 0;
  *(a5 + 40) = 0;
  *(a5 + 44) = 0;
  *(a5 + 48) = 0;
  *(a5 + 52) = 0;
  *(a5 + 56) = 0;
  *(a5 + 60) = 0;
  *(a5 + 64) = 0;
  *(a5 + 68) = 0;
  *(a5 + 72) = 0;
  *(a5 + 76) = 0;
  *(a5 + 80) = 0;
  *(a5 + 84) = 0;
  *(a5 + 88) = 0;
  *(a5 + 92) = 0;
  *(a5 + 96) = 0;
  *(a5 + 100) = 0;
  *(a5 + 104) = 0;
  *(a5 + 108) = 0;
  *(a5 + 112) = 0;
  *(a5 + 116) = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  if (*a2 != *(a2 + 8))
  {
    Nightingale::uiLogProcessor::process(a2, a3, __p);
    std::vector<Nightingale::cycleInfo>::__vdeallocate(a5);
    *a5 = *__p;
    *(a5 + 16) = v16;
    __p[1] = 0;
    v16 = 0;
    __p[0] = 0;
    *(a5 + 72) = v20;
    *(a5 + 88) = v21;
    *(a5 + 104) = v22[0];
    *(a5 + 113) = *(v22 + 9);
    *(a5 + 24) = v17;
    *(a5 + 40) = v18;
    *(a5 + 56) = v19;
    v23 = __p;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&v23);
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    if (*a5 != *(a5 + 8))
    {
      Nightingale::uiLogProcessor::addCycleEnd(v10, a5);
      Nightingale::uiCycleFactorProcess::tagCycleInfoReproductive(__p, a5, a3);
      Nightingale::uiLogProcessor::opk2Cycles(v11, a2, a5);
      Nightingale::uiLogProcessor::getJDayUILog(v12, a2, a3, a5);
      Nightingale::uiLogProcessor::guardConfig(v13, a4, a5 + 24);
      Nightingale::uiLogProcessor::getInPeriodNow(v14, a5, a4);
      Nightingale::uiLogProcessor::getCyclePeriodMeanStdAllCycles(a1, a5, a4, *(a5 + 128), *(a5 + 120));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_25C64F468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void Nightingale::uiLogProcessor::getEnsembleInput(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5.i64[0] = 0x3F0000003FLL;
  v5.i64[1] = 0x3F0000003FLL;
  v6 = vnegq_f32(v5);
  *a4 = v6;
  *(a4 + 16) = v6;
  *(a4 + 32) = v6;
  *(a4 + 48) = v6;
  *(a4 + 64) = v6;
  *(a4 + 80) = vneg_f32(0x3F0000003FLL);
  if (*a2 != a2[1])
  {
    ShouldBeInSlideCC = Nightingale::uiLogProcessor::getWhatShouldBeInSlideCC(a1, a2, a2, a2[15]);
    v21 = 0;
    Nightingale::uiLogProcessor::genCycleSlide(ShouldBeInSlideCC, a2, ShouldBeInSlideCC, a3, &v21, 1, &v19);
    v13 = 0;
    v14 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v19, v20, (v20 - v19) >> 2);
    Nightingale::uiLogProcessor::calSlideMeanStd(&__p, 1, &v15);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    v10 = v17;
    if (!v18)
    {
      v10 = NAN;
    }

    *a4 = (-1431655765 * ((a2[1] - *a2) >> 5) - 1);
    *(a4 + 4) = sqrtf(v10);
    v11 = v15;
    if (!v16)
    {
      v11 = NAN;
    }

    *(a4 + 8) = v11;
    *(a4 + 84) = v21;
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }
}

void sub_25C64F5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
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

__n128 Nightingale::getEnsembleInputArray@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::resize(a2, 0x16uLL);
  v4 = *a2;
  result = *a1;
  *(v4 + 16) = *(a1 + 16);
  v7 = *(a1 + 48);
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 48) = v7;
  *(v4 + 64) = v6;
  *(v4 + 32) = v8;
  *v4 = result;
  return result;
}

void sub_25C64F680(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(result, a2 - v2);
  }
}

void Nightingale::uiLogProcessor::print_anUILog(uint64_t result, char **a2)
{
  v95 = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    log = ha_get_log(result);
    v4 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      v7 = 0;
      do
      {
        v8 = ha_get_log(v4);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        if (v9)
        {
          v34 = *v5;
          v35 = v5[28];
          *buf = 67109376;
          v92 = v34;
          v93 = 1024;
          v94 = v35;
          _os_log_debug_impl(&dword_25C4D8000, v8, OS_LOG_TYPE_DEBUG, "\t{jDayPeriodStart: %d, isDeterminant: %d", buf, 0xEu);
        }

        v10 = ha_get_log(v9);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (v11)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v89, v5, v90);
        }

        v12 = ha_get_log(v11);
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        if (v13)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v87, v5, v88);
        }

        v14 = ha_get_log(v13);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        if (v15)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v85, v5, v86);
        }

        v16 = ha_get_log(v15);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (v17)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v83, v5, &v84, v16);
        }

        v18 = ha_get_log(v17);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v19)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v81, v5, &v82, v18);
        }

        v20 = ha_get_log(v19);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
        if (v21)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v79, v5, &v80, v20);
        }

        v22 = ha_get_log(v21);
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v23)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v77, v5, &v78, v22);
        }

        v24 = ha_get_log(v23);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v75, v76);
        }

        v26 = *(v5 + 9);
        v27 = *(v5 + 10);
        if (v26 != v27)
        {
          v28 = 0;
          do
          {
            v29 = ha_get_log(v25);
            v25 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
            if (v25)
            {
              v31 = *(v26 + v28);
              *buf = 67109120;
              v92 = v31;
              _os_log_debug_impl(&dword_25C4D8000, v29, OS_LOG_TYPE_DEBUG, "%d ", buf, 8u);
            }

            if (~*(v5 + 9) + *(v5 + 10) > v28)
            {
              v30 = ha_get_log(v25);
              v25 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
              if (v25)
              {
                Nightingale::uiLogProcessor::print_anUILog(&v73, v74);
              }
            }

            ++v28;
          }

          while (v26 + v28 != v27);
        }

        v32 = ha_get_log(v25);
        v4 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
        if (v4)
        {
          Nightingale::uiLogProcessor::print_anUILog(&v71, v72);
        }

        if (-1 - 0x5555555555555555 * ((a2[1] - *a2) >> 5) > v7)
        {
          v33 = ha_get_log(v4);
          v4 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
          if (v4)
          {
            Nightingale::uiLogProcessor::print_anUILog(&v69, v70);
          }
        }

        ++v7;
        v5 += 96;
      }

      while (v5 != v6);
    }

    v36 = ha_get_log(v4);
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
    if (v37)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v38 = ha_get_log(v37);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
    if (v39)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v40 = ha_get_log(v39);
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
    if (v41)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v42 = ha_get_log(v41);
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
    if (v43)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v44 = ha_get_log(v43);
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
    if (v45)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v46 = ha_get_log(v45);
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
    if (v47)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v48 = ha_get_log(v47);
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
    if (v49)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v50 = ha_get_log(v49);
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG);
    if (v51)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v52 = ha_get_log(v51);
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
    if (v53)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v54 = ha_get_log(v53);
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
    if (v55)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v56 = ha_get_log(v55);
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);
    if (v57)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v58 = ha_get_log(v57);
    v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
    if (v59)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v60 = ha_get_log(v59);
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG);
    if (v61)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v62 = ha_get_log(v61);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
    if (v63)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v64 = ha_get_log(v63);
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG);
    if (v65)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v66 = ha_get_log(v65);
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
    if (v67)
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }

    v68 = ha_get_log(v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::print_anUILog();
    }
  }
}

void *Nightingale::PhaseSet::add(void *result, unsigned int a2)
{
  if (a2 >= 9)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *result |= 1 << a2;
  return result;
}

void *Nightingale::PhaseSet::remove(void *result, unsigned int a2)
{
  if (a2 >= 9)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset reset argument out of range");
  }

  *result &= ~(1 << a2);
  return result;
}

uint64_t Nightingale::PhaseSet::contains(void *a1, unsigned int a2)
{
  if (a2 >= 9)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return (*a1 >> a2) & 1;
}

void Nightingale::PhaseSet::phasesOnInPhaseSet2Vec(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 0x706050403020100;
  v21 = 8;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v17, &v20, v22, 9);
  v5 = v17;
  v4 = v18;
  if (v18 != v17)
  {
    v6 = 0;
    do
    {
      v7 = v5[v6];
      if (v7 >= 9)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
      }

      if ((*a1 >> v7))
      {
        v9 = *(a2 + 8);
        v8 = *(a2 + 16);
        if (v9 >= v8)
        {
          v11 = *a2;
          v12 = &v9[-*a2];
          v13 = (v12 + 1);
          if ((v12 + 1) < 0)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v14 = v8 - v11;
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            operator new();
          }

          v16 = &v9[-*a2];
          *v12 = v7;
          v10 = v12 + 1;
          memcpy(0, v11, v16);
          *a2 = 0;
          *(a2 + 8) = v12 + 1;
          *(a2 + 16) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v9 = v7;
          v10 = v9 + 1;
        }

        *(a2 + 8) = v10;
        v5 = v17;
        v4 = v18;
      }

      ++v6;
    }

    while (v4 - v5 > v6);
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }
}

__n128 Nightingale::uiProcessForLstm::uiProcessForLstm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = *a5;
  *(a1 + 40) = a5[1].n128_u64[0];
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = *a5;
  *(a1 + 40) = a5[1].n128_u64[0];
  *(a1 + 24) = result;
  return result;
}

void Nightingale::uiProcessForLstm::prepareUiLogForDL(uint64_t **result, uint64_t a2, float **a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 4) == 1 && *(a2 + 12) == 1 && *(a2 + 20) == 1)
  {
    *(result + 14) = *(a2 + 16);
    *(result + 12) = *a2;
    *(result + 13) = *(a2 + 8);
    Nightingale::uiProcessForLstm::prepareDLSliceFlow(result, a2, a3);

    Nightingale::uiProcessForLstm::prepareDLSliceCycleMeanStd(result, v10, v11, v9, a4, a5);
  }
}

void Nightingale::uiProcessForLstm::prepareDLSliceFlow(uint64_t **a1, uint64_t a2, float **a3)
{
  v4 = a1[2];
  if (*(v4 + 12))
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = &Nightingale::DEFAULT_PERIOD_LEN_EXTEND_1DAYPERIOD;
  }

  v6 = *v5;
  IdxOfDailyInGreaterThanJayDay = Nightingale::getIdxOfDailyInGreaterThanJayDay(*a1, *(a1 + 12));
  if ((IdxOfDailyInGreaterThanJayDay & 0x100000000) != 0)
  {
    v44 = IdxOfDailyInGreaterThanJayDay;
    __src = 0;
    v48 = 0;
    v49 = 0;
    v8 = a1[1];
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      v11 = 0;
      do
      {
        v13 = *(v9 + 8) != 1 || *v9 != *(v9 + 4) || v6 < 2;
        if (!v13)
        {
          v14 = 1;
          do
          {
            v15 = v14 + *v9;
            if (v15 >= *(a1 + 12) && v15 <= *(a1 + 13))
            {
              if (v11 >= v49)
              {
                v16 = __src;
                v17 = v11 - __src;
                v18 = (v11 - __src) >> 2;
                v19 = v18 + 1;
                if ((v18 + 1) >> 62)
                {
                  std::vector<float>::__throw_length_error[abi:ne200100]();
                }

                v20 = v49 - __src;
                if ((v49 - __src) >> 1 > v19)
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
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v21);
                }

                v22 = v18;
                v23 = (4 * v18);
                v24 = &v23[-v22];
                *v23 = v15;
                v11 = (v23 + 1);
                memcpy(v24, v16, v17);
                v25 = __src;
                __src = v24;
                v48 = v11;
                v49 = 0;
                if (v25)
                {
                  operator delete(v25);
                }
              }

              else
              {
                *v11 = v15;
                v11 += 4;
              }

              v48 = v11;
            }

            ++v14;
          }

          while (v6 != v14);
        }

        v9 += 96;
      }

      while (v9 != v10);
    }

    v26 = *(a1 + 12);
    v27 = a3;
    if (v26 <= *(a1 + 13))
    {
      v28 = v44;
      do
      {
        v29 = **a1;
        if (0xEEEEEEEEEEEEEEEFLL * (((*a1)[1] - v29) >> 2) > v28 && (v30 = (v29 + 60 * v28), v26 == *v30))
        {
          v31 = v30[1];
          v32 = 0;
          if (v31 <= 4)
          {
            v32 = dword_25C67C650[v31];
          }

          v46 = v32;
          std::vector<float>::push_back[abi:ne200100](v27, &v46);
          ++v28;
        }

        else
        {
          std::vector<float>::push_back[abi:ne200100](v27, &Nightingale::HkDlFlowMap::flow_unknown);
        }

        v34 = __src;
        v33 = v48;
        if (__src != v48 && v26 == *__src && v28 >= 1)
        {
          v36 = (v28 - 1);
          v37 = **a1;
          if (0xEEEEEEEEEEEEEEEFLL * (((*a1)[1] - v37) >> 2) <= v36)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          if ((*(v37 + 60 * v36 + 4) - 5) <= 0xFFFFFFFB)
          {
            *(v27[1] - 1) = 2.0;
          }

          v38 = v33 - (v34 + 4);
          if (v33 != v34 + 4)
          {
            memmove(v34, v34 + 4, v33 - (v34 + 4));
          }

          v48 = &v34[v38];
          v27 = a3;
        }

        v13 = v26++ < *(a1 + 13);
      }

      while (v13);
    }

    v39 = *v27;
    v40 = v27[1];
    if (*v27 != v40)
    {
      v41 = *(a1 + 7);
      if (v41 != 0.0)
      {
        v42 = *(a1 + 6);
        v43 = v40 - v39;
        if (v43 <= 1)
        {
          v43 = 1;
        }

        do
        {
          *v39 = (*v39 - v42) / v41;
          ++v39;
          --v43;
        }

        while (v43);
      }
    }

    if (__src)
    {
      v48 = __src;
      operator delete(__src);
    }
  }
}

void sub_25C6503C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::uiProcessForLstm::prepareDLSliceCycleMeanStd(uint64_t result, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = **(result + 8);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(*(result + 8) + 8) - v6) >> 5);
  if (v7 >= 2)
  {
    v11 = v7 - 1;
    v12 = v7 & 0x7FFFFFFF;
    v13 = (96 * v12) | 0x18;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(*(result + 8) + 8) - v6) >> 5);
    while (1)
    {
      v15 = (v14 - 1);
      if (v7 <= v15)
      {
        goto LABEL_35;
      }

      v16 = v6 + 96 * v15;
      v17 = *(result + 48);
      if (v17 >= *v16)
      {
        break;
      }

      --v12;
      v13 -= 96;
      LODWORD(v14) = v14 - 1;
      if (v15 <= 0)
      {
        return;
      }
    }

    if (*(v16 + 36) == 1 && *(v16 + 44) == 1)
    {
      v18 = roundf(*(v16 + 32)) - (v17 - *v16);
      v19 = sqrtf(*(v16 + 40));
      v20 = *(result + 52);
      if (*(v16 + 24) == 1 && v20 >= *(v16 + 20))
      {
        v20 = *(v16 + 20);
      }

      Nightingale::uiProcessForLstm::fillUpMeanStdVec(v18, v19, result, v17, v20, a5, a6);
      if (v14 < v11)
      {
        v22 = 0;
        while (1)
        {
          v23 = **(result + 8);
          if (0xAAAAAAAAAAAAAAABLL * ((*(*(result + 8) + 8) - v23) >> 5) <= v12 + v22)
          {
            break;
          }

          v24 = v23 + v13;
          if (*(v23 + v13 + 12) == 1 && *(v24 + 20) == 1 && *(v23 + v13) == 1)
          {
            Nightingale::uiProcessForLstm::fillUpMeanStdVec(roundf(*(v24 + 8)), sqrtf(*(v24 + 16)), v21, *(v24 - 24), *(v23 + v13 - 4), a5, a6);
          }

          v25 = v12 + v22++;
          v13 += 96;
          if (v11 <= v25 + 1)
          {
            goto LABEL_20;
          }
        }

LABEL_35:
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

LABEL_20:
      v26 = *(*(result + 8) + 8);
      v27 = *(v26 - 96);
      if (*(result + 48) < v27 && *(v26 - 60) == 1 && *(v26 - 52) == 1)
      {
        Nightingale::uiProcessForLstm::fillUpMeanStdVec(roundf(*(v26 - 64)), sqrtf(*(v26 - 56)), v21, v27, *(result + 52), a5, a6);
      }

      v28 = *a5;
      v29 = *(a5 + 8);
      if (*a5 != v29)
      {
        v30 = *(result + 36);
        if (v30 != 0.0)
        {
          v31 = *(result + 32);
          v32 = (v29 - v28) >> 2;
          if (v32 <= 1)
          {
            v32 = 1;
          }

          do
          {
            *v28 = (*v28 - v31) / v30;
            ++v28;
            --v32;
          }

          while (v32);
        }
      }

      v33 = *a6;
      v34 = *(a6 + 8);
      if (*a6 != v34)
      {
        v35 = *(result + 44);
        if (v35 != 0.0)
        {
          v36 = *(result + 40);
          v37 = (v34 - v33) >> 2;
          if (v37 <= 1)
          {
            v37 = 1;
          }

          do
          {
            *v33 = (*v33 - v36) / v35;
            ++v33;
            --v37;
          }

          while (v37);
        }
      }
    }
  }
}

void Nightingale::uiProcessForLstm::fillUpMeanStdVec(float a1, float a2, uint64_t a3, int a4, int a5, const void **a6, const void **a7)
{
  v10 = a2;
  v11 = a1;
  if (a4 <= a5)
  {
    v9 = a5 - a4 + 1;
    do
    {
      std::vector<float>::push_back[abi:ne200100](a6, &v11);
      v11 = v11 + -1.0;
      std::vector<float>::push_back[abi:ne200100](a7, &v10);
      --v9;
    }

    while (v9);
  }
}

char *std::vector<std::pair<int,int>>::__assign_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 8;
        v15 += 8;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}