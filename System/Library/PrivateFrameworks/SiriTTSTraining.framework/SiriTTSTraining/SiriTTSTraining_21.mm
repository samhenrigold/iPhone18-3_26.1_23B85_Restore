void sub_190D28(_Unwind_Exception *a1)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

char *std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__emplace_back_slow_path<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>> const&>(a1, a2);
  }

  else
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::__tuple_impl(*(a1 + 8), a2);
    result = (v3 + 96);
    *(a1 + 8) = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void vote_f0_external(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  memset(v29, 0, 24);
  v5 = *a1;
  do
  {
    v27 = 0uLL;
    v28 = 0;
    v25 = 0uLL;
    v26 = 0;
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v16 = &v27;
    v17 = &v25;
    v18 = v23;
    v19 = &v20;
    std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,0ul,1ul,2ul,3ul>(&v16, (v5 + 96 * v4));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = v27;
    if (*(&v27 + 1) != v27)
    {
      v7 = 0;
      do
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        *&v10 = *(v6 + 4 * v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        *&v10 = *(v25 + 4 * v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        *&v10 = *(v23[0] + v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        *&v10 = *(v20 + v7);
        std::vector<double>::push_back[abi:ne200100](&__p, &v10);
        std::vector<std::vector<double>>::push_back[abi:ne200100](&v16, &__p);
        if (__p)
        {
          v14 = __p;
          operator delete(__p);
        }

        ++v7;
        v6 = v27;
      }

      while (v7 < (*(&v27 + 1) - v27) >> 2);
    }

    std::vector<std::vector<std::vector<double>>>::push_back[abi:ne200100](v29, &v16);
    __p = &v16;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }

    if (v25)
    {
      *(&v25 + 1) = v25;
      operator delete(v25);
    }

    if (v27)
    {
      *(&v27 + 1) = v27;
      operator delete(v27);
    }

    ++v4;
    v5 = *a1;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) > v4);
  std::vector<double>::vector[abi:ne200100](&v16, 0xAAAAAAAAAAAAAAABLL * (v29[0][1] - *v29[0]));
  std::vector<double>::vector[abi:ne200100](&v27, 0xAAAAAAAAAAAAAAABLL * (v29[0][1] - *v29[0]));
  std::vector<double>::vector[abi:ne200100](&v25, 0xAAAAAAAAAAAAAAABLL * (v29[0][1] - *v29[0]));
  vote_f0_files(v29, &v16, &v27, &v25);
  DSP::smooth_voiced_pitch_contour(&v27, a2, v23);
  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  v27 = *v23;
  v28 = v24;
  DSP::smooth_voiced_pitch_contour(&v25, a2, v23);
  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  v25 = *v23;
  v26 = v24;
  v23[1] = 0;
  v24 = 0;
  v23[0] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(v23, v16, v17, (v17 - v16) >> 3);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v20, v27, *(&v27 + 1), (*(&v27 + 1) - v27) >> 3);
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&__p, v25, *(&v25 + 1), (*(&v25 + 1) - v25) >> 3);
  *&v10 = 0.0;
  v11 = 0;
  v12 = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a3, v23, &v20, &__p, &v10);
  if (*&v10 != 0.0)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v16 = v29;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1911E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  v32 = *(v30 - 144);
  if (v32)
  {
    *(v30 - 136) = v32;
    operator delete(v32);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  a18 = (v30 - 120);
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void AutocF0::~AutocF0(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  v2 = this[13];
  if (v2)
  {
    this[14] = v2;
    operator delete(v2);
  }

  v3 = this[10];
  if (v3)
  {
    this[11] = v3;
    operator delete(v3);
  }

  v4 = this[7];
  if (v4)
  {
    this[8] = v4;
    operator delete(v4);
  }

  v5 = this[4];
  if (v5)
  {
    this[5] = v5;
    operator delete(v5);
  }
}

uint64_t *std::vector<std::vector<double>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void *std::vector<std::vector<std::vector<double>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<double>>>::__emplace_back_slow_path<std::vector<std::vector<double>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<double>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<double>> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void vote_f0_files(double ****a1, void *a2, char **a3, uint64_t a4)
{
  v5 = -1431655765 * (a1[1] - *a1);
  if (v5 > 1)
  {
    v6 = 1;
    while (1)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*a1)[1] - **a1);
      std::vector<double>::vector[abi:ne200100](&__p, (*a1)[3 * v6][1] - *(*a1)[3 * v6]);
      std::vector<std::vector<double>>::vector[abi:ne200100](&v128, v7, &__p);
      if (__p)
      {
        v127 = __p;
        operator delete(__p);
      }

      v8 = *a1;
      v9 = **a1;
      if ((*a1)[1] != v9)
      {
        break;
      }

LABEL_53:
      __p = &v128;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (++v6 == (v5 & 0x7FFFFFFF))
      {
        goto LABEL_54;
      }
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v10;
      v13 = *v9[3 * v10];
      v14 = v8[3 * v6];
      v15 = v8[3 * v6 + 1] - v14;
      v16 = 0xAAAAAAAAAAAAAAABLL * v15;
      v17 = -1431655765 * v15 - 1;
      v18 = v17 >= v10 ? v10 : -1431655765 * v15 - 1;
      v19 = *v14[3 * v18];
      if (v13 < v19)
      {
        break;
      }

      if (v13 > v19)
      {
        v24 = v16 - 1;
        v25 = v18 + 1;
        if (v16 - 1 <= v25 || *v14[3 * v25] >= v13)
        {
          LODWORD(v22) = -1;
        }

        else
        {
          v26 = v17;
          if (v10 < v17)
          {
            v26 = v10;
          }

          v27 = &v14[3 * v26 + 6];
          v28 = 2;
          do
          {
            v29 = v28;
            if (v24 <= v26 + v28)
            {
              break;
            }

            v30 = *v27;
            v27 += 3;
            ++v28;
          }

          while (*v30 < v13);
          v22 = v17;
          if (v10 < v17)
          {
            v22 = v10;
          }

          v25 = v22 + v29;
          LODWORD(v22) = -v29;
        }

        if (v24 < v25 || vabdd_f64(v13, *v14[3 * v25]) > vabdd_f64(v13, *v14[3 * v25 - 3]))
        {
          LODWORD(v22) = v22 + 1;
        }

        goto LABEL_42;
      }

      LODWORD(v22) = 0;
LABEL_43:
      v31 = &v14[3 * (v18 - v22)];
      v32 = &v128[3 * v10];
      if (v32 != v31)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v32, *v31, v31[1], (v31[1] - *v31) >> 3);
        v8 = *a1;
        v9 = **a1;
      }

      if (0xAAAAAAAAAAAAAAABLL * (v8[1] - v9) <= ++v10)
      {
        if (v11 == 1)
        {
          v33 = &v8[3 * v6];
          v34 = v128;
          if (v33 != &v128)
          {
            std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v33, v128, v129, 0xAAAAAAAAAAAAAAABLL * (v129 - v128));
            v34 = v128;
          }

          if (v129 != v34)
          {
            v35 = 0xAAAAAAAAAAAAAAABLL * (v129 - v34);
            v36 = **a1;
            v37 = (*a1)[3 * v6];
            if (v35 <= 1)
            {
              v35 = 1;
            }

            do
            {
              v38 = *v36;
              v36 += 3;
              v39 = *v38;
              v40 = *v37;
              v37 += 3;
              *v40 = v39;
              --v35;
            }

            while (v35);
          }
        }

        goto LABEL_53;
      }
    }

    if (v18 < 2)
    {
      v23 = v18 - 1;
      LODWORD(v22) = 1;
      if (v18 - 1 < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v10 >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v10;
      }

      v21 = &v14[3 * (v20 - 1)];
      v22 = 1;
      while (**v21 > v13)
      {
        ++v22;
        v21 -= 3;
        if (v20 == v22)
        {
          v23 = 0;
          LODWORD(v22) = v18;
          goto LABEL_40;
        }
      }

      if (v10 >= v17)
      {
        v12 = v17;
      }

      v23 = v12 - v22;
    }

LABEL_40:
    if (vabdd_f64(v13, *v14[3 * v23]) <= vabdd_f64(v13, *v14[3 * v23 + 3]))
    {
LABEL_42:
      v11 = 1;
      goto LABEL_43;
    }

LABEL_41:
    LODWORD(v22) = v22 - 1;
    goto LABEL_42;
  }

LABEL_54:
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v117 = v5;
  if (v5 < 1)
  {
    v51 = 0x4059000000000000;
    v50 = a4;
  }

  else
  {
    v41 = 0;
    v42 = v5 & 0x7FFFFFFF;
    v43 = *a1;
    do
    {
      v44 = v43[3 * v41];
      if (v43[3 * v41 + 1] != v44)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = v44[v45];
          v49 = v47[1];
          v48 = (v47 + 1);
          if (v49 > 0.0)
          {
            std::vector<double>::push_back[abi:ne200100](&v128, v48);
            v43 = *a1;
          }

          ++v46;
          v44 = v43[3 * v41];
          v45 += 3;
        }

        while (0xAAAAAAAAAAAAAAABLL * (v43[3 * v41 + 1] - v44) > v46);
      }

      ++v41;
    }

    while (v41 != v42);
    if (v129 == v128)
    {
      v51 = 0x4059000000000000;
      v50 = a4;
      v5 = v117;
    }

    else
    {
      std::__sort<std::__less<double,double> &,double *>();
      v50 = a4;
      v5 = v117;
      v51 = v128[((v129 - v128) >> 3) / 2];
    }
  }

  v52 = **a1;
  v53 = *v52[3];
  v54 = **v52;
  v55 = 0xAAAAAAAAAAAAAAABLL * ((*a1)[1] - v52);
  v125[0] = 0;
  std::vector<double>::vector[abi:ne200100](&__p, v55, v125);
  if ((*a1)[1] == **a1)
  {
    goto LABEL_135;
  }

  v56 = 0;
  v57 = llround(0.05 / (v53 - v54));
  v58 = -v57;
  v118 = v5 & 0x7FFFFFFF;
  do
  {
    memset(v125, 0, sizeof(v125));
    if (v5 <= 0)
    {
      *(__p + v56) = v51;
      goto LABEL_82;
    }

    v59 = 0;
    do
    {
      v60 = v58;
      v61 = (2 * v57) | 1;
      if ((v57 & 0x80000000) == 0)
      {
        do
        {
          if ((v60 & 0x80000000) == 0)
          {
            v62 = (*a1)[3 * v59];
            if (0xAAAAAAAAAAAAAAABLL * ((*a1)[3 * v59 + 1] - v62) > v60)
            {
              v63 = v62[3 * v60];
              v65 = v63[1];
              v64 = (v63 + 1);
              if (v65 > 0.0)
              {
                std::vector<double>::push_back[abi:ne200100](v125, v64);
              }
            }
          }

          ++v60;
          --v61;
        }

        while (v61);
      }

      ++v59;
    }

    while (v59 != v118);
    v66 = v125[0];
    if (v125[1] == v125[0])
    {
      *(__p + v56) = v51;
      v5 = v117;
      if (!v66)
      {
        goto LABEL_82;
      }
    }

    else
    {
      std::__sort<std::__less<double,double> &,double *>();
      v5 = v117;
      v66 = v125[0];
      *(__p + v56) = *(v125[0] + ((v125[1] - v125[0]) >> 3) / 2);
    }

    v125[1] = v66;
    operator delete(v66);
LABEL_82:
    ++v56;
    v68 = **a1;
    v67 = (*a1)[1];
    ++v58;
  }

  while (0xAAAAAAAAAAAAAAABLL * (v67 - v68) > v56);
  v50 = a4;
  if (v67 != v68)
  {
    v69 = 0;
    v70 = floor(vcvtd_n_f64_s32(v5, 1uLL));
    while (1)
    {
      memset(v125, 0, sizeof(v125));
      v123[0] = 0;
      v123[1] = 0;
      v124 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      if (v5 < 1)
      {
        v77 = 0.0;
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = v118;
        do
        {
          v74 = (*a1)[v71][3 * v69];
          v76 = v74[1];
          v75 = (v74 + 1);
          if (v76 > 0.0)
          {
            std::vector<double>::push_back[abi:ne200100](v125, v75);
            ++v72;
          }

          v71 += 3;
          --v73;
        }

        while (v73);
        v77 = v72;
        v5 = v117;
        if (v117 >= 1)
        {
          v78 = 0;
          v79 = v118;
          do
          {
            v80 = &(*a1)[v78][3 * v69];
            v81 = *v80;
            if (v80[1] - *v80 == 32)
            {
              std::vector<double>::push_back[abi:ne200100](v123, v81 + 2);
              std::vector<double>::push_back[abi:ne200100](&v120, (*a1)[v78][3 * v69] + 3);
            }

            else
            {
              v83 = v81[1];
              v82 = (v81 + 1);
              if (v83 <= 0.0)
              {
                std::vector<double>::push_back[abi:ne200100](v123, __p + v69);
                v119 = 0;
              }

              else
              {
                std::vector<double>::push_back[abi:ne200100](v123, v82);
                v119 = 0x3FE0000000000000;
              }

              std::vector<double>::push_back[abi:ne200100](&v120, &v119);
            }

            v78 += 3;
            --v79;
          }

          while (v79);
          v50 = a4;
        }
      }

      if (v70 > v77)
      {
        break;
      }

      v95 = (v125[1] - v125[0]) >> 3;
      if (v95 == 2)
      {
        v97 = *(__p + v69);
        v96 = *v125[0];
        v98 = *(v125[0] + 1);
      }

      else
      {
        if (v95 == 1)
        {
          v96 = *v125[0];
          goto LABEL_124;
        }

        std::__sort<std::__less<double,double> &,double *>();
        v100 = (v125[1] - v125[0]) >> 3;
        if ((v100 & 0x80000001) == 1)
        {
          v96 = *(v125[0] + ((v100 - 1) >> 1));
          goto LABEL_124;
        }

        v101 = (v125[0] + 8 * (v100 / 2));
        v96 = *(v101 - 1);
        v98 = *v101;
        if (vabdd_f64(v96, *v101) < 10.0)
        {
          v96 = (v96 + v98) * 0.5;
LABEL_124:
          v99 = *a3;
LABEL_125:
          *&v99[8 * v69] = v96;
          goto LABEL_126;
        }

        v97 = *(__p + v69);
      }

      v99 = *a3;
      if (vabdd_f64(v96, v97) < vabdd_f64(v98, v97))
      {
        goto LABEL_125;
      }

      *&v99[8 * v69] = v98;
LABEL_126:
      *(*a2 + 8 * v69) = *(**a1)[3 * v69];
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v123[0])
      {
        v123[1] = v123[0];
        operator delete(v123[0]);
      }

      if (v125[0])
      {
        v125[1] = v125[0];
        operator delete(v125[0]);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*a1)[1] - **a1) <= ++v69)
      {
        goto LABEL_135;
      }
    }

    *&(*a3)[8 * v69] = 0;
    v84 = v123[1];
    v85 = v123[0];
    v86 = v123[0];
    if (v123[1] != v123[0])
    {
      v87 = 0;
      v88 = (v123[1] - v123[0]) >> 3;
      v89 = __p;
      if (v88 <= 1)
      {
        v88 = 1;
      }

      do
      {
        v85[v87] = v85[v87] - v89[v69];
        ++v87;
      }

      while (v88 != v87);
      v90 = v85 + 1;
      if (v85 + 1 == v84)
      {
        v86 = v85;
      }

      else
      {
        v91 = *v85;
        v86 = v85;
        v92 = v85 + 1;
        do
        {
          v93 = *v92++;
          v94 = v93;
          if (v93 < v91)
          {
            v91 = v94;
            v86 = v90;
          }

          v90 = v92;
        }

        while (v92 != v84);
      }
    }

    v96 = *(v85 + ((v86 - v85) << 29 >> 29)) + *(__p + v69);
    v99 = *v50;
    goto LABEL_125;
  }

LABEL_135:
  v102 = *v50;
  v103 = *(v50 + 8) - *v50;
  if (v103)
  {
    v104 = v103 >> 3;
    v105 = *a3;
    if (v104 <= 1)
    {
      v104 = 1;
    }

    do
    {
      if (*v102 == 0.0)
      {
        *v102 = *v105;
      }

      v105 += 8;
      v102 += 8;
      --v104;
    }

    while (v104);
  }

  DSP::medfilt(v50, 9, v125);
  v106 = *v50;
  if (*v50)
  {
    *(v50 + 8) = v106;
    operator delete(v106);
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0;
  }

  *v50 = *v125;
  *(v50 + 16) = v125[2];
  DSP::smooth(v50, 7, v125);
  v107 = *v50;
  if (*v50)
  {
    *(v50 + 8) = v107;
    operator delete(v107);
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0;
  }

  v108 = v125[0];
  *v50 = v125[0];
  v109 = v125[1];
  *(v50 + 8) = *&v125[1];
  if (v109 != v108)
  {
    v110 = (v109 - v108) >> 3;
    v111 = *a3;
    if (v110 <= 1)
    {
      v110 = 1;
    }

    do
    {
      if (*v111 > 0.0)
      {
        *v108 = *v111;
      }

      ++v108;
      v111 += 8;
      --v110;
    }

    while (v110);
  }

  DSP::medfilt(v50, 3, v125);
  v112 = *v50;
  if (*v50)
  {
    *(v50 + 8) = v112;
    operator delete(v112);
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0;
  }

  *v50 = *v125;
  v113 = __p;
  *(v50 + 16) = v125[2];
  if (v113)
  {
    v127 = v113;
    operator delete(v113);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }
}

void sub_191E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void SRH::~SRH(SRH *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }
}

uint64_t *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *a5;
  a1[11] = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return a1;
}

void sub_1920CC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
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

void std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 48);
      if (v5)
      {
        *(v3 - 40) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 72);
      if (v6)
      {
        *(v3 - 64) = v6;
        operator delete(v6);
      }

      v7 = v3 - 96;
      v8 = *(v3 - 96);
      if (v8)
      {
        *(v3 - 88) = v8;
        operator delete(v8);
      }

      v3 -= 96;
    }

    while (v7 != v2);
  }

  a1[1] = v2;
}

char *std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__emplace_back_slow_path<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>> const&>(const void **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  v15 = 96 * v2;
  v16 = 0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::__tuple_impl((96 * v2), a2);
  v7 = (96 * v2 + 96);
  v8 = a1[1] - *a1;
  v9 = (96 * v2 - v8);
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  std::__split_buffer<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::~__split_buffer(&v13);
  return v7;
}

void sub_1922E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::__tuple_impl(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 9, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  return a1;
}

void sub_1923A4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 96);
    *(a1 + 16) = i - 96;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      *(i - 40) = v6;
      operator delete(v6);
    }

    v7 = *(i - 72);
    if (v7)
    {
      *(i - 64) = v7;
      operator delete(v7);
    }

    v8 = *v4;
    if (*v4)
    {
      *(i - 88) = v8;
      operator delete(v8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>,0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  std::vector<float>::__move_assign(a1, a2);
  std::vector<float>::__move_assign(a1 + 24, (a2 + 24));
  std::vector<float>::__move_assign(a1 + 48, (a2 + 48));

  *&result = std::vector<float>::__move_assign(a1 + 72, (a2 + 72)).n128_u64[0];
  return result;
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t *std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,0ul,1ul,2ul,3ul>(uint64_t **a1, char **a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  v5 = a1[1];
  if (v5 != (a2 + 3))
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  }

  v6 = a1[2];
  if (v6 != (a2 + 6))
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, a2[6], a2[7], (a2[7] - a2[6]) >> 2);
  }

  result = a1[3];
  if (result != (a2 + 9))
  {
    v8 = a2[9];
    v9 = a2[10];

    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, v8, v9, (v9 - v8) >> 2);
  }

  return result;
}

uint64_t *std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
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
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(&v14);
  return v8;
}

void sub_192824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<std::vector<double>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<double>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<std::vector<double>>>::__emplace_back_slow_path<std::vector<std::vector<double>> const&>(char **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>((24 * v2), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1929C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_192A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::vector<std::vector<double>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      v15 = *(a1 + 8);
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v18, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void SiriTTS::ForcedAlignment::Lexicon::Lexicon(uint64_t a1, const void ***a2, const void ***a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  _ZNSt3__115allocate_sharedB8ne200100IN3fst11SymbolTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_19361C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = v16[6];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v16[4];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  __p = v16;
  std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::Lexicon::add_lexeme(SiriTTS::ForcedAlignment::Lexicon *this, const std::string *a2)
{
  if (a2[1].__r_.__value_.__l.__size_ != a2[1].__r_.__value_.__r.__words[0])
  {
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    std::string::operator=(v27, a2);
    data = a2[1].__r_.__value_.__l.__data_;
    if (a2[1].__r_.__value_.__l.__size_ - data == 24)
    {
      if (data[23] >= 0)
      {
        v5 = data[23];
      }

      else
      {
        v5 = *(data + 1);
      }

      v6 = __p;
      std::string::basic_string[abi:ne200100](__p, v5 + 2);
      if (v26 < 0)
      {
        v6 = __p[0];
      }

      if (v5)
      {
        if (data[23] >= 0)
        {
          v7 = data;
        }

        else
        {
          v7 = *data;
        }

        memmove(v6, v7, v5);
      }

      strcpy(v6 + v5, "_S");
      std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
    }

    else
    {
      if (data[23] >= 0)
      {
        v8 = data[23];
      }

      else
      {
        v8 = *(data + 1);
      }

      v9 = __p;
      std::string::basic_string[abi:ne200100](__p, v8 + 2);
      if (v26 < 0)
      {
        v9 = __p[0];
      }

      if (v8)
      {
        if (data[23] >= 0)
        {
          v10 = data;
        }

        else
        {
          v10 = *data;
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, "_B");
      std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = a2[1].__r_.__value_.__l.__data_;
      size = a2[1].__r_.__value_.__l.__size_;
      if (0xAAAAAAAAAAAAAAABLL * ((size - v11) >> 3) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = 0;
        v14 = 1;
        do
        {
          v15 = &v11[v13];
          v16 = v11[v13 + 47];
          if ((v16 & 0x80u) == 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = *(v15 + 4);
          }

          std::string::basic_string[abi:ne200100](__p, v17 + 2);
          if (v26 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          if (v17)
          {
            if (v15[47] >= 0)
            {
              v19 = v15 + 24;
            }

            else
            {
              v19 = *(v15 + 3);
            }

            memmove(v18, v19, v17);
          }

          strcpy(v18 + v17, "_I");
          std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          ++v14;
          v11 = a2[1].__r_.__value_.__l.__data_;
          size = a2[1].__r_.__value_.__l.__size_;
          v13 += 24;
        }

        while (-1 - 0x5555555555555555 * ((size - v11) >> 3) > v14);
      }

      if (*(size - 1) >= 0)
      {
        v20 = *(size - 1);
      }

      else
      {
        v20 = *(size - 16);
      }

      v21 = __p;
      std::string::basic_string[abi:ne200100](__p, v20 + 2);
      if (v26 < 0)
      {
        v21 = __p[0];
      }

      if (v20)
      {
        if (*(size - 1) >= 0)
        {
          v22 = (size - 24);
        }

        else
        {
          v22 = *(size - 24);
        }

        memmove(v21, v22, v20);
      }

      strcpy(v21 + v20, "_E");
      std::vector<std::string>::push_back[abi:ne200100](&v27[24], __p);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](this, v27);
    (*(**(this + 5) + 32))(*(this + 5), v27);
    v23 = *&v27[24];
    v24 = v28;
    while (v23 != v24)
    {
      (*(**(this + 3) + 32))(*(this + 3), v23);
      v23 += 24;
    }

    __p[0] = &v27[24];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if ((v27[23] & 0x80000000) != 0)
    {
      operator delete(*v27);
    }
  }
}

void sub_193A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  SiriTTS::ForcedAlignment::Lexeme::~Lexeme(&a16);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme const&>(a1, a2);
  }

  else
  {
    std::vector<SiriTTS::ForcedAlignment::Lexeme>::__construct_one_at_end[abi:ne200100]<SiriTTS::ForcedAlignment::Lexeme const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void SiriTTS::ForcedAlignment::Lexicon::int_to_phone(SiriTTS::ForcedAlignment::Lexicon *this@<X0>, const BOOL *a2@<X2>, boost::filesystem::path *a3@<X8>)
{
  (*(**(this + 3) + 88))(&__str);
  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

LABEL_11:
    boost::filesystem::path::path(a3, "");
    goto LABEL_24;
  }

  size = __str.__r_.__value_.__l.__size_;
  if (!__str.__r_.__value_.__l.__size_)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!*a2)
  {
    *a3 = __str;
    memset(&__str, 0, sizeof(__str));
    goto LABEL_24;
  }

  std::string::basic_string(&v9, &__str, size - 2, 2uLL, &v11);
  v6 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v9.__r_.__value_.__l.__size_ == 2 && *v9.__r_.__value_.__l.__data_ == 21343 || v9.__r_.__value_.__l.__size_ == 2 && *v9.__r_.__value_.__l.__data_ == 16991 || v9.__r_.__value_.__l.__size_ == 2 && *v9.__r_.__value_.__l.__data_ == 18783)
    {
      goto LABEL_27;
    }

    if (v9.__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_22;
    }

    v7 = v9.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_22;
    }

    if (LOWORD(v9.__r_.__value_.__l.__data_) == 21343 || LOWORD(v9.__r_.__value_.__l.__data_) == 16991 || LOWORD(v9.__r_.__value_.__l.__data_) == 18783)
    {
      goto LABEL_27;
    }

    v7 = &v9;
  }

  if (LOWORD(v7->__r_.__value_.__l.__data_) != 17759)
  {
LABEL_22:
    *a3 = __str;
    memset(&__str, 0, sizeof(__str));
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_27:
  v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(a3, &__str, 0, v8 - 2, &v11);
  if ((*(&v9.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_23:
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_24:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_193E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *SiriTTS::ForcedAlignment::Lexicon::write_text_fst(__int128 **a1, void *a2)
{
  *(a2 + *(*a2 - 24) + 16) = 15;
  v3 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v86, 1);
  v4 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v86, 1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 9;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v86, 1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v86, 1);
  v9 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v86, 1);
  v10 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v86, 1);
  v11 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v86, 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "sil", 3);
  v86.__r_.__value_.__s.__data_[0] = 9;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v86, 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v86, 1);
  v16 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v86, 1);
  v17 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v86, 1);
  v18 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v86, 1);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "sil", 3);
  v86.__r_.__value_.__s.__data_[0] = 9;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v86, 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "<eps>", 5);
  v86.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v86, 1);
  v23 = *a1;
  v84 = a1[1];
  if (*a1 != v84)
  {
    v85 = 3;
    do
    {
      v24 = *(v23 + 3);
      v25 = *(v23 + 4);
      v26 = v25 - v24;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3);
      if (v27 >= 2)
      {
        v28 = std::ostream::operator<<();
        v86.__r_.__value_.__s.__data_[0] = 9;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, &v86, 1);
        v29 = std::ostream::operator<<();
        v86.__r_.__value_.__s.__data_[0] = 9;
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, &v86, 1);
        v31 = *(v24 + 23);
        if (v31 >= 0)
        {
          v32 = v24;
        }

        else
        {
          v32 = *v24;
        }

        if (v31 >= 0)
        {
          v33 = *(v24 + 23);
        }

        else
        {
          v33 = *(v24 + 8);
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
        v86.__r_.__value_.__s.__data_[0] = 9;
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, &v86, 1);
        v36 = *(v23 + 23);
        if (v36 >= 0)
        {
          v37 = v23;
        }

        else
        {
          v37 = *v23;
        }

        if (v36 >= 0)
        {
          v38 = *(v23 + 23);
        }

        else
        {
          v38 = *(v23 + 1);
        }

        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
        v86.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, &v86, 1);
        v25 = *(v23 + 4);
        v26 = v25 - *(v23 + 3);
        v27 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
        ++v85;
      }

      if (v27 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = 0;
        v41 = 0;
        do
        {
          v42 = v40;
          v43 = std::ostream::operator<<();
          v86.__r_.__value_.__s.__data_[0] = 9;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, &v86, 1);
          v44 = std::ostream::operator<<();
          v86.__r_.__value_.__s.__data_[0] = 9;
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, &v86, 1);
          v46 = *(v23 + 3) + v41;
          v49 = *(v46 + 24);
          v47 = v46 + 24;
          v48 = v49;
          v50 = *(v47 + 23);
          if (v50 >= 0)
          {
            v51 = v47;
          }

          else
          {
            v51 = v48;
          }

          if (v50 >= 0)
          {
            v52 = *(v47 + 23);
          }

          else
          {
            v52 = *(v47 + 8);
          }

          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v51, v52);
          v86.__r_.__value_.__s.__data_[0] = 9;
          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, &v86, 1);
          v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "<eps>", 5);
          v86.__r_.__value_.__s.__data_[0] = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, &v86, 1);
          v25 = *(v23 + 4);
          v26 = v25 - *(v23 + 3);
          v41 += 24;
          v40 = v42 + 1;
        }

        while (-1 - 0x5555555555555555 * (v26 >> 3) > (v42 + 2));
        v85 += v40;
      }

      if (v26 == 24)
      {
        if (*(v23 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v86, *v23, *(v23 + 1));
        }

        else
        {
          v56 = *v23;
          v86.__r_.__value_.__r.__words[2] = *(v23 + 2);
          *&v86.__r_.__value_.__l.__data_ = v56;
        }
      }

      else
      {
        boost::filesystem::path::path(&v86, "<eps>");
      }

      v57 = std::ostream::operator<<();
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, &v87, 1);
      v58 = std::ostream::operator<<();
      v87 = 9;
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, &v87, 1);
      v60 = *(v25 - 1);
      if (v60 >= 0)
      {
        v61 = v25 - 24;
      }

      else
      {
        v61 = *(v25 - 24);
      }

      if (v60 >= 0)
      {
        v62 = *(v25 - 1);
      }

      else
      {
        v62 = *(v25 - 16);
      }

      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v61, v62);
      v87 = 9;
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, &v87, 1);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &v86;
      }

      else
      {
        v65 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v86.__r_.__value_.__l.__size_;
      }

      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, size);
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, &v87, 1);
      v68 = std::ostream::operator<<();
      v87 = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, &v87, 1);
      v69 = std::ostream::operator<<();
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, &v87, 1);
      v70 = std::ostream::operator<<();
      v87 = 9;
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, &v87, 1);
      v72 = *(v25 - 1);
      if (v72 >= 0)
      {
        v73 = v25 - 24;
      }

      else
      {
        v73 = *(v25 - 24);
      }

      if (v72 >= 0)
      {
        v74 = *(v25 - 1);
      }

      else
      {
        v74 = *(v25 - 16);
      }

      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
      v87 = 9;
      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, &v87, 1);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v86;
      }

      else
      {
        v77 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v78 = v86.__r_.__value_.__l.__size_;
      }

      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v77, v78);
      v87 = 9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, &v87, 1);
      v80 = std::ostream::operator<<();
      v87 = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, &v87, 1);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      v23 += 3;
    }

    while (v23 != v84);
  }

  v81 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 9;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, &v86, 1);
  v82 = std::ostream::operator<<();
  v86.__r_.__value_.__s.__data_[0] = 10;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, &v86, 1);
}

void sub_194478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::ForcedAlignment::Lexicon::generate_fst(__int128 **this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v4);
  SiriTTS::ForcedAlignment::Lexicon::write_text_fst(this, &v5);
  boost::filesystem::path::path(&__p, "LexiconService");
  fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FstCompiler(&v3);
}

void sub_1946D4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstCompiler(&a13);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::Lexeme::~Lexeme(void **this)
{
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstCompiler(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(a1 + 72);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(a1);
}

void std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst11SymbolTableENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282DF8;
  fst::SymbolTable::SymbolTable((a1 + 3));
}

void std::__shared_ptr_emplace<fst::SymbolTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_194A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t *std::vector<SiriTTS::ForcedAlignment::Lexeme>::__construct_one_at_end[abi:ne200100]<SiriTTS::ForcedAlignment::Lexeme const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 24), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme const&>(void *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 24), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(&v15);
  return v14;
}

void sub_194CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_194D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
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
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 48;
      std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(void **a1)
{
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<SiriTTS::ForcedAlignment::Lexeme>::destroy[abi:ne200100](v4, i - 48);
  }
}

void sub_195200(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*v3);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(v1);
  _Unwind_Resume(a1);
}

void fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11, char a12)
{
  v12 = off_270E90(a1, a2, a3, a4, a5, a6, a7, a8);
  v52 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v12;
  v12->__r_.__value_.__r.__words[2] = 0;
  v53 = v12 + 1;
  std::string::operator=(v12 + 1, v25);
  *(v24 + 48) = v21;
  *(v24 + 56) = v19;
  *(v24 + 64) = v17;
  *(v24 + 112) = 0;
  *(v24 + 116) = a10;
  *(v24 + 117) = a11;
  *(v24 + 118) = a12;
  while (1)
  {
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v26 = std::locale::use_facet(&v63, &std::ctype<char>::id);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v63);
    v27 = std::istream::getline();
    if ((*(v27 + *(*v27 - 24) + 32) & 5) != 0)
    {
      break;
    }

    ++*(v24 + 16);
    v63.__locale_ = 0;
    locale = 0;
    v65 = 0;
    boost::filesystem::path::path(&v60, FLAGS_fst_field_separator);
    v28 = std::string::append(&v60, "\n");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v62 = v28->__r_.__value_.__r.__words[2];
    *v61 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (v62 >= 0)
    {
      v30 = v61;
    }

    else
    {
      v30 = v61[0];
    }

    fst::SplitToVector(__s1, v30, &v63, 1);
    v31 = locale - v63.__locale_;
    if (locale != v63.__locale_ && **v63.__locale_)
    {
      if (v31 == 40)
      {
        v32 = v15;
      }

      else
      {
        v32 = 0;
      }

      if (v31 > 0x28)
      {
        v32 = 1;
      }

      if (v31 == 24)
      {
        v33 = v15;
      }

      else
      {
        v33 = 1;
      }

      if (v32 != v33)
      {
        v34 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *v63.__locale_);
        if (v34 >= ((*(*(v24 + 8) + 72) - *(*(v24 + 8) + 64)) >> 3))
        {
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(v24);
        }

        if (*(v24 + 16) == 1)
        {
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetStart(v24, v34);
        }

        v39 = (locale - v63.__locale_) >> 3;
        if (v39 > 2)
        {
          switch(v39)
          {
            case 3:
              v48 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *(v63.__locale_ + 1));
              HIDWORD(v60.__r_.__value_.__r.__words[1]) = v48;
              LODWORD(v60.__r_.__value_.__l.__data_) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v63.__locale_ + 2), *(v24 + 48), "arc ilabel", *(v24 + 117));
              *(v60.__r_.__value_.__r.__words + 4) = LODWORD(v60.__r_.__value_.__l.__data_);
              fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
              fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(v24 + 8), v34, &v60);
              LODWORD(v34) = v48;
              break;
            case 4:
              v49 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *(v63.__locale_ + 1));
              HIDWORD(v60.__r_.__value_.__r.__words[1]) = v49;
              v50 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v63.__locale_ + 2), *(v24 + 48), "arc ilabel", *(v24 + 117));
              LODWORD(v60.__r_.__value_.__l.__data_) = v50;
              if (v15)
              {
                HIDWORD(v60.__r_.__value_.__r.__words[0]) = v50;
                v51 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(v24, *(v63.__locale_ + 3), 1);
              }

              else
              {
                HIDWORD(v60.__r_.__value_.__r.__words[0]) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v63.__locale_ + 3), *(v24 + 56), "arc olabel", *(v24 + 117));
                v51 = 0.0;
              }

              *&v60.__r_.__value_.__r.__words[1] = v51;
              fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
              fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(v24 + 8), v34, &v60);
              LODWORD(v34) = v49;
              break;
            case 5:
              v40 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(v24, *(v63.__locale_ + 1));
              HIDWORD(v60.__r_.__value_.__r.__words[1]) = v40;
              LODWORD(v60.__r_.__value_.__l.__data_) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v63.__locale_ + 2), *(v24 + 48), "arc ilabel", *(v24 + 117));
              HIDWORD(v60.__r_.__value_.__r.__words[0]) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(v24, *(v63.__locale_ + 3), *(v24 + 56), "arc olabel", *(v24 + 117));
              LODWORD(v60.__r_.__value_.__r.__words[1]) = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(v24, *(v63.__locale_ + 4), 1);
              fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
              fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(v24 + 8), v34, &v60);
              LODWORD(v34) = v40;
              break;
          }

          goto LABEL_55;
        }

        if (v39 == 1)
        {
          v47 = 0.0;
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
LABEL_52:
          fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(*(v24 + 8), v34, v47);
        }

        else if (v39 == 2)
        {
          v47 = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(v24, *(v63.__locale_ + 1), 1);
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
          goto LABEL_52;
        }

LABEL_55:
        if (v34 >= ((*(*(v24 + 8) + 72) - *(*(v24 + 8) + 64)) >> 3))
        {
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(v24);
        }

        v35 = 0;
        goto LABEL_58;
      }

      v36 = FLAGS_fst_error_fatal;
      if (FLAGS_fst_error_fatal == 1)
      {
        boost::filesystem::path::path(v57, "FATAL");
        v37 = fst::LogMessage::LogMessage(&v59, v57);
      }

      else
      {
        boost::filesystem::path::path(__p, "ERROR");
        v37 = fst::LogMessage::LogMessage(&v56, __p);
      }

      v38 = fst::cerr(v37);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "FstCompiler: Bad number of columns, source = ", 45);
      v42 = *(v24 + 47);
      if (v42 >= 0)
      {
        v43 = v53;
      }

      else
      {
        v43 = *(v24 + 24);
      }

      if (v42 >= 0)
      {
        v44 = *(v24 + 47);
      }

      else
      {
        v44 = *(v24 + 32);
      }

      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ", line = ", 9);
      std::ostream::operator<<();
      if (v36)
      {
        fst::LogMessage::~LogMessage(&v59);
        if (v58 < 0)
        {
          v46 = v57[0];
          goto LABEL_43;
        }
      }

      else
      {
        fst::LogMessage::~LogMessage(&v56);
        if (v55 < 0)
        {
          v46 = __p[0];
LABEL_43:
          operator delete(v46);
        }
      }

      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(v24, 4, 4);
      v35 = 1;
      goto LABEL_58;
    }

    v35 = 2;
LABEL_58:
    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61[0]);
    }

    if (v63.__locale_)
    {
      locale = v63.__locale_;
      operator delete(v63.__locale_);
    }

    if ((v35 | 2) != 2)
    {
      return;
    }
  }

  if (v52)
  {
    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
    fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(*(v24 + 8), v21);
  }

  if (a9)
  {
    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v24);
    fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(*(v24 + 8), v19);
  }
}

void sub_195858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, std::locale a46, uint64_t a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a46.__locale_)
  {
    operator delete(a46.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToStateId(uint64_t a1, char *a2)
{
  result = fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(a1, a2, *(a1 + 64), "state ID", 0);
  v6 = result;
  if ((*(a1 + 116) & 1) == 0)
  {
    v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 72), &v6);
    if (v4)
    {
      return *(v4 + 5);
    }

    else
    {
      v5 = *(a1 + 112);
      v7 = &v6;
      *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 72), &v6, &std::piecewise_construct, &v7) + 5) = v5;
      result = *(a1 + 112);
      *(a1 + 112) = result + 1;
    }
  }

  return result;
}

float fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToWeight(uint64_t a1, const char *a2, char a3)
{
  boost::filesystem::path::path(&__p, a2);
  std::istringstream::basic_istringstream[abi:ne200100](v18, &__p, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  fst::operator>><float,(fst::FloatWeightTplAlignmentType)1>(v18, &v22);
  if ((*(&v20[1].__locale_ + *(v18[0] - 3)) & 5) != 0 || (a3 & 1) == 0 && (*&__p.__r_.__value_.__l.__data_ = v22, v23 = 2139095040, v22 == INFINITY))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(&__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(&__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v23, &__p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "FstCompiler: Bad weight = ", 27);
    v9 = strlen(a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a2, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", source = ", 12);
    v12 = *(a1 + 47);
    if (v12 >= 0)
    {
      v13 = a1 + 24;
    }

    else
    {
      v13 = *(a1 + 24);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 47);
    }

    else
    {
      v14 = *(a1 + 32);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", line = ", 9);
    std::ostream::operator<<();
    fst::LogMessage::~LogMessage(&v23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(a1, 4, 4);
    v22 = NAN;
  }

  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::istream::~istream();
  std::ios::~ios();
  return v22;
}

void sub_195C98(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  fst::LogMessage::~LogMessage((v22 - 52));
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t fst::FstCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::StrToId(uint64_t a1, char *__s, uint64_t a3, const char *a4, char a5)
{
  if (!a3)
  {
    __endptr = 0;
    v10 = strtoll(__s, &__endptr, 10);
    v11 = &__s[strlen(__s)];
    if (v10 >= 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = a5;
    }

    if (__endptr >= v11 && (v12 & 1) != 0)
    {
      return v10;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v48, __p);
    v14 = fst::cerr(v13);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "FstCompiler: Bad ", 17);
    v37 = strlen(a4);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, a4, v37);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " integer = ", 12);
    v40 = strlen(__s);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, __s, v40);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", source = ", 12);
    v43 = *(a1 + 47);
    if (v43 >= 0)
    {
      v44 = a1 + 24;
    }

    else
    {
      v44 = *(a1 + 24);
    }

    if (v43 >= 0)
    {
      v45 = *(a1 + 47);
    }

    else
    {
      v45 = *(a1 + 32);
    }

    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ", line = ", 9);
    std::ostream::operator<<();
    p_endptr = &v48;
    goto LABEL_42;
  }

  if (*(a1 + 118) == 1)
  {
    boost::filesystem::path::path(__p, __s);
    v10 = (*(*a3 + 32))(a3, __p);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = (*(*a3 + 104))(a3, __s);
  }

  if (v10 >= 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  if (v10 == -1 || (v15 & 1) == 0)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(&__endptr, __p);
    v17 = fst::cerr(v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "FstCompiler: Symbol ", 21);
    v19 = strlen(__s);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, __s, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " is not mapped to any integer ", 31);
    v22 = strlen(a4);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, a4, v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", symbol table = ", 17);
    v25 = (*(*a3 + 48))(a3);
    v26 = *(v25 + 23);
    if (v26 >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = *v25;
    }

    if (v26 >= 0)
    {
      v28 = *(v25 + 23);
    }

    else
    {
      v28 = *(v25 + 8);
    }

    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v27, v28);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", source = ", 11);
    v31 = *(a1 + 47);
    if (v31 >= 0)
    {
      v32 = a1 + 24;
    }

    else
    {
      v32 = *(a1 + 24);
    }

    if (v31 >= 0)
    {
      v33 = *(a1 + 47);
    }

    else
    {
      v33 = *(a1 + 32);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", line = ", 9);
    std::ostream::operator<<();
    p_endptr = &__endptr;
LABEL_42:
    fst::LogMessage::~LogMessage(p_endptr);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(a1, 4, 4);
  }

  return v10;
}

void sub_1960CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *fst::operator>><float,(fst::FloatWeightTplAlignmentType)1>(uint64_t *a1, float *a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &v16);
  v4 = HIBYTE(v18);
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if (HIBYTE(v18) != 8)
    {
      if (HIBYTE(v18) != 9)
      {
        goto LABEL_23;
      }

      if (v16 != 0x74696E69666E492DLL || v17 != 121)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (v16 != 0x7974696E69666E49)
    {
LABEL_23:
      v15 = 0;
      v6 = &v16;
      goto LABEL_26;
    }

LABEL_20:
    v8 = 2139095040;
LABEL_21:
    *a2 = v8;
    if ((v4 & 0x80) == 0)
    {
      return a1;
    }

LABEL_33:
    operator delete(v16);
    return a1;
  }

  if (v17 == 8 && *v16 == 0x7974696E69666E49)
  {
    goto LABEL_20;
  }

  if (v17 == 9)
  {
    v6 = v16;
    if (*v16 == 0x74696E69666E492DLL && v16[8] == 121)
    {
LABEL_18:
      v8 = -8388608;
      goto LABEL_21;
    }
  }

  else
  {
    v6 = v16;
  }

  v15 = 0;
LABEL_26:
  v9 = strtod(v6, &v15);
  v10 = v16;
  v11 = HIBYTE(v18);
  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v11 = v17;
  }

  else
  {
    v10 = &v16;
  }

  if (v15 >= &v10[v11])
  {
    v13 = v9;
    *a2 = v13;
    if ((v12 & 0x80) == 0)
    {
      return a1;
    }

    goto LABEL_33;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), 1u);
  if (v18 < 0)
  {
    goto LABEL_33;
  }

  return a1;
}

void sub_196504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SiriTTS::ForcedAlignment::AlignmentDecoder::AlignmentDecoder(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  result[2] = *a2;
  result[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void SiriTTS::ForcedAlignment::AlignmentDecoder::decodePhoneAlignment(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a4[1] != *a4 && (*(*v10 + 24))(v10) != -1)
  {
    v13 = *(a1 + 16);
    __p = 0;
    v20 = 0;
    v21 = 0;
    kaldi::AddTransitionProbs(v13, &__p, v10, *(a3 + 12), *(a3 + 16), v11, v12);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    *(&v22 + 4) = 0x147FFFFFFFLL;
    HIDWORD(v22) = 0;
    v23 = 0x400000003F000000;
    LODWORD(v22) = *a3;
    kaldi::FasterDecoder::FasterDecoder(&__p, v10, &v22, v14, v15);
    memset(v17, 0, sizeof(v17));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v17, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
    SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v17, v18);
    v16 = v17;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v16);
    operator new();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_196914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  *(v32 - 96) = &a9;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v32 - 96));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::~ImplToFst(&a19);
  (*(*v31 + 80))(v31);
  kaldi::Matrix<float>::~Matrix(&a24);
  kaldi::FasterDecoder::~FasterDecoder(&a29, v34, v35, v36, v37);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>>,int>(uint64_t a1, uint64_t *a2, uint64_t *a3, float32x2_t *a4, int a5)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v10 = (*(*a1 + 24))(a1);
  if (v10 == -1)
  {
    if (a2)
    {
      a2[1] = *a2;
    }

    if (a3)
    {
      a3[1] = *a3;
    }

    if (a4)
    {
      *a4 = vneg_f32(0x7F0000007FLL);
    }

    v17 = 1;
  }

  else
  {
    for (i = 0; ; i = vadd_f32(i, v14))
    {
      (*(*a1 + 32))(&v25, a1, v10);
      v34 = *(&v25 + 1);
      LODWORD(v22[0]) = v25;
      v33 = 2139095040;
      v32 = INFINITY;
      v12.n128_u32[0] = v25;
      if (*&v25 != INFINITY)
      {
        break;
      }

      v12.n128_f32[0] = v34;
      if (v34 != v32)
      {
        break;
      }

      if ((*(*a1 + 40))(a1, v10, v34) != 1)
      {
        goto LABEL_25;
      }

      v24 = 0;
      (*(*a1 + 136))(a1, v10, v22);
      if (v22[0])
      {
        v13 = (*(*v22[0] + 32))(v22[0]);
      }

      else
      {
        v13 = v22[1] + 20 * v24;
      }

      v14 = *(v13 + 8);
      if (*v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = a5 == 0;
      }

      if (!v15)
      {
        std::vector<int>::push_back[abi:ne200100](&v29, v13);
      }

      if (*(v13 + 4))
      {
        v16 = 0;
      }

      else
      {
        v16 = a5 == 0;
      }

      if (!v16)
      {
        std::vector<int>::push_back[abi:ne200100](&__p, (v13 + 4));
      }

      v10 = *(v13 + 16);
      if (v22[0])
      {
        (*(*v22[0] + 8))(v22[0]);
      }

      else if (v23)
      {
        --*v23;
      }
    }

    v20 = HIDWORD(v25);
    v21 = v25;
    if ((*(*a1 + 40))(a1, v10, v12))
    {
LABEL_25:
      v17 = 0;
      goto LABEL_42;
    }

    if (a2 && &v29 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, v29, v30, (v30 - v29) >> 2);
    }

    if (a3 && &__p != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, __p, v27, (v27 - __p) >> 2);
    }

    v18.i32[0] = v21;
    if (a4)
    {
      v18.i32[1] = v20;
      *a4 = vadd_f32(i, v18);
    }

    v17 = 1;
LABEL_42:
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return v17;
}

void sub_196D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::FasterDecoder::~FasterDecoder(kaldi::FasterDecoder *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 1);
  if (v6 != -1)
  {
    v7 = *(this + 3);
    do
    {
      v8 = (v7 + 16 * v6);
      v8[1] = 0;
      v6 = *v8;
    }

    while (v6 != -1);
  }

  v9 = *this;
  *this = 0;
  *(this + 1) = -1;
  kaldi::FasterDecoder::ClearToks(this, v9, a3, a4, a5);
  v10 = *(this + 17);
  if (v10)
  {
    *(this + 18) = v10;
    operator delete(v10);
  }

  v11 = *(this + 14);
  if (v11)
  {
    *(this + 15) = v11;
    operator delete(v11);
  }

  kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::~HashList(this);
}

uint64_t *std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_196ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void (__cdecl ***std::ofstream::basic_ofstream(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2, int a3))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1971B0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***std::ifstream::basic_ifstream(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2, int a3))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_197380(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t utils::update_progress_bar(uint64_t result, int a2, int a3, int a4, uint64_t **a5)
{
  if (!(result % (a2 / a3 + 1)))
  {
    v7 = result / a2;
    v8 = (v7 * a4);
    v9 = *(a5 + 23);
    if (v9 >= 0)
    {
      v10 = a5;
    }

    else
    {
      v10 = *a5;
    }

    if (v9 >= 0)
    {
      v11 = *(a5 + 23);
    }

    else
    {
      v11 = a5[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, v10, v11);
    printf(" %3d%% [", (v7 * 100.0));
    if (v8 >= 1)
    {
      v12 = v8;
      do
      {
        putchar(61);
        --v12;
      }

      while (v12);
    }

    v13 = __OFSUB__(a4, v8);
    v14 = a4 - v8;
    if (!((v14 < 0) ^ v13 | (v14 == 0)))
    {
      do
      {
        putchar(32);
        --v14;
      }

      while (v14);
    }

    return printf("]\n\x1B[F\x1B[J");
  }

  return result;
}

uint64_t *std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<float> &,std::vector<float> &>,std::tuple<std::vector<float>,std::vector<float>>,0ul,1ul>(uint64_t **a1, char **a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  result = a1[1];
  if (result != (a2 + 3))
  {
    v6 = a2[3];
    v7 = a2[4];

    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, v6, v7, (v7 - v6) >> 2);
  }

  return result;
}

void SiriTTS::ForcedAlignment::FeatureExtractorWav::compute(int **a2@<X1>, uint64_t *x8_0@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v14, v5, v6, v6 - v5);
  v7 = (a2[1] - *a2) >> 2;
  v13[2] = 0;
  v13[0] = v14;
  v13[1] = v7;
  kaldi::Matrix<float>::Matrix(v12);
  kaldi::FbankOptions::FbankOptions(v10);
  v11 = 80;
  kaldi::Fbank::Fbank(v9, v10);
  kaldi::Fbank::Compute(v9, v13, v12, 0, 1.0, 0, 0);
  kaldi::Matrix<float>::Matrix(v8, v12);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v8, x8_0);
  kaldi::Matrix<float>::~Matrix(v8);
  kaldi::Fbank::~Fbank(v9);
  kaldi::FbankOptions::~FbankOptions(v10);
  kaldi::Matrix<float>::~Matrix(v12);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_197624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Fbank::~Fbank(&a14);
  kaldi::FbankOptions::~FbankOptions(&a37);
  kaldi::Matrix<float>::~Matrix(v37 - 120);
  v39 = *(v37 - 56);
  if (v39)
  {
    *(v37 - 48) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

double kaldi::FbankOptions::FbankOptions(kaldi::FbankOptions *this)
{
  *this = off_271040;
  *(this + 8) = xmmword_21FD50;
  *(this + 6) = 1064849900;
  *(this + 28) = 1;
  *(this + 55) = 5;
  strcpy(this + 32, "povey");
  *(this + 28) = 257;
  *(this + 60) = 0x17BF800000;
  *(this + 68) = xmmword_21FD60;
  *(this + 42) = 0;
  *(this + 88) = 0;
  *(this + 23) = 0;
  *&result = 16842753;
  *(this + 24) = 16842753;
  return result;
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19776C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AutocF0::AutocF0(uint64_t a1, __int128 *a2)
{
  *(a1 + 32) = 0u;
  v3 = a1 + 32;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 144) = *(a2 + 2);
    *(a1 + 128) = v4;
  }

  *(a1 + 192) = xmmword_21FD80;
  *(a1 + 208) = xmmword_21FD90;
  *(a1 + 168) = xmmword_21FDA0;
  *(a1 + 152) = xmmword_21FDB0;
  *(a1 + 272) = 16000;
  *(a1 + 316) = 0x1F400001388;
  *(a1 + 224) = xmmword_21FDC0;
  *(a1 + 240) = xmmword_21FDE0;
  *(a1 + 256) = xmmword_21FDF0;
  *(a1 + 4) = 0;
  *(v3 + 252) = xmmword_21FDD0;
  *(v3 + 268) = xmmword_21FE00;
  *(a1 + 24) = 0;
  return a1;
}

void sub_197884(_Unwind_Exception *a1)
{
  v5 = v1[13];
  if (v5)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  AutocF0::AutocF0(v3, v2 + 3, v2, v1);
  _Unwind_Resume(a1);
}

void AutocF0::estimate_pitch(unsigned int *a1@<X0>, uint64_t a2@<X1>, DSP *a3@<X2>, uint64_t *a4@<X8>)
{
  clock();
  *a1 = a3;
  a1[69] = a3;
  v490 = 0uLL;
  v491 = 0;
  if (a1[6] && a1[68] != a3)
  {
    v486 = 0;
    v487 = 0;
    v485 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v485, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    DSP::resample(&v485, *a1, a1[68], &v488);
    if (v490)
    {
      *(&v490 + 1) = v490;
      operator delete(v490);
    }

    v490 = v488;
    v491 = v489;
    v489 = 0;
    v488 = 0uLL;
    if (v485)
    {
      v486 = v485;
      operator delete(v485);
    }

    a3 = a1[68];
    *a1 = a3;
  }

  else if (&v490 != a2)
  {
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(&v490, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    a3 = *a1;
  }

  DSP::get_highpass_70hz_coefficients(a3);
  v482 = 0;
  v480 = 0;
  v481 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v480, v488, *(&v488 + 1), (*(&v488 + 1) - v488) >> 3);
  v478 = 0;
  __p = 0;
  v479 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, v490, *(&v490 + 1), (*(&v490 + 1) - v490) >> 1);
  DSP::high_pass_filter(&v480, &__p, &__dst);
  if (__p)
  {
    v478 = __p;
    operator delete(__p);
  }

  if (v480)
  {
    v481 = v480;
    operator delete(v480);
  }

  v7 = *a1;
  v8 = llround(*(a1 + 19) / 1000.0 * v7);
  v9 = __dst;
  v10 = (v484 - __dst) >> 1;
  if (v10 < v8)
  {
    v388 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v388);
    exit(1);
  }

  v11 = *(a1 + 20);
  v12 = v8;
  if (v484 != __dst)
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = 0.0;
    v14 = __dst;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      if (v17 < 0)
      {
        v16 = -v16;
      }

      if (v13 < v16)
      {
        v13 = v16;
      }

      --v15;
    }

    while (v15);
    v18 = 32767.0 / v13 * *(a1 + 31);
    v19 = __dst;
    do
    {
      *v19 = (v18 * *v19);
      ++v19;
      --v10;
    }

    while (v10);
  }

  if (a1[6] && (v20 = a1[69], v20 < a1[68]))
  {
    v21 = v20 / 1000.0;
    v433 = powf(v21, 0.2);
    v22.f32[0] = powf(v21, 0.71429);
    v22.f32[1] = v433;
    *(a1 + 13) = vdivq_f64(*(a1 + 13), vmulq_f64(vcvtq_f64_f32(v22), xmmword_21FE10));
    v23 = v7 / 1000.0;
  }

  else
  {
    v23 = v7 / 1000.0;
    v24 = v7 / 1000.0;
    v434 = powf(v24, 0.2);
    v25.f32[0] = powf(v24, 0.71429);
    v25.f32[1] = v434;
    *(a1 + 13) = vdivq_f64(*(a1 + 13), vmulq_f64(vcvtq_f64_f32(v25), xmmword_21FE10));
  }

  v26 = a1;
  v27 = llround(v7 / *(a1 + 22));
  v28 = 1.0;
  if (*(a1 + 21) >= 1.0)
  {
    v28 = *(a1 + 21);
  }

  v29 = llround(v7 / v28);
  v30 = 2 * v8 - 1;
  if (v30 < v27)
  {
    v27 = 2 * v8 - 1;
  }

  v428 = v27;
  v414 = v29;
  if (v30 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 2 * v8 - 1;
  }

  v420 = v31;
  v32 = (v23 + 4.0);
  if ((v32 & 0x80000001) == 1)
  {
    ++v32;
  }

  a1[70] = v32;
  v33 = llround(vcvtd_n_f64_s32(v8, 1uLL));
  LOWORD(v476[0]) = 0;
  std::vector<short>::insert(&__dst, v9, v33, v476);
  LOWORD(v476[0]) = 0;
  std::vector<short>::insert(&__dst, v484, v33, v476);
  v423 = llround(v11 / 1000.0 * v7);
  v416 = (v484 - __dst) >> 1;
  v34 = a1[70];
  v35 = (a1 + 14);
  v36 = (v416 / v423 - v8 / v423 + 1);
  std::vector<std::pair<int,int>>::resize(a1 + 7, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 4, v36);
  std::vector<double>::vector[abi:ne200100](v476, v36);
  v474[0] = 0;
  std::vector<double>::vector[abi:ne200100](v475, v36, v474);
  v473[0] = 0;
  std::vector<double>::vector[abi:ne200100](v474, v36, v473);
  std::vector<double>::vector[abi:ne200100](v473, v36);
  std::vector<double>::vector[abi:ne200100](&__b, v420 + 1);
  std::vector<double>::vector[abi:ne200100](v470, v8);
  v418 = v8 / 2;
  std::vector<double>::vector[abi:ne200100](v469, v8 / 2);
  std::vector<double>::vector[abi:ne200100](&v467, v8);
  v37 = v34 + v8;
  std::vector<double>::vector[abi:ne200100](v466, v37);
  std::vector<double>::vector[abi:ne200100](&v464, v37);
  v422 = a1 + 32;
  if (*(a1 + 151) < 0)
  {
    v40 = *(a1 + 17);
    v38 = 0.0;
    if (v40 != 4)
    {
      if (v40 != 5)
      {
        goto LABEL_57;
      }

      v39 = *v422;
      goto LABEL_46;
    }

    v46 = *v422;
LABEL_54:
    if (*v46 != 812016481)
    {
      goto LABEL_57;
    }

    v44 = 64;
    v45 = 48;
    goto LABEL_56;
  }

  v38 = 0.0;
  if (*(a1 + 151) == 4)
  {
    v46 = a1 + 32;
    goto LABEL_54;
  }

  v39 = a1 + 32;
  if (*(a1 + 151) != 5)
  {
    goto LABEL_57;
  }

LABEL_46:
  v41 = *v39;
  v42 = *(v39 + 4);
  if (v41 == 1718182249 && v42 == 48)
  {
    v44 = 66;
    v45 = 50;
LABEL_56:
    *(a1 + 23) = *&a1[v45];
    v38 = *&a1[v44];
  }

LABEL_57:
  DSP::window_blackman(v12, v463);
  if (a1[76])
  {
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Stage 1: Start frame-wise processing", 36);
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(v460, &std::ctype<char>::id);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(v460);
    std::ostream::put();
    std::ostream::flush();
  }

  v391 = v38;
  v394 = 2 * v12;
  v396 = a1 + 14;
  v432 = v34;
  if (v416 > v12)
  {
    v400 = v416 / v423 - v12 / v423 + 1;
    v49 = 0;
    v50 = 0;
    v405 = 0;
    v51 = v12 + 3;
    if (v12 >= 0)
    {
      v51 = v12;
    }

    v52 = v418;
    v408 = v12 + 1;
    v435 = 8 * v428;
    v35 = 8 * v420 + 8;
    v397 = 8 * v34;
    if (v428 <= v420)
    {
      v53 = v420;
    }

    else
    {
      v53 = v428;
    }

    __len = v34 + v12;
    v402 = v12;
    v403 = v37;
    v54 = 2 * v12;
    v55 = v418 + (v51 >> 2);
    v56 = -v34;
    v390 = v12 - 1;
    v413 = v12 - v428;
    v411 = v53 - v428 + 1;
    v398 = v51 >> 2;
    v430 = v51 >> 2;
    while (1)
    {
      if (v26[76] == 1 && v26[77] == 1 && v26[79] < v400)
      {
        v57 = v26[80];
        v58 = v26[78];
        boost::filesystem::path::path(v461, "Progress of stage 1/2: ");
        utils::update_progress_bar(v50, v400, v57, v58, v461);
        if (v462 < 0)
        {
          operator delete(v461[0]);
        }
      }

      *(*(v26 + 4) + 8 * v50) = v49 / *v26;
      if (v12)
      {
        v59 = 2 * v55 - 2 * v430;
        v60 = v54 - 2 * v49;
        v61 = __dst;
        v62 = v470[0];
        v63 = (__dst + 2 * v49);
        do
        {
          v64 = *v63++;
          *v62++ = v64;
          v60 -= 2;
        }

        while (v60);
        if (v408 >= 3)
        {
          v65 = &v61[2 * v49 + 2 * v398];
          v66 = v469[0];
          do
          {
            v67 = *v65;
            v65 += 2;
            *v66++ = v67;
            v59 -= 2;
          }

          while (v59);
        }
      }

      cblas_ddot_NEWLAPACK();
      v69 = v68;
      v70 = sqrt(v68 / v52);
      *(v473[0] + v50) = v70;
      v71 = DSP::gradient_index(v469);
      v72 = v474[0];
      *(v474[0] + v50) = v71 * 0.5 / v70;
      if (v69 == 0.0)
      {
        v72[v50] = *(v26 + 27) + *(v26 + 27);
      }

      v73 = DSP::zero_crossing_rate_plus_zero(v469);
      *(v475[0] + v50) = v73 / v52;
      if (v49 - v432 < 1)
      {
        v78 = v466[0];
        if (v432 >= 1)
        {
          bzero(v466[0], v397);
        }

        if (v12 >= 1)
        {
          v79 = v470[0];
          v80 = &v78[8 * v432];
          v81 = v402;
          do
          {
            v82 = *v79++;
            *v80 = v82;
            v80 += 8;
            --v81;
          }

          while (v81);
        }
      }

      else if (__len >= 1)
      {
        v74 = v466[0];
        v75 = (__dst + 2 * v56);
        v76 = v403;
        do
        {
          v77 = *v75++;
          *v74++ = v77;
          --v76;
        }

        while (v76);
      }

      if (*(v26 + 151) < 0)
      {
        v84 = *(v26 + 17);
        if (v84 != 4)
        {
          if (v84 != 5)
          {
            goto LABEL_123;
          }

          v83 = *v422;
LABEL_96:
          v85 = *v83;
          v86 = *(v83 + 4);
          if (v85 == 1718182249 && v86 == 48)
          {
            DSP::IAIF(v470, v466, v463, v26[70], v460, *(v26 + 30));
            v73 = v467;
            if (v467)
            {
              *(&v467 + 1) = v467;
              operator delete(v467);
            }

            v467 = *&v460[0].__locale_;
            locale = v460[2].__locale_;
          }

          goto LABEL_123;
        }

        v88 = *v422;
      }

      else
      {
        if (*(v26 + 151) != 4)
        {
          v83 = v422;
          if (*(v26 + 151) != 5)
          {
            goto LABEL_123;
          }

          goto LABEL_96;
        }

        v88 = v422;
      }

      if (*v88 == 812016481)
      {
        if (v12 >= 1)
        {
          v89 = v470[0];
          v90 = v463[0];
          v91 = v402;
          do
          {
            v92 = *v90++;
            *v89 = *v89 * v92;
            ++v89;
            --v91;
          }

          while (v91);
        }

        DSP::LP(v470, v26[70], v460);
        if (v405)
        {
          operator delete(v405);
        }

        v458 = 0;
        v459 = 0;
        v457 = 0;
        v405 = v460[0].__locale_;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v457, v460[0].__locale_, v460[1].__locale_, (v460[1].__locale_ - v460[0].__locale_) >> 3);
        DSP::firfilter(&v457, v466, v460);
        if (v464)
        {
          *(&v464 + 1) = v464;
          operator delete(v464);
        }

        v464 = *&v460[0].__locale_;
        v465 = v460[2].__locale_;
        memset(v460, 0, sizeof(v460));
        if (v457)
        {
          v458 = v457;
          operator delete(v457);
        }

        if (v12 >= 1)
        {
          v93 = v467;
          v94 = (v464 + 8 * v432);
          v95 = v402;
          do
          {
            v96 = *v94++;
            *v93++ = v96;
            --v95;
          }

          while (v95);
        }

        DSP::remove_mean(&v467);
        if (v12 >= 2)
        {
          v97 = (v467 + 8);
          v98 = *v467;
          v99 = v390;
          do
          {
            v98 = *v97 + v98 * 0.95;
            *v97++ = v98;
            --v99;
          }

          while (v99);
        }

        v73 = DSP::remove_mean(&v467);
      }

LABEL_123:
      v424 = v50;
      v100 = v56;
      v426 = v49;
      v101 = v55;
      v102 = v54;
      v103 = v35;
      v104 = v12;
      v105 = v26;
      v106 = __b;
      if (v472 - __b >= 1)
      {
        memset_pattern16(__b, &unk_21FE20, v472 - __b);
      }

      v107 = v411;
      v108 = 8 * v428;
      v109 = v413;
      if (v428 <= v414)
      {
        do
        {
          v73 = cblas_ddot_NEWLAPACK();
          v106 = __b;
          *(__b + v108) = v110;
          --v109;
          v108 += 8;
          --v107;
        }

        while (v107);
      }

      v111 = &v106[v435];
      v35 = v103;
      if (v435 == v103)
      {
        v26 = v105;
        v12 = v104;
        v114 = v102;
      }

      else
      {
        v112 = &v106[v103];
        v113 = v111 + 1;
        v26 = v105;
        v114 = v102;
        if (v111 + 1 != &v106[v35])
        {
          v115 = *v111;
          v116 = v111 + 1;
          v12 = v104;
          v117 = v100;
          do
          {
            v118 = *v116++;
            v119 = v118;
            if (v115 < v118)
            {
              v115 = v119;
              v111 = v113;
            }

            v113 = v116;
          }

          while (v116 != v112);
          v120 = v101;
          goto LABEL_137;
        }

        v12 = v104;
      }

      v120 = v101;
      v117 = v100;
LABEL_137:
      AutocF0::remove_false_flanks(v73, &__b, (v111 - v106) >> 3, v428, v420);
      v121 = (__b + v435);
      if (v435 != v35)
      {
        v122 = v121 + 1;
        if (v121 + 1 != (__b + v35))
        {
          v123 = *v121;
          v124 = v121 + 1;
          do
          {
            v125 = *v124++;
            v126 = v125;
            if (v123 < v125)
            {
              v123 = v126;
              v121 = v122;
            }

            v122 = v124;
          }

          while (v124 != (__b + v35));
        }
      }

      v127 = ((v121 - __b) >> 3);
      if (v127 == v428 || v121 - __b == -8 || v127 == v420)
      {
        v127 = INFINITY;
      }

      *(*(v26 + 7) + 8 * v424) = *v26 / v127;
      v50 = v424 + 1;
      v49 = v426 + v423;
      v54 = v114 + 2 * v423;
      v55 = v120 + v423;
      v430 += v423;
      v56 = v117 + v423;
      if (v416 <= v12 + (v424 + 1) * v423)
      {
        goto LABEL_155;
      }
    }
  }

  v405 = 0;
LABEL_155:
  DSP::medfilt(v396, 5, v460);
  v130 = *v396;
  if (*v396)
  {
    *(v26 + 8) = v130;
    operator delete(v130);
    *v396 = 0;
    *(v396 + 1) = 0;
    *(v396 + 2) = 0;
  }

  v131 = v460[0].__locale_;
  *(v26 + 7) = v460[0];
  v132 = v460[1].__locale_;
  *(v26 + 4) = *&v460[1].__locale_;
  if (v132 != v131)
  {
    v133 = (v132 - v131) >> 3;
    v134 = v473[0];
    v135 = v475[0];
    v136 = v474[0];
    if (v133 <= 1)
    {
      v133 = 1;
    }

    do
    {
      if (*v134 < *(v26 + 23))
      {
        *v131 = 0;
      }

      if (*v135 > *(v26 + 26))
      {
        *v131 = 0;
      }

      if (*v136 > *(v26 + 27))
      {
        *v131 = 0;
      }

      v131 = (v131 + 8);
      ++v136;
      ++v135;
      ++v134;
      --v133;
    }

    while (v133);
  }

  DSP::medfilt(v396, 5, v460);
  v137 = *v396;
  if (*v396)
  {
    *(v26 + 8) = v137;
    operator delete(v137);
    *v396 = 0;
    *(v396 + 1) = 0;
    *(v396 + 2) = 0;
  }

  v138 = v460[0].__locale_;
  *(v26 + 7) = v460[0];
  v139 = v460[1].__locale_;
  *(v26 + 4) = *&v460[1].__locale_;
  memset(v460, 0, sizeof(v460));
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v460, v138, v139, (v139 - v138) >> 3);
  std::__sort<std::__less<double,double> &,double *>();
  v140 = (v460[1].__locale_ - v460[0].__locale_) >> 3;
  if (v460[1].__locale_ == v460[0].__locale_)
  {
    v141 = 0;
    v145 = 1;
    v146 = 0.0;
  }

  else
  {
    if (v140 <= 1)
    {
      v141 = 1;
    }

    else
    {
      v141 = (v460[1].__locale_ - v460[0].__locale_) >> 3;
    }

    if (*v460[0].__locale_ == 0.0)
    {
      v142 = 1;
      while (1)
      {
        v143 = v142;
        if (v141 == v142)
        {
          break;
        }

        v144 = *(v460[0].__locale_ + v142++);
        if (v144 != 0.0)
        {
          v141 = v143;
          break;
        }
      }

      v145 = v140 <= v143;
    }

    else
    {
      v141 = 0;
      v145 = 0;
    }

    v146 = v141;
  }

  v147 = llround(v146 + vcvtd_n_f64_u64(v140 - v141, 1uLL));
  v148 = ((v460[1].__locale_ - v460[0].__locale_) >> 3) - 1;
  if (v148 >= v147)
  {
    v148 = v147;
  }

  v149 = *(v460[0].__locale_ + v148);
  v150 = 500.0;
  v151 = 50.0;
  if (!v145 && v149 > 0.0)
  {
    v150 = v391 * v149;
    v152 = v149;
    v151 = powf(v152, 1.1) / 5.0;
  }

  *(v26 + 21) = v151;
  *(v26 + 22) = v150;
  v153 = *v26;
  v154 = llround(v153 / v151);
  v155 = v394;
  if (v394 >= v154)
  {
    v155 = v154;
  }

  if (v155 <= v418)
  {
    v155 = v418;
  }

  if (v155 <= v154 + 1)
  {
    v156 = (v154 + 1);
  }

  else
  {
    v156 = v155;
  }

  LODWORD(v35) = llround(vcvtd_n_f64_s32(v156 - v12, 1uLL));
  if (v35 < 1)
  {
    v157 = v484;
    if ((v35 & 0x80000000) != 0)
    {
      v158 = v156;
      v159 = v26;
      v160 = __dst;
      v161 = 2 * v35;
      v162 = -2 * v35;
      v163 = v484 + v161 - __dst;
      if (v484 != __dst - v161)
      {
        memmove(__dst, __dst - v161, v484 + v161 - __dst);
      }

      v484 = &v163[v160];
      v164 = &v163[v160 + v161];
      v165 = (v484 - &v164[v162]);
      if (v484 != &v164[v162])
      {
        memmove(v164, &v164[v162], v484 - &v164[v162]);
      }

      v157 = &v165[v164];
      v484 = &v165[v164];
      v26 = v159;
      v156 = v158;
    }
  }

  else
  {
    LOWORD(v455) = 0;
    std::vector<short>::insert(&__dst, __dst, v35, &v455);
    LOWORD(v455) = 0;
    std::vector<short>::insert(&__dst, v484, v35, &v455);
    v157 = v484;
  }

  v166 = __dst;
  if (v26[76] == 1)
  {
    v167 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Re-estimating f0 limits and frame size:", 39);
    std::ios_base::getloc((v167 + *(*v167 - 24)));
    v168 = std::locale::use_facet(&v455, &std::ctype<char>::id);
    (v168->__vftable[2].~facet_0)(v168, 10);
    std::locale::~locale(&v455);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "    new f0min: ", 15);
    v169 = std::ostream::operator<<();
    v170 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v169, " Hz", 3);
    std::ios_base::getloc((v170 + *(*v170 - 24)));
    v171 = std::locale::use_facet(&v455, &std::ctype<char>::id);
    (v171->__vftable[2].~facet_0)(v171, 10);
    std::locale::~locale(&v455);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "    new f0max: ", 15);
    v172 = std::ostream::operator<<();
    v173 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v172, " Hz", 3);
    std::ios_base::getloc((v173 + *(*v173 - 24)));
    v174 = std::locale::use_facet(&v455, &std::ctype<char>::id);
    (v174->__vftable[2].~facet_0)(v174, 10);
    std::locale::~locale(&v455);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "    new frame size: ", 20);
    v175 = std::ostream::operator<<();
    v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v175, " ms", 3);
    std::ios_base::getloc((v176 + *(*v176 - 24)));
    v177 = std::locale::use_facet(&v455, &std::ctype<char>::id);
    (v177->__vftable[2].~facet_0)(v177, 10);
    std::locale::~locale(&v455);
    std::ostream::put();
    std::ostream::flush();
  }

  v419 = (v157 - v166) >> 1;
  v395 = v419 / v423 - v156 / v423;
  v178 = (v395 + 1);
  std::vector<std::pair<int,int>>::resize(v396, v178);
  std::vector<std::pair<int,int>>::resize(v476, v178);
  std::vector<std::pair<int,int>>::resize(v26 + 4, v178);
  std::vector<std::pair<int,int>>::resize(v475, v178);
  std::vector<std::pair<int,int>>::resize(v473, v178);
  std::vector<std::pair<int,int>>::resize(v474, v178);
  std::vector<std::pair<int,int>>::resize(v26 + 10, v178);
  std::vector<std::pair<int,int>>::resize(v26 + 13, v178);
  v179 = llround(v153 / v150);
  v180 = 2 * v156 - 1;
  if (v180 >= v179)
  {
    v181 = v179;
  }

  else
  {
    v181 = v180;
  }

  if (v180 >= v154)
  {
    v182 = v154;
  }

  else
  {
    v182 = 2 * v156 - 1;
  }

  v415 = v182;
  v183 = v182 + 1;
  std::vector<std::pair<int,int>>::resize(&__b, v182 + 1);
  v184 = v156;
  std::vector<std::pair<int,int>>::resize(v470, v156);
  v417 = v156 / 2;
  std::vector<std::pair<int,int>>::resize(v469, v156 / 2);
  std::vector<std::pair<int,int>>::resize(&v467, v156);
  v410 = v156 + v432;
  std::vector<std::pair<int,int>>::resize(v466, v410);
  std::vector<std::pair<int,int>>::resize(&v464, v410);
  DSP::window_blackman(v156, &v455);
  v185 = v463[0];
  if (v463[0])
  {
    v463[1] = v463[0];
    operator delete(v463[0]);
  }

  *v463 = v455;
  v463[2] = v456;
  if (v156 > ((v484 - __dst) >> 1))
  {
    v389 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v389);
    exit(1);
  }

  if (v26[76])
  {
    v186 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Stage 2: Re-estimate f0 from resized frames with new limits", 59);
    std::ios_base::getloc((v186 + *(*v186 - 24)));
    v187 = std::locale::use_facet(&v455, &std::ctype<char>::id);
    (v187->__vftable[2].~facet_0)(v187, 10);
    std::locale::~locale(&v455);
    std::ostream::put();
    v185 = std::ostream::flush();
  }

  v404 = (v395 + 1);
  if (v419 > v156)
  {
    v412 = v149;
    v188 = 0;
    v189 = 0;
    v409 = v156 + 1;
    v190 = v417;
    v191 = v181;
    v192 = v415;
    v399 = v183;
    v193 = v181;
    v436 = 8 * v415 + 8;
    __lena = 8 * v181 - 8;
    v431 = 2 * v156;
    v429 = v417 + v156 / 4;
    v425 = -v432;
    v392 = (v156 - 1);
    v401 = v156 / 4;
    v427 = v156 / 4;
    v194 = 8 * v181;
    do
    {
      if (v26[76] == 1 && v26[77] == 1 && v26[79] < v404)
      {
        v195 = v26[80];
        v196 = v26[78];
        boost::filesystem::path::path(v453, "Progress of stage 2/2: ");
        utils::update_progress_bar(v189, v404, v195, v196, v453);
        if (v454 < 0)
        {
          operator delete(v453[0]);
        }
      }

      *(*(v26 + 4) + 8 * v189) = (v188 / *v26);
      if (v156)
      {
        v197 = 2 * v429 - 2 * v427;
        v198 = v431 - 2 * v188;
        v199 = __dst;
        v200 = v470[0];
        v201 = (__dst + 2 * v188);
        do
        {
          v202 = *v201++;
          *v200++ = v202;
          v198 -= 2;
        }

        while (v198);
        if (v409 >= 3)
        {
          v203 = &v199[2 * v188 + 2 * v401];
          v204 = v469[0];
          do
          {
            v205 = *v203;
            v203 += 2;
            *v204++ = v205;
            v197 -= 2;
          }

          while (v197);
        }
      }

      cblas_ddot_NEWLAPACK();
      v207 = v206;
      *(v473[0] + v189) = sqrt(v206 / v417);
      v208 = DSP::gradient_index(v469);
      v209 = v474[0];
      *(v474[0] + v189) = v208 * 0.5 / sqrt(v207 / v190);
      if (v207 == 0.0)
      {
        v209[v189] = *(v26 + 27) + *(v26 + 27);
      }

      v210 = DSP::zero_crossing_rate_plus_zero(v469);
      *(v475[0] + v189) = v210 / v190;
      if (v188 - v432 < 1)
      {
        v215 = v466[0];
        if (v432 >= 1)
        {
          bzero(v466[0], 8 * v432);
        }

        if (v156 >= 1)
        {
          v216 = v470[0];
          v217 = &v215[8 * v432];
          v218 = v156;
          do
          {
            v219 = *v216++;
            *v217 = v219;
            v217 += 8;
            --v218;
          }

          while (v218);
        }
      }

      else if (v410 >= 1)
      {
        v211 = v466[0];
        v212 = (__dst + 2 * v425);
        v213 = v410;
        do
        {
          v214 = *v212++;
          *v211++ = v214;
          --v213;
        }

        while (v213);
      }

      if (*(v26 + 151) < 0)
      {
        v221 = *(v26 + 17);
        if (v221 == 4)
        {
          v225 = *v422;
LABEL_257:
          if (*v225 == 812016481)
          {
            if (v156 >= 1)
            {
              v226 = v470[0];
              v227 = v463[0];
              v228 = v156;
              do
              {
                v229 = *v227++;
                *v226 = *v226 * v229;
                ++v226;
                --v228;
              }

              while (v228);
            }

            DSP::LP(v470, v26[70], &v455);
            if (v405)
            {
              operator delete(v405);
            }

            v451 = 0;
            v452 = 0;
            v450 = 0;
            v405 = v455;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v450, v455, *(&v455 + 1), (*(&v455 + 1) - v455) >> 3);
            DSP::firfilter(&v450, v466, &v455);
            if (v464)
            {
              *(&v464 + 1) = v464;
              operator delete(v464);
            }

            v464 = v455;
            v465 = v456;
            v456 = 0;
            v455 = 0uLL;
            if (v450)
            {
              v451 = v450;
              operator delete(v450);
            }

            if (v156 >= 1)
            {
              v230 = v467;
              v231 = (v464 + 8 * v432);
              v232 = v156;
              do
              {
                v233 = *v231++;
                *v230++ = v233;
                --v232;
              }

              while (v232);
            }

            DSP::remove_mean(&v467);
            if (v156 >= 2)
            {
              v234 = (v467 + 8);
              v235 = *v467;
              v236 = v392;
              do
              {
                v235 = *v234 + v235 * 0.95;
                *v234++ = v235;
                --v236;
              }

              while (v236);
            }

            DSP::remove_mean(&v467);
          }

          goto LABEL_274;
        }

        if (v221 == 5)
        {
          v220 = *v422;
LABEL_247:
          v222 = *v220;
          v223 = *(v220 + 4);
          if (v222 == 1718182249 && v223 == 48)
          {
            DSP::IAIF(v470, v466, v463, v26[70], &v455, *(v26 + 30));
            if (v467)
            {
              *(&v467 + 1) = v467;
              operator delete(v467);
            }

            v467 = v455;
            locale = v456;
          }
        }
      }

      else
      {
        if (*(v26 + 151) == 4)
        {
          v225 = v422;
          goto LABEL_257;
        }

        v220 = v422;
        if (*(v26 + 151) == 5)
        {
          goto LABEL_247;
        }
      }

LABEL_274:
      v237 = v472;
      v238 = __b;
      if (v472 == __b)
      {
        v251 = (v472 - __b) >> 3;
      }

      else
      {
        v421 = v189;
        v239 = v26;
        v240 = v188;
        v241 = v194;
        v242 = v193;
        v243 = v184;
        v244 = v181;
        v245 = 0;
        v246 = v156;
        v247 = 0;
        v248 = v246;
        v249 = v246;
        do
        {
          cblas_ddot_NEWLAPACK();
          v238 = __b;
          *(__b + v245) = v250;
          ++v247;
          v237 = v472;
          v251 = (v472 - v238) >> 3;
          --v249;
          v245 += 8;
        }

        while (v251 > v247);
        v156 = v248;
        v181 = v244;
        v184 = v243;
        v193 = v242;
        v194 = v241;
        v188 = v240;
        v26 = v239;
        v189 = v421;
      }

      v455 = 0uLL;
      v456 = 0;
      v252 = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v455, v238, v237, v251);
      v253 = __b;
      if (v181 >= 2)
      {
        memset_pattern16(__b, &unk_21FE20, __lena);
      }

      v254 = &v253[v436];
      v255 = v472 - &v253[v436];
      if (v255 >= 1)
      {
        memset_pattern16(&v253[v436], &unk_21FE20, v255);
      }

      v256 = &v253[v194];
      if (v194 != v436)
      {
        v257 = v256 + 1;
        if (v256 + 1 != v254)
        {
          v258 = *v256;
          v259 = v256 + 1;
          do
          {
            v260 = *v259++;
            v261 = v260;
            if (v258 < v260)
            {
              v258 = v261;
              v256 = v257;
            }

            v257 = v259;
          }

          while (v259 != v254);
        }
      }

      AutocF0::remove_false_flanks(v252, &__b, (v256 - v253) >> 3, v181, v415);
      v262 = __b;
      v263 = (__b + v194);
      v264 = (__b + v436);
      v265 = (__b + v194 + 8);
      v266 = v194 == v436 || v265 == v264;
      v267 = v266;
      v268 = (__b + v194);
      if (!v266)
      {
        v269 = *v263;
        v270 = (__b + v194 + 8);
        v268 = (__b + v194);
        v271 = v270;
        do
        {
          v272 = *v271++;
          v273 = v272;
          if (v269 < v272)
          {
            v269 = v273;
            v268 = v270;
          }

          v270 = v271;
        }

        while (v271 != v264);
      }

      v274 = v268 - __b;
      v275 = (v274 >> 3);
      if (v275 == v191 || v274 == -8 || v275 == v192)
      {
        v275 = INFINITY;
      }

      if (fabs(v275) != INFINITY)
      {
        v278 = *(__b + (v275 + -1.0));
        if (fabs(v278) != INFINITY)
        {
          v279 = *(__b + (v275 + 1.0));
          if (fabs(v279) != INFINITY)
          {
            v280 = (*(__b + v275) - v278 - (*(__b + v275) - v279)) / (*(__b + v275) - v278 + *(__b + v275) - v279);
            if (fabs(v280 / v275) < 1.0)
            {
              v281 = v275 + v280 * 0.5;
              if (v281 < v192 && v281 > v191)
              {
                v275 = v281;
              }
            }
          }
        }
      }

      v283 = fabs(v275);
      if (v283 != INFINITY)
      {
        v284 = llround(v275);
        v285 = (v472 - __b) >> 3;
        if (v285 > v284 + 1)
        {
          v286 = v284;
          v287 = (__b + 8 * v284);
          v288 = ~v286 + v285;
          do
          {
            if (*v287 <= v287[1])
            {
              break;
            }

            *v287++ = -INFINITY;
            --v288;
          }

          while (v288);
        }

        v289 = llround(v275 + -1.0);
        if (v181 < v289)
        {
          v290 = v289;
          v291 = &v262[8 * v289];
          v292 = *v291;
          do
          {
            v293 = v292;
            v292 = *(v291 - 1);
            if (v293 <= v292)
            {
              break;
            }

            --v290;
            *v291-- = -INFINITY;
          }

          while (v290 > v193);
        }
      }

      if ((v267 & 1) == 0)
      {
        v294 = *v263;
        v295 = v265;
        do
        {
          v296 = *v295++;
          v297 = v296;
          if (v294 < v296)
          {
            v294 = v297;
            v263 = v265;
          }

          v265 = v295;
        }

        while (v295 != v264);
      }

      v298 = v263 - v262;
      v299 = (v298 >> 3);
      if (v299 == v191 || v298 == -8 || v299 == v192)
      {
        v299 = INFINITY;
      }

      if (fabs(v299) != INFINITY)
      {
        v302 = *&v262[8 * (v299 + -1.0)];
        if (fabs(v302) != INFINITY)
        {
          v303 = *&v262[8 * (v299 + 1.0)];
          if (fabs(v303) != INFINITY)
          {
            v304 = (*&v262[8 * v299] - v302 - (*&v262[8 * v299] - v303)) / (*&v262[8 * v299] - v302 + *&v262[8 * v299] - v303);
            if (fabs(v304 / v299) < 1.0)
            {
              v305 = v299 + v304 * 0.5;
              if (v305 < v192 && v305 > v191)
              {
                v299 = v305;
              }
            }
          }
        }
      }

      v307 = *v26;
      *(*(v26 + 7) + 8 * v189) = v307 / v275;
      *(v476[0] + v189) = v307 / v299;
      *(*(v26 + 10) + 8 * v189) = v307 / v275;
      v447 = 0;
      v448 = 0;
      v449 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v447, v455, *(&v455 + 1), (*(&v455 + 1) - v455) >> 3);
      if (v283 == INFINITY && v26[74] >= 1)
      {
        memset(__src, 0, sizeof(__src));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(__src, v447, v448, (v448 - v447) >> 3);
        v308 = v447;
        v309 = v26[75];
        v310 = (v448 - v447) >> 3;
        if (v448 != v447)
        {
          v311 = 0;
          v312 = -v309;
          if (v310 <= 1)
          {
            v313 = 1;
          }

          else
          {
            v313 = (v448 - v447) >> 3;
          }

          do
          {
            if ((v309 & 0x80000000) != 0)
            {
              v318 = NAN;
            }

            else
            {
              v314 = 0.0;
              v315 = v312;
              v316 = (2 * v309) | 1;
              v317 = 0.0;
              do
              {
                if ((v315 & 0x80000000) == 0 && v310 > v315)
                {
                  v317 = v317 + *(__src[0] + v315);
                  v314 = v314 + 1.0;
                }

                ++v315;
                --v316;
              }

              while (v316);
              v318 = v317 / v314;
            }

            v308[v311] = v308[v311] - v318;
            ++v311;
            ++v312;
          }

          while (v311 != v313);
        }

        v319 = fmax(v191, v309);
        v320 = &v308[v319];
        v321 = fmin(v399, (v310 - v309));
        v322 = &v308[v321];
        v323 = &v308[v319 + 1];
        if (v319 != v321 && v323 != v322)
        {
          v325 = *v320;
          v326 = v320 + 1;
          do
          {
            v327 = *v326++;
            v328 = v327;
            if (v325 < v327)
            {
              v325 = v328;
              v320 = v323;
            }

            v323 = v326;
          }

          while (v326 != v322);
        }

        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v275 = (v320 - v308);
      }

      v329 = v26[75];
      v330 = v447;
      if (v275 == fmax(v191, v329) || ((v331 = fmin(v192, (((v448 - v447) >> 3) - v329)), v275 != -1.0) ? (v332 = v275 == v331) : (v332 = 1), v332))
      {
        v334 = *v26;
        v275 = v334 / v412;
      }

      else
      {
        v334 = *v26;
      }

      *(*(v26 + 10) + 8 * v189) = v334 / v275;
      v333 = v455;
      *(*(v26 + 13) + 8 * v189) = fmax(*(v455 + 8 * v275) / *v455, 0.0);
      if (!v330 || (v448 = v330, operator delete(v330), (v333 = v455) != 0))
      {
        *(&v455 + 1) = v333;
        operator delete(v333);
      }

      ++v189;
      v188 += v423;
      v431 += 2 * v423;
      v429 += v423;
      v427 += v423;
      v425 += v423;
    }

    while (v419 > v184 + v189 * v423);
  }

  AutocF0::voiced_unvoiced_decision(*(v26 + 23), *(v26 + 26), *(v26 + 27), v185, v396, v473, v475, v474, 0);
  DSP::medfilt(v396, 5, &v455);
  v335 = *v396;
  if (*v396)
  {
    *(v26 + 8) = v335;
    operator delete(v335);
    *v396 = 0;
    *(v396 + 1) = 0;
    *(v396 + 2) = 0;
  }

  *(v26 + 14) = v455;
  *(v26 + 9) = v456;
  DSP::medfilt(v26 + 10, 5, &v455);
  v336 = *(v26 + 10);
  if (v336)
  {
    *(v26 + 11) = v336;
    operator delete(v336);
    *(v26 + 10) = 0;
    *(v26 + 11) = 0;
    *(v26 + 12) = 0;
  }

  *(v26 + 5) = v455;
  *(v26 + 12) = v456;
  DSP::medfilt(v26 + 13, 5, &v455);
  v337 = *(v26 + 13);
  if (v337)
  {
    *(v26 + 14) = v337;
    operator delete(v337);
    *(v26 + 13) = 0;
    *(v26 + 14) = 0;
    *(v26 + 15) = 0;
  }

  *(v26 + 26) = v455;
  *(v26 + 15) = v456;
  v338 = v26[73];
  std::vector<double>::vector[abi:ne200100](&v455, 2 * v338);
  v339 = *(v26 + 28);
  v447 = 0;
  v448 = 0;
  v449 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v447, *(v26 + 7), *(v26 + 8), (*(v26 + 8) - *(v26 + 7)) >> 3);
  if (v395 <= 0x7FFFFFFE)
  {
    v340 = 0;
    v341 = -v338;
    do
    {
      v342 = *v396;
      if (*(*v396 + 8 * v340) == 0.0 && *(v476[0] + v340) > 0.0)
      {
        v343 = v455;
        if ((*(&v455 + 1) - v455) >= 1)
        {
          bzero(v455, *(&v455 + 1) - v455);
        }

        v344 = (*(v26 + 8) - v342) >> 3;
        if (v338 + v340 >= v344)
        {
          v344 = v344;
        }

        else
        {
          v344 = (v338 + v340);
        }

        if (((v340 - v338) & ~((v340 - v338) >> 31)) < v344)
        {
          v345 = v341 & ~(v341 >> 31);
          v346 = v343;
          do
          {
            *v346++ = *&v342[8 * v345++];
          }

          while (v345 < v344);
        }

        std::__sort<std::__less<double,double> &,double *>();
        v347 = (*(&v455 + 1) - v455) >> 3;
        if (*v455 == 0.0)
        {
          v348 = 0;
          v349 = ((*(&v455 + 1) - v455) >> 3) - 1;
          while (v347 - 1 != v348)
          {
            v350 = v348 + 1;
            v351 = *(v455 + 8 + 8 * v348++);
            if (v351 != 0.0)
            {
              v349 = v350;
              goto LABEL_412;
            }
          }

          v350 = v347 - 1;
LABEL_412:
          v352 = v349;
        }

        else
        {
          v350 = 0;
          v352 = 0.0;
        }

        v353 = *(v455 + 8 * (floor(v352 + vcvtd_n_f64_u64(v347 - v350, 1uLL)) + -1.0));
        v354 = *(v476[0] + v340);
        if (vabdd_f64(v354, v353) / v353 < v339)
        {
          *(v447 + v340) = v354;
        }
      }

      ++v340;
      ++v341;
    }

    while (v340 < v404);
  }

  if (v396 != &v447)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v396, v447, v448, (v448 - v447) >> 3);
  }

  DSP::medfilt(v396, 5, __src);
  v355 = *v396;
  if (*v396)
  {
    *(v26 + 8) = v355;
    operator delete(v355);
    *v396 = 0;
    *(v396 + 1) = 0;
    *(v396 + 2) = 0;
  }

  v356 = __src[0];
  *(v26 + 7) = __src[0];
  v357 = __src[1];
  *(v26 + 4) = *&__src[1];
  if (v396 != &v447)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v447, v356, v357, (v357 - v356) >> 3);
  }

  if (v395 <= 0x7FFFFFFE)
  {
    v358 = 0;
    v359 = *(v26 + 29);
    v360 = -v338;
    v361 = *v396;
    do
    {
      if (*&v361[8 * v358] > 0.0 && *(v476[0] + v358) > 0.0)
      {
        v362 = v455;
        if ((*(&v455 + 1) - v455) >= 1)
        {
          bzero(v455, *(&v455 + 1) - v455);
        }

        v363 = (*(v26 + 8) - v361) >> 3;
        if (v338 + v358 >= v363)
        {
          v363 = v363;
        }

        else
        {
          v363 = (v338 + v358);
        }

        if (((v358 - v338) & ~((v358 - v338) >> 31)) < v363)
        {
          v364 = v360 & ~(v360 >> 31);
          v365 = v362;
          do
          {
            *v365++ = *&v361[8 * v364++];
          }

          while (v364 < v363);
        }

        std::__sort<std::__less<double,double> &,double *>();
        v366 = (*(&v455 + 1) - v455) >> 3;
        if (*v455 == 0.0)
        {
          v367 = 0;
          v368 = ((*(&v455 + 1) - v455) >> 3) - 1;
          while (v366 - 1 != v367)
          {
            v369 = v367 + 1;
            v370 = *(v455 + 8 + 8 * v367++);
            if (v370 != 0.0)
            {
              v368 = v369;
              goto LABEL_441;
            }
          }

          v369 = v366 - 1;
LABEL_441:
          v371 = v368;
        }

        else
        {
          v369 = 0;
          v371 = 0.0;
        }

        v372 = *(v455 + 8 * (floor(v371 + vcvtd_n_f64_u64(v366 - v369, 1uLL)) + -1.0));
        v361 = *v396;
        if (vabdd_f64(*(*v396 + 8 * v358), v372) / v372 > v359)
        {
          *(v447 + v358) = *(v476[0] + v358);
        }
      }

      ++v358;
      ++v360;
    }

    while (v358 < v404);
  }

  if (v396 != &v447)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v396, v447, v448, (v448 - v447) >> 3);
  }

  DSP::medfilt(v396, 3, __src);
  v373 = *v396;
  if (*v396)
  {
    *(v26 + 8) = v373;
    operator delete(v373);
    *v396 = 0;
    *(v396 + 1) = 0;
    *(v396 + 2) = 0;
  }

  *(v26 + 14) = *__src;
  *(v26 + 9) = __src[2];
  AutocF0::voiced_unvoiced_decision(*(v26 + 23), *(v26 + 26), *(v26 + 27), v373, v396, v473, v475, v474, 1);
  v374 = *(v26 + 5);
  if ((v374 - *(v26 + 4)) >= 9 && *(v374 - 8) == 0.0)
  {
    *(v26 + 5) = v374 - 8;
    *(v26 + 8) -= 8;
    *(v26 + 11) -= 8;
    *(v26 + 14) -= 8;
  }

  DSP::smooth_voiced_pitch_contour(v396, v26[7], __src);
  v375 = *v396;
  if (*v396)
  {
    *(v26 + 8) = v375;
    operator delete(v375);
    *v396 = 0;
    *(v396 + 1) = 0;
    *(v396 + 2) = 0;
  }

  *(v26 + 14) = *__src;
  *(v26 + 9) = __src[2];
  DSP::smooth_voiced_pitch_contour(v26 + 10, v26[7], __src);
  v376 = *(v26 + 10);
  if (v376)
  {
    *(v26 + 11) = v376;
    operator delete(v376);
    *(v26 + 10) = 0;
    *(v26 + 11) = 0;
    *(v26 + 12) = 0;
  }

  *(v26 + 5) = *__src;
  *(v26 + 12) = __src[2];
  v377 = *(v26 + 4);
  v378 = *(v26 + 5);
  memset(__src, 0, sizeof(__src));
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(__src, v377, v378, v378 - v377);
  v379 = *(v26 + 7);
  v380 = *(v26 + 8);
  v444 = 0;
  v445 = 0;
  v443 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v443, v379, v380, v380 - v379);
  v381 = *(v26 + 10);
  v382 = *(v26 + 11);
  v441 = 0;
  v442 = 0;
  v440 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v440, v381, v382, v382 - v381);
  v383 = *(v26 + 13);
  v384 = *(v26 + 14);
  v438 = 0;
  v439 = 0;
  v437 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v437, v383, v384, v384 - v383);
  if (v26[76])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Elapsed time: ", 14);
    clock();
    v385 = std::ostream::operator<<();
    v386 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v385, " s", 2);
    std::ios_base::getloc((v386 + *(*v386 - 24)));
    v387 = std::locale::use_facet(&v492, &std::ctype<char>::id);
    (v387->__vftable[2].~facet_0)(v387, 10);
    std::locale::~locale(&v492);
    std::ostream::put();
    std::ostream::flush();
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a4, __src, &v443, &v440, &v437);
  if (v437)
  {
    v438 = v437;
    operator delete(v437);
  }

  if (v440)
  {
    v441 = v440;
    operator delete(v440);
  }

  if (v443)
  {
    v444 = v443;
    operator delete(v443);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  if (v447)
  {
    v448 = v447;
    operator delete(v447);
  }

  if (v455)
  {
    *(&v455 + 1) = v455;
    operator delete(v455);
  }

  if (v460[0].__locale_)
  {
    v460[1] = v460[0];
    operator delete(v460[0].__locale_);
  }

  if (v463[0])
  {
    v463[1] = v463[0];
    operator delete(v463[0]);
  }

  if (v405)
  {
    operator delete(v405);
  }

  if (v464)
  {
    *(&v464 + 1) = v464;
    operator delete(v464);
  }

  if (v466[0])
  {
    v466[1] = v466[0];
    operator delete(v466[0]);
  }

  if (v467)
  {
    *(&v467 + 1) = v467;
    operator delete(v467);
  }

  if (v469[0])
  {
    v469[1] = v469[0];
    operator delete(v469[0]);
  }

  if (v470[0])
  {
    v470[1] = v470[0];
    operator delete(v470[0]);
  }

  if (__b)
  {
    v472 = __b;
    operator delete(__b);
  }

  if (v473[0])
  {
    v473[1] = v473[0];
    operator delete(v473[0]);
  }

  if (v474[0])
  {
    v474[1] = v474[0];
    operator delete(v474[0]);
  }

  if (v475[0])
  {
    v475[1] = v475[0];
    operator delete(v475[0]);
  }

  if (v476[0])
  {
    v476[1] = v476[0];
    operator delete(v476[0]);
  }

  if (__dst)
  {
    v484 = __dst;
    operator delete(__dst);
  }

  if (v488)
  {
    *(&v488 + 1) = v488;
    operator delete(v488);
  }

  if (v490)
  {
    *(&v490 + 1) = v490;
    operator delete(v490);
  }
}

void sub_19A0A4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 248);
  if (v3)
  {
    *(v1 - 240) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 192);
  if (v4)
  {
    *(v1 - 184) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

char *std::vector<short>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 1)
  {
    v15 = v8 - __src;
    v16 = a1[1];
    v17 = a3;
    if (a3 <= (v8 - __src) >> 1)
    {
      goto LABEL_27;
    }

    v18 = 0;
    v17 = v15 >> 1;
    v16 = &v8[2 * (a3 - (v15 >> 1))];
    v19 = *a4;
    v20 = (2 * a3 - v15 - 2) >> 1;
    v21 = vdupq_n_s64(v20);
    v22 = (v20 & 0x7FFFFFFFFFFFFFF8) + 8;
    v23 = v8 + 8;
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_212100)));
      if (vuzp1_s8(vuzp1_s16(v25, *v21.i8), *v21.i8).u8[0])
      {
        *(v23 - 4) = v19;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v21), *&v21).i8[1])
      {
        *(v23 - 3) = v19;
      }

      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_2120F0)))), *&v21).i8[2])
      {
        *(v23 - 2) = v19;
        *(v23 - 1) = v19;
      }

      v26 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_218970)));
      if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i32[1])
      {
        *v23 = v19;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i8[5])
      {
        v23[1] = v19;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_218960))))).i8[6])
      {
        v23[2] = v19;
        v23[3] = v19;
      }

      v18 += 8;
      v23 += 8;
    }

    while (v22 != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
LABEL_27:
      v27 = &__src[2 * a3];
      v28 = &v16[-2 * a3];
      v29 = v16;
      if (v28 < v8)
      {
        v29 = v16;
        do
        {
          v30 = *v28;
          v28 += 2;
          *v29 = v30;
          v29 += 2;
        }

        while (v28 < v8);
      }

      a1[1] = v29;
      if (v16 != v27)
      {
        memmove(&__src[2 * a3], __src, v16 - v27);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v31 = 0;
        }

        else
        {
          v31 = a3;
        }

        v5 += 2 * v31;
      }

      v32 = 0;
      v33 = *v5;
      v34 = vdupq_n_s64(v17 - 1);
      v35 = __src + 8;
      do
      {
        v36 = vdupq_n_s64(v32);
        v37 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_212100)));
        if (vuzp1_s8(vuzp1_s16(v37, *v34.i8), *v34.i8).u8[0])
        {
          *(v35 - 4) = v33;
        }

        if (vuzp1_s8(vuzp1_s16(v37, *&v34), *&v34).i8[1])
        {
          *(v35 - 3) = v33;
        }

        if (vuzp1_s8(vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_2120F0)))), *&v34).i8[2])
        {
          *(v35 - 2) = v33;
          *(v35 - 1) = v33;
        }

        v38 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_218970)));
        if (vuzp1_s8(*&v34, vuzp1_s16(v38, *&v34)).i32[1])
        {
          *v35 = v33;
        }

        if (vuzp1_s8(*&v34, vuzp1_s16(v38, *&v34)).i8[5])
        {
          *(v35 + 1) = v33;
        }

        if (vuzp1_s8(*&v34, vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_218960))))).i8[6])
        {
          *(v35 + 2) = v33;
          *(v35 + 3) = v33;
        }

        v32 += 8;
        v35 += 16;
      }

      while (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) != v32);
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 1);
  if (v11 < 0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 > v11)
  {
    v11 = v13;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v14);
  }

  v40 = 0;
  v39 = 2 * (v12 >> 1);
  v41 = v39 + 2 * a3;
  v42 = *a4;
  v43 = (a3 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
  v44 = v43 - ((a3 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
  v45 = vdupq_n_s64(v43);
  v46 = (v39 + 8);
  do
  {
    v47 = vdupq_n_s64(v40);
    v48 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_212100)));
    if (vuzp1_s8(vuzp1_s16(v48, *v45.i8), *v45.i8).u8[0])
    {
      *(v46 - 4) = v42;
    }

    if (vuzp1_s8(vuzp1_s16(v48, *&v45), *&v45).i8[1])
    {
      *(v46 - 3) = v42;
    }

    if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_2120F0)))), *&v45).i8[2])
    {
      *(v46 - 2) = v42;
      *(v46 - 1) = v42;
    }

    v49 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_218970)));
    if (vuzp1_s8(*&v45, vuzp1_s16(v49, *&v45)).i32[1])
    {
      *v46 = v42;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(v49, *&v45)).i8[5])
    {
      v46[1] = v42;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_218960))))).i8[6])
    {
      v46[2] = v42;
      v46[3] = v42;
    }

    v40 += 8;
    v46 += 8;
  }

  while (v44 != v40);
  memcpy((v39 + 2 * a3), __src, a1[1] - __src);
  v50 = *a1;
  v51 = v41 + a1[1] - __src;
  a1[1] = __src;
  v52 = (__src - v50);
  v53 = (v39 - (__src - v50));
  memcpy(v53, v50, v52);
  v54 = *a1;
  *a1 = v53;
  a1[1] = v51;
  a1[2] = 0;
  if (v54)
  {
    operator delete(v54);
  }

  return v39;
}

void AutocF0::remove_false_flanks(uint64_t a1, uint64_t *a2, int a3, int a4, int a5)
{
  if (a3 == a4 || a3 == a5)
  {
    v5 = *a2;
    v6 = (a2[1] - *a2) >> 3;
    LODWORD(v7) = a4 + 1;
    if (v6 > a4 + 1)
    {
      v7 = v7;
      v8 = a4;
      do
      {
        if (*(v5 + 8 * v8) <= *(v5 + 8 * v7))
        {
          break;
        }

        *(v5 + 8 * v8) = 0xFFF0000000000000;
        ++v7;
        ++v8;
      }

      while (v6 > v7);
    }

    if (a5 > a4)
    {
      v9 = a5;
      v10 = (v5 + 8 * a5);
      v11 = *v10;
      do
      {
        v12 = v11;
        v11 = *(v10 - 1);
        if (v12 <= v11)
        {
          break;
        }

        --v9;
        *v10-- = -INFINITY;
      }

      while (v9 > a4);
    }
  }
}

void AutocF0::voiced_unvoiced_decision(double a1, double a2, double a3, uint64_t a4, uint64_t a5, double **a6, double **a7, double **a8, int a9)
{
  if (a9)
  {
    a2 = a2 * 1.5;
    a3 = a3 * 1.5;
    a1 = a1 * 0.666;
  }

  v9 = *a5;
  v10 = *(a5 + 8) - *a5;
  if (v10)
  {
    v11 = v10 >> 3;
    v12 = *a6;
    v13 = *a7;
    v14 = *a8;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      if (*v12 < a1)
      {
        *v9 = 0;
      }

      if (*v13 > a2)
      {
        *v9 = 0;
      }

      if (*v14 > a3)
      {
        *v9 = 0;
      }

      ++v9;
      ++v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }
}

uint64_t *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 9, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  return a1;
}

void sub_19AB08(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void AutocF0::AutocF0(void **a1, void **a2, void **a3, void *a4)
{
  v7 = *a1;
  if (v7)
  {
    a4[11] = v7;
    operator delete(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    a4[8] = v8;
    operator delete(v8);
  }

  v9 = *a3;
  if (*a3)
  {
    a4[5] = v9;

    operator delete(v9);
  }
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::SpeechFeatureExtractor(void *a1, const void **a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = &v11;
  std::string::basic_string[abi:ne200100](&v11, v4 + 1);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v11.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
  v7 = std::string::append(&v11, "lexiconp.txt");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v10 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  std::ifstream::basic_ifstream(&v11, __p, 8);
  if (*(&v11 + *(v11.__r_.__value_.__r.__words[0] - 24) + 32))
  {
    std::allocate_shared[abi:ne200100]<SiriTTS::ForcedAlignment::ForcedAlignment,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,std::string const&,BOOL const&,0>();
  }

  std::allocate_shared[abi:ne200100]<SiriTTS::ForcedAlignment::ForcedAlignment,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,std::string const&,BOOL const&,std::string&,0>();
}

void sub_19AE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ios::~ios();
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v65 = *(v63 + 8);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(a1);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::resample(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, const void **a4@<X8>)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 1);
  DSP::resample(&__p, a2, a3, a4);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_19AF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_speech_feature(SiriTTS::ForcedAlignment::AcousticModel ***a1, uint64_t a2, uint64_t *a3, int a4, _BYTE *a5, uint64_t a6)
{
  v39 = 0uLL;
  v40 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v39, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  v11 = v39;
  if (a4 != 16000)
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v36, v39, *(&v39 + 1), (*(&v39 + 1) - v39) >> 1);
    DSP::resample(&v36, a4, 16000, __p);
    if (v39)
    {
      *(&v39 + 1) = v39;
      operator delete(v39);
    }

    v12 = __p[0];
    v39 = *__p;
    v40 = v31;
    __p[1] = 0;
    *&v31 = 0;
    __p[0] = 0;
    if (v36)
    {
      v37 = v36;
      operator delete(v36);
      v11 = v39;
    }

    else
    {
      v11 = v12;
    }
  }

  memset(v35, 0, sizeof(v35));
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(v35, v11, *(&v39 + 1), (*(&v39 + 1) - v11) >> 1);
  memset(v34, 0, sizeof(v34));
  v13 = *a3;
  if (a3[1] == *a3)
  {
LABEL_26:
    memset(&v29, 0, sizeof(v29));
    if (a6)
    {
      *__p = 0u;
      v31 = 0u;
      LODWORD(v32) = 1065353216;
      for (i = *(a6 + 16); i; i = *i)
      {
        v27 = 0uLL;
        v28 = 0;
        v21 = i[5];
        v20 = i[6];
        while (v21 != v20)
        {
          v24 = 0;
          v25 = 0;
          v23 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v23, *(v21 + 24), *(v21 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 32) - *(v21 + 24)) >> 3));
          memset(v26, 0, sizeof(v26));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v26, v23, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3));
          std::vector<SiriTTS::ForcedAlignment::Phoneme>::push_back[abi:ne200100](&v27, v26);
          v42[0] = v26;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
          v42[0] = &v23;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
          v21 += 48;
        }

        v42[0] = (i + 2);
        v22 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, i + 2, &std::piecewise_construct, v42, &v41) + 5);
        if (v22 != &v27)
        {
          std::vector<SiriTTS::ForcedAlignment::Phoneme>::__assign_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(v22, v27, *(&v27 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v27 + 1) - v27) >> 3));
        }

        v26[0] = &v27;
        std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](v26);
      }

      SiriTTS::ForcedAlignment::ForcedAlignment::align_phones_with_frame(*a1, v35, v34, a5, __p);
    }

    SiriTTS::ForcedAlignment::ForcedAlignment::align_phones_with_frame(*a1, v35, v34, a5, 0);
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = v13 + v14;
    if (*(v13 + v14 + 32) == *(v13 + v14 + 24))
    {
      if (*(v16 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(v13 + v14), *(v13 + v14 + 8));
      }

      else
      {
        v17 = *v16;
        *&v31 = *(v16 + 16);
        *__p = v17;
      }

      *(&v31 + 1) = 0;
      v32 = 0;
      v33 = 0;
      std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](v34, __p);
    }

    else
    {
      if ((*(v16 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v13 + v14 + 8))
        {
LABEL_16:
          std::to_string(&v29, v15);
          SiriTTS::ForcedAlignment::Lexeme::Lexeme(__p, &v29, (*a3 + v14 + 24));
          std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](v34, __p);
          *&v27 = &v31 + 8;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
          if (SBYTE7(v31) < 0)
          {
            operator delete(__p[0]);
          }

          if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          v18 = v29.__r_.__value_.__r.__words[0];
          goto LABEL_24;
        }
      }

      else if (!*(v16 + 23))
      {
        goto LABEL_16;
      }

      SiriTTS::ForcedAlignment::Lexeme::Lexeme(__p, v16, (v13 + v14 + 24));
      std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](v34, __p);
    }

    v29.__r_.__value_.__r.__words[0] = &v31 + 8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
    if (SBYTE7(v31) < 0)
    {
      v18 = __p[0];
LABEL_24:
      operator delete(v18);
    }

LABEL_25:
    ++v15;
    v13 = *a3;
    v14 += 48;
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v15)
    {
      goto LABEL_26;
    }
  }
}

void sub_19B404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void **a34)
{
  a34 = &a27;
  std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a34 = (v34 - 200);
  std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&a34);
  v36 = *(v34 - 176);
  if (v36)
  {
    *(v34 - 168) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 128);
  if (v37)
  {
    *(v34 - 120) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *std::vector<SiriTTS::ForcedAlignment::Phoneme>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SiriTTS::ForcedAlignment::Phoneme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Phoneme>(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = v3 + 3;
  }

  a1[1] = result;
  return result;
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_dur_energy_pitch(std::string *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (*a4 != 1 || (v6 = *a3, v7 = a3[1], *a3 == v7))
  {
LABEL_47:
    SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_duration(a3, v26);
    _ZNSt3__115allocate_sharedB8ne200100I12SpeechEnergyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v8 = 0;
  while (1)
  {
    v9 = *(v6 + 23);
    if (v9 < 0)
    {
      v9 = *(v6 + 8);
    }

    std::string::basic_string(&v24, v6, v9 - 2, 2uLL, &v25);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v24.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_22;
      }

      v10 = v24.__r_.__value_.__r.__words[0];
      if (*v24.__r_.__value_.__l.__data_ != 21343 && *v24.__r_.__value_.__l.__data_ != 16991 && *v24.__r_.__value_.__l.__data_ != 18783)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_22;
      }

      if (LOWORD(v24.__r_.__value_.__l.__data_) != 21343 && LOWORD(v24.__r_.__value_.__l.__data_) != 16991 && LOWORD(v24.__r_.__value_.__l.__data_) != 18783)
      {
        v10 = &v24;
LABEL_16:
        if (LOWORD(v10->__r_.__value_.__l.__data_) != 17759)
        {
          goto LABEL_22;
        }
      }
    }

    v11 = *(v6 + 23);
    if (v11 < 0)
    {
      v11 = *(v6 + 8);
    }

    std::string::basic_string(&v25, v6, 0, v11 - 2, &v23);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v12 = *&v25.__r_.__value_.__l.__data_;
    *(v6 + 16) = *(&v25.__r_.__value_.__l + 2);
    *v6 = v12;
LABEL_22:
    v13 = v28;
    if (v28 >= v29)
    {
      v15 = v27;
      v16 = v28 - v27;
      v17 = (v28 - v27) >> 2;
      v18 = v17 + 1;
      if ((v17 + 1) >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v19 = v29 - v27;
      if ((v29 - v27) >> 1 > v18)
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v27, v20);
      }

      *(4 * v17) = v8;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v21 = v27;
      v27 = 0;
      v28 = v14;
      v29 = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v28 = v8;
      v14 = (v13 + 1);
    }

    v28 = v14;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = v24.__r_.__value_.__r.__words[0];
      if (v24.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_45;
      }

      if (*v24.__r_.__value_.__l.__data_ == 17759)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_46;
      }

      if (LOWORD(v24.__r_.__value_.__l.__data_) == 17759)
      {
        goto LABEL_43;
      }

      v22 = &v24;
    }

    if (LOWORD(v22->__r_.__value_.__l.__data_) != 21343)
    {
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    }

LABEL_43:
    ++v8;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_44:
      v22 = v24.__r_.__value_.__r.__words[0];
LABEL_45:
      operator delete(v22);
    }

LABEL_46:
    v6 += 32;
    if (v6 == v7)
    {
      goto LABEL_47;
    }
  }
}

void sub_19BAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  *(v46 - 96) = v45;
  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100]((v46 - 96));
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>::~tuple(&a29);
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  v48 = *(v46 - 232);
  if (v48)
  {
    *(v46 - 224) = v48;
    operator delete(v48);
  }

  std::tuple<std::vector<float>,std::vector<float>>::~tuple(v46 - 208);
  v49 = *(v46 - 152);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  a29 = (v46 - 144);
  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&a29);
  v50 = *(v46 - 120);
  if (v50)
  {
    *(v46 - 112) = v50;
    operator delete(v50);
  }

  _Unwind_Resume(a1);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_duration(uint64_t *a1@<X1>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, v2);
      v6 = *(v2 + 24);
      v9 = v5 * 10.0;
      v10 = (v6 + v5) * 10.0;
      v11 = v6 * 10.0;
      std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a2, &__p);
      v7 = *(v2 + 24);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 += v7;
      v2 += 32;
    }

    while (v2 != v3);
  }
}

void sub_19BCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_energy(void *a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    __asm { FMOV            V8.2S, #5.0 }

    do
    {
      v12 = vcvt_s32_f32(vdiv_f32(*(v3 + 28), _D8));
      v13 = 0.0;
      v14 = v12.i32[1] - v12.i32[0];
      if (v12.i32[1] >= v12.i32[0])
      {
        v15 = (*a1 + 4 * v12.i32[0]);
        v16 = v14 + 1;
        do
        {
          v17 = *v15++;
          v13 = v13 + v17;
          --v16;
        }

        while (v16);
      }

      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, v3);
      v19 = *(v3 + 28);
      v20 = v13 / (v14 + 1);
      std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 48;
    }

    while (v3 != v4);
  }
}

void sub_19BDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_pitch(void *a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    __asm { FMOV            V8.2S, #5.0 }

    do
    {
      v12 = vcvt_s32_f32(vdiv_f32(*(v3 + 28), _D8));
      v13 = 0.0;
      v14 = v12.i32[1] - v12.i32[0];
      if (v12.i32[1] >= v12.i32[0])
      {
        v15 = (*a1 + 4 * v12.i32[0]);
        v16 = v14 + 1;
        do
        {
          v17 = *v15++;
          v13 = v13 + v17;
          --v16;
        }

        while (v16);
      }

      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, v3);
      v21 = *(v3 + 36);
      v20 = *(v3 + 28);
      v18 = *(v3 + 44);
      v22 = v13 / (v14 + 1);
      v23 = v18;
      std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 48;
    }

    while (v3 != v4);
  }
}

void sub_19BED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__emplace_back_slow_path<SiriTTS::SpeechFeature::SpeechFeatureData const&>(a1, a2);
  }

  else
  {
    std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__construct_one_at_end[abi:ne200100]<SiriTTS::SpeechFeature::SpeechFeatureData const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

std::string *SiriTTS::ForcedAlignment::Lexeme::Lexeme(std::string *this, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void sub_19BFB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::vector<float>,std::vector<float>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
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

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL const&,std::string&,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282E48;
  SiriTTS::ForcedAlignment::ForcedAlignment::ForcedAlignment((a1 + 3), a2, a3, a4);
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::__on_zero_shared_impl[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL const&,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282E48;
  SiriTTS::ForcedAlignment::ForcedAlignment::ForcedAlignment((a1 + 3), a2);
  return a1;
}

void std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(uint64_t *result, __int16 *a2, __int16 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19C390(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(&v15);
  return v14;
}

void sub_19C4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Phoneme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Phoneme>(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v16 = 24 * v2 + 24;
  v8 = a1[1];
  v9 = (24 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::~__split_buffer(&v14);
  return v13;
}

void sub_19C810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::~__split_buffer(void **a1)
{
  std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_19CC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__assign_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(void ***a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a4)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * (a1[2] - *a1);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *>(&v15, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
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

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string **std::__copy_impl::operator()[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *>(int a1, std::string **a2, std::string **a3, std::vector<std::string> *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::pair<std::string,int>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<std::pair<std::string,int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t *std::vector<std::pair<std::string,int>>::__init_with_size[abi:ne200100]<std::pair<std::string,int>*,std::pair<std::string,int>*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,int>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*,std::pair<std::string,int>*,std::pair<std::string,int>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void *_ZNSt3__120__shared_ptr_emplaceI12SpeechEnergyNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282E98;
  SpeechEnergy::SpeechEnergy((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<SpeechEnergy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<SpeechEnergy>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3)
  {
    a2[7] = v3;
    operator delete(v3);
  }

  v4 = a2[3];
  if (v4)
  {
    a2[4] = v4;

    operator delete(v4);
  }
}

__n128 std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__construct_one_at_end[abi:ne200100]<SiriTTS::SpeechFeature::SpeechFeatureData const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__emplace_back_slow_path<SiriTTS::SpeechFeature::SpeechFeatureData const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>>(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::~__split_buffer(&v18);
  return v17;
}

void sub_19D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void SiriTTS::ForcedAlignment::ForcedAlignment::ForcedAlignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 16) = 0;
  std::allocate_shared[abi:ne200100]<SiriTTS::ForcedAlignment::AcousticModel,std::allocator<SiriTTS::ForcedAlignment::AcousticModel>,std::string const&,BOOL &,0>();
}

void sub_19DB88(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::build_lexicon(uint64_t *a1@<X1>, unint64_t a2@<X8>)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::ifstream::basic_ifstream(v18, a1, 8);
  v12 = 0uLL;
  v13 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::ios_base::getloc((v18 + *(v18[0] - 3)));
  v3 = std::locale::use_facet(&v8, &std::ctype<char>::id);
  v4 = (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v8);
  v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, &__p, v4);
  if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
  {
    v6 = HIBYTE(v16);
    if (v16 < 0)
    {
      v6 = v15;
    }

    if (v6)
    {
      memset(&v11, 0, sizeof(v11));
      v8.__locale_ = 0;
      v9 = 0;
      v10 = 0;
      memset(&v7[3], 0, 48);
      v7[0] = " ";
      v7[1] = "";
      boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__dst, v7);
      boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(&v12, &__p, __dst, 0);
    }
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v18 + *(v18[0] - 3)), *(&v18[4] + *(v18[0] - 3)) | 4);
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }
}

void boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(__int128 *a1, uint64_t **a2, void *__src, int a4)
{
  v7 = __src[2];
  __n = v7;
  __srca[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(__srca, __src, v7);
    v13 = __n;
    v12[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v12, __srca, __n);
      __dst[2] = v13;
      __dst[0] = 0;
      if (v13 <= 0x10)
      {
        memcpy(__dst, v12, v13);
        v11 = a4;
        boost::algorithm::iter_split<std::vector<std::string>,std::string&,boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, a2, __dst);
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_19E35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    operator delete[]();
  }

  if (v17 >= 0x11)
  {
    if (a10)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::~ForcedAlignment(SiriTTS::ForcedAlignment::ForcedAlignment *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(this + 24);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_19E600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      std::ifstream::~ifstream(&a24);
      SiriTTS::ForcedAlignment::ForcedAlignment::~ForcedAlignment(v24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

uint64_t SiriTTS::ForcedAlignment::ForcedAlignment::process_lexeme@<X0>(uint64_t a1@<X0>, SiriTTS::ForcedAlignment::Lexicon *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, const void **a6@<X8>)
{
  memset(v55, 0, sizeof(v55));
  v56 = 1065353216;
  if (a5)
  {
    if (v55 == a5)
    {
      goto LABEL_7;
    }

    v56 = *(a5 + 32);
    v9 = (a5 + 16);
  }

  else
  {
    if (v55 == (a1 + 24))
    {
      goto LABEL_7;
    }

    v56 = *(a1 + 56);
    v9 = (a1 + 40);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *> *>>(v55, *v9, 0);
LABEL_7:
  v10 = *a3;
  v11 = a3[1];
  if (v11 != *a3)
  {
    v12 = 0;
    do
    {
      v13 = (v10 + 48 * v12);
      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v54, *v13, *(v13 + 1));
        v10 = *a3;
      }

      else
      {
        v14 = *v13;
        v54.__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&v54.__r_.__value_.__l.__data_ = v14;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v51, *(v10 + 48 * v12 + 24), *(v10 + 48 * v12 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 48 * v12 + 32) - *(v10 + 48 * v12 + 24)) >> 3));
      std::locale::locale(&v48);
      LODWORD(__p.__r_.__value_.__l.__data_) = 0x4000;
      std::locale::locale(&__p.__r_.__value_.__r.__words[1], &v48);
      boost::algorithm::trim_if<std::string,boost::algorithm::detail::is_classifiedF>(&v54, &__p);
      std::locale::~locale(&__p.__r_.__value_.__r.__words[1]);
      std::locale::~locale(&v48);
      v48.__locale_ = 0;
      v49 = 0;
      v50 = 0;
      if (v52 == v51 || (std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](&v48, (*a3 + 48 * v12)), v52 == v51) || *a4 == 1)
      {
        if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(v55, &v54.__r_.__value_.__l.__data_))
        {
          v43.__r_.__value_.__r.__words[0] = &v54;
          v15 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, &v54.__r_.__value_.__l.__data_, &std::piecewise_construct, &v43, v57);
          v17 = v15[5];
          v16 = v15[6];
          while (v17 != v16)
          {
            SiriTTS::ForcedAlignment::Lexeme::Lexeme(&__p, &v54, v17);
            std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](&v48, &__p);
            v43.__r_.__value_.__r.__words[0] = v47;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v17 += 3;
          }
        }

        else
        {
          std::locale::locale(&__p);
          LODWORD(v44.__locale_) = 0x2000;
          std::locale::locale(&v45, &__p);
          boost::algorithm::trim_if<std::string,boost::algorithm::detail::is_classifiedF>(&v54, &v44);
          std::locale::~locale(&v45);
          std::locale::~locale(&__p);
          if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(v55, &v54.__r_.__value_.__l.__data_))
          {
            v43.__r_.__value_.__r.__words[0] = &v54;
            v18 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, &v54.__r_.__value_.__l.__data_, &std::piecewise_construct, &v43, v57);
            v20 = v18[5];
            v19 = v18[6];
            while (v20 != v19)
            {
              SiriTTS::ForcedAlignment::Lexeme::Lexeme(&__p, &v54, v20);
              std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](&v48, &__p);
              v43.__r_.__value_.__r.__words[0] = v47;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 += 3;
            }
          }
        }
      }

      locale = v48.__locale_;
      if (v49 == v48.__locale_)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v40 = std::string::append(&v43, "does not exist in the lexicon and the phonemes are not provided.");
        v41 = *&v40->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(exception, &__p);
      }

      v22 = 0;
      v23 = 0;
      do
      {
        SiriTTS::ForcedAlignment::Lexicon::add_lexeme(a2, (locale + v22));
        ++v23;
        locale = v48.__locale_;
        v22 += 48;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v49 - v48.__locale_) >> 4) > v23);
      __p.__r_.__value_.__r.__words[0] = &v48;
      std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v51;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      ++v12;
      v10 = *a3;
      v11 = a3[1];
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 4) > v12);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (v11 != v10)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = SiriTTS::ForcedAlignment::Lexicon::word_to_int(a2);
      v28 = a6[1];
      v27 = a6[2];
      if (v28 >= v27)
      {
        v30 = *a6;
        v31 = v28 - *a6;
        v32 = v31 >> 2;
        v33 = (v31 >> 2) + 1;
        if (v33 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v34 = v27 - v30;
        if (v34 >> 1 > v33)
        {
          v33 = v34 >> 1;
        }

        v35 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
        v36 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v35)
        {
          v36 = v33;
        }

        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a6, v36);
        }

        *(4 * v32) = v26;
        v29 = (4 * v32 + 4);
        memcpy(0, v30, v31);
        v37 = *a6;
        *a6 = 0;
        a6[1] = v29;
        a6[2] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v28 = v26;
        v29 = v28 + 4;
      }

      a6[1] = v29;
      ++v25;
      v24 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) > v25);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(v55);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::decode(SiriTTS::ForcedAlignment::AcousticModel **a1, __int128 **a2, uint64_t *a3)
{
  SiriTTS::ForcedAlignment::AcousticModel::forward(*a1, a3, a1 + 16, &v10);
  std::vector<std::vector<int>>::__vdeallocate(a3);
  *a3 = v10;
  a3[2] = v11;
  v11 = 0;
  v10 = 0uLL;
  v12 = &v10;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  SiriTTS::ForcedAlignment::AcousticModel::context(&v12, *a1);
  SiriTTS::ForcedAlignment::AcousticModel::transition_model(&v9, *a1);
  SiriTTS::ForcedAlignment::Lexicon::generate_fst(a2);
}

void sub_19F024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, char a34)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  SiriTTS::ForcedAlignment::AlignmentDecoder::~AlignmentDecoder(&a28);
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  SiriTTS::ForcedAlignment::AlignmentGraph::~AlignmentGraph(&a34);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::Lexicon::~Lexicon(SiriTTS::ForcedAlignment::Lexicon *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this;
  std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::align_phones_with_frame(SiriTTS::ForcedAlignment::AcousticModel **a1, int **a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v11 = SiriTTS::ForcedAlignment::AcousticModel::silence_phones(*a1);
  v12 = SiriTTS::ForcedAlignment::AcousticModel::nonsilence_phones(*a1);
  SiriTTS::ForcedAlignment::Lexicon::Lexicon(v15, v11, v12);
  SiriTTS::ForcedAlignment::ForcedAlignment::process_lexeme(a1, v15, a3, a4, a5, &__p);
  SiriTTS::ForcedAlignment::FeatureExtractorWav::compute(a2, v13);
  LOBYTE(v16) = *a4 ^ 1;
  SiriTTS::ForcedAlignment::ForcedAlignment::decode(a1, v15, v13);
}

void sub_19F25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v17 - 72) = v16;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v17 - 72));
  if (__p)
  {
    operator delete(__p);
  }

  SiriTTS::ForcedAlignment::Lexicon::~Lexicon(va);
  _Unwind_Resume(a1);
}

void boost::algorithm::trim_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, std::locale *a2)
{
  v4 = a2 + 1;
  LODWORD(v15.__locale_) = a2->__locale_;
  std::locale::locale(&v16, a2 + 1);
  boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(a1, &v15);
  std::locale::~locale(&v16);
  locale = a2->__locale_;
  std::locale::locale(&v14, v4);
  v5 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v17 = locale;
  std::locale::locale(&v18, &v14);
  if (size)
  {
    v8 = (v6 + size);
    v9 = v6;
    while (1)
    {
      v10 = v9->__r_.__value_.__s.__data_[0];
      v11 = std::locale::use_facet(&v18, &std::ctype<char>::id);
      if ((v10 & 0x80) != 0 || (*(&v11[1].~facet + v10) & v17) == 0)
      {
        break;
      }

      v9 = (v9 + 1);
      if (!--size)
      {
        v9 = v8;
        break;
      }
    }
  }

  else
  {
    v9 = v6;
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a1, v6 - v12, v9 - v6);
  std::locale::~locale(&v18);
  std::locale::~locale(&v14);
}

void sub_19F3EC(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 1);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::AlignmentDecoder::~AlignmentDecoder(SiriTTS::ForcedAlignment::AlignmentDecoder *this)
{
  v2 = *(this + 3);
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

void SiriTTS::ForcedAlignment::AlignmentGraph::~AlignmentGraph(SiriTTS::ForcedAlignment::AlignmentGraph *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::AcousticModel>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,std::allocator<SiriTTS::ForcedAlignment::AcousticModel>,0>(void *a1, const void **a2, _BYTE *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282EE8;
  SiriTTS::ForcedAlignment::AcousticModel::AcousticModel((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::AcousticModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282EE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::AcousticModel>::__on_zero_shared(uint64_t a1)
{
  v7 = (a1 + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (a1 + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

char *boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(char *__dst, uint64_t a2)
{
  *__dst = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(__dst + 2) = v5 - v4;
  if ((v5 - v4) >= 0x11)
  {
    operator new[]();
  }

  if (v5 != v4)
  {
    memmove(__dst, v4, v5 - v4);
  }

  std::__sort<std::__less<char,char> &,char *>();
  return __dst;
}

void boost::algorithm::iter_split<std::vector<std::string>,std::string&,boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(__int128 *a1, uint64_t **a2, _DWORD *a3)
{
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

  v7 = *(a3 + 2);
  v9[2] = v7;
  v9[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(v9, a3, v7);
    v10 = a3[6];
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&v8, v5, v5 + v6, v9);
  }

  operator new[]();
}

void sub_19F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void (**a32)(void, void, uint64_t), uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&a32);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(va);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2((v41 - 248));
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2((v41 - 136));
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    *a1 = v4;
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    else
    {
      (*v4)(a2 + 8, a1 + 8, 0);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t (***a1)(), uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(a4 + 2);
  v7[2] = v6;
  v7[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(v7, a4, v6);
    v8 = a4[6];
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v7);
  }

  operator new[]();
}

void boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t (***a1)(), void *a2)
{
  v4 = a2[2];
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 6);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::function2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

void sub_19FC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*a1)
  {
    result = boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::operator()(a1);
    v2 = *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 56);
    result = v4;
  }

  v5 = result == v2 && v4 == v2;
  if (v5 && *(a1 + 40) == v2)
  {
    *(a1 + 64) = 1;
  }

  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

void boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::function2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t (***a1)(), void *a2)
{
  *a1 = 0;
  v4 = a2[2];
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 6);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

void sub_19FDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

void boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t (***a1)(), void *a2)
{
  v4 = a2[2];
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 6);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>)::stored_vtable, v5, a1 + 1);
  }

  operator new[]();
}

void sub_19FECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manage(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manager(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

void boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[2];
  v7[2] = v6;
  v7[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(v7, a2, v6);
    v8 = *(a2 + 6);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v7, a3);
  }

  operator new[]();
}

{
  v6 = a2[2];
  v7[2] = v6;
  v7[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(v7, a2, v6);
    v8 = *(a2 + 6);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_functor<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v7, a3);
  }

  operator new[]();
}

void sub_1A0010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manager(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (v5[2] >= 0x11uLL && *v5)
      {
        operator delete[]();
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == (0x800000000021FF6ELL & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x800000000021FF6ELL & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

char *boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>::operator()<std::__wrap_iter<char *>>(_DWORD *a1, char *a2, char *a3)
{
  v6 = *(a1 + 2);
  v11 = v6;
  v10[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v10, a1, v6);
  v7 = a3;
  v8 = a3;
  if (a2 != a3)
  {
    v7 = a2;
    while (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v10, *v7))
    {
      if (++v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = v7;
  }

  if (v11 >= 0x11 && v10[0])
  {
    operator delete[]();
  }

  if (v8 != a3)
  {
    if (!a1[6])
    {
      do
      {
        if (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(a1, *v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != a3);
    }

    return v8;
  }

  return a3;
}

void sub_1A032C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  if (a11 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::algorithm::detail::is_any_ofF<char>::operator()<char>(void *a1, int a2)
{
  v2 = a1[2];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + v2);
  }

  else
  {
    v3 = (a1 + v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = a1 + (v2 >> 1);
    v6 = *v4;
    v5 = v4 + 1;
    v7 = v2 >> 1;
    v2 += ~(v2 >> 1);
    if (v6 < a2)
    {
      a1 = v5;
    }

    else
    {
      v2 = v7;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

void sub_1A04AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::operator()(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = off_283080;
    boost::throw_exception<boost::bad_function_call>(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}