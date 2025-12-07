uint64_t operations_research::sat::ReservoirTimeTabling::ReservoirTimeTabling(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  *(a1 + 8) = 0;
  v9 = (a1 + 8);
  *a1 = &unk_284F44A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = a2[1];
  v76 = (a1 + 8);
  if (v10 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = (a1 + 32);
  *(a1 + 48) = 0;
  v12 = a3[1] - *a3;
  if (v12)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v13 = (a1 + 56);
  *(a1 + 72) = 0;
  v14 = a4[1] - *a4;
  v75 = (a1 + 56);
  if (v14)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 80) = a5;
  *(a1 + 88) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a6) + 16;
  v15 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a6);
  *(a1 + 104) = 0u;
  *(a1 + 96) = v15;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a6);
  v17 = operations_research::sat::GenericLiteralWatcher::Register(v16, a1);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v18 >= 1)
  {
    v19 = 0;
    v77 = v18 & 0x7FFFFFFF;
    do
    {
      v21 = *v11 + 24 * v19;
      v22 = *(v21 + 16);
      v78 = *v21;
      v79 = v22;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(v16, &v78, v17);
      v23 = *v11;
      v24 = (*v11 + 24 * v19);
      v25 = *v24;
      v26 = *(v24 + 2);
      v27 = v26;
      if (v25 != -1)
      {
        v27 = v26 - *(*(*(a1 + 96) + 40) + ((8 * v25) ^ 8)) * *(v24 + 1);
      }

      if (v27 >= 1)
      {
        v28 = *(*v9 + 24 * v19);
        if ((~v28 & 0xFFFFFFFE) != 0)
        {
          v29 = (v28 << 32) ^ 0x100000000;
          v30 = v29 >> 32;
          v32 = *(v16 + 11);
          v31 = *(v16 + 12);
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3);
          if (v33 <= v29 >> 32)
          {
            v34 = (v29 + 0x100000000) >> 32;
            if (v34 <= v33)
            {
              if (v34 < v33)
              {
                v35 = v32 + 24 * v34;
                if (v31 != v35)
                {
                  v36 = *(v16 + 12);
                  do
                  {
                    v38 = *(v36 - 24);
                    v36 -= 24;
                    v37 = v38;
                    if (v38)
                    {
                      *(v31 - 16) = v37;
                      operator delete(v37);
                    }

                    v31 = v36;
                  }

                  while (v36 != v35);
                }

                *(v16 + 12) = v35;
                v13 = v75;
                v9 = v76;
              }
            }

            else
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v16 + 88, v34 - v33);
            }
          }

          *&v78 = v17 | 0xFFFFFFFF00000000;
          v39 = (*(v16 + 11) + 24 * v30);
          v40 = v39[1];
          if (*v39 == v40 || *(v40 - 8) != v17 || *(v40 - 4) != -1)
          {
            std::vector<long long>::push_back[abi:ne200100](v39, &v78);
          }
        }

        v41 = *(*v13 + 4 * v19);
        v43 = *(v16 + 8);
        v42 = *(v16 + 9);
        v44 = (v42 - v43) >> 3;
        v45 = 0xAAAAAAAAAAAAAAABLL * v44;
        if (v41 >= -1431655765 * v44)
        {
          v46 = v41 + 1;
          if (v46 <= v45)
          {
            if (v46 < v45)
            {
              v47 = v43 + 24 * v46;
              if (v42 != v47)
              {
                v48 = *(v16 + 9);
                do
                {
                  v50 = *(v48 - 24);
                  v48 -= 24;
                  v49 = v50;
                  if (v50)
                  {
                    *(v42 - 16) = v49;
                    operator delete(v49);
                  }

                  v42 = v48;
                }

                while (v48 != v47);
              }

              *(v16 + 9) = v47;
              v13 = v75;
              v9 = v76;
            }
          }

          else
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v16 + 64, v46 - v45);
          }
        }

        v51 = *(v16 + 8) + 24 * v41;
        *&v78 = v17 | 0xFFFFFFFF00000000;
        std::vector<long long>::push_back[abi:ne200100](v51, &v78);
        v23 = *v11;
        v52 = (*v11 + 24 * v19);
        v25 = *v52;
        v26 = *(v52 + 2);
      }

      if (v25 != 0xFFFFFFFFLL)
      {
        v26 += *(*(*(a1 + 96) + 40) + 8 * v25) * *(v23 + 24 * v19 + 8);
      }

      if (v26 < 0)
      {
        v53 = *(*v9 + 24 * v19);
        if (v53 != -1)
        {
          v55 = *(v16 + 11);
          v54 = *(v16 + 12);
          v56 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v55) >> 3);
          if (v56 <= v53)
          {
            v57 = v53 + 1;
            if (v57 <= v56)
            {
              if (v57 < v56)
              {
                v58 = v55 + 24 * v57;
                if (v54 != v58)
                {
                  v59 = *(v16 + 12);
                  do
                  {
                    v61 = *(v59 - 24);
                    v59 -= 24;
                    v60 = v61;
                    if (v61)
                    {
                      *(v54 - 16) = v60;
                      operator delete(v60);
                    }

                    v54 = v59;
                  }

                  while (v59 != v58);
                }

                *(v16 + 12) = v58;
                v13 = v75;
                v9 = v76;
              }
            }

            else
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v16 + 88, v57 - v56);
            }
          }

          *&v78 = v17 | 0xFFFFFFFF00000000;
          v62 = (*(v16 + 11) + 24 * v53);
          v63 = v62[1];
          if (*v62 == v63 || *(v63 - 8) != v17 || *(v63 - 4) != -1)
          {
            std::vector<long long>::push_back[abi:ne200100](v62, &v78);
          }
        }

        v64 = *(*v13 + 4 * v19) ^ 1;
        v66 = *(v16 + 8);
        v65 = *(v16 + 9);
        v67 = (v65 - v66) >> 3;
        v68 = 0xAAAAAAAAAAAAAAABLL * v67;
        if (v64 >= -1431655765 * v67)
        {
          v69 = v64 + 1;
          if (v69 > v68)
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v16 + 64, v69 - v68);
          }

          else if (v69 < v68)
          {
            v70 = v66 + 24 * v69;
            if (v65 != v70)
            {
              v71 = *(v16 + 9);
              do
              {
                v73 = *(v71 - 24);
                v71 -= 24;
                v72 = v73;
                if (v73)
                {
                  *(v65 - 16) = v72;
                  operator delete(v72);
                }

                v65 = v71;
              }

              while (v71 != v70);
            }

            *(v16 + 9) = v70;
            v13 = v75;
            v9 = v76;
          }
        }

        v20 = *(v16 + 8) + 24 * v64;
        *&v78 = v17 | 0xFFFFFFFF00000000;
        std::vector<long long>::push_back[abi:ne200100](v20, &v78);
      }

      ++v19;
    }

    while (v19 != v77);
  }

  operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(v16, v17);
  return a1;
}

void sub_23CD17D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11)
{
  v14 = v11[19];
  if (v14)
  {
    v11[20] = v14;
    operator delete(v14);
    v15 = v11[16];
    if (!v15)
    {
LABEL_3:
      v16 = *a9;
      if (!*a9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = v11[16];
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  v11[17] = v15;
  operator delete(v15);
  v16 = *a9;
  if (!*a9)
  {
LABEL_4:
    v17 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v11[14] = v16;
  operator delete(v16);
  v17 = *a10;
  if (!*a10)
  {
LABEL_5:
    v18 = *v12;
    if (!*v12)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11[8] = v17;
  operator delete(v17);
  v18 = *v12;
  if (!*v12)
  {
LABEL_6:
    v19 = *a11;
    if (!*a11)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11[5] = v18;
  operator delete(v18);
  v19 = *a11;
  if (!*a11)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  v11[2] = v19;
  operator delete(v19);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ReservoirTimeTabling::Propagate(operations_research::sat::ReservoirTimeTabling *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  result = operations_research::sat::ReservoirTimeTabling::BuildProfile(this);
  if (result)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = v5 & 0x7FFFFFFF;
      do
      {
        v9 = *(*(this + 7) + 4 * v7);
        if (((*(*(*(this + 11) + 8) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 & 0x3F ^ 1u)) & 1) == 0)
        {
          v10 = (*(this + 4) + v6);
          v11 = *(v10 + 2);
          if (*v10 != -1)
          {
            v11 += *(*(*(this + 12) + 40) + 8 * *v10) * *(v10 + 1);
          }

          if (v11 >= 1)
          {
            if ((operations_research::sat::ReservoirTimeTabling::TryToIncreaseMin(this, v7) & 1) == 0)
            {
              return 0;
            }
          }

          else if (v11 < 0)
          {
            result = operations_research::sat::ReservoirTimeTabling::TryToDecreaseMax(this, v7);
            if (!result)
            {
              return result;
            }
          }
        }

        ++v7;
        v6 += 24;
      }

      while (v8 != v7);
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::ReservoirTimeTabling::BuildProfile(operations_research::sat::ReservoirTimeTabling *this)
{
  v2 = (this + 152);
  v3 = *(this + 19);
  *(this + 20) = v3;
  v5 = *(this + 1);
  v4 = *(this + 2);
  v6 = *(this + 21);
  if (v3 >= v6)
  {
    v8 = v6 - v3;
    v9 = v8 >> 3;
    if ((v8 >> 3) <= 1)
    {
      v9 = 1;
    }

    v10 = v8 >= 0x7FFFFFFFFFFFFFF0;
    v11 = 0xFFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v9;
    }

    if (!(v11 >> 60))
    {
      operator new();
    }

LABEL_55:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *v3 = xmmword_23CE487A0;
  v7 = v3 + 1;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  *(this + 20) = v7;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v12 & 0x7FFFFFFF;
    v15 = 16;
    while (1)
    {
      v16 = *(this + 12);
      v17 = (*(this + 4) + v15);
      v18 = *(v17 - 4);
      v19 = *v17;
      if (v18 != -1)
      {
        v19 += *(*(v16 + 40) + 8 * v18) * *(v17 - 1);
      }

      if (v19 < 1)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v24 = *(*(this + 7) + 4 * v13);
        if ((*(*(*(this + 11) + 8) + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v24 & 0x3F ^ 1u)))
        {
          goto LABEL_12;
        }

        v25 = (*(this + 1) + v15);
        v26 = *(v25 - 4);
        v23 = *v25;
        if (v26 != -1)
        {
          v23 += *(*(v16 + 40) + 8 * v26) * *(v25 - 1);
        }
      }

      else
      {
        v20 = *(*(this + 7) + 4 * v13);
        if (((*(*(*(this + 11) + 8) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_12;
        }

        v21 = (*(this + 1) + v15);
        v22 = *(v21 - 4);
        v23 = *v21;
        if (v22 != -1)
        {
          v23 -= *(*(v16 + 40) + ((8 * v22) ^ 8)) * *(v21 - 1);
        }
      }

      *&v54 = v23;
      *(&v54 + 1) = v19;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v2, &v54);
LABEL_12:
      ++v13;
      v15 += 24;
      if (v14 == v13)
      {
        v7 = *(this + 20);
        break;
      }
    }
  }

  v27 = *(this + 21);
  if (v7 < v27)
  {
    v28 = xmmword_23CE4EA10;
    *v7 = xmmword_23CE4EA10;
    v29 = v7 + 1;
    goto LABEL_37;
  }

  v30 = *v2;
  v31 = v7 - *v2;
  v32 = (v31 >> 4) + 1;
  if (v32 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v33 = v27 - v30;
  if (v33 >> 3 > v32)
  {
    v32 = v33 >> 3;
  }

  if (v33 >= 0x7FFFFFFFFFFFFFF0)
  {
    v34 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v34 = v32;
  }

  if (v34)
  {
    if (!(v34 >> 60))
    {
      operator new();
    }

    goto LABEL_55;
  }

  v35 = (16 * (v31 >> 4));
  *v35 = xmmword_23CE4EA10;
  v29 = v35 + 1;
  memcpy(0, v30, v31);
  *(this + 19) = 0;
  *(this + 20) = v29;
  *(this + 21) = 0;
  if (v30)
  {
    operator delete(v30);
  }

LABEL_37:
  v36 = *(this + 19);
  v37 = 126 - 2 * __clz(v29 - v36);
  *(this + 20) = v29;
  if (v29 == v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  v39 = 1;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(v36, v29, &v54, v38, 1, v28);
  v40 = *(this + 19);
  v41 = *(this + 20);
  if (v40 != v41)
  {
    v42 = 0;
    v43 = *(this + 19);
    do
    {
      while (1)
      {
        v45 = &v40[2 * v42];
        if (*v43 == *v45)
        {
          break;
        }

        v44 = &v40[2 * ++v42];
        *v44 = *v43;
        v44[1] = v45[1] + v43[1];
        v43 += 2;
        if (v43 == v41)
        {
          goto LABEL_45;
        }
      }

      v45[1] += v43[1];
      v43 += 2;
    }

    while (v43 != v41);
LABEL_45:
    v39 = v42 + 1;
  }

  v46 = (v41 - v40) >> 4;
  if (v39 <= v46)
  {
    if (v39 < v46)
    {
      v41 = &v40[2 * v39];
      *(this + 20) = v41;
    }
  }

  else
  {
    std::vector<std::array<long long,2ul>>::__append(v2, v39 - v46);
    v40 = *(this + 19);
    v41 = *(this + 20);
  }

  if (v40 == v41)
  {
    return 1;
  }

  while (v40[1] <= *(this + 10))
  {
    v40 += 2;
    if (v40 == v41)
    {
      return 1;
    }
  }

  operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(this, *v40, 0xFFFFFFFF);
  v49 = *(this + 12);
  v48 = *(this + 13);
  v50 = *(this + 14);
  v51 = *(this + 16);
  v52 = (*(this + 17) - v51) >> 4;
  v53 = *(v49 + 840);
  *(v53 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v53 + 72), v48, v50, (v50 - v48) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v49, v51, v52, (v53 + 72));
  return 0;
}

uint64_t operations_research::sat::ReservoirTimeTabling::TryToIncreaseMin(operations_research::sat::ReservoirTimeTabling *this, uint64_t a2)
{
  v2 = (*(this + 4) + 24 * a2);
  v3 = *(v2 + 2);
  if (*v2 != -1)
  {
    v3 += *(*(*(this + 12) + 40) + 8 * *v2) * *(v2 + 1);
  }

  v42 = v3;
  if (v3 < 1)
  {
    operations_research::sat::ReservoirTimeTabling::TryToIncreaseMin(&v42, &v43);
  }

  v4 = a2;
  v5 = *(this + 1) + 24 * a2;
  v6 = *v5;
  if (*v5 == -1)
  {
    return 1;
  }

  v9 = v5 + 8;
  v7 = *(v5 + 8);
  v8 = *(v9 + 8);
  v10 = *(*(this + 12) + 40);
  v11 = 8 * v6;
  v12 = v8 + *(v10 + v11) * v7;
  v13 = v8 - *(v10 + (v11 ^ 8)) * v7;
  if (v12 == v13)
  {
    return 1;
  }

  v15 = *(this + 19);
  v16 = *(this + 20);
  if (v16 != v15)
  {
    v17 = (v16 - v15) >> 4;
    v16 = *(this + 19);
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[16 * (v17 >> 1)];
      v21 = *v19;
      v20 = (v19 + 2);
      v17 += ~(v17 >> 1);
      if (v21 > v13)
      {
        v17 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    while (v17);
  }

  v22 = (v16 - v15) >> 4;
  v23 = &v15[16 * v22 - 16];
  v24 = *(this + 10);
  if (v3 + *(v23 + 1) <= v24)
  {
LABEL_16:
    v26 = v22 - 2;
    while (1)
    {
      v13 = *&v15[16 * v26 + 16];
      if (v13 <= v12)
      {
        return 1;
      }

      v27 = *&v15[16 * v26-- + 8] + v3;
      if (v27 > v24)
      {
        goto LABEL_21;
      }
    }
  }

  v25 = *(*(this + 7) + 4 * a2);
  if ((*(*(*(this + 11) + 8) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25))
  {
    if (*v23 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    ++v13;
  }

LABEL_21:
  operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(this, v13 - 1, a2);
  v29 = this;
  v30 = (*(this + 4) + 24 * v4);
  v31 = *v30;
  if (v31 != -1)
  {
    v33 = v30 + 2;
    v32 = *(v30 + 1);
    v34 = v3 - *(v33 + 1);
    if (v34 / v32 * v32 >= v34)
    {
      v35 = v34 / v32;
    }

    else
    {
      v35 = v34 / v32 + 1;
    }

    *&v43 = v31;
    *(&v43 + 1) = v35;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 128, &v43);
    v29 = this;
  }

  v36 = (*(v29 + 1) + 24 * v4);
  v37 = *v36;
  if (v37 == -1)
  {
    if (*(v36 + 2) < v13)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    v37 = 0xFFFFFFFFLL;
  }

  else
  {
    v39 = v36 + 2;
    v38 = *(v36 + 1);
    v40 = v13 - *(v39 + 1);
    if (v40 / v38 * v38 >= v40)
    {
      v41 = v40 / v38;
    }

    else
    {
      v41 = v40 / v38 + 1;
    }
  }

  return operations_research::sat::IntegerTrail::ConditionalEnqueue(*(v29 + 12), *(*(v29 + 7) + 4 * v4), v37, v41, v29 + 13, v29 + 16);
}

uint64_t operations_research::sat::ReservoirTimeTabling::TryToDecreaseMax(operations_research::sat::ReservoirTimeTabling *this, uint64_t a2)
{
  v2 = (*(this + 4) + 24 * a2);
  v3 = *(v2 + 2);
  if (*v2 != -1)
  {
    v3 += *(*(*(this + 12) + 40) + 8 * *v2) * *(v2 + 1);
  }

  v52 = v3;
  if ((v3 & 0x8000000000000000) == 0)
  {
    operations_research::sat::ReservoirTimeTabling::TryToDecreaseMax(&v52, &v53);
  }

  v4 = a2;
  v5 = *(this + 1) + 24 * a2;
  v6 = *v5;
  if (*v5 == -1)
  {
    return 1;
  }

  v9 = v5 + 8;
  v7 = *(v5 + 8);
  v8 = *(v9 + 8);
  v10 = *(*(this + 12) + 40);
  v11 = 8 * v6;
  v12 = v8 + *(v10 + v11) * v7;
  v13 = v8 - *(v10 + (v11 ^ 8)) * v7;
  if (v12 == v13)
  {
    return 1;
  }

  v14 = *(this + 19);
  v15 = *(this + 20);
  if (v15 != v14)
  {
    v16 = (v15 - v14) >> 4;
    v15 = *(this + 19);
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[16 * (v16 >> 1)];
      v20 = *v18;
      v19 = (v18 + 2);
      v16 += ~(v16 >> 1);
      if (v20 > v12)
      {
        v16 = v17;
      }

      else
      {
        v15 = v19;
      }
    }

    while (v16);
  }

  v21 = (v15 - v14) >> 4;
  v22 = *&v14[16 * v21 - 16];
  if (v22 >= v13)
  {
    return 1;
  }

  v23 = *(this + 10);
  if (*&v14[16 * v21 - 8] - v3 <= v23)
  {
    do
    {
      v22 = *&v14[16 * v21];
      if (v22 >= v13)
      {
        return 1;
      }

      v24 = *&v14[16 * v21 + 8] - v3;
      LODWORD(v21) = v21 + 1;
    }

    while (v24 <= v23);
  }

  operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(this, v22, a2);
  v26 = this;
  if (v22 >= v12)
  {
    v40 = *(*(this + 7) + 4 * v4);
    if (((*(*(*(this + 11) + 8) + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
      operations_research::sat::IntegerTrail::EnqueueLiteral(*(this + 12), v40, *(this + 13), (*(this + 14) - *(this + 13)) >> 2, *(this + 16), (*(this + 17) - *(this + 16)) >> 4);
      v26 = this;
    }

    v41 = *(v26 + 12);
    v42 = (*(v26 + 1) + 24 * v4);
    v43 = *v42;
    v44 = *(v42 + 2);
    if (v43 == -1)
    {
      if (v22 < v44)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      v47 = 0xFFFFFFFFLL;
    }

    else
    {
      v45 = (v22 - v44) / *(v42 + 1) - ((v22 - v44) / *(v42 + 1) * *(v42 + 1) > v22 - v44);
      if (v45 >= 0x8000000000000002)
      {
        v46 = -v45;
      }

      else
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v47 = v43 ^ 1;
    }

    v48 = *(v26 + 13);
    v49 = (*(v26 + 14) - v48) >> 2;
    v50 = *(v26 + 16);
    v51 = (*(v26 + 17) - v50) >> 4;

    return operations_research::sat::IntegerTrail::Enqueue(v41, v47, v46, v48, v49, v50, v51);
  }

  else
  {
    v27 = (*(this + 1) + 24 * v4);
    v28 = *v27;
    if (v28 != -1)
    {
      v30 = v27 + 2;
      v29 = *(v27 + 1);
      v31 = v22 - *(v30 + 1) + 1;
      if (v31 / v29 * v29 >= v31)
      {
        v32 = v31 / v29;
      }

      else
      {
        v32 = v31 / v29 + 1;
      }

      *&v53 = v28;
      *(&v53 + 1) = v32;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 128, &v53);
      v26 = this;
    }

    v34 = *(v26 + 12);
    v33 = *(v26 + 13);
    v35 = *(v26 + 14);
    v36 = *(v26 + 16);
    v37 = (*(v26 + 17) - v36) >> 4;
    v38 = *(v34 + 840);
    *(v38 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v38 + 72), v33, v35, (v35 - v33) >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v34, v36, v37, (v38 + 72));
    return 0;
  }
}

void operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1 + 16;
  a1[17] = a1[16];
  v4 = a1 + 13;
  a1[14] = a1[13];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3);
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v38 = a2 + 1;
    v10 = v5 & 0x7FFFFFFF;
    v11 = a3;
    do
    {
      if (v11)
      {
        v12 = a1[12];
        v13 = (a1[4] + v9);
        v14 = *v13;
        v15 = *(v13 + 2);
        if (v14 == -1)
        {
          v16 = *(v13 + 2);
        }

        else
        {
          v16 = v15 + *(*(v12 + 40) + 8 * v14) * *(v13 + 1);
        }

        v17 = a1[7];
        v18 = *(v17 + v8);
        v19 = *(*(a1[11] + 8) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v20 = v18 & 0x3F;
        if (v16 < 1)
        {
          if ((v19 >> (v20 ^ 1u)))
          {
            std::vector<int>::push_back[abi:ne200100](v4, (v17 + v8));
          }

          else
          {
            if (v14 != -1)
            {
              v28 = v16 - v15;
              v29 = *(v13 + 1);
              if (v28 / v29 * v29 >= v28)
              {
                v30 = v28 / v29;
              }

              else
              {
                v30 = v28 / v29 + 1;
              }

              *&v39 = v14;
              *(&v39 + 1) = v30;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
            }

            if (v16 < 0)
            {
              v31 = a1[1];
              v32 = *(v31 + v9);
              if (v32 != -1)
              {
                v35 = (v31 + v9 + 8);
                v33 = *v35;
                v34 = v35[1];
                if (v34 + *(*(a1[12] + 40) + 8 * v32) * *v35 > a2)
                {
                  v36 = v38 - v34;
                  if (v36 / v33 * v33 >= v36)
                  {
                    v37 = v36 / v33;
                  }

                  else
                  {
                    v37 = v36 / v33 + 1;
                  }

                  *&v39 = v32;
                  *(&v39 + 1) = v37;
                  std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
                }
              }
            }
          }
        }

        else if ((v19 >> v20))
        {
          v21 = a1[1];
          v22 = *(v21 + v9);
          v23 = *(v21 + v9 + 16);
          if (v22 != -1)
          {
            v23 -= *(*(v12 + 40) + ((8 * v22) ^ 8)) * *(v21 + v9 + 8);
          }

          if (v23 <= a2)
          {
            if (v14 != -1)
            {
              v24 = v16 - v15;
              v25 = *(v13 + 1);
              if (v24 / v25 * v25 >= v24)
              {
                v26 = v24 / v25;
              }

              else
              {
                v26 = v24 / v25 + 1;
              }

              *&v39 = v14;
              *(&v39 + 1) = v26;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
              v21 = a1[1];
              v22 = *(v21 + v9);
            }

            if (v22 != -1)
            {
              if ((a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8) - ((a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8) * *(v21 + v9 + 8) > a2 - *(v21 + v9 + 16)) >= 0x8000000000000002)
              {
                v27 = ((a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8) * *(v21 + v9 + 8) > a2 - *(v21 + v9 + 16)) - (a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8);
              }

              else
              {
                v27 = 0x7FFFFFFFFFFFFFFFLL;
              }

              *&v39 = v22 ^ 1u;
              *(&v39 + 1) = v27;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
            }

            LODWORD(v39) = *(a1[7] + v8) ^ 1;
            std::vector<int>::push_back[abi:ne200100](v4, &v39);
          }
        }
      }

      v9 += 24;
      --v11;
      v8 += 4;
      --v10;
    }

    while (v10);
  }
}

uint64_t operations_research::sat::TimeTablingPerTask::TimeTablingPerTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = &unk_284F44A30;
  *(a1 + 8) = -1431655765 * ((*(a3 + 88) - *(a3 + 80)) >> 3);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  *(a1 + 128) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (2 * *(a1 + 8) != -4)
  {
    if (((2 * *(a1 + 8) + 4) & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 96);
  v10 = (*(a1 + 104) - v9) >> 2;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      *(a1 + 104) = v9 + 4 * v8;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 96), v8 - v10);
  }

  *(a1 + 160) = 0;
  v11 = *(a1 + 16);
  if (v11 == -1)
  {
    if (*(a1 + 8) <= 0)
    {
      return a1;
    }

    v15 = *(a1 + 32);
  }

  else
  {
    if (*(a1 + 8) <= 0)
    {
      return a1;
    }

    v12 = *(*(a1 + 56) + 40);
    v13 = 8 * v11;
    v14 = *(v12 + v13);
    if (v14 + *(v12 + (v13 ^ 8)))
    {
      v19 = 0;
      do
      {
        *(*(a1 + 96) + 4 * v19) = v19;
        v20 = operations_research::sat::SchedulingDemandHelper::DemandMax(*(a1 + 48), v19);
        v21 = *(a1 + 160);
        if (v21 <= v20)
        {
          v21 = v20;
        }

        *(a1 + 160) = v21;
        ++v19;
      }

      while (v19 < *(a1 + 8));
      return a1;
    }

    v15 = *(a1 + 32) + v14 * *(a1 + 24);
  }

  v16 = 0;
  do
  {
    while (1)
    {
      *(*(a1 + 96) + 4 * v16) = v16;
      if (operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 48), v16) < v15)
      {
        break;
      }

      *(a1 + 152) = 1;
      if (++v16 >= *(a1 + 8))
      {
        return a1;
      }
    }

    v17 = operations_research::sat::SchedulingDemandHelper::DemandMax(*(a1 + 48), v16);
    v18 = *(a1 + 160);
    if (v18 <= v17)
    {
      v18 = v17;
    }

    *(a1 + 160) = v18;
    ++v16;
  }

  while (v16 < *(a1 + 8));
  return a1;
}

void sub_23CD18E90(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[17] = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[13] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[9] = v8;
  operator delete(v8);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::TimeTablingPerTask::RegisterWith(operations_research::sat::TimeTablingPerTask *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(*(this + 5), v4, a2, 1, 1);
  v5 = *(this + 4);
  if ((~v5 & 0xFFFFFFFE) != 0)
  {
    v6 = (v5 << 32) ^ 0x100000000;
    v7 = v6 >> 32;
    v9 = *(a2 + 11);
    v8 = *(a2 + 12);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
    if (v10 <= v6 >> 32)
    {
      v11 = (v6 + 0x100000000) >> 32;
      if (v11 <= v10)
      {
        if (v11 < v10)
        {
          v12 = v9 + 24 * v11;
          if (v8 != v12)
          {
            v13 = *(a2 + 12);
            do
            {
              v15 = *(v13 - 24);
              v13 -= 24;
              v14 = v15;
              if (v15)
              {
                *(v8 - 16) = v14;
                operator delete(v14);
              }

              v8 = v13;
            }

            while (v13 != v12);
          }

          *(a2 + 12) = v12;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 88, v11 - v10);
      }
    }

    *&v23 = v4 | 0xFFFFFFFF00000000;
    v16 = (*(a2 + 11) + 24 * v7);
    v17 = v16[1];
    if (*v16 == v17 || *(v17 - 8) != v4 || *(v17 - 4) != -1)
    {
      std::vector<long long>::push_back[abi:ne200100](v16, &v23);
    }
  }

  if (*(this + 2) >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = (*(*(this + 6) + 32) + v18);
      v21 = *(v20 + 2);
      v23 = *v20;
      v24 = v21;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a2, &v23, v4);
      ++v19;
      v18 += 24;
    }

    while (v19 < *(this + 2));
  }

  operations_research::sat::GenericLiteralWatcher::RegisterReversibleInt(a2, v4, this + 30);
  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

uint64_t operations_research::sat::TimeTablingPerTask::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  if (!operations_research::sat::TimeTablingPerTask::BuildProfile(this) || !operations_research::sat::TimeTablingPerTask::SweepAllTasks(this, v2) || !operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[5], 0))
  {
    return 0;
  }

  v4 = this[8];
  v5 = this[9];
  if (v4 + 16 != v5 - 16)
  {
    v6 = (v5 - 32);
    if (v5 - 32 > v4 + 16)
    {
      v7 = (v4 + 32);
      do
      {
        v3 = v7[-1];
        v7[-1] = *v6;
        *v6-- = v3;
      }

      while (v7++ < v6);
      v4 = this[8];
      v5 = this[9];
    }
  }

  v9 = (v5 - v4) >> 4;
  if (v9 >= 3)
  {
    v10 = 1;
    v11 = 2;
    do
    {
      v12 = (v4 + 16 * v10);
      v13 = *(v4 + 2 * v11 + 1);
      *v12 = -*v12;
      v12[1] = v13;
      v11 = v10 + 2;
      ++v10;
    }

    while (v9 > v11);
  }

  return operations_research::sat::TimeTablingPerTask::SweepAllTasks(this, v3);
}

uint64_t operations_research::sat::TimeTablingPerTask::BuildProfile(operations_research::sat::SchedulingConstraintHelper **this)
{
  v1 = this;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[5], 1);
  if (result)
  {
    v3 = *(v1 + 30);
    v4 = *(v1 + 2);
    if (v3 >= v4)
    {
      v9 = v4;
    }

    else
    {
      v5 = v3;
      v6 = v1[12];
      v7 = v1[5];
      v8 = *(v7 + 19);
      do
      {
        v10 = *(v6 + v5);
        v11 = *(v8 + 4 * v10);
        if (v11 == -1 || ((*(*(*(v7 + 3) + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11)) && *(*(v7 + 31) + 8 * v10) > -*(*(v7 + 32) + 8 * v10))
        {
          *(v6 + v5) = *(v6 + v3);
          *(v6 + v3) = v10;
          v3 = *(v1 + 30) + 1;
          *(v1 + 30) = v3;
          v4 = *(v1 + 2);
        }

        ++v5;
        v9 = v4;
      }

      while (v5 < v4);
    }

    v82 = 0;
    std::vector<long long>::assign(v1 + 16, v9, &v82);
    v13 = v1[16];
    if (*(v1 + 30) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = v1[12];
        v16 = *(v15 + v14);
        *(v13 + v16) = operations_research::sat::SchedulingDemandHelper::DemandMin(v1[6], *(v15 + v14++));
      }

      while (v14 < *(v1 + 30));
    }

    v1[9] = v1[8];
    v17 = *(v1 + 4);
    v18 = v1[4];
    if (v17 != -1)
    {
      v18 = (v18 - *(*(v1[7] + 5) + ((8 * v17) ^ 8)) * v1[3]);
    }

    v19 = 0x8000000000000002;
    v20 = v1[20];
    v77 = *(v1 + 152);
    started = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingStartMax(v1[5], v12);
    v23 = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingEndMin(v1[5], v22);
    v24 = *(v1 + 2);
    v25 = v24 - 1;
    if (v24 < 1)
    {
      v27 = 0;
      v30 = 0x8000000000000002;
      v52 = v1[9];
      v53 = v1[10];
      if (v52 >= v53)
      {
        goto LABEL_58;
      }

LABEL_55:
      *v52 = v19;
      v52[1] = 0;
      v54 = (v52 + 2);
      v1[9] = (v52 + 2);
      if ((v52 + 2) >= v53)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v81 = 0;
      v28 = 0;
      v29 = v18 - v20;
      v30 = 0x8000000000000002;
      v31 = 0x8000000000000002;
      v32 = v77;
      v75 = *(v1 + 2);
      v76 = v23;
      v74 = v29;
      do
      {
        while (1)
        {
          while (1)
          {
            v33 = v23 + 16 * v26;
            v35 = *(v33 + 8);
            v34 = (v33 + 8);
            v19 = v35;
            if ((v25 & 0x80000000) == 0)
            {
              if (*(started + 16 * v25 + 8) < v19)
              {
                v19 = *(started + 16 * v25 + 8);
              }

              while (1)
              {
                v36 = (started + 16 * v25);
                if (*(v36 + 1) != v19)
                {
                  break;
                }

                v28 += *(v13 + *v36);
                if (v25-- <= 0)
                {
                  v25 = -1;
                  break;
                }
              }
            }

            if (v26 < v24)
            {
              v38 = v24 - v26;
              while (*v34 == v19)
              {
                v28 -= *(v13 + *(v34 - 2));
                ++v26;
                v34 += 2;
                if (!--v38)
                {
                  v26 = v24;
                  break;
                }
              }
            }

            if (v28 > v27)
            {
              v27 = v28;
              v30 = v19;
            }

            v39 = v28 <= v29 ? v32 : v28;
            v40 = v28 <= 0 ? v28 : v39;
            if (v40 != v81)
            {
              break;
            }

            v19 = v31;
            if (v26 >= v24)
            {
              goto LABEL_54;
            }
          }

          v42 = v1[9];
          v41 = v1[10];
          if (v42 >= v41)
          {
            break;
          }

          *v42 = v31;
          *(v42 + 1) = v81;
          v1[9] = (v42 + 16);
          v81 = v40;
          v31 = v19;
          if (v26 >= v24)
          {
            goto LABEL_54;
          }
        }

        v80 = v27;
        v43 = v1;
        v44 = v1[8];
        v45 = v42 - v44;
        v46 = (v42 - v44) >> 4;
        v47 = v46 + 1;
        if ((v46 + 1) >> 60)
        {
          goto LABEL_84;
        }

        v48 = v41 - v44;
        if (v48 >> 3 > v47)
        {
          v47 = v48 >> 3;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        v78 = v40;
        v79 = v30;
        if (v49)
        {
          if (!(v49 >> 60))
          {
            operator new();
          }

LABEL_85:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v50 = (16 * v46);
        *v50 = v31;
        v50[1] = v81;
        v51 = 16 * v46 + 16;
        memcpy(0, v44, v45);
        v43[8] = 0;
        v43[9] = v51;
        v43[10] = 0;
        v1 = v43;
        if (v44)
        {
          operator delete(v44);
        }

        v30 = v79;
        v27 = v80;
        v23 = v76;
        v32 = v77;
        v29 = v74;
        v24 = v75;
        v43[9] = v51;
        v81 = v78;
        v31 = v19;
      }

      while (v26 < v75);
LABEL_54:
      v52 = v1[9];
      v53 = v1[10];
      if (v52 < v53)
      {
        goto LABEL_55;
      }

LABEL_58:
      v56 = v1[8];
      v57 = v52 - v56;
      v58 = (v52 - v56) >> 4;
      v59 = v58 + 1;
      if ((v58 + 1) >> 60)
      {
        goto LABEL_84;
      }

      if ((v53 - v56) >> 3 > v59)
      {
        v59 = (v53 - v56) >> 3;
      }

      if (v53 - v56 >= 0x7FFFFFFFFFFFFFF0)
      {
        v60 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v59;
      }

      if (v60)
      {
        if (!(v60 >> 60))
        {
          operator new();
        }

        goto LABEL_85;
      }

      v61 = v30;
      v62 = v58;
      v63 = (16 * v58);
      v53 = 0;
      *v63 = v19;
      v63[1] = 0;
      v54 = (16 * v58 + 16);
      v64 = &v63[-2 * v62];
      memcpy(v64, v56, v57);
      v1[8] = v64;
      v1[9] = v54;
      v1[10] = 0;
      if (v56)
      {
        operator delete(v56);
        v53 = v1[10];
      }

      v30 = v61;
      v1[9] = v54;
      if (v54 >= v53)
      {
LABEL_70:
        v65 = v1[8];
        v66 = v54 - v65;
        v67 = (v54 - v65) >> 4;
        v68 = v67 + 1;
        if (!((v67 + 1) >> 60))
        {
          if ((v53 - v65) >> 3 > v68)
          {
            v68 = (v53 - v65) >> 3;
          }

          if (v53 - v65 >= 0x7FFFFFFFFFFFFFF0)
          {
            v69 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v68;
          }

          if (v69)
          {
            if (!(v69 >> 60))
            {
              operator new();
            }

            goto LABEL_85;
          }

          v70 = v30;
          v71 = v67;
          v72 = (16 * v67);
          v73 = &v72[-v71];
          *v72 = xmmword_23CE4EA10;
          v55 = (v72 + 1);
          memcpy(v73, v65, v66);
          v1[8] = v73;
          v1[9] = v55;
          v1[10] = 0;
          if (v65)
          {
            operator delete(v65);
          }

          v30 = v70;
          goto LABEL_82;
        }

LABEL_84:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }
    }

    *v54 = xmmword_23CE4EA10;
    v55 = (v54 + 16);
LABEL_82:
    v1[9] = v55;
    v1[11] = v27;
    return operations_research::sat::TimeTablingPerTask::IncreaseCapacity(v1, v30, v27);
  }

  return result;
}

uint64_t operations_research::sat::TimeTablingPerTask::SweepAllTasks(operations_research::sat::TimeTablingPerTask *this, __n128 a2)
{
  v14 = 1;
  v3 = *(this + 4);
  v4 = *(this + 4);
  if (v3 != -1)
  {
    v4 -= *(*(*(this + 7) + 40) + ((8 * v3) ^ 8)) * *(this + 3);
  }

  started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(*(this + 5), a2);
  if ((v6 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v7 = started;
  v8 = 16 * v6;
  while (1)
  {
    v9 = *(this + 5);
    v10 = *v7;
    v11 = *(v9[19] + 4 * v10);
    if (v11 == -1 || ((*(*(v9[3] + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v11 & 0x3F ^ 1)) & 1) == 0)
    {
      if (*(v9[29] + 8 * v10))
      {
        v12 = v4 - operations_research::sat::SchedulingDemandHelper::DemandMin(*(this + 6), v10);
        if (v12 < *(this + 11))
        {
          result = operations_research::sat::TimeTablingPerTask::SweepTask(this, *v7, *(v7 + 1), v12, &v14);
          if (!result)
          {
            break;
          }
        }
      }
    }

    v7 += 4;
    v8 -= 16;
    if (!v8)
    {
      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::TimeTablingPerTask::IncreaseCapacity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  if (v5 != -1)
  {
    v7 = *(a1 + 24);
    v8 = *(*(a1 + 56) + 40);
    v9 = 8 * v5;
    if (v6 + *(v8 + v9) * v7 < a3)
    {
      v6 -= *(v8 + (v9 ^ 8)) * v7;
      goto LABEL_5;
    }

    return 1;
  }

  if (v6 >= a3)
  {
    return 1;
  }

LABEL_5:
  if (v6 + 1 < a3)
  {
    v10 = v6 + 1;
  }

  else
  {
    v10 = a3;
  }

  operations_research::sat::SchedulingConstraintHelper::ClearReason(*(a1 + 40));
  operations_research::sat::TimeTablingPerTask::AddProfileReason(a1, -1, a2, a2 + 1, v10);
  v11 = *(a1 + 16);
  if (v11 == -1)
  {
    v17 = *(a1 + 40);

    return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v17);
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 24);
    v14 = v10 - *(a1 + 32);
    if (v14 / v13 * v13 >= v14)
    {
      v15 = v14 / v13;
    }

    else
    {
      v15 = v14 / v13 + 1;
    }

    return operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteral(v12, v11, v15);
  }
}

uint64_t operations_research::sat::TimeTablingPerTask::SweepTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = a2;
  v8 = *(a1 + 40);
  v63 = a2;
  v9 = *(v8[32] + 8 * a2);
  v10 = *(v8[31] + 8 * a2);
  v11 = *(a1 + 64);
  v12 = *a5;
  if (*(v11 + 16 * v12) <= a3)
  {
    do
    {
      LODWORD(v12) = v12 + 1;
    }

    while (*(v11 + 16 * v12) <= a3);
    *a5 = v12;
  }

  v13 = -v9;
  v14 = v12 - 1;
  if (*(*(a1 + 128) + 8 * a2) >= 1)
  {
    v15 = v14;
    if (*(v11 + 16 * v14) >= v13)
    {
      v17 = a3;
      v16 = 0x8000000000000002;
      goto LABEL_32;
    }

    v16 = 0x8000000000000002;
    v17 = a3;
    while (1)
    {
      v19 = v12;
      if (*(v11 + 16 * v15 + 8) > a4)
      {
        v17 = *(v11 + 16 * v12);
        if (v17 > v13)
        {
          v16 = ~v9;
          v14 = v12 - 1;
          v17 = -v9;
LABEL_32:
          v30 = operations_research::sat::SchedulingDemandHelper::DemandMax(*(a1 + 48), a2);
          v62 = v6;
          v31 = v30 - operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 48), v6);
          if (v31 >= 1)
          {
            v32 = *(a1 + 16);
            v33 = *(a1 + 32);
            if (v32 != -1)
            {
              v33 -= *(*(*(a1 + 56) + 40) + ((8 * v32) ^ 8)) * *(a1 + 24);
            }

            v34 = *(a1 + 64);
            v35 = *(v34 + 16 * v15);
            v36 = v35 <= v13;
            v37 = v35 > v13;
            v38 = v36 ? 0 : -1;
            v39 = v14 - v37;
            v40 = (v34 + 16 * (v14 - v37));
            if (*v40 < v10)
            {
              v41 = v33 - v31;
              v42 = v39;
              v43 = v14 + v38 + 1;
              v60 = v41;
              v61 = v10;
              while (1)
              {
                v44 = v40[1];
                if (v44 > v41)
                {
                  v45 = *(a1 + 16);
                  v46 = *(a1 + 32);
                  if (v45 != -1)
                  {
                    v46 -= *(*(*(a1 + 56) + 40) + ((8 * v45) ^ 8)) * *(a1 + 24);
                  }

                  v47 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 48), v6);
                  operations_research::sat::SchedulingConstraintHelper::ClearReason(*(a1 + 40));
                  if (*(*(a1 + 64) + 16 * v42) <= v13)
                  {
                    v48 = v13;
                  }

                  else
                  {
                    v48 = *(*(a1 + 64) + 16 * v42);
                  }

                  v49 = *(a1 + 16);
                  v50 = *(a1 + 32);
                  if (v49 != -1)
                  {
                    v50 -= *(*(*(a1 + 56) + 40) + ((8 * v49) ^ 8)) * *(a1 + 24);
                  }

                  v51 = v47 + v46 - v44;
                  v6 = v62;
                  operations_research::sat::TimeTablingPerTask::AddProfileReason(a1, v62, v48, v48 + 1, v50);
                  v52 = *(a1 + 40);
                  v53 = (*(*(a1 + 48) + 32) + 24 * v63);
                  v54 = *v53;
                  v55 = *(v53 + 2);
                  if (v54 == -1)
                  {
                    if (v51 < v55)
                    {
                      v59 = 1;
                    }

                    else
                    {
                      v59 = -1;
                    }

                    v10 = v61;
                    result = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteralIfTaskPresent(v52, v62, 0xFFFFFFFFLL, v59);
                    if (!result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    v56 = (v51 - v55) / *(v53 + 1) - ((v51 - v55) / *(v53 + 1) * *(v53 + 1) > v51 - v55);
                    if (v56 >= 0x8000000000000002)
                    {
                      v57 = -v56;
                    }

                    else
                    {
                      v57 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v10 = v61;
                    result = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteralIfTaskPresent(v52, v62, v54 ^ 1, v57);
                    if (!result)
                    {
                      return result;
                    }
                  }

                  v34 = *(a1 + 64);
                  v41 = v60;
                }

                v42 = v43;
                v40 = (v34 + 16 * v43++);
                if (*v40 >= v10)
                {
                  goto LABEL_60;
                }
              }
            }
          }

          goto LABEL_60;
        }

        v16 = v17 - 1;
      }

      v18 = *(v11 + 16 * v12);
      LODWORD(v12) = v12 + 1;
      v15 = v19;
      if (v18 >= v13)
      {
        v14 = v12 - 1;
        v15 = v19;
        goto LABEL_32;
      }
    }
  }

  v20 = *(v11 + 16 * v14);
  if (v20 >= v10)
  {
    return 1;
  }

  v21 = *(v8[29] + 8 * a2);
  v22 = v14;
  v16 = 0x8000000000000002;
  v23 = v12;
  v17 = a3;
  v24 = v10;
  while (1)
  {
    v25 = *(v11 + 16 * v22 + 8);
    v22 = v23;
    v26 = 16 * v23;
    if (v25 > a4)
    {
      v17 = *(v11 + v26);
      if (v24 <= v17 + v21)
      {
        v24 = v17 + v21;
      }

      if (v10 >= v17)
      {
        v27 = *(v11 + v26);
      }

      else
      {
        v27 = v10;
      }

      v28 = v27 - 1;
      if (v20 < v10)
      {
        v16 = v28;
      }

      if (v17 > v13)
      {
        break;
      }
    }

    v20 = *(v11 + v26);
    v23 = v22 + 1;
    if (v20 >= v24)
    {
      goto LABEL_60;
    }
  }

  v29 = 1 - v9;
  if (v20 + 1 > v29)
  {
    v17 = v20 + 1;
  }

  else
  {
    v17 = v29;
  }

  if (v17 - 1 < v16)
  {
    v16 = v17 - 1;
  }

LABEL_60:
  if (v17 == a3)
  {
    return 1;
  }

  return operations_research::sat::TimeTablingPerTask::UpdateStartingTime(a1, v6, v16, v17);
}

void operations_research::sat::TimeTablingPerTask::AddProfileReason(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3 + 1;
  v9 = *(a1 + 120);
  if (a3 + 1 == a4)
  {
    if (v9 > 0)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(*(a1 + 96) + 4 * v11);
        v14 = *(a1 + 40);
        if (-*(v14[32] + 8 * v13) < a4 && *(v14[31] + 8 * v13) > a3)
        {
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), *(*(a1 + 96) + 4 * v11));
          v15 = *(v14[19] + 4 * v13);
          if (v15 != -1)
          {
            v81 = v15 ^ 1;
            std::vector<int>::push_back[abi:ne200100]((v14 + 62), &v81);
          }

          if (v13 != a2)
          {
            operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(*(a1 + 48), v13);
          }

          v16 = *(a1 + 40);
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v16, v13);
          v17 = *(v16 + 10);
          v18 = *(v16 + 13);
          v19 = *(v16 + 16) + 24 * v13;
          if (*v19 == -1)
          {
            v22 = 0;
            v21 = -1;
          }

          else
          {
            v20 = *(v19 + 8);
            v21 = *v19 ^ (v20 >> 63) ^ 1;
            if (v20 >= 0)
            {
              v22 = *(v19 + 8);
            }

            else
            {
              v22 = -v20;
            }
          }

          v23 = *(v19 + 16);
          v81 = v21;
          v82 = v22;
          v83 = -v23;
          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v16, (v17 + 24 * v13), a3, (v18 + 24 * v13), &v81);
          v24 = *(a1 + 40);
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v24, v13);
          v25 = *(v24 + 25);
          v26 = *(v24 + 22);
          v27 = *(v24 + 16) + 24 * v13;
          v28 = *v27;
          if (*v27 == -1)
          {
            v29 = 0;
          }

          else
          {
            v29 = *(v27 + 8);
            v28 ^= (v29 >> 63) ^ 1;
            if (v29 < 0)
            {
              v29 = -v29;
            }
          }

          v30 = -*(v27 + 16);
          v81 = v28;
          v82 = v29;
          v83 = v30;
          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v24, (v25 + 24 * v13), -a4, (v26 + 24 * v13), &v81);
          v12 += operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 48), v13);
          if (v12 > a5)
          {
            return;
          }

          v9 = *(a1 + 120);
        }

        ++v11;
      }

      while (v11 < v9);
    }
  }

  else if (v9 > 0)
  {
    if (a4 - a3 >= *(*(*(a1 + 40) + 232) + 8 * a2) + 2)
    {
      for (i = 0; i < v9; ++i)
      {
        v58 = *(*(a1 + 96) + 4 * i);
        v59 = *(a1 + 40);
        v60 = -*(v59[32] + 8 * v58);
        if (v60 < a4)
        {
          v61 = *(v59[31] + 8 * v58);
          if (v61 > a3)
          {
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), *(*(a1 + 96) + 4 * i));
            v62 = *(v59[19] + 4 * v58);
            if (v62 != -1)
            {
              v81 = v62 ^ 1;
              std::vector<int>::push_back[abi:ne200100]((v59 + 62), &v81);
            }

            if (v58 != a2)
            {
              operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(*(a1 + 48), v58);
            }

            v63 = *(a1 + 40);
            if (v60 <= a3)
            {
              v64 = a3;
            }

            else
            {
              v64 = v60;
            }

            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v58);
            v65 = v63[10];
            v66 = v63[13];
            v67 = v63[16] + 24 * v58;
            if (*v67 == -1)
            {
              v70 = 0;
              v69 = -1;
            }

            else
            {
              v68 = *(v67 + 8);
              v69 = *v67 ^ (v68 >> 63) ^ 1;
              if (v68 >= 0)
              {
                v70 = *(v67 + 8);
              }

              else
              {
                v70 = -v68;
              }
            }

            v71 = 24 * v58;
            v72 = *(v67 + 16);
            v81 = v69;
            v82 = v70;
            v83 = -v72;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v63, (v65 + 24 * v58), v64, (v66 + 24 * v58), &v81);
            v73 = *(a1 + 40);
            if (v61 >= a4)
            {
              v74 = a4;
            }

            else
            {
              v74 = v61;
            }

            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v58);
            v75 = v73[25];
            v76 = v73[22];
            v77 = v73[16] + v71;
            v78 = *v77;
            if (*v77 == -1)
            {
              v56 = 0;
            }

            else
            {
              v56 = *(v77 + 8);
              v78 ^= (v56 >> 63) ^ 1;
              if (v56 < 0)
              {
                v56 = -v56;
              }
            }

            v57 = -*(v77 + 16);
            v81 = v78;
            v82 = v56;
            v83 = v57;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v73, (v75 + v71), -v74, (v76 + v71), &v81);
            v9 = *(a1 + 120);
          }
        }
      }
    }

    else
    {
      v31 = 0;
      v79 = a4 - 1;
      do
      {
        v34 = *(*(a1 + 96) + 4 * v31);
        v35 = *(a1 + 40);
        v36 = -*(v35[32] + 8 * v34);
        if (v36 < a4)
        {
          v37 = *(v35[31] + 8 * v34);
          if (v37 > a3)
          {
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), *(*(a1 + 96) + 4 * v31));
            v38 = *(v35[19] + 4 * v34);
            if (v38 != -1)
            {
              v81 = v38 ^ 1;
              std::vector<int>::push_back[abi:ne200100]((v35 + 62), &v81);
            }

            if (v34 != a2)
            {
              operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(*(a1 + 48), v34);
            }

            v39 = *(a1 + 40);
            if (v36 <= a3)
            {
              v40 = a3;
            }

            else
            {
              v40 = v79;
            }

            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v34);
            v41 = v39[10];
            v42 = v39[13];
            v43 = v39[16] + 24 * v34;
            if (*v43 == -1)
            {
              v46 = 0;
              v45 = -1;
            }

            else
            {
              v44 = *(v43 + 8);
              v45 = *v43 ^ (v44 >> 63) ^ 1;
              if (v44 >= 0)
              {
                v46 = *(v43 + 8);
              }

              else
              {
                v46 = -v44;
              }
            }

            v47 = 24 * v34;
            v48 = *(v43 + 16);
            v81 = v45;
            v82 = v46;
            v83 = -v48;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v39, (v41 + 24 * v34), v40, (v42 + 24 * v34), &v81);
            v49 = *(a1 + 40);
            if (v37 >= a4)
            {
              v50 = a4;
            }

            else
            {
              v50 = v8;
            }

            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v34);
            v51 = v49[25];
            v52 = v49[22];
            v53 = v49[16] + v47;
            v54 = *v53;
            if (*v53 == -1)
            {
              v32 = 0;
            }

            else
            {
              v32 = *(v53 + 8);
              v54 ^= (v32 >> 63) ^ 1;
              if (v32 < 0)
              {
                v32 = -v32;
              }
            }

            v33 = -*(v53 + 16);
            v81 = v54;
            v82 = v32;
            v83 = v33;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v49, (v51 + v47), -v50, (v52 + v47), &v81);
            v9 = *(a1 + 120);
          }
        }

        ++v31;
      }

      while (v31 < v9);
    }
  }
}

uint64_t operations_research::sat::TimeTablingPerTask::UpdateStartingTime(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  operations_research::sat::SchedulingConstraintHelper::ClearReason(*(a1 + 40));
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  if (v8 != -1)
  {
    v9 -= *(*(*(a1 + 56) + 40) + ((8 * v8) ^ 8)) * *(a1 + 24);
  }

  v10 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 48), a2);
  operations_research::sat::TimeTablingPerTask::AddProfileReason(a1, a2, a3, a4, v9 - v10);
  v11 = *(a1 + 16);
  if (v11 != -1)
  {
    v12 = *(a1 + 40);
    v13 = *(*(*(a1 + 56) + 40) + ((8 * v11) ^ 8));
    if (v13 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v30 = v11 ^ 1;
    *(&v30 + 1) = v13;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v12 + 520, &v30);
  }

  v14 = *(a1 + 40);
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v14, a2);
  v15 = *(v14 + 25);
  v16 = *(v14 + 22);
  v17 = *(v14 + 16) + 24 * a2;
  if (*v17 == -1)
  {
    v20 = 0;
    v19 = -1;
  }

  else
  {
    v18 = *(v17 + 8);
    v19 = *v17 ^ (v18 >> 63) ^ 1;
    if (v18 >= 0)
    {
      v20 = *(v17 + 8);
    }

    else
    {
      v20 = -v18;
    }
  }

  v21 = *(v17 + 16);
  LODWORD(v30) = v19;
  *(&v30 + 1) = v20;
  v31 = -v21;
  operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v14, (v15 + 24 * a2), ~a3, (v16 + 24 * a2), &v30);
  v22 = *(a1 + 40);
  v23 = *(*(v22 + 29) + 8 * a2);
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v22, a2);
  if (v23 >= 1)
  {
    v24 = *(v22 + 16) + 24 * a2;
    if (*v24 == -1)
    {
      v27 = 0;
      v26 = -1;
    }

    else
    {
      v25 = *(v24 + 8);
      v26 = *v24 ^ (v25 >> 63) ^ 1;
      if (v25 >= 0)
      {
        v27 = *(v24 + 8);
      }

      else
      {
        v27 = -v25;
      }
    }

    v28 = -*(v24 + 16);
    LODWORD(v30) = v26;
    *(&v30 + 1) = v27;
    v31 = v28;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v22, &v30, -v23, (*(v22 + 25) + 24 * a2), (*(v22 + 10) + 24 * a2));
  }

  operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(*(a1 + 48), a2);
  return operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(*(a1 + 40), a2, a4);
}

void operations_research::sat::ReservoirTimeTabling::~ReservoirTimeTabling(operations_research::sat::ReservoirTimeTabling *this)
{
  *this = &unk_284F44A00;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_284F44A00;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::TimeTablingPerTask::~TimeTablingPerTask(operations_research::sat::TimeTablingPerTask *this)
{
  *this = &unk_284F44A30;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_284F44A30;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::ReservoirTimeTabling>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F44A90;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ReservoirTimeTabling>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F44A90;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = a2 - 1;
  v78 = a2 - 2;
  v12 = a2 - 3;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = a2 - v13;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v54 = a2[-1].n128_i64[0];
      v53 = a2 - 1;
      if (v54 >= v13->n128_u64[0])
      {
        return result;
      }

LABEL_108:
      v103 = *v13;
      *v13 = *v53;
LABEL_109:
      result = v103;
      *v53 = v103;
      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v62 = v13 + 1;
      v64 = v13 == a2 || v62 == a2;
      if (a5)
      {
        if (!v64)
        {
          v65 = 0;
          v66 = v13;
          do
          {
            v68 = v62;
            v69 = v66[1].n128_i64[0];
            if (v69 < v66->n128_u64[0])
            {
              v70 = v66[1].n128_u64[1];
              v71 = v65;
              do
              {
                result = *(v13 + v71);
                *(v13 + v71 + 16) = result;
                if (!v71)
                {
                  v67 = v13;
                  goto LABEL_123;
                }

                v72 = *(v13[-1].n128_i64 + v71);
                v71 -= 16;
              }

              while (v69 < v72);
              v67 = (v13 + v71 + 16);
LABEL_123:
              v67->n128_u64[0] = v69;
              v67->n128_u64[1] = v70;
            }

            v62 = v68 + 1;
            v65 += 16;
            v66 = v68;
          }

          while (&v68[1] != a2);
        }
      }

      else if (!v64)
      {
        do
        {
          v73 = v62;
          v74 = a1[1].n128_i64[0];
          if (v74 < a1->n128_u64[0])
          {
            v75 = a1[1].n128_u64[1];
            v76 = v73;
            do
            {
              result = v76[-1];
              *v76 = result;
              v77 = v76[-2].n128_i64[0];
              --v76;
            }

            while (v74 < v77);
            v76->n128_u64[0] = v74;
            v76->n128_u64[1] = v75;
          }

          v62 = v73 + 1;
          a1 = v73;
        }

        while (&v73[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *>(v13, a2, a2);
      }

      return result;
    }

    v15 = &v13[v14 >> 1];
    v16 = v15;
    v17 = v11->n128_u64[0];
    if (v14 < 0x81)
    {
      v19 = v13->n128_u64[0];
      if (v13->n128_u64[0] < v16->n128_u64[0])
      {
        if (v17 < v19)
        {
          v80 = *v16;
          *v16 = *v11;
          goto LABEL_36;
        }

        v89 = *v16;
        *v16 = *v13;
        result = v89;
        *v13 = v89;
        if (v11->n128_u64[0] < v13->n128_u64[0])
        {
          v80 = *v13;
          *v13 = *v11;
LABEL_36:
          result = v80;
          *v11 = v80;
        }

LABEL_37:
        --a4;
        v20 = v13->n128_u64[0];
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v17 >= v19)
      {
        goto LABEL_37;
      }

      v83 = *v13;
      *v13 = *v11;
      result = v83;
      *v11 = v83;
      if (v13->n128_u64[0] >= v16->n128_u64[0])
      {
        goto LABEL_37;
      }

      v84 = *v16;
      *v16 = *v13;
      result = v84;
      *v13 = v84;
      --a4;
      v20 = v13->n128_u64[0];
      if (a5)
      {
        goto LABEL_61;
      }

LABEL_60:
      if (v13[-1].n128_u64[0] < v20)
      {
        goto LABEL_61;
      }

      if (v20 >= v11->n128_u64[0])
      {
        n128_u64 = v13[1].n128_u64;
        do
        {
          v13 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          n128_u64 += 16;
        }

        while (v20 >= v13->n128_u64[0]);
      }

      else
      {
        do
        {
          v45 = v13[1].n128_i64[0];
          ++v13;
        }

        while (v20 >= v45);
      }

      v47 = a2;
      if (v13 < a2)
      {
        v47 = a2;
        do
        {
          v48 = v47[-1].n128_i64[0];
          --v47;
        }

        while (v20 < v48);
      }

      v49 = a1->n128_u64[1];
      while (v13 < v47)
      {
        v102 = *v13;
        *v13 = *v47;
        result = v102;
        *v47 = v102;
        do
        {
          v50 = v13[1].n128_i64[0];
          ++v13;
        }

        while (v20 >= v50);
        do
        {
          v51 = v47[-1].n128_i64[0];
          --v47;
        }

        while (v20 < v51);
      }

      v52 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v52;
        *a1 = *v52;
      }

      a5 = 0;
      v13[-1].n128_u64[0] = v20;
      v13[-1].n128_u64[1] = v49;
    }

    else
    {
      v18 = v15->n128_u64[0];
      if (v15->n128_u64[0] >= v13->n128_u64[0])
      {
        if (v17 < v18)
        {
          v81 = *v15;
          *v15 = *v11;
          *v11 = v81;
          if (v15->n128_u64[0] < v13->n128_u64[0])
          {
            v82 = *v13;
            *v13 = *v15;
            *v15 = v82;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v85 = *v13;
          *v13 = *v15;
          *v15 = v85;
          if (v11->n128_u64[0] >= v15->n128_u64[0])
          {
            goto LABEL_28;
          }

          v79 = *v15;
          *v15 = *v11;
        }

        else
        {
          v79 = *v13;
          *v13 = *v11;
        }

        *v11 = v79;
      }

LABEL_28:
      v21 = v13 + 1;
      v22 = v15 - 1;
      v23 = v15[-1].n128_i64[0];
      v24 = v78->n128_u64[0];
      if (v23 >= v13[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v87 = *v22;
          *v22 = *v78;
          *v78 = v87;
          if (v22->n128_u64[0] < v21->n128_u64[0])
          {
            v88 = *v21;
            *v21 = *v22;
            *v22 = v88;
          }
        }
      }

      else if (v24 >= v23)
      {
        v90 = *v21;
        *v21 = *v22;
        *v22 = v90;
        if (v78->n128_u64[0] < v22->n128_u64[0])
        {
          v91 = *v22;
          *v22 = *v78;
          *v78 = v91;
        }
      }

      else
      {
        v86 = *v21;
        *v21 = *v78;
        *v78 = v86;
      }

      v25 = v13 + 2;
      v28 = v15[1].n128_i64[0];
      v26 = v15 + 1;
      v27 = v28;
      v29 = v12->n128_u64[0];
      if (v28 >= v13[2].n128_u64[0])
      {
        if (v29 < v27)
        {
          v93 = *v26;
          *v26 = *v12;
          *v12 = v93;
          if (v26->n128_u64[0] < v25->n128_u64[0])
          {
            v94 = *v25;
            *v25 = *v26;
            *v26 = v94;
          }
        }
      }

      else
      {
        if (v29 >= v27)
        {
          v95 = *v25;
          *v25 = *v26;
          *v26 = v95;
          if (v12->n128_u64[0] >= v26->n128_u64[0])
          {
            goto LABEL_50;
          }

          v92 = *v26;
          *v26 = *v12;
        }

        else
        {
          v92 = *v25;
          *v25 = *v12;
        }

        *v12 = v92;
      }

LABEL_50:
      v30 = v16->n128_u64[0];
      v31 = v26->n128_u64[0];
      if (v16->n128_u64[0] >= v22->n128_u64[0])
      {
        if (v31 < v30)
        {
          v97 = *v16;
          *v16 = *v26;
          *v26 = v97;
          if (v16->n128_u64[0] < v22->n128_u64[0])
          {
            v98 = *v22;
            *v22 = *v16;
            *v16 = v98;
          }
        }
      }

      else
      {
        if (v31 >= v30)
        {
          v99 = *v22;
          *v22 = *v16;
          *v16 = v99;
          if (v26->n128_u64[0] >= v16->n128_u64[0])
          {
            goto LABEL_59;
          }

          v96 = *v16;
          *v16 = *v26;
        }

        else
        {
          v96 = *v22;
          *v22 = *v26;
        }

        *v26 = v96;
      }

LABEL_59:
      v100 = *v13;
      *v13 = *v16;
      result = v100;
      *v16 = v100;
      --a4;
      v20 = v13->n128_u64[0];
      if ((a5 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v32 = 0;
      v33 = v13->n128_u64[1];
      do
      {
        v34 = v13[++v32].n128_i64[0];
      }

      while (v34 < v20);
      v35 = &v13[v32];
      v36 = a2;
      if (v32 == 1)
      {
        v36 = a2;
        do
        {
          if (v35 >= v36)
          {
            break;
          }

          v38 = v36[-1].n128_i64[0];
          --v36;
        }

        while (v38 >= v20);
      }

      else
      {
        do
        {
          v37 = v36[-1].n128_i64[0];
          --v36;
        }

        while (v37 >= v20);
      }

      v13 = (v13 + v32 * 16);
      if (v35 < v36)
      {
        v39 = v36;
        do
        {
          v101 = *v13;
          *v13 = *v39;
          result = v101;
          *v39 = v101;
          do
          {
            v40 = v13[1].n128_i64[0];
            ++v13;
          }

          while (v40 < v20);
          do
          {
            v41 = v39[-1].n128_i64[0];
            --v39;
          }

          while (v41 >= v20);
        }

        while (v13 < v39);
      }

      v42 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v42;
        *a1 = *v42;
      }

      v13[-1].n128_u64[0] = v20;
      v13[-1].n128_u64[1] = v33;
      if (v35 < v36)
      {
        goto LABEL_80;
      }

      v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *>(a1, v13 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *>(v13, a2, v44))
      {
        a2 = v13 - 1;
        if (!v43)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v43)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(a1, v13 - 1, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v55 = v13 + 1;
      v59 = v13[1].n128_i64[0];
      v60 = v13 + 2;
      v61 = v13[2].n128_i64[0];
      if (v59 >= v13->n128_u64[0])
      {
        if (v61 < v59)
        {
          v106 = *v55;
          *v55 = *v60;
          result = v106;
          *v60 = v106;
          if (v13[1].n128_u64[0] < v13->n128_u64[0])
          {
            v107 = *v13;
            *v13 = *v55;
            result = v107;
            *v55 = v107;
          }
        }
      }

      else
      {
        if (v61 < v59)
        {
          v104 = *v13;
          *v13 = *v60;
          goto LABEL_150;
        }

        v109 = *v13;
        *v13 = *v55;
        result = v109;
        *v55 = v109;
        if (v13[2].n128_u64[0] < v13[1].n128_u64[0])
        {
          v104 = *v55;
          *v55 = *v60;
LABEL_150:
          result = v104;
          *v60 = v104;
        }
      }

      if (v11->n128_u64[0] >= v60->n128_u64[0])
      {
        return result;
      }

      v110 = *v60;
      *v60 = *v11;
      result = v110;
      *v11 = v110;
      if (v60->n128_u64[0] >= v55->n128_u64[0])
      {
        return result;
      }

      v111 = *v55;
      *v55 = *v60;
      result = v111;
      *v60 = v111;
LABEL_154:
      if (v13[1].n128_u64[0] < v13->n128_u64[0])
      {
        v112 = *v13;
        *v13 = *v55;
        result = v112;
        *v55 = v112;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,0>(v13, v13 + 1, &v13[2], v13[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v55 = v13 + 1;
  v56 = v13[1].n128_i64[0];
  v58 = a2[-1].n128_u64[0];
  v53 = a2 - 1;
  v57 = v58;
  if (v56 >= v13->n128_u64[0])
  {
    if (v57 >= v56)
    {
      return result;
    }

    v105 = *v55;
    *v55 = *v53;
    result = v105;
    *v53 = v105;
    goto LABEL_154;
  }

  if (v57 < v56)
  {
    goto LABEL_108;
  }

  v108 = *v13;
  *v13 = *v55;
  result = v108;
  *v55 = v108;
  if (v53->n128_u64[0] < v13[1].n128_u64[0])
  {
    v103 = *v55;
    *v55 = *v53;
    goto LABEL_109;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,0>(__n128 *a1, __n128 *a2, uint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u64[0];
      v5 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v5->n128_u64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v11 = *v7;
          *v7 = *v5;
          goto LABEL_14;
        }

LABEL_13:
        v11 = *a1;
        *a1 = *v5;
LABEL_14:
        *v5 = v11;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v5;
      *v5 = v24;
      if (*(a1 + 16) >= *a1)
      {
        return 1;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_15;
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
    }

    else
    {
      if (v20 < v18)
      {
        v23 = *a1;
        *a1 = *v19;
LABEL_48:
        *v19 = v23;
        goto LABEL_49;
      }

      v39 = *a1;
      *a1 = *v7;
      *v7 = v39;
      if (v20 < *(a1 + 16))
      {
        v23 = *v7;
        *v7 = *v19;
        goto LABEL_48;
      }
    }

LABEL_49:
    if (v21->n128_u64[0] >= v19->n128_u64[0])
    {
      return 1;
    }

    v40 = *v19;
    *v19 = *v21;
    *v21 = v40;
    if (v19->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v41 = *v7;
    *v7 = *v19;
    *v19 = v41;
    if (*(a1 + 16) >= *a1)
    {
      return 1;
    }

LABEL_52:
    v42 = *a1;
    *a1 = *v7;
    *v7 = v42;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v6 = a2[-1].n128_i64[0];
    v5 = a2 - 1;
    if (v6 >= *a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

LABEL_15:
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
      v30 = *a1;
      *a1 = *v14;
      *v14 = v30;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_35;
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

LABEL_35:
  v31 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v34 = v31->n128_u64[0];
    if (v31->n128_u64[0] < v12->n128_u64[0])
    {
      break;
    }

LABEL_38:
    v12 = v31;
    v32 += 16;
    if (++v31 == a2)
    {
      return 1;
    }
  }

  v35 = v31->n128_u64[1];
  v36 = v32;
  do
  {
    *(a1 + v36 + 48) = *(a1 + v36 + 32);
    if (v36 == -32)
    {
      *a1 = v34;
      *(a1 + 8) = v35;
      if (++v33 != 8)
      {
        goto LABEL_38;
      }

      return &v31[1] == a2;
    }

    v37 = *(a1 + v36 + 16);
    v36 -= 16;
  }

  while (v34 < v37);
  v38 = a1 + v36;
  *(v38 + 48) = v34;
  *(v38 + 56) = v35;
  if (++v33 != 8)
  {
    goto LABEL_38;
  }

  return &v31[1] == a2;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *>(char *a1, char *a2, __int128 *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 4;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v6 = 16 * v5;
      if (v4 >= (16 * v5) >> 4)
      {
        v7 = (v6 >> 3) | 1;
        v8 = &a1[16 * v7];
        if ((v6 >> 3) + 2 >= v3)
        {
          v11 = &a1[v6];
          v12 = *v11;
          if (*v8 >= *v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = *v8;
          v10 = *(v8 + 2);
          if (*v8 <= v10)
          {
            v9 = *(v8 + 2);
          }

          if (*v8 < v10)
          {
            v8 += 16;
            v7 = (v6 >> 3) + 2;
          }

          v11 = &a1[v6];
          v12 = *v11;
          if (v9 >= *v11)
          {
LABEL_15:
            v13 = *(v11 + 1);
            while (1)
            {
              v16 = v11;
              v11 = v8;
              *v16 = *v8;
              if (v4 < v7)
              {
                break;
              }

              v17 = (2 * v7) | 1;
              v8 = &a1[16 * v17];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v14 = *v8;
                v15 = *(v8 + 2);
                if (*v8 <= v15)
                {
                  v14 = *(v8 + 2);
                }

                if (*v8 >= v15)
                {
                  v7 = v17;
                }

                else
                {
                  v8 += 16;
                }

                if (v14 < v12)
                {
                  break;
                }
              }

              else
              {
                v7 = v17;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
            *(v11 + 1) = v13;
          }
        }
      }

      v26 = v5-- <= 0;
    }

    while (!v26);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        if (*i < *a1)
        {
          v19 = *i;
          *i = *a1;
          *a1 = v19;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v20 = a1 + 32;
    for (i = a2; i != a3; ++i)
    {
      if (*i < *a1)
      {
        v21 = *i;
        *i = *a1;
        *a1 = v21;
        v22 = *(a1 + 2);
        if (a2 - a1 == 32)
        {
          v23 = a1 + 16;
          v24 = 1;
          v25 = *a1;
          if (v22 >= *a1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v26 = v22 < *v20;
          if (v22 <= *v20)
          {
            v22 = *v20;
          }

          if (v26)
          {
            v23 = a1 + 32;
          }

          else
          {
            v23 = a1 + 16;
          }

          if (v26)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          v25 = *a1;
          if (v22 >= *a1)
          {
LABEL_48:
            v27 = *(a1 + 1);
            v28 = a1;
            while (1)
            {
              v31 = v28;
              v28 = v23;
              *v31 = *v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v32 = (2 * v24) | 1;
              v23 = &a1[16 * v32];
              v24 = 2 * v24 + 2;
              if (v24 < v3)
              {
                v29 = *v23;
                v30 = *(v23 + 2);
                if (*v23 <= v30)
                {
                  v29 = *(v23 + 2);
                }

                if (*v23 >= v30)
                {
                  v24 = v32;
                }

                else
                {
                  v23 += 16;
                }

                if (v29 < v25)
                {
                  break;
                }
              }

              else
              {
                v24 = v32;
                if (*v23 < v25)
                {
                  break;
                }
              }
            }

            *v28 = v25;
            *(v28 + 1) = v27;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v34 = 0;
      v49 = *a1;
      v35 = (v3 - 2) >> 1;
      v36 = a1;
      do
      {
        while (1)
        {
          v40 = &v36[16 * v34];
          v39 = v40 + 16;
          v41 = (2 * v34) | 1;
          v34 = 2 * v34 + 2;
          if (v34 < v3)
          {
            break;
          }

          v34 = v41;
          *v36 = *v39;
          v36 = v40 + 16;
          if (v41 > v35)
          {
            goto LABEL_71;
          }
        }

        v38 = *(v40 + 4);
        v37 = v40 + 32;
        if (*(v37 - 2) >= v38)
        {
          v34 = v41;
        }

        else
        {
          v39 = v37;
        }

        *v36 = *v39;
        v36 = v39;
      }

      while (v34 <= v35);
LABEL_71:
      a2 -= 16;
      if (v39 == a2)
      {
        *v39 = v49;
      }

      else
      {
        *v39 = *a2;
        *a2 = v49;
        v42 = (v39 - a1 + 16) >> 4;
        v26 = v42 < 2;
        v43 = v42 - 2;
        if (!v26)
        {
          v44 = v43 >> 1;
          v45 = &a1[16 * v44];
          v46 = *v39;
          if (*v45 < *v39)
          {
            v47 = *(v39 + 1);
            do
            {
              v48 = v39;
              v39 = v45;
              *v48 = *v45;
              if (!v44)
              {
                break;
              }

              v44 = (v44 - 1) >> 1;
              v45 = &a1[16 * v44];
            }

            while (*v45 < v46);
            *v39 = v46;
            *(v39 + 1) = v47;
          }
        }
      }

      v26 = v3-- <= 2;
    }

    while (!v26);
  }

  return i;
}

uint64_t operations_research::sat::TimeTableEdgeFinding::TimeTableEdgeFinding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = &unk_284F44AC8;
  *(a1 + 8) = -1431655765 * ((*(a3 + 88) - *(a3 + 80)) >> 3);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  *(a1 + 160) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 56) = v7;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  v8 = *(a1 + 8);
  if (v8)
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 184, v8);
    v9 = *(a1 + 8);
    v10 = *(a1 + 160);
    v11 = (*(a1 + 168) - v10) >> 3;
    v12 = v9 >= v11;
    if (v9 > v11)
    {
      std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 160, v9 - v11);
      v9 = *(a1 + 8);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v12 = 1;
  }

  if (!v12)
  {
    *(a1 + 168) = v10 + 8 * v9;
  }

LABEL_7:
  v13 = *(a1 + 112);
  v14 = (*(a1 + 120) - v13) >> 3;
  if (v9 <= v14)
  {
    if (v9 < v14)
    {
      *(a1 + 120) = v13 + 8 * v9;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 112, v9 - v14);
    v9 = *(a1 + 8);
  }

  v15 = *(a1 + 136);
  v16 = (*(a1 + 144) - v15) >> 3;
  if (v9 > v16)
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 136, v9 - v16);
    return a1;
  }

  if (v9 >= v16)
  {
    return a1;
  }

  *(a1 + 144) = v15 + 8 * v9;
  return a1;
}

void sub_23CD1BD40(_Unwind_Exception *exception_object)
{
  v7 = v1[29];
  if (v7)
  {
    v1[30] = v7;
    operator delete(v7);
    v8 = v1[26];
    if (!v8)
    {
LABEL_3:
      v9 = *(v4 + 24);
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = v1[26];
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  v1[27] = v8;
  operator delete(v8);
  v9 = *(v4 + 24);
  if (!v9)
  {
LABEL_4:
    v10 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v1[24] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_5:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v1[21] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_6:
    v12 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[18] = v11;
  operator delete(v11);
  v12 = *v2;
  if (!*v2)
  {
LABEL_7:
    v13 = v1[11];
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v1[15] = v12;
  operator delete(v12);
  v13 = v1[11];
  if (!v13)
  {
LABEL_8:
    v14 = *v5;
    if (!*v5)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v1[12] = v13;
  operator delete(v13);
  v14 = *v5;
  if (!*v5)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  v1[9] = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::TimeTableEdgeFinding::RegisterWith(operations_research::sat::TimeTableEdgeFinding *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  v10 = *(this + 1);
  v11 = *(this + 4);
  operations_research::sat::GenericLiteralWatcher::WatchUpperBound(a2, &v10, v4);
  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(*(this + 5), v4, a2, 1, 1);
  if (*(this + 2) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*(*(this + 6) + 32) + v5);
      v8 = *(v7 + 2);
      v10 = *v7;
      v11 = v8;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a2, &v10, v4);
      ++v6;
      v5 += 24;
    }

    while (v6 < *(this + 2));
  }

  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(a2, v4, 3);
  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

uint64_t operations_research::sat::TimeTableEdgeFinding::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  if (!operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[5], 1) || !operations_research::sat::TimeTableEdgeFinding::TimeTableEdgeFindingPass(this) || !operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[5], 0))
  {
    return 0;
  }

  return operations_research::sat::TimeTableEdgeFinding::TimeTableEdgeFindingPass(this);
}

uint64_t operations_research::sat::TimeTableEdgeFinding::TimeTableEdgeFindingPass(operations_research::sat::TimeTableEdgeFinding *this)
{
  operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(this + 6));
  if (*(this + 2) >= 1)
  {
    v3 = 0;
    v5 = *(this + 5);
    v4 = *(this + 6);
    do
    {
      v7 = *(v5[32] + 8 * v3);
      v8 = *(v5[31] + 8 * v3);
      v9 = operations_research::sat::SchedulingDemandHelper::DemandMin(v4, v3);
      if (v8 > -v7)
      {
        v5 = *(this + 5);
        *(*(this + 14) + 8 * v3) = *(v5[29] + 8 * v3) - (v8 + v7);
        v6 = v9 * (v8 + v7);
      }

      else
      {
        v6 = 0;
        v5 = *(this + 5);
        *(*(this + 14) + 8 * v3) = *(v5[29] + 8 * v3);
      }

      v4 = *(this + 6);
      *(*(this + 17) + 8 * v3) = *(*(v4 + 8) + 8 * v3) - v6;
      ++v3;
    }

    while (v3 < *(this + 2));
  }

  operations_research::sat::TimeTableEdgeFinding::BuildTimeTable(this, v2);
  started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(*(this + 5), v10);
  v13 = v12;
  v15 = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingEndMax(*(this + 5), v14);
  if ((v16 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v15;
    v18 = (v15 + 16 * v16);
    if ((v13 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v61 = 16 * v13 + started - 8;
      v62 = -16 * v13;
      v19 = 0x7FFFFFFFFFFFFFFELL;
      v60 = v15 + 16 * v16;
      while (1)
      {
        v20 = *v17;
        v21 = *(v17 + 1);
        v22 = *(this + 5);
        v23 = *(*(v22 + 152) + 4 * v20);
        if (v23 == -1 || ((*(*(*(v22 + 24) + 24) + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(*(v22 + 152) + 4 * v20))) && *(*(this + 17) + 8 * v20) && v21 != v19)
        {
          break;
        }

LABEL_11:
        v17 += 4;
        if (v17 == v18)
        {
          return 1;
        }
      }

      v63 = *v17;
      v64 = 0;
      v25 = 0;
      *(this + 27) = *(this + 26);
      *(this + 30) = *(this + 29);
      v67 = -1;
      v65 = 0x8000000000000002;
      v26 = v61;
      v27 = v62;
      while (1)
      {
        v28 = *(v26 - 2);
        v29 = *v26;
        v66 = *(v26 - 2);
        v30 = v21 - v29;
        if (v21 <= v29)
        {
          goto LABEL_19;
        }

        v31 = *(this + 5);
        v32 = *(v31[19] + 4 * v28);
        if (v32 != -1 && ((*(*(v31[3] + 24) + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_19;
        }

        if (!*(*(this + 17) + 8 * v28))
        {
          goto LABEL_19;
        }

        v33 = *(v31[33] + 8 * v28);
        if (v21 >= -v33)
        {
          break;
        }

        v34 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(this + 6), v28);
        v35 = v66;
        v36 = *(*(this + 14) + 8 * v66);
        if (v30 >= v36)
        {
          v37 = *(*(this + 14) + 8 * v66);
        }

        else
        {
          v37 = v21 - v29;
        }

        v38 = v37 * v34;
        v39 = ((v33 + v21 + v36) & ~((v33 + v21 + v36) >> 63)) * v34;
        if (v37 * v34 <= v65)
        {
          if (v39 >= 1)
          {
            std::vector<int>::push_back[abi:ne200100](this + 232, &v66);
            v25 += v39;
          }

LABEL_37:
          v35 = v67;
          if (v67 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_38;
        }

        if (v67 != -1 && v64 >= 1)
        {
          std::vector<int>::push_back[abi:ne200100](this + 232, &v67);
          v35 = v66;
        }

        v67 = v35;
        v25 += v64;
        v64 = v39;
        v65 = v38;
        if (v35 == -1)
        {
          goto LABEL_19;
        }

LABEL_38:
        if (operations_research::sat::SchedulingDemandHelper::DemandMin(*(this + 6), v35))
        {
          v40 = *(this + 4);
          v41 = *(this + 4);
          if (v40 != -1)
          {
            v41 -= *(*(*(this + 7) + 40) + ((8 * v40) ^ 8)) * *(this + 3);
          }

          v42 = *(*(this + 20) + 8 * v66) - *(*(this + 23) + 8 * v63) + v41 * v30 - v25;
          if (v65 <= v42)
          {
            if (*(*(this + 17) + 8 * v67) > v42 && *(*(*(this + 5) + 248) + 8 * v67) <= v21)
            {
              operations_research::sat::TimeTableEdgeFinding::FillEnergyInWindowReason(this, v29, v21, v67);
              operations_research::sat::SchedulingDemandHelper::AddEnergyMinReason(*(this + 6), v67);
              v50 = *(this + 5);
              v51 = v67;
              operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v50, v67);
              operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v50, (*(v50 + 22) + 24 * v51), -v29, (*(v50 + 25) + 24 * v51), (*(v50 + 16) + 24 * v51));
              if ((operations_research::sat::SchedulingConstraintHelper::IncreaseEndMin(*(this + 5), v67, v21 + 1) & 1) == 0)
              {
                return 0;
              }
            }
          }

          else
          {
            v43 = *(this + 5);
            v44 = *(*(v43 + 248) + 8 * v67);
            v45 = *(*(v43 + 256) + 8 * v67);
            if (v44 >= v21)
            {
              v44 = v21;
            }

            if (v29 <= -v45)
            {
              v46 = -v45;
            }

            else
            {
              v46 = v29;
            }

            v47 = v21 - ((v44 - v46) & ~((v44 - v46) >> 63)) - v42 / operations_research::sat::SchedulingDemandHelper::DemandMin(*(this + 6), v67);
            if (*(*(*(this + 5) + 240) + 8 * v67) < v47)
            {
              operations_research::sat::TimeTableEdgeFinding::FillEnergyInWindowReason(this, v29, v21, v67);
              v48 = *(this + 5);
              v49 = v67;
              operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v67);
              operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v48, (*(v48 + 22) + 24 * v49), -v29, (*(v48 + 25) + 24 * v49), (*(v48 + 16) + 24 * v49));
              operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(*(this + 6), v67);
              if (!operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(*(this + 5), v67, v47))
              {
                return 0;
              }
            }
          }
        }

LABEL_19:
        v26 -= 2;
        v27 += 16;
        if (!v27)
        {
          v19 = v21;
          v18 = v60;
          goto LABEL_11;
        }
      }

      std::vector<int>::push_back[abi:ne200100](this + 208, &v66);
      v25 += *(*(this + 17) + 8 * v66);
      goto LABEL_37;
    }

    v53 = *(this + 5);
    v54 = *(v53 + 152);
    v55 = 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v56 = *v17;
      v57 = *(v17 + 1);
      v58 = *(v54 + 4 * v56);
      if (v58 == -1 || ((*(*(*(v53 + 24) + 24) + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v58)) && *(*(this + 17) + 8 * v56) && v57 != v55)
      {
        *(this + 27) = *(this + 26);
        *(this + 30) = *(this + 29);
        v55 = v57;
      }

      v17 += 4;
    }

    while (v17 != v18);
  }

  return 1;
}

uint64_t operations_research::sat::TimeTableEdgeFinding::BuildTimeTable(operations_research::sat::TimeTableEdgeFinding *this, __n128 a2)
{
  v3 = this + 64;
  *(this + 9) = *(this + 8);
  v4 = this + 88;
  *(this + 12) = *(this + 11);
  started = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingStartMax(*(this + 5), a2);
  if ((v6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = 16 * v6;
    v9 = started - 16;
    do
    {
      v7 = *(v9 + v8);
      v45 = v7;
      v10 = *(this + 5);
      v11 = *(v10[19] + 4 * v7.n128_i32[0]);
      if (v11 == -1 || ((*(*(v10[3] + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11)) && v45.n128_i64[1] < *(v10[31] + 8 * v45.n128_i32[0]))
      {
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v45);
      }

      v8 -= 16;
    }

    while (v8);
  }

  v12 = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingEndMin(*(this + 5), v7);
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v12;
    v16 = 16 * v13;
    do
    {
      v14 = *v15;
      v45 = *v15;
      v17 = *(this + 5);
      v18 = *(v17[19] + 4 * v45.n128_i32[0]);
      if (v18 == -1 || ((*(*(v17[3] + 24) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18)) && v45.n128_i64[1] > -*(v17[32] + 8 * v45.n128_i32[0]))
      {
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v4, &v45);
      }

      ++v15;
      v16 -= 16;
    }

    while (v16);
  }

  v19 = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingEndMax(*(this + 5), v14);
  result = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(*(this + 5), v20);
  v44 = result;
  v22 = *(this + 2) - 1;
  if (v22 >= 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v43 = result + 8;
    do
    {
      v29 = v28;
      v28 = *(v19 + 16 * v22 + 8);
      v30 = *(this + 2);
      if (v25 < v30 && *(v44 + 16 * v25 + 8) < v28)
      {
        v28 = *(v44 + 16 * v25 + 8);
      }

      v31 = v23;
      v32 = *(this + 8);
      v33 = (*(this + 9) - v32) >> 4;
      if (v33 > v23 && *(v32 + 16 * v23 + 8) < v28)
      {
        v28 = *(v32 + 16 * v23 + 8);
      }

      v34 = v24;
      v35 = *(this + 11);
      v36 = (*(this + 12) - v35) >> 4;
      if (v36 > v24 && *(v35 + 16 * v24 + 8) < v28)
      {
        v28 = *(v35 + 16 * v24 + 8);
      }

      v27 += (v28 - v29) * v26;
      if (v25 >= v30)
      {
LABEL_33:
        while (1)
        {
          v39 = (v19 + 16 * v22);
          if (*(v39 + 1) != v28)
          {
            break;
          }

          *(*(this + 23) + 8 * *v39) = v27;
          if (v22-- <= 0)
          {
            v22 = -1;
            break;
          }
        }
      }

      else
      {
        v37 = (v43 + 16 * v25);
        v38 = v30 - v25;
        while (*v37 == v28)
        {
          *(*(this + 20) + 8 * *(v37 - 2)) = v27;
          ++v25;
          v37 += 2;
          if (!--v38)
          {
            v25 = v30;
            break;
          }
        }

        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }
      }

      if (v33 > v23)
      {
        do
        {
          v41 = v32 + 16 * v31;
          if (*(v41 + 8) != v28)
          {
            break;
          }

          result = operations_research::sat::SchedulingDemandHelper::DemandMin(*(this + 6), *v41);
          v26 += result;
          v31 = ++v23;
          v32 = *(this + 8);
        }

        while (v23 < ((*(this + 9) - v32) >> 4));
        v35 = *(this + 11);
        v36 = (*(this + 12) - v35) >> 4;
      }

      if (v36 > v24)
      {
        do
        {
          v42 = v35 + 16 * v34;
          if (*(v42 + 8) != v28)
          {
            break;
          }

          result = operations_research::sat::SchedulingDemandHelper::DemandMin(*(this + 6), *v42);
          v26 -= result;
          v34 = ++v24;
          v35 = *(this + 11);
        }

        while (v24 < ((*(this + 12) - v35) >> 4));
      }
    }

    while ((v22 & 0x80000000) == 0);
  }

  return result;
}

void operations_research::sat::TimeTableEdgeFinding::FillEnergyInWindowReason(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  operations_research::sat::SchedulingConstraintHelper::ClearReason(*(a1 + 40));
  v8 = *(a1 + 16);
  if (v8 != -1)
  {
    v9 = *(a1 + 40);
    v10 = *(*(*(a1 + 56) + 40) + ((8 * v8) ^ 8));
    if (v10 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v69 = v8 ^ 1;
    *(&v69 + 1) = v10;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v9 + 520, &v69);
  }

  v11 = *(a1 + 8);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 24 * a4;
    do
    {
      if (v14 != v12)
      {
        v15 = *(a1 + 40);
        v16 = *(v15[19] + 4 * v13);
        if (v16 == -1 || ((*(*(v15[3] + 24) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) != 0)
        {
          v17 = -*(v15[32] + 8 * v13);
          v18 = *(v15[31] + 8 * v13);
          v19 = v18 <= v17 || v18 <= a2;
          if (!v19 && v17 < a3)
          {
            if (v17 <= a2)
            {
              v21 = a2;
            }

            else
            {
              v21 = -*(v15[32] + 8 * v13);
            }

            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v13);
            v22 = v15[16];
            v23 = *(v22 + v12);
            if (v23 == -1)
            {
              v26 = 0;
              v25 = -1;
            }

            else
            {
              v24 = *(v22 + v12 + 8);
              v25 = v23 ^ (v24 >> 63) ^ 1;
              if (v24 >= 0)
              {
                v26 = *(v22 + v12 + 8);
              }

              else
              {
                v26 = -v24;
              }
            }

            v27 = v15[10];
            v28 = v15[13];
            v29 = -*(v22 + v12 + 16);
            LODWORD(v69) = v25;
            *(&v69 + 1) = v26;
            v70 = v29;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v15, (v27 + v12), v21, (v28 + v12), &v69);
            v30 = *(a1 + 40);
            if (v18 >= a3)
            {
              v31 = a3;
            }

            else
            {
              v31 = v18;
            }

            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v13);
            v32 = v30[25];
            v33 = v30[22];
            v34 = v30[16];
            v35 = *(v34 + v12);
            if (v35 == -1)
            {
              v36 = 0;
            }

            else
            {
              v36 = *(v34 + v12 + 8);
              v35 ^= (v36 >> 63) ^ 1;
              if (v36 < 0)
              {
                v36 = -v36;
              }
            }

            v37 = -*(v34 + v12 + 16);
            LODWORD(v69) = v35;
            *(&v69 + 1) = v36;
            v70 = v37;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v30, (v32 + v12), -v31, (v33 + v12), &v69);
            v38 = *(a1 + 40);
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v38, v13);
            v39 = *(*(v38 + 19) + 4 * v13);
            if (v39 != -1)
            {
              LODWORD(v69) = v39 ^ 1;
              std::vector<int>::push_back[abi:ne200100](v38 + 496, &v69);
            }

            operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(*(a1 + 48), v13);
            v11 = *(a1 + 8);
          }
        }
      }

      ++v13;
      v12 += 24;
    }

    while (v13 < v11);
  }

  v40 = *(a1 + 208);
  v41 = *(a1 + 216);
  while (v40 != v41)
  {
    v42 = *v40;
    v43 = *(a1 + 40);
    v44 = *(*(v43 + 30) + 8 * v42);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v43, *v40);
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v43, (*(v43 + 22) + 24 * v42), -v44, (*(v43 + 25) + 24 * v42), (*(v43 + 16) + 24 * v42));
    v45 = *(a1 + 40);
    v46 = *(v45[33] + 8 * v42);
    if (-v46 > a3)
    {
      v47 = -v46;
    }

    else
    {
      v47 = a3;
    }

    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v42);
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v45, (v45[13] + 24 * v42), v47, (v45[10] + 24 * v42), (v45[16] + 24 * v42));
    v48 = *(a1 + 40);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v42);
    v49 = *(*(v48 + 19) + 4 * v42);
    if (v49 != -1)
    {
      LODWORD(v69) = v49 ^ 1;
      std::vector<int>::push_back[abi:ne200100](v48 + 496, &v69);
    }

    operations_research::sat::SchedulingDemandHelper::AddEnergyMinReason(*(a1 + 48), v42);
    ++v40;
  }

  v50 = *(a1 + 232);
  for (i = *(a1 + 240); v50 != i; ++v50)
  {
    v56 = *v50;
    v57 = *(a1 + 40);
    v58 = *v50;
    v59 = *(*(v57 + 30) + 8 * v58);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v57, *v50);
    v60 = 24 * v56;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v57, (*(v57 + 22) + v60), -v59, (*(v57 + 25) + v60), (*(v57 + 16) + v60));
    v61 = *(a1 + 40);
    v62 = *(v61[33] + 8 * v56);
    if (-v62 > a3)
    {
      v63 = -v62;
    }

    else
    {
      v63 = a3;
    }

    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 40), v56);
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v61, (v61[13] + v60), v63, (v61[10] + v60), (v61[16] + v60));
    v64 = *(a1 + 40);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v64, v56);
    v65 = *(*(v64 + 19) + 4 * v56);
    if (v65 != -1)
    {
      LODWORD(v69) = v65 ^ 1;
      std::vector<int>::push_back[abi:ne200100](v64 + 496, &v69);
    }

    v66 = *(a1 + 40);
    v67 = *(*(v66 + 29) + 8 * v56);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v66, v58);
    if (v67 >= 1)
    {
      v68 = *(v66 + 16) + 24 * v58;
      if (*v68 == -1)
      {
        v54 = 0;
        v53 = -1;
      }

      else
      {
        v52 = *(v68 + 8);
        v53 = *v68 ^ (v52 >> 63) ^ 1;
        if (v52 >= 0)
        {
          v54 = *(v68 + 8);
        }

        else
        {
          v54 = -v52;
        }
      }

      v55 = -*(v68 + 16);
      LODWORD(v69) = v53;
      *(&v69 + 1) = v54;
      v70 = v55;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v66, &v69, -v67, (*(v66 + 25) + 24 * v58), (*(v66 + 10) + 24 * v58));
    }

    operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(*(a1 + 48), v58);
  }
}

void operations_research::sat::TimeTableEdgeFinding::~TimeTableEdgeFinding(operations_research::sat::TimeTableEdgeFinding *this)
{
  operations_research::sat::TimeTableEdgeFinding::~TimeTableEdgeFinding(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F44AC8;
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    *(this + 21) = v5;
    operator delete(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    *(this + 9) = v9;
    operator delete(v9);
  }
}

void operations_research::sat::FormatCounter(std::string *__return_ptr a1@<X8>, operations_research::sat *this@<X0>, char *a3@<X2>)
{
  v12.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v12.__r_.__value_.__l.__data_ = 0uLL;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(this, &v12, a3);
  std::string::erase(&v12, v4 - &v12, 0xFFFFFFFFFFFFFFFFLL);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v5 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[1];
  }

  v7 = v6 - 1;
  if (v6 >= 1)
  {
    v8 = &v12;
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    std::string::push_back(a1, v8->__r_.__value_.__s.__data_[0]);
    v9 = v6 & 0x7FFFFFFF;
    if (v9 != 1)
    {
      for (i = 1; i != v9; ++i)
      {
        if ((715827882 - 1431655765 * v7) <= 0x55555554)
        {
          std::string::push_back(a1, 39);
        }

        if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v12;
        }

        else
        {
          v11 = v12.__r_.__value_.__r.__words[0];
        }

        std::string::push_back(a1, v11->__r_.__value_.__s.__data_[i]);
        --v7;
      }
    }

    v5 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  if (v5 < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_23CD1CF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void operations_research::sat::FormatTable(int64x2_t *a1@<X0>, std::vector<int>::value_type a2@<W1>, std::string *a3@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  __x = a2;
  v5 = *a1;
  v6 = a1->i64[1];
  v7 = a1->i64[0];
  if (0xAAAAAAAAAAAAAAABLL * (&v6[-a1->i64[0]] >> 3) >= 2)
  {
    v8 = v7 + 24;
    v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v6[-v7 - 24] >> 3));
    if (v6 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,false>(v8, v6, &v56, v10, 1);
    v5 = *a1;
  }

  memset(&v50, 0, sizeof(v50));
  v12 = v5.i64[1];
  v11 = v5.i64[0];
  if (v5.i64[0] != v5.i64[1])
  {
    do
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v11) >> 3);
      v16 = v50.__end_ - v50.__begin_;
      if (v15 > v16)
      {
        std::vector<int>::__append(&v50, v15 - v16, &__x);
        v13 = *v11;
        v14 = v11[1];
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v11) >> 3);
      }

      if (v14 != v13)
      {
        v17 = 0;
        v18 = 1;
        begin = v50.__begin_;
        do
        {
          v21 = v13 + 24 * v17;
          v22 = *(v21 + 23);
          if (v22 < 0)
          {
            v22 = *(v21 + 8);
          }

          v20 = __x + v22;
          if (begin[v17] > v20)
          {
            v20 = begin[v17];
          }

          begin[v17] = v20;
          v17 = v18++;
        }

        while (v15 > v17);
      }

      v11 += 3;
    }

    while (v11 != v12);
    v5 = *a1;
  }

  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if ((vmovn_s64(vceqq_s64(vdupq_laneq_s64(v5, 1), v5)).u8[0] & 1) == 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = v5.i64[0];
    while (1)
    {
      v27 = (v25 + 24 * v23);
      v26 = *v27;
      if (v27[1] != *v27)
      {
        break;
      }

LABEL_73:
      v56 = "\n";
      v57 = 1;
      absl::lts_20240722::StrAppend(a3, &v56);
      v23 = ++v24;
      v25 = a1->i64[0];
      if (0xAAAAAAAAAAAAAAABLL * ((a1->i64[1] - a1->i64[0]) >> 3) <= v24)
      {
        goto LABEL_74;
      }
    }

    v28 = 0;
    v29 = 1;
    while (1)
    {
      v30 = (v26 + 24 * v28);
      if (!((v29 - 1) | v24))
      {
        if (*(v30 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v49, *v30, *(v30 + 1));
        }

        else
        {
          v32 = *v30;
          v49.__r_.__value_.__r.__words[2] = *(v30 + 2);
          *&v49.__r_.__value_.__l.__data_ = v32;
        }

        v43 = v50.__begin_[v28];
        size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v49.__r_.__value_.__l.__size_;
        }

        if (size < v43)
        {
          std::string::resize(&v49, v43, 32);
        }

        v55[0] = v49;
        memset(&v49, 0, sizeof(v49));
        v45 = HIBYTE(v55[0].__r_.__value_.__r.__words[2]);
        if ((v55[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = v55;
        }

        else
        {
          v46 = v55[0].__r_.__value_.__r.__words[0];
        }

        if ((v55[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v55[0].__r_.__value_.__l.__size_;
        }

        v56 = v46;
        v57 = v45;
        absl::lts_20240722::StrAppend(a3, &v56);
        if (SHIBYTE(v55[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55[0].__r_.__value_.__l.__data_);
          if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }
        }

        else if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v42 = v49.__r_.__value_.__r.__words[0];
        goto LABEL_23;
      }

      if (*(v30 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v30, *(v30 + 1));
      }

      else
      {
        v31 = *v30;
        __p.__r_.__value_.__r.__words[2] = *(v30 + 2);
        *&__p.__r_.__value_.__l.__data_ = v31;
      }

      v33 = v50.__begin_[v28];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v34 = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ < v33)
        {
          goto LABEL_35;
        }
      }

      else if (v33 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
      {
        v34 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_35:
        v35 = v33 - v34;
        if (v33 - v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v35 >= 0x17)
        {
          operator new();
        }

        v53 = v33 - v34;
        if (v33 != v34)
        {
          memset(__b, 32, v35);
        }

        *(__b + v35) = 0;
        v36 = v53;
        v37 = __b;
        if ((v53 & 0x80u) != 0)
        {
          v37 = __b[0];
          v36 = __b[1];
        }

        v56 = v37;
        v57 = v36;
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = __p.__r_.__value_.__l.__size_;
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v55[0].__r_.__value_.__r.__words[0] = p_p;
        v55[0].__r_.__value_.__l.__size_ = v38;
        absl::lts_20240722::StrCat(&v56, v55, &v48);
        if (v53 < 0)
        {
          operator delete(__b[0]);
        }

        goto LABEL_48;
      }

      v48 = __p;
      memset(&__p, 0, sizeof(__p));
LABEL_48:
      v40 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v48;
      }

      else
      {
        v41 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = v48.__r_.__value_.__l.__size_;
      }

      v54[0] = v41;
      v54[1] = v40;
      absl::lts_20240722::StrAppend(a3, v54);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v42 = __p.__r_.__value_.__r.__words[0];
LABEL_23:
      operator delete(v42);
LABEL_24:
      v28 = v29;
      v26 = *(a1->i64[0] + 24 * v23);
      ++v29;
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1->i64[0] + 24 * v23 + 8) - v26) >> 3) <= v28)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_74:
  if (v50.__begin_)
  {
    v50.__end_ = v50.__begin_;
    operator delete(v50.__begin_);
  }
}

void sub_23CD1D47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::RandomizeDecisionHeuristic(uint64_t (**a1)(absl::lts_20240722::BitGenRef *this, unint64_t a2, const void *a3, void *a4, void *a5), uint64_t a2)
{
  v4 = operations_research::sat::SatParameters_VariableOrder_descriptor(a1);
  v5 = v4;
  v6 = *(v4 + 4);
  if (v6 - (v6 != 0x80000000) < 0)
  {
    v8 = 0;
  }

  else
  {
    LODWORD(v42) = 0;
    HIDWORD(v42) = v6;
    v41 = 0;
    v7 = a1[1];
    if (v7 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v9 = 0;
    }

    else
    {
      v4 = (v7)(*a1, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v42, &v41);
      if (v4)
      {
        v8 = v41;
        goto LABEL_13;
      }

      v9 = v42;
      v6 = HIDWORD(v42);
    }

    v10 = v6 - v9 - (v6 != 0x80000000);
    v4 = (a1[2])(*a1);
    v11 = v10 + 1;
    if (((v10 + 1) & v10) != 0)
    {
      v12 = v4 * v11;
      if (v11 > v12)
      {
        for (i = ~v10 % v11; i > v12; v12 = v4 * v11)
        {
          v4 = (a1[2])(*a1);
        }
      }

      v13 = HIDWORD(v12);
    }

    else
    {
      LODWORD(v13) = v4 & v10;
    }

    v8 = v9 + v13;
  }

LABEL_13:
  *(a2 + 192) = *(*(v5 + 56) + 48 * v8 + 4);
  *(a2 + 16) |= 8u;
  v14 = operations_research::sat::SatParameters_Polarity_descriptor(v4);
  v15 = *(v14 + 4);
  if (v15 - (v15 != 0x80000000) < 0)
  {
    v17 = 0;
  }

  else
  {
    LODWORD(v42) = 0;
    HIDWORD(v42) = v15;
    v41 = 0;
    v16 = a1[1];
    if (v16 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v18 = 0;
    }

    else
    {
      if ((v16)(*a1, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v42, &v41))
      {
        v17 = v41;
        goto LABEL_25;
      }

      v18 = v42;
      v15 = HIDWORD(v42);
    }

    v19 = v15 - v18 - (v15 != 0x80000000);
    v20 = (a1[2])(*a1);
    v21 = v19 + 1;
    if (((v19 + 1) & v19) != 0)
    {
      v22 = v20 * v21;
      if (v21 > v22)
      {
          ;
        }
      }

      v23 = HIDWORD(v22);
    }

    else
    {
      LODWORD(v23) = v20 & v19;
    }

    v17 = v18 + v23;
  }

LABEL_25:
  *(a2 + 376) = *(*(v14 + 56) + 48 * v17 + 4);
  *(a2 + 24) |= 0x2000000u;
  v42 = 0x3FE0000000000000;
  LOBYTE(v41) = 0;
  v24 = a1[1];
  if (v24 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    v26 = 0.5;
    goto LABEL_30;
  }

  if ((v24)(*a1, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v42, &v41))
  {
    v25 = v41;
  }

  else
  {
    v26 = *&v42;
LABEL_30:
    while (1)
    {
      v27 = vcvtd_n_s64_f64(v26, 0x20uLL);
      v28 = (a1[2])(*a1);
      if (v28 != v27)
      {
        break;
      }

      v25 = 0;
      v26 = (v26 + v27 * -2.32830644e-10) * 4294967300.0;
      if (v26 == 0.0)
      {
        goto LABEL_34;
      }
    }

    v25 = v28 < v27;
  }

LABEL_34:
  *(a2 + 564) = v25;
  *(a2 + 28) |= 0x10000000u;
  v42 = 0x3FE0000000000000;
  LOBYTE(v41) = 0;
  v29 = a1[1];
  if (v29 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    v31 = 0.5;
    goto LABEL_40;
  }

  if ((v29)(*a1, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v42, &v41))
  {
    v30 = 0;
    if (!v41)
    {
      goto LABEL_45;
    }

LABEL_44:
    v30 = 0x3F847AE147AE147BLL;
    goto LABEL_45;
  }

  v31 = *&v42;
LABEL_40:
  while (1)
  {
    v32 = vcvtd_n_s64_f64(v31, 0x20uLL);
    v33 = (a1[2])(*a1);
    if (v33 != v32)
    {
      break;
    }

    v31 = (v31 + v32 * -2.32830644e-10) * 4294967300.0;
    if (v31 == 0.0)
    {
      v30 = 0;
      goto LABEL_45;
    }
  }

  v30 = 0;
  if (v33 < v32)
  {
    goto LABEL_44;
  }

LABEL_45:
  *(a2 + 208) = v30;
  *(a2 + 16) |= 0x40u;
  v42 = 0x3FE0000000000000;
  LOBYTE(v41) = 0;
  v34 = a1[1];
  if (v34 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    v37 = 0.5;
    goto LABEL_51;
  }

  result = (v34)(*a1, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v42, &v41);
  if (result)
  {
    v36 = 0;
    if (!v41)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v37 = *&v42;
LABEL_51:
  while (1)
  {
    v38 = vcvtd_n_s64_f64(v37, 0x20uLL);
    result = (a1[2])(*a1);
    if (result != v38)
    {
      break;
    }

    v37 = (v37 + v38 * -2.32830644e-10) * 4294967300.0;
    if (v37 == 0.0)
    {
      v36 = 0;
      goto LABEL_56;
    }
  }

  v36 = 0;
  if (result < v38)
  {
LABEL_55:
    v36 = 0x3F847AE147AE147BLL;
  }

LABEL_56:
  *(a2 + 200) = v36;
  *(a2 + 16) |= 0x20u;
  return result;
}

uint64_t operations_research::sat::ProductWithModularInverse(uint64_t this, uint64_t a2, uint64_t a3)
{
  result = 0;
  v12[2] = *MEMORY[0x277D85DE8];
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  if (a3 && v6 != 1)
  {
    v11 = xmmword_23CE48D30;
    v7 = (v6 & ((this % v6) >> 63)) + this % v6;
    v12[0] = v6;
    v12[1] = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v12[v8];
      v12[v8] = v10 % v7;
      v12[v8 - 1] -= v12[v9 - 1] * (v10 / v7);
      v8 = v9;
      v9 ^= 1uLL;
      v7 = v12[v9];
    }

    while (v7);
    if (v12[v8] != 1 || !((v6 & (v12[v8 - 1] >> 63)) + v12[v8 - 1]))
    {
LABEL_13:
      operations_research::sat::ProductWithModularInverse(v12);
    }

    return __modti3();
  }

  return result;
}

BOOL operations_research::sat::SolveDiophantineEquationOfSizeTwo(operations_research::sat *this, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *this;
  if (!*this)
  {
    operations_research::sat::SolveDiophantineEquationOfSizeTwo(v24);
  }

  v7 = *a2;
  if (!*a2)
  {
    operations_research::sat::SolveDiophantineEquationOfSizeTwo(v24);
  }

  if (v6 == 0x8000000000000000)
  {
    operations_research::sat::SolveDiophantineEquationOfSizeTwo(v24);
  }

  if (v7 == 0x8000000000000000)
  {
    operations_research::sat::SolveDiophantineEquationOfSizeTwo(v24);
  }

  if (v6 >= 0)
  {
    v8 = *this;
  }

  else
  {
    v8 = -v6;
  }

  if (v7 >= 0)
  {
    v9 = *a2;
  }

  else
  {
    v9 = -v7;
  }

  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v8 <= v9)
  {
    v8 = v9;
  }

  v11 = v8 % v10;
  if (v11)
  {
    v12 = v11 >> __clz(__rbit64(v11));
    v13 = v10;
    do
    {
      v14 = v13 >> __clz(__rbit64(v13));
      v13 = v14 - v12;
      if (v12 > v14)
      {
        v13 = v12 - v14;
      }

      if (v12 >= v14)
      {
        v12 = v14;
      }
    }

    while (v13);
    v10 = v12 << __clz(__rbit64(v11 | v10));
  }

  v15 = *a3 % v10;
  if (!v15)
  {
    *this = v6 / v10;
    *a2 /= v10;
    v16 = *a3 / v10;
    *a3 = v16;
    if (v16)
    {
      v21 = operations_research::sat::ProductWithModularInverse(*this, *a2, v16);
      *a4 = v21;
      if (*a3 < 0 && v21)
      {
        v22 = *a2;
        if (*a2 < 0)
        {
          v22 = -v22;
        }

        *a4 = v21 - v22;
      }

      *a5 = __divti3();
    }

    else
    {
      *a5 = 0;
      *a4 = 0;
    }
  }

  return v15 == 0;
}

uint64_t operations_research::sat::FloorSquareRoot(operations_research::sat *this)
{
  v1 = vcvtmd_s64_f64(sqrt(this));
  do
  {
    v2 = v1 * v1;
    if ((v1 * v1) >> 64 != (v1 * v1) >> 63)
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    --v1;
  }

  while (v2 > this);
  do
  {
    v3 = v1 + 2;
    if ((v3 * v3) >> 64 == (v3 * v3) >> 63)
    {
      v4 = v3 * v3;
    }

    else
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    ++v1;
  }

  while (v4 <= this);
  return v1;
}

uint64_t operations_research::sat::CeilSquareRoot(operations_research::sat *this)
{
  v1 = vcvtpd_s64_f64(sqrt(this));
  do
  {
    v2 = v1 * v1;
    v3 = (v1 * v1) >> 64 == (v1 * v1) >> 63;
    ++v1;
  }

  while (v3 && v2 < this);
  do
  {
    v4 = (v1 - 2) * (v1 - 2);
    --v1;
  }

  while (v4 >= this);
  return v1;
}

uint64_t operations_research::sat::ClosestMultiple(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (this < 0)
  {
    return -operations_research::sat::ClosestMultiple(-this, a2, a3);
  }

  if (this % a2 <= a2 / 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  return this / a2 * a2 + v3;
}

BOOL operations_research::sat::LinearInequalityCanBeReducedWithClosestMultiple(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (!a3)
  {
    return 0;
  }

  v9 = a1;
  v10 = a9;
  if (a3 >= 1)
  {
    v11 = a6;
    v45 = a8;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a3 & 0x7FFFFFFF;
    v46 = a2;
    v47 = v15;
    v16 = a4;
    v17 = a6;
    v18 = a2;
    do
    {
      v21 = *v18++;
      v20 = v21;
      if (v21 < 1)
      {
        operations_research::sat::LinearInequalityCanBeReducedWithClosestMultiple(v20, v49);
      }

      v22 = operations_research::sat::ClosestMultiple(v20, a1, a3);
      if (v20 - v22 >= 0)
      {
        v23 = v16;
      }

      else
      {
        v23 = v17;
      }

      v24 = *v17++;
      v12 += v24 * v20;
      v14 += v22 / a1 * v24;
      v13 += *v23 * (v20 - v22);
      ++v16;
      --v15;
    }

    while (v15);
    if (v12 > v45)
    {
      v25 = 0;
      v26 = v12 + ~v45;
      v9 = a1;
      v27 = a4;
      do
      {
        v29 = *v46++;
        v30 = operations_research::sat::ClosestMultiple(v29, a1, a3);
        if (v29 - v30 < 0)
        {
          v28 = *v11 - v26 / v29;
          if (*v27 > v28)
          {
            v28 = *v27;
          }
        }

        else
        {
          v28 = *v11;
        }

        v25 += v28 * (v29 - v30);
        ++v11;
        ++v27;
        --v47;
      }

      while (v47);
      a8 = v45;
      v10 = a9;
      v32 = v45 - v13;
      v33 = (v45 - v13) / a1;
      if (v33 <= 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    v10 = a9;
LABEL_21:
    *v10 = v14;
    return 1;
  }

  v14 = 0;
  v25 = 0;
  if ((a8 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

  v32 = a8;
  v33 = a8 / a1;
  if (a8 / a1 <= 0)
  {
LABEL_23:
    v35 = v33 * v9;
    if (v9 < 1 || v35 <= v32)
    {
      v37 = v9 < 0 && v35 < v32;
      v34 = v37 << 63 >> 63;
    }

    else
    {
      v34 = -1;
    }

    goto LABEL_33;
  }

LABEL_19:
  v34 = 0;
LABEL_33:
  v38 = v34 + v33;
  if (v38 >= v14)
  {
    v38 = v14;
  }

  *v10 = v38;
  v39 = a8 - v25 + 1;
  v40 = v39 / v9;
  if (v39 / v9 < 0)
  {
    v42 = 0;
  }

  else
  {
    v41 = v40 * v9;
    v42 = v9 >= 1 && v41 < v39 || v9 < 0 && v41 > v39;
  }

  return v38 < v42 + v40;
}

uint64_t operations_research::sat::MoveOneUnprocessedLiteralLast(uint64_t **a1, int a2, int32x2_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4[-1].i32[1];
  v6 = *a1;
  v7 = *(*a1 + 10);
  if (*(*a1 + 10))
  {
    goto LABEL_5;
  }

  while (!*(v6 + 11))
  {
    v8 = &v6[v7 + 32];
    v6 = *v8;
    v7 = *(*v8 + 10);
    if (*(*v8 + 10))
    {
LABEL_5:
      v9 = 0;
      do
      {
        v10 = (v7 + v9) >> 1;
        if (*(v6 + v10 + 3) < v5)
        {
          v9 = v10 + 1;
        }

        else
        {
          v7 = (v7 + v9) >> 1;
        }
      }

      while (v9 != v7);
    }
  }

  while (v7 == *(v6 + 10))
  {
    LODWORD(v7) = *(v6 + 8);
    v6 = *v6;
    if (*(v6 + 11))
    {
      goto LABEL_15;
    }
  }

  if (v5 < *(v6 + v7 + 3))
  {
LABEL_15:
    v11 = (v4 - v3) >> 2;
LABEL_97:
    if (v11 >= a2)
    {
      return a2;
    }

    else
    {
      return v11;
    }
  }

  v47 = a1[1];
  v48 = *(v47 + 10);
  v11 = (v4 - v3) >> 2;
  if (v6 == v47 && v7 == v48)
  {
    goto LABEL_97;
  }

  v16 = 0;
  v17 = 0;
  LODWORD(v15) = v11 - 1;
  v18 = (v4 - v3) >> 2;
  do
  {
    if (--v18 < 0)
    {
      break;
    }

    v19 = v3->i32[v18 & 0x7FFFFFFF];
    v12 = *a1;
    v13 = *(*a1 + 10);
    if (*(*a1 + 10))
    {
LABEL_24:
      v20 = 0;
      do
      {
        v21 = (v13 + v20) >> 1;
        if (*(v12 + v21 + 3) < v19)
        {
          v20 = v21 + 1;
        }

        else
        {
          v13 = (v13 + v20) >> 1;
        }
      }

      while (v20 != v13);
    }

    while (!*(v12 + 11))
    {
      v12 = v12[v13 + 32];
      v13 = *(v12 + 10);
      if (*(v12 + 10))
      {
        goto LABEL_24;
      }
    }

    while (v13 == *(v12 + 10))
    {
      LODWORD(v13) = *(v12 + 8);
      v12 = *v12;
      if (*(v12 + 11))
      {
        goto LABEL_16;
      }
    }

    if (v19 < *(v12 + v13 + 3))
    {
LABEL_16:
      v12 = a1[1];
      LODWORD(v13) = *(v47 + 10);
    }

    v14 = v12 == v47 && v13 == v48;
    if (v14)
    {
      LODWORD(v15) = v18;
    }

    v16 += v14;
    v17 += v14 ^ 1;
  }

  while (v16 < v17);
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  if (v15 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v15;
  }

  v22 = v15;
  v23 = (v3 + 4 * v15);
  v50 = a1;
  while (2)
  {
    if (v23 == v4)
    {
      return v22;
    }

    v24 = v23->i32[0];
    v25 = *a1;
    v26 = *(*a1 + 10);
    if (*(*a1 + 10))
    {
      goto LABEL_45;
    }

    while (!*(v25 + 11))
    {
      v25 = v25[v26 + 32];
      v26 = *(v25 + 10);
      if (*(v25 + 10))
      {
LABEL_45:
        v27 = 0;
        do
        {
          v28 = (v26 + v27) >> 1;
          if (*(v25 + v28 + 3) < v24)
          {
            v27 = v28 + 1;
          }

          else
          {
            v26 = (v26 + v27) >> 1;
          }
        }

        while (v27 != v26);
      }
    }

    while (v26 == *(v25 + 10))
    {
      LODWORD(v26) = *(v25 + 8);
      v25 = *v25;
      if (*(v25 + 11))
      {
        goto LABEL_55;
      }
    }

    if (*(v25 + v26 + 3) <= v24)
    {
      goto LABEL_56;
    }

LABEL_55:
    v25 = v47;
    LODWORD(v26) = v48;
LABEL_56:
    if (v25 != v47 || v26 != v48)
    {
      v23 = (v23 + 4);
      continue;
    }

    break;
  }

LABEL_71:
  while (2)
  {
    v4 = (v4 - 4);
    if (v23 == v4)
    {
      return v22;
    }

    v35 = v4->i32[0];
    v36 = *a1;
    v37 = *(*a1 + 10);
    if (*(*a1 + 10))
    {
      goto LABEL_75;
    }

    while (!*(v36 + 11))
    {
      v36 = v36[v37 + 32];
      v37 = *(v36 + 10);
      if (*(v36 + 10))
      {
LABEL_75:
        v38 = 0;
        do
        {
          v39 = (v37 + v38) >> 1;
          if (*(v36 + v39 + 3) < v35)
          {
            v38 = v39 + 1;
          }

          else
          {
            v37 = (v37 + v38) >> 1;
          }
        }

        while (v38 != v37);
      }
    }

    while (v37 == *(v36 + 10))
    {
      LODWORD(v37) = *(v36 + 8);
      v36 = *v36;
      if (*(v36 + 11))
      {
        goto LABEL_71;
      }
    }

    v30 = *(v36 + v37 + 3);
    v31 = v30 <= v35;
    if (v30 <= v35)
    {
      v32 = v36;
    }

    else
    {
      v32 = v47;
    }

    if (v31)
    {
      v33 = v37;
    }

    else
    {
      v33 = v48;
    }

    if (v32 == v47 && v33 == v48)
    {
      continue;
    }

    break;
  }

  v40 = (v4 - v23) >> 2;
  v41 = v40 + 1;
  if (v40 < 3)
  {
    v42 = 0;
    v46 = 0;
  }

  else
  {
    if (v41 >= 0x1FFFFFFFFFFFFFFFLL)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v40 + 1;
    }

    v43 = MEMORY[0x277D826F0];
    while (1)
    {
      v44 = operator new(4 * v42, v43);
      if (v44)
      {
        break;
      }

      v45 = v42 >> 1;
      v31 = v42 > 1;
      v42 >>= 1;
      if (!v31)
      {
        v46 = 0;
        v42 = v45;
        goto LABEL_102;
      }
    }

    v46 = v44;
  }

LABEL_102:
  std::__stable_partition_impl<std::_ClassicAlgPolicy,operations_research::sat::MoveOneUnprocessedLiteralLast(absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> const&,int,std::vector<operations_research::sat::Literal> *)::$_0 &,std::__wrap_iter<operations_research::sat::Literal*>,long,std::pair<operations_research::sat::Literal*,long>>(v23, v4, &v50, v41, v46, v42);
  if (v46)
  {
    operator delete(v46);
  }

  return v22;
}

void sub_23CD1E418(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::WeightedPick(double *a1, unint64_t a2, void *a3, __n128 a4)
{
  a4.n128_u64[0] = 0;
  v7 = 0.0;
  if ((a2 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_9;
  }

  v8 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v9 = v8 + 1;
    v10 = (v8 + 1) & 0x3FFFFFFFFFFFFFFELL;
    v11 = &a1[v10];
    v12 = a1 + 1;
    v13 = v10;
    do
    {
      v7 = v7 + *(v12 - 1) + *v12;
      v12 += 2;
      v13 -= 2;
    }

    while (v13);
    if (v9 == v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = a1;
  }

  do
  {
    v14 = *v11++;
    v7 = v7 + v14;
  }

  while (v11 != &a1[a2]);
LABEL_9:
  if ((*&v7 <= -1 || ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v7 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_43;
  }

  v31 = 0;
  v32 = 0.0;
  v33 = v7;
  v18 = a3[1];
  if (v18 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    v19 = 0.0;
    v20 = v7;
  }

  else
  {
    if ((v18)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, &v32, &v31, a4))
    {
      a4.n128_u64[0] = v31;
      if (a2)
      {
        goto LABEL_44;
      }

      return (a2 - 1);
    }

    v19 = v32;
    v20 = v33;
    v7 = v33 - v32;
  }

  v21 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v22 = ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v7 >= 0.0)
  {
    v22 = 0;
    v21 = 0;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v21 = 1;
  }

  v23 = (*&v7 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v21;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v23 = 1;
  }

  if (((v23 | v22) & 1) == 0)
  {
    do
    {
      while (1)
      {
        v27 = (a3[2])(*a3, a4);
        if (!v27)
        {
          break;
        }

        v26 = __clz(v27);
        a4.n128_f64[0] = v19 + COERCE_DOUBLE(((v27 << v26 >> 11) & 0xFFFFFFFFFFFFFLL) - (v26 << 52) + 0x3FE0000000000000) * v7;
        if (a4.n128_f64[0] < v20)
        {
          goto LABEL_43;
        }
      }

      a4.n128_f64[0] = v19 + 0.0 * v7;
    }

    while (a4.n128_f64[0] >= v20);
LABEL_43:
    if (a2)
    {
      goto LABEL_44;
    }

    return (a2 - 1);
  }

  v24 = (a3[2])(*a3, a4);
  if (v24)
  {
    v25 = __clz(v24);
    a4.n128_f64[0] = v19 + COERCE_DOUBLE(((v24 << v25 >> 11) & 0xFFFFFFFFFFFFFLL) - (v25 << 52) + 0x3FE0000000000000) * v7;
    if (a2)
    {
      goto LABEL_44;
    }

    return (a2 - 1);
  }

  a4.n128_f64[0] = v19 + 0.0 * v7;
  if (!a2)
  {
    return (a2 - 1);
  }

LABEL_44:
  v28 = 0;
  result = 0;
  v30 = 0.0;
  while (1)
  {
    v30 = v30 + a1[v28];
    if (v30 > a4.n128_f64[0])
    {
      break;
    }

    result = (result + 1);
    v28 = result;
    if (a2 <= result)
    {
      return (a2 - 1);
    }
  }

  return result;
}

double operations_research::sat::IncrementalAverage::AddData(operations_research::sat::IncrementalAverage *this, double a2)
{
  v2 = *(this + 1) + 1;
  *(this + 1) = v2;
  result = *this + (a2 - *this) / v2;
  *this = result;
  return result;
}

void operations_research::sat::CompressTuples(uint64_t a1, uint64_t a2, const void ***a3)
{
  if (*a3 != a3[1])
  {
    v3 = a3;
    gtl::STLSortAndRemoveDuplicates<std::vector<std::vector<long long>>>(a3);
    v6 = (*v3)[1] - **v3;
    __p = 0;
    v96 = 0;
    v97 = 0;
    if (v6 << 29 != 0x100000000)
    {
      if (!((((v6 << 29) - 0x100000000) >> 32) >> 61))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if ((v6 >> 3) >= 1)
    {
      v7 = 0;
      v8 = (v6 >> 3) & 0x7FFFFFFF;
      v90 = v3;
      while (1)
      {
        v9 = *(a1 + 8 * v7);
        if (v9 != 1)
        {
          v91 = 0;
          v92 = 0;
          v93 = &unk_23CE31C20;
          v10 = *v3;
          if (v3[1] != *v3)
          {
            v11 = 0;
            v12 = 0;
            do
            {
              v14 = 0;
              v15 = 0;
              v16 = &v10[3 * v11];
              v17 = __p;
              do
              {
                if (v7 != v14)
                {
                  v17[v15++] = *(*v16 + v14);
                }

                ++v14;
              }

              while (v8 != v14);
              absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::try_emplace_impl<std::vector<long long> const&>(&v91, &__p, &v98, v4, v5);
              v18 = v99;
              v20 = v99[4];
              v19 = v99[5];
              if (v20 < v19)
              {
                *v20 = v12;
                v13 = v20 + 4;
              }

              else
              {
                v21 = v99[3];
                v22 = v20 - v21;
                v23 = (v20 - v21) >> 2;
                v24 = v23 + 1;
                if ((v23 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v25 = v19 - v21;
                if (v25 >> 1 > v24)
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
                  if (!(v26 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v27 = v23;
                v28 = (4 * v23);
                v29 = &v28[-v27];
                *v28 = v12;
                v13 = v28 + 1;
                memcpy(v29, v21, v22);
                v18[3] = v29;
                v18[4] = v13;
                v18[5] = 0;
                if (v21)
                {
                  operator delete(v21);
                }
              }

              v18[4] = v13;
              v11 = ++v12;
              v10 = *v3;
            }

            while (0xAAAAAAAAAAAAAAABLL * (v3[1] - *v3) > v12);
            if (v92 >= 2)
            {
              v30 = v93;
              v31 = v94;
              if (*v93 <= -2)
              {
                do
                {
                  v32 = __clz(__rbit64((*v30 | ~(*v30 >> 7)) & 0x101010101010101)) >> 3;
                  v30 = (v30 + v32);
                  v31 += 48 * v32;
                }

                while (*v30 < -1);
              }

              v33 = v9;
              v34 = 0;
              while (1)
              {
                v36 = *(v31 + 24);
                v35 = *(v31 + 32);
                v37 = v35 - v36;
                if (v33 != (v35 - v36) >> 2)
                {
                  goto LABEL_41;
                }

                v39 = *v36;
                v38 = v36 + 4;
                *((*v3)[3 * v39] + v7) = 0x8000000000000000;
                v40 = v35 - v38;
                v41 = (v35 - v38) >> 2;
                if (v41 < 1)
                {
                  goto LABEL_41;
                }

                if (-v34 < v40)
                {
                  v42 = v34;
                  v43 = v34 >> 2;
                  if ((v41 + v43) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v88 = v33;
                  if (v41 + v43)
                  {
                    if (!((v41 + v43) >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v57 = 4 * v43;
                  v34 = 4 * v43 + v40;
                  if ((v37 - 8) >= 0x1C)
                  {
                    if (v42 - v38 < 0x20)
                    {
                      v44 = v57;
                      v45 = v38;
                      goto LABEL_61;
                    }

                    v59 = ((v37 - 8) >> 2) + 1;
                    v60 = 4 * (v59 & 0x7FFFFFFFFFFFFFF8);
                    v44 = (v57 + v60);
                    v45 = &v38[v60];
                    v61 = (v38 + 16);
                    v62 = (v57 + 16);
                    v63 = v59 & 0x7FFFFFFFFFFFFFF8;
                    do
                    {
                      v64 = *v61;
                      *(v62 - 1) = *(v61 - 1);
                      *v62 = v64;
                      v61 += 2;
                      v62 += 2;
                      v63 -= 8;
                    }

                    while (v63);
                    if (v59 != (v59 & 0x7FFFFFFFFFFFFFF8))
                    {
                      do
                      {
LABEL_61:
                        v65 = *v45;
                        v45 += 4;
                        *v44++ = v65;
                      }

                      while (v44 != v34);
                    }

                    memcpy(0, 0, v42);
                    v33 = v88;
                    goto LABEL_41;
                  }

                  v44 = v57;
                  v45 = v38;
                  goto LABEL_61;
                }

                if (v38 != v35)
                {
                  break;
                }

LABEL_41:
                v47 = *(v30 + 1);
                v30 = (v30 + 1);
                LOBYTE(v46) = v47;
                v31 += 48;
                if (v47 <= -2)
                {
                  do
                  {
                    v48 = __clz(__rbit64((*v30 | ~(*v30 >> 7)) & 0x101010101010101)) >> 3;
                    v30 = (v30 + v48);
                    v31 += 48 * v48;
                    v46 = *v30;
                  }

                  while (v46 < -1);
                }

                if (v46 == 255)
                {
                  goto LABEL_64;
                }
              }

              if ((v40 - 4) < 0x1C || (v34 - v38) < 0x20)
              {
                v51 = v38;
                v52 = v34;
              }

              else
              {
                v49 = ((v40 - 4) >> 2) + 1;
                v50 = 4 * (v49 & 0x7FFFFFFFFFFFFFF8);
                v51 = &v38[v50];
                v52 = (v34 + v50);
                v53 = (v34 + 16);
                v54 = (v38 + 16);
                v55 = v49 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v56 = *v54;
                  *(v53 - 1) = *(v54 - 1);
                  *v53 = v56;
                  v53 += 2;
                  v54 += 2;
                  v55 -= 8;
                }

                while (v55);
                if (v49 == (v49 & 0x7FFFFFFFFFFFFFF8))
                {
                  goto LABEL_57;
                }
              }

              do
              {
                v58 = *v51;
                v51 += 4;
                *v52++ = v58;
              }

              while (v51 != v35);
LABEL_57:
              v34 = v52;
              goto LABEL_41;
            }
          }

          v34 = 0;
LABEL_64:
          v66 = 126 - 2 * __clz(v34 >> 2);
          if (v34)
          {
            v67 = v66;
          }

          else
          {
            v67 = 0;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(0, v34, &v98, v67, 1);
          if (v34)
          {
            v68 = v3[1];
            for (i = 0; i != v34; ++i)
            {
              v70 = &(*v3)[3 * *i];
              if (v70 != v68 - 3)
              {
                v71 = v34;
                v73 = *(v68 - 3);
                v72 = *(v68 - 2);
                v74 = v72 - v73;
                v75 = *(v70 + 16);
                v76 = *v70;
                if (v75 - *v70 < (v72 - v73))
                {
                  if (v76)
                  {
                    *(v70 + 8) = v76;
                    operator delete(v76);
                    v75 = 0;
                    *v70 = 0;
                    *(v70 + 8) = 0;
                    *(v70 + 16) = 0;
                  }

                  v77 = v74 >> 3;
                  if (!((v74 >> 3) >> 61))
                  {
                    if (v75 >> 2 > v77)
                    {
                      v77 = v75 >> 2;
                    }

                    if (v75 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v78 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v78 = v77;
                    }

                    if (!(v78 >> 61))
                    {
                      operator new();
                    }
                  }

                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v79 = *(v70 + 8);
                v80 = v79 - v76;
                if (v79 - v76 >= v74)
                {
                  if (v72 != v73)
                  {
                    v84 = *v70;
                    memmove(v76, v73, v72 - v73);
                    v76 = v84;
                  }

                  v83 = &v76[v74];
                }

                else
                {
                  if (v79 != v76)
                  {
                    memmove(v76, v73, v79 - v76);
                    v79 = *(v70 + 8);
                  }

                  v81 = &v73[v80];
                  v82 = v72 - &v73[v80];
                  if (v82)
                  {
                    memmove(v79, v81, v82);
                  }

                  v83 = &v79[v82];
                }

                *(v70 + 8) = v83;
                v34 = v71;
                v3 = v90;
              }

              v85 = v3[1];
              v87 = *(v85 - 3);
              v68 = v85 - 3;
              v86 = v87;
              if (v87)
              {
                *(v3[1] - 2) = v86;
                operator delete(v86);
              }

              v3[1] = v68;
            }
          }

          if (v91)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::destroy_slots(&v91);
            operator delete(&v93[-(v92 & 1) - 8]);
          }
        }

        if (++v7 == v8)
        {
          if (__p)
          {
            v96 = __p;
            operator delete(__p);
          }

          return;
        }
      }
    }
  }
}

void sub_23CD1EE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *absl::lts_20240722::flat_hash_map<std::vector<long long> const,std::vector<int>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::~flat_hash_map(void *a1)
{
  if (*a1)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::destroy_slots(a1);
    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

void *operations_research::sat::MaxBoundedSubsetSum::Reset(operations_research::sat::MaxBoundedSubsetSum *this, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  v5 = 0;
  result = std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(this + 4, &v5, &v6, 1uLL);
  *(this + 8) = 0;
  *(this + 2) = a2;
  *(this + 3) = 0;
  return result;
}

void operations_research::sat::MaxBoundedSubsetSum::Add(void *this, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a2 && this[2] >= a2)
  {
    v2 = this[1];
    if (v2 >= 0)
    {
      v3 = this[1];
    }

    else
    {
      v3 = -v2;
    }

    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    if (v3 >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    if (v3 <= v4)
    {
      v3 = v4;
    }

    if (v2)
    {
      v6 = v3 % v5;
      if (v6)
      {
        v7 = v6 >> __clz(__rbit64(v6));
        v8 = v5;
        do
        {
          v9 = v8 >> __clz(__rbit64(v8));
          v8 = v9 - v7;
          if (v7 > v9)
          {
            v8 = v7 - v9;
          }

          if (v7 >= v9)
          {
            v7 = v9;
          }
        }

        while (v8);
        v5 = v7 << __clz(__rbit64(v6 | v5));
      }
    }

    else
    {
      v5 = v3;
    }

    this[1] = v5;
    v10[0] = a2;
    operations_research::sat::MaxBoundedSubsetSum::AddChoicesInternal(this, v10, 1);
  }
}

void operations_research::sat::MaxBoundedSubsetSum::AddChoicesInternal(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1 + 4;
  if (v5 == v6)
  {
    v11 = a1 + 2;
    if (a1[2] > *a1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v8 = v6 - v5;
  v9 = *a1;
  if (v9 < v8 >> 3)
  {
    v11 = a1 + 2;
    v10 = a1[2];
    if (v10 > v9)
    {
      goto LABEL_13;
    }

    v12 = a3;
    v38 = 0;
    std::vector<BOOL>::assign((a1 + 7), v10 + 1, &v38);
    v13 = a1[4];
    v14 = a1[5];
    if (v13 != v14)
    {
      v15 = a1[7];
      v16 = a1[4];
      do
      {
        v17 = *v16++;
        *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      }

      while (v16 != v14);
    }

    a1[5] = v13;
    a3 = v12;
LABEL_9:
    if (a1[8])
    {
      v18 = *v11;
      v19 = *v11 - 1;
      if (v19 >= 0 && (a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = a1[7];
        do
        {
          if ((*(v20 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19))
          {
            v28 = 8 * a3;
            v29 = a2;
            do
            {
              v30 = *v29 + v19;
              if (v30 > v18)
              {
                break;
              }

              *(v20 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
              if (a1[3] > v30)
              {
                v30 = a1[3];
              }

              a1[3] = v30;
              if (v30 == v18)
              {
                return;
              }

              ++v29;
              v28 -= 8;
            }

            while (v28);
          }
        }

        while (v19-- > 0);
      }

      return;
    }

LABEL_13:
    v21 = a1[1];
    v22 = a1[2];
    if (v21 != 1)
    {
      v23 = v22 / v21;
      v25 = (v22 ^ v21) < 0 && v22 % v21 != 0;
      v22 = (v23 - v25) * v21;
    }

    a1[3] = v22;
    return;
  }

  if ((v8 >> 3) >= 1 && (a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v31 = 0;
    v32 = (v8 >> 3) & 0x7FFFFFFF;
    v33 = a1[2];
    v34 = 8 * a3;
    do
    {
      v35 = v34;
      v36 = a2;
      do
      {
        v39 = *(*v7 + 8 * v31) + *v36;
        if (v39 > v33)
        {
          break;
        }

        std::vector<long long>::push_back[abi:ne200100](v7, &v39);
        v37 = v39;
        v33 = a1[2];
        if (a1[3] > v39)
        {
          v37 = a1[3];
        }

        a1[3] = v37;
        if (v37 == v33)
        {
          return;
        }

        ++v36;
        v35 -= 8;
      }

      while (v35);
      ++v31;
    }

    while (v31 != v32);
  }
}

void operations_research::sat::MaxBoundedSubsetSum::AddChoices(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a1[3] != a1[2])
  {
    v18[6] = v3;
    v18[7] = v4;
    v6 = a1 + 10;
    a1[11] = a1[10];
    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
      v8 = &a2[a3];
      do
      {
        v10 = *v7;
        v18[0] = v10;
        if (v10 && v10 <= a1[2])
        {
          std::vector<long long>::push_back[abi:ne200100](v6, v18);
          v11 = a1[1];
          v12 = v18[0];
          if (v11 >= 0)
          {
            v13 = a1[1];
          }

          else
          {
            v13 = -v11;
          }

          if (v18[0] < 0)
          {
            v12 = -v18[0];
          }

          if (v13 >= v12)
          {
            v9 = v12;
          }

          else
          {
            v9 = v13;
          }

          if (v13 > v12)
          {
            v12 = v13;
          }

          if (v9)
          {
            v14 = v12 % v9;
            if (v14)
            {
              v15 = v14 >> __clz(__rbit64(v14));
              v16 = v9;
              do
              {
                v17 = v16 >> __clz(__rbit64(v16));
                v16 = v17 - v15;
                if (v15 > v17)
                {
                  v16 = v15 - v17;
                }

                if (v15 >= v17)
                {
                  v15 = v17;
                }
              }

              while (v16);
              v9 = v15 << __clz(__rbit64(v14 | v9));
            }
          }

          else
          {
            v9 = v12;
          }

          a1[1] = v9;
        }

        ++v7;
      }

      while (v7 != v8);
      if (a1[10] != a1[11])
      {
        std::__sort<std::__less<long long,long long> &,long long *>();
        operations_research::sat::MaxBoundedSubsetSum::AddChoicesInternal(a1, a1[10], (a1[11] - a1[10]) >> 3);
      }
    }
  }
}

void operations_research::sat::MaxBoundedSubsetSum::AddMultiples(operations_research::sat::MaxBoundedSubsetSum *this, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = *(this + 2);
      if (v5 >= a2 && *(this + 3) != v5)
      {
        v6 = *(this + 1);
        if (v6 >= 0)
        {
          v7 = *(this + 1);
        }

        else
        {
          v7 = -v6;
        }

        if (a2 >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = -a2;
        }

        if (v7 >= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }

        if (v7 <= v8)
        {
          v7 = v8;
        }

        if (v9)
        {
          v10 = v7 % v9;
          if (v10)
          {
            v11 = v10 >> __clz(__rbit64(v10));
            v12 = v9;
            do
            {
              v13 = v12 >> __clz(__rbit64(v12));
              v12 = v13 - v11;
              if (v11 > v13)
              {
                v12 = v11 - v13;
              }

              if (v11 >= v13)
              {
                v11 = v13;
              }
            }

            while (v12);
            v9 = v11 << __clz(__rbit64(v10 | v9));
          }
        }

        else
        {
          v9 = v7;
        }

        *(this + 1) = v9;
        v15 = (v5 ^ a2) < 0 && v5 % a2 != 0;
        if (v5 / a2 - v15 >= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = v5 / a2 - v15;
        }

        if (v16 >= 11)
        {
          *(this + 5) = *(this + 4);
          *(this + 8) = 0;
          v17 = v5 / v9;
          v19 = (v9 ^ v5) < 0 && v5 % v9 != 0;
          v20 = (v17 - v19) * v9;
LABEL_43:
          *(this + 3) = v20;
          return;
        }

        v21 = *(this + 10);
        *(this + 11) = v21;
        if (v16 >= 1)
        {
          v22 = 2;
          v23 = 1;
          while (1)
          {
            v20 = v23 * a2;
            v25 = v20;
            if (v20 == *(this + 2))
            {
              goto LABEL_43;
            }

            std::vector<long long>::push_back[abi:ne200100](this + 80, &v25);
            v23 = v22++;
            if (v16 < v23)
            {
              v24 = *(this + 10);
              v21 = *(this + 11);
              goto LABEL_50;
            }
          }
        }

        v24 = v21;
LABEL_50:
        operations_research::sat::MaxBoundedSubsetSum::AddChoicesInternal(this, v24, v21 - v24);
      }
    }
  }
}

void operations_research::sat::BasicKnapsackSolver::Solve(operations_research::sat::BasicKnapsackSolver *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, operations_research::Domain *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (!v7)
  {
LABEL_15:
    *a6 = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *(a6 + 8) = 0;
    return;
  }

  v46 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v7 < 1)
  {
    v14 = 0;
    v13 = 0;
    v19 = a5;
    v20 = operations_research::Domain::Max(a5) + 1;
    if (v20 >= 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *a6 = 257;
    return;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v7 & 0x7FFFFFFF;
  do
  {
    while (1)
    {
      v16 = operations_research::Domain::Size((*a2 + v11));
      if (v14 <= v16)
      {
        v14 = v16;
      }

      v17 = *(*a3 + 8 * v12);
      v18 = (*a2 + v11);
      if (v17 >= 1)
      {
        break;
      }

      v13 += operations_research::Domain::Max(v18) * v17;
      ++v12;
      v11 += 24;
      if (v15 == v12)
      {
        goto LABEL_9;
      }
    }

    v13 += operations_research::Domain::Min(v18) * v17;
    ++v12;
    v11 += 24;
  }

  while (v15 != v12);
LABEL_9:
  v19 = a5;
  v20 = operations_research::Domain::Max(a5) - v13 + 1;
  if (v20 < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (operations_research::Domain::Max(v19) - v13 >= 1000001)
  {
    goto LABEL_15;
  }

  v21 = v14 >= v20 ? v20 : v14;
  if (v20 * v46 * v21 >= 100000001)
  {
    goto LABEL_15;
  }

  v23 = *a1;
  v22 = *(a1 + 1);
  if (v22 != *a1)
  {
    v24 = *(a1 + 1);
    do
    {
      v25 = *(v24 - 24);
      v24 -= 24;
      if (v25)
      {
        operator delete(*(v22 - 16));
      }

      v22 = v24;
    }

    while (v24 != v23);
  }

  v26 = *(a1 + 3);
  *(a1 + 1) = v23;
  *(a1 + 4) = v26;
  v48 = (a1 + 48);
  *(a1 + 7) = *(a1 + 6);
  if (v46 >= 1)
  {
    v27 = 0;
    v28 = 0;
    for (i = v46 & 0x7FFFFFFF; i; --i)
    {
      while (*(*a3 + v28) >= 1)
      {
        v30 = *a2;
        v31 = operations_research::Domain::Min((*a2 + v27));
        operations_research::Domain::Domain(&v51, -v31);
        operations_research::Domain::AdditionWith(&v53, (v30 + v27), &v51, v32);
        v33 = *(a1 + 1);
        if (v33 >= *(a1 + 2))
        {
          v37 = std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain>(a1, &v53);
          v38 = v53;
          *(a1 + 1) = v37;
          if (v38)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v33 = 0;
          *v33 = v53;
          *(v33 + 8) = v54;
          v53 = 0;
          *(a1 + 1) = v33 + 24;
        }

        if (v51)
        {
          operator delete(v52);
        }

        std::vector<long long>::push_back[abi:ne200100](a1 + 24, (*a3 + v28));
        std::vector<long long>::push_back[abi:ne200100](v48, (*a4 + v28));
        v27 += 24;
        v28 += 8;
        if (!--i)
        {
          goto LABEL_46;
        }
      }

      operations_research::Domain::Negation(&v51, (*a2 + v27));
      v34 = operations_research::Domain::Max((*a2 + v27));
      operations_research::Domain::Domain(v50, v34);
      operations_research::Domain::AdditionWith(&v53, &v51, v50, v35);
      v36 = *(a1 + 1);
      if (v36 >= *(a1 + 2))
      {
        v39 = std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain>(a1, &v53);
        v40 = v53;
        *(a1 + 1) = v39;
        if (v40)
        {
          operator delete(v54);
          if (v50[0])
          {
LABEL_32:
            operator delete(v50[1]);
            if ((v51 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_41:
            operator delete(v52);
            goto LABEL_42;
          }
        }

        else if (v50[0])
        {
          goto LABEL_32;
        }
      }

      else
      {
        *v36 = 0;
        *v36 = v53;
        *(v36 + 8) = v54;
        v53 = 0;
        *(a1 + 1) = v36 + 24;
        if (v50[0])
        {
          goto LABEL_32;
        }
      }

      if (v51)
      {
        goto LABEL_41;
      }

LABEL_42:
      v53 = -*(*a3 + v28);
      std::vector<long long>::push_back[abi:ne200100](a1 + 3, &v53);
      v53 = -*(*a4 + v28);
      std::vector<long long>::push_back[abi:ne200100](v48, &v53);
      v27 += 24;
      v28 += 8;
    }
  }

LABEL_46:
  operations_research::Domain::Domain(&v51, -v13);
  operations_research::Domain::AdditionWith(&v53, a5, &v51, v41);
  operations_research::sat::BasicKnapsackSolver::InternalSolve(a1, v20, a6);
  if ((v53 & 1) == 0)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v52);
    if (*a6 != 1)
    {
      return;
    }

    goto LABEL_52;
  }

  operator delete(v54);
  if (v51)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (*a6 != 1)
  {
    return;
  }

LABEL_52:
  if (v46 >= 1 && (*(a6 + 1) & 1) == 0)
  {
    v42 = 0;
    v43 = 0;
    v44 = v46 & 0x7FFFFFFF;
    do
    {
      while (1)
      {
        v45 = *a2;
        if (*(*a3 + 8 * v43) < 1)
        {
          break;
        }

        *(*(a6 + 8) + 8 * v43++) += operations_research::Domain::Min((v45 + v42));
        v42 += 24;
        if (v44 == v43)
        {
          return;
        }
      }

      *(*(a6 + 8) + 8 * v43) = operations_research::Domain::Max((v45 + v42)) - *(*(a6 + 8) + 8 * v43);
      ++v43;
      v42 += 24;
    }

    while (v44 != v43);
  }
}

void sub_23CD1FA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *__p)
{
  if (a20)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::BasicKnapsackSolver::InternalSolve(operations_research::sat::BasicKnapsackSolver *this@<X0>, unint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v7 = *this;
  v6 = *(this + 1);
  __p = 0;
  v20 = 0;
  v21 = 0;
  if (a3)
  {
    if (!(a3 >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v8 = -1431655765 * ((v6 - v7) >> 3);
  std::vector<std::vector<operations_research::sat::BasicKnapsackSolver::State>>::assign(this + 9, v8, &__p);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  v9 = *this;
  v10 = **this;
  if (v10 > 1)
  {
    v11 = (v9 + 8);
    v12 = *(v9 + 8);
    if (v10)
    {
      v11 = *(v9 + 8);
    }

    v13 = *v11;
    if ((v10 & 1) == 0)
    {
      v12 = (v9 + 8);
    }

    if ((v10 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v14 = &v12[2 * (v10 >> 1)];
      v15 = *(this + 3);
      do
      {
        v16 = *v15 * v13;
        if (v16 < 0)
        {
          operations_research::sat::BasicKnapsackSolver::InternalSolve(v16, &__p);
        }

        if (v16 >= 0)
        {
          break;
        }

        v17 = (**(this + 9) + 16 * v16);
        *v17 = **(this + 6) * v13;
        v17[1] = v13;
        if (v13 == v12[1])
        {
          v12 += 2;
          if (v12 != v14)
          {
            v13 = *v12;
          }
        }

        else
        {
          ++v13;
        }
      }

      while (v12 != v14);
    }
  }

  if (v8 < 2)
  {
    *(a4 + 8) = 0;
    v18 = (a4 + 1);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    v18 = (a4 + 1);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
  }

  *a4 = 1;
  *v18 = 1;
}

void sub_23CD1FF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 16) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<operations_research::sat::BasicKnapsackSolver::State>>::assign(char ***a1, unint64_t a2, char **a3)
{
  v6 = a1[2];
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) < a2)
  {
    if (v7)
    {
      v8 = a1[1];
      v9 = *a1;
      if (v8 != v7)
      {
        v10 = a1[1];
        do
        {
          v12 = *(v10 - 3);
          v10 -= 3;
          v11 = v12;
          if (v12)
          {
            *(v8 - 2) = v11;
            operator delete(v11);
          }

          v8 = v10;
        }

        while (v10 != v7);
        v9 = *a1;
      }

      a1[1] = v7;
      operator delete(v9);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v26 = 2 * v25;
      if (2 * v25 <= a2)
      {
        v26 = a2;
      }

      if (v25 >= 0x555555555555555)
      {
        v27 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v27 = v26;
      }

      if (v27 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v7;
  v14 = 0xAAAAAAAAAAAAAAABLL * v13;
  if (0xAAAAAAAAAAAAAAABLL * v13 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * v13;
  }

  for (; v15; --v15)
  {
    if (v7 != a3)
    {
      std::vector<operations_research::sat::BasicKnapsackSolver::State>::__assign_with_size[abi:ne200100]<operations_research::sat::BasicKnapsackSolver::State*,operations_research::sat::BasicKnapsackSolver::State*>(v7, *a3, a3[1], (a3[1] - *a3) >> 4);
    }

    v7 += 3;
  }

  if (a2 <= v14)
  {
    v20 = a1[1];
    v21 = &(*a1)[3 * a2];
    if (v20 != v21)
    {
      v22 = a1[1];
      do
      {
        v24 = *(v22 - 3);
        v22 -= 3;
        v23 = v24;
        if (v24)
        {
          *(v20 - 2) = v23;
          operator delete(v23);
        }

        v20 = v22;
      }

      while (v22 != v21);
    }

    a1[1] = v21;
  }

  else
  {
    v16 = a1[1];
    v17 = 3 * (a2 - v14);
    if (v17 * 8)
    {
      v18 = &v16[v17];
      do
      {
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        v19 = a3[1];
        if (v19 != *a3)
        {
          if (((v19 - *a3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v16 += 3;
        v17 -= 3;
      }

      while (v17 * 8);
      v16 = v18;
    }

    a1[1] = v16;
  }
}

void sub_23CD20274(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_23CD20298(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void operations_research::sat::FullyCompressTuples(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void **a4@<X8>)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v4 = __p;
  if (__p)
  {
    v5 = v10;
    v6 = __p;
    if (v10 != __p)
    {
      v7 = v10;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 3;
        if (v8)
        {
          operator delete(*(v5 - 2));
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = __p;
    }

    v10 = v4;
    operator delete(v6);
  }
}

void sub_23CD20368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>::~vector[abi:ne200100](v3);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t *a5, void **a6)
{
  v151 = 0;
  v152 = 0;
  v153 = 0;
  if (!a4)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/util.cc", 795);
    goto LABEL_196;
  }

  v6 = a3;
  v7 = a3[1];
  if (*a3 == v7)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/util.cc", 796);
LABEL_196:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v154);
  }

  v143 = *(a1 + v7 - *a3 - 8);
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((24 * a4) >> 3));
  if (24 * a4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,false>(a3, &a3[3 * a4], &v154, v10, 1);
  v142 = a6;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = &v6[3 * v12];
    v15 = *(v14[1] - 1);
    if (v11 >= v153)
    {
      v17 = v151;
      v18 = (v11 - v151) >> 5;
      v19 = v18 + 1;
      if ((v18 + 1) >> 59)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v20 = v153 - v151;
      if ((v153 - v151) >> 4 > v19)
      {
        v19 = v20 >> 4;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFE0)
      {
        v21 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (!(v21 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = 32 * v18;
      *v22 = 2;
      *(v22 + 8) = v15;
      *(v22 + 24) = v13;
      if (v17 != v11)
      {
        v23 = v17;
        v24 = 0;
        do
        {
          *v24 = *v23;
          *(v24 + 8) = *(v23 + 1);
          *v23 = 0;
          *(v24 + 24) = *(v23 + 6);
          v23 += 4;
          v24 += 32;
        }

        while (v23 != v11);
        v25 = v17;
        do
        {
          if (*v25)
          {
            operator delete(v25[1]);
          }

          v25 += 4;
        }

        while (v25 != v11);
      }

      v16 = (v22 + 32);
      v151 = 0;
      v153 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v11 = 2;
      v11[1] = v15;
      v16 = v11 + 4;
      *(v11 + 6) = v13;
    }

    v152 = v16;
    v14[1] = v14[1] - 8;
    v26 = ++v13;
    v146 = v16;
    if (a4 > v13)
    {
      v27 = (v16 - 4);
      v145 = (v16 - 3);
      while (1)
      {
        v28 = v6;
        v29 = &v6[3 * v26];
        v30 = v29[1];
        v32 = v30 - 1;
        v31 = *(v30 - 1);
        v154 = v31;
        v29[1] = v30 - 1;
        v33 = *v29;
        v34 = (v30 - 1) - *v29;
        if (v34 != v14[1] - *v14 || memcmp(*v29, *v14, v32 - *v29))
        {
          break;
        }

        v35 = *v27;
        if (*v27)
        {
          v36 = *(v146 - 3);
          v6 = v28;
          v37 = v35 >> 1;
          if ((v35 >> 1) == *(v146 - 2))
          {
LABEL_38:
            absl::lts_20240722::inlined_vector_internal::Storage<long long,2ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v27, &v154);
          }
        }

        else
        {
          v36 = v145;
          v6 = v28;
          v37 = v35 >> 1;
          if (v35 >> 1 == 2)
          {
            goto LABEL_38;
          }
        }

        *&v36[8 * v37] = v31;
        *v27 = v35 + 2;
        v26 = ++v13;
        if (a4 <= v13)
        {
          goto LABEL_53;
        }
      }

      v38 = v29[2];
      if (v32 >= v38)
      {
        v39 = (v34 >> 3) + 1;
        if (v39 >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v40 = v38 - v33;
        if (v40 >> 2 > v39)
        {
          v39 = v40 >> 2;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          if (!(v41 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v42 = (8 * (v34 >> 3));
        *v42 = v31;
        v30 = v42 + 1;
        memcpy(0, v33, v34);
        *v29 = 0;
        v29[1] = v30;
        v29[2] = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v32 = v31;
      }

      v29[1] = v30;
      v6 = v28;
    }

LABEL_53:
    v43 = *(v146 - 4);
    v44 = v146 - 3;
    v45 = (v146 - 3);
    if (v43)
    {
      v45 = *v44;
    }

    if ((v43 & 0x3FFFFFFFFFFFFFFELL) != 0)
    {
      v46 = 8 * (v43 >> 1);
      while (*v45 != 0x8000000000000000)
      {
        v45 += 8;
        v46 -= 8;
        if (!v46)
        {
          goto LABEL_63;
        }
      }

      if (v43)
      {
        operator delete(*v44);
      }

      *(v146 - 4) = 0;
    }

LABEL_63:
    std::__sort<std::__less<long long,long long> &,long long *>();
    v47 = *(v146 - 4);
    v48 = (v146 - 3);
    if (v47)
    {
      v48 = *v44;
    }

    v49 = v47 >> 1;
    v50 = &v48[8 * (v47 >> 1)];
    if ((v47 & 0x3FFFFFFFFFFFFFFELL) != 0)
    {
      v48 += 8;
      v51 = 8 * v49 - 8;
      while (v51)
      {
        v52 = *(v48 - 1);
        v53 = *v48;
        v48 += 8;
        v51 -= 8;
        if (v52 == v53)
        {
          v48 -= 16;
          goto LABEL_71;
        }
      }
    }

    if (v48 != v50)
    {
LABEL_71:
      v54 = v48 + 16;
      if (v48 + 16 != v50)
      {
        v55 = *v48;
        do
        {
          v56 = v55;
          v55 = *v54;
          if (v56 != *v54)
          {
            *(v48 + 1) = v55;
            v48 += 8;
          }

          v54 += 8;
        }

        while (v54 != v50);
      }

      v50 = v48 + 8;
    }

    if (v47)
    {
      v44 = *v44;
    }

    v57 = &v44[v49];
    if (v50 != v57)
    {
      v58 = v57 - v50;
      v59 = ((v50 - v44) >> 3) + ((v57 - v50) >> 3);
      memmove(v50, &v44[v59], 8 * (v49 - v59));
      *(v146 - 4) = *(v146 - 4) - (v58 >> 2);
    }

    v11 = v152;
    v60 = *(v152 - 4);
    if (v143 == v60 >> 1)
    {
      if (v60)
      {
        operator delete(*(v152 - 3));
      }

      *(v152 - 4) = 0;
    }

    v12 = v13;
  }

  while (a4 > v13);
  v61 = v151;
  if (v11 - v151 == 32)
  {
    v154 = 0;
    v155 = 0uLL;
    v62 = v142;
    v64 = v142[1];
    v63 = v142[2];
    if (v64 >= v63)
    {
      v107 = *v142;
      v108 = v64 - *v142;
      v109 = 0xAAAAAAAAAAAAAAABLL * (v108 >> 3) + 1;
      if (v109 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v110 = 0xAAAAAAAAAAAAAAABLL * ((v63 - v107) >> 3);
      if (2 * v110 > v109)
      {
        v109 = 2 * v110;
      }

      if (v110 >= 0x555555555555555)
      {
        v111 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v111 = v109;
      }

      if (v111)
      {
        if (v111 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v112 = v6;
      v113 = (8 * (v108 >> 3));
      *v113 = 0;
      v113[1] = 0;
      v113[2] = 0;
      v65 = v113 + 3;
      v114 = v113 - v108;
      memcpy(v114, v107, v108);
      *v142 = v114;
      v142[1] = v65;
      v142[2] = 0;
      if (v107)
      {
        operator delete(v107);
      }

      v62 = v142;
      v6 = v112;
    }

    else
    {
      *v64 = 0;
      v64[1] = 0;
      v65 = v64 + 3;
      v64[2] = 0;
    }

    v62[1] = v65;
    v115 = &v6[3 * v61[6]];
    v116 = *v115;
    v117 = v115[1];
    if (*v115 == v117)
    {
LABEL_169:
      v123 = *(v65 - 2);
      if (v123 >= *(v65 - 1))
      {
        v125 = std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::__emplace_back_slow_path<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>> const&>(v65 - 3, v61);
      }

      else
      {
        *v123 = 0;
        v124 = *v61;
        if (*v61 >= 2uLL)
        {
          if (v124)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<long long,2ul,std::allocator<long long>>::InitFrom(v123, v61);
          }

          else
          {
            *v123 = v124;
            *(v123 + 8) = *(v61 + 2);
          }
        }

        v125 = (v123 + 24);
        *(v65 - 2) = v123 + 24;
      }

      v126 = a5;
      *(v65 - 2) = v125;
      v127 = -1431655765 * ((v126[1] - *v126) >> 3) - 1;
      if ((v127 & 0x80000000) == 0)
      {
        v128 = v127 + 1;
        v129 = 8 * (v127 + 2 * v127);
        do
        {
          v132 = v62[1];
          v133 = *v126;
          v134 = *(v132 - 2);
          if (v134 >= *(v132 - 1))
          {
            v130 = std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::__emplace_back_slow_path<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>> const&>(v132 - 3, (v133 + v129));
          }

          else
          {
            *v134 = 0;
            v135 = *(v133 + v129);
            if (v135 >= 2)
            {
              if (v135)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<long long,2ul,std::allocator<long long>>::InitFrom(v134, (v133 + v129));
              }

              else
              {
                *v134 = v135;
                *(v134 + 8) = *(v133 + v129 + 8);
              }
            }

            v130 = (v134 + 24);
            *(v132 - 2) = (v134 + 24);
          }

          v126 = a5;
          *(v132 - 2) = v130;
          v129 -= 24;
          v131 = v128-- <= 1;
          v62 = v142;
        }

        while (!v131);
      }

      goto LABEL_186;
    }

    while (1)
    {
      v118 = *v116;
      v119 = v142[1];
      if (*v116 == 0x8000000000000000)
      {
        v154 = 0;
        v120 = *(v119 - 2);
        if (v120 >= *(v119 - 1))
        {
          goto LABEL_166;
        }
      }

      else
      {
        v154 = 2;
        *&v155 = v118;
        v120 = *(v119 - 2);
        if (v120 >= *(v119 - 1))
        {
LABEL_166:
          v121 = std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::__emplace_back_slow_path<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>((v119 - 3), &v154);
          v122 = v154;
          *(v119 - 2) = v121;
          if (v122)
          {
            operator delete(v155);
          }

          goto LABEL_161;
        }
      }

      *v120 = 0;
      *v120 = v154;
      *(v120 + 8) = v155;
      *(v119 - 2) = v120 + 24;
LABEL_161:
      if (++v116 == v117)
      {
        v62 = v142;
        v65 = v142[1];
        goto LABEL_169;
      }
    }
  }

  v66 = 126 - 2 * __clz((v11 - v151) >> 5);
  if (v11 == v151)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  __p = 0;
  v149 = 0;
  v150 = 0;
  v68 = a5;
  if (v11 == v151)
  {
    goto LABEL_186;
  }

  v69 = 0;
  v70 = 0;
  v71 = a5[1];
  do
  {
    v72 = &v61[8 * v69];
    if (v71 >= v68[2])
    {
      v68[1] = std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::__emplace_back_slow_path<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>> const&>(v68, v72);
      v75 = __p;
      v74 = v149;
      if (v149 == __p)
      {
        goto LABEL_105;
      }

LABEL_101:
      v76 = v74;
      do
      {
        v78 = *(v76 - 3);
        v76 -= 24;
        v77 = v78;
        if (v78)
        {
          *(v74 - 2) = v77;
          operator delete(v77);
        }

        v74 = v76;
      }

      while (v76 != v75);
      goto LABEL_105;
    }

    *v71 = 0;
    v73 = *v72;
    if (*v72 >= 2uLL)
    {
      if (v73)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<long long,2ul,std::allocator<long long>>::InitFrom(v71, v72);
      }

      else
      {
        *v71 = v73;
        *(v71 + 8) = *(v72 + 2);
      }
    }

    v68[1] = v71 + 24;
    v68[1] = v71 + 24;
    v75 = __p;
    v74 = v149;
    if (v149 != __p)
    {
      goto LABEL_101;
    }

LABEL_105:
    v149 = v75;
    v79 = v70;
    v61 = v151;
    v80 = v152;
    while (v79 < (v80 - v61) >> 5)
    {
      v81 = &v61[8 * v69];
      v82 = &v61[8 * v79];
      v83 = *v81;
      v84 = (4 * *v81) & 0xFFFFFFFFFFFFFFF8;
      if (v84 != 8 * (*v82 >> 1))
      {
        break;
      }

      v85 = (*v82 & 1) != 0 ? *(v82 + 1) : (v82 + 2);
      v88 = *(v81 + 1);
      v86 = v81 + 2;
      v87 = v88;
      v89 = (v83 & 1) != 0 ? v87 : v86;
      if (memcmp(v89, v85, v84))
      {
        break;
      }

      v90 = &v6[3 * v82[6]];
      if (v75 >= v150)
      {
        v92 = 0xAAAAAAAAAAAAAAABLL * ((v75 - __p) >> 3);
        v93 = v92 + 1;
        if (v92 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v150 - __p) >> 3) > v93)
        {
          v93 = 0x5555555555555556 * ((v150 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v150 - __p) >> 3) >= 0x555555555555555)
        {
          v94 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v94 = v93;
        }

        p_p = &__p;
        if (v94)
        {
          if (v94 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v95 = 24 * v92;
        v154 = 0;
        *&v155 = v95;
        *(&v155 + 1) = 24 * v92;
        v156 = 0;
        *(v95 + 8) = 0;
        *(v95 + 16) = 0;
        *v95 = 0;
        v96 = v90[1] - *v90;
        if (v96)
        {
          if ((v96 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v75 = (v95 + 24);
        v97 = __p;
        v98 = (v95 - (v149 - __p));
        memcpy(v98, __p, v149 - __p);
        __p = v98;
        v149 = (v95 + 24);
        v150 = 0;
        if (v97)
        {
          operator delete(v97);
        }

        v68 = a5;
      }

      else
      {
        *v75 = 0;
        *(v75 + 1) = 0;
        *(v75 + 2) = 0;
        v91 = v90[1];
        if (v91 != *v90)
        {
          if (((v91 - *v90) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v75 += 24;
        v61 = v151;
        v80 = v152;
      }

      v149 = v75;
      v79 = ++v70;
    }

    v99 = v68[1];
    v100 = *(v99 - 24);
    v71 = v99 - 24;
    if (v100)
    {
      operator delete(*(v68[1] - 16));
    }

    v68[1] = v71;
    v69 = v70;
  }

  while (v70 < ((v80 - v61) >> 5));
  v101 = __p;
  if (__p)
  {
    v102 = v149;
    v103 = __p;
    if (v149 != __p)
    {
      v104 = v149;
      do
      {
        v106 = *(v104 - 3);
        v104 -= 24;
        v105 = v106;
        if (v106)
        {
          *(v102 - 2) = v105;
          operator delete(v105);
        }

        v102 = v104;
      }

      while (v104 != v101);
      v103 = __p;
    }

    v149 = v101;
    operator delete(v103);
  }

LABEL_186:
  v136 = v151;
  if (v151)
  {
    v137 = v152;
    if (v152 != v151)
    {
      v138 = v152;
      do
      {
        v139 = *(v138 - 32);
        v138 -= 4;
        if (v139)
        {
          operator delete(*(v137 - 3));
        }

        v137 = v138;
      }

      while (v138 != v136);
    }

    operator delete(v136);
  }
}

void sub_23CD21018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (*v19)
  {
    operator delete(*(v19 + 8));
  }

  *(v20 - 16) = v19;
  absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::AtMostOneDecomposition(uint64_t *__return_ptr a1@<X8>, std::vector<int> *this@<X2>, void *a3@<X0>, __int128 *a4@<X1>)
{
  v118 = *a4;
  v119 = *(a4 + 2);
  v120 = this;
  v121 = 0;
  *v123 = 0u;
  v124 = 0u;
  *v126 = 0u;
  *v127 = 0u;
  v128 = 0u;
  *__p = 0u;
  v130 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  if (0xAAAAAAAB00000000 * ((a3[1] - *a3) >> 3))
  {
    std::vector<int>::__append(v126, v5);
    this = v120;
  }

  v6 = this->__end_ - this->__begin_;
  if (v5 <= v6)
  {
    if (v5 < v6)
    {
      this->__end_ = &this->__begin_[v5];
    }
  }

  else
  {
    std::vector<int>::__append(this, v5 - v6);
  }

  v114 = a1;
  if (v5 < 1)
  {
    goto LABEL_14;
  }

  v7 = v126[0];
  v8 = v5 & 0x7FFFFFFF;
  if (v8 > 7)
  {
    v9 = v8 - (v5 & 7);
    v10 = xmmword_23CE38660;
    v11 = (v126[0] + 16);
    v12.i64[0] = 0x400000004;
    v12.i64[1] = 0x400000004;
    v13.i64[0] = 0x800000008;
    v13.i64[1] = 0x800000008;
    v14 = v9;
    do
    {
      v11[-1] = v10;
      *v11 = vaddq_s32(v10, v12);
      v10 = vaddq_s32(v10, v13);
      v11 += 2;
      v14 -= 8;
    }

    while (v14);
    if ((v5 & 7) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
  }

  do
  {
    v7[v9] = v9;
    ++v9;
  }

  while (v8 != v9);
LABEL_14:
  v15 = 0;
  v16 = 0;
  do
  {
    v115 = v15;
    v122 = v16;
    v17 = (-1431655765 * ((a3[1] - *a3) >> 3));
    LOBYTE(v132[0]) = 0;
    std::vector<BOOL>::assign(&v127[1], v17, v132);
    LOBYTE(v132[0]) = 0;
    std::vector<BOOL>::assign(__p, v17, v132);
    v19 = v126[0];
    v18 = v126[1];
    if (v126[0] != v126[1])
    {
      v20 = 0;
      v116 = v126[1];
      do
      {
        while (1)
        {
          v21 = *v19;
          v22 = *v19;
          v23 = *v19 >> 6;
          v24 = *(v127[1] + v23);
          if (((1 << *v19) & v24) == 0)
          {
            break;
          }

          if (++v19 == v18)
          {
            goto LABEL_89;
          }
        }

        *(v127[1] + v23) = (1 << v21) | v24;
        v120->__begin_[v20] = v21;
        v25 = v123[1];
        v125 = v123[1];
        v26 = *a3 + 24 * v22;
        v27 = *v26;
        v28 = *(v26 + 8);
        if (*v26 != v28)
        {
          while (1)
          {
            v33 = *v27;
            if (((*(v127[1] + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              if (v25 < *(&v124 + 1))
              {
                *v25 = v33;
                v25 += 4;
              }

              else
              {
                v34 = v123[1];
                v35 = v25 - v123[1];
                v36 = (v25 - v123[1]) >> 2;
                v37 = v36 + 1;
                if ((v36 + 1) >> 62)
                {
                  goto LABEL_163;
                }

                v38 = *(&v124 + 1) - v123[1];
                if ((*(&v124 + 1) - v123[1]) >> 1 > v37)
                {
                  v37 = v38 >> 1;
                }

                if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v39 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v39 = v37;
                }

                if (v39)
                {
                  if (!(v39 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_164;
                }

                v40 = v36;
                v41 = (4 * v36);
                v42 = &v41[-v40];
                *v41 = v33;
                v25 = (v41 + 1);
                memcpy(v42, v123[1], v35);
                v123[1] = v42;
                *(&v124 + 1) = 0;
                if (v34)
                {
                  operator delete(v34);
                }
              }

              v125 = v25;
            }

            if (++v27 == v28)
            {
              v43 = v123[1];
              for (i = v20 + 1; ; ++i)
              {
                if (v43 == v25)
                {
                  goto LABEL_22;
                }

                v44 = *v43;
                v45 = v43;
                do
                {
                  v47 = *v45;
                  v45 += 4;
                  v46 = v47;
                  if (*(v126[0] + v47) < *(v126[0] + v44))
                  {
                    v44 = v46;
                  }
                }

                while (v45 != v25);
                v48 = v44;
                v49 = v127[1];
                *(v127[1] + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
                v120->__begin_[i] = v44;
                v50 = *a3 + 24 * v44;
                v51 = *v50;
                v52 = *(v50 + 8);
                if (v51 != v52)
                {
                  v53 = __p[0];
                  do
                  {
                    v54 = *v51++;
                    *&v53[(v54 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v54;
                  }

                  while (v51 != v52);
                }

                if (v43 == v25)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = 0;
                  v56 = __p[0];
                  v57 = v43;
                  do
                  {
                    v58 = *v57;
                    if (((1 << v58) & v49[v58 >> 6]) == 0 && (v56[v58 >> 6] & (1 << v58)) != 0)
                    {
                      *&v43[4 * v55++] = v58;
                    }

                    v57 += 4;
                  }

                  while (v57 != v25);
                }

                v59 = v55;
                v60 = (v25 - v43) >> 2;
                v61 = v59 - v60;
                if (v59 <= v60)
                {
                  if (v59 < v60)
                  {
                    v125 = &v43[4 * v59];
                  }
                }

                else
                {
                  if (v61 > (*(&v124 + 1) - v25) >> 2)
                  {
                    if ((v59 & 0x80000000) == 0)
                    {
                      v62 = *(&v124 + 1) - v43;
                      if (v62 >> 1 > v59)
                      {
                        v59 = v62 >> 1;
                      }

                      if (v62 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v63 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v63 = v59;
                      }

                      if (!(v63 >> 62))
                      {
                        operator new();
                      }

LABEL_164:
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

LABEL_163:
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if ((v61 & 0x3FFFFFFFFFFFFFFFLL) != 0)
                  {
                    bzero(v25, 4 * v61);
                    v25 += 4 * v61;
                  }

                  v125 = v25;
                }

                v64 = *a3 + 24 * v48;
                v65 = *v64;
                v66 = *(v64 + 8);
                if (v65 != v66)
                {
                  v67 = __p[0];
                  do
                  {
                    v68 = *v65++;
                    *&v67[(v68 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v68);
                  }

                  while (v65 != v66);
                }

                v43 = v123[1];
                v25 = v125;
              }
            }
          }
        }

        i = v20 + 1;
LABEL_22:
        v30 = &v120->__begin_[v20];
        v31 = i - v20;
        if (v122 >= v123[0])
        {
          v69 = v121;
          v70 = (v122 - v121) >> 4;
          v71 = v70 + 1;
          if ((v70 + 1) >> 60)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v72 = v123[0] - v121;
          if ((v123[0] - v121) >> 3 > v71)
          {
            v71 = v72 >> 3;
          }

          if (v72 >= 0x7FFFFFFFFFFFFFF0)
          {
            v73 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v71;
          }

          if (v73)
          {
            if (!(v73 >> 60))
            {
              operator new();
            }

            goto LABEL_164;
          }

          v74 = (v122 - v121) >> 4;
          v75 = (16 * v70);
          *v75 = v30;
          v75[1] = v31;
          v32 = 16 * v70 + 16;
          v76 = 16 * v70 - 16 * v74;
          memcpy(&v75[-2 * v74], v121, v122 - v121);
          v121 = v76;
          v123[0] = 0;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v122 = v30;
          *(v122 + 1) = v31;
          v32 = (v122 + 16);
        }

        v18 = v116;
        v122 = v32;
        ++v19;
        v20 = i;
      }

      while (v19 != v116);
    }

LABEL_89:
    if (v122 - v121 == 16)
    {
      v113 = 16;
      *v114 = 0;
      v114[1] = 0;
      v114[2] = 0;
      if (v122 != v121)
      {
        goto LABEL_150;
      }

      goto LABEL_152;
    }

    v132[0] = 0x3FE0000000000000;
    v131 = 0;
    if (*(&v118 + 1) == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v77 = 0.5;
      goto LABEL_96;
    }

    if ((*(&v118 + 1))(v118, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, v132, &v131))
    {
      if ((v131 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v77 = *v132;
LABEL_96:
      while (1)
      {
        v78 = v119(v118);
        v79 = vcvtd_n_s64_f64(v77, 0x20uLL);
        if (v78 != v79)
        {
          break;
        }

        v77 = (v77 + v79 * -2.32830644e-10) * 4294967300.0;
        if (v77 == 0.0)
        {
          goto LABEL_109;
        }
      }

      if (v78 >= v79)
      {
LABEL_109:
        v85 = v121;
        v86 = (v122 - v121) >> 4;
        if (v86 >= 2 && v122 - 16 > v121)
        {
          do
          {
            if (v86 != 1)
            {
              if (v86)
              {
                v106 = __clz(v86);
                v107 = 63;
                if (((v86 << v106) & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v107 = 64;
                }

                v108 = v107 - v106;
                v109 = v108 >> 6;
                if ((v108 & 0x3F) != 0)
                {
                  ++v109;
                }

                if (v109 <= v108)
                {
                  v110 = 0xFFFFFFFFFFFFFFFFLL >> -(v108 / v109);
                }

                else
                {
                  v110 = 0;
                }

                do
                {
                  v111 = v119(v118) & v110;
                }

                while (v111 >= v86);
              }

              else
              {
                v111 = v119(v118);
              }

              if (v111)
              {
                v112 = *v85;
                *v85 = *&v85[16 * v111];
                *&v85[16 * v111] = v112;
              }
            }

            v85 += 16;
            --v86;
          }

          while (v85 < v122 - 16);
        }

        goto LABEL_111;
      }
    }

    v80 = v122 - 16;
    if (v121 != v122 && v80 > v121)
    {
      v82 = v121 + 16;
      do
      {
        v83 = *(v82 - 1);
        *(v82 - 1) = *v80;
        *v80 = v83;
        v80 -= 16;
        v84 = v82 >= v80;
        v82 += 16;
      }

      while (!v84);
    }

LABEL_111:
    v16 = v121;
    if (v121 != v122)
    {
      v87 = 0;
      v88 = v126[0];
      for (j = v121; j != v122; j += 16)
      {
        v91 = *(j + 1);
        if ((v91 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v92 = *j;
          v93 = (v91 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
          v95 = v93 > 0xE && v87 + v91 - 1 >= v87 && ((v91 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFF00000000) == 0;
          if (v95 && (&v88[v87] - v92) >= 0x20)
          {
            v100 = v93 + 1;
            v101 = (v93 + 1) & 0x1FFFFFFF8;
            v90 = (v87 + v101);
            v96 = &v92[v101];
            v102 = (v92 + 4);
            v103 = v101;
            do
            {
              v104 = *v102;
              v105 = &v88[v87];
              *v105 = *(v102 - 1);
              v105[1] = v104;
              v102 += 2;
              LODWORD(v87) = v87 + 8;
              v103 -= 8;
            }

            while (v103);
            if (v100 == v101)
            {
              goto LABEL_114;
            }
          }

          else
          {
            LODWORD(v90) = v87;
            v96 = *j;
          }

          v97 = &v92[v91];
          v98 = v90;
          do
          {
            v99 = *v96++;
            v90 = (v98 + 1);
            v88[v98++] = v99;
          }

          while (v96 != v97);
        }

        else
        {
          v90 = v87;
        }

LABEL_114:
        v87 = v90;
      }
    }

    v15 = v115 + 1;
  }

  while (v115 != 9);
  v113 = v122 - v121;
  *v114 = 0;
  v114[1] = 0;
  v114[2] = 0;
  if (v122 != v121)
  {
LABEL_150:
    if ((v113 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

LABEL_152:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v127[1])
  {
    operator delete(v127[1]);
  }

  if (v126[0])
  {
    v126[1] = v126[0];
    operator delete(v126[0]);
  }

  if (v123[1])
  {
    operator delete(v123[1]);
  }

  if (v121)
  {
    operator delete(v121);
  }
}