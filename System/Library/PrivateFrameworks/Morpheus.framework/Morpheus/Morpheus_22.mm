void sub_25A3CAC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<float,short>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v111 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v111)
    {
      v81 = v121;
      if (v121)
      {
LABEL_62:
        v122 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_81;
    }

    v105 = v12;
    v106 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v104 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v99 = v134;
    v113 = &v134[4 * v32];
    v103 = v32;
    v101 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v98 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v112 = &v121[4 * v36];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v97 = v37 - 1;
    v109 = v23;
    v110 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v95 = v117 - 8;
    v96 = v128 - 8;
    v102 = v36;
    v114 = v17 - 3;
    v107 = v117 + 4 * v36;
    v108 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = v28[v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v28[v104];
        v43 = &v106[v34];
        v44 = 4 * v29[v114];
        v45 = 4 * v29[v104];
        v46 = 2 * v30[v114];
        v47 = 2 * v30[v104];
        v48 = &v105[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = v28[v31];
            v51 = 4 * v29[v31];
            v52 = 2 * v30[v31];
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  *(v53 + v55) = *(v54 + v56);
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v110)
      {
        break;
      }

      v21 = v114;
      v66 = v115;
      v67 = v107;
      v59 = v108;
      if (v108)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v109;
      if (v25 >= v111)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v113;
    v21 = v114;
    v59 = v108;
    if (v110 >= 2 && (v60 = v101, v58 == *v101 - 1))
    {
      v62 = v98;
      v61 = v99;
      v63 = v96;
      v64 = v113;
      v65 = v103;
      v66 = v115;
      v67 = v107;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v127 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v103;
      v70 = v113;
      v66 = v115;
      v67 = v107;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v127 = v26;
    if (!v108)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v112;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v95;
      v74 = v97;
      v75 = v67;
      v76 = v112;
      v77 = v102;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v116 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v102;
      v80 = v112;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v116 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v123;
    if (*v123 >= 1)
    {
      v83 = 0;
      v84 = v125[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = 4 * **v125;
      v88 = 4 * (*v125)[1];
      v89 = *(v123 + 1);
      v90 = 2 * v85;
      v91 = 2 * v86;
      do
      {
        if (v89 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v89;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v88);
            v92 = (v92 + v91);
            --v94;
          }

          while (v94);
        }

        ++v83;
        v12 = (v12 + v87);
        v13 = (v13 + v90);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = *v125[3];
      v20 = 4 * **v125;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }
}

void sub_25A3CB3B4(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<float,int>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v134 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v109 = *(*a1 + 48);
  v125 = 0;
  v126 = 0;
  v127 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v114, &v125, &v131, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v114, 0x7FFFFFFFuLL, &v121);
  v124 = &v114;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v124);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v128 + i);
    if (v16)
    {
      *(&v129 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = v121;
  v18 = (v122 - v121) >> 2;
  if (v18 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v22 = v18 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v125, &v121, v123, v18 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v114, &v121, v123 + 3, v18 - 3);
    v23 = v122 - 3;
    v24 = 1;
    do
    {
      v25 = *v23++;
      v24 *= v25;
    }

    while (v23 != v122);
    if (!v109)
    {
      v82 = v119;
      if (v119)
      {
LABEL_62:
        v120 = v82;
        operator delete(v82);
      }

LABEL_63:
      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      goto LABEL_81;
    }

    v103 = v12;
    v104 = v13;
    v26 = 0;
    v27 = v125;
    v28 = v129;
    v29 = v121;
    v30 = *v123;
    v31 = v123[3];
    v32 = v18 - 2;
    v33 = v18 - 1;
    v34 = (((v127 - v126) << 30) - 0x100000000) >> 32;
    v98 = v132;
    v111 = &v132[4 * v34];
    v102 = v34;
    v100 = &v126[4 * v34];
    v35 = ((v127 - v126) >> 2) & 0x7FFFFFFF;
    v97 = v35 - 1;
    v36 = v114;
    v37 = v117;
    v38 = (((v116 - v115) << 30) - 0x100000000) >> 32;
    __p = v119;
    v110 = &v119[4 * v38];
    v39 = ((v116 - v115) >> 2) & 0x7FFFFFFF;
    v96 = v39 - 1;
    v107 = v24;
    v108 = (v127 - v126) >> 2;
    v40 = 4 * v35;
    v41 = 4 * v39;
    v94 = v115 - 8;
    v95 = v126 - 8;
    v101 = v38;
    v112 = v18 - 3;
    v105 = v115 + 4 * v38;
    v106 = (v116 - v115) >> 2;
    while (1)
    {
      v113 = v26;
      v42 = v29[v22];
      if (v42 >= 1)
      {
        v43 = 0;
        v44 = &v104[v36];
        v45 = &v103[v27];
        v46 = 4 * v30[v112];
        v47 = 4 * v30[v32];
        v48 = 4 * v31[v112];
        v49 = 4 * v31[v32];
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = 4 * v30[v33];
            v53 = 4 * v31[v33];
            v54 = v44;
            v55 = v45;
            do
            {
              v56 = v29[v33];
              if (v56 >= 1)
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  *(v54 + v57) = *(v55 + v58);
                  v58 += v52;
                  v57 += v53;
                  --v56;
                }

                while (v56);
              }

              ++v51;
              v55 = (v55 + v47);
              v54 = (v54 + v49);
            }

            while (v51 != v50);
          }

          ++v43;
          v45 = (v45 + v46);
          v44 = (v44 + v48);
        }

        while (v43 != v42);
      }

      if (v108)
      {
        break;
      }

      v22 = v112;
      v67 = v113;
      v68 = v105;
      v60 = v106;
      if (v106)
      {
        goto LABEL_52;
      }

LABEL_60:
      v26 = v67 + v107;
      if (v26 >= v109)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v111;
    v22 = v112;
    v60 = v106;
    if (v108 >= 2 && (v61 = v100, v59 == *v100 - 1))
    {
      v62 = v97;
      v63 = v98;
      v64 = v95;
      v65 = v111;
      v66 = v102;
      v67 = v113;
      v68 = v105;
      do
      {
        v69 = v62;
        *v65 = 0;
        v27 = (v27 - v28[v66] * (*v61 - 1));
        v125 = v27;
        --v62;
        v65 = &v63[v40 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v64[v40];
        v70 = *&v64[v40] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v70);
      v71 = &v63[v40 - 4];
    }

    else
    {
      v62 = v102;
      v71 = v111;
      v67 = v113;
      v68 = v105;
    }

    *v71 = v59 + 1;
    v27 = (v27 + v28[v62]);
    v125 = v27;
    if (!v106)
    {
      goto LABEL_60;
    }

LABEL_52:
    v72 = *v110;
    if (v60 >= 2 && v72 == *v68 - 1)
    {
      v73 = __p;
      v74 = v94;
      v75 = v96;
      v76 = v68;
      v77 = v110;
      v78 = v101;
      do
      {
        v79 = v75;
        *v77 = 0;
        v36 -= v37[v78] * (*v76 - 1);
        v114 = v36;
        --v75;
        v77 = &v73[v41 - 8];
        v72 = *v77;
        v73 -= 4;
        if (v79 < 2)
        {
          break;
        }

        v76 = &v74[v41];
        v80 = *&v74[v41] - 1;
        v74 -= 4;
        v78 = v75;
      }

      while (v72 == v80);
      v81 = &v73[v41 - 4];
    }

    else
    {
      v75 = v101;
      v81 = v110;
    }

    *v81 = v72 + 1;
    v36 += v37[v75];
    v114 = v36;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v18 == 2)
  {
    v83 = *v121;
    if (*v121 >= 1)
    {
      v84 = 0;
      v85 = v123[3];
      v86 = 4 * **v123;
      v87 = 4 * (*v123)[1];
      v88 = v85[1];
      v89 = 4 * *v85;
      v90 = 4 * v88;
      do
      {
        v91 = v17[1];
        if (v91 >= 1)
        {
          v92 = v13;
          v93 = v12;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v87);
            v92 = (v92 + v90);
            --v91;
          }

          while (v91);
        }

        ++v84;
        v12 = (v12 + v86);
        v13 = (v13 + v89);
      }

      while (v84 != v83);
    }
  }

  else if (v18 == 1)
  {
    v19 = *v121;
    if (*v121 >= 1)
    {
      v20 = *v123[3];
      v21 = 4 * **v123;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v21);
        v13 += v20;
        --v19;
      }

      while (v19);
    }
  }

LABEL_81:
  v125 = &v123;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }
}

void sub_25A3CBB0C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<float,long long>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v126 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v100 = *(*a1 + 48);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v117, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v120, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v106, &v117, &v123, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v106, 0x7FFFFFFFuLL, &v113);
  v116 = &v106;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v116);
  for (i = 0; i != -6; i -= 3)
  {
    v16 = *(&v120 + i * 8);
    if (v16)
    {
      (&v121)[i] = v16;
      operator delete(v16);
    }
  }

  v17 = (v114 - v113) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v113, v115, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v106, &v113, v115 + 3, v17 - 3);
    v22 = v114 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v114);
    if (v100)
    {
      v97 = v13;
      v25 = 0;
      v104 = (v119 - v118) >> 2;
      v26 = v113;
      v27 = *v115;
      v28 = v115[3];
      v29 = v17 - 2;
      v30 = v17 - 1;
      v31 = (((v119 - v118) << 30) - 0x100000000) >> 32;
      v32 = v121;
      v92 = v124;
      v95 = v31;
      v96 = &v118[4 * v31];
      v102 = &v124[4 * v31];
      v103 = (v108 - v107) >> 2;
      v33 = v109;
      __p = v111;
      v94 = (((v108 - v107) << 30) - 0x100000000) >> 32;
      v101 = &v111[4 * v94];
      v34 = 4 * (v104 & 0x7FFFFFFF);
      v91 = v118 - 8;
      v35 = 4 * (v103 & 0x7FFFFFFF);
      v90 = v107 - 8;
      v98 = v107 + 4 * v94;
      v99 = v23;
      do
      {
        v105 = v25;
        v36 = v21;
        v37 = v26[v21];
        if (v37 >= 1)
        {
          v38 = 0;
          v39 = &v97[v106];
          v40 = &v12[v117];
          v41 = v26[v29];
          v42 = 4 * v27[v21];
          v43 = 8 * v28[v21];
          do
          {
            if (v41 >= 1)
            {
              v44 = 0;
              v45 = v26[v30];
              v46 = 4 * v27[v29];
              v47 = 8 * v28[v29];
              v48 = v39;
              v49 = v40;
              do
              {
                if (v45 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 4 * v27[v30];
                  v53 = 8 * v28[v30];
                  v54 = v45;
                  do
                  {
                    *(v48 + v50) = *(v49 + v51);
                    v51 += v52;
                    v50 += v53;
                    --v54;
                  }

                  while (v54);
                }

                ++v44;
                v49 = (v49 + v46);
                v48 = (v48 + v47);
              }

              while (v44 != v41);
            }

            ++v38;
            v40 = (v40 + v42);
            v39 = (v39 + v43);
          }

          while (v38 != v37);
        }

        v21 = v36;
        if (v104)
        {
          v55 = *v102;
          v56 = v117;
          v57 = v96;
          if (v104 >= 2 && v55 == *v96 - 1)
          {
            v59 = (v104 & 0x7FFFFFFF) - 1;
            v58 = v92;
            v60 = v91;
            v61 = v102;
            v62 = v95;
            do
            {
              v63 = v59;
              *v61 = 0;
              v56 = (v56 - v32[v62] * (*v57 - 1));
              v117 = v56;
              --v59;
              v61 = &v58[v34 - 8];
              v55 = *v61;
              v58 -= 4;
              if (v63 < 2)
              {
                break;
              }

              v57 = &v60[v34];
              v64 = *&v60[4 * (v104 & 0x7FFFFFFF)] - 1;
              v60 -= 4;
              v62 = v59;
            }

            while (v55 == v64);
            v65 = &v58[v34 - 4];
          }

          else
          {
            v59 = v95;
            v65 = v102;
          }

          *v65 = v55 + 1;
          v117 = (v56 + v32[v59]);
        }

        if (v103)
        {
          v66 = *v101;
          v67 = v106;
          if (v103 >= 2 && v66 == *v98 - 1)
          {
            v68 = __p;
            v69 = v94;
            v70 = v90;
            v71 = (v103 & 0x7FFFFFFF) - 1;
            v72 = v98;
            v73 = v101;
            do
            {
              v74 = v71;
              *v73 = 0;
              v67 -= v33[v69] * (*v72 - 1);
              v106 = v67;
              --v71;
              v73 = &v68[v35 - 8];
              v66 = *v73;
              v68 -= 4;
              if (v74 < 2)
              {
                break;
              }

              v72 = &v70[v35];
              v75 = *&v70[4 * (v103 & 0x7FFFFFFF)] - 1;
              v70 -= 4;
              v69 = v71;
            }

            while (v66 == v75);
            v76 = &v68[v35 - 4];
          }

          else
          {
            v71 = v94;
            v76 = v101;
          }

          *v76 = v66 + 1;
          v106 = v33[v71] + v67;
        }

        v25 = v105 + v99;
      }

      while (v105 + v99 < v100);
      v77 = __p;
      if (!__p)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v77 = v111;
      if (!v111)
      {
        goto LABEL_62;
      }
    }

    v112 = v77;
    operator delete(v77);
LABEL_62:
    if (v109)
    {
      v110 = v109;
      operator delete(v109);
    }

    if (v107)
    {
      v108 = v107;
      operator delete(v107);
    }

    if (v124)
    {
      v125 = v124;
      operator delete(v124);
    }

    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

    goto LABEL_80;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v78 = *v113;
    if (*v113 >= 1)
    {
      v79 = 0;
      v80 = *v115;
      v81 = v115[3];
      v82 = *(v113 + 1);
      v83 = 4 * **v115;
      v84 = 8 * *v81;
      do
      {
        if (v82 >= 1)
        {
          v85 = 4 * v80[1];
          v86 = 8 * v81[1];
          v87 = v13;
          v88 = v12;
          v89 = v82;
          do
          {
            *v87 = *v88;
            v88 = (v88 + v85);
            v87 = (v87 + v86);
            --v89;
          }

          while (v89);
        }

        ++v79;
        v12 = (v12 + v83);
        v13 = (v13 + v84);
      }

      while (v79 != v78);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v113;
    if (*v113 >= 1)
    {
      v19 = *v115[3];
      v20 = 4 * **v115;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_80:
  v117 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v117);
  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }
}

void sub_25A3CC254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  mlx::core::ContiguousIterator::~ContiguousIterator((v37 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<float,half>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v144 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    _S0 = *v12;
    __asm { FCVT            H0, S0 }

    *v13 = _S0;
    return;
  }

  v120 = *(*a1 + 48);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v135, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v138 = 0;
  v139 = 0;
  v140 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v138, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v124 = 0;
  v125 = 0;
  v126 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v124, &v135, &v141, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v124, 0x7FFFFFFFuLL, &v131);
  v134 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v134);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v138 + i);
    if (v16)
    {
      *(&v139 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v132 - v131) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v27 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v135, &v131, v133, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v124, &v131, v133 + 3, v17 - 3);
    v28 = v132 - 3;
    v29 = 1;
    do
    {
      v30 = *v28++;
      v29 *= v30;
    }

    while (v28 != v132);
    if (!v120)
    {
      v89 = v129;
      if (v129)
      {
LABEL_64:
        v130 = v89;
        operator delete(v89);
      }

LABEL_65:
      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      if (v142)
      {
        v143 = v142;
        operator delete(v142);
      }

      if (v139)
      {
        v140 = v139;
        operator delete(v139);
      }

      if (v136)
      {
        v137 = v136;
        operator delete(v136);
      }

      goto LABEL_83;
    }

    v114 = v12;
    v115 = v13;
    v31 = 0;
    v32 = v135;
    v33 = v139;
    v34 = v131;
    v35 = *v133;
    v36 = v133[3];
    v113 = v17 - 2;
    v37 = v17 - 1;
    v38 = (((v137 - v136) << 30) - 0x100000000) >> 32;
    v108 = v142;
    v112 = v38;
    v110 = &v136[4 * v38];
    v39 = ((v137 - v136) >> 2) & 0x7FFFFFFF;
    v107 = v39 - 1;
    v40 = v124;
    v41 = v127;
    v42 = (((v126 - v125) << 30) - 0x100000000) >> 32;
    __p = v129;
    v121 = &v129[4 * v42];
    v122 = &v142[4 * v38];
    v43 = ((v126 - v125) >> 2) & 0x7FFFFFFF;
    v118 = v29;
    v119 = (v137 - v136) >> 2;
    v44 = 4 * v39;
    v105 = v136 - 8;
    v106 = v43 - 1;
    v45 = 4 * v43;
    v104 = v125 - 8;
    v111 = v42;
    v116 = v125 + 4 * v42;
    v117 = (v126 - v125) >> 2;
    while (1)
    {
      v123 = v31;
      v46 = v27;
      v47 = v34[v27];
      if (v47 >= 1)
      {
        v48 = 0;
        v49 = v34[v113];
        v50 = &v115[v40];
        v51 = 4 * v35[v27];
        v52 = 4 * v35[v113];
        v53 = 2 * v36[v27];
        v54 = 2 * v36[v113];
        v55 = &v114[v32];
        do
        {
          if (v49 >= 1)
          {
            v56 = 0;
            v57 = v34[v37];
            v58 = 4 * v35[v37];
            v59 = 2 * v36[v37];
            v60 = v50;
            v61 = v55;
            do
            {
              if (v57 >= 1)
              {
                v62 = 0;
                v63 = 0;
                v64 = v57;
                do
                {
                  _S0 = *(v61 + v63);
                  __asm { FCVT            H0, S0 }

                  *(v60 + v62) = _S0;
                  v63 += v58;
                  v62 += v59;
                  --v64;
                }

                while (v64);
              }

              ++v56;
              v61 = (v61 + v52);
              v60 = (v60 + v54);
            }

            while (v56 != v49);
          }

          ++v48;
          v55 = (v55 + v51);
          v50 = (v50 + v53);
        }

        while (v48 != v47);
      }

      if (!v119)
      {
        v27 = v46;
        v69 = v123;
        v75 = v116;
        v67 = v117;
        if (v117)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v66 = *v122;
      v27 = v46;
      v67 = v117;
      if (v119 < 2)
      {
        break;
      }

      v68 = v110;
      v69 = v123;
      if (v66 != *v110 - 1)
      {
        v71 = v112;
        v78 = v122;
LABEL_52:
        v75 = v116;
        goto LABEL_53;
      }

      v71 = v107;
      v70 = v108;
      v72 = v105;
      v73 = v122;
      v74 = v112;
      v75 = v116;
      do
      {
        v76 = v71;
        *v73 = 0;
        v32 = (v32 - v33[v74] * (*v68 - 1));
        v135 = v32;
        --v71;
        v73 = &v70[v44 - 8];
        v66 = *v73;
        v70 -= 4;
        if (v76 < 2)
        {
          break;
        }

        v68 = &v72[v44];
        v77 = *&v72[v44] - 1;
        v72 -= 4;
        v74 = v71;
      }

      while (v66 == v77);
      v78 = &v70[v44 - 4];
LABEL_53:
      *v78 = v66 + 1;
      v32 = (v32 + v33[v71]);
      v135 = v32;
      if (v117)
      {
LABEL_54:
        v79 = *v121;
        if (v67 >= 2 && v79 == *v75 - 1)
        {
          v80 = __p;
          v81 = v104;
          v82 = v106;
          v83 = v75;
          v84 = v121;
          v85 = v111;
          do
          {
            v86 = v82;
            *v84 = 0;
            v40 -= v41[v85] * (*v83 - 1);
            v124 = v40;
            --v82;
            v84 = &v80[v45 - 8];
            v79 = *v84;
            v80 -= 4;
            if (v86 < 2)
            {
              break;
            }

            v83 = &v81[v45];
            v87 = *&v81[v45] - 1;
            v81 -= 4;
            v85 = v82;
          }

          while (v79 == v87);
          v88 = &v80[v45 - 4];
        }

        else
        {
          v82 = v111;
          v88 = v121;
        }

        *v88 = v79 + 1;
        v40 += v41[v82];
        v124 = v40;
      }

LABEL_62:
      v31 = v69 + v118;
      if (v31 >= v120)
      {
        v89 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v71 = v112;
    v78 = v122;
    v69 = v123;
    goto LABEL_52;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v90 = *v131;
    if (*v131 >= 1)
    {
      v91 = 0;
      v92 = v133[3];
      v93 = *v92;
      v94 = v92[1];
      v95 = 4 * **v133;
      v96 = 4 * (*v133)[1];
      v97 = *(v131 + 1);
      v98 = 2 * v93;
      v99 = 2 * v94;
      do
      {
        if (v97 >= 1)
        {
          v100 = v13;
          v101 = v12;
          v102 = v97;
          do
          {
            _S0 = *v101;
            __asm { FCVT            H0, S0 }

            *v100 = _S0;
            v101 = (v101 + v96);
            v100 = (v100 + v99);
            --v102;
          }

          while (v102);
        }

        ++v91;
        v12 = (v12 + v95);
        v13 = (v13 + v98);
      }

      while (v91 != v90);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v131;
    if (*v131 >= 1)
    {
      v19 = *v133[3];
      v20 = 4 * **v133;
      do
      {
        _S0 = *v12;
        __asm { FCVT            H0, S0 }

        *v13 = _S0;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_83:
  v135 = &v133;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v135);
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void sub_25A3CC9BC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<float,float>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v112 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v112)
    {
      v82 = v121;
      if (v121)
      {
LABEL_64:
        v122 = v82;
        operator delete(v82);
      }

LABEL_65:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_83;
    }

    v106 = v12;
    v107 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v105 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v100 = v134;
    v104 = v32;
    v102 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v99 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v113 = &v121[4 * v36];
    v114 = &v134[4 * v32];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v110 = v23;
    v111 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v97 = v128 - 8;
    v98 = v37 - 1;
    v39 = 4 * v37;
    v96 = v117 - 8;
    v103 = v36;
    v108 = v117 + 4 * v36;
    v109 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = v21;
      v41 = v28[v21];
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = v28[v105];
        v44 = &v107[v34];
        v45 = 4 * v29[v21];
        v46 = 4 * v29[v105];
        v47 = 4 * v30[v21];
        v48 = 4 * v30[v105];
        v49 = &v106[v26];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = v28[v31];
            v52 = 4 * v29[v31];
            v53 = 4 * v30[v31];
            v54 = v44;
            v55 = v49;
            do
            {
              if (v51 >= 1)
              {
                v56 = 0;
                v57 = 0;
                v58 = v51;
                do
                {
                  *(v54 + v56) = *(v55 + v57);
                  v57 += v52;
                  v56 += v53;
                  --v58;
                }

                while (v58);
              }

              ++v50;
              v55 = (v55 + v46);
              v54 = (v54 + v48);
            }

            while (v50 != v43);
          }

          ++v42;
          v49 = (v49 + v45);
          v44 = (v44 + v47);
        }

        while (v42 != v41);
      }

      if (!v111)
      {
        v21 = v40;
        v62 = v115;
        v68 = v108;
        v60 = v109;
        if (v109)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v59 = *v114;
      v21 = v40;
      v60 = v109;
      if (v111 < 2)
      {
        break;
      }

      v61 = v102;
      v62 = v115;
      if (v59 != *v102 - 1)
      {
        v64 = v104;
        v71 = v114;
LABEL_52:
        v68 = v108;
        goto LABEL_53;
      }

      v64 = v99;
      v63 = v100;
      v65 = v97;
      v66 = v114;
      v67 = v104;
      v68 = v108;
      do
      {
        v69 = v64;
        *v66 = 0;
        v26 = (v26 - v27[v67] * (*v61 - 1));
        v127 = v26;
        --v64;
        v66 = &v63[v38 - 8];
        v59 = *v66;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v65[v38];
        v70 = *&v65[v38] - 1;
        v65 -= 4;
        v67 = v64;
      }

      while (v59 == v70);
      v71 = &v63[v38 - 4];
LABEL_53:
      *v71 = v59 + 1;
      v26 = (v26 + v27[v64]);
      v127 = v26;
      if (v109)
      {
LABEL_54:
        v72 = *v113;
        if (v60 >= 2 && v72 == *v68 - 1)
        {
          v73 = __p;
          v74 = v96;
          v75 = v98;
          v76 = v68;
          v77 = v113;
          v78 = v103;
          do
          {
            v79 = v75;
            *v77 = 0;
            v34 -= v35[v78] * (*v76 - 1);
            v116 = v34;
            --v75;
            v77 = &v73[v39 - 8];
            v72 = *v77;
            v73 -= 4;
            if (v79 < 2)
            {
              break;
            }

            v76 = &v74[v39];
            v80 = *&v74[v39] - 1;
            v74 -= 4;
            v78 = v75;
          }

          while (v72 == v80);
          v81 = &v73[v39 - 4];
        }

        else
        {
          v75 = v103;
          v81 = v113;
        }

        *v81 = v72 + 1;
        v34 += v35[v75];
        v116 = v34;
      }

LABEL_62:
      v25 = v62 + v110;
      if (v25 >= v112)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v64 = v104;
    v71 = v114;
    v62 = v115;
    goto LABEL_52;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v83 = *v123;
    if (*v123 >= 1)
    {
      v84 = 0;
      v85 = v125[3];
      v86 = *v85;
      v87 = v85[1];
      v88 = 4 * **v125;
      v89 = 4 * (*v125)[1];
      v90 = *(v123 + 1);
      v91 = 4 * v86;
      v92 = 4 * v87;
      do
      {
        if (v90 >= 1)
        {
          v93 = v13;
          v94 = v12;
          v95 = v90;
          do
          {
            *v93 = *v94;
            v94 = (v94 + v89);
            v93 = (v93 + v92);
            --v95;
          }

          while (v95);
        }

        ++v84;
        v12 = (v12 + v88);
        v13 = (v13 + v91);
      }

      while (v84 != v83);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = *v125[3];
      v20 = 4 * **v125;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_83:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }
}

void sub_25A3CD114(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<float,double>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v112 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v112)
    {
      v82 = v121;
      if (v121)
      {
LABEL_64:
        v122 = v82;
        operator delete(v82);
      }

LABEL_65:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_83;
    }

    v106 = v12;
    v107 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v105 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v100 = v134;
    v104 = v32;
    v102 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v99 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v113 = &v121[4 * v36];
    v114 = &v134[4 * v32];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v110 = v23;
    v111 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v97 = v128 - 8;
    v98 = v37 - 1;
    v39 = 4 * v37;
    v96 = v117 - 8;
    v103 = v36;
    v108 = v117 + 4 * v36;
    v109 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = v21;
      v41 = v28[v21];
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = v28[v105];
        v44 = &v107[v34];
        v45 = 4 * v29[v21];
        v46 = 4 * v29[v105];
        v47 = 8 * v30[v21];
        v48 = 8 * v30[v105];
        v49 = &v106[v26];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = v28[v31];
            v52 = 4 * v29[v31];
            v53 = 8 * v30[v31];
            v54 = v44;
            v55 = v49;
            do
            {
              if (v51 >= 1)
              {
                v56 = 0;
                v57 = 0;
                v58 = v51;
                do
                {
                  *(v54 + v56) = *(v55 + v57);
                  v57 += v52;
                  v56 += v53;
                  --v58;
                }

                while (v58);
              }

              ++v50;
              v55 = (v55 + v46);
              v54 = (v54 + v48);
            }

            while (v50 != v43);
          }

          ++v42;
          v49 = (v49 + v45);
          v44 = (v44 + v47);
        }

        while (v42 != v41);
      }

      if (!v111)
      {
        v21 = v40;
        v62 = v115;
        v68 = v108;
        v60 = v109;
        if (v109)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v59 = *v114;
      v21 = v40;
      v60 = v109;
      if (v111 < 2)
      {
        break;
      }

      v61 = v102;
      v62 = v115;
      if (v59 != *v102 - 1)
      {
        v64 = v104;
        v71 = v114;
LABEL_52:
        v68 = v108;
        goto LABEL_53;
      }

      v64 = v99;
      v63 = v100;
      v65 = v97;
      v66 = v114;
      v67 = v104;
      v68 = v108;
      do
      {
        v69 = v64;
        *v66 = 0;
        v26 = (v26 - v27[v67] * (*v61 - 1));
        v127 = v26;
        --v64;
        v66 = &v63[v38 - 8];
        v59 = *v66;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v65[v38];
        v70 = *&v65[v38] - 1;
        v65 -= 4;
        v67 = v64;
      }

      while (v59 == v70);
      v71 = &v63[v38 - 4];
LABEL_53:
      *v71 = v59 + 1;
      v26 = (v26 + v27[v64]);
      v127 = v26;
      if (v109)
      {
LABEL_54:
        v72 = *v113;
        if (v60 >= 2 && v72 == *v68 - 1)
        {
          v73 = __p;
          v74 = v96;
          v75 = v98;
          v76 = v68;
          v77 = v113;
          v78 = v103;
          do
          {
            v79 = v75;
            *v77 = 0;
            v34 -= v35[v78] * (*v76 - 1);
            v116 = v34;
            --v75;
            v77 = &v73[v39 - 8];
            v72 = *v77;
            v73 -= 4;
            if (v79 < 2)
            {
              break;
            }

            v76 = &v74[v39];
            v80 = *&v74[v39] - 1;
            v74 -= 4;
            v78 = v75;
          }

          while (v72 == v80);
          v81 = &v73[v39 - 4];
        }

        else
        {
          v75 = v103;
          v81 = v113;
        }

        *v81 = v72 + 1;
        v34 += v35[v75];
        v116 = v34;
      }

LABEL_62:
      v25 = v62 + v110;
      if (v25 >= v112)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v64 = v104;
    v71 = v114;
    v62 = v115;
    goto LABEL_52;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v83 = *v123;
    if (*v123 >= 1)
    {
      v84 = 0;
      v85 = v125[3];
      v86 = *v85;
      v87 = v85[1];
      v88 = 4 * **v125;
      v89 = 4 * (*v125)[1];
      v90 = *(v123 + 1);
      v91 = 8 * v86;
      v92 = 8 * v87;
      do
      {
        if (v90 >= 1)
        {
          v93 = v13;
          v94 = v12;
          v95 = v90;
          do
          {
            *v93 = *v94;
            v94 = (v94 + v89);
            v93 = (v93 + v92);
            --v95;
          }

          while (v95);
        }

        ++v84;
        v12 = (v12 + v88);
        v13 = (v13 + v91);
      }

      while (v84 != v83);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = *v125[3];
      v20 = 4 * **v125;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_83:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }
}

void sub_25A3CD87C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_single<float,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 48);
  v3 = (**(*result + 152) + (HIWORD(**(*result + 152)) & 1u) + 0x7FFF) >> 16;
  if (v2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = (*(*a2 + 152) + 8);
    do
    {
      v8 = vdupq_n_s64(v4);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A99B0D0)));
      if (vuzp1_s8(vuzp1_s16(v9, *v5.i8), *v5.i8).u8[0])
      {
        *(v7 - 4) = v3;
      }

      if (vuzp1_s8(vuzp1_s16(v9, *&v5), *&v5).i8[1])
      {
        *(v7 - 3) = v3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A99B0C0)))), *&v5).i8[2])
      {
        *(v7 - 2) = v3;
        *(v7 - 1) = v3;
      }

      v10 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A9C2E80)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v10, *&v5)).i32[1])
      {
        *v7 = v3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v10, *&v5)).i8[5])
      {
        v7[1] = v3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A9C2E70))))).i8[6])
      {
        v7[2] = v3;
        v7[3] = v3;
      }

      v4 += 8;
      v7 += 8;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t mlx::core::anonymous namespace::copy_vector<float,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 160);
  if (v2)
  {
    v3 = *(*result + 152);
    v4 = *(*a2 + 152);
    v5 = 4 * v2;
    do
    {
      v6 = *v3++;
      *v4++ = (v6 + (HIWORD(v6) & 1) + 0x7FFF) >> 16;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<float,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v134 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = (*v12 + (HIWORD(*v12) & 1u) + 0x7FFF) >> 16;
    return;
  }

  v109 = *(*a1 + 48);
  v125 = 0;
  v126 = 0;
  v127 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v114, &v125, &v131, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v114, 0x7FFFFFFFuLL, &v121);
  v124 = &v114;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v124);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v128 + i);
    if (v16)
    {
      *(&v129 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v122 - v121) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v125, &v121, v123, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v114, &v121, v123 + 3, v17 - 3);
    v22 = v122 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v122);
    if (!v109)
    {
      v80 = v119;
      if (v119)
      {
LABEL_62:
        v120 = v80;
        operator delete(v80);
      }

LABEL_63:
      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      goto LABEL_81;
    }

    v103 = v12;
    v104 = v13;
    v25 = 0;
    v26 = v125;
    v27 = v121;
    v28 = *v123;
    v29 = v123[3];
    v101 = v17 - 2;
    v30 = v17 - 1;
    v31 = (((v127 - v126) << 30) - 0x100000000) >> 32;
    v96 = v132;
    v100 = v31;
    v98 = &v126[4 * v31];
    v32 = ((v127 - v126) >> 2) & 0x7FFFFFFF;
    v95 = v32 - 1;
    v33 = v114;
    v34 = (((v116 - v115) << 30) - 0x100000000) >> 32;
    __p = v119;
    v110 = &v119[4 * v34];
    v111 = &v132[4 * v31];
    v35 = ((v116 - v115) >> 2) & 0x7FFFFFFF;
    v108 = (v127 - v126) >> 2;
    v36 = 4 * v32;
    v93 = v126 - 8;
    v94 = v35 - 1;
    v37 = 4 * v35;
    v92 = v115 - 8;
    v99 = v34;
    v112 = v17 - 3;
    v102 = v129;
    v106 = (v116 - v115) >> 2;
    v107 = v117;
    v105 = v115 + 4 * v34;
    while (1)
    {
      v113 = v25;
      v38 = v27[v21];
      if (v38 >= 1)
      {
        v39 = 0;
        v40 = v27[v101];
        v41 = &v104[v33];
        v42 = 4 * v28[v112];
        v43 = 4 * v28[v101];
        v44 = 2 * v29[v112];
        v45 = 2 * v29[v101];
        v46 = &v103[v26];
        do
        {
          if (v40 >= 1)
          {
            v47 = 0;
            v48 = v27[v30];
            v49 = 4 * v28[v30];
            v50 = 2 * v29[v30];
            v51 = v41;
            v52 = v46;
            do
            {
              if (v48 >= 1)
              {
                v53 = 0;
                v54 = 0;
                v55 = v48;
                do
                {
                  *(v51 + v53) = (*(v52 + v54) + (HIWORD(*(v52 + v54)) & 1u) + 0x7FFF) >> 16;
                  v54 += v49;
                  v53 += v50;
                  --v55;
                }

                while (v55);
              }

              ++v47;
              v52 = (v52 + v43);
              v51 = (v51 + v45);
            }

            while (v47 != v40);
          }

          ++v39;
          v46 = (v46 + v42);
          v41 = (v41 + v44);
        }

        while (v39 != v38);
      }

      if (v108)
      {
        break;
      }

      v21 = v112;
      v64 = v113;
      v57 = v106;
      v65 = v107;
      v66 = v105;
      if (v106)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v64 + v23;
      if (v25 >= v109)
      {
        v80 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v56 = *v111;
    v21 = v112;
    v57 = v106;
    if (v108 >= 2 && v56 == *v98 - 1)
    {
      v59 = v95;
      v58 = v96;
      v60 = v93;
      v61 = v98;
      v62 = v111;
      v63 = v100;
      v64 = v113;
      v65 = v107;
      v66 = v105;
      do
      {
        v67 = v59;
        *v62 = 0;
        v26 = (v26 - v102[v63] * (*v61 - 1));
        v125 = v26;
        --v59;
        v62 = &v58[v36 - 8];
        v56 = *v62;
        v58 -= 4;
        if (v67 < 2)
        {
          break;
        }

        v61 = &v60[v36];
        v68 = *&v60[v36] - 1;
        v60 -= 4;
        v63 = v59;
      }

      while (v56 == v68);
      v69 = &v58[v36 - 4];
    }

    else
    {
      v59 = v100;
      v69 = v111;
      v64 = v113;
      v65 = v107;
      v66 = v105;
    }

    *v69 = v56 + 1;
    v26 = (v26 + v102[v59]);
    v125 = v26;
    if (!v106)
    {
      goto LABEL_60;
    }

LABEL_52:
    v70 = *v110;
    if (v57 >= 2 && v70 == *v66 - 1)
    {
      v71 = __p;
      v72 = v92;
      v73 = v94;
      v74 = v66;
      v75 = v110;
      v76 = v99;
      do
      {
        v77 = v73;
        *v75 = 0;
        v33 -= v65[v76] * (*v74 - 1);
        v114 = v33;
        --v73;
        v75 = &v71[v37 - 8];
        v70 = *v75;
        v71 -= 4;
        if (v77 < 2)
        {
          break;
        }

        v74 = &v72[v37];
        v78 = *&v72[v37] - 1;
        v72 -= 4;
        v76 = v73;
      }

      while (v70 == v78);
      v79 = &v71[v37 - 4];
    }

    else
    {
      v73 = v99;
      v79 = v110;
    }

    *v79 = v70 + 1;
    v33 += v65[v73];
    v114 = v33;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v81 = *v121;
    if (*v121 >= 1)
    {
      v82 = 0;
      v83 = v123[3];
      v84 = *v83;
      v85 = v83[1];
      v86 = 4 * **v123;
      v87 = 4 * (*v123)[1];
      v88 = *(v121 + 1);
      do
      {
        if (v88 >= 1)
        {
          v89 = v13;
          v90 = v12;
          v91 = v88;
          do
          {
            *v89 = (*v90 + (HIWORD(*v90) & 1u) + 0x7FFF) >> 16;
            v90 = (v90 + v87);
            v89 += v85;
            --v91;
          }

          while (v91);
        }

        ++v82;
        v12 = (v12 + v86);
        v13 += v84;
      }

      while (v82 != v81);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v121;
    if (*v121 >= 1)
    {
      v19 = 4 * **v123;
      v20 = 2 * *v123[3];
      do
      {
        *v13 = (*v12 + (HIWORD(*v12) & 1u) + 0x7FFF) >> 16;
        v12 = (v12 + v19);
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v125 = &v123;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }
}

void sub_25A3CE244(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<float,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v112 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 4 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
  }

  else
  {
    v15 = *(*a1 + 48);
    v103 = 0;
    v104 = 0;
    v105 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v103, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v106, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
    v92 = 0;
    v93 = 0;
    v94 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v92, &v103, &v109, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v92, 0x7FFFFFFFuLL, &v99);
    v102 = &v92;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v102);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v106 + i);
      if (v17)
      {
        *(&v107 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v99;
    v19 = (v100 - v99) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      v24 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, &v99, v101, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v92, &v99, v101 + 3, v19 - 3);
      v25 = v100 - 3;
      v26 = 1;
      do
      {
        v27 = *v25++;
        v26 *= v27;
      }

      while (v25 != v100);
      if (v15)
      {
        v28 = 0;
        v29 = v19 - 2;
        v30 = v19 - 1;
        v31 = v13 + 4;
        do
        {
          v32 = *(v99 + v24);
          if (v32 >= 1)
          {
            v33 = 0;
            v34 = v101;
            v35 = &v12[v103];
            v36 = 4 * (*v101)[v24];
            v37 = &v31[8 * v92];
            v38 = 8 * v101[3][v24];
            do
            {
              v39 = *(v99 + v29);
              if (v39 >= 1)
              {
                v40 = 0;
                v41 = 4 * (*v34)[v29];
                v42 = 8 * v34[3][v29];
                v43 = v37;
                v44 = v35;
                do
                {
                  v45 = *(v99 + v30);
                  if (v45 >= 1)
                  {
                    v46 = 0;
                    v47 = 4 * (*v34)[v30];
                    v48 = 8 * v34[3][v30];
                    v49 = v43;
                    do
                    {
                      *(v49 - 4) = *(v44 + v46);
                      v46 += v47;
                      v49 += v48;
                      --v45;
                    }

                    while (v45);
                  }

                  ++v40;
                  v44 = (v44 + v41);
                  v43 += v42;
                }

                while (v40 != v39);
              }

              ++v33;
              v35 = (v35 + v36);
              v37 += v38;
            }

            while (v33 != v32);
          }

          v50 = v105 - v104;
          v51 = (v105 - v104) >> 2;
          if (v51)
          {
            v52 = v110;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = v110 + 4 * v53;
            v55 = *v54;
            v56 = v104 + 4 * v53;
            v57 = v107;
            v58 = v103;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v104 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 = (v58 - v57[v53] * (*v56 - 1));
                v103 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v103 = (v58 + v57[v60]);
          }

          v66 = v94 - v93;
          v67 = (v94 - v93) >> 2;
          if (v67)
          {
            v68 = __p;
            v69 = ((v66 << 30) - 0x100000000) >> 32;
            v70 = __p + 4 * v69;
            v71 = *v70;
            v72 = v95;
            v73 = v92;
            if (v67 >= 2 && (v74 = v93 + 4 * v69, v71 == *v74 - 1))
            {
              v75 = (v66 >> 2) & 0x7FFFFFFF;
              v76 = v75 - 1;
              v77 = 4 * v75;
              v78 = v93 - 8;
              do
              {
                v79 = v76;
                *v70 = 0;
                v73 -= v72[v69] * (*v74 - 1);
                v92 = v73;
                --v76;
                v70 = &v68[v77 - 8];
                v71 = *v70;
                v68 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v74 = &v78[v77];
                v80 = *&v78[4 * v75] - 1;
                v78 -= 4;
                v69 = v76;
              }

              while (v71 == v80);
              v70 = &v68[4 * v75 - 4];
            }

            else
            {
              v76 = ((v66 << 30) - 0x100000000) >> 32;
            }

            *v70 = v71 + 1;
            v92 = v72[v76] + v73;
          }

          v28 += v26;
        }

        while (v28 < v15);
      }

      if (__p)
      {
        v98 = __p;
        operator delete(__p);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v110)
      {
        v111 = v110;
        operator delete(v110);
      }

      if (v107)
      {
        v108 = v107;
        operator delete(v107);
      }

      if (v104)
      {
        v105 = v104;
        operator delete(v104);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      if (v19 == 2)
      {
        v81 = *v99;
        if (*v99 >= 1)
        {
          v82 = 0;
          v83 = v101;
          v84 = 4 * **v101;
          v85 = v13 + 4;
          v86 = 8 * *v101[3];
          do
          {
            v87 = v18[1];
            if (v87 >= 1)
            {
              v88 = 4 * (*v83)[1];
              v89 = 8 * v83[3][1];
              v90 = v85;
              v91 = v12;
              do
              {
                *(v90 - 4) = *v91;
                v91 = (v91 + v88);
                v90 += v89;
                --v87;
              }

              while (v87);
            }

            ++v82;
            v12 = (v12 + v84);
            v85 += v86;
          }

          while (v82 != v81);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v99;
        if (*v99 >= 1)
        {
          v21 = 4 * **v101;
          v22 = v13 + 4;
          v23 = 8 * *v101[3];
          do
          {
            *(v22 - 4) = *v12;
            v12 = (v12 + v21);
            v22 += v23;
            --v20;
          }

          while (v20);
        }
      }
    }

    v103 = &v101;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v103);
    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }
  }
}

void sub_25A3CE8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,BOOL>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v134 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12 != 0.0;
    return;
  }

  v109 = *(*a1 + 48);
  v125 = 0;
  v126 = 0;
  v127 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v114, &v125, &v131, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v114, 0x7FFFFFFFuLL, &v121);
  v124 = &v114;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v124);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v128 + i);
    if (v16)
    {
      *(&v129 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v122 - v121) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v125, &v121, v123, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v114, &v121, v123 + 3, v17 - 3);
    v22 = v122 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v122);
    if (!v109)
    {
      v81 = v119;
      if (v119)
      {
LABEL_62:
        v120 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      goto LABEL_81;
    }

    v103 = v12;
    v104 = v13;
    v25 = 0;
    v26 = v125;
    v27 = v129;
    v28 = v121;
    v29 = *v123;
    v30 = v123[3];
    v102 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v127 - v126) << 30) - 0x100000000) >> 32;
    v97 = v132;
    v111 = &v132[4 * v32];
    v101 = v32;
    v99 = &v126[4 * v32];
    v33 = ((v127 - v126) >> 2) & 0x7FFFFFFF;
    v96 = v33 - 1;
    v34 = v114;
    v35 = v117;
    v36 = (((v116 - v115) << 30) - 0x100000000) >> 32;
    __p = v119;
    v110 = &v119[4 * v36];
    v37 = ((v116 - v115) >> 2) & 0x7FFFFFFF;
    v95 = v37 - 1;
    v107 = v23;
    v108 = (v127 - v126) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v93 = v115 - 8;
    v94 = v126 - 8;
    v100 = v36;
    v112 = v17 - 3;
    v105 = v115 + 4 * v36;
    v106 = (v116 - v115) >> 2;
    while (1)
    {
      v113 = v25;
      v40 = v28[v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v30[v112];
        v43 = &v104[v34];
        v44 = &v103[v26];
        v45 = v30[v102];
        v46 = v28[v102];
        v47 = 8 * v29[v112];
        v48 = 8 * v29[v102];
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = v30[v31];
            v51 = v28[v31];
            v52 = 8 * v29[v31];
            v53 = v44;
            v54 = v43;
            do
            {
              if (v51 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v51;
                do
                {
                  v54[v55] = *(v53 + v56) != 0.0;
                  v56 += v52;
                  v55 += v50;
                  --v57;
                }

                while (v57);
              }

              v54 += v45;
              ++v49;
              v53 = (v53 + v48);
            }

            while (v49 != v46);
          }

          v43 += v42;
          ++v41;
          v44 = (v44 + v47);
        }

        while (v41 != v40);
      }

      if (v108)
      {
        break;
      }

      v21 = v112;
      v66 = v113;
      v67 = v105;
      v59 = v106;
      if (v106)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v107;
      if (v25 >= v109)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v111;
    v21 = v112;
    v59 = v106;
    if (v108 >= 2 && (v60 = v99, v58 == *v99 - 1))
    {
      v62 = v96;
      v61 = v97;
      v63 = v94;
      v64 = v111;
      v65 = v101;
      v66 = v113;
      v67 = v105;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v125 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v101;
      v70 = v111;
      v66 = v113;
      v67 = v105;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v125 = v26;
    if (!v106)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v110;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v93;
      v74 = v95;
      v75 = v67;
      v76 = v110;
      v77 = v100;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v114 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v100;
      v80 = v110;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v114 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v121;
    if (*v121 >= 1)
    {
      v83 = 0;
      v84 = v123[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = *(v121 + 1);
      v88 = 8 * **v123;
      v89 = 8 * (*v123)[1];
      do
      {
        if (v87 >= 1)
        {
          v90 = v12;
          v91 = v87;
          v92 = v13;
          do
          {
            *v92 = *v90 != 0.0;
            v92 += v86;
            v90 = (v90 + v89);
            --v91;
          }

          while (v91);
        }

        v13 += v85;
        ++v83;
        v12 = (v12 + v88);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v121;
    if (*v121 >= 1)
    {
      v19 = *v123[3];
      v20 = 8 * **v123;
      do
      {
        *v13 = *v12 != 0.0;
        v13 += v19;
        v12 = (v12 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v125 = &v123;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }
}

void sub_25A3CF054(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,unsigned char>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v109 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
  }

  else
  {
    v15 = *(*a1 + 48);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v100, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    v103 = 0;
    v104 = 0;
    v105 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v103, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
    v89 = 0;
    v90 = 0;
    v91 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v89, &v100, &v106, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v89, 0x7FFFFFFFuLL, &v96);
    v99 = &v89;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v99);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v103 + i);
      if (v17)
      {
        *(&v104 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v96;
    v19 = (v97 - v96) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      v23 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v100, &v96, v98, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v96, v98 + 3, v19 - 3);
      v24 = v97 - 3;
      v25 = 1;
      do
      {
        v26 = *v24++;
        v25 *= v26;
      }

      while (v24 != v97);
      if (v15)
      {
        v27 = 0;
        v28 = v19 - 2;
        v29 = v19 - 1;
        v30 = v98;
        do
        {
          v31 = *(v96 + v23);
          if (v31 >= 1)
          {
            v32 = 0;
            v33 = v30[3][v23];
            v34 = &v13[v89];
            v35 = &v12[v100];
            v36 = 8 * (*v30)[v23];
            do
            {
              v37 = *(v96 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = v30[3][v28];
                v40 = 8 * (*v30)[v28];
                v41 = v35;
                v42 = v34;
                do
                {
                  v43 = *(v96 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = v30[3][v29];
                    v47 = 8 * (*v30)[v29];
                    do
                    {
                      v42[v44] = *(v41 + v45);
                      v45 += v47;
                      v44 += v46;
                      --v43;
                    }

                    while (v43);
                  }

                  v42 += v39;
                  ++v38;
                  v41 = (v41 + v40);
                }

                while (v38 != v37);
              }

              v34 += v33;
              ++v32;
              v35 = (v35 + v36);
            }

            while (v32 != v31);
          }

          v48 = v102 - v101;
          v49 = (v102 - v101) >> 2;
          if (v49)
          {
            v50 = v107;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v107 + 4 * v51;
            v53 = *v52;
            v54 = v101 + 4 * v51;
            v55 = v104;
            v56 = v100;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v101 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v100 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v100 = (v56 + v55[v58]);
          }

          v64 = v91 - v90;
          v65 = (v91 - v90) >> 2;
          if (v65)
          {
            v66 = __p;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = __p + 4 * v67;
            v69 = *v68;
            v70 = v92;
            v71 = v89;
            if (v65 >= 2 && (v72 = v90 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v90 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v89 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v89 = v70[v74] + v71;
          }

          v27 += v25;
        }

        while (v27 < v15);
      }

      if (__p)
      {
        v95 = __p;
        operator delete(__p);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v107)
      {
        v108 = v107;
        operator delete(v107);
      }

      if (v104)
      {
        v105 = v104;
        operator delete(v104);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      if (v19 == 2)
      {
        v79 = *v96;
        if (*v96 >= 1)
        {
          v80 = 0;
          v81 = v98;
          v82 = *v98[3];
          v83 = 8 * **v98;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = v81[3][1];
              v86 = 8 * (*v81)[1];
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v88 += v85;
                v87 = (v87 + v86);
                --v84;
              }

              while (v84);
            }

            v13 += v82;
            ++v80;
            v12 = (v12 + v83);
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v96;
        if (*v96 >= 1)
        {
          v21 = *v98[3];
          v22 = 8 * **v98;
          do
          {
            *v13 = *v12;
            v13 += v21;
            v12 = (v12 + v22);
            --v20;
          }

          while (v20);
        }
      }
    }

    v100 = &v98;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v100);
    if (v96)
    {
      v97 = v96;
      operator delete(v96);
    }
  }
}

void sub_25A3CF6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_single<double,unsigned short>(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 48);
  if (v2)
  {
    v3 = 0;
    v4 = **(*result + 152);
    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = (*(*a2 + 152) + 8);
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A99B0D0)));
      if (vuzp1_s8(vuzp1_s16(v9, *v5.i8), *v5.i8).u8[0])
      {
        *(v7 - 4) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v9, *&v5), *&v5).i8[1])
      {
        *(v7 - 3) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A99B0C0)))), *&v5).i8[2])
      {
        *(v7 - 2) = v4;
        *(v7 - 1) = v4;
      }

      v10 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A9C2E80)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v10, *&v5)).i32[1])
      {
        *v7 = v4;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v10, *&v5)).i8[5])
      {
        v7[1] = v4;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_25A9C2E70))))).i8[6])
      {
        v7[2] = v4;
        v7[3] = v4;
      }

      v3 += 8;
      v7 += 8;
    }

    while (v6 != v3);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<double,unsigned short>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v111 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v111)
    {
      v81 = v121;
      if (v121)
      {
LABEL_62:
        v122 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_81;
    }

    v105 = v12;
    v106 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v104 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v99 = v134;
    v113 = &v134[4 * v32];
    v103 = v32;
    v101 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v98 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v112 = &v121[4 * v36];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v97 = v37 - 1;
    v109 = v23;
    v110 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v95 = v117 - 8;
    v96 = v128 - 8;
    v102 = v36;
    v114 = v17 - 3;
    v107 = v117 + 4 * v36;
    v108 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = v28[v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v28[v104];
        v43 = &v106[v34];
        v44 = 8 * v29[v114];
        v45 = 8 * v29[v104];
        v46 = 2 * v30[v114];
        v47 = 2 * v30[v104];
        v48 = &v105[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = v28[v31];
            v51 = 8 * v29[v31];
            v52 = 2 * v30[v31];
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  *(v53 + v55) = *(v54 + v56);
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v110)
      {
        break;
      }

      v21 = v114;
      v66 = v115;
      v67 = v107;
      v59 = v108;
      if (v108)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v109;
      if (v25 >= v111)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v113;
    v21 = v114;
    v59 = v108;
    if (v110 >= 2 && (v60 = v101, v58 == *v101 - 1))
    {
      v62 = v98;
      v61 = v99;
      v63 = v96;
      v64 = v113;
      v65 = v103;
      v66 = v115;
      v67 = v107;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v127 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v103;
      v70 = v113;
      v66 = v115;
      v67 = v107;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v127 = v26;
    if (!v108)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v112;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v95;
      v74 = v97;
      v75 = v67;
      v76 = v112;
      v77 = v102;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v116 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v102;
      v80 = v112;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v116 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v123;
    if (*v123 >= 1)
    {
      v83 = 0;
      v84 = v125[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = 8 * **v125;
      v88 = 8 * (*v125)[1];
      v89 = *(v123 + 1);
      v90 = 2 * v85;
      v91 = 2 * v86;
      do
      {
        if (v89 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v89;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v88);
            v92 = (v92 + v91);
            --v94;
          }

          while (v94);
        }

        ++v83;
        v12 = (v12 + v87);
        v13 = (v13 + v90);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = *v125[3];
      v20 = 8 * **v125;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }
}

void sub_25A3CFF98(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,unsigned int>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v134 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v109 = *(*a1 + 48);
  v125 = 0;
  v126 = 0;
  v127 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v114, &v125, &v131, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v114, 0x7FFFFFFFuLL, &v121);
  v124 = &v114;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v124);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v128 + i);
    if (v16)
    {
      *(&v129 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = v121;
  v18 = (v122 - v121) >> 2;
  if (v18 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v22 = v18 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v125, &v121, v123, v18 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v114, &v121, v123 + 3, v18 - 3);
    v23 = v122 - 3;
    v24 = 1;
    do
    {
      v25 = *v23++;
      v24 *= v25;
    }

    while (v23 != v122);
    if (!v109)
    {
      v82 = v119;
      if (v119)
      {
LABEL_62:
        v120 = v82;
        operator delete(v82);
      }

LABEL_63:
      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      goto LABEL_81;
    }

    v103 = v12;
    v104 = v13;
    v26 = 0;
    v27 = v125;
    v28 = v129;
    v29 = v121;
    v30 = *v123;
    v31 = v123[3];
    v32 = v18 - 2;
    v33 = v18 - 1;
    v34 = (((v127 - v126) << 30) - 0x100000000) >> 32;
    v98 = v132;
    v111 = &v132[4 * v34];
    v102 = v34;
    v100 = &v126[4 * v34];
    v35 = ((v127 - v126) >> 2) & 0x7FFFFFFF;
    v97 = v35 - 1;
    v36 = v114;
    v37 = v117;
    v38 = (((v116 - v115) << 30) - 0x100000000) >> 32;
    __p = v119;
    v110 = &v119[4 * v38];
    v39 = ((v116 - v115) >> 2) & 0x7FFFFFFF;
    v96 = v39 - 1;
    v107 = v24;
    v108 = (v127 - v126) >> 2;
    v40 = 4 * v35;
    v41 = 4 * v39;
    v94 = v115 - 8;
    v95 = v126 - 8;
    v101 = v38;
    v112 = v18 - 3;
    v105 = v115 + 4 * v38;
    v106 = (v116 - v115) >> 2;
    while (1)
    {
      v113 = v26;
      v42 = v29[v22];
      if (v42 >= 1)
      {
        v43 = 0;
        v44 = &v104[v36];
        v45 = &v103[v27];
        v46 = 8 * v30[v112];
        v47 = 8 * v30[v32];
        v48 = 4 * v31[v112];
        v49 = 4 * v31[v32];
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = 8 * v30[v33];
            v53 = 4 * v31[v33];
            v54 = v44;
            v55 = v45;
            do
            {
              v56 = v29[v33];
              if (v56 >= 1)
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  *(v54 + v57) = *(v55 + v58);
                  v58 += v52;
                  v57 += v53;
                  --v56;
                }

                while (v56);
              }

              ++v51;
              v55 = (v55 + v47);
              v54 = (v54 + v49);
            }

            while (v51 != v50);
          }

          ++v43;
          v45 = (v45 + v46);
          v44 = (v44 + v48);
        }

        while (v43 != v42);
      }

      if (v108)
      {
        break;
      }

      v22 = v112;
      v67 = v113;
      v68 = v105;
      v60 = v106;
      if (v106)
      {
        goto LABEL_52;
      }

LABEL_60:
      v26 = v67 + v107;
      if (v26 >= v109)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v111;
    v22 = v112;
    v60 = v106;
    if (v108 >= 2 && (v61 = v100, v59 == *v100 - 1))
    {
      v62 = v97;
      v63 = v98;
      v64 = v95;
      v65 = v111;
      v66 = v102;
      v67 = v113;
      v68 = v105;
      do
      {
        v69 = v62;
        *v65 = 0;
        v27 = (v27 - v28[v66] * (*v61 - 1));
        v125 = v27;
        --v62;
        v65 = &v63[v40 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v64[v40];
        v70 = *&v64[v40] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v70);
      v71 = &v63[v40 - 4];
    }

    else
    {
      v62 = v102;
      v71 = v111;
      v67 = v113;
      v68 = v105;
    }

    *v71 = v59 + 1;
    v27 = (v27 + v28[v62]);
    v125 = v27;
    if (!v106)
    {
      goto LABEL_60;
    }

LABEL_52:
    v72 = *v110;
    if (v60 >= 2 && v72 == *v68 - 1)
    {
      v73 = __p;
      v74 = v94;
      v75 = v96;
      v76 = v68;
      v77 = v110;
      v78 = v101;
      do
      {
        v79 = v75;
        *v77 = 0;
        v36 -= v37[v78] * (*v76 - 1);
        v114 = v36;
        --v75;
        v77 = &v73[v41 - 8];
        v72 = *v77;
        v73 -= 4;
        if (v79 < 2)
        {
          break;
        }

        v76 = &v74[v41];
        v80 = *&v74[v41] - 1;
        v74 -= 4;
        v78 = v75;
      }

      while (v72 == v80);
      v81 = &v73[v41 - 4];
    }

    else
    {
      v75 = v101;
      v81 = v110;
    }

    *v81 = v72 + 1;
    v36 += v37[v75];
    v114 = v36;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v18 == 2)
  {
    v83 = *v121;
    if (*v121 >= 1)
    {
      v84 = 0;
      v85 = v123[3];
      v86 = 8 * **v123;
      v87 = 8 * (*v123)[1];
      v88 = v85[1];
      v89 = 4 * *v85;
      v90 = 4 * v88;
      do
      {
        v91 = v17[1];
        if (v91 >= 1)
        {
          v92 = v13;
          v93 = v12;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v87);
            v92 = (v92 + v90);
            --v91;
          }

          while (v91);
        }

        ++v84;
        v12 = (v12 + v86);
        v13 = (v13 + v89);
      }

      while (v84 != v83);
    }
  }

  else if (v18 == 1)
  {
    v19 = *v121;
    if (*v121 >= 1)
    {
      v20 = *v123[3];
      v21 = 8 * **v123;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v21);
        v13 += v20;
        --v19;
      }

      while (v19);
    }
  }

LABEL_81:
  v125 = &v123;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }
}

void sub_25A3D06F0(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,unsigned long long>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v126 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v100 = *(*a1 + 48);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v117, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v120, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v106, &v117, &v123, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v106, 0x7FFFFFFFuLL, &v113);
  v116 = &v106;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v116);
  for (i = 0; i != -6; i -= 3)
  {
    v16 = *(&v120 + i * 8);
    if (v16)
    {
      (&v121)[i] = v16;
      operator delete(v16);
    }
  }

  v17 = (v114 - v113) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v113, v115, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v106, &v113, v115 + 3, v17 - 3);
    v22 = v114 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v114);
    if (v100)
    {
      v97 = v13;
      v25 = 0;
      v104 = (v119 - v118) >> 2;
      v26 = v113;
      v27 = *v115;
      v28 = v115[3];
      v29 = v17 - 2;
      v30 = v17 - 1;
      v31 = (((v119 - v118) << 30) - 0x100000000) >> 32;
      v32 = v121;
      v92 = v124;
      v95 = v31;
      v96 = &v118[4 * v31];
      v102 = &v124[4 * v31];
      v103 = (v108 - v107) >> 2;
      v33 = v109;
      __p = v111;
      v94 = (((v108 - v107) << 30) - 0x100000000) >> 32;
      v101 = &v111[4 * v94];
      v34 = 4 * (v104 & 0x7FFFFFFF);
      v91 = v118 - 8;
      v35 = 4 * (v103 & 0x7FFFFFFF);
      v90 = v107 - 8;
      v98 = v107 + 4 * v94;
      v99 = v23;
      do
      {
        v105 = v25;
        v36 = v21;
        v37 = v26[v21];
        if (v37 >= 1)
        {
          v38 = 0;
          v39 = &v97[v106];
          v40 = &v12[v117];
          v41 = v26[v29];
          v42 = 8 * v27[v21];
          v43 = 8 * v28[v21];
          do
          {
            if (v41 >= 1)
            {
              v44 = 0;
              v45 = v26[v30];
              v46 = 8 * v27[v29];
              v47 = 8 * v28[v29];
              v48 = v39;
              v49 = v40;
              do
              {
                if (v45 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 8 * v27[v30];
                  v53 = 8 * v28[v30];
                  v54 = v45;
                  do
                  {
                    *(v48 + v50) = *(v49 + v51);
                    v51 += v52;
                    v50 += v53;
                    --v54;
                  }

                  while (v54);
                }

                ++v44;
                v49 = (v49 + v46);
                v48 = (v48 + v47);
              }

              while (v44 != v41);
            }

            ++v38;
            v40 = (v40 + v42);
            v39 = (v39 + v43);
          }

          while (v38 != v37);
        }

        v21 = v36;
        if (v104)
        {
          v55 = *v102;
          v56 = v117;
          v57 = v96;
          if (v104 >= 2 && v55 == *v96 - 1)
          {
            v59 = (v104 & 0x7FFFFFFF) - 1;
            v58 = v92;
            v60 = v91;
            v61 = v102;
            v62 = v95;
            do
            {
              v63 = v59;
              *v61 = 0;
              v56 = (v56 - v32[v62] * (*v57 - 1));
              v117 = v56;
              --v59;
              v61 = &v58[v34 - 8];
              v55 = *v61;
              v58 -= 4;
              if (v63 < 2)
              {
                break;
              }

              v57 = &v60[v34];
              v64 = *&v60[4 * (v104 & 0x7FFFFFFF)] - 1;
              v60 -= 4;
              v62 = v59;
            }

            while (v55 == v64);
            v65 = &v58[v34 - 4];
          }

          else
          {
            v59 = v95;
            v65 = v102;
          }

          *v65 = v55 + 1;
          v117 = (v56 + v32[v59]);
        }

        if (v103)
        {
          v66 = *v101;
          v67 = v106;
          if (v103 >= 2 && v66 == *v98 - 1)
          {
            v68 = __p;
            v69 = v94;
            v70 = v90;
            v71 = (v103 & 0x7FFFFFFF) - 1;
            v72 = v98;
            v73 = v101;
            do
            {
              v74 = v71;
              *v73 = 0;
              v67 -= v33[v69] * (*v72 - 1);
              v106 = v67;
              --v71;
              v73 = &v68[v35 - 8];
              v66 = *v73;
              v68 -= 4;
              if (v74 < 2)
              {
                break;
              }

              v72 = &v70[v35];
              v75 = *&v70[4 * (v103 & 0x7FFFFFFF)] - 1;
              v70 -= 4;
              v69 = v71;
            }

            while (v66 == v75);
            v76 = &v68[v35 - 4];
          }

          else
          {
            v71 = v94;
            v76 = v101;
          }

          *v76 = v66 + 1;
          v106 = v33[v71] + v67;
        }

        v25 = v105 + v99;
      }

      while (v105 + v99 < v100);
      v77 = __p;
      if (!__p)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v77 = v111;
      if (!v111)
      {
        goto LABEL_62;
      }
    }

    v112 = v77;
    operator delete(v77);
LABEL_62:
    if (v109)
    {
      v110 = v109;
      operator delete(v109);
    }

    if (v107)
    {
      v108 = v107;
      operator delete(v107);
    }

    if (v124)
    {
      v125 = v124;
      operator delete(v124);
    }

    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

    goto LABEL_80;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v78 = *v113;
    if (*v113 >= 1)
    {
      v79 = 0;
      v80 = *v115;
      v81 = v115[3];
      v82 = *(v113 + 1);
      v83 = 8 * **v115;
      v84 = 8 * *v81;
      do
      {
        if (v82 >= 1)
        {
          v85 = 8 * v80[1];
          v86 = 8 * v81[1];
          v87 = v13;
          v88 = v12;
          v89 = v82;
          do
          {
            *v87 = *v88;
            v88 = (v88 + v85);
            v87 = (v87 + v86);
            --v89;
          }

          while (v89);
        }

        ++v79;
        v12 = (v12 + v83);
        v13 = (v13 + v84);
      }

      while (v79 != v78);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v113;
    if (*v113 >= 1)
    {
      v19 = *v115[3];
      v20 = 8 * **v115;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_80:
  v117 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v117);
  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }
}

void sub_25A3D0E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  mlx::core::ContiguousIterator::~ContiguousIterator((v37 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,signed char>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v109 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
  }

  else
  {
    v15 = *(*a1 + 48);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v100, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    v103 = 0;
    v104 = 0;
    v105 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v103, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
    v89 = 0;
    v90 = 0;
    v91 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v89, &v100, &v106, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v89, 0x7FFFFFFFuLL, &v96);
    v99 = &v89;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v99);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v103 + i);
      if (v17)
      {
        *(&v104 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v96;
    v19 = (v97 - v96) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      v23 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v100, &v96, v98, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v96, v98 + 3, v19 - 3);
      v24 = v97 - 3;
      v25 = 1;
      do
      {
        v26 = *v24++;
        v25 *= v26;
      }

      while (v24 != v97);
      if (v15)
      {
        v27 = 0;
        v28 = v19 - 2;
        v29 = v19 - 1;
        v30 = v98;
        do
        {
          v31 = *(v96 + v23);
          if (v31 >= 1)
          {
            v32 = 0;
            v33 = v30[3][v23];
            v34 = &v13[v89];
            v35 = &v12[v100];
            v36 = 8 * (*v30)[v23];
            do
            {
              v37 = *(v96 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = v30[3][v28];
                v40 = 8 * (*v30)[v28];
                v41 = v35;
                v42 = v34;
                do
                {
                  v43 = *(v96 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = v30[3][v29];
                    v47 = 8 * (*v30)[v29];
                    do
                    {
                      v42[v44] = *(v41 + v45);
                      v45 += v47;
                      v44 += v46;
                      --v43;
                    }

                    while (v43);
                  }

                  v42 += v39;
                  ++v38;
                  v41 = (v41 + v40);
                }

                while (v38 != v37);
              }

              v34 += v33;
              ++v32;
              v35 = (v35 + v36);
            }

            while (v32 != v31);
          }

          v48 = v102 - v101;
          v49 = (v102 - v101) >> 2;
          if (v49)
          {
            v50 = v107;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v107 + 4 * v51;
            v53 = *v52;
            v54 = v101 + 4 * v51;
            v55 = v104;
            v56 = v100;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v101 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v100 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v100 = (v56 + v55[v58]);
          }

          v64 = v91 - v90;
          v65 = (v91 - v90) >> 2;
          if (v65)
          {
            v66 = __p;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = __p + 4 * v67;
            v69 = *v68;
            v70 = v92;
            v71 = v89;
            if (v65 >= 2 && (v72 = v90 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v90 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v89 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v89 = v70[v74] + v71;
          }

          v27 += v25;
        }

        while (v27 < v15);
      }

      if (__p)
      {
        v95 = __p;
        operator delete(__p);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v107)
      {
        v108 = v107;
        operator delete(v107);
      }

      if (v104)
      {
        v105 = v104;
        operator delete(v104);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      if (v19 == 2)
      {
        v79 = *v96;
        if (*v96 >= 1)
        {
          v80 = 0;
          v81 = v98;
          v82 = *v98[3];
          v83 = 8 * **v98;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = v81[3][1];
              v86 = 8 * (*v81)[1];
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v88 += v85;
                v87 = (v87 + v86);
                --v84;
              }

              while (v84);
            }

            v13 += v82;
            ++v80;
            v12 = (v12 + v83);
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v96;
        if (*v96 >= 1)
        {
          v21 = *v98[3];
          v22 = 8 * **v98;
          do
          {
            *v13 = *v12;
            v13 += v21;
            v12 = (v12 + v22);
            --v20;
          }

          while (v20);
        }
      }
    }

    v100 = &v98;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v100);
    if (v96)
    {
      v97 = v96;
      operator delete(v96);
    }
  }
}

void sub_25A3D14D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,short>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v111 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v111)
    {
      v81 = v121;
      if (v121)
      {
LABEL_62:
        v122 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_81;
    }

    v105 = v12;
    v106 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v104 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v99 = v134;
    v113 = &v134[4 * v32];
    v103 = v32;
    v101 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v98 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v112 = &v121[4 * v36];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v97 = v37 - 1;
    v109 = v23;
    v110 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v95 = v117 - 8;
    v96 = v128 - 8;
    v102 = v36;
    v114 = v17 - 3;
    v107 = v117 + 4 * v36;
    v108 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = v28[v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v28[v104];
        v43 = &v106[v34];
        v44 = 8 * v29[v114];
        v45 = 8 * v29[v104];
        v46 = 2 * v30[v114];
        v47 = 2 * v30[v104];
        v48 = &v105[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = v28[v31];
            v51 = 8 * v29[v31];
            v52 = 2 * v30[v31];
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  *(v53 + v55) = *(v54 + v56);
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v110)
      {
        break;
      }

      v21 = v114;
      v66 = v115;
      v67 = v107;
      v59 = v108;
      if (v108)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v109;
      if (v25 >= v111)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v113;
    v21 = v114;
    v59 = v108;
    if (v110 >= 2 && (v60 = v101, v58 == *v101 - 1))
    {
      v62 = v98;
      v61 = v99;
      v63 = v96;
      v64 = v113;
      v65 = v103;
      v66 = v115;
      v67 = v107;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v127 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v103;
      v70 = v113;
      v66 = v115;
      v67 = v107;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v127 = v26;
    if (!v108)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v112;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v95;
      v74 = v97;
      v75 = v67;
      v76 = v112;
      v77 = v102;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v116 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v102;
      v80 = v112;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v116 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v123;
    if (*v123 >= 1)
    {
      v83 = 0;
      v84 = v125[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = 8 * **v125;
      v88 = 8 * (*v125)[1];
      v89 = *(v123 + 1);
      v90 = 2 * v85;
      v91 = 2 * v86;
      do
      {
        if (v89 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v89;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v88);
            v92 = (v92 + v91);
            --v94;
          }

          while (v94);
        }

        ++v83;
        v12 = (v12 + v87);
        v13 = (v13 + v90);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = *v125[3];
      v20 = 8 * **v125;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }
}

void sub_25A3D1C3C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,int>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v134 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v109 = *(*a1 + 48);
  v125 = 0;
  v126 = 0;
  v127 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v114, &v125, &v131, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v114, 0x7FFFFFFFuLL, &v121);
  v124 = &v114;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v124);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v128 + i);
    if (v16)
    {
      *(&v129 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = v121;
  v18 = (v122 - v121) >> 2;
  if (v18 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v22 = v18 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v125, &v121, v123, v18 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v114, &v121, v123 + 3, v18 - 3);
    v23 = v122 - 3;
    v24 = 1;
    do
    {
      v25 = *v23++;
      v24 *= v25;
    }

    while (v23 != v122);
    if (!v109)
    {
      v82 = v119;
      if (v119)
      {
LABEL_62:
        v120 = v82;
        operator delete(v82);
      }

LABEL_63:
      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      goto LABEL_81;
    }

    v103 = v12;
    v104 = v13;
    v26 = 0;
    v27 = v125;
    v28 = v129;
    v29 = v121;
    v30 = *v123;
    v31 = v123[3];
    v32 = v18 - 2;
    v33 = v18 - 1;
    v34 = (((v127 - v126) << 30) - 0x100000000) >> 32;
    v98 = v132;
    v111 = &v132[4 * v34];
    v102 = v34;
    v100 = &v126[4 * v34];
    v35 = ((v127 - v126) >> 2) & 0x7FFFFFFF;
    v97 = v35 - 1;
    v36 = v114;
    v37 = v117;
    v38 = (((v116 - v115) << 30) - 0x100000000) >> 32;
    __p = v119;
    v110 = &v119[4 * v38];
    v39 = ((v116 - v115) >> 2) & 0x7FFFFFFF;
    v96 = v39 - 1;
    v107 = v24;
    v108 = (v127 - v126) >> 2;
    v40 = 4 * v35;
    v41 = 4 * v39;
    v94 = v115 - 8;
    v95 = v126 - 8;
    v101 = v38;
    v112 = v18 - 3;
    v105 = v115 + 4 * v38;
    v106 = (v116 - v115) >> 2;
    while (1)
    {
      v113 = v26;
      v42 = v29[v22];
      if (v42 >= 1)
      {
        v43 = 0;
        v44 = &v104[v36];
        v45 = &v103[v27];
        v46 = 8 * v30[v112];
        v47 = 8 * v30[v32];
        v48 = 4 * v31[v112];
        v49 = 4 * v31[v32];
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = 8 * v30[v33];
            v53 = 4 * v31[v33];
            v54 = v44;
            v55 = v45;
            do
            {
              v56 = v29[v33];
              if (v56 >= 1)
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  *(v54 + v57) = *(v55 + v58);
                  v58 += v52;
                  v57 += v53;
                  --v56;
                }

                while (v56);
              }

              ++v51;
              v55 = (v55 + v47);
              v54 = (v54 + v49);
            }

            while (v51 != v50);
          }

          ++v43;
          v45 = (v45 + v46);
          v44 = (v44 + v48);
        }

        while (v43 != v42);
      }

      if (v108)
      {
        break;
      }

      v22 = v112;
      v67 = v113;
      v68 = v105;
      v60 = v106;
      if (v106)
      {
        goto LABEL_52;
      }

LABEL_60:
      v26 = v67 + v107;
      if (v26 >= v109)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v111;
    v22 = v112;
    v60 = v106;
    if (v108 >= 2 && (v61 = v100, v59 == *v100 - 1))
    {
      v62 = v97;
      v63 = v98;
      v64 = v95;
      v65 = v111;
      v66 = v102;
      v67 = v113;
      v68 = v105;
      do
      {
        v69 = v62;
        *v65 = 0;
        v27 = (v27 - v28[v66] * (*v61 - 1));
        v125 = v27;
        --v62;
        v65 = &v63[v40 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v64[v40];
        v70 = *&v64[v40] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v70);
      v71 = &v63[v40 - 4];
    }

    else
    {
      v62 = v102;
      v71 = v111;
      v67 = v113;
      v68 = v105;
    }

    *v71 = v59 + 1;
    v27 = (v27 + v28[v62]);
    v125 = v27;
    if (!v106)
    {
      goto LABEL_60;
    }

LABEL_52:
    v72 = *v110;
    if (v60 >= 2 && v72 == *v68 - 1)
    {
      v73 = __p;
      v74 = v94;
      v75 = v96;
      v76 = v68;
      v77 = v110;
      v78 = v101;
      do
      {
        v79 = v75;
        *v77 = 0;
        v36 -= v37[v78] * (*v76 - 1);
        v114 = v36;
        --v75;
        v77 = &v73[v41 - 8];
        v72 = *v77;
        v73 -= 4;
        if (v79 < 2)
        {
          break;
        }

        v76 = &v74[v41];
        v80 = *&v74[v41] - 1;
        v74 -= 4;
        v78 = v75;
      }

      while (v72 == v80);
      v81 = &v73[v41 - 4];
    }

    else
    {
      v75 = v101;
      v81 = v110;
    }

    *v81 = v72 + 1;
    v36 += v37[v75];
    v114 = v36;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v18 == 2)
  {
    v83 = *v121;
    if (*v121 >= 1)
    {
      v84 = 0;
      v85 = v123[3];
      v86 = 8 * **v123;
      v87 = 8 * (*v123)[1];
      v88 = v85[1];
      v89 = 4 * *v85;
      v90 = 4 * v88;
      do
      {
        v91 = v17[1];
        if (v91 >= 1)
        {
          v92 = v13;
          v93 = v12;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v87);
            v92 = (v92 + v90);
            --v91;
          }

          while (v91);
        }

        ++v84;
        v12 = (v12 + v86);
        v13 = (v13 + v89);
      }

      while (v84 != v83);
    }
  }

  else if (v18 == 1)
  {
    v19 = *v121;
    if (*v121 >= 1)
    {
      v20 = *v123[3];
      v21 = 8 * **v123;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v21);
        v13 += v20;
        --v19;
      }

      while (v19);
    }
  }

LABEL_81:
  v125 = &v123;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }
}

void sub_25A3D2394(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,long long>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v126 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v100 = *(*a1 + 48);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v117, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v120, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v106, &v117, &v123, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v106, 0x7FFFFFFFuLL, &v113);
  v116 = &v106;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v116);
  for (i = 0; i != -6; i -= 3)
  {
    v16 = *(&v120 + i * 8);
    if (v16)
    {
      (&v121)[i] = v16;
      operator delete(v16);
    }
  }

  v17 = (v114 - v113) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v113, v115, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v106, &v113, v115 + 3, v17 - 3);
    v22 = v114 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v114);
    if (v100)
    {
      v97 = v13;
      v25 = 0;
      v104 = (v119 - v118) >> 2;
      v26 = v113;
      v27 = *v115;
      v28 = v115[3];
      v29 = v17 - 2;
      v30 = v17 - 1;
      v31 = (((v119 - v118) << 30) - 0x100000000) >> 32;
      v32 = v121;
      v92 = v124;
      v95 = v31;
      v96 = &v118[4 * v31];
      v102 = &v124[4 * v31];
      v103 = (v108 - v107) >> 2;
      v33 = v109;
      __p = v111;
      v94 = (((v108 - v107) << 30) - 0x100000000) >> 32;
      v101 = &v111[4 * v94];
      v34 = 4 * (v104 & 0x7FFFFFFF);
      v91 = v118 - 8;
      v35 = 4 * (v103 & 0x7FFFFFFF);
      v90 = v107 - 8;
      v98 = v107 + 4 * v94;
      v99 = v23;
      do
      {
        v105 = v25;
        v36 = v21;
        v37 = v26[v21];
        if (v37 >= 1)
        {
          v38 = 0;
          v39 = &v97[v106];
          v40 = &v12[v117];
          v41 = v26[v29];
          v42 = 8 * v27[v21];
          v43 = 8 * v28[v21];
          do
          {
            if (v41 >= 1)
            {
              v44 = 0;
              v45 = v26[v30];
              v46 = 8 * v27[v29];
              v47 = 8 * v28[v29];
              v48 = v39;
              v49 = v40;
              do
              {
                if (v45 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 8 * v27[v30];
                  v53 = 8 * v28[v30];
                  v54 = v45;
                  do
                  {
                    *(v48 + v50) = *(v49 + v51);
                    v51 += v52;
                    v50 += v53;
                    --v54;
                  }

                  while (v54);
                }

                ++v44;
                v49 = (v49 + v46);
                v48 = (v48 + v47);
              }

              while (v44 != v41);
            }

            ++v38;
            v40 = (v40 + v42);
            v39 = (v39 + v43);
          }

          while (v38 != v37);
        }

        v21 = v36;
        if (v104)
        {
          v55 = *v102;
          v56 = v117;
          v57 = v96;
          if (v104 >= 2 && v55 == *v96 - 1)
          {
            v59 = (v104 & 0x7FFFFFFF) - 1;
            v58 = v92;
            v60 = v91;
            v61 = v102;
            v62 = v95;
            do
            {
              v63 = v59;
              *v61 = 0;
              v56 = (v56 - v32[v62] * (*v57 - 1));
              v117 = v56;
              --v59;
              v61 = &v58[v34 - 8];
              v55 = *v61;
              v58 -= 4;
              if (v63 < 2)
              {
                break;
              }

              v57 = &v60[v34];
              v64 = *&v60[4 * (v104 & 0x7FFFFFFF)] - 1;
              v60 -= 4;
              v62 = v59;
            }

            while (v55 == v64);
            v65 = &v58[v34 - 4];
          }

          else
          {
            v59 = v95;
            v65 = v102;
          }

          *v65 = v55 + 1;
          v117 = (v56 + v32[v59]);
        }

        if (v103)
        {
          v66 = *v101;
          v67 = v106;
          if (v103 >= 2 && v66 == *v98 - 1)
          {
            v68 = __p;
            v69 = v94;
            v70 = v90;
            v71 = (v103 & 0x7FFFFFFF) - 1;
            v72 = v98;
            v73 = v101;
            do
            {
              v74 = v71;
              *v73 = 0;
              v67 -= v33[v69] * (*v72 - 1);
              v106 = v67;
              --v71;
              v73 = &v68[v35 - 8];
              v66 = *v73;
              v68 -= 4;
              if (v74 < 2)
              {
                break;
              }

              v72 = &v70[v35];
              v75 = *&v70[4 * (v103 & 0x7FFFFFFF)] - 1;
              v70 -= 4;
              v69 = v71;
            }

            while (v66 == v75);
            v76 = &v68[v35 - 4];
          }

          else
          {
            v71 = v94;
            v76 = v101;
          }

          *v76 = v66 + 1;
          v106 = v33[v71] + v67;
        }

        v25 = v105 + v99;
      }

      while (v105 + v99 < v100);
      v77 = __p;
      if (!__p)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v77 = v111;
      if (!v111)
      {
        goto LABEL_62;
      }
    }

    v112 = v77;
    operator delete(v77);
LABEL_62:
    if (v109)
    {
      v110 = v109;
      operator delete(v109);
    }

    if (v107)
    {
      v108 = v107;
      operator delete(v107);
    }

    if (v124)
    {
      v125 = v124;
      operator delete(v124);
    }

    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

    goto LABEL_80;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v78 = *v113;
    if (*v113 >= 1)
    {
      v79 = 0;
      v80 = *v115;
      v81 = v115[3];
      v82 = *(v113 + 1);
      v83 = 8 * **v115;
      v84 = 8 * *v81;
      do
      {
        if (v82 >= 1)
        {
          v85 = 8 * v80[1];
          v86 = 8 * v81[1];
          v87 = v13;
          v88 = v12;
          v89 = v82;
          do
          {
            *v87 = *v88;
            v88 = (v88 + v85);
            v87 = (v87 + v86);
            --v89;
          }

          while (v89);
        }

        ++v79;
        v12 = (v12 + v83);
        v13 = (v13 + v84);
      }

      while (v79 != v78);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v113;
    if (*v113 >= 1)
    {
      v19 = *v115[3];
      v20 = 8 * **v115;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_80:
  v117 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v117);
  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }
}

void sub_25A3D2ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  mlx::core::ContiguousIterator::~ContiguousIterator((v37 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,half>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v144 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    _D0 = *v12;
    __asm { FCVT            H0, D0 }

    *v13 = _D0;
    return;
  }

  v120 = *(*a1 + 48);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v135, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v138 = 0;
  v139 = 0;
  v140 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v138, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v124 = 0;
  v125 = 0;
  v126 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v124, &v135, &v141, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v124, 0x7FFFFFFFuLL, &v131);
  v134 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v134);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v138 + i);
    if (v16)
    {
      *(&v139 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v132 - v131) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v27 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v135, &v131, v133, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v124, &v131, v133 + 3, v17 - 3);
    v28 = v132 - 3;
    v29 = 1;
    do
    {
      v30 = *v28++;
      v29 *= v30;
    }

    while (v28 != v132);
    if (!v120)
    {
      v89 = v129;
      if (v129)
      {
LABEL_64:
        v130 = v89;
        operator delete(v89);
      }

LABEL_65:
      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      if (v142)
      {
        v143 = v142;
        operator delete(v142);
      }

      if (v139)
      {
        v140 = v139;
        operator delete(v139);
      }

      if (v136)
      {
        v137 = v136;
        operator delete(v136);
      }

      goto LABEL_83;
    }

    v114 = v12;
    v115 = v13;
    v31 = 0;
    v32 = v135;
    v33 = v139;
    v34 = v131;
    v35 = *v133;
    v36 = v133[3];
    v113 = v17 - 2;
    v37 = v17 - 1;
    v38 = (((v137 - v136) << 30) - 0x100000000) >> 32;
    v108 = v142;
    v112 = v38;
    v110 = &v136[4 * v38];
    v39 = ((v137 - v136) >> 2) & 0x7FFFFFFF;
    v107 = v39 - 1;
    v40 = v124;
    v41 = v127;
    v42 = (((v126 - v125) << 30) - 0x100000000) >> 32;
    __p = v129;
    v121 = &v129[4 * v42];
    v122 = &v142[4 * v38];
    v43 = ((v126 - v125) >> 2) & 0x7FFFFFFF;
    v118 = v29;
    v119 = (v137 - v136) >> 2;
    v44 = 4 * v39;
    v105 = v136 - 8;
    v106 = v43 - 1;
    v45 = 4 * v43;
    v104 = v125 - 8;
    v111 = v42;
    v116 = v125 + 4 * v42;
    v117 = (v126 - v125) >> 2;
    while (1)
    {
      v123 = v31;
      v46 = v27;
      v47 = v34[v27];
      if (v47 >= 1)
      {
        v48 = 0;
        v49 = v34[v113];
        v50 = &v115[v40];
        v51 = 8 * v35[v27];
        v52 = 8 * v35[v113];
        v53 = 2 * v36[v27];
        v54 = 2 * v36[v113];
        v55 = &v114[v32];
        do
        {
          if (v49 >= 1)
          {
            v56 = 0;
            v57 = v34[v37];
            v58 = 8 * v35[v37];
            v59 = 2 * v36[v37];
            v60 = v50;
            v61 = v55;
            do
            {
              if (v57 >= 1)
              {
                v62 = 0;
                v63 = 0;
                v64 = v57;
                do
                {
                  _D0 = *(v61 + v63);
                  __asm { FCVT            H0, D0 }

                  *(v60 + v62) = _D0;
                  v63 += v58;
                  v62 += v59;
                  --v64;
                }

                while (v64);
              }

              ++v56;
              v61 = (v61 + v52);
              v60 = (v60 + v54);
            }

            while (v56 != v49);
          }

          ++v48;
          v55 = (v55 + v51);
          v50 = (v50 + v53);
        }

        while (v48 != v47);
      }

      if (!v119)
      {
        v27 = v46;
        v69 = v123;
        v75 = v116;
        v67 = v117;
        if (v117)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v66 = *v122;
      v27 = v46;
      v67 = v117;
      if (v119 < 2)
      {
        break;
      }

      v68 = v110;
      v69 = v123;
      if (v66 != *v110 - 1)
      {
        v71 = v112;
        v78 = v122;
LABEL_52:
        v75 = v116;
        goto LABEL_53;
      }

      v71 = v107;
      v70 = v108;
      v72 = v105;
      v73 = v122;
      v74 = v112;
      v75 = v116;
      do
      {
        v76 = v71;
        *v73 = 0;
        v32 = (v32 - v33[v74] * (*v68 - 1));
        v135 = v32;
        --v71;
        v73 = &v70[v44 - 8];
        v66 = *v73;
        v70 -= 4;
        if (v76 < 2)
        {
          break;
        }

        v68 = &v72[v44];
        v77 = *&v72[v44] - 1;
        v72 -= 4;
        v74 = v71;
      }

      while (v66 == v77);
      v78 = &v70[v44 - 4];
LABEL_53:
      *v78 = v66 + 1;
      v32 = (v32 + v33[v71]);
      v135 = v32;
      if (v117)
      {
LABEL_54:
        v79 = *v121;
        if (v67 >= 2 && v79 == *v75 - 1)
        {
          v80 = __p;
          v81 = v104;
          v82 = v106;
          v83 = v75;
          v84 = v121;
          v85 = v111;
          do
          {
            v86 = v82;
            *v84 = 0;
            v40 -= v41[v85] * (*v83 - 1);
            v124 = v40;
            --v82;
            v84 = &v80[v45 - 8];
            v79 = *v84;
            v80 -= 4;
            if (v86 < 2)
            {
              break;
            }

            v83 = &v81[v45];
            v87 = *&v81[v45] - 1;
            v81 -= 4;
            v85 = v82;
          }

          while (v79 == v87);
          v88 = &v80[v45 - 4];
        }

        else
        {
          v82 = v111;
          v88 = v121;
        }

        *v88 = v79 + 1;
        v40 += v41[v82];
        v124 = v40;
      }

LABEL_62:
      v31 = v69 + v118;
      if (v31 >= v120)
      {
        v89 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v71 = v112;
    v78 = v122;
    v69 = v123;
    goto LABEL_52;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v90 = *v131;
    if (*v131 >= 1)
    {
      v91 = 0;
      v92 = v133[3];
      v93 = *v92;
      v94 = v92[1];
      v95 = 8 * **v133;
      v96 = 8 * (*v133)[1];
      v97 = *(v131 + 1);
      v98 = 2 * v93;
      v99 = 2 * v94;
      do
      {
        if (v97 >= 1)
        {
          v100 = v13;
          v101 = v12;
          v102 = v97;
          do
          {
            _D0 = *v101;
            __asm { FCVT            H0, D0 }

            *v100 = _D0;
            v101 = (v101 + v96);
            v100 = (v100 + v99);
            --v102;
          }

          while (v102);
        }

        ++v91;
        v12 = (v12 + v95);
        v13 = (v13 + v98);
      }

      while (v91 != v90);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v131;
    if (*v131 >= 1)
    {
      v19 = *v133[3];
      v20 = 8 * **v133;
      do
      {
        _D0 = *v12;
        __asm { FCVT            H0, D0 }

        *v13 = _D0;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_83:
  v135 = &v133;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v135);
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void sub_25A3D3244(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,float>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v140 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    v22 = *v12;
    *v13 = v22;
    return;
  }

  v116 = *(*a1 + 48);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v131, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v134 = 0;
  v135 = 0;
  v136 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v134, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v120, &v131, &v137, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v120, 0x7FFFFFFFuLL, &v127);
  v130 = &v120;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v134 + i);
    if (v16)
    {
      *(&v135 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v128 - v127) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v23 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v131, &v127, v129, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v120, &v127, v129 + 3, v17 - 3);
    v24 = v128 - 3;
    v25 = 1;
    do
    {
      v26 = *v24++;
      v25 *= v26;
    }

    while (v24 != v128);
    if (!v116)
    {
      v85 = v125;
      if (v125)
      {
LABEL_64:
        v126 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      if (v138)
      {
        v139 = v138;
        operator delete(v138);
      }

      if (v135)
      {
        v136 = v135;
        operator delete(v135);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      goto LABEL_83;
    }

    v110 = v12;
    v111 = v13;
    v27 = 0;
    v28 = v131;
    v29 = v135;
    v30 = v127;
    v31 = *v129;
    v32 = v129[3];
    v109 = v17 - 2;
    v33 = v17 - 1;
    v34 = (((v133 - v132) << 30) - 0x100000000) >> 32;
    v104 = v138;
    v108 = v34;
    v106 = &v132[4 * v34];
    v35 = ((v133 - v132) >> 2) & 0x7FFFFFFF;
    v103 = v35 - 1;
    v36 = v120;
    v37 = v123;
    v38 = (((v122 - v121) << 30) - 0x100000000) >> 32;
    __p = v125;
    v117 = &v125[4 * v38];
    v118 = &v138[4 * v34];
    v39 = ((v122 - v121) >> 2) & 0x7FFFFFFF;
    v114 = v25;
    v115 = (v133 - v132) >> 2;
    v40 = 4 * v35;
    v101 = v132 - 8;
    v102 = v39 - 1;
    v41 = 4 * v39;
    v100 = v121 - 8;
    v107 = v38;
    v112 = v121 + 4 * v38;
    v113 = (v122 - v121) >> 2;
    while (1)
    {
      v119 = v27;
      v42 = v23;
      v43 = v30[v23];
      if (v43 >= 1)
      {
        v44 = 0;
        v45 = v30[v109];
        v46 = &v111[v36];
        v47 = 8 * v31[v23];
        v48 = 8 * v31[v109];
        v49 = 4 * v32[v23];
        v50 = 4 * v32[v109];
        v51 = &v110[v28];
        do
        {
          if (v45 >= 1)
          {
            v52 = 0;
            v53 = v30[v33];
            v54 = 8 * v31[v33];
            v55 = 4 * v32[v33];
            v56 = v46;
            v57 = v51;
            do
            {
              if (v53 >= 1)
              {
                v58 = 0;
                v59 = 0;
                v60 = v53;
                do
                {
                  v61 = *(v57 + v59);
                  *(v56 + v58) = v61;
                  v59 += v54;
                  v58 += v55;
                  --v60;
                }

                while (v60);
              }

              ++v52;
              v57 = (v57 + v48);
              v56 = (v56 + v50);
            }

            while (v52 != v45);
          }

          ++v44;
          v51 = (v51 + v47);
          v46 = (v46 + v49);
        }

        while (v44 != v43);
      }

      if (!v115)
      {
        v23 = v42;
        v65 = v119;
        v71 = v112;
        v63 = v113;
        if (v113)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v118;
      v23 = v42;
      v63 = v113;
      if (v115 < 2)
      {
        break;
      }

      v64 = v106;
      v65 = v119;
      if (v62 != *v106 - 1)
      {
        v67 = v108;
        v74 = v118;
LABEL_52:
        v71 = v112;
        goto LABEL_53;
      }

      v67 = v103;
      v66 = v104;
      v68 = v101;
      v69 = v118;
      v70 = v108;
      v71 = v112;
      do
      {
        v72 = v67;
        *v69 = 0;
        v28 = (v28 - v29[v70] * (*v64 - 1));
        v131 = v28;
        --v67;
        v69 = &v66[v40 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v40];
        v73 = *&v68[v40] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v40 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v28 = (v28 + v29[v67]);
      v131 = v28;
      if (v113)
      {
LABEL_54:
        v75 = *v117;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v100;
          v78 = v102;
          v79 = v71;
          v80 = v117;
          v81 = v107;
          do
          {
            v82 = v78;
            *v80 = 0;
            v36 -= v37[v81] * (*v79 - 1);
            v120 = v36;
            --v78;
            v80 = &v76[v41 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v41];
            v83 = *&v77[v41] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v41 - 4];
        }

        else
        {
          v78 = v107;
          v84 = v117;
        }

        *v84 = v75 + 1;
        v36 += v37[v78];
        v120 = v36;
      }

LABEL_62:
      v27 = v65 + v114;
      if (v27 >= v116)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v108;
    v74 = v118;
    v65 = v119;
    goto LABEL_52;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v86 = *v127;
    if (*v127 >= 1)
    {
      v87 = 0;
      v88 = v129[3];
      v89 = *v88;
      v90 = v88[1];
      v91 = 8 * **v129;
      v92 = 8 * (*v129)[1];
      v93 = *(v127 + 1);
      v94 = 4 * v89;
      v95 = 4 * v90;
      do
      {
        if (v93 >= 1)
        {
          v96 = v13;
          v97 = v12;
          v98 = v93;
          do
          {
            v99 = *v97;
            *v96 = v99;
            v97 = (v97 + v92);
            v96 = (v96 + v95);
            --v98;
          }

          while (v98);
        }

        ++v87;
        v12 = (v12 + v91);
        v13 = (v13 + v94);
      }

      while (v87 != v86);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v127;
    if (*v127 >= 1)
    {
      v19 = *v129[3];
      v20 = 8 * **v129;
      do
      {
        v21 = *v12;
        *v13 = v21;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_83:
  v131 = &v129;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v131);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }
}

void sub_25A3D39AC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,double>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = *v12;
    return;
  }

  v112 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v112)
    {
      v82 = v121;
      if (v121)
      {
LABEL_64:
        v122 = v82;
        operator delete(v82);
      }

LABEL_65:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_83;
    }

    v106 = v12;
    v107 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v105 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v100 = v134;
    v104 = v32;
    v102 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v99 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v113 = &v121[4 * v36];
    v114 = &v134[4 * v32];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v110 = v23;
    v111 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v97 = v128 - 8;
    v98 = v37 - 1;
    v39 = 4 * v37;
    v96 = v117 - 8;
    v103 = v36;
    v108 = v117 + 4 * v36;
    v109 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = v21;
      v41 = v28[v21];
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = v28[v105];
        v44 = &v107[v34];
        v45 = 8 * v29[v21];
        v46 = 8 * v29[v105];
        v47 = 8 * v30[v21];
        v48 = 8 * v30[v105];
        v49 = &v106[v26];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = v28[v31];
            v52 = 8 * v29[v31];
            v53 = 8 * v30[v31];
            v54 = v44;
            v55 = v49;
            do
            {
              if (v51 >= 1)
              {
                v56 = 0;
                v57 = 0;
                v58 = v51;
                do
                {
                  *(v54 + v56) = *(v55 + v57);
                  v57 += v52;
                  v56 += v53;
                  --v58;
                }

                while (v58);
              }

              ++v50;
              v55 = (v55 + v46);
              v54 = (v54 + v48);
            }

            while (v50 != v43);
          }

          ++v42;
          v49 = (v49 + v45);
          v44 = (v44 + v47);
        }

        while (v42 != v41);
      }

      if (!v111)
      {
        v21 = v40;
        v62 = v115;
        v68 = v108;
        v60 = v109;
        if (v109)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v59 = *v114;
      v21 = v40;
      v60 = v109;
      if (v111 < 2)
      {
        break;
      }

      v61 = v102;
      v62 = v115;
      if (v59 != *v102 - 1)
      {
        v64 = v104;
        v71 = v114;
LABEL_52:
        v68 = v108;
        goto LABEL_53;
      }

      v64 = v99;
      v63 = v100;
      v65 = v97;
      v66 = v114;
      v67 = v104;
      v68 = v108;
      do
      {
        v69 = v64;
        *v66 = 0;
        v26 = (v26 - v27[v67] * (*v61 - 1));
        v127 = v26;
        --v64;
        v66 = &v63[v38 - 8];
        v59 = *v66;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v65[v38];
        v70 = *&v65[v38] - 1;
        v65 -= 4;
        v67 = v64;
      }

      while (v59 == v70);
      v71 = &v63[v38 - 4];
LABEL_53:
      *v71 = v59 + 1;
      v26 = (v26 + v27[v64]);
      v127 = v26;
      if (v109)
      {
LABEL_54:
        v72 = *v113;
        if (v60 >= 2 && v72 == *v68 - 1)
        {
          v73 = __p;
          v74 = v96;
          v75 = v98;
          v76 = v68;
          v77 = v113;
          v78 = v103;
          do
          {
            v79 = v75;
            *v77 = 0;
            v34 -= v35[v78] * (*v76 - 1);
            v116 = v34;
            --v75;
            v77 = &v73[v39 - 8];
            v72 = *v77;
            v73 -= 4;
            if (v79 < 2)
            {
              break;
            }

            v76 = &v74[v39];
            v80 = *&v74[v39] - 1;
            v74 -= 4;
            v78 = v75;
          }

          while (v72 == v80);
          v81 = &v73[v39 - 4];
        }

        else
        {
          v75 = v103;
          v81 = v113;
        }

        *v81 = v72 + 1;
        v34 += v35[v75];
        v116 = v34;
      }

LABEL_62:
      v25 = v62 + v110;
      if (v25 >= v112)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v64 = v104;
    v71 = v114;
    v62 = v115;
    goto LABEL_52;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v83 = *v123;
    if (*v123 >= 1)
    {
      v84 = 0;
      v85 = v125[3];
      v86 = *v85;
      v87 = v85[1];
      v88 = 8 * **v125;
      v89 = 8 * (*v125)[1];
      v90 = *(v123 + 1);
      v91 = 8 * v86;
      v92 = 8 * v87;
      do
      {
        if (v90 >= 1)
        {
          v93 = v13;
          v94 = v12;
          v95 = v90;
          do
          {
            *v93 = *v94;
            v94 = (v94 + v89);
            v93 = (v93 + v92);
            --v95;
          }

          while (v95);
        }

        ++v84;
        v12 = (v12 + v88);
        v13 = (v13 + v91);
      }

      while (v84 != v83);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = *v125[3];
      v20 = 8 * **v125;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_83:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }
}

void sub_25A3D4104(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_single<double,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 48);
  v3 = **(*result + 152);
  v4 = (LODWORD(v3) + (HIWORD(LODWORD(v3)) & 1u) + 0x7FFF) >> 16;
  if (v2)
  {
    v5 = 0;
    v6 = vdupq_n_s64(v2 - 1);
    v7 = (v2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (*(*a2 + 152) + 8);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25A99B0D0)));
      if (vuzp1_s8(vuzp1_s16(v10, *v6.i8), *v6.i8).u8[0])
      {
        *(v8 - 4) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v10, *&v6), *&v6).i8[1])
      {
        *(v8 - 3) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25A99B0C0)))), *&v6).i8[2])
      {
        *(v8 - 2) = v4;
        *(v8 - 1) = v4;
      }

      v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25A9C2E80)));
      if (vuzp1_s8(*&v6, vuzp1_s16(v11, *&v6)).i32[1])
      {
        *v8 = v4;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v11, *&v6)).i8[5])
      {
        v8[1] = v4;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25A9C2E70))))).i8[6])
      {
        v8[2] = v4;
        v8[3] = v4;
      }

      v5 += 8;
      v8 += 8;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t mlx::core::anonymous namespace::copy_vector<double,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 160);
  if (v2)
  {
    v3 = *(*result + 152);
    v4 = *(*a2 + 152);
    v5 = 8 * v2;
    do
    {
      v6 = *v3;
      *v4++ = (LODWORD(v6) + (HIWORD(LODWORD(v6)) & 1u) + 0x7FFF) >> 16;
      ++v3;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<double,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v138 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    v22 = *v12;
    *v13 = (LODWORD(v22) + (HIWORD(LODWORD(v22)) & 1u) + 0x7FFF) >> 16;
    return;
  }

  v113 = *(*a1 + 48);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v132, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v118, &v129, &v135, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v118, 0x7FFFFFFFuLL, &v125);
  v128 = &v118;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v132 + i);
    if (v16)
    {
      *(&v133 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v126 - v125) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v23 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v129, &v125, v127, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v118, &v125, v127 + 3, v17 - 3);
    v24 = v126 - 3;
    v25 = 1;
    do
    {
      v26 = *v24++;
      v25 *= v26;
    }

    while (v24 != v126);
    if (!v113)
    {
      v83 = v123;
      if (v123)
      {
LABEL_62:
        v124 = v83;
        operator delete(v83);
      }

LABEL_63:
      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v136)
      {
        v137 = v136;
        operator delete(v136);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      goto LABEL_81;
    }

    v107 = v12;
    v108 = v13;
    v27 = 0;
    v28 = v129;
    v29 = v125;
    v30 = *v127;
    v31 = v127[3];
    v105 = v17 - 2;
    v32 = v17 - 1;
    v33 = (((v131 - v130) << 30) - 0x100000000) >> 32;
    v100 = v136;
    v104 = v33;
    v102 = &v130[4 * v33];
    v34 = ((v131 - v130) >> 2) & 0x7FFFFFFF;
    v99 = v34 - 1;
    v35 = v118;
    v36 = (((v120 - v119) << 30) - 0x100000000) >> 32;
    __p = v123;
    v114 = &v123[4 * v36];
    v115 = &v136[4 * v33];
    v37 = ((v120 - v119) >> 2) & 0x7FFFFFFF;
    v112 = (v131 - v130) >> 2;
    v38 = 4 * v34;
    v97 = v130 - 8;
    v98 = v37 - 1;
    v39 = 4 * v37;
    v96 = v119 - 8;
    v103 = v36;
    v116 = v17 - 3;
    v106 = v133;
    v110 = (v120 - v119) >> 2;
    v111 = v121;
    v109 = v119 + 4 * v36;
    while (1)
    {
      v117 = v27;
      v40 = v29[v23];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v29[v105];
        v43 = &v108[v35];
        v44 = 8 * v30[v116];
        v45 = 8 * v30[v105];
        v46 = 2 * v31[v116];
        v47 = 2 * v31[v105];
        v48 = &v107[v28];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = v29[v32];
            v51 = 8 * v30[v32];
            v52 = 2 * v31[v32];
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  v58 = *(v54 + v56);
                  *(v53 + v55) = (LODWORD(v58) + (HIWORD(LODWORD(v58)) & 1u) + 0x7FFF) >> 16;
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v112)
      {
        break;
      }

      v23 = v116;
      v67 = v117;
      v60 = v110;
      v68 = v111;
      v69 = v109;
      if (v110)
      {
        goto LABEL_52;
      }

LABEL_60:
      v27 = v67 + v25;
      if (v27 >= v113)
      {
        v83 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v115;
    v23 = v116;
    v60 = v110;
    if (v112 >= 2 && v59 == *v102 - 1)
    {
      v62 = v99;
      v61 = v100;
      v63 = v97;
      v64 = v102;
      v65 = v115;
      v66 = v104;
      v67 = v117;
      v68 = v111;
      v69 = v109;
      do
      {
        v70 = v62;
        *v65 = 0;
        v28 = (v28 - v106[v66] * (*v64 - 1));
        v129 = v28;
        --v62;
        v65 = &v61[v38 - 8];
        v59 = *v65;
        v61 -= 4;
        if (v70 < 2)
        {
          break;
        }

        v64 = &v63[v38];
        v71 = *&v63[v38] - 1;
        v63 -= 4;
        v66 = v62;
      }

      while (v59 == v71);
      v72 = &v61[v38 - 4];
    }

    else
    {
      v62 = v104;
      v72 = v115;
      v67 = v117;
      v68 = v111;
      v69 = v109;
    }

    *v72 = v59 + 1;
    v28 = (v28 + v106[v62]);
    v129 = v28;
    if (!v110)
    {
      goto LABEL_60;
    }

LABEL_52:
    v73 = *v114;
    if (v60 >= 2 && v73 == *v69 - 1)
    {
      v74 = __p;
      v75 = v96;
      v76 = v98;
      v77 = v69;
      v78 = v114;
      v79 = v103;
      do
      {
        v80 = v76;
        *v78 = 0;
        v35 -= v68[v79] * (*v77 - 1);
        v118 = v35;
        --v76;
        v78 = &v74[v39 - 8];
        v73 = *v78;
        v74 -= 4;
        if (v80 < 2)
        {
          break;
        }

        v77 = &v75[v39];
        v81 = *&v75[v39] - 1;
        v75 -= 4;
        v79 = v76;
      }

      while (v73 == v81);
      v82 = &v74[v39 - 4];
    }

    else
    {
      v76 = v103;
      v82 = v114;
    }

    *v82 = v73 + 1;
    v35 += v68[v76];
    v118 = v35;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v84 = *v125;
    if (*v125 >= 1)
    {
      v85 = 0;
      v86 = v127[3];
      v87 = *v86;
      v88 = v86[1];
      v89 = 8 * **v127;
      v90 = 8 * (*v127)[1];
      v91 = *(v125 + 1);
      do
      {
        if (v91 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v91;
          do
          {
            v95 = *v93;
            *v92 = (LODWORD(v95) + (HIWORD(LODWORD(v95)) & 1u) + 0x7FFF) >> 16;
            v93 = (v93 + v90);
            v92 += v88;
            --v94;
          }

          while (v94);
        }

        ++v85;
        v12 = (v12 + v89);
        v13 += v87;
      }

      while (v85 != v84);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v125;
    if (*v125 >= 1)
    {
      v19 = 8 * **v127;
      v20 = 2 * *v127[3];
      do
      {
        v21 = *v12;
        *v13 = (LODWORD(v21) + (HIWORD(LODWORD(v21)) & 1u) + 0x7FFF) >> 16;
        v12 = (v12 + v19);
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v129 = &v127;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }
}

void sub_25A3D4AFC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<double,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v116 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 8 * a6);
  v13 = *(*a2 + 152) + 8 * a7;
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    v25 = *v12;
    *v13 = v25;
    *(v13 + 4) = 0;
  }

  else
  {
    v15 = *(*a1 + 48);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v107, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    v110 = 0;
    v111 = 0;
    v112 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v110, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
    v96 = 0;
    v97 = 0;
    v98 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v96, &v107, &v113, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v96, 0x7FFFFFFFuLL, &v103);
    v106 = &v96;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v106);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v110 + i);
      if (v17)
      {
        *(&v111 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v103;
    v19 = (v104 - v103) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += 8 * *v14;
      }

      v26 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v107, &v103, v105, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v96, &v103, v105 + 3, v19 - 3);
      v27 = v104 - 3;
      v28 = 1;
      do
      {
        v29 = *v27++;
        v28 *= v29;
      }

      while (v27 != v104);
      if (v15)
      {
        v30 = 0;
        v31 = v19 - 2;
        v32 = v19 - 1;
        v33 = v13 + 4;
        do
        {
          v34 = *(v103 + v26);
          if (v34 >= 1)
          {
            v35 = 0;
            v36 = v105;
            v37 = &v12[v107];
            v38 = 8 * (*v105)[v26];
            v39 = (v33 + 8 * v96);
            v40 = 8 * v105[3][v26];
            do
            {
              v41 = *(v103 + v31);
              if (v41 >= 1)
              {
                v42 = 0;
                v43 = 8 * (*v36)[v31];
                v44 = 8 * v36[3][v31];
                v45 = v39;
                v46 = v37;
                do
                {
                  v47 = *(v103 + v32);
                  if (v47 >= 1)
                  {
                    v48 = 0;
                    v49 = 8 * (*v36)[v32];
                    v50 = 8 * v36[3][v32];
                    v51 = v45;
                    do
                    {
                      v52 = *(v46 + v48);
                      *(v51 - 1) = v52;
                      *v51 = 0.0;
                      v48 += v49;
                      v51 = (v51 + v50);
                      --v47;
                    }

                    while (v47);
                  }

                  ++v42;
                  v46 = (v46 + v43);
                  v45 = (v45 + v44);
                }

                while (v42 != v41);
              }

              ++v35;
              v37 = (v37 + v38);
              v39 = (v39 + v40);
            }

            while (v35 != v34);
          }

          v53 = v109 - v108;
          v54 = (v109 - v108) >> 2;
          if (v54)
          {
            v55 = v114;
            v56 = ((v53 << 30) - 0x100000000) >> 32;
            v57 = v114 + 4 * v56;
            v58 = *v57;
            v59 = v108 + 4 * v56;
            v60 = v111;
            v61 = v107;
            if (v54 >= 2 && v58 == *v59 - 1)
            {
              v64 = (v53 >> 2) & 0x7FFFFFFF;
              v63 = v64 - 1;
              v65 = 4 * v64;
              v66 = v108 - 8;
              do
              {
                v67 = v63;
                *v57 = 0;
                v61 = (v61 - v60[v56] * (*v59 - 1));
                v107 = v61;
                --v63;
                v57 = &v55[v65 - 8];
                v58 = *v57;
                v55 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v59 = &v66[v65];
                v68 = *&v66[4 * v64] - 1;
                v66 -= 4;
                v56 = v63;
              }

              while (v58 == v68);
              v57 = &v55[4 * v64 - 4];
            }

            else
            {
              v63 = ((v53 << 30) - 0x100000000) >> 32;
            }

            *v57 = v58 + 1;
            v107 = (v61 + v60[v63]);
          }

          v69 = v98 - v97;
          v70 = (v98 - v97) >> 2;
          if (v70)
          {
            v71 = __p;
            v72 = ((v69 << 30) - 0x100000000) >> 32;
            v73 = __p + 4 * v72;
            v74 = *v73;
            v75 = v99;
            v76 = v96;
            if (v70 >= 2 && (v77 = v97 + 4 * v72, v74 == *v77 - 1))
            {
              v78 = (v69 >> 2) & 0x7FFFFFFF;
              v79 = v78 - 1;
              v80 = 4 * v78;
              v81 = v97 - 8;
              do
              {
                v82 = v79;
                *v73 = 0;
                v76 -= v75[v72] * (*v77 - 1);
                v96 = v76;
                --v79;
                v73 = &v71[v80 - 8];
                v74 = *v73;
                v71 -= 4;
                if (v82 < 2)
                {
                  break;
                }

                v77 = &v81[v80];
                v83 = *&v81[4 * v78] - 1;
                v81 -= 4;
                v72 = v79;
              }

              while (v74 == v83);
              v73 = &v71[4 * v78 - 4];
            }

            else
            {
              v79 = ((v69 << 30) - 0x100000000) >> 32;
            }

            *v73 = v74 + 1;
            v96 = v75[v79] + v76;
          }

          v30 += v28;
        }

        while (v30 < v15);
      }

      if (__p)
      {
        v102 = __p;
        operator delete(__p);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      if (v97)
      {
        v98 = v97;
        operator delete(v97);
      }

      if (v114)
      {
        v115 = v114;
        operator delete(v114);
      }

      if (v111)
      {
        v112 = v111;
        operator delete(v111);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += 8 * *v14;
      }

      if (v19 == 2)
      {
        v84 = *v103;
        if (*v103 >= 1)
        {
          v85 = 0;
          v86 = v105;
          v87 = 8 * **v105;
          v88 = (v13 + 4);
          v89 = 8 * *v105[3];
          do
          {
            v90 = v18[1];
            if (v90 >= 1)
            {
              v91 = 8 * (*v86)[1];
              v92 = 8 * v86[3][1];
              v93 = v88;
              v94 = v12;
              do
              {
                v95 = *v94;
                *(v93 - 1) = v95;
                *v93 = 0.0;
                v94 = (v94 + v91);
                v93 = (v93 + v92);
                --v90;
              }

              while (v90);
            }

            ++v85;
            v12 = (v12 + v87);
            v88 = (v88 + v89);
          }

          while (v85 != v84);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v103;
        if (*v103 >= 1)
        {
          v21 = 8 * **v105;
          v22 = (v13 + 4);
          v23 = 8 * *v105[3];
          do
          {
            v24 = *v12;
            *(v22 - 1) = v24;
            *v22 = 0.0;
            v12 = (v12 + v21);
            v22 = (v22 + v23);
            --v20;
          }

          while (v20);
        }
      }
    }

    v107 = &v105;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v107);
    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }
  }
}

void sub_25A3D51CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::_MLX_BFloat16,BOOL>(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v134 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == a3[1])
  {
    *v13 = (*v12 & 0x7FFF) != 0;
    return;
  }

  v109 = *(*a1 + 48);
  v125 = 0;
  v126 = 0;
  v127 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v114, &v125, &v131, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v114, 0x7FFFFFFFuLL, &v121);
  v124 = &v114;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v124);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v128 + i);
    if (v16)
    {
      *(&v129 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v122 - v121) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v125, &v121, v123, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v114, &v121, v123 + 3, v17 - 3);
    v22 = v122 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v122);
    if (!v109)
    {
      v81 = v119;
      if (v119)
      {
LABEL_62:
        v120 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      goto LABEL_81;
    }

    v103 = v12;
    v104 = v13;
    v25 = 0;
    v26 = v125;
    v27 = v129;
    v28 = v121;
    v29 = *v123;
    v30 = v123[3];
    v102 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v127 - v126) << 30) - 0x100000000) >> 32;
    v97 = v132;
    v111 = &v132[4 * v32];
    v101 = v32;
    v99 = &v126[4 * v32];
    v33 = ((v127 - v126) >> 2) & 0x7FFFFFFF;
    v96 = v33 - 1;
    v34 = v114;
    v35 = v117;
    v36 = (((v116 - v115) << 30) - 0x100000000) >> 32;
    __p = v119;
    v110 = &v119[4 * v36];
    v37 = ((v116 - v115) >> 2) & 0x7FFFFFFF;
    v95 = v37 - 1;
    v107 = v23;
    v108 = (v127 - v126) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v93 = v115 - 8;
    v94 = v126 - 8;
    v100 = v36;
    v112 = v17 - 3;
    v105 = v115 + 4 * v36;
    v106 = (v116 - v115) >> 2;
    while (1)
    {
      v113 = v25;
      v40 = v28[v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v30[v112];
        v43 = &v104[v34];
        v44 = &v103[v26];
        v45 = v30[v102];
        v46 = v28[v102];
        v47 = 2 * v29[v112];
        v48 = 2 * v29[v102];
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = v30[v31];
            v51 = v28[v31];
            v52 = 2 * v29[v31];
            v53 = v44;
            v54 = v43;
            do
            {
              if (v51 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v51;
                do
                {
                  v54[v55] = (*(v53 + v56) & 0x7FFF) != 0;
                  v56 += v52;
                  v55 += v50;
                  --v57;
                }

                while (v57);
              }

              v54 += v45;
              ++v49;
              v53 = (v53 + v48);
            }

            while (v49 != v46);
          }

          v43 += v42;
          ++v41;
          v44 = (v44 + v47);
        }

        while (v41 != v40);
      }

      if (v108)
      {
        break;
      }

      v21 = v112;
      v66 = v113;
      v67 = v105;
      v59 = v106;
      if (v106)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v107;
      if (v25 >= v109)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v111;
    v21 = v112;
    v59 = v106;
    if (v108 >= 2 && (v60 = v99, v58 == *v99 - 1))
    {
      v62 = v96;
      v61 = v97;
      v63 = v94;
      v64 = v111;
      v65 = v101;
      v66 = v113;
      v67 = v105;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v125 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v101;
      v70 = v111;
      v66 = v113;
      v67 = v105;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v125 = v26;
    if (!v106)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v110;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v93;
      v74 = v95;
      v75 = v67;
      v76 = v110;
      v77 = v100;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v114 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v100;
      v80 = v110;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v114 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v121;
    if (*v121 >= 1)
    {
      v83 = 0;
      v84 = v123[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = *(v121 + 1);
      v88 = 2 * **v123;
      v89 = 2 * (*v123)[1];
      do
      {
        if (v87 >= 1)
        {
          v90 = v12;
          v91 = v87;
          v92 = v13;
          do
          {
            *v92 = (*v90 & 0x7FFF) != 0;
            v92 += v86;
            v90 = (v90 + v89);
            --v91;
          }

          while (v91);
        }

        v13 += v85;
        ++v83;
        v12 = (v12 + v88);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v121;
    if (*v121 >= 1)
    {
      v19 = *v123[3];
      v20 = 2 * **v123;
      do
      {
        *v13 = (*v12 & 0x7FFF) != 0;
        v13 += v19;
        v12 = (v12 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v125 = &v123;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }
}